; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466620 () Bool)

(assert start!466620)

(declare-fun b!4640827 () Bool)

(declare-fun res!1949053 () Bool)

(declare-fun e!2895022 () Bool)

(assert (=> b!4640827 (=> (not res!1949053) (not e!2895022))))

(declare-datatypes ((Hashable!5991 0))(
  ( (HashableExt!5990 (__x!31694 Int)) )
))
(declare-fun hashF!1389 () Hashable!5991)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13135 0))(
  ( (K!13136 (val!18779 Int)) )
))
(declare-datatypes ((V!13381 0))(
  ( (V!13382 (val!18780 Int)) )
))
(declare-datatypes ((tuple2!52822 0))(
  ( (tuple2!52823 (_1!29705 K!13135) (_2!29705 V!13381)) )
))
(declare-datatypes ((List!51892 0))(
  ( (Nil!51768) (Cons!51768 (h!57876 tuple2!52822) (t!358974 List!51892)) )
))
(declare-fun newBucket!224 () List!51892)

(declare-fun allKeysSameHash!1448 (List!51892 (_ BitVec 64) Hashable!5991) Bool)

(assert (=> b!4640827 (= res!1949053 (allKeysSameHash!1448 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4640828 () Bool)

(declare-fun e!2895029 () Bool)

(declare-datatypes ((ListMap!4457 0))(
  ( (ListMap!4458 (toList!5133 List!51892)) )
))
(declare-fun lt!1803676 () ListMap!4457)

(assert (=> b!4640828 (= e!2895029 (= lt!1803676 (ListMap!4458 Nil!51768)))))

(declare-fun b!4640829 () Bool)

(declare-fun res!1949063 () Bool)

(declare-fun e!2895025 () Bool)

(assert (=> b!4640829 (=> res!1949063 e!2895025)))

(declare-fun oldBucket!40 () List!51892)

(declare-fun lt!1803669 () List!51892)

(declare-fun key!4968 () K!13135)

(declare-fun removePairForKey!1217 (List!51892 K!13135) List!51892)

(assert (=> b!4640829 (= res!1949063 (not (= (removePairForKey!1217 (t!358974 oldBucket!40) key!4968) lt!1803669)))))

(declare-fun b!4640830 () Bool)

(declare-fun res!1949057 () Bool)

(declare-fun e!2895028 () Bool)

(assert (=> b!4640830 (=> (not res!1949057) (not e!2895028))))

(assert (=> b!4640830 (= res!1949057 (allKeysSameHash!1448 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4640831 () Bool)

(declare-fun e!2895024 () Bool)

(assert (=> b!4640831 (= e!2895028 e!2895024)))

(declare-fun res!1949054 () Bool)

(assert (=> b!4640831 (=> (not res!1949054) (not e!2895024))))

(declare-fun lt!1803685 () ListMap!4457)

(declare-fun contains!14891 (ListMap!4457 K!13135) Bool)

(assert (=> b!4640831 (= res!1949054 (contains!14891 lt!1803685 key!4968))))

(declare-datatypes ((tuple2!52824 0))(
  ( (tuple2!52825 (_1!29706 (_ BitVec 64)) (_2!29706 List!51892)) )
))
(declare-datatypes ((List!51893 0))(
  ( (Nil!51769) (Cons!51769 (h!57877 tuple2!52824) (t!358975 List!51893)) )
))
(declare-fun lt!1803684 () List!51893)

(declare-fun extractMap!1650 (List!51893) ListMap!4457)

(assert (=> b!4640831 (= lt!1803685 (extractMap!1650 lt!1803684))))

(assert (=> b!4640831 (= lt!1803684 (Cons!51769 (tuple2!52825 hash!414 oldBucket!40) Nil!51769))))

(declare-fun tp_is_empty!29671 () Bool)

(declare-fun tp!1342867 () Bool)

(declare-fun tp_is_empty!29669 () Bool)

(declare-fun b!4640832 () Bool)

(declare-fun e!2895030 () Bool)

(assert (=> b!4640832 (= e!2895030 (and tp_is_empty!29669 tp_is_empty!29671 tp!1342867))))

(declare-fun b!4640833 () Bool)

(declare-fun e!2895023 () Bool)

(assert (=> b!4640833 (= e!2895023 e!2895025)))

(declare-fun res!1949056 () Bool)

(assert (=> b!4640833 (=> res!1949056 e!2895025)))

(declare-fun lt!1803677 () List!51892)

(assert (=> b!4640833 (= res!1949056 (not (= (removePairForKey!1217 lt!1803677 key!4968) lt!1803669)))))

(declare-fun tail!8217 (List!51892) List!51892)

(assert (=> b!4640833 (= lt!1803669 (tail!8217 newBucket!224))))

(assert (=> b!4640833 (= lt!1803677 (tail!8217 oldBucket!40))))

(declare-fun b!4640835 () Bool)

(assert (=> b!4640835 (= e!2895024 e!2895022)))

(declare-fun res!1949062 () Bool)

(assert (=> b!4640835 (=> (not res!1949062) (not e!2895022))))

(declare-fun lt!1803671 () (_ BitVec 64))

(assert (=> b!4640835 (= res!1949062 (= lt!1803671 hash!414))))

(declare-fun hash!3685 (Hashable!5991 K!13135) (_ BitVec 64))

(assert (=> b!4640835 (= lt!1803671 (hash!3685 hashF!1389 key!4968))))

(declare-fun b!4640836 () Bool)

(declare-fun e!2895026 () Bool)

(assert (=> b!4640836 (= e!2895022 (not e!2895026))))

(declare-fun res!1949064 () Bool)

(assert (=> b!4640836 (=> res!1949064 e!2895026)))

(get-info :version)

(assert (=> b!4640836 (= res!1949064 (or (and ((_ is Cons!51768) oldBucket!40) (= (_1!29705 (h!57876 oldBucket!40)) key!4968)) (not ((_ is Cons!51768) oldBucket!40)) (= (_1!29705 (h!57876 oldBucket!40)) key!4968)))))

(assert (=> b!4640836 e!2895029))

(declare-fun res!1949060 () Bool)

(assert (=> b!4640836 (=> (not res!1949060) (not e!2895029))))

(declare-fun addToMapMapFromBucket!1053 (List!51892 ListMap!4457) ListMap!4457)

(assert (=> b!4640836 (= res!1949060 (= lt!1803685 (addToMapMapFromBucket!1053 oldBucket!40 lt!1803676)))))

(assert (=> b!4640836 (= lt!1803676 (extractMap!1650 Nil!51769))))

(assert (=> b!4640836 true))

(declare-fun b!4640837 () Bool)

(declare-fun res!1949058 () Bool)

(assert (=> b!4640837 (=> (not res!1949058) (not e!2895028))))

(declare-fun noDuplicateKeys!1594 (List!51892) Bool)

(assert (=> b!4640837 (= res!1949058 (noDuplicateKeys!1594 newBucket!224))))

(declare-fun b!4640838 () Bool)

(declare-fun eq!885 (ListMap!4457 ListMap!4457) Bool)

(declare-fun +!1944 (ListMap!4457 tuple2!52822) ListMap!4457)

(assert (=> b!4640838 (= e!2895025 (eq!885 lt!1803685 (+!1944 (extractMap!1650 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)) (h!57876 oldBucket!40))))))

(declare-fun lt!1803686 () tuple2!52822)

(assert (=> b!4640838 (eq!885 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803686 lt!1803669) (ListMap!4458 Nil!51768)) (+!1944 (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768)) lt!1803686))))

(declare-datatypes ((Unit!115257 0))(
  ( (Unit!115258) )
))
(declare-fun lt!1803680 () Unit!115257)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!136 (tuple2!52822 List!51892 ListMap!4457) Unit!115257)

(assert (=> b!4640838 (= lt!1803680 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!136 lt!1803686 lt!1803669 (ListMap!4458 Nil!51768)))))

(declare-fun head!9704 (List!51892) tuple2!52822)

(assert (=> b!4640838 (= lt!1803686 (head!9704 newBucket!224))))

(declare-fun lt!1803682 () tuple2!52822)

(assert (=> b!4640838 (eq!885 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803682 lt!1803677) (ListMap!4458 Nil!51768)) (+!1944 (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768)) lt!1803682))))

(declare-fun lt!1803673 () Unit!115257)

(assert (=> b!4640838 (= lt!1803673 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!136 lt!1803682 lt!1803677 (ListMap!4458 Nil!51768)))))

(assert (=> b!4640838 (= lt!1803682 (head!9704 oldBucket!40))))

(declare-fun lt!1803683 () List!51893)

(assert (=> b!4640838 (contains!14891 (extractMap!1650 lt!1803683) key!4968)))

(declare-fun lt!1803668 () Unit!115257)

(declare-datatypes ((ListLongMap!3703 0))(
  ( (ListLongMap!3704 (toList!5134 List!51893)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!372 (ListLongMap!3703 K!13135 Hashable!5991) Unit!115257)

(assert (=> b!4640838 (= lt!1803668 (lemmaListContainsThenExtractedMapContains!372 (ListLongMap!3704 lt!1803683) key!4968 hashF!1389))))

(assert (=> b!4640838 (= lt!1803683 (Cons!51769 (tuple2!52825 hash!414 (t!358974 oldBucket!40)) Nil!51769))))

(declare-fun b!4640839 () Bool)

(declare-fun res!1949055 () Bool)

(assert (=> b!4640839 (=> (not res!1949055) (not e!2895028))))

(assert (=> b!4640839 (= res!1949055 (= (removePairForKey!1217 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4640840 () Bool)

(assert (=> b!4640840 (= e!2895026 e!2895023)))

(declare-fun res!1949061 () Bool)

(assert (=> b!4640840 (=> res!1949061 e!2895023)))

(declare-fun containsKey!2628 (List!51892 K!13135) Bool)

(assert (=> b!4640840 (= res!1949061 (not (containsKey!2628 (t!358974 oldBucket!40) key!4968)))))

(assert (=> b!4640840 (containsKey!2628 oldBucket!40 key!4968)))

(declare-fun lt!1803672 () Unit!115257)

(declare-fun lemmaGetPairDefinedThenContainsKey!108 (List!51892 K!13135 Hashable!5991) Unit!115257)

(assert (=> b!4640840 (= lt!1803672 (lemmaGetPairDefinedThenContainsKey!108 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1803679 () List!51892)

(declare-datatypes ((Option!11750 0))(
  ( (None!11749) (Some!11749 (v!45971 tuple2!52822)) )
))
(declare-fun isDefined!9015 (Option!11750) Bool)

(declare-fun getPair!354 (List!51892 K!13135) Option!11750)

(assert (=> b!4640840 (isDefined!9015 (getPair!354 lt!1803679 key!4968))))

(declare-fun lt!1803675 () Unit!115257)

(declare-fun lt!1803678 () tuple2!52824)

(declare-fun lambda!196146 () Int)

(declare-fun forallContained!3164 (List!51893 Int tuple2!52824) Unit!115257)

(assert (=> b!4640840 (= lt!1803675 (forallContained!3164 lt!1803684 lambda!196146 lt!1803678))))

(declare-fun contains!14892 (List!51893 tuple2!52824) Bool)

(assert (=> b!4640840 (contains!14892 lt!1803684 lt!1803678)))

(assert (=> b!4640840 (= lt!1803678 (tuple2!52825 lt!1803671 lt!1803679))))

(declare-fun lt!1803687 () Unit!115257)

(declare-fun lt!1803670 () ListLongMap!3703)

(declare-fun lemmaGetValueImpliesTupleContained!159 (ListLongMap!3703 (_ BitVec 64) List!51892) Unit!115257)

(assert (=> b!4640840 (= lt!1803687 (lemmaGetValueImpliesTupleContained!159 lt!1803670 lt!1803671 lt!1803679))))

(declare-fun apply!12227 (ListLongMap!3703 (_ BitVec 64)) List!51892)

(assert (=> b!4640840 (= lt!1803679 (apply!12227 lt!1803670 lt!1803671))))

(declare-fun contains!14893 (ListLongMap!3703 (_ BitVec 64)) Bool)

(assert (=> b!4640840 (contains!14893 lt!1803670 lt!1803671)))

(declare-fun lt!1803681 () Unit!115257)

(declare-fun lemmaInGenMapThenLongMapContainsHash!560 (ListLongMap!3703 K!13135 Hashable!5991) Unit!115257)

(assert (=> b!4640840 (= lt!1803681 (lemmaInGenMapThenLongMapContainsHash!560 lt!1803670 key!4968 hashF!1389))))

(declare-fun lt!1803674 () Unit!115257)

(declare-fun lemmaInGenMapThenGetPairDefined!150 (ListLongMap!3703 K!13135 Hashable!5991) Unit!115257)

(assert (=> b!4640840 (= lt!1803674 (lemmaInGenMapThenGetPairDefined!150 lt!1803670 key!4968 hashF!1389))))

(assert (=> b!4640840 (= lt!1803670 (ListLongMap!3704 lt!1803684))))

(declare-fun e!2895027 () Bool)

(declare-fun b!4640834 () Bool)

(declare-fun tp!1342866 () Bool)

(assert (=> b!4640834 (= e!2895027 (and tp_is_empty!29669 tp_is_empty!29671 tp!1342866))))

(declare-fun res!1949059 () Bool)

(assert (=> start!466620 (=> (not res!1949059) (not e!2895028))))

(assert (=> start!466620 (= res!1949059 (noDuplicateKeys!1594 oldBucket!40))))

(assert (=> start!466620 e!2895028))

(assert (=> start!466620 true))

(assert (=> start!466620 e!2895030))

(assert (=> start!466620 tp_is_empty!29669))

(assert (=> start!466620 e!2895027))

(assert (= (and start!466620 res!1949059) b!4640837))

(assert (= (and b!4640837 res!1949058) b!4640839))

(assert (= (and b!4640839 res!1949055) b!4640830))

(assert (= (and b!4640830 res!1949057) b!4640831))

(assert (= (and b!4640831 res!1949054) b!4640835))

(assert (= (and b!4640835 res!1949062) b!4640827))

(assert (= (and b!4640827 res!1949053) b!4640836))

(assert (= (and b!4640836 res!1949060) b!4640828))

(assert (= (and b!4640836 (not res!1949064)) b!4640840))

(assert (= (and b!4640840 (not res!1949061)) b!4640833))

(assert (= (and b!4640833 (not res!1949056)) b!4640829))

(assert (= (and b!4640829 (not res!1949063)) b!4640838))

(assert (= (and start!466620 ((_ is Cons!51768) oldBucket!40)) b!4640832))

(assert (= (and start!466620 ((_ is Cons!51768) newBucket!224)) b!4640834))

(declare-fun m!5500519 () Bool)

(assert (=> b!4640835 m!5500519))

(declare-fun m!5500521 () Bool)

(assert (=> b!4640830 m!5500521))

(declare-fun m!5500523 () Bool)

(assert (=> b!4640836 m!5500523))

(declare-fun m!5500525 () Bool)

(assert (=> b!4640836 m!5500525))

(declare-fun m!5500527 () Bool)

(assert (=> b!4640827 m!5500527))

(declare-fun m!5500529 () Bool)

(assert (=> b!4640833 m!5500529))

(declare-fun m!5500531 () Bool)

(assert (=> b!4640833 m!5500531))

(declare-fun m!5500533 () Bool)

(assert (=> b!4640833 m!5500533))

(declare-fun m!5500535 () Bool)

(assert (=> b!4640829 m!5500535))

(declare-fun m!5500537 () Bool)

(assert (=> b!4640840 m!5500537))

(declare-fun m!5500539 () Bool)

(assert (=> b!4640840 m!5500539))

(declare-fun m!5500541 () Bool)

(assert (=> b!4640840 m!5500541))

(declare-fun m!5500543 () Bool)

(assert (=> b!4640840 m!5500543))

(declare-fun m!5500545 () Bool)

(assert (=> b!4640840 m!5500545))

(declare-fun m!5500547 () Bool)

(assert (=> b!4640840 m!5500547))

(declare-fun m!5500549 () Bool)

(assert (=> b!4640840 m!5500549))

(assert (=> b!4640840 m!5500541))

(declare-fun m!5500551 () Bool)

(assert (=> b!4640840 m!5500551))

(declare-fun m!5500553 () Bool)

(assert (=> b!4640840 m!5500553))

(declare-fun m!5500555 () Bool)

(assert (=> b!4640840 m!5500555))

(declare-fun m!5500557 () Bool)

(assert (=> b!4640840 m!5500557))

(declare-fun m!5500559 () Bool)

(assert (=> b!4640840 m!5500559))

(declare-fun m!5500561 () Bool)

(assert (=> start!466620 m!5500561))

(declare-fun m!5500563 () Bool)

(assert (=> b!4640838 m!5500563))

(declare-fun m!5500565 () Bool)

(assert (=> b!4640838 m!5500565))

(declare-fun m!5500567 () Bool)

(assert (=> b!4640838 m!5500567))

(declare-fun m!5500569 () Bool)

(assert (=> b!4640838 m!5500569))

(declare-fun m!5500571 () Bool)

(assert (=> b!4640838 m!5500571))

(declare-fun m!5500573 () Bool)

(assert (=> b!4640838 m!5500573))

(declare-fun m!5500575 () Bool)

(assert (=> b!4640838 m!5500575))

(assert (=> b!4640838 m!5500567))

(declare-fun m!5500577 () Bool)

(assert (=> b!4640838 m!5500577))

(declare-fun m!5500579 () Bool)

(assert (=> b!4640838 m!5500579))

(assert (=> b!4640838 m!5500571))

(assert (=> b!4640838 m!5500565))

(assert (=> b!4640838 m!5500575))

(declare-fun m!5500581 () Bool)

(assert (=> b!4640838 m!5500581))

(declare-fun m!5500583 () Bool)

(assert (=> b!4640838 m!5500583))

(declare-fun m!5500585 () Bool)

(assert (=> b!4640838 m!5500585))

(declare-fun m!5500587 () Bool)

(assert (=> b!4640838 m!5500587))

(assert (=> b!4640838 m!5500573))

(declare-fun m!5500589 () Bool)

(assert (=> b!4640838 m!5500589))

(assert (=> b!4640838 m!5500577))

(declare-fun m!5500591 () Bool)

(assert (=> b!4640838 m!5500591))

(declare-fun m!5500593 () Bool)

(assert (=> b!4640838 m!5500593))

(declare-fun m!5500595 () Bool)

(assert (=> b!4640838 m!5500595))

(assert (=> b!4640838 m!5500579))

(declare-fun m!5500597 () Bool)

(assert (=> b!4640838 m!5500597))

(assert (=> b!4640838 m!5500595))

(assert (=> b!4640838 m!5500585))

(declare-fun m!5500599 () Bool)

(assert (=> b!4640837 m!5500599))

(declare-fun m!5500601 () Bool)

(assert (=> b!4640839 m!5500601))

(declare-fun m!5500603 () Bool)

(assert (=> b!4640831 m!5500603))

(declare-fun m!5500605 () Bool)

(assert (=> b!4640831 m!5500605))

(check-sat (not b!4640835) (not start!466620) (not b!4640836) (not b!4640840) (not b!4640831) (not b!4640839) (not b!4640833) (not b!4640829) tp_is_empty!29671 (not b!4640832) (not b!4640830) (not b!4640834) tp_is_empty!29669 (not b!4640837) (not b!4640827) (not b!4640838))
(check-sat)
(get-model)

(declare-fun b!4640877 () Bool)

(declare-fun e!2895053 () List!51892)

(declare-fun e!2895054 () List!51892)

(assert (=> b!4640877 (= e!2895053 e!2895054)))

(declare-fun c!794126 () Bool)

(assert (=> b!4640877 (= c!794126 ((_ is Cons!51768) lt!1803677))))

(declare-fun d!1463055 () Bool)

(declare-fun lt!1803714 () List!51892)

(assert (=> d!1463055 (not (containsKey!2628 lt!1803714 key!4968))))

(assert (=> d!1463055 (= lt!1803714 e!2895053)))

(declare-fun c!794127 () Bool)

(assert (=> d!1463055 (= c!794127 (and ((_ is Cons!51768) lt!1803677) (= (_1!29705 (h!57876 lt!1803677)) key!4968)))))

(assert (=> d!1463055 (noDuplicateKeys!1594 lt!1803677)))

(assert (=> d!1463055 (= (removePairForKey!1217 lt!1803677 key!4968) lt!1803714)))

(declare-fun b!4640876 () Bool)

(assert (=> b!4640876 (= e!2895053 (t!358974 lt!1803677))))

(declare-fun b!4640878 () Bool)

(assert (=> b!4640878 (= e!2895054 (Cons!51768 (h!57876 lt!1803677) (removePairForKey!1217 (t!358974 lt!1803677) key!4968)))))

(declare-fun b!4640879 () Bool)

(assert (=> b!4640879 (= e!2895054 Nil!51768)))

(assert (= (and d!1463055 c!794127) b!4640876))

(assert (= (and d!1463055 (not c!794127)) b!4640877))

(assert (= (and b!4640877 c!794126) b!4640878))

(assert (= (and b!4640877 (not c!794126)) b!4640879))

(declare-fun m!5500627 () Bool)

(assert (=> d!1463055 m!5500627))

(declare-fun m!5500629 () Bool)

(assert (=> d!1463055 m!5500629))

(declare-fun m!5500631 () Bool)

(assert (=> b!4640878 m!5500631))

(assert (=> b!4640833 d!1463055))

(declare-fun d!1463057 () Bool)

(assert (=> d!1463057 (= (tail!8217 newBucket!224) (t!358974 newBucket!224))))

(assert (=> b!4640833 d!1463057))

(declare-fun d!1463059 () Bool)

(assert (=> d!1463059 (= (tail!8217 oldBucket!40) (t!358974 oldBucket!40))))

(assert (=> b!4640833 d!1463059))

(declare-fun d!1463061 () Bool)

(declare-fun res!1949078 () Bool)

(declare-fun e!2895066 () Bool)

(assert (=> d!1463061 (=> res!1949078 e!2895066)))

(assert (=> d!1463061 (= res!1949078 (not ((_ is Cons!51768) oldBucket!40)))))

(assert (=> d!1463061 (= (noDuplicateKeys!1594 oldBucket!40) e!2895066)))

(declare-fun b!4640898 () Bool)

(declare-fun e!2895067 () Bool)

(assert (=> b!4640898 (= e!2895066 e!2895067)))

(declare-fun res!1949079 () Bool)

(assert (=> b!4640898 (=> (not res!1949079) (not e!2895067))))

(assert (=> b!4640898 (= res!1949079 (not (containsKey!2628 (t!358974 oldBucket!40) (_1!29705 (h!57876 oldBucket!40)))))))

(declare-fun b!4640899 () Bool)

(assert (=> b!4640899 (= e!2895067 (noDuplicateKeys!1594 (t!358974 oldBucket!40)))))

(assert (= (and d!1463061 (not res!1949078)) b!4640898))

(assert (= (and b!4640898 res!1949079) b!4640899))

(declare-fun m!5500647 () Bool)

(assert (=> b!4640898 m!5500647))

(declare-fun m!5500651 () Bool)

(assert (=> b!4640899 m!5500651))

(assert (=> start!466620 d!1463061))

(declare-fun b!4640926 () Bool)

(assert (=> b!4640926 false))

(declare-fun lt!1803740 () Unit!115257)

(declare-fun lt!1803742 () Unit!115257)

(assert (=> b!4640926 (= lt!1803740 lt!1803742)))

(declare-fun containsKey!2631 (List!51892 K!13135) Bool)

(assert (=> b!4640926 (containsKey!2631 (toList!5133 lt!1803685) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!712 (List!51892 K!13135) Unit!115257)

(assert (=> b!4640926 (= lt!1803742 (lemmaInGetKeysListThenContainsKey!712 (toList!5133 lt!1803685) key!4968))))

(declare-fun e!2895084 () Unit!115257)

(declare-fun Unit!115283 () Unit!115257)

(assert (=> b!4640926 (= e!2895084 Unit!115283)))

(declare-fun b!4640927 () Bool)

(declare-fun e!2895083 () Bool)

(declare-fun e!2895086 () Bool)

(assert (=> b!4640927 (= e!2895083 e!2895086)))

(declare-fun res!1949087 () Bool)

(assert (=> b!4640927 (=> (not res!1949087) (not e!2895086))))

(declare-datatypes ((Option!11753 0))(
  ( (None!11752) (Some!11752 (v!45978 V!13381)) )
))
(declare-fun isDefined!9018 (Option!11753) Bool)

(declare-fun getValueByKey!1557 (List!51892 K!13135) Option!11753)

(assert (=> b!4640927 (= res!1949087 (isDefined!9018 (getValueByKey!1557 (toList!5133 lt!1803685) key!4968)))))

(declare-fun bm!323944 () Bool)

(declare-fun call!323949 () Bool)

(declare-datatypes ((List!51895 0))(
  ( (Nil!51771) (Cons!51771 (h!57881 K!13135) (t!358979 List!51895)) )
))
(declare-fun e!2895087 () List!51895)

(declare-fun contains!14896 (List!51895 K!13135) Bool)

(assert (=> bm!323944 (= call!323949 (contains!14896 e!2895087 key!4968))))

(declare-fun c!794145 () Bool)

(declare-fun c!794144 () Bool)

(assert (=> bm!323944 (= c!794145 c!794144)))

(declare-fun b!4640928 () Bool)

(declare-fun Unit!115285 () Unit!115257)

(assert (=> b!4640928 (= e!2895084 Unit!115285)))

(declare-fun b!4640929 () Bool)

(declare-fun keys!18300 (ListMap!4457) List!51895)

(assert (=> b!4640929 (= e!2895087 (keys!18300 lt!1803685))))

(declare-fun d!1463069 () Bool)

(assert (=> d!1463069 e!2895083))

(declare-fun res!1949088 () Bool)

(assert (=> d!1463069 (=> res!1949088 e!2895083)))

(declare-fun e!2895082 () Bool)

(assert (=> d!1463069 (= res!1949088 e!2895082)))

(declare-fun res!1949086 () Bool)

(assert (=> d!1463069 (=> (not res!1949086) (not e!2895082))))

(declare-fun lt!1803738 () Bool)

(assert (=> d!1463069 (= res!1949086 (not lt!1803738))))

(declare-fun lt!1803739 () Bool)

(assert (=> d!1463069 (= lt!1803738 lt!1803739)))

(declare-fun lt!1803744 () Unit!115257)

(declare-fun e!2895085 () Unit!115257)

(assert (=> d!1463069 (= lt!1803744 e!2895085)))

(assert (=> d!1463069 (= c!794144 lt!1803739)))

(assert (=> d!1463069 (= lt!1803739 (containsKey!2631 (toList!5133 lt!1803685) key!4968))))

(assert (=> d!1463069 (= (contains!14891 lt!1803685 key!4968) lt!1803738)))

(declare-fun b!4640930 () Bool)

(declare-fun getKeysList!713 (List!51892) List!51895)

(assert (=> b!4640930 (= e!2895087 (getKeysList!713 (toList!5133 lt!1803685)))))

(declare-fun b!4640931 () Bool)

(assert (=> b!4640931 (= e!2895085 e!2895084)))

(declare-fun c!794143 () Bool)

(assert (=> b!4640931 (= c!794143 call!323949)))

(declare-fun b!4640932 () Bool)

(assert (=> b!4640932 (= e!2895082 (not (contains!14896 (keys!18300 lt!1803685) key!4968)))))

(declare-fun b!4640933 () Bool)

(declare-fun lt!1803737 () Unit!115257)

(assert (=> b!4640933 (= e!2895085 lt!1803737)))

(declare-fun lt!1803741 () Unit!115257)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1459 (List!51892 K!13135) Unit!115257)

(assert (=> b!4640933 (= lt!1803741 (lemmaContainsKeyImpliesGetValueByKeyDefined!1459 (toList!5133 lt!1803685) key!4968))))

(assert (=> b!4640933 (isDefined!9018 (getValueByKey!1557 (toList!5133 lt!1803685) key!4968))))

(declare-fun lt!1803743 () Unit!115257)

(assert (=> b!4640933 (= lt!1803743 lt!1803741)))

(declare-fun lemmaInListThenGetKeysListContains!708 (List!51892 K!13135) Unit!115257)

(assert (=> b!4640933 (= lt!1803737 (lemmaInListThenGetKeysListContains!708 (toList!5133 lt!1803685) key!4968))))

(assert (=> b!4640933 call!323949))

(declare-fun b!4640934 () Bool)

(assert (=> b!4640934 (= e!2895086 (contains!14896 (keys!18300 lt!1803685) key!4968))))

(assert (= (and d!1463069 c!794144) b!4640933))

(assert (= (and d!1463069 (not c!794144)) b!4640931))

(assert (= (and b!4640931 c!794143) b!4640926))

(assert (= (and b!4640931 (not c!794143)) b!4640928))

(assert (= (or b!4640933 b!4640931) bm!323944))

(assert (= (and bm!323944 c!794145) b!4640930))

(assert (= (and bm!323944 (not c!794145)) b!4640929))

(assert (= (and d!1463069 res!1949086) b!4640932))

(assert (= (and d!1463069 (not res!1949088)) b!4640927))

(assert (= (and b!4640927 res!1949087) b!4640934))

(declare-fun m!5500655 () Bool)

(assert (=> b!4640933 m!5500655))

(declare-fun m!5500657 () Bool)

(assert (=> b!4640933 m!5500657))

(assert (=> b!4640933 m!5500657))

(declare-fun m!5500659 () Bool)

(assert (=> b!4640933 m!5500659))

(declare-fun m!5500661 () Bool)

(assert (=> b!4640933 m!5500661))

(assert (=> b!4640927 m!5500657))

(assert (=> b!4640927 m!5500657))

(assert (=> b!4640927 m!5500659))

(declare-fun m!5500663 () Bool)

(assert (=> b!4640932 m!5500663))

(assert (=> b!4640932 m!5500663))

(declare-fun m!5500665 () Bool)

(assert (=> b!4640932 m!5500665))

(assert (=> b!4640934 m!5500663))

(assert (=> b!4640934 m!5500663))

(assert (=> b!4640934 m!5500665))

(declare-fun m!5500667 () Bool)

(assert (=> b!4640926 m!5500667))

(declare-fun m!5500669 () Bool)

(assert (=> b!4640926 m!5500669))

(assert (=> b!4640929 m!5500663))

(assert (=> d!1463069 m!5500667))

(declare-fun m!5500671 () Bool)

(assert (=> bm!323944 m!5500671))

(declare-fun m!5500673 () Bool)

(assert (=> b!4640930 m!5500673))

(assert (=> b!4640831 d!1463069))

(declare-fun bs!1033227 () Bool)

(declare-fun d!1463073 () Bool)

(assert (= bs!1033227 (and d!1463073 b!4640840)))

(declare-fun lambda!196155 () Int)

(assert (=> bs!1033227 (= lambda!196155 lambda!196146)))

(declare-fun lt!1803747 () ListMap!4457)

(declare-fun invariantList!1262 (List!51892) Bool)

(assert (=> d!1463073 (invariantList!1262 (toList!5133 lt!1803747))))

(declare-fun e!2895090 () ListMap!4457)

(assert (=> d!1463073 (= lt!1803747 e!2895090)))

(declare-fun c!794148 () Bool)

(assert (=> d!1463073 (= c!794148 ((_ is Cons!51769) lt!1803684))))

(declare-fun forall!10943 (List!51893 Int) Bool)

(assert (=> d!1463073 (forall!10943 lt!1803684 lambda!196155)))

(assert (=> d!1463073 (= (extractMap!1650 lt!1803684) lt!1803747)))

(declare-fun b!4640939 () Bool)

(assert (=> b!4640939 (= e!2895090 (addToMapMapFromBucket!1053 (_2!29706 (h!57877 lt!1803684)) (extractMap!1650 (t!358975 lt!1803684))))))

(declare-fun b!4640940 () Bool)

(assert (=> b!4640940 (= e!2895090 (ListMap!4458 Nil!51768))))

(assert (= (and d!1463073 c!794148) b!4640939))

(assert (= (and d!1463073 (not c!794148)) b!4640940))

(declare-fun m!5500675 () Bool)

(assert (=> d!1463073 m!5500675))

(declare-fun m!5500677 () Bool)

(assert (=> d!1463073 m!5500677))

(declare-fun m!5500679 () Bool)

(assert (=> b!4640939 m!5500679))

(assert (=> b!4640939 m!5500679))

(declare-fun m!5500681 () Bool)

(assert (=> b!4640939 m!5500681))

(assert (=> b!4640831 d!1463073))

(declare-fun b!4641056 () Bool)

(assert (=> b!4641056 true))

(declare-fun bs!1033295 () Bool)

(declare-fun b!4641053 () Bool)

(assert (= bs!1033295 (and b!4641053 b!4641056)))

(declare-fun lambda!196239 () Int)

(declare-fun lambda!196238 () Int)

(assert (=> bs!1033295 (= lambda!196239 lambda!196238)))

(assert (=> b!4641053 true))

(declare-fun lambda!196240 () Int)

(declare-fun lt!1803967 () ListMap!4457)

(assert (=> bs!1033295 (= (= lt!1803967 lt!1803676) (= lambda!196240 lambda!196238))))

(assert (=> b!4641053 (= (= lt!1803967 lt!1803676) (= lambda!196240 lambda!196239))))

(assert (=> b!4641053 true))

(declare-fun bs!1033296 () Bool)

(declare-fun d!1463075 () Bool)

(assert (= bs!1033296 (and d!1463075 b!4641056)))

(declare-fun lt!1803973 () ListMap!4457)

(declare-fun lambda!196241 () Int)

(assert (=> bs!1033296 (= (= lt!1803973 lt!1803676) (= lambda!196241 lambda!196238))))

(declare-fun bs!1033297 () Bool)

(assert (= bs!1033297 (and d!1463075 b!4641053)))

(assert (=> bs!1033297 (= (= lt!1803973 lt!1803676) (= lambda!196241 lambda!196239))))

(assert (=> bs!1033297 (= (= lt!1803973 lt!1803967) (= lambda!196241 lambda!196240))))

(assert (=> d!1463075 true))

(declare-fun b!4641052 () Bool)

(declare-fun res!1949158 () Bool)

(declare-fun e!2895164 () Bool)

(assert (=> b!4641052 (=> (not res!1949158) (not e!2895164))))

(declare-fun forall!10944 (List!51892 Int) Bool)

(assert (=> b!4641052 (= res!1949158 (forall!10944 (toList!5133 lt!1803676) lambda!196241))))

(assert (=> d!1463075 e!2895164))

(declare-fun res!1949157 () Bool)

(assert (=> d!1463075 (=> (not res!1949157) (not e!2895164))))

(assert (=> d!1463075 (= res!1949157 (forall!10944 oldBucket!40 lambda!196241))))

(declare-fun e!2895165 () ListMap!4457)

(assert (=> d!1463075 (= lt!1803973 e!2895165)))

(declare-fun c!794169 () Bool)

(assert (=> d!1463075 (= c!794169 ((_ is Nil!51768) oldBucket!40))))

(assert (=> d!1463075 (noDuplicateKeys!1594 oldBucket!40)))

(assert (=> d!1463075 (= (addToMapMapFromBucket!1053 oldBucket!40 lt!1803676) lt!1803973)))

(assert (=> b!4641053 (= e!2895165 lt!1803967)))

(declare-fun lt!1803974 () ListMap!4457)

(assert (=> b!4641053 (= lt!1803974 (+!1944 lt!1803676 (h!57876 oldBucket!40)))))

(assert (=> b!4641053 (= lt!1803967 (addToMapMapFromBucket!1053 (t!358974 oldBucket!40) (+!1944 lt!1803676 (h!57876 oldBucket!40))))))

(declare-fun lt!1803965 () Unit!115257)

(declare-fun call!323972 () Unit!115257)

(assert (=> b!4641053 (= lt!1803965 call!323972)))

(assert (=> b!4641053 (forall!10944 (toList!5133 lt!1803676) lambda!196239)))

(declare-fun lt!1803971 () Unit!115257)

(assert (=> b!4641053 (= lt!1803971 lt!1803965)))

(assert (=> b!4641053 (forall!10944 (toList!5133 lt!1803974) lambda!196240)))

(declare-fun lt!1803984 () Unit!115257)

(declare-fun Unit!115286 () Unit!115257)

(assert (=> b!4641053 (= lt!1803984 Unit!115286)))

(assert (=> b!4641053 (forall!10944 (t!358974 oldBucket!40) lambda!196240)))

(declare-fun lt!1803975 () Unit!115257)

(declare-fun Unit!115287 () Unit!115257)

(assert (=> b!4641053 (= lt!1803975 Unit!115287)))

(declare-fun lt!1803983 () Unit!115257)

(declare-fun Unit!115288 () Unit!115257)

(assert (=> b!4641053 (= lt!1803983 Unit!115288)))

(declare-fun lt!1803979 () Unit!115257)

(declare-fun forallContained!3166 (List!51892 Int tuple2!52822) Unit!115257)

(assert (=> b!4641053 (= lt!1803979 (forallContained!3166 (toList!5133 lt!1803974) lambda!196240 (h!57876 oldBucket!40)))))

(assert (=> b!4641053 (contains!14891 lt!1803974 (_1!29705 (h!57876 oldBucket!40)))))

(declare-fun lt!1803969 () Unit!115257)

(declare-fun Unit!115289 () Unit!115257)

(assert (=> b!4641053 (= lt!1803969 Unit!115289)))

(assert (=> b!4641053 (contains!14891 lt!1803967 (_1!29705 (h!57876 oldBucket!40)))))

(declare-fun lt!1803966 () Unit!115257)

(declare-fun Unit!115290 () Unit!115257)

(assert (=> b!4641053 (= lt!1803966 Unit!115290)))

(assert (=> b!4641053 (forall!10944 oldBucket!40 lambda!196240)))

(declare-fun lt!1803976 () Unit!115257)

(declare-fun Unit!115291 () Unit!115257)

(assert (=> b!4641053 (= lt!1803976 Unit!115291)))

(declare-fun call!323974 () Bool)

(assert (=> b!4641053 call!323974))

(declare-fun lt!1803978 () Unit!115257)

(declare-fun Unit!115292 () Unit!115257)

(assert (=> b!4641053 (= lt!1803978 Unit!115292)))

(declare-fun lt!1803980 () Unit!115257)

(declare-fun Unit!115293 () Unit!115257)

(assert (=> b!4641053 (= lt!1803980 Unit!115293)))

(declare-fun lt!1803972 () Unit!115257)

(declare-fun addForallContainsKeyThenBeforeAdding!563 (ListMap!4457 ListMap!4457 K!13135 V!13381) Unit!115257)

(assert (=> b!4641053 (= lt!1803972 (addForallContainsKeyThenBeforeAdding!563 lt!1803676 lt!1803967 (_1!29705 (h!57876 oldBucket!40)) (_2!29705 (h!57876 oldBucket!40))))))

(declare-fun call!323973 () Bool)

(assert (=> b!4641053 call!323973))

(declare-fun lt!1803970 () Unit!115257)

(assert (=> b!4641053 (= lt!1803970 lt!1803972)))

(assert (=> b!4641053 (forall!10944 (toList!5133 lt!1803676) lambda!196240)))

(declare-fun lt!1803981 () Unit!115257)

(declare-fun Unit!115294 () Unit!115257)

(assert (=> b!4641053 (= lt!1803981 Unit!115294)))

(declare-fun res!1949159 () Bool)

(assert (=> b!4641053 (= res!1949159 (forall!10944 oldBucket!40 lambda!196240))))

(declare-fun e!2895163 () Bool)

(assert (=> b!4641053 (=> (not res!1949159) (not e!2895163))))

(assert (=> b!4641053 e!2895163))

(declare-fun lt!1803982 () Unit!115257)

(declare-fun Unit!115295 () Unit!115257)

(assert (=> b!4641053 (= lt!1803982 Unit!115295)))

(declare-fun b!4641054 () Bool)

(assert (=> b!4641054 (= e!2895164 (invariantList!1262 (toList!5133 lt!1803973)))))

(declare-fun bm!323967 () Bool)

(assert (=> bm!323967 (= call!323973 (forall!10944 (toList!5133 lt!1803676) (ite c!794169 lambda!196238 lambda!196240)))))

(declare-fun b!4641055 () Bool)

(assert (=> b!4641055 (= e!2895163 (forall!10944 (toList!5133 lt!1803676) lambda!196240))))

(assert (=> b!4641056 (= e!2895165 lt!1803676)))

(declare-fun lt!1803968 () Unit!115257)

(assert (=> b!4641056 (= lt!1803968 call!323972)))

(assert (=> b!4641056 call!323974))

(declare-fun lt!1803977 () Unit!115257)

(assert (=> b!4641056 (= lt!1803977 lt!1803968)))

(assert (=> b!4641056 call!323973))

(declare-fun lt!1803964 () Unit!115257)

(declare-fun Unit!115298 () Unit!115257)

(assert (=> b!4641056 (= lt!1803964 Unit!115298)))

(declare-fun bm!323968 () Bool)

(assert (=> bm!323968 (= call!323974 (forall!10944 (ite c!794169 (toList!5133 lt!1803676) (toList!5133 lt!1803974)) (ite c!794169 lambda!196238 lambda!196240)))))

(declare-fun bm!323969 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!564 (ListMap!4457) Unit!115257)

(assert (=> bm!323969 (= call!323972 (lemmaContainsAllItsOwnKeys!564 lt!1803676))))

(assert (= (and d!1463075 c!794169) b!4641056))

(assert (= (and d!1463075 (not c!794169)) b!4641053))

(assert (= (and b!4641053 res!1949159) b!4641055))

(assert (= (or b!4641056 b!4641053) bm!323969))

(assert (= (or b!4641056 b!4641053) bm!323968))

(assert (= (or b!4641056 b!4641053) bm!323967))

(assert (= (and d!1463075 res!1949157) b!4641052))

(assert (= (and b!4641052 res!1949158) b!4641054))

(declare-fun m!5500907 () Bool)

(assert (=> b!4641052 m!5500907))

(declare-fun m!5500909 () Bool)

(assert (=> bm!323968 m!5500909))

(declare-fun m!5500911 () Bool)

(assert (=> b!4641053 m!5500911))

(declare-fun m!5500913 () Bool)

(assert (=> b!4641053 m!5500913))

(declare-fun m!5500915 () Bool)

(assert (=> b!4641053 m!5500915))

(declare-fun m!5500917 () Bool)

(assert (=> b!4641053 m!5500917))

(declare-fun m!5500919 () Bool)

(assert (=> b!4641053 m!5500919))

(declare-fun m!5500921 () Bool)

(assert (=> b!4641053 m!5500921))

(declare-fun m!5500923 () Bool)

(assert (=> b!4641053 m!5500923))

(declare-fun m!5500925 () Bool)

(assert (=> b!4641053 m!5500925))

(declare-fun m!5500927 () Bool)

(assert (=> b!4641053 m!5500927))

(declare-fun m!5500929 () Bool)

(assert (=> b!4641053 m!5500929))

(assert (=> b!4641053 m!5500923))

(assert (=> b!4641053 m!5500919))

(declare-fun m!5500931 () Bool)

(assert (=> b!4641053 m!5500931))

(declare-fun m!5500933 () Bool)

(assert (=> d!1463075 m!5500933))

(assert (=> d!1463075 m!5500561))

(declare-fun m!5500935 () Bool)

(assert (=> b!4641054 m!5500935))

(assert (=> b!4641055 m!5500927))

(declare-fun m!5500937 () Bool)

(assert (=> bm!323969 m!5500937))

(declare-fun m!5500939 () Bool)

(assert (=> bm!323967 m!5500939))

(assert (=> b!4640836 d!1463075))

(declare-fun bs!1033298 () Bool)

(declare-fun d!1463121 () Bool)

(assert (= bs!1033298 (and d!1463121 b!4640840)))

(declare-fun lambda!196242 () Int)

(assert (=> bs!1033298 (= lambda!196242 lambda!196146)))

(declare-fun bs!1033299 () Bool)

(assert (= bs!1033299 (and d!1463121 d!1463073)))

(assert (=> bs!1033299 (= lambda!196242 lambda!196155)))

(declare-fun lt!1803985 () ListMap!4457)

(assert (=> d!1463121 (invariantList!1262 (toList!5133 lt!1803985))))

(declare-fun e!2895166 () ListMap!4457)

(assert (=> d!1463121 (= lt!1803985 e!2895166)))

(declare-fun c!794170 () Bool)

(assert (=> d!1463121 (= c!794170 ((_ is Cons!51769) Nil!51769))))

(assert (=> d!1463121 (forall!10943 Nil!51769 lambda!196242)))

(assert (=> d!1463121 (= (extractMap!1650 Nil!51769) lt!1803985)))

(declare-fun b!4641059 () Bool)

(assert (=> b!4641059 (= e!2895166 (addToMapMapFromBucket!1053 (_2!29706 (h!57877 Nil!51769)) (extractMap!1650 (t!358975 Nil!51769))))))

(declare-fun b!4641060 () Bool)

(assert (=> b!4641060 (= e!2895166 (ListMap!4458 Nil!51768))))

(assert (= (and d!1463121 c!794170) b!4641059))

(assert (= (and d!1463121 (not c!794170)) b!4641060))

(declare-fun m!5500941 () Bool)

(assert (=> d!1463121 m!5500941))

(declare-fun m!5500943 () Bool)

(assert (=> d!1463121 m!5500943))

(declare-fun m!5500945 () Bool)

(assert (=> b!4641059 m!5500945))

(assert (=> b!4641059 m!5500945))

(declare-fun m!5500947 () Bool)

(assert (=> b!4641059 m!5500947))

(assert (=> b!4640836 d!1463121))

(declare-fun d!1463123 () Bool)

(declare-fun hash!3687 (Hashable!5991 K!13135) (_ BitVec 64))

(assert (=> d!1463123 (= (hash!3685 hashF!1389 key!4968) (hash!3687 hashF!1389 key!4968))))

(declare-fun bs!1033300 () Bool)

(assert (= bs!1033300 d!1463123))

(declare-fun m!5500949 () Bool)

(assert (=> bs!1033300 m!5500949))

(assert (=> b!4640835 d!1463123))

(declare-fun d!1463125 () Bool)

(declare-fun e!2895175 () Bool)

(assert (=> d!1463125 e!2895175))

(declare-fun res!1949173 () Bool)

(assert (=> d!1463125 (=> (not res!1949173) (not e!2895175))))

(declare-fun lt!1804029 () ListMap!4457)

(assert (=> d!1463125 (= res!1949173 (contains!14891 lt!1804029 (_1!29705 lt!1803682)))))

(declare-fun lt!1804030 () List!51892)

(assert (=> d!1463125 (= lt!1804029 (ListMap!4458 lt!1804030))))

(declare-fun lt!1804028 () Unit!115257)

(declare-fun lt!1804027 () Unit!115257)

(assert (=> d!1463125 (= lt!1804028 lt!1804027)))

(assert (=> d!1463125 (= (getValueByKey!1557 lt!1804030 (_1!29705 lt!1803682)) (Some!11752 (_2!29705 lt!1803682)))))

(declare-fun lemmaContainsTupThenGetReturnValue!897 (List!51892 K!13135 V!13381) Unit!115257)

(assert (=> d!1463125 (= lt!1804027 (lemmaContainsTupThenGetReturnValue!897 lt!1804030 (_1!29705 lt!1803682) (_2!29705 lt!1803682)))))

(declare-fun insertNoDuplicatedKeys!405 (List!51892 K!13135 V!13381) List!51892)

(assert (=> d!1463125 (= lt!1804030 (insertNoDuplicatedKeys!405 (toList!5133 (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768))) (_1!29705 lt!1803682) (_2!29705 lt!1803682)))))

(assert (=> d!1463125 (= (+!1944 (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768)) lt!1803682) lt!1804029)))

(declare-fun b!4641076 () Bool)

(declare-fun res!1949174 () Bool)

(assert (=> b!4641076 (=> (not res!1949174) (not e!2895175))))

(assert (=> b!4641076 (= res!1949174 (= (getValueByKey!1557 (toList!5133 lt!1804029) (_1!29705 lt!1803682)) (Some!11752 (_2!29705 lt!1803682))))))

(declare-fun b!4641077 () Bool)

(declare-fun contains!14897 (List!51892 tuple2!52822) Bool)

(assert (=> b!4641077 (= e!2895175 (contains!14897 (toList!5133 lt!1804029) lt!1803682))))

(assert (= (and d!1463125 res!1949173) b!4641076))

(assert (= (and b!4641076 res!1949174) b!4641077))

(declare-fun m!5500967 () Bool)

(assert (=> d!1463125 m!5500967))

(declare-fun m!5500969 () Bool)

(assert (=> d!1463125 m!5500969))

(declare-fun m!5500971 () Bool)

(assert (=> d!1463125 m!5500971))

(declare-fun m!5500973 () Bool)

(assert (=> d!1463125 m!5500973))

(declare-fun m!5500975 () Bool)

(assert (=> b!4641076 m!5500975))

(declare-fun m!5500977 () Bool)

(assert (=> b!4641077 m!5500977))

(assert (=> b!4640838 d!1463125))

(declare-fun d!1463131 () Bool)

(declare-fun e!2895176 () Bool)

(assert (=> d!1463131 e!2895176))

(declare-fun res!1949175 () Bool)

(assert (=> d!1463131 (=> (not res!1949175) (not e!2895176))))

(declare-fun lt!1804033 () ListMap!4457)

(assert (=> d!1463131 (= res!1949175 (contains!14891 lt!1804033 (_1!29705 (h!57876 oldBucket!40))))))

(declare-fun lt!1804034 () List!51892)

(assert (=> d!1463131 (= lt!1804033 (ListMap!4458 lt!1804034))))

(declare-fun lt!1804032 () Unit!115257)

(declare-fun lt!1804031 () Unit!115257)

(assert (=> d!1463131 (= lt!1804032 lt!1804031)))

(assert (=> d!1463131 (= (getValueByKey!1557 lt!1804034 (_1!29705 (h!57876 oldBucket!40))) (Some!11752 (_2!29705 (h!57876 oldBucket!40))))))

(assert (=> d!1463131 (= lt!1804031 (lemmaContainsTupThenGetReturnValue!897 lt!1804034 (_1!29705 (h!57876 oldBucket!40)) (_2!29705 (h!57876 oldBucket!40))))))

(assert (=> d!1463131 (= lt!1804034 (insertNoDuplicatedKeys!405 (toList!5133 (extractMap!1650 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769))) (_1!29705 (h!57876 oldBucket!40)) (_2!29705 (h!57876 oldBucket!40))))))

(assert (=> d!1463131 (= (+!1944 (extractMap!1650 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)) (h!57876 oldBucket!40)) lt!1804033)))

(declare-fun b!4641078 () Bool)

(declare-fun res!1949176 () Bool)

(assert (=> b!4641078 (=> (not res!1949176) (not e!2895176))))

(assert (=> b!4641078 (= res!1949176 (= (getValueByKey!1557 (toList!5133 lt!1804033) (_1!29705 (h!57876 oldBucket!40))) (Some!11752 (_2!29705 (h!57876 oldBucket!40)))))))

(declare-fun b!4641079 () Bool)

(assert (=> b!4641079 (= e!2895176 (contains!14897 (toList!5133 lt!1804033) (h!57876 oldBucket!40)))))

(assert (= (and d!1463131 res!1949175) b!4641078))

(assert (= (and b!4641078 res!1949176) b!4641079))

(declare-fun m!5500979 () Bool)

(assert (=> d!1463131 m!5500979))

(declare-fun m!5500981 () Bool)

(assert (=> d!1463131 m!5500981))

(declare-fun m!5500983 () Bool)

(assert (=> d!1463131 m!5500983))

(declare-fun m!5500985 () Bool)

(assert (=> d!1463131 m!5500985))

(declare-fun m!5500987 () Bool)

(assert (=> b!4641078 m!5500987))

(declare-fun m!5500989 () Bool)

(assert (=> b!4641079 m!5500989))

(assert (=> b!4640838 d!1463131))

(declare-fun d!1463133 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8938 (List!51892) (InoxSet tuple2!52822))

(assert (=> d!1463133 (= (eq!885 lt!1803685 (+!1944 (extractMap!1650 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)) (h!57876 oldBucket!40))) (= (content!8938 (toList!5133 lt!1803685)) (content!8938 (toList!5133 (+!1944 (extractMap!1650 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)) (h!57876 oldBucket!40))))))))

(declare-fun bs!1033335 () Bool)

(assert (= bs!1033335 d!1463133))

(declare-fun m!5500991 () Bool)

(assert (=> bs!1033335 m!5500991))

(declare-fun m!5500993 () Bool)

(assert (=> bs!1033335 m!5500993))

(assert (=> b!4640838 d!1463133))

(declare-fun bs!1033336 () Bool)

(declare-fun d!1463135 () Bool)

(assert (= bs!1033336 (and d!1463135 b!4640840)))

(declare-fun lambda!196247 () Int)

(assert (=> bs!1033336 (= lambda!196247 lambda!196146)))

(declare-fun bs!1033337 () Bool)

(assert (= bs!1033337 (and d!1463135 d!1463073)))

(assert (=> bs!1033337 (= lambda!196247 lambda!196155)))

(declare-fun bs!1033338 () Bool)

(assert (= bs!1033338 (and d!1463135 d!1463121)))

(assert (=> bs!1033338 (= lambda!196247 lambda!196242)))

(declare-fun lt!1804035 () ListMap!4457)

(assert (=> d!1463135 (invariantList!1262 (toList!5133 lt!1804035))))

(declare-fun e!2895177 () ListMap!4457)

(assert (=> d!1463135 (= lt!1804035 e!2895177)))

(declare-fun c!794172 () Bool)

(assert (=> d!1463135 (= c!794172 ((_ is Cons!51769) lt!1803683))))

(assert (=> d!1463135 (forall!10943 lt!1803683 lambda!196247)))

(assert (=> d!1463135 (= (extractMap!1650 lt!1803683) lt!1804035)))

(declare-fun b!4641080 () Bool)

(assert (=> b!4641080 (= e!2895177 (addToMapMapFromBucket!1053 (_2!29706 (h!57877 lt!1803683)) (extractMap!1650 (t!358975 lt!1803683))))))

(declare-fun b!4641081 () Bool)

(assert (=> b!4641081 (= e!2895177 (ListMap!4458 Nil!51768))))

(assert (= (and d!1463135 c!794172) b!4641080))

(assert (= (and d!1463135 (not c!794172)) b!4641081))

(declare-fun m!5500995 () Bool)

(assert (=> d!1463135 m!5500995))

(declare-fun m!5500997 () Bool)

(assert (=> d!1463135 m!5500997))

(declare-fun m!5500999 () Bool)

(assert (=> b!4641080 m!5500999))

(assert (=> b!4641080 m!5500999))

(declare-fun m!5501001 () Bool)

(assert (=> b!4641080 m!5501001))

(assert (=> b!4640838 d!1463135))

(declare-fun d!1463137 () Bool)

(assert (=> d!1463137 (= (head!9704 oldBucket!40) (h!57876 oldBucket!40))))

(assert (=> b!4640838 d!1463137))

(declare-fun d!1463139 () Bool)

(assert (=> d!1463139 (eq!885 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803682 lt!1803677) (ListMap!4458 Nil!51768)) (+!1944 (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768)) lt!1803682))))

(declare-fun lt!1804070 () Unit!115257)

(declare-fun choose!31772 (tuple2!52822 List!51892 ListMap!4457) Unit!115257)

(assert (=> d!1463139 (= lt!1804070 (choose!31772 lt!1803682 lt!1803677 (ListMap!4458 Nil!51768)))))

(assert (=> d!1463139 (noDuplicateKeys!1594 lt!1803677)))

(assert (=> d!1463139 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!136 lt!1803682 lt!1803677 (ListMap!4458 Nil!51768)) lt!1804070)))

(declare-fun bs!1033381 () Bool)

(assert (= bs!1033381 d!1463139))

(declare-fun m!5501085 () Bool)

(assert (=> bs!1033381 m!5501085))

(assert (=> bs!1033381 m!5500577))

(assert (=> bs!1033381 m!5500579))

(assert (=> bs!1033381 m!5500577))

(assert (=> bs!1033381 m!5500629))

(assert (=> bs!1033381 m!5500595))

(assert (=> bs!1033381 m!5500579))

(assert (=> bs!1033381 m!5500597))

(assert (=> bs!1033381 m!5500595))

(assert (=> b!4640838 d!1463139))

(declare-fun bs!1033382 () Bool)

(declare-fun b!4641099 () Bool)

(assert (= bs!1033382 (and b!4641099 b!4641056)))

(declare-fun lambda!196253 () Int)

(assert (=> bs!1033382 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196253 lambda!196238))))

(declare-fun bs!1033383 () Bool)

(assert (= bs!1033383 (and b!4641099 b!4641053)))

(assert (=> bs!1033383 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196253 lambda!196239))))

(assert (=> bs!1033383 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196253 lambda!196240))))

(declare-fun bs!1033384 () Bool)

(assert (= bs!1033384 (and b!4641099 d!1463075)))

(assert (=> bs!1033384 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196253 lambda!196241))))

(assert (=> b!4641099 true))

(declare-fun bs!1033385 () Bool)

(declare-fun b!4641096 () Bool)

(assert (= bs!1033385 (and b!4641096 b!4641099)))

(declare-fun lambda!196254 () Int)

(assert (=> bs!1033385 (= lambda!196254 lambda!196253)))

(declare-fun bs!1033386 () Bool)

(assert (= bs!1033386 (and b!4641096 b!4641053)))

(assert (=> bs!1033386 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196254 lambda!196240))))

(declare-fun bs!1033387 () Bool)

(assert (= bs!1033387 (and b!4641096 d!1463075)))

(assert (=> bs!1033387 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196254 lambda!196241))))

(assert (=> bs!1033386 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196254 lambda!196239))))

(declare-fun bs!1033388 () Bool)

(assert (= bs!1033388 (and b!4641096 b!4641056)))

(assert (=> bs!1033388 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196254 lambda!196238))))

(assert (=> b!4641096 true))

(declare-fun lt!1804074 () ListMap!4457)

(declare-fun lambda!196256 () Int)

(assert (=> bs!1033385 (= (= lt!1804074 (ListMap!4458 Nil!51768)) (= lambda!196256 lambda!196253))))

(assert (=> bs!1033386 (= (= lt!1804074 lt!1803967) (= lambda!196256 lambda!196240))))

(assert (=> b!4641096 (= (= lt!1804074 (ListMap!4458 Nil!51768)) (= lambda!196256 lambda!196254))))

(assert (=> bs!1033387 (= (= lt!1804074 lt!1803973) (= lambda!196256 lambda!196241))))

(assert (=> bs!1033386 (= (= lt!1804074 lt!1803676) (= lambda!196256 lambda!196239))))

(assert (=> bs!1033388 (= (= lt!1804074 lt!1803676) (= lambda!196256 lambda!196238))))

(assert (=> b!4641096 true))

(declare-fun bs!1033404 () Bool)

(declare-fun d!1463155 () Bool)

(assert (= bs!1033404 (and d!1463155 b!4641099)))

(declare-fun lt!1804080 () ListMap!4457)

(declare-fun lambda!196257 () Int)

(assert (=> bs!1033404 (= (= lt!1804080 (ListMap!4458 Nil!51768)) (= lambda!196257 lambda!196253))))

(declare-fun bs!1033405 () Bool)

(assert (= bs!1033405 (and d!1463155 b!4641053)))

(assert (=> bs!1033405 (= (= lt!1804080 lt!1803967) (= lambda!196257 lambda!196240))))

(declare-fun bs!1033406 () Bool)

(assert (= bs!1033406 (and d!1463155 b!4641096)))

(assert (=> bs!1033406 (= (= lt!1804080 (ListMap!4458 Nil!51768)) (= lambda!196257 lambda!196254))))

(declare-fun bs!1033407 () Bool)

(assert (= bs!1033407 (and d!1463155 d!1463075)))

(assert (=> bs!1033407 (= (= lt!1804080 lt!1803973) (= lambda!196257 lambda!196241))))

(assert (=> bs!1033405 (= (= lt!1804080 lt!1803676) (= lambda!196257 lambda!196239))))

(assert (=> bs!1033406 (= (= lt!1804080 lt!1804074) (= lambda!196257 lambda!196256))))

(declare-fun bs!1033408 () Bool)

(assert (= bs!1033408 (and d!1463155 b!4641056)))

(assert (=> bs!1033408 (= (= lt!1804080 lt!1803676) (= lambda!196257 lambda!196238))))

(assert (=> d!1463155 true))

(declare-fun b!4641095 () Bool)

(declare-fun res!1949185 () Bool)

(declare-fun e!2895186 () Bool)

(assert (=> b!4641095 (=> (not res!1949185) (not e!2895186))))

(assert (=> b!4641095 (= res!1949185 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196257))))

(assert (=> d!1463155 e!2895186))

(declare-fun res!1949184 () Bool)

(assert (=> d!1463155 (=> (not res!1949184) (not e!2895186))))

(assert (=> d!1463155 (= res!1949184 (forall!10944 lt!1803677 lambda!196257))))

(declare-fun e!2895187 () ListMap!4457)

(assert (=> d!1463155 (= lt!1804080 e!2895187)))

(declare-fun c!794176 () Bool)

(assert (=> d!1463155 (= c!794176 ((_ is Nil!51768) lt!1803677))))

(assert (=> d!1463155 (noDuplicateKeys!1594 lt!1803677)))

(assert (=> d!1463155 (= (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768)) lt!1804080)))

(assert (=> b!4641096 (= e!2895187 lt!1804074)))

(declare-fun lt!1804081 () ListMap!4457)

(assert (=> b!4641096 (= lt!1804081 (+!1944 (ListMap!4458 Nil!51768) (h!57876 lt!1803677)))))

(assert (=> b!4641096 (= lt!1804074 (addToMapMapFromBucket!1053 (t!358974 lt!1803677) (+!1944 (ListMap!4458 Nil!51768) (h!57876 lt!1803677))))))

(declare-fun lt!1804072 () Unit!115257)

(declare-fun call!323981 () Unit!115257)

(assert (=> b!4641096 (= lt!1804072 call!323981)))

(assert (=> b!4641096 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196254)))

(declare-fun lt!1804078 () Unit!115257)

(assert (=> b!4641096 (= lt!1804078 lt!1804072)))

(assert (=> b!4641096 (forall!10944 (toList!5133 lt!1804081) lambda!196256)))

(declare-fun lt!1804091 () Unit!115257)

(declare-fun Unit!115310 () Unit!115257)

(assert (=> b!4641096 (= lt!1804091 Unit!115310)))

(assert (=> b!4641096 (forall!10944 (t!358974 lt!1803677) lambda!196256)))

(declare-fun lt!1804082 () Unit!115257)

(declare-fun Unit!115311 () Unit!115257)

(assert (=> b!4641096 (= lt!1804082 Unit!115311)))

(declare-fun lt!1804090 () Unit!115257)

(declare-fun Unit!115312 () Unit!115257)

(assert (=> b!4641096 (= lt!1804090 Unit!115312)))

(declare-fun lt!1804086 () Unit!115257)

(assert (=> b!4641096 (= lt!1804086 (forallContained!3166 (toList!5133 lt!1804081) lambda!196256 (h!57876 lt!1803677)))))

(assert (=> b!4641096 (contains!14891 lt!1804081 (_1!29705 (h!57876 lt!1803677)))))

(declare-fun lt!1804076 () Unit!115257)

(declare-fun Unit!115313 () Unit!115257)

(assert (=> b!4641096 (= lt!1804076 Unit!115313)))

(assert (=> b!4641096 (contains!14891 lt!1804074 (_1!29705 (h!57876 lt!1803677)))))

(declare-fun lt!1804073 () Unit!115257)

(declare-fun Unit!115314 () Unit!115257)

(assert (=> b!4641096 (= lt!1804073 Unit!115314)))

(assert (=> b!4641096 (forall!10944 lt!1803677 lambda!196256)))

(declare-fun lt!1804083 () Unit!115257)

(declare-fun Unit!115315 () Unit!115257)

(assert (=> b!4641096 (= lt!1804083 Unit!115315)))

(declare-fun call!323983 () Bool)

(assert (=> b!4641096 call!323983))

(declare-fun lt!1804085 () Unit!115257)

(declare-fun Unit!115316 () Unit!115257)

(assert (=> b!4641096 (= lt!1804085 Unit!115316)))

(declare-fun lt!1804087 () Unit!115257)

(declare-fun Unit!115317 () Unit!115257)

(assert (=> b!4641096 (= lt!1804087 Unit!115317)))

(declare-fun lt!1804079 () Unit!115257)

(assert (=> b!4641096 (= lt!1804079 (addForallContainsKeyThenBeforeAdding!563 (ListMap!4458 Nil!51768) lt!1804074 (_1!29705 (h!57876 lt!1803677)) (_2!29705 (h!57876 lt!1803677))))))

(declare-fun call!323982 () Bool)

(assert (=> b!4641096 call!323982))

(declare-fun lt!1804077 () Unit!115257)

(assert (=> b!4641096 (= lt!1804077 lt!1804079)))

(assert (=> b!4641096 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196256)))

(declare-fun lt!1804088 () Unit!115257)

(declare-fun Unit!115318 () Unit!115257)

(assert (=> b!4641096 (= lt!1804088 Unit!115318)))

(declare-fun res!1949186 () Bool)

(assert (=> b!4641096 (= res!1949186 (forall!10944 lt!1803677 lambda!196256))))

(declare-fun e!2895185 () Bool)

(assert (=> b!4641096 (=> (not res!1949186) (not e!2895185))))

(assert (=> b!4641096 e!2895185))

(declare-fun lt!1804089 () Unit!115257)

(declare-fun Unit!115319 () Unit!115257)

(assert (=> b!4641096 (= lt!1804089 Unit!115319)))

(declare-fun b!4641097 () Bool)

(assert (=> b!4641097 (= e!2895186 (invariantList!1262 (toList!5133 lt!1804080)))))

(declare-fun bm!323976 () Bool)

(assert (=> bm!323976 (= call!323982 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) (ite c!794176 lambda!196253 lambda!196256)))))

(declare-fun b!4641098 () Bool)

(assert (=> b!4641098 (= e!2895185 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196256))))

(assert (=> b!4641099 (= e!2895187 (ListMap!4458 Nil!51768))))

(declare-fun lt!1804075 () Unit!115257)

(assert (=> b!4641099 (= lt!1804075 call!323981)))

(assert (=> b!4641099 call!323983))

(declare-fun lt!1804084 () Unit!115257)

(assert (=> b!4641099 (= lt!1804084 lt!1804075)))

(assert (=> b!4641099 call!323982))

(declare-fun lt!1804071 () Unit!115257)

(declare-fun Unit!115320 () Unit!115257)

(assert (=> b!4641099 (= lt!1804071 Unit!115320)))

(declare-fun bm!323977 () Bool)

(assert (=> bm!323977 (= call!323983 (forall!10944 (ite c!794176 (toList!5133 (ListMap!4458 Nil!51768)) (toList!5133 lt!1804081)) (ite c!794176 lambda!196253 lambda!196256)))))

(declare-fun bm!323978 () Bool)

(assert (=> bm!323978 (= call!323981 (lemmaContainsAllItsOwnKeys!564 (ListMap!4458 Nil!51768)))))

(assert (= (and d!1463155 c!794176) b!4641099))

(assert (= (and d!1463155 (not c!794176)) b!4641096))

(assert (= (and b!4641096 res!1949186) b!4641098))

(assert (= (or b!4641099 b!4641096) bm!323978))

(assert (= (or b!4641099 b!4641096) bm!323977))

(assert (= (or b!4641099 b!4641096) bm!323976))

(assert (= (and d!1463155 res!1949184) b!4641095))

(assert (= (and b!4641095 res!1949185) b!4641097))

(declare-fun m!5501119 () Bool)

(assert (=> b!4641095 m!5501119))

(declare-fun m!5501121 () Bool)

(assert (=> bm!323977 m!5501121))

(declare-fun m!5501123 () Bool)

(assert (=> b!4641096 m!5501123))

(declare-fun m!5501125 () Bool)

(assert (=> b!4641096 m!5501125))

(declare-fun m!5501127 () Bool)

(assert (=> b!4641096 m!5501127))

(declare-fun m!5501129 () Bool)

(assert (=> b!4641096 m!5501129))

(declare-fun m!5501133 () Bool)

(assert (=> b!4641096 m!5501133))

(declare-fun m!5501137 () Bool)

(assert (=> b!4641096 m!5501137))

(declare-fun m!5501139 () Bool)

(assert (=> b!4641096 m!5501139))

(declare-fun m!5501141 () Bool)

(assert (=> b!4641096 m!5501141))

(declare-fun m!5501143 () Bool)

(assert (=> b!4641096 m!5501143))

(declare-fun m!5501145 () Bool)

(assert (=> b!4641096 m!5501145))

(assert (=> b!4641096 m!5501139))

(assert (=> b!4641096 m!5501133))

(declare-fun m!5501147 () Bool)

(assert (=> b!4641096 m!5501147))

(declare-fun m!5501149 () Bool)

(assert (=> d!1463155 m!5501149))

(assert (=> d!1463155 m!5500629))

(declare-fun m!5501151 () Bool)

(assert (=> b!4641097 m!5501151))

(assert (=> b!4641098 m!5501143))

(declare-fun m!5501153 () Bool)

(assert (=> bm!323978 m!5501153))

(declare-fun m!5501155 () Bool)

(assert (=> bm!323976 m!5501155))

(assert (=> b!4640838 d!1463155))

(declare-fun d!1463161 () Bool)

(assert (=> d!1463161 (= (eq!885 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803682 lt!1803677) (ListMap!4458 Nil!51768)) (+!1944 (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768)) lt!1803682)) (= (content!8938 (toList!5133 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803682 lt!1803677) (ListMap!4458 Nil!51768)))) (content!8938 (toList!5133 (+!1944 (addToMapMapFromBucket!1053 lt!1803677 (ListMap!4458 Nil!51768)) lt!1803682)))))))

(declare-fun bs!1033409 () Bool)

(assert (= bs!1033409 d!1463161))

(declare-fun m!5501157 () Bool)

(assert (=> bs!1033409 m!5501157))

(declare-fun m!5501159 () Bool)

(assert (=> bs!1033409 m!5501159))

(assert (=> b!4640838 d!1463161))

(declare-fun bs!1033416 () Bool)

(declare-fun b!4641108 () Bool)

(assert (= bs!1033416 (and b!4641108 b!4641099)))

(declare-fun lambda!196259 () Int)

(assert (=> bs!1033416 (= lambda!196259 lambda!196253)))

(declare-fun bs!1033419 () Bool)

(assert (= bs!1033419 (and b!4641108 b!4641053)))

(assert (=> bs!1033419 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196259 lambda!196240))))

(declare-fun bs!1033421 () Bool)

(assert (= bs!1033421 (and b!4641108 d!1463155)))

(assert (=> bs!1033421 (= (= (ListMap!4458 Nil!51768) lt!1804080) (= lambda!196259 lambda!196257))))

(declare-fun bs!1033423 () Bool)

(assert (= bs!1033423 (and b!4641108 b!4641096)))

(assert (=> bs!1033423 (= lambda!196259 lambda!196254)))

(declare-fun bs!1033426 () Bool)

(assert (= bs!1033426 (and b!4641108 d!1463075)))

(assert (=> bs!1033426 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196259 lambda!196241))))

(assert (=> bs!1033419 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196259 lambda!196239))))

(assert (=> bs!1033423 (= (= (ListMap!4458 Nil!51768) lt!1804074) (= lambda!196259 lambda!196256))))

(declare-fun bs!1033429 () Bool)

(assert (= bs!1033429 (and b!4641108 b!4641056)))

(assert (=> bs!1033429 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196259 lambda!196238))))

(assert (=> b!4641108 true))

(declare-fun bs!1033432 () Bool)

(declare-fun b!4641105 () Bool)

(assert (= bs!1033432 (and b!4641105 b!4641099)))

(declare-fun lambda!196260 () Int)

(assert (=> bs!1033432 (= lambda!196260 lambda!196253)))

(declare-fun bs!1033433 () Bool)

(assert (= bs!1033433 (and b!4641105 b!4641053)))

(assert (=> bs!1033433 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196260 lambda!196240))))

(declare-fun bs!1033434 () Bool)

(assert (= bs!1033434 (and b!4641105 b!4641096)))

(assert (=> bs!1033434 (= lambda!196260 lambda!196254)))

(declare-fun bs!1033436 () Bool)

(assert (= bs!1033436 (and b!4641105 d!1463075)))

(assert (=> bs!1033436 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196260 lambda!196241))))

(assert (=> bs!1033433 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196260 lambda!196239))))

(assert (=> bs!1033434 (= (= (ListMap!4458 Nil!51768) lt!1804074) (= lambda!196260 lambda!196256))))

(declare-fun bs!1033437 () Bool)

(assert (= bs!1033437 (and b!4641105 b!4641056)))

(assert (=> bs!1033437 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196260 lambda!196238))))

(declare-fun bs!1033438 () Bool)

(assert (= bs!1033438 (and b!4641105 b!4641108)))

(assert (=> bs!1033438 (= lambda!196260 lambda!196259)))

(declare-fun bs!1033439 () Bool)

(assert (= bs!1033439 (and b!4641105 d!1463155)))

(assert (=> bs!1033439 (= (= (ListMap!4458 Nil!51768) lt!1804080) (= lambda!196260 lambda!196257))))

(assert (=> b!4641105 true))

(declare-fun lt!1804096 () ListMap!4457)

(declare-fun lambda!196261 () Int)

(assert (=> bs!1033432 (= (= lt!1804096 (ListMap!4458 Nil!51768)) (= lambda!196261 lambda!196253))))

(assert (=> bs!1033433 (= (= lt!1804096 lt!1803967) (= lambda!196261 lambda!196240))))

(assert (=> bs!1033436 (= (= lt!1804096 lt!1803973) (= lambda!196261 lambda!196241))))

(assert (=> bs!1033433 (= (= lt!1804096 lt!1803676) (= lambda!196261 lambda!196239))))

(assert (=> bs!1033434 (= (= lt!1804096 lt!1804074) (= lambda!196261 lambda!196256))))

(assert (=> bs!1033437 (= (= lt!1804096 lt!1803676) (= lambda!196261 lambda!196238))))

(assert (=> bs!1033438 (= (= lt!1804096 (ListMap!4458 Nil!51768)) (= lambda!196261 lambda!196259))))

(assert (=> bs!1033439 (= (= lt!1804096 lt!1804080) (= lambda!196261 lambda!196257))))

(assert (=> bs!1033434 (= (= lt!1804096 (ListMap!4458 Nil!51768)) (= lambda!196261 lambda!196254))))

(assert (=> b!4641105 (= (= lt!1804096 (ListMap!4458 Nil!51768)) (= lambda!196261 lambda!196260))))

(assert (=> b!4641105 true))

(declare-fun bs!1033440 () Bool)

(declare-fun d!1463167 () Bool)

(assert (= bs!1033440 (and d!1463167 b!4641099)))

(declare-fun lt!1804102 () ListMap!4457)

(declare-fun lambda!196262 () Int)

(assert (=> bs!1033440 (= (= lt!1804102 (ListMap!4458 Nil!51768)) (= lambda!196262 lambda!196253))))

(declare-fun bs!1033441 () Bool)

(assert (= bs!1033441 (and d!1463167 b!4641105)))

(assert (=> bs!1033441 (= (= lt!1804102 lt!1804096) (= lambda!196262 lambda!196261))))

(declare-fun bs!1033442 () Bool)

(assert (= bs!1033442 (and d!1463167 b!4641053)))

(assert (=> bs!1033442 (= (= lt!1804102 lt!1803967) (= lambda!196262 lambda!196240))))

(declare-fun bs!1033443 () Bool)

(assert (= bs!1033443 (and d!1463167 d!1463075)))

(assert (=> bs!1033443 (= (= lt!1804102 lt!1803973) (= lambda!196262 lambda!196241))))

(assert (=> bs!1033442 (= (= lt!1804102 lt!1803676) (= lambda!196262 lambda!196239))))

(declare-fun bs!1033444 () Bool)

(assert (= bs!1033444 (and d!1463167 b!4641096)))

(assert (=> bs!1033444 (= (= lt!1804102 lt!1804074) (= lambda!196262 lambda!196256))))

(declare-fun bs!1033445 () Bool)

(assert (= bs!1033445 (and d!1463167 b!4641056)))

(assert (=> bs!1033445 (= (= lt!1804102 lt!1803676) (= lambda!196262 lambda!196238))))

(declare-fun bs!1033446 () Bool)

(assert (= bs!1033446 (and d!1463167 b!4641108)))

(assert (=> bs!1033446 (= (= lt!1804102 (ListMap!4458 Nil!51768)) (= lambda!196262 lambda!196259))))

(declare-fun bs!1033447 () Bool)

(assert (= bs!1033447 (and d!1463167 d!1463155)))

(assert (=> bs!1033447 (= (= lt!1804102 lt!1804080) (= lambda!196262 lambda!196257))))

(assert (=> bs!1033444 (= (= lt!1804102 (ListMap!4458 Nil!51768)) (= lambda!196262 lambda!196254))))

(assert (=> bs!1033441 (= (= lt!1804102 (ListMap!4458 Nil!51768)) (= lambda!196262 lambda!196260))))

(assert (=> d!1463167 true))

(declare-fun b!4641104 () Bool)

(declare-fun res!1949188 () Bool)

(declare-fun e!2895191 () Bool)

(assert (=> b!4641104 (=> (not res!1949188) (not e!2895191))))

(assert (=> b!4641104 (= res!1949188 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196262))))

(assert (=> d!1463167 e!2895191))

(declare-fun res!1949187 () Bool)

(assert (=> d!1463167 (=> (not res!1949187) (not e!2895191))))

(assert (=> d!1463167 (= res!1949187 (forall!10944 (Cons!51768 lt!1803686 lt!1803669) lambda!196262))))

(declare-fun e!2895192 () ListMap!4457)

(assert (=> d!1463167 (= lt!1804102 e!2895192)))

(declare-fun c!794179 () Bool)

(assert (=> d!1463167 (= c!794179 ((_ is Nil!51768) (Cons!51768 lt!1803686 lt!1803669)))))

(assert (=> d!1463167 (noDuplicateKeys!1594 (Cons!51768 lt!1803686 lt!1803669))))

(assert (=> d!1463167 (= (addToMapMapFromBucket!1053 (Cons!51768 lt!1803686 lt!1803669) (ListMap!4458 Nil!51768)) lt!1804102)))

(assert (=> b!4641105 (= e!2895192 lt!1804096)))

(declare-fun lt!1804103 () ListMap!4457)

(assert (=> b!4641105 (= lt!1804103 (+!1944 (ListMap!4458 Nil!51768) (h!57876 (Cons!51768 lt!1803686 lt!1803669))))))

(assert (=> b!4641105 (= lt!1804096 (addToMapMapFromBucket!1053 (t!358974 (Cons!51768 lt!1803686 lt!1803669)) (+!1944 (ListMap!4458 Nil!51768) (h!57876 (Cons!51768 lt!1803686 lt!1803669)))))))

(declare-fun lt!1804094 () Unit!115257)

(declare-fun call!323984 () Unit!115257)

(assert (=> b!4641105 (= lt!1804094 call!323984)))

(assert (=> b!4641105 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196260)))

(declare-fun lt!1804100 () Unit!115257)

(assert (=> b!4641105 (= lt!1804100 lt!1804094)))

(assert (=> b!4641105 (forall!10944 (toList!5133 lt!1804103) lambda!196261)))

(declare-fun lt!1804113 () Unit!115257)

(declare-fun Unit!115332 () Unit!115257)

(assert (=> b!4641105 (= lt!1804113 Unit!115332)))

(assert (=> b!4641105 (forall!10944 (t!358974 (Cons!51768 lt!1803686 lt!1803669)) lambda!196261)))

(declare-fun lt!1804104 () Unit!115257)

(declare-fun Unit!115333 () Unit!115257)

(assert (=> b!4641105 (= lt!1804104 Unit!115333)))

(declare-fun lt!1804112 () Unit!115257)

(declare-fun Unit!115334 () Unit!115257)

(assert (=> b!4641105 (= lt!1804112 Unit!115334)))

(declare-fun lt!1804108 () Unit!115257)

(assert (=> b!4641105 (= lt!1804108 (forallContained!3166 (toList!5133 lt!1804103) lambda!196261 (h!57876 (Cons!51768 lt!1803686 lt!1803669))))))

(assert (=> b!4641105 (contains!14891 lt!1804103 (_1!29705 (h!57876 (Cons!51768 lt!1803686 lt!1803669))))))

(declare-fun lt!1804098 () Unit!115257)

(declare-fun Unit!115335 () Unit!115257)

(assert (=> b!4641105 (= lt!1804098 Unit!115335)))

(assert (=> b!4641105 (contains!14891 lt!1804096 (_1!29705 (h!57876 (Cons!51768 lt!1803686 lt!1803669))))))

(declare-fun lt!1804095 () Unit!115257)

(declare-fun Unit!115336 () Unit!115257)

(assert (=> b!4641105 (= lt!1804095 Unit!115336)))

(assert (=> b!4641105 (forall!10944 (Cons!51768 lt!1803686 lt!1803669) lambda!196261)))

(declare-fun lt!1804105 () Unit!115257)

(declare-fun Unit!115337 () Unit!115257)

(assert (=> b!4641105 (= lt!1804105 Unit!115337)))

(declare-fun call!323986 () Bool)

(assert (=> b!4641105 call!323986))

(declare-fun lt!1804107 () Unit!115257)

(declare-fun Unit!115338 () Unit!115257)

(assert (=> b!4641105 (= lt!1804107 Unit!115338)))

(declare-fun lt!1804109 () Unit!115257)

(declare-fun Unit!115339 () Unit!115257)

(assert (=> b!4641105 (= lt!1804109 Unit!115339)))

(declare-fun lt!1804101 () Unit!115257)

(assert (=> b!4641105 (= lt!1804101 (addForallContainsKeyThenBeforeAdding!563 (ListMap!4458 Nil!51768) lt!1804096 (_1!29705 (h!57876 (Cons!51768 lt!1803686 lt!1803669))) (_2!29705 (h!57876 (Cons!51768 lt!1803686 lt!1803669)))))))

(declare-fun call!323985 () Bool)

(assert (=> b!4641105 call!323985))

(declare-fun lt!1804099 () Unit!115257)

(assert (=> b!4641105 (= lt!1804099 lt!1804101)))

(assert (=> b!4641105 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196261)))

(declare-fun lt!1804110 () Unit!115257)

(declare-fun Unit!115340 () Unit!115257)

(assert (=> b!4641105 (= lt!1804110 Unit!115340)))

(declare-fun res!1949189 () Bool)

(assert (=> b!4641105 (= res!1949189 (forall!10944 (Cons!51768 lt!1803686 lt!1803669) lambda!196261))))

(declare-fun e!2895190 () Bool)

(assert (=> b!4641105 (=> (not res!1949189) (not e!2895190))))

(assert (=> b!4641105 e!2895190))

(declare-fun lt!1804111 () Unit!115257)

(declare-fun Unit!115341 () Unit!115257)

(assert (=> b!4641105 (= lt!1804111 Unit!115341)))

(declare-fun b!4641106 () Bool)

(assert (=> b!4641106 (= e!2895191 (invariantList!1262 (toList!5133 lt!1804102)))))

(declare-fun bm!323979 () Bool)

(assert (=> bm!323979 (= call!323985 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) (ite c!794179 lambda!196259 lambda!196261)))))

(declare-fun b!4641107 () Bool)

(assert (=> b!4641107 (= e!2895190 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196261))))

(assert (=> b!4641108 (= e!2895192 (ListMap!4458 Nil!51768))))

(declare-fun lt!1804097 () Unit!115257)

(assert (=> b!4641108 (= lt!1804097 call!323984)))

(assert (=> b!4641108 call!323986))

(declare-fun lt!1804106 () Unit!115257)

(assert (=> b!4641108 (= lt!1804106 lt!1804097)))

(assert (=> b!4641108 call!323985))

(declare-fun lt!1804093 () Unit!115257)

(declare-fun Unit!115342 () Unit!115257)

(assert (=> b!4641108 (= lt!1804093 Unit!115342)))

(declare-fun bm!323980 () Bool)

(assert (=> bm!323980 (= call!323986 (forall!10944 (ite c!794179 (toList!5133 (ListMap!4458 Nil!51768)) (toList!5133 lt!1804103)) (ite c!794179 lambda!196259 lambda!196261)))))

(declare-fun bm!323981 () Bool)

(assert (=> bm!323981 (= call!323984 (lemmaContainsAllItsOwnKeys!564 (ListMap!4458 Nil!51768)))))

(assert (= (and d!1463167 c!794179) b!4641108))

(assert (= (and d!1463167 (not c!794179)) b!4641105))

(assert (= (and b!4641105 res!1949189) b!4641107))

(assert (= (or b!4641108 b!4641105) bm!323981))

(assert (= (or b!4641108 b!4641105) bm!323980))

(assert (= (or b!4641108 b!4641105) bm!323979))

(assert (= (and d!1463167 res!1949187) b!4641104))

(assert (= (and b!4641104 res!1949188) b!4641106))

(declare-fun m!5501173 () Bool)

(assert (=> b!4641104 m!5501173))

(declare-fun m!5501175 () Bool)

(assert (=> bm!323980 m!5501175))

(declare-fun m!5501177 () Bool)

(assert (=> b!4641105 m!5501177))

(declare-fun m!5501179 () Bool)

(assert (=> b!4641105 m!5501179))

(declare-fun m!5501181 () Bool)

(assert (=> b!4641105 m!5501181))

(declare-fun m!5501183 () Bool)

(assert (=> b!4641105 m!5501183))

(declare-fun m!5501185 () Bool)

(assert (=> b!4641105 m!5501185))

(declare-fun m!5501187 () Bool)

(assert (=> b!4641105 m!5501187))

(declare-fun m!5501189 () Bool)

(assert (=> b!4641105 m!5501189))

(declare-fun m!5501191 () Bool)

(assert (=> b!4641105 m!5501191))

(declare-fun m!5501193 () Bool)

(assert (=> b!4641105 m!5501193))

(declare-fun m!5501195 () Bool)

(assert (=> b!4641105 m!5501195))

(assert (=> b!4641105 m!5501189))

(assert (=> b!4641105 m!5501185))

(declare-fun m!5501197 () Bool)

(assert (=> b!4641105 m!5501197))

(declare-fun m!5501199 () Bool)

(assert (=> d!1463167 m!5501199))

(declare-fun m!5501201 () Bool)

(assert (=> d!1463167 m!5501201))

(declare-fun m!5501203 () Bool)

(assert (=> b!4641106 m!5501203))

(assert (=> b!4641107 m!5501193))

(assert (=> bm!323981 m!5501153))

(declare-fun m!5501205 () Bool)

(assert (=> bm!323979 m!5501205))

(assert (=> b!4640838 d!1463167))

(declare-fun bs!1033449 () Bool)

(declare-fun b!4641131 () Bool)

(assert (= bs!1033449 (and b!4641131 d!1463167)))

(declare-fun lambda!196263 () Int)

(assert (=> bs!1033449 (= (= (ListMap!4458 Nil!51768) lt!1804102) (= lambda!196263 lambda!196262))))

(declare-fun bs!1033450 () Bool)

(assert (= bs!1033450 (and b!4641131 b!4641099)))

(assert (=> bs!1033450 (= lambda!196263 lambda!196253)))

(declare-fun bs!1033451 () Bool)

(assert (= bs!1033451 (and b!4641131 b!4641105)))

(assert (=> bs!1033451 (= (= (ListMap!4458 Nil!51768) lt!1804096) (= lambda!196263 lambda!196261))))

(declare-fun bs!1033452 () Bool)

(assert (= bs!1033452 (and b!4641131 b!4641053)))

(assert (=> bs!1033452 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196263 lambda!196240))))

(declare-fun bs!1033453 () Bool)

(assert (= bs!1033453 (and b!4641131 d!1463075)))

(assert (=> bs!1033453 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196263 lambda!196241))))

(assert (=> bs!1033452 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196263 lambda!196239))))

(declare-fun bs!1033454 () Bool)

(assert (= bs!1033454 (and b!4641131 b!4641096)))

(assert (=> bs!1033454 (= (= (ListMap!4458 Nil!51768) lt!1804074) (= lambda!196263 lambda!196256))))

(declare-fun bs!1033455 () Bool)

(assert (= bs!1033455 (and b!4641131 b!4641056)))

(assert (=> bs!1033455 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196263 lambda!196238))))

(declare-fun bs!1033456 () Bool)

(assert (= bs!1033456 (and b!4641131 b!4641108)))

(assert (=> bs!1033456 (= lambda!196263 lambda!196259)))

(declare-fun bs!1033457 () Bool)

(assert (= bs!1033457 (and b!4641131 d!1463155)))

(assert (=> bs!1033457 (= (= (ListMap!4458 Nil!51768) lt!1804080) (= lambda!196263 lambda!196257))))

(assert (=> bs!1033454 (= lambda!196263 lambda!196254)))

(assert (=> bs!1033451 (= lambda!196263 lambda!196260)))

(assert (=> b!4641131 true))

(declare-fun bs!1033458 () Bool)

(declare-fun b!4641128 () Bool)

(assert (= bs!1033458 (and b!4641128 d!1463167)))

(declare-fun lambda!196264 () Int)

(assert (=> bs!1033458 (= (= (ListMap!4458 Nil!51768) lt!1804102) (= lambda!196264 lambda!196262))))

(declare-fun bs!1033459 () Bool)

(assert (= bs!1033459 (and b!4641128 b!4641099)))

(assert (=> bs!1033459 (= lambda!196264 lambda!196253)))

(declare-fun bs!1033460 () Bool)

(assert (= bs!1033460 (and b!4641128 b!4641105)))

(assert (=> bs!1033460 (= (= (ListMap!4458 Nil!51768) lt!1804096) (= lambda!196264 lambda!196261))))

(declare-fun bs!1033461 () Bool)

(assert (= bs!1033461 (and b!4641128 b!4641053)))

(assert (=> bs!1033461 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196264 lambda!196240))))

(assert (=> bs!1033461 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196264 lambda!196239))))

(declare-fun bs!1033462 () Bool)

(assert (= bs!1033462 (and b!4641128 b!4641096)))

(assert (=> bs!1033462 (= (= (ListMap!4458 Nil!51768) lt!1804074) (= lambda!196264 lambda!196256))))

(declare-fun bs!1033463 () Bool)

(assert (= bs!1033463 (and b!4641128 b!4641056)))

(assert (=> bs!1033463 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196264 lambda!196238))))

(declare-fun bs!1033464 () Bool)

(assert (= bs!1033464 (and b!4641128 b!4641108)))

(assert (=> bs!1033464 (= lambda!196264 lambda!196259)))

(declare-fun bs!1033465 () Bool)

(assert (= bs!1033465 (and b!4641128 d!1463155)))

(assert (=> bs!1033465 (= (= (ListMap!4458 Nil!51768) lt!1804080) (= lambda!196264 lambda!196257))))

(assert (=> bs!1033462 (= lambda!196264 lambda!196254)))

(assert (=> bs!1033460 (= lambda!196264 lambda!196260)))

(declare-fun bs!1033466 () Bool)

(assert (= bs!1033466 (and b!4641128 b!4641131)))

(assert (=> bs!1033466 (= lambda!196264 lambda!196263)))

(declare-fun bs!1033467 () Bool)

(assert (= bs!1033467 (and b!4641128 d!1463075)))

(assert (=> bs!1033467 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196264 lambda!196241))))

(assert (=> b!4641128 true))

(declare-fun lambda!196265 () Int)

(declare-fun lt!1804118 () ListMap!4457)

(assert (=> bs!1033458 (= (= lt!1804118 lt!1804102) (= lambda!196265 lambda!196262))))

(assert (=> bs!1033459 (= (= lt!1804118 (ListMap!4458 Nil!51768)) (= lambda!196265 lambda!196253))))

(assert (=> bs!1033460 (= (= lt!1804118 lt!1804096) (= lambda!196265 lambda!196261))))

(assert (=> bs!1033461 (= (= lt!1804118 lt!1803967) (= lambda!196265 lambda!196240))))

(assert (=> bs!1033462 (= (= lt!1804118 lt!1804074) (= lambda!196265 lambda!196256))))

(assert (=> bs!1033463 (= (= lt!1804118 lt!1803676) (= lambda!196265 lambda!196238))))

(assert (=> bs!1033464 (= (= lt!1804118 (ListMap!4458 Nil!51768)) (= lambda!196265 lambda!196259))))

(assert (=> bs!1033465 (= (= lt!1804118 lt!1804080) (= lambda!196265 lambda!196257))))

(assert (=> bs!1033462 (= (= lt!1804118 (ListMap!4458 Nil!51768)) (= lambda!196265 lambda!196254))))

(assert (=> bs!1033460 (= (= lt!1804118 (ListMap!4458 Nil!51768)) (= lambda!196265 lambda!196260))))

(assert (=> bs!1033466 (= (= lt!1804118 (ListMap!4458 Nil!51768)) (= lambda!196265 lambda!196263))))

(assert (=> bs!1033467 (= (= lt!1804118 lt!1803973) (= lambda!196265 lambda!196241))))

(assert (=> bs!1033461 (= (= lt!1804118 lt!1803676) (= lambda!196265 lambda!196239))))

(assert (=> b!4641128 (= (= lt!1804118 (ListMap!4458 Nil!51768)) (= lambda!196265 lambda!196264))))

(assert (=> b!4641128 true))

(declare-fun bs!1033468 () Bool)

(declare-fun d!1463177 () Bool)

(assert (= bs!1033468 (and d!1463177 d!1463167)))

(declare-fun lt!1804124 () ListMap!4457)

(declare-fun lambda!196266 () Int)

(assert (=> bs!1033468 (= (= lt!1804124 lt!1804102) (= lambda!196266 lambda!196262))))

(declare-fun bs!1033469 () Bool)

(assert (= bs!1033469 (and d!1463177 b!4641099)))

(assert (=> bs!1033469 (= (= lt!1804124 (ListMap!4458 Nil!51768)) (= lambda!196266 lambda!196253))))

(declare-fun bs!1033470 () Bool)

(assert (= bs!1033470 (and d!1463177 b!4641105)))

(assert (=> bs!1033470 (= (= lt!1804124 lt!1804096) (= lambda!196266 lambda!196261))))

(declare-fun bs!1033471 () Bool)

(assert (= bs!1033471 (and d!1463177 b!4641053)))

(assert (=> bs!1033471 (= (= lt!1804124 lt!1803967) (= lambda!196266 lambda!196240))))

(declare-fun bs!1033472 () Bool)

(assert (= bs!1033472 (and d!1463177 b!4641056)))

(assert (=> bs!1033472 (= (= lt!1804124 lt!1803676) (= lambda!196266 lambda!196238))))

(declare-fun bs!1033473 () Bool)

(assert (= bs!1033473 (and d!1463177 b!4641108)))

(assert (=> bs!1033473 (= (= lt!1804124 (ListMap!4458 Nil!51768)) (= lambda!196266 lambda!196259))))

(declare-fun bs!1033474 () Bool)

(assert (= bs!1033474 (and d!1463177 d!1463155)))

(assert (=> bs!1033474 (= (= lt!1804124 lt!1804080) (= lambda!196266 lambda!196257))))

(declare-fun bs!1033475 () Bool)

(assert (= bs!1033475 (and d!1463177 b!4641096)))

(assert (=> bs!1033475 (= (= lt!1804124 (ListMap!4458 Nil!51768)) (= lambda!196266 lambda!196254))))

(assert (=> bs!1033470 (= (= lt!1804124 (ListMap!4458 Nil!51768)) (= lambda!196266 lambda!196260))))

(declare-fun bs!1033476 () Bool)

(assert (= bs!1033476 (and d!1463177 b!4641131)))

(assert (=> bs!1033476 (= (= lt!1804124 (ListMap!4458 Nil!51768)) (= lambda!196266 lambda!196263))))

(declare-fun bs!1033477 () Bool)

(assert (= bs!1033477 (and d!1463177 d!1463075)))

(assert (=> bs!1033477 (= (= lt!1804124 lt!1803973) (= lambda!196266 lambda!196241))))

(assert (=> bs!1033471 (= (= lt!1804124 lt!1803676) (= lambda!196266 lambda!196239))))

(declare-fun bs!1033478 () Bool)

(assert (= bs!1033478 (and d!1463177 b!4641128)))

(assert (=> bs!1033478 (= (= lt!1804124 (ListMap!4458 Nil!51768)) (= lambda!196266 lambda!196264))))

(assert (=> bs!1033475 (= (= lt!1804124 lt!1804074) (= lambda!196266 lambda!196256))))

(assert (=> bs!1033478 (= (= lt!1804124 lt!1804118) (= lambda!196266 lambda!196265))))

(assert (=> d!1463177 true))

(declare-fun b!4641127 () Bool)

(declare-fun res!1949199 () Bool)

(declare-fun e!2895208 () Bool)

(assert (=> b!4641127 (=> (not res!1949199) (not e!2895208))))

(assert (=> b!4641127 (= res!1949199 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196266))))

(assert (=> d!1463177 e!2895208))

(declare-fun res!1949198 () Bool)

(assert (=> d!1463177 (=> (not res!1949198) (not e!2895208))))

(assert (=> d!1463177 (= res!1949198 (forall!10944 (Cons!51768 lt!1803682 lt!1803677) lambda!196266))))

(declare-fun e!2895209 () ListMap!4457)

(assert (=> d!1463177 (= lt!1804124 e!2895209)))

(declare-fun c!794182 () Bool)

(assert (=> d!1463177 (= c!794182 ((_ is Nil!51768) (Cons!51768 lt!1803682 lt!1803677)))))

(assert (=> d!1463177 (noDuplicateKeys!1594 (Cons!51768 lt!1803682 lt!1803677))))

(assert (=> d!1463177 (= (addToMapMapFromBucket!1053 (Cons!51768 lt!1803682 lt!1803677) (ListMap!4458 Nil!51768)) lt!1804124)))

(assert (=> b!4641128 (= e!2895209 lt!1804118)))

(declare-fun lt!1804125 () ListMap!4457)

(assert (=> b!4641128 (= lt!1804125 (+!1944 (ListMap!4458 Nil!51768) (h!57876 (Cons!51768 lt!1803682 lt!1803677))))))

(assert (=> b!4641128 (= lt!1804118 (addToMapMapFromBucket!1053 (t!358974 (Cons!51768 lt!1803682 lt!1803677)) (+!1944 (ListMap!4458 Nil!51768) (h!57876 (Cons!51768 lt!1803682 lt!1803677)))))))

(declare-fun lt!1804116 () Unit!115257)

(declare-fun call!323987 () Unit!115257)

(assert (=> b!4641128 (= lt!1804116 call!323987)))

(assert (=> b!4641128 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196264)))

(declare-fun lt!1804122 () Unit!115257)

(assert (=> b!4641128 (= lt!1804122 lt!1804116)))

(assert (=> b!4641128 (forall!10944 (toList!5133 lt!1804125) lambda!196265)))

(declare-fun lt!1804135 () Unit!115257)

(declare-fun Unit!115343 () Unit!115257)

(assert (=> b!4641128 (= lt!1804135 Unit!115343)))

(assert (=> b!4641128 (forall!10944 (t!358974 (Cons!51768 lt!1803682 lt!1803677)) lambda!196265)))

(declare-fun lt!1804126 () Unit!115257)

(declare-fun Unit!115344 () Unit!115257)

(assert (=> b!4641128 (= lt!1804126 Unit!115344)))

(declare-fun lt!1804134 () Unit!115257)

(declare-fun Unit!115345 () Unit!115257)

(assert (=> b!4641128 (= lt!1804134 Unit!115345)))

(declare-fun lt!1804130 () Unit!115257)

(assert (=> b!4641128 (= lt!1804130 (forallContained!3166 (toList!5133 lt!1804125) lambda!196265 (h!57876 (Cons!51768 lt!1803682 lt!1803677))))))

(assert (=> b!4641128 (contains!14891 lt!1804125 (_1!29705 (h!57876 (Cons!51768 lt!1803682 lt!1803677))))))

(declare-fun lt!1804120 () Unit!115257)

(declare-fun Unit!115346 () Unit!115257)

(assert (=> b!4641128 (= lt!1804120 Unit!115346)))

(assert (=> b!4641128 (contains!14891 lt!1804118 (_1!29705 (h!57876 (Cons!51768 lt!1803682 lt!1803677))))))

(declare-fun lt!1804117 () Unit!115257)

(declare-fun Unit!115347 () Unit!115257)

(assert (=> b!4641128 (= lt!1804117 Unit!115347)))

(assert (=> b!4641128 (forall!10944 (Cons!51768 lt!1803682 lt!1803677) lambda!196265)))

(declare-fun lt!1804127 () Unit!115257)

(declare-fun Unit!115348 () Unit!115257)

(assert (=> b!4641128 (= lt!1804127 Unit!115348)))

(declare-fun call!323989 () Bool)

(assert (=> b!4641128 call!323989))

(declare-fun lt!1804129 () Unit!115257)

(declare-fun Unit!115349 () Unit!115257)

(assert (=> b!4641128 (= lt!1804129 Unit!115349)))

(declare-fun lt!1804131 () Unit!115257)

(declare-fun Unit!115350 () Unit!115257)

(assert (=> b!4641128 (= lt!1804131 Unit!115350)))

(declare-fun lt!1804123 () Unit!115257)

(assert (=> b!4641128 (= lt!1804123 (addForallContainsKeyThenBeforeAdding!563 (ListMap!4458 Nil!51768) lt!1804118 (_1!29705 (h!57876 (Cons!51768 lt!1803682 lt!1803677))) (_2!29705 (h!57876 (Cons!51768 lt!1803682 lt!1803677)))))))

(declare-fun call!323988 () Bool)

(assert (=> b!4641128 call!323988))

(declare-fun lt!1804121 () Unit!115257)

(assert (=> b!4641128 (= lt!1804121 lt!1804123)))

(assert (=> b!4641128 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196265)))

(declare-fun lt!1804132 () Unit!115257)

(declare-fun Unit!115351 () Unit!115257)

(assert (=> b!4641128 (= lt!1804132 Unit!115351)))

(declare-fun res!1949200 () Bool)

(assert (=> b!4641128 (= res!1949200 (forall!10944 (Cons!51768 lt!1803682 lt!1803677) lambda!196265))))

(declare-fun e!2895207 () Bool)

(assert (=> b!4641128 (=> (not res!1949200) (not e!2895207))))

(assert (=> b!4641128 e!2895207))

(declare-fun lt!1804133 () Unit!115257)

(declare-fun Unit!115352 () Unit!115257)

(assert (=> b!4641128 (= lt!1804133 Unit!115352)))

(declare-fun b!4641129 () Bool)

(assert (=> b!4641129 (= e!2895208 (invariantList!1262 (toList!5133 lt!1804124)))))

(declare-fun bm!323982 () Bool)

(assert (=> bm!323982 (= call!323988 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) (ite c!794182 lambda!196263 lambda!196265)))))

(declare-fun b!4641130 () Bool)

(assert (=> b!4641130 (= e!2895207 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196265))))

(assert (=> b!4641131 (= e!2895209 (ListMap!4458 Nil!51768))))

(declare-fun lt!1804119 () Unit!115257)

(assert (=> b!4641131 (= lt!1804119 call!323987)))

(assert (=> b!4641131 call!323989))

(declare-fun lt!1804128 () Unit!115257)

(assert (=> b!4641131 (= lt!1804128 lt!1804119)))

(assert (=> b!4641131 call!323988))

(declare-fun lt!1804115 () Unit!115257)

(declare-fun Unit!115353 () Unit!115257)

(assert (=> b!4641131 (= lt!1804115 Unit!115353)))

(declare-fun bm!323983 () Bool)

(assert (=> bm!323983 (= call!323989 (forall!10944 (ite c!794182 (toList!5133 (ListMap!4458 Nil!51768)) (toList!5133 lt!1804125)) (ite c!794182 lambda!196263 lambda!196265)))))

(declare-fun bm!323984 () Bool)

(assert (=> bm!323984 (= call!323987 (lemmaContainsAllItsOwnKeys!564 (ListMap!4458 Nil!51768)))))

(assert (= (and d!1463177 c!794182) b!4641131))

(assert (= (and d!1463177 (not c!794182)) b!4641128))

(assert (= (and b!4641128 res!1949200) b!4641130))

(assert (= (or b!4641131 b!4641128) bm!323984))

(assert (= (or b!4641131 b!4641128) bm!323983))

(assert (= (or b!4641131 b!4641128) bm!323982))

(assert (= (and d!1463177 res!1949198) b!4641127))

(assert (= (and b!4641127 res!1949199) b!4641129))

(declare-fun m!5501207 () Bool)

(assert (=> b!4641127 m!5501207))

(declare-fun m!5501209 () Bool)

(assert (=> bm!323983 m!5501209))

(declare-fun m!5501211 () Bool)

(assert (=> b!4641128 m!5501211))

(declare-fun m!5501213 () Bool)

(assert (=> b!4641128 m!5501213))

(declare-fun m!5501215 () Bool)

(assert (=> b!4641128 m!5501215))

(declare-fun m!5501217 () Bool)

(assert (=> b!4641128 m!5501217))

(declare-fun m!5501219 () Bool)

(assert (=> b!4641128 m!5501219))

(declare-fun m!5501221 () Bool)

(assert (=> b!4641128 m!5501221))

(declare-fun m!5501223 () Bool)

(assert (=> b!4641128 m!5501223))

(declare-fun m!5501225 () Bool)

(assert (=> b!4641128 m!5501225))

(declare-fun m!5501227 () Bool)

(assert (=> b!4641128 m!5501227))

(declare-fun m!5501229 () Bool)

(assert (=> b!4641128 m!5501229))

(assert (=> b!4641128 m!5501223))

(assert (=> b!4641128 m!5501219))

(declare-fun m!5501231 () Bool)

(assert (=> b!4641128 m!5501231))

(declare-fun m!5501233 () Bool)

(assert (=> d!1463177 m!5501233))

(declare-fun m!5501235 () Bool)

(assert (=> d!1463177 m!5501235))

(declare-fun m!5501237 () Bool)

(assert (=> b!4641129 m!5501237))

(assert (=> b!4641130 m!5501227))

(assert (=> bm!323984 m!5501153))

(declare-fun m!5501239 () Bool)

(assert (=> bm!323982 m!5501239))

(assert (=> b!4640838 d!1463177))

(declare-fun d!1463179 () Bool)

(declare-fun e!2895210 () Bool)

(assert (=> d!1463179 e!2895210))

(declare-fun res!1949201 () Bool)

(assert (=> d!1463179 (=> (not res!1949201) (not e!2895210))))

(declare-fun lt!1804138 () ListMap!4457)

(assert (=> d!1463179 (= res!1949201 (contains!14891 lt!1804138 (_1!29705 lt!1803686)))))

(declare-fun lt!1804139 () List!51892)

(assert (=> d!1463179 (= lt!1804138 (ListMap!4458 lt!1804139))))

(declare-fun lt!1804137 () Unit!115257)

(declare-fun lt!1804136 () Unit!115257)

(assert (=> d!1463179 (= lt!1804137 lt!1804136)))

(assert (=> d!1463179 (= (getValueByKey!1557 lt!1804139 (_1!29705 lt!1803686)) (Some!11752 (_2!29705 lt!1803686)))))

(assert (=> d!1463179 (= lt!1804136 (lemmaContainsTupThenGetReturnValue!897 lt!1804139 (_1!29705 lt!1803686) (_2!29705 lt!1803686)))))

(assert (=> d!1463179 (= lt!1804139 (insertNoDuplicatedKeys!405 (toList!5133 (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768))) (_1!29705 lt!1803686) (_2!29705 lt!1803686)))))

(assert (=> d!1463179 (= (+!1944 (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768)) lt!1803686) lt!1804138)))

(declare-fun b!4641132 () Bool)

(declare-fun res!1949202 () Bool)

(assert (=> b!4641132 (=> (not res!1949202) (not e!2895210))))

(assert (=> b!4641132 (= res!1949202 (= (getValueByKey!1557 (toList!5133 lt!1804138) (_1!29705 lt!1803686)) (Some!11752 (_2!29705 lt!1803686))))))

(declare-fun b!4641133 () Bool)

(assert (=> b!4641133 (= e!2895210 (contains!14897 (toList!5133 lt!1804138) lt!1803686))))

(assert (= (and d!1463179 res!1949201) b!4641132))

(assert (= (and b!4641132 res!1949202) b!4641133))

(declare-fun m!5501241 () Bool)

(assert (=> d!1463179 m!5501241))

(declare-fun m!5501243 () Bool)

(assert (=> d!1463179 m!5501243))

(declare-fun m!5501245 () Bool)

(assert (=> d!1463179 m!5501245))

(declare-fun m!5501247 () Bool)

(assert (=> d!1463179 m!5501247))

(declare-fun m!5501249 () Bool)

(assert (=> b!4641132 m!5501249))

(declare-fun m!5501251 () Bool)

(assert (=> b!4641133 m!5501251))

(assert (=> b!4640838 d!1463179))

(declare-fun b!4641134 () Bool)

(assert (=> b!4641134 false))

(declare-fun lt!1804143 () Unit!115257)

(declare-fun lt!1804145 () Unit!115257)

(assert (=> b!4641134 (= lt!1804143 lt!1804145)))

(assert (=> b!4641134 (containsKey!2631 (toList!5133 (extractMap!1650 lt!1803683)) key!4968)))

(assert (=> b!4641134 (= lt!1804145 (lemmaInGetKeysListThenContainsKey!712 (toList!5133 (extractMap!1650 lt!1803683)) key!4968))))

(declare-fun e!2895213 () Unit!115257)

(declare-fun Unit!115354 () Unit!115257)

(assert (=> b!4641134 (= e!2895213 Unit!115354)))

(declare-fun b!4641135 () Bool)

(declare-fun e!2895212 () Bool)

(declare-fun e!2895215 () Bool)

(assert (=> b!4641135 (= e!2895212 e!2895215)))

(declare-fun res!1949204 () Bool)

(assert (=> b!4641135 (=> (not res!1949204) (not e!2895215))))

(assert (=> b!4641135 (= res!1949204 (isDefined!9018 (getValueByKey!1557 (toList!5133 (extractMap!1650 lt!1803683)) key!4968)))))

(declare-fun bm!323985 () Bool)

(declare-fun call!323990 () Bool)

(declare-fun e!2895216 () List!51895)

(assert (=> bm!323985 (= call!323990 (contains!14896 e!2895216 key!4968))))

(declare-fun c!794185 () Bool)

(declare-fun c!794184 () Bool)

(assert (=> bm!323985 (= c!794185 c!794184)))

(declare-fun b!4641136 () Bool)

(declare-fun Unit!115355 () Unit!115257)

(assert (=> b!4641136 (= e!2895213 Unit!115355)))

(declare-fun b!4641137 () Bool)

(assert (=> b!4641137 (= e!2895216 (keys!18300 (extractMap!1650 lt!1803683)))))

(declare-fun d!1463181 () Bool)

(assert (=> d!1463181 e!2895212))

(declare-fun res!1949205 () Bool)

(assert (=> d!1463181 (=> res!1949205 e!2895212)))

(declare-fun e!2895211 () Bool)

(assert (=> d!1463181 (= res!1949205 e!2895211)))

(declare-fun res!1949203 () Bool)

(assert (=> d!1463181 (=> (not res!1949203) (not e!2895211))))

(declare-fun lt!1804141 () Bool)

(assert (=> d!1463181 (= res!1949203 (not lt!1804141))))

(declare-fun lt!1804142 () Bool)

(assert (=> d!1463181 (= lt!1804141 lt!1804142)))

(declare-fun lt!1804147 () Unit!115257)

(declare-fun e!2895214 () Unit!115257)

(assert (=> d!1463181 (= lt!1804147 e!2895214)))

(assert (=> d!1463181 (= c!794184 lt!1804142)))

(assert (=> d!1463181 (= lt!1804142 (containsKey!2631 (toList!5133 (extractMap!1650 lt!1803683)) key!4968))))

(assert (=> d!1463181 (= (contains!14891 (extractMap!1650 lt!1803683) key!4968) lt!1804141)))

(declare-fun b!4641138 () Bool)

(assert (=> b!4641138 (= e!2895216 (getKeysList!713 (toList!5133 (extractMap!1650 lt!1803683))))))

(declare-fun b!4641139 () Bool)

(assert (=> b!4641139 (= e!2895214 e!2895213)))

(declare-fun c!794183 () Bool)

(assert (=> b!4641139 (= c!794183 call!323990)))

(declare-fun b!4641140 () Bool)

(assert (=> b!4641140 (= e!2895211 (not (contains!14896 (keys!18300 (extractMap!1650 lt!1803683)) key!4968)))))

(declare-fun b!4641141 () Bool)

(declare-fun lt!1804140 () Unit!115257)

(assert (=> b!4641141 (= e!2895214 lt!1804140)))

(declare-fun lt!1804144 () Unit!115257)

(assert (=> b!4641141 (= lt!1804144 (lemmaContainsKeyImpliesGetValueByKeyDefined!1459 (toList!5133 (extractMap!1650 lt!1803683)) key!4968))))

(assert (=> b!4641141 (isDefined!9018 (getValueByKey!1557 (toList!5133 (extractMap!1650 lt!1803683)) key!4968))))

(declare-fun lt!1804146 () Unit!115257)

(assert (=> b!4641141 (= lt!1804146 lt!1804144)))

(assert (=> b!4641141 (= lt!1804140 (lemmaInListThenGetKeysListContains!708 (toList!5133 (extractMap!1650 lt!1803683)) key!4968))))

(assert (=> b!4641141 call!323990))

(declare-fun b!4641142 () Bool)

(assert (=> b!4641142 (= e!2895215 (contains!14896 (keys!18300 (extractMap!1650 lt!1803683)) key!4968))))

(assert (= (and d!1463181 c!794184) b!4641141))

(assert (= (and d!1463181 (not c!794184)) b!4641139))

(assert (= (and b!4641139 c!794183) b!4641134))

(assert (= (and b!4641139 (not c!794183)) b!4641136))

(assert (= (or b!4641141 b!4641139) bm!323985))

(assert (= (and bm!323985 c!794185) b!4641138))

(assert (= (and bm!323985 (not c!794185)) b!4641137))

(assert (= (and d!1463181 res!1949203) b!4641140))

(assert (= (and d!1463181 (not res!1949205)) b!4641135))

(assert (= (and b!4641135 res!1949204) b!4641142))

(declare-fun m!5501253 () Bool)

(assert (=> b!4641141 m!5501253))

(declare-fun m!5501255 () Bool)

(assert (=> b!4641141 m!5501255))

(assert (=> b!4641141 m!5501255))

(declare-fun m!5501257 () Bool)

(assert (=> b!4641141 m!5501257))

(declare-fun m!5501259 () Bool)

(assert (=> b!4641141 m!5501259))

(assert (=> b!4641135 m!5501255))

(assert (=> b!4641135 m!5501255))

(assert (=> b!4641135 m!5501257))

(assert (=> b!4641140 m!5500585))

(declare-fun m!5501261 () Bool)

(assert (=> b!4641140 m!5501261))

(assert (=> b!4641140 m!5501261))

(declare-fun m!5501263 () Bool)

(assert (=> b!4641140 m!5501263))

(assert (=> b!4641142 m!5500585))

(assert (=> b!4641142 m!5501261))

(assert (=> b!4641142 m!5501261))

(assert (=> b!4641142 m!5501263))

(declare-fun m!5501265 () Bool)

(assert (=> b!4641134 m!5501265))

(declare-fun m!5501267 () Bool)

(assert (=> b!4641134 m!5501267))

(assert (=> b!4641137 m!5500585))

(assert (=> b!4641137 m!5501261))

(assert (=> d!1463181 m!5501265))

(declare-fun m!5501269 () Bool)

(assert (=> bm!323985 m!5501269))

(declare-fun m!5501271 () Bool)

(assert (=> b!4641138 m!5501271))

(assert (=> b!4640838 d!1463181))

(declare-fun bs!1033479 () Bool)

(declare-fun d!1463183 () Bool)

(assert (= bs!1033479 (and d!1463183 b!4640840)))

(declare-fun lambda!196269 () Int)

(assert (=> bs!1033479 (= lambda!196269 lambda!196146)))

(declare-fun bs!1033480 () Bool)

(assert (= bs!1033480 (and d!1463183 d!1463073)))

(assert (=> bs!1033480 (= lambda!196269 lambda!196155)))

(declare-fun bs!1033481 () Bool)

(assert (= bs!1033481 (and d!1463183 d!1463121)))

(assert (=> bs!1033481 (= lambda!196269 lambda!196242)))

(declare-fun bs!1033482 () Bool)

(assert (= bs!1033482 (and d!1463183 d!1463135)))

(assert (=> bs!1033482 (= lambda!196269 lambda!196247)))

(assert (=> d!1463183 (contains!14891 (extractMap!1650 (toList!5134 (ListLongMap!3704 lt!1803683))) key!4968)))

(declare-fun lt!1804150 () Unit!115257)

(declare-fun choose!31773 (ListLongMap!3703 K!13135 Hashable!5991) Unit!115257)

(assert (=> d!1463183 (= lt!1804150 (choose!31773 (ListLongMap!3704 lt!1803683) key!4968 hashF!1389))))

(assert (=> d!1463183 (forall!10943 (toList!5134 (ListLongMap!3704 lt!1803683)) lambda!196269)))

(assert (=> d!1463183 (= (lemmaListContainsThenExtractedMapContains!372 (ListLongMap!3704 lt!1803683) key!4968 hashF!1389) lt!1804150)))

(declare-fun bs!1033483 () Bool)

(assert (= bs!1033483 d!1463183))

(declare-fun m!5501273 () Bool)

(assert (=> bs!1033483 m!5501273))

(assert (=> bs!1033483 m!5501273))

(declare-fun m!5501275 () Bool)

(assert (=> bs!1033483 m!5501275))

(declare-fun m!5501277 () Bool)

(assert (=> bs!1033483 m!5501277))

(declare-fun m!5501279 () Bool)

(assert (=> bs!1033483 m!5501279))

(assert (=> b!4640838 d!1463183))

(declare-fun bs!1033484 () Bool)

(declare-fun b!4641147 () Bool)

(assert (= bs!1033484 (and b!4641147 d!1463167)))

(declare-fun lambda!196270 () Int)

(assert (=> bs!1033484 (= (= (ListMap!4458 Nil!51768) lt!1804102) (= lambda!196270 lambda!196262))))

(declare-fun bs!1033485 () Bool)

(assert (= bs!1033485 (and b!4641147 b!4641099)))

(assert (=> bs!1033485 (= lambda!196270 lambda!196253)))

(declare-fun bs!1033486 () Bool)

(assert (= bs!1033486 (and b!4641147 b!4641105)))

(assert (=> bs!1033486 (= (= (ListMap!4458 Nil!51768) lt!1804096) (= lambda!196270 lambda!196261))))

(declare-fun bs!1033487 () Bool)

(assert (= bs!1033487 (and b!4641147 b!4641053)))

(assert (=> bs!1033487 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196270 lambda!196240))))

(declare-fun bs!1033488 () Bool)

(assert (= bs!1033488 (and b!4641147 d!1463177)))

(assert (=> bs!1033488 (= (= (ListMap!4458 Nil!51768) lt!1804124) (= lambda!196270 lambda!196266))))

(declare-fun bs!1033489 () Bool)

(assert (= bs!1033489 (and b!4641147 b!4641056)))

(assert (=> bs!1033489 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196270 lambda!196238))))

(declare-fun bs!1033490 () Bool)

(assert (= bs!1033490 (and b!4641147 b!4641108)))

(assert (=> bs!1033490 (= lambda!196270 lambda!196259)))

(declare-fun bs!1033491 () Bool)

(assert (= bs!1033491 (and b!4641147 d!1463155)))

(assert (=> bs!1033491 (= (= (ListMap!4458 Nil!51768) lt!1804080) (= lambda!196270 lambda!196257))))

(declare-fun bs!1033492 () Bool)

(assert (= bs!1033492 (and b!4641147 b!4641096)))

(assert (=> bs!1033492 (= lambda!196270 lambda!196254)))

(assert (=> bs!1033486 (= lambda!196270 lambda!196260)))

(declare-fun bs!1033493 () Bool)

(assert (= bs!1033493 (and b!4641147 b!4641131)))

(assert (=> bs!1033493 (= lambda!196270 lambda!196263)))

(declare-fun bs!1033494 () Bool)

(assert (= bs!1033494 (and b!4641147 d!1463075)))

(assert (=> bs!1033494 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196270 lambda!196241))))

(assert (=> bs!1033487 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196270 lambda!196239))))

(declare-fun bs!1033495 () Bool)

(assert (= bs!1033495 (and b!4641147 b!4641128)))

(assert (=> bs!1033495 (= lambda!196270 lambda!196264)))

(assert (=> bs!1033492 (= (= (ListMap!4458 Nil!51768) lt!1804074) (= lambda!196270 lambda!196256))))

(assert (=> bs!1033495 (= (= (ListMap!4458 Nil!51768) lt!1804118) (= lambda!196270 lambda!196265))))

(assert (=> b!4641147 true))

(declare-fun bs!1033496 () Bool)

(declare-fun b!4641144 () Bool)

(assert (= bs!1033496 (and b!4641144 d!1463167)))

(declare-fun lambda!196271 () Int)

(assert (=> bs!1033496 (= (= (ListMap!4458 Nil!51768) lt!1804102) (= lambda!196271 lambda!196262))))

(declare-fun bs!1033497 () Bool)

(assert (= bs!1033497 (and b!4641144 b!4641099)))

(assert (=> bs!1033497 (= lambda!196271 lambda!196253)))

(declare-fun bs!1033498 () Bool)

(assert (= bs!1033498 (and b!4641144 b!4641105)))

(assert (=> bs!1033498 (= (= (ListMap!4458 Nil!51768) lt!1804096) (= lambda!196271 lambda!196261))))

(declare-fun bs!1033499 () Bool)

(assert (= bs!1033499 (and b!4641144 b!4641053)))

(assert (=> bs!1033499 (= (= (ListMap!4458 Nil!51768) lt!1803967) (= lambda!196271 lambda!196240))))

(declare-fun bs!1033500 () Bool)

(assert (= bs!1033500 (and b!4641144 d!1463177)))

(assert (=> bs!1033500 (= (= (ListMap!4458 Nil!51768) lt!1804124) (= lambda!196271 lambda!196266))))

(declare-fun bs!1033501 () Bool)

(assert (= bs!1033501 (and b!4641144 b!4641147)))

(assert (=> bs!1033501 (= lambda!196271 lambda!196270)))

(declare-fun bs!1033502 () Bool)

(assert (= bs!1033502 (and b!4641144 b!4641056)))

(assert (=> bs!1033502 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196271 lambda!196238))))

(declare-fun bs!1033503 () Bool)

(assert (= bs!1033503 (and b!4641144 b!4641108)))

(assert (=> bs!1033503 (= lambda!196271 lambda!196259)))

(declare-fun bs!1033504 () Bool)

(assert (= bs!1033504 (and b!4641144 d!1463155)))

(assert (=> bs!1033504 (= (= (ListMap!4458 Nil!51768) lt!1804080) (= lambda!196271 lambda!196257))))

(declare-fun bs!1033505 () Bool)

(assert (= bs!1033505 (and b!4641144 b!4641096)))

(assert (=> bs!1033505 (= lambda!196271 lambda!196254)))

(assert (=> bs!1033498 (= lambda!196271 lambda!196260)))

(declare-fun bs!1033506 () Bool)

(assert (= bs!1033506 (and b!4641144 b!4641131)))

(assert (=> bs!1033506 (= lambda!196271 lambda!196263)))

(declare-fun bs!1033507 () Bool)

(assert (= bs!1033507 (and b!4641144 d!1463075)))

(assert (=> bs!1033507 (= (= (ListMap!4458 Nil!51768) lt!1803973) (= lambda!196271 lambda!196241))))

(assert (=> bs!1033499 (= (= (ListMap!4458 Nil!51768) lt!1803676) (= lambda!196271 lambda!196239))))

(declare-fun bs!1033508 () Bool)

(assert (= bs!1033508 (and b!4641144 b!4641128)))

(assert (=> bs!1033508 (= lambda!196271 lambda!196264)))

(assert (=> bs!1033505 (= (= (ListMap!4458 Nil!51768) lt!1804074) (= lambda!196271 lambda!196256))))

(assert (=> bs!1033508 (= (= (ListMap!4458 Nil!51768) lt!1804118) (= lambda!196271 lambda!196265))))

(assert (=> b!4641144 true))

(declare-fun lt!1804154 () ListMap!4457)

(declare-fun lambda!196272 () Int)

(assert (=> bs!1033496 (= (= lt!1804154 lt!1804102) (= lambda!196272 lambda!196262))))

(assert (=> bs!1033497 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196253))))

(assert (=> bs!1033498 (= (= lt!1804154 lt!1804096) (= lambda!196272 lambda!196261))))

(assert (=> bs!1033499 (= (= lt!1804154 lt!1803967) (= lambda!196272 lambda!196240))))

(assert (=> bs!1033500 (= (= lt!1804154 lt!1804124) (= lambda!196272 lambda!196266))))

(assert (=> bs!1033501 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196270))))

(assert (=> bs!1033502 (= (= lt!1804154 lt!1803676) (= lambda!196272 lambda!196238))))

(assert (=> b!4641144 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196271))))

(assert (=> bs!1033503 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196259))))

(assert (=> bs!1033504 (= (= lt!1804154 lt!1804080) (= lambda!196272 lambda!196257))))

(assert (=> bs!1033505 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196254))))

(assert (=> bs!1033498 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196260))))

(assert (=> bs!1033506 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196263))))

(assert (=> bs!1033507 (= (= lt!1804154 lt!1803973) (= lambda!196272 lambda!196241))))

(assert (=> bs!1033499 (= (= lt!1804154 lt!1803676) (= lambda!196272 lambda!196239))))

(assert (=> bs!1033508 (= (= lt!1804154 (ListMap!4458 Nil!51768)) (= lambda!196272 lambda!196264))))

(assert (=> bs!1033505 (= (= lt!1804154 lt!1804074) (= lambda!196272 lambda!196256))))

(assert (=> bs!1033508 (= (= lt!1804154 lt!1804118) (= lambda!196272 lambda!196265))))

(assert (=> b!4641144 true))

(declare-fun bs!1033509 () Bool)

(declare-fun d!1463185 () Bool)

(assert (= bs!1033509 (and d!1463185 b!4641099)))

(declare-fun lt!1804160 () ListMap!4457)

(declare-fun lambda!196273 () Int)

(assert (=> bs!1033509 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196253))))

(declare-fun bs!1033510 () Bool)

(assert (= bs!1033510 (and d!1463185 b!4641105)))

(assert (=> bs!1033510 (= (= lt!1804160 lt!1804096) (= lambda!196273 lambda!196261))))

(declare-fun bs!1033511 () Bool)

(assert (= bs!1033511 (and d!1463185 b!4641053)))

(assert (=> bs!1033511 (= (= lt!1804160 lt!1803967) (= lambda!196273 lambda!196240))))

(declare-fun bs!1033512 () Bool)

(assert (= bs!1033512 (and d!1463185 d!1463177)))

(assert (=> bs!1033512 (= (= lt!1804160 lt!1804124) (= lambda!196273 lambda!196266))))

(declare-fun bs!1033513 () Bool)

(assert (= bs!1033513 (and d!1463185 b!4641147)))

(assert (=> bs!1033513 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196270))))

(declare-fun bs!1033514 () Bool)

(assert (= bs!1033514 (and d!1463185 b!4641056)))

(assert (=> bs!1033514 (= (= lt!1804160 lt!1803676) (= lambda!196273 lambda!196238))))

(declare-fun bs!1033515 () Bool)

(assert (= bs!1033515 (and d!1463185 b!4641144)))

(assert (=> bs!1033515 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196271))))

(assert (=> bs!1033515 (= (= lt!1804160 lt!1804154) (= lambda!196273 lambda!196272))))

(declare-fun bs!1033516 () Bool)

(assert (= bs!1033516 (and d!1463185 d!1463167)))

(assert (=> bs!1033516 (= (= lt!1804160 lt!1804102) (= lambda!196273 lambda!196262))))

(declare-fun bs!1033517 () Bool)

(assert (= bs!1033517 (and d!1463185 b!4641108)))

(assert (=> bs!1033517 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196259))))

(declare-fun bs!1033518 () Bool)

(assert (= bs!1033518 (and d!1463185 d!1463155)))

(assert (=> bs!1033518 (= (= lt!1804160 lt!1804080) (= lambda!196273 lambda!196257))))

(declare-fun bs!1033519 () Bool)

(assert (= bs!1033519 (and d!1463185 b!4641096)))

(assert (=> bs!1033519 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196254))))

(assert (=> bs!1033510 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196260))))

(declare-fun bs!1033520 () Bool)

(assert (= bs!1033520 (and d!1463185 b!4641131)))

(assert (=> bs!1033520 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196263))))

(declare-fun bs!1033521 () Bool)

(assert (= bs!1033521 (and d!1463185 d!1463075)))

(assert (=> bs!1033521 (= (= lt!1804160 lt!1803973) (= lambda!196273 lambda!196241))))

(assert (=> bs!1033511 (= (= lt!1804160 lt!1803676) (= lambda!196273 lambda!196239))))

(declare-fun bs!1033522 () Bool)

(assert (= bs!1033522 (and d!1463185 b!4641128)))

(assert (=> bs!1033522 (= (= lt!1804160 (ListMap!4458 Nil!51768)) (= lambda!196273 lambda!196264))))

(assert (=> bs!1033519 (= (= lt!1804160 lt!1804074) (= lambda!196273 lambda!196256))))

(assert (=> bs!1033522 (= (= lt!1804160 lt!1804118) (= lambda!196273 lambda!196265))))

(assert (=> d!1463185 true))

(declare-fun b!4641143 () Bool)

(declare-fun res!1949207 () Bool)

(declare-fun e!2895218 () Bool)

(assert (=> b!4641143 (=> (not res!1949207) (not e!2895218))))

(assert (=> b!4641143 (= res!1949207 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196273))))

(assert (=> d!1463185 e!2895218))

(declare-fun res!1949206 () Bool)

(assert (=> d!1463185 (=> (not res!1949206) (not e!2895218))))

(assert (=> d!1463185 (= res!1949206 (forall!10944 lt!1803669 lambda!196273))))

(declare-fun e!2895219 () ListMap!4457)

(assert (=> d!1463185 (= lt!1804160 e!2895219)))

(declare-fun c!794186 () Bool)

(assert (=> d!1463185 (= c!794186 ((_ is Nil!51768) lt!1803669))))

(assert (=> d!1463185 (noDuplicateKeys!1594 lt!1803669)))

(assert (=> d!1463185 (= (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768)) lt!1804160)))

(assert (=> b!4641144 (= e!2895219 lt!1804154)))

(declare-fun lt!1804161 () ListMap!4457)

(assert (=> b!4641144 (= lt!1804161 (+!1944 (ListMap!4458 Nil!51768) (h!57876 lt!1803669)))))

(assert (=> b!4641144 (= lt!1804154 (addToMapMapFromBucket!1053 (t!358974 lt!1803669) (+!1944 (ListMap!4458 Nil!51768) (h!57876 lt!1803669))))))

(declare-fun lt!1804152 () Unit!115257)

(declare-fun call!323991 () Unit!115257)

(assert (=> b!4641144 (= lt!1804152 call!323991)))

(assert (=> b!4641144 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196271)))

(declare-fun lt!1804158 () Unit!115257)

(assert (=> b!4641144 (= lt!1804158 lt!1804152)))

(assert (=> b!4641144 (forall!10944 (toList!5133 lt!1804161) lambda!196272)))

(declare-fun lt!1804171 () Unit!115257)

(declare-fun Unit!115367 () Unit!115257)

(assert (=> b!4641144 (= lt!1804171 Unit!115367)))

(assert (=> b!4641144 (forall!10944 (t!358974 lt!1803669) lambda!196272)))

(declare-fun lt!1804162 () Unit!115257)

(declare-fun Unit!115368 () Unit!115257)

(assert (=> b!4641144 (= lt!1804162 Unit!115368)))

(declare-fun lt!1804170 () Unit!115257)

(declare-fun Unit!115369 () Unit!115257)

(assert (=> b!4641144 (= lt!1804170 Unit!115369)))

(declare-fun lt!1804166 () Unit!115257)

(assert (=> b!4641144 (= lt!1804166 (forallContained!3166 (toList!5133 lt!1804161) lambda!196272 (h!57876 lt!1803669)))))

(assert (=> b!4641144 (contains!14891 lt!1804161 (_1!29705 (h!57876 lt!1803669)))))

(declare-fun lt!1804156 () Unit!115257)

(declare-fun Unit!115370 () Unit!115257)

(assert (=> b!4641144 (= lt!1804156 Unit!115370)))

(assert (=> b!4641144 (contains!14891 lt!1804154 (_1!29705 (h!57876 lt!1803669)))))

(declare-fun lt!1804153 () Unit!115257)

(declare-fun Unit!115371 () Unit!115257)

(assert (=> b!4641144 (= lt!1804153 Unit!115371)))

(assert (=> b!4641144 (forall!10944 lt!1803669 lambda!196272)))

(declare-fun lt!1804163 () Unit!115257)

(declare-fun Unit!115372 () Unit!115257)

(assert (=> b!4641144 (= lt!1804163 Unit!115372)))

(declare-fun call!323993 () Bool)

(assert (=> b!4641144 call!323993))

(declare-fun lt!1804165 () Unit!115257)

(declare-fun Unit!115373 () Unit!115257)

(assert (=> b!4641144 (= lt!1804165 Unit!115373)))

(declare-fun lt!1804167 () Unit!115257)

(declare-fun Unit!115374 () Unit!115257)

(assert (=> b!4641144 (= lt!1804167 Unit!115374)))

(declare-fun lt!1804159 () Unit!115257)

(assert (=> b!4641144 (= lt!1804159 (addForallContainsKeyThenBeforeAdding!563 (ListMap!4458 Nil!51768) lt!1804154 (_1!29705 (h!57876 lt!1803669)) (_2!29705 (h!57876 lt!1803669))))))

(declare-fun call!323992 () Bool)

(assert (=> b!4641144 call!323992))

(declare-fun lt!1804157 () Unit!115257)

(assert (=> b!4641144 (= lt!1804157 lt!1804159)))

(assert (=> b!4641144 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196272)))

(declare-fun lt!1804168 () Unit!115257)

(declare-fun Unit!115375 () Unit!115257)

(assert (=> b!4641144 (= lt!1804168 Unit!115375)))

(declare-fun res!1949208 () Bool)

(assert (=> b!4641144 (= res!1949208 (forall!10944 lt!1803669 lambda!196272))))

(declare-fun e!2895217 () Bool)

(assert (=> b!4641144 (=> (not res!1949208) (not e!2895217))))

(assert (=> b!4641144 e!2895217))

(declare-fun lt!1804169 () Unit!115257)

(declare-fun Unit!115376 () Unit!115257)

(assert (=> b!4641144 (= lt!1804169 Unit!115376)))

(declare-fun b!4641145 () Bool)

(assert (=> b!4641145 (= e!2895218 (invariantList!1262 (toList!5133 lt!1804160)))))

(declare-fun bm!323986 () Bool)

(assert (=> bm!323986 (= call!323992 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) (ite c!794186 lambda!196270 lambda!196272)))))

(declare-fun b!4641146 () Bool)

(assert (=> b!4641146 (= e!2895217 (forall!10944 (toList!5133 (ListMap!4458 Nil!51768)) lambda!196272))))

(assert (=> b!4641147 (= e!2895219 (ListMap!4458 Nil!51768))))

(declare-fun lt!1804155 () Unit!115257)

(assert (=> b!4641147 (= lt!1804155 call!323991)))

(assert (=> b!4641147 call!323993))

(declare-fun lt!1804164 () Unit!115257)

(assert (=> b!4641147 (= lt!1804164 lt!1804155)))

(assert (=> b!4641147 call!323992))

(declare-fun lt!1804151 () Unit!115257)

(declare-fun Unit!115377 () Unit!115257)

(assert (=> b!4641147 (= lt!1804151 Unit!115377)))

(declare-fun bm!323987 () Bool)

(assert (=> bm!323987 (= call!323993 (forall!10944 (ite c!794186 (toList!5133 (ListMap!4458 Nil!51768)) (toList!5133 lt!1804161)) (ite c!794186 lambda!196270 lambda!196272)))))

(declare-fun bm!323988 () Bool)

(assert (=> bm!323988 (= call!323991 (lemmaContainsAllItsOwnKeys!564 (ListMap!4458 Nil!51768)))))

(assert (= (and d!1463185 c!794186) b!4641147))

(assert (= (and d!1463185 (not c!794186)) b!4641144))

(assert (= (and b!4641144 res!1949208) b!4641146))

(assert (= (or b!4641147 b!4641144) bm!323988))

(assert (= (or b!4641147 b!4641144) bm!323987))

(assert (= (or b!4641147 b!4641144) bm!323986))

(assert (= (and d!1463185 res!1949206) b!4641143))

(assert (= (and b!4641143 res!1949207) b!4641145))

(declare-fun m!5501281 () Bool)

(assert (=> b!4641143 m!5501281))

(declare-fun m!5501283 () Bool)

(assert (=> bm!323987 m!5501283))

(declare-fun m!5501285 () Bool)

(assert (=> b!4641144 m!5501285))

(declare-fun m!5501287 () Bool)

(assert (=> b!4641144 m!5501287))

(declare-fun m!5501289 () Bool)

(assert (=> b!4641144 m!5501289))

(declare-fun m!5501291 () Bool)

(assert (=> b!4641144 m!5501291))

(declare-fun m!5501293 () Bool)

(assert (=> b!4641144 m!5501293))

(declare-fun m!5501295 () Bool)

(assert (=> b!4641144 m!5501295))

(declare-fun m!5501297 () Bool)

(assert (=> b!4641144 m!5501297))

(declare-fun m!5501299 () Bool)

(assert (=> b!4641144 m!5501299))

(declare-fun m!5501301 () Bool)

(assert (=> b!4641144 m!5501301))

(declare-fun m!5501303 () Bool)

(assert (=> b!4641144 m!5501303))

(assert (=> b!4641144 m!5501297))

(assert (=> b!4641144 m!5501293))

(declare-fun m!5501305 () Bool)

(assert (=> b!4641144 m!5501305))

(declare-fun m!5501307 () Bool)

(assert (=> d!1463185 m!5501307))

(declare-fun m!5501309 () Bool)

(assert (=> d!1463185 m!5501309))

(declare-fun m!5501311 () Bool)

(assert (=> b!4641145 m!5501311))

(assert (=> b!4641146 m!5501301))

(assert (=> bm!323988 m!5501153))

(declare-fun m!5501313 () Bool)

(assert (=> bm!323986 m!5501313))

(assert (=> b!4640838 d!1463185))

(declare-fun d!1463187 () Bool)

(assert (=> d!1463187 (= (head!9704 newBucket!224) (h!57876 newBucket!224))))

(assert (=> b!4640838 d!1463187))

(declare-fun d!1463189 () Bool)

(assert (=> d!1463189 (eq!885 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803686 lt!1803669) (ListMap!4458 Nil!51768)) (+!1944 (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768)) lt!1803686))))

(declare-fun lt!1804172 () Unit!115257)

(assert (=> d!1463189 (= lt!1804172 (choose!31772 lt!1803686 lt!1803669 (ListMap!4458 Nil!51768)))))

(assert (=> d!1463189 (noDuplicateKeys!1594 lt!1803669)))

(assert (=> d!1463189 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!136 lt!1803686 lt!1803669 (ListMap!4458 Nil!51768)) lt!1804172)))

(declare-fun bs!1033523 () Bool)

(assert (= bs!1033523 d!1463189))

(declare-fun m!5501315 () Bool)

(assert (=> bs!1033523 m!5501315))

(assert (=> bs!1033523 m!5500575))

(assert (=> bs!1033523 m!5500567))

(assert (=> bs!1033523 m!5500575))

(assert (=> bs!1033523 m!5501309))

(assert (=> bs!1033523 m!5500565))

(assert (=> bs!1033523 m!5500567))

(assert (=> bs!1033523 m!5500569))

(assert (=> bs!1033523 m!5500565))

(assert (=> b!4640838 d!1463189))

(declare-fun d!1463191 () Bool)

(assert (=> d!1463191 (= (eq!885 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803686 lt!1803669) (ListMap!4458 Nil!51768)) (+!1944 (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768)) lt!1803686)) (= (content!8938 (toList!5133 (addToMapMapFromBucket!1053 (Cons!51768 lt!1803686 lt!1803669) (ListMap!4458 Nil!51768)))) (content!8938 (toList!5133 (+!1944 (addToMapMapFromBucket!1053 lt!1803669 (ListMap!4458 Nil!51768)) lt!1803686)))))))

(declare-fun bs!1033524 () Bool)

(assert (= bs!1033524 d!1463191))

(declare-fun m!5501317 () Bool)

(assert (=> bs!1033524 m!5501317))

(declare-fun m!5501319 () Bool)

(assert (=> bs!1033524 m!5501319))

(assert (=> b!4640838 d!1463191))

(declare-fun bs!1033525 () Bool)

(declare-fun d!1463193 () Bool)

(assert (= bs!1033525 (and d!1463193 d!1463073)))

(declare-fun lambda!196274 () Int)

(assert (=> bs!1033525 (= lambda!196274 lambda!196155)))

(declare-fun bs!1033526 () Bool)

(assert (= bs!1033526 (and d!1463193 d!1463135)))

(assert (=> bs!1033526 (= lambda!196274 lambda!196247)))

(declare-fun bs!1033527 () Bool)

(assert (= bs!1033527 (and d!1463193 d!1463183)))

(assert (=> bs!1033527 (= lambda!196274 lambda!196269)))

(declare-fun bs!1033528 () Bool)

(assert (= bs!1033528 (and d!1463193 b!4640840)))

(assert (=> bs!1033528 (= lambda!196274 lambda!196146)))

(declare-fun bs!1033529 () Bool)

(assert (= bs!1033529 (and d!1463193 d!1463121)))

(assert (=> bs!1033529 (= lambda!196274 lambda!196242)))

(declare-fun lt!1804173 () ListMap!4457)

(assert (=> d!1463193 (invariantList!1262 (toList!5133 lt!1804173))))

(declare-fun e!2895220 () ListMap!4457)

(assert (=> d!1463193 (= lt!1804173 e!2895220)))

(declare-fun c!794187 () Bool)

(assert (=> d!1463193 (= c!794187 ((_ is Cons!51769) (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)))))

(assert (=> d!1463193 (forall!10943 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769) lambda!196274)))

(assert (=> d!1463193 (= (extractMap!1650 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)) lt!1804173)))

(declare-fun b!4641148 () Bool)

(assert (=> b!4641148 (= e!2895220 (addToMapMapFromBucket!1053 (_2!29706 (h!57877 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769))) (extractMap!1650 (t!358975 (Cons!51769 (tuple2!52825 hash!414 lt!1803677) Nil!51769)))))))

(declare-fun b!4641149 () Bool)

(assert (=> b!4641149 (= e!2895220 (ListMap!4458 Nil!51768))))

(assert (= (and d!1463193 c!794187) b!4641148))

(assert (= (and d!1463193 (not c!794187)) b!4641149))

(declare-fun m!5501321 () Bool)

(assert (=> d!1463193 m!5501321))

(declare-fun m!5501323 () Bool)

(assert (=> d!1463193 m!5501323))

(declare-fun m!5501325 () Bool)

(assert (=> b!4641148 m!5501325))

(assert (=> b!4641148 m!5501325))

(declare-fun m!5501327 () Bool)

(assert (=> b!4641148 m!5501327))

(assert (=> b!4640838 d!1463193))

(declare-fun bs!1033530 () Bool)

(declare-fun d!1463195 () Bool)

(assert (= bs!1033530 (and d!1463195 b!4641099)))

(declare-fun lambda!196277 () Int)

(assert (=> bs!1033530 (not (= lambda!196277 lambda!196253))))

(declare-fun bs!1033531 () Bool)

(assert (= bs!1033531 (and d!1463195 b!4641105)))

(assert (=> bs!1033531 (not (= lambda!196277 lambda!196261))))

(declare-fun bs!1033532 () Bool)

(assert (= bs!1033532 (and d!1463195 b!4641053)))

(assert (=> bs!1033532 (not (= lambda!196277 lambda!196240))))

(declare-fun bs!1033533 () Bool)

(assert (= bs!1033533 (and d!1463195 d!1463177)))

(assert (=> bs!1033533 (not (= lambda!196277 lambda!196266))))

(declare-fun bs!1033534 () Bool)

(assert (= bs!1033534 (and d!1463195 b!4641147)))

(assert (=> bs!1033534 (not (= lambda!196277 lambda!196270))))

(declare-fun bs!1033535 () Bool)

(assert (= bs!1033535 (and d!1463195 b!4641056)))

(assert (=> bs!1033535 (not (= lambda!196277 lambda!196238))))

(declare-fun bs!1033536 () Bool)

(assert (= bs!1033536 (and d!1463195 b!4641144)))

(assert (=> bs!1033536 (not (= lambda!196277 lambda!196271))))

(declare-fun bs!1033537 () Bool)

(assert (= bs!1033537 (and d!1463195 d!1463185)))

(assert (=> bs!1033537 (not (= lambda!196277 lambda!196273))))

(assert (=> bs!1033536 (not (= lambda!196277 lambda!196272))))

(declare-fun bs!1033538 () Bool)

(assert (= bs!1033538 (and d!1463195 d!1463167)))

(assert (=> bs!1033538 (not (= lambda!196277 lambda!196262))))

(declare-fun bs!1033539 () Bool)

(assert (= bs!1033539 (and d!1463195 b!4641108)))

(assert (=> bs!1033539 (not (= lambda!196277 lambda!196259))))

(declare-fun bs!1033540 () Bool)

(assert (= bs!1033540 (and d!1463195 d!1463155)))

(assert (=> bs!1033540 (not (= lambda!196277 lambda!196257))))

(declare-fun bs!1033541 () Bool)

(assert (= bs!1033541 (and d!1463195 b!4641096)))

(assert (=> bs!1033541 (not (= lambda!196277 lambda!196254))))

(assert (=> bs!1033531 (not (= lambda!196277 lambda!196260))))

(declare-fun bs!1033542 () Bool)

(assert (= bs!1033542 (and d!1463195 b!4641131)))

(assert (=> bs!1033542 (not (= lambda!196277 lambda!196263))))

(declare-fun bs!1033543 () Bool)

(assert (= bs!1033543 (and d!1463195 d!1463075)))

(assert (=> bs!1033543 (not (= lambda!196277 lambda!196241))))

(assert (=> bs!1033532 (not (= lambda!196277 lambda!196239))))

(declare-fun bs!1033544 () Bool)

(assert (= bs!1033544 (and d!1463195 b!4641128)))

(assert (=> bs!1033544 (not (= lambda!196277 lambda!196264))))

(assert (=> bs!1033541 (not (= lambda!196277 lambda!196256))))

(assert (=> bs!1033544 (not (= lambda!196277 lambda!196265))))

(assert (=> d!1463195 true))

(assert (=> d!1463195 true))

(assert (=> d!1463195 (= (allKeysSameHash!1448 newBucket!224 hash!414 hashF!1389) (forall!10944 newBucket!224 lambda!196277))))

(declare-fun bs!1033545 () Bool)

(assert (= bs!1033545 d!1463195))

(declare-fun m!5501329 () Bool)

(assert (=> bs!1033545 m!5501329))

(assert (=> b!4640827 d!1463195))

(declare-fun d!1463197 () Bool)

(declare-fun res!1949209 () Bool)

(declare-fun e!2895221 () Bool)

(assert (=> d!1463197 (=> res!1949209 e!2895221)))

(assert (=> d!1463197 (= res!1949209 (not ((_ is Cons!51768) newBucket!224)))))

(assert (=> d!1463197 (= (noDuplicateKeys!1594 newBucket!224) e!2895221)))

(declare-fun b!4641154 () Bool)

(declare-fun e!2895222 () Bool)

(assert (=> b!4641154 (= e!2895221 e!2895222)))

(declare-fun res!1949210 () Bool)

(assert (=> b!4641154 (=> (not res!1949210) (not e!2895222))))

(assert (=> b!4641154 (= res!1949210 (not (containsKey!2628 (t!358974 newBucket!224) (_1!29705 (h!57876 newBucket!224)))))))

(declare-fun b!4641155 () Bool)

(assert (=> b!4641155 (= e!2895222 (noDuplicateKeys!1594 (t!358974 newBucket!224)))))

(assert (= (and d!1463197 (not res!1949209)) b!4641154))

(assert (= (and b!4641154 res!1949210) b!4641155))

(declare-fun m!5501331 () Bool)

(assert (=> b!4641154 m!5501331))

(declare-fun m!5501333 () Bool)

(assert (=> b!4641155 m!5501333))

(assert (=> b!4640837 d!1463197))

(declare-fun bs!1033546 () Bool)

(declare-fun d!1463199 () Bool)

(assert (= bs!1033546 (and d!1463199 b!4641099)))

(declare-fun lambda!196278 () Int)

(assert (=> bs!1033546 (not (= lambda!196278 lambda!196253))))

(declare-fun bs!1033547 () Bool)

(assert (= bs!1033547 (and d!1463199 b!4641105)))

(assert (=> bs!1033547 (not (= lambda!196278 lambda!196261))))

(declare-fun bs!1033548 () Bool)

(assert (= bs!1033548 (and d!1463199 b!4641053)))

(assert (=> bs!1033548 (not (= lambda!196278 lambda!196240))))

(declare-fun bs!1033549 () Bool)

(assert (= bs!1033549 (and d!1463199 d!1463177)))

(assert (=> bs!1033549 (not (= lambda!196278 lambda!196266))))

(declare-fun bs!1033550 () Bool)

(assert (= bs!1033550 (and d!1463199 d!1463195)))

(assert (=> bs!1033550 (= lambda!196278 lambda!196277)))

(declare-fun bs!1033551 () Bool)

(assert (= bs!1033551 (and d!1463199 b!4641147)))

(assert (=> bs!1033551 (not (= lambda!196278 lambda!196270))))

(declare-fun bs!1033552 () Bool)

(assert (= bs!1033552 (and d!1463199 b!4641056)))

(assert (=> bs!1033552 (not (= lambda!196278 lambda!196238))))

(declare-fun bs!1033553 () Bool)

(assert (= bs!1033553 (and d!1463199 b!4641144)))

(assert (=> bs!1033553 (not (= lambda!196278 lambda!196271))))

(declare-fun bs!1033554 () Bool)

(assert (= bs!1033554 (and d!1463199 d!1463185)))

(assert (=> bs!1033554 (not (= lambda!196278 lambda!196273))))

(assert (=> bs!1033553 (not (= lambda!196278 lambda!196272))))

(declare-fun bs!1033555 () Bool)

(assert (= bs!1033555 (and d!1463199 d!1463167)))

(assert (=> bs!1033555 (not (= lambda!196278 lambda!196262))))

(declare-fun bs!1033556 () Bool)

(assert (= bs!1033556 (and d!1463199 b!4641108)))

(assert (=> bs!1033556 (not (= lambda!196278 lambda!196259))))

(declare-fun bs!1033557 () Bool)

(assert (= bs!1033557 (and d!1463199 d!1463155)))

(assert (=> bs!1033557 (not (= lambda!196278 lambda!196257))))

(declare-fun bs!1033558 () Bool)

(assert (= bs!1033558 (and d!1463199 b!4641096)))

(assert (=> bs!1033558 (not (= lambda!196278 lambda!196254))))

(assert (=> bs!1033547 (not (= lambda!196278 lambda!196260))))

(declare-fun bs!1033559 () Bool)

(assert (= bs!1033559 (and d!1463199 b!4641131)))

(assert (=> bs!1033559 (not (= lambda!196278 lambda!196263))))

(declare-fun bs!1033560 () Bool)

(assert (= bs!1033560 (and d!1463199 d!1463075)))

(assert (=> bs!1033560 (not (= lambda!196278 lambda!196241))))

(assert (=> bs!1033548 (not (= lambda!196278 lambda!196239))))

(declare-fun bs!1033561 () Bool)

(assert (= bs!1033561 (and d!1463199 b!4641128)))

(assert (=> bs!1033561 (not (= lambda!196278 lambda!196264))))

(assert (=> bs!1033558 (not (= lambda!196278 lambda!196256))))

(assert (=> bs!1033561 (not (= lambda!196278 lambda!196265))))

(assert (=> d!1463199 true))

(assert (=> d!1463199 true))

(assert (=> d!1463199 (= (allKeysSameHash!1448 oldBucket!40 hash!414 hashF!1389) (forall!10944 oldBucket!40 lambda!196278))))

(declare-fun bs!1033562 () Bool)

(assert (= bs!1033562 d!1463199))

(declare-fun m!5501335 () Bool)

(assert (=> bs!1033562 m!5501335))

(assert (=> b!4640830 d!1463199))

(declare-fun d!1463201 () Bool)

(declare-datatypes ((Option!11754 0))(
  ( (None!11753) (Some!11753 (v!45979 List!51892)) )
))
(declare-fun get!17217 (Option!11754) List!51892)

(declare-fun getValueByKey!1558 (List!51893 (_ BitVec 64)) Option!11754)

(assert (=> d!1463201 (= (apply!12227 lt!1803670 lt!1803671) (get!17217 (getValueByKey!1558 (toList!5134 lt!1803670) lt!1803671)))))

(declare-fun bs!1033563 () Bool)

(assert (= bs!1033563 d!1463201))

(declare-fun m!5501337 () Bool)

(assert (=> bs!1033563 m!5501337))

(assert (=> bs!1033563 m!5501337))

(declare-fun m!5501339 () Bool)

(assert (=> bs!1033563 m!5501339))

(assert (=> b!4640840 d!1463201))

(declare-fun d!1463203 () Bool)

(declare-fun isEmpty!28978 (Option!11750) Bool)

(assert (=> d!1463203 (= (isDefined!9015 (getPair!354 lt!1803679 key!4968)) (not (isEmpty!28978 (getPair!354 lt!1803679 key!4968))))))

(declare-fun bs!1033564 () Bool)

(assert (= bs!1033564 d!1463203))

(assert (=> bs!1033564 m!5500541))

(declare-fun m!5501341 () Bool)

(assert (=> bs!1033564 m!5501341))

(assert (=> b!4640840 d!1463203))

(declare-fun b!4641173 () Bool)

(declare-fun e!2895236 () Bool)

(declare-fun lt!1804176 () Option!11750)

(declare-fun get!17218 (Option!11750) tuple2!52822)

(assert (=> b!4641173 (= e!2895236 (contains!14897 lt!1803679 (get!17218 lt!1804176)))))

(declare-fun b!4641174 () Bool)

(declare-fun e!2895235 () Option!11750)

(assert (=> b!4641174 (= e!2895235 (getPair!354 (t!358974 lt!1803679) key!4968))))

(declare-fun b!4641175 () Bool)

(declare-fun e!2895237 () Option!11750)

(assert (=> b!4641175 (= e!2895237 (Some!11749 (h!57876 lt!1803679)))))

(declare-fun b!4641176 () Bool)

(declare-fun e!2895233 () Bool)

(assert (=> b!4641176 (= e!2895233 (not (containsKey!2628 lt!1803679 key!4968)))))

(declare-fun b!4641177 () Bool)

(assert (=> b!4641177 (= e!2895237 e!2895235)))

(declare-fun c!794193 () Bool)

(assert (=> b!4641177 (= c!794193 ((_ is Cons!51768) lt!1803679))))

(declare-fun b!4641178 () Bool)

(declare-fun res!1949219 () Bool)

(assert (=> b!4641178 (=> (not res!1949219) (not e!2895236))))

(assert (=> b!4641178 (= res!1949219 (= (_1!29705 (get!17218 lt!1804176)) key!4968))))

(declare-fun b!4641179 () Bool)

(assert (=> b!4641179 (= e!2895235 None!11749)))

(declare-fun d!1463205 () Bool)

(declare-fun e!2895234 () Bool)

(assert (=> d!1463205 e!2895234))

(declare-fun res!1949222 () Bool)

(assert (=> d!1463205 (=> res!1949222 e!2895234)))

(assert (=> d!1463205 (= res!1949222 e!2895233)))

(declare-fun res!1949220 () Bool)

(assert (=> d!1463205 (=> (not res!1949220) (not e!2895233))))

(assert (=> d!1463205 (= res!1949220 (isEmpty!28978 lt!1804176))))

(assert (=> d!1463205 (= lt!1804176 e!2895237)))

(declare-fun c!794192 () Bool)

(assert (=> d!1463205 (= c!794192 (and ((_ is Cons!51768) lt!1803679) (= (_1!29705 (h!57876 lt!1803679)) key!4968)))))

(assert (=> d!1463205 (noDuplicateKeys!1594 lt!1803679)))

(assert (=> d!1463205 (= (getPair!354 lt!1803679 key!4968) lt!1804176)))

(declare-fun b!4641172 () Bool)

(assert (=> b!4641172 (= e!2895234 e!2895236)))

(declare-fun res!1949221 () Bool)

(assert (=> b!4641172 (=> (not res!1949221) (not e!2895236))))

(assert (=> b!4641172 (= res!1949221 (isDefined!9015 lt!1804176))))

(assert (= (and d!1463205 c!794192) b!4641175))

(assert (= (and d!1463205 (not c!794192)) b!4641177))

(assert (= (and b!4641177 c!794193) b!4641174))

(assert (= (and b!4641177 (not c!794193)) b!4641179))

(assert (= (and d!1463205 res!1949220) b!4641176))

(assert (= (and d!1463205 (not res!1949222)) b!4641172))

(assert (= (and b!4641172 res!1949221) b!4641178))

(assert (= (and b!4641178 res!1949219) b!4641173))

(declare-fun m!5501343 () Bool)

(assert (=> b!4641172 m!5501343))

(declare-fun m!5501345 () Bool)

(assert (=> b!4641176 m!5501345))

(declare-fun m!5501347 () Bool)

(assert (=> d!1463205 m!5501347))

(declare-fun m!5501349 () Bool)

(assert (=> d!1463205 m!5501349))

(declare-fun m!5501351 () Bool)

(assert (=> b!4641178 m!5501351))

(assert (=> b!4641173 m!5501351))

(assert (=> b!4641173 m!5501351))

(declare-fun m!5501353 () Bool)

(assert (=> b!4641173 m!5501353))

(declare-fun m!5501355 () Bool)

(assert (=> b!4641174 m!5501355))

(assert (=> b!4640840 d!1463205))

(declare-fun bs!1033565 () Bool)

(declare-fun d!1463207 () Bool)

(assert (= bs!1033565 (and d!1463207 d!1463073)))

(declare-fun lambda!196281 () Int)

(assert (=> bs!1033565 (= lambda!196281 lambda!196155)))

(declare-fun bs!1033566 () Bool)

(assert (= bs!1033566 (and d!1463207 d!1463193)))

(assert (=> bs!1033566 (= lambda!196281 lambda!196274)))

(declare-fun bs!1033567 () Bool)

(assert (= bs!1033567 (and d!1463207 d!1463135)))

(assert (=> bs!1033567 (= lambda!196281 lambda!196247)))

(declare-fun bs!1033568 () Bool)

(assert (= bs!1033568 (and d!1463207 d!1463183)))

(assert (=> bs!1033568 (= lambda!196281 lambda!196269)))

(declare-fun bs!1033569 () Bool)

(assert (= bs!1033569 (and d!1463207 b!4640840)))

(assert (=> bs!1033569 (= lambda!196281 lambda!196146)))

(declare-fun bs!1033570 () Bool)

(assert (= bs!1033570 (and d!1463207 d!1463121)))

(assert (=> bs!1033570 (= lambda!196281 lambda!196242)))

(assert (=> d!1463207 (contains!14893 lt!1803670 (hash!3685 hashF!1389 key!4968))))

(declare-fun lt!1804179 () Unit!115257)

(declare-fun choose!31774 (ListLongMap!3703 K!13135 Hashable!5991) Unit!115257)

(assert (=> d!1463207 (= lt!1804179 (choose!31774 lt!1803670 key!4968 hashF!1389))))

(assert (=> d!1463207 (forall!10943 (toList!5134 lt!1803670) lambda!196281)))

(assert (=> d!1463207 (= (lemmaInGenMapThenLongMapContainsHash!560 lt!1803670 key!4968 hashF!1389) lt!1804179)))

(declare-fun bs!1033571 () Bool)

(assert (= bs!1033571 d!1463207))

(assert (=> bs!1033571 m!5500519))

(assert (=> bs!1033571 m!5500519))

(declare-fun m!5501357 () Bool)

(assert (=> bs!1033571 m!5501357))

(declare-fun m!5501359 () Bool)

(assert (=> bs!1033571 m!5501359))

(declare-fun m!5501361 () Bool)

(assert (=> bs!1033571 m!5501361))

(assert (=> b!4640840 d!1463207))

(declare-fun d!1463209 () Bool)

(assert (=> d!1463209 (containsKey!2628 oldBucket!40 key!4968)))

(declare-fun lt!1804182 () Unit!115257)

(declare-fun choose!31775 (List!51892 K!13135 Hashable!5991) Unit!115257)

(assert (=> d!1463209 (= lt!1804182 (choose!31775 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1463209 (noDuplicateKeys!1594 oldBucket!40)))

(assert (=> d!1463209 (= (lemmaGetPairDefinedThenContainsKey!108 oldBucket!40 key!4968 hashF!1389) lt!1804182)))

(declare-fun bs!1033572 () Bool)

(assert (= bs!1033572 d!1463209))

(assert (=> bs!1033572 m!5500557))

(declare-fun m!5501363 () Bool)

(assert (=> bs!1033572 m!5501363))

(assert (=> bs!1033572 m!5500561))

(assert (=> b!4640840 d!1463209))

(declare-fun d!1463211 () Bool)

(declare-fun res!1949227 () Bool)

(declare-fun e!2895242 () Bool)

(assert (=> d!1463211 (=> res!1949227 e!2895242)))

(assert (=> d!1463211 (= res!1949227 (and ((_ is Cons!51768) (t!358974 oldBucket!40)) (= (_1!29705 (h!57876 (t!358974 oldBucket!40))) key!4968)))))

(assert (=> d!1463211 (= (containsKey!2628 (t!358974 oldBucket!40) key!4968) e!2895242)))

(declare-fun b!4641184 () Bool)

(declare-fun e!2895243 () Bool)

(assert (=> b!4641184 (= e!2895242 e!2895243)))

(declare-fun res!1949228 () Bool)

(assert (=> b!4641184 (=> (not res!1949228) (not e!2895243))))

(assert (=> b!4641184 (= res!1949228 ((_ is Cons!51768) (t!358974 oldBucket!40)))))

(declare-fun b!4641185 () Bool)

(assert (=> b!4641185 (= e!2895243 (containsKey!2628 (t!358974 (t!358974 oldBucket!40)) key!4968))))

(assert (= (and d!1463211 (not res!1949227)) b!4641184))

(assert (= (and b!4641184 res!1949228) b!4641185))

(declare-fun m!5501365 () Bool)

(assert (=> b!4641185 m!5501365))

(assert (=> b!4640840 d!1463211))

(declare-fun d!1463213 () Bool)

(declare-fun dynLambda!21546 (Int tuple2!52824) Bool)

(assert (=> d!1463213 (dynLambda!21546 lambda!196146 lt!1803678)))

(declare-fun lt!1804185 () Unit!115257)

(declare-fun choose!31776 (List!51893 Int tuple2!52824) Unit!115257)

(assert (=> d!1463213 (= lt!1804185 (choose!31776 lt!1803684 lambda!196146 lt!1803678))))

(declare-fun e!2895246 () Bool)

(assert (=> d!1463213 e!2895246))

(declare-fun res!1949231 () Bool)

(assert (=> d!1463213 (=> (not res!1949231) (not e!2895246))))

(assert (=> d!1463213 (= res!1949231 (forall!10943 lt!1803684 lambda!196146))))

(assert (=> d!1463213 (= (forallContained!3164 lt!1803684 lambda!196146 lt!1803678) lt!1804185)))

(declare-fun b!4641188 () Bool)

(assert (=> b!4641188 (= e!2895246 (contains!14892 lt!1803684 lt!1803678))))

(assert (= (and d!1463213 res!1949231) b!4641188))

(declare-fun b_lambda!171065 () Bool)

(assert (=> (not b_lambda!171065) (not d!1463213)))

(declare-fun m!5501367 () Bool)

(assert (=> d!1463213 m!5501367))

(declare-fun m!5501369 () Bool)

(assert (=> d!1463213 m!5501369))

(declare-fun m!5501371 () Bool)

(assert (=> d!1463213 m!5501371))

(assert (=> b!4641188 m!5500555))

(assert (=> b!4640840 d!1463213))

(declare-fun d!1463215 () Bool)

(declare-fun e!2895251 () Bool)

(assert (=> d!1463215 e!2895251))

(declare-fun res!1949234 () Bool)

(assert (=> d!1463215 (=> res!1949234 e!2895251)))

(declare-fun lt!1804197 () Bool)

(assert (=> d!1463215 (= res!1949234 (not lt!1804197))))

(declare-fun lt!1804196 () Bool)

(assert (=> d!1463215 (= lt!1804197 lt!1804196)))

(declare-fun lt!1804194 () Unit!115257)

(declare-fun e!2895252 () Unit!115257)

(assert (=> d!1463215 (= lt!1804194 e!2895252)))

(declare-fun c!794196 () Bool)

(assert (=> d!1463215 (= c!794196 lt!1804196)))

(declare-fun containsKey!2632 (List!51893 (_ BitVec 64)) Bool)

(assert (=> d!1463215 (= lt!1804196 (containsKey!2632 (toList!5134 lt!1803670) lt!1803671))))

(assert (=> d!1463215 (= (contains!14893 lt!1803670 lt!1803671) lt!1804197)))

(declare-fun b!4641195 () Bool)

(declare-fun lt!1804195 () Unit!115257)

(assert (=> b!4641195 (= e!2895252 lt!1804195)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1460 (List!51893 (_ BitVec 64)) Unit!115257)

(assert (=> b!4641195 (= lt!1804195 (lemmaContainsKeyImpliesGetValueByKeyDefined!1460 (toList!5134 lt!1803670) lt!1803671))))

(declare-fun isDefined!9019 (Option!11754) Bool)

(assert (=> b!4641195 (isDefined!9019 (getValueByKey!1558 (toList!5134 lt!1803670) lt!1803671))))

(declare-fun b!4641196 () Bool)

(declare-fun Unit!115378 () Unit!115257)

(assert (=> b!4641196 (= e!2895252 Unit!115378)))

(declare-fun b!4641197 () Bool)

(assert (=> b!4641197 (= e!2895251 (isDefined!9019 (getValueByKey!1558 (toList!5134 lt!1803670) lt!1803671)))))

(assert (= (and d!1463215 c!794196) b!4641195))

(assert (= (and d!1463215 (not c!794196)) b!4641196))

(assert (= (and d!1463215 (not res!1949234)) b!4641197))

(declare-fun m!5501373 () Bool)

(assert (=> d!1463215 m!5501373))

(declare-fun m!5501375 () Bool)

(assert (=> b!4641195 m!5501375))

(assert (=> b!4641195 m!5501337))

(assert (=> b!4641195 m!5501337))

(declare-fun m!5501377 () Bool)

(assert (=> b!4641195 m!5501377))

(assert (=> b!4641197 m!5501337))

(assert (=> b!4641197 m!5501337))

(assert (=> b!4641197 m!5501377))

(assert (=> b!4640840 d!1463215))

(declare-fun d!1463217 () Bool)

(assert (=> d!1463217 (contains!14892 (toList!5134 lt!1803670) (tuple2!52825 lt!1803671 lt!1803679))))

(declare-fun lt!1804200 () Unit!115257)

(declare-fun choose!31777 (ListLongMap!3703 (_ BitVec 64) List!51892) Unit!115257)

(assert (=> d!1463217 (= lt!1804200 (choose!31777 lt!1803670 lt!1803671 lt!1803679))))

(assert (=> d!1463217 (contains!14893 lt!1803670 lt!1803671)))

(assert (=> d!1463217 (= (lemmaGetValueImpliesTupleContained!159 lt!1803670 lt!1803671 lt!1803679) lt!1804200)))

(declare-fun bs!1033573 () Bool)

(assert (= bs!1033573 d!1463217))

(declare-fun m!5501379 () Bool)

(assert (=> bs!1033573 m!5501379))

(declare-fun m!5501381 () Bool)

(assert (=> bs!1033573 m!5501381))

(assert (=> bs!1033573 m!5500537))

(assert (=> b!4640840 d!1463217))

(declare-fun d!1463219 () Bool)

(declare-fun lt!1804203 () Bool)

(declare-fun content!8939 (List!51893) (InoxSet tuple2!52824))

(assert (=> d!1463219 (= lt!1804203 (select (content!8939 lt!1803684) lt!1803678))))

(declare-fun e!2895257 () Bool)

(assert (=> d!1463219 (= lt!1804203 e!2895257)))

(declare-fun res!1949240 () Bool)

(assert (=> d!1463219 (=> (not res!1949240) (not e!2895257))))

(assert (=> d!1463219 (= res!1949240 ((_ is Cons!51769) lt!1803684))))

(assert (=> d!1463219 (= (contains!14892 lt!1803684 lt!1803678) lt!1804203)))

(declare-fun b!4641203 () Bool)

(declare-fun e!2895258 () Bool)

(assert (=> b!4641203 (= e!2895257 e!2895258)))

(declare-fun res!1949239 () Bool)

(assert (=> b!4641203 (=> res!1949239 e!2895258)))

(assert (=> b!4641203 (= res!1949239 (= (h!57877 lt!1803684) lt!1803678))))

(declare-fun b!4641204 () Bool)

(assert (=> b!4641204 (= e!2895258 (contains!14892 (t!358975 lt!1803684) lt!1803678))))

(assert (= (and d!1463219 res!1949240) b!4641203))

(assert (= (and b!4641203 (not res!1949239)) b!4641204))

(declare-fun m!5501383 () Bool)

(assert (=> d!1463219 m!5501383))

(declare-fun m!5501385 () Bool)

(assert (=> d!1463219 m!5501385))

(declare-fun m!5501387 () Bool)

(assert (=> b!4641204 m!5501387))

(assert (=> b!4640840 d!1463219))

(declare-fun d!1463221 () Bool)

(declare-fun res!1949241 () Bool)

(declare-fun e!2895259 () Bool)

(assert (=> d!1463221 (=> res!1949241 e!2895259)))

(assert (=> d!1463221 (= res!1949241 (and ((_ is Cons!51768) oldBucket!40) (= (_1!29705 (h!57876 oldBucket!40)) key!4968)))))

(assert (=> d!1463221 (= (containsKey!2628 oldBucket!40 key!4968) e!2895259)))

(declare-fun b!4641205 () Bool)

(declare-fun e!2895260 () Bool)

(assert (=> b!4641205 (= e!2895259 e!2895260)))

(declare-fun res!1949242 () Bool)

(assert (=> b!4641205 (=> (not res!1949242) (not e!2895260))))

(assert (=> b!4641205 (= res!1949242 ((_ is Cons!51768) oldBucket!40))))

(declare-fun b!4641206 () Bool)

(assert (=> b!4641206 (= e!2895260 (containsKey!2628 (t!358974 oldBucket!40) key!4968))))

(assert (= (and d!1463221 (not res!1949241)) b!4641205))

(assert (= (and b!4641205 res!1949242) b!4641206))

(assert (=> b!4641206 m!5500551))

(assert (=> b!4640840 d!1463221))

(declare-fun bs!1033574 () Bool)

(declare-fun d!1463223 () Bool)

(assert (= bs!1033574 (and d!1463223 d!1463073)))

(declare-fun lambda!196288 () Int)

(assert (=> bs!1033574 (= lambda!196288 lambda!196155)))

(declare-fun bs!1033575 () Bool)

(assert (= bs!1033575 (and d!1463223 d!1463193)))

(assert (=> bs!1033575 (= lambda!196288 lambda!196274)))

(declare-fun bs!1033576 () Bool)

(assert (= bs!1033576 (and d!1463223 d!1463135)))

(assert (=> bs!1033576 (= lambda!196288 lambda!196247)))

(declare-fun bs!1033577 () Bool)

(assert (= bs!1033577 (and d!1463223 d!1463183)))

(assert (=> bs!1033577 (= lambda!196288 lambda!196269)))

(declare-fun bs!1033578 () Bool)

(assert (= bs!1033578 (and d!1463223 b!4640840)))

(assert (=> bs!1033578 (= lambda!196288 lambda!196146)))

(declare-fun bs!1033579 () Bool)

(assert (= bs!1033579 (and d!1463223 d!1463207)))

(assert (=> bs!1033579 (= lambda!196288 lambda!196281)))

(declare-fun bs!1033580 () Bool)

(assert (= bs!1033580 (and d!1463223 d!1463121)))

(assert (=> bs!1033580 (= lambda!196288 lambda!196242)))

(declare-fun e!2895265 () Bool)

(assert (=> d!1463223 e!2895265))

(declare-fun res!1949251 () Bool)

(assert (=> d!1463223 (=> (not res!1949251) (not e!2895265))))

(assert (=> d!1463223 (= res!1949251 (forall!10943 (toList!5134 lt!1803670) lambda!196288))))

(declare-fun lt!1804222 () Unit!115257)

(declare-fun choose!31778 (ListLongMap!3703 K!13135 Hashable!5991) Unit!115257)

(assert (=> d!1463223 (= lt!1804222 (choose!31778 lt!1803670 key!4968 hashF!1389))))

(assert (=> d!1463223 (forall!10943 (toList!5134 lt!1803670) lambda!196288)))

(assert (=> d!1463223 (= (lemmaInGenMapThenGetPairDefined!150 lt!1803670 key!4968 hashF!1389) lt!1804222)))

(declare-fun lt!1804226 () List!51892)

(declare-fun b!4641218 () Bool)

(declare-fun lt!1804224 () (_ BitVec 64))

(declare-fun e!2895266 () Bool)

(assert (=> b!4641218 (= e!2895266 (= (getValueByKey!1558 (toList!5134 lt!1803670) lt!1804224) (Some!11753 lt!1804226)))))

(declare-fun b!4641217 () Bool)

(assert (=> b!4641217 (= e!2895265 (isDefined!9015 (getPair!354 (apply!12227 lt!1803670 (hash!3685 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1804225 () Unit!115257)

(assert (=> b!4641217 (= lt!1804225 (forallContained!3164 (toList!5134 lt!1803670) lambda!196288 (tuple2!52825 (hash!3685 hashF!1389 key!4968) (apply!12227 lt!1803670 (hash!3685 hashF!1389 key!4968)))))))

(declare-fun lt!1804227 () Unit!115257)

(declare-fun lt!1804221 () Unit!115257)

(assert (=> b!4641217 (= lt!1804227 lt!1804221)))

(assert (=> b!4641217 (contains!14892 (toList!5134 lt!1803670) (tuple2!52825 lt!1804224 lt!1804226))))

(assert (=> b!4641217 (= lt!1804221 (lemmaGetValueImpliesTupleContained!159 lt!1803670 lt!1804224 lt!1804226))))

(assert (=> b!4641217 e!2895266))

(declare-fun res!1949252 () Bool)

(assert (=> b!4641217 (=> (not res!1949252) (not e!2895266))))

(assert (=> b!4641217 (= res!1949252 (contains!14893 lt!1803670 lt!1804224))))

(assert (=> b!4641217 (= lt!1804226 (apply!12227 lt!1803670 (hash!3685 hashF!1389 key!4968)))))

(assert (=> b!4641217 (= lt!1804224 (hash!3685 hashF!1389 key!4968))))

(declare-fun lt!1804223 () Unit!115257)

(declare-fun lt!1804220 () Unit!115257)

(assert (=> b!4641217 (= lt!1804223 lt!1804220)))

(assert (=> b!4641217 (contains!14893 lt!1803670 (hash!3685 hashF!1389 key!4968))))

(assert (=> b!4641217 (= lt!1804220 (lemmaInGenMapThenLongMapContainsHash!560 lt!1803670 key!4968 hashF!1389))))

(declare-fun b!4641215 () Bool)

(declare-fun res!1949254 () Bool)

(assert (=> b!4641215 (=> (not res!1949254) (not e!2895265))))

(declare-fun allKeysSameHashInMap!1578 (ListLongMap!3703 Hashable!5991) Bool)

(assert (=> b!4641215 (= res!1949254 (allKeysSameHashInMap!1578 lt!1803670 hashF!1389))))

(declare-fun b!4641216 () Bool)

(declare-fun res!1949253 () Bool)

(assert (=> b!4641216 (=> (not res!1949253) (not e!2895265))))

(assert (=> b!4641216 (= res!1949253 (contains!14891 (extractMap!1650 (toList!5134 lt!1803670)) key!4968))))

(assert (= (and d!1463223 res!1949251) b!4641215))

(assert (= (and b!4641215 res!1949254) b!4641216))

(assert (= (and b!4641216 res!1949253) b!4641217))

(assert (= (and b!4641217 res!1949252) b!4641218))

(declare-fun m!5501389 () Bool)

(assert (=> b!4641215 m!5501389))

(declare-fun m!5501391 () Bool)

(assert (=> b!4641216 m!5501391))

(assert (=> b!4641216 m!5501391))

(declare-fun m!5501393 () Bool)

(assert (=> b!4641216 m!5501393))

(assert (=> b!4641217 m!5500519))

(declare-fun m!5501395 () Bool)

(assert (=> b!4641217 m!5501395))

(assert (=> b!4641217 m!5500553))

(assert (=> b!4641217 m!5500519))

(assert (=> b!4641217 m!5501357))

(declare-fun m!5501397 () Bool)

(assert (=> b!4641217 m!5501397))

(assert (=> b!4641217 m!5501395))

(declare-fun m!5501399 () Bool)

(assert (=> b!4641217 m!5501399))

(declare-fun m!5501401 () Bool)

(assert (=> b!4641217 m!5501401))

(assert (=> b!4641217 m!5501399))

(declare-fun m!5501403 () Bool)

(assert (=> b!4641217 m!5501403))

(declare-fun m!5501405 () Bool)

(assert (=> b!4641217 m!5501405))

(declare-fun m!5501407 () Bool)

(assert (=> b!4641217 m!5501407))

(assert (=> b!4641217 m!5500519))

(declare-fun m!5501409 () Bool)

(assert (=> d!1463223 m!5501409))

(declare-fun m!5501411 () Bool)

(assert (=> d!1463223 m!5501411))

(assert (=> d!1463223 m!5501409))

(declare-fun m!5501413 () Bool)

(assert (=> b!4641218 m!5501413))

(assert (=> b!4640840 d!1463223))

(declare-fun b!4641220 () Bool)

(declare-fun e!2895267 () List!51892)

(declare-fun e!2895268 () List!51892)

(assert (=> b!4641220 (= e!2895267 e!2895268)))

(declare-fun c!794197 () Bool)

(assert (=> b!4641220 (= c!794197 ((_ is Cons!51768) (t!358974 oldBucket!40)))))

(declare-fun d!1463225 () Bool)

(declare-fun lt!1804228 () List!51892)

(assert (=> d!1463225 (not (containsKey!2628 lt!1804228 key!4968))))

(assert (=> d!1463225 (= lt!1804228 e!2895267)))

(declare-fun c!794198 () Bool)

(assert (=> d!1463225 (= c!794198 (and ((_ is Cons!51768) (t!358974 oldBucket!40)) (= (_1!29705 (h!57876 (t!358974 oldBucket!40))) key!4968)))))

(assert (=> d!1463225 (noDuplicateKeys!1594 (t!358974 oldBucket!40))))

(assert (=> d!1463225 (= (removePairForKey!1217 (t!358974 oldBucket!40) key!4968) lt!1804228)))

(declare-fun b!4641219 () Bool)

(assert (=> b!4641219 (= e!2895267 (t!358974 (t!358974 oldBucket!40)))))

(declare-fun b!4641221 () Bool)

(assert (=> b!4641221 (= e!2895268 (Cons!51768 (h!57876 (t!358974 oldBucket!40)) (removePairForKey!1217 (t!358974 (t!358974 oldBucket!40)) key!4968)))))

(declare-fun b!4641222 () Bool)

(assert (=> b!4641222 (= e!2895268 Nil!51768)))

(assert (= (and d!1463225 c!794198) b!4641219))

(assert (= (and d!1463225 (not c!794198)) b!4641220))

(assert (= (and b!4641220 c!794197) b!4641221))

(assert (= (and b!4641220 (not c!794197)) b!4641222))

(declare-fun m!5501415 () Bool)

(assert (=> d!1463225 m!5501415))

(assert (=> d!1463225 m!5500651))

(declare-fun m!5501417 () Bool)

(assert (=> b!4641221 m!5501417))

(assert (=> b!4640829 d!1463225))

(declare-fun b!4641224 () Bool)

(declare-fun e!2895269 () List!51892)

(declare-fun e!2895270 () List!51892)

(assert (=> b!4641224 (= e!2895269 e!2895270)))

(declare-fun c!794199 () Bool)

(assert (=> b!4641224 (= c!794199 ((_ is Cons!51768) oldBucket!40))))

(declare-fun d!1463227 () Bool)

(declare-fun lt!1804229 () List!51892)

(assert (=> d!1463227 (not (containsKey!2628 lt!1804229 key!4968))))

(assert (=> d!1463227 (= lt!1804229 e!2895269)))

(declare-fun c!794200 () Bool)

(assert (=> d!1463227 (= c!794200 (and ((_ is Cons!51768) oldBucket!40) (= (_1!29705 (h!57876 oldBucket!40)) key!4968)))))

(assert (=> d!1463227 (noDuplicateKeys!1594 oldBucket!40)))

(assert (=> d!1463227 (= (removePairForKey!1217 oldBucket!40 key!4968) lt!1804229)))

(declare-fun b!4641223 () Bool)

(assert (=> b!4641223 (= e!2895269 (t!358974 oldBucket!40))))

(declare-fun b!4641225 () Bool)

(assert (=> b!4641225 (= e!2895270 (Cons!51768 (h!57876 oldBucket!40) (removePairForKey!1217 (t!358974 oldBucket!40) key!4968)))))

(declare-fun b!4641226 () Bool)

(assert (=> b!4641226 (= e!2895270 Nil!51768)))

(assert (= (and d!1463227 c!794200) b!4641223))

(assert (= (and d!1463227 (not c!794200)) b!4641224))

(assert (= (and b!4641224 c!794199) b!4641225))

(assert (= (and b!4641224 (not c!794199)) b!4641226))

(declare-fun m!5501419 () Bool)

(assert (=> d!1463227 m!5501419))

(assert (=> d!1463227 m!5500561))

(assert (=> b!4641225 m!5500535))

(assert (=> b!4640839 d!1463227))

(declare-fun e!2895273 () Bool)

(declare-fun tp!1342874 () Bool)

(declare-fun b!4641231 () Bool)

(assert (=> b!4641231 (= e!2895273 (and tp_is_empty!29669 tp_is_empty!29671 tp!1342874))))

(assert (=> b!4640832 (= tp!1342867 e!2895273)))

(assert (= (and b!4640832 ((_ is Cons!51768) (t!358974 oldBucket!40))) b!4641231))

(declare-fun tp!1342875 () Bool)

(declare-fun b!4641232 () Bool)

(declare-fun e!2895274 () Bool)

(assert (=> b!4641232 (= e!2895274 (and tp_is_empty!29669 tp_is_empty!29671 tp!1342875))))

(assert (=> b!4640834 (= tp!1342866 e!2895274)))

(assert (= (and b!4640834 ((_ is Cons!51768) (t!358974 newBucket!224))) b!4641232))

(declare-fun b_lambda!171067 () Bool)

(assert (= b_lambda!171065 (or b!4640840 b_lambda!171067)))

(declare-fun bs!1033581 () Bool)

(declare-fun d!1463229 () Bool)

(assert (= bs!1033581 (and d!1463229 b!4640840)))

(assert (=> bs!1033581 (= (dynLambda!21546 lambda!196146 lt!1803678) (noDuplicateKeys!1594 (_2!29706 lt!1803678)))))

(declare-fun m!5501421 () Bool)

(assert (=> bs!1033581 m!5501421))

(assert (=> d!1463213 d!1463229))

(check-sat (not d!1463155) (not b!4641206) (not b!4641135) (not bm!323968) (not bs!1033581) (not b!4640899) (not d!1463215) (not d!1463179) (not d!1463201) (not d!1463219) (not d!1463205) (not b!4641076) (not d!1463123) (not b!4641185) (not b!4641195) (not bm!323969) (not b!4641155) (not bm!323982) (not d!1463217) (not b!4641059) (not b!4641107) (not b!4641173) (not b!4641178) (not b!4641134) (not d!1463199) (not d!1463191) (not b!4641096) (not b!4640930) (not d!1463125) (not d!1463073) (not d!1463225) (not b!4641078) (not b!4641138) tp_is_empty!29671 (not b!4641218) (not d!1463195) (not b!4641127) (not b!4641188) (not b!4640926) (not d!1463209) (not b!4641142) (not d!1463193) (not b_lambda!171067) (not b!4641080) (not d!1463207) (not bm!323980) (not d!1463223) (not d!1463183) (not b!4641174) (not d!1463135) (not b!4641217) (not d!1463139) (not b!4640939) (not d!1463181) (not b!4641054) (not b!4641106) (not d!1463069) (not bm!323978) (not bm!323983) (not d!1463075) (not b!4641077) (not b!4640929) (not b!4641154) (not b!4641128) (not b!4641221) (not b!4641133) (not b!4641079) (not b!4641172) (not b!4641197) (not b!4640934) (not b!4640878) (not b!4641095) (not b!4641137) tp_is_empty!29669 (not b!4641232) (not b!4641225) (not b!4640933) (not bm!323988) (not bm!323986) (not b!4641052) (not d!1463133) (not d!1463185) (not d!1463121) (not b!4641144) (not b!4641204) (not b!4641148) (not b!4641143) (not b!4641098) (not b!4640898) (not d!1463167) (not b!4641104) (not b!4641130) (not bm!323985) (not b!4641141) (not b!4641146) (not d!1463161) (not d!1463189) (not d!1463213) (not bm!323987) (not bm!323981) (not b!4641097) (not bm!323944) (not d!1463203) (not b!4641216) (not b!4641231) (not bm!323977) (not b!4640932) (not bm!323976) (not bm!323984) (not b!4640927) (not d!1463055) (not b!4641215) (not b!4641140) (not d!1463227) (not b!4641145) (not b!4641176) (not bm!323979) (not d!1463177) (not b!4641105) (not b!4641129) (not b!4641055) (not bm!323967) (not d!1463131) (not b!4641132) (not b!4641053))
(check-sat)
