; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!452892 () Bool)

(assert start!452892)

(declare-fun b!4558456 () Bool)

(declare-fun res!1901899 () Bool)

(declare-fun e!2841456 () Bool)

(assert (=> b!4558456 (=> (not res!1901899) (not e!2841456))))

(declare-datatypes ((K!12225 0))(
  ( (K!12226 (val!18051 Int)) )
))
(declare-datatypes ((V!12471 0))(
  ( (V!12472 (val!18052 Int)) )
))
(declare-datatypes ((tuple2!51370 0))(
  ( (tuple2!51371 (_1!28979 K!12225) (_2!28979 V!12471)) )
))
(declare-datatypes ((List!50967 0))(
  ( (Nil!50843) (Cons!50843 (h!56746 tuple2!51370) (t!357941 List!50967)) )
))
(declare-datatypes ((tuple2!51372 0))(
  ( (tuple2!51373 (_1!28980 (_ BitVec 64)) (_2!28980 List!50967)) )
))
(declare-datatypes ((List!50968 0))(
  ( (Nil!50844) (Cons!50844 (h!56747 tuple2!51372) (t!357942 List!50968)) )
))
(declare-datatypes ((ListLongMap!3107 0))(
  ( (ListLongMap!3108 (toList!4475 List!50968)) )
))
(declare-fun lm!1477 () ListLongMap!3107)

(declare-datatypes ((Hashable!5629 0))(
  ( (HashableExt!5628 (__x!31332 Int)) )
))
(declare-fun hashF!1107 () Hashable!5629)

(declare-fun allKeysSameHashInMap!1341 (ListLongMap!3107 Hashable!5629) Bool)

(assert (=> b!4558456 (= res!1901899 (allKeysSameHashInMap!1341 lm!1477 hashF!1107))))

(declare-fun b!4558457 () Bool)

(declare-fun e!2841466 () Bool)

(declare-datatypes ((ListMap!3737 0))(
  ( (ListMap!3738 (toList!4476 List!50967)) )
))
(declare-fun lt!1729747 () ListMap!3737)

(declare-fun lt!1729746 () ListMap!3737)

(declare-fun eq!685 (ListMap!3737 ListMap!3737) Bool)

(assert (=> b!4558457 (= e!2841466 (eq!685 lt!1729747 lt!1729746))))

(declare-fun b!4558458 () Bool)

(declare-fun e!2841459 () Bool)

(declare-fun e!2841467 () Bool)

(assert (=> b!4558458 (= e!2841459 e!2841467)))

(declare-fun res!1901906 () Bool)

(assert (=> b!4558458 (=> (not res!1901906) (not e!2841467))))

(declare-fun lt!1729758 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4558458 (= res!1901906 (= lt!1729758 hash!344))))

(declare-fun key!3287 () K!12225)

(declare-fun hash!3014 (Hashable!5629 K!12225) (_ BitVec 64))

(assert (=> b!4558458 (= lt!1729758 (hash!3014 hashF!1107 key!3287))))

(declare-fun b!4558459 () Bool)

(declare-fun e!2841458 () Bool)

(declare-fun e!2841468 () Bool)

(assert (=> b!4558459 (= e!2841458 e!2841468)))

(declare-fun res!1901903 () Bool)

(assert (=> b!4558459 (=> res!1901903 e!2841468)))

(declare-fun lt!1729759 () ListLongMap!3107)

(declare-fun lt!1729757 () ListLongMap!3107)

(declare-fun lt!1729749 () tuple2!51372)

(declare-fun +!1654 (ListLongMap!3107 tuple2!51372) ListLongMap!3107)

(assert (=> b!4558459 (= res!1901903 (not (= lt!1729757 (+!1654 lt!1729759 lt!1729749))))))

(declare-fun tail!7849 (ListLongMap!3107) ListLongMap!3107)

(assert (=> b!4558459 (= lt!1729759 (tail!7849 lm!1477))))

(declare-fun b!4558460 () Bool)

(declare-fun e!2841463 () Bool)

(assert (=> b!4558460 (= e!2841467 (not e!2841463))))

(declare-fun res!1901913 () Bool)

(assert (=> b!4558460 (=> res!1901913 e!2841463)))

(declare-fun newBucket!178 () List!50967)

(declare-fun lt!1729756 () List!50967)

(declare-fun removePairForKey!861 (List!50967 K!12225) List!50967)

(assert (=> b!4558460 (= res!1901913 (not (= newBucket!178 (removePairForKey!861 lt!1729756 key!3287))))))

(declare-fun lt!1729764 () tuple2!51372)

(declare-datatypes ((Unit!102262 0))(
  ( (Unit!102263) )
))
(declare-fun lt!1729769 () Unit!102262)

(declare-fun lambda!179417 () Int)

(declare-fun forallContained!2677 (List!50968 Int tuple2!51372) Unit!102262)

(assert (=> b!4558460 (= lt!1729769 (forallContained!2677 (toList!4475 lm!1477) lambda!179417 lt!1729764))))

(declare-fun contains!13688 (List!50968 tuple2!51372) Bool)

(assert (=> b!4558460 (contains!13688 (toList!4475 lm!1477) lt!1729764)))

(assert (=> b!4558460 (= lt!1729764 (tuple2!51373 hash!344 lt!1729756))))

(declare-fun lt!1729762 () Unit!102262)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!746 (List!50968 (_ BitVec 64) List!50967) Unit!102262)

(assert (=> b!4558460 (= lt!1729762 (lemmaGetValueByKeyImpliesContainsTuple!746 (toList!4475 lm!1477) hash!344 lt!1729756))))

(declare-fun apply!11971 (ListLongMap!3107 (_ BitVec 64)) List!50967)

(assert (=> b!4558460 (= lt!1729756 (apply!11971 lm!1477 hash!344))))

(declare-fun contains!13689 (ListLongMap!3107 (_ BitVec 64)) Bool)

(assert (=> b!4558460 (contains!13689 lm!1477 lt!1729758)))

(declare-fun lt!1729750 () Unit!102262)

(declare-fun lemmaInGenMapThenLongMapContainsHash!308 (ListLongMap!3107 K!12225 Hashable!5629) Unit!102262)

(assert (=> b!4558460 (= lt!1729750 (lemmaInGenMapThenLongMapContainsHash!308 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4558461 () Bool)

(declare-fun res!1901902 () Bool)

(declare-fun e!2841464 () Bool)

(assert (=> b!4558461 (=> res!1901902 e!2841464)))

(declare-fun lt!1729761 () ListMap!3737)

(declare-fun extractMap!1290 (List!50968) ListMap!3737)

(declare-fun addToMapMapFromBucket!752 (List!50967 ListMap!3737) ListMap!3737)

(assert (=> b!4558461 (= res!1901902 (not (eq!685 (extractMap!1290 (toList!4475 lt!1729757)) (addToMapMapFromBucket!752 newBucket!178 lt!1729761))))))

(declare-fun b!4558462 () Bool)

(declare-fun e!2841455 () Bool)

(assert (=> b!4558462 (= e!2841455 e!2841464)))

(declare-fun res!1901911 () Bool)

(assert (=> b!4558462 (=> res!1901911 e!2841464)))

(assert (=> b!4558462 (= res!1901911 (not (= (toList!4475 lt!1729757) (Cons!50844 lt!1729749 (t!357942 (toList!4475 lm!1477))))))))

(declare-fun lt!1729765 () tuple2!51372)

(declare-fun lt!1729767 () List!50968)

(declare-fun -!454 (ListMap!3737 K!12225) ListMap!3737)

(assert (=> b!4558462 (eq!685 (extractMap!1290 (Cons!50844 lt!1729749 lt!1729767)) (-!454 (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767)) key!3287))))

(declare-fun tail!7850 (List!50968) List!50968)

(assert (=> b!4558462 (= lt!1729767 (tail!7850 (toList!4475 lm!1477)))))

(declare-fun lt!1729760 () Unit!102262)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!32 (ListLongMap!3107 (_ BitVec 64) List!50967 List!50967 K!12225 Hashable!5629) Unit!102262)

(assert (=> b!4558462 (= lt!1729760 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!32 lm!1477 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4558463 () Bool)

(declare-fun e!2841460 () Bool)

(assert (=> b!4558463 (= e!2841463 e!2841460)))

(declare-fun res!1901910 () Bool)

(assert (=> b!4558463 (=> res!1901910 e!2841460)))

(declare-fun lt!1729755 () Bool)

(assert (=> b!4558463 (= res!1901910 lt!1729755)))

(declare-fun lt!1729752 () Unit!102262)

(declare-fun e!2841453 () Unit!102262)

(assert (=> b!4558463 (= lt!1729752 e!2841453)))

(declare-fun c!779371 () Bool)

(assert (=> b!4558463 (= c!779371 lt!1729755)))

(declare-fun containsKey!1953 (List!50967 K!12225) Bool)

(assert (=> b!4558463 (= lt!1729755 (not (containsKey!1953 (_2!28980 (h!56747 (toList!4475 lm!1477))) key!3287)))))

(declare-fun b!4558464 () Bool)

(declare-fun e!2841465 () Bool)

(assert (=> b!4558464 (= e!2841465 e!2841455)))

(declare-fun res!1901898 () Bool)

(assert (=> b!4558464 (=> res!1901898 e!2841455)))

(declare-fun lt!1729763 () Bool)

(assert (=> b!4558464 (= res!1901898 lt!1729763)))

(declare-fun lt!1729751 () Unit!102262)

(declare-fun e!2841461 () Unit!102262)

(assert (=> b!4558464 (= lt!1729751 e!2841461)))

(declare-fun c!779372 () Bool)

(assert (=> b!4558464 (= c!779372 lt!1729763)))

(declare-fun lt!1729753 () ListMap!3737)

(declare-fun contains!13690 (ListMap!3737 K!12225) Bool)

(assert (=> b!4558464 (= lt!1729763 (contains!13690 lt!1729753 key!3287))))

(declare-fun b!4558465 () Bool)

(declare-fun e!2841457 () Bool)

(assert (=> b!4558465 (= e!2841460 e!2841457)))

(declare-fun res!1901907 () Bool)

(assert (=> b!4558465 (=> res!1901907 e!2841457)))

(declare-fun lt!1729770 () List!50968)

(declare-fun containsKeyBiggerList!212 (List!50968 K!12225) Bool)

(assert (=> b!4558465 (= res!1901907 (not (containsKeyBiggerList!212 lt!1729770 key!3287)))))

(assert (=> b!4558465 (= lt!1729770 (Cons!50844 (h!56747 (toList!4475 lm!1477)) Nil!50844))))

(declare-fun b!4558466 () Bool)

(declare-fun res!1901904 () Bool)

(assert (=> b!4558466 (=> res!1901904 e!2841463)))

(declare-fun noDuplicateKeys!1234 (List!50967) Bool)

(assert (=> b!4558466 (= res!1901904 (not (noDuplicateKeys!1234 newBucket!178)))))

(declare-fun b!4558467 () Bool)

(declare-fun res!1901912 () Bool)

(assert (=> b!4558467 (=> (not res!1901912) (not e!2841467))))

(declare-fun allKeysSameHash!1088 (List!50967 (_ BitVec 64) Hashable!5629) Bool)

(assert (=> b!4558467 (= res!1901912 (allKeysSameHash!1088 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1901905 () Bool)

(assert (=> start!452892 (=> (not res!1901905) (not e!2841456))))

(declare-fun forall!10413 (List!50968 Int) Bool)

(assert (=> start!452892 (= res!1901905 (forall!10413 (toList!4475 lm!1477) lambda!179417))))

(assert (=> start!452892 e!2841456))

(assert (=> start!452892 true))

(declare-fun e!2841454 () Bool)

(declare-fun inv!66409 (ListLongMap!3107) Bool)

(assert (=> start!452892 (and (inv!66409 lm!1477) e!2841454)))

(declare-fun tp_is_empty!28213 () Bool)

(assert (=> start!452892 tp_is_empty!28213))

(declare-fun e!2841462 () Bool)

(assert (=> start!452892 e!2841462))

(declare-fun b!4558468 () Bool)

(assert (=> b!4558468 (= e!2841456 e!2841459)))

(declare-fun res!1901908 () Bool)

(assert (=> b!4558468 (=> (not res!1901908) (not e!2841459))))

(assert (=> b!4558468 (= res!1901908 (contains!13690 lt!1729746 key!3287))))

(assert (=> b!4558468 (= lt!1729746 (extractMap!1290 (toList!4475 lm!1477)))))

(declare-fun b!4558469 () Bool)

(declare-fun e!2841469 () Bool)

(assert (=> b!4558469 (= e!2841469 false)))

(declare-fun b!4558470 () Bool)

(declare-fun res!1901909 () Bool)

(assert (=> b!4558470 (=> res!1901909 e!2841463)))

(get-info :version)

(assert (=> b!4558470 (= res!1901909 (or ((_ is Nil!50844) (toList!4475 lm!1477)) (not (= (_1!28980 (h!56747 (toList!4475 lm!1477))) hash!344))))))

(declare-fun b!4558471 () Bool)

(assert (=> b!4558471 (= e!2841468 e!2841465)))

(declare-fun res!1901900 () Bool)

(assert (=> b!4558471 (=> res!1901900 e!2841465)))

(assert (=> b!4558471 (= res!1901900 (not (= lt!1729753 lt!1729761)))))

(assert (=> b!4558471 (= lt!1729761 (extractMap!1290 (t!357942 (toList!4475 lm!1477))))))

(assert (=> b!4558471 (= lt!1729753 (extractMap!1290 (toList!4475 lt!1729759)))))

(declare-fun tp_is_empty!28215 () Bool)

(declare-fun b!4558472 () Bool)

(declare-fun tp!1339109 () Bool)

(assert (=> b!4558472 (= e!2841462 (and tp_is_empty!28213 tp_is_empty!28215 tp!1339109))))

(declare-fun b!4558473 () Bool)

(declare-fun Unit!102264 () Unit!102262)

(assert (=> b!4558473 (= e!2841461 Unit!102264)))

(declare-fun b!4558474 () Bool)

(assert (=> b!4558474 (= e!2841457 e!2841458)))

(declare-fun res!1901914 () Bool)

(assert (=> b!4558474 (=> res!1901914 e!2841458)))

(assert (=> b!4558474 (= res!1901914 (not (= (t!357942 (toList!4475 lm!1477)) (tail!7850 (toList!4475 lt!1729757)))))))

(assert (=> b!4558474 (= lt!1729757 (+!1654 lm!1477 lt!1729749))))

(assert (=> b!4558474 (eq!685 (extractMap!1290 (Cons!50844 lt!1729749 Nil!50844)) (-!454 (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844)) key!3287))))

(assert (=> b!4558474 (= lt!1729765 (tuple2!51373 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477)))))))

(assert (=> b!4558474 (= lt!1729749 (tuple2!51373 hash!344 newBucket!178))))

(declare-fun lt!1729768 () Unit!102262)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!74 ((_ BitVec 64) List!50967 List!50967 K!12225 Hashable!5629) Unit!102262)

(assert (=> b!4558474 (= lt!1729768 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!74 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4558474 (contains!13690 (extractMap!1290 lt!1729770) key!3287)))

(declare-fun lt!1729754 () Unit!102262)

(declare-fun lemmaListContainsThenExtractedMapContains!200 (ListLongMap!3107 K!12225 Hashable!5629) Unit!102262)

(assert (=> b!4558474 (= lt!1729754 (lemmaListContainsThenExtractedMapContains!200 (ListLongMap!3108 lt!1729770) key!3287 hashF!1107))))

(declare-fun b!4558475 () Bool)

(declare-fun Unit!102265 () Unit!102262)

(assert (=> b!4558475 (= e!2841453 Unit!102265)))

(declare-fun b!4558476 () Bool)

(declare-fun Unit!102266 () Unit!102262)

(assert (=> b!4558476 (= e!2841461 Unit!102266)))

(declare-fun lt!1729748 () Unit!102262)

(assert (=> b!4558476 (= lt!1729748 (lemmaInGenMapThenLongMapContainsHash!308 lt!1729759 key!3287 hashF!1107))))

(declare-fun res!1901901 () Bool)

(assert (=> b!4558476 (= res!1901901 (contains!13689 lt!1729759 lt!1729758))))

(assert (=> b!4558476 (=> (not res!1901901) (not e!2841469))))

(assert (=> b!4558476 e!2841469))

(declare-fun b!4558477 () Bool)

(declare-fun Unit!102267 () Unit!102262)

(assert (=> b!4558477 (= e!2841453 Unit!102267)))

(declare-fun lt!1729766 () Unit!102262)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!222 (ListLongMap!3107 K!12225 Hashable!5629) Unit!102262)

(assert (=> b!4558477 (= lt!1729766 (lemmaNotInItsHashBucketThenNotInMap!222 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4558477 false))

(declare-fun b!4558478 () Bool)

(assert (=> b!4558478 (= e!2841464 e!2841466)))

(declare-fun res!1901915 () Bool)

(assert (=> b!4558478 (=> res!1901915 e!2841466)))

(assert (=> b!4558478 (= res!1901915 (not (eq!685 lt!1729747 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lm!1477))) lt!1729761))))))

(assert (=> b!4558478 (= lt!1729747 (extractMap!1290 (toList!4475 (+!1654 lm!1477 lt!1729765))))))

(declare-fun b!4558479 () Bool)

(declare-fun tp!1339108 () Bool)

(assert (=> b!4558479 (= e!2841454 tp!1339108)))

(assert (= (and start!452892 res!1901905) b!4558456))

(assert (= (and b!4558456 res!1901899) b!4558468))

(assert (= (and b!4558468 res!1901908) b!4558458))

(assert (= (and b!4558458 res!1901906) b!4558467))

(assert (= (and b!4558467 res!1901912) b!4558460))

(assert (= (and b!4558460 (not res!1901913)) b!4558466))

(assert (= (and b!4558466 (not res!1901904)) b!4558470))

(assert (= (and b!4558470 (not res!1901909)) b!4558463))

(assert (= (and b!4558463 c!779371) b!4558477))

(assert (= (and b!4558463 (not c!779371)) b!4558475))

(assert (= (and b!4558463 (not res!1901910)) b!4558465))

(assert (= (and b!4558465 (not res!1901907)) b!4558474))

(assert (= (and b!4558474 (not res!1901914)) b!4558459))

(assert (= (and b!4558459 (not res!1901903)) b!4558471))

(assert (= (and b!4558471 (not res!1901900)) b!4558464))

(assert (= (and b!4558464 c!779372) b!4558476))

(assert (= (and b!4558464 (not c!779372)) b!4558473))

(assert (= (and b!4558476 res!1901901) b!4558469))

(assert (= (and b!4558464 (not res!1901898)) b!4558462))

(assert (= (and b!4558462 (not res!1901911)) b!4558461))

(assert (= (and b!4558461 (not res!1901902)) b!4558478))

(assert (= (and b!4558478 (not res!1901915)) b!4558457))

(assert (= start!452892 b!4558479))

(assert (= (and start!452892 ((_ is Cons!50843) newBucket!178)) b!4558472))

(declare-fun m!5347767 () Bool)

(assert (=> b!4558474 m!5347767))

(assert (=> b!4558474 m!5347767))

(declare-fun m!5347769 () Bool)

(assert (=> b!4558474 m!5347769))

(declare-fun m!5347771 () Bool)

(assert (=> b!4558474 m!5347771))

(declare-fun m!5347773 () Bool)

(assert (=> b!4558474 m!5347773))

(declare-fun m!5347775 () Bool)

(assert (=> b!4558474 m!5347775))

(declare-fun m!5347777 () Bool)

(assert (=> b!4558474 m!5347777))

(declare-fun m!5347779 () Bool)

(assert (=> b!4558474 m!5347779))

(declare-fun m!5347781 () Bool)

(assert (=> b!4558474 m!5347781))

(assert (=> b!4558474 m!5347777))

(assert (=> b!4558474 m!5347775))

(assert (=> b!4558474 m!5347779))

(declare-fun m!5347783 () Bool)

(assert (=> b!4558474 m!5347783))

(declare-fun m!5347785 () Bool)

(assert (=> b!4558474 m!5347785))

(declare-fun m!5347787 () Bool)

(assert (=> b!4558460 m!5347787))

(declare-fun m!5347789 () Bool)

(assert (=> b!4558460 m!5347789))

(declare-fun m!5347791 () Bool)

(assert (=> b!4558460 m!5347791))

(declare-fun m!5347793 () Bool)

(assert (=> b!4558460 m!5347793))

(declare-fun m!5347795 () Bool)

(assert (=> b!4558460 m!5347795))

(declare-fun m!5347797 () Bool)

(assert (=> b!4558460 m!5347797))

(declare-fun m!5347799 () Bool)

(assert (=> b!4558460 m!5347799))

(declare-fun m!5347801 () Bool)

(assert (=> b!4558459 m!5347801))

(declare-fun m!5347803 () Bool)

(assert (=> b!4558459 m!5347803))

(declare-fun m!5347805 () Bool)

(assert (=> b!4558466 m!5347805))

(declare-fun m!5347807 () Bool)

(assert (=> b!4558464 m!5347807))

(declare-fun m!5347809 () Bool)

(assert (=> b!4558462 m!5347809))

(declare-fun m!5347811 () Bool)

(assert (=> b!4558462 m!5347811))

(declare-fun m!5347813 () Bool)

(assert (=> b!4558462 m!5347813))

(declare-fun m!5347815 () Bool)

(assert (=> b!4558462 m!5347815))

(declare-fun m!5347817 () Bool)

(assert (=> b!4558462 m!5347817))

(assert (=> b!4558462 m!5347809))

(assert (=> b!4558462 m!5347815))

(assert (=> b!4558462 m!5347811))

(declare-fun m!5347819 () Bool)

(assert (=> b!4558462 m!5347819))

(declare-fun m!5347821 () Bool)

(assert (=> start!452892 m!5347821))

(declare-fun m!5347823 () Bool)

(assert (=> start!452892 m!5347823))

(declare-fun m!5347825 () Bool)

(assert (=> b!4558457 m!5347825))

(declare-fun m!5347827 () Bool)

(assert (=> b!4558477 m!5347827))

(declare-fun m!5347829 () Bool)

(assert (=> b!4558463 m!5347829))

(declare-fun m!5347831 () Bool)

(assert (=> b!4558456 m!5347831))

(declare-fun m!5347833 () Bool)

(assert (=> b!4558465 m!5347833))

(declare-fun m!5347835 () Bool)

(assert (=> b!4558467 m!5347835))

(declare-fun m!5347837 () Bool)

(assert (=> b!4558471 m!5347837))

(declare-fun m!5347839 () Bool)

(assert (=> b!4558471 m!5347839))

(declare-fun m!5347841 () Bool)

(assert (=> b!4558468 m!5347841))

(declare-fun m!5347843 () Bool)

(assert (=> b!4558468 m!5347843))

(declare-fun m!5347845 () Bool)

(assert (=> b!4558458 m!5347845))

(declare-fun m!5347847 () Bool)

(assert (=> b!4558476 m!5347847))

(declare-fun m!5347849 () Bool)

(assert (=> b!4558476 m!5347849))

(declare-fun m!5347851 () Bool)

(assert (=> b!4558461 m!5347851))

(declare-fun m!5347853 () Bool)

(assert (=> b!4558461 m!5347853))

(assert (=> b!4558461 m!5347851))

(assert (=> b!4558461 m!5347853))

(declare-fun m!5347855 () Bool)

(assert (=> b!4558461 m!5347855))

(declare-fun m!5347857 () Bool)

(assert (=> b!4558478 m!5347857))

(assert (=> b!4558478 m!5347857))

(declare-fun m!5347859 () Bool)

(assert (=> b!4558478 m!5347859))

(declare-fun m!5347861 () Bool)

(assert (=> b!4558478 m!5347861))

(declare-fun m!5347863 () Bool)

(assert (=> b!4558478 m!5347863))

(check-sat (not b!4558464) (not b!4558456) (not b!4558459) (not b!4558463) (not b!4558477) (not b!4558476) (not b!4558467) (not b!4558474) (not b!4558471) (not b!4558460) (not start!452892) (not b!4558457) (not b!4558466) (not b!4558472) tp_is_empty!28215 (not b!4558462) (not b!4558458) (not b!4558479) (not b!4558468) (not b!4558461) (not b!4558478) (not b!4558465) tp_is_empty!28213)
(check-sat)
(get-model)

(declare-fun d!1418801 () Bool)

(declare-fun dynLambda!21265 (Int tuple2!51372) Bool)

(assert (=> d!1418801 (dynLambda!21265 lambda!179417 lt!1729764)))

(declare-fun lt!1729773 () Unit!102262)

(declare-fun choose!30160 (List!50968 Int tuple2!51372) Unit!102262)

(assert (=> d!1418801 (= lt!1729773 (choose!30160 (toList!4475 lm!1477) lambda!179417 lt!1729764))))

(declare-fun e!2841472 () Bool)

(assert (=> d!1418801 e!2841472))

(declare-fun res!1901918 () Bool)

(assert (=> d!1418801 (=> (not res!1901918) (not e!2841472))))

(assert (=> d!1418801 (= res!1901918 (forall!10413 (toList!4475 lm!1477) lambda!179417))))

(assert (=> d!1418801 (= (forallContained!2677 (toList!4475 lm!1477) lambda!179417 lt!1729764) lt!1729773)))

(declare-fun b!4558482 () Bool)

(assert (=> b!4558482 (= e!2841472 (contains!13688 (toList!4475 lm!1477) lt!1729764))))

(assert (= (and d!1418801 res!1901918) b!4558482))

(declare-fun b_lambda!161991 () Bool)

(assert (=> (not b_lambda!161991) (not d!1418801)))

(declare-fun m!5347865 () Bool)

(assert (=> d!1418801 m!5347865))

(declare-fun m!5347867 () Bool)

(assert (=> d!1418801 m!5347867))

(assert (=> d!1418801 m!5347821))

(assert (=> b!4558482 m!5347791))

(assert (=> b!4558460 d!1418801))

(declare-fun bs!939033 () Bool)

(declare-fun d!1418805 () Bool)

(assert (= bs!939033 (and d!1418805 start!452892)))

(declare-fun lambda!179423 () Int)

(assert (=> bs!939033 (= lambda!179423 lambda!179417)))

(assert (=> d!1418805 (contains!13689 lm!1477 (hash!3014 hashF!1107 key!3287))))

(declare-fun lt!1729779 () Unit!102262)

(declare-fun choose!30161 (ListLongMap!3107 K!12225 Hashable!5629) Unit!102262)

(assert (=> d!1418805 (= lt!1729779 (choose!30161 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1418805 (forall!10413 (toList!4475 lm!1477) lambda!179423)))

(assert (=> d!1418805 (= (lemmaInGenMapThenLongMapContainsHash!308 lm!1477 key!3287 hashF!1107) lt!1729779)))

(declare-fun bs!939034 () Bool)

(assert (= bs!939034 d!1418805))

(assert (=> bs!939034 m!5347845))

(assert (=> bs!939034 m!5347845))

(declare-fun m!5347877 () Bool)

(assert (=> bs!939034 m!5347877))

(declare-fun m!5347879 () Bool)

(assert (=> bs!939034 m!5347879))

(declare-fun m!5347881 () Bool)

(assert (=> bs!939034 m!5347881))

(assert (=> b!4558460 d!1418805))

(declare-fun d!1418809 () Bool)

(declare-fun e!2841485 () Bool)

(assert (=> d!1418809 e!2841485))

(declare-fun res!1901921 () Bool)

(assert (=> d!1418809 (=> res!1901921 e!2841485)))

(declare-fun lt!1729808 () Bool)

(assert (=> d!1418809 (= res!1901921 (not lt!1729808))))

(declare-fun lt!1729807 () Bool)

(assert (=> d!1418809 (= lt!1729808 lt!1729807)))

(declare-fun lt!1729809 () Unit!102262)

(declare-fun e!2841484 () Unit!102262)

(assert (=> d!1418809 (= lt!1729809 e!2841484)))

(declare-fun c!779382 () Bool)

(assert (=> d!1418809 (= c!779382 lt!1729807)))

(declare-fun containsKey!1955 (List!50968 (_ BitVec 64)) Bool)

(assert (=> d!1418809 (= lt!1729807 (containsKey!1955 (toList!4475 lm!1477) lt!1729758))))

(assert (=> d!1418809 (= (contains!13689 lm!1477 lt!1729758) lt!1729808)))

(declare-fun b!4558503 () Bool)

(declare-fun lt!1729810 () Unit!102262)

(assert (=> b!4558503 (= e!2841484 lt!1729810)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1094 (List!50968 (_ BitVec 64)) Unit!102262)

(assert (=> b!4558503 (= lt!1729810 (lemmaContainsKeyImpliesGetValueByKeyDefined!1094 (toList!4475 lm!1477) lt!1729758))))

(declare-datatypes ((Option!11259 0))(
  ( (None!11258) (Some!11258 (v!45030 List!50967)) )
))
(declare-fun isDefined!8530 (Option!11259) Bool)

(declare-fun getValueByKey!1191 (List!50968 (_ BitVec 64)) Option!11259)

(assert (=> b!4558503 (isDefined!8530 (getValueByKey!1191 (toList!4475 lm!1477) lt!1729758))))

(declare-fun b!4558504 () Bool)

(declare-fun Unit!102272 () Unit!102262)

(assert (=> b!4558504 (= e!2841484 Unit!102272)))

(declare-fun b!4558505 () Bool)

(assert (=> b!4558505 (= e!2841485 (isDefined!8530 (getValueByKey!1191 (toList!4475 lm!1477) lt!1729758)))))

(assert (= (and d!1418809 c!779382) b!4558503))

(assert (= (and d!1418809 (not c!779382)) b!4558504))

(assert (= (and d!1418809 (not res!1901921)) b!4558505))

(declare-fun m!5347891 () Bool)

(assert (=> d!1418809 m!5347891))

(declare-fun m!5347893 () Bool)

(assert (=> b!4558503 m!5347893))

(declare-fun m!5347895 () Bool)

(assert (=> b!4558503 m!5347895))

(assert (=> b!4558503 m!5347895))

(declare-fun m!5347897 () Bool)

(assert (=> b!4558503 m!5347897))

(assert (=> b!4558505 m!5347895))

(assert (=> b!4558505 m!5347895))

(assert (=> b!4558505 m!5347897))

(assert (=> b!4558460 d!1418809))

(declare-fun d!1418813 () Bool)

(declare-fun lt!1729822 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8501 (List!50968) (InoxSet tuple2!51372))

(assert (=> d!1418813 (= lt!1729822 (select (content!8501 (toList!4475 lm!1477)) lt!1729764))))

(declare-fun e!2841505 () Bool)

(assert (=> d!1418813 (= lt!1729822 e!2841505)))

(declare-fun res!1901936 () Bool)

(assert (=> d!1418813 (=> (not res!1901936) (not e!2841505))))

(assert (=> d!1418813 (= res!1901936 ((_ is Cons!50844) (toList!4475 lm!1477)))))

(assert (=> d!1418813 (= (contains!13688 (toList!4475 lm!1477) lt!1729764) lt!1729822)))

(declare-fun b!4558531 () Bool)

(declare-fun e!2841506 () Bool)

(assert (=> b!4558531 (= e!2841505 e!2841506)))

(declare-fun res!1901935 () Bool)

(assert (=> b!4558531 (=> res!1901935 e!2841506)))

(assert (=> b!4558531 (= res!1901935 (= (h!56747 (toList!4475 lm!1477)) lt!1729764))))

(declare-fun b!4558532 () Bool)

(assert (=> b!4558532 (= e!2841506 (contains!13688 (t!357942 (toList!4475 lm!1477)) lt!1729764))))

(assert (= (and d!1418813 res!1901936) b!4558531))

(assert (= (and b!4558531 (not res!1901935)) b!4558532))

(declare-fun m!5347931 () Bool)

(assert (=> d!1418813 m!5347931))

(declare-fun m!5347933 () Bool)

(assert (=> d!1418813 m!5347933))

(declare-fun m!5347935 () Bool)

(assert (=> b!4558532 m!5347935))

(assert (=> b!4558460 d!1418813))

(declare-fun b!4558544 () Bool)

(declare-fun e!2841512 () List!50967)

(declare-fun e!2841513 () List!50967)

(assert (=> b!4558544 (= e!2841512 e!2841513)))

(declare-fun c!779395 () Bool)

(assert (=> b!4558544 (= c!779395 ((_ is Cons!50843) lt!1729756))))

(declare-fun b!4558545 () Bool)

(assert (=> b!4558545 (= e!2841513 (Cons!50843 (h!56746 lt!1729756) (removePairForKey!861 (t!357941 lt!1729756) key!3287)))))

(declare-fun b!4558543 () Bool)

(assert (=> b!4558543 (= e!2841512 (t!357941 lt!1729756))))

(declare-fun b!4558546 () Bool)

(assert (=> b!4558546 (= e!2841513 Nil!50843)))

(declare-fun d!1418823 () Bool)

(declare-fun lt!1729826 () List!50967)

(assert (=> d!1418823 (not (containsKey!1953 lt!1729826 key!3287))))

(assert (=> d!1418823 (= lt!1729826 e!2841512)))

(declare-fun c!779394 () Bool)

(assert (=> d!1418823 (= c!779394 (and ((_ is Cons!50843) lt!1729756) (= (_1!28979 (h!56746 lt!1729756)) key!3287)))))

(assert (=> d!1418823 (noDuplicateKeys!1234 lt!1729756)))

(assert (=> d!1418823 (= (removePairForKey!861 lt!1729756 key!3287) lt!1729826)))

(assert (= (and d!1418823 c!779394) b!4558543))

(assert (= (and d!1418823 (not c!779394)) b!4558544))

(assert (= (and b!4558544 c!779395) b!4558545))

(assert (= (and b!4558544 (not c!779395)) b!4558546))

(declare-fun m!5347945 () Bool)

(assert (=> b!4558545 m!5347945))

(declare-fun m!5347947 () Bool)

(assert (=> d!1418823 m!5347947))

(declare-fun m!5347949 () Bool)

(assert (=> d!1418823 m!5347949))

(assert (=> b!4558460 d!1418823))

(declare-fun d!1418827 () Bool)

(declare-fun get!16748 (Option!11259) List!50967)

(assert (=> d!1418827 (= (apply!11971 lm!1477 hash!344) (get!16748 (getValueByKey!1191 (toList!4475 lm!1477) hash!344)))))

(declare-fun bs!939046 () Bool)

(assert (= bs!939046 d!1418827))

(declare-fun m!5347951 () Bool)

(assert (=> bs!939046 m!5347951))

(assert (=> bs!939046 m!5347951))

(declare-fun m!5347953 () Bool)

(assert (=> bs!939046 m!5347953))

(assert (=> b!4558460 d!1418827))

(declare-fun d!1418829 () Bool)

(assert (=> d!1418829 (contains!13688 (toList!4475 lm!1477) (tuple2!51373 hash!344 lt!1729756))))

(declare-fun lt!1729832 () Unit!102262)

(declare-fun choose!30163 (List!50968 (_ BitVec 64) List!50967) Unit!102262)

(assert (=> d!1418829 (= lt!1729832 (choose!30163 (toList!4475 lm!1477) hash!344 lt!1729756))))

(declare-fun e!2841516 () Bool)

(assert (=> d!1418829 e!2841516))

(declare-fun res!1901939 () Bool)

(assert (=> d!1418829 (=> (not res!1901939) (not e!2841516))))

(declare-fun isStrictlySorted!480 (List!50968) Bool)

(assert (=> d!1418829 (= res!1901939 (isStrictlySorted!480 (toList!4475 lm!1477)))))

(assert (=> d!1418829 (= (lemmaGetValueByKeyImpliesContainsTuple!746 (toList!4475 lm!1477) hash!344 lt!1729756) lt!1729832)))

(declare-fun b!4558549 () Bool)

(assert (=> b!4558549 (= e!2841516 (= (getValueByKey!1191 (toList!4475 lm!1477) hash!344) (Some!11258 lt!1729756)))))

(assert (= (and d!1418829 res!1901939) b!4558549))

(declare-fun m!5347967 () Bool)

(assert (=> d!1418829 m!5347967))

(declare-fun m!5347969 () Bool)

(assert (=> d!1418829 m!5347969))

(declare-fun m!5347971 () Bool)

(assert (=> d!1418829 m!5347971))

(assert (=> b!4558549 m!5347951))

(assert (=> b!4558460 d!1418829))

(declare-fun d!1418833 () Bool)

(declare-fun e!2841529 () Bool)

(assert (=> d!1418833 e!2841529))

(declare-fun res!1901958 () Bool)

(assert (=> d!1418833 (=> (not res!1901958) (not e!2841529))))

(declare-fun lt!1729858 () ListLongMap!3107)

(assert (=> d!1418833 (= res!1901958 (contains!13689 lt!1729858 (_1!28980 lt!1729749)))))

(declare-fun lt!1729859 () List!50968)

(assert (=> d!1418833 (= lt!1729858 (ListLongMap!3108 lt!1729859))))

(declare-fun lt!1729856 () Unit!102262)

(declare-fun lt!1729857 () Unit!102262)

(assert (=> d!1418833 (= lt!1729856 lt!1729857)))

(assert (=> d!1418833 (= (getValueByKey!1191 lt!1729859 (_1!28980 lt!1729749)) (Some!11258 (_2!28980 lt!1729749)))))

(declare-fun lemmaContainsTupThenGetReturnValue!748 (List!50968 (_ BitVec 64) List!50967) Unit!102262)

(assert (=> d!1418833 (= lt!1729857 (lemmaContainsTupThenGetReturnValue!748 lt!1729859 (_1!28980 lt!1729749) (_2!28980 lt!1729749)))))

(declare-fun insertStrictlySorted!456 (List!50968 (_ BitVec 64) List!50967) List!50968)

(assert (=> d!1418833 (= lt!1729859 (insertStrictlySorted!456 (toList!4475 lt!1729759) (_1!28980 lt!1729749) (_2!28980 lt!1729749)))))

(assert (=> d!1418833 (= (+!1654 lt!1729759 lt!1729749) lt!1729858)))

(declare-fun b!4558567 () Bool)

(declare-fun res!1901957 () Bool)

(assert (=> b!4558567 (=> (not res!1901957) (not e!2841529))))

(assert (=> b!4558567 (= res!1901957 (= (getValueByKey!1191 (toList!4475 lt!1729858) (_1!28980 lt!1729749)) (Some!11258 (_2!28980 lt!1729749))))))

(declare-fun b!4558568 () Bool)

(assert (=> b!4558568 (= e!2841529 (contains!13688 (toList!4475 lt!1729858) lt!1729749))))

(assert (= (and d!1418833 res!1901958) b!4558567))

(assert (= (and b!4558567 res!1901957) b!4558568))

(declare-fun m!5347999 () Bool)

(assert (=> d!1418833 m!5347999))

(declare-fun m!5348001 () Bool)

(assert (=> d!1418833 m!5348001))

(declare-fun m!5348003 () Bool)

(assert (=> d!1418833 m!5348003))

(declare-fun m!5348005 () Bool)

(assert (=> d!1418833 m!5348005))

(declare-fun m!5348007 () Bool)

(assert (=> b!4558567 m!5348007))

(declare-fun m!5348009 () Bool)

(assert (=> b!4558568 m!5348009))

(assert (=> b!4558459 d!1418833))

(declare-fun d!1418839 () Bool)

(assert (=> d!1418839 (= (tail!7849 lm!1477) (ListLongMap!3108 (tail!7850 (toList!4475 lm!1477))))))

(declare-fun bs!939048 () Bool)

(assert (= bs!939048 d!1418839))

(assert (=> bs!939048 m!5347817))

(assert (=> b!4558459 d!1418839))

(declare-fun d!1418845 () Bool)

(declare-fun hash!3019 (Hashable!5629 K!12225) (_ BitVec 64))

(assert (=> d!1418845 (= (hash!3014 hashF!1107 key!3287) (hash!3019 hashF!1107 key!3287))))

(declare-fun bs!939054 () Bool)

(assert (= bs!939054 d!1418845))

(declare-fun m!5348039 () Bool)

(assert (=> bs!939054 m!5348039))

(assert (=> b!4558458 d!1418845))

(declare-fun bs!939078 () Bool)

(declare-fun d!1418847 () Bool)

(assert (= bs!939078 (and d!1418847 start!452892)))

(declare-fun lambda!179437 () Int)

(assert (=> bs!939078 (= lambda!179437 lambda!179417)))

(declare-fun bs!939079 () Bool)

(assert (= bs!939079 (and d!1418847 d!1418805)))

(assert (=> bs!939079 (= lambda!179437 lambda!179423)))

(declare-fun lt!1729883 () ListMap!3737)

(declare-fun invariantList!1066 (List!50967) Bool)

(assert (=> d!1418847 (invariantList!1066 (toList!4476 lt!1729883))))

(declare-fun e!2841547 () ListMap!3737)

(assert (=> d!1418847 (= lt!1729883 e!2841547)))

(declare-fun c!779404 () Bool)

(assert (=> d!1418847 (= c!779404 ((_ is Cons!50844) (Cons!50844 lt!1729765 lt!1729767)))))

(assert (=> d!1418847 (forall!10413 (Cons!50844 lt!1729765 lt!1729767) lambda!179437)))

(assert (=> d!1418847 (= (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767)) lt!1729883)))

(declare-fun b!4558595 () Bool)

(assert (=> b!4558595 (= e!2841547 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (Cons!50844 lt!1729765 lt!1729767))) (extractMap!1290 (t!357942 (Cons!50844 lt!1729765 lt!1729767)))))))

(declare-fun b!4558596 () Bool)

(assert (=> b!4558596 (= e!2841547 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418847 c!779404) b!4558595))

(assert (= (and d!1418847 (not c!779404)) b!4558596))

(declare-fun m!5348085 () Bool)

(assert (=> d!1418847 m!5348085))

(declare-fun m!5348087 () Bool)

(assert (=> d!1418847 m!5348087))

(declare-fun m!5348089 () Bool)

(assert (=> b!4558595 m!5348089))

(assert (=> b!4558595 m!5348089))

(declare-fun m!5348091 () Bool)

(assert (=> b!4558595 m!5348091))

(assert (=> b!4558462 d!1418847))

(declare-fun d!1418863 () Bool)

(assert (=> d!1418863 (= (tail!7850 (toList!4475 lm!1477)) (t!357942 (toList!4475 lm!1477)))))

(assert (=> b!4558462 d!1418863))

(declare-fun bs!939081 () Bool)

(declare-fun d!1418867 () Bool)

(assert (= bs!939081 (and d!1418867 start!452892)))

(declare-fun lambda!179438 () Int)

(assert (=> bs!939081 (= lambda!179438 lambda!179417)))

(declare-fun bs!939082 () Bool)

(assert (= bs!939082 (and d!1418867 d!1418805)))

(assert (=> bs!939082 (= lambda!179438 lambda!179423)))

(declare-fun bs!939083 () Bool)

(assert (= bs!939083 (and d!1418867 d!1418847)))

(assert (=> bs!939083 (= lambda!179438 lambda!179437)))

(declare-fun lt!1729884 () ListMap!3737)

(assert (=> d!1418867 (invariantList!1066 (toList!4476 lt!1729884))))

(declare-fun e!2841548 () ListMap!3737)

(assert (=> d!1418867 (= lt!1729884 e!2841548)))

(declare-fun c!779405 () Bool)

(assert (=> d!1418867 (= c!779405 ((_ is Cons!50844) (Cons!50844 lt!1729749 lt!1729767)))))

(assert (=> d!1418867 (forall!10413 (Cons!50844 lt!1729749 lt!1729767) lambda!179438)))

(assert (=> d!1418867 (= (extractMap!1290 (Cons!50844 lt!1729749 lt!1729767)) lt!1729884)))

(declare-fun b!4558597 () Bool)

(assert (=> b!4558597 (= e!2841548 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (Cons!50844 lt!1729749 lt!1729767))) (extractMap!1290 (t!357942 (Cons!50844 lt!1729749 lt!1729767)))))))

(declare-fun b!4558598 () Bool)

(assert (=> b!4558598 (= e!2841548 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418867 c!779405) b!4558597))

(assert (= (and d!1418867 (not c!779405)) b!4558598))

(declare-fun m!5348095 () Bool)

(assert (=> d!1418867 m!5348095))

(declare-fun m!5348097 () Bool)

(assert (=> d!1418867 m!5348097))

(declare-fun m!5348099 () Bool)

(assert (=> b!4558597 m!5348099))

(assert (=> b!4558597 m!5348099))

(declare-fun m!5348101 () Bool)

(assert (=> b!4558597 m!5348101))

(assert (=> b!4558462 d!1418867))

(declare-fun bs!939084 () Bool)

(declare-fun d!1418869 () Bool)

(assert (= bs!939084 (and d!1418869 start!452892)))

(declare-fun lambda!179441 () Int)

(assert (=> bs!939084 (= lambda!179441 lambda!179417)))

(declare-fun bs!939085 () Bool)

(assert (= bs!939085 (and d!1418869 d!1418805)))

(assert (=> bs!939085 (= lambda!179441 lambda!179423)))

(declare-fun bs!939086 () Bool)

(assert (= bs!939086 (and d!1418869 d!1418847)))

(assert (=> bs!939086 (= lambda!179441 lambda!179437)))

(declare-fun bs!939087 () Bool)

(assert (= bs!939087 (and d!1418869 d!1418867)))

(assert (=> bs!939087 (= lambda!179441 lambda!179438)))

(assert (=> d!1418869 (eq!685 (extractMap!1290 (Cons!50844 (tuple2!51373 hash!344 newBucket!178) (tail!7850 (toList!4475 lm!1477)))) (-!454 (extractMap!1290 (Cons!50844 (tuple2!51373 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477)))) (tail!7850 (toList!4475 lm!1477)))) key!3287))))

(declare-fun lt!1729907 () Unit!102262)

(declare-fun choose!30166 (ListLongMap!3107 (_ BitVec 64) List!50967 List!50967 K!12225 Hashable!5629) Unit!102262)

(assert (=> d!1418869 (= lt!1729907 (choose!30166 lm!1477 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1418869 (forall!10413 (toList!4475 lm!1477) lambda!179441)))

(assert (=> d!1418869 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!32 lm!1477 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1729907)))

(declare-fun bs!939089 () Bool)

(assert (= bs!939089 d!1418869))

(assert (=> bs!939089 m!5347817))

(declare-fun m!5348131 () Bool)

(assert (=> bs!939089 m!5348131))

(declare-fun m!5348133 () Bool)

(assert (=> bs!939089 m!5348133))

(declare-fun m!5348135 () Bool)

(assert (=> bs!939089 m!5348135))

(declare-fun m!5348137 () Bool)

(assert (=> bs!939089 m!5348137))

(declare-fun m!5348139 () Bool)

(assert (=> bs!939089 m!5348139))

(assert (=> bs!939089 m!5348133))

(assert (=> bs!939089 m!5348131))

(assert (=> bs!939089 m!5348135))

(declare-fun m!5348141 () Bool)

(assert (=> bs!939089 m!5348141))

(assert (=> b!4558462 d!1418869))

(declare-fun d!1418881 () Bool)

(declare-fun content!8503 (List!50967) (InoxSet tuple2!51370))

(assert (=> d!1418881 (= (eq!685 (extractMap!1290 (Cons!50844 lt!1729749 lt!1729767)) (-!454 (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767)) key!3287)) (= (content!8503 (toList!4476 (extractMap!1290 (Cons!50844 lt!1729749 lt!1729767)))) (content!8503 (toList!4476 (-!454 (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767)) key!3287)))))))

(declare-fun bs!939099 () Bool)

(assert (= bs!939099 d!1418881))

(declare-fun m!5348151 () Bool)

(assert (=> bs!939099 m!5348151))

(declare-fun m!5348153 () Bool)

(assert (=> bs!939099 m!5348153))

(assert (=> b!4558462 d!1418881))

(declare-fun d!1418885 () Bool)

(declare-fun e!2841573 () Bool)

(assert (=> d!1418885 e!2841573))

(declare-fun res!1901983 () Bool)

(assert (=> d!1418885 (=> (not res!1901983) (not e!2841573))))

(declare-fun lt!1729912 () ListMap!3737)

(assert (=> d!1418885 (= res!1901983 (not (contains!13690 lt!1729912 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!189 (List!50967 K!12225) List!50967)

(assert (=> d!1418885 (= lt!1729912 (ListMap!3738 (removePresrvNoDuplicatedKeys!189 (toList!4476 (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767))) key!3287)))))

(assert (=> d!1418885 (= (-!454 (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767)) key!3287) lt!1729912)))

(declare-fun b!4558633 () Bool)

(declare-datatypes ((List!50970 0))(
  ( (Nil!50846) (Cons!50846 (h!56751 K!12225) (t!357944 List!50970)) )
))
(declare-fun content!8504 (List!50970) (InoxSet K!12225))

(declare-fun keys!17723 (ListMap!3737) List!50970)

(assert (=> b!4558633 (= e!2841573 (= ((_ map and) (content!8504 (keys!17723 (extractMap!1290 (Cons!50844 lt!1729765 lt!1729767)))) ((_ map not) (store ((as const (Array K!12225 Bool)) false) key!3287 true))) (content!8504 (keys!17723 lt!1729912))))))

(assert (= (and d!1418885 res!1901983) b!4558633))

(declare-fun m!5348155 () Bool)

(assert (=> d!1418885 m!5348155))

(declare-fun m!5348157 () Bool)

(assert (=> d!1418885 m!5348157))

(declare-fun m!5348159 () Bool)

(assert (=> b!4558633 m!5348159))

(declare-fun m!5348161 () Bool)

(assert (=> b!4558633 m!5348161))

(declare-fun m!5348163 () Bool)

(assert (=> b!4558633 m!5348163))

(declare-fun m!5348165 () Bool)

(assert (=> b!4558633 m!5348165))

(assert (=> b!4558633 m!5348159))

(declare-fun m!5348167 () Bool)

(assert (=> b!4558633 m!5348167))

(assert (=> b!4558633 m!5347815))

(assert (=> b!4558633 m!5348163))

(assert (=> b!4558462 d!1418885))

(declare-fun d!1418887 () Bool)

(assert (=> d!1418887 (= (eq!685 (extractMap!1290 (toList!4475 lt!1729757)) (addToMapMapFromBucket!752 newBucket!178 lt!1729761)) (= (content!8503 (toList!4476 (extractMap!1290 (toList!4475 lt!1729757)))) (content!8503 (toList!4476 (addToMapMapFromBucket!752 newBucket!178 lt!1729761)))))))

(declare-fun bs!939100 () Bool)

(assert (= bs!939100 d!1418887))

(declare-fun m!5348169 () Bool)

(assert (=> bs!939100 m!5348169))

(declare-fun m!5348171 () Bool)

(assert (=> bs!939100 m!5348171))

(assert (=> b!4558461 d!1418887))

(declare-fun bs!939101 () Bool)

(declare-fun d!1418889 () Bool)

(assert (= bs!939101 (and d!1418889 d!1418805)))

(declare-fun lambda!179443 () Int)

(assert (=> bs!939101 (= lambda!179443 lambda!179423)))

(declare-fun bs!939102 () Bool)

(assert (= bs!939102 (and d!1418889 d!1418847)))

(assert (=> bs!939102 (= lambda!179443 lambda!179437)))

(declare-fun bs!939103 () Bool)

(assert (= bs!939103 (and d!1418889 d!1418867)))

(assert (=> bs!939103 (= lambda!179443 lambda!179438)))

(declare-fun bs!939104 () Bool)

(assert (= bs!939104 (and d!1418889 start!452892)))

(assert (=> bs!939104 (= lambda!179443 lambda!179417)))

(declare-fun bs!939105 () Bool)

(assert (= bs!939105 (and d!1418889 d!1418869)))

(assert (=> bs!939105 (= lambda!179443 lambda!179441)))

(declare-fun lt!1729913 () ListMap!3737)

(assert (=> d!1418889 (invariantList!1066 (toList!4476 lt!1729913))))

(declare-fun e!2841574 () ListMap!3737)

(assert (=> d!1418889 (= lt!1729913 e!2841574)))

(declare-fun c!779416 () Bool)

(assert (=> d!1418889 (= c!779416 ((_ is Cons!50844) (toList!4475 lt!1729757)))))

(assert (=> d!1418889 (forall!10413 (toList!4475 lt!1729757) lambda!179443)))

(assert (=> d!1418889 (= (extractMap!1290 (toList!4475 lt!1729757)) lt!1729913)))

(declare-fun b!4558634 () Bool)

(assert (=> b!4558634 (= e!2841574 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lt!1729757))) (extractMap!1290 (t!357942 (toList!4475 lt!1729757)))))))

(declare-fun b!4558635 () Bool)

(assert (=> b!4558635 (= e!2841574 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418889 c!779416) b!4558634))

(assert (= (and d!1418889 (not c!779416)) b!4558635))

(declare-fun m!5348173 () Bool)

(assert (=> d!1418889 m!5348173))

(declare-fun m!5348175 () Bool)

(assert (=> d!1418889 m!5348175))

(declare-fun m!5348177 () Bool)

(assert (=> b!4558634 m!5348177))

(assert (=> b!4558634 m!5348177))

(declare-fun m!5348179 () Bool)

(assert (=> b!4558634 m!5348179))

(assert (=> b!4558461 d!1418889))

(declare-fun b!4558668 () Bool)

(assert (=> b!4558668 true))

(declare-fun bs!939123 () Bool)

(declare-fun b!4558667 () Bool)

(assert (= bs!939123 (and b!4558667 b!4558668)))

(declare-fun lambda!179509 () Int)

(declare-fun lambda!179508 () Int)

(assert (=> bs!939123 (= lambda!179509 lambda!179508)))

(assert (=> b!4558667 true))

(declare-fun lambda!179510 () Int)

(declare-fun lt!1730037 () ListMap!3737)

(assert (=> bs!939123 (= (= lt!1730037 lt!1729761) (= lambda!179510 lambda!179508))))

(assert (=> b!4558667 (= (= lt!1730037 lt!1729761) (= lambda!179510 lambda!179509))))

(assert (=> b!4558667 true))

(declare-fun bs!939125 () Bool)

(declare-fun d!1418891 () Bool)

(assert (= bs!939125 (and d!1418891 b!4558668)))

(declare-fun lt!1730028 () ListMap!3737)

(declare-fun lambda!179511 () Int)

(assert (=> bs!939125 (= (= lt!1730028 lt!1729761) (= lambda!179511 lambda!179508))))

(declare-fun bs!939126 () Bool)

(assert (= bs!939126 (and d!1418891 b!4558667)))

(assert (=> bs!939126 (= (= lt!1730028 lt!1729761) (= lambda!179511 lambda!179509))))

(assert (=> bs!939126 (= (= lt!1730028 lt!1730037) (= lambda!179511 lambda!179510))))

(assert (=> d!1418891 true))

(declare-fun e!2841592 () ListMap!3737)

(assert (=> b!4558667 (= e!2841592 lt!1730037)))

(declare-fun lt!1730040 () ListMap!3737)

(declare-fun +!1656 (ListMap!3737 tuple2!51370) ListMap!3737)

(assert (=> b!4558667 (= lt!1730040 (+!1656 lt!1729761 (h!56746 newBucket!178)))))

(assert (=> b!4558667 (= lt!1730037 (addToMapMapFromBucket!752 (t!357941 newBucket!178) (+!1656 lt!1729761 (h!56746 newBucket!178))))))

(declare-fun lt!1730038 () Unit!102262)

(declare-fun call!318166 () Unit!102262)

(assert (=> b!4558667 (= lt!1730038 call!318166)))

(declare-fun forall!10415 (List!50967 Int) Bool)

(assert (=> b!4558667 (forall!10415 (toList!4476 lt!1729761) lambda!179509)))

(declare-fun lt!1730020 () Unit!102262)

(assert (=> b!4558667 (= lt!1730020 lt!1730038)))

(declare-fun call!318168 () Bool)

(assert (=> b!4558667 call!318168))

(declare-fun lt!1730029 () Unit!102262)

(declare-fun Unit!102282 () Unit!102262)

(assert (=> b!4558667 (= lt!1730029 Unit!102282)))

(assert (=> b!4558667 (forall!10415 (t!357941 newBucket!178) lambda!179510)))

(declare-fun lt!1730025 () Unit!102262)

(declare-fun Unit!102283 () Unit!102262)

(assert (=> b!4558667 (= lt!1730025 Unit!102283)))

(declare-fun lt!1730033 () Unit!102262)

(declare-fun Unit!102284 () Unit!102262)

(assert (=> b!4558667 (= lt!1730033 Unit!102284)))

(declare-fun lt!1730026 () Unit!102262)

(declare-fun forallContained!2679 (List!50967 Int tuple2!51370) Unit!102262)

(assert (=> b!4558667 (= lt!1730026 (forallContained!2679 (toList!4476 lt!1730040) lambda!179510 (h!56746 newBucket!178)))))

(assert (=> b!4558667 (contains!13690 lt!1730040 (_1!28979 (h!56746 newBucket!178)))))

(declare-fun lt!1730035 () Unit!102262)

(declare-fun Unit!102286 () Unit!102262)

(assert (=> b!4558667 (= lt!1730035 Unit!102286)))

(assert (=> b!4558667 (contains!13690 lt!1730037 (_1!28979 (h!56746 newBucket!178)))))

(declare-fun lt!1730023 () Unit!102262)

(declare-fun Unit!102288 () Unit!102262)

(assert (=> b!4558667 (= lt!1730023 Unit!102288)))

(assert (=> b!4558667 (forall!10415 newBucket!178 lambda!179510)))

(declare-fun lt!1730021 () Unit!102262)

(declare-fun Unit!102289 () Unit!102262)

(assert (=> b!4558667 (= lt!1730021 Unit!102289)))

(declare-fun call!318167 () Bool)

(assert (=> b!4558667 call!318167))

(declare-fun lt!1730034 () Unit!102262)

(declare-fun Unit!102290 () Unit!102262)

(assert (=> b!4558667 (= lt!1730034 Unit!102290)))

(declare-fun lt!1730022 () Unit!102262)

(declare-fun Unit!102291 () Unit!102262)

(assert (=> b!4558667 (= lt!1730022 Unit!102291)))

(declare-fun lt!1730024 () Unit!102262)

(declare-fun addForallContainsKeyThenBeforeAdding!386 (ListMap!3737 ListMap!3737 K!12225 V!12471) Unit!102262)

(assert (=> b!4558667 (= lt!1730024 (addForallContainsKeyThenBeforeAdding!386 lt!1729761 lt!1730037 (_1!28979 (h!56746 newBucket!178)) (_2!28979 (h!56746 newBucket!178))))))

(assert (=> b!4558667 (forall!10415 (toList!4476 lt!1729761) lambda!179510)))

(declare-fun lt!1730039 () Unit!102262)

(assert (=> b!4558667 (= lt!1730039 lt!1730024)))

(assert (=> b!4558667 (forall!10415 (toList!4476 lt!1729761) lambda!179510)))

(declare-fun lt!1730036 () Unit!102262)

(declare-fun Unit!102293 () Unit!102262)

(assert (=> b!4558667 (= lt!1730036 Unit!102293)))

(declare-fun res!1902001 () Bool)

(assert (=> b!4558667 (= res!1902001 (forall!10415 newBucket!178 lambda!179510))))

(declare-fun e!2841590 () Bool)

(assert (=> b!4558667 (=> (not res!1902001) (not e!2841590))))

(assert (=> b!4558667 e!2841590))

(declare-fun lt!1730032 () Unit!102262)

(declare-fun Unit!102294 () Unit!102262)

(assert (=> b!4558667 (= lt!1730032 Unit!102294)))

(assert (=> b!4558668 (= e!2841592 lt!1729761)))

(declare-fun lt!1730030 () Unit!102262)

(assert (=> b!4558668 (= lt!1730030 call!318166)))

(assert (=> b!4558668 call!318168))

(declare-fun lt!1730027 () Unit!102262)

(assert (=> b!4558668 (= lt!1730027 lt!1730030)))

(assert (=> b!4558668 call!318167))

(declare-fun lt!1730031 () Unit!102262)

(declare-fun Unit!102295 () Unit!102262)

(assert (=> b!4558668 (= lt!1730031 Unit!102295)))

(declare-fun b!4558669 () Bool)

(declare-fun e!2841591 () Bool)

(assert (=> b!4558669 (= e!2841591 (invariantList!1066 (toList!4476 lt!1730028)))))

(declare-fun b!4558670 () Bool)

(assert (=> b!4558670 (= e!2841590 (forall!10415 (toList!4476 lt!1729761) lambda!179510))))

(declare-fun bm!318162 () Bool)

(declare-fun c!779422 () Bool)

(assert (=> bm!318162 (= call!318167 (forall!10415 (ite c!779422 (toList!4476 lt!1729761) (toList!4476 lt!1730040)) (ite c!779422 lambda!179508 lambda!179510)))))

(assert (=> d!1418891 e!2841591))

(declare-fun res!1902000 () Bool)

(assert (=> d!1418891 (=> (not res!1902000) (not e!2841591))))

(assert (=> d!1418891 (= res!1902000 (forall!10415 newBucket!178 lambda!179511))))

(assert (=> d!1418891 (= lt!1730028 e!2841592)))

(assert (=> d!1418891 (= c!779422 ((_ is Nil!50843) newBucket!178))))

(assert (=> d!1418891 (noDuplicateKeys!1234 newBucket!178)))

(assert (=> d!1418891 (= (addToMapMapFromBucket!752 newBucket!178 lt!1729761) lt!1730028)))

(declare-fun bm!318161 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!386 (ListMap!3737) Unit!102262)

(assert (=> bm!318161 (= call!318166 (lemmaContainsAllItsOwnKeys!386 lt!1729761))))

(declare-fun b!4558671 () Bool)

(declare-fun res!1901999 () Bool)

(assert (=> b!4558671 (=> (not res!1901999) (not e!2841591))))

(assert (=> b!4558671 (= res!1901999 (forall!10415 (toList!4476 lt!1729761) lambda!179511))))

(declare-fun bm!318163 () Bool)

(assert (=> bm!318163 (= call!318168 (forall!10415 (ite c!779422 (toList!4476 lt!1729761) (toList!4476 lt!1730040)) (ite c!779422 lambda!179508 lambda!179510)))))

(assert (= (and d!1418891 c!779422) b!4558668))

(assert (= (and d!1418891 (not c!779422)) b!4558667))

(assert (= (and b!4558667 res!1902001) b!4558670))

(assert (= (or b!4558668 b!4558667) bm!318162))

(assert (= (or b!4558668 b!4558667) bm!318163))

(assert (= (or b!4558668 b!4558667) bm!318161))

(assert (= (and d!1418891 res!1902000) b!4558671))

(assert (= (and b!4558671 res!1901999) b!4558669))

(declare-fun m!5348231 () Bool)

(assert (=> b!4558671 m!5348231))

(declare-fun m!5348233 () Bool)

(assert (=> d!1418891 m!5348233))

(assert (=> d!1418891 m!5347805))

(declare-fun m!5348235 () Bool)

(assert (=> bm!318163 m!5348235))

(declare-fun m!5348237 () Bool)

(assert (=> b!4558669 m!5348237))

(declare-fun m!5348239 () Bool)

(assert (=> b!4558667 m!5348239))

(declare-fun m!5348241 () Bool)

(assert (=> b!4558667 m!5348241))

(declare-fun m!5348243 () Bool)

(assert (=> b!4558667 m!5348243))

(declare-fun m!5348245 () Bool)

(assert (=> b!4558667 m!5348245))

(declare-fun m!5348247 () Bool)

(assert (=> b!4558667 m!5348247))

(declare-fun m!5348249 () Bool)

(assert (=> b!4558667 m!5348249))

(declare-fun m!5348251 () Bool)

(assert (=> b!4558667 m!5348251))

(assert (=> b!4558667 m!5348243))

(declare-fun m!5348253 () Bool)

(assert (=> b!4558667 m!5348253))

(assert (=> b!4558667 m!5348253))

(declare-fun m!5348255 () Bool)

(assert (=> b!4558667 m!5348255))

(declare-fun m!5348257 () Bool)

(assert (=> b!4558667 m!5348257))

(assert (=> b!4558667 m!5348255))

(assert (=> bm!318162 m!5348235))

(declare-fun m!5348259 () Bool)

(assert (=> bm!318161 m!5348259))

(assert (=> b!4558670 m!5348253))

(assert (=> b!4558461 d!1418891))

(declare-fun bs!939127 () Bool)

(declare-fun d!1418903 () Bool)

(assert (= bs!939127 (and d!1418903 d!1418889)))

(declare-fun lambda!179512 () Int)

(assert (=> bs!939127 (= lambda!179512 lambda!179443)))

(declare-fun bs!939128 () Bool)

(assert (= bs!939128 (and d!1418903 d!1418805)))

(assert (=> bs!939128 (= lambda!179512 lambda!179423)))

(declare-fun bs!939129 () Bool)

(assert (= bs!939129 (and d!1418903 d!1418847)))

(assert (=> bs!939129 (= lambda!179512 lambda!179437)))

(declare-fun bs!939130 () Bool)

(assert (= bs!939130 (and d!1418903 d!1418867)))

(assert (=> bs!939130 (= lambda!179512 lambda!179438)))

(declare-fun bs!939131 () Bool)

(assert (= bs!939131 (and d!1418903 start!452892)))

(assert (=> bs!939131 (= lambda!179512 lambda!179417)))

(declare-fun bs!939132 () Bool)

(assert (= bs!939132 (and d!1418903 d!1418869)))

(assert (=> bs!939132 (= lambda!179512 lambda!179441)))

(declare-fun lt!1730045 () ListMap!3737)

(assert (=> d!1418903 (invariantList!1066 (toList!4476 lt!1730045))))

(declare-fun e!2841601 () ListMap!3737)

(assert (=> d!1418903 (= lt!1730045 e!2841601)))

(declare-fun c!779424 () Bool)

(assert (=> d!1418903 (= c!779424 ((_ is Cons!50844) (t!357942 (toList!4475 lm!1477))))))

(assert (=> d!1418903 (forall!10413 (t!357942 (toList!4475 lm!1477)) lambda!179512)))

(assert (=> d!1418903 (= (extractMap!1290 (t!357942 (toList!4475 lm!1477))) lt!1730045)))

(declare-fun b!4558683 () Bool)

(assert (=> b!4558683 (= e!2841601 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (t!357942 (toList!4475 lm!1477)))) (extractMap!1290 (t!357942 (t!357942 (toList!4475 lm!1477))))))))

(declare-fun b!4558684 () Bool)

(assert (=> b!4558684 (= e!2841601 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418903 c!779424) b!4558683))

(assert (= (and d!1418903 (not c!779424)) b!4558684))

(declare-fun m!5348261 () Bool)

(assert (=> d!1418903 m!5348261))

(declare-fun m!5348263 () Bool)

(assert (=> d!1418903 m!5348263))

(declare-fun m!5348265 () Bool)

(assert (=> b!4558683 m!5348265))

(assert (=> b!4558683 m!5348265))

(declare-fun m!5348267 () Bool)

(assert (=> b!4558683 m!5348267))

(assert (=> b!4558471 d!1418903))

(declare-fun bs!939133 () Bool)

(declare-fun d!1418905 () Bool)

(assert (= bs!939133 (and d!1418905 d!1418889)))

(declare-fun lambda!179516 () Int)

(assert (=> bs!939133 (= lambda!179516 lambda!179443)))

(declare-fun bs!939135 () Bool)

(assert (= bs!939135 (and d!1418905 d!1418847)))

(assert (=> bs!939135 (= lambda!179516 lambda!179437)))

(declare-fun bs!939137 () Bool)

(assert (= bs!939137 (and d!1418905 d!1418867)))

(assert (=> bs!939137 (= lambda!179516 lambda!179438)))

(declare-fun bs!939139 () Bool)

(assert (= bs!939139 (and d!1418905 d!1418903)))

(assert (=> bs!939139 (= lambda!179516 lambda!179512)))

(declare-fun bs!939141 () Bool)

(assert (= bs!939141 (and d!1418905 d!1418805)))

(assert (=> bs!939141 (= lambda!179516 lambda!179423)))

(declare-fun bs!939143 () Bool)

(assert (= bs!939143 (and d!1418905 start!452892)))

(assert (=> bs!939143 (= lambda!179516 lambda!179417)))

(declare-fun bs!939145 () Bool)

(assert (= bs!939145 (and d!1418905 d!1418869)))

(assert (=> bs!939145 (= lambda!179516 lambda!179441)))

(declare-fun lt!1730046 () ListMap!3737)

(assert (=> d!1418905 (invariantList!1066 (toList!4476 lt!1730046))))

(declare-fun e!2841602 () ListMap!3737)

(assert (=> d!1418905 (= lt!1730046 e!2841602)))

(declare-fun c!779425 () Bool)

(assert (=> d!1418905 (= c!779425 ((_ is Cons!50844) (toList!4475 lt!1729759)))))

(assert (=> d!1418905 (forall!10413 (toList!4475 lt!1729759) lambda!179516)))

(assert (=> d!1418905 (= (extractMap!1290 (toList!4475 lt!1729759)) lt!1730046)))

(declare-fun b!4558685 () Bool)

(assert (=> b!4558685 (= e!2841602 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lt!1729759))) (extractMap!1290 (t!357942 (toList!4475 lt!1729759)))))))

(declare-fun b!4558686 () Bool)

(assert (=> b!4558686 (= e!2841602 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418905 c!779425) b!4558685))

(assert (= (and d!1418905 (not c!779425)) b!4558686))

(declare-fun m!5348269 () Bool)

(assert (=> d!1418905 m!5348269))

(declare-fun m!5348271 () Bool)

(assert (=> d!1418905 m!5348271))

(declare-fun m!5348273 () Bool)

(assert (=> b!4558685 m!5348273))

(assert (=> b!4558685 m!5348273))

(declare-fun m!5348275 () Bool)

(assert (=> b!4558685 m!5348275))

(assert (=> b!4558471 d!1418905))

(declare-fun bs!939151 () Bool)

(declare-fun d!1418907 () Bool)

(assert (= bs!939151 (and d!1418907 d!1418889)))

(declare-fun lambda!179517 () Int)

(assert (=> bs!939151 (= lambda!179517 lambda!179443)))

(declare-fun bs!939152 () Bool)

(assert (= bs!939152 (and d!1418907 d!1418905)))

(assert (=> bs!939152 (= lambda!179517 lambda!179516)))

(declare-fun bs!939154 () Bool)

(assert (= bs!939154 (and d!1418907 d!1418847)))

(assert (=> bs!939154 (= lambda!179517 lambda!179437)))

(declare-fun bs!939156 () Bool)

(assert (= bs!939156 (and d!1418907 d!1418867)))

(assert (=> bs!939156 (= lambda!179517 lambda!179438)))

(declare-fun bs!939157 () Bool)

(assert (= bs!939157 (and d!1418907 d!1418903)))

(assert (=> bs!939157 (= lambda!179517 lambda!179512)))

(declare-fun bs!939158 () Bool)

(assert (= bs!939158 (and d!1418907 d!1418805)))

(assert (=> bs!939158 (= lambda!179517 lambda!179423)))

(declare-fun bs!939159 () Bool)

(assert (= bs!939159 (and d!1418907 start!452892)))

(assert (=> bs!939159 (= lambda!179517 lambda!179417)))

(declare-fun bs!939160 () Bool)

(assert (= bs!939160 (and d!1418907 d!1418869)))

(assert (=> bs!939160 (= lambda!179517 lambda!179441)))

(assert (=> d!1418907 (contains!13689 lt!1729759 (hash!3014 hashF!1107 key!3287))))

(declare-fun lt!1730047 () Unit!102262)

(assert (=> d!1418907 (= lt!1730047 (choose!30161 lt!1729759 key!3287 hashF!1107))))

(assert (=> d!1418907 (forall!10413 (toList!4475 lt!1729759) lambda!179517)))

(assert (=> d!1418907 (= (lemmaInGenMapThenLongMapContainsHash!308 lt!1729759 key!3287 hashF!1107) lt!1730047)))

(declare-fun bs!939161 () Bool)

(assert (= bs!939161 d!1418907))

(assert (=> bs!939161 m!5347845))

(assert (=> bs!939161 m!5347845))

(declare-fun m!5348283 () Bool)

(assert (=> bs!939161 m!5348283))

(declare-fun m!5348285 () Bool)

(assert (=> bs!939161 m!5348285))

(declare-fun m!5348287 () Bool)

(assert (=> bs!939161 m!5348287))

(assert (=> b!4558476 d!1418907))

(declare-fun d!1418913 () Bool)

(declare-fun e!2841610 () Bool)

(assert (=> d!1418913 e!2841610))

(declare-fun res!1902012 () Bool)

(assert (=> d!1418913 (=> res!1902012 e!2841610)))

(declare-fun lt!1730057 () Bool)

(assert (=> d!1418913 (= res!1902012 (not lt!1730057))))

(declare-fun lt!1730056 () Bool)

(assert (=> d!1418913 (= lt!1730057 lt!1730056)))

(declare-fun lt!1730058 () Unit!102262)

(declare-fun e!2841609 () Unit!102262)

(assert (=> d!1418913 (= lt!1730058 e!2841609)))

(declare-fun c!779429 () Bool)

(assert (=> d!1418913 (= c!779429 lt!1730056)))

(assert (=> d!1418913 (= lt!1730056 (containsKey!1955 (toList!4475 lt!1729759) lt!1729758))))

(assert (=> d!1418913 (= (contains!13689 lt!1729759 lt!1729758) lt!1730057)))

(declare-fun b!4558698 () Bool)

(declare-fun lt!1730059 () Unit!102262)

(assert (=> b!4558698 (= e!2841609 lt!1730059)))

(assert (=> b!4558698 (= lt!1730059 (lemmaContainsKeyImpliesGetValueByKeyDefined!1094 (toList!4475 lt!1729759) lt!1729758))))

(assert (=> b!4558698 (isDefined!8530 (getValueByKey!1191 (toList!4475 lt!1729759) lt!1729758))))

(declare-fun b!4558699 () Bool)

(declare-fun Unit!102297 () Unit!102262)

(assert (=> b!4558699 (= e!2841609 Unit!102297)))

(declare-fun b!4558700 () Bool)

(assert (=> b!4558700 (= e!2841610 (isDefined!8530 (getValueByKey!1191 (toList!4475 lt!1729759) lt!1729758)))))

(assert (= (and d!1418913 c!779429) b!4558698))

(assert (= (and d!1418913 (not c!779429)) b!4558699))

(assert (= (and d!1418913 (not res!1902012)) b!4558700))

(declare-fun m!5348309 () Bool)

(assert (=> d!1418913 m!5348309))

(declare-fun m!5348311 () Bool)

(assert (=> b!4558698 m!5348311))

(declare-fun m!5348313 () Bool)

(assert (=> b!4558698 m!5348313))

(assert (=> b!4558698 m!5348313))

(declare-fun m!5348315 () Bool)

(assert (=> b!4558698 m!5348315))

(assert (=> b!4558700 m!5348313))

(assert (=> b!4558700 m!5348313))

(assert (=> b!4558700 m!5348315))

(assert (=> b!4558476 d!1418913))

(declare-fun d!1418919 () Bool)

(declare-fun res!1902022 () Bool)

(declare-fun e!2841622 () Bool)

(assert (=> d!1418919 (=> res!1902022 e!2841622)))

(declare-fun e!2841621 () Bool)

(assert (=> d!1418919 (= res!1902022 e!2841621)))

(declare-fun res!1902023 () Bool)

(assert (=> d!1418919 (=> (not res!1902023) (not e!2841621))))

(assert (=> d!1418919 (= res!1902023 ((_ is Cons!50844) lt!1729770))))

(assert (=> d!1418919 (= (containsKeyBiggerList!212 lt!1729770 key!3287) e!2841622)))

(declare-fun b!4558712 () Bool)

(assert (=> b!4558712 (= e!2841621 (containsKey!1953 (_2!28980 (h!56747 lt!1729770)) key!3287))))

(declare-fun b!4558713 () Bool)

(declare-fun e!2841620 () Bool)

(assert (=> b!4558713 (= e!2841622 e!2841620)))

(declare-fun res!1902024 () Bool)

(assert (=> b!4558713 (=> (not res!1902024) (not e!2841620))))

(assert (=> b!4558713 (= res!1902024 ((_ is Cons!50844) lt!1729770))))

(declare-fun b!4558714 () Bool)

(assert (=> b!4558714 (= e!2841620 (containsKeyBiggerList!212 (t!357942 lt!1729770) key!3287))))

(assert (= (and d!1418919 res!1902023) b!4558712))

(assert (= (and d!1418919 (not res!1902022)) b!4558713))

(assert (= (and b!4558713 res!1902024) b!4558714))

(declare-fun m!5348319 () Bool)

(assert (=> b!4558712 m!5348319))

(declare-fun m!5348321 () Bool)

(assert (=> b!4558714 m!5348321))

(assert (=> b!4558465 d!1418919))

(declare-fun b!4558737 () Bool)

(declare-fun e!2841638 () List!50970)

(assert (=> b!4558737 (= e!2841638 (keys!17723 lt!1729753))))

(declare-fun b!4558738 () Bool)

(declare-fun e!2841640 () Bool)

(declare-fun e!2841639 () Bool)

(assert (=> b!4558738 (= e!2841640 e!2841639)))

(declare-fun res!1902034 () Bool)

(assert (=> b!4558738 (=> (not res!1902034) (not e!2841639))))

(declare-datatypes ((Option!11260 0))(
  ( (None!11259) (Some!11259 (v!45031 V!12471)) )
))
(declare-fun isDefined!8532 (Option!11260) Bool)

(declare-fun getValueByKey!1192 (List!50967 K!12225) Option!11260)

(assert (=> b!4558738 (= res!1902034 (isDefined!8532 (getValueByKey!1192 (toList!4476 lt!1729753) key!3287)))))

(declare-fun b!4558739 () Bool)

(declare-fun getKeysList!514 (List!50967) List!50970)

(assert (=> b!4558739 (= e!2841638 (getKeysList!514 (toList!4476 lt!1729753)))))

(declare-fun b!4558740 () Bool)

(declare-fun contains!13692 (List!50970 K!12225) Bool)

(assert (=> b!4558740 (= e!2841639 (contains!13692 (keys!17723 lt!1729753) key!3287))))

(declare-fun b!4558742 () Bool)

(declare-fun e!2841641 () Unit!102262)

(declare-fun Unit!102300 () Unit!102262)

(assert (=> b!4558742 (= e!2841641 Unit!102300)))

(declare-fun b!4558743 () Bool)

(declare-fun e!2841637 () Unit!102262)

(assert (=> b!4558743 (= e!2841637 e!2841641)))

(declare-fun c!779438 () Bool)

(declare-fun call!318175 () Bool)

(assert (=> b!4558743 (= c!779438 call!318175)))

(declare-fun b!4558744 () Bool)

(declare-fun e!2841642 () Bool)

(assert (=> b!4558744 (= e!2841642 (not (contains!13692 (keys!17723 lt!1729753) key!3287)))))

(declare-fun d!1418921 () Bool)

(assert (=> d!1418921 e!2841640))

(declare-fun res!1902035 () Bool)

(assert (=> d!1418921 (=> res!1902035 e!2841640)))

(assert (=> d!1418921 (= res!1902035 e!2841642)))

(declare-fun res!1902033 () Bool)

(assert (=> d!1418921 (=> (not res!1902033) (not e!2841642))))

(declare-fun lt!1730110 () Bool)

(assert (=> d!1418921 (= res!1902033 (not lt!1730110))))

(declare-fun lt!1730111 () Bool)

(assert (=> d!1418921 (= lt!1730110 lt!1730111)))

(declare-fun lt!1730105 () Unit!102262)

(assert (=> d!1418921 (= lt!1730105 e!2841637)))

(declare-fun c!779439 () Bool)

(assert (=> d!1418921 (= c!779439 lt!1730111)))

(declare-fun containsKey!1957 (List!50967 K!12225) Bool)

(assert (=> d!1418921 (= lt!1730111 (containsKey!1957 (toList!4476 lt!1729753) key!3287))))

(assert (=> d!1418921 (= (contains!13690 lt!1729753 key!3287) lt!1730110)))

(declare-fun b!4558741 () Bool)

(assert (=> b!4558741 false))

(declare-fun lt!1730106 () Unit!102262)

(declare-fun lt!1730112 () Unit!102262)

(assert (=> b!4558741 (= lt!1730106 lt!1730112)))

(assert (=> b!4558741 (containsKey!1957 (toList!4476 lt!1729753) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!513 (List!50967 K!12225) Unit!102262)

(assert (=> b!4558741 (= lt!1730112 (lemmaInGetKeysListThenContainsKey!513 (toList!4476 lt!1729753) key!3287))))

(declare-fun Unit!102301 () Unit!102262)

(assert (=> b!4558741 (= e!2841641 Unit!102301)))

(declare-fun bm!318170 () Bool)

(assert (=> bm!318170 (= call!318175 (contains!13692 e!2841638 key!3287))))

(declare-fun c!779440 () Bool)

(assert (=> bm!318170 (= c!779440 c!779439)))

(declare-fun b!4558745 () Bool)

(declare-fun lt!1730109 () Unit!102262)

(assert (=> b!4558745 (= e!2841637 lt!1730109)))

(declare-fun lt!1730107 () Unit!102262)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1096 (List!50967 K!12225) Unit!102262)

(assert (=> b!4558745 (= lt!1730107 (lemmaContainsKeyImpliesGetValueByKeyDefined!1096 (toList!4476 lt!1729753) key!3287))))

(assert (=> b!4558745 (isDefined!8532 (getValueByKey!1192 (toList!4476 lt!1729753) key!3287))))

(declare-fun lt!1730108 () Unit!102262)

(assert (=> b!4558745 (= lt!1730108 lt!1730107)))

(declare-fun lemmaInListThenGetKeysListContains!510 (List!50967 K!12225) Unit!102262)

(assert (=> b!4558745 (= lt!1730109 (lemmaInListThenGetKeysListContains!510 (toList!4476 lt!1729753) key!3287))))

(assert (=> b!4558745 call!318175))

(assert (= (and d!1418921 c!779439) b!4558745))

(assert (= (and d!1418921 (not c!779439)) b!4558743))

(assert (= (and b!4558743 c!779438) b!4558741))

(assert (= (and b!4558743 (not c!779438)) b!4558742))

(assert (= (or b!4558745 b!4558743) bm!318170))

(assert (= (and bm!318170 c!779440) b!4558739))

(assert (= (and bm!318170 (not c!779440)) b!4558737))

(assert (= (and d!1418921 res!1902033) b!4558744))

(assert (= (and d!1418921 (not res!1902035)) b!4558738))

(assert (= (and b!4558738 res!1902034) b!4558740))

(declare-fun m!5348375 () Bool)

(assert (=> b!4558737 m!5348375))

(declare-fun m!5348377 () Bool)

(assert (=> b!4558739 m!5348377))

(assert (=> b!4558740 m!5348375))

(assert (=> b!4558740 m!5348375))

(declare-fun m!5348379 () Bool)

(assert (=> b!4558740 m!5348379))

(declare-fun m!5348381 () Bool)

(assert (=> bm!318170 m!5348381))

(declare-fun m!5348383 () Bool)

(assert (=> b!4558738 m!5348383))

(assert (=> b!4558738 m!5348383))

(declare-fun m!5348385 () Bool)

(assert (=> b!4558738 m!5348385))

(declare-fun m!5348387 () Bool)

(assert (=> b!4558745 m!5348387))

(assert (=> b!4558745 m!5348383))

(assert (=> b!4558745 m!5348383))

(assert (=> b!4558745 m!5348385))

(declare-fun m!5348389 () Bool)

(assert (=> b!4558745 m!5348389))

(declare-fun m!5348391 () Bool)

(assert (=> b!4558741 m!5348391))

(declare-fun m!5348393 () Bool)

(assert (=> b!4558741 m!5348393))

(assert (=> d!1418921 m!5348391))

(assert (=> b!4558744 m!5348375))

(assert (=> b!4558744 m!5348375))

(assert (=> b!4558744 m!5348379))

(assert (=> b!4558464 d!1418921))

(declare-fun bs!939204 () Bool)

(declare-fun d!1418931 () Bool)

(assert (= bs!939204 (and d!1418931 d!1418889)))

(declare-fun lambda!179526 () Int)

(assert (=> bs!939204 (= lambda!179526 lambda!179443)))

(declare-fun bs!939205 () Bool)

(assert (= bs!939205 (and d!1418931 d!1418907)))

(assert (=> bs!939205 (= lambda!179526 lambda!179517)))

(declare-fun bs!939207 () Bool)

(assert (= bs!939207 (and d!1418931 d!1418905)))

(assert (=> bs!939207 (= lambda!179526 lambda!179516)))

(declare-fun bs!939208 () Bool)

(assert (= bs!939208 (and d!1418931 d!1418847)))

(assert (=> bs!939208 (= lambda!179526 lambda!179437)))

(declare-fun bs!939209 () Bool)

(assert (= bs!939209 (and d!1418931 d!1418867)))

(assert (=> bs!939209 (= lambda!179526 lambda!179438)))

(declare-fun bs!939210 () Bool)

(assert (= bs!939210 (and d!1418931 d!1418903)))

(assert (=> bs!939210 (= lambda!179526 lambda!179512)))

(declare-fun bs!939211 () Bool)

(assert (= bs!939211 (and d!1418931 d!1418805)))

(assert (=> bs!939211 (= lambda!179526 lambda!179423)))

(declare-fun bs!939212 () Bool)

(assert (= bs!939212 (and d!1418931 start!452892)))

(assert (=> bs!939212 (= lambda!179526 lambda!179417)))

(declare-fun bs!939213 () Bool)

(assert (= bs!939213 (and d!1418931 d!1418869)))

(assert (=> bs!939213 (= lambda!179526 lambda!179441)))

(declare-fun lt!1730113 () ListMap!3737)

(assert (=> d!1418931 (invariantList!1066 (toList!4476 lt!1730113))))

(declare-fun e!2841643 () ListMap!3737)

(assert (=> d!1418931 (= lt!1730113 e!2841643)))

(declare-fun c!779441 () Bool)

(assert (=> d!1418931 (= c!779441 ((_ is Cons!50844) (Cons!50844 lt!1729749 Nil!50844)))))

(assert (=> d!1418931 (forall!10413 (Cons!50844 lt!1729749 Nil!50844) lambda!179526)))

(assert (=> d!1418931 (= (extractMap!1290 (Cons!50844 lt!1729749 Nil!50844)) lt!1730113)))

(declare-fun b!4558746 () Bool)

(assert (=> b!4558746 (= e!2841643 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (Cons!50844 lt!1729749 Nil!50844))) (extractMap!1290 (t!357942 (Cons!50844 lt!1729749 Nil!50844)))))))

(declare-fun b!4558747 () Bool)

(assert (=> b!4558747 (= e!2841643 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418931 c!779441) b!4558746))

(assert (= (and d!1418931 (not c!779441)) b!4558747))

(declare-fun m!5348413 () Bool)

(assert (=> d!1418931 m!5348413))

(declare-fun m!5348415 () Bool)

(assert (=> d!1418931 m!5348415))

(declare-fun m!5348417 () Bool)

(assert (=> b!4558746 m!5348417))

(assert (=> b!4558746 m!5348417))

(declare-fun m!5348419 () Bool)

(assert (=> b!4558746 m!5348419))

(assert (=> b!4558474 d!1418931))

(declare-fun d!1418939 () Bool)

(declare-fun e!2841646 () Bool)

(assert (=> d!1418939 e!2841646))

(declare-fun res!1902038 () Bool)

(assert (=> d!1418939 (=> (not res!1902038) (not e!2841646))))

(declare-fun lt!1730118 () ListLongMap!3107)

(assert (=> d!1418939 (= res!1902038 (contains!13689 lt!1730118 (_1!28980 lt!1729749)))))

(declare-fun lt!1730119 () List!50968)

(assert (=> d!1418939 (= lt!1730118 (ListLongMap!3108 lt!1730119))))

(declare-fun lt!1730116 () Unit!102262)

(declare-fun lt!1730117 () Unit!102262)

(assert (=> d!1418939 (= lt!1730116 lt!1730117)))

(assert (=> d!1418939 (= (getValueByKey!1191 lt!1730119 (_1!28980 lt!1729749)) (Some!11258 (_2!28980 lt!1729749)))))

(assert (=> d!1418939 (= lt!1730117 (lemmaContainsTupThenGetReturnValue!748 lt!1730119 (_1!28980 lt!1729749) (_2!28980 lt!1729749)))))

(assert (=> d!1418939 (= lt!1730119 (insertStrictlySorted!456 (toList!4475 lm!1477) (_1!28980 lt!1729749) (_2!28980 lt!1729749)))))

(assert (=> d!1418939 (= (+!1654 lm!1477 lt!1729749) lt!1730118)))

(declare-fun b!4558751 () Bool)

(declare-fun res!1902037 () Bool)

(assert (=> b!4558751 (=> (not res!1902037) (not e!2841646))))

(assert (=> b!4558751 (= res!1902037 (= (getValueByKey!1191 (toList!4475 lt!1730118) (_1!28980 lt!1729749)) (Some!11258 (_2!28980 lt!1729749))))))

(declare-fun b!4558752 () Bool)

(assert (=> b!4558752 (= e!2841646 (contains!13688 (toList!4475 lt!1730118) lt!1729749))))

(assert (= (and d!1418939 res!1902038) b!4558751))

(assert (= (and b!4558751 res!1902037) b!4558752))

(declare-fun m!5348421 () Bool)

(assert (=> d!1418939 m!5348421))

(declare-fun m!5348423 () Bool)

(assert (=> d!1418939 m!5348423))

(declare-fun m!5348425 () Bool)

(assert (=> d!1418939 m!5348425))

(declare-fun m!5348427 () Bool)

(assert (=> d!1418939 m!5348427))

(declare-fun m!5348429 () Bool)

(assert (=> b!4558751 m!5348429))

(declare-fun m!5348431 () Bool)

(assert (=> b!4558752 m!5348431))

(assert (=> b!4558474 d!1418939))

(declare-fun bs!939224 () Bool)

(declare-fun d!1418941 () Bool)

(assert (= bs!939224 (and d!1418941 d!1418889)))

(declare-fun lambda!179528 () Int)

(assert (=> bs!939224 (= lambda!179528 lambda!179443)))

(declare-fun bs!939226 () Bool)

(assert (= bs!939226 (and d!1418941 d!1418907)))

(assert (=> bs!939226 (= lambda!179528 lambda!179517)))

(declare-fun bs!939227 () Bool)

(assert (= bs!939227 (and d!1418941 d!1418905)))

(assert (=> bs!939227 (= lambda!179528 lambda!179516)))

(declare-fun bs!939228 () Bool)

(assert (= bs!939228 (and d!1418941 d!1418931)))

(assert (=> bs!939228 (= lambda!179528 lambda!179526)))

(declare-fun bs!939230 () Bool)

(assert (= bs!939230 (and d!1418941 d!1418847)))

(assert (=> bs!939230 (= lambda!179528 lambda!179437)))

(declare-fun bs!939232 () Bool)

(assert (= bs!939232 (and d!1418941 d!1418867)))

(assert (=> bs!939232 (= lambda!179528 lambda!179438)))

(declare-fun bs!939234 () Bool)

(assert (= bs!939234 (and d!1418941 d!1418903)))

(assert (=> bs!939234 (= lambda!179528 lambda!179512)))

(declare-fun bs!939235 () Bool)

(assert (= bs!939235 (and d!1418941 d!1418805)))

(assert (=> bs!939235 (= lambda!179528 lambda!179423)))

(declare-fun bs!939236 () Bool)

(assert (= bs!939236 (and d!1418941 start!452892)))

(assert (=> bs!939236 (= lambda!179528 lambda!179417)))

(declare-fun bs!939237 () Bool)

(assert (= bs!939237 (and d!1418941 d!1418869)))

(assert (=> bs!939237 (= lambda!179528 lambda!179441)))

(declare-fun lt!1730120 () ListMap!3737)

(assert (=> d!1418941 (invariantList!1066 (toList!4476 lt!1730120))))

(declare-fun e!2841647 () ListMap!3737)

(assert (=> d!1418941 (= lt!1730120 e!2841647)))

(declare-fun c!779443 () Bool)

(assert (=> d!1418941 (= c!779443 ((_ is Cons!50844) (Cons!50844 lt!1729765 Nil!50844)))))

(assert (=> d!1418941 (forall!10413 (Cons!50844 lt!1729765 Nil!50844) lambda!179528)))

(assert (=> d!1418941 (= (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844)) lt!1730120)))

(declare-fun b!4558753 () Bool)

(assert (=> b!4558753 (= e!2841647 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (Cons!50844 lt!1729765 Nil!50844))) (extractMap!1290 (t!357942 (Cons!50844 lt!1729765 Nil!50844)))))))

(declare-fun b!4558754 () Bool)

(assert (=> b!4558754 (= e!2841647 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418941 c!779443) b!4558753))

(assert (= (and d!1418941 (not c!779443)) b!4558754))

(declare-fun m!5348441 () Bool)

(assert (=> d!1418941 m!5348441))

(declare-fun m!5348443 () Bool)

(assert (=> d!1418941 m!5348443))

(declare-fun m!5348445 () Bool)

(assert (=> b!4558753 m!5348445))

(assert (=> b!4558753 m!5348445))

(declare-fun m!5348447 () Bool)

(assert (=> b!4558753 m!5348447))

(assert (=> b!4558474 d!1418941))

(declare-fun bs!939254 () Bool)

(declare-fun d!1418945 () Bool)

(assert (= bs!939254 (and d!1418945 d!1418889)))

(declare-fun lambda!179532 () Int)

(assert (=> bs!939254 (= lambda!179532 lambda!179443)))

(declare-fun bs!939255 () Bool)

(assert (= bs!939255 (and d!1418945 d!1418905)))

(assert (=> bs!939255 (= lambda!179532 lambda!179516)))

(declare-fun bs!939256 () Bool)

(assert (= bs!939256 (and d!1418945 d!1418931)))

(assert (=> bs!939256 (= lambda!179532 lambda!179526)))

(declare-fun bs!939257 () Bool)

(assert (= bs!939257 (and d!1418945 d!1418847)))

(assert (=> bs!939257 (= lambda!179532 lambda!179437)))

(declare-fun bs!939258 () Bool)

(assert (= bs!939258 (and d!1418945 d!1418867)))

(assert (=> bs!939258 (= lambda!179532 lambda!179438)))

(declare-fun bs!939259 () Bool)

(assert (= bs!939259 (and d!1418945 d!1418903)))

(assert (=> bs!939259 (= lambda!179532 lambda!179512)))

(declare-fun bs!939260 () Bool)

(assert (= bs!939260 (and d!1418945 d!1418805)))

(assert (=> bs!939260 (= lambda!179532 lambda!179423)))

(declare-fun bs!939261 () Bool)

(assert (= bs!939261 (and d!1418945 d!1418907)))

(assert (=> bs!939261 (= lambda!179532 lambda!179517)))

(declare-fun bs!939262 () Bool)

(assert (= bs!939262 (and d!1418945 d!1418941)))

(assert (=> bs!939262 (= lambda!179532 lambda!179528)))

(declare-fun bs!939263 () Bool)

(assert (= bs!939263 (and d!1418945 start!452892)))

(assert (=> bs!939263 (= lambda!179532 lambda!179417)))

(declare-fun bs!939264 () Bool)

(assert (= bs!939264 (and d!1418945 d!1418869)))

(assert (=> bs!939264 (= lambda!179532 lambda!179441)))

(assert (=> d!1418945 (contains!13690 (extractMap!1290 (toList!4475 (ListLongMap!3108 lt!1729770))) key!3287)))

(declare-fun lt!1730124 () Unit!102262)

(declare-fun choose!30167 (ListLongMap!3107 K!12225 Hashable!5629) Unit!102262)

(assert (=> d!1418945 (= lt!1730124 (choose!30167 (ListLongMap!3108 lt!1729770) key!3287 hashF!1107))))

(assert (=> d!1418945 (forall!10413 (toList!4475 (ListLongMap!3108 lt!1729770)) lambda!179532)))

(assert (=> d!1418945 (= (lemmaListContainsThenExtractedMapContains!200 (ListLongMap!3108 lt!1729770) key!3287 hashF!1107) lt!1730124)))

(declare-fun bs!939265 () Bool)

(assert (= bs!939265 d!1418945))

(declare-fun m!5348461 () Bool)

(assert (=> bs!939265 m!5348461))

(assert (=> bs!939265 m!5348461))

(declare-fun m!5348463 () Bool)

(assert (=> bs!939265 m!5348463))

(declare-fun m!5348465 () Bool)

(assert (=> bs!939265 m!5348465))

(declare-fun m!5348467 () Bool)

(assert (=> bs!939265 m!5348467))

(assert (=> b!4558474 d!1418945))

(declare-fun d!1418951 () Bool)

(assert (=> d!1418951 (eq!685 (extractMap!1290 (Cons!50844 (tuple2!51373 hash!344 newBucket!178) Nil!50844)) (-!454 (extractMap!1290 (Cons!50844 (tuple2!51373 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477)))) Nil!50844)) key!3287))))

(declare-fun lt!1730130 () Unit!102262)

(declare-fun choose!30168 ((_ BitVec 64) List!50967 List!50967 K!12225 Hashable!5629) Unit!102262)

(assert (=> d!1418951 (= lt!1730130 (choose!30168 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1418951 (noDuplicateKeys!1234 (_2!28980 (h!56747 (toList!4475 lm!1477))))))

(assert (=> d!1418951 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!74 hash!344 (_2!28980 (h!56747 (toList!4475 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1730130)))

(declare-fun bs!939284 () Bool)

(assert (= bs!939284 d!1418951))

(declare-fun m!5348489 () Bool)

(assert (=> bs!939284 m!5348489))

(declare-fun m!5348491 () Bool)

(assert (=> bs!939284 m!5348491))

(assert (=> bs!939284 m!5348489))

(declare-fun m!5348493 () Bool)

(assert (=> bs!939284 m!5348493))

(declare-fun m!5348495 () Bool)

(assert (=> bs!939284 m!5348495))

(declare-fun m!5348497 () Bool)

(assert (=> bs!939284 m!5348497))

(declare-fun m!5348499 () Bool)

(assert (=> bs!939284 m!5348499))

(assert (=> bs!939284 m!5348497))

(assert (=> bs!939284 m!5348493))

(assert (=> b!4558474 d!1418951))

(declare-fun b!4558777 () Bool)

(declare-fun e!2841668 () List!50970)

(assert (=> b!4558777 (= e!2841668 (keys!17723 (extractMap!1290 lt!1729770)))))

(declare-fun b!4558778 () Bool)

(declare-fun e!2841670 () Bool)

(declare-fun e!2841669 () Bool)

(assert (=> b!4558778 (= e!2841670 e!2841669)))

(declare-fun res!1902055 () Bool)

(assert (=> b!4558778 (=> (not res!1902055) (not e!2841669))))

(assert (=> b!4558778 (= res!1902055 (isDefined!8532 (getValueByKey!1192 (toList!4476 (extractMap!1290 lt!1729770)) key!3287)))))

(declare-fun b!4558779 () Bool)

(assert (=> b!4558779 (= e!2841668 (getKeysList!514 (toList!4476 (extractMap!1290 lt!1729770))))))

(declare-fun b!4558780 () Bool)

(assert (=> b!4558780 (= e!2841669 (contains!13692 (keys!17723 (extractMap!1290 lt!1729770)) key!3287))))

(declare-fun b!4558782 () Bool)

(declare-fun e!2841671 () Unit!102262)

(declare-fun Unit!102313 () Unit!102262)

(assert (=> b!4558782 (= e!2841671 Unit!102313)))

(declare-fun b!4558783 () Bool)

(declare-fun e!2841667 () Unit!102262)

(assert (=> b!4558783 (= e!2841667 e!2841671)))

(declare-fun c!779445 () Bool)

(declare-fun call!318176 () Bool)

(assert (=> b!4558783 (= c!779445 call!318176)))

(declare-fun b!4558784 () Bool)

(declare-fun e!2841672 () Bool)

(assert (=> b!4558784 (= e!2841672 (not (contains!13692 (keys!17723 (extractMap!1290 lt!1729770)) key!3287)))))

(declare-fun d!1418959 () Bool)

(assert (=> d!1418959 e!2841670))

(declare-fun res!1902056 () Bool)

(assert (=> d!1418959 (=> res!1902056 e!2841670)))

(assert (=> d!1418959 (= res!1902056 e!2841672)))

(declare-fun res!1902054 () Bool)

(assert (=> d!1418959 (=> (not res!1902054) (not e!2841672))))

(declare-fun lt!1730136 () Bool)

(assert (=> d!1418959 (= res!1902054 (not lt!1730136))))

(declare-fun lt!1730137 () Bool)

(assert (=> d!1418959 (= lt!1730136 lt!1730137)))

(declare-fun lt!1730131 () Unit!102262)

(assert (=> d!1418959 (= lt!1730131 e!2841667)))

(declare-fun c!779446 () Bool)

(assert (=> d!1418959 (= c!779446 lt!1730137)))

(assert (=> d!1418959 (= lt!1730137 (containsKey!1957 (toList!4476 (extractMap!1290 lt!1729770)) key!3287))))

(assert (=> d!1418959 (= (contains!13690 (extractMap!1290 lt!1729770) key!3287) lt!1730136)))

(declare-fun b!4558781 () Bool)

(assert (=> b!4558781 false))

(declare-fun lt!1730132 () Unit!102262)

(declare-fun lt!1730138 () Unit!102262)

(assert (=> b!4558781 (= lt!1730132 lt!1730138)))

(assert (=> b!4558781 (containsKey!1957 (toList!4476 (extractMap!1290 lt!1729770)) key!3287)))

(assert (=> b!4558781 (= lt!1730138 (lemmaInGetKeysListThenContainsKey!513 (toList!4476 (extractMap!1290 lt!1729770)) key!3287))))

(declare-fun Unit!102314 () Unit!102262)

(assert (=> b!4558781 (= e!2841671 Unit!102314)))

(declare-fun bm!318171 () Bool)

(assert (=> bm!318171 (= call!318176 (contains!13692 e!2841668 key!3287))))

(declare-fun c!779447 () Bool)

(assert (=> bm!318171 (= c!779447 c!779446)))

(declare-fun b!4558785 () Bool)

(declare-fun lt!1730135 () Unit!102262)

(assert (=> b!4558785 (= e!2841667 lt!1730135)))

(declare-fun lt!1730133 () Unit!102262)

(assert (=> b!4558785 (= lt!1730133 (lemmaContainsKeyImpliesGetValueByKeyDefined!1096 (toList!4476 (extractMap!1290 lt!1729770)) key!3287))))

(assert (=> b!4558785 (isDefined!8532 (getValueByKey!1192 (toList!4476 (extractMap!1290 lt!1729770)) key!3287))))

(declare-fun lt!1730134 () Unit!102262)

(assert (=> b!4558785 (= lt!1730134 lt!1730133)))

(assert (=> b!4558785 (= lt!1730135 (lemmaInListThenGetKeysListContains!510 (toList!4476 (extractMap!1290 lt!1729770)) key!3287))))

(assert (=> b!4558785 call!318176))

(assert (= (and d!1418959 c!779446) b!4558785))

(assert (= (and d!1418959 (not c!779446)) b!4558783))

(assert (= (and b!4558783 c!779445) b!4558781))

(assert (= (and b!4558783 (not c!779445)) b!4558782))

(assert (= (or b!4558785 b!4558783) bm!318171))

(assert (= (and bm!318171 c!779447) b!4558779))

(assert (= (and bm!318171 (not c!779447)) b!4558777))

(assert (= (and d!1418959 res!1902054) b!4558784))

(assert (= (and d!1418959 (not res!1902056)) b!4558778))

(assert (= (and b!4558778 res!1902055) b!4558780))

(assert (=> b!4558777 m!5347767))

(declare-fun m!5348503 () Bool)

(assert (=> b!4558777 m!5348503))

(declare-fun m!5348505 () Bool)

(assert (=> b!4558779 m!5348505))

(assert (=> b!4558780 m!5347767))

(assert (=> b!4558780 m!5348503))

(assert (=> b!4558780 m!5348503))

(declare-fun m!5348507 () Bool)

(assert (=> b!4558780 m!5348507))

(declare-fun m!5348509 () Bool)

(assert (=> bm!318171 m!5348509))

(declare-fun m!5348511 () Bool)

(assert (=> b!4558778 m!5348511))

(assert (=> b!4558778 m!5348511))

(declare-fun m!5348513 () Bool)

(assert (=> b!4558778 m!5348513))

(declare-fun m!5348515 () Bool)

(assert (=> b!4558785 m!5348515))

(assert (=> b!4558785 m!5348511))

(assert (=> b!4558785 m!5348511))

(assert (=> b!4558785 m!5348513))

(declare-fun m!5348517 () Bool)

(assert (=> b!4558785 m!5348517))

(declare-fun m!5348519 () Bool)

(assert (=> b!4558781 m!5348519))

(declare-fun m!5348521 () Bool)

(assert (=> b!4558781 m!5348521))

(assert (=> d!1418959 m!5348519))

(assert (=> b!4558784 m!5347767))

(assert (=> b!4558784 m!5348503))

(assert (=> b!4558784 m!5348503))

(assert (=> b!4558784 m!5348507))

(assert (=> b!4558474 d!1418959))

(declare-fun d!1418965 () Bool)

(assert (=> d!1418965 (= (eq!685 (extractMap!1290 (Cons!50844 lt!1729749 Nil!50844)) (-!454 (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844)) key!3287)) (= (content!8503 (toList!4476 (extractMap!1290 (Cons!50844 lt!1729749 Nil!50844)))) (content!8503 (toList!4476 (-!454 (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844)) key!3287)))))))

(declare-fun bs!939287 () Bool)

(assert (= bs!939287 d!1418965))

(declare-fun m!5348523 () Bool)

(assert (=> bs!939287 m!5348523))

(declare-fun m!5348525 () Bool)

(assert (=> bs!939287 m!5348525))

(assert (=> b!4558474 d!1418965))

(declare-fun d!1418967 () Bool)

(declare-fun e!2841676 () Bool)

(assert (=> d!1418967 e!2841676))

(declare-fun res!1902057 () Bool)

(assert (=> d!1418967 (=> (not res!1902057) (not e!2841676))))

(declare-fun lt!1730139 () ListMap!3737)

(assert (=> d!1418967 (= res!1902057 (not (contains!13690 lt!1730139 key!3287)))))

(assert (=> d!1418967 (= lt!1730139 (ListMap!3738 (removePresrvNoDuplicatedKeys!189 (toList!4476 (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844))) key!3287)))))

(assert (=> d!1418967 (= (-!454 (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844)) key!3287) lt!1730139)))

(declare-fun b!4558791 () Bool)

(assert (=> b!4558791 (= e!2841676 (= ((_ map and) (content!8504 (keys!17723 (extractMap!1290 (Cons!50844 lt!1729765 Nil!50844)))) ((_ map not) (store ((as const (Array K!12225 Bool)) false) key!3287 true))) (content!8504 (keys!17723 lt!1730139))))))

(assert (= (and d!1418967 res!1902057) b!4558791))

(declare-fun m!5348527 () Bool)

(assert (=> d!1418967 m!5348527))

(declare-fun m!5348529 () Bool)

(assert (=> d!1418967 m!5348529))

(declare-fun m!5348531 () Bool)

(assert (=> b!4558791 m!5348531))

(declare-fun m!5348533 () Bool)

(assert (=> b!4558791 m!5348533))

(declare-fun m!5348535 () Bool)

(assert (=> b!4558791 m!5348535))

(declare-fun m!5348537 () Bool)

(assert (=> b!4558791 m!5348537))

(assert (=> b!4558791 m!5348531))

(assert (=> b!4558791 m!5348167))

(assert (=> b!4558791 m!5347775))

(assert (=> b!4558791 m!5348535))

(assert (=> b!4558474 d!1418967))

(declare-fun bs!939288 () Bool)

(declare-fun d!1418969 () Bool)

(assert (= bs!939288 (and d!1418969 d!1418889)))

(declare-fun lambda!179536 () Int)

(assert (=> bs!939288 (= lambda!179536 lambda!179443)))

(declare-fun bs!939289 () Bool)

(assert (= bs!939289 (and d!1418969 d!1418945)))

(assert (=> bs!939289 (= lambda!179536 lambda!179532)))

(declare-fun bs!939290 () Bool)

(assert (= bs!939290 (and d!1418969 d!1418905)))

(assert (=> bs!939290 (= lambda!179536 lambda!179516)))

(declare-fun bs!939291 () Bool)

(assert (= bs!939291 (and d!1418969 d!1418931)))

(assert (=> bs!939291 (= lambda!179536 lambda!179526)))

(declare-fun bs!939292 () Bool)

(assert (= bs!939292 (and d!1418969 d!1418847)))

(assert (=> bs!939292 (= lambda!179536 lambda!179437)))

(declare-fun bs!939293 () Bool)

(assert (= bs!939293 (and d!1418969 d!1418867)))

(assert (=> bs!939293 (= lambda!179536 lambda!179438)))

(declare-fun bs!939294 () Bool)

(assert (= bs!939294 (and d!1418969 d!1418903)))

(assert (=> bs!939294 (= lambda!179536 lambda!179512)))

(declare-fun bs!939295 () Bool)

(assert (= bs!939295 (and d!1418969 d!1418805)))

(assert (=> bs!939295 (= lambda!179536 lambda!179423)))

(declare-fun bs!939296 () Bool)

(assert (= bs!939296 (and d!1418969 d!1418907)))

(assert (=> bs!939296 (= lambda!179536 lambda!179517)))

(declare-fun bs!939297 () Bool)

(assert (= bs!939297 (and d!1418969 d!1418941)))

(assert (=> bs!939297 (= lambda!179536 lambda!179528)))

(declare-fun bs!939298 () Bool)

(assert (= bs!939298 (and d!1418969 start!452892)))

(assert (=> bs!939298 (= lambda!179536 lambda!179417)))

(declare-fun bs!939299 () Bool)

(assert (= bs!939299 (and d!1418969 d!1418869)))

(assert (=> bs!939299 (= lambda!179536 lambda!179441)))

(declare-fun lt!1730140 () ListMap!3737)

(assert (=> d!1418969 (invariantList!1066 (toList!4476 lt!1730140))))

(declare-fun e!2841677 () ListMap!3737)

(assert (=> d!1418969 (= lt!1730140 e!2841677)))

(declare-fun c!779448 () Bool)

(assert (=> d!1418969 (= c!779448 ((_ is Cons!50844) lt!1729770))))

(assert (=> d!1418969 (forall!10413 lt!1729770 lambda!179536)))

(assert (=> d!1418969 (= (extractMap!1290 lt!1729770) lt!1730140)))

(declare-fun b!4558792 () Bool)

(assert (=> b!4558792 (= e!2841677 (addToMapMapFromBucket!752 (_2!28980 (h!56747 lt!1729770)) (extractMap!1290 (t!357942 lt!1729770))))))

(declare-fun b!4558793 () Bool)

(assert (=> b!4558793 (= e!2841677 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418969 c!779448) b!4558792))

(assert (= (and d!1418969 (not c!779448)) b!4558793))

(declare-fun m!5348539 () Bool)

(assert (=> d!1418969 m!5348539))

(declare-fun m!5348541 () Bool)

(assert (=> d!1418969 m!5348541))

(declare-fun m!5348543 () Bool)

(assert (=> b!4558792 m!5348543))

(assert (=> b!4558792 m!5348543))

(declare-fun m!5348545 () Bool)

(assert (=> b!4558792 m!5348545))

(assert (=> b!4558474 d!1418969))

(declare-fun d!1418971 () Bool)

(assert (=> d!1418971 (= (tail!7850 (toList!4475 lt!1729757)) (t!357942 (toList!4475 lt!1729757)))))

(assert (=> b!4558474 d!1418971))

(declare-fun d!1418973 () Bool)

(declare-fun res!1902062 () Bool)

(declare-fun e!2841682 () Bool)

(assert (=> d!1418973 (=> res!1902062 e!2841682)))

(assert (=> d!1418973 (= res!1902062 (and ((_ is Cons!50843) (_2!28980 (h!56747 (toList!4475 lm!1477)))) (= (_1!28979 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477))))) key!3287)))))

(assert (=> d!1418973 (= (containsKey!1953 (_2!28980 (h!56747 (toList!4475 lm!1477))) key!3287) e!2841682)))

(declare-fun b!4558798 () Bool)

(declare-fun e!2841683 () Bool)

(assert (=> b!4558798 (= e!2841682 e!2841683)))

(declare-fun res!1902063 () Bool)

(assert (=> b!4558798 (=> (not res!1902063) (not e!2841683))))

(assert (=> b!4558798 (= res!1902063 ((_ is Cons!50843) (_2!28980 (h!56747 (toList!4475 lm!1477)))))))

(declare-fun b!4558799 () Bool)

(assert (=> b!4558799 (= e!2841683 (containsKey!1953 (t!357941 (_2!28980 (h!56747 (toList!4475 lm!1477)))) key!3287))))

(assert (= (and d!1418973 (not res!1902062)) b!4558798))

(assert (= (and b!4558798 res!1902063) b!4558799))

(declare-fun m!5348547 () Bool)

(assert (=> b!4558799 m!5348547))

(assert (=> b!4558463 d!1418973))

(declare-fun b!4558800 () Bool)

(declare-fun e!2841685 () List!50970)

(assert (=> b!4558800 (= e!2841685 (keys!17723 lt!1729746))))

(declare-fun b!4558801 () Bool)

(declare-fun e!2841687 () Bool)

(declare-fun e!2841686 () Bool)

(assert (=> b!4558801 (= e!2841687 e!2841686)))

(declare-fun res!1902065 () Bool)

(assert (=> b!4558801 (=> (not res!1902065) (not e!2841686))))

(assert (=> b!4558801 (= res!1902065 (isDefined!8532 (getValueByKey!1192 (toList!4476 lt!1729746) key!3287)))))

(declare-fun b!4558802 () Bool)

(assert (=> b!4558802 (= e!2841685 (getKeysList!514 (toList!4476 lt!1729746)))))

(declare-fun b!4558803 () Bool)

(assert (=> b!4558803 (= e!2841686 (contains!13692 (keys!17723 lt!1729746) key!3287))))

(declare-fun b!4558805 () Bool)

(declare-fun e!2841688 () Unit!102262)

(declare-fun Unit!102315 () Unit!102262)

(assert (=> b!4558805 (= e!2841688 Unit!102315)))

(declare-fun b!4558806 () Bool)

(declare-fun e!2841684 () Unit!102262)

(assert (=> b!4558806 (= e!2841684 e!2841688)))

(declare-fun c!779449 () Bool)

(declare-fun call!318177 () Bool)

(assert (=> b!4558806 (= c!779449 call!318177)))

(declare-fun b!4558807 () Bool)

(declare-fun e!2841689 () Bool)

(assert (=> b!4558807 (= e!2841689 (not (contains!13692 (keys!17723 lt!1729746) key!3287)))))

(declare-fun d!1418975 () Bool)

(assert (=> d!1418975 e!2841687))

(declare-fun res!1902066 () Bool)

(assert (=> d!1418975 (=> res!1902066 e!2841687)))

(assert (=> d!1418975 (= res!1902066 e!2841689)))

(declare-fun res!1902064 () Bool)

(assert (=> d!1418975 (=> (not res!1902064) (not e!2841689))))

(declare-fun lt!1730146 () Bool)

(assert (=> d!1418975 (= res!1902064 (not lt!1730146))))

(declare-fun lt!1730147 () Bool)

(assert (=> d!1418975 (= lt!1730146 lt!1730147)))

(declare-fun lt!1730141 () Unit!102262)

(assert (=> d!1418975 (= lt!1730141 e!2841684)))

(declare-fun c!779450 () Bool)

(assert (=> d!1418975 (= c!779450 lt!1730147)))

(assert (=> d!1418975 (= lt!1730147 (containsKey!1957 (toList!4476 lt!1729746) key!3287))))

(assert (=> d!1418975 (= (contains!13690 lt!1729746 key!3287) lt!1730146)))

(declare-fun b!4558804 () Bool)

(assert (=> b!4558804 false))

(declare-fun lt!1730142 () Unit!102262)

(declare-fun lt!1730148 () Unit!102262)

(assert (=> b!4558804 (= lt!1730142 lt!1730148)))

(assert (=> b!4558804 (containsKey!1957 (toList!4476 lt!1729746) key!3287)))

(assert (=> b!4558804 (= lt!1730148 (lemmaInGetKeysListThenContainsKey!513 (toList!4476 lt!1729746) key!3287))))

(declare-fun Unit!102316 () Unit!102262)

(assert (=> b!4558804 (= e!2841688 Unit!102316)))

(declare-fun bm!318172 () Bool)

(assert (=> bm!318172 (= call!318177 (contains!13692 e!2841685 key!3287))))

(declare-fun c!779451 () Bool)

(assert (=> bm!318172 (= c!779451 c!779450)))

(declare-fun b!4558808 () Bool)

(declare-fun lt!1730145 () Unit!102262)

(assert (=> b!4558808 (= e!2841684 lt!1730145)))

(declare-fun lt!1730143 () Unit!102262)

(assert (=> b!4558808 (= lt!1730143 (lemmaContainsKeyImpliesGetValueByKeyDefined!1096 (toList!4476 lt!1729746) key!3287))))

(assert (=> b!4558808 (isDefined!8532 (getValueByKey!1192 (toList!4476 lt!1729746) key!3287))))

(declare-fun lt!1730144 () Unit!102262)

(assert (=> b!4558808 (= lt!1730144 lt!1730143)))

(assert (=> b!4558808 (= lt!1730145 (lemmaInListThenGetKeysListContains!510 (toList!4476 lt!1729746) key!3287))))

(assert (=> b!4558808 call!318177))

(assert (= (and d!1418975 c!779450) b!4558808))

(assert (= (and d!1418975 (not c!779450)) b!4558806))

(assert (= (and b!4558806 c!779449) b!4558804))

(assert (= (and b!4558806 (not c!779449)) b!4558805))

(assert (= (or b!4558808 b!4558806) bm!318172))

(assert (= (and bm!318172 c!779451) b!4558802))

(assert (= (and bm!318172 (not c!779451)) b!4558800))

(assert (= (and d!1418975 res!1902064) b!4558807))

(assert (= (and d!1418975 (not res!1902066)) b!4558801))

(assert (= (and b!4558801 res!1902065) b!4558803))

(declare-fun m!5348549 () Bool)

(assert (=> b!4558800 m!5348549))

(declare-fun m!5348551 () Bool)

(assert (=> b!4558802 m!5348551))

(assert (=> b!4558803 m!5348549))

(assert (=> b!4558803 m!5348549))

(declare-fun m!5348553 () Bool)

(assert (=> b!4558803 m!5348553))

(declare-fun m!5348555 () Bool)

(assert (=> bm!318172 m!5348555))

(declare-fun m!5348557 () Bool)

(assert (=> b!4558801 m!5348557))

(assert (=> b!4558801 m!5348557))

(declare-fun m!5348559 () Bool)

(assert (=> b!4558801 m!5348559))

(declare-fun m!5348561 () Bool)

(assert (=> b!4558808 m!5348561))

(assert (=> b!4558808 m!5348557))

(assert (=> b!4558808 m!5348557))

(assert (=> b!4558808 m!5348559))

(declare-fun m!5348563 () Bool)

(assert (=> b!4558808 m!5348563))

(declare-fun m!5348565 () Bool)

(assert (=> b!4558804 m!5348565))

(declare-fun m!5348567 () Bool)

(assert (=> b!4558804 m!5348567))

(assert (=> d!1418975 m!5348565))

(assert (=> b!4558807 m!5348549))

(assert (=> b!4558807 m!5348549))

(assert (=> b!4558807 m!5348553))

(assert (=> b!4558468 d!1418975))

(declare-fun bs!939300 () Bool)

(declare-fun d!1418977 () Bool)

(assert (= bs!939300 (and d!1418977 d!1418889)))

(declare-fun lambda!179537 () Int)

(assert (=> bs!939300 (= lambda!179537 lambda!179443)))

(declare-fun bs!939301 () Bool)

(assert (= bs!939301 (and d!1418977 d!1418945)))

(assert (=> bs!939301 (= lambda!179537 lambda!179532)))

(declare-fun bs!939302 () Bool)

(assert (= bs!939302 (and d!1418977 d!1418905)))

(assert (=> bs!939302 (= lambda!179537 lambda!179516)))

(declare-fun bs!939303 () Bool)

(assert (= bs!939303 (and d!1418977 d!1418931)))

(assert (=> bs!939303 (= lambda!179537 lambda!179526)))

(declare-fun bs!939304 () Bool)

(assert (= bs!939304 (and d!1418977 d!1418969)))

(assert (=> bs!939304 (= lambda!179537 lambda!179536)))

(declare-fun bs!939305 () Bool)

(assert (= bs!939305 (and d!1418977 d!1418847)))

(assert (=> bs!939305 (= lambda!179537 lambda!179437)))

(declare-fun bs!939306 () Bool)

(assert (= bs!939306 (and d!1418977 d!1418867)))

(assert (=> bs!939306 (= lambda!179537 lambda!179438)))

(declare-fun bs!939307 () Bool)

(assert (= bs!939307 (and d!1418977 d!1418903)))

(assert (=> bs!939307 (= lambda!179537 lambda!179512)))

(declare-fun bs!939308 () Bool)

(assert (= bs!939308 (and d!1418977 d!1418805)))

(assert (=> bs!939308 (= lambda!179537 lambda!179423)))

(declare-fun bs!939309 () Bool)

(assert (= bs!939309 (and d!1418977 d!1418907)))

(assert (=> bs!939309 (= lambda!179537 lambda!179517)))

(declare-fun bs!939310 () Bool)

(assert (= bs!939310 (and d!1418977 d!1418941)))

(assert (=> bs!939310 (= lambda!179537 lambda!179528)))

(declare-fun bs!939311 () Bool)

(assert (= bs!939311 (and d!1418977 start!452892)))

(assert (=> bs!939311 (= lambda!179537 lambda!179417)))

(declare-fun bs!939312 () Bool)

(assert (= bs!939312 (and d!1418977 d!1418869)))

(assert (=> bs!939312 (= lambda!179537 lambda!179441)))

(declare-fun lt!1730149 () ListMap!3737)

(assert (=> d!1418977 (invariantList!1066 (toList!4476 lt!1730149))))

(declare-fun e!2841690 () ListMap!3737)

(assert (=> d!1418977 (= lt!1730149 e!2841690)))

(declare-fun c!779452 () Bool)

(assert (=> d!1418977 (= c!779452 ((_ is Cons!50844) (toList!4475 lm!1477)))))

(assert (=> d!1418977 (forall!10413 (toList!4475 lm!1477) lambda!179537)))

(assert (=> d!1418977 (= (extractMap!1290 (toList!4475 lm!1477)) lt!1730149)))

(declare-fun b!4558809 () Bool)

(assert (=> b!4558809 (= e!2841690 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lm!1477))) (extractMap!1290 (t!357942 (toList!4475 lm!1477)))))))

(declare-fun b!4558810 () Bool)

(assert (=> b!4558810 (= e!2841690 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418977 c!779452) b!4558809))

(assert (= (and d!1418977 (not c!779452)) b!4558810))

(declare-fun m!5348569 () Bool)

(assert (=> d!1418977 m!5348569))

(declare-fun m!5348571 () Bool)

(assert (=> d!1418977 m!5348571))

(assert (=> b!4558809 m!5347837))

(assert (=> b!4558809 m!5347837))

(declare-fun m!5348573 () Bool)

(assert (=> b!4558809 m!5348573))

(assert (=> b!4558468 d!1418977))

(declare-fun d!1418979 () Bool)

(assert (=> d!1418979 (= (eq!685 lt!1729747 lt!1729746) (= (content!8503 (toList!4476 lt!1729747)) (content!8503 (toList!4476 lt!1729746))))))

(declare-fun bs!939313 () Bool)

(assert (= bs!939313 d!1418979))

(declare-fun m!5348575 () Bool)

(assert (=> bs!939313 m!5348575))

(declare-fun m!5348577 () Bool)

(assert (=> bs!939313 m!5348577))

(assert (=> b!4558457 d!1418979))

(declare-fun d!1418981 () Bool)

(assert (=> d!1418981 (= (eq!685 lt!1729747 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lm!1477))) lt!1729761)) (= (content!8503 (toList!4476 lt!1729747)) (content!8503 (toList!4476 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lm!1477))) lt!1729761)))))))

(declare-fun bs!939314 () Bool)

(assert (= bs!939314 d!1418981))

(assert (=> bs!939314 m!5348575))

(declare-fun m!5348579 () Bool)

(assert (=> bs!939314 m!5348579))

(assert (=> b!4558478 d!1418981))

(declare-fun bs!939315 () Bool)

(declare-fun b!4558812 () Bool)

(assert (= bs!939315 (and b!4558812 b!4558668)))

(declare-fun lambda!179538 () Int)

(assert (=> bs!939315 (= lambda!179538 lambda!179508)))

(declare-fun bs!939316 () Bool)

(assert (= bs!939316 (and b!4558812 b!4558667)))

(assert (=> bs!939316 (= lambda!179538 lambda!179509)))

(assert (=> bs!939316 (= (= lt!1729761 lt!1730037) (= lambda!179538 lambda!179510))))

(declare-fun bs!939317 () Bool)

(assert (= bs!939317 (and b!4558812 d!1418891)))

(assert (=> bs!939317 (= (= lt!1729761 lt!1730028) (= lambda!179538 lambda!179511))))

(assert (=> b!4558812 true))

(declare-fun bs!939318 () Bool)

(declare-fun b!4558811 () Bool)

(assert (= bs!939318 (and b!4558811 b!4558668)))

(declare-fun lambda!179539 () Int)

(assert (=> bs!939318 (= lambda!179539 lambda!179508)))

(declare-fun bs!939319 () Bool)

(assert (= bs!939319 (and b!4558811 b!4558812)))

(assert (=> bs!939319 (= lambda!179539 lambda!179538)))

(declare-fun bs!939320 () Bool)

(assert (= bs!939320 (and b!4558811 b!4558667)))

(assert (=> bs!939320 (= lambda!179539 lambda!179509)))

(declare-fun bs!939321 () Bool)

(assert (= bs!939321 (and b!4558811 d!1418891)))

(assert (=> bs!939321 (= (= lt!1729761 lt!1730028) (= lambda!179539 lambda!179511))))

(assert (=> bs!939320 (= (= lt!1729761 lt!1730037) (= lambda!179539 lambda!179510))))

(assert (=> b!4558811 true))

(declare-fun lt!1730167 () ListMap!3737)

(declare-fun lambda!179540 () Int)

(assert (=> bs!939318 (= (= lt!1730167 lt!1729761) (= lambda!179540 lambda!179508))))

(assert (=> bs!939319 (= (= lt!1730167 lt!1729761) (= lambda!179540 lambda!179538))))

(assert (=> bs!939320 (= (= lt!1730167 lt!1729761) (= lambda!179540 lambda!179509))))

(assert (=> bs!939321 (= (= lt!1730167 lt!1730028) (= lambda!179540 lambda!179511))))

(assert (=> b!4558811 (= (= lt!1730167 lt!1729761) (= lambda!179540 lambda!179539))))

(assert (=> bs!939320 (= (= lt!1730167 lt!1730037) (= lambda!179540 lambda!179510))))

(assert (=> b!4558811 true))

(declare-fun bs!939322 () Bool)

(declare-fun d!1418983 () Bool)

(assert (= bs!939322 (and d!1418983 b!4558668)))

(declare-fun lt!1730158 () ListMap!3737)

(declare-fun lambda!179541 () Int)

(assert (=> bs!939322 (= (= lt!1730158 lt!1729761) (= lambda!179541 lambda!179508))))

(declare-fun bs!939323 () Bool)

(assert (= bs!939323 (and d!1418983 b!4558812)))

(assert (=> bs!939323 (= (= lt!1730158 lt!1729761) (= lambda!179541 lambda!179538))))

(declare-fun bs!939324 () Bool)

(assert (= bs!939324 (and d!1418983 b!4558667)))

(assert (=> bs!939324 (= (= lt!1730158 lt!1729761) (= lambda!179541 lambda!179509))))

(declare-fun bs!939325 () Bool)

(assert (= bs!939325 (and d!1418983 d!1418891)))

(assert (=> bs!939325 (= (= lt!1730158 lt!1730028) (= lambda!179541 lambda!179511))))

(declare-fun bs!939326 () Bool)

(assert (= bs!939326 (and d!1418983 b!4558811)))

(assert (=> bs!939326 (= (= lt!1730158 lt!1729761) (= lambda!179541 lambda!179539))))

(assert (=> bs!939326 (= (= lt!1730158 lt!1730167) (= lambda!179541 lambda!179540))))

(assert (=> bs!939324 (= (= lt!1730158 lt!1730037) (= lambda!179541 lambda!179510))))

(assert (=> d!1418983 true))

(declare-fun e!2841693 () ListMap!3737)

(assert (=> b!4558811 (= e!2841693 lt!1730167)))

(declare-fun lt!1730170 () ListMap!3737)

(assert (=> b!4558811 (= lt!1730170 (+!1656 lt!1729761 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477))))))))

(assert (=> b!4558811 (= lt!1730167 (addToMapMapFromBucket!752 (t!357941 (_2!28980 (h!56747 (toList!4475 lm!1477)))) (+!1656 lt!1729761 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477)))))))))

(declare-fun lt!1730168 () Unit!102262)

(declare-fun call!318178 () Unit!102262)

(assert (=> b!4558811 (= lt!1730168 call!318178)))

(assert (=> b!4558811 (forall!10415 (toList!4476 lt!1729761) lambda!179539)))

(declare-fun lt!1730150 () Unit!102262)

(assert (=> b!4558811 (= lt!1730150 lt!1730168)))

(declare-fun call!318180 () Bool)

(assert (=> b!4558811 call!318180))

(declare-fun lt!1730159 () Unit!102262)

(declare-fun Unit!102317 () Unit!102262)

(assert (=> b!4558811 (= lt!1730159 Unit!102317)))

(assert (=> b!4558811 (forall!10415 (t!357941 (_2!28980 (h!56747 (toList!4475 lm!1477)))) lambda!179540)))

(declare-fun lt!1730155 () Unit!102262)

(declare-fun Unit!102318 () Unit!102262)

(assert (=> b!4558811 (= lt!1730155 Unit!102318)))

(declare-fun lt!1730163 () Unit!102262)

(declare-fun Unit!102319 () Unit!102262)

(assert (=> b!4558811 (= lt!1730163 Unit!102319)))

(declare-fun lt!1730156 () Unit!102262)

(assert (=> b!4558811 (= lt!1730156 (forallContained!2679 (toList!4476 lt!1730170) lambda!179540 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477))))))))

(assert (=> b!4558811 (contains!13690 lt!1730170 (_1!28979 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477))))))))

(declare-fun lt!1730165 () Unit!102262)

(declare-fun Unit!102320 () Unit!102262)

(assert (=> b!4558811 (= lt!1730165 Unit!102320)))

(assert (=> b!4558811 (contains!13690 lt!1730167 (_1!28979 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477))))))))

(declare-fun lt!1730153 () Unit!102262)

(declare-fun Unit!102321 () Unit!102262)

(assert (=> b!4558811 (= lt!1730153 Unit!102321)))

(assert (=> b!4558811 (forall!10415 (_2!28980 (h!56747 (toList!4475 lm!1477))) lambda!179540)))

(declare-fun lt!1730151 () Unit!102262)

(declare-fun Unit!102322 () Unit!102262)

(assert (=> b!4558811 (= lt!1730151 Unit!102322)))

(declare-fun call!318179 () Bool)

(assert (=> b!4558811 call!318179))

(declare-fun lt!1730164 () Unit!102262)

(declare-fun Unit!102323 () Unit!102262)

(assert (=> b!4558811 (= lt!1730164 Unit!102323)))

(declare-fun lt!1730152 () Unit!102262)

(declare-fun Unit!102324 () Unit!102262)

(assert (=> b!4558811 (= lt!1730152 Unit!102324)))

(declare-fun lt!1730154 () Unit!102262)

(assert (=> b!4558811 (= lt!1730154 (addForallContainsKeyThenBeforeAdding!386 lt!1729761 lt!1730167 (_1!28979 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477))))) (_2!28979 (h!56746 (_2!28980 (h!56747 (toList!4475 lm!1477)))))))))

(assert (=> b!4558811 (forall!10415 (toList!4476 lt!1729761) lambda!179540)))

(declare-fun lt!1730169 () Unit!102262)

(assert (=> b!4558811 (= lt!1730169 lt!1730154)))

(assert (=> b!4558811 (forall!10415 (toList!4476 lt!1729761) lambda!179540)))

(declare-fun lt!1730166 () Unit!102262)

(declare-fun Unit!102325 () Unit!102262)

(assert (=> b!4558811 (= lt!1730166 Unit!102325)))

(declare-fun res!1902069 () Bool)

(assert (=> b!4558811 (= res!1902069 (forall!10415 (_2!28980 (h!56747 (toList!4475 lm!1477))) lambda!179540))))

(declare-fun e!2841691 () Bool)

(assert (=> b!4558811 (=> (not res!1902069) (not e!2841691))))

(assert (=> b!4558811 e!2841691))

(declare-fun lt!1730162 () Unit!102262)

(declare-fun Unit!102326 () Unit!102262)

(assert (=> b!4558811 (= lt!1730162 Unit!102326)))

(assert (=> b!4558812 (= e!2841693 lt!1729761)))

(declare-fun lt!1730160 () Unit!102262)

(assert (=> b!4558812 (= lt!1730160 call!318178)))

(assert (=> b!4558812 call!318180))

(declare-fun lt!1730157 () Unit!102262)

(assert (=> b!4558812 (= lt!1730157 lt!1730160)))

(assert (=> b!4558812 call!318179))

(declare-fun lt!1730161 () Unit!102262)

(declare-fun Unit!102327 () Unit!102262)

(assert (=> b!4558812 (= lt!1730161 Unit!102327)))

(declare-fun b!4558813 () Bool)

(declare-fun e!2841692 () Bool)

(assert (=> b!4558813 (= e!2841692 (invariantList!1066 (toList!4476 lt!1730158)))))

(declare-fun b!4558814 () Bool)

(assert (=> b!4558814 (= e!2841691 (forall!10415 (toList!4476 lt!1729761) lambda!179540))))

(declare-fun c!779453 () Bool)

(declare-fun bm!318174 () Bool)

(assert (=> bm!318174 (= call!318179 (forall!10415 (ite c!779453 (toList!4476 lt!1729761) (toList!4476 lt!1730170)) (ite c!779453 lambda!179538 lambda!179540)))))

(assert (=> d!1418983 e!2841692))

(declare-fun res!1902068 () Bool)

(assert (=> d!1418983 (=> (not res!1902068) (not e!2841692))))

(assert (=> d!1418983 (= res!1902068 (forall!10415 (_2!28980 (h!56747 (toList!4475 lm!1477))) lambda!179541))))

(assert (=> d!1418983 (= lt!1730158 e!2841693)))

(assert (=> d!1418983 (= c!779453 ((_ is Nil!50843) (_2!28980 (h!56747 (toList!4475 lm!1477)))))))

(assert (=> d!1418983 (noDuplicateKeys!1234 (_2!28980 (h!56747 (toList!4475 lm!1477))))))

(assert (=> d!1418983 (= (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 lm!1477))) lt!1729761) lt!1730158)))

(declare-fun bm!318173 () Bool)

(assert (=> bm!318173 (= call!318178 (lemmaContainsAllItsOwnKeys!386 lt!1729761))))

(declare-fun b!4558815 () Bool)

(declare-fun res!1902067 () Bool)

(assert (=> b!4558815 (=> (not res!1902067) (not e!2841692))))

(assert (=> b!4558815 (= res!1902067 (forall!10415 (toList!4476 lt!1729761) lambda!179541))))

(declare-fun bm!318175 () Bool)

(assert (=> bm!318175 (= call!318180 (forall!10415 (ite c!779453 (toList!4476 lt!1729761) (toList!4476 lt!1730170)) (ite c!779453 lambda!179538 lambda!179540)))))

(assert (= (and d!1418983 c!779453) b!4558812))

(assert (= (and d!1418983 (not c!779453)) b!4558811))

(assert (= (and b!4558811 res!1902069) b!4558814))

(assert (= (or b!4558812 b!4558811) bm!318174))

(assert (= (or b!4558812 b!4558811) bm!318175))

(assert (= (or b!4558812 b!4558811) bm!318173))

(assert (= (and d!1418983 res!1902068) b!4558815))

(assert (= (and b!4558815 res!1902067) b!4558813))

(declare-fun m!5348581 () Bool)

(assert (=> b!4558815 m!5348581))

(declare-fun m!5348583 () Bool)

(assert (=> d!1418983 m!5348583))

(assert (=> d!1418983 m!5348491))

(declare-fun m!5348585 () Bool)

(assert (=> bm!318175 m!5348585))

(declare-fun m!5348587 () Bool)

(assert (=> b!4558813 m!5348587))

(declare-fun m!5348589 () Bool)

(assert (=> b!4558811 m!5348589))

(declare-fun m!5348591 () Bool)

(assert (=> b!4558811 m!5348591))

(declare-fun m!5348593 () Bool)

(assert (=> b!4558811 m!5348593))

(declare-fun m!5348595 () Bool)

(assert (=> b!4558811 m!5348595))

(declare-fun m!5348597 () Bool)

(assert (=> b!4558811 m!5348597))

(declare-fun m!5348599 () Bool)

(assert (=> b!4558811 m!5348599))

(declare-fun m!5348601 () Bool)

(assert (=> b!4558811 m!5348601))

(assert (=> b!4558811 m!5348593))

(declare-fun m!5348603 () Bool)

(assert (=> b!4558811 m!5348603))

(assert (=> b!4558811 m!5348603))

(declare-fun m!5348605 () Bool)

(assert (=> b!4558811 m!5348605))

(declare-fun m!5348607 () Bool)

(assert (=> b!4558811 m!5348607))

(assert (=> b!4558811 m!5348605))

(assert (=> bm!318174 m!5348585))

(assert (=> bm!318173 m!5348259))

(assert (=> b!4558814 m!5348603))

(assert (=> b!4558478 d!1418983))

(declare-fun bs!939327 () Bool)

(declare-fun d!1418985 () Bool)

(assert (= bs!939327 (and d!1418985 d!1418889)))

(declare-fun lambda!179542 () Int)

(assert (=> bs!939327 (= lambda!179542 lambda!179443)))

(declare-fun bs!939328 () Bool)

(assert (= bs!939328 (and d!1418985 d!1418945)))

(assert (=> bs!939328 (= lambda!179542 lambda!179532)))

(declare-fun bs!939329 () Bool)

(assert (= bs!939329 (and d!1418985 d!1418905)))

(assert (=> bs!939329 (= lambda!179542 lambda!179516)))

(declare-fun bs!939330 () Bool)

(assert (= bs!939330 (and d!1418985 d!1418931)))

(assert (=> bs!939330 (= lambda!179542 lambda!179526)))

(declare-fun bs!939331 () Bool)

(assert (= bs!939331 (and d!1418985 d!1418969)))

(assert (=> bs!939331 (= lambda!179542 lambda!179536)))

(declare-fun bs!939332 () Bool)

(assert (= bs!939332 (and d!1418985 d!1418847)))

(assert (=> bs!939332 (= lambda!179542 lambda!179437)))

(declare-fun bs!939333 () Bool)

(assert (= bs!939333 (and d!1418985 d!1418867)))

(assert (=> bs!939333 (= lambda!179542 lambda!179438)))

(declare-fun bs!939334 () Bool)

(assert (= bs!939334 (and d!1418985 d!1418977)))

(assert (=> bs!939334 (= lambda!179542 lambda!179537)))

(declare-fun bs!939335 () Bool)

(assert (= bs!939335 (and d!1418985 d!1418903)))

(assert (=> bs!939335 (= lambda!179542 lambda!179512)))

(declare-fun bs!939336 () Bool)

(assert (= bs!939336 (and d!1418985 d!1418805)))

(assert (=> bs!939336 (= lambda!179542 lambda!179423)))

(declare-fun bs!939337 () Bool)

(assert (= bs!939337 (and d!1418985 d!1418907)))

(assert (=> bs!939337 (= lambda!179542 lambda!179517)))

(declare-fun bs!939338 () Bool)

(assert (= bs!939338 (and d!1418985 d!1418941)))

(assert (=> bs!939338 (= lambda!179542 lambda!179528)))

(declare-fun bs!939339 () Bool)

(assert (= bs!939339 (and d!1418985 start!452892)))

(assert (=> bs!939339 (= lambda!179542 lambda!179417)))

(declare-fun bs!939340 () Bool)

(assert (= bs!939340 (and d!1418985 d!1418869)))

(assert (=> bs!939340 (= lambda!179542 lambda!179441)))

(declare-fun lt!1730171 () ListMap!3737)

(assert (=> d!1418985 (invariantList!1066 (toList!4476 lt!1730171))))

(declare-fun e!2841694 () ListMap!3737)

(assert (=> d!1418985 (= lt!1730171 e!2841694)))

(declare-fun c!779454 () Bool)

(assert (=> d!1418985 (= c!779454 ((_ is Cons!50844) (toList!4475 (+!1654 lm!1477 lt!1729765))))))

(assert (=> d!1418985 (forall!10413 (toList!4475 (+!1654 lm!1477 lt!1729765)) lambda!179542)))

(assert (=> d!1418985 (= (extractMap!1290 (toList!4475 (+!1654 lm!1477 lt!1729765))) lt!1730171)))

(declare-fun b!4558816 () Bool)

(assert (=> b!4558816 (= e!2841694 (addToMapMapFromBucket!752 (_2!28980 (h!56747 (toList!4475 (+!1654 lm!1477 lt!1729765)))) (extractMap!1290 (t!357942 (toList!4475 (+!1654 lm!1477 lt!1729765))))))))

(declare-fun b!4558817 () Bool)

(assert (=> b!4558817 (= e!2841694 (ListMap!3738 Nil!50843))))

(assert (= (and d!1418985 c!779454) b!4558816))

(assert (= (and d!1418985 (not c!779454)) b!4558817))

(declare-fun m!5348609 () Bool)

(assert (=> d!1418985 m!5348609))

(declare-fun m!5348611 () Bool)

(assert (=> d!1418985 m!5348611))

(declare-fun m!5348613 () Bool)

(assert (=> b!4558816 m!5348613))

(assert (=> b!4558816 m!5348613))

(declare-fun m!5348615 () Bool)

(assert (=> b!4558816 m!5348615))

(assert (=> b!4558478 d!1418985))

(declare-fun d!1418987 () Bool)

(declare-fun e!2841695 () Bool)

(assert (=> d!1418987 e!2841695))

(declare-fun res!1902071 () Bool)

(assert (=> d!1418987 (=> (not res!1902071) (not e!2841695))))

(declare-fun lt!1730174 () ListLongMap!3107)

(assert (=> d!1418987 (= res!1902071 (contains!13689 lt!1730174 (_1!28980 lt!1729765)))))

(declare-fun lt!1730175 () List!50968)

(assert (=> d!1418987 (= lt!1730174 (ListLongMap!3108 lt!1730175))))

(declare-fun lt!1730172 () Unit!102262)

(declare-fun lt!1730173 () Unit!102262)

(assert (=> d!1418987 (= lt!1730172 lt!1730173)))

(assert (=> d!1418987 (= (getValueByKey!1191 lt!1730175 (_1!28980 lt!1729765)) (Some!11258 (_2!28980 lt!1729765)))))

(assert (=> d!1418987 (= lt!1730173 (lemmaContainsTupThenGetReturnValue!748 lt!1730175 (_1!28980 lt!1729765) (_2!28980 lt!1729765)))))

(assert (=> d!1418987 (= lt!1730175 (insertStrictlySorted!456 (toList!4475 lm!1477) (_1!28980 lt!1729765) (_2!28980 lt!1729765)))))

(assert (=> d!1418987 (= (+!1654 lm!1477 lt!1729765) lt!1730174)))

(declare-fun b!4558818 () Bool)

(declare-fun res!1902070 () Bool)

(assert (=> b!4558818 (=> (not res!1902070) (not e!2841695))))

(assert (=> b!4558818 (= res!1902070 (= (getValueByKey!1191 (toList!4475 lt!1730174) (_1!28980 lt!1729765)) (Some!11258 (_2!28980 lt!1729765))))))

(declare-fun b!4558819 () Bool)

(assert (=> b!4558819 (= e!2841695 (contains!13688 (toList!4475 lt!1730174) lt!1729765))))

(assert (= (and d!1418987 res!1902071) b!4558818))

(assert (= (and b!4558818 res!1902070) b!4558819))

(declare-fun m!5348617 () Bool)

(assert (=> d!1418987 m!5348617))

(declare-fun m!5348619 () Bool)

(assert (=> d!1418987 m!5348619))

(declare-fun m!5348621 () Bool)

(assert (=> d!1418987 m!5348621))

(declare-fun m!5348623 () Bool)

(assert (=> d!1418987 m!5348623))

(declare-fun m!5348625 () Bool)

(assert (=> b!4558818 m!5348625))

(declare-fun m!5348627 () Bool)

(assert (=> b!4558819 m!5348627))

(assert (=> b!4558478 d!1418987))

(declare-fun bs!939341 () Bool)

(declare-fun d!1418989 () Bool)

(assert (= bs!939341 (and d!1418989 b!4558668)))

(declare-fun lambda!179545 () Int)

(assert (=> bs!939341 (not (= lambda!179545 lambda!179508))))

(declare-fun bs!939342 () Bool)

(assert (= bs!939342 (and d!1418989 b!4558812)))

(assert (=> bs!939342 (not (= lambda!179545 lambda!179538))))

(declare-fun bs!939343 () Bool)

(assert (= bs!939343 (and d!1418989 b!4558667)))

(assert (=> bs!939343 (not (= lambda!179545 lambda!179509))))

(declare-fun bs!939344 () Bool)

(assert (= bs!939344 (and d!1418989 b!4558811)))

(assert (=> bs!939344 (not (= lambda!179545 lambda!179539))))

(assert (=> bs!939344 (not (= lambda!179545 lambda!179540))))

(assert (=> bs!939343 (not (= lambda!179545 lambda!179510))))

(declare-fun bs!939345 () Bool)

(assert (= bs!939345 (and d!1418989 d!1418983)))

(assert (=> bs!939345 (not (= lambda!179545 lambda!179541))))

(declare-fun bs!939346 () Bool)

(assert (= bs!939346 (and d!1418989 d!1418891)))

(assert (=> bs!939346 (not (= lambda!179545 lambda!179511))))

(assert (=> d!1418989 true))

(assert (=> d!1418989 true))

(assert (=> d!1418989 (= (allKeysSameHash!1088 newBucket!178 hash!344 hashF!1107) (forall!10415 newBucket!178 lambda!179545))))

(declare-fun bs!939347 () Bool)

(assert (= bs!939347 d!1418989))

(declare-fun m!5348629 () Bool)

(assert (=> bs!939347 m!5348629))

(assert (=> b!4558467 d!1418989))

(declare-fun bs!939348 () Bool)

(declare-fun d!1418991 () Bool)

(assert (= bs!939348 (and d!1418991 d!1418889)))

(declare-fun lambda!179548 () Int)

(assert (=> bs!939348 (not (= lambda!179548 lambda!179443))))

(declare-fun bs!939349 () Bool)

(assert (= bs!939349 (and d!1418991 d!1418945)))

(assert (=> bs!939349 (not (= lambda!179548 lambda!179532))))

(declare-fun bs!939350 () Bool)

(assert (= bs!939350 (and d!1418991 d!1418905)))

(assert (=> bs!939350 (not (= lambda!179548 lambda!179516))))

(declare-fun bs!939351 () Bool)

(assert (= bs!939351 (and d!1418991 d!1418931)))

(assert (=> bs!939351 (not (= lambda!179548 lambda!179526))))

(declare-fun bs!939352 () Bool)

(assert (= bs!939352 (and d!1418991 d!1418969)))

(assert (=> bs!939352 (not (= lambda!179548 lambda!179536))))

(declare-fun bs!939353 () Bool)

(assert (= bs!939353 (and d!1418991 d!1418847)))

(assert (=> bs!939353 (not (= lambda!179548 lambda!179437))))

(declare-fun bs!939354 () Bool)

(assert (= bs!939354 (and d!1418991 d!1418867)))

(assert (=> bs!939354 (not (= lambda!179548 lambda!179438))))

(declare-fun bs!939355 () Bool)

(assert (= bs!939355 (and d!1418991 d!1418903)))

(assert (=> bs!939355 (not (= lambda!179548 lambda!179512))))

(declare-fun bs!939356 () Bool)

(assert (= bs!939356 (and d!1418991 d!1418805)))

(assert (=> bs!939356 (not (= lambda!179548 lambda!179423))))

(declare-fun bs!939357 () Bool)

(assert (= bs!939357 (and d!1418991 d!1418907)))

(assert (=> bs!939357 (not (= lambda!179548 lambda!179517))))

(declare-fun bs!939358 () Bool)

(assert (= bs!939358 (and d!1418991 d!1418941)))

(assert (=> bs!939358 (not (= lambda!179548 lambda!179528))))

(declare-fun bs!939359 () Bool)

(assert (= bs!939359 (and d!1418991 start!452892)))

(assert (=> bs!939359 (not (= lambda!179548 lambda!179417))))

(declare-fun bs!939360 () Bool)

(assert (= bs!939360 (and d!1418991 d!1418869)))

(assert (=> bs!939360 (not (= lambda!179548 lambda!179441))))

(declare-fun bs!939361 () Bool)

(assert (= bs!939361 (and d!1418991 d!1418985)))

(assert (=> bs!939361 (not (= lambda!179548 lambda!179542))))

(declare-fun bs!939362 () Bool)

(assert (= bs!939362 (and d!1418991 d!1418977)))

(assert (=> bs!939362 (not (= lambda!179548 lambda!179537))))

(assert (=> d!1418991 true))

(assert (=> d!1418991 (= (allKeysSameHashInMap!1341 lm!1477 hashF!1107) (forall!10413 (toList!4475 lm!1477) lambda!179548))))

(declare-fun bs!939363 () Bool)

(assert (= bs!939363 d!1418991))

(declare-fun m!5348631 () Bool)

(assert (=> bs!939363 m!5348631))

(assert (=> b!4558456 d!1418991))

(declare-fun bs!939364 () Bool)

(declare-fun d!1418993 () Bool)

(assert (= bs!939364 (and d!1418993 d!1418889)))

(declare-fun lambda!179551 () Int)

(assert (=> bs!939364 (= lambda!179551 lambda!179443)))

(declare-fun bs!939365 () Bool)

(assert (= bs!939365 (and d!1418993 d!1418991)))

(assert (=> bs!939365 (not (= lambda!179551 lambda!179548))))

(declare-fun bs!939366 () Bool)

(assert (= bs!939366 (and d!1418993 d!1418945)))

(assert (=> bs!939366 (= lambda!179551 lambda!179532)))

(declare-fun bs!939367 () Bool)

(assert (= bs!939367 (and d!1418993 d!1418905)))

(assert (=> bs!939367 (= lambda!179551 lambda!179516)))

(declare-fun bs!939368 () Bool)

(assert (= bs!939368 (and d!1418993 d!1418931)))

(assert (=> bs!939368 (= lambda!179551 lambda!179526)))

(declare-fun bs!939369 () Bool)

(assert (= bs!939369 (and d!1418993 d!1418969)))

(assert (=> bs!939369 (= lambda!179551 lambda!179536)))

(declare-fun bs!939370 () Bool)

(assert (= bs!939370 (and d!1418993 d!1418847)))

(assert (=> bs!939370 (= lambda!179551 lambda!179437)))

(declare-fun bs!939371 () Bool)

(assert (= bs!939371 (and d!1418993 d!1418867)))

(assert (=> bs!939371 (= lambda!179551 lambda!179438)))

(declare-fun bs!939372 () Bool)

(assert (= bs!939372 (and d!1418993 d!1418903)))

(assert (=> bs!939372 (= lambda!179551 lambda!179512)))

(declare-fun bs!939373 () Bool)

(assert (= bs!939373 (and d!1418993 d!1418805)))

(assert (=> bs!939373 (= lambda!179551 lambda!179423)))

(declare-fun bs!939374 () Bool)

(assert (= bs!939374 (and d!1418993 d!1418907)))

(assert (=> bs!939374 (= lambda!179551 lambda!179517)))

(declare-fun bs!939375 () Bool)

(assert (= bs!939375 (and d!1418993 d!1418941)))

(assert (=> bs!939375 (= lambda!179551 lambda!179528)))

(declare-fun bs!939376 () Bool)

(assert (= bs!939376 (and d!1418993 start!452892)))

(assert (=> bs!939376 (= lambda!179551 lambda!179417)))

(declare-fun bs!939377 () Bool)

(assert (= bs!939377 (and d!1418993 d!1418869)))

(assert (=> bs!939377 (= lambda!179551 lambda!179441)))

(declare-fun bs!939378 () Bool)

(assert (= bs!939378 (and d!1418993 d!1418985)))

(assert (=> bs!939378 (= lambda!179551 lambda!179542)))

(declare-fun bs!939379 () Bool)

(assert (= bs!939379 (and d!1418993 d!1418977)))

(assert (=> bs!939379 (= lambda!179551 lambda!179537)))

(assert (=> d!1418993 (not (contains!13690 (extractMap!1290 (toList!4475 lm!1477)) key!3287))))

(declare-fun lt!1730178 () Unit!102262)

(declare-fun choose!30171 (ListLongMap!3107 K!12225 Hashable!5629) Unit!102262)

(assert (=> d!1418993 (= lt!1730178 (choose!30171 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1418993 (forall!10413 (toList!4475 lm!1477) lambda!179551)))

(assert (=> d!1418993 (= (lemmaNotInItsHashBucketThenNotInMap!222 lm!1477 key!3287 hashF!1107) lt!1730178)))

(declare-fun bs!939380 () Bool)

(assert (= bs!939380 d!1418993))

(assert (=> bs!939380 m!5347843))

(assert (=> bs!939380 m!5347843))

(declare-fun m!5348633 () Bool)

(assert (=> bs!939380 m!5348633))

(declare-fun m!5348635 () Bool)

(assert (=> bs!939380 m!5348635))

(declare-fun m!5348637 () Bool)

(assert (=> bs!939380 m!5348637))

(assert (=> b!4558477 d!1418993))

(declare-fun d!1418995 () Bool)

(declare-fun res!1902076 () Bool)

(declare-fun e!2841700 () Bool)

(assert (=> d!1418995 (=> res!1902076 e!2841700)))

(assert (=> d!1418995 (= res!1902076 (not ((_ is Cons!50843) newBucket!178)))))

(assert (=> d!1418995 (= (noDuplicateKeys!1234 newBucket!178) e!2841700)))

(declare-fun b!4558830 () Bool)

(declare-fun e!2841701 () Bool)

(assert (=> b!4558830 (= e!2841700 e!2841701)))

(declare-fun res!1902077 () Bool)

(assert (=> b!4558830 (=> (not res!1902077) (not e!2841701))))

(assert (=> b!4558830 (= res!1902077 (not (containsKey!1953 (t!357941 newBucket!178) (_1!28979 (h!56746 newBucket!178)))))))

(declare-fun b!4558831 () Bool)

(assert (=> b!4558831 (= e!2841701 (noDuplicateKeys!1234 (t!357941 newBucket!178)))))

(assert (= (and d!1418995 (not res!1902076)) b!4558830))

(assert (= (and b!4558830 res!1902077) b!4558831))

(declare-fun m!5348639 () Bool)

(assert (=> b!4558830 m!5348639))

(declare-fun m!5348641 () Bool)

(assert (=> b!4558831 m!5348641))

(assert (=> b!4558466 d!1418995))

(declare-fun d!1418997 () Bool)

(declare-fun res!1902082 () Bool)

(declare-fun e!2841706 () Bool)

(assert (=> d!1418997 (=> res!1902082 e!2841706)))

(assert (=> d!1418997 (= res!1902082 ((_ is Nil!50844) (toList!4475 lm!1477)))))

(assert (=> d!1418997 (= (forall!10413 (toList!4475 lm!1477) lambda!179417) e!2841706)))

(declare-fun b!4558836 () Bool)

(declare-fun e!2841707 () Bool)

(assert (=> b!4558836 (= e!2841706 e!2841707)))

(declare-fun res!1902083 () Bool)

(assert (=> b!4558836 (=> (not res!1902083) (not e!2841707))))

(assert (=> b!4558836 (= res!1902083 (dynLambda!21265 lambda!179417 (h!56747 (toList!4475 lm!1477))))))

(declare-fun b!4558837 () Bool)

(assert (=> b!4558837 (= e!2841707 (forall!10413 (t!357942 (toList!4475 lm!1477)) lambda!179417))))

(assert (= (and d!1418997 (not res!1902082)) b!4558836))

(assert (= (and b!4558836 res!1902083) b!4558837))

(declare-fun b_lambda!162001 () Bool)

(assert (=> (not b_lambda!162001) (not b!4558836)))

(declare-fun m!5348643 () Bool)

(assert (=> b!4558836 m!5348643))

(declare-fun m!5348645 () Bool)

(assert (=> b!4558837 m!5348645))

(assert (=> start!452892 d!1418997))

(declare-fun d!1418999 () Bool)

(assert (=> d!1418999 (= (inv!66409 lm!1477) (isStrictlySorted!480 (toList!4475 lm!1477)))))

(declare-fun bs!939381 () Bool)

(assert (= bs!939381 d!1418999))

(assert (=> bs!939381 m!5347971))

(assert (=> start!452892 d!1418999))

(declare-fun b!4558842 () Bool)

(declare-fun e!2841710 () Bool)

(declare-fun tp!1339123 () Bool)

(declare-fun tp!1339124 () Bool)

(assert (=> b!4558842 (= e!2841710 (and tp!1339123 tp!1339124))))

(assert (=> b!4558479 (= tp!1339108 e!2841710)))

(assert (= (and b!4558479 ((_ is Cons!50844) (toList!4475 lm!1477))) b!4558842))

(declare-fun tp!1339127 () Bool)

(declare-fun b!4558847 () Bool)

(declare-fun e!2841713 () Bool)

(assert (=> b!4558847 (= e!2841713 (and tp_is_empty!28213 tp_is_empty!28215 tp!1339127))))

(assert (=> b!4558472 (= tp!1339109 e!2841713)))

(assert (= (and b!4558472 ((_ is Cons!50843) (t!357941 newBucket!178))) b!4558847))

(declare-fun b_lambda!162003 () Bool)

(assert (= b_lambda!161991 (or start!452892 b_lambda!162003)))

(declare-fun bs!939382 () Bool)

(declare-fun d!1419001 () Bool)

(assert (= bs!939382 (and d!1419001 start!452892)))

(assert (=> bs!939382 (= (dynLambda!21265 lambda!179417 lt!1729764) (noDuplicateKeys!1234 (_2!28980 lt!1729764)))))

(declare-fun m!5348647 () Bool)

(assert (=> bs!939382 m!5348647))

(assert (=> d!1418801 d!1419001))

(declare-fun b_lambda!162005 () Bool)

(assert (= b_lambda!162001 (or start!452892 b_lambda!162005)))

(declare-fun bs!939383 () Bool)

(declare-fun d!1419003 () Bool)

(assert (= bs!939383 (and d!1419003 start!452892)))

(assert (=> bs!939383 (= (dynLambda!21265 lambda!179417 (h!56747 (toList!4475 lm!1477))) (noDuplicateKeys!1234 (_2!28980 (h!56747 (toList!4475 lm!1477)))))))

(assert (=> bs!939383 m!5348491))

(assert (=> b!4558836 d!1419003))

(check-sat (not bm!318174) (not b!4558830) (not b!4558753) (not b!4558814) (not d!1418975) (not b!4558778) (not bm!318170) (not b!4558741) (not bm!318173) (not b!4558549) (not b!4558567) (not d!1418845) (not d!1418829) (not d!1418989) (not d!1418823) (not b!4558503) (not d!1418941) (not b!4558818) (not b!4558700) tp_is_empty!28215 (not b!4558785) (not d!1418965) (not bs!939382) (not b!4558745) (not b!4558802) (not bm!318162) (not b!4558803) (not d!1418991) (not d!1418887) (not b!4558671) (not d!1418903) (not d!1418805) (not d!1418869) (not d!1418891) (not b!4558811) (not d!1418951) (not b!4558815) (not d!1418905) (not d!1418813) (not b!4558777) (not d!1418907) (not d!1418885) (not b!4558807) (not b!4558831) (not b!4558532) (not b!4558751) (not b!4558819) (not b!4558744) (not bm!318163) (not d!1418801) (not b!4558545) (not b!4558746) (not b!4558784) (not d!1418993) (not b!4558667) (not bm!318175) (not b!4558685) (not b!4558683) (not d!1418959) (not b_lambda!162005) (not b!4558800) (not d!1418985) (not b!4558568) (not b_lambda!162003) (not b!4558712) (not d!1418981) (not b!4558714) (not d!1418921) (not b!4558842) (not b!4558780) (not b!4558739) (not bm!318171) (not b!4558813) (not b!4558597) (not d!1418827) (not bs!939383) (not d!1418945) (not b!4558669) (not d!1418833) (not d!1418881) (not d!1418977) (not d!1418979) (not bm!318161) (not d!1418983) (not d!1418931) (not b!4558595) (not d!1418847) (not b!4558779) (not d!1418867) (not b!4558799) (not d!1418967) (not b!4558633) (not b!4558698) (not b!4558808) (not b!4558804) (not d!1418809) (not d!1418939) (not b!4558737) (not b!4558634) (not d!1418889) (not d!1418969) (not b!4558670) (not d!1418999) (not d!1418913) (not b!4558505) (not b!4558752) (not b!4558781) (not bm!318172) (not b!4558740) (not b!4558809) (not b!4558847) (not b!4558482) (not b!4558791) (not b!4558792) (not b!4558837) (not d!1418987) (not b!4558801) (not d!1418839) (not b!4558816) tp_is_empty!28213 (not b!4558738))
(check-sat)
