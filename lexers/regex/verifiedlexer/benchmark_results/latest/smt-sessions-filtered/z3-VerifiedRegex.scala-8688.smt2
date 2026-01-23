; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462480 () Bool)

(assert start!462480)

(declare-fun b!4619919 () Bool)

(declare-fun res!1936455 () Bool)

(declare-fun e!2881761 () Bool)

(assert (=> b!4619919 (=> res!1936455 e!2881761)))

(declare-datatypes ((K!12845 0))(
  ( (K!12846 (val!18547 Int)) )
))
(declare-datatypes ((V!13091 0))(
  ( (V!13092 (val!18548 Int)) )
))
(declare-datatypes ((tuple2!52358 0))(
  ( (tuple2!52359 (_1!29473 K!12845) (_2!29473 V!13091)) )
))
(declare-datatypes ((List!51582 0))(
  ( (Nil!51458) (Cons!51458 (h!57488 tuple2!52358) (t!358594 List!51582)) )
))
(declare-fun oldBucket!40 () List!51582)

(declare-fun lt!1775794 () List!51582)

(declare-fun key!4968 () K!12845)

(declare-fun removePairForKey!1101 (List!51582 K!12845) List!51582)

(assert (=> b!4619919 (= res!1936455 (not (= (removePairForKey!1101 (t!358594 oldBucket!40) key!4968) lt!1775794)))))

(declare-fun b!4619920 () Bool)

(declare-fun e!2881766 () Bool)

(assert (=> b!4619920 (= e!2881766 e!2881761)))

(declare-fun res!1936450 () Bool)

(assert (=> b!4619920 (=> res!1936450 e!2881761)))

(declare-fun lt!1775791 () List!51582)

(assert (=> b!4619920 (= res!1936450 (not (= (removePairForKey!1101 lt!1775791 key!4968) lt!1775794)))))

(declare-fun newBucket!224 () List!51582)

(declare-fun tail!8113 (List!51582) List!51582)

(assert (=> b!4619920 (= lt!1775794 (tail!8113 newBucket!224))))

(assert (=> b!4619920 (= lt!1775791 (tail!8113 oldBucket!40))))

(declare-fun b!4619921 () Bool)

(declare-fun e!2881760 () Bool)

(declare-fun e!2881764 () Bool)

(assert (=> b!4619921 (= e!2881760 e!2881764)))

(declare-fun res!1936451 () Bool)

(assert (=> b!4619921 (=> (not res!1936451) (not e!2881764))))

(declare-fun lt!1775785 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4619921 (= res!1936451 (= lt!1775785 hash!414))))

(declare-datatypes ((Hashable!5875 0))(
  ( (HashableExt!5874 (__x!31578 Int)) )
))
(declare-fun hashF!1389 () Hashable!5875)

(declare-fun hash!3448 (Hashable!5875 K!12845) (_ BitVec 64))

(assert (=> b!4619921 (= lt!1775785 (hash!3448 hashF!1389 key!4968))))

(declare-fun b!4619922 () Bool)

(declare-fun e!2881768 () Bool)

(assert (=> b!4619922 (= e!2881768 e!2881760)))

(declare-fun res!1936449 () Bool)

(assert (=> b!4619922 (=> (not res!1936449) (not e!2881760))))

(declare-datatypes ((ListMap!4225 0))(
  ( (ListMap!4226 (toList!4921 List!51582)) )
))
(declare-fun lt!1775792 () ListMap!4225)

(declare-fun contains!14453 (ListMap!4225 K!12845) Bool)

(assert (=> b!4619922 (= res!1936449 (contains!14453 lt!1775792 key!4968))))

(declare-datatypes ((tuple2!52360 0))(
  ( (tuple2!52361 (_1!29474 (_ BitVec 64)) (_2!29474 List!51582)) )
))
(declare-datatypes ((List!51583 0))(
  ( (Nil!51459) (Cons!51459 (h!57489 tuple2!52360) (t!358595 List!51583)) )
))
(declare-fun lt!1775783 () List!51583)

(declare-fun extractMap!1534 (List!51583) ListMap!4225)

(assert (=> b!4619922 (= lt!1775792 (extractMap!1534 lt!1775783))))

(assert (=> b!4619922 (= lt!1775783 (Cons!51459 (tuple2!52361 hash!414 oldBucket!40) Nil!51459))))

(declare-fun b!4619923 () Bool)

(declare-fun e!2881767 () Bool)

(assert (=> b!4619923 (= e!2881767 e!2881766)))

(declare-fun res!1936445 () Bool)

(assert (=> b!4619923 (=> res!1936445 e!2881766)))

(declare-fun containsKey!2378 (List!51582 K!12845) Bool)

(assert (=> b!4619923 (= res!1936445 (not (containsKey!2378 (t!358594 oldBucket!40) key!4968)))))

(assert (=> b!4619923 (containsKey!2378 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110820 0))(
  ( (Unit!110821) )
))
(declare-fun lt!1775793 () Unit!110820)

(declare-fun lemmaGetPairDefinedThenContainsKey!24 (List!51582 K!12845 Hashable!5875) Unit!110820)

(assert (=> b!4619923 (= lt!1775793 (lemmaGetPairDefinedThenContainsKey!24 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1775795 () List!51582)

(declare-datatypes ((Option!11520 0))(
  ( (None!11519) (Some!11519 (v!45605 tuple2!52358)) )
))
(declare-fun isDefined!8785 (Option!11520) Bool)

(declare-fun getPair!270 (List!51582 K!12845) Option!11520)

(assert (=> b!4619923 (isDefined!8785 (getPair!270 lt!1775795 key!4968))))

(declare-fun lt!1775787 () tuple2!52360)

(declare-fun lt!1775786 () Unit!110820)

(declare-fun lambda!190456 () Int)

(declare-fun forallContained!3002 (List!51583 Int tuple2!52360) Unit!110820)

(assert (=> b!4619923 (= lt!1775786 (forallContained!3002 lt!1775783 lambda!190456 lt!1775787))))

(declare-fun contains!14454 (List!51583 tuple2!52360) Bool)

(assert (=> b!4619923 (contains!14454 lt!1775783 lt!1775787)))

(assert (=> b!4619923 (= lt!1775787 (tuple2!52361 lt!1775785 lt!1775795))))

(declare-fun lt!1775790 () Unit!110820)

(declare-datatypes ((ListLongMap!3511 0))(
  ( (ListLongMap!3512 (toList!4922 List!51583)) )
))
(declare-fun lt!1775784 () ListLongMap!3511)

(declare-fun lemmaGetValueImpliesTupleContained!75 (ListLongMap!3511 (_ BitVec 64) List!51582) Unit!110820)

(assert (=> b!4619923 (= lt!1775790 (lemmaGetValueImpliesTupleContained!75 lt!1775784 lt!1775785 lt!1775795))))

(declare-fun apply!12143 (ListLongMap!3511 (_ BitVec 64)) List!51582)

(assert (=> b!4619923 (= lt!1775795 (apply!12143 lt!1775784 lt!1775785))))

(declare-fun contains!14455 (ListLongMap!3511 (_ BitVec 64)) Bool)

(assert (=> b!4619923 (contains!14455 lt!1775784 lt!1775785)))

(declare-fun lt!1775797 () Unit!110820)

(declare-fun lemmaInGenMapThenLongMapContainsHash!476 (ListLongMap!3511 K!12845 Hashable!5875) Unit!110820)

(assert (=> b!4619923 (= lt!1775797 (lemmaInGenMapThenLongMapContainsHash!476 lt!1775784 key!4968 hashF!1389))))

(declare-fun lt!1775788 () Unit!110820)

(declare-fun lemmaInGenMapThenGetPairDefined!66 (ListLongMap!3511 K!12845 Hashable!5875) Unit!110820)

(assert (=> b!4619923 (= lt!1775788 (lemmaInGenMapThenGetPairDefined!66 lt!1775784 key!4968 hashF!1389))))

(assert (=> b!4619923 (= lt!1775784 (ListLongMap!3512 lt!1775783))))

(declare-fun b!4619924 () Bool)

(declare-fun tp_is_empty!29205 () Bool)

(declare-fun tp!1341858 () Bool)

(declare-fun tp_is_empty!29207 () Bool)

(declare-fun e!2881762 () Bool)

(assert (=> b!4619924 (= e!2881762 (and tp_is_empty!29205 tp_is_empty!29207 tp!1341858))))

(declare-fun b!4619925 () Bool)

(declare-fun e!2881763 () Bool)

(declare-fun lt!1775782 () ListMap!4225)

(assert (=> b!4619925 (= e!2881763 (= lt!1775782 (ListMap!4226 Nil!51458)))))

(declare-fun res!1936453 () Bool)

(assert (=> start!462480 (=> (not res!1936453) (not e!2881768))))

(declare-fun noDuplicateKeys!1478 (List!51582) Bool)

(assert (=> start!462480 (= res!1936453 (noDuplicateKeys!1478 oldBucket!40))))

(assert (=> start!462480 e!2881768))

(assert (=> start!462480 true))

(declare-fun e!2881765 () Bool)

(assert (=> start!462480 e!2881765))

(assert (=> start!462480 tp_is_empty!29205))

(assert (=> start!462480 e!2881762))

(declare-fun b!4619926 () Bool)

(declare-fun res!1936447 () Bool)

(assert (=> b!4619926 (=> (not res!1936447) (not e!2881768))))

(assert (=> b!4619926 (= res!1936447 (= (removePairForKey!1101 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4619927 () Bool)

(assert (=> b!4619927 (= e!2881761 (not (= newBucket!224 Nil!51458)))))

(declare-fun lt!1775798 () tuple2!52358)

(declare-fun eq!793 (ListMap!4225 ListMap!4225) Bool)

(declare-fun addToMapMapFromBucket!939 (List!51582 ListMap!4225) ListMap!4225)

(declare-fun +!1844 (ListMap!4225 tuple2!52358) ListMap!4225)

(assert (=> b!4619927 (eq!793 (addToMapMapFromBucket!939 (Cons!51458 lt!1775798 lt!1775791) (ListMap!4226 Nil!51458)) (+!1844 (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458)) lt!1775798))))

(declare-fun lt!1775799 () Unit!110820)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!44 (tuple2!52358 List!51582 ListMap!4225) Unit!110820)

(assert (=> b!4619927 (= lt!1775799 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!44 lt!1775798 lt!1775791 (ListMap!4226 Nil!51458)))))

(declare-fun head!9612 (List!51582) tuple2!52358)

(assert (=> b!4619927 (= lt!1775798 (head!9612 oldBucket!40))))

(declare-fun lt!1775796 () List!51583)

(assert (=> b!4619927 (contains!14453 (extractMap!1534 lt!1775796) key!4968)))

(declare-fun lt!1775789 () Unit!110820)

(declare-fun lemmaListContainsThenExtractedMapContains!296 (ListLongMap!3511 K!12845 Hashable!5875) Unit!110820)

(assert (=> b!4619927 (= lt!1775789 (lemmaListContainsThenExtractedMapContains!296 (ListLongMap!3512 lt!1775796) key!4968 hashF!1389))))

(assert (=> b!4619927 (= lt!1775796 (Cons!51459 (tuple2!52361 hash!414 (t!358594 oldBucket!40)) Nil!51459))))

(declare-fun b!4619928 () Bool)

(assert (=> b!4619928 (= e!2881764 (not e!2881767))))

(declare-fun res!1936446 () Bool)

(assert (=> b!4619928 (=> res!1936446 e!2881767)))

(get-info :version)

(assert (=> b!4619928 (= res!1936446 (or (and ((_ is Cons!51458) oldBucket!40) (= (_1!29473 (h!57488 oldBucket!40)) key!4968)) (not ((_ is Cons!51458) oldBucket!40)) (= (_1!29473 (h!57488 oldBucket!40)) key!4968)))))

(assert (=> b!4619928 e!2881763))

(declare-fun res!1936454 () Bool)

(assert (=> b!4619928 (=> (not res!1936454) (not e!2881763))))

(assert (=> b!4619928 (= res!1936454 (= lt!1775792 (addToMapMapFromBucket!939 oldBucket!40 lt!1775782)))))

(assert (=> b!4619928 (= lt!1775782 (extractMap!1534 Nil!51459))))

(assert (=> b!4619928 true))

(declare-fun b!4619929 () Bool)

(declare-fun res!1936456 () Bool)

(assert (=> b!4619929 (=> (not res!1936456) (not e!2881764))))

(declare-fun allKeysSameHash!1332 (List!51582 (_ BitVec 64) Hashable!5875) Bool)

(assert (=> b!4619929 (= res!1936456 (allKeysSameHash!1332 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4619930 () Bool)

(declare-fun res!1936452 () Bool)

(assert (=> b!4619930 (=> (not res!1936452) (not e!2881768))))

(assert (=> b!4619930 (= res!1936452 (allKeysSameHash!1332 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1341859 () Bool)

(declare-fun b!4619931 () Bool)

(assert (=> b!4619931 (= e!2881765 (and tp_is_empty!29205 tp_is_empty!29207 tp!1341859))))

(declare-fun b!4619932 () Bool)

(declare-fun res!1936448 () Bool)

(assert (=> b!4619932 (=> (not res!1936448) (not e!2881768))))

(assert (=> b!4619932 (= res!1936448 (noDuplicateKeys!1478 newBucket!224))))

(assert (= (and start!462480 res!1936453) b!4619932))

(assert (= (and b!4619932 res!1936448) b!4619926))

(assert (= (and b!4619926 res!1936447) b!4619930))

(assert (= (and b!4619930 res!1936452) b!4619922))

(assert (= (and b!4619922 res!1936449) b!4619921))

(assert (= (and b!4619921 res!1936451) b!4619929))

(assert (= (and b!4619929 res!1936456) b!4619928))

(assert (= (and b!4619928 res!1936454) b!4619925))

(assert (= (and b!4619928 (not res!1936446)) b!4619923))

(assert (= (and b!4619923 (not res!1936445)) b!4619920))

(assert (= (and b!4619920 (not res!1936450)) b!4619919))

(assert (= (and b!4619919 (not res!1936455)) b!4619927))

(assert (= (and start!462480 ((_ is Cons!51458) oldBucket!40)) b!4619931))

(assert (= (and start!462480 ((_ is Cons!51458) newBucket!224)) b!4619924))

(declare-fun m!5455791 () Bool)

(assert (=> b!4619930 m!5455791))

(declare-fun m!5455793 () Bool)

(assert (=> b!4619929 m!5455793))

(declare-fun m!5455795 () Bool)

(assert (=> b!4619927 m!5455795))

(declare-fun m!5455797 () Bool)

(assert (=> b!4619927 m!5455797))

(declare-fun m!5455799 () Bool)

(assert (=> b!4619927 m!5455799))

(declare-fun m!5455801 () Bool)

(assert (=> b!4619927 m!5455801))

(declare-fun m!5455803 () Bool)

(assert (=> b!4619927 m!5455803))

(declare-fun m!5455805 () Bool)

(assert (=> b!4619927 m!5455805))

(declare-fun m!5455807 () Bool)

(assert (=> b!4619927 m!5455807))

(assert (=> b!4619927 m!5455801))

(assert (=> b!4619927 m!5455805))

(declare-fun m!5455809 () Bool)

(assert (=> b!4619927 m!5455809))

(assert (=> b!4619927 m!5455807))

(declare-fun m!5455811 () Bool)

(assert (=> b!4619927 m!5455811))

(assert (=> b!4619927 m!5455809))

(declare-fun m!5455813 () Bool)

(assert (=> b!4619921 m!5455813))

(declare-fun m!5455815 () Bool)

(assert (=> b!4619920 m!5455815))

(declare-fun m!5455817 () Bool)

(assert (=> b!4619920 m!5455817))

(declare-fun m!5455819 () Bool)

(assert (=> b!4619920 m!5455819))

(declare-fun m!5455821 () Bool)

(assert (=> b!4619932 m!5455821))

(declare-fun m!5455823 () Bool)

(assert (=> b!4619922 m!5455823))

(declare-fun m!5455825 () Bool)

(assert (=> b!4619922 m!5455825))

(declare-fun m!5455827 () Bool)

(assert (=> start!462480 m!5455827))

(declare-fun m!5455829 () Bool)

(assert (=> b!4619919 m!5455829))

(declare-fun m!5455831 () Bool)

(assert (=> b!4619928 m!5455831))

(declare-fun m!5455833 () Bool)

(assert (=> b!4619928 m!5455833))

(declare-fun m!5455835 () Bool)

(assert (=> b!4619923 m!5455835))

(declare-fun m!5455837 () Bool)

(assert (=> b!4619923 m!5455837))

(declare-fun m!5455839 () Bool)

(assert (=> b!4619923 m!5455839))

(declare-fun m!5455841 () Bool)

(assert (=> b!4619923 m!5455841))

(declare-fun m!5455843 () Bool)

(assert (=> b!4619923 m!5455843))

(declare-fun m!5455845 () Bool)

(assert (=> b!4619923 m!5455845))

(declare-fun m!5455847 () Bool)

(assert (=> b!4619923 m!5455847))

(declare-fun m!5455849 () Bool)

(assert (=> b!4619923 m!5455849))

(declare-fun m!5455851 () Bool)

(assert (=> b!4619923 m!5455851))

(declare-fun m!5455853 () Bool)

(assert (=> b!4619923 m!5455853))

(declare-fun m!5455855 () Bool)

(assert (=> b!4619923 m!5455855))

(assert (=> b!4619923 m!5455849))

(declare-fun m!5455857 () Bool)

(assert (=> b!4619923 m!5455857))

(declare-fun m!5455859 () Bool)

(assert (=> b!4619926 m!5455859))

(check-sat (not b!4619927) (not b!4619924) (not b!4619920) (not b!4619919) (not b!4619929) (not b!4619932) (not b!4619931) (not b!4619930) tp_is_empty!29207 (not b!4619921) (not start!462480) (not b!4619928) tp_is_empty!29205 (not b!4619922) (not b!4619923) (not b!4619926))
(check-sat)
(get-model)

(declare-fun b!4619976 () Bool)

(declare-fun e!2881795 () List!51582)

(assert (=> b!4619976 (= e!2881795 (Cons!51458 (h!57488 (t!358594 oldBucket!40)) (removePairForKey!1101 (t!358594 (t!358594 oldBucket!40)) key!4968)))))

(declare-fun b!4619977 () Bool)

(assert (=> b!4619977 (= e!2881795 Nil!51458)))

(declare-fun b!4619974 () Bool)

(declare-fun e!2881794 () List!51582)

(assert (=> b!4619974 (= e!2881794 (t!358594 (t!358594 oldBucket!40)))))

(declare-fun b!4619975 () Bool)

(assert (=> b!4619975 (= e!2881794 e!2881795)))

(declare-fun c!790826 () Bool)

(assert (=> b!4619975 (= c!790826 ((_ is Cons!51458) (t!358594 oldBucket!40)))))

(declare-fun d!1454989 () Bool)

(declare-fun lt!1775817 () List!51582)

(assert (=> d!1454989 (not (containsKey!2378 lt!1775817 key!4968))))

(assert (=> d!1454989 (= lt!1775817 e!2881794)))

(declare-fun c!790827 () Bool)

(assert (=> d!1454989 (= c!790827 (and ((_ is Cons!51458) (t!358594 oldBucket!40)) (= (_1!29473 (h!57488 (t!358594 oldBucket!40))) key!4968)))))

(assert (=> d!1454989 (noDuplicateKeys!1478 (t!358594 oldBucket!40))))

(assert (=> d!1454989 (= (removePairForKey!1101 (t!358594 oldBucket!40) key!4968) lt!1775817)))

(assert (= (and d!1454989 c!790827) b!4619974))

(assert (= (and d!1454989 (not c!790827)) b!4619975))

(assert (= (and b!4619975 c!790826) b!4619976))

(assert (= (and b!4619975 (not c!790826)) b!4619977))

(declare-fun m!5455885 () Bool)

(assert (=> b!4619976 m!5455885))

(declare-fun m!5455887 () Bool)

(assert (=> d!1454989 m!5455887))

(declare-fun m!5455889 () Bool)

(assert (=> d!1454989 m!5455889))

(assert (=> b!4619919 d!1454989))

(declare-fun d!1454995 () Bool)

(assert (=> d!1454995 true))

(assert (=> d!1454995 true))

(declare-fun lambda!190459 () Int)

(declare-fun forall!10783 (List!51582 Int) Bool)

(assert (=> d!1454995 (= (allKeysSameHash!1332 newBucket!224 hash!414 hashF!1389) (forall!10783 newBucket!224 lambda!190459))))

(declare-fun bs!1019537 () Bool)

(assert (= bs!1019537 d!1454995))

(declare-fun m!5455903 () Bool)

(assert (=> bs!1019537 m!5455903))

(assert (=> b!4619929 d!1454995))

(declare-fun b!4619991 () Bool)

(declare-fun e!2881803 () List!51582)

(assert (=> b!4619991 (= e!2881803 (Cons!51458 (h!57488 lt!1775791) (removePairForKey!1101 (t!358594 lt!1775791) key!4968)))))

(declare-fun b!4619992 () Bool)

(assert (=> b!4619992 (= e!2881803 Nil!51458)))

(declare-fun b!4619989 () Bool)

(declare-fun e!2881802 () List!51582)

(assert (=> b!4619989 (= e!2881802 (t!358594 lt!1775791))))

(declare-fun b!4619990 () Bool)

(assert (=> b!4619990 (= e!2881802 e!2881803)))

(declare-fun c!790828 () Bool)

(assert (=> b!4619990 (= c!790828 ((_ is Cons!51458) lt!1775791))))

(declare-fun d!1455003 () Bool)

(declare-fun lt!1775824 () List!51582)

(assert (=> d!1455003 (not (containsKey!2378 lt!1775824 key!4968))))

(assert (=> d!1455003 (= lt!1775824 e!2881802)))

(declare-fun c!790829 () Bool)

(assert (=> d!1455003 (= c!790829 (and ((_ is Cons!51458) lt!1775791) (= (_1!29473 (h!57488 lt!1775791)) key!4968)))))

(assert (=> d!1455003 (noDuplicateKeys!1478 lt!1775791)))

(assert (=> d!1455003 (= (removePairForKey!1101 lt!1775791 key!4968) lt!1775824)))

(assert (= (and d!1455003 c!790829) b!4619989))

(assert (= (and d!1455003 (not c!790829)) b!4619990))

(assert (= (and b!4619990 c!790828) b!4619991))

(assert (= (and b!4619990 (not c!790828)) b!4619992))

(declare-fun m!5455905 () Bool)

(assert (=> b!4619991 m!5455905))

(declare-fun m!5455907 () Bool)

(assert (=> d!1455003 m!5455907))

(declare-fun m!5455909 () Bool)

(assert (=> d!1455003 m!5455909))

(assert (=> b!4619920 d!1455003))

(declare-fun d!1455005 () Bool)

(assert (=> d!1455005 (= (tail!8113 newBucket!224) (t!358594 newBucket!224))))

(assert (=> b!4619920 d!1455005))

(declare-fun d!1455009 () Bool)

(assert (=> d!1455009 (= (tail!8113 oldBucket!40) (t!358594 oldBucket!40))))

(assert (=> b!4619920 d!1455009))

(declare-fun bs!1019538 () Bool)

(declare-fun d!1455011 () Bool)

(assert (= bs!1019538 (and d!1455011 d!1454995)))

(declare-fun lambda!190460 () Int)

(assert (=> bs!1019538 (= lambda!190460 lambda!190459)))

(assert (=> d!1455011 true))

(assert (=> d!1455011 true))

(assert (=> d!1455011 (= (allKeysSameHash!1332 oldBucket!40 hash!414 hashF!1389) (forall!10783 oldBucket!40 lambda!190460))))

(declare-fun bs!1019539 () Bool)

(assert (= bs!1019539 d!1455011))

(declare-fun m!5455911 () Bool)

(assert (=> bs!1019539 m!5455911))

(assert (=> b!4619930 d!1455011))

(declare-fun bs!1019543 () Bool)

(declare-fun d!1455013 () Bool)

(assert (= bs!1019543 (and d!1455013 b!4619923)))

(declare-fun lambda!190466 () Int)

(assert (=> bs!1019543 (= lambda!190466 lambda!190456)))

(declare-fun lt!1775836 () ListMap!4225)

(declare-fun invariantList!1184 (List!51582) Bool)

(assert (=> d!1455013 (invariantList!1184 (toList!4921 lt!1775836))))

(declare-fun e!2881817 () ListMap!4225)

(assert (=> d!1455013 (= lt!1775836 e!2881817)))

(declare-fun c!790832 () Bool)

(assert (=> d!1455013 (= c!790832 ((_ is Cons!51459) lt!1775796))))

(declare-fun forall!10784 (List!51583 Int) Bool)

(assert (=> d!1455013 (forall!10784 lt!1775796 lambda!190466)))

(assert (=> d!1455013 (= (extractMap!1534 lt!1775796) lt!1775836)))

(declare-fun b!4620008 () Bool)

(assert (=> b!4620008 (= e!2881817 (addToMapMapFromBucket!939 (_2!29474 (h!57489 lt!1775796)) (extractMap!1534 (t!358595 lt!1775796))))))

(declare-fun b!4620009 () Bool)

(assert (=> b!4620009 (= e!2881817 (ListMap!4226 Nil!51458))))

(assert (= (and d!1455013 c!790832) b!4620008))

(assert (= (and d!1455013 (not c!790832)) b!4620009))

(declare-fun m!5455929 () Bool)

(assert (=> d!1455013 m!5455929))

(declare-fun m!5455931 () Bool)

(assert (=> d!1455013 m!5455931))

(declare-fun m!5455933 () Bool)

(assert (=> b!4620008 m!5455933))

(assert (=> b!4620008 m!5455933))

(declare-fun m!5455935 () Bool)

(assert (=> b!4620008 m!5455935))

(assert (=> b!4619927 d!1455013))

(declare-fun d!1455023 () Bool)

(declare-fun e!2881832 () Bool)

(assert (=> d!1455023 e!2881832))

(declare-fun res!1936506 () Bool)

(assert (=> d!1455023 (=> (not res!1936506) (not e!2881832))))

(declare-fun lt!1775872 () ListMap!4225)

(assert (=> d!1455023 (= res!1936506 (contains!14453 lt!1775872 (_1!29473 lt!1775798)))))

(declare-fun lt!1775875 () List!51582)

(assert (=> d!1455023 (= lt!1775872 (ListMap!4226 lt!1775875))))

(declare-fun lt!1775873 () Unit!110820)

(declare-fun lt!1775874 () Unit!110820)

(assert (=> d!1455023 (= lt!1775873 lt!1775874)))

(declare-datatypes ((Option!11523 0))(
  ( (None!11522) (Some!11522 (v!45612 V!13091)) )
))
(declare-fun getValueByKey!1411 (List!51582 K!12845) Option!11523)

(assert (=> d!1455023 (= (getValueByKey!1411 lt!1775875 (_1!29473 lt!1775798)) (Some!11522 (_2!29473 lt!1775798)))))

(declare-fun lemmaContainsTupThenGetReturnValue!827 (List!51582 K!12845 V!13091) Unit!110820)

(assert (=> d!1455023 (= lt!1775874 (lemmaContainsTupThenGetReturnValue!827 lt!1775875 (_1!29473 lt!1775798) (_2!29473 lt!1775798)))))

(declare-fun insertNoDuplicatedKeys!335 (List!51582 K!12845 V!13091) List!51582)

(assert (=> d!1455023 (= lt!1775875 (insertNoDuplicatedKeys!335 (toList!4921 (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458))) (_1!29473 lt!1775798) (_2!29473 lt!1775798)))))

(assert (=> d!1455023 (= (+!1844 (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458)) lt!1775798) lt!1775872)))

(declare-fun b!4620042 () Bool)

(declare-fun res!1936505 () Bool)

(assert (=> b!4620042 (=> (not res!1936505) (not e!2881832))))

(assert (=> b!4620042 (= res!1936505 (= (getValueByKey!1411 (toList!4921 lt!1775872) (_1!29473 lt!1775798)) (Some!11522 (_2!29473 lt!1775798))))))

(declare-fun b!4620043 () Bool)

(declare-fun contains!14458 (List!51582 tuple2!52358) Bool)

(assert (=> b!4620043 (= e!2881832 (contains!14458 (toList!4921 lt!1775872) lt!1775798))))

(assert (= (and d!1455023 res!1936506) b!4620042))

(assert (= (and b!4620042 res!1936505) b!4620043))

(declare-fun m!5455971 () Bool)

(assert (=> d!1455023 m!5455971))

(declare-fun m!5455973 () Bool)

(assert (=> d!1455023 m!5455973))

(declare-fun m!5455975 () Bool)

(assert (=> d!1455023 m!5455975))

(declare-fun m!5455977 () Bool)

(assert (=> d!1455023 m!5455977))

(declare-fun m!5455979 () Bool)

(assert (=> b!4620042 m!5455979))

(declare-fun m!5455981 () Bool)

(assert (=> b!4620043 m!5455981))

(assert (=> b!4619927 d!1455023))

(declare-fun b!4620062 () Bool)

(declare-fun e!2881850 () Bool)

(declare-fun e!2881848 () Bool)

(assert (=> b!4620062 (= e!2881850 e!2881848)))

(declare-fun res!1936513 () Bool)

(assert (=> b!4620062 (=> (not res!1936513) (not e!2881848))))

(declare-fun isDefined!8788 (Option!11523) Bool)

(assert (=> b!4620062 (= res!1936513 (isDefined!8788 (getValueByKey!1411 (toList!4921 (extractMap!1534 lt!1775796)) key!4968)))))

(declare-fun b!4620063 () Bool)

(declare-datatypes ((List!51585 0))(
  ( (Nil!51461) (Cons!51461 (h!57493 K!12845) (t!358599 List!51585)) )
))
(declare-fun contains!14459 (List!51585 K!12845) Bool)

(declare-fun keys!18106 (ListMap!4225) List!51585)

(assert (=> b!4620063 (= e!2881848 (contains!14459 (keys!18106 (extractMap!1534 lt!1775796)) key!4968))))

(declare-fun b!4620064 () Bool)

(declare-fun e!2881847 () Bool)

(assert (=> b!4620064 (= e!2881847 (not (contains!14459 (keys!18106 (extractMap!1534 lt!1775796)) key!4968)))))

(declare-fun b!4620065 () Bool)

(declare-fun e!2881849 () Unit!110820)

(declare-fun lt!1775893 () Unit!110820)

(assert (=> b!4620065 (= e!2881849 lt!1775893)))

(declare-fun lt!1775892 () Unit!110820)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1313 (List!51582 K!12845) Unit!110820)

(assert (=> b!4620065 (= lt!1775892 (lemmaContainsKeyImpliesGetValueByKeyDefined!1313 (toList!4921 (extractMap!1534 lt!1775796)) key!4968))))

(assert (=> b!4620065 (isDefined!8788 (getValueByKey!1411 (toList!4921 (extractMap!1534 lt!1775796)) key!4968))))

(declare-fun lt!1775898 () Unit!110820)

(assert (=> b!4620065 (= lt!1775898 lt!1775892)))

(declare-fun lemmaInListThenGetKeysListContains!630 (List!51582 K!12845) Unit!110820)

(assert (=> b!4620065 (= lt!1775893 (lemmaInListThenGetKeysListContains!630 (toList!4921 (extractMap!1534 lt!1775796)) key!4968))))

(declare-fun call!322116 () Bool)

(assert (=> b!4620065 call!322116))

(declare-fun b!4620066 () Bool)

(declare-fun e!2881846 () List!51585)

(declare-fun getKeysList!635 (List!51582) List!51585)

(assert (=> b!4620066 (= e!2881846 (getKeysList!635 (toList!4921 (extractMap!1534 lt!1775796))))))

(declare-fun b!4620067 () Bool)

(declare-fun e!2881845 () Unit!110820)

(declare-fun Unit!110836 () Unit!110820)

(assert (=> b!4620067 (= e!2881845 Unit!110836)))

(declare-fun bm!322111 () Bool)

(assert (=> bm!322111 (= call!322116 (contains!14459 e!2881846 key!4968))))

(declare-fun c!790846 () Bool)

(declare-fun c!790847 () Bool)

(assert (=> bm!322111 (= c!790846 c!790847)))

(declare-fun d!1455035 () Bool)

(assert (=> d!1455035 e!2881850))

(declare-fun res!1936514 () Bool)

(assert (=> d!1455035 (=> res!1936514 e!2881850)))

(assert (=> d!1455035 (= res!1936514 e!2881847)))

(declare-fun res!1936515 () Bool)

(assert (=> d!1455035 (=> (not res!1936515) (not e!2881847))))

(declare-fun lt!1775894 () Bool)

(assert (=> d!1455035 (= res!1936515 (not lt!1775894))))

(declare-fun lt!1775896 () Bool)

(assert (=> d!1455035 (= lt!1775894 lt!1775896)))

(declare-fun lt!1775899 () Unit!110820)

(assert (=> d!1455035 (= lt!1775899 e!2881849)))

(assert (=> d!1455035 (= c!790847 lt!1775896)))

(declare-fun containsKey!2381 (List!51582 K!12845) Bool)

(assert (=> d!1455035 (= lt!1775896 (containsKey!2381 (toList!4921 (extractMap!1534 lt!1775796)) key!4968))))

(assert (=> d!1455035 (= (contains!14453 (extractMap!1534 lt!1775796) key!4968) lt!1775894)))

(declare-fun b!4620068 () Bool)

(assert (=> b!4620068 (= e!2881846 (keys!18106 (extractMap!1534 lt!1775796)))))

(declare-fun b!4620069 () Bool)

(assert (=> b!4620069 (= e!2881849 e!2881845)))

(declare-fun c!790845 () Bool)

(assert (=> b!4620069 (= c!790845 call!322116)))

(declare-fun b!4620070 () Bool)

(assert (=> b!4620070 false))

(declare-fun lt!1775897 () Unit!110820)

(declare-fun lt!1775895 () Unit!110820)

(assert (=> b!4620070 (= lt!1775897 lt!1775895)))

(assert (=> b!4620070 (containsKey!2381 (toList!4921 (extractMap!1534 lt!1775796)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!634 (List!51582 K!12845) Unit!110820)

(assert (=> b!4620070 (= lt!1775895 (lemmaInGetKeysListThenContainsKey!634 (toList!4921 (extractMap!1534 lt!1775796)) key!4968))))

(declare-fun Unit!110837 () Unit!110820)

(assert (=> b!4620070 (= e!2881845 Unit!110837)))

(assert (= (and d!1455035 c!790847) b!4620065))

(assert (= (and d!1455035 (not c!790847)) b!4620069))

(assert (= (and b!4620069 c!790845) b!4620070))

(assert (= (and b!4620069 (not c!790845)) b!4620067))

(assert (= (or b!4620065 b!4620069) bm!322111))

(assert (= (and bm!322111 c!790846) b!4620066))

(assert (= (and bm!322111 (not c!790846)) b!4620068))

(assert (= (and d!1455035 res!1936515) b!4620064))

(assert (= (and d!1455035 (not res!1936514)) b!4620062))

(assert (= (and b!4620062 res!1936513) b!4620063))

(declare-fun m!5455983 () Bool)

(assert (=> b!4620070 m!5455983))

(declare-fun m!5455985 () Bool)

(assert (=> b!4620070 m!5455985))

(assert (=> b!4620064 m!5455801))

(declare-fun m!5455987 () Bool)

(assert (=> b!4620064 m!5455987))

(assert (=> b!4620064 m!5455987))

(declare-fun m!5455989 () Bool)

(assert (=> b!4620064 m!5455989))

(assert (=> d!1455035 m!5455983))

(declare-fun m!5455991 () Bool)

(assert (=> bm!322111 m!5455991))

(assert (=> b!4620063 m!5455801))

(assert (=> b!4620063 m!5455987))

(assert (=> b!4620063 m!5455987))

(assert (=> b!4620063 m!5455989))

(assert (=> b!4620068 m!5455801))

(assert (=> b!4620068 m!5455987))

(declare-fun m!5455993 () Bool)

(assert (=> b!4620062 m!5455993))

(assert (=> b!4620062 m!5455993))

(declare-fun m!5455995 () Bool)

(assert (=> b!4620062 m!5455995))

(declare-fun m!5455997 () Bool)

(assert (=> b!4620065 m!5455997))

(assert (=> b!4620065 m!5455993))

(assert (=> b!4620065 m!5455993))

(assert (=> b!4620065 m!5455995))

(declare-fun m!5455999 () Bool)

(assert (=> b!4620065 m!5455999))

(declare-fun m!5456001 () Bool)

(assert (=> b!4620066 m!5456001))

(assert (=> b!4619927 d!1455035))

(declare-fun bs!1019579 () Bool)

(declare-fun b!4620161 () Bool)

(assert (= bs!1019579 (and b!4620161 d!1454995)))

(declare-fun lambda!190546 () Int)

(assert (=> bs!1019579 (not (= lambda!190546 lambda!190459))))

(declare-fun bs!1019582 () Bool)

(assert (= bs!1019582 (and b!4620161 d!1455011)))

(assert (=> bs!1019582 (not (= lambda!190546 lambda!190460))))

(assert (=> b!4620161 true))

(declare-fun bs!1019584 () Bool)

(declare-fun b!4620164 () Bool)

(assert (= bs!1019584 (and b!4620164 d!1454995)))

(declare-fun lambda!190547 () Int)

(assert (=> bs!1019584 (not (= lambda!190547 lambda!190459))))

(declare-fun bs!1019585 () Bool)

(assert (= bs!1019585 (and b!4620164 d!1455011)))

(assert (=> bs!1019585 (not (= lambda!190547 lambda!190460))))

(declare-fun bs!1019586 () Bool)

(assert (= bs!1019586 (and b!4620164 b!4620161)))

(assert (=> bs!1019586 (= lambda!190547 lambda!190546)))

(assert (=> b!4620164 true))

(declare-fun lambda!190549 () Int)

(assert (=> bs!1019584 (not (= lambda!190549 lambda!190459))))

(assert (=> bs!1019585 (not (= lambda!190549 lambda!190460))))

(declare-fun lt!1776103 () ListMap!4225)

(assert (=> bs!1019586 (= (= lt!1776103 (ListMap!4226 Nil!51458)) (= lambda!190549 lambda!190546))))

(assert (=> b!4620164 (= (= lt!1776103 (ListMap!4226 Nil!51458)) (= lambda!190549 lambda!190547))))

(assert (=> b!4620164 true))

(declare-fun bs!1019595 () Bool)

(declare-fun d!1455037 () Bool)

(assert (= bs!1019595 (and d!1455037 d!1454995)))

(declare-fun lambda!190551 () Int)

(assert (=> bs!1019595 (not (= lambda!190551 lambda!190459))))

(declare-fun bs!1019596 () Bool)

(assert (= bs!1019596 (and d!1455037 b!4620164)))

(declare-fun lt!1776088 () ListMap!4225)

(assert (=> bs!1019596 (= (= lt!1776088 (ListMap!4226 Nil!51458)) (= lambda!190551 lambda!190547))))

(assert (=> bs!1019596 (= (= lt!1776088 lt!1776103) (= lambda!190551 lambda!190549))))

(declare-fun bs!1019597 () Bool)

(assert (= bs!1019597 (and d!1455037 d!1455011)))

(assert (=> bs!1019597 (not (= lambda!190551 lambda!190460))))

(declare-fun bs!1019598 () Bool)

(assert (= bs!1019598 (and d!1455037 b!4620161)))

(assert (=> bs!1019598 (= (= lt!1776088 (ListMap!4226 Nil!51458)) (= lambda!190551 lambda!190546))))

(assert (=> d!1455037 true))

(declare-fun e!2881907 () Bool)

(assert (=> d!1455037 e!2881907))

(declare-fun res!1936561 () Bool)

(assert (=> d!1455037 (=> (not res!1936561) (not e!2881907))))

(assert (=> d!1455037 (= res!1936561 (forall!10783 (Cons!51458 lt!1775798 lt!1775791) lambda!190551))))

(declare-fun e!2881908 () ListMap!4225)

(assert (=> d!1455037 (= lt!1776088 e!2881908)))

(declare-fun c!790870 () Bool)

(assert (=> d!1455037 (= c!790870 ((_ is Nil!51458) (Cons!51458 lt!1775798 lt!1775791)))))

(assert (=> d!1455037 (noDuplicateKeys!1478 (Cons!51458 lt!1775798 lt!1775791))))

(assert (=> d!1455037 (= (addToMapMapFromBucket!939 (Cons!51458 lt!1775798 lt!1775791) (ListMap!4226 Nil!51458)) lt!1776088)))

(declare-fun call!322142 () Bool)

(declare-fun bm!322136 () Bool)

(assert (=> bm!322136 (= call!322142 (forall!10783 (ite c!790870 (toList!4921 (ListMap!4226 Nil!51458)) (Cons!51458 lt!1775798 lt!1775791)) (ite c!790870 lambda!190546 lambda!190549)))))

(assert (=> b!4620161 (= e!2881908 (ListMap!4226 Nil!51458))))

(declare-fun lt!1776107 () Unit!110820)

(declare-fun call!322143 () Unit!110820)

(assert (=> b!4620161 (= lt!1776107 call!322143)))

(declare-fun call!322141 () Bool)

(assert (=> b!4620161 call!322141))

(declare-fun lt!1776091 () Unit!110820)

(assert (=> b!4620161 (= lt!1776091 lt!1776107)))

(assert (=> b!4620161 call!322142))

(declare-fun lt!1776104 () Unit!110820)

(declare-fun Unit!110842 () Unit!110820)

(assert (=> b!4620161 (= lt!1776104 Unit!110842)))

(declare-fun b!4620162 () Bool)

(declare-fun res!1936562 () Bool)

(assert (=> b!4620162 (=> (not res!1936562) (not e!2881907))))

(assert (=> b!4620162 (= res!1936562 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190551))))

(declare-fun b!4620163 () Bool)

(assert (=> b!4620163 (= e!2881907 (invariantList!1184 (toList!4921 lt!1776088)))))

(declare-fun bm!322137 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!486 (ListMap!4225) Unit!110820)

(assert (=> bm!322137 (= call!322143 (lemmaContainsAllItsOwnKeys!486 (ListMap!4226 Nil!51458)))))

(assert (=> b!4620164 (= e!2881908 lt!1776103)))

(declare-fun lt!1776101 () ListMap!4225)

(assert (=> b!4620164 (= lt!1776101 (+!1844 (ListMap!4226 Nil!51458) (h!57488 (Cons!51458 lt!1775798 lt!1775791))))))

(assert (=> b!4620164 (= lt!1776103 (addToMapMapFromBucket!939 (t!358594 (Cons!51458 lt!1775798 lt!1775791)) (+!1844 (ListMap!4226 Nil!51458) (h!57488 (Cons!51458 lt!1775798 lt!1775791)))))))

(declare-fun lt!1776089 () Unit!110820)

(assert (=> b!4620164 (= lt!1776089 call!322143)))

(assert (=> b!4620164 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190547)))

(declare-fun lt!1776099 () Unit!110820)

(assert (=> b!4620164 (= lt!1776099 lt!1776089)))

(assert (=> b!4620164 (forall!10783 (toList!4921 lt!1776101) lambda!190549)))

(declare-fun lt!1776100 () Unit!110820)

(declare-fun Unit!110847 () Unit!110820)

(assert (=> b!4620164 (= lt!1776100 Unit!110847)))

(assert (=> b!4620164 (forall!10783 (t!358594 (Cons!51458 lt!1775798 lt!1775791)) lambda!190549)))

(declare-fun lt!1776108 () Unit!110820)

(declare-fun Unit!110849 () Unit!110820)

(assert (=> b!4620164 (= lt!1776108 Unit!110849)))

(declare-fun lt!1776094 () Unit!110820)

(declare-fun Unit!110850 () Unit!110820)

(assert (=> b!4620164 (= lt!1776094 Unit!110850)))

(declare-fun lt!1776105 () Unit!110820)

(declare-fun forallContained!3004 (List!51582 Int tuple2!52358) Unit!110820)

(assert (=> b!4620164 (= lt!1776105 (forallContained!3004 (toList!4921 lt!1776101) lambda!190549 (h!57488 (Cons!51458 lt!1775798 lt!1775791))))))

(assert (=> b!4620164 (contains!14453 lt!1776101 (_1!29473 (h!57488 (Cons!51458 lt!1775798 lt!1775791))))))

(declare-fun lt!1776095 () Unit!110820)

(declare-fun Unit!110852 () Unit!110820)

(assert (=> b!4620164 (= lt!1776095 Unit!110852)))

(assert (=> b!4620164 (contains!14453 lt!1776103 (_1!29473 (h!57488 (Cons!51458 lt!1775798 lt!1775791))))))

(declare-fun lt!1776092 () Unit!110820)

(declare-fun Unit!110853 () Unit!110820)

(assert (=> b!4620164 (= lt!1776092 Unit!110853)))

(assert (=> b!4620164 call!322142))

(declare-fun lt!1776098 () Unit!110820)

(declare-fun Unit!110854 () Unit!110820)

(assert (=> b!4620164 (= lt!1776098 Unit!110854)))

(assert (=> b!4620164 call!322141))

(declare-fun lt!1776102 () Unit!110820)

(declare-fun Unit!110855 () Unit!110820)

(assert (=> b!4620164 (= lt!1776102 Unit!110855)))

(declare-fun lt!1776093 () Unit!110820)

(declare-fun Unit!110856 () Unit!110820)

(assert (=> b!4620164 (= lt!1776093 Unit!110856)))

(declare-fun lt!1776090 () Unit!110820)

(declare-fun addForallContainsKeyThenBeforeAdding!485 (ListMap!4225 ListMap!4225 K!12845 V!13091) Unit!110820)

(assert (=> b!4620164 (= lt!1776090 (addForallContainsKeyThenBeforeAdding!485 (ListMap!4226 Nil!51458) lt!1776103 (_1!29473 (h!57488 (Cons!51458 lt!1775798 lt!1775791))) (_2!29473 (h!57488 (Cons!51458 lt!1775798 lt!1775791)))))))

(assert (=> b!4620164 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190549)))

(declare-fun lt!1776097 () Unit!110820)

(assert (=> b!4620164 (= lt!1776097 lt!1776090)))

(assert (=> b!4620164 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190549)))

(declare-fun lt!1776106 () Unit!110820)

(declare-fun Unit!110857 () Unit!110820)

(assert (=> b!4620164 (= lt!1776106 Unit!110857)))

(declare-fun res!1936560 () Bool)

(assert (=> b!4620164 (= res!1936560 (forall!10783 (Cons!51458 lt!1775798 lt!1775791) lambda!190549))))

(declare-fun e!2881909 () Bool)

(assert (=> b!4620164 (=> (not res!1936560) (not e!2881909))))

(assert (=> b!4620164 e!2881909))

(declare-fun lt!1776096 () Unit!110820)

(declare-fun Unit!110859 () Unit!110820)

(assert (=> b!4620164 (= lt!1776096 Unit!110859)))

(declare-fun b!4620165 () Bool)

(assert (=> b!4620165 (= e!2881909 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190549))))

(declare-fun bm!322138 () Bool)

(assert (=> bm!322138 (= call!322141 (forall!10783 (ite c!790870 (toList!4921 (ListMap!4226 Nil!51458)) (toList!4921 lt!1776101)) (ite c!790870 lambda!190546 lambda!190549)))))

(assert (= (and d!1455037 c!790870) b!4620161))

(assert (= (and d!1455037 (not c!790870)) b!4620164))

(assert (= (and b!4620164 res!1936560) b!4620165))

(assert (= (or b!4620161 b!4620164) bm!322137))

(assert (= (or b!4620161 b!4620164) bm!322138))

(assert (= (or b!4620161 b!4620164) bm!322136))

(assert (= (and d!1455037 res!1936561) b!4620162))

(assert (= (and b!4620162 res!1936562) b!4620163))

(declare-fun m!5456127 () Bool)

(assert (=> d!1455037 m!5456127))

(declare-fun m!5456129 () Bool)

(assert (=> d!1455037 m!5456129))

(declare-fun m!5456131 () Bool)

(assert (=> b!4620165 m!5456131))

(declare-fun m!5456133 () Bool)

(assert (=> b!4620164 m!5456133))

(declare-fun m!5456135 () Bool)

(assert (=> b!4620164 m!5456135))

(declare-fun m!5456137 () Bool)

(assert (=> b!4620164 m!5456137))

(declare-fun m!5456139 () Bool)

(assert (=> b!4620164 m!5456139))

(declare-fun m!5456141 () Bool)

(assert (=> b!4620164 m!5456141))

(assert (=> b!4620164 m!5456131))

(declare-fun m!5456143 () Bool)

(assert (=> b!4620164 m!5456143))

(declare-fun m!5456145 () Bool)

(assert (=> b!4620164 m!5456145))

(assert (=> b!4620164 m!5456143))

(declare-fun m!5456147 () Bool)

(assert (=> b!4620164 m!5456147))

(declare-fun m!5456149 () Bool)

(assert (=> b!4620164 m!5456149))

(assert (=> b!4620164 m!5456131))

(declare-fun m!5456151 () Bool)

(assert (=> b!4620164 m!5456151))

(declare-fun m!5456153 () Bool)

(assert (=> bm!322138 m!5456153))

(declare-fun m!5456155 () Bool)

(assert (=> b!4620162 m!5456155))

(declare-fun m!5456157 () Bool)

(assert (=> bm!322136 m!5456157))

(declare-fun m!5456159 () Bool)

(assert (=> b!4620163 m!5456159))

(declare-fun m!5456161 () Bool)

(assert (=> bm!322137 m!5456161))

(assert (=> b!4619927 d!1455037))

(declare-fun d!1455059 () Bool)

(assert (=> d!1455059 (eq!793 (addToMapMapFromBucket!939 (Cons!51458 lt!1775798 lt!1775791) (ListMap!4226 Nil!51458)) (+!1844 (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458)) lt!1775798))))

(declare-fun lt!1776111 () Unit!110820)

(declare-fun choose!31161 (tuple2!52358 List!51582 ListMap!4225) Unit!110820)

(assert (=> d!1455059 (= lt!1776111 (choose!31161 lt!1775798 lt!1775791 (ListMap!4226 Nil!51458)))))

(assert (=> d!1455059 (noDuplicateKeys!1478 lt!1775791)))

(assert (=> d!1455059 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!44 lt!1775798 lt!1775791 (ListMap!4226 Nil!51458)) lt!1776111)))

(declare-fun bs!1019609 () Bool)

(assert (= bs!1019609 d!1455059))

(assert (=> bs!1019609 m!5455809))

(assert (=> bs!1019609 m!5455809))

(assert (=> bs!1019609 m!5455807))

(assert (=> bs!1019609 m!5455811))

(assert (=> bs!1019609 m!5455805))

(assert (=> bs!1019609 m!5455807))

(assert (=> bs!1019609 m!5455909))

(assert (=> bs!1019609 m!5455805))

(declare-fun m!5456199 () Bool)

(assert (=> bs!1019609 m!5456199))

(assert (=> b!4619927 d!1455059))

(declare-fun bs!1019610 () Bool)

(declare-fun b!4620168 () Bool)

(assert (= bs!1019610 (and b!4620168 d!1454995)))

(declare-fun lambda!190553 () Int)

(assert (=> bs!1019610 (not (= lambda!190553 lambda!190459))))

(declare-fun bs!1019611 () Bool)

(assert (= bs!1019611 (and b!4620168 b!4620164)))

(assert (=> bs!1019611 (= lambda!190553 lambda!190547)))

(declare-fun bs!1019612 () Bool)

(assert (= bs!1019612 (and b!4620168 d!1455037)))

(assert (=> bs!1019612 (= (= (ListMap!4226 Nil!51458) lt!1776088) (= lambda!190553 lambda!190551))))

(assert (=> bs!1019611 (= (= (ListMap!4226 Nil!51458) lt!1776103) (= lambda!190553 lambda!190549))))

(declare-fun bs!1019613 () Bool)

(assert (= bs!1019613 (and b!4620168 d!1455011)))

(assert (=> bs!1019613 (not (= lambda!190553 lambda!190460))))

(declare-fun bs!1019614 () Bool)

(assert (= bs!1019614 (and b!4620168 b!4620161)))

(assert (=> bs!1019614 (= lambda!190553 lambda!190546)))

(assert (=> b!4620168 true))

(declare-fun bs!1019615 () Bool)

(declare-fun b!4620171 () Bool)

(assert (= bs!1019615 (and b!4620171 d!1454995)))

(declare-fun lambda!190554 () Int)

(assert (=> bs!1019615 (not (= lambda!190554 lambda!190459))))

(declare-fun bs!1019616 () Bool)

(assert (= bs!1019616 (and b!4620171 b!4620164)))

(assert (=> bs!1019616 (= lambda!190554 lambda!190547)))

(declare-fun bs!1019617 () Bool)

(assert (= bs!1019617 (and b!4620171 b!4620168)))

(assert (=> bs!1019617 (= lambda!190554 lambda!190553)))

(declare-fun bs!1019618 () Bool)

(assert (= bs!1019618 (and b!4620171 d!1455037)))

(assert (=> bs!1019618 (= (= (ListMap!4226 Nil!51458) lt!1776088) (= lambda!190554 lambda!190551))))

(assert (=> bs!1019616 (= (= (ListMap!4226 Nil!51458) lt!1776103) (= lambda!190554 lambda!190549))))

(declare-fun bs!1019620 () Bool)

(assert (= bs!1019620 (and b!4620171 d!1455011)))

(assert (=> bs!1019620 (not (= lambda!190554 lambda!190460))))

(declare-fun bs!1019621 () Bool)

(assert (= bs!1019621 (and b!4620171 b!4620161)))

(assert (=> bs!1019621 (= lambda!190554 lambda!190546)))

(assert (=> b!4620171 true))

(declare-fun lambda!190555 () Int)

(assert (=> bs!1019615 (not (= lambda!190555 lambda!190459))))

(declare-fun lt!1776127 () ListMap!4225)

(assert (=> bs!1019616 (= (= lt!1776127 (ListMap!4226 Nil!51458)) (= lambda!190555 lambda!190547))))

(assert (=> bs!1019617 (= (= lt!1776127 (ListMap!4226 Nil!51458)) (= lambda!190555 lambda!190553))))

(assert (=> bs!1019618 (= (= lt!1776127 lt!1776088) (= lambda!190555 lambda!190551))))

(assert (=> bs!1019616 (= (= lt!1776127 lt!1776103) (= lambda!190555 lambda!190549))))

(assert (=> bs!1019621 (= (= lt!1776127 (ListMap!4226 Nil!51458)) (= lambda!190555 lambda!190546))))

(assert (=> b!4620171 (= (= lt!1776127 (ListMap!4226 Nil!51458)) (= lambda!190555 lambda!190554))))

(assert (=> bs!1019620 (not (= lambda!190555 lambda!190460))))

(assert (=> b!4620171 true))

(declare-fun bs!1019622 () Bool)

(declare-fun d!1455065 () Bool)

(assert (= bs!1019622 (and d!1455065 b!4620171)))

(declare-fun lt!1776112 () ListMap!4225)

(declare-fun lambda!190556 () Int)

(assert (=> bs!1019622 (= (= lt!1776112 lt!1776127) (= lambda!190556 lambda!190555))))

(declare-fun bs!1019623 () Bool)

(assert (= bs!1019623 (and d!1455065 d!1454995)))

(assert (=> bs!1019623 (not (= lambda!190556 lambda!190459))))

(declare-fun bs!1019624 () Bool)

(assert (= bs!1019624 (and d!1455065 b!4620164)))

(assert (=> bs!1019624 (= (= lt!1776112 (ListMap!4226 Nil!51458)) (= lambda!190556 lambda!190547))))

(declare-fun bs!1019625 () Bool)

(assert (= bs!1019625 (and d!1455065 b!4620168)))

(assert (=> bs!1019625 (= (= lt!1776112 (ListMap!4226 Nil!51458)) (= lambda!190556 lambda!190553))))

(declare-fun bs!1019626 () Bool)

(assert (= bs!1019626 (and d!1455065 d!1455037)))

(assert (=> bs!1019626 (= (= lt!1776112 lt!1776088) (= lambda!190556 lambda!190551))))

(assert (=> bs!1019624 (= (= lt!1776112 lt!1776103) (= lambda!190556 lambda!190549))))

(declare-fun bs!1019627 () Bool)

(assert (= bs!1019627 (and d!1455065 b!4620161)))

(assert (=> bs!1019627 (= (= lt!1776112 (ListMap!4226 Nil!51458)) (= lambda!190556 lambda!190546))))

(assert (=> bs!1019622 (= (= lt!1776112 (ListMap!4226 Nil!51458)) (= lambda!190556 lambda!190554))))

(declare-fun bs!1019628 () Bool)

(assert (= bs!1019628 (and d!1455065 d!1455011)))

(assert (=> bs!1019628 (not (= lambda!190556 lambda!190460))))

(assert (=> d!1455065 true))

(declare-fun e!2881910 () Bool)

(assert (=> d!1455065 e!2881910))

(declare-fun res!1936564 () Bool)

(assert (=> d!1455065 (=> (not res!1936564) (not e!2881910))))

(assert (=> d!1455065 (= res!1936564 (forall!10783 lt!1775791 lambda!190556))))

(declare-fun e!2881911 () ListMap!4225)

(assert (=> d!1455065 (= lt!1776112 e!2881911)))

(declare-fun c!790871 () Bool)

(assert (=> d!1455065 (= c!790871 ((_ is Nil!51458) lt!1775791))))

(assert (=> d!1455065 (noDuplicateKeys!1478 lt!1775791)))

(assert (=> d!1455065 (= (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458)) lt!1776112)))

(declare-fun call!322145 () Bool)

(declare-fun bm!322139 () Bool)

(assert (=> bm!322139 (= call!322145 (forall!10783 (ite c!790871 (toList!4921 (ListMap!4226 Nil!51458)) lt!1775791) (ite c!790871 lambda!190553 lambda!190555)))))

(assert (=> b!4620168 (= e!2881911 (ListMap!4226 Nil!51458))))

(declare-fun lt!1776131 () Unit!110820)

(declare-fun call!322146 () Unit!110820)

(assert (=> b!4620168 (= lt!1776131 call!322146)))

(declare-fun call!322144 () Bool)

(assert (=> b!4620168 call!322144))

(declare-fun lt!1776115 () Unit!110820)

(assert (=> b!4620168 (= lt!1776115 lt!1776131)))

(assert (=> b!4620168 call!322145))

(declare-fun lt!1776128 () Unit!110820)

(declare-fun Unit!110860 () Unit!110820)

(assert (=> b!4620168 (= lt!1776128 Unit!110860)))

(declare-fun b!4620169 () Bool)

(declare-fun res!1936565 () Bool)

(assert (=> b!4620169 (=> (not res!1936565) (not e!2881910))))

(assert (=> b!4620169 (= res!1936565 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190556))))

(declare-fun b!4620170 () Bool)

(assert (=> b!4620170 (= e!2881910 (invariantList!1184 (toList!4921 lt!1776112)))))

(declare-fun bm!322140 () Bool)

(assert (=> bm!322140 (= call!322146 (lemmaContainsAllItsOwnKeys!486 (ListMap!4226 Nil!51458)))))

(assert (=> b!4620171 (= e!2881911 lt!1776127)))

(declare-fun lt!1776125 () ListMap!4225)

(assert (=> b!4620171 (= lt!1776125 (+!1844 (ListMap!4226 Nil!51458) (h!57488 lt!1775791)))))

(assert (=> b!4620171 (= lt!1776127 (addToMapMapFromBucket!939 (t!358594 lt!1775791) (+!1844 (ListMap!4226 Nil!51458) (h!57488 lt!1775791))))))

(declare-fun lt!1776113 () Unit!110820)

(assert (=> b!4620171 (= lt!1776113 call!322146)))

(assert (=> b!4620171 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190554)))

(declare-fun lt!1776123 () Unit!110820)

(assert (=> b!4620171 (= lt!1776123 lt!1776113)))

(assert (=> b!4620171 (forall!10783 (toList!4921 lt!1776125) lambda!190555)))

(declare-fun lt!1776124 () Unit!110820)

(declare-fun Unit!110861 () Unit!110820)

(assert (=> b!4620171 (= lt!1776124 Unit!110861)))

(assert (=> b!4620171 (forall!10783 (t!358594 lt!1775791) lambda!190555)))

(declare-fun lt!1776132 () Unit!110820)

(declare-fun Unit!110862 () Unit!110820)

(assert (=> b!4620171 (= lt!1776132 Unit!110862)))

(declare-fun lt!1776118 () Unit!110820)

(declare-fun Unit!110863 () Unit!110820)

(assert (=> b!4620171 (= lt!1776118 Unit!110863)))

(declare-fun lt!1776129 () Unit!110820)

(assert (=> b!4620171 (= lt!1776129 (forallContained!3004 (toList!4921 lt!1776125) lambda!190555 (h!57488 lt!1775791)))))

(assert (=> b!4620171 (contains!14453 lt!1776125 (_1!29473 (h!57488 lt!1775791)))))

(declare-fun lt!1776119 () Unit!110820)

(declare-fun Unit!110864 () Unit!110820)

(assert (=> b!4620171 (= lt!1776119 Unit!110864)))

(assert (=> b!4620171 (contains!14453 lt!1776127 (_1!29473 (h!57488 lt!1775791)))))

(declare-fun lt!1776116 () Unit!110820)

(declare-fun Unit!110865 () Unit!110820)

(assert (=> b!4620171 (= lt!1776116 Unit!110865)))

(assert (=> b!4620171 call!322145))

(declare-fun lt!1776122 () Unit!110820)

(declare-fun Unit!110866 () Unit!110820)

(assert (=> b!4620171 (= lt!1776122 Unit!110866)))

(assert (=> b!4620171 call!322144))

(declare-fun lt!1776126 () Unit!110820)

(declare-fun Unit!110867 () Unit!110820)

(assert (=> b!4620171 (= lt!1776126 Unit!110867)))

(declare-fun lt!1776117 () Unit!110820)

(declare-fun Unit!110868 () Unit!110820)

(assert (=> b!4620171 (= lt!1776117 Unit!110868)))

(declare-fun lt!1776114 () Unit!110820)

(assert (=> b!4620171 (= lt!1776114 (addForallContainsKeyThenBeforeAdding!485 (ListMap!4226 Nil!51458) lt!1776127 (_1!29473 (h!57488 lt!1775791)) (_2!29473 (h!57488 lt!1775791))))))

(assert (=> b!4620171 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190555)))

(declare-fun lt!1776121 () Unit!110820)

(assert (=> b!4620171 (= lt!1776121 lt!1776114)))

(assert (=> b!4620171 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190555)))

(declare-fun lt!1776130 () Unit!110820)

(declare-fun Unit!110872 () Unit!110820)

(assert (=> b!4620171 (= lt!1776130 Unit!110872)))

(declare-fun res!1936563 () Bool)

(assert (=> b!4620171 (= res!1936563 (forall!10783 lt!1775791 lambda!190555))))

(declare-fun e!2881912 () Bool)

(assert (=> b!4620171 (=> (not res!1936563) (not e!2881912))))

(assert (=> b!4620171 e!2881912))

(declare-fun lt!1776120 () Unit!110820)

(declare-fun Unit!110874 () Unit!110820)

(assert (=> b!4620171 (= lt!1776120 Unit!110874)))

(declare-fun b!4620172 () Bool)

(assert (=> b!4620172 (= e!2881912 (forall!10783 (toList!4921 (ListMap!4226 Nil!51458)) lambda!190555))))

(declare-fun bm!322141 () Bool)

(assert (=> bm!322141 (= call!322144 (forall!10783 (ite c!790871 (toList!4921 (ListMap!4226 Nil!51458)) (toList!4921 lt!1776125)) (ite c!790871 lambda!190553 lambda!190555)))))

(assert (= (and d!1455065 c!790871) b!4620168))

(assert (= (and d!1455065 (not c!790871)) b!4620171))

(assert (= (and b!4620171 res!1936563) b!4620172))

(assert (= (or b!4620168 b!4620171) bm!322140))

(assert (= (or b!4620168 b!4620171) bm!322141))

(assert (= (or b!4620168 b!4620171) bm!322139))

(assert (= (and d!1455065 res!1936564) b!4620169))

(assert (= (and b!4620169 res!1936565) b!4620170))

(declare-fun m!5456203 () Bool)

(assert (=> d!1455065 m!5456203))

(assert (=> d!1455065 m!5455909))

(declare-fun m!5456205 () Bool)

(assert (=> b!4620172 m!5456205))

(declare-fun m!5456207 () Bool)

(assert (=> b!4620171 m!5456207))

(declare-fun m!5456209 () Bool)

(assert (=> b!4620171 m!5456209))

(declare-fun m!5456211 () Bool)

(assert (=> b!4620171 m!5456211))

(declare-fun m!5456213 () Bool)

(assert (=> b!4620171 m!5456213))

(declare-fun m!5456215 () Bool)

(assert (=> b!4620171 m!5456215))

(assert (=> b!4620171 m!5456205))

(declare-fun m!5456217 () Bool)

(assert (=> b!4620171 m!5456217))

(declare-fun m!5456219 () Bool)

(assert (=> b!4620171 m!5456219))

(assert (=> b!4620171 m!5456217))

(declare-fun m!5456221 () Bool)

(assert (=> b!4620171 m!5456221))

(declare-fun m!5456223 () Bool)

(assert (=> b!4620171 m!5456223))

(assert (=> b!4620171 m!5456205))

(declare-fun m!5456225 () Bool)

(assert (=> b!4620171 m!5456225))

(declare-fun m!5456227 () Bool)

(assert (=> bm!322141 m!5456227))

(declare-fun m!5456229 () Bool)

(assert (=> b!4620169 m!5456229))

(declare-fun m!5456231 () Bool)

(assert (=> bm!322139 m!5456231))

(declare-fun m!5456233 () Bool)

(assert (=> b!4620170 m!5456233))

(assert (=> bm!322140 m!5456161))

(assert (=> b!4619927 d!1455065))

(declare-fun d!1455069 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8752 (List!51582) (InoxSet tuple2!52358))

(assert (=> d!1455069 (= (eq!793 (addToMapMapFromBucket!939 (Cons!51458 lt!1775798 lt!1775791) (ListMap!4226 Nil!51458)) (+!1844 (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458)) lt!1775798)) (= (content!8752 (toList!4921 (addToMapMapFromBucket!939 (Cons!51458 lt!1775798 lt!1775791) (ListMap!4226 Nil!51458)))) (content!8752 (toList!4921 (+!1844 (addToMapMapFromBucket!939 lt!1775791 (ListMap!4226 Nil!51458)) lt!1775798)))))))

(declare-fun bs!1019629 () Bool)

(assert (= bs!1019629 d!1455069))

(declare-fun m!5456235 () Bool)

(assert (=> bs!1019629 m!5456235))

(declare-fun m!5456237 () Bool)

(assert (=> bs!1019629 m!5456237))

(assert (=> b!4619927 d!1455069))

(declare-fun bs!1019653 () Bool)

(declare-fun d!1455071 () Bool)

(assert (= bs!1019653 (and d!1455071 b!4619923)))

(declare-fun lambda!190564 () Int)

(assert (=> bs!1019653 (= lambda!190564 lambda!190456)))

(declare-fun bs!1019654 () Bool)

(assert (= bs!1019654 (and d!1455071 d!1455013)))

(assert (=> bs!1019654 (= lambda!190564 lambda!190466)))

(assert (=> d!1455071 (contains!14453 (extractMap!1534 (toList!4922 (ListLongMap!3512 lt!1775796))) key!4968)))

(declare-fun lt!1776151 () Unit!110820)

(declare-fun choose!31162 (ListLongMap!3511 K!12845 Hashable!5875) Unit!110820)

(assert (=> d!1455071 (= lt!1776151 (choose!31162 (ListLongMap!3512 lt!1775796) key!4968 hashF!1389))))

(assert (=> d!1455071 (forall!10784 (toList!4922 (ListLongMap!3512 lt!1775796)) lambda!190564)))

(assert (=> d!1455071 (= (lemmaListContainsThenExtractedMapContains!296 (ListLongMap!3512 lt!1775796) key!4968 hashF!1389) lt!1776151)))

(declare-fun bs!1019655 () Bool)

(assert (= bs!1019655 d!1455071))

(declare-fun m!5456279 () Bool)

(assert (=> bs!1019655 m!5456279))

(assert (=> bs!1019655 m!5456279))

(declare-fun m!5456283 () Bool)

(assert (=> bs!1019655 m!5456283))

(declare-fun m!5456285 () Bool)

(assert (=> bs!1019655 m!5456285))

(declare-fun m!5456287 () Bool)

(assert (=> bs!1019655 m!5456287))

(assert (=> b!4619927 d!1455071))

(declare-fun d!1455083 () Bool)

(assert (=> d!1455083 (= (head!9612 oldBucket!40) (h!57488 oldBucket!40))))

(assert (=> b!4619927 d!1455083))

(declare-fun b!4620195 () Bool)

(declare-fun e!2881926 () List!51582)

(assert (=> b!4620195 (= e!2881926 (Cons!51458 (h!57488 oldBucket!40) (removePairForKey!1101 (t!358594 oldBucket!40) key!4968)))))

(declare-fun b!4620196 () Bool)

(assert (=> b!4620196 (= e!2881926 Nil!51458)))

(declare-fun b!4620193 () Bool)

(declare-fun e!2881925 () List!51582)

(assert (=> b!4620193 (= e!2881925 (t!358594 oldBucket!40))))

(declare-fun b!4620194 () Bool)

(assert (=> b!4620194 (= e!2881925 e!2881926)))

(declare-fun c!790878 () Bool)

(assert (=> b!4620194 (= c!790878 ((_ is Cons!51458) oldBucket!40))))

(declare-fun d!1455085 () Bool)

(declare-fun lt!1776152 () List!51582)

(assert (=> d!1455085 (not (containsKey!2378 lt!1776152 key!4968))))

(assert (=> d!1455085 (= lt!1776152 e!2881925)))

(declare-fun c!790879 () Bool)

(assert (=> d!1455085 (= c!790879 (and ((_ is Cons!51458) oldBucket!40) (= (_1!29473 (h!57488 oldBucket!40)) key!4968)))))

(assert (=> d!1455085 (noDuplicateKeys!1478 oldBucket!40)))

(assert (=> d!1455085 (= (removePairForKey!1101 oldBucket!40 key!4968) lt!1776152)))

(assert (= (and d!1455085 c!790879) b!4620193))

(assert (= (and d!1455085 (not c!790879)) b!4620194))

(assert (= (and b!4620194 c!790878) b!4620195))

(assert (= (and b!4620194 (not c!790878)) b!4620196))

(assert (=> b!4620195 m!5455829))

(declare-fun m!5456291 () Bool)

(assert (=> d!1455085 m!5456291))

(assert (=> d!1455085 m!5455827))

(assert (=> b!4619926 d!1455085))

(declare-fun bs!1019658 () Bool)

(declare-fun b!4620198 () Bool)

(assert (= bs!1019658 (and b!4620198 b!4620171)))

(declare-fun lambda!190565 () Int)

(assert (=> bs!1019658 (= (= lt!1775782 lt!1776127) (= lambda!190565 lambda!190555))))

(declare-fun bs!1019659 () Bool)

(assert (= bs!1019659 (and b!4620198 d!1454995)))

(assert (=> bs!1019659 (not (= lambda!190565 lambda!190459))))

(declare-fun bs!1019660 () Bool)

(assert (= bs!1019660 (and b!4620198 b!4620164)))

(assert (=> bs!1019660 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190565 lambda!190547))))

(declare-fun bs!1019661 () Bool)

(assert (= bs!1019661 (and b!4620198 b!4620168)))

(assert (=> bs!1019661 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190565 lambda!190553))))

(declare-fun bs!1019662 () Bool)

(assert (= bs!1019662 (and b!4620198 d!1455037)))

(assert (=> bs!1019662 (= (= lt!1775782 lt!1776088) (= lambda!190565 lambda!190551))))

(assert (=> bs!1019660 (= (= lt!1775782 lt!1776103) (= lambda!190565 lambda!190549))))

(declare-fun bs!1019663 () Bool)

(assert (= bs!1019663 (and b!4620198 b!4620161)))

(assert (=> bs!1019663 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190565 lambda!190546))))

(declare-fun bs!1019664 () Bool)

(assert (= bs!1019664 (and b!4620198 d!1455065)))

(assert (=> bs!1019664 (= (= lt!1775782 lt!1776112) (= lambda!190565 lambda!190556))))

(assert (=> bs!1019658 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190565 lambda!190554))))

(declare-fun bs!1019665 () Bool)

(assert (= bs!1019665 (and b!4620198 d!1455011)))

(assert (=> bs!1019665 (not (= lambda!190565 lambda!190460))))

(assert (=> b!4620198 true))

(declare-fun bs!1019666 () Bool)

(declare-fun b!4620201 () Bool)

(assert (= bs!1019666 (and b!4620201 b!4620171)))

(declare-fun lambda!190566 () Int)

(assert (=> bs!1019666 (= (= lt!1775782 lt!1776127) (= lambda!190566 lambda!190555))))

(declare-fun bs!1019667 () Bool)

(assert (= bs!1019667 (and b!4620201 d!1454995)))

(assert (=> bs!1019667 (not (= lambda!190566 lambda!190459))))

(declare-fun bs!1019668 () Bool)

(assert (= bs!1019668 (and b!4620201 b!4620198)))

(assert (=> bs!1019668 (= lambda!190566 lambda!190565)))

(declare-fun bs!1019669 () Bool)

(assert (= bs!1019669 (and b!4620201 b!4620164)))

(assert (=> bs!1019669 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190566 lambda!190547))))

(declare-fun bs!1019670 () Bool)

(assert (= bs!1019670 (and b!4620201 b!4620168)))

(assert (=> bs!1019670 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190566 lambda!190553))))

(declare-fun bs!1019671 () Bool)

(assert (= bs!1019671 (and b!4620201 d!1455037)))

(assert (=> bs!1019671 (= (= lt!1775782 lt!1776088) (= lambda!190566 lambda!190551))))

(assert (=> bs!1019669 (= (= lt!1775782 lt!1776103) (= lambda!190566 lambda!190549))))

(declare-fun bs!1019672 () Bool)

(assert (= bs!1019672 (and b!4620201 b!4620161)))

(assert (=> bs!1019672 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190566 lambda!190546))))

(declare-fun bs!1019673 () Bool)

(assert (= bs!1019673 (and b!4620201 d!1455065)))

(assert (=> bs!1019673 (= (= lt!1775782 lt!1776112) (= lambda!190566 lambda!190556))))

(assert (=> bs!1019666 (= (= lt!1775782 (ListMap!4226 Nil!51458)) (= lambda!190566 lambda!190554))))

(declare-fun bs!1019674 () Bool)

(assert (= bs!1019674 (and b!4620201 d!1455011)))

(assert (=> bs!1019674 (not (= lambda!190566 lambda!190460))))

(assert (=> b!4620201 true))

(declare-fun lt!1776168 () ListMap!4225)

(declare-fun lambda!190567 () Int)

(assert (=> bs!1019666 (= (= lt!1776168 lt!1776127) (= lambda!190567 lambda!190555))))

(assert (=> bs!1019667 (not (= lambda!190567 lambda!190459))))

(assert (=> bs!1019668 (= (= lt!1776168 lt!1775782) (= lambda!190567 lambda!190565))))

(assert (=> bs!1019669 (= (= lt!1776168 (ListMap!4226 Nil!51458)) (= lambda!190567 lambda!190547))))

(assert (=> bs!1019671 (= (= lt!1776168 lt!1776088) (= lambda!190567 lambda!190551))))

(assert (=> bs!1019669 (= (= lt!1776168 lt!1776103) (= lambda!190567 lambda!190549))))

(assert (=> bs!1019672 (= (= lt!1776168 (ListMap!4226 Nil!51458)) (= lambda!190567 lambda!190546))))

(assert (=> bs!1019673 (= (= lt!1776168 lt!1776112) (= lambda!190567 lambda!190556))))

(assert (=> b!4620201 (= (= lt!1776168 lt!1775782) (= lambda!190567 lambda!190566))))

(assert (=> bs!1019670 (= (= lt!1776168 (ListMap!4226 Nil!51458)) (= lambda!190567 lambda!190553))))

(assert (=> bs!1019666 (= (= lt!1776168 (ListMap!4226 Nil!51458)) (= lambda!190567 lambda!190554))))

(assert (=> bs!1019674 (not (= lambda!190567 lambda!190460))))

(assert (=> b!4620201 true))

(declare-fun bs!1019675 () Bool)

(declare-fun d!1455089 () Bool)

(assert (= bs!1019675 (and d!1455089 b!4620171)))

(declare-fun lt!1776153 () ListMap!4225)

(declare-fun lambda!190568 () Int)

(assert (=> bs!1019675 (= (= lt!1776153 lt!1776127) (= lambda!190568 lambda!190555))))

(declare-fun bs!1019676 () Bool)

(assert (= bs!1019676 (and d!1455089 d!1454995)))

(assert (=> bs!1019676 (not (= lambda!190568 lambda!190459))))

(declare-fun bs!1019677 () Bool)

(assert (= bs!1019677 (and d!1455089 b!4620198)))

(assert (=> bs!1019677 (= (= lt!1776153 lt!1775782) (= lambda!190568 lambda!190565))))

(declare-fun bs!1019678 () Bool)

(assert (= bs!1019678 (and d!1455089 b!4620164)))

(assert (=> bs!1019678 (= (= lt!1776153 (ListMap!4226 Nil!51458)) (= lambda!190568 lambda!190547))))

(declare-fun bs!1019679 () Bool)

(assert (= bs!1019679 (and d!1455089 b!4620201)))

(assert (=> bs!1019679 (= (= lt!1776153 lt!1776168) (= lambda!190568 lambda!190567))))

(declare-fun bs!1019680 () Bool)

(assert (= bs!1019680 (and d!1455089 d!1455037)))

(assert (=> bs!1019680 (= (= lt!1776153 lt!1776088) (= lambda!190568 lambda!190551))))

(assert (=> bs!1019678 (= (= lt!1776153 lt!1776103) (= lambda!190568 lambda!190549))))

(declare-fun bs!1019681 () Bool)

(assert (= bs!1019681 (and d!1455089 b!4620161)))

(assert (=> bs!1019681 (= (= lt!1776153 (ListMap!4226 Nil!51458)) (= lambda!190568 lambda!190546))))

(declare-fun bs!1019682 () Bool)

(assert (= bs!1019682 (and d!1455089 d!1455065)))

(assert (=> bs!1019682 (= (= lt!1776153 lt!1776112) (= lambda!190568 lambda!190556))))

(assert (=> bs!1019679 (= (= lt!1776153 lt!1775782) (= lambda!190568 lambda!190566))))

(declare-fun bs!1019683 () Bool)

(assert (= bs!1019683 (and d!1455089 b!4620168)))

(assert (=> bs!1019683 (= (= lt!1776153 (ListMap!4226 Nil!51458)) (= lambda!190568 lambda!190553))))

(assert (=> bs!1019675 (= (= lt!1776153 (ListMap!4226 Nil!51458)) (= lambda!190568 lambda!190554))))

(declare-fun bs!1019684 () Bool)

(assert (= bs!1019684 (and d!1455089 d!1455011)))

(assert (=> bs!1019684 (not (= lambda!190568 lambda!190460))))

(assert (=> d!1455089 true))

(declare-fun e!2881928 () Bool)

(assert (=> d!1455089 e!2881928))

(declare-fun res!1936570 () Bool)

(assert (=> d!1455089 (=> (not res!1936570) (not e!2881928))))

(assert (=> d!1455089 (= res!1936570 (forall!10783 oldBucket!40 lambda!190568))))

(declare-fun e!2881929 () ListMap!4225)

(assert (=> d!1455089 (= lt!1776153 e!2881929)))

(declare-fun c!790880 () Bool)

(assert (=> d!1455089 (= c!790880 ((_ is Nil!51458) oldBucket!40))))

(assert (=> d!1455089 (noDuplicateKeys!1478 oldBucket!40)))

(assert (=> d!1455089 (= (addToMapMapFromBucket!939 oldBucket!40 lt!1775782) lt!1776153)))

(declare-fun bm!322143 () Bool)

(declare-fun call!322149 () Bool)

(assert (=> bm!322143 (= call!322149 (forall!10783 (ite c!790880 (toList!4921 lt!1775782) oldBucket!40) (ite c!790880 lambda!190565 lambda!190567)))))

(assert (=> b!4620198 (= e!2881929 lt!1775782)))

(declare-fun lt!1776172 () Unit!110820)

(declare-fun call!322150 () Unit!110820)

(assert (=> b!4620198 (= lt!1776172 call!322150)))

(declare-fun call!322148 () Bool)

(assert (=> b!4620198 call!322148))

(declare-fun lt!1776156 () Unit!110820)

(assert (=> b!4620198 (= lt!1776156 lt!1776172)))

(assert (=> b!4620198 call!322149))

(declare-fun lt!1776169 () Unit!110820)

(declare-fun Unit!110884 () Unit!110820)

(assert (=> b!4620198 (= lt!1776169 Unit!110884)))

(declare-fun b!4620199 () Bool)

(declare-fun res!1936571 () Bool)

(assert (=> b!4620199 (=> (not res!1936571) (not e!2881928))))

(assert (=> b!4620199 (= res!1936571 (forall!10783 (toList!4921 lt!1775782) lambda!190568))))

(declare-fun b!4620200 () Bool)

(assert (=> b!4620200 (= e!2881928 (invariantList!1184 (toList!4921 lt!1776153)))))

(declare-fun bm!322144 () Bool)

(assert (=> bm!322144 (= call!322150 (lemmaContainsAllItsOwnKeys!486 lt!1775782))))

(assert (=> b!4620201 (= e!2881929 lt!1776168)))

(declare-fun lt!1776166 () ListMap!4225)

(assert (=> b!4620201 (= lt!1776166 (+!1844 lt!1775782 (h!57488 oldBucket!40)))))

(assert (=> b!4620201 (= lt!1776168 (addToMapMapFromBucket!939 (t!358594 oldBucket!40) (+!1844 lt!1775782 (h!57488 oldBucket!40))))))

(declare-fun lt!1776154 () Unit!110820)

(assert (=> b!4620201 (= lt!1776154 call!322150)))

(assert (=> b!4620201 (forall!10783 (toList!4921 lt!1775782) lambda!190566)))

(declare-fun lt!1776164 () Unit!110820)

(assert (=> b!4620201 (= lt!1776164 lt!1776154)))

(assert (=> b!4620201 (forall!10783 (toList!4921 lt!1776166) lambda!190567)))

(declare-fun lt!1776165 () Unit!110820)

(declare-fun Unit!110885 () Unit!110820)

(assert (=> b!4620201 (= lt!1776165 Unit!110885)))

(assert (=> b!4620201 (forall!10783 (t!358594 oldBucket!40) lambda!190567)))

(declare-fun lt!1776173 () Unit!110820)

(declare-fun Unit!110886 () Unit!110820)

(assert (=> b!4620201 (= lt!1776173 Unit!110886)))

(declare-fun lt!1776159 () Unit!110820)

(declare-fun Unit!110887 () Unit!110820)

(assert (=> b!4620201 (= lt!1776159 Unit!110887)))

(declare-fun lt!1776170 () Unit!110820)

(assert (=> b!4620201 (= lt!1776170 (forallContained!3004 (toList!4921 lt!1776166) lambda!190567 (h!57488 oldBucket!40)))))

(assert (=> b!4620201 (contains!14453 lt!1776166 (_1!29473 (h!57488 oldBucket!40)))))

(declare-fun lt!1776160 () Unit!110820)

(declare-fun Unit!110888 () Unit!110820)

(assert (=> b!4620201 (= lt!1776160 Unit!110888)))

(assert (=> b!4620201 (contains!14453 lt!1776168 (_1!29473 (h!57488 oldBucket!40)))))

(declare-fun lt!1776157 () Unit!110820)

(declare-fun Unit!110889 () Unit!110820)

(assert (=> b!4620201 (= lt!1776157 Unit!110889)))

(assert (=> b!4620201 call!322149))

(declare-fun lt!1776163 () Unit!110820)

(declare-fun Unit!110890 () Unit!110820)

(assert (=> b!4620201 (= lt!1776163 Unit!110890)))

(assert (=> b!4620201 call!322148))

(declare-fun lt!1776167 () Unit!110820)

(declare-fun Unit!110891 () Unit!110820)

(assert (=> b!4620201 (= lt!1776167 Unit!110891)))

(declare-fun lt!1776158 () Unit!110820)

(declare-fun Unit!110892 () Unit!110820)

(assert (=> b!4620201 (= lt!1776158 Unit!110892)))

(declare-fun lt!1776155 () Unit!110820)

(assert (=> b!4620201 (= lt!1776155 (addForallContainsKeyThenBeforeAdding!485 lt!1775782 lt!1776168 (_1!29473 (h!57488 oldBucket!40)) (_2!29473 (h!57488 oldBucket!40))))))

(assert (=> b!4620201 (forall!10783 (toList!4921 lt!1775782) lambda!190567)))

(declare-fun lt!1776162 () Unit!110820)

(assert (=> b!4620201 (= lt!1776162 lt!1776155)))

(assert (=> b!4620201 (forall!10783 (toList!4921 lt!1775782) lambda!190567)))

(declare-fun lt!1776171 () Unit!110820)

(declare-fun Unit!110893 () Unit!110820)

(assert (=> b!4620201 (= lt!1776171 Unit!110893)))

(declare-fun res!1936569 () Bool)

(assert (=> b!4620201 (= res!1936569 (forall!10783 oldBucket!40 lambda!190567))))

(declare-fun e!2881930 () Bool)

(assert (=> b!4620201 (=> (not res!1936569) (not e!2881930))))

(assert (=> b!4620201 e!2881930))

(declare-fun lt!1776161 () Unit!110820)

(declare-fun Unit!110894 () Unit!110820)

(assert (=> b!4620201 (= lt!1776161 Unit!110894)))

(declare-fun b!4620202 () Bool)

(assert (=> b!4620202 (= e!2881930 (forall!10783 (toList!4921 lt!1775782) lambda!190567))))

(declare-fun bm!322145 () Bool)

(assert (=> bm!322145 (= call!322148 (forall!10783 (ite c!790880 (toList!4921 lt!1775782) (toList!4921 lt!1776166)) (ite c!790880 lambda!190565 lambda!190567)))))

(assert (= (and d!1455089 c!790880) b!4620198))

(assert (= (and d!1455089 (not c!790880)) b!4620201))

(assert (= (and b!4620201 res!1936569) b!4620202))

(assert (= (or b!4620198 b!4620201) bm!322144))

(assert (= (or b!4620198 b!4620201) bm!322145))

(assert (= (or b!4620198 b!4620201) bm!322143))

(assert (= (and d!1455089 res!1936570) b!4620199))

(assert (= (and b!4620199 res!1936571) b!4620200))

(declare-fun m!5456293 () Bool)

(assert (=> d!1455089 m!5456293))

(assert (=> d!1455089 m!5455827))

(declare-fun m!5456295 () Bool)

(assert (=> b!4620202 m!5456295))

(declare-fun m!5456297 () Bool)

(assert (=> b!4620201 m!5456297))

(declare-fun m!5456299 () Bool)

(assert (=> b!4620201 m!5456299))

(declare-fun m!5456301 () Bool)

(assert (=> b!4620201 m!5456301))

(declare-fun m!5456303 () Bool)

(assert (=> b!4620201 m!5456303))

(declare-fun m!5456305 () Bool)

(assert (=> b!4620201 m!5456305))

(assert (=> b!4620201 m!5456295))

(declare-fun m!5456307 () Bool)

(assert (=> b!4620201 m!5456307))

(declare-fun m!5456309 () Bool)

(assert (=> b!4620201 m!5456309))

(assert (=> b!4620201 m!5456307))

(declare-fun m!5456311 () Bool)

(assert (=> b!4620201 m!5456311))

(declare-fun m!5456313 () Bool)

(assert (=> b!4620201 m!5456313))

(assert (=> b!4620201 m!5456295))

(declare-fun m!5456315 () Bool)

(assert (=> b!4620201 m!5456315))

(declare-fun m!5456317 () Bool)

(assert (=> bm!322145 m!5456317))

(declare-fun m!5456319 () Bool)

(assert (=> b!4620199 m!5456319))

(declare-fun m!5456321 () Bool)

(assert (=> bm!322143 m!5456321))

(declare-fun m!5456323 () Bool)

(assert (=> b!4620200 m!5456323))

(declare-fun m!5456325 () Bool)

(assert (=> bm!322144 m!5456325))

(assert (=> b!4619928 d!1455089))

(declare-fun bs!1019685 () Bool)

(declare-fun d!1455091 () Bool)

(assert (= bs!1019685 (and d!1455091 b!4619923)))

(declare-fun lambda!190569 () Int)

(assert (=> bs!1019685 (= lambda!190569 lambda!190456)))

(declare-fun bs!1019686 () Bool)

(assert (= bs!1019686 (and d!1455091 d!1455013)))

(assert (=> bs!1019686 (= lambda!190569 lambda!190466)))

(declare-fun bs!1019687 () Bool)

(assert (= bs!1019687 (and d!1455091 d!1455071)))

(assert (=> bs!1019687 (= lambda!190569 lambda!190564)))

(declare-fun lt!1776174 () ListMap!4225)

(assert (=> d!1455091 (invariantList!1184 (toList!4921 lt!1776174))))

(declare-fun e!2881931 () ListMap!4225)

(assert (=> d!1455091 (= lt!1776174 e!2881931)))

(declare-fun c!790881 () Bool)

(assert (=> d!1455091 (= c!790881 ((_ is Cons!51459) Nil!51459))))

(assert (=> d!1455091 (forall!10784 Nil!51459 lambda!190569)))

(assert (=> d!1455091 (= (extractMap!1534 Nil!51459) lt!1776174)))

(declare-fun b!4620203 () Bool)

(assert (=> b!4620203 (= e!2881931 (addToMapMapFromBucket!939 (_2!29474 (h!57489 Nil!51459)) (extractMap!1534 (t!358595 Nil!51459))))))

(declare-fun b!4620204 () Bool)

(assert (=> b!4620204 (= e!2881931 (ListMap!4226 Nil!51458))))

(assert (= (and d!1455091 c!790881) b!4620203))

(assert (= (and d!1455091 (not c!790881)) b!4620204))

(declare-fun m!5456327 () Bool)

(assert (=> d!1455091 m!5456327))

(declare-fun m!5456329 () Bool)

(assert (=> d!1455091 m!5456329))

(declare-fun m!5456331 () Bool)

(assert (=> b!4620203 m!5456331))

(assert (=> b!4620203 m!5456331))

(declare-fun m!5456333 () Bool)

(assert (=> b!4620203 m!5456333))

(assert (=> b!4619928 d!1455091))

(declare-fun d!1455093 () Bool)

(declare-fun res!1936576 () Bool)

(declare-fun e!2881936 () Bool)

(assert (=> d!1455093 (=> res!1936576 e!2881936)))

(assert (=> d!1455093 (= res!1936576 (not ((_ is Cons!51458) oldBucket!40)))))

(assert (=> d!1455093 (= (noDuplicateKeys!1478 oldBucket!40) e!2881936)))

(declare-fun b!4620209 () Bool)

(declare-fun e!2881937 () Bool)

(assert (=> b!4620209 (= e!2881936 e!2881937)))

(declare-fun res!1936577 () Bool)

(assert (=> b!4620209 (=> (not res!1936577) (not e!2881937))))

(assert (=> b!4620209 (= res!1936577 (not (containsKey!2378 (t!358594 oldBucket!40) (_1!29473 (h!57488 oldBucket!40)))))))

(declare-fun b!4620210 () Bool)

(assert (=> b!4620210 (= e!2881937 (noDuplicateKeys!1478 (t!358594 oldBucket!40)))))

(assert (= (and d!1455093 (not res!1936576)) b!4620209))

(assert (= (and b!4620209 res!1936577) b!4620210))

(declare-fun m!5456335 () Bool)

(assert (=> b!4620209 m!5456335))

(assert (=> b!4620210 m!5455889))

(assert (=> start!462480 d!1455093))

(declare-fun d!1455095 () Bool)

(declare-fun res!1936578 () Bool)

(declare-fun e!2881938 () Bool)

(assert (=> d!1455095 (=> res!1936578 e!2881938)))

(assert (=> d!1455095 (= res!1936578 (not ((_ is Cons!51458) newBucket!224)))))

(assert (=> d!1455095 (= (noDuplicateKeys!1478 newBucket!224) e!2881938)))

(declare-fun b!4620211 () Bool)

(declare-fun e!2881939 () Bool)

(assert (=> b!4620211 (= e!2881938 e!2881939)))

(declare-fun res!1936579 () Bool)

(assert (=> b!4620211 (=> (not res!1936579) (not e!2881939))))

(assert (=> b!4620211 (= res!1936579 (not (containsKey!2378 (t!358594 newBucket!224) (_1!29473 (h!57488 newBucket!224)))))))

(declare-fun b!4620212 () Bool)

(assert (=> b!4620212 (= e!2881939 (noDuplicateKeys!1478 (t!358594 newBucket!224)))))

(assert (= (and d!1455095 (not res!1936578)) b!4620211))

(assert (= (and b!4620211 res!1936579) b!4620212))

(declare-fun m!5456337 () Bool)

(assert (=> b!4620211 m!5456337))

(declare-fun m!5456339 () Bool)

(assert (=> b!4620212 m!5456339))

(assert (=> b!4619932 d!1455095))

(declare-fun d!1455097 () Bool)

(declare-fun hash!3450 (Hashable!5875 K!12845) (_ BitVec 64))

(assert (=> d!1455097 (= (hash!3448 hashF!1389 key!4968) (hash!3450 hashF!1389 key!4968))))

(declare-fun bs!1019688 () Bool)

(assert (= bs!1019688 d!1455097))

(declare-fun m!5456341 () Bool)

(assert (=> bs!1019688 m!5456341))

(assert (=> b!4619921 d!1455097))

(declare-fun d!1455099 () Bool)

(declare-fun dynLambda!21478 (Int tuple2!52360) Bool)

(assert (=> d!1455099 (dynLambda!21478 lambda!190456 lt!1775787)))

(declare-fun lt!1776177 () Unit!110820)

(declare-fun choose!31165 (List!51583 Int tuple2!52360) Unit!110820)

(assert (=> d!1455099 (= lt!1776177 (choose!31165 lt!1775783 lambda!190456 lt!1775787))))

(declare-fun e!2881942 () Bool)

(assert (=> d!1455099 e!2881942))

(declare-fun res!1936582 () Bool)

(assert (=> d!1455099 (=> (not res!1936582) (not e!2881942))))

(assert (=> d!1455099 (= res!1936582 (forall!10784 lt!1775783 lambda!190456))))

(assert (=> d!1455099 (= (forallContained!3002 lt!1775783 lambda!190456 lt!1775787) lt!1776177)))

(declare-fun b!4620215 () Bool)

(assert (=> b!4620215 (= e!2881942 (contains!14454 lt!1775783 lt!1775787))))

(assert (= (and d!1455099 res!1936582) b!4620215))

(declare-fun b_lambda!170609 () Bool)

(assert (=> (not b_lambda!170609) (not d!1455099)))

(declare-fun m!5456343 () Bool)

(assert (=> d!1455099 m!5456343))

(declare-fun m!5456345 () Bool)

(assert (=> d!1455099 m!5456345))

(declare-fun m!5456347 () Bool)

(assert (=> d!1455099 m!5456347))

(assert (=> b!4620215 m!5455843))

(assert (=> b!4619923 d!1455099))

(declare-fun b!4620232 () Bool)

(declare-fun e!2881955 () Bool)

(declare-fun lt!1776180 () Option!11520)

(declare-fun get!17023 (Option!11520) tuple2!52358)

(assert (=> b!4620232 (= e!2881955 (contains!14458 lt!1775795 (get!17023 lt!1776180)))))

(declare-fun d!1455101 () Bool)

(declare-fun e!2881953 () Bool)

(assert (=> d!1455101 e!2881953))

(declare-fun res!1936593 () Bool)

(assert (=> d!1455101 (=> res!1936593 e!2881953)))

(declare-fun e!2881954 () Bool)

(assert (=> d!1455101 (= res!1936593 e!2881954)))

(declare-fun res!1936591 () Bool)

(assert (=> d!1455101 (=> (not res!1936591) (not e!2881954))))

(declare-fun isEmpty!28910 (Option!11520) Bool)

(assert (=> d!1455101 (= res!1936591 (isEmpty!28910 lt!1776180))))

(declare-fun e!2881956 () Option!11520)

(assert (=> d!1455101 (= lt!1776180 e!2881956)))

(declare-fun c!790887 () Bool)

(assert (=> d!1455101 (= c!790887 (and ((_ is Cons!51458) lt!1775795) (= (_1!29473 (h!57488 lt!1775795)) key!4968)))))

(assert (=> d!1455101 (noDuplicateKeys!1478 lt!1775795)))

(assert (=> d!1455101 (= (getPair!270 lt!1775795 key!4968) lt!1776180)))

(declare-fun b!4620233 () Bool)

(declare-fun res!1936592 () Bool)

(assert (=> b!4620233 (=> (not res!1936592) (not e!2881955))))

(assert (=> b!4620233 (= res!1936592 (= (_1!29473 (get!17023 lt!1776180)) key!4968))))

(declare-fun b!4620234 () Bool)

(assert (=> b!4620234 (= e!2881956 (Some!11519 (h!57488 lt!1775795)))))

(declare-fun b!4620235 () Bool)

(declare-fun e!2881957 () Option!11520)

(assert (=> b!4620235 (= e!2881956 e!2881957)))

(declare-fun c!790886 () Bool)

(assert (=> b!4620235 (= c!790886 ((_ is Cons!51458) lt!1775795))))

(declare-fun b!4620236 () Bool)

(assert (=> b!4620236 (= e!2881953 e!2881955)))

(declare-fun res!1936594 () Bool)

(assert (=> b!4620236 (=> (not res!1936594) (not e!2881955))))

(assert (=> b!4620236 (= res!1936594 (isDefined!8785 lt!1776180))))

(declare-fun b!4620237 () Bool)

(assert (=> b!4620237 (= e!2881957 (getPair!270 (t!358594 lt!1775795) key!4968))))

(declare-fun b!4620238 () Bool)

(assert (=> b!4620238 (= e!2881954 (not (containsKey!2378 lt!1775795 key!4968)))))

(declare-fun b!4620239 () Bool)

(assert (=> b!4620239 (= e!2881957 None!11519)))

(assert (= (and d!1455101 c!790887) b!4620234))

(assert (= (and d!1455101 (not c!790887)) b!4620235))

(assert (= (and b!4620235 c!790886) b!4620237))

(assert (= (and b!4620235 (not c!790886)) b!4620239))

(assert (= (and d!1455101 res!1936591) b!4620238))

(assert (= (and d!1455101 (not res!1936593)) b!4620236))

(assert (= (and b!4620236 res!1936594) b!4620233))

(assert (= (and b!4620233 res!1936592) b!4620232))

(declare-fun m!5456349 () Bool)

(assert (=> b!4620237 m!5456349))

(declare-fun m!5456351 () Bool)

(assert (=> b!4620238 m!5456351))

(declare-fun m!5456353 () Bool)

(assert (=> d!1455101 m!5456353))

(declare-fun m!5456355 () Bool)

(assert (=> d!1455101 m!5456355))

(declare-fun m!5456357 () Bool)

(assert (=> b!4620232 m!5456357))

(assert (=> b!4620232 m!5456357))

(declare-fun m!5456359 () Bool)

(assert (=> b!4620232 m!5456359))

(assert (=> b!4620233 m!5456357))

(declare-fun m!5456361 () Bool)

(assert (=> b!4620236 m!5456361))

(assert (=> b!4619923 d!1455101))

(declare-fun d!1455103 () Bool)

(assert (=> d!1455103 (contains!14454 (toList!4922 lt!1775784) (tuple2!52361 lt!1775785 lt!1775795))))

(declare-fun lt!1776183 () Unit!110820)

(declare-fun choose!31166 (ListLongMap!3511 (_ BitVec 64) List!51582) Unit!110820)

(assert (=> d!1455103 (= lt!1776183 (choose!31166 lt!1775784 lt!1775785 lt!1775795))))

(assert (=> d!1455103 (contains!14455 lt!1775784 lt!1775785)))

(assert (=> d!1455103 (= (lemmaGetValueImpliesTupleContained!75 lt!1775784 lt!1775785 lt!1775795) lt!1776183)))

(declare-fun bs!1019689 () Bool)

(assert (= bs!1019689 d!1455103))

(declare-fun m!5456363 () Bool)

(assert (=> bs!1019689 m!5456363))

(declare-fun m!5456365 () Bool)

(assert (=> bs!1019689 m!5456365))

(assert (=> bs!1019689 m!5455853))

(assert (=> b!4619923 d!1455103))

(declare-fun d!1455105 () Bool)

(declare-fun res!1936599 () Bool)

(declare-fun e!2881962 () Bool)

(assert (=> d!1455105 (=> res!1936599 e!2881962)))

(assert (=> d!1455105 (= res!1936599 (and ((_ is Cons!51458) (t!358594 oldBucket!40)) (= (_1!29473 (h!57488 (t!358594 oldBucket!40))) key!4968)))))

(assert (=> d!1455105 (= (containsKey!2378 (t!358594 oldBucket!40) key!4968) e!2881962)))

(declare-fun b!4620245 () Bool)

(declare-fun e!2881963 () Bool)

(assert (=> b!4620245 (= e!2881962 e!2881963)))

(declare-fun res!1936600 () Bool)

(assert (=> b!4620245 (=> (not res!1936600) (not e!2881963))))

(assert (=> b!4620245 (= res!1936600 ((_ is Cons!51458) (t!358594 oldBucket!40)))))

(declare-fun b!4620246 () Bool)

(assert (=> b!4620246 (= e!2881963 (containsKey!2378 (t!358594 (t!358594 oldBucket!40)) key!4968))))

(assert (= (and d!1455105 (not res!1936599)) b!4620245))

(assert (= (and b!4620245 res!1936600) b!4620246))

(declare-fun m!5456367 () Bool)

(assert (=> b!4620246 m!5456367))

(assert (=> b!4619923 d!1455105))

(declare-fun bs!1019690 () Bool)

(declare-fun d!1455107 () Bool)

(assert (= bs!1019690 (and d!1455107 b!4619923)))

(declare-fun lambda!190572 () Int)

(assert (=> bs!1019690 (= lambda!190572 lambda!190456)))

(declare-fun bs!1019691 () Bool)

(assert (= bs!1019691 (and d!1455107 d!1455013)))

(assert (=> bs!1019691 (= lambda!190572 lambda!190466)))

(declare-fun bs!1019692 () Bool)

(assert (= bs!1019692 (and d!1455107 d!1455071)))

(assert (=> bs!1019692 (= lambda!190572 lambda!190564)))

(declare-fun bs!1019693 () Bool)

(assert (= bs!1019693 (and d!1455107 d!1455091)))

(assert (=> bs!1019693 (= lambda!190572 lambda!190569)))

(assert (=> d!1455107 (contains!14455 lt!1775784 (hash!3448 hashF!1389 key!4968))))

(declare-fun lt!1776186 () Unit!110820)

(declare-fun choose!31167 (ListLongMap!3511 K!12845 Hashable!5875) Unit!110820)

(assert (=> d!1455107 (= lt!1776186 (choose!31167 lt!1775784 key!4968 hashF!1389))))

(assert (=> d!1455107 (forall!10784 (toList!4922 lt!1775784) lambda!190572)))

(assert (=> d!1455107 (= (lemmaInGenMapThenLongMapContainsHash!476 lt!1775784 key!4968 hashF!1389) lt!1776186)))

(declare-fun bs!1019694 () Bool)

(assert (= bs!1019694 d!1455107))

(assert (=> bs!1019694 m!5455813))

(assert (=> bs!1019694 m!5455813))

(declare-fun m!5456369 () Bool)

(assert (=> bs!1019694 m!5456369))

(declare-fun m!5456371 () Bool)

(assert (=> bs!1019694 m!5456371))

(declare-fun m!5456373 () Bool)

(assert (=> bs!1019694 m!5456373))

(assert (=> b!4619923 d!1455107))

(declare-fun d!1455109 () Bool)

(declare-datatypes ((Option!11524 0))(
  ( (None!11523) (Some!11523 (v!45613 List!51582)) )
))
(declare-fun get!17024 (Option!11524) List!51582)

(declare-fun getValueByKey!1412 (List!51583 (_ BitVec 64)) Option!11524)

(assert (=> d!1455109 (= (apply!12143 lt!1775784 lt!1775785) (get!17024 (getValueByKey!1412 (toList!4922 lt!1775784) lt!1775785)))))

(declare-fun bs!1019695 () Bool)

(assert (= bs!1019695 d!1455109))

(declare-fun m!5456375 () Bool)

(assert (=> bs!1019695 m!5456375))

(assert (=> bs!1019695 m!5456375))

(declare-fun m!5456377 () Bool)

(assert (=> bs!1019695 m!5456377))

(assert (=> b!4619923 d!1455109))

(declare-fun d!1455111 () Bool)

(declare-fun res!1936601 () Bool)

(declare-fun e!2881964 () Bool)

(assert (=> d!1455111 (=> res!1936601 e!2881964)))

(assert (=> d!1455111 (= res!1936601 (and ((_ is Cons!51458) oldBucket!40) (= (_1!29473 (h!57488 oldBucket!40)) key!4968)))))

(assert (=> d!1455111 (= (containsKey!2378 oldBucket!40 key!4968) e!2881964)))

(declare-fun b!4620247 () Bool)

(declare-fun e!2881965 () Bool)

(assert (=> b!4620247 (= e!2881964 e!2881965)))

(declare-fun res!1936602 () Bool)

(assert (=> b!4620247 (=> (not res!1936602) (not e!2881965))))

(assert (=> b!4620247 (= res!1936602 ((_ is Cons!51458) oldBucket!40))))

(declare-fun b!4620248 () Bool)

(assert (=> b!4620248 (= e!2881965 (containsKey!2378 (t!358594 oldBucket!40) key!4968))))

(assert (= (and d!1455111 (not res!1936601)) b!4620247))

(assert (= (and b!4620247 res!1936602) b!4620248))

(assert (=> b!4620248 m!5455845))

(assert (=> b!4619923 d!1455111))

(declare-fun d!1455113 () Bool)

(declare-fun lt!1776189 () Bool)

(declare-fun content!8754 (List!51583) (InoxSet tuple2!52360))

(assert (=> d!1455113 (= lt!1776189 (select (content!8754 lt!1775783) lt!1775787))))

(declare-fun e!2881971 () Bool)

(assert (=> d!1455113 (= lt!1776189 e!2881971)))

(declare-fun res!1936608 () Bool)

(assert (=> d!1455113 (=> (not res!1936608) (not e!2881971))))

(assert (=> d!1455113 (= res!1936608 ((_ is Cons!51459) lt!1775783))))

(assert (=> d!1455113 (= (contains!14454 lt!1775783 lt!1775787) lt!1776189)))

(declare-fun b!4620253 () Bool)

(declare-fun e!2881970 () Bool)

(assert (=> b!4620253 (= e!2881971 e!2881970)))

(declare-fun res!1936607 () Bool)

(assert (=> b!4620253 (=> res!1936607 e!2881970)))

(assert (=> b!4620253 (= res!1936607 (= (h!57489 lt!1775783) lt!1775787))))

(declare-fun b!4620254 () Bool)

(assert (=> b!4620254 (= e!2881970 (contains!14454 (t!358595 lt!1775783) lt!1775787))))

(assert (= (and d!1455113 res!1936608) b!4620253))

(assert (= (and b!4620253 (not res!1936607)) b!4620254))

(declare-fun m!5456379 () Bool)

(assert (=> d!1455113 m!5456379))

(declare-fun m!5456381 () Bool)

(assert (=> d!1455113 m!5456381))

(declare-fun m!5456383 () Bool)

(assert (=> b!4620254 m!5456383))

(assert (=> b!4619923 d!1455113))

(declare-fun bs!1019696 () Bool)

(declare-fun d!1455115 () Bool)

(assert (= bs!1019696 (and d!1455115 d!1455013)))

(declare-fun lambda!190579 () Int)

(assert (=> bs!1019696 (= lambda!190579 lambda!190466)))

(declare-fun bs!1019697 () Bool)

(assert (= bs!1019697 (and d!1455115 b!4619923)))

(assert (=> bs!1019697 (= lambda!190579 lambda!190456)))

(declare-fun bs!1019698 () Bool)

(assert (= bs!1019698 (and d!1455115 d!1455091)))

(assert (=> bs!1019698 (= lambda!190579 lambda!190569)))

(declare-fun bs!1019699 () Bool)

(assert (= bs!1019699 (and d!1455115 d!1455071)))

(assert (=> bs!1019699 (= lambda!190579 lambda!190564)))

(declare-fun bs!1019700 () Bool)

(assert (= bs!1019700 (and d!1455115 d!1455107)))

(assert (=> bs!1019700 (= lambda!190579 lambda!190572)))

(declare-fun b!4620263 () Bool)

(declare-fun res!1936618 () Bool)

(declare-fun e!2881977 () Bool)

(assert (=> b!4620263 (=> (not res!1936618) (not e!2881977))))

(declare-fun allKeysSameHashInMap!1510 (ListLongMap!3511 Hashable!5875) Bool)

(assert (=> b!4620263 (= res!1936618 (allKeysSameHashInMap!1510 lt!1775784 hashF!1389))))

(assert (=> d!1455115 e!2881977))

(declare-fun res!1936620 () Bool)

(assert (=> d!1455115 (=> (not res!1936620) (not e!2881977))))

(assert (=> d!1455115 (= res!1936620 (forall!10784 (toList!4922 lt!1775784) lambda!190579))))

(declare-fun lt!1776208 () Unit!110820)

(declare-fun choose!31168 (ListLongMap!3511 K!12845 Hashable!5875) Unit!110820)

(assert (=> d!1455115 (= lt!1776208 (choose!31168 lt!1775784 key!4968 hashF!1389))))

(assert (=> d!1455115 (forall!10784 (toList!4922 lt!1775784) lambda!190579)))

(assert (=> d!1455115 (= (lemmaInGenMapThenGetPairDefined!66 lt!1775784 key!4968 hashF!1389) lt!1776208)))

(declare-fun e!2881976 () Bool)

(declare-fun lt!1776212 () (_ BitVec 64))

(declare-fun b!4620266 () Bool)

(declare-fun lt!1776207 () List!51582)

(assert (=> b!4620266 (= e!2881976 (= (getValueByKey!1412 (toList!4922 lt!1775784) lt!1776212) (Some!11523 lt!1776207)))))

(declare-fun b!4620264 () Bool)

(declare-fun res!1936619 () Bool)

(assert (=> b!4620264 (=> (not res!1936619) (not e!2881977))))

(assert (=> b!4620264 (= res!1936619 (contains!14453 (extractMap!1534 (toList!4922 lt!1775784)) key!4968))))

(declare-fun b!4620265 () Bool)

(assert (=> b!4620265 (= e!2881977 (isDefined!8785 (getPair!270 (apply!12143 lt!1775784 (hash!3448 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1776206 () Unit!110820)

(assert (=> b!4620265 (= lt!1776206 (forallContained!3002 (toList!4922 lt!1775784) lambda!190579 (tuple2!52361 (hash!3448 hashF!1389 key!4968) (apply!12143 lt!1775784 (hash!3448 hashF!1389 key!4968)))))))

(declare-fun lt!1776213 () Unit!110820)

(declare-fun lt!1776211 () Unit!110820)

(assert (=> b!4620265 (= lt!1776213 lt!1776211)))

(assert (=> b!4620265 (contains!14454 (toList!4922 lt!1775784) (tuple2!52361 lt!1776212 lt!1776207))))

(assert (=> b!4620265 (= lt!1776211 (lemmaGetValueImpliesTupleContained!75 lt!1775784 lt!1776212 lt!1776207))))

(assert (=> b!4620265 e!2881976))

(declare-fun res!1936617 () Bool)

(assert (=> b!4620265 (=> (not res!1936617) (not e!2881976))))

(assert (=> b!4620265 (= res!1936617 (contains!14455 lt!1775784 lt!1776212))))

(assert (=> b!4620265 (= lt!1776207 (apply!12143 lt!1775784 (hash!3448 hashF!1389 key!4968)))))

(assert (=> b!4620265 (= lt!1776212 (hash!3448 hashF!1389 key!4968))))

(declare-fun lt!1776209 () Unit!110820)

(declare-fun lt!1776210 () Unit!110820)

(assert (=> b!4620265 (= lt!1776209 lt!1776210)))

(assert (=> b!4620265 (contains!14455 lt!1775784 (hash!3448 hashF!1389 key!4968))))

(assert (=> b!4620265 (= lt!1776210 (lemmaInGenMapThenLongMapContainsHash!476 lt!1775784 key!4968 hashF!1389))))

(assert (= (and d!1455115 res!1936620) b!4620263))

(assert (= (and b!4620263 res!1936618) b!4620264))

(assert (= (and b!4620264 res!1936619) b!4620265))

(assert (= (and b!4620265 res!1936617) b!4620266))

(declare-fun m!5456385 () Bool)

(assert (=> b!4620263 m!5456385))

(declare-fun m!5456387 () Bool)

(assert (=> d!1455115 m!5456387))

(declare-fun m!5456389 () Bool)

(assert (=> d!1455115 m!5456389))

(assert (=> d!1455115 m!5456387))

(declare-fun m!5456391 () Bool)

(assert (=> b!4620264 m!5456391))

(assert (=> b!4620264 m!5456391))

(declare-fun m!5456393 () Bool)

(assert (=> b!4620264 m!5456393))

(declare-fun m!5456395 () Bool)

(assert (=> b!4620266 m!5456395))

(assert (=> b!4620265 m!5455841))

(declare-fun m!5456397 () Bool)

(assert (=> b!4620265 m!5456397))

(declare-fun m!5456399 () Bool)

(assert (=> b!4620265 m!5456399))

(declare-fun m!5456401 () Bool)

(assert (=> b!4620265 m!5456401))

(declare-fun m!5456403 () Bool)

(assert (=> b!4620265 m!5456403))

(declare-fun m!5456405 () Bool)

(assert (=> b!4620265 m!5456405))

(declare-fun m!5456407 () Bool)

(assert (=> b!4620265 m!5456407))

(assert (=> b!4620265 m!5455813))

(assert (=> b!4620265 m!5456399))

(assert (=> b!4620265 m!5456401))

(declare-fun m!5456409 () Bool)

(assert (=> b!4620265 m!5456409))

(assert (=> b!4620265 m!5455813))

(assert (=> b!4620265 m!5455813))

(assert (=> b!4620265 m!5456369))

(assert (=> b!4619923 d!1455115))

(declare-fun d!1455117 () Bool)

(assert (=> d!1455117 (containsKey!2378 oldBucket!40 key!4968)))

(declare-fun lt!1776216 () Unit!110820)

(declare-fun choose!31169 (List!51582 K!12845 Hashable!5875) Unit!110820)

(assert (=> d!1455117 (= lt!1776216 (choose!31169 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1455117 (noDuplicateKeys!1478 oldBucket!40)))

(assert (=> d!1455117 (= (lemmaGetPairDefinedThenContainsKey!24 oldBucket!40 key!4968 hashF!1389) lt!1776216)))

(declare-fun bs!1019701 () Bool)

(assert (= bs!1019701 d!1455117))

(assert (=> bs!1019701 m!5455839))

(declare-fun m!5456411 () Bool)

(assert (=> bs!1019701 m!5456411))

(assert (=> bs!1019701 m!5455827))

(assert (=> b!4619923 d!1455117))

(declare-fun d!1455119 () Bool)

(assert (=> d!1455119 (= (isDefined!8785 (getPair!270 lt!1775795 key!4968)) (not (isEmpty!28910 (getPair!270 lt!1775795 key!4968))))))

(declare-fun bs!1019702 () Bool)

(assert (= bs!1019702 d!1455119))

(assert (=> bs!1019702 m!5455849))

(declare-fun m!5456413 () Bool)

(assert (=> bs!1019702 m!5456413))

(assert (=> b!4619923 d!1455119))

(declare-fun d!1455121 () Bool)

(declare-fun e!2881983 () Bool)

(assert (=> d!1455121 e!2881983))

(declare-fun res!1936623 () Bool)

(assert (=> d!1455121 (=> res!1936623 e!2881983)))

(declare-fun lt!1776227 () Bool)

(assert (=> d!1455121 (= res!1936623 (not lt!1776227))))

(declare-fun lt!1776225 () Bool)

(assert (=> d!1455121 (= lt!1776227 lt!1776225)))

(declare-fun lt!1776226 () Unit!110820)

(declare-fun e!2881982 () Unit!110820)

(assert (=> d!1455121 (= lt!1776226 e!2881982)))

(declare-fun c!790890 () Bool)

(assert (=> d!1455121 (= c!790890 lt!1776225)))

(declare-fun containsKey!2382 (List!51583 (_ BitVec 64)) Bool)

(assert (=> d!1455121 (= lt!1776225 (containsKey!2382 (toList!4922 lt!1775784) lt!1775785))))

(assert (=> d!1455121 (= (contains!14455 lt!1775784 lt!1775785) lt!1776227)))

(declare-fun b!4620273 () Bool)

(declare-fun lt!1776228 () Unit!110820)

(assert (=> b!4620273 (= e!2881982 lt!1776228)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1314 (List!51583 (_ BitVec 64)) Unit!110820)

(assert (=> b!4620273 (= lt!1776228 (lemmaContainsKeyImpliesGetValueByKeyDefined!1314 (toList!4922 lt!1775784) lt!1775785))))

(declare-fun isDefined!8789 (Option!11524) Bool)

(assert (=> b!4620273 (isDefined!8789 (getValueByKey!1412 (toList!4922 lt!1775784) lt!1775785))))

(declare-fun b!4620274 () Bool)

(declare-fun Unit!110895 () Unit!110820)

(assert (=> b!4620274 (= e!2881982 Unit!110895)))

(declare-fun b!4620275 () Bool)

(assert (=> b!4620275 (= e!2881983 (isDefined!8789 (getValueByKey!1412 (toList!4922 lt!1775784) lt!1775785)))))

(assert (= (and d!1455121 c!790890) b!4620273))

(assert (= (and d!1455121 (not c!790890)) b!4620274))

(assert (= (and d!1455121 (not res!1936623)) b!4620275))

(declare-fun m!5456415 () Bool)

(assert (=> d!1455121 m!5456415))

(declare-fun m!5456417 () Bool)

(assert (=> b!4620273 m!5456417))

(assert (=> b!4620273 m!5456375))

(assert (=> b!4620273 m!5456375))

(declare-fun m!5456419 () Bool)

(assert (=> b!4620273 m!5456419))

(assert (=> b!4620275 m!5456375))

(assert (=> b!4620275 m!5456375))

(assert (=> b!4620275 m!5456419))

(assert (=> b!4619923 d!1455121))

(declare-fun b!4620276 () Bool)

(declare-fun e!2881989 () Bool)

(declare-fun e!2881987 () Bool)

(assert (=> b!4620276 (= e!2881989 e!2881987)))

(declare-fun res!1936624 () Bool)

(assert (=> b!4620276 (=> (not res!1936624) (not e!2881987))))

(assert (=> b!4620276 (= res!1936624 (isDefined!8788 (getValueByKey!1411 (toList!4921 lt!1775792) key!4968)))))

(declare-fun b!4620277 () Bool)

(assert (=> b!4620277 (= e!2881987 (contains!14459 (keys!18106 lt!1775792) key!4968))))

(declare-fun b!4620278 () Bool)

(declare-fun e!2881986 () Bool)

(assert (=> b!4620278 (= e!2881986 (not (contains!14459 (keys!18106 lt!1775792) key!4968)))))

(declare-fun b!4620279 () Bool)

(declare-fun e!2881988 () Unit!110820)

(declare-fun lt!1776230 () Unit!110820)

(assert (=> b!4620279 (= e!2881988 lt!1776230)))

(declare-fun lt!1776229 () Unit!110820)

(assert (=> b!4620279 (= lt!1776229 (lemmaContainsKeyImpliesGetValueByKeyDefined!1313 (toList!4921 lt!1775792) key!4968))))

(assert (=> b!4620279 (isDefined!8788 (getValueByKey!1411 (toList!4921 lt!1775792) key!4968))))

(declare-fun lt!1776235 () Unit!110820)

(assert (=> b!4620279 (= lt!1776235 lt!1776229)))

(assert (=> b!4620279 (= lt!1776230 (lemmaInListThenGetKeysListContains!630 (toList!4921 lt!1775792) key!4968))))

(declare-fun call!322151 () Bool)

(assert (=> b!4620279 call!322151))

(declare-fun b!4620280 () Bool)

(declare-fun e!2881985 () List!51585)

(assert (=> b!4620280 (= e!2881985 (getKeysList!635 (toList!4921 lt!1775792)))))

(declare-fun b!4620281 () Bool)

(declare-fun e!2881984 () Unit!110820)

(declare-fun Unit!110896 () Unit!110820)

(assert (=> b!4620281 (= e!2881984 Unit!110896)))

(declare-fun bm!322146 () Bool)

(assert (=> bm!322146 (= call!322151 (contains!14459 e!2881985 key!4968))))

(declare-fun c!790892 () Bool)

(declare-fun c!790893 () Bool)

(assert (=> bm!322146 (= c!790892 c!790893)))

(declare-fun d!1455123 () Bool)

(assert (=> d!1455123 e!2881989))

(declare-fun res!1936625 () Bool)

(assert (=> d!1455123 (=> res!1936625 e!2881989)))

(assert (=> d!1455123 (= res!1936625 e!2881986)))

(declare-fun res!1936626 () Bool)

(assert (=> d!1455123 (=> (not res!1936626) (not e!2881986))))

(declare-fun lt!1776231 () Bool)

(assert (=> d!1455123 (= res!1936626 (not lt!1776231))))

(declare-fun lt!1776233 () Bool)

(assert (=> d!1455123 (= lt!1776231 lt!1776233)))

(declare-fun lt!1776236 () Unit!110820)

(assert (=> d!1455123 (= lt!1776236 e!2881988)))

(assert (=> d!1455123 (= c!790893 lt!1776233)))

(assert (=> d!1455123 (= lt!1776233 (containsKey!2381 (toList!4921 lt!1775792) key!4968))))

(assert (=> d!1455123 (= (contains!14453 lt!1775792 key!4968) lt!1776231)))

(declare-fun b!4620282 () Bool)

(assert (=> b!4620282 (= e!2881985 (keys!18106 lt!1775792))))

(declare-fun b!4620283 () Bool)

(assert (=> b!4620283 (= e!2881988 e!2881984)))

(declare-fun c!790891 () Bool)

(assert (=> b!4620283 (= c!790891 call!322151)))

(declare-fun b!4620284 () Bool)

(assert (=> b!4620284 false))

(declare-fun lt!1776234 () Unit!110820)

(declare-fun lt!1776232 () Unit!110820)

(assert (=> b!4620284 (= lt!1776234 lt!1776232)))

(assert (=> b!4620284 (containsKey!2381 (toList!4921 lt!1775792) key!4968)))

(assert (=> b!4620284 (= lt!1776232 (lemmaInGetKeysListThenContainsKey!634 (toList!4921 lt!1775792) key!4968))))

(declare-fun Unit!110897 () Unit!110820)

(assert (=> b!4620284 (= e!2881984 Unit!110897)))

(assert (= (and d!1455123 c!790893) b!4620279))

(assert (= (and d!1455123 (not c!790893)) b!4620283))

(assert (= (and b!4620283 c!790891) b!4620284))

(assert (= (and b!4620283 (not c!790891)) b!4620281))

(assert (= (or b!4620279 b!4620283) bm!322146))

(assert (= (and bm!322146 c!790892) b!4620280))

(assert (= (and bm!322146 (not c!790892)) b!4620282))

(assert (= (and d!1455123 res!1936626) b!4620278))

(assert (= (and d!1455123 (not res!1936625)) b!4620276))

(assert (= (and b!4620276 res!1936624) b!4620277))

(declare-fun m!5456421 () Bool)

(assert (=> b!4620284 m!5456421))

(declare-fun m!5456423 () Bool)

(assert (=> b!4620284 m!5456423))

(declare-fun m!5456425 () Bool)

(assert (=> b!4620278 m!5456425))

(assert (=> b!4620278 m!5456425))

(declare-fun m!5456427 () Bool)

(assert (=> b!4620278 m!5456427))

(assert (=> d!1455123 m!5456421))

(declare-fun m!5456429 () Bool)

(assert (=> bm!322146 m!5456429))

(assert (=> b!4620277 m!5456425))

(assert (=> b!4620277 m!5456425))

(assert (=> b!4620277 m!5456427))

(assert (=> b!4620282 m!5456425))

(declare-fun m!5456431 () Bool)

(assert (=> b!4620276 m!5456431))

(assert (=> b!4620276 m!5456431))

(declare-fun m!5456433 () Bool)

(assert (=> b!4620276 m!5456433))

(declare-fun m!5456435 () Bool)

(assert (=> b!4620279 m!5456435))

(assert (=> b!4620279 m!5456431))

(assert (=> b!4620279 m!5456431))

(assert (=> b!4620279 m!5456433))

(declare-fun m!5456437 () Bool)

(assert (=> b!4620279 m!5456437))

(declare-fun m!5456439 () Bool)

(assert (=> b!4620280 m!5456439))

(assert (=> b!4619922 d!1455123))

(declare-fun bs!1019703 () Bool)

(declare-fun d!1455125 () Bool)

(assert (= bs!1019703 (and d!1455125 d!1455115)))

(declare-fun lambda!190580 () Int)

(assert (=> bs!1019703 (= lambda!190580 lambda!190579)))

(declare-fun bs!1019704 () Bool)

(assert (= bs!1019704 (and d!1455125 d!1455013)))

(assert (=> bs!1019704 (= lambda!190580 lambda!190466)))

(declare-fun bs!1019705 () Bool)

(assert (= bs!1019705 (and d!1455125 b!4619923)))

(assert (=> bs!1019705 (= lambda!190580 lambda!190456)))

(declare-fun bs!1019706 () Bool)

(assert (= bs!1019706 (and d!1455125 d!1455091)))

(assert (=> bs!1019706 (= lambda!190580 lambda!190569)))

(declare-fun bs!1019707 () Bool)

(assert (= bs!1019707 (and d!1455125 d!1455071)))

(assert (=> bs!1019707 (= lambda!190580 lambda!190564)))

(declare-fun bs!1019708 () Bool)

(assert (= bs!1019708 (and d!1455125 d!1455107)))

(assert (=> bs!1019708 (= lambda!190580 lambda!190572)))

(declare-fun lt!1776237 () ListMap!4225)

(assert (=> d!1455125 (invariantList!1184 (toList!4921 lt!1776237))))

(declare-fun e!2881990 () ListMap!4225)

(assert (=> d!1455125 (= lt!1776237 e!2881990)))

(declare-fun c!790894 () Bool)

(assert (=> d!1455125 (= c!790894 ((_ is Cons!51459) lt!1775783))))

(assert (=> d!1455125 (forall!10784 lt!1775783 lambda!190580)))

(assert (=> d!1455125 (= (extractMap!1534 lt!1775783) lt!1776237)))

(declare-fun b!4620285 () Bool)

(assert (=> b!4620285 (= e!2881990 (addToMapMapFromBucket!939 (_2!29474 (h!57489 lt!1775783)) (extractMap!1534 (t!358595 lt!1775783))))))

(declare-fun b!4620286 () Bool)

(assert (=> b!4620286 (= e!2881990 (ListMap!4226 Nil!51458))))

(assert (= (and d!1455125 c!790894) b!4620285))

(assert (= (and d!1455125 (not c!790894)) b!4620286))

(declare-fun m!5456441 () Bool)

(assert (=> d!1455125 m!5456441))

(declare-fun m!5456443 () Bool)

(assert (=> d!1455125 m!5456443))

(declare-fun m!5456445 () Bool)

(assert (=> b!4620285 m!5456445))

(assert (=> b!4620285 m!5456445))

(declare-fun m!5456447 () Bool)

(assert (=> b!4620285 m!5456447))

(assert (=> b!4619922 d!1455125))

(declare-fun tp!1341866 () Bool)

(declare-fun b!4620291 () Bool)

(declare-fun e!2881993 () Bool)

(assert (=> b!4620291 (= e!2881993 (and tp_is_empty!29205 tp_is_empty!29207 tp!1341866))))

(assert (=> b!4619924 (= tp!1341858 e!2881993)))

(assert (= (and b!4619924 ((_ is Cons!51458) (t!358594 newBucket!224))) b!4620291))

(declare-fun e!2881994 () Bool)

(declare-fun tp!1341867 () Bool)

(declare-fun b!4620292 () Bool)

(assert (=> b!4620292 (= e!2881994 (and tp_is_empty!29205 tp_is_empty!29207 tp!1341867))))

(assert (=> b!4619931 (= tp!1341859 e!2881994)))

(assert (= (and b!4619931 ((_ is Cons!51458) (t!358594 oldBucket!40))) b!4620292))

(declare-fun b_lambda!170611 () Bool)

(assert (= b_lambda!170609 (or b!4619923 b_lambda!170611)))

(declare-fun bs!1019709 () Bool)

(declare-fun d!1455127 () Bool)

(assert (= bs!1019709 (and d!1455127 b!4619923)))

(assert (=> bs!1019709 (= (dynLambda!21478 lambda!190456 lt!1775787) (noDuplicateKeys!1478 (_2!29474 lt!1775787)))))

(declare-fun m!5456449 () Bool)

(assert (=> bs!1019709 m!5456449))

(assert (=> d!1455099 d!1455127))

(check-sat (not bs!1019709) (not b!4620215) (not b!4620248) (not b!4620199) (not b!4620162) (not d!1455091) (not b!4620276) (not b!4620068) (not b!4620210) (not bm!322145) (not d!1455013) (not b!4620172) (not b!4620275) (not d!1455089) (not b!4620285) (not d!1455101) (not b!4620201) (not b!4620284) (not b!4620200) (not d!1455113) (not d!1455107) (not d!1455011) (not d!1455035) (not b!4620282) (not d!1455071) (not b!4620232) (not b!4620066) (not d!1454995) (not b!4620254) (not d!1455085) (not b!4620065) (not d!1455069) (not b!4620064) (not d!1455123) (not b!4620292) (not d!1454989) (not b!4620265) (not bm!322140) (not b!4620195) (not b!4620291) (not b!4620237) (not d!1455117) (not bm!322136) (not bm!322141) (not b!4620203) (not d!1455037) (not d!1455099) (not b!4620170) (not b!4620273) (not b!4620236) (not b!4620211) (not b!4620042) (not d!1455121) (not d!1455065) (not b!4620279) (not bm!322111) (not b!4620202) (not d!1455109) (not b!4620246) (not bm!322138) (not b!4620062) (not b!4620264) (not b!4620063) (not b!4619991) (not b!4620233) (not b_lambda!170611) (not b!4620277) (not d!1455119) (not d!1455023) (not b!4620238) (not b!4620165) (not d!1455115) (not b!4620209) (not bm!322146) (not b!4620043) (not b!4620263) (not d!1455059) (not bm!322143) (not d!1455097) (not d!1455103) (not bm!322139) (not b!4620278) tp_is_empty!29205 (not b!4620171) (not b!4620169) (not b!4620280) (not b!4619976) (not bm!322144) (not b!4620163) (not b!4620070) (not b!4620266) tp_is_empty!29207 (not d!1455125) (not bm!322137) (not b!4620212) (not d!1455003) (not b!4620008) (not b!4620164))
(check-sat)
