; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459668 () Bool)

(assert start!459668)

(declare-fun b!4603126 () Bool)

(declare-fun res!1925801 () Bool)

(declare-fun e!2871275 () Bool)

(assert (=> b!4603126 (=> (not res!1925801) (not e!2871275))))

(declare-datatypes ((Hashable!5733 0))(
  ( (HashableExt!5732 (__x!31436 Int)) )
))
(declare-fun hashF!1107 () Hashable!5733)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12485 0))(
  ( (K!12486 (val!18259 Int)) )
))
(declare-datatypes ((V!12731 0))(
  ( (V!12732 (val!18260 Int)) )
))
(declare-datatypes ((tuple2!51786 0))(
  ( (tuple2!51787 (_1!29187 K!12485) (_2!29187 V!12731)) )
))
(declare-datatypes ((List!51244 0))(
  ( (Nil!51120) (Cons!51120 (h!57094 tuple2!51786) (t!358238 List!51244)) )
))
(declare-fun newBucket!178 () List!51244)

(declare-fun allKeysSameHash!1190 (List!51244 (_ BitVec 64) Hashable!5733) Bool)

(assert (=> b!4603126 (= res!1925801 (allKeysSameHash!1190 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4603127 () Bool)

(declare-fun e!2871273 () Bool)

(declare-fun e!2871274 () Bool)

(assert (=> b!4603127 (= e!2871273 e!2871274)))

(declare-fun res!1925795 () Bool)

(assert (=> b!4603127 (=> res!1925795 e!2871274)))

(declare-datatypes ((ListMap!3945 0))(
  ( (ListMap!3946 (toList!4683 List!51244)) )
))
(declare-fun lt!1761811 () ListMap!3945)

(declare-fun lt!1761818 () ListMap!3945)

(declare-fun eq!741 (ListMap!3945 ListMap!3945) Bool)

(declare-fun addToMapMapFromBucket!824 (List!51244 ListMap!3945) ListMap!3945)

(assert (=> b!4603127 (= res!1925795 (not (eq!741 lt!1761818 (addToMapMapFromBucket!824 newBucket!178 lt!1761811))))))

(declare-datatypes ((tuple2!51788 0))(
  ( (tuple2!51789 (_1!29188 (_ BitVec 64)) (_2!29188 List!51244)) )
))
(declare-datatypes ((List!51245 0))(
  ( (Nil!51121) (Cons!51121 (h!57095 tuple2!51788) (t!358239 List!51245)) )
))
(declare-datatypes ((ListLongMap!3315 0))(
  ( (ListLongMap!3316 (toList!4684 List!51245)) )
))
(declare-fun lt!1761824 () ListLongMap!3315)

(declare-fun extractMap!1394 (List!51245) ListMap!3945)

(assert (=> b!4603127 (= lt!1761818 (extractMap!1394 (toList!4684 lt!1761824)))))

(declare-fun res!1925790 () Bool)

(declare-fun e!2871277 () Bool)

(assert (=> start!459668 (=> (not res!1925790) (not e!2871277))))

(declare-fun lm!1477 () ListLongMap!3315)

(declare-fun lambda!186992 () Int)

(declare-fun forall!10630 (List!51245 Int) Bool)

(assert (=> start!459668 (= res!1925790 (forall!10630 (toList!4684 lm!1477) lambda!186992))))

(assert (=> start!459668 e!2871277))

(assert (=> start!459668 true))

(declare-fun e!2871286 () Bool)

(declare-fun inv!66669 (ListLongMap!3315) Bool)

(assert (=> start!459668 (and (inv!66669 lm!1477) e!2871286)))

(declare-fun tp_is_empty!28629 () Bool)

(assert (=> start!459668 tp_is_empty!28629))

(declare-fun e!2871279 () Bool)

(assert (=> start!459668 e!2871279))

(declare-fun b!4603128 () Bool)

(declare-fun e!2871282 () Bool)

(assert (=> b!4603128 (= e!2871275 (not e!2871282))))

(declare-fun res!1925798 () Bool)

(assert (=> b!4603128 (=> res!1925798 e!2871282)))

(declare-fun lt!1761809 () List!51244)

(declare-fun key!3287 () K!12485)

(declare-fun removePairForKey!959 (List!51244 K!12485) List!51244)

(assert (=> b!4603128 (= res!1925798 (not (= newBucket!178 (removePairForKey!959 lt!1761809 key!3287))))))

(declare-fun lt!1761829 () tuple2!51788)

(declare-datatypes ((Unit!108799 0))(
  ( (Unit!108800) )
))
(declare-fun lt!1761821 () Unit!108799)

(declare-fun forallContained!2879 (List!51245 Int tuple2!51788) Unit!108799)

(assert (=> b!4603128 (= lt!1761821 (forallContained!2879 (toList!4684 lm!1477) lambda!186992 lt!1761829))))

(declare-fun contains!14089 (List!51245 tuple2!51788) Bool)

(assert (=> b!4603128 (contains!14089 (toList!4684 lm!1477) lt!1761829)))

(assert (=> b!4603128 (= lt!1761829 (tuple2!51789 hash!344 lt!1761809))))

(declare-fun lt!1761819 () Unit!108799)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!844 (List!51245 (_ BitVec 64) List!51244) Unit!108799)

(assert (=> b!4603128 (= lt!1761819 (lemmaGetValueByKeyImpliesContainsTuple!844 (toList!4684 lm!1477) hash!344 lt!1761809))))

(declare-fun apply!12071 (ListLongMap!3315 (_ BitVec 64)) List!51244)

(assert (=> b!4603128 (= lt!1761809 (apply!12071 lm!1477 hash!344))))

(declare-fun lt!1761815 () (_ BitVec 64))

(declare-fun contains!14090 (ListLongMap!3315 (_ BitVec 64)) Bool)

(assert (=> b!4603128 (contains!14090 lm!1477 lt!1761815)))

(declare-fun lt!1761808 () Unit!108799)

(declare-fun lemmaInGenMapThenLongMapContainsHash!408 (ListLongMap!3315 K!12485 Hashable!5733) Unit!108799)

(assert (=> b!4603128 (= lt!1761808 (lemmaInGenMapThenLongMapContainsHash!408 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4603129 () Bool)

(declare-fun e!2871288 () Bool)

(declare-fun e!2871289 () Bool)

(assert (=> b!4603129 (= e!2871288 e!2871289)))

(declare-fun res!1925789 () Bool)

(assert (=> b!4603129 (=> res!1925789 e!2871289)))

(declare-fun tail!7976 (List!51245) List!51245)

(assert (=> b!4603129 (= res!1925789 (not (= (t!358239 (toList!4684 lm!1477)) (tail!7976 (toList!4684 lt!1761824)))))))

(declare-fun lt!1761827 () tuple2!51788)

(declare-fun +!1766 (ListLongMap!3315 tuple2!51788) ListLongMap!3315)

(assert (=> b!4603129 (= lt!1761824 (+!1766 lm!1477 lt!1761827))))

(declare-fun lt!1761810 () tuple2!51788)

(declare-fun -!510 (ListMap!3945 K!12485) ListMap!3945)

(assert (=> b!4603129 (eq!741 (extractMap!1394 (Cons!51121 lt!1761827 Nil!51121)) (-!510 (extractMap!1394 (Cons!51121 lt!1761810 Nil!51121)) key!3287))))

(assert (=> b!4603129 (= lt!1761810 (tuple2!51789 hash!344 (_2!29188 (h!57095 (toList!4684 lm!1477)))))))

(assert (=> b!4603129 (= lt!1761827 (tuple2!51789 hash!344 newBucket!178))))

(declare-fun lt!1761826 () Unit!108799)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!100 ((_ BitVec 64) List!51244 List!51244 K!12485 Hashable!5733) Unit!108799)

(assert (=> b!4603129 (= lt!1761826 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!100 hash!344 (_2!29188 (h!57095 (toList!4684 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1761807 () List!51245)

(declare-fun contains!14091 (ListMap!3945 K!12485) Bool)

(assert (=> b!4603129 (contains!14091 (extractMap!1394 lt!1761807) key!3287)))

(declare-fun lt!1761803 () Unit!108799)

(declare-fun lemmaListContainsThenExtractedMapContains!268 (ListLongMap!3315 K!12485 Hashable!5733) Unit!108799)

(assert (=> b!4603129 (= lt!1761803 (lemmaListContainsThenExtractedMapContains!268 (ListLongMap!3316 lt!1761807) key!3287 hashF!1107))))

(declare-fun b!4603130 () Bool)

(declare-fun e!2871281 () Bool)

(assert (=> b!4603130 (= e!2871281 true)))

(declare-fun lt!1761825 () Bool)

(declare-fun lt!1761814 () ListMap!3945)

(assert (=> b!4603130 (= lt!1761825 (eq!741 lt!1761818 (-!510 lt!1761814 key!3287)))))

(declare-fun b!4603131 () Bool)

(declare-fun e!2871290 () Bool)

(assert (=> b!4603131 (= e!2871289 e!2871290)))

(declare-fun res!1925786 () Bool)

(assert (=> b!4603131 (=> res!1925786 e!2871290)))

(declare-fun lt!1761816 () ListLongMap!3315)

(assert (=> b!4603131 (= res!1925786 (not (= lt!1761824 (+!1766 lt!1761816 lt!1761827))))))

(declare-fun tail!7977 (ListLongMap!3315) ListLongMap!3315)

(assert (=> b!4603131 (= lt!1761816 (tail!7977 lm!1477))))

(declare-fun b!4603132 () Bool)

(declare-fun tp!1340626 () Bool)

(declare-fun tp_is_empty!28631 () Bool)

(assert (=> b!4603132 (= e!2871279 (and tp_is_empty!28629 tp_is_empty!28631 tp!1340626))))

(declare-fun b!4603133 () Bool)

(declare-fun e!2871284 () Bool)

(assert (=> b!4603133 (= e!2871282 e!2871284)))

(declare-fun res!1925799 () Bool)

(assert (=> b!4603133 (=> res!1925799 e!2871284)))

(declare-fun lt!1761823 () Bool)

(assert (=> b!4603133 (= res!1925799 lt!1761823)))

(declare-fun lt!1761804 () Unit!108799)

(declare-fun e!2871283 () Unit!108799)

(assert (=> b!4603133 (= lt!1761804 e!2871283)))

(declare-fun c!788615 () Bool)

(assert (=> b!4603133 (= c!788615 lt!1761823)))

(declare-fun containsKey!2190 (List!51244 K!12485) Bool)

(assert (=> b!4603133 (= lt!1761823 (not (containsKey!2190 (_2!29188 (h!57095 (toList!4684 lm!1477))) key!3287)))))

(declare-fun b!4603134 () Bool)

(declare-fun Unit!108801 () Unit!108799)

(assert (=> b!4603134 (= e!2871283 Unit!108801)))

(declare-fun b!4603135 () Bool)

(assert (=> b!4603135 (= e!2871274 e!2871281)))

(declare-fun res!1925803 () Bool)

(assert (=> b!4603135 (=> res!1925803 e!2871281)))

(declare-fun lt!1761805 () ListMap!3945)

(assert (=> b!4603135 (= res!1925803 (not (eq!741 lt!1761805 (addToMapMapFromBucket!824 (_2!29188 (h!57095 (toList!4684 lm!1477))) lt!1761811))))))

(assert (=> b!4603135 (= lt!1761805 (extractMap!1394 (toList!4684 (+!1766 lm!1477 lt!1761810))))))

(declare-fun b!4603136 () Bool)

(declare-fun e!2871278 () Bool)

(assert (=> b!4603136 (= e!2871277 e!2871278)))

(declare-fun res!1925800 () Bool)

(assert (=> b!4603136 (=> (not res!1925800) (not e!2871278))))

(assert (=> b!4603136 (= res!1925800 (contains!14091 lt!1761814 key!3287))))

(assert (=> b!4603136 (= lt!1761814 (extractMap!1394 (toList!4684 lm!1477)))))

(declare-fun b!4603137 () Bool)

(declare-fun e!2871287 () Bool)

(assert (=> b!4603137 (= e!2871290 e!2871287)))

(declare-fun res!1925796 () Bool)

(assert (=> b!4603137 (=> res!1925796 e!2871287)))

(declare-fun lt!1761813 () ListMap!3945)

(assert (=> b!4603137 (= res!1925796 (not (= lt!1761813 lt!1761811)))))

(assert (=> b!4603137 (= lt!1761811 (extractMap!1394 (t!358239 (toList!4684 lm!1477))))))

(assert (=> b!4603137 (= lt!1761813 (extractMap!1394 (toList!4684 lt!1761816)))))

(declare-fun b!4603138 () Bool)

(declare-fun Unit!108802 () Unit!108799)

(assert (=> b!4603138 (= e!2871283 Unit!108802)))

(declare-fun lt!1761828 () Unit!108799)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!304 (ListLongMap!3315 K!12485 Hashable!5733) Unit!108799)

(assert (=> b!4603138 (= lt!1761828 (lemmaNotInItsHashBucketThenNotInMap!304 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4603138 false))

(declare-fun b!4603139 () Bool)

(declare-fun e!2871276 () Unit!108799)

(declare-fun Unit!108803 () Unit!108799)

(assert (=> b!4603139 (= e!2871276 Unit!108803)))

(declare-fun b!4603140 () Bool)

(declare-fun Unit!108804 () Unit!108799)

(assert (=> b!4603140 (= e!2871276 Unit!108804)))

(declare-fun lt!1761806 () Unit!108799)

(assert (=> b!4603140 (= lt!1761806 (lemmaInGenMapThenLongMapContainsHash!408 lt!1761816 key!3287 hashF!1107))))

(declare-fun res!1925787 () Bool)

(assert (=> b!4603140 (= res!1925787 (contains!14090 lt!1761816 lt!1761815))))

(declare-fun e!2871280 () Bool)

(assert (=> b!4603140 (=> (not res!1925787) (not e!2871280))))

(assert (=> b!4603140 e!2871280))

(declare-fun b!4603141 () Bool)

(declare-fun res!1925791 () Bool)

(assert (=> b!4603141 (=> res!1925791 e!2871282)))

(declare-fun noDuplicateKeys!1334 (List!51244) Bool)

(assert (=> b!4603141 (= res!1925791 (not (noDuplicateKeys!1334 newBucket!178)))))

(declare-fun b!4603142 () Bool)

(declare-fun e!2871285 () Bool)

(assert (=> b!4603142 (= e!2871287 e!2871285)))

(declare-fun res!1925804 () Bool)

(assert (=> b!4603142 (=> res!1925804 e!2871285)))

(declare-fun lt!1761820 () Bool)

(assert (=> b!4603142 (= res!1925804 lt!1761820)))

(declare-fun lt!1761812 () Unit!108799)

(assert (=> b!4603142 (= lt!1761812 e!2871276)))

(declare-fun c!788616 () Bool)

(assert (=> b!4603142 (= c!788616 lt!1761820)))

(assert (=> b!4603142 (= lt!1761820 (contains!14091 lt!1761813 key!3287))))

(declare-fun b!4603143 () Bool)

(declare-fun tp!1340627 () Bool)

(assert (=> b!4603143 (= e!2871286 tp!1340627)))

(declare-fun b!4603144 () Bool)

(declare-fun res!1925794 () Bool)

(assert (=> b!4603144 (=> (not res!1925794) (not e!2871277))))

(declare-fun allKeysSameHashInMap!1445 (ListLongMap!3315 Hashable!5733) Bool)

(assert (=> b!4603144 (= res!1925794 (allKeysSameHashInMap!1445 lm!1477 hashF!1107))))

(declare-fun b!4603145 () Bool)

(declare-fun res!1925792 () Bool)

(assert (=> b!4603145 (=> res!1925792 e!2871281)))

(assert (=> b!4603145 (= res!1925792 (not (eq!741 lt!1761805 lt!1761814)))))

(declare-fun b!4603146 () Bool)

(declare-fun res!1925802 () Bool)

(assert (=> b!4603146 (=> res!1925802 e!2871282)))

(get-info :version)

(assert (=> b!4603146 (= res!1925802 (or ((_ is Nil!51121) (toList!4684 lm!1477)) (not (= (_1!29188 (h!57095 (toList!4684 lm!1477))) hash!344))))))

(declare-fun b!4603147 () Bool)

(assert (=> b!4603147 (= e!2871285 e!2871273)))

(declare-fun res!1925788 () Bool)

(assert (=> b!4603147 (=> res!1925788 e!2871273)))

(assert (=> b!4603147 (= res!1925788 (not (= (toList!4684 lt!1761824) (Cons!51121 lt!1761827 (t!358239 (toList!4684 lm!1477))))))))

(declare-fun lt!1761817 () List!51245)

(assert (=> b!4603147 (eq!741 (extractMap!1394 (Cons!51121 lt!1761827 lt!1761817)) (-!510 (extractMap!1394 (Cons!51121 lt!1761810 lt!1761817)) key!3287))))

(assert (=> b!4603147 (= lt!1761817 (tail!7976 (toList!4684 lm!1477)))))

(declare-fun lt!1761822 () Unit!108799)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!36 (ListLongMap!3315 (_ BitVec 64) List!51244 List!51244 K!12485 Hashable!5733) Unit!108799)

(assert (=> b!4603147 (= lt!1761822 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!36 lm!1477 hash!344 (_2!29188 (h!57095 (toList!4684 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4603148 () Bool)

(assert (=> b!4603148 (= e!2871278 e!2871275)))

(declare-fun res!1925797 () Bool)

(assert (=> b!4603148 (=> (not res!1925797) (not e!2871275))))

(assert (=> b!4603148 (= res!1925797 (= lt!1761815 hash!344))))

(declare-fun hash!3255 (Hashable!5733 K!12485) (_ BitVec 64))

(assert (=> b!4603148 (= lt!1761815 (hash!3255 hashF!1107 key!3287))))

(declare-fun b!4603149 () Bool)

(assert (=> b!4603149 (= e!2871284 e!2871288)))

(declare-fun res!1925793 () Bool)

(assert (=> b!4603149 (=> res!1925793 e!2871288)))

(declare-fun containsKeyBiggerList!290 (List!51245 K!12485) Bool)

(assert (=> b!4603149 (= res!1925793 (not (containsKeyBiggerList!290 lt!1761807 key!3287)))))

(assert (=> b!4603149 (= lt!1761807 (Cons!51121 (h!57095 (toList!4684 lm!1477)) Nil!51121))))

(declare-fun b!4603150 () Bool)

(assert (=> b!4603150 (= e!2871280 false)))

(assert (= (and start!459668 res!1925790) b!4603144))

(assert (= (and b!4603144 res!1925794) b!4603136))

(assert (= (and b!4603136 res!1925800) b!4603148))

(assert (= (and b!4603148 res!1925797) b!4603126))

(assert (= (and b!4603126 res!1925801) b!4603128))

(assert (= (and b!4603128 (not res!1925798)) b!4603141))

(assert (= (and b!4603141 (not res!1925791)) b!4603146))

(assert (= (and b!4603146 (not res!1925802)) b!4603133))

(assert (= (and b!4603133 c!788615) b!4603138))

(assert (= (and b!4603133 (not c!788615)) b!4603134))

(assert (= (and b!4603133 (not res!1925799)) b!4603149))

(assert (= (and b!4603149 (not res!1925793)) b!4603129))

(assert (= (and b!4603129 (not res!1925789)) b!4603131))

(assert (= (and b!4603131 (not res!1925786)) b!4603137))

(assert (= (and b!4603137 (not res!1925796)) b!4603142))

(assert (= (and b!4603142 c!788616) b!4603140))

(assert (= (and b!4603142 (not c!788616)) b!4603139))

(assert (= (and b!4603140 res!1925787) b!4603150))

(assert (= (and b!4603142 (not res!1925804)) b!4603147))

(assert (= (and b!4603147 (not res!1925788)) b!4603127))

(assert (= (and b!4603127 (not res!1925795)) b!4603135))

(assert (= (and b!4603135 (not res!1925803)) b!4603145))

(assert (= (and b!4603145 (not res!1925792)) b!4603130))

(assert (= start!459668 b!4603143))

(assert (= (and start!459668 ((_ is Cons!51120) newBucket!178)) b!4603132))

(declare-fun m!5432195 () Bool)

(assert (=> b!4603140 m!5432195))

(declare-fun m!5432197 () Bool)

(assert (=> b!4603140 m!5432197))

(declare-fun m!5432199 () Bool)

(assert (=> b!4603136 m!5432199))

(declare-fun m!5432201 () Bool)

(assert (=> b!4603136 m!5432201))

(declare-fun m!5432203 () Bool)

(assert (=> b!4603148 m!5432203))

(declare-fun m!5432205 () Bool)

(assert (=> b!4603126 m!5432205))

(declare-fun m!5432207 () Bool)

(assert (=> b!4603130 m!5432207))

(assert (=> b!4603130 m!5432207))

(declare-fun m!5432209 () Bool)

(assert (=> b!4603130 m!5432209))

(declare-fun m!5432211 () Bool)

(assert (=> b!4603135 m!5432211))

(assert (=> b!4603135 m!5432211))

(declare-fun m!5432213 () Bool)

(assert (=> b!4603135 m!5432213))

(declare-fun m!5432215 () Bool)

(assert (=> b!4603135 m!5432215))

(declare-fun m!5432217 () Bool)

(assert (=> b!4603135 m!5432217))

(declare-fun m!5432219 () Bool)

(assert (=> b!4603133 m!5432219))

(declare-fun m!5432221 () Bool)

(assert (=> b!4603147 m!5432221))

(declare-fun m!5432223 () Bool)

(assert (=> b!4603147 m!5432223))

(declare-fun m!5432225 () Bool)

(assert (=> b!4603147 m!5432225))

(declare-fun m!5432227 () Bool)

(assert (=> b!4603147 m!5432227))

(declare-fun m!5432229 () Bool)

(assert (=> b!4603147 m!5432229))

(declare-fun m!5432231 () Bool)

(assert (=> b!4603147 m!5432231))

(assert (=> b!4603147 m!5432221))

(assert (=> b!4603147 m!5432225))

(assert (=> b!4603147 m!5432223))

(declare-fun m!5432233 () Bool)

(assert (=> b!4603145 m!5432233))

(declare-fun m!5432235 () Bool)

(assert (=> b!4603127 m!5432235))

(assert (=> b!4603127 m!5432235))

(declare-fun m!5432237 () Bool)

(assert (=> b!4603127 m!5432237))

(declare-fun m!5432239 () Bool)

(assert (=> b!4603127 m!5432239))

(declare-fun m!5432241 () Bool)

(assert (=> b!4603142 m!5432241))

(declare-fun m!5432243 () Bool)

(assert (=> b!4603131 m!5432243))

(declare-fun m!5432245 () Bool)

(assert (=> b!4603131 m!5432245))

(declare-fun m!5432247 () Bool)

(assert (=> start!459668 m!5432247))

(declare-fun m!5432249 () Bool)

(assert (=> start!459668 m!5432249))

(declare-fun m!5432251 () Bool)

(assert (=> b!4603129 m!5432251))

(declare-fun m!5432253 () Bool)

(assert (=> b!4603129 m!5432253))

(declare-fun m!5432255 () Bool)

(assert (=> b!4603129 m!5432255))

(declare-fun m!5432257 () Bool)

(assert (=> b!4603129 m!5432257))

(declare-fun m!5432259 () Bool)

(assert (=> b!4603129 m!5432259))

(declare-fun m!5432261 () Bool)

(assert (=> b!4603129 m!5432261))

(assert (=> b!4603129 m!5432259))

(assert (=> b!4603129 m!5432253))

(assert (=> b!4603129 m!5432261))

(declare-fun m!5432263 () Bool)

(assert (=> b!4603129 m!5432263))

(assert (=> b!4603129 m!5432257))

(declare-fun m!5432265 () Bool)

(assert (=> b!4603129 m!5432265))

(declare-fun m!5432267 () Bool)

(assert (=> b!4603129 m!5432267))

(declare-fun m!5432269 () Bool)

(assert (=> b!4603129 m!5432269))

(declare-fun m!5432271 () Bool)

(assert (=> b!4603137 m!5432271))

(declare-fun m!5432273 () Bool)

(assert (=> b!4603137 m!5432273))

(declare-fun m!5432275 () Bool)

(assert (=> b!4603128 m!5432275))

(declare-fun m!5432277 () Bool)

(assert (=> b!4603128 m!5432277))

(declare-fun m!5432279 () Bool)

(assert (=> b!4603128 m!5432279))

(declare-fun m!5432281 () Bool)

(assert (=> b!4603128 m!5432281))

(declare-fun m!5432283 () Bool)

(assert (=> b!4603128 m!5432283))

(declare-fun m!5432285 () Bool)

(assert (=> b!4603128 m!5432285))

(declare-fun m!5432287 () Bool)

(assert (=> b!4603128 m!5432287))

(declare-fun m!5432289 () Bool)

(assert (=> b!4603149 m!5432289))

(declare-fun m!5432291 () Bool)

(assert (=> b!4603141 m!5432291))

(declare-fun m!5432293 () Bool)

(assert (=> b!4603138 m!5432293))

(declare-fun m!5432295 () Bool)

(assert (=> b!4603144 m!5432295))

(check-sat (not b!4603127) (not b!4603136) (not b!4603148) (not b!4603145) (not b!4603129) (not b!4603144) tp_is_empty!28629 (not b!4603137) (not b!4603138) (not b!4603128) (not start!459668) (not b!4603130) (not b!4603140) (not b!4603126) (not b!4603149) (not b!4603143) (not b!4603141) (not b!4603147) (not b!4603132) (not b!4603135) tp_is_empty!28631 (not b!4603133) (not b!4603142) (not b!4603131))
(check-sat)
