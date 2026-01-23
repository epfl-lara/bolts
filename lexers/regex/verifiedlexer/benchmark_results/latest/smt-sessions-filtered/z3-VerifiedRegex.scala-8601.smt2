; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458056 () Bool)

(assert start!458056)

(declare-fun b!4594139 () Bool)

(declare-fun e!2865484 () Bool)

(declare-fun tp!1340236 () Bool)

(assert (=> b!4594139 (= e!2865484 tp!1340236)))

(declare-fun b!4594140 () Bool)

(declare-fun res!1921115 () Bool)

(declare-fun e!2865490 () Bool)

(assert (=> b!4594140 (=> res!1921115 e!2865490)))

(declare-datatypes ((K!12410 0))(
  ( (K!12411 (val!18199 Int)) )
))
(declare-datatypes ((V!12656 0))(
  ( (V!12657 (val!18200 Int)) )
))
(declare-datatypes ((tuple2!51666 0))(
  ( (tuple2!51667 (_1!29127 K!12410) (_2!29127 V!12656)) )
))
(declare-datatypes ((List!51166 0))(
  ( (Nil!51042) (Cons!51042 (h!56998 tuple2!51666) (t!358160 List!51166)) )
))
(declare-fun newBucket!178 () List!51166)

(declare-fun noDuplicateKeys!1304 (List!51166) Bool)

(assert (=> b!4594140 (= res!1921115 (not (noDuplicateKeys!1304 newBucket!178)))))

(declare-fun b!4594141 () Bool)

(declare-fun e!2865486 () Bool)

(declare-fun e!2865489 () Bool)

(assert (=> b!4594141 (= e!2865486 e!2865489)))

(declare-fun res!1921122 () Bool)

(assert (=> b!4594141 (=> (not res!1921122) (not e!2865489))))

(declare-fun lt!1755117 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4594141 (= res!1921122 (= lt!1755117 hash!344))))

(declare-datatypes ((Hashable!5703 0))(
  ( (HashableExt!5702 (__x!31406 Int)) )
))
(declare-fun hashF!1107 () Hashable!5703)

(declare-fun key!3287 () K!12410)

(declare-fun hash!3185 (Hashable!5703 K!12410) (_ BitVec 64))

(assert (=> b!4594141 (= lt!1755117 (hash!3185 hashF!1107 key!3287))))

(declare-fun b!4594142 () Bool)

(declare-datatypes ((Unit!107672 0))(
  ( (Unit!107673) )
))
(declare-fun e!2865488 () Unit!107672)

(declare-fun Unit!107674 () Unit!107672)

(assert (=> b!4594142 (= e!2865488 Unit!107674)))

(declare-fun b!4594143 () Bool)

(declare-fun Unit!107675 () Unit!107672)

(assert (=> b!4594143 (= e!2865488 Unit!107675)))

(declare-fun lt!1755119 () Unit!107672)

(declare-datatypes ((tuple2!51668 0))(
  ( (tuple2!51669 (_1!29128 (_ BitVec 64)) (_2!29128 List!51166)) )
))
(declare-datatypes ((List!51167 0))(
  ( (Nil!51043) (Cons!51043 (h!56999 tuple2!51668) (t!358161 List!51167)) )
))
(declare-datatypes ((ListLongMap!3255 0))(
  ( (ListLongMap!3256 (toList!4623 List!51167)) )
))
(declare-fun lm!1477 () ListLongMap!3255)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!274 (ListLongMap!3255 K!12410 Hashable!5703) Unit!107672)

(assert (=> b!4594143 (= lt!1755119 (lemmaNotInItsHashBucketThenNotInMap!274 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4594143 false))

(declare-fun b!4594144 () Bool)

(declare-fun e!2865487 () Bool)

(assert (=> b!4594144 (= e!2865490 e!2865487)))

(declare-fun res!1921121 () Bool)

(assert (=> b!4594144 (=> res!1921121 e!2865487)))

(declare-fun lt!1755118 () Bool)

(assert (=> b!4594144 (= res!1921121 lt!1755118)))

(declare-fun lt!1755116 () Unit!107672)

(assert (=> b!4594144 (= lt!1755116 e!2865488)))

(declare-fun c!786746 () Bool)

(assert (=> b!4594144 (= c!786746 lt!1755118)))

(declare-fun containsKey!2124 (List!51166 K!12410) Bool)

(assert (=> b!4594144 (= lt!1755118 (not (containsKey!2124 (_2!29128 (h!56999 (toList!4623 lm!1477))) key!3287)))))

(declare-fun b!4594145 () Bool)

(declare-fun res!1921114 () Bool)

(assert (=> b!4594145 (=> res!1921114 e!2865490)))

(get-info :version)

(assert (=> b!4594145 (= res!1921114 (or ((_ is Nil!51043) (toList!4623 lm!1477)) (not (= (_1!29128 (h!56999 (toList!4623 lm!1477))) hash!344))))))

(declare-fun tp!1340237 () Bool)

(declare-fun tp_is_empty!28511 () Bool)

(declare-fun e!2865483 () Bool)

(declare-fun tp_is_empty!28509 () Bool)

(declare-fun b!4594146 () Bool)

(assert (=> b!4594146 (= e!2865483 (and tp_is_empty!28509 tp_is_empty!28511 tp!1340237))))

(declare-fun res!1921120 () Bool)

(assert (=> start!458056 (=> (not res!1921120) (not e!2865486))))

(declare-fun lambda!185390 () Int)

(declare-fun forall!10570 (List!51167 Int) Bool)

(assert (=> start!458056 (= res!1921120 (forall!10570 (toList!4623 lm!1477) lambda!185390))))

(assert (=> start!458056 e!2865486))

(assert (=> start!458056 true))

(declare-fun inv!66594 (ListLongMap!3255) Bool)

(assert (=> start!458056 (and (inv!66594 lm!1477) e!2865484)))

(assert (=> start!458056 tp_is_empty!28509))

(assert (=> start!458056 e!2865483))

(declare-fun b!4594147 () Bool)

(declare-fun e!2865485 () Bool)

(assert (=> b!4594147 (= e!2865487 e!2865485)))

(declare-fun res!1921113 () Bool)

(assert (=> b!4594147 (=> res!1921113 e!2865485)))

(declare-fun lt!1755120 () List!51167)

(declare-fun containsKeyBiggerList!260 (List!51167 K!12410) Bool)

(assert (=> b!4594147 (= res!1921113 (not (containsKeyBiggerList!260 lt!1755120 key!3287)))))

(assert (=> b!4594147 (= lt!1755120 (Cons!51043 (h!56999 (toList!4623 lm!1477)) Nil!51043))))

(declare-fun b!4594148 () Bool)

(assert (=> b!4594148 (= e!2865489 (not e!2865490))))

(declare-fun res!1921119 () Bool)

(assert (=> b!4594148 (=> res!1921119 e!2865490)))

(declare-fun lt!1755115 () List!51166)

(declare-fun removePairForKey!929 (List!51166 K!12410) List!51166)

(assert (=> b!4594148 (= res!1921119 (not (= newBucket!178 (removePairForKey!929 lt!1755115 key!3287))))))

(declare-fun lt!1755122 () Unit!107672)

(declare-fun lt!1755113 () tuple2!51668)

(declare-fun forallContained!2825 (List!51167 Int tuple2!51668) Unit!107672)

(assert (=> b!4594148 (= lt!1755122 (forallContained!2825 (toList!4623 lm!1477) lambda!185390 lt!1755113))))

(declare-fun contains!13973 (List!51167 tuple2!51668) Bool)

(assert (=> b!4594148 (contains!13973 (toList!4623 lm!1477) lt!1755113)))

(assert (=> b!4594148 (= lt!1755113 (tuple2!51669 hash!344 lt!1755115))))

(declare-fun lt!1755112 () Unit!107672)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!814 (List!51167 (_ BitVec 64) List!51166) Unit!107672)

(assert (=> b!4594148 (= lt!1755112 (lemmaGetValueByKeyImpliesContainsTuple!814 (toList!4623 lm!1477) hash!344 lt!1755115))))

(declare-fun apply!12041 (ListLongMap!3255 (_ BitVec 64)) List!51166)

(assert (=> b!4594148 (= lt!1755115 (apply!12041 lm!1477 hash!344))))

(declare-fun contains!13974 (ListLongMap!3255 (_ BitVec 64)) Bool)

(assert (=> b!4594148 (contains!13974 lm!1477 lt!1755117)))

(declare-fun lt!1755121 () Unit!107672)

(declare-fun lemmaInGenMapThenLongMapContainsHash!378 (ListLongMap!3255 K!12410 Hashable!5703) Unit!107672)

(assert (=> b!4594148 (= lt!1755121 (lemmaInGenMapThenLongMapContainsHash!378 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4594149 () Bool)

(declare-fun res!1921118 () Bool)

(assert (=> b!4594149 (=> (not res!1921118) (not e!2865489))))

(declare-fun allKeysSameHash!1160 (List!51166 (_ BitVec 64) Hashable!5703) Bool)

(assert (=> b!4594149 (= res!1921118 (allKeysSameHash!1160 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4594150 () Bool)

(declare-fun res!1921117 () Bool)

(assert (=> b!4594150 (=> (not res!1921117) (not e!2865486))))

(declare-datatypes ((ListMap!3885 0))(
  ( (ListMap!3886 (toList!4624 List!51166)) )
))
(declare-fun contains!13975 (ListMap!3885 K!12410) Bool)

(declare-fun extractMap!1364 (List!51167) ListMap!3885)

(assert (=> b!4594150 (= res!1921117 (contains!13975 (extractMap!1364 (toList!4623 lm!1477)) key!3287))))

(declare-fun b!4594151 () Bool)

(assert (=> b!4594151 (= e!2865485 true)))

(declare-fun lt!1755114 () Bool)

(assert (=> b!4594151 (= lt!1755114 (noDuplicateKeys!1304 (_2!29128 (h!56999 (toList!4623 lm!1477)))))))

(assert (=> b!4594151 (contains!13975 (extractMap!1364 lt!1755120) key!3287)))

(declare-fun lt!1755123 () Unit!107672)

(declare-fun lemmaListContainsThenExtractedMapContains!238 (ListLongMap!3255 K!12410 Hashable!5703) Unit!107672)

(assert (=> b!4594151 (= lt!1755123 (lemmaListContainsThenExtractedMapContains!238 (ListLongMap!3256 lt!1755120) key!3287 hashF!1107))))

(declare-fun b!4594152 () Bool)

(declare-fun res!1921116 () Bool)

(assert (=> b!4594152 (=> (not res!1921116) (not e!2865486))))

(declare-fun allKeysSameHashInMap!1415 (ListLongMap!3255 Hashable!5703) Bool)

(assert (=> b!4594152 (= res!1921116 (allKeysSameHashInMap!1415 lm!1477 hashF!1107))))

(assert (= (and start!458056 res!1921120) b!4594152))

(assert (= (and b!4594152 res!1921116) b!4594150))

(assert (= (and b!4594150 res!1921117) b!4594141))

(assert (= (and b!4594141 res!1921122) b!4594149))

(assert (= (and b!4594149 res!1921118) b!4594148))

(assert (= (and b!4594148 (not res!1921119)) b!4594140))

(assert (= (and b!4594140 (not res!1921115)) b!4594145))

(assert (= (and b!4594145 (not res!1921114)) b!4594144))

(assert (= (and b!4594144 c!786746) b!4594143))

(assert (= (and b!4594144 (not c!786746)) b!4594142))

(assert (= (and b!4594144 (not res!1921121)) b!4594147))

(assert (= (and b!4594147 (not res!1921113)) b!4594151))

(assert (= start!458056 b!4594139))

(assert (= (and start!458056 ((_ is Cons!51042) newBucket!178)) b!4594146))

(declare-fun m!5418095 () Bool)

(assert (=> b!4594143 m!5418095))

(declare-fun m!5418097 () Bool)

(assert (=> b!4594147 m!5418097))

(declare-fun m!5418099 () Bool)

(assert (=> b!4594144 m!5418099))

(declare-fun m!5418101 () Bool)

(assert (=> b!4594152 m!5418101))

(declare-fun m!5418103 () Bool)

(assert (=> b!4594140 m!5418103))

(declare-fun m!5418105 () Bool)

(assert (=> b!4594148 m!5418105))

(declare-fun m!5418107 () Bool)

(assert (=> b!4594148 m!5418107))

(declare-fun m!5418109 () Bool)

(assert (=> b!4594148 m!5418109))

(declare-fun m!5418111 () Bool)

(assert (=> b!4594148 m!5418111))

(declare-fun m!5418113 () Bool)

(assert (=> b!4594148 m!5418113))

(declare-fun m!5418115 () Bool)

(assert (=> b!4594148 m!5418115))

(declare-fun m!5418117 () Bool)

(assert (=> b!4594148 m!5418117))

(declare-fun m!5418119 () Bool)

(assert (=> b!4594141 m!5418119))

(declare-fun m!5418121 () Bool)

(assert (=> b!4594150 m!5418121))

(assert (=> b!4594150 m!5418121))

(declare-fun m!5418123 () Bool)

(assert (=> b!4594150 m!5418123))

(declare-fun m!5418125 () Bool)

(assert (=> start!458056 m!5418125))

(declare-fun m!5418127 () Bool)

(assert (=> start!458056 m!5418127))

(declare-fun m!5418129 () Bool)

(assert (=> b!4594149 m!5418129))

(declare-fun m!5418131 () Bool)

(assert (=> b!4594151 m!5418131))

(declare-fun m!5418133 () Bool)

(assert (=> b!4594151 m!5418133))

(assert (=> b!4594151 m!5418133))

(declare-fun m!5418135 () Bool)

(assert (=> b!4594151 m!5418135))

(declare-fun m!5418137 () Bool)

(assert (=> b!4594151 m!5418137))

(check-sat (not b!4594148) (not b!4594139) (not b!4594152) (not b!4594151) (not b!4594140) (not b!4594150) (not b!4594143) tp_is_empty!28509 (not b!4594147) (not b!4594141) (not start!458056) tp_is_empty!28511 (not b!4594144) (not b!4594149) (not b!4594146))
(check-sat)
