; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!446432 () Bool)

(assert start!446432)

(declare-fun b!4513513 () Bool)

(declare-fun res!1877760 () Bool)

(declare-fun e!2811855 () Bool)

(assert (=> b!4513513 (=> (not res!1877760) (not e!2811855))))

(declare-datatypes ((K!12015 0))(
  ( (K!12016 (val!17883 Int)) )
))
(declare-datatypes ((V!12261 0))(
  ( (V!12262 (val!17884 Int)) )
))
(declare-datatypes ((tuple2!51034 0))(
  ( (tuple2!51035 (_1!28811 K!12015) (_2!28811 V!12261)) )
))
(declare-datatypes ((List!50740 0))(
  ( (Nil!50616) (Cons!50616 (h!56459 tuple2!51034) (t!357702 List!50740)) )
))
(declare-datatypes ((tuple2!51036 0))(
  ( (tuple2!51037 (_1!28812 (_ BitVec 64)) (_2!28812 List!50740)) )
))
(declare-datatypes ((List!50741 0))(
  ( (Nil!50617) (Cons!50617 (h!56460 tuple2!51036) (t!357703 List!50741)) )
))
(declare-datatypes ((ListLongMap!2939 0))(
  ( (ListLongMap!2940 (toList!4307 List!50741)) )
))
(declare-fun lm!1477 () ListLongMap!2939)

(declare-datatypes ((Hashable!5545 0))(
  ( (HashableExt!5544 (__x!31248 Int)) )
))
(declare-fun hashF!1107 () Hashable!5545)

(declare-fun allKeysSameHashInMap!1257 (ListLongMap!2939 Hashable!5545) Bool)

(assert (=> b!4513513 (= res!1877760 (allKeysSameHashInMap!1257 lm!1477 hashF!1107))))

(declare-fun b!4513514 () Bool)

(declare-fun e!2811857 () Bool)

(declare-fun e!2811847 () Bool)

(assert (=> b!4513514 (= e!2811857 e!2811847)))

(declare-fun res!1877748 () Bool)

(assert (=> b!4513514 (=> res!1877748 e!2811847)))

(declare-fun lt!1691597 () Bool)

(assert (=> b!4513514 (= res!1877748 lt!1691597)))

(declare-datatypes ((Unit!93940 0))(
  ( (Unit!93941) )
))
(declare-fun lt!1691602 () Unit!93940)

(declare-fun e!2811848 () Unit!93940)

(assert (=> b!4513514 (= lt!1691602 e!2811848)))

(declare-fun c!769975 () Bool)

(assert (=> b!4513514 (= c!769975 lt!1691597)))

(declare-fun lt!1691584 () List!50740)

(declare-fun key!3287 () K!12015)

(declare-fun containsKey!1750 (List!50740 K!12015) Bool)

(assert (=> b!4513514 (= lt!1691597 (not (containsKey!1750 lt!1691584 key!3287)))))

(declare-fun b!4513515 () Bool)

(declare-fun e!2811854 () Bool)

(declare-fun e!2811852 () Bool)

(assert (=> b!4513515 (= e!2811854 e!2811852)))

(declare-fun res!1877757 () Bool)

(assert (=> b!4513515 (=> res!1877757 e!2811852)))

(declare-datatypes ((ListMap!3569 0))(
  ( (ListMap!3570 (toList!4308 List!50740)) )
))
(declare-fun lt!1691593 () ListMap!3569)

(declare-fun lt!1691578 () ListMap!3569)

(declare-fun eq!607 (ListMap!3569 ListMap!3569) Bool)

(assert (=> b!4513515 (= res!1877757 (not (eq!607 lt!1691593 lt!1691578)))))

(declare-fun lt!1691599 () tuple2!51036)

(declare-fun lt!1691581 () ListMap!3569)

(declare-fun addToMapMapFromBucket!677 (List!50740 ListMap!3569) ListMap!3569)

(assert (=> b!4513515 (= lt!1691578 (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691581))))

(declare-fun lt!1691601 () ListLongMap!2939)

(declare-fun extractMap!1206 (List!50741) ListMap!3569)

(assert (=> b!4513515 (= lt!1691593 (extractMap!1206 (toList!4307 lt!1691601)))))

(declare-fun b!4513516 () Bool)

(declare-fun res!1877743 () Bool)

(declare-fun e!2811846 () Bool)

(assert (=> b!4513516 (=> res!1877743 e!2811846)))

(declare-fun lt!1691598 () ListMap!3569)

(declare-fun lt!1691594 () ListMap!3569)

(assert (=> b!4513516 (= res!1877743 (not (eq!607 lt!1691598 lt!1691594)))))

(declare-fun b!4513517 () Bool)

(declare-fun res!1877758 () Bool)

(declare-fun e!2811851 () Bool)

(assert (=> b!4513517 (=> res!1877758 e!2811851)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4513517 (= res!1877758 (or ((_ is Nil!50617) (toList!4307 lm!1477)) (= (_1!28812 (h!56460 (toList!4307 lm!1477))) hash!344)))))

(declare-fun b!4513518 () Bool)

(declare-fun noDuplicateKeys!1150 (List!50740) Bool)

(assert (=> b!4513518 (= e!2811852 (noDuplicateKeys!1150 (_2!28812 lt!1691599)))))

(declare-fun lt!1691588 () ListMap!3569)

(assert (=> b!4513518 (eq!607 lt!1691578 (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691588))))

(declare-fun lt!1691596 () Unit!93940)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!26 (ListMap!3569 ListMap!3569 List!50740) Unit!93940)

(assert (=> b!4513518 (= lt!1691596 (lemmaAddToMapFromBucketPreservesEquivalence!26 lt!1691581 lt!1691588 (_2!28812 lt!1691599)))))

(declare-fun b!4513519 () Bool)

(declare-fun e!2811853 () Bool)

(assert (=> b!4513519 (= e!2811847 e!2811853)))

(declare-fun res!1877755 () Bool)

(assert (=> b!4513519 (=> res!1877755 e!2811853)))

(declare-fun containsKeyBiggerList!130 (List!50741 K!12015) Bool)

(assert (=> b!4513519 (= res!1877755 (not (containsKeyBiggerList!130 (t!357703 (toList!4307 lm!1477)) key!3287)))))

(declare-fun lt!1691580 () ListLongMap!2939)

(assert (=> b!4513519 (containsKeyBiggerList!130 (toList!4307 lt!1691580) key!3287)))

(declare-fun lt!1691595 () Unit!93940)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!66 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> b!4513519 (= lt!1691595 (lemmaInLongMapThenContainsKeyBiggerList!66 lt!1691580 key!3287 hashF!1107))))

(declare-fun b!4513520 () Bool)

(declare-fun res!1877744 () Bool)

(assert (=> b!4513520 (=> res!1877744 e!2811857)))

(declare-fun lt!1691587 () tuple2!51036)

(declare-fun contains!13325 (List!50741 tuple2!51036) Bool)

(assert (=> b!4513520 (= res!1877744 (not (contains!13325 (t!357703 (toList!4307 lm!1477)) lt!1691587)))))

(declare-fun b!4513521 () Bool)

(declare-fun e!2811845 () Bool)

(assert (=> b!4513521 (= e!2811855 e!2811845)))

(declare-fun res!1877752 () Bool)

(assert (=> b!4513521 (=> (not res!1877752) (not e!2811845))))

(declare-fun contains!13326 (ListMap!3569 K!12015) Bool)

(assert (=> b!4513521 (= res!1877752 (contains!13326 lt!1691598 key!3287))))

(assert (=> b!4513521 (= lt!1691598 (extractMap!1206 (toList!4307 lm!1477)))))

(declare-fun b!4513522 () Bool)

(declare-fun res!1877753 () Bool)

(assert (=> b!4513522 (=> res!1877753 e!2811857)))

(declare-fun apply!11887 (ListLongMap!2939 (_ BitVec 64)) List!50740)

(assert (=> b!4513522 (= res!1877753 (not (= (apply!11887 lt!1691580 hash!344) lt!1691584)))))

(declare-fun b!4513523 () Bool)

(declare-fun e!2811850 () Bool)

(declare-fun tp!1337906 () Bool)

(assert (=> b!4513523 (= e!2811850 tp!1337906)))

(declare-fun res!1877751 () Bool)

(assert (=> start!446432 (=> (not res!1877751) (not e!2811855))))

(declare-fun lambda!171125 () Int)

(declare-fun forall!10237 (List!50741 Int) Bool)

(assert (=> start!446432 (= res!1877751 (forall!10237 (toList!4307 lm!1477) lambda!171125))))

(assert (=> start!446432 e!2811855))

(assert (=> start!446432 true))

(declare-fun inv!66199 (ListLongMap!2939) Bool)

(assert (=> start!446432 (and (inv!66199 lm!1477) e!2811850)))

(declare-fun tp_is_empty!27877 () Bool)

(assert (=> start!446432 tp_is_empty!27877))

(declare-fun e!2811849 () Bool)

(assert (=> start!446432 e!2811849))

(declare-fun b!4513524 () Bool)

(declare-fun e!2811844 () Bool)

(assert (=> b!4513524 (= e!2811844 e!2811846)))

(declare-fun res!1877747 () Bool)

(assert (=> b!4513524 (=> res!1877747 e!2811846)))

(assert (=> b!4513524 (= res!1877747 (not (eq!607 lt!1691594 lt!1691598)))))

(declare-fun +!1518 (ListLongMap!2939 tuple2!51036) ListLongMap!2939)

(assert (=> b!4513524 (= lt!1691594 (extractMap!1206 (toList!4307 (+!1518 lt!1691580 lt!1691599))))))

(declare-fun head!9392 (ListLongMap!2939) tuple2!51036)

(assert (=> b!4513524 (= lt!1691599 (head!9392 lm!1477))))

(assert (=> b!4513524 (eq!607 lt!1691581 lt!1691588)))

(declare-fun lt!1691582 () ListMap!3569)

(declare-fun -!376 (ListMap!3569 K!12015) ListMap!3569)

(assert (=> b!4513524 (= lt!1691588 (-!376 lt!1691582 key!3287))))

(declare-fun lt!1691586 () ListLongMap!2939)

(assert (=> b!4513524 (= lt!1691581 (extractMap!1206 (toList!4307 lt!1691586)))))

(declare-fun lt!1691583 () tuple2!51036)

(assert (=> b!4513524 (= lt!1691586 (+!1518 lt!1691580 lt!1691583))))

(declare-fun newBucket!178 () List!50740)

(assert (=> b!4513524 (= lt!1691583 (tuple2!51037 hash!344 newBucket!178))))

(declare-fun lt!1691585 () Unit!93940)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!135 (ListLongMap!2939 (_ BitVec 64) List!50740 K!12015 Hashable!5545) Unit!93940)

(assert (=> b!4513524 (= lt!1691585 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!135 lt!1691580 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4513525 () Bool)

(assert (=> b!4513525 (= e!2811846 e!2811854)))

(declare-fun res!1877754 () Bool)

(assert (=> b!4513525 (=> res!1877754 e!2811854)))

(assert (=> b!4513525 (= res!1877754 (not (= lt!1691601 (+!1518 lm!1477 lt!1691583))))))

(assert (=> b!4513525 (= lt!1691601 (+!1518 lt!1691586 lt!1691599))))

(declare-fun tp!1337907 () Bool)

(declare-fun tp_is_empty!27879 () Bool)

(declare-fun b!4513526 () Bool)

(assert (=> b!4513526 (= e!2811849 (and tp_is_empty!27877 tp_is_empty!27879 tp!1337907))))

(declare-fun b!4513527 () Bool)

(declare-fun res!1877761 () Bool)

(assert (=> b!4513527 (=> res!1877761 e!2811846)))

(assert (=> b!4513527 (= res!1877761 (bvsge (_1!28812 lt!1691599) hash!344))))

(declare-fun b!4513528 () Bool)

(declare-fun res!1877750 () Bool)

(assert (=> b!4513528 (=> res!1877750 e!2811854)))

(assert (=> b!4513528 (= res!1877750 (not (= (head!9392 lt!1691601) lt!1691599)))))

(declare-fun b!4513529 () Bool)

(assert (=> b!4513529 (= e!2811853 e!2811844)))

(declare-fun res!1877746 () Bool)

(assert (=> b!4513529 (=> res!1877746 e!2811844)))

(assert (=> b!4513529 (= res!1877746 (not (contains!13326 (extractMap!1206 (t!357703 (toList!4307 lm!1477))) key!3287)))))

(assert (=> b!4513529 (contains!13326 lt!1691582 key!3287)))

(assert (=> b!4513529 (= lt!1691582 (extractMap!1206 (toList!4307 lt!1691580)))))

(declare-fun lt!1691591 () Unit!93940)

(declare-fun lemmaListContainsThenExtractedMapContains!120 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> b!4513529 (= lt!1691591 (lemmaListContainsThenExtractedMapContains!120 lt!1691580 key!3287 hashF!1107))))

(declare-fun b!4513530 () Bool)

(declare-fun Unit!93942 () Unit!93940)

(assert (=> b!4513530 (= e!2811848 Unit!93942)))

(declare-fun b!4513531 () Bool)

(declare-fun res!1877749 () Bool)

(declare-fun e!2811856 () Bool)

(assert (=> b!4513531 (=> (not res!1877749) (not e!2811856))))

(declare-fun allKeysSameHash!1004 (List!50740 (_ BitVec 64) Hashable!5545) Bool)

(assert (=> b!4513531 (= res!1877749 (allKeysSameHash!1004 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4513532 () Bool)

(assert (=> b!4513532 (= e!2811856 (not e!2811851))))

(declare-fun res!1877762 () Bool)

(assert (=> b!4513532 (=> res!1877762 e!2811851)))

(declare-fun removePairForKey!777 (List!50740 K!12015) List!50740)

(assert (=> b!4513532 (= res!1877762 (not (= newBucket!178 (removePairForKey!777 lt!1691584 key!3287))))))

(declare-fun lt!1691590 () Unit!93940)

(declare-fun forallContained!2489 (List!50741 Int tuple2!51036) Unit!93940)

(assert (=> b!4513532 (= lt!1691590 (forallContained!2489 (toList!4307 lm!1477) lambda!171125 lt!1691587))))

(assert (=> b!4513532 (contains!13325 (toList!4307 lm!1477) lt!1691587)))

(assert (=> b!4513532 (= lt!1691587 (tuple2!51037 hash!344 lt!1691584))))

(declare-fun lt!1691592 () Unit!93940)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!662 (List!50741 (_ BitVec 64) List!50740) Unit!93940)

(assert (=> b!4513532 (= lt!1691592 (lemmaGetValueByKeyImpliesContainsTuple!662 (toList!4307 lm!1477) hash!344 lt!1691584))))

(assert (=> b!4513532 (= lt!1691584 (apply!11887 lm!1477 hash!344))))

(declare-fun lt!1691579 () (_ BitVec 64))

(declare-fun contains!13327 (ListLongMap!2939 (_ BitVec 64)) Bool)

(assert (=> b!4513532 (contains!13327 lm!1477 lt!1691579)))

(declare-fun lt!1691600 () Unit!93940)

(declare-fun lemmaInGenMapThenLongMapContainsHash!224 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> b!4513532 (= lt!1691600 (lemmaInGenMapThenLongMapContainsHash!224 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4513533 () Bool)

(assert (=> b!4513533 (= e!2811851 e!2811857)))

(declare-fun res!1877756 () Bool)

(assert (=> b!4513533 (=> res!1877756 e!2811857)))

(assert (=> b!4513533 (= res!1877756 (not (contains!13327 lt!1691580 hash!344)))))

(declare-fun tail!7714 (ListLongMap!2939) ListLongMap!2939)

(assert (=> b!4513533 (= lt!1691580 (tail!7714 lm!1477))))

(declare-fun b!4513534 () Bool)

(assert (=> b!4513534 (= e!2811845 e!2811856)))

(declare-fun res!1877759 () Bool)

(assert (=> b!4513534 (=> (not res!1877759) (not e!2811856))))

(assert (=> b!4513534 (= res!1877759 (= lt!1691579 hash!344))))

(declare-fun hash!2771 (Hashable!5545 K!12015) (_ BitVec 64))

(assert (=> b!4513534 (= lt!1691579 (hash!2771 hashF!1107 key!3287))))

(declare-fun b!4513535 () Bool)

(declare-fun res!1877745 () Bool)

(assert (=> b!4513535 (=> res!1877745 e!2811851)))

(assert (=> b!4513535 (= res!1877745 (not (noDuplicateKeys!1150 newBucket!178)))))

(declare-fun b!4513536 () Bool)

(declare-fun Unit!93943 () Unit!93940)

(assert (=> b!4513536 (= e!2811848 Unit!93943)))

(declare-fun lt!1691589 () Unit!93940)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!138 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> b!4513536 (= lt!1691589 (lemmaNotInItsHashBucketThenNotInMap!138 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4513536 false))

(assert (= (and start!446432 res!1877751) b!4513513))

(assert (= (and b!4513513 res!1877760) b!4513521))

(assert (= (and b!4513521 res!1877752) b!4513534))

(assert (= (and b!4513534 res!1877759) b!4513531))

(assert (= (and b!4513531 res!1877749) b!4513532))

(assert (= (and b!4513532 (not res!1877762)) b!4513535))

(assert (= (and b!4513535 (not res!1877745)) b!4513517))

(assert (= (and b!4513517 (not res!1877758)) b!4513533))

(assert (= (and b!4513533 (not res!1877756)) b!4513522))

(assert (= (and b!4513522 (not res!1877753)) b!4513520))

(assert (= (and b!4513520 (not res!1877744)) b!4513514))

(assert (= (and b!4513514 c!769975) b!4513536))

(assert (= (and b!4513514 (not c!769975)) b!4513530))

(assert (= (and b!4513514 (not res!1877748)) b!4513519))

(assert (= (and b!4513519 (not res!1877755)) b!4513529))

(assert (= (and b!4513529 (not res!1877746)) b!4513524))

(assert (= (and b!4513524 (not res!1877747)) b!4513516))

(assert (= (and b!4513516 (not res!1877743)) b!4513527))

(assert (= (and b!4513527 (not res!1877761)) b!4513525))

(assert (= (and b!4513525 (not res!1877754)) b!4513528))

(assert (= (and b!4513528 (not res!1877750)) b!4513515))

(assert (= (and b!4513515 (not res!1877757)) b!4513518))

(assert (= start!446432 b!4513523))

(assert (= (and start!446432 ((_ is Cons!50616) newBucket!178)) b!4513526))

(declare-fun m!5255439 () Bool)

(assert (=> b!4513518 m!5255439))

(declare-fun m!5255441 () Bool)

(assert (=> b!4513518 m!5255441))

(assert (=> b!4513518 m!5255441))

(declare-fun m!5255443 () Bool)

(assert (=> b!4513518 m!5255443))

(declare-fun m!5255445 () Bool)

(assert (=> b!4513518 m!5255445))

(declare-fun m!5255447 () Bool)

(assert (=> b!4513534 m!5255447))

(declare-fun m!5255449 () Bool)

(assert (=> b!4513514 m!5255449))

(declare-fun m!5255451 () Bool)

(assert (=> b!4513532 m!5255451))

(declare-fun m!5255453 () Bool)

(assert (=> b!4513532 m!5255453))

(declare-fun m!5255455 () Bool)

(assert (=> b!4513532 m!5255455))

(declare-fun m!5255457 () Bool)

(assert (=> b!4513532 m!5255457))

(declare-fun m!5255459 () Bool)

(assert (=> b!4513532 m!5255459))

(declare-fun m!5255461 () Bool)

(assert (=> b!4513532 m!5255461))

(declare-fun m!5255463 () Bool)

(assert (=> b!4513532 m!5255463))

(declare-fun m!5255465 () Bool)

(assert (=> b!4513516 m!5255465))

(declare-fun m!5255467 () Bool)

(assert (=> b!4513522 m!5255467))

(declare-fun m!5255469 () Bool)

(assert (=> b!4513528 m!5255469))

(declare-fun m!5255471 () Bool)

(assert (=> b!4513525 m!5255471))

(declare-fun m!5255473 () Bool)

(assert (=> b!4513525 m!5255473))

(declare-fun m!5255475 () Bool)

(assert (=> start!446432 m!5255475))

(declare-fun m!5255477 () Bool)

(assert (=> start!446432 m!5255477))

(declare-fun m!5255479 () Bool)

(assert (=> b!4513513 m!5255479))

(declare-fun m!5255481 () Bool)

(assert (=> b!4513536 m!5255481))

(declare-fun m!5255483 () Bool)

(assert (=> b!4513529 m!5255483))

(declare-fun m!5255485 () Bool)

(assert (=> b!4513529 m!5255485))

(declare-fun m!5255487 () Bool)

(assert (=> b!4513529 m!5255487))

(declare-fun m!5255489 () Bool)

(assert (=> b!4513529 m!5255489))

(assert (=> b!4513529 m!5255485))

(declare-fun m!5255491 () Bool)

(assert (=> b!4513529 m!5255491))

(declare-fun m!5255493 () Bool)

(assert (=> b!4513531 m!5255493))

(declare-fun m!5255495 () Bool)

(assert (=> b!4513521 m!5255495))

(declare-fun m!5255497 () Bool)

(assert (=> b!4513521 m!5255497))

(declare-fun m!5255499 () Bool)

(assert (=> b!4513535 m!5255499))

(declare-fun m!5255501 () Bool)

(assert (=> b!4513520 m!5255501))

(declare-fun m!5255503 () Bool)

(assert (=> b!4513524 m!5255503))

(declare-fun m!5255505 () Bool)

(assert (=> b!4513524 m!5255505))

(declare-fun m!5255507 () Bool)

(assert (=> b!4513524 m!5255507))

(declare-fun m!5255509 () Bool)

(assert (=> b!4513524 m!5255509))

(declare-fun m!5255511 () Bool)

(assert (=> b!4513524 m!5255511))

(declare-fun m!5255513 () Bool)

(assert (=> b!4513524 m!5255513))

(declare-fun m!5255515 () Bool)

(assert (=> b!4513524 m!5255515))

(declare-fun m!5255517 () Bool)

(assert (=> b!4513524 m!5255517))

(declare-fun m!5255519 () Bool)

(assert (=> b!4513524 m!5255519))

(declare-fun m!5255521 () Bool)

(assert (=> b!4513533 m!5255521))

(declare-fun m!5255523 () Bool)

(assert (=> b!4513533 m!5255523))

(declare-fun m!5255525 () Bool)

(assert (=> b!4513519 m!5255525))

(declare-fun m!5255527 () Bool)

(assert (=> b!4513519 m!5255527))

(declare-fun m!5255529 () Bool)

(assert (=> b!4513519 m!5255529))

(declare-fun m!5255531 () Bool)

(assert (=> b!4513515 m!5255531))

(declare-fun m!5255533 () Bool)

(assert (=> b!4513515 m!5255533))

(declare-fun m!5255535 () Bool)

(assert (=> b!4513515 m!5255535))

(check-sat (not b!4513520) (not b!4513523) (not b!4513528) tp_is_empty!27877 (not b!4513532) (not b!4513529) (not start!446432) (not b!4513518) (not b!4513526) (not b!4513535) (not b!4513513) tp_is_empty!27879 (not b!4513533) (not b!4513531) (not b!4513536) (not b!4513534) (not b!4513525) (not b!4513519) (not b!4513516) (not b!4513514) (not b!4513515) (not b!4513521) (not b!4513522) (not b!4513524))
(check-sat)
(get-model)

(declare-fun d!1388811 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8325 (List!50740) (InoxSet tuple2!51034))

(assert (=> d!1388811 (= (eq!607 lt!1691598 lt!1691594) (= (content!8325 (toList!4308 lt!1691598)) (content!8325 (toList!4308 lt!1691594))))))

(declare-fun bs!849247 () Bool)

(assert (= bs!849247 d!1388811))

(declare-fun m!5255537 () Bool)

(assert (=> bs!849247 m!5255537))

(declare-fun m!5255539 () Bool)

(assert (=> bs!849247 m!5255539))

(assert (=> b!4513516 d!1388811))

(declare-fun d!1388813 () Bool)

(declare-fun res!1877767 () Bool)

(declare-fun e!2811862 () Bool)

(assert (=> d!1388813 (=> res!1877767 e!2811862)))

(assert (=> d!1388813 (= res!1877767 (not ((_ is Cons!50616) (_2!28812 lt!1691599))))))

(assert (=> d!1388813 (= (noDuplicateKeys!1150 (_2!28812 lt!1691599)) e!2811862)))

(declare-fun b!4513541 () Bool)

(declare-fun e!2811863 () Bool)

(assert (=> b!4513541 (= e!2811862 e!2811863)))

(declare-fun res!1877768 () Bool)

(assert (=> b!4513541 (=> (not res!1877768) (not e!2811863))))

(assert (=> b!4513541 (= res!1877768 (not (containsKey!1750 (t!357702 (_2!28812 lt!1691599)) (_1!28811 (h!56459 (_2!28812 lt!1691599))))))))

(declare-fun b!4513542 () Bool)

(assert (=> b!4513542 (= e!2811863 (noDuplicateKeys!1150 (t!357702 (_2!28812 lt!1691599))))))

(assert (= (and d!1388813 (not res!1877767)) b!4513541))

(assert (= (and b!4513541 res!1877768) b!4513542))

(declare-fun m!5255541 () Bool)

(assert (=> b!4513541 m!5255541))

(declare-fun m!5255543 () Bool)

(assert (=> b!4513542 m!5255543))

(assert (=> b!4513518 d!1388813))

(declare-fun d!1388815 () Bool)

(assert (=> d!1388815 (= (eq!607 lt!1691578 (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691588)) (= (content!8325 (toList!4308 lt!1691578)) (content!8325 (toList!4308 (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691588)))))))

(declare-fun bs!849248 () Bool)

(assert (= bs!849248 d!1388815))

(declare-fun m!5255545 () Bool)

(assert (=> bs!849248 m!5255545))

(declare-fun m!5255547 () Bool)

(assert (=> bs!849248 m!5255547))

(assert (=> b!4513518 d!1388815))

(declare-fun b!4513652 () Bool)

(assert (=> b!4513652 true))

(declare-fun bs!849274 () Bool)

(declare-fun b!4513653 () Bool)

(assert (= bs!849274 (and b!4513653 b!4513652)))

(declare-fun lambda!171168 () Int)

(declare-fun lambda!171167 () Int)

(assert (=> bs!849274 (= lambda!171168 lambda!171167)))

(assert (=> b!4513653 true))

(declare-fun lambda!171169 () Int)

(declare-fun lt!1691723 () ListMap!3569)

(assert (=> bs!849274 (= (= lt!1691723 lt!1691588) (= lambda!171169 lambda!171167))))

(assert (=> b!4513653 (= (= lt!1691723 lt!1691588) (= lambda!171169 lambda!171168))))

(assert (=> b!4513653 true))

(declare-fun bs!849275 () Bool)

(declare-fun d!1388817 () Bool)

(assert (= bs!849275 (and d!1388817 b!4513652)))

(declare-fun lt!1691732 () ListMap!3569)

(declare-fun lambda!171170 () Int)

(assert (=> bs!849275 (= (= lt!1691732 lt!1691588) (= lambda!171170 lambda!171167))))

(declare-fun bs!849276 () Bool)

(assert (= bs!849276 (and d!1388817 b!4513653)))

(assert (=> bs!849276 (= (= lt!1691732 lt!1691588) (= lambda!171170 lambda!171168))))

(assert (=> bs!849276 (= (= lt!1691732 lt!1691723) (= lambda!171170 lambda!171169))))

(assert (=> d!1388817 true))

(declare-fun b!4513651 () Bool)

(declare-fun e!2811944 () Bool)

(declare-fun invariantList!1007 (List!50740) Bool)

(assert (=> b!4513651 (= e!2811944 (invariantList!1007 (toList!4308 lt!1691732)))))

(declare-fun bm!314333 () Bool)

(declare-fun c!770004 () Bool)

(declare-fun call!314340 () Bool)

(declare-fun forall!10238 (List!50740 Int) Bool)

(assert (=> bm!314333 (= call!314340 (forall!10238 (toList!4308 lt!1691588) (ite c!770004 lambda!171167 lambda!171168)))))

(assert (=> d!1388817 e!2811944))

(declare-fun res!1877821 () Bool)

(assert (=> d!1388817 (=> (not res!1877821) (not e!2811944))))

(assert (=> d!1388817 (= res!1877821 (forall!10238 (_2!28812 lt!1691599) lambda!171170))))

(declare-fun e!2811942 () ListMap!3569)

(assert (=> d!1388817 (= lt!1691732 e!2811942)))

(assert (=> d!1388817 (= c!770004 ((_ is Nil!50616) (_2!28812 lt!1691599)))))

(assert (=> d!1388817 (noDuplicateKeys!1150 (_2!28812 lt!1691599))))

(assert (=> d!1388817 (= (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691588) lt!1691732)))

(assert (=> b!4513652 (= e!2811942 lt!1691588)))

(declare-fun lt!1691729 () Unit!93940)

(declare-fun call!314339 () Unit!93940)

(assert (=> b!4513652 (= lt!1691729 call!314339)))

(declare-fun call!314338 () Bool)

(assert (=> b!4513652 call!314338))

(declare-fun lt!1691733 () Unit!93940)

(assert (=> b!4513652 (= lt!1691733 lt!1691729)))

(assert (=> b!4513652 call!314340))

(declare-fun lt!1691736 () Unit!93940)

(declare-fun Unit!93950 () Unit!93940)

(assert (=> b!4513652 (= lt!1691736 Unit!93950)))

(declare-fun bm!314334 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!327 (ListMap!3569) Unit!93940)

(assert (=> bm!314334 (= call!314339 (lemmaContainsAllItsOwnKeys!327 lt!1691588))))

(assert (=> b!4513653 (= e!2811942 lt!1691723)))

(declare-fun lt!1691731 () ListMap!3569)

(declare-fun +!1519 (ListMap!3569 tuple2!51034) ListMap!3569)

(assert (=> b!4513653 (= lt!1691731 (+!1519 lt!1691588 (h!56459 (_2!28812 lt!1691599))))))

(assert (=> b!4513653 (= lt!1691723 (addToMapMapFromBucket!677 (t!357702 (_2!28812 lt!1691599)) (+!1519 lt!1691588 (h!56459 (_2!28812 lt!1691599)))))))

(declare-fun lt!1691721 () Unit!93940)

(assert (=> b!4513653 (= lt!1691721 call!314339)))

(assert (=> b!4513653 call!314340))

(declare-fun lt!1691727 () Unit!93940)

(assert (=> b!4513653 (= lt!1691727 lt!1691721)))

(assert (=> b!4513653 call!314338))

(declare-fun lt!1691720 () Unit!93940)

(declare-fun Unit!93951 () Unit!93940)

(assert (=> b!4513653 (= lt!1691720 Unit!93951)))

(assert (=> b!4513653 (forall!10238 (t!357702 (_2!28812 lt!1691599)) lambda!171169)))

(declare-fun lt!1691724 () Unit!93940)

(declare-fun Unit!93952 () Unit!93940)

(assert (=> b!4513653 (= lt!1691724 Unit!93952)))

(declare-fun lt!1691725 () Unit!93940)

(declare-fun Unit!93953 () Unit!93940)

(assert (=> b!4513653 (= lt!1691725 Unit!93953)))

(declare-fun lt!1691728 () Unit!93940)

(declare-fun forallContained!2490 (List!50740 Int tuple2!51034) Unit!93940)

(assert (=> b!4513653 (= lt!1691728 (forallContained!2490 (toList!4308 lt!1691731) lambda!171169 (h!56459 (_2!28812 lt!1691599))))))

(assert (=> b!4513653 (contains!13326 lt!1691731 (_1!28811 (h!56459 (_2!28812 lt!1691599))))))

(declare-fun lt!1691719 () Unit!93940)

(declare-fun Unit!93954 () Unit!93940)

(assert (=> b!4513653 (= lt!1691719 Unit!93954)))

(assert (=> b!4513653 (contains!13326 lt!1691723 (_1!28811 (h!56459 (_2!28812 lt!1691599))))))

(declare-fun lt!1691718 () Unit!93940)

(declare-fun Unit!93955 () Unit!93940)

(assert (=> b!4513653 (= lt!1691718 Unit!93955)))

(assert (=> b!4513653 (forall!10238 (_2!28812 lt!1691599) lambda!171169)))

(declare-fun lt!1691734 () Unit!93940)

(declare-fun Unit!93956 () Unit!93940)

(assert (=> b!4513653 (= lt!1691734 Unit!93956)))

(assert (=> b!4513653 (forall!10238 (toList!4308 lt!1691731) lambda!171169)))

(declare-fun lt!1691726 () Unit!93940)

(declare-fun Unit!93957 () Unit!93940)

(assert (=> b!4513653 (= lt!1691726 Unit!93957)))

(declare-fun lt!1691722 () Unit!93940)

(declare-fun Unit!93958 () Unit!93940)

(assert (=> b!4513653 (= lt!1691722 Unit!93958)))

(declare-fun lt!1691737 () Unit!93940)

(declare-fun addForallContainsKeyThenBeforeAdding!327 (ListMap!3569 ListMap!3569 K!12015 V!12261) Unit!93940)

(assert (=> b!4513653 (= lt!1691737 (addForallContainsKeyThenBeforeAdding!327 lt!1691588 lt!1691723 (_1!28811 (h!56459 (_2!28812 lt!1691599))) (_2!28811 (h!56459 (_2!28812 lt!1691599)))))))

(assert (=> b!4513653 (forall!10238 (toList!4308 lt!1691588) lambda!171169)))

(declare-fun lt!1691738 () Unit!93940)

(assert (=> b!4513653 (= lt!1691738 lt!1691737)))

(assert (=> b!4513653 (forall!10238 (toList!4308 lt!1691588) lambda!171169)))

(declare-fun lt!1691735 () Unit!93940)

(declare-fun Unit!93959 () Unit!93940)

(assert (=> b!4513653 (= lt!1691735 Unit!93959)))

(declare-fun res!1877822 () Bool)

(assert (=> b!4513653 (= res!1877822 (forall!10238 (_2!28812 lt!1691599) lambda!171169))))

(declare-fun e!2811943 () Bool)

(assert (=> b!4513653 (=> (not res!1877822) (not e!2811943))))

(assert (=> b!4513653 e!2811943))

(declare-fun lt!1691730 () Unit!93940)

(declare-fun Unit!93960 () Unit!93940)

(assert (=> b!4513653 (= lt!1691730 Unit!93960)))

(declare-fun b!4513654 () Bool)

(declare-fun res!1877823 () Bool)

(assert (=> b!4513654 (=> (not res!1877823) (not e!2811944))))

(assert (=> b!4513654 (= res!1877823 (forall!10238 (toList!4308 lt!1691588) lambda!171170))))

(declare-fun bm!314335 () Bool)

(assert (=> bm!314335 (= call!314338 (forall!10238 (ite c!770004 (toList!4308 lt!1691588) (toList!4308 lt!1691731)) (ite c!770004 lambda!171167 lambda!171169)))))

(declare-fun b!4513655 () Bool)

(assert (=> b!4513655 (= e!2811943 (forall!10238 (toList!4308 lt!1691588) lambda!171169))))

(assert (= (and d!1388817 c!770004) b!4513652))

(assert (= (and d!1388817 (not c!770004)) b!4513653))

(assert (= (and b!4513653 res!1877822) b!4513655))

(assert (= (or b!4513652 b!4513653) bm!314335))

(assert (= (or b!4513652 b!4513653) bm!314333))

(assert (= (or b!4513652 b!4513653) bm!314334))

(assert (= (and d!1388817 res!1877821) b!4513654))

(assert (= (and b!4513654 res!1877823) b!4513651))

(declare-fun m!5255687 () Bool)

(assert (=> d!1388817 m!5255687))

(assert (=> d!1388817 m!5255439))

(declare-fun m!5255689 () Bool)

(assert (=> b!4513655 m!5255689))

(declare-fun m!5255691 () Bool)

(assert (=> b!4513653 m!5255691))

(declare-fun m!5255693 () Bool)

(assert (=> b!4513653 m!5255693))

(assert (=> b!4513653 m!5255689))

(declare-fun m!5255695 () Bool)

(assert (=> b!4513653 m!5255695))

(declare-fun m!5255697 () Bool)

(assert (=> b!4513653 m!5255697))

(declare-fun m!5255699 () Bool)

(assert (=> b!4513653 m!5255699))

(declare-fun m!5255701 () Bool)

(assert (=> b!4513653 m!5255701))

(declare-fun m!5255703 () Bool)

(assert (=> b!4513653 m!5255703))

(assert (=> b!4513653 m!5255701))

(declare-fun m!5255705 () Bool)

(assert (=> b!4513653 m!5255705))

(assert (=> b!4513653 m!5255689))

(assert (=> b!4513653 m!5255693))

(declare-fun m!5255707 () Bool)

(assert (=> b!4513653 m!5255707))

(declare-fun m!5255709 () Bool)

(assert (=> bm!314334 m!5255709))

(declare-fun m!5255711 () Bool)

(assert (=> b!4513654 m!5255711))

(declare-fun m!5255713 () Bool)

(assert (=> b!4513651 m!5255713))

(declare-fun m!5255715 () Bool)

(assert (=> bm!314335 m!5255715))

(declare-fun m!5255717 () Bool)

(assert (=> bm!314333 m!5255717))

(assert (=> b!4513518 d!1388817))

(declare-fun d!1388867 () Bool)

(assert (=> d!1388867 (eq!607 (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691581) (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691588))))

(declare-fun lt!1691743 () Unit!93940)

(declare-fun choose!29379 (ListMap!3569 ListMap!3569 List!50740) Unit!93940)

(assert (=> d!1388867 (= lt!1691743 (choose!29379 lt!1691581 lt!1691588 (_2!28812 lt!1691599)))))

(assert (=> d!1388867 (noDuplicateKeys!1150 (_2!28812 lt!1691599))))

(assert (=> d!1388867 (= (lemmaAddToMapFromBucketPreservesEquivalence!26 lt!1691581 lt!1691588 (_2!28812 lt!1691599)) lt!1691743)))

(declare-fun bs!849277 () Bool)

(assert (= bs!849277 d!1388867))

(assert (=> bs!849277 m!5255533))

(assert (=> bs!849277 m!5255441))

(declare-fun m!5255719 () Bool)

(assert (=> bs!849277 m!5255719))

(assert (=> bs!849277 m!5255439))

(declare-fun m!5255721 () Bool)

(assert (=> bs!849277 m!5255721))

(assert (=> bs!849277 m!5255533))

(assert (=> bs!849277 m!5255441))

(assert (=> b!4513518 d!1388867))

(declare-fun d!1388869 () Bool)

(declare-fun res!1877828 () Bool)

(declare-fun e!2811951 () Bool)

(assert (=> d!1388869 (=> res!1877828 e!2811951)))

(assert (=> d!1388869 (= res!1877828 ((_ is Nil!50617) (toList!4307 lm!1477)))))

(assert (=> d!1388869 (= (forall!10237 (toList!4307 lm!1477) lambda!171125) e!2811951)))

(declare-fun b!4513666 () Bool)

(declare-fun e!2811952 () Bool)

(assert (=> b!4513666 (= e!2811951 e!2811952)))

(declare-fun res!1877829 () Bool)

(assert (=> b!4513666 (=> (not res!1877829) (not e!2811952))))

(declare-fun dynLambda!21147 (Int tuple2!51036) Bool)

(assert (=> b!4513666 (= res!1877829 (dynLambda!21147 lambda!171125 (h!56460 (toList!4307 lm!1477))))))

(declare-fun b!4513667 () Bool)

(assert (=> b!4513667 (= e!2811952 (forall!10237 (t!357703 (toList!4307 lm!1477)) lambda!171125))))

(assert (= (and d!1388869 (not res!1877828)) b!4513666))

(assert (= (and b!4513666 res!1877829) b!4513667))

(declare-fun b_lambda!154065 () Bool)

(assert (=> (not b_lambda!154065) (not b!4513666)))

(declare-fun m!5255723 () Bool)

(assert (=> b!4513666 m!5255723))

(declare-fun m!5255725 () Bool)

(assert (=> b!4513667 m!5255725))

(assert (=> start!446432 d!1388869))

(declare-fun d!1388871 () Bool)

(declare-fun isStrictlySorted!421 (List!50741) Bool)

(assert (=> d!1388871 (= (inv!66199 lm!1477) (isStrictlySorted!421 (toList!4307 lm!1477)))))

(declare-fun bs!849278 () Bool)

(assert (= bs!849278 d!1388871))

(declare-fun m!5255727 () Bool)

(assert (=> bs!849278 m!5255727))

(assert (=> start!446432 d!1388871))

(declare-fun d!1388873 () Bool)

(declare-fun head!9394 (List!50741) tuple2!51036)

(assert (=> d!1388873 (= (head!9392 lt!1691601) (head!9394 (toList!4307 lt!1691601)))))

(declare-fun bs!849279 () Bool)

(assert (= bs!849279 d!1388873))

(declare-fun m!5255729 () Bool)

(assert (=> bs!849279 m!5255729))

(assert (=> b!4513528 d!1388873))

(declare-fun d!1388875 () Bool)

(declare-fun res!1877830 () Bool)

(declare-fun e!2811953 () Bool)

(assert (=> d!1388875 (=> res!1877830 e!2811953)))

(assert (=> d!1388875 (= res!1877830 (not ((_ is Cons!50616) newBucket!178)))))

(assert (=> d!1388875 (= (noDuplicateKeys!1150 newBucket!178) e!2811953)))

(declare-fun b!4513668 () Bool)

(declare-fun e!2811954 () Bool)

(assert (=> b!4513668 (= e!2811953 e!2811954)))

(declare-fun res!1877831 () Bool)

(assert (=> b!4513668 (=> (not res!1877831) (not e!2811954))))

(assert (=> b!4513668 (= res!1877831 (not (containsKey!1750 (t!357702 newBucket!178) (_1!28811 (h!56459 newBucket!178)))))))

(declare-fun b!4513669 () Bool)

(assert (=> b!4513669 (= e!2811954 (noDuplicateKeys!1150 (t!357702 newBucket!178)))))

(assert (= (and d!1388875 (not res!1877830)) b!4513668))

(assert (= (and b!4513668 res!1877831) b!4513669))

(declare-fun m!5255731 () Bool)

(assert (=> b!4513668 m!5255731))

(declare-fun m!5255733 () Bool)

(assert (=> b!4513669 m!5255733))

(assert (=> b!4513535 d!1388875))

(declare-fun d!1388877 () Bool)

(declare-fun res!1877836 () Bool)

(declare-fun e!2811959 () Bool)

(assert (=> d!1388877 (=> res!1877836 e!2811959)))

(assert (=> d!1388877 (= res!1877836 (and ((_ is Cons!50616) lt!1691584) (= (_1!28811 (h!56459 lt!1691584)) key!3287)))))

(assert (=> d!1388877 (= (containsKey!1750 lt!1691584 key!3287) e!2811959)))

(declare-fun b!4513674 () Bool)

(declare-fun e!2811960 () Bool)

(assert (=> b!4513674 (= e!2811959 e!2811960)))

(declare-fun res!1877837 () Bool)

(assert (=> b!4513674 (=> (not res!1877837) (not e!2811960))))

(assert (=> b!4513674 (= res!1877837 ((_ is Cons!50616) lt!1691584))))

(declare-fun b!4513675 () Bool)

(assert (=> b!4513675 (= e!2811960 (containsKey!1750 (t!357702 lt!1691584) key!3287))))

(assert (= (and d!1388877 (not res!1877836)) b!4513674))

(assert (= (and b!4513674 res!1877837) b!4513675))

(declare-fun m!5255735 () Bool)

(assert (=> b!4513675 m!5255735))

(assert (=> b!4513514 d!1388877))

(declare-fun bs!849280 () Bool)

(declare-fun d!1388879 () Bool)

(assert (= bs!849280 (and d!1388879 start!446432)))

(declare-fun lambda!171191 () Int)

(assert (=> bs!849280 (not (= lambda!171191 lambda!171125))))

(assert (=> d!1388879 true))

(assert (=> d!1388879 (= (allKeysSameHashInMap!1257 lm!1477 hashF!1107) (forall!10237 (toList!4307 lm!1477) lambda!171191))))

(declare-fun bs!849281 () Bool)

(assert (= bs!849281 d!1388879))

(declare-fun m!5255737 () Bool)

(assert (=> bs!849281 m!5255737))

(assert (=> b!4513513 d!1388879))

(declare-fun d!1388881 () Bool)

(declare-fun e!2811967 () Bool)

(assert (=> d!1388881 e!2811967))

(declare-fun res!1877848 () Bool)

(assert (=> d!1388881 (=> (not res!1877848) (not e!2811967))))

(declare-fun lt!1691793 () ListLongMap!2939)

(assert (=> d!1388881 (= res!1877848 (contains!13327 lt!1691793 (_1!28812 lt!1691583)))))

(declare-fun lt!1691795 () List!50741)

(assert (=> d!1388881 (= lt!1691793 (ListLongMap!2940 lt!1691795))))

(declare-fun lt!1691794 () Unit!93940)

(declare-fun lt!1691792 () Unit!93940)

(assert (=> d!1388881 (= lt!1691794 lt!1691792)))

(declare-datatypes ((Option!11092 0))(
  ( (None!11091) (Some!11091 (v!44659 List!50740)) )
))
(declare-fun getValueByKey!1072 (List!50741 (_ BitVec 64)) Option!11092)

(assert (=> d!1388881 (= (getValueByKey!1072 lt!1691795 (_1!28812 lt!1691583)) (Some!11091 (_2!28812 lt!1691583)))))

(declare-fun lemmaContainsTupThenGetReturnValue!661 (List!50741 (_ BitVec 64) List!50740) Unit!93940)

(assert (=> d!1388881 (= lt!1691792 (lemmaContainsTupThenGetReturnValue!661 lt!1691795 (_1!28812 lt!1691583) (_2!28812 lt!1691583)))))

(declare-fun insertStrictlySorted!397 (List!50741 (_ BitVec 64) List!50740) List!50741)

(assert (=> d!1388881 (= lt!1691795 (insertStrictlySorted!397 (toList!4307 lt!1691580) (_1!28812 lt!1691583) (_2!28812 lt!1691583)))))

(assert (=> d!1388881 (= (+!1518 lt!1691580 lt!1691583) lt!1691793)))

(declare-fun b!4513688 () Bool)

(declare-fun res!1877849 () Bool)

(assert (=> b!4513688 (=> (not res!1877849) (not e!2811967))))

(assert (=> b!4513688 (= res!1877849 (= (getValueByKey!1072 (toList!4307 lt!1691793) (_1!28812 lt!1691583)) (Some!11091 (_2!28812 lt!1691583))))))

(declare-fun b!4513689 () Bool)

(assert (=> b!4513689 (= e!2811967 (contains!13325 (toList!4307 lt!1691793) lt!1691583))))

(assert (= (and d!1388881 res!1877848) b!4513688))

(assert (= (and b!4513688 res!1877849) b!4513689))

(declare-fun m!5255739 () Bool)

(assert (=> d!1388881 m!5255739))

(declare-fun m!5255741 () Bool)

(assert (=> d!1388881 m!5255741))

(declare-fun m!5255743 () Bool)

(assert (=> d!1388881 m!5255743))

(declare-fun m!5255745 () Bool)

(assert (=> d!1388881 m!5255745))

(declare-fun m!5255747 () Bool)

(assert (=> b!4513688 m!5255747))

(declare-fun m!5255749 () Bool)

(assert (=> b!4513689 m!5255749))

(assert (=> b!4513524 d!1388881))

(declare-fun d!1388883 () Bool)

(assert (=> d!1388883 (= (eq!607 lt!1691581 lt!1691588) (= (content!8325 (toList!4308 lt!1691581)) (content!8325 (toList!4308 lt!1691588))))))

(declare-fun bs!849282 () Bool)

(assert (= bs!849282 d!1388883))

(declare-fun m!5255751 () Bool)

(assert (=> bs!849282 m!5255751))

(declare-fun m!5255753 () Bool)

(assert (=> bs!849282 m!5255753))

(assert (=> b!4513524 d!1388883))

(declare-fun bs!849305 () Bool)

(declare-fun d!1388885 () Bool)

(assert (= bs!849305 (and d!1388885 start!446432)))

(declare-fun lambda!171213 () Int)

(assert (=> bs!849305 (= lambda!171213 lambda!171125)))

(declare-fun bs!849306 () Bool)

(assert (= bs!849306 (and d!1388885 d!1388879)))

(assert (=> bs!849306 (not (= lambda!171213 lambda!171191))))

(assert (=> d!1388885 (eq!607 (extractMap!1206 (toList!4307 (+!1518 lt!1691580 (tuple2!51037 hash!344 newBucket!178)))) (-!376 (extractMap!1206 (toList!4307 lt!1691580)) key!3287))))

(declare-fun lt!1691841 () Unit!93940)

(declare-fun choose!29382 (ListLongMap!2939 (_ BitVec 64) List!50740 K!12015 Hashable!5545) Unit!93940)

(assert (=> d!1388885 (= lt!1691841 (choose!29382 lt!1691580 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1388885 (forall!10237 (toList!4307 lt!1691580) lambda!171213)))

(assert (=> d!1388885 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!135 lt!1691580 hash!344 newBucket!178 key!3287 hashF!1107) lt!1691841)))

(declare-fun bs!849307 () Bool)

(assert (= bs!849307 d!1388885))

(assert (=> bs!849307 m!5255489))

(declare-fun m!5255833 () Bool)

(assert (=> bs!849307 m!5255833))

(declare-fun m!5255835 () Bool)

(assert (=> bs!849307 m!5255835))

(assert (=> bs!849307 m!5255835))

(declare-fun m!5255837 () Bool)

(assert (=> bs!849307 m!5255837))

(declare-fun m!5255839 () Bool)

(assert (=> bs!849307 m!5255839))

(assert (=> bs!849307 m!5255489))

(assert (=> bs!849307 m!5255837))

(declare-fun m!5255841 () Bool)

(assert (=> bs!849307 m!5255841))

(declare-fun m!5255843 () Bool)

(assert (=> bs!849307 m!5255843))

(assert (=> b!4513524 d!1388885))

(declare-fun d!1388897 () Bool)

(assert (=> d!1388897 (= (eq!607 lt!1691594 lt!1691598) (= (content!8325 (toList!4308 lt!1691594)) (content!8325 (toList!4308 lt!1691598))))))

(declare-fun bs!849308 () Bool)

(assert (= bs!849308 d!1388897))

(assert (=> bs!849308 m!5255539))

(assert (=> bs!849308 m!5255537))

(assert (=> b!4513524 d!1388897))

(declare-fun bs!849311 () Bool)

(declare-fun d!1388899 () Bool)

(assert (= bs!849311 (and d!1388899 start!446432)))

(declare-fun lambda!171216 () Int)

(assert (=> bs!849311 (= lambda!171216 lambda!171125)))

(declare-fun bs!849312 () Bool)

(assert (= bs!849312 (and d!1388899 d!1388879)))

(assert (=> bs!849312 (not (= lambda!171216 lambda!171191))))

(declare-fun bs!849313 () Bool)

(assert (= bs!849313 (and d!1388899 d!1388885)))

(assert (=> bs!849313 (= lambda!171216 lambda!171213)))

(declare-fun lt!1691847 () ListMap!3569)

(assert (=> d!1388899 (invariantList!1007 (toList!4308 lt!1691847))))

(declare-fun e!2811989 () ListMap!3569)

(assert (=> d!1388899 (= lt!1691847 e!2811989)))

(declare-fun c!770012 () Bool)

(assert (=> d!1388899 (= c!770012 ((_ is Cons!50617) (toList!4307 (+!1518 lt!1691580 lt!1691599))))))

(assert (=> d!1388899 (forall!10237 (toList!4307 (+!1518 lt!1691580 lt!1691599)) lambda!171216)))

(assert (=> d!1388899 (= (extractMap!1206 (toList!4307 (+!1518 lt!1691580 lt!1691599))) lt!1691847)))

(declare-fun b!4513720 () Bool)

(assert (=> b!4513720 (= e!2811989 (addToMapMapFromBucket!677 (_2!28812 (h!56460 (toList!4307 (+!1518 lt!1691580 lt!1691599)))) (extractMap!1206 (t!357703 (toList!4307 (+!1518 lt!1691580 lt!1691599))))))))

(declare-fun b!4513721 () Bool)

(assert (=> b!4513721 (= e!2811989 (ListMap!3570 Nil!50616))))

(assert (= (and d!1388899 c!770012) b!4513720))

(assert (= (and d!1388899 (not c!770012)) b!4513721))

(declare-fun m!5255853 () Bool)

(assert (=> d!1388899 m!5255853))

(declare-fun m!5255855 () Bool)

(assert (=> d!1388899 m!5255855))

(declare-fun m!5255857 () Bool)

(assert (=> b!4513720 m!5255857))

(assert (=> b!4513720 m!5255857))

(declare-fun m!5255859 () Bool)

(assert (=> b!4513720 m!5255859))

(assert (=> b!4513524 d!1388899))

(declare-fun d!1388907 () Bool)

(declare-fun e!2811990 () Bool)

(assert (=> d!1388907 e!2811990))

(declare-fun res!1877868 () Bool)

(assert (=> d!1388907 (=> (not res!1877868) (not e!2811990))))

(declare-fun lt!1691849 () ListLongMap!2939)

(assert (=> d!1388907 (= res!1877868 (contains!13327 lt!1691849 (_1!28812 lt!1691599)))))

(declare-fun lt!1691851 () List!50741)

(assert (=> d!1388907 (= lt!1691849 (ListLongMap!2940 lt!1691851))))

(declare-fun lt!1691850 () Unit!93940)

(declare-fun lt!1691848 () Unit!93940)

(assert (=> d!1388907 (= lt!1691850 lt!1691848)))

(assert (=> d!1388907 (= (getValueByKey!1072 lt!1691851 (_1!28812 lt!1691599)) (Some!11091 (_2!28812 lt!1691599)))))

(assert (=> d!1388907 (= lt!1691848 (lemmaContainsTupThenGetReturnValue!661 lt!1691851 (_1!28812 lt!1691599) (_2!28812 lt!1691599)))))

(assert (=> d!1388907 (= lt!1691851 (insertStrictlySorted!397 (toList!4307 lt!1691580) (_1!28812 lt!1691599) (_2!28812 lt!1691599)))))

(assert (=> d!1388907 (= (+!1518 lt!1691580 lt!1691599) lt!1691849)))

(declare-fun b!4513722 () Bool)

(declare-fun res!1877869 () Bool)

(assert (=> b!4513722 (=> (not res!1877869) (not e!2811990))))

(assert (=> b!4513722 (= res!1877869 (= (getValueByKey!1072 (toList!4307 lt!1691849) (_1!28812 lt!1691599)) (Some!11091 (_2!28812 lt!1691599))))))

(declare-fun b!4513723 () Bool)

(assert (=> b!4513723 (= e!2811990 (contains!13325 (toList!4307 lt!1691849) lt!1691599))))

(assert (= (and d!1388907 res!1877868) b!4513722))

(assert (= (and b!4513722 res!1877869) b!4513723))

(declare-fun m!5255861 () Bool)

(assert (=> d!1388907 m!5255861))

(declare-fun m!5255863 () Bool)

(assert (=> d!1388907 m!5255863))

(declare-fun m!5255865 () Bool)

(assert (=> d!1388907 m!5255865))

(declare-fun m!5255867 () Bool)

(assert (=> d!1388907 m!5255867))

(declare-fun m!5255869 () Bool)

(assert (=> b!4513722 m!5255869))

(declare-fun m!5255871 () Bool)

(assert (=> b!4513723 m!5255871))

(assert (=> b!4513524 d!1388907))

(declare-fun d!1388909 () Bool)

(assert (=> d!1388909 (= (head!9392 lm!1477) (head!9394 (toList!4307 lm!1477)))))

(declare-fun bs!849318 () Bool)

(assert (= bs!849318 d!1388909))

(declare-fun m!5255873 () Bool)

(assert (=> bs!849318 m!5255873))

(assert (=> b!4513524 d!1388909))

(declare-fun bs!849322 () Bool)

(declare-fun d!1388911 () Bool)

(assert (= bs!849322 (and d!1388911 start!446432)))

(declare-fun lambda!171220 () Int)

(assert (=> bs!849322 (= lambda!171220 lambda!171125)))

(declare-fun bs!849323 () Bool)

(assert (= bs!849323 (and d!1388911 d!1388879)))

(assert (=> bs!849323 (not (= lambda!171220 lambda!171191))))

(declare-fun bs!849325 () Bool)

(assert (= bs!849325 (and d!1388911 d!1388885)))

(assert (=> bs!849325 (= lambda!171220 lambda!171213)))

(declare-fun bs!849326 () Bool)

(assert (= bs!849326 (and d!1388911 d!1388899)))

(assert (=> bs!849326 (= lambda!171220 lambda!171216)))

(declare-fun lt!1691852 () ListMap!3569)

(assert (=> d!1388911 (invariantList!1007 (toList!4308 lt!1691852))))

(declare-fun e!2811991 () ListMap!3569)

(assert (=> d!1388911 (= lt!1691852 e!2811991)))

(declare-fun c!770013 () Bool)

(assert (=> d!1388911 (= c!770013 ((_ is Cons!50617) (toList!4307 lt!1691586)))))

(assert (=> d!1388911 (forall!10237 (toList!4307 lt!1691586) lambda!171220)))

(assert (=> d!1388911 (= (extractMap!1206 (toList!4307 lt!1691586)) lt!1691852)))

(declare-fun b!4513726 () Bool)

(assert (=> b!4513726 (= e!2811991 (addToMapMapFromBucket!677 (_2!28812 (h!56460 (toList!4307 lt!1691586))) (extractMap!1206 (t!357703 (toList!4307 lt!1691586)))))))

(declare-fun b!4513727 () Bool)

(assert (=> b!4513727 (= e!2811991 (ListMap!3570 Nil!50616))))

(assert (= (and d!1388911 c!770013) b!4513726))

(assert (= (and d!1388911 (not c!770013)) b!4513727))

(declare-fun m!5255877 () Bool)

(assert (=> d!1388911 m!5255877))

(declare-fun m!5255879 () Bool)

(assert (=> d!1388911 m!5255879))

(declare-fun m!5255881 () Bool)

(assert (=> b!4513726 m!5255881))

(assert (=> b!4513726 m!5255881))

(declare-fun m!5255883 () Bool)

(assert (=> b!4513726 m!5255883))

(assert (=> b!4513524 d!1388911))

(declare-fun d!1388915 () Bool)

(declare-fun e!2811997 () Bool)

(assert (=> d!1388915 e!2811997))

(declare-fun res!1877878 () Bool)

(assert (=> d!1388915 (=> (not res!1877878) (not e!2811997))))

(declare-fun lt!1691867 () ListMap!3569)

(assert (=> d!1388915 (= res!1877878 (not (contains!13326 lt!1691867 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!130 (List!50740 K!12015) List!50740)

(assert (=> d!1388915 (= lt!1691867 (ListMap!3570 (removePresrvNoDuplicatedKeys!130 (toList!4308 lt!1691582) key!3287)))))

(assert (=> d!1388915 (= (-!376 lt!1691582 key!3287) lt!1691867)))

(declare-fun b!4513736 () Bool)

(declare-datatypes ((List!50743 0))(
  ( (Nil!50619) (Cons!50619 (h!56464 K!12015) (t!357705 List!50743)) )
))
(declare-fun content!8327 (List!50743) (InoxSet K!12015))

(declare-fun keys!17574 (ListMap!3569) List!50743)

(assert (=> b!4513736 (= e!2811997 (= ((_ map and) (content!8327 (keys!17574 lt!1691582)) ((_ map not) (store ((as const (Array K!12015 Bool)) false) key!3287 true))) (content!8327 (keys!17574 lt!1691867))))))

(assert (= (and d!1388915 res!1877878) b!4513736))

(declare-fun m!5255897 () Bool)

(assert (=> d!1388915 m!5255897))

(declare-fun m!5255899 () Bool)

(assert (=> d!1388915 m!5255899))

(declare-fun m!5255901 () Bool)

(assert (=> b!4513736 m!5255901))

(declare-fun m!5255903 () Bool)

(assert (=> b!4513736 m!5255903))

(declare-fun m!5255905 () Bool)

(assert (=> b!4513736 m!5255905))

(declare-fun m!5255907 () Bool)

(assert (=> b!4513736 m!5255907))

(declare-fun m!5255909 () Bool)

(assert (=> b!4513736 m!5255909))

(assert (=> b!4513736 m!5255907))

(assert (=> b!4513736 m!5255903))

(assert (=> b!4513524 d!1388915))

(declare-fun d!1388919 () Bool)

(assert (=> d!1388919 (= (eq!607 lt!1691593 lt!1691578) (= (content!8325 (toList!4308 lt!1691593)) (content!8325 (toList!4308 lt!1691578))))))

(declare-fun bs!849327 () Bool)

(assert (= bs!849327 d!1388919))

(declare-fun m!5255911 () Bool)

(assert (=> bs!849327 m!5255911))

(assert (=> bs!849327 m!5255545))

(assert (=> b!4513515 d!1388919))

(declare-fun bs!849328 () Bool)

(declare-fun b!4513740 () Bool)

(assert (= bs!849328 (and b!4513740 b!4513652)))

(declare-fun lambda!171221 () Int)

(assert (=> bs!849328 (= (= lt!1691581 lt!1691588) (= lambda!171221 lambda!171167))))

(declare-fun bs!849329 () Bool)

(assert (= bs!849329 (and b!4513740 b!4513653)))

(assert (=> bs!849329 (= (= lt!1691581 lt!1691588) (= lambda!171221 lambda!171168))))

(assert (=> bs!849329 (= (= lt!1691581 lt!1691723) (= lambda!171221 lambda!171169))))

(declare-fun bs!849330 () Bool)

(assert (= bs!849330 (and b!4513740 d!1388817)))

(assert (=> bs!849330 (= (= lt!1691581 lt!1691732) (= lambda!171221 lambda!171170))))

(assert (=> b!4513740 true))

(declare-fun bs!849331 () Bool)

(declare-fun b!4513741 () Bool)

(assert (= bs!849331 (and b!4513741 b!4513653)))

(declare-fun lambda!171222 () Int)

(assert (=> bs!849331 (= (= lt!1691581 lt!1691723) (= lambda!171222 lambda!171169))))

(assert (=> bs!849331 (= (= lt!1691581 lt!1691588) (= lambda!171222 lambda!171168))))

(declare-fun bs!849332 () Bool)

(assert (= bs!849332 (and b!4513741 d!1388817)))

(assert (=> bs!849332 (= (= lt!1691581 lt!1691732) (= lambda!171222 lambda!171170))))

(declare-fun bs!849333 () Bool)

(assert (= bs!849333 (and b!4513741 b!4513740)))

(assert (=> bs!849333 (= lambda!171222 lambda!171221)))

(declare-fun bs!849334 () Bool)

(assert (= bs!849334 (and b!4513741 b!4513652)))

(assert (=> bs!849334 (= (= lt!1691581 lt!1691588) (= lambda!171222 lambda!171167))))

(assert (=> b!4513741 true))

(declare-fun lt!1691877 () ListMap!3569)

(declare-fun lambda!171223 () Int)

(assert (=> bs!849331 (= (= lt!1691877 lt!1691723) (= lambda!171223 lambda!171169))))

(assert (=> bs!849331 (= (= lt!1691877 lt!1691588) (= lambda!171223 lambda!171168))))

(assert (=> bs!849332 (= (= lt!1691877 lt!1691732) (= lambda!171223 lambda!171170))))

(assert (=> b!4513741 (= (= lt!1691877 lt!1691581) (= lambda!171223 lambda!171222))))

(assert (=> bs!849333 (= (= lt!1691877 lt!1691581) (= lambda!171223 lambda!171221))))

(assert (=> bs!849334 (= (= lt!1691877 lt!1691588) (= lambda!171223 lambda!171167))))

(assert (=> b!4513741 true))

(declare-fun bs!849335 () Bool)

(declare-fun d!1388921 () Bool)

(assert (= bs!849335 (and d!1388921 b!4513653)))

(declare-fun lambda!171224 () Int)

(declare-fun lt!1691886 () ListMap!3569)

(assert (=> bs!849335 (= (= lt!1691886 lt!1691723) (= lambda!171224 lambda!171169))))

(declare-fun bs!849336 () Bool)

(assert (= bs!849336 (and d!1388921 b!4513741)))

(assert (=> bs!849336 (= (= lt!1691886 lt!1691877) (= lambda!171224 lambda!171223))))

(assert (=> bs!849335 (= (= lt!1691886 lt!1691588) (= lambda!171224 lambda!171168))))

(declare-fun bs!849337 () Bool)

(assert (= bs!849337 (and d!1388921 d!1388817)))

(assert (=> bs!849337 (= (= lt!1691886 lt!1691732) (= lambda!171224 lambda!171170))))

(assert (=> bs!849336 (= (= lt!1691886 lt!1691581) (= lambda!171224 lambda!171222))))

(declare-fun bs!849338 () Bool)

(assert (= bs!849338 (and d!1388921 b!4513740)))

(assert (=> bs!849338 (= (= lt!1691886 lt!1691581) (= lambda!171224 lambda!171221))))

(declare-fun bs!849339 () Bool)

(assert (= bs!849339 (and d!1388921 b!4513652)))

(assert (=> bs!849339 (= (= lt!1691886 lt!1691588) (= lambda!171224 lambda!171167))))

(assert (=> d!1388921 true))

(declare-fun b!4513739 () Bool)

(declare-fun e!2812001 () Bool)

(assert (=> b!4513739 (= e!2812001 (invariantList!1007 (toList!4308 lt!1691886)))))

(declare-fun c!770014 () Bool)

(declare-fun bm!314348 () Bool)

(declare-fun call!314355 () Bool)

(assert (=> bm!314348 (= call!314355 (forall!10238 (toList!4308 lt!1691581) (ite c!770014 lambda!171221 lambda!171222)))))

(assert (=> d!1388921 e!2812001))

(declare-fun res!1877881 () Bool)

(assert (=> d!1388921 (=> (not res!1877881) (not e!2812001))))

(assert (=> d!1388921 (= res!1877881 (forall!10238 (_2!28812 lt!1691599) lambda!171224))))

(declare-fun e!2811999 () ListMap!3569)

(assert (=> d!1388921 (= lt!1691886 e!2811999)))

(assert (=> d!1388921 (= c!770014 ((_ is Nil!50616) (_2!28812 lt!1691599)))))

(assert (=> d!1388921 (noDuplicateKeys!1150 (_2!28812 lt!1691599))))

(assert (=> d!1388921 (= (addToMapMapFromBucket!677 (_2!28812 lt!1691599) lt!1691581) lt!1691886)))

(assert (=> b!4513740 (= e!2811999 lt!1691581)))

(declare-fun lt!1691883 () Unit!93940)

(declare-fun call!314354 () Unit!93940)

(assert (=> b!4513740 (= lt!1691883 call!314354)))

(declare-fun call!314353 () Bool)

(assert (=> b!4513740 call!314353))

(declare-fun lt!1691887 () Unit!93940)

(assert (=> b!4513740 (= lt!1691887 lt!1691883)))

(assert (=> b!4513740 call!314355))

(declare-fun lt!1691890 () Unit!93940)

(declare-fun Unit!93972 () Unit!93940)

(assert (=> b!4513740 (= lt!1691890 Unit!93972)))

(declare-fun bm!314349 () Bool)

(assert (=> bm!314349 (= call!314354 (lemmaContainsAllItsOwnKeys!327 lt!1691581))))

(assert (=> b!4513741 (= e!2811999 lt!1691877)))

(declare-fun lt!1691885 () ListMap!3569)

(assert (=> b!4513741 (= lt!1691885 (+!1519 lt!1691581 (h!56459 (_2!28812 lt!1691599))))))

(assert (=> b!4513741 (= lt!1691877 (addToMapMapFromBucket!677 (t!357702 (_2!28812 lt!1691599)) (+!1519 lt!1691581 (h!56459 (_2!28812 lt!1691599)))))))

(declare-fun lt!1691875 () Unit!93940)

(assert (=> b!4513741 (= lt!1691875 call!314354)))

(assert (=> b!4513741 call!314355))

(declare-fun lt!1691881 () Unit!93940)

(assert (=> b!4513741 (= lt!1691881 lt!1691875)))

(assert (=> b!4513741 call!314353))

(declare-fun lt!1691874 () Unit!93940)

(declare-fun Unit!93973 () Unit!93940)

(assert (=> b!4513741 (= lt!1691874 Unit!93973)))

(assert (=> b!4513741 (forall!10238 (t!357702 (_2!28812 lt!1691599)) lambda!171223)))

(declare-fun lt!1691878 () Unit!93940)

(declare-fun Unit!93974 () Unit!93940)

(assert (=> b!4513741 (= lt!1691878 Unit!93974)))

(declare-fun lt!1691879 () Unit!93940)

(declare-fun Unit!93975 () Unit!93940)

(assert (=> b!4513741 (= lt!1691879 Unit!93975)))

(declare-fun lt!1691882 () Unit!93940)

(assert (=> b!4513741 (= lt!1691882 (forallContained!2490 (toList!4308 lt!1691885) lambda!171223 (h!56459 (_2!28812 lt!1691599))))))

(assert (=> b!4513741 (contains!13326 lt!1691885 (_1!28811 (h!56459 (_2!28812 lt!1691599))))))

(declare-fun lt!1691873 () Unit!93940)

(declare-fun Unit!93976 () Unit!93940)

(assert (=> b!4513741 (= lt!1691873 Unit!93976)))

(assert (=> b!4513741 (contains!13326 lt!1691877 (_1!28811 (h!56459 (_2!28812 lt!1691599))))))

(declare-fun lt!1691872 () Unit!93940)

(declare-fun Unit!93977 () Unit!93940)

(assert (=> b!4513741 (= lt!1691872 Unit!93977)))

(assert (=> b!4513741 (forall!10238 (_2!28812 lt!1691599) lambda!171223)))

(declare-fun lt!1691888 () Unit!93940)

(declare-fun Unit!93978 () Unit!93940)

(assert (=> b!4513741 (= lt!1691888 Unit!93978)))

(assert (=> b!4513741 (forall!10238 (toList!4308 lt!1691885) lambda!171223)))

(declare-fun lt!1691880 () Unit!93940)

(declare-fun Unit!93979 () Unit!93940)

(assert (=> b!4513741 (= lt!1691880 Unit!93979)))

(declare-fun lt!1691876 () Unit!93940)

(declare-fun Unit!93980 () Unit!93940)

(assert (=> b!4513741 (= lt!1691876 Unit!93980)))

(declare-fun lt!1691891 () Unit!93940)

(assert (=> b!4513741 (= lt!1691891 (addForallContainsKeyThenBeforeAdding!327 lt!1691581 lt!1691877 (_1!28811 (h!56459 (_2!28812 lt!1691599))) (_2!28811 (h!56459 (_2!28812 lt!1691599)))))))

(assert (=> b!4513741 (forall!10238 (toList!4308 lt!1691581) lambda!171223)))

(declare-fun lt!1691892 () Unit!93940)

(assert (=> b!4513741 (= lt!1691892 lt!1691891)))

(assert (=> b!4513741 (forall!10238 (toList!4308 lt!1691581) lambda!171223)))

(declare-fun lt!1691889 () Unit!93940)

(declare-fun Unit!93982 () Unit!93940)

(assert (=> b!4513741 (= lt!1691889 Unit!93982)))

(declare-fun res!1877882 () Bool)

(assert (=> b!4513741 (= res!1877882 (forall!10238 (_2!28812 lt!1691599) lambda!171223))))

(declare-fun e!2812000 () Bool)

(assert (=> b!4513741 (=> (not res!1877882) (not e!2812000))))

(assert (=> b!4513741 e!2812000))

(declare-fun lt!1691884 () Unit!93940)

(declare-fun Unit!93983 () Unit!93940)

(assert (=> b!4513741 (= lt!1691884 Unit!93983)))

(declare-fun b!4513742 () Bool)

(declare-fun res!1877883 () Bool)

(assert (=> b!4513742 (=> (not res!1877883) (not e!2812001))))

(assert (=> b!4513742 (= res!1877883 (forall!10238 (toList!4308 lt!1691581) lambda!171224))))

(declare-fun bm!314350 () Bool)

(assert (=> bm!314350 (= call!314353 (forall!10238 (ite c!770014 (toList!4308 lt!1691581) (toList!4308 lt!1691885)) (ite c!770014 lambda!171221 lambda!171223)))))

(declare-fun b!4513743 () Bool)

(assert (=> b!4513743 (= e!2812000 (forall!10238 (toList!4308 lt!1691581) lambda!171223))))

(assert (= (and d!1388921 c!770014) b!4513740))

(assert (= (and d!1388921 (not c!770014)) b!4513741))

(assert (= (and b!4513741 res!1877882) b!4513743))

(assert (= (or b!4513740 b!4513741) bm!314350))

(assert (= (or b!4513740 b!4513741) bm!314348))

(assert (= (or b!4513740 b!4513741) bm!314349))

(assert (= (and d!1388921 res!1877881) b!4513742))

(assert (= (and b!4513742 res!1877883) b!4513739))

(declare-fun m!5255929 () Bool)

(assert (=> d!1388921 m!5255929))

(assert (=> d!1388921 m!5255439))

(declare-fun m!5255931 () Bool)

(assert (=> b!4513743 m!5255931))

(declare-fun m!5255933 () Bool)

(assert (=> b!4513741 m!5255933))

(declare-fun m!5255935 () Bool)

(assert (=> b!4513741 m!5255935))

(assert (=> b!4513741 m!5255931))

(declare-fun m!5255937 () Bool)

(assert (=> b!4513741 m!5255937))

(declare-fun m!5255939 () Bool)

(assert (=> b!4513741 m!5255939))

(declare-fun m!5255941 () Bool)

(assert (=> b!4513741 m!5255941))

(declare-fun m!5255943 () Bool)

(assert (=> b!4513741 m!5255943))

(declare-fun m!5255945 () Bool)

(assert (=> b!4513741 m!5255945))

(assert (=> b!4513741 m!5255943))

(declare-fun m!5255947 () Bool)

(assert (=> b!4513741 m!5255947))

(assert (=> b!4513741 m!5255931))

(assert (=> b!4513741 m!5255935))

(declare-fun m!5255949 () Bool)

(assert (=> b!4513741 m!5255949))

(declare-fun m!5255951 () Bool)

(assert (=> bm!314349 m!5255951))

(declare-fun m!5255953 () Bool)

(assert (=> b!4513742 m!5255953))

(declare-fun m!5255955 () Bool)

(assert (=> b!4513739 m!5255955))

(declare-fun m!5255957 () Bool)

(assert (=> bm!314350 m!5255957))

(declare-fun m!5255959 () Bool)

(assert (=> bm!314348 m!5255959))

(assert (=> b!4513515 d!1388921))

(declare-fun bs!849340 () Bool)

(declare-fun d!1388927 () Bool)

(assert (= bs!849340 (and d!1388927 d!1388899)))

(declare-fun lambda!171225 () Int)

(assert (=> bs!849340 (= lambda!171225 lambda!171216)))

(declare-fun bs!849341 () Bool)

(assert (= bs!849341 (and d!1388927 d!1388879)))

(assert (=> bs!849341 (not (= lambda!171225 lambda!171191))))

(declare-fun bs!849342 () Bool)

(assert (= bs!849342 (and d!1388927 d!1388911)))

(assert (=> bs!849342 (= lambda!171225 lambda!171220)))

(declare-fun bs!849343 () Bool)

(assert (= bs!849343 (and d!1388927 start!446432)))

(assert (=> bs!849343 (= lambda!171225 lambda!171125)))

(declare-fun bs!849344 () Bool)

(assert (= bs!849344 (and d!1388927 d!1388885)))

(assert (=> bs!849344 (= lambda!171225 lambda!171213)))

(declare-fun lt!1691893 () ListMap!3569)

(assert (=> d!1388927 (invariantList!1007 (toList!4308 lt!1691893))))

(declare-fun e!2812004 () ListMap!3569)

(assert (=> d!1388927 (= lt!1691893 e!2812004)))

(declare-fun c!770015 () Bool)

(assert (=> d!1388927 (= c!770015 ((_ is Cons!50617) (toList!4307 lt!1691601)))))

(assert (=> d!1388927 (forall!10237 (toList!4307 lt!1691601) lambda!171225)))

(assert (=> d!1388927 (= (extractMap!1206 (toList!4307 lt!1691601)) lt!1691893)))

(declare-fun b!4513746 () Bool)

(assert (=> b!4513746 (= e!2812004 (addToMapMapFromBucket!677 (_2!28812 (h!56460 (toList!4307 lt!1691601))) (extractMap!1206 (t!357703 (toList!4307 lt!1691601)))))))

(declare-fun b!4513747 () Bool)

(assert (=> b!4513747 (= e!2812004 (ListMap!3570 Nil!50616))))

(assert (= (and d!1388927 c!770015) b!4513746))

(assert (= (and d!1388927 (not c!770015)) b!4513747))

(declare-fun m!5255961 () Bool)

(assert (=> d!1388927 m!5255961))

(declare-fun m!5255963 () Bool)

(assert (=> d!1388927 m!5255963))

(declare-fun m!5255965 () Bool)

(assert (=> b!4513746 m!5255965))

(assert (=> b!4513746 m!5255965))

(declare-fun m!5255967 () Bool)

(assert (=> b!4513746 m!5255967))

(assert (=> b!4513515 d!1388927))

(declare-fun d!1388929 () Bool)

(declare-fun e!2812005 () Bool)

(assert (=> d!1388929 e!2812005))

(declare-fun res!1877886 () Bool)

(assert (=> d!1388929 (=> (not res!1877886) (not e!2812005))))

(declare-fun lt!1691895 () ListLongMap!2939)

(assert (=> d!1388929 (= res!1877886 (contains!13327 lt!1691895 (_1!28812 lt!1691583)))))

(declare-fun lt!1691897 () List!50741)

(assert (=> d!1388929 (= lt!1691895 (ListLongMap!2940 lt!1691897))))

(declare-fun lt!1691896 () Unit!93940)

(declare-fun lt!1691894 () Unit!93940)

(assert (=> d!1388929 (= lt!1691896 lt!1691894)))

(assert (=> d!1388929 (= (getValueByKey!1072 lt!1691897 (_1!28812 lt!1691583)) (Some!11091 (_2!28812 lt!1691583)))))

(assert (=> d!1388929 (= lt!1691894 (lemmaContainsTupThenGetReturnValue!661 lt!1691897 (_1!28812 lt!1691583) (_2!28812 lt!1691583)))))

(assert (=> d!1388929 (= lt!1691897 (insertStrictlySorted!397 (toList!4307 lm!1477) (_1!28812 lt!1691583) (_2!28812 lt!1691583)))))

(assert (=> d!1388929 (= (+!1518 lm!1477 lt!1691583) lt!1691895)))

(declare-fun b!4513748 () Bool)

(declare-fun res!1877887 () Bool)

(assert (=> b!4513748 (=> (not res!1877887) (not e!2812005))))

(assert (=> b!4513748 (= res!1877887 (= (getValueByKey!1072 (toList!4307 lt!1691895) (_1!28812 lt!1691583)) (Some!11091 (_2!28812 lt!1691583))))))

(declare-fun b!4513749 () Bool)

(assert (=> b!4513749 (= e!2812005 (contains!13325 (toList!4307 lt!1691895) lt!1691583))))

(assert (= (and d!1388929 res!1877886) b!4513748))

(assert (= (and b!4513748 res!1877887) b!4513749))

(declare-fun m!5255969 () Bool)

(assert (=> d!1388929 m!5255969))

(declare-fun m!5255971 () Bool)

(assert (=> d!1388929 m!5255971))

(declare-fun m!5255973 () Bool)

(assert (=> d!1388929 m!5255973))

(declare-fun m!5255975 () Bool)

(assert (=> d!1388929 m!5255975))

(declare-fun m!5255977 () Bool)

(assert (=> b!4513748 m!5255977))

(declare-fun m!5255979 () Bool)

(assert (=> b!4513749 m!5255979))

(assert (=> b!4513525 d!1388929))

(declare-fun d!1388931 () Bool)

(declare-fun e!2812006 () Bool)

(assert (=> d!1388931 e!2812006))

(declare-fun res!1877888 () Bool)

(assert (=> d!1388931 (=> (not res!1877888) (not e!2812006))))

(declare-fun lt!1691899 () ListLongMap!2939)

(assert (=> d!1388931 (= res!1877888 (contains!13327 lt!1691899 (_1!28812 lt!1691599)))))

(declare-fun lt!1691901 () List!50741)

(assert (=> d!1388931 (= lt!1691899 (ListLongMap!2940 lt!1691901))))

(declare-fun lt!1691900 () Unit!93940)

(declare-fun lt!1691898 () Unit!93940)

(assert (=> d!1388931 (= lt!1691900 lt!1691898)))

(assert (=> d!1388931 (= (getValueByKey!1072 lt!1691901 (_1!28812 lt!1691599)) (Some!11091 (_2!28812 lt!1691599)))))

(assert (=> d!1388931 (= lt!1691898 (lemmaContainsTupThenGetReturnValue!661 lt!1691901 (_1!28812 lt!1691599) (_2!28812 lt!1691599)))))

(assert (=> d!1388931 (= lt!1691901 (insertStrictlySorted!397 (toList!4307 lt!1691586) (_1!28812 lt!1691599) (_2!28812 lt!1691599)))))

(assert (=> d!1388931 (= (+!1518 lt!1691586 lt!1691599) lt!1691899)))

(declare-fun b!4513750 () Bool)

(declare-fun res!1877889 () Bool)

(assert (=> b!4513750 (=> (not res!1877889) (not e!2812006))))

(assert (=> b!4513750 (= res!1877889 (= (getValueByKey!1072 (toList!4307 lt!1691899) (_1!28812 lt!1691599)) (Some!11091 (_2!28812 lt!1691599))))))

(declare-fun b!4513751 () Bool)

(assert (=> b!4513751 (= e!2812006 (contains!13325 (toList!4307 lt!1691899) lt!1691599))))

(assert (= (and d!1388931 res!1877888) b!4513750))

(assert (= (and b!4513750 res!1877889) b!4513751))

(declare-fun m!5255981 () Bool)

(assert (=> d!1388931 m!5255981))

(declare-fun m!5255983 () Bool)

(assert (=> d!1388931 m!5255983))

(declare-fun m!5255985 () Bool)

(assert (=> d!1388931 m!5255985))

(declare-fun m!5255987 () Bool)

(assert (=> d!1388931 m!5255987))

(declare-fun m!5255989 () Bool)

(assert (=> b!4513750 m!5255989))

(declare-fun m!5255991 () Bool)

(assert (=> b!4513751 m!5255991))

(assert (=> b!4513525 d!1388931))

(declare-fun bs!849363 () Bool)

(declare-fun d!1388933 () Bool)

(assert (= bs!849363 (and d!1388933 d!1388899)))

(declare-fun lambda!171232 () Int)

(assert (=> bs!849363 (= lambda!171232 lambda!171216)))

(declare-fun bs!849364 () Bool)

(assert (= bs!849364 (and d!1388933 d!1388879)))

(assert (=> bs!849364 (not (= lambda!171232 lambda!171191))))

(declare-fun bs!849365 () Bool)

(assert (= bs!849365 (and d!1388933 d!1388911)))

(assert (=> bs!849365 (= lambda!171232 lambda!171220)))

(declare-fun bs!849366 () Bool)

(assert (= bs!849366 (and d!1388933 d!1388927)))

(assert (=> bs!849366 (= lambda!171232 lambda!171225)))

(declare-fun bs!849367 () Bool)

(assert (= bs!849367 (and d!1388933 start!446432)))

(assert (=> bs!849367 (= lambda!171232 lambda!171125)))

(declare-fun bs!849368 () Bool)

(assert (= bs!849368 (and d!1388933 d!1388885)))

(assert (=> bs!849368 (= lambda!171232 lambda!171213)))

(assert (=> d!1388933 (not (contains!13326 (extractMap!1206 (toList!4307 lm!1477)) key!3287))))

(declare-fun lt!1691917 () Unit!93940)

(declare-fun choose!29384 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> d!1388933 (= lt!1691917 (choose!29384 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1388933 (forall!10237 (toList!4307 lm!1477) lambda!171232)))

(assert (=> d!1388933 (= (lemmaNotInItsHashBucketThenNotInMap!138 lm!1477 key!3287 hashF!1107) lt!1691917)))

(declare-fun bs!849369 () Bool)

(assert (= bs!849369 d!1388933))

(assert (=> bs!849369 m!5255497))

(assert (=> bs!849369 m!5255497))

(declare-fun m!5256031 () Bool)

(assert (=> bs!849369 m!5256031))

(declare-fun m!5256033 () Bool)

(assert (=> bs!849369 m!5256033))

(declare-fun m!5256035 () Bool)

(assert (=> bs!849369 m!5256035))

(assert (=> b!4513536 d!1388933))

(declare-fun d!1388943 () Bool)

(declare-fun get!16567 (Option!11092) List!50740)

(assert (=> d!1388943 (= (apply!11887 lt!1691580 hash!344) (get!16567 (getValueByKey!1072 (toList!4307 lt!1691580) hash!344)))))

(declare-fun bs!849370 () Bool)

(assert (= bs!849370 d!1388943))

(declare-fun m!5256037 () Bool)

(assert (=> bs!849370 m!5256037))

(assert (=> bs!849370 m!5256037))

(declare-fun m!5256039 () Bool)

(assert (=> bs!849370 m!5256039))

(assert (=> b!4513522 d!1388943))

(declare-fun b!4513794 () Bool)

(assert (=> b!4513794 false))

(declare-fun lt!1691954 () Unit!93940)

(declare-fun lt!1691949 () Unit!93940)

(assert (=> b!4513794 (= lt!1691954 lt!1691949)))

(declare-fun containsKey!1753 (List!50740 K!12015) Bool)

(assert (=> b!4513794 (containsKey!1753 (toList!4308 lt!1691598) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!454 (List!50740 K!12015) Unit!93940)

(assert (=> b!4513794 (= lt!1691949 (lemmaInGetKeysListThenContainsKey!454 (toList!4308 lt!1691598) key!3287))))

(declare-fun e!2812040 () Unit!93940)

(declare-fun Unit!93994 () Unit!93940)

(assert (=> b!4513794 (= e!2812040 Unit!93994)))

(declare-fun b!4513795 () Bool)

(declare-fun e!2812037 () Bool)

(declare-fun contains!13329 (List!50743 K!12015) Bool)

(assert (=> b!4513795 (= e!2812037 (not (contains!13329 (keys!17574 lt!1691598) key!3287)))))

(declare-fun b!4513796 () Bool)

(declare-fun e!2812038 () Unit!93940)

(declare-fun lt!1691950 () Unit!93940)

(assert (=> b!4513796 (= e!2812038 lt!1691950)))

(declare-fun lt!1691948 () Unit!93940)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!976 (List!50740 K!12015) Unit!93940)

(assert (=> b!4513796 (= lt!1691948 (lemmaContainsKeyImpliesGetValueByKeyDefined!976 (toList!4308 lt!1691598) key!3287))))

(declare-datatypes ((Option!11093 0))(
  ( (None!11092) (Some!11092 (v!44660 V!12261)) )
))
(declare-fun isDefined!8379 (Option!11093) Bool)

(declare-fun getValueByKey!1073 (List!50740 K!12015) Option!11093)

(assert (=> b!4513796 (isDefined!8379 (getValueByKey!1073 (toList!4308 lt!1691598) key!3287))))

(declare-fun lt!1691947 () Unit!93940)

(assert (=> b!4513796 (= lt!1691947 lt!1691948)))

(declare-fun lemmaInListThenGetKeysListContains!451 (List!50740 K!12015) Unit!93940)

(assert (=> b!4513796 (= lt!1691950 (lemmaInListThenGetKeysListContains!451 (toList!4308 lt!1691598) key!3287))))

(declare-fun call!314359 () Bool)

(assert (=> b!4513796 call!314359))

(declare-fun b!4513797 () Bool)

(declare-fun e!2812036 () List!50743)

(declare-fun getKeysList!455 (List!50740) List!50743)

(assert (=> b!4513797 (= e!2812036 (getKeysList!455 (toList!4308 lt!1691598)))))

(declare-fun b!4513798 () Bool)

(declare-fun e!2812039 () Bool)

(assert (=> b!4513798 (= e!2812039 (contains!13329 (keys!17574 lt!1691598) key!3287))))

(declare-fun b!4513799 () Bool)

(assert (=> b!4513799 (= e!2812038 e!2812040)))

(declare-fun c!770030 () Bool)

(assert (=> b!4513799 (= c!770030 call!314359)))

(declare-fun b!4513800 () Bool)

(assert (=> b!4513800 (= e!2812036 (keys!17574 lt!1691598))))

(declare-fun b!4513801 () Bool)

(declare-fun Unit!93995 () Unit!93940)

(assert (=> b!4513801 (= e!2812040 Unit!93995)))

(declare-fun b!4513802 () Bool)

(declare-fun e!2812035 () Bool)

(assert (=> b!4513802 (= e!2812035 e!2812039)))

(declare-fun res!1877908 () Bool)

(assert (=> b!4513802 (=> (not res!1877908) (not e!2812039))))

(assert (=> b!4513802 (= res!1877908 (isDefined!8379 (getValueByKey!1073 (toList!4308 lt!1691598) key!3287)))))

(declare-fun d!1388945 () Bool)

(assert (=> d!1388945 e!2812035))

(declare-fun res!1877909 () Bool)

(assert (=> d!1388945 (=> res!1877909 e!2812035)))

(assert (=> d!1388945 (= res!1877909 e!2812037)))

(declare-fun res!1877910 () Bool)

(assert (=> d!1388945 (=> (not res!1877910) (not e!2812037))))

(declare-fun lt!1691951 () Bool)

(assert (=> d!1388945 (= res!1877910 (not lt!1691951))))

(declare-fun lt!1691952 () Bool)

(assert (=> d!1388945 (= lt!1691951 lt!1691952)))

(declare-fun lt!1691953 () Unit!93940)

(assert (=> d!1388945 (= lt!1691953 e!2812038)))

(declare-fun c!770028 () Bool)

(assert (=> d!1388945 (= c!770028 lt!1691952)))

(assert (=> d!1388945 (= lt!1691952 (containsKey!1753 (toList!4308 lt!1691598) key!3287))))

(assert (=> d!1388945 (= (contains!13326 lt!1691598 key!3287) lt!1691951)))

(declare-fun bm!314354 () Bool)

(assert (=> bm!314354 (= call!314359 (contains!13329 e!2812036 key!3287))))

(declare-fun c!770029 () Bool)

(assert (=> bm!314354 (= c!770029 c!770028)))

(assert (= (and d!1388945 c!770028) b!4513796))

(assert (= (and d!1388945 (not c!770028)) b!4513799))

(assert (= (and b!4513799 c!770030) b!4513794))

(assert (= (and b!4513799 (not c!770030)) b!4513801))

(assert (= (or b!4513796 b!4513799) bm!314354))

(assert (= (and bm!314354 c!770029) b!4513797))

(assert (= (and bm!314354 (not c!770029)) b!4513800))

(assert (= (and d!1388945 res!1877910) b!4513795))

(assert (= (and d!1388945 (not res!1877909)) b!4513802))

(assert (= (and b!4513802 res!1877908) b!4513798))

(declare-fun m!5256099 () Bool)

(assert (=> d!1388945 m!5256099))

(declare-fun m!5256101 () Bool)

(assert (=> b!4513802 m!5256101))

(assert (=> b!4513802 m!5256101))

(declare-fun m!5256103 () Bool)

(assert (=> b!4513802 m!5256103))

(declare-fun m!5256105 () Bool)

(assert (=> b!4513795 m!5256105))

(assert (=> b!4513795 m!5256105))

(declare-fun m!5256107 () Bool)

(assert (=> b!4513795 m!5256107))

(assert (=> b!4513800 m!5256105))

(assert (=> b!4513794 m!5256099))

(declare-fun m!5256109 () Bool)

(assert (=> b!4513794 m!5256109))

(assert (=> b!4513798 m!5256105))

(assert (=> b!4513798 m!5256105))

(assert (=> b!4513798 m!5256107))

(declare-fun m!5256111 () Bool)

(assert (=> bm!314354 m!5256111))

(declare-fun m!5256113 () Bool)

(assert (=> b!4513797 m!5256113))

(declare-fun m!5256115 () Bool)

(assert (=> b!4513796 m!5256115))

(assert (=> b!4513796 m!5256101))

(assert (=> b!4513796 m!5256101))

(assert (=> b!4513796 m!5256103))

(declare-fun m!5256117 () Bool)

(assert (=> b!4513796 m!5256117))

(assert (=> b!4513521 d!1388945))

(declare-fun bs!849395 () Bool)

(declare-fun d!1388963 () Bool)

(assert (= bs!849395 (and d!1388963 d!1388899)))

(declare-fun lambda!171235 () Int)

(assert (=> bs!849395 (= lambda!171235 lambda!171216)))

(declare-fun bs!849396 () Bool)

(assert (= bs!849396 (and d!1388963 d!1388879)))

(assert (=> bs!849396 (not (= lambda!171235 lambda!171191))))

(declare-fun bs!849397 () Bool)

(assert (= bs!849397 (and d!1388963 d!1388911)))

(assert (=> bs!849397 (= lambda!171235 lambda!171220)))

(declare-fun bs!849398 () Bool)

(assert (= bs!849398 (and d!1388963 d!1388927)))

(assert (=> bs!849398 (= lambda!171235 lambda!171225)))

(declare-fun bs!849399 () Bool)

(assert (= bs!849399 (and d!1388963 start!446432)))

(assert (=> bs!849399 (= lambda!171235 lambda!171125)))

(declare-fun bs!849400 () Bool)

(assert (= bs!849400 (and d!1388963 d!1388885)))

(assert (=> bs!849400 (= lambda!171235 lambda!171213)))

(declare-fun bs!849401 () Bool)

(assert (= bs!849401 (and d!1388963 d!1388933)))

(assert (=> bs!849401 (= lambda!171235 lambda!171232)))

(declare-fun lt!1691955 () ListMap!3569)

(assert (=> d!1388963 (invariantList!1007 (toList!4308 lt!1691955))))

(declare-fun e!2812041 () ListMap!3569)

(assert (=> d!1388963 (= lt!1691955 e!2812041)))

(declare-fun c!770031 () Bool)

(assert (=> d!1388963 (= c!770031 ((_ is Cons!50617) (toList!4307 lm!1477)))))

(assert (=> d!1388963 (forall!10237 (toList!4307 lm!1477) lambda!171235)))

(assert (=> d!1388963 (= (extractMap!1206 (toList!4307 lm!1477)) lt!1691955)))

(declare-fun b!4513803 () Bool)

(assert (=> b!4513803 (= e!2812041 (addToMapMapFromBucket!677 (_2!28812 (h!56460 (toList!4307 lm!1477))) (extractMap!1206 (t!357703 (toList!4307 lm!1477)))))))

(declare-fun b!4513804 () Bool)

(assert (=> b!4513804 (= e!2812041 (ListMap!3570 Nil!50616))))

(assert (= (and d!1388963 c!770031) b!4513803))

(assert (= (and d!1388963 (not c!770031)) b!4513804))

(declare-fun m!5256119 () Bool)

(assert (=> d!1388963 m!5256119))

(declare-fun m!5256121 () Bool)

(assert (=> d!1388963 m!5256121))

(assert (=> b!4513803 m!5255485))

(assert (=> b!4513803 m!5255485))

(declare-fun m!5256123 () Bool)

(assert (=> b!4513803 m!5256123))

(assert (=> b!4513521 d!1388963))

(declare-fun bs!849415 () Bool)

(declare-fun d!1388965 () Bool)

(assert (= bs!849415 (and d!1388965 d!1388899)))

(declare-fun lambda!171241 () Int)

(assert (=> bs!849415 (= lambda!171241 lambda!171216)))

(declare-fun bs!849416 () Bool)

(assert (= bs!849416 (and d!1388965 d!1388879)))

(assert (=> bs!849416 (not (= lambda!171241 lambda!171191))))

(declare-fun bs!849417 () Bool)

(assert (= bs!849417 (and d!1388965 d!1388927)))

(assert (=> bs!849417 (= lambda!171241 lambda!171225)))

(declare-fun bs!849418 () Bool)

(assert (= bs!849418 (and d!1388965 start!446432)))

(assert (=> bs!849418 (= lambda!171241 lambda!171125)))

(declare-fun bs!849419 () Bool)

(assert (= bs!849419 (and d!1388965 d!1388885)))

(assert (=> bs!849419 (= lambda!171241 lambda!171213)))

(declare-fun bs!849420 () Bool)

(assert (= bs!849420 (and d!1388965 d!1388933)))

(assert (=> bs!849420 (= lambda!171241 lambda!171232)))

(declare-fun bs!849421 () Bool)

(assert (= bs!849421 (and d!1388965 d!1388911)))

(assert (=> bs!849421 (= lambda!171241 lambda!171220)))

(declare-fun bs!849422 () Bool)

(assert (= bs!849422 (and d!1388965 d!1388963)))

(assert (=> bs!849422 (= lambda!171241 lambda!171235)))

(assert (=> d!1388965 (contains!13327 lm!1477 (hash!2771 hashF!1107 key!3287))))

(declare-fun lt!1691961 () Unit!93940)

(declare-fun choose!29386 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> d!1388965 (= lt!1691961 (choose!29386 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1388965 (forall!10237 (toList!4307 lm!1477) lambda!171241)))

(assert (=> d!1388965 (= (lemmaInGenMapThenLongMapContainsHash!224 lm!1477 key!3287 hashF!1107) lt!1691961)))

(declare-fun bs!849423 () Bool)

(assert (= bs!849423 d!1388965))

(assert (=> bs!849423 m!5255447))

(assert (=> bs!849423 m!5255447))

(declare-fun m!5256137 () Bool)

(assert (=> bs!849423 m!5256137))

(declare-fun m!5256139 () Bool)

(assert (=> bs!849423 m!5256139))

(declare-fun m!5256141 () Bool)

(assert (=> bs!849423 m!5256141))

(assert (=> b!4513532 d!1388965))

(declare-fun d!1388969 () Bool)

(assert (=> d!1388969 (dynLambda!21147 lambda!171125 lt!1691587)))

(declare-fun lt!1691964 () Unit!93940)

(declare-fun choose!29387 (List!50741 Int tuple2!51036) Unit!93940)

(assert (=> d!1388969 (= lt!1691964 (choose!29387 (toList!4307 lm!1477) lambda!171125 lt!1691587))))

(declare-fun e!2812049 () Bool)

(assert (=> d!1388969 e!2812049))

(declare-fun res!1877913 () Bool)

(assert (=> d!1388969 (=> (not res!1877913) (not e!2812049))))

(assert (=> d!1388969 (= res!1877913 (forall!10237 (toList!4307 lm!1477) lambda!171125))))

(assert (=> d!1388969 (= (forallContained!2489 (toList!4307 lm!1477) lambda!171125 lt!1691587) lt!1691964)))

(declare-fun b!4513820 () Bool)

(assert (=> b!4513820 (= e!2812049 (contains!13325 (toList!4307 lm!1477) lt!1691587))))

(assert (= (and d!1388969 res!1877913) b!4513820))

(declare-fun b_lambda!154067 () Bool)

(assert (=> (not b_lambda!154067) (not d!1388969)))

(declare-fun m!5256145 () Bool)

(assert (=> d!1388969 m!5256145))

(declare-fun m!5256147 () Bool)

(assert (=> d!1388969 m!5256147))

(assert (=> d!1388969 m!5255475))

(assert (=> b!4513820 m!5255457))

(assert (=> b!4513532 d!1388969))

(declare-fun d!1388973 () Bool)

(declare-fun lt!1691967 () Bool)

(declare-fun content!8328 (List!50741) (InoxSet tuple2!51036))

(assert (=> d!1388973 (= lt!1691967 (select (content!8328 (toList!4307 lm!1477)) lt!1691587))))

(declare-fun e!2812056 () Bool)

(assert (=> d!1388973 (= lt!1691967 e!2812056)))

(declare-fun res!1877919 () Bool)

(assert (=> d!1388973 (=> (not res!1877919) (not e!2812056))))

(assert (=> d!1388973 (= res!1877919 ((_ is Cons!50617) (toList!4307 lm!1477)))))

(assert (=> d!1388973 (= (contains!13325 (toList!4307 lm!1477) lt!1691587) lt!1691967)))

(declare-fun b!4513826 () Bool)

(declare-fun e!2812055 () Bool)

(assert (=> b!4513826 (= e!2812056 e!2812055)))

(declare-fun res!1877918 () Bool)

(assert (=> b!4513826 (=> res!1877918 e!2812055)))

(assert (=> b!4513826 (= res!1877918 (= (h!56460 (toList!4307 lm!1477)) lt!1691587))))

(declare-fun b!4513827 () Bool)

(assert (=> b!4513827 (= e!2812055 (contains!13325 (t!357703 (toList!4307 lm!1477)) lt!1691587))))

(assert (= (and d!1388973 res!1877919) b!4513826))

(assert (= (and b!4513826 (not res!1877918)) b!4513827))

(declare-fun m!5256153 () Bool)

(assert (=> d!1388973 m!5256153))

(declare-fun m!5256155 () Bool)

(assert (=> d!1388973 m!5256155))

(assert (=> b!4513827 m!5255501))

(assert (=> b!4513532 d!1388973))

(declare-fun b!4513838 () Bool)

(declare-fun e!2812062 () List!50740)

(assert (=> b!4513838 (= e!2812062 (Cons!50616 (h!56459 lt!1691584) (removePairForKey!777 (t!357702 lt!1691584) key!3287)))))

(declare-fun b!4513836 () Bool)

(declare-fun e!2812061 () List!50740)

(assert (=> b!4513836 (= e!2812061 (t!357702 lt!1691584))))

(declare-fun d!1388977 () Bool)

(declare-fun lt!1691970 () List!50740)

(assert (=> d!1388977 (not (containsKey!1750 lt!1691970 key!3287))))

(assert (=> d!1388977 (= lt!1691970 e!2812061)))

(declare-fun c!770037 () Bool)

(assert (=> d!1388977 (= c!770037 (and ((_ is Cons!50616) lt!1691584) (= (_1!28811 (h!56459 lt!1691584)) key!3287)))))

(assert (=> d!1388977 (noDuplicateKeys!1150 lt!1691584)))

(assert (=> d!1388977 (= (removePairForKey!777 lt!1691584 key!3287) lt!1691970)))

(declare-fun b!4513839 () Bool)

(assert (=> b!4513839 (= e!2812062 Nil!50616)))

(declare-fun b!4513837 () Bool)

(assert (=> b!4513837 (= e!2812061 e!2812062)))

(declare-fun c!770036 () Bool)

(assert (=> b!4513837 (= c!770036 ((_ is Cons!50616) lt!1691584))))

(assert (= (and d!1388977 c!770037) b!4513836))

(assert (= (and d!1388977 (not c!770037)) b!4513837))

(assert (= (and b!4513837 c!770036) b!4513838))

(assert (= (and b!4513837 (not c!770036)) b!4513839))

(declare-fun m!5256157 () Bool)

(assert (=> b!4513838 m!5256157))

(declare-fun m!5256159 () Bool)

(assert (=> d!1388977 m!5256159))

(declare-fun m!5256161 () Bool)

(assert (=> d!1388977 m!5256161))

(assert (=> b!4513532 d!1388977))

(declare-fun d!1388979 () Bool)

(assert (=> d!1388979 (contains!13325 (toList!4307 lm!1477) (tuple2!51037 hash!344 lt!1691584))))

(declare-fun lt!1691973 () Unit!93940)

(declare-fun choose!29388 (List!50741 (_ BitVec 64) List!50740) Unit!93940)

(assert (=> d!1388979 (= lt!1691973 (choose!29388 (toList!4307 lm!1477) hash!344 lt!1691584))))

(declare-fun e!2812065 () Bool)

(assert (=> d!1388979 e!2812065))

(declare-fun res!1877922 () Bool)

(assert (=> d!1388979 (=> (not res!1877922) (not e!2812065))))

(assert (=> d!1388979 (= res!1877922 (isStrictlySorted!421 (toList!4307 lm!1477)))))

(assert (=> d!1388979 (= (lemmaGetValueByKeyImpliesContainsTuple!662 (toList!4307 lm!1477) hash!344 lt!1691584) lt!1691973)))

(declare-fun b!4513842 () Bool)

(assert (=> b!4513842 (= e!2812065 (= (getValueByKey!1072 (toList!4307 lm!1477) hash!344) (Some!11091 lt!1691584)))))

(assert (= (and d!1388979 res!1877922) b!4513842))

(declare-fun m!5256163 () Bool)

(assert (=> d!1388979 m!5256163))

(declare-fun m!5256165 () Bool)

(assert (=> d!1388979 m!5256165))

(assert (=> d!1388979 m!5255727))

(declare-fun m!5256167 () Bool)

(assert (=> b!4513842 m!5256167))

(assert (=> b!4513532 d!1388979))

(declare-fun d!1388981 () Bool)

(assert (=> d!1388981 (= (apply!11887 lm!1477 hash!344) (get!16567 (getValueByKey!1072 (toList!4307 lm!1477) hash!344)))))

(declare-fun bs!849433 () Bool)

(assert (= bs!849433 d!1388981))

(assert (=> bs!849433 m!5256167))

(assert (=> bs!849433 m!5256167))

(declare-fun m!5256169 () Bool)

(assert (=> bs!849433 m!5256169))

(assert (=> b!4513532 d!1388981))

(declare-fun d!1388983 () Bool)

(declare-fun e!2812071 () Bool)

(assert (=> d!1388983 e!2812071))

(declare-fun res!1877925 () Bool)

(assert (=> d!1388983 (=> res!1877925 e!2812071)))

(declare-fun lt!1691985 () Bool)

(assert (=> d!1388983 (= res!1877925 (not lt!1691985))))

(declare-fun lt!1691982 () Bool)

(assert (=> d!1388983 (= lt!1691985 lt!1691982)))

(declare-fun lt!1691983 () Unit!93940)

(declare-fun e!2812070 () Unit!93940)

(assert (=> d!1388983 (= lt!1691983 e!2812070)))

(declare-fun c!770040 () Bool)

(assert (=> d!1388983 (= c!770040 lt!1691982)))

(declare-fun containsKey!1754 (List!50741 (_ BitVec 64)) Bool)

(assert (=> d!1388983 (= lt!1691982 (containsKey!1754 (toList!4307 lm!1477) lt!1691579))))

(assert (=> d!1388983 (= (contains!13327 lm!1477 lt!1691579) lt!1691985)))

(declare-fun b!4513849 () Bool)

(declare-fun lt!1691984 () Unit!93940)

(assert (=> b!4513849 (= e!2812070 lt!1691984)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!977 (List!50741 (_ BitVec 64)) Unit!93940)

(assert (=> b!4513849 (= lt!1691984 (lemmaContainsKeyImpliesGetValueByKeyDefined!977 (toList!4307 lm!1477) lt!1691579))))

(declare-fun isDefined!8380 (Option!11092) Bool)

(assert (=> b!4513849 (isDefined!8380 (getValueByKey!1072 (toList!4307 lm!1477) lt!1691579))))

(declare-fun b!4513850 () Bool)

(declare-fun Unit!93998 () Unit!93940)

(assert (=> b!4513850 (= e!2812070 Unit!93998)))

(declare-fun b!4513851 () Bool)

(assert (=> b!4513851 (= e!2812071 (isDefined!8380 (getValueByKey!1072 (toList!4307 lm!1477) lt!1691579)))))

(assert (= (and d!1388983 c!770040) b!4513849))

(assert (= (and d!1388983 (not c!770040)) b!4513850))

(assert (= (and d!1388983 (not res!1877925)) b!4513851))

(declare-fun m!5256171 () Bool)

(assert (=> d!1388983 m!5256171))

(declare-fun m!5256173 () Bool)

(assert (=> b!4513849 m!5256173))

(declare-fun m!5256175 () Bool)

(assert (=> b!4513849 m!5256175))

(assert (=> b!4513849 m!5256175))

(declare-fun m!5256177 () Bool)

(assert (=> b!4513849 m!5256177))

(assert (=> b!4513851 m!5256175))

(assert (=> b!4513851 m!5256175))

(assert (=> b!4513851 m!5256177))

(assert (=> b!4513532 d!1388983))

(declare-fun d!1388985 () Bool)

(declare-fun hash!2775 (Hashable!5545 K!12015) (_ BitVec 64))

(assert (=> d!1388985 (= (hash!2771 hashF!1107 key!3287) (hash!2775 hashF!1107 key!3287))))

(declare-fun bs!849434 () Bool)

(assert (= bs!849434 d!1388985))

(declare-fun m!5256179 () Bool)

(assert (=> bs!849434 m!5256179))

(assert (=> b!4513534 d!1388985))

(declare-fun d!1388987 () Bool)

(declare-fun e!2812073 () Bool)

(assert (=> d!1388987 e!2812073))

(declare-fun res!1877926 () Bool)

(assert (=> d!1388987 (=> res!1877926 e!2812073)))

(declare-fun lt!1691989 () Bool)

(assert (=> d!1388987 (= res!1877926 (not lt!1691989))))

(declare-fun lt!1691986 () Bool)

(assert (=> d!1388987 (= lt!1691989 lt!1691986)))

(declare-fun lt!1691987 () Unit!93940)

(declare-fun e!2812072 () Unit!93940)

(assert (=> d!1388987 (= lt!1691987 e!2812072)))

(declare-fun c!770041 () Bool)

(assert (=> d!1388987 (= c!770041 lt!1691986)))

(assert (=> d!1388987 (= lt!1691986 (containsKey!1754 (toList!4307 lt!1691580) hash!344))))

(assert (=> d!1388987 (= (contains!13327 lt!1691580 hash!344) lt!1691989)))

(declare-fun b!4513852 () Bool)

(declare-fun lt!1691988 () Unit!93940)

(assert (=> b!4513852 (= e!2812072 lt!1691988)))

(assert (=> b!4513852 (= lt!1691988 (lemmaContainsKeyImpliesGetValueByKeyDefined!977 (toList!4307 lt!1691580) hash!344))))

(assert (=> b!4513852 (isDefined!8380 (getValueByKey!1072 (toList!4307 lt!1691580) hash!344))))

(declare-fun b!4513853 () Bool)

(declare-fun Unit!93999 () Unit!93940)

(assert (=> b!4513853 (= e!2812072 Unit!93999)))

(declare-fun b!4513854 () Bool)

(assert (=> b!4513854 (= e!2812073 (isDefined!8380 (getValueByKey!1072 (toList!4307 lt!1691580) hash!344)))))

(assert (= (and d!1388987 c!770041) b!4513852))

(assert (= (and d!1388987 (not c!770041)) b!4513853))

(assert (= (and d!1388987 (not res!1877926)) b!4513854))

(declare-fun m!5256181 () Bool)

(assert (=> d!1388987 m!5256181))

(declare-fun m!5256183 () Bool)

(assert (=> b!4513852 m!5256183))

(assert (=> b!4513852 m!5256037))

(assert (=> b!4513852 m!5256037))

(declare-fun m!5256185 () Bool)

(assert (=> b!4513852 m!5256185))

(assert (=> b!4513854 m!5256037))

(assert (=> b!4513854 m!5256037))

(assert (=> b!4513854 m!5256185))

(assert (=> b!4513533 d!1388987))

(declare-fun d!1388989 () Bool)

(declare-fun tail!7716 (List!50741) List!50741)

(assert (=> d!1388989 (= (tail!7714 lm!1477) (ListLongMap!2940 (tail!7716 (toList!4307 lm!1477))))))

(declare-fun bs!849435 () Bool)

(assert (= bs!849435 d!1388989))

(declare-fun m!5256187 () Bool)

(assert (=> bs!849435 m!5256187))

(assert (=> b!4513533 d!1388989))

(declare-fun d!1388991 () Bool)

(declare-fun res!1877933 () Bool)

(declare-fun e!2812082 () Bool)

(assert (=> d!1388991 (=> res!1877933 e!2812082)))

(declare-fun e!2812080 () Bool)

(assert (=> d!1388991 (= res!1877933 e!2812080)))

(declare-fun res!1877934 () Bool)

(assert (=> d!1388991 (=> (not res!1877934) (not e!2812080))))

(assert (=> d!1388991 (= res!1877934 ((_ is Cons!50617) (t!357703 (toList!4307 lm!1477))))))

(assert (=> d!1388991 (= (containsKeyBiggerList!130 (t!357703 (toList!4307 lm!1477)) key!3287) e!2812082)))

(declare-fun b!4513861 () Bool)

(assert (=> b!4513861 (= e!2812080 (containsKey!1750 (_2!28812 (h!56460 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(declare-fun b!4513862 () Bool)

(declare-fun e!2812081 () Bool)

(assert (=> b!4513862 (= e!2812082 e!2812081)))

(declare-fun res!1877935 () Bool)

(assert (=> b!4513862 (=> (not res!1877935) (not e!2812081))))

(assert (=> b!4513862 (= res!1877935 ((_ is Cons!50617) (t!357703 (toList!4307 lm!1477))))))

(declare-fun b!4513863 () Bool)

(assert (=> b!4513863 (= e!2812081 (containsKeyBiggerList!130 (t!357703 (t!357703 (toList!4307 lm!1477))) key!3287))))

(assert (= (and d!1388991 res!1877934) b!4513861))

(assert (= (and d!1388991 (not res!1877933)) b!4513862))

(assert (= (and b!4513862 res!1877935) b!4513863))

(declare-fun m!5256189 () Bool)

(assert (=> b!4513861 m!5256189))

(declare-fun m!5256191 () Bool)

(assert (=> b!4513863 m!5256191))

(assert (=> b!4513519 d!1388991))

(declare-fun d!1388993 () Bool)

(declare-fun res!1877936 () Bool)

(declare-fun e!2812085 () Bool)

(assert (=> d!1388993 (=> res!1877936 e!2812085)))

(declare-fun e!2812083 () Bool)

(assert (=> d!1388993 (= res!1877936 e!2812083)))

(declare-fun res!1877937 () Bool)

(assert (=> d!1388993 (=> (not res!1877937) (not e!2812083))))

(assert (=> d!1388993 (= res!1877937 ((_ is Cons!50617) (toList!4307 lt!1691580)))))

(assert (=> d!1388993 (= (containsKeyBiggerList!130 (toList!4307 lt!1691580) key!3287) e!2812085)))

(declare-fun b!4513864 () Bool)

(assert (=> b!4513864 (= e!2812083 (containsKey!1750 (_2!28812 (h!56460 (toList!4307 lt!1691580))) key!3287))))

(declare-fun b!4513865 () Bool)

(declare-fun e!2812084 () Bool)

(assert (=> b!4513865 (= e!2812085 e!2812084)))

(declare-fun res!1877938 () Bool)

(assert (=> b!4513865 (=> (not res!1877938) (not e!2812084))))

(assert (=> b!4513865 (= res!1877938 ((_ is Cons!50617) (toList!4307 lt!1691580)))))

(declare-fun b!4513866 () Bool)

(assert (=> b!4513866 (= e!2812084 (containsKeyBiggerList!130 (t!357703 (toList!4307 lt!1691580)) key!3287))))

(assert (= (and d!1388993 res!1877937) b!4513864))

(assert (= (and d!1388993 (not res!1877936)) b!4513865))

(assert (= (and b!4513865 res!1877938) b!4513866))

(declare-fun m!5256193 () Bool)

(assert (=> b!4513864 m!5256193))

(declare-fun m!5256195 () Bool)

(assert (=> b!4513866 m!5256195))

(assert (=> b!4513519 d!1388993))

(declare-fun bs!849436 () Bool)

(declare-fun d!1388995 () Bool)

(assert (= bs!849436 (and d!1388995 d!1388899)))

(declare-fun lambda!171247 () Int)

(assert (=> bs!849436 (= lambda!171247 lambda!171216)))

(declare-fun bs!849437 () Bool)

(assert (= bs!849437 (and d!1388995 d!1388965)))

(assert (=> bs!849437 (= lambda!171247 lambda!171241)))

(declare-fun bs!849438 () Bool)

(assert (= bs!849438 (and d!1388995 d!1388879)))

(assert (=> bs!849438 (not (= lambda!171247 lambda!171191))))

(declare-fun bs!849439 () Bool)

(assert (= bs!849439 (and d!1388995 d!1388927)))

(assert (=> bs!849439 (= lambda!171247 lambda!171225)))

(declare-fun bs!849440 () Bool)

(assert (= bs!849440 (and d!1388995 start!446432)))

(assert (=> bs!849440 (= lambda!171247 lambda!171125)))

(declare-fun bs!849441 () Bool)

(assert (= bs!849441 (and d!1388995 d!1388885)))

(assert (=> bs!849441 (= lambda!171247 lambda!171213)))

(declare-fun bs!849442 () Bool)

(assert (= bs!849442 (and d!1388995 d!1388933)))

(assert (=> bs!849442 (= lambda!171247 lambda!171232)))

(declare-fun bs!849443 () Bool)

(assert (= bs!849443 (and d!1388995 d!1388911)))

(assert (=> bs!849443 (= lambda!171247 lambda!171220)))

(declare-fun bs!849444 () Bool)

(assert (= bs!849444 (and d!1388995 d!1388963)))

(assert (=> bs!849444 (= lambda!171247 lambda!171235)))

(assert (=> d!1388995 (containsKeyBiggerList!130 (toList!4307 lt!1691580) key!3287)))

(declare-fun lt!1691992 () Unit!93940)

(declare-fun choose!29389 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> d!1388995 (= lt!1691992 (choose!29389 lt!1691580 key!3287 hashF!1107))))

(assert (=> d!1388995 (forall!10237 (toList!4307 lt!1691580) lambda!171247)))

(assert (=> d!1388995 (= (lemmaInLongMapThenContainsKeyBiggerList!66 lt!1691580 key!3287 hashF!1107) lt!1691992)))

(declare-fun bs!849445 () Bool)

(assert (= bs!849445 d!1388995))

(assert (=> bs!849445 m!5255527))

(declare-fun m!5256197 () Bool)

(assert (=> bs!849445 m!5256197))

(declare-fun m!5256199 () Bool)

(assert (=> bs!849445 m!5256199))

(assert (=> b!4513519 d!1388995))

(declare-fun bs!849446 () Bool)

(declare-fun d!1388997 () Bool)

(assert (= bs!849446 (and d!1388997 d!1388899)))

(declare-fun lambda!171248 () Int)

(assert (=> bs!849446 (= lambda!171248 lambda!171216)))

(declare-fun bs!849447 () Bool)

(assert (= bs!849447 (and d!1388997 d!1388965)))

(assert (=> bs!849447 (= lambda!171248 lambda!171241)))

(declare-fun bs!849448 () Bool)

(assert (= bs!849448 (and d!1388997 d!1388879)))

(assert (=> bs!849448 (not (= lambda!171248 lambda!171191))))

(declare-fun bs!849449 () Bool)

(assert (= bs!849449 (and d!1388997 d!1388927)))

(assert (=> bs!849449 (= lambda!171248 lambda!171225)))

(declare-fun bs!849450 () Bool)

(assert (= bs!849450 (and d!1388997 start!446432)))

(assert (=> bs!849450 (= lambda!171248 lambda!171125)))

(declare-fun bs!849451 () Bool)

(assert (= bs!849451 (and d!1388997 d!1388995)))

(assert (=> bs!849451 (= lambda!171248 lambda!171247)))

(declare-fun bs!849452 () Bool)

(assert (= bs!849452 (and d!1388997 d!1388885)))

(assert (=> bs!849452 (= lambda!171248 lambda!171213)))

(declare-fun bs!849453 () Bool)

(assert (= bs!849453 (and d!1388997 d!1388933)))

(assert (=> bs!849453 (= lambda!171248 lambda!171232)))

(declare-fun bs!849454 () Bool)

(assert (= bs!849454 (and d!1388997 d!1388911)))

(assert (=> bs!849454 (= lambda!171248 lambda!171220)))

(declare-fun bs!849455 () Bool)

(assert (= bs!849455 (and d!1388997 d!1388963)))

(assert (=> bs!849455 (= lambda!171248 lambda!171235)))

(declare-fun lt!1691993 () ListMap!3569)

(assert (=> d!1388997 (invariantList!1007 (toList!4308 lt!1691993))))

(declare-fun e!2812086 () ListMap!3569)

(assert (=> d!1388997 (= lt!1691993 e!2812086)))

(declare-fun c!770042 () Bool)

(assert (=> d!1388997 (= c!770042 ((_ is Cons!50617) (toList!4307 lt!1691580)))))

(assert (=> d!1388997 (forall!10237 (toList!4307 lt!1691580) lambda!171248)))

(assert (=> d!1388997 (= (extractMap!1206 (toList!4307 lt!1691580)) lt!1691993)))

(declare-fun b!4513867 () Bool)

(assert (=> b!4513867 (= e!2812086 (addToMapMapFromBucket!677 (_2!28812 (h!56460 (toList!4307 lt!1691580))) (extractMap!1206 (t!357703 (toList!4307 lt!1691580)))))))

(declare-fun b!4513868 () Bool)

(assert (=> b!4513868 (= e!2812086 (ListMap!3570 Nil!50616))))

(assert (= (and d!1388997 c!770042) b!4513867))

(assert (= (and d!1388997 (not c!770042)) b!4513868))

(declare-fun m!5256201 () Bool)

(assert (=> d!1388997 m!5256201))

(declare-fun m!5256203 () Bool)

(assert (=> d!1388997 m!5256203))

(declare-fun m!5256205 () Bool)

(assert (=> b!4513867 m!5256205))

(assert (=> b!4513867 m!5256205))

(declare-fun m!5256207 () Bool)

(assert (=> b!4513867 m!5256207))

(assert (=> b!4513529 d!1388997))

(declare-fun b!4513869 () Bool)

(assert (=> b!4513869 false))

(declare-fun lt!1692001 () Unit!93940)

(declare-fun lt!1691996 () Unit!93940)

(assert (=> b!4513869 (= lt!1692001 lt!1691996)))

(assert (=> b!4513869 (containsKey!1753 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287)))

(assert (=> b!4513869 (= lt!1691996 (lemmaInGetKeysListThenContainsKey!454 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(declare-fun e!2812092 () Unit!93940)

(declare-fun Unit!94000 () Unit!93940)

(assert (=> b!4513869 (= e!2812092 Unit!94000)))

(declare-fun b!4513870 () Bool)

(declare-fun e!2812089 () Bool)

(assert (=> b!4513870 (= e!2812089 (not (contains!13329 (keys!17574 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287)))))

(declare-fun b!4513871 () Bool)

(declare-fun e!2812090 () Unit!93940)

(declare-fun lt!1691997 () Unit!93940)

(assert (=> b!4513871 (= e!2812090 lt!1691997)))

(declare-fun lt!1691995 () Unit!93940)

(assert (=> b!4513871 (= lt!1691995 (lemmaContainsKeyImpliesGetValueByKeyDefined!976 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(assert (=> b!4513871 (isDefined!8379 (getValueByKey!1073 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(declare-fun lt!1691994 () Unit!93940)

(assert (=> b!4513871 (= lt!1691994 lt!1691995)))

(assert (=> b!4513871 (= lt!1691997 (lemmaInListThenGetKeysListContains!451 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(declare-fun call!314360 () Bool)

(assert (=> b!4513871 call!314360))

(declare-fun b!4513872 () Bool)

(declare-fun e!2812088 () List!50743)

(assert (=> b!4513872 (= e!2812088 (getKeysList!455 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477))))))))

(declare-fun b!4513873 () Bool)

(declare-fun e!2812091 () Bool)

(assert (=> b!4513873 (= e!2812091 (contains!13329 (keys!17574 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(declare-fun b!4513874 () Bool)

(assert (=> b!4513874 (= e!2812090 e!2812092)))

(declare-fun c!770045 () Bool)

(assert (=> b!4513874 (= c!770045 call!314360)))

(declare-fun b!4513875 () Bool)

(assert (=> b!4513875 (= e!2812088 (keys!17574 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))))))

(declare-fun b!4513876 () Bool)

(declare-fun Unit!94001 () Unit!93940)

(assert (=> b!4513876 (= e!2812092 Unit!94001)))

(declare-fun b!4513877 () Bool)

(declare-fun e!2812087 () Bool)

(assert (=> b!4513877 (= e!2812087 e!2812091)))

(declare-fun res!1877939 () Bool)

(assert (=> b!4513877 (=> (not res!1877939) (not e!2812091))))

(assert (=> b!4513877 (= res!1877939 (isDefined!8379 (getValueByKey!1073 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287)))))

(declare-fun d!1388999 () Bool)

(assert (=> d!1388999 e!2812087))

(declare-fun res!1877940 () Bool)

(assert (=> d!1388999 (=> res!1877940 e!2812087)))

(assert (=> d!1388999 (= res!1877940 e!2812089)))

(declare-fun res!1877941 () Bool)

(assert (=> d!1388999 (=> (not res!1877941) (not e!2812089))))

(declare-fun lt!1691998 () Bool)

(assert (=> d!1388999 (= res!1877941 (not lt!1691998))))

(declare-fun lt!1691999 () Bool)

(assert (=> d!1388999 (= lt!1691998 lt!1691999)))

(declare-fun lt!1692000 () Unit!93940)

(assert (=> d!1388999 (= lt!1692000 e!2812090)))

(declare-fun c!770043 () Bool)

(assert (=> d!1388999 (= c!770043 lt!1691999)))

(assert (=> d!1388999 (= lt!1691999 (containsKey!1753 (toList!4308 (extractMap!1206 (t!357703 (toList!4307 lm!1477)))) key!3287))))

(assert (=> d!1388999 (= (contains!13326 (extractMap!1206 (t!357703 (toList!4307 lm!1477))) key!3287) lt!1691998)))

(declare-fun bm!314355 () Bool)

(assert (=> bm!314355 (= call!314360 (contains!13329 e!2812088 key!3287))))

(declare-fun c!770044 () Bool)

(assert (=> bm!314355 (= c!770044 c!770043)))

(assert (= (and d!1388999 c!770043) b!4513871))

(assert (= (and d!1388999 (not c!770043)) b!4513874))

(assert (= (and b!4513874 c!770045) b!4513869))

(assert (= (and b!4513874 (not c!770045)) b!4513876))

(assert (= (or b!4513871 b!4513874) bm!314355))

(assert (= (and bm!314355 c!770044) b!4513872))

(assert (= (and bm!314355 (not c!770044)) b!4513875))

(assert (= (and d!1388999 res!1877941) b!4513870))

(assert (= (and d!1388999 (not res!1877940)) b!4513877))

(assert (= (and b!4513877 res!1877939) b!4513873))

(declare-fun m!5256209 () Bool)

(assert (=> d!1388999 m!5256209))

(declare-fun m!5256211 () Bool)

(assert (=> b!4513877 m!5256211))

(assert (=> b!4513877 m!5256211))

(declare-fun m!5256213 () Bool)

(assert (=> b!4513877 m!5256213))

(assert (=> b!4513870 m!5255485))

(declare-fun m!5256215 () Bool)

(assert (=> b!4513870 m!5256215))

(assert (=> b!4513870 m!5256215))

(declare-fun m!5256217 () Bool)

(assert (=> b!4513870 m!5256217))

(assert (=> b!4513875 m!5255485))

(assert (=> b!4513875 m!5256215))

(assert (=> b!4513869 m!5256209))

(declare-fun m!5256219 () Bool)

(assert (=> b!4513869 m!5256219))

(assert (=> b!4513873 m!5255485))

(assert (=> b!4513873 m!5256215))

(assert (=> b!4513873 m!5256215))

(assert (=> b!4513873 m!5256217))

(declare-fun m!5256221 () Bool)

(assert (=> bm!314355 m!5256221))

(declare-fun m!5256223 () Bool)

(assert (=> b!4513872 m!5256223))

(declare-fun m!5256225 () Bool)

(assert (=> b!4513871 m!5256225))

(assert (=> b!4513871 m!5256211))

(assert (=> b!4513871 m!5256211))

(assert (=> b!4513871 m!5256213))

(declare-fun m!5256227 () Bool)

(assert (=> b!4513871 m!5256227))

(assert (=> b!4513529 d!1388999))

(declare-fun b!4513878 () Bool)

(assert (=> b!4513878 false))

(declare-fun lt!1692009 () Unit!93940)

(declare-fun lt!1692004 () Unit!93940)

(assert (=> b!4513878 (= lt!1692009 lt!1692004)))

(assert (=> b!4513878 (containsKey!1753 (toList!4308 lt!1691582) key!3287)))

(assert (=> b!4513878 (= lt!1692004 (lemmaInGetKeysListThenContainsKey!454 (toList!4308 lt!1691582) key!3287))))

(declare-fun e!2812098 () Unit!93940)

(declare-fun Unit!94002 () Unit!93940)

(assert (=> b!4513878 (= e!2812098 Unit!94002)))

(declare-fun b!4513879 () Bool)

(declare-fun e!2812095 () Bool)

(assert (=> b!4513879 (= e!2812095 (not (contains!13329 (keys!17574 lt!1691582) key!3287)))))

(declare-fun b!4513880 () Bool)

(declare-fun e!2812096 () Unit!93940)

(declare-fun lt!1692005 () Unit!93940)

(assert (=> b!4513880 (= e!2812096 lt!1692005)))

(declare-fun lt!1692003 () Unit!93940)

(assert (=> b!4513880 (= lt!1692003 (lemmaContainsKeyImpliesGetValueByKeyDefined!976 (toList!4308 lt!1691582) key!3287))))

(assert (=> b!4513880 (isDefined!8379 (getValueByKey!1073 (toList!4308 lt!1691582) key!3287))))

(declare-fun lt!1692002 () Unit!93940)

(assert (=> b!4513880 (= lt!1692002 lt!1692003)))

(assert (=> b!4513880 (= lt!1692005 (lemmaInListThenGetKeysListContains!451 (toList!4308 lt!1691582) key!3287))))

(declare-fun call!314361 () Bool)

(assert (=> b!4513880 call!314361))

(declare-fun b!4513881 () Bool)

(declare-fun e!2812094 () List!50743)

(assert (=> b!4513881 (= e!2812094 (getKeysList!455 (toList!4308 lt!1691582)))))

(declare-fun b!4513882 () Bool)

(declare-fun e!2812097 () Bool)

(assert (=> b!4513882 (= e!2812097 (contains!13329 (keys!17574 lt!1691582) key!3287))))

(declare-fun b!4513883 () Bool)

(assert (=> b!4513883 (= e!2812096 e!2812098)))

(declare-fun c!770048 () Bool)

(assert (=> b!4513883 (= c!770048 call!314361)))

(declare-fun b!4513884 () Bool)

(assert (=> b!4513884 (= e!2812094 (keys!17574 lt!1691582))))

(declare-fun b!4513885 () Bool)

(declare-fun Unit!94003 () Unit!93940)

(assert (=> b!4513885 (= e!2812098 Unit!94003)))

(declare-fun b!4513886 () Bool)

(declare-fun e!2812093 () Bool)

(assert (=> b!4513886 (= e!2812093 e!2812097)))

(declare-fun res!1877942 () Bool)

(assert (=> b!4513886 (=> (not res!1877942) (not e!2812097))))

(assert (=> b!4513886 (= res!1877942 (isDefined!8379 (getValueByKey!1073 (toList!4308 lt!1691582) key!3287)))))

(declare-fun d!1389001 () Bool)

(assert (=> d!1389001 e!2812093))

(declare-fun res!1877943 () Bool)

(assert (=> d!1389001 (=> res!1877943 e!2812093)))

(assert (=> d!1389001 (= res!1877943 e!2812095)))

(declare-fun res!1877944 () Bool)

(assert (=> d!1389001 (=> (not res!1877944) (not e!2812095))))

(declare-fun lt!1692006 () Bool)

(assert (=> d!1389001 (= res!1877944 (not lt!1692006))))

(declare-fun lt!1692007 () Bool)

(assert (=> d!1389001 (= lt!1692006 lt!1692007)))

(declare-fun lt!1692008 () Unit!93940)

(assert (=> d!1389001 (= lt!1692008 e!2812096)))

(declare-fun c!770046 () Bool)

(assert (=> d!1389001 (= c!770046 lt!1692007)))

(assert (=> d!1389001 (= lt!1692007 (containsKey!1753 (toList!4308 lt!1691582) key!3287))))

(assert (=> d!1389001 (= (contains!13326 lt!1691582 key!3287) lt!1692006)))

(declare-fun bm!314356 () Bool)

(assert (=> bm!314356 (= call!314361 (contains!13329 e!2812094 key!3287))))

(declare-fun c!770047 () Bool)

(assert (=> bm!314356 (= c!770047 c!770046)))

(assert (= (and d!1389001 c!770046) b!4513880))

(assert (= (and d!1389001 (not c!770046)) b!4513883))

(assert (= (and b!4513883 c!770048) b!4513878))

(assert (= (and b!4513883 (not c!770048)) b!4513885))

(assert (= (or b!4513880 b!4513883) bm!314356))

(assert (= (and bm!314356 c!770047) b!4513881))

(assert (= (and bm!314356 (not c!770047)) b!4513884))

(assert (= (and d!1389001 res!1877944) b!4513879))

(assert (= (and d!1389001 (not res!1877943)) b!4513886))

(assert (= (and b!4513886 res!1877942) b!4513882))

(declare-fun m!5256229 () Bool)

(assert (=> d!1389001 m!5256229))

(declare-fun m!5256231 () Bool)

(assert (=> b!4513886 m!5256231))

(assert (=> b!4513886 m!5256231))

(declare-fun m!5256233 () Bool)

(assert (=> b!4513886 m!5256233))

(assert (=> b!4513879 m!5255907))

(assert (=> b!4513879 m!5255907))

(declare-fun m!5256235 () Bool)

(assert (=> b!4513879 m!5256235))

(assert (=> b!4513884 m!5255907))

(assert (=> b!4513878 m!5256229))

(declare-fun m!5256237 () Bool)

(assert (=> b!4513878 m!5256237))

(assert (=> b!4513882 m!5255907))

(assert (=> b!4513882 m!5255907))

(assert (=> b!4513882 m!5256235))

(declare-fun m!5256239 () Bool)

(assert (=> bm!314356 m!5256239))

(declare-fun m!5256241 () Bool)

(assert (=> b!4513881 m!5256241))

(declare-fun m!5256243 () Bool)

(assert (=> b!4513880 m!5256243))

(assert (=> b!4513880 m!5256231))

(assert (=> b!4513880 m!5256231))

(assert (=> b!4513880 m!5256233))

(declare-fun m!5256245 () Bool)

(assert (=> b!4513880 m!5256245))

(assert (=> b!4513529 d!1389001))

(declare-fun bs!849456 () Bool)

(declare-fun d!1389003 () Bool)

(assert (= bs!849456 (and d!1389003 d!1388899)))

(declare-fun lambda!171249 () Int)

(assert (=> bs!849456 (= lambda!171249 lambda!171216)))

(declare-fun bs!849457 () Bool)

(assert (= bs!849457 (and d!1389003 d!1388965)))

(assert (=> bs!849457 (= lambda!171249 lambda!171241)))

(declare-fun bs!849458 () Bool)

(assert (= bs!849458 (and d!1389003 d!1388879)))

(assert (=> bs!849458 (not (= lambda!171249 lambda!171191))))

(declare-fun bs!849459 () Bool)

(assert (= bs!849459 (and d!1389003 d!1388997)))

(assert (=> bs!849459 (= lambda!171249 lambda!171248)))

(declare-fun bs!849460 () Bool)

(assert (= bs!849460 (and d!1389003 d!1388927)))

(assert (=> bs!849460 (= lambda!171249 lambda!171225)))

(declare-fun bs!849461 () Bool)

(assert (= bs!849461 (and d!1389003 start!446432)))

(assert (=> bs!849461 (= lambda!171249 lambda!171125)))

(declare-fun bs!849462 () Bool)

(assert (= bs!849462 (and d!1389003 d!1388995)))

(assert (=> bs!849462 (= lambda!171249 lambda!171247)))

(declare-fun bs!849463 () Bool)

(assert (= bs!849463 (and d!1389003 d!1388885)))

(assert (=> bs!849463 (= lambda!171249 lambda!171213)))

(declare-fun bs!849464 () Bool)

(assert (= bs!849464 (and d!1389003 d!1388933)))

(assert (=> bs!849464 (= lambda!171249 lambda!171232)))

(declare-fun bs!849465 () Bool)

(assert (= bs!849465 (and d!1389003 d!1388911)))

(assert (=> bs!849465 (= lambda!171249 lambda!171220)))

(declare-fun bs!849466 () Bool)

(assert (= bs!849466 (and d!1389003 d!1388963)))

(assert (=> bs!849466 (= lambda!171249 lambda!171235)))

(declare-fun lt!1692010 () ListMap!3569)

(assert (=> d!1389003 (invariantList!1007 (toList!4308 lt!1692010))))

(declare-fun e!2812099 () ListMap!3569)

(assert (=> d!1389003 (= lt!1692010 e!2812099)))

(declare-fun c!770049 () Bool)

(assert (=> d!1389003 (= c!770049 ((_ is Cons!50617) (t!357703 (toList!4307 lm!1477))))))

(assert (=> d!1389003 (forall!10237 (t!357703 (toList!4307 lm!1477)) lambda!171249)))

(assert (=> d!1389003 (= (extractMap!1206 (t!357703 (toList!4307 lm!1477))) lt!1692010)))

(declare-fun b!4513887 () Bool)

(assert (=> b!4513887 (= e!2812099 (addToMapMapFromBucket!677 (_2!28812 (h!56460 (t!357703 (toList!4307 lm!1477)))) (extractMap!1206 (t!357703 (t!357703 (toList!4307 lm!1477))))))))

(declare-fun b!4513888 () Bool)

(assert (=> b!4513888 (= e!2812099 (ListMap!3570 Nil!50616))))

(assert (= (and d!1389003 c!770049) b!4513887))

(assert (= (and d!1389003 (not c!770049)) b!4513888))

(declare-fun m!5256247 () Bool)

(assert (=> d!1389003 m!5256247))

(declare-fun m!5256249 () Bool)

(assert (=> d!1389003 m!5256249))

(declare-fun m!5256251 () Bool)

(assert (=> b!4513887 m!5256251))

(assert (=> b!4513887 m!5256251))

(declare-fun m!5256253 () Bool)

(assert (=> b!4513887 m!5256253))

(assert (=> b!4513529 d!1389003))

(declare-fun bs!849467 () Bool)

(declare-fun d!1389005 () Bool)

(assert (= bs!849467 (and d!1389005 d!1388899)))

(declare-fun lambda!171252 () Int)

(assert (=> bs!849467 (= lambda!171252 lambda!171216)))

(declare-fun bs!849468 () Bool)

(assert (= bs!849468 (and d!1389005 d!1388965)))

(assert (=> bs!849468 (= lambda!171252 lambda!171241)))

(declare-fun bs!849469 () Bool)

(assert (= bs!849469 (and d!1389005 d!1388879)))

(assert (=> bs!849469 (not (= lambda!171252 lambda!171191))))

(declare-fun bs!849470 () Bool)

(assert (= bs!849470 (and d!1389005 d!1388997)))

(assert (=> bs!849470 (= lambda!171252 lambda!171248)))

(declare-fun bs!849471 () Bool)

(assert (= bs!849471 (and d!1389005 d!1388927)))

(assert (=> bs!849471 (= lambda!171252 lambda!171225)))

(declare-fun bs!849472 () Bool)

(assert (= bs!849472 (and d!1389005 start!446432)))

(assert (=> bs!849472 (= lambda!171252 lambda!171125)))

(declare-fun bs!849473 () Bool)

(assert (= bs!849473 (and d!1389005 d!1388995)))

(assert (=> bs!849473 (= lambda!171252 lambda!171247)))

(declare-fun bs!849474 () Bool)

(assert (= bs!849474 (and d!1389005 d!1388885)))

(assert (=> bs!849474 (= lambda!171252 lambda!171213)))

(declare-fun bs!849475 () Bool)

(assert (= bs!849475 (and d!1389005 d!1388911)))

(assert (=> bs!849475 (= lambda!171252 lambda!171220)))

(declare-fun bs!849476 () Bool)

(assert (= bs!849476 (and d!1389005 d!1388963)))

(assert (=> bs!849476 (= lambda!171252 lambda!171235)))

(declare-fun bs!849477 () Bool)

(assert (= bs!849477 (and d!1389005 d!1388933)))

(assert (=> bs!849477 (= lambda!171252 lambda!171232)))

(declare-fun bs!849478 () Bool)

(assert (= bs!849478 (and d!1389005 d!1389003)))

(assert (=> bs!849478 (= lambda!171252 lambda!171249)))

(assert (=> d!1389005 (contains!13326 (extractMap!1206 (toList!4307 lt!1691580)) key!3287)))

(declare-fun lt!1692013 () Unit!93940)

(declare-fun choose!29391 (ListLongMap!2939 K!12015 Hashable!5545) Unit!93940)

(assert (=> d!1389005 (= lt!1692013 (choose!29391 lt!1691580 key!3287 hashF!1107))))

(assert (=> d!1389005 (forall!10237 (toList!4307 lt!1691580) lambda!171252)))

(assert (=> d!1389005 (= (lemmaListContainsThenExtractedMapContains!120 lt!1691580 key!3287 hashF!1107) lt!1692013)))

(declare-fun bs!849479 () Bool)

(assert (= bs!849479 d!1389005))

(assert (=> bs!849479 m!5255489))

(assert (=> bs!849479 m!5255489))

(declare-fun m!5256255 () Bool)

(assert (=> bs!849479 m!5256255))

(declare-fun m!5256257 () Bool)

(assert (=> bs!849479 m!5256257))

(declare-fun m!5256259 () Bool)

(assert (=> bs!849479 m!5256259))

(assert (=> b!4513529 d!1389005))

(declare-fun bs!849480 () Bool)

(declare-fun d!1389007 () Bool)

(assert (= bs!849480 (and d!1389007 b!4513653)))

(declare-fun lambda!171255 () Int)

(assert (=> bs!849480 (not (= lambda!171255 lambda!171169))))

(declare-fun bs!849481 () Bool)

(assert (= bs!849481 (and d!1389007 b!4513741)))

(assert (=> bs!849481 (not (= lambda!171255 lambda!171223))))

(assert (=> bs!849480 (not (= lambda!171255 lambda!171168))))

(declare-fun bs!849482 () Bool)

(assert (= bs!849482 (and d!1389007 d!1388817)))

(assert (=> bs!849482 (not (= lambda!171255 lambda!171170))))

(declare-fun bs!849483 () Bool)

(assert (= bs!849483 (and d!1389007 d!1388921)))

(assert (=> bs!849483 (not (= lambda!171255 lambda!171224))))

(assert (=> bs!849481 (not (= lambda!171255 lambda!171222))))

(declare-fun bs!849484 () Bool)

(assert (= bs!849484 (and d!1389007 b!4513740)))

(assert (=> bs!849484 (not (= lambda!171255 lambda!171221))))

(declare-fun bs!849485 () Bool)

(assert (= bs!849485 (and d!1389007 b!4513652)))

(assert (=> bs!849485 (not (= lambda!171255 lambda!171167))))

(assert (=> d!1389007 true))

(assert (=> d!1389007 true))

(assert (=> d!1389007 (= (allKeysSameHash!1004 newBucket!178 hash!344 hashF!1107) (forall!10238 newBucket!178 lambda!171255))))

(declare-fun bs!849486 () Bool)

(assert (= bs!849486 d!1389007))

(declare-fun m!5256261 () Bool)

(assert (=> bs!849486 m!5256261))

(assert (=> b!4513531 d!1389007))

(declare-fun d!1389009 () Bool)

(declare-fun lt!1692014 () Bool)

(assert (=> d!1389009 (= lt!1692014 (select (content!8328 (t!357703 (toList!4307 lm!1477))) lt!1691587))))

(declare-fun e!2812101 () Bool)

(assert (=> d!1389009 (= lt!1692014 e!2812101)))

(declare-fun res!1877946 () Bool)

(assert (=> d!1389009 (=> (not res!1877946) (not e!2812101))))

(assert (=> d!1389009 (= res!1877946 ((_ is Cons!50617) (t!357703 (toList!4307 lm!1477))))))

(assert (=> d!1389009 (= (contains!13325 (t!357703 (toList!4307 lm!1477)) lt!1691587) lt!1692014)))

(declare-fun b!4513893 () Bool)

(declare-fun e!2812100 () Bool)

(assert (=> b!4513893 (= e!2812101 e!2812100)))

(declare-fun res!1877945 () Bool)

(assert (=> b!4513893 (=> res!1877945 e!2812100)))

(assert (=> b!4513893 (= res!1877945 (= (h!56460 (t!357703 (toList!4307 lm!1477))) lt!1691587))))

(declare-fun b!4513894 () Bool)

(assert (=> b!4513894 (= e!2812100 (contains!13325 (t!357703 (t!357703 (toList!4307 lm!1477))) lt!1691587))))

(assert (= (and d!1389009 res!1877946) b!4513893))

(assert (= (and b!4513893 (not res!1877945)) b!4513894))

(declare-fun m!5256263 () Bool)

(assert (=> d!1389009 m!5256263))

(declare-fun m!5256265 () Bool)

(assert (=> d!1389009 m!5256265))

(declare-fun m!5256267 () Bool)

(assert (=> b!4513894 m!5256267))

(assert (=> b!4513520 d!1389009))

(declare-fun b!4513899 () Bool)

(declare-fun e!2812104 () Bool)

(declare-fun tp!1337921 () Bool)

(declare-fun tp!1337922 () Bool)

(assert (=> b!4513899 (= e!2812104 (and tp!1337921 tp!1337922))))

(assert (=> b!4513523 (= tp!1337906 e!2812104)))

(assert (= (and b!4513523 ((_ is Cons!50617) (toList!4307 lm!1477))) b!4513899))

(declare-fun e!2812107 () Bool)

(declare-fun b!4513904 () Bool)

(declare-fun tp!1337925 () Bool)

(assert (=> b!4513904 (= e!2812107 (and tp_is_empty!27877 tp_is_empty!27879 tp!1337925))))

(assert (=> b!4513526 (= tp!1337907 e!2812107)))

(assert (= (and b!4513526 ((_ is Cons!50616) (t!357702 newBucket!178))) b!4513904))

(declare-fun b_lambda!154073 () Bool)

(assert (= b_lambda!154065 (or start!446432 b_lambda!154073)))

(declare-fun bs!849487 () Bool)

(declare-fun d!1389011 () Bool)

(assert (= bs!849487 (and d!1389011 start!446432)))

(assert (=> bs!849487 (= (dynLambda!21147 lambda!171125 (h!56460 (toList!4307 lm!1477))) (noDuplicateKeys!1150 (_2!28812 (h!56460 (toList!4307 lm!1477)))))))

(declare-fun m!5256269 () Bool)

(assert (=> bs!849487 m!5256269))

(assert (=> b!4513666 d!1389011))

(declare-fun b_lambda!154075 () Bool)

(assert (= b_lambda!154067 (or start!446432 b_lambda!154075)))

(declare-fun bs!849488 () Bool)

(declare-fun d!1389013 () Bool)

(assert (= bs!849488 (and d!1389013 start!446432)))

(assert (=> bs!849488 (= (dynLambda!21147 lambda!171125 lt!1691587) (noDuplicateKeys!1150 (_2!28812 lt!1691587)))))

(declare-fun m!5256271 () Bool)

(assert (=> bs!849488 m!5256271))

(assert (=> d!1388969 d!1389013))

(check-sat (not b!4513750) (not b!4513899) (not b!4513879) (not d!1388931) (not d!1388963) (not d!1388997) (not d!1388981) (not d!1388995) (not b!4513749) (not b!4513803) tp_is_empty!27879 (not b!4513873) (not d!1388871) (not b_lambda!154075) (not d!1388933) (not d!1388915) (not b!4513861) (not bm!314335) (not b!4513741) (not b!4513802) (not d!1388815) (not bm!314349) (not d!1388979) (not b!4513748) (not b!4513722) (not d!1388945) (not b!4513795) (not b!4513743) (not b!4513667) (not b!4513794) (not b!4513878) (not b_lambda!154073) (not b!4513798) (not bm!314348) (not b!4513869) (not b!4513867) (not d!1388985) (not b!4513851) (not bs!849488) (not d!1389005) (not b!4513884) (not b!4513654) (not b!4513894) (not d!1388943) (not bm!314334) (not d!1388873) (not d!1388999) (not bm!314356) (not bm!314350) (not b!4513880) (not b!4513797) (not d!1389009) (not d!1389007) (not d!1388983) (not d!1388885) (not b!4513742) (not b!4513651) (not bm!314355) (not b!4513723) (not b!4513854) (not d!1388929) (not d!1388879) (not b!4513541) (not b!4513866) (not b!4513820) (not b!4513689) (not b!4513675) (not b!4513875) (not d!1388817) (not b!4513800) (not d!1388911) (not b!4513863) (not b!4513904) (not b!4513887) tp_is_empty!27877 (not b!4513872) (not d!1389003) (not d!1388909) (not d!1388927) (not b!4513736) (not b!4513796) (not b!4513882) (not b!4513542) (not b!4513842) (not b!4513849) (not b!4513864) (not d!1388965) (not d!1388969) (not d!1388907) (not b!4513827) (not b!4513655) (not b!4513871) (not b!4513886) (not bm!314333) (not d!1388811) (not b!4513877) (not d!1388973) (not b!4513838) (not d!1388989) (not b!4513751) (not b!4513881) (not d!1388883) (not d!1388921) (not b!4513688) (not d!1389001) (not b!4513739) (not b!4513720) (not d!1388881) (not bs!849487) (not b!4513726) (not b!4513870) (not bm!314354) (not d!1388919) (not d!1388899) (not d!1388977) (not b!4513669) (not d!1388987) (not d!1388867) (not b!4513852) (not b!4513653) (not d!1388897) (not b!4513746) (not b!4513668))
(check-sat)
