; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463644 () Bool)

(assert start!463644)

(declare-fun b!4625722 () Bool)

(declare-fun res!1939830 () Bool)

(declare-fun e!2885455 () Bool)

(assert (=> b!4625722 (=> (not res!1939830) (not e!2885455))))

(declare-datatypes ((K!12920 0))(
  ( (K!12921 (val!18607 Int)) )
))
(declare-datatypes ((V!13166 0))(
  ( (V!13167 (val!18608 Int)) )
))
(declare-datatypes ((tuple2!52478 0))(
  ( (tuple2!52479 (_1!29533 K!12920) (_2!29533 V!13166)) )
))
(declare-datatypes ((List!51664 0))(
  ( (Nil!51540) (Cons!51540 (h!57592 tuple2!52478) (t!358698 List!51664)) )
))
(declare-fun oldBucket!40 () List!51664)

(declare-fun newBucket!224 () List!51664)

(declare-fun key!4968 () K!12920)

(declare-fun removePairForKey!1131 (List!51664 K!12920) List!51664)

(assert (=> b!4625722 (= res!1939830 (= (removePairForKey!1131 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp_is_empty!29327 () Bool)

(declare-fun tp_is_empty!29325 () Bool)

(declare-fun tp!1342126 () Bool)

(declare-fun b!4625723 () Bool)

(declare-fun e!2885458 () Bool)

(assert (=> b!4625723 (= e!2885458 (and tp_is_empty!29325 tp_is_empty!29327 tp!1342126))))

(declare-fun b!4625724 () Bool)

(declare-fun e!2885454 () Bool)

(declare-datatypes ((tuple2!52480 0))(
  ( (tuple2!52481 (_1!29534 (_ BitVec 64)) (_2!29534 List!51664)) )
))
(declare-datatypes ((List!51665 0))(
  ( (Nil!51541) (Cons!51541 (h!57593 tuple2!52480) (t!358699 List!51665)) )
))
(declare-fun lt!1783670 () List!51665)

(declare-fun lambda!192138 () Int)

(declare-fun forall!10826 (List!51665 Int) Bool)

(assert (=> b!4625724 (= e!2885454 (forall!10826 lt!1783670 lambda!192138))))

(declare-datatypes ((ListMap!4285 0))(
  ( (ListMap!4286 (toList!4981 List!51664)) )
))
(declare-fun lt!1783671 () ListMap!4285)

(declare-fun lt!1783665 () ListMap!4285)

(declare-fun -!548 (ListMap!4285 K!12920) ListMap!4285)

(declare-fun +!1874 (ListMap!4285 tuple2!52478) ListMap!4285)

(assert (=> b!4625724 (= (-!548 (+!1874 lt!1783671 (h!57592 oldBucket!40)) key!4968) (+!1874 lt!1783665 (h!57592 oldBucket!40)))))

(declare-datatypes ((Unit!112145 0))(
  ( (Unit!112146) )
))
(declare-fun lt!1783675 () Unit!112145)

(declare-fun addRemoveCommutativeForDiffKeys!3 (ListMap!4285 K!12920 V!13166 K!12920) Unit!112145)

(assert (=> b!4625724 (= lt!1783675 (addRemoveCommutativeForDiffKeys!3 lt!1783671 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40)) key!4968))))

(declare-fun lt!1783667 () ListMap!4285)

(declare-fun eq!823 (ListMap!4285 ListMap!4285) Bool)

(assert (=> b!4625724 (eq!823 lt!1783667 lt!1783665)))

(assert (=> b!4625724 (= lt!1783665 (-!548 lt!1783671 key!4968))))

(declare-datatypes ((Hashable!5905 0))(
  ( (HashableExt!5904 (__x!31608 Int)) )
))
(declare-fun hashF!1389 () Hashable!5905)

(declare-fun lt!1783674 () Unit!112145)

(declare-fun lt!1783676 () List!51664)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!110 ((_ BitVec 64) List!51664 List!51664 K!12920 Hashable!5905) Unit!112145)

(assert (=> b!4625724 (= lt!1783674 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!110 hash!414 (t!358698 oldBucket!40) lt!1783676 key!4968 hashF!1389))))

(declare-fun b!4625725 () Bool)

(declare-fun res!1939825 () Bool)

(assert (=> b!4625725 (=> (not res!1939825) (not e!2885455))))

(declare-fun allKeysSameHash!1362 (List!51664 (_ BitVec 64) Hashable!5905) Bool)

(assert (=> b!4625725 (= res!1939825 (allKeysSameHash!1362 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4625726 () Bool)

(declare-fun e!2885453 () Bool)

(declare-fun e!2885457 () Bool)

(assert (=> b!4625726 (= e!2885453 e!2885457)))

(declare-fun res!1939827 () Bool)

(assert (=> b!4625726 (=> res!1939827 e!2885457)))

(declare-fun lt!1783682 () ListMap!4285)

(declare-fun lt!1783672 () List!51664)

(declare-fun extractMap!1564 (List!51665) ListMap!4285)

(assert (=> b!4625726 (= res!1939827 (not (eq!823 lt!1783682 (+!1874 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)) (h!57592 oldBucket!40)))))))

(declare-fun lt!1783661 () tuple2!52478)

(declare-fun addToMapMapFromBucket!969 (List!51664 ListMap!4285) ListMap!4285)

(assert (=> b!4625726 (eq!823 (addToMapMapFromBucket!969 (Cons!51540 lt!1783661 lt!1783676) (ListMap!4286 Nil!51540)) (+!1874 (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540)) lt!1783661))))

(declare-fun lt!1783681 () Unit!112145)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!74 (tuple2!52478 List!51664 ListMap!4285) Unit!112145)

(assert (=> b!4625726 (= lt!1783681 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!74 lt!1783661 lt!1783676 (ListMap!4286 Nil!51540)))))

(declare-fun head!9642 (List!51664) tuple2!52478)

(assert (=> b!4625726 (= lt!1783661 (head!9642 newBucket!224))))

(declare-fun lt!1783678 () tuple2!52478)

(assert (=> b!4625726 (eq!823 (addToMapMapFromBucket!969 (Cons!51540 lt!1783678 lt!1783672) (ListMap!4286 Nil!51540)) (+!1874 (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540)) lt!1783678))))

(declare-fun lt!1783673 () Unit!112145)

(assert (=> b!4625726 (= lt!1783673 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!74 lt!1783678 lt!1783672 (ListMap!4286 Nil!51540)))))

(assert (=> b!4625726 (= lt!1783678 (head!9642 oldBucket!40))))

(declare-fun contains!14587 (ListMap!4285 K!12920) Bool)

(assert (=> b!4625726 (contains!14587 lt!1783671 key!4968)))

(assert (=> b!4625726 (= lt!1783671 (extractMap!1564 lt!1783670))))

(declare-fun lt!1783679 () Unit!112145)

(declare-datatypes ((ListLongMap!3571 0))(
  ( (ListLongMap!3572 (toList!4982 List!51665)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!326 (ListLongMap!3571 K!12920 Hashable!5905) Unit!112145)

(assert (=> b!4625726 (= lt!1783679 (lemmaListContainsThenExtractedMapContains!326 (ListLongMap!3572 lt!1783670) key!4968 hashF!1389))))

(assert (=> b!4625726 (= lt!1783670 (Cons!51541 (tuple2!52481 hash!414 (t!358698 oldBucket!40)) Nil!51541))))

(declare-fun b!4625727 () Bool)

(declare-fun e!2885460 () Bool)

(declare-fun e!2885452 () Bool)

(assert (=> b!4625727 (= e!2885460 (not e!2885452))))

(declare-fun res!1939828 () Bool)

(assert (=> b!4625727 (=> res!1939828 e!2885452)))

(get-info :version)

(assert (=> b!4625727 (= res!1939828 (or (and ((_ is Cons!51540) oldBucket!40) (= (_1!29533 (h!57592 oldBucket!40)) key!4968)) (not ((_ is Cons!51540) oldBucket!40)) (= (_1!29533 (h!57592 oldBucket!40)) key!4968)))))

(declare-fun e!2885451 () Bool)

(assert (=> b!4625727 e!2885451))

(declare-fun res!1939823 () Bool)

(assert (=> b!4625727 (=> (not res!1939823) (not e!2885451))))

(declare-fun lt!1783664 () ListMap!4285)

(assert (=> b!4625727 (= res!1939823 (= lt!1783682 (addToMapMapFromBucket!969 oldBucket!40 lt!1783664)))))

(assert (=> b!4625727 (= lt!1783664 (extractMap!1564 Nil!51541))))

(assert (=> b!4625727 true))

(declare-fun tp!1342127 () Bool)

(declare-fun b!4625721 () Bool)

(declare-fun e!2885459 () Bool)

(assert (=> b!4625721 (= e!2885459 (and tp_is_empty!29325 tp_is_empty!29327 tp!1342127))))

(declare-fun res!1939818 () Bool)

(assert (=> start!463644 (=> (not res!1939818) (not e!2885455))))

(declare-fun noDuplicateKeys!1508 (List!51664) Bool)

(assert (=> start!463644 (= res!1939818 (noDuplicateKeys!1508 oldBucket!40))))

(assert (=> start!463644 e!2885455))

(assert (=> start!463644 true))

(assert (=> start!463644 e!2885459))

(assert (=> start!463644 tp_is_empty!29325))

(assert (=> start!463644 e!2885458))

(declare-fun b!4625728 () Bool)

(declare-fun res!1939820 () Bool)

(assert (=> b!4625728 (=> res!1939820 e!2885453)))

(assert (=> b!4625728 (= res!1939820 (not (= (removePairForKey!1131 (t!358698 oldBucket!40) key!4968) lt!1783676)))))

(declare-fun b!4625729 () Bool)

(assert (=> b!4625729 (= e!2885457 e!2885454)))

(declare-fun res!1939824 () Bool)

(assert (=> b!4625729 (=> res!1939824 e!2885454)))

(declare-fun lt!1783668 () ListMap!4285)

(assert (=> b!4625729 (= res!1939824 (not (eq!823 lt!1783668 (+!1874 lt!1783667 lt!1783661))))))

(assert (=> b!4625729 (= lt!1783667 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541)))))

(assert (=> b!4625729 (= lt!1783668 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 newBucket!224) Nil!51541)))))

(declare-fun b!4625730 () Bool)

(declare-fun res!1939821 () Bool)

(assert (=> b!4625730 (=> (not res!1939821) (not e!2885455))))

(assert (=> b!4625730 (= res!1939821 (noDuplicateKeys!1508 newBucket!224))))

(declare-fun b!4625731 () Bool)

(declare-fun e!2885456 () Bool)

(assert (=> b!4625731 (= e!2885455 e!2885456)))

(declare-fun res!1939817 () Bool)

(assert (=> b!4625731 (=> (not res!1939817) (not e!2885456))))

(assert (=> b!4625731 (= res!1939817 (contains!14587 lt!1783682 key!4968))))

(declare-fun lt!1783662 () List!51665)

(assert (=> b!4625731 (= lt!1783682 (extractMap!1564 lt!1783662))))

(assert (=> b!4625731 (= lt!1783662 (Cons!51541 (tuple2!52481 hash!414 oldBucket!40) Nil!51541))))

(declare-fun b!4625732 () Bool)

(assert (=> b!4625732 (= e!2885451 (= lt!1783664 (ListMap!4286 Nil!51540)))))

(declare-fun b!4625733 () Bool)

(declare-fun e!2885450 () Bool)

(assert (=> b!4625733 (= e!2885450 e!2885453)))

(declare-fun res!1939829 () Bool)

(assert (=> b!4625733 (=> res!1939829 e!2885453)))

(assert (=> b!4625733 (= res!1939829 (not (= (removePairForKey!1131 lt!1783672 key!4968) lt!1783676)))))

(declare-fun tail!8143 (List!51664) List!51664)

(assert (=> b!4625733 (= lt!1783676 (tail!8143 newBucket!224))))

(assert (=> b!4625733 (= lt!1783672 (tail!8143 oldBucket!40))))

(declare-fun b!4625734 () Bool)

(assert (=> b!4625734 (= e!2885456 e!2885460)))

(declare-fun res!1939826 () Bool)

(assert (=> b!4625734 (=> (not res!1939826) (not e!2885460))))

(declare-fun lt!1783669 () (_ BitVec 64))

(assert (=> b!4625734 (= res!1939826 (= lt!1783669 hash!414))))

(declare-fun hash!3505 (Hashable!5905 K!12920) (_ BitVec 64))

(assert (=> b!4625734 (= lt!1783669 (hash!3505 hashF!1389 key!4968))))

(declare-fun b!4625735 () Bool)

(declare-fun res!1939822 () Bool)

(assert (=> b!4625735 (=> (not res!1939822) (not e!2885460))))

(assert (=> b!4625735 (= res!1939822 (allKeysSameHash!1362 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4625736 () Bool)

(assert (=> b!4625736 (= e!2885452 e!2885450)))

(declare-fun res!1939819 () Bool)

(assert (=> b!4625736 (=> res!1939819 e!2885450)))

(declare-fun containsKey!2452 (List!51664 K!12920) Bool)

(assert (=> b!4625736 (= res!1939819 (not (containsKey!2452 (t!358698 oldBucket!40) key!4968)))))

(assert (=> b!4625736 (containsKey!2452 oldBucket!40 key!4968)))

(declare-fun lt!1783666 () Unit!112145)

(declare-fun lemmaGetPairDefinedThenContainsKey!54 (List!51664 K!12920 Hashable!5905) Unit!112145)

(assert (=> b!4625736 (= lt!1783666 (lemmaGetPairDefinedThenContainsKey!54 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1783685 () List!51664)

(declare-datatypes ((Option!11594 0))(
  ( (None!11593) (Some!11593 (v!45723 tuple2!52478)) )
))
(declare-fun isDefined!8859 (Option!11594) Bool)

(declare-fun getPair!300 (List!51664 K!12920) Option!11594)

(assert (=> b!4625736 (isDefined!8859 (getPair!300 lt!1783685 key!4968))))

(declare-fun lt!1783677 () Unit!112145)

(declare-fun lt!1783660 () tuple2!52480)

(declare-fun forallContained!3054 (List!51665 Int tuple2!52480) Unit!112145)

(assert (=> b!4625736 (= lt!1783677 (forallContained!3054 lt!1783662 lambda!192138 lt!1783660))))

(declare-fun contains!14588 (List!51665 tuple2!52480) Bool)

(assert (=> b!4625736 (contains!14588 lt!1783662 lt!1783660)))

(assert (=> b!4625736 (= lt!1783660 (tuple2!52481 lt!1783669 lt!1783685))))

(declare-fun lt!1783684 () ListLongMap!3571)

(declare-fun lt!1783683 () Unit!112145)

(declare-fun lemmaGetValueImpliesTupleContained!105 (ListLongMap!3571 (_ BitVec 64) List!51664) Unit!112145)

(assert (=> b!4625736 (= lt!1783683 (lemmaGetValueImpliesTupleContained!105 lt!1783684 lt!1783669 lt!1783685))))

(declare-fun apply!12173 (ListLongMap!3571 (_ BitVec 64)) List!51664)

(assert (=> b!4625736 (= lt!1783685 (apply!12173 lt!1783684 lt!1783669))))

(declare-fun contains!14589 (ListLongMap!3571 (_ BitVec 64)) Bool)

(assert (=> b!4625736 (contains!14589 lt!1783684 lt!1783669)))

(declare-fun lt!1783663 () Unit!112145)

(declare-fun lemmaInGenMapThenLongMapContainsHash!506 (ListLongMap!3571 K!12920 Hashable!5905) Unit!112145)

(assert (=> b!4625736 (= lt!1783663 (lemmaInGenMapThenLongMapContainsHash!506 lt!1783684 key!4968 hashF!1389))))

(declare-fun lt!1783680 () Unit!112145)

(declare-fun lemmaInGenMapThenGetPairDefined!96 (ListLongMap!3571 K!12920 Hashable!5905) Unit!112145)

(assert (=> b!4625736 (= lt!1783680 (lemmaInGenMapThenGetPairDefined!96 lt!1783684 key!4968 hashF!1389))))

(assert (=> b!4625736 (= lt!1783684 (ListLongMap!3572 lt!1783662))))

(assert (= (and start!463644 res!1939818) b!4625730))

(assert (= (and b!4625730 res!1939821) b!4625722))

(assert (= (and b!4625722 res!1939830) b!4625725))

(assert (= (and b!4625725 res!1939825) b!4625731))

(assert (= (and b!4625731 res!1939817) b!4625734))

(assert (= (and b!4625734 res!1939826) b!4625735))

(assert (= (and b!4625735 res!1939822) b!4625727))

(assert (= (and b!4625727 res!1939823) b!4625732))

(assert (= (and b!4625727 (not res!1939828)) b!4625736))

(assert (= (and b!4625736 (not res!1939819)) b!4625733))

(assert (= (and b!4625733 (not res!1939829)) b!4625728))

(assert (= (and b!4625728 (not res!1939820)) b!4625726))

(assert (= (and b!4625726 (not res!1939827)) b!4625729))

(assert (= (and b!4625729 (not res!1939824)) b!4625724))

(assert (= (and start!463644 ((_ is Cons!51540) oldBucket!40)) b!4625721))

(assert (= (and start!463644 ((_ is Cons!51540) newBucket!224)) b!4625723))

(declare-fun m!5467609 () Bool)

(assert (=> b!4625729 m!5467609))

(assert (=> b!4625729 m!5467609))

(declare-fun m!5467611 () Bool)

(assert (=> b!4625729 m!5467611))

(declare-fun m!5467613 () Bool)

(assert (=> b!4625729 m!5467613))

(declare-fun m!5467615 () Bool)

(assert (=> b!4625729 m!5467615))

(declare-fun m!5467617 () Bool)

(assert (=> b!4625722 m!5467617))

(declare-fun m!5467619 () Bool)

(assert (=> b!4625733 m!5467619))

(declare-fun m!5467621 () Bool)

(assert (=> b!4625733 m!5467621))

(declare-fun m!5467623 () Bool)

(assert (=> b!4625733 m!5467623))

(declare-fun m!5467625 () Bool)

(assert (=> b!4625735 m!5467625))

(declare-fun m!5467627 () Bool)

(assert (=> b!4625731 m!5467627))

(declare-fun m!5467629 () Bool)

(assert (=> b!4625731 m!5467629))

(declare-fun m!5467631 () Bool)

(assert (=> start!463644 m!5467631))

(declare-fun m!5467633 () Bool)

(assert (=> b!4625734 m!5467633))

(declare-fun m!5467635 () Bool)

(assert (=> b!4625728 m!5467635))

(declare-fun m!5467637 () Bool)

(assert (=> b!4625736 m!5467637))

(declare-fun m!5467639 () Bool)

(assert (=> b!4625736 m!5467639))

(declare-fun m!5467641 () Bool)

(assert (=> b!4625736 m!5467641))

(declare-fun m!5467643 () Bool)

(assert (=> b!4625736 m!5467643))

(declare-fun m!5467645 () Bool)

(assert (=> b!4625736 m!5467645))

(declare-fun m!5467647 () Bool)

(assert (=> b!4625736 m!5467647))

(declare-fun m!5467649 () Bool)

(assert (=> b!4625736 m!5467649))

(declare-fun m!5467651 () Bool)

(assert (=> b!4625736 m!5467651))

(declare-fun m!5467653 () Bool)

(assert (=> b!4625736 m!5467653))

(declare-fun m!5467655 () Bool)

(assert (=> b!4625736 m!5467655))

(declare-fun m!5467657 () Bool)

(assert (=> b!4625736 m!5467657))

(assert (=> b!4625736 m!5467637))

(declare-fun m!5467659 () Bool)

(assert (=> b!4625736 m!5467659))

(declare-fun m!5467661 () Bool)

(assert (=> b!4625730 m!5467661))

(declare-fun m!5467663 () Bool)

(assert (=> b!4625727 m!5467663))

(declare-fun m!5467665 () Bool)

(assert (=> b!4625727 m!5467665))

(declare-fun m!5467667 () Bool)

(assert (=> b!4625724 m!5467667))

(declare-fun m!5467669 () Bool)

(assert (=> b!4625724 m!5467669))

(declare-fun m!5467671 () Bool)

(assert (=> b!4625724 m!5467671))

(declare-fun m!5467673 () Bool)

(assert (=> b!4625724 m!5467673))

(declare-fun m!5467675 () Bool)

(assert (=> b!4625724 m!5467675))

(declare-fun m!5467677 () Bool)

(assert (=> b!4625724 m!5467677))

(assert (=> b!4625724 m!5467677))

(declare-fun m!5467679 () Bool)

(assert (=> b!4625724 m!5467679))

(declare-fun m!5467681 () Bool)

(assert (=> b!4625724 m!5467681))

(declare-fun m!5467683 () Bool)

(assert (=> b!4625726 m!5467683))

(declare-fun m!5467685 () Bool)

(assert (=> b!4625726 m!5467685))

(declare-fun m!5467687 () Bool)

(assert (=> b!4625726 m!5467687))

(assert (=> b!4625726 m!5467683))

(declare-fun m!5467689 () Bool)

(assert (=> b!4625726 m!5467689))

(declare-fun m!5467691 () Bool)

(assert (=> b!4625726 m!5467691))

(declare-fun m!5467693 () Bool)

(assert (=> b!4625726 m!5467693))

(assert (=> b!4625726 m!5467689))

(declare-fun m!5467695 () Bool)

(assert (=> b!4625726 m!5467695))

(declare-fun m!5467697 () Bool)

(assert (=> b!4625726 m!5467697))

(assert (=> b!4625726 m!5467695))

(declare-fun m!5467699 () Bool)

(assert (=> b!4625726 m!5467699))

(assert (=> b!4625726 m!5467687))

(declare-fun m!5467701 () Bool)

(assert (=> b!4625726 m!5467701))

(declare-fun m!5467703 () Bool)

(assert (=> b!4625726 m!5467703))

(declare-fun m!5467705 () Bool)

(assert (=> b!4625726 m!5467705))

(declare-fun m!5467707 () Bool)

(assert (=> b!4625726 m!5467707))

(assert (=> b!4625726 m!5467707))

(assert (=> b!4625726 m!5467691))

(declare-fun m!5467709 () Bool)

(assert (=> b!4625726 m!5467709))

(declare-fun m!5467711 () Bool)

(assert (=> b!4625726 m!5467711))

(declare-fun m!5467713 () Bool)

(assert (=> b!4625726 m!5467713))

(assert (=> b!4625726 m!5467697))

(assert (=> b!4625726 m!5467699))

(declare-fun m!5467715 () Bool)

(assert (=> b!4625726 m!5467715))

(declare-fun m!5467717 () Bool)

(assert (=> b!4625726 m!5467717))

(declare-fun m!5467719 () Bool)

(assert (=> b!4625725 m!5467719))

(check-sat (not b!4625735) (not b!4625730) (not b!4625731) tp_is_empty!29327 (not b!4625723) (not b!4625721) (not b!4625734) (not b!4625729) (not b!4625726) (not b!4625727) (not start!463644) tp_is_empty!29325 (not b!4625725) (not b!4625728) (not b!4625724) (not b!4625736) (not b!4625722) (not b!4625733))
(check-sat)
(get-model)

(declare-fun d!1457084 () Bool)

(declare-fun res!1939835 () Bool)

(declare-fun e!2885465 () Bool)

(assert (=> d!1457084 (=> res!1939835 e!2885465)))

(assert (=> d!1457084 (= res!1939835 (not ((_ is Cons!51540) oldBucket!40)))))

(assert (=> d!1457084 (= (noDuplicateKeys!1508 oldBucket!40) e!2885465)))

(declare-fun b!4625741 () Bool)

(declare-fun e!2885466 () Bool)

(assert (=> b!4625741 (= e!2885465 e!2885466)))

(declare-fun res!1939836 () Bool)

(assert (=> b!4625741 (=> (not res!1939836) (not e!2885466))))

(assert (=> b!4625741 (= res!1939836 (not (containsKey!2452 (t!358698 oldBucket!40) (_1!29533 (h!57592 oldBucket!40)))))))

(declare-fun b!4625742 () Bool)

(assert (=> b!4625742 (= e!2885466 (noDuplicateKeys!1508 (t!358698 oldBucket!40)))))

(assert (= (and d!1457084 (not res!1939835)) b!4625741))

(assert (= (and b!4625741 res!1939836) b!4625742))

(declare-fun m!5467721 () Bool)

(assert (=> b!4625741 m!5467721))

(declare-fun m!5467723 () Bool)

(assert (=> b!4625742 m!5467723))

(assert (=> start!463644 d!1457084))

(declare-fun d!1457086 () Bool)

(declare-fun res!1939837 () Bool)

(declare-fun e!2885467 () Bool)

(assert (=> d!1457086 (=> res!1939837 e!2885467)))

(assert (=> d!1457086 (= res!1939837 (not ((_ is Cons!51540) newBucket!224)))))

(assert (=> d!1457086 (= (noDuplicateKeys!1508 newBucket!224) e!2885467)))

(declare-fun b!4625743 () Bool)

(declare-fun e!2885468 () Bool)

(assert (=> b!4625743 (= e!2885467 e!2885468)))

(declare-fun res!1939838 () Bool)

(assert (=> b!4625743 (=> (not res!1939838) (not e!2885468))))

(assert (=> b!4625743 (= res!1939838 (not (containsKey!2452 (t!358698 newBucket!224) (_1!29533 (h!57592 newBucket!224)))))))

(declare-fun b!4625744 () Bool)

(assert (=> b!4625744 (= e!2885468 (noDuplicateKeys!1508 (t!358698 newBucket!224)))))

(assert (= (and d!1457086 (not res!1939837)) b!4625743))

(assert (= (and b!4625743 res!1939838) b!4625744))

(declare-fun m!5467725 () Bool)

(assert (=> b!4625743 m!5467725))

(declare-fun m!5467727 () Bool)

(assert (=> b!4625744 m!5467727))

(assert (=> b!4625730 d!1457086))

(declare-fun b!4625763 () Bool)

(declare-datatypes ((List!51666 0))(
  ( (Nil!51542) (Cons!51542 (h!57596 K!12920) (t!358702 List!51666)) )
))
(declare-fun e!2885483 () List!51666)

(declare-fun getKeysList!656 (List!51664) List!51666)

(assert (=> b!4625763 (= e!2885483 (getKeysList!656 (toList!4981 lt!1783682)))))

(declare-fun b!4625764 () Bool)

(declare-fun e!2885486 () Bool)

(declare-fun contains!14591 (List!51666 K!12920) Bool)

(declare-fun keys!18157 (ListMap!4285) List!51666)

(assert (=> b!4625764 (= e!2885486 (contains!14591 (keys!18157 lt!1783682) key!4968))))

(declare-fun b!4625765 () Bool)

(declare-fun e!2885484 () Unit!112145)

(declare-fun Unit!112158 () Unit!112145)

(assert (=> b!4625765 (= e!2885484 Unit!112158)))

(declare-fun b!4625766 () Bool)

(declare-fun e!2885481 () Bool)

(assert (=> b!4625766 (= e!2885481 e!2885486)))

(declare-fun res!1939846 () Bool)

(assert (=> b!4625766 (=> (not res!1939846) (not e!2885486))))

(declare-datatypes ((Option!11597 0))(
  ( (None!11596) (Some!11596 (v!45730 V!13166)) )
))
(declare-fun isDefined!8860 (Option!11597) Bool)

(declare-fun getValueByKey!1455 (List!51664 K!12920) Option!11597)

(assert (=> b!4625766 (= res!1939846 (isDefined!8860 (getValueByKey!1455 (toList!4981 lt!1783682) key!4968)))))

(declare-fun b!4625767 () Bool)

(assert (=> b!4625767 (= e!2885483 (keys!18157 lt!1783682))))

(declare-fun d!1457088 () Bool)

(assert (=> d!1457088 e!2885481))

(declare-fun res!1939847 () Bool)

(assert (=> d!1457088 (=> res!1939847 e!2885481)))

(declare-fun e!2885485 () Bool)

(assert (=> d!1457088 (= res!1939847 e!2885485)))

(declare-fun res!1939845 () Bool)

(assert (=> d!1457088 (=> (not res!1939845) (not e!2885485))))

(declare-fun lt!1783709 () Bool)

(assert (=> d!1457088 (= res!1939845 (not lt!1783709))))

(declare-fun lt!1783708 () Bool)

(assert (=> d!1457088 (= lt!1783709 lt!1783708)))

(declare-fun lt!1783707 () Unit!112145)

(declare-fun e!2885482 () Unit!112145)

(assert (=> d!1457088 (= lt!1783707 e!2885482)))

(declare-fun c!791803 () Bool)

(assert (=> d!1457088 (= c!791803 lt!1783708)))

(declare-fun containsKey!2453 (List!51664 K!12920) Bool)

(assert (=> d!1457088 (= lt!1783708 (containsKey!2453 (toList!4981 lt!1783682) key!4968))))

(assert (=> d!1457088 (= (contains!14587 lt!1783682 key!4968) lt!1783709)))

(declare-fun b!4625768 () Bool)

(assert (=> b!4625768 false))

(declare-fun lt!1783706 () Unit!112145)

(declare-fun lt!1783704 () Unit!112145)

(assert (=> b!4625768 (= lt!1783706 lt!1783704)))

(assert (=> b!4625768 (containsKey!2453 (toList!4981 lt!1783682) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!655 (List!51664 K!12920) Unit!112145)

(assert (=> b!4625768 (= lt!1783704 (lemmaInGetKeysListThenContainsKey!655 (toList!4981 lt!1783682) key!4968))))

(declare-fun Unit!112159 () Unit!112145)

(assert (=> b!4625768 (= e!2885484 Unit!112159)))

(declare-fun b!4625769 () Bool)

(assert (=> b!4625769 (= e!2885485 (not (contains!14591 (keys!18157 lt!1783682) key!4968)))))

(declare-fun bm!322649 () Bool)

(declare-fun call!322654 () Bool)

(assert (=> bm!322649 (= call!322654 (contains!14591 e!2885483 key!4968))))

(declare-fun c!791801 () Bool)

(assert (=> bm!322649 (= c!791801 c!791803)))

(declare-fun b!4625770 () Bool)

(declare-fun lt!1783702 () Unit!112145)

(assert (=> b!4625770 (= e!2885482 lt!1783702)))

(declare-fun lt!1783703 () Unit!112145)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1355 (List!51664 K!12920) Unit!112145)

(assert (=> b!4625770 (= lt!1783703 (lemmaContainsKeyImpliesGetValueByKeyDefined!1355 (toList!4981 lt!1783682) key!4968))))

(assert (=> b!4625770 (isDefined!8860 (getValueByKey!1455 (toList!4981 lt!1783682) key!4968))))

(declare-fun lt!1783705 () Unit!112145)

(assert (=> b!4625770 (= lt!1783705 lt!1783703)))

(declare-fun lemmaInListThenGetKeysListContains!651 (List!51664 K!12920) Unit!112145)

(assert (=> b!4625770 (= lt!1783702 (lemmaInListThenGetKeysListContains!651 (toList!4981 lt!1783682) key!4968))))

(assert (=> b!4625770 call!322654))

(declare-fun b!4625771 () Bool)

(assert (=> b!4625771 (= e!2885482 e!2885484)))

(declare-fun c!791802 () Bool)

(assert (=> b!4625771 (= c!791802 call!322654)))

(assert (= (and d!1457088 c!791803) b!4625770))

(assert (= (and d!1457088 (not c!791803)) b!4625771))

(assert (= (and b!4625771 c!791802) b!4625768))

(assert (= (and b!4625771 (not c!791802)) b!4625765))

(assert (= (or b!4625770 b!4625771) bm!322649))

(assert (= (and bm!322649 c!791801) b!4625763))

(assert (= (and bm!322649 (not c!791801)) b!4625767))

(assert (= (and d!1457088 res!1939845) b!4625769))

(assert (= (and d!1457088 (not res!1939847)) b!4625766))

(assert (= (and b!4625766 res!1939846) b!4625764))

(declare-fun m!5467729 () Bool)

(assert (=> b!4625769 m!5467729))

(assert (=> b!4625769 m!5467729))

(declare-fun m!5467731 () Bool)

(assert (=> b!4625769 m!5467731))

(declare-fun m!5467733 () Bool)

(assert (=> b!4625763 m!5467733))

(declare-fun m!5467735 () Bool)

(assert (=> d!1457088 m!5467735))

(assert (=> b!4625764 m!5467729))

(assert (=> b!4625764 m!5467729))

(assert (=> b!4625764 m!5467731))

(declare-fun m!5467737 () Bool)

(assert (=> bm!322649 m!5467737))

(assert (=> b!4625767 m!5467729))

(declare-fun m!5467739 () Bool)

(assert (=> b!4625766 m!5467739))

(assert (=> b!4625766 m!5467739))

(declare-fun m!5467741 () Bool)

(assert (=> b!4625766 m!5467741))

(declare-fun m!5467743 () Bool)

(assert (=> b!4625770 m!5467743))

(assert (=> b!4625770 m!5467739))

(assert (=> b!4625770 m!5467739))

(assert (=> b!4625770 m!5467741))

(declare-fun m!5467745 () Bool)

(assert (=> b!4625770 m!5467745))

(assert (=> b!4625768 m!5467735))

(declare-fun m!5467747 () Bool)

(assert (=> b!4625768 m!5467747))

(assert (=> b!4625731 d!1457088))

(declare-fun bs!1023522 () Bool)

(declare-fun d!1457092 () Bool)

(assert (= bs!1023522 (and d!1457092 b!4625736)))

(declare-fun lambda!192141 () Int)

(assert (=> bs!1023522 (= lambda!192141 lambda!192138)))

(declare-fun lt!1783712 () ListMap!4285)

(declare-fun invariantList!1206 (List!51664) Bool)

(assert (=> d!1457092 (invariantList!1206 (toList!4981 lt!1783712))))

(declare-fun e!2885489 () ListMap!4285)

(assert (=> d!1457092 (= lt!1783712 e!2885489)))

(declare-fun c!791806 () Bool)

(assert (=> d!1457092 (= c!791806 ((_ is Cons!51541) lt!1783662))))

(assert (=> d!1457092 (forall!10826 lt!1783662 lambda!192141)))

(assert (=> d!1457092 (= (extractMap!1564 lt!1783662) lt!1783712)))

(declare-fun b!4625776 () Bool)

(assert (=> b!4625776 (= e!2885489 (addToMapMapFromBucket!969 (_2!29534 (h!57593 lt!1783662)) (extractMap!1564 (t!358699 lt!1783662))))))

(declare-fun b!4625777 () Bool)

(assert (=> b!4625777 (= e!2885489 (ListMap!4286 Nil!51540))))

(assert (= (and d!1457092 c!791806) b!4625776))

(assert (= (and d!1457092 (not c!791806)) b!4625777))

(declare-fun m!5467749 () Bool)

(assert (=> d!1457092 m!5467749))

(declare-fun m!5467751 () Bool)

(assert (=> d!1457092 m!5467751))

(declare-fun m!5467753 () Bool)

(assert (=> b!4625776 m!5467753))

(assert (=> b!4625776 m!5467753))

(declare-fun m!5467755 () Bool)

(assert (=> b!4625776 m!5467755))

(assert (=> b!4625731 d!1457092))

(declare-fun b!4625864 () Bool)

(assert (=> b!4625864 true))

(declare-fun bs!1023544 () Bool)

(declare-fun b!4625862 () Bool)

(assert (= bs!1023544 (and b!4625862 b!4625864)))

(declare-fun lambda!192218 () Int)

(declare-fun lambda!192217 () Int)

(assert (=> bs!1023544 (= lambda!192218 lambda!192217)))

(assert (=> b!4625862 true))

(declare-fun lambda!192219 () Int)

(declare-fun lt!1783876 () ListMap!4285)

(assert (=> bs!1023544 (= (= lt!1783876 lt!1783664) (= lambda!192219 lambda!192217))))

(assert (=> b!4625862 (= (= lt!1783876 lt!1783664) (= lambda!192219 lambda!192218))))

(assert (=> b!4625862 true))

(declare-fun bs!1023546 () Bool)

(declare-fun d!1457094 () Bool)

(assert (= bs!1023546 (and d!1457094 b!4625864)))

(declare-fun lt!1783880 () ListMap!4285)

(declare-fun lambda!192220 () Int)

(assert (=> bs!1023546 (= (= lt!1783880 lt!1783664) (= lambda!192220 lambda!192217))))

(declare-fun bs!1023547 () Bool)

(assert (= bs!1023547 (and d!1457094 b!4625862)))

(assert (=> bs!1023547 (= (= lt!1783880 lt!1783664) (= lambda!192220 lambda!192218))))

(assert (=> bs!1023547 (= (= lt!1783880 lt!1783876) (= lambda!192220 lambda!192219))))

(assert (=> d!1457094 true))

(declare-fun e!2885539 () Bool)

(assert (=> d!1457094 e!2885539))

(declare-fun res!1939893 () Bool)

(assert (=> d!1457094 (=> (not res!1939893) (not e!2885539))))

(declare-fun forall!10828 (List!51664 Int) Bool)

(assert (=> d!1457094 (= res!1939893 (forall!10828 oldBucket!40 lambda!192220))))

(declare-fun e!2885537 () ListMap!4285)

(assert (=> d!1457094 (= lt!1783880 e!2885537)))

(declare-fun c!791823 () Bool)

(assert (=> d!1457094 (= c!791823 ((_ is Nil!51540) oldBucket!40))))

(assert (=> d!1457094 (noDuplicateKeys!1508 oldBucket!40)))

(assert (=> d!1457094 (= (addToMapMapFromBucket!969 oldBucket!40 lt!1783664) lt!1783880)))

(assert (=> b!4625862 (= e!2885537 lt!1783876)))

(declare-fun lt!1783879 () ListMap!4285)

(assert (=> b!4625862 (= lt!1783879 (+!1874 lt!1783664 (h!57592 oldBucket!40)))))

(assert (=> b!4625862 (= lt!1783876 (addToMapMapFromBucket!969 (t!358698 oldBucket!40) (+!1874 lt!1783664 (h!57592 oldBucket!40))))))

(declare-fun lt!1783887 () Unit!112145)

(declare-fun call!322671 () Unit!112145)

(assert (=> b!4625862 (= lt!1783887 call!322671)))

(assert (=> b!4625862 (forall!10828 (toList!4981 lt!1783664) lambda!192218)))

(declare-fun lt!1783877 () Unit!112145)

(assert (=> b!4625862 (= lt!1783877 lt!1783887)))

(assert (=> b!4625862 (forall!10828 (toList!4981 lt!1783879) lambda!192219)))

(declare-fun lt!1783869 () Unit!112145)

(declare-fun Unit!112160 () Unit!112145)

(assert (=> b!4625862 (= lt!1783869 Unit!112160)))

(declare-fun call!322672 () Bool)

(assert (=> b!4625862 call!322672))

(declare-fun lt!1783882 () Unit!112145)

(declare-fun Unit!112161 () Unit!112145)

(assert (=> b!4625862 (= lt!1783882 Unit!112161)))

(declare-fun lt!1783878 () Unit!112145)

(declare-fun Unit!112162 () Unit!112145)

(assert (=> b!4625862 (= lt!1783878 Unit!112162)))

(declare-fun lt!1783884 () Unit!112145)

(declare-fun forallContained!3056 (List!51664 Int tuple2!52478) Unit!112145)

(assert (=> b!4625862 (= lt!1783884 (forallContained!3056 (toList!4981 lt!1783879) lambda!192219 (h!57592 oldBucket!40)))))

(assert (=> b!4625862 (contains!14587 lt!1783879 (_1!29533 (h!57592 oldBucket!40)))))

(declare-fun lt!1783883 () Unit!112145)

(declare-fun Unit!112163 () Unit!112145)

(assert (=> b!4625862 (= lt!1783883 Unit!112163)))

(assert (=> b!4625862 (contains!14587 lt!1783876 (_1!29533 (h!57592 oldBucket!40)))))

(declare-fun lt!1783868 () Unit!112145)

(declare-fun Unit!112164 () Unit!112145)

(assert (=> b!4625862 (= lt!1783868 Unit!112164)))

(assert (=> b!4625862 (forall!10828 oldBucket!40 lambda!192219)))

(declare-fun lt!1783875 () Unit!112145)

(declare-fun Unit!112165 () Unit!112145)

(assert (=> b!4625862 (= lt!1783875 Unit!112165)))

(assert (=> b!4625862 (forall!10828 (toList!4981 lt!1783879) lambda!192219)))

(declare-fun lt!1783874 () Unit!112145)

(declare-fun Unit!112166 () Unit!112145)

(assert (=> b!4625862 (= lt!1783874 Unit!112166)))

(declare-fun lt!1783870 () Unit!112145)

(declare-fun Unit!112167 () Unit!112145)

(assert (=> b!4625862 (= lt!1783870 Unit!112167)))

(declare-fun lt!1783872 () Unit!112145)

(declare-fun addForallContainsKeyThenBeforeAdding!507 (ListMap!4285 ListMap!4285 K!12920 V!13166) Unit!112145)

(assert (=> b!4625862 (= lt!1783872 (addForallContainsKeyThenBeforeAdding!507 lt!1783664 lt!1783876 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> b!4625862 (forall!10828 (toList!4981 lt!1783664) lambda!192219)))

(declare-fun lt!1783873 () Unit!112145)

(assert (=> b!4625862 (= lt!1783873 lt!1783872)))

(assert (=> b!4625862 (forall!10828 (toList!4981 lt!1783664) lambda!192219)))

(declare-fun lt!1783867 () Unit!112145)

(declare-fun Unit!112168 () Unit!112145)

(assert (=> b!4625862 (= lt!1783867 Unit!112168)))

(declare-fun res!1939895 () Bool)

(declare-fun call!322670 () Bool)

(assert (=> b!4625862 (= res!1939895 call!322670)))

(declare-fun e!2885538 () Bool)

(assert (=> b!4625862 (=> (not res!1939895) (not e!2885538))))

(assert (=> b!4625862 e!2885538))

(declare-fun lt!1783881 () Unit!112145)

(declare-fun Unit!112169 () Unit!112145)

(assert (=> b!4625862 (= lt!1783881 Unit!112169)))

(declare-fun bm!322665 () Bool)

(assert (=> bm!322665 (= call!322670 (forall!10828 (ite c!791823 (toList!4981 lt!1783664) oldBucket!40) (ite c!791823 lambda!192217 lambda!192219)))))

(declare-fun b!4625863 () Bool)

(assert (=> b!4625863 (= e!2885538 (forall!10828 (toList!4981 lt!1783664) lambda!192219))))

(declare-fun bm!322666 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!508 (ListMap!4285) Unit!112145)

(assert (=> bm!322666 (= call!322671 (lemmaContainsAllItsOwnKeys!508 lt!1783664))))

(declare-fun bm!322667 () Bool)

(assert (=> bm!322667 (= call!322672 (forall!10828 (ite c!791823 (toList!4981 lt!1783664) (t!358698 oldBucket!40)) (ite c!791823 lambda!192217 lambda!192219)))))

(assert (=> b!4625864 (= e!2885537 lt!1783664)))

(declare-fun lt!1783885 () Unit!112145)

(assert (=> b!4625864 (= lt!1783885 call!322671)))

(assert (=> b!4625864 call!322672))

(declare-fun lt!1783886 () Unit!112145)

(assert (=> b!4625864 (= lt!1783886 lt!1783885)))

(assert (=> b!4625864 call!322670))

(declare-fun lt!1783871 () Unit!112145)

(declare-fun Unit!112170 () Unit!112145)

(assert (=> b!4625864 (= lt!1783871 Unit!112170)))

(declare-fun b!4625865 () Bool)

(assert (=> b!4625865 (= e!2885539 (invariantList!1206 (toList!4981 lt!1783880)))))

(declare-fun b!4625866 () Bool)

(declare-fun res!1939894 () Bool)

(assert (=> b!4625866 (=> (not res!1939894) (not e!2885539))))

(assert (=> b!4625866 (= res!1939894 (forall!10828 (toList!4981 lt!1783664) lambda!192220))))

(assert (= (and d!1457094 c!791823) b!4625864))

(assert (= (and d!1457094 (not c!791823)) b!4625862))

(assert (= (and b!4625862 res!1939895) b!4625863))

(assert (= (or b!4625864 b!4625862) bm!322666))

(assert (= (or b!4625864 b!4625862) bm!322667))

(assert (= (or b!4625864 b!4625862) bm!322665))

(assert (= (and d!1457094 res!1939893) b!4625866))

(assert (= (and b!4625866 res!1939894) b!4625865))

(declare-fun m!5467887 () Bool)

(assert (=> bm!322666 m!5467887))

(declare-fun m!5467889 () Bool)

(assert (=> bm!322667 m!5467889))

(declare-fun m!5467891 () Bool)

(assert (=> d!1457094 m!5467891))

(assert (=> d!1457094 m!5467631))

(declare-fun m!5467893 () Bool)

(assert (=> bm!322665 m!5467893))

(declare-fun m!5467895 () Bool)

(assert (=> b!4625866 m!5467895))

(declare-fun m!5467897 () Bool)

(assert (=> b!4625862 m!5467897))

(declare-fun m!5467899 () Bool)

(assert (=> b!4625862 m!5467899))

(declare-fun m!5467901 () Bool)

(assert (=> b!4625862 m!5467901))

(assert (=> b!4625862 m!5467899))

(declare-fun m!5467903 () Bool)

(assert (=> b!4625862 m!5467903))

(declare-fun m!5467905 () Bool)

(assert (=> b!4625862 m!5467905))

(declare-fun m!5467907 () Bool)

(assert (=> b!4625862 m!5467907))

(declare-fun m!5467909 () Bool)

(assert (=> b!4625862 m!5467909))

(declare-fun m!5467911 () Bool)

(assert (=> b!4625862 m!5467911))

(assert (=> b!4625862 m!5467901))

(assert (=> b!4625862 m!5467905))

(declare-fun m!5467913 () Bool)

(assert (=> b!4625862 m!5467913))

(declare-fun m!5467915 () Bool)

(assert (=> b!4625862 m!5467915))

(assert (=> b!4625863 m!5467901))

(declare-fun m!5467917 () Bool)

(assert (=> b!4625865 m!5467917))

(assert (=> b!4625727 d!1457094))

(declare-fun bs!1023548 () Bool)

(declare-fun d!1457130 () Bool)

(assert (= bs!1023548 (and d!1457130 b!4625736)))

(declare-fun lambda!192221 () Int)

(assert (=> bs!1023548 (= lambda!192221 lambda!192138)))

(declare-fun bs!1023549 () Bool)

(assert (= bs!1023549 (and d!1457130 d!1457092)))

(assert (=> bs!1023549 (= lambda!192221 lambda!192141)))

(declare-fun lt!1783895 () ListMap!4285)

(assert (=> d!1457130 (invariantList!1206 (toList!4981 lt!1783895))))

(declare-fun e!2885543 () ListMap!4285)

(assert (=> d!1457130 (= lt!1783895 e!2885543)))

(declare-fun c!791824 () Bool)

(assert (=> d!1457130 (= c!791824 ((_ is Cons!51541) Nil!51541))))

(assert (=> d!1457130 (forall!10826 Nil!51541 lambda!192221)))

(assert (=> d!1457130 (= (extractMap!1564 Nil!51541) lt!1783895)))

(declare-fun b!4625872 () Bool)

(assert (=> b!4625872 (= e!2885543 (addToMapMapFromBucket!969 (_2!29534 (h!57593 Nil!51541)) (extractMap!1564 (t!358699 Nil!51541))))))

(declare-fun b!4625873 () Bool)

(assert (=> b!4625873 (= e!2885543 (ListMap!4286 Nil!51540))))

(assert (= (and d!1457130 c!791824) b!4625872))

(assert (= (and d!1457130 (not c!791824)) b!4625873))

(declare-fun m!5467925 () Bool)

(assert (=> d!1457130 m!5467925))

(declare-fun m!5467927 () Bool)

(assert (=> d!1457130 m!5467927))

(declare-fun m!5467929 () Bool)

(assert (=> b!4625872 m!5467929))

(assert (=> b!4625872 m!5467929))

(declare-fun m!5467931 () Bool)

(assert (=> b!4625872 m!5467931))

(assert (=> b!4625727 d!1457130))

(declare-fun b!4625889 () Bool)

(declare-fun e!2885553 () List!51664)

(declare-fun e!2885552 () List!51664)

(assert (=> b!4625889 (= e!2885553 e!2885552)))

(declare-fun c!791831 () Bool)

(assert (=> b!4625889 (= c!791831 ((_ is Cons!51540) (t!358698 oldBucket!40)))))

(declare-fun b!4625890 () Bool)

(assert (=> b!4625890 (= e!2885552 (Cons!51540 (h!57592 (t!358698 oldBucket!40)) (removePairForKey!1131 (t!358698 (t!358698 oldBucket!40)) key!4968)))))

(declare-fun b!4625888 () Bool)

(assert (=> b!4625888 (= e!2885553 (t!358698 (t!358698 oldBucket!40)))))

(declare-fun b!4625891 () Bool)

(assert (=> b!4625891 (= e!2885552 Nil!51540)))

(declare-fun d!1457136 () Bool)

(declare-fun lt!1783906 () List!51664)

(assert (=> d!1457136 (not (containsKey!2452 lt!1783906 key!4968))))

(assert (=> d!1457136 (= lt!1783906 e!2885553)))

(declare-fun c!791832 () Bool)

(assert (=> d!1457136 (= c!791832 (and ((_ is Cons!51540) (t!358698 oldBucket!40)) (= (_1!29533 (h!57592 (t!358698 oldBucket!40))) key!4968)))))

(assert (=> d!1457136 (noDuplicateKeys!1508 (t!358698 oldBucket!40))))

(assert (=> d!1457136 (= (removePairForKey!1131 (t!358698 oldBucket!40) key!4968) lt!1783906)))

(assert (= (and d!1457136 c!791832) b!4625888))

(assert (= (and d!1457136 (not c!791832)) b!4625889))

(assert (= (and b!4625889 c!791831) b!4625890))

(assert (= (and b!4625889 (not c!791831)) b!4625891))

(declare-fun m!5467933 () Bool)

(assert (=> b!4625890 m!5467933))

(declare-fun m!5467935 () Bool)

(assert (=> d!1457136 m!5467935))

(assert (=> d!1457136 m!5467723))

(assert (=> b!4625728 d!1457136))

(declare-fun d!1457138 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8803 (List!51664) (InoxSet tuple2!52478))

(assert (=> d!1457138 (= (eq!823 lt!1783668 (+!1874 lt!1783667 lt!1783661)) (= (content!8803 (toList!4981 lt!1783668)) (content!8803 (toList!4981 (+!1874 lt!1783667 lt!1783661)))))))

(declare-fun bs!1023550 () Bool)

(assert (= bs!1023550 d!1457138))

(declare-fun m!5467937 () Bool)

(assert (=> bs!1023550 m!5467937))

(declare-fun m!5467939 () Bool)

(assert (=> bs!1023550 m!5467939))

(assert (=> b!4625729 d!1457138))

(declare-fun d!1457140 () Bool)

(declare-fun e!2885564 () Bool)

(assert (=> d!1457140 e!2885564))

(declare-fun res!1939908 () Bool)

(assert (=> d!1457140 (=> (not res!1939908) (not e!2885564))))

(declare-fun lt!1783925 () ListMap!4285)

(assert (=> d!1457140 (= res!1939908 (contains!14587 lt!1783925 (_1!29533 lt!1783661)))))

(declare-fun lt!1783926 () List!51664)

(assert (=> d!1457140 (= lt!1783925 (ListMap!4286 lt!1783926))))

(declare-fun lt!1783927 () Unit!112145)

(declare-fun lt!1783924 () Unit!112145)

(assert (=> d!1457140 (= lt!1783927 lt!1783924)))

(assert (=> d!1457140 (= (getValueByKey!1455 lt!1783926 (_1!29533 lt!1783661)) (Some!11596 (_2!29533 lt!1783661)))))

(declare-fun lemmaContainsTupThenGetReturnValue!850 (List!51664 K!12920 V!13166) Unit!112145)

(assert (=> d!1457140 (= lt!1783924 (lemmaContainsTupThenGetReturnValue!850 lt!1783926 (_1!29533 lt!1783661) (_2!29533 lt!1783661)))))

(declare-fun insertNoDuplicatedKeys!358 (List!51664 K!12920 V!13166) List!51664)

(assert (=> d!1457140 (= lt!1783926 (insertNoDuplicatedKeys!358 (toList!4981 lt!1783667) (_1!29533 lt!1783661) (_2!29533 lt!1783661)))))

(assert (=> d!1457140 (= (+!1874 lt!1783667 lt!1783661) lt!1783925)))

(declare-fun b!4625909 () Bool)

(declare-fun res!1939909 () Bool)

(assert (=> b!4625909 (=> (not res!1939909) (not e!2885564))))

(assert (=> b!4625909 (= res!1939909 (= (getValueByKey!1455 (toList!4981 lt!1783925) (_1!29533 lt!1783661)) (Some!11596 (_2!29533 lt!1783661))))))

(declare-fun b!4625910 () Bool)

(declare-fun contains!14592 (List!51664 tuple2!52478) Bool)

(assert (=> b!4625910 (= e!2885564 (contains!14592 (toList!4981 lt!1783925) lt!1783661))))

(assert (= (and d!1457140 res!1939908) b!4625909))

(assert (= (and b!4625909 res!1939909) b!4625910))

(declare-fun m!5467951 () Bool)

(assert (=> d!1457140 m!5467951))

(declare-fun m!5467953 () Bool)

(assert (=> d!1457140 m!5467953))

(declare-fun m!5467955 () Bool)

(assert (=> d!1457140 m!5467955))

(declare-fun m!5467957 () Bool)

(assert (=> d!1457140 m!5467957))

(declare-fun m!5467959 () Bool)

(assert (=> b!4625909 m!5467959))

(declare-fun m!5467961 () Bool)

(assert (=> b!4625910 m!5467961))

(assert (=> b!4625729 d!1457140))

(declare-fun bs!1023557 () Bool)

(declare-fun d!1457146 () Bool)

(assert (= bs!1023557 (and d!1457146 b!4625736)))

(declare-fun lambda!192225 () Int)

(assert (=> bs!1023557 (= lambda!192225 lambda!192138)))

(declare-fun bs!1023558 () Bool)

(assert (= bs!1023558 (and d!1457146 d!1457092)))

(assert (=> bs!1023558 (= lambda!192225 lambda!192141)))

(declare-fun bs!1023559 () Bool)

(assert (= bs!1023559 (and d!1457146 d!1457130)))

(assert (=> bs!1023559 (= lambda!192225 lambda!192221)))

(declare-fun lt!1783928 () ListMap!4285)

(assert (=> d!1457146 (invariantList!1206 (toList!4981 lt!1783928))))

(declare-fun e!2885571 () ListMap!4285)

(assert (=> d!1457146 (= lt!1783928 e!2885571)))

(declare-fun c!791838 () Bool)

(assert (=> d!1457146 (= c!791838 ((_ is Cons!51541) (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541)))))

(assert (=> d!1457146 (forall!10826 (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541) lambda!192225)))

(assert (=> d!1457146 (= (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541)) lt!1783928)))

(declare-fun b!4625919 () Bool)

(assert (=> b!4625919 (= e!2885571 (addToMapMapFromBucket!969 (_2!29534 (h!57593 (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541))) (extractMap!1564 (t!358699 (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541)))))))

(declare-fun b!4625920 () Bool)

(assert (=> b!4625920 (= e!2885571 (ListMap!4286 Nil!51540))))

(assert (= (and d!1457146 c!791838) b!4625919))

(assert (= (and d!1457146 (not c!791838)) b!4625920))

(declare-fun m!5467963 () Bool)

(assert (=> d!1457146 m!5467963))

(declare-fun m!5467965 () Bool)

(assert (=> d!1457146 m!5467965))

(declare-fun m!5467967 () Bool)

(assert (=> b!4625919 m!5467967))

(assert (=> b!4625919 m!5467967))

(declare-fun m!5467969 () Bool)

(assert (=> b!4625919 m!5467969))

(assert (=> b!4625729 d!1457146))

(declare-fun bs!1023560 () Bool)

(declare-fun d!1457148 () Bool)

(assert (= bs!1023560 (and d!1457148 b!4625736)))

(declare-fun lambda!192226 () Int)

(assert (=> bs!1023560 (= lambda!192226 lambda!192138)))

(declare-fun bs!1023561 () Bool)

(assert (= bs!1023561 (and d!1457148 d!1457092)))

(assert (=> bs!1023561 (= lambda!192226 lambda!192141)))

(declare-fun bs!1023562 () Bool)

(assert (= bs!1023562 (and d!1457148 d!1457130)))

(assert (=> bs!1023562 (= lambda!192226 lambda!192221)))

(declare-fun bs!1023563 () Bool)

(assert (= bs!1023563 (and d!1457148 d!1457146)))

(assert (=> bs!1023563 (= lambda!192226 lambda!192225)))

(declare-fun lt!1783929 () ListMap!4285)

(assert (=> d!1457148 (invariantList!1206 (toList!4981 lt!1783929))))

(declare-fun e!2885572 () ListMap!4285)

(assert (=> d!1457148 (= lt!1783929 e!2885572)))

(declare-fun c!791839 () Bool)

(assert (=> d!1457148 (= c!791839 ((_ is Cons!51541) (Cons!51541 (tuple2!52481 hash!414 newBucket!224) Nil!51541)))))

(assert (=> d!1457148 (forall!10826 (Cons!51541 (tuple2!52481 hash!414 newBucket!224) Nil!51541) lambda!192226)))

(assert (=> d!1457148 (= (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 newBucket!224) Nil!51541)) lt!1783929)))

(declare-fun b!4625921 () Bool)

(assert (=> b!4625921 (= e!2885572 (addToMapMapFromBucket!969 (_2!29534 (h!57593 (Cons!51541 (tuple2!52481 hash!414 newBucket!224) Nil!51541))) (extractMap!1564 (t!358699 (Cons!51541 (tuple2!52481 hash!414 newBucket!224) Nil!51541)))))))

(declare-fun b!4625922 () Bool)

(assert (=> b!4625922 (= e!2885572 (ListMap!4286 Nil!51540))))

(assert (= (and d!1457148 c!791839) b!4625921))

(assert (= (and d!1457148 (not c!791839)) b!4625922))

(declare-fun m!5467971 () Bool)

(assert (=> d!1457148 m!5467971))

(declare-fun m!5467973 () Bool)

(assert (=> d!1457148 m!5467973))

(declare-fun m!5467975 () Bool)

(assert (=> b!4625921 m!5467975))

(assert (=> b!4625921 m!5467975))

(declare-fun m!5467977 () Bool)

(assert (=> b!4625921 m!5467977))

(assert (=> b!4625729 d!1457148))

(declare-fun bs!1023564 () Bool)

(declare-fun d!1457150 () Bool)

(assert (= bs!1023564 (and d!1457150 b!4625864)))

(declare-fun lambda!192229 () Int)

(assert (=> bs!1023564 (not (= lambda!192229 lambda!192217))))

(declare-fun bs!1023565 () Bool)

(assert (= bs!1023565 (and d!1457150 b!4625862)))

(assert (=> bs!1023565 (not (= lambda!192229 lambda!192218))))

(assert (=> bs!1023565 (not (= lambda!192229 lambda!192219))))

(declare-fun bs!1023566 () Bool)

(assert (= bs!1023566 (and d!1457150 d!1457094)))

(assert (=> bs!1023566 (not (= lambda!192229 lambda!192220))))

(assert (=> d!1457150 true))

(assert (=> d!1457150 true))

(assert (=> d!1457150 (= (allKeysSameHash!1362 newBucket!224 hash!414 hashF!1389) (forall!10828 newBucket!224 lambda!192229))))

(declare-fun bs!1023567 () Bool)

(assert (= bs!1023567 d!1457150))

(declare-fun m!5467993 () Bool)

(assert (=> bs!1023567 m!5467993))

(assert (=> b!4625735 d!1457150))

(declare-fun d!1457154 () Bool)

(assert (=> d!1457154 (= (eq!823 lt!1783667 lt!1783665) (= (content!8803 (toList!4981 lt!1783667)) (content!8803 (toList!4981 lt!1783665))))))

(declare-fun bs!1023568 () Bool)

(assert (= bs!1023568 d!1457154))

(declare-fun m!5467995 () Bool)

(assert (=> bs!1023568 m!5467995))

(declare-fun m!5467997 () Bool)

(assert (=> bs!1023568 m!5467997))

(assert (=> b!4625724 d!1457154))

(declare-fun d!1457156 () Bool)

(declare-fun e!2885580 () Bool)

(assert (=> d!1457156 e!2885580))

(declare-fun res!1939924 () Bool)

(assert (=> d!1457156 (=> (not res!1939924) (not e!2885580))))

(declare-fun lt!1783933 () ListMap!4285)

(assert (=> d!1457156 (= res!1939924 (not (contains!14587 lt!1783933 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!255 (List!51664 K!12920) List!51664)

(assert (=> d!1457156 (= lt!1783933 (ListMap!4286 (removePresrvNoDuplicatedKeys!255 (toList!4981 lt!1783671) key!4968)))))

(assert (=> d!1457156 (= (-!548 lt!1783671 key!4968) lt!1783933)))

(declare-fun b!4625937 () Bool)

(declare-fun content!8804 (List!51666) (InoxSet K!12920))

(assert (=> b!4625937 (= e!2885580 (= ((_ map and) (content!8804 (keys!18157 lt!1783671)) ((_ map not) (store ((as const (Array K!12920 Bool)) false) key!4968 true))) (content!8804 (keys!18157 lt!1783933))))))

(assert (= (and d!1457156 res!1939924) b!4625937))

(declare-fun m!5467999 () Bool)

(assert (=> d!1457156 m!5467999))

(declare-fun m!5468001 () Bool)

(assert (=> d!1457156 m!5468001))

(declare-fun m!5468003 () Bool)

(assert (=> b!4625937 m!5468003))

(declare-fun m!5468005 () Bool)

(assert (=> b!4625937 m!5468005))

(assert (=> b!4625937 m!5468003))

(declare-fun m!5468007 () Bool)

(assert (=> b!4625937 m!5468007))

(declare-fun m!5468009 () Bool)

(assert (=> b!4625937 m!5468009))

(declare-fun m!5468011 () Bool)

(assert (=> b!4625937 m!5468011))

(assert (=> b!4625937 m!5468007))

(assert (=> b!4625724 d!1457156))

(declare-fun d!1457158 () Bool)

(declare-fun res!1939929 () Bool)

(declare-fun e!2885585 () Bool)

(assert (=> d!1457158 (=> res!1939929 e!2885585)))

(assert (=> d!1457158 (= res!1939929 ((_ is Nil!51541) lt!1783670))))

(assert (=> d!1457158 (= (forall!10826 lt!1783670 lambda!192138) e!2885585)))

(declare-fun b!4625942 () Bool)

(declare-fun e!2885586 () Bool)

(assert (=> b!4625942 (= e!2885585 e!2885586)))

(declare-fun res!1939930 () Bool)

(assert (=> b!4625942 (=> (not res!1939930) (not e!2885586))))

(declare-fun dynLambda!21500 (Int tuple2!52480) Bool)

(assert (=> b!4625942 (= res!1939930 (dynLambda!21500 lambda!192138 (h!57593 lt!1783670)))))

(declare-fun b!4625943 () Bool)

(assert (=> b!4625943 (= e!2885586 (forall!10826 (t!358699 lt!1783670) lambda!192138))))

(assert (= (and d!1457158 (not res!1939929)) b!4625942))

(assert (= (and b!4625942 res!1939930) b!4625943))

(declare-fun b_lambda!170743 () Bool)

(assert (=> (not b_lambda!170743) (not b!4625942)))

(declare-fun m!5468013 () Bool)

(assert (=> b!4625942 m!5468013))

(declare-fun m!5468015 () Bool)

(assert (=> b!4625943 m!5468015))

(assert (=> b!4625724 d!1457158))

(declare-fun d!1457160 () Bool)

(assert (=> d!1457160 (eq!823 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783676) Nil!51541)) (-!548 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 (t!358698 oldBucket!40)) Nil!51541)) key!4968))))

(declare-fun lt!1783962 () Unit!112145)

(declare-fun choose!31321 ((_ BitVec 64) List!51664 List!51664 K!12920 Hashable!5905) Unit!112145)

(assert (=> d!1457160 (= lt!1783962 (choose!31321 hash!414 (t!358698 oldBucket!40) lt!1783676 key!4968 hashF!1389))))

(assert (=> d!1457160 (noDuplicateKeys!1508 (t!358698 oldBucket!40))))

(assert (=> d!1457160 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!110 hash!414 (t!358698 oldBucket!40) lt!1783676 key!4968 hashF!1389) lt!1783962)))

(declare-fun bs!1023581 () Bool)

(assert (= bs!1023581 d!1457160))

(declare-fun m!5468055 () Bool)

(assert (=> bs!1023581 m!5468055))

(declare-fun m!5468057 () Bool)

(assert (=> bs!1023581 m!5468057))

(assert (=> bs!1023581 m!5467613))

(assert (=> bs!1023581 m!5468057))

(declare-fun m!5468059 () Bool)

(assert (=> bs!1023581 m!5468059))

(declare-fun m!5468061 () Bool)

(assert (=> bs!1023581 m!5468061))

(assert (=> bs!1023581 m!5467723))

(assert (=> bs!1023581 m!5467613))

(assert (=> bs!1023581 m!5468055))

(assert (=> b!4625724 d!1457160))

(declare-fun d!1457172 () Bool)

(declare-fun e!2885608 () Bool)

(assert (=> d!1457172 e!2885608))

(declare-fun res!1939940 () Bool)

(assert (=> d!1457172 (=> (not res!1939940) (not e!2885608))))

(declare-fun lt!1783964 () ListMap!4285)

(assert (=> d!1457172 (= res!1939940 (contains!14587 lt!1783964 (_1!29533 (h!57592 oldBucket!40))))))

(declare-fun lt!1783965 () List!51664)

(assert (=> d!1457172 (= lt!1783964 (ListMap!4286 lt!1783965))))

(declare-fun lt!1783966 () Unit!112145)

(declare-fun lt!1783963 () Unit!112145)

(assert (=> d!1457172 (= lt!1783966 lt!1783963)))

(assert (=> d!1457172 (= (getValueByKey!1455 lt!1783965 (_1!29533 (h!57592 oldBucket!40))) (Some!11596 (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457172 (= lt!1783963 (lemmaContainsTupThenGetReturnValue!850 lt!1783965 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457172 (= lt!1783965 (insertNoDuplicatedKeys!358 (toList!4981 lt!1783665) (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457172 (= (+!1874 lt!1783665 (h!57592 oldBucket!40)) lt!1783964)))

(declare-fun b!4625977 () Bool)

(declare-fun res!1939941 () Bool)

(assert (=> b!4625977 (=> (not res!1939941) (not e!2885608))))

(assert (=> b!4625977 (= res!1939941 (= (getValueByKey!1455 (toList!4981 lt!1783964) (_1!29533 (h!57592 oldBucket!40))) (Some!11596 (_2!29533 (h!57592 oldBucket!40)))))))

(declare-fun b!4625978 () Bool)

(assert (=> b!4625978 (= e!2885608 (contains!14592 (toList!4981 lt!1783964) (h!57592 oldBucket!40)))))

(assert (= (and d!1457172 res!1939940) b!4625977))

(assert (= (and b!4625977 res!1939941) b!4625978))

(declare-fun m!5468063 () Bool)

(assert (=> d!1457172 m!5468063))

(declare-fun m!5468065 () Bool)

(assert (=> d!1457172 m!5468065))

(declare-fun m!5468067 () Bool)

(assert (=> d!1457172 m!5468067))

(declare-fun m!5468069 () Bool)

(assert (=> d!1457172 m!5468069))

(declare-fun m!5468071 () Bool)

(assert (=> b!4625977 m!5468071))

(declare-fun m!5468073 () Bool)

(assert (=> b!4625978 m!5468073))

(assert (=> b!4625724 d!1457172))

(declare-fun d!1457174 () Bool)

(declare-fun e!2885609 () Bool)

(assert (=> d!1457174 e!2885609))

(declare-fun res!1939942 () Bool)

(assert (=> d!1457174 (=> (not res!1939942) (not e!2885609))))

(declare-fun lt!1783968 () ListMap!4285)

(assert (=> d!1457174 (= res!1939942 (contains!14587 lt!1783968 (_1!29533 (h!57592 oldBucket!40))))))

(declare-fun lt!1783969 () List!51664)

(assert (=> d!1457174 (= lt!1783968 (ListMap!4286 lt!1783969))))

(declare-fun lt!1783970 () Unit!112145)

(declare-fun lt!1783967 () Unit!112145)

(assert (=> d!1457174 (= lt!1783970 lt!1783967)))

(assert (=> d!1457174 (= (getValueByKey!1455 lt!1783969 (_1!29533 (h!57592 oldBucket!40))) (Some!11596 (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457174 (= lt!1783967 (lemmaContainsTupThenGetReturnValue!850 lt!1783969 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457174 (= lt!1783969 (insertNoDuplicatedKeys!358 (toList!4981 lt!1783671) (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457174 (= (+!1874 lt!1783671 (h!57592 oldBucket!40)) lt!1783968)))

(declare-fun b!4625979 () Bool)

(declare-fun res!1939943 () Bool)

(assert (=> b!4625979 (=> (not res!1939943) (not e!2885609))))

(assert (=> b!4625979 (= res!1939943 (= (getValueByKey!1455 (toList!4981 lt!1783968) (_1!29533 (h!57592 oldBucket!40))) (Some!11596 (_2!29533 (h!57592 oldBucket!40)))))))

(declare-fun b!4625980 () Bool)

(assert (=> b!4625980 (= e!2885609 (contains!14592 (toList!4981 lt!1783968) (h!57592 oldBucket!40)))))

(assert (= (and d!1457174 res!1939942) b!4625979))

(assert (= (and b!4625979 res!1939943) b!4625980))

(declare-fun m!5468075 () Bool)

(assert (=> d!1457174 m!5468075))

(declare-fun m!5468077 () Bool)

(assert (=> d!1457174 m!5468077))

(declare-fun m!5468079 () Bool)

(assert (=> d!1457174 m!5468079))

(declare-fun m!5468081 () Bool)

(assert (=> d!1457174 m!5468081))

(declare-fun m!5468083 () Bool)

(assert (=> b!4625979 m!5468083))

(declare-fun m!5468085 () Bool)

(assert (=> b!4625980 m!5468085))

(assert (=> b!4625724 d!1457174))

(declare-fun d!1457176 () Bool)

(assert (=> d!1457176 (= (-!548 (+!1874 lt!1783671 (tuple2!52479 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40)))) key!4968) (+!1874 (-!548 lt!1783671 key!4968) (tuple2!52479 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40)))))))

(declare-fun lt!1783985 () Unit!112145)

(declare-fun choose!31322 (ListMap!4285 K!12920 V!13166 K!12920) Unit!112145)

(assert (=> d!1457176 (= lt!1783985 (choose!31322 lt!1783671 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40)) key!4968))))

(assert (=> d!1457176 (not (= (_1!29533 (h!57592 oldBucket!40)) key!4968))))

(assert (=> d!1457176 (= (addRemoveCommutativeForDiffKeys!3 lt!1783671 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40)) key!4968) lt!1783985)))

(declare-fun bs!1023584 () Bool)

(assert (= bs!1023584 d!1457176))

(declare-fun m!5468117 () Bool)

(assert (=> bs!1023584 m!5468117))

(declare-fun m!5468119 () Bool)

(assert (=> bs!1023584 m!5468119))

(assert (=> bs!1023584 m!5467681))

(declare-fun m!5468121 () Bool)

(assert (=> bs!1023584 m!5468121))

(assert (=> bs!1023584 m!5467681))

(assert (=> bs!1023584 m!5468117))

(declare-fun m!5468123 () Bool)

(assert (=> bs!1023584 m!5468123))

(assert (=> b!4625724 d!1457176))

(declare-fun d!1457188 () Bool)

(declare-fun e!2885612 () Bool)

(assert (=> d!1457188 e!2885612))

(declare-fun res!1939948 () Bool)

(assert (=> d!1457188 (=> (not res!1939948) (not e!2885612))))

(declare-fun lt!1783986 () ListMap!4285)

(assert (=> d!1457188 (= res!1939948 (not (contains!14587 lt!1783986 key!4968)))))

(assert (=> d!1457188 (= lt!1783986 (ListMap!4286 (removePresrvNoDuplicatedKeys!255 (toList!4981 (+!1874 lt!1783671 (h!57592 oldBucket!40))) key!4968)))))

(assert (=> d!1457188 (= (-!548 (+!1874 lt!1783671 (h!57592 oldBucket!40)) key!4968) lt!1783986)))

(declare-fun b!4625985 () Bool)

(assert (=> b!4625985 (= e!2885612 (= ((_ map and) (content!8804 (keys!18157 (+!1874 lt!1783671 (h!57592 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12920 Bool)) false) key!4968 true))) (content!8804 (keys!18157 lt!1783986))))))

(assert (= (and d!1457188 res!1939948) b!4625985))

(declare-fun m!5468125 () Bool)

(assert (=> d!1457188 m!5468125))

(declare-fun m!5468127 () Bool)

(assert (=> d!1457188 m!5468127))

(declare-fun m!5468129 () Bool)

(assert (=> b!4625985 m!5468129))

(declare-fun m!5468131 () Bool)

(assert (=> b!4625985 m!5468131))

(assert (=> b!4625985 m!5467677))

(assert (=> b!4625985 m!5468129))

(declare-fun m!5468133 () Bool)

(assert (=> b!4625985 m!5468133))

(declare-fun m!5468135 () Bool)

(assert (=> b!4625985 m!5468135))

(assert (=> b!4625985 m!5468011))

(assert (=> b!4625985 m!5468133))

(assert (=> b!4625724 d!1457188))

(declare-fun bs!1023585 () Bool)

(declare-fun d!1457190 () Bool)

(assert (= bs!1023585 (and d!1457190 d!1457094)))

(declare-fun lambda!192232 () Int)

(assert (=> bs!1023585 (not (= lambda!192232 lambda!192220))))

(declare-fun bs!1023586 () Bool)

(assert (= bs!1023586 (and d!1457190 b!4625862)))

(assert (=> bs!1023586 (not (= lambda!192232 lambda!192218))))

(declare-fun bs!1023587 () Bool)

(assert (= bs!1023587 (and d!1457190 d!1457150)))

(assert (=> bs!1023587 (= lambda!192232 lambda!192229)))

(assert (=> bs!1023586 (not (= lambda!192232 lambda!192219))))

(declare-fun bs!1023588 () Bool)

(assert (= bs!1023588 (and d!1457190 b!4625864)))

(assert (=> bs!1023588 (not (= lambda!192232 lambda!192217))))

(assert (=> d!1457190 true))

(assert (=> d!1457190 true))

(assert (=> d!1457190 (= (allKeysSameHash!1362 oldBucket!40 hash!414 hashF!1389) (forall!10828 oldBucket!40 lambda!192232))))

(declare-fun bs!1023589 () Bool)

(assert (= bs!1023589 d!1457190))

(declare-fun m!5468137 () Bool)

(assert (=> bs!1023589 m!5468137))

(assert (=> b!4625725 d!1457190))

(declare-fun d!1457192 () Bool)

(declare-fun e!2885618 () Bool)

(assert (=> d!1457192 e!2885618))

(declare-fun res!1939951 () Bool)

(assert (=> d!1457192 (=> res!1939951 e!2885618)))

(declare-fun lt!1783996 () Bool)

(assert (=> d!1457192 (= res!1939951 (not lt!1783996))))

(declare-fun lt!1783997 () Bool)

(assert (=> d!1457192 (= lt!1783996 lt!1783997)))

(declare-fun lt!1783995 () Unit!112145)

(declare-fun e!2885617 () Unit!112145)

(assert (=> d!1457192 (= lt!1783995 e!2885617)))

(declare-fun c!791856 () Bool)

(assert (=> d!1457192 (= c!791856 lt!1783997)))

(declare-fun containsKey!2456 (List!51665 (_ BitVec 64)) Bool)

(assert (=> d!1457192 (= lt!1783997 (containsKey!2456 (toList!4982 lt!1783684) lt!1783669))))

(assert (=> d!1457192 (= (contains!14589 lt!1783684 lt!1783669) lt!1783996)))

(declare-fun b!4625992 () Bool)

(declare-fun lt!1783998 () Unit!112145)

(assert (=> b!4625992 (= e!2885617 lt!1783998)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1358 (List!51665 (_ BitVec 64)) Unit!112145)

(assert (=> b!4625992 (= lt!1783998 (lemmaContainsKeyImpliesGetValueByKeyDefined!1358 (toList!4982 lt!1783684) lt!1783669))))

(declare-datatypes ((Option!11598 0))(
  ( (None!11597) (Some!11597 (v!45731 List!51664)) )
))
(declare-fun isDefined!8863 (Option!11598) Bool)

(declare-fun getValueByKey!1456 (List!51665 (_ BitVec 64)) Option!11598)

(assert (=> b!4625992 (isDefined!8863 (getValueByKey!1456 (toList!4982 lt!1783684) lt!1783669))))

(declare-fun b!4625993 () Bool)

(declare-fun Unit!112174 () Unit!112145)

(assert (=> b!4625993 (= e!2885617 Unit!112174)))

(declare-fun b!4625994 () Bool)

(assert (=> b!4625994 (= e!2885618 (isDefined!8863 (getValueByKey!1456 (toList!4982 lt!1783684) lt!1783669)))))

(assert (= (and d!1457192 c!791856) b!4625992))

(assert (= (and d!1457192 (not c!791856)) b!4625993))

(assert (= (and d!1457192 (not res!1939951)) b!4625994))

(declare-fun m!5468139 () Bool)

(assert (=> d!1457192 m!5468139))

(declare-fun m!5468141 () Bool)

(assert (=> b!4625992 m!5468141))

(declare-fun m!5468143 () Bool)

(assert (=> b!4625992 m!5468143))

(assert (=> b!4625992 m!5468143))

(declare-fun m!5468145 () Bool)

(assert (=> b!4625992 m!5468145))

(assert (=> b!4625994 m!5468143))

(assert (=> b!4625994 m!5468143))

(assert (=> b!4625994 m!5468145))

(assert (=> b!4625736 d!1457192))

(declare-fun d!1457194 () Bool)

(declare-fun isEmpty!28932 (Option!11594) Bool)

(assert (=> d!1457194 (= (isDefined!8859 (getPair!300 lt!1783685 key!4968)) (not (isEmpty!28932 (getPair!300 lt!1783685 key!4968))))))

(declare-fun bs!1023590 () Bool)

(assert (= bs!1023590 d!1457194))

(assert (=> bs!1023590 m!5467637))

(declare-fun m!5468147 () Bool)

(assert (=> bs!1023590 m!5468147))

(assert (=> b!4625736 d!1457194))

(declare-fun d!1457196 () Bool)

(declare-fun lt!1784008 () Bool)

(declare-fun content!8805 (List!51665) (InoxSet tuple2!52480))

(assert (=> d!1457196 (= lt!1784008 (select (content!8805 lt!1783662) lt!1783660))))

(declare-fun e!2885624 () Bool)

(assert (=> d!1457196 (= lt!1784008 e!2885624)))

(declare-fun res!1939958 () Bool)

(assert (=> d!1457196 (=> (not res!1939958) (not e!2885624))))

(assert (=> d!1457196 (= res!1939958 ((_ is Cons!51541) lt!1783662))))

(assert (=> d!1457196 (= (contains!14588 lt!1783662 lt!1783660) lt!1784008)))

(declare-fun b!4626001 () Bool)

(declare-fun e!2885625 () Bool)

(assert (=> b!4626001 (= e!2885624 e!2885625)))

(declare-fun res!1939959 () Bool)

(assert (=> b!4626001 (=> res!1939959 e!2885625)))

(assert (=> b!4626001 (= res!1939959 (= (h!57593 lt!1783662) lt!1783660))))

(declare-fun b!4626002 () Bool)

(assert (=> b!4626002 (= e!2885625 (contains!14588 (t!358699 lt!1783662) lt!1783660))))

(assert (= (and d!1457196 res!1939958) b!4626001))

(assert (= (and b!4626001 (not res!1939959)) b!4626002))

(declare-fun m!5468173 () Bool)

(assert (=> d!1457196 m!5468173))

(declare-fun m!5468175 () Bool)

(assert (=> d!1457196 m!5468175))

(declare-fun m!5468177 () Bool)

(assert (=> b!4626002 m!5468177))

(assert (=> b!4625736 d!1457196))

(declare-fun d!1457204 () Bool)

(assert (=> d!1457204 (containsKey!2452 oldBucket!40 key!4968)))

(declare-fun lt!1784032 () Unit!112145)

(declare-fun choose!31323 (List!51664 K!12920 Hashable!5905) Unit!112145)

(assert (=> d!1457204 (= lt!1784032 (choose!31323 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1457204 (noDuplicateKeys!1508 oldBucket!40)))

(assert (=> d!1457204 (= (lemmaGetPairDefinedThenContainsKey!54 oldBucket!40 key!4968 hashF!1389) lt!1784032)))

(declare-fun bs!1023608 () Bool)

(assert (= bs!1023608 d!1457204))

(assert (=> bs!1023608 m!5467647))

(declare-fun m!5468179 () Bool)

(assert (=> bs!1023608 m!5468179))

(assert (=> bs!1023608 m!5467631))

(assert (=> b!4625736 d!1457204))

(declare-fun d!1457206 () Bool)

(assert (=> d!1457206 (contains!14588 (toList!4982 lt!1783684) (tuple2!52481 lt!1783669 lt!1783685))))

(declare-fun lt!1784035 () Unit!112145)

(declare-fun choose!31324 (ListLongMap!3571 (_ BitVec 64) List!51664) Unit!112145)

(assert (=> d!1457206 (= lt!1784035 (choose!31324 lt!1783684 lt!1783669 lt!1783685))))

(assert (=> d!1457206 (contains!14589 lt!1783684 lt!1783669)))

(assert (=> d!1457206 (= (lemmaGetValueImpliesTupleContained!105 lt!1783684 lt!1783669 lt!1783685) lt!1784035)))

(declare-fun bs!1023617 () Bool)

(assert (= bs!1023617 d!1457206))

(declare-fun m!5468181 () Bool)

(assert (=> bs!1023617 m!5468181))

(declare-fun m!5468183 () Bool)

(assert (=> bs!1023617 m!5468183))

(assert (=> bs!1023617 m!5467651))

(assert (=> b!4625736 d!1457206))

(declare-fun b!4626030 () Bool)

(declare-fun e!2885642 () Bool)

(assert (=> b!4626030 (= e!2885642 (not (containsKey!2452 lt!1783685 key!4968)))))

(declare-fun b!4626031 () Bool)

(declare-fun e!2885645 () Option!11594)

(declare-fun e!2885646 () Option!11594)

(assert (=> b!4626031 (= e!2885645 e!2885646)))

(declare-fun c!791863 () Bool)

(assert (=> b!4626031 (= c!791863 ((_ is Cons!51540) lt!1783685))))

(declare-fun b!4626032 () Bool)

(declare-fun e!2885643 () Bool)

(declare-fun e!2885644 () Bool)

(assert (=> b!4626032 (= e!2885643 e!2885644)))

(declare-fun res!1939977 () Bool)

(assert (=> b!4626032 (=> (not res!1939977) (not e!2885644))))

(declare-fun lt!1784059 () Option!11594)

(assert (=> b!4626032 (= res!1939977 (isDefined!8859 lt!1784059))))

(declare-fun b!4626033 () Bool)

(declare-fun res!1939976 () Bool)

(assert (=> b!4626033 (=> (not res!1939976) (not e!2885644))))

(declare-fun get!17082 (Option!11594) tuple2!52478)

(assert (=> b!4626033 (= res!1939976 (= (_1!29533 (get!17082 lt!1784059)) key!4968))))

(declare-fun b!4626034 () Bool)

(assert (=> b!4626034 (= e!2885644 (contains!14592 lt!1783685 (get!17082 lt!1784059)))))

(declare-fun b!4626035 () Bool)

(assert (=> b!4626035 (= e!2885646 None!11593)))

(declare-fun b!4626036 () Bool)

(assert (=> b!4626036 (= e!2885646 (getPair!300 (t!358698 lt!1783685) key!4968))))

(declare-fun d!1457208 () Bool)

(assert (=> d!1457208 e!2885643))

(declare-fun res!1939975 () Bool)

(assert (=> d!1457208 (=> res!1939975 e!2885643)))

(assert (=> d!1457208 (= res!1939975 e!2885642)))

(declare-fun res!1939974 () Bool)

(assert (=> d!1457208 (=> (not res!1939974) (not e!2885642))))

(assert (=> d!1457208 (= res!1939974 (isEmpty!28932 lt!1784059))))

(assert (=> d!1457208 (= lt!1784059 e!2885645)))

(declare-fun c!791864 () Bool)

(assert (=> d!1457208 (= c!791864 (and ((_ is Cons!51540) lt!1783685) (= (_1!29533 (h!57592 lt!1783685)) key!4968)))))

(assert (=> d!1457208 (noDuplicateKeys!1508 lt!1783685)))

(assert (=> d!1457208 (= (getPair!300 lt!1783685 key!4968) lt!1784059)))

(declare-fun b!4626037 () Bool)

(assert (=> b!4626037 (= e!2885645 (Some!11593 (h!57592 lt!1783685)))))

(assert (= (and d!1457208 c!791864) b!4626037))

(assert (= (and d!1457208 (not c!791864)) b!4626031))

(assert (= (and b!4626031 c!791863) b!4626036))

(assert (= (and b!4626031 (not c!791863)) b!4626035))

(assert (= (and d!1457208 res!1939974) b!4626030))

(assert (= (and d!1457208 (not res!1939975)) b!4626032))

(assert (= (and b!4626032 res!1939977) b!4626033))

(assert (= (and b!4626033 res!1939976) b!4626034))

(declare-fun m!5468219 () Bool)

(assert (=> b!4626036 m!5468219))

(declare-fun m!5468221 () Bool)

(assert (=> b!4626033 m!5468221))

(assert (=> b!4626034 m!5468221))

(assert (=> b!4626034 m!5468221))

(declare-fun m!5468223 () Bool)

(assert (=> b!4626034 m!5468223))

(declare-fun m!5468225 () Bool)

(assert (=> b!4626030 m!5468225))

(declare-fun m!5468227 () Bool)

(assert (=> b!4626032 m!5468227))

(declare-fun m!5468229 () Bool)

(assert (=> d!1457208 m!5468229))

(declare-fun m!5468231 () Bool)

(assert (=> d!1457208 m!5468231))

(assert (=> b!4625736 d!1457208))

(declare-fun d!1457212 () Bool)

(declare-fun res!1939982 () Bool)

(declare-fun e!2885651 () Bool)

(assert (=> d!1457212 (=> res!1939982 e!2885651)))

(assert (=> d!1457212 (= res!1939982 (and ((_ is Cons!51540) oldBucket!40) (= (_1!29533 (h!57592 oldBucket!40)) key!4968)))))

(assert (=> d!1457212 (= (containsKey!2452 oldBucket!40 key!4968) e!2885651)))

(declare-fun b!4626042 () Bool)

(declare-fun e!2885652 () Bool)

(assert (=> b!4626042 (= e!2885651 e!2885652)))

(declare-fun res!1939983 () Bool)

(assert (=> b!4626042 (=> (not res!1939983) (not e!2885652))))

(assert (=> b!4626042 (= res!1939983 ((_ is Cons!51540) oldBucket!40))))

(declare-fun b!4626043 () Bool)

(assert (=> b!4626043 (= e!2885652 (containsKey!2452 (t!358698 oldBucket!40) key!4968))))

(assert (= (and d!1457212 (not res!1939982)) b!4626042))

(assert (= (and b!4626042 res!1939983) b!4626043))

(assert (=> b!4626043 m!5467655))

(assert (=> b!4625736 d!1457212))

(declare-fun bs!1023747 () Bool)

(declare-fun d!1457214 () Bool)

(assert (= bs!1023747 (and d!1457214 d!1457148)))

(declare-fun lambda!192260 () Int)

(assert (=> bs!1023747 (= lambda!192260 lambda!192226)))

(declare-fun bs!1023748 () Bool)

(assert (= bs!1023748 (and d!1457214 d!1457092)))

(assert (=> bs!1023748 (= lambda!192260 lambda!192141)))

(declare-fun bs!1023749 () Bool)

(assert (= bs!1023749 (and d!1457214 d!1457130)))

(assert (=> bs!1023749 (= lambda!192260 lambda!192221)))

(declare-fun bs!1023750 () Bool)

(assert (= bs!1023750 (and d!1457214 d!1457146)))

(assert (=> bs!1023750 (= lambda!192260 lambda!192225)))

(declare-fun bs!1023751 () Bool)

(assert (= bs!1023751 (and d!1457214 b!4625736)))

(assert (=> bs!1023751 (= lambda!192260 lambda!192138)))

(declare-fun b!4626079 () Bool)

(declare-fun res!1940001 () Bool)

(declare-fun e!2885674 () Bool)

(assert (=> b!4626079 (=> (not res!1940001) (not e!2885674))))

(declare-fun allKeysSameHashInMap!1532 (ListLongMap!3571 Hashable!5905) Bool)

(assert (=> b!4626079 (= res!1940001 (allKeysSameHashInMap!1532 lt!1783684 hashF!1389))))

(declare-fun b!4626080 () Bool)

(declare-fun res!1940002 () Bool)

(assert (=> b!4626080 (=> (not res!1940002) (not e!2885674))))

(assert (=> b!4626080 (= res!1940002 (contains!14587 (extractMap!1564 (toList!4982 lt!1783684)) key!4968))))

(declare-fun b!4626082 () Bool)

(declare-fun lt!1784136 () List!51664)

(declare-fun e!2885673 () Bool)

(declare-fun lt!1784135 () (_ BitVec 64))

(assert (=> b!4626082 (= e!2885673 (= (getValueByKey!1456 (toList!4982 lt!1783684) lt!1784135) (Some!11597 lt!1784136)))))

(assert (=> d!1457214 e!2885674))

(declare-fun res!1940004 () Bool)

(assert (=> d!1457214 (=> (not res!1940004) (not e!2885674))))

(assert (=> d!1457214 (= res!1940004 (forall!10826 (toList!4982 lt!1783684) lambda!192260))))

(declare-fun lt!1784133 () Unit!112145)

(declare-fun choose!31326 (ListLongMap!3571 K!12920 Hashable!5905) Unit!112145)

(assert (=> d!1457214 (= lt!1784133 (choose!31326 lt!1783684 key!4968 hashF!1389))))

(assert (=> d!1457214 (forall!10826 (toList!4982 lt!1783684) lambda!192260)))

(assert (=> d!1457214 (= (lemmaInGenMapThenGetPairDefined!96 lt!1783684 key!4968 hashF!1389) lt!1784133)))

(declare-fun b!4626081 () Bool)

(assert (=> b!4626081 (= e!2885674 (isDefined!8859 (getPair!300 (apply!12173 lt!1783684 (hash!3505 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1784131 () Unit!112145)

(assert (=> b!4626081 (= lt!1784131 (forallContained!3054 (toList!4982 lt!1783684) lambda!192260 (tuple2!52481 (hash!3505 hashF!1389 key!4968) (apply!12173 lt!1783684 (hash!3505 hashF!1389 key!4968)))))))

(declare-fun lt!1784130 () Unit!112145)

(declare-fun lt!1784134 () Unit!112145)

(assert (=> b!4626081 (= lt!1784130 lt!1784134)))

(assert (=> b!4626081 (contains!14588 (toList!4982 lt!1783684) (tuple2!52481 lt!1784135 lt!1784136))))

(assert (=> b!4626081 (= lt!1784134 (lemmaGetValueImpliesTupleContained!105 lt!1783684 lt!1784135 lt!1784136))))

(assert (=> b!4626081 e!2885673))

(declare-fun res!1940003 () Bool)

(assert (=> b!4626081 (=> (not res!1940003) (not e!2885673))))

(assert (=> b!4626081 (= res!1940003 (contains!14589 lt!1783684 lt!1784135))))

(assert (=> b!4626081 (= lt!1784136 (apply!12173 lt!1783684 (hash!3505 hashF!1389 key!4968)))))

(assert (=> b!4626081 (= lt!1784135 (hash!3505 hashF!1389 key!4968))))

(declare-fun lt!1784129 () Unit!112145)

(declare-fun lt!1784132 () Unit!112145)

(assert (=> b!4626081 (= lt!1784129 lt!1784132)))

(assert (=> b!4626081 (contains!14589 lt!1783684 (hash!3505 hashF!1389 key!4968))))

(assert (=> b!4626081 (= lt!1784132 (lemmaInGenMapThenLongMapContainsHash!506 lt!1783684 key!4968 hashF!1389))))

(assert (= (and d!1457214 res!1940004) b!4626079))

(assert (= (and b!4626079 res!1940001) b!4626080))

(assert (= (and b!4626080 res!1940002) b!4626081))

(assert (= (and b!4626081 res!1940003) b!4626082))

(declare-fun m!5468379 () Bool)

(assert (=> b!4626081 m!5468379))

(declare-fun m!5468381 () Bool)

(assert (=> b!4626081 m!5468381))

(declare-fun m!5468383 () Bool)

(assert (=> b!4626081 m!5468383))

(assert (=> b!4626081 m!5467633))

(declare-fun m!5468387 () Bool)

(assert (=> b!4626081 m!5468387))

(assert (=> b!4626081 m!5467641))

(declare-fun m!5468391 () Bool)

(assert (=> b!4626081 m!5468391))

(assert (=> b!4626081 m!5468381))

(declare-fun m!5468393 () Bool)

(assert (=> b!4626081 m!5468393))

(assert (=> b!4626081 m!5467633))

(assert (=> b!4626081 m!5468379))

(assert (=> b!4626081 m!5467633))

(declare-fun m!5468397 () Bool)

(assert (=> b!4626081 m!5468397))

(declare-fun m!5468401 () Bool)

(assert (=> b!4626081 m!5468401))

(declare-fun m!5468403 () Bool)

(assert (=> b!4626082 m!5468403))

(declare-fun m!5468405 () Bool)

(assert (=> b!4626079 m!5468405))

(declare-fun m!5468407 () Bool)

(assert (=> d!1457214 m!5468407))

(declare-fun m!5468409 () Bool)

(assert (=> d!1457214 m!5468409))

(assert (=> d!1457214 m!5468407))

(declare-fun m!5468411 () Bool)

(assert (=> b!4626080 m!5468411))

(assert (=> b!4626080 m!5468411))

(declare-fun m!5468413 () Bool)

(assert (=> b!4626080 m!5468413))

(assert (=> b!4625736 d!1457214))

(declare-fun d!1457238 () Bool)

(declare-fun res!1940007 () Bool)

(declare-fun e!2885676 () Bool)

(assert (=> d!1457238 (=> res!1940007 e!2885676)))

(assert (=> d!1457238 (= res!1940007 (and ((_ is Cons!51540) (t!358698 oldBucket!40)) (= (_1!29533 (h!57592 (t!358698 oldBucket!40))) key!4968)))))

(assert (=> d!1457238 (= (containsKey!2452 (t!358698 oldBucket!40) key!4968) e!2885676)))

(declare-fun b!4626085 () Bool)

(declare-fun e!2885677 () Bool)

(assert (=> b!4626085 (= e!2885676 e!2885677)))

(declare-fun res!1940008 () Bool)

(assert (=> b!4626085 (=> (not res!1940008) (not e!2885677))))

(assert (=> b!4626085 (= res!1940008 ((_ is Cons!51540) (t!358698 oldBucket!40)))))

(declare-fun b!4626086 () Bool)

(assert (=> b!4626086 (= e!2885677 (containsKey!2452 (t!358698 (t!358698 oldBucket!40)) key!4968))))

(assert (= (and d!1457238 (not res!1940007)) b!4626085))

(assert (= (and b!4626085 res!1940008) b!4626086))

(declare-fun m!5468419 () Bool)

(assert (=> b!4626086 m!5468419))

(assert (=> b!4625736 d!1457238))

(declare-fun d!1457240 () Bool)

(declare-fun get!17083 (Option!11598) List!51664)

(assert (=> d!1457240 (= (apply!12173 lt!1783684 lt!1783669) (get!17083 (getValueByKey!1456 (toList!4982 lt!1783684) lt!1783669)))))

(declare-fun bs!1023753 () Bool)

(assert (= bs!1023753 d!1457240))

(assert (=> bs!1023753 m!5468143))

(assert (=> bs!1023753 m!5468143))

(declare-fun m!5468429 () Bool)

(assert (=> bs!1023753 m!5468429))

(assert (=> b!4625736 d!1457240))

(declare-fun bs!1023754 () Bool)

(declare-fun d!1457244 () Bool)

(assert (= bs!1023754 (and d!1457244 d!1457214)))

(declare-fun lambda!192263 () Int)

(assert (=> bs!1023754 (= lambda!192263 lambda!192260)))

(declare-fun bs!1023755 () Bool)

(assert (= bs!1023755 (and d!1457244 d!1457148)))

(assert (=> bs!1023755 (= lambda!192263 lambda!192226)))

(declare-fun bs!1023756 () Bool)

(assert (= bs!1023756 (and d!1457244 d!1457092)))

(assert (=> bs!1023756 (= lambda!192263 lambda!192141)))

(declare-fun bs!1023757 () Bool)

(assert (= bs!1023757 (and d!1457244 d!1457130)))

(assert (=> bs!1023757 (= lambda!192263 lambda!192221)))

(declare-fun bs!1023758 () Bool)

(assert (= bs!1023758 (and d!1457244 d!1457146)))

(assert (=> bs!1023758 (= lambda!192263 lambda!192225)))

(declare-fun bs!1023759 () Bool)

(assert (= bs!1023759 (and d!1457244 b!4625736)))

(assert (=> bs!1023759 (= lambda!192263 lambda!192138)))

(assert (=> d!1457244 (contains!14589 lt!1783684 (hash!3505 hashF!1389 key!4968))))

(declare-fun lt!1784146 () Unit!112145)

(declare-fun choose!31328 (ListLongMap!3571 K!12920 Hashable!5905) Unit!112145)

(assert (=> d!1457244 (= lt!1784146 (choose!31328 lt!1783684 key!4968 hashF!1389))))

(assert (=> d!1457244 (forall!10826 (toList!4982 lt!1783684) lambda!192263)))

(assert (=> d!1457244 (= (lemmaInGenMapThenLongMapContainsHash!506 lt!1783684 key!4968 hashF!1389) lt!1784146)))

(declare-fun bs!1023760 () Bool)

(assert (= bs!1023760 d!1457244))

(assert (=> bs!1023760 m!5467633))

(assert (=> bs!1023760 m!5467633))

(assert (=> bs!1023760 m!5468387))

(declare-fun m!5468431 () Bool)

(assert (=> bs!1023760 m!5468431))

(declare-fun m!5468433 () Bool)

(assert (=> bs!1023760 m!5468433))

(assert (=> b!4625736 d!1457244))

(declare-fun d!1457246 () Bool)

(assert (=> d!1457246 (dynLambda!21500 lambda!192138 lt!1783660)))

(declare-fun lt!1784152 () Unit!112145)

(declare-fun choose!31329 (List!51665 Int tuple2!52480) Unit!112145)

(assert (=> d!1457246 (= lt!1784152 (choose!31329 lt!1783662 lambda!192138 lt!1783660))))

(declare-fun e!2885687 () Bool)

(assert (=> d!1457246 e!2885687))

(declare-fun res!1940018 () Bool)

(assert (=> d!1457246 (=> (not res!1940018) (not e!2885687))))

(assert (=> d!1457246 (= res!1940018 (forall!10826 lt!1783662 lambda!192138))))

(assert (=> d!1457246 (= (forallContained!3054 lt!1783662 lambda!192138 lt!1783660) lt!1784152)))

(declare-fun b!4626096 () Bool)

(assert (=> b!4626096 (= e!2885687 (contains!14588 lt!1783662 lt!1783660))))

(assert (= (and d!1457246 res!1940018) b!4626096))

(declare-fun b_lambda!170745 () Bool)

(assert (=> (not b_lambda!170745) (not d!1457246)))

(declare-fun m!5468449 () Bool)

(assert (=> d!1457246 m!5468449))

(declare-fun m!5468451 () Bool)

(assert (=> d!1457246 m!5468451))

(declare-fun m!5468453 () Bool)

(assert (=> d!1457246 m!5468453))

(assert (=> b!4626096 m!5467643))

(assert (=> b!4625736 d!1457246))

(declare-fun d!1457250 () Bool)

(declare-fun e!2885688 () Bool)

(assert (=> d!1457250 e!2885688))

(declare-fun res!1940019 () Bool)

(assert (=> d!1457250 (=> (not res!1940019) (not e!2885688))))

(declare-fun lt!1784154 () ListMap!4285)

(assert (=> d!1457250 (= res!1940019 (contains!14587 lt!1784154 (_1!29533 lt!1783678)))))

(declare-fun lt!1784155 () List!51664)

(assert (=> d!1457250 (= lt!1784154 (ListMap!4286 lt!1784155))))

(declare-fun lt!1784156 () Unit!112145)

(declare-fun lt!1784153 () Unit!112145)

(assert (=> d!1457250 (= lt!1784156 lt!1784153)))

(assert (=> d!1457250 (= (getValueByKey!1455 lt!1784155 (_1!29533 lt!1783678)) (Some!11596 (_2!29533 lt!1783678)))))

(assert (=> d!1457250 (= lt!1784153 (lemmaContainsTupThenGetReturnValue!850 lt!1784155 (_1!29533 lt!1783678) (_2!29533 lt!1783678)))))

(assert (=> d!1457250 (= lt!1784155 (insertNoDuplicatedKeys!358 (toList!4981 (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540))) (_1!29533 lt!1783678) (_2!29533 lt!1783678)))))

(assert (=> d!1457250 (= (+!1874 (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540)) lt!1783678) lt!1784154)))

(declare-fun b!4626097 () Bool)

(declare-fun res!1940020 () Bool)

(assert (=> b!4626097 (=> (not res!1940020) (not e!2885688))))

(assert (=> b!4626097 (= res!1940020 (= (getValueByKey!1455 (toList!4981 lt!1784154) (_1!29533 lt!1783678)) (Some!11596 (_2!29533 lt!1783678))))))

(declare-fun b!4626098 () Bool)

(assert (=> b!4626098 (= e!2885688 (contains!14592 (toList!4981 lt!1784154) lt!1783678))))

(assert (= (and d!1457250 res!1940019) b!4626097))

(assert (= (and b!4626097 res!1940020) b!4626098))

(declare-fun m!5468455 () Bool)

(assert (=> d!1457250 m!5468455))

(declare-fun m!5468457 () Bool)

(assert (=> d!1457250 m!5468457))

(declare-fun m!5468459 () Bool)

(assert (=> d!1457250 m!5468459))

(declare-fun m!5468461 () Bool)

(assert (=> d!1457250 m!5468461))

(declare-fun m!5468463 () Bool)

(assert (=> b!4626097 m!5468463))

(declare-fun m!5468465 () Bool)

(assert (=> b!4626098 m!5468465))

(assert (=> b!4625726 d!1457250))

(declare-fun d!1457252 () Bool)

(assert (=> d!1457252 (= (eq!823 lt!1783682 (+!1874 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)) (h!57592 oldBucket!40))) (= (content!8803 (toList!4981 lt!1783682)) (content!8803 (toList!4981 (+!1874 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)) (h!57592 oldBucket!40))))))))

(declare-fun bs!1023761 () Bool)

(assert (= bs!1023761 d!1457252))

(declare-fun m!5468471 () Bool)

(assert (=> bs!1023761 m!5468471))

(declare-fun m!5468473 () Bool)

(assert (=> bs!1023761 m!5468473))

(assert (=> b!4625726 d!1457252))

(declare-fun bs!1023763 () Bool)

(declare-fun b!4626103 () Bool)

(assert (= bs!1023763 (and b!4626103 d!1457094)))

(declare-fun lambda!192264 () Int)

(assert (=> bs!1023763 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192264 lambda!192220))))

(declare-fun bs!1023764 () Bool)

(assert (= bs!1023764 (and b!4626103 b!4625862)))

(assert (=> bs!1023764 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192264 lambda!192218))))

(declare-fun bs!1023765 () Bool)

(assert (= bs!1023765 (and b!4626103 d!1457190)))

(assert (=> bs!1023765 (not (= lambda!192264 lambda!192232))))

(declare-fun bs!1023766 () Bool)

(assert (= bs!1023766 (and b!4626103 d!1457150)))

(assert (=> bs!1023766 (not (= lambda!192264 lambda!192229))))

(assert (=> bs!1023764 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192264 lambda!192219))))

(declare-fun bs!1023767 () Bool)

(assert (= bs!1023767 (and b!4626103 b!4625864)))

(assert (=> bs!1023767 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192264 lambda!192217))))

(assert (=> b!4626103 true))

(declare-fun bs!1023768 () Bool)

(declare-fun b!4626101 () Bool)

(assert (= bs!1023768 (and b!4626101 d!1457094)))

(declare-fun lambda!192265 () Int)

(assert (=> bs!1023768 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192265 lambda!192220))))

(declare-fun bs!1023769 () Bool)

(assert (= bs!1023769 (and b!4626101 b!4625862)))

(assert (=> bs!1023769 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192265 lambda!192218))))

(declare-fun bs!1023770 () Bool)

(assert (= bs!1023770 (and b!4626101 d!1457190)))

(assert (=> bs!1023770 (not (= lambda!192265 lambda!192232))))

(declare-fun bs!1023771 () Bool)

(assert (= bs!1023771 (and b!4626101 d!1457150)))

(assert (=> bs!1023771 (not (= lambda!192265 lambda!192229))))

(declare-fun bs!1023772 () Bool)

(assert (= bs!1023772 (and b!4626101 b!4626103)))

(assert (=> bs!1023772 (= lambda!192265 lambda!192264)))

(assert (=> bs!1023769 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192265 lambda!192219))))

(declare-fun bs!1023773 () Bool)

(assert (= bs!1023773 (and b!4626101 b!4625864)))

(assert (=> bs!1023773 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192265 lambda!192217))))

(assert (=> b!4626101 true))

(declare-fun lambda!192266 () Int)

(declare-fun lt!1784166 () ListMap!4285)

(assert (=> bs!1023768 (= (= lt!1784166 lt!1783880) (= lambda!192266 lambda!192220))))

(assert (=> bs!1023769 (= (= lt!1784166 lt!1783664) (= lambda!192266 lambda!192218))))

(assert (=> bs!1023770 (not (= lambda!192266 lambda!192232))))

(assert (=> bs!1023771 (not (= lambda!192266 lambda!192229))))

(assert (=> bs!1023772 (= (= lt!1784166 (ListMap!4286 Nil!51540)) (= lambda!192266 lambda!192264))))

(assert (=> b!4626101 (= (= lt!1784166 (ListMap!4286 Nil!51540)) (= lambda!192266 lambda!192265))))

(assert (=> bs!1023769 (= (= lt!1784166 lt!1783876) (= lambda!192266 lambda!192219))))

(assert (=> bs!1023773 (= (= lt!1784166 lt!1783664) (= lambda!192266 lambda!192217))))

(assert (=> b!4626101 true))

(declare-fun bs!1023774 () Bool)

(declare-fun d!1457256 () Bool)

(assert (= bs!1023774 (and d!1457256 d!1457094)))

(declare-fun lambda!192267 () Int)

(declare-fun lt!1784170 () ListMap!4285)

(assert (=> bs!1023774 (= (= lt!1784170 lt!1783880) (= lambda!192267 lambda!192220))))

(declare-fun bs!1023775 () Bool)

(assert (= bs!1023775 (and d!1457256 b!4625862)))

(assert (=> bs!1023775 (= (= lt!1784170 lt!1783664) (= lambda!192267 lambda!192218))))

(declare-fun bs!1023776 () Bool)

(assert (= bs!1023776 (and d!1457256 d!1457190)))

(assert (=> bs!1023776 (not (= lambda!192267 lambda!192232))))

(declare-fun bs!1023777 () Bool)

(assert (= bs!1023777 (and d!1457256 d!1457150)))

(assert (=> bs!1023777 (not (= lambda!192267 lambda!192229))))

(declare-fun bs!1023778 () Bool)

(assert (= bs!1023778 (and d!1457256 b!4626103)))

(assert (=> bs!1023778 (= (= lt!1784170 (ListMap!4286 Nil!51540)) (= lambda!192267 lambda!192264))))

(declare-fun bs!1023779 () Bool)

(assert (= bs!1023779 (and d!1457256 b!4626101)))

(assert (=> bs!1023779 (= (= lt!1784170 (ListMap!4286 Nil!51540)) (= lambda!192267 lambda!192265))))

(declare-fun bs!1023780 () Bool)

(assert (= bs!1023780 (and d!1457256 b!4625864)))

(assert (=> bs!1023780 (= (= lt!1784170 lt!1783664) (= lambda!192267 lambda!192217))))

(assert (=> bs!1023775 (= (= lt!1784170 lt!1783876) (= lambda!192267 lambda!192219))))

(assert (=> bs!1023779 (= (= lt!1784170 lt!1784166) (= lambda!192267 lambda!192266))))

(assert (=> d!1457256 true))

(declare-fun e!2885693 () Bool)

(assert (=> d!1457256 e!2885693))

(declare-fun res!1940023 () Bool)

(assert (=> d!1457256 (=> (not res!1940023) (not e!2885693))))

(assert (=> d!1457256 (= res!1940023 (forall!10828 lt!1783676 lambda!192267))))

(declare-fun e!2885691 () ListMap!4285)

(assert (=> d!1457256 (= lt!1784170 e!2885691)))

(declare-fun c!791874 () Bool)

(assert (=> d!1457256 (= c!791874 ((_ is Nil!51540) lt!1783676))))

(assert (=> d!1457256 (noDuplicateKeys!1508 lt!1783676)))

(assert (=> d!1457256 (= (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540)) lt!1784170)))

(assert (=> b!4626101 (= e!2885691 lt!1784166)))

(declare-fun lt!1784169 () ListMap!4285)

(assert (=> b!4626101 (= lt!1784169 (+!1874 (ListMap!4286 Nil!51540) (h!57592 lt!1783676)))))

(assert (=> b!4626101 (= lt!1784166 (addToMapMapFromBucket!969 (t!358698 lt!1783676) (+!1874 (ListMap!4286 Nil!51540) (h!57592 lt!1783676))))))

(declare-fun lt!1784177 () Unit!112145)

(declare-fun call!322690 () Unit!112145)

(assert (=> b!4626101 (= lt!1784177 call!322690)))

(assert (=> b!4626101 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192265)))

(declare-fun lt!1784167 () Unit!112145)

(assert (=> b!4626101 (= lt!1784167 lt!1784177)))

(assert (=> b!4626101 (forall!10828 (toList!4981 lt!1784169) lambda!192266)))

(declare-fun lt!1784159 () Unit!112145)

(declare-fun Unit!112175 () Unit!112145)

(assert (=> b!4626101 (= lt!1784159 Unit!112175)))

(declare-fun call!322691 () Bool)

(assert (=> b!4626101 call!322691))

(declare-fun lt!1784172 () Unit!112145)

(declare-fun Unit!112176 () Unit!112145)

(assert (=> b!4626101 (= lt!1784172 Unit!112176)))

(declare-fun lt!1784168 () Unit!112145)

(declare-fun Unit!112177 () Unit!112145)

(assert (=> b!4626101 (= lt!1784168 Unit!112177)))

(declare-fun lt!1784174 () Unit!112145)

(assert (=> b!4626101 (= lt!1784174 (forallContained!3056 (toList!4981 lt!1784169) lambda!192266 (h!57592 lt!1783676)))))

(assert (=> b!4626101 (contains!14587 lt!1784169 (_1!29533 (h!57592 lt!1783676)))))

(declare-fun lt!1784173 () Unit!112145)

(declare-fun Unit!112178 () Unit!112145)

(assert (=> b!4626101 (= lt!1784173 Unit!112178)))

(assert (=> b!4626101 (contains!14587 lt!1784166 (_1!29533 (h!57592 lt!1783676)))))

(declare-fun lt!1784158 () Unit!112145)

(declare-fun Unit!112179 () Unit!112145)

(assert (=> b!4626101 (= lt!1784158 Unit!112179)))

(assert (=> b!4626101 (forall!10828 lt!1783676 lambda!192266)))

(declare-fun lt!1784165 () Unit!112145)

(declare-fun Unit!112180 () Unit!112145)

(assert (=> b!4626101 (= lt!1784165 Unit!112180)))

(assert (=> b!4626101 (forall!10828 (toList!4981 lt!1784169) lambda!192266)))

(declare-fun lt!1784164 () Unit!112145)

(declare-fun Unit!112181 () Unit!112145)

(assert (=> b!4626101 (= lt!1784164 Unit!112181)))

(declare-fun lt!1784160 () Unit!112145)

(declare-fun Unit!112182 () Unit!112145)

(assert (=> b!4626101 (= lt!1784160 Unit!112182)))

(declare-fun lt!1784162 () Unit!112145)

(assert (=> b!4626101 (= lt!1784162 (addForallContainsKeyThenBeforeAdding!507 (ListMap!4286 Nil!51540) lt!1784166 (_1!29533 (h!57592 lt!1783676)) (_2!29533 (h!57592 lt!1783676))))))

(assert (=> b!4626101 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192266)))

(declare-fun lt!1784163 () Unit!112145)

(assert (=> b!4626101 (= lt!1784163 lt!1784162)))

(assert (=> b!4626101 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192266)))

(declare-fun lt!1784157 () Unit!112145)

(declare-fun Unit!112183 () Unit!112145)

(assert (=> b!4626101 (= lt!1784157 Unit!112183)))

(declare-fun res!1940025 () Bool)

(declare-fun call!322689 () Bool)

(assert (=> b!4626101 (= res!1940025 call!322689)))

(declare-fun e!2885692 () Bool)

(assert (=> b!4626101 (=> (not res!1940025) (not e!2885692))))

(assert (=> b!4626101 e!2885692))

(declare-fun lt!1784171 () Unit!112145)

(declare-fun Unit!112185 () Unit!112145)

(assert (=> b!4626101 (= lt!1784171 Unit!112185)))

(declare-fun bm!322684 () Bool)

(assert (=> bm!322684 (= call!322689 (forall!10828 (ite c!791874 (toList!4981 (ListMap!4286 Nil!51540)) lt!1783676) (ite c!791874 lambda!192264 lambda!192266)))))

(declare-fun b!4626102 () Bool)

(assert (=> b!4626102 (= e!2885692 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192266))))

(declare-fun bm!322685 () Bool)

(assert (=> bm!322685 (= call!322690 (lemmaContainsAllItsOwnKeys!508 (ListMap!4286 Nil!51540)))))

(declare-fun bm!322686 () Bool)

(assert (=> bm!322686 (= call!322691 (forall!10828 (ite c!791874 (toList!4981 (ListMap!4286 Nil!51540)) (t!358698 lt!1783676)) (ite c!791874 lambda!192264 lambda!192266)))))

(assert (=> b!4626103 (= e!2885691 (ListMap!4286 Nil!51540))))

(declare-fun lt!1784175 () Unit!112145)

(assert (=> b!4626103 (= lt!1784175 call!322690)))

(assert (=> b!4626103 call!322691))

(declare-fun lt!1784176 () Unit!112145)

(assert (=> b!4626103 (= lt!1784176 lt!1784175)))

(assert (=> b!4626103 call!322689))

(declare-fun lt!1784161 () Unit!112145)

(declare-fun Unit!112186 () Unit!112145)

(assert (=> b!4626103 (= lt!1784161 Unit!112186)))

(declare-fun b!4626104 () Bool)

(assert (=> b!4626104 (= e!2885693 (invariantList!1206 (toList!4981 lt!1784170)))))

(declare-fun b!4626105 () Bool)

(declare-fun res!1940024 () Bool)

(assert (=> b!4626105 (=> (not res!1940024) (not e!2885693))))

(assert (=> b!4626105 (= res!1940024 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192267))))

(assert (= (and d!1457256 c!791874) b!4626103))

(assert (= (and d!1457256 (not c!791874)) b!4626101))

(assert (= (and b!4626101 res!1940025) b!4626102))

(assert (= (or b!4626103 b!4626101) bm!322685))

(assert (= (or b!4626103 b!4626101) bm!322686))

(assert (= (or b!4626103 b!4626101) bm!322684))

(assert (= (and d!1457256 res!1940023) b!4626105))

(assert (= (and b!4626105 res!1940024) b!4626104))

(declare-fun m!5468479 () Bool)

(assert (=> bm!322685 m!5468479))

(declare-fun m!5468481 () Bool)

(assert (=> bm!322686 m!5468481))

(declare-fun m!5468483 () Bool)

(assert (=> d!1457256 m!5468483))

(declare-fun m!5468485 () Bool)

(assert (=> d!1457256 m!5468485))

(declare-fun m!5468487 () Bool)

(assert (=> bm!322684 m!5468487))

(declare-fun m!5468489 () Bool)

(assert (=> b!4626105 m!5468489))

(declare-fun m!5468491 () Bool)

(assert (=> b!4626101 m!5468491))

(declare-fun m!5468493 () Bool)

(assert (=> b!4626101 m!5468493))

(declare-fun m!5468495 () Bool)

(assert (=> b!4626101 m!5468495))

(assert (=> b!4626101 m!5468493))

(declare-fun m!5468497 () Bool)

(assert (=> b!4626101 m!5468497))

(declare-fun m!5468499 () Bool)

(assert (=> b!4626101 m!5468499))

(declare-fun m!5468501 () Bool)

(assert (=> b!4626101 m!5468501))

(declare-fun m!5468503 () Bool)

(assert (=> b!4626101 m!5468503))

(declare-fun m!5468505 () Bool)

(assert (=> b!4626101 m!5468505))

(assert (=> b!4626101 m!5468495))

(assert (=> b!4626101 m!5468499))

(declare-fun m!5468507 () Bool)

(assert (=> b!4626101 m!5468507))

(declare-fun m!5468509 () Bool)

(assert (=> b!4626101 m!5468509))

(assert (=> b!4626102 m!5468495))

(declare-fun m!5468511 () Bool)

(assert (=> b!4626104 m!5468511))

(assert (=> b!4625726 d!1457256))

(declare-fun d!1457260 () Bool)

(assert (=> d!1457260 (= (head!9642 oldBucket!40) (h!57592 oldBucket!40))))

(assert (=> b!4625726 d!1457260))

(declare-fun d!1457262 () Bool)

(assert (=> d!1457262 (= (eq!823 (addToMapMapFromBucket!969 (Cons!51540 lt!1783661 lt!1783676) (ListMap!4286 Nil!51540)) (+!1874 (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540)) lt!1783661)) (= (content!8803 (toList!4981 (addToMapMapFromBucket!969 (Cons!51540 lt!1783661 lt!1783676) (ListMap!4286 Nil!51540)))) (content!8803 (toList!4981 (+!1874 (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540)) lt!1783661)))))))

(declare-fun bs!1023781 () Bool)

(assert (= bs!1023781 d!1457262))

(declare-fun m!5468513 () Bool)

(assert (=> bs!1023781 m!5468513))

(declare-fun m!5468515 () Bool)

(assert (=> bs!1023781 m!5468515))

(assert (=> b!4625726 d!1457262))

(declare-fun d!1457264 () Bool)

(declare-fun e!2885694 () Bool)

(assert (=> d!1457264 e!2885694))

(declare-fun res!1940026 () Bool)

(assert (=> d!1457264 (=> (not res!1940026) (not e!2885694))))

(declare-fun lt!1784179 () ListMap!4285)

(assert (=> d!1457264 (= res!1940026 (contains!14587 lt!1784179 (_1!29533 lt!1783661)))))

(declare-fun lt!1784180 () List!51664)

(assert (=> d!1457264 (= lt!1784179 (ListMap!4286 lt!1784180))))

(declare-fun lt!1784181 () Unit!112145)

(declare-fun lt!1784178 () Unit!112145)

(assert (=> d!1457264 (= lt!1784181 lt!1784178)))

(assert (=> d!1457264 (= (getValueByKey!1455 lt!1784180 (_1!29533 lt!1783661)) (Some!11596 (_2!29533 lt!1783661)))))

(assert (=> d!1457264 (= lt!1784178 (lemmaContainsTupThenGetReturnValue!850 lt!1784180 (_1!29533 lt!1783661) (_2!29533 lt!1783661)))))

(assert (=> d!1457264 (= lt!1784180 (insertNoDuplicatedKeys!358 (toList!4981 (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540))) (_1!29533 lt!1783661) (_2!29533 lt!1783661)))))

(assert (=> d!1457264 (= (+!1874 (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540)) lt!1783661) lt!1784179)))

(declare-fun b!4626106 () Bool)

(declare-fun res!1940027 () Bool)

(assert (=> b!4626106 (=> (not res!1940027) (not e!2885694))))

(assert (=> b!4626106 (= res!1940027 (= (getValueByKey!1455 (toList!4981 lt!1784179) (_1!29533 lt!1783661)) (Some!11596 (_2!29533 lt!1783661))))))

(declare-fun b!4626107 () Bool)

(assert (=> b!4626107 (= e!2885694 (contains!14592 (toList!4981 lt!1784179) lt!1783661))))

(assert (= (and d!1457264 res!1940026) b!4626106))

(assert (= (and b!4626106 res!1940027) b!4626107))

(declare-fun m!5468517 () Bool)

(assert (=> d!1457264 m!5468517))

(declare-fun m!5468519 () Bool)

(assert (=> d!1457264 m!5468519))

(declare-fun m!5468521 () Bool)

(assert (=> d!1457264 m!5468521))

(declare-fun m!5468523 () Bool)

(assert (=> d!1457264 m!5468523))

(declare-fun m!5468525 () Bool)

(assert (=> b!4626106 m!5468525))

(declare-fun m!5468527 () Bool)

(assert (=> b!4626107 m!5468527))

(assert (=> b!4625726 d!1457264))

(declare-fun d!1457266 () Bool)

(assert (=> d!1457266 (= (head!9642 newBucket!224) (h!57592 newBucket!224))))

(assert (=> b!4625726 d!1457266))

(declare-fun b!4626108 () Bool)

(declare-fun e!2885697 () List!51666)

(assert (=> b!4626108 (= e!2885697 (getKeysList!656 (toList!4981 lt!1783671)))))

(declare-fun b!4626109 () Bool)

(declare-fun e!2885700 () Bool)

(assert (=> b!4626109 (= e!2885700 (contains!14591 (keys!18157 lt!1783671) key!4968))))

(declare-fun b!4626110 () Bool)

(declare-fun e!2885698 () Unit!112145)

(declare-fun Unit!112197 () Unit!112145)

(assert (=> b!4626110 (= e!2885698 Unit!112197)))

(declare-fun b!4626111 () Bool)

(declare-fun e!2885695 () Bool)

(assert (=> b!4626111 (= e!2885695 e!2885700)))

(declare-fun res!1940029 () Bool)

(assert (=> b!4626111 (=> (not res!1940029) (not e!2885700))))

(assert (=> b!4626111 (= res!1940029 (isDefined!8860 (getValueByKey!1455 (toList!4981 lt!1783671) key!4968)))))

(declare-fun b!4626112 () Bool)

(assert (=> b!4626112 (= e!2885697 (keys!18157 lt!1783671))))

(declare-fun d!1457268 () Bool)

(assert (=> d!1457268 e!2885695))

(declare-fun res!1940030 () Bool)

(assert (=> d!1457268 (=> res!1940030 e!2885695)))

(declare-fun e!2885699 () Bool)

(assert (=> d!1457268 (= res!1940030 e!2885699)))

(declare-fun res!1940028 () Bool)

(assert (=> d!1457268 (=> (not res!1940028) (not e!2885699))))

(declare-fun lt!1784191 () Bool)

(assert (=> d!1457268 (= res!1940028 (not lt!1784191))))

(declare-fun lt!1784190 () Bool)

(assert (=> d!1457268 (= lt!1784191 lt!1784190)))

(declare-fun lt!1784189 () Unit!112145)

(declare-fun e!2885696 () Unit!112145)

(assert (=> d!1457268 (= lt!1784189 e!2885696)))

(declare-fun c!791877 () Bool)

(assert (=> d!1457268 (= c!791877 lt!1784190)))

(assert (=> d!1457268 (= lt!1784190 (containsKey!2453 (toList!4981 lt!1783671) key!4968))))

(assert (=> d!1457268 (= (contains!14587 lt!1783671 key!4968) lt!1784191)))

(declare-fun b!4626113 () Bool)

(assert (=> b!4626113 false))

(declare-fun lt!1784188 () Unit!112145)

(declare-fun lt!1784186 () Unit!112145)

(assert (=> b!4626113 (= lt!1784188 lt!1784186)))

(assert (=> b!4626113 (containsKey!2453 (toList!4981 lt!1783671) key!4968)))

(assert (=> b!4626113 (= lt!1784186 (lemmaInGetKeysListThenContainsKey!655 (toList!4981 lt!1783671) key!4968))))

(declare-fun Unit!112198 () Unit!112145)

(assert (=> b!4626113 (= e!2885698 Unit!112198)))

(declare-fun b!4626114 () Bool)

(assert (=> b!4626114 (= e!2885699 (not (contains!14591 (keys!18157 lt!1783671) key!4968)))))

(declare-fun bm!322687 () Bool)

(declare-fun call!322692 () Bool)

(assert (=> bm!322687 (= call!322692 (contains!14591 e!2885697 key!4968))))

(declare-fun c!791875 () Bool)

(assert (=> bm!322687 (= c!791875 c!791877)))

(declare-fun b!4626115 () Bool)

(declare-fun lt!1784184 () Unit!112145)

(assert (=> b!4626115 (= e!2885696 lt!1784184)))

(declare-fun lt!1784185 () Unit!112145)

(assert (=> b!4626115 (= lt!1784185 (lemmaContainsKeyImpliesGetValueByKeyDefined!1355 (toList!4981 lt!1783671) key!4968))))

(assert (=> b!4626115 (isDefined!8860 (getValueByKey!1455 (toList!4981 lt!1783671) key!4968))))

(declare-fun lt!1784187 () Unit!112145)

(assert (=> b!4626115 (= lt!1784187 lt!1784185)))

(assert (=> b!4626115 (= lt!1784184 (lemmaInListThenGetKeysListContains!651 (toList!4981 lt!1783671) key!4968))))

(assert (=> b!4626115 call!322692))

(declare-fun b!4626116 () Bool)

(assert (=> b!4626116 (= e!2885696 e!2885698)))

(declare-fun c!791876 () Bool)

(assert (=> b!4626116 (= c!791876 call!322692)))

(assert (= (and d!1457268 c!791877) b!4626115))

(assert (= (and d!1457268 (not c!791877)) b!4626116))

(assert (= (and b!4626116 c!791876) b!4626113))

(assert (= (and b!4626116 (not c!791876)) b!4626110))

(assert (= (or b!4626115 b!4626116) bm!322687))

(assert (= (and bm!322687 c!791875) b!4626108))

(assert (= (and bm!322687 (not c!791875)) b!4626112))

(assert (= (and d!1457268 res!1940028) b!4626114))

(assert (= (and d!1457268 (not res!1940030)) b!4626111))

(assert (= (and b!4626111 res!1940029) b!4626109))

(assert (=> b!4626114 m!5468003))

(assert (=> b!4626114 m!5468003))

(declare-fun m!5468529 () Bool)

(assert (=> b!4626114 m!5468529))

(declare-fun m!5468531 () Bool)

(assert (=> b!4626108 m!5468531))

(declare-fun m!5468533 () Bool)

(assert (=> d!1457268 m!5468533))

(assert (=> b!4626109 m!5468003))

(assert (=> b!4626109 m!5468003))

(assert (=> b!4626109 m!5468529))

(declare-fun m!5468537 () Bool)

(assert (=> bm!322687 m!5468537))

(assert (=> b!4626112 m!5468003))

(declare-fun m!5468539 () Bool)

(assert (=> b!4626111 m!5468539))

(assert (=> b!4626111 m!5468539))

(declare-fun m!5468541 () Bool)

(assert (=> b!4626111 m!5468541))

(declare-fun m!5468543 () Bool)

(assert (=> b!4626115 m!5468543))

(assert (=> b!4626115 m!5468539))

(assert (=> b!4626115 m!5468539))

(assert (=> b!4626115 m!5468541))

(declare-fun m!5468547 () Bool)

(assert (=> b!4626115 m!5468547))

(assert (=> b!4626113 m!5468533))

(declare-fun m!5468551 () Bool)

(assert (=> b!4626113 m!5468551))

(assert (=> b!4625726 d!1457268))

(declare-fun d!1457270 () Bool)

(declare-fun e!2885702 () Bool)

(assert (=> d!1457270 e!2885702))

(declare-fun res!1940032 () Bool)

(assert (=> d!1457270 (=> (not res!1940032) (not e!2885702))))

(declare-fun lt!1784195 () ListMap!4285)

(assert (=> d!1457270 (= res!1940032 (contains!14587 lt!1784195 (_1!29533 (h!57592 oldBucket!40))))))

(declare-fun lt!1784196 () List!51664)

(assert (=> d!1457270 (= lt!1784195 (ListMap!4286 lt!1784196))))

(declare-fun lt!1784197 () Unit!112145)

(declare-fun lt!1784194 () Unit!112145)

(assert (=> d!1457270 (= lt!1784197 lt!1784194)))

(assert (=> d!1457270 (= (getValueByKey!1455 lt!1784196 (_1!29533 (h!57592 oldBucket!40))) (Some!11596 (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457270 (= lt!1784194 (lemmaContainsTupThenGetReturnValue!850 lt!1784196 (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457270 (= lt!1784196 (insertNoDuplicatedKeys!358 (toList!4981 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541))) (_1!29533 (h!57592 oldBucket!40)) (_2!29533 (h!57592 oldBucket!40))))))

(assert (=> d!1457270 (= (+!1874 (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)) (h!57592 oldBucket!40)) lt!1784195)))

(declare-fun b!4626118 () Bool)

(declare-fun res!1940033 () Bool)

(assert (=> b!4626118 (=> (not res!1940033) (not e!2885702))))

(assert (=> b!4626118 (= res!1940033 (= (getValueByKey!1455 (toList!4981 lt!1784195) (_1!29533 (h!57592 oldBucket!40))) (Some!11596 (_2!29533 (h!57592 oldBucket!40)))))))

(declare-fun b!4626119 () Bool)

(assert (=> b!4626119 (= e!2885702 (contains!14592 (toList!4981 lt!1784195) (h!57592 oldBucket!40)))))

(assert (= (and d!1457270 res!1940032) b!4626118))

(assert (= (and b!4626118 res!1940033) b!4626119))

(declare-fun m!5468565 () Bool)

(assert (=> d!1457270 m!5468565))

(declare-fun m!5468567 () Bool)

(assert (=> d!1457270 m!5468567))

(declare-fun m!5468569 () Bool)

(assert (=> d!1457270 m!5468569))

(declare-fun m!5468571 () Bool)

(assert (=> d!1457270 m!5468571))

(declare-fun m!5468573 () Bool)

(assert (=> b!4626118 m!5468573))

(declare-fun m!5468575 () Bool)

(assert (=> b!4626119 m!5468575))

(assert (=> b!4625726 d!1457270))

(declare-fun d!1457276 () Bool)

(assert (=> d!1457276 (eq!823 (addToMapMapFromBucket!969 (Cons!51540 lt!1783661 lt!1783676) (ListMap!4286 Nil!51540)) (+!1874 (addToMapMapFromBucket!969 lt!1783676 (ListMap!4286 Nil!51540)) lt!1783661))))

(declare-fun lt!1784204 () Unit!112145)

(declare-fun choose!31330 (tuple2!52478 List!51664 ListMap!4285) Unit!112145)

(assert (=> d!1457276 (= lt!1784204 (choose!31330 lt!1783661 lt!1783676 (ListMap!4286 Nil!51540)))))

(assert (=> d!1457276 (noDuplicateKeys!1508 lt!1783676)))

(assert (=> d!1457276 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!74 lt!1783661 lt!1783676 (ListMap!4286 Nil!51540)) lt!1784204)))

(declare-fun bs!1023785 () Bool)

(assert (= bs!1023785 d!1457276))

(assert (=> bs!1023785 m!5467695))

(assert (=> bs!1023785 m!5467699))

(assert (=> bs!1023785 m!5467695))

(declare-fun m!5468599 () Bool)

(assert (=> bs!1023785 m!5468599))

(assert (=> bs!1023785 m!5467697))

(assert (=> bs!1023785 m!5467699))

(assert (=> bs!1023785 m!5467715))

(assert (=> bs!1023785 m!5467697))

(assert (=> bs!1023785 m!5468485))

(assert (=> b!4625726 d!1457276))

(declare-fun d!1457286 () Bool)

(assert (=> d!1457286 (= (eq!823 (addToMapMapFromBucket!969 (Cons!51540 lt!1783678 lt!1783672) (ListMap!4286 Nil!51540)) (+!1874 (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540)) lt!1783678)) (= (content!8803 (toList!4981 (addToMapMapFromBucket!969 (Cons!51540 lt!1783678 lt!1783672) (ListMap!4286 Nil!51540)))) (content!8803 (toList!4981 (+!1874 (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540)) lt!1783678)))))))

(declare-fun bs!1023786 () Bool)

(assert (= bs!1023786 d!1457286))

(declare-fun m!5468601 () Bool)

(assert (=> bs!1023786 m!5468601))

(declare-fun m!5468603 () Bool)

(assert (=> bs!1023786 m!5468603))

(assert (=> b!4625726 d!1457286))

(declare-fun bs!1023787 () Bool)

(declare-fun b!4626138 () Bool)

(assert (= bs!1023787 (and b!4626138 d!1457094)))

(declare-fun lambda!192268 () Int)

(assert (=> bs!1023787 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192268 lambda!192220))))

(declare-fun bs!1023788 () Bool)

(assert (= bs!1023788 (and b!4626138 b!4625862)))

(assert (=> bs!1023788 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192268 lambda!192218))))

(declare-fun bs!1023789 () Bool)

(assert (= bs!1023789 (and b!4626138 d!1457190)))

(assert (=> bs!1023789 (not (= lambda!192268 lambda!192232))))

(declare-fun bs!1023790 () Bool)

(assert (= bs!1023790 (and b!4626138 d!1457150)))

(assert (=> bs!1023790 (not (= lambda!192268 lambda!192229))))

(declare-fun bs!1023791 () Bool)

(assert (= bs!1023791 (and b!4626138 b!4626103)))

(assert (=> bs!1023791 (= lambda!192268 lambda!192264)))

(declare-fun bs!1023792 () Bool)

(assert (= bs!1023792 (and b!4626138 d!1457256)))

(assert (=> bs!1023792 (= (= (ListMap!4286 Nil!51540) lt!1784170) (= lambda!192268 lambda!192267))))

(declare-fun bs!1023793 () Bool)

(assert (= bs!1023793 (and b!4626138 b!4626101)))

(assert (=> bs!1023793 (= lambda!192268 lambda!192265)))

(declare-fun bs!1023794 () Bool)

(assert (= bs!1023794 (and b!4626138 b!4625864)))

(assert (=> bs!1023794 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192268 lambda!192217))))

(assert (=> bs!1023788 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192268 lambda!192219))))

(assert (=> bs!1023793 (= (= (ListMap!4286 Nil!51540) lt!1784166) (= lambda!192268 lambda!192266))))

(assert (=> b!4626138 true))

(declare-fun bs!1023795 () Bool)

(declare-fun b!4626136 () Bool)

(assert (= bs!1023795 (and b!4626136 d!1457094)))

(declare-fun lambda!192269 () Int)

(assert (=> bs!1023795 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192269 lambda!192220))))

(declare-fun bs!1023796 () Bool)

(assert (= bs!1023796 (and b!4626136 b!4625862)))

(assert (=> bs!1023796 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192269 lambda!192218))))

(declare-fun bs!1023797 () Bool)

(assert (= bs!1023797 (and b!4626136 b!4626138)))

(assert (=> bs!1023797 (= lambda!192269 lambda!192268)))

(declare-fun bs!1023798 () Bool)

(assert (= bs!1023798 (and b!4626136 d!1457190)))

(assert (=> bs!1023798 (not (= lambda!192269 lambda!192232))))

(declare-fun bs!1023799 () Bool)

(assert (= bs!1023799 (and b!4626136 d!1457150)))

(assert (=> bs!1023799 (not (= lambda!192269 lambda!192229))))

(declare-fun bs!1023800 () Bool)

(assert (= bs!1023800 (and b!4626136 b!4626103)))

(assert (=> bs!1023800 (= lambda!192269 lambda!192264)))

(declare-fun bs!1023801 () Bool)

(assert (= bs!1023801 (and b!4626136 d!1457256)))

(assert (=> bs!1023801 (= (= (ListMap!4286 Nil!51540) lt!1784170) (= lambda!192269 lambda!192267))))

(declare-fun bs!1023802 () Bool)

(assert (= bs!1023802 (and b!4626136 b!4626101)))

(assert (=> bs!1023802 (= lambda!192269 lambda!192265)))

(declare-fun bs!1023803 () Bool)

(assert (= bs!1023803 (and b!4626136 b!4625864)))

(assert (=> bs!1023803 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192269 lambda!192217))))

(assert (=> bs!1023796 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192269 lambda!192219))))

(assert (=> bs!1023802 (= (= (ListMap!4286 Nil!51540) lt!1784166) (= lambda!192269 lambda!192266))))

(assert (=> b!4626136 true))

(declare-fun lambda!192270 () Int)

(declare-fun lt!1784214 () ListMap!4285)

(assert (=> bs!1023795 (= (= lt!1784214 lt!1783880) (= lambda!192270 lambda!192220))))

(assert (=> bs!1023796 (= (= lt!1784214 lt!1783664) (= lambda!192270 lambda!192218))))

(assert (=> bs!1023797 (= (= lt!1784214 (ListMap!4286 Nil!51540)) (= lambda!192270 lambda!192268))))

(assert (=> bs!1023798 (not (= lambda!192270 lambda!192232))))

(assert (=> bs!1023799 (not (= lambda!192270 lambda!192229))))

(assert (=> b!4626136 (= (= lt!1784214 (ListMap!4286 Nil!51540)) (= lambda!192270 lambda!192269))))

(assert (=> bs!1023800 (= (= lt!1784214 (ListMap!4286 Nil!51540)) (= lambda!192270 lambda!192264))))

(assert (=> bs!1023801 (= (= lt!1784214 lt!1784170) (= lambda!192270 lambda!192267))))

(assert (=> bs!1023802 (= (= lt!1784214 (ListMap!4286 Nil!51540)) (= lambda!192270 lambda!192265))))

(assert (=> bs!1023803 (= (= lt!1784214 lt!1783664) (= lambda!192270 lambda!192217))))

(assert (=> bs!1023796 (= (= lt!1784214 lt!1783876) (= lambda!192270 lambda!192219))))

(assert (=> bs!1023802 (= (= lt!1784214 lt!1784166) (= lambda!192270 lambda!192266))))

(assert (=> b!4626136 true))

(declare-fun bs!1023804 () Bool)

(declare-fun d!1457288 () Bool)

(assert (= bs!1023804 (and d!1457288 d!1457094)))

(declare-fun lambda!192271 () Int)

(declare-fun lt!1784218 () ListMap!4285)

(assert (=> bs!1023804 (= (= lt!1784218 lt!1783880) (= lambda!192271 lambda!192220))))

(declare-fun bs!1023805 () Bool)

(assert (= bs!1023805 (and d!1457288 b!4625862)))

(assert (=> bs!1023805 (= (= lt!1784218 lt!1783664) (= lambda!192271 lambda!192218))))

(declare-fun bs!1023806 () Bool)

(assert (= bs!1023806 (and d!1457288 b!4626138)))

(assert (=> bs!1023806 (= (= lt!1784218 (ListMap!4286 Nil!51540)) (= lambda!192271 lambda!192268))))

(declare-fun bs!1023807 () Bool)

(assert (= bs!1023807 (and d!1457288 d!1457190)))

(assert (=> bs!1023807 (not (= lambda!192271 lambda!192232))))

(declare-fun bs!1023808 () Bool)

(assert (= bs!1023808 (and d!1457288 b!4626136)))

(assert (=> bs!1023808 (= (= lt!1784218 (ListMap!4286 Nil!51540)) (= lambda!192271 lambda!192269))))

(declare-fun bs!1023809 () Bool)

(assert (= bs!1023809 (and d!1457288 b!4626103)))

(assert (=> bs!1023809 (= (= lt!1784218 (ListMap!4286 Nil!51540)) (= lambda!192271 lambda!192264))))

(declare-fun bs!1023810 () Bool)

(assert (= bs!1023810 (and d!1457288 d!1457256)))

(assert (=> bs!1023810 (= (= lt!1784218 lt!1784170) (= lambda!192271 lambda!192267))))

(declare-fun bs!1023811 () Bool)

(assert (= bs!1023811 (and d!1457288 b!4626101)))

(assert (=> bs!1023811 (= (= lt!1784218 (ListMap!4286 Nil!51540)) (= lambda!192271 lambda!192265))))

(declare-fun bs!1023812 () Bool)

(assert (= bs!1023812 (and d!1457288 b!4625864)))

(assert (=> bs!1023812 (= (= lt!1784218 lt!1783664) (= lambda!192271 lambda!192217))))

(assert (=> bs!1023808 (= (= lt!1784218 lt!1784214) (= lambda!192271 lambda!192270))))

(declare-fun bs!1023813 () Bool)

(assert (= bs!1023813 (and d!1457288 d!1457150)))

(assert (=> bs!1023813 (not (= lambda!192271 lambda!192229))))

(assert (=> bs!1023805 (= (= lt!1784218 lt!1783876) (= lambda!192271 lambda!192219))))

(assert (=> bs!1023811 (= (= lt!1784218 lt!1784166) (= lambda!192271 lambda!192266))))

(assert (=> d!1457288 true))

(declare-fun e!2885718 () Bool)

(assert (=> d!1457288 e!2885718))

(declare-fun res!1940044 () Bool)

(assert (=> d!1457288 (=> (not res!1940044) (not e!2885718))))

(assert (=> d!1457288 (= res!1940044 (forall!10828 (Cons!51540 lt!1783678 lt!1783672) lambda!192271))))

(declare-fun e!2885716 () ListMap!4285)

(assert (=> d!1457288 (= lt!1784218 e!2885716)))

(declare-fun c!791878 () Bool)

(assert (=> d!1457288 (= c!791878 ((_ is Nil!51540) (Cons!51540 lt!1783678 lt!1783672)))))

(assert (=> d!1457288 (noDuplicateKeys!1508 (Cons!51540 lt!1783678 lt!1783672))))

(assert (=> d!1457288 (= (addToMapMapFromBucket!969 (Cons!51540 lt!1783678 lt!1783672) (ListMap!4286 Nil!51540)) lt!1784218)))

(assert (=> b!4626136 (= e!2885716 lt!1784214)))

(declare-fun lt!1784217 () ListMap!4285)

(assert (=> b!4626136 (= lt!1784217 (+!1874 (ListMap!4286 Nil!51540) (h!57592 (Cons!51540 lt!1783678 lt!1783672))))))

(assert (=> b!4626136 (= lt!1784214 (addToMapMapFromBucket!969 (t!358698 (Cons!51540 lt!1783678 lt!1783672)) (+!1874 (ListMap!4286 Nil!51540) (h!57592 (Cons!51540 lt!1783678 lt!1783672)))))))

(declare-fun lt!1784225 () Unit!112145)

(declare-fun call!322694 () Unit!112145)

(assert (=> b!4626136 (= lt!1784225 call!322694)))

(assert (=> b!4626136 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192269)))

(declare-fun lt!1784215 () Unit!112145)

(assert (=> b!4626136 (= lt!1784215 lt!1784225)))

(assert (=> b!4626136 (forall!10828 (toList!4981 lt!1784217) lambda!192270)))

(declare-fun lt!1784207 () Unit!112145)

(declare-fun Unit!112200 () Unit!112145)

(assert (=> b!4626136 (= lt!1784207 Unit!112200)))

(declare-fun call!322695 () Bool)

(assert (=> b!4626136 call!322695))

(declare-fun lt!1784220 () Unit!112145)

(declare-fun Unit!112201 () Unit!112145)

(assert (=> b!4626136 (= lt!1784220 Unit!112201)))

(declare-fun lt!1784216 () Unit!112145)

(declare-fun Unit!112202 () Unit!112145)

(assert (=> b!4626136 (= lt!1784216 Unit!112202)))

(declare-fun lt!1784222 () Unit!112145)

(assert (=> b!4626136 (= lt!1784222 (forallContained!3056 (toList!4981 lt!1784217) lambda!192270 (h!57592 (Cons!51540 lt!1783678 lt!1783672))))))

(assert (=> b!4626136 (contains!14587 lt!1784217 (_1!29533 (h!57592 (Cons!51540 lt!1783678 lt!1783672))))))

(declare-fun lt!1784221 () Unit!112145)

(declare-fun Unit!112203 () Unit!112145)

(assert (=> b!4626136 (= lt!1784221 Unit!112203)))

(assert (=> b!4626136 (contains!14587 lt!1784214 (_1!29533 (h!57592 (Cons!51540 lt!1783678 lt!1783672))))))

(declare-fun lt!1784206 () Unit!112145)

(declare-fun Unit!112205 () Unit!112145)

(assert (=> b!4626136 (= lt!1784206 Unit!112205)))

(assert (=> b!4626136 (forall!10828 (Cons!51540 lt!1783678 lt!1783672) lambda!192270)))

(declare-fun lt!1784213 () Unit!112145)

(declare-fun Unit!112207 () Unit!112145)

(assert (=> b!4626136 (= lt!1784213 Unit!112207)))

(assert (=> b!4626136 (forall!10828 (toList!4981 lt!1784217) lambda!192270)))

(declare-fun lt!1784212 () Unit!112145)

(declare-fun Unit!112209 () Unit!112145)

(assert (=> b!4626136 (= lt!1784212 Unit!112209)))

(declare-fun lt!1784208 () Unit!112145)

(declare-fun Unit!112210 () Unit!112145)

(assert (=> b!4626136 (= lt!1784208 Unit!112210)))

(declare-fun lt!1784210 () Unit!112145)

(assert (=> b!4626136 (= lt!1784210 (addForallContainsKeyThenBeforeAdding!507 (ListMap!4286 Nil!51540) lt!1784214 (_1!29533 (h!57592 (Cons!51540 lt!1783678 lt!1783672))) (_2!29533 (h!57592 (Cons!51540 lt!1783678 lt!1783672)))))))

(assert (=> b!4626136 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192270)))

(declare-fun lt!1784211 () Unit!112145)

(assert (=> b!4626136 (= lt!1784211 lt!1784210)))

(assert (=> b!4626136 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192270)))

(declare-fun lt!1784205 () Unit!112145)

(declare-fun Unit!112212 () Unit!112145)

(assert (=> b!4626136 (= lt!1784205 Unit!112212)))

(declare-fun res!1940046 () Bool)

(declare-fun call!322693 () Bool)

(assert (=> b!4626136 (= res!1940046 call!322693)))

(declare-fun e!2885717 () Bool)

(assert (=> b!4626136 (=> (not res!1940046) (not e!2885717))))

(assert (=> b!4626136 e!2885717))

(declare-fun lt!1784219 () Unit!112145)

(declare-fun Unit!112214 () Unit!112145)

(assert (=> b!4626136 (= lt!1784219 Unit!112214)))

(declare-fun bm!322688 () Bool)

(assert (=> bm!322688 (= call!322693 (forall!10828 (ite c!791878 (toList!4981 (ListMap!4286 Nil!51540)) (Cons!51540 lt!1783678 lt!1783672)) (ite c!791878 lambda!192268 lambda!192270)))))

(declare-fun b!4626137 () Bool)

(assert (=> b!4626137 (= e!2885717 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192270))))

(declare-fun bm!322689 () Bool)

(assert (=> bm!322689 (= call!322694 (lemmaContainsAllItsOwnKeys!508 (ListMap!4286 Nil!51540)))))

(declare-fun bm!322690 () Bool)

(assert (=> bm!322690 (= call!322695 (forall!10828 (ite c!791878 (toList!4981 (ListMap!4286 Nil!51540)) (t!358698 (Cons!51540 lt!1783678 lt!1783672))) (ite c!791878 lambda!192268 lambda!192270)))))

(assert (=> b!4626138 (= e!2885716 (ListMap!4286 Nil!51540))))

(declare-fun lt!1784223 () Unit!112145)

(assert (=> b!4626138 (= lt!1784223 call!322694)))

(assert (=> b!4626138 call!322695))

(declare-fun lt!1784224 () Unit!112145)

(assert (=> b!4626138 (= lt!1784224 lt!1784223)))

(assert (=> b!4626138 call!322693))

(declare-fun lt!1784209 () Unit!112145)

(declare-fun Unit!112217 () Unit!112145)

(assert (=> b!4626138 (= lt!1784209 Unit!112217)))

(declare-fun b!4626139 () Bool)

(assert (=> b!4626139 (= e!2885718 (invariantList!1206 (toList!4981 lt!1784218)))))

(declare-fun b!4626140 () Bool)

(declare-fun res!1940045 () Bool)

(assert (=> b!4626140 (=> (not res!1940045) (not e!2885718))))

(assert (=> b!4626140 (= res!1940045 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192271))))

(assert (= (and d!1457288 c!791878) b!4626138))

(assert (= (and d!1457288 (not c!791878)) b!4626136))

(assert (= (and b!4626136 res!1940046) b!4626137))

(assert (= (or b!4626138 b!4626136) bm!322689))

(assert (= (or b!4626138 b!4626136) bm!322690))

(assert (= (or b!4626138 b!4626136) bm!322688))

(assert (= (and d!1457288 res!1940044) b!4626140))

(assert (= (and b!4626140 res!1940045) b!4626139))

(assert (=> bm!322689 m!5468479))

(declare-fun m!5468605 () Bool)

(assert (=> bm!322690 m!5468605))

(declare-fun m!5468607 () Bool)

(assert (=> d!1457288 m!5468607))

(declare-fun m!5468609 () Bool)

(assert (=> d!1457288 m!5468609))

(declare-fun m!5468611 () Bool)

(assert (=> bm!322688 m!5468611))

(declare-fun m!5468613 () Bool)

(assert (=> b!4626140 m!5468613))

(declare-fun m!5468615 () Bool)

(assert (=> b!4626136 m!5468615))

(declare-fun m!5468617 () Bool)

(assert (=> b!4626136 m!5468617))

(declare-fun m!5468619 () Bool)

(assert (=> b!4626136 m!5468619))

(assert (=> b!4626136 m!5468617))

(declare-fun m!5468621 () Bool)

(assert (=> b!4626136 m!5468621))

(declare-fun m!5468623 () Bool)

(assert (=> b!4626136 m!5468623))

(declare-fun m!5468625 () Bool)

(assert (=> b!4626136 m!5468625))

(declare-fun m!5468627 () Bool)

(assert (=> b!4626136 m!5468627))

(declare-fun m!5468629 () Bool)

(assert (=> b!4626136 m!5468629))

(assert (=> b!4626136 m!5468619))

(assert (=> b!4626136 m!5468623))

(declare-fun m!5468631 () Bool)

(assert (=> b!4626136 m!5468631))

(declare-fun m!5468633 () Bool)

(assert (=> b!4626136 m!5468633))

(assert (=> b!4626137 m!5468619))

(declare-fun m!5468635 () Bool)

(assert (=> b!4626139 m!5468635))

(assert (=> b!4625726 d!1457288))

(declare-fun bs!1023814 () Bool)

(declare-fun d!1457290 () Bool)

(assert (= bs!1023814 (and d!1457290 d!1457214)))

(declare-fun lambda!192272 () Int)

(assert (=> bs!1023814 (= lambda!192272 lambda!192260)))

(declare-fun bs!1023815 () Bool)

(assert (= bs!1023815 (and d!1457290 d!1457148)))

(assert (=> bs!1023815 (= lambda!192272 lambda!192226)))

(declare-fun bs!1023816 () Bool)

(assert (= bs!1023816 (and d!1457290 d!1457092)))

(assert (=> bs!1023816 (= lambda!192272 lambda!192141)))

(declare-fun bs!1023817 () Bool)

(assert (= bs!1023817 (and d!1457290 d!1457244)))

(assert (=> bs!1023817 (= lambda!192272 lambda!192263)))

(declare-fun bs!1023818 () Bool)

(assert (= bs!1023818 (and d!1457290 d!1457130)))

(assert (=> bs!1023818 (= lambda!192272 lambda!192221)))

(declare-fun bs!1023819 () Bool)

(assert (= bs!1023819 (and d!1457290 d!1457146)))

(assert (=> bs!1023819 (= lambda!192272 lambda!192225)))

(declare-fun bs!1023820 () Bool)

(assert (= bs!1023820 (and d!1457290 b!4625736)))

(assert (=> bs!1023820 (= lambda!192272 lambda!192138)))

(declare-fun lt!1784226 () ListMap!4285)

(assert (=> d!1457290 (invariantList!1206 (toList!4981 lt!1784226))))

(declare-fun e!2885719 () ListMap!4285)

(assert (=> d!1457290 (= lt!1784226 e!2885719)))

(declare-fun c!791879 () Bool)

(assert (=> d!1457290 (= c!791879 ((_ is Cons!51541) (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)))))

(assert (=> d!1457290 (forall!10826 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541) lambda!192272)))

(assert (=> d!1457290 (= (extractMap!1564 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)) lt!1784226)))

(declare-fun b!4626141 () Bool)

(assert (=> b!4626141 (= e!2885719 (addToMapMapFromBucket!969 (_2!29534 (h!57593 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541))) (extractMap!1564 (t!358699 (Cons!51541 (tuple2!52481 hash!414 lt!1783672) Nil!51541)))))))

(declare-fun b!4626142 () Bool)

(assert (=> b!4626142 (= e!2885719 (ListMap!4286 Nil!51540))))

(assert (= (and d!1457290 c!791879) b!4626141))

(assert (= (and d!1457290 (not c!791879)) b!4626142))

(declare-fun m!5468637 () Bool)

(assert (=> d!1457290 m!5468637))

(declare-fun m!5468639 () Bool)

(assert (=> d!1457290 m!5468639))

(declare-fun m!5468641 () Bool)

(assert (=> b!4626141 m!5468641))

(assert (=> b!4626141 m!5468641))

(declare-fun m!5468643 () Bool)

(assert (=> b!4626141 m!5468643))

(assert (=> b!4625726 d!1457290))

(declare-fun bs!1023821 () Bool)

(declare-fun d!1457292 () Bool)

(assert (= bs!1023821 (and d!1457292 d!1457214)))

(declare-fun lambda!192275 () Int)

(assert (=> bs!1023821 (= lambda!192275 lambda!192260)))

(declare-fun bs!1023822 () Bool)

(assert (= bs!1023822 (and d!1457292 d!1457148)))

(assert (=> bs!1023822 (= lambda!192275 lambda!192226)))

(declare-fun bs!1023823 () Bool)

(assert (= bs!1023823 (and d!1457292 d!1457092)))

(assert (=> bs!1023823 (= lambda!192275 lambda!192141)))

(declare-fun bs!1023824 () Bool)

(assert (= bs!1023824 (and d!1457292 d!1457290)))

(assert (=> bs!1023824 (= lambda!192275 lambda!192272)))

(declare-fun bs!1023825 () Bool)

(assert (= bs!1023825 (and d!1457292 d!1457244)))

(assert (=> bs!1023825 (= lambda!192275 lambda!192263)))

(declare-fun bs!1023826 () Bool)

(assert (= bs!1023826 (and d!1457292 d!1457130)))

(assert (=> bs!1023826 (= lambda!192275 lambda!192221)))

(declare-fun bs!1023827 () Bool)

(assert (= bs!1023827 (and d!1457292 d!1457146)))

(assert (=> bs!1023827 (= lambda!192275 lambda!192225)))

(declare-fun bs!1023828 () Bool)

(assert (= bs!1023828 (and d!1457292 b!4625736)))

(assert (=> bs!1023828 (= lambda!192275 lambda!192138)))

(assert (=> d!1457292 (contains!14587 (extractMap!1564 (toList!4982 (ListLongMap!3572 lt!1783670))) key!4968)))

(declare-fun lt!1784229 () Unit!112145)

(declare-fun choose!31331 (ListLongMap!3571 K!12920 Hashable!5905) Unit!112145)

(assert (=> d!1457292 (= lt!1784229 (choose!31331 (ListLongMap!3572 lt!1783670) key!4968 hashF!1389))))

(assert (=> d!1457292 (forall!10826 (toList!4982 (ListLongMap!3572 lt!1783670)) lambda!192275)))

(assert (=> d!1457292 (= (lemmaListContainsThenExtractedMapContains!326 (ListLongMap!3572 lt!1783670) key!4968 hashF!1389) lt!1784229)))

(declare-fun bs!1023829 () Bool)

(assert (= bs!1023829 d!1457292))

(declare-fun m!5468645 () Bool)

(assert (=> bs!1023829 m!5468645))

(assert (=> bs!1023829 m!5468645))

(declare-fun m!5468647 () Bool)

(assert (=> bs!1023829 m!5468647))

(declare-fun m!5468649 () Bool)

(assert (=> bs!1023829 m!5468649))

(declare-fun m!5468651 () Bool)

(assert (=> bs!1023829 m!5468651))

(assert (=> b!4625726 d!1457292))

(declare-fun bs!1023830 () Bool)

(declare-fun b!4626145 () Bool)

(assert (= bs!1023830 (and b!4626145 d!1457094)))

(declare-fun lambda!192276 () Int)

(assert (=> bs!1023830 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192276 lambda!192220))))

(declare-fun bs!1023831 () Bool)

(assert (= bs!1023831 (and b!4626145 b!4625862)))

(assert (=> bs!1023831 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192276 lambda!192218))))

(declare-fun bs!1023832 () Bool)

(assert (= bs!1023832 (and b!4626145 b!4626138)))

(assert (=> bs!1023832 (= lambda!192276 lambda!192268)))

(declare-fun bs!1023833 () Bool)

(assert (= bs!1023833 (and b!4626145 d!1457190)))

(assert (=> bs!1023833 (not (= lambda!192276 lambda!192232))))

(declare-fun bs!1023834 () Bool)

(assert (= bs!1023834 (and b!4626145 b!4626136)))

(assert (=> bs!1023834 (= lambda!192276 lambda!192269)))

(declare-fun bs!1023835 () Bool)

(assert (= bs!1023835 (and b!4626145 b!4626103)))

(assert (=> bs!1023835 (= lambda!192276 lambda!192264)))

(declare-fun bs!1023836 () Bool)

(assert (= bs!1023836 (and b!4626145 d!1457256)))

(assert (=> bs!1023836 (= (= (ListMap!4286 Nil!51540) lt!1784170) (= lambda!192276 lambda!192267))))

(declare-fun bs!1023837 () Bool)

(assert (= bs!1023837 (and b!4626145 b!4626101)))

(assert (=> bs!1023837 (= lambda!192276 lambda!192265)))

(declare-fun bs!1023838 () Bool)

(assert (= bs!1023838 (and b!4626145 d!1457288)))

(assert (=> bs!1023838 (= (= (ListMap!4286 Nil!51540) lt!1784218) (= lambda!192276 lambda!192271))))

(declare-fun bs!1023839 () Bool)

(assert (= bs!1023839 (and b!4626145 b!4625864)))

(assert (=> bs!1023839 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192276 lambda!192217))))

(assert (=> bs!1023834 (= (= (ListMap!4286 Nil!51540) lt!1784214) (= lambda!192276 lambda!192270))))

(declare-fun bs!1023840 () Bool)

(assert (= bs!1023840 (and b!4626145 d!1457150)))

(assert (=> bs!1023840 (not (= lambda!192276 lambda!192229))))

(assert (=> bs!1023831 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192276 lambda!192219))))

(assert (=> bs!1023837 (= (= (ListMap!4286 Nil!51540) lt!1784166) (= lambda!192276 lambda!192266))))

(assert (=> b!4626145 true))

(declare-fun bs!1023841 () Bool)

(declare-fun b!4626143 () Bool)

(assert (= bs!1023841 (and b!4626143 d!1457094)))

(declare-fun lambda!192277 () Int)

(assert (=> bs!1023841 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192277 lambda!192220))))

(declare-fun bs!1023842 () Bool)

(assert (= bs!1023842 (and b!4626143 b!4625862)))

(assert (=> bs!1023842 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192277 lambda!192218))))

(declare-fun bs!1023843 () Bool)

(assert (= bs!1023843 (and b!4626143 b!4626138)))

(assert (=> bs!1023843 (= lambda!192277 lambda!192268)))

(declare-fun bs!1023844 () Bool)

(assert (= bs!1023844 (and b!4626143 b!4626136)))

(assert (=> bs!1023844 (= lambda!192277 lambda!192269)))

(declare-fun bs!1023845 () Bool)

(assert (= bs!1023845 (and b!4626143 b!4626103)))

(assert (=> bs!1023845 (= lambda!192277 lambda!192264)))

(declare-fun bs!1023846 () Bool)

(assert (= bs!1023846 (and b!4626143 d!1457256)))

(assert (=> bs!1023846 (= (= (ListMap!4286 Nil!51540) lt!1784170) (= lambda!192277 lambda!192267))))

(declare-fun bs!1023847 () Bool)

(assert (= bs!1023847 (and b!4626143 b!4626101)))

(assert (=> bs!1023847 (= lambda!192277 lambda!192265)))

(declare-fun bs!1023848 () Bool)

(assert (= bs!1023848 (and b!4626143 d!1457288)))

(assert (=> bs!1023848 (= (= (ListMap!4286 Nil!51540) lt!1784218) (= lambda!192277 lambda!192271))))

(declare-fun bs!1023849 () Bool)

(assert (= bs!1023849 (and b!4626143 b!4625864)))

(assert (=> bs!1023849 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192277 lambda!192217))))

(declare-fun bs!1023850 () Bool)

(assert (= bs!1023850 (and b!4626143 b!4626145)))

(assert (=> bs!1023850 (= lambda!192277 lambda!192276)))

(declare-fun bs!1023851 () Bool)

(assert (= bs!1023851 (and b!4626143 d!1457190)))

(assert (=> bs!1023851 (not (= lambda!192277 lambda!192232))))

(assert (=> bs!1023844 (= (= (ListMap!4286 Nil!51540) lt!1784214) (= lambda!192277 lambda!192270))))

(declare-fun bs!1023852 () Bool)

(assert (= bs!1023852 (and b!4626143 d!1457150)))

(assert (=> bs!1023852 (not (= lambda!192277 lambda!192229))))

(assert (=> bs!1023842 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192277 lambda!192219))))

(assert (=> bs!1023847 (= (= (ListMap!4286 Nil!51540) lt!1784166) (= lambda!192277 lambda!192266))))

(assert (=> b!4626143 true))

(declare-fun lambda!192278 () Int)

(declare-fun lt!1784239 () ListMap!4285)

(assert (=> bs!1023841 (= (= lt!1784239 lt!1783880) (= lambda!192278 lambda!192220))))

(assert (=> bs!1023842 (= (= lt!1784239 lt!1783664) (= lambda!192278 lambda!192218))))

(assert (=> bs!1023843 (= (= lt!1784239 (ListMap!4286 Nil!51540)) (= lambda!192278 lambda!192268))))

(assert (=> bs!1023844 (= (= lt!1784239 (ListMap!4286 Nil!51540)) (= lambda!192278 lambda!192269))))

(assert (=> b!4626143 (= (= lt!1784239 (ListMap!4286 Nil!51540)) (= lambda!192278 lambda!192277))))

(assert (=> bs!1023845 (= (= lt!1784239 (ListMap!4286 Nil!51540)) (= lambda!192278 lambda!192264))))

(assert (=> bs!1023846 (= (= lt!1784239 lt!1784170) (= lambda!192278 lambda!192267))))

(assert (=> bs!1023847 (= (= lt!1784239 (ListMap!4286 Nil!51540)) (= lambda!192278 lambda!192265))))

(assert (=> bs!1023848 (= (= lt!1784239 lt!1784218) (= lambda!192278 lambda!192271))))

(assert (=> bs!1023849 (= (= lt!1784239 lt!1783664) (= lambda!192278 lambda!192217))))

(assert (=> bs!1023850 (= (= lt!1784239 (ListMap!4286 Nil!51540)) (= lambda!192278 lambda!192276))))

(assert (=> bs!1023851 (not (= lambda!192278 lambda!192232))))

(assert (=> bs!1023844 (= (= lt!1784239 lt!1784214) (= lambda!192278 lambda!192270))))

(assert (=> bs!1023852 (not (= lambda!192278 lambda!192229))))

(assert (=> bs!1023842 (= (= lt!1784239 lt!1783876) (= lambda!192278 lambda!192219))))

(assert (=> bs!1023847 (= (= lt!1784239 lt!1784166) (= lambda!192278 lambda!192266))))

(assert (=> b!4626143 true))

(declare-fun bs!1023853 () Bool)

(declare-fun d!1457294 () Bool)

(assert (= bs!1023853 (and d!1457294 d!1457094)))

(declare-fun lambda!192279 () Int)

(declare-fun lt!1784243 () ListMap!4285)

(assert (=> bs!1023853 (= (= lt!1784243 lt!1783880) (= lambda!192279 lambda!192220))))

(declare-fun bs!1023854 () Bool)

(assert (= bs!1023854 (and d!1457294 b!4625862)))

(assert (=> bs!1023854 (= (= lt!1784243 lt!1783664) (= lambda!192279 lambda!192218))))

(declare-fun bs!1023855 () Bool)

(assert (= bs!1023855 (and d!1457294 b!4626138)))

(assert (=> bs!1023855 (= (= lt!1784243 (ListMap!4286 Nil!51540)) (= lambda!192279 lambda!192268))))

(declare-fun bs!1023856 () Bool)

(assert (= bs!1023856 (and d!1457294 b!4626136)))

(assert (=> bs!1023856 (= (= lt!1784243 (ListMap!4286 Nil!51540)) (= lambda!192279 lambda!192269))))

(declare-fun bs!1023857 () Bool)

(assert (= bs!1023857 (and d!1457294 b!4626143)))

(assert (=> bs!1023857 (= (= lt!1784243 (ListMap!4286 Nil!51540)) (= lambda!192279 lambda!192277))))

(declare-fun bs!1023858 () Bool)

(assert (= bs!1023858 (and d!1457294 b!4626103)))

(assert (=> bs!1023858 (= (= lt!1784243 (ListMap!4286 Nil!51540)) (= lambda!192279 lambda!192264))))

(declare-fun bs!1023859 () Bool)

(assert (= bs!1023859 (and d!1457294 d!1457256)))

(assert (=> bs!1023859 (= (= lt!1784243 lt!1784170) (= lambda!192279 lambda!192267))))

(declare-fun bs!1023860 () Bool)

(assert (= bs!1023860 (and d!1457294 b!4626101)))

(assert (=> bs!1023860 (= (= lt!1784243 (ListMap!4286 Nil!51540)) (= lambda!192279 lambda!192265))))

(declare-fun bs!1023861 () Bool)

(assert (= bs!1023861 (and d!1457294 d!1457288)))

(assert (=> bs!1023861 (= (= lt!1784243 lt!1784218) (= lambda!192279 lambda!192271))))

(declare-fun bs!1023862 () Bool)

(assert (= bs!1023862 (and d!1457294 b!4625864)))

(assert (=> bs!1023862 (= (= lt!1784243 lt!1783664) (= lambda!192279 lambda!192217))))

(assert (=> bs!1023857 (= (= lt!1784243 lt!1784239) (= lambda!192279 lambda!192278))))

(declare-fun bs!1023863 () Bool)

(assert (= bs!1023863 (and d!1457294 b!4626145)))

(assert (=> bs!1023863 (= (= lt!1784243 (ListMap!4286 Nil!51540)) (= lambda!192279 lambda!192276))))

(declare-fun bs!1023864 () Bool)

(assert (= bs!1023864 (and d!1457294 d!1457190)))

(assert (=> bs!1023864 (not (= lambda!192279 lambda!192232))))

(assert (=> bs!1023856 (= (= lt!1784243 lt!1784214) (= lambda!192279 lambda!192270))))

(declare-fun bs!1023865 () Bool)

(assert (= bs!1023865 (and d!1457294 d!1457150)))

(assert (=> bs!1023865 (not (= lambda!192279 lambda!192229))))

(assert (=> bs!1023854 (= (= lt!1784243 lt!1783876) (= lambda!192279 lambda!192219))))

(assert (=> bs!1023860 (= (= lt!1784243 lt!1784166) (= lambda!192279 lambda!192266))))

(assert (=> d!1457294 true))

(declare-fun e!2885722 () Bool)

(assert (=> d!1457294 e!2885722))

(declare-fun res!1940047 () Bool)

(assert (=> d!1457294 (=> (not res!1940047) (not e!2885722))))

(assert (=> d!1457294 (= res!1940047 (forall!10828 lt!1783672 lambda!192279))))

(declare-fun e!2885720 () ListMap!4285)

(assert (=> d!1457294 (= lt!1784243 e!2885720)))

(declare-fun c!791880 () Bool)

(assert (=> d!1457294 (= c!791880 ((_ is Nil!51540) lt!1783672))))

(assert (=> d!1457294 (noDuplicateKeys!1508 lt!1783672)))

(assert (=> d!1457294 (= (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540)) lt!1784243)))

(assert (=> b!4626143 (= e!2885720 lt!1784239)))

(declare-fun lt!1784242 () ListMap!4285)

(assert (=> b!4626143 (= lt!1784242 (+!1874 (ListMap!4286 Nil!51540) (h!57592 lt!1783672)))))

(assert (=> b!4626143 (= lt!1784239 (addToMapMapFromBucket!969 (t!358698 lt!1783672) (+!1874 (ListMap!4286 Nil!51540) (h!57592 lt!1783672))))))

(declare-fun lt!1784250 () Unit!112145)

(declare-fun call!322697 () Unit!112145)

(assert (=> b!4626143 (= lt!1784250 call!322697)))

(assert (=> b!4626143 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192277)))

(declare-fun lt!1784240 () Unit!112145)

(assert (=> b!4626143 (= lt!1784240 lt!1784250)))

(assert (=> b!4626143 (forall!10828 (toList!4981 lt!1784242) lambda!192278)))

(declare-fun lt!1784232 () Unit!112145)

(declare-fun Unit!112223 () Unit!112145)

(assert (=> b!4626143 (= lt!1784232 Unit!112223)))

(declare-fun call!322698 () Bool)

(assert (=> b!4626143 call!322698))

(declare-fun lt!1784245 () Unit!112145)

(declare-fun Unit!112224 () Unit!112145)

(assert (=> b!4626143 (= lt!1784245 Unit!112224)))

(declare-fun lt!1784241 () Unit!112145)

(declare-fun Unit!112225 () Unit!112145)

(assert (=> b!4626143 (= lt!1784241 Unit!112225)))

(declare-fun lt!1784247 () Unit!112145)

(assert (=> b!4626143 (= lt!1784247 (forallContained!3056 (toList!4981 lt!1784242) lambda!192278 (h!57592 lt!1783672)))))

(assert (=> b!4626143 (contains!14587 lt!1784242 (_1!29533 (h!57592 lt!1783672)))))

(declare-fun lt!1784246 () Unit!112145)

(declare-fun Unit!112226 () Unit!112145)

(assert (=> b!4626143 (= lt!1784246 Unit!112226)))

(assert (=> b!4626143 (contains!14587 lt!1784239 (_1!29533 (h!57592 lt!1783672)))))

(declare-fun lt!1784231 () Unit!112145)

(declare-fun Unit!112227 () Unit!112145)

(assert (=> b!4626143 (= lt!1784231 Unit!112227)))

(assert (=> b!4626143 (forall!10828 lt!1783672 lambda!192278)))

(declare-fun lt!1784238 () Unit!112145)

(declare-fun Unit!112228 () Unit!112145)

(assert (=> b!4626143 (= lt!1784238 Unit!112228)))

(assert (=> b!4626143 (forall!10828 (toList!4981 lt!1784242) lambda!192278)))

(declare-fun lt!1784237 () Unit!112145)

(declare-fun Unit!112229 () Unit!112145)

(assert (=> b!4626143 (= lt!1784237 Unit!112229)))

(declare-fun lt!1784233 () Unit!112145)

(declare-fun Unit!112230 () Unit!112145)

(assert (=> b!4626143 (= lt!1784233 Unit!112230)))

(declare-fun lt!1784235 () Unit!112145)

(assert (=> b!4626143 (= lt!1784235 (addForallContainsKeyThenBeforeAdding!507 (ListMap!4286 Nil!51540) lt!1784239 (_1!29533 (h!57592 lt!1783672)) (_2!29533 (h!57592 lt!1783672))))))

(assert (=> b!4626143 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192278)))

(declare-fun lt!1784236 () Unit!112145)

(assert (=> b!4626143 (= lt!1784236 lt!1784235)))

(assert (=> b!4626143 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192278)))

(declare-fun lt!1784230 () Unit!112145)

(declare-fun Unit!112231 () Unit!112145)

(assert (=> b!4626143 (= lt!1784230 Unit!112231)))

(declare-fun res!1940049 () Bool)

(declare-fun call!322696 () Bool)

(assert (=> b!4626143 (= res!1940049 call!322696)))

(declare-fun e!2885721 () Bool)

(assert (=> b!4626143 (=> (not res!1940049) (not e!2885721))))

(assert (=> b!4626143 e!2885721))

(declare-fun lt!1784244 () Unit!112145)

(declare-fun Unit!112232 () Unit!112145)

(assert (=> b!4626143 (= lt!1784244 Unit!112232)))

(declare-fun bm!322691 () Bool)

(assert (=> bm!322691 (= call!322696 (forall!10828 (ite c!791880 (toList!4981 (ListMap!4286 Nil!51540)) lt!1783672) (ite c!791880 lambda!192276 lambda!192278)))))

(declare-fun b!4626144 () Bool)

(assert (=> b!4626144 (= e!2885721 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192278))))

(declare-fun bm!322692 () Bool)

(assert (=> bm!322692 (= call!322697 (lemmaContainsAllItsOwnKeys!508 (ListMap!4286 Nil!51540)))))

(declare-fun bm!322693 () Bool)

(assert (=> bm!322693 (= call!322698 (forall!10828 (ite c!791880 (toList!4981 (ListMap!4286 Nil!51540)) (t!358698 lt!1783672)) (ite c!791880 lambda!192276 lambda!192278)))))

(assert (=> b!4626145 (= e!2885720 (ListMap!4286 Nil!51540))))

(declare-fun lt!1784248 () Unit!112145)

(assert (=> b!4626145 (= lt!1784248 call!322697)))

(assert (=> b!4626145 call!322698))

(declare-fun lt!1784249 () Unit!112145)

(assert (=> b!4626145 (= lt!1784249 lt!1784248)))

(assert (=> b!4626145 call!322696))

(declare-fun lt!1784234 () Unit!112145)

(declare-fun Unit!112233 () Unit!112145)

(assert (=> b!4626145 (= lt!1784234 Unit!112233)))

(declare-fun b!4626146 () Bool)

(assert (=> b!4626146 (= e!2885722 (invariantList!1206 (toList!4981 lt!1784243)))))

(declare-fun b!4626147 () Bool)

(declare-fun res!1940048 () Bool)

(assert (=> b!4626147 (=> (not res!1940048) (not e!2885722))))

(assert (=> b!4626147 (= res!1940048 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192279))))

(assert (= (and d!1457294 c!791880) b!4626145))

(assert (= (and d!1457294 (not c!791880)) b!4626143))

(assert (= (and b!4626143 res!1940049) b!4626144))

(assert (= (or b!4626145 b!4626143) bm!322692))

(assert (= (or b!4626145 b!4626143) bm!322693))

(assert (= (or b!4626145 b!4626143) bm!322691))

(assert (= (and d!1457294 res!1940047) b!4626147))

(assert (= (and b!4626147 res!1940048) b!4626146))

(assert (=> bm!322692 m!5468479))

(declare-fun m!5468653 () Bool)

(assert (=> bm!322693 m!5468653))

(declare-fun m!5468655 () Bool)

(assert (=> d!1457294 m!5468655))

(declare-fun m!5468657 () Bool)

(assert (=> d!1457294 m!5468657))

(declare-fun m!5468659 () Bool)

(assert (=> bm!322691 m!5468659))

(declare-fun m!5468661 () Bool)

(assert (=> b!4626147 m!5468661))

(declare-fun m!5468663 () Bool)

(assert (=> b!4626143 m!5468663))

(declare-fun m!5468665 () Bool)

(assert (=> b!4626143 m!5468665))

(declare-fun m!5468667 () Bool)

(assert (=> b!4626143 m!5468667))

(assert (=> b!4626143 m!5468665))

(declare-fun m!5468669 () Bool)

(assert (=> b!4626143 m!5468669))

(declare-fun m!5468671 () Bool)

(assert (=> b!4626143 m!5468671))

(declare-fun m!5468673 () Bool)

(assert (=> b!4626143 m!5468673))

(declare-fun m!5468675 () Bool)

(assert (=> b!4626143 m!5468675))

(declare-fun m!5468677 () Bool)

(assert (=> b!4626143 m!5468677))

(assert (=> b!4626143 m!5468667))

(assert (=> b!4626143 m!5468671))

(declare-fun m!5468679 () Bool)

(assert (=> b!4626143 m!5468679))

(declare-fun m!5468681 () Bool)

(assert (=> b!4626143 m!5468681))

(assert (=> b!4626144 m!5468667))

(declare-fun m!5468683 () Bool)

(assert (=> b!4626146 m!5468683))

(assert (=> b!4625726 d!1457294))

(declare-fun d!1457296 () Bool)

(assert (=> d!1457296 (eq!823 (addToMapMapFromBucket!969 (Cons!51540 lt!1783678 lt!1783672) (ListMap!4286 Nil!51540)) (+!1874 (addToMapMapFromBucket!969 lt!1783672 (ListMap!4286 Nil!51540)) lt!1783678))))

(declare-fun lt!1784251 () Unit!112145)

(assert (=> d!1457296 (= lt!1784251 (choose!31330 lt!1783678 lt!1783672 (ListMap!4286 Nil!51540)))))

(assert (=> d!1457296 (noDuplicateKeys!1508 lt!1783672)))

(assert (=> d!1457296 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!74 lt!1783678 lt!1783672 (ListMap!4286 Nil!51540)) lt!1784251)))

(declare-fun bs!1023866 () Bool)

(assert (= bs!1023866 d!1457296))

(assert (=> bs!1023866 m!5467707))

(assert (=> bs!1023866 m!5467691))

(assert (=> bs!1023866 m!5467707))

(declare-fun m!5468685 () Bool)

(assert (=> bs!1023866 m!5468685))

(assert (=> bs!1023866 m!5467689))

(assert (=> bs!1023866 m!5467691))

(assert (=> bs!1023866 m!5467693))

(assert (=> bs!1023866 m!5467689))

(assert (=> bs!1023866 m!5468657))

(assert (=> b!4625726 d!1457296))

(declare-fun bs!1023867 () Bool)

(declare-fun b!4626150 () Bool)

(assert (= bs!1023867 (and b!4626150 d!1457094)))

(declare-fun lambda!192280 () Int)

(assert (=> bs!1023867 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192280 lambda!192220))))

(declare-fun bs!1023868 () Bool)

(assert (= bs!1023868 (and b!4626150 b!4625862)))

(assert (=> bs!1023868 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192280 lambda!192218))))

(declare-fun bs!1023869 () Bool)

(assert (= bs!1023869 (and b!4626150 b!4626138)))

(assert (=> bs!1023869 (= lambda!192280 lambda!192268)))

(declare-fun bs!1023870 () Bool)

(assert (= bs!1023870 (and b!4626150 b!4626136)))

(assert (=> bs!1023870 (= lambda!192280 lambda!192269)))

(declare-fun bs!1023871 () Bool)

(assert (= bs!1023871 (and b!4626150 b!4626143)))

(assert (=> bs!1023871 (= lambda!192280 lambda!192277)))

(declare-fun bs!1023872 () Bool)

(assert (= bs!1023872 (and b!4626150 b!4626103)))

(assert (=> bs!1023872 (= lambda!192280 lambda!192264)))

(declare-fun bs!1023873 () Bool)

(assert (= bs!1023873 (and b!4626150 d!1457256)))

(assert (=> bs!1023873 (= (= (ListMap!4286 Nil!51540) lt!1784170) (= lambda!192280 lambda!192267))))

(declare-fun bs!1023874 () Bool)

(assert (= bs!1023874 (and b!4626150 b!4626101)))

(assert (=> bs!1023874 (= lambda!192280 lambda!192265)))

(declare-fun bs!1023875 () Bool)

(assert (= bs!1023875 (and b!4626150 d!1457288)))

(assert (=> bs!1023875 (= (= (ListMap!4286 Nil!51540) lt!1784218) (= lambda!192280 lambda!192271))))

(declare-fun bs!1023876 () Bool)

(assert (= bs!1023876 (and b!4626150 b!4625864)))

(assert (=> bs!1023876 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192280 lambda!192217))))

(assert (=> bs!1023871 (= (= (ListMap!4286 Nil!51540) lt!1784239) (= lambda!192280 lambda!192278))))

(declare-fun bs!1023877 () Bool)

(assert (= bs!1023877 (and b!4626150 b!4626145)))

(assert (=> bs!1023877 (= lambda!192280 lambda!192276)))

(declare-fun bs!1023878 () Bool)

(assert (= bs!1023878 (and b!4626150 d!1457294)))

(assert (=> bs!1023878 (= (= (ListMap!4286 Nil!51540) lt!1784243) (= lambda!192280 lambda!192279))))

(declare-fun bs!1023879 () Bool)

(assert (= bs!1023879 (and b!4626150 d!1457190)))

(assert (=> bs!1023879 (not (= lambda!192280 lambda!192232))))

(assert (=> bs!1023870 (= (= (ListMap!4286 Nil!51540) lt!1784214) (= lambda!192280 lambda!192270))))

(declare-fun bs!1023880 () Bool)

(assert (= bs!1023880 (and b!4626150 d!1457150)))

(assert (=> bs!1023880 (not (= lambda!192280 lambda!192229))))

(assert (=> bs!1023868 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192280 lambda!192219))))

(assert (=> bs!1023874 (= (= (ListMap!4286 Nil!51540) lt!1784166) (= lambda!192280 lambda!192266))))

(assert (=> b!4626150 true))

(declare-fun bs!1023881 () Bool)

(declare-fun b!4626148 () Bool)

(assert (= bs!1023881 (and b!4626148 d!1457094)))

(declare-fun lambda!192281 () Int)

(assert (=> bs!1023881 (= (= (ListMap!4286 Nil!51540) lt!1783880) (= lambda!192281 lambda!192220))))

(declare-fun bs!1023882 () Bool)

(assert (= bs!1023882 (and b!4626148 b!4625862)))

(assert (=> bs!1023882 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192281 lambda!192218))))

(declare-fun bs!1023883 () Bool)

(assert (= bs!1023883 (and b!4626148 b!4626138)))

(assert (=> bs!1023883 (= lambda!192281 lambda!192268)))

(declare-fun bs!1023884 () Bool)

(assert (= bs!1023884 (and b!4626148 b!4626136)))

(assert (=> bs!1023884 (= lambda!192281 lambda!192269)))

(declare-fun bs!1023885 () Bool)

(assert (= bs!1023885 (and b!4626148 b!4626143)))

(assert (=> bs!1023885 (= lambda!192281 lambda!192277)))

(declare-fun bs!1023886 () Bool)

(assert (= bs!1023886 (and b!4626148 b!4626103)))

(assert (=> bs!1023886 (= lambda!192281 lambda!192264)))

(declare-fun bs!1023887 () Bool)

(assert (= bs!1023887 (and b!4626148 b!4626150)))

(assert (=> bs!1023887 (= lambda!192281 lambda!192280)))

(declare-fun bs!1023888 () Bool)

(assert (= bs!1023888 (and b!4626148 d!1457256)))

(assert (=> bs!1023888 (= (= (ListMap!4286 Nil!51540) lt!1784170) (= lambda!192281 lambda!192267))))

(declare-fun bs!1023889 () Bool)

(assert (= bs!1023889 (and b!4626148 b!4626101)))

(assert (=> bs!1023889 (= lambda!192281 lambda!192265)))

(declare-fun bs!1023890 () Bool)

(assert (= bs!1023890 (and b!4626148 d!1457288)))

(assert (=> bs!1023890 (= (= (ListMap!4286 Nil!51540) lt!1784218) (= lambda!192281 lambda!192271))))

(declare-fun bs!1023891 () Bool)

(assert (= bs!1023891 (and b!4626148 b!4625864)))

(assert (=> bs!1023891 (= (= (ListMap!4286 Nil!51540) lt!1783664) (= lambda!192281 lambda!192217))))

(assert (=> bs!1023885 (= (= (ListMap!4286 Nil!51540) lt!1784239) (= lambda!192281 lambda!192278))))

(declare-fun bs!1023892 () Bool)

(assert (= bs!1023892 (and b!4626148 b!4626145)))

(assert (=> bs!1023892 (= lambda!192281 lambda!192276)))

(declare-fun bs!1023893 () Bool)

(assert (= bs!1023893 (and b!4626148 d!1457294)))

(assert (=> bs!1023893 (= (= (ListMap!4286 Nil!51540) lt!1784243) (= lambda!192281 lambda!192279))))

(declare-fun bs!1023894 () Bool)

(assert (= bs!1023894 (and b!4626148 d!1457190)))

(assert (=> bs!1023894 (not (= lambda!192281 lambda!192232))))

(assert (=> bs!1023884 (= (= (ListMap!4286 Nil!51540) lt!1784214) (= lambda!192281 lambda!192270))))

(declare-fun bs!1023895 () Bool)

(assert (= bs!1023895 (and b!4626148 d!1457150)))

(assert (=> bs!1023895 (not (= lambda!192281 lambda!192229))))

(assert (=> bs!1023882 (= (= (ListMap!4286 Nil!51540) lt!1783876) (= lambda!192281 lambda!192219))))

(assert (=> bs!1023889 (= (= (ListMap!4286 Nil!51540) lt!1784166) (= lambda!192281 lambda!192266))))

(assert (=> b!4626148 true))

(declare-fun lambda!192282 () Int)

(declare-fun lt!1784261 () ListMap!4285)

(assert (=> bs!1023881 (= (= lt!1784261 lt!1783880) (= lambda!192282 lambda!192220))))

(assert (=> bs!1023882 (= (= lt!1784261 lt!1783664) (= lambda!192282 lambda!192218))))

(assert (=> bs!1023883 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192268))))

(assert (=> bs!1023884 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192269))))

(assert (=> bs!1023885 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192277))))

(assert (=> bs!1023886 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192264))))

(assert (=> bs!1023887 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192280))))

(assert (=> bs!1023888 (= (= lt!1784261 lt!1784170) (= lambda!192282 lambda!192267))))

(assert (=> bs!1023889 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192265))))

(assert (=> b!4626148 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192281))))

(assert (=> bs!1023890 (= (= lt!1784261 lt!1784218) (= lambda!192282 lambda!192271))))

(assert (=> bs!1023891 (= (= lt!1784261 lt!1783664) (= lambda!192282 lambda!192217))))

(assert (=> bs!1023885 (= (= lt!1784261 lt!1784239) (= lambda!192282 lambda!192278))))

(assert (=> bs!1023892 (= (= lt!1784261 (ListMap!4286 Nil!51540)) (= lambda!192282 lambda!192276))))

(assert (=> bs!1023893 (= (= lt!1784261 lt!1784243) (= lambda!192282 lambda!192279))))

(assert (=> bs!1023894 (not (= lambda!192282 lambda!192232))))

(assert (=> bs!1023884 (= (= lt!1784261 lt!1784214) (= lambda!192282 lambda!192270))))

(assert (=> bs!1023895 (not (= lambda!192282 lambda!192229))))

(assert (=> bs!1023882 (= (= lt!1784261 lt!1783876) (= lambda!192282 lambda!192219))))

(assert (=> bs!1023889 (= (= lt!1784261 lt!1784166) (= lambda!192282 lambda!192266))))

(assert (=> b!4626148 true))

(declare-fun bs!1023896 () Bool)

(declare-fun d!1457298 () Bool)

(assert (= bs!1023896 (and d!1457298 d!1457094)))

(declare-fun lt!1784265 () ListMap!4285)

(declare-fun lambda!192283 () Int)

(assert (=> bs!1023896 (= (= lt!1784265 lt!1783880) (= lambda!192283 lambda!192220))))

(declare-fun bs!1023897 () Bool)

(assert (= bs!1023897 (and d!1457298 b!4625862)))

(assert (=> bs!1023897 (= (= lt!1784265 lt!1783664) (= lambda!192283 lambda!192218))))

(declare-fun bs!1023898 () Bool)

(assert (= bs!1023898 (and d!1457298 b!4626138)))

(assert (=> bs!1023898 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192268))))

(declare-fun bs!1023899 () Bool)

(assert (= bs!1023899 (and d!1457298 b!4626143)))

(assert (=> bs!1023899 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192277))))

(declare-fun bs!1023900 () Bool)

(assert (= bs!1023900 (and d!1457298 b!4626103)))

(assert (=> bs!1023900 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192264))))

(declare-fun bs!1023901 () Bool)

(assert (= bs!1023901 (and d!1457298 b!4626150)))

(assert (=> bs!1023901 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192280))))

(declare-fun bs!1023902 () Bool)

(assert (= bs!1023902 (and d!1457298 d!1457256)))

(assert (=> bs!1023902 (= (= lt!1784265 lt!1784170) (= lambda!192283 lambda!192267))))

(declare-fun bs!1023903 () Bool)

(assert (= bs!1023903 (and d!1457298 b!4626101)))

(assert (=> bs!1023903 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192265))))

(declare-fun bs!1023904 () Bool)

(assert (= bs!1023904 (and d!1457298 b!4626148)))

(assert (=> bs!1023904 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192281))))

(declare-fun bs!1023905 () Bool)

(assert (= bs!1023905 (and d!1457298 d!1457288)))

(assert (=> bs!1023905 (= (= lt!1784265 lt!1784218) (= lambda!192283 lambda!192271))))

(declare-fun bs!1023906 () Bool)

(assert (= bs!1023906 (and d!1457298 b!4625864)))

(assert (=> bs!1023906 (= (= lt!1784265 lt!1783664) (= lambda!192283 lambda!192217))))

(assert (=> bs!1023899 (= (= lt!1784265 lt!1784239) (= lambda!192283 lambda!192278))))

(declare-fun bs!1023907 () Bool)

(assert (= bs!1023907 (and d!1457298 b!4626145)))

(assert (=> bs!1023907 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192276))))

(declare-fun bs!1023908 () Bool)

(assert (= bs!1023908 (and d!1457298 d!1457294)))

(assert (=> bs!1023908 (= (= lt!1784265 lt!1784243) (= lambda!192283 lambda!192279))))

(declare-fun bs!1023909 () Bool)

(assert (= bs!1023909 (and d!1457298 d!1457190)))

(assert (=> bs!1023909 (not (= lambda!192283 lambda!192232))))

(declare-fun bs!1023910 () Bool)

(assert (= bs!1023910 (and d!1457298 b!4626136)))

(assert (=> bs!1023910 (= (= lt!1784265 lt!1784214) (= lambda!192283 lambda!192270))))

(declare-fun bs!1023911 () Bool)

(assert (= bs!1023911 (and d!1457298 d!1457150)))

(assert (=> bs!1023911 (not (= lambda!192283 lambda!192229))))

(assert (=> bs!1023910 (= (= lt!1784265 (ListMap!4286 Nil!51540)) (= lambda!192283 lambda!192269))))

(assert (=> bs!1023904 (= (= lt!1784265 lt!1784261) (= lambda!192283 lambda!192282))))

(assert (=> bs!1023897 (= (= lt!1784265 lt!1783876) (= lambda!192283 lambda!192219))))

(assert (=> bs!1023903 (= (= lt!1784265 lt!1784166) (= lambda!192283 lambda!192266))))

(assert (=> d!1457298 true))

(declare-fun e!2885725 () Bool)

(assert (=> d!1457298 e!2885725))

(declare-fun res!1940050 () Bool)

(assert (=> d!1457298 (=> (not res!1940050) (not e!2885725))))

(assert (=> d!1457298 (= res!1940050 (forall!10828 (Cons!51540 lt!1783661 lt!1783676) lambda!192283))))

(declare-fun e!2885723 () ListMap!4285)

(assert (=> d!1457298 (= lt!1784265 e!2885723)))

(declare-fun c!791881 () Bool)

(assert (=> d!1457298 (= c!791881 ((_ is Nil!51540) (Cons!51540 lt!1783661 lt!1783676)))))

(assert (=> d!1457298 (noDuplicateKeys!1508 (Cons!51540 lt!1783661 lt!1783676))))

(assert (=> d!1457298 (= (addToMapMapFromBucket!969 (Cons!51540 lt!1783661 lt!1783676) (ListMap!4286 Nil!51540)) lt!1784265)))

(assert (=> b!4626148 (= e!2885723 lt!1784261)))

(declare-fun lt!1784264 () ListMap!4285)

(assert (=> b!4626148 (= lt!1784264 (+!1874 (ListMap!4286 Nil!51540) (h!57592 (Cons!51540 lt!1783661 lt!1783676))))))

(assert (=> b!4626148 (= lt!1784261 (addToMapMapFromBucket!969 (t!358698 (Cons!51540 lt!1783661 lt!1783676)) (+!1874 (ListMap!4286 Nil!51540) (h!57592 (Cons!51540 lt!1783661 lt!1783676)))))))

(declare-fun lt!1784272 () Unit!112145)

(declare-fun call!322700 () Unit!112145)

(assert (=> b!4626148 (= lt!1784272 call!322700)))

(assert (=> b!4626148 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192281)))

(declare-fun lt!1784262 () Unit!112145)

(assert (=> b!4626148 (= lt!1784262 lt!1784272)))

(assert (=> b!4626148 (forall!10828 (toList!4981 lt!1784264) lambda!192282)))

(declare-fun lt!1784254 () Unit!112145)

(declare-fun Unit!112238 () Unit!112145)

(assert (=> b!4626148 (= lt!1784254 Unit!112238)))

(declare-fun call!322701 () Bool)

(assert (=> b!4626148 call!322701))

(declare-fun lt!1784267 () Unit!112145)

(declare-fun Unit!112239 () Unit!112145)

(assert (=> b!4626148 (= lt!1784267 Unit!112239)))

(declare-fun lt!1784263 () Unit!112145)

(declare-fun Unit!112240 () Unit!112145)

(assert (=> b!4626148 (= lt!1784263 Unit!112240)))

(declare-fun lt!1784269 () Unit!112145)

(assert (=> b!4626148 (= lt!1784269 (forallContained!3056 (toList!4981 lt!1784264) lambda!192282 (h!57592 (Cons!51540 lt!1783661 lt!1783676))))))

(assert (=> b!4626148 (contains!14587 lt!1784264 (_1!29533 (h!57592 (Cons!51540 lt!1783661 lt!1783676))))))

(declare-fun lt!1784268 () Unit!112145)

(declare-fun Unit!112242 () Unit!112145)

(assert (=> b!4626148 (= lt!1784268 Unit!112242)))

(assert (=> b!4626148 (contains!14587 lt!1784261 (_1!29533 (h!57592 (Cons!51540 lt!1783661 lt!1783676))))))

(declare-fun lt!1784253 () Unit!112145)

(declare-fun Unit!112244 () Unit!112145)

(assert (=> b!4626148 (= lt!1784253 Unit!112244)))

(assert (=> b!4626148 (forall!10828 (Cons!51540 lt!1783661 lt!1783676) lambda!192282)))

(declare-fun lt!1784260 () Unit!112145)

(declare-fun Unit!112246 () Unit!112145)

(assert (=> b!4626148 (= lt!1784260 Unit!112246)))

(assert (=> b!4626148 (forall!10828 (toList!4981 lt!1784264) lambda!192282)))

(declare-fun lt!1784259 () Unit!112145)

(declare-fun Unit!112248 () Unit!112145)

(assert (=> b!4626148 (= lt!1784259 Unit!112248)))

(declare-fun lt!1784255 () Unit!112145)

(declare-fun Unit!112249 () Unit!112145)

(assert (=> b!4626148 (= lt!1784255 Unit!112249)))

(declare-fun lt!1784257 () Unit!112145)

(assert (=> b!4626148 (= lt!1784257 (addForallContainsKeyThenBeforeAdding!507 (ListMap!4286 Nil!51540) lt!1784261 (_1!29533 (h!57592 (Cons!51540 lt!1783661 lt!1783676))) (_2!29533 (h!57592 (Cons!51540 lt!1783661 lt!1783676)))))))

(assert (=> b!4626148 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192282)))

(declare-fun lt!1784258 () Unit!112145)

(assert (=> b!4626148 (= lt!1784258 lt!1784257)))

(assert (=> b!4626148 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192282)))

(declare-fun lt!1784252 () Unit!112145)

(declare-fun Unit!112251 () Unit!112145)

(assert (=> b!4626148 (= lt!1784252 Unit!112251)))

(declare-fun res!1940052 () Bool)

(declare-fun call!322699 () Bool)

(assert (=> b!4626148 (= res!1940052 call!322699)))

(declare-fun e!2885724 () Bool)

(assert (=> b!4626148 (=> (not res!1940052) (not e!2885724))))

(assert (=> b!4626148 e!2885724))

(declare-fun lt!1784266 () Unit!112145)

(declare-fun Unit!112253 () Unit!112145)

(assert (=> b!4626148 (= lt!1784266 Unit!112253)))

(declare-fun bm!322694 () Bool)

(assert (=> bm!322694 (= call!322699 (forall!10828 (ite c!791881 (toList!4981 (ListMap!4286 Nil!51540)) (Cons!51540 lt!1783661 lt!1783676)) (ite c!791881 lambda!192280 lambda!192282)))))

(declare-fun b!4626149 () Bool)

(assert (=> b!4626149 (= e!2885724 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192282))))

(declare-fun bm!322695 () Bool)

(assert (=> bm!322695 (= call!322700 (lemmaContainsAllItsOwnKeys!508 (ListMap!4286 Nil!51540)))))

(declare-fun bm!322696 () Bool)

(assert (=> bm!322696 (= call!322701 (forall!10828 (ite c!791881 (toList!4981 (ListMap!4286 Nil!51540)) (t!358698 (Cons!51540 lt!1783661 lt!1783676))) (ite c!791881 lambda!192280 lambda!192282)))))

(assert (=> b!4626150 (= e!2885723 (ListMap!4286 Nil!51540))))

(declare-fun lt!1784270 () Unit!112145)

(assert (=> b!4626150 (= lt!1784270 call!322700)))

(assert (=> b!4626150 call!322701))

(declare-fun lt!1784271 () Unit!112145)

(assert (=> b!4626150 (= lt!1784271 lt!1784270)))

(assert (=> b!4626150 call!322699))

(declare-fun lt!1784256 () Unit!112145)

(declare-fun Unit!112255 () Unit!112145)

(assert (=> b!4626150 (= lt!1784256 Unit!112255)))

(declare-fun b!4626151 () Bool)

(assert (=> b!4626151 (= e!2885725 (invariantList!1206 (toList!4981 lt!1784265)))))

(declare-fun b!4626152 () Bool)

(declare-fun res!1940051 () Bool)

(assert (=> b!4626152 (=> (not res!1940051) (not e!2885725))))

(assert (=> b!4626152 (= res!1940051 (forall!10828 (toList!4981 (ListMap!4286 Nil!51540)) lambda!192283))))

(assert (= (and d!1457298 c!791881) b!4626150))

(assert (= (and d!1457298 (not c!791881)) b!4626148))

(assert (= (and b!4626148 res!1940052) b!4626149))

(assert (= (or b!4626150 b!4626148) bm!322695))

(assert (= (or b!4626150 b!4626148) bm!322696))

(assert (= (or b!4626150 b!4626148) bm!322694))

(assert (= (and d!1457298 res!1940050) b!4626152))

(assert (= (and b!4626152 res!1940051) b!4626151))

(assert (=> bm!322695 m!5468479))

(declare-fun m!5468687 () Bool)

(assert (=> bm!322696 m!5468687))

(declare-fun m!5468689 () Bool)

(assert (=> d!1457298 m!5468689))

(declare-fun m!5468691 () Bool)

(assert (=> d!1457298 m!5468691))

(declare-fun m!5468693 () Bool)

(assert (=> bm!322694 m!5468693))

(declare-fun m!5468695 () Bool)

(assert (=> b!4626152 m!5468695))

(declare-fun m!5468697 () Bool)

(assert (=> b!4626148 m!5468697))

(declare-fun m!5468699 () Bool)

(assert (=> b!4626148 m!5468699))

(declare-fun m!5468701 () Bool)

(assert (=> b!4626148 m!5468701))

(assert (=> b!4626148 m!5468699))

(declare-fun m!5468703 () Bool)

(assert (=> b!4626148 m!5468703))

(declare-fun m!5468705 () Bool)

(assert (=> b!4626148 m!5468705))

(declare-fun m!5468707 () Bool)

(assert (=> b!4626148 m!5468707))

(declare-fun m!5468709 () Bool)

(assert (=> b!4626148 m!5468709))

(declare-fun m!5468711 () Bool)

(assert (=> b!4626148 m!5468711))

(assert (=> b!4626148 m!5468701))

(assert (=> b!4626148 m!5468705))

(declare-fun m!5468713 () Bool)

(assert (=> b!4626148 m!5468713))

(declare-fun m!5468715 () Bool)

(assert (=> b!4626148 m!5468715))

(assert (=> b!4626149 m!5468701))

(declare-fun m!5468717 () Bool)

(assert (=> b!4626151 m!5468717))

(assert (=> b!4625726 d!1457298))

(declare-fun bs!1023912 () Bool)

(declare-fun d!1457300 () Bool)

(assert (= bs!1023912 (and d!1457300 d!1457292)))

(declare-fun lambda!192284 () Int)

(assert (=> bs!1023912 (= lambda!192284 lambda!192275)))

(declare-fun bs!1023913 () Bool)

(assert (= bs!1023913 (and d!1457300 d!1457214)))

(assert (=> bs!1023913 (= lambda!192284 lambda!192260)))

(declare-fun bs!1023914 () Bool)

(assert (= bs!1023914 (and d!1457300 d!1457148)))

(assert (=> bs!1023914 (= lambda!192284 lambda!192226)))

(declare-fun bs!1023915 () Bool)

(assert (= bs!1023915 (and d!1457300 d!1457092)))

(assert (=> bs!1023915 (= lambda!192284 lambda!192141)))

(declare-fun bs!1023916 () Bool)

(assert (= bs!1023916 (and d!1457300 d!1457290)))

(assert (=> bs!1023916 (= lambda!192284 lambda!192272)))

(declare-fun bs!1023917 () Bool)

(assert (= bs!1023917 (and d!1457300 d!1457244)))

(assert (=> bs!1023917 (= lambda!192284 lambda!192263)))

(declare-fun bs!1023918 () Bool)

(assert (= bs!1023918 (and d!1457300 d!1457130)))

(assert (=> bs!1023918 (= lambda!192284 lambda!192221)))

(declare-fun bs!1023919 () Bool)

(assert (= bs!1023919 (and d!1457300 d!1457146)))

(assert (=> bs!1023919 (= lambda!192284 lambda!192225)))

(declare-fun bs!1023920 () Bool)

(assert (= bs!1023920 (and d!1457300 b!4625736)))

(assert (=> bs!1023920 (= lambda!192284 lambda!192138)))

(declare-fun lt!1784273 () ListMap!4285)

(assert (=> d!1457300 (invariantList!1206 (toList!4981 lt!1784273))))

(declare-fun e!2885726 () ListMap!4285)

(assert (=> d!1457300 (= lt!1784273 e!2885726)))

(declare-fun c!791882 () Bool)

(assert (=> d!1457300 (= c!791882 ((_ is Cons!51541) lt!1783670))))

(assert (=> d!1457300 (forall!10826 lt!1783670 lambda!192284)))

(assert (=> d!1457300 (= (extractMap!1564 lt!1783670) lt!1784273)))

(declare-fun b!4626153 () Bool)

(assert (=> b!4626153 (= e!2885726 (addToMapMapFromBucket!969 (_2!29534 (h!57593 lt!1783670)) (extractMap!1564 (t!358699 lt!1783670))))))

(declare-fun b!4626154 () Bool)

(assert (=> b!4626154 (= e!2885726 (ListMap!4286 Nil!51540))))

(assert (= (and d!1457300 c!791882) b!4626153))

(assert (= (and d!1457300 (not c!791882)) b!4626154))

(declare-fun m!5468719 () Bool)

(assert (=> d!1457300 m!5468719))

(declare-fun m!5468721 () Bool)

(assert (=> d!1457300 m!5468721))

(declare-fun m!5468723 () Bool)

(assert (=> b!4626153 m!5468723))

(assert (=> b!4626153 m!5468723))

(declare-fun m!5468725 () Bool)

(assert (=> b!4626153 m!5468725))

(assert (=> b!4625726 d!1457300))

(declare-fun b!4626156 () Bool)

(declare-fun e!2885728 () List!51664)

(declare-fun e!2885727 () List!51664)

(assert (=> b!4626156 (= e!2885728 e!2885727)))

(declare-fun c!791883 () Bool)

(assert (=> b!4626156 (= c!791883 ((_ is Cons!51540) lt!1783672))))

(declare-fun b!4626157 () Bool)

(assert (=> b!4626157 (= e!2885727 (Cons!51540 (h!57592 lt!1783672) (removePairForKey!1131 (t!358698 lt!1783672) key!4968)))))

(declare-fun b!4626155 () Bool)

(assert (=> b!4626155 (= e!2885728 (t!358698 lt!1783672))))

(declare-fun b!4626158 () Bool)

(assert (=> b!4626158 (= e!2885727 Nil!51540)))

(declare-fun d!1457302 () Bool)

(declare-fun lt!1784274 () List!51664)

(assert (=> d!1457302 (not (containsKey!2452 lt!1784274 key!4968))))

(assert (=> d!1457302 (= lt!1784274 e!2885728)))

(declare-fun c!791884 () Bool)

(assert (=> d!1457302 (= c!791884 (and ((_ is Cons!51540) lt!1783672) (= (_1!29533 (h!57592 lt!1783672)) key!4968)))))

(assert (=> d!1457302 (noDuplicateKeys!1508 lt!1783672)))

(assert (=> d!1457302 (= (removePairForKey!1131 lt!1783672 key!4968) lt!1784274)))

(assert (= (and d!1457302 c!791884) b!4626155))

(assert (= (and d!1457302 (not c!791884)) b!4626156))

(assert (= (and b!4626156 c!791883) b!4626157))

(assert (= (and b!4626156 (not c!791883)) b!4626158))

(declare-fun m!5468727 () Bool)

(assert (=> b!4626157 m!5468727))

(declare-fun m!5468729 () Bool)

(assert (=> d!1457302 m!5468729))

(assert (=> d!1457302 m!5468657))

(assert (=> b!4625733 d!1457302))

(declare-fun d!1457304 () Bool)

(assert (=> d!1457304 (= (tail!8143 newBucket!224) (t!358698 newBucket!224))))

(assert (=> b!4625733 d!1457304))

(declare-fun d!1457306 () Bool)

(assert (=> d!1457306 (= (tail!8143 oldBucket!40) (t!358698 oldBucket!40))))

(assert (=> b!4625733 d!1457306))

(declare-fun b!4626160 () Bool)

(declare-fun e!2885730 () List!51664)

(declare-fun e!2885729 () List!51664)

(assert (=> b!4626160 (= e!2885730 e!2885729)))

(declare-fun c!791885 () Bool)

(assert (=> b!4626160 (= c!791885 ((_ is Cons!51540) oldBucket!40))))

(declare-fun b!4626161 () Bool)

(assert (=> b!4626161 (= e!2885729 (Cons!51540 (h!57592 oldBucket!40) (removePairForKey!1131 (t!358698 oldBucket!40) key!4968)))))

(declare-fun b!4626159 () Bool)

(assert (=> b!4626159 (= e!2885730 (t!358698 oldBucket!40))))

(declare-fun b!4626162 () Bool)

(assert (=> b!4626162 (= e!2885729 Nil!51540)))

(declare-fun d!1457308 () Bool)

(declare-fun lt!1784275 () List!51664)

(assert (=> d!1457308 (not (containsKey!2452 lt!1784275 key!4968))))

(assert (=> d!1457308 (= lt!1784275 e!2885730)))

(declare-fun c!791886 () Bool)

(assert (=> d!1457308 (= c!791886 (and ((_ is Cons!51540) oldBucket!40) (= (_1!29533 (h!57592 oldBucket!40)) key!4968)))))

(assert (=> d!1457308 (noDuplicateKeys!1508 oldBucket!40)))

(assert (=> d!1457308 (= (removePairForKey!1131 oldBucket!40 key!4968) lt!1784275)))

(assert (= (and d!1457308 c!791886) b!4626159))

(assert (= (and d!1457308 (not c!791886)) b!4626160))

(assert (= (and b!4626160 c!791885) b!4626161))

(assert (= (and b!4626160 (not c!791885)) b!4626162))

(assert (=> b!4626161 m!5467635))

(declare-fun m!5468731 () Bool)

(assert (=> d!1457308 m!5468731))

(assert (=> d!1457308 m!5467631))

(assert (=> b!4625722 d!1457308))

(declare-fun d!1457310 () Bool)

(declare-fun hash!3509 (Hashable!5905 K!12920) (_ BitVec 64))

(assert (=> d!1457310 (= (hash!3505 hashF!1389 key!4968) (hash!3509 hashF!1389 key!4968))))

(declare-fun bs!1023921 () Bool)

(assert (= bs!1023921 d!1457310))

(declare-fun m!5468733 () Bool)

(assert (=> bs!1023921 m!5468733))

(assert (=> b!4625734 d!1457310))

(declare-fun tp!1342134 () Bool)

(declare-fun b!4626167 () Bool)

(declare-fun e!2885733 () Bool)

(assert (=> b!4626167 (= e!2885733 (and tp_is_empty!29325 tp_is_empty!29327 tp!1342134))))

(assert (=> b!4625721 (= tp!1342127 e!2885733)))

(assert (= (and b!4625721 ((_ is Cons!51540) (t!358698 oldBucket!40))) b!4626167))

(declare-fun tp!1342135 () Bool)

(declare-fun e!2885734 () Bool)

(declare-fun b!4626168 () Bool)

(assert (=> b!4626168 (= e!2885734 (and tp_is_empty!29325 tp_is_empty!29327 tp!1342135))))

(assert (=> b!4625723 (= tp!1342126 e!2885734)))

(assert (= (and b!4625723 ((_ is Cons!51540) (t!358698 newBucket!224))) b!4626168))

(declare-fun b_lambda!170753 () Bool)

(assert (= b_lambda!170745 (or b!4625736 b_lambda!170753)))

(declare-fun bs!1023922 () Bool)

(declare-fun d!1457312 () Bool)

(assert (= bs!1023922 (and d!1457312 b!4625736)))

(assert (=> bs!1023922 (= (dynLambda!21500 lambda!192138 lt!1783660) (noDuplicateKeys!1508 (_2!29534 lt!1783660)))))

(declare-fun m!5468735 () Bool)

(assert (=> bs!1023922 m!5468735))

(assert (=> d!1457246 d!1457312))

(declare-fun b_lambda!170755 () Bool)

(assert (= b_lambda!170743 (or b!4625736 b_lambda!170755)))

(declare-fun bs!1023923 () Bool)

(declare-fun d!1457314 () Bool)

(assert (= bs!1023923 (and d!1457314 b!4625736)))

(assert (=> bs!1023923 (= (dynLambda!21500 lambda!192138 (h!57593 lt!1783670)) (noDuplicateKeys!1508 (_2!29534 (h!57593 lt!1783670))))))

(declare-fun m!5468737 () Bool)

(assert (=> bs!1023923 m!5468737))

(assert (=> b!4625942 d!1457314))

(check-sat (not b!4626161) (not d!1457148) (not b!4626032) (not d!1457286) (not b!4626141) (not bm!322691) (not b!4626153) (not d!1457294) (not b!4626030) (not b!4625980) (not b!4626111) (not b!4625862) (not d!1457208) (not bm!322665) (not b_lambda!170755) (not bm!322693) (not b!4625866) (not b!4626136) (not b!4625744) (not b_lambda!170753) (not b!4626118) (not d!1457292) (not d!1457250) (not bm!322649) (not b!4625769) (not b!4626034) tp_is_empty!29327 (not d!1457146) (not b!4626146) (not b!4625890) (not b!4626139) (not b!4626119) (not b!4625776) (not bm!322667) (not b!4626081) (not d!1457194) (not b!4626144) (not d!1457088) (not b!4626097) (not b!4626104) (not d!1457296) (not b!4626086) (not b!4625865) (not b!4625768) (not d!1457154) (not d!1457246) (not d!1457174) (not d!1457310) (not d!1457206) (not b!4626112) (not b!4625921) (not bm!322696) (not d!1457308) (not b!4625863) (not b!4626167) (not b!4625741) (not bm!322666) (not d!1457204) (not b!4625743) tp_is_empty!29325 (not b!4626082) (not d!1457150) (not b!4626101) (not b!4625977) (not d!1457130) (not bm!322694) (not b!4626113) (not b!4625937) (not b!4625872) (not b!4625919) (not b!4626115) (not b!4626151) (not d!1457252) (not b!4625992) (not bm!322687) (not b!4626109) (not bm!322685) (not d!1457262) (not b!4626106) (not b!4625943) (not b!4625764) (not bm!322692) (not d!1457176) (not b!4626114) (not d!1457256) (not b!4626102) (not d!1457190) (not bs!1023922) (not b!4626002) (not b!4626080) (not b!4626157) (not b!4626096) (not d!1457156) (not b!4626108) (not d!1457092) (not d!1457214) (not d!1457136) (not d!1457244) (not d!1457300) (not b!4625910) (not d!1457094) (not d!1457302) (not bm!322688) (not d!1457290) (not b!4626148) (not b!4626043) (not b!4626149) (not b!4626140) (not b!4625742) (not d!1457298) (not b!4625766) (not d!1457172) (not b!4625978) (not b!4626107) (not b!4626168) (not bm!322689) (not b!4625985) (not d!1457192) (not bs!1023923) (not d!1457240) (not b!4626147) (not d!1457160) (not b!4625770) (not b!4626036) (not d!1457264) (not b!4626105) (not b!4625767) (not d!1457138) (not bm!322686) (not b!4625909) (not b!4626143) (not b!4625979) (not b!4626033) (not d!1457196) (not d!1457140) (not b!4626152) (not b!4625763) (not bm!322690) (not b!4625994) (not d!1457270) (not b!4626137) (not d!1457188) (not bm!322695) (not b!4626098) (not b!4626079) (not d!1457276) (not d!1457288) (not bm!322684) (not d!1457268))
(check-sat)
