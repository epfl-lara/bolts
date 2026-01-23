; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!466822 () Bool)

(assert start!466822)

(declare-fun b!4641857 () Bool)

(declare-fun e!2895680 () Bool)

(declare-datatypes ((K!13148 0))(
  ( (K!13149 (val!18789 Int)) )
))
(declare-datatypes ((V!13394 0))(
  ( (V!13395 (val!18790 Int)) )
))
(declare-datatypes ((tuple2!52842 0))(
  ( (tuple2!52843 (_1!29715 K!13148) (_2!29715 V!13394)) )
))
(declare-datatypes ((List!51906 0))(
  ( (Nil!51782) (Cons!51782 (h!57894 tuple2!52842) (t!358992 List!51906)) )
))
(declare-datatypes ((ListMap!4467 0))(
  ( (ListMap!4468 (toList!5143 List!51906)) )
))
(declare-fun lt!1805138 () ListMap!4467)

(declare-fun lt!1805128 () ListMap!4467)

(declare-fun eq!890 (ListMap!4467 ListMap!4467) Bool)

(assert (=> b!4641857 (= e!2895680 (eq!890 lt!1805138 lt!1805128))))

(declare-fun lt!1805140 () ListMap!4467)

(assert (=> b!4641857 (eq!890 lt!1805140 lt!1805138)))

(declare-fun lt!1805150 () ListMap!4467)

(declare-fun key!4968 () K!13148)

(declare-fun -!603 (ListMap!4467 K!13148) ListMap!4467)

(assert (=> b!4641857 (= lt!1805138 (-!603 lt!1805150 key!4968))))

(declare-datatypes ((Unit!115507 0))(
  ( (Unit!115508) )
))
(declare-fun lt!1805151 () Unit!115507)

(declare-fun lt!1805126 () ListMap!4467)

(declare-fun lemmaRemovePreservesEq!51 (ListMap!4467 ListMap!4467 K!13148) Unit!115507)

(assert (=> b!4641857 (= lt!1805151 (lemmaRemovePreservesEq!51 lt!1805126 lt!1805150 key!4968))))

(declare-fun tp_is_empty!29691 () Bool)

(declare-fun b!4641858 () Bool)

(declare-fun e!2895681 () Bool)

(declare-fun tp_is_empty!29689 () Bool)

(declare-fun tp!1342913 () Bool)

(assert (=> b!4641858 (= e!2895681 (and tp_is_empty!29689 tp_is_empty!29691 tp!1342913))))

(declare-fun b!4641859 () Bool)

(declare-fun e!2895682 () Bool)

(assert (=> b!4641859 (= e!2895682 e!2895680)))

(declare-fun res!1949649 () Bool)

(assert (=> b!4641859 (=> res!1949649 e!2895680)))

(assert (=> b!4641859 (= res!1949649 (not (= lt!1805140 lt!1805128)))))

(declare-fun lt!1805137 () ListMap!4467)

(declare-fun oldBucket!40 () List!51906)

(declare-fun +!1949 (ListMap!4467 tuple2!52842) ListMap!4467)

(assert (=> b!4641859 (= lt!1805128 (+!1949 lt!1805137 (h!57894 oldBucket!40)))))

(assert (=> b!4641859 (= lt!1805140 (-!603 lt!1805126 key!4968))))

(declare-fun lt!1805149 () ListMap!4467)

(assert (=> b!4641859 (= lt!1805126 (+!1949 lt!1805149 (h!57894 oldBucket!40)))))

(assert (=> b!4641859 (= (-!603 (+!1949 lt!1805149 (h!57894 oldBucket!40)) key!4968) (+!1949 lt!1805137 (h!57894 oldBucket!40)))))

(declare-fun lt!1805125 () Unit!115507)

(declare-fun addRemoveCommutativeForDiffKeys!48 (ListMap!4467 K!13148 V!13394 K!13148) Unit!115507)

(assert (=> b!4641859 (= lt!1805125 (addRemoveCommutativeForDiffKeys!48 lt!1805149 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40)) key!4968))))

(declare-fun lt!1805148 () ListMap!4467)

(assert (=> b!4641859 (eq!890 lt!1805148 lt!1805137)))

(assert (=> b!4641859 (= lt!1805137 (-!603 lt!1805149 key!4968))))

(declare-datatypes ((Hashable!5996 0))(
  ( (HashableExt!5995 (__x!31699 Int)) )
))
(declare-fun hashF!1389 () Hashable!5996)

(declare-fun lt!1805123 () List!51906)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1805143 () Unit!115507)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!155 ((_ BitVec 64) List!51906 List!51906 K!13148 Hashable!5996) Unit!115507)

(assert (=> b!4641859 (= lt!1805143 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!155 hash!414 (t!358992 oldBucket!40) lt!1805123 key!4968 hashF!1389))))

(declare-fun b!4641860 () Bool)

(declare-fun e!2895678 () Bool)

(declare-fun e!2895686 () Bool)

(assert (=> b!4641860 (= e!2895678 e!2895686)))

(declare-fun res!1949647 () Bool)

(assert (=> b!4641860 (=> res!1949647 e!2895686)))

(declare-fun lt!1805146 () List!51906)

(declare-fun removePairForKey!1222 (List!51906 K!13148) List!51906)

(assert (=> b!4641860 (= res!1949647 (not (= (removePairForKey!1222 lt!1805146 key!4968) lt!1805123)))))

(declare-fun newBucket!224 () List!51906)

(declare-fun tail!8222 (List!51906) List!51906)

(assert (=> b!4641860 (= lt!1805123 (tail!8222 newBucket!224))))

(assert (=> b!4641860 (= lt!1805146 (tail!8222 oldBucket!40))))

(declare-fun b!4641861 () Bool)

(declare-fun e!2895684 () Bool)

(declare-fun e!2895677 () Bool)

(assert (=> b!4641861 (= e!2895684 e!2895677)))

(declare-fun res!1949653 () Bool)

(assert (=> b!4641861 (=> (not res!1949653) (not e!2895677))))

(declare-fun lt!1805147 () (_ BitVec 64))

(assert (=> b!4641861 (= res!1949653 (= lt!1805147 hash!414))))

(declare-fun hash!3694 (Hashable!5996 K!13148) (_ BitVec 64))

(assert (=> b!4641861 (= lt!1805147 (hash!3694 hashF!1389 key!4968))))

(declare-fun b!4641862 () Bool)

(declare-fun e!2895675 () Bool)

(assert (=> b!4641862 (= e!2895677 (not e!2895675))))

(declare-fun res!1949645 () Bool)

(assert (=> b!4641862 (=> res!1949645 e!2895675)))

(assert (=> b!4641862 (= res!1949645 (or (and (is-Cons!51782 oldBucket!40) (= (_1!29715 (h!57894 oldBucket!40)) key!4968)) (not (is-Cons!51782 oldBucket!40)) (= (_1!29715 (h!57894 oldBucket!40)) key!4968)))))

(declare-fun e!2895679 () Bool)

(assert (=> b!4641862 e!2895679))

(declare-fun res!1949642 () Bool)

(assert (=> b!4641862 (=> (not res!1949642) (not e!2895679))))

(declare-fun lt!1805144 () ListMap!4467)

(declare-fun addToMapMapFromBucket!1058 (List!51906 ListMap!4467) ListMap!4467)

(assert (=> b!4641862 (= res!1949642 (= lt!1805150 (addToMapMapFromBucket!1058 oldBucket!40 lt!1805144)))))

(declare-datatypes ((tuple2!52844 0))(
  ( (tuple2!52845 (_1!29716 (_ BitVec 64)) (_2!29716 List!51906)) )
))
(declare-datatypes ((List!51907 0))(
  ( (Nil!51783) (Cons!51783 (h!57895 tuple2!52844) (t!358993 List!51907)) )
))
(declare-fun extractMap!1655 (List!51907) ListMap!4467)

(assert (=> b!4641862 (= lt!1805144 (extractMap!1655 Nil!51783))))

(assert (=> b!4641862 true))

(declare-fun b!4641863 () Bool)

(declare-fun res!1949650 () Bool)

(assert (=> b!4641863 (=> res!1949650 e!2895686)))

(assert (=> b!4641863 (= res!1949650 (not (= (removePairForKey!1222 (t!358992 oldBucket!40) key!4968) lt!1805123)))))

(declare-fun b!4641864 () Bool)

(declare-fun res!1949651 () Bool)

(declare-fun e!2895676 () Bool)

(assert (=> b!4641864 (=> (not res!1949651) (not e!2895676))))

(declare-fun allKeysSameHash!1453 (List!51906 (_ BitVec 64) Hashable!5996) Bool)

(assert (=> b!4641864 (= res!1949651 (allKeysSameHash!1453 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1949652 () Bool)

(assert (=> start!466822 (=> (not res!1949652) (not e!2895676))))

(declare-fun noDuplicateKeys!1599 (List!51906) Bool)

(assert (=> start!466822 (= res!1949652 (noDuplicateKeys!1599 oldBucket!40))))

(assert (=> start!466822 e!2895676))

(assert (=> start!466822 true))

(assert (=> start!466822 e!2895681))

(assert (=> start!466822 tp_is_empty!29689))

(declare-fun e!2895683 () Bool)

(assert (=> start!466822 e!2895683))

(declare-fun b!4641865 () Bool)

(declare-fun e!2895685 () Bool)

(assert (=> b!4641865 (= e!2895686 e!2895685)))

(declare-fun res!1949648 () Bool)

(assert (=> b!4641865 (=> res!1949648 e!2895685)))

(assert (=> b!4641865 (= res!1949648 (not (eq!890 lt!1805150 (+!1949 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)) (h!57894 oldBucket!40)))))))

(declare-fun lt!1805132 () tuple2!52842)

(assert (=> b!4641865 (eq!890 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805132 lt!1805123) (ListMap!4468 Nil!51782)) (+!1949 (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805132))))

(declare-fun lt!1805129 () Unit!115507)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!141 (tuple2!52842 List!51906 ListMap!4467) Unit!115507)

(assert (=> b!4641865 (= lt!1805129 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!141 lt!1805132 lt!1805123 (ListMap!4468 Nil!51782)))))

(declare-fun head!9709 (List!51906) tuple2!52842)

(assert (=> b!4641865 (= lt!1805132 (head!9709 newBucket!224))))

(declare-fun lt!1805127 () tuple2!52842)

(assert (=> b!4641865 (eq!890 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805127 lt!1805146) (ListMap!4468 Nil!51782)) (+!1949 (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805127))))

(declare-fun lt!1805135 () Unit!115507)

(assert (=> b!4641865 (= lt!1805135 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!141 lt!1805127 lt!1805146 (ListMap!4468 Nil!51782)))))

(assert (=> b!4641865 (= lt!1805127 (head!9709 oldBucket!40))))

(declare-fun contains!14914 (ListMap!4467 K!13148) Bool)

(assert (=> b!4641865 (contains!14914 lt!1805149 key!4968)))

(declare-fun lt!1805133 () List!51907)

(assert (=> b!4641865 (= lt!1805149 (extractMap!1655 lt!1805133))))

(declare-fun lt!1805141 () Unit!115507)

(declare-datatypes ((ListLongMap!3713 0))(
  ( (ListLongMap!3714 (toList!5144 List!51907)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!377 (ListLongMap!3713 K!13148 Hashable!5996) Unit!115507)

(assert (=> b!4641865 (= lt!1805141 (lemmaListContainsThenExtractedMapContains!377 (ListLongMap!3714 lt!1805133) key!4968 hashF!1389))))

(assert (=> b!4641865 (= lt!1805133 (Cons!51783 (tuple2!52845 hash!414 (t!358992 oldBucket!40)) Nil!51783))))

(declare-fun b!4641866 () Bool)

(declare-fun res!1949641 () Bool)

(assert (=> b!4641866 (=> (not res!1949641) (not e!2895677))))

(assert (=> b!4641866 (= res!1949641 (allKeysSameHash!1453 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4641867 () Bool)

(assert (=> b!4641867 (= e!2895679 (= lt!1805144 (ListMap!4468 Nil!51782)))))

(declare-fun b!4641868 () Bool)

(assert (=> b!4641868 (= e!2895675 e!2895678)))

(declare-fun res!1949654 () Bool)

(assert (=> b!4641868 (=> res!1949654 e!2895678)))

(declare-fun containsKey!2641 (List!51906 K!13148) Bool)

(assert (=> b!4641868 (= res!1949654 (not (containsKey!2641 (t!358992 oldBucket!40) key!4968)))))

(assert (=> b!4641868 (containsKey!2641 oldBucket!40 key!4968)))

(declare-fun lt!1805130 () Unit!115507)

(declare-fun lemmaGetPairDefinedThenContainsKey!113 (List!51906 K!13148 Hashable!5996) Unit!115507)

(assert (=> b!4641868 (= lt!1805130 (lemmaGetPairDefinedThenContainsKey!113 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1805122 () List!51906)

(declare-datatypes ((Option!11763 0))(
  ( (None!11762) (Some!11762 (v!45992 tuple2!52842)) )
))
(declare-fun isDefined!9028 (Option!11763) Bool)

(declare-fun getPair!359 (List!51906 K!13148) Option!11763)

(assert (=> b!4641868 (isDefined!9028 (getPair!359 lt!1805122 key!4968))))

(declare-fun lt!1805145 () List!51907)

(declare-fun lt!1805134 () Unit!115507)

(declare-fun lambda!196449 () Int)

(declare-fun lt!1805136 () tuple2!52844)

(declare-fun forallContained!3173 (List!51907 Int tuple2!52844) Unit!115507)

(assert (=> b!4641868 (= lt!1805134 (forallContained!3173 lt!1805145 lambda!196449 lt!1805136))))

(declare-fun contains!14915 (List!51907 tuple2!52844) Bool)

(assert (=> b!4641868 (contains!14915 lt!1805145 lt!1805136)))

(assert (=> b!4641868 (= lt!1805136 (tuple2!52845 lt!1805147 lt!1805122))))

(declare-fun lt!1805139 () ListLongMap!3713)

(declare-fun lt!1805131 () Unit!115507)

(declare-fun lemmaGetValueImpliesTupleContained!164 (ListLongMap!3713 (_ BitVec 64) List!51906) Unit!115507)

(assert (=> b!4641868 (= lt!1805131 (lemmaGetValueImpliesTupleContained!164 lt!1805139 lt!1805147 lt!1805122))))

(declare-fun apply!12232 (ListLongMap!3713 (_ BitVec 64)) List!51906)

(assert (=> b!4641868 (= lt!1805122 (apply!12232 lt!1805139 lt!1805147))))

(declare-fun contains!14916 (ListLongMap!3713 (_ BitVec 64)) Bool)

(assert (=> b!4641868 (contains!14916 lt!1805139 lt!1805147)))

(declare-fun lt!1805124 () Unit!115507)

(declare-fun lemmaInGenMapThenLongMapContainsHash!565 (ListLongMap!3713 K!13148 Hashable!5996) Unit!115507)

(assert (=> b!4641868 (= lt!1805124 (lemmaInGenMapThenLongMapContainsHash!565 lt!1805139 key!4968 hashF!1389))))

(declare-fun lt!1805142 () Unit!115507)

(declare-fun lemmaInGenMapThenGetPairDefined!155 (ListLongMap!3713 K!13148 Hashable!5996) Unit!115507)

(assert (=> b!4641868 (= lt!1805142 (lemmaInGenMapThenGetPairDefined!155 lt!1805139 key!4968 hashF!1389))))

(assert (=> b!4641868 (= lt!1805139 (ListLongMap!3714 lt!1805145))))

(declare-fun b!4641869 () Bool)

(declare-fun res!1949643 () Bool)

(assert (=> b!4641869 (=> (not res!1949643) (not e!2895676))))

(assert (=> b!4641869 (= res!1949643 (noDuplicateKeys!1599 newBucket!224))))

(declare-fun b!4641870 () Bool)

(assert (=> b!4641870 (= e!2895685 e!2895682)))

(declare-fun res!1949655 () Bool)

(assert (=> b!4641870 (=> res!1949655 e!2895682)))

(declare-fun lt!1805152 () ListMap!4467)

(assert (=> b!4641870 (= res!1949655 (not (eq!890 lt!1805152 (+!1949 lt!1805148 lt!1805132))))))

(assert (=> b!4641870 (= lt!1805148 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783)))))

(assert (=> b!4641870 (= lt!1805152 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 newBucket!224) Nil!51783)))))

(declare-fun b!4641871 () Bool)

(assert (=> b!4641871 (= e!2895676 e!2895684)))

(declare-fun res!1949646 () Bool)

(assert (=> b!4641871 (=> (not res!1949646) (not e!2895684))))

(assert (=> b!4641871 (= res!1949646 (contains!14914 lt!1805150 key!4968))))

(assert (=> b!4641871 (= lt!1805150 (extractMap!1655 lt!1805145))))

(assert (=> b!4641871 (= lt!1805145 (Cons!51783 (tuple2!52845 hash!414 oldBucket!40) Nil!51783))))

(declare-fun b!4641872 () Bool)

(declare-fun tp!1342912 () Bool)

(assert (=> b!4641872 (= e!2895683 (and tp_is_empty!29689 tp_is_empty!29691 tp!1342912))))

(declare-fun b!4641873 () Bool)

(declare-fun res!1949644 () Bool)

(assert (=> b!4641873 (=> (not res!1949644) (not e!2895676))))

(assert (=> b!4641873 (= res!1949644 (= (removePairForKey!1222 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!466822 res!1949652) b!4641869))

(assert (= (and b!4641869 res!1949643) b!4641873))

(assert (= (and b!4641873 res!1949644) b!4641864))

(assert (= (and b!4641864 res!1949651) b!4641871))

(assert (= (and b!4641871 res!1949646) b!4641861))

(assert (= (and b!4641861 res!1949653) b!4641866))

(assert (= (and b!4641866 res!1949641) b!4641862))

(assert (= (and b!4641862 res!1949642) b!4641867))

(assert (= (and b!4641862 (not res!1949645)) b!4641868))

(assert (= (and b!4641868 (not res!1949654)) b!4641860))

(assert (= (and b!4641860 (not res!1949647)) b!4641863))

(assert (= (and b!4641863 (not res!1949650)) b!4641865))

(assert (= (and b!4641865 (not res!1949648)) b!4641870))

(assert (= (and b!4641870 (not res!1949655)) b!4641859))

(assert (= (and b!4641859 (not res!1949649)) b!4641857))

(assert (= (and start!466822 (is-Cons!51782 oldBucket!40)) b!4641858))

(assert (= (and start!466822 (is-Cons!51782 newBucket!224)) b!4641872))

(declare-fun m!5502685 () Bool)

(assert (=> b!4641873 m!5502685))

(declare-fun m!5502687 () Bool)

(assert (=> b!4641863 m!5502687))

(declare-fun m!5502689 () Bool)

(assert (=> b!4641866 m!5502689))

(declare-fun m!5502691 () Bool)

(assert (=> b!4641859 m!5502691))

(declare-fun m!5502693 () Bool)

(assert (=> b!4641859 m!5502693))

(declare-fun m!5502695 () Bool)

(assert (=> b!4641859 m!5502695))

(declare-fun m!5502697 () Bool)

(assert (=> b!4641859 m!5502697))

(declare-fun m!5502699 () Bool)

(assert (=> b!4641859 m!5502699))

(declare-fun m!5502701 () Bool)

(assert (=> b!4641859 m!5502701))

(declare-fun m!5502703 () Bool)

(assert (=> b!4641859 m!5502703))

(assert (=> b!4641859 m!5502693))

(declare-fun m!5502705 () Bool)

(assert (=> b!4641859 m!5502705))

(declare-fun m!5502707 () Bool)

(assert (=> b!4641869 m!5502707))

(declare-fun m!5502709 () Bool)

(assert (=> b!4641868 m!5502709))

(declare-fun m!5502711 () Bool)

(assert (=> b!4641868 m!5502711))

(declare-fun m!5502713 () Bool)

(assert (=> b!4641868 m!5502713))

(declare-fun m!5502715 () Bool)

(assert (=> b!4641868 m!5502715))

(declare-fun m!5502717 () Bool)

(assert (=> b!4641868 m!5502717))

(declare-fun m!5502719 () Bool)

(assert (=> b!4641868 m!5502719))

(declare-fun m!5502721 () Bool)

(assert (=> b!4641868 m!5502721))

(declare-fun m!5502723 () Bool)

(assert (=> b!4641868 m!5502723))

(assert (=> b!4641868 m!5502721))

(declare-fun m!5502725 () Bool)

(assert (=> b!4641868 m!5502725))

(declare-fun m!5502727 () Bool)

(assert (=> b!4641868 m!5502727))

(declare-fun m!5502729 () Bool)

(assert (=> b!4641868 m!5502729))

(declare-fun m!5502731 () Bool)

(assert (=> b!4641868 m!5502731))

(declare-fun m!5502733 () Bool)

(assert (=> b!4641865 m!5502733))

(declare-fun m!5502735 () Bool)

(assert (=> b!4641865 m!5502735))

(declare-fun m!5502737 () Bool)

(assert (=> b!4641865 m!5502737))

(declare-fun m!5502739 () Bool)

(assert (=> b!4641865 m!5502739))

(declare-fun m!5502741 () Bool)

(assert (=> b!4641865 m!5502741))

(assert (=> b!4641865 m!5502735))

(declare-fun m!5502743 () Bool)

(assert (=> b!4641865 m!5502743))

(declare-fun m!5502745 () Bool)

(assert (=> b!4641865 m!5502745))

(declare-fun m!5502747 () Bool)

(assert (=> b!4641865 m!5502747))

(declare-fun m!5502749 () Bool)

(assert (=> b!4641865 m!5502749))

(assert (=> b!4641865 m!5502741))

(assert (=> b!4641865 m!5502745))

(declare-fun m!5502751 () Bool)

(assert (=> b!4641865 m!5502751))

(declare-fun m!5502753 () Bool)

(assert (=> b!4641865 m!5502753))

(declare-fun m!5502755 () Bool)

(assert (=> b!4641865 m!5502755))

(declare-fun m!5502757 () Bool)

(assert (=> b!4641865 m!5502757))

(declare-fun m!5502759 () Bool)

(assert (=> b!4641865 m!5502759))

(declare-fun m!5502761 () Bool)

(assert (=> b!4641865 m!5502761))

(declare-fun m!5502763 () Bool)

(assert (=> b!4641865 m!5502763))

(assert (=> b!4641865 m!5502757))

(declare-fun m!5502765 () Bool)

(assert (=> b!4641865 m!5502765))

(assert (=> b!4641865 m!5502753))

(assert (=> b!4641865 m!5502747))

(assert (=> b!4641865 m!5502733))

(assert (=> b!4641865 m!5502763))

(declare-fun m!5502767 () Bool)

(assert (=> b!4641865 m!5502767))

(declare-fun m!5502769 () Bool)

(assert (=> b!4641871 m!5502769))

(declare-fun m!5502771 () Bool)

(assert (=> b!4641871 m!5502771))

(declare-fun m!5502773 () Bool)

(assert (=> b!4641861 m!5502773))

(declare-fun m!5502775 () Bool)

(assert (=> b!4641857 m!5502775))

(declare-fun m!5502777 () Bool)

(assert (=> b!4641857 m!5502777))

(declare-fun m!5502779 () Bool)

(assert (=> b!4641857 m!5502779))

(declare-fun m!5502781 () Bool)

(assert (=> b!4641857 m!5502781))

(declare-fun m!5502783 () Bool)

(assert (=> b!4641864 m!5502783))

(declare-fun m!5502785 () Bool)

(assert (=> b!4641870 m!5502785))

(assert (=> b!4641870 m!5502785))

(declare-fun m!5502787 () Bool)

(assert (=> b!4641870 m!5502787))

(declare-fun m!5502789 () Bool)

(assert (=> b!4641870 m!5502789))

(declare-fun m!5502791 () Bool)

(assert (=> b!4641870 m!5502791))

(declare-fun m!5502793 () Bool)

(assert (=> b!4641862 m!5502793))

(declare-fun m!5502795 () Bool)

(assert (=> b!4641862 m!5502795))

(declare-fun m!5502797 () Bool)

(assert (=> start!466822 m!5502797))

(declare-fun m!5502799 () Bool)

(assert (=> b!4641860 m!5502799))

(declare-fun m!5502801 () Bool)

(assert (=> b!4641860 m!5502801))

(declare-fun m!5502803 () Bool)

(assert (=> b!4641860 m!5502803))

(push 1)

(assert (not b!4641871))

(assert (not b!4641862))

(assert (not b!4641863))

(assert (not b!4641865))

(assert (not b!4641860))

(assert (not b!4641869))

(assert tp_is_empty!29689)

(assert (not b!4641872))

(assert (not b!4641857))

(assert (not b!4641868))

(assert (not b!4641866))

(assert (not b!4641861))

(assert (not b!4641873))

(assert (not b!4641864))

(assert (not start!466822))

(assert (not b!4641859))

(assert tp_is_empty!29691)

(assert (not b!4641870))

(assert (not b!4641858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!324041 () Bool)

(declare-fun call!324046 () Bool)

(declare-datatypes ((List!51910 0))(
  ( (Nil!51786) (Cons!51786 (h!57900 K!13148) (t!358997 List!51910)) )
))
(declare-fun e!2895738 () List!51910)

(declare-fun contains!14920 (List!51910 K!13148) Bool)

(assert (=> bm!324041 (= call!324046 (contains!14920 e!2895738 key!4968))))

(declare-fun c!794300 () Bool)

(declare-fun c!794301 () Bool)

(assert (=> bm!324041 (= c!794300 c!794301)))

(declare-fun b!4641943 () Bool)

(declare-fun e!2895740 () Bool)

(declare-fun e!2895739 () Bool)

(assert (=> b!4641943 (= e!2895740 e!2895739)))

(declare-fun res!1949708 () Bool)

(assert (=> b!4641943 (=> (not res!1949708) (not e!2895739))))

(declare-datatypes ((Option!11765 0))(
  ( (None!11764) (Some!11764 (v!45998 V!13394)) )
))
(declare-fun isDefined!9030 (Option!11765) Bool)

(declare-fun getValueByKey!1563 (List!51906 K!13148) Option!11765)

(assert (=> b!4641943 (= res!1949708 (isDefined!9030 (getValueByKey!1563 (toList!5143 lt!1805150) key!4968)))))

(declare-fun b!4641944 () Bool)

(declare-fun keys!18309 (ListMap!4467) List!51910)

(assert (=> b!4641944 (= e!2895738 (keys!18309 lt!1805150))))

(declare-fun b!4641945 () Bool)

(declare-fun e!2895735 () Bool)

(assert (=> b!4641945 (= e!2895735 (not (contains!14920 (keys!18309 lt!1805150) key!4968)))))

(declare-fun b!4641946 () Bool)

(declare-fun e!2895737 () Unit!115507)

(declare-fun Unit!115511 () Unit!115507)

(assert (=> b!4641946 (= e!2895737 Unit!115511)))

(declare-fun b!4641947 () Bool)

(assert (=> b!4641947 (= e!2895739 (contains!14920 (keys!18309 lt!1805150) key!4968))))

(declare-fun d!1463430 () Bool)

(assert (=> d!1463430 e!2895740))

(declare-fun res!1949707 () Bool)

(assert (=> d!1463430 (=> res!1949707 e!2895740)))

(assert (=> d!1463430 (= res!1949707 e!2895735)))

(declare-fun res!1949709 () Bool)

(assert (=> d!1463430 (=> (not res!1949709) (not e!2895735))))

(declare-fun lt!1805267 () Bool)

(assert (=> d!1463430 (= res!1949709 (not lt!1805267))))

(declare-fun lt!1805269 () Bool)

(assert (=> d!1463430 (= lt!1805267 lt!1805269)))

(declare-fun lt!1805263 () Unit!115507)

(declare-fun e!2895736 () Unit!115507)

(assert (=> d!1463430 (= lt!1805263 e!2895736)))

(assert (=> d!1463430 (= c!794301 lt!1805269)))

(declare-fun containsKey!2643 (List!51906 K!13148) Bool)

(assert (=> d!1463430 (= lt!1805269 (containsKey!2643 (toList!5143 lt!1805150) key!4968))))

(assert (=> d!1463430 (= (contains!14914 lt!1805150 key!4968) lt!1805267)))

(declare-fun b!4641948 () Bool)

(declare-fun lt!1805262 () Unit!115507)

(assert (=> b!4641948 (= e!2895736 lt!1805262)))

(declare-fun lt!1805266 () Unit!115507)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1465 (List!51906 K!13148) Unit!115507)

(assert (=> b!4641948 (= lt!1805266 (lemmaContainsKeyImpliesGetValueByKeyDefined!1465 (toList!5143 lt!1805150) key!4968))))

(assert (=> b!4641948 (isDefined!9030 (getValueByKey!1563 (toList!5143 lt!1805150) key!4968))))

(declare-fun lt!1805268 () Unit!115507)

(assert (=> b!4641948 (= lt!1805268 lt!1805266)))

(declare-fun lemmaInListThenGetKeysListContains!711 (List!51906 K!13148) Unit!115507)

(assert (=> b!4641948 (= lt!1805262 (lemmaInListThenGetKeysListContains!711 (toList!5143 lt!1805150) key!4968))))

(assert (=> b!4641948 call!324046))

(declare-fun b!4641949 () Bool)

(declare-fun getKeysList!716 (List!51906) List!51910)

(assert (=> b!4641949 (= e!2895738 (getKeysList!716 (toList!5143 lt!1805150)))))

(declare-fun b!4641950 () Bool)

(assert (=> b!4641950 false))

(declare-fun lt!1805265 () Unit!115507)

(declare-fun lt!1805264 () Unit!115507)

(assert (=> b!4641950 (= lt!1805265 lt!1805264)))

(assert (=> b!4641950 (containsKey!2643 (toList!5143 lt!1805150) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!715 (List!51906 K!13148) Unit!115507)

(assert (=> b!4641950 (= lt!1805264 (lemmaInGetKeysListThenContainsKey!715 (toList!5143 lt!1805150) key!4968))))

(declare-fun Unit!115512 () Unit!115507)

(assert (=> b!4641950 (= e!2895737 Unit!115512)))

(declare-fun b!4641951 () Bool)

(assert (=> b!4641951 (= e!2895736 e!2895737)))

(declare-fun c!794299 () Bool)

(assert (=> b!4641951 (= c!794299 call!324046)))

(assert (= (and d!1463430 c!794301) b!4641948))

(assert (= (and d!1463430 (not c!794301)) b!4641951))

(assert (= (and b!4641951 c!794299) b!4641950))

(assert (= (and b!4641951 (not c!794299)) b!4641946))

(assert (= (or b!4641948 b!4641951) bm!324041))

(assert (= (and bm!324041 c!794300) b!4641949))

(assert (= (and bm!324041 (not c!794300)) b!4641944))

(assert (= (and d!1463430 res!1949709) b!4641945))

(assert (= (and d!1463430 (not res!1949707)) b!4641943))

(assert (= (and b!4641943 res!1949708) b!4641947))

(declare-fun m!5502925 () Bool)

(assert (=> b!4641944 m!5502925))

(declare-fun m!5502927 () Bool)

(assert (=> b!4641948 m!5502927))

(declare-fun m!5502929 () Bool)

(assert (=> b!4641948 m!5502929))

(assert (=> b!4641948 m!5502929))

(declare-fun m!5502931 () Bool)

(assert (=> b!4641948 m!5502931))

(declare-fun m!5502933 () Bool)

(assert (=> b!4641948 m!5502933))

(assert (=> b!4641947 m!5502925))

(assert (=> b!4641947 m!5502925))

(declare-fun m!5502935 () Bool)

(assert (=> b!4641947 m!5502935))

(declare-fun m!5502937 () Bool)

(assert (=> bm!324041 m!5502937))

(declare-fun m!5502939 () Bool)

(assert (=> d!1463430 m!5502939))

(declare-fun m!5502941 () Bool)

(assert (=> b!4641949 m!5502941))

(assert (=> b!4641945 m!5502925))

(assert (=> b!4641945 m!5502925))

(assert (=> b!4641945 m!5502935))

(assert (=> b!4641950 m!5502939))

(declare-fun m!5502943 () Bool)

(assert (=> b!4641950 m!5502943))

(assert (=> b!4641943 m!5502929))

(assert (=> b!4641943 m!5502929))

(assert (=> b!4641943 m!5502931))

(assert (=> b!4641871 d!1463430))

(declare-fun bs!1033982 () Bool)

(declare-fun d!1463432 () Bool)

(assert (= bs!1033982 (and d!1463432 b!4641868)))

(declare-fun lambda!196455 () Int)

(assert (=> bs!1033982 (= lambda!196455 lambda!196449)))

(declare-fun lt!1805272 () ListMap!4467)

(declare-fun invariantList!1265 (List!51906) Bool)

(assert (=> d!1463432 (invariantList!1265 (toList!5143 lt!1805272))))

(declare-fun e!2895743 () ListMap!4467)

(assert (=> d!1463432 (= lt!1805272 e!2895743)))

(declare-fun c!794304 () Bool)

(assert (=> d!1463432 (= c!794304 (is-Cons!51783 lt!1805145))))

(declare-fun forall!10949 (List!51907 Int) Bool)

(assert (=> d!1463432 (forall!10949 lt!1805145 lambda!196455)))

(assert (=> d!1463432 (= (extractMap!1655 lt!1805145) lt!1805272)))

(declare-fun b!4641956 () Bool)

(assert (=> b!4641956 (= e!2895743 (addToMapMapFromBucket!1058 (_2!29716 (h!57895 lt!1805145)) (extractMap!1655 (t!358993 lt!1805145))))))

(declare-fun b!4641957 () Bool)

(assert (=> b!4641957 (= e!2895743 (ListMap!4468 Nil!51782))))

(assert (= (and d!1463432 c!794304) b!4641956))

(assert (= (and d!1463432 (not c!794304)) b!4641957))

(declare-fun m!5502945 () Bool)

(assert (=> d!1463432 m!5502945))

(declare-fun m!5502947 () Bool)

(assert (=> d!1463432 m!5502947))

(declare-fun m!5502949 () Bool)

(assert (=> b!4641956 m!5502949))

(assert (=> b!4641956 m!5502949))

(declare-fun m!5502951 () Bool)

(assert (=> b!4641956 m!5502951))

(assert (=> b!4641871 d!1463432))

(declare-fun b!4641967 () Bool)

(declare-fun e!2895749 () List!51906)

(declare-fun e!2895748 () List!51906)

(assert (=> b!4641967 (= e!2895749 e!2895748)))

(declare-fun c!794309 () Bool)

(assert (=> b!4641967 (= c!794309 (is-Cons!51782 lt!1805146))))

(declare-fun b!4641966 () Bool)

(assert (=> b!4641966 (= e!2895749 (t!358992 lt!1805146))))

(declare-fun b!4641969 () Bool)

(assert (=> b!4641969 (= e!2895748 Nil!51782)))

(declare-fun b!4641968 () Bool)

(assert (=> b!4641968 (= e!2895748 (Cons!51782 (h!57894 lt!1805146) (removePairForKey!1222 (t!358992 lt!1805146) key!4968)))))

(declare-fun d!1463434 () Bool)

(declare-fun lt!1805275 () List!51906)

(assert (=> d!1463434 (not (containsKey!2641 lt!1805275 key!4968))))

(assert (=> d!1463434 (= lt!1805275 e!2895749)))

(declare-fun c!794310 () Bool)

(assert (=> d!1463434 (= c!794310 (and (is-Cons!51782 lt!1805146) (= (_1!29715 (h!57894 lt!1805146)) key!4968)))))

(assert (=> d!1463434 (noDuplicateKeys!1599 lt!1805146)))

(assert (=> d!1463434 (= (removePairForKey!1222 lt!1805146 key!4968) lt!1805275)))

(assert (= (and d!1463434 c!794310) b!4641966))

(assert (= (and d!1463434 (not c!794310)) b!4641967))

(assert (= (and b!4641967 c!794309) b!4641968))

(assert (= (and b!4641967 (not c!794309)) b!4641969))

(declare-fun m!5502953 () Bool)

(assert (=> b!4641968 m!5502953))

(declare-fun m!5502955 () Bool)

(assert (=> d!1463434 m!5502955))

(declare-fun m!5502957 () Bool)

(assert (=> d!1463434 m!5502957))

(assert (=> b!4641860 d!1463434))

(declare-fun d!1463436 () Bool)

(assert (=> d!1463436 (= (tail!8222 newBucket!224) (t!358992 newBucket!224))))

(assert (=> b!4641860 d!1463436))

(declare-fun d!1463438 () Bool)

(assert (=> d!1463438 (= (tail!8222 oldBucket!40) (t!358992 oldBucket!40))))

(assert (=> b!4641860 d!1463438))

(declare-fun d!1463440 () Bool)

(declare-fun content!8944 (List!51906) (Set tuple2!52842))

(assert (=> d!1463440 (= (eq!890 lt!1805148 lt!1805137) (= (content!8944 (toList!5143 lt!1805148)) (content!8944 (toList!5143 lt!1805137))))))

(declare-fun bs!1033983 () Bool)

(assert (= bs!1033983 d!1463440))

(declare-fun m!5502959 () Bool)

(assert (=> bs!1033983 m!5502959))

(declare-fun m!5502961 () Bool)

(assert (=> bs!1033983 m!5502961))

(assert (=> b!4641859 d!1463440))

(declare-fun d!1463442 () Bool)

(assert (=> d!1463442 (eq!890 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783)) (-!603 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 (t!358992 oldBucket!40)) Nil!51783)) key!4968))))

(declare-fun lt!1805278 () Unit!115507)

(declare-fun choose!31793 ((_ BitVec 64) List!51906 List!51906 K!13148 Hashable!5996) Unit!115507)

(assert (=> d!1463442 (= lt!1805278 (choose!31793 hash!414 (t!358992 oldBucket!40) lt!1805123 key!4968 hashF!1389))))

(assert (=> d!1463442 (noDuplicateKeys!1599 (t!358992 oldBucket!40))))

(assert (=> d!1463442 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!155 hash!414 (t!358992 oldBucket!40) lt!1805123 key!4968 hashF!1389) lt!1805278)))

(declare-fun bs!1033984 () Bool)

(assert (= bs!1033984 d!1463442))

(assert (=> bs!1033984 m!5502789))

(declare-fun m!5502963 () Bool)

(assert (=> bs!1033984 m!5502963))

(declare-fun m!5502965 () Bool)

(assert (=> bs!1033984 m!5502965))

(declare-fun m!5502967 () Bool)

(assert (=> bs!1033984 m!5502967))

(declare-fun m!5502969 () Bool)

(assert (=> bs!1033984 m!5502969))

(assert (=> bs!1033984 m!5502789))

(assert (=> bs!1033984 m!5502967))

(assert (=> bs!1033984 m!5502963))

(declare-fun m!5502971 () Bool)

(assert (=> bs!1033984 m!5502971))

(assert (=> b!4641859 d!1463442))

(declare-fun d!1463444 () Bool)

(declare-fun e!2895756 () Bool)

(assert (=> d!1463444 e!2895756))

(declare-fun res!1949716 () Bool)

(assert (=> d!1463444 (=> (not res!1949716) (not e!2895756))))

(declare-fun lt!1805281 () ListMap!4467)

(assert (=> d!1463444 (= res!1949716 (not (contains!14914 lt!1805281 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!296 (List!51906 K!13148) List!51906)

(assert (=> d!1463444 (= lt!1805281 (ListMap!4468 (removePresrvNoDuplicatedKeys!296 (toList!5143 lt!1805149) key!4968)))))

(assert (=> d!1463444 (= (-!603 lt!1805149 key!4968) lt!1805281)))

(declare-fun b!4641976 () Bool)

(declare-fun content!8945 (List!51910) (Set K!13148))

(assert (=> b!4641976 (= e!2895756 (= (set.minus (content!8945 (keys!18309 lt!1805149)) (set.insert key!4968 (as set.empty (Set K!13148)))) (content!8945 (keys!18309 lt!1805281))))))

(assert (= (and d!1463444 res!1949716) b!4641976))

(declare-fun m!5502973 () Bool)

(assert (=> d!1463444 m!5502973))

(declare-fun m!5502975 () Bool)

(assert (=> d!1463444 m!5502975))

(declare-fun m!5502977 () Bool)

(assert (=> b!4641976 m!5502977))

(declare-fun m!5502979 () Bool)

(assert (=> b!4641976 m!5502979))

(declare-fun m!5502981 () Bool)

(assert (=> b!4641976 m!5502981))

(assert (=> b!4641976 m!5502977))

(declare-fun m!5502983 () Bool)

(assert (=> b!4641976 m!5502983))

(assert (=> b!4641976 m!5502979))

(declare-fun m!5502985 () Bool)

(assert (=> b!4641976 m!5502985))

(assert (=> b!4641859 d!1463444))

(declare-fun d!1463448 () Bool)

(declare-fun e!2895761 () Bool)

(assert (=> d!1463448 e!2895761))

(declare-fun res!1949724 () Bool)

(assert (=> d!1463448 (=> (not res!1949724) (not e!2895761))))

(declare-fun lt!1805292 () ListMap!4467)

(assert (=> d!1463448 (= res!1949724 (contains!14914 lt!1805292 (_1!29715 (h!57894 oldBucket!40))))))

(declare-fun lt!1805293 () List!51906)

(assert (=> d!1463448 (= lt!1805292 (ListMap!4468 lt!1805293))))

(declare-fun lt!1805291 () Unit!115507)

(declare-fun lt!1805290 () Unit!115507)

(assert (=> d!1463448 (= lt!1805291 lt!1805290)))

(assert (=> d!1463448 (= (getValueByKey!1563 lt!1805293 (_1!29715 (h!57894 oldBucket!40))) (Some!11764 (_2!29715 (h!57894 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!901 (List!51906 K!13148 V!13394) Unit!115507)

(assert (=> d!1463448 (= lt!1805290 (lemmaContainsTupThenGetReturnValue!901 lt!1805293 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!409 (List!51906 K!13148 V!13394) List!51906)

(assert (=> d!1463448 (= lt!1805293 (insertNoDuplicatedKeys!409 (toList!5143 lt!1805137) (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463448 (= (+!1949 lt!1805137 (h!57894 oldBucket!40)) lt!1805292)))

(declare-fun b!4641983 () Bool)

(declare-fun res!1949723 () Bool)

(assert (=> b!4641983 (=> (not res!1949723) (not e!2895761))))

(assert (=> b!4641983 (= res!1949723 (= (getValueByKey!1563 (toList!5143 lt!1805292) (_1!29715 (h!57894 oldBucket!40))) (Some!11764 (_2!29715 (h!57894 oldBucket!40)))))))

(declare-fun b!4641984 () Bool)

(declare-fun contains!14921 (List!51906 tuple2!52842) Bool)

(assert (=> b!4641984 (= e!2895761 (contains!14921 (toList!5143 lt!1805292) (h!57894 oldBucket!40)))))

(assert (= (and d!1463448 res!1949724) b!4641983))

(assert (= (and b!4641983 res!1949723) b!4641984))

(declare-fun m!5502993 () Bool)

(assert (=> d!1463448 m!5502993))

(declare-fun m!5502995 () Bool)

(assert (=> d!1463448 m!5502995))

(declare-fun m!5502997 () Bool)

(assert (=> d!1463448 m!5502997))

(declare-fun m!5502999 () Bool)

(assert (=> d!1463448 m!5502999))

(declare-fun m!5503001 () Bool)

(assert (=> b!4641983 m!5503001))

(declare-fun m!5503003 () Bool)

(assert (=> b!4641984 m!5503003))

(assert (=> b!4641859 d!1463448))

(declare-fun d!1463454 () Bool)

(declare-fun e!2895762 () Bool)

(assert (=> d!1463454 e!2895762))

(declare-fun res!1949726 () Bool)

(assert (=> d!1463454 (=> (not res!1949726) (not e!2895762))))

(declare-fun lt!1805296 () ListMap!4467)

(assert (=> d!1463454 (= res!1949726 (contains!14914 lt!1805296 (_1!29715 (h!57894 oldBucket!40))))))

(declare-fun lt!1805297 () List!51906)

(assert (=> d!1463454 (= lt!1805296 (ListMap!4468 lt!1805297))))

(declare-fun lt!1805295 () Unit!115507)

(declare-fun lt!1805294 () Unit!115507)

(assert (=> d!1463454 (= lt!1805295 lt!1805294)))

(assert (=> d!1463454 (= (getValueByKey!1563 lt!1805297 (_1!29715 (h!57894 oldBucket!40))) (Some!11764 (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463454 (= lt!1805294 (lemmaContainsTupThenGetReturnValue!901 lt!1805297 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463454 (= lt!1805297 (insertNoDuplicatedKeys!409 (toList!5143 lt!1805149) (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463454 (= (+!1949 lt!1805149 (h!57894 oldBucket!40)) lt!1805296)))

(declare-fun b!4641985 () Bool)

(declare-fun res!1949725 () Bool)

(assert (=> b!4641985 (=> (not res!1949725) (not e!2895762))))

(assert (=> b!4641985 (= res!1949725 (= (getValueByKey!1563 (toList!5143 lt!1805296) (_1!29715 (h!57894 oldBucket!40))) (Some!11764 (_2!29715 (h!57894 oldBucket!40)))))))

(declare-fun b!4641986 () Bool)

(assert (=> b!4641986 (= e!2895762 (contains!14921 (toList!5143 lt!1805296) (h!57894 oldBucket!40)))))

(assert (= (and d!1463454 res!1949726) b!4641985))

(assert (= (and b!4641985 res!1949725) b!4641986))

(declare-fun m!5503005 () Bool)

(assert (=> d!1463454 m!5503005))

(declare-fun m!5503007 () Bool)

(assert (=> d!1463454 m!5503007))

(declare-fun m!5503009 () Bool)

(assert (=> d!1463454 m!5503009))

(declare-fun m!5503011 () Bool)

(assert (=> d!1463454 m!5503011))

(declare-fun m!5503013 () Bool)

(assert (=> b!4641985 m!5503013))

(declare-fun m!5503015 () Bool)

(assert (=> b!4641986 m!5503015))

(assert (=> b!4641859 d!1463454))

(declare-fun d!1463456 () Bool)

(declare-fun e!2895763 () Bool)

(assert (=> d!1463456 e!2895763))

(declare-fun res!1949727 () Bool)

(assert (=> d!1463456 (=> (not res!1949727) (not e!2895763))))

(declare-fun lt!1805298 () ListMap!4467)

(assert (=> d!1463456 (= res!1949727 (not (contains!14914 lt!1805298 key!4968)))))

(assert (=> d!1463456 (= lt!1805298 (ListMap!4468 (removePresrvNoDuplicatedKeys!296 (toList!5143 lt!1805126) key!4968)))))

(assert (=> d!1463456 (= (-!603 lt!1805126 key!4968) lt!1805298)))

(declare-fun b!4641987 () Bool)

(assert (=> b!4641987 (= e!2895763 (= (set.minus (content!8945 (keys!18309 lt!1805126)) (set.insert key!4968 (as set.empty (Set K!13148)))) (content!8945 (keys!18309 lt!1805298))))))

(assert (= (and d!1463456 res!1949727) b!4641987))

(declare-fun m!5503017 () Bool)

(assert (=> d!1463456 m!5503017))

(declare-fun m!5503019 () Bool)

(assert (=> d!1463456 m!5503019))

(declare-fun m!5503021 () Bool)

(assert (=> b!4641987 m!5503021))

(declare-fun m!5503023 () Bool)

(assert (=> b!4641987 m!5503023))

(declare-fun m!5503025 () Bool)

(assert (=> b!4641987 m!5503025))

(assert (=> b!4641987 m!5503021))

(declare-fun m!5503027 () Bool)

(assert (=> b!4641987 m!5503027))

(assert (=> b!4641987 m!5503023))

(assert (=> b!4641987 m!5502985))

(assert (=> b!4641859 d!1463456))

(declare-fun d!1463458 () Bool)

(declare-fun e!2895764 () Bool)

(assert (=> d!1463458 e!2895764))

(declare-fun res!1949728 () Bool)

(assert (=> d!1463458 (=> (not res!1949728) (not e!2895764))))

(declare-fun lt!1805299 () ListMap!4467)

(assert (=> d!1463458 (= res!1949728 (not (contains!14914 lt!1805299 key!4968)))))

(assert (=> d!1463458 (= lt!1805299 (ListMap!4468 (removePresrvNoDuplicatedKeys!296 (toList!5143 (+!1949 lt!1805149 (h!57894 oldBucket!40))) key!4968)))))

(assert (=> d!1463458 (= (-!603 (+!1949 lt!1805149 (h!57894 oldBucket!40)) key!4968) lt!1805299)))

(declare-fun b!4641988 () Bool)

(assert (=> b!4641988 (= e!2895764 (= (set.minus (content!8945 (keys!18309 (+!1949 lt!1805149 (h!57894 oldBucket!40)))) (set.insert key!4968 (as set.empty (Set K!13148)))) (content!8945 (keys!18309 lt!1805299))))))

(assert (= (and d!1463458 res!1949728) b!4641988))

(declare-fun m!5503029 () Bool)

(assert (=> d!1463458 m!5503029))

(declare-fun m!5503031 () Bool)

(assert (=> d!1463458 m!5503031))

(declare-fun m!5503033 () Bool)

(assert (=> b!4641988 m!5503033))

(declare-fun m!5503035 () Bool)

(assert (=> b!4641988 m!5503035))

(declare-fun m!5503037 () Bool)

(assert (=> b!4641988 m!5503037))

(assert (=> b!4641988 m!5503033))

(declare-fun m!5503039 () Bool)

(assert (=> b!4641988 m!5503039))

(assert (=> b!4641988 m!5502693))

(assert (=> b!4641988 m!5503035))

(assert (=> b!4641988 m!5502985))

(assert (=> b!4641859 d!1463458))

(declare-fun d!1463460 () Bool)

(assert (=> d!1463460 (= (-!603 (+!1949 lt!1805149 (tuple2!52843 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40)))) key!4968) (+!1949 (-!603 lt!1805149 key!4968) (tuple2!52843 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40)))))))

(declare-fun lt!1805304 () Unit!115507)

(declare-fun choose!31794 (ListMap!4467 K!13148 V!13394 K!13148) Unit!115507)

(assert (=> d!1463460 (= lt!1805304 (choose!31794 lt!1805149 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40)) key!4968))))

(assert (=> d!1463460 (not (= (_1!29715 (h!57894 oldBucket!40)) key!4968))))

(assert (=> d!1463460 (= (addRemoveCommutativeForDiffKeys!48 lt!1805149 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40)) key!4968) lt!1805304)))

(declare-fun bs!1033986 () Bool)

(assert (= bs!1033986 d!1463460))

(declare-fun m!5503041 () Bool)

(assert (=> bs!1033986 m!5503041))

(assert (=> bs!1033986 m!5503041))

(declare-fun m!5503043 () Bool)

(assert (=> bs!1033986 m!5503043))

(assert (=> bs!1033986 m!5502691))

(assert (=> bs!1033986 m!5502691))

(declare-fun m!5503045 () Bool)

(assert (=> bs!1033986 m!5503045))

(declare-fun m!5503047 () Bool)

(assert (=> bs!1033986 m!5503047))

(assert (=> b!4641859 d!1463460))

(declare-fun d!1463462 () Bool)

(assert (=> d!1463462 (= (eq!890 lt!1805152 (+!1949 lt!1805148 lt!1805132)) (= (content!8944 (toList!5143 lt!1805152)) (content!8944 (toList!5143 (+!1949 lt!1805148 lt!1805132)))))))

(declare-fun bs!1033987 () Bool)

(assert (= bs!1033987 d!1463462))

(declare-fun m!5503049 () Bool)

(assert (=> bs!1033987 m!5503049))

(declare-fun m!5503051 () Bool)

(assert (=> bs!1033987 m!5503051))

(assert (=> b!4641870 d!1463462))

(declare-fun d!1463464 () Bool)

(declare-fun e!2895768 () Bool)

(assert (=> d!1463464 e!2895768))

(declare-fun res!1949733 () Bool)

(assert (=> d!1463464 (=> (not res!1949733) (not e!2895768))))

(declare-fun lt!1805308 () ListMap!4467)

(assert (=> d!1463464 (= res!1949733 (contains!14914 lt!1805308 (_1!29715 lt!1805132)))))

(declare-fun lt!1805309 () List!51906)

(assert (=> d!1463464 (= lt!1805308 (ListMap!4468 lt!1805309))))

(declare-fun lt!1805307 () Unit!115507)

(declare-fun lt!1805306 () Unit!115507)

(assert (=> d!1463464 (= lt!1805307 lt!1805306)))

(assert (=> d!1463464 (= (getValueByKey!1563 lt!1805309 (_1!29715 lt!1805132)) (Some!11764 (_2!29715 lt!1805132)))))

(assert (=> d!1463464 (= lt!1805306 (lemmaContainsTupThenGetReturnValue!901 lt!1805309 (_1!29715 lt!1805132) (_2!29715 lt!1805132)))))

(assert (=> d!1463464 (= lt!1805309 (insertNoDuplicatedKeys!409 (toList!5143 lt!1805148) (_1!29715 lt!1805132) (_2!29715 lt!1805132)))))

(assert (=> d!1463464 (= (+!1949 lt!1805148 lt!1805132) lt!1805308)))

(declare-fun b!4641992 () Bool)

(declare-fun res!1949732 () Bool)

(assert (=> b!4641992 (=> (not res!1949732) (not e!2895768))))

(assert (=> b!4641992 (= res!1949732 (= (getValueByKey!1563 (toList!5143 lt!1805308) (_1!29715 lt!1805132)) (Some!11764 (_2!29715 lt!1805132))))))

(declare-fun b!4641993 () Bool)

(assert (=> b!4641993 (= e!2895768 (contains!14921 (toList!5143 lt!1805308) lt!1805132))))

(assert (= (and d!1463464 res!1949733) b!4641992))

(assert (= (and b!4641992 res!1949732) b!4641993))

(declare-fun m!5503053 () Bool)

(assert (=> d!1463464 m!5503053))

(declare-fun m!5503055 () Bool)

(assert (=> d!1463464 m!5503055))

(declare-fun m!5503057 () Bool)

(assert (=> d!1463464 m!5503057))

(declare-fun m!5503059 () Bool)

(assert (=> d!1463464 m!5503059))

(declare-fun m!5503061 () Bool)

(assert (=> b!4641992 m!5503061))

(declare-fun m!5503063 () Bool)

(assert (=> b!4641993 m!5503063))

(assert (=> b!4641870 d!1463464))

(declare-fun bs!1033988 () Bool)

(declare-fun d!1463466 () Bool)

(assert (= bs!1033988 (and d!1463466 b!4641868)))

(declare-fun lambda!196456 () Int)

(assert (=> bs!1033988 (= lambda!196456 lambda!196449)))

(declare-fun bs!1033989 () Bool)

(assert (= bs!1033989 (and d!1463466 d!1463432)))

(assert (=> bs!1033989 (= lambda!196456 lambda!196455)))

(declare-fun lt!1805310 () ListMap!4467)

(assert (=> d!1463466 (invariantList!1265 (toList!5143 lt!1805310))))

(declare-fun e!2895769 () ListMap!4467)

(assert (=> d!1463466 (= lt!1805310 e!2895769)))

(declare-fun c!794311 () Bool)

(assert (=> d!1463466 (= c!794311 (is-Cons!51783 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783)))))

(assert (=> d!1463466 (forall!10949 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783) lambda!196456)))

(assert (=> d!1463466 (= (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783)) lt!1805310)))

(declare-fun b!4641994 () Bool)

(assert (=> b!4641994 (= e!2895769 (addToMapMapFromBucket!1058 (_2!29716 (h!57895 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783))) (extractMap!1655 (t!358993 (Cons!51783 (tuple2!52845 hash!414 lt!1805123) Nil!51783)))))))

(declare-fun b!4641995 () Bool)

(assert (=> b!4641995 (= e!2895769 (ListMap!4468 Nil!51782))))

(assert (= (and d!1463466 c!794311) b!4641994))

(assert (= (and d!1463466 (not c!794311)) b!4641995))

(declare-fun m!5503079 () Bool)

(assert (=> d!1463466 m!5503079))

(declare-fun m!5503081 () Bool)

(assert (=> d!1463466 m!5503081))

(declare-fun m!5503083 () Bool)

(assert (=> b!4641994 m!5503083))

(assert (=> b!4641994 m!5503083))

(declare-fun m!5503085 () Bool)

(assert (=> b!4641994 m!5503085))

(assert (=> b!4641870 d!1463466))

(declare-fun bs!1033990 () Bool)

(declare-fun d!1463470 () Bool)

(assert (= bs!1033990 (and d!1463470 b!4641868)))

(declare-fun lambda!196457 () Int)

(assert (=> bs!1033990 (= lambda!196457 lambda!196449)))

(declare-fun bs!1033991 () Bool)

(assert (= bs!1033991 (and d!1463470 d!1463432)))

(assert (=> bs!1033991 (= lambda!196457 lambda!196455)))

(declare-fun bs!1033992 () Bool)

(assert (= bs!1033992 (and d!1463470 d!1463466)))

(assert (=> bs!1033992 (= lambda!196457 lambda!196456)))

(declare-fun lt!1805311 () ListMap!4467)

(assert (=> d!1463470 (invariantList!1265 (toList!5143 lt!1805311))))

(declare-fun e!2895770 () ListMap!4467)

(assert (=> d!1463470 (= lt!1805311 e!2895770)))

(declare-fun c!794312 () Bool)

(assert (=> d!1463470 (= c!794312 (is-Cons!51783 (Cons!51783 (tuple2!52845 hash!414 newBucket!224) Nil!51783)))))

(assert (=> d!1463470 (forall!10949 (Cons!51783 (tuple2!52845 hash!414 newBucket!224) Nil!51783) lambda!196457)))

(assert (=> d!1463470 (= (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 newBucket!224) Nil!51783)) lt!1805311)))

(declare-fun b!4641996 () Bool)

(assert (=> b!4641996 (= e!2895770 (addToMapMapFromBucket!1058 (_2!29716 (h!57895 (Cons!51783 (tuple2!52845 hash!414 newBucket!224) Nil!51783))) (extractMap!1655 (t!358993 (Cons!51783 (tuple2!52845 hash!414 newBucket!224) Nil!51783)))))))

(declare-fun b!4641997 () Bool)

(assert (=> b!4641997 (= e!2895770 (ListMap!4468 Nil!51782))))

(assert (= (and d!1463470 c!794312) b!4641996))

(assert (= (and d!1463470 (not c!794312)) b!4641997))

(declare-fun m!5503087 () Bool)

(assert (=> d!1463470 m!5503087))

(declare-fun m!5503089 () Bool)

(assert (=> d!1463470 m!5503089))

(declare-fun m!5503091 () Bool)

(assert (=> b!4641996 m!5503091))

(assert (=> b!4641996 m!5503091))

(declare-fun m!5503093 () Bool)

(assert (=> b!4641996 m!5503093))

(assert (=> b!4641870 d!1463470))

(declare-fun d!1463472 () Bool)

(declare-fun res!1949738 () Bool)

(declare-fun e!2895775 () Bool)

(assert (=> d!1463472 (=> res!1949738 e!2895775)))

(assert (=> d!1463472 (= res!1949738 (not (is-Cons!51782 newBucket!224)))))

(assert (=> d!1463472 (= (noDuplicateKeys!1599 newBucket!224) e!2895775)))

(declare-fun b!4642002 () Bool)

(declare-fun e!2895776 () Bool)

(assert (=> b!4642002 (= e!2895775 e!2895776)))

(declare-fun res!1949739 () Bool)

(assert (=> b!4642002 (=> (not res!1949739) (not e!2895776))))

(assert (=> b!4642002 (= res!1949739 (not (containsKey!2641 (t!358992 newBucket!224) (_1!29715 (h!57894 newBucket!224)))))))

(declare-fun b!4642003 () Bool)

(assert (=> b!4642003 (= e!2895776 (noDuplicateKeys!1599 (t!358992 newBucket!224)))))

(assert (= (and d!1463472 (not res!1949738)) b!4642002))

(assert (= (and b!4642002 res!1949739) b!4642003))

(declare-fun m!5503095 () Bool)

(assert (=> b!4642002 m!5503095))

(declare-fun m!5503097 () Bool)

(assert (=> b!4642003 m!5503097))

(assert (=> b!4641869 d!1463472))

(declare-fun d!1463474 () Bool)

(declare-fun res!1949740 () Bool)

(declare-fun e!2895777 () Bool)

(assert (=> d!1463474 (=> res!1949740 e!2895777)))

(assert (=> d!1463474 (= res!1949740 (not (is-Cons!51782 oldBucket!40)))))

(assert (=> d!1463474 (= (noDuplicateKeys!1599 oldBucket!40) e!2895777)))

(declare-fun b!4642004 () Bool)

(declare-fun e!2895778 () Bool)

(assert (=> b!4642004 (= e!2895777 e!2895778)))

(declare-fun res!1949741 () Bool)

(assert (=> b!4642004 (=> (not res!1949741) (not e!2895778))))

(assert (=> b!4642004 (= res!1949741 (not (containsKey!2641 (t!358992 oldBucket!40) (_1!29715 (h!57894 oldBucket!40)))))))

(declare-fun b!4642005 () Bool)

(assert (=> b!4642005 (= e!2895778 (noDuplicateKeys!1599 (t!358992 oldBucket!40)))))

(assert (= (and d!1463474 (not res!1949740)) b!4642004))

(assert (= (and b!4642004 res!1949741) b!4642005))

(declare-fun m!5503099 () Bool)

(assert (=> b!4642004 m!5503099))

(assert (=> b!4642005 m!5502971))

(assert (=> start!466822 d!1463474))

(declare-fun d!1463476 () Bool)

(assert (=> d!1463476 (= (eq!890 lt!1805138 lt!1805128) (= (content!8944 (toList!5143 lt!1805138)) (content!8944 (toList!5143 lt!1805128))))))

(declare-fun bs!1033993 () Bool)

(assert (= bs!1033993 d!1463476))

(declare-fun m!5503101 () Bool)

(assert (=> bs!1033993 m!5503101))

(declare-fun m!5503103 () Bool)

(assert (=> bs!1033993 m!5503103))

(assert (=> b!4641857 d!1463476))

(declare-fun d!1463478 () Bool)

(assert (=> d!1463478 (= (eq!890 lt!1805140 lt!1805138) (= (content!8944 (toList!5143 lt!1805140)) (content!8944 (toList!5143 lt!1805138))))))

(declare-fun bs!1033994 () Bool)

(assert (= bs!1033994 d!1463478))

(declare-fun m!5503105 () Bool)

(assert (=> bs!1033994 m!5503105))

(assert (=> bs!1033994 m!5503101))

(assert (=> b!4641857 d!1463478))

(declare-fun d!1463480 () Bool)

(declare-fun e!2895779 () Bool)

(assert (=> d!1463480 e!2895779))

(declare-fun res!1949742 () Bool)

(assert (=> d!1463480 (=> (not res!1949742) (not e!2895779))))

(declare-fun lt!1805312 () ListMap!4467)

(assert (=> d!1463480 (= res!1949742 (not (contains!14914 lt!1805312 key!4968)))))

(assert (=> d!1463480 (= lt!1805312 (ListMap!4468 (removePresrvNoDuplicatedKeys!296 (toList!5143 lt!1805150) key!4968)))))

(assert (=> d!1463480 (= (-!603 lt!1805150 key!4968) lt!1805312)))

(declare-fun b!4642006 () Bool)

(assert (=> b!4642006 (= e!2895779 (= (set.minus (content!8945 (keys!18309 lt!1805150)) (set.insert key!4968 (as set.empty (Set K!13148)))) (content!8945 (keys!18309 lt!1805312))))))

(assert (= (and d!1463480 res!1949742) b!4642006))

(declare-fun m!5503107 () Bool)

(assert (=> d!1463480 m!5503107))

(declare-fun m!5503109 () Bool)

(assert (=> d!1463480 m!5503109))

(declare-fun m!5503111 () Bool)

(assert (=> b!4642006 m!5503111))

(assert (=> b!4642006 m!5502925))

(declare-fun m!5503113 () Bool)

(assert (=> b!4642006 m!5503113))

(assert (=> b!4642006 m!5503111))

(declare-fun m!5503115 () Bool)

(assert (=> b!4642006 m!5503115))

(assert (=> b!4642006 m!5502925))

(assert (=> b!4642006 m!5502985))

(assert (=> b!4641857 d!1463480))

(declare-fun d!1463482 () Bool)

(assert (=> d!1463482 (eq!890 (-!603 lt!1805126 key!4968) (-!603 lt!1805150 key!4968))))

(declare-fun lt!1805315 () Unit!115507)

(declare-fun choose!31795 (ListMap!4467 ListMap!4467 K!13148) Unit!115507)

(assert (=> d!1463482 (= lt!1805315 (choose!31795 lt!1805126 lt!1805150 key!4968))))

(assert (=> d!1463482 (eq!890 lt!1805126 lt!1805150)))

(assert (=> d!1463482 (= (lemmaRemovePreservesEq!51 lt!1805126 lt!1805150 key!4968) lt!1805315)))

(declare-fun bs!1033995 () Bool)

(assert (= bs!1033995 d!1463482))

(assert (=> bs!1033995 m!5502779))

(assert (=> bs!1033995 m!5502697))

(assert (=> bs!1033995 m!5502779))

(declare-fun m!5503117 () Bool)

(assert (=> bs!1033995 m!5503117))

(assert (=> bs!1033995 m!5502697))

(declare-fun m!5503119 () Bool)

(assert (=> bs!1033995 m!5503119))

(declare-fun m!5503121 () Bool)

(assert (=> bs!1033995 m!5503121))

(assert (=> b!4641857 d!1463482))

(declare-fun d!1463484 () Bool)

(declare-fun e!2895784 () Bool)

(assert (=> d!1463484 e!2895784))

(declare-fun res!1949745 () Bool)

(assert (=> d!1463484 (=> res!1949745 e!2895784)))

(declare-fun lt!1805325 () Bool)

(assert (=> d!1463484 (= res!1949745 (not lt!1805325))))

(declare-fun lt!1805327 () Bool)

(assert (=> d!1463484 (= lt!1805325 lt!1805327)))

(declare-fun lt!1805326 () Unit!115507)

(declare-fun e!2895785 () Unit!115507)

(assert (=> d!1463484 (= lt!1805326 e!2895785)))

(declare-fun c!794315 () Bool)

(assert (=> d!1463484 (= c!794315 lt!1805327)))

(declare-fun containsKey!2644 (List!51907 (_ BitVec 64)) Bool)

(assert (=> d!1463484 (= lt!1805327 (containsKey!2644 (toList!5144 lt!1805139) lt!1805147))))

(assert (=> d!1463484 (= (contains!14916 lt!1805139 lt!1805147) lt!1805325)))

(declare-fun b!4642013 () Bool)

(declare-fun lt!1805324 () Unit!115507)

(assert (=> b!4642013 (= e!2895785 lt!1805324)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1466 (List!51907 (_ BitVec 64)) Unit!115507)

(assert (=> b!4642013 (= lt!1805324 (lemmaContainsKeyImpliesGetValueByKeyDefined!1466 (toList!5144 lt!1805139) lt!1805147))))

(declare-datatypes ((Option!11766 0))(
  ( (None!11765) (Some!11765 (v!45999 List!51906)) )
))
(declare-fun isDefined!9031 (Option!11766) Bool)

(declare-fun getValueByKey!1564 (List!51907 (_ BitVec 64)) Option!11766)

(assert (=> b!4642013 (isDefined!9031 (getValueByKey!1564 (toList!5144 lt!1805139) lt!1805147))))

(declare-fun b!4642014 () Bool)

(declare-fun Unit!115513 () Unit!115507)

(assert (=> b!4642014 (= e!2895785 Unit!115513)))

(declare-fun b!4642015 () Bool)

(assert (=> b!4642015 (= e!2895784 (isDefined!9031 (getValueByKey!1564 (toList!5144 lt!1805139) lt!1805147)))))

(assert (= (and d!1463484 c!794315) b!4642013))

(assert (= (and d!1463484 (not c!794315)) b!4642014))

(assert (= (and d!1463484 (not res!1949745)) b!4642015))

(declare-fun m!5503123 () Bool)

(assert (=> d!1463484 m!5503123))

(declare-fun m!5503125 () Bool)

(assert (=> b!4642013 m!5503125))

(declare-fun m!5503127 () Bool)

(assert (=> b!4642013 m!5503127))

(assert (=> b!4642013 m!5503127))

(declare-fun m!5503129 () Bool)

(assert (=> b!4642013 m!5503129))

(assert (=> b!4642015 m!5503127))

(assert (=> b!4642015 m!5503127))

(assert (=> b!4642015 m!5503129))

(assert (=> b!4641868 d!1463484))

(declare-fun d!1463486 () Bool)

(assert (=> d!1463486 (containsKey!2641 oldBucket!40 key!4968)))

(declare-fun lt!1805330 () Unit!115507)

(declare-fun choose!31796 (List!51906 K!13148 Hashable!5996) Unit!115507)

(assert (=> d!1463486 (= lt!1805330 (choose!31796 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1463486 (noDuplicateKeys!1599 oldBucket!40)))

(assert (=> d!1463486 (= (lemmaGetPairDefinedThenContainsKey!113 oldBucket!40 key!4968 hashF!1389) lt!1805330)))

(declare-fun bs!1033996 () Bool)

(assert (= bs!1033996 d!1463486))

(assert (=> bs!1033996 m!5502729))

(declare-fun m!5503131 () Bool)

(assert (=> bs!1033996 m!5503131))

(assert (=> bs!1033996 m!5502797))

(assert (=> b!4641868 d!1463486))

(declare-fun bs!1033997 () Bool)

(declare-fun d!1463488 () Bool)

(assert (= bs!1033997 (and d!1463488 b!4641868)))

(declare-fun lambda!196460 () Int)

(assert (=> bs!1033997 (= lambda!196460 lambda!196449)))

(declare-fun bs!1033998 () Bool)

(assert (= bs!1033998 (and d!1463488 d!1463432)))

(assert (=> bs!1033998 (= lambda!196460 lambda!196455)))

(declare-fun bs!1033999 () Bool)

(assert (= bs!1033999 (and d!1463488 d!1463466)))

(assert (=> bs!1033999 (= lambda!196460 lambda!196456)))

(declare-fun bs!1034000 () Bool)

(assert (= bs!1034000 (and d!1463488 d!1463470)))

(assert (=> bs!1034000 (= lambda!196460 lambda!196457)))

(assert (=> d!1463488 (contains!14916 lt!1805139 (hash!3694 hashF!1389 key!4968))))

(declare-fun lt!1805333 () Unit!115507)

(declare-fun choose!31797 (ListLongMap!3713 K!13148 Hashable!5996) Unit!115507)

(assert (=> d!1463488 (= lt!1805333 (choose!31797 lt!1805139 key!4968 hashF!1389))))

(assert (=> d!1463488 (forall!10949 (toList!5144 lt!1805139) lambda!196460)))

(assert (=> d!1463488 (= (lemmaInGenMapThenLongMapContainsHash!565 lt!1805139 key!4968 hashF!1389) lt!1805333)))

(declare-fun bs!1034001 () Bool)

(assert (= bs!1034001 d!1463488))

(assert (=> bs!1034001 m!5502773))

(assert (=> bs!1034001 m!5502773))

(declare-fun m!5503133 () Bool)

(assert (=> bs!1034001 m!5503133))

(declare-fun m!5503135 () Bool)

(assert (=> bs!1034001 m!5503135))

(declare-fun m!5503137 () Bool)

(assert (=> bs!1034001 m!5503137))

(assert (=> b!4641868 d!1463488))

(declare-fun d!1463490 () Bool)

(declare-fun res!1949750 () Bool)

(declare-fun e!2895790 () Bool)

(assert (=> d!1463490 (=> res!1949750 e!2895790)))

(assert (=> d!1463490 (= res!1949750 (and (is-Cons!51782 (t!358992 oldBucket!40)) (= (_1!29715 (h!57894 (t!358992 oldBucket!40))) key!4968)))))

(assert (=> d!1463490 (= (containsKey!2641 (t!358992 oldBucket!40) key!4968) e!2895790)))

(declare-fun b!4642020 () Bool)

(declare-fun e!2895791 () Bool)

(assert (=> b!4642020 (= e!2895790 e!2895791)))

(declare-fun res!1949751 () Bool)

(assert (=> b!4642020 (=> (not res!1949751) (not e!2895791))))

(assert (=> b!4642020 (= res!1949751 (is-Cons!51782 (t!358992 oldBucket!40)))))

(declare-fun b!4642021 () Bool)

(assert (=> b!4642021 (= e!2895791 (containsKey!2641 (t!358992 (t!358992 oldBucket!40)) key!4968))))

(assert (= (and d!1463490 (not res!1949750)) b!4642020))

(assert (= (and b!4642020 res!1949751) b!4642021))

(declare-fun m!5503139 () Bool)

(assert (=> b!4642021 m!5503139))

(assert (=> b!4641868 d!1463490))

(declare-fun bs!1034004 () Bool)

(declare-fun d!1463492 () Bool)

(assert (= bs!1034004 (and d!1463492 b!4641868)))

(declare-fun lambda!196467 () Int)

(assert (=> bs!1034004 (= lambda!196467 lambda!196449)))

(declare-fun bs!1034005 () Bool)

(assert (= bs!1034005 (and d!1463492 d!1463432)))

(assert (=> bs!1034005 (= lambda!196467 lambda!196455)))

(declare-fun bs!1034006 () Bool)

(assert (= bs!1034006 (and d!1463492 d!1463470)))

(assert (=> bs!1034006 (= lambda!196467 lambda!196457)))

(declare-fun bs!1034007 () Bool)

(assert (= bs!1034007 (and d!1463492 d!1463488)))

(assert (=> bs!1034007 (= lambda!196467 lambda!196460)))

(declare-fun bs!1034008 () Bool)

(assert (= bs!1034008 (and d!1463492 d!1463466)))

(assert (=> bs!1034008 (= lambda!196467 lambda!196456)))

(declare-fun b!4642039 () Bool)

(declare-fun res!1949769 () Bool)

(declare-fun e!2895801 () Bool)

(assert (=> b!4642039 (=> (not res!1949769) (not e!2895801))))

(declare-fun allKeysSameHashInMap!1581 (ListLongMap!3713 Hashable!5996) Bool)

(assert (=> b!4642039 (= res!1949769 (allKeysSameHashInMap!1581 lt!1805139 hashF!1389))))

(declare-fun b!4642040 () Bool)

(declare-fun res!1949771 () Bool)

(assert (=> b!4642040 (=> (not res!1949771) (not e!2895801))))

(assert (=> b!4642040 (= res!1949771 (contains!14914 (extractMap!1655 (toList!5144 lt!1805139)) key!4968))))

(declare-fun e!2895802 () Bool)

(declare-fun b!4642042 () Bool)

(declare-fun lt!1805374 () List!51906)

(declare-fun lt!1805373 () (_ BitVec 64))

(assert (=> b!4642042 (= e!2895802 (= (getValueByKey!1564 (toList!5144 lt!1805139) lt!1805373) (Some!11765 lt!1805374)))))

(declare-fun b!4642041 () Bool)

(assert (=> b!4642041 (= e!2895801 (isDefined!9028 (getPair!359 (apply!12232 lt!1805139 (hash!3694 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1805370 () Unit!115507)

(assert (=> b!4642041 (= lt!1805370 (forallContained!3173 (toList!5144 lt!1805139) lambda!196467 (tuple2!52845 (hash!3694 hashF!1389 key!4968) (apply!12232 lt!1805139 (hash!3694 hashF!1389 key!4968)))))))

(declare-fun lt!1805372 () Unit!115507)

(declare-fun lt!1805376 () Unit!115507)

(assert (=> b!4642041 (= lt!1805372 lt!1805376)))

(assert (=> b!4642041 (contains!14915 (toList!5144 lt!1805139) (tuple2!52845 lt!1805373 lt!1805374))))

(assert (=> b!4642041 (= lt!1805376 (lemmaGetValueImpliesTupleContained!164 lt!1805139 lt!1805373 lt!1805374))))

(assert (=> b!4642041 e!2895802))

(declare-fun res!1949772 () Bool)

(assert (=> b!4642041 (=> (not res!1949772) (not e!2895802))))

(assert (=> b!4642041 (= res!1949772 (contains!14916 lt!1805139 lt!1805373))))

(assert (=> b!4642041 (= lt!1805374 (apply!12232 lt!1805139 (hash!3694 hashF!1389 key!4968)))))

(assert (=> b!4642041 (= lt!1805373 (hash!3694 hashF!1389 key!4968))))

(declare-fun lt!1805375 () Unit!115507)

(declare-fun lt!1805377 () Unit!115507)

(assert (=> b!4642041 (= lt!1805375 lt!1805377)))

(assert (=> b!4642041 (contains!14916 lt!1805139 (hash!3694 hashF!1389 key!4968))))

(assert (=> b!4642041 (= lt!1805377 (lemmaInGenMapThenLongMapContainsHash!565 lt!1805139 key!4968 hashF!1389))))

(assert (=> d!1463492 e!2895801))

(declare-fun res!1949770 () Bool)

(assert (=> d!1463492 (=> (not res!1949770) (not e!2895801))))

(assert (=> d!1463492 (= res!1949770 (forall!10949 (toList!5144 lt!1805139) lambda!196467))))

(declare-fun lt!1805371 () Unit!115507)

(declare-fun choose!31798 (ListLongMap!3713 K!13148 Hashable!5996) Unit!115507)

(assert (=> d!1463492 (= lt!1805371 (choose!31798 lt!1805139 key!4968 hashF!1389))))

(assert (=> d!1463492 (forall!10949 (toList!5144 lt!1805139) lambda!196467)))

(assert (=> d!1463492 (= (lemmaInGenMapThenGetPairDefined!155 lt!1805139 key!4968 hashF!1389) lt!1805371)))

(assert (= (and d!1463492 res!1949770) b!4642039))

(assert (= (and b!4642039 res!1949769) b!4642040))

(assert (= (and b!4642040 res!1949771) b!4642041))

(assert (= (and b!4642041 res!1949772) b!4642042))

(declare-fun m!5503189 () Bool)

(assert (=> b!4642041 m!5503189))

(declare-fun m!5503191 () Bool)

(assert (=> b!4642041 m!5503191))

(assert (=> b!4642041 m!5502773))

(declare-fun m!5503193 () Bool)

(assert (=> b!4642041 m!5503193))

(assert (=> b!4642041 m!5502711))

(declare-fun m!5503195 () Bool)

(assert (=> b!4642041 m!5503195))

(declare-fun m!5503197 () Bool)

(assert (=> b!4642041 m!5503197))

(declare-fun m!5503199 () Bool)

(assert (=> b!4642041 m!5503199))

(assert (=> b!4642041 m!5503193))

(assert (=> b!4642041 m!5503189))

(declare-fun m!5503201 () Bool)

(assert (=> b!4642041 m!5503201))

(assert (=> b!4642041 m!5502773))

(assert (=> b!4642041 m!5503133))

(assert (=> b!4642041 m!5502773))

(declare-fun m!5503203 () Bool)

(assert (=> b!4642039 m!5503203))

(declare-fun m!5503205 () Bool)

(assert (=> d!1463492 m!5503205))

(declare-fun m!5503207 () Bool)

(assert (=> d!1463492 m!5503207))

(assert (=> d!1463492 m!5503205))

(declare-fun m!5503209 () Bool)

(assert (=> b!4642042 m!5503209))

(declare-fun m!5503211 () Bool)

(assert (=> b!4642040 m!5503211))

(assert (=> b!4642040 m!5503211))

(declare-fun m!5503213 () Bool)

(assert (=> b!4642040 m!5503213))

(assert (=> b!4641868 d!1463492))

(declare-fun d!1463504 () Bool)

(declare-fun dynLambda!21549 (Int tuple2!52844) Bool)

(assert (=> d!1463504 (dynLambda!21549 lambda!196449 lt!1805136)))

(declare-fun lt!1805380 () Unit!115507)

(declare-fun choose!31799 (List!51907 Int tuple2!52844) Unit!115507)

(assert (=> d!1463504 (= lt!1805380 (choose!31799 lt!1805145 lambda!196449 lt!1805136))))

(declare-fun e!2895805 () Bool)

(assert (=> d!1463504 e!2895805))

(declare-fun res!1949775 () Bool)

(assert (=> d!1463504 (=> (not res!1949775) (not e!2895805))))

(assert (=> d!1463504 (= res!1949775 (forall!10949 lt!1805145 lambda!196449))))

(assert (=> d!1463504 (= (forallContained!3173 lt!1805145 lambda!196449 lt!1805136) lt!1805380)))

(declare-fun b!4642045 () Bool)

(assert (=> b!4642045 (= e!2895805 (contains!14915 lt!1805145 lt!1805136))))

(assert (= (and d!1463504 res!1949775) b!4642045))

(declare-fun b_lambda!171077 () Bool)

(assert (=> (not b_lambda!171077) (not d!1463504)))

(declare-fun m!5503215 () Bool)

(assert (=> d!1463504 m!5503215))

(declare-fun m!5503217 () Bool)

(assert (=> d!1463504 m!5503217))

(declare-fun m!5503219 () Bool)

(assert (=> d!1463504 m!5503219))

(assert (=> b!4642045 m!5502715))

(assert (=> b!4641868 d!1463504))

(declare-fun d!1463506 () Bool)

(declare-fun isEmpty!28981 (Option!11763) Bool)

(assert (=> d!1463506 (= (isDefined!9028 (getPair!359 lt!1805122 key!4968)) (not (isEmpty!28981 (getPair!359 lt!1805122 key!4968))))))

(declare-fun bs!1034009 () Bool)

(assert (= bs!1034009 d!1463506))

(assert (=> bs!1034009 m!5502721))

(declare-fun m!5503221 () Bool)

(assert (=> bs!1034009 m!5503221))

(assert (=> b!4641868 d!1463506))

(declare-fun d!1463508 () Bool)

(declare-fun res!1949776 () Bool)

(declare-fun e!2895806 () Bool)

(assert (=> d!1463508 (=> res!1949776 e!2895806)))

(assert (=> d!1463508 (= res!1949776 (and (is-Cons!51782 oldBucket!40) (= (_1!29715 (h!57894 oldBucket!40)) key!4968)))))

(assert (=> d!1463508 (= (containsKey!2641 oldBucket!40 key!4968) e!2895806)))

(declare-fun b!4642046 () Bool)

(declare-fun e!2895807 () Bool)

(assert (=> b!4642046 (= e!2895806 e!2895807)))

(declare-fun res!1949777 () Bool)

(assert (=> b!4642046 (=> (not res!1949777) (not e!2895807))))

(assert (=> b!4642046 (= res!1949777 (is-Cons!51782 oldBucket!40))))

(declare-fun b!4642047 () Bool)

(assert (=> b!4642047 (= e!2895807 (containsKey!2641 (t!358992 oldBucket!40) key!4968))))

(assert (= (and d!1463508 (not res!1949776)) b!4642046))

(assert (= (and b!4642046 res!1949777) b!4642047))

(assert (=> b!4642047 m!5502725))

(assert (=> b!4641868 d!1463508))

(declare-fun d!1463510 () Bool)

(declare-fun lt!1805383 () Bool)

(declare-fun content!8946 (List!51907) (Set tuple2!52844))

(assert (=> d!1463510 (= lt!1805383 (set.member lt!1805136 (content!8946 lt!1805145)))))

(declare-fun e!2895813 () Bool)

(assert (=> d!1463510 (= lt!1805383 e!2895813)))

(declare-fun res!1949782 () Bool)

(assert (=> d!1463510 (=> (not res!1949782) (not e!2895813))))

(assert (=> d!1463510 (= res!1949782 (is-Cons!51783 lt!1805145))))

(assert (=> d!1463510 (= (contains!14915 lt!1805145 lt!1805136) lt!1805383)))

(declare-fun b!4642052 () Bool)

(declare-fun e!2895812 () Bool)

(assert (=> b!4642052 (= e!2895813 e!2895812)))

(declare-fun res!1949783 () Bool)

(assert (=> b!4642052 (=> res!1949783 e!2895812)))

(assert (=> b!4642052 (= res!1949783 (= (h!57895 lt!1805145) lt!1805136))))

(declare-fun b!4642053 () Bool)

(assert (=> b!4642053 (= e!2895812 (contains!14915 (t!358993 lt!1805145) lt!1805136))))

(assert (= (and d!1463510 res!1949782) b!4642052))

(assert (= (and b!4642052 (not res!1949783)) b!4642053))

(declare-fun m!5503223 () Bool)

(assert (=> d!1463510 m!5503223))

(declare-fun m!5503225 () Bool)

(assert (=> d!1463510 m!5503225))

(declare-fun m!5503227 () Bool)

(assert (=> b!4642053 m!5503227))

(assert (=> b!4641868 d!1463510))

(declare-fun d!1463512 () Bool)

(assert (=> d!1463512 (contains!14915 (toList!5144 lt!1805139) (tuple2!52845 lt!1805147 lt!1805122))))

(declare-fun lt!1805386 () Unit!115507)

(declare-fun choose!31800 (ListLongMap!3713 (_ BitVec 64) List!51906) Unit!115507)

(assert (=> d!1463512 (= lt!1805386 (choose!31800 lt!1805139 lt!1805147 lt!1805122))))

(assert (=> d!1463512 (contains!14916 lt!1805139 lt!1805147)))

(assert (=> d!1463512 (= (lemmaGetValueImpliesTupleContained!164 lt!1805139 lt!1805147 lt!1805122) lt!1805386)))

(declare-fun bs!1034010 () Bool)

(assert (= bs!1034010 d!1463512))

(declare-fun m!5503229 () Bool)

(assert (=> bs!1034010 m!5503229))

(declare-fun m!5503231 () Bool)

(assert (=> bs!1034010 m!5503231))

(assert (=> bs!1034010 m!5502717))

(assert (=> b!4641868 d!1463512))

(declare-fun d!1463514 () Bool)

(declare-fun get!17226 (Option!11766) List!51906)

(assert (=> d!1463514 (= (apply!12232 lt!1805139 lt!1805147) (get!17226 (getValueByKey!1564 (toList!5144 lt!1805139) lt!1805147)))))

(declare-fun bs!1034011 () Bool)

(assert (= bs!1034011 d!1463514))

(assert (=> bs!1034011 m!5503127))

(assert (=> bs!1034011 m!5503127))

(declare-fun m!5503233 () Bool)

(assert (=> bs!1034011 m!5503233))

(assert (=> b!4641868 d!1463514))

(declare-fun d!1463516 () Bool)

(declare-fun e!2895828 () Bool)

(assert (=> d!1463516 e!2895828))

(declare-fun res!1949793 () Bool)

(assert (=> d!1463516 (=> res!1949793 e!2895828)))

(declare-fun e!2895825 () Bool)

(assert (=> d!1463516 (= res!1949793 e!2895825)))

(declare-fun res!1949794 () Bool)

(assert (=> d!1463516 (=> (not res!1949794) (not e!2895825))))

(declare-fun lt!1805393 () Option!11763)

(assert (=> d!1463516 (= res!1949794 (isEmpty!28981 lt!1805393))))

(declare-fun e!2895827 () Option!11763)

(assert (=> d!1463516 (= lt!1805393 e!2895827)))

(declare-fun c!794321 () Bool)

(assert (=> d!1463516 (= c!794321 (and (is-Cons!51782 lt!1805122) (= (_1!29715 (h!57894 lt!1805122)) key!4968)))))

(assert (=> d!1463516 (noDuplicateKeys!1599 lt!1805122)))

(assert (=> d!1463516 (= (getPair!359 lt!1805122 key!4968) lt!1805393)))

(declare-fun b!4642072 () Bool)

(declare-fun e!2895829 () Bool)

(assert (=> b!4642072 (= e!2895828 e!2895829)))

(declare-fun res!1949795 () Bool)

(assert (=> b!4642072 (=> (not res!1949795) (not e!2895829))))

(assert (=> b!4642072 (= res!1949795 (isDefined!9028 lt!1805393))))

(declare-fun b!4642073 () Bool)

(assert (=> b!4642073 (= e!2895827 (Some!11762 (h!57894 lt!1805122)))))

(declare-fun b!4642074 () Bool)

(declare-fun e!2895826 () Option!11763)

(assert (=> b!4642074 (= e!2895826 (getPair!359 (t!358992 lt!1805122) key!4968))))

(declare-fun b!4642075 () Bool)

(declare-fun get!17227 (Option!11763) tuple2!52842)

(assert (=> b!4642075 (= e!2895829 (contains!14921 lt!1805122 (get!17227 lt!1805393)))))

(declare-fun b!4642076 () Bool)

(declare-fun res!1949796 () Bool)

(assert (=> b!4642076 (=> (not res!1949796) (not e!2895829))))

(assert (=> b!4642076 (= res!1949796 (= (_1!29715 (get!17227 lt!1805393)) key!4968))))

(declare-fun b!4642077 () Bool)

(assert (=> b!4642077 (= e!2895827 e!2895826)))

(declare-fun c!794320 () Bool)

(assert (=> b!4642077 (= c!794320 (is-Cons!51782 lt!1805122))))

(declare-fun b!4642078 () Bool)

(assert (=> b!4642078 (= e!2895826 None!11762)))

(declare-fun b!4642079 () Bool)

(assert (=> b!4642079 (= e!2895825 (not (containsKey!2641 lt!1805122 key!4968)))))

(assert (= (and d!1463516 c!794321) b!4642073))

(assert (= (and d!1463516 (not c!794321)) b!4642077))

(assert (= (and b!4642077 c!794320) b!4642074))

(assert (= (and b!4642077 (not c!794320)) b!4642078))

(assert (= (and d!1463516 res!1949794) b!4642079))

(assert (= (and d!1463516 (not res!1949793)) b!4642072))

(assert (= (and b!4642072 res!1949795) b!4642076))

(assert (= (and b!4642076 res!1949796) b!4642075))

(declare-fun m!5503255 () Bool)

(assert (=> b!4642076 m!5503255))

(declare-fun m!5503257 () Bool)

(assert (=> d!1463516 m!5503257))

(declare-fun m!5503259 () Bool)

(assert (=> d!1463516 m!5503259))

(declare-fun m!5503261 () Bool)

(assert (=> b!4642079 m!5503261))

(assert (=> b!4642075 m!5503255))

(assert (=> b!4642075 m!5503255))

(declare-fun m!5503263 () Bool)

(assert (=> b!4642075 m!5503263))

(declare-fun m!5503265 () Bool)

(assert (=> b!4642072 m!5503265))

(declare-fun m!5503267 () Bool)

(assert (=> b!4642074 m!5503267))

(assert (=> b!4641868 d!1463516))

(declare-fun d!1463522 () Bool)

(assert (=> d!1463522 true))

(assert (=> d!1463522 true))

(declare-fun lambda!196470 () Int)

(declare-fun forall!10950 (List!51906 Int) Bool)

(assert (=> d!1463522 (= (allKeysSameHash!1453 newBucket!224 hash!414 hashF!1389) (forall!10950 newBucket!224 lambda!196470))))

(declare-fun bs!1034013 () Bool)

(assert (= bs!1034013 d!1463522))

(declare-fun m!5503269 () Bool)

(assert (=> bs!1034013 m!5503269))

(assert (=> b!4641866 d!1463522))

(declare-fun d!1463524 () Bool)

(assert (=> d!1463524 (= (eq!890 lt!1805150 (+!1949 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)) (h!57894 oldBucket!40))) (= (content!8944 (toList!5143 lt!1805150)) (content!8944 (toList!5143 (+!1949 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)) (h!57894 oldBucket!40))))))))

(declare-fun bs!1034014 () Bool)

(assert (= bs!1034014 d!1463524))

(declare-fun m!5503271 () Bool)

(assert (=> bs!1034014 m!5503271))

(declare-fun m!5503273 () Bool)

(assert (=> bs!1034014 m!5503273))

(assert (=> b!4641865 d!1463524))

(declare-fun d!1463526 () Bool)

(assert (=> d!1463526 (= (head!9709 oldBucket!40) (h!57894 oldBucket!40))))

(assert (=> b!4641865 d!1463526))

(declare-fun d!1463528 () Bool)

(assert (=> d!1463528 (eq!890 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805132 lt!1805123) (ListMap!4468 Nil!51782)) (+!1949 (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805132))))

(declare-fun lt!1805396 () Unit!115507)

(declare-fun choose!31801 (tuple2!52842 List!51906 ListMap!4467) Unit!115507)

(assert (=> d!1463528 (= lt!1805396 (choose!31801 lt!1805132 lt!1805123 (ListMap!4468 Nil!51782)))))

(assert (=> d!1463528 (noDuplicateKeys!1599 lt!1805123)))

(assert (=> d!1463528 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!141 lt!1805132 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805396)))

(declare-fun bs!1034016 () Bool)

(assert (= bs!1034016 d!1463528))

(declare-fun m!5503277 () Bool)

(assert (=> bs!1034016 m!5503277))

(assert (=> bs!1034016 m!5502733))

(declare-fun m!5503279 () Bool)

(assert (=> bs!1034016 m!5503279))

(assert (=> bs!1034016 m!5502741))

(assert (=> bs!1034016 m!5502735))

(assert (=> bs!1034016 m!5502743))

(assert (=> bs!1034016 m!5502733))

(assert (=> bs!1034016 m!5502735))

(assert (=> bs!1034016 m!5502741))

(assert (=> b!4641865 d!1463528))

(declare-fun bs!1034017 () Bool)

(declare-fun d!1463532 () Bool)

(assert (= bs!1034017 (and d!1463532 b!4641868)))

(declare-fun lambda!196476 () Int)

(assert (=> bs!1034017 (= lambda!196476 lambda!196449)))

(declare-fun bs!1034018 () Bool)

(assert (= bs!1034018 (and d!1463532 d!1463432)))

(assert (=> bs!1034018 (= lambda!196476 lambda!196455)))

(declare-fun bs!1034019 () Bool)

(assert (= bs!1034019 (and d!1463532 d!1463470)))

(assert (=> bs!1034019 (= lambda!196476 lambda!196457)))

(declare-fun bs!1034020 () Bool)

(assert (= bs!1034020 (and d!1463532 d!1463488)))

(assert (=> bs!1034020 (= lambda!196476 lambda!196460)))

(declare-fun bs!1034021 () Bool)

(assert (= bs!1034021 (and d!1463532 d!1463492)))

(assert (=> bs!1034021 (= lambda!196476 lambda!196467)))

(declare-fun bs!1034022 () Bool)

(assert (= bs!1034022 (and d!1463532 d!1463466)))

(assert (=> bs!1034022 (= lambda!196476 lambda!196456)))

(assert (=> d!1463532 (contains!14914 (extractMap!1655 (toList!5144 (ListLongMap!3714 lt!1805133))) key!4968)))

(declare-fun lt!1805411 () Unit!115507)

(declare-fun choose!31802 (ListLongMap!3713 K!13148 Hashable!5996) Unit!115507)

(assert (=> d!1463532 (= lt!1805411 (choose!31802 (ListLongMap!3714 lt!1805133) key!4968 hashF!1389))))

(assert (=> d!1463532 (forall!10949 (toList!5144 (ListLongMap!3714 lt!1805133)) lambda!196476)))

(assert (=> d!1463532 (= (lemmaListContainsThenExtractedMapContains!377 (ListLongMap!3714 lt!1805133) key!4968 hashF!1389) lt!1805411)))

(declare-fun bs!1034023 () Bool)

(assert (= bs!1034023 d!1463532))

(declare-fun m!5503289 () Bool)

(assert (=> bs!1034023 m!5503289))

(assert (=> bs!1034023 m!5503289))

(declare-fun m!5503291 () Bool)

(assert (=> bs!1034023 m!5503291))

(declare-fun m!5503293 () Bool)

(assert (=> bs!1034023 m!5503293))

(declare-fun m!5503295 () Bool)

(assert (=> bs!1034023 m!5503295))

(assert (=> b!4641865 d!1463532))

(declare-fun bs!1034034 () Bool)

(declare-fun b!4642165 () Bool)

(assert (= bs!1034034 (and b!4642165 d!1463522)))

(declare-fun lambda!196516 () Int)

(assert (=> bs!1034034 (not (= lambda!196516 lambda!196470))))

(assert (=> b!4642165 true))

(declare-fun bs!1034035 () Bool)

(declare-fun b!4642163 () Bool)

(assert (= bs!1034035 (and b!4642163 d!1463522)))

(declare-fun lambda!196517 () Int)

(assert (=> bs!1034035 (not (= lambda!196517 lambda!196470))))

(declare-fun bs!1034036 () Bool)

(assert (= bs!1034036 (and b!4642163 b!4642165)))

(assert (=> bs!1034036 (= lambda!196517 lambda!196516)))

(assert (=> b!4642163 true))

(declare-fun lambda!196518 () Int)

(assert (=> bs!1034035 (not (= lambda!196518 lambda!196470))))

(declare-fun lt!1805506 () ListMap!4467)

(assert (=> bs!1034036 (= (= lt!1805506 (ListMap!4468 Nil!51782)) (= lambda!196518 lambda!196516))))

(assert (=> b!4642163 (= (= lt!1805506 (ListMap!4468 Nil!51782)) (= lambda!196518 lambda!196517))))

(assert (=> b!4642163 true))

(declare-fun bs!1034037 () Bool)

(declare-fun d!1463536 () Bool)

(assert (= bs!1034037 (and d!1463536 d!1463522)))

(declare-fun lambda!196519 () Int)

(assert (=> bs!1034037 (not (= lambda!196519 lambda!196470))))

(declare-fun bs!1034038 () Bool)

(assert (= bs!1034038 (and d!1463536 b!4642165)))

(declare-fun lt!1805503 () ListMap!4467)

(assert (=> bs!1034038 (= (= lt!1805503 (ListMap!4468 Nil!51782)) (= lambda!196519 lambda!196516))))

(declare-fun bs!1034039 () Bool)

(assert (= bs!1034039 (and d!1463536 b!4642163)))

(assert (=> bs!1034039 (= (= lt!1805503 (ListMap!4468 Nil!51782)) (= lambda!196519 lambda!196517))))

(assert (=> bs!1034039 (= (= lt!1805503 lt!1805506) (= lambda!196519 lambda!196518))))

(assert (=> d!1463536 true))

(declare-fun bm!324048 () Bool)

(declare-fun call!324053 () Bool)

(declare-fun c!794333 () Bool)

(assert (=> bm!324048 (= call!324053 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794333 lambda!196516 lambda!196518)))))

(declare-fun call!324054 () Bool)

(declare-fun bm!324049 () Bool)

(assert (=> bm!324049 (= call!324054 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794333 lambda!196516 lambda!196517)))))

(declare-fun bm!324050 () Bool)

(declare-fun call!324055 () Unit!115507)

(declare-fun lemmaContainsAllItsOwnKeys!567 (ListMap!4467) Unit!115507)

(assert (=> bm!324050 (= call!324055 (lemmaContainsAllItsOwnKeys!567 (ListMap!4468 Nil!51782)))))

(declare-fun b!4642161 () Bool)

(declare-fun e!2895881 () Bool)

(assert (=> b!4642161 (= e!2895881 (invariantList!1265 (toList!5143 lt!1805503)))))

(declare-fun b!4642162 () Bool)

(declare-fun res!1949847 () Bool)

(assert (=> b!4642162 (=> (not res!1949847) (not e!2895881))))

(assert (=> b!4642162 (= res!1949847 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196519))))

(declare-fun b!4642164 () Bool)

(declare-fun e!2895882 () Bool)

(assert (=> b!4642164 (= e!2895882 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196518))))

(declare-fun e!2895880 () ListMap!4467)

(assert (=> b!4642165 (= e!2895880 (ListMap!4468 Nil!51782))))

(declare-fun lt!1805515 () Unit!115507)

(assert (=> b!4642165 (= lt!1805515 call!324055)))

(assert (=> b!4642165 call!324054))

(declare-fun lt!1805496 () Unit!115507)

(assert (=> b!4642165 (= lt!1805496 lt!1805515)))

(assert (=> b!4642165 call!324053))

(declare-fun lt!1805500 () Unit!115507)

(declare-fun Unit!115514 () Unit!115507)

(assert (=> b!4642165 (= lt!1805500 Unit!115514)))

(assert (=> b!4642163 (= e!2895880 lt!1805506)))

(declare-fun lt!1805516 () ListMap!4467)

(assert (=> b!4642163 (= lt!1805516 (+!1949 (ListMap!4468 Nil!51782) (h!57894 lt!1805146)))))

(assert (=> b!4642163 (= lt!1805506 (addToMapMapFromBucket!1058 (t!358992 lt!1805146) (+!1949 (ListMap!4468 Nil!51782) (h!57894 lt!1805146))))))

(declare-fun lt!1805497 () Unit!115507)

(assert (=> b!4642163 (= lt!1805497 call!324055)))

(assert (=> b!4642163 call!324054))

(declare-fun lt!1805511 () Unit!115507)

(assert (=> b!4642163 (= lt!1805511 lt!1805497)))

(assert (=> b!4642163 (forall!10950 (toList!5143 lt!1805516) lambda!196518)))

(declare-fun lt!1805498 () Unit!115507)

(declare-fun Unit!115515 () Unit!115507)

(assert (=> b!4642163 (= lt!1805498 Unit!115515)))

(assert (=> b!4642163 (forall!10950 (t!358992 lt!1805146) lambda!196518)))

(declare-fun lt!1805512 () Unit!115507)

(declare-fun Unit!115516 () Unit!115507)

(assert (=> b!4642163 (= lt!1805512 Unit!115516)))

(declare-fun lt!1805513 () Unit!115507)

(declare-fun Unit!115517 () Unit!115507)

(assert (=> b!4642163 (= lt!1805513 Unit!115517)))

(declare-fun lt!1805499 () Unit!115507)

(declare-fun forallContained!3175 (List!51906 Int tuple2!52842) Unit!115507)

(assert (=> b!4642163 (= lt!1805499 (forallContained!3175 (toList!5143 lt!1805516) lambda!196518 (h!57894 lt!1805146)))))

(assert (=> b!4642163 (contains!14914 lt!1805516 (_1!29715 (h!57894 lt!1805146)))))

(declare-fun lt!1805505 () Unit!115507)

(declare-fun Unit!115518 () Unit!115507)

(assert (=> b!4642163 (= lt!1805505 Unit!115518)))

(assert (=> b!4642163 (contains!14914 lt!1805506 (_1!29715 (h!57894 lt!1805146)))))

(declare-fun lt!1805510 () Unit!115507)

(declare-fun Unit!115519 () Unit!115507)

(assert (=> b!4642163 (= lt!1805510 Unit!115519)))

(assert (=> b!4642163 (forall!10950 lt!1805146 lambda!196518)))

(declare-fun lt!1805502 () Unit!115507)

(declare-fun Unit!115520 () Unit!115507)

(assert (=> b!4642163 (= lt!1805502 Unit!115520)))

(assert (=> b!4642163 (forall!10950 (toList!5143 lt!1805516) lambda!196518)))

(declare-fun lt!1805507 () Unit!115507)

(declare-fun Unit!115521 () Unit!115507)

(assert (=> b!4642163 (= lt!1805507 Unit!115521)))

(declare-fun lt!1805501 () Unit!115507)

(declare-fun Unit!115522 () Unit!115507)

(assert (=> b!4642163 (= lt!1805501 Unit!115522)))

(declare-fun lt!1805509 () Unit!115507)

(declare-fun addForallContainsKeyThenBeforeAdding!566 (ListMap!4467 ListMap!4467 K!13148 V!13394) Unit!115507)

(assert (=> b!4642163 (= lt!1805509 (addForallContainsKeyThenBeforeAdding!566 (ListMap!4468 Nil!51782) lt!1805506 (_1!29715 (h!57894 lt!1805146)) (_2!29715 (h!57894 lt!1805146))))))

(assert (=> b!4642163 call!324053))

(declare-fun lt!1805508 () Unit!115507)

(assert (=> b!4642163 (= lt!1805508 lt!1805509)))

(assert (=> b!4642163 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196518)))

(declare-fun lt!1805504 () Unit!115507)

(declare-fun Unit!115523 () Unit!115507)

(assert (=> b!4642163 (= lt!1805504 Unit!115523)))

(declare-fun res!1949849 () Bool)

(assert (=> b!4642163 (= res!1949849 (forall!10950 lt!1805146 lambda!196518))))

(assert (=> b!4642163 (=> (not res!1949849) (not e!2895882))))

(assert (=> b!4642163 e!2895882))

(declare-fun lt!1805514 () Unit!115507)

(declare-fun Unit!115524 () Unit!115507)

(assert (=> b!4642163 (= lt!1805514 Unit!115524)))

(assert (=> d!1463536 e!2895881))

(declare-fun res!1949848 () Bool)

(assert (=> d!1463536 (=> (not res!1949848) (not e!2895881))))

(assert (=> d!1463536 (= res!1949848 (forall!10950 lt!1805146 lambda!196519))))

(assert (=> d!1463536 (= lt!1805503 e!2895880)))

(assert (=> d!1463536 (= c!794333 (is-Nil!51782 lt!1805146))))

(assert (=> d!1463536 (noDuplicateKeys!1599 lt!1805146)))

(assert (=> d!1463536 (= (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805503)))

(assert (= (and d!1463536 c!794333) b!4642165))

(assert (= (and d!1463536 (not c!794333)) b!4642163))

(assert (= (and b!4642163 res!1949849) b!4642164))

(assert (= (or b!4642165 b!4642163) bm!324050))

(assert (= (or b!4642165 b!4642163) bm!324049))

(assert (= (or b!4642165 b!4642163) bm!324048))

(assert (= (and d!1463536 res!1949848) b!4642162))

(assert (= (and b!4642162 res!1949847) b!4642161))

(declare-fun m!5503369 () Bool)

(assert (=> b!4642163 m!5503369))

(declare-fun m!5503371 () Bool)

(assert (=> b!4642163 m!5503371))

(assert (=> b!4642163 m!5503369))

(declare-fun m!5503373 () Bool)

(assert (=> b!4642163 m!5503373))

(declare-fun m!5503375 () Bool)

(assert (=> b!4642163 m!5503375))

(assert (=> b!4642163 m!5503371))

(declare-fun m!5503377 () Bool)

(assert (=> b!4642163 m!5503377))

(declare-fun m!5503379 () Bool)

(assert (=> b!4642163 m!5503379))

(declare-fun m!5503381 () Bool)

(assert (=> b!4642163 m!5503381))

(declare-fun m!5503383 () Bool)

(assert (=> b!4642163 m!5503383))

(declare-fun m!5503385 () Bool)

(assert (=> b!4642163 m!5503385))

(declare-fun m!5503387 () Bool)

(assert (=> b!4642163 m!5503387))

(assert (=> b!4642163 m!5503379))

(declare-fun m!5503389 () Bool)

(assert (=> bm!324048 m!5503389))

(declare-fun m!5503391 () Bool)

(assert (=> bm!324049 m!5503391))

(declare-fun m!5503393 () Bool)

(assert (=> b!4642161 m!5503393))

(declare-fun m!5503395 () Bool)

(assert (=> d!1463536 m!5503395))

(assert (=> d!1463536 m!5502957))

(declare-fun m!5503397 () Bool)

(assert (=> b!4642162 m!5503397))

(declare-fun m!5503399 () Bool)

(assert (=> bm!324050 m!5503399))

(assert (=> b!4642164 m!5503387))

(assert (=> b!4641865 d!1463536))

(declare-fun bs!1034040 () Bool)

(declare-fun d!1463562 () Bool)

(assert (= bs!1034040 (and d!1463562 b!4641868)))

(declare-fun lambda!196520 () Int)

(assert (=> bs!1034040 (= lambda!196520 lambda!196449)))

(declare-fun bs!1034041 () Bool)

(assert (= bs!1034041 (and d!1463562 d!1463532)))

(assert (=> bs!1034041 (= lambda!196520 lambda!196476)))

(declare-fun bs!1034042 () Bool)

(assert (= bs!1034042 (and d!1463562 d!1463432)))

(assert (=> bs!1034042 (= lambda!196520 lambda!196455)))

(declare-fun bs!1034043 () Bool)

(assert (= bs!1034043 (and d!1463562 d!1463470)))

(assert (=> bs!1034043 (= lambda!196520 lambda!196457)))

(declare-fun bs!1034044 () Bool)

(assert (= bs!1034044 (and d!1463562 d!1463488)))

(assert (=> bs!1034044 (= lambda!196520 lambda!196460)))

(declare-fun bs!1034045 () Bool)

(assert (= bs!1034045 (and d!1463562 d!1463492)))

(assert (=> bs!1034045 (= lambda!196520 lambda!196467)))

(declare-fun bs!1034046 () Bool)

(assert (= bs!1034046 (and d!1463562 d!1463466)))

(assert (=> bs!1034046 (= lambda!196520 lambda!196456)))

(declare-fun lt!1805517 () ListMap!4467)

(assert (=> d!1463562 (invariantList!1265 (toList!5143 lt!1805517))))

(declare-fun e!2895883 () ListMap!4467)

(assert (=> d!1463562 (= lt!1805517 e!2895883)))

(declare-fun c!794334 () Bool)

(assert (=> d!1463562 (= c!794334 (is-Cons!51783 lt!1805133))))

(assert (=> d!1463562 (forall!10949 lt!1805133 lambda!196520)))

(assert (=> d!1463562 (= (extractMap!1655 lt!1805133) lt!1805517)))

(declare-fun b!4642168 () Bool)

(assert (=> b!4642168 (= e!2895883 (addToMapMapFromBucket!1058 (_2!29716 (h!57895 lt!1805133)) (extractMap!1655 (t!358993 lt!1805133))))))

(declare-fun b!4642169 () Bool)

(assert (=> b!4642169 (= e!2895883 (ListMap!4468 Nil!51782))))

(assert (= (and d!1463562 c!794334) b!4642168))

(assert (= (and d!1463562 (not c!794334)) b!4642169))

(declare-fun m!5503401 () Bool)

(assert (=> d!1463562 m!5503401))

(declare-fun m!5503403 () Bool)

(assert (=> d!1463562 m!5503403))

(declare-fun m!5503405 () Bool)

(assert (=> b!4642168 m!5503405))

(assert (=> b!4642168 m!5503405))

(declare-fun m!5503407 () Bool)

(assert (=> b!4642168 m!5503407))

(assert (=> b!4641865 d!1463562))

(declare-fun bs!1034047 () Bool)

(declare-fun b!4642174 () Bool)

(assert (= bs!1034047 (and b!4642174 d!1463522)))

(declare-fun lambda!196521 () Int)

(assert (=> bs!1034047 (not (= lambda!196521 lambda!196470))))

(declare-fun bs!1034048 () Bool)

(assert (= bs!1034048 (and b!4642174 b!4642163)))

(assert (=> bs!1034048 (= lambda!196521 lambda!196517)))

(assert (=> bs!1034048 (= (= (ListMap!4468 Nil!51782) lt!1805506) (= lambda!196521 lambda!196518))))

(declare-fun bs!1034049 () Bool)

(assert (= bs!1034049 (and b!4642174 b!4642165)))

(assert (=> bs!1034049 (= lambda!196521 lambda!196516)))

(declare-fun bs!1034050 () Bool)

(assert (= bs!1034050 (and b!4642174 d!1463536)))

(assert (=> bs!1034050 (= (= (ListMap!4468 Nil!51782) lt!1805503) (= lambda!196521 lambda!196519))))

(assert (=> b!4642174 true))

(declare-fun bs!1034051 () Bool)

(declare-fun b!4642172 () Bool)

(assert (= bs!1034051 (and b!4642172 b!4642174)))

(declare-fun lambda!196522 () Int)

(assert (=> bs!1034051 (= lambda!196522 lambda!196521)))

(declare-fun bs!1034052 () Bool)

(assert (= bs!1034052 (and b!4642172 d!1463522)))

(assert (=> bs!1034052 (not (= lambda!196522 lambda!196470))))

(declare-fun bs!1034053 () Bool)

(assert (= bs!1034053 (and b!4642172 b!4642163)))

(assert (=> bs!1034053 (= lambda!196522 lambda!196517)))

(assert (=> bs!1034053 (= (= (ListMap!4468 Nil!51782) lt!1805506) (= lambda!196522 lambda!196518))))

(declare-fun bs!1034054 () Bool)

(assert (= bs!1034054 (and b!4642172 b!4642165)))

(assert (=> bs!1034054 (= lambda!196522 lambda!196516)))

(declare-fun bs!1034055 () Bool)

(assert (= bs!1034055 (and b!4642172 d!1463536)))

(assert (=> bs!1034055 (= (= (ListMap!4468 Nil!51782) lt!1805503) (= lambda!196522 lambda!196519))))

(assert (=> b!4642172 true))

(declare-fun lt!1805528 () ListMap!4467)

(declare-fun lambda!196523 () Int)

(assert (=> bs!1034051 (= (= lt!1805528 (ListMap!4468 Nil!51782)) (= lambda!196523 lambda!196521))))

(assert (=> b!4642172 (= (= lt!1805528 (ListMap!4468 Nil!51782)) (= lambda!196523 lambda!196522))))

(assert (=> bs!1034052 (not (= lambda!196523 lambda!196470))))

(assert (=> bs!1034053 (= (= lt!1805528 (ListMap!4468 Nil!51782)) (= lambda!196523 lambda!196517))))

(assert (=> bs!1034053 (= (= lt!1805528 lt!1805506) (= lambda!196523 lambda!196518))))

(assert (=> bs!1034054 (= (= lt!1805528 (ListMap!4468 Nil!51782)) (= lambda!196523 lambda!196516))))

(assert (=> bs!1034055 (= (= lt!1805528 lt!1805503) (= lambda!196523 lambda!196519))))

(assert (=> b!4642172 true))

(declare-fun bs!1034056 () Bool)

(declare-fun d!1463564 () Bool)

(assert (= bs!1034056 (and d!1463564 b!4642174)))

(declare-fun lt!1805525 () ListMap!4467)

(declare-fun lambda!196524 () Int)

(assert (=> bs!1034056 (= (= lt!1805525 (ListMap!4468 Nil!51782)) (= lambda!196524 lambda!196521))))

(declare-fun bs!1034057 () Bool)

(assert (= bs!1034057 (and d!1463564 b!4642172)))

(assert (=> bs!1034057 (= (= lt!1805525 (ListMap!4468 Nil!51782)) (= lambda!196524 lambda!196522))))

(assert (=> bs!1034057 (= (= lt!1805525 lt!1805528) (= lambda!196524 lambda!196523))))

(declare-fun bs!1034058 () Bool)

(assert (= bs!1034058 (and d!1463564 d!1463522)))

(assert (=> bs!1034058 (not (= lambda!196524 lambda!196470))))

(declare-fun bs!1034059 () Bool)

(assert (= bs!1034059 (and d!1463564 b!4642163)))

(assert (=> bs!1034059 (= (= lt!1805525 (ListMap!4468 Nil!51782)) (= lambda!196524 lambda!196517))))

(assert (=> bs!1034059 (= (= lt!1805525 lt!1805506) (= lambda!196524 lambda!196518))))

(declare-fun bs!1034060 () Bool)

(assert (= bs!1034060 (and d!1463564 b!4642165)))

(assert (=> bs!1034060 (= (= lt!1805525 (ListMap!4468 Nil!51782)) (= lambda!196524 lambda!196516))))

(declare-fun bs!1034061 () Bool)

(assert (= bs!1034061 (and d!1463564 d!1463536)))

(assert (=> bs!1034061 (= (= lt!1805525 lt!1805503) (= lambda!196524 lambda!196519))))

(assert (=> d!1463564 true))

(declare-fun bm!324051 () Bool)

(declare-fun call!324056 () Bool)

(declare-fun c!794335 () Bool)

(assert (=> bm!324051 (= call!324056 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794335 lambda!196521 lambda!196523)))))

(declare-fun bm!324052 () Bool)

(declare-fun call!324057 () Bool)

(assert (=> bm!324052 (= call!324057 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794335 lambda!196521 lambda!196522)))))

(declare-fun bm!324053 () Bool)

(declare-fun call!324058 () Unit!115507)

(assert (=> bm!324053 (= call!324058 (lemmaContainsAllItsOwnKeys!567 (ListMap!4468 Nil!51782)))))

(declare-fun b!4642170 () Bool)

(declare-fun e!2895885 () Bool)

(assert (=> b!4642170 (= e!2895885 (invariantList!1265 (toList!5143 lt!1805525)))))

(declare-fun b!4642171 () Bool)

(declare-fun res!1949850 () Bool)

(assert (=> b!4642171 (=> (not res!1949850) (not e!2895885))))

(assert (=> b!4642171 (= res!1949850 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196524))))

(declare-fun b!4642173 () Bool)

(declare-fun e!2895886 () Bool)

(assert (=> b!4642173 (= e!2895886 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196523))))

(declare-fun e!2895884 () ListMap!4467)

(assert (=> b!4642174 (= e!2895884 (ListMap!4468 Nil!51782))))

(declare-fun lt!1805537 () Unit!115507)

(assert (=> b!4642174 (= lt!1805537 call!324058)))

(assert (=> b!4642174 call!324057))

(declare-fun lt!1805518 () Unit!115507)

(assert (=> b!4642174 (= lt!1805518 lt!1805537)))

(assert (=> b!4642174 call!324056))

(declare-fun lt!1805522 () Unit!115507)

(declare-fun Unit!115526 () Unit!115507)

(assert (=> b!4642174 (= lt!1805522 Unit!115526)))

(assert (=> b!4642172 (= e!2895884 lt!1805528)))

(declare-fun lt!1805538 () ListMap!4467)

(assert (=> b!4642172 (= lt!1805538 (+!1949 (ListMap!4468 Nil!51782) (h!57894 (Cons!51782 lt!1805132 lt!1805123))))))

(assert (=> b!4642172 (= lt!1805528 (addToMapMapFromBucket!1058 (t!358992 (Cons!51782 lt!1805132 lt!1805123)) (+!1949 (ListMap!4468 Nil!51782) (h!57894 (Cons!51782 lt!1805132 lt!1805123)))))))

(declare-fun lt!1805519 () Unit!115507)

(assert (=> b!4642172 (= lt!1805519 call!324058)))

(assert (=> b!4642172 call!324057))

(declare-fun lt!1805533 () Unit!115507)

(assert (=> b!4642172 (= lt!1805533 lt!1805519)))

(assert (=> b!4642172 (forall!10950 (toList!5143 lt!1805538) lambda!196523)))

(declare-fun lt!1805520 () Unit!115507)

(declare-fun Unit!115527 () Unit!115507)

(assert (=> b!4642172 (= lt!1805520 Unit!115527)))

(assert (=> b!4642172 (forall!10950 (t!358992 (Cons!51782 lt!1805132 lt!1805123)) lambda!196523)))

(declare-fun lt!1805534 () Unit!115507)

(declare-fun Unit!115528 () Unit!115507)

(assert (=> b!4642172 (= lt!1805534 Unit!115528)))

(declare-fun lt!1805535 () Unit!115507)

(declare-fun Unit!115529 () Unit!115507)

(assert (=> b!4642172 (= lt!1805535 Unit!115529)))

(declare-fun lt!1805521 () Unit!115507)

(assert (=> b!4642172 (= lt!1805521 (forallContained!3175 (toList!5143 lt!1805538) lambda!196523 (h!57894 (Cons!51782 lt!1805132 lt!1805123))))))

(assert (=> b!4642172 (contains!14914 lt!1805538 (_1!29715 (h!57894 (Cons!51782 lt!1805132 lt!1805123))))))

(declare-fun lt!1805527 () Unit!115507)

(declare-fun Unit!115530 () Unit!115507)

(assert (=> b!4642172 (= lt!1805527 Unit!115530)))

(assert (=> b!4642172 (contains!14914 lt!1805528 (_1!29715 (h!57894 (Cons!51782 lt!1805132 lt!1805123))))))

(declare-fun lt!1805532 () Unit!115507)

(declare-fun Unit!115531 () Unit!115507)

(assert (=> b!4642172 (= lt!1805532 Unit!115531)))

(assert (=> b!4642172 (forall!10950 (Cons!51782 lt!1805132 lt!1805123) lambda!196523)))

(declare-fun lt!1805524 () Unit!115507)

(declare-fun Unit!115532 () Unit!115507)

(assert (=> b!4642172 (= lt!1805524 Unit!115532)))

(assert (=> b!4642172 (forall!10950 (toList!5143 lt!1805538) lambda!196523)))

(declare-fun lt!1805529 () Unit!115507)

(declare-fun Unit!115533 () Unit!115507)

(assert (=> b!4642172 (= lt!1805529 Unit!115533)))

(declare-fun lt!1805523 () Unit!115507)

(declare-fun Unit!115534 () Unit!115507)

(assert (=> b!4642172 (= lt!1805523 Unit!115534)))

(declare-fun lt!1805531 () Unit!115507)

(assert (=> b!4642172 (= lt!1805531 (addForallContainsKeyThenBeforeAdding!566 (ListMap!4468 Nil!51782) lt!1805528 (_1!29715 (h!57894 (Cons!51782 lt!1805132 lt!1805123))) (_2!29715 (h!57894 (Cons!51782 lt!1805132 lt!1805123)))))))

(assert (=> b!4642172 call!324056))

(declare-fun lt!1805530 () Unit!115507)

(assert (=> b!4642172 (= lt!1805530 lt!1805531)))

(assert (=> b!4642172 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196523)))

(declare-fun lt!1805526 () Unit!115507)

(declare-fun Unit!115535 () Unit!115507)

(assert (=> b!4642172 (= lt!1805526 Unit!115535)))

(declare-fun res!1949852 () Bool)

(assert (=> b!4642172 (= res!1949852 (forall!10950 (Cons!51782 lt!1805132 lt!1805123) lambda!196523))))

(assert (=> b!4642172 (=> (not res!1949852) (not e!2895886))))

(assert (=> b!4642172 e!2895886))

(declare-fun lt!1805536 () Unit!115507)

(declare-fun Unit!115536 () Unit!115507)

(assert (=> b!4642172 (= lt!1805536 Unit!115536)))

(assert (=> d!1463564 e!2895885))

(declare-fun res!1949851 () Bool)

(assert (=> d!1463564 (=> (not res!1949851) (not e!2895885))))

(assert (=> d!1463564 (= res!1949851 (forall!10950 (Cons!51782 lt!1805132 lt!1805123) lambda!196524))))

(assert (=> d!1463564 (= lt!1805525 e!2895884)))

(assert (=> d!1463564 (= c!794335 (is-Nil!51782 (Cons!51782 lt!1805132 lt!1805123)))))

(assert (=> d!1463564 (noDuplicateKeys!1599 (Cons!51782 lt!1805132 lt!1805123))))

(assert (=> d!1463564 (= (addToMapMapFromBucket!1058 (Cons!51782 lt!1805132 lt!1805123) (ListMap!4468 Nil!51782)) lt!1805525)))

(assert (= (and d!1463564 c!794335) b!4642174))

(assert (= (and d!1463564 (not c!794335)) b!4642172))

(assert (= (and b!4642172 res!1949852) b!4642173))

(assert (= (or b!4642174 b!4642172) bm!324053))

(assert (= (or b!4642174 b!4642172) bm!324052))

(assert (= (or b!4642174 b!4642172) bm!324051))

(assert (= (and d!1463564 res!1949851) b!4642171))

(assert (= (and b!4642171 res!1949850) b!4642170))

(declare-fun m!5503409 () Bool)

(assert (=> b!4642172 m!5503409))

(declare-fun m!5503411 () Bool)

(assert (=> b!4642172 m!5503411))

(assert (=> b!4642172 m!5503409))

(declare-fun m!5503413 () Bool)

(assert (=> b!4642172 m!5503413))

(declare-fun m!5503415 () Bool)

(assert (=> b!4642172 m!5503415))

(assert (=> b!4642172 m!5503411))

(declare-fun m!5503417 () Bool)

(assert (=> b!4642172 m!5503417))

(declare-fun m!5503419 () Bool)

(assert (=> b!4642172 m!5503419))

(declare-fun m!5503421 () Bool)

(assert (=> b!4642172 m!5503421))

(declare-fun m!5503423 () Bool)

(assert (=> b!4642172 m!5503423))

(declare-fun m!5503425 () Bool)

(assert (=> b!4642172 m!5503425))

(declare-fun m!5503427 () Bool)

(assert (=> b!4642172 m!5503427))

(assert (=> b!4642172 m!5503419))

(declare-fun m!5503429 () Bool)

(assert (=> bm!324051 m!5503429))

(declare-fun m!5503431 () Bool)

(assert (=> bm!324052 m!5503431))

(declare-fun m!5503433 () Bool)

(assert (=> b!4642170 m!5503433))

(declare-fun m!5503435 () Bool)

(assert (=> d!1463564 m!5503435))

(declare-fun m!5503437 () Bool)

(assert (=> d!1463564 m!5503437))

(declare-fun m!5503439 () Bool)

(assert (=> b!4642171 m!5503439))

(assert (=> bm!324053 m!5503399))

(assert (=> b!4642173 m!5503427))

(assert (=> b!4641865 d!1463564))

(declare-fun bm!324054 () Bool)

(declare-fun call!324059 () Bool)

(declare-fun e!2895890 () List!51910)

(assert (=> bm!324054 (= call!324059 (contains!14920 e!2895890 key!4968))))

(declare-fun c!794337 () Bool)

(declare-fun c!794338 () Bool)

(assert (=> bm!324054 (= c!794337 c!794338)))

(declare-fun b!4642175 () Bool)

(declare-fun e!2895892 () Bool)

(declare-fun e!2895891 () Bool)

(assert (=> b!4642175 (= e!2895892 e!2895891)))

(declare-fun res!1949854 () Bool)

(assert (=> b!4642175 (=> (not res!1949854) (not e!2895891))))

(assert (=> b!4642175 (= res!1949854 (isDefined!9030 (getValueByKey!1563 (toList!5143 lt!1805149) key!4968)))))

(declare-fun b!4642176 () Bool)

(assert (=> b!4642176 (= e!2895890 (keys!18309 lt!1805149))))

(declare-fun b!4642177 () Bool)

(declare-fun e!2895887 () Bool)

(assert (=> b!4642177 (= e!2895887 (not (contains!14920 (keys!18309 lt!1805149) key!4968)))))

(declare-fun b!4642178 () Bool)

(declare-fun e!2895889 () Unit!115507)

(declare-fun Unit!115537 () Unit!115507)

(assert (=> b!4642178 (= e!2895889 Unit!115537)))

(declare-fun b!4642179 () Bool)

(assert (=> b!4642179 (= e!2895891 (contains!14920 (keys!18309 lt!1805149) key!4968))))

(declare-fun d!1463566 () Bool)

(assert (=> d!1463566 e!2895892))

(declare-fun res!1949853 () Bool)

(assert (=> d!1463566 (=> res!1949853 e!2895892)))

(assert (=> d!1463566 (= res!1949853 e!2895887)))

(declare-fun res!1949855 () Bool)

(assert (=> d!1463566 (=> (not res!1949855) (not e!2895887))))

(declare-fun lt!1805544 () Bool)

(assert (=> d!1463566 (= res!1949855 (not lt!1805544))))

(declare-fun lt!1805546 () Bool)

(assert (=> d!1463566 (= lt!1805544 lt!1805546)))

(declare-fun lt!1805540 () Unit!115507)

(declare-fun e!2895888 () Unit!115507)

(assert (=> d!1463566 (= lt!1805540 e!2895888)))

(assert (=> d!1463566 (= c!794338 lt!1805546)))

(assert (=> d!1463566 (= lt!1805546 (containsKey!2643 (toList!5143 lt!1805149) key!4968))))

(assert (=> d!1463566 (= (contains!14914 lt!1805149 key!4968) lt!1805544)))

(declare-fun b!4642180 () Bool)

(declare-fun lt!1805539 () Unit!115507)

(assert (=> b!4642180 (= e!2895888 lt!1805539)))

(declare-fun lt!1805543 () Unit!115507)

(assert (=> b!4642180 (= lt!1805543 (lemmaContainsKeyImpliesGetValueByKeyDefined!1465 (toList!5143 lt!1805149) key!4968))))

(assert (=> b!4642180 (isDefined!9030 (getValueByKey!1563 (toList!5143 lt!1805149) key!4968))))

(declare-fun lt!1805545 () Unit!115507)

(assert (=> b!4642180 (= lt!1805545 lt!1805543)))

(assert (=> b!4642180 (= lt!1805539 (lemmaInListThenGetKeysListContains!711 (toList!5143 lt!1805149) key!4968))))

(assert (=> b!4642180 call!324059))

(declare-fun b!4642181 () Bool)

(assert (=> b!4642181 (= e!2895890 (getKeysList!716 (toList!5143 lt!1805149)))))

(declare-fun b!4642182 () Bool)

(assert (=> b!4642182 false))

(declare-fun lt!1805542 () Unit!115507)

(declare-fun lt!1805541 () Unit!115507)

(assert (=> b!4642182 (= lt!1805542 lt!1805541)))

(assert (=> b!4642182 (containsKey!2643 (toList!5143 lt!1805149) key!4968)))

(assert (=> b!4642182 (= lt!1805541 (lemmaInGetKeysListThenContainsKey!715 (toList!5143 lt!1805149) key!4968))))

(declare-fun Unit!115538 () Unit!115507)

(assert (=> b!4642182 (= e!2895889 Unit!115538)))

(declare-fun b!4642183 () Bool)

(assert (=> b!4642183 (= e!2895888 e!2895889)))

(declare-fun c!794336 () Bool)

(assert (=> b!4642183 (= c!794336 call!324059)))

(assert (= (and d!1463566 c!794338) b!4642180))

(assert (= (and d!1463566 (not c!794338)) b!4642183))

(assert (= (and b!4642183 c!794336) b!4642182))

(assert (= (and b!4642183 (not c!794336)) b!4642178))

(assert (= (or b!4642180 b!4642183) bm!324054))

(assert (= (and bm!324054 c!794337) b!4642181))

(assert (= (and bm!324054 (not c!794337)) b!4642176))

(assert (= (and d!1463566 res!1949855) b!4642177))

(assert (= (and d!1463566 (not res!1949853)) b!4642175))

(assert (= (and b!4642175 res!1949854) b!4642179))

(assert (=> b!4642176 m!5502979))

(declare-fun m!5503441 () Bool)

(assert (=> b!4642180 m!5503441))

(declare-fun m!5503443 () Bool)

(assert (=> b!4642180 m!5503443))

(assert (=> b!4642180 m!5503443))

(declare-fun m!5503445 () Bool)

(assert (=> b!4642180 m!5503445))

(declare-fun m!5503447 () Bool)

(assert (=> b!4642180 m!5503447))

(assert (=> b!4642179 m!5502979))

(assert (=> b!4642179 m!5502979))

(declare-fun m!5503449 () Bool)

(assert (=> b!4642179 m!5503449))

(declare-fun m!5503451 () Bool)

(assert (=> bm!324054 m!5503451))

(declare-fun m!5503453 () Bool)

(assert (=> d!1463566 m!5503453))

(declare-fun m!5503455 () Bool)

(assert (=> b!4642181 m!5503455))

(assert (=> b!4642177 m!5502979))

(assert (=> b!4642177 m!5502979))

(assert (=> b!4642177 m!5503449))

(assert (=> b!4642182 m!5503453))

(declare-fun m!5503457 () Bool)

(assert (=> b!4642182 m!5503457))

(assert (=> b!4642175 m!5503443))

(assert (=> b!4642175 m!5503443))

(assert (=> b!4642175 m!5503445))

(assert (=> b!4641865 d!1463566))

(declare-fun bs!1034062 () Bool)

(declare-fun b!4642188 () Bool)

(assert (= bs!1034062 (and b!4642188 b!4642174)))

(declare-fun lambda!196525 () Int)

(assert (=> bs!1034062 (= lambda!196525 lambda!196521)))

(declare-fun bs!1034063 () Bool)

(assert (= bs!1034063 (and b!4642188 b!4642172)))

(assert (=> bs!1034063 (= lambda!196525 lambda!196522)))

(declare-fun bs!1034064 () Bool)

(assert (= bs!1034064 (and b!4642188 d!1463564)))

(assert (=> bs!1034064 (= (= (ListMap!4468 Nil!51782) lt!1805525) (= lambda!196525 lambda!196524))))

(assert (=> bs!1034063 (= (= (ListMap!4468 Nil!51782) lt!1805528) (= lambda!196525 lambda!196523))))

(declare-fun bs!1034065 () Bool)

(assert (= bs!1034065 (and b!4642188 d!1463522)))

(assert (=> bs!1034065 (not (= lambda!196525 lambda!196470))))

(declare-fun bs!1034066 () Bool)

(assert (= bs!1034066 (and b!4642188 b!4642163)))

(assert (=> bs!1034066 (= lambda!196525 lambda!196517)))

(assert (=> bs!1034066 (= (= (ListMap!4468 Nil!51782) lt!1805506) (= lambda!196525 lambda!196518))))

(declare-fun bs!1034067 () Bool)

(assert (= bs!1034067 (and b!4642188 b!4642165)))

(assert (=> bs!1034067 (= lambda!196525 lambda!196516)))

(declare-fun bs!1034068 () Bool)

(assert (= bs!1034068 (and b!4642188 d!1463536)))

(assert (=> bs!1034068 (= (= (ListMap!4468 Nil!51782) lt!1805503) (= lambda!196525 lambda!196519))))

(assert (=> b!4642188 true))

(declare-fun bs!1034069 () Bool)

(declare-fun b!4642186 () Bool)

(assert (= bs!1034069 (and b!4642186 b!4642174)))

(declare-fun lambda!196526 () Int)

(assert (=> bs!1034069 (= lambda!196526 lambda!196521)))

(declare-fun bs!1034070 () Bool)

(assert (= bs!1034070 (and b!4642186 b!4642172)))

(assert (=> bs!1034070 (= lambda!196526 lambda!196522)))

(declare-fun bs!1034071 () Bool)

(assert (= bs!1034071 (and b!4642186 d!1463564)))

(assert (=> bs!1034071 (= (= (ListMap!4468 Nil!51782) lt!1805525) (= lambda!196526 lambda!196524))))

(assert (=> bs!1034070 (= (= (ListMap!4468 Nil!51782) lt!1805528) (= lambda!196526 lambda!196523))))

(declare-fun bs!1034072 () Bool)

(assert (= bs!1034072 (and b!4642186 d!1463522)))

(assert (=> bs!1034072 (not (= lambda!196526 lambda!196470))))

(declare-fun bs!1034073 () Bool)

(assert (= bs!1034073 (and b!4642186 b!4642163)))

(assert (=> bs!1034073 (= lambda!196526 lambda!196517)))

(assert (=> bs!1034073 (= (= (ListMap!4468 Nil!51782) lt!1805506) (= lambda!196526 lambda!196518))))

(declare-fun bs!1034074 () Bool)

(assert (= bs!1034074 (and b!4642186 b!4642188)))

(assert (=> bs!1034074 (= lambda!196526 lambda!196525)))

(declare-fun bs!1034075 () Bool)

(assert (= bs!1034075 (and b!4642186 b!4642165)))

(assert (=> bs!1034075 (= lambda!196526 lambda!196516)))

(declare-fun bs!1034076 () Bool)

(assert (= bs!1034076 (and b!4642186 d!1463536)))

(assert (=> bs!1034076 (= (= (ListMap!4468 Nil!51782) lt!1805503) (= lambda!196526 lambda!196519))))

(assert (=> b!4642186 true))

(declare-fun lt!1805557 () ListMap!4467)

(declare-fun lambda!196527 () Int)

(assert (=> bs!1034069 (= (= lt!1805557 (ListMap!4468 Nil!51782)) (= lambda!196527 lambda!196521))))

(assert (=> bs!1034070 (= (= lt!1805557 (ListMap!4468 Nil!51782)) (= lambda!196527 lambda!196522))))

(assert (=> bs!1034071 (= (= lt!1805557 lt!1805525) (= lambda!196527 lambda!196524))))

(assert (=> bs!1034070 (= (= lt!1805557 lt!1805528) (= lambda!196527 lambda!196523))))

(assert (=> bs!1034072 (not (= lambda!196527 lambda!196470))))

(assert (=> bs!1034073 (= (= lt!1805557 (ListMap!4468 Nil!51782)) (= lambda!196527 lambda!196517))))

(assert (=> b!4642186 (= (= lt!1805557 (ListMap!4468 Nil!51782)) (= lambda!196527 lambda!196526))))

(assert (=> bs!1034073 (= (= lt!1805557 lt!1805506) (= lambda!196527 lambda!196518))))

(assert (=> bs!1034074 (= (= lt!1805557 (ListMap!4468 Nil!51782)) (= lambda!196527 lambda!196525))))

(assert (=> bs!1034075 (= (= lt!1805557 (ListMap!4468 Nil!51782)) (= lambda!196527 lambda!196516))))

(assert (=> bs!1034076 (= (= lt!1805557 lt!1805503) (= lambda!196527 lambda!196519))))

(assert (=> b!4642186 true))

(declare-fun bs!1034077 () Bool)

(declare-fun d!1463568 () Bool)

(assert (= bs!1034077 (and d!1463568 b!4642174)))

(declare-fun lt!1805554 () ListMap!4467)

(declare-fun lambda!196528 () Int)

(assert (=> bs!1034077 (= (= lt!1805554 (ListMap!4468 Nil!51782)) (= lambda!196528 lambda!196521))))

(declare-fun bs!1034078 () Bool)

(assert (= bs!1034078 (and d!1463568 b!4642172)))

(assert (=> bs!1034078 (= (= lt!1805554 (ListMap!4468 Nil!51782)) (= lambda!196528 lambda!196522))))

(declare-fun bs!1034079 () Bool)

(assert (= bs!1034079 (and d!1463568 d!1463564)))

(assert (=> bs!1034079 (= (= lt!1805554 lt!1805525) (= lambda!196528 lambda!196524))))

(assert (=> bs!1034078 (= (= lt!1805554 lt!1805528) (= lambda!196528 lambda!196523))))

(declare-fun bs!1034080 () Bool)

(assert (= bs!1034080 (and d!1463568 d!1463522)))

(assert (=> bs!1034080 (not (= lambda!196528 lambda!196470))))

(declare-fun bs!1034081 () Bool)

(assert (= bs!1034081 (and d!1463568 b!4642186)))

(assert (=> bs!1034081 (= (= lt!1805554 lt!1805557) (= lambda!196528 lambda!196527))))

(declare-fun bs!1034082 () Bool)

(assert (= bs!1034082 (and d!1463568 b!4642163)))

(assert (=> bs!1034082 (= (= lt!1805554 (ListMap!4468 Nil!51782)) (= lambda!196528 lambda!196517))))

(assert (=> bs!1034081 (= (= lt!1805554 (ListMap!4468 Nil!51782)) (= lambda!196528 lambda!196526))))

(assert (=> bs!1034082 (= (= lt!1805554 lt!1805506) (= lambda!196528 lambda!196518))))

(declare-fun bs!1034083 () Bool)

(assert (= bs!1034083 (and d!1463568 b!4642188)))

(assert (=> bs!1034083 (= (= lt!1805554 (ListMap!4468 Nil!51782)) (= lambda!196528 lambda!196525))))

(declare-fun bs!1034084 () Bool)

(assert (= bs!1034084 (and d!1463568 b!4642165)))

(assert (=> bs!1034084 (= (= lt!1805554 (ListMap!4468 Nil!51782)) (= lambda!196528 lambda!196516))))

(declare-fun bs!1034085 () Bool)

(assert (= bs!1034085 (and d!1463568 d!1463536)))

(assert (=> bs!1034085 (= (= lt!1805554 lt!1805503) (= lambda!196528 lambda!196519))))

(assert (=> d!1463568 true))

(declare-fun bm!324055 () Bool)

(declare-fun call!324060 () Bool)

(declare-fun c!794339 () Bool)

(assert (=> bm!324055 (= call!324060 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794339 lambda!196525 lambda!196527)))))

(declare-fun bm!324056 () Bool)

(declare-fun call!324061 () Bool)

(assert (=> bm!324056 (= call!324061 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794339 lambda!196525 lambda!196526)))))

(declare-fun bm!324057 () Bool)

(declare-fun call!324062 () Unit!115507)

(assert (=> bm!324057 (= call!324062 (lemmaContainsAllItsOwnKeys!567 (ListMap!4468 Nil!51782)))))

(declare-fun b!4642184 () Bool)

(declare-fun e!2895894 () Bool)

(assert (=> b!4642184 (= e!2895894 (invariantList!1265 (toList!5143 lt!1805554)))))

(declare-fun b!4642185 () Bool)

(declare-fun res!1949856 () Bool)

(assert (=> b!4642185 (=> (not res!1949856) (not e!2895894))))

(assert (=> b!4642185 (= res!1949856 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196528))))

(declare-fun b!4642187 () Bool)

(declare-fun e!2895895 () Bool)

(assert (=> b!4642187 (= e!2895895 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196527))))

(declare-fun e!2895893 () ListMap!4467)

(assert (=> b!4642188 (= e!2895893 (ListMap!4468 Nil!51782))))

(declare-fun lt!1805566 () Unit!115507)

(assert (=> b!4642188 (= lt!1805566 call!324062)))

(assert (=> b!4642188 call!324061))

(declare-fun lt!1805547 () Unit!115507)

(assert (=> b!4642188 (= lt!1805547 lt!1805566)))

(assert (=> b!4642188 call!324060))

(declare-fun lt!1805551 () Unit!115507)

(declare-fun Unit!115539 () Unit!115507)

(assert (=> b!4642188 (= lt!1805551 Unit!115539)))

(assert (=> b!4642186 (= e!2895893 lt!1805557)))

(declare-fun lt!1805567 () ListMap!4467)

(assert (=> b!4642186 (= lt!1805567 (+!1949 (ListMap!4468 Nil!51782) (h!57894 lt!1805123)))))

(assert (=> b!4642186 (= lt!1805557 (addToMapMapFromBucket!1058 (t!358992 lt!1805123) (+!1949 (ListMap!4468 Nil!51782) (h!57894 lt!1805123))))))

(declare-fun lt!1805548 () Unit!115507)

(assert (=> b!4642186 (= lt!1805548 call!324062)))

(assert (=> b!4642186 call!324061))

(declare-fun lt!1805562 () Unit!115507)

(assert (=> b!4642186 (= lt!1805562 lt!1805548)))

(assert (=> b!4642186 (forall!10950 (toList!5143 lt!1805567) lambda!196527)))

(declare-fun lt!1805549 () Unit!115507)

(declare-fun Unit!115540 () Unit!115507)

(assert (=> b!4642186 (= lt!1805549 Unit!115540)))

(assert (=> b!4642186 (forall!10950 (t!358992 lt!1805123) lambda!196527)))

(declare-fun lt!1805563 () Unit!115507)

(declare-fun Unit!115541 () Unit!115507)

(assert (=> b!4642186 (= lt!1805563 Unit!115541)))

(declare-fun lt!1805564 () Unit!115507)

(declare-fun Unit!115542 () Unit!115507)

(assert (=> b!4642186 (= lt!1805564 Unit!115542)))

(declare-fun lt!1805550 () Unit!115507)

(assert (=> b!4642186 (= lt!1805550 (forallContained!3175 (toList!5143 lt!1805567) lambda!196527 (h!57894 lt!1805123)))))

(assert (=> b!4642186 (contains!14914 lt!1805567 (_1!29715 (h!57894 lt!1805123)))))

(declare-fun lt!1805556 () Unit!115507)

(declare-fun Unit!115543 () Unit!115507)

(assert (=> b!4642186 (= lt!1805556 Unit!115543)))

(assert (=> b!4642186 (contains!14914 lt!1805557 (_1!29715 (h!57894 lt!1805123)))))

(declare-fun lt!1805561 () Unit!115507)

(declare-fun Unit!115544 () Unit!115507)

(assert (=> b!4642186 (= lt!1805561 Unit!115544)))

(assert (=> b!4642186 (forall!10950 lt!1805123 lambda!196527)))

(declare-fun lt!1805553 () Unit!115507)

(declare-fun Unit!115545 () Unit!115507)

(assert (=> b!4642186 (= lt!1805553 Unit!115545)))

(assert (=> b!4642186 (forall!10950 (toList!5143 lt!1805567) lambda!196527)))

(declare-fun lt!1805558 () Unit!115507)

(declare-fun Unit!115546 () Unit!115507)

(assert (=> b!4642186 (= lt!1805558 Unit!115546)))

(declare-fun lt!1805552 () Unit!115507)

(declare-fun Unit!115547 () Unit!115507)

(assert (=> b!4642186 (= lt!1805552 Unit!115547)))

(declare-fun lt!1805560 () Unit!115507)

(assert (=> b!4642186 (= lt!1805560 (addForallContainsKeyThenBeforeAdding!566 (ListMap!4468 Nil!51782) lt!1805557 (_1!29715 (h!57894 lt!1805123)) (_2!29715 (h!57894 lt!1805123))))))

(assert (=> b!4642186 call!324060))

(declare-fun lt!1805559 () Unit!115507)

(assert (=> b!4642186 (= lt!1805559 lt!1805560)))

(assert (=> b!4642186 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196527)))

(declare-fun lt!1805555 () Unit!115507)

(declare-fun Unit!115548 () Unit!115507)

(assert (=> b!4642186 (= lt!1805555 Unit!115548)))

(declare-fun res!1949858 () Bool)

(assert (=> b!4642186 (= res!1949858 (forall!10950 lt!1805123 lambda!196527))))

(assert (=> b!4642186 (=> (not res!1949858) (not e!2895895))))

(assert (=> b!4642186 e!2895895))

(declare-fun lt!1805565 () Unit!115507)

(declare-fun Unit!115549 () Unit!115507)

(assert (=> b!4642186 (= lt!1805565 Unit!115549)))

(assert (=> d!1463568 e!2895894))

(declare-fun res!1949857 () Bool)

(assert (=> d!1463568 (=> (not res!1949857) (not e!2895894))))

(assert (=> d!1463568 (= res!1949857 (forall!10950 lt!1805123 lambda!196528))))

(assert (=> d!1463568 (= lt!1805554 e!2895893)))

(assert (=> d!1463568 (= c!794339 (is-Nil!51782 lt!1805123))))

(assert (=> d!1463568 (noDuplicateKeys!1599 lt!1805123)))

(assert (=> d!1463568 (= (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805554)))

(assert (= (and d!1463568 c!794339) b!4642188))

(assert (= (and d!1463568 (not c!794339)) b!4642186))

(assert (= (and b!4642186 res!1949858) b!4642187))

(assert (= (or b!4642188 b!4642186) bm!324057))

(assert (= (or b!4642188 b!4642186) bm!324056))

(assert (= (or b!4642188 b!4642186) bm!324055))

(assert (= (and d!1463568 res!1949857) b!4642185))

(assert (= (and b!4642185 res!1949856) b!4642184))

(declare-fun m!5503459 () Bool)

(assert (=> b!4642186 m!5503459))

(declare-fun m!5503461 () Bool)

(assert (=> b!4642186 m!5503461))

(assert (=> b!4642186 m!5503459))

(declare-fun m!5503463 () Bool)

(assert (=> b!4642186 m!5503463))

(declare-fun m!5503465 () Bool)

(assert (=> b!4642186 m!5503465))

(assert (=> b!4642186 m!5503461))

(declare-fun m!5503467 () Bool)

(assert (=> b!4642186 m!5503467))

(declare-fun m!5503469 () Bool)

(assert (=> b!4642186 m!5503469))

(declare-fun m!5503471 () Bool)

(assert (=> b!4642186 m!5503471))

(declare-fun m!5503473 () Bool)

(assert (=> b!4642186 m!5503473))

(declare-fun m!5503475 () Bool)

(assert (=> b!4642186 m!5503475))

(declare-fun m!5503477 () Bool)

(assert (=> b!4642186 m!5503477))

(assert (=> b!4642186 m!5503469))

(declare-fun m!5503479 () Bool)

(assert (=> bm!324055 m!5503479))

(declare-fun m!5503481 () Bool)

(assert (=> bm!324056 m!5503481))

(declare-fun m!5503483 () Bool)

(assert (=> b!4642184 m!5503483))

(declare-fun m!5503485 () Bool)

(assert (=> d!1463568 m!5503485))

(assert (=> d!1463568 m!5503279))

(declare-fun m!5503487 () Bool)

(assert (=> b!4642185 m!5503487))

(assert (=> bm!324057 m!5503399))

(assert (=> b!4642187 m!5503477))

(assert (=> b!4641865 d!1463568))

(declare-fun d!1463570 () Bool)

(declare-fun e!2895896 () Bool)

(assert (=> d!1463570 e!2895896))

(declare-fun res!1949860 () Bool)

(assert (=> d!1463570 (=> (not res!1949860) (not e!2895896))))

(declare-fun lt!1805570 () ListMap!4467)

(assert (=> d!1463570 (= res!1949860 (contains!14914 lt!1805570 (_1!29715 (h!57894 oldBucket!40))))))

(declare-fun lt!1805571 () List!51906)

(assert (=> d!1463570 (= lt!1805570 (ListMap!4468 lt!1805571))))

(declare-fun lt!1805569 () Unit!115507)

(declare-fun lt!1805568 () Unit!115507)

(assert (=> d!1463570 (= lt!1805569 lt!1805568)))

(assert (=> d!1463570 (= (getValueByKey!1563 lt!1805571 (_1!29715 (h!57894 oldBucket!40))) (Some!11764 (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463570 (= lt!1805568 (lemmaContainsTupThenGetReturnValue!901 lt!1805571 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463570 (= lt!1805571 (insertNoDuplicatedKeys!409 (toList!5143 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783))) (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> d!1463570 (= (+!1949 (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)) (h!57894 oldBucket!40)) lt!1805570)))

(declare-fun b!4642189 () Bool)

(declare-fun res!1949859 () Bool)

(assert (=> b!4642189 (=> (not res!1949859) (not e!2895896))))

(assert (=> b!4642189 (= res!1949859 (= (getValueByKey!1563 (toList!5143 lt!1805570) (_1!29715 (h!57894 oldBucket!40))) (Some!11764 (_2!29715 (h!57894 oldBucket!40)))))))

(declare-fun b!4642190 () Bool)

(assert (=> b!4642190 (= e!2895896 (contains!14921 (toList!5143 lt!1805570) (h!57894 oldBucket!40)))))

(assert (= (and d!1463570 res!1949860) b!4642189))

(assert (= (and b!4642189 res!1949859) b!4642190))

(declare-fun m!5503489 () Bool)

(assert (=> d!1463570 m!5503489))

(declare-fun m!5503491 () Bool)

(assert (=> d!1463570 m!5503491))

(declare-fun m!5503493 () Bool)

(assert (=> d!1463570 m!5503493))

(declare-fun m!5503495 () Bool)

(assert (=> d!1463570 m!5503495))

(declare-fun m!5503497 () Bool)

(assert (=> b!4642189 m!5503497))

(declare-fun m!5503499 () Bool)

(assert (=> b!4642190 m!5503499))

(assert (=> b!4641865 d!1463570))

(declare-fun d!1463572 () Bool)

(assert (=> d!1463572 (= (eq!890 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805127 lt!1805146) (ListMap!4468 Nil!51782)) (+!1949 (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805127)) (= (content!8944 (toList!5143 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805127 lt!1805146) (ListMap!4468 Nil!51782)))) (content!8944 (toList!5143 (+!1949 (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805127)))))))

(declare-fun bs!1034086 () Bool)

(assert (= bs!1034086 d!1463572))

(declare-fun m!5503501 () Bool)

(assert (=> bs!1034086 m!5503501))

(declare-fun m!5503503 () Bool)

(assert (=> bs!1034086 m!5503503))

(assert (=> b!4641865 d!1463572))

(declare-fun d!1463574 () Bool)

(assert (=> d!1463574 (eq!890 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805127 lt!1805146) (ListMap!4468 Nil!51782)) (+!1949 (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805127))))

(declare-fun lt!1805572 () Unit!115507)

(assert (=> d!1463574 (= lt!1805572 (choose!31801 lt!1805127 lt!1805146 (ListMap!4468 Nil!51782)))))

(assert (=> d!1463574 (noDuplicateKeys!1599 lt!1805146)))

(assert (=> d!1463574 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!141 lt!1805127 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805572)))

(declare-fun bs!1034087 () Bool)

(assert (= bs!1034087 d!1463574))

(declare-fun m!5503505 () Bool)

(assert (=> bs!1034087 m!5503505))

(assert (=> bs!1034087 m!5502753))

(assert (=> bs!1034087 m!5502957))

(assert (=> bs!1034087 m!5502745))

(assert (=> bs!1034087 m!5502747))

(assert (=> bs!1034087 m!5502749))

(assert (=> bs!1034087 m!5502753))

(assert (=> bs!1034087 m!5502747))

(assert (=> bs!1034087 m!5502745))

(assert (=> b!4641865 d!1463574))

(declare-fun d!1463576 () Bool)

(declare-fun e!2895897 () Bool)

(assert (=> d!1463576 e!2895897))

(declare-fun res!1949862 () Bool)

(assert (=> d!1463576 (=> (not res!1949862) (not e!2895897))))

(declare-fun lt!1805575 () ListMap!4467)

(assert (=> d!1463576 (= res!1949862 (contains!14914 lt!1805575 (_1!29715 lt!1805132)))))

(declare-fun lt!1805576 () List!51906)

(assert (=> d!1463576 (= lt!1805575 (ListMap!4468 lt!1805576))))

(declare-fun lt!1805574 () Unit!115507)

(declare-fun lt!1805573 () Unit!115507)

(assert (=> d!1463576 (= lt!1805574 lt!1805573)))

(assert (=> d!1463576 (= (getValueByKey!1563 lt!1805576 (_1!29715 lt!1805132)) (Some!11764 (_2!29715 lt!1805132)))))

(assert (=> d!1463576 (= lt!1805573 (lemmaContainsTupThenGetReturnValue!901 lt!1805576 (_1!29715 lt!1805132) (_2!29715 lt!1805132)))))

(assert (=> d!1463576 (= lt!1805576 (insertNoDuplicatedKeys!409 (toList!5143 (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782))) (_1!29715 lt!1805132) (_2!29715 lt!1805132)))))

(assert (=> d!1463576 (= (+!1949 (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805132) lt!1805575)))

(declare-fun b!4642191 () Bool)

(declare-fun res!1949861 () Bool)

(assert (=> b!4642191 (=> (not res!1949861) (not e!2895897))))

(assert (=> b!4642191 (= res!1949861 (= (getValueByKey!1563 (toList!5143 lt!1805575) (_1!29715 lt!1805132)) (Some!11764 (_2!29715 lt!1805132))))))

(declare-fun b!4642192 () Bool)

(assert (=> b!4642192 (= e!2895897 (contains!14921 (toList!5143 lt!1805575) lt!1805132))))

(assert (= (and d!1463576 res!1949862) b!4642191))

(assert (= (and b!4642191 res!1949861) b!4642192))

(declare-fun m!5503507 () Bool)

(assert (=> d!1463576 m!5503507))

(declare-fun m!5503509 () Bool)

(assert (=> d!1463576 m!5503509))

(declare-fun m!5503511 () Bool)

(assert (=> d!1463576 m!5503511))

(declare-fun m!5503513 () Bool)

(assert (=> d!1463576 m!5503513))

(declare-fun m!5503515 () Bool)

(assert (=> b!4642191 m!5503515))

(declare-fun m!5503517 () Bool)

(assert (=> b!4642192 m!5503517))

(assert (=> b!4641865 d!1463576))

(declare-fun d!1463578 () Bool)

(assert (=> d!1463578 (= (eq!890 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805132 lt!1805123) (ListMap!4468 Nil!51782)) (+!1949 (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805132)) (= (content!8944 (toList!5143 (addToMapMapFromBucket!1058 (Cons!51782 lt!1805132 lt!1805123) (ListMap!4468 Nil!51782)))) (content!8944 (toList!5143 (+!1949 (addToMapMapFromBucket!1058 lt!1805123 (ListMap!4468 Nil!51782)) lt!1805132)))))))

(declare-fun bs!1034088 () Bool)

(assert (= bs!1034088 d!1463578))

(declare-fun m!5503519 () Bool)

(assert (=> bs!1034088 m!5503519))

(declare-fun m!5503521 () Bool)

(assert (=> bs!1034088 m!5503521))

(assert (=> b!4641865 d!1463578))

(declare-fun d!1463580 () Bool)

(assert (=> d!1463580 (= (head!9709 newBucket!224) (h!57894 newBucket!224))))

(assert (=> b!4641865 d!1463580))

(declare-fun d!1463582 () Bool)

(declare-fun e!2895898 () Bool)

(assert (=> d!1463582 e!2895898))

(declare-fun res!1949864 () Bool)

(assert (=> d!1463582 (=> (not res!1949864) (not e!2895898))))

(declare-fun lt!1805579 () ListMap!4467)

(assert (=> d!1463582 (= res!1949864 (contains!14914 lt!1805579 (_1!29715 lt!1805127)))))

(declare-fun lt!1805580 () List!51906)

(assert (=> d!1463582 (= lt!1805579 (ListMap!4468 lt!1805580))))

(declare-fun lt!1805578 () Unit!115507)

(declare-fun lt!1805577 () Unit!115507)

(assert (=> d!1463582 (= lt!1805578 lt!1805577)))

(assert (=> d!1463582 (= (getValueByKey!1563 lt!1805580 (_1!29715 lt!1805127)) (Some!11764 (_2!29715 lt!1805127)))))

(assert (=> d!1463582 (= lt!1805577 (lemmaContainsTupThenGetReturnValue!901 lt!1805580 (_1!29715 lt!1805127) (_2!29715 lt!1805127)))))

(assert (=> d!1463582 (= lt!1805580 (insertNoDuplicatedKeys!409 (toList!5143 (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782))) (_1!29715 lt!1805127) (_2!29715 lt!1805127)))))

(assert (=> d!1463582 (= (+!1949 (addToMapMapFromBucket!1058 lt!1805146 (ListMap!4468 Nil!51782)) lt!1805127) lt!1805579)))

(declare-fun b!4642193 () Bool)

(declare-fun res!1949863 () Bool)

(assert (=> b!4642193 (=> (not res!1949863) (not e!2895898))))

(assert (=> b!4642193 (= res!1949863 (= (getValueByKey!1563 (toList!5143 lt!1805579) (_1!29715 lt!1805127)) (Some!11764 (_2!29715 lt!1805127))))))

(declare-fun b!4642194 () Bool)

(assert (=> b!4642194 (= e!2895898 (contains!14921 (toList!5143 lt!1805579) lt!1805127))))

(assert (= (and d!1463582 res!1949864) b!4642193))

(assert (= (and b!4642193 res!1949863) b!4642194))

(declare-fun m!5503523 () Bool)

(assert (=> d!1463582 m!5503523))

(declare-fun m!5503525 () Bool)

(assert (=> d!1463582 m!5503525))

(declare-fun m!5503527 () Bool)

(assert (=> d!1463582 m!5503527))

(declare-fun m!5503529 () Bool)

(assert (=> d!1463582 m!5503529))

(declare-fun m!5503531 () Bool)

(assert (=> b!4642193 m!5503531))

(declare-fun m!5503533 () Bool)

(assert (=> b!4642194 m!5503533))

(assert (=> b!4641865 d!1463582))

(declare-fun bs!1034089 () Bool)

(declare-fun d!1463584 () Bool)

(assert (= bs!1034089 (and d!1463584 b!4641868)))

(declare-fun lambda!196529 () Int)

(assert (=> bs!1034089 (= lambda!196529 lambda!196449)))

(declare-fun bs!1034090 () Bool)

(assert (= bs!1034090 (and d!1463584 d!1463532)))

(assert (=> bs!1034090 (= lambda!196529 lambda!196476)))

(declare-fun bs!1034091 () Bool)

(assert (= bs!1034091 (and d!1463584 d!1463562)))

(assert (=> bs!1034091 (= lambda!196529 lambda!196520)))

(declare-fun bs!1034092 () Bool)

(assert (= bs!1034092 (and d!1463584 d!1463432)))

(assert (=> bs!1034092 (= lambda!196529 lambda!196455)))

(declare-fun bs!1034093 () Bool)

(assert (= bs!1034093 (and d!1463584 d!1463470)))

(assert (=> bs!1034093 (= lambda!196529 lambda!196457)))

(declare-fun bs!1034094 () Bool)

(assert (= bs!1034094 (and d!1463584 d!1463488)))

(assert (=> bs!1034094 (= lambda!196529 lambda!196460)))

(declare-fun bs!1034095 () Bool)

(assert (= bs!1034095 (and d!1463584 d!1463492)))

(assert (=> bs!1034095 (= lambda!196529 lambda!196467)))

(declare-fun bs!1034096 () Bool)

(assert (= bs!1034096 (and d!1463584 d!1463466)))

(assert (=> bs!1034096 (= lambda!196529 lambda!196456)))

(declare-fun lt!1805581 () ListMap!4467)

(assert (=> d!1463584 (invariantList!1265 (toList!5143 lt!1805581))))

(declare-fun e!2895899 () ListMap!4467)

(assert (=> d!1463584 (= lt!1805581 e!2895899)))

(declare-fun c!794340 () Bool)

(assert (=> d!1463584 (= c!794340 (is-Cons!51783 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)))))

(assert (=> d!1463584 (forall!10949 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783) lambda!196529)))

(assert (=> d!1463584 (= (extractMap!1655 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)) lt!1805581)))

(declare-fun b!4642195 () Bool)

(assert (=> b!4642195 (= e!2895899 (addToMapMapFromBucket!1058 (_2!29716 (h!57895 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783))) (extractMap!1655 (t!358993 (Cons!51783 (tuple2!52845 hash!414 lt!1805146) Nil!51783)))))))

(declare-fun b!4642196 () Bool)

(assert (=> b!4642196 (= e!2895899 (ListMap!4468 Nil!51782))))

(assert (= (and d!1463584 c!794340) b!4642195))

(assert (= (and d!1463584 (not c!794340)) b!4642196))

(declare-fun m!5503535 () Bool)

(assert (=> d!1463584 m!5503535))

(declare-fun m!5503537 () Bool)

(assert (=> d!1463584 m!5503537))

(declare-fun m!5503539 () Bool)

(assert (=> b!4642195 m!5503539))

(assert (=> b!4642195 m!5503539))

(declare-fun m!5503541 () Bool)

(assert (=> b!4642195 m!5503541))

(assert (=> b!4641865 d!1463584))

(declare-fun bs!1034097 () Bool)

(declare-fun b!4642201 () Bool)

(assert (= bs!1034097 (and b!4642201 b!4642174)))

(declare-fun lambda!196530 () Int)

(assert (=> bs!1034097 (= lambda!196530 lambda!196521)))

(declare-fun bs!1034098 () Bool)

(assert (= bs!1034098 (and b!4642201 b!4642172)))

(assert (=> bs!1034098 (= lambda!196530 lambda!196522)))

(declare-fun bs!1034099 () Bool)

(assert (= bs!1034099 (and b!4642201 d!1463564)))

(assert (=> bs!1034099 (= (= (ListMap!4468 Nil!51782) lt!1805525) (= lambda!196530 lambda!196524))))

(assert (=> bs!1034098 (= (= (ListMap!4468 Nil!51782) lt!1805528) (= lambda!196530 lambda!196523))))

(declare-fun bs!1034100 () Bool)

(assert (= bs!1034100 (and b!4642201 d!1463522)))

(assert (=> bs!1034100 (not (= lambda!196530 lambda!196470))))

(declare-fun bs!1034101 () Bool)

(assert (= bs!1034101 (and b!4642201 b!4642186)))

(assert (=> bs!1034101 (= (= (ListMap!4468 Nil!51782) lt!1805557) (= lambda!196530 lambda!196527))))

(declare-fun bs!1034102 () Bool)

(assert (= bs!1034102 (and b!4642201 b!4642163)))

(assert (=> bs!1034102 (= lambda!196530 lambda!196517)))

(assert (=> bs!1034101 (= lambda!196530 lambda!196526)))

(declare-fun bs!1034103 () Bool)

(assert (= bs!1034103 (and b!4642201 d!1463568)))

(assert (=> bs!1034103 (= (= (ListMap!4468 Nil!51782) lt!1805554) (= lambda!196530 lambda!196528))))

(assert (=> bs!1034102 (= (= (ListMap!4468 Nil!51782) lt!1805506) (= lambda!196530 lambda!196518))))

(declare-fun bs!1034104 () Bool)

(assert (= bs!1034104 (and b!4642201 b!4642188)))

(assert (=> bs!1034104 (= lambda!196530 lambda!196525)))

(declare-fun bs!1034105 () Bool)

(assert (= bs!1034105 (and b!4642201 b!4642165)))

(assert (=> bs!1034105 (= lambda!196530 lambda!196516)))

(declare-fun bs!1034106 () Bool)

(assert (= bs!1034106 (and b!4642201 d!1463536)))

(assert (=> bs!1034106 (= (= (ListMap!4468 Nil!51782) lt!1805503) (= lambda!196530 lambda!196519))))

(assert (=> b!4642201 true))

(declare-fun bs!1034107 () Bool)

(declare-fun b!4642199 () Bool)

(assert (= bs!1034107 (and b!4642199 b!4642174)))

(declare-fun lambda!196531 () Int)

(assert (=> bs!1034107 (= lambda!196531 lambda!196521)))

(declare-fun bs!1034108 () Bool)

(assert (= bs!1034108 (and b!4642199 b!4642172)))

(assert (=> bs!1034108 (= lambda!196531 lambda!196522)))

(declare-fun bs!1034109 () Bool)

(assert (= bs!1034109 (and b!4642199 d!1463564)))

(assert (=> bs!1034109 (= (= (ListMap!4468 Nil!51782) lt!1805525) (= lambda!196531 lambda!196524))))

(assert (=> bs!1034108 (= (= (ListMap!4468 Nil!51782) lt!1805528) (= lambda!196531 lambda!196523))))

(declare-fun bs!1034110 () Bool)

(assert (= bs!1034110 (and b!4642199 d!1463522)))

(assert (=> bs!1034110 (not (= lambda!196531 lambda!196470))))

(declare-fun bs!1034111 () Bool)

(assert (= bs!1034111 (and b!4642199 b!4642186)))

(assert (=> bs!1034111 (= (= (ListMap!4468 Nil!51782) lt!1805557) (= lambda!196531 lambda!196527))))

(declare-fun bs!1034112 () Bool)

(assert (= bs!1034112 (and b!4642199 b!4642201)))

(assert (=> bs!1034112 (= lambda!196531 lambda!196530)))

(declare-fun bs!1034113 () Bool)

(assert (= bs!1034113 (and b!4642199 b!4642163)))

(assert (=> bs!1034113 (= lambda!196531 lambda!196517)))

(assert (=> bs!1034111 (= lambda!196531 lambda!196526)))

(declare-fun bs!1034114 () Bool)

(assert (= bs!1034114 (and b!4642199 d!1463568)))

(assert (=> bs!1034114 (= (= (ListMap!4468 Nil!51782) lt!1805554) (= lambda!196531 lambda!196528))))

(assert (=> bs!1034113 (= (= (ListMap!4468 Nil!51782) lt!1805506) (= lambda!196531 lambda!196518))))

(declare-fun bs!1034115 () Bool)

(assert (= bs!1034115 (and b!4642199 b!4642188)))

(assert (=> bs!1034115 (= lambda!196531 lambda!196525)))

(declare-fun bs!1034116 () Bool)

(assert (= bs!1034116 (and b!4642199 b!4642165)))

(assert (=> bs!1034116 (= lambda!196531 lambda!196516)))

(declare-fun bs!1034117 () Bool)

(assert (= bs!1034117 (and b!4642199 d!1463536)))

(assert (=> bs!1034117 (= (= (ListMap!4468 Nil!51782) lt!1805503) (= lambda!196531 lambda!196519))))

(assert (=> b!4642199 true))

(declare-fun lt!1805592 () ListMap!4467)

(declare-fun lambda!196532 () Int)

(assert (=> bs!1034107 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196521))))

(assert (=> bs!1034108 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196522))))

(assert (=> bs!1034109 (= (= lt!1805592 lt!1805525) (= lambda!196532 lambda!196524))))

(assert (=> b!4642199 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196531))))

(assert (=> bs!1034108 (= (= lt!1805592 lt!1805528) (= lambda!196532 lambda!196523))))

(assert (=> bs!1034110 (not (= lambda!196532 lambda!196470))))

(assert (=> bs!1034111 (= (= lt!1805592 lt!1805557) (= lambda!196532 lambda!196527))))

(assert (=> bs!1034112 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196530))))

(assert (=> bs!1034113 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196517))))

(assert (=> bs!1034111 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196526))))

(assert (=> bs!1034114 (= (= lt!1805592 lt!1805554) (= lambda!196532 lambda!196528))))

(assert (=> bs!1034113 (= (= lt!1805592 lt!1805506) (= lambda!196532 lambda!196518))))

(assert (=> bs!1034115 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196525))))

(assert (=> bs!1034116 (= (= lt!1805592 (ListMap!4468 Nil!51782)) (= lambda!196532 lambda!196516))))

(assert (=> bs!1034117 (= (= lt!1805592 lt!1805503) (= lambda!196532 lambda!196519))))

(assert (=> b!4642199 true))

(declare-fun bs!1034118 () Bool)

(declare-fun d!1463586 () Bool)

(assert (= bs!1034118 (and d!1463586 b!4642174)))

(declare-fun lt!1805589 () ListMap!4467)

(declare-fun lambda!196533 () Int)

(assert (=> bs!1034118 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196521))))

(declare-fun bs!1034119 () Bool)

(assert (= bs!1034119 (and d!1463586 b!4642172)))

(assert (=> bs!1034119 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196522))))

(declare-fun bs!1034120 () Bool)

(assert (= bs!1034120 (and d!1463586 d!1463564)))

(assert (=> bs!1034120 (= (= lt!1805589 lt!1805525) (= lambda!196533 lambda!196524))))

(declare-fun bs!1034121 () Bool)

(assert (= bs!1034121 (and d!1463586 b!4642199)))

(assert (=> bs!1034121 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196531))))

(assert (=> bs!1034119 (= (= lt!1805589 lt!1805528) (= lambda!196533 lambda!196523))))

(declare-fun bs!1034122 () Bool)

(assert (= bs!1034122 (and d!1463586 d!1463522)))

(assert (=> bs!1034122 (not (= lambda!196533 lambda!196470))))

(declare-fun bs!1034123 () Bool)

(assert (= bs!1034123 (and d!1463586 b!4642186)))

(assert (=> bs!1034123 (= (= lt!1805589 lt!1805557) (= lambda!196533 lambda!196527))))

(declare-fun bs!1034124 () Bool)

(assert (= bs!1034124 (and d!1463586 b!4642201)))

(assert (=> bs!1034124 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196530))))

(declare-fun bs!1034125 () Bool)

(assert (= bs!1034125 (and d!1463586 b!4642163)))

(assert (=> bs!1034125 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196517))))

(assert (=> bs!1034123 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196526))))

(assert (=> bs!1034121 (= (= lt!1805589 lt!1805592) (= lambda!196533 lambda!196532))))

(declare-fun bs!1034126 () Bool)

(assert (= bs!1034126 (and d!1463586 d!1463568)))

(assert (=> bs!1034126 (= (= lt!1805589 lt!1805554) (= lambda!196533 lambda!196528))))

(assert (=> bs!1034125 (= (= lt!1805589 lt!1805506) (= lambda!196533 lambda!196518))))

(declare-fun bs!1034127 () Bool)

(assert (= bs!1034127 (and d!1463586 b!4642188)))

(assert (=> bs!1034127 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196525))))

(declare-fun bs!1034128 () Bool)

(assert (= bs!1034128 (and d!1463586 b!4642165)))

(assert (=> bs!1034128 (= (= lt!1805589 (ListMap!4468 Nil!51782)) (= lambda!196533 lambda!196516))))

(declare-fun bs!1034129 () Bool)

(assert (= bs!1034129 (and d!1463586 d!1463536)))

(assert (=> bs!1034129 (= (= lt!1805589 lt!1805503) (= lambda!196533 lambda!196519))))

(assert (=> d!1463586 true))

(declare-fun call!324063 () Bool)

(declare-fun bm!324058 () Bool)

(declare-fun c!794341 () Bool)

(assert (=> bm!324058 (= call!324063 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794341 lambda!196530 lambda!196532)))))

(declare-fun bm!324059 () Bool)

(declare-fun call!324064 () Bool)

(assert (=> bm!324059 (= call!324064 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) (ite c!794341 lambda!196530 lambda!196531)))))

(declare-fun bm!324060 () Bool)

(declare-fun call!324065 () Unit!115507)

(assert (=> bm!324060 (= call!324065 (lemmaContainsAllItsOwnKeys!567 (ListMap!4468 Nil!51782)))))

(declare-fun b!4642197 () Bool)

(declare-fun e!2895901 () Bool)

(assert (=> b!4642197 (= e!2895901 (invariantList!1265 (toList!5143 lt!1805589)))))

(declare-fun b!4642198 () Bool)

(declare-fun res!1949865 () Bool)

(assert (=> b!4642198 (=> (not res!1949865) (not e!2895901))))

(assert (=> b!4642198 (= res!1949865 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196533))))

(declare-fun b!4642200 () Bool)

(declare-fun e!2895902 () Bool)

(assert (=> b!4642200 (= e!2895902 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196532))))

(declare-fun e!2895900 () ListMap!4467)

(assert (=> b!4642201 (= e!2895900 (ListMap!4468 Nil!51782))))

(declare-fun lt!1805601 () Unit!115507)

(assert (=> b!4642201 (= lt!1805601 call!324065)))

(assert (=> b!4642201 call!324064))

(declare-fun lt!1805582 () Unit!115507)

(assert (=> b!4642201 (= lt!1805582 lt!1805601)))

(assert (=> b!4642201 call!324063))

(declare-fun lt!1805586 () Unit!115507)

(declare-fun Unit!115561 () Unit!115507)

(assert (=> b!4642201 (= lt!1805586 Unit!115561)))

(assert (=> b!4642199 (= e!2895900 lt!1805592)))

(declare-fun lt!1805602 () ListMap!4467)

(assert (=> b!4642199 (= lt!1805602 (+!1949 (ListMap!4468 Nil!51782) (h!57894 (Cons!51782 lt!1805127 lt!1805146))))))

(assert (=> b!4642199 (= lt!1805592 (addToMapMapFromBucket!1058 (t!358992 (Cons!51782 lt!1805127 lt!1805146)) (+!1949 (ListMap!4468 Nil!51782) (h!57894 (Cons!51782 lt!1805127 lt!1805146)))))))

(declare-fun lt!1805583 () Unit!115507)

(assert (=> b!4642199 (= lt!1805583 call!324065)))

(assert (=> b!4642199 call!324064))

(declare-fun lt!1805597 () Unit!115507)

(assert (=> b!4642199 (= lt!1805597 lt!1805583)))

(assert (=> b!4642199 (forall!10950 (toList!5143 lt!1805602) lambda!196532)))

(declare-fun lt!1805584 () Unit!115507)

(declare-fun Unit!115562 () Unit!115507)

(assert (=> b!4642199 (= lt!1805584 Unit!115562)))

(assert (=> b!4642199 (forall!10950 (t!358992 (Cons!51782 lt!1805127 lt!1805146)) lambda!196532)))

(declare-fun lt!1805598 () Unit!115507)

(declare-fun Unit!115563 () Unit!115507)

(assert (=> b!4642199 (= lt!1805598 Unit!115563)))

(declare-fun lt!1805599 () Unit!115507)

(declare-fun Unit!115564 () Unit!115507)

(assert (=> b!4642199 (= lt!1805599 Unit!115564)))

(declare-fun lt!1805585 () Unit!115507)

(assert (=> b!4642199 (= lt!1805585 (forallContained!3175 (toList!5143 lt!1805602) lambda!196532 (h!57894 (Cons!51782 lt!1805127 lt!1805146))))))

(assert (=> b!4642199 (contains!14914 lt!1805602 (_1!29715 (h!57894 (Cons!51782 lt!1805127 lt!1805146))))))

(declare-fun lt!1805591 () Unit!115507)

(declare-fun Unit!115565 () Unit!115507)

(assert (=> b!4642199 (= lt!1805591 Unit!115565)))

(assert (=> b!4642199 (contains!14914 lt!1805592 (_1!29715 (h!57894 (Cons!51782 lt!1805127 lt!1805146))))))

(declare-fun lt!1805596 () Unit!115507)

(declare-fun Unit!115566 () Unit!115507)

(assert (=> b!4642199 (= lt!1805596 Unit!115566)))

(assert (=> b!4642199 (forall!10950 (Cons!51782 lt!1805127 lt!1805146) lambda!196532)))

(declare-fun lt!1805588 () Unit!115507)

(declare-fun Unit!115567 () Unit!115507)

(assert (=> b!4642199 (= lt!1805588 Unit!115567)))

(assert (=> b!4642199 (forall!10950 (toList!5143 lt!1805602) lambda!196532)))

(declare-fun lt!1805593 () Unit!115507)

(declare-fun Unit!115568 () Unit!115507)

(assert (=> b!4642199 (= lt!1805593 Unit!115568)))

(declare-fun lt!1805587 () Unit!115507)

(declare-fun Unit!115569 () Unit!115507)

(assert (=> b!4642199 (= lt!1805587 Unit!115569)))

(declare-fun lt!1805595 () Unit!115507)

(assert (=> b!4642199 (= lt!1805595 (addForallContainsKeyThenBeforeAdding!566 (ListMap!4468 Nil!51782) lt!1805592 (_1!29715 (h!57894 (Cons!51782 lt!1805127 lt!1805146))) (_2!29715 (h!57894 (Cons!51782 lt!1805127 lt!1805146)))))))

(assert (=> b!4642199 call!324063))

(declare-fun lt!1805594 () Unit!115507)

(assert (=> b!4642199 (= lt!1805594 lt!1805595)))

(assert (=> b!4642199 (forall!10950 (toList!5143 (ListMap!4468 Nil!51782)) lambda!196532)))

(declare-fun lt!1805590 () Unit!115507)

(declare-fun Unit!115570 () Unit!115507)

(assert (=> b!4642199 (= lt!1805590 Unit!115570)))

(declare-fun res!1949867 () Bool)

(assert (=> b!4642199 (= res!1949867 (forall!10950 (Cons!51782 lt!1805127 lt!1805146) lambda!196532))))

(assert (=> b!4642199 (=> (not res!1949867) (not e!2895902))))

(assert (=> b!4642199 e!2895902))

(declare-fun lt!1805600 () Unit!115507)

(declare-fun Unit!115571 () Unit!115507)

(assert (=> b!4642199 (= lt!1805600 Unit!115571)))

(assert (=> d!1463586 e!2895901))

(declare-fun res!1949866 () Bool)

(assert (=> d!1463586 (=> (not res!1949866) (not e!2895901))))

(assert (=> d!1463586 (= res!1949866 (forall!10950 (Cons!51782 lt!1805127 lt!1805146) lambda!196533))))

(assert (=> d!1463586 (= lt!1805589 e!2895900)))

(assert (=> d!1463586 (= c!794341 (is-Nil!51782 (Cons!51782 lt!1805127 lt!1805146)))))

(assert (=> d!1463586 (noDuplicateKeys!1599 (Cons!51782 lt!1805127 lt!1805146))))

(assert (=> d!1463586 (= (addToMapMapFromBucket!1058 (Cons!51782 lt!1805127 lt!1805146) (ListMap!4468 Nil!51782)) lt!1805589)))

(assert (= (and d!1463586 c!794341) b!4642201))

(assert (= (and d!1463586 (not c!794341)) b!4642199))

(assert (= (and b!4642199 res!1949867) b!4642200))

(assert (= (or b!4642201 b!4642199) bm!324060))

(assert (= (or b!4642201 b!4642199) bm!324059))

(assert (= (or b!4642201 b!4642199) bm!324058))

(assert (= (and d!1463586 res!1949866) b!4642198))

(assert (= (and b!4642198 res!1949865) b!4642197))

(declare-fun m!5503543 () Bool)

(assert (=> b!4642199 m!5503543))

(declare-fun m!5503545 () Bool)

(assert (=> b!4642199 m!5503545))

(assert (=> b!4642199 m!5503543))

(declare-fun m!5503547 () Bool)

(assert (=> b!4642199 m!5503547))

(declare-fun m!5503549 () Bool)

(assert (=> b!4642199 m!5503549))

(assert (=> b!4642199 m!5503545))

(declare-fun m!5503551 () Bool)

(assert (=> b!4642199 m!5503551))

(declare-fun m!5503553 () Bool)

(assert (=> b!4642199 m!5503553))

(declare-fun m!5503555 () Bool)

(assert (=> b!4642199 m!5503555))

(declare-fun m!5503557 () Bool)

(assert (=> b!4642199 m!5503557))

(declare-fun m!5503559 () Bool)

(assert (=> b!4642199 m!5503559))

(declare-fun m!5503561 () Bool)

(assert (=> b!4642199 m!5503561))

(assert (=> b!4642199 m!5503553))

(declare-fun m!5503563 () Bool)

(assert (=> bm!324058 m!5503563))

(declare-fun m!5503565 () Bool)

(assert (=> bm!324059 m!5503565))

(declare-fun m!5503567 () Bool)

(assert (=> b!4642197 m!5503567))

(declare-fun m!5503569 () Bool)

(assert (=> d!1463586 m!5503569))

(declare-fun m!5503571 () Bool)

(assert (=> d!1463586 m!5503571))

(declare-fun m!5503573 () Bool)

(assert (=> b!4642198 m!5503573))

(assert (=> bm!324060 m!5503399))

(assert (=> b!4642200 m!5503561))

(assert (=> b!4641865 d!1463586))

(declare-fun bs!1034130 () Bool)

(declare-fun d!1463588 () Bool)

(assert (= bs!1034130 (and d!1463588 b!4642174)))

(declare-fun lambda!196534 () Int)

(assert (=> bs!1034130 (not (= lambda!196534 lambda!196521))))

(declare-fun bs!1034131 () Bool)

(assert (= bs!1034131 (and d!1463588 b!4642172)))

(assert (=> bs!1034131 (not (= lambda!196534 lambda!196522))))

(declare-fun bs!1034132 () Bool)

(assert (= bs!1034132 (and d!1463588 d!1463564)))

(assert (=> bs!1034132 (not (= lambda!196534 lambda!196524))))

(declare-fun bs!1034133 () Bool)

(assert (= bs!1034133 (and d!1463588 d!1463586)))

(assert (=> bs!1034133 (not (= lambda!196534 lambda!196533))))

(declare-fun bs!1034134 () Bool)

(assert (= bs!1034134 (and d!1463588 b!4642199)))

(assert (=> bs!1034134 (not (= lambda!196534 lambda!196531))))

(assert (=> bs!1034131 (not (= lambda!196534 lambda!196523))))

(declare-fun bs!1034135 () Bool)

(assert (= bs!1034135 (and d!1463588 d!1463522)))

(assert (=> bs!1034135 (= lambda!196534 lambda!196470)))

(declare-fun bs!1034136 () Bool)

(assert (= bs!1034136 (and d!1463588 b!4642186)))

(assert (=> bs!1034136 (not (= lambda!196534 lambda!196527))))

(declare-fun bs!1034137 () Bool)

(assert (= bs!1034137 (and d!1463588 b!4642201)))

(assert (=> bs!1034137 (not (= lambda!196534 lambda!196530))))

(declare-fun bs!1034138 () Bool)

(assert (= bs!1034138 (and d!1463588 b!4642163)))

(assert (=> bs!1034138 (not (= lambda!196534 lambda!196517))))

(assert (=> bs!1034136 (not (= lambda!196534 lambda!196526))))

(assert (=> bs!1034134 (not (= lambda!196534 lambda!196532))))

(declare-fun bs!1034139 () Bool)

(assert (= bs!1034139 (and d!1463588 d!1463568)))

(assert (=> bs!1034139 (not (= lambda!196534 lambda!196528))))

(assert (=> bs!1034138 (not (= lambda!196534 lambda!196518))))

(declare-fun bs!1034140 () Bool)

(assert (= bs!1034140 (and d!1463588 b!4642188)))

(assert (=> bs!1034140 (not (= lambda!196534 lambda!196525))))

(declare-fun bs!1034141 () Bool)

(assert (= bs!1034141 (and d!1463588 b!4642165)))

(assert (=> bs!1034141 (not (= lambda!196534 lambda!196516))))

(declare-fun bs!1034142 () Bool)

(assert (= bs!1034142 (and d!1463588 d!1463536)))

(assert (=> bs!1034142 (not (= lambda!196534 lambda!196519))))

(assert (=> d!1463588 true))

(assert (=> d!1463588 true))

(assert (=> d!1463588 (= (allKeysSameHash!1453 oldBucket!40 hash!414 hashF!1389) (forall!10950 oldBucket!40 lambda!196534))))

(declare-fun bs!1034143 () Bool)

(assert (= bs!1034143 d!1463588))

(declare-fun m!5503575 () Bool)

(assert (=> bs!1034143 m!5503575))

(assert (=> b!4641864 d!1463588))

(declare-fun b!4642203 () Bool)

(declare-fun e!2895904 () List!51906)

(declare-fun e!2895903 () List!51906)

(assert (=> b!4642203 (= e!2895904 e!2895903)))

(declare-fun c!794342 () Bool)

(assert (=> b!4642203 (= c!794342 (is-Cons!51782 (t!358992 oldBucket!40)))))

(declare-fun b!4642202 () Bool)

(assert (=> b!4642202 (= e!2895904 (t!358992 (t!358992 oldBucket!40)))))

(declare-fun b!4642205 () Bool)

(assert (=> b!4642205 (= e!2895903 Nil!51782)))

(declare-fun b!4642204 () Bool)

(assert (=> b!4642204 (= e!2895903 (Cons!51782 (h!57894 (t!358992 oldBucket!40)) (removePairForKey!1222 (t!358992 (t!358992 oldBucket!40)) key!4968)))))

(declare-fun d!1463590 () Bool)

(declare-fun lt!1805603 () List!51906)

(assert (=> d!1463590 (not (containsKey!2641 lt!1805603 key!4968))))

(assert (=> d!1463590 (= lt!1805603 e!2895904)))

(declare-fun c!794343 () Bool)

(assert (=> d!1463590 (= c!794343 (and (is-Cons!51782 (t!358992 oldBucket!40)) (= (_1!29715 (h!57894 (t!358992 oldBucket!40))) key!4968)))))

(assert (=> d!1463590 (noDuplicateKeys!1599 (t!358992 oldBucket!40))))

(assert (=> d!1463590 (= (removePairForKey!1222 (t!358992 oldBucket!40) key!4968) lt!1805603)))

(assert (= (and d!1463590 c!794343) b!4642202))

(assert (= (and d!1463590 (not c!794343)) b!4642203))

(assert (= (and b!4642203 c!794342) b!4642204))

(assert (= (and b!4642203 (not c!794342)) b!4642205))

(declare-fun m!5503577 () Bool)

(assert (=> b!4642204 m!5503577))

(declare-fun m!5503579 () Bool)

(assert (=> d!1463590 m!5503579))

(assert (=> d!1463590 m!5502971))

(assert (=> b!4641863 d!1463590))

(declare-fun b!4642207 () Bool)

(declare-fun e!2895906 () List!51906)

(declare-fun e!2895905 () List!51906)

(assert (=> b!4642207 (= e!2895906 e!2895905)))

(declare-fun c!794344 () Bool)

(assert (=> b!4642207 (= c!794344 (is-Cons!51782 oldBucket!40))))

(declare-fun b!4642206 () Bool)

(assert (=> b!4642206 (= e!2895906 (t!358992 oldBucket!40))))

(declare-fun b!4642209 () Bool)

(assert (=> b!4642209 (= e!2895905 Nil!51782)))

(declare-fun b!4642208 () Bool)

(assert (=> b!4642208 (= e!2895905 (Cons!51782 (h!57894 oldBucket!40) (removePairForKey!1222 (t!358992 oldBucket!40) key!4968)))))

(declare-fun d!1463592 () Bool)

(declare-fun lt!1805604 () List!51906)

(assert (=> d!1463592 (not (containsKey!2641 lt!1805604 key!4968))))

(assert (=> d!1463592 (= lt!1805604 e!2895906)))

(declare-fun c!794345 () Bool)

(assert (=> d!1463592 (= c!794345 (and (is-Cons!51782 oldBucket!40) (= (_1!29715 (h!57894 oldBucket!40)) key!4968)))))

(assert (=> d!1463592 (noDuplicateKeys!1599 oldBucket!40)))

(assert (=> d!1463592 (= (removePairForKey!1222 oldBucket!40 key!4968) lt!1805604)))

(assert (= (and d!1463592 c!794345) b!4642206))

(assert (= (and d!1463592 (not c!794345)) b!4642207))

(assert (= (and b!4642207 c!794344) b!4642208))

(assert (= (and b!4642207 (not c!794344)) b!4642209))

(assert (=> b!4642208 m!5502687))

(declare-fun m!5503581 () Bool)

(assert (=> d!1463592 m!5503581))

(assert (=> d!1463592 m!5502797))

(assert (=> b!4641873 d!1463592))

(declare-fun bs!1034144 () Bool)

(declare-fun b!4642214 () Bool)

(assert (= bs!1034144 (and b!4642214 b!4642174)))

(declare-fun lambda!196535 () Int)

(assert (=> bs!1034144 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196521))))

(declare-fun bs!1034145 () Bool)

(assert (= bs!1034145 (and b!4642214 b!4642172)))

(assert (=> bs!1034145 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196522))))

(declare-fun bs!1034146 () Bool)

(assert (= bs!1034146 (and b!4642214 d!1463564)))

(assert (=> bs!1034146 (= (= lt!1805144 lt!1805525) (= lambda!196535 lambda!196524))))

(declare-fun bs!1034147 () Bool)

(assert (= bs!1034147 (and b!4642214 d!1463586)))

(assert (=> bs!1034147 (= (= lt!1805144 lt!1805589) (= lambda!196535 lambda!196533))))

(declare-fun bs!1034148 () Bool)

(assert (= bs!1034148 (and b!4642214 b!4642199)))

(assert (=> bs!1034148 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196531))))

(assert (=> bs!1034145 (= (= lt!1805144 lt!1805528) (= lambda!196535 lambda!196523))))

(declare-fun bs!1034149 () Bool)

(assert (= bs!1034149 (and b!4642214 d!1463522)))

(assert (=> bs!1034149 (not (= lambda!196535 lambda!196470))))

(declare-fun bs!1034150 () Bool)

(assert (= bs!1034150 (and b!4642214 b!4642186)))

(assert (=> bs!1034150 (= (= lt!1805144 lt!1805557) (= lambda!196535 lambda!196527))))

(declare-fun bs!1034151 () Bool)

(assert (= bs!1034151 (and b!4642214 b!4642201)))

(assert (=> bs!1034151 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196530))))

(declare-fun bs!1034152 () Bool)

(assert (= bs!1034152 (and b!4642214 b!4642163)))

(assert (=> bs!1034152 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196517))))

(assert (=> bs!1034150 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196526))))

(assert (=> bs!1034148 (= (= lt!1805144 lt!1805592) (= lambda!196535 lambda!196532))))

(declare-fun bs!1034153 () Bool)

(assert (= bs!1034153 (and b!4642214 d!1463568)))

(assert (=> bs!1034153 (= (= lt!1805144 lt!1805554) (= lambda!196535 lambda!196528))))

(assert (=> bs!1034152 (= (= lt!1805144 lt!1805506) (= lambda!196535 lambda!196518))))

(declare-fun bs!1034154 () Bool)

(assert (= bs!1034154 (and b!4642214 b!4642165)))

(assert (=> bs!1034154 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196516))))

(declare-fun bs!1034155 () Bool)

(assert (= bs!1034155 (and b!4642214 d!1463536)))

(assert (=> bs!1034155 (= (= lt!1805144 lt!1805503) (= lambda!196535 lambda!196519))))

(declare-fun bs!1034156 () Bool)

(assert (= bs!1034156 (and b!4642214 b!4642188)))

(assert (=> bs!1034156 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196535 lambda!196525))))

(declare-fun bs!1034157 () Bool)

(assert (= bs!1034157 (and b!4642214 d!1463588)))

(assert (=> bs!1034157 (not (= lambda!196535 lambda!196534))))

(assert (=> b!4642214 true))

(declare-fun bs!1034158 () Bool)

(declare-fun b!4642212 () Bool)

(assert (= bs!1034158 (and b!4642212 b!4642174)))

(declare-fun lambda!196536 () Int)

(assert (=> bs!1034158 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196521))))

(declare-fun bs!1034159 () Bool)

(assert (= bs!1034159 (and b!4642212 b!4642172)))

(assert (=> bs!1034159 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196522))))

(declare-fun bs!1034160 () Bool)

(assert (= bs!1034160 (and b!4642212 d!1463564)))

(assert (=> bs!1034160 (= (= lt!1805144 lt!1805525) (= lambda!196536 lambda!196524))))

(declare-fun bs!1034161 () Bool)

(assert (= bs!1034161 (and b!4642212 b!4642199)))

(assert (=> bs!1034161 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196531))))

(assert (=> bs!1034159 (= (= lt!1805144 lt!1805528) (= lambda!196536 lambda!196523))))

(declare-fun bs!1034162 () Bool)

(assert (= bs!1034162 (and b!4642212 d!1463522)))

(assert (=> bs!1034162 (not (= lambda!196536 lambda!196470))))

(declare-fun bs!1034163 () Bool)

(assert (= bs!1034163 (and b!4642212 b!4642186)))

(assert (=> bs!1034163 (= (= lt!1805144 lt!1805557) (= lambda!196536 lambda!196527))))

(declare-fun bs!1034164 () Bool)

(assert (= bs!1034164 (and b!4642212 b!4642201)))

(assert (=> bs!1034164 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196530))))

(declare-fun bs!1034165 () Bool)

(assert (= bs!1034165 (and b!4642212 b!4642163)))

(assert (=> bs!1034165 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196517))))

(assert (=> bs!1034163 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196526))))

(assert (=> bs!1034161 (= (= lt!1805144 lt!1805592) (= lambda!196536 lambda!196532))))

(declare-fun bs!1034166 () Bool)

(assert (= bs!1034166 (and b!4642212 d!1463568)))

(assert (=> bs!1034166 (= (= lt!1805144 lt!1805554) (= lambda!196536 lambda!196528))))

(assert (=> bs!1034165 (= (= lt!1805144 lt!1805506) (= lambda!196536 lambda!196518))))

(declare-fun bs!1034167 () Bool)

(assert (= bs!1034167 (and b!4642212 d!1463586)))

(assert (=> bs!1034167 (= (= lt!1805144 lt!1805589) (= lambda!196536 lambda!196533))))

(declare-fun bs!1034168 () Bool)

(assert (= bs!1034168 (and b!4642212 b!4642214)))

(assert (=> bs!1034168 (= lambda!196536 lambda!196535)))

(declare-fun bs!1034169 () Bool)

(assert (= bs!1034169 (and b!4642212 b!4642165)))

(assert (=> bs!1034169 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196516))))

(declare-fun bs!1034170 () Bool)

(assert (= bs!1034170 (and b!4642212 d!1463536)))

(assert (=> bs!1034170 (= (= lt!1805144 lt!1805503) (= lambda!196536 lambda!196519))))

(declare-fun bs!1034171 () Bool)

(assert (= bs!1034171 (and b!4642212 b!4642188)))

(assert (=> bs!1034171 (= (= lt!1805144 (ListMap!4468 Nil!51782)) (= lambda!196536 lambda!196525))))

(declare-fun bs!1034172 () Bool)

(assert (= bs!1034172 (and b!4642212 d!1463588)))

(assert (=> bs!1034172 (not (= lambda!196536 lambda!196534))))

(assert (=> b!4642212 true))

(declare-fun lt!1805615 () ListMap!4467)

(declare-fun lambda!196537 () Int)

(assert (=> bs!1034158 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196521))))

(assert (=> bs!1034159 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196522))))

(assert (=> bs!1034160 (= (= lt!1805615 lt!1805525) (= lambda!196537 lambda!196524))))

(assert (=> bs!1034161 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196531))))

(assert (=> bs!1034159 (= (= lt!1805615 lt!1805528) (= lambda!196537 lambda!196523))))

(assert (=> bs!1034162 (not (= lambda!196537 lambda!196470))))

(assert (=> bs!1034163 (= (= lt!1805615 lt!1805557) (= lambda!196537 lambda!196527))))

(assert (=> bs!1034164 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196530))))

(assert (=> bs!1034165 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196517))))

(assert (=> bs!1034163 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196526))))

(assert (=> bs!1034161 (= (= lt!1805615 lt!1805592) (= lambda!196537 lambda!196532))))

(assert (=> bs!1034165 (= (= lt!1805615 lt!1805506) (= lambda!196537 lambda!196518))))

(assert (=> bs!1034167 (= (= lt!1805615 lt!1805589) (= lambda!196537 lambda!196533))))

(assert (=> bs!1034168 (= (= lt!1805615 lt!1805144) (= lambda!196537 lambda!196535))))

(assert (=> bs!1034169 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196516))))

(assert (=> bs!1034170 (= (= lt!1805615 lt!1805503) (= lambda!196537 lambda!196519))))

(assert (=> b!4642212 (= (= lt!1805615 lt!1805144) (= lambda!196537 lambda!196536))))

(assert (=> bs!1034166 (= (= lt!1805615 lt!1805554) (= lambda!196537 lambda!196528))))

(assert (=> bs!1034171 (= (= lt!1805615 (ListMap!4468 Nil!51782)) (= lambda!196537 lambda!196525))))

(assert (=> bs!1034172 (not (= lambda!196537 lambda!196534))))

(assert (=> b!4642212 true))

(declare-fun bs!1034173 () Bool)

(declare-fun d!1463594 () Bool)

(assert (= bs!1034173 (and d!1463594 b!4642174)))

(declare-fun lt!1805612 () ListMap!4467)

(declare-fun lambda!196538 () Int)

(assert (=> bs!1034173 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196521))))

(declare-fun bs!1034174 () Bool)

(assert (= bs!1034174 (and d!1463594 b!4642172)))

(assert (=> bs!1034174 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196522))))

(declare-fun bs!1034175 () Bool)

(assert (= bs!1034175 (and d!1463594 d!1463564)))

(assert (=> bs!1034175 (= (= lt!1805612 lt!1805525) (= lambda!196538 lambda!196524))))

(declare-fun bs!1034176 () Bool)

(assert (= bs!1034176 (and d!1463594 b!4642199)))

(assert (=> bs!1034176 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196531))))

(assert (=> bs!1034174 (= (= lt!1805612 lt!1805528) (= lambda!196538 lambda!196523))))

(declare-fun bs!1034177 () Bool)

(assert (= bs!1034177 (and d!1463594 d!1463522)))

(assert (=> bs!1034177 (not (= lambda!196538 lambda!196470))))

(declare-fun bs!1034178 () Bool)

(assert (= bs!1034178 (and d!1463594 b!4642186)))

(assert (=> bs!1034178 (= (= lt!1805612 lt!1805557) (= lambda!196538 lambda!196527))))

(declare-fun bs!1034179 () Bool)

(assert (= bs!1034179 (and d!1463594 b!4642201)))

(assert (=> bs!1034179 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196530))))

(declare-fun bs!1034180 () Bool)

(assert (= bs!1034180 (and d!1463594 b!4642163)))

(assert (=> bs!1034180 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196517))))

(assert (=> bs!1034178 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196526))))

(assert (=> bs!1034176 (= (= lt!1805612 lt!1805592) (= lambda!196538 lambda!196532))))

(assert (=> bs!1034180 (= (= lt!1805612 lt!1805506) (= lambda!196538 lambda!196518))))

(declare-fun bs!1034181 () Bool)

(assert (= bs!1034181 (and d!1463594 b!4642212)))

(assert (=> bs!1034181 (= (= lt!1805612 lt!1805615) (= lambda!196538 lambda!196537))))

(declare-fun bs!1034182 () Bool)

(assert (= bs!1034182 (and d!1463594 d!1463586)))

(assert (=> bs!1034182 (= (= lt!1805612 lt!1805589) (= lambda!196538 lambda!196533))))

(declare-fun bs!1034183 () Bool)

(assert (= bs!1034183 (and d!1463594 b!4642214)))

(assert (=> bs!1034183 (= (= lt!1805612 lt!1805144) (= lambda!196538 lambda!196535))))

(declare-fun bs!1034184 () Bool)

(assert (= bs!1034184 (and d!1463594 b!4642165)))

(assert (=> bs!1034184 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196516))))

(declare-fun bs!1034185 () Bool)

(assert (= bs!1034185 (and d!1463594 d!1463536)))

(assert (=> bs!1034185 (= (= lt!1805612 lt!1805503) (= lambda!196538 lambda!196519))))

(assert (=> bs!1034181 (= (= lt!1805612 lt!1805144) (= lambda!196538 lambda!196536))))

(declare-fun bs!1034186 () Bool)

(assert (= bs!1034186 (and d!1463594 d!1463568)))

(assert (=> bs!1034186 (= (= lt!1805612 lt!1805554) (= lambda!196538 lambda!196528))))

(declare-fun bs!1034187 () Bool)

(assert (= bs!1034187 (and d!1463594 b!4642188)))

(assert (=> bs!1034187 (= (= lt!1805612 (ListMap!4468 Nil!51782)) (= lambda!196538 lambda!196525))))

(declare-fun bs!1034188 () Bool)

(assert (= bs!1034188 (and d!1463594 d!1463588)))

(assert (=> bs!1034188 (not (= lambda!196538 lambda!196534))))

(assert (=> d!1463594 true))

(declare-fun bm!324061 () Bool)

(declare-fun call!324066 () Bool)

(declare-fun c!794346 () Bool)

(assert (=> bm!324061 (= call!324066 (forall!10950 (toList!5143 lt!1805144) (ite c!794346 lambda!196535 lambda!196537)))))

(declare-fun bm!324062 () Bool)

(declare-fun call!324067 () Bool)

(assert (=> bm!324062 (= call!324067 (forall!10950 (toList!5143 lt!1805144) (ite c!794346 lambda!196535 lambda!196536)))))

(declare-fun bm!324063 () Bool)

(declare-fun call!324068 () Unit!115507)

(assert (=> bm!324063 (= call!324068 (lemmaContainsAllItsOwnKeys!567 lt!1805144))))

(declare-fun b!4642210 () Bool)

(declare-fun e!2895908 () Bool)

(assert (=> b!4642210 (= e!2895908 (invariantList!1265 (toList!5143 lt!1805612)))))

(declare-fun b!4642211 () Bool)

(declare-fun res!1949868 () Bool)

(assert (=> b!4642211 (=> (not res!1949868) (not e!2895908))))

(assert (=> b!4642211 (= res!1949868 (forall!10950 (toList!5143 lt!1805144) lambda!196538))))

(declare-fun b!4642213 () Bool)

(declare-fun e!2895909 () Bool)

(assert (=> b!4642213 (= e!2895909 (forall!10950 (toList!5143 lt!1805144) lambda!196537))))

(declare-fun e!2895907 () ListMap!4467)

(assert (=> b!4642214 (= e!2895907 lt!1805144)))

(declare-fun lt!1805624 () Unit!115507)

(assert (=> b!4642214 (= lt!1805624 call!324068)))

(assert (=> b!4642214 call!324067))

(declare-fun lt!1805605 () Unit!115507)

(assert (=> b!4642214 (= lt!1805605 lt!1805624)))

(assert (=> b!4642214 call!324066))

(declare-fun lt!1805609 () Unit!115507)

(declare-fun Unit!115583 () Unit!115507)

(assert (=> b!4642214 (= lt!1805609 Unit!115583)))

(assert (=> b!4642212 (= e!2895907 lt!1805615)))

(declare-fun lt!1805625 () ListMap!4467)

(assert (=> b!4642212 (= lt!1805625 (+!1949 lt!1805144 (h!57894 oldBucket!40)))))

(assert (=> b!4642212 (= lt!1805615 (addToMapMapFromBucket!1058 (t!358992 oldBucket!40) (+!1949 lt!1805144 (h!57894 oldBucket!40))))))

(declare-fun lt!1805606 () Unit!115507)

(assert (=> b!4642212 (= lt!1805606 call!324068)))

(assert (=> b!4642212 call!324067))

(declare-fun lt!1805620 () Unit!115507)

(assert (=> b!4642212 (= lt!1805620 lt!1805606)))

(assert (=> b!4642212 (forall!10950 (toList!5143 lt!1805625) lambda!196537)))

(declare-fun lt!1805607 () Unit!115507)

(declare-fun Unit!115584 () Unit!115507)

(assert (=> b!4642212 (= lt!1805607 Unit!115584)))

(assert (=> b!4642212 (forall!10950 (t!358992 oldBucket!40) lambda!196537)))

(declare-fun lt!1805621 () Unit!115507)

(declare-fun Unit!115585 () Unit!115507)

(assert (=> b!4642212 (= lt!1805621 Unit!115585)))

(declare-fun lt!1805622 () Unit!115507)

(declare-fun Unit!115586 () Unit!115507)

(assert (=> b!4642212 (= lt!1805622 Unit!115586)))

(declare-fun lt!1805608 () Unit!115507)

(assert (=> b!4642212 (= lt!1805608 (forallContained!3175 (toList!5143 lt!1805625) lambda!196537 (h!57894 oldBucket!40)))))

(assert (=> b!4642212 (contains!14914 lt!1805625 (_1!29715 (h!57894 oldBucket!40)))))

(declare-fun lt!1805614 () Unit!115507)

(declare-fun Unit!115587 () Unit!115507)

(assert (=> b!4642212 (= lt!1805614 Unit!115587)))

(assert (=> b!4642212 (contains!14914 lt!1805615 (_1!29715 (h!57894 oldBucket!40)))))

(declare-fun lt!1805619 () Unit!115507)

(declare-fun Unit!115588 () Unit!115507)

(assert (=> b!4642212 (= lt!1805619 Unit!115588)))

(assert (=> b!4642212 (forall!10950 oldBucket!40 lambda!196537)))

(declare-fun lt!1805611 () Unit!115507)

(declare-fun Unit!115590 () Unit!115507)

(assert (=> b!4642212 (= lt!1805611 Unit!115590)))

(assert (=> b!4642212 (forall!10950 (toList!5143 lt!1805625) lambda!196537)))

(declare-fun lt!1805616 () Unit!115507)

(declare-fun Unit!115591 () Unit!115507)

(assert (=> b!4642212 (= lt!1805616 Unit!115591)))

(declare-fun lt!1805610 () Unit!115507)

(declare-fun Unit!115592 () Unit!115507)

(assert (=> b!4642212 (= lt!1805610 Unit!115592)))

(declare-fun lt!1805618 () Unit!115507)

(assert (=> b!4642212 (= lt!1805618 (addForallContainsKeyThenBeforeAdding!566 lt!1805144 lt!1805615 (_1!29715 (h!57894 oldBucket!40)) (_2!29715 (h!57894 oldBucket!40))))))

(assert (=> b!4642212 call!324066))

(declare-fun lt!1805617 () Unit!115507)

(assert (=> b!4642212 (= lt!1805617 lt!1805618)))

(assert (=> b!4642212 (forall!10950 (toList!5143 lt!1805144) lambda!196537)))

(declare-fun lt!1805613 () Unit!115507)

(declare-fun Unit!115594 () Unit!115507)

(assert (=> b!4642212 (= lt!1805613 Unit!115594)))

(declare-fun res!1949870 () Bool)

(assert (=> b!4642212 (= res!1949870 (forall!10950 oldBucket!40 lambda!196537))))

(assert (=> b!4642212 (=> (not res!1949870) (not e!2895909))))

(assert (=> b!4642212 e!2895909))

(declare-fun lt!1805623 () Unit!115507)

(declare-fun Unit!115595 () Unit!115507)

(assert (=> b!4642212 (= lt!1805623 Unit!115595)))

(assert (=> d!1463594 e!2895908))

(declare-fun res!1949869 () Bool)

(assert (=> d!1463594 (=> (not res!1949869) (not e!2895908))))

(assert (=> d!1463594 (= res!1949869 (forall!10950 oldBucket!40 lambda!196538))))

(assert (=> d!1463594 (= lt!1805612 e!2895907)))

(assert (=> d!1463594 (= c!794346 (is-Nil!51782 oldBucket!40))))

(assert (=> d!1463594 (noDuplicateKeys!1599 oldBucket!40)))

(assert (=> d!1463594 (= (addToMapMapFromBucket!1058 oldBucket!40 lt!1805144) lt!1805612)))

(assert (= (and d!1463594 c!794346) b!4642214))

(assert (= (and d!1463594 (not c!794346)) b!4642212))

(assert (= (and b!4642212 res!1949870) b!4642213))

(assert (= (or b!4642214 b!4642212) bm!324063))

(assert (= (or b!4642214 b!4642212) bm!324062))

(assert (= (or b!4642214 b!4642212) bm!324061))

(assert (= (and d!1463594 res!1949869) b!4642211))

(assert (= (and b!4642211 res!1949868) b!4642210))

(declare-fun m!5503583 () Bool)

(assert (=> b!4642212 m!5503583))

(declare-fun m!5503585 () Bool)

(assert (=> b!4642212 m!5503585))

(assert (=> b!4642212 m!5503583))

(declare-fun m!5503587 () Bool)

(assert (=> b!4642212 m!5503587))

(declare-fun m!5503589 () Bool)

(assert (=> b!4642212 m!5503589))

(assert (=> b!4642212 m!5503585))

(declare-fun m!5503591 () Bool)

(assert (=> b!4642212 m!5503591))

(declare-fun m!5503593 () Bool)

(assert (=> b!4642212 m!5503593))

(declare-fun m!5503595 () Bool)

(assert (=> b!4642212 m!5503595))

(declare-fun m!5503597 () Bool)

(assert (=> b!4642212 m!5503597))

(declare-fun m!5503599 () Bool)

(assert (=> b!4642212 m!5503599))

(declare-fun m!5503601 () Bool)

(assert (=> b!4642212 m!5503601))

(assert (=> b!4642212 m!5503593))

(declare-fun m!5503603 () Bool)

(assert (=> bm!324061 m!5503603))

(declare-fun m!5503605 () Bool)

(assert (=> bm!324062 m!5503605))

(declare-fun m!5503607 () Bool)

(assert (=> b!4642210 m!5503607))

(declare-fun m!5503609 () Bool)

(assert (=> d!1463594 m!5503609))

(assert (=> d!1463594 m!5502797))

(declare-fun m!5503611 () Bool)

(assert (=> b!4642211 m!5503611))

(declare-fun m!5503613 () Bool)

(assert (=> bm!324063 m!5503613))

(assert (=> b!4642213 m!5503601))

(assert (=> b!4641862 d!1463594))

(declare-fun bs!1034189 () Bool)

(declare-fun d!1463596 () Bool)

(assert (= bs!1034189 (and d!1463596 b!4641868)))

(declare-fun lambda!196539 () Int)

(assert (=> bs!1034189 (= lambda!196539 lambda!196449)))

(declare-fun bs!1034190 () Bool)

(assert (= bs!1034190 (and d!1463596 d!1463532)))

(assert (=> bs!1034190 (= lambda!196539 lambda!196476)))

(declare-fun bs!1034191 () Bool)

(assert (= bs!1034191 (and d!1463596 d!1463562)))

(assert (=> bs!1034191 (= lambda!196539 lambda!196520)))

(declare-fun bs!1034192 () Bool)

(assert (= bs!1034192 (and d!1463596 d!1463432)))

(assert (=> bs!1034192 (= lambda!196539 lambda!196455)))

(declare-fun bs!1034193 () Bool)

(assert (= bs!1034193 (and d!1463596 d!1463470)))

(assert (=> bs!1034193 (= lambda!196539 lambda!196457)))

(declare-fun bs!1034194 () Bool)

(assert (= bs!1034194 (and d!1463596 d!1463488)))

(assert (=> bs!1034194 (= lambda!196539 lambda!196460)))

(declare-fun bs!1034195 () Bool)

(assert (= bs!1034195 (and d!1463596 d!1463492)))

(assert (=> bs!1034195 (= lambda!196539 lambda!196467)))

(declare-fun bs!1034196 () Bool)

(assert (= bs!1034196 (and d!1463596 d!1463584)))

(assert (=> bs!1034196 (= lambda!196539 lambda!196529)))

(declare-fun bs!1034197 () Bool)

(assert (= bs!1034197 (and d!1463596 d!1463466)))

(assert (=> bs!1034197 (= lambda!196539 lambda!196456)))

(declare-fun lt!1805626 () ListMap!4467)

(assert (=> d!1463596 (invariantList!1265 (toList!5143 lt!1805626))))

(declare-fun e!2895910 () ListMap!4467)

(assert (=> d!1463596 (= lt!1805626 e!2895910)))

(declare-fun c!794347 () Bool)

(assert (=> d!1463596 (= c!794347 (is-Cons!51783 Nil!51783))))

(assert (=> d!1463596 (forall!10949 Nil!51783 lambda!196539)))

(assert (=> d!1463596 (= (extractMap!1655 Nil!51783) lt!1805626)))

(declare-fun b!4642215 () Bool)

(assert (=> b!4642215 (= e!2895910 (addToMapMapFromBucket!1058 (_2!29716 (h!57895 Nil!51783)) (extractMap!1655 (t!358993 Nil!51783))))))

(declare-fun b!4642216 () Bool)

(assert (=> b!4642216 (= e!2895910 (ListMap!4468 Nil!51782))))

(assert (= (and d!1463596 c!794347) b!4642215))

(assert (= (and d!1463596 (not c!794347)) b!4642216))

(declare-fun m!5503615 () Bool)

(assert (=> d!1463596 m!5503615))

(declare-fun m!5503617 () Bool)

(assert (=> d!1463596 m!5503617))

(declare-fun m!5503619 () Bool)

(assert (=> b!4642215 m!5503619))

(assert (=> b!4642215 m!5503619))

(declare-fun m!5503621 () Bool)

(assert (=> b!4642215 m!5503621))

(assert (=> b!4641862 d!1463596))

(declare-fun d!1463598 () Bool)

(declare-fun hash!3699 (Hashable!5996 K!13148) (_ BitVec 64))

(assert (=> d!1463598 (= (hash!3694 hashF!1389 key!4968) (hash!3699 hashF!1389 key!4968))))

(declare-fun bs!1034198 () Bool)

(assert (= bs!1034198 d!1463598))

(declare-fun m!5503623 () Bool)

(assert (=> bs!1034198 m!5503623))

(assert (=> b!4641861 d!1463598))

(declare-fun e!2895913 () Bool)

(declare-fun b!4642221 () Bool)

(declare-fun tp!1342922 () Bool)

(assert (=> b!4642221 (= e!2895913 (and tp_is_empty!29689 tp_is_empty!29691 tp!1342922))))

(assert (=> b!4641858 (= tp!1342913 e!2895913)))

(assert (= (and b!4641858 (is-Cons!51782 (t!358992 oldBucket!40))) b!4642221))

(declare-fun tp!1342923 () Bool)

(declare-fun b!4642222 () Bool)

(declare-fun e!2895914 () Bool)

(assert (=> b!4642222 (= e!2895914 (and tp_is_empty!29689 tp_is_empty!29691 tp!1342923))))

(assert (=> b!4641872 (= tp!1342912 e!2895914)))

(assert (= (and b!4641872 (is-Cons!51782 (t!358992 newBucket!224))) b!4642222))

(declare-fun b_lambda!171081 () Bool)

(assert (= b_lambda!171077 (or b!4641868 b_lambda!171081)))

(declare-fun bs!1034199 () Bool)

(declare-fun d!1463600 () Bool)

(assert (= bs!1034199 (and d!1463600 b!4641868)))

(assert (=> bs!1034199 (= (dynLambda!21549 lambda!196449 lt!1805136) (noDuplicateKeys!1599 (_2!29716 lt!1805136)))))

(declare-fun m!5503625 () Bool)

(assert (=> bs!1034199 m!5503625))

(assert (=> d!1463504 d!1463600))

(push 1)

(assert (not d!1463506))

(assert (not b!4642006))

(assert (not b!4642186))

(assert (not bm!324052))

(assert (not d!1463572))

(assert (not b!4642187))

(assert (not b!4641968))

(assert (not bm!324060))

(assert (not d!1463482))

(assert (not d!1463512))

(assert (not b!4642003))

(assert (not b!4642197))

(assert (not d!1463574))

(assert (not d!1463578))

(assert (not d!1463442))

(assert (not d!1463476))

(assert (not b!4642171))

(assert (not b!4641945))

(assert (not d!1463568))

(assert (not b!4641984))

(assert (not b!4642076))

(assert (not d!1463434))

(assert (not d!1463532))

(assert (not d!1463486))

(assert (not b!4642172))

(assert (not b!4642173))

(assert (not b!4642195))

(assert (not b!4641948))

(assert (not b!4641947))

(assert (not d!1463570))

(assert (not b!4642075))

(assert (not d!1463456))

(assert (not b!4641956))

(assert (not b!4641988))

(assert (not bm!324057))

(assert tp_is_empty!29691)

(assert (not b!4642184))

(assert (not d!1463576))

(assert (not d!1463430))

(assert (not bm!324051))

(assert (not b!4642047))

(assert (not b!4642198))

(assert (not b_lambda!171081))

(assert (not b!4642193))

(assert (not b!4642053))

(assert (not bm!324054))

(assert (not b!4642074))

(assert (not d!1463590))

(assert (not b!4642194))

(assert (not b!4642005))

(assert (not d!1463510))

(assert (not d!1463564))

(assert (not d!1463562))

(assert (not d!1463594))

(assert (not bm!324058))

(assert (not d!1463492))

(assert (not b!4642192))

(assert (not b!4642164))

(assert (not b!4641985))

(assert (not d!1463470))

(assert (not d!1463596))

(assert (not b!4641983))

(assert (not b!4642079))

(assert (not b!4641986))

(assert (not b!4642175))

(assert (not b!4642170))

(assert (not bm!324048))

(assert (not b!4641994))

(assert (not bm!324059))

(assert (not b!4642015))

(assert (not b!4642176))

(assert (not d!1463480))

(assert (not b!4642168))

(assert (not b!4642199))

(assert (not d!1463536))

(assert (not b!4642161))

(assert (not b!4642210))

(assert (not d!1463504))

(assert (not d!1463484))

(assert (not b!4641949))

(assert (not b!4642221))

(assert (not bm!324050))

(assert (not bm!324062))

(assert (not b!4642200))

(assert (not b!4642181))

(assert (not d!1463460))

(assert (not b!4642004))

(assert (not d!1463464))

(assert (not bs!1034199))

(assert (not b!4642013))

(assert (not d!1463528))

(assert tp_is_empty!29689)

(assert (not b!4642021))

(assert (not b!4641976))

(assert (not d!1463440))

(assert (not b!4642041))

(assert (not b!4642190))

(assert (not b!4642042))

(assert (not b!4641993))

(assert (not b!4641943))

(assert (not b!4641944))

(assert (not b!4642045))

(assert (not b!4642177))

(assert (not d!1463448))

(assert (not d!1463586))

(assert (not b!4642002))

(assert (not bm!324053))

(assert (not d!1463524))

(assert (not d!1463458))

(assert (not b!4642182))

(assert (not b!4642163))

(assert (not d!1463432))

(assert (not b!4642180))

(assert (not d!1463588))

(assert (not d!1463522))

(assert (not bm!324055))

(assert (not bm!324061))

(assert (not b!4641950))

(assert (not bm!324049))

(assert (not b!4641992))

(assert (not d!1463488))

(assert (not d!1463516))

(assert (not b!4642189))

(assert (not b!4642179))

(assert (not d!1463598))

(assert (not d!1463466))

(assert (not d!1463454))

(assert (not bm!324063))

(assert (not bm!324041))

(assert (not b!4641987))

(assert (not b!4642212))

(assert (not b!4642191))

(assert (not b!4642185))

(assert (not b!4641996))

(assert (not d!1463584))

(assert (not d!1463444))

(assert (not b!4642222))

(assert (not b!4642204))

(assert (not d!1463514))

(assert (not b!4642208))

(assert (not d!1463462))

(assert (not b!4642039))

(assert (not b!4642040))

(assert (not b!4642215))

(assert (not b!4642211))

(assert (not d!1463592))

(assert (not d!1463582))

(assert (not d!1463478))

(assert (not bm!324056))

(assert (not b!4642072))

(assert (not b!4642213))

(assert (not b!4642162))

(assert (not d!1463566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

