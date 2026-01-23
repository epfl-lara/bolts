; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469944 () Bool)

(assert start!469944)

(declare-fun b!4663187 () Bool)

(declare-fun res!1961894 () Bool)

(declare-fun e!2909866 () Bool)

(assert (=> b!4663187 (=> (not res!1961894) (not e!2909866))))

(declare-datatypes ((K!13310 0))(
  ( (K!13311 (val!18919 Int)) )
))
(declare-datatypes ((V!13556 0))(
  ( (V!13557 (val!18920 Int)) )
))
(declare-datatypes ((tuple2!53102 0))(
  ( (tuple2!53103 (_1!29845 K!13310) (_2!29845 V!13556)) )
))
(declare-datatypes ((List!52088 0))(
  ( (Nil!51964) (Cons!51964 (h!58128 tuple2!53102) (t!359208 List!52088)) )
))
(declare-fun oldBucket!40 () List!52088)

(declare-fun key!4968 () K!13310)

(declare-fun newBucket!224 () List!52088)

(declare-fun removePairForKey!1287 (List!52088 K!13310) List!52088)

(assert (=> b!4663187 (= res!1961894 (= (removePairForKey!1287 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp_is_empty!29951 () Bool)

(declare-fun tp!1343558 () Bool)

(declare-fun b!4663188 () Bool)

(declare-fun e!2909861 () Bool)

(declare-fun tp_is_empty!29949 () Bool)

(assert (=> b!4663188 (= e!2909861 (and tp_is_empty!29949 tp_is_empty!29951 tp!1343558))))

(declare-fun b!4663189 () Bool)

(declare-fun e!2909863 () Bool)

(declare-fun e!2909867 () Bool)

(assert (=> b!4663189 (= e!2909863 e!2909867)))

(declare-fun res!1961889 () Bool)

(assert (=> b!4663189 (=> res!1961889 e!2909867)))

(declare-datatypes ((ListMap!4597 0))(
  ( (ListMap!4598 (toList!5257 List!52088)) )
))
(declare-fun lt!1824831 () ListMap!4597)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1824835 () List!52088)

(declare-fun eq!919 (ListMap!4597 ListMap!4597) Bool)

(declare-fun +!2004 (ListMap!4597 tuple2!53102) ListMap!4597)

(declare-datatypes ((tuple2!53104 0))(
  ( (tuple2!53105 (_1!29846 (_ BitVec 64)) (_2!29846 List!52088)) )
))
(declare-datatypes ((List!52089 0))(
  ( (Nil!51965) (Cons!51965 (h!58129 tuple2!53104) (t!359209 List!52089)) )
))
(declare-fun extractMap!1720 (List!52089) ListMap!4597)

(assert (=> b!4663189 (= res!1961889 (not (eq!919 lt!1824831 (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)) (h!58128 oldBucket!40)))))))

(declare-fun lt!1824819 () tuple2!53102)

(declare-fun lt!1824824 () List!52088)

(declare-fun addToMapMapFromBucket!1121 (List!52088 ListMap!4597) ListMap!4597)

(assert (=> b!4663189 (eq!919 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824819 lt!1824824) (ListMap!4598 Nil!51964)) (+!2004 (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964)) lt!1824819))))

(declare-datatypes ((Unit!119516 0))(
  ( (Unit!119517) )
))
(declare-fun lt!1824830 () Unit!119516)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!170 (tuple2!53102 List!52088 ListMap!4597) Unit!119516)

(assert (=> b!4663189 (= lt!1824830 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!170 lt!1824819 lt!1824824 (ListMap!4598 Nil!51964)))))

(declare-fun head!9742 (List!52088) tuple2!53102)

(assert (=> b!4663189 (= lt!1824819 (head!9742 newBucket!224))))

(declare-fun lt!1824825 () tuple2!53102)

(assert (=> b!4663189 (eq!919 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824825 lt!1824835) (ListMap!4598 Nil!51964)) (+!2004 (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964)) lt!1824825))))

(declare-fun lt!1824817 () Unit!119516)

(assert (=> b!4663189 (= lt!1824817 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!170 lt!1824825 lt!1824835 (ListMap!4598 Nil!51964)))))

(assert (=> b!4663189 (= lt!1824825 (head!9742 oldBucket!40))))

(declare-fun lt!1824818 () List!52089)

(declare-fun contains!15143 (ListMap!4597 K!13310) Bool)

(assert (=> b!4663189 (contains!15143 (extractMap!1720 lt!1824818) key!4968)))

(declare-datatypes ((Hashable!6061 0))(
  ( (HashableExt!6060 (__x!31764 Int)) )
))
(declare-fun hashF!1389 () Hashable!6061)

(declare-fun lt!1824822 () Unit!119516)

(declare-datatypes ((ListLongMap!3811 0))(
  ( (ListLongMap!3812 (toList!5258 List!52089)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!398 (ListLongMap!3811 K!13310 Hashable!6061) Unit!119516)

(assert (=> b!4663189 (= lt!1824822 (lemmaListContainsThenExtractedMapContains!398 (ListLongMap!3812 lt!1824818) key!4968 hashF!1389))))

(assert (=> b!4663189 (= lt!1824818 (Cons!51965 (tuple2!53105 hash!414 (t!359208 oldBucket!40)) Nil!51965))))

(declare-fun b!4663190 () Bool)

(declare-fun res!1961891 () Bool)

(assert (=> b!4663190 (=> (not res!1961891) (not e!2909866))))

(declare-fun allKeysSameHash!1518 (List!52088 (_ BitVec 64) Hashable!6061) Bool)

(assert (=> b!4663190 (= res!1961891 (allKeysSameHash!1518 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4663191 () Bool)

(declare-fun res!1961890 () Bool)

(declare-fun e!2909864 () Bool)

(assert (=> b!4663191 (=> (not res!1961890) (not e!2909864))))

(assert (=> b!4663191 (= res!1961890 (allKeysSameHash!1518 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4663192 () Bool)

(declare-fun e!2909869 () Bool)

(declare-fun lt!1824828 () ListMap!4597)

(assert (=> b!4663192 (= e!2909869 (= lt!1824828 (ListMap!4598 Nil!51964)))))

(declare-fun b!4663193 () Bool)

(declare-fun e!2909862 () Bool)

(assert (=> b!4663193 (= e!2909866 e!2909862)))

(declare-fun res!1961893 () Bool)

(assert (=> b!4663193 (=> (not res!1961893) (not e!2909862))))

(assert (=> b!4663193 (= res!1961893 (contains!15143 lt!1824831 key!4968))))

(declare-fun lt!1824827 () List!52089)

(assert (=> b!4663193 (= lt!1824831 (extractMap!1720 lt!1824827))))

(assert (=> b!4663193 (= lt!1824827 (Cons!51965 (tuple2!53105 hash!414 oldBucket!40) Nil!51965))))

(declare-fun b!4663194 () Bool)

(declare-fun e!2909865 () Bool)

(declare-fun tp!1343559 () Bool)

(assert (=> b!4663194 (= e!2909865 (and tp_is_empty!29949 tp_is_empty!29951 tp!1343559))))

(declare-fun b!4663195 () Bool)

(declare-fun res!1961883 () Bool)

(assert (=> b!4663195 (=> (not res!1961883) (not e!2909866))))

(declare-fun noDuplicateKeys!1664 (List!52088) Bool)

(assert (=> b!4663195 (= res!1961883 (noDuplicateKeys!1664 newBucket!224))))

(declare-fun b!4663196 () Bool)

(assert (=> b!4663196 (= e!2909867 (noDuplicateKeys!1664 (t!359208 oldBucket!40)))))

(declare-fun b!4663197 () Bool)

(assert (=> b!4663197 (= e!2909862 e!2909864)))

(declare-fun res!1961884 () Bool)

(assert (=> b!4663197 (=> (not res!1961884) (not e!2909864))))

(declare-fun lt!1824833 () (_ BitVec 64))

(assert (=> b!4663197 (= res!1961884 (= lt!1824833 hash!414))))

(declare-fun hash!3821 (Hashable!6061 K!13310) (_ BitVec 64))

(assert (=> b!4663197 (= lt!1824833 (hash!3821 hashF!1389 key!4968))))

(declare-fun b!4663198 () Bool)

(declare-fun e!2909870 () Bool)

(declare-fun e!2909868 () Bool)

(assert (=> b!4663198 (= e!2909870 e!2909868)))

(declare-fun res!1961892 () Bool)

(assert (=> b!4663198 (=> res!1961892 e!2909868)))

(declare-fun containsKey!2782 (List!52088 K!13310) Bool)

(assert (=> b!4663198 (= res!1961892 (not (containsKey!2782 (t!359208 oldBucket!40) key!4968)))))

(assert (=> b!4663198 (containsKey!2782 oldBucket!40 key!4968)))

(declare-fun lt!1824834 () Unit!119516)

(declare-fun lemmaGetPairDefinedThenContainsKey!142 (List!52088 K!13310 Hashable!6061) Unit!119516)

(assert (=> b!4663198 (= lt!1824834 (lemmaGetPairDefinedThenContainsKey!142 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1824832 () List!52088)

(declare-datatypes ((Option!11880 0))(
  ( (None!11879) (Some!11879 (v!46201 tuple2!53102)) )
))
(declare-fun isDefined!9145 (Option!11880) Bool)

(declare-fun getPair!392 (List!52088 K!13310) Option!11880)

(assert (=> b!4663198 (isDefined!9145 (getPair!392 lt!1824832 key!4968))))

(declare-fun lt!1824823 () Unit!119516)

(declare-fun lambda!200884 () Int)

(declare-fun lt!1824820 () tuple2!53104)

(declare-fun forallContained!3274 (List!52089 Int tuple2!53104) Unit!119516)

(assert (=> b!4663198 (= lt!1824823 (forallContained!3274 lt!1824827 lambda!200884 lt!1824820))))

(declare-fun contains!15144 (List!52089 tuple2!53104) Bool)

(assert (=> b!4663198 (contains!15144 lt!1824827 lt!1824820)))

(assert (=> b!4663198 (= lt!1824820 (tuple2!53105 lt!1824833 lt!1824832))))

(declare-fun lt!1824829 () ListLongMap!3811)

(declare-fun lt!1824826 () Unit!119516)

(declare-fun lemmaGetValueImpliesTupleContained!197 (ListLongMap!3811 (_ BitVec 64) List!52088) Unit!119516)

(assert (=> b!4663198 (= lt!1824826 (lemmaGetValueImpliesTupleContained!197 lt!1824829 lt!1824833 lt!1824832))))

(declare-fun apply!12267 (ListLongMap!3811 (_ BitVec 64)) List!52088)

(assert (=> b!4663198 (= lt!1824832 (apply!12267 lt!1824829 lt!1824833))))

(declare-fun contains!15145 (ListLongMap!3811 (_ BitVec 64)) Bool)

(assert (=> b!4663198 (contains!15145 lt!1824829 lt!1824833)))

(declare-fun lt!1824816 () Unit!119516)

(declare-fun lemmaInGenMapThenLongMapContainsHash!598 (ListLongMap!3811 K!13310 Hashable!6061) Unit!119516)

(assert (=> b!4663198 (= lt!1824816 (lemmaInGenMapThenLongMapContainsHash!598 lt!1824829 key!4968 hashF!1389))))

(declare-fun lt!1824821 () Unit!119516)

(declare-fun lemmaInGenMapThenGetPairDefined!188 (ListLongMap!3811 K!13310 Hashable!6061) Unit!119516)

(assert (=> b!4663198 (= lt!1824821 (lemmaInGenMapThenGetPairDefined!188 lt!1824829 key!4968 hashF!1389))))

(assert (=> b!4663198 (= lt!1824829 (ListLongMap!3812 lt!1824827))))

(declare-fun b!4663199 () Bool)

(assert (=> b!4663199 (= e!2909868 e!2909863)))

(declare-fun res!1961885 () Bool)

(assert (=> b!4663199 (=> res!1961885 e!2909863)))

(assert (=> b!4663199 (= res!1961885 (not (= (removePairForKey!1287 lt!1824835 key!4968) lt!1824824)))))

(declare-fun tail!8267 (List!52088) List!52088)

(assert (=> b!4663199 (= lt!1824824 (tail!8267 newBucket!224))))

(assert (=> b!4663199 (= lt!1824835 (tail!8267 oldBucket!40))))

(declare-fun res!1961881 () Bool)

(assert (=> start!469944 (=> (not res!1961881) (not e!2909866))))

(assert (=> start!469944 (= res!1961881 (noDuplicateKeys!1664 oldBucket!40))))

(assert (=> start!469944 e!2909866))

(assert (=> start!469944 true))

(assert (=> start!469944 e!2909861))

(assert (=> start!469944 tp_is_empty!29949))

(assert (=> start!469944 e!2909865))

(declare-fun b!4663200 () Bool)

(assert (=> b!4663200 (= e!2909864 (not e!2909870))))

(declare-fun res!1961882 () Bool)

(assert (=> b!4663200 (=> res!1961882 e!2909870)))

(get-info :version)

(assert (=> b!4663200 (= res!1961882 (or (and ((_ is Cons!51964) oldBucket!40) (= (_1!29845 (h!58128 oldBucket!40)) key!4968)) (not ((_ is Cons!51964) oldBucket!40)) (= (_1!29845 (h!58128 oldBucket!40)) key!4968)))))

(assert (=> b!4663200 e!2909869))

(declare-fun res!1961886 () Bool)

(assert (=> b!4663200 (=> (not res!1961886) (not e!2909869))))

(assert (=> b!4663200 (= res!1961886 (= lt!1824831 (addToMapMapFromBucket!1121 oldBucket!40 lt!1824828)))))

(assert (=> b!4663200 (= lt!1824828 (extractMap!1720 Nil!51965))))

(assert (=> b!4663200 true))

(declare-fun b!4663201 () Bool)

(declare-fun res!1961888 () Bool)

(assert (=> b!4663201 (=> res!1961888 e!2909863)))

(assert (=> b!4663201 (= res!1961888 (not (= (removePairForKey!1287 (t!359208 oldBucket!40) key!4968) lt!1824824)))))

(declare-fun b!4663202 () Bool)

(declare-fun res!1961887 () Bool)

(assert (=> b!4663202 (=> res!1961887 e!2909867)))

(assert (=> b!4663202 (= res!1961887 (not (eq!919 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965)) (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)) lt!1824819))))))

(assert (= (and start!469944 res!1961881) b!4663195))

(assert (= (and b!4663195 res!1961883) b!4663187))

(assert (= (and b!4663187 res!1961894) b!4663190))

(assert (= (and b!4663190 res!1961891) b!4663193))

(assert (= (and b!4663193 res!1961893) b!4663197))

(assert (= (and b!4663197 res!1961884) b!4663191))

(assert (= (and b!4663191 res!1961890) b!4663200))

(assert (= (and b!4663200 res!1961886) b!4663192))

(assert (= (and b!4663200 (not res!1961882)) b!4663198))

(assert (= (and b!4663198 (not res!1961892)) b!4663199))

(assert (= (and b!4663199 (not res!1961885)) b!4663201))

(assert (= (and b!4663201 (not res!1961888)) b!4663189))

(assert (= (and b!4663189 (not res!1961889)) b!4663202))

(assert (= (and b!4663202 (not res!1961887)) b!4663196))

(assert (= (and start!469944 ((_ is Cons!51964) oldBucket!40)) b!4663188))

(assert (= (and start!469944 ((_ is Cons!51964) newBucket!224)) b!4663194))

(declare-fun m!5547645 () Bool)

(assert (=> b!4663189 m!5547645))

(declare-fun m!5547647 () Bool)

(assert (=> b!4663189 m!5547647))

(declare-fun m!5547649 () Bool)

(assert (=> b!4663189 m!5547649))

(assert (=> b!4663189 m!5547647))

(declare-fun m!5547651 () Bool)

(assert (=> b!4663189 m!5547651))

(declare-fun m!5547653 () Bool)

(assert (=> b!4663189 m!5547653))

(declare-fun m!5547655 () Bool)

(assert (=> b!4663189 m!5547655))

(declare-fun m!5547657 () Bool)

(assert (=> b!4663189 m!5547657))

(declare-fun m!5547659 () Bool)

(assert (=> b!4663189 m!5547659))

(declare-fun m!5547661 () Bool)

(assert (=> b!4663189 m!5547661))

(declare-fun m!5547663 () Bool)

(assert (=> b!4663189 m!5547663))

(assert (=> b!4663189 m!5547653))

(declare-fun m!5547665 () Bool)

(assert (=> b!4663189 m!5547665))

(declare-fun m!5547667 () Bool)

(assert (=> b!4663189 m!5547667))

(declare-fun m!5547669 () Bool)

(assert (=> b!4663189 m!5547669))

(assert (=> b!4663189 m!5547649))

(assert (=> b!4663189 m!5547667))

(declare-fun m!5547671 () Bool)

(assert (=> b!4663189 m!5547671))

(declare-fun m!5547673 () Bool)

(assert (=> b!4663189 m!5547673))

(declare-fun m!5547675 () Bool)

(assert (=> b!4663189 m!5547675))

(declare-fun m!5547677 () Bool)

(assert (=> b!4663189 m!5547677))

(declare-fun m!5547679 () Bool)

(assert (=> b!4663189 m!5547679))

(assert (=> b!4663189 m!5547645))

(assert (=> b!4663189 m!5547655))

(assert (=> b!4663189 m!5547665))

(assert (=> b!4663189 m!5547663))

(assert (=> b!4663189 m!5547673))

(declare-fun m!5547681 () Bool)

(assert (=> b!4663201 m!5547681))

(declare-fun m!5547683 () Bool)

(assert (=> b!4663187 m!5547683))

(declare-fun m!5547685 () Bool)

(assert (=> b!4663197 m!5547685))

(declare-fun m!5547687 () Bool)

(assert (=> b!4663193 m!5547687))

(declare-fun m!5547689 () Bool)

(assert (=> b!4663193 m!5547689))

(declare-fun m!5547691 () Bool)

(assert (=> b!4663198 m!5547691))

(declare-fun m!5547693 () Bool)

(assert (=> b!4663198 m!5547693))

(declare-fun m!5547695 () Bool)

(assert (=> b!4663198 m!5547695))

(declare-fun m!5547697 () Bool)

(assert (=> b!4663198 m!5547697))

(declare-fun m!5547699 () Bool)

(assert (=> b!4663198 m!5547699))

(declare-fun m!5547701 () Bool)

(assert (=> b!4663198 m!5547701))

(declare-fun m!5547703 () Bool)

(assert (=> b!4663198 m!5547703))

(declare-fun m!5547705 () Bool)

(assert (=> b!4663198 m!5547705))

(declare-fun m!5547707 () Bool)

(assert (=> b!4663198 m!5547707))

(declare-fun m!5547709 () Bool)

(assert (=> b!4663198 m!5547709))

(declare-fun m!5547711 () Bool)

(assert (=> b!4663198 m!5547711))

(assert (=> b!4663198 m!5547691))

(declare-fun m!5547713 () Bool)

(assert (=> b!4663198 m!5547713))

(declare-fun m!5547715 () Bool)

(assert (=> b!4663199 m!5547715))

(declare-fun m!5547717 () Bool)

(assert (=> b!4663199 m!5547717))

(declare-fun m!5547719 () Bool)

(assert (=> b!4663199 m!5547719))

(declare-fun m!5547721 () Bool)

(assert (=> b!4663195 m!5547721))

(declare-fun m!5547723 () Bool)

(assert (=> b!4663191 m!5547723))

(declare-fun m!5547725 () Bool)

(assert (=> start!469944 m!5547725))

(declare-fun m!5547727 () Bool)

(assert (=> b!4663190 m!5547727))

(declare-fun m!5547729 () Bool)

(assert (=> b!4663196 m!5547729))

(declare-fun m!5547731 () Bool)

(assert (=> b!4663202 m!5547731))

(declare-fun m!5547733 () Bool)

(assert (=> b!4663202 m!5547733))

(assert (=> b!4663202 m!5547733))

(declare-fun m!5547735 () Bool)

(assert (=> b!4663202 m!5547735))

(assert (=> b!4663202 m!5547731))

(assert (=> b!4663202 m!5547735))

(declare-fun m!5547737 () Bool)

(assert (=> b!4663202 m!5547737))

(declare-fun m!5547739 () Bool)

(assert (=> b!4663200 m!5547739))

(declare-fun m!5547741 () Bool)

(assert (=> b!4663200 m!5547741))

(check-sat (not b!4663197) (not b!4663198) tp_is_empty!29951 tp_is_empty!29949 (not b!4663195) (not b!4663201) (not b!4663188) (not b!4663199) (not b!4663196) (not b!4663202) (not b!4663190) (not b!4663187) (not b!4663193) (not b!4663189) (not b!4663194) (not b!4663191) (not b!4663200) (not start!469944))
(check-sat)
(get-model)

(declare-fun b!4663318 () Bool)

(assert (=> b!4663318 true))

(declare-fun bs!1069209 () Bool)

(declare-fun b!4663315 () Bool)

(assert (= bs!1069209 (and b!4663315 b!4663318)))

(declare-fun lambda!200953 () Int)

(declare-fun lambda!200952 () Int)

(assert (=> bs!1069209 (= lambda!200953 lambda!200952)))

(assert (=> b!4663315 true))

(declare-fun lt!1824990 () ListMap!4597)

(declare-fun lambda!200954 () Int)

(assert (=> bs!1069209 (= (= lt!1824990 lt!1824828) (= lambda!200954 lambda!200952))))

(assert (=> b!4663315 (= (= lt!1824990 lt!1824828) (= lambda!200954 lambda!200953))))

(assert (=> b!4663315 true))

(declare-fun bs!1069210 () Bool)

(declare-fun d!1481344 () Bool)

(assert (= bs!1069210 (and d!1481344 b!4663318)))

(declare-fun lt!1824982 () ListMap!4597)

(declare-fun lambda!200957 () Int)

(assert (=> bs!1069210 (= (= lt!1824982 lt!1824828) (= lambda!200957 lambda!200952))))

(declare-fun bs!1069211 () Bool)

(assert (= bs!1069211 (and d!1481344 b!4663315)))

(assert (=> bs!1069211 (= (= lt!1824982 lt!1824828) (= lambda!200957 lambda!200953))))

(assert (=> bs!1069211 (= (= lt!1824982 lt!1824990) (= lambda!200957 lambda!200954))))

(assert (=> d!1481344 true))

(declare-fun e!2909939 () ListMap!4597)

(assert (=> b!4663315 (= e!2909939 lt!1824990)))

(declare-fun lt!1824987 () ListMap!4597)

(assert (=> b!4663315 (= lt!1824987 (+!2004 lt!1824828 (h!58128 oldBucket!40)))))

(assert (=> b!4663315 (= lt!1824990 (addToMapMapFromBucket!1121 (t!359208 oldBucket!40) (+!2004 lt!1824828 (h!58128 oldBucket!40))))))

(declare-fun lt!1824996 () Unit!119516)

(declare-fun call!325810 () Unit!119516)

(assert (=> b!4663315 (= lt!1824996 call!325810)))

(declare-fun forall!11075 (List!52088 Int) Bool)

(assert (=> b!4663315 (forall!11075 (toList!5257 lt!1824828) lambda!200953)))

(declare-fun lt!1824999 () Unit!119516)

(assert (=> b!4663315 (= lt!1824999 lt!1824996)))

(assert (=> b!4663315 (forall!11075 (toList!5257 lt!1824987) lambda!200954)))

(declare-fun lt!1824980 () Unit!119516)

(declare-fun Unit!119531 () Unit!119516)

(assert (=> b!4663315 (= lt!1824980 Unit!119531)))

(declare-fun call!325809 () Bool)

(assert (=> b!4663315 call!325809))

(declare-fun lt!1824994 () Unit!119516)

(declare-fun Unit!119532 () Unit!119516)

(assert (=> b!4663315 (= lt!1824994 Unit!119532)))

(declare-fun lt!1824981 () Unit!119516)

(declare-fun Unit!119533 () Unit!119516)

(assert (=> b!4663315 (= lt!1824981 Unit!119533)))

(declare-fun lt!1824995 () Unit!119516)

(declare-fun forallContained!3276 (List!52088 Int tuple2!53102) Unit!119516)

(assert (=> b!4663315 (= lt!1824995 (forallContained!3276 (toList!5257 lt!1824987) lambda!200954 (h!58128 oldBucket!40)))))

(assert (=> b!4663315 (contains!15143 lt!1824987 (_1!29845 (h!58128 oldBucket!40)))))

(declare-fun lt!1824997 () Unit!119516)

(declare-fun Unit!119534 () Unit!119516)

(assert (=> b!4663315 (= lt!1824997 Unit!119534)))

(assert (=> b!4663315 (contains!15143 lt!1824990 (_1!29845 (h!58128 oldBucket!40)))))

(declare-fun lt!1824985 () Unit!119516)

(declare-fun Unit!119535 () Unit!119516)

(assert (=> b!4663315 (= lt!1824985 Unit!119535)))

(assert (=> b!4663315 (forall!11075 oldBucket!40 lambda!200954)))

(declare-fun lt!1824988 () Unit!119516)

(declare-fun Unit!119536 () Unit!119516)

(assert (=> b!4663315 (= lt!1824988 Unit!119536)))

(assert (=> b!4663315 (forall!11075 (toList!5257 lt!1824987) lambda!200954)))

(declare-fun lt!1824984 () Unit!119516)

(declare-fun Unit!119537 () Unit!119516)

(assert (=> b!4663315 (= lt!1824984 Unit!119537)))

(declare-fun lt!1824992 () Unit!119516)

(declare-fun Unit!119538 () Unit!119516)

(assert (=> b!4663315 (= lt!1824992 Unit!119538)))

(declare-fun lt!1824986 () Unit!119516)

(declare-fun addForallContainsKeyThenBeforeAdding!617 (ListMap!4597 ListMap!4597 K!13310 V!13556) Unit!119516)

(assert (=> b!4663315 (= lt!1824986 (addForallContainsKeyThenBeforeAdding!617 lt!1824828 lt!1824990 (_1!29845 (h!58128 oldBucket!40)) (_2!29845 (h!58128 oldBucket!40))))))

(assert (=> b!4663315 (forall!11075 (toList!5257 lt!1824828) lambda!200954)))

(declare-fun lt!1824989 () Unit!119516)

(assert (=> b!4663315 (= lt!1824989 lt!1824986)))

(assert (=> b!4663315 (forall!11075 (toList!5257 lt!1824828) lambda!200954)))

(declare-fun lt!1824983 () Unit!119516)

(declare-fun Unit!119539 () Unit!119516)

(assert (=> b!4663315 (= lt!1824983 Unit!119539)))

(declare-fun res!1961939 () Bool)

(assert (=> b!4663315 (= res!1961939 (forall!11075 oldBucket!40 lambda!200954))))

(declare-fun e!2909937 () Bool)

(assert (=> b!4663315 (=> (not res!1961939) (not e!2909937))))

(assert (=> b!4663315 e!2909937))

(declare-fun lt!1824998 () Unit!119516)

(declare-fun Unit!119540 () Unit!119516)

(assert (=> b!4663315 (= lt!1824998 Unit!119540)))

(declare-fun bm!325803 () Bool)

(declare-fun c!798263 () Bool)

(assert (=> bm!325803 (= call!325809 (forall!11075 (ite c!798263 (toList!5257 lt!1824828) (t!359208 oldBucket!40)) (ite c!798263 lambda!200952 lambda!200954)))))

(declare-fun call!325808 () Bool)

(declare-fun bm!325804 () Bool)

(assert (=> bm!325804 (= call!325808 (forall!11075 (toList!5257 lt!1824828) (ite c!798263 lambda!200952 lambda!200954)))))

(declare-fun bm!325805 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!618 (ListMap!4597) Unit!119516)

(assert (=> bm!325805 (= call!325810 (lemmaContainsAllItsOwnKeys!618 lt!1824828))))

(declare-fun b!4663316 () Bool)

(assert (=> b!4663316 (= e!2909937 call!325808)))

(declare-fun e!2909938 () Bool)

(assert (=> d!1481344 e!2909938))

(declare-fun res!1961938 () Bool)

(assert (=> d!1481344 (=> (not res!1961938) (not e!2909938))))

(assert (=> d!1481344 (= res!1961938 (forall!11075 oldBucket!40 lambda!200957))))

(assert (=> d!1481344 (= lt!1824982 e!2909939)))

(assert (=> d!1481344 (= c!798263 ((_ is Nil!51964) oldBucket!40))))

(assert (=> d!1481344 (noDuplicateKeys!1664 oldBucket!40)))

(assert (=> d!1481344 (= (addToMapMapFromBucket!1121 oldBucket!40 lt!1824828) lt!1824982)))

(declare-fun b!4663317 () Bool)

(declare-fun invariantList!1318 (List!52088) Bool)

(assert (=> b!4663317 (= e!2909938 (invariantList!1318 (toList!5257 lt!1824982)))))

(assert (=> b!4663318 (= e!2909939 lt!1824828)))

(declare-fun lt!1824979 () Unit!119516)

(assert (=> b!4663318 (= lt!1824979 call!325810)))

(assert (=> b!4663318 call!325808))

(declare-fun lt!1824993 () Unit!119516)

(assert (=> b!4663318 (= lt!1824993 lt!1824979)))

(assert (=> b!4663318 call!325809))

(declare-fun lt!1824991 () Unit!119516)

(declare-fun Unit!119541 () Unit!119516)

(assert (=> b!4663318 (= lt!1824991 Unit!119541)))

(declare-fun b!4663319 () Bool)

(declare-fun res!1961937 () Bool)

(assert (=> b!4663319 (=> (not res!1961937) (not e!2909938))))

(assert (=> b!4663319 (= res!1961937 (forall!11075 (toList!5257 lt!1824828) lambda!200957))))

(assert (= (and d!1481344 c!798263) b!4663318))

(assert (= (and d!1481344 (not c!798263)) b!4663315))

(assert (= (and b!4663315 res!1961939) b!4663316))

(assert (= (or b!4663318 b!4663315) bm!325805))

(assert (= (or b!4663318 b!4663315) bm!325803))

(assert (= (or b!4663318 b!4663316) bm!325804))

(assert (= (and d!1481344 res!1961938) b!4663319))

(assert (= (and b!4663319 res!1961937) b!4663317))

(declare-fun m!5547845 () Bool)

(assert (=> bm!325805 m!5547845))

(declare-fun m!5547847 () Bool)

(assert (=> b!4663317 m!5547847))

(declare-fun m!5547849 () Bool)

(assert (=> bm!325804 m!5547849))

(declare-fun m!5547851 () Bool)

(assert (=> d!1481344 m!5547851))

(assert (=> d!1481344 m!5547725))

(declare-fun m!5547853 () Bool)

(assert (=> b!4663319 m!5547853))

(declare-fun m!5547855 () Bool)

(assert (=> bm!325803 m!5547855))

(declare-fun m!5547857 () Bool)

(assert (=> b!4663315 m!5547857))

(declare-fun m!5547859 () Bool)

(assert (=> b!4663315 m!5547859))

(declare-fun m!5547861 () Bool)

(assert (=> b!4663315 m!5547861))

(assert (=> b!4663315 m!5547857))

(declare-fun m!5547863 () Bool)

(assert (=> b!4663315 m!5547863))

(declare-fun m!5547865 () Bool)

(assert (=> b!4663315 m!5547865))

(assert (=> b!4663315 m!5547861))

(declare-fun m!5547867 () Bool)

(assert (=> b!4663315 m!5547867))

(declare-fun m!5547869 () Bool)

(assert (=> b!4663315 m!5547869))

(assert (=> b!4663315 m!5547869))

(declare-fun m!5547871 () Bool)

(assert (=> b!4663315 m!5547871))

(assert (=> b!4663315 m!5547867))

(declare-fun m!5547873 () Bool)

(assert (=> b!4663315 m!5547873))

(declare-fun m!5547875 () Bool)

(assert (=> b!4663315 m!5547875))

(assert (=> b!4663200 d!1481344))

(declare-fun bs!1069216 () Bool)

(declare-fun d!1481358 () Bool)

(assert (= bs!1069216 (and d!1481358 b!4663198)))

(declare-fun lambda!200965 () Int)

(assert (=> bs!1069216 (= lambda!200965 lambda!200884)))

(declare-fun lt!1825028 () ListMap!4597)

(assert (=> d!1481358 (invariantList!1318 (toList!5257 lt!1825028))))

(declare-fun e!2909958 () ListMap!4597)

(assert (=> d!1481358 (= lt!1825028 e!2909958)))

(declare-fun c!798266 () Bool)

(assert (=> d!1481358 (= c!798266 ((_ is Cons!51965) Nil!51965))))

(declare-fun forall!11076 (List!52089 Int) Bool)

(assert (=> d!1481358 (forall!11076 Nil!51965 lambda!200965)))

(assert (=> d!1481358 (= (extractMap!1720 Nil!51965) lt!1825028)))

(declare-fun b!4663348 () Bool)

(assert (=> b!4663348 (= e!2909958 (addToMapMapFromBucket!1121 (_2!29846 (h!58129 Nil!51965)) (extractMap!1720 (t!359209 Nil!51965))))))

(declare-fun b!4663349 () Bool)

(assert (=> b!4663349 (= e!2909958 (ListMap!4598 Nil!51964))))

(assert (= (and d!1481358 c!798266) b!4663348))

(assert (= (and d!1481358 (not c!798266)) b!4663349))

(declare-fun m!5547917 () Bool)

(assert (=> d!1481358 m!5547917))

(declare-fun m!5547919 () Bool)

(assert (=> d!1481358 m!5547919))

(declare-fun m!5547921 () Bool)

(assert (=> b!4663348 m!5547921))

(assert (=> b!4663348 m!5547921))

(declare-fun m!5547923 () Bool)

(assert (=> b!4663348 m!5547923))

(assert (=> b!4663200 d!1481358))

(declare-fun bs!1069217 () Bool)

(declare-fun b!4663355 () Bool)

(assert (= bs!1069217 (and b!4663355 b!4663318)))

(declare-fun lambda!200966 () Int)

(assert (=> bs!1069217 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200966 lambda!200952))))

(declare-fun bs!1069218 () Bool)

(assert (= bs!1069218 (and b!4663355 b!4663315)))

(assert (=> bs!1069218 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200966 lambda!200953))))

(assert (=> bs!1069218 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!200966 lambda!200954))))

(declare-fun bs!1069219 () Bool)

(assert (= bs!1069219 (and b!4663355 d!1481344)))

(assert (=> bs!1069219 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!200966 lambda!200957))))

(assert (=> b!4663355 true))

(declare-fun bs!1069220 () Bool)

(declare-fun b!4663352 () Bool)

(assert (= bs!1069220 (and b!4663352 b!4663315)))

(declare-fun lambda!200967 () Int)

(assert (=> bs!1069220 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200967 lambda!200953))))

(declare-fun bs!1069221 () Bool)

(assert (= bs!1069221 (and b!4663352 b!4663318)))

(assert (=> bs!1069221 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200967 lambda!200952))))

(declare-fun bs!1069222 () Bool)

(assert (= bs!1069222 (and b!4663352 d!1481344)))

(assert (=> bs!1069222 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!200967 lambda!200957))))

(assert (=> bs!1069220 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!200967 lambda!200954))))

(declare-fun bs!1069223 () Bool)

(assert (= bs!1069223 (and b!4663352 b!4663355)))

(assert (=> bs!1069223 (= lambda!200967 lambda!200966)))

(assert (=> b!4663352 true))

(declare-fun lambda!200968 () Int)

(declare-fun lt!1825041 () ListMap!4597)

(assert (=> bs!1069220 (= (= lt!1825041 lt!1824828) (= lambda!200968 lambda!200953))))

(assert (=> bs!1069221 (= (= lt!1825041 lt!1824828) (= lambda!200968 lambda!200952))))

(assert (=> b!4663352 (= (= lt!1825041 (ListMap!4598 Nil!51964)) (= lambda!200968 lambda!200967))))

(assert (=> bs!1069222 (= (= lt!1825041 lt!1824982) (= lambda!200968 lambda!200957))))

(assert (=> bs!1069220 (= (= lt!1825041 lt!1824990) (= lambda!200968 lambda!200954))))

(assert (=> bs!1069223 (= (= lt!1825041 (ListMap!4598 Nil!51964)) (= lambda!200968 lambda!200966))))

(assert (=> b!4663352 true))

(declare-fun bs!1069225 () Bool)

(declare-fun d!1481368 () Bool)

(assert (= bs!1069225 (and d!1481368 b!4663315)))

(declare-fun lambda!200969 () Int)

(declare-fun lt!1825033 () ListMap!4597)

(assert (=> bs!1069225 (= (= lt!1825033 lt!1824828) (= lambda!200969 lambda!200953))))

(declare-fun bs!1069226 () Bool)

(assert (= bs!1069226 (and d!1481368 b!4663318)))

(assert (=> bs!1069226 (= (= lt!1825033 lt!1824828) (= lambda!200969 lambda!200952))))

(declare-fun bs!1069228 () Bool)

(assert (= bs!1069228 (and d!1481368 b!4663352)))

(assert (=> bs!1069228 (= (= lt!1825033 (ListMap!4598 Nil!51964)) (= lambda!200969 lambda!200967))))

(assert (=> bs!1069228 (= (= lt!1825033 lt!1825041) (= lambda!200969 lambda!200968))))

(declare-fun bs!1069229 () Bool)

(assert (= bs!1069229 (and d!1481368 d!1481344)))

(assert (=> bs!1069229 (= (= lt!1825033 lt!1824982) (= lambda!200969 lambda!200957))))

(assert (=> bs!1069225 (= (= lt!1825033 lt!1824990) (= lambda!200969 lambda!200954))))

(declare-fun bs!1069230 () Bool)

(assert (= bs!1069230 (and d!1481368 b!4663355)))

(assert (=> bs!1069230 (= (= lt!1825033 (ListMap!4598 Nil!51964)) (= lambda!200969 lambda!200966))))

(assert (=> d!1481368 true))

(declare-fun e!2909963 () ListMap!4597)

(assert (=> b!4663352 (= e!2909963 lt!1825041)))

(declare-fun lt!1825038 () ListMap!4597)

(assert (=> b!4663352 (= lt!1825038 (+!2004 (ListMap!4598 Nil!51964) (h!58128 (Cons!51964 lt!1824819 lt!1824824))))))

(assert (=> b!4663352 (= lt!1825041 (addToMapMapFromBucket!1121 (t!359208 (Cons!51964 lt!1824819 lt!1824824)) (+!2004 (ListMap!4598 Nil!51964) (h!58128 (Cons!51964 lt!1824819 lt!1824824)))))))

(declare-fun lt!1825047 () Unit!119516)

(declare-fun call!325813 () Unit!119516)

(assert (=> b!4663352 (= lt!1825047 call!325813)))

(assert (=> b!4663352 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200967)))

(declare-fun lt!1825050 () Unit!119516)

(assert (=> b!4663352 (= lt!1825050 lt!1825047)))

(assert (=> b!4663352 (forall!11075 (toList!5257 lt!1825038) lambda!200968)))

(declare-fun lt!1825031 () Unit!119516)

(declare-fun Unit!119543 () Unit!119516)

(assert (=> b!4663352 (= lt!1825031 Unit!119543)))

(declare-fun call!325812 () Bool)

(assert (=> b!4663352 call!325812))

(declare-fun lt!1825045 () Unit!119516)

(declare-fun Unit!119544 () Unit!119516)

(assert (=> b!4663352 (= lt!1825045 Unit!119544)))

(declare-fun lt!1825032 () Unit!119516)

(declare-fun Unit!119545 () Unit!119516)

(assert (=> b!4663352 (= lt!1825032 Unit!119545)))

(declare-fun lt!1825046 () Unit!119516)

(assert (=> b!4663352 (= lt!1825046 (forallContained!3276 (toList!5257 lt!1825038) lambda!200968 (h!58128 (Cons!51964 lt!1824819 lt!1824824))))))

(assert (=> b!4663352 (contains!15143 lt!1825038 (_1!29845 (h!58128 (Cons!51964 lt!1824819 lt!1824824))))))

(declare-fun lt!1825048 () Unit!119516)

(declare-fun Unit!119546 () Unit!119516)

(assert (=> b!4663352 (= lt!1825048 Unit!119546)))

(assert (=> b!4663352 (contains!15143 lt!1825041 (_1!29845 (h!58128 (Cons!51964 lt!1824819 lt!1824824))))))

(declare-fun lt!1825036 () Unit!119516)

(declare-fun Unit!119547 () Unit!119516)

(assert (=> b!4663352 (= lt!1825036 Unit!119547)))

(assert (=> b!4663352 (forall!11075 (Cons!51964 lt!1824819 lt!1824824) lambda!200968)))

(declare-fun lt!1825039 () Unit!119516)

(declare-fun Unit!119548 () Unit!119516)

(assert (=> b!4663352 (= lt!1825039 Unit!119548)))

(assert (=> b!4663352 (forall!11075 (toList!5257 lt!1825038) lambda!200968)))

(declare-fun lt!1825035 () Unit!119516)

(declare-fun Unit!119549 () Unit!119516)

(assert (=> b!4663352 (= lt!1825035 Unit!119549)))

(declare-fun lt!1825043 () Unit!119516)

(declare-fun Unit!119550 () Unit!119516)

(assert (=> b!4663352 (= lt!1825043 Unit!119550)))

(declare-fun lt!1825037 () Unit!119516)

(assert (=> b!4663352 (= lt!1825037 (addForallContainsKeyThenBeforeAdding!617 (ListMap!4598 Nil!51964) lt!1825041 (_1!29845 (h!58128 (Cons!51964 lt!1824819 lt!1824824))) (_2!29845 (h!58128 (Cons!51964 lt!1824819 lt!1824824)))))))

(assert (=> b!4663352 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200968)))

(declare-fun lt!1825040 () Unit!119516)

(assert (=> b!4663352 (= lt!1825040 lt!1825037)))

(assert (=> b!4663352 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200968)))

(declare-fun lt!1825034 () Unit!119516)

(declare-fun Unit!119551 () Unit!119516)

(assert (=> b!4663352 (= lt!1825034 Unit!119551)))

(declare-fun res!1961966 () Bool)

(assert (=> b!4663352 (= res!1961966 (forall!11075 (Cons!51964 lt!1824819 lt!1824824) lambda!200968))))

(declare-fun e!2909961 () Bool)

(assert (=> b!4663352 (=> (not res!1961966) (not e!2909961))))

(assert (=> b!4663352 e!2909961))

(declare-fun lt!1825049 () Unit!119516)

(declare-fun Unit!119552 () Unit!119516)

(assert (=> b!4663352 (= lt!1825049 Unit!119552)))

(declare-fun c!798267 () Bool)

(declare-fun bm!325806 () Bool)

(assert (=> bm!325806 (= call!325812 (forall!11075 (ite c!798267 (toList!5257 (ListMap!4598 Nil!51964)) (t!359208 (Cons!51964 lt!1824819 lt!1824824))) (ite c!798267 lambda!200966 lambda!200968)))))

(declare-fun call!325811 () Bool)

(declare-fun bm!325807 () Bool)

(assert (=> bm!325807 (= call!325811 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) (ite c!798267 lambda!200966 lambda!200968)))))

(declare-fun bm!325808 () Bool)

(assert (=> bm!325808 (= call!325813 (lemmaContainsAllItsOwnKeys!618 (ListMap!4598 Nil!51964)))))

(declare-fun b!4663353 () Bool)

(assert (=> b!4663353 (= e!2909961 call!325811)))

(declare-fun e!2909962 () Bool)

(assert (=> d!1481368 e!2909962))

(declare-fun res!1961965 () Bool)

(assert (=> d!1481368 (=> (not res!1961965) (not e!2909962))))

(assert (=> d!1481368 (= res!1961965 (forall!11075 (Cons!51964 lt!1824819 lt!1824824) lambda!200969))))

(assert (=> d!1481368 (= lt!1825033 e!2909963)))

(assert (=> d!1481368 (= c!798267 ((_ is Nil!51964) (Cons!51964 lt!1824819 lt!1824824)))))

(assert (=> d!1481368 (noDuplicateKeys!1664 (Cons!51964 lt!1824819 lt!1824824))))

(assert (=> d!1481368 (= (addToMapMapFromBucket!1121 (Cons!51964 lt!1824819 lt!1824824) (ListMap!4598 Nil!51964)) lt!1825033)))

(declare-fun b!4663354 () Bool)

(assert (=> b!4663354 (= e!2909962 (invariantList!1318 (toList!5257 lt!1825033)))))

(assert (=> b!4663355 (= e!2909963 (ListMap!4598 Nil!51964))))

(declare-fun lt!1825030 () Unit!119516)

(assert (=> b!4663355 (= lt!1825030 call!325813)))

(assert (=> b!4663355 call!325811))

(declare-fun lt!1825044 () Unit!119516)

(assert (=> b!4663355 (= lt!1825044 lt!1825030)))

(assert (=> b!4663355 call!325812))

(declare-fun lt!1825042 () Unit!119516)

(declare-fun Unit!119553 () Unit!119516)

(assert (=> b!4663355 (= lt!1825042 Unit!119553)))

(declare-fun b!4663356 () Bool)

(declare-fun res!1961964 () Bool)

(assert (=> b!4663356 (=> (not res!1961964) (not e!2909962))))

(assert (=> b!4663356 (= res!1961964 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200969))))

(assert (= (and d!1481368 c!798267) b!4663355))

(assert (= (and d!1481368 (not c!798267)) b!4663352))

(assert (= (and b!4663352 res!1961966) b!4663353))

(assert (= (or b!4663355 b!4663352) bm!325808))

(assert (= (or b!4663355 b!4663352) bm!325806))

(assert (= (or b!4663355 b!4663353) bm!325807))

(assert (= (and d!1481368 res!1961965) b!4663356))

(assert (= (and b!4663356 res!1961964) b!4663354))

(declare-fun m!5547931 () Bool)

(assert (=> bm!325808 m!5547931))

(declare-fun m!5547933 () Bool)

(assert (=> b!4663354 m!5547933))

(declare-fun m!5547935 () Bool)

(assert (=> bm!325807 m!5547935))

(declare-fun m!5547937 () Bool)

(assert (=> d!1481368 m!5547937))

(declare-fun m!5547939 () Bool)

(assert (=> d!1481368 m!5547939))

(declare-fun m!5547941 () Bool)

(assert (=> b!4663356 m!5547941))

(declare-fun m!5547943 () Bool)

(assert (=> bm!325806 m!5547943))

(declare-fun m!5547945 () Bool)

(assert (=> b!4663352 m!5547945))

(declare-fun m!5547947 () Bool)

(assert (=> b!4663352 m!5547947))

(declare-fun m!5547949 () Bool)

(assert (=> b!4663352 m!5547949))

(assert (=> b!4663352 m!5547945))

(declare-fun m!5547951 () Bool)

(assert (=> b!4663352 m!5547951))

(declare-fun m!5547953 () Bool)

(assert (=> b!4663352 m!5547953))

(assert (=> b!4663352 m!5547949))

(declare-fun m!5547955 () Bool)

(assert (=> b!4663352 m!5547955))

(declare-fun m!5547957 () Bool)

(assert (=> b!4663352 m!5547957))

(assert (=> b!4663352 m!5547957))

(declare-fun m!5547959 () Bool)

(assert (=> b!4663352 m!5547959))

(assert (=> b!4663352 m!5547955))

(declare-fun m!5547961 () Bool)

(assert (=> b!4663352 m!5547961))

(declare-fun m!5547963 () Bool)

(assert (=> b!4663352 m!5547963))

(assert (=> b!4663189 d!1481368))

(declare-fun bs!1069231 () Bool)

(declare-fun d!1481376 () Bool)

(assert (= bs!1069231 (and d!1481376 b!4663198)))

(declare-fun lambda!200970 () Int)

(assert (=> bs!1069231 (= lambda!200970 lambda!200884)))

(declare-fun bs!1069232 () Bool)

(assert (= bs!1069232 (and d!1481376 d!1481358)))

(assert (=> bs!1069232 (= lambda!200970 lambda!200965)))

(declare-fun lt!1825054 () ListMap!4597)

(assert (=> d!1481376 (invariantList!1318 (toList!5257 lt!1825054))))

(declare-fun e!2909966 () ListMap!4597)

(assert (=> d!1481376 (= lt!1825054 e!2909966)))

(declare-fun c!798268 () Bool)

(assert (=> d!1481376 (= c!798268 ((_ is Cons!51965) lt!1824818))))

(assert (=> d!1481376 (forall!11076 lt!1824818 lambda!200970)))

(assert (=> d!1481376 (= (extractMap!1720 lt!1824818) lt!1825054)))

(declare-fun b!4663360 () Bool)

(assert (=> b!4663360 (= e!2909966 (addToMapMapFromBucket!1121 (_2!29846 (h!58129 lt!1824818)) (extractMap!1720 (t!359209 lt!1824818))))))

(declare-fun b!4663361 () Bool)

(assert (=> b!4663361 (= e!2909966 (ListMap!4598 Nil!51964))))

(assert (= (and d!1481376 c!798268) b!4663360))

(assert (= (and d!1481376 (not c!798268)) b!4663361))

(declare-fun m!5547965 () Bool)

(assert (=> d!1481376 m!5547965))

(declare-fun m!5547967 () Bool)

(assert (=> d!1481376 m!5547967))

(declare-fun m!5547969 () Bool)

(assert (=> b!4663360 m!5547969))

(assert (=> b!4663360 m!5547969))

(declare-fun m!5547971 () Bool)

(assert (=> b!4663360 m!5547971))

(assert (=> b!4663189 d!1481376))

(declare-fun d!1481378 () Bool)

(assert (=> d!1481378 (= (head!9742 oldBucket!40) (h!58128 oldBucket!40))))

(assert (=> b!4663189 d!1481378))

(declare-fun bs!1069233 () Bool)

(declare-fun b!4663365 () Bool)

(assert (= bs!1069233 (and b!4663365 b!4663315)))

(declare-fun lambda!200971 () Int)

(assert (=> bs!1069233 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200971 lambda!200953))))

(declare-fun bs!1069234 () Bool)

(assert (= bs!1069234 (and b!4663365 d!1481368)))

(assert (=> bs!1069234 (= (= (ListMap!4598 Nil!51964) lt!1825033) (= lambda!200971 lambda!200969))))

(declare-fun bs!1069235 () Bool)

(assert (= bs!1069235 (and b!4663365 b!4663318)))

(assert (=> bs!1069235 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200971 lambda!200952))))

(declare-fun bs!1069236 () Bool)

(assert (= bs!1069236 (and b!4663365 b!4663352)))

(assert (=> bs!1069236 (= lambda!200971 lambda!200967)))

(assert (=> bs!1069236 (= (= (ListMap!4598 Nil!51964) lt!1825041) (= lambda!200971 lambda!200968))))

(declare-fun bs!1069237 () Bool)

(assert (= bs!1069237 (and b!4663365 d!1481344)))

(assert (=> bs!1069237 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!200971 lambda!200957))))

(assert (=> bs!1069233 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!200971 lambda!200954))))

(declare-fun bs!1069238 () Bool)

(assert (= bs!1069238 (and b!4663365 b!4663355)))

(assert (=> bs!1069238 (= lambda!200971 lambda!200966)))

(assert (=> b!4663365 true))

(declare-fun bs!1069239 () Bool)

(declare-fun b!4663362 () Bool)

(assert (= bs!1069239 (and b!4663362 b!4663315)))

(declare-fun lambda!200972 () Int)

(assert (=> bs!1069239 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200972 lambda!200953))))

(declare-fun bs!1069240 () Bool)

(assert (= bs!1069240 (and b!4663362 d!1481368)))

(assert (=> bs!1069240 (= (= (ListMap!4598 Nil!51964) lt!1825033) (= lambda!200972 lambda!200969))))

(declare-fun bs!1069241 () Bool)

(assert (= bs!1069241 (and b!4663362 b!4663318)))

(assert (=> bs!1069241 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200972 lambda!200952))))

(declare-fun bs!1069242 () Bool)

(assert (= bs!1069242 (and b!4663362 b!4663352)))

(assert (=> bs!1069242 (= lambda!200972 lambda!200967)))

(declare-fun bs!1069243 () Bool)

(assert (= bs!1069243 (and b!4663362 b!4663365)))

(assert (=> bs!1069243 (= lambda!200972 lambda!200971)))

(assert (=> bs!1069242 (= (= (ListMap!4598 Nil!51964) lt!1825041) (= lambda!200972 lambda!200968))))

(declare-fun bs!1069244 () Bool)

(assert (= bs!1069244 (and b!4663362 d!1481344)))

(assert (=> bs!1069244 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!200972 lambda!200957))))

(assert (=> bs!1069239 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!200972 lambda!200954))))

(declare-fun bs!1069245 () Bool)

(assert (= bs!1069245 (and b!4663362 b!4663355)))

(assert (=> bs!1069245 (= lambda!200972 lambda!200966)))

(assert (=> b!4663362 true))

(declare-fun lambda!200973 () Int)

(declare-fun lt!1825066 () ListMap!4597)

(assert (=> bs!1069239 (= (= lt!1825066 lt!1824828) (= lambda!200973 lambda!200953))))

(assert (=> bs!1069240 (= (= lt!1825066 lt!1825033) (= lambda!200973 lambda!200969))))

(assert (=> bs!1069241 (= (= lt!1825066 lt!1824828) (= lambda!200973 lambda!200952))))

(assert (=> bs!1069242 (= (= lt!1825066 (ListMap!4598 Nil!51964)) (= lambda!200973 lambda!200967))))

(assert (=> bs!1069243 (= (= lt!1825066 (ListMap!4598 Nil!51964)) (= lambda!200973 lambda!200971))))

(assert (=> bs!1069242 (= (= lt!1825066 lt!1825041) (= lambda!200973 lambda!200968))))

(assert (=> b!4663362 (= (= lt!1825066 (ListMap!4598 Nil!51964)) (= lambda!200973 lambda!200972))))

(assert (=> bs!1069244 (= (= lt!1825066 lt!1824982) (= lambda!200973 lambda!200957))))

(assert (=> bs!1069239 (= (= lt!1825066 lt!1824990) (= lambda!200973 lambda!200954))))

(assert (=> bs!1069245 (= (= lt!1825066 (ListMap!4598 Nil!51964)) (= lambda!200973 lambda!200966))))

(assert (=> b!4663362 true))

(declare-fun bs!1069246 () Bool)

(declare-fun d!1481380 () Bool)

(assert (= bs!1069246 (and d!1481380 b!4663315)))

(declare-fun lambda!200974 () Int)

(declare-fun lt!1825058 () ListMap!4597)

(assert (=> bs!1069246 (= (= lt!1825058 lt!1824828) (= lambda!200974 lambda!200953))))

(declare-fun bs!1069247 () Bool)

(assert (= bs!1069247 (and d!1481380 b!4663318)))

(assert (=> bs!1069247 (= (= lt!1825058 lt!1824828) (= lambda!200974 lambda!200952))))

(declare-fun bs!1069248 () Bool)

(assert (= bs!1069248 (and d!1481380 b!4663352)))

(assert (=> bs!1069248 (= (= lt!1825058 (ListMap!4598 Nil!51964)) (= lambda!200974 lambda!200967))))

(declare-fun bs!1069249 () Bool)

(assert (= bs!1069249 (and d!1481380 b!4663365)))

(assert (=> bs!1069249 (= (= lt!1825058 (ListMap!4598 Nil!51964)) (= lambda!200974 lambda!200971))))

(assert (=> bs!1069248 (= (= lt!1825058 lt!1825041) (= lambda!200974 lambda!200968))))

(declare-fun bs!1069250 () Bool)

(assert (= bs!1069250 (and d!1481380 b!4663362)))

(assert (=> bs!1069250 (= (= lt!1825058 (ListMap!4598 Nil!51964)) (= lambda!200974 lambda!200972))))

(declare-fun bs!1069251 () Bool)

(assert (= bs!1069251 (and d!1481380 d!1481344)))

(assert (=> bs!1069251 (= (= lt!1825058 lt!1824982) (= lambda!200974 lambda!200957))))

(assert (=> bs!1069246 (= (= lt!1825058 lt!1824990) (= lambda!200974 lambda!200954))))

(declare-fun bs!1069252 () Bool)

(assert (= bs!1069252 (and d!1481380 b!4663355)))

(assert (=> bs!1069252 (= (= lt!1825058 (ListMap!4598 Nil!51964)) (= lambda!200974 lambda!200966))))

(declare-fun bs!1069253 () Bool)

(assert (= bs!1069253 (and d!1481380 d!1481368)))

(assert (=> bs!1069253 (= (= lt!1825058 lt!1825033) (= lambda!200974 lambda!200969))))

(assert (=> bs!1069250 (= (= lt!1825058 lt!1825066) (= lambda!200974 lambda!200973))))

(assert (=> d!1481380 true))

(declare-fun e!2909969 () ListMap!4597)

(assert (=> b!4663362 (= e!2909969 lt!1825066)))

(declare-fun lt!1825063 () ListMap!4597)

(assert (=> b!4663362 (= lt!1825063 (+!2004 (ListMap!4598 Nil!51964) (h!58128 lt!1824824)))))

(assert (=> b!4663362 (= lt!1825066 (addToMapMapFromBucket!1121 (t!359208 lt!1824824) (+!2004 (ListMap!4598 Nil!51964) (h!58128 lt!1824824))))))

(declare-fun lt!1825072 () Unit!119516)

(declare-fun call!325816 () Unit!119516)

(assert (=> b!4663362 (= lt!1825072 call!325816)))

(assert (=> b!4663362 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200972)))

(declare-fun lt!1825075 () Unit!119516)

(assert (=> b!4663362 (= lt!1825075 lt!1825072)))

(assert (=> b!4663362 (forall!11075 (toList!5257 lt!1825063) lambda!200973)))

(declare-fun lt!1825056 () Unit!119516)

(declare-fun Unit!119554 () Unit!119516)

(assert (=> b!4663362 (= lt!1825056 Unit!119554)))

(declare-fun call!325815 () Bool)

(assert (=> b!4663362 call!325815))

(declare-fun lt!1825070 () Unit!119516)

(declare-fun Unit!119555 () Unit!119516)

(assert (=> b!4663362 (= lt!1825070 Unit!119555)))

(declare-fun lt!1825057 () Unit!119516)

(declare-fun Unit!119556 () Unit!119516)

(assert (=> b!4663362 (= lt!1825057 Unit!119556)))

(declare-fun lt!1825071 () Unit!119516)

(assert (=> b!4663362 (= lt!1825071 (forallContained!3276 (toList!5257 lt!1825063) lambda!200973 (h!58128 lt!1824824)))))

(assert (=> b!4663362 (contains!15143 lt!1825063 (_1!29845 (h!58128 lt!1824824)))))

(declare-fun lt!1825073 () Unit!119516)

(declare-fun Unit!119557 () Unit!119516)

(assert (=> b!4663362 (= lt!1825073 Unit!119557)))

(assert (=> b!4663362 (contains!15143 lt!1825066 (_1!29845 (h!58128 lt!1824824)))))

(declare-fun lt!1825061 () Unit!119516)

(declare-fun Unit!119558 () Unit!119516)

(assert (=> b!4663362 (= lt!1825061 Unit!119558)))

(assert (=> b!4663362 (forall!11075 lt!1824824 lambda!200973)))

(declare-fun lt!1825064 () Unit!119516)

(declare-fun Unit!119559 () Unit!119516)

(assert (=> b!4663362 (= lt!1825064 Unit!119559)))

(assert (=> b!4663362 (forall!11075 (toList!5257 lt!1825063) lambda!200973)))

(declare-fun lt!1825060 () Unit!119516)

(declare-fun Unit!119560 () Unit!119516)

(assert (=> b!4663362 (= lt!1825060 Unit!119560)))

(declare-fun lt!1825068 () Unit!119516)

(declare-fun Unit!119561 () Unit!119516)

(assert (=> b!4663362 (= lt!1825068 Unit!119561)))

(declare-fun lt!1825062 () Unit!119516)

(assert (=> b!4663362 (= lt!1825062 (addForallContainsKeyThenBeforeAdding!617 (ListMap!4598 Nil!51964) lt!1825066 (_1!29845 (h!58128 lt!1824824)) (_2!29845 (h!58128 lt!1824824))))))

(assert (=> b!4663362 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200973)))

(declare-fun lt!1825065 () Unit!119516)

(assert (=> b!4663362 (= lt!1825065 lt!1825062)))

(assert (=> b!4663362 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200973)))

(declare-fun lt!1825059 () Unit!119516)

(declare-fun Unit!119563 () Unit!119516)

(assert (=> b!4663362 (= lt!1825059 Unit!119563)))

(declare-fun res!1961971 () Bool)

(assert (=> b!4663362 (= res!1961971 (forall!11075 lt!1824824 lambda!200973))))

(declare-fun e!2909967 () Bool)

(assert (=> b!4663362 (=> (not res!1961971) (not e!2909967))))

(assert (=> b!4663362 e!2909967))

(declare-fun lt!1825074 () Unit!119516)

(declare-fun Unit!119564 () Unit!119516)

(assert (=> b!4663362 (= lt!1825074 Unit!119564)))

(declare-fun c!798269 () Bool)

(declare-fun bm!325809 () Bool)

(assert (=> bm!325809 (= call!325815 (forall!11075 (ite c!798269 (toList!5257 (ListMap!4598 Nil!51964)) (t!359208 lt!1824824)) (ite c!798269 lambda!200971 lambda!200973)))))

(declare-fun bm!325810 () Bool)

(declare-fun call!325814 () Bool)

(assert (=> bm!325810 (= call!325814 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) (ite c!798269 lambda!200971 lambda!200973)))))

(declare-fun bm!325811 () Bool)

(assert (=> bm!325811 (= call!325816 (lemmaContainsAllItsOwnKeys!618 (ListMap!4598 Nil!51964)))))

(declare-fun b!4663363 () Bool)

(assert (=> b!4663363 (= e!2909967 call!325814)))

(declare-fun e!2909968 () Bool)

(assert (=> d!1481380 e!2909968))

(declare-fun res!1961970 () Bool)

(assert (=> d!1481380 (=> (not res!1961970) (not e!2909968))))

(assert (=> d!1481380 (= res!1961970 (forall!11075 lt!1824824 lambda!200974))))

(assert (=> d!1481380 (= lt!1825058 e!2909969)))

(assert (=> d!1481380 (= c!798269 ((_ is Nil!51964) lt!1824824))))

(assert (=> d!1481380 (noDuplicateKeys!1664 lt!1824824)))

(assert (=> d!1481380 (= (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964)) lt!1825058)))

(declare-fun b!4663364 () Bool)

(assert (=> b!4663364 (= e!2909968 (invariantList!1318 (toList!5257 lt!1825058)))))

(assert (=> b!4663365 (= e!2909969 (ListMap!4598 Nil!51964))))

(declare-fun lt!1825055 () Unit!119516)

(assert (=> b!4663365 (= lt!1825055 call!325816)))

(assert (=> b!4663365 call!325814))

(declare-fun lt!1825069 () Unit!119516)

(assert (=> b!4663365 (= lt!1825069 lt!1825055)))

(assert (=> b!4663365 call!325815))

(declare-fun lt!1825067 () Unit!119516)

(declare-fun Unit!119568 () Unit!119516)

(assert (=> b!4663365 (= lt!1825067 Unit!119568)))

(declare-fun b!4663366 () Bool)

(declare-fun res!1961969 () Bool)

(assert (=> b!4663366 (=> (not res!1961969) (not e!2909968))))

(assert (=> b!4663366 (= res!1961969 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200974))))

(assert (= (and d!1481380 c!798269) b!4663365))

(assert (= (and d!1481380 (not c!798269)) b!4663362))

(assert (= (and b!4663362 res!1961971) b!4663363))

(assert (= (or b!4663365 b!4663362) bm!325811))

(assert (= (or b!4663365 b!4663362) bm!325809))

(assert (= (or b!4663365 b!4663363) bm!325810))

(assert (= (and d!1481380 res!1961970) b!4663366))

(assert (= (and b!4663366 res!1961969) b!4663364))

(assert (=> bm!325811 m!5547931))

(declare-fun m!5547985 () Bool)

(assert (=> b!4663364 m!5547985))

(declare-fun m!5547987 () Bool)

(assert (=> bm!325810 m!5547987))

(declare-fun m!5547989 () Bool)

(assert (=> d!1481380 m!5547989))

(declare-fun m!5547991 () Bool)

(assert (=> d!1481380 m!5547991))

(declare-fun m!5547993 () Bool)

(assert (=> b!4663366 m!5547993))

(declare-fun m!5547995 () Bool)

(assert (=> bm!325809 m!5547995))

(declare-fun m!5547997 () Bool)

(assert (=> b!4663362 m!5547997))

(declare-fun m!5547999 () Bool)

(assert (=> b!4663362 m!5547999))

(declare-fun m!5548001 () Bool)

(assert (=> b!4663362 m!5548001))

(assert (=> b!4663362 m!5547997))

(declare-fun m!5548003 () Bool)

(assert (=> b!4663362 m!5548003))

(declare-fun m!5548005 () Bool)

(assert (=> b!4663362 m!5548005))

(assert (=> b!4663362 m!5548001))

(declare-fun m!5548007 () Bool)

(assert (=> b!4663362 m!5548007))

(declare-fun m!5548009 () Bool)

(assert (=> b!4663362 m!5548009))

(assert (=> b!4663362 m!5548009))

(declare-fun m!5548011 () Bool)

(assert (=> b!4663362 m!5548011))

(assert (=> b!4663362 m!5548007))

(declare-fun m!5548013 () Bool)

(assert (=> b!4663362 m!5548013))

(declare-fun m!5548015 () Bool)

(assert (=> b!4663362 m!5548015))

(assert (=> b!4663189 d!1481380))

(declare-fun d!1481386 () Bool)

(assert (=> d!1481386 (= (head!9742 newBucket!224) (h!58128 newBucket!224))))

(assert (=> b!4663189 d!1481386))

(declare-fun bs!1069265 () Bool)

(declare-fun d!1481388 () Bool)

(assert (= bs!1069265 (and d!1481388 b!4663198)))

(declare-fun lambda!200981 () Int)

(assert (=> bs!1069265 (= lambda!200981 lambda!200884)))

(declare-fun bs!1069266 () Bool)

(assert (= bs!1069266 (and d!1481388 d!1481358)))

(assert (=> bs!1069266 (= lambda!200981 lambda!200965)))

(declare-fun bs!1069267 () Bool)

(assert (= bs!1069267 (and d!1481388 d!1481376)))

(assert (=> bs!1069267 (= lambda!200981 lambda!200970)))

(assert (=> d!1481388 (contains!15143 (extractMap!1720 (toList!5258 (ListLongMap!3812 lt!1824818))) key!4968)))

(declare-fun lt!1825097 () Unit!119516)

(declare-fun choose!32174 (ListLongMap!3811 K!13310 Hashable!6061) Unit!119516)

(assert (=> d!1481388 (= lt!1825097 (choose!32174 (ListLongMap!3812 lt!1824818) key!4968 hashF!1389))))

(assert (=> d!1481388 (forall!11076 (toList!5258 (ListLongMap!3812 lt!1824818)) lambda!200981)))

(assert (=> d!1481388 (= (lemmaListContainsThenExtractedMapContains!398 (ListLongMap!3812 lt!1824818) key!4968 hashF!1389) lt!1825097)))

(declare-fun bs!1069268 () Bool)

(assert (= bs!1069268 d!1481388))

(declare-fun m!5548033 () Bool)

(assert (=> bs!1069268 m!5548033))

(assert (=> bs!1069268 m!5548033))

(declare-fun m!5548035 () Bool)

(assert (=> bs!1069268 m!5548035))

(declare-fun m!5548037 () Bool)

(assert (=> bs!1069268 m!5548037))

(declare-fun m!5548039 () Bool)

(assert (=> bs!1069268 m!5548039))

(assert (=> b!4663189 d!1481388))

(declare-fun d!1481396 () Bool)

(assert (=> d!1481396 (eq!919 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824825 lt!1824835) (ListMap!4598 Nil!51964)) (+!2004 (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964)) lt!1824825))))

(declare-fun lt!1825138 () Unit!119516)

(declare-fun choose!32175 (tuple2!53102 List!52088 ListMap!4597) Unit!119516)

(assert (=> d!1481396 (= lt!1825138 (choose!32175 lt!1824825 lt!1824835 (ListMap!4598 Nil!51964)))))

(assert (=> d!1481396 (noDuplicateKeys!1664 lt!1824835)))

(assert (=> d!1481396 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!170 lt!1824825 lt!1824835 (ListMap!4598 Nil!51964)) lt!1825138)))

(declare-fun bs!1069286 () Bool)

(assert (= bs!1069286 d!1481396))

(assert (=> bs!1069286 m!5547653))

(assert (=> bs!1069286 m!5547655))

(assert (=> bs!1069286 m!5547657))

(declare-fun m!5548081 () Bool)

(assert (=> bs!1069286 m!5548081))

(declare-fun m!5548083 () Bool)

(assert (=> bs!1069286 m!5548083))

(assert (=> bs!1069286 m!5547645))

(assert (=> bs!1069286 m!5547655))

(assert (=> bs!1069286 m!5547653))

(assert (=> bs!1069286 m!5547645))

(assert (=> b!4663189 d!1481396))

(declare-fun bs!1069287 () Bool)

(declare-fun b!4663399 () Bool)

(assert (= bs!1069287 (and b!4663399 b!4663315)))

(declare-fun lambda!200986 () Int)

(assert (=> bs!1069287 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200986 lambda!200953))))

(declare-fun bs!1069289 () Bool)

(assert (= bs!1069289 (and b!4663399 b!4663318)))

(assert (=> bs!1069289 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200986 lambda!200952))))

(declare-fun bs!1069291 () Bool)

(assert (= bs!1069291 (and b!4663399 b!4663352)))

(assert (=> bs!1069291 (= lambda!200986 lambda!200967)))

(declare-fun bs!1069293 () Bool)

(assert (= bs!1069293 (and b!4663399 d!1481380)))

(assert (=> bs!1069293 (= (= (ListMap!4598 Nil!51964) lt!1825058) (= lambda!200986 lambda!200974))))

(declare-fun bs!1069294 () Bool)

(assert (= bs!1069294 (and b!4663399 b!4663365)))

(assert (=> bs!1069294 (= lambda!200986 lambda!200971)))

(assert (=> bs!1069291 (= (= (ListMap!4598 Nil!51964) lt!1825041) (= lambda!200986 lambda!200968))))

(declare-fun bs!1069297 () Bool)

(assert (= bs!1069297 (and b!4663399 b!4663362)))

(assert (=> bs!1069297 (= lambda!200986 lambda!200972)))

(declare-fun bs!1069299 () Bool)

(assert (= bs!1069299 (and b!4663399 d!1481344)))

(assert (=> bs!1069299 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!200986 lambda!200957))))

(assert (=> bs!1069287 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!200986 lambda!200954))))

(declare-fun bs!1069300 () Bool)

(assert (= bs!1069300 (and b!4663399 b!4663355)))

(assert (=> bs!1069300 (= lambda!200986 lambda!200966)))

(declare-fun bs!1069301 () Bool)

(assert (= bs!1069301 (and b!4663399 d!1481368)))

(assert (=> bs!1069301 (= (= (ListMap!4598 Nil!51964) lt!1825033) (= lambda!200986 lambda!200969))))

(assert (=> bs!1069297 (= (= (ListMap!4598 Nil!51964) lt!1825066) (= lambda!200986 lambda!200973))))

(assert (=> b!4663399 true))

(declare-fun bs!1069302 () Bool)

(declare-fun b!4663396 () Bool)

(assert (= bs!1069302 (and b!4663396 b!4663315)))

(declare-fun lambda!200988 () Int)

(assert (=> bs!1069302 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200988 lambda!200953))))

(declare-fun bs!1069303 () Bool)

(assert (= bs!1069303 (and b!4663396 b!4663318)))

(assert (=> bs!1069303 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!200988 lambda!200952))))

(declare-fun bs!1069304 () Bool)

(assert (= bs!1069304 (and b!4663396 b!4663352)))

(assert (=> bs!1069304 (= lambda!200988 lambda!200967)))

(declare-fun bs!1069305 () Bool)

(assert (= bs!1069305 (and b!4663396 d!1481380)))

(assert (=> bs!1069305 (= (= (ListMap!4598 Nil!51964) lt!1825058) (= lambda!200988 lambda!200974))))

(assert (=> bs!1069304 (= (= (ListMap!4598 Nil!51964) lt!1825041) (= lambda!200988 lambda!200968))))

(declare-fun bs!1069306 () Bool)

(assert (= bs!1069306 (and b!4663396 b!4663362)))

(assert (=> bs!1069306 (= lambda!200988 lambda!200972)))

(declare-fun bs!1069307 () Bool)

(assert (= bs!1069307 (and b!4663396 d!1481344)))

(assert (=> bs!1069307 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!200988 lambda!200957))))

(assert (=> bs!1069302 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!200988 lambda!200954))))

(declare-fun bs!1069308 () Bool)

(assert (= bs!1069308 (and b!4663396 b!4663355)))

(assert (=> bs!1069308 (= lambda!200988 lambda!200966)))

(declare-fun bs!1069309 () Bool)

(assert (= bs!1069309 (and b!4663396 d!1481368)))

(assert (=> bs!1069309 (= (= (ListMap!4598 Nil!51964) lt!1825033) (= lambda!200988 lambda!200969))))

(assert (=> bs!1069306 (= (= (ListMap!4598 Nil!51964) lt!1825066) (= lambda!200988 lambda!200973))))

(declare-fun bs!1069310 () Bool)

(assert (= bs!1069310 (and b!4663396 b!4663399)))

(assert (=> bs!1069310 (= lambda!200988 lambda!200986)))

(declare-fun bs!1069311 () Bool)

(assert (= bs!1069311 (and b!4663396 b!4663365)))

(assert (=> bs!1069311 (= lambda!200988 lambda!200971)))

(assert (=> b!4663396 true))

(declare-fun lambda!200989 () Int)

(declare-fun lt!1825150 () ListMap!4597)

(assert (=> bs!1069302 (= (= lt!1825150 lt!1824828) (= lambda!200989 lambda!200953))))

(assert (=> bs!1069303 (= (= lt!1825150 lt!1824828) (= lambda!200989 lambda!200952))))

(assert (=> bs!1069304 (= (= lt!1825150 (ListMap!4598 Nil!51964)) (= lambda!200989 lambda!200967))))

(assert (=> bs!1069305 (= (= lt!1825150 lt!1825058) (= lambda!200989 lambda!200974))))

(assert (=> bs!1069304 (= (= lt!1825150 lt!1825041) (= lambda!200989 lambda!200968))))

(assert (=> bs!1069306 (= (= lt!1825150 (ListMap!4598 Nil!51964)) (= lambda!200989 lambda!200972))))

(assert (=> b!4663396 (= (= lt!1825150 (ListMap!4598 Nil!51964)) (= lambda!200989 lambda!200988))))

(assert (=> bs!1069307 (= (= lt!1825150 lt!1824982) (= lambda!200989 lambda!200957))))

(assert (=> bs!1069302 (= (= lt!1825150 lt!1824990) (= lambda!200989 lambda!200954))))

(assert (=> bs!1069308 (= (= lt!1825150 (ListMap!4598 Nil!51964)) (= lambda!200989 lambda!200966))))

(assert (=> bs!1069309 (= (= lt!1825150 lt!1825033) (= lambda!200989 lambda!200969))))

(assert (=> bs!1069306 (= (= lt!1825150 lt!1825066) (= lambda!200989 lambda!200973))))

(assert (=> bs!1069310 (= (= lt!1825150 (ListMap!4598 Nil!51964)) (= lambda!200989 lambda!200986))))

(assert (=> bs!1069311 (= (= lt!1825150 (ListMap!4598 Nil!51964)) (= lambda!200989 lambda!200971))))

(assert (=> b!4663396 true))

(declare-fun bs!1069312 () Bool)

(declare-fun d!1481408 () Bool)

(assert (= bs!1069312 (and d!1481408 b!4663315)))

(declare-fun lt!1825142 () ListMap!4597)

(declare-fun lambda!200990 () Int)

(assert (=> bs!1069312 (= (= lt!1825142 lt!1824828) (= lambda!200990 lambda!200953))))

(declare-fun bs!1069313 () Bool)

(assert (= bs!1069313 (and d!1481408 b!4663318)))

(assert (=> bs!1069313 (= (= lt!1825142 lt!1824828) (= lambda!200990 lambda!200952))))

(declare-fun bs!1069314 () Bool)

(assert (= bs!1069314 (and d!1481408 b!4663396)))

(assert (=> bs!1069314 (= (= lt!1825142 lt!1825150) (= lambda!200990 lambda!200989))))

(declare-fun bs!1069315 () Bool)

(assert (= bs!1069315 (and d!1481408 b!4663352)))

(assert (=> bs!1069315 (= (= lt!1825142 (ListMap!4598 Nil!51964)) (= lambda!200990 lambda!200967))))

(declare-fun bs!1069316 () Bool)

(assert (= bs!1069316 (and d!1481408 d!1481380)))

(assert (=> bs!1069316 (= (= lt!1825142 lt!1825058) (= lambda!200990 lambda!200974))))

(assert (=> bs!1069315 (= (= lt!1825142 lt!1825041) (= lambda!200990 lambda!200968))))

(declare-fun bs!1069317 () Bool)

(assert (= bs!1069317 (and d!1481408 b!4663362)))

(assert (=> bs!1069317 (= (= lt!1825142 (ListMap!4598 Nil!51964)) (= lambda!200990 lambda!200972))))

(assert (=> bs!1069314 (= (= lt!1825142 (ListMap!4598 Nil!51964)) (= lambda!200990 lambda!200988))))

(declare-fun bs!1069318 () Bool)

(assert (= bs!1069318 (and d!1481408 d!1481344)))

(assert (=> bs!1069318 (= (= lt!1825142 lt!1824982) (= lambda!200990 lambda!200957))))

(assert (=> bs!1069312 (= (= lt!1825142 lt!1824990) (= lambda!200990 lambda!200954))))

(declare-fun bs!1069319 () Bool)

(assert (= bs!1069319 (and d!1481408 b!4663355)))

(assert (=> bs!1069319 (= (= lt!1825142 (ListMap!4598 Nil!51964)) (= lambda!200990 lambda!200966))))

(declare-fun bs!1069320 () Bool)

(assert (= bs!1069320 (and d!1481408 d!1481368)))

(assert (=> bs!1069320 (= (= lt!1825142 lt!1825033) (= lambda!200990 lambda!200969))))

(assert (=> bs!1069317 (= (= lt!1825142 lt!1825066) (= lambda!200990 lambda!200973))))

(declare-fun bs!1069321 () Bool)

(assert (= bs!1069321 (and d!1481408 b!4663399)))

(assert (=> bs!1069321 (= (= lt!1825142 (ListMap!4598 Nil!51964)) (= lambda!200990 lambda!200986))))

(declare-fun bs!1069322 () Bool)

(assert (= bs!1069322 (and d!1481408 b!4663365)))

(assert (=> bs!1069322 (= (= lt!1825142 (ListMap!4598 Nil!51964)) (= lambda!200990 lambda!200971))))

(assert (=> d!1481408 true))

(declare-fun e!2909990 () ListMap!4597)

(assert (=> b!4663396 (= e!2909990 lt!1825150)))

(declare-fun lt!1825147 () ListMap!4597)

(assert (=> b!4663396 (= lt!1825147 (+!2004 (ListMap!4598 Nil!51964) (h!58128 (Cons!51964 lt!1824825 lt!1824835))))))

(assert (=> b!4663396 (= lt!1825150 (addToMapMapFromBucket!1121 (t!359208 (Cons!51964 lt!1824825 lt!1824835)) (+!2004 (ListMap!4598 Nil!51964) (h!58128 (Cons!51964 lt!1824825 lt!1824835)))))))

(declare-fun lt!1825156 () Unit!119516)

(declare-fun call!325822 () Unit!119516)

(assert (=> b!4663396 (= lt!1825156 call!325822)))

(assert (=> b!4663396 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200988)))

(declare-fun lt!1825159 () Unit!119516)

(assert (=> b!4663396 (= lt!1825159 lt!1825156)))

(assert (=> b!4663396 (forall!11075 (toList!5257 lt!1825147) lambda!200989)))

(declare-fun lt!1825140 () Unit!119516)

(declare-fun Unit!119576 () Unit!119516)

(assert (=> b!4663396 (= lt!1825140 Unit!119576)))

(declare-fun call!325821 () Bool)

(assert (=> b!4663396 call!325821))

(declare-fun lt!1825154 () Unit!119516)

(declare-fun Unit!119577 () Unit!119516)

(assert (=> b!4663396 (= lt!1825154 Unit!119577)))

(declare-fun lt!1825141 () Unit!119516)

(declare-fun Unit!119578 () Unit!119516)

(assert (=> b!4663396 (= lt!1825141 Unit!119578)))

(declare-fun lt!1825155 () Unit!119516)

(assert (=> b!4663396 (= lt!1825155 (forallContained!3276 (toList!5257 lt!1825147) lambda!200989 (h!58128 (Cons!51964 lt!1824825 lt!1824835))))))

(assert (=> b!4663396 (contains!15143 lt!1825147 (_1!29845 (h!58128 (Cons!51964 lt!1824825 lt!1824835))))))

(declare-fun lt!1825157 () Unit!119516)

(declare-fun Unit!119579 () Unit!119516)

(assert (=> b!4663396 (= lt!1825157 Unit!119579)))

(assert (=> b!4663396 (contains!15143 lt!1825150 (_1!29845 (h!58128 (Cons!51964 lt!1824825 lt!1824835))))))

(declare-fun lt!1825145 () Unit!119516)

(declare-fun Unit!119580 () Unit!119516)

(assert (=> b!4663396 (= lt!1825145 Unit!119580)))

(assert (=> b!4663396 (forall!11075 (Cons!51964 lt!1824825 lt!1824835) lambda!200989)))

(declare-fun lt!1825148 () Unit!119516)

(declare-fun Unit!119581 () Unit!119516)

(assert (=> b!4663396 (= lt!1825148 Unit!119581)))

(assert (=> b!4663396 (forall!11075 (toList!5257 lt!1825147) lambda!200989)))

(declare-fun lt!1825144 () Unit!119516)

(declare-fun Unit!119582 () Unit!119516)

(assert (=> b!4663396 (= lt!1825144 Unit!119582)))

(declare-fun lt!1825152 () Unit!119516)

(declare-fun Unit!119583 () Unit!119516)

(assert (=> b!4663396 (= lt!1825152 Unit!119583)))

(declare-fun lt!1825146 () Unit!119516)

(assert (=> b!4663396 (= lt!1825146 (addForallContainsKeyThenBeforeAdding!617 (ListMap!4598 Nil!51964) lt!1825150 (_1!29845 (h!58128 (Cons!51964 lt!1824825 lt!1824835))) (_2!29845 (h!58128 (Cons!51964 lt!1824825 lt!1824835)))))))

(assert (=> b!4663396 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200989)))

(declare-fun lt!1825149 () Unit!119516)

(assert (=> b!4663396 (= lt!1825149 lt!1825146)))

(assert (=> b!4663396 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200989)))

(declare-fun lt!1825143 () Unit!119516)

(declare-fun Unit!119584 () Unit!119516)

(assert (=> b!4663396 (= lt!1825143 Unit!119584)))

(declare-fun res!1961991 () Bool)

(assert (=> b!4663396 (= res!1961991 (forall!11075 (Cons!51964 lt!1824825 lt!1824835) lambda!200989))))

(declare-fun e!2909988 () Bool)

(assert (=> b!4663396 (=> (not res!1961991) (not e!2909988))))

(assert (=> b!4663396 e!2909988))

(declare-fun lt!1825158 () Unit!119516)

(declare-fun Unit!119585 () Unit!119516)

(assert (=> b!4663396 (= lt!1825158 Unit!119585)))

(declare-fun c!798276 () Bool)

(declare-fun bm!325815 () Bool)

(assert (=> bm!325815 (= call!325821 (forall!11075 (ite c!798276 (toList!5257 (ListMap!4598 Nil!51964)) (t!359208 (Cons!51964 lt!1824825 lt!1824835))) (ite c!798276 lambda!200986 lambda!200989)))))

(declare-fun call!325820 () Bool)

(declare-fun bm!325816 () Bool)

(assert (=> bm!325816 (= call!325820 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) (ite c!798276 lambda!200986 lambda!200989)))))

(declare-fun bm!325817 () Bool)

(assert (=> bm!325817 (= call!325822 (lemmaContainsAllItsOwnKeys!618 (ListMap!4598 Nil!51964)))))

(declare-fun b!4663397 () Bool)

(assert (=> b!4663397 (= e!2909988 call!325820)))

(declare-fun e!2909989 () Bool)

(assert (=> d!1481408 e!2909989))

(declare-fun res!1961990 () Bool)

(assert (=> d!1481408 (=> (not res!1961990) (not e!2909989))))

(assert (=> d!1481408 (= res!1961990 (forall!11075 (Cons!51964 lt!1824825 lt!1824835) lambda!200990))))

(assert (=> d!1481408 (= lt!1825142 e!2909990)))

(assert (=> d!1481408 (= c!798276 ((_ is Nil!51964) (Cons!51964 lt!1824825 lt!1824835)))))

(assert (=> d!1481408 (noDuplicateKeys!1664 (Cons!51964 lt!1824825 lt!1824835))))

(assert (=> d!1481408 (= (addToMapMapFromBucket!1121 (Cons!51964 lt!1824825 lt!1824835) (ListMap!4598 Nil!51964)) lt!1825142)))

(declare-fun b!4663398 () Bool)

(assert (=> b!4663398 (= e!2909989 (invariantList!1318 (toList!5257 lt!1825142)))))

(assert (=> b!4663399 (= e!2909990 (ListMap!4598 Nil!51964))))

(declare-fun lt!1825139 () Unit!119516)

(assert (=> b!4663399 (= lt!1825139 call!325822)))

(assert (=> b!4663399 call!325820))

(declare-fun lt!1825153 () Unit!119516)

(assert (=> b!4663399 (= lt!1825153 lt!1825139)))

(assert (=> b!4663399 call!325821))

(declare-fun lt!1825151 () Unit!119516)

(declare-fun Unit!119587 () Unit!119516)

(assert (=> b!4663399 (= lt!1825151 Unit!119587)))

(declare-fun b!4663400 () Bool)

(declare-fun res!1961989 () Bool)

(assert (=> b!4663400 (=> (not res!1961989) (not e!2909989))))

(assert (=> b!4663400 (= res!1961989 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!200990))))

(assert (= (and d!1481408 c!798276) b!4663399))

(assert (= (and d!1481408 (not c!798276)) b!4663396))

(assert (= (and b!4663396 res!1961991) b!4663397))

(assert (= (or b!4663399 b!4663396) bm!325817))

(assert (= (or b!4663399 b!4663396) bm!325815))

(assert (= (or b!4663399 b!4663397) bm!325816))

(assert (= (and d!1481408 res!1961990) b!4663400))

(assert (= (and b!4663400 res!1961989) b!4663398))

(assert (=> bm!325817 m!5547931))

(declare-fun m!5548119 () Bool)

(assert (=> b!4663398 m!5548119))

(declare-fun m!5548121 () Bool)

(assert (=> bm!325816 m!5548121))

(declare-fun m!5548123 () Bool)

(assert (=> d!1481408 m!5548123))

(declare-fun m!5548125 () Bool)

(assert (=> d!1481408 m!5548125))

(declare-fun m!5548127 () Bool)

(assert (=> b!4663400 m!5548127))

(declare-fun m!5548129 () Bool)

(assert (=> bm!325815 m!5548129))

(declare-fun m!5548131 () Bool)

(assert (=> b!4663396 m!5548131))

(declare-fun m!5548133 () Bool)

(assert (=> b!4663396 m!5548133))

(declare-fun m!5548135 () Bool)

(assert (=> b!4663396 m!5548135))

(assert (=> b!4663396 m!5548131))

(declare-fun m!5548137 () Bool)

(assert (=> b!4663396 m!5548137))

(declare-fun m!5548139 () Bool)

(assert (=> b!4663396 m!5548139))

(assert (=> b!4663396 m!5548135))

(declare-fun m!5548141 () Bool)

(assert (=> b!4663396 m!5548141))

(declare-fun m!5548143 () Bool)

(assert (=> b!4663396 m!5548143))

(assert (=> b!4663396 m!5548143))

(declare-fun m!5548145 () Bool)

(assert (=> b!4663396 m!5548145))

(assert (=> b!4663396 m!5548141))

(declare-fun m!5548147 () Bool)

(assert (=> b!4663396 m!5548147))

(declare-fun m!5548149 () Bool)

(assert (=> b!4663396 m!5548149))

(assert (=> b!4663189 d!1481408))

(declare-fun d!1481414 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9034 (List!52088) (InoxSet tuple2!53102))

(assert (=> d!1481414 (= (eq!919 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824819 lt!1824824) (ListMap!4598 Nil!51964)) (+!2004 (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964)) lt!1824819)) (= (content!9034 (toList!5257 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824819 lt!1824824) (ListMap!4598 Nil!51964)))) (content!9034 (toList!5257 (+!2004 (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964)) lt!1824819)))))))

(declare-fun bs!1069323 () Bool)

(assert (= bs!1069323 d!1481414))

(declare-fun m!5548151 () Bool)

(assert (=> bs!1069323 m!5548151))

(declare-fun m!5548153 () Bool)

(assert (=> bs!1069323 m!5548153))

(assert (=> b!4663189 d!1481414))

(declare-fun d!1481416 () Bool)

(assert (=> d!1481416 (eq!919 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824819 lt!1824824) (ListMap!4598 Nil!51964)) (+!2004 (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964)) lt!1824819))))

(declare-fun lt!1825160 () Unit!119516)

(assert (=> d!1481416 (= lt!1825160 (choose!32175 lt!1824819 lt!1824824 (ListMap!4598 Nil!51964)))))

(assert (=> d!1481416 (noDuplicateKeys!1664 lt!1824824)))

(assert (=> d!1481416 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!170 lt!1824819 lt!1824824 (ListMap!4598 Nil!51964)) lt!1825160)))

(declare-fun bs!1069324 () Bool)

(assert (= bs!1069324 d!1481416))

(assert (=> bs!1069324 m!5547665))

(assert (=> bs!1069324 m!5547667))

(assert (=> bs!1069324 m!5547669))

(assert (=> bs!1069324 m!5547991))

(declare-fun m!5548155 () Bool)

(assert (=> bs!1069324 m!5548155))

(assert (=> bs!1069324 m!5547649))

(assert (=> bs!1069324 m!5547667))

(assert (=> bs!1069324 m!5547665))

(assert (=> bs!1069324 m!5547649))

(assert (=> b!4663189 d!1481416))

(declare-fun d!1481418 () Bool)

(declare-fun e!2909993 () Bool)

(assert (=> d!1481418 e!2909993))

(declare-fun res!1961997 () Bool)

(assert (=> d!1481418 (=> (not res!1961997) (not e!2909993))))

(declare-fun lt!1825175 () ListMap!4597)

(assert (=> d!1481418 (= res!1961997 (contains!15143 lt!1825175 (_1!29845 (h!58128 oldBucket!40))))))

(declare-fun lt!1825173 () List!52088)

(assert (=> d!1481418 (= lt!1825175 (ListMap!4598 lt!1825173))))

(declare-fun lt!1825174 () Unit!119516)

(declare-fun lt!1825172 () Unit!119516)

(assert (=> d!1481418 (= lt!1825174 lt!1825172)))

(declare-datatypes ((Option!11883 0))(
  ( (None!11882) (Some!11882 (v!46208 V!13556)) )
))
(declare-fun getValueByKey!1649 (List!52088 K!13310) Option!11883)

(assert (=> d!1481418 (= (getValueByKey!1649 lt!1825173 (_1!29845 (h!58128 oldBucket!40))) (Some!11882 (_2!29845 (h!58128 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!936 (List!52088 K!13310 V!13556) Unit!119516)

(assert (=> d!1481418 (= lt!1825172 (lemmaContainsTupThenGetReturnValue!936 lt!1825173 (_1!29845 (h!58128 oldBucket!40)) (_2!29845 (h!58128 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!444 (List!52088 K!13310 V!13556) List!52088)

(assert (=> d!1481418 (= lt!1825173 (insertNoDuplicatedKeys!444 (toList!5257 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965))) (_1!29845 (h!58128 oldBucket!40)) (_2!29845 (h!58128 oldBucket!40))))))

(assert (=> d!1481418 (= (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)) (h!58128 oldBucket!40)) lt!1825175)))

(declare-fun b!4663405 () Bool)

(declare-fun res!1961996 () Bool)

(assert (=> b!4663405 (=> (not res!1961996) (not e!2909993))))

(assert (=> b!4663405 (= res!1961996 (= (getValueByKey!1649 (toList!5257 lt!1825175) (_1!29845 (h!58128 oldBucket!40))) (Some!11882 (_2!29845 (h!58128 oldBucket!40)))))))

(declare-fun b!4663406 () Bool)

(declare-fun contains!15148 (List!52088 tuple2!53102) Bool)

(assert (=> b!4663406 (= e!2909993 (contains!15148 (toList!5257 lt!1825175) (h!58128 oldBucket!40)))))

(assert (= (and d!1481418 res!1961997) b!4663405))

(assert (= (and b!4663405 res!1961996) b!4663406))

(declare-fun m!5548161 () Bool)

(assert (=> d!1481418 m!5548161))

(declare-fun m!5548163 () Bool)

(assert (=> d!1481418 m!5548163))

(declare-fun m!5548165 () Bool)

(assert (=> d!1481418 m!5548165))

(declare-fun m!5548167 () Bool)

(assert (=> d!1481418 m!5548167))

(declare-fun m!5548169 () Bool)

(assert (=> b!4663405 m!5548169))

(declare-fun m!5548171 () Bool)

(assert (=> b!4663406 m!5548171))

(assert (=> b!4663189 d!1481418))

(declare-fun bs!1069326 () Bool)

(declare-fun d!1481422 () Bool)

(assert (= bs!1069326 (and d!1481422 b!4663198)))

(declare-fun lambda!200991 () Int)

(assert (=> bs!1069326 (= lambda!200991 lambda!200884)))

(declare-fun bs!1069327 () Bool)

(assert (= bs!1069327 (and d!1481422 d!1481358)))

(assert (=> bs!1069327 (= lambda!200991 lambda!200965)))

(declare-fun bs!1069328 () Bool)

(assert (= bs!1069328 (and d!1481422 d!1481376)))

(assert (=> bs!1069328 (= lambda!200991 lambda!200970)))

(declare-fun bs!1069329 () Bool)

(assert (= bs!1069329 (and d!1481422 d!1481388)))

(assert (=> bs!1069329 (= lambda!200991 lambda!200981)))

(declare-fun lt!1825176 () ListMap!4597)

(assert (=> d!1481422 (invariantList!1318 (toList!5257 lt!1825176))))

(declare-fun e!2909994 () ListMap!4597)

(assert (=> d!1481422 (= lt!1825176 e!2909994)))

(declare-fun c!798277 () Bool)

(assert (=> d!1481422 (= c!798277 ((_ is Cons!51965) (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)))))

(assert (=> d!1481422 (forall!11076 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965) lambda!200991)))

(assert (=> d!1481422 (= (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)) lt!1825176)))

(declare-fun b!4663407 () Bool)

(assert (=> b!4663407 (= e!2909994 (addToMapMapFromBucket!1121 (_2!29846 (h!58129 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965))) (extractMap!1720 (t!359209 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)))))))

(declare-fun b!4663408 () Bool)

(assert (=> b!4663408 (= e!2909994 (ListMap!4598 Nil!51964))))

(assert (= (and d!1481422 c!798277) b!4663407))

(assert (= (and d!1481422 (not c!798277)) b!4663408))

(declare-fun m!5548173 () Bool)

(assert (=> d!1481422 m!5548173))

(declare-fun m!5548175 () Bool)

(assert (=> d!1481422 m!5548175))

(declare-fun m!5548177 () Bool)

(assert (=> b!4663407 m!5548177))

(assert (=> b!4663407 m!5548177))

(declare-fun m!5548179 () Bool)

(assert (=> b!4663407 m!5548179))

(assert (=> b!4663189 d!1481422))

(declare-fun b!4663441 () Bool)

(assert (=> b!4663441 false))

(declare-fun lt!1825244 () Unit!119516)

(declare-fun lt!1825250 () Unit!119516)

(assert (=> b!4663441 (= lt!1825244 lt!1825250)))

(declare-fun containsKey!2785 (List!52088 K!13310) Bool)

(assert (=> b!4663441 (containsKey!2785 (toList!5257 (extractMap!1720 lt!1824818)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!768 (List!52088 K!13310) Unit!119516)

(assert (=> b!4663441 (= lt!1825250 (lemmaInGetKeysListThenContainsKey!768 (toList!5257 (extractMap!1720 lt!1824818)) key!4968))))

(declare-fun e!2910019 () Unit!119516)

(declare-fun Unit!119598 () Unit!119516)

(assert (=> b!4663441 (= e!2910019 Unit!119598)))

(declare-fun b!4663442 () Bool)

(declare-fun e!2910020 () Bool)

(declare-datatypes ((List!52091 0))(
  ( (Nil!51967) (Cons!51967 (h!58133 K!13310) (t!359213 List!52091)) )
))
(declare-fun contains!15149 (List!52091 K!13310) Bool)

(declare-fun keys!18432 (ListMap!4597) List!52091)

(assert (=> b!4663442 (= e!2910020 (contains!15149 (keys!18432 (extractMap!1720 lt!1824818)) key!4968))))

(declare-fun d!1481424 () Bool)

(declare-fun e!2910017 () Bool)

(assert (=> d!1481424 e!2910017))

(declare-fun res!1962012 () Bool)

(assert (=> d!1481424 (=> res!1962012 e!2910017)))

(declare-fun e!2910018 () Bool)

(assert (=> d!1481424 (= res!1962012 e!2910018)))

(declare-fun res!1962014 () Bool)

(assert (=> d!1481424 (=> (not res!1962014) (not e!2910018))))

(declare-fun lt!1825248 () Bool)

(assert (=> d!1481424 (= res!1962014 (not lt!1825248))))

(declare-fun lt!1825247 () Bool)

(assert (=> d!1481424 (= lt!1825248 lt!1825247)))

(declare-fun lt!1825249 () Unit!119516)

(declare-fun e!2910015 () Unit!119516)

(assert (=> d!1481424 (= lt!1825249 e!2910015)))

(declare-fun c!798289 () Bool)

(assert (=> d!1481424 (= c!798289 lt!1825247)))

(assert (=> d!1481424 (= lt!1825247 (containsKey!2785 (toList!5257 (extractMap!1720 lt!1824818)) key!4968))))

(assert (=> d!1481424 (= (contains!15143 (extractMap!1720 lt!1824818) key!4968) lt!1825248)))

(declare-fun b!4663443 () Bool)

(assert (=> b!4663443 (= e!2910015 e!2910019)))

(declare-fun c!798287 () Bool)

(declare-fun call!325831 () Bool)

(assert (=> b!4663443 (= c!798287 call!325831)))

(declare-fun b!4663444 () Bool)

(assert (=> b!4663444 (= e!2910017 e!2910020)))

(declare-fun res!1962013 () Bool)

(assert (=> b!4663444 (=> (not res!1962013) (not e!2910020))))

(declare-fun isDefined!9148 (Option!11883) Bool)

(assert (=> b!4663444 (= res!1962013 (isDefined!9148 (getValueByKey!1649 (toList!5257 (extractMap!1720 lt!1824818)) key!4968)))))

(declare-fun b!4663445 () Bool)

(declare-fun e!2910016 () List!52091)

(assert (=> b!4663445 (= e!2910016 (keys!18432 (extractMap!1720 lt!1824818)))))

(declare-fun b!4663446 () Bool)

(declare-fun getKeysList!769 (List!52088) List!52091)

(assert (=> b!4663446 (= e!2910016 (getKeysList!769 (toList!5257 (extractMap!1720 lt!1824818))))))

(declare-fun bm!325826 () Bool)

(assert (=> bm!325826 (= call!325831 (contains!15149 e!2910016 key!4968))))

(declare-fun c!798288 () Bool)

(assert (=> bm!325826 (= c!798288 c!798289)))

(declare-fun b!4663447 () Bool)

(assert (=> b!4663447 (= e!2910018 (not (contains!15149 (keys!18432 (extractMap!1720 lt!1824818)) key!4968)))))

(declare-fun b!4663448 () Bool)

(declare-fun Unit!119599 () Unit!119516)

(assert (=> b!4663448 (= e!2910019 Unit!119599)))

(declare-fun b!4663449 () Bool)

(declare-fun lt!1825245 () Unit!119516)

(assert (=> b!4663449 (= e!2910015 lt!1825245)))

(declare-fun lt!1825243 () Unit!119516)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1551 (List!52088 K!13310) Unit!119516)

(assert (=> b!4663449 (= lt!1825243 (lemmaContainsKeyImpliesGetValueByKeyDefined!1551 (toList!5257 (extractMap!1720 lt!1824818)) key!4968))))

(assert (=> b!4663449 (isDefined!9148 (getValueByKey!1649 (toList!5257 (extractMap!1720 lt!1824818)) key!4968))))

(declare-fun lt!1825246 () Unit!119516)

(assert (=> b!4663449 (= lt!1825246 lt!1825243)))

(declare-fun lemmaInListThenGetKeysListContains!764 (List!52088 K!13310) Unit!119516)

(assert (=> b!4663449 (= lt!1825245 (lemmaInListThenGetKeysListContains!764 (toList!5257 (extractMap!1720 lt!1824818)) key!4968))))

(assert (=> b!4663449 call!325831))

(assert (= (and d!1481424 c!798289) b!4663449))

(assert (= (and d!1481424 (not c!798289)) b!4663443))

(assert (= (and b!4663443 c!798287) b!4663441))

(assert (= (and b!4663443 (not c!798287)) b!4663448))

(assert (= (or b!4663449 b!4663443) bm!325826))

(assert (= (and bm!325826 c!798288) b!4663446))

(assert (= (and bm!325826 (not c!798288)) b!4663445))

(assert (= (and d!1481424 res!1962014) b!4663447))

(assert (= (and d!1481424 (not res!1962012)) b!4663444))

(assert (= (and b!4663444 res!1962013) b!4663442))

(declare-fun m!5548243 () Bool)

(assert (=> b!4663446 m!5548243))

(declare-fun m!5548245 () Bool)

(assert (=> d!1481424 m!5548245))

(declare-fun m!5548247 () Bool)

(assert (=> b!4663449 m!5548247))

(declare-fun m!5548249 () Bool)

(assert (=> b!4663449 m!5548249))

(assert (=> b!4663449 m!5548249))

(declare-fun m!5548251 () Bool)

(assert (=> b!4663449 m!5548251))

(declare-fun m!5548253 () Bool)

(assert (=> b!4663449 m!5548253))

(assert (=> b!4663445 m!5547647))

(declare-fun m!5548255 () Bool)

(assert (=> b!4663445 m!5548255))

(declare-fun m!5548257 () Bool)

(assert (=> bm!325826 m!5548257))

(assert (=> b!4663441 m!5548245))

(declare-fun m!5548259 () Bool)

(assert (=> b!4663441 m!5548259))

(assert (=> b!4663444 m!5548249))

(assert (=> b!4663444 m!5548249))

(assert (=> b!4663444 m!5548251))

(assert (=> b!4663442 m!5547647))

(assert (=> b!4663442 m!5548255))

(assert (=> b!4663442 m!5548255))

(declare-fun m!5548261 () Bool)

(assert (=> b!4663442 m!5548261))

(assert (=> b!4663447 m!5547647))

(assert (=> b!4663447 m!5548255))

(assert (=> b!4663447 m!5548255))

(assert (=> b!4663447 m!5548261))

(assert (=> b!4663189 d!1481424))

(declare-fun d!1481436 () Bool)

(assert (=> d!1481436 (= (eq!919 lt!1824831 (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)) (h!58128 oldBucket!40))) (= (content!9034 (toList!5257 lt!1824831)) (content!9034 (toList!5257 (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824835) Nil!51965)) (h!58128 oldBucket!40))))))))

(declare-fun bs!1069391 () Bool)

(assert (= bs!1069391 d!1481436))

(declare-fun m!5548263 () Bool)

(assert (=> bs!1069391 m!5548263))

(declare-fun m!5548265 () Bool)

(assert (=> bs!1069391 m!5548265))

(assert (=> b!4663189 d!1481436))

(declare-fun d!1481438 () Bool)

(assert (=> d!1481438 (= (eq!919 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824825 lt!1824835) (ListMap!4598 Nil!51964)) (+!2004 (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964)) lt!1824825)) (= (content!9034 (toList!5257 (addToMapMapFromBucket!1121 (Cons!51964 lt!1824825 lt!1824835) (ListMap!4598 Nil!51964)))) (content!9034 (toList!5257 (+!2004 (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964)) lt!1824825)))))))

(declare-fun bs!1069392 () Bool)

(assert (= bs!1069392 d!1481438))

(declare-fun m!5548267 () Bool)

(assert (=> bs!1069392 m!5548267))

(declare-fun m!5548269 () Bool)

(assert (=> bs!1069392 m!5548269))

(assert (=> b!4663189 d!1481438))

(declare-fun bs!1069397 () Bool)

(declare-fun b!4663453 () Bool)

(assert (= bs!1069397 (and b!4663453 d!1481408)))

(declare-fun lambda!201004 () Int)

(assert (=> bs!1069397 (= (= (ListMap!4598 Nil!51964) lt!1825142) (= lambda!201004 lambda!200990))))

(declare-fun bs!1069400 () Bool)

(assert (= bs!1069400 (and b!4663453 b!4663315)))

(assert (=> bs!1069400 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!201004 lambda!200953))))

(declare-fun bs!1069401 () Bool)

(assert (= bs!1069401 (and b!4663453 b!4663318)))

(assert (=> bs!1069401 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!201004 lambda!200952))))

(declare-fun bs!1069403 () Bool)

(assert (= bs!1069403 (and b!4663453 b!4663396)))

(assert (=> bs!1069403 (= (= (ListMap!4598 Nil!51964) lt!1825150) (= lambda!201004 lambda!200989))))

(declare-fun bs!1069405 () Bool)

(assert (= bs!1069405 (and b!4663453 b!4663352)))

(assert (=> bs!1069405 (= lambda!201004 lambda!200967)))

(declare-fun bs!1069406 () Bool)

(assert (= bs!1069406 (and b!4663453 d!1481380)))

(assert (=> bs!1069406 (= (= (ListMap!4598 Nil!51964) lt!1825058) (= lambda!201004 lambda!200974))))

(assert (=> bs!1069405 (= (= (ListMap!4598 Nil!51964) lt!1825041) (= lambda!201004 lambda!200968))))

(declare-fun bs!1069409 () Bool)

(assert (= bs!1069409 (and b!4663453 b!4663362)))

(assert (=> bs!1069409 (= lambda!201004 lambda!200972)))

(assert (=> bs!1069403 (= lambda!201004 lambda!200988)))

(declare-fun bs!1069411 () Bool)

(assert (= bs!1069411 (and b!4663453 d!1481344)))

(assert (=> bs!1069411 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!201004 lambda!200957))))

(assert (=> bs!1069400 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!201004 lambda!200954))))

(declare-fun bs!1069413 () Bool)

(assert (= bs!1069413 (and b!4663453 b!4663355)))

(assert (=> bs!1069413 (= lambda!201004 lambda!200966)))

(declare-fun bs!1069414 () Bool)

(assert (= bs!1069414 (and b!4663453 d!1481368)))

(assert (=> bs!1069414 (= (= (ListMap!4598 Nil!51964) lt!1825033) (= lambda!201004 lambda!200969))))

(assert (=> bs!1069409 (= (= (ListMap!4598 Nil!51964) lt!1825066) (= lambda!201004 lambda!200973))))

(declare-fun bs!1069415 () Bool)

(assert (= bs!1069415 (and b!4663453 b!4663399)))

(assert (=> bs!1069415 (= lambda!201004 lambda!200986)))

(declare-fun bs!1069416 () Bool)

(assert (= bs!1069416 (and b!4663453 b!4663365)))

(assert (=> bs!1069416 (= lambda!201004 lambda!200971)))

(assert (=> b!4663453 true))

(declare-fun bs!1069417 () Bool)

(declare-fun b!4663450 () Bool)

(assert (= bs!1069417 (and b!4663450 d!1481408)))

(declare-fun lambda!201005 () Int)

(assert (=> bs!1069417 (= (= (ListMap!4598 Nil!51964) lt!1825142) (= lambda!201005 lambda!200990))))

(declare-fun bs!1069418 () Bool)

(assert (= bs!1069418 (and b!4663450 b!4663315)))

(assert (=> bs!1069418 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!201005 lambda!200953))))

(declare-fun bs!1069419 () Bool)

(assert (= bs!1069419 (and b!4663450 b!4663318)))

(assert (=> bs!1069419 (= (= (ListMap!4598 Nil!51964) lt!1824828) (= lambda!201005 lambda!200952))))

(declare-fun bs!1069420 () Bool)

(assert (= bs!1069420 (and b!4663450 b!4663396)))

(assert (=> bs!1069420 (= (= (ListMap!4598 Nil!51964) lt!1825150) (= lambda!201005 lambda!200989))))

(declare-fun bs!1069421 () Bool)

(assert (= bs!1069421 (and b!4663450 b!4663352)))

(assert (=> bs!1069421 (= lambda!201005 lambda!200967)))

(declare-fun bs!1069422 () Bool)

(assert (= bs!1069422 (and b!4663450 d!1481380)))

(assert (=> bs!1069422 (= (= (ListMap!4598 Nil!51964) lt!1825058) (= lambda!201005 lambda!200974))))

(assert (=> bs!1069421 (= (= (ListMap!4598 Nil!51964) lt!1825041) (= lambda!201005 lambda!200968))))

(declare-fun bs!1069423 () Bool)

(assert (= bs!1069423 (and b!4663450 b!4663362)))

(assert (=> bs!1069423 (= lambda!201005 lambda!200972)))

(assert (=> bs!1069420 (= lambda!201005 lambda!200988)))

(declare-fun bs!1069424 () Bool)

(assert (= bs!1069424 (and b!4663450 b!4663453)))

(assert (=> bs!1069424 (= lambda!201005 lambda!201004)))

(declare-fun bs!1069425 () Bool)

(assert (= bs!1069425 (and b!4663450 d!1481344)))

(assert (=> bs!1069425 (= (= (ListMap!4598 Nil!51964) lt!1824982) (= lambda!201005 lambda!200957))))

(assert (=> bs!1069418 (= (= (ListMap!4598 Nil!51964) lt!1824990) (= lambda!201005 lambda!200954))))

(declare-fun bs!1069426 () Bool)

(assert (= bs!1069426 (and b!4663450 b!4663355)))

(assert (=> bs!1069426 (= lambda!201005 lambda!200966)))

(declare-fun bs!1069427 () Bool)

(assert (= bs!1069427 (and b!4663450 d!1481368)))

(assert (=> bs!1069427 (= (= (ListMap!4598 Nil!51964) lt!1825033) (= lambda!201005 lambda!200969))))

(assert (=> bs!1069423 (= (= (ListMap!4598 Nil!51964) lt!1825066) (= lambda!201005 lambda!200973))))

(declare-fun bs!1069428 () Bool)

(assert (= bs!1069428 (and b!4663450 b!4663399)))

(assert (=> bs!1069428 (= lambda!201005 lambda!200986)))

(declare-fun bs!1069429 () Bool)

(assert (= bs!1069429 (and b!4663450 b!4663365)))

(assert (=> bs!1069429 (= lambda!201005 lambda!200971)))

(assert (=> b!4663450 true))

(declare-fun lambda!201006 () Int)

(declare-fun lt!1825262 () ListMap!4597)

(assert (=> bs!1069417 (= (= lt!1825262 lt!1825142) (= lambda!201006 lambda!200990))))

(assert (=> bs!1069418 (= (= lt!1825262 lt!1824828) (= lambda!201006 lambda!200953))))

(assert (=> b!4663450 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!201005))))

(assert (=> bs!1069419 (= (= lt!1825262 lt!1824828) (= lambda!201006 lambda!200952))))

(assert (=> bs!1069420 (= (= lt!1825262 lt!1825150) (= lambda!201006 lambda!200989))))

(assert (=> bs!1069421 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!200967))))

(assert (=> bs!1069422 (= (= lt!1825262 lt!1825058) (= lambda!201006 lambda!200974))))

(assert (=> bs!1069421 (= (= lt!1825262 lt!1825041) (= lambda!201006 lambda!200968))))

(assert (=> bs!1069423 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!200972))))

(assert (=> bs!1069420 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!200988))))

(assert (=> bs!1069424 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!201004))))

(assert (=> bs!1069425 (= (= lt!1825262 lt!1824982) (= lambda!201006 lambda!200957))))

(assert (=> bs!1069418 (= (= lt!1825262 lt!1824990) (= lambda!201006 lambda!200954))))

(assert (=> bs!1069426 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!200966))))

(assert (=> bs!1069427 (= (= lt!1825262 lt!1825033) (= lambda!201006 lambda!200969))))

(assert (=> bs!1069423 (= (= lt!1825262 lt!1825066) (= lambda!201006 lambda!200973))))

(assert (=> bs!1069428 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!200986))))

(assert (=> bs!1069429 (= (= lt!1825262 (ListMap!4598 Nil!51964)) (= lambda!201006 lambda!200971))))

(assert (=> b!4663450 true))

(declare-fun bs!1069446 () Bool)

(declare-fun d!1481440 () Bool)

(assert (= bs!1069446 (and d!1481440 d!1481408)))

(declare-fun lt!1825254 () ListMap!4597)

(declare-fun lambda!201009 () Int)

(assert (=> bs!1069446 (= (= lt!1825254 lt!1825142) (= lambda!201009 lambda!200990))))

(declare-fun bs!1069448 () Bool)

(assert (= bs!1069448 (and d!1481440 b!4663315)))

(assert (=> bs!1069448 (= (= lt!1825254 lt!1824828) (= lambda!201009 lambda!200953))))

(declare-fun bs!1069450 () Bool)

(assert (= bs!1069450 (and d!1481440 b!4663450)))

(assert (=> bs!1069450 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!201005))))

(declare-fun bs!1069451 () Bool)

(assert (= bs!1069451 (and d!1481440 b!4663396)))

(assert (=> bs!1069451 (= (= lt!1825254 lt!1825150) (= lambda!201009 lambda!200989))))

(declare-fun bs!1069453 () Bool)

(assert (= bs!1069453 (and d!1481440 b!4663352)))

(assert (=> bs!1069453 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!200967))))

(declare-fun bs!1069455 () Bool)

(assert (= bs!1069455 (and d!1481440 d!1481380)))

(assert (=> bs!1069455 (= (= lt!1825254 lt!1825058) (= lambda!201009 lambda!200974))))

(assert (=> bs!1069453 (= (= lt!1825254 lt!1825041) (= lambda!201009 lambda!200968))))

(declare-fun bs!1069457 () Bool)

(assert (= bs!1069457 (and d!1481440 b!4663362)))

(assert (=> bs!1069457 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!200972))))

(assert (=> bs!1069451 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!200988))))

(declare-fun bs!1069460 () Bool)

(assert (= bs!1069460 (and d!1481440 b!4663453)))

(assert (=> bs!1069460 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!201004))))

(declare-fun bs!1069462 () Bool)

(assert (= bs!1069462 (and d!1481440 d!1481344)))

(assert (=> bs!1069462 (= (= lt!1825254 lt!1824982) (= lambda!201009 lambda!200957))))

(assert (=> bs!1069448 (= (= lt!1825254 lt!1824990) (= lambda!201009 lambda!200954))))

(declare-fun bs!1069465 () Bool)

(assert (= bs!1069465 (and d!1481440 b!4663355)))

(assert (=> bs!1069465 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!200966))))

(declare-fun bs!1069466 () Bool)

(assert (= bs!1069466 (and d!1481440 d!1481368)))

(assert (=> bs!1069466 (= (= lt!1825254 lt!1825033) (= lambda!201009 lambda!200969))))

(assert (=> bs!1069457 (= (= lt!1825254 lt!1825066) (= lambda!201009 lambda!200973))))

(declare-fun bs!1069468 () Bool)

(assert (= bs!1069468 (and d!1481440 b!4663318)))

(assert (=> bs!1069468 (= (= lt!1825254 lt!1824828) (= lambda!201009 lambda!200952))))

(assert (=> bs!1069450 (= (= lt!1825254 lt!1825262) (= lambda!201009 lambda!201006))))

(declare-fun bs!1069469 () Bool)

(assert (= bs!1069469 (and d!1481440 b!4663399)))

(assert (=> bs!1069469 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!200986))))

(declare-fun bs!1069470 () Bool)

(assert (= bs!1069470 (and d!1481440 b!4663365)))

(assert (=> bs!1069470 (= (= lt!1825254 (ListMap!4598 Nil!51964)) (= lambda!201009 lambda!200971))))

(assert (=> d!1481440 true))

(declare-fun e!2910023 () ListMap!4597)

(assert (=> b!4663450 (= e!2910023 lt!1825262)))

(declare-fun lt!1825259 () ListMap!4597)

(assert (=> b!4663450 (= lt!1825259 (+!2004 (ListMap!4598 Nil!51964) (h!58128 lt!1824835)))))

(assert (=> b!4663450 (= lt!1825262 (addToMapMapFromBucket!1121 (t!359208 lt!1824835) (+!2004 (ListMap!4598 Nil!51964) (h!58128 lt!1824835))))))

(declare-fun lt!1825268 () Unit!119516)

(declare-fun call!325834 () Unit!119516)

(assert (=> b!4663450 (= lt!1825268 call!325834)))

(assert (=> b!4663450 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!201005)))

(declare-fun lt!1825271 () Unit!119516)

(assert (=> b!4663450 (= lt!1825271 lt!1825268)))

(assert (=> b!4663450 (forall!11075 (toList!5257 lt!1825259) lambda!201006)))

(declare-fun lt!1825252 () Unit!119516)

(declare-fun Unit!119611 () Unit!119516)

(assert (=> b!4663450 (= lt!1825252 Unit!119611)))

(declare-fun call!325833 () Bool)

(assert (=> b!4663450 call!325833))

(declare-fun lt!1825266 () Unit!119516)

(declare-fun Unit!119612 () Unit!119516)

(assert (=> b!4663450 (= lt!1825266 Unit!119612)))

(declare-fun lt!1825253 () Unit!119516)

(declare-fun Unit!119613 () Unit!119516)

(assert (=> b!4663450 (= lt!1825253 Unit!119613)))

(declare-fun lt!1825267 () Unit!119516)

(assert (=> b!4663450 (= lt!1825267 (forallContained!3276 (toList!5257 lt!1825259) lambda!201006 (h!58128 lt!1824835)))))

(assert (=> b!4663450 (contains!15143 lt!1825259 (_1!29845 (h!58128 lt!1824835)))))

(declare-fun lt!1825269 () Unit!119516)

(declare-fun Unit!119614 () Unit!119516)

(assert (=> b!4663450 (= lt!1825269 Unit!119614)))

(assert (=> b!4663450 (contains!15143 lt!1825262 (_1!29845 (h!58128 lt!1824835)))))

(declare-fun lt!1825257 () Unit!119516)

(declare-fun Unit!119615 () Unit!119516)

(assert (=> b!4663450 (= lt!1825257 Unit!119615)))

(assert (=> b!4663450 (forall!11075 lt!1824835 lambda!201006)))

(declare-fun lt!1825260 () Unit!119516)

(declare-fun Unit!119616 () Unit!119516)

(assert (=> b!4663450 (= lt!1825260 Unit!119616)))

(assert (=> b!4663450 (forall!11075 (toList!5257 lt!1825259) lambda!201006)))

(declare-fun lt!1825256 () Unit!119516)

(declare-fun Unit!119617 () Unit!119516)

(assert (=> b!4663450 (= lt!1825256 Unit!119617)))

(declare-fun lt!1825264 () Unit!119516)

(declare-fun Unit!119618 () Unit!119516)

(assert (=> b!4663450 (= lt!1825264 Unit!119618)))

(declare-fun lt!1825258 () Unit!119516)

(assert (=> b!4663450 (= lt!1825258 (addForallContainsKeyThenBeforeAdding!617 (ListMap!4598 Nil!51964) lt!1825262 (_1!29845 (h!58128 lt!1824835)) (_2!29845 (h!58128 lt!1824835))))))

(assert (=> b!4663450 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!201006)))

(declare-fun lt!1825261 () Unit!119516)

(assert (=> b!4663450 (= lt!1825261 lt!1825258)))

(assert (=> b!4663450 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!201006)))

(declare-fun lt!1825255 () Unit!119516)

(declare-fun Unit!119619 () Unit!119516)

(assert (=> b!4663450 (= lt!1825255 Unit!119619)))

(declare-fun res!1962017 () Bool)

(assert (=> b!4663450 (= res!1962017 (forall!11075 lt!1824835 lambda!201006))))

(declare-fun e!2910021 () Bool)

(assert (=> b!4663450 (=> (not res!1962017) (not e!2910021))))

(assert (=> b!4663450 e!2910021))

(declare-fun lt!1825270 () Unit!119516)

(declare-fun Unit!119620 () Unit!119516)

(assert (=> b!4663450 (= lt!1825270 Unit!119620)))

(declare-fun bm!325827 () Bool)

(declare-fun c!798290 () Bool)

(assert (=> bm!325827 (= call!325833 (forall!11075 (ite c!798290 (toList!5257 (ListMap!4598 Nil!51964)) (t!359208 lt!1824835)) (ite c!798290 lambda!201004 lambda!201006)))))

(declare-fun bm!325828 () Bool)

(declare-fun call!325832 () Bool)

(assert (=> bm!325828 (= call!325832 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) (ite c!798290 lambda!201004 lambda!201006)))))

(declare-fun bm!325829 () Bool)

(assert (=> bm!325829 (= call!325834 (lemmaContainsAllItsOwnKeys!618 (ListMap!4598 Nil!51964)))))

(declare-fun b!4663451 () Bool)

(assert (=> b!4663451 (= e!2910021 call!325832)))

(declare-fun e!2910022 () Bool)

(assert (=> d!1481440 e!2910022))

(declare-fun res!1962016 () Bool)

(assert (=> d!1481440 (=> (not res!1962016) (not e!2910022))))

(assert (=> d!1481440 (= res!1962016 (forall!11075 lt!1824835 lambda!201009))))

(assert (=> d!1481440 (= lt!1825254 e!2910023)))

(assert (=> d!1481440 (= c!798290 ((_ is Nil!51964) lt!1824835))))

(assert (=> d!1481440 (noDuplicateKeys!1664 lt!1824835)))

(assert (=> d!1481440 (= (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964)) lt!1825254)))

(declare-fun b!4663452 () Bool)

(assert (=> b!4663452 (= e!2910022 (invariantList!1318 (toList!5257 lt!1825254)))))

(assert (=> b!4663453 (= e!2910023 (ListMap!4598 Nil!51964))))

(declare-fun lt!1825251 () Unit!119516)

(assert (=> b!4663453 (= lt!1825251 call!325834)))

(assert (=> b!4663453 call!325832))

(declare-fun lt!1825265 () Unit!119516)

(assert (=> b!4663453 (= lt!1825265 lt!1825251)))

(assert (=> b!4663453 call!325833))

(declare-fun lt!1825263 () Unit!119516)

(declare-fun Unit!119621 () Unit!119516)

(assert (=> b!4663453 (= lt!1825263 Unit!119621)))

(declare-fun b!4663454 () Bool)

(declare-fun res!1962015 () Bool)

(assert (=> b!4663454 (=> (not res!1962015) (not e!2910022))))

(assert (=> b!4663454 (= res!1962015 (forall!11075 (toList!5257 (ListMap!4598 Nil!51964)) lambda!201009))))

(assert (= (and d!1481440 c!798290) b!4663453))

(assert (= (and d!1481440 (not c!798290)) b!4663450))

(assert (= (and b!4663450 res!1962017) b!4663451))

(assert (= (or b!4663453 b!4663450) bm!325829))

(assert (= (or b!4663453 b!4663450) bm!325827))

(assert (= (or b!4663453 b!4663451) bm!325828))

(assert (= (and d!1481440 res!1962016) b!4663454))

(assert (= (and b!4663454 res!1962015) b!4663452))

(assert (=> bm!325829 m!5547931))

(declare-fun m!5548305 () Bool)

(assert (=> b!4663452 m!5548305))

(declare-fun m!5548307 () Bool)

(assert (=> bm!325828 m!5548307))

(declare-fun m!5548309 () Bool)

(assert (=> d!1481440 m!5548309))

(assert (=> d!1481440 m!5548081))

(declare-fun m!5548311 () Bool)

(assert (=> b!4663454 m!5548311))

(declare-fun m!5548313 () Bool)

(assert (=> bm!325827 m!5548313))

(declare-fun m!5548315 () Bool)

(assert (=> b!4663450 m!5548315))

(declare-fun m!5548317 () Bool)

(assert (=> b!4663450 m!5548317))

(declare-fun m!5548319 () Bool)

(assert (=> b!4663450 m!5548319))

(assert (=> b!4663450 m!5548315))

(declare-fun m!5548321 () Bool)

(assert (=> b!4663450 m!5548321))

(declare-fun m!5548323 () Bool)

(assert (=> b!4663450 m!5548323))

(assert (=> b!4663450 m!5548319))

(declare-fun m!5548325 () Bool)

(assert (=> b!4663450 m!5548325))

(declare-fun m!5548327 () Bool)

(assert (=> b!4663450 m!5548327))

(assert (=> b!4663450 m!5548327))

(declare-fun m!5548329 () Bool)

(assert (=> b!4663450 m!5548329))

(assert (=> b!4663450 m!5548325))

(declare-fun m!5548331 () Bool)

(assert (=> b!4663450 m!5548331))

(declare-fun m!5548333 () Bool)

(assert (=> b!4663450 m!5548333))

(assert (=> b!4663189 d!1481440))

(declare-fun d!1481444 () Bool)

(declare-fun e!2910027 () Bool)

(assert (=> d!1481444 e!2910027))

(declare-fun res!1962022 () Bool)

(assert (=> d!1481444 (=> (not res!1962022) (not e!2910027))))

(declare-fun lt!1825296 () ListMap!4597)

(assert (=> d!1481444 (= res!1962022 (contains!15143 lt!1825296 (_1!29845 lt!1824819)))))

(declare-fun lt!1825294 () List!52088)

(assert (=> d!1481444 (= lt!1825296 (ListMap!4598 lt!1825294))))

(declare-fun lt!1825295 () Unit!119516)

(declare-fun lt!1825293 () Unit!119516)

(assert (=> d!1481444 (= lt!1825295 lt!1825293)))

(assert (=> d!1481444 (= (getValueByKey!1649 lt!1825294 (_1!29845 lt!1824819)) (Some!11882 (_2!29845 lt!1824819)))))

(assert (=> d!1481444 (= lt!1825293 (lemmaContainsTupThenGetReturnValue!936 lt!1825294 (_1!29845 lt!1824819) (_2!29845 lt!1824819)))))

(assert (=> d!1481444 (= lt!1825294 (insertNoDuplicatedKeys!444 (toList!5257 (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964))) (_1!29845 lt!1824819) (_2!29845 lt!1824819)))))

(assert (=> d!1481444 (= (+!2004 (addToMapMapFromBucket!1121 lt!1824824 (ListMap!4598 Nil!51964)) lt!1824819) lt!1825296)))

(declare-fun b!4663460 () Bool)

(declare-fun res!1962021 () Bool)

(assert (=> b!4663460 (=> (not res!1962021) (not e!2910027))))

(assert (=> b!4663460 (= res!1962021 (= (getValueByKey!1649 (toList!5257 lt!1825296) (_1!29845 lt!1824819)) (Some!11882 (_2!29845 lt!1824819))))))

(declare-fun b!4663461 () Bool)

(assert (=> b!4663461 (= e!2910027 (contains!15148 (toList!5257 lt!1825296) lt!1824819))))

(assert (= (and d!1481444 res!1962022) b!4663460))

(assert (= (and b!4663460 res!1962021) b!4663461))

(declare-fun m!5548335 () Bool)

(assert (=> d!1481444 m!5548335))

(declare-fun m!5548337 () Bool)

(assert (=> d!1481444 m!5548337))

(declare-fun m!5548339 () Bool)

(assert (=> d!1481444 m!5548339))

(declare-fun m!5548341 () Bool)

(assert (=> d!1481444 m!5548341))

(declare-fun m!5548343 () Bool)

(assert (=> b!4663460 m!5548343))

(declare-fun m!5548345 () Bool)

(assert (=> b!4663461 m!5548345))

(assert (=> b!4663189 d!1481444))

(declare-fun d!1481446 () Bool)

(declare-fun e!2910028 () Bool)

(assert (=> d!1481446 e!2910028))

(declare-fun res!1962024 () Bool)

(assert (=> d!1481446 (=> (not res!1962024) (not e!2910028))))

(declare-fun lt!1825300 () ListMap!4597)

(assert (=> d!1481446 (= res!1962024 (contains!15143 lt!1825300 (_1!29845 lt!1824825)))))

(declare-fun lt!1825298 () List!52088)

(assert (=> d!1481446 (= lt!1825300 (ListMap!4598 lt!1825298))))

(declare-fun lt!1825299 () Unit!119516)

(declare-fun lt!1825297 () Unit!119516)

(assert (=> d!1481446 (= lt!1825299 lt!1825297)))

(assert (=> d!1481446 (= (getValueByKey!1649 lt!1825298 (_1!29845 lt!1824825)) (Some!11882 (_2!29845 lt!1824825)))))

(assert (=> d!1481446 (= lt!1825297 (lemmaContainsTupThenGetReturnValue!936 lt!1825298 (_1!29845 lt!1824825) (_2!29845 lt!1824825)))))

(assert (=> d!1481446 (= lt!1825298 (insertNoDuplicatedKeys!444 (toList!5257 (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964))) (_1!29845 lt!1824825) (_2!29845 lt!1824825)))))

(assert (=> d!1481446 (= (+!2004 (addToMapMapFromBucket!1121 lt!1824835 (ListMap!4598 Nil!51964)) lt!1824825) lt!1825300)))

(declare-fun b!4663462 () Bool)

(declare-fun res!1962023 () Bool)

(assert (=> b!4663462 (=> (not res!1962023) (not e!2910028))))

(assert (=> b!4663462 (= res!1962023 (= (getValueByKey!1649 (toList!5257 lt!1825300) (_1!29845 lt!1824825)) (Some!11882 (_2!29845 lt!1824825))))))

(declare-fun b!4663463 () Bool)

(assert (=> b!4663463 (= e!2910028 (contains!15148 (toList!5257 lt!1825300) lt!1824825))))

(assert (= (and d!1481446 res!1962024) b!4663462))

(assert (= (and b!4663462 res!1962023) b!4663463))

(declare-fun m!5548347 () Bool)

(assert (=> d!1481446 m!5548347))

(declare-fun m!5548349 () Bool)

(assert (=> d!1481446 m!5548349))

(declare-fun m!5548351 () Bool)

(assert (=> d!1481446 m!5548351))

(declare-fun m!5548353 () Bool)

(assert (=> d!1481446 m!5548353))

(declare-fun m!5548355 () Bool)

(assert (=> b!4663462 m!5548355))

(declare-fun m!5548357 () Bool)

(assert (=> b!4663463 m!5548357))

(assert (=> b!4663189 d!1481446))

(declare-fun d!1481448 () Bool)

(declare-fun res!1962029 () Bool)

(declare-fun e!2910033 () Bool)

(assert (=> d!1481448 (=> res!1962029 e!2910033)))

(assert (=> d!1481448 (= res!1962029 (not ((_ is Cons!51964) oldBucket!40)))))

(assert (=> d!1481448 (= (noDuplicateKeys!1664 oldBucket!40) e!2910033)))

(declare-fun b!4663468 () Bool)

(declare-fun e!2910034 () Bool)

(assert (=> b!4663468 (= e!2910033 e!2910034)))

(declare-fun res!1962030 () Bool)

(assert (=> b!4663468 (=> (not res!1962030) (not e!2910034))))

(assert (=> b!4663468 (= res!1962030 (not (containsKey!2782 (t!359208 oldBucket!40) (_1!29845 (h!58128 oldBucket!40)))))))

(declare-fun b!4663469 () Bool)

(assert (=> b!4663469 (= e!2910034 (noDuplicateKeys!1664 (t!359208 oldBucket!40)))))

(assert (= (and d!1481448 (not res!1962029)) b!4663468))

(assert (= (and b!4663468 res!1962030) b!4663469))

(declare-fun m!5548385 () Bool)

(assert (=> b!4663468 m!5548385))

(assert (=> b!4663469 m!5547729))

(assert (=> start!469944 d!1481448))

(declare-fun bs!1069496 () Bool)

(declare-fun d!1481450 () Bool)

(assert (= bs!1069496 (and d!1481450 b!4663315)))

(declare-fun lambda!201015 () Int)

(assert (=> bs!1069496 (not (= lambda!201015 lambda!200953))))

(declare-fun bs!1069497 () Bool)

(assert (= bs!1069497 (and d!1481450 b!4663450)))

(assert (=> bs!1069497 (not (= lambda!201015 lambda!201005))))

(declare-fun bs!1069498 () Bool)

(assert (= bs!1069498 (and d!1481450 b!4663396)))

(assert (=> bs!1069498 (not (= lambda!201015 lambda!200989))))

(declare-fun bs!1069499 () Bool)

(assert (= bs!1069499 (and d!1481450 b!4663352)))

(assert (=> bs!1069499 (not (= lambda!201015 lambda!200967))))

(declare-fun bs!1069500 () Bool)

(assert (= bs!1069500 (and d!1481450 d!1481380)))

(assert (=> bs!1069500 (not (= lambda!201015 lambda!200974))))

(assert (=> bs!1069499 (not (= lambda!201015 lambda!200968))))

(declare-fun bs!1069501 () Bool)

(assert (= bs!1069501 (and d!1481450 b!4663362)))

(assert (=> bs!1069501 (not (= lambda!201015 lambda!200972))))

(assert (=> bs!1069498 (not (= lambda!201015 lambda!200988))))

(declare-fun bs!1069502 () Bool)

(assert (= bs!1069502 (and d!1481450 b!4663453)))

(assert (=> bs!1069502 (not (= lambda!201015 lambda!201004))))

(declare-fun bs!1069503 () Bool)

(assert (= bs!1069503 (and d!1481450 d!1481408)))

(assert (=> bs!1069503 (not (= lambda!201015 lambda!200990))))

(declare-fun bs!1069504 () Bool)

(assert (= bs!1069504 (and d!1481450 d!1481440)))

(assert (=> bs!1069504 (not (= lambda!201015 lambda!201009))))

(declare-fun bs!1069505 () Bool)

(assert (= bs!1069505 (and d!1481450 d!1481344)))

(assert (=> bs!1069505 (not (= lambda!201015 lambda!200957))))

(assert (=> bs!1069496 (not (= lambda!201015 lambda!200954))))

(declare-fun bs!1069506 () Bool)

(assert (= bs!1069506 (and d!1481450 b!4663355)))

(assert (=> bs!1069506 (not (= lambda!201015 lambda!200966))))

(declare-fun bs!1069507 () Bool)

(assert (= bs!1069507 (and d!1481450 d!1481368)))

(assert (=> bs!1069507 (not (= lambda!201015 lambda!200969))))

(assert (=> bs!1069501 (not (= lambda!201015 lambda!200973))))

(declare-fun bs!1069508 () Bool)

(assert (= bs!1069508 (and d!1481450 b!4663318)))

(assert (=> bs!1069508 (not (= lambda!201015 lambda!200952))))

(assert (=> bs!1069497 (not (= lambda!201015 lambda!201006))))

(declare-fun bs!1069510 () Bool)

(assert (= bs!1069510 (and d!1481450 b!4663399)))

(assert (=> bs!1069510 (not (= lambda!201015 lambda!200986))))

(declare-fun bs!1069511 () Bool)

(assert (= bs!1069511 (and d!1481450 b!4663365)))

(assert (=> bs!1069511 (not (= lambda!201015 lambda!200971))))

(assert (=> d!1481450 true))

(assert (=> d!1481450 true))

(assert (=> d!1481450 (= (allKeysSameHash!1518 newBucket!224 hash!414 hashF!1389) (forall!11075 newBucket!224 lambda!201015))))

(declare-fun bs!1069512 () Bool)

(assert (= bs!1069512 d!1481450))

(declare-fun m!5548419 () Bool)

(assert (=> bs!1069512 m!5548419))

(assert (=> b!4663191 d!1481450))

(declare-fun b!4663503 () Bool)

(declare-fun e!2910051 () List!52088)

(assert (=> b!4663503 (= e!2910051 (Cons!51964 (h!58128 (t!359208 oldBucket!40)) (removePairForKey!1287 (t!359208 (t!359208 oldBucket!40)) key!4968)))))

(declare-fun b!4663501 () Bool)

(declare-fun e!2910052 () List!52088)

(assert (=> b!4663501 (= e!2910052 (t!359208 (t!359208 oldBucket!40)))))

(declare-fun d!1481462 () Bool)

(declare-fun lt!1825318 () List!52088)

(assert (=> d!1481462 (not (containsKey!2782 lt!1825318 key!4968))))

(assert (=> d!1481462 (= lt!1825318 e!2910052)))

(declare-fun c!798303 () Bool)

(assert (=> d!1481462 (= c!798303 (and ((_ is Cons!51964) (t!359208 oldBucket!40)) (= (_1!29845 (h!58128 (t!359208 oldBucket!40))) key!4968)))))

(assert (=> d!1481462 (noDuplicateKeys!1664 (t!359208 oldBucket!40))))

(assert (=> d!1481462 (= (removePairForKey!1287 (t!359208 oldBucket!40) key!4968) lt!1825318)))

(declare-fun b!4663504 () Bool)

(assert (=> b!4663504 (= e!2910051 Nil!51964)))

(declare-fun b!4663502 () Bool)

(assert (=> b!4663502 (= e!2910052 e!2910051)))

(declare-fun c!798302 () Bool)

(assert (=> b!4663502 (= c!798302 ((_ is Cons!51964) (t!359208 oldBucket!40)))))

(assert (= (and d!1481462 c!798303) b!4663501))

(assert (= (and d!1481462 (not c!798303)) b!4663502))

(assert (= (and b!4663502 c!798302) b!4663503))

(assert (= (and b!4663502 (not c!798302)) b!4663504))

(declare-fun m!5548449 () Bool)

(assert (=> b!4663503 m!5548449))

(declare-fun m!5548451 () Bool)

(assert (=> d!1481462 m!5548451))

(assert (=> d!1481462 m!5547729))

(assert (=> b!4663201 d!1481462))

(declare-fun bs!1069530 () Bool)

(declare-fun d!1481472 () Bool)

(assert (= bs!1069530 (and d!1481472 d!1481450)))

(declare-fun lambda!201017 () Int)

(assert (=> bs!1069530 (= lambda!201017 lambda!201015)))

(declare-fun bs!1069531 () Bool)

(assert (= bs!1069531 (and d!1481472 b!4663315)))

(assert (=> bs!1069531 (not (= lambda!201017 lambda!200953))))

(declare-fun bs!1069532 () Bool)

(assert (= bs!1069532 (and d!1481472 b!4663450)))

(assert (=> bs!1069532 (not (= lambda!201017 lambda!201005))))

(declare-fun bs!1069533 () Bool)

(assert (= bs!1069533 (and d!1481472 b!4663396)))

(assert (=> bs!1069533 (not (= lambda!201017 lambda!200989))))

(declare-fun bs!1069534 () Bool)

(assert (= bs!1069534 (and d!1481472 b!4663352)))

(assert (=> bs!1069534 (not (= lambda!201017 lambda!200967))))

(declare-fun bs!1069535 () Bool)

(assert (= bs!1069535 (and d!1481472 d!1481380)))

(assert (=> bs!1069535 (not (= lambda!201017 lambda!200974))))

(assert (=> bs!1069534 (not (= lambda!201017 lambda!200968))))

(declare-fun bs!1069536 () Bool)

(assert (= bs!1069536 (and d!1481472 b!4663362)))

(assert (=> bs!1069536 (not (= lambda!201017 lambda!200972))))

(assert (=> bs!1069533 (not (= lambda!201017 lambda!200988))))

(declare-fun bs!1069537 () Bool)

(assert (= bs!1069537 (and d!1481472 b!4663453)))

(assert (=> bs!1069537 (not (= lambda!201017 lambda!201004))))

(declare-fun bs!1069539 () Bool)

(assert (= bs!1069539 (and d!1481472 d!1481408)))

(assert (=> bs!1069539 (not (= lambda!201017 lambda!200990))))

(declare-fun bs!1069540 () Bool)

(assert (= bs!1069540 (and d!1481472 d!1481440)))

(assert (=> bs!1069540 (not (= lambda!201017 lambda!201009))))

(declare-fun bs!1069541 () Bool)

(assert (= bs!1069541 (and d!1481472 d!1481344)))

(assert (=> bs!1069541 (not (= lambda!201017 lambda!200957))))

(assert (=> bs!1069531 (not (= lambda!201017 lambda!200954))))

(declare-fun bs!1069542 () Bool)

(assert (= bs!1069542 (and d!1481472 b!4663355)))

(assert (=> bs!1069542 (not (= lambda!201017 lambda!200966))))

(declare-fun bs!1069543 () Bool)

(assert (= bs!1069543 (and d!1481472 d!1481368)))

(assert (=> bs!1069543 (not (= lambda!201017 lambda!200969))))

(assert (=> bs!1069536 (not (= lambda!201017 lambda!200973))))

(declare-fun bs!1069544 () Bool)

(assert (= bs!1069544 (and d!1481472 b!4663318)))

(assert (=> bs!1069544 (not (= lambda!201017 lambda!200952))))

(assert (=> bs!1069532 (not (= lambda!201017 lambda!201006))))

(declare-fun bs!1069545 () Bool)

(assert (= bs!1069545 (and d!1481472 b!4663399)))

(assert (=> bs!1069545 (not (= lambda!201017 lambda!200986))))

(declare-fun bs!1069546 () Bool)

(assert (= bs!1069546 (and d!1481472 b!4663365)))

(assert (=> bs!1069546 (not (= lambda!201017 lambda!200971))))

(assert (=> d!1481472 true))

(assert (=> d!1481472 true))

(assert (=> d!1481472 (= (allKeysSameHash!1518 oldBucket!40 hash!414 hashF!1389) (forall!11075 oldBucket!40 lambda!201017))))

(declare-fun bs!1069547 () Bool)

(assert (= bs!1069547 d!1481472))

(declare-fun m!5548459 () Bool)

(assert (=> bs!1069547 m!5548459))

(assert (=> b!4663190 d!1481472))

(declare-fun b!4663515 () Bool)

(declare-fun e!2910059 () List!52088)

(assert (=> b!4663515 (= e!2910059 (Cons!51964 (h!58128 oldBucket!40) (removePairForKey!1287 (t!359208 oldBucket!40) key!4968)))))

(declare-fun b!4663513 () Bool)

(declare-fun e!2910060 () List!52088)

(assert (=> b!4663513 (= e!2910060 (t!359208 oldBucket!40))))

(declare-fun d!1481476 () Bool)

(declare-fun lt!1825319 () List!52088)

(assert (=> d!1481476 (not (containsKey!2782 lt!1825319 key!4968))))

(assert (=> d!1481476 (= lt!1825319 e!2910060)))

(declare-fun c!798305 () Bool)

(assert (=> d!1481476 (= c!798305 (and ((_ is Cons!51964) oldBucket!40) (= (_1!29845 (h!58128 oldBucket!40)) key!4968)))))

(assert (=> d!1481476 (noDuplicateKeys!1664 oldBucket!40)))

(assert (=> d!1481476 (= (removePairForKey!1287 oldBucket!40 key!4968) lt!1825319)))

(declare-fun b!4663516 () Bool)

(assert (=> b!4663516 (= e!2910059 Nil!51964)))

(declare-fun b!4663514 () Bool)

(assert (=> b!4663514 (= e!2910060 e!2910059)))

(declare-fun c!798304 () Bool)

(assert (=> b!4663514 (= c!798304 ((_ is Cons!51964) oldBucket!40))))

(assert (= (and d!1481476 c!798305) b!4663513))

(assert (= (and d!1481476 (not c!798305)) b!4663514))

(assert (= (and b!4663514 c!798304) b!4663515))

(assert (= (and b!4663514 (not c!798304)) b!4663516))

(assert (=> b!4663515 m!5547681))

(declare-fun m!5548461 () Bool)

(assert (=> d!1481476 m!5548461))

(assert (=> d!1481476 m!5547725))

(assert (=> b!4663187 d!1481476))

(declare-fun d!1481478 () Bool)

(declare-fun hash!3823 (Hashable!6061 K!13310) (_ BitVec 64))

(assert (=> d!1481478 (= (hash!3821 hashF!1389 key!4968) (hash!3823 hashF!1389 key!4968))))

(declare-fun bs!1069548 () Bool)

(assert (= bs!1069548 d!1481478))

(declare-fun m!5548463 () Bool)

(assert (=> bs!1069548 m!5548463))

(assert (=> b!4663197 d!1481478))

(declare-fun b!4663519 () Bool)

(declare-fun e!2910061 () List!52088)

(assert (=> b!4663519 (= e!2910061 (Cons!51964 (h!58128 lt!1824835) (removePairForKey!1287 (t!359208 lt!1824835) key!4968)))))

(declare-fun b!4663517 () Bool)

(declare-fun e!2910062 () List!52088)

(assert (=> b!4663517 (= e!2910062 (t!359208 lt!1824835))))

(declare-fun d!1481480 () Bool)

(declare-fun lt!1825320 () List!52088)

(assert (=> d!1481480 (not (containsKey!2782 lt!1825320 key!4968))))

(assert (=> d!1481480 (= lt!1825320 e!2910062)))

(declare-fun c!798307 () Bool)

(assert (=> d!1481480 (= c!798307 (and ((_ is Cons!51964) lt!1824835) (= (_1!29845 (h!58128 lt!1824835)) key!4968)))))

(assert (=> d!1481480 (noDuplicateKeys!1664 lt!1824835)))

(assert (=> d!1481480 (= (removePairForKey!1287 lt!1824835 key!4968) lt!1825320)))

(declare-fun b!4663520 () Bool)

(assert (=> b!4663520 (= e!2910061 Nil!51964)))

(declare-fun b!4663518 () Bool)

(assert (=> b!4663518 (= e!2910062 e!2910061)))

(declare-fun c!798306 () Bool)

(assert (=> b!4663518 (= c!798306 ((_ is Cons!51964) lt!1824835))))

(assert (= (and d!1481480 c!798307) b!4663517))

(assert (= (and d!1481480 (not c!798307)) b!4663518))

(assert (= (and b!4663518 c!798306) b!4663519))

(assert (= (and b!4663518 (not c!798306)) b!4663520))

(declare-fun m!5548465 () Bool)

(assert (=> b!4663519 m!5548465))

(declare-fun m!5548467 () Bool)

(assert (=> d!1481480 m!5548467))

(assert (=> d!1481480 m!5548081))

(assert (=> b!4663199 d!1481480))

(declare-fun d!1481482 () Bool)

(assert (=> d!1481482 (= (tail!8267 newBucket!224) (t!359208 newBucket!224))))

(assert (=> b!4663199 d!1481482))

(declare-fun d!1481484 () Bool)

(assert (=> d!1481484 (= (tail!8267 oldBucket!40) (t!359208 oldBucket!40))))

(assert (=> b!4663199 d!1481484))

(declare-fun d!1481486 () Bool)

(declare-fun lt!1825323 () Bool)

(declare-fun content!9035 (List!52089) (InoxSet tuple2!53104))

(assert (=> d!1481486 (= lt!1825323 (select (content!9035 lt!1824827) lt!1824820))))

(declare-fun e!2910068 () Bool)

(assert (=> d!1481486 (= lt!1825323 e!2910068)))

(declare-fun res!1962044 () Bool)

(assert (=> d!1481486 (=> (not res!1962044) (not e!2910068))))

(assert (=> d!1481486 (= res!1962044 ((_ is Cons!51965) lt!1824827))))

(assert (=> d!1481486 (= (contains!15144 lt!1824827 lt!1824820) lt!1825323)))

(declare-fun b!4663525 () Bool)

(declare-fun e!2910067 () Bool)

(assert (=> b!4663525 (= e!2910068 e!2910067)))

(declare-fun res!1962045 () Bool)

(assert (=> b!4663525 (=> res!1962045 e!2910067)))

(assert (=> b!4663525 (= res!1962045 (= (h!58129 lt!1824827) lt!1824820))))

(declare-fun b!4663526 () Bool)

(assert (=> b!4663526 (= e!2910067 (contains!15144 (t!359209 lt!1824827) lt!1824820))))

(assert (= (and d!1481486 res!1962044) b!4663525))

(assert (= (and b!4663525 (not res!1962045)) b!4663526))

(declare-fun m!5548469 () Bool)

(assert (=> d!1481486 m!5548469))

(declare-fun m!5548471 () Bool)

(assert (=> d!1481486 m!5548471))

(declare-fun m!5548473 () Bool)

(assert (=> b!4663526 m!5548473))

(assert (=> b!4663198 d!1481486))

(declare-fun d!1481488 () Bool)

(assert (=> d!1481488 (containsKey!2782 oldBucket!40 key!4968)))

(declare-fun lt!1825326 () Unit!119516)

(declare-fun choose!32178 (List!52088 K!13310 Hashable!6061) Unit!119516)

(assert (=> d!1481488 (= lt!1825326 (choose!32178 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1481488 (noDuplicateKeys!1664 oldBucket!40)))

(assert (=> d!1481488 (= (lemmaGetPairDefinedThenContainsKey!142 oldBucket!40 key!4968 hashF!1389) lt!1825326)))

(declare-fun bs!1069549 () Bool)

(assert (= bs!1069549 d!1481488))

(assert (=> bs!1069549 m!5547705))

(declare-fun m!5548475 () Bool)

(assert (=> bs!1069549 m!5548475))

(assert (=> bs!1069549 m!5547725))

(assert (=> b!4663198 d!1481488))

(declare-fun d!1481490 () Bool)

(declare-fun res!1962050 () Bool)

(declare-fun e!2910073 () Bool)

(assert (=> d!1481490 (=> res!1962050 e!2910073)))

(assert (=> d!1481490 (= res!1962050 (and ((_ is Cons!51964) (t!359208 oldBucket!40)) (= (_1!29845 (h!58128 (t!359208 oldBucket!40))) key!4968)))))

(assert (=> d!1481490 (= (containsKey!2782 (t!359208 oldBucket!40) key!4968) e!2910073)))

(declare-fun b!4663531 () Bool)

(declare-fun e!2910074 () Bool)

(assert (=> b!4663531 (= e!2910073 e!2910074)))

(declare-fun res!1962051 () Bool)

(assert (=> b!4663531 (=> (not res!1962051) (not e!2910074))))

(assert (=> b!4663531 (= res!1962051 ((_ is Cons!51964) (t!359208 oldBucket!40)))))

(declare-fun b!4663532 () Bool)

(assert (=> b!4663532 (= e!2910074 (containsKey!2782 (t!359208 (t!359208 oldBucket!40)) key!4968))))

(assert (= (and d!1481490 (not res!1962050)) b!4663531))

(assert (= (and b!4663531 res!1962051) b!4663532))

(declare-fun m!5548477 () Bool)

(assert (=> b!4663532 m!5548477))

(assert (=> b!4663198 d!1481490))

(declare-fun d!1481492 () Bool)

(declare-fun e!2910080 () Bool)

(assert (=> d!1481492 e!2910080))

(declare-fun res!1962054 () Bool)

(assert (=> d!1481492 (=> res!1962054 e!2910080)))

(declare-fun lt!1825337 () Bool)

(assert (=> d!1481492 (= res!1962054 (not lt!1825337))))

(declare-fun lt!1825336 () Bool)

(assert (=> d!1481492 (= lt!1825337 lt!1825336)))

(declare-fun lt!1825335 () Unit!119516)

(declare-fun e!2910079 () Unit!119516)

(assert (=> d!1481492 (= lt!1825335 e!2910079)))

(declare-fun c!798310 () Bool)

(assert (=> d!1481492 (= c!798310 lt!1825336)))

(declare-fun containsKey!2786 (List!52089 (_ BitVec 64)) Bool)

(assert (=> d!1481492 (= lt!1825336 (containsKey!2786 (toList!5258 lt!1824829) lt!1824833))))

(assert (=> d!1481492 (= (contains!15145 lt!1824829 lt!1824833) lt!1825337)))

(declare-fun b!4663539 () Bool)

(declare-fun lt!1825338 () Unit!119516)

(assert (=> b!4663539 (= e!2910079 lt!1825338)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1552 (List!52089 (_ BitVec 64)) Unit!119516)

(assert (=> b!4663539 (= lt!1825338 (lemmaContainsKeyImpliesGetValueByKeyDefined!1552 (toList!5258 lt!1824829) lt!1824833))))

(declare-datatypes ((Option!11884 0))(
  ( (None!11883) (Some!11883 (v!46209 List!52088)) )
))
(declare-fun isDefined!9149 (Option!11884) Bool)

(declare-fun getValueByKey!1650 (List!52089 (_ BitVec 64)) Option!11884)

(assert (=> b!4663539 (isDefined!9149 (getValueByKey!1650 (toList!5258 lt!1824829) lt!1824833))))

(declare-fun b!4663540 () Bool)

(declare-fun Unit!119633 () Unit!119516)

(assert (=> b!4663540 (= e!2910079 Unit!119633)))

(declare-fun b!4663541 () Bool)

(assert (=> b!4663541 (= e!2910080 (isDefined!9149 (getValueByKey!1650 (toList!5258 lt!1824829) lt!1824833)))))

(assert (= (and d!1481492 c!798310) b!4663539))

(assert (= (and d!1481492 (not c!798310)) b!4663540))

(assert (= (and d!1481492 (not res!1962054)) b!4663541))

(declare-fun m!5548479 () Bool)

(assert (=> d!1481492 m!5548479))

(declare-fun m!5548481 () Bool)

(assert (=> b!4663539 m!5548481))

(declare-fun m!5548483 () Bool)

(assert (=> b!4663539 m!5548483))

(assert (=> b!4663539 m!5548483))

(declare-fun m!5548485 () Bool)

(assert (=> b!4663539 m!5548485))

(assert (=> b!4663541 m!5548483))

(assert (=> b!4663541 m!5548483))

(assert (=> b!4663541 m!5548485))

(assert (=> b!4663198 d!1481492))

(declare-fun b!4663558 () Bool)

(declare-fun e!2910092 () Option!11880)

(assert (=> b!4663558 (= e!2910092 (Some!11879 (h!58128 lt!1824832)))))

(declare-fun b!4663559 () Bool)

(declare-fun e!2910091 () Option!11880)

(assert (=> b!4663559 (= e!2910091 (getPair!392 (t!359208 lt!1824832) key!4968))))

(declare-fun b!4663560 () Bool)

(assert (=> b!4663560 (= e!2910091 None!11879)))

(declare-fun b!4663561 () Bool)

(declare-fun e!2910095 () Bool)

(declare-fun lt!1825341 () Option!11880)

(declare-fun get!17318 (Option!11880) tuple2!53102)

(assert (=> b!4663561 (= e!2910095 (contains!15148 lt!1824832 (get!17318 lt!1825341)))))

(declare-fun b!4663562 () Bool)

(declare-fun res!1962066 () Bool)

(assert (=> b!4663562 (=> (not res!1962066) (not e!2910095))))

(assert (=> b!4663562 (= res!1962066 (= (_1!29845 (get!17318 lt!1825341)) key!4968))))

(declare-fun b!4663563 () Bool)

(declare-fun e!2910093 () Bool)

(assert (=> b!4663563 (= e!2910093 e!2910095)))

(declare-fun res!1962065 () Bool)

(assert (=> b!4663563 (=> (not res!1962065) (not e!2910095))))

(assert (=> b!4663563 (= res!1962065 (isDefined!9145 lt!1825341))))

(declare-fun d!1481494 () Bool)

(assert (=> d!1481494 e!2910093))

(declare-fun res!1962064 () Bool)

(assert (=> d!1481494 (=> res!1962064 e!2910093)))

(declare-fun e!2910094 () Bool)

(assert (=> d!1481494 (= res!1962064 e!2910094)))

(declare-fun res!1962063 () Bool)

(assert (=> d!1481494 (=> (not res!1962063) (not e!2910094))))

(declare-fun isEmpty!29037 (Option!11880) Bool)

(assert (=> d!1481494 (= res!1962063 (isEmpty!29037 lt!1825341))))

(assert (=> d!1481494 (= lt!1825341 e!2910092)))

(declare-fun c!798315 () Bool)

(assert (=> d!1481494 (= c!798315 (and ((_ is Cons!51964) lt!1824832) (= (_1!29845 (h!58128 lt!1824832)) key!4968)))))

(assert (=> d!1481494 (noDuplicateKeys!1664 lt!1824832)))

(assert (=> d!1481494 (= (getPair!392 lt!1824832 key!4968) lt!1825341)))

(declare-fun b!4663564 () Bool)

(assert (=> b!4663564 (= e!2910094 (not (containsKey!2782 lt!1824832 key!4968)))))

(declare-fun b!4663565 () Bool)

(assert (=> b!4663565 (= e!2910092 e!2910091)))

(declare-fun c!798316 () Bool)

(assert (=> b!4663565 (= c!798316 ((_ is Cons!51964) lt!1824832))))

(assert (= (and d!1481494 c!798315) b!4663558))

(assert (= (and d!1481494 (not c!798315)) b!4663565))

(assert (= (and b!4663565 c!798316) b!4663559))

(assert (= (and b!4663565 (not c!798316)) b!4663560))

(assert (= (and d!1481494 res!1962063) b!4663564))

(assert (= (and d!1481494 (not res!1962064)) b!4663563))

(assert (= (and b!4663563 res!1962065) b!4663562))

(assert (= (and b!4663562 res!1962066) b!4663561))

(declare-fun m!5548487 () Bool)

(assert (=> b!4663559 m!5548487))

(declare-fun m!5548489 () Bool)

(assert (=> b!4663564 m!5548489))

(declare-fun m!5548491 () Bool)

(assert (=> b!4663562 m!5548491))

(declare-fun m!5548493 () Bool)

(assert (=> d!1481494 m!5548493))

(declare-fun m!5548495 () Bool)

(assert (=> d!1481494 m!5548495))

(assert (=> b!4663561 m!5548491))

(assert (=> b!4663561 m!5548491))

(declare-fun m!5548497 () Bool)

(assert (=> b!4663561 m!5548497))

(declare-fun m!5548499 () Bool)

(assert (=> b!4663563 m!5548499))

(assert (=> b!4663198 d!1481494))

(declare-fun d!1481496 () Bool)

(declare-fun get!17319 (Option!11884) List!52088)

(assert (=> d!1481496 (= (apply!12267 lt!1824829 lt!1824833) (get!17319 (getValueByKey!1650 (toList!5258 lt!1824829) lt!1824833)))))

(declare-fun bs!1069550 () Bool)

(assert (= bs!1069550 d!1481496))

(assert (=> bs!1069550 m!5548483))

(assert (=> bs!1069550 m!5548483))

(declare-fun m!5548501 () Bool)

(assert (=> bs!1069550 m!5548501))

(assert (=> b!4663198 d!1481496))

(declare-fun bs!1069551 () Bool)

(declare-fun d!1481498 () Bool)

(assert (= bs!1069551 (and d!1481498 d!1481388)))

(declare-fun lambda!201024 () Int)

(assert (=> bs!1069551 (= lambda!201024 lambda!200981)))

(declare-fun bs!1069552 () Bool)

(assert (= bs!1069552 (and d!1481498 b!4663198)))

(assert (=> bs!1069552 (= lambda!201024 lambda!200884)))

(declare-fun bs!1069553 () Bool)

(assert (= bs!1069553 (and d!1481498 d!1481376)))

(assert (=> bs!1069553 (= lambda!201024 lambda!200970)))

(declare-fun bs!1069554 () Bool)

(assert (= bs!1069554 (and d!1481498 d!1481422)))

(assert (=> bs!1069554 (= lambda!201024 lambda!200991)))

(declare-fun bs!1069555 () Bool)

(assert (= bs!1069555 (and d!1481498 d!1481358)))

(assert (=> bs!1069555 (= lambda!201024 lambda!200965)))

(declare-fun e!2910100 () Bool)

(assert (=> d!1481498 e!2910100))

(declare-fun res!1962076 () Bool)

(assert (=> d!1481498 (=> (not res!1962076) (not e!2910100))))

(assert (=> d!1481498 (= res!1962076 (forall!11076 (toList!5258 lt!1824829) lambda!201024))))

(declare-fun lt!1825358 () Unit!119516)

(declare-fun choose!32179 (ListLongMap!3811 K!13310 Hashable!6061) Unit!119516)

(assert (=> d!1481498 (= lt!1825358 (choose!32179 lt!1824829 key!4968 hashF!1389))))

(assert (=> d!1481498 (forall!11076 (toList!5258 lt!1824829) lambda!201024)))

(assert (=> d!1481498 (= (lemmaInGenMapThenGetPairDefined!188 lt!1824829 key!4968 hashF!1389) lt!1825358)))

(declare-fun b!4663575 () Bool)

(declare-fun res!1962078 () Bool)

(assert (=> b!4663575 (=> (not res!1962078) (not e!2910100))))

(assert (=> b!4663575 (= res!1962078 (contains!15143 (extractMap!1720 (toList!5258 lt!1824829)) key!4968))))

(declare-fun e!2910101 () Bool)

(declare-fun lt!1825362 () List!52088)

(declare-fun b!4663577 () Bool)

(declare-fun lt!1825363 () (_ BitVec 64))

(assert (=> b!4663577 (= e!2910101 (= (getValueByKey!1650 (toList!5258 lt!1824829) lt!1825363) (Some!11883 lt!1825362)))))

(declare-fun b!4663574 () Bool)

(declare-fun res!1962077 () Bool)

(assert (=> b!4663574 (=> (not res!1962077) (not e!2910100))))

(declare-fun allKeysSameHashInMap!1620 (ListLongMap!3811 Hashable!6061) Bool)

(assert (=> b!4663574 (= res!1962077 (allKeysSameHashInMap!1620 lt!1824829 hashF!1389))))

(declare-fun b!4663576 () Bool)

(assert (=> b!4663576 (= e!2910100 (isDefined!9145 (getPair!392 (apply!12267 lt!1824829 (hash!3821 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1825359 () Unit!119516)

(assert (=> b!4663576 (= lt!1825359 (forallContained!3274 (toList!5258 lt!1824829) lambda!201024 (tuple2!53105 (hash!3821 hashF!1389 key!4968) (apply!12267 lt!1824829 (hash!3821 hashF!1389 key!4968)))))))

(declare-fun lt!1825360 () Unit!119516)

(declare-fun lt!1825364 () Unit!119516)

(assert (=> b!4663576 (= lt!1825360 lt!1825364)))

(assert (=> b!4663576 (contains!15144 (toList!5258 lt!1824829) (tuple2!53105 lt!1825363 lt!1825362))))

(assert (=> b!4663576 (= lt!1825364 (lemmaGetValueImpliesTupleContained!197 lt!1824829 lt!1825363 lt!1825362))))

(assert (=> b!4663576 e!2910101))

(declare-fun res!1962075 () Bool)

(assert (=> b!4663576 (=> (not res!1962075) (not e!2910101))))

(assert (=> b!4663576 (= res!1962075 (contains!15145 lt!1824829 lt!1825363))))

(assert (=> b!4663576 (= lt!1825362 (apply!12267 lt!1824829 (hash!3821 hashF!1389 key!4968)))))

(assert (=> b!4663576 (= lt!1825363 (hash!3821 hashF!1389 key!4968))))

(declare-fun lt!1825361 () Unit!119516)

(declare-fun lt!1825365 () Unit!119516)

(assert (=> b!4663576 (= lt!1825361 lt!1825365)))

(assert (=> b!4663576 (contains!15145 lt!1824829 (hash!3821 hashF!1389 key!4968))))

(assert (=> b!4663576 (= lt!1825365 (lemmaInGenMapThenLongMapContainsHash!598 lt!1824829 key!4968 hashF!1389))))

(assert (= (and d!1481498 res!1962076) b!4663574))

(assert (= (and b!4663574 res!1962077) b!4663575))

(assert (= (and b!4663575 res!1962078) b!4663576))

(assert (= (and b!4663576 res!1962075) b!4663577))

(declare-fun m!5548503 () Bool)

(assert (=> b!4663574 m!5548503))

(declare-fun m!5548505 () Bool)

(assert (=> d!1481498 m!5548505))

(declare-fun m!5548507 () Bool)

(assert (=> d!1481498 m!5548507))

(assert (=> d!1481498 m!5548505))

(declare-fun m!5548509 () Bool)

(assert (=> b!4663576 m!5548509))

(declare-fun m!5548511 () Bool)

(assert (=> b!4663576 m!5548511))

(assert (=> b!4663576 m!5547685))

(declare-fun m!5548513 () Bool)

(assert (=> b!4663576 m!5548513))

(assert (=> b!4663576 m!5547685))

(assert (=> b!4663576 m!5548509))

(assert (=> b!4663576 m!5547685))

(declare-fun m!5548515 () Bool)

(assert (=> b!4663576 m!5548515))

(assert (=> b!4663576 m!5548511))

(declare-fun m!5548517 () Bool)

(assert (=> b!4663576 m!5548517))

(declare-fun m!5548519 () Bool)

(assert (=> b!4663576 m!5548519))

(declare-fun m!5548521 () Bool)

(assert (=> b!4663576 m!5548521))

(assert (=> b!4663576 m!5547713))

(declare-fun m!5548523 () Bool)

(assert (=> b!4663576 m!5548523))

(declare-fun m!5548525 () Bool)

(assert (=> b!4663575 m!5548525))

(assert (=> b!4663575 m!5548525))

(declare-fun m!5548527 () Bool)

(assert (=> b!4663575 m!5548527))

(declare-fun m!5548529 () Bool)

(assert (=> b!4663577 m!5548529))

(assert (=> b!4663198 d!1481498))

(declare-fun d!1481500 () Bool)

(assert (=> d!1481500 (= (isDefined!9145 (getPair!392 lt!1824832 key!4968)) (not (isEmpty!29037 (getPair!392 lt!1824832 key!4968))))))

(declare-fun bs!1069556 () Bool)

(assert (= bs!1069556 d!1481500))

(assert (=> bs!1069556 m!5547691))

(declare-fun m!5548531 () Bool)

(assert (=> bs!1069556 m!5548531))

(assert (=> b!4663198 d!1481500))

(declare-fun bs!1069557 () Bool)

(declare-fun d!1481502 () Bool)

(assert (= bs!1069557 (and d!1481502 d!1481388)))

(declare-fun lambda!201027 () Int)

(assert (=> bs!1069557 (= lambda!201027 lambda!200981)))

(declare-fun bs!1069558 () Bool)

(assert (= bs!1069558 (and d!1481502 b!4663198)))

(assert (=> bs!1069558 (= lambda!201027 lambda!200884)))

(declare-fun bs!1069559 () Bool)

(assert (= bs!1069559 (and d!1481502 d!1481498)))

(assert (=> bs!1069559 (= lambda!201027 lambda!201024)))

(declare-fun bs!1069560 () Bool)

(assert (= bs!1069560 (and d!1481502 d!1481376)))

(assert (=> bs!1069560 (= lambda!201027 lambda!200970)))

(declare-fun bs!1069561 () Bool)

(assert (= bs!1069561 (and d!1481502 d!1481422)))

(assert (=> bs!1069561 (= lambda!201027 lambda!200991)))

(declare-fun bs!1069562 () Bool)

(assert (= bs!1069562 (and d!1481502 d!1481358)))

(assert (=> bs!1069562 (= lambda!201027 lambda!200965)))

(assert (=> d!1481502 (contains!15145 lt!1824829 (hash!3821 hashF!1389 key!4968))))

(declare-fun lt!1825368 () Unit!119516)

(declare-fun choose!32180 (ListLongMap!3811 K!13310 Hashable!6061) Unit!119516)

(assert (=> d!1481502 (= lt!1825368 (choose!32180 lt!1824829 key!4968 hashF!1389))))

(assert (=> d!1481502 (forall!11076 (toList!5258 lt!1824829) lambda!201027)))

(assert (=> d!1481502 (= (lemmaInGenMapThenLongMapContainsHash!598 lt!1824829 key!4968 hashF!1389) lt!1825368)))

(declare-fun bs!1069563 () Bool)

(assert (= bs!1069563 d!1481502))

(assert (=> bs!1069563 m!5547685))

(assert (=> bs!1069563 m!5547685))

(assert (=> bs!1069563 m!5548513))

(declare-fun m!5548533 () Bool)

(assert (=> bs!1069563 m!5548533))

(declare-fun m!5548535 () Bool)

(assert (=> bs!1069563 m!5548535))

(assert (=> b!4663198 d!1481502))

(declare-fun d!1481504 () Bool)

(declare-fun dynLambda!21624 (Int tuple2!53104) Bool)

(assert (=> d!1481504 (dynLambda!21624 lambda!200884 lt!1824820)))

(declare-fun lt!1825371 () Unit!119516)

(declare-fun choose!32181 (List!52089 Int tuple2!53104) Unit!119516)

(assert (=> d!1481504 (= lt!1825371 (choose!32181 lt!1824827 lambda!200884 lt!1824820))))

(declare-fun e!2910104 () Bool)

(assert (=> d!1481504 e!2910104))

(declare-fun res!1962081 () Bool)

(assert (=> d!1481504 (=> (not res!1962081) (not e!2910104))))

(assert (=> d!1481504 (= res!1962081 (forall!11076 lt!1824827 lambda!200884))))

(assert (=> d!1481504 (= (forallContained!3274 lt!1824827 lambda!200884 lt!1824820) lt!1825371)))

(declare-fun b!4663580 () Bool)

(assert (=> b!4663580 (= e!2910104 (contains!15144 lt!1824827 lt!1824820))))

(assert (= (and d!1481504 res!1962081) b!4663580))

(declare-fun b_lambda!175267 () Bool)

(assert (=> (not b_lambda!175267) (not d!1481504)))

(declare-fun m!5548537 () Bool)

(assert (=> d!1481504 m!5548537))

(declare-fun m!5548539 () Bool)

(assert (=> d!1481504 m!5548539))

(declare-fun m!5548541 () Bool)

(assert (=> d!1481504 m!5548541))

(assert (=> b!4663580 m!5547709))

(assert (=> b!4663198 d!1481504))

(declare-fun d!1481506 () Bool)

(declare-fun res!1962082 () Bool)

(declare-fun e!2910105 () Bool)

(assert (=> d!1481506 (=> res!1962082 e!2910105)))

(assert (=> d!1481506 (= res!1962082 (and ((_ is Cons!51964) oldBucket!40) (= (_1!29845 (h!58128 oldBucket!40)) key!4968)))))

(assert (=> d!1481506 (= (containsKey!2782 oldBucket!40 key!4968) e!2910105)))

(declare-fun b!4663581 () Bool)

(declare-fun e!2910106 () Bool)

(assert (=> b!4663581 (= e!2910105 e!2910106)))

(declare-fun res!1962083 () Bool)

(assert (=> b!4663581 (=> (not res!1962083) (not e!2910106))))

(assert (=> b!4663581 (= res!1962083 ((_ is Cons!51964) oldBucket!40))))

(declare-fun b!4663582 () Bool)

(assert (=> b!4663582 (= e!2910106 (containsKey!2782 (t!359208 oldBucket!40) key!4968))))

(assert (= (and d!1481506 (not res!1962082)) b!4663581))

(assert (= (and b!4663581 res!1962083) b!4663582))

(assert (=> b!4663582 m!5547711))

(assert (=> b!4663198 d!1481506))

(declare-fun d!1481508 () Bool)

(assert (=> d!1481508 (contains!15144 (toList!5258 lt!1824829) (tuple2!53105 lt!1824833 lt!1824832))))

(declare-fun lt!1825374 () Unit!119516)

(declare-fun choose!32182 (ListLongMap!3811 (_ BitVec 64) List!52088) Unit!119516)

(assert (=> d!1481508 (= lt!1825374 (choose!32182 lt!1824829 lt!1824833 lt!1824832))))

(assert (=> d!1481508 (contains!15145 lt!1824829 lt!1824833)))

(assert (=> d!1481508 (= (lemmaGetValueImpliesTupleContained!197 lt!1824829 lt!1824833 lt!1824832) lt!1825374)))

(declare-fun bs!1069564 () Bool)

(assert (= bs!1069564 d!1481508))

(declare-fun m!5548543 () Bool)

(assert (=> bs!1069564 m!5548543))

(declare-fun m!5548545 () Bool)

(assert (=> bs!1069564 m!5548545))

(assert (=> bs!1069564 m!5547707))

(assert (=> b!4663198 d!1481508))

(declare-fun d!1481510 () Bool)

(declare-fun res!1962084 () Bool)

(declare-fun e!2910107 () Bool)

(assert (=> d!1481510 (=> res!1962084 e!2910107)))

(assert (=> d!1481510 (= res!1962084 (not ((_ is Cons!51964) newBucket!224)))))

(assert (=> d!1481510 (= (noDuplicateKeys!1664 newBucket!224) e!2910107)))

(declare-fun b!4663584 () Bool)

(declare-fun e!2910108 () Bool)

(assert (=> b!4663584 (= e!2910107 e!2910108)))

(declare-fun res!1962085 () Bool)

(assert (=> b!4663584 (=> (not res!1962085) (not e!2910108))))

(assert (=> b!4663584 (= res!1962085 (not (containsKey!2782 (t!359208 newBucket!224) (_1!29845 (h!58128 newBucket!224)))))))

(declare-fun b!4663585 () Bool)

(assert (=> b!4663585 (= e!2910108 (noDuplicateKeys!1664 (t!359208 newBucket!224)))))

(assert (= (and d!1481510 (not res!1962084)) b!4663584))

(assert (= (and b!4663584 res!1962085) b!4663585))

(declare-fun m!5548547 () Bool)

(assert (=> b!4663584 m!5548547))

(declare-fun m!5548549 () Bool)

(assert (=> b!4663585 m!5548549))

(assert (=> b!4663195 d!1481510))

(declare-fun d!1481512 () Bool)

(declare-fun res!1962086 () Bool)

(declare-fun e!2910109 () Bool)

(assert (=> d!1481512 (=> res!1962086 e!2910109)))

(assert (=> d!1481512 (= res!1962086 (not ((_ is Cons!51964) (t!359208 oldBucket!40))))))

(assert (=> d!1481512 (= (noDuplicateKeys!1664 (t!359208 oldBucket!40)) e!2910109)))

(declare-fun b!4663586 () Bool)

(declare-fun e!2910110 () Bool)

(assert (=> b!4663586 (= e!2910109 e!2910110)))

(declare-fun res!1962087 () Bool)

(assert (=> b!4663586 (=> (not res!1962087) (not e!2910110))))

(assert (=> b!4663586 (= res!1962087 (not (containsKey!2782 (t!359208 (t!359208 oldBucket!40)) (_1!29845 (h!58128 (t!359208 oldBucket!40))))))))

(declare-fun b!4663587 () Bool)

(assert (=> b!4663587 (= e!2910110 (noDuplicateKeys!1664 (t!359208 (t!359208 oldBucket!40))))))

(assert (= (and d!1481512 (not res!1962086)) b!4663586))

(assert (= (and b!4663586 res!1962087) b!4663587))

(declare-fun m!5548551 () Bool)

(assert (=> b!4663586 m!5548551))

(declare-fun m!5548553 () Bool)

(assert (=> b!4663587 m!5548553))

(assert (=> b!4663196 d!1481512))

(declare-fun d!1481514 () Bool)

(assert (=> d!1481514 (= (eq!919 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965)) (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)) lt!1824819)) (= (content!9034 (toList!5257 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965)))) (content!9034 (toList!5257 (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)) lt!1824819)))))))

(declare-fun bs!1069565 () Bool)

(assert (= bs!1069565 d!1481514))

(declare-fun m!5548555 () Bool)

(assert (=> bs!1069565 m!5548555))

(declare-fun m!5548557 () Bool)

(assert (=> bs!1069565 m!5548557))

(assert (=> b!4663202 d!1481514))

(declare-fun bs!1069566 () Bool)

(declare-fun d!1481516 () Bool)

(assert (= bs!1069566 (and d!1481516 d!1481388)))

(declare-fun lambda!201028 () Int)

(assert (=> bs!1069566 (= lambda!201028 lambda!200981)))

(declare-fun bs!1069567 () Bool)

(assert (= bs!1069567 (and d!1481516 b!4663198)))

(assert (=> bs!1069567 (= lambda!201028 lambda!200884)))

(declare-fun bs!1069568 () Bool)

(assert (= bs!1069568 (and d!1481516 d!1481498)))

(assert (=> bs!1069568 (= lambda!201028 lambda!201024)))

(declare-fun bs!1069569 () Bool)

(assert (= bs!1069569 (and d!1481516 d!1481502)))

(assert (=> bs!1069569 (= lambda!201028 lambda!201027)))

(declare-fun bs!1069570 () Bool)

(assert (= bs!1069570 (and d!1481516 d!1481376)))

(assert (=> bs!1069570 (= lambda!201028 lambda!200970)))

(declare-fun bs!1069571 () Bool)

(assert (= bs!1069571 (and d!1481516 d!1481422)))

(assert (=> bs!1069571 (= lambda!201028 lambda!200991)))

(declare-fun bs!1069572 () Bool)

(assert (= bs!1069572 (and d!1481516 d!1481358)))

(assert (=> bs!1069572 (= lambda!201028 lambda!200965)))

(declare-fun lt!1825375 () ListMap!4597)

(assert (=> d!1481516 (invariantList!1318 (toList!5257 lt!1825375))))

(declare-fun e!2910111 () ListMap!4597)

(assert (=> d!1481516 (= lt!1825375 e!2910111)))

(declare-fun c!798317 () Bool)

(assert (=> d!1481516 (= c!798317 ((_ is Cons!51965) (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965)))))

(assert (=> d!1481516 (forall!11076 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965) lambda!201028)))

(assert (=> d!1481516 (= (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965)) lt!1825375)))

(declare-fun b!4663588 () Bool)

(assert (=> b!4663588 (= e!2910111 (addToMapMapFromBucket!1121 (_2!29846 (h!58129 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965))) (extractMap!1720 (t!359209 (Cons!51965 (tuple2!53105 hash!414 newBucket!224) Nil!51965)))))))

(declare-fun b!4663589 () Bool)

(assert (=> b!4663589 (= e!2910111 (ListMap!4598 Nil!51964))))

(assert (= (and d!1481516 c!798317) b!4663588))

(assert (= (and d!1481516 (not c!798317)) b!4663589))

(declare-fun m!5548559 () Bool)

(assert (=> d!1481516 m!5548559))

(declare-fun m!5548561 () Bool)

(assert (=> d!1481516 m!5548561))

(declare-fun m!5548563 () Bool)

(assert (=> b!4663588 m!5548563))

(assert (=> b!4663588 m!5548563))

(declare-fun m!5548565 () Bool)

(assert (=> b!4663588 m!5548565))

(assert (=> b!4663202 d!1481516))

(declare-fun d!1481518 () Bool)

(declare-fun e!2910112 () Bool)

(assert (=> d!1481518 e!2910112))

(declare-fun res!1962089 () Bool)

(assert (=> d!1481518 (=> (not res!1962089) (not e!2910112))))

(declare-fun lt!1825379 () ListMap!4597)

(assert (=> d!1481518 (= res!1962089 (contains!15143 lt!1825379 (_1!29845 lt!1824819)))))

(declare-fun lt!1825377 () List!52088)

(assert (=> d!1481518 (= lt!1825379 (ListMap!4598 lt!1825377))))

(declare-fun lt!1825378 () Unit!119516)

(declare-fun lt!1825376 () Unit!119516)

(assert (=> d!1481518 (= lt!1825378 lt!1825376)))

(assert (=> d!1481518 (= (getValueByKey!1649 lt!1825377 (_1!29845 lt!1824819)) (Some!11882 (_2!29845 lt!1824819)))))

(assert (=> d!1481518 (= lt!1825376 (lemmaContainsTupThenGetReturnValue!936 lt!1825377 (_1!29845 lt!1824819) (_2!29845 lt!1824819)))))

(assert (=> d!1481518 (= lt!1825377 (insertNoDuplicatedKeys!444 (toList!5257 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965))) (_1!29845 lt!1824819) (_2!29845 lt!1824819)))))

(assert (=> d!1481518 (= (+!2004 (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)) lt!1824819) lt!1825379)))

(declare-fun b!4663590 () Bool)

(declare-fun res!1962088 () Bool)

(assert (=> b!4663590 (=> (not res!1962088) (not e!2910112))))

(assert (=> b!4663590 (= res!1962088 (= (getValueByKey!1649 (toList!5257 lt!1825379) (_1!29845 lt!1824819)) (Some!11882 (_2!29845 lt!1824819))))))

(declare-fun b!4663591 () Bool)

(assert (=> b!4663591 (= e!2910112 (contains!15148 (toList!5257 lt!1825379) lt!1824819))))

(assert (= (and d!1481518 res!1962089) b!4663590))

(assert (= (and b!4663590 res!1962088) b!4663591))

(declare-fun m!5548567 () Bool)

(assert (=> d!1481518 m!5548567))

(declare-fun m!5548569 () Bool)

(assert (=> d!1481518 m!5548569))

(declare-fun m!5548571 () Bool)

(assert (=> d!1481518 m!5548571))

(declare-fun m!5548573 () Bool)

(assert (=> d!1481518 m!5548573))

(declare-fun m!5548575 () Bool)

(assert (=> b!4663590 m!5548575))

(declare-fun m!5548577 () Bool)

(assert (=> b!4663591 m!5548577))

(assert (=> b!4663202 d!1481518))

(declare-fun bs!1069573 () Bool)

(declare-fun d!1481520 () Bool)

(assert (= bs!1069573 (and d!1481520 d!1481388)))

(declare-fun lambda!201029 () Int)

(assert (=> bs!1069573 (= lambda!201029 lambda!200981)))

(declare-fun bs!1069574 () Bool)

(assert (= bs!1069574 (and d!1481520 b!4663198)))

(assert (=> bs!1069574 (= lambda!201029 lambda!200884)))

(declare-fun bs!1069575 () Bool)

(assert (= bs!1069575 (and d!1481520 d!1481498)))

(assert (=> bs!1069575 (= lambda!201029 lambda!201024)))

(declare-fun bs!1069576 () Bool)

(assert (= bs!1069576 (and d!1481520 d!1481502)))

(assert (=> bs!1069576 (= lambda!201029 lambda!201027)))

(declare-fun bs!1069577 () Bool)

(assert (= bs!1069577 (and d!1481520 d!1481376)))

(assert (=> bs!1069577 (= lambda!201029 lambda!200970)))

(declare-fun bs!1069578 () Bool)

(assert (= bs!1069578 (and d!1481520 d!1481358)))

(assert (=> bs!1069578 (= lambda!201029 lambda!200965)))

(declare-fun bs!1069579 () Bool)

(assert (= bs!1069579 (and d!1481520 d!1481422)))

(assert (=> bs!1069579 (= lambda!201029 lambda!200991)))

(declare-fun bs!1069580 () Bool)

(assert (= bs!1069580 (and d!1481520 d!1481516)))

(assert (=> bs!1069580 (= lambda!201029 lambda!201028)))

(declare-fun lt!1825380 () ListMap!4597)

(assert (=> d!1481520 (invariantList!1318 (toList!5257 lt!1825380))))

(declare-fun e!2910113 () ListMap!4597)

(assert (=> d!1481520 (= lt!1825380 e!2910113)))

(declare-fun c!798318 () Bool)

(assert (=> d!1481520 (= c!798318 ((_ is Cons!51965) (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)))))

(assert (=> d!1481520 (forall!11076 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965) lambda!201029)))

(assert (=> d!1481520 (= (extractMap!1720 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)) lt!1825380)))

(declare-fun b!4663592 () Bool)

(assert (=> b!4663592 (= e!2910113 (addToMapMapFromBucket!1121 (_2!29846 (h!58129 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965))) (extractMap!1720 (t!359209 (Cons!51965 (tuple2!53105 hash!414 lt!1824824) Nil!51965)))))))

(declare-fun b!4663593 () Bool)

(assert (=> b!4663593 (= e!2910113 (ListMap!4598 Nil!51964))))

(assert (= (and d!1481520 c!798318) b!4663592))

(assert (= (and d!1481520 (not c!798318)) b!4663593))

(declare-fun m!5548579 () Bool)

(assert (=> d!1481520 m!5548579))

(declare-fun m!5548581 () Bool)

(assert (=> d!1481520 m!5548581))

(declare-fun m!5548583 () Bool)

(assert (=> b!4663592 m!5548583))

(assert (=> b!4663592 m!5548583))

(declare-fun m!5548585 () Bool)

(assert (=> b!4663592 m!5548585))

(assert (=> b!4663202 d!1481520))

(declare-fun b!4663594 () Bool)

(assert (=> b!4663594 false))

(declare-fun lt!1825382 () Unit!119516)

(declare-fun lt!1825388 () Unit!119516)

(assert (=> b!4663594 (= lt!1825382 lt!1825388)))

(assert (=> b!4663594 (containsKey!2785 (toList!5257 lt!1824831) key!4968)))

(assert (=> b!4663594 (= lt!1825388 (lemmaInGetKeysListThenContainsKey!768 (toList!5257 lt!1824831) key!4968))))

(declare-fun e!2910118 () Unit!119516)

(declare-fun Unit!119636 () Unit!119516)

(assert (=> b!4663594 (= e!2910118 Unit!119636)))

(declare-fun b!4663595 () Bool)

(declare-fun e!2910119 () Bool)

(assert (=> b!4663595 (= e!2910119 (contains!15149 (keys!18432 lt!1824831) key!4968))))

(declare-fun d!1481522 () Bool)

(declare-fun e!2910116 () Bool)

(assert (=> d!1481522 e!2910116))

(declare-fun res!1962090 () Bool)

(assert (=> d!1481522 (=> res!1962090 e!2910116)))

(declare-fun e!2910117 () Bool)

(assert (=> d!1481522 (= res!1962090 e!2910117)))

(declare-fun res!1962092 () Bool)

(assert (=> d!1481522 (=> (not res!1962092) (not e!2910117))))

(declare-fun lt!1825386 () Bool)

(assert (=> d!1481522 (= res!1962092 (not lt!1825386))))

(declare-fun lt!1825385 () Bool)

(assert (=> d!1481522 (= lt!1825386 lt!1825385)))

(declare-fun lt!1825387 () Unit!119516)

(declare-fun e!2910114 () Unit!119516)

(assert (=> d!1481522 (= lt!1825387 e!2910114)))

(declare-fun c!798321 () Bool)

(assert (=> d!1481522 (= c!798321 lt!1825385)))

(assert (=> d!1481522 (= lt!1825385 (containsKey!2785 (toList!5257 lt!1824831) key!4968))))

(assert (=> d!1481522 (= (contains!15143 lt!1824831 key!4968) lt!1825386)))

(declare-fun b!4663596 () Bool)

(assert (=> b!4663596 (= e!2910114 e!2910118)))

(declare-fun c!798319 () Bool)

(declare-fun call!325839 () Bool)

(assert (=> b!4663596 (= c!798319 call!325839)))

(declare-fun b!4663597 () Bool)

(assert (=> b!4663597 (= e!2910116 e!2910119)))

(declare-fun res!1962091 () Bool)

(assert (=> b!4663597 (=> (not res!1962091) (not e!2910119))))

(assert (=> b!4663597 (= res!1962091 (isDefined!9148 (getValueByKey!1649 (toList!5257 lt!1824831) key!4968)))))

(declare-fun b!4663598 () Bool)

(declare-fun e!2910115 () List!52091)

(assert (=> b!4663598 (= e!2910115 (keys!18432 lt!1824831))))

(declare-fun b!4663599 () Bool)

(assert (=> b!4663599 (= e!2910115 (getKeysList!769 (toList!5257 lt!1824831)))))

(declare-fun bm!325834 () Bool)

(assert (=> bm!325834 (= call!325839 (contains!15149 e!2910115 key!4968))))

(declare-fun c!798320 () Bool)

(assert (=> bm!325834 (= c!798320 c!798321)))

(declare-fun b!4663600 () Bool)

(assert (=> b!4663600 (= e!2910117 (not (contains!15149 (keys!18432 lt!1824831) key!4968)))))

(declare-fun b!4663601 () Bool)

(declare-fun Unit!119637 () Unit!119516)

(assert (=> b!4663601 (= e!2910118 Unit!119637)))

(declare-fun b!4663602 () Bool)

(declare-fun lt!1825383 () Unit!119516)

(assert (=> b!4663602 (= e!2910114 lt!1825383)))

(declare-fun lt!1825381 () Unit!119516)

(assert (=> b!4663602 (= lt!1825381 (lemmaContainsKeyImpliesGetValueByKeyDefined!1551 (toList!5257 lt!1824831) key!4968))))

(assert (=> b!4663602 (isDefined!9148 (getValueByKey!1649 (toList!5257 lt!1824831) key!4968))))

(declare-fun lt!1825384 () Unit!119516)

(assert (=> b!4663602 (= lt!1825384 lt!1825381)))

(assert (=> b!4663602 (= lt!1825383 (lemmaInListThenGetKeysListContains!764 (toList!5257 lt!1824831) key!4968))))

(assert (=> b!4663602 call!325839))

(assert (= (and d!1481522 c!798321) b!4663602))

(assert (= (and d!1481522 (not c!798321)) b!4663596))

(assert (= (and b!4663596 c!798319) b!4663594))

(assert (= (and b!4663596 (not c!798319)) b!4663601))

(assert (= (or b!4663602 b!4663596) bm!325834))

(assert (= (and bm!325834 c!798320) b!4663599))

(assert (= (and bm!325834 (not c!798320)) b!4663598))

(assert (= (and d!1481522 res!1962092) b!4663600))

(assert (= (and d!1481522 (not res!1962090)) b!4663597))

(assert (= (and b!4663597 res!1962091) b!4663595))

(declare-fun m!5548587 () Bool)

(assert (=> b!4663599 m!5548587))

(declare-fun m!5548589 () Bool)

(assert (=> d!1481522 m!5548589))

(declare-fun m!5548591 () Bool)

(assert (=> b!4663602 m!5548591))

(declare-fun m!5548593 () Bool)

(assert (=> b!4663602 m!5548593))

(assert (=> b!4663602 m!5548593))

(declare-fun m!5548595 () Bool)

(assert (=> b!4663602 m!5548595))

(declare-fun m!5548597 () Bool)

(assert (=> b!4663602 m!5548597))

(declare-fun m!5548599 () Bool)

(assert (=> b!4663598 m!5548599))

(declare-fun m!5548601 () Bool)

(assert (=> bm!325834 m!5548601))

(assert (=> b!4663594 m!5548589))

(declare-fun m!5548603 () Bool)

(assert (=> b!4663594 m!5548603))

(assert (=> b!4663597 m!5548593))

(assert (=> b!4663597 m!5548593))

(assert (=> b!4663597 m!5548595))

(assert (=> b!4663595 m!5548599))

(assert (=> b!4663595 m!5548599))

(declare-fun m!5548605 () Bool)

(assert (=> b!4663595 m!5548605))

(assert (=> b!4663600 m!5548599))

(assert (=> b!4663600 m!5548599))

(assert (=> b!4663600 m!5548605))

(assert (=> b!4663193 d!1481522))

(declare-fun bs!1069581 () Bool)

(declare-fun d!1481524 () Bool)

(assert (= bs!1069581 (and d!1481524 d!1481388)))

(declare-fun lambda!201030 () Int)

(assert (=> bs!1069581 (= lambda!201030 lambda!200981)))

(declare-fun bs!1069582 () Bool)

(assert (= bs!1069582 (and d!1481524 b!4663198)))

(assert (=> bs!1069582 (= lambda!201030 lambda!200884)))

(declare-fun bs!1069583 () Bool)

(assert (= bs!1069583 (and d!1481524 d!1481520)))

(assert (=> bs!1069583 (= lambda!201030 lambda!201029)))

(declare-fun bs!1069584 () Bool)

(assert (= bs!1069584 (and d!1481524 d!1481498)))

(assert (=> bs!1069584 (= lambda!201030 lambda!201024)))

(declare-fun bs!1069585 () Bool)

(assert (= bs!1069585 (and d!1481524 d!1481502)))

(assert (=> bs!1069585 (= lambda!201030 lambda!201027)))

(declare-fun bs!1069586 () Bool)

(assert (= bs!1069586 (and d!1481524 d!1481376)))

(assert (=> bs!1069586 (= lambda!201030 lambda!200970)))

(declare-fun bs!1069587 () Bool)

(assert (= bs!1069587 (and d!1481524 d!1481358)))

(assert (=> bs!1069587 (= lambda!201030 lambda!200965)))

(declare-fun bs!1069588 () Bool)

(assert (= bs!1069588 (and d!1481524 d!1481422)))

(assert (=> bs!1069588 (= lambda!201030 lambda!200991)))

(declare-fun bs!1069589 () Bool)

(assert (= bs!1069589 (and d!1481524 d!1481516)))

(assert (=> bs!1069589 (= lambda!201030 lambda!201028)))

(declare-fun lt!1825389 () ListMap!4597)

(assert (=> d!1481524 (invariantList!1318 (toList!5257 lt!1825389))))

(declare-fun e!2910120 () ListMap!4597)

(assert (=> d!1481524 (= lt!1825389 e!2910120)))

(declare-fun c!798322 () Bool)

(assert (=> d!1481524 (= c!798322 ((_ is Cons!51965) lt!1824827))))

(assert (=> d!1481524 (forall!11076 lt!1824827 lambda!201030)))

(assert (=> d!1481524 (= (extractMap!1720 lt!1824827) lt!1825389)))

(declare-fun b!4663603 () Bool)

(assert (=> b!4663603 (= e!2910120 (addToMapMapFromBucket!1121 (_2!29846 (h!58129 lt!1824827)) (extractMap!1720 (t!359209 lt!1824827))))))

(declare-fun b!4663604 () Bool)

(assert (=> b!4663604 (= e!2910120 (ListMap!4598 Nil!51964))))

(assert (= (and d!1481524 c!798322) b!4663603))

(assert (= (and d!1481524 (not c!798322)) b!4663604))

(declare-fun m!5548607 () Bool)

(assert (=> d!1481524 m!5548607))

(declare-fun m!5548609 () Bool)

(assert (=> d!1481524 m!5548609))

(declare-fun m!5548611 () Bool)

(assert (=> b!4663603 m!5548611))

(assert (=> b!4663603 m!5548611))

(declare-fun m!5548613 () Bool)

(assert (=> b!4663603 m!5548613))

(assert (=> b!4663193 d!1481524))

(declare-fun b!4663609 () Bool)

(declare-fun e!2910123 () Bool)

(declare-fun tp!1343566 () Bool)

(assert (=> b!4663609 (= e!2910123 (and tp_is_empty!29949 tp_is_empty!29951 tp!1343566))))

(assert (=> b!4663194 (= tp!1343559 e!2910123)))

(assert (= (and b!4663194 ((_ is Cons!51964) (t!359208 newBucket!224))) b!4663609))

(declare-fun b!4663610 () Bool)

(declare-fun e!2910124 () Bool)

(declare-fun tp!1343567 () Bool)

(assert (=> b!4663610 (= e!2910124 (and tp_is_empty!29949 tp_is_empty!29951 tp!1343567))))

(assert (=> b!4663188 (= tp!1343558 e!2910124)))

(assert (= (and b!4663188 ((_ is Cons!51964) (t!359208 oldBucket!40))) b!4663610))

(declare-fun b_lambda!175269 () Bool)

(assert (= b_lambda!175267 (or b!4663198 b_lambda!175269)))

(declare-fun bs!1069590 () Bool)

(declare-fun d!1481526 () Bool)

(assert (= bs!1069590 (and d!1481526 b!4663198)))

(assert (=> bs!1069590 (= (dynLambda!21624 lambda!200884 lt!1824820) (noDuplicateKeys!1664 (_2!29846 lt!1824820)))))

(declare-fun m!5548615 () Bool)

(assert (=> bs!1069590 m!5548615))

(assert (=> d!1481504 d!1481526))

(check-sat (not d!1481462) (not b!4663398) (not d!1481414) (not d!1481438) (not b!4663586) (not b!4663587) (not bm!325809) (not b!4663592) (not b!4663526) (not b!4663562) (not b!4663364) (not d!1481358) (not b!4663580) (not d!1481494) (not b!4663319) (not b!4663356) (not bs!1069590) (not bm!325815) (not b!4663447) (not b!4663396) (not b!4663599) (not b!4663362) (not d!1481488) (not b!4663519) (not bm!325803) (not d!1481492) (not bm!325827) (not b!4663468) (not b!4663407) (not b!4663317) (not b!4663315) (not d!1481480) (not b!4663444) (not bm!325829) (not d!1481486) (not b!4663452) (not b!4663588) (not b!4663584) (not b!4663600) (not d!1481518) (not d!1481418) (not b!4663591) (not d!1481476) (not d!1481436) (not b!4663576) (not b!4663441) (not b!4663577) (not b!4663574) (not bm!325804) (not b!4663503) (not d!1481422) (not b!4663405) (not b!4663449) (not bm!325811) tp_is_empty!29951 (not d!1481376) (not d!1481440) (not d!1481496) (not b!4663609) (not b!4663602) (not b!4663603) (not b!4663454) (not bm!325806) tp_is_empty!29949 (not bm!325808) (not b!4663590) (not d!1481516) (not bm!325807) (not d!1481500) (not d!1481498) (not b!4663541) (not d!1481424) (not b!4663352) (not b!4663442) (not b!4663597) (not d!1481478) (not b!4663461) (not d!1481522) (not b!4663450) (not bm!325826) (not d!1481472) (not d!1481504) (not d!1481408) (not b!4663564) (not b!4663559) (not b!4663469) (not bm!325834) (not b!4663610) (not d!1481444) (not b!4663563) (not b!4663515) (not bm!325816) (not bm!325828) (not b!4663360) (not b!4663354) (not b!4663575) (not b!4663585) (not b!4663445) (not bm!325805) (not d!1481450) (not b_lambda!175269) (not d!1481368) (not b!4663595) (not d!1481388) (not b!4663582) (not b!4663463) (not d!1481524) (not d!1481380) (not d!1481446) (not b!4663598) (not b!4663400) (not d!1481514) (not d!1481520) (not b!4663532) (not b!4663462) (not d!1481508) (not d!1481502) (not b!4663561) (not b!4663539) (not b!4663366) (not b!4663460) (not d!1481416) (not b!4663406) (not b!4663594) (not bm!325817) (not b!4663446) (not bm!325810) (not d!1481396) (not d!1481344) (not b!4663348))
(check-sat)
