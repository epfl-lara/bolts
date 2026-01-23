; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440876 () Bool)

(assert start!440876)

(declare-fun b!4481659 () Bool)

(declare-datatypes ((Unit!89797 0))(
  ( (Unit!89798) )
))
(declare-fun e!2791278 () Unit!89797)

(declare-fun Unit!89799 () Unit!89797)

(assert (=> b!4481659 (= e!2791278 Unit!89799)))

(declare-datatypes ((K!11795 0))(
  ( (K!11796 (val!17707 Int)) )
))
(declare-datatypes ((V!12041 0))(
  ( (V!12042 (val!17708 Int)) )
))
(declare-datatypes ((tuple2!50682 0))(
  ( (tuple2!50683 (_1!28635 K!11795) (_2!28635 V!12041)) )
))
(declare-datatypes ((List!50508 0))(
  ( (Nil!50384) (Cons!50384 (h!56171 tuple2!50682) (t!357462 List!50508)) )
))
(declare-datatypes ((tuple2!50684 0))(
  ( (tuple2!50685 (_1!28636 (_ BitVec 64)) (_2!28636 List!50508)) )
))
(declare-datatypes ((List!50509 0))(
  ( (Nil!50385) (Cons!50385 (h!56172 tuple2!50684) (t!357463 List!50509)) )
))
(declare-datatypes ((ListLongMap!2763 0))(
  ( (ListLongMap!2764 (toList!4131 List!50509)) )
))
(declare-fun lt!1668377 () ListLongMap!2763)

(declare-fun key!3287 () K!11795)

(declare-datatypes ((Hashable!5457 0))(
  ( (HashableExt!5456 (__x!31160 Int)) )
))
(declare-fun hashF!1107 () Hashable!5457)

(declare-fun lt!1668387 () Unit!89797)

(declare-fun lemmaInGenMapThenLongMapContainsHash!136 (ListLongMap!2763 K!11795 Hashable!5457) Unit!89797)

(assert (=> b!4481659 (= lt!1668387 (lemmaInGenMapThenLongMapContainsHash!136 lt!1668377 key!3287 hashF!1107))))

(declare-fun res!1860839 () Bool)

(declare-fun lt!1668378 () (_ BitVec 64))

(declare-fun contains!12979 (ListLongMap!2763 (_ BitVec 64)) Bool)

(assert (=> b!4481659 (= res!1860839 (contains!12979 lt!1668377 lt!1668378))))

(declare-fun e!2791285 () Bool)

(assert (=> b!4481659 (=> (not res!1860839) (not e!2791285))))

(assert (=> b!4481659 e!2791285))

(declare-fun b!4481660 () Bool)

(declare-fun res!1860829 () Bool)

(declare-fun e!2791293 () Bool)

(assert (=> b!4481660 (=> res!1860829 e!2791293)))

(declare-fun lm!1477 () ListLongMap!2763)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4481660 (= res!1860829 (or ((_ is Nil!50385) (toList!4131 lm!1477)) (not (= (_1!28636 (h!56172 (toList!4131 lm!1477))) hash!344))))))

(declare-fun b!4481661 () Bool)

(declare-fun e!2791283 () Bool)

(declare-fun e!2791277 () Bool)

(assert (=> b!4481661 (= e!2791283 e!2791277)))

(declare-fun res!1860833 () Bool)

(assert (=> b!4481661 (=> res!1860833 e!2791277)))

(declare-datatypes ((ListMap!3393 0))(
  ( (ListMap!3394 (toList!4132 List!50508)) )
))
(declare-fun lt!1668375 () ListMap!3393)

(declare-fun lt!1668373 () ListMap!3393)

(declare-fun newBucket!178 () List!50508)

(declare-fun eq!555 (ListMap!3393 ListMap!3393) Bool)

(declare-fun addToMapMapFromBucket!617 (List!50508 ListMap!3393) ListMap!3393)

(assert (=> b!4481661 (= res!1860833 (not (eq!555 lt!1668373 (addToMapMapFromBucket!617 newBucket!178 lt!1668375))))))

(declare-fun lt!1668376 () ListLongMap!2763)

(declare-fun extractMap!1118 (List!50509) ListMap!3393)

(assert (=> b!4481661 (= lt!1668373 (extractMap!1118 (toList!4131 lt!1668376)))))

(declare-fun b!4481662 () Bool)

(declare-fun e!2791290 () Bool)

(declare-fun tp!1336710 () Bool)

(assert (=> b!4481662 (= e!2791290 tp!1336710)))

(declare-fun b!4481663 () Bool)

(declare-fun e!2791279 () Bool)

(declare-fun e!2791287 () Bool)

(assert (=> b!4481663 (= e!2791279 e!2791287)))

(declare-fun res!1860830 () Bool)

(assert (=> b!4481663 (=> res!1860830 e!2791287)))

(declare-fun lt!1668374 () ListMap!3393)

(assert (=> b!4481663 (= res!1860830 (not (= lt!1668374 lt!1668375)))))

(assert (=> b!4481663 (= lt!1668375 (extractMap!1118 (t!357463 (toList!4131 lm!1477))))))

(assert (=> b!4481663 (= lt!1668374 (extractMap!1118 (toList!4131 lt!1668377)))))

(declare-fun b!4481664 () Bool)

(declare-fun e!2791276 () Unit!89797)

(declare-fun Unit!89800 () Unit!89797)

(assert (=> b!4481664 (= e!2791276 Unit!89800)))

(declare-fun b!4481665 () Bool)

(declare-fun res!1860831 () Bool)

(declare-fun e!2791280 () Bool)

(assert (=> b!4481665 (=> res!1860831 e!2791280)))

(declare-fun lt!1668380 () ListMap!3393)

(declare-fun lt!1668382 () ListMap!3393)

(assert (=> b!4481665 (= res!1860831 (not (eq!555 lt!1668380 lt!1668382)))))

(declare-fun b!4481666 () Bool)

(declare-fun res!1860836 () Bool)

(assert (=> b!4481666 (=> res!1860836 e!2791280)))

(declare-fun -!324 (ListMap!3393 K!11795) ListMap!3393)

(assert (=> b!4481666 (= res!1860836 (not (eq!555 lt!1668373 (-!324 lt!1668382 key!3287))))))

(declare-fun b!4481667 () Bool)

(declare-fun e!2791291 () Bool)

(declare-fun e!2791284 () Bool)

(assert (=> b!4481667 (= e!2791291 e!2791284)))

(declare-fun res!1860828 () Bool)

(assert (=> b!4481667 (=> (not res!1860828) (not e!2791284))))

(declare-fun contains!12980 (ListMap!3393 K!11795) Bool)

(assert (=> b!4481667 (= res!1860828 (contains!12980 lt!1668382 key!3287))))

(assert (=> b!4481667 (= lt!1668382 (extractMap!1118 (toList!4131 lm!1477)))))

(declare-fun b!4481668 () Bool)

(declare-fun e!2791288 () Bool)

(assert (=> b!4481668 (= e!2791288 e!2791279)))

(declare-fun res!1860838 () Bool)

(assert (=> b!4481668 (=> res!1860838 e!2791279)))

(declare-fun lt!1668371 () tuple2!50684)

(declare-fun +!1420 (ListLongMap!2763 tuple2!50684) ListLongMap!2763)

(assert (=> b!4481668 (= res!1860838 (not (= lt!1668376 (+!1420 lt!1668377 lt!1668371))))))

(declare-fun tail!7576 (ListLongMap!2763) ListLongMap!2763)

(assert (=> b!4481668 (= lt!1668377 (tail!7576 lm!1477))))

(declare-fun b!4481669 () Bool)

(declare-fun e!2791289 () Bool)

(assert (=> b!4481669 (= e!2791289 e!2791283)))

(declare-fun res!1860842 () Bool)

(assert (=> b!4481669 (=> res!1860842 e!2791283)))

(assert (=> b!4481669 (= res!1860842 (not (= (toList!4131 lt!1668376) (Cons!50385 lt!1668371 (t!357463 (toList!4131 lm!1477))))))))

(declare-fun lt!1668372 () List!50509)

(declare-fun lt!1668394 () tuple2!50684)

(assert (=> b!4481669 (eq!555 (extractMap!1118 (Cons!50385 lt!1668371 lt!1668372)) (-!324 (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372)) key!3287))))

(declare-fun tail!7577 (List!50509) List!50509)

(assert (=> b!4481669 (= lt!1668372 (tail!7577 (toList!4131 lm!1477)))))

(declare-fun lt!1668386 () Unit!89797)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!22 (ListLongMap!2763 (_ BitVec 64) List!50508 List!50508 K!11795 Hashable!5457) Unit!89797)

(assert (=> b!4481669 (= lt!1668386 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!22 lm!1477 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4481670 () Bool)

(assert (=> b!4481670 (= e!2791277 e!2791280)))

(declare-fun res!1860825 () Bool)

(assert (=> b!4481670 (=> res!1860825 e!2791280)))

(assert (=> b!4481670 (= res!1860825 (not (eq!555 lt!1668380 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lm!1477))) lt!1668375))))))

(assert (=> b!4481670 (= lt!1668380 (extractMap!1118 (toList!4131 (+!1420 lm!1477 lt!1668394))))))

(declare-fun res!1860824 () Bool)

(assert (=> start!440876 (=> (not res!1860824) (not e!2791291))))

(declare-fun lambda!165505 () Int)

(declare-fun forall!10058 (List!50509 Int) Bool)

(assert (=> start!440876 (= res!1860824 (forall!10058 (toList!4131 lm!1477) lambda!165505))))

(assert (=> start!440876 e!2791291))

(assert (=> start!440876 true))

(declare-fun inv!65979 (ListLongMap!2763) Bool)

(assert (=> start!440876 (and (inv!65979 lm!1477) e!2791290)))

(declare-fun tp_is_empty!27525 () Bool)

(assert (=> start!440876 tp_is_empty!27525))

(declare-fun e!2791281 () Bool)

(assert (=> start!440876 e!2791281))

(declare-fun b!4481671 () Bool)

(declare-fun res!1860835 () Bool)

(assert (=> b!4481671 (=> res!1860835 e!2791293)))

(declare-fun noDuplicateKeys!1062 (List!50508) Bool)

(assert (=> b!4481671 (= res!1860835 (not (noDuplicateKeys!1062 newBucket!178)))))

(declare-fun b!4481672 () Bool)

(declare-fun tp_is_empty!27527 () Bool)

(declare-fun tp!1336711 () Bool)

(assert (=> b!4481672 (= e!2791281 (and tp_is_empty!27525 tp_is_empty!27527 tp!1336711))))

(declare-fun b!4481673 () Bool)

(declare-fun e!2791292 () Bool)

(declare-fun e!2791286 () Bool)

(assert (=> b!4481673 (= e!2791292 e!2791286)))

(declare-fun res!1860837 () Bool)

(assert (=> b!4481673 (=> res!1860837 e!2791286)))

(declare-fun lt!1668388 () List!50509)

(declare-fun containsKeyBiggerList!62 (List!50509 K!11795) Bool)

(assert (=> b!4481673 (= res!1860837 (not (containsKeyBiggerList!62 lt!1668388 key!3287)))))

(assert (=> b!4481673 (= lt!1668388 (Cons!50385 (h!56172 (toList!4131 lm!1477)) Nil!50385))))

(declare-fun b!4481674 () Bool)

(assert (=> b!4481674 (= e!2791287 e!2791289)))

(declare-fun res!1860832 () Bool)

(assert (=> b!4481674 (=> res!1860832 e!2791289)))

(declare-fun lt!1668383 () Bool)

(assert (=> b!4481674 (= res!1860832 lt!1668383)))

(declare-fun lt!1668392 () Unit!89797)

(assert (=> b!4481674 (= lt!1668392 e!2791278)))

(declare-fun c!763402 () Bool)

(assert (=> b!4481674 (= c!763402 lt!1668383)))

(assert (=> b!4481674 (= lt!1668383 (contains!12980 lt!1668374 key!3287))))

(declare-fun b!4481675 () Bool)

(declare-fun e!2791282 () Bool)

(assert (=> b!4481675 (= e!2791282 (not e!2791293))))

(declare-fun res!1860841 () Bool)

(assert (=> b!4481675 (=> res!1860841 e!2791293)))

(declare-fun lt!1668385 () List!50508)

(declare-fun removePairForKey!689 (List!50508 K!11795) List!50508)

(assert (=> b!4481675 (= res!1860841 (not (= newBucket!178 (removePairForKey!689 lt!1668385 key!3287))))))

(declare-fun lt!1668391 () Unit!89797)

(declare-fun lt!1668390 () tuple2!50684)

(declare-fun forallContained!2319 (List!50509 Int tuple2!50684) Unit!89797)

(assert (=> b!4481675 (= lt!1668391 (forallContained!2319 (toList!4131 lm!1477) lambda!165505 lt!1668390))))

(declare-fun contains!12981 (List!50509 tuple2!50684) Bool)

(assert (=> b!4481675 (contains!12981 (toList!4131 lm!1477) lt!1668390)))

(assert (=> b!4481675 (= lt!1668390 (tuple2!50685 hash!344 lt!1668385))))

(declare-fun lt!1668389 () Unit!89797)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!574 (List!50509 (_ BitVec 64) List!50508) Unit!89797)

(assert (=> b!4481675 (= lt!1668389 (lemmaGetValueByKeyImpliesContainsTuple!574 (toList!4131 lm!1477) hash!344 lt!1668385))))

(declare-fun apply!11799 (ListLongMap!2763 (_ BitVec 64)) List!50508)

(assert (=> b!4481675 (= lt!1668385 (apply!11799 lm!1477 hash!344))))

(assert (=> b!4481675 (contains!12979 lm!1477 lt!1668378)))

(declare-fun lt!1668384 () Unit!89797)

(assert (=> b!4481675 (= lt!1668384 (lemmaInGenMapThenLongMapContainsHash!136 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4481676 () Bool)

(assert (=> b!4481676 (= e!2791284 e!2791282)))

(declare-fun res!1860823 () Bool)

(assert (=> b!4481676 (=> (not res!1860823) (not e!2791282))))

(assert (=> b!4481676 (= res!1860823 (= lt!1668378 hash!344))))

(declare-fun hash!2555 (Hashable!5457 K!11795) (_ BitVec 64))

(assert (=> b!4481676 (= lt!1668378 (hash!2555 hashF!1107 key!3287))))

(declare-fun b!4481677 () Bool)

(assert (=> b!4481677 (= e!2791293 e!2791292)))

(declare-fun res!1860834 () Bool)

(assert (=> b!4481677 (=> res!1860834 e!2791292)))

(declare-fun lt!1668396 () Bool)

(assert (=> b!4481677 (= res!1860834 lt!1668396)))

(declare-fun lt!1668381 () Unit!89797)

(assert (=> b!4481677 (= lt!1668381 e!2791276)))

(declare-fun c!763403 () Bool)

(assert (=> b!4481677 (= c!763403 lt!1668396)))

(declare-fun containsKey!1554 (List!50508 K!11795) Bool)

(assert (=> b!4481677 (= lt!1668396 (not (containsKey!1554 (_2!28636 (h!56172 (toList!4131 lm!1477))) key!3287)))))

(declare-fun b!4481678 () Bool)

(assert (=> b!4481678 (= e!2791280 (forall!10058 (toList!4131 lt!1668376) lambda!165505))))

(declare-fun b!4481679 () Bool)

(assert (=> b!4481679 (= e!2791286 e!2791288)))

(declare-fun res!1860826 () Bool)

(assert (=> b!4481679 (=> res!1860826 e!2791288)))

(assert (=> b!4481679 (= res!1860826 (not (= (t!357463 (toList!4131 lm!1477)) (tail!7577 (toList!4131 lt!1668376)))))))

(assert (=> b!4481679 (= lt!1668376 (+!1420 lm!1477 lt!1668371))))

(assert (=> b!4481679 (eq!555 (extractMap!1118 (Cons!50385 lt!1668371 Nil!50385)) (-!324 (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385)) key!3287))))

(assert (=> b!4481679 (= lt!1668394 (tuple2!50685 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477)))))))

(assert (=> b!4481679 (= lt!1668371 (tuple2!50685 hash!344 newBucket!178))))

(declare-fun lt!1668379 () Unit!89797)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!54 ((_ BitVec 64) List!50508 List!50508 K!11795 Hashable!5457) Unit!89797)

(assert (=> b!4481679 (= lt!1668379 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!54 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4481679 (contains!12980 (extractMap!1118 lt!1668388) key!3287)))

(declare-fun lt!1668393 () Unit!89797)

(declare-fun lemmaListContainsThenExtractedMapContains!58 (ListLongMap!2763 K!11795 Hashable!5457) Unit!89797)

(assert (=> b!4481679 (= lt!1668393 (lemmaListContainsThenExtractedMapContains!58 (ListLongMap!2764 lt!1668388) key!3287 hashF!1107))))

(declare-fun b!4481680 () Bool)

(declare-fun Unit!89801 () Unit!89797)

(assert (=> b!4481680 (= e!2791276 Unit!89801)))

(declare-fun lt!1668395 () Unit!89797)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!62 (ListLongMap!2763 K!11795 Hashable!5457) Unit!89797)

(assert (=> b!4481680 (= lt!1668395 (lemmaNotInItsHashBucketThenNotInMap!62 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4481680 false))

(declare-fun b!4481681 () Bool)

(assert (=> b!4481681 (= e!2791285 false)))

(declare-fun b!4481682 () Bool)

(declare-fun Unit!89802 () Unit!89797)

(assert (=> b!4481682 (= e!2791278 Unit!89802)))

(declare-fun b!4481683 () Bool)

(declare-fun res!1860827 () Bool)

(assert (=> b!4481683 (=> (not res!1860827) (not e!2791291))))

(declare-fun allKeysSameHashInMap!1169 (ListLongMap!2763 Hashable!5457) Bool)

(assert (=> b!4481683 (= res!1860827 (allKeysSameHashInMap!1169 lm!1477 hashF!1107))))

(declare-fun b!4481684 () Bool)

(declare-fun res!1860840 () Bool)

(assert (=> b!4481684 (=> (not res!1860840) (not e!2791282))))

(declare-fun allKeysSameHash!916 (List!50508 (_ BitVec 64) Hashable!5457) Bool)

(assert (=> b!4481684 (= res!1860840 (allKeysSameHash!916 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!440876 res!1860824) b!4481683))

(assert (= (and b!4481683 res!1860827) b!4481667))

(assert (= (and b!4481667 res!1860828) b!4481676))

(assert (= (and b!4481676 res!1860823) b!4481684))

(assert (= (and b!4481684 res!1860840) b!4481675))

(assert (= (and b!4481675 (not res!1860841)) b!4481671))

(assert (= (and b!4481671 (not res!1860835)) b!4481660))

(assert (= (and b!4481660 (not res!1860829)) b!4481677))

(assert (= (and b!4481677 c!763403) b!4481680))

(assert (= (and b!4481677 (not c!763403)) b!4481664))

(assert (= (and b!4481677 (not res!1860834)) b!4481673))

(assert (= (and b!4481673 (not res!1860837)) b!4481679))

(assert (= (and b!4481679 (not res!1860826)) b!4481668))

(assert (= (and b!4481668 (not res!1860838)) b!4481663))

(assert (= (and b!4481663 (not res!1860830)) b!4481674))

(assert (= (and b!4481674 c!763402) b!4481659))

(assert (= (and b!4481674 (not c!763402)) b!4481682))

(assert (= (and b!4481659 res!1860839) b!4481681))

(assert (= (and b!4481674 (not res!1860832)) b!4481669))

(assert (= (and b!4481669 (not res!1860842)) b!4481661))

(assert (= (and b!4481661 (not res!1860833)) b!4481670))

(assert (= (and b!4481670 (not res!1860825)) b!4481665))

(assert (= (and b!4481665 (not res!1860831)) b!4481666))

(assert (= (and b!4481666 (not res!1860836)) b!4481678))

(assert (= start!440876 b!4481662))

(assert (= (and start!440876 ((_ is Cons!50384) newBucket!178)) b!4481672))

(declare-fun m!5201539 () Bool)

(assert (=> b!4481677 m!5201539))

(declare-fun m!5201541 () Bool)

(assert (=> b!4481661 m!5201541))

(assert (=> b!4481661 m!5201541))

(declare-fun m!5201543 () Bool)

(assert (=> b!4481661 m!5201543))

(declare-fun m!5201545 () Bool)

(assert (=> b!4481661 m!5201545))

(declare-fun m!5201547 () Bool)

(assert (=> b!4481678 m!5201547))

(declare-fun m!5201549 () Bool)

(assert (=> start!440876 m!5201549))

(declare-fun m!5201551 () Bool)

(assert (=> start!440876 m!5201551))

(declare-fun m!5201553 () Bool)

(assert (=> b!4481669 m!5201553))

(declare-fun m!5201555 () Bool)

(assert (=> b!4481669 m!5201555))

(declare-fun m!5201557 () Bool)

(assert (=> b!4481669 m!5201557))

(declare-fun m!5201559 () Bool)

(assert (=> b!4481669 m!5201559))

(assert (=> b!4481669 m!5201555))

(declare-fun m!5201561 () Bool)

(assert (=> b!4481669 m!5201561))

(declare-fun m!5201563 () Bool)

(assert (=> b!4481669 m!5201563))

(assert (=> b!4481669 m!5201553))

(assert (=> b!4481669 m!5201559))

(declare-fun m!5201565 () Bool)

(assert (=> b!4481680 m!5201565))

(declare-fun m!5201567 () Bool)

(assert (=> b!4481667 m!5201567))

(declare-fun m!5201569 () Bool)

(assert (=> b!4481667 m!5201569))

(declare-fun m!5201571 () Bool)

(assert (=> b!4481674 m!5201571))

(declare-fun m!5201573 () Bool)

(assert (=> b!4481666 m!5201573))

(assert (=> b!4481666 m!5201573))

(declare-fun m!5201575 () Bool)

(assert (=> b!4481666 m!5201575))

(declare-fun m!5201577 () Bool)

(assert (=> b!4481668 m!5201577))

(declare-fun m!5201579 () Bool)

(assert (=> b!4481668 m!5201579))

(declare-fun m!5201581 () Bool)

(assert (=> b!4481679 m!5201581))

(declare-fun m!5201583 () Bool)

(assert (=> b!4481679 m!5201583))

(declare-fun m!5201585 () Bool)

(assert (=> b!4481679 m!5201585))

(declare-fun m!5201587 () Bool)

(assert (=> b!4481679 m!5201587))

(declare-fun m!5201589 () Bool)

(assert (=> b!4481679 m!5201589))

(declare-fun m!5201591 () Bool)

(assert (=> b!4481679 m!5201591))

(assert (=> b!4481679 m!5201581))

(assert (=> b!4481679 m!5201589))

(declare-fun m!5201593 () Bool)

(assert (=> b!4481679 m!5201593))

(assert (=> b!4481679 m!5201585))

(assert (=> b!4481679 m!5201593))

(declare-fun m!5201595 () Bool)

(assert (=> b!4481679 m!5201595))

(declare-fun m!5201597 () Bool)

(assert (=> b!4481679 m!5201597))

(declare-fun m!5201599 () Bool)

(assert (=> b!4481679 m!5201599))

(declare-fun m!5201601 () Bool)

(assert (=> b!4481676 m!5201601))

(declare-fun m!5201603 () Bool)

(assert (=> b!4481671 m!5201603))

(declare-fun m!5201605 () Bool)

(assert (=> b!4481670 m!5201605))

(assert (=> b!4481670 m!5201605))

(declare-fun m!5201607 () Bool)

(assert (=> b!4481670 m!5201607))

(declare-fun m!5201609 () Bool)

(assert (=> b!4481670 m!5201609))

(declare-fun m!5201611 () Bool)

(assert (=> b!4481670 m!5201611))

(declare-fun m!5201613 () Bool)

(assert (=> b!4481663 m!5201613))

(declare-fun m!5201615 () Bool)

(assert (=> b!4481663 m!5201615))

(declare-fun m!5201617 () Bool)

(assert (=> b!4481673 m!5201617))

(declare-fun m!5201619 () Bool)

(assert (=> b!4481683 m!5201619))

(declare-fun m!5201621 () Bool)

(assert (=> b!4481675 m!5201621))

(declare-fun m!5201623 () Bool)

(assert (=> b!4481675 m!5201623))

(declare-fun m!5201625 () Bool)

(assert (=> b!4481675 m!5201625))

(declare-fun m!5201627 () Bool)

(assert (=> b!4481675 m!5201627))

(declare-fun m!5201629 () Bool)

(assert (=> b!4481675 m!5201629))

(declare-fun m!5201631 () Bool)

(assert (=> b!4481675 m!5201631))

(declare-fun m!5201633 () Bool)

(assert (=> b!4481675 m!5201633))

(declare-fun m!5201635 () Bool)

(assert (=> b!4481684 m!5201635))

(declare-fun m!5201637 () Bool)

(assert (=> b!4481665 m!5201637))

(declare-fun m!5201639 () Bool)

(assert (=> b!4481659 m!5201639))

(declare-fun m!5201641 () Bool)

(assert (=> b!4481659 m!5201641))

(check-sat (not b!4481669) (not b!4481663) (not b!4481676) (not b!4481672) (not b!4481684) tp_is_empty!27527 (not b!4481677) (not b!4481665) (not start!440876) tp_is_empty!27525 (not b!4481680) (not b!4481666) (not b!4481670) (not b!4481683) (not b!4481674) (not b!4481673) (not b!4481662) (not b!4481661) (not b!4481679) (not b!4481667) (not b!4481659) (not b!4481668) (not b!4481675) (not b!4481671) (not b!4481678))
(check-sat)
(get-model)

(declare-fun bs!825083 () Bool)

(declare-fun d!1371715 () Bool)

(assert (= bs!825083 (and d!1371715 start!440876)))

(declare-fun lambda!165508 () Int)

(assert (=> bs!825083 (not (= lambda!165508 lambda!165505))))

(assert (=> d!1371715 true))

(assert (=> d!1371715 (= (allKeysSameHashInMap!1169 lm!1477 hashF!1107) (forall!10058 (toList!4131 lm!1477) lambda!165508))))

(declare-fun bs!825084 () Bool)

(assert (= bs!825084 d!1371715))

(declare-fun m!5201643 () Bool)

(assert (=> bs!825084 m!5201643))

(assert (=> b!4481683 d!1371715))

(declare-fun d!1371717 () Bool)

(declare-fun res!1860851 () Bool)

(declare-fun e!2791301 () Bool)

(assert (=> d!1371717 (=> res!1860851 e!2791301)))

(declare-fun e!2791302 () Bool)

(assert (=> d!1371717 (= res!1860851 e!2791302)))

(declare-fun res!1860849 () Bool)

(assert (=> d!1371717 (=> (not res!1860849) (not e!2791302))))

(assert (=> d!1371717 (= res!1860849 ((_ is Cons!50385) lt!1668388))))

(assert (=> d!1371717 (= (containsKeyBiggerList!62 lt!1668388 key!3287) e!2791301)))

(declare-fun b!4481693 () Bool)

(assert (=> b!4481693 (= e!2791302 (containsKey!1554 (_2!28636 (h!56172 lt!1668388)) key!3287))))

(declare-fun b!4481694 () Bool)

(declare-fun e!2791300 () Bool)

(assert (=> b!4481694 (= e!2791301 e!2791300)))

(declare-fun res!1860850 () Bool)

(assert (=> b!4481694 (=> (not res!1860850) (not e!2791300))))

(assert (=> b!4481694 (= res!1860850 ((_ is Cons!50385) lt!1668388))))

(declare-fun b!4481695 () Bool)

(assert (=> b!4481695 (= e!2791300 (containsKeyBiggerList!62 (t!357463 lt!1668388) key!3287))))

(assert (= (and d!1371717 res!1860849) b!4481693))

(assert (= (and d!1371717 (not res!1860851)) b!4481694))

(assert (= (and b!4481694 res!1860850) b!4481695))

(declare-fun m!5201649 () Bool)

(assert (=> b!4481693 m!5201649))

(declare-fun m!5201651 () Bool)

(assert (=> b!4481695 m!5201651))

(assert (=> b!4481673 d!1371717))

(declare-fun d!1371723 () Bool)

(assert (=> d!1371723 true))

(assert (=> d!1371723 true))

(declare-fun lambda!165511 () Int)

(declare-fun forall!10060 (List!50508 Int) Bool)

(assert (=> d!1371723 (= (allKeysSameHash!916 newBucket!178 hash!344 hashF!1107) (forall!10060 newBucket!178 lambda!165511))))

(declare-fun bs!825086 () Bool)

(assert (= bs!825086 d!1371723))

(declare-fun m!5201667 () Bool)

(assert (=> bs!825086 m!5201667))

(assert (=> b!4481684 d!1371723))

(declare-fun bs!825090 () Bool)

(declare-fun d!1371727 () Bool)

(assert (= bs!825090 (and d!1371727 start!440876)))

(declare-fun lambda!165520 () Int)

(assert (=> bs!825090 (= lambda!165520 lambda!165505)))

(declare-fun bs!825091 () Bool)

(assert (= bs!825091 (and d!1371727 d!1371715)))

(assert (=> bs!825091 (not (= lambda!165520 lambda!165508))))

(declare-fun lt!1668429 () ListMap!3393)

(declare-fun invariantList!951 (List!50508) Bool)

(assert (=> d!1371727 (invariantList!951 (toList!4132 lt!1668429))))

(declare-fun e!2791326 () ListMap!3393)

(assert (=> d!1371727 (= lt!1668429 e!2791326)))

(declare-fun c!763415 () Bool)

(assert (=> d!1371727 (= c!763415 ((_ is Cons!50385) (t!357463 (toList!4131 lm!1477))))))

(assert (=> d!1371727 (forall!10058 (t!357463 (toList!4131 lm!1477)) lambda!165520)))

(assert (=> d!1371727 (= (extractMap!1118 (t!357463 (toList!4131 lm!1477))) lt!1668429)))

(declare-fun b!4481734 () Bool)

(assert (=> b!4481734 (= e!2791326 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (t!357463 (toList!4131 lm!1477)))) (extractMap!1118 (t!357463 (t!357463 (toList!4131 lm!1477))))))))

(declare-fun b!4481735 () Bool)

(assert (=> b!4481735 (= e!2791326 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371727 c!763415) b!4481734))

(assert (= (and d!1371727 (not c!763415)) b!4481735))

(declare-fun m!5201697 () Bool)

(assert (=> d!1371727 m!5201697))

(declare-fun m!5201699 () Bool)

(assert (=> d!1371727 m!5201699))

(declare-fun m!5201701 () Bool)

(assert (=> b!4481734 m!5201701))

(assert (=> b!4481734 m!5201701))

(declare-fun m!5201703 () Bool)

(assert (=> b!4481734 m!5201703))

(assert (=> b!4481663 d!1371727))

(declare-fun bs!825092 () Bool)

(declare-fun d!1371735 () Bool)

(assert (= bs!825092 (and d!1371735 start!440876)))

(declare-fun lambda!165521 () Int)

(assert (=> bs!825092 (= lambda!165521 lambda!165505)))

(declare-fun bs!825093 () Bool)

(assert (= bs!825093 (and d!1371735 d!1371715)))

(assert (=> bs!825093 (not (= lambda!165521 lambda!165508))))

(declare-fun bs!825094 () Bool)

(assert (= bs!825094 (and d!1371735 d!1371727)))

(assert (=> bs!825094 (= lambda!165521 lambda!165520)))

(declare-fun lt!1668430 () ListMap!3393)

(assert (=> d!1371735 (invariantList!951 (toList!4132 lt!1668430))))

(declare-fun e!2791333 () ListMap!3393)

(assert (=> d!1371735 (= lt!1668430 e!2791333)))

(declare-fun c!763416 () Bool)

(assert (=> d!1371735 (= c!763416 ((_ is Cons!50385) (toList!4131 lt!1668377)))))

(assert (=> d!1371735 (forall!10058 (toList!4131 lt!1668377) lambda!165521)))

(assert (=> d!1371735 (= (extractMap!1118 (toList!4131 lt!1668377)) lt!1668430)))

(declare-fun b!4481746 () Bool)

(assert (=> b!4481746 (= e!2791333 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lt!1668377))) (extractMap!1118 (t!357463 (toList!4131 lt!1668377)))))))

(declare-fun b!4481747 () Bool)

(assert (=> b!4481747 (= e!2791333 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371735 c!763416) b!4481746))

(assert (= (and d!1371735 (not c!763416)) b!4481747))

(declare-fun m!5201707 () Bool)

(assert (=> d!1371735 m!5201707))

(declare-fun m!5201709 () Bool)

(assert (=> d!1371735 m!5201709))

(declare-fun m!5201711 () Bool)

(assert (=> b!4481746 m!5201711))

(assert (=> b!4481746 m!5201711))

(declare-fun m!5201713 () Bool)

(assert (=> b!4481746 m!5201713))

(assert (=> b!4481663 d!1371735))

(declare-fun d!1371739 () Bool)

(declare-fun e!2791377 () Bool)

(assert (=> d!1371739 e!2791377))

(declare-fun res!1860904 () Bool)

(assert (=> d!1371739 (=> res!1860904 e!2791377)))

(declare-fun e!2791381 () Bool)

(assert (=> d!1371739 (= res!1860904 e!2791381)))

(declare-fun res!1860903 () Bool)

(assert (=> d!1371739 (=> (not res!1860903) (not e!2791381))))

(declare-fun lt!1668484 () Bool)

(assert (=> d!1371739 (= res!1860903 (not lt!1668484))))

(declare-fun lt!1668485 () Bool)

(assert (=> d!1371739 (= lt!1668484 lt!1668485)))

(declare-fun lt!1668482 () Unit!89797)

(declare-fun e!2791380 () Unit!89797)

(assert (=> d!1371739 (= lt!1668482 e!2791380)))

(declare-fun c!763430 () Bool)

(assert (=> d!1371739 (= c!763430 lt!1668485)))

(declare-fun containsKey!1557 (List!50508 K!11795) Bool)

(assert (=> d!1371739 (= lt!1668485 (containsKey!1557 (toList!4132 lt!1668374) key!3287))))

(assert (=> d!1371739 (= (contains!12980 lt!1668374 key!3287) lt!1668484)))

(declare-fun b!4481806 () Bool)

(assert (=> b!4481806 false))

(declare-fun lt!1668478 () Unit!89797)

(declare-fun lt!1668480 () Unit!89797)

(assert (=> b!4481806 (= lt!1668478 lt!1668480)))

(assert (=> b!4481806 (containsKey!1557 (toList!4132 lt!1668374) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!398 (List!50508 K!11795) Unit!89797)

(assert (=> b!4481806 (= lt!1668480 (lemmaInGetKeysListThenContainsKey!398 (toList!4132 lt!1668374) key!3287))))

(declare-fun e!2791379 () Unit!89797)

(declare-fun Unit!89817 () Unit!89797)

(assert (=> b!4481806 (= e!2791379 Unit!89817)))

(declare-fun b!4481807 () Bool)

(declare-fun e!2791376 () Bool)

(assert (=> b!4481807 (= e!2791377 e!2791376)))

(declare-fun res!1860902 () Bool)

(assert (=> b!4481807 (=> (not res!1860902) (not e!2791376))))

(declare-datatypes ((Option!10974 0))(
  ( (None!10973) (Some!10973 (v!44353 V!12041)) )
))
(declare-fun isDefined!8261 (Option!10974) Bool)

(declare-fun getValueByKey!960 (List!50508 K!11795) Option!10974)

(assert (=> b!4481807 (= res!1860902 (isDefined!8261 (getValueByKey!960 (toList!4132 lt!1668374) key!3287)))))

(declare-fun bm!312074 () Bool)

(declare-fun call!312079 () Bool)

(declare-datatypes ((List!50511 0))(
  ( (Nil!50387) (Cons!50387 (h!56176 K!11795) (t!357465 List!50511)) )
))
(declare-fun e!2791378 () List!50511)

(declare-fun contains!12983 (List!50511 K!11795) Bool)

(assert (=> bm!312074 (= call!312079 (contains!12983 e!2791378 key!3287))))

(declare-fun c!763431 () Bool)

(assert (=> bm!312074 (= c!763431 c!763430)))

(declare-fun b!4481808 () Bool)

(declare-fun keys!17426 (ListMap!3393) List!50511)

(assert (=> b!4481808 (= e!2791381 (not (contains!12983 (keys!17426 lt!1668374) key!3287)))))

(declare-fun b!4481809 () Bool)

(declare-fun getKeysList!399 (List!50508) List!50511)

(assert (=> b!4481809 (= e!2791378 (getKeysList!399 (toList!4132 lt!1668374)))))

(declare-fun b!4481810 () Bool)

(assert (=> b!4481810 (= e!2791376 (contains!12983 (keys!17426 lt!1668374) key!3287))))

(declare-fun b!4481811 () Bool)

(declare-fun lt!1668481 () Unit!89797)

(assert (=> b!4481811 (= e!2791380 lt!1668481)))

(declare-fun lt!1668483 () Unit!89797)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!864 (List!50508 K!11795) Unit!89797)

(assert (=> b!4481811 (= lt!1668483 (lemmaContainsKeyImpliesGetValueByKeyDefined!864 (toList!4132 lt!1668374) key!3287))))

(assert (=> b!4481811 (isDefined!8261 (getValueByKey!960 (toList!4132 lt!1668374) key!3287))))

(declare-fun lt!1668479 () Unit!89797)

(assert (=> b!4481811 (= lt!1668479 lt!1668483)))

(declare-fun lemmaInListThenGetKeysListContains!395 (List!50508 K!11795) Unit!89797)

(assert (=> b!4481811 (= lt!1668481 (lemmaInListThenGetKeysListContains!395 (toList!4132 lt!1668374) key!3287))))

(assert (=> b!4481811 call!312079))

(declare-fun b!4481812 () Bool)

(assert (=> b!4481812 (= e!2791380 e!2791379)))

(declare-fun c!763432 () Bool)

(assert (=> b!4481812 (= c!763432 call!312079)))

(declare-fun b!4481813 () Bool)

(declare-fun Unit!89818 () Unit!89797)

(assert (=> b!4481813 (= e!2791379 Unit!89818)))

(declare-fun b!4481814 () Bool)

(assert (=> b!4481814 (= e!2791378 (keys!17426 lt!1668374))))

(assert (= (and d!1371739 c!763430) b!4481811))

(assert (= (and d!1371739 (not c!763430)) b!4481812))

(assert (= (and b!4481812 c!763432) b!4481806))

(assert (= (and b!4481812 (not c!763432)) b!4481813))

(assert (= (or b!4481811 b!4481812) bm!312074))

(assert (= (and bm!312074 c!763431) b!4481809))

(assert (= (and bm!312074 (not c!763431)) b!4481814))

(assert (= (and d!1371739 res!1860903) b!4481808))

(assert (= (and d!1371739 (not res!1860904)) b!4481807))

(assert (= (and b!4481807 res!1860902) b!4481810))

(declare-fun m!5201773 () Bool)

(assert (=> b!4481806 m!5201773))

(declare-fun m!5201775 () Bool)

(assert (=> b!4481806 m!5201775))

(assert (=> d!1371739 m!5201773))

(declare-fun m!5201777 () Bool)

(assert (=> b!4481814 m!5201777))

(declare-fun m!5201779 () Bool)

(assert (=> b!4481809 m!5201779))

(declare-fun m!5201781 () Bool)

(assert (=> b!4481811 m!5201781))

(declare-fun m!5201783 () Bool)

(assert (=> b!4481811 m!5201783))

(assert (=> b!4481811 m!5201783))

(declare-fun m!5201785 () Bool)

(assert (=> b!4481811 m!5201785))

(declare-fun m!5201787 () Bool)

(assert (=> b!4481811 m!5201787))

(assert (=> b!4481810 m!5201777))

(assert (=> b!4481810 m!5201777))

(declare-fun m!5201789 () Bool)

(assert (=> b!4481810 m!5201789))

(assert (=> b!4481808 m!5201777))

(assert (=> b!4481808 m!5201777))

(assert (=> b!4481808 m!5201789))

(declare-fun m!5201791 () Bool)

(assert (=> bm!312074 m!5201791))

(assert (=> b!4481807 m!5201783))

(assert (=> b!4481807 m!5201783))

(assert (=> b!4481807 m!5201785))

(assert (=> b!4481674 d!1371739))

(declare-fun bs!825108 () Bool)

(declare-fun d!1371763 () Bool)

(assert (= bs!825108 (and d!1371763 start!440876)))

(declare-fun lambda!165531 () Int)

(assert (=> bs!825108 (= lambda!165531 lambda!165505)))

(declare-fun bs!825109 () Bool)

(assert (= bs!825109 (and d!1371763 d!1371715)))

(assert (=> bs!825109 (not (= lambda!165531 lambda!165508))))

(declare-fun bs!825110 () Bool)

(assert (= bs!825110 (and d!1371763 d!1371727)))

(assert (=> bs!825110 (= lambda!165531 lambda!165520)))

(declare-fun bs!825111 () Bool)

(assert (= bs!825111 (and d!1371763 d!1371735)))

(assert (=> bs!825111 (= lambda!165531 lambda!165521)))

(assert (=> d!1371763 (contains!12979 lm!1477 (hash!2555 hashF!1107 key!3287))))

(declare-fun lt!1668488 () Unit!89797)

(declare-fun choose!28775 (ListLongMap!2763 K!11795 Hashable!5457) Unit!89797)

(assert (=> d!1371763 (= lt!1668488 (choose!28775 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371763 (forall!10058 (toList!4131 lm!1477) lambda!165531)))

(assert (=> d!1371763 (= (lemmaInGenMapThenLongMapContainsHash!136 lm!1477 key!3287 hashF!1107) lt!1668488)))

(declare-fun bs!825112 () Bool)

(assert (= bs!825112 d!1371763))

(assert (=> bs!825112 m!5201601))

(assert (=> bs!825112 m!5201601))

(declare-fun m!5201793 () Bool)

(assert (=> bs!825112 m!5201793))

(declare-fun m!5201795 () Bool)

(assert (=> bs!825112 m!5201795))

(declare-fun m!5201797 () Bool)

(assert (=> bs!825112 m!5201797))

(assert (=> b!4481675 d!1371763))

(declare-fun d!1371765 () Bool)

(declare-datatypes ((Option!10975 0))(
  ( (None!10974) (Some!10974 (v!44354 List!50508)) )
))
(declare-fun get!16440 (Option!10975) List!50508)

(declare-fun getValueByKey!961 (List!50509 (_ BitVec 64)) Option!10975)

(assert (=> d!1371765 (= (apply!11799 lm!1477 hash!344) (get!16440 (getValueByKey!961 (toList!4131 lm!1477) hash!344)))))

(declare-fun bs!825113 () Bool)

(assert (= bs!825113 d!1371765))

(declare-fun m!5201799 () Bool)

(assert (=> bs!825113 m!5201799))

(assert (=> bs!825113 m!5201799))

(declare-fun m!5201801 () Bool)

(assert (=> bs!825113 m!5201801))

(assert (=> b!4481675 d!1371765))

(declare-fun d!1371767 () Bool)

(assert (=> d!1371767 (contains!12981 (toList!4131 lm!1477) (tuple2!50685 hash!344 lt!1668385))))

(declare-fun lt!1668491 () Unit!89797)

(declare-fun choose!28776 (List!50509 (_ BitVec 64) List!50508) Unit!89797)

(assert (=> d!1371767 (= lt!1668491 (choose!28776 (toList!4131 lm!1477) hash!344 lt!1668385))))

(declare-fun e!2791384 () Bool)

(assert (=> d!1371767 e!2791384))

(declare-fun res!1860907 () Bool)

(assert (=> d!1371767 (=> (not res!1860907) (not e!2791384))))

(declare-fun isStrictlySorted!365 (List!50509) Bool)

(assert (=> d!1371767 (= res!1860907 (isStrictlySorted!365 (toList!4131 lm!1477)))))

(assert (=> d!1371767 (= (lemmaGetValueByKeyImpliesContainsTuple!574 (toList!4131 lm!1477) hash!344 lt!1668385) lt!1668491)))

(declare-fun b!4481817 () Bool)

(assert (=> b!4481817 (= e!2791384 (= (getValueByKey!961 (toList!4131 lm!1477) hash!344) (Some!10974 lt!1668385)))))

(assert (= (and d!1371767 res!1860907) b!4481817))

(declare-fun m!5201803 () Bool)

(assert (=> d!1371767 m!5201803))

(declare-fun m!5201805 () Bool)

(assert (=> d!1371767 m!5201805))

(declare-fun m!5201807 () Bool)

(assert (=> d!1371767 m!5201807))

(assert (=> b!4481817 m!5201799))

(assert (=> b!4481675 d!1371767))

(declare-fun d!1371769 () Bool)

(declare-fun e!2791389 () Bool)

(assert (=> d!1371769 e!2791389))

(declare-fun res!1860910 () Bool)

(assert (=> d!1371769 (=> res!1860910 e!2791389)))

(declare-fun lt!1668503 () Bool)

(assert (=> d!1371769 (= res!1860910 (not lt!1668503))))

(declare-fun lt!1668500 () Bool)

(assert (=> d!1371769 (= lt!1668503 lt!1668500)))

(declare-fun lt!1668502 () Unit!89797)

(declare-fun e!2791390 () Unit!89797)

(assert (=> d!1371769 (= lt!1668502 e!2791390)))

(declare-fun c!763435 () Bool)

(assert (=> d!1371769 (= c!763435 lt!1668500)))

(declare-fun containsKey!1558 (List!50509 (_ BitVec 64)) Bool)

(assert (=> d!1371769 (= lt!1668500 (containsKey!1558 (toList!4131 lm!1477) lt!1668378))))

(assert (=> d!1371769 (= (contains!12979 lm!1477 lt!1668378) lt!1668503)))

(declare-fun b!4481824 () Bool)

(declare-fun lt!1668501 () Unit!89797)

(assert (=> b!4481824 (= e!2791390 lt!1668501)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!865 (List!50509 (_ BitVec 64)) Unit!89797)

(assert (=> b!4481824 (= lt!1668501 (lemmaContainsKeyImpliesGetValueByKeyDefined!865 (toList!4131 lm!1477) lt!1668378))))

(declare-fun isDefined!8262 (Option!10975) Bool)

(assert (=> b!4481824 (isDefined!8262 (getValueByKey!961 (toList!4131 lm!1477) lt!1668378))))

(declare-fun b!4481825 () Bool)

(declare-fun Unit!89830 () Unit!89797)

(assert (=> b!4481825 (= e!2791390 Unit!89830)))

(declare-fun b!4481826 () Bool)

(assert (=> b!4481826 (= e!2791389 (isDefined!8262 (getValueByKey!961 (toList!4131 lm!1477) lt!1668378)))))

(assert (= (and d!1371769 c!763435) b!4481824))

(assert (= (and d!1371769 (not c!763435)) b!4481825))

(assert (= (and d!1371769 (not res!1860910)) b!4481826))

(declare-fun m!5201809 () Bool)

(assert (=> d!1371769 m!5201809))

(declare-fun m!5201811 () Bool)

(assert (=> b!4481824 m!5201811))

(declare-fun m!5201813 () Bool)

(assert (=> b!4481824 m!5201813))

(assert (=> b!4481824 m!5201813))

(declare-fun m!5201815 () Bool)

(assert (=> b!4481824 m!5201815))

(assert (=> b!4481826 m!5201813))

(assert (=> b!4481826 m!5201813))

(assert (=> b!4481826 m!5201815))

(assert (=> b!4481675 d!1371769))

(declare-fun d!1371771 () Bool)

(declare-fun dynLambda!21048 (Int tuple2!50684) Bool)

(assert (=> d!1371771 (dynLambda!21048 lambda!165505 lt!1668390)))

(declare-fun lt!1668506 () Unit!89797)

(declare-fun choose!28777 (List!50509 Int tuple2!50684) Unit!89797)

(assert (=> d!1371771 (= lt!1668506 (choose!28777 (toList!4131 lm!1477) lambda!165505 lt!1668390))))

(declare-fun e!2791393 () Bool)

(assert (=> d!1371771 e!2791393))

(declare-fun res!1860913 () Bool)

(assert (=> d!1371771 (=> (not res!1860913) (not e!2791393))))

(assert (=> d!1371771 (= res!1860913 (forall!10058 (toList!4131 lm!1477) lambda!165505))))

(assert (=> d!1371771 (= (forallContained!2319 (toList!4131 lm!1477) lambda!165505 lt!1668390) lt!1668506)))

(declare-fun b!4481829 () Bool)

(assert (=> b!4481829 (= e!2791393 (contains!12981 (toList!4131 lm!1477) lt!1668390))))

(assert (= (and d!1371771 res!1860913) b!4481829))

(declare-fun b_lambda!150333 () Bool)

(assert (=> (not b_lambda!150333) (not d!1371771)))

(declare-fun m!5201817 () Bool)

(assert (=> d!1371771 m!5201817))

(declare-fun m!5201819 () Bool)

(assert (=> d!1371771 m!5201819))

(assert (=> d!1371771 m!5201549))

(assert (=> b!4481829 m!5201625))

(assert (=> b!4481675 d!1371771))

(declare-fun b!4481838 () Bool)

(declare-fun e!2791398 () List!50508)

(assert (=> b!4481838 (= e!2791398 (t!357462 lt!1668385))))

(declare-fun b!4481841 () Bool)

(declare-fun e!2791399 () List!50508)

(assert (=> b!4481841 (= e!2791399 Nil!50384)))

(declare-fun d!1371773 () Bool)

(declare-fun lt!1668509 () List!50508)

(assert (=> d!1371773 (not (containsKey!1554 lt!1668509 key!3287))))

(assert (=> d!1371773 (= lt!1668509 e!2791398)))

(declare-fun c!763441 () Bool)

(assert (=> d!1371773 (= c!763441 (and ((_ is Cons!50384) lt!1668385) (= (_1!28635 (h!56171 lt!1668385)) key!3287)))))

(assert (=> d!1371773 (noDuplicateKeys!1062 lt!1668385)))

(assert (=> d!1371773 (= (removePairForKey!689 lt!1668385 key!3287) lt!1668509)))

(declare-fun b!4481839 () Bool)

(assert (=> b!4481839 (= e!2791398 e!2791399)))

(declare-fun c!763440 () Bool)

(assert (=> b!4481839 (= c!763440 ((_ is Cons!50384) lt!1668385))))

(declare-fun b!4481840 () Bool)

(assert (=> b!4481840 (= e!2791399 (Cons!50384 (h!56171 lt!1668385) (removePairForKey!689 (t!357462 lt!1668385) key!3287)))))

(assert (= (and d!1371773 c!763441) b!4481838))

(assert (= (and d!1371773 (not c!763441)) b!4481839))

(assert (= (and b!4481839 c!763440) b!4481840))

(assert (= (and b!4481839 (not c!763440)) b!4481841))

(declare-fun m!5201821 () Bool)

(assert (=> d!1371773 m!5201821))

(declare-fun m!5201823 () Bool)

(assert (=> d!1371773 m!5201823))

(declare-fun m!5201825 () Bool)

(assert (=> b!4481840 m!5201825))

(assert (=> b!4481675 d!1371773))

(declare-fun d!1371775 () Bool)

(declare-fun lt!1668512 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8172 (List!50509) (InoxSet tuple2!50684))

(assert (=> d!1371775 (= lt!1668512 (select (content!8172 (toList!4131 lm!1477)) lt!1668390))))

(declare-fun e!2791405 () Bool)

(assert (=> d!1371775 (= lt!1668512 e!2791405)))

(declare-fun res!1860919 () Bool)

(assert (=> d!1371775 (=> (not res!1860919) (not e!2791405))))

(assert (=> d!1371775 (= res!1860919 ((_ is Cons!50385) (toList!4131 lm!1477)))))

(assert (=> d!1371775 (= (contains!12981 (toList!4131 lm!1477) lt!1668390) lt!1668512)))

(declare-fun b!4481846 () Bool)

(declare-fun e!2791404 () Bool)

(assert (=> b!4481846 (= e!2791405 e!2791404)))

(declare-fun res!1860918 () Bool)

(assert (=> b!4481846 (=> res!1860918 e!2791404)))

(assert (=> b!4481846 (= res!1860918 (= (h!56172 (toList!4131 lm!1477)) lt!1668390))))

(declare-fun b!4481847 () Bool)

(assert (=> b!4481847 (= e!2791404 (contains!12981 (t!357463 (toList!4131 lm!1477)) lt!1668390))))

(assert (= (and d!1371775 res!1860919) b!4481846))

(assert (= (and b!4481846 (not res!1860918)) b!4481847))

(declare-fun m!5201827 () Bool)

(assert (=> d!1371775 m!5201827))

(declare-fun m!5201829 () Bool)

(assert (=> d!1371775 m!5201829))

(declare-fun m!5201831 () Bool)

(assert (=> b!4481847 m!5201831))

(assert (=> b!4481675 d!1371775))

(declare-fun d!1371777 () Bool)

(declare-fun content!8173 (List!50508) (InoxSet tuple2!50682))

(assert (=> d!1371777 (= (eq!555 lt!1668380 lt!1668382) (= (content!8173 (toList!4132 lt!1668380)) (content!8173 (toList!4132 lt!1668382))))))

(declare-fun bs!825114 () Bool)

(assert (= bs!825114 d!1371777))

(declare-fun m!5201833 () Bool)

(assert (=> bs!825114 m!5201833))

(declare-fun m!5201835 () Bool)

(assert (=> bs!825114 m!5201835))

(assert (=> b!4481665 d!1371777))

(declare-fun d!1371779 () Bool)

(declare-fun hash!2560 (Hashable!5457 K!11795) (_ BitVec 64))

(assert (=> d!1371779 (= (hash!2555 hashF!1107 key!3287) (hash!2560 hashF!1107 key!3287))))

(declare-fun bs!825115 () Bool)

(assert (= bs!825115 d!1371779))

(declare-fun m!5201837 () Bool)

(assert (=> bs!825115 m!5201837))

(assert (=> b!4481676 d!1371779))

(declare-fun d!1371781 () Bool)

(assert (=> d!1371781 (= (eq!555 lt!1668373 (-!324 lt!1668382 key!3287)) (= (content!8173 (toList!4132 lt!1668373)) (content!8173 (toList!4132 (-!324 lt!1668382 key!3287)))))))

(declare-fun bs!825116 () Bool)

(assert (= bs!825116 d!1371781))

(declare-fun m!5201839 () Bool)

(assert (=> bs!825116 m!5201839))

(declare-fun m!5201841 () Bool)

(assert (=> bs!825116 m!5201841))

(assert (=> b!4481666 d!1371781))

(declare-fun d!1371783 () Bool)

(declare-fun e!2791408 () Bool)

(assert (=> d!1371783 e!2791408))

(declare-fun res!1860922 () Bool)

(assert (=> d!1371783 (=> (not res!1860922) (not e!2791408))))

(declare-fun lt!1668515 () ListMap!3393)

(assert (=> d!1371783 (= res!1860922 (not (contains!12980 lt!1668515 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!87 (List!50508 K!11795) List!50508)

(assert (=> d!1371783 (= lt!1668515 (ListMap!3394 (removePresrvNoDuplicatedKeys!87 (toList!4132 lt!1668382) key!3287)))))

(assert (=> d!1371783 (= (-!324 lt!1668382 key!3287) lt!1668515)))

(declare-fun b!4481850 () Bool)

(declare-fun content!8174 (List!50511) (InoxSet K!11795))

(assert (=> b!4481850 (= e!2791408 (= ((_ map and) (content!8174 (keys!17426 lt!1668382)) ((_ map not) (store ((as const (Array K!11795 Bool)) false) key!3287 true))) (content!8174 (keys!17426 lt!1668515))))))

(assert (= (and d!1371783 res!1860922) b!4481850))

(declare-fun m!5201843 () Bool)

(assert (=> d!1371783 m!5201843))

(declare-fun m!5201845 () Bool)

(assert (=> d!1371783 m!5201845))

(declare-fun m!5201847 () Bool)

(assert (=> b!4481850 m!5201847))

(declare-fun m!5201849 () Bool)

(assert (=> b!4481850 m!5201849))

(declare-fun m!5201851 () Bool)

(assert (=> b!4481850 m!5201851))

(declare-fun m!5201853 () Bool)

(assert (=> b!4481850 m!5201853))

(declare-fun m!5201855 () Bool)

(assert (=> b!4481850 m!5201855))

(assert (=> b!4481850 m!5201853))

(assert (=> b!4481850 m!5201847))

(assert (=> b!4481666 d!1371783))

(declare-fun d!1371785 () Bool)

(declare-fun res!1860927 () Bool)

(declare-fun e!2791413 () Bool)

(assert (=> d!1371785 (=> res!1860927 e!2791413)))

(assert (=> d!1371785 (= res!1860927 (and ((_ is Cons!50384) (_2!28636 (h!56172 (toList!4131 lm!1477)))) (= (_1!28635 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477))))) key!3287)))))

(assert (=> d!1371785 (= (containsKey!1554 (_2!28636 (h!56172 (toList!4131 lm!1477))) key!3287) e!2791413)))

(declare-fun b!4481855 () Bool)

(declare-fun e!2791414 () Bool)

(assert (=> b!4481855 (= e!2791413 e!2791414)))

(declare-fun res!1860928 () Bool)

(assert (=> b!4481855 (=> (not res!1860928) (not e!2791414))))

(assert (=> b!4481855 (= res!1860928 ((_ is Cons!50384) (_2!28636 (h!56172 (toList!4131 lm!1477)))))))

(declare-fun b!4481856 () Bool)

(assert (=> b!4481856 (= e!2791414 (containsKey!1554 (t!357462 (_2!28636 (h!56172 (toList!4131 lm!1477)))) key!3287))))

(assert (= (and d!1371785 (not res!1860927)) b!4481855))

(assert (= (and b!4481855 res!1860928) b!4481856))

(declare-fun m!5201857 () Bool)

(assert (=> b!4481856 m!5201857))

(assert (=> b!4481677 d!1371785))

(declare-fun d!1371787 () Bool)

(declare-fun e!2791416 () Bool)

(assert (=> d!1371787 e!2791416))

(declare-fun res!1860931 () Bool)

(assert (=> d!1371787 (=> res!1860931 e!2791416)))

(declare-fun e!2791420 () Bool)

(assert (=> d!1371787 (= res!1860931 e!2791420)))

(declare-fun res!1860930 () Bool)

(assert (=> d!1371787 (=> (not res!1860930) (not e!2791420))))

(declare-fun lt!1668522 () Bool)

(assert (=> d!1371787 (= res!1860930 (not lt!1668522))))

(declare-fun lt!1668523 () Bool)

(assert (=> d!1371787 (= lt!1668522 lt!1668523)))

(declare-fun lt!1668520 () Unit!89797)

(declare-fun e!2791419 () Unit!89797)

(assert (=> d!1371787 (= lt!1668520 e!2791419)))

(declare-fun c!763442 () Bool)

(assert (=> d!1371787 (= c!763442 lt!1668523)))

(assert (=> d!1371787 (= lt!1668523 (containsKey!1557 (toList!4132 lt!1668382) key!3287))))

(assert (=> d!1371787 (= (contains!12980 lt!1668382 key!3287) lt!1668522)))

(declare-fun b!4481857 () Bool)

(assert (=> b!4481857 false))

(declare-fun lt!1668516 () Unit!89797)

(declare-fun lt!1668518 () Unit!89797)

(assert (=> b!4481857 (= lt!1668516 lt!1668518)))

(assert (=> b!4481857 (containsKey!1557 (toList!4132 lt!1668382) key!3287)))

(assert (=> b!4481857 (= lt!1668518 (lemmaInGetKeysListThenContainsKey!398 (toList!4132 lt!1668382) key!3287))))

(declare-fun e!2791418 () Unit!89797)

(declare-fun Unit!89833 () Unit!89797)

(assert (=> b!4481857 (= e!2791418 Unit!89833)))

(declare-fun b!4481858 () Bool)

(declare-fun e!2791415 () Bool)

(assert (=> b!4481858 (= e!2791416 e!2791415)))

(declare-fun res!1860929 () Bool)

(assert (=> b!4481858 (=> (not res!1860929) (not e!2791415))))

(assert (=> b!4481858 (= res!1860929 (isDefined!8261 (getValueByKey!960 (toList!4132 lt!1668382) key!3287)))))

(declare-fun bm!312075 () Bool)

(declare-fun call!312080 () Bool)

(declare-fun e!2791417 () List!50511)

(assert (=> bm!312075 (= call!312080 (contains!12983 e!2791417 key!3287))))

(declare-fun c!763443 () Bool)

(assert (=> bm!312075 (= c!763443 c!763442)))

(declare-fun b!4481859 () Bool)

(assert (=> b!4481859 (= e!2791420 (not (contains!12983 (keys!17426 lt!1668382) key!3287)))))

(declare-fun b!4481860 () Bool)

(assert (=> b!4481860 (= e!2791417 (getKeysList!399 (toList!4132 lt!1668382)))))

(declare-fun b!4481861 () Bool)

(assert (=> b!4481861 (= e!2791415 (contains!12983 (keys!17426 lt!1668382) key!3287))))

(declare-fun b!4481862 () Bool)

(declare-fun lt!1668519 () Unit!89797)

(assert (=> b!4481862 (= e!2791419 lt!1668519)))

(declare-fun lt!1668521 () Unit!89797)

(assert (=> b!4481862 (= lt!1668521 (lemmaContainsKeyImpliesGetValueByKeyDefined!864 (toList!4132 lt!1668382) key!3287))))

(assert (=> b!4481862 (isDefined!8261 (getValueByKey!960 (toList!4132 lt!1668382) key!3287))))

(declare-fun lt!1668517 () Unit!89797)

(assert (=> b!4481862 (= lt!1668517 lt!1668521)))

(assert (=> b!4481862 (= lt!1668519 (lemmaInListThenGetKeysListContains!395 (toList!4132 lt!1668382) key!3287))))

(assert (=> b!4481862 call!312080))

(declare-fun b!4481863 () Bool)

(assert (=> b!4481863 (= e!2791419 e!2791418)))

(declare-fun c!763444 () Bool)

(assert (=> b!4481863 (= c!763444 call!312080)))

(declare-fun b!4481864 () Bool)

(declare-fun Unit!89834 () Unit!89797)

(assert (=> b!4481864 (= e!2791418 Unit!89834)))

(declare-fun b!4481865 () Bool)

(assert (=> b!4481865 (= e!2791417 (keys!17426 lt!1668382))))

(assert (= (and d!1371787 c!763442) b!4481862))

(assert (= (and d!1371787 (not c!763442)) b!4481863))

(assert (= (and b!4481863 c!763444) b!4481857))

(assert (= (and b!4481863 (not c!763444)) b!4481864))

(assert (= (or b!4481862 b!4481863) bm!312075))

(assert (= (and bm!312075 c!763443) b!4481860))

(assert (= (and bm!312075 (not c!763443)) b!4481865))

(assert (= (and d!1371787 res!1860930) b!4481859))

(assert (= (and d!1371787 (not res!1860931)) b!4481858))

(assert (= (and b!4481858 res!1860929) b!4481861))

(declare-fun m!5201859 () Bool)

(assert (=> b!4481857 m!5201859))

(declare-fun m!5201861 () Bool)

(assert (=> b!4481857 m!5201861))

(assert (=> d!1371787 m!5201859))

(assert (=> b!4481865 m!5201847))

(declare-fun m!5201863 () Bool)

(assert (=> b!4481860 m!5201863))

(declare-fun m!5201865 () Bool)

(assert (=> b!4481862 m!5201865))

(declare-fun m!5201867 () Bool)

(assert (=> b!4481862 m!5201867))

(assert (=> b!4481862 m!5201867))

(declare-fun m!5201869 () Bool)

(assert (=> b!4481862 m!5201869))

(declare-fun m!5201871 () Bool)

(assert (=> b!4481862 m!5201871))

(assert (=> b!4481861 m!5201847))

(assert (=> b!4481861 m!5201847))

(declare-fun m!5201873 () Bool)

(assert (=> b!4481861 m!5201873))

(assert (=> b!4481859 m!5201847))

(assert (=> b!4481859 m!5201847))

(assert (=> b!4481859 m!5201873))

(declare-fun m!5201875 () Bool)

(assert (=> bm!312075 m!5201875))

(assert (=> b!4481858 m!5201867))

(assert (=> b!4481858 m!5201867))

(assert (=> b!4481858 m!5201869))

(assert (=> b!4481667 d!1371787))

(declare-fun bs!825117 () Bool)

(declare-fun d!1371789 () Bool)

(assert (= bs!825117 (and d!1371789 start!440876)))

(declare-fun lambda!165532 () Int)

(assert (=> bs!825117 (= lambda!165532 lambda!165505)))

(declare-fun bs!825118 () Bool)

(assert (= bs!825118 (and d!1371789 d!1371727)))

(assert (=> bs!825118 (= lambda!165532 lambda!165520)))

(declare-fun bs!825119 () Bool)

(assert (= bs!825119 (and d!1371789 d!1371735)))

(assert (=> bs!825119 (= lambda!165532 lambda!165521)))

(declare-fun bs!825120 () Bool)

(assert (= bs!825120 (and d!1371789 d!1371763)))

(assert (=> bs!825120 (= lambda!165532 lambda!165531)))

(declare-fun bs!825121 () Bool)

(assert (= bs!825121 (and d!1371789 d!1371715)))

(assert (=> bs!825121 (not (= lambda!165532 lambda!165508))))

(declare-fun lt!1668524 () ListMap!3393)

(assert (=> d!1371789 (invariantList!951 (toList!4132 lt!1668524))))

(declare-fun e!2791421 () ListMap!3393)

(assert (=> d!1371789 (= lt!1668524 e!2791421)))

(declare-fun c!763445 () Bool)

(assert (=> d!1371789 (= c!763445 ((_ is Cons!50385) (toList!4131 lm!1477)))))

(assert (=> d!1371789 (forall!10058 (toList!4131 lm!1477) lambda!165532)))

(assert (=> d!1371789 (= (extractMap!1118 (toList!4131 lm!1477)) lt!1668524)))

(declare-fun b!4481866 () Bool)

(assert (=> b!4481866 (= e!2791421 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lm!1477))) (extractMap!1118 (t!357463 (toList!4131 lm!1477)))))))

(declare-fun b!4481867 () Bool)

(assert (=> b!4481867 (= e!2791421 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371789 c!763445) b!4481866))

(assert (= (and d!1371789 (not c!763445)) b!4481867))

(declare-fun m!5201877 () Bool)

(assert (=> d!1371789 m!5201877))

(declare-fun m!5201879 () Bool)

(assert (=> d!1371789 m!5201879))

(assert (=> b!4481866 m!5201613))

(assert (=> b!4481866 m!5201613))

(declare-fun m!5201881 () Bool)

(assert (=> b!4481866 m!5201881))

(assert (=> b!4481667 d!1371789))

(declare-fun d!1371791 () Bool)

(declare-fun res!1860936 () Bool)

(declare-fun e!2791428 () Bool)

(assert (=> d!1371791 (=> res!1860936 e!2791428)))

(assert (=> d!1371791 (= res!1860936 ((_ is Nil!50385) (toList!4131 lt!1668376)))))

(assert (=> d!1371791 (= (forall!10058 (toList!4131 lt!1668376) lambda!165505) e!2791428)))

(declare-fun b!4481876 () Bool)

(declare-fun e!2791429 () Bool)

(assert (=> b!4481876 (= e!2791428 e!2791429)))

(declare-fun res!1860937 () Bool)

(assert (=> b!4481876 (=> (not res!1860937) (not e!2791429))))

(assert (=> b!4481876 (= res!1860937 (dynLambda!21048 lambda!165505 (h!56172 (toList!4131 lt!1668376))))))

(declare-fun b!4481877 () Bool)

(assert (=> b!4481877 (= e!2791429 (forall!10058 (t!357463 (toList!4131 lt!1668376)) lambda!165505))))

(assert (= (and d!1371791 (not res!1860936)) b!4481876))

(assert (= (and b!4481876 res!1860937) b!4481877))

(declare-fun b_lambda!150335 () Bool)

(assert (=> (not b_lambda!150335) (not b!4481876)))

(declare-fun m!5201883 () Bool)

(assert (=> b!4481876 m!5201883))

(declare-fun m!5201885 () Bool)

(assert (=> b!4481877 m!5201885))

(assert (=> b!4481678 d!1371791))

(declare-fun d!1371793 () Bool)

(declare-fun e!2791434 () Bool)

(assert (=> d!1371793 e!2791434))

(declare-fun res!1860944 () Bool)

(assert (=> d!1371793 (=> (not res!1860944) (not e!2791434))))

(declare-fun lt!1668575 () ListLongMap!2763)

(assert (=> d!1371793 (= res!1860944 (contains!12979 lt!1668575 (_1!28636 lt!1668371)))))

(declare-fun lt!1668578 () List!50509)

(assert (=> d!1371793 (= lt!1668575 (ListLongMap!2764 lt!1668578))))

(declare-fun lt!1668577 () Unit!89797)

(declare-fun lt!1668576 () Unit!89797)

(assert (=> d!1371793 (= lt!1668577 lt!1668576)))

(assert (=> d!1371793 (= (getValueByKey!961 lt!1668578 (_1!28636 lt!1668371)) (Some!10974 (_2!28636 lt!1668371)))))

(declare-fun lemmaContainsTupThenGetReturnValue!610 (List!50509 (_ BitVec 64) List!50508) Unit!89797)

(assert (=> d!1371793 (= lt!1668576 (lemmaContainsTupThenGetReturnValue!610 lt!1668578 (_1!28636 lt!1668371) (_2!28636 lt!1668371)))))

(declare-fun insertStrictlySorted!354 (List!50509 (_ BitVec 64) List!50508) List!50509)

(assert (=> d!1371793 (= lt!1668578 (insertStrictlySorted!354 (toList!4131 lt!1668377) (_1!28636 lt!1668371) (_2!28636 lt!1668371)))))

(assert (=> d!1371793 (= (+!1420 lt!1668377 lt!1668371) lt!1668575)))

(declare-fun b!4481882 () Bool)

(declare-fun res!1860945 () Bool)

(assert (=> b!4481882 (=> (not res!1860945) (not e!2791434))))

(assert (=> b!4481882 (= res!1860945 (= (getValueByKey!961 (toList!4131 lt!1668575) (_1!28636 lt!1668371)) (Some!10974 (_2!28636 lt!1668371))))))

(declare-fun b!4481883 () Bool)

(assert (=> b!4481883 (= e!2791434 (contains!12981 (toList!4131 lt!1668575) lt!1668371))))

(assert (= (and d!1371793 res!1860944) b!4481882))

(assert (= (and b!4481882 res!1860945) b!4481883))

(declare-fun m!5201887 () Bool)

(assert (=> d!1371793 m!5201887))

(declare-fun m!5201889 () Bool)

(assert (=> d!1371793 m!5201889))

(declare-fun m!5201891 () Bool)

(assert (=> d!1371793 m!5201891))

(declare-fun m!5201893 () Bool)

(assert (=> d!1371793 m!5201893))

(declare-fun m!5201895 () Bool)

(assert (=> b!4481882 m!5201895))

(declare-fun m!5201897 () Bool)

(assert (=> b!4481883 m!5201897))

(assert (=> b!4481668 d!1371793))

(declare-fun d!1371795 () Bool)

(assert (=> d!1371795 (= (tail!7576 lm!1477) (ListLongMap!2764 (tail!7577 (toList!4131 lm!1477))))))

(declare-fun bs!825122 () Bool)

(assert (= bs!825122 d!1371795))

(assert (=> bs!825122 m!5201563))

(assert (=> b!4481668 d!1371795))

(declare-fun d!1371797 () Bool)

(declare-fun e!2791436 () Bool)

(assert (=> d!1371797 e!2791436))

(declare-fun res!1860948 () Bool)

(assert (=> d!1371797 (=> res!1860948 e!2791436)))

(declare-fun e!2791440 () Bool)

(assert (=> d!1371797 (= res!1860948 e!2791440)))

(declare-fun res!1860947 () Bool)

(assert (=> d!1371797 (=> (not res!1860947) (not e!2791440))))

(declare-fun lt!1668585 () Bool)

(assert (=> d!1371797 (= res!1860947 (not lt!1668585))))

(declare-fun lt!1668586 () Bool)

(assert (=> d!1371797 (= lt!1668585 lt!1668586)))

(declare-fun lt!1668583 () Unit!89797)

(declare-fun e!2791439 () Unit!89797)

(assert (=> d!1371797 (= lt!1668583 e!2791439)))

(declare-fun c!763448 () Bool)

(assert (=> d!1371797 (= c!763448 lt!1668586)))

(assert (=> d!1371797 (= lt!1668586 (containsKey!1557 (toList!4132 (extractMap!1118 lt!1668388)) key!3287))))

(assert (=> d!1371797 (= (contains!12980 (extractMap!1118 lt!1668388) key!3287) lt!1668585)))

(declare-fun b!4481886 () Bool)

(assert (=> b!4481886 false))

(declare-fun lt!1668579 () Unit!89797)

(declare-fun lt!1668581 () Unit!89797)

(assert (=> b!4481886 (= lt!1668579 lt!1668581)))

(assert (=> b!4481886 (containsKey!1557 (toList!4132 (extractMap!1118 lt!1668388)) key!3287)))

(assert (=> b!4481886 (= lt!1668581 (lemmaInGetKeysListThenContainsKey!398 (toList!4132 (extractMap!1118 lt!1668388)) key!3287))))

(declare-fun e!2791438 () Unit!89797)

(declare-fun Unit!89835 () Unit!89797)

(assert (=> b!4481886 (= e!2791438 Unit!89835)))

(declare-fun b!4481887 () Bool)

(declare-fun e!2791435 () Bool)

(assert (=> b!4481887 (= e!2791436 e!2791435)))

(declare-fun res!1860946 () Bool)

(assert (=> b!4481887 (=> (not res!1860946) (not e!2791435))))

(assert (=> b!4481887 (= res!1860946 (isDefined!8261 (getValueByKey!960 (toList!4132 (extractMap!1118 lt!1668388)) key!3287)))))

(declare-fun bm!312076 () Bool)

(declare-fun call!312081 () Bool)

(declare-fun e!2791437 () List!50511)

(assert (=> bm!312076 (= call!312081 (contains!12983 e!2791437 key!3287))))

(declare-fun c!763449 () Bool)

(assert (=> bm!312076 (= c!763449 c!763448)))

(declare-fun b!4481888 () Bool)

(assert (=> b!4481888 (= e!2791440 (not (contains!12983 (keys!17426 (extractMap!1118 lt!1668388)) key!3287)))))

(declare-fun b!4481889 () Bool)

(assert (=> b!4481889 (= e!2791437 (getKeysList!399 (toList!4132 (extractMap!1118 lt!1668388))))))

(declare-fun b!4481890 () Bool)

(assert (=> b!4481890 (= e!2791435 (contains!12983 (keys!17426 (extractMap!1118 lt!1668388)) key!3287))))

(declare-fun b!4481891 () Bool)

(declare-fun lt!1668582 () Unit!89797)

(assert (=> b!4481891 (= e!2791439 lt!1668582)))

(declare-fun lt!1668584 () Unit!89797)

(assert (=> b!4481891 (= lt!1668584 (lemmaContainsKeyImpliesGetValueByKeyDefined!864 (toList!4132 (extractMap!1118 lt!1668388)) key!3287))))

(assert (=> b!4481891 (isDefined!8261 (getValueByKey!960 (toList!4132 (extractMap!1118 lt!1668388)) key!3287))))

(declare-fun lt!1668580 () Unit!89797)

(assert (=> b!4481891 (= lt!1668580 lt!1668584)))

(assert (=> b!4481891 (= lt!1668582 (lemmaInListThenGetKeysListContains!395 (toList!4132 (extractMap!1118 lt!1668388)) key!3287))))

(assert (=> b!4481891 call!312081))

(declare-fun b!4481892 () Bool)

(assert (=> b!4481892 (= e!2791439 e!2791438)))

(declare-fun c!763450 () Bool)

(assert (=> b!4481892 (= c!763450 call!312081)))

(declare-fun b!4481893 () Bool)

(declare-fun Unit!89836 () Unit!89797)

(assert (=> b!4481893 (= e!2791438 Unit!89836)))

(declare-fun b!4481894 () Bool)

(assert (=> b!4481894 (= e!2791437 (keys!17426 (extractMap!1118 lt!1668388)))))

(assert (= (and d!1371797 c!763448) b!4481891))

(assert (= (and d!1371797 (not c!763448)) b!4481892))

(assert (= (and b!4481892 c!763450) b!4481886))

(assert (= (and b!4481892 (not c!763450)) b!4481893))

(assert (= (or b!4481891 b!4481892) bm!312076))

(assert (= (and bm!312076 c!763449) b!4481889))

(assert (= (and bm!312076 (not c!763449)) b!4481894))

(assert (= (and d!1371797 res!1860947) b!4481888))

(assert (= (and d!1371797 (not res!1860948)) b!4481887))

(assert (= (and b!4481887 res!1860946) b!4481890))

(declare-fun m!5201899 () Bool)

(assert (=> b!4481886 m!5201899))

(declare-fun m!5201901 () Bool)

(assert (=> b!4481886 m!5201901))

(assert (=> d!1371797 m!5201899))

(assert (=> b!4481894 m!5201581))

(declare-fun m!5201903 () Bool)

(assert (=> b!4481894 m!5201903))

(declare-fun m!5201905 () Bool)

(assert (=> b!4481889 m!5201905))

(declare-fun m!5201907 () Bool)

(assert (=> b!4481891 m!5201907))

(declare-fun m!5201909 () Bool)

(assert (=> b!4481891 m!5201909))

(assert (=> b!4481891 m!5201909))

(declare-fun m!5201911 () Bool)

(assert (=> b!4481891 m!5201911))

(declare-fun m!5201913 () Bool)

(assert (=> b!4481891 m!5201913))

(assert (=> b!4481890 m!5201581))

(assert (=> b!4481890 m!5201903))

(assert (=> b!4481890 m!5201903))

(declare-fun m!5201915 () Bool)

(assert (=> b!4481890 m!5201915))

(assert (=> b!4481888 m!5201581))

(assert (=> b!4481888 m!5201903))

(assert (=> b!4481888 m!5201903))

(assert (=> b!4481888 m!5201915))

(declare-fun m!5201917 () Bool)

(assert (=> bm!312076 m!5201917))

(assert (=> b!4481887 m!5201909))

(assert (=> b!4481887 m!5201909))

(assert (=> b!4481887 m!5201911))

(assert (=> b!4481679 d!1371797))

(declare-fun bs!825123 () Bool)

(declare-fun d!1371799 () Bool)

(assert (= bs!825123 (and d!1371799 start!440876)))

(declare-fun lambda!165557 () Int)

(assert (=> bs!825123 (= lambda!165557 lambda!165505)))

(declare-fun bs!825124 () Bool)

(assert (= bs!825124 (and d!1371799 d!1371727)))

(assert (=> bs!825124 (= lambda!165557 lambda!165520)))

(declare-fun bs!825125 () Bool)

(assert (= bs!825125 (and d!1371799 d!1371735)))

(assert (=> bs!825125 (= lambda!165557 lambda!165521)))

(declare-fun bs!825126 () Bool)

(assert (= bs!825126 (and d!1371799 d!1371789)))

(assert (=> bs!825126 (= lambda!165557 lambda!165532)))

(declare-fun bs!825127 () Bool)

(assert (= bs!825127 (and d!1371799 d!1371763)))

(assert (=> bs!825127 (= lambda!165557 lambda!165531)))

(declare-fun bs!825128 () Bool)

(assert (= bs!825128 (and d!1371799 d!1371715)))

(assert (=> bs!825128 (not (= lambda!165557 lambda!165508))))

(declare-fun lt!1668587 () ListMap!3393)

(assert (=> d!1371799 (invariantList!951 (toList!4132 lt!1668587))))

(declare-fun e!2791441 () ListMap!3393)

(assert (=> d!1371799 (= lt!1668587 e!2791441)))

(declare-fun c!763451 () Bool)

(assert (=> d!1371799 (= c!763451 ((_ is Cons!50385) lt!1668388))))

(assert (=> d!1371799 (forall!10058 lt!1668388 lambda!165557)))

(assert (=> d!1371799 (= (extractMap!1118 lt!1668388) lt!1668587)))

(declare-fun b!4481895 () Bool)

(assert (=> b!4481895 (= e!2791441 (addToMapMapFromBucket!617 (_2!28636 (h!56172 lt!1668388)) (extractMap!1118 (t!357463 lt!1668388))))))

(declare-fun b!4481896 () Bool)

(assert (=> b!4481896 (= e!2791441 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371799 c!763451) b!4481895))

(assert (= (and d!1371799 (not c!763451)) b!4481896))

(declare-fun m!5201919 () Bool)

(assert (=> d!1371799 m!5201919))

(declare-fun m!5201921 () Bool)

(assert (=> d!1371799 m!5201921))

(declare-fun m!5201923 () Bool)

(assert (=> b!4481895 m!5201923))

(assert (=> b!4481895 m!5201923))

(declare-fun m!5201925 () Bool)

(assert (=> b!4481895 m!5201925))

(assert (=> b!4481679 d!1371799))

(declare-fun bs!825129 () Bool)

(declare-fun d!1371801 () Bool)

(assert (= bs!825129 (and d!1371801 start!440876)))

(declare-fun lambda!165560 () Int)

(assert (=> bs!825129 (= lambda!165560 lambda!165505)))

(declare-fun bs!825130 () Bool)

(assert (= bs!825130 (and d!1371801 d!1371727)))

(assert (=> bs!825130 (= lambda!165560 lambda!165520)))

(declare-fun bs!825131 () Bool)

(assert (= bs!825131 (and d!1371801 d!1371789)))

(assert (=> bs!825131 (= lambda!165560 lambda!165532)))

(declare-fun bs!825132 () Bool)

(assert (= bs!825132 (and d!1371801 d!1371763)))

(assert (=> bs!825132 (= lambda!165560 lambda!165531)))

(declare-fun bs!825133 () Bool)

(assert (= bs!825133 (and d!1371801 d!1371715)))

(assert (=> bs!825133 (not (= lambda!165560 lambda!165508))))

(declare-fun bs!825134 () Bool)

(assert (= bs!825134 (and d!1371801 d!1371799)))

(assert (=> bs!825134 (= lambda!165560 lambda!165557)))

(declare-fun bs!825135 () Bool)

(assert (= bs!825135 (and d!1371801 d!1371735)))

(assert (=> bs!825135 (= lambda!165560 lambda!165521)))

(declare-fun lt!1668588 () ListMap!3393)

(assert (=> d!1371801 (invariantList!951 (toList!4132 lt!1668588))))

(declare-fun e!2791444 () ListMap!3393)

(assert (=> d!1371801 (= lt!1668588 e!2791444)))

(declare-fun c!763452 () Bool)

(assert (=> d!1371801 (= c!763452 ((_ is Cons!50385) (Cons!50385 lt!1668371 Nil!50385)))))

(assert (=> d!1371801 (forall!10058 (Cons!50385 lt!1668371 Nil!50385) lambda!165560)))

(assert (=> d!1371801 (= (extractMap!1118 (Cons!50385 lt!1668371 Nil!50385)) lt!1668588)))

(declare-fun b!4481899 () Bool)

(assert (=> b!4481899 (= e!2791444 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (Cons!50385 lt!1668371 Nil!50385))) (extractMap!1118 (t!357463 (Cons!50385 lt!1668371 Nil!50385)))))))

(declare-fun b!4481900 () Bool)

(assert (=> b!4481900 (= e!2791444 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371801 c!763452) b!4481899))

(assert (= (and d!1371801 (not c!763452)) b!4481900))

(declare-fun m!5201927 () Bool)

(assert (=> d!1371801 m!5201927))

(declare-fun m!5201929 () Bool)

(assert (=> d!1371801 m!5201929))

(declare-fun m!5201931 () Bool)

(assert (=> b!4481899 m!5201931))

(assert (=> b!4481899 m!5201931))

(declare-fun m!5201933 () Bool)

(assert (=> b!4481899 m!5201933))

(assert (=> b!4481679 d!1371801))

(declare-fun d!1371803 () Bool)

(assert (=> d!1371803 (= (eq!555 (extractMap!1118 (Cons!50385 lt!1668371 Nil!50385)) (-!324 (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385)) key!3287)) (= (content!8173 (toList!4132 (extractMap!1118 (Cons!50385 lt!1668371 Nil!50385)))) (content!8173 (toList!4132 (-!324 (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385)) key!3287)))))))

(declare-fun bs!825136 () Bool)

(assert (= bs!825136 d!1371803))

(declare-fun m!5201935 () Bool)

(assert (=> bs!825136 m!5201935))

(declare-fun m!5201937 () Bool)

(assert (=> bs!825136 m!5201937))

(assert (=> b!4481679 d!1371803))

(declare-fun d!1371805 () Bool)

(assert (=> d!1371805 (= (tail!7577 (toList!4131 lt!1668376)) (t!357463 (toList!4131 lt!1668376)))))

(assert (=> b!4481679 d!1371805))

(declare-fun d!1371807 () Bool)

(declare-fun e!2791445 () Bool)

(assert (=> d!1371807 e!2791445))

(declare-fun res!1860953 () Bool)

(assert (=> d!1371807 (=> (not res!1860953) (not e!2791445))))

(declare-fun lt!1668589 () ListMap!3393)

(assert (=> d!1371807 (= res!1860953 (not (contains!12980 lt!1668589 key!3287)))))

(assert (=> d!1371807 (= lt!1668589 (ListMap!3394 (removePresrvNoDuplicatedKeys!87 (toList!4132 (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385))) key!3287)))))

(assert (=> d!1371807 (= (-!324 (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385)) key!3287) lt!1668589)))

(declare-fun b!4481903 () Bool)

(assert (=> b!4481903 (= e!2791445 (= ((_ map and) (content!8174 (keys!17426 (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385)))) ((_ map not) (store ((as const (Array K!11795 Bool)) false) key!3287 true))) (content!8174 (keys!17426 lt!1668589))))))

(assert (= (and d!1371807 res!1860953) b!4481903))

(declare-fun m!5201939 () Bool)

(assert (=> d!1371807 m!5201939))

(declare-fun m!5201941 () Bool)

(assert (=> d!1371807 m!5201941))

(declare-fun m!5201943 () Bool)

(assert (=> b!4481903 m!5201943))

(declare-fun m!5201945 () Bool)

(assert (=> b!4481903 m!5201945))

(assert (=> b!4481903 m!5201851))

(declare-fun m!5201947 () Bool)

(assert (=> b!4481903 m!5201947))

(declare-fun m!5201949 () Bool)

(assert (=> b!4481903 m!5201949))

(assert (=> b!4481903 m!5201947))

(assert (=> b!4481903 m!5201589))

(assert (=> b!4481903 m!5201943))

(assert (=> b!4481679 d!1371807))

(declare-fun bs!825156 () Bool)

(declare-fun d!1371809 () Bool)

(assert (= bs!825156 (and d!1371809 start!440876)))

(declare-fun lambda!165572 () Int)

(assert (=> bs!825156 (= lambda!165572 lambda!165505)))

(declare-fun bs!825158 () Bool)

(assert (= bs!825158 (and d!1371809 d!1371727)))

(assert (=> bs!825158 (= lambda!165572 lambda!165520)))

(declare-fun bs!825160 () Bool)

(assert (= bs!825160 (and d!1371809 d!1371801)))

(assert (=> bs!825160 (= lambda!165572 lambda!165560)))

(declare-fun bs!825161 () Bool)

(assert (= bs!825161 (and d!1371809 d!1371789)))

(assert (=> bs!825161 (= lambda!165572 lambda!165532)))

(declare-fun bs!825162 () Bool)

(assert (= bs!825162 (and d!1371809 d!1371763)))

(assert (=> bs!825162 (= lambda!165572 lambda!165531)))

(declare-fun bs!825163 () Bool)

(assert (= bs!825163 (and d!1371809 d!1371715)))

(assert (=> bs!825163 (not (= lambda!165572 lambda!165508))))

(declare-fun bs!825164 () Bool)

(assert (= bs!825164 (and d!1371809 d!1371799)))

(assert (=> bs!825164 (= lambda!165572 lambda!165557)))

(declare-fun bs!825165 () Bool)

(assert (= bs!825165 (and d!1371809 d!1371735)))

(assert (=> bs!825165 (= lambda!165572 lambda!165521)))

(assert (=> d!1371809 (contains!12980 (extractMap!1118 (toList!4131 (ListLongMap!2764 lt!1668388))) key!3287)))

(declare-fun lt!1668635 () Unit!89797)

(declare-fun choose!28780 (ListLongMap!2763 K!11795 Hashable!5457) Unit!89797)

(assert (=> d!1371809 (= lt!1668635 (choose!28780 (ListLongMap!2764 lt!1668388) key!3287 hashF!1107))))

(assert (=> d!1371809 (forall!10058 (toList!4131 (ListLongMap!2764 lt!1668388)) lambda!165572)))

(assert (=> d!1371809 (= (lemmaListContainsThenExtractedMapContains!58 (ListLongMap!2764 lt!1668388) key!3287 hashF!1107) lt!1668635)))

(declare-fun bs!825166 () Bool)

(assert (= bs!825166 d!1371809))

(declare-fun m!5201997 () Bool)

(assert (=> bs!825166 m!5201997))

(assert (=> bs!825166 m!5201997))

(declare-fun m!5201999 () Bool)

(assert (=> bs!825166 m!5201999))

(declare-fun m!5202001 () Bool)

(assert (=> bs!825166 m!5202001))

(declare-fun m!5202003 () Bool)

(assert (=> bs!825166 m!5202003))

(assert (=> b!4481679 d!1371809))

(declare-fun d!1371817 () Bool)

(declare-fun e!2791453 () Bool)

(assert (=> d!1371817 e!2791453))

(declare-fun res!1860960 () Bool)

(assert (=> d!1371817 (=> (not res!1860960) (not e!2791453))))

(declare-fun lt!1668636 () ListLongMap!2763)

(assert (=> d!1371817 (= res!1860960 (contains!12979 lt!1668636 (_1!28636 lt!1668371)))))

(declare-fun lt!1668639 () List!50509)

(assert (=> d!1371817 (= lt!1668636 (ListLongMap!2764 lt!1668639))))

(declare-fun lt!1668638 () Unit!89797)

(declare-fun lt!1668637 () Unit!89797)

(assert (=> d!1371817 (= lt!1668638 lt!1668637)))

(assert (=> d!1371817 (= (getValueByKey!961 lt!1668639 (_1!28636 lt!1668371)) (Some!10974 (_2!28636 lt!1668371)))))

(assert (=> d!1371817 (= lt!1668637 (lemmaContainsTupThenGetReturnValue!610 lt!1668639 (_1!28636 lt!1668371) (_2!28636 lt!1668371)))))

(assert (=> d!1371817 (= lt!1668639 (insertStrictlySorted!354 (toList!4131 lm!1477) (_1!28636 lt!1668371) (_2!28636 lt!1668371)))))

(assert (=> d!1371817 (= (+!1420 lm!1477 lt!1668371) lt!1668636)))

(declare-fun b!4481918 () Bool)

(declare-fun res!1860961 () Bool)

(assert (=> b!4481918 (=> (not res!1860961) (not e!2791453))))

(assert (=> b!4481918 (= res!1860961 (= (getValueByKey!961 (toList!4131 lt!1668636) (_1!28636 lt!1668371)) (Some!10974 (_2!28636 lt!1668371))))))

(declare-fun b!4481919 () Bool)

(assert (=> b!4481919 (= e!2791453 (contains!12981 (toList!4131 lt!1668636) lt!1668371))))

(assert (= (and d!1371817 res!1860960) b!4481918))

(assert (= (and b!4481918 res!1860961) b!4481919))

(declare-fun m!5202005 () Bool)

(assert (=> d!1371817 m!5202005))

(declare-fun m!5202007 () Bool)

(assert (=> d!1371817 m!5202007))

(declare-fun m!5202009 () Bool)

(assert (=> d!1371817 m!5202009))

(declare-fun m!5202011 () Bool)

(assert (=> d!1371817 m!5202011))

(declare-fun m!5202013 () Bool)

(assert (=> b!4481918 m!5202013))

(declare-fun m!5202015 () Bool)

(assert (=> b!4481919 m!5202015))

(assert (=> b!4481679 d!1371817))

(declare-fun d!1371819 () Bool)

(assert (=> d!1371819 (eq!555 (extractMap!1118 (Cons!50385 (tuple2!50685 hash!344 newBucket!178) Nil!50385)) (-!324 (extractMap!1118 (Cons!50385 (tuple2!50685 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477)))) Nil!50385)) key!3287))))

(declare-fun lt!1668660 () Unit!89797)

(declare-fun choose!28781 ((_ BitVec 64) List!50508 List!50508 K!11795 Hashable!5457) Unit!89797)

(assert (=> d!1371819 (= lt!1668660 (choose!28781 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371819 (noDuplicateKeys!1062 (_2!28636 (h!56172 (toList!4131 lm!1477))))))

(assert (=> d!1371819 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!54 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1668660)))

(declare-fun bs!825197 () Bool)

(assert (= bs!825197 d!1371819))

(declare-fun m!5202111 () Bool)

(assert (=> bs!825197 m!5202111))

(declare-fun m!5202113 () Bool)

(assert (=> bs!825197 m!5202113))

(declare-fun m!5202115 () Bool)

(assert (=> bs!825197 m!5202115))

(assert (=> bs!825197 m!5202111))

(declare-fun m!5202117 () Bool)

(assert (=> bs!825197 m!5202117))

(assert (=> bs!825197 m!5202113))

(assert (=> bs!825197 m!5202117))

(declare-fun m!5202119 () Bool)

(assert (=> bs!825197 m!5202119))

(declare-fun m!5202121 () Bool)

(assert (=> bs!825197 m!5202121))

(assert (=> b!4481679 d!1371819))

(declare-fun bs!825198 () Bool)

(declare-fun d!1371839 () Bool)

(assert (= bs!825198 (and d!1371839 start!440876)))

(declare-fun lambda!165578 () Int)

(assert (=> bs!825198 (= lambda!165578 lambda!165505)))

(declare-fun bs!825199 () Bool)

(assert (= bs!825199 (and d!1371839 d!1371727)))

(assert (=> bs!825199 (= lambda!165578 lambda!165520)))

(declare-fun bs!825200 () Bool)

(assert (= bs!825200 (and d!1371839 d!1371809)))

(assert (=> bs!825200 (= lambda!165578 lambda!165572)))

(declare-fun bs!825201 () Bool)

(assert (= bs!825201 (and d!1371839 d!1371801)))

(assert (=> bs!825201 (= lambda!165578 lambda!165560)))

(declare-fun bs!825202 () Bool)

(assert (= bs!825202 (and d!1371839 d!1371789)))

(assert (=> bs!825202 (= lambda!165578 lambda!165532)))

(declare-fun bs!825203 () Bool)

(assert (= bs!825203 (and d!1371839 d!1371763)))

(assert (=> bs!825203 (= lambda!165578 lambda!165531)))

(declare-fun bs!825204 () Bool)

(assert (= bs!825204 (and d!1371839 d!1371715)))

(assert (=> bs!825204 (not (= lambda!165578 lambda!165508))))

(declare-fun bs!825205 () Bool)

(assert (= bs!825205 (and d!1371839 d!1371799)))

(assert (=> bs!825205 (= lambda!165578 lambda!165557)))

(declare-fun bs!825206 () Bool)

(assert (= bs!825206 (and d!1371839 d!1371735)))

(assert (=> bs!825206 (= lambda!165578 lambda!165521)))

(declare-fun lt!1668661 () ListMap!3393)

(assert (=> d!1371839 (invariantList!951 (toList!4132 lt!1668661))))

(declare-fun e!2791466 () ListMap!3393)

(assert (=> d!1371839 (= lt!1668661 e!2791466)))

(declare-fun c!763461 () Bool)

(assert (=> d!1371839 (= c!763461 ((_ is Cons!50385) (Cons!50385 lt!1668394 Nil!50385)))))

(assert (=> d!1371839 (forall!10058 (Cons!50385 lt!1668394 Nil!50385) lambda!165578)))

(assert (=> d!1371839 (= (extractMap!1118 (Cons!50385 lt!1668394 Nil!50385)) lt!1668661)))

(declare-fun b!4481938 () Bool)

(assert (=> b!4481938 (= e!2791466 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (Cons!50385 lt!1668394 Nil!50385))) (extractMap!1118 (t!357463 (Cons!50385 lt!1668394 Nil!50385)))))))

(declare-fun b!4481939 () Bool)

(assert (=> b!4481939 (= e!2791466 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371839 c!763461) b!4481938))

(assert (= (and d!1371839 (not c!763461)) b!4481939))

(declare-fun m!5202123 () Bool)

(assert (=> d!1371839 m!5202123))

(declare-fun m!5202125 () Bool)

(assert (=> d!1371839 m!5202125))

(declare-fun m!5202127 () Bool)

(assert (=> b!4481938 m!5202127))

(assert (=> b!4481938 m!5202127))

(declare-fun m!5202129 () Bool)

(assert (=> b!4481938 m!5202129))

(assert (=> b!4481679 d!1371839))

(declare-fun d!1371841 () Bool)

(assert (=> d!1371841 (= (tail!7577 (toList!4131 lm!1477)) (t!357463 (toList!4131 lm!1477)))))

(assert (=> b!4481669 d!1371841))

(declare-fun bs!825207 () Bool)

(declare-fun d!1371843 () Bool)

(assert (= bs!825207 (and d!1371843 start!440876)))

(declare-fun lambda!165579 () Int)

(assert (=> bs!825207 (= lambda!165579 lambda!165505)))

(declare-fun bs!825208 () Bool)

(assert (= bs!825208 (and d!1371843 d!1371727)))

(assert (=> bs!825208 (= lambda!165579 lambda!165520)))

(declare-fun bs!825209 () Bool)

(assert (= bs!825209 (and d!1371843 d!1371809)))

(assert (=> bs!825209 (= lambda!165579 lambda!165572)))

(declare-fun bs!825210 () Bool)

(assert (= bs!825210 (and d!1371843 d!1371801)))

(assert (=> bs!825210 (= lambda!165579 lambda!165560)))

(declare-fun bs!825211 () Bool)

(assert (= bs!825211 (and d!1371843 d!1371839)))

(assert (=> bs!825211 (= lambda!165579 lambda!165578)))

(declare-fun bs!825212 () Bool)

(assert (= bs!825212 (and d!1371843 d!1371789)))

(assert (=> bs!825212 (= lambda!165579 lambda!165532)))

(declare-fun bs!825213 () Bool)

(assert (= bs!825213 (and d!1371843 d!1371763)))

(assert (=> bs!825213 (= lambda!165579 lambda!165531)))

(declare-fun bs!825214 () Bool)

(assert (= bs!825214 (and d!1371843 d!1371715)))

(assert (=> bs!825214 (not (= lambda!165579 lambda!165508))))

(declare-fun bs!825215 () Bool)

(assert (= bs!825215 (and d!1371843 d!1371799)))

(assert (=> bs!825215 (= lambda!165579 lambda!165557)))

(declare-fun bs!825216 () Bool)

(assert (= bs!825216 (and d!1371843 d!1371735)))

(assert (=> bs!825216 (= lambda!165579 lambda!165521)))

(declare-fun lt!1668665 () ListMap!3393)

(assert (=> d!1371843 (invariantList!951 (toList!4132 lt!1668665))))

(declare-fun e!2791473 () ListMap!3393)

(assert (=> d!1371843 (= lt!1668665 e!2791473)))

(declare-fun c!763462 () Bool)

(assert (=> d!1371843 (= c!763462 ((_ is Cons!50385) (Cons!50385 lt!1668394 lt!1668372)))))

(assert (=> d!1371843 (forall!10058 (Cons!50385 lt!1668394 lt!1668372) lambda!165579)))

(assert (=> d!1371843 (= (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372)) lt!1668665)))

(declare-fun b!4481946 () Bool)

(assert (=> b!4481946 (= e!2791473 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (Cons!50385 lt!1668394 lt!1668372))) (extractMap!1118 (t!357463 (Cons!50385 lt!1668394 lt!1668372)))))))

(declare-fun b!4481947 () Bool)

(assert (=> b!4481947 (= e!2791473 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371843 c!763462) b!4481946))

(assert (= (and d!1371843 (not c!763462)) b!4481947))

(declare-fun m!5202137 () Bool)

(assert (=> d!1371843 m!5202137))

(declare-fun m!5202139 () Bool)

(assert (=> d!1371843 m!5202139))

(declare-fun m!5202141 () Bool)

(assert (=> b!4481946 m!5202141))

(assert (=> b!4481946 m!5202141))

(declare-fun m!5202143 () Bool)

(assert (=> b!4481946 m!5202143))

(assert (=> b!4481669 d!1371843))

(declare-fun d!1371847 () Bool)

(assert (=> d!1371847 (= (eq!555 (extractMap!1118 (Cons!50385 lt!1668371 lt!1668372)) (-!324 (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372)) key!3287)) (= (content!8173 (toList!4132 (extractMap!1118 (Cons!50385 lt!1668371 lt!1668372)))) (content!8173 (toList!4132 (-!324 (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372)) key!3287)))))))

(declare-fun bs!825217 () Bool)

(assert (= bs!825217 d!1371847))

(declare-fun m!5202145 () Bool)

(assert (=> bs!825217 m!5202145))

(declare-fun m!5202147 () Bool)

(assert (=> bs!825217 m!5202147))

(assert (=> b!4481669 d!1371847))

(declare-fun d!1371849 () Bool)

(declare-fun e!2791474 () Bool)

(assert (=> d!1371849 e!2791474))

(declare-fun res!1860976 () Bool)

(assert (=> d!1371849 (=> (not res!1860976) (not e!2791474))))

(declare-fun lt!1668666 () ListMap!3393)

(assert (=> d!1371849 (= res!1860976 (not (contains!12980 lt!1668666 key!3287)))))

(assert (=> d!1371849 (= lt!1668666 (ListMap!3394 (removePresrvNoDuplicatedKeys!87 (toList!4132 (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372))) key!3287)))))

(assert (=> d!1371849 (= (-!324 (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372)) key!3287) lt!1668666)))

(declare-fun b!4481948 () Bool)

(assert (=> b!4481948 (= e!2791474 (= ((_ map and) (content!8174 (keys!17426 (extractMap!1118 (Cons!50385 lt!1668394 lt!1668372)))) ((_ map not) (store ((as const (Array K!11795 Bool)) false) key!3287 true))) (content!8174 (keys!17426 lt!1668666))))))

(assert (= (and d!1371849 res!1860976) b!4481948))

(declare-fun m!5202149 () Bool)

(assert (=> d!1371849 m!5202149))

(declare-fun m!5202151 () Bool)

(assert (=> d!1371849 m!5202151))

(declare-fun m!5202153 () Bool)

(assert (=> b!4481948 m!5202153))

(declare-fun m!5202155 () Bool)

(assert (=> b!4481948 m!5202155))

(assert (=> b!4481948 m!5201851))

(declare-fun m!5202157 () Bool)

(assert (=> b!4481948 m!5202157))

(declare-fun m!5202159 () Bool)

(assert (=> b!4481948 m!5202159))

(assert (=> b!4481948 m!5202157))

(assert (=> b!4481948 m!5201559))

(assert (=> b!4481948 m!5202153))

(assert (=> b!4481669 d!1371849))

(declare-fun bs!825239 () Bool)

(declare-fun d!1371851 () Bool)

(assert (= bs!825239 (and d!1371851 start!440876)))

(declare-fun lambda!165586 () Int)

(assert (=> bs!825239 (= lambda!165586 lambda!165505)))

(declare-fun bs!825240 () Bool)

(assert (= bs!825240 (and d!1371851 d!1371727)))

(assert (=> bs!825240 (= lambda!165586 lambda!165520)))

(declare-fun bs!825241 () Bool)

(assert (= bs!825241 (and d!1371851 d!1371809)))

(assert (=> bs!825241 (= lambda!165586 lambda!165572)))

(declare-fun bs!825242 () Bool)

(assert (= bs!825242 (and d!1371851 d!1371843)))

(assert (=> bs!825242 (= lambda!165586 lambda!165579)))

(declare-fun bs!825243 () Bool)

(assert (= bs!825243 (and d!1371851 d!1371801)))

(assert (=> bs!825243 (= lambda!165586 lambda!165560)))

(declare-fun bs!825244 () Bool)

(assert (= bs!825244 (and d!1371851 d!1371839)))

(assert (=> bs!825244 (= lambda!165586 lambda!165578)))

(declare-fun bs!825245 () Bool)

(assert (= bs!825245 (and d!1371851 d!1371789)))

(assert (=> bs!825245 (= lambda!165586 lambda!165532)))

(declare-fun bs!825247 () Bool)

(assert (= bs!825247 (and d!1371851 d!1371763)))

(assert (=> bs!825247 (= lambda!165586 lambda!165531)))

(declare-fun bs!825249 () Bool)

(assert (= bs!825249 (and d!1371851 d!1371715)))

(assert (=> bs!825249 (not (= lambda!165586 lambda!165508))))

(declare-fun bs!825251 () Bool)

(assert (= bs!825251 (and d!1371851 d!1371799)))

(assert (=> bs!825251 (= lambda!165586 lambda!165557)))

(declare-fun bs!825253 () Bool)

(assert (= bs!825253 (and d!1371851 d!1371735)))

(assert (=> bs!825253 (= lambda!165586 lambda!165521)))

(assert (=> d!1371851 (eq!555 (extractMap!1118 (Cons!50385 (tuple2!50685 hash!344 newBucket!178) (tail!7577 (toList!4131 lm!1477)))) (-!324 (extractMap!1118 (Cons!50385 (tuple2!50685 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477)))) (tail!7577 (toList!4131 lm!1477)))) key!3287))))

(declare-fun lt!1668688 () Unit!89797)

(declare-fun choose!28784 (ListLongMap!2763 (_ BitVec 64) List!50508 List!50508 K!11795 Hashable!5457) Unit!89797)

(assert (=> d!1371851 (= lt!1668688 (choose!28784 lm!1477 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371851 (forall!10058 (toList!4131 lm!1477) lambda!165586)))

(assert (=> d!1371851 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!22 lm!1477 hash!344 (_2!28636 (h!56172 (toList!4131 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1668688)))

(declare-fun bs!825261 () Bool)

(assert (= bs!825261 d!1371851))

(declare-fun m!5202215 () Bool)

(assert (=> bs!825261 m!5202215))

(declare-fun m!5202219 () Bool)

(assert (=> bs!825261 m!5202219))

(declare-fun m!5202225 () Bool)

(assert (=> bs!825261 m!5202225))

(declare-fun m!5202227 () Bool)

(assert (=> bs!825261 m!5202227))

(declare-fun m!5202231 () Bool)

(assert (=> bs!825261 m!5202231))

(assert (=> bs!825261 m!5202231))

(assert (=> bs!825261 m!5202225))

(declare-fun m!5202233 () Bool)

(assert (=> bs!825261 m!5202233))

(assert (=> bs!825261 m!5201563))

(assert (=> bs!825261 m!5202219))

(assert (=> b!4481669 d!1371851))

(declare-fun bs!825262 () Bool)

(declare-fun d!1371871 () Bool)

(assert (= bs!825262 (and d!1371871 start!440876)))

(declare-fun lambda!165588 () Int)

(assert (=> bs!825262 (= lambda!165588 lambda!165505)))

(declare-fun bs!825263 () Bool)

(assert (= bs!825263 (and d!1371871 d!1371727)))

(assert (=> bs!825263 (= lambda!165588 lambda!165520)))

(declare-fun bs!825264 () Bool)

(assert (= bs!825264 (and d!1371871 d!1371809)))

(assert (=> bs!825264 (= lambda!165588 lambda!165572)))

(declare-fun bs!825265 () Bool)

(assert (= bs!825265 (and d!1371871 d!1371843)))

(assert (=> bs!825265 (= lambda!165588 lambda!165579)))

(declare-fun bs!825266 () Bool)

(assert (= bs!825266 (and d!1371871 d!1371801)))

(assert (=> bs!825266 (= lambda!165588 lambda!165560)))

(declare-fun bs!825267 () Bool)

(assert (= bs!825267 (and d!1371871 d!1371851)))

(assert (=> bs!825267 (= lambda!165588 lambda!165586)))

(declare-fun bs!825268 () Bool)

(assert (= bs!825268 (and d!1371871 d!1371839)))

(assert (=> bs!825268 (= lambda!165588 lambda!165578)))

(declare-fun bs!825269 () Bool)

(assert (= bs!825269 (and d!1371871 d!1371789)))

(assert (=> bs!825269 (= lambda!165588 lambda!165532)))

(declare-fun bs!825270 () Bool)

(assert (= bs!825270 (and d!1371871 d!1371763)))

(assert (=> bs!825270 (= lambda!165588 lambda!165531)))

(declare-fun bs!825271 () Bool)

(assert (= bs!825271 (and d!1371871 d!1371715)))

(assert (=> bs!825271 (not (= lambda!165588 lambda!165508))))

(declare-fun bs!825272 () Bool)

(assert (= bs!825272 (and d!1371871 d!1371799)))

(assert (=> bs!825272 (= lambda!165588 lambda!165557)))

(declare-fun bs!825273 () Bool)

(assert (= bs!825273 (and d!1371871 d!1371735)))

(assert (=> bs!825273 (= lambda!165588 lambda!165521)))

(declare-fun lt!1668690 () ListMap!3393)

(assert (=> d!1371871 (invariantList!951 (toList!4132 lt!1668690))))

(declare-fun e!2791500 () ListMap!3393)

(assert (=> d!1371871 (= lt!1668690 e!2791500)))

(declare-fun c!763475 () Bool)

(assert (=> d!1371871 (= c!763475 ((_ is Cons!50385) (Cons!50385 lt!1668371 lt!1668372)))))

(assert (=> d!1371871 (forall!10058 (Cons!50385 lt!1668371 lt!1668372) lambda!165588)))

(assert (=> d!1371871 (= (extractMap!1118 (Cons!50385 lt!1668371 lt!1668372)) lt!1668690)))

(declare-fun b!4481988 () Bool)

(assert (=> b!4481988 (= e!2791500 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (Cons!50385 lt!1668371 lt!1668372))) (extractMap!1118 (t!357463 (Cons!50385 lt!1668371 lt!1668372)))))))

(declare-fun b!4481989 () Bool)

(assert (=> b!4481989 (= e!2791500 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371871 c!763475) b!4481988))

(assert (= (and d!1371871 (not c!763475)) b!4481989))

(declare-fun m!5202235 () Bool)

(assert (=> d!1371871 m!5202235))

(declare-fun m!5202237 () Bool)

(assert (=> d!1371871 m!5202237))

(declare-fun m!5202239 () Bool)

(assert (=> b!4481988 m!5202239))

(assert (=> b!4481988 m!5202239))

(declare-fun m!5202241 () Bool)

(assert (=> b!4481988 m!5202241))

(assert (=> b!4481669 d!1371871))

(declare-fun bs!825287 () Bool)

(declare-fun d!1371873 () Bool)

(assert (= bs!825287 (and d!1371873 start!440876)))

(declare-fun lambda!165594 () Int)

(assert (=> bs!825287 (= lambda!165594 lambda!165505)))

(declare-fun bs!825288 () Bool)

(assert (= bs!825288 (and d!1371873 d!1371727)))

(assert (=> bs!825288 (= lambda!165594 lambda!165520)))

(declare-fun bs!825289 () Bool)

(assert (= bs!825289 (and d!1371873 d!1371809)))

(assert (=> bs!825289 (= lambda!165594 lambda!165572)))

(declare-fun bs!825290 () Bool)

(assert (= bs!825290 (and d!1371873 d!1371843)))

(assert (=> bs!825290 (= lambda!165594 lambda!165579)))

(declare-fun bs!825291 () Bool)

(assert (= bs!825291 (and d!1371873 d!1371801)))

(assert (=> bs!825291 (= lambda!165594 lambda!165560)))

(declare-fun bs!825292 () Bool)

(assert (= bs!825292 (and d!1371873 d!1371851)))

(assert (=> bs!825292 (= lambda!165594 lambda!165586)))

(declare-fun bs!825293 () Bool)

(assert (= bs!825293 (and d!1371873 d!1371839)))

(assert (=> bs!825293 (= lambda!165594 lambda!165578)))

(declare-fun bs!825294 () Bool)

(assert (= bs!825294 (and d!1371873 d!1371789)))

(assert (=> bs!825294 (= lambda!165594 lambda!165532)))

(declare-fun bs!825295 () Bool)

(assert (= bs!825295 (and d!1371873 d!1371763)))

(assert (=> bs!825295 (= lambda!165594 lambda!165531)))

(declare-fun bs!825296 () Bool)

(assert (= bs!825296 (and d!1371873 d!1371715)))

(assert (=> bs!825296 (not (= lambda!165594 lambda!165508))))

(declare-fun bs!825297 () Bool)

(assert (= bs!825297 (and d!1371873 d!1371799)))

(assert (=> bs!825297 (= lambda!165594 lambda!165557)))

(declare-fun bs!825298 () Bool)

(assert (= bs!825298 (and d!1371873 d!1371735)))

(assert (=> bs!825298 (= lambda!165594 lambda!165521)))

(declare-fun bs!825299 () Bool)

(assert (= bs!825299 (and d!1371873 d!1371871)))

(assert (=> bs!825299 (= lambda!165594 lambda!165588)))

(assert (=> d!1371873 (not (contains!12980 (extractMap!1118 (toList!4131 lm!1477)) key!3287))))

(declare-fun lt!1668696 () Unit!89797)

(declare-fun choose!28785 (ListLongMap!2763 K!11795 Hashable!5457) Unit!89797)

(assert (=> d!1371873 (= lt!1668696 (choose!28785 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371873 (forall!10058 (toList!4131 lm!1477) lambda!165594)))

(assert (=> d!1371873 (= (lemmaNotInItsHashBucketThenNotInMap!62 lm!1477 key!3287 hashF!1107) lt!1668696)))

(declare-fun bs!825300 () Bool)

(assert (= bs!825300 d!1371873))

(assert (=> bs!825300 m!5201569))

(assert (=> bs!825300 m!5201569))

(declare-fun m!5202251 () Bool)

(assert (=> bs!825300 m!5202251))

(declare-fun m!5202253 () Bool)

(assert (=> bs!825300 m!5202253))

(declare-fun m!5202255 () Bool)

(assert (=> bs!825300 m!5202255))

(assert (=> b!4481680 d!1371873))

(declare-fun d!1371877 () Bool)

(declare-fun res!1860990 () Bool)

(declare-fun e!2791501 () Bool)

(assert (=> d!1371877 (=> res!1860990 e!2791501)))

(assert (=> d!1371877 (= res!1860990 ((_ is Nil!50385) (toList!4131 lm!1477)))))

(assert (=> d!1371877 (= (forall!10058 (toList!4131 lm!1477) lambda!165505) e!2791501)))

(declare-fun b!4481990 () Bool)

(declare-fun e!2791502 () Bool)

(assert (=> b!4481990 (= e!2791501 e!2791502)))

(declare-fun res!1860991 () Bool)

(assert (=> b!4481990 (=> (not res!1860991) (not e!2791502))))

(assert (=> b!4481990 (= res!1860991 (dynLambda!21048 lambda!165505 (h!56172 (toList!4131 lm!1477))))))

(declare-fun b!4481991 () Bool)

(assert (=> b!4481991 (= e!2791502 (forall!10058 (t!357463 (toList!4131 lm!1477)) lambda!165505))))

(assert (= (and d!1371877 (not res!1860990)) b!4481990))

(assert (= (and b!4481990 res!1860991) b!4481991))

(declare-fun b_lambda!150339 () Bool)

(assert (=> (not b_lambda!150339) (not b!4481990)))

(declare-fun m!5202257 () Bool)

(assert (=> b!4481990 m!5202257))

(declare-fun m!5202259 () Bool)

(assert (=> b!4481991 m!5202259))

(assert (=> start!440876 d!1371877))

(declare-fun d!1371879 () Bool)

(assert (=> d!1371879 (= (inv!65979 lm!1477) (isStrictlySorted!365 (toList!4131 lm!1477)))))

(declare-fun bs!825301 () Bool)

(assert (= bs!825301 d!1371879))

(assert (=> bs!825301 m!5201807))

(assert (=> start!440876 d!1371879))

(declare-fun bs!825302 () Bool)

(declare-fun d!1371881 () Bool)

(assert (= bs!825302 (and d!1371881 start!440876)))

(declare-fun lambda!165595 () Int)

(assert (=> bs!825302 (= lambda!165595 lambda!165505)))

(declare-fun bs!825303 () Bool)

(assert (= bs!825303 (and d!1371881 d!1371727)))

(assert (=> bs!825303 (= lambda!165595 lambda!165520)))

(declare-fun bs!825304 () Bool)

(assert (= bs!825304 (and d!1371881 d!1371809)))

(assert (=> bs!825304 (= lambda!165595 lambda!165572)))

(declare-fun bs!825305 () Bool)

(assert (= bs!825305 (and d!1371881 d!1371801)))

(assert (=> bs!825305 (= lambda!165595 lambda!165560)))

(declare-fun bs!825306 () Bool)

(assert (= bs!825306 (and d!1371881 d!1371851)))

(assert (=> bs!825306 (= lambda!165595 lambda!165586)))

(declare-fun bs!825307 () Bool)

(assert (= bs!825307 (and d!1371881 d!1371839)))

(assert (=> bs!825307 (= lambda!165595 lambda!165578)))

(declare-fun bs!825308 () Bool)

(assert (= bs!825308 (and d!1371881 d!1371789)))

(assert (=> bs!825308 (= lambda!165595 lambda!165532)))

(declare-fun bs!825309 () Bool)

(assert (= bs!825309 (and d!1371881 d!1371763)))

(assert (=> bs!825309 (= lambda!165595 lambda!165531)))

(declare-fun bs!825310 () Bool)

(assert (= bs!825310 (and d!1371881 d!1371715)))

(assert (=> bs!825310 (not (= lambda!165595 lambda!165508))))

(declare-fun bs!825311 () Bool)

(assert (= bs!825311 (and d!1371881 d!1371799)))

(assert (=> bs!825311 (= lambda!165595 lambda!165557)))

(declare-fun bs!825312 () Bool)

(assert (= bs!825312 (and d!1371881 d!1371735)))

(assert (=> bs!825312 (= lambda!165595 lambda!165521)))

(declare-fun bs!825313 () Bool)

(assert (= bs!825313 (and d!1371881 d!1371871)))

(assert (=> bs!825313 (= lambda!165595 lambda!165588)))

(declare-fun bs!825314 () Bool)

(assert (= bs!825314 (and d!1371881 d!1371843)))

(assert (=> bs!825314 (= lambda!165595 lambda!165579)))

(declare-fun bs!825315 () Bool)

(assert (= bs!825315 (and d!1371881 d!1371873)))

(assert (=> bs!825315 (= lambda!165595 lambda!165594)))

(assert (=> d!1371881 (contains!12979 lt!1668377 (hash!2555 hashF!1107 key!3287))))

(declare-fun lt!1668697 () Unit!89797)

(assert (=> d!1371881 (= lt!1668697 (choose!28775 lt!1668377 key!3287 hashF!1107))))

(assert (=> d!1371881 (forall!10058 (toList!4131 lt!1668377) lambda!165595)))

(assert (=> d!1371881 (= (lemmaInGenMapThenLongMapContainsHash!136 lt!1668377 key!3287 hashF!1107) lt!1668697)))

(declare-fun bs!825316 () Bool)

(assert (= bs!825316 d!1371881))

(assert (=> bs!825316 m!5201601))

(assert (=> bs!825316 m!5201601))

(declare-fun m!5202261 () Bool)

(assert (=> bs!825316 m!5202261))

(declare-fun m!5202263 () Bool)

(assert (=> bs!825316 m!5202263))

(declare-fun m!5202265 () Bool)

(assert (=> bs!825316 m!5202265))

(assert (=> b!4481659 d!1371881))

(declare-fun d!1371883 () Bool)

(declare-fun e!2791503 () Bool)

(assert (=> d!1371883 e!2791503))

(declare-fun res!1860992 () Bool)

(assert (=> d!1371883 (=> res!1860992 e!2791503)))

(declare-fun lt!1668701 () Bool)

(assert (=> d!1371883 (= res!1860992 (not lt!1668701))))

(declare-fun lt!1668698 () Bool)

(assert (=> d!1371883 (= lt!1668701 lt!1668698)))

(declare-fun lt!1668700 () Unit!89797)

(declare-fun e!2791504 () Unit!89797)

(assert (=> d!1371883 (= lt!1668700 e!2791504)))

(declare-fun c!763476 () Bool)

(assert (=> d!1371883 (= c!763476 lt!1668698)))

(assert (=> d!1371883 (= lt!1668698 (containsKey!1558 (toList!4131 lt!1668377) lt!1668378))))

(assert (=> d!1371883 (= (contains!12979 lt!1668377 lt!1668378) lt!1668701)))

(declare-fun b!4481992 () Bool)

(declare-fun lt!1668699 () Unit!89797)

(assert (=> b!4481992 (= e!2791504 lt!1668699)))

(assert (=> b!4481992 (= lt!1668699 (lemmaContainsKeyImpliesGetValueByKeyDefined!865 (toList!4131 lt!1668377) lt!1668378))))

(assert (=> b!4481992 (isDefined!8262 (getValueByKey!961 (toList!4131 lt!1668377) lt!1668378))))

(declare-fun b!4481993 () Bool)

(declare-fun Unit!89840 () Unit!89797)

(assert (=> b!4481993 (= e!2791504 Unit!89840)))

(declare-fun b!4481994 () Bool)

(assert (=> b!4481994 (= e!2791503 (isDefined!8262 (getValueByKey!961 (toList!4131 lt!1668377) lt!1668378)))))

(assert (= (and d!1371883 c!763476) b!4481992))

(assert (= (and d!1371883 (not c!763476)) b!4481993))

(assert (= (and d!1371883 (not res!1860992)) b!4481994))

(declare-fun m!5202267 () Bool)

(assert (=> d!1371883 m!5202267))

(declare-fun m!5202269 () Bool)

(assert (=> b!4481992 m!5202269))

(declare-fun m!5202271 () Bool)

(assert (=> b!4481992 m!5202271))

(assert (=> b!4481992 m!5202271))

(declare-fun m!5202273 () Bool)

(assert (=> b!4481992 m!5202273))

(assert (=> b!4481994 m!5202271))

(assert (=> b!4481994 m!5202271))

(assert (=> b!4481994 m!5202273))

(assert (=> b!4481659 d!1371883))

(declare-fun d!1371885 () Bool)

(assert (=> d!1371885 (= (eq!555 lt!1668380 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lm!1477))) lt!1668375)) (= (content!8173 (toList!4132 lt!1668380)) (content!8173 (toList!4132 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lm!1477))) lt!1668375)))))))

(declare-fun bs!825317 () Bool)

(assert (= bs!825317 d!1371885))

(assert (=> bs!825317 m!5201833))

(declare-fun m!5202275 () Bool)

(assert (=> bs!825317 m!5202275))

(assert (=> b!4481670 d!1371885))

(declare-fun bs!825383 () Bool)

(declare-fun b!4482028 () Bool)

(assert (= bs!825383 (and b!4482028 d!1371723)))

(declare-fun lambda!165630 () Int)

(assert (=> bs!825383 (not (= lambda!165630 lambda!165511))))

(assert (=> b!4482028 true))

(declare-fun bs!825384 () Bool)

(declare-fun b!4482027 () Bool)

(assert (= bs!825384 (and b!4482027 d!1371723)))

(declare-fun lambda!165631 () Int)

(assert (=> bs!825384 (not (= lambda!165631 lambda!165511))))

(declare-fun bs!825385 () Bool)

(assert (= bs!825385 (and b!4482027 b!4482028)))

(assert (=> bs!825385 (= lambda!165631 lambda!165630)))

(assert (=> b!4482027 true))

(declare-fun lambda!165632 () Int)

(assert (=> bs!825384 (not (= lambda!165632 lambda!165511))))

(declare-fun lt!1668766 () ListMap!3393)

(assert (=> bs!825385 (= (= lt!1668766 lt!1668375) (= lambda!165632 lambda!165630))))

(assert (=> b!4482027 (= (= lt!1668766 lt!1668375) (= lambda!165632 lambda!165631))))

(assert (=> b!4482027 true))

(declare-fun bs!825386 () Bool)

(declare-fun d!1371887 () Bool)

(assert (= bs!825386 (and d!1371887 d!1371723)))

(declare-fun lambda!165633 () Int)

(assert (=> bs!825386 (not (= lambda!165633 lambda!165511))))

(declare-fun bs!825387 () Bool)

(assert (= bs!825387 (and d!1371887 b!4482028)))

(declare-fun lt!1668779 () ListMap!3393)

(assert (=> bs!825387 (= (= lt!1668779 lt!1668375) (= lambda!165633 lambda!165630))))

(declare-fun bs!825388 () Bool)

(assert (= bs!825388 (and d!1371887 b!4482027)))

(assert (=> bs!825388 (= (= lt!1668779 lt!1668375) (= lambda!165633 lambda!165631))))

(assert (=> bs!825388 (= (= lt!1668779 lt!1668766) (= lambda!165633 lambda!165632))))

(assert (=> d!1371887 true))

(declare-fun bm!312097 () Bool)

(declare-fun c!763482 () Bool)

(declare-fun call!312102 () Bool)

(assert (=> bm!312097 (= call!312102 (forall!10060 (toList!4132 lt!1668375) (ite c!763482 lambda!165630 lambda!165631)))))

(declare-fun bm!312098 () Bool)

(declare-fun call!312103 () Bool)

(assert (=> bm!312098 (= call!312103 (forall!10060 (toList!4132 lt!1668375) (ite c!763482 lambda!165630 lambda!165632)))))

(declare-fun b!4482025 () Bool)

(declare-fun e!2791523 () Bool)

(assert (=> b!4482025 (= e!2791523 (forall!10060 (toList!4132 lt!1668375) lambda!165632))))

(declare-fun bm!312099 () Bool)

(declare-fun call!312104 () Unit!89797)

(declare-fun lemmaContainsAllItsOwnKeys!282 (ListMap!3393) Unit!89797)

(assert (=> bm!312099 (= call!312104 (lemmaContainsAllItsOwnKeys!282 lt!1668375))))

(declare-fun b!4482026 () Bool)

(declare-fun e!2791524 () Bool)

(assert (=> b!4482026 (= e!2791524 (invariantList!951 (toList!4132 lt!1668779)))))

(declare-fun e!2791525 () ListMap!3393)

(assert (=> b!4482027 (= e!2791525 lt!1668766)))

(declare-fun lt!1668761 () ListMap!3393)

(declare-fun +!1422 (ListMap!3393 tuple2!50682) ListMap!3393)

(assert (=> b!4482027 (= lt!1668761 (+!1422 lt!1668375 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477))))))))

(assert (=> b!4482027 (= lt!1668766 (addToMapMapFromBucket!617 (t!357462 (_2!28636 (h!56172 (toList!4131 lm!1477)))) (+!1422 lt!1668375 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477)))))))))

(declare-fun lt!1668762 () Unit!89797)

(assert (=> b!4482027 (= lt!1668762 call!312104)))

(assert (=> b!4482027 call!312102))

(declare-fun lt!1668763 () Unit!89797)

(assert (=> b!4482027 (= lt!1668763 lt!1668762)))

(assert (=> b!4482027 (forall!10060 (toList!4132 lt!1668761) lambda!165632)))

(declare-fun lt!1668774 () Unit!89797)

(declare-fun Unit!89841 () Unit!89797)

(assert (=> b!4482027 (= lt!1668774 Unit!89841)))

(assert (=> b!4482027 (forall!10060 (t!357462 (_2!28636 (h!56172 (toList!4131 lm!1477)))) lambda!165632)))

(declare-fun lt!1668764 () Unit!89797)

(declare-fun Unit!89842 () Unit!89797)

(assert (=> b!4482027 (= lt!1668764 Unit!89842)))

(declare-fun lt!1668760 () Unit!89797)

(declare-fun Unit!89843 () Unit!89797)

(assert (=> b!4482027 (= lt!1668760 Unit!89843)))

(declare-fun lt!1668767 () Unit!89797)

(declare-fun forallContained!2321 (List!50508 Int tuple2!50682) Unit!89797)

(assert (=> b!4482027 (= lt!1668767 (forallContained!2321 (toList!4132 lt!1668761) lambda!165632 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477))))))))

(assert (=> b!4482027 (contains!12980 lt!1668761 (_1!28635 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477))))))))

(declare-fun lt!1668771 () Unit!89797)

(declare-fun Unit!89844 () Unit!89797)

(assert (=> b!4482027 (= lt!1668771 Unit!89844)))

(assert (=> b!4482027 (contains!12980 lt!1668766 (_1!28635 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477))))))))

(declare-fun lt!1668770 () Unit!89797)

(declare-fun Unit!89845 () Unit!89797)

(assert (=> b!4482027 (= lt!1668770 Unit!89845)))

(assert (=> b!4482027 (forall!10060 (_2!28636 (h!56172 (toList!4131 lm!1477))) lambda!165632)))

(declare-fun lt!1668769 () Unit!89797)

(declare-fun Unit!89846 () Unit!89797)

(assert (=> b!4482027 (= lt!1668769 Unit!89846)))

(assert (=> b!4482027 (forall!10060 (toList!4132 lt!1668761) lambda!165632)))

(declare-fun lt!1668765 () Unit!89797)

(declare-fun Unit!89847 () Unit!89797)

(assert (=> b!4482027 (= lt!1668765 Unit!89847)))

(declare-fun lt!1668773 () Unit!89797)

(declare-fun Unit!89848 () Unit!89797)

(assert (=> b!4482027 (= lt!1668773 Unit!89848)))

(declare-fun lt!1668759 () Unit!89797)

(declare-fun addForallContainsKeyThenBeforeAdding!282 (ListMap!3393 ListMap!3393 K!11795 V!12041) Unit!89797)

(assert (=> b!4482027 (= lt!1668759 (addForallContainsKeyThenBeforeAdding!282 lt!1668375 lt!1668766 (_1!28635 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477))))) (_2!28635 (h!56171 (_2!28636 (h!56172 (toList!4131 lm!1477)))))))))

(assert (=> b!4482027 call!312103))

(declare-fun lt!1668768 () Unit!89797)

(assert (=> b!4482027 (= lt!1668768 lt!1668759)))

(assert (=> b!4482027 (forall!10060 (toList!4132 lt!1668375) lambda!165632)))

(declare-fun lt!1668778 () Unit!89797)

(declare-fun Unit!89849 () Unit!89797)

(assert (=> b!4482027 (= lt!1668778 Unit!89849)))

(declare-fun res!1861005 () Bool)

(assert (=> b!4482027 (= res!1861005 (forall!10060 (_2!28636 (h!56172 (toList!4131 lm!1477))) lambda!165632))))

(assert (=> b!4482027 (=> (not res!1861005) (not e!2791523))))

(assert (=> b!4482027 e!2791523))

(declare-fun lt!1668772 () Unit!89797)

(declare-fun Unit!89850 () Unit!89797)

(assert (=> b!4482027 (= lt!1668772 Unit!89850)))

(assert (=> d!1371887 e!2791524))

(declare-fun res!1861004 () Bool)

(assert (=> d!1371887 (=> (not res!1861004) (not e!2791524))))

(assert (=> d!1371887 (= res!1861004 (forall!10060 (_2!28636 (h!56172 (toList!4131 lm!1477))) lambda!165633))))

(assert (=> d!1371887 (= lt!1668779 e!2791525)))

(assert (=> d!1371887 (= c!763482 ((_ is Nil!50384) (_2!28636 (h!56172 (toList!4131 lm!1477)))))))

(assert (=> d!1371887 (noDuplicateKeys!1062 (_2!28636 (h!56172 (toList!4131 lm!1477))))))

(assert (=> d!1371887 (= (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lm!1477))) lt!1668375) lt!1668779)))

(assert (=> b!4482028 (= e!2791525 lt!1668375)))

(declare-fun lt!1668776 () Unit!89797)

(assert (=> b!4482028 (= lt!1668776 call!312104)))

(assert (=> b!4482028 call!312103))

(declare-fun lt!1668775 () Unit!89797)

(assert (=> b!4482028 (= lt!1668775 lt!1668776)))

(assert (=> b!4482028 call!312102))

(declare-fun lt!1668777 () Unit!89797)

(declare-fun Unit!89851 () Unit!89797)

(assert (=> b!4482028 (= lt!1668777 Unit!89851)))

(declare-fun b!4482029 () Bool)

(declare-fun res!1861003 () Bool)

(assert (=> b!4482029 (=> (not res!1861003) (not e!2791524))))

(assert (=> b!4482029 (= res!1861003 (forall!10060 (toList!4132 lt!1668375) lambda!165633))))

(assert (= (and d!1371887 c!763482) b!4482028))

(assert (= (and d!1371887 (not c!763482)) b!4482027))

(assert (= (and b!4482027 res!1861005) b!4482025))

(assert (= (or b!4482028 b!4482027) bm!312097))

(assert (= (or b!4482028 b!4482027) bm!312098))

(assert (= (or b!4482028 b!4482027) bm!312099))

(assert (= (and d!1371887 res!1861004) b!4482029))

(assert (= (and b!4482029 res!1861003) b!4482026))

(declare-fun m!5202371 () Bool)

(assert (=> b!4482027 m!5202371))

(declare-fun m!5202373 () Bool)

(assert (=> b!4482027 m!5202373))

(declare-fun m!5202375 () Bool)

(assert (=> b!4482027 m!5202375))

(declare-fun m!5202377 () Bool)

(assert (=> b!4482027 m!5202377))

(assert (=> b!4482027 m!5202375))

(declare-fun m!5202379 () Bool)

(assert (=> b!4482027 m!5202379))

(assert (=> b!4482027 m!5202377))

(declare-fun m!5202381 () Bool)

(assert (=> b!4482027 m!5202381))

(declare-fun m!5202383 () Bool)

(assert (=> b!4482027 m!5202383))

(declare-fun m!5202385 () Bool)

(assert (=> b!4482027 m!5202385))

(assert (=> b!4482027 m!5202383))

(declare-fun m!5202387 () Bool)

(assert (=> b!4482027 m!5202387))

(declare-fun m!5202389 () Bool)

(assert (=> b!4482027 m!5202389))

(declare-fun m!5202391 () Bool)

(assert (=> b!4482026 m!5202391))

(declare-fun m!5202393 () Bool)

(assert (=> bm!312099 m!5202393))

(declare-fun m!5202395 () Bool)

(assert (=> b!4482029 m!5202395))

(declare-fun m!5202397 () Bool)

(assert (=> bm!312098 m!5202397))

(declare-fun m!5202399 () Bool)

(assert (=> bm!312097 m!5202399))

(assert (=> b!4482025 m!5202371))

(declare-fun m!5202401 () Bool)

(assert (=> d!1371887 m!5202401))

(assert (=> d!1371887 m!5202121))

(assert (=> b!4481670 d!1371887))

(declare-fun bs!825389 () Bool)

(declare-fun d!1371917 () Bool)

(assert (= bs!825389 (and d!1371917 start!440876)))

(declare-fun lambda!165634 () Int)

(assert (=> bs!825389 (= lambda!165634 lambda!165505)))

(declare-fun bs!825390 () Bool)

(assert (= bs!825390 (and d!1371917 d!1371727)))

(assert (=> bs!825390 (= lambda!165634 lambda!165520)))

(declare-fun bs!825391 () Bool)

(assert (= bs!825391 (and d!1371917 d!1371809)))

(assert (=> bs!825391 (= lambda!165634 lambda!165572)))

(declare-fun bs!825392 () Bool)

(assert (= bs!825392 (and d!1371917 d!1371801)))

(assert (=> bs!825392 (= lambda!165634 lambda!165560)))

(declare-fun bs!825393 () Bool)

(assert (= bs!825393 (and d!1371917 d!1371851)))

(assert (=> bs!825393 (= lambda!165634 lambda!165586)))

(declare-fun bs!825394 () Bool)

(assert (= bs!825394 (and d!1371917 d!1371839)))

(assert (=> bs!825394 (= lambda!165634 lambda!165578)))

(declare-fun bs!825395 () Bool)

(assert (= bs!825395 (and d!1371917 d!1371789)))

(assert (=> bs!825395 (= lambda!165634 lambda!165532)))

(declare-fun bs!825396 () Bool)

(assert (= bs!825396 (and d!1371917 d!1371763)))

(assert (=> bs!825396 (= lambda!165634 lambda!165531)))

(declare-fun bs!825397 () Bool)

(assert (= bs!825397 (and d!1371917 d!1371881)))

(assert (=> bs!825397 (= lambda!165634 lambda!165595)))

(declare-fun bs!825398 () Bool)

(assert (= bs!825398 (and d!1371917 d!1371715)))

(assert (=> bs!825398 (not (= lambda!165634 lambda!165508))))

(declare-fun bs!825399 () Bool)

(assert (= bs!825399 (and d!1371917 d!1371799)))

(assert (=> bs!825399 (= lambda!165634 lambda!165557)))

(declare-fun bs!825400 () Bool)

(assert (= bs!825400 (and d!1371917 d!1371735)))

(assert (=> bs!825400 (= lambda!165634 lambda!165521)))

(declare-fun bs!825401 () Bool)

(assert (= bs!825401 (and d!1371917 d!1371871)))

(assert (=> bs!825401 (= lambda!165634 lambda!165588)))

(declare-fun bs!825402 () Bool)

(assert (= bs!825402 (and d!1371917 d!1371843)))

(assert (=> bs!825402 (= lambda!165634 lambda!165579)))

(declare-fun bs!825403 () Bool)

(assert (= bs!825403 (and d!1371917 d!1371873)))

(assert (=> bs!825403 (= lambda!165634 lambda!165594)))

(declare-fun lt!1668780 () ListMap!3393)

(assert (=> d!1371917 (invariantList!951 (toList!4132 lt!1668780))))

(declare-fun e!2791526 () ListMap!3393)

(assert (=> d!1371917 (= lt!1668780 e!2791526)))

(declare-fun c!763483 () Bool)

(assert (=> d!1371917 (= c!763483 ((_ is Cons!50385) (toList!4131 (+!1420 lm!1477 lt!1668394))))))

(assert (=> d!1371917 (forall!10058 (toList!4131 (+!1420 lm!1477 lt!1668394)) lambda!165634)))

(assert (=> d!1371917 (= (extractMap!1118 (toList!4131 (+!1420 lm!1477 lt!1668394))) lt!1668780)))

(declare-fun b!4482032 () Bool)

(assert (=> b!4482032 (= e!2791526 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 (+!1420 lm!1477 lt!1668394)))) (extractMap!1118 (t!357463 (toList!4131 (+!1420 lm!1477 lt!1668394))))))))

(declare-fun b!4482033 () Bool)

(assert (=> b!4482033 (= e!2791526 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371917 c!763483) b!4482032))

(assert (= (and d!1371917 (not c!763483)) b!4482033))

(declare-fun m!5202403 () Bool)

(assert (=> d!1371917 m!5202403))

(declare-fun m!5202405 () Bool)

(assert (=> d!1371917 m!5202405))

(declare-fun m!5202407 () Bool)

(assert (=> b!4482032 m!5202407))

(assert (=> b!4482032 m!5202407))

(declare-fun m!5202409 () Bool)

(assert (=> b!4482032 m!5202409))

(assert (=> b!4481670 d!1371917))

(declare-fun d!1371919 () Bool)

(declare-fun e!2791527 () Bool)

(assert (=> d!1371919 e!2791527))

(declare-fun res!1861006 () Bool)

(assert (=> d!1371919 (=> (not res!1861006) (not e!2791527))))

(declare-fun lt!1668781 () ListLongMap!2763)

(assert (=> d!1371919 (= res!1861006 (contains!12979 lt!1668781 (_1!28636 lt!1668394)))))

(declare-fun lt!1668784 () List!50509)

(assert (=> d!1371919 (= lt!1668781 (ListLongMap!2764 lt!1668784))))

(declare-fun lt!1668783 () Unit!89797)

(declare-fun lt!1668782 () Unit!89797)

(assert (=> d!1371919 (= lt!1668783 lt!1668782)))

(assert (=> d!1371919 (= (getValueByKey!961 lt!1668784 (_1!28636 lt!1668394)) (Some!10974 (_2!28636 lt!1668394)))))

(assert (=> d!1371919 (= lt!1668782 (lemmaContainsTupThenGetReturnValue!610 lt!1668784 (_1!28636 lt!1668394) (_2!28636 lt!1668394)))))

(assert (=> d!1371919 (= lt!1668784 (insertStrictlySorted!354 (toList!4131 lm!1477) (_1!28636 lt!1668394) (_2!28636 lt!1668394)))))

(assert (=> d!1371919 (= (+!1420 lm!1477 lt!1668394) lt!1668781)))

(declare-fun b!4482034 () Bool)

(declare-fun res!1861007 () Bool)

(assert (=> b!4482034 (=> (not res!1861007) (not e!2791527))))

(assert (=> b!4482034 (= res!1861007 (= (getValueByKey!961 (toList!4131 lt!1668781) (_1!28636 lt!1668394)) (Some!10974 (_2!28636 lt!1668394))))))

(declare-fun b!4482035 () Bool)

(assert (=> b!4482035 (= e!2791527 (contains!12981 (toList!4131 lt!1668781) lt!1668394))))

(assert (= (and d!1371919 res!1861006) b!4482034))

(assert (= (and b!4482034 res!1861007) b!4482035))

(declare-fun m!5202411 () Bool)

(assert (=> d!1371919 m!5202411))

(declare-fun m!5202413 () Bool)

(assert (=> d!1371919 m!5202413))

(declare-fun m!5202415 () Bool)

(assert (=> d!1371919 m!5202415))

(declare-fun m!5202417 () Bool)

(assert (=> d!1371919 m!5202417))

(declare-fun m!5202419 () Bool)

(assert (=> b!4482034 m!5202419))

(declare-fun m!5202421 () Bool)

(assert (=> b!4482035 m!5202421))

(assert (=> b!4481670 d!1371919))

(declare-fun d!1371921 () Bool)

(declare-fun res!1861012 () Bool)

(declare-fun e!2791532 () Bool)

(assert (=> d!1371921 (=> res!1861012 e!2791532)))

(assert (=> d!1371921 (= res!1861012 (not ((_ is Cons!50384) newBucket!178)))))

(assert (=> d!1371921 (= (noDuplicateKeys!1062 newBucket!178) e!2791532)))

(declare-fun b!4482040 () Bool)

(declare-fun e!2791533 () Bool)

(assert (=> b!4482040 (= e!2791532 e!2791533)))

(declare-fun res!1861013 () Bool)

(assert (=> b!4482040 (=> (not res!1861013) (not e!2791533))))

(assert (=> b!4482040 (= res!1861013 (not (containsKey!1554 (t!357462 newBucket!178) (_1!28635 (h!56171 newBucket!178)))))))

(declare-fun b!4482041 () Bool)

(assert (=> b!4482041 (= e!2791533 (noDuplicateKeys!1062 (t!357462 newBucket!178)))))

(assert (= (and d!1371921 (not res!1861012)) b!4482040))

(assert (= (and b!4482040 res!1861013) b!4482041))

(declare-fun m!5202423 () Bool)

(assert (=> b!4482040 m!5202423))

(declare-fun m!5202425 () Bool)

(assert (=> b!4482041 m!5202425))

(assert (=> b!4481671 d!1371921))

(declare-fun d!1371923 () Bool)

(assert (=> d!1371923 (= (eq!555 lt!1668373 (addToMapMapFromBucket!617 newBucket!178 lt!1668375)) (= (content!8173 (toList!4132 lt!1668373)) (content!8173 (toList!4132 (addToMapMapFromBucket!617 newBucket!178 lt!1668375)))))))

(declare-fun bs!825404 () Bool)

(assert (= bs!825404 d!1371923))

(assert (=> bs!825404 m!5201839))

(declare-fun m!5202427 () Bool)

(assert (=> bs!825404 m!5202427))

(assert (=> b!4481661 d!1371923))

(declare-fun bs!825405 () Bool)

(declare-fun b!4482045 () Bool)

(assert (= bs!825405 (and b!4482045 b!4482028)))

(declare-fun lambda!165635 () Int)

(assert (=> bs!825405 (= lambda!165635 lambda!165630)))

(declare-fun bs!825406 () Bool)

(assert (= bs!825406 (and b!4482045 d!1371887)))

(assert (=> bs!825406 (= (= lt!1668375 lt!1668779) (= lambda!165635 lambda!165633))))

(declare-fun bs!825407 () Bool)

(assert (= bs!825407 (and b!4482045 b!4482027)))

(assert (=> bs!825407 (= lambda!165635 lambda!165631)))

(declare-fun bs!825408 () Bool)

(assert (= bs!825408 (and b!4482045 d!1371723)))

(assert (=> bs!825408 (not (= lambda!165635 lambda!165511))))

(assert (=> bs!825407 (= (= lt!1668375 lt!1668766) (= lambda!165635 lambda!165632))))

(assert (=> b!4482045 true))

(declare-fun bs!825409 () Bool)

(declare-fun b!4482044 () Bool)

(assert (= bs!825409 (and b!4482044 b!4482028)))

(declare-fun lambda!165636 () Int)

(assert (=> bs!825409 (= lambda!165636 lambda!165630)))

(declare-fun bs!825410 () Bool)

(assert (= bs!825410 (and b!4482044 b!4482045)))

(assert (=> bs!825410 (= lambda!165636 lambda!165635)))

(declare-fun bs!825411 () Bool)

(assert (= bs!825411 (and b!4482044 d!1371887)))

(assert (=> bs!825411 (= (= lt!1668375 lt!1668779) (= lambda!165636 lambda!165633))))

(declare-fun bs!825412 () Bool)

(assert (= bs!825412 (and b!4482044 b!4482027)))

(assert (=> bs!825412 (= lambda!165636 lambda!165631)))

(declare-fun bs!825413 () Bool)

(assert (= bs!825413 (and b!4482044 d!1371723)))

(assert (=> bs!825413 (not (= lambda!165636 lambda!165511))))

(assert (=> bs!825412 (= (= lt!1668375 lt!1668766) (= lambda!165636 lambda!165632))))

(assert (=> b!4482044 true))

(declare-fun lt!1668792 () ListMap!3393)

(declare-fun lambda!165637 () Int)

(assert (=> bs!825409 (= (= lt!1668792 lt!1668375) (= lambda!165637 lambda!165630))))

(assert (=> bs!825410 (= (= lt!1668792 lt!1668375) (= lambda!165637 lambda!165635))))

(assert (=> bs!825411 (= (= lt!1668792 lt!1668779) (= lambda!165637 lambda!165633))))

(assert (=> b!4482044 (= (= lt!1668792 lt!1668375) (= lambda!165637 lambda!165636))))

(assert (=> bs!825412 (= (= lt!1668792 lt!1668375) (= lambda!165637 lambda!165631))))

(assert (=> bs!825413 (not (= lambda!165637 lambda!165511))))

(assert (=> bs!825412 (= (= lt!1668792 lt!1668766) (= lambda!165637 lambda!165632))))

(assert (=> b!4482044 true))

(declare-fun bs!825414 () Bool)

(declare-fun d!1371925 () Bool)

(assert (= bs!825414 (and d!1371925 b!4482028)))

(declare-fun lt!1668805 () ListMap!3393)

(declare-fun lambda!165638 () Int)

(assert (=> bs!825414 (= (= lt!1668805 lt!1668375) (= lambda!165638 lambda!165630))))

(declare-fun bs!825415 () Bool)

(assert (= bs!825415 (and d!1371925 b!4482045)))

(assert (=> bs!825415 (= (= lt!1668805 lt!1668375) (= lambda!165638 lambda!165635))))

(declare-fun bs!825416 () Bool)

(assert (= bs!825416 (and d!1371925 d!1371887)))

(assert (=> bs!825416 (= (= lt!1668805 lt!1668779) (= lambda!165638 lambda!165633))))

(declare-fun bs!825417 () Bool)

(assert (= bs!825417 (and d!1371925 b!4482044)))

(assert (=> bs!825417 (= (= lt!1668805 lt!1668375) (= lambda!165638 lambda!165636))))

(declare-fun bs!825418 () Bool)

(assert (= bs!825418 (and d!1371925 b!4482027)))

(assert (=> bs!825418 (= (= lt!1668805 lt!1668375) (= lambda!165638 lambda!165631))))

(declare-fun bs!825419 () Bool)

(assert (= bs!825419 (and d!1371925 d!1371723)))

(assert (=> bs!825419 (not (= lambda!165638 lambda!165511))))

(assert (=> bs!825418 (= (= lt!1668805 lt!1668766) (= lambda!165638 lambda!165632))))

(assert (=> bs!825417 (= (= lt!1668805 lt!1668792) (= lambda!165638 lambda!165637))))

(assert (=> d!1371925 true))

(declare-fun call!312105 () Bool)

(declare-fun c!763484 () Bool)

(declare-fun bm!312100 () Bool)

(assert (=> bm!312100 (= call!312105 (forall!10060 (toList!4132 lt!1668375) (ite c!763484 lambda!165635 lambda!165636)))))

(declare-fun bm!312101 () Bool)

(declare-fun call!312106 () Bool)

(assert (=> bm!312101 (= call!312106 (forall!10060 (toList!4132 lt!1668375) (ite c!763484 lambda!165635 lambda!165637)))))

(declare-fun b!4482042 () Bool)

(declare-fun e!2791534 () Bool)

(assert (=> b!4482042 (= e!2791534 (forall!10060 (toList!4132 lt!1668375) lambda!165637))))

(declare-fun bm!312102 () Bool)

(declare-fun call!312107 () Unit!89797)

(assert (=> bm!312102 (= call!312107 (lemmaContainsAllItsOwnKeys!282 lt!1668375))))

(declare-fun b!4482043 () Bool)

(declare-fun e!2791535 () Bool)

(assert (=> b!4482043 (= e!2791535 (invariantList!951 (toList!4132 lt!1668805)))))

(declare-fun e!2791536 () ListMap!3393)

(assert (=> b!4482044 (= e!2791536 lt!1668792)))

(declare-fun lt!1668787 () ListMap!3393)

(assert (=> b!4482044 (= lt!1668787 (+!1422 lt!1668375 (h!56171 newBucket!178)))))

(assert (=> b!4482044 (= lt!1668792 (addToMapMapFromBucket!617 (t!357462 newBucket!178) (+!1422 lt!1668375 (h!56171 newBucket!178))))))

(declare-fun lt!1668788 () Unit!89797)

(assert (=> b!4482044 (= lt!1668788 call!312107)))

(assert (=> b!4482044 call!312105))

(declare-fun lt!1668789 () Unit!89797)

(assert (=> b!4482044 (= lt!1668789 lt!1668788)))

(assert (=> b!4482044 (forall!10060 (toList!4132 lt!1668787) lambda!165637)))

(declare-fun lt!1668800 () Unit!89797)

(declare-fun Unit!89852 () Unit!89797)

(assert (=> b!4482044 (= lt!1668800 Unit!89852)))

(assert (=> b!4482044 (forall!10060 (t!357462 newBucket!178) lambda!165637)))

(declare-fun lt!1668790 () Unit!89797)

(declare-fun Unit!89853 () Unit!89797)

(assert (=> b!4482044 (= lt!1668790 Unit!89853)))

(declare-fun lt!1668786 () Unit!89797)

(declare-fun Unit!89854 () Unit!89797)

(assert (=> b!4482044 (= lt!1668786 Unit!89854)))

(declare-fun lt!1668793 () Unit!89797)

(assert (=> b!4482044 (= lt!1668793 (forallContained!2321 (toList!4132 lt!1668787) lambda!165637 (h!56171 newBucket!178)))))

(assert (=> b!4482044 (contains!12980 lt!1668787 (_1!28635 (h!56171 newBucket!178)))))

(declare-fun lt!1668797 () Unit!89797)

(declare-fun Unit!89855 () Unit!89797)

(assert (=> b!4482044 (= lt!1668797 Unit!89855)))

(assert (=> b!4482044 (contains!12980 lt!1668792 (_1!28635 (h!56171 newBucket!178)))))

(declare-fun lt!1668796 () Unit!89797)

(declare-fun Unit!89856 () Unit!89797)

(assert (=> b!4482044 (= lt!1668796 Unit!89856)))

(assert (=> b!4482044 (forall!10060 newBucket!178 lambda!165637)))

(declare-fun lt!1668795 () Unit!89797)

(declare-fun Unit!89857 () Unit!89797)

(assert (=> b!4482044 (= lt!1668795 Unit!89857)))

(assert (=> b!4482044 (forall!10060 (toList!4132 lt!1668787) lambda!165637)))

(declare-fun lt!1668791 () Unit!89797)

(declare-fun Unit!89858 () Unit!89797)

(assert (=> b!4482044 (= lt!1668791 Unit!89858)))

(declare-fun lt!1668799 () Unit!89797)

(declare-fun Unit!89859 () Unit!89797)

(assert (=> b!4482044 (= lt!1668799 Unit!89859)))

(declare-fun lt!1668785 () Unit!89797)

(assert (=> b!4482044 (= lt!1668785 (addForallContainsKeyThenBeforeAdding!282 lt!1668375 lt!1668792 (_1!28635 (h!56171 newBucket!178)) (_2!28635 (h!56171 newBucket!178))))))

(assert (=> b!4482044 call!312106))

(declare-fun lt!1668794 () Unit!89797)

(assert (=> b!4482044 (= lt!1668794 lt!1668785)))

(assert (=> b!4482044 (forall!10060 (toList!4132 lt!1668375) lambda!165637)))

(declare-fun lt!1668804 () Unit!89797)

(declare-fun Unit!89860 () Unit!89797)

(assert (=> b!4482044 (= lt!1668804 Unit!89860)))

(declare-fun res!1861016 () Bool)

(assert (=> b!4482044 (= res!1861016 (forall!10060 newBucket!178 lambda!165637))))

(assert (=> b!4482044 (=> (not res!1861016) (not e!2791534))))

(assert (=> b!4482044 e!2791534))

(declare-fun lt!1668798 () Unit!89797)

(declare-fun Unit!89861 () Unit!89797)

(assert (=> b!4482044 (= lt!1668798 Unit!89861)))

(assert (=> d!1371925 e!2791535))

(declare-fun res!1861015 () Bool)

(assert (=> d!1371925 (=> (not res!1861015) (not e!2791535))))

(assert (=> d!1371925 (= res!1861015 (forall!10060 newBucket!178 lambda!165638))))

(assert (=> d!1371925 (= lt!1668805 e!2791536)))

(assert (=> d!1371925 (= c!763484 ((_ is Nil!50384) newBucket!178))))

(assert (=> d!1371925 (noDuplicateKeys!1062 newBucket!178)))

(assert (=> d!1371925 (= (addToMapMapFromBucket!617 newBucket!178 lt!1668375) lt!1668805)))

(assert (=> b!4482045 (= e!2791536 lt!1668375)))

(declare-fun lt!1668802 () Unit!89797)

(assert (=> b!4482045 (= lt!1668802 call!312107)))

(assert (=> b!4482045 call!312106))

(declare-fun lt!1668801 () Unit!89797)

(assert (=> b!4482045 (= lt!1668801 lt!1668802)))

(assert (=> b!4482045 call!312105))

(declare-fun lt!1668803 () Unit!89797)

(declare-fun Unit!89862 () Unit!89797)

(assert (=> b!4482045 (= lt!1668803 Unit!89862)))

(declare-fun b!4482046 () Bool)

(declare-fun res!1861014 () Bool)

(assert (=> b!4482046 (=> (not res!1861014) (not e!2791535))))

(assert (=> b!4482046 (= res!1861014 (forall!10060 (toList!4132 lt!1668375) lambda!165638))))

(assert (= (and d!1371925 c!763484) b!4482045))

(assert (= (and d!1371925 (not c!763484)) b!4482044))

(assert (= (and b!4482044 res!1861016) b!4482042))

(assert (= (or b!4482045 b!4482044) bm!312100))

(assert (= (or b!4482045 b!4482044) bm!312101))

(assert (= (or b!4482045 b!4482044) bm!312102))

(assert (= (and d!1371925 res!1861015) b!4482046))

(assert (= (and b!4482046 res!1861014) b!4482043))

(declare-fun m!5202429 () Bool)

(assert (=> b!4482044 m!5202429))

(declare-fun m!5202431 () Bool)

(assert (=> b!4482044 m!5202431))

(declare-fun m!5202433 () Bool)

(assert (=> b!4482044 m!5202433))

(declare-fun m!5202435 () Bool)

(assert (=> b!4482044 m!5202435))

(assert (=> b!4482044 m!5202433))

(declare-fun m!5202437 () Bool)

(assert (=> b!4482044 m!5202437))

(assert (=> b!4482044 m!5202435))

(declare-fun m!5202439 () Bool)

(assert (=> b!4482044 m!5202439))

(declare-fun m!5202441 () Bool)

(assert (=> b!4482044 m!5202441))

(declare-fun m!5202443 () Bool)

(assert (=> b!4482044 m!5202443))

(assert (=> b!4482044 m!5202441))

(declare-fun m!5202445 () Bool)

(assert (=> b!4482044 m!5202445))

(declare-fun m!5202447 () Bool)

(assert (=> b!4482044 m!5202447))

(declare-fun m!5202449 () Bool)

(assert (=> b!4482043 m!5202449))

(assert (=> bm!312102 m!5202393))

(declare-fun m!5202451 () Bool)

(assert (=> b!4482046 m!5202451))

(declare-fun m!5202453 () Bool)

(assert (=> bm!312101 m!5202453))

(declare-fun m!5202455 () Bool)

(assert (=> bm!312100 m!5202455))

(assert (=> b!4482042 m!5202429))

(declare-fun m!5202457 () Bool)

(assert (=> d!1371925 m!5202457))

(assert (=> d!1371925 m!5201603))

(assert (=> b!4481661 d!1371925))

(declare-fun bs!825420 () Bool)

(declare-fun d!1371927 () Bool)

(assert (= bs!825420 (and d!1371927 start!440876)))

(declare-fun lambda!165639 () Int)

(assert (=> bs!825420 (= lambda!165639 lambda!165505)))

(declare-fun bs!825421 () Bool)

(assert (= bs!825421 (and d!1371927 d!1371727)))

(assert (=> bs!825421 (= lambda!165639 lambda!165520)))

(declare-fun bs!825422 () Bool)

(assert (= bs!825422 (and d!1371927 d!1371809)))

(assert (=> bs!825422 (= lambda!165639 lambda!165572)))

(declare-fun bs!825423 () Bool)

(assert (= bs!825423 (and d!1371927 d!1371801)))

(assert (=> bs!825423 (= lambda!165639 lambda!165560)))

(declare-fun bs!825424 () Bool)

(assert (= bs!825424 (and d!1371927 d!1371851)))

(assert (=> bs!825424 (= lambda!165639 lambda!165586)))

(declare-fun bs!825425 () Bool)

(assert (= bs!825425 (and d!1371927 d!1371839)))

(assert (=> bs!825425 (= lambda!165639 lambda!165578)))

(declare-fun bs!825426 () Bool)

(assert (= bs!825426 (and d!1371927 d!1371789)))

(assert (=> bs!825426 (= lambda!165639 lambda!165532)))

(declare-fun bs!825427 () Bool)

(assert (= bs!825427 (and d!1371927 d!1371763)))

(assert (=> bs!825427 (= lambda!165639 lambda!165531)))

(declare-fun bs!825428 () Bool)

(assert (= bs!825428 (and d!1371927 d!1371881)))

(assert (=> bs!825428 (= lambda!165639 lambda!165595)))

(declare-fun bs!825429 () Bool)

(assert (= bs!825429 (and d!1371927 d!1371917)))

(assert (=> bs!825429 (= lambda!165639 lambda!165634)))

(declare-fun bs!825430 () Bool)

(assert (= bs!825430 (and d!1371927 d!1371715)))

(assert (=> bs!825430 (not (= lambda!165639 lambda!165508))))

(declare-fun bs!825431 () Bool)

(assert (= bs!825431 (and d!1371927 d!1371799)))

(assert (=> bs!825431 (= lambda!165639 lambda!165557)))

(declare-fun bs!825432 () Bool)

(assert (= bs!825432 (and d!1371927 d!1371735)))

(assert (=> bs!825432 (= lambda!165639 lambda!165521)))

(declare-fun bs!825433 () Bool)

(assert (= bs!825433 (and d!1371927 d!1371871)))

(assert (=> bs!825433 (= lambda!165639 lambda!165588)))

(declare-fun bs!825434 () Bool)

(assert (= bs!825434 (and d!1371927 d!1371843)))

(assert (=> bs!825434 (= lambda!165639 lambda!165579)))

(declare-fun bs!825435 () Bool)

(assert (= bs!825435 (and d!1371927 d!1371873)))

(assert (=> bs!825435 (= lambda!165639 lambda!165594)))

(declare-fun lt!1668806 () ListMap!3393)

(assert (=> d!1371927 (invariantList!951 (toList!4132 lt!1668806))))

(declare-fun e!2791537 () ListMap!3393)

(assert (=> d!1371927 (= lt!1668806 e!2791537)))

(declare-fun c!763485 () Bool)

(assert (=> d!1371927 (= c!763485 ((_ is Cons!50385) (toList!4131 lt!1668376)))))

(assert (=> d!1371927 (forall!10058 (toList!4131 lt!1668376) lambda!165639)))

(assert (=> d!1371927 (= (extractMap!1118 (toList!4131 lt!1668376)) lt!1668806)))

(declare-fun b!4482047 () Bool)

(assert (=> b!4482047 (= e!2791537 (addToMapMapFromBucket!617 (_2!28636 (h!56172 (toList!4131 lt!1668376))) (extractMap!1118 (t!357463 (toList!4131 lt!1668376)))))))

(declare-fun b!4482048 () Bool)

(assert (=> b!4482048 (= e!2791537 (ListMap!3394 Nil!50384))))

(assert (= (and d!1371927 c!763485) b!4482047))

(assert (= (and d!1371927 (not c!763485)) b!4482048))

(declare-fun m!5202459 () Bool)

(assert (=> d!1371927 m!5202459))

(declare-fun m!5202461 () Bool)

(assert (=> d!1371927 m!5202461))

(declare-fun m!5202463 () Bool)

(assert (=> b!4482047 m!5202463))

(assert (=> b!4482047 m!5202463))

(declare-fun m!5202465 () Bool)

(assert (=> b!4482047 m!5202465))

(assert (=> b!4481661 d!1371927))

(declare-fun b!4482053 () Bool)

(declare-fun e!2791540 () Bool)

(declare-fun tp!1336725 () Bool)

(declare-fun tp!1336726 () Bool)

(assert (=> b!4482053 (= e!2791540 (and tp!1336725 tp!1336726))))

(assert (=> b!4481662 (= tp!1336710 e!2791540)))

(assert (= (and b!4481662 ((_ is Cons!50385) (toList!4131 lm!1477))) b!4482053))

(declare-fun tp!1336729 () Bool)

(declare-fun b!4482058 () Bool)

(declare-fun e!2791543 () Bool)

(assert (=> b!4482058 (= e!2791543 (and tp_is_empty!27525 tp_is_empty!27527 tp!1336729))))

(assert (=> b!4481672 (= tp!1336711 e!2791543)))

(assert (= (and b!4481672 ((_ is Cons!50384) (t!357462 newBucket!178))) b!4482058))

(declare-fun b_lambda!150347 () Bool)

(assert (= b_lambda!150339 (or start!440876 b_lambda!150347)))

(declare-fun bs!825436 () Bool)

(declare-fun d!1371929 () Bool)

(assert (= bs!825436 (and d!1371929 start!440876)))

(assert (=> bs!825436 (= (dynLambda!21048 lambda!165505 (h!56172 (toList!4131 lm!1477))) (noDuplicateKeys!1062 (_2!28636 (h!56172 (toList!4131 lm!1477)))))))

(assert (=> bs!825436 m!5202121))

(assert (=> b!4481990 d!1371929))

(declare-fun b_lambda!150349 () Bool)

(assert (= b_lambda!150333 (or start!440876 b_lambda!150349)))

(declare-fun bs!825437 () Bool)

(declare-fun d!1371931 () Bool)

(assert (= bs!825437 (and d!1371931 start!440876)))

(assert (=> bs!825437 (= (dynLambda!21048 lambda!165505 lt!1668390) (noDuplicateKeys!1062 (_2!28636 lt!1668390)))))

(declare-fun m!5202467 () Bool)

(assert (=> bs!825437 m!5202467))

(assert (=> d!1371771 d!1371931))

(declare-fun b_lambda!150351 () Bool)

(assert (= b_lambda!150335 (or start!440876 b_lambda!150351)))

(declare-fun bs!825438 () Bool)

(declare-fun d!1371933 () Bool)

(assert (= bs!825438 (and d!1371933 start!440876)))

(assert (=> bs!825438 (= (dynLambda!21048 lambda!165505 (h!56172 (toList!4131 lt!1668376))) (noDuplicateKeys!1062 (_2!28636 (h!56172 (toList!4131 lt!1668376)))))))

(declare-fun m!5202469 () Bool)

(assert (=> bs!825438 m!5202469))

(assert (=> b!4481876 d!1371933))

(check-sat (not d!1371843) (not b!4481809) (not b!4481826) (not d!1371783) (not b!4481840) (not b!4481693) (not b!4481734) (not b!4481695) (not d!1371795) (not bs!825437) (not b_lambda!150347) (not b!4481886) (not b!4481829) (not b!4481847) (not b!4482047) (not b!4482058) (not b!4481850) (not d!1371715) (not b!4481862) (not b_lambda!150349) (not d!1371769) (not d!1371819) (not d!1371849) (not b!4482044) (not b!4481882) (not b!4482034) (not d!1371787) (not b!4481891) (not d!1371807) (not b!4481889) (not b!4481895) (not b!4482027) (not bm!312100) (not b!4482053) (not b!4481894) (not bm!312097) (not b!4481887) tp_is_empty!27527 (not d!1371727) (not bm!312102) (not b!4481877) (not b!4481806) (not b!4481856) (not b!4481746) (not d!1371917) (not b!4481858) (not d!1371881) (not d!1371927) (not b!4481859) (not bm!312075) (not b!4482029) (not d!1371773) (not b!4481991) (not bm!312098) (not d!1371739) (not d!1371925) (not b!4481890) (not b!4481866) (not b!4482043) (not b!4481808) (not b!4482041) (not d!1371775) (not bm!312099) (not b!4481988) (not bm!312076) (not b!4481861) (not d!1371803) (not bm!312074) (not d!1371765) (not b!4482025) (not d!1371779) (not b!4481992) (not bs!825438) (not b!4481824) (not b!4481817) (not b!4481860) (not d!1371923) tp_is_empty!27525 (not d!1371879) (not b!4481814) (not b!4481948) (not d!1371767) (not b!4481919) (not d!1371883) (not b!4482035) (not b!4481899) (not b!4481865) (not d!1371817) (not b!4481994) (not b!4481807) (not d!1371789) (not d!1371847) (not b!4481903) (not b!4481938) (not d!1371851) (not b!4481810) (not d!1371799) (not d!1371793) (not d!1371871) (not d!1371801) (not b!4482032) (not b!4481946) (not d!1371797) (not d!1371763) (not b!4482046) (not b!4482042) (not d!1371887) (not d!1371873) (not b!4481857) (not b!4481918) (not b!4482026) (not b!4481888) (not d!1371777) (not d!1371723) (not d!1371781) (not d!1371771) (not b_lambda!150351) (not d!1371809) (not d!1371735) (not bm!312101) (not b!4481811) (not d!1371919) (not b!4481883) (not b!4482040) (not bs!825436) (not d!1371839) (not d!1371885))
(check-sat)
