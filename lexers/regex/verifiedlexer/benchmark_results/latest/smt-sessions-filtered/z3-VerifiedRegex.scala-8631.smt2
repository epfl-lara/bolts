; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460696 () Bool)

(assert start!460696)

(declare-fun b!4608027 () Bool)

(declare-fun res!1928752 () Bool)

(declare-fun e!2874388 () Bool)

(assert (=> b!4608027 (=> (not res!1928752) (not e!2874388))))

(declare-datatypes ((K!12560 0))(
  ( (K!12561 (val!18319 Int)) )
))
(declare-datatypes ((V!12806 0))(
  ( (V!12807 (val!18320 Int)) )
))
(declare-datatypes ((tuple2!51906 0))(
  ( (tuple2!51907 (_1!29247 K!12560) (_2!29247 V!12806)) )
))
(declare-datatypes ((List!51317 0))(
  ( (Nil!51193) (Cons!51193 (h!57181 tuple2!51906) (t!358311 List!51317)) )
))
(declare-datatypes ((tuple2!51908 0))(
  ( (tuple2!51909 (_1!29248 (_ BitVec 64)) (_2!29248 List!51317)) )
))
(declare-datatypes ((List!51318 0))(
  ( (Nil!51194) (Cons!51194 (h!57182 tuple2!51908) (t!358312 List!51318)) )
))
(declare-datatypes ((ListLongMap!3375 0))(
  ( (ListLongMap!3376 (toList!4743 List!51318)) )
))
(declare-fun lm!1477 () ListLongMap!3375)

(declare-datatypes ((Hashable!5763 0))(
  ( (HashableExt!5762 (__x!31466 Int)) )
))
(declare-fun hashF!1107 () Hashable!5763)

(declare-fun allKeysSameHashInMap!1475 (ListLongMap!3375 Hashable!5763) Bool)

(assert (=> b!4608027 (= res!1928752 (allKeysSameHashInMap!1475 lm!1477 hashF!1107))))

(declare-fun b!4608028 () Bool)

(declare-fun e!2874390 () Bool)

(declare-fun tp!1340965 () Bool)

(assert (=> b!4608028 (= e!2874390 tp!1340965)))

(declare-fun b!4608029 () Bool)

(declare-fun res!1928743 () Bool)

(assert (=> b!4608029 (=> (not res!1928743) (not e!2874388))))

(declare-fun key!3287 () K!12560)

(declare-datatypes ((ListMap!4005 0))(
  ( (ListMap!4006 (toList!4744 List!51317)) )
))
(declare-fun contains!14194 (ListMap!4005 K!12560) Bool)

(declare-fun extractMap!1424 (List!51318) ListMap!4005)

(assert (=> b!4608029 (= res!1928743 (contains!14194 (extractMap!1424 (toList!4743 lm!1477)) key!3287))))

(declare-fun res!1928754 () Bool)

(assert (=> start!460696 (=> (not res!1928754) (not e!2874388))))

(declare-fun lambda!187914 () Int)

(declare-fun forall!10680 (List!51318 Int) Bool)

(assert (=> start!460696 (= res!1928754 (forall!10680 (toList!4743 lm!1477) lambda!187914))))

(assert (=> start!460696 e!2874388))

(assert (=> start!460696 true))

(declare-fun inv!66744 (ListLongMap!3375) Bool)

(assert (=> start!460696 (and (inv!66744 lm!1477) e!2874390)))

(declare-fun tp_is_empty!28749 () Bool)

(assert (=> start!460696 tp_is_empty!28749))

(declare-fun e!2874386 () Bool)

(assert (=> start!460696 e!2874386))

(declare-fun b!4608030 () Bool)

(declare-fun res!1928741 () Bool)

(declare-fun e!2874384 () Bool)

(assert (=> b!4608030 (=> res!1928741 e!2874384)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4608030 (= res!1928741 (or ((_ is Nil!51194) (toList!4743 lm!1477)) (= (_1!29248 (h!57182 (toList!4743 lm!1477))) hash!344)))))

(declare-fun b!4608031 () Bool)

(declare-fun res!1928753 () Bool)

(assert (=> b!4608031 (=> res!1928753 e!2874384)))

(declare-fun newBucket!178 () List!51317)

(declare-fun noDuplicateKeys!1364 (List!51317) Bool)

(assert (=> b!4608031 (= res!1928753 (not (noDuplicateKeys!1364 newBucket!178)))))

(declare-fun b!4608032 () Bool)

(declare-fun lt!1764816 () List!51317)

(declare-fun e!2874383 () Bool)

(declare-fun removePairForKey!989 (List!51317 K!12560) List!51317)

(assert (=> b!4608032 (= e!2874383 (= newBucket!178 (removePairForKey!989 lt!1764816 key!3287)))))

(declare-fun lt!1764820 () tuple2!51908)

(declare-fun lt!1764818 () ListLongMap!3375)

(declare-datatypes ((Unit!109157 0))(
  ( (Unit!109158) )
))
(declare-fun lt!1764814 () Unit!109157)

(declare-fun forallContained!2925 (List!51318 Int tuple2!51908) Unit!109157)

(assert (=> b!4608032 (= lt!1764814 (forallContained!2925 (toList!4743 lt!1764818) lambda!187914 lt!1764820))))

(declare-fun contains!14195 (List!51318 tuple2!51908) Bool)

(assert (=> b!4608032 (contains!14195 (toList!4743 lt!1764818) lt!1764820)))

(assert (=> b!4608032 (= lt!1764820 (tuple2!51909 hash!344 lt!1764816))))

(declare-fun lt!1764825 () Unit!109157)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!874 (List!51318 (_ BitVec 64) List!51317) Unit!109157)

(assert (=> b!4608032 (= lt!1764825 (lemmaGetValueByKeyImpliesContainsTuple!874 (toList!4743 lt!1764818) hash!344 lt!1764816))))

(declare-fun lt!1764826 () (_ BitVec 64))

(declare-fun contains!14196 (ListLongMap!3375 (_ BitVec 64)) Bool)

(assert (=> b!4608032 (contains!14196 lt!1764818 lt!1764826)))

(declare-fun lt!1764817 () Unit!109157)

(declare-fun lemmaInGenMapThenLongMapContainsHash!438 (ListLongMap!3375 K!12560 Hashable!5763) Unit!109157)

(assert (=> b!4608032 (= lt!1764817 (lemmaInGenMapThenLongMapContainsHash!438 lt!1764818 key!3287 hashF!1107))))

(declare-fun b!4608033 () Bool)

(declare-fun e!2874385 () Bool)

(declare-fun e!2874381 () Bool)

(assert (=> b!4608033 (= e!2874385 e!2874381)))

(declare-fun res!1928742 () Bool)

(assert (=> b!4608033 (=> res!1928742 e!2874381)))

(declare-fun lt!1764813 () List!51317)

(assert (=> b!4608033 (= res!1928742 (not (= lt!1764816 lt!1764813)))))

(declare-fun apply!12101 (ListLongMap!3375 (_ BitVec 64)) List!51317)

(assert (=> b!4608033 (= lt!1764816 (apply!12101 lt!1764818 hash!344))))

(declare-fun b!4608034 () Bool)

(declare-fun e!2874382 () Bool)

(assert (=> b!4608034 (= e!2874382 (not e!2874384))))

(declare-fun res!1928744 () Bool)

(assert (=> b!4608034 (=> res!1928744 e!2874384)))

(assert (=> b!4608034 (= res!1928744 (not (= newBucket!178 (removePairForKey!989 lt!1764813 key!3287))))))

(declare-fun lt!1764822 () Unit!109157)

(declare-fun lt!1764819 () tuple2!51908)

(assert (=> b!4608034 (= lt!1764822 (forallContained!2925 (toList!4743 lm!1477) lambda!187914 lt!1764819))))

(assert (=> b!4608034 (contains!14195 (toList!4743 lm!1477) lt!1764819)))

(assert (=> b!4608034 (= lt!1764819 (tuple2!51909 hash!344 lt!1764813))))

(declare-fun lt!1764829 () Unit!109157)

(assert (=> b!4608034 (= lt!1764829 (lemmaGetValueByKeyImpliesContainsTuple!874 (toList!4743 lm!1477) hash!344 lt!1764813))))

(assert (=> b!4608034 (= lt!1764813 (apply!12101 lm!1477 hash!344))))

(assert (=> b!4608034 (contains!14196 lm!1477 lt!1764826)))

(declare-fun lt!1764823 () Unit!109157)

(assert (=> b!4608034 (= lt!1764823 (lemmaInGenMapThenLongMapContainsHash!438 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4608035 () Bool)

(declare-fun res!1928746 () Bool)

(assert (=> b!4608035 (=> res!1928746 e!2874383)))

(assert (=> b!4608035 (= res!1928746 (not (forall!10680 (toList!4743 lt!1764818) lambda!187914)))))

(declare-fun b!4608036 () Bool)

(declare-fun res!1928740 () Bool)

(assert (=> b!4608036 (=> res!1928740 e!2874383)))

(assert (=> b!4608036 (= res!1928740 (not (allKeysSameHashInMap!1475 lt!1764818 hashF!1107)))))

(declare-fun b!4608037 () Bool)

(declare-fun e!2874380 () Unit!109157)

(declare-fun Unit!109159 () Unit!109157)

(assert (=> b!4608037 (= e!2874380 Unit!109159)))

(declare-fun b!4608038 () Bool)

(declare-fun tp_is_empty!28751 () Bool)

(declare-fun tp!1340964 () Bool)

(assert (=> b!4608038 (= e!2874386 (and tp_is_empty!28749 tp_is_empty!28751 tp!1340964))))

(declare-fun b!4608039 () Bool)

(assert (=> b!4608039 (= e!2874388 e!2874382)))

(declare-fun res!1928747 () Bool)

(assert (=> b!4608039 (=> (not res!1928747) (not e!2874382))))

(assert (=> b!4608039 (= res!1928747 (= lt!1764826 hash!344))))

(declare-fun hash!3297 (Hashable!5763 K!12560) (_ BitVec 64))

(assert (=> b!4608039 (= lt!1764826 (hash!3297 hashF!1107 key!3287))))

(declare-fun b!4608040 () Bool)

(declare-fun res!1928739 () Bool)

(assert (=> b!4608040 (=> res!1928739 e!2874381)))

(assert (=> b!4608040 (= res!1928739 (not (contains!14195 (t!358312 (toList!4743 lm!1477)) lt!1764819)))))

(declare-fun b!4608041 () Bool)

(declare-fun e!2874387 () Bool)

(assert (=> b!4608041 (= e!2874381 e!2874387)))

(declare-fun res!1928749 () Bool)

(assert (=> b!4608041 (=> res!1928749 e!2874387)))

(declare-fun lt!1764824 () Bool)

(assert (=> b!4608041 (= res!1928749 lt!1764824)))

(declare-fun lt!1764827 () Unit!109157)

(assert (=> b!4608041 (= lt!1764827 e!2874380)))

(declare-fun c!789350 () Bool)

(assert (=> b!4608041 (= c!789350 lt!1764824)))

(declare-fun containsKey!2246 (List!51317 K!12560) Bool)

(assert (=> b!4608041 (= lt!1764824 (not (containsKey!2246 lt!1764813 key!3287)))))

(declare-fun b!4608042 () Bool)

(declare-fun res!1928748 () Bool)

(assert (=> b!4608042 (=> (not res!1928748) (not e!2874382))))

(declare-fun allKeysSameHash!1220 (List!51317 (_ BitVec 64) Hashable!5763) Bool)

(assert (=> b!4608042 (= res!1928748 (allKeysSameHash!1220 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4608043 () Bool)

(declare-fun e!2874389 () Bool)

(assert (=> b!4608043 (= e!2874389 e!2874383)))

(declare-fun res!1928745 () Bool)

(assert (=> b!4608043 (=> res!1928745 e!2874383)))

(assert (=> b!4608043 (= res!1928745 (not (contains!14194 (extractMap!1424 (t!358312 (toList!4743 lm!1477))) key!3287)))))

(assert (=> b!4608043 (contains!14194 (extractMap!1424 (toList!4743 lt!1764818)) key!3287)))

(declare-fun lt!1764821 () Unit!109157)

(declare-fun lemmaListContainsThenExtractedMapContains!276 (ListLongMap!3375 K!12560 Hashable!5763) Unit!109157)

(assert (=> b!4608043 (= lt!1764821 (lemmaListContainsThenExtractedMapContains!276 lt!1764818 key!3287 hashF!1107))))

(declare-fun b!4608044 () Bool)

(assert (=> b!4608044 (= e!2874387 e!2874389)))

(declare-fun res!1928750 () Bool)

(assert (=> b!4608044 (=> res!1928750 e!2874389)))

(declare-fun containsKeyBiggerList!304 (List!51318 K!12560) Bool)

(assert (=> b!4608044 (= res!1928750 (not (containsKeyBiggerList!304 (t!358312 (toList!4743 lm!1477)) key!3287)))))

(assert (=> b!4608044 (containsKeyBiggerList!304 (toList!4743 lt!1764818) key!3287)))

(declare-fun lt!1764828 () Unit!109157)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!174 (ListLongMap!3375 K!12560 Hashable!5763) Unit!109157)

(assert (=> b!4608044 (= lt!1764828 (lemmaInLongMapThenContainsKeyBiggerList!174 lt!1764818 key!3287 hashF!1107))))

(declare-fun b!4608045 () Bool)

(assert (=> b!4608045 (= e!2874384 e!2874385)))

(declare-fun res!1928751 () Bool)

(assert (=> b!4608045 (=> res!1928751 e!2874385)))

(assert (=> b!4608045 (= res!1928751 (not (contains!14196 lt!1764818 hash!344)))))

(declare-fun tail!8019 (ListLongMap!3375) ListLongMap!3375)

(assert (=> b!4608045 (= lt!1764818 (tail!8019 lm!1477))))

(declare-fun b!4608046 () Bool)

(declare-fun Unit!109160 () Unit!109157)

(assert (=> b!4608046 (= e!2874380 Unit!109160)))

(declare-fun lt!1764815 () Unit!109157)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!328 (ListLongMap!3375 K!12560 Hashable!5763) Unit!109157)

(assert (=> b!4608046 (= lt!1764815 (lemmaNotInItsHashBucketThenNotInMap!328 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4608046 false))

(assert (= (and start!460696 res!1928754) b!4608027))

(assert (= (and b!4608027 res!1928752) b!4608029))

(assert (= (and b!4608029 res!1928743) b!4608039))

(assert (= (and b!4608039 res!1928747) b!4608042))

(assert (= (and b!4608042 res!1928748) b!4608034))

(assert (= (and b!4608034 (not res!1928744)) b!4608031))

(assert (= (and b!4608031 (not res!1928753)) b!4608030))

(assert (= (and b!4608030 (not res!1928741)) b!4608045))

(assert (= (and b!4608045 (not res!1928751)) b!4608033))

(assert (= (and b!4608033 (not res!1928742)) b!4608040))

(assert (= (and b!4608040 (not res!1928739)) b!4608041))

(assert (= (and b!4608041 c!789350) b!4608046))

(assert (= (and b!4608041 (not c!789350)) b!4608037))

(assert (= (and b!4608041 (not res!1928749)) b!4608044))

(assert (= (and b!4608044 (not res!1928750)) b!4608043))

(assert (= (and b!4608043 (not res!1928745)) b!4608035))

(assert (= (and b!4608035 (not res!1928746)) b!4608036))

(assert (= (and b!4608036 (not res!1928740)) b!4608032))

(assert (= start!460696 b!4608028))

(assert (= (and start!460696 ((_ is Cons!51193) newBucket!178)) b!4608038))

(declare-fun m!5438115 () Bool)

(assert (=> b!4608027 m!5438115))

(declare-fun m!5438117 () Bool)

(assert (=> b!4608045 m!5438117))

(declare-fun m!5438119 () Bool)

(assert (=> b!4608045 m!5438119))

(declare-fun m!5438121 () Bool)

(assert (=> b!4608036 m!5438121))

(declare-fun m!5438123 () Bool)

(assert (=> b!4608034 m!5438123))

(declare-fun m!5438125 () Bool)

(assert (=> b!4608034 m!5438125))

(declare-fun m!5438127 () Bool)

(assert (=> b!4608034 m!5438127))

(declare-fun m!5438129 () Bool)

(assert (=> b!4608034 m!5438129))

(declare-fun m!5438131 () Bool)

(assert (=> b!4608034 m!5438131))

(declare-fun m!5438133 () Bool)

(assert (=> b!4608034 m!5438133))

(declare-fun m!5438135 () Bool)

(assert (=> b!4608034 m!5438135))

(declare-fun m!5438137 () Bool)

(assert (=> b!4608035 m!5438137))

(declare-fun m!5438139 () Bool)

(assert (=> b!4608033 m!5438139))

(declare-fun m!5438141 () Bool)

(assert (=> b!4608044 m!5438141))

(declare-fun m!5438143 () Bool)

(assert (=> b!4608044 m!5438143))

(declare-fun m!5438145 () Bool)

(assert (=> b!4608044 m!5438145))

(declare-fun m!5438147 () Bool)

(assert (=> b!4608040 m!5438147))

(declare-fun m!5438149 () Bool)

(assert (=> b!4608031 m!5438149))

(declare-fun m!5438151 () Bool)

(assert (=> b!4608039 m!5438151))

(declare-fun m!5438153 () Bool)

(assert (=> b!4608046 m!5438153))

(declare-fun m!5438155 () Bool)

(assert (=> start!460696 m!5438155))

(declare-fun m!5438157 () Bool)

(assert (=> start!460696 m!5438157))

(declare-fun m!5438159 () Bool)

(assert (=> b!4608032 m!5438159))

(declare-fun m!5438161 () Bool)

(assert (=> b!4608032 m!5438161))

(declare-fun m!5438163 () Bool)

(assert (=> b!4608032 m!5438163))

(declare-fun m!5438165 () Bool)

(assert (=> b!4608032 m!5438165))

(declare-fun m!5438167 () Bool)

(assert (=> b!4608032 m!5438167))

(declare-fun m!5438169 () Bool)

(assert (=> b!4608032 m!5438169))

(declare-fun m!5438171 () Bool)

(assert (=> b!4608042 m!5438171))

(declare-fun m!5438173 () Bool)

(assert (=> b!4608043 m!5438173))

(declare-fun m!5438175 () Bool)

(assert (=> b!4608043 m!5438175))

(declare-fun m!5438177 () Bool)

(assert (=> b!4608043 m!5438177))

(assert (=> b!4608043 m!5438175))

(declare-fun m!5438179 () Bool)

(assert (=> b!4608043 m!5438179))

(assert (=> b!4608043 m!5438173))

(declare-fun m!5438181 () Bool)

(assert (=> b!4608043 m!5438181))

(declare-fun m!5438183 () Bool)

(assert (=> b!4608029 m!5438183))

(assert (=> b!4608029 m!5438183))

(declare-fun m!5438185 () Bool)

(assert (=> b!4608029 m!5438185))

(declare-fun m!5438187 () Bool)

(assert (=> b!4608041 m!5438187))

(check-sat (not b!4608040) (not b!4608032) tp_is_empty!28749 (not b!4608038) (not b!4608029) (not b!4608039) (not b!4608042) (not b!4608031) (not b!4608044) (not b!4608027) (not b!4608033) tp_is_empty!28751 (not b!4608034) (not b!4608045) (not b!4608041) (not b!4608046) (not b!4608036) (not start!460696) (not b!4608043) (not b!4608028) (not b!4608035))
(check-sat)
