; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462692 () Bool)

(assert start!462692)

(declare-fun b!4621017 () Bool)

(declare-fun e!2882461 () Bool)

(declare-fun e!2882466 () Bool)

(assert (=> b!4621017 (= e!2882461 e!2882466)))

(declare-fun res!1937111 () Bool)

(assert (=> b!4621017 (=> (not res!1937111) (not e!2882466))))

(declare-datatypes ((K!12865 0))(
  ( (K!12866 (val!18563 Int)) )
))
(declare-datatypes ((V!13111 0))(
  ( (V!13112 (val!18564 Int)) )
))
(declare-datatypes ((tuple2!52390 0))(
  ( (tuple2!52391 (_1!29489 K!12865) (_2!29489 V!13111)) )
))
(declare-datatypes ((List!51602 0))(
  ( (Nil!51478) (Cons!51478 (h!57512 tuple2!52390) (t!358618 List!51602)) )
))
(declare-datatypes ((ListMap!4241 0))(
  ( (ListMap!4242 (toList!4937 List!51602)) )
))
(declare-fun lt!1777227 () ListMap!4241)

(declare-fun key!4968 () K!12865)

(declare-fun contains!14485 (ListMap!4241 K!12865) Bool)

(assert (=> b!4621017 (= res!1937111 (contains!14485 lt!1777227 key!4968))))

(declare-datatypes ((tuple2!52392 0))(
  ( (tuple2!52393 (_1!29490 (_ BitVec 64)) (_2!29490 List!51602)) )
))
(declare-datatypes ((List!51603 0))(
  ( (Nil!51479) (Cons!51479 (h!57513 tuple2!52392) (t!358619 List!51603)) )
))
(declare-fun lt!1777243 () List!51603)

(declare-fun extractMap!1542 (List!51603) ListMap!4241)

(assert (=> b!4621017 (= lt!1777227 (extractMap!1542 lt!1777243))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51602)

(assert (=> b!4621017 (= lt!1777243 (Cons!51479 (tuple2!52393 hash!414 oldBucket!40) Nil!51479))))

(declare-fun b!4621018 () Bool)

(declare-fun lt!1777229 () List!51602)

(declare-fun lambda!190752 () Int)

(declare-fun e!2882465 () Bool)

(declare-fun forall!10790 (List!51603 Int) Bool)

(assert (=> b!4621018 (= e!2882465 (forall!10790 (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479) lambda!190752))))

(declare-fun lt!1777232 () tuple2!52390)

(declare-fun lt!1777231 () List!51602)

(declare-fun eq!801 (ListMap!4241 ListMap!4241) Bool)

(declare-fun addToMapMapFromBucket!947 (List!51602 ListMap!4241) ListMap!4241)

(declare-fun +!1852 (ListMap!4241 tuple2!52390) ListMap!4241)

(assert (=> b!4621018 (eq!801 (addToMapMapFromBucket!947 (Cons!51478 lt!1777232 lt!1777231) (ListMap!4242 Nil!51478)) (+!1852 (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777232))))

(declare-datatypes ((Unit!111032 0))(
  ( (Unit!111033) )
))
(declare-fun lt!1777240 () Unit!111032)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!52 (tuple2!52390 List!51602 ListMap!4241) Unit!111032)

(assert (=> b!4621018 (= lt!1777240 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!52 lt!1777232 lt!1777231 (ListMap!4242 Nil!51478)))))

(declare-fun newBucket!224 () List!51602)

(declare-fun head!9620 (List!51602) tuple2!52390)

(assert (=> b!4621018 (= lt!1777232 (head!9620 newBucket!224))))

(declare-fun lt!1777237 () tuple2!52390)

(assert (=> b!4621018 (eq!801 (addToMapMapFromBucket!947 (Cons!51478 lt!1777237 lt!1777229) (ListMap!4242 Nil!51478)) (+!1852 (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777237))))

(declare-fun lt!1777226 () Unit!111032)

(assert (=> b!4621018 (= lt!1777226 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!52 lt!1777237 lt!1777229 (ListMap!4242 Nil!51478)))))

(assert (=> b!4621018 (= lt!1777237 (head!9620 oldBucket!40))))

(declare-fun lt!1777242 () List!51603)

(assert (=> b!4621018 (contains!14485 (extractMap!1542 lt!1777242) key!4968)))

(declare-datatypes ((Hashable!5883 0))(
  ( (HashableExt!5882 (__x!31586 Int)) )
))
(declare-fun hashF!1389 () Hashable!5883)

(declare-fun lt!1777234 () Unit!111032)

(declare-datatypes ((ListLongMap!3527 0))(
  ( (ListLongMap!3528 (toList!4938 List!51603)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!304 (ListLongMap!3527 K!12865 Hashable!5883) Unit!111032)

(assert (=> b!4621018 (= lt!1777234 (lemmaListContainsThenExtractedMapContains!304 (ListLongMap!3528 lt!1777242) key!4968 hashF!1389))))

(assert (=> b!4621018 (= lt!1777242 (Cons!51479 (tuple2!52393 hash!414 (t!358618 oldBucket!40)) Nil!51479))))

(declare-fun b!4621019 () Bool)

(declare-fun res!1937115 () Bool)

(assert (=> b!4621019 (=> res!1937115 e!2882465)))

(declare-fun removePairForKey!1109 (List!51602 K!12865) List!51602)

(assert (=> b!4621019 (= res!1937115 (not (= (removePairForKey!1109 (t!358618 oldBucket!40) key!4968) lt!1777231)))))

(declare-fun b!4621020 () Bool)

(declare-fun res!1937114 () Bool)

(assert (=> b!4621020 (=> (not res!1937114) (not e!2882461))))

(assert (=> b!4621020 (= res!1937114 (= (removePairForKey!1109 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4621021 () Bool)

(declare-fun e!2882463 () Bool)

(declare-fun lt!1777241 () ListMap!4241)

(assert (=> b!4621021 (= e!2882463 (= lt!1777241 (ListMap!4242 Nil!51478)))))

(declare-fun res!1937116 () Bool)

(assert (=> start!462692 (=> (not res!1937116) (not e!2882461))))

(declare-fun noDuplicateKeys!1486 (List!51602) Bool)

(assert (=> start!462692 (= res!1937116 (noDuplicateKeys!1486 oldBucket!40))))

(assert (=> start!462692 e!2882461))

(assert (=> start!462692 true))

(declare-fun e!2882467 () Bool)

(assert (=> start!462692 e!2882467))

(declare-fun tp_is_empty!29237 () Bool)

(assert (=> start!462692 tp_is_empty!29237))

(declare-fun e!2882464 () Bool)

(assert (=> start!462692 e!2882464))

(declare-fun b!4621022 () Bool)

(declare-fun e!2882468 () Bool)

(declare-fun e!2882462 () Bool)

(assert (=> b!4621022 (= e!2882468 e!2882462)))

(declare-fun res!1937110 () Bool)

(assert (=> b!4621022 (=> res!1937110 e!2882462)))

(declare-fun containsKey!2394 (List!51602 K!12865) Bool)

(assert (=> b!4621022 (= res!1937110 (not (containsKey!2394 (t!358618 oldBucket!40) key!4968)))))

(assert (=> b!4621022 (containsKey!2394 oldBucket!40 key!4968)))

(declare-fun lt!1777224 () Unit!111032)

(declare-fun lemmaGetPairDefinedThenContainsKey!32 (List!51602 K!12865 Hashable!5883) Unit!111032)

(assert (=> b!4621022 (= lt!1777224 (lemmaGetPairDefinedThenContainsKey!32 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1777238 () List!51602)

(declare-datatypes ((Option!11536 0))(
  ( (None!11535) (Some!11535 (v!45629 tuple2!52390)) )
))
(declare-fun isDefined!8801 (Option!11536) Bool)

(declare-fun getPair!278 (List!51602 K!12865) Option!11536)

(assert (=> b!4621022 (isDefined!8801 (getPair!278 lt!1777238 key!4968))))

(declare-fun lt!1777239 () Unit!111032)

(declare-fun lt!1777225 () tuple2!52392)

(declare-fun forallContained!3014 (List!51603 Int tuple2!52392) Unit!111032)

(assert (=> b!4621022 (= lt!1777239 (forallContained!3014 lt!1777243 lambda!190752 lt!1777225))))

(declare-fun contains!14486 (List!51603 tuple2!52392) Bool)

(assert (=> b!4621022 (contains!14486 lt!1777243 lt!1777225)))

(declare-fun lt!1777230 () (_ BitVec 64))

(assert (=> b!4621022 (= lt!1777225 (tuple2!52393 lt!1777230 lt!1777238))))

(declare-fun lt!1777235 () Unit!111032)

(declare-fun lt!1777233 () ListLongMap!3527)

(declare-fun lemmaGetValueImpliesTupleContained!83 (ListLongMap!3527 (_ BitVec 64) List!51602) Unit!111032)

(assert (=> b!4621022 (= lt!1777235 (lemmaGetValueImpliesTupleContained!83 lt!1777233 lt!1777230 lt!1777238))))

(declare-fun apply!12151 (ListLongMap!3527 (_ BitVec 64)) List!51602)

(assert (=> b!4621022 (= lt!1777238 (apply!12151 lt!1777233 lt!1777230))))

(declare-fun contains!14487 (ListLongMap!3527 (_ BitVec 64)) Bool)

(assert (=> b!4621022 (contains!14487 lt!1777233 lt!1777230)))

(declare-fun lt!1777236 () Unit!111032)

(declare-fun lemmaInGenMapThenLongMapContainsHash!484 (ListLongMap!3527 K!12865 Hashable!5883) Unit!111032)

(assert (=> b!4621022 (= lt!1777236 (lemmaInGenMapThenLongMapContainsHash!484 lt!1777233 key!4968 hashF!1389))))

(declare-fun lt!1777228 () Unit!111032)

(declare-fun lemmaInGenMapThenGetPairDefined!74 (ListLongMap!3527 K!12865 Hashable!5883) Unit!111032)

(assert (=> b!4621022 (= lt!1777228 (lemmaInGenMapThenGetPairDefined!74 lt!1777233 key!4968 hashF!1389))))

(assert (=> b!4621022 (= lt!1777233 (ListLongMap!3528 lt!1777243))))

(declare-fun b!4621023 () Bool)

(declare-fun e!2882460 () Bool)

(assert (=> b!4621023 (= e!2882460 (not e!2882468))))

(declare-fun res!1937118 () Bool)

(assert (=> b!4621023 (=> res!1937118 e!2882468)))

(get-info :version)

(assert (=> b!4621023 (= res!1937118 (or (and ((_ is Cons!51478) oldBucket!40) (= (_1!29489 (h!57512 oldBucket!40)) key!4968)) (not ((_ is Cons!51478) oldBucket!40)) (= (_1!29489 (h!57512 oldBucket!40)) key!4968)))))

(assert (=> b!4621023 e!2882463))

(declare-fun res!1937112 () Bool)

(assert (=> b!4621023 (=> (not res!1937112) (not e!2882463))))

(assert (=> b!4621023 (= res!1937112 (= lt!1777227 (addToMapMapFromBucket!947 oldBucket!40 lt!1777241)))))

(assert (=> b!4621023 (= lt!1777241 (extractMap!1542 Nil!51479))))

(assert (=> b!4621023 true))

(declare-fun b!4621024 () Bool)

(assert (=> b!4621024 (= e!2882466 e!2882460)))

(declare-fun res!1937113 () Bool)

(assert (=> b!4621024 (=> (not res!1937113) (not e!2882460))))

(assert (=> b!4621024 (= res!1937113 (= lt!1777230 hash!414))))

(declare-fun hash!3460 (Hashable!5883 K!12865) (_ BitVec 64))

(assert (=> b!4621024 (= lt!1777230 (hash!3460 hashF!1389 key!4968))))

(declare-fun b!4621025 () Bool)

(declare-fun res!1937109 () Bool)

(assert (=> b!4621025 (=> (not res!1937109) (not e!2882461))))

(assert (=> b!4621025 (= res!1937109 (noDuplicateKeys!1486 newBucket!224))))

(declare-fun b!4621026 () Bool)

(declare-fun tp_is_empty!29239 () Bool)

(declare-fun tp!1341923 () Bool)

(assert (=> b!4621026 (= e!2882467 (and tp_is_empty!29237 tp_is_empty!29239 tp!1341923))))

(declare-fun b!4621027 () Bool)

(declare-fun res!1937108 () Bool)

(assert (=> b!4621027 (=> (not res!1937108) (not e!2882461))))

(declare-fun allKeysSameHash!1340 (List!51602 (_ BitVec 64) Hashable!5883) Bool)

(assert (=> b!4621027 (= res!1937108 (allKeysSameHash!1340 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1341922 () Bool)

(declare-fun b!4621028 () Bool)

(assert (=> b!4621028 (= e!2882464 (and tp_is_empty!29237 tp_is_empty!29239 tp!1341922))))

(declare-fun b!4621029 () Bool)

(declare-fun res!1937107 () Bool)

(assert (=> b!4621029 (=> (not res!1937107) (not e!2882460))))

(assert (=> b!4621029 (= res!1937107 (allKeysSameHash!1340 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4621030 () Bool)

(assert (=> b!4621030 (= e!2882462 e!2882465)))

(declare-fun res!1937117 () Bool)

(assert (=> b!4621030 (=> res!1937117 e!2882465)))

(assert (=> b!4621030 (= res!1937117 (not (= (removePairForKey!1109 lt!1777229 key!4968) lt!1777231)))))

(declare-fun tail!8121 (List!51602) List!51602)

(assert (=> b!4621030 (= lt!1777231 (tail!8121 newBucket!224))))

(assert (=> b!4621030 (= lt!1777229 (tail!8121 oldBucket!40))))

(assert (= (and start!462692 res!1937116) b!4621025))

(assert (= (and b!4621025 res!1937109) b!4621020))

(assert (= (and b!4621020 res!1937114) b!4621027))

(assert (= (and b!4621027 res!1937108) b!4621017))

(assert (= (and b!4621017 res!1937111) b!4621024))

(assert (= (and b!4621024 res!1937113) b!4621029))

(assert (= (and b!4621029 res!1937107) b!4621023))

(assert (= (and b!4621023 res!1937112) b!4621021))

(assert (= (and b!4621023 (not res!1937118)) b!4621022))

(assert (= (and b!4621022 (not res!1937110)) b!4621030))

(assert (= (and b!4621030 (not res!1937117)) b!4621019))

(assert (= (and b!4621019 (not res!1937115)) b!4621018))

(assert (= (and start!462692 ((_ is Cons!51478) oldBucket!40)) b!4621026))

(assert (= (and start!462692 ((_ is Cons!51478) newBucket!224)) b!4621028))

(declare-fun m!5457775 () Bool)

(assert (=> b!4621017 m!5457775))

(declare-fun m!5457777 () Bool)

(assert (=> b!4621017 m!5457777))

(declare-fun m!5457779 () Bool)

(assert (=> b!4621025 m!5457779))

(declare-fun m!5457781 () Bool)

(assert (=> b!4621022 m!5457781))

(declare-fun m!5457783 () Bool)

(assert (=> b!4621022 m!5457783))

(declare-fun m!5457785 () Bool)

(assert (=> b!4621022 m!5457785))

(declare-fun m!5457787 () Bool)

(assert (=> b!4621022 m!5457787))

(declare-fun m!5457789 () Bool)

(assert (=> b!4621022 m!5457789))

(declare-fun m!5457791 () Bool)

(assert (=> b!4621022 m!5457791))

(declare-fun m!5457793 () Bool)

(assert (=> b!4621022 m!5457793))

(declare-fun m!5457795 () Bool)

(assert (=> b!4621022 m!5457795))

(declare-fun m!5457797 () Bool)

(assert (=> b!4621022 m!5457797))

(declare-fun m!5457799 () Bool)

(assert (=> b!4621022 m!5457799))

(declare-fun m!5457801 () Bool)

(assert (=> b!4621022 m!5457801))

(assert (=> b!4621022 m!5457795))

(declare-fun m!5457803 () Bool)

(assert (=> b!4621022 m!5457803))

(declare-fun m!5457805 () Bool)

(assert (=> b!4621030 m!5457805))

(declare-fun m!5457807 () Bool)

(assert (=> b!4621030 m!5457807))

(declare-fun m!5457809 () Bool)

(assert (=> b!4621030 m!5457809))

(declare-fun m!5457811 () Bool)

(assert (=> b!4621019 m!5457811))

(declare-fun m!5457813 () Bool)

(assert (=> start!462692 m!5457813))

(declare-fun m!5457815 () Bool)

(assert (=> b!4621027 m!5457815))

(declare-fun m!5457817 () Bool)

(assert (=> b!4621029 m!5457817))

(declare-fun m!5457819 () Bool)

(assert (=> b!4621024 m!5457819))

(declare-fun m!5457821 () Bool)

(assert (=> b!4621018 m!5457821))

(declare-fun m!5457823 () Bool)

(assert (=> b!4621018 m!5457823))

(declare-fun m!5457825 () Bool)

(assert (=> b!4621018 m!5457825))

(assert (=> b!4621018 m!5457821))

(declare-fun m!5457827 () Bool)

(assert (=> b!4621018 m!5457827))

(declare-fun m!5457829 () Bool)

(assert (=> b!4621018 m!5457829))

(declare-fun m!5457831 () Bool)

(assert (=> b!4621018 m!5457831))

(declare-fun m!5457833 () Bool)

(assert (=> b!4621018 m!5457833))

(declare-fun m!5457835 () Bool)

(assert (=> b!4621018 m!5457835))

(declare-fun m!5457837 () Bool)

(assert (=> b!4621018 m!5457837))

(assert (=> b!4621018 m!5457833))

(declare-fun m!5457839 () Bool)

(assert (=> b!4621018 m!5457839))

(assert (=> b!4621018 m!5457823))

(declare-fun m!5457841 () Bool)

(assert (=> b!4621018 m!5457841))

(declare-fun m!5457843 () Bool)

(assert (=> b!4621018 m!5457843))

(declare-fun m!5457845 () Bool)

(assert (=> b!4621018 m!5457845))

(declare-fun m!5457847 () Bool)

(assert (=> b!4621018 m!5457847))

(assert (=> b!4621018 m!5457841))

(assert (=> b!4621018 m!5457829))

(declare-fun m!5457849 () Bool)

(assert (=> b!4621018 m!5457849))

(assert (=> b!4621018 m!5457839))

(assert (=> b!4621018 m!5457827))

(declare-fun m!5457851 () Bool)

(assert (=> b!4621018 m!5457851))

(declare-fun m!5457853 () Bool)

(assert (=> b!4621023 m!5457853))

(declare-fun m!5457855 () Bool)

(assert (=> b!4621023 m!5457855))

(declare-fun m!5457857 () Bool)

(assert (=> b!4621020 m!5457857))

(check-sat (not b!4621026) (not b!4621017) (not b!4621018) (not b!4621030) (not b!4621023) tp_is_empty!29237 (not b!4621028) (not start!462692) (not b!4621027) tp_is_empty!29239 (not b!4621024) (not b!4621025) (not b!4621020) (not b!4621029) (not b!4621019) (not b!4621022))
(check-sat)
(get-model)

(declare-fun d!1455323 () Bool)

(declare-fun e!2882493 () Bool)

(assert (=> d!1455323 e!2882493))

(declare-fun res!1937134 () Bool)

(assert (=> d!1455323 (=> res!1937134 e!2882493)))

(declare-fun e!2882497 () Bool)

(assert (=> d!1455323 (= res!1937134 e!2882497)))

(declare-fun res!1937136 () Bool)

(assert (=> d!1455323 (=> (not res!1937136) (not e!2882497))))

(declare-fun lt!1777250 () Option!11536)

(declare-fun isEmpty!28913 (Option!11536) Bool)

(assert (=> d!1455323 (= res!1937136 (isEmpty!28913 lt!1777250))))

(declare-fun e!2882495 () Option!11536)

(assert (=> d!1455323 (= lt!1777250 e!2882495)))

(declare-fun c!790994 () Bool)

(assert (=> d!1455323 (= c!790994 (and ((_ is Cons!51478) lt!1777238) (= (_1!29489 (h!57512 lt!1777238)) key!4968)))))

(assert (=> d!1455323 (noDuplicateKeys!1486 lt!1777238)))

(assert (=> d!1455323 (= (getPair!278 lt!1777238 key!4968) lt!1777250)))

(declare-fun b!4621073 () Bool)

(declare-fun e!2882494 () Option!11536)

(assert (=> b!4621073 (= e!2882494 None!11535)))

(declare-fun b!4621074 () Bool)

(declare-fun e!2882496 () Bool)

(assert (=> b!4621074 (= e!2882493 e!2882496)))

(declare-fun res!1937133 () Bool)

(assert (=> b!4621074 (=> (not res!1937133) (not e!2882496))))

(assert (=> b!4621074 (= res!1937133 (isDefined!8801 lt!1777250))))

(declare-fun b!4621075 () Bool)

(assert (=> b!4621075 (= e!2882495 (Some!11535 (h!57512 lt!1777238)))))

(declare-fun b!4621076 () Bool)

(assert (=> b!4621076 (= e!2882497 (not (containsKey!2394 lt!1777238 key!4968)))))

(declare-fun b!4621077 () Bool)

(assert (=> b!4621077 (= e!2882494 (getPair!278 (t!358618 lt!1777238) key!4968))))

(declare-fun b!4621078 () Bool)

(declare-fun contains!14488 (List!51602 tuple2!52390) Bool)

(declare-fun get!17033 (Option!11536) tuple2!52390)

(assert (=> b!4621078 (= e!2882496 (contains!14488 lt!1777238 (get!17033 lt!1777250)))))

(declare-fun b!4621079 () Bool)

(assert (=> b!4621079 (= e!2882495 e!2882494)))

(declare-fun c!790993 () Bool)

(assert (=> b!4621079 (= c!790993 ((_ is Cons!51478) lt!1777238))))

(declare-fun b!4621080 () Bool)

(declare-fun res!1937135 () Bool)

(assert (=> b!4621080 (=> (not res!1937135) (not e!2882496))))

(assert (=> b!4621080 (= res!1937135 (= (_1!29489 (get!17033 lt!1777250)) key!4968))))

(assert (= (and d!1455323 c!790994) b!4621075))

(assert (= (and d!1455323 (not c!790994)) b!4621079))

(assert (= (and b!4621079 c!790993) b!4621077))

(assert (= (and b!4621079 (not c!790993)) b!4621073))

(assert (= (and d!1455323 res!1937136) b!4621076))

(assert (= (and d!1455323 (not res!1937134)) b!4621074))

(assert (= (and b!4621074 res!1937133) b!4621080))

(assert (= (and b!4621080 res!1937135) b!4621078))

(declare-fun m!5457877 () Bool)

(assert (=> b!4621077 m!5457877))

(declare-fun m!5457879 () Bool)

(assert (=> d!1455323 m!5457879))

(declare-fun m!5457881 () Bool)

(assert (=> d!1455323 m!5457881))

(declare-fun m!5457883 () Bool)

(assert (=> b!4621076 m!5457883))

(declare-fun m!5457885 () Bool)

(assert (=> b!4621074 m!5457885))

(declare-fun m!5457887 () Bool)

(assert (=> b!4621080 m!5457887))

(assert (=> b!4621078 m!5457887))

(assert (=> b!4621078 m!5457887))

(declare-fun m!5457889 () Bool)

(assert (=> b!4621078 m!5457889))

(assert (=> b!4621022 d!1455323))

(declare-fun d!1455325 () Bool)

(declare-fun dynLambda!21481 (Int tuple2!52392) Bool)

(assert (=> d!1455325 (dynLambda!21481 lambda!190752 lt!1777225)))

(declare-fun lt!1777256 () Unit!111032)

(declare-fun choose!31184 (List!51603 Int tuple2!52392) Unit!111032)

(assert (=> d!1455325 (= lt!1777256 (choose!31184 lt!1777243 lambda!190752 lt!1777225))))

(declare-fun e!2882503 () Bool)

(assert (=> d!1455325 e!2882503))

(declare-fun res!1937139 () Bool)

(assert (=> d!1455325 (=> (not res!1937139) (not e!2882503))))

(assert (=> d!1455325 (= res!1937139 (forall!10790 lt!1777243 lambda!190752))))

(assert (=> d!1455325 (= (forallContained!3014 lt!1777243 lambda!190752 lt!1777225) lt!1777256)))

(declare-fun b!4621089 () Bool)

(assert (=> b!4621089 (= e!2882503 (contains!14486 lt!1777243 lt!1777225))))

(assert (= (and d!1455325 res!1937139) b!4621089))

(declare-fun b_lambda!170629 () Bool)

(assert (=> (not b_lambda!170629) (not d!1455325)))

(declare-fun m!5457899 () Bool)

(assert (=> d!1455325 m!5457899))

(declare-fun m!5457901 () Bool)

(assert (=> d!1455325 m!5457901))

(declare-fun m!5457903 () Bool)

(assert (=> d!1455325 m!5457903))

(assert (=> b!4621089 m!5457783))

(assert (=> b!4621022 d!1455325))

(declare-fun bs!1020064 () Bool)

(declare-fun d!1455329 () Bool)

(assert (= bs!1020064 (and d!1455329 b!4621022)))

(declare-fun lambda!190761 () Int)

(assert (=> bs!1020064 (= lambda!190761 lambda!190752)))

(assert (=> d!1455329 (contains!14487 lt!1777233 (hash!3460 hashF!1389 key!4968))))

(declare-fun lt!1777259 () Unit!111032)

(declare-fun choose!31185 (ListLongMap!3527 K!12865 Hashable!5883) Unit!111032)

(assert (=> d!1455329 (= lt!1777259 (choose!31185 lt!1777233 key!4968 hashF!1389))))

(assert (=> d!1455329 (forall!10790 (toList!4938 lt!1777233) lambda!190761)))

(assert (=> d!1455329 (= (lemmaInGenMapThenLongMapContainsHash!484 lt!1777233 key!4968 hashF!1389) lt!1777259)))

(declare-fun bs!1020065 () Bool)

(assert (= bs!1020065 d!1455329))

(assert (=> bs!1020065 m!5457819))

(assert (=> bs!1020065 m!5457819))

(declare-fun m!5457905 () Bool)

(assert (=> bs!1020065 m!5457905))

(declare-fun m!5457907 () Bool)

(assert (=> bs!1020065 m!5457907))

(declare-fun m!5457909 () Bool)

(assert (=> bs!1020065 m!5457909))

(assert (=> b!4621022 d!1455329))

(declare-fun bs!1020066 () Bool)

(declare-fun d!1455331 () Bool)

(assert (= bs!1020066 (and d!1455331 b!4621022)))

(declare-fun lambda!190768 () Int)

(assert (=> bs!1020066 (= lambda!190768 lambda!190752)))

(declare-fun bs!1020067 () Bool)

(assert (= bs!1020067 (and d!1455331 d!1455329)))

(assert (=> bs!1020067 (= lambda!190768 lambda!190761)))

(declare-fun e!2882508 () Bool)

(assert (=> d!1455331 e!2882508))

(declare-fun res!1937148 () Bool)

(assert (=> d!1455331 (=> (not res!1937148) (not e!2882508))))

(assert (=> d!1455331 (= res!1937148 (forall!10790 (toList!4938 lt!1777233) lambda!190768))))

(declare-fun lt!1777278 () Unit!111032)

(declare-fun choose!31186 (ListLongMap!3527 K!12865 Hashable!5883) Unit!111032)

(assert (=> d!1455331 (= lt!1777278 (choose!31186 lt!1777233 key!4968 hashF!1389))))

(assert (=> d!1455331 (forall!10790 (toList!4938 lt!1777233) lambda!190768)))

(assert (=> d!1455331 (= (lemmaInGenMapThenGetPairDefined!74 lt!1777233 key!4968 hashF!1389) lt!1777278)))

(declare-fun b!4621098 () Bool)

(declare-fun res!1937151 () Bool)

(assert (=> b!4621098 (=> (not res!1937151) (not e!2882508))))

(declare-fun allKeysSameHashInMap!1513 (ListLongMap!3527 Hashable!5883) Bool)

(assert (=> b!4621098 (= res!1937151 (allKeysSameHashInMap!1513 lt!1777233 hashF!1389))))

(declare-fun b!4621099 () Bool)

(declare-fun res!1937150 () Bool)

(assert (=> b!4621099 (=> (not res!1937150) (not e!2882508))))

(assert (=> b!4621099 (= res!1937150 (contains!14485 (extractMap!1542 (toList!4938 lt!1777233)) key!4968))))

(declare-fun b!4621100 () Bool)

(assert (=> b!4621100 (= e!2882508 (isDefined!8801 (getPair!278 (apply!12151 lt!1777233 (hash!3460 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1777276 () Unit!111032)

(assert (=> b!4621100 (= lt!1777276 (forallContained!3014 (toList!4938 lt!1777233) lambda!190768 (tuple2!52393 (hash!3460 hashF!1389 key!4968) (apply!12151 lt!1777233 (hash!3460 hashF!1389 key!4968)))))))

(declare-fun lt!1777283 () Unit!111032)

(declare-fun lt!1777277 () Unit!111032)

(assert (=> b!4621100 (= lt!1777283 lt!1777277)))

(declare-fun lt!1777280 () (_ BitVec 64))

(declare-fun lt!1777279 () List!51602)

(assert (=> b!4621100 (contains!14486 (toList!4938 lt!1777233) (tuple2!52393 lt!1777280 lt!1777279))))

(assert (=> b!4621100 (= lt!1777277 (lemmaGetValueImpliesTupleContained!83 lt!1777233 lt!1777280 lt!1777279))))

(declare-fun e!2882509 () Bool)

(assert (=> b!4621100 e!2882509))

(declare-fun res!1937149 () Bool)

(assert (=> b!4621100 (=> (not res!1937149) (not e!2882509))))

(assert (=> b!4621100 (= res!1937149 (contains!14487 lt!1777233 lt!1777280))))

(assert (=> b!4621100 (= lt!1777279 (apply!12151 lt!1777233 (hash!3460 hashF!1389 key!4968)))))

(assert (=> b!4621100 (= lt!1777280 (hash!3460 hashF!1389 key!4968))))

(declare-fun lt!1777282 () Unit!111032)

(declare-fun lt!1777281 () Unit!111032)

(assert (=> b!4621100 (= lt!1777282 lt!1777281)))

(assert (=> b!4621100 (contains!14487 lt!1777233 (hash!3460 hashF!1389 key!4968))))

(assert (=> b!4621100 (= lt!1777281 (lemmaInGenMapThenLongMapContainsHash!484 lt!1777233 key!4968 hashF!1389))))

(declare-fun b!4621101 () Bool)

(declare-datatypes ((Option!11537 0))(
  ( (None!11536) (Some!11536 (v!45634 List!51602)) )
))
(declare-fun getValueByKey!1417 (List!51603 (_ BitVec 64)) Option!11537)

(assert (=> b!4621101 (= e!2882509 (= (getValueByKey!1417 (toList!4938 lt!1777233) lt!1777280) (Some!11536 lt!1777279)))))

(assert (= (and d!1455331 res!1937148) b!4621098))

(assert (= (and b!4621098 res!1937151) b!4621099))

(assert (= (and b!4621099 res!1937150) b!4621100))

(assert (= (and b!4621100 res!1937149) b!4621101))

(assert (=> b!4621100 m!5457819))

(assert (=> b!4621100 m!5457905))

(declare-fun m!5457911 () Bool)

(assert (=> b!4621100 m!5457911))

(assert (=> b!4621100 m!5457819))

(declare-fun m!5457913 () Bool)

(assert (=> b!4621100 m!5457913))

(declare-fun m!5457915 () Bool)

(assert (=> b!4621100 m!5457915))

(declare-fun m!5457917 () Bool)

(assert (=> b!4621100 m!5457917))

(assert (=> b!4621100 m!5457819))

(declare-fun m!5457919 () Bool)

(assert (=> b!4621100 m!5457919))

(declare-fun m!5457921 () Bool)

(assert (=> b!4621100 m!5457921))

(assert (=> b!4621100 m!5457919))

(assert (=> b!4621100 m!5457915))

(declare-fun m!5457923 () Bool)

(assert (=> b!4621100 m!5457923))

(assert (=> b!4621100 m!5457793))

(declare-fun m!5457925 () Bool)

(assert (=> b!4621098 m!5457925))

(declare-fun m!5457927 () Bool)

(assert (=> b!4621101 m!5457927))

(declare-fun m!5457929 () Bool)

(assert (=> b!4621099 m!5457929))

(assert (=> b!4621099 m!5457929))

(declare-fun m!5457931 () Bool)

(assert (=> b!4621099 m!5457931))

(declare-fun m!5457933 () Bool)

(assert (=> d!1455331 m!5457933))

(declare-fun m!5457935 () Bool)

(assert (=> d!1455331 m!5457935))

(assert (=> d!1455331 m!5457933))

(assert (=> b!4621022 d!1455331))

(declare-fun d!1455333 () Bool)

(assert (=> d!1455333 (containsKey!2394 oldBucket!40 key!4968)))

(declare-fun lt!1777286 () Unit!111032)

(declare-fun choose!31187 (List!51602 K!12865 Hashable!5883) Unit!111032)

(assert (=> d!1455333 (= lt!1777286 (choose!31187 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1455333 (noDuplicateKeys!1486 oldBucket!40)))

(assert (=> d!1455333 (= (lemmaGetPairDefinedThenContainsKey!32 oldBucket!40 key!4968 hashF!1389) lt!1777286)))

(declare-fun bs!1020068 () Bool)

(assert (= bs!1020068 d!1455333))

(assert (=> bs!1020068 m!5457801))

(declare-fun m!5457937 () Bool)

(assert (=> bs!1020068 m!5457937))

(assert (=> bs!1020068 m!5457813))

(assert (=> b!4621022 d!1455333))

(declare-fun d!1455335 () Bool)

(assert (=> d!1455335 (= (isDefined!8801 (getPair!278 lt!1777238 key!4968)) (not (isEmpty!28913 (getPair!278 lt!1777238 key!4968))))))

(declare-fun bs!1020069 () Bool)

(assert (= bs!1020069 d!1455335))

(assert (=> bs!1020069 m!5457795))

(declare-fun m!5457939 () Bool)

(assert (=> bs!1020069 m!5457939))

(assert (=> b!4621022 d!1455335))

(declare-fun d!1455337 () Bool)

(declare-fun res!1937156 () Bool)

(declare-fun e!2882514 () Bool)

(assert (=> d!1455337 (=> res!1937156 e!2882514)))

(assert (=> d!1455337 (= res!1937156 (and ((_ is Cons!51478) (t!358618 oldBucket!40)) (= (_1!29489 (h!57512 (t!358618 oldBucket!40))) key!4968)))))

(assert (=> d!1455337 (= (containsKey!2394 (t!358618 oldBucket!40) key!4968) e!2882514)))

(declare-fun b!4621106 () Bool)

(declare-fun e!2882515 () Bool)

(assert (=> b!4621106 (= e!2882514 e!2882515)))

(declare-fun res!1937157 () Bool)

(assert (=> b!4621106 (=> (not res!1937157) (not e!2882515))))

(assert (=> b!4621106 (= res!1937157 ((_ is Cons!51478) (t!358618 oldBucket!40)))))

(declare-fun b!4621107 () Bool)

(assert (=> b!4621107 (= e!2882515 (containsKey!2394 (t!358618 (t!358618 oldBucket!40)) key!4968))))

(assert (= (and d!1455337 (not res!1937156)) b!4621106))

(assert (= (and b!4621106 res!1937157) b!4621107))

(declare-fun m!5457941 () Bool)

(assert (=> b!4621107 m!5457941))

(assert (=> b!4621022 d!1455337))

(declare-fun d!1455339 () Bool)

(declare-fun lt!1777289 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8759 (List!51603) (InoxSet tuple2!52392))

(assert (=> d!1455339 (= lt!1777289 (select (content!8759 lt!1777243) lt!1777225))))

(declare-fun e!2882520 () Bool)

(assert (=> d!1455339 (= lt!1777289 e!2882520)))

(declare-fun res!1937163 () Bool)

(assert (=> d!1455339 (=> (not res!1937163) (not e!2882520))))

(assert (=> d!1455339 (= res!1937163 ((_ is Cons!51479) lt!1777243))))

(assert (=> d!1455339 (= (contains!14486 lt!1777243 lt!1777225) lt!1777289)))

(declare-fun b!4621112 () Bool)

(declare-fun e!2882521 () Bool)

(assert (=> b!4621112 (= e!2882520 e!2882521)))

(declare-fun res!1937162 () Bool)

(assert (=> b!4621112 (=> res!1937162 e!2882521)))

(assert (=> b!4621112 (= res!1937162 (= (h!57513 lt!1777243) lt!1777225))))

(declare-fun b!4621113 () Bool)

(assert (=> b!4621113 (= e!2882521 (contains!14486 (t!358619 lt!1777243) lt!1777225))))

(assert (= (and d!1455339 res!1937163) b!4621112))

(assert (= (and b!4621112 (not res!1937162)) b!4621113))

(declare-fun m!5457943 () Bool)

(assert (=> d!1455339 m!5457943))

(declare-fun m!5457945 () Bool)

(assert (=> d!1455339 m!5457945))

(declare-fun m!5457947 () Bool)

(assert (=> b!4621113 m!5457947))

(assert (=> b!4621022 d!1455339))

(declare-fun d!1455341 () Bool)

(declare-fun e!2882527 () Bool)

(assert (=> d!1455341 e!2882527))

(declare-fun res!1937166 () Bool)

(assert (=> d!1455341 (=> res!1937166 e!2882527)))

(declare-fun lt!1777300 () Bool)

(assert (=> d!1455341 (= res!1937166 (not lt!1777300))))

(declare-fun lt!1777301 () Bool)

(assert (=> d!1455341 (= lt!1777300 lt!1777301)))

(declare-fun lt!1777299 () Unit!111032)

(declare-fun e!2882526 () Unit!111032)

(assert (=> d!1455341 (= lt!1777299 e!2882526)))

(declare-fun c!791000 () Bool)

(assert (=> d!1455341 (= c!791000 lt!1777301)))

(declare-fun containsKey!2395 (List!51603 (_ BitVec 64)) Bool)

(assert (=> d!1455341 (= lt!1777301 (containsKey!2395 (toList!4938 lt!1777233) lt!1777230))))

(assert (=> d!1455341 (= (contains!14487 lt!1777233 lt!1777230) lt!1777300)))

(declare-fun b!4621120 () Bool)

(declare-fun lt!1777298 () Unit!111032)

(assert (=> b!4621120 (= e!2882526 lt!1777298)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1319 (List!51603 (_ BitVec 64)) Unit!111032)

(assert (=> b!4621120 (= lt!1777298 (lemmaContainsKeyImpliesGetValueByKeyDefined!1319 (toList!4938 lt!1777233) lt!1777230))))

(declare-fun isDefined!8802 (Option!11537) Bool)

(assert (=> b!4621120 (isDefined!8802 (getValueByKey!1417 (toList!4938 lt!1777233) lt!1777230))))

(declare-fun b!4621121 () Bool)

(declare-fun Unit!111045 () Unit!111032)

(assert (=> b!4621121 (= e!2882526 Unit!111045)))

(declare-fun b!4621122 () Bool)

(assert (=> b!4621122 (= e!2882527 (isDefined!8802 (getValueByKey!1417 (toList!4938 lt!1777233) lt!1777230)))))

(assert (= (and d!1455341 c!791000) b!4621120))

(assert (= (and d!1455341 (not c!791000)) b!4621121))

(assert (= (and d!1455341 (not res!1937166)) b!4621122))

(declare-fun m!5457949 () Bool)

(assert (=> d!1455341 m!5457949))

(declare-fun m!5457951 () Bool)

(assert (=> b!4621120 m!5457951))

(declare-fun m!5457953 () Bool)

(assert (=> b!4621120 m!5457953))

(assert (=> b!4621120 m!5457953))

(declare-fun m!5457955 () Bool)

(assert (=> b!4621120 m!5457955))

(assert (=> b!4621122 m!5457953))

(assert (=> b!4621122 m!5457953))

(assert (=> b!4621122 m!5457955))

(assert (=> b!4621022 d!1455341))

(declare-fun d!1455343 () Bool)

(assert (=> d!1455343 (contains!14486 (toList!4938 lt!1777233) (tuple2!52393 lt!1777230 lt!1777238))))

(declare-fun lt!1777304 () Unit!111032)

(declare-fun choose!31189 (ListLongMap!3527 (_ BitVec 64) List!51602) Unit!111032)

(assert (=> d!1455343 (= lt!1777304 (choose!31189 lt!1777233 lt!1777230 lt!1777238))))

(assert (=> d!1455343 (contains!14487 lt!1777233 lt!1777230)))

(assert (=> d!1455343 (= (lemmaGetValueImpliesTupleContained!83 lt!1777233 lt!1777230 lt!1777238) lt!1777304)))

(declare-fun bs!1020070 () Bool)

(assert (= bs!1020070 d!1455343))

(declare-fun m!5457957 () Bool)

(assert (=> bs!1020070 m!5457957))

(declare-fun m!5457959 () Bool)

(assert (=> bs!1020070 m!5457959))

(assert (=> bs!1020070 m!5457785))

(assert (=> b!4621022 d!1455343))

(declare-fun d!1455345 () Bool)

(declare-fun res!1937167 () Bool)

(declare-fun e!2882528 () Bool)

(assert (=> d!1455345 (=> res!1937167 e!2882528)))

(assert (=> d!1455345 (= res!1937167 (and ((_ is Cons!51478) oldBucket!40) (= (_1!29489 (h!57512 oldBucket!40)) key!4968)))))

(assert (=> d!1455345 (= (containsKey!2394 oldBucket!40 key!4968) e!2882528)))

(declare-fun b!4621124 () Bool)

(declare-fun e!2882529 () Bool)

(assert (=> b!4621124 (= e!2882528 e!2882529)))

(declare-fun res!1937168 () Bool)

(assert (=> b!4621124 (=> (not res!1937168) (not e!2882529))))

(assert (=> b!4621124 (= res!1937168 ((_ is Cons!51478) oldBucket!40))))

(declare-fun b!4621125 () Bool)

(assert (=> b!4621125 (= e!2882529 (containsKey!2394 (t!358618 oldBucket!40) key!4968))))

(assert (= (and d!1455345 (not res!1937167)) b!4621124))

(assert (= (and b!4621124 res!1937168) b!4621125))

(assert (=> b!4621125 m!5457791))

(assert (=> b!4621022 d!1455345))

(declare-fun d!1455347 () Bool)

(declare-fun get!17034 (Option!11537) List!51602)

(assert (=> d!1455347 (= (apply!12151 lt!1777233 lt!1777230) (get!17034 (getValueByKey!1417 (toList!4938 lt!1777233) lt!1777230)))))

(declare-fun bs!1020071 () Bool)

(assert (= bs!1020071 d!1455347))

(assert (=> bs!1020071 m!5457953))

(assert (=> bs!1020071 m!5457953))

(declare-fun m!5457961 () Bool)

(assert (=> bs!1020071 m!5457961))

(assert (=> b!4621022 d!1455347))

(declare-fun d!1455349 () Bool)

(declare-fun hash!3461 (Hashable!5883 K!12865) (_ BitVec 64))

(assert (=> d!1455349 (= (hash!3460 hashF!1389 key!4968) (hash!3461 hashF!1389 key!4968))))

(declare-fun bs!1020072 () Bool)

(assert (= bs!1020072 d!1455349))

(declare-fun m!5457963 () Bool)

(assert (=> bs!1020072 m!5457963))

(assert (=> b!4621024 d!1455349))

(declare-fun b!4621185 () Bool)

(assert (=> b!4621185 true))

(declare-fun bs!1020158 () Bool)

(declare-fun b!4621186 () Bool)

(assert (= bs!1020158 (and b!4621186 b!4621185)))

(declare-fun lambda!190845 () Int)

(declare-fun lambda!190844 () Int)

(assert (=> bs!1020158 (= lambda!190845 lambda!190844)))

(assert (=> b!4621186 true))

(declare-fun lambda!190846 () Int)

(declare-fun lt!1777504 () ListMap!4241)

(assert (=> bs!1020158 (= (= lt!1777504 lt!1777241) (= lambda!190846 lambda!190844))))

(assert (=> b!4621186 (= (= lt!1777504 lt!1777241) (= lambda!190846 lambda!190845))))

(assert (=> b!4621186 true))

(declare-fun bs!1020159 () Bool)

(declare-fun d!1455351 () Bool)

(assert (= bs!1020159 (and d!1455351 b!4621185)))

(declare-fun lambda!190847 () Int)

(declare-fun lt!1777508 () ListMap!4241)

(assert (=> bs!1020159 (= (= lt!1777508 lt!1777241) (= lambda!190847 lambda!190844))))

(declare-fun bs!1020160 () Bool)

(assert (= bs!1020160 (and d!1455351 b!4621186)))

(assert (=> bs!1020160 (= (= lt!1777508 lt!1777241) (= lambda!190847 lambda!190845))))

(assert (=> bs!1020160 (= (= lt!1777508 lt!1777504) (= lambda!190847 lambda!190846))))

(assert (=> d!1455351 true))

(declare-fun b!4621182 () Bool)

(declare-fun e!2882564 () Bool)

(declare-fun forall!10792 (List!51602 Int) Bool)

(assert (=> b!4621182 (= e!2882564 (forall!10792 (toList!4937 lt!1777241) lambda!190846))))

(declare-fun bm!322221 () Bool)

(declare-fun c!791009 () Bool)

(declare-fun call!322227 () Bool)

(assert (=> bm!322221 (= call!322227 (forall!10792 (toList!4937 lt!1777241) (ite c!791009 lambda!190844 lambda!190846)))))

(declare-fun b!4621183 () Bool)

(declare-fun res!1937207 () Bool)

(declare-fun e!2882566 () Bool)

(assert (=> b!4621183 (=> (not res!1937207) (not e!2882566))))

(assert (=> b!4621183 (= res!1937207 (forall!10792 (toList!4937 lt!1777241) lambda!190847))))

(assert (=> d!1455351 e!2882566))

(declare-fun res!1937208 () Bool)

(assert (=> d!1455351 (=> (not res!1937208) (not e!2882566))))

(assert (=> d!1455351 (= res!1937208 (forall!10792 oldBucket!40 lambda!190847))))

(declare-fun e!2882565 () ListMap!4241)

(assert (=> d!1455351 (= lt!1777508 e!2882565)))

(assert (=> d!1455351 (= c!791009 ((_ is Nil!51478) oldBucket!40))))

(assert (=> d!1455351 (noDuplicateKeys!1486 oldBucket!40)))

(assert (=> d!1455351 (= (addToMapMapFromBucket!947 oldBucket!40 lt!1777241) lt!1777508)))

(declare-fun b!4621184 () Bool)

(declare-fun invariantList!1188 (List!51602) Bool)

(assert (=> b!4621184 (= e!2882566 (invariantList!1188 (toList!4937 lt!1777508)))))

(assert (=> b!4621185 (= e!2882565 lt!1777241)))

(declare-fun lt!1777496 () Unit!111032)

(declare-fun call!322228 () Unit!111032)

(assert (=> b!4621185 (= lt!1777496 call!322228)))

(declare-fun call!322226 () Bool)

(assert (=> b!4621185 call!322226))

(declare-fun lt!1777513 () Unit!111032)

(assert (=> b!4621185 (= lt!1777513 lt!1777496)))

(assert (=> b!4621185 call!322227))

(declare-fun lt!1777498 () Unit!111032)

(declare-fun Unit!111046 () Unit!111032)

(assert (=> b!4621185 (= lt!1777498 Unit!111046)))

(declare-fun bm!322222 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!490 (ListMap!4241) Unit!111032)

(assert (=> bm!322222 (= call!322228 (lemmaContainsAllItsOwnKeys!490 lt!1777241))))

(declare-fun bm!322223 () Bool)

(assert (=> bm!322223 (= call!322226 (forall!10792 (toList!4937 lt!1777241) (ite c!791009 lambda!190844 lambda!190845)))))

(assert (=> b!4621186 (= e!2882565 lt!1777504)))

(declare-fun lt!1777501 () ListMap!4241)

(assert (=> b!4621186 (= lt!1777501 (+!1852 lt!1777241 (h!57512 oldBucket!40)))))

(assert (=> b!4621186 (= lt!1777504 (addToMapMapFromBucket!947 (t!358618 oldBucket!40) (+!1852 lt!1777241 (h!57512 oldBucket!40))))))

(declare-fun lt!1777502 () Unit!111032)

(assert (=> b!4621186 (= lt!1777502 call!322228)))

(assert (=> b!4621186 call!322226))

(declare-fun lt!1777511 () Unit!111032)

(assert (=> b!4621186 (= lt!1777511 lt!1777502)))

(assert (=> b!4621186 (forall!10792 (toList!4937 lt!1777501) lambda!190846)))

(declare-fun lt!1777514 () Unit!111032)

(declare-fun Unit!111048 () Unit!111032)

(assert (=> b!4621186 (= lt!1777514 Unit!111048)))

(assert (=> b!4621186 (forall!10792 (t!358618 oldBucket!40) lambda!190846)))

(declare-fun lt!1777506 () Unit!111032)

(declare-fun Unit!111050 () Unit!111032)

(assert (=> b!4621186 (= lt!1777506 Unit!111050)))

(declare-fun lt!1777500 () Unit!111032)

(declare-fun Unit!111051 () Unit!111032)

(assert (=> b!4621186 (= lt!1777500 Unit!111051)))

(declare-fun lt!1777497 () Unit!111032)

(declare-fun forallContained!3016 (List!51602 Int tuple2!52390) Unit!111032)

(assert (=> b!4621186 (= lt!1777497 (forallContained!3016 (toList!4937 lt!1777501) lambda!190846 (h!57512 oldBucket!40)))))

(assert (=> b!4621186 (contains!14485 lt!1777501 (_1!29489 (h!57512 oldBucket!40)))))

(declare-fun lt!1777516 () Unit!111032)

(declare-fun Unit!111053 () Unit!111032)

(assert (=> b!4621186 (= lt!1777516 Unit!111053)))

(assert (=> b!4621186 (contains!14485 lt!1777504 (_1!29489 (h!57512 oldBucket!40)))))

(declare-fun lt!1777499 () Unit!111032)

(declare-fun Unit!111054 () Unit!111032)

(assert (=> b!4621186 (= lt!1777499 Unit!111054)))

(assert (=> b!4621186 (forall!10792 oldBucket!40 lambda!190846)))

(declare-fun lt!1777515 () Unit!111032)

(declare-fun Unit!111056 () Unit!111032)

(assert (=> b!4621186 (= lt!1777515 Unit!111056)))

(assert (=> b!4621186 (forall!10792 (toList!4937 lt!1777501) lambda!190846)))

(declare-fun lt!1777503 () Unit!111032)

(declare-fun Unit!111058 () Unit!111032)

(assert (=> b!4621186 (= lt!1777503 Unit!111058)))

(declare-fun lt!1777507 () Unit!111032)

(declare-fun Unit!111059 () Unit!111032)

(assert (=> b!4621186 (= lt!1777507 Unit!111059)))

(declare-fun lt!1777505 () Unit!111032)

(declare-fun addForallContainsKeyThenBeforeAdding!489 (ListMap!4241 ListMap!4241 K!12865 V!13111) Unit!111032)

(assert (=> b!4621186 (= lt!1777505 (addForallContainsKeyThenBeforeAdding!489 lt!1777241 lt!1777504 (_1!29489 (h!57512 oldBucket!40)) (_2!29489 (h!57512 oldBucket!40))))))

(assert (=> b!4621186 call!322227))

(declare-fun lt!1777510 () Unit!111032)

(assert (=> b!4621186 (= lt!1777510 lt!1777505)))

(assert (=> b!4621186 (forall!10792 (toList!4937 lt!1777241) lambda!190846)))

(declare-fun lt!1777509 () Unit!111032)

(declare-fun Unit!111063 () Unit!111032)

(assert (=> b!4621186 (= lt!1777509 Unit!111063)))

(declare-fun res!1937209 () Bool)

(assert (=> b!4621186 (= res!1937209 (forall!10792 oldBucket!40 lambda!190846))))

(assert (=> b!4621186 (=> (not res!1937209) (not e!2882564))))

(assert (=> b!4621186 e!2882564))

(declare-fun lt!1777512 () Unit!111032)

(declare-fun Unit!111064 () Unit!111032)

(assert (=> b!4621186 (= lt!1777512 Unit!111064)))

(assert (= (and d!1455351 c!791009) b!4621185))

(assert (= (and d!1455351 (not c!791009)) b!4621186))

(assert (= (and b!4621186 res!1937209) b!4621182))

(assert (= (or b!4621185 b!4621186) bm!322222))

(assert (= (or b!4621185 b!4621186) bm!322223))

(assert (= (or b!4621185 b!4621186) bm!322221))

(assert (= (and d!1455351 res!1937208) b!4621183))

(assert (= (and b!4621183 res!1937207) b!4621184))

(declare-fun m!5458141 () Bool)

(assert (=> bm!322223 m!5458141))

(declare-fun m!5458143 () Bool)

(assert (=> d!1455351 m!5458143))

(assert (=> d!1455351 m!5457813))

(declare-fun m!5458145 () Bool)

(assert (=> b!4621186 m!5458145))

(declare-fun m!5458147 () Bool)

(assert (=> b!4621186 m!5458147))

(declare-fun m!5458149 () Bool)

(assert (=> b!4621186 m!5458149))

(declare-fun m!5458151 () Bool)

(assert (=> b!4621186 m!5458151))

(assert (=> b!4621186 m!5458145))

(declare-fun m!5458153 () Bool)

(assert (=> b!4621186 m!5458153))

(declare-fun m!5458155 () Bool)

(assert (=> b!4621186 m!5458155))

(declare-fun m!5458157 () Bool)

(assert (=> b!4621186 m!5458157))

(assert (=> b!4621186 m!5458155))

(declare-fun m!5458159 () Bool)

(assert (=> b!4621186 m!5458159))

(declare-fun m!5458161 () Bool)

(assert (=> b!4621186 m!5458161))

(assert (=> b!4621186 m!5458161))

(declare-fun m!5458163 () Bool)

(assert (=> b!4621186 m!5458163))

(declare-fun m!5458165 () Bool)

(assert (=> b!4621184 m!5458165))

(declare-fun m!5458167 () Bool)

(assert (=> b!4621183 m!5458167))

(declare-fun m!5458169 () Bool)

(assert (=> bm!322221 m!5458169))

(assert (=> b!4621182 m!5458159))

(declare-fun m!5458171 () Bool)

(assert (=> bm!322222 m!5458171))

(assert (=> b!4621023 d!1455351))

(declare-fun bs!1020161 () Bool)

(declare-fun d!1455381 () Bool)

(assert (= bs!1020161 (and d!1455381 b!4621022)))

(declare-fun lambda!190850 () Int)

(assert (=> bs!1020161 (= lambda!190850 lambda!190752)))

(declare-fun bs!1020162 () Bool)

(assert (= bs!1020162 (and d!1455381 d!1455329)))

(assert (=> bs!1020162 (= lambda!190850 lambda!190761)))

(declare-fun bs!1020163 () Bool)

(assert (= bs!1020163 (and d!1455381 d!1455331)))

(assert (=> bs!1020163 (= lambda!190850 lambda!190768)))

(declare-fun lt!1777535 () ListMap!4241)

(assert (=> d!1455381 (invariantList!1188 (toList!4937 lt!1777535))))

(declare-fun e!2882581 () ListMap!4241)

(assert (=> d!1455381 (= lt!1777535 e!2882581)))

(declare-fun c!791018 () Bool)

(assert (=> d!1455381 (= c!791018 ((_ is Cons!51479) Nil!51479))))

(assert (=> d!1455381 (forall!10790 Nil!51479 lambda!190850)))

(assert (=> d!1455381 (= (extractMap!1542 Nil!51479) lt!1777535)))

(declare-fun b!4621211 () Bool)

(assert (=> b!4621211 (= e!2882581 (addToMapMapFromBucket!947 (_2!29490 (h!57513 Nil!51479)) (extractMap!1542 (t!358619 Nil!51479))))))

(declare-fun b!4621212 () Bool)

(assert (=> b!4621212 (= e!2882581 (ListMap!4242 Nil!51478))))

(assert (= (and d!1455381 c!791018) b!4621211))

(assert (= (and d!1455381 (not c!791018)) b!4621212))

(declare-fun m!5458173 () Bool)

(assert (=> d!1455381 m!5458173))

(declare-fun m!5458175 () Bool)

(assert (=> d!1455381 m!5458175))

(declare-fun m!5458177 () Bool)

(assert (=> b!4621211 m!5458177))

(assert (=> b!4621211 m!5458177))

(declare-fun m!5458179 () Bool)

(assert (=> b!4621211 m!5458179))

(assert (=> b!4621023 d!1455381))

(declare-fun d!1455383 () Bool)

(declare-fun res!1937220 () Bool)

(declare-fun e!2882586 () Bool)

(assert (=> d!1455383 (=> res!1937220 e!2882586)))

(assert (=> d!1455383 (= res!1937220 (not ((_ is Cons!51478) newBucket!224)))))

(assert (=> d!1455383 (= (noDuplicateKeys!1486 newBucket!224) e!2882586)))

(declare-fun b!4621217 () Bool)

(declare-fun e!2882587 () Bool)

(assert (=> b!4621217 (= e!2882586 e!2882587)))

(declare-fun res!1937221 () Bool)

(assert (=> b!4621217 (=> (not res!1937221) (not e!2882587))))

(assert (=> b!4621217 (= res!1937221 (not (containsKey!2394 (t!358618 newBucket!224) (_1!29489 (h!57512 newBucket!224)))))))

(declare-fun b!4621218 () Bool)

(assert (=> b!4621218 (= e!2882587 (noDuplicateKeys!1486 (t!358618 newBucket!224)))))

(assert (= (and d!1455383 (not res!1937220)) b!4621217))

(assert (= (and b!4621217 res!1937221) b!4621218))

(declare-fun m!5458181 () Bool)

(assert (=> b!4621217 m!5458181))

(declare-fun m!5458183 () Bool)

(assert (=> b!4621218 m!5458183))

(assert (=> b!4621025 d!1455383))

(declare-fun d!1455385 () Bool)

(declare-fun e!2882624 () Bool)

(assert (=> d!1455385 e!2882624))

(declare-fun res!1937246 () Bool)

(assert (=> d!1455385 (=> res!1937246 e!2882624)))

(declare-fun e!2882625 () Bool)

(assert (=> d!1455385 (= res!1937246 e!2882625)))

(declare-fun res!1937247 () Bool)

(assert (=> d!1455385 (=> (not res!1937247) (not e!2882625))))

(declare-fun lt!1777578 () Bool)

(assert (=> d!1455385 (= res!1937247 (not lt!1777578))))

(declare-fun lt!1777579 () Bool)

(assert (=> d!1455385 (= lt!1777578 lt!1777579)))

(declare-fun lt!1777582 () Unit!111032)

(declare-fun e!2882627 () Unit!111032)

(assert (=> d!1455385 (= lt!1777582 e!2882627)))

(declare-fun c!791033 () Bool)

(assert (=> d!1455385 (= c!791033 lt!1777579)))

(declare-fun containsKey!2396 (List!51602 K!12865) Bool)

(assert (=> d!1455385 (= lt!1777579 (containsKey!2396 (toList!4937 lt!1777227) key!4968))))

(assert (=> d!1455385 (= (contains!14485 lt!1777227 key!4968) lt!1777578)))

(declare-fun bm!322230 () Bool)

(declare-fun call!322235 () Bool)

(declare-datatypes ((List!51604 0))(
  ( (Nil!51480) (Cons!51480 (h!57516 K!12865) (t!358622 List!51604)) )
))
(declare-fun e!2882626 () List!51604)

(declare-fun contains!14489 (List!51604 K!12865) Bool)

(assert (=> bm!322230 (= call!322235 (contains!14489 e!2882626 key!4968))))

(declare-fun c!791032 () Bool)

(assert (=> bm!322230 (= c!791032 c!791033)))

(declare-fun b!4621268 () Bool)

(declare-fun keys!18117 (ListMap!4241) List!51604)

(assert (=> b!4621268 (= e!2882626 (keys!18117 lt!1777227))))

(declare-fun b!4621269 () Bool)

(assert (=> b!4621269 (= e!2882625 (not (contains!14489 (keys!18117 lt!1777227) key!4968)))))

(declare-fun b!4621270 () Bool)

(declare-fun e!2882628 () Unit!111032)

(declare-fun Unit!111068 () Unit!111032)

(assert (=> b!4621270 (= e!2882628 Unit!111068)))

(declare-fun b!4621271 () Bool)

(declare-fun e!2882629 () Bool)

(assert (=> b!4621271 (= e!2882624 e!2882629)))

(declare-fun res!1937245 () Bool)

(assert (=> b!4621271 (=> (not res!1937245) (not e!2882629))))

(declare-datatypes ((Option!11538 0))(
  ( (None!11537) (Some!11537 (v!45635 V!13111)) )
))
(declare-fun isDefined!8803 (Option!11538) Bool)

(declare-fun getValueByKey!1418 (List!51602 K!12865) Option!11538)

(assert (=> b!4621271 (= res!1937245 (isDefined!8803 (getValueByKey!1418 (toList!4937 lt!1777227) key!4968)))))

(declare-fun b!4621272 () Bool)

(assert (=> b!4621272 (= e!2882627 e!2882628)))

(declare-fun c!791034 () Bool)

(assert (=> b!4621272 (= c!791034 call!322235)))

(declare-fun b!4621273 () Bool)

(assert (=> b!4621273 (= e!2882629 (contains!14489 (keys!18117 lt!1777227) key!4968))))

(declare-fun b!4621274 () Bool)

(declare-fun lt!1777575 () Unit!111032)

(assert (=> b!4621274 (= e!2882627 lt!1777575)))

(declare-fun lt!1777581 () Unit!111032)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1320 (List!51602 K!12865) Unit!111032)

(assert (=> b!4621274 (= lt!1777581 (lemmaContainsKeyImpliesGetValueByKeyDefined!1320 (toList!4937 lt!1777227) key!4968))))

(assert (=> b!4621274 (isDefined!8803 (getValueByKey!1418 (toList!4937 lt!1777227) key!4968))))

(declare-fun lt!1777580 () Unit!111032)

(assert (=> b!4621274 (= lt!1777580 lt!1777581)))

(declare-fun lemmaInListThenGetKeysListContains!633 (List!51602 K!12865) Unit!111032)

(assert (=> b!4621274 (= lt!1777575 (lemmaInListThenGetKeysListContains!633 (toList!4937 lt!1777227) key!4968))))

(assert (=> b!4621274 call!322235))

(declare-fun b!4621275 () Bool)

(declare-fun getKeysList!638 (List!51602) List!51604)

(assert (=> b!4621275 (= e!2882626 (getKeysList!638 (toList!4937 lt!1777227)))))

(declare-fun b!4621276 () Bool)

(assert (=> b!4621276 false))

(declare-fun lt!1777577 () Unit!111032)

(declare-fun lt!1777576 () Unit!111032)

(assert (=> b!4621276 (= lt!1777577 lt!1777576)))

(assert (=> b!4621276 (containsKey!2396 (toList!4937 lt!1777227) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!637 (List!51602 K!12865) Unit!111032)

(assert (=> b!4621276 (= lt!1777576 (lemmaInGetKeysListThenContainsKey!637 (toList!4937 lt!1777227) key!4968))))

(declare-fun Unit!111069 () Unit!111032)

(assert (=> b!4621276 (= e!2882628 Unit!111069)))

(assert (= (and d!1455385 c!791033) b!4621274))

(assert (= (and d!1455385 (not c!791033)) b!4621272))

(assert (= (and b!4621272 c!791034) b!4621276))

(assert (= (and b!4621272 (not c!791034)) b!4621270))

(assert (= (or b!4621274 b!4621272) bm!322230))

(assert (= (and bm!322230 c!791032) b!4621275))

(assert (= (and bm!322230 (not c!791032)) b!4621268))

(assert (= (and d!1455385 res!1937247) b!4621269))

(assert (= (and d!1455385 (not res!1937246)) b!4621271))

(assert (= (and b!4621271 res!1937245) b!4621273))

(declare-fun m!5458255 () Bool)

(assert (=> b!4621275 m!5458255))

(declare-fun m!5458257 () Bool)

(assert (=> bm!322230 m!5458257))

(declare-fun m!5458259 () Bool)

(assert (=> b!4621273 m!5458259))

(assert (=> b!4621273 m!5458259))

(declare-fun m!5458261 () Bool)

(assert (=> b!4621273 m!5458261))

(assert (=> b!4621269 m!5458259))

(assert (=> b!4621269 m!5458259))

(assert (=> b!4621269 m!5458261))

(declare-fun m!5458263 () Bool)

(assert (=> b!4621271 m!5458263))

(assert (=> b!4621271 m!5458263))

(declare-fun m!5458265 () Bool)

(assert (=> b!4621271 m!5458265))

(declare-fun m!5458267 () Bool)

(assert (=> b!4621276 m!5458267))

(declare-fun m!5458269 () Bool)

(assert (=> b!4621276 m!5458269))

(assert (=> b!4621268 m!5458259))

(assert (=> d!1455385 m!5458267))

(declare-fun m!5458271 () Bool)

(assert (=> b!4621274 m!5458271))

(assert (=> b!4621274 m!5458263))

(assert (=> b!4621274 m!5458263))

(assert (=> b!4621274 m!5458265))

(declare-fun m!5458273 () Bool)

(assert (=> b!4621274 m!5458273))

(assert (=> b!4621017 d!1455385))

(declare-fun bs!1020174 () Bool)

(declare-fun d!1455405 () Bool)

(assert (= bs!1020174 (and d!1455405 b!4621022)))

(declare-fun lambda!190855 () Int)

(assert (=> bs!1020174 (= lambda!190855 lambda!190752)))

(declare-fun bs!1020175 () Bool)

(assert (= bs!1020175 (and d!1455405 d!1455329)))

(assert (=> bs!1020175 (= lambda!190855 lambda!190761)))

(declare-fun bs!1020176 () Bool)

(assert (= bs!1020176 (and d!1455405 d!1455331)))

(assert (=> bs!1020176 (= lambda!190855 lambda!190768)))

(declare-fun bs!1020177 () Bool)

(assert (= bs!1020177 (and d!1455405 d!1455381)))

(assert (=> bs!1020177 (= lambda!190855 lambda!190850)))

(declare-fun lt!1777585 () ListMap!4241)

(assert (=> d!1455405 (invariantList!1188 (toList!4937 lt!1777585))))

(declare-fun e!2882634 () ListMap!4241)

(assert (=> d!1455405 (= lt!1777585 e!2882634)))

(declare-fun c!791035 () Bool)

(assert (=> d!1455405 (= c!791035 ((_ is Cons!51479) lt!1777243))))

(assert (=> d!1455405 (forall!10790 lt!1777243 lambda!190855)))

(assert (=> d!1455405 (= (extractMap!1542 lt!1777243) lt!1777585)))

(declare-fun b!4621281 () Bool)

(assert (=> b!4621281 (= e!2882634 (addToMapMapFromBucket!947 (_2!29490 (h!57513 lt!1777243)) (extractMap!1542 (t!358619 lt!1777243))))))

(declare-fun b!4621282 () Bool)

(assert (=> b!4621282 (= e!2882634 (ListMap!4242 Nil!51478))))

(assert (= (and d!1455405 c!791035) b!4621281))

(assert (= (and d!1455405 (not c!791035)) b!4621282))

(declare-fun m!5458275 () Bool)

(assert (=> d!1455405 m!5458275))

(declare-fun m!5458279 () Bool)

(assert (=> d!1455405 m!5458279))

(declare-fun m!5458281 () Bool)

(assert (=> b!4621281 m!5458281))

(assert (=> b!4621281 m!5458281))

(declare-fun m!5458285 () Bool)

(assert (=> b!4621281 m!5458285))

(assert (=> b!4621017 d!1455405))

(declare-fun d!1455409 () Bool)

(declare-fun res!1937254 () Bool)

(declare-fun e!2882637 () Bool)

(assert (=> d!1455409 (=> res!1937254 e!2882637)))

(assert (=> d!1455409 (= res!1937254 (not ((_ is Cons!51478) oldBucket!40)))))

(assert (=> d!1455409 (= (noDuplicateKeys!1486 oldBucket!40) e!2882637)))

(declare-fun b!4621285 () Bool)

(declare-fun e!2882638 () Bool)

(assert (=> b!4621285 (= e!2882637 e!2882638)))

(declare-fun res!1937255 () Bool)

(assert (=> b!4621285 (=> (not res!1937255) (not e!2882638))))

(assert (=> b!4621285 (= res!1937255 (not (containsKey!2394 (t!358618 oldBucket!40) (_1!29489 (h!57512 oldBucket!40)))))))

(declare-fun b!4621286 () Bool)

(assert (=> b!4621286 (= e!2882638 (noDuplicateKeys!1486 (t!358618 oldBucket!40)))))

(assert (= (and d!1455409 (not res!1937254)) b!4621285))

(assert (= (and b!4621285 res!1937255) b!4621286))

(declare-fun m!5458289 () Bool)

(assert (=> b!4621285 m!5458289))

(declare-fun m!5458291 () Bool)

(assert (=> b!4621286 m!5458291))

(assert (=> start!462692 d!1455409))

(declare-fun bs!1020178 () Bool)

(declare-fun d!1455411 () Bool)

(assert (= bs!1020178 (and d!1455411 b!4621185)))

(declare-fun lambda!190858 () Int)

(assert (=> bs!1020178 (not (= lambda!190858 lambda!190844))))

(declare-fun bs!1020179 () Bool)

(assert (= bs!1020179 (and d!1455411 b!4621186)))

(assert (=> bs!1020179 (not (= lambda!190858 lambda!190845))))

(assert (=> bs!1020179 (not (= lambda!190858 lambda!190846))))

(declare-fun bs!1020180 () Bool)

(assert (= bs!1020180 (and d!1455411 d!1455351)))

(assert (=> bs!1020180 (not (= lambda!190858 lambda!190847))))

(assert (=> d!1455411 true))

(assert (=> d!1455411 true))

(assert (=> d!1455411 (= (allKeysSameHash!1340 oldBucket!40 hash!414 hashF!1389) (forall!10792 oldBucket!40 lambda!190858))))

(declare-fun bs!1020181 () Bool)

(assert (= bs!1020181 d!1455411))

(declare-fun m!5458293 () Bool)

(assert (=> bs!1020181 m!5458293))

(assert (=> b!4621027 d!1455411))

(declare-fun bs!1020182 () Bool)

(declare-fun d!1455413 () Bool)

(assert (= bs!1020182 (and d!1455413 d!1455411)))

(declare-fun lambda!190859 () Int)

(assert (=> bs!1020182 (= lambda!190859 lambda!190858)))

(declare-fun bs!1020183 () Bool)

(assert (= bs!1020183 (and d!1455413 d!1455351)))

(assert (=> bs!1020183 (not (= lambda!190859 lambda!190847))))

(declare-fun bs!1020184 () Bool)

(assert (= bs!1020184 (and d!1455413 b!4621186)))

(assert (=> bs!1020184 (not (= lambda!190859 lambda!190845))))

(assert (=> bs!1020184 (not (= lambda!190859 lambda!190846))))

(declare-fun bs!1020185 () Bool)

(assert (= bs!1020185 (and d!1455413 b!4621185)))

(assert (=> bs!1020185 (not (= lambda!190859 lambda!190844))))

(assert (=> d!1455413 true))

(assert (=> d!1455413 true))

(assert (=> d!1455413 (= (allKeysSameHash!1340 newBucket!224 hash!414 hashF!1389) (forall!10792 newBucket!224 lambda!190859))))

(declare-fun bs!1020186 () Bool)

(assert (= bs!1020186 d!1455413))

(declare-fun m!5458295 () Bool)

(assert (=> bs!1020186 m!5458295))

(assert (=> b!4621029 d!1455413))

(declare-fun d!1455415 () Bool)

(assert (=> d!1455415 (eq!801 (addToMapMapFromBucket!947 (Cons!51478 lt!1777232 lt!1777231) (ListMap!4242 Nil!51478)) (+!1852 (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777232))))

(declare-fun lt!1777598 () Unit!111032)

(declare-fun choose!31191 (tuple2!52390 List!51602 ListMap!4241) Unit!111032)

(assert (=> d!1455415 (= lt!1777598 (choose!31191 lt!1777232 lt!1777231 (ListMap!4242 Nil!51478)))))

(assert (=> d!1455415 (noDuplicateKeys!1486 lt!1777231)))

(assert (=> d!1455415 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!52 lt!1777232 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777598)))

(declare-fun bs!1020189 () Bool)

(assert (= bs!1020189 d!1455415))

(assert (=> bs!1020189 m!5457827))

(assert (=> bs!1020189 m!5457829))

(declare-fun m!5458317 () Bool)

(assert (=> bs!1020189 m!5458317))

(declare-fun m!5458319 () Bool)

(assert (=> bs!1020189 m!5458319))

(assert (=> bs!1020189 m!5457841))

(assert (=> bs!1020189 m!5457829))

(assert (=> bs!1020189 m!5457849))

(assert (=> bs!1020189 m!5457841))

(assert (=> bs!1020189 m!5457827))

(assert (=> b!4621018 d!1455415))

(declare-fun d!1455423 () Bool)

(assert (=> d!1455423 (eq!801 (addToMapMapFromBucket!947 (Cons!51478 lt!1777237 lt!1777229) (ListMap!4242 Nil!51478)) (+!1852 (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777237))))

(declare-fun lt!1777599 () Unit!111032)

(assert (=> d!1455423 (= lt!1777599 (choose!31191 lt!1777237 lt!1777229 (ListMap!4242 Nil!51478)))))

(assert (=> d!1455423 (noDuplicateKeys!1486 lt!1777229)))

(assert (=> d!1455423 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!52 lt!1777237 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777599)))

(declare-fun bs!1020190 () Bool)

(assert (= bs!1020190 d!1455423))

(assert (=> bs!1020190 m!5457839))

(assert (=> bs!1020190 m!5457823))

(declare-fun m!5458321 () Bool)

(assert (=> bs!1020190 m!5458321))

(declare-fun m!5458323 () Bool)

(assert (=> bs!1020190 m!5458323))

(assert (=> bs!1020190 m!5457821))

(assert (=> bs!1020190 m!5457823))

(assert (=> bs!1020190 m!5457825))

(assert (=> bs!1020190 m!5457821))

(assert (=> bs!1020190 m!5457839))

(assert (=> b!4621018 d!1455423))

(declare-fun bs!1020191 () Bool)

(declare-fun b!4621319 () Bool)

(assert (= bs!1020191 (and b!4621319 d!1455411)))

(declare-fun lambda!190860 () Int)

(assert (=> bs!1020191 (not (= lambda!190860 lambda!190858))))

(declare-fun bs!1020192 () Bool)

(assert (= bs!1020192 (and b!4621319 d!1455351)))

(assert (=> bs!1020192 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190860 lambda!190847))))

(declare-fun bs!1020193 () Bool)

(assert (= bs!1020193 (and b!4621319 d!1455413)))

(assert (=> bs!1020193 (not (= lambda!190860 lambda!190859))))

(declare-fun bs!1020194 () Bool)

(assert (= bs!1020194 (and b!4621319 b!4621186)))

(assert (=> bs!1020194 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190860 lambda!190845))))

(assert (=> bs!1020194 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190860 lambda!190846))))

(declare-fun bs!1020195 () Bool)

(assert (= bs!1020195 (and b!4621319 b!4621185)))

(assert (=> bs!1020195 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190860 lambda!190844))))

(assert (=> b!4621319 true))

(declare-fun bs!1020196 () Bool)

(declare-fun b!4621320 () Bool)

(assert (= bs!1020196 (and b!4621320 d!1455411)))

(declare-fun lambda!190861 () Int)

(assert (=> bs!1020196 (not (= lambda!190861 lambda!190858))))

(declare-fun bs!1020197 () Bool)

(assert (= bs!1020197 (and b!4621320 d!1455351)))

(assert (=> bs!1020197 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190861 lambda!190847))))

(declare-fun bs!1020198 () Bool)

(assert (= bs!1020198 (and b!4621320 d!1455413)))

(assert (=> bs!1020198 (not (= lambda!190861 lambda!190859))))

(declare-fun bs!1020199 () Bool)

(assert (= bs!1020199 (and b!4621320 b!4621186)))

(assert (=> bs!1020199 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190861 lambda!190845))))

(assert (=> bs!1020199 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190861 lambda!190846))))

(declare-fun bs!1020200 () Bool)

(assert (= bs!1020200 (and b!4621320 b!4621319)))

(assert (=> bs!1020200 (= lambda!190861 lambda!190860)))

(declare-fun bs!1020201 () Bool)

(assert (= bs!1020201 (and b!4621320 b!4621185)))

(assert (=> bs!1020201 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190861 lambda!190844))))

(assert (=> b!4621320 true))

(declare-fun lambda!190862 () Int)

(assert (=> bs!1020196 (not (= lambda!190862 lambda!190858))))

(declare-fun lt!1777608 () ListMap!4241)

(assert (=> bs!1020197 (= (= lt!1777608 lt!1777508) (= lambda!190862 lambda!190847))))

(assert (=> bs!1020198 (not (= lambda!190862 lambda!190859))))

(assert (=> bs!1020199 (= (= lt!1777608 lt!1777241) (= lambda!190862 lambda!190845))))

(assert (=> bs!1020199 (= (= lt!1777608 lt!1777504) (= lambda!190862 lambda!190846))))

(assert (=> b!4621320 (= (= lt!1777608 (ListMap!4242 Nil!51478)) (= lambda!190862 lambda!190861))))

(assert (=> bs!1020200 (= (= lt!1777608 (ListMap!4242 Nil!51478)) (= lambda!190862 lambda!190860))))

(assert (=> bs!1020201 (= (= lt!1777608 lt!1777241) (= lambda!190862 lambda!190844))))

(assert (=> b!4621320 true))

(declare-fun bs!1020202 () Bool)

(declare-fun d!1455425 () Bool)

(assert (= bs!1020202 (and d!1455425 d!1455411)))

(declare-fun lambda!190863 () Int)

(assert (=> bs!1020202 (not (= lambda!190863 lambda!190858))))

(declare-fun bs!1020203 () Bool)

(assert (= bs!1020203 (and d!1455425 d!1455351)))

(declare-fun lt!1777612 () ListMap!4241)

(assert (=> bs!1020203 (= (= lt!1777612 lt!1777508) (= lambda!190863 lambda!190847))))

(declare-fun bs!1020204 () Bool)

(assert (= bs!1020204 (and d!1455425 d!1455413)))

(assert (=> bs!1020204 (not (= lambda!190863 lambda!190859))))

(declare-fun bs!1020205 () Bool)

(assert (= bs!1020205 (and d!1455425 b!4621186)))

(assert (=> bs!1020205 (= (= lt!1777612 lt!1777241) (= lambda!190863 lambda!190845))))

(assert (=> bs!1020205 (= (= lt!1777612 lt!1777504) (= lambda!190863 lambda!190846))))

(declare-fun bs!1020206 () Bool)

(assert (= bs!1020206 (and d!1455425 b!4621320)))

(assert (=> bs!1020206 (= (= lt!1777612 (ListMap!4242 Nil!51478)) (= lambda!190863 lambda!190861))))

(declare-fun bs!1020207 () Bool)

(assert (= bs!1020207 (and d!1455425 b!4621319)))

(assert (=> bs!1020207 (= (= lt!1777612 (ListMap!4242 Nil!51478)) (= lambda!190863 lambda!190860))))

(assert (=> bs!1020206 (= (= lt!1777612 lt!1777608) (= lambda!190863 lambda!190862))))

(declare-fun bs!1020208 () Bool)

(assert (= bs!1020208 (and d!1455425 b!4621185)))

(assert (=> bs!1020208 (= (= lt!1777612 lt!1777241) (= lambda!190863 lambda!190844))))

(assert (=> d!1455425 true))

(declare-fun b!4621316 () Bool)

(declare-fun e!2882654 () Bool)

(assert (=> b!4621316 (= e!2882654 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190862))))

(declare-fun call!322237 () Bool)

(declare-fun c!791042 () Bool)

(declare-fun bm!322231 () Bool)

(assert (=> bm!322231 (= call!322237 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791042 lambda!190860 lambda!190862)))))

(declare-fun b!4621317 () Bool)

(declare-fun res!1937268 () Bool)

(declare-fun e!2882656 () Bool)

(assert (=> b!4621317 (=> (not res!1937268) (not e!2882656))))

(assert (=> b!4621317 (= res!1937268 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190863))))

(assert (=> d!1455425 e!2882656))

(declare-fun res!1937269 () Bool)

(assert (=> d!1455425 (=> (not res!1937269) (not e!2882656))))

(assert (=> d!1455425 (= res!1937269 (forall!10792 lt!1777231 lambda!190863))))

(declare-fun e!2882655 () ListMap!4241)

(assert (=> d!1455425 (= lt!1777612 e!2882655)))

(assert (=> d!1455425 (= c!791042 ((_ is Nil!51478) lt!1777231))))

(assert (=> d!1455425 (noDuplicateKeys!1486 lt!1777231)))

(assert (=> d!1455425 (= (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777612)))

(declare-fun b!4621318 () Bool)

(assert (=> b!4621318 (= e!2882656 (invariantList!1188 (toList!4937 lt!1777612)))))

(assert (=> b!4621319 (= e!2882655 (ListMap!4242 Nil!51478))))

(declare-fun lt!1777600 () Unit!111032)

(declare-fun call!322238 () Unit!111032)

(assert (=> b!4621319 (= lt!1777600 call!322238)))

(declare-fun call!322236 () Bool)

(assert (=> b!4621319 call!322236))

(declare-fun lt!1777617 () Unit!111032)

(assert (=> b!4621319 (= lt!1777617 lt!1777600)))

(assert (=> b!4621319 call!322237))

(declare-fun lt!1777602 () Unit!111032)

(declare-fun Unit!111075 () Unit!111032)

(assert (=> b!4621319 (= lt!1777602 Unit!111075)))

(declare-fun bm!322232 () Bool)

(assert (=> bm!322232 (= call!322238 (lemmaContainsAllItsOwnKeys!490 (ListMap!4242 Nil!51478)))))

(declare-fun bm!322233 () Bool)

(assert (=> bm!322233 (= call!322236 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791042 lambda!190860 lambda!190861)))))

(assert (=> b!4621320 (= e!2882655 lt!1777608)))

(declare-fun lt!1777605 () ListMap!4241)

(assert (=> b!4621320 (= lt!1777605 (+!1852 (ListMap!4242 Nil!51478) (h!57512 lt!1777231)))))

(assert (=> b!4621320 (= lt!1777608 (addToMapMapFromBucket!947 (t!358618 lt!1777231) (+!1852 (ListMap!4242 Nil!51478) (h!57512 lt!1777231))))))

(declare-fun lt!1777606 () Unit!111032)

(assert (=> b!4621320 (= lt!1777606 call!322238)))

(assert (=> b!4621320 call!322236))

(declare-fun lt!1777615 () Unit!111032)

(assert (=> b!4621320 (= lt!1777615 lt!1777606)))

(assert (=> b!4621320 (forall!10792 (toList!4937 lt!1777605) lambda!190862)))

(declare-fun lt!1777618 () Unit!111032)

(declare-fun Unit!111079 () Unit!111032)

(assert (=> b!4621320 (= lt!1777618 Unit!111079)))

(assert (=> b!4621320 (forall!10792 (t!358618 lt!1777231) lambda!190862)))

(declare-fun lt!1777610 () Unit!111032)

(declare-fun Unit!111080 () Unit!111032)

(assert (=> b!4621320 (= lt!1777610 Unit!111080)))

(declare-fun lt!1777604 () Unit!111032)

(declare-fun Unit!111082 () Unit!111032)

(assert (=> b!4621320 (= lt!1777604 Unit!111082)))

(declare-fun lt!1777601 () Unit!111032)

(assert (=> b!4621320 (= lt!1777601 (forallContained!3016 (toList!4937 lt!1777605) lambda!190862 (h!57512 lt!1777231)))))

(assert (=> b!4621320 (contains!14485 lt!1777605 (_1!29489 (h!57512 lt!1777231)))))

(declare-fun lt!1777620 () Unit!111032)

(declare-fun Unit!111083 () Unit!111032)

(assert (=> b!4621320 (= lt!1777620 Unit!111083)))

(assert (=> b!4621320 (contains!14485 lt!1777608 (_1!29489 (h!57512 lt!1777231)))))

(declare-fun lt!1777603 () Unit!111032)

(declare-fun Unit!111084 () Unit!111032)

(assert (=> b!4621320 (= lt!1777603 Unit!111084)))

(assert (=> b!4621320 (forall!10792 lt!1777231 lambda!190862)))

(declare-fun lt!1777619 () Unit!111032)

(declare-fun Unit!111085 () Unit!111032)

(assert (=> b!4621320 (= lt!1777619 Unit!111085)))

(assert (=> b!4621320 (forall!10792 (toList!4937 lt!1777605) lambda!190862)))

(declare-fun lt!1777607 () Unit!111032)

(declare-fun Unit!111087 () Unit!111032)

(assert (=> b!4621320 (= lt!1777607 Unit!111087)))

(declare-fun lt!1777611 () Unit!111032)

(declare-fun Unit!111088 () Unit!111032)

(assert (=> b!4621320 (= lt!1777611 Unit!111088)))

(declare-fun lt!1777609 () Unit!111032)

(assert (=> b!4621320 (= lt!1777609 (addForallContainsKeyThenBeforeAdding!489 (ListMap!4242 Nil!51478) lt!1777608 (_1!29489 (h!57512 lt!1777231)) (_2!29489 (h!57512 lt!1777231))))))

(assert (=> b!4621320 call!322237))

(declare-fun lt!1777614 () Unit!111032)

(assert (=> b!4621320 (= lt!1777614 lt!1777609)))

(assert (=> b!4621320 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190862)))

(declare-fun lt!1777613 () Unit!111032)

(declare-fun Unit!111089 () Unit!111032)

(assert (=> b!4621320 (= lt!1777613 Unit!111089)))

(declare-fun res!1937270 () Bool)

(assert (=> b!4621320 (= res!1937270 (forall!10792 lt!1777231 lambda!190862))))

(assert (=> b!4621320 (=> (not res!1937270) (not e!2882654))))

(assert (=> b!4621320 e!2882654))

(declare-fun lt!1777616 () Unit!111032)

(declare-fun Unit!111091 () Unit!111032)

(assert (=> b!4621320 (= lt!1777616 Unit!111091)))

(assert (= (and d!1455425 c!791042) b!4621319))

(assert (= (and d!1455425 (not c!791042)) b!4621320))

(assert (= (and b!4621320 res!1937270) b!4621316))

(assert (= (or b!4621319 b!4621320) bm!322232))

(assert (= (or b!4621319 b!4621320) bm!322233))

(assert (= (or b!4621319 b!4621320) bm!322231))

(assert (= (and d!1455425 res!1937269) b!4621317))

(assert (= (and b!4621317 res!1937268) b!4621318))

(declare-fun m!5458325 () Bool)

(assert (=> bm!322233 m!5458325))

(declare-fun m!5458327 () Bool)

(assert (=> d!1455425 m!5458327))

(assert (=> d!1455425 m!5458319))

(declare-fun m!5458329 () Bool)

(assert (=> b!4621320 m!5458329))

(declare-fun m!5458331 () Bool)

(assert (=> b!4621320 m!5458331))

(declare-fun m!5458333 () Bool)

(assert (=> b!4621320 m!5458333))

(declare-fun m!5458335 () Bool)

(assert (=> b!4621320 m!5458335))

(assert (=> b!4621320 m!5458329))

(declare-fun m!5458337 () Bool)

(assert (=> b!4621320 m!5458337))

(declare-fun m!5458339 () Bool)

(assert (=> b!4621320 m!5458339))

(declare-fun m!5458341 () Bool)

(assert (=> b!4621320 m!5458341))

(assert (=> b!4621320 m!5458339))

(declare-fun m!5458343 () Bool)

(assert (=> b!4621320 m!5458343))

(declare-fun m!5458345 () Bool)

(assert (=> b!4621320 m!5458345))

(assert (=> b!4621320 m!5458345))

(declare-fun m!5458347 () Bool)

(assert (=> b!4621320 m!5458347))

(declare-fun m!5458349 () Bool)

(assert (=> b!4621318 m!5458349))

(declare-fun m!5458351 () Bool)

(assert (=> b!4621317 m!5458351))

(declare-fun m!5458353 () Bool)

(assert (=> bm!322231 m!5458353))

(assert (=> b!4621316 m!5458343))

(declare-fun m!5458355 () Bool)

(assert (=> bm!322232 m!5458355))

(assert (=> b!4621018 d!1455425))

(declare-fun d!1455427 () Bool)

(declare-fun content!8760 (List!51602) (InoxSet tuple2!52390))

(assert (=> d!1455427 (= (eq!801 (addToMapMapFromBucket!947 (Cons!51478 lt!1777237 lt!1777229) (ListMap!4242 Nil!51478)) (+!1852 (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777237)) (= (content!8760 (toList!4937 (addToMapMapFromBucket!947 (Cons!51478 lt!1777237 lt!1777229) (ListMap!4242 Nil!51478)))) (content!8760 (toList!4937 (+!1852 (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777237)))))))

(declare-fun bs!1020209 () Bool)

(assert (= bs!1020209 d!1455427))

(declare-fun m!5458357 () Bool)

(assert (=> bs!1020209 m!5458357))

(declare-fun m!5458359 () Bool)

(assert (=> bs!1020209 m!5458359))

(assert (=> b!4621018 d!1455427))

(declare-fun d!1455429 () Bool)

(declare-fun e!2882659 () Bool)

(assert (=> d!1455429 e!2882659))

(declare-fun res!1937275 () Bool)

(assert (=> d!1455429 (=> (not res!1937275) (not e!2882659))))

(declare-fun lt!1777631 () ListMap!4241)

(assert (=> d!1455429 (= res!1937275 (contains!14485 lt!1777631 (_1!29489 lt!1777237)))))

(declare-fun lt!1777630 () List!51602)

(assert (=> d!1455429 (= lt!1777631 (ListMap!4242 lt!1777630))))

(declare-fun lt!1777629 () Unit!111032)

(declare-fun lt!1777632 () Unit!111032)

(assert (=> d!1455429 (= lt!1777629 lt!1777632)))

(assert (=> d!1455429 (= (getValueByKey!1418 lt!1777630 (_1!29489 lt!1777237)) (Some!11537 (_2!29489 lt!1777237)))))

(declare-fun lemmaContainsTupThenGetReturnValue!832 (List!51602 K!12865 V!13111) Unit!111032)

(assert (=> d!1455429 (= lt!1777632 (lemmaContainsTupThenGetReturnValue!832 lt!1777630 (_1!29489 lt!1777237) (_2!29489 lt!1777237)))))

(declare-fun insertNoDuplicatedKeys!340 (List!51602 K!12865 V!13111) List!51602)

(assert (=> d!1455429 (= lt!1777630 (insertNoDuplicatedKeys!340 (toList!4937 (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478))) (_1!29489 lt!1777237) (_2!29489 lt!1777237)))))

(assert (=> d!1455429 (= (+!1852 (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777237) lt!1777631)))

(declare-fun b!4621325 () Bool)

(declare-fun res!1937276 () Bool)

(assert (=> b!4621325 (=> (not res!1937276) (not e!2882659))))

(assert (=> b!4621325 (= res!1937276 (= (getValueByKey!1418 (toList!4937 lt!1777631) (_1!29489 lt!1777237)) (Some!11537 (_2!29489 lt!1777237))))))

(declare-fun b!4621326 () Bool)

(assert (=> b!4621326 (= e!2882659 (contains!14488 (toList!4937 lt!1777631) lt!1777237))))

(assert (= (and d!1455429 res!1937275) b!4621325))

(assert (= (and b!4621325 res!1937276) b!4621326))

(declare-fun m!5458361 () Bool)

(assert (=> d!1455429 m!5458361))

(declare-fun m!5458363 () Bool)

(assert (=> d!1455429 m!5458363))

(declare-fun m!5458365 () Bool)

(assert (=> d!1455429 m!5458365))

(declare-fun m!5458367 () Bool)

(assert (=> d!1455429 m!5458367))

(declare-fun m!5458369 () Bool)

(assert (=> b!4621325 m!5458369))

(declare-fun m!5458371 () Bool)

(assert (=> b!4621326 m!5458371))

(assert (=> b!4621018 d!1455429))

(declare-fun d!1455431 () Bool)

(assert (=> d!1455431 (= (head!9620 newBucket!224) (h!57512 newBucket!224))))

(assert (=> b!4621018 d!1455431))

(declare-fun d!1455433 () Bool)

(declare-fun e!2882660 () Bool)

(assert (=> d!1455433 e!2882660))

(declare-fun res!1937278 () Bool)

(assert (=> d!1455433 (=> res!1937278 e!2882660)))

(declare-fun e!2882661 () Bool)

(assert (=> d!1455433 (= res!1937278 e!2882661)))

(declare-fun res!1937279 () Bool)

(assert (=> d!1455433 (=> (not res!1937279) (not e!2882661))))

(declare-fun lt!1777636 () Bool)

(assert (=> d!1455433 (= res!1937279 (not lt!1777636))))

(declare-fun lt!1777637 () Bool)

(assert (=> d!1455433 (= lt!1777636 lt!1777637)))

(declare-fun lt!1777640 () Unit!111032)

(declare-fun e!2882663 () Unit!111032)

(assert (=> d!1455433 (= lt!1777640 e!2882663)))

(declare-fun c!791044 () Bool)

(assert (=> d!1455433 (= c!791044 lt!1777637)))

(assert (=> d!1455433 (= lt!1777637 (containsKey!2396 (toList!4937 (extractMap!1542 lt!1777242)) key!4968))))

(assert (=> d!1455433 (= (contains!14485 (extractMap!1542 lt!1777242) key!4968) lt!1777636)))

(declare-fun bm!322234 () Bool)

(declare-fun call!322239 () Bool)

(declare-fun e!2882662 () List!51604)

(assert (=> bm!322234 (= call!322239 (contains!14489 e!2882662 key!4968))))

(declare-fun c!791043 () Bool)

(assert (=> bm!322234 (= c!791043 c!791044)))

(declare-fun b!4621327 () Bool)

(assert (=> b!4621327 (= e!2882662 (keys!18117 (extractMap!1542 lt!1777242)))))

(declare-fun b!4621328 () Bool)

(assert (=> b!4621328 (= e!2882661 (not (contains!14489 (keys!18117 (extractMap!1542 lt!1777242)) key!4968)))))

(declare-fun b!4621329 () Bool)

(declare-fun e!2882664 () Unit!111032)

(declare-fun Unit!111092 () Unit!111032)

(assert (=> b!4621329 (= e!2882664 Unit!111092)))

(declare-fun b!4621330 () Bool)

(declare-fun e!2882665 () Bool)

(assert (=> b!4621330 (= e!2882660 e!2882665)))

(declare-fun res!1937277 () Bool)

(assert (=> b!4621330 (=> (not res!1937277) (not e!2882665))))

(assert (=> b!4621330 (= res!1937277 (isDefined!8803 (getValueByKey!1418 (toList!4937 (extractMap!1542 lt!1777242)) key!4968)))))

(declare-fun b!4621331 () Bool)

(assert (=> b!4621331 (= e!2882663 e!2882664)))

(declare-fun c!791045 () Bool)

(assert (=> b!4621331 (= c!791045 call!322239)))

(declare-fun b!4621332 () Bool)

(assert (=> b!4621332 (= e!2882665 (contains!14489 (keys!18117 (extractMap!1542 lt!1777242)) key!4968))))

(declare-fun b!4621333 () Bool)

(declare-fun lt!1777633 () Unit!111032)

(assert (=> b!4621333 (= e!2882663 lt!1777633)))

(declare-fun lt!1777639 () Unit!111032)

(assert (=> b!4621333 (= lt!1777639 (lemmaContainsKeyImpliesGetValueByKeyDefined!1320 (toList!4937 (extractMap!1542 lt!1777242)) key!4968))))

(assert (=> b!4621333 (isDefined!8803 (getValueByKey!1418 (toList!4937 (extractMap!1542 lt!1777242)) key!4968))))

(declare-fun lt!1777638 () Unit!111032)

(assert (=> b!4621333 (= lt!1777638 lt!1777639)))

(assert (=> b!4621333 (= lt!1777633 (lemmaInListThenGetKeysListContains!633 (toList!4937 (extractMap!1542 lt!1777242)) key!4968))))

(assert (=> b!4621333 call!322239))

(declare-fun b!4621334 () Bool)

(assert (=> b!4621334 (= e!2882662 (getKeysList!638 (toList!4937 (extractMap!1542 lt!1777242))))))

(declare-fun b!4621335 () Bool)

(assert (=> b!4621335 false))

(declare-fun lt!1777635 () Unit!111032)

(declare-fun lt!1777634 () Unit!111032)

(assert (=> b!4621335 (= lt!1777635 lt!1777634)))

(assert (=> b!4621335 (containsKey!2396 (toList!4937 (extractMap!1542 lt!1777242)) key!4968)))

(assert (=> b!4621335 (= lt!1777634 (lemmaInGetKeysListThenContainsKey!637 (toList!4937 (extractMap!1542 lt!1777242)) key!4968))))

(declare-fun Unit!111093 () Unit!111032)

(assert (=> b!4621335 (= e!2882664 Unit!111093)))

(assert (= (and d!1455433 c!791044) b!4621333))

(assert (= (and d!1455433 (not c!791044)) b!4621331))

(assert (= (and b!4621331 c!791045) b!4621335))

(assert (= (and b!4621331 (not c!791045)) b!4621329))

(assert (= (or b!4621333 b!4621331) bm!322234))

(assert (= (and bm!322234 c!791043) b!4621334))

(assert (= (and bm!322234 (not c!791043)) b!4621327))

(assert (= (and d!1455433 res!1937279) b!4621328))

(assert (= (and d!1455433 (not res!1937278)) b!4621330))

(assert (= (and b!4621330 res!1937277) b!4621332))

(declare-fun m!5458373 () Bool)

(assert (=> b!4621334 m!5458373))

(declare-fun m!5458375 () Bool)

(assert (=> bm!322234 m!5458375))

(assert (=> b!4621332 m!5457833))

(declare-fun m!5458377 () Bool)

(assert (=> b!4621332 m!5458377))

(assert (=> b!4621332 m!5458377))

(declare-fun m!5458379 () Bool)

(assert (=> b!4621332 m!5458379))

(assert (=> b!4621328 m!5457833))

(assert (=> b!4621328 m!5458377))

(assert (=> b!4621328 m!5458377))

(assert (=> b!4621328 m!5458379))

(declare-fun m!5458381 () Bool)

(assert (=> b!4621330 m!5458381))

(assert (=> b!4621330 m!5458381))

(declare-fun m!5458383 () Bool)

(assert (=> b!4621330 m!5458383))

(declare-fun m!5458385 () Bool)

(assert (=> b!4621335 m!5458385))

(declare-fun m!5458387 () Bool)

(assert (=> b!4621335 m!5458387))

(assert (=> b!4621327 m!5457833))

(assert (=> b!4621327 m!5458377))

(assert (=> d!1455433 m!5458385))

(declare-fun m!5458389 () Bool)

(assert (=> b!4621333 m!5458389))

(assert (=> b!4621333 m!5458381))

(assert (=> b!4621333 m!5458381))

(assert (=> b!4621333 m!5458383))

(declare-fun m!5458391 () Bool)

(assert (=> b!4621333 m!5458391))

(assert (=> b!4621018 d!1455433))

(declare-fun d!1455435 () Bool)

(assert (=> d!1455435 (= (eq!801 (addToMapMapFromBucket!947 (Cons!51478 lt!1777232 lt!1777231) (ListMap!4242 Nil!51478)) (+!1852 (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777232)) (= (content!8760 (toList!4937 (addToMapMapFromBucket!947 (Cons!51478 lt!1777232 lt!1777231) (ListMap!4242 Nil!51478)))) (content!8760 (toList!4937 (+!1852 (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777232)))))))

(declare-fun bs!1020210 () Bool)

(assert (= bs!1020210 d!1455435))

(declare-fun m!5458393 () Bool)

(assert (=> bs!1020210 m!5458393))

(declare-fun m!5458395 () Bool)

(assert (=> bs!1020210 m!5458395))

(assert (=> b!4621018 d!1455435))

(declare-fun bs!1020211 () Bool)

(declare-fun b!4621339 () Bool)

(assert (= bs!1020211 (and b!4621339 d!1455411)))

(declare-fun lambda!190864 () Int)

(assert (=> bs!1020211 (not (= lambda!190864 lambda!190858))))

(declare-fun bs!1020212 () Bool)

(assert (= bs!1020212 (and b!4621339 d!1455351)))

(assert (=> bs!1020212 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190864 lambda!190847))))

(declare-fun bs!1020213 () Bool)

(assert (= bs!1020213 (and b!4621339 d!1455413)))

(assert (=> bs!1020213 (not (= lambda!190864 lambda!190859))))

(declare-fun bs!1020214 () Bool)

(assert (= bs!1020214 (and b!4621339 b!4621186)))

(assert (=> bs!1020214 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190864 lambda!190845))))

(assert (=> bs!1020214 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190864 lambda!190846))))

(declare-fun bs!1020215 () Bool)

(assert (= bs!1020215 (and b!4621339 b!4621320)))

(assert (=> bs!1020215 (= lambda!190864 lambda!190861)))

(declare-fun bs!1020216 () Bool)

(assert (= bs!1020216 (and b!4621339 b!4621319)))

(assert (=> bs!1020216 (= lambda!190864 lambda!190860)))

(declare-fun bs!1020217 () Bool)

(assert (= bs!1020217 (and b!4621339 d!1455425)))

(assert (=> bs!1020217 (= (= (ListMap!4242 Nil!51478) lt!1777612) (= lambda!190864 lambda!190863))))

(assert (=> bs!1020215 (= (= (ListMap!4242 Nil!51478) lt!1777608) (= lambda!190864 lambda!190862))))

(declare-fun bs!1020218 () Bool)

(assert (= bs!1020218 (and b!4621339 b!4621185)))

(assert (=> bs!1020218 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190864 lambda!190844))))

(assert (=> b!4621339 true))

(declare-fun bs!1020219 () Bool)

(declare-fun b!4621340 () Bool)

(assert (= bs!1020219 (and b!4621340 d!1455411)))

(declare-fun lambda!190865 () Int)

(assert (=> bs!1020219 (not (= lambda!190865 lambda!190858))))

(declare-fun bs!1020220 () Bool)

(assert (= bs!1020220 (and b!4621340 d!1455351)))

(assert (=> bs!1020220 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190865 lambda!190847))))

(declare-fun bs!1020221 () Bool)

(assert (= bs!1020221 (and b!4621340 d!1455413)))

(assert (=> bs!1020221 (not (= lambda!190865 lambda!190859))))

(declare-fun bs!1020222 () Bool)

(assert (= bs!1020222 (and b!4621340 b!4621186)))

(assert (=> bs!1020222 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190865 lambda!190845))))

(assert (=> bs!1020222 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190865 lambda!190846))))

(declare-fun bs!1020223 () Bool)

(assert (= bs!1020223 (and b!4621340 b!4621319)))

(assert (=> bs!1020223 (= lambda!190865 lambda!190860)))

(declare-fun bs!1020224 () Bool)

(assert (= bs!1020224 (and b!4621340 d!1455425)))

(assert (=> bs!1020224 (= (= (ListMap!4242 Nil!51478) lt!1777612) (= lambda!190865 lambda!190863))))

(declare-fun bs!1020225 () Bool)

(assert (= bs!1020225 (and b!4621340 b!4621320)))

(assert (=> bs!1020225 (= (= (ListMap!4242 Nil!51478) lt!1777608) (= lambda!190865 lambda!190862))))

(declare-fun bs!1020226 () Bool)

(assert (= bs!1020226 (and b!4621340 b!4621185)))

(assert (=> bs!1020226 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190865 lambda!190844))))

(declare-fun bs!1020227 () Bool)

(assert (= bs!1020227 (and b!4621340 b!4621339)))

(assert (=> bs!1020227 (= lambda!190865 lambda!190864)))

(assert (=> bs!1020225 (= lambda!190865 lambda!190861)))

(assert (=> b!4621340 true))

(declare-fun lambda!190866 () Int)

(assert (=> bs!1020219 (not (= lambda!190866 lambda!190858))))

(assert (=> bs!1020221 (not (= lambda!190866 lambda!190859))))

(declare-fun lt!1777649 () ListMap!4241)

(assert (=> bs!1020222 (= (= lt!1777649 lt!1777241) (= lambda!190866 lambda!190845))))

(assert (=> bs!1020222 (= (= lt!1777649 lt!1777504) (= lambda!190866 lambda!190846))))

(assert (=> bs!1020223 (= (= lt!1777649 (ListMap!4242 Nil!51478)) (= lambda!190866 lambda!190860))))

(assert (=> bs!1020224 (= (= lt!1777649 lt!1777612) (= lambda!190866 lambda!190863))))

(assert (=> bs!1020225 (= (= lt!1777649 lt!1777608) (= lambda!190866 lambda!190862))))

(assert (=> bs!1020226 (= (= lt!1777649 lt!1777241) (= lambda!190866 lambda!190844))))

(assert (=> b!4621340 (= (= lt!1777649 (ListMap!4242 Nil!51478)) (= lambda!190866 lambda!190865))))

(assert (=> bs!1020220 (= (= lt!1777649 lt!1777508) (= lambda!190866 lambda!190847))))

(assert (=> bs!1020227 (= (= lt!1777649 (ListMap!4242 Nil!51478)) (= lambda!190866 lambda!190864))))

(assert (=> bs!1020225 (= (= lt!1777649 (ListMap!4242 Nil!51478)) (= lambda!190866 lambda!190861))))

(assert (=> b!4621340 true))

(declare-fun bs!1020228 () Bool)

(declare-fun d!1455437 () Bool)

(assert (= bs!1020228 (and d!1455437 d!1455411)))

(declare-fun lambda!190867 () Int)

(assert (=> bs!1020228 (not (= lambda!190867 lambda!190858))))

(declare-fun bs!1020229 () Bool)

(assert (= bs!1020229 (and d!1455437 d!1455413)))

(assert (=> bs!1020229 (not (= lambda!190867 lambda!190859))))

(declare-fun bs!1020230 () Bool)

(assert (= bs!1020230 (and d!1455437 b!4621340)))

(declare-fun lt!1777653 () ListMap!4241)

(assert (=> bs!1020230 (= (= lt!1777653 lt!1777649) (= lambda!190867 lambda!190866))))

(declare-fun bs!1020231 () Bool)

(assert (= bs!1020231 (and d!1455437 b!4621186)))

(assert (=> bs!1020231 (= (= lt!1777653 lt!1777241) (= lambda!190867 lambda!190845))))

(assert (=> bs!1020231 (= (= lt!1777653 lt!1777504) (= lambda!190867 lambda!190846))))

(declare-fun bs!1020232 () Bool)

(assert (= bs!1020232 (and d!1455437 b!4621319)))

(assert (=> bs!1020232 (= (= lt!1777653 (ListMap!4242 Nil!51478)) (= lambda!190867 lambda!190860))))

(declare-fun bs!1020233 () Bool)

(assert (= bs!1020233 (and d!1455437 d!1455425)))

(assert (=> bs!1020233 (= (= lt!1777653 lt!1777612) (= lambda!190867 lambda!190863))))

(declare-fun bs!1020234 () Bool)

(assert (= bs!1020234 (and d!1455437 b!4621320)))

(assert (=> bs!1020234 (= (= lt!1777653 lt!1777608) (= lambda!190867 lambda!190862))))

(declare-fun bs!1020235 () Bool)

(assert (= bs!1020235 (and d!1455437 b!4621185)))

(assert (=> bs!1020235 (= (= lt!1777653 lt!1777241) (= lambda!190867 lambda!190844))))

(assert (=> bs!1020230 (= (= lt!1777653 (ListMap!4242 Nil!51478)) (= lambda!190867 lambda!190865))))

(declare-fun bs!1020236 () Bool)

(assert (= bs!1020236 (and d!1455437 d!1455351)))

(assert (=> bs!1020236 (= (= lt!1777653 lt!1777508) (= lambda!190867 lambda!190847))))

(declare-fun bs!1020237 () Bool)

(assert (= bs!1020237 (and d!1455437 b!4621339)))

(assert (=> bs!1020237 (= (= lt!1777653 (ListMap!4242 Nil!51478)) (= lambda!190867 lambda!190864))))

(assert (=> bs!1020234 (= (= lt!1777653 (ListMap!4242 Nil!51478)) (= lambda!190867 lambda!190861))))

(assert (=> d!1455437 true))

(declare-fun b!4621336 () Bool)

(declare-fun e!2882666 () Bool)

(assert (=> b!4621336 (= e!2882666 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190866))))

(declare-fun bm!322235 () Bool)

(declare-fun call!322241 () Bool)

(declare-fun c!791046 () Bool)

(assert (=> bm!322235 (= call!322241 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791046 lambda!190864 lambda!190866)))))

(declare-fun b!4621337 () Bool)

(declare-fun res!1937280 () Bool)

(declare-fun e!2882668 () Bool)

(assert (=> b!4621337 (=> (not res!1937280) (not e!2882668))))

(assert (=> b!4621337 (= res!1937280 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190867))))

(assert (=> d!1455437 e!2882668))

(declare-fun res!1937281 () Bool)

(assert (=> d!1455437 (=> (not res!1937281) (not e!2882668))))

(assert (=> d!1455437 (= res!1937281 (forall!10792 lt!1777229 lambda!190867))))

(declare-fun e!2882667 () ListMap!4241)

(assert (=> d!1455437 (= lt!1777653 e!2882667)))

(assert (=> d!1455437 (= c!791046 ((_ is Nil!51478) lt!1777229))))

(assert (=> d!1455437 (noDuplicateKeys!1486 lt!1777229)))

(assert (=> d!1455437 (= (addToMapMapFromBucket!947 lt!1777229 (ListMap!4242 Nil!51478)) lt!1777653)))

(declare-fun b!4621338 () Bool)

(assert (=> b!4621338 (= e!2882668 (invariantList!1188 (toList!4937 lt!1777653)))))

(assert (=> b!4621339 (= e!2882667 (ListMap!4242 Nil!51478))))

(declare-fun lt!1777641 () Unit!111032)

(declare-fun call!322242 () Unit!111032)

(assert (=> b!4621339 (= lt!1777641 call!322242)))

(declare-fun call!322240 () Bool)

(assert (=> b!4621339 call!322240))

(declare-fun lt!1777658 () Unit!111032)

(assert (=> b!4621339 (= lt!1777658 lt!1777641)))

(assert (=> b!4621339 call!322241))

(declare-fun lt!1777643 () Unit!111032)

(declare-fun Unit!111094 () Unit!111032)

(assert (=> b!4621339 (= lt!1777643 Unit!111094)))

(declare-fun bm!322236 () Bool)

(assert (=> bm!322236 (= call!322242 (lemmaContainsAllItsOwnKeys!490 (ListMap!4242 Nil!51478)))))

(declare-fun bm!322237 () Bool)

(assert (=> bm!322237 (= call!322240 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791046 lambda!190864 lambda!190865)))))

(assert (=> b!4621340 (= e!2882667 lt!1777649)))

(declare-fun lt!1777646 () ListMap!4241)

(assert (=> b!4621340 (= lt!1777646 (+!1852 (ListMap!4242 Nil!51478) (h!57512 lt!1777229)))))

(assert (=> b!4621340 (= lt!1777649 (addToMapMapFromBucket!947 (t!358618 lt!1777229) (+!1852 (ListMap!4242 Nil!51478) (h!57512 lt!1777229))))))

(declare-fun lt!1777647 () Unit!111032)

(assert (=> b!4621340 (= lt!1777647 call!322242)))

(assert (=> b!4621340 call!322240))

(declare-fun lt!1777656 () Unit!111032)

(assert (=> b!4621340 (= lt!1777656 lt!1777647)))

(assert (=> b!4621340 (forall!10792 (toList!4937 lt!1777646) lambda!190866)))

(declare-fun lt!1777659 () Unit!111032)

(declare-fun Unit!111095 () Unit!111032)

(assert (=> b!4621340 (= lt!1777659 Unit!111095)))

(assert (=> b!4621340 (forall!10792 (t!358618 lt!1777229) lambda!190866)))

(declare-fun lt!1777651 () Unit!111032)

(declare-fun Unit!111096 () Unit!111032)

(assert (=> b!4621340 (= lt!1777651 Unit!111096)))

(declare-fun lt!1777645 () Unit!111032)

(declare-fun Unit!111097 () Unit!111032)

(assert (=> b!4621340 (= lt!1777645 Unit!111097)))

(declare-fun lt!1777642 () Unit!111032)

(assert (=> b!4621340 (= lt!1777642 (forallContained!3016 (toList!4937 lt!1777646) lambda!190866 (h!57512 lt!1777229)))))

(assert (=> b!4621340 (contains!14485 lt!1777646 (_1!29489 (h!57512 lt!1777229)))))

(declare-fun lt!1777661 () Unit!111032)

(declare-fun Unit!111098 () Unit!111032)

(assert (=> b!4621340 (= lt!1777661 Unit!111098)))

(assert (=> b!4621340 (contains!14485 lt!1777649 (_1!29489 (h!57512 lt!1777229)))))

(declare-fun lt!1777644 () Unit!111032)

(declare-fun Unit!111099 () Unit!111032)

(assert (=> b!4621340 (= lt!1777644 Unit!111099)))

(assert (=> b!4621340 (forall!10792 lt!1777229 lambda!190866)))

(declare-fun lt!1777660 () Unit!111032)

(declare-fun Unit!111100 () Unit!111032)

(assert (=> b!4621340 (= lt!1777660 Unit!111100)))

(assert (=> b!4621340 (forall!10792 (toList!4937 lt!1777646) lambda!190866)))

(declare-fun lt!1777648 () Unit!111032)

(declare-fun Unit!111101 () Unit!111032)

(assert (=> b!4621340 (= lt!1777648 Unit!111101)))

(declare-fun lt!1777652 () Unit!111032)

(declare-fun Unit!111102 () Unit!111032)

(assert (=> b!4621340 (= lt!1777652 Unit!111102)))

(declare-fun lt!1777650 () Unit!111032)

(assert (=> b!4621340 (= lt!1777650 (addForallContainsKeyThenBeforeAdding!489 (ListMap!4242 Nil!51478) lt!1777649 (_1!29489 (h!57512 lt!1777229)) (_2!29489 (h!57512 lt!1777229))))))

(assert (=> b!4621340 call!322241))

(declare-fun lt!1777655 () Unit!111032)

(assert (=> b!4621340 (= lt!1777655 lt!1777650)))

(assert (=> b!4621340 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190866)))

(declare-fun lt!1777654 () Unit!111032)

(declare-fun Unit!111103 () Unit!111032)

(assert (=> b!4621340 (= lt!1777654 Unit!111103)))

(declare-fun res!1937282 () Bool)

(assert (=> b!4621340 (= res!1937282 (forall!10792 lt!1777229 lambda!190866))))

(assert (=> b!4621340 (=> (not res!1937282) (not e!2882666))))

(assert (=> b!4621340 e!2882666))

(declare-fun lt!1777657 () Unit!111032)

(declare-fun Unit!111104 () Unit!111032)

(assert (=> b!4621340 (= lt!1777657 Unit!111104)))

(assert (= (and d!1455437 c!791046) b!4621339))

(assert (= (and d!1455437 (not c!791046)) b!4621340))

(assert (= (and b!4621340 res!1937282) b!4621336))

(assert (= (or b!4621339 b!4621340) bm!322236))

(assert (= (or b!4621339 b!4621340) bm!322237))

(assert (= (or b!4621339 b!4621340) bm!322235))

(assert (= (and d!1455437 res!1937281) b!4621337))

(assert (= (and b!4621337 res!1937280) b!4621338))

(declare-fun m!5458397 () Bool)

(assert (=> bm!322237 m!5458397))

(declare-fun m!5458399 () Bool)

(assert (=> d!1455437 m!5458399))

(assert (=> d!1455437 m!5458323))

(declare-fun m!5458401 () Bool)

(assert (=> b!4621340 m!5458401))

(declare-fun m!5458403 () Bool)

(assert (=> b!4621340 m!5458403))

(declare-fun m!5458405 () Bool)

(assert (=> b!4621340 m!5458405))

(declare-fun m!5458407 () Bool)

(assert (=> b!4621340 m!5458407))

(assert (=> b!4621340 m!5458401))

(declare-fun m!5458409 () Bool)

(assert (=> b!4621340 m!5458409))

(declare-fun m!5458411 () Bool)

(assert (=> b!4621340 m!5458411))

(declare-fun m!5458413 () Bool)

(assert (=> b!4621340 m!5458413))

(assert (=> b!4621340 m!5458411))

(declare-fun m!5458415 () Bool)

(assert (=> b!4621340 m!5458415))

(declare-fun m!5458417 () Bool)

(assert (=> b!4621340 m!5458417))

(assert (=> b!4621340 m!5458417))

(declare-fun m!5458419 () Bool)

(assert (=> b!4621340 m!5458419))

(declare-fun m!5458421 () Bool)

(assert (=> b!4621338 m!5458421))

(declare-fun m!5458423 () Bool)

(assert (=> b!4621337 m!5458423))

(declare-fun m!5458425 () Bool)

(assert (=> bm!322235 m!5458425))

(assert (=> b!4621336 m!5458415))

(assert (=> bm!322236 m!5458355))

(assert (=> b!4621018 d!1455437))

(declare-fun d!1455439 () Bool)

(declare-fun e!2882669 () Bool)

(assert (=> d!1455439 e!2882669))

(declare-fun res!1937283 () Bool)

(assert (=> d!1455439 (=> (not res!1937283) (not e!2882669))))

(declare-fun lt!1777664 () ListMap!4241)

(assert (=> d!1455439 (= res!1937283 (contains!14485 lt!1777664 (_1!29489 lt!1777232)))))

(declare-fun lt!1777663 () List!51602)

(assert (=> d!1455439 (= lt!1777664 (ListMap!4242 lt!1777663))))

(declare-fun lt!1777662 () Unit!111032)

(declare-fun lt!1777665 () Unit!111032)

(assert (=> d!1455439 (= lt!1777662 lt!1777665)))

(assert (=> d!1455439 (= (getValueByKey!1418 lt!1777663 (_1!29489 lt!1777232)) (Some!11537 (_2!29489 lt!1777232)))))

(assert (=> d!1455439 (= lt!1777665 (lemmaContainsTupThenGetReturnValue!832 lt!1777663 (_1!29489 lt!1777232) (_2!29489 lt!1777232)))))

(assert (=> d!1455439 (= lt!1777663 (insertNoDuplicatedKeys!340 (toList!4937 (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478))) (_1!29489 lt!1777232) (_2!29489 lt!1777232)))))

(assert (=> d!1455439 (= (+!1852 (addToMapMapFromBucket!947 lt!1777231 (ListMap!4242 Nil!51478)) lt!1777232) lt!1777664)))

(declare-fun b!4621341 () Bool)

(declare-fun res!1937284 () Bool)

(assert (=> b!4621341 (=> (not res!1937284) (not e!2882669))))

(assert (=> b!4621341 (= res!1937284 (= (getValueByKey!1418 (toList!4937 lt!1777664) (_1!29489 lt!1777232)) (Some!11537 (_2!29489 lt!1777232))))))

(declare-fun b!4621342 () Bool)

(assert (=> b!4621342 (= e!2882669 (contains!14488 (toList!4937 lt!1777664) lt!1777232))))

(assert (= (and d!1455439 res!1937283) b!4621341))

(assert (= (and b!4621341 res!1937284) b!4621342))

(declare-fun m!5458427 () Bool)

(assert (=> d!1455439 m!5458427))

(declare-fun m!5458429 () Bool)

(assert (=> d!1455439 m!5458429))

(declare-fun m!5458431 () Bool)

(assert (=> d!1455439 m!5458431))

(declare-fun m!5458433 () Bool)

(assert (=> d!1455439 m!5458433))

(declare-fun m!5458435 () Bool)

(assert (=> b!4621341 m!5458435))

(declare-fun m!5458437 () Bool)

(assert (=> b!4621342 m!5458437))

(assert (=> b!4621018 d!1455439))

(declare-fun bs!1020243 () Bool)

(declare-fun d!1455441 () Bool)

(assert (= bs!1020243 (and d!1455441 d!1455331)))

(declare-fun lambda!190877 () Int)

(assert (=> bs!1020243 (= lambda!190877 lambda!190768)))

(declare-fun bs!1020244 () Bool)

(assert (= bs!1020244 (and d!1455441 d!1455329)))

(assert (=> bs!1020244 (= lambda!190877 lambda!190761)))

(declare-fun bs!1020245 () Bool)

(assert (= bs!1020245 (and d!1455441 d!1455405)))

(assert (=> bs!1020245 (= lambda!190877 lambda!190855)))

(declare-fun bs!1020246 () Bool)

(assert (= bs!1020246 (and d!1455441 d!1455381)))

(assert (=> bs!1020246 (= lambda!190877 lambda!190850)))

(declare-fun bs!1020247 () Bool)

(assert (= bs!1020247 (and d!1455441 b!4621022)))

(assert (=> bs!1020247 (= lambda!190877 lambda!190752)))

(assert (=> d!1455441 (contains!14485 (extractMap!1542 (toList!4938 (ListLongMap!3528 lt!1777242))) key!4968)))

(declare-fun lt!1777692 () Unit!111032)

(declare-fun choose!31192 (ListLongMap!3527 K!12865 Hashable!5883) Unit!111032)

(assert (=> d!1455441 (= lt!1777692 (choose!31192 (ListLongMap!3528 lt!1777242) key!4968 hashF!1389))))

(assert (=> d!1455441 (forall!10790 (toList!4938 (ListLongMap!3528 lt!1777242)) lambda!190877)))

(assert (=> d!1455441 (= (lemmaListContainsThenExtractedMapContains!304 (ListLongMap!3528 lt!1777242) key!4968 hashF!1389) lt!1777692)))

(declare-fun bs!1020248 () Bool)

(assert (= bs!1020248 d!1455441))

(declare-fun m!5458465 () Bool)

(assert (=> bs!1020248 m!5458465))

(assert (=> bs!1020248 m!5458465))

(declare-fun m!5458467 () Bool)

(assert (=> bs!1020248 m!5458467))

(declare-fun m!5458469 () Bool)

(assert (=> bs!1020248 m!5458469))

(declare-fun m!5458471 () Bool)

(assert (=> bs!1020248 m!5458471))

(assert (=> b!4621018 d!1455441))

(declare-fun bs!1020249 () Bool)

(declare-fun b!4621358 () Bool)

(assert (= bs!1020249 (and b!4621358 d!1455411)))

(declare-fun lambda!190878 () Int)

(assert (=> bs!1020249 (not (= lambda!190878 lambda!190858))))

(declare-fun bs!1020250 () Bool)

(assert (= bs!1020250 (and b!4621358 d!1455437)))

(assert (=> bs!1020250 (= (= (ListMap!4242 Nil!51478) lt!1777653) (= lambda!190878 lambda!190867))))

(declare-fun bs!1020251 () Bool)

(assert (= bs!1020251 (and b!4621358 d!1455413)))

(assert (=> bs!1020251 (not (= lambda!190878 lambda!190859))))

(declare-fun bs!1020252 () Bool)

(assert (= bs!1020252 (and b!4621358 b!4621340)))

(assert (=> bs!1020252 (= (= (ListMap!4242 Nil!51478) lt!1777649) (= lambda!190878 lambda!190866))))

(declare-fun bs!1020253 () Bool)

(assert (= bs!1020253 (and b!4621358 b!4621186)))

(assert (=> bs!1020253 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190878 lambda!190845))))

(assert (=> bs!1020253 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190878 lambda!190846))))

(declare-fun bs!1020254 () Bool)

(assert (= bs!1020254 (and b!4621358 b!4621319)))

(assert (=> bs!1020254 (= lambda!190878 lambda!190860)))

(declare-fun bs!1020255 () Bool)

(assert (= bs!1020255 (and b!4621358 d!1455425)))

(assert (=> bs!1020255 (= (= (ListMap!4242 Nil!51478) lt!1777612) (= lambda!190878 lambda!190863))))

(declare-fun bs!1020256 () Bool)

(assert (= bs!1020256 (and b!4621358 b!4621320)))

(assert (=> bs!1020256 (= (= (ListMap!4242 Nil!51478) lt!1777608) (= lambda!190878 lambda!190862))))

(declare-fun bs!1020257 () Bool)

(assert (= bs!1020257 (and b!4621358 b!4621185)))

(assert (=> bs!1020257 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190878 lambda!190844))))

(assert (=> bs!1020252 (= lambda!190878 lambda!190865)))

(declare-fun bs!1020258 () Bool)

(assert (= bs!1020258 (and b!4621358 d!1455351)))

(assert (=> bs!1020258 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190878 lambda!190847))))

(declare-fun bs!1020259 () Bool)

(assert (= bs!1020259 (and b!4621358 b!4621339)))

(assert (=> bs!1020259 (= lambda!190878 lambda!190864)))

(assert (=> bs!1020256 (= lambda!190878 lambda!190861)))

(assert (=> b!4621358 true))

(declare-fun bs!1020260 () Bool)

(declare-fun b!4621359 () Bool)

(assert (= bs!1020260 (and b!4621359 d!1455411)))

(declare-fun lambda!190879 () Int)

(assert (=> bs!1020260 (not (= lambda!190879 lambda!190858))))

(declare-fun bs!1020261 () Bool)

(assert (= bs!1020261 (and b!4621359 d!1455437)))

(assert (=> bs!1020261 (= (= (ListMap!4242 Nil!51478) lt!1777653) (= lambda!190879 lambda!190867))))

(declare-fun bs!1020262 () Bool)

(assert (= bs!1020262 (and b!4621359 d!1455413)))

(assert (=> bs!1020262 (not (= lambda!190879 lambda!190859))))

(declare-fun bs!1020263 () Bool)

(assert (= bs!1020263 (and b!4621359 b!4621340)))

(assert (=> bs!1020263 (= (= (ListMap!4242 Nil!51478) lt!1777649) (= lambda!190879 lambda!190866))))

(declare-fun bs!1020264 () Bool)

(assert (= bs!1020264 (and b!4621359 b!4621186)))

(assert (=> bs!1020264 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190879 lambda!190845))))

(assert (=> bs!1020264 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190879 lambda!190846))))

(declare-fun bs!1020265 () Bool)

(assert (= bs!1020265 (and b!4621359 b!4621319)))

(assert (=> bs!1020265 (= lambda!190879 lambda!190860)))

(declare-fun bs!1020266 () Bool)

(assert (= bs!1020266 (and b!4621359 d!1455425)))

(assert (=> bs!1020266 (= (= (ListMap!4242 Nil!51478) lt!1777612) (= lambda!190879 lambda!190863))))

(declare-fun bs!1020267 () Bool)

(assert (= bs!1020267 (and b!4621359 b!4621320)))

(assert (=> bs!1020267 (= (= (ListMap!4242 Nil!51478) lt!1777608) (= lambda!190879 lambda!190862))))

(declare-fun bs!1020268 () Bool)

(assert (= bs!1020268 (and b!4621359 b!4621358)))

(assert (=> bs!1020268 (= lambda!190879 lambda!190878)))

(declare-fun bs!1020269 () Bool)

(assert (= bs!1020269 (and b!4621359 b!4621185)))

(assert (=> bs!1020269 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190879 lambda!190844))))

(assert (=> bs!1020263 (= lambda!190879 lambda!190865)))

(declare-fun bs!1020270 () Bool)

(assert (= bs!1020270 (and b!4621359 d!1455351)))

(assert (=> bs!1020270 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190879 lambda!190847))))

(declare-fun bs!1020271 () Bool)

(assert (= bs!1020271 (and b!4621359 b!4621339)))

(assert (=> bs!1020271 (= lambda!190879 lambda!190864)))

(assert (=> bs!1020267 (= lambda!190879 lambda!190861)))

(assert (=> b!4621359 true))

(declare-fun lambda!190880 () Int)

(assert (=> bs!1020260 (not (= lambda!190880 lambda!190858))))

(declare-fun lt!1777701 () ListMap!4241)

(assert (=> bs!1020261 (= (= lt!1777701 lt!1777653) (= lambda!190880 lambda!190867))))

(assert (=> bs!1020262 (not (= lambda!190880 lambda!190859))))

(assert (=> bs!1020263 (= (= lt!1777701 lt!1777649) (= lambda!190880 lambda!190866))))

(assert (=> bs!1020264 (= (= lt!1777701 lt!1777241) (= lambda!190880 lambda!190845))))

(assert (=> bs!1020264 (= (= lt!1777701 lt!1777504) (= lambda!190880 lambda!190846))))

(assert (=> bs!1020265 (= (= lt!1777701 (ListMap!4242 Nil!51478)) (= lambda!190880 lambda!190860))))

(assert (=> bs!1020266 (= (= lt!1777701 lt!1777612) (= lambda!190880 lambda!190863))))

(assert (=> b!4621359 (= (= lt!1777701 (ListMap!4242 Nil!51478)) (= lambda!190880 lambda!190879))))

(assert (=> bs!1020267 (= (= lt!1777701 lt!1777608) (= lambda!190880 lambda!190862))))

(assert (=> bs!1020268 (= (= lt!1777701 (ListMap!4242 Nil!51478)) (= lambda!190880 lambda!190878))))

(assert (=> bs!1020269 (= (= lt!1777701 lt!1777241) (= lambda!190880 lambda!190844))))

(assert (=> bs!1020263 (= (= lt!1777701 (ListMap!4242 Nil!51478)) (= lambda!190880 lambda!190865))))

(assert (=> bs!1020270 (= (= lt!1777701 lt!1777508) (= lambda!190880 lambda!190847))))

(assert (=> bs!1020271 (= (= lt!1777701 (ListMap!4242 Nil!51478)) (= lambda!190880 lambda!190864))))

(assert (=> bs!1020267 (= (= lt!1777701 (ListMap!4242 Nil!51478)) (= lambda!190880 lambda!190861))))

(assert (=> b!4621359 true))

(declare-fun bs!1020272 () Bool)

(declare-fun d!1455445 () Bool)

(assert (= bs!1020272 (and d!1455445 d!1455411)))

(declare-fun lambda!190881 () Int)

(assert (=> bs!1020272 (not (= lambda!190881 lambda!190858))))

(declare-fun bs!1020273 () Bool)

(assert (= bs!1020273 (and d!1455445 d!1455437)))

(declare-fun lt!1777705 () ListMap!4241)

(assert (=> bs!1020273 (= (= lt!1777705 lt!1777653) (= lambda!190881 lambda!190867))))

(declare-fun bs!1020274 () Bool)

(assert (= bs!1020274 (and d!1455445 d!1455413)))

(assert (=> bs!1020274 (not (= lambda!190881 lambda!190859))))

(declare-fun bs!1020275 () Bool)

(assert (= bs!1020275 (and d!1455445 b!4621186)))

(assert (=> bs!1020275 (= (= lt!1777705 lt!1777241) (= lambda!190881 lambda!190845))))

(assert (=> bs!1020275 (= (= lt!1777705 lt!1777504) (= lambda!190881 lambda!190846))))

(declare-fun bs!1020276 () Bool)

(assert (= bs!1020276 (and d!1455445 b!4621319)))

(assert (=> bs!1020276 (= (= lt!1777705 (ListMap!4242 Nil!51478)) (= lambda!190881 lambda!190860))))

(declare-fun bs!1020277 () Bool)

(assert (= bs!1020277 (and d!1455445 d!1455425)))

(assert (=> bs!1020277 (= (= lt!1777705 lt!1777612) (= lambda!190881 lambda!190863))))

(declare-fun bs!1020278 () Bool)

(assert (= bs!1020278 (and d!1455445 b!4621359)))

(assert (=> bs!1020278 (= (= lt!1777705 (ListMap!4242 Nil!51478)) (= lambda!190881 lambda!190879))))

(declare-fun bs!1020279 () Bool)

(assert (= bs!1020279 (and d!1455445 b!4621320)))

(assert (=> bs!1020279 (= (= lt!1777705 lt!1777608) (= lambda!190881 lambda!190862))))

(declare-fun bs!1020280 () Bool)

(assert (= bs!1020280 (and d!1455445 b!4621358)))

(assert (=> bs!1020280 (= (= lt!1777705 (ListMap!4242 Nil!51478)) (= lambda!190881 lambda!190878))))

(declare-fun bs!1020281 () Bool)

(assert (= bs!1020281 (and d!1455445 b!4621185)))

(assert (=> bs!1020281 (= (= lt!1777705 lt!1777241) (= lambda!190881 lambda!190844))))

(declare-fun bs!1020282 () Bool)

(assert (= bs!1020282 (and d!1455445 b!4621340)))

(assert (=> bs!1020282 (= (= lt!1777705 (ListMap!4242 Nil!51478)) (= lambda!190881 lambda!190865))))

(declare-fun bs!1020283 () Bool)

(assert (= bs!1020283 (and d!1455445 d!1455351)))

(assert (=> bs!1020283 (= (= lt!1777705 lt!1777508) (= lambda!190881 lambda!190847))))

(assert (=> bs!1020282 (= (= lt!1777705 lt!1777649) (= lambda!190881 lambda!190866))))

(assert (=> bs!1020278 (= (= lt!1777705 lt!1777701) (= lambda!190881 lambda!190880))))

(declare-fun bs!1020285 () Bool)

(assert (= bs!1020285 (and d!1455445 b!4621339)))

(assert (=> bs!1020285 (= (= lt!1777705 (ListMap!4242 Nil!51478)) (= lambda!190881 lambda!190864))))

(assert (=> bs!1020279 (= (= lt!1777705 (ListMap!4242 Nil!51478)) (= lambda!190881 lambda!190861))))

(assert (=> d!1455445 true))

(declare-fun b!4621355 () Bool)

(declare-fun e!2882676 () Bool)

(assert (=> b!4621355 (= e!2882676 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190880))))

(declare-fun bm!322238 () Bool)

(declare-fun c!791047 () Bool)

(declare-fun call!322244 () Bool)

(assert (=> bm!322238 (= call!322244 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791047 lambda!190878 lambda!190880)))))

(declare-fun b!4621356 () Bool)

(declare-fun res!1937297 () Bool)

(declare-fun e!2882678 () Bool)

(assert (=> b!4621356 (=> (not res!1937297) (not e!2882678))))

(assert (=> b!4621356 (= res!1937297 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190881))))

(assert (=> d!1455445 e!2882678))

(declare-fun res!1937298 () Bool)

(assert (=> d!1455445 (=> (not res!1937298) (not e!2882678))))

(assert (=> d!1455445 (= res!1937298 (forall!10792 (Cons!51478 lt!1777237 lt!1777229) lambda!190881))))

(declare-fun e!2882677 () ListMap!4241)

(assert (=> d!1455445 (= lt!1777705 e!2882677)))

(assert (=> d!1455445 (= c!791047 ((_ is Nil!51478) (Cons!51478 lt!1777237 lt!1777229)))))

(assert (=> d!1455445 (noDuplicateKeys!1486 (Cons!51478 lt!1777237 lt!1777229))))

(assert (=> d!1455445 (= (addToMapMapFromBucket!947 (Cons!51478 lt!1777237 lt!1777229) (ListMap!4242 Nil!51478)) lt!1777705)))

(declare-fun b!4621357 () Bool)

(assert (=> b!4621357 (= e!2882678 (invariantList!1188 (toList!4937 lt!1777705)))))

(assert (=> b!4621358 (= e!2882677 (ListMap!4242 Nil!51478))))

(declare-fun lt!1777693 () Unit!111032)

(declare-fun call!322245 () Unit!111032)

(assert (=> b!4621358 (= lt!1777693 call!322245)))

(declare-fun call!322243 () Bool)

(assert (=> b!4621358 call!322243))

(declare-fun lt!1777710 () Unit!111032)

(assert (=> b!4621358 (= lt!1777710 lt!1777693)))

(assert (=> b!4621358 call!322244))

(declare-fun lt!1777695 () Unit!111032)

(declare-fun Unit!111118 () Unit!111032)

(assert (=> b!4621358 (= lt!1777695 Unit!111118)))

(declare-fun bm!322239 () Bool)

(assert (=> bm!322239 (= call!322245 (lemmaContainsAllItsOwnKeys!490 (ListMap!4242 Nil!51478)))))

(declare-fun bm!322240 () Bool)

(assert (=> bm!322240 (= call!322243 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791047 lambda!190878 lambda!190879)))))

(assert (=> b!4621359 (= e!2882677 lt!1777701)))

(declare-fun lt!1777698 () ListMap!4241)

(assert (=> b!4621359 (= lt!1777698 (+!1852 (ListMap!4242 Nil!51478) (h!57512 (Cons!51478 lt!1777237 lt!1777229))))))

(assert (=> b!4621359 (= lt!1777701 (addToMapMapFromBucket!947 (t!358618 (Cons!51478 lt!1777237 lt!1777229)) (+!1852 (ListMap!4242 Nil!51478) (h!57512 (Cons!51478 lt!1777237 lt!1777229)))))))

(declare-fun lt!1777699 () Unit!111032)

(assert (=> b!4621359 (= lt!1777699 call!322245)))

(assert (=> b!4621359 call!322243))

(declare-fun lt!1777708 () Unit!111032)

(assert (=> b!4621359 (= lt!1777708 lt!1777699)))

(assert (=> b!4621359 (forall!10792 (toList!4937 lt!1777698) lambda!190880)))

(declare-fun lt!1777711 () Unit!111032)

(declare-fun Unit!111120 () Unit!111032)

(assert (=> b!4621359 (= lt!1777711 Unit!111120)))

(assert (=> b!4621359 (forall!10792 (t!358618 (Cons!51478 lt!1777237 lt!1777229)) lambda!190880)))

(declare-fun lt!1777703 () Unit!111032)

(declare-fun Unit!111121 () Unit!111032)

(assert (=> b!4621359 (= lt!1777703 Unit!111121)))

(declare-fun lt!1777697 () Unit!111032)

(declare-fun Unit!111122 () Unit!111032)

(assert (=> b!4621359 (= lt!1777697 Unit!111122)))

(declare-fun lt!1777694 () Unit!111032)

(assert (=> b!4621359 (= lt!1777694 (forallContained!3016 (toList!4937 lt!1777698) lambda!190880 (h!57512 (Cons!51478 lt!1777237 lt!1777229))))))

(assert (=> b!4621359 (contains!14485 lt!1777698 (_1!29489 (h!57512 (Cons!51478 lt!1777237 lt!1777229))))))

(declare-fun lt!1777713 () Unit!111032)

(declare-fun Unit!111123 () Unit!111032)

(assert (=> b!4621359 (= lt!1777713 Unit!111123)))

(assert (=> b!4621359 (contains!14485 lt!1777701 (_1!29489 (h!57512 (Cons!51478 lt!1777237 lt!1777229))))))

(declare-fun lt!1777696 () Unit!111032)

(declare-fun Unit!111124 () Unit!111032)

(assert (=> b!4621359 (= lt!1777696 Unit!111124)))

(assert (=> b!4621359 (forall!10792 (Cons!51478 lt!1777237 lt!1777229) lambda!190880)))

(declare-fun lt!1777712 () Unit!111032)

(declare-fun Unit!111125 () Unit!111032)

(assert (=> b!4621359 (= lt!1777712 Unit!111125)))

(assert (=> b!4621359 (forall!10792 (toList!4937 lt!1777698) lambda!190880)))

(declare-fun lt!1777700 () Unit!111032)

(declare-fun Unit!111126 () Unit!111032)

(assert (=> b!4621359 (= lt!1777700 Unit!111126)))

(declare-fun lt!1777704 () Unit!111032)

(declare-fun Unit!111127 () Unit!111032)

(assert (=> b!4621359 (= lt!1777704 Unit!111127)))

(declare-fun lt!1777702 () Unit!111032)

(assert (=> b!4621359 (= lt!1777702 (addForallContainsKeyThenBeforeAdding!489 (ListMap!4242 Nil!51478) lt!1777701 (_1!29489 (h!57512 (Cons!51478 lt!1777237 lt!1777229))) (_2!29489 (h!57512 (Cons!51478 lt!1777237 lt!1777229)))))))

(assert (=> b!4621359 call!322244))

(declare-fun lt!1777707 () Unit!111032)

(assert (=> b!4621359 (= lt!1777707 lt!1777702)))

(assert (=> b!4621359 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190880)))

(declare-fun lt!1777706 () Unit!111032)

(declare-fun Unit!111128 () Unit!111032)

(assert (=> b!4621359 (= lt!1777706 Unit!111128)))

(declare-fun res!1937299 () Bool)

(assert (=> b!4621359 (= res!1937299 (forall!10792 (Cons!51478 lt!1777237 lt!1777229) lambda!190880))))

(assert (=> b!4621359 (=> (not res!1937299) (not e!2882676))))

(assert (=> b!4621359 e!2882676))

(declare-fun lt!1777709 () Unit!111032)

(declare-fun Unit!111129 () Unit!111032)

(assert (=> b!4621359 (= lt!1777709 Unit!111129)))

(assert (= (and d!1455445 c!791047) b!4621358))

(assert (= (and d!1455445 (not c!791047)) b!4621359))

(assert (= (and b!4621359 res!1937299) b!4621355))

(assert (= (or b!4621358 b!4621359) bm!322239))

(assert (= (or b!4621358 b!4621359) bm!322240))

(assert (= (or b!4621358 b!4621359) bm!322238))

(assert (= (and d!1455445 res!1937298) b!4621356))

(assert (= (and b!4621356 res!1937297) b!4621357))

(declare-fun m!5458481 () Bool)

(assert (=> bm!322240 m!5458481))

(declare-fun m!5458483 () Bool)

(assert (=> d!1455445 m!5458483))

(declare-fun m!5458485 () Bool)

(assert (=> d!1455445 m!5458485))

(declare-fun m!5458487 () Bool)

(assert (=> b!4621359 m!5458487))

(declare-fun m!5458489 () Bool)

(assert (=> b!4621359 m!5458489))

(declare-fun m!5458491 () Bool)

(assert (=> b!4621359 m!5458491))

(declare-fun m!5458493 () Bool)

(assert (=> b!4621359 m!5458493))

(assert (=> b!4621359 m!5458487))

(declare-fun m!5458495 () Bool)

(assert (=> b!4621359 m!5458495))

(declare-fun m!5458497 () Bool)

(assert (=> b!4621359 m!5458497))

(declare-fun m!5458499 () Bool)

(assert (=> b!4621359 m!5458499))

(assert (=> b!4621359 m!5458497))

(declare-fun m!5458501 () Bool)

(assert (=> b!4621359 m!5458501))

(declare-fun m!5458503 () Bool)

(assert (=> b!4621359 m!5458503))

(assert (=> b!4621359 m!5458503))

(declare-fun m!5458505 () Bool)

(assert (=> b!4621359 m!5458505))

(declare-fun m!5458507 () Bool)

(assert (=> b!4621357 m!5458507))

(declare-fun m!5458509 () Bool)

(assert (=> b!4621356 m!5458509))

(declare-fun m!5458511 () Bool)

(assert (=> bm!322238 m!5458511))

(assert (=> b!4621355 m!5458501))

(assert (=> bm!322239 m!5458355))

(assert (=> b!4621018 d!1455445))

(declare-fun d!1455453 () Bool)

(declare-fun res!1937312 () Bool)

(declare-fun e!2882696 () Bool)

(assert (=> d!1455453 (=> res!1937312 e!2882696)))

(assert (=> d!1455453 (= res!1937312 ((_ is Nil!51479) (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479)))))

(assert (=> d!1455453 (= (forall!10790 (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479) lambda!190752) e!2882696)))

(declare-fun b!4621384 () Bool)

(declare-fun e!2882697 () Bool)

(assert (=> b!4621384 (= e!2882696 e!2882697)))

(declare-fun res!1937313 () Bool)

(assert (=> b!4621384 (=> (not res!1937313) (not e!2882697))))

(assert (=> b!4621384 (= res!1937313 (dynLambda!21481 lambda!190752 (h!57513 (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479))))))

(declare-fun b!4621385 () Bool)

(assert (=> b!4621385 (= e!2882697 (forall!10790 (t!358619 (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479)) lambda!190752))))

(assert (= (and d!1455453 (not res!1937312)) b!4621384))

(assert (= (and b!4621384 res!1937313) b!4621385))

(declare-fun b_lambda!170635 () Bool)

(assert (=> (not b_lambda!170635) (not b!4621384)))

(declare-fun m!5458513 () Bool)

(assert (=> b!4621384 m!5458513))

(declare-fun m!5458515 () Bool)

(assert (=> b!4621385 m!5458515))

(assert (=> b!4621018 d!1455453))

(declare-fun d!1455455 () Bool)

(assert (=> d!1455455 (= (head!9620 oldBucket!40) (h!57512 oldBucket!40))))

(assert (=> b!4621018 d!1455455))

(declare-fun bs!1020312 () Bool)

(declare-fun d!1455457 () Bool)

(assert (= bs!1020312 (and d!1455457 d!1455331)))

(declare-fun lambda!190885 () Int)

(assert (=> bs!1020312 (= lambda!190885 lambda!190768)))

(declare-fun bs!1020313 () Bool)

(assert (= bs!1020313 (and d!1455457 d!1455329)))

(assert (=> bs!1020313 (= lambda!190885 lambda!190761)))

(declare-fun bs!1020314 () Bool)

(assert (= bs!1020314 (and d!1455457 d!1455381)))

(assert (=> bs!1020314 (= lambda!190885 lambda!190850)))

(declare-fun bs!1020315 () Bool)

(assert (= bs!1020315 (and d!1455457 b!4621022)))

(assert (=> bs!1020315 (= lambda!190885 lambda!190752)))

(declare-fun bs!1020316 () Bool)

(assert (= bs!1020316 (and d!1455457 d!1455441)))

(assert (=> bs!1020316 (= lambda!190885 lambda!190877)))

(declare-fun bs!1020317 () Bool)

(assert (= bs!1020317 (and d!1455457 d!1455405)))

(assert (=> bs!1020317 (= lambda!190885 lambda!190855)))

(declare-fun lt!1777748 () ListMap!4241)

(assert (=> d!1455457 (invariantList!1188 (toList!4937 lt!1777748))))

(declare-fun e!2882698 () ListMap!4241)

(assert (=> d!1455457 (= lt!1777748 e!2882698)))

(declare-fun c!791054 () Bool)

(assert (=> d!1455457 (= c!791054 ((_ is Cons!51479) lt!1777242))))

(assert (=> d!1455457 (forall!10790 lt!1777242 lambda!190885)))

(assert (=> d!1455457 (= (extractMap!1542 lt!1777242) lt!1777748)))

(declare-fun b!4621386 () Bool)

(assert (=> b!4621386 (= e!2882698 (addToMapMapFromBucket!947 (_2!29490 (h!57513 lt!1777242)) (extractMap!1542 (t!358619 lt!1777242))))))

(declare-fun b!4621387 () Bool)

(assert (=> b!4621387 (= e!2882698 (ListMap!4242 Nil!51478))))

(assert (= (and d!1455457 c!791054) b!4621386))

(assert (= (and d!1455457 (not c!791054)) b!4621387))

(declare-fun m!5458517 () Bool)

(assert (=> d!1455457 m!5458517))

(declare-fun m!5458519 () Bool)

(assert (=> d!1455457 m!5458519))

(declare-fun m!5458521 () Bool)

(assert (=> b!4621386 m!5458521))

(assert (=> b!4621386 m!5458521))

(declare-fun m!5458523 () Bool)

(assert (=> b!4621386 m!5458523))

(assert (=> b!4621018 d!1455457))

(declare-fun bs!1020330 () Bool)

(declare-fun b!4621391 () Bool)

(assert (= bs!1020330 (and b!4621391 d!1455445)))

(declare-fun lambda!190887 () Int)

(assert (=> bs!1020330 (= (= (ListMap!4242 Nil!51478) lt!1777705) (= lambda!190887 lambda!190881))))

(declare-fun bs!1020331 () Bool)

(assert (= bs!1020331 (and b!4621391 d!1455411)))

(assert (=> bs!1020331 (not (= lambda!190887 lambda!190858))))

(declare-fun bs!1020333 () Bool)

(assert (= bs!1020333 (and b!4621391 d!1455437)))

(assert (=> bs!1020333 (= (= (ListMap!4242 Nil!51478) lt!1777653) (= lambda!190887 lambda!190867))))

(declare-fun bs!1020335 () Bool)

(assert (= bs!1020335 (and b!4621391 d!1455413)))

(assert (=> bs!1020335 (not (= lambda!190887 lambda!190859))))

(declare-fun bs!1020336 () Bool)

(assert (= bs!1020336 (and b!4621391 b!4621186)))

(assert (=> bs!1020336 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190887 lambda!190845))))

(assert (=> bs!1020336 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190887 lambda!190846))))

(declare-fun bs!1020338 () Bool)

(assert (= bs!1020338 (and b!4621391 b!4621319)))

(assert (=> bs!1020338 (= lambda!190887 lambda!190860)))

(declare-fun bs!1020339 () Bool)

(assert (= bs!1020339 (and b!4621391 d!1455425)))

(assert (=> bs!1020339 (= (= (ListMap!4242 Nil!51478) lt!1777612) (= lambda!190887 lambda!190863))))

(declare-fun bs!1020340 () Bool)

(assert (= bs!1020340 (and b!4621391 b!4621359)))

(assert (=> bs!1020340 (= lambda!190887 lambda!190879)))

(declare-fun bs!1020341 () Bool)

(assert (= bs!1020341 (and b!4621391 b!4621320)))

(assert (=> bs!1020341 (= (= (ListMap!4242 Nil!51478) lt!1777608) (= lambda!190887 lambda!190862))))

(declare-fun bs!1020342 () Bool)

(assert (= bs!1020342 (and b!4621391 b!4621358)))

(assert (=> bs!1020342 (= lambda!190887 lambda!190878)))

(declare-fun bs!1020343 () Bool)

(assert (= bs!1020343 (and b!4621391 b!4621185)))

(assert (=> bs!1020343 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190887 lambda!190844))))

(declare-fun bs!1020344 () Bool)

(assert (= bs!1020344 (and b!4621391 b!4621340)))

(assert (=> bs!1020344 (= lambda!190887 lambda!190865)))

(declare-fun bs!1020345 () Bool)

(assert (= bs!1020345 (and b!4621391 d!1455351)))

(assert (=> bs!1020345 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190887 lambda!190847))))

(assert (=> bs!1020344 (= (= (ListMap!4242 Nil!51478) lt!1777649) (= lambda!190887 lambda!190866))))

(assert (=> bs!1020340 (= (= (ListMap!4242 Nil!51478) lt!1777701) (= lambda!190887 lambda!190880))))

(declare-fun bs!1020346 () Bool)

(assert (= bs!1020346 (and b!4621391 b!4621339)))

(assert (=> bs!1020346 (= lambda!190887 lambda!190864)))

(assert (=> bs!1020341 (= lambda!190887 lambda!190861)))

(assert (=> b!4621391 true))

(declare-fun bs!1020347 () Bool)

(declare-fun b!4621392 () Bool)

(assert (= bs!1020347 (and b!4621392 d!1455445)))

(declare-fun lambda!190888 () Int)

(assert (=> bs!1020347 (= (= (ListMap!4242 Nil!51478) lt!1777705) (= lambda!190888 lambda!190881))))

(declare-fun bs!1020348 () Bool)

(assert (= bs!1020348 (and b!4621392 d!1455411)))

(assert (=> bs!1020348 (not (= lambda!190888 lambda!190858))))

(declare-fun bs!1020349 () Bool)

(assert (= bs!1020349 (and b!4621392 d!1455437)))

(assert (=> bs!1020349 (= (= (ListMap!4242 Nil!51478) lt!1777653) (= lambda!190888 lambda!190867))))

(declare-fun bs!1020350 () Bool)

(assert (= bs!1020350 (and b!4621392 b!4621186)))

(assert (=> bs!1020350 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190888 lambda!190845))))

(assert (=> bs!1020350 (= (= (ListMap!4242 Nil!51478) lt!1777504) (= lambda!190888 lambda!190846))))

(declare-fun bs!1020351 () Bool)

(assert (= bs!1020351 (and b!4621392 b!4621319)))

(assert (=> bs!1020351 (= lambda!190888 lambda!190860)))

(declare-fun bs!1020352 () Bool)

(assert (= bs!1020352 (and b!4621392 d!1455425)))

(assert (=> bs!1020352 (= (= (ListMap!4242 Nil!51478) lt!1777612) (= lambda!190888 lambda!190863))))

(declare-fun bs!1020353 () Bool)

(assert (= bs!1020353 (and b!4621392 b!4621359)))

(assert (=> bs!1020353 (= lambda!190888 lambda!190879)))

(declare-fun bs!1020354 () Bool)

(assert (= bs!1020354 (and b!4621392 b!4621320)))

(assert (=> bs!1020354 (= (= (ListMap!4242 Nil!51478) lt!1777608) (= lambda!190888 lambda!190862))))

(declare-fun bs!1020355 () Bool)

(assert (= bs!1020355 (and b!4621392 b!4621358)))

(assert (=> bs!1020355 (= lambda!190888 lambda!190878)))

(declare-fun bs!1020356 () Bool)

(assert (= bs!1020356 (and b!4621392 b!4621185)))

(assert (=> bs!1020356 (= (= (ListMap!4242 Nil!51478) lt!1777241) (= lambda!190888 lambda!190844))))

(declare-fun bs!1020357 () Bool)

(assert (= bs!1020357 (and b!4621392 b!4621340)))

(assert (=> bs!1020357 (= lambda!190888 lambda!190865)))

(declare-fun bs!1020358 () Bool)

(assert (= bs!1020358 (and b!4621392 d!1455351)))

(assert (=> bs!1020358 (= (= (ListMap!4242 Nil!51478) lt!1777508) (= lambda!190888 lambda!190847))))

(declare-fun bs!1020359 () Bool)

(assert (= bs!1020359 (and b!4621392 d!1455413)))

(assert (=> bs!1020359 (not (= lambda!190888 lambda!190859))))

(declare-fun bs!1020360 () Bool)

(assert (= bs!1020360 (and b!4621392 b!4621391)))

(assert (=> bs!1020360 (= lambda!190888 lambda!190887)))

(assert (=> bs!1020357 (= (= (ListMap!4242 Nil!51478) lt!1777649) (= lambda!190888 lambda!190866))))

(assert (=> bs!1020353 (= (= (ListMap!4242 Nil!51478) lt!1777701) (= lambda!190888 lambda!190880))))

(declare-fun bs!1020361 () Bool)

(assert (= bs!1020361 (and b!4621392 b!4621339)))

(assert (=> bs!1020361 (= lambda!190888 lambda!190864)))

(assert (=> bs!1020354 (= lambda!190888 lambda!190861)))

(assert (=> b!4621392 true))

(declare-fun lambda!190890 () Int)

(declare-fun lt!1777757 () ListMap!4241)

(assert (=> bs!1020347 (= (= lt!1777757 lt!1777705) (= lambda!190890 lambda!190881))))

(assert (=> bs!1020348 (not (= lambda!190890 lambda!190858))))

(assert (=> bs!1020349 (= (= lt!1777757 lt!1777653) (= lambda!190890 lambda!190867))))

(assert (=> bs!1020350 (= (= lt!1777757 lt!1777241) (= lambda!190890 lambda!190845))))

(assert (=> bs!1020350 (= (= lt!1777757 lt!1777504) (= lambda!190890 lambda!190846))))

(assert (=> bs!1020351 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190860))))

(assert (=> bs!1020352 (= (= lt!1777757 lt!1777612) (= lambda!190890 lambda!190863))))

(assert (=> bs!1020353 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190879))))

(assert (=> bs!1020354 (= (= lt!1777757 lt!1777608) (= lambda!190890 lambda!190862))))

(assert (=> bs!1020355 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190878))))

(assert (=> bs!1020356 (= (= lt!1777757 lt!1777241) (= lambda!190890 lambda!190844))))

(assert (=> bs!1020357 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190865))))

(assert (=> b!4621392 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190888))))

(assert (=> bs!1020358 (= (= lt!1777757 lt!1777508) (= lambda!190890 lambda!190847))))

(assert (=> bs!1020359 (not (= lambda!190890 lambda!190859))))

(assert (=> bs!1020360 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190887))))

(assert (=> bs!1020357 (= (= lt!1777757 lt!1777649) (= lambda!190890 lambda!190866))))

(assert (=> bs!1020353 (= (= lt!1777757 lt!1777701) (= lambda!190890 lambda!190880))))

(assert (=> bs!1020361 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190864))))

(assert (=> bs!1020354 (= (= lt!1777757 (ListMap!4242 Nil!51478)) (= lambda!190890 lambda!190861))))

(assert (=> b!4621392 true))

(declare-fun bs!1020379 () Bool)

(declare-fun d!1455459 () Bool)

(assert (= bs!1020379 (and d!1455459 d!1455445)))

(declare-fun lt!1777761 () ListMap!4241)

(declare-fun lambda!190892 () Int)

(assert (=> bs!1020379 (= (= lt!1777761 lt!1777705) (= lambda!190892 lambda!190881))))

(declare-fun bs!1020381 () Bool)

(assert (= bs!1020381 (and d!1455459 d!1455437)))

(assert (=> bs!1020381 (= (= lt!1777761 lt!1777653) (= lambda!190892 lambda!190867))))

(declare-fun bs!1020383 () Bool)

(assert (= bs!1020383 (and d!1455459 b!4621186)))

(assert (=> bs!1020383 (= (= lt!1777761 lt!1777241) (= lambda!190892 lambda!190845))))

(assert (=> bs!1020383 (= (= lt!1777761 lt!1777504) (= lambda!190892 lambda!190846))))

(declare-fun bs!1020385 () Bool)

(assert (= bs!1020385 (and d!1455459 b!4621319)))

(assert (=> bs!1020385 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190860))))

(declare-fun bs!1020387 () Bool)

(assert (= bs!1020387 (and d!1455459 d!1455425)))

(assert (=> bs!1020387 (= (= lt!1777761 lt!1777612) (= lambda!190892 lambda!190863))))

(declare-fun bs!1020389 () Bool)

(assert (= bs!1020389 (and d!1455459 b!4621359)))

(assert (=> bs!1020389 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190879))))

(declare-fun bs!1020390 () Bool)

(assert (= bs!1020390 (and d!1455459 b!4621320)))

(assert (=> bs!1020390 (= (= lt!1777761 lt!1777608) (= lambda!190892 lambda!190862))))

(declare-fun bs!1020391 () Bool)

(assert (= bs!1020391 (and d!1455459 b!4621358)))

(assert (=> bs!1020391 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190878))))

(declare-fun bs!1020392 () Bool)

(assert (= bs!1020392 (and d!1455459 b!4621185)))

(assert (=> bs!1020392 (= (= lt!1777761 lt!1777241) (= lambda!190892 lambda!190844))))

(declare-fun bs!1020394 () Bool)

(assert (= bs!1020394 (and d!1455459 d!1455411)))

(assert (=> bs!1020394 (not (= lambda!190892 lambda!190858))))

(declare-fun bs!1020395 () Bool)

(assert (= bs!1020395 (and d!1455459 b!4621392)))

(assert (=> bs!1020395 (= (= lt!1777761 lt!1777757) (= lambda!190892 lambda!190890))))

(declare-fun bs!1020396 () Bool)

(assert (= bs!1020396 (and d!1455459 b!4621340)))

(assert (=> bs!1020396 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190865))))

(assert (=> bs!1020395 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190888))))

(declare-fun bs!1020397 () Bool)

(assert (= bs!1020397 (and d!1455459 d!1455351)))

(assert (=> bs!1020397 (= (= lt!1777761 lt!1777508) (= lambda!190892 lambda!190847))))

(declare-fun bs!1020399 () Bool)

(assert (= bs!1020399 (and d!1455459 d!1455413)))

(assert (=> bs!1020399 (not (= lambda!190892 lambda!190859))))

(declare-fun bs!1020400 () Bool)

(assert (= bs!1020400 (and d!1455459 b!4621391)))

(assert (=> bs!1020400 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190887))))

(assert (=> bs!1020396 (= (= lt!1777761 lt!1777649) (= lambda!190892 lambda!190866))))

(assert (=> bs!1020389 (= (= lt!1777761 lt!1777701) (= lambda!190892 lambda!190880))))

(declare-fun bs!1020401 () Bool)

(assert (= bs!1020401 (and d!1455459 b!4621339)))

(assert (=> bs!1020401 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190864))))

(assert (=> bs!1020390 (= (= lt!1777761 (ListMap!4242 Nil!51478)) (= lambda!190892 lambda!190861))))

(assert (=> d!1455459 true))

(declare-fun b!4621388 () Bool)

(declare-fun e!2882699 () Bool)

(assert (=> b!4621388 (= e!2882699 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190890))))

(declare-fun bm!322244 () Bool)

(declare-fun call!322250 () Bool)

(declare-fun c!791055 () Bool)

(assert (=> bm!322244 (= call!322250 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791055 lambda!190887 lambda!190890)))))

(declare-fun b!4621389 () Bool)

(declare-fun res!1937314 () Bool)

(declare-fun e!2882701 () Bool)

(assert (=> b!4621389 (=> (not res!1937314) (not e!2882701))))

(assert (=> b!4621389 (= res!1937314 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190892))))

(assert (=> d!1455459 e!2882701))

(declare-fun res!1937315 () Bool)

(assert (=> d!1455459 (=> (not res!1937315) (not e!2882701))))

(assert (=> d!1455459 (= res!1937315 (forall!10792 (Cons!51478 lt!1777232 lt!1777231) lambda!190892))))

(declare-fun e!2882700 () ListMap!4241)

(assert (=> d!1455459 (= lt!1777761 e!2882700)))

(assert (=> d!1455459 (= c!791055 ((_ is Nil!51478) (Cons!51478 lt!1777232 lt!1777231)))))

(assert (=> d!1455459 (noDuplicateKeys!1486 (Cons!51478 lt!1777232 lt!1777231))))

(assert (=> d!1455459 (= (addToMapMapFromBucket!947 (Cons!51478 lt!1777232 lt!1777231) (ListMap!4242 Nil!51478)) lt!1777761)))

(declare-fun b!4621390 () Bool)

(assert (=> b!4621390 (= e!2882701 (invariantList!1188 (toList!4937 lt!1777761)))))

(assert (=> b!4621391 (= e!2882700 (ListMap!4242 Nil!51478))))

(declare-fun lt!1777749 () Unit!111032)

(declare-fun call!322251 () Unit!111032)

(assert (=> b!4621391 (= lt!1777749 call!322251)))

(declare-fun call!322249 () Bool)

(assert (=> b!4621391 call!322249))

(declare-fun lt!1777766 () Unit!111032)

(assert (=> b!4621391 (= lt!1777766 lt!1777749)))

(assert (=> b!4621391 call!322250))

(declare-fun lt!1777751 () Unit!111032)

(declare-fun Unit!111131 () Unit!111032)

(assert (=> b!4621391 (= lt!1777751 Unit!111131)))

(declare-fun bm!322245 () Bool)

(assert (=> bm!322245 (= call!322251 (lemmaContainsAllItsOwnKeys!490 (ListMap!4242 Nil!51478)))))

(declare-fun bm!322246 () Bool)

(assert (=> bm!322246 (= call!322249 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) (ite c!791055 lambda!190887 lambda!190888)))))

(assert (=> b!4621392 (= e!2882700 lt!1777757)))

(declare-fun lt!1777754 () ListMap!4241)

(assert (=> b!4621392 (= lt!1777754 (+!1852 (ListMap!4242 Nil!51478) (h!57512 (Cons!51478 lt!1777232 lt!1777231))))))

(assert (=> b!4621392 (= lt!1777757 (addToMapMapFromBucket!947 (t!358618 (Cons!51478 lt!1777232 lt!1777231)) (+!1852 (ListMap!4242 Nil!51478) (h!57512 (Cons!51478 lt!1777232 lt!1777231)))))))

(declare-fun lt!1777755 () Unit!111032)

(assert (=> b!4621392 (= lt!1777755 call!322251)))

(assert (=> b!4621392 call!322249))

(declare-fun lt!1777764 () Unit!111032)

(assert (=> b!4621392 (= lt!1777764 lt!1777755)))

(assert (=> b!4621392 (forall!10792 (toList!4937 lt!1777754) lambda!190890)))

(declare-fun lt!1777767 () Unit!111032)

(declare-fun Unit!111132 () Unit!111032)

(assert (=> b!4621392 (= lt!1777767 Unit!111132)))

(assert (=> b!4621392 (forall!10792 (t!358618 (Cons!51478 lt!1777232 lt!1777231)) lambda!190890)))

(declare-fun lt!1777759 () Unit!111032)

(declare-fun Unit!111133 () Unit!111032)

(assert (=> b!4621392 (= lt!1777759 Unit!111133)))

(declare-fun lt!1777753 () Unit!111032)

(declare-fun Unit!111134 () Unit!111032)

(assert (=> b!4621392 (= lt!1777753 Unit!111134)))

(declare-fun lt!1777750 () Unit!111032)

(assert (=> b!4621392 (= lt!1777750 (forallContained!3016 (toList!4937 lt!1777754) lambda!190890 (h!57512 (Cons!51478 lt!1777232 lt!1777231))))))

(assert (=> b!4621392 (contains!14485 lt!1777754 (_1!29489 (h!57512 (Cons!51478 lt!1777232 lt!1777231))))))

(declare-fun lt!1777769 () Unit!111032)

(declare-fun Unit!111135 () Unit!111032)

(assert (=> b!4621392 (= lt!1777769 Unit!111135)))

(assert (=> b!4621392 (contains!14485 lt!1777757 (_1!29489 (h!57512 (Cons!51478 lt!1777232 lt!1777231))))))

(declare-fun lt!1777752 () Unit!111032)

(declare-fun Unit!111136 () Unit!111032)

(assert (=> b!4621392 (= lt!1777752 Unit!111136)))

(assert (=> b!4621392 (forall!10792 (Cons!51478 lt!1777232 lt!1777231) lambda!190890)))

(declare-fun lt!1777768 () Unit!111032)

(declare-fun Unit!111137 () Unit!111032)

(assert (=> b!4621392 (= lt!1777768 Unit!111137)))

(assert (=> b!4621392 (forall!10792 (toList!4937 lt!1777754) lambda!190890)))

(declare-fun lt!1777756 () Unit!111032)

(declare-fun Unit!111138 () Unit!111032)

(assert (=> b!4621392 (= lt!1777756 Unit!111138)))

(declare-fun lt!1777760 () Unit!111032)

(declare-fun Unit!111139 () Unit!111032)

(assert (=> b!4621392 (= lt!1777760 Unit!111139)))

(declare-fun lt!1777758 () Unit!111032)

(assert (=> b!4621392 (= lt!1777758 (addForallContainsKeyThenBeforeAdding!489 (ListMap!4242 Nil!51478) lt!1777757 (_1!29489 (h!57512 (Cons!51478 lt!1777232 lt!1777231))) (_2!29489 (h!57512 (Cons!51478 lt!1777232 lt!1777231)))))))

(assert (=> b!4621392 call!322250))

(declare-fun lt!1777763 () Unit!111032)

(assert (=> b!4621392 (= lt!1777763 lt!1777758)))

(assert (=> b!4621392 (forall!10792 (toList!4937 (ListMap!4242 Nil!51478)) lambda!190890)))

(declare-fun lt!1777762 () Unit!111032)

(declare-fun Unit!111140 () Unit!111032)

(assert (=> b!4621392 (= lt!1777762 Unit!111140)))

(declare-fun res!1937316 () Bool)

(assert (=> b!4621392 (= res!1937316 (forall!10792 (Cons!51478 lt!1777232 lt!1777231) lambda!190890))))

(assert (=> b!4621392 (=> (not res!1937316) (not e!2882699))))

(assert (=> b!4621392 e!2882699))

(declare-fun lt!1777765 () Unit!111032)

(declare-fun Unit!111141 () Unit!111032)

(assert (=> b!4621392 (= lt!1777765 Unit!111141)))

(assert (= (and d!1455459 c!791055) b!4621391))

(assert (= (and d!1455459 (not c!791055)) b!4621392))

(assert (= (and b!4621392 res!1937316) b!4621388))

(assert (= (or b!4621391 b!4621392) bm!322245))

(assert (= (or b!4621391 b!4621392) bm!322246))

(assert (= (or b!4621391 b!4621392) bm!322244))

(assert (= (and d!1455459 res!1937315) b!4621389))

(assert (= (and b!4621389 res!1937314) b!4621390))

(declare-fun m!5458573 () Bool)

(assert (=> bm!322246 m!5458573))

(declare-fun m!5458575 () Bool)

(assert (=> d!1455459 m!5458575))

(declare-fun m!5458577 () Bool)

(assert (=> d!1455459 m!5458577))

(declare-fun m!5458579 () Bool)

(assert (=> b!4621392 m!5458579))

(declare-fun m!5458581 () Bool)

(assert (=> b!4621392 m!5458581))

(declare-fun m!5458583 () Bool)

(assert (=> b!4621392 m!5458583))

(declare-fun m!5458585 () Bool)

(assert (=> b!4621392 m!5458585))

(assert (=> b!4621392 m!5458579))

(declare-fun m!5458587 () Bool)

(assert (=> b!4621392 m!5458587))

(declare-fun m!5458589 () Bool)

(assert (=> b!4621392 m!5458589))

(declare-fun m!5458591 () Bool)

(assert (=> b!4621392 m!5458591))

(assert (=> b!4621392 m!5458589))

(declare-fun m!5458593 () Bool)

(assert (=> b!4621392 m!5458593))

(declare-fun m!5458595 () Bool)

(assert (=> b!4621392 m!5458595))

(assert (=> b!4621392 m!5458595))

(declare-fun m!5458597 () Bool)

(assert (=> b!4621392 m!5458597))

(declare-fun m!5458599 () Bool)

(assert (=> b!4621390 m!5458599))

(declare-fun m!5458601 () Bool)

(assert (=> b!4621389 m!5458601))

(declare-fun m!5458603 () Bool)

(assert (=> bm!322244 m!5458603))

(assert (=> b!4621388 m!5458593))

(assert (=> bm!322245 m!5458355))

(assert (=> b!4621018 d!1455459))

(declare-fun d!1455471 () Bool)

(declare-fun lt!1777773 () List!51602)

(assert (=> d!1455471 (not (containsKey!2394 lt!1777773 key!4968))))

(declare-fun e!2882711 () List!51602)

(assert (=> d!1455471 (= lt!1777773 e!2882711)))

(declare-fun c!791061 () Bool)

(assert (=> d!1455471 (= c!791061 (and ((_ is Cons!51478) oldBucket!40) (= (_1!29489 (h!57512 oldBucket!40)) key!4968)))))

(assert (=> d!1455471 (noDuplicateKeys!1486 oldBucket!40)))

(assert (=> d!1455471 (= (removePairForKey!1109 oldBucket!40 key!4968) lt!1777773)))

(declare-fun b!4621412 () Bool)

(declare-fun e!2882712 () List!51602)

(assert (=> b!4621412 (= e!2882712 Nil!51478)))

(declare-fun b!4621410 () Bool)

(assert (=> b!4621410 (= e!2882711 e!2882712)))

(declare-fun c!791062 () Bool)

(assert (=> b!4621410 (= c!791062 ((_ is Cons!51478) oldBucket!40))))

(declare-fun b!4621409 () Bool)

(assert (=> b!4621409 (= e!2882711 (t!358618 oldBucket!40))))

(declare-fun b!4621411 () Bool)

(assert (=> b!4621411 (= e!2882712 (Cons!51478 (h!57512 oldBucket!40) (removePairForKey!1109 (t!358618 oldBucket!40) key!4968)))))

(assert (= (and d!1455471 c!791061) b!4621409))

(assert (= (and d!1455471 (not c!791061)) b!4621410))

(assert (= (and b!4621410 c!791062) b!4621411))

(assert (= (and b!4621410 (not c!791062)) b!4621412))

(declare-fun m!5458605 () Bool)

(assert (=> d!1455471 m!5458605))

(assert (=> d!1455471 m!5457813))

(assert (=> b!4621411 m!5457811))

(assert (=> b!4621020 d!1455471))

(declare-fun d!1455473 () Bool)

(declare-fun lt!1777774 () List!51602)

(assert (=> d!1455473 (not (containsKey!2394 lt!1777774 key!4968))))

(declare-fun e!2882713 () List!51602)

(assert (=> d!1455473 (= lt!1777774 e!2882713)))

(declare-fun c!791063 () Bool)

(assert (=> d!1455473 (= c!791063 (and ((_ is Cons!51478) (t!358618 oldBucket!40)) (= (_1!29489 (h!57512 (t!358618 oldBucket!40))) key!4968)))))

(assert (=> d!1455473 (noDuplicateKeys!1486 (t!358618 oldBucket!40))))

(assert (=> d!1455473 (= (removePairForKey!1109 (t!358618 oldBucket!40) key!4968) lt!1777774)))

(declare-fun b!4621416 () Bool)

(declare-fun e!2882714 () List!51602)

(assert (=> b!4621416 (= e!2882714 Nil!51478)))

(declare-fun b!4621414 () Bool)

(assert (=> b!4621414 (= e!2882713 e!2882714)))

(declare-fun c!791064 () Bool)

(assert (=> b!4621414 (= c!791064 ((_ is Cons!51478) (t!358618 oldBucket!40)))))

(declare-fun b!4621413 () Bool)

(assert (=> b!4621413 (= e!2882713 (t!358618 (t!358618 oldBucket!40)))))

(declare-fun b!4621415 () Bool)

(assert (=> b!4621415 (= e!2882714 (Cons!51478 (h!57512 (t!358618 oldBucket!40)) (removePairForKey!1109 (t!358618 (t!358618 oldBucket!40)) key!4968)))))

(assert (= (and d!1455473 c!791063) b!4621413))

(assert (= (and d!1455473 (not c!791063)) b!4621414))

(assert (= (and b!4621414 c!791064) b!4621415))

(assert (= (and b!4621414 (not c!791064)) b!4621416))

(declare-fun m!5458607 () Bool)

(assert (=> d!1455473 m!5458607))

(assert (=> d!1455473 m!5458291))

(declare-fun m!5458609 () Bool)

(assert (=> b!4621415 m!5458609))

(assert (=> b!4621019 d!1455473))

(declare-fun d!1455475 () Bool)

(declare-fun lt!1777775 () List!51602)

(assert (=> d!1455475 (not (containsKey!2394 lt!1777775 key!4968))))

(declare-fun e!2882715 () List!51602)

(assert (=> d!1455475 (= lt!1777775 e!2882715)))

(declare-fun c!791065 () Bool)

(assert (=> d!1455475 (= c!791065 (and ((_ is Cons!51478) lt!1777229) (= (_1!29489 (h!57512 lt!1777229)) key!4968)))))

(assert (=> d!1455475 (noDuplicateKeys!1486 lt!1777229)))

(assert (=> d!1455475 (= (removePairForKey!1109 lt!1777229 key!4968) lt!1777775)))

(declare-fun b!4621420 () Bool)

(declare-fun e!2882716 () List!51602)

(assert (=> b!4621420 (= e!2882716 Nil!51478)))

(declare-fun b!4621418 () Bool)

(assert (=> b!4621418 (= e!2882715 e!2882716)))

(declare-fun c!791066 () Bool)

(assert (=> b!4621418 (= c!791066 ((_ is Cons!51478) lt!1777229))))

(declare-fun b!4621417 () Bool)

(assert (=> b!4621417 (= e!2882715 (t!358618 lt!1777229))))

(declare-fun b!4621419 () Bool)

(assert (=> b!4621419 (= e!2882716 (Cons!51478 (h!57512 lt!1777229) (removePairForKey!1109 (t!358618 lt!1777229) key!4968)))))

(assert (= (and d!1455475 c!791065) b!4621417))

(assert (= (and d!1455475 (not c!791065)) b!4621418))

(assert (= (and b!4621418 c!791066) b!4621419))

(assert (= (and b!4621418 (not c!791066)) b!4621420))

(declare-fun m!5458611 () Bool)

(assert (=> d!1455475 m!5458611))

(assert (=> d!1455475 m!5458323))

(declare-fun m!5458613 () Bool)

(assert (=> b!4621419 m!5458613))

(assert (=> b!4621030 d!1455475))

(declare-fun d!1455477 () Bool)

(assert (=> d!1455477 (= (tail!8121 newBucket!224) (t!358618 newBucket!224))))

(assert (=> b!4621030 d!1455477))

(declare-fun d!1455479 () Bool)

(assert (=> d!1455479 (= (tail!8121 oldBucket!40) (t!358618 oldBucket!40))))

(assert (=> b!4621030 d!1455479))

(declare-fun e!2882719 () Bool)

(declare-fun tp!1341930 () Bool)

(declare-fun b!4621425 () Bool)

(assert (=> b!4621425 (= e!2882719 (and tp_is_empty!29237 tp_is_empty!29239 tp!1341930))))

(assert (=> b!4621026 (= tp!1341923 e!2882719)))

(assert (= (and b!4621026 ((_ is Cons!51478) (t!358618 oldBucket!40))) b!4621425))

(declare-fun b!4621426 () Bool)

(declare-fun e!2882720 () Bool)

(declare-fun tp!1341931 () Bool)

(assert (=> b!4621426 (= e!2882720 (and tp_is_empty!29237 tp_is_empty!29239 tp!1341931))))

(assert (=> b!4621028 (= tp!1341922 e!2882720)))

(assert (= (and b!4621028 ((_ is Cons!51478) (t!358618 newBucket!224))) b!4621426))

(declare-fun b_lambda!170641 () Bool)

(assert (= b_lambda!170629 (or b!4621022 b_lambda!170641)))

(declare-fun bs!1020404 () Bool)

(declare-fun d!1455481 () Bool)

(assert (= bs!1020404 (and d!1455481 b!4621022)))

(assert (=> bs!1020404 (= (dynLambda!21481 lambda!190752 lt!1777225) (noDuplicateKeys!1486 (_2!29490 lt!1777225)))))

(declare-fun m!5458615 () Bool)

(assert (=> bs!1020404 m!5458615))

(assert (=> d!1455325 d!1455481))

(declare-fun b_lambda!170643 () Bool)

(assert (= b_lambda!170635 (or b!4621022 b_lambda!170643)))

(declare-fun bs!1020405 () Bool)

(declare-fun d!1455483 () Bool)

(assert (= bs!1020405 (and d!1455483 b!4621022)))

(assert (=> bs!1020405 (= (dynLambda!21481 lambda!190752 (h!57513 (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479))) (noDuplicateKeys!1486 (_2!29490 (h!57513 (Cons!51479 (tuple2!52393 hash!414 lt!1777229) Nil!51479)))))))

(declare-fun m!5458617 () Bool)

(assert (=> bs!1020405 m!5458617))

(assert (=> b!4621384 d!1455483))

(check-sat (not d!1455423) (not bm!322223) (not b!4621419) (not bm!322221) (not bm!322239) (not b!4621183) (not b!4621330) (not d!1455341) (not b!4621316) (not b!4621107) (not bm!322232) (not d!1455333) (not d!1455433) (not d!1455405) (not b!4621182) (not d!1455415) (not d!1455429) (not d!1455335) (not b!4621080) (not b!4621332) (not d!1455381) (not d!1455473) (not d!1455475) (not b!4621386) (not b!4621077) (not b!4621341) (not b!4621113) (not d!1455351) (not d!1455425) (not bs!1020404) (not b!4621217) (not b!4621335) (not b!4621089) (not b!4621327) (not b!4621269) (not b!4621340) (not b!4621274) (not b!4621078) (not b!4621415) (not b!4621334) (not bm!322235) (not b!4621328) (not b!4621276) (not b!4621122) (not b!4621273) (not bm!322238) (not b!4621268) (not b!4621425) (not bm!322236) (not b!4621101) tp_is_empty!29239 (not d!1455339) (not d!1455445) (not d!1455459) (not b!4621356) (not b!4621342) (not bm!322246) (not d!1455323) (not d!1455329) (not d!1455427) (not b!4621211) (not d!1455457) (not d!1455325) (not b!4621286) (not b!4621076) (not d!1455343) (not b!4621317) (not bm!322245) (not b!4621392) (not d!1455435) (not b!4621411) (not b!4621100) (not b!4621388) (not bm!322222) (not d!1455385) (not b!4621099) (not b!4621389) (not b!4621271) (not bm!322231) (not b!4621385) (not b!4621125) (not d!1455441) (not b!4621426) (not b!4621357) (not bm!322234) (not b_lambda!170641) (not b!4621336) (not b!4621318) (not d!1455331) (not bm!322237) (not b!4621359) (not bs!1020405) (not b!4621120) tp_is_empty!29237 (not b!4621338) (not bm!322244) (not b!4621186) (not d!1455413) (not d!1455471) (not b!4621326) (not bm!322240) (not d!1455437) (not b!4621285) (not b!4621325) (not b!4621275) (not b!4621333) (not b!4621355) (not d!1455347) (not b!4621390) (not d!1455439) (not b!4621098) (not d!1455349) (not b!4621218) (not b!4621074) (not d!1455411) (not b!4621320) (not b!4621337) (not b_lambda!170643) (not b!4621184) (not b!4621281) (not bm!322233) (not bm!322230))
(check-sat)
