; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!464708 () Bool)

(assert start!464708)

(declare-fun b!4630679 () Bool)

(declare-fun res!1942769 () Bool)

(declare-fun e!2888674 () Bool)

(assert (=> b!4630679 (=> res!1942769 e!2888674)))

(declare-datatypes ((K!12970 0))(
  ( (K!12971 (val!18647 Int)) )
))
(declare-datatypes ((V!13216 0))(
  ( (V!13217 (val!18648 Int)) )
))
(declare-datatypes ((tuple2!52558 0))(
  ( (tuple2!52559 (_1!29573 K!12970) (_2!29573 V!13216)) )
))
(declare-fun lt!1790798 () tuple2!52558)

(declare-datatypes ((List!51722 0))(
  ( (Nil!51598) (Cons!51598 (h!57668 tuple2!52558) (t!358774 List!51722)) )
))
(declare-fun oldBucket!40 () List!51722)

(assert (=> b!4630679 (= res!1942769 (not (= lt!1790798 (h!57668 oldBucket!40))))))

(declare-fun e!2888671 () Bool)

(declare-fun tp!1342319 () Bool)

(declare-fun tp_is_empty!29407 () Bool)

(declare-fun tp_is_empty!29405 () Bool)

(declare-fun b!4630680 () Bool)

(assert (=> b!4630680 (= e!2888671 (and tp_is_empty!29405 tp_is_empty!29407 tp!1342319))))

(declare-fun res!1942782 () Bool)

(declare-fun e!2888669 () Bool)

(assert (=> start!464708 (=> (not res!1942782) (not e!2888669))))

(declare-fun noDuplicateKeys!1528 (List!51722) Bool)

(assert (=> start!464708 (= res!1942782 (noDuplicateKeys!1528 oldBucket!40))))

(assert (=> start!464708 e!2888669))

(assert (=> start!464708 true))

(declare-fun e!2888664 () Bool)

(assert (=> start!464708 e!2888664))

(assert (=> start!464708 tp_is_empty!29405))

(assert (=> start!464708 e!2888671))

(declare-fun b!4630681 () Bool)

(declare-fun res!1942778 () Bool)

(assert (=> b!4630681 (=> res!1942778 e!2888674)))

(declare-datatypes ((ListMap!4325 0))(
  ( (ListMap!4326 (toList!5021 List!51722)) )
))
(declare-fun lt!1790795 () ListMap!4325)

(declare-fun lt!1790825 () ListMap!4325)

(declare-fun eq!843 (ListMap!4325 ListMap!4325) Bool)

(declare-fun +!1894 (ListMap!4325 tuple2!52558) ListMap!4325)

(assert (=> b!4630681 (= res!1942778 (not (eq!843 lt!1790825 (+!1894 lt!1790795 (h!57668 oldBucket!40)))))))

(declare-fun b!4630682 () Bool)

(declare-fun res!1942781 () Bool)

(declare-fun e!2888668 () Bool)

(assert (=> b!4630682 (=> res!1942781 e!2888668)))

(declare-fun lt!1790807 () List!51722)

(declare-fun key!4968 () K!12970)

(declare-fun removePairForKey!1151 (List!51722 K!12970) List!51722)

(assert (=> b!4630682 (= res!1942781 (not (= (removePairForKey!1151 (t!358774 oldBucket!40) key!4968) lt!1790807)))))

(declare-fun b!4630683 () Bool)

(declare-fun res!1942767 () Bool)

(assert (=> b!4630683 (=> (not res!1942767) (not e!2888669))))

(declare-fun newBucket!224 () List!51722)

(assert (=> b!4630683 (= res!1942767 (noDuplicateKeys!1528 newBucket!224))))

(declare-fun b!4630684 () Bool)

(declare-fun e!2888675 () Bool)

(assert (=> b!4630684 (= e!2888675 e!2888674)))

(declare-fun res!1942768 () Bool)

(assert (=> b!4630684 (=> res!1942768 e!2888674)))

(declare-fun lt!1790804 () ListMap!4325)

(declare-fun lt!1790801 () ListMap!4325)

(assert (=> b!4630684 (= res!1942768 (not (eq!843 lt!1790804 lt!1790801)))))

(declare-fun lt!1790803 () ListMap!4325)

(assert (=> b!4630684 (eq!843 lt!1790803 lt!1790804)))

(declare-fun lt!1790822 () ListMap!4325)

(declare-fun -!568 (ListMap!4325 K!12970) ListMap!4325)

(assert (=> b!4630684 (= lt!1790804 (-!568 lt!1790822 key!4968))))

(declare-datatypes ((Unit!113256 0))(
  ( (Unit!113257) )
))
(declare-fun lt!1790817 () Unit!113256)

(declare-fun lt!1790802 () ListMap!4325)

(declare-fun lemmaRemovePreservesEq!24 (ListMap!4325 ListMap!4325 K!12970) Unit!113256)

(assert (=> b!4630684 (= lt!1790817 (lemmaRemovePreservesEq!24 lt!1790802 lt!1790822 key!4968))))

(declare-fun b!4630685 () Bool)

(declare-fun tp!1342318 () Bool)

(assert (=> b!4630685 (= e!2888664 (and tp_is_empty!29405 tp_is_empty!29407 tp!1342318))))

(declare-fun b!4630686 () Bool)

(declare-fun e!2888672 () Bool)

(assert (=> b!4630686 (= e!2888672 e!2888675)))

(declare-fun res!1942772 () Bool)

(assert (=> b!4630686 (=> res!1942772 e!2888675)))

(assert (=> b!4630686 (= res!1942772 (not (= lt!1790803 lt!1790801)))))

(declare-fun lt!1790797 () ListMap!4325)

(assert (=> b!4630686 (= lt!1790801 (+!1894 lt!1790797 (h!57668 oldBucket!40)))))

(assert (=> b!4630686 (= lt!1790803 (-!568 lt!1790802 key!4968))))

(declare-fun lt!1790810 () ListMap!4325)

(assert (=> b!4630686 (= lt!1790802 (+!1894 lt!1790810 (h!57668 oldBucket!40)))))

(assert (=> b!4630686 (= (-!568 (+!1894 lt!1790810 (h!57668 oldBucket!40)) key!4968) (+!1894 lt!1790797 (h!57668 oldBucket!40)))))

(declare-fun lt!1790808 () Unit!113256)

(declare-fun addRemoveCommutativeForDiffKeys!23 (ListMap!4325 K!12970 V!13216 K!12970) Unit!113256)

(assert (=> b!4630686 (= lt!1790808 (addRemoveCommutativeForDiffKeys!23 lt!1790810 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40)) key!4968))))

(assert (=> b!4630686 (eq!843 lt!1790795 lt!1790797)))

(assert (=> b!4630686 (= lt!1790797 (-!568 lt!1790810 key!4968))))

(declare-fun lt!1790805 () Unit!113256)

(declare-datatypes ((Hashable!5925 0))(
  ( (HashableExt!5924 (__x!31628 Int)) )
))
(declare-fun hashF!1389 () Hashable!5925)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!130 ((_ BitVec 64) List!51722 List!51722 K!12970 Hashable!5925) Unit!113256)

(assert (=> b!4630686 (= lt!1790805 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!130 hash!414 (t!358774 oldBucket!40) lt!1790807 key!4968 hashF!1389))))

(declare-fun b!4630687 () Bool)

(declare-fun res!1942776 () Bool)

(assert (=> b!4630687 (=> (not res!1942776) (not e!2888669))))

(assert (=> b!4630687 (= res!1942776 (= (removePairForKey!1151 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4630688 () Bool)

(declare-fun e!2888667 () Bool)

(assert (=> b!4630688 (= e!2888667 e!2888672)))

(declare-fun res!1942765 () Bool)

(assert (=> b!4630688 (=> res!1942765 e!2888672)))

(assert (=> b!4630688 (= res!1942765 (not (eq!843 lt!1790825 (+!1894 lt!1790795 lt!1790798))))))

(declare-datatypes ((tuple2!52560 0))(
  ( (tuple2!52561 (_1!29574 (_ BitVec 64)) (_2!29574 List!51722)) )
))
(declare-datatypes ((List!51723 0))(
  ( (Nil!51599) (Cons!51599 (h!57669 tuple2!52560) (t!358775 List!51723)) )
))
(declare-fun extractMap!1584 (List!51723) ListMap!4325)

(assert (=> b!4630688 (= lt!1790795 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599)))))

(assert (=> b!4630688 (= lt!1790825 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 newBucket!224) Nil!51599)))))

(declare-fun b!4630689 () Bool)

(declare-fun res!1942770 () Bool)

(assert (=> b!4630689 (=> (not res!1942770) (not e!2888669))))

(declare-fun allKeysSameHash!1382 (List!51722 (_ BitVec 64) Hashable!5925) Bool)

(assert (=> b!4630689 (= res!1942770 (allKeysSameHash!1382 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4630690 () Bool)

(declare-fun e!2888673 () Bool)

(assert (=> b!4630690 (= e!2888673 e!2888668)))

(declare-fun res!1942777 () Bool)

(assert (=> b!4630690 (=> res!1942777 e!2888668)))

(declare-fun lt!1790824 () List!51722)

(assert (=> b!4630690 (= res!1942777 (not (= (removePairForKey!1151 lt!1790824 key!4968) lt!1790807)))))

(declare-fun tail!8163 (List!51722) List!51722)

(assert (=> b!4630690 (= lt!1790807 (tail!8163 newBucket!224))))

(assert (=> b!4630690 (= lt!1790824 (tail!8163 oldBucket!40))))

(declare-fun b!4630691 () Bool)

(assert (=> b!4630691 (= e!2888668 e!2888667)))

(declare-fun res!1942773 () Bool)

(assert (=> b!4630691 (=> res!1942773 e!2888667)))

(assert (=> b!4630691 (= res!1942773 (not (eq!843 lt!1790822 (+!1894 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)) (h!57668 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!989 (List!51722 ListMap!4325) ListMap!4325)

(assert (=> b!4630691 (eq!843 (addToMapMapFromBucket!989 (Cons!51598 lt!1790798 lt!1790807) (ListMap!4326 Nil!51598)) (+!1894 (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598)) lt!1790798))))

(declare-fun lt!1790816 () Unit!113256)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!94 (tuple2!52558 List!51722 ListMap!4325) Unit!113256)

(assert (=> b!4630691 (= lt!1790816 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!94 lt!1790798 lt!1790807 (ListMap!4326 Nil!51598)))))

(declare-fun head!9662 (List!51722) tuple2!52558)

(assert (=> b!4630691 (= lt!1790798 (head!9662 newBucket!224))))

(declare-fun lt!1790812 () tuple2!52558)

(assert (=> b!4630691 (eq!843 (addToMapMapFromBucket!989 (Cons!51598 lt!1790812 lt!1790824) (ListMap!4326 Nil!51598)) (+!1894 (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598)) lt!1790812))))

(declare-fun lt!1790821 () Unit!113256)

(assert (=> b!4630691 (= lt!1790821 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!94 lt!1790812 lt!1790824 (ListMap!4326 Nil!51598)))))

(assert (=> b!4630691 (= lt!1790812 (head!9662 oldBucket!40))))

(declare-fun contains!14683 (ListMap!4325 K!12970) Bool)

(assert (=> b!4630691 (contains!14683 lt!1790810 key!4968)))

(declare-fun lt!1790823 () List!51723)

(assert (=> b!4630691 (= lt!1790810 (extractMap!1584 lt!1790823))))

(declare-fun lt!1790813 () Unit!113256)

(declare-datatypes ((ListLongMap!3611 0))(
  ( (ListLongMap!3612 (toList!5022 List!51723)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!346 (ListLongMap!3611 K!12970 Hashable!5925) Unit!113256)

(assert (=> b!4630691 (= lt!1790813 (lemmaListContainsThenExtractedMapContains!346 (ListLongMap!3612 lt!1790823) key!4968 hashF!1389))))

(assert (=> b!4630691 (= lt!1790823 (Cons!51599 (tuple2!52561 hash!414 (t!358774 oldBucket!40)) Nil!51599))))

(declare-fun b!4630692 () Bool)

(declare-fun e!2888665 () Bool)

(declare-fun e!2888676 () Bool)

(assert (=> b!4630692 (= e!2888665 (not e!2888676))))

(declare-fun res!1942775 () Bool)

(assert (=> b!4630692 (=> res!1942775 e!2888676)))

(get-info :version)

(assert (=> b!4630692 (= res!1942775 (or (and ((_ is Cons!51598) oldBucket!40) (= (_1!29573 (h!57668 oldBucket!40)) key!4968)) (not ((_ is Cons!51598) oldBucket!40)) (= (_1!29573 (h!57668 oldBucket!40)) key!4968)))))

(declare-fun e!2888670 () Bool)

(assert (=> b!4630692 e!2888670))

(declare-fun res!1942780 () Bool)

(assert (=> b!4630692 (=> (not res!1942780) (not e!2888670))))

(declare-fun lt!1790811 () ListMap!4325)

(assert (=> b!4630692 (= res!1942780 (= lt!1790822 (addToMapMapFromBucket!989 oldBucket!40 lt!1790811)))))

(assert (=> b!4630692 (= lt!1790811 (extractMap!1584 Nil!51599))))

(assert (=> b!4630692 true))

(declare-fun b!4630693 () Bool)

(declare-fun res!1942766 () Bool)

(assert (=> b!4630693 (=> (not res!1942766) (not e!2888665))))

(assert (=> b!4630693 (= res!1942766 (allKeysSameHash!1382 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4630694 () Bool)

(declare-fun lambda!193540 () Int)

(declare-fun forall!10862 (List!51723 Int) Bool)

(assert (=> b!4630694 (= e!2888674 (forall!10862 lt!1790823 lambda!193540))))

(declare-fun b!4630695 () Bool)

(assert (=> b!4630695 (= e!2888676 e!2888673)))

(declare-fun res!1942774 () Bool)

(assert (=> b!4630695 (=> res!1942774 e!2888673)))

(declare-fun containsKey!2508 (List!51722 K!12970) Bool)

(assert (=> b!4630695 (= res!1942774 (not (containsKey!2508 (t!358774 oldBucket!40) key!4968)))))

(assert (=> b!4630695 (containsKey!2508 oldBucket!40 key!4968)))

(declare-fun lt!1790815 () Unit!113256)

(declare-fun lemmaGetPairDefinedThenContainsKey!74 (List!51722 K!12970 Hashable!5925) Unit!113256)

(assert (=> b!4630695 (= lt!1790815 (lemmaGetPairDefinedThenContainsKey!74 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1790819 () List!51722)

(declare-datatypes ((Option!11650 0))(
  ( (None!11649) (Some!11649 (v!45815 tuple2!52558)) )
))
(declare-fun isDefined!8915 (Option!11650) Bool)

(declare-fun getPair!320 (List!51722 K!12970) Option!11650)

(assert (=> b!4630695 (isDefined!8915 (getPair!320 lt!1790819 key!4968))))

(declare-fun lt!1790806 () List!51723)

(declare-fun lt!1790796 () Unit!113256)

(declare-fun lt!1790809 () tuple2!52560)

(declare-fun forallContained!3092 (List!51723 Int tuple2!52560) Unit!113256)

(assert (=> b!4630695 (= lt!1790796 (forallContained!3092 lt!1790806 lambda!193540 lt!1790809))))

(declare-fun contains!14684 (List!51723 tuple2!52560) Bool)

(assert (=> b!4630695 (contains!14684 lt!1790806 lt!1790809)))

(declare-fun lt!1790820 () (_ BitVec 64))

(assert (=> b!4630695 (= lt!1790809 (tuple2!52561 lt!1790820 lt!1790819))))

(declare-fun lt!1790799 () Unit!113256)

(declare-fun lt!1790814 () ListLongMap!3611)

(declare-fun lemmaGetValueImpliesTupleContained!125 (ListLongMap!3611 (_ BitVec 64) List!51722) Unit!113256)

(assert (=> b!4630695 (= lt!1790799 (lemmaGetValueImpliesTupleContained!125 lt!1790814 lt!1790820 lt!1790819))))

(declare-fun apply!12193 (ListLongMap!3611 (_ BitVec 64)) List!51722)

(assert (=> b!4630695 (= lt!1790819 (apply!12193 lt!1790814 lt!1790820))))

(declare-fun contains!14685 (ListLongMap!3611 (_ BitVec 64)) Bool)

(assert (=> b!4630695 (contains!14685 lt!1790814 lt!1790820)))

(declare-fun lt!1790800 () Unit!113256)

(declare-fun lemmaInGenMapThenLongMapContainsHash!526 (ListLongMap!3611 K!12970 Hashable!5925) Unit!113256)

(assert (=> b!4630695 (= lt!1790800 (lemmaInGenMapThenLongMapContainsHash!526 lt!1790814 key!4968 hashF!1389))))

(declare-fun lt!1790818 () Unit!113256)

(declare-fun lemmaInGenMapThenGetPairDefined!116 (ListLongMap!3611 K!12970 Hashable!5925) Unit!113256)

(assert (=> b!4630695 (= lt!1790818 (lemmaInGenMapThenGetPairDefined!116 lt!1790814 key!4968 hashF!1389))))

(assert (=> b!4630695 (= lt!1790814 (ListLongMap!3612 lt!1790806))))

(declare-fun b!4630696 () Bool)

(assert (=> b!4630696 (= e!2888670 (= lt!1790811 (ListMap!4326 Nil!51598)))))

(declare-fun b!4630697 () Bool)

(declare-fun e!2888666 () Bool)

(assert (=> b!4630697 (= e!2888669 e!2888666)))

(declare-fun res!1942779 () Bool)

(assert (=> b!4630697 (=> (not res!1942779) (not e!2888666))))

(assert (=> b!4630697 (= res!1942779 (contains!14683 lt!1790822 key!4968))))

(assert (=> b!4630697 (= lt!1790822 (extractMap!1584 lt!1790806))))

(assert (=> b!4630697 (= lt!1790806 (Cons!51599 (tuple2!52561 hash!414 oldBucket!40) Nil!51599))))

(declare-fun b!4630698 () Bool)

(assert (=> b!4630698 (= e!2888666 e!2888665)))

(declare-fun res!1942771 () Bool)

(assert (=> b!4630698 (=> (not res!1942771) (not e!2888665))))

(assert (=> b!4630698 (= res!1942771 (= lt!1790820 hash!414))))

(declare-fun hash!3560 (Hashable!5925 K!12970) (_ BitVec 64))

(assert (=> b!4630698 (= lt!1790820 (hash!3560 hashF!1389 key!4968))))

(assert (= (and start!464708 res!1942782) b!4630683))

(assert (= (and b!4630683 res!1942767) b!4630687))

(assert (= (and b!4630687 res!1942776) b!4630689))

(assert (= (and b!4630689 res!1942770) b!4630697))

(assert (= (and b!4630697 res!1942779) b!4630698))

(assert (= (and b!4630698 res!1942771) b!4630693))

(assert (= (and b!4630693 res!1942766) b!4630692))

(assert (= (and b!4630692 res!1942780) b!4630696))

(assert (= (and b!4630692 (not res!1942775)) b!4630695))

(assert (= (and b!4630695 (not res!1942774)) b!4630690))

(assert (= (and b!4630690 (not res!1942777)) b!4630682))

(assert (= (and b!4630682 (not res!1942781)) b!4630691))

(assert (= (and b!4630691 (not res!1942773)) b!4630688))

(assert (= (and b!4630688 (not res!1942765)) b!4630686))

(assert (= (and b!4630686 (not res!1942772)) b!4630684))

(assert (= (and b!4630684 (not res!1942768)) b!4630679))

(assert (= (and b!4630679 (not res!1942769)) b!4630681))

(assert (= (and b!4630681 (not res!1942778)) b!4630694))

(assert (= (and start!464708 ((_ is Cons!51598) oldBucket!40)) b!4630685))

(assert (= (and start!464708 ((_ is Cons!51598) newBucket!224)) b!4630680))

(declare-fun m!5479505 () Bool)

(assert (=> b!4630697 m!5479505))

(declare-fun m!5479507 () Bool)

(assert (=> b!4630697 m!5479507))

(declare-fun m!5479509 () Bool)

(assert (=> b!4630687 m!5479509))

(declare-fun m!5479511 () Bool)

(assert (=> b!4630692 m!5479511))

(declare-fun m!5479513 () Bool)

(assert (=> b!4630692 m!5479513))

(declare-fun m!5479515 () Bool)

(assert (=> b!4630693 m!5479515))

(declare-fun m!5479517 () Bool)

(assert (=> start!464708 m!5479517))

(declare-fun m!5479519 () Bool)

(assert (=> b!4630690 m!5479519))

(declare-fun m!5479521 () Bool)

(assert (=> b!4630690 m!5479521))

(declare-fun m!5479523 () Bool)

(assert (=> b!4630690 m!5479523))

(declare-fun m!5479525 () Bool)

(assert (=> b!4630695 m!5479525))

(declare-fun m!5479527 () Bool)

(assert (=> b!4630695 m!5479527))

(declare-fun m!5479529 () Bool)

(assert (=> b!4630695 m!5479529))

(declare-fun m!5479531 () Bool)

(assert (=> b!4630695 m!5479531))

(declare-fun m!5479533 () Bool)

(assert (=> b!4630695 m!5479533))

(declare-fun m!5479535 () Bool)

(assert (=> b!4630695 m!5479535))

(declare-fun m!5479537 () Bool)

(assert (=> b!4630695 m!5479537))

(declare-fun m!5479539 () Bool)

(assert (=> b!4630695 m!5479539))

(declare-fun m!5479541 () Bool)

(assert (=> b!4630695 m!5479541))

(declare-fun m!5479543 () Bool)

(assert (=> b!4630695 m!5479543))

(assert (=> b!4630695 m!5479531))

(declare-fun m!5479545 () Bool)

(assert (=> b!4630695 m!5479545))

(declare-fun m!5479547 () Bool)

(assert (=> b!4630695 m!5479547))

(declare-fun m!5479549 () Bool)

(assert (=> b!4630698 m!5479549))

(declare-fun m!5479551 () Bool)

(assert (=> b!4630684 m!5479551))

(declare-fun m!5479553 () Bool)

(assert (=> b!4630684 m!5479553))

(declare-fun m!5479555 () Bool)

(assert (=> b!4630684 m!5479555))

(declare-fun m!5479557 () Bool)

(assert (=> b!4630684 m!5479557))

(declare-fun m!5479559 () Bool)

(assert (=> b!4630691 m!5479559))

(declare-fun m!5479561 () Bool)

(assert (=> b!4630691 m!5479561))

(declare-fun m!5479563 () Bool)

(assert (=> b!4630691 m!5479563))

(declare-fun m!5479565 () Bool)

(assert (=> b!4630691 m!5479565))

(declare-fun m!5479567 () Bool)

(assert (=> b!4630691 m!5479567))

(assert (=> b!4630691 m!5479563))

(declare-fun m!5479569 () Bool)

(assert (=> b!4630691 m!5479569))

(declare-fun m!5479571 () Bool)

(assert (=> b!4630691 m!5479571))

(declare-fun m!5479573 () Bool)

(assert (=> b!4630691 m!5479573))

(assert (=> b!4630691 m!5479567))

(assert (=> b!4630691 m!5479569))

(declare-fun m!5479575 () Bool)

(assert (=> b!4630691 m!5479575))

(declare-fun m!5479577 () Bool)

(assert (=> b!4630691 m!5479577))

(declare-fun m!5479579 () Bool)

(assert (=> b!4630691 m!5479579))

(assert (=> b!4630691 m!5479573))

(declare-fun m!5479581 () Bool)

(assert (=> b!4630691 m!5479581))

(assert (=> b!4630691 m!5479577))

(declare-fun m!5479583 () Bool)

(assert (=> b!4630691 m!5479583))

(declare-fun m!5479585 () Bool)

(assert (=> b!4630691 m!5479585))

(assert (=> b!4630691 m!5479583))

(assert (=> b!4630691 m!5479581))

(declare-fun m!5479587 () Bool)

(assert (=> b!4630691 m!5479587))

(declare-fun m!5479589 () Bool)

(assert (=> b!4630691 m!5479589))

(declare-fun m!5479591 () Bool)

(assert (=> b!4630691 m!5479591))

(assert (=> b!4630691 m!5479579))

(declare-fun m!5479593 () Bool)

(assert (=> b!4630691 m!5479593))

(declare-fun m!5479595 () Bool)

(assert (=> b!4630686 m!5479595))

(declare-fun m!5479597 () Bool)

(assert (=> b!4630686 m!5479597))

(declare-fun m!5479599 () Bool)

(assert (=> b!4630686 m!5479599))

(declare-fun m!5479601 () Bool)

(assert (=> b!4630686 m!5479601))

(assert (=> b!4630686 m!5479595))

(declare-fun m!5479603 () Bool)

(assert (=> b!4630686 m!5479603))

(declare-fun m!5479605 () Bool)

(assert (=> b!4630686 m!5479605))

(declare-fun m!5479607 () Bool)

(assert (=> b!4630686 m!5479607))

(declare-fun m!5479609 () Bool)

(assert (=> b!4630686 m!5479609))

(declare-fun m!5479611 () Bool)

(assert (=> b!4630688 m!5479611))

(assert (=> b!4630688 m!5479611))

(declare-fun m!5479613 () Bool)

(assert (=> b!4630688 m!5479613))

(declare-fun m!5479615 () Bool)

(assert (=> b!4630688 m!5479615))

(declare-fun m!5479617 () Bool)

(assert (=> b!4630688 m!5479617))

(declare-fun m!5479619 () Bool)

(assert (=> b!4630682 m!5479619))

(declare-fun m!5479621 () Bool)

(assert (=> b!4630694 m!5479621))

(declare-fun m!5479623 () Bool)

(assert (=> b!4630689 m!5479623))

(declare-fun m!5479625 () Bool)

(assert (=> b!4630681 m!5479625))

(assert (=> b!4630681 m!5479625))

(declare-fun m!5479627 () Bool)

(assert (=> b!4630681 m!5479627))

(declare-fun m!5479629 () Bool)

(assert (=> b!4630683 m!5479629))

(check-sat (not start!464708) (not b!4630695) (not b!4630692) (not b!4630684) (not b!4630680) (not b!4630685) tp_is_empty!29405 (not b!4630681) tp_is_empty!29407 (not b!4630688) (not b!4630694) (not b!4630686) (not b!4630683) (not b!4630689) (not b!4630687) (not b!4630691) (not b!4630698) (not b!4630682) (not b!4630693) (not b!4630697) (not b!4630690))
(check-sat)
(get-model)

(declare-fun b!4630709 () Bool)

(declare-fun e!2888681 () List!51722)

(assert (=> b!4630709 (= e!2888681 (Cons!51598 (h!57668 lt!1790824) (removePairForKey!1151 (t!358774 lt!1790824) key!4968)))))

(declare-fun b!4630707 () Bool)

(declare-fun e!2888682 () List!51722)

(assert (=> b!4630707 (= e!2888682 (t!358774 lt!1790824))))

(declare-fun d!1459278 () Bool)

(declare-fun lt!1790828 () List!51722)

(assert (=> d!1459278 (not (containsKey!2508 lt!1790828 key!4968))))

(assert (=> d!1459278 (= lt!1790828 e!2888682)))

(declare-fun c!792628 () Bool)

(assert (=> d!1459278 (= c!792628 (and ((_ is Cons!51598) lt!1790824) (= (_1!29573 (h!57668 lt!1790824)) key!4968)))))

(assert (=> d!1459278 (noDuplicateKeys!1528 lt!1790824)))

(assert (=> d!1459278 (= (removePairForKey!1151 lt!1790824 key!4968) lt!1790828)))

(declare-fun b!4630710 () Bool)

(assert (=> b!4630710 (= e!2888681 Nil!51598)))

(declare-fun b!4630708 () Bool)

(assert (=> b!4630708 (= e!2888682 e!2888681)))

(declare-fun c!792627 () Bool)

(assert (=> b!4630708 (= c!792627 ((_ is Cons!51598) lt!1790824))))

(assert (= (and d!1459278 c!792628) b!4630707))

(assert (= (and d!1459278 (not c!792628)) b!4630708))

(assert (= (and b!4630708 c!792627) b!4630709))

(assert (= (and b!4630708 (not c!792627)) b!4630710))

(declare-fun m!5479631 () Bool)

(assert (=> b!4630709 m!5479631))

(declare-fun m!5479633 () Bool)

(assert (=> d!1459278 m!5479633))

(declare-fun m!5479635 () Bool)

(assert (=> d!1459278 m!5479635))

(assert (=> b!4630690 d!1459278))

(declare-fun d!1459280 () Bool)

(assert (=> d!1459280 (= (tail!8163 newBucket!224) (t!358774 newBucket!224))))

(assert (=> b!4630690 d!1459280))

(declare-fun d!1459282 () Bool)

(assert (=> d!1459282 (= (tail!8163 oldBucket!40) (t!358774 oldBucket!40))))

(assert (=> b!4630690 d!1459282))

(declare-fun d!1459284 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8854 (List!51722) (InoxSet tuple2!52558))

(assert (=> d!1459284 (= (eq!843 (addToMapMapFromBucket!989 (Cons!51598 lt!1790812 lt!1790824) (ListMap!4326 Nil!51598)) (+!1894 (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598)) lt!1790812)) (= (content!8854 (toList!5021 (addToMapMapFromBucket!989 (Cons!51598 lt!1790812 lt!1790824) (ListMap!4326 Nil!51598)))) (content!8854 (toList!5021 (+!1894 (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598)) lt!1790812)))))))

(declare-fun bs!1027188 () Bool)

(assert (= bs!1027188 d!1459284))

(declare-fun m!5479637 () Bool)

(assert (=> bs!1027188 m!5479637))

(declare-fun m!5479639 () Bool)

(assert (=> bs!1027188 m!5479639))

(assert (=> b!4630691 d!1459284))

(declare-fun bs!1027190 () Bool)

(declare-fun d!1459286 () Bool)

(assert (= bs!1027190 (and d!1459286 b!4630695)))

(declare-fun lambda!193543 () Int)

(assert (=> bs!1027190 (= lambda!193543 lambda!193540)))

(assert (=> d!1459286 (contains!14683 (extractMap!1584 (toList!5022 (ListLongMap!3612 lt!1790823))) key!4968)))

(declare-fun lt!1790831 () Unit!113256)

(declare-fun choose!31487 (ListLongMap!3611 K!12970 Hashable!5925) Unit!113256)

(assert (=> d!1459286 (= lt!1790831 (choose!31487 (ListLongMap!3612 lt!1790823) key!4968 hashF!1389))))

(assert (=> d!1459286 (forall!10862 (toList!5022 (ListLongMap!3612 lt!1790823)) lambda!193543)))

(assert (=> d!1459286 (= (lemmaListContainsThenExtractedMapContains!346 (ListLongMap!3612 lt!1790823) key!4968 hashF!1389) lt!1790831)))

(declare-fun bs!1027191 () Bool)

(assert (= bs!1027191 d!1459286))

(declare-fun m!5479645 () Bool)

(assert (=> bs!1027191 m!5479645))

(assert (=> bs!1027191 m!5479645))

(declare-fun m!5479647 () Bool)

(assert (=> bs!1027191 m!5479647))

(declare-fun m!5479649 () Bool)

(assert (=> bs!1027191 m!5479649))

(declare-fun m!5479651 () Bool)

(assert (=> bs!1027191 m!5479651))

(assert (=> b!4630691 d!1459286))

(declare-fun d!1459292 () Bool)

(assert (=> d!1459292 (eq!843 (addToMapMapFromBucket!989 (Cons!51598 lt!1790812 lt!1790824) (ListMap!4326 Nil!51598)) (+!1894 (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598)) lt!1790812))))

(declare-fun lt!1790846 () Unit!113256)

(declare-fun choose!31488 (tuple2!52558 List!51722 ListMap!4325) Unit!113256)

(assert (=> d!1459292 (= lt!1790846 (choose!31488 lt!1790812 lt!1790824 (ListMap!4326 Nil!51598)))))

(assert (=> d!1459292 (noDuplicateKeys!1528 lt!1790824)))

(assert (=> d!1459292 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!94 lt!1790812 lt!1790824 (ListMap!4326 Nil!51598)) lt!1790846)))

(declare-fun bs!1027192 () Bool)

(assert (= bs!1027192 d!1459292))

(declare-fun m!5479665 () Bool)

(assert (=> bs!1027192 m!5479665))

(assert (=> bs!1027192 m!5479563))

(assert (=> bs!1027192 m!5479567))

(assert (=> bs!1027192 m!5479569))

(assert (=> bs!1027192 m!5479567))

(assert (=> bs!1027192 m!5479563))

(assert (=> bs!1027192 m!5479569))

(assert (=> bs!1027192 m!5479571))

(assert (=> bs!1027192 m!5479635))

(assert (=> b!4630691 d!1459292))

(declare-fun b!4630748 () Bool)

(assert (=> b!4630748 true))

(declare-fun bs!1027198 () Bool)

(declare-fun b!4630749 () Bool)

(assert (= bs!1027198 (and b!4630749 b!4630748)))

(declare-fun lambda!193581 () Int)

(declare-fun lambda!193580 () Int)

(assert (=> bs!1027198 (= lambda!193581 lambda!193580)))

(assert (=> b!4630749 true))

(declare-fun lt!1790908 () ListMap!4325)

(declare-fun lambda!193584 () Int)

(assert (=> bs!1027198 (= (= lt!1790908 (ListMap!4326 Nil!51598)) (= lambda!193584 lambda!193580))))

(assert (=> b!4630749 (= (= lt!1790908 (ListMap!4326 Nil!51598)) (= lambda!193584 lambda!193581))))

(assert (=> b!4630749 true))

(declare-fun bs!1027199 () Bool)

(declare-fun d!1459296 () Bool)

(assert (= bs!1027199 (and d!1459296 b!4630748)))

(declare-fun lt!1790913 () ListMap!4325)

(declare-fun lambda!193587 () Int)

(assert (=> bs!1027199 (= (= lt!1790913 (ListMap!4326 Nil!51598)) (= lambda!193587 lambda!193580))))

(declare-fun bs!1027200 () Bool)

(assert (= bs!1027200 (and d!1459296 b!4630749)))

(assert (=> bs!1027200 (= (= lt!1790913 (ListMap!4326 Nil!51598)) (= lambda!193587 lambda!193581))))

(assert (=> bs!1027200 (= (= lt!1790913 lt!1790908) (= lambda!193587 lambda!193584))))

(assert (=> d!1459296 true))

(declare-fun bm!323103 () Bool)

(declare-fun call!323110 () Unit!113256)

(declare-fun lemmaContainsAllItsOwnKeys!525 (ListMap!4325) Unit!113256)

(assert (=> bm!323103 (= call!323110 (lemmaContainsAllItsOwnKeys!525 (ListMap!4326 Nil!51598)))))

(declare-fun call!323109 () Bool)

(declare-fun bm!323104 () Bool)

(declare-fun c!792637 () Bool)

(declare-fun forall!10863 (List!51722 Int) Bool)

(assert (=> bm!323104 (= call!323109 (forall!10863 (ite c!792637 (toList!5021 (ListMap!4326 Nil!51598)) (Cons!51598 lt!1790812 lt!1790824)) (ite c!792637 lambda!193580 lambda!193584)))))

(declare-fun call!323108 () Bool)

(declare-fun lt!1790906 () ListMap!4325)

(declare-fun bm!323105 () Bool)

(assert (=> bm!323105 (= call!323108 (forall!10863 (ite c!792637 (toList!5021 (ListMap!4326 Nil!51598)) (toList!5021 lt!1790906)) (ite c!792637 lambda!193580 lambda!193584)))))

(declare-fun e!2888704 () Bool)

(assert (=> d!1459296 e!2888704))

(declare-fun res!1942801 () Bool)

(assert (=> d!1459296 (=> (not res!1942801) (not e!2888704))))

(assert (=> d!1459296 (= res!1942801 (forall!10863 (Cons!51598 lt!1790812 lt!1790824) lambda!193587))))

(declare-fun e!2888705 () ListMap!4325)

(assert (=> d!1459296 (= lt!1790913 e!2888705)))

(assert (=> d!1459296 (= c!792637 ((_ is Nil!51598) (Cons!51598 lt!1790812 lt!1790824)))))

(assert (=> d!1459296 (noDuplicateKeys!1528 (Cons!51598 lt!1790812 lt!1790824))))

(assert (=> d!1459296 (= (addToMapMapFromBucket!989 (Cons!51598 lt!1790812 lt!1790824) (ListMap!4326 Nil!51598)) lt!1790913)))

(declare-fun b!4630745 () Bool)

(declare-fun invariantList!1224 (List!51722) Bool)

(assert (=> b!4630745 (= e!2888704 (invariantList!1224 (toList!5021 lt!1790913)))))

(declare-fun b!4630746 () Bool)

(declare-fun res!1942803 () Bool)

(assert (=> b!4630746 (=> (not res!1942803) (not e!2888704))))

(assert (=> b!4630746 (= res!1942803 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193587))))

(declare-fun b!4630747 () Bool)

(declare-fun e!2888706 () Bool)

(assert (=> b!4630747 (= e!2888706 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193584))))

(assert (=> b!4630748 (= e!2888705 (ListMap!4326 Nil!51598))))

(declare-fun lt!1790917 () Unit!113256)

(assert (=> b!4630748 (= lt!1790917 call!323110)))

(assert (=> b!4630748 call!323109))

(declare-fun lt!1790907 () Unit!113256)

(assert (=> b!4630748 (= lt!1790907 lt!1790917)))

(assert (=> b!4630748 call!323108))

(declare-fun lt!1790922 () Unit!113256)

(declare-fun Unit!113258 () Unit!113256)

(assert (=> b!4630748 (= lt!1790922 Unit!113258)))

(assert (=> b!4630749 (= e!2888705 lt!1790908)))

(assert (=> b!4630749 (= lt!1790906 (+!1894 (ListMap!4326 Nil!51598) (h!57668 (Cons!51598 lt!1790812 lt!1790824))))))

(assert (=> b!4630749 (= lt!1790908 (addToMapMapFromBucket!989 (t!358774 (Cons!51598 lt!1790812 lt!1790824)) (+!1894 (ListMap!4326 Nil!51598) (h!57668 (Cons!51598 lt!1790812 lt!1790824)))))))

(declare-fun lt!1790904 () Unit!113256)

(assert (=> b!4630749 (= lt!1790904 call!323110)))

(assert (=> b!4630749 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193581)))

(declare-fun lt!1790914 () Unit!113256)

(assert (=> b!4630749 (= lt!1790914 lt!1790904)))

(assert (=> b!4630749 (forall!10863 (toList!5021 lt!1790906) lambda!193584)))

(declare-fun lt!1790924 () Unit!113256)

(declare-fun Unit!113259 () Unit!113256)

(assert (=> b!4630749 (= lt!1790924 Unit!113259)))

(assert (=> b!4630749 (forall!10863 (t!358774 (Cons!51598 lt!1790812 lt!1790824)) lambda!193584)))

(declare-fun lt!1790920 () Unit!113256)

(declare-fun Unit!113260 () Unit!113256)

(assert (=> b!4630749 (= lt!1790920 Unit!113260)))

(declare-fun lt!1790916 () Unit!113256)

(declare-fun Unit!113261 () Unit!113256)

(assert (=> b!4630749 (= lt!1790916 Unit!113261)))

(declare-fun lt!1790921 () Unit!113256)

(declare-fun forallContained!3093 (List!51722 Int tuple2!52558) Unit!113256)

(assert (=> b!4630749 (= lt!1790921 (forallContained!3093 (toList!5021 lt!1790906) lambda!193584 (h!57668 (Cons!51598 lt!1790812 lt!1790824))))))

(assert (=> b!4630749 (contains!14683 lt!1790906 (_1!29573 (h!57668 (Cons!51598 lt!1790812 lt!1790824))))))

(declare-fun lt!1790905 () Unit!113256)

(declare-fun Unit!113262 () Unit!113256)

(assert (=> b!4630749 (= lt!1790905 Unit!113262)))

(assert (=> b!4630749 (contains!14683 lt!1790908 (_1!29573 (h!57668 (Cons!51598 lt!1790812 lt!1790824))))))

(declare-fun lt!1790923 () Unit!113256)

(declare-fun Unit!113263 () Unit!113256)

(assert (=> b!4630749 (= lt!1790923 Unit!113263)))

(assert (=> b!4630749 (forall!10863 (Cons!51598 lt!1790812 lt!1790824) lambda!193584)))

(declare-fun lt!1790911 () Unit!113256)

(declare-fun Unit!113264 () Unit!113256)

(assert (=> b!4630749 (= lt!1790911 Unit!113264)))

(assert (=> b!4630749 call!323108))

(declare-fun lt!1790912 () Unit!113256)

(declare-fun Unit!113265 () Unit!113256)

(assert (=> b!4630749 (= lt!1790912 Unit!113265)))

(declare-fun lt!1790909 () Unit!113256)

(declare-fun Unit!113266 () Unit!113256)

(assert (=> b!4630749 (= lt!1790909 Unit!113266)))

(declare-fun lt!1790918 () Unit!113256)

(declare-fun addForallContainsKeyThenBeforeAdding!524 (ListMap!4325 ListMap!4325 K!12970 V!13216) Unit!113256)

(assert (=> b!4630749 (= lt!1790918 (addForallContainsKeyThenBeforeAdding!524 (ListMap!4326 Nil!51598) lt!1790908 (_1!29573 (h!57668 (Cons!51598 lt!1790812 lt!1790824))) (_2!29573 (h!57668 (Cons!51598 lt!1790812 lt!1790824)))))))

(assert (=> b!4630749 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193584)))

(declare-fun lt!1790919 () Unit!113256)

(assert (=> b!4630749 (= lt!1790919 lt!1790918)))

(assert (=> b!4630749 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193584)))

(declare-fun lt!1790910 () Unit!113256)

(declare-fun Unit!113267 () Unit!113256)

(assert (=> b!4630749 (= lt!1790910 Unit!113267)))

(declare-fun res!1942802 () Bool)

(assert (=> b!4630749 (= res!1942802 call!323109)))

(assert (=> b!4630749 (=> (not res!1942802) (not e!2888706))))

(assert (=> b!4630749 e!2888706))

(declare-fun lt!1790915 () Unit!113256)

(declare-fun Unit!113268 () Unit!113256)

(assert (=> b!4630749 (= lt!1790915 Unit!113268)))

(assert (= (and d!1459296 c!792637) b!4630748))

(assert (= (and d!1459296 (not c!792637)) b!4630749))

(assert (= (and b!4630749 res!1942802) b!4630747))

(assert (= (or b!4630748 b!4630749) bm!323103))

(assert (= (or b!4630748 b!4630749) bm!323104))

(assert (= (or b!4630748 b!4630749) bm!323105))

(assert (= (and d!1459296 res!1942801) b!4630746))

(assert (= (and b!4630746 res!1942803) b!4630745))

(declare-fun m!5479695 () Bool)

(assert (=> b!4630747 m!5479695))

(declare-fun m!5479697 () Bool)

(assert (=> bm!323104 m!5479697))

(declare-fun m!5479699 () Bool)

(assert (=> b!4630745 m!5479699))

(declare-fun m!5479701 () Bool)

(assert (=> d!1459296 m!5479701))

(declare-fun m!5479703 () Bool)

(assert (=> d!1459296 m!5479703))

(declare-fun m!5479705 () Bool)

(assert (=> b!4630746 m!5479705))

(declare-fun m!5479707 () Bool)

(assert (=> bm!323103 m!5479707))

(declare-fun m!5479709 () Bool)

(assert (=> bm!323105 m!5479709))

(assert (=> b!4630749 m!5479695))

(declare-fun m!5479711 () Bool)

(assert (=> b!4630749 m!5479711))

(assert (=> b!4630749 m!5479695))

(declare-fun m!5479713 () Bool)

(assert (=> b!4630749 m!5479713))

(declare-fun m!5479715 () Bool)

(assert (=> b!4630749 m!5479715))

(declare-fun m!5479717 () Bool)

(assert (=> b!4630749 m!5479717))

(declare-fun m!5479719 () Bool)

(assert (=> b!4630749 m!5479719))

(declare-fun m!5479721 () Bool)

(assert (=> b!4630749 m!5479721))

(assert (=> b!4630749 m!5479715))

(declare-fun m!5479723 () Bool)

(assert (=> b!4630749 m!5479723))

(declare-fun m!5479725 () Bool)

(assert (=> b!4630749 m!5479725))

(declare-fun m!5479727 () Bool)

(assert (=> b!4630749 m!5479727))

(declare-fun m!5479729 () Bool)

(assert (=> b!4630749 m!5479729))

(assert (=> b!4630691 d!1459296))

(declare-fun d!1459310 () Bool)

(assert (=> d!1459310 (= (head!9662 newBucket!224) (h!57668 newBucket!224))))

(assert (=> b!4630691 d!1459310))

(declare-fun d!1459312 () Bool)

(declare-fun e!2888728 () Bool)

(assert (=> d!1459312 e!2888728))

(declare-fun res!1942820 () Bool)

(assert (=> d!1459312 (=> res!1942820 e!2888728)))

(declare-fun e!2888727 () Bool)

(assert (=> d!1459312 (= res!1942820 e!2888727)))

(declare-fun res!1942821 () Bool)

(assert (=> d!1459312 (=> (not res!1942821) (not e!2888727))))

(declare-fun lt!1791001 () Bool)

(assert (=> d!1459312 (= res!1942821 (not lt!1791001))))

(declare-fun lt!1790996 () Bool)

(assert (=> d!1459312 (= lt!1791001 lt!1790996)))

(declare-fun lt!1791002 () Unit!113256)

(declare-fun e!2888730 () Unit!113256)

(assert (=> d!1459312 (= lt!1791002 e!2888730)))

(declare-fun c!792647 () Bool)

(assert (=> d!1459312 (= c!792647 lt!1790996)))

(declare-fun containsKey!2509 (List!51722 K!12970) Bool)

(assert (=> d!1459312 (= lt!1790996 (containsKey!2509 (toList!5021 lt!1790810) key!4968))))

(assert (=> d!1459312 (= (contains!14683 lt!1790810 key!4968) lt!1791001)))

(declare-fun b!4630783 () Bool)

(declare-datatypes ((List!51724 0))(
  ( (Nil!51600) (Cons!51600 (h!57672 K!12970) (t!358778 List!51724)) )
))
(declare-fun contains!14687 (List!51724 K!12970) Bool)

(declare-fun keys!18195 (ListMap!4325) List!51724)

(assert (=> b!4630783 (= e!2888727 (not (contains!14687 (keys!18195 lt!1790810) key!4968)))))

(declare-fun b!4630784 () Bool)

(declare-fun e!2888731 () List!51724)

(assert (=> b!4630784 (= e!2888731 (keys!18195 lt!1790810))))

(declare-fun b!4630785 () Bool)

(declare-fun e!2888729 () Bool)

(assert (=> b!4630785 (= e!2888728 e!2888729)))

(declare-fun res!1942819 () Bool)

(assert (=> b!4630785 (=> (not res!1942819) (not e!2888729))))

(declare-datatypes ((Option!11652 0))(
  ( (None!11651) (Some!11651 (v!45821 V!13216)) )
))
(declare-fun isDefined!8916 (Option!11652) Bool)

(declare-fun getValueByKey!1490 (List!51722 K!12970) Option!11652)

(assert (=> b!4630785 (= res!1942819 (isDefined!8916 (getValueByKey!1490 (toList!5021 lt!1790810) key!4968)))))

(declare-fun bm!323117 () Bool)

(declare-fun call!323122 () Bool)

(assert (=> bm!323117 (= call!323122 (contains!14687 e!2888731 key!4968))))

(declare-fun c!792646 () Bool)

(assert (=> bm!323117 (= c!792646 c!792647)))

(declare-fun b!4630786 () Bool)

(assert (=> b!4630786 false))

(declare-fun lt!1790997 () Unit!113256)

(declare-fun lt!1791003 () Unit!113256)

(assert (=> b!4630786 (= lt!1790997 lt!1791003)))

(assert (=> b!4630786 (containsKey!2509 (toList!5021 lt!1790810) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!673 (List!51722 K!12970) Unit!113256)

(assert (=> b!4630786 (= lt!1791003 (lemmaInGetKeysListThenContainsKey!673 (toList!5021 lt!1790810) key!4968))))

(declare-fun e!2888726 () Unit!113256)

(declare-fun Unit!113273 () Unit!113256)

(assert (=> b!4630786 (= e!2888726 Unit!113273)))

(declare-fun b!4630787 () Bool)

(declare-fun lt!1790998 () Unit!113256)

(assert (=> b!4630787 (= e!2888730 lt!1790998)))

(declare-fun lt!1791000 () Unit!113256)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1391 (List!51722 K!12970) Unit!113256)

(assert (=> b!4630787 (= lt!1791000 (lemmaContainsKeyImpliesGetValueByKeyDefined!1391 (toList!5021 lt!1790810) key!4968))))

(assert (=> b!4630787 (isDefined!8916 (getValueByKey!1490 (toList!5021 lt!1790810) key!4968))))

(declare-fun lt!1790999 () Unit!113256)

(assert (=> b!4630787 (= lt!1790999 lt!1791000)))

(declare-fun lemmaInListThenGetKeysListContains!669 (List!51722 K!12970) Unit!113256)

(assert (=> b!4630787 (= lt!1790998 (lemmaInListThenGetKeysListContains!669 (toList!5021 lt!1790810) key!4968))))

(assert (=> b!4630787 call!323122))

(declare-fun b!4630788 () Bool)

(assert (=> b!4630788 (= e!2888729 (contains!14687 (keys!18195 lt!1790810) key!4968))))

(declare-fun b!4630789 () Bool)

(declare-fun getKeysList!674 (List!51722) List!51724)

(assert (=> b!4630789 (= e!2888731 (getKeysList!674 (toList!5021 lt!1790810)))))

(declare-fun b!4630790 () Bool)

(assert (=> b!4630790 (= e!2888730 e!2888726)))

(declare-fun c!792645 () Bool)

(assert (=> b!4630790 (= c!792645 call!323122)))

(declare-fun b!4630791 () Bool)

(declare-fun Unit!113279 () Unit!113256)

(assert (=> b!4630791 (= e!2888726 Unit!113279)))

(assert (= (and d!1459312 c!792647) b!4630787))

(assert (= (and d!1459312 (not c!792647)) b!4630790))

(assert (= (and b!4630790 c!792645) b!4630786))

(assert (= (and b!4630790 (not c!792645)) b!4630791))

(assert (= (or b!4630787 b!4630790) bm!323117))

(assert (= (and bm!323117 c!792646) b!4630789))

(assert (= (and bm!323117 (not c!792646)) b!4630784))

(assert (= (and d!1459312 res!1942821) b!4630783))

(assert (= (and d!1459312 (not res!1942820)) b!4630785))

(assert (= (and b!4630785 res!1942819) b!4630788))

(declare-fun m!5479769 () Bool)

(assert (=> b!4630783 m!5479769))

(assert (=> b!4630783 m!5479769))

(declare-fun m!5479771 () Bool)

(assert (=> b!4630783 m!5479771))

(declare-fun m!5479773 () Bool)

(assert (=> b!4630785 m!5479773))

(assert (=> b!4630785 m!5479773))

(declare-fun m!5479775 () Bool)

(assert (=> b!4630785 m!5479775))

(assert (=> b!4630784 m!5479769))

(declare-fun m!5479777 () Bool)

(assert (=> b!4630787 m!5479777))

(assert (=> b!4630787 m!5479773))

(assert (=> b!4630787 m!5479773))

(assert (=> b!4630787 m!5479775))

(declare-fun m!5479779 () Bool)

(assert (=> b!4630787 m!5479779))

(declare-fun m!5479781 () Bool)

(assert (=> b!4630786 m!5479781))

(declare-fun m!5479783 () Bool)

(assert (=> b!4630786 m!5479783))

(declare-fun m!5479785 () Bool)

(assert (=> bm!323117 m!5479785))

(assert (=> d!1459312 m!5479781))

(declare-fun m!5479787 () Bool)

(assert (=> b!4630789 m!5479787))

(assert (=> b!4630788 m!5479769))

(assert (=> b!4630788 m!5479769))

(assert (=> b!4630788 m!5479771))

(assert (=> b!4630691 d!1459312))

(declare-fun bs!1027205 () Bool)

(declare-fun b!4630795 () Bool)

(assert (= bs!1027205 (and b!4630795 b!4630748)))

(declare-fun lambda!193612 () Int)

(assert (=> bs!1027205 (= lambda!193612 lambda!193580)))

(declare-fun bs!1027206 () Bool)

(assert (= bs!1027206 (and b!4630795 b!4630749)))

(assert (=> bs!1027206 (= lambda!193612 lambda!193581)))

(assert (=> bs!1027206 (= (= (ListMap!4326 Nil!51598) lt!1790908) (= lambda!193612 lambda!193584))))

(declare-fun bs!1027207 () Bool)

(assert (= bs!1027207 (and b!4630795 d!1459296)))

(assert (=> bs!1027207 (= (= (ListMap!4326 Nil!51598) lt!1790913) (= lambda!193612 lambda!193587))))

(assert (=> b!4630795 true))

(declare-fun bs!1027208 () Bool)

(declare-fun b!4630796 () Bool)

(assert (= bs!1027208 (and b!4630796 d!1459296)))

(declare-fun lambda!193613 () Int)

(assert (=> bs!1027208 (= (= (ListMap!4326 Nil!51598) lt!1790913) (= lambda!193613 lambda!193587))))

(declare-fun bs!1027209 () Bool)

(assert (= bs!1027209 (and b!4630796 b!4630795)))

(assert (=> bs!1027209 (= lambda!193613 lambda!193612)))

(declare-fun bs!1027210 () Bool)

(assert (= bs!1027210 (and b!4630796 b!4630748)))

(assert (=> bs!1027210 (= lambda!193613 lambda!193580)))

(declare-fun bs!1027211 () Bool)

(assert (= bs!1027211 (and b!4630796 b!4630749)))

(assert (=> bs!1027211 (= lambda!193613 lambda!193581)))

(assert (=> bs!1027211 (= (= (ListMap!4326 Nil!51598) lt!1790908) (= lambda!193613 lambda!193584))))

(assert (=> b!4630796 true))

(declare-fun lt!1791008 () ListMap!4325)

(declare-fun lambda!193614 () Int)

(assert (=> b!4630796 (= (= lt!1791008 (ListMap!4326 Nil!51598)) (= lambda!193614 lambda!193613))))

(assert (=> bs!1027208 (= (= lt!1791008 lt!1790913) (= lambda!193614 lambda!193587))))

(assert (=> bs!1027209 (= (= lt!1791008 (ListMap!4326 Nil!51598)) (= lambda!193614 lambda!193612))))

(assert (=> bs!1027210 (= (= lt!1791008 (ListMap!4326 Nil!51598)) (= lambda!193614 lambda!193580))))

(assert (=> bs!1027211 (= (= lt!1791008 (ListMap!4326 Nil!51598)) (= lambda!193614 lambda!193581))))

(assert (=> bs!1027211 (= (= lt!1791008 lt!1790908) (= lambda!193614 lambda!193584))))

(assert (=> b!4630796 true))

(declare-fun bs!1027212 () Bool)

(declare-fun d!1459318 () Bool)

(assert (= bs!1027212 (and d!1459318 b!4630796)))

(declare-fun lt!1791013 () ListMap!4325)

(declare-fun lambda!193615 () Int)

(assert (=> bs!1027212 (= (= lt!1791013 (ListMap!4326 Nil!51598)) (= lambda!193615 lambda!193613))))

(declare-fun bs!1027213 () Bool)

(assert (= bs!1027213 (and d!1459318 d!1459296)))

(assert (=> bs!1027213 (= (= lt!1791013 lt!1790913) (= lambda!193615 lambda!193587))))

(assert (=> bs!1027212 (= (= lt!1791013 lt!1791008) (= lambda!193615 lambda!193614))))

(declare-fun bs!1027214 () Bool)

(assert (= bs!1027214 (and d!1459318 b!4630795)))

(assert (=> bs!1027214 (= (= lt!1791013 (ListMap!4326 Nil!51598)) (= lambda!193615 lambda!193612))))

(declare-fun bs!1027215 () Bool)

(assert (= bs!1027215 (and d!1459318 b!4630748)))

(assert (=> bs!1027215 (= (= lt!1791013 (ListMap!4326 Nil!51598)) (= lambda!193615 lambda!193580))))

(declare-fun bs!1027216 () Bool)

(assert (= bs!1027216 (and d!1459318 b!4630749)))

(assert (=> bs!1027216 (= (= lt!1791013 (ListMap!4326 Nil!51598)) (= lambda!193615 lambda!193581))))

(assert (=> bs!1027216 (= (= lt!1791013 lt!1790908) (= lambda!193615 lambda!193584))))

(assert (=> d!1459318 true))

(declare-fun bm!323118 () Bool)

(declare-fun call!323125 () Unit!113256)

(assert (=> bm!323118 (= call!323125 (lemmaContainsAllItsOwnKeys!525 (ListMap!4326 Nil!51598)))))

(declare-fun c!792648 () Bool)

(declare-fun call!323124 () Bool)

(declare-fun bm!323119 () Bool)

(assert (=> bm!323119 (= call!323124 (forall!10863 (ite c!792648 (toList!5021 (ListMap!4326 Nil!51598)) (Cons!51598 lt!1790798 lt!1790807)) (ite c!792648 lambda!193612 lambda!193614)))))

(declare-fun call!323123 () Bool)

(declare-fun bm!323120 () Bool)

(declare-fun lt!1791006 () ListMap!4325)

(assert (=> bm!323120 (= call!323123 (forall!10863 (ite c!792648 (toList!5021 (ListMap!4326 Nil!51598)) (toList!5021 lt!1791006)) (ite c!792648 lambda!193612 lambda!193614)))))

(declare-fun e!2888732 () Bool)

(assert (=> d!1459318 e!2888732))

(declare-fun res!1942822 () Bool)

(assert (=> d!1459318 (=> (not res!1942822) (not e!2888732))))

(assert (=> d!1459318 (= res!1942822 (forall!10863 (Cons!51598 lt!1790798 lt!1790807) lambda!193615))))

(declare-fun e!2888733 () ListMap!4325)

(assert (=> d!1459318 (= lt!1791013 e!2888733)))

(assert (=> d!1459318 (= c!792648 ((_ is Nil!51598) (Cons!51598 lt!1790798 lt!1790807)))))

(assert (=> d!1459318 (noDuplicateKeys!1528 (Cons!51598 lt!1790798 lt!1790807))))

(assert (=> d!1459318 (= (addToMapMapFromBucket!989 (Cons!51598 lt!1790798 lt!1790807) (ListMap!4326 Nil!51598)) lt!1791013)))

(declare-fun b!4630792 () Bool)

(assert (=> b!4630792 (= e!2888732 (invariantList!1224 (toList!5021 lt!1791013)))))

(declare-fun b!4630793 () Bool)

(declare-fun res!1942824 () Bool)

(assert (=> b!4630793 (=> (not res!1942824) (not e!2888732))))

(assert (=> b!4630793 (= res!1942824 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193615))))

(declare-fun b!4630794 () Bool)

(declare-fun e!2888734 () Bool)

(assert (=> b!4630794 (= e!2888734 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193614))))

(assert (=> b!4630795 (= e!2888733 (ListMap!4326 Nil!51598))))

(declare-fun lt!1791017 () Unit!113256)

(assert (=> b!4630795 (= lt!1791017 call!323125)))

(assert (=> b!4630795 call!323124))

(declare-fun lt!1791007 () Unit!113256)

(assert (=> b!4630795 (= lt!1791007 lt!1791017)))

(assert (=> b!4630795 call!323123))

(declare-fun lt!1791022 () Unit!113256)

(declare-fun Unit!113283 () Unit!113256)

(assert (=> b!4630795 (= lt!1791022 Unit!113283)))

(assert (=> b!4630796 (= e!2888733 lt!1791008)))

(assert (=> b!4630796 (= lt!1791006 (+!1894 (ListMap!4326 Nil!51598) (h!57668 (Cons!51598 lt!1790798 lt!1790807))))))

(assert (=> b!4630796 (= lt!1791008 (addToMapMapFromBucket!989 (t!358774 (Cons!51598 lt!1790798 lt!1790807)) (+!1894 (ListMap!4326 Nil!51598) (h!57668 (Cons!51598 lt!1790798 lt!1790807)))))))

(declare-fun lt!1791004 () Unit!113256)

(assert (=> b!4630796 (= lt!1791004 call!323125)))

(assert (=> b!4630796 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193613)))

(declare-fun lt!1791014 () Unit!113256)

(assert (=> b!4630796 (= lt!1791014 lt!1791004)))

(assert (=> b!4630796 (forall!10863 (toList!5021 lt!1791006) lambda!193614)))

(declare-fun lt!1791024 () Unit!113256)

(declare-fun Unit!113285 () Unit!113256)

(assert (=> b!4630796 (= lt!1791024 Unit!113285)))

(assert (=> b!4630796 (forall!10863 (t!358774 (Cons!51598 lt!1790798 lt!1790807)) lambda!193614)))

(declare-fun lt!1791020 () Unit!113256)

(declare-fun Unit!113286 () Unit!113256)

(assert (=> b!4630796 (= lt!1791020 Unit!113286)))

(declare-fun lt!1791016 () Unit!113256)

(declare-fun Unit!113287 () Unit!113256)

(assert (=> b!4630796 (= lt!1791016 Unit!113287)))

(declare-fun lt!1791021 () Unit!113256)

(assert (=> b!4630796 (= lt!1791021 (forallContained!3093 (toList!5021 lt!1791006) lambda!193614 (h!57668 (Cons!51598 lt!1790798 lt!1790807))))))

(assert (=> b!4630796 (contains!14683 lt!1791006 (_1!29573 (h!57668 (Cons!51598 lt!1790798 lt!1790807))))))

(declare-fun lt!1791005 () Unit!113256)

(declare-fun Unit!113288 () Unit!113256)

(assert (=> b!4630796 (= lt!1791005 Unit!113288)))

(assert (=> b!4630796 (contains!14683 lt!1791008 (_1!29573 (h!57668 (Cons!51598 lt!1790798 lt!1790807))))))

(declare-fun lt!1791023 () Unit!113256)

(declare-fun Unit!113289 () Unit!113256)

(assert (=> b!4630796 (= lt!1791023 Unit!113289)))

(assert (=> b!4630796 (forall!10863 (Cons!51598 lt!1790798 lt!1790807) lambda!193614)))

(declare-fun lt!1791011 () Unit!113256)

(declare-fun Unit!113290 () Unit!113256)

(assert (=> b!4630796 (= lt!1791011 Unit!113290)))

(assert (=> b!4630796 call!323123))

(declare-fun lt!1791012 () Unit!113256)

(declare-fun Unit!113291 () Unit!113256)

(assert (=> b!4630796 (= lt!1791012 Unit!113291)))

(declare-fun lt!1791009 () Unit!113256)

(declare-fun Unit!113292 () Unit!113256)

(assert (=> b!4630796 (= lt!1791009 Unit!113292)))

(declare-fun lt!1791018 () Unit!113256)

(assert (=> b!4630796 (= lt!1791018 (addForallContainsKeyThenBeforeAdding!524 (ListMap!4326 Nil!51598) lt!1791008 (_1!29573 (h!57668 (Cons!51598 lt!1790798 lt!1790807))) (_2!29573 (h!57668 (Cons!51598 lt!1790798 lt!1790807)))))))

(assert (=> b!4630796 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193614)))

(declare-fun lt!1791019 () Unit!113256)

(assert (=> b!4630796 (= lt!1791019 lt!1791018)))

(assert (=> b!4630796 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193614)))

(declare-fun lt!1791010 () Unit!113256)

(declare-fun Unit!113293 () Unit!113256)

(assert (=> b!4630796 (= lt!1791010 Unit!113293)))

(declare-fun res!1942823 () Bool)

(assert (=> b!4630796 (= res!1942823 call!323124)))

(assert (=> b!4630796 (=> (not res!1942823) (not e!2888734))))

(assert (=> b!4630796 e!2888734))

(declare-fun lt!1791015 () Unit!113256)

(declare-fun Unit!113294 () Unit!113256)

(assert (=> b!4630796 (= lt!1791015 Unit!113294)))

(assert (= (and d!1459318 c!792648) b!4630795))

(assert (= (and d!1459318 (not c!792648)) b!4630796))

(assert (= (and b!4630796 res!1942823) b!4630794))

(assert (= (or b!4630795 b!4630796) bm!323118))

(assert (= (or b!4630795 b!4630796) bm!323119))

(assert (= (or b!4630795 b!4630796) bm!323120))

(assert (= (and d!1459318 res!1942822) b!4630793))

(assert (= (and b!4630793 res!1942824) b!4630792))

(declare-fun m!5479789 () Bool)

(assert (=> b!4630794 m!5479789))

(declare-fun m!5479791 () Bool)

(assert (=> bm!323119 m!5479791))

(declare-fun m!5479793 () Bool)

(assert (=> b!4630792 m!5479793))

(declare-fun m!5479795 () Bool)

(assert (=> d!1459318 m!5479795))

(declare-fun m!5479797 () Bool)

(assert (=> d!1459318 m!5479797))

(declare-fun m!5479799 () Bool)

(assert (=> b!4630793 m!5479799))

(assert (=> bm!323118 m!5479707))

(declare-fun m!5479801 () Bool)

(assert (=> bm!323120 m!5479801))

(assert (=> b!4630796 m!5479789))

(declare-fun m!5479803 () Bool)

(assert (=> b!4630796 m!5479803))

(assert (=> b!4630796 m!5479789))

(declare-fun m!5479805 () Bool)

(assert (=> b!4630796 m!5479805))

(declare-fun m!5479807 () Bool)

(assert (=> b!4630796 m!5479807))

(declare-fun m!5479809 () Bool)

(assert (=> b!4630796 m!5479809))

(declare-fun m!5479811 () Bool)

(assert (=> b!4630796 m!5479811))

(declare-fun m!5479813 () Bool)

(assert (=> b!4630796 m!5479813))

(assert (=> b!4630796 m!5479807))

(declare-fun m!5479815 () Bool)

(assert (=> b!4630796 m!5479815))

(declare-fun m!5479817 () Bool)

(assert (=> b!4630796 m!5479817))

(declare-fun m!5479819 () Bool)

(assert (=> b!4630796 m!5479819))

(declare-fun m!5479821 () Bool)

(assert (=> b!4630796 m!5479821))

(assert (=> b!4630691 d!1459318))

(declare-fun bs!1027217 () Bool)

(declare-fun b!4630800 () Bool)

(assert (= bs!1027217 (and b!4630800 b!4630796)))

(declare-fun lambda!193616 () Int)

(assert (=> bs!1027217 (= lambda!193616 lambda!193613)))

(declare-fun bs!1027218 () Bool)

(assert (= bs!1027218 (and b!4630800 d!1459296)))

(assert (=> bs!1027218 (= (= (ListMap!4326 Nil!51598) lt!1790913) (= lambda!193616 lambda!193587))))

(declare-fun bs!1027219 () Bool)

(assert (= bs!1027219 (and b!4630800 d!1459318)))

(assert (=> bs!1027219 (= (= (ListMap!4326 Nil!51598) lt!1791013) (= lambda!193616 lambda!193615))))

(assert (=> bs!1027217 (= (= (ListMap!4326 Nil!51598) lt!1791008) (= lambda!193616 lambda!193614))))

(declare-fun bs!1027220 () Bool)

(assert (= bs!1027220 (and b!4630800 b!4630795)))

(assert (=> bs!1027220 (= lambda!193616 lambda!193612)))

(declare-fun bs!1027221 () Bool)

(assert (= bs!1027221 (and b!4630800 b!4630748)))

(assert (=> bs!1027221 (= lambda!193616 lambda!193580)))

(declare-fun bs!1027222 () Bool)

(assert (= bs!1027222 (and b!4630800 b!4630749)))

(assert (=> bs!1027222 (= lambda!193616 lambda!193581)))

(assert (=> bs!1027222 (= (= (ListMap!4326 Nil!51598) lt!1790908) (= lambda!193616 lambda!193584))))

(assert (=> b!4630800 true))

(declare-fun bs!1027223 () Bool)

(declare-fun b!4630801 () Bool)

(assert (= bs!1027223 (and b!4630801 b!4630796)))

(declare-fun lambda!193617 () Int)

(assert (=> bs!1027223 (= lambda!193617 lambda!193613)))

(declare-fun bs!1027224 () Bool)

(assert (= bs!1027224 (and b!4630801 d!1459296)))

(assert (=> bs!1027224 (= (= (ListMap!4326 Nil!51598) lt!1790913) (= lambda!193617 lambda!193587))))

(declare-fun bs!1027225 () Bool)

(assert (= bs!1027225 (and b!4630801 d!1459318)))

(assert (=> bs!1027225 (= (= (ListMap!4326 Nil!51598) lt!1791013) (= lambda!193617 lambda!193615))))

(assert (=> bs!1027223 (= (= (ListMap!4326 Nil!51598) lt!1791008) (= lambda!193617 lambda!193614))))

(declare-fun bs!1027226 () Bool)

(assert (= bs!1027226 (and b!4630801 b!4630800)))

(assert (=> bs!1027226 (= lambda!193617 lambda!193616)))

(declare-fun bs!1027227 () Bool)

(assert (= bs!1027227 (and b!4630801 b!4630795)))

(assert (=> bs!1027227 (= lambda!193617 lambda!193612)))

(declare-fun bs!1027228 () Bool)

(assert (= bs!1027228 (and b!4630801 b!4630748)))

(assert (=> bs!1027228 (= lambda!193617 lambda!193580)))

(declare-fun bs!1027229 () Bool)

(assert (= bs!1027229 (and b!4630801 b!4630749)))

(assert (=> bs!1027229 (= lambda!193617 lambda!193581)))

(assert (=> bs!1027229 (= (= (ListMap!4326 Nil!51598) lt!1790908) (= lambda!193617 lambda!193584))))

(assert (=> b!4630801 true))

(declare-fun lt!1791029 () ListMap!4325)

(declare-fun lambda!193618 () Int)

(assert (=> bs!1027223 (= (= lt!1791029 (ListMap!4326 Nil!51598)) (= lambda!193618 lambda!193613))))

(assert (=> bs!1027224 (= (= lt!1791029 lt!1790913) (= lambda!193618 lambda!193587))))

(assert (=> bs!1027225 (= (= lt!1791029 lt!1791013) (= lambda!193618 lambda!193615))))

(assert (=> bs!1027223 (= (= lt!1791029 lt!1791008) (= lambda!193618 lambda!193614))))

(assert (=> b!4630801 (= (= lt!1791029 (ListMap!4326 Nil!51598)) (= lambda!193618 lambda!193617))))

(assert (=> bs!1027226 (= (= lt!1791029 (ListMap!4326 Nil!51598)) (= lambda!193618 lambda!193616))))

(assert (=> bs!1027227 (= (= lt!1791029 (ListMap!4326 Nil!51598)) (= lambda!193618 lambda!193612))))

(assert (=> bs!1027228 (= (= lt!1791029 (ListMap!4326 Nil!51598)) (= lambda!193618 lambda!193580))))

(assert (=> bs!1027229 (= (= lt!1791029 (ListMap!4326 Nil!51598)) (= lambda!193618 lambda!193581))))

(assert (=> bs!1027229 (= (= lt!1791029 lt!1790908) (= lambda!193618 lambda!193584))))

(assert (=> b!4630801 true))

(declare-fun bs!1027230 () Bool)

(declare-fun d!1459320 () Bool)

(assert (= bs!1027230 (and d!1459320 b!4630796)))

(declare-fun lt!1791034 () ListMap!4325)

(declare-fun lambda!193619 () Int)

(assert (=> bs!1027230 (= (= lt!1791034 (ListMap!4326 Nil!51598)) (= lambda!193619 lambda!193613))))

(declare-fun bs!1027231 () Bool)

(assert (= bs!1027231 (and d!1459320 d!1459296)))

(assert (=> bs!1027231 (= (= lt!1791034 lt!1790913) (= lambda!193619 lambda!193587))))

(declare-fun bs!1027232 () Bool)

(assert (= bs!1027232 (and d!1459320 d!1459318)))

(assert (=> bs!1027232 (= (= lt!1791034 lt!1791013) (= lambda!193619 lambda!193615))))

(assert (=> bs!1027230 (= (= lt!1791034 lt!1791008) (= lambda!193619 lambda!193614))))

(declare-fun bs!1027233 () Bool)

(assert (= bs!1027233 (and d!1459320 b!4630801)))

(assert (=> bs!1027233 (= (= lt!1791034 (ListMap!4326 Nil!51598)) (= lambda!193619 lambda!193617))))

(declare-fun bs!1027234 () Bool)

(assert (= bs!1027234 (and d!1459320 b!4630800)))

(assert (=> bs!1027234 (= (= lt!1791034 (ListMap!4326 Nil!51598)) (= lambda!193619 lambda!193616))))

(declare-fun bs!1027235 () Bool)

(assert (= bs!1027235 (and d!1459320 b!4630795)))

(assert (=> bs!1027235 (= (= lt!1791034 (ListMap!4326 Nil!51598)) (= lambda!193619 lambda!193612))))

(declare-fun bs!1027236 () Bool)

(assert (= bs!1027236 (and d!1459320 b!4630748)))

(assert (=> bs!1027236 (= (= lt!1791034 (ListMap!4326 Nil!51598)) (= lambda!193619 lambda!193580))))

(declare-fun bs!1027237 () Bool)

(assert (= bs!1027237 (and d!1459320 b!4630749)))

(assert (=> bs!1027237 (= (= lt!1791034 (ListMap!4326 Nil!51598)) (= lambda!193619 lambda!193581))))

(assert (=> bs!1027237 (= (= lt!1791034 lt!1790908) (= lambda!193619 lambda!193584))))

(assert (=> bs!1027233 (= (= lt!1791034 lt!1791029) (= lambda!193619 lambda!193618))))

(assert (=> d!1459320 true))

(declare-fun bm!323121 () Bool)

(declare-fun call!323128 () Unit!113256)

(assert (=> bm!323121 (= call!323128 (lemmaContainsAllItsOwnKeys!525 (ListMap!4326 Nil!51598)))))

(declare-fun call!323127 () Bool)

(declare-fun bm!323122 () Bool)

(declare-fun c!792649 () Bool)

(assert (=> bm!323122 (= call!323127 (forall!10863 (ite c!792649 (toList!5021 (ListMap!4326 Nil!51598)) lt!1790807) (ite c!792649 lambda!193616 lambda!193618)))))

(declare-fun call!323126 () Bool)

(declare-fun lt!1791027 () ListMap!4325)

(declare-fun bm!323123 () Bool)

(assert (=> bm!323123 (= call!323126 (forall!10863 (ite c!792649 (toList!5021 (ListMap!4326 Nil!51598)) (toList!5021 lt!1791027)) (ite c!792649 lambda!193616 lambda!193618)))))

(declare-fun e!2888735 () Bool)

(assert (=> d!1459320 e!2888735))

(declare-fun res!1942825 () Bool)

(assert (=> d!1459320 (=> (not res!1942825) (not e!2888735))))

(assert (=> d!1459320 (= res!1942825 (forall!10863 lt!1790807 lambda!193619))))

(declare-fun e!2888736 () ListMap!4325)

(assert (=> d!1459320 (= lt!1791034 e!2888736)))

(assert (=> d!1459320 (= c!792649 ((_ is Nil!51598) lt!1790807))))

(assert (=> d!1459320 (noDuplicateKeys!1528 lt!1790807)))

(assert (=> d!1459320 (= (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598)) lt!1791034)))

(declare-fun b!4630797 () Bool)

(assert (=> b!4630797 (= e!2888735 (invariantList!1224 (toList!5021 lt!1791034)))))

(declare-fun b!4630798 () Bool)

(declare-fun res!1942827 () Bool)

(assert (=> b!4630798 (=> (not res!1942827) (not e!2888735))))

(assert (=> b!4630798 (= res!1942827 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193619))))

(declare-fun b!4630799 () Bool)

(declare-fun e!2888737 () Bool)

(assert (=> b!4630799 (= e!2888737 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193618))))

(assert (=> b!4630800 (= e!2888736 (ListMap!4326 Nil!51598))))

(declare-fun lt!1791038 () Unit!113256)

(assert (=> b!4630800 (= lt!1791038 call!323128)))

(assert (=> b!4630800 call!323127))

(declare-fun lt!1791028 () Unit!113256)

(assert (=> b!4630800 (= lt!1791028 lt!1791038)))

(assert (=> b!4630800 call!323126))

(declare-fun lt!1791043 () Unit!113256)

(declare-fun Unit!113299 () Unit!113256)

(assert (=> b!4630800 (= lt!1791043 Unit!113299)))

(assert (=> b!4630801 (= e!2888736 lt!1791029)))

(assert (=> b!4630801 (= lt!1791027 (+!1894 (ListMap!4326 Nil!51598) (h!57668 lt!1790807)))))

(assert (=> b!4630801 (= lt!1791029 (addToMapMapFromBucket!989 (t!358774 lt!1790807) (+!1894 (ListMap!4326 Nil!51598) (h!57668 lt!1790807))))))

(declare-fun lt!1791025 () Unit!113256)

(assert (=> b!4630801 (= lt!1791025 call!323128)))

(assert (=> b!4630801 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193617)))

(declare-fun lt!1791035 () Unit!113256)

(assert (=> b!4630801 (= lt!1791035 lt!1791025)))

(assert (=> b!4630801 (forall!10863 (toList!5021 lt!1791027) lambda!193618)))

(declare-fun lt!1791045 () Unit!113256)

(declare-fun Unit!113303 () Unit!113256)

(assert (=> b!4630801 (= lt!1791045 Unit!113303)))

(assert (=> b!4630801 (forall!10863 (t!358774 lt!1790807) lambda!193618)))

(declare-fun lt!1791041 () Unit!113256)

(declare-fun Unit!113306 () Unit!113256)

(assert (=> b!4630801 (= lt!1791041 Unit!113306)))

(declare-fun lt!1791037 () Unit!113256)

(declare-fun Unit!113307 () Unit!113256)

(assert (=> b!4630801 (= lt!1791037 Unit!113307)))

(declare-fun lt!1791042 () Unit!113256)

(assert (=> b!4630801 (= lt!1791042 (forallContained!3093 (toList!5021 lt!1791027) lambda!193618 (h!57668 lt!1790807)))))

(assert (=> b!4630801 (contains!14683 lt!1791027 (_1!29573 (h!57668 lt!1790807)))))

(declare-fun lt!1791026 () Unit!113256)

(declare-fun Unit!113308 () Unit!113256)

(assert (=> b!4630801 (= lt!1791026 Unit!113308)))

(assert (=> b!4630801 (contains!14683 lt!1791029 (_1!29573 (h!57668 lt!1790807)))))

(declare-fun lt!1791044 () Unit!113256)

(declare-fun Unit!113310 () Unit!113256)

(assert (=> b!4630801 (= lt!1791044 Unit!113310)))

(assert (=> b!4630801 (forall!10863 lt!1790807 lambda!193618)))

(declare-fun lt!1791032 () Unit!113256)

(declare-fun Unit!113311 () Unit!113256)

(assert (=> b!4630801 (= lt!1791032 Unit!113311)))

(assert (=> b!4630801 call!323126))

(declare-fun lt!1791033 () Unit!113256)

(declare-fun Unit!113313 () Unit!113256)

(assert (=> b!4630801 (= lt!1791033 Unit!113313)))

(declare-fun lt!1791030 () Unit!113256)

(declare-fun Unit!113314 () Unit!113256)

(assert (=> b!4630801 (= lt!1791030 Unit!113314)))

(declare-fun lt!1791039 () Unit!113256)

(assert (=> b!4630801 (= lt!1791039 (addForallContainsKeyThenBeforeAdding!524 (ListMap!4326 Nil!51598) lt!1791029 (_1!29573 (h!57668 lt!1790807)) (_2!29573 (h!57668 lt!1790807))))))

(assert (=> b!4630801 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193618)))

(declare-fun lt!1791040 () Unit!113256)

(assert (=> b!4630801 (= lt!1791040 lt!1791039)))

(assert (=> b!4630801 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193618)))

(declare-fun lt!1791031 () Unit!113256)

(declare-fun Unit!113315 () Unit!113256)

(assert (=> b!4630801 (= lt!1791031 Unit!113315)))

(declare-fun res!1942826 () Bool)

(assert (=> b!4630801 (= res!1942826 call!323127)))

(assert (=> b!4630801 (=> (not res!1942826) (not e!2888737))))

(assert (=> b!4630801 e!2888737))

(declare-fun lt!1791036 () Unit!113256)

(declare-fun Unit!113316 () Unit!113256)

(assert (=> b!4630801 (= lt!1791036 Unit!113316)))

(assert (= (and d!1459320 c!792649) b!4630800))

(assert (= (and d!1459320 (not c!792649)) b!4630801))

(assert (= (and b!4630801 res!1942826) b!4630799))

(assert (= (or b!4630800 b!4630801) bm!323121))

(assert (= (or b!4630800 b!4630801) bm!323122))

(assert (= (or b!4630800 b!4630801) bm!323123))

(assert (= (and d!1459320 res!1942825) b!4630798))

(assert (= (and b!4630798 res!1942827) b!4630797))

(declare-fun m!5479823 () Bool)

(assert (=> b!4630799 m!5479823))

(declare-fun m!5479825 () Bool)

(assert (=> bm!323122 m!5479825))

(declare-fun m!5479827 () Bool)

(assert (=> b!4630797 m!5479827))

(declare-fun m!5479829 () Bool)

(assert (=> d!1459320 m!5479829))

(declare-fun m!5479831 () Bool)

(assert (=> d!1459320 m!5479831))

(declare-fun m!5479833 () Bool)

(assert (=> b!4630798 m!5479833))

(assert (=> bm!323121 m!5479707))

(declare-fun m!5479835 () Bool)

(assert (=> bm!323123 m!5479835))

(assert (=> b!4630801 m!5479823))

(declare-fun m!5479837 () Bool)

(assert (=> b!4630801 m!5479837))

(assert (=> b!4630801 m!5479823))

(declare-fun m!5479839 () Bool)

(assert (=> b!4630801 m!5479839))

(declare-fun m!5479841 () Bool)

(assert (=> b!4630801 m!5479841))

(declare-fun m!5479843 () Bool)

(assert (=> b!4630801 m!5479843))

(declare-fun m!5479845 () Bool)

(assert (=> b!4630801 m!5479845))

(declare-fun m!5479847 () Bool)

(assert (=> b!4630801 m!5479847))

(assert (=> b!4630801 m!5479841))

(declare-fun m!5479849 () Bool)

(assert (=> b!4630801 m!5479849))

(declare-fun m!5479851 () Bool)

(assert (=> b!4630801 m!5479851))

(declare-fun m!5479853 () Bool)

(assert (=> b!4630801 m!5479853))

(declare-fun m!5479855 () Bool)

(assert (=> b!4630801 m!5479855))

(assert (=> b!4630691 d!1459320))

(declare-fun d!1459322 () Bool)

(assert (=> d!1459322 (eq!843 (addToMapMapFromBucket!989 (Cons!51598 lt!1790798 lt!1790807) (ListMap!4326 Nil!51598)) (+!1894 (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598)) lt!1790798))))

(declare-fun lt!1791062 () Unit!113256)

(assert (=> d!1459322 (= lt!1791062 (choose!31488 lt!1790798 lt!1790807 (ListMap!4326 Nil!51598)))))

(assert (=> d!1459322 (noDuplicateKeys!1528 lt!1790807)))

(assert (=> d!1459322 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!94 lt!1790798 lt!1790807 (ListMap!4326 Nil!51598)) lt!1791062)))

(declare-fun bs!1027238 () Bool)

(assert (= bs!1027238 d!1459322))

(declare-fun m!5479857 () Bool)

(assert (=> bs!1027238 m!5479857))

(assert (=> bs!1027238 m!5479583))

(assert (=> bs!1027238 m!5479573))

(assert (=> bs!1027238 m!5479581))

(assert (=> bs!1027238 m!5479573))

(assert (=> bs!1027238 m!5479583))

(assert (=> bs!1027238 m!5479581))

(assert (=> bs!1027238 m!5479587))

(assert (=> bs!1027238 m!5479831))

(assert (=> b!4630691 d!1459322))

(declare-fun d!1459324 () Bool)

(assert (=> d!1459324 (= (head!9662 oldBucket!40) (h!57668 oldBucket!40))))

(assert (=> b!4630691 d!1459324))

(declare-fun d!1459326 () Bool)

(declare-fun e!2888758 () Bool)

(assert (=> d!1459326 e!2888758))

(declare-fun res!1942842 () Bool)

(assert (=> d!1459326 (=> (not res!1942842) (not e!2888758))))

(declare-fun lt!1791081 () ListMap!4325)

(assert (=> d!1459326 (= res!1942842 (contains!14683 lt!1791081 (_1!29573 (h!57668 oldBucket!40))))))

(declare-fun lt!1791080 () List!51722)

(assert (=> d!1459326 (= lt!1791081 (ListMap!4326 lt!1791080))))

(declare-fun lt!1791082 () Unit!113256)

(declare-fun lt!1791079 () Unit!113256)

(assert (=> d!1459326 (= lt!1791082 lt!1791079)))

(assert (=> d!1459326 (= (getValueByKey!1490 lt!1791080 (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!868 (List!51722 K!12970 V!13216) Unit!113256)

(assert (=> d!1459326 (= lt!1791079 (lemmaContainsTupThenGetReturnValue!868 lt!1791080 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!376 (List!51722 K!12970 V!13216) List!51722)

(assert (=> d!1459326 (= lt!1791080 (insertNoDuplicatedKeys!376 (toList!5021 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599))) (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459326 (= (+!1894 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)) (h!57668 oldBucket!40)) lt!1791081)))

(declare-fun b!4630833 () Bool)

(declare-fun res!1942841 () Bool)

(assert (=> b!4630833 (=> (not res!1942841) (not e!2888758))))

(assert (=> b!4630833 (= res!1942841 (= (getValueByKey!1490 (toList!5021 lt!1791081) (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40)))))))

(declare-fun b!4630834 () Bool)

(declare-fun contains!14689 (List!51722 tuple2!52558) Bool)

(assert (=> b!4630834 (= e!2888758 (contains!14689 (toList!5021 lt!1791081) (h!57668 oldBucket!40)))))

(assert (= (and d!1459326 res!1942842) b!4630833))

(assert (= (and b!4630833 res!1942841) b!4630834))

(declare-fun m!5479879 () Bool)

(assert (=> d!1459326 m!5479879))

(declare-fun m!5479881 () Bool)

(assert (=> d!1459326 m!5479881))

(declare-fun m!5479883 () Bool)

(assert (=> d!1459326 m!5479883))

(declare-fun m!5479885 () Bool)

(assert (=> d!1459326 m!5479885))

(declare-fun m!5479887 () Bool)

(assert (=> b!4630833 m!5479887))

(declare-fun m!5479889 () Bool)

(assert (=> b!4630834 m!5479889))

(assert (=> b!4630691 d!1459326))

(declare-fun bs!1027255 () Bool)

(declare-fun d!1459330 () Bool)

(assert (= bs!1027255 (and d!1459330 b!4630695)))

(declare-fun lambda!193629 () Int)

(assert (=> bs!1027255 (= lambda!193629 lambda!193540)))

(declare-fun bs!1027256 () Bool)

(assert (= bs!1027256 (and d!1459330 d!1459286)))

(assert (=> bs!1027256 (= lambda!193629 lambda!193543)))

(declare-fun lt!1791113 () ListMap!4325)

(assert (=> d!1459330 (invariantList!1224 (toList!5021 lt!1791113))))

(declare-fun e!2888765 () ListMap!4325)

(assert (=> d!1459330 (= lt!1791113 e!2888765)))

(declare-fun c!792662 () Bool)

(assert (=> d!1459330 (= c!792662 ((_ is Cons!51599) (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)))))

(assert (=> d!1459330 (forall!10862 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599) lambda!193629)))

(assert (=> d!1459330 (= (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)) lt!1791113)))

(declare-fun b!4630846 () Bool)

(assert (=> b!4630846 (= e!2888765 (addToMapMapFromBucket!989 (_2!29574 (h!57669 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599))) (extractMap!1584 (t!358775 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)))))))

(declare-fun b!4630847 () Bool)

(assert (=> b!4630847 (= e!2888765 (ListMap!4326 Nil!51598))))

(assert (= (and d!1459330 c!792662) b!4630846))

(assert (= (and d!1459330 (not c!792662)) b!4630847))

(declare-fun m!5479955 () Bool)

(assert (=> d!1459330 m!5479955))

(declare-fun m!5479957 () Bool)

(assert (=> d!1459330 m!5479957))

(declare-fun m!5479959 () Bool)

(assert (=> b!4630846 m!5479959))

(assert (=> b!4630846 m!5479959))

(declare-fun m!5479961 () Bool)

(assert (=> b!4630846 m!5479961))

(assert (=> b!4630691 d!1459330))

(declare-fun d!1459340 () Bool)

(declare-fun e!2888770 () Bool)

(assert (=> d!1459340 e!2888770))

(declare-fun res!1942854 () Bool)

(assert (=> d!1459340 (=> (not res!1942854) (not e!2888770))))

(declare-fun lt!1791141 () ListMap!4325)

(assert (=> d!1459340 (= res!1942854 (contains!14683 lt!1791141 (_1!29573 lt!1790798)))))

(declare-fun lt!1791140 () List!51722)

(assert (=> d!1459340 (= lt!1791141 (ListMap!4326 lt!1791140))))

(declare-fun lt!1791142 () Unit!113256)

(declare-fun lt!1791139 () Unit!113256)

(assert (=> d!1459340 (= lt!1791142 lt!1791139)))

(assert (=> d!1459340 (= (getValueByKey!1490 lt!1791140 (_1!29573 lt!1790798)) (Some!11651 (_2!29573 lt!1790798)))))

(assert (=> d!1459340 (= lt!1791139 (lemmaContainsTupThenGetReturnValue!868 lt!1791140 (_1!29573 lt!1790798) (_2!29573 lt!1790798)))))

(assert (=> d!1459340 (= lt!1791140 (insertNoDuplicatedKeys!376 (toList!5021 (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598))) (_1!29573 lt!1790798) (_2!29573 lt!1790798)))))

(assert (=> d!1459340 (= (+!1894 (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598)) lt!1790798) lt!1791141)))

(declare-fun b!4630855 () Bool)

(declare-fun res!1942853 () Bool)

(assert (=> b!4630855 (=> (not res!1942853) (not e!2888770))))

(assert (=> b!4630855 (= res!1942853 (= (getValueByKey!1490 (toList!5021 lt!1791141) (_1!29573 lt!1790798)) (Some!11651 (_2!29573 lt!1790798))))))

(declare-fun b!4630856 () Bool)

(assert (=> b!4630856 (= e!2888770 (contains!14689 (toList!5021 lt!1791141) lt!1790798))))

(assert (= (and d!1459340 res!1942854) b!4630855))

(assert (= (and b!4630855 res!1942853) b!4630856))

(declare-fun m!5479963 () Bool)

(assert (=> d!1459340 m!5479963))

(declare-fun m!5479965 () Bool)

(assert (=> d!1459340 m!5479965))

(declare-fun m!5479967 () Bool)

(assert (=> d!1459340 m!5479967))

(declare-fun m!5479969 () Bool)

(assert (=> d!1459340 m!5479969))

(declare-fun m!5479971 () Bool)

(assert (=> b!4630855 m!5479971))

(declare-fun m!5479973 () Bool)

(assert (=> b!4630856 m!5479973))

(assert (=> b!4630691 d!1459340))

(declare-fun bs!1027263 () Bool)

(declare-fun d!1459342 () Bool)

(assert (= bs!1027263 (and d!1459342 b!4630695)))

(declare-fun lambda!193631 () Int)

(assert (=> bs!1027263 (= lambda!193631 lambda!193540)))

(declare-fun bs!1027264 () Bool)

(assert (= bs!1027264 (and d!1459342 d!1459286)))

(assert (=> bs!1027264 (= lambda!193631 lambda!193543)))

(declare-fun bs!1027266 () Bool)

(assert (= bs!1027266 (and d!1459342 d!1459330)))

(assert (=> bs!1027266 (= lambda!193631 lambda!193629)))

(declare-fun lt!1791143 () ListMap!4325)

(assert (=> d!1459342 (invariantList!1224 (toList!5021 lt!1791143))))

(declare-fun e!2888771 () ListMap!4325)

(assert (=> d!1459342 (= lt!1791143 e!2888771)))

(declare-fun c!792664 () Bool)

(assert (=> d!1459342 (= c!792664 ((_ is Cons!51599) lt!1790823))))

(assert (=> d!1459342 (forall!10862 lt!1790823 lambda!193631)))

(assert (=> d!1459342 (= (extractMap!1584 lt!1790823) lt!1791143)))

(declare-fun b!4630857 () Bool)

(assert (=> b!4630857 (= e!2888771 (addToMapMapFromBucket!989 (_2!29574 (h!57669 lt!1790823)) (extractMap!1584 (t!358775 lt!1790823))))))

(declare-fun b!4630858 () Bool)

(assert (=> b!4630858 (= e!2888771 (ListMap!4326 Nil!51598))))

(assert (= (and d!1459342 c!792664) b!4630857))

(assert (= (and d!1459342 (not c!792664)) b!4630858))

(declare-fun m!5479975 () Bool)

(assert (=> d!1459342 m!5479975))

(declare-fun m!5479977 () Bool)

(assert (=> d!1459342 m!5479977))

(declare-fun m!5479979 () Bool)

(assert (=> b!4630857 m!5479979))

(assert (=> b!4630857 m!5479979))

(declare-fun m!5479981 () Bool)

(assert (=> b!4630857 m!5479981))

(assert (=> b!4630691 d!1459342))

(declare-fun d!1459344 () Bool)

(declare-fun e!2888772 () Bool)

(assert (=> d!1459344 e!2888772))

(declare-fun res!1942856 () Bool)

(assert (=> d!1459344 (=> (not res!1942856) (not e!2888772))))

(declare-fun lt!1791146 () ListMap!4325)

(assert (=> d!1459344 (= res!1942856 (contains!14683 lt!1791146 (_1!29573 lt!1790812)))))

(declare-fun lt!1791145 () List!51722)

(assert (=> d!1459344 (= lt!1791146 (ListMap!4326 lt!1791145))))

(declare-fun lt!1791147 () Unit!113256)

(declare-fun lt!1791144 () Unit!113256)

(assert (=> d!1459344 (= lt!1791147 lt!1791144)))

(assert (=> d!1459344 (= (getValueByKey!1490 lt!1791145 (_1!29573 lt!1790812)) (Some!11651 (_2!29573 lt!1790812)))))

(assert (=> d!1459344 (= lt!1791144 (lemmaContainsTupThenGetReturnValue!868 lt!1791145 (_1!29573 lt!1790812) (_2!29573 lt!1790812)))))

(assert (=> d!1459344 (= lt!1791145 (insertNoDuplicatedKeys!376 (toList!5021 (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598))) (_1!29573 lt!1790812) (_2!29573 lt!1790812)))))

(assert (=> d!1459344 (= (+!1894 (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598)) lt!1790812) lt!1791146)))

(declare-fun b!4630859 () Bool)

(declare-fun res!1942855 () Bool)

(assert (=> b!4630859 (=> (not res!1942855) (not e!2888772))))

(assert (=> b!4630859 (= res!1942855 (= (getValueByKey!1490 (toList!5021 lt!1791146) (_1!29573 lt!1790812)) (Some!11651 (_2!29573 lt!1790812))))))

(declare-fun b!4630860 () Bool)

(assert (=> b!4630860 (= e!2888772 (contains!14689 (toList!5021 lt!1791146) lt!1790812))))

(assert (= (and d!1459344 res!1942856) b!4630859))

(assert (= (and b!4630859 res!1942855) b!4630860))

(declare-fun m!5479983 () Bool)

(assert (=> d!1459344 m!5479983))

(declare-fun m!5479985 () Bool)

(assert (=> d!1459344 m!5479985))

(declare-fun m!5479987 () Bool)

(assert (=> d!1459344 m!5479987))

(declare-fun m!5479989 () Bool)

(assert (=> d!1459344 m!5479989))

(declare-fun m!5479991 () Bool)

(assert (=> b!4630859 m!5479991))

(declare-fun m!5479993 () Bool)

(assert (=> b!4630860 m!5479993))

(assert (=> b!4630691 d!1459344))

(declare-fun bs!1027273 () Bool)

(declare-fun b!4630864 () Bool)

(assert (= bs!1027273 (and b!4630864 b!4630796)))

(declare-fun lambda!193634 () Int)

(assert (=> bs!1027273 (= lambda!193634 lambda!193613)))

(declare-fun bs!1027274 () Bool)

(assert (= bs!1027274 (and b!4630864 d!1459296)))

(assert (=> bs!1027274 (= (= (ListMap!4326 Nil!51598) lt!1790913) (= lambda!193634 lambda!193587))))

(assert (=> bs!1027273 (= (= (ListMap!4326 Nil!51598) lt!1791008) (= lambda!193634 lambda!193614))))

(declare-fun bs!1027275 () Bool)

(assert (= bs!1027275 (and b!4630864 b!4630801)))

(assert (=> bs!1027275 (= lambda!193634 lambda!193617)))

(declare-fun bs!1027276 () Bool)

(assert (= bs!1027276 (and b!4630864 b!4630800)))

(assert (=> bs!1027276 (= lambda!193634 lambda!193616)))

(declare-fun bs!1027277 () Bool)

(assert (= bs!1027277 (and b!4630864 b!4630795)))

(assert (=> bs!1027277 (= lambda!193634 lambda!193612)))

(declare-fun bs!1027278 () Bool)

(assert (= bs!1027278 (and b!4630864 b!4630748)))

(assert (=> bs!1027278 (= lambda!193634 lambda!193580)))

(declare-fun bs!1027279 () Bool)

(assert (= bs!1027279 (and b!4630864 b!4630749)))

(assert (=> bs!1027279 (= lambda!193634 lambda!193581)))

(assert (=> bs!1027279 (= (= (ListMap!4326 Nil!51598) lt!1790908) (= lambda!193634 lambda!193584))))

(assert (=> bs!1027275 (= (= (ListMap!4326 Nil!51598) lt!1791029) (= lambda!193634 lambda!193618))))

(declare-fun bs!1027280 () Bool)

(assert (= bs!1027280 (and b!4630864 d!1459318)))

(assert (=> bs!1027280 (= (= (ListMap!4326 Nil!51598) lt!1791013) (= lambda!193634 lambda!193615))))

(declare-fun bs!1027281 () Bool)

(assert (= bs!1027281 (and b!4630864 d!1459320)))

(assert (=> bs!1027281 (= (= (ListMap!4326 Nil!51598) lt!1791034) (= lambda!193634 lambda!193619))))

(assert (=> b!4630864 true))

(declare-fun bs!1027288 () Bool)

(declare-fun b!4630865 () Bool)

(assert (= bs!1027288 (and b!4630865 b!4630796)))

(declare-fun lambda!193636 () Int)

(assert (=> bs!1027288 (= lambda!193636 lambda!193613)))

(declare-fun bs!1027290 () Bool)

(assert (= bs!1027290 (and b!4630865 d!1459296)))

(assert (=> bs!1027290 (= (= (ListMap!4326 Nil!51598) lt!1790913) (= lambda!193636 lambda!193587))))

(assert (=> bs!1027288 (= (= (ListMap!4326 Nil!51598) lt!1791008) (= lambda!193636 lambda!193614))))

(declare-fun bs!1027292 () Bool)

(assert (= bs!1027292 (and b!4630865 b!4630801)))

(assert (=> bs!1027292 (= lambda!193636 lambda!193617)))

(declare-fun bs!1027293 () Bool)

(assert (= bs!1027293 (and b!4630865 b!4630800)))

(assert (=> bs!1027293 (= lambda!193636 lambda!193616)))

(declare-fun bs!1027294 () Bool)

(assert (= bs!1027294 (and b!4630865 b!4630795)))

(assert (=> bs!1027294 (= lambda!193636 lambda!193612)))

(declare-fun bs!1027295 () Bool)

(assert (= bs!1027295 (and b!4630865 b!4630748)))

(assert (=> bs!1027295 (= lambda!193636 lambda!193580)))

(declare-fun bs!1027296 () Bool)

(assert (= bs!1027296 (and b!4630865 b!4630749)))

(assert (=> bs!1027296 (= lambda!193636 lambda!193581)))

(assert (=> bs!1027296 (= (= (ListMap!4326 Nil!51598) lt!1790908) (= lambda!193636 lambda!193584))))

(declare-fun bs!1027297 () Bool)

(assert (= bs!1027297 (and b!4630865 d!1459318)))

(assert (=> bs!1027297 (= (= (ListMap!4326 Nil!51598) lt!1791013) (= lambda!193636 lambda!193615))))

(declare-fun bs!1027298 () Bool)

(assert (= bs!1027298 (and b!4630865 d!1459320)))

(assert (=> bs!1027298 (= (= (ListMap!4326 Nil!51598) lt!1791034) (= lambda!193636 lambda!193619))))

(assert (=> bs!1027292 (= (= (ListMap!4326 Nil!51598) lt!1791029) (= lambda!193636 lambda!193618))))

(declare-fun bs!1027299 () Bool)

(assert (= bs!1027299 (and b!4630865 b!4630864)))

(assert (=> bs!1027299 (= lambda!193636 lambda!193634)))

(assert (=> b!4630865 true))

(declare-fun lt!1791152 () ListMap!4325)

(declare-fun lambda!193637 () Int)

(assert (=> bs!1027288 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193613))))

(assert (=> bs!1027288 (= (= lt!1791152 lt!1791008) (= lambda!193637 lambda!193614))))

(assert (=> bs!1027292 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193617))))

(assert (=> bs!1027293 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193616))))

(assert (=> bs!1027294 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193612))))

(assert (=> bs!1027295 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193580))))

(assert (=> bs!1027296 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193581))))

(assert (=> bs!1027296 (= (= lt!1791152 lt!1790908) (= lambda!193637 lambda!193584))))

(assert (=> bs!1027290 (= (= lt!1791152 lt!1790913) (= lambda!193637 lambda!193587))))

(assert (=> b!4630865 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193636))))

(assert (=> bs!1027297 (= (= lt!1791152 lt!1791013) (= lambda!193637 lambda!193615))))

(assert (=> bs!1027298 (= (= lt!1791152 lt!1791034) (= lambda!193637 lambda!193619))))

(assert (=> bs!1027292 (= (= lt!1791152 lt!1791029) (= lambda!193637 lambda!193618))))

(assert (=> bs!1027299 (= (= lt!1791152 (ListMap!4326 Nil!51598)) (= lambda!193637 lambda!193634))))

(assert (=> b!4630865 true))

(declare-fun bs!1027303 () Bool)

(declare-fun d!1459346 () Bool)

(assert (= bs!1027303 (and d!1459346 b!4630796)))

(declare-fun lt!1791157 () ListMap!4325)

(declare-fun lambda!193639 () Int)

(assert (=> bs!1027303 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193613))))

(assert (=> bs!1027303 (= (= lt!1791157 lt!1791008) (= lambda!193639 lambda!193614))))

(declare-fun bs!1027306 () Bool)

(assert (= bs!1027306 (and d!1459346 b!4630801)))

(assert (=> bs!1027306 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193617))))

(declare-fun bs!1027308 () Bool)

(assert (= bs!1027308 (and d!1459346 b!4630800)))

(assert (=> bs!1027308 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193616))))

(declare-fun bs!1027309 () Bool)

(assert (= bs!1027309 (and d!1459346 b!4630795)))

(assert (=> bs!1027309 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193612))))

(declare-fun bs!1027311 () Bool)

(assert (= bs!1027311 (and d!1459346 b!4630748)))

(assert (=> bs!1027311 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193580))))

(declare-fun bs!1027312 () Bool)

(assert (= bs!1027312 (and d!1459346 b!4630749)))

(assert (=> bs!1027312 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193581))))

(assert (=> bs!1027312 (= (= lt!1791157 lt!1790908) (= lambda!193639 lambda!193584))))

(declare-fun bs!1027315 () Bool)

(assert (= bs!1027315 (and d!1459346 b!4630865)))

(assert (=> bs!1027315 (= (= lt!1791157 lt!1791152) (= lambda!193639 lambda!193637))))

(declare-fun bs!1027316 () Bool)

(assert (= bs!1027316 (and d!1459346 d!1459296)))

(assert (=> bs!1027316 (= (= lt!1791157 lt!1790913) (= lambda!193639 lambda!193587))))

(assert (=> bs!1027315 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193636))))

(declare-fun bs!1027317 () Bool)

(assert (= bs!1027317 (and d!1459346 d!1459318)))

(assert (=> bs!1027317 (= (= lt!1791157 lt!1791013) (= lambda!193639 lambda!193615))))

(declare-fun bs!1027318 () Bool)

(assert (= bs!1027318 (and d!1459346 d!1459320)))

(assert (=> bs!1027318 (= (= lt!1791157 lt!1791034) (= lambda!193639 lambda!193619))))

(assert (=> bs!1027306 (= (= lt!1791157 lt!1791029) (= lambda!193639 lambda!193618))))

(declare-fun bs!1027320 () Bool)

(assert (= bs!1027320 (and d!1459346 b!4630864)))

(assert (=> bs!1027320 (= (= lt!1791157 (ListMap!4326 Nil!51598)) (= lambda!193639 lambda!193634))))

(assert (=> d!1459346 true))

(declare-fun bm!323133 () Bool)

(declare-fun call!323140 () Unit!113256)

(assert (=> bm!323133 (= call!323140 (lemmaContainsAllItsOwnKeys!525 (ListMap!4326 Nil!51598)))))

(declare-fun c!792665 () Bool)

(declare-fun bm!323134 () Bool)

(declare-fun call!323139 () Bool)

(assert (=> bm!323134 (= call!323139 (forall!10863 (ite c!792665 (toList!5021 (ListMap!4326 Nil!51598)) lt!1790824) (ite c!792665 lambda!193634 lambda!193637)))))

(declare-fun bm!323135 () Bool)

(declare-fun lt!1791150 () ListMap!4325)

(declare-fun call!323138 () Bool)

(assert (=> bm!323135 (= call!323138 (forall!10863 (ite c!792665 (toList!5021 (ListMap!4326 Nil!51598)) (toList!5021 lt!1791150)) (ite c!792665 lambda!193634 lambda!193637)))))

(declare-fun e!2888773 () Bool)

(assert (=> d!1459346 e!2888773))

(declare-fun res!1942857 () Bool)

(assert (=> d!1459346 (=> (not res!1942857) (not e!2888773))))

(assert (=> d!1459346 (= res!1942857 (forall!10863 lt!1790824 lambda!193639))))

(declare-fun e!2888774 () ListMap!4325)

(assert (=> d!1459346 (= lt!1791157 e!2888774)))

(assert (=> d!1459346 (= c!792665 ((_ is Nil!51598) lt!1790824))))

(assert (=> d!1459346 (noDuplicateKeys!1528 lt!1790824)))

(assert (=> d!1459346 (= (addToMapMapFromBucket!989 lt!1790824 (ListMap!4326 Nil!51598)) lt!1791157)))

(declare-fun b!4630861 () Bool)

(assert (=> b!4630861 (= e!2888773 (invariantList!1224 (toList!5021 lt!1791157)))))

(declare-fun b!4630862 () Bool)

(declare-fun res!1942859 () Bool)

(assert (=> b!4630862 (=> (not res!1942859) (not e!2888773))))

(assert (=> b!4630862 (= res!1942859 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193639))))

(declare-fun b!4630863 () Bool)

(declare-fun e!2888775 () Bool)

(assert (=> b!4630863 (= e!2888775 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193637))))

(assert (=> b!4630864 (= e!2888774 (ListMap!4326 Nil!51598))))

(declare-fun lt!1791161 () Unit!113256)

(assert (=> b!4630864 (= lt!1791161 call!323140)))

(assert (=> b!4630864 call!323139))

(declare-fun lt!1791151 () Unit!113256)

(assert (=> b!4630864 (= lt!1791151 lt!1791161)))

(assert (=> b!4630864 call!323138))

(declare-fun lt!1791166 () Unit!113256)

(declare-fun Unit!113328 () Unit!113256)

(assert (=> b!4630864 (= lt!1791166 Unit!113328)))

(assert (=> b!4630865 (= e!2888774 lt!1791152)))

(assert (=> b!4630865 (= lt!1791150 (+!1894 (ListMap!4326 Nil!51598) (h!57668 lt!1790824)))))

(assert (=> b!4630865 (= lt!1791152 (addToMapMapFromBucket!989 (t!358774 lt!1790824) (+!1894 (ListMap!4326 Nil!51598) (h!57668 lt!1790824))))))

(declare-fun lt!1791148 () Unit!113256)

(assert (=> b!4630865 (= lt!1791148 call!323140)))

(assert (=> b!4630865 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193636)))

(declare-fun lt!1791158 () Unit!113256)

(assert (=> b!4630865 (= lt!1791158 lt!1791148)))

(assert (=> b!4630865 (forall!10863 (toList!5021 lt!1791150) lambda!193637)))

(declare-fun lt!1791168 () Unit!113256)

(declare-fun Unit!113329 () Unit!113256)

(assert (=> b!4630865 (= lt!1791168 Unit!113329)))

(assert (=> b!4630865 (forall!10863 (t!358774 lt!1790824) lambda!193637)))

(declare-fun lt!1791164 () Unit!113256)

(declare-fun Unit!113330 () Unit!113256)

(assert (=> b!4630865 (= lt!1791164 Unit!113330)))

(declare-fun lt!1791160 () Unit!113256)

(declare-fun Unit!113331 () Unit!113256)

(assert (=> b!4630865 (= lt!1791160 Unit!113331)))

(declare-fun lt!1791165 () Unit!113256)

(assert (=> b!4630865 (= lt!1791165 (forallContained!3093 (toList!5021 lt!1791150) lambda!193637 (h!57668 lt!1790824)))))

(assert (=> b!4630865 (contains!14683 lt!1791150 (_1!29573 (h!57668 lt!1790824)))))

(declare-fun lt!1791149 () Unit!113256)

(declare-fun Unit!113332 () Unit!113256)

(assert (=> b!4630865 (= lt!1791149 Unit!113332)))

(assert (=> b!4630865 (contains!14683 lt!1791152 (_1!29573 (h!57668 lt!1790824)))))

(declare-fun lt!1791167 () Unit!113256)

(declare-fun Unit!113333 () Unit!113256)

(assert (=> b!4630865 (= lt!1791167 Unit!113333)))

(assert (=> b!4630865 (forall!10863 lt!1790824 lambda!193637)))

(declare-fun lt!1791155 () Unit!113256)

(declare-fun Unit!113334 () Unit!113256)

(assert (=> b!4630865 (= lt!1791155 Unit!113334)))

(assert (=> b!4630865 call!323138))

(declare-fun lt!1791156 () Unit!113256)

(declare-fun Unit!113335 () Unit!113256)

(assert (=> b!4630865 (= lt!1791156 Unit!113335)))

(declare-fun lt!1791153 () Unit!113256)

(declare-fun Unit!113336 () Unit!113256)

(assert (=> b!4630865 (= lt!1791153 Unit!113336)))

(declare-fun lt!1791162 () Unit!113256)

(assert (=> b!4630865 (= lt!1791162 (addForallContainsKeyThenBeforeAdding!524 (ListMap!4326 Nil!51598) lt!1791152 (_1!29573 (h!57668 lt!1790824)) (_2!29573 (h!57668 lt!1790824))))))

(assert (=> b!4630865 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193637)))

(declare-fun lt!1791163 () Unit!113256)

(assert (=> b!4630865 (= lt!1791163 lt!1791162)))

(assert (=> b!4630865 (forall!10863 (toList!5021 (ListMap!4326 Nil!51598)) lambda!193637)))

(declare-fun lt!1791154 () Unit!113256)

(declare-fun Unit!113337 () Unit!113256)

(assert (=> b!4630865 (= lt!1791154 Unit!113337)))

(declare-fun res!1942858 () Bool)

(assert (=> b!4630865 (= res!1942858 call!323139)))

(assert (=> b!4630865 (=> (not res!1942858) (not e!2888775))))

(assert (=> b!4630865 e!2888775))

(declare-fun lt!1791159 () Unit!113256)

(declare-fun Unit!113338 () Unit!113256)

(assert (=> b!4630865 (= lt!1791159 Unit!113338)))

(assert (= (and d!1459346 c!792665) b!4630864))

(assert (= (and d!1459346 (not c!792665)) b!4630865))

(assert (= (and b!4630865 res!1942858) b!4630863))

(assert (= (or b!4630864 b!4630865) bm!323133))

(assert (= (or b!4630864 b!4630865) bm!323134))

(assert (= (or b!4630864 b!4630865) bm!323135))

(assert (= (and d!1459346 res!1942857) b!4630862))

(assert (= (and b!4630862 res!1942859) b!4630861))

(declare-fun m!5480025 () Bool)

(assert (=> b!4630863 m!5480025))

(declare-fun m!5480027 () Bool)

(assert (=> bm!323134 m!5480027))

(declare-fun m!5480029 () Bool)

(assert (=> b!4630861 m!5480029))

(declare-fun m!5480031 () Bool)

(assert (=> d!1459346 m!5480031))

(assert (=> d!1459346 m!5479635))

(declare-fun m!5480033 () Bool)

(assert (=> b!4630862 m!5480033))

(assert (=> bm!323133 m!5479707))

(declare-fun m!5480035 () Bool)

(assert (=> bm!323135 m!5480035))

(assert (=> b!4630865 m!5480025))

(declare-fun m!5480037 () Bool)

(assert (=> b!4630865 m!5480037))

(assert (=> b!4630865 m!5480025))

(declare-fun m!5480039 () Bool)

(assert (=> b!4630865 m!5480039))

(declare-fun m!5480041 () Bool)

(assert (=> b!4630865 m!5480041))

(declare-fun m!5480043 () Bool)

(assert (=> b!4630865 m!5480043))

(declare-fun m!5480045 () Bool)

(assert (=> b!4630865 m!5480045))

(declare-fun m!5480047 () Bool)

(assert (=> b!4630865 m!5480047))

(assert (=> b!4630865 m!5480041))

(declare-fun m!5480049 () Bool)

(assert (=> b!4630865 m!5480049))

(declare-fun m!5480051 () Bool)

(assert (=> b!4630865 m!5480051))

(declare-fun m!5480053 () Bool)

(assert (=> b!4630865 m!5480053))

(declare-fun m!5480055 () Bool)

(assert (=> b!4630865 m!5480055))

(assert (=> b!4630691 d!1459346))

(declare-fun d!1459350 () Bool)

(assert (=> d!1459350 (= (eq!843 (addToMapMapFromBucket!989 (Cons!51598 lt!1790798 lt!1790807) (ListMap!4326 Nil!51598)) (+!1894 (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598)) lt!1790798)) (= (content!8854 (toList!5021 (addToMapMapFromBucket!989 (Cons!51598 lt!1790798 lt!1790807) (ListMap!4326 Nil!51598)))) (content!8854 (toList!5021 (+!1894 (addToMapMapFromBucket!989 lt!1790807 (ListMap!4326 Nil!51598)) lt!1790798)))))))

(declare-fun bs!1027330 () Bool)

(assert (= bs!1027330 d!1459350))

(declare-fun m!5480057 () Bool)

(assert (=> bs!1027330 m!5480057))

(declare-fun m!5480059 () Bool)

(assert (=> bs!1027330 m!5480059))

(assert (=> b!4630691 d!1459350))

(declare-fun d!1459352 () Bool)

(assert (=> d!1459352 (= (eq!843 lt!1790822 (+!1894 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)) (h!57668 oldBucket!40))) (= (content!8854 (toList!5021 lt!1790822)) (content!8854 (toList!5021 (+!1894 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790824) Nil!51599)) (h!57668 oldBucket!40))))))))

(declare-fun bs!1027331 () Bool)

(assert (= bs!1027331 d!1459352))

(declare-fun m!5480061 () Bool)

(assert (=> bs!1027331 m!5480061))

(declare-fun m!5480063 () Bool)

(assert (=> bs!1027331 m!5480063))

(assert (=> b!4630691 d!1459352))

(declare-fun bs!1027343 () Bool)

(declare-fun d!1459354 () Bool)

(assert (= bs!1027343 (and d!1459354 b!4630796)))

(declare-fun lambda!193645 () Int)

(assert (=> bs!1027343 (not (= lambda!193645 lambda!193613))))

(assert (=> bs!1027343 (not (= lambda!193645 lambda!193614))))

(declare-fun bs!1027344 () Bool)

(assert (= bs!1027344 (and d!1459354 b!4630800)))

(assert (=> bs!1027344 (not (= lambda!193645 lambda!193616))))

(declare-fun bs!1027345 () Bool)

(assert (= bs!1027345 (and d!1459354 b!4630795)))

(assert (=> bs!1027345 (not (= lambda!193645 lambda!193612))))

(declare-fun bs!1027346 () Bool)

(assert (= bs!1027346 (and d!1459354 b!4630748)))

(assert (=> bs!1027346 (not (= lambda!193645 lambda!193580))))

(declare-fun bs!1027347 () Bool)

(assert (= bs!1027347 (and d!1459354 b!4630749)))

(assert (=> bs!1027347 (not (= lambda!193645 lambda!193581))))

(assert (=> bs!1027347 (not (= lambda!193645 lambda!193584))))

(declare-fun bs!1027348 () Bool)

(assert (= bs!1027348 (and d!1459354 b!4630865)))

(assert (=> bs!1027348 (not (= lambda!193645 lambda!193637))))

(declare-fun bs!1027349 () Bool)

(assert (= bs!1027349 (and d!1459354 d!1459296)))

(assert (=> bs!1027349 (not (= lambda!193645 lambda!193587))))

(assert (=> bs!1027348 (not (= lambda!193645 lambda!193636))))

(declare-fun bs!1027350 () Bool)

(assert (= bs!1027350 (and d!1459354 d!1459318)))

(assert (=> bs!1027350 (not (= lambda!193645 lambda!193615))))

(declare-fun bs!1027351 () Bool)

(assert (= bs!1027351 (and d!1459354 d!1459320)))

(assert (=> bs!1027351 (not (= lambda!193645 lambda!193619))))

(declare-fun bs!1027352 () Bool)

(assert (= bs!1027352 (and d!1459354 b!4630801)))

(assert (=> bs!1027352 (not (= lambda!193645 lambda!193617))))

(declare-fun bs!1027353 () Bool)

(assert (= bs!1027353 (and d!1459354 d!1459346)))

(assert (=> bs!1027353 (not (= lambda!193645 lambda!193639))))

(assert (=> bs!1027352 (not (= lambda!193645 lambda!193618))))

(declare-fun bs!1027354 () Bool)

(assert (= bs!1027354 (and d!1459354 b!4630864)))

(assert (=> bs!1027354 (not (= lambda!193645 lambda!193634))))

(assert (=> d!1459354 true))

(assert (=> d!1459354 true))

(assert (=> d!1459354 (= (allKeysSameHash!1382 oldBucket!40 hash!414 hashF!1389) (forall!10863 oldBucket!40 lambda!193645))))

(declare-fun bs!1027355 () Bool)

(assert (= bs!1027355 d!1459354))

(declare-fun m!5480097 () Bool)

(assert (=> bs!1027355 m!5480097))

(assert (=> b!4630689 d!1459354))

(declare-fun d!1459358 () Bool)

(declare-fun res!1942869 () Bool)

(declare-fun e!2888785 () Bool)

(assert (=> d!1459358 (=> res!1942869 e!2888785)))

(assert (=> d!1459358 (= res!1942869 (not ((_ is Cons!51598) oldBucket!40)))))

(assert (=> d!1459358 (= (noDuplicateKeys!1528 oldBucket!40) e!2888785)))

(declare-fun b!4630883 () Bool)

(declare-fun e!2888786 () Bool)

(assert (=> b!4630883 (= e!2888785 e!2888786)))

(declare-fun res!1942870 () Bool)

(assert (=> b!4630883 (=> (not res!1942870) (not e!2888786))))

(assert (=> b!4630883 (= res!1942870 (not (containsKey!2508 (t!358774 oldBucket!40) (_1!29573 (h!57668 oldBucket!40)))))))

(declare-fun b!4630884 () Bool)

(assert (=> b!4630884 (= e!2888786 (noDuplicateKeys!1528 (t!358774 oldBucket!40)))))

(assert (= (and d!1459358 (not res!1942869)) b!4630883))

(assert (= (and b!4630883 res!1942870) b!4630884))

(declare-fun m!5480119 () Bool)

(assert (=> b!4630883 m!5480119))

(declare-fun m!5480121 () Bool)

(assert (=> b!4630884 m!5480121))

(assert (=> start!464708 d!1459358))

(declare-fun d!1459366 () Bool)

(declare-fun hash!3563 (Hashable!5925 K!12970) (_ BitVec 64))

(assert (=> d!1459366 (= (hash!3560 hashF!1389 key!4968) (hash!3563 hashF!1389 key!4968))))

(declare-fun bs!1027365 () Bool)

(assert (= bs!1027365 d!1459366))

(declare-fun m!5480125 () Bool)

(assert (=> bs!1027365 m!5480125))

(assert (=> b!4630698 d!1459366))

(declare-fun d!1459368 () Bool)

(assert (=> d!1459368 (= (eq!843 lt!1790825 (+!1894 lt!1790795 lt!1790798)) (= (content!8854 (toList!5021 lt!1790825)) (content!8854 (toList!5021 (+!1894 lt!1790795 lt!1790798)))))))

(declare-fun bs!1027366 () Bool)

(assert (= bs!1027366 d!1459368))

(declare-fun m!5480133 () Bool)

(assert (=> bs!1027366 m!5480133))

(declare-fun m!5480135 () Bool)

(assert (=> bs!1027366 m!5480135))

(assert (=> b!4630688 d!1459368))

(declare-fun d!1459372 () Bool)

(declare-fun e!2888788 () Bool)

(assert (=> d!1459372 e!2888788))

(declare-fun res!1942872 () Bool)

(assert (=> d!1459372 (=> (not res!1942872) (not e!2888788))))

(declare-fun lt!1791198 () ListMap!4325)

(assert (=> d!1459372 (= res!1942872 (contains!14683 lt!1791198 (_1!29573 lt!1790798)))))

(declare-fun lt!1791197 () List!51722)

(assert (=> d!1459372 (= lt!1791198 (ListMap!4326 lt!1791197))))

(declare-fun lt!1791199 () Unit!113256)

(declare-fun lt!1791196 () Unit!113256)

(assert (=> d!1459372 (= lt!1791199 lt!1791196)))

(assert (=> d!1459372 (= (getValueByKey!1490 lt!1791197 (_1!29573 lt!1790798)) (Some!11651 (_2!29573 lt!1790798)))))

(assert (=> d!1459372 (= lt!1791196 (lemmaContainsTupThenGetReturnValue!868 lt!1791197 (_1!29573 lt!1790798) (_2!29573 lt!1790798)))))

(assert (=> d!1459372 (= lt!1791197 (insertNoDuplicatedKeys!376 (toList!5021 lt!1790795) (_1!29573 lt!1790798) (_2!29573 lt!1790798)))))

(assert (=> d!1459372 (= (+!1894 lt!1790795 lt!1790798) lt!1791198)))

(declare-fun b!4630887 () Bool)

(declare-fun res!1942871 () Bool)

(assert (=> b!4630887 (=> (not res!1942871) (not e!2888788))))

(assert (=> b!4630887 (= res!1942871 (= (getValueByKey!1490 (toList!5021 lt!1791198) (_1!29573 lt!1790798)) (Some!11651 (_2!29573 lt!1790798))))))

(declare-fun b!4630888 () Bool)

(assert (=> b!4630888 (= e!2888788 (contains!14689 (toList!5021 lt!1791198) lt!1790798))))

(assert (= (and d!1459372 res!1942872) b!4630887))

(assert (= (and b!4630887 res!1942871) b!4630888))

(declare-fun m!5480137 () Bool)

(assert (=> d!1459372 m!5480137))

(declare-fun m!5480139 () Bool)

(assert (=> d!1459372 m!5480139))

(declare-fun m!5480141 () Bool)

(assert (=> d!1459372 m!5480141))

(declare-fun m!5480145 () Bool)

(assert (=> d!1459372 m!5480145))

(declare-fun m!5480147 () Bool)

(assert (=> b!4630887 m!5480147))

(declare-fun m!5480149 () Bool)

(assert (=> b!4630888 m!5480149))

(assert (=> b!4630688 d!1459372))

(declare-fun bs!1027368 () Bool)

(declare-fun d!1459374 () Bool)

(assert (= bs!1027368 (and d!1459374 b!4630695)))

(declare-fun lambda!193648 () Int)

(assert (=> bs!1027368 (= lambda!193648 lambda!193540)))

(declare-fun bs!1027370 () Bool)

(assert (= bs!1027370 (and d!1459374 d!1459286)))

(assert (=> bs!1027370 (= lambda!193648 lambda!193543)))

(declare-fun bs!1027371 () Bool)

(assert (= bs!1027371 (and d!1459374 d!1459330)))

(assert (=> bs!1027371 (= lambda!193648 lambda!193629)))

(declare-fun bs!1027372 () Bool)

(assert (= bs!1027372 (and d!1459374 d!1459342)))

(assert (=> bs!1027372 (= lambda!193648 lambda!193631)))

(declare-fun lt!1791201 () ListMap!4325)

(assert (=> d!1459374 (invariantList!1224 (toList!5021 lt!1791201))))

(declare-fun e!2888789 () ListMap!4325)

(assert (=> d!1459374 (= lt!1791201 e!2888789)))

(declare-fun c!792669 () Bool)

(assert (=> d!1459374 (= c!792669 ((_ is Cons!51599) (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599)))))

(assert (=> d!1459374 (forall!10862 (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599) lambda!193648)))

(assert (=> d!1459374 (= (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599)) lt!1791201)))

(declare-fun b!4630889 () Bool)

(assert (=> b!4630889 (= e!2888789 (addToMapMapFromBucket!989 (_2!29574 (h!57669 (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599))) (extractMap!1584 (t!358775 (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599)))))))

(declare-fun b!4630890 () Bool)

(assert (=> b!4630890 (= e!2888789 (ListMap!4326 Nil!51598))))

(assert (= (and d!1459374 c!792669) b!4630889))

(assert (= (and d!1459374 (not c!792669)) b!4630890))

(declare-fun m!5480155 () Bool)

(assert (=> d!1459374 m!5480155))

(declare-fun m!5480157 () Bool)

(assert (=> d!1459374 m!5480157))

(declare-fun m!5480159 () Bool)

(assert (=> b!4630889 m!5480159))

(assert (=> b!4630889 m!5480159))

(declare-fun m!5480161 () Bool)

(assert (=> b!4630889 m!5480161))

(assert (=> b!4630688 d!1459374))

(declare-fun bs!1027373 () Bool)

(declare-fun d!1459380 () Bool)

(assert (= bs!1027373 (and d!1459380 d!1459330)))

(declare-fun lambda!193649 () Int)

(assert (=> bs!1027373 (= lambda!193649 lambda!193629)))

(declare-fun bs!1027374 () Bool)

(assert (= bs!1027374 (and d!1459380 d!1459342)))

(assert (=> bs!1027374 (= lambda!193649 lambda!193631)))

(declare-fun bs!1027375 () Bool)

(assert (= bs!1027375 (and d!1459380 b!4630695)))

(assert (=> bs!1027375 (= lambda!193649 lambda!193540)))

(declare-fun bs!1027376 () Bool)

(assert (= bs!1027376 (and d!1459380 d!1459374)))

(assert (=> bs!1027376 (= lambda!193649 lambda!193648)))

(declare-fun bs!1027377 () Bool)

(assert (= bs!1027377 (and d!1459380 d!1459286)))

(assert (=> bs!1027377 (= lambda!193649 lambda!193543)))

(declare-fun lt!1791202 () ListMap!4325)

(assert (=> d!1459380 (invariantList!1224 (toList!5021 lt!1791202))))

(declare-fun e!2888790 () ListMap!4325)

(assert (=> d!1459380 (= lt!1791202 e!2888790)))

(declare-fun c!792670 () Bool)

(assert (=> d!1459380 (= c!792670 ((_ is Cons!51599) (Cons!51599 (tuple2!52561 hash!414 newBucket!224) Nil!51599)))))

(assert (=> d!1459380 (forall!10862 (Cons!51599 (tuple2!52561 hash!414 newBucket!224) Nil!51599) lambda!193649)))

(assert (=> d!1459380 (= (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 newBucket!224) Nil!51599)) lt!1791202)))

(declare-fun b!4630891 () Bool)

(assert (=> b!4630891 (= e!2888790 (addToMapMapFromBucket!989 (_2!29574 (h!57669 (Cons!51599 (tuple2!52561 hash!414 newBucket!224) Nil!51599))) (extractMap!1584 (t!358775 (Cons!51599 (tuple2!52561 hash!414 newBucket!224) Nil!51599)))))))

(declare-fun b!4630892 () Bool)

(assert (=> b!4630892 (= e!2888790 (ListMap!4326 Nil!51598))))

(assert (= (and d!1459380 c!792670) b!4630891))

(assert (= (and d!1459380 (not c!792670)) b!4630892))

(declare-fun m!5480163 () Bool)

(assert (=> d!1459380 m!5480163))

(declare-fun m!5480165 () Bool)

(assert (=> d!1459380 m!5480165))

(declare-fun m!5480167 () Bool)

(assert (=> b!4630891 m!5480167))

(assert (=> b!4630891 m!5480167))

(declare-fun m!5480169 () Bool)

(assert (=> b!4630891 m!5480169))

(assert (=> b!4630688 d!1459380))

(declare-fun d!1459382 () Bool)

(declare-fun e!2888802 () Bool)

(assert (=> d!1459382 e!2888802))

(declare-fun res!1942878 () Bool)

(assert (=> d!1459382 (=> (not res!1942878) (not e!2888802))))

(declare-fun lt!1791229 () ListMap!4325)

(assert (=> d!1459382 (= res!1942878 (not (contains!14683 lt!1791229 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!272 (List!51722 K!12970) List!51722)

(assert (=> d!1459382 (= lt!1791229 (ListMap!4326 (removePresrvNoDuplicatedKeys!272 (toList!5021 lt!1790810) key!4968)))))

(assert (=> d!1459382 (= (-!568 lt!1790810 key!4968) lt!1791229)))

(declare-fun b!4630912 () Bool)

(declare-fun content!8856 (List!51724) (InoxSet K!12970))

(assert (=> b!4630912 (= e!2888802 (= ((_ map and) (content!8856 (keys!18195 lt!1790810)) ((_ map not) (store ((as const (Array K!12970 Bool)) false) key!4968 true))) (content!8856 (keys!18195 lt!1791229))))))

(assert (= (and d!1459382 res!1942878) b!4630912))

(declare-fun m!5480173 () Bool)

(assert (=> d!1459382 m!5480173))

(declare-fun m!5480175 () Bool)

(assert (=> d!1459382 m!5480175))

(assert (=> b!4630912 m!5479769))

(declare-fun m!5480177 () Bool)

(assert (=> b!4630912 m!5480177))

(declare-fun m!5480179 () Bool)

(assert (=> b!4630912 m!5480179))

(declare-fun m!5480181 () Bool)

(assert (=> b!4630912 m!5480181))

(assert (=> b!4630912 m!5479769))

(declare-fun m!5480183 () Bool)

(assert (=> b!4630912 m!5480183))

(assert (=> b!4630912 m!5480177))

(assert (=> b!4630686 d!1459382))

(declare-fun d!1459386 () Bool)

(declare-fun e!2888803 () Bool)

(assert (=> d!1459386 e!2888803))

(declare-fun res!1942880 () Bool)

(assert (=> d!1459386 (=> (not res!1942880) (not e!2888803))))

(declare-fun lt!1791232 () ListMap!4325)

(assert (=> d!1459386 (= res!1942880 (contains!14683 lt!1791232 (_1!29573 (h!57668 oldBucket!40))))))

(declare-fun lt!1791231 () List!51722)

(assert (=> d!1459386 (= lt!1791232 (ListMap!4326 lt!1791231))))

(declare-fun lt!1791233 () Unit!113256)

(declare-fun lt!1791230 () Unit!113256)

(assert (=> d!1459386 (= lt!1791233 lt!1791230)))

(assert (=> d!1459386 (= (getValueByKey!1490 lt!1791231 (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459386 (= lt!1791230 (lemmaContainsTupThenGetReturnValue!868 lt!1791231 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459386 (= lt!1791231 (insertNoDuplicatedKeys!376 (toList!5021 lt!1790810) (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459386 (= (+!1894 lt!1790810 (h!57668 oldBucket!40)) lt!1791232)))

(declare-fun b!4630913 () Bool)

(declare-fun res!1942879 () Bool)

(assert (=> b!4630913 (=> (not res!1942879) (not e!2888803))))

(assert (=> b!4630913 (= res!1942879 (= (getValueByKey!1490 (toList!5021 lt!1791232) (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40)))))))

(declare-fun b!4630914 () Bool)

(assert (=> b!4630914 (= e!2888803 (contains!14689 (toList!5021 lt!1791232) (h!57668 oldBucket!40)))))

(assert (= (and d!1459386 res!1942880) b!4630913))

(assert (= (and b!4630913 res!1942879) b!4630914))

(declare-fun m!5480185 () Bool)

(assert (=> d!1459386 m!5480185))

(declare-fun m!5480187 () Bool)

(assert (=> d!1459386 m!5480187))

(declare-fun m!5480189 () Bool)

(assert (=> d!1459386 m!5480189))

(declare-fun m!5480191 () Bool)

(assert (=> d!1459386 m!5480191))

(declare-fun m!5480193 () Bool)

(assert (=> b!4630913 m!5480193))

(declare-fun m!5480195 () Bool)

(assert (=> b!4630914 m!5480195))

(assert (=> b!4630686 d!1459386))

(declare-fun d!1459388 () Bool)

(declare-fun e!2888804 () Bool)

(assert (=> d!1459388 e!2888804))

(declare-fun res!1942881 () Bool)

(assert (=> d!1459388 (=> (not res!1942881) (not e!2888804))))

(declare-fun lt!1791234 () ListMap!4325)

(assert (=> d!1459388 (= res!1942881 (not (contains!14683 lt!1791234 key!4968)))))

(assert (=> d!1459388 (= lt!1791234 (ListMap!4326 (removePresrvNoDuplicatedKeys!272 (toList!5021 (+!1894 lt!1790810 (h!57668 oldBucket!40))) key!4968)))))

(assert (=> d!1459388 (= (-!568 (+!1894 lt!1790810 (h!57668 oldBucket!40)) key!4968) lt!1791234)))

(declare-fun b!4630915 () Bool)

(assert (=> b!4630915 (= e!2888804 (= ((_ map and) (content!8856 (keys!18195 (+!1894 lt!1790810 (h!57668 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12970 Bool)) false) key!4968 true))) (content!8856 (keys!18195 lt!1791234))))))

(assert (= (and d!1459388 res!1942881) b!4630915))

(declare-fun m!5480197 () Bool)

(assert (=> d!1459388 m!5480197))

(declare-fun m!5480199 () Bool)

(assert (=> d!1459388 m!5480199))

(assert (=> b!4630915 m!5479595))

(declare-fun m!5480201 () Bool)

(assert (=> b!4630915 m!5480201))

(declare-fun m!5480203 () Bool)

(assert (=> b!4630915 m!5480203))

(declare-fun m!5480205 () Bool)

(assert (=> b!4630915 m!5480205))

(assert (=> b!4630915 m!5480181))

(assert (=> b!4630915 m!5480201))

(declare-fun m!5480207 () Bool)

(assert (=> b!4630915 m!5480207))

(assert (=> b!4630915 m!5480203))

(assert (=> b!4630686 d!1459388))

(declare-fun d!1459390 () Bool)

(assert (=> d!1459390 (= (eq!843 lt!1790795 lt!1790797) (= (content!8854 (toList!5021 lt!1790795)) (content!8854 (toList!5021 lt!1790797))))))

(declare-fun bs!1027405 () Bool)

(assert (= bs!1027405 d!1459390))

(declare-fun m!5480209 () Bool)

(assert (=> bs!1027405 m!5480209))

(declare-fun m!5480211 () Bool)

(assert (=> bs!1027405 m!5480211))

(assert (=> b!4630686 d!1459390))

(declare-fun d!1459392 () Bool)

(declare-fun e!2888805 () Bool)

(assert (=> d!1459392 e!2888805))

(declare-fun res!1942882 () Bool)

(assert (=> d!1459392 (=> (not res!1942882) (not e!2888805))))

(declare-fun lt!1791235 () ListMap!4325)

(assert (=> d!1459392 (= res!1942882 (not (contains!14683 lt!1791235 key!4968)))))

(assert (=> d!1459392 (= lt!1791235 (ListMap!4326 (removePresrvNoDuplicatedKeys!272 (toList!5021 lt!1790802) key!4968)))))

(assert (=> d!1459392 (= (-!568 lt!1790802 key!4968) lt!1791235)))

(declare-fun b!4630916 () Bool)

(assert (=> b!4630916 (= e!2888805 (= ((_ map and) (content!8856 (keys!18195 lt!1790802)) ((_ map not) (store ((as const (Array K!12970 Bool)) false) key!4968 true))) (content!8856 (keys!18195 lt!1791235))))))

(assert (= (and d!1459392 res!1942882) b!4630916))

(declare-fun m!5480213 () Bool)

(assert (=> d!1459392 m!5480213))

(declare-fun m!5480215 () Bool)

(assert (=> d!1459392 m!5480215))

(declare-fun m!5480217 () Bool)

(assert (=> b!4630916 m!5480217))

(declare-fun m!5480219 () Bool)

(assert (=> b!4630916 m!5480219))

(declare-fun m!5480221 () Bool)

(assert (=> b!4630916 m!5480221))

(assert (=> b!4630916 m!5480181))

(assert (=> b!4630916 m!5480217))

(declare-fun m!5480223 () Bool)

(assert (=> b!4630916 m!5480223))

(assert (=> b!4630916 m!5480219))

(assert (=> b!4630686 d!1459392))

(declare-fun d!1459394 () Bool)

(declare-fun e!2888806 () Bool)

(assert (=> d!1459394 e!2888806))

(declare-fun res!1942884 () Bool)

(assert (=> d!1459394 (=> (not res!1942884) (not e!2888806))))

(declare-fun lt!1791238 () ListMap!4325)

(assert (=> d!1459394 (= res!1942884 (contains!14683 lt!1791238 (_1!29573 (h!57668 oldBucket!40))))))

(declare-fun lt!1791237 () List!51722)

(assert (=> d!1459394 (= lt!1791238 (ListMap!4326 lt!1791237))))

(declare-fun lt!1791239 () Unit!113256)

(declare-fun lt!1791236 () Unit!113256)

(assert (=> d!1459394 (= lt!1791239 lt!1791236)))

(assert (=> d!1459394 (= (getValueByKey!1490 lt!1791237 (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459394 (= lt!1791236 (lemmaContainsTupThenGetReturnValue!868 lt!1791237 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459394 (= lt!1791237 (insertNoDuplicatedKeys!376 (toList!5021 lt!1790797) (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459394 (= (+!1894 lt!1790797 (h!57668 oldBucket!40)) lt!1791238)))

(declare-fun b!4630917 () Bool)

(declare-fun res!1942883 () Bool)

(assert (=> b!4630917 (=> (not res!1942883) (not e!2888806))))

(assert (=> b!4630917 (= res!1942883 (= (getValueByKey!1490 (toList!5021 lt!1791238) (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40)))))))

(declare-fun b!4630918 () Bool)

(assert (=> b!4630918 (= e!2888806 (contains!14689 (toList!5021 lt!1791238) (h!57668 oldBucket!40)))))

(assert (= (and d!1459394 res!1942884) b!4630917))

(assert (= (and b!4630917 res!1942883) b!4630918))

(declare-fun m!5480225 () Bool)

(assert (=> d!1459394 m!5480225))

(declare-fun m!5480227 () Bool)

(assert (=> d!1459394 m!5480227))

(declare-fun m!5480229 () Bool)

(assert (=> d!1459394 m!5480229))

(declare-fun m!5480231 () Bool)

(assert (=> d!1459394 m!5480231))

(declare-fun m!5480233 () Bool)

(assert (=> b!4630917 m!5480233))

(declare-fun m!5480235 () Bool)

(assert (=> b!4630918 m!5480235))

(assert (=> b!4630686 d!1459394))

(declare-fun d!1459396 () Bool)

(assert (=> d!1459396 (eq!843 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 lt!1790807) Nil!51599)) (-!568 (extractMap!1584 (Cons!51599 (tuple2!52561 hash!414 (t!358774 oldBucket!40)) Nil!51599)) key!4968))))

(declare-fun lt!1791245 () Unit!113256)

(declare-fun choose!31491 ((_ BitVec 64) List!51722 List!51722 K!12970 Hashable!5925) Unit!113256)

(assert (=> d!1459396 (= lt!1791245 (choose!31491 hash!414 (t!358774 oldBucket!40) lt!1790807 key!4968 hashF!1389))))

(assert (=> d!1459396 (noDuplicateKeys!1528 (t!358774 oldBucket!40))))

(assert (=> d!1459396 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!130 hash!414 (t!358774 oldBucket!40) lt!1790807 key!4968 hashF!1389) lt!1791245)))

(declare-fun bs!1027440 () Bool)

(assert (= bs!1027440 d!1459396))

(declare-fun m!5480279 () Bool)

(assert (=> bs!1027440 m!5480279))

(declare-fun m!5480281 () Bool)

(assert (=> bs!1027440 m!5480281))

(declare-fun m!5480283 () Bool)

(assert (=> bs!1027440 m!5480283))

(assert (=> bs!1027440 m!5480279))

(assert (=> bs!1027440 m!5479615))

(assert (=> bs!1027440 m!5479615))

(assert (=> bs!1027440 m!5480281))

(declare-fun m!5480285 () Bool)

(assert (=> bs!1027440 m!5480285))

(assert (=> bs!1027440 m!5480121))

(assert (=> b!4630686 d!1459396))

(declare-fun d!1459404 () Bool)

(assert (=> d!1459404 (= (-!568 (+!1894 lt!1790810 (tuple2!52559 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40)))) key!4968) (+!1894 (-!568 lt!1790810 key!4968) (tuple2!52559 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40)))))))

(declare-fun lt!1791250 () Unit!113256)

(declare-fun choose!31492 (ListMap!4325 K!12970 V!13216 K!12970) Unit!113256)

(assert (=> d!1459404 (= lt!1791250 (choose!31492 lt!1790810 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40)) key!4968))))

(assert (=> d!1459404 (not (= (_1!29573 (h!57668 oldBucket!40)) key!4968))))

(assert (=> d!1459404 (= (addRemoveCommutativeForDiffKeys!23 lt!1790810 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40)) key!4968) lt!1791250)))

(declare-fun bs!1027442 () Bool)

(assert (= bs!1027442 d!1459404))

(declare-fun m!5480315 () Bool)

(assert (=> bs!1027442 m!5480315))

(declare-fun m!5480317 () Bool)

(assert (=> bs!1027442 m!5480317))

(assert (=> bs!1027442 m!5480317))

(declare-fun m!5480319 () Bool)

(assert (=> bs!1027442 m!5480319))

(assert (=> bs!1027442 m!5479597))

(declare-fun m!5480321 () Bool)

(assert (=> bs!1027442 m!5480321))

(assert (=> bs!1027442 m!5479597))

(assert (=> b!4630686 d!1459404))

(declare-fun d!1459412 () Bool)

(declare-fun e!2888814 () Bool)

(assert (=> d!1459412 e!2888814))

(declare-fun res!1942890 () Bool)

(assert (=> d!1459412 (=> res!1942890 e!2888814)))

(declare-fun e!2888813 () Bool)

(assert (=> d!1459412 (= res!1942890 e!2888813)))

(declare-fun res!1942891 () Bool)

(assert (=> d!1459412 (=> (not res!1942891) (not e!2888813))))

(declare-fun lt!1791258 () Bool)

(assert (=> d!1459412 (= res!1942891 (not lt!1791258))))

(declare-fun lt!1791253 () Bool)

(assert (=> d!1459412 (= lt!1791258 lt!1791253)))

(declare-fun lt!1791259 () Unit!113256)

(declare-fun e!2888816 () Unit!113256)

(assert (=> d!1459412 (= lt!1791259 e!2888816)))

(declare-fun c!792681 () Bool)

(assert (=> d!1459412 (= c!792681 lt!1791253)))

(assert (=> d!1459412 (= lt!1791253 (containsKey!2509 (toList!5021 lt!1790822) key!4968))))

(assert (=> d!1459412 (= (contains!14683 lt!1790822 key!4968) lt!1791258)))

(declare-fun b!4630929 () Bool)

(assert (=> b!4630929 (= e!2888813 (not (contains!14687 (keys!18195 lt!1790822) key!4968)))))

(declare-fun b!4630930 () Bool)

(declare-fun e!2888817 () List!51724)

(assert (=> b!4630930 (= e!2888817 (keys!18195 lt!1790822))))

(declare-fun b!4630931 () Bool)

(declare-fun e!2888815 () Bool)

(assert (=> b!4630931 (= e!2888814 e!2888815)))

(declare-fun res!1942889 () Bool)

(assert (=> b!4630931 (=> (not res!1942889) (not e!2888815))))

(assert (=> b!4630931 (= res!1942889 (isDefined!8916 (getValueByKey!1490 (toList!5021 lt!1790822) key!4968)))))

(declare-fun bm!323142 () Bool)

(declare-fun call!323147 () Bool)

(assert (=> bm!323142 (= call!323147 (contains!14687 e!2888817 key!4968))))

(declare-fun c!792680 () Bool)

(assert (=> bm!323142 (= c!792680 c!792681)))

(declare-fun b!4630932 () Bool)

(assert (=> b!4630932 false))

(declare-fun lt!1791254 () Unit!113256)

(declare-fun lt!1791260 () Unit!113256)

(assert (=> b!4630932 (= lt!1791254 lt!1791260)))

(assert (=> b!4630932 (containsKey!2509 (toList!5021 lt!1790822) key!4968)))

(assert (=> b!4630932 (= lt!1791260 (lemmaInGetKeysListThenContainsKey!673 (toList!5021 lt!1790822) key!4968))))

(declare-fun e!2888812 () Unit!113256)

(declare-fun Unit!113350 () Unit!113256)

(assert (=> b!4630932 (= e!2888812 Unit!113350)))

(declare-fun b!4630933 () Bool)

(declare-fun lt!1791255 () Unit!113256)

(assert (=> b!4630933 (= e!2888816 lt!1791255)))

(declare-fun lt!1791257 () Unit!113256)

(assert (=> b!4630933 (= lt!1791257 (lemmaContainsKeyImpliesGetValueByKeyDefined!1391 (toList!5021 lt!1790822) key!4968))))

(assert (=> b!4630933 (isDefined!8916 (getValueByKey!1490 (toList!5021 lt!1790822) key!4968))))

(declare-fun lt!1791256 () Unit!113256)

(assert (=> b!4630933 (= lt!1791256 lt!1791257)))

(assert (=> b!4630933 (= lt!1791255 (lemmaInListThenGetKeysListContains!669 (toList!5021 lt!1790822) key!4968))))

(assert (=> b!4630933 call!323147))

(declare-fun b!4630934 () Bool)

(assert (=> b!4630934 (= e!2888815 (contains!14687 (keys!18195 lt!1790822) key!4968))))

(declare-fun b!4630935 () Bool)

(assert (=> b!4630935 (= e!2888817 (getKeysList!674 (toList!5021 lt!1790822)))))

(declare-fun b!4630936 () Bool)

(assert (=> b!4630936 (= e!2888816 e!2888812)))

(declare-fun c!792679 () Bool)

(assert (=> b!4630936 (= c!792679 call!323147)))

(declare-fun b!4630937 () Bool)

(declare-fun Unit!113351 () Unit!113256)

(assert (=> b!4630937 (= e!2888812 Unit!113351)))

(assert (= (and d!1459412 c!792681) b!4630933))

(assert (= (and d!1459412 (not c!792681)) b!4630936))

(assert (= (and b!4630936 c!792679) b!4630932))

(assert (= (and b!4630936 (not c!792679)) b!4630937))

(assert (= (or b!4630933 b!4630936) bm!323142))

(assert (= (and bm!323142 c!792680) b!4630935))

(assert (= (and bm!323142 (not c!792680)) b!4630930))

(assert (= (and d!1459412 res!1942891) b!4630929))

(assert (= (and d!1459412 (not res!1942890)) b!4630931))

(assert (= (and b!4630931 res!1942889) b!4630934))

(declare-fun m!5480331 () Bool)

(assert (=> b!4630929 m!5480331))

(assert (=> b!4630929 m!5480331))

(declare-fun m!5480333 () Bool)

(assert (=> b!4630929 m!5480333))

(declare-fun m!5480335 () Bool)

(assert (=> b!4630931 m!5480335))

(assert (=> b!4630931 m!5480335))

(declare-fun m!5480337 () Bool)

(assert (=> b!4630931 m!5480337))

(assert (=> b!4630930 m!5480331))

(declare-fun m!5480339 () Bool)

(assert (=> b!4630933 m!5480339))

(assert (=> b!4630933 m!5480335))

(assert (=> b!4630933 m!5480335))

(assert (=> b!4630933 m!5480337))

(declare-fun m!5480341 () Bool)

(assert (=> b!4630933 m!5480341))

(declare-fun m!5480343 () Bool)

(assert (=> b!4630932 m!5480343))

(declare-fun m!5480345 () Bool)

(assert (=> b!4630932 m!5480345))

(declare-fun m!5480347 () Bool)

(assert (=> bm!323142 m!5480347))

(assert (=> d!1459412 m!5480343))

(declare-fun m!5480351 () Bool)

(assert (=> b!4630935 m!5480351))

(assert (=> b!4630934 m!5480331))

(assert (=> b!4630934 m!5480331))

(assert (=> b!4630934 m!5480333))

(assert (=> b!4630697 d!1459412))

(declare-fun bs!1027444 () Bool)

(declare-fun d!1459416 () Bool)

(assert (= bs!1027444 (and d!1459416 d!1459330)))

(declare-fun lambda!193658 () Int)

(assert (=> bs!1027444 (= lambda!193658 lambda!193629)))

(declare-fun bs!1027445 () Bool)

(assert (= bs!1027445 (and d!1459416 d!1459342)))

(assert (=> bs!1027445 (= lambda!193658 lambda!193631)))

(declare-fun bs!1027446 () Bool)

(assert (= bs!1027446 (and d!1459416 b!4630695)))

(assert (=> bs!1027446 (= lambda!193658 lambda!193540)))

(declare-fun bs!1027447 () Bool)

(assert (= bs!1027447 (and d!1459416 d!1459380)))

(assert (=> bs!1027447 (= lambda!193658 lambda!193649)))

(declare-fun bs!1027448 () Bool)

(assert (= bs!1027448 (and d!1459416 d!1459374)))

(assert (=> bs!1027448 (= lambda!193658 lambda!193648)))

(declare-fun bs!1027449 () Bool)

(assert (= bs!1027449 (and d!1459416 d!1459286)))

(assert (=> bs!1027449 (= lambda!193658 lambda!193543)))

(declare-fun lt!1791263 () ListMap!4325)

(assert (=> d!1459416 (invariantList!1224 (toList!5021 lt!1791263))))

(declare-fun e!2888819 () ListMap!4325)

(assert (=> d!1459416 (= lt!1791263 e!2888819)))

(declare-fun c!792682 () Bool)

(assert (=> d!1459416 (= c!792682 ((_ is Cons!51599) lt!1790806))))

(assert (=> d!1459416 (forall!10862 lt!1790806 lambda!193658)))

(assert (=> d!1459416 (= (extractMap!1584 lt!1790806) lt!1791263)))

(declare-fun b!4630939 () Bool)

(assert (=> b!4630939 (= e!2888819 (addToMapMapFromBucket!989 (_2!29574 (h!57669 lt!1790806)) (extractMap!1584 (t!358775 lt!1790806))))))

(declare-fun b!4630940 () Bool)

(assert (=> b!4630940 (= e!2888819 (ListMap!4326 Nil!51598))))

(assert (= (and d!1459416 c!792682) b!4630939))

(assert (= (and d!1459416 (not c!792682)) b!4630940))

(declare-fun m!5480375 () Bool)

(assert (=> d!1459416 m!5480375))

(declare-fun m!5480377 () Bool)

(assert (=> d!1459416 m!5480377))

(declare-fun m!5480379 () Bool)

(assert (=> b!4630939 m!5480379))

(assert (=> b!4630939 m!5480379))

(declare-fun m!5480381 () Bool)

(assert (=> b!4630939 m!5480381))

(assert (=> b!4630697 d!1459416))

(declare-fun b!4630945 () Bool)

(declare-fun e!2888821 () List!51722)

(assert (=> b!4630945 (= e!2888821 (Cons!51598 (h!57668 oldBucket!40) (removePairForKey!1151 (t!358774 oldBucket!40) key!4968)))))

(declare-fun b!4630943 () Bool)

(declare-fun e!2888822 () List!51722)

(assert (=> b!4630943 (= e!2888822 (t!358774 oldBucket!40))))

(declare-fun d!1459422 () Bool)

(declare-fun lt!1791268 () List!51722)

(assert (=> d!1459422 (not (containsKey!2508 lt!1791268 key!4968))))

(assert (=> d!1459422 (= lt!1791268 e!2888822)))

(declare-fun c!792684 () Bool)

(assert (=> d!1459422 (= c!792684 (and ((_ is Cons!51598) oldBucket!40) (= (_1!29573 (h!57668 oldBucket!40)) key!4968)))))

(assert (=> d!1459422 (noDuplicateKeys!1528 oldBucket!40)))

(assert (=> d!1459422 (= (removePairForKey!1151 oldBucket!40 key!4968) lt!1791268)))

(declare-fun b!4630946 () Bool)

(assert (=> b!4630946 (= e!2888821 Nil!51598)))

(declare-fun b!4630944 () Bool)

(assert (=> b!4630944 (= e!2888822 e!2888821)))

(declare-fun c!792683 () Bool)

(assert (=> b!4630944 (= c!792683 ((_ is Cons!51598) oldBucket!40))))

(assert (= (and d!1459422 c!792684) b!4630943))

(assert (= (and d!1459422 (not c!792684)) b!4630944))

(assert (= (and b!4630944 c!792683) b!4630945))

(assert (= (and b!4630944 (not c!792683)) b!4630946))

(assert (=> b!4630945 m!5479619))

(declare-fun m!5480383 () Bool)

(assert (=> d!1459422 m!5480383))

(assert (=> d!1459422 m!5479517))

(assert (=> b!4630687 d!1459422))

(declare-fun d!1459424 () Bool)

(declare-fun res!1942899 () Bool)

(declare-fun e!2888827 () Bool)

(assert (=> d!1459424 (=> res!1942899 e!2888827)))

(assert (=> d!1459424 (= res!1942899 ((_ is Nil!51599) lt!1790823))))

(assert (=> d!1459424 (= (forall!10862 lt!1790823 lambda!193540) e!2888827)))

(declare-fun b!4630951 () Bool)

(declare-fun e!2888828 () Bool)

(assert (=> b!4630951 (= e!2888827 e!2888828)))

(declare-fun res!1942900 () Bool)

(assert (=> b!4630951 (=> (not res!1942900) (not e!2888828))))

(declare-fun dynLambda!21517 (Int tuple2!52560) Bool)

(assert (=> b!4630951 (= res!1942900 (dynLambda!21517 lambda!193540 (h!57669 lt!1790823)))))

(declare-fun b!4630952 () Bool)

(assert (=> b!4630952 (= e!2888828 (forall!10862 (t!358775 lt!1790823) lambda!193540))))

(assert (= (and d!1459424 (not res!1942899)) b!4630951))

(assert (= (and b!4630951 res!1942900) b!4630952))

(declare-fun b_lambda!170869 () Bool)

(assert (=> (not b_lambda!170869) (not b!4630951)))

(declare-fun m!5480385 () Bool)

(assert (=> b!4630951 m!5480385))

(declare-fun m!5480387 () Bool)

(assert (=> b!4630952 m!5480387))

(assert (=> b!4630694 d!1459424))

(declare-fun d!1459426 () Bool)

(assert (=> d!1459426 (= (eq!843 lt!1790804 lt!1790801) (= (content!8854 (toList!5021 lt!1790804)) (content!8854 (toList!5021 lt!1790801))))))

(declare-fun bs!1027450 () Bool)

(assert (= bs!1027450 d!1459426))

(declare-fun m!5480389 () Bool)

(assert (=> bs!1027450 m!5480389))

(declare-fun m!5480391 () Bool)

(assert (=> bs!1027450 m!5480391))

(assert (=> b!4630684 d!1459426))

(declare-fun d!1459428 () Bool)

(assert (=> d!1459428 (= (eq!843 lt!1790803 lt!1790804) (= (content!8854 (toList!5021 lt!1790803)) (content!8854 (toList!5021 lt!1790804))))))

(declare-fun bs!1027451 () Bool)

(assert (= bs!1027451 d!1459428))

(declare-fun m!5480393 () Bool)

(assert (=> bs!1027451 m!5480393))

(assert (=> bs!1027451 m!5480389))

(assert (=> b!4630684 d!1459428))

(declare-fun d!1459430 () Bool)

(declare-fun e!2888829 () Bool)

(assert (=> d!1459430 e!2888829))

(declare-fun res!1942901 () Bool)

(assert (=> d!1459430 (=> (not res!1942901) (not e!2888829))))

(declare-fun lt!1791269 () ListMap!4325)

(assert (=> d!1459430 (= res!1942901 (not (contains!14683 lt!1791269 key!4968)))))

(assert (=> d!1459430 (= lt!1791269 (ListMap!4326 (removePresrvNoDuplicatedKeys!272 (toList!5021 lt!1790822) key!4968)))))

(assert (=> d!1459430 (= (-!568 lt!1790822 key!4968) lt!1791269)))

(declare-fun b!4630953 () Bool)

(assert (=> b!4630953 (= e!2888829 (= ((_ map and) (content!8856 (keys!18195 lt!1790822)) ((_ map not) (store ((as const (Array K!12970 Bool)) false) key!4968 true))) (content!8856 (keys!18195 lt!1791269))))))

(assert (= (and d!1459430 res!1942901) b!4630953))

(declare-fun m!5480395 () Bool)

(assert (=> d!1459430 m!5480395))

(declare-fun m!5480397 () Bool)

(assert (=> d!1459430 m!5480397))

(assert (=> b!4630953 m!5480331))

(declare-fun m!5480399 () Bool)

(assert (=> b!4630953 m!5480399))

(declare-fun m!5480401 () Bool)

(assert (=> b!4630953 m!5480401))

(assert (=> b!4630953 m!5480181))

(assert (=> b!4630953 m!5480331))

(declare-fun m!5480403 () Bool)

(assert (=> b!4630953 m!5480403))

(assert (=> b!4630953 m!5480399))

(assert (=> b!4630684 d!1459430))

(declare-fun d!1459432 () Bool)

(assert (=> d!1459432 (eq!843 (-!568 lt!1790802 key!4968) (-!568 lt!1790822 key!4968))))

(declare-fun lt!1791272 () Unit!113256)

(declare-fun choose!31493 (ListMap!4325 ListMap!4325 K!12970) Unit!113256)

(assert (=> d!1459432 (= lt!1791272 (choose!31493 lt!1790802 lt!1790822 key!4968))))

(assert (=> d!1459432 (eq!843 lt!1790802 lt!1790822)))

(assert (=> d!1459432 (= (lemmaRemovePreservesEq!24 lt!1790802 lt!1790822 key!4968) lt!1791272)))

(declare-fun bs!1027452 () Bool)

(assert (= bs!1027452 d!1459432))

(assert (=> bs!1027452 m!5479609))

(assert (=> bs!1027452 m!5479555))

(declare-fun m!5480405 () Bool)

(assert (=> bs!1027452 m!5480405))

(assert (=> bs!1027452 m!5479609))

(assert (=> bs!1027452 m!5479555))

(declare-fun m!5480407 () Bool)

(assert (=> bs!1027452 m!5480407))

(declare-fun m!5480409 () Bool)

(assert (=> bs!1027452 m!5480409))

(assert (=> b!4630684 d!1459432))

(declare-fun bs!1027454 () Bool)

(declare-fun d!1459434 () Bool)

(assert (= bs!1027454 (and d!1459434 d!1459330)))

(declare-fun lambda!193661 () Int)

(assert (=> bs!1027454 (= lambda!193661 lambda!193629)))

(declare-fun bs!1027455 () Bool)

(assert (= bs!1027455 (and d!1459434 d!1459342)))

(assert (=> bs!1027455 (= lambda!193661 lambda!193631)))

(declare-fun bs!1027456 () Bool)

(assert (= bs!1027456 (and d!1459434 b!4630695)))

(assert (=> bs!1027456 (= lambda!193661 lambda!193540)))

(declare-fun bs!1027458 () Bool)

(assert (= bs!1027458 (and d!1459434 d!1459380)))

(assert (=> bs!1027458 (= lambda!193661 lambda!193649)))

(declare-fun bs!1027459 () Bool)

(assert (= bs!1027459 (and d!1459434 d!1459374)))

(assert (=> bs!1027459 (= lambda!193661 lambda!193648)))

(declare-fun bs!1027460 () Bool)

(assert (= bs!1027460 (and d!1459434 d!1459416)))

(assert (=> bs!1027460 (= lambda!193661 lambda!193658)))

(declare-fun bs!1027461 () Bool)

(assert (= bs!1027461 (and d!1459434 d!1459286)))

(assert (=> bs!1027461 (= lambda!193661 lambda!193543)))

(assert (=> d!1459434 (contains!14685 lt!1790814 (hash!3560 hashF!1389 key!4968))))

(declare-fun lt!1791282 () Unit!113256)

(declare-fun choose!31494 (ListLongMap!3611 K!12970 Hashable!5925) Unit!113256)

(assert (=> d!1459434 (= lt!1791282 (choose!31494 lt!1790814 key!4968 hashF!1389))))

(assert (=> d!1459434 (forall!10862 (toList!5022 lt!1790814) lambda!193661)))

(assert (=> d!1459434 (= (lemmaInGenMapThenLongMapContainsHash!526 lt!1790814 key!4968 hashF!1389) lt!1791282)))

(declare-fun bs!1027462 () Bool)

(assert (= bs!1027462 d!1459434))

(assert (=> bs!1027462 m!5479549))

(assert (=> bs!1027462 m!5479549))

(declare-fun m!5480437 () Bool)

(assert (=> bs!1027462 m!5480437))

(declare-fun m!5480439 () Bool)

(assert (=> bs!1027462 m!5480439))

(declare-fun m!5480441 () Bool)

(assert (=> bs!1027462 m!5480441))

(assert (=> b!4630695 d!1459434))

(declare-fun d!1459444 () Bool)

(assert (=> d!1459444 (dynLambda!21517 lambda!193540 lt!1790809)))

(declare-fun lt!1791287 () Unit!113256)

(declare-fun choose!31495 (List!51723 Int tuple2!52560) Unit!113256)

(assert (=> d!1459444 (= lt!1791287 (choose!31495 lt!1790806 lambda!193540 lt!1790809))))

(declare-fun e!2888839 () Bool)

(assert (=> d!1459444 e!2888839))

(declare-fun res!1942908 () Bool)

(assert (=> d!1459444 (=> (not res!1942908) (not e!2888839))))

(assert (=> d!1459444 (= res!1942908 (forall!10862 lt!1790806 lambda!193540))))

(assert (=> d!1459444 (= (forallContained!3092 lt!1790806 lambda!193540 lt!1790809) lt!1791287)))

(declare-fun b!4630968 () Bool)

(assert (=> b!4630968 (= e!2888839 (contains!14684 lt!1790806 lt!1790809))))

(assert (= (and d!1459444 res!1942908) b!4630968))

(declare-fun b_lambda!170871 () Bool)

(assert (=> (not b_lambda!170871) (not d!1459444)))

(declare-fun m!5480453 () Bool)

(assert (=> d!1459444 m!5480453))

(declare-fun m!5480455 () Bool)

(assert (=> d!1459444 m!5480455))

(declare-fun m!5480457 () Bool)

(assert (=> d!1459444 m!5480457))

(assert (=> b!4630968 m!5479545))

(assert (=> b!4630695 d!1459444))

(declare-fun d!1459452 () Bool)

(declare-fun e!2888850 () Bool)

(assert (=> d!1459452 e!2888850))

(declare-fun res!1942917 () Bool)

(assert (=> d!1459452 (=> res!1942917 e!2888850)))

(declare-fun lt!1791301 () Bool)

(assert (=> d!1459452 (= res!1942917 (not lt!1791301))))

(declare-fun lt!1791302 () Bool)

(assert (=> d!1459452 (= lt!1791301 lt!1791302)))

(declare-fun lt!1791299 () Unit!113256)

(declare-fun e!2888851 () Unit!113256)

(assert (=> d!1459452 (= lt!1791299 e!2888851)))

(declare-fun c!792691 () Bool)

(assert (=> d!1459452 (= c!792691 lt!1791302)))

(declare-fun containsKey!2511 (List!51723 (_ BitVec 64)) Bool)

(assert (=> d!1459452 (= lt!1791302 (containsKey!2511 (toList!5022 lt!1790814) lt!1790820))))

(assert (=> d!1459452 (= (contains!14685 lt!1790814 lt!1790820) lt!1791301)))

(declare-fun b!4630981 () Bool)

(declare-fun lt!1791300 () Unit!113256)

(assert (=> b!4630981 (= e!2888851 lt!1791300)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1393 (List!51723 (_ BitVec 64)) Unit!113256)

(assert (=> b!4630981 (= lt!1791300 (lemmaContainsKeyImpliesGetValueByKeyDefined!1393 (toList!5022 lt!1790814) lt!1790820))))

(declare-datatypes ((Option!11653 0))(
  ( (None!11652) (Some!11652 (v!45822 List!51722)) )
))
(declare-fun isDefined!8918 (Option!11653) Bool)

(declare-fun getValueByKey!1491 (List!51723 (_ BitVec 64)) Option!11653)

(assert (=> b!4630981 (isDefined!8918 (getValueByKey!1491 (toList!5022 lt!1790814) lt!1790820))))

(declare-fun b!4630982 () Bool)

(declare-fun Unit!113363 () Unit!113256)

(assert (=> b!4630982 (= e!2888851 Unit!113363)))

(declare-fun b!4630983 () Bool)

(assert (=> b!4630983 (= e!2888850 (isDefined!8918 (getValueByKey!1491 (toList!5022 lt!1790814) lt!1790820)))))

(assert (= (and d!1459452 c!792691) b!4630981))

(assert (= (and d!1459452 (not c!792691)) b!4630982))

(assert (= (and d!1459452 (not res!1942917)) b!4630983))

(declare-fun m!5480469 () Bool)

(assert (=> d!1459452 m!5480469))

(declare-fun m!5480471 () Bool)

(assert (=> b!4630981 m!5480471))

(declare-fun m!5480473 () Bool)

(assert (=> b!4630981 m!5480473))

(assert (=> b!4630981 m!5480473))

(declare-fun m!5480475 () Bool)

(assert (=> b!4630981 m!5480475))

(assert (=> b!4630983 m!5480473))

(assert (=> b!4630983 m!5480473))

(assert (=> b!4630983 m!5480475))

(assert (=> b!4630695 d!1459452))

(declare-fun d!1459466 () Bool)

(assert (=> d!1459466 (containsKey!2508 oldBucket!40 key!4968)))

(declare-fun lt!1791305 () Unit!113256)

(declare-fun choose!31496 (List!51722 K!12970 Hashable!5925) Unit!113256)

(assert (=> d!1459466 (= lt!1791305 (choose!31496 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1459466 (noDuplicateKeys!1528 oldBucket!40)))

(assert (=> d!1459466 (= (lemmaGetPairDefinedThenContainsKey!74 oldBucket!40 key!4968 hashF!1389) lt!1791305)))

(declare-fun bs!1027483 () Bool)

(assert (= bs!1027483 d!1459466))

(assert (=> bs!1027483 m!5479529))

(declare-fun m!5480477 () Bool)

(assert (=> bs!1027483 m!5480477))

(assert (=> bs!1027483 m!5479517))

(assert (=> b!4630695 d!1459466))

(declare-fun d!1459468 () Bool)

(assert (=> d!1459468 (contains!14684 (toList!5022 lt!1790814) (tuple2!52561 lt!1790820 lt!1790819))))

(declare-fun lt!1791310 () Unit!113256)

(declare-fun choose!31497 (ListLongMap!3611 (_ BitVec 64) List!51722) Unit!113256)

(assert (=> d!1459468 (= lt!1791310 (choose!31497 lt!1790814 lt!1790820 lt!1790819))))

(assert (=> d!1459468 (contains!14685 lt!1790814 lt!1790820)))

(assert (=> d!1459468 (= (lemmaGetValueImpliesTupleContained!125 lt!1790814 lt!1790820 lt!1790819) lt!1791310)))

(declare-fun bs!1027484 () Bool)

(assert (= bs!1027484 d!1459468))

(declare-fun m!5480479 () Bool)

(assert (=> bs!1027484 m!5480479))

(declare-fun m!5480481 () Bool)

(assert (=> bs!1027484 m!5480481))

(assert (=> bs!1027484 m!5479525))

(assert (=> b!4630695 d!1459468))

(declare-fun d!1459470 () Bool)

(declare-fun res!1942934 () Bool)

(declare-fun e!2888871 () Bool)

(assert (=> d!1459470 (=> res!1942934 e!2888871)))

(assert (=> d!1459470 (= res!1942934 (and ((_ is Cons!51598) (t!358774 oldBucket!40)) (= (_1!29573 (h!57668 (t!358774 oldBucket!40))) key!4968)))))

(assert (=> d!1459470 (= (containsKey!2508 (t!358774 oldBucket!40) key!4968) e!2888871)))

(declare-fun b!4631013 () Bool)

(declare-fun e!2888872 () Bool)

(assert (=> b!4631013 (= e!2888871 e!2888872)))

(declare-fun res!1942935 () Bool)

(assert (=> b!4631013 (=> (not res!1942935) (not e!2888872))))

(assert (=> b!4631013 (= res!1942935 ((_ is Cons!51598) (t!358774 oldBucket!40)))))

(declare-fun b!4631014 () Bool)

(assert (=> b!4631014 (= e!2888872 (containsKey!2508 (t!358774 (t!358774 oldBucket!40)) key!4968))))

(assert (= (and d!1459470 (not res!1942934)) b!4631013))

(assert (= (and b!4631013 res!1942935) b!4631014))

(declare-fun m!5480497 () Bool)

(assert (=> b!4631014 m!5480497))

(assert (=> b!4630695 d!1459470))

(declare-fun b!4631037 () Bool)

(declare-fun res!1942952 () Bool)

(declare-fun e!2888891 () Bool)

(assert (=> b!4631037 (=> (not res!1942952) (not e!2888891))))

(declare-fun lt!1791319 () Option!11650)

(declare-fun get!17126 (Option!11650) tuple2!52558)

(assert (=> b!4631037 (= res!1942952 (= (_1!29573 (get!17126 lt!1791319)) key!4968))))

(declare-fun d!1459474 () Bool)

(declare-fun e!2888892 () Bool)

(assert (=> d!1459474 e!2888892))

(declare-fun res!1942951 () Bool)

(assert (=> d!1459474 (=> res!1942951 e!2888892)))

(declare-fun e!2888889 () Bool)

(assert (=> d!1459474 (= res!1942951 e!2888889)))

(declare-fun res!1942953 () Bool)

(assert (=> d!1459474 (=> (not res!1942953) (not e!2888889))))

(declare-fun isEmpty!28949 (Option!11650) Bool)

(assert (=> d!1459474 (= res!1942953 (isEmpty!28949 lt!1791319))))

(declare-fun e!2888893 () Option!11650)

(assert (=> d!1459474 (= lt!1791319 e!2888893)))

(declare-fun c!792703 () Bool)

(assert (=> d!1459474 (= c!792703 (and ((_ is Cons!51598) lt!1790819) (= (_1!29573 (h!57668 lt!1790819)) key!4968)))))

(assert (=> d!1459474 (noDuplicateKeys!1528 lt!1790819)))

(assert (=> d!1459474 (= (getPair!320 lt!1790819 key!4968) lt!1791319)))

(declare-fun b!4631038 () Bool)

(assert (=> b!4631038 (= e!2888892 e!2888891)))

(declare-fun res!1942950 () Bool)

(assert (=> b!4631038 (=> (not res!1942950) (not e!2888891))))

(assert (=> b!4631038 (= res!1942950 (isDefined!8915 lt!1791319))))

(declare-fun b!4631039 () Bool)

(assert (=> b!4631039 (= e!2888889 (not (containsKey!2508 lt!1790819 key!4968)))))

(declare-fun b!4631040 () Bool)

(declare-fun e!2888890 () Option!11650)

(assert (=> b!4631040 (= e!2888890 None!11649)))

(declare-fun b!4631041 () Bool)

(assert (=> b!4631041 (= e!2888890 (getPair!320 (t!358774 lt!1790819) key!4968))))

(declare-fun b!4631042 () Bool)

(assert (=> b!4631042 (= e!2888893 (Some!11649 (h!57668 lt!1790819)))))

(declare-fun b!4631043 () Bool)

(assert (=> b!4631043 (= e!2888893 e!2888890)))

(declare-fun c!792702 () Bool)

(assert (=> b!4631043 (= c!792702 ((_ is Cons!51598) lt!1790819))))

(declare-fun b!4631044 () Bool)

(assert (=> b!4631044 (= e!2888891 (contains!14689 lt!1790819 (get!17126 lt!1791319)))))

(assert (= (and d!1459474 c!792703) b!4631042))

(assert (= (and d!1459474 (not c!792703)) b!4631043))

(assert (= (and b!4631043 c!792702) b!4631041))

(assert (= (and b!4631043 (not c!792702)) b!4631040))

(assert (= (and d!1459474 res!1942953) b!4631039))

(assert (= (and d!1459474 (not res!1942951)) b!4631038))

(assert (= (and b!4631038 res!1942950) b!4631037))

(assert (= (and b!4631037 res!1942952) b!4631044))

(declare-fun m!5480505 () Bool)

(assert (=> b!4631041 m!5480505))

(declare-fun m!5480507 () Bool)

(assert (=> b!4631037 m!5480507))

(declare-fun m!5480509 () Bool)

(assert (=> d!1459474 m!5480509))

(declare-fun m!5480511 () Bool)

(assert (=> d!1459474 m!5480511))

(declare-fun m!5480513 () Bool)

(assert (=> b!4631038 m!5480513))

(assert (=> b!4631044 m!5480507))

(assert (=> b!4631044 m!5480507))

(declare-fun m!5480515 () Bool)

(assert (=> b!4631044 m!5480515))

(declare-fun m!5480517 () Bool)

(assert (=> b!4631039 m!5480517))

(assert (=> b!4630695 d!1459474))

(declare-fun d!1459480 () Bool)

(declare-fun res!1942956 () Bool)

(declare-fun e!2888896 () Bool)

(assert (=> d!1459480 (=> res!1942956 e!2888896)))

(assert (=> d!1459480 (= res!1942956 (and ((_ is Cons!51598) oldBucket!40) (= (_1!29573 (h!57668 oldBucket!40)) key!4968)))))

(assert (=> d!1459480 (= (containsKey!2508 oldBucket!40 key!4968) e!2888896)))

(declare-fun b!4631047 () Bool)

(declare-fun e!2888897 () Bool)

(assert (=> b!4631047 (= e!2888896 e!2888897)))

(declare-fun res!1942957 () Bool)

(assert (=> b!4631047 (=> (not res!1942957) (not e!2888897))))

(assert (=> b!4631047 (= res!1942957 ((_ is Cons!51598) oldBucket!40))))

(declare-fun b!4631048 () Bool)

(assert (=> b!4631048 (= e!2888897 (containsKey!2508 (t!358774 oldBucket!40) key!4968))))

(assert (= (and d!1459480 (not res!1942956)) b!4631047))

(assert (= (and b!4631047 res!1942957) b!4631048))

(assert (=> b!4631048 m!5479543))

(assert (=> b!4630695 d!1459480))

(declare-fun d!1459482 () Bool)

(declare-fun lt!1791323 () Bool)

(declare-fun content!8858 (List!51723) (InoxSet tuple2!52560))

(assert (=> d!1459482 (= lt!1791323 (select (content!8858 lt!1790806) lt!1790809))))

(declare-fun e!2888902 () Bool)

(assert (=> d!1459482 (= lt!1791323 e!2888902)))

(declare-fun res!1942962 () Bool)

(assert (=> d!1459482 (=> (not res!1942962) (not e!2888902))))

(assert (=> d!1459482 (= res!1942962 ((_ is Cons!51599) lt!1790806))))

(assert (=> d!1459482 (= (contains!14684 lt!1790806 lt!1790809) lt!1791323)))

(declare-fun b!4631053 () Bool)

(declare-fun e!2888903 () Bool)

(assert (=> b!4631053 (= e!2888902 e!2888903)))

(declare-fun res!1942963 () Bool)

(assert (=> b!4631053 (=> res!1942963 e!2888903)))

(assert (=> b!4631053 (= res!1942963 (= (h!57669 lt!1790806) lt!1790809))))

(declare-fun b!4631054 () Bool)

(assert (=> b!4631054 (= e!2888903 (contains!14684 (t!358775 lt!1790806) lt!1790809))))

(assert (= (and d!1459482 res!1942962) b!4631053))

(assert (= (and b!4631053 (not res!1942963)) b!4631054))

(declare-fun m!5480525 () Bool)

(assert (=> d!1459482 m!5480525))

(declare-fun m!5480527 () Bool)

(assert (=> d!1459482 m!5480527))

(declare-fun m!5480529 () Bool)

(assert (=> b!4631054 m!5480529))

(assert (=> b!4630695 d!1459482))

(declare-fun d!1459486 () Bool)

(assert (=> d!1459486 (= (isDefined!8915 (getPair!320 lt!1790819 key!4968)) (not (isEmpty!28949 (getPair!320 lt!1790819 key!4968))))))

(declare-fun bs!1027493 () Bool)

(assert (= bs!1027493 d!1459486))

(assert (=> bs!1027493 m!5479531))

(declare-fun m!5480531 () Bool)

(assert (=> bs!1027493 m!5480531))

(assert (=> b!4630695 d!1459486))

(declare-fun d!1459488 () Bool)

(declare-fun get!17127 (Option!11653) List!51722)

(assert (=> d!1459488 (= (apply!12193 lt!1790814 lt!1790820) (get!17127 (getValueByKey!1491 (toList!5022 lt!1790814) lt!1790820)))))

(declare-fun bs!1027494 () Bool)

(assert (= bs!1027494 d!1459488))

(assert (=> bs!1027494 m!5480473))

(assert (=> bs!1027494 m!5480473))

(declare-fun m!5480533 () Bool)

(assert (=> bs!1027494 m!5480533))

(assert (=> b!4630695 d!1459488))

(declare-fun bs!1027503 () Bool)

(declare-fun d!1459490 () Bool)

(assert (= bs!1027503 (and d!1459490 d!1459330)))

(declare-fun lambda!193679 () Int)

(assert (=> bs!1027503 (= lambda!193679 lambda!193629)))

(declare-fun bs!1027504 () Bool)

(assert (= bs!1027504 (and d!1459490 d!1459342)))

(assert (=> bs!1027504 (= lambda!193679 lambda!193631)))

(declare-fun bs!1027505 () Bool)

(assert (= bs!1027505 (and d!1459490 d!1459380)))

(assert (=> bs!1027505 (= lambda!193679 lambda!193649)))

(declare-fun bs!1027506 () Bool)

(assert (= bs!1027506 (and d!1459490 d!1459374)))

(assert (=> bs!1027506 (= lambda!193679 lambda!193648)))

(declare-fun bs!1027507 () Bool)

(assert (= bs!1027507 (and d!1459490 b!4630695)))

(assert (=> bs!1027507 (= lambda!193679 lambda!193540)))

(declare-fun bs!1027508 () Bool)

(assert (= bs!1027508 (and d!1459490 d!1459434)))

(assert (=> bs!1027508 (= lambda!193679 lambda!193661)))

(declare-fun bs!1027509 () Bool)

(assert (= bs!1027509 (and d!1459490 d!1459416)))

(assert (=> bs!1027509 (= lambda!193679 lambda!193658)))

(declare-fun bs!1027510 () Bool)

(assert (= bs!1027510 (and d!1459490 d!1459286)))

(assert (=> bs!1027510 (= lambda!193679 lambda!193543)))

(declare-fun b!4631075 () Bool)

(declare-fun res!1942986 () Bool)

(declare-fun e!2888914 () Bool)

(assert (=> b!4631075 (=> (not res!1942986) (not e!2888914))))

(declare-fun allKeysSameHashInMap!1549 (ListLongMap!3611 Hashable!5925) Bool)

(assert (=> b!4631075 (= res!1942986 (allKeysSameHashInMap!1549 lt!1790814 hashF!1389))))

(declare-fun b!4631076 () Bool)

(declare-fun res!1942984 () Bool)

(assert (=> b!4631076 (=> (not res!1942984) (not e!2888914))))

(assert (=> b!4631076 (= res!1942984 (contains!14683 (extractMap!1584 (toList!5022 lt!1790814)) key!4968))))

(declare-fun lt!1791365 () List!51722)

(declare-fun b!4631078 () Bool)

(declare-fun e!2888915 () Bool)

(declare-fun lt!1791370 () (_ BitVec 64))

(assert (=> b!4631078 (= e!2888915 (= (getValueByKey!1491 (toList!5022 lt!1790814) lt!1791370) (Some!11652 lt!1791365)))))

(declare-fun b!4631077 () Bool)

(assert (=> b!4631077 (= e!2888914 (isDefined!8915 (getPair!320 (apply!12193 lt!1790814 (hash!3560 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1791371 () Unit!113256)

(assert (=> b!4631077 (= lt!1791371 (forallContained!3092 (toList!5022 lt!1790814) lambda!193679 (tuple2!52561 (hash!3560 hashF!1389 key!4968) (apply!12193 lt!1790814 (hash!3560 hashF!1389 key!4968)))))))

(declare-fun lt!1791368 () Unit!113256)

(declare-fun lt!1791367 () Unit!113256)

(assert (=> b!4631077 (= lt!1791368 lt!1791367)))

(assert (=> b!4631077 (contains!14684 (toList!5022 lt!1790814) (tuple2!52561 lt!1791370 lt!1791365))))

(assert (=> b!4631077 (= lt!1791367 (lemmaGetValueImpliesTupleContained!125 lt!1790814 lt!1791370 lt!1791365))))

(assert (=> b!4631077 e!2888915))

(declare-fun res!1942987 () Bool)

(assert (=> b!4631077 (=> (not res!1942987) (not e!2888915))))

(assert (=> b!4631077 (= res!1942987 (contains!14685 lt!1790814 lt!1791370))))

(assert (=> b!4631077 (= lt!1791365 (apply!12193 lt!1790814 (hash!3560 hashF!1389 key!4968)))))

(assert (=> b!4631077 (= lt!1791370 (hash!3560 hashF!1389 key!4968))))

(declare-fun lt!1791364 () Unit!113256)

(declare-fun lt!1791369 () Unit!113256)

(assert (=> b!4631077 (= lt!1791364 lt!1791369)))

(assert (=> b!4631077 (contains!14685 lt!1790814 (hash!3560 hashF!1389 key!4968))))

(assert (=> b!4631077 (= lt!1791369 (lemmaInGenMapThenLongMapContainsHash!526 lt!1790814 key!4968 hashF!1389))))

(assert (=> d!1459490 e!2888914))

(declare-fun res!1942985 () Bool)

(assert (=> d!1459490 (=> (not res!1942985) (not e!2888914))))

(assert (=> d!1459490 (= res!1942985 (forall!10862 (toList!5022 lt!1790814) lambda!193679))))

(declare-fun lt!1791366 () Unit!113256)

(declare-fun choose!31500 (ListLongMap!3611 K!12970 Hashable!5925) Unit!113256)

(assert (=> d!1459490 (= lt!1791366 (choose!31500 lt!1790814 key!4968 hashF!1389))))

(assert (=> d!1459490 (forall!10862 (toList!5022 lt!1790814) lambda!193679)))

(assert (=> d!1459490 (= (lemmaInGenMapThenGetPairDefined!116 lt!1790814 key!4968 hashF!1389) lt!1791366)))

(assert (= (and d!1459490 res!1942985) b!4631075))

(assert (= (and b!4631075 res!1942986) b!4631076))

(assert (= (and b!4631076 res!1942984) b!4631077))

(assert (= (and b!4631077 res!1942987) b!4631078))

(declare-fun m!5480565 () Bool)

(assert (=> b!4631076 m!5480565))

(assert (=> b!4631076 m!5480565))

(declare-fun m!5480567 () Bool)

(assert (=> b!4631076 m!5480567))

(declare-fun m!5480569 () Bool)

(assert (=> b!4631075 m!5480569))

(declare-fun m!5480571 () Bool)

(assert (=> b!4631078 m!5480571))

(assert (=> b!4631077 m!5479549))

(assert (=> b!4631077 m!5480437))

(assert (=> b!4631077 m!5479549))

(declare-fun m!5480573 () Bool)

(assert (=> b!4631077 m!5480573))

(assert (=> b!4631077 m!5479549))

(declare-fun m!5480575 () Bool)

(assert (=> b!4631077 m!5480575))

(declare-fun m!5480577 () Bool)

(assert (=> b!4631077 m!5480577))

(declare-fun m!5480579 () Bool)

(assert (=> b!4631077 m!5480579))

(assert (=> b!4631077 m!5480573))

(declare-fun m!5480581 () Bool)

(assert (=> b!4631077 m!5480581))

(declare-fun m!5480583 () Bool)

(assert (=> b!4631077 m!5480583))

(assert (=> b!4631077 m!5479537))

(assert (=> b!4631077 m!5480581))

(declare-fun m!5480585 () Bool)

(assert (=> b!4631077 m!5480585))

(declare-fun m!5480587 () Bool)

(assert (=> d!1459490 m!5480587))

(declare-fun m!5480589 () Bool)

(assert (=> d!1459490 m!5480589))

(assert (=> d!1459490 m!5480587))

(assert (=> b!4630695 d!1459490))

(declare-fun b!4631082 () Bool)

(declare-fun e!2888916 () List!51722)

(assert (=> b!4631082 (= e!2888916 (Cons!51598 (h!57668 (t!358774 oldBucket!40)) (removePairForKey!1151 (t!358774 (t!358774 oldBucket!40)) key!4968)))))

(declare-fun b!4631080 () Bool)

(declare-fun e!2888917 () List!51722)

(assert (=> b!4631080 (= e!2888917 (t!358774 (t!358774 oldBucket!40)))))

(declare-fun d!1459496 () Bool)

(declare-fun lt!1791375 () List!51722)

(assert (=> d!1459496 (not (containsKey!2508 lt!1791375 key!4968))))

(assert (=> d!1459496 (= lt!1791375 e!2888917)))

(declare-fun c!792705 () Bool)

(assert (=> d!1459496 (= c!792705 (and ((_ is Cons!51598) (t!358774 oldBucket!40)) (= (_1!29573 (h!57668 (t!358774 oldBucket!40))) key!4968)))))

(assert (=> d!1459496 (noDuplicateKeys!1528 (t!358774 oldBucket!40))))

(assert (=> d!1459496 (= (removePairForKey!1151 (t!358774 oldBucket!40) key!4968) lt!1791375)))

(declare-fun b!4631083 () Bool)

(assert (=> b!4631083 (= e!2888916 Nil!51598)))

(declare-fun b!4631081 () Bool)

(assert (=> b!4631081 (= e!2888917 e!2888916)))

(declare-fun c!792704 () Bool)

(assert (=> b!4631081 (= c!792704 ((_ is Cons!51598) (t!358774 oldBucket!40)))))

(assert (= (and d!1459496 c!792705) b!4631080))

(assert (= (and d!1459496 (not c!792705)) b!4631081))

(assert (= (and b!4631081 c!792704) b!4631082))

(assert (= (and b!4631081 (not c!792704)) b!4631083))

(declare-fun m!5480591 () Bool)

(assert (=> b!4631082 m!5480591))

(declare-fun m!5480593 () Bool)

(assert (=> d!1459496 m!5480593))

(assert (=> d!1459496 m!5480121))

(assert (=> b!4630682 d!1459496))

(declare-fun bs!1027512 () Bool)

(declare-fun d!1459498 () Bool)

(assert (= bs!1027512 (and d!1459498 b!4630796)))

(declare-fun lambda!193680 () Int)

(assert (=> bs!1027512 (not (= lambda!193680 lambda!193613))))

(declare-fun bs!1027513 () Bool)

(assert (= bs!1027513 (and d!1459498 d!1459354)))

(assert (=> bs!1027513 (= lambda!193680 lambda!193645)))

(assert (=> bs!1027512 (not (= lambda!193680 lambda!193614))))

(declare-fun bs!1027514 () Bool)

(assert (= bs!1027514 (and d!1459498 b!4630800)))

(assert (=> bs!1027514 (not (= lambda!193680 lambda!193616))))

(declare-fun bs!1027515 () Bool)

(assert (= bs!1027515 (and d!1459498 b!4630795)))

(assert (=> bs!1027515 (not (= lambda!193680 lambda!193612))))

(declare-fun bs!1027516 () Bool)

(assert (= bs!1027516 (and d!1459498 b!4630748)))

(assert (=> bs!1027516 (not (= lambda!193680 lambda!193580))))

(declare-fun bs!1027517 () Bool)

(assert (= bs!1027517 (and d!1459498 b!4630749)))

(assert (=> bs!1027517 (not (= lambda!193680 lambda!193581))))

(assert (=> bs!1027517 (not (= lambda!193680 lambda!193584))))

(declare-fun bs!1027518 () Bool)

(assert (= bs!1027518 (and d!1459498 b!4630865)))

(assert (=> bs!1027518 (not (= lambda!193680 lambda!193637))))

(declare-fun bs!1027519 () Bool)

(assert (= bs!1027519 (and d!1459498 d!1459296)))

(assert (=> bs!1027519 (not (= lambda!193680 lambda!193587))))

(assert (=> bs!1027518 (not (= lambda!193680 lambda!193636))))

(declare-fun bs!1027520 () Bool)

(assert (= bs!1027520 (and d!1459498 d!1459318)))

(assert (=> bs!1027520 (not (= lambda!193680 lambda!193615))))

(declare-fun bs!1027521 () Bool)

(assert (= bs!1027521 (and d!1459498 d!1459320)))

(assert (=> bs!1027521 (not (= lambda!193680 lambda!193619))))

(declare-fun bs!1027522 () Bool)

(assert (= bs!1027522 (and d!1459498 b!4630801)))

(assert (=> bs!1027522 (not (= lambda!193680 lambda!193617))))

(declare-fun bs!1027523 () Bool)

(assert (= bs!1027523 (and d!1459498 d!1459346)))

(assert (=> bs!1027523 (not (= lambda!193680 lambda!193639))))

(assert (=> bs!1027522 (not (= lambda!193680 lambda!193618))))

(declare-fun bs!1027524 () Bool)

(assert (= bs!1027524 (and d!1459498 b!4630864)))

(assert (=> bs!1027524 (not (= lambda!193680 lambda!193634))))

(assert (=> d!1459498 true))

(assert (=> d!1459498 true))

(assert (=> d!1459498 (= (allKeysSameHash!1382 newBucket!224 hash!414 hashF!1389) (forall!10863 newBucket!224 lambda!193680))))

(declare-fun bs!1027525 () Bool)

(assert (= bs!1027525 d!1459498))

(declare-fun m!5480601 () Bool)

(assert (=> bs!1027525 m!5480601))

(assert (=> b!4630693 d!1459498))

(declare-fun d!1459502 () Bool)

(declare-fun res!1942991 () Bool)

(declare-fun e!2888921 () Bool)

(assert (=> d!1459502 (=> res!1942991 e!2888921)))

(assert (=> d!1459502 (= res!1942991 (not ((_ is Cons!51598) newBucket!224)))))

(assert (=> d!1459502 (= (noDuplicateKeys!1528 newBucket!224) e!2888921)))

(declare-fun b!4631087 () Bool)

(declare-fun e!2888922 () Bool)

(assert (=> b!4631087 (= e!2888921 e!2888922)))

(declare-fun res!1942992 () Bool)

(assert (=> b!4631087 (=> (not res!1942992) (not e!2888922))))

(assert (=> b!4631087 (= res!1942992 (not (containsKey!2508 (t!358774 newBucket!224) (_1!29573 (h!57668 newBucket!224)))))))

(declare-fun b!4631088 () Bool)

(assert (=> b!4631088 (= e!2888922 (noDuplicateKeys!1528 (t!358774 newBucket!224)))))

(assert (= (and d!1459502 (not res!1942991)) b!4631087))

(assert (= (and b!4631087 res!1942992) b!4631088))

(declare-fun m!5480603 () Bool)

(assert (=> b!4631087 m!5480603))

(declare-fun m!5480605 () Bool)

(assert (=> b!4631088 m!5480605))

(assert (=> b!4630683 d!1459502))

(declare-fun d!1459504 () Bool)

(assert (=> d!1459504 (= (eq!843 lt!1790825 (+!1894 lt!1790795 (h!57668 oldBucket!40))) (= (content!8854 (toList!5021 lt!1790825)) (content!8854 (toList!5021 (+!1894 lt!1790795 (h!57668 oldBucket!40))))))))

(declare-fun bs!1027526 () Bool)

(assert (= bs!1027526 d!1459504))

(assert (=> bs!1027526 m!5480133))

(declare-fun m!5480607 () Bool)

(assert (=> bs!1027526 m!5480607))

(assert (=> b!4630681 d!1459504))

(declare-fun d!1459506 () Bool)

(declare-fun e!2888923 () Bool)

(assert (=> d!1459506 e!2888923))

(declare-fun res!1942994 () Bool)

(assert (=> d!1459506 (=> (not res!1942994) (not e!2888923))))

(declare-fun lt!1791381 () ListMap!4325)

(assert (=> d!1459506 (= res!1942994 (contains!14683 lt!1791381 (_1!29573 (h!57668 oldBucket!40))))))

(declare-fun lt!1791380 () List!51722)

(assert (=> d!1459506 (= lt!1791381 (ListMap!4326 lt!1791380))))

(declare-fun lt!1791382 () Unit!113256)

(declare-fun lt!1791379 () Unit!113256)

(assert (=> d!1459506 (= lt!1791382 lt!1791379)))

(assert (=> d!1459506 (= (getValueByKey!1490 lt!1791380 (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459506 (= lt!1791379 (lemmaContainsTupThenGetReturnValue!868 lt!1791380 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459506 (= lt!1791380 (insertNoDuplicatedKeys!376 (toList!5021 lt!1790795) (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> d!1459506 (= (+!1894 lt!1790795 (h!57668 oldBucket!40)) lt!1791381)))

(declare-fun b!4631089 () Bool)

(declare-fun res!1942993 () Bool)

(assert (=> b!4631089 (=> (not res!1942993) (not e!2888923))))

(assert (=> b!4631089 (= res!1942993 (= (getValueByKey!1490 (toList!5021 lt!1791381) (_1!29573 (h!57668 oldBucket!40))) (Some!11651 (_2!29573 (h!57668 oldBucket!40)))))))

(declare-fun b!4631090 () Bool)

(assert (=> b!4631090 (= e!2888923 (contains!14689 (toList!5021 lt!1791381) (h!57668 oldBucket!40)))))

(assert (= (and d!1459506 res!1942994) b!4631089))

(assert (= (and b!4631089 res!1942993) b!4631090))

(declare-fun m!5480609 () Bool)

(assert (=> d!1459506 m!5480609))

(declare-fun m!5480611 () Bool)

(assert (=> d!1459506 m!5480611))

(declare-fun m!5480613 () Bool)

(assert (=> d!1459506 m!5480613))

(declare-fun m!5480615 () Bool)

(assert (=> d!1459506 m!5480615))

(declare-fun m!5480617 () Bool)

(assert (=> b!4631089 m!5480617))

(declare-fun m!5480619 () Bool)

(assert (=> b!4631090 m!5480619))

(assert (=> b!4630681 d!1459506))

(declare-fun bs!1027527 () Bool)

(declare-fun b!4631094 () Bool)

(assert (= bs!1027527 (and b!4631094 b!4630796)))

(declare-fun lambda!193681 () Int)

(assert (=> bs!1027527 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193613))))

(declare-fun bs!1027528 () Bool)

(assert (= bs!1027528 (and b!4631094 d!1459354)))

(assert (=> bs!1027528 (not (= lambda!193681 lambda!193645))))

(assert (=> bs!1027527 (= (= lt!1790811 lt!1791008) (= lambda!193681 lambda!193614))))

(declare-fun bs!1027529 () Bool)

(assert (= bs!1027529 (and b!4631094 b!4630800)))

(assert (=> bs!1027529 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193616))))

(declare-fun bs!1027530 () Bool)

(assert (= bs!1027530 (and b!4631094 d!1459498)))

(assert (=> bs!1027530 (not (= lambda!193681 lambda!193680))))

(declare-fun bs!1027531 () Bool)

(assert (= bs!1027531 (and b!4631094 b!4630795)))

(assert (=> bs!1027531 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193612))))

(declare-fun bs!1027532 () Bool)

(assert (= bs!1027532 (and b!4631094 b!4630748)))

(assert (=> bs!1027532 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193580))))

(declare-fun bs!1027533 () Bool)

(assert (= bs!1027533 (and b!4631094 b!4630749)))

(assert (=> bs!1027533 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193581))))

(assert (=> bs!1027533 (= (= lt!1790811 lt!1790908) (= lambda!193681 lambda!193584))))

(declare-fun bs!1027534 () Bool)

(assert (= bs!1027534 (and b!4631094 b!4630865)))

(assert (=> bs!1027534 (= (= lt!1790811 lt!1791152) (= lambda!193681 lambda!193637))))

(declare-fun bs!1027535 () Bool)

(assert (= bs!1027535 (and b!4631094 d!1459296)))

(assert (=> bs!1027535 (= (= lt!1790811 lt!1790913) (= lambda!193681 lambda!193587))))

(assert (=> bs!1027534 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193636))))

(declare-fun bs!1027536 () Bool)

(assert (= bs!1027536 (and b!4631094 d!1459318)))

(assert (=> bs!1027536 (= (= lt!1790811 lt!1791013) (= lambda!193681 lambda!193615))))

(declare-fun bs!1027537 () Bool)

(assert (= bs!1027537 (and b!4631094 d!1459320)))

(assert (=> bs!1027537 (= (= lt!1790811 lt!1791034) (= lambda!193681 lambda!193619))))

(declare-fun bs!1027538 () Bool)

(assert (= bs!1027538 (and b!4631094 b!4630801)))

(assert (=> bs!1027538 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193617))))

(declare-fun bs!1027539 () Bool)

(assert (= bs!1027539 (and b!4631094 d!1459346)))

(assert (=> bs!1027539 (= (= lt!1790811 lt!1791157) (= lambda!193681 lambda!193639))))

(assert (=> bs!1027538 (= (= lt!1790811 lt!1791029) (= lambda!193681 lambda!193618))))

(declare-fun bs!1027540 () Bool)

(assert (= bs!1027540 (and b!4631094 b!4630864)))

(assert (=> bs!1027540 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193681 lambda!193634))))

(assert (=> b!4631094 true))

(declare-fun bs!1027541 () Bool)

(declare-fun b!4631095 () Bool)

(assert (= bs!1027541 (and b!4631095 b!4630796)))

(declare-fun lambda!193682 () Int)

(assert (=> bs!1027541 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193613))))

(declare-fun bs!1027542 () Bool)

(assert (= bs!1027542 (and b!4631095 d!1459354)))

(assert (=> bs!1027542 (not (= lambda!193682 lambda!193645))))

(assert (=> bs!1027541 (= (= lt!1790811 lt!1791008) (= lambda!193682 lambda!193614))))

(declare-fun bs!1027543 () Bool)

(assert (= bs!1027543 (and b!4631095 b!4630800)))

(assert (=> bs!1027543 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193616))))

(declare-fun bs!1027544 () Bool)

(assert (= bs!1027544 (and b!4631095 d!1459498)))

(assert (=> bs!1027544 (not (= lambda!193682 lambda!193680))))

(declare-fun bs!1027545 () Bool)

(assert (= bs!1027545 (and b!4631095 b!4630795)))

(assert (=> bs!1027545 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193612))))

(declare-fun bs!1027546 () Bool)

(assert (= bs!1027546 (and b!4631095 b!4630748)))

(assert (=> bs!1027546 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193580))))

(declare-fun bs!1027547 () Bool)

(assert (= bs!1027547 (and b!4631095 b!4630749)))

(assert (=> bs!1027547 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193581))))

(assert (=> bs!1027547 (= (= lt!1790811 lt!1790908) (= lambda!193682 lambda!193584))))

(declare-fun bs!1027548 () Bool)

(assert (= bs!1027548 (and b!4631095 b!4630865)))

(assert (=> bs!1027548 (= (= lt!1790811 lt!1791152) (= lambda!193682 lambda!193637))))

(declare-fun bs!1027549 () Bool)

(assert (= bs!1027549 (and b!4631095 b!4631094)))

(assert (=> bs!1027549 (= lambda!193682 lambda!193681)))

(declare-fun bs!1027550 () Bool)

(assert (= bs!1027550 (and b!4631095 d!1459296)))

(assert (=> bs!1027550 (= (= lt!1790811 lt!1790913) (= lambda!193682 lambda!193587))))

(assert (=> bs!1027548 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193636))))

(declare-fun bs!1027551 () Bool)

(assert (= bs!1027551 (and b!4631095 d!1459318)))

(assert (=> bs!1027551 (= (= lt!1790811 lt!1791013) (= lambda!193682 lambda!193615))))

(declare-fun bs!1027552 () Bool)

(assert (= bs!1027552 (and b!4631095 d!1459320)))

(assert (=> bs!1027552 (= (= lt!1790811 lt!1791034) (= lambda!193682 lambda!193619))))

(declare-fun bs!1027553 () Bool)

(assert (= bs!1027553 (and b!4631095 b!4630801)))

(assert (=> bs!1027553 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193617))))

(declare-fun bs!1027554 () Bool)

(assert (= bs!1027554 (and b!4631095 d!1459346)))

(assert (=> bs!1027554 (= (= lt!1790811 lt!1791157) (= lambda!193682 lambda!193639))))

(assert (=> bs!1027553 (= (= lt!1790811 lt!1791029) (= lambda!193682 lambda!193618))))

(declare-fun bs!1027555 () Bool)

(assert (= bs!1027555 (and b!4631095 b!4630864)))

(assert (=> bs!1027555 (= (= lt!1790811 (ListMap!4326 Nil!51598)) (= lambda!193682 lambda!193634))))

(assert (=> b!4631095 true))

(declare-fun lt!1791387 () ListMap!4325)

(declare-fun lambda!193683 () Int)

(assert (=> bs!1027541 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193613))))

(assert (=> b!4631095 (= (= lt!1791387 lt!1790811) (= lambda!193683 lambda!193682))))

(assert (=> bs!1027542 (not (= lambda!193683 lambda!193645))))

(assert (=> bs!1027541 (= (= lt!1791387 lt!1791008) (= lambda!193683 lambda!193614))))

(assert (=> bs!1027543 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193616))))

(assert (=> bs!1027544 (not (= lambda!193683 lambda!193680))))

(assert (=> bs!1027545 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193612))))

(assert (=> bs!1027546 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193580))))

(assert (=> bs!1027547 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193581))))

(assert (=> bs!1027547 (= (= lt!1791387 lt!1790908) (= lambda!193683 lambda!193584))))

(assert (=> bs!1027548 (= (= lt!1791387 lt!1791152) (= lambda!193683 lambda!193637))))

(assert (=> bs!1027549 (= (= lt!1791387 lt!1790811) (= lambda!193683 lambda!193681))))

(assert (=> bs!1027550 (= (= lt!1791387 lt!1790913) (= lambda!193683 lambda!193587))))

(assert (=> bs!1027548 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193636))))

(assert (=> bs!1027551 (= (= lt!1791387 lt!1791013) (= lambda!193683 lambda!193615))))

(assert (=> bs!1027552 (= (= lt!1791387 lt!1791034) (= lambda!193683 lambda!193619))))

(assert (=> bs!1027553 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193617))))

(assert (=> bs!1027554 (= (= lt!1791387 lt!1791157) (= lambda!193683 lambda!193639))))

(assert (=> bs!1027553 (= (= lt!1791387 lt!1791029) (= lambda!193683 lambda!193618))))

(assert (=> bs!1027555 (= (= lt!1791387 (ListMap!4326 Nil!51598)) (= lambda!193683 lambda!193634))))

(assert (=> b!4631095 true))

(declare-fun bs!1027556 () Bool)

(declare-fun d!1459508 () Bool)

(assert (= bs!1027556 (and d!1459508 b!4631095)))

(declare-fun lambda!193684 () Int)

(declare-fun lt!1791392 () ListMap!4325)

(assert (=> bs!1027556 (= (= lt!1791392 lt!1791387) (= lambda!193684 lambda!193683))))

(declare-fun bs!1027557 () Bool)

(assert (= bs!1027557 (and d!1459508 b!4630796)))

(assert (=> bs!1027557 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193613))))

(assert (=> bs!1027556 (= (= lt!1791392 lt!1790811) (= lambda!193684 lambda!193682))))

(declare-fun bs!1027558 () Bool)

(assert (= bs!1027558 (and d!1459508 d!1459354)))

(assert (=> bs!1027558 (not (= lambda!193684 lambda!193645))))

(assert (=> bs!1027557 (= (= lt!1791392 lt!1791008) (= lambda!193684 lambda!193614))))

(declare-fun bs!1027559 () Bool)

(assert (= bs!1027559 (and d!1459508 b!4630800)))

(assert (=> bs!1027559 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193616))))

(declare-fun bs!1027560 () Bool)

(assert (= bs!1027560 (and d!1459508 d!1459498)))

(assert (=> bs!1027560 (not (= lambda!193684 lambda!193680))))

(declare-fun bs!1027561 () Bool)

(assert (= bs!1027561 (and d!1459508 b!4630795)))

(assert (=> bs!1027561 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193612))))

(declare-fun bs!1027562 () Bool)

(assert (= bs!1027562 (and d!1459508 b!4630748)))

(assert (=> bs!1027562 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193580))))

(declare-fun bs!1027563 () Bool)

(assert (= bs!1027563 (and d!1459508 b!4630749)))

(assert (=> bs!1027563 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193581))))

(assert (=> bs!1027563 (= (= lt!1791392 lt!1790908) (= lambda!193684 lambda!193584))))

(declare-fun bs!1027564 () Bool)

(assert (= bs!1027564 (and d!1459508 b!4630865)))

(assert (=> bs!1027564 (= (= lt!1791392 lt!1791152) (= lambda!193684 lambda!193637))))

(declare-fun bs!1027565 () Bool)

(assert (= bs!1027565 (and d!1459508 b!4631094)))

(assert (=> bs!1027565 (= (= lt!1791392 lt!1790811) (= lambda!193684 lambda!193681))))

(declare-fun bs!1027566 () Bool)

(assert (= bs!1027566 (and d!1459508 d!1459296)))

(assert (=> bs!1027566 (= (= lt!1791392 lt!1790913) (= lambda!193684 lambda!193587))))

(assert (=> bs!1027564 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193636))))

(declare-fun bs!1027567 () Bool)

(assert (= bs!1027567 (and d!1459508 d!1459318)))

(assert (=> bs!1027567 (= (= lt!1791392 lt!1791013) (= lambda!193684 lambda!193615))))

(declare-fun bs!1027568 () Bool)

(assert (= bs!1027568 (and d!1459508 d!1459320)))

(assert (=> bs!1027568 (= (= lt!1791392 lt!1791034) (= lambda!193684 lambda!193619))))

(declare-fun bs!1027569 () Bool)

(assert (= bs!1027569 (and d!1459508 b!4630801)))

(assert (=> bs!1027569 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193617))))

(declare-fun bs!1027570 () Bool)

(assert (= bs!1027570 (and d!1459508 d!1459346)))

(assert (=> bs!1027570 (= (= lt!1791392 lt!1791157) (= lambda!193684 lambda!193639))))

(assert (=> bs!1027569 (= (= lt!1791392 lt!1791029) (= lambda!193684 lambda!193618))))

(declare-fun bs!1027571 () Bool)

(assert (= bs!1027571 (and d!1459508 b!4630864)))

(assert (=> bs!1027571 (= (= lt!1791392 (ListMap!4326 Nil!51598)) (= lambda!193684 lambda!193634))))

(assert (=> d!1459508 true))

(declare-fun bm!323143 () Bool)

(declare-fun call!323150 () Unit!113256)

(assert (=> bm!323143 (= call!323150 (lemmaContainsAllItsOwnKeys!525 lt!1790811))))

(declare-fun c!792706 () Bool)

(declare-fun bm!323144 () Bool)

(declare-fun call!323149 () Bool)

(assert (=> bm!323144 (= call!323149 (forall!10863 (ite c!792706 (toList!5021 lt!1790811) oldBucket!40) (ite c!792706 lambda!193681 lambda!193683)))))

(declare-fun bm!323145 () Bool)

(declare-fun call!323148 () Bool)

(declare-fun lt!1791385 () ListMap!4325)

(assert (=> bm!323145 (= call!323148 (forall!10863 (ite c!792706 (toList!5021 lt!1790811) (toList!5021 lt!1791385)) (ite c!792706 lambda!193681 lambda!193683)))))

(declare-fun e!2888924 () Bool)

(assert (=> d!1459508 e!2888924))

(declare-fun res!1942995 () Bool)

(assert (=> d!1459508 (=> (not res!1942995) (not e!2888924))))

(assert (=> d!1459508 (= res!1942995 (forall!10863 oldBucket!40 lambda!193684))))

(declare-fun e!2888925 () ListMap!4325)

(assert (=> d!1459508 (= lt!1791392 e!2888925)))

(assert (=> d!1459508 (= c!792706 ((_ is Nil!51598) oldBucket!40))))

(assert (=> d!1459508 (noDuplicateKeys!1528 oldBucket!40)))

(assert (=> d!1459508 (= (addToMapMapFromBucket!989 oldBucket!40 lt!1790811) lt!1791392)))

(declare-fun b!4631091 () Bool)

(assert (=> b!4631091 (= e!2888924 (invariantList!1224 (toList!5021 lt!1791392)))))

(declare-fun b!4631092 () Bool)

(declare-fun res!1942997 () Bool)

(assert (=> b!4631092 (=> (not res!1942997) (not e!2888924))))

(assert (=> b!4631092 (= res!1942997 (forall!10863 (toList!5021 lt!1790811) lambda!193684))))

(declare-fun b!4631093 () Bool)

(declare-fun e!2888926 () Bool)

(assert (=> b!4631093 (= e!2888926 (forall!10863 (toList!5021 lt!1790811) lambda!193683))))

(assert (=> b!4631094 (= e!2888925 lt!1790811)))

(declare-fun lt!1791396 () Unit!113256)

(assert (=> b!4631094 (= lt!1791396 call!323150)))

(assert (=> b!4631094 call!323149))

(declare-fun lt!1791386 () Unit!113256)

(assert (=> b!4631094 (= lt!1791386 lt!1791396)))

(assert (=> b!4631094 call!323148))

(declare-fun lt!1791401 () Unit!113256)

(declare-fun Unit!113364 () Unit!113256)

(assert (=> b!4631094 (= lt!1791401 Unit!113364)))

(assert (=> b!4631095 (= e!2888925 lt!1791387)))

(assert (=> b!4631095 (= lt!1791385 (+!1894 lt!1790811 (h!57668 oldBucket!40)))))

(assert (=> b!4631095 (= lt!1791387 (addToMapMapFromBucket!989 (t!358774 oldBucket!40) (+!1894 lt!1790811 (h!57668 oldBucket!40))))))

(declare-fun lt!1791383 () Unit!113256)

(assert (=> b!4631095 (= lt!1791383 call!323150)))

(assert (=> b!4631095 (forall!10863 (toList!5021 lt!1790811) lambda!193682)))

(declare-fun lt!1791393 () Unit!113256)

(assert (=> b!4631095 (= lt!1791393 lt!1791383)))

(assert (=> b!4631095 (forall!10863 (toList!5021 lt!1791385) lambda!193683)))

(declare-fun lt!1791403 () Unit!113256)

(declare-fun Unit!113365 () Unit!113256)

(assert (=> b!4631095 (= lt!1791403 Unit!113365)))

(assert (=> b!4631095 (forall!10863 (t!358774 oldBucket!40) lambda!193683)))

(declare-fun lt!1791399 () Unit!113256)

(declare-fun Unit!113366 () Unit!113256)

(assert (=> b!4631095 (= lt!1791399 Unit!113366)))

(declare-fun lt!1791395 () Unit!113256)

(declare-fun Unit!113367 () Unit!113256)

(assert (=> b!4631095 (= lt!1791395 Unit!113367)))

(declare-fun lt!1791400 () Unit!113256)

(assert (=> b!4631095 (= lt!1791400 (forallContained!3093 (toList!5021 lt!1791385) lambda!193683 (h!57668 oldBucket!40)))))

(assert (=> b!4631095 (contains!14683 lt!1791385 (_1!29573 (h!57668 oldBucket!40)))))

(declare-fun lt!1791384 () Unit!113256)

(declare-fun Unit!113368 () Unit!113256)

(assert (=> b!4631095 (= lt!1791384 Unit!113368)))

(assert (=> b!4631095 (contains!14683 lt!1791387 (_1!29573 (h!57668 oldBucket!40)))))

(declare-fun lt!1791402 () Unit!113256)

(declare-fun Unit!113369 () Unit!113256)

(assert (=> b!4631095 (= lt!1791402 Unit!113369)))

(assert (=> b!4631095 (forall!10863 oldBucket!40 lambda!193683)))

(declare-fun lt!1791390 () Unit!113256)

(declare-fun Unit!113370 () Unit!113256)

(assert (=> b!4631095 (= lt!1791390 Unit!113370)))

(assert (=> b!4631095 call!323148))

(declare-fun lt!1791391 () Unit!113256)

(declare-fun Unit!113371 () Unit!113256)

(assert (=> b!4631095 (= lt!1791391 Unit!113371)))

(declare-fun lt!1791388 () Unit!113256)

(declare-fun Unit!113372 () Unit!113256)

(assert (=> b!4631095 (= lt!1791388 Unit!113372)))

(declare-fun lt!1791397 () Unit!113256)

(assert (=> b!4631095 (= lt!1791397 (addForallContainsKeyThenBeforeAdding!524 lt!1790811 lt!1791387 (_1!29573 (h!57668 oldBucket!40)) (_2!29573 (h!57668 oldBucket!40))))))

(assert (=> b!4631095 (forall!10863 (toList!5021 lt!1790811) lambda!193683)))

(declare-fun lt!1791398 () Unit!113256)

(assert (=> b!4631095 (= lt!1791398 lt!1791397)))

(assert (=> b!4631095 (forall!10863 (toList!5021 lt!1790811) lambda!193683)))

(declare-fun lt!1791389 () Unit!113256)

(declare-fun Unit!113373 () Unit!113256)

(assert (=> b!4631095 (= lt!1791389 Unit!113373)))

(declare-fun res!1942996 () Bool)

(assert (=> b!4631095 (= res!1942996 call!323149)))

(assert (=> b!4631095 (=> (not res!1942996) (not e!2888926))))

(assert (=> b!4631095 e!2888926))

(declare-fun lt!1791394 () Unit!113256)

(declare-fun Unit!113374 () Unit!113256)

(assert (=> b!4631095 (= lt!1791394 Unit!113374)))

(assert (= (and d!1459508 c!792706) b!4631094))

(assert (= (and d!1459508 (not c!792706)) b!4631095))

(assert (= (and b!4631095 res!1942996) b!4631093))

(assert (= (or b!4631094 b!4631095) bm!323143))

(assert (= (or b!4631094 b!4631095) bm!323144))

(assert (= (or b!4631094 b!4631095) bm!323145))

(assert (= (and d!1459508 res!1942995) b!4631092))

(assert (= (and b!4631092 res!1942997) b!4631091))

(declare-fun m!5480645 () Bool)

(assert (=> b!4631093 m!5480645))

(declare-fun m!5480647 () Bool)

(assert (=> bm!323144 m!5480647))

(declare-fun m!5480649 () Bool)

(assert (=> b!4631091 m!5480649))

(declare-fun m!5480651 () Bool)

(assert (=> d!1459508 m!5480651))

(assert (=> d!1459508 m!5479517))

(declare-fun m!5480653 () Bool)

(assert (=> b!4631092 m!5480653))

(declare-fun m!5480655 () Bool)

(assert (=> bm!323143 m!5480655))

(declare-fun m!5480657 () Bool)

(assert (=> bm!323145 m!5480657))

(assert (=> b!4631095 m!5480645))

(declare-fun m!5480663 () Bool)

(assert (=> b!4631095 m!5480663))

(assert (=> b!4631095 m!5480645))

(declare-fun m!5480671 () Bool)

(assert (=> b!4631095 m!5480671))

(declare-fun m!5480675 () Bool)

(assert (=> b!4631095 m!5480675))

(declare-fun m!5480679 () Bool)

(assert (=> b!4631095 m!5480679))

(declare-fun m!5480683 () Bool)

(assert (=> b!4631095 m!5480683))

(declare-fun m!5480685 () Bool)

(assert (=> b!4631095 m!5480685))

(assert (=> b!4631095 m!5480675))

(declare-fun m!5480691 () Bool)

(assert (=> b!4631095 m!5480691))

(declare-fun m!5480693 () Bool)

(assert (=> b!4631095 m!5480693))

(declare-fun m!5480695 () Bool)

(assert (=> b!4631095 m!5480695))

(declare-fun m!5480697 () Bool)

(assert (=> b!4631095 m!5480697))

(assert (=> b!4630692 d!1459508))

(declare-fun bs!1027574 () Bool)

(declare-fun d!1459520 () Bool)

(assert (= bs!1027574 (and d!1459520 d!1459330)))

(declare-fun lambda!193686 () Int)

(assert (=> bs!1027574 (= lambda!193686 lambda!193629)))

(declare-fun bs!1027576 () Bool)

(assert (= bs!1027576 (and d!1459520 d!1459342)))

(assert (=> bs!1027576 (= lambda!193686 lambda!193631)))

(declare-fun bs!1027578 () Bool)

(assert (= bs!1027578 (and d!1459520 d!1459380)))

(assert (=> bs!1027578 (= lambda!193686 lambda!193649)))

(declare-fun bs!1027580 () Bool)

(assert (= bs!1027580 (and d!1459520 d!1459490)))

(assert (=> bs!1027580 (= lambda!193686 lambda!193679)))

(declare-fun bs!1027582 () Bool)

(assert (= bs!1027582 (and d!1459520 d!1459374)))

(assert (=> bs!1027582 (= lambda!193686 lambda!193648)))

(declare-fun bs!1027584 () Bool)

(assert (= bs!1027584 (and d!1459520 b!4630695)))

(assert (=> bs!1027584 (= lambda!193686 lambda!193540)))

(declare-fun bs!1027586 () Bool)

(assert (= bs!1027586 (and d!1459520 d!1459434)))

(assert (=> bs!1027586 (= lambda!193686 lambda!193661)))

(declare-fun bs!1027588 () Bool)

(assert (= bs!1027588 (and d!1459520 d!1459416)))

(assert (=> bs!1027588 (= lambda!193686 lambda!193658)))

(declare-fun bs!1027590 () Bool)

(assert (= bs!1027590 (and d!1459520 d!1459286)))

(assert (=> bs!1027590 (= lambda!193686 lambda!193543)))

(declare-fun lt!1791429 () ListMap!4325)

(assert (=> d!1459520 (invariantList!1224 (toList!5021 lt!1791429))))

(declare-fun e!2888947 () ListMap!4325)

(assert (=> d!1459520 (= lt!1791429 e!2888947)))

(declare-fun c!792714 () Bool)

(assert (=> d!1459520 (= c!792714 ((_ is Cons!51599) Nil!51599))))

(assert (=> d!1459520 (forall!10862 Nil!51599 lambda!193686)))

(assert (=> d!1459520 (= (extractMap!1584 Nil!51599) lt!1791429)))

(declare-fun b!4631124 () Bool)

(assert (=> b!4631124 (= e!2888947 (addToMapMapFromBucket!989 (_2!29574 (h!57669 Nil!51599)) (extractMap!1584 (t!358775 Nil!51599))))))

(declare-fun b!4631125 () Bool)

(assert (=> b!4631125 (= e!2888947 (ListMap!4326 Nil!51598))))

(assert (= (and d!1459520 c!792714) b!4631124))

(assert (= (and d!1459520 (not c!792714)) b!4631125))

(declare-fun m!5480701 () Bool)

(assert (=> d!1459520 m!5480701))

(declare-fun m!5480705 () Bool)

(assert (=> d!1459520 m!5480705))

(declare-fun m!5480709 () Bool)

(assert (=> b!4631124 m!5480709))

(assert (=> b!4631124 m!5480709))

(declare-fun m!5480711 () Bool)

(assert (=> b!4631124 m!5480711))

(assert (=> b!4630692 d!1459520))

(declare-fun b!4631131 () Bool)

(declare-fun tp!1342322 () Bool)

(declare-fun e!2888951 () Bool)

(assert (=> b!4631131 (= e!2888951 (and tp_is_empty!29405 tp_is_empty!29407 tp!1342322))))

(assert (=> b!4630685 (= tp!1342318 e!2888951)))

(assert (= (and b!4630685 ((_ is Cons!51598) (t!358774 oldBucket!40))) b!4631131))

(declare-fun b!4631132 () Bool)

(declare-fun tp!1342323 () Bool)

(declare-fun e!2888952 () Bool)

(assert (=> b!4631132 (= e!2888952 (and tp_is_empty!29405 tp_is_empty!29407 tp!1342323))))

(assert (=> b!4630680 (= tp!1342319 e!2888952)))

(assert (= (and b!4630680 ((_ is Cons!51598) (t!358774 newBucket!224))) b!4631132))

(declare-fun b_lambda!170877 () Bool)

(assert (= b_lambda!170869 (or b!4630695 b_lambda!170877)))

(declare-fun bs!1027593 () Bool)

(declare-fun d!1459530 () Bool)

(assert (= bs!1027593 (and d!1459530 b!4630695)))

(assert (=> bs!1027593 (= (dynLambda!21517 lambda!193540 (h!57669 lt!1790823)) (noDuplicateKeys!1528 (_2!29574 (h!57669 lt!1790823))))))

(declare-fun m!5480731 () Bool)

(assert (=> bs!1027593 m!5480731))

(assert (=> b!4630951 d!1459530))

(declare-fun b_lambda!170879 () Bool)

(assert (= b_lambda!170871 (or b!4630695 b_lambda!170879)))

(declare-fun bs!1027594 () Bool)

(declare-fun d!1459532 () Bool)

(assert (= bs!1027594 (and d!1459532 b!4630695)))

(assert (=> bs!1027594 (= (dynLambda!21517 lambda!193540 lt!1790809) (noDuplicateKeys!1528 (_2!29574 lt!1790809)))))

(declare-fun m!5480733 () Bool)

(assert (=> bs!1027594 m!5480733))

(assert (=> d!1459444 d!1459532))

(check-sat (not bm!323121) (not d!1459508) (not b!4630749) (not b!4630789) (not d!1459380) (not d!1459352) (not d!1459286) (not b!4630786) (not b!4630945) (not b!4631087) (not b!4630860) (not d!1459504) (not d!1459366) (not b!4630968) (not b!4630862) (not b!4630792) (not b_lambda!170877) (not d!1459488) (not d!1459432) (not bm!323135) (not b!4630983) (not b!4630784) (not b!4631088) (not bm!323105) (not b!4630857) (not b!4631044) (not b!4631091) (not b!4631039) (not d!1459416) (not d!1459354) (not d!1459434) (not b!4630891) (not d!1459346) (not b!4630798) (not b!4630856) (not d!1459326) (not d!1459444) (not b!4630953) (not d!1459368) (not d!1459394) (not bm!323104) (not bm!323144) (not b!4631132) (not b!4630801) (not b_lambda!170879) (not d!1459520) (not d!1459342) (not b!4630861) (not b!4631093) (not b!4631089) (not b!4631090) (not b!4631037) (not bm!323117) (not b!4630918) (not bm!323103) (not b!4631054) (not b!4630884) (not d!1459404) (not b!4631041) (not b!4630935) (not b!4631014) (not b!4630888) (not d!1459466) (not b!4630916) (not b!4630797) (not d!1459330) (not b!4630883) (not d!1459496) (not b!4631077) (not b!4630934) (not b!4630745) (not d!1459498) (not b!4630746) (not bm!323145) (not d!1459296) (not d!1459322) (not bs!1027593) (not d!1459382) (not b!4630930) (not d!1459390) (not d!1459506) (not bm!323133) (not b!4631048) (not bm!323143) (not b!4630932) (not b!4631075) (not d!1459340) (not d!1459320) (not b!4630889) (not d!1459422) (not d!1459312) (not b!4630747) (not b!4630887) (not b!4630952) (not b!4631038) (not b!4630939) (not b!4630981) (not b!4630799) tp_is_empty!29405 (not b!4630933) (not d!1459372) (not b!4631092) (not bs!1027594) (not b!4630709) (not bm!323122) (not b!4630846) (not bm!323120) (not b!4630865) (not d!1459474) (not b!4630788) (not b!4630785) (not d!1459344) (not b!4630929) (not d!1459292) (not d!1459392) (not b!4631082) (not bm!323134) (not d!1459350) (not b!4631131) (not d!1459486) (not d!1459396) (not d!1459452) (not b!4630863) (not b!4630855) (not d!1459386) (not d!1459388) (not bm!323118) (not d!1459412) (not b!4631124) (not d!1459482) (not b!4630794) (not b!4630914) tp_is_empty!29407 (not d!1459490) (not d!1459426) (not b!4631095) (not b!4630787) (not bm!323123) (not b!4630931) (not b!4630913) (not d!1459430) (not d!1459318) (not b!4630915) (not d!1459428) (not d!1459468) (not b!4631076) (not b!4630834) (not bm!323142) (not b!4630793) (not b!4630796) (not d!1459284) (not b!4630859) (not bm!323119) (not b!4630917) (not b!4630783) (not b!4630912) (not d!1459278) (not d!1459374) (not b!4631078) (not b!4630833))
(check-sat)
