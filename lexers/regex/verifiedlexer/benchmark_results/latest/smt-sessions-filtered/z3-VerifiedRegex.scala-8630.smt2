; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!460692 () Bool)

(assert start!460692)

(declare-fun b!4607908 () Bool)

(declare-fun e!2874317 () Bool)

(declare-fun tp!1340953 () Bool)

(assert (=> b!4607908 (= e!2874317 tp!1340953)))

(declare-fun b!4607909 () Bool)

(declare-fun res!1928658 () Bool)

(declare-fun e!2874321 () Bool)

(assert (=> b!4607909 (=> (not res!1928658) (not e!2874321))))

(declare-datatypes ((K!12555 0))(
  ( (K!12556 (val!18315 Int)) )
))
(declare-datatypes ((V!12801 0))(
  ( (V!12802 (val!18316 Int)) )
))
(declare-datatypes ((tuple2!51898 0))(
  ( (tuple2!51899 (_1!29243 K!12555) (_2!29243 V!12801)) )
))
(declare-datatypes ((List!51313 0))(
  ( (Nil!51189) (Cons!51189 (h!57177 tuple2!51898) (t!358307 List!51313)) )
))
(declare-datatypes ((tuple2!51900 0))(
  ( (tuple2!51901 (_1!29244 (_ BitVec 64)) (_2!29244 List!51313)) )
))
(declare-datatypes ((List!51314 0))(
  ( (Nil!51190) (Cons!51190 (h!57178 tuple2!51900) (t!358308 List!51314)) )
))
(declare-datatypes ((ListLongMap!3371 0))(
  ( (ListLongMap!3372 (toList!4739 List!51314)) )
))
(declare-fun lm!1477 () ListLongMap!3371)

(declare-datatypes ((Hashable!5761 0))(
  ( (HashableExt!5760 (__x!31464 Int)) )
))
(declare-fun hashF!1107 () Hashable!5761)

(declare-fun allKeysSameHashInMap!1473 (ListLongMap!3371 Hashable!5761) Bool)

(assert (=> b!4607909 (= res!1928658 (allKeysSameHashInMap!1473 lm!1477 hashF!1107))))

(declare-fun tp!1340952 () Bool)

(declare-fun b!4607910 () Bool)

(declare-fun tp_is_empty!28743 () Bool)

(declare-fun tp_is_empty!28741 () Bool)

(declare-fun e!2874322 () Bool)

(assert (=> b!4607910 (= e!2874322 (and tp_is_empty!28741 tp_is_empty!28743 tp!1340952))))

(declare-fun b!4607911 () Bool)

(declare-fun e!2874318 () Bool)

(declare-fun e!2874316 () Bool)

(assert (=> b!4607911 (= e!2874318 e!2874316)))

(declare-fun res!1928653 () Bool)

(assert (=> b!4607911 (=> res!1928653 e!2874316)))

(declare-fun key!3287 () K!12555)

(declare-fun containsKeyBiggerList!302 (List!51314 K!12555) Bool)

(assert (=> b!4607911 (= res!1928653 (not (containsKeyBiggerList!302 (t!358308 (toList!4739 lm!1477)) key!3287)))))

(declare-fun lt!1764727 () ListLongMap!3371)

(assert (=> b!4607911 (containsKeyBiggerList!302 (toList!4739 lt!1764727) key!3287)))

(declare-datatypes ((Unit!109149 0))(
  ( (Unit!109150) )
))
(declare-fun lt!1764726 () Unit!109149)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!172 (ListLongMap!3371 K!12555 Hashable!5761) Unit!109149)

(assert (=> b!4607911 (= lt!1764726 (lemmaInLongMapThenContainsKeyBiggerList!172 lt!1764727 key!3287 hashF!1107))))

(declare-fun b!4607912 () Bool)

(declare-fun res!1928655 () Bool)

(declare-fun e!2874319 () Bool)

(assert (=> b!4607912 (=> res!1928655 e!2874319)))

(declare-fun lt!1764722 () tuple2!51900)

(declare-fun contains!14188 (List!51314 tuple2!51900) Bool)

(assert (=> b!4607912 (= res!1928655 (not (contains!14188 (t!358308 (toList!4739 lm!1477)) lt!1764722)))))

(declare-fun b!4607913 () Bool)

(declare-fun e!2874320 () Bool)

(assert (=> b!4607913 (= e!2874320 true)))

(declare-fun lt!1764723 () Bool)

(assert (=> b!4607913 (= lt!1764723 (allKeysSameHashInMap!1473 lt!1764727 hashF!1107))))

(declare-fun b!4607914 () Bool)

(declare-fun e!2874315 () Unit!109149)

(declare-fun Unit!109151 () Unit!109149)

(assert (=> b!4607914 (= e!2874315 Unit!109151)))

(declare-fun res!1928657 () Bool)

(assert (=> start!460692 (=> (not res!1928657) (not e!2874321))))

(declare-fun lambda!187896 () Int)

(declare-fun forall!10678 (List!51314 Int) Bool)

(assert (=> start!460692 (= res!1928657 (forall!10678 (toList!4739 lm!1477) lambda!187896))))

(assert (=> start!460692 e!2874321))

(assert (=> start!460692 true))

(declare-fun inv!66739 (ListLongMap!3371) Bool)

(assert (=> start!460692 (and (inv!66739 lm!1477) e!2874317)))

(assert (=> start!460692 tp_is_empty!28741))

(assert (=> start!460692 e!2874322))

(declare-fun b!4607915 () Bool)

(declare-fun res!1928651 () Bool)

(declare-fun e!2874323 () Bool)

(assert (=> b!4607915 (=> res!1928651 e!2874323)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4607915 (= res!1928651 (or ((_ is Nil!51190) (toList!4739 lm!1477)) (= (_1!29244 (h!57178 (toList!4739 lm!1477))) hash!344)))))

(declare-fun b!4607916 () Bool)

(declare-fun res!1928647 () Bool)

(assert (=> b!4607916 (=> res!1928647 e!2874319)))

(declare-fun lt!1764721 () List!51313)

(declare-fun apply!12099 (ListLongMap!3371 (_ BitVec 64)) List!51313)

(assert (=> b!4607916 (= res!1928647 (not (= (apply!12099 lt!1764727 hash!344) lt!1764721)))))

(declare-fun b!4607917 () Bool)

(declare-fun res!1928656 () Bool)

(assert (=> b!4607917 (=> (not res!1928656) (not e!2874321))))

(declare-datatypes ((ListMap!4001 0))(
  ( (ListMap!4002 (toList!4740 List!51313)) )
))
(declare-fun contains!14189 (ListMap!4001 K!12555) Bool)

(declare-fun extractMap!1422 (List!51314) ListMap!4001)

(assert (=> b!4607917 (= res!1928656 (contains!14189 (extractMap!1422 (toList!4739 lm!1477)) key!3287))))

(declare-fun b!4607918 () Bool)

(declare-fun res!1928644 () Bool)

(declare-fun e!2874324 () Bool)

(assert (=> b!4607918 (=> (not res!1928644) (not e!2874324))))

(declare-fun newBucket!178 () List!51313)

(declare-fun allKeysSameHash!1218 (List!51313 (_ BitVec 64) Hashable!5761) Bool)

(assert (=> b!4607918 (= res!1928644 (allKeysSameHash!1218 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4607919 () Bool)

(declare-fun res!1928646 () Bool)

(assert (=> b!4607919 (=> res!1928646 e!2874320)))

(assert (=> b!4607919 (= res!1928646 (not (forall!10678 (toList!4739 lt!1764727) lambda!187896)))))

(declare-fun b!4607920 () Bool)

(assert (=> b!4607920 (= e!2874323 e!2874319)))

(declare-fun res!1928652 () Bool)

(assert (=> b!4607920 (=> res!1928652 e!2874319)))

(declare-fun contains!14190 (ListLongMap!3371 (_ BitVec 64)) Bool)

(assert (=> b!4607920 (= res!1928652 (not (contains!14190 lt!1764727 hash!344)))))

(declare-fun tail!8017 (ListLongMap!3371) ListLongMap!3371)

(assert (=> b!4607920 (= lt!1764727 (tail!8017 lm!1477))))

(declare-fun b!4607921 () Bool)

(declare-fun Unit!109152 () Unit!109149)

(assert (=> b!4607921 (= e!2874315 Unit!109152)))

(declare-fun lt!1764724 () Unit!109149)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!326 (ListLongMap!3371 K!12555 Hashable!5761) Unit!109149)

(assert (=> b!4607921 (= lt!1764724 (lemmaNotInItsHashBucketThenNotInMap!326 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4607921 false))

(declare-fun b!4607922 () Bool)

(assert (=> b!4607922 (= e!2874324 (not e!2874323))))

(declare-fun res!1928645 () Bool)

(assert (=> b!4607922 (=> res!1928645 e!2874323)))

(declare-fun removePairForKey!987 (List!51313 K!12555) List!51313)

(assert (=> b!4607922 (= res!1928645 (not (= newBucket!178 (removePairForKey!987 lt!1764721 key!3287))))))

(declare-fun lt!1764719 () Unit!109149)

(declare-fun forallContained!2923 (List!51314 Int tuple2!51900) Unit!109149)

(assert (=> b!4607922 (= lt!1764719 (forallContained!2923 (toList!4739 lm!1477) lambda!187896 lt!1764722))))

(assert (=> b!4607922 (contains!14188 (toList!4739 lm!1477) lt!1764722)))

(assert (=> b!4607922 (= lt!1764722 (tuple2!51901 hash!344 lt!1764721))))

(declare-fun lt!1764720 () Unit!109149)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!872 (List!51314 (_ BitVec 64) List!51313) Unit!109149)

(assert (=> b!4607922 (= lt!1764720 (lemmaGetValueByKeyImpliesContainsTuple!872 (toList!4739 lm!1477) hash!344 lt!1764721))))

(assert (=> b!4607922 (= lt!1764721 (apply!12099 lm!1477 hash!344))))

(declare-fun lt!1764716 () (_ BitVec 64))

(assert (=> b!4607922 (contains!14190 lm!1477 lt!1764716)))

(declare-fun lt!1764715 () Unit!109149)

(declare-fun lemmaInGenMapThenLongMapContainsHash!436 (ListLongMap!3371 K!12555 Hashable!5761) Unit!109149)

(assert (=> b!4607922 (= lt!1764715 (lemmaInGenMapThenLongMapContainsHash!436 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4607923 () Bool)

(assert (=> b!4607923 (= e!2874319 e!2874318)))

(declare-fun res!1928654 () Bool)

(assert (=> b!4607923 (=> res!1928654 e!2874318)))

(declare-fun lt!1764717 () Bool)

(assert (=> b!4607923 (= res!1928654 lt!1764717)))

(declare-fun lt!1764725 () Unit!109149)

(assert (=> b!4607923 (= lt!1764725 e!2874315)))

(declare-fun c!789344 () Bool)

(assert (=> b!4607923 (= c!789344 lt!1764717)))

(declare-fun containsKey!2244 (List!51313 K!12555) Bool)

(assert (=> b!4607923 (= lt!1764717 (not (containsKey!2244 lt!1764721 key!3287)))))

(declare-fun b!4607924 () Bool)

(assert (=> b!4607924 (= e!2874316 e!2874320)))

(declare-fun res!1928649 () Bool)

(assert (=> b!4607924 (=> res!1928649 e!2874320)))

(assert (=> b!4607924 (= res!1928649 (not (contains!14189 (extractMap!1422 (t!358308 (toList!4739 lm!1477))) key!3287)))))

(assert (=> b!4607924 (contains!14189 (extractMap!1422 (toList!4739 lt!1764727)) key!3287)))

(declare-fun lt!1764718 () Unit!109149)

(declare-fun lemmaListContainsThenExtractedMapContains!274 (ListLongMap!3371 K!12555 Hashable!5761) Unit!109149)

(assert (=> b!4607924 (= lt!1764718 (lemmaListContainsThenExtractedMapContains!274 lt!1764727 key!3287 hashF!1107))))

(declare-fun b!4607925 () Bool)

(assert (=> b!4607925 (= e!2874321 e!2874324)))

(declare-fun res!1928648 () Bool)

(assert (=> b!4607925 (=> (not res!1928648) (not e!2874324))))

(assert (=> b!4607925 (= res!1928648 (= lt!1764716 hash!344))))

(declare-fun hash!3295 (Hashable!5761 K!12555) (_ BitVec 64))

(assert (=> b!4607925 (= lt!1764716 (hash!3295 hashF!1107 key!3287))))

(declare-fun b!4607926 () Bool)

(declare-fun res!1928650 () Bool)

(assert (=> b!4607926 (=> res!1928650 e!2874323)))

(declare-fun noDuplicateKeys!1362 (List!51313) Bool)

(assert (=> b!4607926 (= res!1928650 (not (noDuplicateKeys!1362 newBucket!178)))))

(assert (= (and start!460692 res!1928657) b!4607909))

(assert (= (and b!4607909 res!1928658) b!4607917))

(assert (= (and b!4607917 res!1928656) b!4607925))

(assert (= (and b!4607925 res!1928648) b!4607918))

(assert (= (and b!4607918 res!1928644) b!4607922))

(assert (= (and b!4607922 (not res!1928645)) b!4607926))

(assert (= (and b!4607926 (not res!1928650)) b!4607915))

(assert (= (and b!4607915 (not res!1928651)) b!4607920))

(assert (= (and b!4607920 (not res!1928652)) b!4607916))

(assert (= (and b!4607916 (not res!1928647)) b!4607912))

(assert (= (and b!4607912 (not res!1928655)) b!4607923))

(assert (= (and b!4607923 c!789344) b!4607921))

(assert (= (and b!4607923 (not c!789344)) b!4607914))

(assert (= (and b!4607923 (not res!1928654)) b!4607911))

(assert (= (and b!4607911 (not res!1928653)) b!4607924))

(assert (= (and b!4607924 (not res!1928649)) b!4607919))

(assert (= (and b!4607919 (not res!1928646)) b!4607913))

(assert (= start!460692 b!4607908))

(assert (= (and start!460692 ((_ is Cons!51189) newBucket!178)) b!4607910))

(declare-fun m!5437979 () Bool)

(assert (=> b!4607921 m!5437979))

(declare-fun m!5437981 () Bool)

(assert (=> b!4607916 m!5437981))

(declare-fun m!5437983 () Bool)

(assert (=> b!4607917 m!5437983))

(assert (=> b!4607917 m!5437983))

(declare-fun m!5437985 () Bool)

(assert (=> b!4607917 m!5437985))

(declare-fun m!5437987 () Bool)

(assert (=> b!4607926 m!5437987))

(declare-fun m!5437989 () Bool)

(assert (=> b!4607920 m!5437989))

(declare-fun m!5437991 () Bool)

(assert (=> b!4607920 m!5437991))

(declare-fun m!5437993 () Bool)

(assert (=> b!4607924 m!5437993))

(assert (=> b!4607924 m!5437993))

(declare-fun m!5437995 () Bool)

(assert (=> b!4607924 m!5437995))

(declare-fun m!5437997 () Bool)

(assert (=> b!4607924 m!5437997))

(declare-fun m!5437999 () Bool)

(assert (=> b!4607924 m!5437999))

(assert (=> b!4607924 m!5437999))

(declare-fun m!5438001 () Bool)

(assert (=> b!4607924 m!5438001))

(declare-fun m!5438003 () Bool)

(assert (=> b!4607918 m!5438003))

(declare-fun m!5438005 () Bool)

(assert (=> b!4607919 m!5438005))

(declare-fun m!5438007 () Bool)

(assert (=> start!460692 m!5438007))

(declare-fun m!5438009 () Bool)

(assert (=> start!460692 m!5438009))

(declare-fun m!5438011 () Bool)

(assert (=> b!4607912 m!5438011))

(declare-fun m!5438013 () Bool)

(assert (=> b!4607925 m!5438013))

(declare-fun m!5438015 () Bool)

(assert (=> b!4607911 m!5438015))

(declare-fun m!5438017 () Bool)

(assert (=> b!4607911 m!5438017))

(declare-fun m!5438019 () Bool)

(assert (=> b!4607911 m!5438019))

(declare-fun m!5438021 () Bool)

(assert (=> b!4607909 m!5438021))

(declare-fun m!5438023 () Bool)

(assert (=> b!4607922 m!5438023))

(declare-fun m!5438025 () Bool)

(assert (=> b!4607922 m!5438025))

(declare-fun m!5438027 () Bool)

(assert (=> b!4607922 m!5438027))

(declare-fun m!5438029 () Bool)

(assert (=> b!4607922 m!5438029))

(declare-fun m!5438031 () Bool)

(assert (=> b!4607922 m!5438031))

(declare-fun m!5438033 () Bool)

(assert (=> b!4607922 m!5438033))

(declare-fun m!5438035 () Bool)

(assert (=> b!4607922 m!5438035))

(declare-fun m!5438037 () Bool)

(assert (=> b!4607923 m!5438037))

(declare-fun m!5438039 () Bool)

(assert (=> b!4607913 m!5438039))

(check-sat (not b!4607926) (not b!4607923) (not b!4607919) (not b!4607916) (not b!4607912) (not start!460692) (not b!4607911) tp_is_empty!28743 (not b!4607917) (not b!4607922) tp_is_empty!28741 (not b!4607910) (not b!4607924) (not b!4607925) (not b!4607920) (not b!4607913) (not b!4607909) (not b!4607918) (not b!4607921) (not b!4607908))
(check-sat)
