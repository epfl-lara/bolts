; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463304 () Bool)

(assert start!463304)

(declare-fun b!4623985 () Bool)

(declare-fun e!2884337 () Bool)

(declare-fun e!2884336 () Bool)

(assert (=> b!4623985 (= e!2884337 e!2884336)))

(declare-fun res!1938774 () Bool)

(assert (=> b!4623985 (=> res!1938774 e!2884336)))

(declare-datatypes ((K!12895 0))(
  ( (K!12896 (val!18587 Int)) )
))
(declare-datatypes ((V!13141 0))(
  ( (V!13142 (val!18588 Int)) )
))
(declare-datatypes ((tuple2!52438 0))(
  ( (tuple2!52439 (_1!29513 K!12895) (_2!29513 V!13141)) )
))
(declare-datatypes ((List!51638 0))(
  ( (Nil!51514) (Cons!51514 (h!57560 tuple2!52438) (t!358666 List!51638)) )
))
(declare-fun lt!1781242 () List!51638)

(declare-fun key!4968 () K!12895)

(declare-fun lt!1781239 () List!51638)

(declare-fun removePairForKey!1121 (List!51638 K!12895) List!51638)

(assert (=> b!4623985 (= res!1938774 (not (= (removePairForKey!1121 lt!1781239 key!4968) lt!1781242)))))

(declare-fun newBucket!224 () List!51638)

(declare-fun tail!8133 (List!51638) List!51638)

(assert (=> b!4623985 (= lt!1781242 (tail!8133 newBucket!224))))

(declare-fun oldBucket!40 () List!51638)

(assert (=> b!4623985 (= lt!1781239 (tail!8133 oldBucket!40))))

(declare-fun b!4623987 () Bool)

(declare-fun res!1938775 () Bool)

(assert (=> b!4623987 (=> res!1938775 e!2884336)))

(assert (=> b!4623987 (= res!1938775 (not (= (removePairForKey!1121 (t!358666 oldBucket!40) key!4968) lt!1781242)))))

(declare-fun b!4623988 () Bool)

(declare-fun res!1938785 () Bool)

(declare-fun e!2884335 () Bool)

(assert (=> b!4623988 (=> res!1938785 e!2884335)))

(declare-fun lt!1781230 () tuple2!52438)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((ListMap!4265 0))(
  ( (ListMap!4266 (toList!4961 List!51638)) )
))
(declare-fun eq!813 (ListMap!4265 ListMap!4265) Bool)

(declare-datatypes ((tuple2!52440 0))(
  ( (tuple2!52441 (_1!29514 (_ BitVec 64)) (_2!29514 List!51638)) )
))
(declare-datatypes ((List!51639 0))(
  ( (Nil!51515) (Cons!51515 (h!57561 tuple2!52440) (t!358667 List!51639)) )
))
(declare-fun extractMap!1554 (List!51639) ListMap!4265)

(declare-fun +!1864 (ListMap!4265 tuple2!52438) ListMap!4265)

(assert (=> b!4623988 (= res!1938785 (not (eq!813 (extractMap!1554 (Cons!51515 (tuple2!52441 hash!414 newBucket!224) Nil!51515)) (+!1864 (extractMap!1554 (Cons!51515 (tuple2!52441 hash!414 lt!1781242) Nil!51515)) lt!1781230))))))

(declare-fun b!4623989 () Bool)

(declare-fun e!2884332 () Bool)

(declare-fun e!2884329 () Bool)

(assert (=> b!4623989 (= e!2884332 (not e!2884329))))

(declare-fun res!1938783 () Bool)

(assert (=> b!4623989 (=> res!1938783 e!2884329)))

(get-info :version)

(assert (=> b!4623989 (= res!1938783 (or (and ((_ is Cons!51514) oldBucket!40) (= (_1!29513 (h!57560 oldBucket!40)) key!4968)) (not ((_ is Cons!51514) oldBucket!40)) (= (_1!29513 (h!57560 oldBucket!40)) key!4968)))))

(declare-fun e!2884333 () Bool)

(assert (=> b!4623989 e!2884333))

(declare-fun res!1938773 () Bool)

(assert (=> b!4623989 (=> (not res!1938773) (not e!2884333))))

(declare-fun lt!1781247 () ListMap!4265)

(declare-fun lt!1781231 () ListMap!4265)

(declare-fun addToMapMapFromBucket!959 (List!51638 ListMap!4265) ListMap!4265)

(assert (=> b!4623989 (= res!1938773 (= lt!1781247 (addToMapMapFromBucket!959 oldBucket!40 lt!1781231)))))

(assert (=> b!4623989 (= lt!1781231 (extractMap!1554 Nil!51515))))

(assert (=> b!4623989 true))

(declare-fun b!4623990 () Bool)

(assert (=> b!4623990 (= e!2884333 (= lt!1781231 (ListMap!4266 Nil!51514)))))

(declare-fun b!4623991 () Bool)

(declare-fun res!1938786 () Bool)

(assert (=> b!4623991 (=> (not res!1938786) (not e!2884332))))

(declare-datatypes ((Hashable!5895 0))(
  ( (HashableExt!5894 (__x!31598 Int)) )
))
(declare-fun hashF!1389 () Hashable!5895)

(declare-fun allKeysSameHash!1352 (List!51638 (_ BitVec 64) Hashable!5895) Bool)

(assert (=> b!4623991 (= res!1938786 (allKeysSameHash!1352 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4623992 () Bool)

(declare-fun res!1938784 () Bool)

(declare-fun e!2884334 () Bool)

(assert (=> b!4623992 (=> (not res!1938784) (not e!2884334))))

(assert (=> b!4623992 (= res!1938784 (allKeysSameHash!1352 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4623993 () Bool)

(declare-fun e!2884338 () Bool)

(assert (=> b!4623993 (= e!2884334 e!2884338)))

(declare-fun res!1938776 () Bool)

(assert (=> b!4623993 (=> (not res!1938776) (not e!2884338))))

(declare-fun contains!14545 (ListMap!4265 K!12895) Bool)

(assert (=> b!4623993 (= res!1938776 (contains!14545 lt!1781247 key!4968))))

(declare-fun lt!1781236 () List!51639)

(assert (=> b!4623993 (= lt!1781247 (extractMap!1554 lt!1781236))))

(assert (=> b!4623993 (= lt!1781236 (Cons!51515 (tuple2!52441 hash!414 oldBucket!40) Nil!51515))))

(declare-fun b!4623994 () Bool)

(declare-fun res!1938772 () Bool)

(assert (=> b!4623994 (=> (not res!1938772) (not e!2884334))))

(declare-fun noDuplicateKeys!1498 (List!51638) Bool)

(assert (=> b!4623994 (= res!1938772 (noDuplicateKeys!1498 newBucket!224))))

(declare-fun b!4623995 () Bool)

(assert (=> b!4623995 (= e!2884336 e!2884335)))

(declare-fun res!1938781 () Bool)

(assert (=> b!4623995 (=> res!1938781 e!2884335)))

(assert (=> b!4623995 (= res!1938781 (not (eq!813 lt!1781247 (+!1864 (extractMap!1554 (Cons!51515 (tuple2!52441 hash!414 lt!1781239) Nil!51515)) (h!57560 oldBucket!40)))))))

(assert (=> b!4623995 (eq!813 (addToMapMapFromBucket!959 (Cons!51514 lt!1781230 lt!1781242) (ListMap!4266 Nil!51514)) (+!1864 (addToMapMapFromBucket!959 lt!1781242 (ListMap!4266 Nil!51514)) lt!1781230))))

(declare-datatypes ((Unit!111765 0))(
  ( (Unit!111766) )
))
(declare-fun lt!1781248 () Unit!111765)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!64 (tuple2!52438 List!51638 ListMap!4265) Unit!111765)

(assert (=> b!4623995 (= lt!1781248 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!64 lt!1781230 lt!1781242 (ListMap!4266 Nil!51514)))))

(declare-fun head!9632 (List!51638) tuple2!52438)

(assert (=> b!4623995 (= lt!1781230 (head!9632 newBucket!224))))

(declare-fun lt!1781249 () tuple2!52438)

(assert (=> b!4623995 (eq!813 (addToMapMapFromBucket!959 (Cons!51514 lt!1781249 lt!1781239) (ListMap!4266 Nil!51514)) (+!1864 (addToMapMapFromBucket!959 lt!1781239 (ListMap!4266 Nil!51514)) lt!1781249))))

(declare-fun lt!1781234 () Unit!111765)

(assert (=> b!4623995 (= lt!1781234 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!64 lt!1781249 lt!1781239 (ListMap!4266 Nil!51514)))))

(assert (=> b!4623995 (= lt!1781249 (head!9632 oldBucket!40))))

(declare-fun lt!1781235 () List!51639)

(assert (=> b!4623995 (contains!14545 (extractMap!1554 lt!1781235) key!4968)))

(declare-fun lt!1781238 () Unit!111765)

(declare-datatypes ((ListLongMap!3551 0))(
  ( (ListLongMap!3552 (toList!4962 List!51639)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!316 (ListLongMap!3551 K!12895 Hashable!5895) Unit!111765)

(assert (=> b!4623995 (= lt!1781238 (lemmaListContainsThenExtractedMapContains!316 (ListLongMap!3552 lt!1781235) key!4968 hashF!1389))))

(assert (=> b!4623995 (= lt!1781235 (Cons!51515 (tuple2!52441 hash!414 (t!358666 oldBucket!40)) Nil!51515))))

(declare-fun b!4623996 () Bool)

(declare-fun res!1938780 () Bool)

(assert (=> b!4623996 (=> res!1938780 e!2884335)))

(assert (=> b!4623996 (= res!1938780 (not (noDuplicateKeys!1498 lt!1781242)))))

(declare-fun b!4623997 () Bool)

(assert (=> b!4623997 (= e!2884338 e!2884332)))

(declare-fun res!1938771 () Bool)

(assert (=> b!4623997 (=> (not res!1938771) (not e!2884332))))

(declare-fun lt!1781246 () (_ BitVec 64))

(assert (=> b!4623997 (= res!1938771 (= lt!1781246 hash!414))))

(declare-fun hash!3483 (Hashable!5895 K!12895) (_ BitVec 64))

(assert (=> b!4623997 (= lt!1781246 (hash!3483 hashF!1389 key!4968))))

(declare-fun b!4623998 () Bool)

(assert (=> b!4623998 (= e!2884335 true)))

(declare-fun res!1938778 () Bool)

(assert (=> start!463304 (=> (not res!1938778) (not e!2884334))))

(assert (=> start!463304 (= res!1938778 (noDuplicateKeys!1498 oldBucket!40))))

(assert (=> start!463304 e!2884334))

(assert (=> start!463304 true))

(declare-fun e!2884330 () Bool)

(assert (=> start!463304 e!2884330))

(declare-fun tp_is_empty!29285 () Bool)

(assert (=> start!463304 tp_is_empty!29285))

(declare-fun e!2884331 () Bool)

(assert (=> start!463304 e!2884331))

(declare-fun b!4623986 () Bool)

(assert (=> b!4623986 (= e!2884329 e!2884337)))

(declare-fun res!1938782 () Bool)

(assert (=> b!4623986 (=> res!1938782 e!2884337)))

(declare-fun containsKey!2430 (List!51638 K!12895) Bool)

(assert (=> b!4623986 (= res!1938782 (not (containsKey!2430 (t!358666 oldBucket!40) key!4968)))))

(assert (=> b!4623986 (containsKey!2430 oldBucket!40 key!4968)))

(declare-fun lt!1781232 () Unit!111765)

(declare-fun lemmaGetPairDefinedThenContainsKey!44 (List!51638 K!12895 Hashable!5895) Unit!111765)

(assert (=> b!4623986 (= lt!1781232 (lemmaGetPairDefinedThenContainsKey!44 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1781240 () List!51638)

(declare-datatypes ((Option!11572 0))(
  ( (None!11571) (Some!11571 (v!45689 tuple2!52438)) )
))
(declare-fun isDefined!8837 (Option!11572) Bool)

(declare-fun getPair!290 (List!51638 K!12895) Option!11572)

(assert (=> b!4623986 (isDefined!8837 (getPair!290 lt!1781240 key!4968))))

(declare-fun lt!1781244 () tuple2!52440)

(declare-fun lt!1781245 () Unit!111765)

(declare-fun lambda!191658 () Int)

(declare-fun forallContained!3038 (List!51639 Int tuple2!52440) Unit!111765)

(assert (=> b!4623986 (= lt!1781245 (forallContained!3038 lt!1781236 lambda!191658 lt!1781244))))

(declare-fun contains!14546 (List!51639 tuple2!52440) Bool)

(assert (=> b!4623986 (contains!14546 lt!1781236 lt!1781244)))

(assert (=> b!4623986 (= lt!1781244 (tuple2!52441 lt!1781246 lt!1781240))))

(declare-fun lt!1781233 () Unit!111765)

(declare-fun lt!1781237 () ListLongMap!3551)

(declare-fun lemmaGetValueImpliesTupleContained!95 (ListLongMap!3551 (_ BitVec 64) List!51638) Unit!111765)

(assert (=> b!4623986 (= lt!1781233 (lemmaGetValueImpliesTupleContained!95 lt!1781237 lt!1781246 lt!1781240))))

(declare-fun apply!12163 (ListLongMap!3551 (_ BitVec 64)) List!51638)

(assert (=> b!4623986 (= lt!1781240 (apply!12163 lt!1781237 lt!1781246))))

(declare-fun contains!14547 (ListLongMap!3551 (_ BitVec 64)) Bool)

(assert (=> b!4623986 (contains!14547 lt!1781237 lt!1781246)))

(declare-fun lt!1781241 () Unit!111765)

(declare-fun lemmaInGenMapThenLongMapContainsHash!496 (ListLongMap!3551 K!12895 Hashable!5895) Unit!111765)

(assert (=> b!4623986 (= lt!1781241 (lemmaInGenMapThenLongMapContainsHash!496 lt!1781237 key!4968 hashF!1389))))

(declare-fun lt!1781243 () Unit!111765)

(declare-fun lemmaInGenMapThenGetPairDefined!86 (ListLongMap!3551 K!12895 Hashable!5895) Unit!111765)

(assert (=> b!4623986 (= lt!1781243 (lemmaInGenMapThenGetPairDefined!86 lt!1781237 key!4968 hashF!1389))))

(assert (=> b!4623986 (= lt!1781237 (ListLongMap!3552 lt!1781236))))

(declare-fun tp!1342043 () Bool)

(declare-fun tp_is_empty!29287 () Bool)

(declare-fun b!4623999 () Bool)

(assert (=> b!4623999 (= e!2884330 (and tp_is_empty!29285 tp_is_empty!29287 tp!1342043))))

(declare-fun b!4624000 () Bool)

(declare-fun res!1938777 () Bool)

(assert (=> b!4624000 (=> (not res!1938777) (not e!2884334))))

(assert (=> b!4624000 (= res!1938777 (= (removePairForKey!1121 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4624001 () Bool)

(declare-fun tp!1342042 () Bool)

(assert (=> b!4624001 (= e!2884331 (and tp_is_empty!29285 tp_is_empty!29287 tp!1342042))))

(declare-fun b!4624002 () Bool)

(declare-fun res!1938779 () Bool)

(assert (=> b!4624002 (=> res!1938779 e!2884335)))

(assert (=> b!4624002 (= res!1938779 (not (noDuplicateKeys!1498 (t!358666 oldBucket!40))))))

(assert (= (and start!463304 res!1938778) b!4623994))

(assert (= (and b!4623994 res!1938772) b!4624000))

(assert (= (and b!4624000 res!1938777) b!4623992))

(assert (= (and b!4623992 res!1938784) b!4623993))

(assert (= (and b!4623993 res!1938776) b!4623997))

(assert (= (and b!4623997 res!1938771) b!4623991))

(assert (= (and b!4623991 res!1938786) b!4623989))

(assert (= (and b!4623989 res!1938773) b!4623990))

(assert (= (and b!4623989 (not res!1938783)) b!4623986))

(assert (= (and b!4623986 (not res!1938782)) b!4623985))

(assert (= (and b!4623985 (not res!1938774)) b!4623987))

(assert (= (and b!4623987 (not res!1938775)) b!4623995))

(assert (= (and b!4623995 (not res!1938781)) b!4623988))

(assert (= (and b!4623988 (not res!1938785)) b!4624002))

(assert (= (and b!4624002 (not res!1938779)) b!4623996))

(assert (= (and b!4623996 (not res!1938780)) b!4623998))

(assert (= (and start!463304 ((_ is Cons!51514) oldBucket!40)) b!4623999))

(assert (= (and start!463304 ((_ is Cons!51514) newBucket!224)) b!4624001))

(declare-fun m!5463791 () Bool)

(assert (=> b!4623996 m!5463791))

(declare-fun m!5463793 () Bool)

(assert (=> b!4623989 m!5463793))

(declare-fun m!5463795 () Bool)

(assert (=> b!4623989 m!5463795))

(declare-fun m!5463797 () Bool)

(assert (=> b!4623995 m!5463797))

(declare-fun m!5463799 () Bool)

(assert (=> b!4623995 m!5463799))

(declare-fun m!5463801 () Bool)

(assert (=> b!4623995 m!5463801))

(declare-fun m!5463803 () Bool)

(assert (=> b!4623995 m!5463803))

(declare-fun m!5463805 () Bool)

(assert (=> b!4623995 m!5463805))

(declare-fun m!5463807 () Bool)

(assert (=> b!4623995 m!5463807))

(assert (=> b!4623995 m!5463799))

(declare-fun m!5463809 () Bool)

(assert (=> b!4623995 m!5463809))

(declare-fun m!5463811 () Bool)

(assert (=> b!4623995 m!5463811))

(declare-fun m!5463813 () Bool)

(assert (=> b!4623995 m!5463813))

(declare-fun m!5463815 () Bool)

(assert (=> b!4623995 m!5463815))

(declare-fun m!5463817 () Bool)

(assert (=> b!4623995 m!5463817))

(declare-fun m!5463819 () Bool)

(assert (=> b!4623995 m!5463819))

(declare-fun m!5463821 () Bool)

(assert (=> b!4623995 m!5463821))

(declare-fun m!5463823 () Bool)

(assert (=> b!4623995 m!5463823))

(assert (=> b!4623995 m!5463807))

(declare-fun m!5463825 () Bool)

(assert (=> b!4623995 m!5463825))

(assert (=> b!4623995 m!5463803))

(assert (=> b!4623995 m!5463813))

(declare-fun m!5463827 () Bool)

(assert (=> b!4623995 m!5463827))

(assert (=> b!4623995 m!5463809))

(assert (=> b!4623995 m!5463815))

(declare-fun m!5463829 () Bool)

(assert (=> b!4623995 m!5463829))

(assert (=> b!4623995 m!5463797))

(declare-fun m!5463831 () Bool)

(assert (=> b!4623995 m!5463831))

(assert (=> b!4623995 m!5463825))

(assert (=> b!4623995 m!5463817))

(declare-fun m!5463833 () Bool)

(assert (=> b!4623997 m!5463833))

(declare-fun m!5463835 () Bool)

(assert (=> b!4624000 m!5463835))

(declare-fun m!5463837 () Bool)

(assert (=> b!4623992 m!5463837))

(declare-fun m!5463839 () Bool)

(assert (=> b!4623987 m!5463839))

(declare-fun m!5463841 () Bool)

(assert (=> b!4623985 m!5463841))

(declare-fun m!5463843 () Bool)

(assert (=> b!4623985 m!5463843))

(declare-fun m!5463845 () Bool)

(assert (=> b!4623985 m!5463845))

(declare-fun m!5463847 () Bool)

(assert (=> b!4623994 m!5463847))

(declare-fun m!5463849 () Bool)

(assert (=> b!4623988 m!5463849))

(declare-fun m!5463851 () Bool)

(assert (=> b!4623988 m!5463851))

(assert (=> b!4623988 m!5463851))

(declare-fun m!5463853 () Bool)

(assert (=> b!4623988 m!5463853))

(assert (=> b!4623988 m!5463849))

(assert (=> b!4623988 m!5463853))

(declare-fun m!5463855 () Bool)

(assert (=> b!4623988 m!5463855))

(declare-fun m!5463857 () Bool)

(assert (=> b!4623991 m!5463857))

(declare-fun m!5463859 () Bool)

(assert (=> b!4623986 m!5463859))

(declare-fun m!5463861 () Bool)

(assert (=> b!4623986 m!5463861))

(declare-fun m!5463863 () Bool)

(assert (=> b!4623986 m!5463863))

(declare-fun m!5463865 () Bool)

(assert (=> b!4623986 m!5463865))

(declare-fun m!5463867 () Bool)

(assert (=> b!4623986 m!5463867))

(declare-fun m!5463869 () Bool)

(assert (=> b!4623986 m!5463869))

(declare-fun m!5463871 () Bool)

(assert (=> b!4623986 m!5463871))

(declare-fun m!5463873 () Bool)

(assert (=> b!4623986 m!5463873))

(declare-fun m!5463875 () Bool)

(assert (=> b!4623986 m!5463875))

(declare-fun m!5463877 () Bool)

(assert (=> b!4623986 m!5463877))

(assert (=> b!4623986 m!5463867))

(declare-fun m!5463879 () Bool)

(assert (=> b!4623986 m!5463879))

(declare-fun m!5463881 () Bool)

(assert (=> b!4623986 m!5463881))

(declare-fun m!5463883 () Bool)

(assert (=> start!463304 m!5463883))

(declare-fun m!5463885 () Bool)

(assert (=> b!4624002 m!5463885))

(declare-fun m!5463887 () Bool)

(assert (=> b!4623993 m!5463887))

(declare-fun m!5463889 () Bool)

(assert (=> b!4623993 m!5463889))

(check-sat (not b!4623988) (not b!4623987) (not b!4623993) (not b!4623992) (not b!4623996) (not b!4623986) (not b!4623997) (not b!4624002) tp_is_empty!29285 (not b!4623985) (not b!4623999) (not b!4623994) (not start!463304) (not b!4624000) (not b!4623989) (not b!4623995) (not b!4624001) (not b!4623991) tp_is_empty!29287)
(check-sat)
