; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451624 () Bool)

(assert start!451624)

(declare-fun b!4546093 () Bool)

(declare-datatypes ((Unit!99521 0))(
  ( (Unit!99522) )
))
(declare-fun e!2833128 () Unit!99521)

(declare-fun Unit!99523 () Unit!99521)

(assert (=> b!4546093 (= e!2833128 Unit!99523)))

(declare-fun b!4546094 () Bool)

(declare-fun res!1895535 () Bool)

(declare-fun e!2833131 () Bool)

(assert (=> b!4546094 (=> res!1895535 e!2833131)))

(declare-datatypes ((K!12190 0))(
  ( (K!12191 (val!18023 Int)) )
))
(declare-datatypes ((V!12436 0))(
  ( (V!12437 (val!18024 Int)) )
))
(declare-datatypes ((tuple2!51314 0))(
  ( (tuple2!51315 (_1!28951 K!12190) (_2!28951 V!12436)) )
))
(declare-datatypes ((List!50929 0))(
  ( (Nil!50805) (Cons!50805 (h!56698 tuple2!51314) (t!357895 List!50929)) )
))
(declare-datatypes ((tuple2!51316 0))(
  ( (tuple2!51317 (_1!28952 (_ BitVec 64)) (_2!28952 List!50929)) )
))
(declare-datatypes ((List!50930 0))(
  ( (Nil!50806) (Cons!50806 (h!56699 tuple2!51316) (t!357896 List!50930)) )
))
(declare-datatypes ((ListLongMap!3079 0))(
  ( (ListLongMap!3080 (toList!4447 List!50930)) )
))
(declare-fun lm!1477 () ListLongMap!3079)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4546094 (= res!1895535 (or ((_ is Nil!50806) (toList!4447 lm!1477)) (not (= (_1!28952 (h!56699 (toList!4447 lm!1477))) hash!344))))))

(declare-fun b!4546095 () Bool)

(declare-fun res!1895531 () Bool)

(assert (=> b!4546095 (=> res!1895531 e!2833131)))

(declare-fun newBucket!178 () List!50929)

(declare-fun noDuplicateKeys!1220 (List!50929) Bool)

(assert (=> b!4546095 (= res!1895531 (not (noDuplicateKeys!1220 newBucket!178)))))

(declare-fun b!4546096 () Bool)

(declare-fun e!2833129 () Bool)

(declare-fun e!2833133 () Bool)

(assert (=> b!4546096 (= e!2833129 e!2833133)))

(declare-fun res!1895530 () Bool)

(assert (=> b!4546096 (=> (not res!1895530) (not e!2833133))))

(declare-fun lt!1719994 () (_ BitVec 64))

(assert (=> b!4546096 (= res!1895530 (= lt!1719994 hash!344))))

(declare-datatypes ((Hashable!5615 0))(
  ( (HashableExt!5614 (__x!31318 Int)) )
))
(declare-fun hashF!1107 () Hashable!5615)

(declare-fun key!3287 () K!12190)

(declare-fun hash!2962 (Hashable!5615 K!12190) (_ BitVec 64))

(assert (=> b!4546096 (= lt!1719994 (hash!2962 hashF!1107 key!3287))))

(declare-fun res!1895538 () Bool)

(assert (=> start!451624 (=> (not res!1895538) (not e!2833129))))

(declare-fun lambda!177313 () Int)

(declare-fun forall!10381 (List!50930 Int) Bool)

(assert (=> start!451624 (= res!1895538 (forall!10381 (toList!4447 lm!1477) lambda!177313))))

(assert (=> start!451624 e!2833129))

(assert (=> start!451624 true))

(declare-fun e!2833132 () Bool)

(declare-fun inv!66374 (ListLongMap!3079) Bool)

(assert (=> start!451624 (and (inv!66374 lm!1477) e!2833132)))

(declare-fun tp_is_empty!28157 () Bool)

(assert (=> start!451624 tp_is_empty!28157))

(declare-fun e!2833127 () Bool)

(assert (=> start!451624 e!2833127))

(declare-fun b!4546097 () Bool)

(declare-fun tp!1338883 () Bool)

(assert (=> b!4546097 (= e!2833132 tp!1338883)))

(declare-fun b!4546098 () Bool)

(declare-fun Unit!99524 () Unit!99521)

(assert (=> b!4546098 (= e!2833128 Unit!99524)))

(declare-fun lt!1719995 () Unit!99521)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!208 (ListLongMap!3079 K!12190 Hashable!5615) Unit!99521)

(assert (=> b!4546098 (= lt!1719995 (lemmaNotInItsHashBucketThenNotInMap!208 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4546098 false))

(declare-fun b!4546099 () Bool)

(declare-fun e!2833126 () Bool)

(assert (=> b!4546099 (= e!2833126 true)))

(declare-fun lt!1720000 () ListLongMap!3079)

(declare-fun lt!1719990 () tuple2!51316)

(declare-fun +!1630 (ListLongMap!3079 tuple2!51316) ListLongMap!3079)

(assert (=> b!4546099 (= lt!1720000 (+!1630 lm!1477 lt!1719990))))

(declare-datatypes ((ListMap!3709 0))(
  ( (ListMap!3710 (toList!4448 List!50929)) )
))
(declare-fun eq!671 (ListMap!3709 ListMap!3709) Bool)

(declare-fun extractMap!1276 (List!50930) ListMap!3709)

(declare-fun -!440 (ListMap!3709 K!12190) ListMap!3709)

(assert (=> b!4546099 (eq!671 (extractMap!1276 (Cons!50806 lt!1719990 Nil!50806)) (-!440 (extractMap!1276 (Cons!50806 (tuple2!51317 hash!344 (_2!28952 (h!56699 (toList!4447 lm!1477)))) Nil!50806)) key!3287))))

(assert (=> b!4546099 (= lt!1719990 (tuple2!51317 hash!344 newBucket!178))))

(declare-fun lt!1719989 () Unit!99521)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!60 ((_ BitVec 64) List!50929 List!50929 K!12190 Hashable!5615) Unit!99521)

(assert (=> b!4546099 (= lt!1719989 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!60 hash!344 (_2!28952 (h!56699 (toList!4447 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1719996 () List!50930)

(declare-fun contains!13628 (ListMap!3709 K!12190) Bool)

(assert (=> b!4546099 (contains!13628 (extractMap!1276 lt!1719996) key!3287)))

(declare-fun lt!1719987 () Unit!99521)

(declare-fun lemmaListContainsThenExtractedMapContains!186 (ListLongMap!3079 K!12190 Hashable!5615) Unit!99521)

(assert (=> b!4546099 (= lt!1719987 (lemmaListContainsThenExtractedMapContains!186 (ListLongMap!3080 lt!1719996) key!3287 hashF!1107))))

(declare-fun b!4546100 () Bool)

(declare-fun res!1895536 () Bool)

(assert (=> b!4546100 (=> (not res!1895536) (not e!2833133))))

(declare-fun allKeysSameHash!1074 (List!50929 (_ BitVec 64) Hashable!5615) Bool)

(assert (=> b!4546100 (= res!1895536 (allKeysSameHash!1074 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4546101 () Bool)

(declare-fun res!1895533 () Bool)

(assert (=> b!4546101 (=> (not res!1895533) (not e!2833129))))

(assert (=> b!4546101 (= res!1895533 (contains!13628 (extractMap!1276 (toList!4447 lm!1477)) key!3287))))

(declare-fun tp!1338882 () Bool)

(declare-fun b!4546102 () Bool)

(declare-fun tp_is_empty!28159 () Bool)

(assert (=> b!4546102 (= e!2833127 (and tp_is_empty!28157 tp_is_empty!28159 tp!1338882))))

(declare-fun b!4546103 () Bool)

(assert (=> b!4546103 (= e!2833133 (not e!2833131))))

(declare-fun res!1895537 () Bool)

(assert (=> b!4546103 (=> res!1895537 e!2833131)))

(declare-fun lt!1719991 () List!50929)

(declare-fun removePairForKey!847 (List!50929 K!12190) List!50929)

(assert (=> b!4546103 (= res!1895537 (not (= newBucket!178 (removePairForKey!847 lt!1719991 key!3287))))))

(declare-fun lt!1719999 () tuple2!51316)

(declare-fun lt!1719992 () Unit!99521)

(declare-fun forallContained!2645 (List!50930 Int tuple2!51316) Unit!99521)

(assert (=> b!4546103 (= lt!1719992 (forallContained!2645 (toList!4447 lm!1477) lambda!177313 lt!1719999))))

(declare-fun contains!13629 (List!50930 tuple2!51316) Bool)

(assert (=> b!4546103 (contains!13629 (toList!4447 lm!1477) lt!1719999)))

(assert (=> b!4546103 (= lt!1719999 (tuple2!51317 hash!344 lt!1719991))))

(declare-fun lt!1719998 () Unit!99521)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!732 (List!50930 (_ BitVec 64) List!50929) Unit!99521)

(assert (=> b!4546103 (= lt!1719998 (lemmaGetValueByKeyImpliesContainsTuple!732 (toList!4447 lm!1477) hash!344 lt!1719991))))

(declare-fun apply!11957 (ListLongMap!3079 (_ BitVec 64)) List!50929)

(assert (=> b!4546103 (= lt!1719991 (apply!11957 lm!1477 hash!344))))

(declare-fun contains!13630 (ListLongMap!3079 (_ BitVec 64)) Bool)

(assert (=> b!4546103 (contains!13630 lm!1477 lt!1719994)))

(declare-fun lt!1719997 () Unit!99521)

(declare-fun lemmaInGenMapThenLongMapContainsHash!294 (ListLongMap!3079 K!12190 Hashable!5615) Unit!99521)

(assert (=> b!4546103 (= lt!1719997 (lemmaInGenMapThenLongMapContainsHash!294 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4546104 () Bool)

(declare-fun e!2833130 () Bool)

(assert (=> b!4546104 (= e!2833130 e!2833126)))

(declare-fun res!1895532 () Bool)

(assert (=> b!4546104 (=> res!1895532 e!2833126)))

(declare-fun containsKeyBiggerList!198 (List!50930 K!12190) Bool)

(assert (=> b!4546104 (= res!1895532 (not (containsKeyBiggerList!198 lt!1719996 key!3287)))))

(assert (=> b!4546104 (= lt!1719996 (Cons!50806 (h!56699 (toList!4447 lm!1477)) Nil!50806))))

(declare-fun b!4546105 () Bool)

(assert (=> b!4546105 (= e!2833131 e!2833130)))

(declare-fun res!1895529 () Bool)

(assert (=> b!4546105 (=> res!1895529 e!2833130)))

(declare-fun lt!1719988 () Bool)

(assert (=> b!4546105 (= res!1895529 lt!1719988)))

(declare-fun lt!1719993 () Unit!99521)

(assert (=> b!4546105 (= lt!1719993 e!2833128)))

(declare-fun c!776543 () Bool)

(assert (=> b!4546105 (= c!776543 lt!1719988)))

(declare-fun containsKey!1919 (List!50929 K!12190) Bool)

(assert (=> b!4546105 (= lt!1719988 (not (containsKey!1919 (_2!28952 (h!56699 (toList!4447 lm!1477))) key!3287)))))

(declare-fun b!4546106 () Bool)

(declare-fun res!1895534 () Bool)

(assert (=> b!4546106 (=> (not res!1895534) (not e!2833129))))

(declare-fun allKeysSameHashInMap!1327 (ListLongMap!3079 Hashable!5615) Bool)

(assert (=> b!4546106 (= res!1895534 (allKeysSameHashInMap!1327 lm!1477 hashF!1107))))

(assert (= (and start!451624 res!1895538) b!4546106))

(assert (= (and b!4546106 res!1895534) b!4546101))

(assert (= (and b!4546101 res!1895533) b!4546096))

(assert (= (and b!4546096 res!1895530) b!4546100))

(assert (= (and b!4546100 res!1895536) b!4546103))

(assert (= (and b!4546103 (not res!1895537)) b!4546095))

(assert (= (and b!4546095 (not res!1895531)) b!4546094))

(assert (= (and b!4546094 (not res!1895535)) b!4546105))

(assert (= (and b!4546105 c!776543) b!4546098))

(assert (= (and b!4546105 (not c!776543)) b!4546093))

(assert (= (and b!4546105 (not res!1895529)) b!4546104))

(assert (= (and b!4546104 (not res!1895532)) b!4546099))

(assert (= start!451624 b!4546097))

(assert (= (and start!451624 ((_ is Cons!50805) newBucket!178)) b!4546102))

(declare-fun m!5317965 () Bool)

(assert (=> b!4546101 m!5317965))

(assert (=> b!4546101 m!5317965))

(declare-fun m!5317967 () Bool)

(assert (=> b!4546101 m!5317967))

(declare-fun m!5317969 () Bool)

(assert (=> b!4546104 m!5317969))

(declare-fun m!5317971 () Bool)

(assert (=> b!4546106 m!5317971))

(declare-fun m!5317973 () Bool)

(assert (=> b!4546099 m!5317973))

(declare-fun m!5317975 () Bool)

(assert (=> b!4546099 m!5317975))

(declare-fun m!5317977 () Bool)

(assert (=> b!4546099 m!5317977))

(declare-fun m!5317979 () Bool)

(assert (=> b!4546099 m!5317979))

(assert (=> b!4546099 m!5317975))

(assert (=> b!4546099 m!5317973))

(declare-fun m!5317981 () Bool)

(assert (=> b!4546099 m!5317981))

(declare-fun m!5317983 () Bool)

(assert (=> b!4546099 m!5317983))

(declare-fun m!5317985 () Bool)

(assert (=> b!4546099 m!5317985))

(declare-fun m!5317987 () Bool)

(assert (=> b!4546099 m!5317987))

(assert (=> b!4546099 m!5317983))

(declare-fun m!5317989 () Bool)

(assert (=> b!4546099 m!5317989))

(assert (=> b!4546099 m!5317979))

(declare-fun m!5317991 () Bool)

(assert (=> b!4546095 m!5317991))

(declare-fun m!5317993 () Bool)

(assert (=> start!451624 m!5317993))

(declare-fun m!5317995 () Bool)

(assert (=> start!451624 m!5317995))

(declare-fun m!5317997 () Bool)

(assert (=> b!4546098 m!5317997))

(declare-fun m!5317999 () Bool)

(assert (=> b!4546100 m!5317999))

(declare-fun m!5318001 () Bool)

(assert (=> b!4546105 m!5318001))

(declare-fun m!5318003 () Bool)

(assert (=> b!4546096 m!5318003))

(declare-fun m!5318005 () Bool)

(assert (=> b!4546103 m!5318005))

(declare-fun m!5318007 () Bool)

(assert (=> b!4546103 m!5318007))

(declare-fun m!5318009 () Bool)

(assert (=> b!4546103 m!5318009))

(declare-fun m!5318011 () Bool)

(assert (=> b!4546103 m!5318011))

(declare-fun m!5318013 () Bool)

(assert (=> b!4546103 m!5318013))

(declare-fun m!5318015 () Bool)

(assert (=> b!4546103 m!5318015))

(declare-fun m!5318017 () Bool)

(assert (=> b!4546103 m!5318017))

(check-sat (not b!4546099) (not b!4546098) (not b!4546097) (not b!4546096) (not b!4546095) (not b!4546101) tp_is_empty!28157 (not b!4546106) (not b!4546105) tp_is_empty!28159 (not b!4546100) (not b!4546104) (not b!4546103) (not start!451624) (not b!4546102))
(check-sat)
