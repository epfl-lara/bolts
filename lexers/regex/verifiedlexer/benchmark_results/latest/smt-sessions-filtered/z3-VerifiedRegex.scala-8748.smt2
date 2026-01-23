; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466820 () Bool)

(assert start!466820)

(declare-fun b!4641807 () Bool)

(declare-fun res!1949609 () Bool)

(declare-fun e!2895646 () Bool)

(assert (=> b!4641807 (=> (not res!1949609) (not e!2895646))))

(declare-datatypes ((Hashable!5995 0))(
  ( (HashableExt!5994 (__x!31698 Int)) )
))
(declare-fun hashF!1389 () Hashable!5995)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13145 0))(
  ( (K!13146 (val!18787 Int)) )
))
(declare-datatypes ((V!13391 0))(
  ( (V!13392 (val!18788 Int)) )
))
(declare-datatypes ((tuple2!52838 0))(
  ( (tuple2!52839 (_1!29713 K!13145) (_2!29713 V!13391)) )
))
(declare-datatypes ((List!51904 0))(
  ( (Nil!51780) (Cons!51780 (h!57892 tuple2!52838) (t!358990 List!51904)) )
))
(declare-fun newBucket!224 () List!51904)

(declare-fun allKeysSameHash!1452 (List!51904 (_ BitVec 64) Hashable!5995) Bool)

(assert (=> b!4641807 (= res!1949609 (allKeysSameHash!1452 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4641808 () Bool)

(declare-fun e!2895645 () Bool)

(declare-fun e!2895644 () Bool)

(assert (=> b!4641808 (= e!2895645 e!2895644)))

(declare-fun res!1949603 () Bool)

(assert (=> b!4641808 (=> res!1949603 e!2895644)))

(declare-fun lt!1805053 () List!51904)

(declare-fun oldBucket!40 () List!51904)

(declare-datatypes ((ListMap!4465 0))(
  ( (ListMap!4466 (toList!5141 List!51904)) )
))
(declare-fun lt!1805044 () ListMap!4465)

(declare-fun eq!889 (ListMap!4465 ListMap!4465) Bool)

(declare-fun +!1948 (ListMap!4465 tuple2!52838) ListMap!4465)

(declare-datatypes ((tuple2!52840 0))(
  ( (tuple2!52841 (_1!29714 (_ BitVec 64)) (_2!29714 List!51904)) )
))
(declare-datatypes ((List!51905 0))(
  ( (Nil!51781) (Cons!51781 (h!57893 tuple2!52840) (t!358991 List!51905)) )
))
(declare-fun extractMap!1654 (List!51905) ListMap!4465)

(assert (=> b!4641808 (= res!1949603 (not (eq!889 lt!1805044 (+!1948 (extractMap!1654 (Cons!51781 (tuple2!52841 hash!414 lt!1805053) Nil!51781)) (h!57892 oldBucket!40)))))))

(declare-fun lt!1805052 () tuple2!52838)

(declare-fun lt!1805056 () List!51904)

(declare-fun addToMapMapFromBucket!1057 (List!51904 ListMap!4465) ListMap!4465)

(assert (=> b!4641808 (eq!889 (addToMapMapFromBucket!1057 (Cons!51780 lt!1805052 lt!1805056) (ListMap!4466 Nil!51780)) (+!1948 (addToMapMapFromBucket!1057 lt!1805056 (ListMap!4466 Nil!51780)) lt!1805052))))

(declare-datatypes ((Unit!115505 0))(
  ( (Unit!115506) )
))
(declare-fun lt!1805049 () Unit!115505)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!140 (tuple2!52838 List!51904 ListMap!4465) Unit!115505)

(assert (=> b!4641808 (= lt!1805049 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!140 lt!1805052 lt!1805056 (ListMap!4466 Nil!51780)))))

(declare-fun head!9708 (List!51904) tuple2!52838)

(assert (=> b!4641808 (= lt!1805052 (head!9708 newBucket!224))))

(declare-fun lt!1805047 () tuple2!52838)

(assert (=> b!4641808 (eq!889 (addToMapMapFromBucket!1057 (Cons!51780 lt!1805047 lt!1805053) (ListMap!4466 Nil!51780)) (+!1948 (addToMapMapFromBucket!1057 lt!1805053 (ListMap!4466 Nil!51780)) lt!1805047))))

(declare-fun lt!1805046 () Unit!115505)

(assert (=> b!4641808 (= lt!1805046 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!140 lt!1805047 lt!1805053 (ListMap!4466 Nil!51780)))))

(assert (=> b!4641808 (= lt!1805047 (head!9708 oldBucket!40))))

(declare-fun lt!1805041 () ListMap!4465)

(declare-fun key!4968 () K!13145)

(declare-fun contains!14911 (ListMap!4465 K!13145) Bool)

(assert (=> b!4641808 (contains!14911 lt!1805041 key!4968)))

(declare-fun lt!1805055 () List!51905)

(assert (=> b!4641808 (= lt!1805041 (extractMap!1654 lt!1805055))))

(declare-fun lt!1805042 () Unit!115505)

(declare-datatypes ((ListLongMap!3711 0))(
  ( (ListLongMap!3712 (toList!5142 List!51905)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!376 (ListLongMap!3711 K!13145 Hashable!5995) Unit!115505)

(assert (=> b!4641808 (= lt!1805042 (lemmaListContainsThenExtractedMapContains!376 (ListLongMap!3712 lt!1805055) key!4968 hashF!1389))))

(assert (=> b!4641808 (= lt!1805055 (Cons!51781 (tuple2!52841 hash!414 (t!358990 oldBucket!40)) Nil!51781))))

(declare-fun b!4641809 () Bool)

(declare-fun e!2895641 () Bool)

(assert (=> b!4641809 (= e!2895646 (not e!2895641))))

(declare-fun res!1949602 () Bool)

(assert (=> b!4641809 (=> res!1949602 e!2895641)))

(get-info :version)

(assert (=> b!4641809 (= res!1949602 (or (and ((_ is Cons!51780) oldBucket!40) (= (_1!29713 (h!57892 oldBucket!40)) key!4968)) (not ((_ is Cons!51780) oldBucket!40)) (= (_1!29713 (h!57892 oldBucket!40)) key!4968)))))

(declare-fun e!2895642 () Bool)

(assert (=> b!4641809 e!2895642))

(declare-fun res!1949607 () Bool)

(assert (=> b!4641809 (=> (not res!1949607) (not e!2895642))))

(declare-fun lt!1805035 () ListMap!4465)

(assert (=> b!4641809 (= res!1949607 (= lt!1805044 (addToMapMapFromBucket!1057 oldBucket!40 lt!1805035)))))

(assert (=> b!4641809 (= lt!1805035 (extractMap!1654 Nil!51781))))

(assert (=> b!4641809 true))

(declare-fun b!4641810 () Bool)

(declare-fun res!1949597 () Bool)

(declare-fun e!2895650 () Bool)

(assert (=> b!4641810 (=> (not res!1949597) (not e!2895650))))

(declare-fun noDuplicateKeys!1598 (List!51904) Bool)

(assert (=> b!4641810 (= res!1949597 (noDuplicateKeys!1598 newBucket!224))))

(declare-fun e!2895643 () Bool)

(declare-fun b!4641811 () Bool)

(declare-fun tp_is_empty!29685 () Bool)

(declare-fun tp_is_empty!29687 () Bool)

(declare-fun tp!1342907 () Bool)

(assert (=> b!4641811 (= e!2895643 (and tp_is_empty!29685 tp_is_empty!29687 tp!1342907))))

(declare-fun b!4641812 () Bool)

(declare-fun e!2895648 () Bool)

(assert (=> b!4641812 (= e!2895644 e!2895648)))

(declare-fun res!1949600 () Bool)

(assert (=> b!4641812 (=> res!1949600 e!2895648)))

(declare-fun lt!1805043 () ListMap!4465)

(declare-fun lt!1805034 () ListMap!4465)

(assert (=> b!4641812 (= res!1949600 (not (eq!889 lt!1805034 (+!1948 lt!1805043 lt!1805052))))))

(assert (=> b!4641812 (= lt!1805043 (extractMap!1654 (Cons!51781 (tuple2!52841 hash!414 lt!1805056) Nil!51781)))))

(assert (=> b!4641812 (= lt!1805034 (extractMap!1654 (Cons!51781 (tuple2!52841 hash!414 newBucket!224) Nil!51781)))))

(declare-fun b!4641813 () Bool)

(assert (=> b!4641813 (= e!2895642 (= lt!1805035 (ListMap!4466 Nil!51780)))))

(declare-fun res!1949610 () Bool)

(assert (=> start!466820 (=> (not res!1949610) (not e!2895650))))

(assert (=> start!466820 (= res!1949610 (noDuplicateKeys!1598 oldBucket!40))))

(assert (=> start!466820 e!2895650))

(assert (=> start!466820 true))

(declare-fun e!2895647 () Bool)

(assert (=> start!466820 e!2895647))

(assert (=> start!466820 tp_is_empty!29685))

(assert (=> start!466820 e!2895643))

(declare-fun b!4641814 () Bool)

(declare-fun e!2895649 () Bool)

(assert (=> b!4641814 (= e!2895649 e!2895645)))

(declare-fun res!1949605 () Bool)

(assert (=> b!4641814 (=> res!1949605 e!2895645)))

(declare-fun removePairForKey!1221 (List!51904 K!13145) List!51904)

(assert (=> b!4641814 (= res!1949605 (not (= (removePairForKey!1221 lt!1805053 key!4968) lt!1805056)))))

(declare-fun tail!8221 (List!51904) List!51904)

(assert (=> b!4641814 (= lt!1805056 (tail!8221 newBucket!224))))

(assert (=> b!4641814 (= lt!1805053 (tail!8221 oldBucket!40))))

(declare-fun b!4641815 () Bool)

(declare-fun res!1949598 () Bool)

(assert (=> b!4641815 (=> (not res!1949598) (not e!2895650))))

(assert (=> b!4641815 (= res!1949598 (allKeysSameHash!1452 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4641816 () Bool)

(declare-fun e!2895640 () Bool)

(assert (=> b!4641816 (= e!2895650 e!2895640)))

(declare-fun res!1949601 () Bool)

(assert (=> b!4641816 (=> (not res!1949601) (not e!2895640))))

(assert (=> b!4641816 (= res!1949601 (contains!14911 lt!1805044 key!4968))))

(declare-fun lt!1805040 () List!51905)

(assert (=> b!4641816 (= lt!1805044 (extractMap!1654 lt!1805040))))

(assert (=> b!4641816 (= lt!1805040 (Cons!51781 (tuple2!52841 hash!414 oldBucket!40) Nil!51781))))

(declare-fun b!4641817 () Bool)

(declare-fun res!1949608 () Bool)

(assert (=> b!4641817 (=> res!1949608 e!2895645)))

(assert (=> b!4641817 (= res!1949608 (not (= (removePairForKey!1221 (t!358990 oldBucket!40) key!4968) lt!1805056)))))

(declare-fun lt!1805039 () ListMap!4465)

(declare-fun b!4641818 () Bool)

(declare-fun -!602 (ListMap!4465 K!13145) ListMap!4465)

(assert (=> b!4641818 (= e!2895648 (= (-!602 (+!1948 lt!1805041 (h!57892 oldBucket!40)) key!4968) (+!1948 lt!1805039 (h!57892 oldBucket!40))))))

(assert (=> b!4641818 (= (-!602 (+!1948 lt!1805041 (h!57892 oldBucket!40)) key!4968) (+!1948 lt!1805039 (h!57892 oldBucket!40)))))

(declare-fun lt!1805048 () Unit!115505)

(declare-fun addRemoveCommutativeForDiffKeys!47 (ListMap!4465 K!13145 V!13391 K!13145) Unit!115505)

(assert (=> b!4641818 (= lt!1805048 (addRemoveCommutativeForDiffKeys!47 lt!1805041 (_1!29713 (h!57892 oldBucket!40)) (_2!29713 (h!57892 oldBucket!40)) key!4968))))

(assert (=> b!4641818 (eq!889 lt!1805043 lt!1805039)))

(assert (=> b!4641818 (= lt!1805039 (-!602 lt!1805041 key!4968))))

(declare-fun lt!1805051 () Unit!115505)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!154 ((_ BitVec 64) List!51904 List!51904 K!13145 Hashable!5995) Unit!115505)

(assert (=> b!4641818 (= lt!1805051 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!154 hash!414 (t!358990 oldBucket!40) lt!1805056 key!4968 hashF!1389))))

(declare-fun b!4641819 () Bool)

(assert (=> b!4641819 (= e!2895641 e!2895649)))

(declare-fun res!1949599 () Bool)

(assert (=> b!4641819 (=> res!1949599 e!2895649)))

(declare-fun containsKey!2640 (List!51904 K!13145) Bool)

(assert (=> b!4641819 (= res!1949599 (not (containsKey!2640 (t!358990 oldBucket!40) key!4968)))))

(assert (=> b!4641819 (containsKey!2640 oldBucket!40 key!4968)))

(declare-fun lt!1805059 () Unit!115505)

(declare-fun lemmaGetPairDefinedThenContainsKey!112 (List!51904 K!13145 Hashable!5995) Unit!115505)

(assert (=> b!4641819 (= lt!1805059 (lemmaGetPairDefinedThenContainsKey!112 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1805037 () List!51904)

(declare-datatypes ((Option!11762 0))(
  ( (None!11761) (Some!11761 (v!45991 tuple2!52838)) )
))
(declare-fun isDefined!9027 (Option!11762) Bool)

(declare-fun getPair!358 (List!51904 K!13145) Option!11762)

(assert (=> b!4641819 (isDefined!9027 (getPair!358 lt!1805037 key!4968))))

(declare-fun lambda!196446 () Int)

(declare-fun lt!1805038 () Unit!115505)

(declare-fun lt!1805036 () tuple2!52840)

(declare-fun forallContained!3172 (List!51905 Int tuple2!52840) Unit!115505)

(assert (=> b!4641819 (= lt!1805038 (forallContained!3172 lt!1805040 lambda!196446 lt!1805036))))

(declare-fun contains!14912 (List!51905 tuple2!52840) Bool)

(assert (=> b!4641819 (contains!14912 lt!1805040 lt!1805036)))

(declare-fun lt!1805057 () (_ BitVec 64))

(assert (=> b!4641819 (= lt!1805036 (tuple2!52841 lt!1805057 lt!1805037))))

(declare-fun lt!1805050 () ListLongMap!3711)

(declare-fun lt!1805054 () Unit!115505)

(declare-fun lemmaGetValueImpliesTupleContained!163 (ListLongMap!3711 (_ BitVec 64) List!51904) Unit!115505)

(assert (=> b!4641819 (= lt!1805054 (lemmaGetValueImpliesTupleContained!163 lt!1805050 lt!1805057 lt!1805037))))

(declare-fun apply!12231 (ListLongMap!3711 (_ BitVec 64)) List!51904)

(assert (=> b!4641819 (= lt!1805037 (apply!12231 lt!1805050 lt!1805057))))

(declare-fun contains!14913 (ListLongMap!3711 (_ BitVec 64)) Bool)

(assert (=> b!4641819 (contains!14913 lt!1805050 lt!1805057)))

(declare-fun lt!1805045 () Unit!115505)

(declare-fun lemmaInGenMapThenLongMapContainsHash!564 (ListLongMap!3711 K!13145 Hashable!5995) Unit!115505)

(assert (=> b!4641819 (= lt!1805045 (lemmaInGenMapThenLongMapContainsHash!564 lt!1805050 key!4968 hashF!1389))))

(declare-fun lt!1805058 () Unit!115505)

(declare-fun lemmaInGenMapThenGetPairDefined!154 (ListLongMap!3711 K!13145 Hashable!5995) Unit!115505)

(assert (=> b!4641819 (= lt!1805058 (lemmaInGenMapThenGetPairDefined!154 lt!1805050 key!4968 hashF!1389))))

(assert (=> b!4641819 (= lt!1805050 (ListLongMap!3712 lt!1805040))))

(declare-fun b!4641820 () Bool)

(assert (=> b!4641820 (= e!2895640 e!2895646)))

(declare-fun res!1949606 () Bool)

(assert (=> b!4641820 (=> (not res!1949606) (not e!2895646))))

(assert (=> b!4641820 (= res!1949606 (= lt!1805057 hash!414))))

(declare-fun hash!3693 (Hashable!5995 K!13145) (_ BitVec 64))

(assert (=> b!4641820 (= lt!1805057 (hash!3693 hashF!1389 key!4968))))

(declare-fun tp!1342906 () Bool)

(declare-fun b!4641821 () Bool)

(assert (=> b!4641821 (= e!2895647 (and tp_is_empty!29685 tp_is_empty!29687 tp!1342906))))

(declare-fun b!4641822 () Bool)

(declare-fun res!1949604 () Bool)

(assert (=> b!4641822 (=> (not res!1949604) (not e!2895650))))

(assert (=> b!4641822 (= res!1949604 (= (removePairForKey!1221 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!466820 res!1949610) b!4641810))

(assert (= (and b!4641810 res!1949597) b!4641822))

(assert (= (and b!4641822 res!1949604) b!4641815))

(assert (= (and b!4641815 res!1949598) b!4641816))

(assert (= (and b!4641816 res!1949601) b!4641820))

(assert (= (and b!4641820 res!1949606) b!4641807))

(assert (= (and b!4641807 res!1949609) b!4641809))

(assert (= (and b!4641809 res!1949607) b!4641813))

(assert (= (and b!4641809 (not res!1949602)) b!4641819))

(assert (= (and b!4641819 (not res!1949599)) b!4641814))

(assert (= (and b!4641814 (not res!1949605)) b!4641817))

(assert (= (and b!4641817 (not res!1949608)) b!4641808))

(assert (= (and b!4641808 (not res!1949603)) b!4641812))

(assert (= (and b!4641812 (not res!1949600)) b!4641818))

(assert (= (and start!466820 ((_ is Cons!51780) oldBucket!40)) b!4641821))

(assert (= (and start!466820 ((_ is Cons!51780) newBucket!224)) b!4641811))

(declare-fun m!5502575 () Bool)

(assert (=> b!4641816 m!5502575))

(declare-fun m!5502577 () Bool)

(assert (=> b!4641816 m!5502577))

(declare-fun m!5502579 () Bool)

(assert (=> b!4641810 m!5502579))

(declare-fun m!5502581 () Bool)

(assert (=> b!4641822 m!5502581))

(declare-fun m!5502583 () Bool)

(assert (=> start!466820 m!5502583))

(declare-fun m!5502585 () Bool)

(assert (=> b!4641818 m!5502585))

(declare-fun m!5502587 () Bool)

(assert (=> b!4641818 m!5502587))

(declare-fun m!5502589 () Bool)

(assert (=> b!4641818 m!5502589))

(declare-fun m!5502591 () Bool)

(assert (=> b!4641818 m!5502591))

(assert (=> b!4641818 m!5502585))

(declare-fun m!5502593 () Bool)

(assert (=> b!4641818 m!5502593))

(declare-fun m!5502595 () Bool)

(assert (=> b!4641818 m!5502595))

(declare-fun m!5502597 () Bool)

(assert (=> b!4641818 m!5502597))

(declare-fun m!5502599 () Bool)

(assert (=> b!4641812 m!5502599))

(assert (=> b!4641812 m!5502599))

(declare-fun m!5502601 () Bool)

(assert (=> b!4641812 m!5502601))

(declare-fun m!5502603 () Bool)

(assert (=> b!4641812 m!5502603))

(declare-fun m!5502605 () Bool)

(assert (=> b!4641812 m!5502605))

(declare-fun m!5502607 () Bool)

(assert (=> b!4641815 m!5502607))

(declare-fun m!5502609 () Bool)

(assert (=> b!4641807 m!5502609))

(declare-fun m!5502611 () Bool)

(assert (=> b!4641808 m!5502611))

(declare-fun m!5502613 () Bool)

(assert (=> b!4641808 m!5502613))

(declare-fun m!5502615 () Bool)

(assert (=> b!4641808 m!5502615))

(declare-fun m!5502617 () Bool)

(assert (=> b!4641808 m!5502617))

(declare-fun m!5502619 () Bool)

(assert (=> b!4641808 m!5502619))

(declare-fun m!5502621 () Bool)

(assert (=> b!4641808 m!5502621))

(assert (=> b!4641808 m!5502617))

(declare-fun m!5502623 () Bool)

(assert (=> b!4641808 m!5502623))

(assert (=> b!4641808 m!5502611))

(declare-fun m!5502625 () Bool)

(assert (=> b!4641808 m!5502625))

(assert (=> b!4641808 m!5502625))

(declare-fun m!5502627 () Bool)

(assert (=> b!4641808 m!5502627))

(declare-fun m!5502629 () Bool)

(assert (=> b!4641808 m!5502629))

(declare-fun m!5502631 () Bool)

(assert (=> b!4641808 m!5502631))

(assert (=> b!4641808 m!5502629))

(assert (=> b!4641808 m!5502619))

(declare-fun m!5502633 () Bool)

(assert (=> b!4641808 m!5502633))

(declare-fun m!5502635 () Bool)

(assert (=> b!4641808 m!5502635))

(declare-fun m!5502637 () Bool)

(assert (=> b!4641808 m!5502637))

(declare-fun m!5502639 () Bool)

(assert (=> b!4641808 m!5502639))

(assert (=> b!4641808 m!5502613))

(declare-fun m!5502641 () Bool)

(assert (=> b!4641808 m!5502641))

(declare-fun m!5502643 () Bool)

(assert (=> b!4641808 m!5502643))

(assert (=> b!4641808 m!5502615))

(assert (=> b!4641808 m!5502627))

(declare-fun m!5502645 () Bool)

(assert (=> b!4641808 m!5502645))

(declare-fun m!5502647 () Bool)

(assert (=> b!4641819 m!5502647))

(declare-fun m!5502649 () Bool)

(assert (=> b!4641819 m!5502649))

(declare-fun m!5502651 () Bool)

(assert (=> b!4641819 m!5502651))

(declare-fun m!5502653 () Bool)

(assert (=> b!4641819 m!5502653))

(declare-fun m!5502655 () Bool)

(assert (=> b!4641819 m!5502655))

(declare-fun m!5502657 () Bool)

(assert (=> b!4641819 m!5502657))

(declare-fun m!5502659 () Bool)

(assert (=> b!4641819 m!5502659))

(declare-fun m!5502661 () Bool)

(assert (=> b!4641819 m!5502661))

(assert (=> b!4641819 m!5502659))

(declare-fun m!5502663 () Bool)

(assert (=> b!4641819 m!5502663))

(declare-fun m!5502665 () Bool)

(assert (=> b!4641819 m!5502665))

(declare-fun m!5502667 () Bool)

(assert (=> b!4641819 m!5502667))

(declare-fun m!5502669 () Bool)

(assert (=> b!4641819 m!5502669))

(declare-fun m!5502671 () Bool)

(assert (=> b!4641814 m!5502671))

(declare-fun m!5502673 () Bool)

(assert (=> b!4641814 m!5502673))

(declare-fun m!5502675 () Bool)

(assert (=> b!4641814 m!5502675))

(declare-fun m!5502677 () Bool)

(assert (=> b!4641809 m!5502677))

(declare-fun m!5502679 () Bool)

(assert (=> b!4641809 m!5502679))

(declare-fun m!5502681 () Bool)

(assert (=> b!4641820 m!5502681))

(declare-fun m!5502683 () Bool)

(assert (=> b!4641817 m!5502683))

(check-sat (not b!4641821) (not b!4641816) (not b!4641810) (not b!4641814) tp_is_empty!29685 (not b!4641811) (not b!4641818) (not b!4641817) (not b!4641812) (not b!4641820) (not b!4641807) (not b!4641808) (not b!4641822) (not b!4641819) (not b!4641809) (not start!466820) (not b!4641815) tp_is_empty!29687)
(check-sat)
