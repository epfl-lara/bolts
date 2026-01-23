; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463104 () Bool)

(assert start!463104)

(declare-fun b!4622980 () Bool)

(declare-fun res!1938210 () Bool)

(declare-fun e!2883715 () Bool)

(assert (=> b!4622980 (=> (not res!1938210) (not e!2883715))))

(declare-datatypes ((Hashable!5891 0))(
  ( (HashableExt!5890 (__x!31594 Int)) )
))
(declare-fun hashF!1389 () Hashable!5891)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12885 0))(
  ( (K!12886 (val!18579 Int)) )
))
(declare-datatypes ((V!13131 0))(
  ( (V!13132 (val!18580 Int)) )
))
(declare-datatypes ((tuple2!52422 0))(
  ( (tuple2!52423 (_1!29505 K!12885) (_2!29505 V!13131)) )
))
(declare-datatypes ((List!51626 0))(
  ( (Nil!51502) (Cons!51502 (h!57544 tuple2!52422) (t!358650 List!51626)) )
))
(declare-fun oldBucket!40 () List!51626)

(declare-fun allKeysSameHash!1348 (List!51626 (_ BitVec 64) Hashable!5891) Bool)

(assert (=> b!4622980 (= res!1938210 (allKeysSameHash!1348 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4622981 () Bool)

(declare-fun e!2883714 () Bool)

(declare-fun e!2883711 () Bool)

(assert (=> b!4622981 (= e!2883714 e!2883711)))

(declare-fun res!1938220 () Bool)

(assert (=> b!4622981 (=> res!1938220 e!2883711)))

(declare-fun key!4968 () K!12885)

(declare-fun containsKey!2418 (List!51626 K!12885) Bool)

(assert (=> b!4622981 (= res!1938220 (not (containsKey!2418 (t!358650 oldBucket!40) key!4968)))))

(assert (=> b!4622981 (containsKey!2418 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!111517 0))(
  ( (Unit!111518) )
))
(declare-fun lt!1779897 () Unit!111517)

(declare-fun lemmaGetPairDefinedThenContainsKey!40 (List!51626 K!12885 Hashable!5891) Unit!111517)

(assert (=> b!4622981 (= lt!1779897 (lemmaGetPairDefinedThenContainsKey!40 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1779909 () List!51626)

(declare-datatypes ((Option!11560 0))(
  ( (None!11559) (Some!11559 (v!45669 tuple2!52422)) )
))
(declare-fun isDefined!8825 (Option!11560) Bool)

(declare-fun getPair!286 (List!51626 K!12885) Option!11560)

(assert (=> b!4622981 (isDefined!8825 (getPair!286 lt!1779909 key!4968))))

(declare-fun lt!1779902 () Unit!111517)

(declare-fun lambda!191354 () Int)

(declare-datatypes ((tuple2!52424 0))(
  ( (tuple2!52425 (_1!29506 (_ BitVec 64)) (_2!29506 List!51626)) )
))
(declare-datatypes ((List!51627 0))(
  ( (Nil!51503) (Cons!51503 (h!57545 tuple2!52424) (t!358651 List!51627)) )
))
(declare-fun lt!1779901 () List!51627)

(declare-fun lt!1779898 () tuple2!52424)

(declare-fun forallContained!3030 (List!51627 Int tuple2!52424) Unit!111517)

(assert (=> b!4622981 (= lt!1779902 (forallContained!3030 lt!1779901 lambda!191354 lt!1779898))))

(declare-fun contains!14525 (List!51627 tuple2!52424) Bool)

(assert (=> b!4622981 (contains!14525 lt!1779901 lt!1779898)))

(declare-fun lt!1779894 () (_ BitVec 64))

(assert (=> b!4622981 (= lt!1779898 (tuple2!52425 lt!1779894 lt!1779909))))

(declare-datatypes ((ListLongMap!3543 0))(
  ( (ListLongMap!3544 (toList!4953 List!51627)) )
))
(declare-fun lt!1779890 () ListLongMap!3543)

(declare-fun lt!1779903 () Unit!111517)

(declare-fun lemmaGetValueImpliesTupleContained!91 (ListLongMap!3543 (_ BitVec 64) List!51626) Unit!111517)

(assert (=> b!4622981 (= lt!1779903 (lemmaGetValueImpliesTupleContained!91 lt!1779890 lt!1779894 lt!1779909))))

(declare-fun apply!12159 (ListLongMap!3543 (_ BitVec 64)) List!51626)

(assert (=> b!4622981 (= lt!1779909 (apply!12159 lt!1779890 lt!1779894))))

(declare-fun contains!14526 (ListLongMap!3543 (_ BitVec 64)) Bool)

(assert (=> b!4622981 (contains!14526 lt!1779890 lt!1779894)))

(declare-fun lt!1779900 () Unit!111517)

(declare-fun lemmaInGenMapThenLongMapContainsHash!492 (ListLongMap!3543 K!12885 Hashable!5891) Unit!111517)

(assert (=> b!4622981 (= lt!1779900 (lemmaInGenMapThenLongMapContainsHash!492 lt!1779890 key!4968 hashF!1389))))

(declare-fun lt!1779908 () Unit!111517)

(declare-fun lemmaInGenMapThenGetPairDefined!82 (ListLongMap!3543 K!12885 Hashable!5891) Unit!111517)

(assert (=> b!4622981 (= lt!1779908 (lemmaInGenMapThenGetPairDefined!82 lt!1779890 key!4968 hashF!1389))))

(assert (=> b!4622981 (= lt!1779890 (ListLongMap!3544 lt!1779901))))

(declare-fun b!4622982 () Bool)

(declare-fun e!2883719 () Bool)

(assert (=> b!4622982 (= e!2883711 e!2883719)))

(declare-fun res!1938221 () Bool)

(assert (=> b!4622982 (=> res!1938221 e!2883719)))

(declare-fun lt!1779895 () List!51626)

(declare-fun lt!1779907 () List!51626)

(declare-fun removePairForKey!1117 (List!51626 K!12885) List!51626)

(assert (=> b!4622982 (= res!1938221 (not (= (removePairForKey!1117 lt!1779895 key!4968) lt!1779907)))))

(declare-fun newBucket!224 () List!51626)

(declare-fun tail!8129 (List!51626) List!51626)

(assert (=> b!4622982 (= lt!1779907 (tail!8129 newBucket!224))))

(assert (=> b!4622982 (= lt!1779895 (tail!8129 oldBucket!40))))

(declare-fun b!4622983 () Bool)

(declare-fun res!1938222 () Bool)

(declare-fun e!2883720 () Bool)

(assert (=> b!4622983 (=> (not res!1938222) (not e!2883720))))

(assert (=> b!4622983 (= res!1938222 (allKeysSameHash!1348 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4622984 () Bool)

(declare-fun res!1938214 () Bool)

(assert (=> b!4622984 (=> (not res!1938214) (not e!2883715))))

(assert (=> b!4622984 (= res!1938214 (= (removePairForKey!1117 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1938213 () Bool)

(assert (=> start!463104 (=> (not res!1938213) (not e!2883715))))

(declare-fun noDuplicateKeys!1494 (List!51626) Bool)

(assert (=> start!463104 (= res!1938213 (noDuplicateKeys!1494 oldBucket!40))))

(assert (=> start!463104 e!2883715))

(assert (=> start!463104 true))

(declare-fun e!2883718 () Bool)

(assert (=> start!463104 e!2883718))

(declare-fun tp_is_empty!29269 () Bool)

(assert (=> start!463104 tp_is_empty!29269))

(declare-fun e!2883713 () Bool)

(assert (=> start!463104 e!2883713))

(declare-fun b!4622985 () Bool)

(declare-fun e!2883717 () Bool)

(assert (=> b!4622985 (= e!2883717 (not (= newBucket!224 Nil!51502)))))

(declare-datatypes ((ListMap!4257 0))(
  ( (ListMap!4258 (toList!4954 List!51626)) )
))
(declare-fun lt!1779889 () ListMap!4257)

(declare-fun extractMap!1550 (List!51627) ListMap!4257)

(assert (=> b!4622985 (= lt!1779889 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779907) Nil!51503)))))

(declare-fun lt!1779892 () ListMap!4257)

(assert (=> b!4622985 (= lt!1779892 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 newBucket!224) Nil!51503)))))

(declare-fun b!4622986 () Bool)

(declare-fun res!1938216 () Bool)

(assert (=> b!4622986 (=> (not res!1938216) (not e!2883715))))

(assert (=> b!4622986 (= res!1938216 (noDuplicateKeys!1494 newBucket!224))))

(declare-fun b!4622987 () Bool)

(declare-fun res!1938212 () Bool)

(assert (=> b!4622987 (=> res!1938212 e!2883719)))

(assert (=> b!4622987 (= res!1938212 (not (= (removePairForKey!1117 (t!358650 oldBucket!40) key!4968) lt!1779907)))))

(declare-fun b!4622988 () Bool)

(declare-fun e!2883716 () Bool)

(assert (=> b!4622988 (= e!2883715 e!2883716)))

(declare-fun res!1938211 () Bool)

(assert (=> b!4622988 (=> (not res!1938211) (not e!2883716))))

(declare-fun lt!1779904 () ListMap!4257)

(declare-fun contains!14527 (ListMap!4257 K!12885) Bool)

(assert (=> b!4622988 (= res!1938211 (contains!14527 lt!1779904 key!4968))))

(assert (=> b!4622988 (= lt!1779904 (extractMap!1550 lt!1779901))))

(assert (=> b!4622988 (= lt!1779901 (Cons!51503 (tuple2!52425 hash!414 oldBucket!40) Nil!51503))))

(declare-fun b!4622989 () Bool)

(declare-fun tp_is_empty!29271 () Bool)

(declare-fun tp!1342002 () Bool)

(assert (=> b!4622989 (= e!2883718 (and tp_is_empty!29269 tp_is_empty!29271 tp!1342002))))

(declare-fun b!4622990 () Bool)

(assert (=> b!4622990 (= e!2883720 (not e!2883714))))

(declare-fun res!1938219 () Bool)

(assert (=> b!4622990 (=> res!1938219 e!2883714)))

(get-info :version)

(assert (=> b!4622990 (= res!1938219 (or (and ((_ is Cons!51502) oldBucket!40) (= (_1!29505 (h!57544 oldBucket!40)) key!4968)) (not ((_ is Cons!51502) oldBucket!40)) (= (_1!29505 (h!57544 oldBucket!40)) key!4968)))))

(declare-fun e!2883712 () Bool)

(assert (=> b!4622990 e!2883712))

(declare-fun res!1938217 () Bool)

(assert (=> b!4622990 (=> (not res!1938217) (not e!2883712))))

(declare-fun lt!1779891 () ListMap!4257)

(declare-fun addToMapMapFromBucket!955 (List!51626 ListMap!4257) ListMap!4257)

(assert (=> b!4622990 (= res!1938217 (= lt!1779904 (addToMapMapFromBucket!955 oldBucket!40 lt!1779891)))))

(assert (=> b!4622990 (= lt!1779891 (extractMap!1550 Nil!51503))))

(assert (=> b!4622990 true))

(declare-fun b!4622991 () Bool)

(assert (=> b!4622991 (= e!2883716 e!2883720)))

(declare-fun res!1938215 () Bool)

(assert (=> b!4622991 (=> (not res!1938215) (not e!2883720))))

(assert (=> b!4622991 (= res!1938215 (= lt!1779894 hash!414))))

(declare-fun hash!3475 (Hashable!5891 K!12885) (_ BitVec 64))

(assert (=> b!4622991 (= lt!1779894 (hash!3475 hashF!1389 key!4968))))

(declare-fun b!4622992 () Bool)

(assert (=> b!4622992 (= e!2883719 e!2883717)))

(declare-fun res!1938218 () Bool)

(assert (=> b!4622992 (=> res!1938218 e!2883717)))

(declare-fun eq!809 (ListMap!4257 ListMap!4257) Bool)

(declare-fun +!1860 (ListMap!4257 tuple2!52422) ListMap!4257)

(assert (=> b!4622992 (= res!1938218 (not (eq!809 lt!1779904 (+!1860 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)) (h!57544 oldBucket!40)))))))

(declare-fun lt!1779893 () tuple2!52422)

(assert (=> b!4622992 (eq!809 (addToMapMapFromBucket!955 (Cons!51502 lt!1779893 lt!1779907) (ListMap!4258 Nil!51502)) (+!1860 (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502)) lt!1779893))))

(declare-fun lt!1779888 () Unit!111517)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!60 (tuple2!52422 List!51626 ListMap!4257) Unit!111517)

(assert (=> b!4622992 (= lt!1779888 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!60 lt!1779893 lt!1779907 (ListMap!4258 Nil!51502)))))

(declare-fun head!9628 (List!51626) tuple2!52422)

(assert (=> b!4622992 (= lt!1779893 (head!9628 newBucket!224))))

(declare-fun lt!1779906 () tuple2!52422)

(assert (=> b!4622992 (eq!809 (addToMapMapFromBucket!955 (Cons!51502 lt!1779906 lt!1779895) (ListMap!4258 Nil!51502)) (+!1860 (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502)) lt!1779906))))

(declare-fun lt!1779899 () Unit!111517)

(assert (=> b!4622992 (= lt!1779899 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!60 lt!1779906 lt!1779895 (ListMap!4258 Nil!51502)))))

(assert (=> b!4622992 (= lt!1779906 (head!9628 oldBucket!40))))

(declare-fun lt!1779905 () List!51627)

(assert (=> b!4622992 (contains!14527 (extractMap!1550 lt!1779905) key!4968)))

(declare-fun lt!1779896 () Unit!111517)

(declare-fun lemmaListContainsThenExtractedMapContains!312 (ListLongMap!3543 K!12885 Hashable!5891) Unit!111517)

(assert (=> b!4622992 (= lt!1779896 (lemmaListContainsThenExtractedMapContains!312 (ListLongMap!3544 lt!1779905) key!4968 hashF!1389))))

(assert (=> b!4622992 (= lt!1779905 (Cons!51503 (tuple2!52425 hash!414 (t!358650 oldBucket!40)) Nil!51503))))

(declare-fun b!4622993 () Bool)

(declare-fun tp!1342003 () Bool)

(assert (=> b!4622993 (= e!2883713 (and tp_is_empty!29269 tp_is_empty!29271 tp!1342003))))

(declare-fun b!4622994 () Bool)

(assert (=> b!4622994 (= e!2883712 (= lt!1779891 (ListMap!4258 Nil!51502)))))

(assert (= (and start!463104 res!1938213) b!4622986))

(assert (= (and b!4622986 res!1938216) b!4622984))

(assert (= (and b!4622984 res!1938214) b!4622980))

(assert (= (and b!4622980 res!1938210) b!4622988))

(assert (= (and b!4622988 res!1938211) b!4622991))

(assert (= (and b!4622991 res!1938215) b!4622983))

(assert (= (and b!4622983 res!1938222) b!4622990))

(assert (= (and b!4622990 res!1938217) b!4622994))

(assert (= (and b!4622990 (not res!1938219)) b!4622981))

(assert (= (and b!4622981 (not res!1938220)) b!4622982))

(assert (= (and b!4622982 (not res!1938221)) b!4622987))

(assert (= (and b!4622987 (not res!1938212)) b!4622992))

(assert (= (and b!4622992 (not res!1938218)) b!4622985))

(assert (= (and start!463104 ((_ is Cons!51502) oldBucket!40)) b!4622989))

(assert (= (and start!463104 ((_ is Cons!51502) newBucket!224)) b!4622993))

(declare-fun m!5461729 () Bool)

(assert (=> b!4622991 m!5461729))

(declare-fun m!5461731 () Bool)

(assert (=> b!4622986 m!5461731))

(declare-fun m!5461733 () Bool)

(assert (=> start!463104 m!5461733))

(declare-fun m!5461735 () Bool)

(assert (=> b!4622984 m!5461735))

(declare-fun m!5461737 () Bool)

(assert (=> b!4622981 m!5461737))

(declare-fun m!5461739 () Bool)

(assert (=> b!4622981 m!5461739))

(declare-fun m!5461741 () Bool)

(assert (=> b!4622981 m!5461741))

(declare-fun m!5461743 () Bool)

(assert (=> b!4622981 m!5461743))

(declare-fun m!5461745 () Bool)

(assert (=> b!4622981 m!5461745))

(declare-fun m!5461747 () Bool)

(assert (=> b!4622981 m!5461747))

(declare-fun m!5461749 () Bool)

(assert (=> b!4622981 m!5461749))

(declare-fun m!5461751 () Bool)

(assert (=> b!4622981 m!5461751))

(assert (=> b!4622981 m!5461749))

(declare-fun m!5461753 () Bool)

(assert (=> b!4622981 m!5461753))

(declare-fun m!5461755 () Bool)

(assert (=> b!4622981 m!5461755))

(declare-fun m!5461757 () Bool)

(assert (=> b!4622981 m!5461757))

(declare-fun m!5461759 () Bool)

(assert (=> b!4622981 m!5461759))

(declare-fun m!5461761 () Bool)

(assert (=> b!4622992 m!5461761))

(declare-fun m!5461763 () Bool)

(assert (=> b!4622992 m!5461763))

(declare-fun m!5461765 () Bool)

(assert (=> b!4622992 m!5461765))

(declare-fun m!5461767 () Bool)

(assert (=> b!4622992 m!5461767))

(declare-fun m!5461769 () Bool)

(assert (=> b!4622992 m!5461769))

(declare-fun m!5461771 () Bool)

(assert (=> b!4622992 m!5461771))

(declare-fun m!5461773 () Bool)

(assert (=> b!4622992 m!5461773))

(declare-fun m!5461775 () Bool)

(assert (=> b!4622992 m!5461775))

(declare-fun m!5461777 () Bool)

(assert (=> b!4622992 m!5461777))

(assert (=> b!4622992 m!5461763))

(declare-fun m!5461779 () Bool)

(assert (=> b!4622992 m!5461779))

(assert (=> b!4622992 m!5461777))

(assert (=> b!4622992 m!5461773))

(declare-fun m!5461781 () Bool)

(assert (=> b!4622992 m!5461781))

(assert (=> b!4622992 m!5461769))

(declare-fun m!5461783 () Bool)

(assert (=> b!4622992 m!5461783))

(assert (=> b!4622992 m!5461771))

(declare-fun m!5461785 () Bool)

(assert (=> b!4622992 m!5461785))

(declare-fun m!5461787 () Bool)

(assert (=> b!4622992 m!5461787))

(assert (=> b!4622992 m!5461787))

(assert (=> b!4622992 m!5461765))

(declare-fun m!5461789 () Bool)

(assert (=> b!4622992 m!5461789))

(declare-fun m!5461791 () Bool)

(assert (=> b!4622992 m!5461791))

(assert (=> b!4622992 m!5461781))

(declare-fun m!5461793 () Bool)

(assert (=> b!4622992 m!5461793))

(assert (=> b!4622992 m!5461783))

(declare-fun m!5461795 () Bool)

(assert (=> b!4622992 m!5461795))

(declare-fun m!5461797 () Bool)

(assert (=> b!4622980 m!5461797))

(declare-fun m!5461799 () Bool)

(assert (=> b!4622988 m!5461799))

(declare-fun m!5461801 () Bool)

(assert (=> b!4622988 m!5461801))

(declare-fun m!5461803 () Bool)

(assert (=> b!4622990 m!5461803))

(declare-fun m!5461805 () Bool)

(assert (=> b!4622990 m!5461805))

(declare-fun m!5461807 () Bool)

(assert (=> b!4622987 m!5461807))

(declare-fun m!5461809 () Bool)

(assert (=> b!4622985 m!5461809))

(declare-fun m!5461811 () Bool)

(assert (=> b!4622985 m!5461811))

(declare-fun m!5461813 () Bool)

(assert (=> b!4622982 m!5461813))

(declare-fun m!5461815 () Bool)

(assert (=> b!4622982 m!5461815))

(declare-fun m!5461817 () Bool)

(assert (=> b!4622982 m!5461817))

(declare-fun m!5461819 () Bool)

(assert (=> b!4622983 m!5461819))

(check-sat (not b!4622989) (not b!4622983) (not b!4622991) (not b!4622993) (not b!4622988) (not b!4622992) (not b!4622984) tp_is_empty!29269 (not start!463104) (not b!4622990) (not b!4622985) tp_is_empty!29271 (not b!4622980) (not b!4622982) (not b!4622986) (not b!4622981) (not b!4622987))
(check-sat)
(get-model)

(declare-fun b!4623022 () Bool)

(declare-fun e!2883732 () List!51626)

(assert (=> b!4623022 (= e!2883732 Nil!51502)))

(declare-fun b!4623020 () Bool)

(declare-fun e!2883731 () List!51626)

(assert (=> b!4623020 (= e!2883731 e!2883732)))

(declare-fun c!791345 () Bool)

(assert (=> b!4623020 (= c!791345 ((_ is Cons!51502) oldBucket!40))))

(declare-fun d!1456057 () Bool)

(declare-fun lt!1779915 () List!51626)

(assert (=> d!1456057 (not (containsKey!2418 lt!1779915 key!4968))))

(assert (=> d!1456057 (= lt!1779915 e!2883731)))

(declare-fun c!791346 () Bool)

(assert (=> d!1456057 (= c!791346 (and ((_ is Cons!51502) oldBucket!40) (= (_1!29505 (h!57544 oldBucket!40)) key!4968)))))

(assert (=> d!1456057 (noDuplicateKeys!1494 oldBucket!40)))

(assert (=> d!1456057 (= (removePairForKey!1117 oldBucket!40 key!4968) lt!1779915)))

(declare-fun b!4623021 () Bool)

(assert (=> b!4623021 (= e!2883732 (Cons!51502 (h!57544 oldBucket!40) (removePairForKey!1117 (t!358650 oldBucket!40) key!4968)))))

(declare-fun b!4623019 () Bool)

(assert (=> b!4623019 (= e!2883731 (t!358650 oldBucket!40))))

(assert (= (and d!1456057 c!791346) b!4623019))

(assert (= (and d!1456057 (not c!791346)) b!4623020))

(assert (= (and b!4623020 c!791345) b!4623021))

(assert (= (and b!4623020 (not c!791345)) b!4623022))

(declare-fun m!5461829 () Bool)

(assert (=> d!1456057 m!5461829))

(assert (=> d!1456057 m!5461733))

(assert (=> b!4623021 m!5461807))

(assert (=> b!4622984 d!1456057))

(declare-fun bs!1021528 () Bool)

(declare-fun d!1456065 () Bool)

(assert (= bs!1021528 (and d!1456065 b!4622981)))

(declare-fun lambda!191364 () Int)

(assert (=> bs!1021528 (= lambda!191364 lambda!191354)))

(declare-fun lt!1779922 () ListMap!4257)

(declare-fun invariantList!1196 (List!51626) Bool)

(assert (=> d!1456065 (invariantList!1196 (toList!4954 lt!1779922))))

(declare-fun e!2883739 () ListMap!4257)

(assert (=> d!1456065 (= lt!1779922 e!2883739)))

(declare-fun c!791353 () Bool)

(assert (=> d!1456065 (= c!791353 ((_ is Cons!51503) (Cons!51503 (tuple2!52425 hash!414 lt!1779907) Nil!51503)))))

(declare-fun forall!10807 (List!51627 Int) Bool)

(assert (=> d!1456065 (forall!10807 (Cons!51503 (tuple2!52425 hash!414 lt!1779907) Nil!51503) lambda!191364)))

(assert (=> d!1456065 (= (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779907) Nil!51503)) lt!1779922)))

(declare-fun b!4623035 () Bool)

(assert (=> b!4623035 (= e!2883739 (addToMapMapFromBucket!955 (_2!29506 (h!57545 (Cons!51503 (tuple2!52425 hash!414 lt!1779907) Nil!51503))) (extractMap!1550 (t!358651 (Cons!51503 (tuple2!52425 hash!414 lt!1779907) Nil!51503)))))))

(declare-fun b!4623036 () Bool)

(assert (=> b!4623036 (= e!2883739 (ListMap!4258 Nil!51502))))

(assert (= (and d!1456065 c!791353) b!4623035))

(assert (= (and d!1456065 (not c!791353)) b!4623036))

(declare-fun m!5461847 () Bool)

(assert (=> d!1456065 m!5461847))

(declare-fun m!5461849 () Bool)

(assert (=> d!1456065 m!5461849))

(declare-fun m!5461851 () Bool)

(assert (=> b!4623035 m!5461851))

(assert (=> b!4623035 m!5461851))

(declare-fun m!5461853 () Bool)

(assert (=> b!4623035 m!5461853))

(assert (=> b!4622985 d!1456065))

(declare-fun bs!1021529 () Bool)

(declare-fun d!1456071 () Bool)

(assert (= bs!1021529 (and d!1456071 b!4622981)))

(declare-fun lambda!191365 () Int)

(assert (=> bs!1021529 (= lambda!191365 lambda!191354)))

(declare-fun bs!1021530 () Bool)

(assert (= bs!1021530 (and d!1456071 d!1456065)))

(assert (=> bs!1021530 (= lambda!191365 lambda!191364)))

(declare-fun lt!1779923 () ListMap!4257)

(assert (=> d!1456071 (invariantList!1196 (toList!4954 lt!1779923))))

(declare-fun e!2883740 () ListMap!4257)

(assert (=> d!1456071 (= lt!1779923 e!2883740)))

(declare-fun c!791354 () Bool)

(assert (=> d!1456071 (= c!791354 ((_ is Cons!51503) (Cons!51503 (tuple2!52425 hash!414 newBucket!224) Nil!51503)))))

(assert (=> d!1456071 (forall!10807 (Cons!51503 (tuple2!52425 hash!414 newBucket!224) Nil!51503) lambda!191365)))

(assert (=> d!1456071 (= (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 newBucket!224) Nil!51503)) lt!1779923)))

(declare-fun b!4623037 () Bool)

(assert (=> b!4623037 (= e!2883740 (addToMapMapFromBucket!955 (_2!29506 (h!57545 (Cons!51503 (tuple2!52425 hash!414 newBucket!224) Nil!51503))) (extractMap!1550 (t!358651 (Cons!51503 (tuple2!52425 hash!414 newBucket!224) Nil!51503)))))))

(declare-fun b!4623038 () Bool)

(assert (=> b!4623038 (= e!2883740 (ListMap!4258 Nil!51502))))

(assert (= (and d!1456071 c!791354) b!4623037))

(assert (= (and d!1456071 (not c!791354)) b!4623038))

(declare-fun m!5461855 () Bool)

(assert (=> d!1456071 m!5461855))

(declare-fun m!5461857 () Bool)

(assert (=> d!1456071 m!5461857))

(declare-fun m!5461859 () Bool)

(assert (=> b!4623037 m!5461859))

(assert (=> b!4623037 m!5461859))

(declare-fun m!5461861 () Bool)

(assert (=> b!4623037 m!5461861))

(assert (=> b!4622985 d!1456071))

(declare-fun d!1456073 () Bool)

(declare-fun res!1938227 () Bool)

(declare-fun e!2883745 () Bool)

(assert (=> d!1456073 (=> res!1938227 e!2883745)))

(assert (=> d!1456073 (= res!1938227 (not ((_ is Cons!51502) newBucket!224)))))

(assert (=> d!1456073 (= (noDuplicateKeys!1494 newBucket!224) e!2883745)))

(declare-fun b!4623043 () Bool)

(declare-fun e!2883746 () Bool)

(assert (=> b!4623043 (= e!2883745 e!2883746)))

(declare-fun res!1938228 () Bool)

(assert (=> b!4623043 (=> (not res!1938228) (not e!2883746))))

(assert (=> b!4623043 (= res!1938228 (not (containsKey!2418 (t!358650 newBucket!224) (_1!29505 (h!57544 newBucket!224)))))))

(declare-fun b!4623044 () Bool)

(assert (=> b!4623044 (= e!2883746 (noDuplicateKeys!1494 (t!358650 newBucket!224)))))

(assert (= (and d!1456073 (not res!1938227)) b!4623043))

(assert (= (and b!4623043 res!1938228) b!4623044))

(declare-fun m!5461863 () Bool)

(assert (=> b!4623043 m!5461863))

(declare-fun m!5461865 () Bool)

(assert (=> b!4623044 m!5461865))

(assert (=> b!4622986 d!1456073))

(declare-fun b!4623048 () Bool)

(declare-fun e!2883748 () List!51626)

(assert (=> b!4623048 (= e!2883748 Nil!51502)))

(declare-fun b!4623046 () Bool)

(declare-fun e!2883747 () List!51626)

(assert (=> b!4623046 (= e!2883747 e!2883748)))

(declare-fun c!791355 () Bool)

(assert (=> b!4623046 (= c!791355 ((_ is Cons!51502) (t!358650 oldBucket!40)))))

(declare-fun d!1456075 () Bool)

(declare-fun lt!1779924 () List!51626)

(assert (=> d!1456075 (not (containsKey!2418 lt!1779924 key!4968))))

(assert (=> d!1456075 (= lt!1779924 e!2883747)))

(declare-fun c!791356 () Bool)

(assert (=> d!1456075 (= c!791356 (and ((_ is Cons!51502) (t!358650 oldBucket!40)) (= (_1!29505 (h!57544 (t!358650 oldBucket!40))) key!4968)))))

(assert (=> d!1456075 (noDuplicateKeys!1494 (t!358650 oldBucket!40))))

(assert (=> d!1456075 (= (removePairForKey!1117 (t!358650 oldBucket!40) key!4968) lt!1779924)))

(declare-fun b!4623047 () Bool)

(assert (=> b!4623047 (= e!2883748 (Cons!51502 (h!57544 (t!358650 oldBucket!40)) (removePairForKey!1117 (t!358650 (t!358650 oldBucket!40)) key!4968)))))

(declare-fun b!4623045 () Bool)

(assert (=> b!4623045 (= e!2883747 (t!358650 (t!358650 oldBucket!40)))))

(assert (= (and d!1456075 c!791356) b!4623045))

(assert (= (and d!1456075 (not c!791356)) b!4623046))

(assert (= (and b!4623046 c!791355) b!4623047))

(assert (= (and b!4623046 (not c!791355)) b!4623048))

(declare-fun m!5461867 () Bool)

(assert (=> d!1456075 m!5461867))

(declare-fun m!5461869 () Bool)

(assert (=> d!1456075 m!5461869))

(declare-fun m!5461871 () Bool)

(assert (=> b!4623047 m!5461871))

(assert (=> b!4622987 d!1456075))

(declare-fun b!4623067 () Bool)

(declare-datatypes ((List!51628 0))(
  ( (Nil!51504) (Cons!51504 (h!57548 K!12885) (t!358654 List!51628)) )
))
(declare-fun e!2883766 () List!51628)

(declare-fun getKeysList!646 (List!51626) List!51628)

(assert (=> b!4623067 (= e!2883766 (getKeysList!646 (toList!4954 lt!1779904)))))

(declare-fun d!1456077 () Bool)

(declare-fun e!2883764 () Bool)

(assert (=> d!1456077 e!2883764))

(declare-fun res!1938235 () Bool)

(assert (=> d!1456077 (=> res!1938235 e!2883764)))

(declare-fun e!2883761 () Bool)

(assert (=> d!1456077 (= res!1938235 e!2883761)))

(declare-fun res!1938237 () Bool)

(assert (=> d!1456077 (=> (not res!1938237) (not e!2883761))))

(declare-fun lt!1779946 () Bool)

(assert (=> d!1456077 (= res!1938237 (not lt!1779946))))

(declare-fun lt!1779947 () Bool)

(assert (=> d!1456077 (= lt!1779946 lt!1779947)))

(declare-fun lt!1779941 () Unit!111517)

(declare-fun e!2883763 () Unit!111517)

(assert (=> d!1456077 (= lt!1779941 e!2883763)))

(declare-fun c!791365 () Bool)

(assert (=> d!1456077 (= c!791365 lt!1779947)))

(declare-fun containsKey!2420 (List!51626 K!12885) Bool)

(assert (=> d!1456077 (= lt!1779947 (containsKey!2420 (toList!4954 lt!1779904) key!4968))))

(assert (=> d!1456077 (= (contains!14527 lt!1779904 key!4968) lt!1779946)))

(declare-fun b!4623068 () Bool)

(assert (=> b!4623068 false))

(declare-fun lt!1779943 () Unit!111517)

(declare-fun lt!1779942 () Unit!111517)

(assert (=> b!4623068 (= lt!1779943 lt!1779942)))

(assert (=> b!4623068 (containsKey!2420 (toList!4954 lt!1779904) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!645 (List!51626 K!12885) Unit!111517)

(assert (=> b!4623068 (= lt!1779942 (lemmaInGetKeysListThenContainsKey!645 (toList!4954 lt!1779904) key!4968))))

(declare-fun e!2883762 () Unit!111517)

(declare-fun Unit!111531 () Unit!111517)

(assert (=> b!4623068 (= e!2883762 Unit!111531)))

(declare-fun bm!322399 () Bool)

(declare-fun call!322404 () Bool)

(declare-fun contains!14529 (List!51628 K!12885) Bool)

(assert (=> bm!322399 (= call!322404 (contains!14529 e!2883766 key!4968))))

(declare-fun c!791363 () Bool)

(assert (=> bm!322399 (= c!791363 c!791365)))

(declare-fun b!4623069 () Bool)

(declare-fun lt!1779948 () Unit!111517)

(assert (=> b!4623069 (= e!2883763 lt!1779948)))

(declare-fun lt!1779945 () Unit!111517)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1336 (List!51626 K!12885) Unit!111517)

(assert (=> b!4623069 (= lt!1779945 (lemmaContainsKeyImpliesGetValueByKeyDefined!1336 (toList!4954 lt!1779904) key!4968))))

(declare-datatypes ((Option!11562 0))(
  ( (None!11561) (Some!11561 (v!45675 V!13131)) )
))
(declare-fun isDefined!8827 (Option!11562) Bool)

(declare-fun getValueByKey!1434 (List!51626 K!12885) Option!11562)

(assert (=> b!4623069 (isDefined!8827 (getValueByKey!1434 (toList!4954 lt!1779904) key!4968))))

(declare-fun lt!1779944 () Unit!111517)

(assert (=> b!4623069 (= lt!1779944 lt!1779945)))

(declare-fun lemmaInListThenGetKeysListContains!641 (List!51626 K!12885) Unit!111517)

(assert (=> b!4623069 (= lt!1779948 (lemmaInListThenGetKeysListContains!641 (toList!4954 lt!1779904) key!4968))))

(assert (=> b!4623069 call!322404))

(declare-fun b!4623070 () Bool)

(declare-fun Unit!111532 () Unit!111517)

(assert (=> b!4623070 (= e!2883762 Unit!111532)))

(declare-fun b!4623071 () Bool)

(declare-fun keys!18133 (ListMap!4257) List!51628)

(assert (=> b!4623071 (= e!2883766 (keys!18133 lt!1779904))))

(declare-fun b!4623072 () Bool)

(declare-fun e!2883765 () Bool)

(assert (=> b!4623072 (= e!2883765 (contains!14529 (keys!18133 lt!1779904) key!4968))))

(declare-fun b!4623073 () Bool)

(assert (=> b!4623073 (= e!2883763 e!2883762)))

(declare-fun c!791364 () Bool)

(assert (=> b!4623073 (= c!791364 call!322404)))

(declare-fun b!4623074 () Bool)

(assert (=> b!4623074 (= e!2883761 (not (contains!14529 (keys!18133 lt!1779904) key!4968)))))

(declare-fun b!4623075 () Bool)

(assert (=> b!4623075 (= e!2883764 e!2883765)))

(declare-fun res!1938236 () Bool)

(assert (=> b!4623075 (=> (not res!1938236) (not e!2883765))))

(assert (=> b!4623075 (= res!1938236 (isDefined!8827 (getValueByKey!1434 (toList!4954 lt!1779904) key!4968)))))

(assert (= (and d!1456077 c!791365) b!4623069))

(assert (= (and d!1456077 (not c!791365)) b!4623073))

(assert (= (and b!4623073 c!791364) b!4623068))

(assert (= (and b!4623073 (not c!791364)) b!4623070))

(assert (= (or b!4623069 b!4623073) bm!322399))

(assert (= (and bm!322399 c!791363) b!4623067))

(assert (= (and bm!322399 (not c!791363)) b!4623071))

(assert (= (and d!1456077 res!1938237) b!4623074))

(assert (= (and d!1456077 (not res!1938235)) b!4623075))

(assert (= (and b!4623075 res!1938236) b!4623072))

(declare-fun m!5461873 () Bool)

(assert (=> b!4623074 m!5461873))

(assert (=> b!4623074 m!5461873))

(declare-fun m!5461875 () Bool)

(assert (=> b!4623074 m!5461875))

(declare-fun m!5461877 () Bool)

(assert (=> b!4623069 m!5461877))

(declare-fun m!5461879 () Bool)

(assert (=> b!4623069 m!5461879))

(assert (=> b!4623069 m!5461879))

(declare-fun m!5461881 () Bool)

(assert (=> b!4623069 m!5461881))

(declare-fun m!5461883 () Bool)

(assert (=> b!4623069 m!5461883))

(assert (=> b!4623075 m!5461879))

(assert (=> b!4623075 m!5461879))

(assert (=> b!4623075 m!5461881))

(declare-fun m!5461885 () Bool)

(assert (=> bm!322399 m!5461885))

(declare-fun m!5461887 () Bool)

(assert (=> b!4623067 m!5461887))

(assert (=> b!4623072 m!5461873))

(assert (=> b!4623072 m!5461873))

(assert (=> b!4623072 m!5461875))

(declare-fun m!5461889 () Bool)

(assert (=> b!4623068 m!5461889))

(declare-fun m!5461891 () Bool)

(assert (=> b!4623068 m!5461891))

(assert (=> d!1456077 m!5461889))

(assert (=> b!4623071 m!5461873))

(assert (=> b!4622988 d!1456077))

(declare-fun bs!1021531 () Bool)

(declare-fun d!1456079 () Bool)

(assert (= bs!1021531 (and d!1456079 b!4622981)))

(declare-fun lambda!191366 () Int)

(assert (=> bs!1021531 (= lambda!191366 lambda!191354)))

(declare-fun bs!1021532 () Bool)

(assert (= bs!1021532 (and d!1456079 d!1456065)))

(assert (=> bs!1021532 (= lambda!191366 lambda!191364)))

(declare-fun bs!1021533 () Bool)

(assert (= bs!1021533 (and d!1456079 d!1456071)))

(assert (=> bs!1021533 (= lambda!191366 lambda!191365)))

(declare-fun lt!1779949 () ListMap!4257)

(assert (=> d!1456079 (invariantList!1196 (toList!4954 lt!1779949))))

(declare-fun e!2883767 () ListMap!4257)

(assert (=> d!1456079 (= lt!1779949 e!2883767)))

(declare-fun c!791366 () Bool)

(assert (=> d!1456079 (= c!791366 ((_ is Cons!51503) lt!1779901))))

(assert (=> d!1456079 (forall!10807 lt!1779901 lambda!191366)))

(assert (=> d!1456079 (= (extractMap!1550 lt!1779901) lt!1779949)))

(declare-fun b!4623076 () Bool)

(assert (=> b!4623076 (= e!2883767 (addToMapMapFromBucket!955 (_2!29506 (h!57545 lt!1779901)) (extractMap!1550 (t!358651 lt!1779901))))))

(declare-fun b!4623077 () Bool)

(assert (=> b!4623077 (= e!2883767 (ListMap!4258 Nil!51502))))

(assert (= (and d!1456079 c!791366) b!4623076))

(assert (= (and d!1456079 (not c!791366)) b!4623077))

(declare-fun m!5461893 () Bool)

(assert (=> d!1456079 m!5461893))

(declare-fun m!5461895 () Bool)

(assert (=> d!1456079 m!5461895))

(declare-fun m!5461897 () Bool)

(assert (=> b!4623076 m!5461897))

(assert (=> b!4623076 m!5461897))

(declare-fun m!5461899 () Bool)

(assert (=> b!4623076 m!5461899))

(assert (=> b!4622988 d!1456079))

(declare-fun b!4623187 () Bool)

(assert (=> b!4623187 true))

(declare-fun bs!1021566 () Bool)

(declare-fun b!4623185 () Bool)

(assert (= bs!1021566 (and b!4623185 b!4623187)))

(declare-fun lambda!191440 () Int)

(declare-fun lambda!191439 () Int)

(assert (=> bs!1021566 (= lambda!191440 lambda!191439)))

(assert (=> b!4623185 true))

(declare-fun lt!1780151 () ListMap!4257)

(declare-fun lambda!191441 () Int)

(assert (=> bs!1021566 (= (= lt!1780151 lt!1779891) (= lambda!191441 lambda!191439))))

(assert (=> b!4623185 (= (= lt!1780151 lt!1779891) (= lambda!191441 lambda!191440))))

(assert (=> b!4623185 true))

(declare-fun bs!1021567 () Bool)

(declare-fun d!1456081 () Bool)

(assert (= bs!1021567 (and d!1456081 b!4623187)))

(declare-fun lambda!191442 () Int)

(declare-fun lt!1780138 () ListMap!4257)

(assert (=> bs!1021567 (= (= lt!1780138 lt!1779891) (= lambda!191442 lambda!191439))))

(declare-fun bs!1021568 () Bool)

(assert (= bs!1021568 (and d!1456081 b!4623185)))

(assert (=> bs!1021568 (= (= lt!1780138 lt!1779891) (= lambda!191442 lambda!191440))))

(assert (=> bs!1021568 (= (= lt!1780138 lt!1780151) (= lambda!191442 lambda!191441))))

(assert (=> d!1456081 true))

(declare-fun b!4623184 () Bool)

(declare-fun e!2883836 () Bool)

(assert (=> b!4623184 (= e!2883836 (invariantList!1196 (toList!4954 lt!1780138)))))

(assert (=> d!1456081 e!2883836))

(declare-fun res!1938298 () Bool)

(assert (=> d!1456081 (=> (not res!1938298) (not e!2883836))))

(declare-fun forall!10808 (List!51626 Int) Bool)

(assert (=> d!1456081 (= res!1938298 (forall!10808 oldBucket!40 lambda!191442))))

(declare-fun e!2883837 () ListMap!4257)

(assert (=> d!1456081 (= lt!1780138 e!2883837)))

(declare-fun c!791389 () Bool)

(assert (=> d!1456081 (= c!791389 ((_ is Nil!51502) oldBucket!40))))

(assert (=> d!1456081 (noDuplicateKeys!1494 oldBucket!40)))

(assert (=> d!1456081 (= (addToMapMapFromBucket!955 oldBucket!40 lt!1779891) lt!1780138)))

(declare-fun bm!322415 () Bool)

(declare-fun call!322424 () Bool)

(assert (=> bm!322415 (= call!322424 (forall!10808 (ite c!791389 (toList!4954 lt!1779891) oldBucket!40) (ite c!791389 lambda!191439 lambda!191441)))))

(assert (=> b!4623185 (= e!2883837 lt!1780151)))

(declare-fun lt!1780150 () ListMap!4257)

(assert (=> b!4623185 (= lt!1780150 (+!1860 lt!1779891 (h!57544 oldBucket!40)))))

(assert (=> b!4623185 (= lt!1780151 (addToMapMapFromBucket!955 (t!358650 oldBucket!40) (+!1860 lt!1779891 (h!57544 oldBucket!40))))))

(declare-fun lt!1780142 () Unit!111517)

(declare-fun call!322422 () Unit!111517)

(assert (=> b!4623185 (= lt!1780142 call!322422)))

(declare-fun call!322423 () Bool)

(assert (=> b!4623185 call!322423))

(declare-fun lt!1780133 () Unit!111517)

(assert (=> b!4623185 (= lt!1780133 lt!1780142)))

(assert (=> b!4623185 (forall!10808 (toList!4954 lt!1780150) lambda!191441)))

(declare-fun lt!1780148 () Unit!111517)

(declare-fun Unit!111535 () Unit!111517)

(assert (=> b!4623185 (= lt!1780148 Unit!111535)))

(assert (=> b!4623185 (forall!10808 (t!358650 oldBucket!40) lambda!191441)))

(declare-fun lt!1780137 () Unit!111517)

(declare-fun Unit!111536 () Unit!111517)

(assert (=> b!4623185 (= lt!1780137 Unit!111536)))

(declare-fun lt!1780136 () Unit!111517)

(declare-fun Unit!111537 () Unit!111517)

(assert (=> b!4623185 (= lt!1780136 Unit!111537)))

(declare-fun lt!1780144 () Unit!111517)

(declare-fun forallContained!3032 (List!51626 Int tuple2!52422) Unit!111517)

(assert (=> b!4623185 (= lt!1780144 (forallContained!3032 (toList!4954 lt!1780150) lambda!191441 (h!57544 oldBucket!40)))))

(assert (=> b!4623185 (contains!14527 lt!1780150 (_1!29505 (h!57544 oldBucket!40)))))

(declare-fun lt!1780146 () Unit!111517)

(declare-fun Unit!111538 () Unit!111517)

(assert (=> b!4623185 (= lt!1780146 Unit!111538)))

(assert (=> b!4623185 (contains!14527 lt!1780151 (_1!29505 (h!57544 oldBucket!40)))))

(declare-fun lt!1780145 () Unit!111517)

(declare-fun Unit!111539 () Unit!111517)

(assert (=> b!4623185 (= lt!1780145 Unit!111539)))

(assert (=> b!4623185 (forall!10808 oldBucket!40 lambda!191441)))

(declare-fun lt!1780140 () Unit!111517)

(declare-fun Unit!111540 () Unit!111517)

(assert (=> b!4623185 (= lt!1780140 Unit!111540)))

(assert (=> b!4623185 (forall!10808 (toList!4954 lt!1780150) lambda!191441)))

(declare-fun lt!1780134 () Unit!111517)

(declare-fun Unit!111541 () Unit!111517)

(assert (=> b!4623185 (= lt!1780134 Unit!111541)))

(declare-fun lt!1780132 () Unit!111517)

(declare-fun Unit!111542 () Unit!111517)

(assert (=> b!4623185 (= lt!1780132 Unit!111542)))

(declare-fun lt!1780143 () Unit!111517)

(declare-fun addForallContainsKeyThenBeforeAdding!497 (ListMap!4257 ListMap!4257 K!12885 V!13131) Unit!111517)

(assert (=> b!4623185 (= lt!1780143 (addForallContainsKeyThenBeforeAdding!497 lt!1779891 lt!1780151 (_1!29505 (h!57544 oldBucket!40)) (_2!29505 (h!57544 oldBucket!40))))))

(assert (=> b!4623185 (forall!10808 (toList!4954 lt!1779891) lambda!191441)))

(declare-fun lt!1780135 () Unit!111517)

(assert (=> b!4623185 (= lt!1780135 lt!1780143)))

(assert (=> b!4623185 (forall!10808 (toList!4954 lt!1779891) lambda!191441)))

(declare-fun lt!1780139 () Unit!111517)

(declare-fun Unit!111543 () Unit!111517)

(assert (=> b!4623185 (= lt!1780139 Unit!111543)))

(declare-fun res!1938299 () Bool)

(assert (=> b!4623185 (= res!1938299 call!322424)))

(declare-fun e!2883835 () Bool)

(assert (=> b!4623185 (=> (not res!1938299) (not e!2883835))))

(assert (=> b!4623185 e!2883835))

(declare-fun lt!1780141 () Unit!111517)

(declare-fun Unit!111544 () Unit!111517)

(assert (=> b!4623185 (= lt!1780141 Unit!111544)))

(declare-fun b!4623186 () Bool)

(declare-fun res!1938297 () Bool)

(assert (=> b!4623186 (=> (not res!1938297) (not e!2883836))))

(assert (=> b!4623186 (= res!1938297 (forall!10808 (toList!4954 lt!1779891) lambda!191442))))

(declare-fun bm!322416 () Bool)

(assert (=> bm!322416 (= call!322423 (forall!10808 (toList!4954 lt!1779891) (ite c!791389 lambda!191439 lambda!191440)))))

(declare-fun bm!322418 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!498 (ListMap!4257) Unit!111517)

(assert (=> bm!322418 (= call!322422 (lemmaContainsAllItsOwnKeys!498 lt!1779891))))

(assert (=> b!4623187 (= e!2883837 lt!1779891)))

(declare-fun lt!1780131 () Unit!111517)

(assert (=> b!4623187 (= lt!1780131 call!322422)))

(assert (=> b!4623187 call!322423))

(declare-fun lt!1780147 () Unit!111517)

(assert (=> b!4623187 (= lt!1780147 lt!1780131)))

(assert (=> b!4623187 call!322424))

(declare-fun lt!1780149 () Unit!111517)

(declare-fun Unit!111545 () Unit!111517)

(assert (=> b!4623187 (= lt!1780149 Unit!111545)))

(declare-fun b!4623188 () Bool)

(assert (=> b!4623188 (= e!2883835 (forall!10808 (toList!4954 lt!1779891) lambda!191441))))

(assert (= (and d!1456081 c!791389) b!4623187))

(assert (= (and d!1456081 (not c!791389)) b!4623185))

(assert (= (and b!4623185 res!1938299) b!4623188))

(assert (= (or b!4623187 b!4623185) bm!322418))

(assert (= (or b!4623187 b!4623185) bm!322415))

(assert (= (or b!4623187 b!4623185) bm!322416))

(assert (= (and d!1456081 res!1938298) b!4623186))

(assert (= (and b!4623186 res!1938297) b!4623184))

(declare-fun m!5462039 () Bool)

(assert (=> b!4623188 m!5462039))

(declare-fun m!5462041 () Bool)

(assert (=> b!4623186 m!5462041))

(declare-fun m!5462043 () Bool)

(assert (=> bm!322416 m!5462043))

(declare-fun m!5462045 () Bool)

(assert (=> d!1456081 m!5462045))

(assert (=> d!1456081 m!5461733))

(declare-fun m!5462047 () Bool)

(assert (=> bm!322418 m!5462047))

(declare-fun m!5462049 () Bool)

(assert (=> b!4623184 m!5462049))

(declare-fun m!5462051 () Bool)

(assert (=> b!4623185 m!5462051))

(assert (=> b!4623185 m!5462039))

(declare-fun m!5462053 () Bool)

(assert (=> b!4623185 m!5462053))

(declare-fun m!5462055 () Bool)

(assert (=> b!4623185 m!5462055))

(declare-fun m!5462057 () Bool)

(assert (=> b!4623185 m!5462057))

(declare-fun m!5462059 () Bool)

(assert (=> b!4623185 m!5462059))

(declare-fun m!5462061 () Bool)

(assert (=> b!4623185 m!5462061))

(assert (=> b!4623185 m!5462053))

(declare-fun m!5462063 () Bool)

(assert (=> b!4623185 m!5462063))

(declare-fun m!5462065 () Bool)

(assert (=> b!4623185 m!5462065))

(assert (=> b!4623185 m!5462057))

(declare-fun m!5462067 () Bool)

(assert (=> b!4623185 m!5462067))

(assert (=> b!4623185 m!5462039))

(declare-fun m!5462069 () Bool)

(assert (=> bm!322415 m!5462069))

(assert (=> b!4622990 d!1456081))

(declare-fun bs!1021569 () Bool)

(declare-fun d!1456121 () Bool)

(assert (= bs!1021569 (and d!1456121 b!4622981)))

(declare-fun lambda!191443 () Int)

(assert (=> bs!1021569 (= lambda!191443 lambda!191354)))

(declare-fun bs!1021570 () Bool)

(assert (= bs!1021570 (and d!1456121 d!1456065)))

(assert (=> bs!1021570 (= lambda!191443 lambda!191364)))

(declare-fun bs!1021571 () Bool)

(assert (= bs!1021571 (and d!1456121 d!1456071)))

(assert (=> bs!1021571 (= lambda!191443 lambda!191365)))

(declare-fun bs!1021572 () Bool)

(assert (= bs!1021572 (and d!1456121 d!1456079)))

(assert (=> bs!1021572 (= lambda!191443 lambda!191366)))

(declare-fun lt!1780160 () ListMap!4257)

(assert (=> d!1456121 (invariantList!1196 (toList!4954 lt!1780160))))

(declare-fun e!2883852 () ListMap!4257)

(assert (=> d!1456121 (= lt!1780160 e!2883852)))

(declare-fun c!791395 () Bool)

(assert (=> d!1456121 (= c!791395 ((_ is Cons!51503) Nil!51503))))

(assert (=> d!1456121 (forall!10807 Nil!51503 lambda!191443)))

(assert (=> d!1456121 (= (extractMap!1550 Nil!51503) lt!1780160)))

(declare-fun b!4623210 () Bool)

(assert (=> b!4623210 (= e!2883852 (addToMapMapFromBucket!955 (_2!29506 (h!57545 Nil!51503)) (extractMap!1550 (t!358651 Nil!51503))))))

(declare-fun b!4623211 () Bool)

(assert (=> b!4623211 (= e!2883852 (ListMap!4258 Nil!51502))))

(assert (= (and d!1456121 c!791395) b!4623210))

(assert (= (and d!1456121 (not c!791395)) b!4623211))

(declare-fun m!5462091 () Bool)

(assert (=> d!1456121 m!5462091))

(declare-fun m!5462093 () Bool)

(assert (=> d!1456121 m!5462093))

(declare-fun m!5462095 () Bool)

(assert (=> b!4623210 m!5462095))

(assert (=> b!4623210 m!5462095))

(declare-fun m!5462097 () Bool)

(assert (=> b!4623210 m!5462097))

(assert (=> b!4622990 d!1456121))

(declare-fun d!1456125 () Bool)

(declare-fun hash!3477 (Hashable!5891 K!12885) (_ BitVec 64))

(assert (=> d!1456125 (= (hash!3475 hashF!1389 key!4968) (hash!3477 hashF!1389 key!4968))))

(declare-fun bs!1021580 () Bool)

(assert (= bs!1021580 d!1456125))

(declare-fun m!5462099 () Bool)

(assert (=> bs!1021580 m!5462099))

(assert (=> b!4622991 d!1456125))

(declare-fun bs!1021581 () Bool)

(declare-fun d!1456127 () Bool)

(assert (= bs!1021581 (and d!1456127 b!4623187)))

(declare-fun lambda!191447 () Int)

(assert (=> bs!1021581 (not (= lambda!191447 lambda!191439))))

(declare-fun bs!1021582 () Bool)

(assert (= bs!1021582 (and d!1456127 b!4623185)))

(assert (=> bs!1021582 (not (= lambda!191447 lambda!191440))))

(assert (=> bs!1021582 (not (= lambda!191447 lambda!191441))))

(declare-fun bs!1021583 () Bool)

(assert (= bs!1021583 (and d!1456127 d!1456081)))

(assert (=> bs!1021583 (not (= lambda!191447 lambda!191442))))

(assert (=> d!1456127 true))

(assert (=> d!1456127 true))

(assert (=> d!1456127 (= (allKeysSameHash!1348 oldBucket!40 hash!414 hashF!1389) (forall!10808 oldBucket!40 lambda!191447))))

(declare-fun bs!1021584 () Bool)

(assert (= bs!1021584 d!1456127))

(declare-fun m!5462109 () Bool)

(assert (=> bs!1021584 m!5462109))

(assert (=> b!4622980 d!1456127))

(declare-fun bs!1021585 () Bool)

(declare-fun d!1456131 () Bool)

(assert (= bs!1021585 (and d!1456131 d!1456065)))

(declare-fun lambda!191450 () Int)

(assert (=> bs!1021585 (= lambda!191450 lambda!191364)))

(declare-fun bs!1021586 () Bool)

(assert (= bs!1021586 (and d!1456131 d!1456071)))

(assert (=> bs!1021586 (= lambda!191450 lambda!191365)))

(declare-fun bs!1021587 () Bool)

(assert (= bs!1021587 (and d!1456131 d!1456121)))

(assert (=> bs!1021587 (= lambda!191450 lambda!191443)))

(declare-fun bs!1021588 () Bool)

(assert (= bs!1021588 (and d!1456131 b!4622981)))

(assert (=> bs!1021588 (= lambda!191450 lambda!191354)))

(declare-fun bs!1021589 () Bool)

(assert (= bs!1021589 (and d!1456131 d!1456079)))

(assert (=> bs!1021589 (= lambda!191450 lambda!191366)))

(assert (=> d!1456131 (contains!14526 lt!1779890 (hash!3475 hashF!1389 key!4968))))

(declare-fun lt!1780164 () Unit!111517)

(declare-fun choose!31246 (ListLongMap!3543 K!12885 Hashable!5891) Unit!111517)

(assert (=> d!1456131 (= lt!1780164 (choose!31246 lt!1779890 key!4968 hashF!1389))))

(assert (=> d!1456131 (forall!10807 (toList!4953 lt!1779890) lambda!191450)))

(assert (=> d!1456131 (= (lemmaInGenMapThenLongMapContainsHash!492 lt!1779890 key!4968 hashF!1389) lt!1780164)))

(declare-fun bs!1021590 () Bool)

(assert (= bs!1021590 d!1456131))

(assert (=> bs!1021590 m!5461729))

(assert (=> bs!1021590 m!5461729))

(declare-fun m!5462111 () Bool)

(assert (=> bs!1021590 m!5462111))

(declare-fun m!5462113 () Bool)

(assert (=> bs!1021590 m!5462113))

(declare-fun m!5462115 () Bool)

(assert (=> bs!1021590 m!5462115))

(assert (=> b!4622981 d!1456131))

(declare-fun bs!1021706 () Bool)

(declare-fun d!1456133 () Bool)

(assert (= bs!1021706 (and d!1456133 d!1456065)))

(declare-fun lambda!191473 () Int)

(assert (=> bs!1021706 (= lambda!191473 lambda!191364)))

(declare-fun bs!1021707 () Bool)

(assert (= bs!1021707 (and d!1456133 d!1456071)))

(assert (=> bs!1021707 (= lambda!191473 lambda!191365)))

(declare-fun bs!1021708 () Bool)

(assert (= bs!1021708 (and d!1456133 d!1456121)))

(assert (=> bs!1021708 (= lambda!191473 lambda!191443)))

(declare-fun bs!1021709 () Bool)

(assert (= bs!1021709 (and d!1456133 d!1456131)))

(assert (=> bs!1021709 (= lambda!191473 lambda!191450)))

(declare-fun bs!1021710 () Bool)

(assert (= bs!1021710 (and d!1456133 b!4622981)))

(assert (=> bs!1021710 (= lambda!191473 lambda!191354)))

(declare-fun bs!1021711 () Bool)

(assert (= bs!1021711 (and d!1456133 d!1456079)))

(assert (=> bs!1021711 (= lambda!191473 lambda!191366)))

(declare-fun lt!1780290 () List!51626)

(declare-fun b!4623259 () Bool)

(declare-fun lt!1780287 () (_ BitVec 64))

(declare-fun e!2883875 () Bool)

(declare-datatypes ((Option!11564 0))(
  ( (None!11563) (Some!11563 (v!45677 List!51626)) )
))
(declare-fun getValueByKey!1436 (List!51627 (_ BitVec 64)) Option!11564)

(assert (=> b!4623259 (= e!2883875 (= (getValueByKey!1436 (toList!4953 lt!1779890) lt!1780287) (Some!11563 lt!1780290)))))

(declare-fun b!4623256 () Bool)

(declare-fun res!1938340 () Bool)

(declare-fun e!2883876 () Bool)

(assert (=> b!4623256 (=> (not res!1938340) (not e!2883876))))

(declare-fun allKeysSameHashInMap!1522 (ListLongMap!3543 Hashable!5891) Bool)

(assert (=> b!4623256 (= res!1938340 (allKeysSameHashInMap!1522 lt!1779890 hashF!1389))))

(declare-fun b!4623258 () Bool)

(assert (=> b!4623258 (= e!2883876 (isDefined!8825 (getPair!286 (apply!12159 lt!1779890 (hash!3475 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1780293 () Unit!111517)

(assert (=> b!4623258 (= lt!1780293 (forallContained!3030 (toList!4953 lt!1779890) lambda!191473 (tuple2!52425 (hash!3475 hashF!1389 key!4968) (apply!12159 lt!1779890 (hash!3475 hashF!1389 key!4968)))))))

(declare-fun lt!1780288 () Unit!111517)

(declare-fun lt!1780286 () Unit!111517)

(assert (=> b!4623258 (= lt!1780288 lt!1780286)))

(assert (=> b!4623258 (contains!14525 (toList!4953 lt!1779890) (tuple2!52425 lt!1780287 lt!1780290))))

(assert (=> b!4623258 (= lt!1780286 (lemmaGetValueImpliesTupleContained!91 lt!1779890 lt!1780287 lt!1780290))))

(assert (=> b!4623258 e!2883875))

(declare-fun res!1938341 () Bool)

(assert (=> b!4623258 (=> (not res!1938341) (not e!2883875))))

(assert (=> b!4623258 (= res!1938341 (contains!14526 lt!1779890 lt!1780287))))

(assert (=> b!4623258 (= lt!1780290 (apply!12159 lt!1779890 (hash!3475 hashF!1389 key!4968)))))

(assert (=> b!4623258 (= lt!1780287 (hash!3475 hashF!1389 key!4968))))

(declare-fun lt!1780292 () Unit!111517)

(declare-fun lt!1780291 () Unit!111517)

(assert (=> b!4623258 (= lt!1780292 lt!1780291)))

(assert (=> b!4623258 (contains!14526 lt!1779890 (hash!3475 hashF!1389 key!4968))))

(assert (=> b!4623258 (= lt!1780291 (lemmaInGenMapThenLongMapContainsHash!492 lt!1779890 key!4968 hashF!1389))))

(assert (=> d!1456133 e!2883876))

(declare-fun res!1938339 () Bool)

(assert (=> d!1456133 (=> (not res!1938339) (not e!2883876))))

(assert (=> d!1456133 (= res!1938339 (forall!10807 (toList!4953 lt!1779890) lambda!191473))))

(declare-fun lt!1780289 () Unit!111517)

(declare-fun choose!31247 (ListLongMap!3543 K!12885 Hashable!5891) Unit!111517)

(assert (=> d!1456133 (= lt!1780289 (choose!31247 lt!1779890 key!4968 hashF!1389))))

(assert (=> d!1456133 (forall!10807 (toList!4953 lt!1779890) lambda!191473)))

(assert (=> d!1456133 (= (lemmaInGenMapThenGetPairDefined!82 lt!1779890 key!4968 hashF!1389) lt!1780289)))

(declare-fun b!4623257 () Bool)

(declare-fun res!1938342 () Bool)

(assert (=> b!4623257 (=> (not res!1938342) (not e!2883876))))

(assert (=> b!4623257 (= res!1938342 (contains!14527 (extractMap!1550 (toList!4953 lt!1779890)) key!4968))))

(assert (= (and d!1456133 res!1938339) b!4623256))

(assert (= (and b!4623256 res!1938340) b!4623257))

(assert (= (and b!4623257 res!1938342) b!4623258))

(assert (= (and b!4623258 res!1938341) b!4623259))

(declare-fun m!5462285 () Bool)

(assert (=> b!4623259 m!5462285))

(declare-fun m!5462287 () Bool)

(assert (=> b!4623258 m!5462287))

(declare-fun m!5462289 () Bool)

(assert (=> b!4623258 m!5462289))

(declare-fun m!5462291 () Bool)

(assert (=> b!4623258 m!5462291))

(assert (=> b!4623258 m!5461755))

(assert (=> b!4623258 m!5462291))

(declare-fun m!5462293 () Bool)

(assert (=> b!4623258 m!5462293))

(declare-fun m!5462295 () Bool)

(assert (=> b!4623258 m!5462295))

(assert (=> b!4623258 m!5461729))

(assert (=> b!4623258 m!5462111))

(assert (=> b!4623258 m!5461729))

(assert (=> b!4623258 m!5462289))

(declare-fun m!5462297 () Bool)

(assert (=> b!4623258 m!5462297))

(declare-fun m!5462299 () Bool)

(assert (=> b!4623258 m!5462299))

(assert (=> b!4623258 m!5461729))

(declare-fun m!5462301 () Bool)

(assert (=> b!4623257 m!5462301))

(assert (=> b!4623257 m!5462301))

(declare-fun m!5462303 () Bool)

(assert (=> b!4623257 m!5462303))

(declare-fun m!5462305 () Bool)

(assert (=> d!1456133 m!5462305))

(declare-fun m!5462307 () Bool)

(assert (=> d!1456133 m!5462307))

(assert (=> d!1456133 m!5462305))

(declare-fun m!5462309 () Bool)

(assert (=> b!4623256 m!5462309))

(assert (=> b!4622981 d!1456133))

(declare-fun d!1456157 () Bool)

(declare-fun get!17055 (Option!11564) List!51626)

(assert (=> d!1456157 (= (apply!12159 lt!1779890 lt!1779894) (get!17055 (getValueByKey!1436 (toList!4953 lt!1779890) lt!1779894)))))

(declare-fun bs!1021713 () Bool)

(assert (= bs!1021713 d!1456157))

(declare-fun m!5462311 () Bool)

(assert (=> bs!1021713 m!5462311))

(assert (=> bs!1021713 m!5462311))

(declare-fun m!5462313 () Bool)

(assert (=> bs!1021713 m!5462313))

(assert (=> b!4622981 d!1456157))

(declare-fun d!1456159 () Bool)

(declare-fun e!2883881 () Bool)

(assert (=> d!1456159 e!2883881))

(declare-fun res!1938345 () Bool)

(assert (=> d!1456159 (=> res!1938345 e!2883881)))

(declare-fun lt!1780305 () Bool)

(assert (=> d!1456159 (= res!1938345 (not lt!1780305))))

(declare-fun lt!1780302 () Bool)

(assert (=> d!1456159 (= lt!1780305 lt!1780302)))

(declare-fun lt!1780304 () Unit!111517)

(declare-fun e!2883882 () Unit!111517)

(assert (=> d!1456159 (= lt!1780304 e!2883882)))

(declare-fun c!791403 () Bool)

(assert (=> d!1456159 (= c!791403 lt!1780302)))

(declare-fun containsKey!2422 (List!51627 (_ BitVec 64)) Bool)

(assert (=> d!1456159 (= lt!1780302 (containsKey!2422 (toList!4953 lt!1779890) lt!1779894))))

(assert (=> d!1456159 (= (contains!14526 lt!1779890 lt!1779894) lt!1780305)))

(declare-fun b!4623266 () Bool)

(declare-fun lt!1780303 () Unit!111517)

(assert (=> b!4623266 (= e!2883882 lt!1780303)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1338 (List!51627 (_ BitVec 64)) Unit!111517)

(assert (=> b!4623266 (= lt!1780303 (lemmaContainsKeyImpliesGetValueByKeyDefined!1338 (toList!4953 lt!1779890) lt!1779894))))

(declare-fun isDefined!8829 (Option!11564) Bool)

(assert (=> b!4623266 (isDefined!8829 (getValueByKey!1436 (toList!4953 lt!1779890) lt!1779894))))

(declare-fun b!4623267 () Bool)

(declare-fun Unit!111555 () Unit!111517)

(assert (=> b!4623267 (= e!2883882 Unit!111555)))

(declare-fun b!4623268 () Bool)

(assert (=> b!4623268 (= e!2883881 (isDefined!8829 (getValueByKey!1436 (toList!4953 lt!1779890) lt!1779894)))))

(assert (= (and d!1456159 c!791403) b!4623266))

(assert (= (and d!1456159 (not c!791403)) b!4623267))

(assert (= (and d!1456159 (not res!1938345)) b!4623268))

(declare-fun m!5462315 () Bool)

(assert (=> d!1456159 m!5462315))

(declare-fun m!5462317 () Bool)

(assert (=> b!4623266 m!5462317))

(assert (=> b!4623266 m!5462311))

(assert (=> b!4623266 m!5462311))

(declare-fun m!5462319 () Bool)

(assert (=> b!4623266 m!5462319))

(assert (=> b!4623268 m!5462311))

(assert (=> b!4623268 m!5462311))

(assert (=> b!4623268 m!5462319))

(assert (=> b!4622981 d!1456159))

(declare-fun d!1456161 () Bool)

(declare-fun res!1938350 () Bool)

(declare-fun e!2883887 () Bool)

(assert (=> d!1456161 (=> res!1938350 e!2883887)))

(assert (=> d!1456161 (= res!1938350 (and ((_ is Cons!51502) (t!358650 oldBucket!40)) (= (_1!29505 (h!57544 (t!358650 oldBucket!40))) key!4968)))))

(assert (=> d!1456161 (= (containsKey!2418 (t!358650 oldBucket!40) key!4968) e!2883887)))

(declare-fun b!4623273 () Bool)

(declare-fun e!2883888 () Bool)

(assert (=> b!4623273 (= e!2883887 e!2883888)))

(declare-fun res!1938351 () Bool)

(assert (=> b!4623273 (=> (not res!1938351) (not e!2883888))))

(assert (=> b!4623273 (= res!1938351 ((_ is Cons!51502) (t!358650 oldBucket!40)))))

(declare-fun b!4623274 () Bool)

(assert (=> b!4623274 (= e!2883888 (containsKey!2418 (t!358650 (t!358650 oldBucket!40)) key!4968))))

(assert (= (and d!1456161 (not res!1938350)) b!4623273))

(assert (= (and b!4623273 res!1938351) b!4623274))

(declare-fun m!5462321 () Bool)

(assert (=> b!4623274 m!5462321))

(assert (=> b!4622981 d!1456161))

(declare-fun d!1456163 () Bool)

(assert (=> d!1456163 (contains!14525 (toList!4953 lt!1779890) (tuple2!52425 lt!1779894 lt!1779909))))

(declare-fun lt!1780311 () Unit!111517)

(declare-fun choose!31248 (ListLongMap!3543 (_ BitVec 64) List!51626) Unit!111517)

(assert (=> d!1456163 (= lt!1780311 (choose!31248 lt!1779890 lt!1779894 lt!1779909))))

(assert (=> d!1456163 (contains!14526 lt!1779890 lt!1779894)))

(assert (=> d!1456163 (= (lemmaGetValueImpliesTupleContained!91 lt!1779890 lt!1779894 lt!1779909) lt!1780311)))

(declare-fun bs!1021724 () Bool)

(assert (= bs!1021724 d!1456163))

(declare-fun m!5462335 () Bool)

(assert (=> bs!1021724 m!5462335))

(declare-fun m!5462337 () Bool)

(assert (=> bs!1021724 m!5462337))

(assert (=> bs!1021724 m!5461757))

(assert (=> b!4622981 d!1456163))

(declare-fun d!1456169 () Bool)

(declare-fun lt!1780322 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8777 (List!51627) (InoxSet tuple2!52424))

(assert (=> d!1456169 (= lt!1780322 (select (content!8777 lt!1779901) lt!1779898))))

(declare-fun e!2883908 () Bool)

(assert (=> d!1456169 (= lt!1780322 e!2883908)))

(declare-fun res!1938368 () Bool)

(assert (=> d!1456169 (=> (not res!1938368) (not e!2883908))))

(assert (=> d!1456169 (= res!1938368 ((_ is Cons!51503) lt!1779901))))

(assert (=> d!1456169 (= (contains!14525 lt!1779901 lt!1779898) lt!1780322)))

(declare-fun b!4623297 () Bool)

(declare-fun e!2883907 () Bool)

(assert (=> b!4623297 (= e!2883908 e!2883907)))

(declare-fun res!1938367 () Bool)

(assert (=> b!4623297 (=> res!1938367 e!2883907)))

(assert (=> b!4623297 (= res!1938367 (= (h!57545 lt!1779901) lt!1779898))))

(declare-fun b!4623298 () Bool)

(assert (=> b!4623298 (= e!2883907 (contains!14525 (t!358651 lt!1779901) lt!1779898))))

(assert (= (and d!1456169 res!1938368) b!4623297))

(assert (= (and b!4623297 (not res!1938367)) b!4623298))

(declare-fun m!5462367 () Bool)

(assert (=> d!1456169 m!5462367))

(declare-fun m!5462369 () Bool)

(assert (=> d!1456169 m!5462369))

(declare-fun m!5462371 () Bool)

(assert (=> b!4623298 m!5462371))

(assert (=> b!4622981 d!1456169))

(declare-fun b!4623327 () Bool)

(declare-fun e!2883930 () Bool)

(assert (=> b!4623327 (= e!2883930 (not (containsKey!2418 lt!1779909 key!4968)))))

(declare-fun b!4623328 () Bool)

(declare-fun e!2883927 () Option!11560)

(declare-fun e!2883926 () Option!11560)

(assert (=> b!4623328 (= e!2883927 e!2883926)))

(declare-fun c!791414 () Bool)

(assert (=> b!4623328 (= c!791414 ((_ is Cons!51502) lt!1779909))))

(declare-fun b!4623329 () Bool)

(declare-fun res!1938380 () Bool)

(declare-fun e!2883929 () Bool)

(assert (=> b!4623329 (=> (not res!1938380) (not e!2883929))))

(declare-fun lt!1780327 () Option!11560)

(declare-fun get!17056 (Option!11560) tuple2!52422)

(assert (=> b!4623329 (= res!1938380 (= (_1!29505 (get!17056 lt!1780327)) key!4968))))

(declare-fun b!4623330 () Bool)

(assert (=> b!4623330 (= e!2883926 (getPair!286 (t!358650 lt!1779909) key!4968))))

(declare-fun b!4623331 () Bool)

(declare-fun e!2883928 () Bool)

(assert (=> b!4623331 (= e!2883928 e!2883929)))

(declare-fun res!1938377 () Bool)

(assert (=> b!4623331 (=> (not res!1938377) (not e!2883929))))

(assert (=> b!4623331 (= res!1938377 (isDefined!8825 lt!1780327))))

(declare-fun b!4623332 () Bool)

(declare-fun contains!14531 (List!51626 tuple2!52422) Bool)

(assert (=> b!4623332 (= e!2883929 (contains!14531 lt!1779909 (get!17056 lt!1780327)))))

(declare-fun d!1456177 () Bool)

(assert (=> d!1456177 e!2883928))

(declare-fun res!1938378 () Bool)

(assert (=> d!1456177 (=> res!1938378 e!2883928)))

(assert (=> d!1456177 (= res!1938378 e!2883930)))

(declare-fun res!1938379 () Bool)

(assert (=> d!1456177 (=> (not res!1938379) (not e!2883930))))

(declare-fun isEmpty!28922 (Option!11560) Bool)

(assert (=> d!1456177 (= res!1938379 (isEmpty!28922 lt!1780327))))

(assert (=> d!1456177 (= lt!1780327 e!2883927)))

(declare-fun c!791415 () Bool)

(assert (=> d!1456177 (= c!791415 (and ((_ is Cons!51502) lt!1779909) (= (_1!29505 (h!57544 lt!1779909)) key!4968)))))

(assert (=> d!1456177 (noDuplicateKeys!1494 lt!1779909)))

(assert (=> d!1456177 (= (getPair!286 lt!1779909 key!4968) lt!1780327)))

(declare-fun b!4623333 () Bool)

(assert (=> b!4623333 (= e!2883926 None!11559)))

(declare-fun b!4623334 () Bool)

(assert (=> b!4623334 (= e!2883927 (Some!11559 (h!57544 lt!1779909)))))

(assert (= (and d!1456177 c!791415) b!4623334))

(assert (= (and d!1456177 (not c!791415)) b!4623328))

(assert (= (and b!4623328 c!791414) b!4623330))

(assert (= (and b!4623328 (not c!791414)) b!4623333))

(assert (= (and d!1456177 res!1938379) b!4623327))

(assert (= (and d!1456177 (not res!1938378)) b!4623331))

(assert (= (and b!4623331 res!1938377) b!4623329))

(assert (= (and b!4623329 res!1938380) b!4623332))

(declare-fun m!5462389 () Bool)

(assert (=> d!1456177 m!5462389))

(declare-fun m!5462391 () Bool)

(assert (=> d!1456177 m!5462391))

(declare-fun m!5462393 () Bool)

(assert (=> b!4623331 m!5462393))

(declare-fun m!5462395 () Bool)

(assert (=> b!4623330 m!5462395))

(declare-fun m!5462397 () Bool)

(assert (=> b!4623329 m!5462397))

(assert (=> b!4623332 m!5462397))

(assert (=> b!4623332 m!5462397))

(declare-fun m!5462399 () Bool)

(assert (=> b!4623332 m!5462399))

(declare-fun m!5462401 () Bool)

(assert (=> b!4623327 m!5462401))

(assert (=> b!4622981 d!1456177))

(declare-fun d!1456185 () Bool)

(assert (=> d!1456185 (= (isDefined!8825 (getPair!286 lt!1779909 key!4968)) (not (isEmpty!28922 (getPair!286 lt!1779909 key!4968))))))

(declare-fun bs!1021752 () Bool)

(assert (= bs!1021752 d!1456185))

(assert (=> bs!1021752 m!5461749))

(declare-fun m!5462403 () Bool)

(assert (=> bs!1021752 m!5462403))

(assert (=> b!4622981 d!1456185))

(declare-fun d!1456187 () Bool)

(assert (=> d!1456187 (containsKey!2418 oldBucket!40 key!4968)))

(declare-fun lt!1780330 () Unit!111517)

(declare-fun choose!31249 (List!51626 K!12885 Hashable!5891) Unit!111517)

(assert (=> d!1456187 (= lt!1780330 (choose!31249 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1456187 (noDuplicateKeys!1494 oldBucket!40)))

(assert (=> d!1456187 (= (lemmaGetPairDefinedThenContainsKey!40 oldBucket!40 key!4968 hashF!1389) lt!1780330)))

(declare-fun bs!1021753 () Bool)

(assert (= bs!1021753 d!1456187))

(assert (=> bs!1021753 m!5461741))

(declare-fun m!5462405 () Bool)

(assert (=> bs!1021753 m!5462405))

(assert (=> bs!1021753 m!5461733))

(assert (=> b!4622981 d!1456187))

(declare-fun d!1456189 () Bool)

(declare-fun dynLambda!21490 (Int tuple2!52424) Bool)

(assert (=> d!1456189 (dynLambda!21490 lambda!191354 lt!1779898)))

(declare-fun lt!1780333 () Unit!111517)

(declare-fun choose!31250 (List!51627 Int tuple2!52424) Unit!111517)

(assert (=> d!1456189 (= lt!1780333 (choose!31250 lt!1779901 lambda!191354 lt!1779898))))

(declare-fun e!2883933 () Bool)

(assert (=> d!1456189 e!2883933))

(declare-fun res!1938383 () Bool)

(assert (=> d!1456189 (=> (not res!1938383) (not e!2883933))))

(assert (=> d!1456189 (= res!1938383 (forall!10807 lt!1779901 lambda!191354))))

(assert (=> d!1456189 (= (forallContained!3030 lt!1779901 lambda!191354 lt!1779898) lt!1780333)))

(declare-fun b!4623337 () Bool)

(assert (=> b!4623337 (= e!2883933 (contains!14525 lt!1779901 lt!1779898))))

(assert (= (and d!1456189 res!1938383) b!4623337))

(declare-fun b_lambda!170689 () Bool)

(assert (=> (not b_lambda!170689) (not d!1456189)))

(declare-fun m!5462407 () Bool)

(assert (=> d!1456189 m!5462407))

(declare-fun m!5462409 () Bool)

(assert (=> d!1456189 m!5462409))

(declare-fun m!5462411 () Bool)

(assert (=> d!1456189 m!5462411))

(assert (=> b!4623337 m!5461737))

(assert (=> b!4622981 d!1456189))

(declare-fun d!1456191 () Bool)

(declare-fun res!1938384 () Bool)

(declare-fun e!2883934 () Bool)

(assert (=> d!1456191 (=> res!1938384 e!2883934)))

(assert (=> d!1456191 (= res!1938384 (and ((_ is Cons!51502) oldBucket!40) (= (_1!29505 (h!57544 oldBucket!40)) key!4968)))))

(assert (=> d!1456191 (= (containsKey!2418 oldBucket!40 key!4968) e!2883934)))

(declare-fun b!4623338 () Bool)

(declare-fun e!2883935 () Bool)

(assert (=> b!4623338 (= e!2883934 e!2883935)))

(declare-fun res!1938385 () Bool)

(assert (=> b!4623338 (=> (not res!1938385) (not e!2883935))))

(assert (=> b!4623338 (= res!1938385 ((_ is Cons!51502) oldBucket!40))))

(declare-fun b!4623339 () Bool)

(assert (=> b!4623339 (= e!2883935 (containsKey!2418 (t!358650 oldBucket!40) key!4968))))

(assert (= (and d!1456191 (not res!1938384)) b!4623338))

(assert (= (and b!4623338 res!1938385) b!4623339))

(assert (=> b!4623339 m!5461753))

(assert (=> b!4622981 d!1456191))

(declare-fun d!1456193 () Bool)

(declare-fun res!1938386 () Bool)

(declare-fun e!2883936 () Bool)

(assert (=> d!1456193 (=> res!1938386 e!2883936)))

(assert (=> d!1456193 (= res!1938386 (not ((_ is Cons!51502) oldBucket!40)))))

(assert (=> d!1456193 (= (noDuplicateKeys!1494 oldBucket!40) e!2883936)))

(declare-fun b!4623340 () Bool)

(declare-fun e!2883937 () Bool)

(assert (=> b!4623340 (= e!2883936 e!2883937)))

(declare-fun res!1938387 () Bool)

(assert (=> b!4623340 (=> (not res!1938387) (not e!2883937))))

(assert (=> b!4623340 (= res!1938387 (not (containsKey!2418 (t!358650 oldBucket!40) (_1!29505 (h!57544 oldBucket!40)))))))

(declare-fun b!4623341 () Bool)

(assert (=> b!4623341 (= e!2883937 (noDuplicateKeys!1494 (t!358650 oldBucket!40)))))

(assert (= (and d!1456193 (not res!1938386)) b!4623340))

(assert (= (and b!4623340 res!1938387) b!4623341))

(declare-fun m!5462413 () Bool)

(assert (=> b!4623340 m!5462413))

(assert (=> b!4623341 m!5461869))

(assert (=> start!463104 d!1456193))

(declare-fun d!1456195 () Bool)

(assert (=> d!1456195 (eq!809 (addToMapMapFromBucket!955 (Cons!51502 lt!1779906 lt!1779895) (ListMap!4258 Nil!51502)) (+!1860 (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502)) lt!1779906))))

(declare-fun lt!1780336 () Unit!111517)

(declare-fun choose!31251 (tuple2!52422 List!51626 ListMap!4257) Unit!111517)

(assert (=> d!1456195 (= lt!1780336 (choose!31251 lt!1779906 lt!1779895 (ListMap!4258 Nil!51502)))))

(assert (=> d!1456195 (noDuplicateKeys!1494 lt!1779895)))

(assert (=> d!1456195 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!60 lt!1779906 lt!1779895 (ListMap!4258 Nil!51502)) lt!1780336)))

(declare-fun bs!1021754 () Bool)

(assert (= bs!1021754 d!1456195))

(assert (=> bs!1021754 m!5461783))

(assert (=> bs!1021754 m!5461771))

(assert (=> bs!1021754 m!5461785))

(declare-fun m!5462415 () Bool)

(assert (=> bs!1021754 m!5462415))

(assert (=> bs!1021754 m!5461769))

(assert (=> bs!1021754 m!5461769))

(assert (=> bs!1021754 m!5461771))

(assert (=> bs!1021754 m!5461783))

(declare-fun m!5462417 () Bool)

(assert (=> bs!1021754 m!5462417))

(assert (=> b!4622992 d!1456195))

(declare-fun b!4623342 () Bool)

(declare-fun e!2883943 () List!51628)

(assert (=> b!4623342 (= e!2883943 (getKeysList!646 (toList!4954 (extractMap!1550 lt!1779905))))))

(declare-fun d!1456197 () Bool)

(declare-fun e!2883941 () Bool)

(assert (=> d!1456197 e!2883941))

(declare-fun res!1938388 () Bool)

(assert (=> d!1456197 (=> res!1938388 e!2883941)))

(declare-fun e!2883938 () Bool)

(assert (=> d!1456197 (= res!1938388 e!2883938)))

(declare-fun res!1938390 () Bool)

(assert (=> d!1456197 (=> (not res!1938390) (not e!2883938))))

(declare-fun lt!1780342 () Bool)

(assert (=> d!1456197 (= res!1938390 (not lt!1780342))))

(declare-fun lt!1780343 () Bool)

(assert (=> d!1456197 (= lt!1780342 lt!1780343)))

(declare-fun lt!1780337 () Unit!111517)

(declare-fun e!2883940 () Unit!111517)

(assert (=> d!1456197 (= lt!1780337 e!2883940)))

(declare-fun c!791418 () Bool)

(assert (=> d!1456197 (= c!791418 lt!1780343)))

(assert (=> d!1456197 (= lt!1780343 (containsKey!2420 (toList!4954 (extractMap!1550 lt!1779905)) key!4968))))

(assert (=> d!1456197 (= (contains!14527 (extractMap!1550 lt!1779905) key!4968) lt!1780342)))

(declare-fun b!4623343 () Bool)

(assert (=> b!4623343 false))

(declare-fun lt!1780339 () Unit!111517)

(declare-fun lt!1780338 () Unit!111517)

(assert (=> b!4623343 (= lt!1780339 lt!1780338)))

(assert (=> b!4623343 (containsKey!2420 (toList!4954 (extractMap!1550 lt!1779905)) key!4968)))

(assert (=> b!4623343 (= lt!1780338 (lemmaInGetKeysListThenContainsKey!645 (toList!4954 (extractMap!1550 lt!1779905)) key!4968))))

(declare-fun e!2883939 () Unit!111517)

(declare-fun Unit!111569 () Unit!111517)

(assert (=> b!4623343 (= e!2883939 Unit!111569)))

(declare-fun bm!322434 () Bool)

(declare-fun call!322439 () Bool)

(assert (=> bm!322434 (= call!322439 (contains!14529 e!2883943 key!4968))))

(declare-fun c!791416 () Bool)

(assert (=> bm!322434 (= c!791416 c!791418)))

(declare-fun b!4623344 () Bool)

(declare-fun lt!1780344 () Unit!111517)

(assert (=> b!4623344 (= e!2883940 lt!1780344)))

(declare-fun lt!1780341 () Unit!111517)

(assert (=> b!4623344 (= lt!1780341 (lemmaContainsKeyImpliesGetValueByKeyDefined!1336 (toList!4954 (extractMap!1550 lt!1779905)) key!4968))))

(assert (=> b!4623344 (isDefined!8827 (getValueByKey!1434 (toList!4954 (extractMap!1550 lt!1779905)) key!4968))))

(declare-fun lt!1780340 () Unit!111517)

(assert (=> b!4623344 (= lt!1780340 lt!1780341)))

(assert (=> b!4623344 (= lt!1780344 (lemmaInListThenGetKeysListContains!641 (toList!4954 (extractMap!1550 lt!1779905)) key!4968))))

(assert (=> b!4623344 call!322439))

(declare-fun b!4623345 () Bool)

(declare-fun Unit!111570 () Unit!111517)

(assert (=> b!4623345 (= e!2883939 Unit!111570)))

(declare-fun b!4623346 () Bool)

(assert (=> b!4623346 (= e!2883943 (keys!18133 (extractMap!1550 lt!1779905)))))

(declare-fun b!4623347 () Bool)

(declare-fun e!2883942 () Bool)

(assert (=> b!4623347 (= e!2883942 (contains!14529 (keys!18133 (extractMap!1550 lt!1779905)) key!4968))))

(declare-fun b!4623348 () Bool)

(assert (=> b!4623348 (= e!2883940 e!2883939)))

(declare-fun c!791417 () Bool)

(assert (=> b!4623348 (= c!791417 call!322439)))

(declare-fun b!4623349 () Bool)

(assert (=> b!4623349 (= e!2883938 (not (contains!14529 (keys!18133 (extractMap!1550 lt!1779905)) key!4968)))))

(declare-fun b!4623350 () Bool)

(assert (=> b!4623350 (= e!2883941 e!2883942)))

(declare-fun res!1938389 () Bool)

(assert (=> b!4623350 (=> (not res!1938389) (not e!2883942))))

(assert (=> b!4623350 (= res!1938389 (isDefined!8827 (getValueByKey!1434 (toList!4954 (extractMap!1550 lt!1779905)) key!4968)))))

(assert (= (and d!1456197 c!791418) b!4623344))

(assert (= (and d!1456197 (not c!791418)) b!4623348))

(assert (= (and b!4623348 c!791417) b!4623343))

(assert (= (and b!4623348 (not c!791417)) b!4623345))

(assert (= (or b!4623344 b!4623348) bm!322434))

(assert (= (and bm!322434 c!791416) b!4623342))

(assert (= (and bm!322434 (not c!791416)) b!4623346))

(assert (= (and d!1456197 res!1938390) b!4623349))

(assert (= (and d!1456197 (not res!1938388)) b!4623350))

(assert (= (and b!4623350 res!1938389) b!4623347))

(assert (=> b!4623349 m!5461781))

(declare-fun m!5462419 () Bool)

(assert (=> b!4623349 m!5462419))

(assert (=> b!4623349 m!5462419))

(declare-fun m!5462421 () Bool)

(assert (=> b!4623349 m!5462421))

(declare-fun m!5462423 () Bool)

(assert (=> b!4623344 m!5462423))

(declare-fun m!5462425 () Bool)

(assert (=> b!4623344 m!5462425))

(assert (=> b!4623344 m!5462425))

(declare-fun m!5462427 () Bool)

(assert (=> b!4623344 m!5462427))

(declare-fun m!5462429 () Bool)

(assert (=> b!4623344 m!5462429))

(assert (=> b!4623350 m!5462425))

(assert (=> b!4623350 m!5462425))

(assert (=> b!4623350 m!5462427))

(declare-fun m!5462431 () Bool)

(assert (=> bm!322434 m!5462431))

(declare-fun m!5462433 () Bool)

(assert (=> b!4623342 m!5462433))

(assert (=> b!4623347 m!5461781))

(assert (=> b!4623347 m!5462419))

(assert (=> b!4623347 m!5462419))

(assert (=> b!4623347 m!5462421))

(declare-fun m!5462435 () Bool)

(assert (=> b!4623343 m!5462435))

(declare-fun m!5462437 () Bool)

(assert (=> b!4623343 m!5462437))

(assert (=> d!1456197 m!5462435))

(assert (=> b!4623346 m!5461781))

(assert (=> b!4623346 m!5462419))

(assert (=> b!4622992 d!1456197))

(declare-fun bs!1021755 () Bool)

(declare-fun d!1456199 () Bool)

(assert (= bs!1021755 (and d!1456199 d!1456133)))

(declare-fun lambda!191479 () Int)

(assert (=> bs!1021755 (= lambda!191479 lambda!191473)))

(declare-fun bs!1021756 () Bool)

(assert (= bs!1021756 (and d!1456199 d!1456065)))

(assert (=> bs!1021756 (= lambda!191479 lambda!191364)))

(declare-fun bs!1021757 () Bool)

(assert (= bs!1021757 (and d!1456199 d!1456071)))

(assert (=> bs!1021757 (= lambda!191479 lambda!191365)))

(declare-fun bs!1021758 () Bool)

(assert (= bs!1021758 (and d!1456199 d!1456121)))

(assert (=> bs!1021758 (= lambda!191479 lambda!191443)))

(declare-fun bs!1021759 () Bool)

(assert (= bs!1021759 (and d!1456199 d!1456131)))

(assert (=> bs!1021759 (= lambda!191479 lambda!191450)))

(declare-fun bs!1021760 () Bool)

(assert (= bs!1021760 (and d!1456199 b!4622981)))

(assert (=> bs!1021760 (= lambda!191479 lambda!191354)))

(declare-fun bs!1021761 () Bool)

(assert (= bs!1021761 (and d!1456199 d!1456079)))

(assert (=> bs!1021761 (= lambda!191479 lambda!191366)))

(declare-fun lt!1780345 () ListMap!4257)

(assert (=> d!1456199 (invariantList!1196 (toList!4954 lt!1780345))))

(declare-fun e!2883944 () ListMap!4257)

(assert (=> d!1456199 (= lt!1780345 e!2883944)))

(declare-fun c!791419 () Bool)

(assert (=> d!1456199 (= c!791419 ((_ is Cons!51503) lt!1779905))))

(assert (=> d!1456199 (forall!10807 lt!1779905 lambda!191479)))

(assert (=> d!1456199 (= (extractMap!1550 lt!1779905) lt!1780345)))

(declare-fun b!4623351 () Bool)

(assert (=> b!4623351 (= e!2883944 (addToMapMapFromBucket!955 (_2!29506 (h!57545 lt!1779905)) (extractMap!1550 (t!358651 lt!1779905))))))

(declare-fun b!4623352 () Bool)

(assert (=> b!4623352 (= e!2883944 (ListMap!4258 Nil!51502))))

(assert (= (and d!1456199 c!791419) b!4623351))

(assert (= (and d!1456199 (not c!791419)) b!4623352))

(declare-fun m!5462439 () Bool)

(assert (=> d!1456199 m!5462439))

(declare-fun m!5462441 () Bool)

(assert (=> d!1456199 m!5462441))

(declare-fun m!5462443 () Bool)

(assert (=> b!4623351 m!5462443))

(assert (=> b!4623351 m!5462443))

(declare-fun m!5462445 () Bool)

(assert (=> b!4623351 m!5462445))

(assert (=> b!4622992 d!1456199))

(declare-fun d!1456201 () Bool)

(assert (=> d!1456201 (= (head!9628 oldBucket!40) (h!57544 oldBucket!40))))

(assert (=> b!4622992 d!1456201))

(declare-fun bs!1021762 () Bool)

(declare-fun d!1456203 () Bool)

(assert (= bs!1021762 (and d!1456203 d!1456133)))

(declare-fun lambda!191482 () Int)

(assert (=> bs!1021762 (= lambda!191482 lambda!191473)))

(declare-fun bs!1021763 () Bool)

(assert (= bs!1021763 (and d!1456203 d!1456065)))

(assert (=> bs!1021763 (= lambda!191482 lambda!191364)))

(declare-fun bs!1021764 () Bool)

(assert (= bs!1021764 (and d!1456203 d!1456071)))

(assert (=> bs!1021764 (= lambda!191482 lambda!191365)))

(declare-fun bs!1021765 () Bool)

(assert (= bs!1021765 (and d!1456203 d!1456121)))

(assert (=> bs!1021765 (= lambda!191482 lambda!191443)))

(declare-fun bs!1021766 () Bool)

(assert (= bs!1021766 (and d!1456203 d!1456131)))

(assert (=> bs!1021766 (= lambda!191482 lambda!191450)))

(declare-fun bs!1021767 () Bool)

(assert (= bs!1021767 (and d!1456203 b!4622981)))

(assert (=> bs!1021767 (= lambda!191482 lambda!191354)))

(declare-fun bs!1021768 () Bool)

(assert (= bs!1021768 (and d!1456203 d!1456079)))

(assert (=> bs!1021768 (= lambda!191482 lambda!191366)))

(declare-fun bs!1021769 () Bool)

(assert (= bs!1021769 (and d!1456203 d!1456199)))

(assert (=> bs!1021769 (= lambda!191482 lambda!191479)))

(assert (=> d!1456203 (contains!14527 (extractMap!1550 (toList!4953 (ListLongMap!3544 lt!1779905))) key!4968)))

(declare-fun lt!1780348 () Unit!111517)

(declare-fun choose!31252 (ListLongMap!3543 K!12885 Hashable!5891) Unit!111517)

(assert (=> d!1456203 (= lt!1780348 (choose!31252 (ListLongMap!3544 lt!1779905) key!4968 hashF!1389))))

(assert (=> d!1456203 (forall!10807 (toList!4953 (ListLongMap!3544 lt!1779905)) lambda!191482)))

(assert (=> d!1456203 (= (lemmaListContainsThenExtractedMapContains!312 (ListLongMap!3544 lt!1779905) key!4968 hashF!1389) lt!1780348)))

(declare-fun bs!1021770 () Bool)

(assert (= bs!1021770 d!1456203))

(declare-fun m!5462447 () Bool)

(assert (=> bs!1021770 m!5462447))

(assert (=> bs!1021770 m!5462447))

(declare-fun m!5462449 () Bool)

(assert (=> bs!1021770 m!5462449))

(declare-fun m!5462451 () Bool)

(assert (=> bs!1021770 m!5462451))

(declare-fun m!5462453 () Bool)

(assert (=> bs!1021770 m!5462453))

(assert (=> b!4622992 d!1456203))

(declare-fun d!1456205 () Bool)

(declare-fun content!8778 (List!51626) (InoxSet tuple2!52422))

(assert (=> d!1456205 (= (eq!809 lt!1779904 (+!1860 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)) (h!57544 oldBucket!40))) (= (content!8778 (toList!4954 lt!1779904)) (content!8778 (toList!4954 (+!1860 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)) (h!57544 oldBucket!40))))))))

(declare-fun bs!1021771 () Bool)

(assert (= bs!1021771 d!1456205))

(declare-fun m!5462455 () Bool)

(assert (=> bs!1021771 m!5462455))

(declare-fun m!5462457 () Bool)

(assert (=> bs!1021771 m!5462457))

(assert (=> b!4622992 d!1456205))

(declare-fun bs!1021772 () Bool)

(declare-fun b!4623356 () Bool)

(assert (= bs!1021772 (and b!4623356 b!4623187)))

(declare-fun lambda!191483 () Int)

(assert (=> bs!1021772 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191483 lambda!191439))))

(declare-fun bs!1021773 () Bool)

(assert (= bs!1021773 (and b!4623356 d!1456127)))

(assert (=> bs!1021773 (not (= lambda!191483 lambda!191447))))

(declare-fun bs!1021774 () Bool)

(assert (= bs!1021774 (and b!4623356 b!4623185)))

(assert (=> bs!1021774 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191483 lambda!191441))))

(assert (=> bs!1021774 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191483 lambda!191440))))

(declare-fun bs!1021775 () Bool)

(assert (= bs!1021775 (and b!4623356 d!1456081)))

(assert (=> bs!1021775 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191483 lambda!191442))))

(assert (=> b!4623356 true))

(declare-fun bs!1021776 () Bool)

(declare-fun b!4623354 () Bool)

(assert (= bs!1021776 (and b!4623354 b!4623187)))

(declare-fun lambda!191484 () Int)

(assert (=> bs!1021776 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191484 lambda!191439))))

(declare-fun bs!1021777 () Bool)

(assert (= bs!1021777 (and b!4623354 d!1456127)))

(assert (=> bs!1021777 (not (= lambda!191484 lambda!191447))))

(declare-fun bs!1021778 () Bool)

(assert (= bs!1021778 (and b!4623354 b!4623185)))

(assert (=> bs!1021778 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191484 lambda!191441))))

(declare-fun bs!1021779 () Bool)

(assert (= bs!1021779 (and b!4623354 b!4623356)))

(assert (=> bs!1021779 (= lambda!191484 lambda!191483)))

(assert (=> bs!1021778 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191484 lambda!191440))))

(declare-fun bs!1021780 () Bool)

(assert (= bs!1021780 (and b!4623354 d!1456081)))

(assert (=> bs!1021780 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191484 lambda!191442))))

(assert (=> b!4623354 true))

(declare-fun lt!1780369 () ListMap!4257)

(declare-fun lambda!191485 () Int)

(assert (=> bs!1021776 (= (= lt!1780369 lt!1779891) (= lambda!191485 lambda!191439))))

(assert (=> b!4623354 (= (= lt!1780369 (ListMap!4258 Nil!51502)) (= lambda!191485 lambda!191484))))

(assert (=> bs!1021777 (not (= lambda!191485 lambda!191447))))

(assert (=> bs!1021778 (= (= lt!1780369 lt!1780151) (= lambda!191485 lambda!191441))))

(assert (=> bs!1021779 (= (= lt!1780369 (ListMap!4258 Nil!51502)) (= lambda!191485 lambda!191483))))

(assert (=> bs!1021778 (= (= lt!1780369 lt!1779891) (= lambda!191485 lambda!191440))))

(assert (=> bs!1021780 (= (= lt!1780369 lt!1780138) (= lambda!191485 lambda!191442))))

(assert (=> b!4623354 true))

(declare-fun bs!1021781 () Bool)

(declare-fun d!1456207 () Bool)

(assert (= bs!1021781 (and d!1456207 b!4623187)))

(declare-fun lambda!191486 () Int)

(declare-fun lt!1780356 () ListMap!4257)

(assert (=> bs!1021781 (= (= lt!1780356 lt!1779891) (= lambda!191486 lambda!191439))))

(declare-fun bs!1021782 () Bool)

(assert (= bs!1021782 (and d!1456207 b!4623354)))

(assert (=> bs!1021782 (= (= lt!1780356 (ListMap!4258 Nil!51502)) (= lambda!191486 lambda!191484))))

(declare-fun bs!1021783 () Bool)

(assert (= bs!1021783 (and d!1456207 d!1456127)))

(assert (=> bs!1021783 (not (= lambda!191486 lambda!191447))))

(assert (=> bs!1021782 (= (= lt!1780356 lt!1780369) (= lambda!191486 lambda!191485))))

(declare-fun bs!1021784 () Bool)

(assert (= bs!1021784 (and d!1456207 b!4623185)))

(assert (=> bs!1021784 (= (= lt!1780356 lt!1780151) (= lambda!191486 lambda!191441))))

(declare-fun bs!1021785 () Bool)

(assert (= bs!1021785 (and d!1456207 b!4623356)))

(assert (=> bs!1021785 (= (= lt!1780356 (ListMap!4258 Nil!51502)) (= lambda!191486 lambda!191483))))

(assert (=> bs!1021784 (= (= lt!1780356 lt!1779891) (= lambda!191486 lambda!191440))))

(declare-fun bs!1021786 () Bool)

(assert (= bs!1021786 (and d!1456207 d!1456081)))

(assert (=> bs!1021786 (= (= lt!1780356 lt!1780138) (= lambda!191486 lambda!191442))))

(assert (=> d!1456207 true))

(declare-fun b!4623353 () Bool)

(declare-fun e!2883946 () Bool)

(assert (=> b!4623353 (= e!2883946 (invariantList!1196 (toList!4954 lt!1780356)))))

(assert (=> d!1456207 e!2883946))

(declare-fun res!1938392 () Bool)

(assert (=> d!1456207 (=> (not res!1938392) (not e!2883946))))

(assert (=> d!1456207 (= res!1938392 (forall!10808 (Cons!51502 lt!1779893 lt!1779907) lambda!191486))))

(declare-fun e!2883947 () ListMap!4257)

(assert (=> d!1456207 (= lt!1780356 e!2883947)))

(declare-fun c!791420 () Bool)

(assert (=> d!1456207 (= c!791420 ((_ is Nil!51502) (Cons!51502 lt!1779893 lt!1779907)))))

(assert (=> d!1456207 (noDuplicateKeys!1494 (Cons!51502 lt!1779893 lt!1779907))))

(assert (=> d!1456207 (= (addToMapMapFromBucket!955 (Cons!51502 lt!1779893 lt!1779907) (ListMap!4258 Nil!51502)) lt!1780356)))

(declare-fun bm!322435 () Bool)

(declare-fun call!322442 () Bool)

(assert (=> bm!322435 (= call!322442 (forall!10808 (ite c!791420 (toList!4954 (ListMap!4258 Nil!51502)) (Cons!51502 lt!1779893 lt!1779907)) (ite c!791420 lambda!191483 lambda!191485)))))

(assert (=> b!4623354 (= e!2883947 lt!1780369)))

(declare-fun lt!1780368 () ListMap!4257)

(assert (=> b!4623354 (= lt!1780368 (+!1860 (ListMap!4258 Nil!51502) (h!57544 (Cons!51502 lt!1779893 lt!1779907))))))

(assert (=> b!4623354 (= lt!1780369 (addToMapMapFromBucket!955 (t!358650 (Cons!51502 lt!1779893 lt!1779907)) (+!1860 (ListMap!4258 Nil!51502) (h!57544 (Cons!51502 lt!1779893 lt!1779907)))))))

(declare-fun lt!1780360 () Unit!111517)

(declare-fun call!322440 () Unit!111517)

(assert (=> b!4623354 (= lt!1780360 call!322440)))

(declare-fun call!322441 () Bool)

(assert (=> b!4623354 call!322441))

(declare-fun lt!1780351 () Unit!111517)

(assert (=> b!4623354 (= lt!1780351 lt!1780360)))

(assert (=> b!4623354 (forall!10808 (toList!4954 lt!1780368) lambda!191485)))

(declare-fun lt!1780366 () Unit!111517)

(declare-fun Unit!111571 () Unit!111517)

(assert (=> b!4623354 (= lt!1780366 Unit!111571)))

(assert (=> b!4623354 (forall!10808 (t!358650 (Cons!51502 lt!1779893 lt!1779907)) lambda!191485)))

(declare-fun lt!1780355 () Unit!111517)

(declare-fun Unit!111572 () Unit!111517)

(assert (=> b!4623354 (= lt!1780355 Unit!111572)))

(declare-fun lt!1780354 () Unit!111517)

(declare-fun Unit!111573 () Unit!111517)

(assert (=> b!4623354 (= lt!1780354 Unit!111573)))

(declare-fun lt!1780362 () Unit!111517)

(assert (=> b!4623354 (= lt!1780362 (forallContained!3032 (toList!4954 lt!1780368) lambda!191485 (h!57544 (Cons!51502 lt!1779893 lt!1779907))))))

(assert (=> b!4623354 (contains!14527 lt!1780368 (_1!29505 (h!57544 (Cons!51502 lt!1779893 lt!1779907))))))

(declare-fun lt!1780364 () Unit!111517)

(declare-fun Unit!111575 () Unit!111517)

(assert (=> b!4623354 (= lt!1780364 Unit!111575)))

(assert (=> b!4623354 (contains!14527 lt!1780369 (_1!29505 (h!57544 (Cons!51502 lt!1779893 lt!1779907))))))

(declare-fun lt!1780363 () Unit!111517)

(declare-fun Unit!111576 () Unit!111517)

(assert (=> b!4623354 (= lt!1780363 Unit!111576)))

(assert (=> b!4623354 (forall!10808 (Cons!51502 lt!1779893 lt!1779907) lambda!191485)))

(declare-fun lt!1780358 () Unit!111517)

(declare-fun Unit!111577 () Unit!111517)

(assert (=> b!4623354 (= lt!1780358 Unit!111577)))

(assert (=> b!4623354 (forall!10808 (toList!4954 lt!1780368) lambda!191485)))

(declare-fun lt!1780352 () Unit!111517)

(declare-fun Unit!111578 () Unit!111517)

(assert (=> b!4623354 (= lt!1780352 Unit!111578)))

(declare-fun lt!1780350 () Unit!111517)

(declare-fun Unit!111580 () Unit!111517)

(assert (=> b!4623354 (= lt!1780350 Unit!111580)))

(declare-fun lt!1780361 () Unit!111517)

(assert (=> b!4623354 (= lt!1780361 (addForallContainsKeyThenBeforeAdding!497 (ListMap!4258 Nil!51502) lt!1780369 (_1!29505 (h!57544 (Cons!51502 lt!1779893 lt!1779907))) (_2!29505 (h!57544 (Cons!51502 lt!1779893 lt!1779907)))))))

(assert (=> b!4623354 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191485)))

(declare-fun lt!1780353 () Unit!111517)

(assert (=> b!4623354 (= lt!1780353 lt!1780361)))

(assert (=> b!4623354 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191485)))

(declare-fun lt!1780357 () Unit!111517)

(declare-fun Unit!111583 () Unit!111517)

(assert (=> b!4623354 (= lt!1780357 Unit!111583)))

(declare-fun res!1938393 () Bool)

(assert (=> b!4623354 (= res!1938393 call!322442)))

(declare-fun e!2883945 () Bool)

(assert (=> b!4623354 (=> (not res!1938393) (not e!2883945))))

(assert (=> b!4623354 e!2883945))

(declare-fun lt!1780359 () Unit!111517)

(declare-fun Unit!111586 () Unit!111517)

(assert (=> b!4623354 (= lt!1780359 Unit!111586)))

(declare-fun b!4623355 () Bool)

(declare-fun res!1938391 () Bool)

(assert (=> b!4623355 (=> (not res!1938391) (not e!2883946))))

(assert (=> b!4623355 (= res!1938391 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191486))))

(declare-fun bm!322436 () Bool)

(assert (=> bm!322436 (= call!322441 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) (ite c!791420 lambda!191483 lambda!191484)))))

(declare-fun bm!322437 () Bool)

(assert (=> bm!322437 (= call!322440 (lemmaContainsAllItsOwnKeys!498 (ListMap!4258 Nil!51502)))))

(assert (=> b!4623356 (= e!2883947 (ListMap!4258 Nil!51502))))

(declare-fun lt!1780349 () Unit!111517)

(assert (=> b!4623356 (= lt!1780349 call!322440)))

(assert (=> b!4623356 call!322441))

(declare-fun lt!1780365 () Unit!111517)

(assert (=> b!4623356 (= lt!1780365 lt!1780349)))

(assert (=> b!4623356 call!322442))

(declare-fun lt!1780367 () Unit!111517)

(declare-fun Unit!111590 () Unit!111517)

(assert (=> b!4623356 (= lt!1780367 Unit!111590)))

(declare-fun b!4623357 () Bool)

(assert (=> b!4623357 (= e!2883945 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191485))))

(assert (= (and d!1456207 c!791420) b!4623356))

(assert (= (and d!1456207 (not c!791420)) b!4623354))

(assert (= (and b!4623354 res!1938393) b!4623357))

(assert (= (or b!4623356 b!4623354) bm!322437))

(assert (= (or b!4623356 b!4623354) bm!322435))

(assert (= (or b!4623356 b!4623354) bm!322436))

(assert (= (and d!1456207 res!1938392) b!4623355))

(assert (= (and b!4623355 res!1938391) b!4623353))

(declare-fun m!5462459 () Bool)

(assert (=> b!4623357 m!5462459))

(declare-fun m!5462461 () Bool)

(assert (=> b!4623355 m!5462461))

(declare-fun m!5462463 () Bool)

(assert (=> bm!322436 m!5462463))

(declare-fun m!5462465 () Bool)

(assert (=> d!1456207 m!5462465))

(declare-fun m!5462467 () Bool)

(assert (=> d!1456207 m!5462467))

(declare-fun m!5462469 () Bool)

(assert (=> bm!322437 m!5462469))

(declare-fun m!5462471 () Bool)

(assert (=> b!4623353 m!5462471))

(declare-fun m!5462473 () Bool)

(assert (=> b!4623354 m!5462473))

(assert (=> b!4623354 m!5462459))

(declare-fun m!5462475 () Bool)

(assert (=> b!4623354 m!5462475))

(declare-fun m!5462477 () Bool)

(assert (=> b!4623354 m!5462477))

(declare-fun m!5462479 () Bool)

(assert (=> b!4623354 m!5462479))

(declare-fun m!5462481 () Bool)

(assert (=> b!4623354 m!5462481))

(declare-fun m!5462483 () Bool)

(assert (=> b!4623354 m!5462483))

(assert (=> b!4623354 m!5462475))

(declare-fun m!5462485 () Bool)

(assert (=> b!4623354 m!5462485))

(declare-fun m!5462487 () Bool)

(assert (=> b!4623354 m!5462487))

(assert (=> b!4623354 m!5462479))

(declare-fun m!5462489 () Bool)

(assert (=> b!4623354 m!5462489))

(assert (=> b!4623354 m!5462459))

(declare-fun m!5462491 () Bool)

(assert (=> bm!322435 m!5462491))

(assert (=> b!4622992 d!1456207))

(declare-fun bs!1021787 () Bool)

(declare-fun d!1456209 () Bool)

(assert (= bs!1021787 (and d!1456209 d!1456133)))

(declare-fun lambda!191487 () Int)

(assert (=> bs!1021787 (= lambda!191487 lambda!191473)))

(declare-fun bs!1021788 () Bool)

(assert (= bs!1021788 (and d!1456209 d!1456065)))

(assert (=> bs!1021788 (= lambda!191487 lambda!191364)))

(declare-fun bs!1021789 () Bool)

(assert (= bs!1021789 (and d!1456209 d!1456203)))

(assert (=> bs!1021789 (= lambda!191487 lambda!191482)))

(declare-fun bs!1021790 () Bool)

(assert (= bs!1021790 (and d!1456209 d!1456071)))

(assert (=> bs!1021790 (= lambda!191487 lambda!191365)))

(declare-fun bs!1021791 () Bool)

(assert (= bs!1021791 (and d!1456209 d!1456121)))

(assert (=> bs!1021791 (= lambda!191487 lambda!191443)))

(declare-fun bs!1021792 () Bool)

(assert (= bs!1021792 (and d!1456209 d!1456131)))

(assert (=> bs!1021792 (= lambda!191487 lambda!191450)))

(declare-fun bs!1021793 () Bool)

(assert (= bs!1021793 (and d!1456209 b!4622981)))

(assert (=> bs!1021793 (= lambda!191487 lambda!191354)))

(declare-fun bs!1021794 () Bool)

(assert (= bs!1021794 (and d!1456209 d!1456079)))

(assert (=> bs!1021794 (= lambda!191487 lambda!191366)))

(declare-fun bs!1021795 () Bool)

(assert (= bs!1021795 (and d!1456209 d!1456199)))

(assert (=> bs!1021795 (= lambda!191487 lambda!191479)))

(declare-fun lt!1780370 () ListMap!4257)

(assert (=> d!1456209 (invariantList!1196 (toList!4954 lt!1780370))))

(declare-fun e!2883948 () ListMap!4257)

(assert (=> d!1456209 (= lt!1780370 e!2883948)))

(declare-fun c!791421 () Bool)

(assert (=> d!1456209 (= c!791421 ((_ is Cons!51503) (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)))))

(assert (=> d!1456209 (forall!10807 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503) lambda!191487)))

(assert (=> d!1456209 (= (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)) lt!1780370)))

(declare-fun b!4623358 () Bool)

(assert (=> b!4623358 (= e!2883948 (addToMapMapFromBucket!955 (_2!29506 (h!57545 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503))) (extractMap!1550 (t!358651 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)))))))

(declare-fun b!4623359 () Bool)

(assert (=> b!4623359 (= e!2883948 (ListMap!4258 Nil!51502))))

(assert (= (and d!1456209 c!791421) b!4623358))

(assert (= (and d!1456209 (not c!791421)) b!4623359))

(declare-fun m!5462493 () Bool)

(assert (=> d!1456209 m!5462493))

(declare-fun m!5462495 () Bool)

(assert (=> d!1456209 m!5462495))

(declare-fun m!5462497 () Bool)

(assert (=> b!4623358 m!5462497))

(assert (=> b!4623358 m!5462497))

(declare-fun m!5462499 () Bool)

(assert (=> b!4623358 m!5462499))

(assert (=> b!4622992 d!1456209))

(declare-fun d!1456211 () Bool)

(assert (=> d!1456211 (= (eq!809 (addToMapMapFromBucket!955 (Cons!51502 lt!1779906 lt!1779895) (ListMap!4258 Nil!51502)) (+!1860 (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502)) lt!1779906)) (= (content!8778 (toList!4954 (addToMapMapFromBucket!955 (Cons!51502 lt!1779906 lt!1779895) (ListMap!4258 Nil!51502)))) (content!8778 (toList!4954 (+!1860 (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502)) lt!1779906)))))))

(declare-fun bs!1021796 () Bool)

(assert (= bs!1021796 d!1456211))

(declare-fun m!5462501 () Bool)

(assert (=> bs!1021796 m!5462501))

(declare-fun m!5462503 () Bool)

(assert (=> bs!1021796 m!5462503))

(assert (=> b!4622992 d!1456211))

(declare-fun d!1456213 () Bool)

(assert (=> d!1456213 (= (eq!809 (addToMapMapFromBucket!955 (Cons!51502 lt!1779893 lt!1779907) (ListMap!4258 Nil!51502)) (+!1860 (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502)) lt!1779893)) (= (content!8778 (toList!4954 (addToMapMapFromBucket!955 (Cons!51502 lt!1779893 lt!1779907) (ListMap!4258 Nil!51502)))) (content!8778 (toList!4954 (+!1860 (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502)) lt!1779893)))))))

(declare-fun bs!1021797 () Bool)

(assert (= bs!1021797 d!1456213))

(declare-fun m!5462505 () Bool)

(assert (=> bs!1021797 m!5462505))

(declare-fun m!5462507 () Bool)

(assert (=> bs!1021797 m!5462507))

(assert (=> b!4622992 d!1456213))

(declare-fun bs!1021798 () Bool)

(declare-fun b!4623363 () Bool)

(assert (= bs!1021798 (and b!4623363 d!1456207)))

(declare-fun lambda!191488 () Int)

(assert (=> bs!1021798 (= (= (ListMap!4258 Nil!51502) lt!1780356) (= lambda!191488 lambda!191486))))

(declare-fun bs!1021799 () Bool)

(assert (= bs!1021799 (and b!4623363 b!4623187)))

(assert (=> bs!1021799 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191488 lambda!191439))))

(declare-fun bs!1021800 () Bool)

(assert (= bs!1021800 (and b!4623363 b!4623354)))

(assert (=> bs!1021800 (= lambda!191488 lambda!191484)))

(declare-fun bs!1021801 () Bool)

(assert (= bs!1021801 (and b!4623363 d!1456127)))

(assert (=> bs!1021801 (not (= lambda!191488 lambda!191447))))

(assert (=> bs!1021800 (= (= (ListMap!4258 Nil!51502) lt!1780369) (= lambda!191488 lambda!191485))))

(declare-fun bs!1021802 () Bool)

(assert (= bs!1021802 (and b!4623363 b!4623185)))

(assert (=> bs!1021802 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191488 lambda!191441))))

(declare-fun bs!1021803 () Bool)

(assert (= bs!1021803 (and b!4623363 b!4623356)))

(assert (=> bs!1021803 (= lambda!191488 lambda!191483)))

(assert (=> bs!1021802 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191488 lambda!191440))))

(declare-fun bs!1021804 () Bool)

(assert (= bs!1021804 (and b!4623363 d!1456081)))

(assert (=> bs!1021804 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191488 lambda!191442))))

(assert (=> b!4623363 true))

(declare-fun bs!1021805 () Bool)

(declare-fun b!4623361 () Bool)

(assert (= bs!1021805 (and b!4623361 b!4623363)))

(declare-fun lambda!191489 () Int)

(assert (=> bs!1021805 (= lambda!191489 lambda!191488)))

(declare-fun bs!1021806 () Bool)

(assert (= bs!1021806 (and b!4623361 d!1456207)))

(assert (=> bs!1021806 (= (= (ListMap!4258 Nil!51502) lt!1780356) (= lambda!191489 lambda!191486))))

(declare-fun bs!1021807 () Bool)

(assert (= bs!1021807 (and b!4623361 b!4623187)))

(assert (=> bs!1021807 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191489 lambda!191439))))

(declare-fun bs!1021808 () Bool)

(assert (= bs!1021808 (and b!4623361 b!4623354)))

(assert (=> bs!1021808 (= lambda!191489 lambda!191484)))

(declare-fun bs!1021809 () Bool)

(assert (= bs!1021809 (and b!4623361 d!1456127)))

(assert (=> bs!1021809 (not (= lambda!191489 lambda!191447))))

(assert (=> bs!1021808 (= (= (ListMap!4258 Nil!51502) lt!1780369) (= lambda!191489 lambda!191485))))

(declare-fun bs!1021810 () Bool)

(assert (= bs!1021810 (and b!4623361 b!4623185)))

(assert (=> bs!1021810 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191489 lambda!191441))))

(declare-fun bs!1021811 () Bool)

(assert (= bs!1021811 (and b!4623361 b!4623356)))

(assert (=> bs!1021811 (= lambda!191489 lambda!191483)))

(assert (=> bs!1021810 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191489 lambda!191440))))

(declare-fun bs!1021812 () Bool)

(assert (= bs!1021812 (and b!4623361 d!1456081)))

(assert (=> bs!1021812 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191489 lambda!191442))))

(assert (=> b!4623361 true))

(declare-fun lt!1780391 () ListMap!4257)

(declare-fun lambda!191490 () Int)

(assert (=> bs!1021805 (= (= lt!1780391 (ListMap!4258 Nil!51502)) (= lambda!191490 lambda!191488))))

(assert (=> bs!1021806 (= (= lt!1780391 lt!1780356) (= lambda!191490 lambda!191486))))

(assert (=> bs!1021807 (= (= lt!1780391 lt!1779891) (= lambda!191490 lambda!191439))))

(assert (=> bs!1021808 (= (= lt!1780391 (ListMap!4258 Nil!51502)) (= lambda!191490 lambda!191484))))

(assert (=> bs!1021809 (not (= lambda!191490 lambda!191447))))

(assert (=> bs!1021808 (= (= lt!1780391 lt!1780369) (= lambda!191490 lambda!191485))))

(assert (=> bs!1021810 (= (= lt!1780391 lt!1780151) (= lambda!191490 lambda!191441))))

(assert (=> b!4623361 (= (= lt!1780391 (ListMap!4258 Nil!51502)) (= lambda!191490 lambda!191489))))

(assert (=> bs!1021811 (= (= lt!1780391 (ListMap!4258 Nil!51502)) (= lambda!191490 lambda!191483))))

(assert (=> bs!1021810 (= (= lt!1780391 lt!1779891) (= lambda!191490 lambda!191440))))

(assert (=> bs!1021812 (= (= lt!1780391 lt!1780138) (= lambda!191490 lambda!191442))))

(assert (=> b!4623361 true))

(declare-fun bs!1021813 () Bool)

(declare-fun d!1456215 () Bool)

(assert (= bs!1021813 (and d!1456215 b!4623363)))

(declare-fun lt!1780378 () ListMap!4257)

(declare-fun lambda!191491 () Int)

(assert (=> bs!1021813 (= (= lt!1780378 (ListMap!4258 Nil!51502)) (= lambda!191491 lambda!191488))))

(declare-fun bs!1021814 () Bool)

(assert (= bs!1021814 (and d!1456215 d!1456207)))

(assert (=> bs!1021814 (= (= lt!1780378 lt!1780356) (= lambda!191491 lambda!191486))))

(declare-fun bs!1021815 () Bool)

(assert (= bs!1021815 (and d!1456215 b!4623187)))

(assert (=> bs!1021815 (= (= lt!1780378 lt!1779891) (= lambda!191491 lambda!191439))))

(declare-fun bs!1021816 () Bool)

(assert (= bs!1021816 (and d!1456215 b!4623354)))

(assert (=> bs!1021816 (= (= lt!1780378 (ListMap!4258 Nil!51502)) (= lambda!191491 lambda!191484))))

(declare-fun bs!1021817 () Bool)

(assert (= bs!1021817 (and d!1456215 d!1456127)))

(assert (=> bs!1021817 (not (= lambda!191491 lambda!191447))))

(assert (=> bs!1021816 (= (= lt!1780378 lt!1780369) (= lambda!191491 lambda!191485))))

(declare-fun bs!1021818 () Bool)

(assert (= bs!1021818 (and d!1456215 b!4623185)))

(assert (=> bs!1021818 (= (= lt!1780378 lt!1780151) (= lambda!191491 lambda!191441))))

(declare-fun bs!1021819 () Bool)

(assert (= bs!1021819 (and d!1456215 b!4623361)))

(assert (=> bs!1021819 (= (= lt!1780378 lt!1780391) (= lambda!191491 lambda!191490))))

(assert (=> bs!1021819 (= (= lt!1780378 (ListMap!4258 Nil!51502)) (= lambda!191491 lambda!191489))))

(declare-fun bs!1021820 () Bool)

(assert (= bs!1021820 (and d!1456215 b!4623356)))

(assert (=> bs!1021820 (= (= lt!1780378 (ListMap!4258 Nil!51502)) (= lambda!191491 lambda!191483))))

(assert (=> bs!1021818 (= (= lt!1780378 lt!1779891) (= lambda!191491 lambda!191440))))

(declare-fun bs!1021821 () Bool)

(assert (= bs!1021821 (and d!1456215 d!1456081)))

(assert (=> bs!1021821 (= (= lt!1780378 lt!1780138) (= lambda!191491 lambda!191442))))

(assert (=> d!1456215 true))

(declare-fun b!4623360 () Bool)

(declare-fun e!2883950 () Bool)

(assert (=> b!4623360 (= e!2883950 (invariantList!1196 (toList!4954 lt!1780378)))))

(assert (=> d!1456215 e!2883950))

(declare-fun res!1938395 () Bool)

(assert (=> d!1456215 (=> (not res!1938395) (not e!2883950))))

(assert (=> d!1456215 (= res!1938395 (forall!10808 lt!1779907 lambda!191491))))

(declare-fun e!2883951 () ListMap!4257)

(assert (=> d!1456215 (= lt!1780378 e!2883951)))

(declare-fun c!791422 () Bool)

(assert (=> d!1456215 (= c!791422 ((_ is Nil!51502) lt!1779907))))

(assert (=> d!1456215 (noDuplicateKeys!1494 lt!1779907)))

(assert (=> d!1456215 (= (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502)) lt!1780378)))

(declare-fun bm!322438 () Bool)

(declare-fun call!322445 () Bool)

(assert (=> bm!322438 (= call!322445 (forall!10808 (ite c!791422 (toList!4954 (ListMap!4258 Nil!51502)) lt!1779907) (ite c!791422 lambda!191488 lambda!191490)))))

(assert (=> b!4623361 (= e!2883951 lt!1780391)))

(declare-fun lt!1780390 () ListMap!4257)

(assert (=> b!4623361 (= lt!1780390 (+!1860 (ListMap!4258 Nil!51502) (h!57544 lt!1779907)))))

(assert (=> b!4623361 (= lt!1780391 (addToMapMapFromBucket!955 (t!358650 lt!1779907) (+!1860 (ListMap!4258 Nil!51502) (h!57544 lt!1779907))))))

(declare-fun lt!1780382 () Unit!111517)

(declare-fun call!322443 () Unit!111517)

(assert (=> b!4623361 (= lt!1780382 call!322443)))

(declare-fun call!322444 () Bool)

(assert (=> b!4623361 call!322444))

(declare-fun lt!1780373 () Unit!111517)

(assert (=> b!4623361 (= lt!1780373 lt!1780382)))

(assert (=> b!4623361 (forall!10808 (toList!4954 lt!1780390) lambda!191490)))

(declare-fun lt!1780388 () Unit!111517)

(declare-fun Unit!111593 () Unit!111517)

(assert (=> b!4623361 (= lt!1780388 Unit!111593)))

(assert (=> b!4623361 (forall!10808 (t!358650 lt!1779907) lambda!191490)))

(declare-fun lt!1780377 () Unit!111517)

(declare-fun Unit!111594 () Unit!111517)

(assert (=> b!4623361 (= lt!1780377 Unit!111594)))

(declare-fun lt!1780376 () Unit!111517)

(declare-fun Unit!111595 () Unit!111517)

(assert (=> b!4623361 (= lt!1780376 Unit!111595)))

(declare-fun lt!1780384 () Unit!111517)

(assert (=> b!4623361 (= lt!1780384 (forallContained!3032 (toList!4954 lt!1780390) lambda!191490 (h!57544 lt!1779907)))))

(assert (=> b!4623361 (contains!14527 lt!1780390 (_1!29505 (h!57544 lt!1779907)))))

(declare-fun lt!1780386 () Unit!111517)

(declare-fun Unit!111596 () Unit!111517)

(assert (=> b!4623361 (= lt!1780386 Unit!111596)))

(assert (=> b!4623361 (contains!14527 lt!1780391 (_1!29505 (h!57544 lt!1779907)))))

(declare-fun lt!1780385 () Unit!111517)

(declare-fun Unit!111597 () Unit!111517)

(assert (=> b!4623361 (= lt!1780385 Unit!111597)))

(assert (=> b!4623361 (forall!10808 lt!1779907 lambda!191490)))

(declare-fun lt!1780380 () Unit!111517)

(declare-fun Unit!111598 () Unit!111517)

(assert (=> b!4623361 (= lt!1780380 Unit!111598)))

(assert (=> b!4623361 (forall!10808 (toList!4954 lt!1780390) lambda!191490)))

(declare-fun lt!1780374 () Unit!111517)

(declare-fun Unit!111599 () Unit!111517)

(assert (=> b!4623361 (= lt!1780374 Unit!111599)))

(declare-fun lt!1780372 () Unit!111517)

(declare-fun Unit!111600 () Unit!111517)

(assert (=> b!4623361 (= lt!1780372 Unit!111600)))

(declare-fun lt!1780383 () Unit!111517)

(assert (=> b!4623361 (= lt!1780383 (addForallContainsKeyThenBeforeAdding!497 (ListMap!4258 Nil!51502) lt!1780391 (_1!29505 (h!57544 lt!1779907)) (_2!29505 (h!57544 lt!1779907))))))

(assert (=> b!4623361 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191490)))

(declare-fun lt!1780375 () Unit!111517)

(assert (=> b!4623361 (= lt!1780375 lt!1780383)))

(assert (=> b!4623361 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191490)))

(declare-fun lt!1780379 () Unit!111517)

(declare-fun Unit!111601 () Unit!111517)

(assert (=> b!4623361 (= lt!1780379 Unit!111601)))

(declare-fun res!1938396 () Bool)

(assert (=> b!4623361 (= res!1938396 call!322445)))

(declare-fun e!2883949 () Bool)

(assert (=> b!4623361 (=> (not res!1938396) (not e!2883949))))

(assert (=> b!4623361 e!2883949))

(declare-fun lt!1780381 () Unit!111517)

(declare-fun Unit!111602 () Unit!111517)

(assert (=> b!4623361 (= lt!1780381 Unit!111602)))

(declare-fun b!4623362 () Bool)

(declare-fun res!1938394 () Bool)

(assert (=> b!4623362 (=> (not res!1938394) (not e!2883950))))

(assert (=> b!4623362 (= res!1938394 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191491))))

(declare-fun bm!322439 () Bool)

(assert (=> bm!322439 (= call!322444 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) (ite c!791422 lambda!191488 lambda!191489)))))

(declare-fun bm!322440 () Bool)

(assert (=> bm!322440 (= call!322443 (lemmaContainsAllItsOwnKeys!498 (ListMap!4258 Nil!51502)))))

(assert (=> b!4623363 (= e!2883951 (ListMap!4258 Nil!51502))))

(declare-fun lt!1780371 () Unit!111517)

(assert (=> b!4623363 (= lt!1780371 call!322443)))

(assert (=> b!4623363 call!322444))

(declare-fun lt!1780387 () Unit!111517)

(assert (=> b!4623363 (= lt!1780387 lt!1780371)))

(assert (=> b!4623363 call!322445))

(declare-fun lt!1780389 () Unit!111517)

(declare-fun Unit!111604 () Unit!111517)

(assert (=> b!4623363 (= lt!1780389 Unit!111604)))

(declare-fun b!4623364 () Bool)

(assert (=> b!4623364 (= e!2883949 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191490))))

(assert (= (and d!1456215 c!791422) b!4623363))

(assert (= (and d!1456215 (not c!791422)) b!4623361))

(assert (= (and b!4623361 res!1938396) b!4623364))

(assert (= (or b!4623363 b!4623361) bm!322440))

(assert (= (or b!4623363 b!4623361) bm!322438))

(assert (= (or b!4623363 b!4623361) bm!322439))

(assert (= (and d!1456215 res!1938395) b!4623362))

(assert (= (and b!4623362 res!1938394) b!4623360))

(declare-fun m!5462509 () Bool)

(assert (=> b!4623364 m!5462509))

(declare-fun m!5462511 () Bool)

(assert (=> b!4623362 m!5462511))

(declare-fun m!5462513 () Bool)

(assert (=> bm!322439 m!5462513))

(declare-fun m!5462515 () Bool)

(assert (=> d!1456215 m!5462515))

(declare-fun m!5462517 () Bool)

(assert (=> d!1456215 m!5462517))

(assert (=> bm!322440 m!5462469))

(declare-fun m!5462519 () Bool)

(assert (=> b!4623360 m!5462519))

(declare-fun m!5462521 () Bool)

(assert (=> b!4623361 m!5462521))

(assert (=> b!4623361 m!5462509))

(declare-fun m!5462523 () Bool)

(assert (=> b!4623361 m!5462523))

(declare-fun m!5462525 () Bool)

(assert (=> b!4623361 m!5462525))

(declare-fun m!5462527 () Bool)

(assert (=> b!4623361 m!5462527))

(declare-fun m!5462529 () Bool)

(assert (=> b!4623361 m!5462529))

(declare-fun m!5462531 () Bool)

(assert (=> b!4623361 m!5462531))

(assert (=> b!4623361 m!5462523))

(declare-fun m!5462533 () Bool)

(assert (=> b!4623361 m!5462533))

(declare-fun m!5462535 () Bool)

(assert (=> b!4623361 m!5462535))

(assert (=> b!4623361 m!5462527))

(declare-fun m!5462537 () Bool)

(assert (=> b!4623361 m!5462537))

(assert (=> b!4623361 m!5462509))

(declare-fun m!5462539 () Bool)

(assert (=> bm!322438 m!5462539))

(assert (=> b!4622992 d!1456215))

(declare-fun d!1456217 () Bool)

(assert (=> d!1456217 (= (head!9628 newBucket!224) (h!57544 newBucket!224))))

(assert (=> b!4622992 d!1456217))

(declare-fun bs!1021822 () Bool)

(declare-fun b!4623368 () Bool)

(assert (= bs!1021822 (and b!4623368 b!4623363)))

(declare-fun lambda!191492 () Int)

(assert (=> bs!1021822 (= lambda!191492 lambda!191488)))

(declare-fun bs!1021823 () Bool)

(assert (= bs!1021823 (and b!4623368 d!1456215)))

(assert (=> bs!1021823 (= (= (ListMap!4258 Nil!51502) lt!1780378) (= lambda!191492 lambda!191491))))

(declare-fun bs!1021824 () Bool)

(assert (= bs!1021824 (and b!4623368 d!1456207)))

(assert (=> bs!1021824 (= (= (ListMap!4258 Nil!51502) lt!1780356) (= lambda!191492 lambda!191486))))

(declare-fun bs!1021825 () Bool)

(assert (= bs!1021825 (and b!4623368 b!4623187)))

(assert (=> bs!1021825 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191492 lambda!191439))))

(declare-fun bs!1021826 () Bool)

(assert (= bs!1021826 (and b!4623368 b!4623354)))

(assert (=> bs!1021826 (= lambda!191492 lambda!191484)))

(declare-fun bs!1021827 () Bool)

(assert (= bs!1021827 (and b!4623368 d!1456127)))

(assert (=> bs!1021827 (not (= lambda!191492 lambda!191447))))

(assert (=> bs!1021826 (= (= (ListMap!4258 Nil!51502) lt!1780369) (= lambda!191492 lambda!191485))))

(declare-fun bs!1021828 () Bool)

(assert (= bs!1021828 (and b!4623368 b!4623185)))

(assert (=> bs!1021828 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191492 lambda!191441))))

(declare-fun bs!1021829 () Bool)

(assert (= bs!1021829 (and b!4623368 b!4623361)))

(assert (=> bs!1021829 (= (= (ListMap!4258 Nil!51502) lt!1780391) (= lambda!191492 lambda!191490))))

(assert (=> bs!1021829 (= lambda!191492 lambda!191489)))

(declare-fun bs!1021830 () Bool)

(assert (= bs!1021830 (and b!4623368 b!4623356)))

(assert (=> bs!1021830 (= lambda!191492 lambda!191483)))

(assert (=> bs!1021828 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191492 lambda!191440))))

(declare-fun bs!1021831 () Bool)

(assert (= bs!1021831 (and b!4623368 d!1456081)))

(assert (=> bs!1021831 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191492 lambda!191442))))

(assert (=> b!4623368 true))

(declare-fun bs!1021832 () Bool)

(declare-fun b!4623366 () Bool)

(assert (= bs!1021832 (and b!4623366 b!4623363)))

(declare-fun lambda!191493 () Int)

(assert (=> bs!1021832 (= lambda!191493 lambda!191488)))

(declare-fun bs!1021833 () Bool)

(assert (= bs!1021833 (and b!4623366 d!1456215)))

(assert (=> bs!1021833 (= (= (ListMap!4258 Nil!51502) lt!1780378) (= lambda!191493 lambda!191491))))

(declare-fun bs!1021834 () Bool)

(assert (= bs!1021834 (and b!4623366 d!1456207)))

(assert (=> bs!1021834 (= (= (ListMap!4258 Nil!51502) lt!1780356) (= lambda!191493 lambda!191486))))

(declare-fun bs!1021835 () Bool)

(assert (= bs!1021835 (and b!4623366 b!4623187)))

(assert (=> bs!1021835 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191493 lambda!191439))))

(declare-fun bs!1021836 () Bool)

(assert (= bs!1021836 (and b!4623366 b!4623354)))

(assert (=> bs!1021836 (= lambda!191493 lambda!191484)))

(declare-fun bs!1021837 () Bool)

(assert (= bs!1021837 (and b!4623366 d!1456127)))

(assert (=> bs!1021837 (not (= lambda!191493 lambda!191447))))

(assert (=> bs!1021836 (= (= (ListMap!4258 Nil!51502) lt!1780369) (= lambda!191493 lambda!191485))))

(declare-fun bs!1021838 () Bool)

(assert (= bs!1021838 (and b!4623366 b!4623368)))

(assert (=> bs!1021838 (= lambda!191493 lambda!191492)))

(declare-fun bs!1021839 () Bool)

(assert (= bs!1021839 (and b!4623366 b!4623185)))

(assert (=> bs!1021839 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191493 lambda!191441))))

(declare-fun bs!1021840 () Bool)

(assert (= bs!1021840 (and b!4623366 b!4623361)))

(assert (=> bs!1021840 (= (= (ListMap!4258 Nil!51502) lt!1780391) (= lambda!191493 lambda!191490))))

(assert (=> bs!1021840 (= lambda!191493 lambda!191489)))

(declare-fun bs!1021841 () Bool)

(assert (= bs!1021841 (and b!4623366 b!4623356)))

(assert (=> bs!1021841 (= lambda!191493 lambda!191483)))

(assert (=> bs!1021839 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191493 lambda!191440))))

(declare-fun bs!1021842 () Bool)

(assert (= bs!1021842 (and b!4623366 d!1456081)))

(assert (=> bs!1021842 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191493 lambda!191442))))

(assert (=> b!4623366 true))

(declare-fun lt!1780412 () ListMap!4257)

(declare-fun lambda!191494 () Int)

(assert (=> bs!1021832 (= (= lt!1780412 (ListMap!4258 Nil!51502)) (= lambda!191494 lambda!191488))))

(assert (=> bs!1021833 (= (= lt!1780412 lt!1780378) (= lambda!191494 lambda!191491))))

(assert (=> bs!1021834 (= (= lt!1780412 lt!1780356) (= lambda!191494 lambda!191486))))

(assert (=> bs!1021835 (= (= lt!1780412 lt!1779891) (= lambda!191494 lambda!191439))))

(assert (=> bs!1021836 (= (= lt!1780412 (ListMap!4258 Nil!51502)) (= lambda!191494 lambda!191484))))

(assert (=> bs!1021837 (not (= lambda!191494 lambda!191447))))

(assert (=> bs!1021836 (= (= lt!1780412 lt!1780369) (= lambda!191494 lambda!191485))))

(assert (=> bs!1021838 (= (= lt!1780412 (ListMap!4258 Nil!51502)) (= lambda!191494 lambda!191492))))

(assert (=> bs!1021840 (= (= lt!1780412 lt!1780391) (= lambda!191494 lambda!191490))))

(assert (=> bs!1021840 (= (= lt!1780412 (ListMap!4258 Nil!51502)) (= lambda!191494 lambda!191489))))

(assert (=> bs!1021841 (= (= lt!1780412 (ListMap!4258 Nil!51502)) (= lambda!191494 lambda!191483))))

(assert (=> bs!1021839 (= (= lt!1780412 lt!1779891) (= lambda!191494 lambda!191440))))

(assert (=> bs!1021842 (= (= lt!1780412 lt!1780138) (= lambda!191494 lambda!191442))))

(assert (=> bs!1021839 (= (= lt!1780412 lt!1780151) (= lambda!191494 lambda!191441))))

(assert (=> b!4623366 (= (= lt!1780412 (ListMap!4258 Nil!51502)) (= lambda!191494 lambda!191493))))

(assert (=> b!4623366 true))

(declare-fun bs!1021843 () Bool)

(declare-fun d!1456219 () Bool)

(assert (= bs!1021843 (and d!1456219 b!4623363)))

(declare-fun lt!1780399 () ListMap!4257)

(declare-fun lambda!191495 () Int)

(assert (=> bs!1021843 (= (= lt!1780399 (ListMap!4258 Nil!51502)) (= lambda!191495 lambda!191488))))

(declare-fun bs!1021844 () Bool)

(assert (= bs!1021844 (and d!1456219 d!1456215)))

(assert (=> bs!1021844 (= (= lt!1780399 lt!1780378) (= lambda!191495 lambda!191491))))

(declare-fun bs!1021845 () Bool)

(assert (= bs!1021845 (and d!1456219 b!4623366)))

(assert (=> bs!1021845 (= (= lt!1780399 lt!1780412) (= lambda!191495 lambda!191494))))

(declare-fun bs!1021846 () Bool)

(assert (= bs!1021846 (and d!1456219 d!1456207)))

(assert (=> bs!1021846 (= (= lt!1780399 lt!1780356) (= lambda!191495 lambda!191486))))

(declare-fun bs!1021847 () Bool)

(assert (= bs!1021847 (and d!1456219 b!4623187)))

(assert (=> bs!1021847 (= (= lt!1780399 lt!1779891) (= lambda!191495 lambda!191439))))

(declare-fun bs!1021848 () Bool)

(assert (= bs!1021848 (and d!1456219 b!4623354)))

(assert (=> bs!1021848 (= (= lt!1780399 (ListMap!4258 Nil!51502)) (= lambda!191495 lambda!191484))))

(declare-fun bs!1021849 () Bool)

(assert (= bs!1021849 (and d!1456219 d!1456127)))

(assert (=> bs!1021849 (not (= lambda!191495 lambda!191447))))

(assert (=> bs!1021848 (= (= lt!1780399 lt!1780369) (= lambda!191495 lambda!191485))))

(declare-fun bs!1021850 () Bool)

(assert (= bs!1021850 (and d!1456219 b!4623368)))

(assert (=> bs!1021850 (= (= lt!1780399 (ListMap!4258 Nil!51502)) (= lambda!191495 lambda!191492))))

(declare-fun bs!1021851 () Bool)

(assert (= bs!1021851 (and d!1456219 b!4623361)))

(assert (=> bs!1021851 (= (= lt!1780399 lt!1780391) (= lambda!191495 lambda!191490))))

(assert (=> bs!1021851 (= (= lt!1780399 (ListMap!4258 Nil!51502)) (= lambda!191495 lambda!191489))))

(declare-fun bs!1021852 () Bool)

(assert (= bs!1021852 (and d!1456219 b!4623356)))

(assert (=> bs!1021852 (= (= lt!1780399 (ListMap!4258 Nil!51502)) (= lambda!191495 lambda!191483))))

(declare-fun bs!1021853 () Bool)

(assert (= bs!1021853 (and d!1456219 b!4623185)))

(assert (=> bs!1021853 (= (= lt!1780399 lt!1779891) (= lambda!191495 lambda!191440))))

(declare-fun bs!1021854 () Bool)

(assert (= bs!1021854 (and d!1456219 d!1456081)))

(assert (=> bs!1021854 (= (= lt!1780399 lt!1780138) (= lambda!191495 lambda!191442))))

(assert (=> bs!1021853 (= (= lt!1780399 lt!1780151) (= lambda!191495 lambda!191441))))

(assert (=> bs!1021845 (= (= lt!1780399 (ListMap!4258 Nil!51502)) (= lambda!191495 lambda!191493))))

(assert (=> d!1456219 true))

(declare-fun b!4623365 () Bool)

(declare-fun e!2883953 () Bool)

(assert (=> b!4623365 (= e!2883953 (invariantList!1196 (toList!4954 lt!1780399)))))

(assert (=> d!1456219 e!2883953))

(declare-fun res!1938398 () Bool)

(assert (=> d!1456219 (=> (not res!1938398) (not e!2883953))))

(assert (=> d!1456219 (= res!1938398 (forall!10808 lt!1779895 lambda!191495))))

(declare-fun e!2883954 () ListMap!4257)

(assert (=> d!1456219 (= lt!1780399 e!2883954)))

(declare-fun c!791423 () Bool)

(assert (=> d!1456219 (= c!791423 ((_ is Nil!51502) lt!1779895))))

(assert (=> d!1456219 (noDuplicateKeys!1494 lt!1779895)))

(assert (=> d!1456219 (= (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502)) lt!1780399)))

(declare-fun bm!322441 () Bool)

(declare-fun call!322448 () Bool)

(assert (=> bm!322441 (= call!322448 (forall!10808 (ite c!791423 (toList!4954 (ListMap!4258 Nil!51502)) lt!1779895) (ite c!791423 lambda!191492 lambda!191494)))))

(assert (=> b!4623366 (= e!2883954 lt!1780412)))

(declare-fun lt!1780411 () ListMap!4257)

(assert (=> b!4623366 (= lt!1780411 (+!1860 (ListMap!4258 Nil!51502) (h!57544 lt!1779895)))))

(assert (=> b!4623366 (= lt!1780412 (addToMapMapFromBucket!955 (t!358650 lt!1779895) (+!1860 (ListMap!4258 Nil!51502) (h!57544 lt!1779895))))))

(declare-fun lt!1780403 () Unit!111517)

(declare-fun call!322446 () Unit!111517)

(assert (=> b!4623366 (= lt!1780403 call!322446)))

(declare-fun call!322447 () Bool)

(assert (=> b!4623366 call!322447))

(declare-fun lt!1780394 () Unit!111517)

(assert (=> b!4623366 (= lt!1780394 lt!1780403)))

(assert (=> b!4623366 (forall!10808 (toList!4954 lt!1780411) lambda!191494)))

(declare-fun lt!1780409 () Unit!111517)

(declare-fun Unit!111616 () Unit!111517)

(assert (=> b!4623366 (= lt!1780409 Unit!111616)))

(assert (=> b!4623366 (forall!10808 (t!358650 lt!1779895) lambda!191494)))

(declare-fun lt!1780398 () Unit!111517)

(declare-fun Unit!111617 () Unit!111517)

(assert (=> b!4623366 (= lt!1780398 Unit!111617)))

(declare-fun lt!1780397 () Unit!111517)

(declare-fun Unit!111618 () Unit!111517)

(assert (=> b!4623366 (= lt!1780397 Unit!111618)))

(declare-fun lt!1780405 () Unit!111517)

(assert (=> b!4623366 (= lt!1780405 (forallContained!3032 (toList!4954 lt!1780411) lambda!191494 (h!57544 lt!1779895)))))

(assert (=> b!4623366 (contains!14527 lt!1780411 (_1!29505 (h!57544 lt!1779895)))))

(declare-fun lt!1780407 () Unit!111517)

(declare-fun Unit!111619 () Unit!111517)

(assert (=> b!4623366 (= lt!1780407 Unit!111619)))

(assert (=> b!4623366 (contains!14527 lt!1780412 (_1!29505 (h!57544 lt!1779895)))))

(declare-fun lt!1780406 () Unit!111517)

(declare-fun Unit!111620 () Unit!111517)

(assert (=> b!4623366 (= lt!1780406 Unit!111620)))

(assert (=> b!4623366 (forall!10808 lt!1779895 lambda!191494)))

(declare-fun lt!1780401 () Unit!111517)

(declare-fun Unit!111621 () Unit!111517)

(assert (=> b!4623366 (= lt!1780401 Unit!111621)))

(assert (=> b!4623366 (forall!10808 (toList!4954 lt!1780411) lambda!191494)))

(declare-fun lt!1780395 () Unit!111517)

(declare-fun Unit!111622 () Unit!111517)

(assert (=> b!4623366 (= lt!1780395 Unit!111622)))

(declare-fun lt!1780393 () Unit!111517)

(declare-fun Unit!111623 () Unit!111517)

(assert (=> b!4623366 (= lt!1780393 Unit!111623)))

(declare-fun lt!1780404 () Unit!111517)

(assert (=> b!4623366 (= lt!1780404 (addForallContainsKeyThenBeforeAdding!497 (ListMap!4258 Nil!51502) lt!1780412 (_1!29505 (h!57544 lt!1779895)) (_2!29505 (h!57544 lt!1779895))))))

(assert (=> b!4623366 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191494)))

(declare-fun lt!1780396 () Unit!111517)

(assert (=> b!4623366 (= lt!1780396 lt!1780404)))

(assert (=> b!4623366 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191494)))

(declare-fun lt!1780400 () Unit!111517)

(declare-fun Unit!111624 () Unit!111517)

(assert (=> b!4623366 (= lt!1780400 Unit!111624)))

(declare-fun res!1938399 () Bool)

(assert (=> b!4623366 (= res!1938399 call!322448)))

(declare-fun e!2883952 () Bool)

(assert (=> b!4623366 (=> (not res!1938399) (not e!2883952))))

(assert (=> b!4623366 e!2883952))

(declare-fun lt!1780402 () Unit!111517)

(declare-fun Unit!111625 () Unit!111517)

(assert (=> b!4623366 (= lt!1780402 Unit!111625)))

(declare-fun b!4623367 () Bool)

(declare-fun res!1938397 () Bool)

(assert (=> b!4623367 (=> (not res!1938397) (not e!2883953))))

(assert (=> b!4623367 (= res!1938397 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191495))))

(declare-fun bm!322442 () Bool)

(assert (=> bm!322442 (= call!322447 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) (ite c!791423 lambda!191492 lambda!191493)))))

(declare-fun bm!322443 () Bool)

(assert (=> bm!322443 (= call!322446 (lemmaContainsAllItsOwnKeys!498 (ListMap!4258 Nil!51502)))))

(assert (=> b!4623368 (= e!2883954 (ListMap!4258 Nil!51502))))

(declare-fun lt!1780392 () Unit!111517)

(assert (=> b!4623368 (= lt!1780392 call!322446)))

(assert (=> b!4623368 call!322447))

(declare-fun lt!1780408 () Unit!111517)

(assert (=> b!4623368 (= lt!1780408 lt!1780392)))

(assert (=> b!4623368 call!322448))

(declare-fun lt!1780410 () Unit!111517)

(declare-fun Unit!111627 () Unit!111517)

(assert (=> b!4623368 (= lt!1780410 Unit!111627)))

(declare-fun b!4623369 () Bool)

(assert (=> b!4623369 (= e!2883952 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191494))))

(assert (= (and d!1456219 c!791423) b!4623368))

(assert (= (and d!1456219 (not c!791423)) b!4623366))

(assert (= (and b!4623366 res!1938399) b!4623369))

(assert (= (or b!4623368 b!4623366) bm!322443))

(assert (= (or b!4623368 b!4623366) bm!322441))

(assert (= (or b!4623368 b!4623366) bm!322442))

(assert (= (and d!1456219 res!1938398) b!4623367))

(assert (= (and b!4623367 res!1938397) b!4623365))

(declare-fun m!5462541 () Bool)

(assert (=> b!4623369 m!5462541))

(declare-fun m!5462543 () Bool)

(assert (=> b!4623367 m!5462543))

(declare-fun m!5462545 () Bool)

(assert (=> bm!322442 m!5462545))

(declare-fun m!5462547 () Bool)

(assert (=> d!1456219 m!5462547))

(assert (=> d!1456219 m!5462415))

(assert (=> bm!322443 m!5462469))

(declare-fun m!5462549 () Bool)

(assert (=> b!4623365 m!5462549))

(declare-fun m!5462551 () Bool)

(assert (=> b!4623366 m!5462551))

(assert (=> b!4623366 m!5462541))

(declare-fun m!5462553 () Bool)

(assert (=> b!4623366 m!5462553))

(declare-fun m!5462555 () Bool)

(assert (=> b!4623366 m!5462555))

(declare-fun m!5462557 () Bool)

(assert (=> b!4623366 m!5462557))

(declare-fun m!5462559 () Bool)

(assert (=> b!4623366 m!5462559))

(declare-fun m!5462561 () Bool)

(assert (=> b!4623366 m!5462561))

(assert (=> b!4623366 m!5462553))

(declare-fun m!5462563 () Bool)

(assert (=> b!4623366 m!5462563))

(declare-fun m!5462565 () Bool)

(assert (=> b!4623366 m!5462565))

(assert (=> b!4623366 m!5462557))

(declare-fun m!5462567 () Bool)

(assert (=> b!4623366 m!5462567))

(assert (=> b!4623366 m!5462541))

(declare-fun m!5462569 () Bool)

(assert (=> bm!322441 m!5462569))

(assert (=> b!4622992 d!1456219))

(declare-fun d!1456221 () Bool)

(assert (=> d!1456221 (eq!809 (addToMapMapFromBucket!955 (Cons!51502 lt!1779893 lt!1779907) (ListMap!4258 Nil!51502)) (+!1860 (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502)) lt!1779893))))

(declare-fun lt!1780413 () Unit!111517)

(assert (=> d!1456221 (= lt!1780413 (choose!31251 lt!1779893 lt!1779907 (ListMap!4258 Nil!51502)))))

(assert (=> d!1456221 (noDuplicateKeys!1494 lt!1779907)))

(assert (=> d!1456221 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!60 lt!1779893 lt!1779907 (ListMap!4258 Nil!51502)) lt!1780413)))

(declare-fun bs!1021855 () Bool)

(assert (= bs!1021855 d!1456221))

(assert (=> bs!1021855 m!5461763))

(assert (=> bs!1021855 m!5461765))

(assert (=> bs!1021855 m!5461767))

(assert (=> bs!1021855 m!5462517))

(assert (=> bs!1021855 m!5461787))

(assert (=> bs!1021855 m!5461787))

(assert (=> bs!1021855 m!5461765))

(assert (=> bs!1021855 m!5461763))

(declare-fun m!5462571 () Bool)

(assert (=> bs!1021855 m!5462571))

(assert (=> b!4622992 d!1456221))

(declare-fun d!1456223 () Bool)

(declare-fun e!2883957 () Bool)

(assert (=> d!1456223 e!2883957))

(declare-fun res!1938404 () Bool)

(assert (=> d!1456223 (=> (not res!1938404) (not e!2883957))))

(declare-fun lt!1780424 () ListMap!4257)

(assert (=> d!1456223 (= res!1938404 (contains!14527 lt!1780424 (_1!29505 (h!57544 oldBucket!40))))))

(declare-fun lt!1780422 () List!51626)

(assert (=> d!1456223 (= lt!1780424 (ListMap!4258 lt!1780422))))

(declare-fun lt!1780423 () Unit!111517)

(declare-fun lt!1780425 () Unit!111517)

(assert (=> d!1456223 (= lt!1780423 lt!1780425)))

(assert (=> d!1456223 (= (getValueByKey!1434 lt!1780422 (_1!29505 (h!57544 oldBucket!40))) (Some!11561 (_2!29505 (h!57544 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!840 (List!51626 K!12885 V!13131) Unit!111517)

(assert (=> d!1456223 (= lt!1780425 (lemmaContainsTupThenGetReturnValue!840 lt!1780422 (_1!29505 (h!57544 oldBucket!40)) (_2!29505 (h!57544 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!348 (List!51626 K!12885 V!13131) List!51626)

(assert (=> d!1456223 (= lt!1780422 (insertNoDuplicatedKeys!348 (toList!4954 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503))) (_1!29505 (h!57544 oldBucket!40)) (_2!29505 (h!57544 oldBucket!40))))))

(assert (=> d!1456223 (= (+!1860 (extractMap!1550 (Cons!51503 (tuple2!52425 hash!414 lt!1779895) Nil!51503)) (h!57544 oldBucket!40)) lt!1780424)))

(declare-fun b!4623374 () Bool)

(declare-fun res!1938405 () Bool)

(assert (=> b!4623374 (=> (not res!1938405) (not e!2883957))))

(assert (=> b!4623374 (= res!1938405 (= (getValueByKey!1434 (toList!4954 lt!1780424) (_1!29505 (h!57544 oldBucket!40))) (Some!11561 (_2!29505 (h!57544 oldBucket!40)))))))

(declare-fun b!4623375 () Bool)

(assert (=> b!4623375 (= e!2883957 (contains!14531 (toList!4954 lt!1780424) (h!57544 oldBucket!40)))))

(assert (= (and d!1456223 res!1938404) b!4623374))

(assert (= (and b!4623374 res!1938405) b!4623375))

(declare-fun m!5462573 () Bool)

(assert (=> d!1456223 m!5462573))

(declare-fun m!5462575 () Bool)

(assert (=> d!1456223 m!5462575))

(declare-fun m!5462577 () Bool)

(assert (=> d!1456223 m!5462577))

(declare-fun m!5462579 () Bool)

(assert (=> d!1456223 m!5462579))

(declare-fun m!5462581 () Bool)

(assert (=> b!4623374 m!5462581))

(declare-fun m!5462583 () Bool)

(assert (=> b!4623375 m!5462583))

(assert (=> b!4622992 d!1456223))

(declare-fun d!1456225 () Bool)

(declare-fun e!2883958 () Bool)

(assert (=> d!1456225 e!2883958))

(declare-fun res!1938406 () Bool)

(assert (=> d!1456225 (=> (not res!1938406) (not e!2883958))))

(declare-fun lt!1780428 () ListMap!4257)

(assert (=> d!1456225 (= res!1938406 (contains!14527 lt!1780428 (_1!29505 lt!1779906)))))

(declare-fun lt!1780426 () List!51626)

(assert (=> d!1456225 (= lt!1780428 (ListMap!4258 lt!1780426))))

(declare-fun lt!1780427 () Unit!111517)

(declare-fun lt!1780429 () Unit!111517)

(assert (=> d!1456225 (= lt!1780427 lt!1780429)))

(assert (=> d!1456225 (= (getValueByKey!1434 lt!1780426 (_1!29505 lt!1779906)) (Some!11561 (_2!29505 lt!1779906)))))

(assert (=> d!1456225 (= lt!1780429 (lemmaContainsTupThenGetReturnValue!840 lt!1780426 (_1!29505 lt!1779906) (_2!29505 lt!1779906)))))

(assert (=> d!1456225 (= lt!1780426 (insertNoDuplicatedKeys!348 (toList!4954 (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502))) (_1!29505 lt!1779906) (_2!29505 lt!1779906)))))

(assert (=> d!1456225 (= (+!1860 (addToMapMapFromBucket!955 lt!1779895 (ListMap!4258 Nil!51502)) lt!1779906) lt!1780428)))

(declare-fun b!4623376 () Bool)

(declare-fun res!1938407 () Bool)

(assert (=> b!4623376 (=> (not res!1938407) (not e!2883958))))

(assert (=> b!4623376 (= res!1938407 (= (getValueByKey!1434 (toList!4954 lt!1780428) (_1!29505 lt!1779906)) (Some!11561 (_2!29505 lt!1779906))))))

(declare-fun b!4623377 () Bool)

(assert (=> b!4623377 (= e!2883958 (contains!14531 (toList!4954 lt!1780428) lt!1779906))))

(assert (= (and d!1456225 res!1938406) b!4623376))

(assert (= (and b!4623376 res!1938407) b!4623377))

(declare-fun m!5462585 () Bool)

(assert (=> d!1456225 m!5462585))

(declare-fun m!5462587 () Bool)

(assert (=> d!1456225 m!5462587))

(declare-fun m!5462589 () Bool)

(assert (=> d!1456225 m!5462589))

(declare-fun m!5462591 () Bool)

(assert (=> d!1456225 m!5462591))

(declare-fun m!5462593 () Bool)

(assert (=> b!4623376 m!5462593))

(declare-fun m!5462595 () Bool)

(assert (=> b!4623377 m!5462595))

(assert (=> b!4622992 d!1456225))

(declare-fun d!1456227 () Bool)

(declare-fun e!2883959 () Bool)

(assert (=> d!1456227 e!2883959))

(declare-fun res!1938408 () Bool)

(assert (=> d!1456227 (=> (not res!1938408) (not e!2883959))))

(declare-fun lt!1780432 () ListMap!4257)

(assert (=> d!1456227 (= res!1938408 (contains!14527 lt!1780432 (_1!29505 lt!1779893)))))

(declare-fun lt!1780430 () List!51626)

(assert (=> d!1456227 (= lt!1780432 (ListMap!4258 lt!1780430))))

(declare-fun lt!1780431 () Unit!111517)

(declare-fun lt!1780433 () Unit!111517)

(assert (=> d!1456227 (= lt!1780431 lt!1780433)))

(assert (=> d!1456227 (= (getValueByKey!1434 lt!1780430 (_1!29505 lt!1779893)) (Some!11561 (_2!29505 lt!1779893)))))

(assert (=> d!1456227 (= lt!1780433 (lemmaContainsTupThenGetReturnValue!840 lt!1780430 (_1!29505 lt!1779893) (_2!29505 lt!1779893)))))

(assert (=> d!1456227 (= lt!1780430 (insertNoDuplicatedKeys!348 (toList!4954 (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502))) (_1!29505 lt!1779893) (_2!29505 lt!1779893)))))

(assert (=> d!1456227 (= (+!1860 (addToMapMapFromBucket!955 lt!1779907 (ListMap!4258 Nil!51502)) lt!1779893) lt!1780432)))

(declare-fun b!4623378 () Bool)

(declare-fun res!1938409 () Bool)

(assert (=> b!4623378 (=> (not res!1938409) (not e!2883959))))

(assert (=> b!4623378 (= res!1938409 (= (getValueByKey!1434 (toList!4954 lt!1780432) (_1!29505 lt!1779893)) (Some!11561 (_2!29505 lt!1779893))))))

(declare-fun b!4623379 () Bool)

(assert (=> b!4623379 (= e!2883959 (contains!14531 (toList!4954 lt!1780432) lt!1779893))))

(assert (= (and d!1456227 res!1938408) b!4623378))

(assert (= (and b!4623378 res!1938409) b!4623379))

(declare-fun m!5462597 () Bool)

(assert (=> d!1456227 m!5462597))

(declare-fun m!5462599 () Bool)

(assert (=> d!1456227 m!5462599))

(declare-fun m!5462601 () Bool)

(assert (=> d!1456227 m!5462601))

(declare-fun m!5462603 () Bool)

(assert (=> d!1456227 m!5462603))

(declare-fun m!5462605 () Bool)

(assert (=> b!4623378 m!5462605))

(declare-fun m!5462607 () Bool)

(assert (=> b!4623379 m!5462607))

(assert (=> b!4622992 d!1456227))

(declare-fun bs!1021856 () Bool)

(declare-fun b!4623383 () Bool)

(assert (= bs!1021856 (and b!4623383 b!4623363)))

(declare-fun lambda!191496 () Int)

(assert (=> bs!1021856 (= lambda!191496 lambda!191488)))

(declare-fun bs!1021857 () Bool)

(assert (= bs!1021857 (and b!4623383 d!1456215)))

(assert (=> bs!1021857 (= (= (ListMap!4258 Nil!51502) lt!1780378) (= lambda!191496 lambda!191491))))

(declare-fun bs!1021858 () Bool)

(assert (= bs!1021858 (and b!4623383 b!4623366)))

(assert (=> bs!1021858 (= (= (ListMap!4258 Nil!51502) lt!1780412) (= lambda!191496 lambda!191494))))

(declare-fun bs!1021859 () Bool)

(assert (= bs!1021859 (and b!4623383 d!1456207)))

(assert (=> bs!1021859 (= (= (ListMap!4258 Nil!51502) lt!1780356) (= lambda!191496 lambda!191486))))

(declare-fun bs!1021860 () Bool)

(assert (= bs!1021860 (and b!4623383 b!4623187)))

(assert (=> bs!1021860 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191496 lambda!191439))))

(declare-fun bs!1021861 () Bool)

(assert (= bs!1021861 (and b!4623383 b!4623354)))

(assert (=> bs!1021861 (= lambda!191496 lambda!191484)))

(declare-fun bs!1021862 () Bool)

(assert (= bs!1021862 (and b!4623383 d!1456127)))

(assert (=> bs!1021862 (not (= lambda!191496 lambda!191447))))

(declare-fun bs!1021863 () Bool)

(assert (= bs!1021863 (and b!4623383 b!4623368)))

(assert (=> bs!1021863 (= lambda!191496 lambda!191492)))

(declare-fun bs!1021864 () Bool)

(assert (= bs!1021864 (and b!4623383 b!4623361)))

(assert (=> bs!1021864 (= (= (ListMap!4258 Nil!51502) lt!1780391) (= lambda!191496 lambda!191490))))

(assert (=> bs!1021864 (= lambda!191496 lambda!191489)))

(declare-fun bs!1021865 () Bool)

(assert (= bs!1021865 (and b!4623383 b!4623356)))

(assert (=> bs!1021865 (= lambda!191496 lambda!191483)))

(declare-fun bs!1021866 () Bool)

(assert (= bs!1021866 (and b!4623383 b!4623185)))

(assert (=> bs!1021866 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191496 lambda!191440))))

(declare-fun bs!1021867 () Bool)

(assert (= bs!1021867 (and b!4623383 d!1456081)))

(assert (=> bs!1021867 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191496 lambda!191442))))

(assert (=> bs!1021861 (= (= (ListMap!4258 Nil!51502) lt!1780369) (= lambda!191496 lambda!191485))))

(declare-fun bs!1021868 () Bool)

(assert (= bs!1021868 (and b!4623383 d!1456219)))

(assert (=> bs!1021868 (= (= (ListMap!4258 Nil!51502) lt!1780399) (= lambda!191496 lambda!191495))))

(assert (=> bs!1021866 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191496 lambda!191441))))

(assert (=> bs!1021858 (= lambda!191496 lambda!191493)))

(assert (=> b!4623383 true))

(declare-fun bs!1021869 () Bool)

(declare-fun b!4623381 () Bool)

(assert (= bs!1021869 (and b!4623381 b!4623363)))

(declare-fun lambda!191497 () Int)

(assert (=> bs!1021869 (= lambda!191497 lambda!191488)))

(declare-fun bs!1021870 () Bool)

(assert (= bs!1021870 (and b!4623381 d!1456215)))

(assert (=> bs!1021870 (= (= (ListMap!4258 Nil!51502) lt!1780378) (= lambda!191497 lambda!191491))))

(declare-fun bs!1021871 () Bool)

(assert (= bs!1021871 (and b!4623381 b!4623366)))

(assert (=> bs!1021871 (= (= (ListMap!4258 Nil!51502) lt!1780412) (= lambda!191497 lambda!191494))))

(declare-fun bs!1021872 () Bool)

(assert (= bs!1021872 (and b!4623381 d!1456207)))

(assert (=> bs!1021872 (= (= (ListMap!4258 Nil!51502) lt!1780356) (= lambda!191497 lambda!191486))))

(declare-fun bs!1021873 () Bool)

(assert (= bs!1021873 (and b!4623381 b!4623187)))

(assert (=> bs!1021873 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191497 lambda!191439))))

(declare-fun bs!1021874 () Bool)

(assert (= bs!1021874 (and b!4623381 b!4623354)))

(assert (=> bs!1021874 (= lambda!191497 lambda!191484)))

(declare-fun bs!1021875 () Bool)

(assert (= bs!1021875 (and b!4623381 d!1456127)))

(assert (=> bs!1021875 (not (= lambda!191497 lambda!191447))))

(declare-fun bs!1021876 () Bool)

(assert (= bs!1021876 (and b!4623381 b!4623368)))

(assert (=> bs!1021876 (= lambda!191497 lambda!191492)))

(declare-fun bs!1021877 () Bool)

(assert (= bs!1021877 (and b!4623381 b!4623361)))

(assert (=> bs!1021877 (= (= (ListMap!4258 Nil!51502) lt!1780391) (= lambda!191497 lambda!191490))))

(declare-fun bs!1021878 () Bool)

(assert (= bs!1021878 (and b!4623381 b!4623383)))

(assert (=> bs!1021878 (= lambda!191497 lambda!191496)))

(assert (=> bs!1021877 (= lambda!191497 lambda!191489)))

(declare-fun bs!1021879 () Bool)

(assert (= bs!1021879 (and b!4623381 b!4623356)))

(assert (=> bs!1021879 (= lambda!191497 lambda!191483)))

(declare-fun bs!1021880 () Bool)

(assert (= bs!1021880 (and b!4623381 b!4623185)))

(assert (=> bs!1021880 (= (= (ListMap!4258 Nil!51502) lt!1779891) (= lambda!191497 lambda!191440))))

(declare-fun bs!1021881 () Bool)

(assert (= bs!1021881 (and b!4623381 d!1456081)))

(assert (=> bs!1021881 (= (= (ListMap!4258 Nil!51502) lt!1780138) (= lambda!191497 lambda!191442))))

(assert (=> bs!1021874 (= (= (ListMap!4258 Nil!51502) lt!1780369) (= lambda!191497 lambda!191485))))

(declare-fun bs!1021882 () Bool)

(assert (= bs!1021882 (and b!4623381 d!1456219)))

(assert (=> bs!1021882 (= (= (ListMap!4258 Nil!51502) lt!1780399) (= lambda!191497 lambda!191495))))

(assert (=> bs!1021880 (= (= (ListMap!4258 Nil!51502) lt!1780151) (= lambda!191497 lambda!191441))))

(assert (=> bs!1021871 (= lambda!191497 lambda!191493)))

(assert (=> b!4623381 true))

(declare-fun lt!1780454 () ListMap!4257)

(declare-fun lambda!191498 () Int)

(assert (=> bs!1021869 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191488))))

(assert (=> bs!1021870 (= (= lt!1780454 lt!1780378) (= lambda!191498 lambda!191491))))

(assert (=> bs!1021871 (= (= lt!1780454 lt!1780412) (= lambda!191498 lambda!191494))))

(assert (=> bs!1021872 (= (= lt!1780454 lt!1780356) (= lambda!191498 lambda!191486))))

(assert (=> bs!1021873 (= (= lt!1780454 lt!1779891) (= lambda!191498 lambda!191439))))

(assert (=> bs!1021874 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191484))))

(assert (=> b!4623381 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191497))))

(assert (=> bs!1021875 (not (= lambda!191498 lambda!191447))))

(assert (=> bs!1021876 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191492))))

(assert (=> bs!1021877 (= (= lt!1780454 lt!1780391) (= lambda!191498 lambda!191490))))

(assert (=> bs!1021878 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191496))))

(assert (=> bs!1021877 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191489))))

(assert (=> bs!1021879 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191483))))

(assert (=> bs!1021880 (= (= lt!1780454 lt!1779891) (= lambda!191498 lambda!191440))))

(assert (=> bs!1021881 (= (= lt!1780454 lt!1780138) (= lambda!191498 lambda!191442))))

(assert (=> bs!1021874 (= (= lt!1780454 lt!1780369) (= lambda!191498 lambda!191485))))

(assert (=> bs!1021882 (= (= lt!1780454 lt!1780399) (= lambda!191498 lambda!191495))))

(assert (=> bs!1021880 (= (= lt!1780454 lt!1780151) (= lambda!191498 lambda!191441))))

(assert (=> bs!1021871 (= (= lt!1780454 (ListMap!4258 Nil!51502)) (= lambda!191498 lambda!191493))))

(assert (=> b!4623381 true))

(declare-fun bs!1021883 () Bool)

(declare-fun d!1456229 () Bool)

(assert (= bs!1021883 (and d!1456229 b!4623363)))

(declare-fun lt!1780441 () ListMap!4257)

(declare-fun lambda!191499 () Int)

(assert (=> bs!1021883 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191488))))

(declare-fun bs!1021884 () Bool)

(assert (= bs!1021884 (and d!1456229 d!1456215)))

(assert (=> bs!1021884 (= (= lt!1780441 lt!1780378) (= lambda!191499 lambda!191491))))

(declare-fun bs!1021885 () Bool)

(assert (= bs!1021885 (and d!1456229 b!4623366)))

(assert (=> bs!1021885 (= (= lt!1780441 lt!1780412) (= lambda!191499 lambda!191494))))

(declare-fun bs!1021886 () Bool)

(assert (= bs!1021886 (and d!1456229 d!1456207)))

(assert (=> bs!1021886 (= (= lt!1780441 lt!1780356) (= lambda!191499 lambda!191486))))

(declare-fun bs!1021887 () Bool)

(assert (= bs!1021887 (and d!1456229 b!4623187)))

(assert (=> bs!1021887 (= (= lt!1780441 lt!1779891) (= lambda!191499 lambda!191439))))

(declare-fun bs!1021888 () Bool)

(assert (= bs!1021888 (and d!1456229 b!4623354)))

(assert (=> bs!1021888 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191484))))

(declare-fun bs!1021889 () Bool)

(assert (= bs!1021889 (and d!1456229 b!4623381)))

(assert (=> bs!1021889 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191497))))

(declare-fun bs!1021890 () Bool)

(assert (= bs!1021890 (and d!1456229 d!1456127)))

(assert (=> bs!1021890 (not (= lambda!191499 lambda!191447))))

(declare-fun bs!1021891 () Bool)

(assert (= bs!1021891 (and d!1456229 b!4623368)))

(assert (=> bs!1021891 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191492))))

(declare-fun bs!1021892 () Bool)

(assert (= bs!1021892 (and d!1456229 b!4623361)))

(assert (=> bs!1021892 (= (= lt!1780441 lt!1780391) (= lambda!191499 lambda!191490))))

(declare-fun bs!1021893 () Bool)

(assert (= bs!1021893 (and d!1456229 b!4623383)))

(assert (=> bs!1021893 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191496))))

(assert (=> bs!1021892 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191489))))

(assert (=> bs!1021889 (= (= lt!1780441 lt!1780454) (= lambda!191499 lambda!191498))))

(declare-fun bs!1021894 () Bool)

(assert (= bs!1021894 (and d!1456229 b!4623356)))

(assert (=> bs!1021894 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191483))))

(declare-fun bs!1021895 () Bool)

(assert (= bs!1021895 (and d!1456229 b!4623185)))

(assert (=> bs!1021895 (= (= lt!1780441 lt!1779891) (= lambda!191499 lambda!191440))))

(declare-fun bs!1021896 () Bool)

(assert (= bs!1021896 (and d!1456229 d!1456081)))

(assert (=> bs!1021896 (= (= lt!1780441 lt!1780138) (= lambda!191499 lambda!191442))))

(assert (=> bs!1021888 (= (= lt!1780441 lt!1780369) (= lambda!191499 lambda!191485))))

(declare-fun bs!1021897 () Bool)

(assert (= bs!1021897 (and d!1456229 d!1456219)))

(assert (=> bs!1021897 (= (= lt!1780441 lt!1780399) (= lambda!191499 lambda!191495))))

(assert (=> bs!1021895 (= (= lt!1780441 lt!1780151) (= lambda!191499 lambda!191441))))

(assert (=> bs!1021885 (= (= lt!1780441 (ListMap!4258 Nil!51502)) (= lambda!191499 lambda!191493))))

(assert (=> d!1456229 true))

(declare-fun b!4623380 () Bool)

(declare-fun e!2883961 () Bool)

(assert (=> b!4623380 (= e!2883961 (invariantList!1196 (toList!4954 lt!1780441)))))

(assert (=> d!1456229 e!2883961))

(declare-fun res!1938411 () Bool)

(assert (=> d!1456229 (=> (not res!1938411) (not e!2883961))))

(assert (=> d!1456229 (= res!1938411 (forall!10808 (Cons!51502 lt!1779906 lt!1779895) lambda!191499))))

(declare-fun e!2883962 () ListMap!4257)

(assert (=> d!1456229 (= lt!1780441 e!2883962)))

(declare-fun c!791424 () Bool)

(assert (=> d!1456229 (= c!791424 ((_ is Nil!51502) (Cons!51502 lt!1779906 lt!1779895)))))

(assert (=> d!1456229 (noDuplicateKeys!1494 (Cons!51502 lt!1779906 lt!1779895))))

(assert (=> d!1456229 (= (addToMapMapFromBucket!955 (Cons!51502 lt!1779906 lt!1779895) (ListMap!4258 Nil!51502)) lt!1780441)))

(declare-fun bm!322444 () Bool)

(declare-fun call!322451 () Bool)

(assert (=> bm!322444 (= call!322451 (forall!10808 (ite c!791424 (toList!4954 (ListMap!4258 Nil!51502)) (Cons!51502 lt!1779906 lt!1779895)) (ite c!791424 lambda!191496 lambda!191498)))))

(assert (=> b!4623381 (= e!2883962 lt!1780454)))

(declare-fun lt!1780453 () ListMap!4257)

(assert (=> b!4623381 (= lt!1780453 (+!1860 (ListMap!4258 Nil!51502) (h!57544 (Cons!51502 lt!1779906 lt!1779895))))))

(assert (=> b!4623381 (= lt!1780454 (addToMapMapFromBucket!955 (t!358650 (Cons!51502 lt!1779906 lt!1779895)) (+!1860 (ListMap!4258 Nil!51502) (h!57544 (Cons!51502 lt!1779906 lt!1779895)))))))

(declare-fun lt!1780445 () Unit!111517)

(declare-fun call!322449 () Unit!111517)

(assert (=> b!4623381 (= lt!1780445 call!322449)))

(declare-fun call!322450 () Bool)

(assert (=> b!4623381 call!322450))

(declare-fun lt!1780436 () Unit!111517)

(assert (=> b!4623381 (= lt!1780436 lt!1780445)))

(assert (=> b!4623381 (forall!10808 (toList!4954 lt!1780453) lambda!191498)))

(declare-fun lt!1780451 () Unit!111517)

(declare-fun Unit!111628 () Unit!111517)

(assert (=> b!4623381 (= lt!1780451 Unit!111628)))

(assert (=> b!4623381 (forall!10808 (t!358650 (Cons!51502 lt!1779906 lt!1779895)) lambda!191498)))

(declare-fun lt!1780440 () Unit!111517)

(declare-fun Unit!111629 () Unit!111517)

(assert (=> b!4623381 (= lt!1780440 Unit!111629)))

(declare-fun lt!1780439 () Unit!111517)

(declare-fun Unit!111630 () Unit!111517)

(assert (=> b!4623381 (= lt!1780439 Unit!111630)))

(declare-fun lt!1780447 () Unit!111517)

(assert (=> b!4623381 (= lt!1780447 (forallContained!3032 (toList!4954 lt!1780453) lambda!191498 (h!57544 (Cons!51502 lt!1779906 lt!1779895))))))

(assert (=> b!4623381 (contains!14527 lt!1780453 (_1!29505 (h!57544 (Cons!51502 lt!1779906 lt!1779895))))))

(declare-fun lt!1780449 () Unit!111517)

(declare-fun Unit!111631 () Unit!111517)

(assert (=> b!4623381 (= lt!1780449 Unit!111631)))

(assert (=> b!4623381 (contains!14527 lt!1780454 (_1!29505 (h!57544 (Cons!51502 lt!1779906 lt!1779895))))))

(declare-fun lt!1780448 () Unit!111517)

(declare-fun Unit!111632 () Unit!111517)

(assert (=> b!4623381 (= lt!1780448 Unit!111632)))

(assert (=> b!4623381 (forall!10808 (Cons!51502 lt!1779906 lt!1779895) lambda!191498)))

(declare-fun lt!1780443 () Unit!111517)

(declare-fun Unit!111633 () Unit!111517)

(assert (=> b!4623381 (= lt!1780443 Unit!111633)))

(assert (=> b!4623381 (forall!10808 (toList!4954 lt!1780453) lambda!191498)))

(declare-fun lt!1780437 () Unit!111517)

(declare-fun Unit!111634 () Unit!111517)

(assert (=> b!4623381 (= lt!1780437 Unit!111634)))

(declare-fun lt!1780435 () Unit!111517)

(declare-fun Unit!111635 () Unit!111517)

(assert (=> b!4623381 (= lt!1780435 Unit!111635)))

(declare-fun lt!1780446 () Unit!111517)

(assert (=> b!4623381 (= lt!1780446 (addForallContainsKeyThenBeforeAdding!497 (ListMap!4258 Nil!51502) lt!1780454 (_1!29505 (h!57544 (Cons!51502 lt!1779906 lt!1779895))) (_2!29505 (h!57544 (Cons!51502 lt!1779906 lt!1779895)))))))

(assert (=> b!4623381 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191498)))

(declare-fun lt!1780438 () Unit!111517)

(assert (=> b!4623381 (= lt!1780438 lt!1780446)))

(assert (=> b!4623381 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191498)))

(declare-fun lt!1780442 () Unit!111517)

(declare-fun Unit!111636 () Unit!111517)

(assert (=> b!4623381 (= lt!1780442 Unit!111636)))

(declare-fun res!1938412 () Bool)

(assert (=> b!4623381 (= res!1938412 call!322451)))

(declare-fun e!2883960 () Bool)

(assert (=> b!4623381 (=> (not res!1938412) (not e!2883960))))

(assert (=> b!4623381 e!2883960))

(declare-fun lt!1780444 () Unit!111517)

(declare-fun Unit!111637 () Unit!111517)

(assert (=> b!4623381 (= lt!1780444 Unit!111637)))

(declare-fun b!4623382 () Bool)

(declare-fun res!1938410 () Bool)

(assert (=> b!4623382 (=> (not res!1938410) (not e!2883961))))

(assert (=> b!4623382 (= res!1938410 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191499))))

(declare-fun bm!322445 () Bool)

(assert (=> bm!322445 (= call!322450 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) (ite c!791424 lambda!191496 lambda!191497)))))

(declare-fun bm!322446 () Bool)

(assert (=> bm!322446 (= call!322449 (lemmaContainsAllItsOwnKeys!498 (ListMap!4258 Nil!51502)))))

(assert (=> b!4623383 (= e!2883962 (ListMap!4258 Nil!51502))))

(declare-fun lt!1780434 () Unit!111517)

(assert (=> b!4623383 (= lt!1780434 call!322449)))

(assert (=> b!4623383 call!322450))

(declare-fun lt!1780450 () Unit!111517)

(assert (=> b!4623383 (= lt!1780450 lt!1780434)))

(assert (=> b!4623383 call!322451))

(declare-fun lt!1780452 () Unit!111517)

(declare-fun Unit!111638 () Unit!111517)

(assert (=> b!4623383 (= lt!1780452 Unit!111638)))

(declare-fun b!4623384 () Bool)

(assert (=> b!4623384 (= e!2883960 (forall!10808 (toList!4954 (ListMap!4258 Nil!51502)) lambda!191498))))

(assert (= (and d!1456229 c!791424) b!4623383))

(assert (= (and d!1456229 (not c!791424)) b!4623381))

(assert (= (and b!4623381 res!1938412) b!4623384))

(assert (= (or b!4623383 b!4623381) bm!322446))

(assert (= (or b!4623383 b!4623381) bm!322444))

(assert (= (or b!4623383 b!4623381) bm!322445))

(assert (= (and d!1456229 res!1938411) b!4623382))

(assert (= (and b!4623382 res!1938410) b!4623380))

(declare-fun m!5462609 () Bool)

(assert (=> b!4623384 m!5462609))

(declare-fun m!5462611 () Bool)

(assert (=> b!4623382 m!5462611))

(declare-fun m!5462613 () Bool)

(assert (=> bm!322445 m!5462613))

(declare-fun m!5462615 () Bool)

(assert (=> d!1456229 m!5462615))

(declare-fun m!5462617 () Bool)

(assert (=> d!1456229 m!5462617))

(assert (=> bm!322446 m!5462469))

(declare-fun m!5462619 () Bool)

(assert (=> b!4623380 m!5462619))

(declare-fun m!5462621 () Bool)

(assert (=> b!4623381 m!5462621))

(assert (=> b!4623381 m!5462609))

(declare-fun m!5462623 () Bool)

(assert (=> b!4623381 m!5462623))

(declare-fun m!5462625 () Bool)

(assert (=> b!4623381 m!5462625))

(declare-fun m!5462627 () Bool)

(assert (=> b!4623381 m!5462627))

(declare-fun m!5462629 () Bool)

(assert (=> b!4623381 m!5462629))

(declare-fun m!5462631 () Bool)

(assert (=> b!4623381 m!5462631))

(assert (=> b!4623381 m!5462623))

(declare-fun m!5462633 () Bool)

(assert (=> b!4623381 m!5462633))

(declare-fun m!5462635 () Bool)

(assert (=> b!4623381 m!5462635))

(assert (=> b!4623381 m!5462627))

(declare-fun m!5462637 () Bool)

(assert (=> b!4623381 m!5462637))

(assert (=> b!4623381 m!5462609))

(declare-fun m!5462639 () Bool)

(assert (=> bm!322444 m!5462639))

(assert (=> b!4622992 d!1456229))

(declare-fun b!4623388 () Bool)

(declare-fun e!2883964 () List!51626)

(assert (=> b!4623388 (= e!2883964 Nil!51502)))

(declare-fun b!4623386 () Bool)

(declare-fun e!2883963 () List!51626)

(assert (=> b!4623386 (= e!2883963 e!2883964)))

(declare-fun c!791425 () Bool)

(assert (=> b!4623386 (= c!791425 ((_ is Cons!51502) lt!1779895))))

(declare-fun d!1456231 () Bool)

(declare-fun lt!1780455 () List!51626)

(assert (=> d!1456231 (not (containsKey!2418 lt!1780455 key!4968))))

(assert (=> d!1456231 (= lt!1780455 e!2883963)))

(declare-fun c!791426 () Bool)

(assert (=> d!1456231 (= c!791426 (and ((_ is Cons!51502) lt!1779895) (= (_1!29505 (h!57544 lt!1779895)) key!4968)))))

(assert (=> d!1456231 (noDuplicateKeys!1494 lt!1779895)))

(assert (=> d!1456231 (= (removePairForKey!1117 lt!1779895 key!4968) lt!1780455)))

(declare-fun b!4623387 () Bool)

(assert (=> b!4623387 (= e!2883964 (Cons!51502 (h!57544 lt!1779895) (removePairForKey!1117 (t!358650 lt!1779895) key!4968)))))

(declare-fun b!4623385 () Bool)

(assert (=> b!4623385 (= e!2883963 (t!358650 lt!1779895))))

(assert (= (and d!1456231 c!791426) b!4623385))

(assert (= (and d!1456231 (not c!791426)) b!4623386))

(assert (= (and b!4623386 c!791425) b!4623387))

(assert (= (and b!4623386 (not c!791425)) b!4623388))

(declare-fun m!5462641 () Bool)

(assert (=> d!1456231 m!5462641))

(assert (=> d!1456231 m!5462415))

(declare-fun m!5462643 () Bool)

(assert (=> b!4623387 m!5462643))

(assert (=> b!4622982 d!1456231))

(declare-fun d!1456233 () Bool)

(assert (=> d!1456233 (= (tail!8129 newBucket!224) (t!358650 newBucket!224))))

(assert (=> b!4622982 d!1456233))

(declare-fun d!1456235 () Bool)

(assert (=> d!1456235 (= (tail!8129 oldBucket!40) (t!358650 oldBucket!40))))

(assert (=> b!4622982 d!1456235))

(declare-fun bs!1021898 () Bool)

(declare-fun d!1456237 () Bool)

(assert (= bs!1021898 (and d!1456237 b!4623363)))

(declare-fun lambda!191500 () Int)

(assert (=> bs!1021898 (not (= lambda!191500 lambda!191488))))

(declare-fun bs!1021899 () Bool)

(assert (= bs!1021899 (and d!1456237 d!1456215)))

(assert (=> bs!1021899 (not (= lambda!191500 lambda!191491))))

(declare-fun bs!1021900 () Bool)

(assert (= bs!1021900 (and d!1456237 b!4623366)))

(assert (=> bs!1021900 (not (= lambda!191500 lambda!191494))))

(declare-fun bs!1021901 () Bool)

(assert (= bs!1021901 (and d!1456237 d!1456207)))

(assert (=> bs!1021901 (not (= lambda!191500 lambda!191486))))

(declare-fun bs!1021902 () Bool)

(assert (= bs!1021902 (and d!1456237 b!4623187)))

(assert (=> bs!1021902 (not (= lambda!191500 lambda!191439))))

(declare-fun bs!1021903 () Bool)

(assert (= bs!1021903 (and d!1456237 b!4623354)))

(assert (=> bs!1021903 (not (= lambda!191500 lambda!191484))))

(declare-fun bs!1021904 () Bool)

(assert (= bs!1021904 (and d!1456237 b!4623381)))

(assert (=> bs!1021904 (not (= lambda!191500 lambda!191497))))

(declare-fun bs!1021905 () Bool)

(assert (= bs!1021905 (and d!1456237 d!1456127)))

(assert (=> bs!1021905 (= lambda!191500 lambda!191447)))

(declare-fun bs!1021906 () Bool)

(assert (= bs!1021906 (and d!1456237 b!4623368)))

(assert (=> bs!1021906 (not (= lambda!191500 lambda!191492))))

(declare-fun bs!1021907 () Bool)

(assert (= bs!1021907 (and d!1456237 b!4623361)))

(assert (=> bs!1021907 (not (= lambda!191500 lambda!191490))))

(assert (=> bs!1021907 (not (= lambda!191500 lambda!191489))))

(assert (=> bs!1021904 (not (= lambda!191500 lambda!191498))))

(declare-fun bs!1021908 () Bool)

(assert (= bs!1021908 (and d!1456237 b!4623356)))

(assert (=> bs!1021908 (not (= lambda!191500 lambda!191483))))

(declare-fun bs!1021909 () Bool)

(assert (= bs!1021909 (and d!1456237 b!4623185)))

(assert (=> bs!1021909 (not (= lambda!191500 lambda!191440))))

(declare-fun bs!1021910 () Bool)

(assert (= bs!1021910 (and d!1456237 d!1456081)))

(assert (=> bs!1021910 (not (= lambda!191500 lambda!191442))))

(assert (=> bs!1021903 (not (= lambda!191500 lambda!191485))))

(declare-fun bs!1021911 () Bool)

(assert (= bs!1021911 (and d!1456237 d!1456219)))

(assert (=> bs!1021911 (not (= lambda!191500 lambda!191495))))

(assert (=> bs!1021909 (not (= lambda!191500 lambda!191441))))

(assert (=> bs!1021900 (not (= lambda!191500 lambda!191493))))

(declare-fun bs!1021912 () Bool)

(assert (= bs!1021912 (and d!1456237 b!4623383)))

(assert (=> bs!1021912 (not (= lambda!191500 lambda!191496))))

(declare-fun bs!1021913 () Bool)

(assert (= bs!1021913 (and d!1456237 d!1456229)))

(assert (=> bs!1021913 (not (= lambda!191500 lambda!191499))))

(assert (=> d!1456237 true))

(assert (=> d!1456237 true))

(assert (=> d!1456237 (= (allKeysSameHash!1348 newBucket!224 hash!414 hashF!1389) (forall!10808 newBucket!224 lambda!191500))))

(declare-fun bs!1021914 () Bool)

(assert (= bs!1021914 d!1456237))

(declare-fun m!5462645 () Bool)

(assert (=> bs!1021914 m!5462645))

(assert (=> b!4622983 d!1456237))

(declare-fun tp!1342010 () Bool)

(declare-fun e!2883967 () Bool)

(declare-fun b!4623393 () Bool)

(assert (=> b!4623393 (= e!2883967 (and tp_is_empty!29269 tp_is_empty!29271 tp!1342010))))

(assert (=> b!4622989 (= tp!1342002 e!2883967)))

(assert (= (and b!4622989 ((_ is Cons!51502) (t!358650 oldBucket!40))) b!4623393))

(declare-fun b!4623394 () Bool)

(declare-fun tp!1342011 () Bool)

(declare-fun e!2883968 () Bool)

(assert (=> b!4623394 (= e!2883968 (and tp_is_empty!29269 tp_is_empty!29271 tp!1342011))))

(assert (=> b!4622993 (= tp!1342003 e!2883968)))

(assert (= (and b!4622993 ((_ is Cons!51502) (t!358650 newBucket!224))) b!4623394))

(declare-fun b_lambda!170691 () Bool)

(assert (= b_lambda!170689 (or b!4622981 b_lambda!170691)))

(declare-fun bs!1021915 () Bool)

(declare-fun d!1456239 () Bool)

(assert (= bs!1021915 (and d!1456239 b!4622981)))

(assert (=> bs!1021915 (= (dynLambda!21490 lambda!191354 lt!1779898) (noDuplicateKeys!1494 (_2!29506 lt!1779898)))))

(declare-fun m!5462647 () Bool)

(assert (=> bs!1021915 m!5462647))

(assert (=> d!1456189 d!1456239))

(check-sat (not b!4623341) (not b!4623072) (not d!1456065) (not b!4623044) (not bm!322399) (not bm!322434) (not b!4623347) (not b!4623364) (not d!1456203) (not d!1456163) (not d!1456205) (not b!4623071) (not b!4623337) (not bm!322446) (not bm!322440) (not bm!322444) tp_is_empty!29271 (not d!1456169) (not d!1456079) (not b!4623342) (not b!4623332) (not b!4623340) (not b!4623256) (not d!1456075) (not d!1456077) (not b!4623369) (not b!4623035) (not bm!322441) (not bm!322442) (not b!4623074) (not b!4623257) (not b!4623184) (not d!1456187) (not d!1456071) (not b!4623043) (not b!4623357) (not bm!322436) (not d!1456081) (not b!4623382) (not d!1456215) (not b!4623185) (not b!4623365) (not b!4623379) (not b!4623362) (not b!4623258) (not d!1456211) (not b!4623327) (not b!4623354) (not b!4623355) (not d!1456199) (not b!4623349) (not d!1456231) (not b!4623351) (not b!4623361) (not d!1456185) (not b!4623375) (not b!4623329) (not b!4623344) (not bm!322443) (not d!1456207) (not d!1456209) (not b!4623377) (not b_lambda!170691) (not b!4623393) (not b!4623339) (not b!4623353) (not bm!322415) (not b!4623274) (not b!4623343) (not b!4623331) (not b!4623350) (not b!4623266) (not d!1456125) (not b!4623394) (not b!4623378) (not b!4623358) (not d!1456227) (not b!4623075) (not b!4623380) (not bm!322438) (not b!4623367) (not d!1456131) (not bm!322418) (not d!1456127) (not b!4623047) (not d!1456177) (not d!1456121) (not bm!322439) (not b!4623188) (not d!1456219) (not bm!322445) (not d!1456223) (not d!1456237) (not b!4623021) (not b!4623298) (not b!4623268) (not bm!322416) (not b!4623067) (not d!1456057) (not d!1456229) (not d!1456197) (not b!4623374) tp_is_empty!29269 (not b!4623076) (not b!4623037) (not d!1456189) (not b!4623259) (not bs!1021915) (not d!1456225) (not b!4623360) (not b!4623376) (not d!1456213) (not bm!322437) (not b!4623069) (not b!4623366) (not b!4623068) (not b!4623346) (not d!1456159) (not d!1456157) (not d!1456133) (not b!4623387) (not b!4623186) (not d!1456195) (not b!4623210) (not b!4623330) (not bm!322435) (not b!4623381) (not b!4623384) (not d!1456221))
(check-sat)
