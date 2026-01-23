; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466940 () Bool)

(assert start!466940)

(declare-fun res!1950010 () Bool)

(declare-fun e!2896059 () Bool)

(assert (=> start!466940 (=> (not res!1950010) (not e!2896059))))

(declare-datatypes ((K!13155 0))(
  ( (K!13156 (val!18795 Int)) )
))
(declare-datatypes ((V!13401 0))(
  ( (V!13402 (val!18796 Int)) )
))
(declare-datatypes ((tuple2!52854 0))(
  ( (tuple2!52855 (_1!29721 K!13155) (_2!29721 V!13401)) )
))
(declare-datatypes ((List!51914 0))(
  ( (Nil!51790) (Cons!51790 (h!57904 tuple2!52854) (t!359002 List!51914)) )
))
(declare-fun oldBucket!40 () List!51914)

(declare-fun noDuplicateKeys!1602 (List!51914) Bool)

(assert (=> start!466940 (= res!1950010 (noDuplicateKeys!1602 oldBucket!40))))

(assert (=> start!466940 e!2896059))

(assert (=> start!466940 true))

(declare-fun e!2896060 () Bool)

(assert (=> start!466940 e!2896060))

(declare-fun tp_is_empty!29701 () Bool)

(assert (=> start!466940 tp_is_empty!29701))

(declare-fun e!2896064 () Bool)

(assert (=> start!466940 e!2896064))

(declare-fun b!4642439 () Bool)

(declare-fun e!2896066 () Bool)

(declare-fun e!2896056 () Bool)

(assert (=> b!4642439 (= e!2896066 e!2896056)))

(declare-fun res!1949998 () Bool)

(assert (=> b!4642439 (=> (not res!1949998) (not e!2896056))))

(declare-fun lt!1806022 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4642439 (= res!1949998 (= lt!1806022 hash!414))))

(declare-datatypes ((Hashable!5999 0))(
  ( (HashableExt!5998 (__x!31702 Int)) )
))
(declare-fun hashF!1389 () Hashable!5999)

(declare-fun key!4968 () K!13155)

(declare-fun hash!3701 (Hashable!5999 K!13155) (_ BitVec 64))

(assert (=> b!4642439 (= lt!1806022 (hash!3701 hashF!1389 key!4968))))

(declare-fun b!4642440 () Bool)

(declare-fun e!2896055 () Bool)

(declare-fun e!2896054 () Bool)

(assert (=> b!4642440 (= e!2896055 e!2896054)))

(declare-fun res!1949995 () Bool)

(assert (=> b!4642440 (=> res!1949995 e!2896054)))

(declare-fun containsKey!2648 (List!51914 K!13155) Bool)

(assert (=> b!4642440 (= res!1949995 (not (containsKey!2648 (t!359002 oldBucket!40) key!4968)))))

(assert (=> b!4642440 (containsKey!2648 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!115633 0))(
  ( (Unit!115634) )
))
(declare-fun lt!1806007 () Unit!115633)

(declare-fun lemmaGetPairDefinedThenContainsKey!116 (List!51914 K!13155 Hashable!5999) Unit!115633)

(assert (=> b!4642440 (= lt!1806007 (lemmaGetPairDefinedThenContainsKey!116 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1806015 () List!51914)

(declare-datatypes ((Option!11770 0))(
  ( (None!11769) (Some!11769 (v!46003 tuple2!52854)) )
))
(declare-fun isDefined!9035 (Option!11770) Bool)

(declare-fun getPair!362 (List!51914 K!13155) Option!11770)

(assert (=> b!4642440 (isDefined!9035 (getPair!362 lt!1806015 key!4968))))

(declare-datatypes ((tuple2!52856 0))(
  ( (tuple2!52857 (_1!29722 (_ BitVec 64)) (_2!29722 List!51914)) )
))
(declare-fun lt!1806020 () tuple2!52856)

(declare-datatypes ((List!51915 0))(
  ( (Nil!51791) (Cons!51791 (h!57905 tuple2!52856) (t!359003 List!51915)) )
))
(declare-fun lt!1806010 () List!51915)

(declare-fun lt!1806024 () Unit!115633)

(declare-fun lambda!196604 () Int)

(declare-fun forallContained!3178 (List!51915 Int tuple2!52856) Unit!115633)

(assert (=> b!4642440 (= lt!1806024 (forallContained!3178 lt!1806010 lambda!196604 lt!1806020))))

(declare-fun contains!14927 (List!51915 tuple2!52856) Bool)

(assert (=> b!4642440 (contains!14927 lt!1806010 lt!1806020)))

(assert (=> b!4642440 (= lt!1806020 (tuple2!52857 lt!1806022 lt!1806015))))

(declare-fun lt!1806019 () Unit!115633)

(declare-datatypes ((ListLongMap!3719 0))(
  ( (ListLongMap!3720 (toList!5149 List!51915)) )
))
(declare-fun lt!1806017 () ListLongMap!3719)

(declare-fun lemmaGetValueImpliesTupleContained!167 (ListLongMap!3719 (_ BitVec 64) List!51914) Unit!115633)

(assert (=> b!4642440 (= lt!1806019 (lemmaGetValueImpliesTupleContained!167 lt!1806017 lt!1806022 lt!1806015))))

(declare-fun apply!12235 (ListLongMap!3719 (_ BitVec 64)) List!51914)

(assert (=> b!4642440 (= lt!1806015 (apply!12235 lt!1806017 lt!1806022))))

(declare-fun contains!14928 (ListLongMap!3719 (_ BitVec 64)) Bool)

(assert (=> b!4642440 (contains!14928 lt!1806017 lt!1806022)))

(declare-fun lt!1806014 () Unit!115633)

(declare-fun lemmaInGenMapThenLongMapContainsHash!568 (ListLongMap!3719 K!13155 Hashable!5999) Unit!115633)

(assert (=> b!4642440 (= lt!1806014 (lemmaInGenMapThenLongMapContainsHash!568 lt!1806017 key!4968 hashF!1389))))

(declare-fun lt!1806031 () Unit!115633)

(declare-fun lemmaInGenMapThenGetPairDefined!158 (ListLongMap!3719 K!13155 Hashable!5999) Unit!115633)

(assert (=> b!4642440 (= lt!1806031 (lemmaInGenMapThenGetPairDefined!158 lt!1806017 key!4968 hashF!1389))))

(assert (=> b!4642440 (= lt!1806017 (ListLongMap!3720 lt!1806010))))

(declare-fun b!4642441 () Bool)

(declare-fun res!1950002 () Bool)

(declare-fun e!2896061 () Bool)

(assert (=> b!4642441 (=> res!1950002 e!2896061)))

(declare-fun lt!1806029 () List!51914)

(declare-fun removePairForKey!1225 (List!51914 K!13155) List!51914)

(assert (=> b!4642441 (= res!1950002 (not (= (removePairForKey!1225 (t!359002 oldBucket!40) key!4968) lt!1806029)))))

(declare-fun b!4642442 () Bool)

(declare-fun e!2896063 () Bool)

(declare-fun lt!1806026 () tuple2!52854)

(assert (=> b!4642442 (= e!2896063 (= lt!1806026 (h!57904 oldBucket!40)))))

(declare-fun b!4642443 () Bool)

(declare-fun res!1950003 () Bool)

(assert (=> b!4642443 (=> (not res!1950003) (not e!2896059))))

(declare-fun allKeysSameHash!1456 (List!51914 (_ BitVec 64) Hashable!5999) Bool)

(assert (=> b!4642443 (= res!1950003 (allKeysSameHash!1456 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4642444 () Bool)

(assert (=> b!4642444 (= e!2896056 (not e!2896055))))

(declare-fun res!1950001 () Bool)

(assert (=> b!4642444 (=> res!1950001 e!2896055)))

(get-info :version)

(assert (=> b!4642444 (= res!1950001 (or (and ((_ is Cons!51790) oldBucket!40) (= (_1!29721 (h!57904 oldBucket!40)) key!4968)) (not ((_ is Cons!51790) oldBucket!40)) (= (_1!29721 (h!57904 oldBucket!40)) key!4968)))))

(declare-fun e!2896062 () Bool)

(assert (=> b!4642444 e!2896062))

(declare-fun res!1949996 () Bool)

(assert (=> b!4642444 (=> (not res!1949996) (not e!2896062))))

(declare-datatypes ((ListMap!4473 0))(
  ( (ListMap!4474 (toList!5150 List!51914)) )
))
(declare-fun lt!1806005 () ListMap!4473)

(declare-fun lt!1806021 () ListMap!4473)

(declare-fun addToMapMapFromBucket!1061 (List!51914 ListMap!4473) ListMap!4473)

(assert (=> b!4642444 (= res!1949996 (= lt!1806021 (addToMapMapFromBucket!1061 oldBucket!40 lt!1806005)))))

(declare-fun extractMap!1658 (List!51915) ListMap!4473)

(assert (=> b!4642444 (= lt!1806005 (extractMap!1658 Nil!51791))))

(assert (=> b!4642444 true))

(declare-fun b!4642445 () Bool)

(declare-fun e!2896065 () Bool)

(declare-fun e!2896058 () Bool)

(assert (=> b!4642445 (= e!2896065 e!2896058)))

(declare-fun res!1950004 () Bool)

(assert (=> b!4642445 (=> res!1950004 e!2896058)))

(declare-fun lt!1806027 () ListMap!4473)

(declare-fun lt!1806018 () ListMap!4473)

(assert (=> b!4642445 (= res!1950004 (not (= lt!1806027 lt!1806018)))))

(declare-fun lt!1806008 () ListMap!4473)

(declare-fun +!1952 (ListMap!4473 tuple2!52854) ListMap!4473)

(assert (=> b!4642445 (= lt!1806018 (+!1952 lt!1806008 (h!57904 oldBucket!40)))))

(declare-fun lt!1806004 () ListMap!4473)

(declare-fun -!606 (ListMap!4473 K!13155) ListMap!4473)

(assert (=> b!4642445 (= lt!1806027 (-!606 lt!1806004 key!4968))))

(declare-fun lt!1806003 () ListMap!4473)

(assert (=> b!4642445 (= lt!1806004 (+!1952 lt!1806003 (h!57904 oldBucket!40)))))

(assert (=> b!4642445 (= (-!606 (+!1952 lt!1806003 (h!57904 oldBucket!40)) key!4968) (+!1952 lt!1806008 (h!57904 oldBucket!40)))))

(declare-fun lt!1806009 () Unit!115633)

(declare-fun addRemoveCommutativeForDiffKeys!51 (ListMap!4473 K!13155 V!13401 K!13155) Unit!115633)

(assert (=> b!4642445 (= lt!1806009 (addRemoveCommutativeForDiffKeys!51 lt!1806003 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40)) key!4968))))

(declare-fun lt!1806011 () ListMap!4473)

(declare-fun eq!893 (ListMap!4473 ListMap!4473) Bool)

(assert (=> b!4642445 (eq!893 lt!1806011 lt!1806008)))

(assert (=> b!4642445 (= lt!1806008 (-!606 lt!1806003 key!4968))))

(declare-fun lt!1806023 () Unit!115633)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!158 ((_ BitVec 64) List!51914 List!51914 K!13155 Hashable!5999) Unit!115633)

(assert (=> b!4642445 (= lt!1806023 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!158 hash!414 (t!359002 oldBucket!40) lt!1806029 key!4968 hashF!1389))))

(declare-fun b!4642446 () Bool)

(declare-fun res!1950006 () Bool)

(assert (=> b!4642446 (=> (not res!1950006) (not e!2896059))))

(declare-fun newBucket!224 () List!51914)

(assert (=> b!4642446 (= res!1950006 (= (removePairForKey!1225 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1342938 () Bool)

(declare-fun b!4642447 () Bool)

(declare-fun tp_is_empty!29703 () Bool)

(assert (=> b!4642447 (= e!2896060 (and tp_is_empty!29701 tp_is_empty!29703 tp!1342938))))

(declare-fun b!4642448 () Bool)

(assert (=> b!4642448 (= e!2896054 e!2896061)))

(declare-fun res!1950007 () Bool)

(assert (=> b!4642448 (=> res!1950007 e!2896061)))

(declare-fun lt!1806001 () List!51914)

(assert (=> b!4642448 (= res!1950007 (not (= (removePairForKey!1225 lt!1806001 key!4968) lt!1806029)))))

(declare-fun tail!8225 (List!51914) List!51914)

(assert (=> b!4642448 (= lt!1806029 (tail!8225 newBucket!224))))

(assert (=> b!4642448 (= lt!1806001 (tail!8225 oldBucket!40))))

(declare-fun b!4642449 () Bool)

(declare-fun e!2896057 () Bool)

(assert (=> b!4642449 (= e!2896061 e!2896057)))

(declare-fun res!1950009 () Bool)

(assert (=> b!4642449 (=> res!1950009 e!2896057)))

(assert (=> b!4642449 (= res!1950009 (not (eq!893 lt!1806021 (+!1952 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)) (h!57904 oldBucket!40)))))))

(assert (=> b!4642449 (eq!893 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806026 lt!1806029) (ListMap!4474 Nil!51790)) (+!1952 (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806026))))

(declare-fun lt!1806006 () Unit!115633)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!144 (tuple2!52854 List!51914 ListMap!4473) Unit!115633)

(assert (=> b!4642449 (= lt!1806006 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!144 lt!1806026 lt!1806029 (ListMap!4474 Nil!51790)))))

(declare-fun head!9712 (List!51914) tuple2!52854)

(assert (=> b!4642449 (= lt!1806026 (head!9712 newBucket!224))))

(declare-fun lt!1806012 () tuple2!52854)

(assert (=> b!4642449 (eq!893 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806012 lt!1806001) (ListMap!4474 Nil!51790)) (+!1952 (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806012))))

(declare-fun lt!1806025 () Unit!115633)

(assert (=> b!4642449 (= lt!1806025 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!144 lt!1806012 lt!1806001 (ListMap!4474 Nil!51790)))))

(assert (=> b!4642449 (= lt!1806012 (head!9712 oldBucket!40))))

(declare-fun contains!14929 (ListMap!4473 K!13155) Bool)

(assert (=> b!4642449 (contains!14929 lt!1806003 key!4968)))

(declare-fun lt!1806028 () List!51915)

(assert (=> b!4642449 (= lt!1806003 (extractMap!1658 lt!1806028))))

(declare-fun lt!1806016 () Unit!115633)

(declare-fun lemmaListContainsThenExtractedMapContains!380 (ListLongMap!3719 K!13155 Hashable!5999) Unit!115633)

(assert (=> b!4642449 (= lt!1806016 (lemmaListContainsThenExtractedMapContains!380 (ListLongMap!3720 lt!1806028) key!4968 hashF!1389))))

(assert (=> b!4642449 (= lt!1806028 (Cons!51791 (tuple2!52857 hash!414 (t!359002 oldBucket!40)) Nil!51791))))

(declare-fun b!4642450 () Bool)

(declare-fun tp!1342939 () Bool)

(assert (=> b!4642450 (= e!2896064 (and tp_is_empty!29701 tp_is_empty!29703 tp!1342939))))

(declare-fun b!4642451 () Bool)

(declare-fun res!1950008 () Bool)

(assert (=> b!4642451 (=> (not res!1950008) (not e!2896056))))

(assert (=> b!4642451 (= res!1950008 (allKeysSameHash!1456 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4642452 () Bool)

(assert (=> b!4642452 (= e!2896062 (= lt!1806005 (ListMap!4474 Nil!51790)))))

(declare-fun b!4642453 () Bool)

(assert (=> b!4642453 (= e!2896057 e!2896065)))

(declare-fun res!1949997 () Bool)

(assert (=> b!4642453 (=> res!1949997 e!2896065)))

(declare-fun lt!1806013 () ListMap!4473)

(assert (=> b!4642453 (= res!1949997 (not (eq!893 lt!1806013 (+!1952 lt!1806011 lt!1806026))))))

(assert (=> b!4642453 (= lt!1806011 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791)))))

(assert (=> b!4642453 (= lt!1806013 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 newBucket!224) Nil!51791)))))

(declare-fun b!4642454 () Bool)

(assert (=> b!4642454 (= e!2896058 e!2896063)))

(declare-fun res!1950000 () Bool)

(assert (=> b!4642454 (=> res!1950000 e!2896063)))

(declare-fun lt!1806002 () ListMap!4473)

(assert (=> b!4642454 (= res!1950000 (not (eq!893 lt!1806002 lt!1806018)))))

(assert (=> b!4642454 (eq!893 lt!1806027 lt!1806002)))

(assert (=> b!4642454 (= lt!1806002 (-!606 lt!1806021 key!4968))))

(declare-fun lt!1806030 () Unit!115633)

(declare-fun lemmaRemovePreservesEq!54 (ListMap!4473 ListMap!4473 K!13155) Unit!115633)

(assert (=> b!4642454 (= lt!1806030 (lemmaRemovePreservesEq!54 lt!1806004 lt!1806021 key!4968))))

(declare-fun b!4642455 () Bool)

(assert (=> b!4642455 (= e!2896059 e!2896066)))

(declare-fun res!1950005 () Bool)

(assert (=> b!4642455 (=> (not res!1950005) (not e!2896066))))

(assert (=> b!4642455 (= res!1950005 (contains!14929 lt!1806021 key!4968))))

(assert (=> b!4642455 (= lt!1806021 (extractMap!1658 lt!1806010))))

(assert (=> b!4642455 (= lt!1806010 (Cons!51791 (tuple2!52857 hash!414 oldBucket!40) Nil!51791))))

(declare-fun b!4642456 () Bool)

(declare-fun res!1949999 () Bool)

(assert (=> b!4642456 (=> (not res!1949999) (not e!2896059))))

(assert (=> b!4642456 (= res!1949999 (noDuplicateKeys!1602 newBucket!224))))

(assert (= (and start!466940 res!1950010) b!4642456))

(assert (= (and b!4642456 res!1949999) b!4642446))

(assert (= (and b!4642446 res!1950006) b!4642443))

(assert (= (and b!4642443 res!1950003) b!4642455))

(assert (= (and b!4642455 res!1950005) b!4642439))

(assert (= (and b!4642439 res!1949998) b!4642451))

(assert (= (and b!4642451 res!1950008) b!4642444))

(assert (= (and b!4642444 res!1949996) b!4642452))

(assert (= (and b!4642444 (not res!1950001)) b!4642440))

(assert (= (and b!4642440 (not res!1949995)) b!4642448))

(assert (= (and b!4642448 (not res!1950007)) b!4642441))

(assert (= (and b!4642441 (not res!1950002)) b!4642449))

(assert (= (and b!4642449 (not res!1950009)) b!4642453))

(assert (= (and b!4642453 (not res!1949997)) b!4642445))

(assert (= (and b!4642445 (not res!1950004)) b!4642454))

(assert (= (and b!4642454 (not res!1950000)) b!4642442))

(assert (= (and start!466940 ((_ is Cons!51790) oldBucket!40)) b!4642447))

(assert (= (and start!466940 ((_ is Cons!51790) newBucket!224)) b!4642450))

(declare-fun m!5504099 () Bool)

(assert (=> b!4642449 m!5504099))

(declare-fun m!5504101 () Bool)

(assert (=> b!4642449 m!5504101))

(declare-fun m!5504103 () Bool)

(assert (=> b!4642449 m!5504103))

(declare-fun m!5504105 () Bool)

(assert (=> b!4642449 m!5504105))

(declare-fun m!5504107 () Bool)

(assert (=> b!4642449 m!5504107))

(declare-fun m!5504109 () Bool)

(assert (=> b!4642449 m!5504109))

(declare-fun m!5504111 () Bool)

(assert (=> b!4642449 m!5504111))

(declare-fun m!5504113 () Bool)

(assert (=> b!4642449 m!5504113))

(declare-fun m!5504115 () Bool)

(assert (=> b!4642449 m!5504115))

(assert (=> b!4642449 m!5504113))

(assert (=> b!4642449 m!5504105))

(declare-fun m!5504117 () Bool)

(assert (=> b!4642449 m!5504117))

(assert (=> b!4642449 m!5504109))

(declare-fun m!5504119 () Bool)

(assert (=> b!4642449 m!5504119))

(assert (=> b!4642449 m!5504111))

(assert (=> b!4642449 m!5504119))

(declare-fun m!5504121 () Bool)

(assert (=> b!4642449 m!5504121))

(declare-fun m!5504123 () Bool)

(assert (=> b!4642449 m!5504123))

(assert (=> b!4642449 m!5504115))

(declare-fun m!5504125 () Bool)

(assert (=> b!4642449 m!5504125))

(assert (=> b!4642449 m!5504123))

(declare-fun m!5504127 () Bool)

(assert (=> b!4642449 m!5504127))

(assert (=> b!4642449 m!5504117))

(declare-fun m!5504129 () Bool)

(assert (=> b!4642449 m!5504129))

(declare-fun m!5504131 () Bool)

(assert (=> b!4642449 m!5504131))

(declare-fun m!5504133 () Bool)

(assert (=> b!4642449 m!5504133))

(declare-fun m!5504135 () Bool)

(assert (=> start!466940 m!5504135))

(declare-fun m!5504137 () Bool)

(assert (=> b!4642439 m!5504137))

(declare-fun m!5504139 () Bool)

(assert (=> b!4642451 m!5504139))

(declare-fun m!5504141 () Bool)

(assert (=> b!4642445 m!5504141))

(declare-fun m!5504143 () Bool)

(assert (=> b!4642445 m!5504143))

(declare-fun m!5504145 () Bool)

(assert (=> b!4642445 m!5504145))

(declare-fun m!5504147 () Bool)

(assert (=> b!4642445 m!5504147))

(declare-fun m!5504149 () Bool)

(assert (=> b!4642445 m!5504149))

(assert (=> b!4642445 m!5504147))

(declare-fun m!5504151 () Bool)

(assert (=> b!4642445 m!5504151))

(declare-fun m!5504153 () Bool)

(assert (=> b!4642445 m!5504153))

(declare-fun m!5504155 () Bool)

(assert (=> b!4642445 m!5504155))

(declare-fun m!5504157 () Bool)

(assert (=> b!4642453 m!5504157))

(assert (=> b!4642453 m!5504157))

(declare-fun m!5504159 () Bool)

(assert (=> b!4642453 m!5504159))

(declare-fun m!5504161 () Bool)

(assert (=> b!4642453 m!5504161))

(declare-fun m!5504163 () Bool)

(assert (=> b!4642453 m!5504163))

(declare-fun m!5504165 () Bool)

(assert (=> b!4642441 m!5504165))

(declare-fun m!5504167 () Bool)

(assert (=> b!4642440 m!5504167))

(declare-fun m!5504169 () Bool)

(assert (=> b!4642440 m!5504169))

(declare-fun m!5504171 () Bool)

(assert (=> b!4642440 m!5504171))

(declare-fun m!5504173 () Bool)

(assert (=> b!4642440 m!5504173))

(declare-fun m!5504175 () Bool)

(assert (=> b!4642440 m!5504175))

(declare-fun m!5504177 () Bool)

(assert (=> b!4642440 m!5504177))

(declare-fun m!5504179 () Bool)

(assert (=> b!4642440 m!5504179))

(assert (=> b!4642440 m!5504175))

(declare-fun m!5504181 () Bool)

(assert (=> b!4642440 m!5504181))

(declare-fun m!5504183 () Bool)

(assert (=> b!4642440 m!5504183))

(declare-fun m!5504185 () Bool)

(assert (=> b!4642440 m!5504185))

(declare-fun m!5504187 () Bool)

(assert (=> b!4642440 m!5504187))

(declare-fun m!5504189 () Bool)

(assert (=> b!4642440 m!5504189))

(declare-fun m!5504191 () Bool)

(assert (=> b!4642446 m!5504191))

(declare-fun m!5504193 () Bool)

(assert (=> b!4642455 m!5504193))

(declare-fun m!5504195 () Bool)

(assert (=> b!4642455 m!5504195))

(declare-fun m!5504197 () Bool)

(assert (=> b!4642456 m!5504197))

(declare-fun m!5504199 () Bool)

(assert (=> b!4642444 m!5504199))

(declare-fun m!5504201 () Bool)

(assert (=> b!4642444 m!5504201))

(declare-fun m!5504203 () Bool)

(assert (=> b!4642454 m!5504203))

(declare-fun m!5504205 () Bool)

(assert (=> b!4642454 m!5504205))

(declare-fun m!5504207 () Bool)

(assert (=> b!4642454 m!5504207))

(declare-fun m!5504209 () Bool)

(assert (=> b!4642454 m!5504209))

(declare-fun m!5504211 () Bool)

(assert (=> b!4642443 m!5504211))

(declare-fun m!5504213 () Bool)

(assert (=> b!4642448 m!5504213))

(declare-fun m!5504215 () Bool)

(assert (=> b!4642448 m!5504215))

(declare-fun m!5504217 () Bool)

(assert (=> b!4642448 m!5504217))

(check-sat (not b!4642443) (not start!466940) (not b!4642456) (not b!4642446) tp_is_empty!29701 (not b!4642455) (not b!4642439) (not b!4642451) (not b!4642453) (not b!4642444) (not b!4642450) tp_is_empty!29703 (not b!4642440) (not b!4642449) (not b!4642441) (not b!4642447) (not b!4642454) (not b!4642448) (not b!4642445))
(check-sat)
(get-model)

(declare-fun b!4642465 () Bool)

(declare-fun e!2896072 () List!51914)

(assert (=> b!4642465 (= e!2896072 (t!359002 lt!1806001))))

(declare-fun b!4642468 () Bool)

(declare-fun e!2896071 () List!51914)

(assert (=> b!4642468 (= e!2896071 Nil!51790)))

(declare-fun b!4642466 () Bool)

(assert (=> b!4642466 (= e!2896072 e!2896071)))

(declare-fun c!794390 () Bool)

(assert (=> b!4642466 (= c!794390 ((_ is Cons!51790) lt!1806001))))

(declare-fun b!4642467 () Bool)

(assert (=> b!4642467 (= e!2896071 (Cons!51790 (h!57904 lt!1806001) (removePairForKey!1225 (t!359002 lt!1806001) key!4968)))))

(declare-fun d!1463675 () Bool)

(declare-fun lt!1806034 () List!51914)

(assert (=> d!1463675 (not (containsKey!2648 lt!1806034 key!4968))))

(assert (=> d!1463675 (= lt!1806034 e!2896072)))

(declare-fun c!794389 () Bool)

(assert (=> d!1463675 (= c!794389 (and ((_ is Cons!51790) lt!1806001) (= (_1!29721 (h!57904 lt!1806001)) key!4968)))))

(assert (=> d!1463675 (noDuplicateKeys!1602 lt!1806001)))

(assert (=> d!1463675 (= (removePairForKey!1225 lt!1806001 key!4968) lt!1806034)))

(assert (= (and d!1463675 c!794389) b!4642465))

(assert (= (and d!1463675 (not c!794389)) b!4642466))

(assert (= (and b!4642466 c!794390) b!4642467))

(assert (= (and b!4642466 (not c!794390)) b!4642468))

(declare-fun m!5504219 () Bool)

(assert (=> b!4642467 m!5504219))

(declare-fun m!5504221 () Bool)

(assert (=> d!1463675 m!5504221))

(declare-fun m!5504223 () Bool)

(assert (=> d!1463675 m!5504223))

(assert (=> b!4642448 d!1463675))

(declare-fun d!1463679 () Bool)

(assert (=> d!1463679 (= (tail!8225 newBucket!224) (t!359002 newBucket!224))))

(assert (=> b!4642448 d!1463679))

(declare-fun d!1463681 () Bool)

(assert (=> d!1463681 (= (tail!8225 oldBucket!40) (t!359002 oldBucket!40))))

(assert (=> b!4642448 d!1463681))

(declare-fun d!1463683 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8952 (List!51914) (InoxSet tuple2!52854))

(assert (=> d!1463683 (= (eq!893 lt!1806021 (+!1952 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)) (h!57904 oldBucket!40))) (= (content!8952 (toList!5150 lt!1806021)) (content!8952 (toList!5150 (+!1952 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)) (h!57904 oldBucket!40))))))))

(declare-fun bs!1034390 () Bool)

(assert (= bs!1034390 d!1463683))

(declare-fun m!5504231 () Bool)

(assert (=> bs!1034390 m!5504231))

(declare-fun m!5504233 () Bool)

(assert (=> bs!1034390 m!5504233))

(assert (=> b!4642449 d!1463683))

(declare-fun d!1463687 () Bool)

(assert (=> d!1463687 (= (eq!893 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806026 lt!1806029) (ListMap!4474 Nil!51790)) (+!1952 (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806026)) (= (content!8952 (toList!5150 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806026 lt!1806029) (ListMap!4474 Nil!51790)))) (content!8952 (toList!5150 (+!1952 (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806026)))))))

(declare-fun bs!1034391 () Bool)

(assert (= bs!1034391 d!1463687))

(declare-fun m!5504235 () Bool)

(assert (=> bs!1034391 m!5504235))

(declare-fun m!5504237 () Bool)

(assert (=> bs!1034391 m!5504237))

(assert (=> b!4642449 d!1463687))

(declare-fun d!1463689 () Bool)

(assert (=> d!1463689 (= (head!9712 oldBucket!40) (h!57904 oldBucket!40))))

(assert (=> b!4642449 d!1463689))

(declare-fun d!1463693 () Bool)

(declare-fun e!2896087 () Bool)

(assert (=> d!1463693 e!2896087))

(declare-fun res!1950022 () Bool)

(assert (=> d!1463693 (=> (not res!1950022) (not e!2896087))))

(declare-fun lt!1806064 () ListMap!4473)

(assert (=> d!1463693 (= res!1950022 (contains!14929 lt!1806064 (_1!29721 lt!1806012)))))

(declare-fun lt!1806061 () List!51914)

(assert (=> d!1463693 (= lt!1806064 (ListMap!4474 lt!1806061))))

(declare-fun lt!1806062 () Unit!115633)

(declare-fun lt!1806063 () Unit!115633)

(assert (=> d!1463693 (= lt!1806062 lt!1806063)))

(declare-datatypes ((Option!11772 0))(
  ( (None!11771) (Some!11771 (v!46009 V!13401)) )
))
(declare-fun getValueByKey!1568 (List!51914 K!13155) Option!11772)

(assert (=> d!1463693 (= (getValueByKey!1568 lt!1806061 (_1!29721 lt!1806012)) (Some!11771 (_2!29721 lt!1806012)))))

(declare-fun lemmaContainsTupThenGetReturnValue!904 (List!51914 K!13155 V!13401) Unit!115633)

(assert (=> d!1463693 (= lt!1806063 (lemmaContainsTupThenGetReturnValue!904 lt!1806061 (_1!29721 lt!1806012) (_2!29721 lt!1806012)))))

(declare-fun insertNoDuplicatedKeys!412 (List!51914 K!13155 V!13401) List!51914)

(assert (=> d!1463693 (= lt!1806061 (insertNoDuplicatedKeys!412 (toList!5150 (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790))) (_1!29721 lt!1806012) (_2!29721 lt!1806012)))))

(assert (=> d!1463693 (= (+!1952 (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806012) lt!1806064)))

(declare-fun b!4642497 () Bool)

(declare-fun res!1950021 () Bool)

(assert (=> b!4642497 (=> (not res!1950021) (not e!2896087))))

(assert (=> b!4642497 (= res!1950021 (= (getValueByKey!1568 (toList!5150 lt!1806064) (_1!29721 lt!1806012)) (Some!11771 (_2!29721 lt!1806012))))))

(declare-fun b!4642498 () Bool)

(declare-fun contains!14931 (List!51914 tuple2!52854) Bool)

(assert (=> b!4642498 (= e!2896087 (contains!14931 (toList!5150 lt!1806064) lt!1806012))))

(assert (= (and d!1463693 res!1950022) b!4642497))

(assert (= (and b!4642497 res!1950021) b!4642498))

(declare-fun m!5504263 () Bool)

(assert (=> d!1463693 m!5504263))

(declare-fun m!5504265 () Bool)

(assert (=> d!1463693 m!5504265))

(declare-fun m!5504267 () Bool)

(assert (=> d!1463693 m!5504267))

(declare-fun m!5504269 () Bool)

(assert (=> d!1463693 m!5504269))

(declare-fun m!5504271 () Bool)

(assert (=> b!4642497 m!5504271))

(declare-fun m!5504273 () Bool)

(assert (=> b!4642498 m!5504273))

(assert (=> b!4642449 d!1463693))

(declare-fun bs!1034396 () Bool)

(declare-fun d!1463699 () Bool)

(assert (= bs!1034396 (and d!1463699 b!4642440)))

(declare-fun lambda!196611 () Int)

(assert (=> bs!1034396 (= lambda!196611 lambda!196604)))

(declare-fun lt!1806068 () ListMap!4473)

(declare-fun invariantList!1268 (List!51914) Bool)

(assert (=> d!1463699 (invariantList!1268 (toList!5150 lt!1806068))))

(declare-fun e!2896091 () ListMap!4473)

(assert (=> d!1463699 (= lt!1806068 e!2896091)))

(declare-fun c!794403 () Bool)

(assert (=> d!1463699 (= c!794403 ((_ is Cons!51791) lt!1806028))))

(declare-fun forall!10955 (List!51915 Int) Bool)

(assert (=> d!1463699 (forall!10955 lt!1806028 lambda!196611)))

(assert (=> d!1463699 (= (extractMap!1658 lt!1806028) lt!1806068)))

(declare-fun b!4642505 () Bool)

(assert (=> b!4642505 (= e!2896091 (addToMapMapFromBucket!1061 (_2!29722 (h!57905 lt!1806028)) (extractMap!1658 (t!359003 lt!1806028))))))

(declare-fun b!4642506 () Bool)

(assert (=> b!4642506 (= e!2896091 (ListMap!4474 Nil!51790))))

(assert (= (and d!1463699 c!794403) b!4642505))

(assert (= (and d!1463699 (not c!794403)) b!4642506))

(declare-fun m!5504283 () Bool)

(assert (=> d!1463699 m!5504283))

(declare-fun m!5504285 () Bool)

(assert (=> d!1463699 m!5504285))

(declare-fun m!5504287 () Bool)

(assert (=> b!4642505 m!5504287))

(assert (=> b!4642505 m!5504287))

(declare-fun m!5504289 () Bool)

(assert (=> b!4642505 m!5504289))

(assert (=> b!4642449 d!1463699))

(declare-fun d!1463703 () Bool)

(assert (=> d!1463703 (eq!893 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806012 lt!1806001) (ListMap!4474 Nil!51790)) (+!1952 (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806012))))

(declare-fun lt!1806071 () Unit!115633)

(declare-fun choose!31817 (tuple2!52854 List!51914 ListMap!4473) Unit!115633)

(assert (=> d!1463703 (= lt!1806071 (choose!31817 lt!1806012 lt!1806001 (ListMap!4474 Nil!51790)))))

(assert (=> d!1463703 (noDuplicateKeys!1602 lt!1806001)))

(assert (=> d!1463703 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!144 lt!1806012 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806071)))

(declare-fun bs!1034397 () Bool)

(assert (= bs!1034397 d!1463703))

(assert (=> bs!1034397 m!5504109))

(assert (=> bs!1034397 m!5504111))

(assert (=> bs!1034397 m!5504119))

(assert (=> bs!1034397 m!5504121))

(assert (=> bs!1034397 m!5504109))

(assert (=> bs!1034397 m!5504119))

(assert (=> bs!1034397 m!5504223))

(assert (=> bs!1034397 m!5504111))

(declare-fun m!5504291 () Bool)

(assert (=> bs!1034397 m!5504291))

(assert (=> b!4642449 d!1463703))

(declare-fun b!4642591 () Bool)

(assert (=> b!4642591 true))

(declare-fun bs!1034413 () Bool)

(declare-fun b!4642588 () Bool)

(assert (= bs!1034413 (and b!4642588 b!4642591)))

(declare-fun lambda!196677 () Int)

(declare-fun lambda!196676 () Int)

(assert (=> bs!1034413 (= lambda!196677 lambda!196676)))

(assert (=> b!4642588 true))

(declare-fun lt!1806218 () ListMap!4473)

(declare-fun lambda!196678 () Int)

(assert (=> bs!1034413 (= (= lt!1806218 (ListMap!4474 Nil!51790)) (= lambda!196678 lambda!196676))))

(assert (=> b!4642588 (= (= lt!1806218 (ListMap!4474 Nil!51790)) (= lambda!196678 lambda!196677))))

(assert (=> b!4642588 true))

(declare-fun bs!1034414 () Bool)

(declare-fun d!1463705 () Bool)

(assert (= bs!1034414 (and d!1463705 b!4642591)))

(declare-fun lt!1806216 () ListMap!4473)

(declare-fun lambda!196679 () Int)

(assert (=> bs!1034414 (= (= lt!1806216 (ListMap!4474 Nil!51790)) (= lambda!196679 lambda!196676))))

(declare-fun bs!1034415 () Bool)

(assert (= bs!1034415 (and d!1463705 b!4642588)))

(assert (=> bs!1034415 (= (= lt!1806216 (ListMap!4474 Nil!51790)) (= lambda!196679 lambda!196677))))

(assert (=> bs!1034415 (= (= lt!1806216 lt!1806218) (= lambda!196679 lambda!196678))))

(assert (=> d!1463705 true))

(declare-fun b!4642587 () Bool)

(declare-fun res!1950071 () Bool)

(declare-fun e!2896148 () Bool)

(assert (=> b!4642587 (=> (not res!1950071) (not e!2896148))))

(declare-fun forall!10956 (List!51914 Int) Bool)

(assert (=> b!4642587 (= res!1950071 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196679))))

(declare-fun bm!324104 () Bool)

(declare-fun call!324109 () Bool)

(declare-fun c!794419 () Bool)

(assert (=> bm!324104 (= call!324109 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794419 lambda!196676 lambda!196678)))))

(declare-fun bm!324105 () Bool)

(declare-fun call!324111 () Unit!115633)

(declare-fun lemmaContainsAllItsOwnKeys!570 (ListMap!4473) Unit!115633)

(assert (=> bm!324105 (= call!324111 (lemmaContainsAllItsOwnKeys!570 (ListMap!4474 Nil!51790)))))

(declare-fun e!2896146 () ListMap!4473)

(assert (=> b!4642588 (= e!2896146 lt!1806218)))

(declare-fun lt!1806220 () ListMap!4473)

(assert (=> b!4642588 (= lt!1806220 (+!1952 (ListMap!4474 Nil!51790) (h!57904 lt!1806029)))))

(assert (=> b!4642588 (= lt!1806218 (addToMapMapFromBucket!1061 (t!359002 lt!1806029) (+!1952 (ListMap!4474 Nil!51790) (h!57904 lt!1806029))))))

(declare-fun lt!1806209 () Unit!115633)

(assert (=> b!4642588 (= lt!1806209 call!324111)))

(declare-fun call!324110 () Bool)

(assert (=> b!4642588 call!324110))

(declare-fun lt!1806226 () Unit!115633)

(assert (=> b!4642588 (= lt!1806226 lt!1806209)))

(assert (=> b!4642588 (forall!10956 (toList!5150 lt!1806220) lambda!196678)))

(declare-fun lt!1806213 () Unit!115633)

(declare-fun Unit!115647 () Unit!115633)

(assert (=> b!4642588 (= lt!1806213 Unit!115647)))

(assert (=> b!4642588 (forall!10956 (t!359002 lt!1806029) lambda!196678)))

(declare-fun lt!1806217 () Unit!115633)

(declare-fun Unit!115648 () Unit!115633)

(assert (=> b!4642588 (= lt!1806217 Unit!115648)))

(declare-fun lt!1806222 () Unit!115633)

(declare-fun Unit!115649 () Unit!115633)

(assert (=> b!4642588 (= lt!1806222 Unit!115649)))

(declare-fun lt!1806219 () Unit!115633)

(declare-fun forallContained!3180 (List!51914 Int tuple2!52854) Unit!115633)

(assert (=> b!4642588 (= lt!1806219 (forallContained!3180 (toList!5150 lt!1806220) lambda!196678 (h!57904 lt!1806029)))))

(assert (=> b!4642588 (contains!14929 lt!1806220 (_1!29721 (h!57904 lt!1806029)))))

(declare-fun lt!1806223 () Unit!115633)

(declare-fun Unit!115650 () Unit!115633)

(assert (=> b!4642588 (= lt!1806223 Unit!115650)))

(assert (=> b!4642588 (contains!14929 lt!1806218 (_1!29721 (h!57904 lt!1806029)))))

(declare-fun lt!1806208 () Unit!115633)

(declare-fun Unit!115651 () Unit!115633)

(assert (=> b!4642588 (= lt!1806208 Unit!115651)))

(assert (=> b!4642588 (forall!10956 lt!1806029 lambda!196678)))

(declare-fun lt!1806224 () Unit!115633)

(declare-fun Unit!115652 () Unit!115633)

(assert (=> b!4642588 (= lt!1806224 Unit!115652)))

(assert (=> b!4642588 (forall!10956 (toList!5150 lt!1806220) lambda!196678)))

(declare-fun lt!1806214 () Unit!115633)

(declare-fun Unit!115653 () Unit!115633)

(assert (=> b!4642588 (= lt!1806214 Unit!115653)))

(declare-fun lt!1806221 () Unit!115633)

(declare-fun Unit!115654 () Unit!115633)

(assert (=> b!4642588 (= lt!1806221 Unit!115654)))

(declare-fun lt!1806212 () Unit!115633)

(declare-fun addForallContainsKeyThenBeforeAdding!569 (ListMap!4473 ListMap!4473 K!13155 V!13401) Unit!115633)

(assert (=> b!4642588 (= lt!1806212 (addForallContainsKeyThenBeforeAdding!569 (ListMap!4474 Nil!51790) lt!1806218 (_1!29721 (h!57904 lt!1806029)) (_2!29721 (h!57904 lt!1806029))))))

(assert (=> b!4642588 call!324109))

(declare-fun lt!1806228 () Unit!115633)

(assert (=> b!4642588 (= lt!1806228 lt!1806212)))

(assert (=> b!4642588 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196678)))

(declare-fun lt!1806227 () Unit!115633)

(declare-fun Unit!115655 () Unit!115633)

(assert (=> b!4642588 (= lt!1806227 Unit!115655)))

(declare-fun res!1950072 () Bool)

(assert (=> b!4642588 (= res!1950072 (forall!10956 lt!1806029 lambda!196678))))

(declare-fun e!2896147 () Bool)

(assert (=> b!4642588 (=> (not res!1950072) (not e!2896147))))

(assert (=> b!4642588 e!2896147))

(declare-fun lt!1806210 () Unit!115633)

(declare-fun Unit!115656 () Unit!115633)

(assert (=> b!4642588 (= lt!1806210 Unit!115656)))

(assert (=> d!1463705 e!2896148))

(declare-fun res!1950070 () Bool)

(assert (=> d!1463705 (=> (not res!1950070) (not e!2896148))))

(assert (=> d!1463705 (= res!1950070 (forall!10956 lt!1806029 lambda!196679))))

(assert (=> d!1463705 (= lt!1806216 e!2896146)))

(assert (=> d!1463705 (= c!794419 ((_ is Nil!51790) lt!1806029))))

(assert (=> d!1463705 (noDuplicateKeys!1602 lt!1806029)))

(assert (=> d!1463705 (= (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806216)))

(declare-fun b!4642589 () Bool)

(assert (=> b!4642589 (= e!2896148 (invariantList!1268 (toList!5150 lt!1806216)))))

(declare-fun b!4642590 () Bool)

(assert (=> b!4642590 (= e!2896147 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196678))))

(declare-fun bm!324106 () Bool)

(assert (=> bm!324106 (= call!324110 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794419 lambda!196676 lambda!196677)))))

(assert (=> b!4642591 (= e!2896146 (ListMap!4474 Nil!51790))))

(declare-fun lt!1806211 () Unit!115633)

(assert (=> b!4642591 (= lt!1806211 call!324111)))

(assert (=> b!4642591 call!324109))

(declare-fun lt!1806225 () Unit!115633)

(assert (=> b!4642591 (= lt!1806225 lt!1806211)))

(assert (=> b!4642591 call!324110))

(declare-fun lt!1806215 () Unit!115633)

(declare-fun Unit!115657 () Unit!115633)

(assert (=> b!4642591 (= lt!1806215 Unit!115657)))

(assert (= (and d!1463705 c!794419) b!4642591))

(assert (= (and d!1463705 (not c!794419)) b!4642588))

(assert (= (and b!4642588 res!1950072) b!4642590))

(assert (= (or b!4642591 b!4642588) bm!324105))

(assert (= (or b!4642591 b!4642588) bm!324106))

(assert (= (or b!4642591 b!4642588) bm!324104))

(assert (= (and d!1463705 res!1950070) b!4642587))

(assert (= (and b!4642587 res!1950071) b!4642589))

(declare-fun m!5504385 () Bool)

(assert (=> bm!324106 m!5504385))

(declare-fun m!5504387 () Bool)

(assert (=> bm!324105 m!5504387))

(declare-fun m!5504389 () Bool)

(assert (=> d!1463705 m!5504389))

(declare-fun m!5504391 () Bool)

(assert (=> d!1463705 m!5504391))

(declare-fun m!5504393 () Bool)

(assert (=> bm!324104 m!5504393))

(declare-fun m!5504395 () Bool)

(assert (=> b!4642588 m!5504395))

(declare-fun m!5504397 () Bool)

(assert (=> b!4642588 m!5504397))

(assert (=> b!4642588 m!5504395))

(declare-fun m!5504399 () Bool)

(assert (=> b!4642588 m!5504399))

(declare-fun m!5504401 () Bool)

(assert (=> b!4642588 m!5504401))

(declare-fun m!5504403 () Bool)

(assert (=> b!4642588 m!5504403))

(declare-fun m!5504405 () Bool)

(assert (=> b!4642588 m!5504405))

(declare-fun m!5504407 () Bool)

(assert (=> b!4642588 m!5504407))

(declare-fun m!5504409 () Bool)

(assert (=> b!4642588 m!5504409))

(declare-fun m!5504411 () Bool)

(assert (=> b!4642588 m!5504411))

(assert (=> b!4642588 m!5504411))

(assert (=> b!4642588 m!5504399))

(declare-fun m!5504413 () Bool)

(assert (=> b!4642588 m!5504413))

(declare-fun m!5504415 () Bool)

(assert (=> b!4642589 m!5504415))

(declare-fun m!5504417 () Bool)

(assert (=> b!4642587 m!5504417))

(assert (=> b!4642590 m!5504409))

(assert (=> b!4642449 d!1463705))

(declare-fun d!1463733 () Bool)

(assert (=> d!1463733 (eq!893 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806026 lt!1806029) (ListMap!4474 Nil!51790)) (+!1952 (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806026))))

(declare-fun lt!1806241 () Unit!115633)

(assert (=> d!1463733 (= lt!1806241 (choose!31817 lt!1806026 lt!1806029 (ListMap!4474 Nil!51790)))))

(assert (=> d!1463733 (noDuplicateKeys!1602 lt!1806029)))

(assert (=> d!1463733 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!144 lt!1806026 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806241)))

(declare-fun bs!1034416 () Bool)

(assert (= bs!1034416 d!1463733))

(assert (=> bs!1034416 m!5504113))

(assert (=> bs!1034416 m!5504123))

(assert (=> bs!1034416 m!5504115))

(assert (=> bs!1034416 m!5504125))

(assert (=> bs!1034416 m!5504113))

(assert (=> bs!1034416 m!5504115))

(assert (=> bs!1034416 m!5504391))

(assert (=> bs!1034416 m!5504123))

(declare-fun m!5504419 () Bool)

(assert (=> bs!1034416 m!5504419))

(assert (=> b!4642449 d!1463733))

(declare-fun d!1463735 () Bool)

(assert (=> d!1463735 (= (head!9712 newBucket!224) (h!57904 newBucket!224))))

(assert (=> b!4642449 d!1463735))

(declare-fun bs!1034417 () Bool)

(declare-fun d!1463737 () Bool)

(assert (= bs!1034417 (and d!1463737 b!4642440)))

(declare-fun lambda!196686 () Int)

(assert (=> bs!1034417 (= lambda!196686 lambda!196604)))

(declare-fun bs!1034418 () Bool)

(assert (= bs!1034418 (and d!1463737 d!1463699)))

(assert (=> bs!1034418 (= lambda!196686 lambda!196611)))

(declare-fun lt!1806246 () ListMap!4473)

(assert (=> d!1463737 (invariantList!1268 (toList!5150 lt!1806246))))

(declare-fun e!2896153 () ListMap!4473)

(assert (=> d!1463737 (= lt!1806246 e!2896153)))

(declare-fun c!794420 () Bool)

(assert (=> d!1463737 (= c!794420 ((_ is Cons!51791) (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)))))

(assert (=> d!1463737 (forall!10955 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791) lambda!196686)))

(assert (=> d!1463737 (= (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)) lt!1806246)))

(declare-fun b!4642602 () Bool)

(assert (=> b!4642602 (= e!2896153 (addToMapMapFromBucket!1061 (_2!29722 (h!57905 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791))) (extractMap!1658 (t!359003 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)))))))

(declare-fun b!4642603 () Bool)

(assert (=> b!4642603 (= e!2896153 (ListMap!4474 Nil!51790))))

(assert (= (and d!1463737 c!794420) b!4642602))

(assert (= (and d!1463737 (not c!794420)) b!4642603))

(declare-fun m!5504421 () Bool)

(assert (=> d!1463737 m!5504421))

(declare-fun m!5504423 () Bool)

(assert (=> d!1463737 m!5504423))

(declare-fun m!5504425 () Bool)

(assert (=> b!4642602 m!5504425))

(assert (=> b!4642602 m!5504425))

(declare-fun m!5504427 () Bool)

(assert (=> b!4642602 m!5504427))

(assert (=> b!4642449 d!1463737))

(declare-fun bs!1034419 () Bool)

(declare-fun b!4642608 () Bool)

(assert (= bs!1034419 (and b!4642608 b!4642591)))

(declare-fun lambda!196687 () Int)

(assert (=> bs!1034419 (= lambda!196687 lambda!196676)))

(declare-fun bs!1034420 () Bool)

(assert (= bs!1034420 (and b!4642608 b!4642588)))

(assert (=> bs!1034420 (= lambda!196687 lambda!196677)))

(assert (=> bs!1034420 (= (= (ListMap!4474 Nil!51790) lt!1806218) (= lambda!196687 lambda!196678))))

(declare-fun bs!1034421 () Bool)

(assert (= bs!1034421 (and b!4642608 d!1463705)))

(assert (=> bs!1034421 (= (= (ListMap!4474 Nil!51790) lt!1806216) (= lambda!196687 lambda!196679))))

(assert (=> b!4642608 true))

(declare-fun bs!1034422 () Bool)

(declare-fun b!4642605 () Bool)

(assert (= bs!1034422 (and b!4642605 b!4642588)))

(declare-fun lambda!196688 () Int)

(assert (=> bs!1034422 (= (= (ListMap!4474 Nil!51790) lt!1806218) (= lambda!196688 lambda!196678))))

(assert (=> bs!1034422 (= lambda!196688 lambda!196677)))

(declare-fun bs!1034423 () Bool)

(assert (= bs!1034423 (and b!4642605 b!4642591)))

(assert (=> bs!1034423 (= lambda!196688 lambda!196676)))

(declare-fun bs!1034424 () Bool)

(assert (= bs!1034424 (and b!4642605 d!1463705)))

(assert (=> bs!1034424 (= (= (ListMap!4474 Nil!51790) lt!1806216) (= lambda!196688 lambda!196679))))

(declare-fun bs!1034425 () Bool)

(assert (= bs!1034425 (and b!4642605 b!4642608)))

(assert (=> bs!1034425 (= lambda!196688 lambda!196687)))

(assert (=> b!4642605 true))

(declare-fun lambda!196689 () Int)

(declare-fun lt!1806257 () ListMap!4473)

(assert (=> bs!1034422 (= (= lt!1806257 lt!1806218) (= lambda!196689 lambda!196678))))

(assert (=> bs!1034422 (= (= lt!1806257 (ListMap!4474 Nil!51790)) (= lambda!196689 lambda!196677))))

(assert (=> bs!1034423 (= (= lt!1806257 (ListMap!4474 Nil!51790)) (= lambda!196689 lambda!196676))))

(assert (=> bs!1034424 (= (= lt!1806257 lt!1806216) (= lambda!196689 lambda!196679))))

(assert (=> b!4642605 (= (= lt!1806257 (ListMap!4474 Nil!51790)) (= lambda!196689 lambda!196688))))

(assert (=> bs!1034425 (= (= lt!1806257 (ListMap!4474 Nil!51790)) (= lambda!196689 lambda!196687))))

(assert (=> b!4642605 true))

(declare-fun bs!1034426 () Bool)

(declare-fun d!1463739 () Bool)

(assert (= bs!1034426 (and d!1463739 b!4642588)))

(declare-fun lambda!196690 () Int)

(declare-fun lt!1806255 () ListMap!4473)

(assert (=> bs!1034426 (= (= lt!1806255 lt!1806218) (= lambda!196690 lambda!196678))))

(declare-fun bs!1034428 () Bool)

(assert (= bs!1034428 (and d!1463739 b!4642605)))

(assert (=> bs!1034428 (= (= lt!1806255 lt!1806257) (= lambda!196690 lambda!196689))))

(assert (=> bs!1034426 (= (= lt!1806255 (ListMap!4474 Nil!51790)) (= lambda!196690 lambda!196677))))

(declare-fun bs!1034430 () Bool)

(assert (= bs!1034430 (and d!1463739 b!4642591)))

(assert (=> bs!1034430 (= (= lt!1806255 (ListMap!4474 Nil!51790)) (= lambda!196690 lambda!196676))))

(declare-fun bs!1034432 () Bool)

(assert (= bs!1034432 (and d!1463739 d!1463705)))

(assert (=> bs!1034432 (= (= lt!1806255 lt!1806216) (= lambda!196690 lambda!196679))))

(assert (=> bs!1034428 (= (= lt!1806255 (ListMap!4474 Nil!51790)) (= lambda!196690 lambda!196688))))

(declare-fun bs!1034435 () Bool)

(assert (= bs!1034435 (and d!1463739 b!4642608)))

(assert (=> bs!1034435 (= (= lt!1806255 (ListMap!4474 Nil!51790)) (= lambda!196690 lambda!196687))))

(assert (=> d!1463739 true))

(declare-fun b!4642604 () Bool)

(declare-fun res!1950082 () Bool)

(declare-fun e!2896156 () Bool)

(assert (=> b!4642604 (=> (not res!1950082) (not e!2896156))))

(assert (=> b!4642604 (= res!1950082 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196690))))

(declare-fun call!324112 () Bool)

(declare-fun c!794421 () Bool)

(declare-fun bm!324107 () Bool)

(assert (=> bm!324107 (= call!324112 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794421 lambda!196687 lambda!196689)))))

(declare-fun bm!324108 () Bool)

(declare-fun call!324114 () Unit!115633)

(assert (=> bm!324108 (= call!324114 (lemmaContainsAllItsOwnKeys!570 (ListMap!4474 Nil!51790)))))

(declare-fun e!2896154 () ListMap!4473)

(assert (=> b!4642605 (= e!2896154 lt!1806257)))

(declare-fun lt!1806259 () ListMap!4473)

(assert (=> b!4642605 (= lt!1806259 (+!1952 (ListMap!4474 Nil!51790) (h!57904 lt!1806001)))))

(assert (=> b!4642605 (= lt!1806257 (addToMapMapFromBucket!1061 (t!359002 lt!1806001) (+!1952 (ListMap!4474 Nil!51790) (h!57904 lt!1806001))))))

(declare-fun lt!1806248 () Unit!115633)

(assert (=> b!4642605 (= lt!1806248 call!324114)))

(declare-fun call!324113 () Bool)

(assert (=> b!4642605 call!324113))

(declare-fun lt!1806265 () Unit!115633)

(assert (=> b!4642605 (= lt!1806265 lt!1806248)))

(assert (=> b!4642605 (forall!10956 (toList!5150 lt!1806259) lambda!196689)))

(declare-fun lt!1806252 () Unit!115633)

(declare-fun Unit!115658 () Unit!115633)

(assert (=> b!4642605 (= lt!1806252 Unit!115658)))

(assert (=> b!4642605 (forall!10956 (t!359002 lt!1806001) lambda!196689)))

(declare-fun lt!1806256 () Unit!115633)

(declare-fun Unit!115659 () Unit!115633)

(assert (=> b!4642605 (= lt!1806256 Unit!115659)))

(declare-fun lt!1806261 () Unit!115633)

(declare-fun Unit!115660 () Unit!115633)

(assert (=> b!4642605 (= lt!1806261 Unit!115660)))

(declare-fun lt!1806258 () Unit!115633)

(assert (=> b!4642605 (= lt!1806258 (forallContained!3180 (toList!5150 lt!1806259) lambda!196689 (h!57904 lt!1806001)))))

(assert (=> b!4642605 (contains!14929 lt!1806259 (_1!29721 (h!57904 lt!1806001)))))

(declare-fun lt!1806262 () Unit!115633)

(declare-fun Unit!115661 () Unit!115633)

(assert (=> b!4642605 (= lt!1806262 Unit!115661)))

(assert (=> b!4642605 (contains!14929 lt!1806257 (_1!29721 (h!57904 lt!1806001)))))

(declare-fun lt!1806247 () Unit!115633)

(declare-fun Unit!115662 () Unit!115633)

(assert (=> b!4642605 (= lt!1806247 Unit!115662)))

(assert (=> b!4642605 (forall!10956 lt!1806001 lambda!196689)))

(declare-fun lt!1806263 () Unit!115633)

(declare-fun Unit!115663 () Unit!115633)

(assert (=> b!4642605 (= lt!1806263 Unit!115663)))

(assert (=> b!4642605 (forall!10956 (toList!5150 lt!1806259) lambda!196689)))

(declare-fun lt!1806253 () Unit!115633)

(declare-fun Unit!115664 () Unit!115633)

(assert (=> b!4642605 (= lt!1806253 Unit!115664)))

(declare-fun lt!1806260 () Unit!115633)

(declare-fun Unit!115665 () Unit!115633)

(assert (=> b!4642605 (= lt!1806260 Unit!115665)))

(declare-fun lt!1806251 () Unit!115633)

(assert (=> b!4642605 (= lt!1806251 (addForallContainsKeyThenBeforeAdding!569 (ListMap!4474 Nil!51790) lt!1806257 (_1!29721 (h!57904 lt!1806001)) (_2!29721 (h!57904 lt!1806001))))))

(assert (=> b!4642605 call!324112))

(declare-fun lt!1806267 () Unit!115633)

(assert (=> b!4642605 (= lt!1806267 lt!1806251)))

(assert (=> b!4642605 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196689)))

(declare-fun lt!1806266 () Unit!115633)

(declare-fun Unit!115666 () Unit!115633)

(assert (=> b!4642605 (= lt!1806266 Unit!115666)))

(declare-fun res!1950083 () Bool)

(assert (=> b!4642605 (= res!1950083 (forall!10956 lt!1806001 lambda!196689))))

(declare-fun e!2896155 () Bool)

(assert (=> b!4642605 (=> (not res!1950083) (not e!2896155))))

(assert (=> b!4642605 e!2896155))

(declare-fun lt!1806249 () Unit!115633)

(declare-fun Unit!115667 () Unit!115633)

(assert (=> b!4642605 (= lt!1806249 Unit!115667)))

(assert (=> d!1463739 e!2896156))

(declare-fun res!1950081 () Bool)

(assert (=> d!1463739 (=> (not res!1950081) (not e!2896156))))

(assert (=> d!1463739 (= res!1950081 (forall!10956 lt!1806001 lambda!196690))))

(assert (=> d!1463739 (= lt!1806255 e!2896154)))

(assert (=> d!1463739 (= c!794421 ((_ is Nil!51790) lt!1806001))))

(assert (=> d!1463739 (noDuplicateKeys!1602 lt!1806001)))

(assert (=> d!1463739 (= (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806255)))

(declare-fun b!4642606 () Bool)

(assert (=> b!4642606 (= e!2896156 (invariantList!1268 (toList!5150 lt!1806255)))))

(declare-fun b!4642607 () Bool)

(assert (=> b!4642607 (= e!2896155 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196689))))

(declare-fun bm!324109 () Bool)

(assert (=> bm!324109 (= call!324113 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794421 lambda!196687 lambda!196688)))))

(assert (=> b!4642608 (= e!2896154 (ListMap!4474 Nil!51790))))

(declare-fun lt!1806250 () Unit!115633)

(assert (=> b!4642608 (= lt!1806250 call!324114)))

(assert (=> b!4642608 call!324112))

(declare-fun lt!1806264 () Unit!115633)

(assert (=> b!4642608 (= lt!1806264 lt!1806250)))

(assert (=> b!4642608 call!324113))

(declare-fun lt!1806254 () Unit!115633)

(declare-fun Unit!115668 () Unit!115633)

(assert (=> b!4642608 (= lt!1806254 Unit!115668)))

(assert (= (and d!1463739 c!794421) b!4642608))

(assert (= (and d!1463739 (not c!794421)) b!4642605))

(assert (= (and b!4642605 res!1950083) b!4642607))

(assert (= (or b!4642608 b!4642605) bm!324108))

(assert (= (or b!4642608 b!4642605) bm!324109))

(assert (= (or b!4642608 b!4642605) bm!324107))

(assert (= (and d!1463739 res!1950081) b!4642604))

(assert (= (and b!4642604 res!1950082) b!4642606))

(declare-fun m!5504431 () Bool)

(assert (=> bm!324109 m!5504431))

(assert (=> bm!324108 m!5504387))

(declare-fun m!5504435 () Bool)

(assert (=> d!1463739 m!5504435))

(assert (=> d!1463739 m!5504223))

(declare-fun m!5504439 () Bool)

(assert (=> bm!324107 m!5504439))

(declare-fun m!5504443 () Bool)

(assert (=> b!4642605 m!5504443))

(declare-fun m!5504447 () Bool)

(assert (=> b!4642605 m!5504447))

(assert (=> b!4642605 m!5504443))

(declare-fun m!5504449 () Bool)

(assert (=> b!4642605 m!5504449))

(declare-fun m!5504451 () Bool)

(assert (=> b!4642605 m!5504451))

(declare-fun m!5504455 () Bool)

(assert (=> b!4642605 m!5504455))

(declare-fun m!5504457 () Bool)

(assert (=> b!4642605 m!5504457))

(declare-fun m!5504461 () Bool)

(assert (=> b!4642605 m!5504461))

(declare-fun m!5504464 () Bool)

(assert (=> b!4642605 m!5504464))

(declare-fun m!5504469 () Bool)

(assert (=> b!4642605 m!5504469))

(assert (=> b!4642605 m!5504469))

(assert (=> b!4642605 m!5504449))

(declare-fun m!5504471 () Bool)

(assert (=> b!4642605 m!5504471))

(declare-fun m!5504475 () Bool)

(assert (=> b!4642606 m!5504475))

(declare-fun m!5504479 () Bool)

(assert (=> b!4642604 m!5504479))

(assert (=> b!4642607 m!5504464))

(assert (=> b!4642449 d!1463739))

(declare-fun b!4642643 () Bool)

(declare-fun e!2896182 () Bool)

(declare-fun e!2896180 () Bool)

(assert (=> b!4642643 (= e!2896182 e!2896180)))

(declare-fun res!1950101 () Bool)

(assert (=> b!4642643 (=> (not res!1950101) (not e!2896180))))

(declare-fun isDefined!9037 (Option!11772) Bool)

(assert (=> b!4642643 (= res!1950101 (isDefined!9037 (getValueByKey!1568 (toList!5150 lt!1806003) key!4968)))))

(declare-fun b!4642644 () Bool)

(declare-datatypes ((List!51916 0))(
  ( (Nil!51792) (Cons!51792 (h!57908 K!13155) (t!359006 List!51916)) )
))
(declare-fun e!2896181 () List!51916)

(declare-fun keys!18313 (ListMap!4473) List!51916)

(assert (=> b!4642644 (= e!2896181 (keys!18313 lt!1806003))))

(declare-fun b!4642645 () Bool)

(declare-fun getKeysList!718 (List!51914) List!51916)

(assert (=> b!4642645 (= e!2896181 (getKeysList!718 (toList!5150 lt!1806003)))))

(declare-fun b!4642646 () Bool)

(declare-fun e!2896178 () Unit!115633)

(declare-fun lt!1806340 () Unit!115633)

(assert (=> b!4642646 (= e!2896178 lt!1806340)))

(declare-fun lt!1806342 () Unit!115633)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1470 (List!51914 K!13155) Unit!115633)

(assert (=> b!4642646 (= lt!1806342 (lemmaContainsKeyImpliesGetValueByKeyDefined!1470 (toList!5150 lt!1806003) key!4968))))

(assert (=> b!4642646 (isDefined!9037 (getValueByKey!1568 (toList!5150 lt!1806003) key!4968))))

(declare-fun lt!1806337 () Unit!115633)

(assert (=> b!4642646 (= lt!1806337 lt!1806342)))

(declare-fun lemmaInListThenGetKeysListContains!713 (List!51914 K!13155) Unit!115633)

(assert (=> b!4642646 (= lt!1806340 (lemmaInListThenGetKeysListContains!713 (toList!5150 lt!1806003) key!4968))))

(declare-fun call!324123 () Bool)

(assert (=> b!4642646 call!324123))

(declare-fun b!4642647 () Bool)

(declare-fun e!2896179 () Unit!115633)

(assert (=> b!4642647 (= e!2896178 e!2896179)))

(declare-fun c!794431 () Bool)

(assert (=> b!4642647 (= c!794431 call!324123)))

(declare-fun b!4642648 () Bool)

(declare-fun e!2896183 () Bool)

(declare-fun contains!14932 (List!51916 K!13155) Bool)

(assert (=> b!4642648 (= e!2896183 (not (contains!14932 (keys!18313 lt!1806003) key!4968)))))

(declare-fun b!4642649 () Bool)

(assert (=> b!4642649 (= e!2896180 (contains!14932 (keys!18313 lt!1806003) key!4968))))

(declare-fun bm!324118 () Bool)

(assert (=> bm!324118 (= call!324123 (contains!14932 e!2896181 key!4968))))

(declare-fun c!794433 () Bool)

(declare-fun c!794432 () Bool)

(assert (=> bm!324118 (= c!794433 c!794432)))

(declare-fun d!1463741 () Bool)

(assert (=> d!1463741 e!2896182))

(declare-fun res!1950102 () Bool)

(assert (=> d!1463741 (=> res!1950102 e!2896182)))

(assert (=> d!1463741 (= res!1950102 e!2896183)))

(declare-fun res!1950100 () Bool)

(assert (=> d!1463741 (=> (not res!1950100) (not e!2896183))))

(declare-fun lt!1806338 () Bool)

(assert (=> d!1463741 (= res!1950100 (not lt!1806338))))

(declare-fun lt!1806336 () Bool)

(assert (=> d!1463741 (= lt!1806338 lt!1806336)))

(declare-fun lt!1806341 () Unit!115633)

(assert (=> d!1463741 (= lt!1806341 e!2896178)))

(assert (=> d!1463741 (= c!794432 lt!1806336)))

(declare-fun containsKey!2650 (List!51914 K!13155) Bool)

(assert (=> d!1463741 (= lt!1806336 (containsKey!2650 (toList!5150 lt!1806003) key!4968))))

(assert (=> d!1463741 (= (contains!14929 lt!1806003 key!4968) lt!1806338)))

(declare-fun b!4642650 () Bool)

(assert (=> b!4642650 false))

(declare-fun lt!1806335 () Unit!115633)

(declare-fun lt!1806339 () Unit!115633)

(assert (=> b!4642650 (= lt!1806335 lt!1806339)))

(assert (=> b!4642650 (containsKey!2650 (toList!5150 lt!1806003) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!717 (List!51914 K!13155) Unit!115633)

(assert (=> b!4642650 (= lt!1806339 (lemmaInGetKeysListThenContainsKey!717 (toList!5150 lt!1806003) key!4968))))

(declare-fun Unit!115680 () Unit!115633)

(assert (=> b!4642650 (= e!2896179 Unit!115680)))

(declare-fun b!4642651 () Bool)

(declare-fun Unit!115681 () Unit!115633)

(assert (=> b!4642651 (= e!2896179 Unit!115681)))

(assert (= (and d!1463741 c!794432) b!4642646))

(assert (= (and d!1463741 (not c!794432)) b!4642647))

(assert (= (and b!4642647 c!794431) b!4642650))

(assert (= (and b!4642647 (not c!794431)) b!4642651))

(assert (= (or b!4642646 b!4642647) bm!324118))

(assert (= (and bm!324118 c!794433) b!4642645))

(assert (= (and bm!324118 (not c!794433)) b!4642644))

(assert (= (and d!1463741 res!1950100) b!4642648))

(assert (= (and d!1463741 (not res!1950102)) b!4642643))

(assert (= (and b!4642643 res!1950101) b!4642649))

(declare-fun m!5504567 () Bool)

(assert (=> d!1463741 m!5504567))

(assert (=> b!4642650 m!5504567))

(declare-fun m!5504569 () Bool)

(assert (=> b!4642650 m!5504569))

(declare-fun m!5504571 () Bool)

(assert (=> b!4642648 m!5504571))

(assert (=> b!4642648 m!5504571))

(declare-fun m!5504573 () Bool)

(assert (=> b!4642648 m!5504573))

(declare-fun m!5504575 () Bool)

(assert (=> bm!324118 m!5504575))

(assert (=> b!4642649 m!5504571))

(assert (=> b!4642649 m!5504571))

(assert (=> b!4642649 m!5504573))

(declare-fun m!5504577 () Bool)

(assert (=> b!4642643 m!5504577))

(assert (=> b!4642643 m!5504577))

(declare-fun m!5504579 () Bool)

(assert (=> b!4642643 m!5504579))

(declare-fun m!5504581 () Bool)

(assert (=> b!4642646 m!5504581))

(assert (=> b!4642646 m!5504577))

(assert (=> b!4642646 m!5504577))

(assert (=> b!4642646 m!5504579))

(declare-fun m!5504583 () Bool)

(assert (=> b!4642646 m!5504583))

(declare-fun m!5504585 () Bool)

(assert (=> b!4642645 m!5504585))

(assert (=> b!4642644 m!5504571))

(assert (=> b!4642449 d!1463741))

(declare-fun bs!1034477 () Bool)

(declare-fun b!4642656 () Bool)

(assert (= bs!1034477 (and b!4642656 b!4642588)))

(declare-fun lambda!196701 () Int)

(assert (=> bs!1034477 (= (= (ListMap!4474 Nil!51790) lt!1806218) (= lambda!196701 lambda!196678))))

(declare-fun bs!1034478 () Bool)

(assert (= bs!1034478 (and b!4642656 b!4642605)))

(assert (=> bs!1034478 (= (= (ListMap!4474 Nil!51790) lt!1806257) (= lambda!196701 lambda!196689))))

(assert (=> bs!1034477 (= lambda!196701 lambda!196677)))

(declare-fun bs!1034479 () Bool)

(assert (= bs!1034479 (and b!4642656 b!4642591)))

(assert (=> bs!1034479 (= lambda!196701 lambda!196676)))

(declare-fun bs!1034480 () Bool)

(assert (= bs!1034480 (and b!4642656 d!1463705)))

(assert (=> bs!1034480 (= (= (ListMap!4474 Nil!51790) lt!1806216) (= lambda!196701 lambda!196679))))

(declare-fun bs!1034481 () Bool)

(assert (= bs!1034481 (and b!4642656 d!1463739)))

(assert (=> bs!1034481 (= (= (ListMap!4474 Nil!51790) lt!1806255) (= lambda!196701 lambda!196690))))

(assert (=> bs!1034478 (= lambda!196701 lambda!196688)))

(declare-fun bs!1034482 () Bool)

(assert (= bs!1034482 (and b!4642656 b!4642608)))

(assert (=> bs!1034482 (= lambda!196701 lambda!196687)))

(assert (=> b!4642656 true))

(declare-fun bs!1034483 () Bool)

(declare-fun b!4642653 () Bool)

(assert (= bs!1034483 (and b!4642653 b!4642588)))

(declare-fun lambda!196702 () Int)

(assert (=> bs!1034483 (= (= (ListMap!4474 Nil!51790) lt!1806218) (= lambda!196702 lambda!196678))))

(declare-fun bs!1034484 () Bool)

(assert (= bs!1034484 (and b!4642653 b!4642605)))

(assert (=> bs!1034484 (= (= (ListMap!4474 Nil!51790) lt!1806257) (= lambda!196702 lambda!196689))))

(assert (=> bs!1034483 (= lambda!196702 lambda!196677)))

(declare-fun bs!1034485 () Bool)

(assert (= bs!1034485 (and b!4642653 b!4642591)))

(assert (=> bs!1034485 (= lambda!196702 lambda!196676)))

(declare-fun bs!1034486 () Bool)

(assert (= bs!1034486 (and b!4642653 b!4642656)))

(assert (=> bs!1034486 (= lambda!196702 lambda!196701)))

(declare-fun bs!1034487 () Bool)

(assert (= bs!1034487 (and b!4642653 d!1463705)))

(assert (=> bs!1034487 (= (= (ListMap!4474 Nil!51790) lt!1806216) (= lambda!196702 lambda!196679))))

(declare-fun bs!1034488 () Bool)

(assert (= bs!1034488 (and b!4642653 d!1463739)))

(assert (=> bs!1034488 (= (= (ListMap!4474 Nil!51790) lt!1806255) (= lambda!196702 lambda!196690))))

(assert (=> bs!1034484 (= lambda!196702 lambda!196688)))

(declare-fun bs!1034489 () Bool)

(assert (= bs!1034489 (and b!4642653 b!4642608)))

(assert (=> bs!1034489 (= lambda!196702 lambda!196687)))

(assert (=> b!4642653 true))

(declare-fun lambda!196703 () Int)

(declare-fun lt!1806353 () ListMap!4473)

(assert (=> bs!1034483 (= (= lt!1806353 lt!1806218) (= lambda!196703 lambda!196678))))

(assert (=> bs!1034484 (= (= lt!1806353 lt!1806257) (= lambda!196703 lambda!196689))))

(assert (=> bs!1034483 (= (= lt!1806353 (ListMap!4474 Nil!51790)) (= lambda!196703 lambda!196677))))

(assert (=> bs!1034485 (= (= lt!1806353 (ListMap!4474 Nil!51790)) (= lambda!196703 lambda!196676))))

(assert (=> b!4642653 (= (= lt!1806353 (ListMap!4474 Nil!51790)) (= lambda!196703 lambda!196702))))

(assert (=> bs!1034486 (= (= lt!1806353 (ListMap!4474 Nil!51790)) (= lambda!196703 lambda!196701))))

(assert (=> bs!1034487 (= (= lt!1806353 lt!1806216) (= lambda!196703 lambda!196679))))

(assert (=> bs!1034488 (= (= lt!1806353 lt!1806255) (= lambda!196703 lambda!196690))))

(assert (=> bs!1034484 (= (= lt!1806353 (ListMap!4474 Nil!51790)) (= lambda!196703 lambda!196688))))

(assert (=> bs!1034489 (= (= lt!1806353 (ListMap!4474 Nil!51790)) (= lambda!196703 lambda!196687))))

(assert (=> b!4642653 true))

(declare-fun bs!1034490 () Bool)

(declare-fun d!1463757 () Bool)

(assert (= bs!1034490 (and d!1463757 b!4642588)))

(declare-fun lambda!196704 () Int)

(declare-fun lt!1806351 () ListMap!4473)

(assert (=> bs!1034490 (= (= lt!1806351 lt!1806218) (= lambda!196704 lambda!196678))))

(declare-fun bs!1034491 () Bool)

(assert (= bs!1034491 (and d!1463757 b!4642605)))

(assert (=> bs!1034491 (= (= lt!1806351 lt!1806257) (= lambda!196704 lambda!196689))))

(declare-fun bs!1034492 () Bool)

(assert (= bs!1034492 (and d!1463757 b!4642653)))

(assert (=> bs!1034492 (= (= lt!1806351 lt!1806353) (= lambda!196704 lambda!196703))))

(assert (=> bs!1034490 (= (= lt!1806351 (ListMap!4474 Nil!51790)) (= lambda!196704 lambda!196677))))

(declare-fun bs!1034493 () Bool)

(assert (= bs!1034493 (and d!1463757 b!4642591)))

(assert (=> bs!1034493 (= (= lt!1806351 (ListMap!4474 Nil!51790)) (= lambda!196704 lambda!196676))))

(assert (=> bs!1034492 (= (= lt!1806351 (ListMap!4474 Nil!51790)) (= lambda!196704 lambda!196702))))

(declare-fun bs!1034494 () Bool)

(assert (= bs!1034494 (and d!1463757 b!4642656)))

(assert (=> bs!1034494 (= (= lt!1806351 (ListMap!4474 Nil!51790)) (= lambda!196704 lambda!196701))))

(declare-fun bs!1034495 () Bool)

(assert (= bs!1034495 (and d!1463757 d!1463705)))

(assert (=> bs!1034495 (= (= lt!1806351 lt!1806216) (= lambda!196704 lambda!196679))))

(declare-fun bs!1034496 () Bool)

(assert (= bs!1034496 (and d!1463757 d!1463739)))

(assert (=> bs!1034496 (= (= lt!1806351 lt!1806255) (= lambda!196704 lambda!196690))))

(assert (=> bs!1034491 (= (= lt!1806351 (ListMap!4474 Nil!51790)) (= lambda!196704 lambda!196688))))

(declare-fun bs!1034497 () Bool)

(assert (= bs!1034497 (and d!1463757 b!4642608)))

(assert (=> bs!1034497 (= (= lt!1806351 (ListMap!4474 Nil!51790)) (= lambda!196704 lambda!196687))))

(assert (=> d!1463757 true))

(declare-fun b!4642652 () Bool)

(declare-fun res!1950104 () Bool)

(declare-fun e!2896186 () Bool)

(assert (=> b!4642652 (=> (not res!1950104) (not e!2896186))))

(assert (=> b!4642652 (= res!1950104 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196704))))

(declare-fun c!794434 () Bool)

(declare-fun call!324124 () Bool)

(declare-fun bm!324119 () Bool)

(assert (=> bm!324119 (= call!324124 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794434 lambda!196701 lambda!196703)))))

(declare-fun bm!324120 () Bool)

(declare-fun call!324126 () Unit!115633)

(assert (=> bm!324120 (= call!324126 (lemmaContainsAllItsOwnKeys!570 (ListMap!4474 Nil!51790)))))

(declare-fun e!2896184 () ListMap!4473)

(assert (=> b!4642653 (= e!2896184 lt!1806353)))

(declare-fun lt!1806355 () ListMap!4473)

(assert (=> b!4642653 (= lt!1806355 (+!1952 (ListMap!4474 Nil!51790) (h!57904 (Cons!51790 lt!1806012 lt!1806001))))))

(assert (=> b!4642653 (= lt!1806353 (addToMapMapFromBucket!1061 (t!359002 (Cons!51790 lt!1806012 lt!1806001)) (+!1952 (ListMap!4474 Nil!51790) (h!57904 (Cons!51790 lt!1806012 lt!1806001)))))))

(declare-fun lt!1806344 () Unit!115633)

(assert (=> b!4642653 (= lt!1806344 call!324126)))

(declare-fun call!324125 () Bool)

(assert (=> b!4642653 call!324125))

(declare-fun lt!1806361 () Unit!115633)

(assert (=> b!4642653 (= lt!1806361 lt!1806344)))

(assert (=> b!4642653 (forall!10956 (toList!5150 lt!1806355) lambda!196703)))

(declare-fun lt!1806348 () Unit!115633)

(declare-fun Unit!115682 () Unit!115633)

(assert (=> b!4642653 (= lt!1806348 Unit!115682)))

(assert (=> b!4642653 (forall!10956 (t!359002 (Cons!51790 lt!1806012 lt!1806001)) lambda!196703)))

(declare-fun lt!1806352 () Unit!115633)

(declare-fun Unit!115683 () Unit!115633)

(assert (=> b!4642653 (= lt!1806352 Unit!115683)))

(declare-fun lt!1806357 () Unit!115633)

(declare-fun Unit!115684 () Unit!115633)

(assert (=> b!4642653 (= lt!1806357 Unit!115684)))

(declare-fun lt!1806354 () Unit!115633)

(assert (=> b!4642653 (= lt!1806354 (forallContained!3180 (toList!5150 lt!1806355) lambda!196703 (h!57904 (Cons!51790 lt!1806012 lt!1806001))))))

(assert (=> b!4642653 (contains!14929 lt!1806355 (_1!29721 (h!57904 (Cons!51790 lt!1806012 lt!1806001))))))

(declare-fun lt!1806358 () Unit!115633)

(declare-fun Unit!115685 () Unit!115633)

(assert (=> b!4642653 (= lt!1806358 Unit!115685)))

(assert (=> b!4642653 (contains!14929 lt!1806353 (_1!29721 (h!57904 (Cons!51790 lt!1806012 lt!1806001))))))

(declare-fun lt!1806343 () Unit!115633)

(declare-fun Unit!115686 () Unit!115633)

(assert (=> b!4642653 (= lt!1806343 Unit!115686)))

(assert (=> b!4642653 (forall!10956 (Cons!51790 lt!1806012 lt!1806001) lambda!196703)))

(declare-fun lt!1806359 () Unit!115633)

(declare-fun Unit!115687 () Unit!115633)

(assert (=> b!4642653 (= lt!1806359 Unit!115687)))

(assert (=> b!4642653 (forall!10956 (toList!5150 lt!1806355) lambda!196703)))

(declare-fun lt!1806349 () Unit!115633)

(declare-fun Unit!115688 () Unit!115633)

(assert (=> b!4642653 (= lt!1806349 Unit!115688)))

(declare-fun lt!1806356 () Unit!115633)

(declare-fun Unit!115689 () Unit!115633)

(assert (=> b!4642653 (= lt!1806356 Unit!115689)))

(declare-fun lt!1806347 () Unit!115633)

(assert (=> b!4642653 (= lt!1806347 (addForallContainsKeyThenBeforeAdding!569 (ListMap!4474 Nil!51790) lt!1806353 (_1!29721 (h!57904 (Cons!51790 lt!1806012 lt!1806001))) (_2!29721 (h!57904 (Cons!51790 lt!1806012 lt!1806001)))))))

(assert (=> b!4642653 call!324124))

(declare-fun lt!1806363 () Unit!115633)

(assert (=> b!4642653 (= lt!1806363 lt!1806347)))

(assert (=> b!4642653 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196703)))

(declare-fun lt!1806362 () Unit!115633)

(declare-fun Unit!115690 () Unit!115633)

(assert (=> b!4642653 (= lt!1806362 Unit!115690)))

(declare-fun res!1950105 () Bool)

(assert (=> b!4642653 (= res!1950105 (forall!10956 (Cons!51790 lt!1806012 lt!1806001) lambda!196703))))

(declare-fun e!2896185 () Bool)

(assert (=> b!4642653 (=> (not res!1950105) (not e!2896185))))

(assert (=> b!4642653 e!2896185))

(declare-fun lt!1806345 () Unit!115633)

(declare-fun Unit!115691 () Unit!115633)

(assert (=> b!4642653 (= lt!1806345 Unit!115691)))

(assert (=> d!1463757 e!2896186))

(declare-fun res!1950103 () Bool)

(assert (=> d!1463757 (=> (not res!1950103) (not e!2896186))))

(assert (=> d!1463757 (= res!1950103 (forall!10956 (Cons!51790 lt!1806012 lt!1806001) lambda!196704))))

(assert (=> d!1463757 (= lt!1806351 e!2896184)))

(assert (=> d!1463757 (= c!794434 ((_ is Nil!51790) (Cons!51790 lt!1806012 lt!1806001)))))

(assert (=> d!1463757 (noDuplicateKeys!1602 (Cons!51790 lt!1806012 lt!1806001))))

(assert (=> d!1463757 (= (addToMapMapFromBucket!1061 (Cons!51790 lt!1806012 lt!1806001) (ListMap!4474 Nil!51790)) lt!1806351)))

(declare-fun b!4642654 () Bool)

(assert (=> b!4642654 (= e!2896186 (invariantList!1268 (toList!5150 lt!1806351)))))

(declare-fun b!4642655 () Bool)

(assert (=> b!4642655 (= e!2896185 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196703))))

(declare-fun bm!324121 () Bool)

(assert (=> bm!324121 (= call!324125 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794434 lambda!196701 lambda!196702)))))

(assert (=> b!4642656 (= e!2896184 (ListMap!4474 Nil!51790))))

(declare-fun lt!1806346 () Unit!115633)

(assert (=> b!4642656 (= lt!1806346 call!324126)))

(assert (=> b!4642656 call!324124))

(declare-fun lt!1806360 () Unit!115633)

(assert (=> b!4642656 (= lt!1806360 lt!1806346)))

(assert (=> b!4642656 call!324125))

(declare-fun lt!1806350 () Unit!115633)

(declare-fun Unit!115692 () Unit!115633)

(assert (=> b!4642656 (= lt!1806350 Unit!115692)))

(assert (= (and d!1463757 c!794434) b!4642656))

(assert (= (and d!1463757 (not c!794434)) b!4642653))

(assert (= (and b!4642653 res!1950105) b!4642655))

(assert (= (or b!4642656 b!4642653) bm!324120))

(assert (= (or b!4642656 b!4642653) bm!324121))

(assert (= (or b!4642656 b!4642653) bm!324119))

(assert (= (and d!1463757 res!1950103) b!4642652))

(assert (= (and b!4642652 res!1950104) b!4642654))

(declare-fun m!5504587 () Bool)

(assert (=> bm!324121 m!5504587))

(assert (=> bm!324120 m!5504387))

(declare-fun m!5504589 () Bool)

(assert (=> d!1463757 m!5504589))

(declare-fun m!5504591 () Bool)

(assert (=> d!1463757 m!5504591))

(declare-fun m!5504593 () Bool)

(assert (=> bm!324119 m!5504593))

(declare-fun m!5504595 () Bool)

(assert (=> b!4642653 m!5504595))

(declare-fun m!5504597 () Bool)

(assert (=> b!4642653 m!5504597))

(assert (=> b!4642653 m!5504595))

(declare-fun m!5504599 () Bool)

(assert (=> b!4642653 m!5504599))

(declare-fun m!5504601 () Bool)

(assert (=> b!4642653 m!5504601))

(declare-fun m!5504603 () Bool)

(assert (=> b!4642653 m!5504603))

(declare-fun m!5504605 () Bool)

(assert (=> b!4642653 m!5504605))

(declare-fun m!5504607 () Bool)

(assert (=> b!4642653 m!5504607))

(declare-fun m!5504609 () Bool)

(assert (=> b!4642653 m!5504609))

(declare-fun m!5504611 () Bool)

(assert (=> b!4642653 m!5504611))

(assert (=> b!4642653 m!5504611))

(assert (=> b!4642653 m!5504599))

(declare-fun m!5504613 () Bool)

(assert (=> b!4642653 m!5504613))

(declare-fun m!5504615 () Bool)

(assert (=> b!4642654 m!5504615))

(declare-fun m!5504617 () Bool)

(assert (=> b!4642652 m!5504617))

(assert (=> b!4642655 m!5504609))

(assert (=> b!4642449 d!1463757))

(declare-fun bs!1034500 () Bool)

(declare-fun b!4642661 () Bool)

(assert (= bs!1034500 (and b!4642661 b!4642588)))

(declare-fun lambda!196705 () Int)

(assert (=> bs!1034500 (= (= (ListMap!4474 Nil!51790) lt!1806218) (= lambda!196705 lambda!196678))))

(declare-fun bs!1034501 () Bool)

(assert (= bs!1034501 (and b!4642661 b!4642605)))

(assert (=> bs!1034501 (= (= (ListMap!4474 Nil!51790) lt!1806257) (= lambda!196705 lambda!196689))))

(declare-fun bs!1034502 () Bool)

(assert (= bs!1034502 (and b!4642661 b!4642653)))

(assert (=> bs!1034502 (= (= (ListMap!4474 Nil!51790) lt!1806353) (= lambda!196705 lambda!196703))))

(assert (=> bs!1034500 (= lambda!196705 lambda!196677)))

(declare-fun bs!1034503 () Bool)

(assert (= bs!1034503 (and b!4642661 b!4642591)))

(assert (=> bs!1034503 (= lambda!196705 lambda!196676)))

(assert (=> bs!1034502 (= lambda!196705 lambda!196702)))

(declare-fun bs!1034504 () Bool)

(assert (= bs!1034504 (and b!4642661 b!4642656)))

(assert (=> bs!1034504 (= lambda!196705 lambda!196701)))

(declare-fun bs!1034505 () Bool)

(assert (= bs!1034505 (and b!4642661 d!1463705)))

(assert (=> bs!1034505 (= (= (ListMap!4474 Nil!51790) lt!1806216) (= lambda!196705 lambda!196679))))

(declare-fun bs!1034507 () Bool)

(assert (= bs!1034507 (and b!4642661 d!1463739)))

(assert (=> bs!1034507 (= (= (ListMap!4474 Nil!51790) lt!1806255) (= lambda!196705 lambda!196690))))

(assert (=> bs!1034501 (= lambda!196705 lambda!196688)))

(declare-fun bs!1034508 () Bool)

(assert (= bs!1034508 (and b!4642661 b!4642608)))

(assert (=> bs!1034508 (= lambda!196705 lambda!196687)))

(declare-fun bs!1034509 () Bool)

(assert (= bs!1034509 (and b!4642661 d!1463757)))

(assert (=> bs!1034509 (= (= (ListMap!4474 Nil!51790) lt!1806351) (= lambda!196705 lambda!196704))))

(assert (=> b!4642661 true))

(declare-fun bs!1034510 () Bool)

(declare-fun b!4642658 () Bool)

(assert (= bs!1034510 (and b!4642658 b!4642588)))

(declare-fun lambda!196706 () Int)

(assert (=> bs!1034510 (= (= (ListMap!4474 Nil!51790) lt!1806218) (= lambda!196706 lambda!196678))))

(declare-fun bs!1034511 () Bool)

(assert (= bs!1034511 (and b!4642658 b!4642605)))

(assert (=> bs!1034511 (= (= (ListMap!4474 Nil!51790) lt!1806257) (= lambda!196706 lambda!196689))))

(declare-fun bs!1034512 () Bool)

(assert (= bs!1034512 (and b!4642658 b!4642653)))

(assert (=> bs!1034512 (= (= (ListMap!4474 Nil!51790) lt!1806353) (= lambda!196706 lambda!196703))))

(assert (=> bs!1034510 (= lambda!196706 lambda!196677)))

(declare-fun bs!1034513 () Bool)

(assert (= bs!1034513 (and b!4642658 b!4642591)))

(assert (=> bs!1034513 (= lambda!196706 lambda!196676)))

(assert (=> bs!1034512 (= lambda!196706 lambda!196702)))

(declare-fun bs!1034514 () Bool)

(assert (= bs!1034514 (and b!4642658 b!4642656)))

(assert (=> bs!1034514 (= lambda!196706 lambda!196701)))

(declare-fun bs!1034515 () Bool)

(assert (= bs!1034515 (and b!4642658 b!4642661)))

(assert (=> bs!1034515 (= lambda!196706 lambda!196705)))

(declare-fun bs!1034516 () Bool)

(assert (= bs!1034516 (and b!4642658 d!1463705)))

(assert (=> bs!1034516 (= (= (ListMap!4474 Nil!51790) lt!1806216) (= lambda!196706 lambda!196679))))

(declare-fun bs!1034517 () Bool)

(assert (= bs!1034517 (and b!4642658 d!1463739)))

(assert (=> bs!1034517 (= (= (ListMap!4474 Nil!51790) lt!1806255) (= lambda!196706 lambda!196690))))

(assert (=> bs!1034511 (= lambda!196706 lambda!196688)))

(declare-fun bs!1034518 () Bool)

(assert (= bs!1034518 (and b!4642658 b!4642608)))

(assert (=> bs!1034518 (= lambda!196706 lambda!196687)))

(declare-fun bs!1034519 () Bool)

(assert (= bs!1034519 (and b!4642658 d!1463757)))

(assert (=> bs!1034519 (= (= (ListMap!4474 Nil!51790) lt!1806351) (= lambda!196706 lambda!196704))))

(assert (=> b!4642658 true))

(declare-fun lt!1806377 () ListMap!4473)

(declare-fun lambda!196707 () Int)

(assert (=> bs!1034510 (= (= lt!1806377 lt!1806218) (= lambda!196707 lambda!196678))))

(assert (=> bs!1034511 (= (= lt!1806377 lt!1806257) (= lambda!196707 lambda!196689))))

(assert (=> bs!1034512 (= (= lt!1806377 lt!1806353) (= lambda!196707 lambda!196703))))

(assert (=> bs!1034510 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196677))))

(assert (=> b!4642658 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196706))))

(assert (=> bs!1034513 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196676))))

(assert (=> bs!1034512 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196702))))

(assert (=> bs!1034514 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196701))))

(assert (=> bs!1034515 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196705))))

(assert (=> bs!1034516 (= (= lt!1806377 lt!1806216) (= lambda!196707 lambda!196679))))

(assert (=> bs!1034517 (= (= lt!1806377 lt!1806255) (= lambda!196707 lambda!196690))))

(assert (=> bs!1034511 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196688))))

(assert (=> bs!1034518 (= (= lt!1806377 (ListMap!4474 Nil!51790)) (= lambda!196707 lambda!196687))))

(assert (=> bs!1034519 (= (= lt!1806377 lt!1806351) (= lambda!196707 lambda!196704))))

(assert (=> b!4642658 true))

(declare-fun bs!1034520 () Bool)

(declare-fun d!1463759 () Bool)

(assert (= bs!1034520 (and d!1463759 b!4642588)))

(declare-fun lambda!196708 () Int)

(declare-fun lt!1806375 () ListMap!4473)

(assert (=> bs!1034520 (= (= lt!1806375 lt!1806218) (= lambda!196708 lambda!196678))))

(declare-fun bs!1034521 () Bool)

(assert (= bs!1034521 (and d!1463759 b!4642605)))

(assert (=> bs!1034521 (= (= lt!1806375 lt!1806257) (= lambda!196708 lambda!196689))))

(declare-fun bs!1034522 () Bool)

(assert (= bs!1034522 (and d!1463759 b!4642653)))

(assert (=> bs!1034522 (= (= lt!1806375 lt!1806353) (= lambda!196708 lambda!196703))))

(assert (=> bs!1034520 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196677))))

(declare-fun bs!1034523 () Bool)

(assert (= bs!1034523 (and d!1463759 b!4642658)))

(assert (=> bs!1034523 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196706))))

(assert (=> bs!1034523 (= (= lt!1806375 lt!1806377) (= lambda!196708 lambda!196707))))

(declare-fun bs!1034524 () Bool)

(assert (= bs!1034524 (and d!1463759 b!4642591)))

(assert (=> bs!1034524 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196676))))

(assert (=> bs!1034522 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196702))))

(declare-fun bs!1034525 () Bool)

(assert (= bs!1034525 (and d!1463759 b!4642656)))

(assert (=> bs!1034525 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196701))))

(declare-fun bs!1034526 () Bool)

(assert (= bs!1034526 (and d!1463759 b!4642661)))

(assert (=> bs!1034526 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196705))))

(declare-fun bs!1034527 () Bool)

(assert (= bs!1034527 (and d!1463759 d!1463705)))

(assert (=> bs!1034527 (= (= lt!1806375 lt!1806216) (= lambda!196708 lambda!196679))))

(declare-fun bs!1034528 () Bool)

(assert (= bs!1034528 (and d!1463759 d!1463739)))

(assert (=> bs!1034528 (= (= lt!1806375 lt!1806255) (= lambda!196708 lambda!196690))))

(assert (=> bs!1034521 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196688))))

(declare-fun bs!1034529 () Bool)

(assert (= bs!1034529 (and d!1463759 b!4642608)))

(assert (=> bs!1034529 (= (= lt!1806375 (ListMap!4474 Nil!51790)) (= lambda!196708 lambda!196687))))

(declare-fun bs!1034530 () Bool)

(assert (= bs!1034530 (and d!1463759 d!1463757)))

(assert (=> bs!1034530 (= (= lt!1806375 lt!1806351) (= lambda!196708 lambda!196704))))

(assert (=> d!1463759 true))

(declare-fun b!4642657 () Bool)

(declare-fun res!1950107 () Bool)

(declare-fun e!2896189 () Bool)

(assert (=> b!4642657 (=> (not res!1950107) (not e!2896189))))

(assert (=> b!4642657 (= res!1950107 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196708))))

(declare-fun bm!324122 () Bool)

(declare-fun call!324127 () Bool)

(declare-fun c!794435 () Bool)

(assert (=> bm!324122 (= call!324127 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794435 lambda!196705 lambda!196707)))))

(declare-fun bm!324123 () Bool)

(declare-fun call!324129 () Unit!115633)

(assert (=> bm!324123 (= call!324129 (lemmaContainsAllItsOwnKeys!570 (ListMap!4474 Nil!51790)))))

(declare-fun e!2896187 () ListMap!4473)

(assert (=> b!4642658 (= e!2896187 lt!1806377)))

(declare-fun lt!1806379 () ListMap!4473)

(assert (=> b!4642658 (= lt!1806379 (+!1952 (ListMap!4474 Nil!51790) (h!57904 (Cons!51790 lt!1806026 lt!1806029))))))

(assert (=> b!4642658 (= lt!1806377 (addToMapMapFromBucket!1061 (t!359002 (Cons!51790 lt!1806026 lt!1806029)) (+!1952 (ListMap!4474 Nil!51790) (h!57904 (Cons!51790 lt!1806026 lt!1806029)))))))

(declare-fun lt!1806368 () Unit!115633)

(assert (=> b!4642658 (= lt!1806368 call!324129)))

(declare-fun call!324128 () Bool)

(assert (=> b!4642658 call!324128))

(declare-fun lt!1806385 () Unit!115633)

(assert (=> b!4642658 (= lt!1806385 lt!1806368)))

(assert (=> b!4642658 (forall!10956 (toList!5150 lt!1806379) lambda!196707)))

(declare-fun lt!1806372 () Unit!115633)

(declare-fun Unit!115704 () Unit!115633)

(assert (=> b!4642658 (= lt!1806372 Unit!115704)))

(assert (=> b!4642658 (forall!10956 (t!359002 (Cons!51790 lt!1806026 lt!1806029)) lambda!196707)))

(declare-fun lt!1806376 () Unit!115633)

(declare-fun Unit!115705 () Unit!115633)

(assert (=> b!4642658 (= lt!1806376 Unit!115705)))

(declare-fun lt!1806381 () Unit!115633)

(declare-fun Unit!115706 () Unit!115633)

(assert (=> b!4642658 (= lt!1806381 Unit!115706)))

(declare-fun lt!1806378 () Unit!115633)

(assert (=> b!4642658 (= lt!1806378 (forallContained!3180 (toList!5150 lt!1806379) lambda!196707 (h!57904 (Cons!51790 lt!1806026 lt!1806029))))))

(assert (=> b!4642658 (contains!14929 lt!1806379 (_1!29721 (h!57904 (Cons!51790 lt!1806026 lt!1806029))))))

(declare-fun lt!1806382 () Unit!115633)

(declare-fun Unit!115707 () Unit!115633)

(assert (=> b!4642658 (= lt!1806382 Unit!115707)))

(assert (=> b!4642658 (contains!14929 lt!1806377 (_1!29721 (h!57904 (Cons!51790 lt!1806026 lt!1806029))))))

(declare-fun lt!1806367 () Unit!115633)

(declare-fun Unit!115708 () Unit!115633)

(assert (=> b!4642658 (= lt!1806367 Unit!115708)))

(assert (=> b!4642658 (forall!10956 (Cons!51790 lt!1806026 lt!1806029) lambda!196707)))

(declare-fun lt!1806383 () Unit!115633)

(declare-fun Unit!115709 () Unit!115633)

(assert (=> b!4642658 (= lt!1806383 Unit!115709)))

(assert (=> b!4642658 (forall!10956 (toList!5150 lt!1806379) lambda!196707)))

(declare-fun lt!1806373 () Unit!115633)

(declare-fun Unit!115710 () Unit!115633)

(assert (=> b!4642658 (= lt!1806373 Unit!115710)))

(declare-fun lt!1806380 () Unit!115633)

(declare-fun Unit!115711 () Unit!115633)

(assert (=> b!4642658 (= lt!1806380 Unit!115711)))

(declare-fun lt!1806371 () Unit!115633)

(assert (=> b!4642658 (= lt!1806371 (addForallContainsKeyThenBeforeAdding!569 (ListMap!4474 Nil!51790) lt!1806377 (_1!29721 (h!57904 (Cons!51790 lt!1806026 lt!1806029))) (_2!29721 (h!57904 (Cons!51790 lt!1806026 lt!1806029)))))))

(assert (=> b!4642658 call!324127))

(declare-fun lt!1806387 () Unit!115633)

(assert (=> b!4642658 (= lt!1806387 lt!1806371)))

(assert (=> b!4642658 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196707)))

(declare-fun lt!1806386 () Unit!115633)

(declare-fun Unit!115712 () Unit!115633)

(assert (=> b!4642658 (= lt!1806386 Unit!115712)))

(declare-fun res!1950108 () Bool)

(assert (=> b!4642658 (= res!1950108 (forall!10956 (Cons!51790 lt!1806026 lt!1806029) lambda!196707))))

(declare-fun e!2896188 () Bool)

(assert (=> b!4642658 (=> (not res!1950108) (not e!2896188))))

(assert (=> b!4642658 e!2896188))

(declare-fun lt!1806369 () Unit!115633)

(declare-fun Unit!115713 () Unit!115633)

(assert (=> b!4642658 (= lt!1806369 Unit!115713)))

(assert (=> d!1463759 e!2896189))

(declare-fun res!1950106 () Bool)

(assert (=> d!1463759 (=> (not res!1950106) (not e!2896189))))

(assert (=> d!1463759 (= res!1950106 (forall!10956 (Cons!51790 lt!1806026 lt!1806029) lambda!196708))))

(assert (=> d!1463759 (= lt!1806375 e!2896187)))

(assert (=> d!1463759 (= c!794435 ((_ is Nil!51790) (Cons!51790 lt!1806026 lt!1806029)))))

(assert (=> d!1463759 (noDuplicateKeys!1602 (Cons!51790 lt!1806026 lt!1806029))))

(assert (=> d!1463759 (= (addToMapMapFromBucket!1061 (Cons!51790 lt!1806026 lt!1806029) (ListMap!4474 Nil!51790)) lt!1806375)))

(declare-fun b!4642659 () Bool)

(assert (=> b!4642659 (= e!2896189 (invariantList!1268 (toList!5150 lt!1806375)))))

(declare-fun b!4642660 () Bool)

(assert (=> b!4642660 (= e!2896188 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) lambda!196707))))

(declare-fun bm!324124 () Bool)

(assert (=> bm!324124 (= call!324128 (forall!10956 (toList!5150 (ListMap!4474 Nil!51790)) (ite c!794435 lambda!196705 lambda!196706)))))

(assert (=> b!4642661 (= e!2896187 (ListMap!4474 Nil!51790))))

(declare-fun lt!1806370 () Unit!115633)

(assert (=> b!4642661 (= lt!1806370 call!324129)))

(assert (=> b!4642661 call!324127))

(declare-fun lt!1806384 () Unit!115633)

(assert (=> b!4642661 (= lt!1806384 lt!1806370)))

(assert (=> b!4642661 call!324128))

(declare-fun lt!1806374 () Unit!115633)

(declare-fun Unit!115714 () Unit!115633)

(assert (=> b!4642661 (= lt!1806374 Unit!115714)))

(assert (= (and d!1463759 c!794435) b!4642661))

(assert (= (and d!1463759 (not c!794435)) b!4642658))

(assert (= (and b!4642658 res!1950108) b!4642660))

(assert (= (or b!4642661 b!4642658) bm!324123))

(assert (= (or b!4642661 b!4642658) bm!324124))

(assert (= (or b!4642661 b!4642658) bm!324122))

(assert (= (and d!1463759 res!1950106) b!4642657))

(assert (= (and b!4642657 res!1950107) b!4642659))

(declare-fun m!5504631 () Bool)

(assert (=> bm!324124 m!5504631))

(assert (=> bm!324123 m!5504387))

(declare-fun m!5504633 () Bool)

(assert (=> d!1463759 m!5504633))

(declare-fun m!5504635 () Bool)

(assert (=> d!1463759 m!5504635))

(declare-fun m!5504637 () Bool)

(assert (=> bm!324122 m!5504637))

(declare-fun m!5504639 () Bool)

(assert (=> b!4642658 m!5504639))

(declare-fun m!5504641 () Bool)

(assert (=> b!4642658 m!5504641))

(assert (=> b!4642658 m!5504639))

(declare-fun m!5504643 () Bool)

(assert (=> b!4642658 m!5504643))

(declare-fun m!5504645 () Bool)

(assert (=> b!4642658 m!5504645))

(declare-fun m!5504647 () Bool)

(assert (=> b!4642658 m!5504647))

(declare-fun m!5504649 () Bool)

(assert (=> b!4642658 m!5504649))

(declare-fun m!5504651 () Bool)

(assert (=> b!4642658 m!5504651))

(declare-fun m!5504653 () Bool)

(assert (=> b!4642658 m!5504653))

(declare-fun m!5504655 () Bool)

(assert (=> b!4642658 m!5504655))

(assert (=> b!4642658 m!5504655))

(assert (=> b!4642658 m!5504643))

(declare-fun m!5504657 () Bool)

(assert (=> b!4642658 m!5504657))

(declare-fun m!5504659 () Bool)

(assert (=> b!4642659 m!5504659))

(declare-fun m!5504661 () Bool)

(assert (=> b!4642657 m!5504661))

(assert (=> b!4642660 m!5504653))

(assert (=> b!4642449 d!1463759))

(declare-fun d!1463767 () Bool)

(assert (=> d!1463767 (= (eq!893 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806012 lt!1806001) (ListMap!4474 Nil!51790)) (+!1952 (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806012)) (= (content!8952 (toList!5150 (addToMapMapFromBucket!1061 (Cons!51790 lt!1806012 lt!1806001) (ListMap!4474 Nil!51790)))) (content!8952 (toList!5150 (+!1952 (addToMapMapFromBucket!1061 lt!1806001 (ListMap!4474 Nil!51790)) lt!1806012)))))))

(declare-fun bs!1034531 () Bool)

(assert (= bs!1034531 d!1463767))

(declare-fun m!5504663 () Bool)

(assert (=> bs!1034531 m!5504663))

(declare-fun m!5504665 () Bool)

(assert (=> bs!1034531 m!5504665))

(assert (=> b!4642449 d!1463767))

(declare-fun d!1463769 () Bool)

(declare-fun e!2896190 () Bool)

(assert (=> d!1463769 e!2896190))

(declare-fun res!1950110 () Bool)

(assert (=> d!1463769 (=> (not res!1950110) (not e!2896190))))

(declare-fun lt!1806392 () ListMap!4473)

(assert (=> d!1463769 (= res!1950110 (contains!14929 lt!1806392 (_1!29721 (h!57904 oldBucket!40))))))

(declare-fun lt!1806389 () List!51914)

(assert (=> d!1463769 (= lt!1806392 (ListMap!4474 lt!1806389))))

(declare-fun lt!1806390 () Unit!115633)

(declare-fun lt!1806391 () Unit!115633)

(assert (=> d!1463769 (= lt!1806390 lt!1806391)))

(assert (=> d!1463769 (= (getValueByKey!1568 lt!1806389 (_1!29721 (h!57904 oldBucket!40))) (Some!11771 (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463769 (= lt!1806391 (lemmaContainsTupThenGetReturnValue!904 lt!1806389 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463769 (= lt!1806389 (insertNoDuplicatedKeys!412 (toList!5150 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791))) (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463769 (= (+!1952 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806001) Nil!51791)) (h!57904 oldBucket!40)) lt!1806392)))

(declare-fun b!4642662 () Bool)

(declare-fun res!1950109 () Bool)

(assert (=> b!4642662 (=> (not res!1950109) (not e!2896190))))

(assert (=> b!4642662 (= res!1950109 (= (getValueByKey!1568 (toList!5150 lt!1806392) (_1!29721 (h!57904 oldBucket!40))) (Some!11771 (_2!29721 (h!57904 oldBucket!40)))))))

(declare-fun b!4642663 () Bool)

(assert (=> b!4642663 (= e!2896190 (contains!14931 (toList!5150 lt!1806392) (h!57904 oldBucket!40)))))

(assert (= (and d!1463769 res!1950110) b!4642662))

(assert (= (and b!4642662 res!1950109) b!4642663))

(declare-fun m!5504667 () Bool)

(assert (=> d!1463769 m!5504667))

(declare-fun m!5504669 () Bool)

(assert (=> d!1463769 m!5504669))

(declare-fun m!5504671 () Bool)

(assert (=> d!1463769 m!5504671))

(declare-fun m!5504673 () Bool)

(assert (=> d!1463769 m!5504673))

(declare-fun m!5504675 () Bool)

(assert (=> b!4642662 m!5504675))

(declare-fun m!5504677 () Bool)

(assert (=> b!4642663 m!5504677))

(assert (=> b!4642449 d!1463769))

(declare-fun d!1463771 () Bool)

(declare-fun e!2896191 () Bool)

(assert (=> d!1463771 e!2896191))

(declare-fun res!1950112 () Bool)

(assert (=> d!1463771 (=> (not res!1950112) (not e!2896191))))

(declare-fun lt!1806396 () ListMap!4473)

(assert (=> d!1463771 (= res!1950112 (contains!14929 lt!1806396 (_1!29721 lt!1806026)))))

(declare-fun lt!1806393 () List!51914)

(assert (=> d!1463771 (= lt!1806396 (ListMap!4474 lt!1806393))))

(declare-fun lt!1806394 () Unit!115633)

(declare-fun lt!1806395 () Unit!115633)

(assert (=> d!1463771 (= lt!1806394 lt!1806395)))

(assert (=> d!1463771 (= (getValueByKey!1568 lt!1806393 (_1!29721 lt!1806026)) (Some!11771 (_2!29721 lt!1806026)))))

(assert (=> d!1463771 (= lt!1806395 (lemmaContainsTupThenGetReturnValue!904 lt!1806393 (_1!29721 lt!1806026) (_2!29721 lt!1806026)))))

(assert (=> d!1463771 (= lt!1806393 (insertNoDuplicatedKeys!412 (toList!5150 (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790))) (_1!29721 lt!1806026) (_2!29721 lt!1806026)))))

(assert (=> d!1463771 (= (+!1952 (addToMapMapFromBucket!1061 lt!1806029 (ListMap!4474 Nil!51790)) lt!1806026) lt!1806396)))

(declare-fun b!4642664 () Bool)

(declare-fun res!1950111 () Bool)

(assert (=> b!4642664 (=> (not res!1950111) (not e!2896191))))

(assert (=> b!4642664 (= res!1950111 (= (getValueByKey!1568 (toList!5150 lt!1806396) (_1!29721 lt!1806026)) (Some!11771 (_2!29721 lt!1806026))))))

(declare-fun b!4642665 () Bool)

(assert (=> b!4642665 (= e!2896191 (contains!14931 (toList!5150 lt!1806396) lt!1806026))))

(assert (= (and d!1463771 res!1950112) b!4642664))

(assert (= (and b!4642664 res!1950111) b!4642665))

(declare-fun m!5504679 () Bool)

(assert (=> d!1463771 m!5504679))

(declare-fun m!5504681 () Bool)

(assert (=> d!1463771 m!5504681))

(declare-fun m!5504683 () Bool)

(assert (=> d!1463771 m!5504683))

(declare-fun m!5504685 () Bool)

(assert (=> d!1463771 m!5504685))

(declare-fun m!5504687 () Bool)

(assert (=> b!4642664 m!5504687))

(declare-fun m!5504689 () Bool)

(assert (=> b!4642665 m!5504689))

(assert (=> b!4642449 d!1463771))

(declare-fun bs!1034540 () Bool)

(declare-fun d!1463773 () Bool)

(assert (= bs!1034540 (and d!1463773 b!4642440)))

(declare-fun lambda!196714 () Int)

(assert (=> bs!1034540 (= lambda!196714 lambda!196604)))

(declare-fun bs!1034541 () Bool)

(assert (= bs!1034541 (and d!1463773 d!1463699)))

(assert (=> bs!1034541 (= lambda!196714 lambda!196611)))

(declare-fun bs!1034542 () Bool)

(assert (= bs!1034542 (and d!1463773 d!1463737)))

(assert (=> bs!1034542 (= lambda!196714 lambda!196686)))

(assert (=> d!1463773 (contains!14929 (extractMap!1658 (toList!5149 (ListLongMap!3720 lt!1806028))) key!4968)))

(declare-fun lt!1806402 () Unit!115633)

(declare-fun choose!31821 (ListLongMap!3719 K!13155 Hashable!5999) Unit!115633)

(assert (=> d!1463773 (= lt!1806402 (choose!31821 (ListLongMap!3720 lt!1806028) key!4968 hashF!1389))))

(assert (=> d!1463773 (forall!10955 (toList!5149 (ListLongMap!3720 lt!1806028)) lambda!196714)))

(assert (=> d!1463773 (= (lemmaListContainsThenExtractedMapContains!380 (ListLongMap!3720 lt!1806028) key!4968 hashF!1389) lt!1806402)))

(declare-fun bs!1034543 () Bool)

(assert (= bs!1034543 d!1463773))

(declare-fun m!5504699 () Bool)

(assert (=> bs!1034543 m!5504699))

(assert (=> bs!1034543 m!5504699))

(declare-fun m!5504701 () Bool)

(assert (=> bs!1034543 m!5504701))

(declare-fun m!5504703 () Bool)

(assert (=> bs!1034543 m!5504703))

(declare-fun m!5504705 () Bool)

(assert (=> bs!1034543 m!5504705))

(assert (=> b!4642449 d!1463773))

(declare-fun bs!1034544 () Bool)

(declare-fun b!4642670 () Bool)

(assert (= bs!1034544 (and b!4642670 b!4642588)))

(declare-fun lambda!196715 () Int)

(assert (=> bs!1034544 (= (= lt!1806005 lt!1806218) (= lambda!196715 lambda!196678))))

(declare-fun bs!1034545 () Bool)

(assert (= bs!1034545 (and b!4642670 b!4642605)))

(assert (=> bs!1034545 (= (= lt!1806005 lt!1806257) (= lambda!196715 lambda!196689))))

(declare-fun bs!1034546 () Bool)

(assert (= bs!1034546 (and b!4642670 b!4642653)))

(assert (=> bs!1034546 (= (= lt!1806005 lt!1806353) (= lambda!196715 lambda!196703))))

(assert (=> bs!1034544 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196677))))

(declare-fun bs!1034547 () Bool)

(assert (= bs!1034547 (and b!4642670 b!4642658)))

(assert (=> bs!1034547 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196706))))

(assert (=> bs!1034547 (= (= lt!1806005 lt!1806377) (= lambda!196715 lambda!196707))))

(declare-fun bs!1034548 () Bool)

(assert (= bs!1034548 (and b!4642670 b!4642591)))

(assert (=> bs!1034548 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196676))))

(declare-fun bs!1034549 () Bool)

(assert (= bs!1034549 (and b!4642670 d!1463759)))

(assert (=> bs!1034549 (= (= lt!1806005 lt!1806375) (= lambda!196715 lambda!196708))))

(assert (=> bs!1034546 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196702))))

(declare-fun bs!1034550 () Bool)

(assert (= bs!1034550 (and b!4642670 b!4642656)))

(assert (=> bs!1034550 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196701))))

(declare-fun bs!1034551 () Bool)

(assert (= bs!1034551 (and b!4642670 b!4642661)))

(assert (=> bs!1034551 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196705))))

(declare-fun bs!1034552 () Bool)

(assert (= bs!1034552 (and b!4642670 d!1463705)))

(assert (=> bs!1034552 (= (= lt!1806005 lt!1806216) (= lambda!196715 lambda!196679))))

(declare-fun bs!1034553 () Bool)

(assert (= bs!1034553 (and b!4642670 d!1463739)))

(assert (=> bs!1034553 (= (= lt!1806005 lt!1806255) (= lambda!196715 lambda!196690))))

(assert (=> bs!1034545 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196688))))

(declare-fun bs!1034554 () Bool)

(assert (= bs!1034554 (and b!4642670 b!4642608)))

(assert (=> bs!1034554 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196715 lambda!196687))))

(declare-fun bs!1034555 () Bool)

(assert (= bs!1034555 (and b!4642670 d!1463757)))

(assert (=> bs!1034555 (= (= lt!1806005 lt!1806351) (= lambda!196715 lambda!196704))))

(assert (=> b!4642670 true))

(declare-fun bs!1034556 () Bool)

(declare-fun b!4642667 () Bool)

(assert (= bs!1034556 (and b!4642667 b!4642588)))

(declare-fun lambda!196716 () Int)

(assert (=> bs!1034556 (= (= lt!1806005 lt!1806218) (= lambda!196716 lambda!196678))))

(declare-fun bs!1034557 () Bool)

(assert (= bs!1034557 (and b!4642667 b!4642605)))

(assert (=> bs!1034557 (= (= lt!1806005 lt!1806257) (= lambda!196716 lambda!196689))))

(declare-fun bs!1034558 () Bool)

(assert (= bs!1034558 (and b!4642667 b!4642653)))

(assert (=> bs!1034558 (= (= lt!1806005 lt!1806353) (= lambda!196716 lambda!196703))))

(assert (=> bs!1034556 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196677))))

(declare-fun bs!1034559 () Bool)

(assert (= bs!1034559 (and b!4642667 b!4642658)))

(assert (=> bs!1034559 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196706))))

(assert (=> bs!1034559 (= (= lt!1806005 lt!1806377) (= lambda!196716 lambda!196707))))

(declare-fun bs!1034560 () Bool)

(assert (= bs!1034560 (and b!4642667 b!4642670)))

(assert (=> bs!1034560 (= lambda!196716 lambda!196715)))

(declare-fun bs!1034561 () Bool)

(assert (= bs!1034561 (and b!4642667 b!4642591)))

(assert (=> bs!1034561 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196676))))

(declare-fun bs!1034562 () Bool)

(assert (= bs!1034562 (and b!4642667 d!1463759)))

(assert (=> bs!1034562 (= (= lt!1806005 lt!1806375) (= lambda!196716 lambda!196708))))

(assert (=> bs!1034558 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196702))))

(declare-fun bs!1034563 () Bool)

(assert (= bs!1034563 (and b!4642667 b!4642656)))

(assert (=> bs!1034563 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196701))))

(declare-fun bs!1034564 () Bool)

(assert (= bs!1034564 (and b!4642667 b!4642661)))

(assert (=> bs!1034564 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196705))))

(declare-fun bs!1034565 () Bool)

(assert (= bs!1034565 (and b!4642667 d!1463705)))

(assert (=> bs!1034565 (= (= lt!1806005 lt!1806216) (= lambda!196716 lambda!196679))))

(declare-fun bs!1034566 () Bool)

(assert (= bs!1034566 (and b!4642667 d!1463739)))

(assert (=> bs!1034566 (= (= lt!1806005 lt!1806255) (= lambda!196716 lambda!196690))))

(assert (=> bs!1034557 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196688))))

(declare-fun bs!1034567 () Bool)

(assert (= bs!1034567 (and b!4642667 b!4642608)))

(assert (=> bs!1034567 (= (= lt!1806005 (ListMap!4474 Nil!51790)) (= lambda!196716 lambda!196687))))

(declare-fun bs!1034568 () Bool)

(assert (= bs!1034568 (and b!4642667 d!1463757)))

(assert (=> bs!1034568 (= (= lt!1806005 lt!1806351) (= lambda!196716 lambda!196704))))

(assert (=> b!4642667 true))

(declare-fun lambda!196717 () Int)

(declare-fun lt!1806413 () ListMap!4473)

(assert (=> bs!1034556 (= (= lt!1806413 lt!1806218) (= lambda!196717 lambda!196678))))

(assert (=> bs!1034557 (= (= lt!1806413 lt!1806257) (= lambda!196717 lambda!196689))))

(assert (=> bs!1034558 (= (= lt!1806413 lt!1806353) (= lambda!196717 lambda!196703))))

(assert (=> bs!1034556 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196677))))

(assert (=> bs!1034559 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196706))))

(assert (=> bs!1034559 (= (= lt!1806413 lt!1806377) (= lambda!196717 lambda!196707))))

(assert (=> bs!1034560 (= (= lt!1806413 lt!1806005) (= lambda!196717 lambda!196715))))

(assert (=> bs!1034561 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196676))))

(assert (=> bs!1034562 (= (= lt!1806413 lt!1806375) (= lambda!196717 lambda!196708))))

(assert (=> bs!1034558 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196702))))

(assert (=> bs!1034563 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196701))))

(assert (=> bs!1034564 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196705))))

(assert (=> bs!1034565 (= (= lt!1806413 lt!1806216) (= lambda!196717 lambda!196679))))

(assert (=> bs!1034566 (= (= lt!1806413 lt!1806255) (= lambda!196717 lambda!196690))))

(assert (=> bs!1034557 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196688))))

(assert (=> b!4642667 (= (= lt!1806413 lt!1806005) (= lambda!196717 lambda!196716))))

(assert (=> bs!1034567 (= (= lt!1806413 (ListMap!4474 Nil!51790)) (= lambda!196717 lambda!196687))))

(assert (=> bs!1034568 (= (= lt!1806413 lt!1806351) (= lambda!196717 lambda!196704))))

(assert (=> b!4642667 true))

(declare-fun bs!1034569 () Bool)

(declare-fun d!1463777 () Bool)

(assert (= bs!1034569 (and d!1463777 b!4642588)))

(declare-fun lambda!196718 () Int)

(declare-fun lt!1806411 () ListMap!4473)

(assert (=> bs!1034569 (= (= lt!1806411 lt!1806218) (= lambda!196718 lambda!196678))))

(declare-fun bs!1034570 () Bool)

(assert (= bs!1034570 (and d!1463777 b!4642605)))

(assert (=> bs!1034570 (= (= lt!1806411 lt!1806257) (= lambda!196718 lambda!196689))))

(declare-fun bs!1034571 () Bool)

(assert (= bs!1034571 (and d!1463777 b!4642653)))

(assert (=> bs!1034571 (= (= lt!1806411 lt!1806353) (= lambda!196718 lambda!196703))))

(assert (=> bs!1034569 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196677))))

(declare-fun bs!1034572 () Bool)

(assert (= bs!1034572 (and d!1463777 b!4642658)))

(assert (=> bs!1034572 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196706))))

(assert (=> bs!1034572 (= (= lt!1806411 lt!1806377) (= lambda!196718 lambda!196707))))

(declare-fun bs!1034573 () Bool)

(assert (= bs!1034573 (and d!1463777 b!4642670)))

(assert (=> bs!1034573 (= (= lt!1806411 lt!1806005) (= lambda!196718 lambda!196715))))

(declare-fun bs!1034574 () Bool)

(assert (= bs!1034574 (and d!1463777 b!4642591)))

(assert (=> bs!1034574 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196676))))

(declare-fun bs!1034575 () Bool)

(assert (= bs!1034575 (and d!1463777 d!1463759)))

(assert (=> bs!1034575 (= (= lt!1806411 lt!1806375) (= lambda!196718 lambda!196708))))

(assert (=> bs!1034571 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196702))))

(declare-fun bs!1034576 () Bool)

(assert (= bs!1034576 (and d!1463777 b!4642656)))

(assert (=> bs!1034576 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196701))))

(declare-fun bs!1034577 () Bool)

(assert (= bs!1034577 (and d!1463777 d!1463705)))

(assert (=> bs!1034577 (= (= lt!1806411 lt!1806216) (= lambda!196718 lambda!196679))))

(declare-fun bs!1034578 () Bool)

(assert (= bs!1034578 (and d!1463777 d!1463739)))

(assert (=> bs!1034578 (= (= lt!1806411 lt!1806255) (= lambda!196718 lambda!196690))))

(assert (=> bs!1034570 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196688))))

(declare-fun bs!1034579 () Bool)

(assert (= bs!1034579 (and d!1463777 b!4642661)))

(assert (=> bs!1034579 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196705))))

(declare-fun bs!1034580 () Bool)

(assert (= bs!1034580 (and d!1463777 b!4642667)))

(assert (=> bs!1034580 (= (= lt!1806411 lt!1806413) (= lambda!196718 lambda!196717))))

(assert (=> bs!1034580 (= (= lt!1806411 lt!1806005) (= lambda!196718 lambda!196716))))

(declare-fun bs!1034581 () Bool)

(assert (= bs!1034581 (and d!1463777 b!4642608)))

(assert (=> bs!1034581 (= (= lt!1806411 (ListMap!4474 Nil!51790)) (= lambda!196718 lambda!196687))))

(declare-fun bs!1034582 () Bool)

(assert (= bs!1034582 (and d!1463777 d!1463757)))

(assert (=> bs!1034582 (= (= lt!1806411 lt!1806351) (= lambda!196718 lambda!196704))))

(assert (=> d!1463777 true))

(declare-fun b!4642666 () Bool)

(declare-fun res!1950114 () Bool)

(declare-fun e!2896194 () Bool)

(assert (=> b!4642666 (=> (not res!1950114) (not e!2896194))))

(assert (=> b!4642666 (= res!1950114 (forall!10956 (toList!5150 lt!1806005) lambda!196718))))

(declare-fun bm!324125 () Bool)

(declare-fun call!324130 () Bool)

(declare-fun c!794436 () Bool)

(assert (=> bm!324125 (= call!324130 (forall!10956 (toList!5150 lt!1806005) (ite c!794436 lambda!196715 lambda!196717)))))

(declare-fun bm!324126 () Bool)

(declare-fun call!324132 () Unit!115633)

(assert (=> bm!324126 (= call!324132 (lemmaContainsAllItsOwnKeys!570 lt!1806005))))

(declare-fun e!2896192 () ListMap!4473)

(assert (=> b!4642667 (= e!2896192 lt!1806413)))

(declare-fun lt!1806415 () ListMap!4473)

(assert (=> b!4642667 (= lt!1806415 (+!1952 lt!1806005 (h!57904 oldBucket!40)))))

(assert (=> b!4642667 (= lt!1806413 (addToMapMapFromBucket!1061 (t!359002 oldBucket!40) (+!1952 lt!1806005 (h!57904 oldBucket!40))))))

(declare-fun lt!1806404 () Unit!115633)

(assert (=> b!4642667 (= lt!1806404 call!324132)))

(declare-fun call!324131 () Bool)

(assert (=> b!4642667 call!324131))

(declare-fun lt!1806421 () Unit!115633)

(assert (=> b!4642667 (= lt!1806421 lt!1806404)))

(assert (=> b!4642667 (forall!10956 (toList!5150 lt!1806415) lambda!196717)))

(declare-fun lt!1806408 () Unit!115633)

(declare-fun Unit!115717 () Unit!115633)

(assert (=> b!4642667 (= lt!1806408 Unit!115717)))

(assert (=> b!4642667 (forall!10956 (t!359002 oldBucket!40) lambda!196717)))

(declare-fun lt!1806412 () Unit!115633)

(declare-fun Unit!115719 () Unit!115633)

(assert (=> b!4642667 (= lt!1806412 Unit!115719)))

(declare-fun lt!1806417 () Unit!115633)

(declare-fun Unit!115721 () Unit!115633)

(assert (=> b!4642667 (= lt!1806417 Unit!115721)))

(declare-fun lt!1806414 () Unit!115633)

(assert (=> b!4642667 (= lt!1806414 (forallContained!3180 (toList!5150 lt!1806415) lambda!196717 (h!57904 oldBucket!40)))))

(assert (=> b!4642667 (contains!14929 lt!1806415 (_1!29721 (h!57904 oldBucket!40)))))

(declare-fun lt!1806418 () Unit!115633)

(declare-fun Unit!115723 () Unit!115633)

(assert (=> b!4642667 (= lt!1806418 Unit!115723)))

(assert (=> b!4642667 (contains!14929 lt!1806413 (_1!29721 (h!57904 oldBucket!40)))))

(declare-fun lt!1806403 () Unit!115633)

(declare-fun Unit!115725 () Unit!115633)

(assert (=> b!4642667 (= lt!1806403 Unit!115725)))

(assert (=> b!4642667 (forall!10956 oldBucket!40 lambda!196717)))

(declare-fun lt!1806419 () Unit!115633)

(declare-fun Unit!115726 () Unit!115633)

(assert (=> b!4642667 (= lt!1806419 Unit!115726)))

(assert (=> b!4642667 (forall!10956 (toList!5150 lt!1806415) lambda!196717)))

(declare-fun lt!1806409 () Unit!115633)

(declare-fun Unit!115728 () Unit!115633)

(assert (=> b!4642667 (= lt!1806409 Unit!115728)))

(declare-fun lt!1806416 () Unit!115633)

(declare-fun Unit!115730 () Unit!115633)

(assert (=> b!4642667 (= lt!1806416 Unit!115730)))

(declare-fun lt!1806407 () Unit!115633)

(assert (=> b!4642667 (= lt!1806407 (addForallContainsKeyThenBeforeAdding!569 lt!1806005 lt!1806413 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> b!4642667 call!324130))

(declare-fun lt!1806423 () Unit!115633)

(assert (=> b!4642667 (= lt!1806423 lt!1806407)))

(assert (=> b!4642667 (forall!10956 (toList!5150 lt!1806005) lambda!196717)))

(declare-fun lt!1806422 () Unit!115633)

(declare-fun Unit!115733 () Unit!115633)

(assert (=> b!4642667 (= lt!1806422 Unit!115733)))

(declare-fun res!1950115 () Bool)

(assert (=> b!4642667 (= res!1950115 (forall!10956 oldBucket!40 lambda!196717))))

(declare-fun e!2896193 () Bool)

(assert (=> b!4642667 (=> (not res!1950115) (not e!2896193))))

(assert (=> b!4642667 e!2896193))

(declare-fun lt!1806405 () Unit!115633)

(declare-fun Unit!115734 () Unit!115633)

(assert (=> b!4642667 (= lt!1806405 Unit!115734)))

(assert (=> d!1463777 e!2896194))

(declare-fun res!1950113 () Bool)

(assert (=> d!1463777 (=> (not res!1950113) (not e!2896194))))

(assert (=> d!1463777 (= res!1950113 (forall!10956 oldBucket!40 lambda!196718))))

(assert (=> d!1463777 (= lt!1806411 e!2896192)))

(assert (=> d!1463777 (= c!794436 ((_ is Nil!51790) oldBucket!40))))

(assert (=> d!1463777 (noDuplicateKeys!1602 oldBucket!40)))

(assert (=> d!1463777 (= (addToMapMapFromBucket!1061 oldBucket!40 lt!1806005) lt!1806411)))

(declare-fun b!4642668 () Bool)

(assert (=> b!4642668 (= e!2896194 (invariantList!1268 (toList!5150 lt!1806411)))))

(declare-fun b!4642669 () Bool)

(assert (=> b!4642669 (= e!2896193 (forall!10956 (toList!5150 lt!1806005) lambda!196717))))

(declare-fun bm!324127 () Bool)

(assert (=> bm!324127 (= call!324131 (forall!10956 (toList!5150 lt!1806005) (ite c!794436 lambda!196715 lambda!196716)))))

(assert (=> b!4642670 (= e!2896192 lt!1806005)))

(declare-fun lt!1806406 () Unit!115633)

(assert (=> b!4642670 (= lt!1806406 call!324132)))

(assert (=> b!4642670 call!324130))

(declare-fun lt!1806420 () Unit!115633)

(assert (=> b!4642670 (= lt!1806420 lt!1806406)))

(assert (=> b!4642670 call!324131))

(declare-fun lt!1806410 () Unit!115633)

(declare-fun Unit!115737 () Unit!115633)

(assert (=> b!4642670 (= lt!1806410 Unit!115737)))

(assert (= (and d!1463777 c!794436) b!4642670))

(assert (= (and d!1463777 (not c!794436)) b!4642667))

(assert (= (and b!4642667 res!1950115) b!4642669))

(assert (= (or b!4642670 b!4642667) bm!324126))

(assert (= (or b!4642670 b!4642667) bm!324127))

(assert (= (or b!4642670 b!4642667) bm!324125))

(assert (= (and d!1463777 res!1950113) b!4642666))

(assert (= (and b!4642666 res!1950114) b!4642668))

(declare-fun m!5504707 () Bool)

(assert (=> bm!324127 m!5504707))

(declare-fun m!5504709 () Bool)

(assert (=> bm!324126 m!5504709))

(declare-fun m!5504711 () Bool)

(assert (=> d!1463777 m!5504711))

(assert (=> d!1463777 m!5504135))

(declare-fun m!5504713 () Bool)

(assert (=> bm!324125 m!5504713))

(declare-fun m!5504715 () Bool)

(assert (=> b!4642667 m!5504715))

(declare-fun m!5504717 () Bool)

(assert (=> b!4642667 m!5504717))

(assert (=> b!4642667 m!5504715))

(declare-fun m!5504719 () Bool)

(assert (=> b!4642667 m!5504719))

(declare-fun m!5504721 () Bool)

(assert (=> b!4642667 m!5504721))

(declare-fun m!5504723 () Bool)

(assert (=> b!4642667 m!5504723))

(declare-fun m!5504725 () Bool)

(assert (=> b!4642667 m!5504725))

(declare-fun m!5504727 () Bool)

(assert (=> b!4642667 m!5504727))

(declare-fun m!5504729 () Bool)

(assert (=> b!4642667 m!5504729))

(declare-fun m!5504731 () Bool)

(assert (=> b!4642667 m!5504731))

(assert (=> b!4642667 m!5504731))

(assert (=> b!4642667 m!5504719))

(declare-fun m!5504733 () Bool)

(assert (=> b!4642667 m!5504733))

(declare-fun m!5504735 () Bool)

(assert (=> b!4642668 m!5504735))

(declare-fun m!5504737 () Bool)

(assert (=> b!4642666 m!5504737))

(assert (=> b!4642669 m!5504729))

(assert (=> b!4642444 d!1463777))

(declare-fun bs!1034583 () Bool)

(declare-fun d!1463779 () Bool)

(assert (= bs!1034583 (and d!1463779 b!4642440)))

(declare-fun lambda!196719 () Int)

(assert (=> bs!1034583 (= lambda!196719 lambda!196604)))

(declare-fun bs!1034584 () Bool)

(assert (= bs!1034584 (and d!1463779 d!1463699)))

(assert (=> bs!1034584 (= lambda!196719 lambda!196611)))

(declare-fun bs!1034585 () Bool)

(assert (= bs!1034585 (and d!1463779 d!1463737)))

(assert (=> bs!1034585 (= lambda!196719 lambda!196686)))

(declare-fun bs!1034586 () Bool)

(assert (= bs!1034586 (and d!1463779 d!1463773)))

(assert (=> bs!1034586 (= lambda!196719 lambda!196714)))

(declare-fun lt!1806440 () ListMap!4473)

(assert (=> d!1463779 (invariantList!1268 (toList!5150 lt!1806440))))

(declare-fun e!2896207 () ListMap!4473)

(assert (=> d!1463779 (= lt!1806440 e!2896207)))

(declare-fun c!794443 () Bool)

(assert (=> d!1463779 (= c!794443 ((_ is Cons!51791) Nil!51791))))

(assert (=> d!1463779 (forall!10955 Nil!51791 lambda!196719)))

(assert (=> d!1463779 (= (extractMap!1658 Nil!51791) lt!1806440)))

(declare-fun b!4642689 () Bool)

(assert (=> b!4642689 (= e!2896207 (addToMapMapFromBucket!1061 (_2!29722 (h!57905 Nil!51791)) (extractMap!1658 (t!359003 Nil!51791))))))

(declare-fun b!4642690 () Bool)

(assert (=> b!4642690 (= e!2896207 (ListMap!4474 Nil!51790))))

(assert (= (and d!1463779 c!794443) b!4642689))

(assert (= (and d!1463779 (not c!794443)) b!4642690))

(declare-fun m!5504739 () Bool)

(assert (=> d!1463779 m!5504739))

(declare-fun m!5504741 () Bool)

(assert (=> d!1463779 m!5504741))

(declare-fun m!5504743 () Bool)

(assert (=> b!4642689 m!5504743))

(assert (=> b!4642689 m!5504743))

(declare-fun m!5504745 () Bool)

(assert (=> b!4642689 m!5504745))

(assert (=> b!4642444 d!1463779))

(declare-fun b!4642700 () Bool)

(declare-fun e!2896218 () Bool)

(declare-fun e!2896216 () Bool)

(assert (=> b!4642700 (= e!2896218 e!2896216)))

(declare-fun res!1950126 () Bool)

(assert (=> b!4642700 (=> (not res!1950126) (not e!2896216))))

(assert (=> b!4642700 (= res!1950126 (isDefined!9037 (getValueByKey!1568 (toList!5150 lt!1806021) key!4968)))))

(declare-fun b!4642701 () Bool)

(declare-fun e!2896217 () List!51916)

(assert (=> b!4642701 (= e!2896217 (keys!18313 lt!1806021))))

(declare-fun b!4642702 () Bool)

(assert (=> b!4642702 (= e!2896217 (getKeysList!718 (toList!5150 lt!1806021)))))

(declare-fun b!4642703 () Bool)

(declare-fun e!2896214 () Unit!115633)

(declare-fun lt!1806454 () Unit!115633)

(assert (=> b!4642703 (= e!2896214 lt!1806454)))

(declare-fun lt!1806456 () Unit!115633)

(assert (=> b!4642703 (= lt!1806456 (lemmaContainsKeyImpliesGetValueByKeyDefined!1470 (toList!5150 lt!1806021) key!4968))))

(assert (=> b!4642703 (isDefined!9037 (getValueByKey!1568 (toList!5150 lt!1806021) key!4968))))

(declare-fun lt!1806451 () Unit!115633)

(assert (=> b!4642703 (= lt!1806451 lt!1806456)))

(assert (=> b!4642703 (= lt!1806454 (lemmaInListThenGetKeysListContains!713 (toList!5150 lt!1806021) key!4968))))

(declare-fun call!324136 () Bool)

(assert (=> b!4642703 call!324136))

(declare-fun b!4642704 () Bool)

(declare-fun e!2896215 () Unit!115633)

(assert (=> b!4642704 (= e!2896214 e!2896215)))

(declare-fun c!794447 () Bool)

(assert (=> b!4642704 (= c!794447 call!324136)))

(declare-fun b!4642705 () Bool)

(declare-fun e!2896219 () Bool)

(assert (=> b!4642705 (= e!2896219 (not (contains!14932 (keys!18313 lt!1806021) key!4968)))))

(declare-fun b!4642706 () Bool)

(assert (=> b!4642706 (= e!2896216 (contains!14932 (keys!18313 lt!1806021) key!4968))))

(declare-fun bm!324131 () Bool)

(assert (=> bm!324131 (= call!324136 (contains!14932 e!2896217 key!4968))))

(declare-fun c!794449 () Bool)

(declare-fun c!794448 () Bool)

(assert (=> bm!324131 (= c!794449 c!794448)))

(declare-fun d!1463781 () Bool)

(assert (=> d!1463781 e!2896218))

(declare-fun res!1950127 () Bool)

(assert (=> d!1463781 (=> res!1950127 e!2896218)))

(assert (=> d!1463781 (= res!1950127 e!2896219)))

(declare-fun res!1950125 () Bool)

(assert (=> d!1463781 (=> (not res!1950125) (not e!2896219))))

(declare-fun lt!1806452 () Bool)

(assert (=> d!1463781 (= res!1950125 (not lt!1806452))))

(declare-fun lt!1806450 () Bool)

(assert (=> d!1463781 (= lt!1806452 lt!1806450)))

(declare-fun lt!1806455 () Unit!115633)

(assert (=> d!1463781 (= lt!1806455 e!2896214)))

(assert (=> d!1463781 (= c!794448 lt!1806450)))

(assert (=> d!1463781 (= lt!1806450 (containsKey!2650 (toList!5150 lt!1806021) key!4968))))

(assert (=> d!1463781 (= (contains!14929 lt!1806021 key!4968) lt!1806452)))

(declare-fun b!4642707 () Bool)

(assert (=> b!4642707 false))

(declare-fun lt!1806449 () Unit!115633)

(declare-fun lt!1806453 () Unit!115633)

(assert (=> b!4642707 (= lt!1806449 lt!1806453)))

(assert (=> b!4642707 (containsKey!2650 (toList!5150 lt!1806021) key!4968)))

(assert (=> b!4642707 (= lt!1806453 (lemmaInGetKeysListThenContainsKey!717 (toList!5150 lt!1806021) key!4968))))

(declare-fun Unit!115739 () Unit!115633)

(assert (=> b!4642707 (= e!2896215 Unit!115739)))

(declare-fun b!4642708 () Bool)

(declare-fun Unit!115740 () Unit!115633)

(assert (=> b!4642708 (= e!2896215 Unit!115740)))

(assert (= (and d!1463781 c!794448) b!4642703))

(assert (= (and d!1463781 (not c!794448)) b!4642704))

(assert (= (and b!4642704 c!794447) b!4642707))

(assert (= (and b!4642704 (not c!794447)) b!4642708))

(assert (= (or b!4642703 b!4642704) bm!324131))

(assert (= (and bm!324131 c!794449) b!4642702))

(assert (= (and bm!324131 (not c!794449)) b!4642701))

(assert (= (and d!1463781 res!1950125) b!4642705))

(assert (= (and d!1463781 (not res!1950127)) b!4642700))

(assert (= (and b!4642700 res!1950126) b!4642706))

(declare-fun m!5504767 () Bool)

(assert (=> d!1463781 m!5504767))

(assert (=> b!4642707 m!5504767))

(declare-fun m!5504769 () Bool)

(assert (=> b!4642707 m!5504769))

(declare-fun m!5504771 () Bool)

(assert (=> b!4642705 m!5504771))

(assert (=> b!4642705 m!5504771))

(declare-fun m!5504773 () Bool)

(assert (=> b!4642705 m!5504773))

(declare-fun m!5504775 () Bool)

(assert (=> bm!324131 m!5504775))

(assert (=> b!4642706 m!5504771))

(assert (=> b!4642706 m!5504771))

(assert (=> b!4642706 m!5504773))

(declare-fun m!5504777 () Bool)

(assert (=> b!4642700 m!5504777))

(assert (=> b!4642700 m!5504777))

(declare-fun m!5504779 () Bool)

(assert (=> b!4642700 m!5504779))

(declare-fun m!5504781 () Bool)

(assert (=> b!4642703 m!5504781))

(assert (=> b!4642703 m!5504777))

(assert (=> b!4642703 m!5504777))

(assert (=> b!4642703 m!5504779))

(declare-fun m!5504787 () Bool)

(assert (=> b!4642703 m!5504787))

(declare-fun m!5504791 () Bool)

(assert (=> b!4642702 m!5504791))

(assert (=> b!4642701 m!5504771))

(assert (=> b!4642455 d!1463781))

(declare-fun bs!1034587 () Bool)

(declare-fun d!1463785 () Bool)

(assert (= bs!1034587 (and d!1463785 d!1463699)))

(declare-fun lambda!196720 () Int)

(assert (=> bs!1034587 (= lambda!196720 lambda!196611)))

(declare-fun bs!1034588 () Bool)

(assert (= bs!1034588 (and d!1463785 d!1463737)))

(assert (=> bs!1034588 (= lambda!196720 lambda!196686)))

(declare-fun bs!1034589 () Bool)

(assert (= bs!1034589 (and d!1463785 d!1463773)))

(assert (=> bs!1034589 (= lambda!196720 lambda!196714)))

(declare-fun bs!1034590 () Bool)

(assert (= bs!1034590 (and d!1463785 b!4642440)))

(assert (=> bs!1034590 (= lambda!196720 lambda!196604)))

(declare-fun bs!1034591 () Bool)

(assert (= bs!1034591 (and d!1463785 d!1463779)))

(assert (=> bs!1034591 (= lambda!196720 lambda!196719)))

(declare-fun lt!1806461 () ListMap!4473)

(assert (=> d!1463785 (invariantList!1268 (toList!5150 lt!1806461))))

(declare-fun e!2896221 () ListMap!4473)

(assert (=> d!1463785 (= lt!1806461 e!2896221)))

(declare-fun c!794450 () Bool)

(assert (=> d!1463785 (= c!794450 ((_ is Cons!51791) lt!1806010))))

(assert (=> d!1463785 (forall!10955 lt!1806010 lambda!196720)))

(assert (=> d!1463785 (= (extractMap!1658 lt!1806010) lt!1806461)))

(declare-fun b!4642711 () Bool)

(assert (=> b!4642711 (= e!2896221 (addToMapMapFromBucket!1061 (_2!29722 (h!57905 lt!1806010)) (extractMap!1658 (t!359003 lt!1806010))))))

(declare-fun b!4642712 () Bool)

(assert (=> b!4642712 (= e!2896221 (ListMap!4474 Nil!51790))))

(assert (= (and d!1463785 c!794450) b!4642711))

(assert (= (and d!1463785 (not c!794450)) b!4642712))

(declare-fun m!5504799 () Bool)

(assert (=> d!1463785 m!5504799))

(declare-fun m!5504801 () Bool)

(assert (=> d!1463785 m!5504801))

(declare-fun m!5504803 () Bool)

(assert (=> b!4642711 m!5504803))

(assert (=> b!4642711 m!5504803))

(declare-fun m!5504805 () Bool)

(assert (=> b!4642711 m!5504805))

(assert (=> b!4642455 d!1463785))

(declare-fun d!1463789 () Bool)

(assert (=> d!1463789 (eq!893 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791)) (-!606 (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 (t!359002 oldBucket!40)) Nil!51791)) key!4968))))

(declare-fun lt!1806507 () Unit!115633)

(declare-fun choose!31822 ((_ BitVec 64) List!51914 List!51914 K!13155 Hashable!5999) Unit!115633)

(assert (=> d!1463789 (= lt!1806507 (choose!31822 hash!414 (t!359002 oldBucket!40) lt!1806029 key!4968 hashF!1389))))

(assert (=> d!1463789 (noDuplicateKeys!1602 (t!359002 oldBucket!40))))

(assert (=> d!1463789 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!158 hash!414 (t!359002 oldBucket!40) lt!1806029 key!4968 hashF!1389) lt!1806507)))

(declare-fun bs!1034655 () Bool)

(assert (= bs!1034655 d!1463789))

(assert (=> bs!1034655 m!5504161))

(declare-fun m!5504845 () Bool)

(assert (=> bs!1034655 m!5504845))

(declare-fun m!5504847 () Bool)

(assert (=> bs!1034655 m!5504847))

(declare-fun m!5504849 () Bool)

(assert (=> bs!1034655 m!5504849))

(declare-fun m!5504851 () Bool)

(assert (=> bs!1034655 m!5504851))

(declare-fun m!5504853 () Bool)

(assert (=> bs!1034655 m!5504853))

(assert (=> bs!1034655 m!5504845))

(assert (=> bs!1034655 m!5504853))

(assert (=> bs!1034655 m!5504161))

(assert (=> b!4642445 d!1463789))

(declare-fun d!1463795 () Bool)

(declare-fun e!2896233 () Bool)

(assert (=> d!1463795 e!2896233))

(declare-fun res!1950142 () Bool)

(assert (=> d!1463795 (=> (not res!1950142) (not e!2896233))))

(declare-fun lt!1806518 () ListMap!4473)

(assert (=> d!1463795 (= res!1950142 (not (contains!14929 lt!1806518 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!298 (List!51914 K!13155) List!51914)

(assert (=> d!1463795 (= lt!1806518 (ListMap!4474 (removePresrvNoDuplicatedKeys!298 (toList!5150 lt!1806003) key!4968)))))

(assert (=> d!1463795 (= (-!606 lt!1806003 key!4968) lt!1806518)))

(declare-fun b!4642731 () Bool)

(declare-fun content!8953 (List!51916) (InoxSet K!13155))

(assert (=> b!4642731 (= e!2896233 (= ((_ map and) (content!8953 (keys!18313 lt!1806003)) ((_ map not) (store ((as const (Array K!13155 Bool)) false) key!4968 true))) (content!8953 (keys!18313 lt!1806518))))))

(assert (= (and d!1463795 res!1950142) b!4642731))

(declare-fun m!5504909 () Bool)

(assert (=> d!1463795 m!5504909))

(declare-fun m!5504911 () Bool)

(assert (=> d!1463795 m!5504911))

(declare-fun m!5504913 () Bool)

(assert (=> b!4642731 m!5504913))

(assert (=> b!4642731 m!5504571))

(declare-fun m!5504915 () Bool)

(assert (=> b!4642731 m!5504915))

(assert (=> b!4642731 m!5504913))

(declare-fun m!5504917 () Bool)

(assert (=> b!4642731 m!5504917))

(declare-fun m!5504919 () Bool)

(assert (=> b!4642731 m!5504919))

(assert (=> b!4642731 m!5504571))

(assert (=> b!4642445 d!1463795))

(declare-fun d!1463805 () Bool)

(declare-fun e!2896234 () Bool)

(assert (=> d!1463805 e!2896234))

(declare-fun res!1950143 () Bool)

(assert (=> d!1463805 (=> (not res!1950143) (not e!2896234))))

(declare-fun lt!1806519 () ListMap!4473)

(assert (=> d!1463805 (= res!1950143 (not (contains!14929 lt!1806519 key!4968)))))

(assert (=> d!1463805 (= lt!1806519 (ListMap!4474 (removePresrvNoDuplicatedKeys!298 (toList!5150 lt!1806004) key!4968)))))

(assert (=> d!1463805 (= (-!606 lt!1806004 key!4968) lt!1806519)))

(declare-fun b!4642732 () Bool)

(assert (=> b!4642732 (= e!2896234 (= ((_ map and) (content!8953 (keys!18313 lt!1806004)) ((_ map not) (store ((as const (Array K!13155 Bool)) false) key!4968 true))) (content!8953 (keys!18313 lt!1806519))))))

(assert (= (and d!1463805 res!1950143) b!4642732))

(declare-fun m!5504921 () Bool)

(assert (=> d!1463805 m!5504921))

(declare-fun m!5504923 () Bool)

(assert (=> d!1463805 m!5504923))

(declare-fun m!5504925 () Bool)

(assert (=> b!4642732 m!5504925))

(declare-fun m!5504927 () Bool)

(assert (=> b!4642732 m!5504927))

(declare-fun m!5504929 () Bool)

(assert (=> b!4642732 m!5504929))

(assert (=> b!4642732 m!5504925))

(declare-fun m!5504931 () Bool)

(assert (=> b!4642732 m!5504931))

(assert (=> b!4642732 m!5504919))

(assert (=> b!4642732 m!5504927))

(assert (=> b!4642445 d!1463805))

(declare-fun d!1463807 () Bool)

(declare-fun e!2896235 () Bool)

(assert (=> d!1463807 e!2896235))

(declare-fun res!1950145 () Bool)

(assert (=> d!1463807 (=> (not res!1950145) (not e!2896235))))

(declare-fun lt!1806523 () ListMap!4473)

(assert (=> d!1463807 (= res!1950145 (contains!14929 lt!1806523 (_1!29721 (h!57904 oldBucket!40))))))

(declare-fun lt!1806520 () List!51914)

(assert (=> d!1463807 (= lt!1806523 (ListMap!4474 lt!1806520))))

(declare-fun lt!1806521 () Unit!115633)

(declare-fun lt!1806522 () Unit!115633)

(assert (=> d!1463807 (= lt!1806521 lt!1806522)))

(assert (=> d!1463807 (= (getValueByKey!1568 lt!1806520 (_1!29721 (h!57904 oldBucket!40))) (Some!11771 (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463807 (= lt!1806522 (lemmaContainsTupThenGetReturnValue!904 lt!1806520 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463807 (= lt!1806520 (insertNoDuplicatedKeys!412 (toList!5150 lt!1806008) (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463807 (= (+!1952 lt!1806008 (h!57904 oldBucket!40)) lt!1806523)))

(declare-fun b!4642733 () Bool)

(declare-fun res!1950144 () Bool)

(assert (=> b!4642733 (=> (not res!1950144) (not e!2896235))))

(assert (=> b!4642733 (= res!1950144 (= (getValueByKey!1568 (toList!5150 lt!1806523) (_1!29721 (h!57904 oldBucket!40))) (Some!11771 (_2!29721 (h!57904 oldBucket!40)))))))

(declare-fun b!4642734 () Bool)

(assert (=> b!4642734 (= e!2896235 (contains!14931 (toList!5150 lt!1806523) (h!57904 oldBucket!40)))))

(assert (= (and d!1463807 res!1950145) b!4642733))

(assert (= (and b!4642733 res!1950144) b!4642734))

(declare-fun m!5504933 () Bool)

(assert (=> d!1463807 m!5504933))

(declare-fun m!5504935 () Bool)

(assert (=> d!1463807 m!5504935))

(declare-fun m!5504937 () Bool)

(assert (=> d!1463807 m!5504937))

(declare-fun m!5504939 () Bool)

(assert (=> d!1463807 m!5504939))

(declare-fun m!5504941 () Bool)

(assert (=> b!4642733 m!5504941))

(declare-fun m!5504943 () Bool)

(assert (=> b!4642734 m!5504943))

(assert (=> b!4642445 d!1463807))

(declare-fun d!1463809 () Bool)

(assert (=> d!1463809 (= (-!606 (+!1952 lt!1806003 (tuple2!52855 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40)))) key!4968) (+!1952 (-!606 lt!1806003 key!4968) (tuple2!52855 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40)))))))

(declare-fun lt!1806531 () Unit!115633)

(declare-fun choose!31823 (ListMap!4473 K!13155 V!13401 K!13155) Unit!115633)

(assert (=> d!1463809 (= lt!1806531 (choose!31823 lt!1806003 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40)) key!4968))))

(assert (=> d!1463809 (not (= (_1!29721 (h!57904 oldBucket!40)) key!4968))))

(assert (=> d!1463809 (= (addRemoveCommutativeForDiffKeys!51 lt!1806003 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40)) key!4968) lt!1806531)))

(declare-fun bs!1034704 () Bool)

(assert (= bs!1034704 d!1463809))

(assert (=> bs!1034704 m!5504151))

(declare-fun m!5504975 () Bool)

(assert (=> bs!1034704 m!5504975))

(assert (=> bs!1034704 m!5504151))

(declare-fun m!5504977 () Bool)

(assert (=> bs!1034704 m!5504977))

(assert (=> bs!1034704 m!5504975))

(declare-fun m!5504979 () Bool)

(assert (=> bs!1034704 m!5504979))

(declare-fun m!5504981 () Bool)

(assert (=> bs!1034704 m!5504981))

(assert (=> b!4642445 d!1463809))

(declare-fun d!1463829 () Bool)

(declare-fun e!2896247 () Bool)

(assert (=> d!1463829 e!2896247))

(declare-fun res!1950156 () Bool)

(assert (=> d!1463829 (=> (not res!1950156) (not e!2896247))))

(declare-fun lt!1806532 () ListMap!4473)

(assert (=> d!1463829 (= res!1950156 (not (contains!14929 lt!1806532 key!4968)))))

(assert (=> d!1463829 (= lt!1806532 (ListMap!4474 (removePresrvNoDuplicatedKeys!298 (toList!5150 (+!1952 lt!1806003 (h!57904 oldBucket!40))) key!4968)))))

(assert (=> d!1463829 (= (-!606 (+!1952 lt!1806003 (h!57904 oldBucket!40)) key!4968) lt!1806532)))

(declare-fun b!4642753 () Bool)

(assert (=> b!4642753 (= e!2896247 (= ((_ map and) (content!8953 (keys!18313 (+!1952 lt!1806003 (h!57904 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13155 Bool)) false) key!4968 true))) (content!8953 (keys!18313 lt!1806532))))))

(assert (= (and d!1463829 res!1950156) b!4642753))

(declare-fun m!5504983 () Bool)

(assert (=> d!1463829 m!5504983))

(declare-fun m!5504985 () Bool)

(assert (=> d!1463829 m!5504985))

(declare-fun m!5504987 () Bool)

(assert (=> b!4642753 m!5504987))

(declare-fun m!5504989 () Bool)

(assert (=> b!4642753 m!5504989))

(declare-fun m!5504991 () Bool)

(assert (=> b!4642753 m!5504991))

(assert (=> b!4642753 m!5504987))

(declare-fun m!5504993 () Bool)

(assert (=> b!4642753 m!5504993))

(assert (=> b!4642753 m!5504919))

(assert (=> b!4642753 m!5504147))

(assert (=> b!4642753 m!5504989))

(assert (=> b!4642445 d!1463829))

(declare-fun d!1463831 () Bool)

(assert (=> d!1463831 (= (eq!893 lt!1806011 lt!1806008) (= (content!8952 (toList!5150 lt!1806011)) (content!8952 (toList!5150 lt!1806008))))))

(declare-fun bs!1034705 () Bool)

(assert (= bs!1034705 d!1463831))

(declare-fun m!5504995 () Bool)

(assert (=> bs!1034705 m!5504995))

(declare-fun m!5504997 () Bool)

(assert (=> bs!1034705 m!5504997))

(assert (=> b!4642445 d!1463831))

(declare-fun d!1463833 () Bool)

(declare-fun e!2896248 () Bool)

(assert (=> d!1463833 e!2896248))

(declare-fun res!1950158 () Bool)

(assert (=> d!1463833 (=> (not res!1950158) (not e!2896248))))

(declare-fun lt!1806536 () ListMap!4473)

(assert (=> d!1463833 (= res!1950158 (contains!14929 lt!1806536 (_1!29721 (h!57904 oldBucket!40))))))

(declare-fun lt!1806533 () List!51914)

(assert (=> d!1463833 (= lt!1806536 (ListMap!4474 lt!1806533))))

(declare-fun lt!1806534 () Unit!115633)

(declare-fun lt!1806535 () Unit!115633)

(assert (=> d!1463833 (= lt!1806534 lt!1806535)))

(assert (=> d!1463833 (= (getValueByKey!1568 lt!1806533 (_1!29721 (h!57904 oldBucket!40))) (Some!11771 (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463833 (= lt!1806535 (lemmaContainsTupThenGetReturnValue!904 lt!1806533 (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463833 (= lt!1806533 (insertNoDuplicatedKeys!412 (toList!5150 lt!1806003) (_1!29721 (h!57904 oldBucket!40)) (_2!29721 (h!57904 oldBucket!40))))))

(assert (=> d!1463833 (= (+!1952 lt!1806003 (h!57904 oldBucket!40)) lt!1806536)))

(declare-fun b!4642754 () Bool)

(declare-fun res!1950157 () Bool)

(assert (=> b!4642754 (=> (not res!1950157) (not e!2896248))))

(assert (=> b!4642754 (= res!1950157 (= (getValueByKey!1568 (toList!5150 lt!1806536) (_1!29721 (h!57904 oldBucket!40))) (Some!11771 (_2!29721 (h!57904 oldBucket!40)))))))

(declare-fun b!4642755 () Bool)

(assert (=> b!4642755 (= e!2896248 (contains!14931 (toList!5150 lt!1806536) (h!57904 oldBucket!40)))))

(assert (= (and d!1463833 res!1950158) b!4642754))

(assert (= (and b!4642754 res!1950157) b!4642755))

(declare-fun m!5504999 () Bool)

(assert (=> d!1463833 m!5504999))

(declare-fun m!5505001 () Bool)

(assert (=> d!1463833 m!5505001))

(declare-fun m!5505003 () Bool)

(assert (=> d!1463833 m!5505003))

(declare-fun m!5505005 () Bool)

(assert (=> d!1463833 m!5505005))

(declare-fun m!5505007 () Bool)

(assert (=> b!4642754 m!5505007))

(declare-fun m!5505009 () Bool)

(assert (=> b!4642755 m!5505009))

(assert (=> b!4642445 d!1463833))

(declare-fun d!1463835 () Bool)

(declare-fun res!1950163 () Bool)

(declare-fun e!2896253 () Bool)

(assert (=> d!1463835 (=> res!1950163 e!2896253)))

(assert (=> d!1463835 (= res!1950163 (not ((_ is Cons!51790) newBucket!224)))))

(assert (=> d!1463835 (= (noDuplicateKeys!1602 newBucket!224) e!2896253)))

(declare-fun b!4642760 () Bool)

(declare-fun e!2896254 () Bool)

(assert (=> b!4642760 (= e!2896253 e!2896254)))

(declare-fun res!1950164 () Bool)

(assert (=> b!4642760 (=> (not res!1950164) (not e!2896254))))

(assert (=> b!4642760 (= res!1950164 (not (containsKey!2648 (t!359002 newBucket!224) (_1!29721 (h!57904 newBucket!224)))))))

(declare-fun b!4642761 () Bool)

(assert (=> b!4642761 (= e!2896254 (noDuplicateKeys!1602 (t!359002 newBucket!224)))))

(assert (= (and d!1463835 (not res!1950163)) b!4642760))

(assert (= (and b!4642760 res!1950164) b!4642761))

(declare-fun m!5505011 () Bool)

(assert (=> b!4642760 m!5505011))

(declare-fun m!5505013 () Bool)

(assert (=> b!4642761 m!5505013))

(assert (=> b!4642456 d!1463835))

(declare-fun b!4642762 () Bool)

(declare-fun e!2896256 () List!51914)

(assert (=> b!4642762 (= e!2896256 (t!359002 oldBucket!40))))

(declare-fun b!4642765 () Bool)

(declare-fun e!2896255 () List!51914)

(assert (=> b!4642765 (= e!2896255 Nil!51790)))

(declare-fun b!4642763 () Bool)

(assert (=> b!4642763 (= e!2896256 e!2896255)))

(declare-fun c!794457 () Bool)

(assert (=> b!4642763 (= c!794457 ((_ is Cons!51790) oldBucket!40))))

(declare-fun b!4642764 () Bool)

(assert (=> b!4642764 (= e!2896255 (Cons!51790 (h!57904 oldBucket!40) (removePairForKey!1225 (t!359002 oldBucket!40) key!4968)))))

(declare-fun d!1463837 () Bool)

(declare-fun lt!1806537 () List!51914)

(assert (=> d!1463837 (not (containsKey!2648 lt!1806537 key!4968))))

(assert (=> d!1463837 (= lt!1806537 e!2896256)))

(declare-fun c!794456 () Bool)

(assert (=> d!1463837 (= c!794456 (and ((_ is Cons!51790) oldBucket!40) (= (_1!29721 (h!57904 oldBucket!40)) key!4968)))))

(assert (=> d!1463837 (noDuplicateKeys!1602 oldBucket!40)))

(assert (=> d!1463837 (= (removePairForKey!1225 oldBucket!40 key!4968) lt!1806537)))

(assert (= (and d!1463837 c!794456) b!4642762))

(assert (= (and d!1463837 (not c!794456)) b!4642763))

(assert (= (and b!4642763 c!794457) b!4642764))

(assert (= (and b!4642763 (not c!794457)) b!4642765))

(assert (=> b!4642764 m!5504165))

(declare-fun m!5505015 () Bool)

(assert (=> d!1463837 m!5505015))

(assert (=> d!1463837 m!5504135))

(assert (=> b!4642446 d!1463837))

(declare-fun d!1463839 () Bool)

(declare-fun res!1950165 () Bool)

(declare-fun e!2896257 () Bool)

(assert (=> d!1463839 (=> res!1950165 e!2896257)))

(assert (=> d!1463839 (= res!1950165 (not ((_ is Cons!51790) oldBucket!40)))))

(assert (=> d!1463839 (= (noDuplicateKeys!1602 oldBucket!40) e!2896257)))

(declare-fun b!4642766 () Bool)

(declare-fun e!2896258 () Bool)

(assert (=> b!4642766 (= e!2896257 e!2896258)))

(declare-fun res!1950166 () Bool)

(assert (=> b!4642766 (=> (not res!1950166) (not e!2896258))))

(assert (=> b!4642766 (= res!1950166 (not (containsKey!2648 (t!359002 oldBucket!40) (_1!29721 (h!57904 oldBucket!40)))))))

(declare-fun b!4642767 () Bool)

(assert (=> b!4642767 (= e!2896258 (noDuplicateKeys!1602 (t!359002 oldBucket!40)))))

(assert (= (and d!1463839 (not res!1950165)) b!4642766))

(assert (= (and b!4642766 res!1950166) b!4642767))

(declare-fun m!5505017 () Bool)

(assert (=> b!4642766 m!5505017))

(assert (=> b!4642767 m!5504849))

(assert (=> start!466940 d!1463839))

(declare-fun d!1463841 () Bool)

(assert (=> d!1463841 (= (eq!893 lt!1806013 (+!1952 lt!1806011 lt!1806026)) (= (content!8952 (toList!5150 lt!1806013)) (content!8952 (toList!5150 (+!1952 lt!1806011 lt!1806026)))))))

(declare-fun bs!1034706 () Bool)

(assert (= bs!1034706 d!1463841))

(declare-fun m!5505019 () Bool)

(assert (=> bs!1034706 m!5505019))

(declare-fun m!5505021 () Bool)

(assert (=> bs!1034706 m!5505021))

(assert (=> b!4642453 d!1463841))

(declare-fun d!1463843 () Bool)

(declare-fun e!2896259 () Bool)

(assert (=> d!1463843 e!2896259))

(declare-fun res!1950168 () Bool)

(assert (=> d!1463843 (=> (not res!1950168) (not e!2896259))))

(declare-fun lt!1806541 () ListMap!4473)

(assert (=> d!1463843 (= res!1950168 (contains!14929 lt!1806541 (_1!29721 lt!1806026)))))

(declare-fun lt!1806538 () List!51914)

(assert (=> d!1463843 (= lt!1806541 (ListMap!4474 lt!1806538))))

(declare-fun lt!1806539 () Unit!115633)

(declare-fun lt!1806540 () Unit!115633)

(assert (=> d!1463843 (= lt!1806539 lt!1806540)))

(assert (=> d!1463843 (= (getValueByKey!1568 lt!1806538 (_1!29721 lt!1806026)) (Some!11771 (_2!29721 lt!1806026)))))

(assert (=> d!1463843 (= lt!1806540 (lemmaContainsTupThenGetReturnValue!904 lt!1806538 (_1!29721 lt!1806026) (_2!29721 lt!1806026)))))

(assert (=> d!1463843 (= lt!1806538 (insertNoDuplicatedKeys!412 (toList!5150 lt!1806011) (_1!29721 lt!1806026) (_2!29721 lt!1806026)))))

(assert (=> d!1463843 (= (+!1952 lt!1806011 lt!1806026) lt!1806541)))

(declare-fun b!4642768 () Bool)

(declare-fun res!1950167 () Bool)

(assert (=> b!4642768 (=> (not res!1950167) (not e!2896259))))

(assert (=> b!4642768 (= res!1950167 (= (getValueByKey!1568 (toList!5150 lt!1806541) (_1!29721 lt!1806026)) (Some!11771 (_2!29721 lt!1806026))))))

(declare-fun b!4642769 () Bool)

(assert (=> b!4642769 (= e!2896259 (contains!14931 (toList!5150 lt!1806541) lt!1806026))))

(assert (= (and d!1463843 res!1950168) b!4642768))

(assert (= (and b!4642768 res!1950167) b!4642769))

(declare-fun m!5505023 () Bool)

(assert (=> d!1463843 m!5505023))

(declare-fun m!5505025 () Bool)

(assert (=> d!1463843 m!5505025))

(declare-fun m!5505027 () Bool)

(assert (=> d!1463843 m!5505027))

(declare-fun m!5505029 () Bool)

(assert (=> d!1463843 m!5505029))

(declare-fun m!5505031 () Bool)

(assert (=> b!4642768 m!5505031))

(declare-fun m!5505033 () Bool)

(assert (=> b!4642769 m!5505033))

(assert (=> b!4642453 d!1463843))

(declare-fun bs!1034707 () Bool)

(declare-fun d!1463845 () Bool)

(assert (= bs!1034707 (and d!1463845 d!1463699)))

(declare-fun lambda!196734 () Int)

(assert (=> bs!1034707 (= lambda!196734 lambda!196611)))

(declare-fun bs!1034708 () Bool)

(assert (= bs!1034708 (and d!1463845 d!1463773)))

(assert (=> bs!1034708 (= lambda!196734 lambda!196714)))

(declare-fun bs!1034709 () Bool)

(assert (= bs!1034709 (and d!1463845 b!4642440)))

(assert (=> bs!1034709 (= lambda!196734 lambda!196604)))

(declare-fun bs!1034710 () Bool)

(assert (= bs!1034710 (and d!1463845 d!1463779)))

(assert (=> bs!1034710 (= lambda!196734 lambda!196719)))

(declare-fun bs!1034711 () Bool)

(assert (= bs!1034711 (and d!1463845 d!1463785)))

(assert (=> bs!1034711 (= lambda!196734 lambda!196720)))

(declare-fun bs!1034712 () Bool)

(assert (= bs!1034712 (and d!1463845 d!1463737)))

(assert (=> bs!1034712 (= lambda!196734 lambda!196686)))

(declare-fun lt!1806542 () ListMap!4473)

(assert (=> d!1463845 (invariantList!1268 (toList!5150 lt!1806542))))

(declare-fun e!2896260 () ListMap!4473)

(assert (=> d!1463845 (= lt!1806542 e!2896260)))

(declare-fun c!794458 () Bool)

(assert (=> d!1463845 (= c!794458 ((_ is Cons!51791) (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791)))))

(assert (=> d!1463845 (forall!10955 (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791) lambda!196734)))

(assert (=> d!1463845 (= (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791)) lt!1806542)))

(declare-fun b!4642770 () Bool)

(assert (=> b!4642770 (= e!2896260 (addToMapMapFromBucket!1061 (_2!29722 (h!57905 (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791))) (extractMap!1658 (t!359003 (Cons!51791 (tuple2!52857 hash!414 lt!1806029) Nil!51791)))))))

(declare-fun b!4642771 () Bool)

(assert (=> b!4642771 (= e!2896260 (ListMap!4474 Nil!51790))))

(assert (= (and d!1463845 c!794458) b!4642770))

(assert (= (and d!1463845 (not c!794458)) b!4642771))

(declare-fun m!5505035 () Bool)

(assert (=> d!1463845 m!5505035))

(declare-fun m!5505037 () Bool)

(assert (=> d!1463845 m!5505037))

(declare-fun m!5505039 () Bool)

(assert (=> b!4642770 m!5505039))

(assert (=> b!4642770 m!5505039))

(declare-fun m!5505041 () Bool)

(assert (=> b!4642770 m!5505041))

(assert (=> b!4642453 d!1463845))

(declare-fun bs!1034713 () Bool)

(declare-fun d!1463847 () Bool)

(assert (= bs!1034713 (and d!1463847 d!1463699)))

(declare-fun lambda!196735 () Int)

(assert (=> bs!1034713 (= lambda!196735 lambda!196611)))

(declare-fun bs!1034714 () Bool)

(assert (= bs!1034714 (and d!1463847 d!1463773)))

(assert (=> bs!1034714 (= lambda!196735 lambda!196714)))

(declare-fun bs!1034715 () Bool)

(assert (= bs!1034715 (and d!1463847 d!1463845)))

(assert (=> bs!1034715 (= lambda!196735 lambda!196734)))

(declare-fun bs!1034716 () Bool)

(assert (= bs!1034716 (and d!1463847 b!4642440)))

(assert (=> bs!1034716 (= lambda!196735 lambda!196604)))

(declare-fun bs!1034717 () Bool)

(assert (= bs!1034717 (and d!1463847 d!1463779)))

(assert (=> bs!1034717 (= lambda!196735 lambda!196719)))

(declare-fun bs!1034718 () Bool)

(assert (= bs!1034718 (and d!1463847 d!1463785)))

(assert (=> bs!1034718 (= lambda!196735 lambda!196720)))

(declare-fun bs!1034719 () Bool)

(assert (= bs!1034719 (and d!1463847 d!1463737)))

(assert (=> bs!1034719 (= lambda!196735 lambda!196686)))

(declare-fun lt!1806543 () ListMap!4473)

(assert (=> d!1463847 (invariantList!1268 (toList!5150 lt!1806543))))

(declare-fun e!2896261 () ListMap!4473)

(assert (=> d!1463847 (= lt!1806543 e!2896261)))

(declare-fun c!794459 () Bool)

(assert (=> d!1463847 (= c!794459 ((_ is Cons!51791) (Cons!51791 (tuple2!52857 hash!414 newBucket!224) Nil!51791)))))

(assert (=> d!1463847 (forall!10955 (Cons!51791 (tuple2!52857 hash!414 newBucket!224) Nil!51791) lambda!196735)))

(assert (=> d!1463847 (= (extractMap!1658 (Cons!51791 (tuple2!52857 hash!414 newBucket!224) Nil!51791)) lt!1806543)))

(declare-fun b!4642772 () Bool)

(assert (=> b!4642772 (= e!2896261 (addToMapMapFromBucket!1061 (_2!29722 (h!57905 (Cons!51791 (tuple2!52857 hash!414 newBucket!224) Nil!51791))) (extractMap!1658 (t!359003 (Cons!51791 (tuple2!52857 hash!414 newBucket!224) Nil!51791)))))))

(declare-fun b!4642773 () Bool)

(assert (=> b!4642773 (= e!2896261 (ListMap!4474 Nil!51790))))

(assert (= (and d!1463847 c!794459) b!4642772))

(assert (= (and d!1463847 (not c!794459)) b!4642773))

(declare-fun m!5505043 () Bool)

(assert (=> d!1463847 m!5505043))

(declare-fun m!5505045 () Bool)

(assert (=> d!1463847 m!5505045))

(declare-fun m!5505047 () Bool)

(assert (=> b!4642772 m!5505047))

(assert (=> b!4642772 m!5505047))

(declare-fun m!5505049 () Bool)

(assert (=> b!4642772 m!5505049))

(assert (=> b!4642453 d!1463847))

(declare-fun bs!1034720 () Bool)

(declare-fun d!1463849 () Bool)

(assert (= bs!1034720 (and d!1463849 b!4642588)))

(declare-fun lambda!196738 () Int)

(assert (=> bs!1034720 (not (= lambda!196738 lambda!196678))))

(declare-fun bs!1034721 () Bool)

(assert (= bs!1034721 (and d!1463849 b!4642605)))

(assert (=> bs!1034721 (not (= lambda!196738 lambda!196689))))

(declare-fun bs!1034722 () Bool)

(assert (= bs!1034722 (and d!1463849 b!4642653)))

(assert (=> bs!1034722 (not (= lambda!196738 lambda!196703))))

(assert (=> bs!1034720 (not (= lambda!196738 lambda!196677))))

(declare-fun bs!1034723 () Bool)

(assert (= bs!1034723 (and d!1463849 b!4642658)))

(assert (=> bs!1034723 (not (= lambda!196738 lambda!196706))))

(assert (=> bs!1034723 (not (= lambda!196738 lambda!196707))))

(declare-fun bs!1034724 () Bool)

(assert (= bs!1034724 (and d!1463849 b!4642670)))

(assert (=> bs!1034724 (not (= lambda!196738 lambda!196715))))

(declare-fun bs!1034725 () Bool)

(assert (= bs!1034725 (and d!1463849 b!4642591)))

(assert (=> bs!1034725 (not (= lambda!196738 lambda!196676))))

(declare-fun bs!1034726 () Bool)

(assert (= bs!1034726 (and d!1463849 d!1463759)))

(assert (=> bs!1034726 (not (= lambda!196738 lambda!196708))))

(assert (=> bs!1034722 (not (= lambda!196738 lambda!196702))))

(declare-fun bs!1034727 () Bool)

(assert (= bs!1034727 (and d!1463849 b!4642656)))

(assert (=> bs!1034727 (not (= lambda!196738 lambda!196701))))

(declare-fun bs!1034728 () Bool)

(assert (= bs!1034728 (and d!1463849 d!1463705)))

(assert (=> bs!1034728 (not (= lambda!196738 lambda!196679))))

(assert (=> bs!1034721 (not (= lambda!196738 lambda!196688))))

(declare-fun bs!1034729 () Bool)

(assert (= bs!1034729 (and d!1463849 b!4642661)))

(assert (=> bs!1034729 (not (= lambda!196738 lambda!196705))))

(declare-fun bs!1034730 () Bool)

(assert (= bs!1034730 (and d!1463849 b!4642667)))

(assert (=> bs!1034730 (not (= lambda!196738 lambda!196717))))

(declare-fun bs!1034731 () Bool)

(assert (= bs!1034731 (and d!1463849 d!1463777)))

(assert (=> bs!1034731 (not (= lambda!196738 lambda!196718))))

(declare-fun bs!1034732 () Bool)

(assert (= bs!1034732 (and d!1463849 d!1463739)))

(assert (=> bs!1034732 (not (= lambda!196738 lambda!196690))))

(assert (=> bs!1034730 (not (= lambda!196738 lambda!196716))))

(declare-fun bs!1034733 () Bool)

(assert (= bs!1034733 (and d!1463849 b!4642608)))

(assert (=> bs!1034733 (not (= lambda!196738 lambda!196687))))

(declare-fun bs!1034734 () Bool)

(assert (= bs!1034734 (and d!1463849 d!1463757)))

(assert (=> bs!1034734 (not (= lambda!196738 lambda!196704))))

(assert (=> d!1463849 true))

(assert (=> d!1463849 true))

(assert (=> d!1463849 (= (allKeysSameHash!1456 oldBucket!40 hash!414 hashF!1389) (forall!10956 oldBucket!40 lambda!196738))))

(declare-fun bs!1034735 () Bool)

(assert (= bs!1034735 d!1463849))

(declare-fun m!5505051 () Bool)

(assert (=> bs!1034735 m!5505051))

(assert (=> b!4642443 d!1463849))

(declare-fun d!1463851 () Bool)

(assert (=> d!1463851 (= (eq!893 lt!1806002 lt!1806018) (= (content!8952 (toList!5150 lt!1806002)) (content!8952 (toList!5150 lt!1806018))))))

(declare-fun bs!1034736 () Bool)

(assert (= bs!1034736 d!1463851))

(declare-fun m!5505053 () Bool)

(assert (=> bs!1034736 m!5505053))

(declare-fun m!5505055 () Bool)

(assert (=> bs!1034736 m!5505055))

(assert (=> b!4642454 d!1463851))

(declare-fun d!1463853 () Bool)

(assert (=> d!1463853 (= (eq!893 lt!1806027 lt!1806002) (= (content!8952 (toList!5150 lt!1806027)) (content!8952 (toList!5150 lt!1806002))))))

(declare-fun bs!1034737 () Bool)

(assert (= bs!1034737 d!1463853))

(declare-fun m!5505057 () Bool)

(assert (=> bs!1034737 m!5505057))

(assert (=> bs!1034737 m!5505053))

(assert (=> b!4642454 d!1463853))

(declare-fun d!1463855 () Bool)

(declare-fun e!2896262 () Bool)

(assert (=> d!1463855 e!2896262))

(declare-fun res!1950169 () Bool)

(assert (=> d!1463855 (=> (not res!1950169) (not e!2896262))))

(declare-fun lt!1806546 () ListMap!4473)

(assert (=> d!1463855 (= res!1950169 (not (contains!14929 lt!1806546 key!4968)))))

(assert (=> d!1463855 (= lt!1806546 (ListMap!4474 (removePresrvNoDuplicatedKeys!298 (toList!5150 lt!1806021) key!4968)))))

(assert (=> d!1463855 (= (-!606 lt!1806021 key!4968) lt!1806546)))

(declare-fun b!4642778 () Bool)

(assert (=> b!4642778 (= e!2896262 (= ((_ map and) (content!8953 (keys!18313 lt!1806021)) ((_ map not) (store ((as const (Array K!13155 Bool)) false) key!4968 true))) (content!8953 (keys!18313 lt!1806546))))))

(assert (= (and d!1463855 res!1950169) b!4642778))

(declare-fun m!5505059 () Bool)

(assert (=> d!1463855 m!5505059))

(declare-fun m!5505061 () Bool)

(assert (=> d!1463855 m!5505061))

(declare-fun m!5505063 () Bool)

(assert (=> b!4642778 m!5505063))

(assert (=> b!4642778 m!5504771))

(declare-fun m!5505065 () Bool)

(assert (=> b!4642778 m!5505065))

(assert (=> b!4642778 m!5505063))

(declare-fun m!5505067 () Bool)

(assert (=> b!4642778 m!5505067))

(assert (=> b!4642778 m!5504919))

(assert (=> b!4642778 m!5504771))

(assert (=> b!4642454 d!1463855))

(declare-fun d!1463857 () Bool)

(assert (=> d!1463857 (eq!893 (-!606 lt!1806004 key!4968) (-!606 lt!1806021 key!4968))))

(declare-fun lt!1806550 () Unit!115633)

(declare-fun choose!31824 (ListMap!4473 ListMap!4473 K!13155) Unit!115633)

(assert (=> d!1463857 (= lt!1806550 (choose!31824 lt!1806004 lt!1806021 key!4968))))

(assert (=> d!1463857 (eq!893 lt!1806004 lt!1806021)))

(assert (=> d!1463857 (= (lemmaRemovePreservesEq!54 lt!1806004 lt!1806021 key!4968) lt!1806550)))

(declare-fun bs!1034739 () Bool)

(assert (= bs!1034739 d!1463857))

(declare-fun m!5505077 () Bool)

(assert (=> bs!1034739 m!5505077))

(declare-fun m!5505079 () Bool)

(assert (=> bs!1034739 m!5505079))

(assert (=> bs!1034739 m!5504143))

(assert (=> bs!1034739 m!5504207))

(declare-fun m!5505081 () Bool)

(assert (=> bs!1034739 m!5505081))

(assert (=> bs!1034739 m!5504143))

(assert (=> bs!1034739 m!5504207))

(assert (=> b!4642454 d!1463857))

(declare-fun d!1463861 () Bool)

(declare-fun hash!3704 (Hashable!5999 K!13155) (_ BitVec 64))

(assert (=> d!1463861 (= (hash!3701 hashF!1389 key!4968) (hash!3704 hashF!1389 key!4968))))

(declare-fun bs!1034740 () Bool)

(assert (= bs!1034740 d!1463861))

(declare-fun m!5505083 () Bool)

(assert (=> bs!1034740 m!5505083))

(assert (=> b!4642439 d!1463861))

(declare-fun d!1463863 () Bool)

(assert (=> d!1463863 (contains!14927 (toList!5149 lt!1806017) (tuple2!52857 lt!1806022 lt!1806015))))

(declare-fun lt!1806556 () Unit!115633)

(declare-fun choose!31825 (ListLongMap!3719 (_ BitVec 64) List!51914) Unit!115633)

(assert (=> d!1463863 (= lt!1806556 (choose!31825 lt!1806017 lt!1806022 lt!1806015))))

(assert (=> d!1463863 (contains!14928 lt!1806017 lt!1806022)))

(assert (=> d!1463863 (= (lemmaGetValueImpliesTupleContained!167 lt!1806017 lt!1806022 lt!1806015) lt!1806556)))

(declare-fun bs!1034742 () Bool)

(assert (= bs!1034742 d!1463863))

(declare-fun m!5505093 () Bool)

(assert (=> bs!1034742 m!5505093))

(declare-fun m!5505095 () Bool)

(assert (=> bs!1034742 m!5505095))

(assert (=> bs!1034742 m!5504179))

(assert (=> b!4642440 d!1463863))

(declare-fun d!1463867 () Bool)

(declare-fun isEmpty!28984 (Option!11770) Bool)

(assert (=> d!1463867 (= (isDefined!9035 (getPair!362 lt!1806015 key!4968)) (not (isEmpty!28984 (getPair!362 lt!1806015 key!4968))))))

(declare-fun bs!1034743 () Bool)

(assert (= bs!1034743 d!1463867))

(assert (=> bs!1034743 m!5504175))

(declare-fun m!5505097 () Bool)

(assert (=> bs!1034743 m!5505097))

(assert (=> b!4642440 d!1463867))

(declare-fun b!4642800 () Bool)

(declare-fun e!2896279 () Bool)

(assert (=> b!4642800 (= e!2896279 (not (containsKey!2648 lt!1806015 key!4968)))))

(declare-fun b!4642801 () Bool)

(declare-fun e!2896281 () Bool)

(declare-fun e!2896278 () Bool)

(assert (=> b!4642801 (= e!2896281 e!2896278)))

(declare-fun res!1950183 () Bool)

(assert (=> b!4642801 (=> (not res!1950183) (not e!2896278))))

(declare-fun lt!1806563 () Option!11770)

(assert (=> b!4642801 (= res!1950183 (isDefined!9035 lt!1806563))))

(declare-fun b!4642802 () Bool)

(declare-fun get!17233 (Option!11770) tuple2!52854)

(assert (=> b!4642802 (= e!2896278 (contains!14931 lt!1806015 (get!17233 lt!1806563)))))

(declare-fun b!4642804 () Bool)

(declare-fun res!1950182 () Bool)

(assert (=> b!4642804 (=> (not res!1950182) (not e!2896278))))

(assert (=> b!4642804 (= res!1950182 (= (_1!29721 (get!17233 lt!1806563)) key!4968))))

(declare-fun b!4642805 () Bool)

(declare-fun e!2896277 () Option!11770)

(assert (=> b!4642805 (= e!2896277 (getPair!362 (t!359002 lt!1806015) key!4968))))

(declare-fun d!1463869 () Bool)

(assert (=> d!1463869 e!2896281))

(declare-fun res!1950185 () Bool)

(assert (=> d!1463869 (=> res!1950185 e!2896281)))

(assert (=> d!1463869 (= res!1950185 e!2896279)))

(declare-fun res!1950184 () Bool)

(assert (=> d!1463869 (=> (not res!1950184) (not e!2896279))))

(assert (=> d!1463869 (= res!1950184 (isEmpty!28984 lt!1806563))))

(declare-fun e!2896280 () Option!11770)

(assert (=> d!1463869 (= lt!1806563 e!2896280)))

(declare-fun c!794465 () Bool)

(assert (=> d!1463869 (= c!794465 (and ((_ is Cons!51790) lt!1806015) (= (_1!29721 (h!57904 lt!1806015)) key!4968)))))

(assert (=> d!1463869 (noDuplicateKeys!1602 lt!1806015)))

(assert (=> d!1463869 (= (getPair!362 lt!1806015 key!4968) lt!1806563)))

(declare-fun b!4642803 () Bool)

(assert (=> b!4642803 (= e!2896280 e!2896277)))

(declare-fun c!794464 () Bool)

(assert (=> b!4642803 (= c!794464 ((_ is Cons!51790) lt!1806015))))

(declare-fun b!4642806 () Bool)

(assert (=> b!4642806 (= e!2896280 (Some!11769 (h!57904 lt!1806015)))))

(declare-fun b!4642807 () Bool)

(assert (=> b!4642807 (= e!2896277 None!11769)))

(assert (= (and d!1463869 c!794465) b!4642806))

(assert (= (and d!1463869 (not c!794465)) b!4642803))

(assert (= (and b!4642803 c!794464) b!4642805))

(assert (= (and b!4642803 (not c!794464)) b!4642807))

(assert (= (and d!1463869 res!1950184) b!4642800))

(assert (= (and d!1463869 (not res!1950185)) b!4642801))

(assert (= (and b!4642801 res!1950183) b!4642804))

(assert (= (and b!4642804 res!1950182) b!4642802))

(declare-fun m!5505123 () Bool)

(assert (=> b!4642805 m!5505123))

(declare-fun m!5505125 () Bool)

(assert (=> b!4642800 m!5505125))

(declare-fun m!5505129 () Bool)

(assert (=> b!4642802 m!5505129))

(assert (=> b!4642802 m!5505129))

(declare-fun m!5505133 () Bool)

(assert (=> b!4642802 m!5505133))

(declare-fun m!5505137 () Bool)

(assert (=> b!4642801 m!5505137))

(assert (=> b!4642804 m!5505129))

(declare-fun m!5505139 () Bool)

(assert (=> d!1463869 m!5505139))

(declare-fun m!5505143 () Bool)

(assert (=> d!1463869 m!5505143))

(assert (=> b!4642440 d!1463869))

(declare-fun d!1463875 () Bool)

(assert (=> d!1463875 (containsKey!2648 oldBucket!40 key!4968)))

(declare-fun lt!1806572 () Unit!115633)

(declare-fun choose!31827 (List!51914 K!13155 Hashable!5999) Unit!115633)

(assert (=> d!1463875 (= lt!1806572 (choose!31827 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1463875 (noDuplicateKeys!1602 oldBucket!40)))

(assert (=> d!1463875 (= (lemmaGetPairDefinedThenContainsKey!116 oldBucket!40 key!4968 hashF!1389) lt!1806572)))

(declare-fun bs!1034746 () Bool)

(assert (= bs!1034746 d!1463875))

(assert (=> bs!1034746 m!5504173))

(declare-fun m!5505179 () Bool)

(assert (=> bs!1034746 m!5505179))

(assert (=> bs!1034746 m!5504135))

(assert (=> b!4642440 d!1463875))

(declare-fun d!1463887 () Bool)

(declare-fun lt!1806575 () Bool)

(declare-fun content!8954 (List!51915) (InoxSet tuple2!52856))

(assert (=> d!1463887 (= lt!1806575 (select (content!8954 lt!1806010) lt!1806020))))

(declare-fun e!2896290 () Bool)

(assert (=> d!1463887 (= lt!1806575 e!2896290)))

(declare-fun res!1950195 () Bool)

(assert (=> d!1463887 (=> (not res!1950195) (not e!2896290))))

(assert (=> d!1463887 (= res!1950195 ((_ is Cons!51791) lt!1806010))))

(assert (=> d!1463887 (= (contains!14927 lt!1806010 lt!1806020) lt!1806575)))

(declare-fun b!4642816 () Bool)

(declare-fun e!2896289 () Bool)

(assert (=> b!4642816 (= e!2896290 e!2896289)))

(declare-fun res!1950194 () Bool)

(assert (=> b!4642816 (=> res!1950194 e!2896289)))

(assert (=> b!4642816 (= res!1950194 (= (h!57905 lt!1806010) lt!1806020))))

(declare-fun b!4642817 () Bool)

(assert (=> b!4642817 (= e!2896289 (contains!14927 (t!359003 lt!1806010) lt!1806020))))

(assert (= (and d!1463887 res!1950195) b!4642816))

(assert (= (and b!4642816 (not res!1950194)) b!4642817))

(declare-fun m!5505181 () Bool)

(assert (=> d!1463887 m!5505181))

(declare-fun m!5505183 () Bool)

(assert (=> d!1463887 m!5505183))

(declare-fun m!5505185 () Bool)

(assert (=> b!4642817 m!5505185))

(assert (=> b!4642440 d!1463887))

(declare-fun d!1463889 () Bool)

(declare-fun res!1950200 () Bool)

(declare-fun e!2896295 () Bool)

(assert (=> d!1463889 (=> res!1950200 e!2896295)))

(assert (=> d!1463889 (= res!1950200 (and ((_ is Cons!51790) (t!359002 oldBucket!40)) (= (_1!29721 (h!57904 (t!359002 oldBucket!40))) key!4968)))))

(assert (=> d!1463889 (= (containsKey!2648 (t!359002 oldBucket!40) key!4968) e!2896295)))

(declare-fun b!4642822 () Bool)

(declare-fun e!2896296 () Bool)

(assert (=> b!4642822 (= e!2896295 e!2896296)))

(declare-fun res!1950201 () Bool)

(assert (=> b!4642822 (=> (not res!1950201) (not e!2896296))))

(assert (=> b!4642822 (= res!1950201 ((_ is Cons!51790) (t!359002 oldBucket!40)))))

(declare-fun b!4642823 () Bool)

(assert (=> b!4642823 (= e!2896296 (containsKey!2648 (t!359002 (t!359002 oldBucket!40)) key!4968))))

(assert (= (and d!1463889 (not res!1950200)) b!4642822))

(assert (= (and b!4642822 res!1950201) b!4642823))

(declare-fun m!5505187 () Bool)

(assert (=> b!4642823 m!5505187))

(assert (=> b!4642440 d!1463889))

(declare-fun d!1463891 () Bool)

(declare-fun dynLambda!21552 (Int tuple2!52856) Bool)

(assert (=> d!1463891 (dynLambda!21552 lambda!196604 lt!1806020)))

(declare-fun lt!1806590 () Unit!115633)

(declare-fun choose!31829 (List!51915 Int tuple2!52856) Unit!115633)

(assert (=> d!1463891 (= lt!1806590 (choose!31829 lt!1806010 lambda!196604 lt!1806020))))

(declare-fun e!2896306 () Bool)

(assert (=> d!1463891 e!2896306))

(declare-fun res!1950207 () Bool)

(assert (=> d!1463891 (=> (not res!1950207) (not e!2896306))))

(assert (=> d!1463891 (= res!1950207 (forall!10955 lt!1806010 lambda!196604))))

(assert (=> d!1463891 (= (forallContained!3178 lt!1806010 lambda!196604 lt!1806020) lt!1806590)))

(declare-fun b!4642837 () Bool)

(assert (=> b!4642837 (= e!2896306 (contains!14927 lt!1806010 lt!1806020))))

(assert (= (and d!1463891 res!1950207) b!4642837))

(declare-fun b_lambda!171087 () Bool)

(assert (=> (not b_lambda!171087) (not d!1463891)))

(declare-fun m!5505213 () Bool)

(assert (=> d!1463891 m!5505213))

(declare-fun m!5505215 () Bool)

(assert (=> d!1463891 m!5505215))

(declare-fun m!5505217 () Bool)

(assert (=> d!1463891 m!5505217))

(assert (=> b!4642837 m!5504167))

(assert (=> b!4642440 d!1463891))

(declare-fun bs!1034759 () Bool)

(declare-fun d!1463897 () Bool)

(assert (= bs!1034759 (and d!1463897 d!1463699)))

(declare-fun lambda!196746 () Int)

(assert (=> bs!1034759 (= lambda!196746 lambda!196611)))

(declare-fun bs!1034760 () Bool)

(assert (= bs!1034760 (and d!1463897 d!1463773)))

(assert (=> bs!1034760 (= lambda!196746 lambda!196714)))

(declare-fun bs!1034761 () Bool)

(assert (= bs!1034761 (and d!1463897 b!4642440)))

(assert (=> bs!1034761 (= lambda!196746 lambda!196604)))

(declare-fun bs!1034762 () Bool)

(assert (= bs!1034762 (and d!1463897 d!1463779)))

(assert (=> bs!1034762 (= lambda!196746 lambda!196719)))

(declare-fun bs!1034763 () Bool)

(assert (= bs!1034763 (and d!1463897 d!1463785)))

(assert (=> bs!1034763 (= lambda!196746 lambda!196720)))

(declare-fun bs!1034764 () Bool)

(assert (= bs!1034764 (and d!1463897 d!1463737)))

(assert (=> bs!1034764 (= lambda!196746 lambda!196686)))

(declare-fun bs!1034765 () Bool)

(assert (= bs!1034765 (and d!1463897 d!1463847)))

(assert (=> bs!1034765 (= lambda!196746 lambda!196735)))

(declare-fun bs!1034766 () Bool)

(assert (= bs!1034766 (and d!1463897 d!1463845)))

(assert (=> bs!1034766 (= lambda!196746 lambda!196734)))

(declare-fun e!2896317 () Bool)

(declare-fun b!4642858 () Bool)

(assert (=> b!4642858 (= e!2896317 (isDefined!9035 (getPair!362 (apply!12235 lt!1806017 (hash!3701 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1806612 () Unit!115633)

(assert (=> b!4642858 (= lt!1806612 (forallContained!3178 (toList!5149 lt!1806017) lambda!196746 (tuple2!52857 (hash!3701 hashF!1389 key!4968) (apply!12235 lt!1806017 (hash!3701 hashF!1389 key!4968)))))))

(declare-fun lt!1806615 () Unit!115633)

(declare-fun lt!1806609 () Unit!115633)

(assert (=> b!4642858 (= lt!1806615 lt!1806609)))

(declare-fun lt!1806608 () (_ BitVec 64))

(declare-fun lt!1806613 () List!51914)

(assert (=> b!4642858 (contains!14927 (toList!5149 lt!1806017) (tuple2!52857 lt!1806608 lt!1806613))))

(assert (=> b!4642858 (= lt!1806609 (lemmaGetValueImpliesTupleContained!167 lt!1806017 lt!1806608 lt!1806613))))

(declare-fun e!2896318 () Bool)

(assert (=> b!4642858 e!2896318))

(declare-fun res!1950219 () Bool)

(assert (=> b!4642858 (=> (not res!1950219) (not e!2896318))))

(assert (=> b!4642858 (= res!1950219 (contains!14928 lt!1806017 lt!1806608))))

(assert (=> b!4642858 (= lt!1806613 (apply!12235 lt!1806017 (hash!3701 hashF!1389 key!4968)))))

(assert (=> b!4642858 (= lt!1806608 (hash!3701 hashF!1389 key!4968))))

(declare-fun lt!1806614 () Unit!115633)

(declare-fun lt!1806610 () Unit!115633)

(assert (=> b!4642858 (= lt!1806614 lt!1806610)))

(assert (=> b!4642858 (contains!14928 lt!1806017 (hash!3701 hashF!1389 key!4968))))

(assert (=> b!4642858 (= lt!1806610 (lemmaInGenMapThenLongMapContainsHash!568 lt!1806017 key!4968 hashF!1389))))

(declare-fun b!4642859 () Bool)

(declare-datatypes ((Option!11774 0))(
  ( (None!11773) (Some!11773 (v!46011 List!51914)) )
))
(declare-fun getValueByKey!1570 (List!51915 (_ BitVec 64)) Option!11774)

(assert (=> b!4642859 (= e!2896318 (= (getValueByKey!1570 (toList!5149 lt!1806017) lt!1806608) (Some!11773 lt!1806613)))))

(assert (=> d!1463897 e!2896317))

(declare-fun res!1950218 () Bool)

(assert (=> d!1463897 (=> (not res!1950218) (not e!2896317))))

(assert (=> d!1463897 (= res!1950218 (forall!10955 (toList!5149 lt!1806017) lambda!196746))))

(declare-fun lt!1806611 () Unit!115633)

(declare-fun choose!31830 (ListLongMap!3719 K!13155 Hashable!5999) Unit!115633)

(assert (=> d!1463897 (= lt!1806611 (choose!31830 lt!1806017 key!4968 hashF!1389))))

(assert (=> d!1463897 (forall!10955 (toList!5149 lt!1806017) lambda!196746)))

(assert (=> d!1463897 (= (lemmaInGenMapThenGetPairDefined!158 lt!1806017 key!4968 hashF!1389) lt!1806611)))

(declare-fun b!4642857 () Bool)

(declare-fun res!1950217 () Bool)

(assert (=> b!4642857 (=> (not res!1950217) (not e!2896317))))

(assert (=> b!4642857 (= res!1950217 (contains!14929 (extractMap!1658 (toList!5149 lt!1806017)) key!4968))))

(declare-fun b!4642856 () Bool)

(declare-fun res!1950216 () Bool)

(assert (=> b!4642856 (=> (not res!1950216) (not e!2896317))))

(declare-fun allKeysSameHashInMap!1584 (ListLongMap!3719 Hashable!5999) Bool)

(assert (=> b!4642856 (= res!1950216 (allKeysSameHashInMap!1584 lt!1806017 hashF!1389))))

(assert (= (and d!1463897 res!1950218) b!4642856))

(assert (= (and b!4642856 res!1950216) b!4642857))

(assert (= (and b!4642857 res!1950217) b!4642858))

(assert (= (and b!4642858 res!1950219) b!4642859))

(declare-fun m!5505233 () Bool)

(assert (=> b!4642856 m!5505233))

(assert (=> b!4642858 m!5504187))

(declare-fun m!5505235 () Bool)

(assert (=> b!4642858 m!5505235))

(declare-fun m!5505237 () Bool)

(assert (=> b!4642858 m!5505237))

(declare-fun m!5505239 () Bool)

(assert (=> b!4642858 m!5505239))

(declare-fun m!5505241 () Bool)

(assert (=> b!4642858 m!5505241))

(assert (=> b!4642858 m!5504137))

(assert (=> b!4642858 m!5505237))

(declare-fun m!5505243 () Bool)

(assert (=> b!4642858 m!5505243))

(assert (=> b!4642858 m!5505239))

(declare-fun m!5505245 () Bool)

(assert (=> b!4642858 m!5505245))

(declare-fun m!5505247 () Bool)

(assert (=> b!4642858 m!5505247))

(assert (=> b!4642858 m!5504137))

(assert (=> b!4642858 m!5504137))

(declare-fun m!5505249 () Bool)

(assert (=> b!4642858 m!5505249))

(declare-fun m!5505251 () Bool)

(assert (=> b!4642857 m!5505251))

(assert (=> b!4642857 m!5505251))

(declare-fun m!5505253 () Bool)

(assert (=> b!4642857 m!5505253))

(declare-fun m!5505255 () Bool)

(assert (=> d!1463897 m!5505255))

(declare-fun m!5505257 () Bool)

(assert (=> d!1463897 m!5505257))

(assert (=> d!1463897 m!5505255))

(declare-fun m!5505259 () Bool)

(assert (=> b!4642859 m!5505259))

(assert (=> b!4642440 d!1463897))

(declare-fun d!1463905 () Bool)

(declare-fun get!17234 (Option!11774) List!51914)

(assert (=> d!1463905 (= (apply!12235 lt!1806017 lt!1806022) (get!17234 (getValueByKey!1570 (toList!5149 lt!1806017) lt!1806022)))))

(declare-fun bs!1034767 () Bool)

(assert (= bs!1034767 d!1463905))

(declare-fun m!5505261 () Bool)

(assert (=> bs!1034767 m!5505261))

(assert (=> bs!1034767 m!5505261))

(declare-fun m!5505263 () Bool)

(assert (=> bs!1034767 m!5505263))

(assert (=> b!4642440 d!1463905))

(declare-fun d!1463907 () Bool)

(declare-fun e!2896324 () Bool)

(assert (=> d!1463907 e!2896324))

(declare-fun res!1950222 () Bool)

(assert (=> d!1463907 (=> res!1950222 e!2896324)))

(declare-fun lt!1806627 () Bool)

(assert (=> d!1463907 (= res!1950222 (not lt!1806627))))

(declare-fun lt!1806626 () Bool)

(assert (=> d!1463907 (= lt!1806627 lt!1806626)))

(declare-fun lt!1806624 () Unit!115633)

(declare-fun e!2896323 () Unit!115633)

(assert (=> d!1463907 (= lt!1806624 e!2896323)))

(declare-fun c!794474 () Bool)

(assert (=> d!1463907 (= c!794474 lt!1806626)))

(declare-fun containsKey!2652 (List!51915 (_ BitVec 64)) Bool)

(assert (=> d!1463907 (= lt!1806626 (containsKey!2652 (toList!5149 lt!1806017) lt!1806022))))

(assert (=> d!1463907 (= (contains!14928 lt!1806017 lt!1806022) lt!1806627)))

(declare-fun b!4642866 () Bool)

(declare-fun lt!1806625 () Unit!115633)

(assert (=> b!4642866 (= e!2896323 lt!1806625)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1472 (List!51915 (_ BitVec 64)) Unit!115633)

(assert (=> b!4642866 (= lt!1806625 (lemmaContainsKeyImpliesGetValueByKeyDefined!1472 (toList!5149 lt!1806017) lt!1806022))))

(declare-fun isDefined!9039 (Option!11774) Bool)

(assert (=> b!4642866 (isDefined!9039 (getValueByKey!1570 (toList!5149 lt!1806017) lt!1806022))))

(declare-fun b!4642867 () Bool)

(declare-fun Unit!115752 () Unit!115633)

(assert (=> b!4642867 (= e!2896323 Unit!115752)))

(declare-fun b!4642868 () Bool)

(assert (=> b!4642868 (= e!2896324 (isDefined!9039 (getValueByKey!1570 (toList!5149 lt!1806017) lt!1806022)))))

(assert (= (and d!1463907 c!794474) b!4642866))

(assert (= (and d!1463907 (not c!794474)) b!4642867))

(assert (= (and d!1463907 (not res!1950222)) b!4642868))

(declare-fun m!5505265 () Bool)

(assert (=> d!1463907 m!5505265))

(declare-fun m!5505267 () Bool)

(assert (=> b!4642866 m!5505267))

(assert (=> b!4642866 m!5505261))

(assert (=> b!4642866 m!5505261))

(declare-fun m!5505269 () Bool)

(assert (=> b!4642866 m!5505269))

(assert (=> b!4642868 m!5505261))

(assert (=> b!4642868 m!5505261))

(assert (=> b!4642868 m!5505269))

(assert (=> b!4642440 d!1463907))

(declare-fun d!1463909 () Bool)

(declare-fun res!1950223 () Bool)

(declare-fun e!2896325 () Bool)

(assert (=> d!1463909 (=> res!1950223 e!2896325)))

(assert (=> d!1463909 (= res!1950223 (and ((_ is Cons!51790) oldBucket!40) (= (_1!29721 (h!57904 oldBucket!40)) key!4968)))))

(assert (=> d!1463909 (= (containsKey!2648 oldBucket!40 key!4968) e!2896325)))

(declare-fun b!4642869 () Bool)

(declare-fun e!2896326 () Bool)

(assert (=> b!4642869 (= e!2896325 e!2896326)))

(declare-fun res!1950224 () Bool)

(assert (=> b!4642869 (=> (not res!1950224) (not e!2896326))))

(assert (=> b!4642869 (= res!1950224 ((_ is Cons!51790) oldBucket!40))))

(declare-fun b!4642870 () Bool)

(assert (=> b!4642870 (= e!2896326 (containsKey!2648 (t!359002 oldBucket!40) key!4968))))

(assert (= (and d!1463909 (not res!1950223)) b!4642869))

(assert (= (and b!4642869 res!1950224) b!4642870))

(assert (=> b!4642870 m!5504181))

(assert (=> b!4642440 d!1463909))

(declare-fun bs!1034768 () Bool)

(declare-fun d!1463911 () Bool)

(assert (= bs!1034768 (and d!1463911 d!1463699)))

(declare-fun lambda!196749 () Int)

(assert (=> bs!1034768 (= lambda!196749 lambda!196611)))

(declare-fun bs!1034769 () Bool)

(assert (= bs!1034769 (and d!1463911 d!1463773)))

(assert (=> bs!1034769 (= lambda!196749 lambda!196714)))

(declare-fun bs!1034770 () Bool)

(assert (= bs!1034770 (and d!1463911 b!4642440)))

(assert (=> bs!1034770 (= lambda!196749 lambda!196604)))

(declare-fun bs!1034771 () Bool)

(assert (= bs!1034771 (and d!1463911 d!1463897)))

(assert (=> bs!1034771 (= lambda!196749 lambda!196746)))

(declare-fun bs!1034772 () Bool)

(assert (= bs!1034772 (and d!1463911 d!1463779)))

(assert (=> bs!1034772 (= lambda!196749 lambda!196719)))

(declare-fun bs!1034773 () Bool)

(assert (= bs!1034773 (and d!1463911 d!1463785)))

(assert (=> bs!1034773 (= lambda!196749 lambda!196720)))

(declare-fun bs!1034774 () Bool)

(assert (= bs!1034774 (and d!1463911 d!1463737)))

(assert (=> bs!1034774 (= lambda!196749 lambda!196686)))

(declare-fun bs!1034775 () Bool)

(assert (= bs!1034775 (and d!1463911 d!1463847)))

(assert (=> bs!1034775 (= lambda!196749 lambda!196735)))

(declare-fun bs!1034776 () Bool)

(assert (= bs!1034776 (and d!1463911 d!1463845)))

(assert (=> bs!1034776 (= lambda!196749 lambda!196734)))

(assert (=> d!1463911 (contains!14928 lt!1806017 (hash!3701 hashF!1389 key!4968))))

(declare-fun lt!1806630 () Unit!115633)

(declare-fun choose!31832 (ListLongMap!3719 K!13155 Hashable!5999) Unit!115633)

(assert (=> d!1463911 (= lt!1806630 (choose!31832 lt!1806017 key!4968 hashF!1389))))

(assert (=> d!1463911 (forall!10955 (toList!5149 lt!1806017) lambda!196749)))

(assert (=> d!1463911 (= (lemmaInGenMapThenLongMapContainsHash!568 lt!1806017 key!4968 hashF!1389) lt!1806630)))

(declare-fun bs!1034777 () Bool)

(assert (= bs!1034777 d!1463911))

(assert (=> bs!1034777 m!5504137))

(assert (=> bs!1034777 m!5504137))

(assert (=> bs!1034777 m!5505249))

(declare-fun m!5505271 () Bool)

(assert (=> bs!1034777 m!5505271))

(declare-fun m!5505273 () Bool)

(assert (=> bs!1034777 m!5505273))

(assert (=> b!4642440 d!1463911))

(declare-fun bs!1034778 () Bool)

(declare-fun d!1463913 () Bool)

(assert (= bs!1034778 (and d!1463913 b!4642588)))

(declare-fun lambda!196750 () Int)

(assert (=> bs!1034778 (not (= lambda!196750 lambda!196678))))

(declare-fun bs!1034779 () Bool)

(assert (= bs!1034779 (and d!1463913 b!4642605)))

(assert (=> bs!1034779 (not (= lambda!196750 lambda!196689))))

(declare-fun bs!1034780 () Bool)

(assert (= bs!1034780 (and d!1463913 b!4642653)))

(assert (=> bs!1034780 (not (= lambda!196750 lambda!196703))))

(assert (=> bs!1034778 (not (= lambda!196750 lambda!196677))))

(declare-fun bs!1034781 () Bool)

(assert (= bs!1034781 (and d!1463913 b!4642658)))

(assert (=> bs!1034781 (not (= lambda!196750 lambda!196707))))

(declare-fun bs!1034782 () Bool)

(assert (= bs!1034782 (and d!1463913 b!4642670)))

(assert (=> bs!1034782 (not (= lambda!196750 lambda!196715))))

(declare-fun bs!1034783 () Bool)

(assert (= bs!1034783 (and d!1463913 b!4642591)))

(assert (=> bs!1034783 (not (= lambda!196750 lambda!196676))))

(declare-fun bs!1034784 () Bool)

(assert (= bs!1034784 (and d!1463913 d!1463759)))

(assert (=> bs!1034784 (not (= lambda!196750 lambda!196708))))

(assert (=> bs!1034780 (not (= lambda!196750 lambda!196702))))

(declare-fun bs!1034785 () Bool)

(assert (= bs!1034785 (and d!1463913 b!4642656)))

(assert (=> bs!1034785 (not (= lambda!196750 lambda!196701))))

(declare-fun bs!1034786 () Bool)

(assert (= bs!1034786 (and d!1463913 d!1463705)))

(assert (=> bs!1034786 (not (= lambda!196750 lambda!196679))))

(assert (=> bs!1034779 (not (= lambda!196750 lambda!196688))))

(assert (=> bs!1034781 (not (= lambda!196750 lambda!196706))))

(declare-fun bs!1034787 () Bool)

(assert (= bs!1034787 (and d!1463913 d!1463849)))

(assert (=> bs!1034787 (= lambda!196750 lambda!196738)))

(declare-fun bs!1034788 () Bool)

(assert (= bs!1034788 (and d!1463913 b!4642661)))

(assert (=> bs!1034788 (not (= lambda!196750 lambda!196705))))

(declare-fun bs!1034789 () Bool)

(assert (= bs!1034789 (and d!1463913 b!4642667)))

(assert (=> bs!1034789 (not (= lambda!196750 lambda!196717))))

(declare-fun bs!1034790 () Bool)

(assert (= bs!1034790 (and d!1463913 d!1463777)))

(assert (=> bs!1034790 (not (= lambda!196750 lambda!196718))))

(declare-fun bs!1034791 () Bool)

(assert (= bs!1034791 (and d!1463913 d!1463739)))

(assert (=> bs!1034791 (not (= lambda!196750 lambda!196690))))

(assert (=> bs!1034789 (not (= lambda!196750 lambda!196716))))

(declare-fun bs!1034792 () Bool)

(assert (= bs!1034792 (and d!1463913 b!4642608)))

(assert (=> bs!1034792 (not (= lambda!196750 lambda!196687))))

(declare-fun bs!1034793 () Bool)

(assert (= bs!1034793 (and d!1463913 d!1463757)))

(assert (=> bs!1034793 (not (= lambda!196750 lambda!196704))))

(assert (=> d!1463913 true))

(assert (=> d!1463913 true))

(assert (=> d!1463913 (= (allKeysSameHash!1456 newBucket!224 hash!414 hashF!1389) (forall!10956 newBucket!224 lambda!196750))))

(declare-fun bs!1034794 () Bool)

(assert (= bs!1034794 d!1463913))

(declare-fun m!5505275 () Bool)

(assert (=> bs!1034794 m!5505275))

(assert (=> b!4642451 d!1463913))

(declare-fun b!4642871 () Bool)

(declare-fun e!2896328 () List!51914)

(assert (=> b!4642871 (= e!2896328 (t!359002 (t!359002 oldBucket!40)))))

(declare-fun b!4642874 () Bool)

(declare-fun e!2896327 () List!51914)

(assert (=> b!4642874 (= e!2896327 Nil!51790)))

(declare-fun b!4642872 () Bool)

(assert (=> b!4642872 (= e!2896328 e!2896327)))

(declare-fun c!794476 () Bool)

(assert (=> b!4642872 (= c!794476 ((_ is Cons!51790) (t!359002 oldBucket!40)))))

(declare-fun b!4642873 () Bool)

(assert (=> b!4642873 (= e!2896327 (Cons!51790 (h!57904 (t!359002 oldBucket!40)) (removePairForKey!1225 (t!359002 (t!359002 oldBucket!40)) key!4968)))))

(declare-fun d!1463915 () Bool)

(declare-fun lt!1806631 () List!51914)

(assert (=> d!1463915 (not (containsKey!2648 lt!1806631 key!4968))))

(assert (=> d!1463915 (= lt!1806631 e!2896328)))

(declare-fun c!794475 () Bool)

(assert (=> d!1463915 (= c!794475 (and ((_ is Cons!51790) (t!359002 oldBucket!40)) (= (_1!29721 (h!57904 (t!359002 oldBucket!40))) key!4968)))))

(assert (=> d!1463915 (noDuplicateKeys!1602 (t!359002 oldBucket!40))))

(assert (=> d!1463915 (= (removePairForKey!1225 (t!359002 oldBucket!40) key!4968) lt!1806631)))

(assert (= (and d!1463915 c!794475) b!4642871))

(assert (= (and d!1463915 (not c!794475)) b!4642872))

(assert (= (and b!4642872 c!794476) b!4642873))

(assert (= (and b!4642872 (not c!794476)) b!4642874))

(declare-fun m!5505277 () Bool)

(assert (=> b!4642873 m!5505277))

(declare-fun m!5505279 () Bool)

(assert (=> d!1463915 m!5505279))

(assert (=> d!1463915 m!5504849))

(assert (=> b!4642441 d!1463915))

(declare-fun b!4642879 () Bool)

(declare-fun tp!1342946 () Bool)

(declare-fun e!2896331 () Bool)

(assert (=> b!4642879 (= e!2896331 (and tp_is_empty!29701 tp_is_empty!29703 tp!1342946))))

(assert (=> b!4642447 (= tp!1342938 e!2896331)))

(assert (= (and b!4642447 ((_ is Cons!51790) (t!359002 oldBucket!40))) b!4642879))

(declare-fun tp!1342947 () Bool)

(declare-fun b!4642880 () Bool)

(declare-fun e!2896332 () Bool)

(assert (=> b!4642880 (= e!2896332 (and tp_is_empty!29701 tp_is_empty!29703 tp!1342947))))

(assert (=> b!4642450 (= tp!1342939 e!2896332)))

(assert (= (and b!4642450 ((_ is Cons!51790) (t!359002 newBucket!224))) b!4642880))

(declare-fun b_lambda!171091 () Bool)

(assert (= b_lambda!171087 (or b!4642440 b_lambda!171091)))

(declare-fun bs!1034795 () Bool)

(declare-fun d!1463917 () Bool)

(assert (= bs!1034795 (and d!1463917 b!4642440)))

(assert (=> bs!1034795 (= (dynLambda!21552 lambda!196604 lt!1806020) (noDuplicateKeys!1602 (_2!29722 lt!1806020)))))

(declare-fun m!5505281 () Bool)

(assert (=> bs!1034795 m!5505281))

(assert (=> d!1463891 d!1463917))

(check-sat (not b!4642606) (not b!4642770) (not d!1463853) (not d!1463911) (not bm!324119) (not b!4642880) (not b!4642467) (not b!4642706) (not b!4642733) (not b!4642868) (not b!4642823) (not b!4642649) (not b!4642589) (not d!1463845) (not d!1463833) (not b!4642604) (not b!4642658) (not b!4642645) (not b!4642657) (not d!1463771) (not b!4642701) (not b!4642767) (not b!4642498) (not b!4642755) (not d!1463907) (not b!4642769) (not d!1463851) (not b!4642760) (not b!4642768) (not d!1463913) (not bs!1034795) (not bm!324123) (not d!1463693) (not bm!324127) (not b!4642856) (not b!4642653) (not d!1463759) (not b!4642866) (not b!4642873) (not b!4642707) (not d!1463741) (not b!4642648) (not bm!324124) (not b!4642497) (not b!4642857) (not bm!324126) (not d!1463683) tp_is_empty!29701 (not b!4642778) (not d!1463789) (not d!1463733) (not b!4642669) (not b!4642588) (not b!4642859) (not d!1463831) (not bm!324107) (not bm!324122) (not d!1463841) (not b!4642662) (not b!4642764) (not d!1463847) (not b!4642655) (not b_lambda!171091) (not d!1463861) (not d!1463857) (not b!4642587) (not b!4642668) (not b!4642761) (not b!4642801) (not b!4642817) (not d!1463687) (not d!1463773) (not d!1463675) (not b!4642689) (not bm!324118) (not b!4642870) (not b!4642858) (not d!1463905) (not d!1463703) (not d!1463739) (not b!4642659) (not bm!324108) (not d!1463891) (not b!4642731) (not b!4642879) (not b!4642664) (not b!4642754) (not b!4642700) (not b!4642652) (not d!1463915) (not b!4642703) (not d!1463769) (not d!1463837) (not b!4642505) (not b!4642667) (not b!4642590) (not b!4642654) (not b!4642643) (not d!1463737) (not b!4642805) (not d!1463829) (not b!4642837) (not d!1463897) (not b!4642766) (not d!1463849) (not b!4642607) (not bm!324131) (not b!4642802) (not d!1463807) (not d!1463887) (not bm!324106) (not d!1463867) (not b!4642663) (not b!4642650) (not d!1463757) (not b!4642753) (not b!4642772) (not b!4642646) (not d!1463843) (not b!4642711) (not b!4642666) (not b!4642660) (not d!1463869) (not b!4642705) (not d!1463809) (not d!1463777) (not bm!324104) (not d!1463795) (not d!1463781) (not bm!324121) (not bm!324109) (not d!1463875) (not bm!324105) (not d!1463855) (not d!1463863) (not d!1463705) (not d!1463785) (not b!4642800) (not bm!324125) (not d!1463779) (not bm!324120) (not d!1463699) (not d!1463805) (not b!4642602) (not b!4642605) (not b!4642732) (not b!4642644) (not b!4642734) tp_is_empty!29703 (not d!1463767) (not b!4642665) (not b!4642702) (not b!4642804))
(check-sat)
