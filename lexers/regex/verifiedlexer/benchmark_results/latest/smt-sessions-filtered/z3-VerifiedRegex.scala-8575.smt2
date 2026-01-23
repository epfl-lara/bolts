; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!454364 () Bool)

(assert start!454364)

(declare-fun b!4566078 () Bool)

(declare-fun e!2846580 () Bool)

(declare-fun e!2846578 () Bool)

(assert (=> b!4566078 (= e!2846580 e!2846578)))

(declare-fun res!1906058 () Bool)

(assert (=> b!4566078 (=> res!1906058 e!2846578)))

(declare-fun lt!1735185 () Bool)

(assert (=> b!4566078 (= res!1906058 lt!1735185)))

(declare-datatypes ((Unit!103233 0))(
  ( (Unit!103234) )
))
(declare-fun lt!1735193 () Unit!103233)

(declare-fun e!2846584 () Unit!103233)

(assert (=> b!4566078 (= lt!1735193 e!2846584)))

(declare-fun c!780846 () Bool)

(assert (=> b!4566078 (= c!780846 lt!1735185)))

(declare-datatypes ((K!12280 0))(
  ( (K!12281 (val!18095 Int)) )
))
(declare-datatypes ((V!12526 0))(
  ( (V!12527 (val!18096 Int)) )
))
(declare-datatypes ((tuple2!51458 0))(
  ( (tuple2!51459 (_1!29023 K!12280) (_2!29023 V!12526)) )
))
(declare-datatypes ((List!51028 0))(
  ( (Nil!50904) (Cons!50904 (h!56825 tuple2!51458) (t!358006 List!51028)) )
))
(declare-fun lt!1735181 () List!51028)

(declare-fun key!3287 () K!12280)

(declare-fun containsKey!2010 (List!51028 K!12280) Bool)

(assert (=> b!4566078 (= lt!1735185 (not (containsKey!2010 lt!1735181 key!3287)))))

(declare-fun b!4566079 () Bool)

(declare-fun e!2846587 () Bool)

(assert (=> b!4566079 (= e!2846578 e!2846587)))

(declare-fun res!1906047 () Bool)

(assert (=> b!4566079 (=> res!1906047 e!2846587)))

(declare-datatypes ((tuple2!51460 0))(
  ( (tuple2!51461 (_1!29024 (_ BitVec 64)) (_2!29024 List!51028)) )
))
(declare-datatypes ((List!51029 0))(
  ( (Nil!50905) (Cons!50905 (h!56826 tuple2!51460) (t!358007 List!51029)) )
))
(declare-datatypes ((ListLongMap!3151 0))(
  ( (ListLongMap!3152 (toList!4519 List!51029)) )
))
(declare-fun lm!1477 () ListLongMap!3151)

(declare-fun containsKeyBiggerList!226 (List!51029 K!12280) Bool)

(assert (=> b!4566079 (= res!1906047 (not (containsKeyBiggerList!226 (t!358007 (toList!4519 lm!1477)) key!3287)))))

(declare-fun lt!1735178 () ListLongMap!3151)

(assert (=> b!4566079 (containsKeyBiggerList!226 (toList!4519 lt!1735178) key!3287)))

(declare-datatypes ((Hashable!5651 0))(
  ( (HashableExt!5650 (__x!31354 Int)) )
))
(declare-fun hashF!1107 () Hashable!5651)

(declare-fun lt!1735191 () Unit!103233)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!138 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> b!4566079 (= lt!1735191 (lemmaInLongMapThenContainsKeyBiggerList!138 lt!1735178 key!3287 hashF!1107))))

(declare-fun b!4566080 () Bool)

(declare-fun res!1906049 () Bool)

(declare-fun e!2846589 () Bool)

(assert (=> b!4566080 (=> res!1906049 e!2846589)))

(declare-datatypes ((ListMap!3781 0))(
  ( (ListMap!3782 (toList!4520 List!51028)) )
))
(declare-fun lt!1735194 () ListMap!3781)

(declare-fun lt!1735190 () ListMap!3781)

(declare-fun eq!695 (ListMap!3781 ListMap!3781) Bool)

(assert (=> b!4566080 (= res!1906049 (not (eq!695 lt!1735194 lt!1735190)))))

(declare-fun b!4566081 () Bool)

(declare-fun res!1906052 () Bool)

(declare-fun e!2846588 () Bool)

(assert (=> b!4566081 (=> res!1906052 e!2846588)))

(declare-fun newBucket!178 () List!51028)

(declare-fun noDuplicateKeys!1256 (List!51028) Bool)

(assert (=> b!4566081 (= res!1906052 (not (noDuplicateKeys!1256 newBucket!178)))))

(declare-fun res!1906051 () Bool)

(declare-fun e!2846586 () Bool)

(assert (=> start!454364 (=> (not res!1906051) (not e!2846586))))

(declare-fun lambda!180879 () Int)

(declare-fun forall!10462 (List!51029 Int) Bool)

(assert (=> start!454364 (= res!1906051 (forall!10462 (toList!4519 lm!1477) lambda!180879))))

(assert (=> start!454364 e!2846586))

(assert (=> start!454364 true))

(declare-fun e!2846581 () Bool)

(declare-fun inv!66464 (ListLongMap!3151) Bool)

(assert (=> start!454364 (and (inv!66464 lm!1477) e!2846581)))

(declare-fun tp_is_empty!28301 () Bool)

(assert (=> start!454364 tp_is_empty!28301))

(declare-fun e!2846579 () Bool)

(assert (=> start!454364 e!2846579))

(declare-fun b!4566082 () Bool)

(declare-fun Unit!103235 () Unit!103233)

(assert (=> b!4566082 (= e!2846584 Unit!103235)))

(declare-fun lt!1735183 () Unit!103233)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!238 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> b!4566082 (= lt!1735183 (lemmaNotInItsHashBucketThenNotInMap!238 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4566082 false))

(declare-fun b!4566083 () Bool)

(declare-fun res!1906046 () Bool)

(assert (=> b!4566083 (=> res!1906046 e!2846580)))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11993 (ListLongMap!3151 (_ BitVec 64)) List!51028)

(assert (=> b!4566083 (= res!1906046 (not (= (apply!11993 lt!1735178 hash!344) lt!1735181)))))

(declare-fun b!4566084 () Bool)

(declare-fun res!1906045 () Bool)

(assert (=> b!4566084 (=> res!1906045 e!2846588)))

(get-info :version)

(assert (=> b!4566084 (= res!1906045 (or ((_ is Nil!50905) (toList!4519 lm!1477)) (= (_1!29024 (h!56826 (toList!4519 lm!1477))) hash!344)))))

(declare-fun b!4566085 () Bool)

(declare-fun e!2846582 () Bool)

(assert (=> b!4566085 (= e!2846582 e!2846589)))

(declare-fun res!1906053 () Bool)

(assert (=> b!4566085 (=> res!1906053 e!2846589)))

(assert (=> b!4566085 (= res!1906053 (not (eq!695 lt!1735190 lt!1735194)))))

(declare-fun lt!1735192 () tuple2!51460)

(declare-fun extractMap!1312 (List!51029) ListMap!3781)

(declare-fun +!1678 (ListLongMap!3151 tuple2!51460) ListLongMap!3151)

(assert (=> b!4566085 (= lt!1735190 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))

(declare-fun head!9508 (ListLongMap!3151) tuple2!51460)

(assert (=> b!4566085 (= lt!1735192 (head!9508 lm!1477))))

(declare-fun lt!1735189 () ListMap!3781)

(declare-fun -!464 (ListMap!3781 K!12280) ListMap!3781)

(assert (=> b!4566085 (eq!695 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) (-!464 lt!1735189 key!3287))))

(declare-fun lt!1735184 () Unit!103233)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!203 (ListLongMap!3151 (_ BitVec 64) List!51028 K!12280 Hashable!5651) Unit!103233)

(assert (=> b!4566085 (= lt!1735184 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!203 lt!1735178 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4566086 () Bool)

(declare-fun res!1906056 () Bool)

(declare-fun e!2846583 () Bool)

(assert (=> b!4566086 (=> (not res!1906056) (not e!2846583))))

(declare-fun allKeysSameHash!1110 (List!51028 (_ BitVec 64) Hashable!5651) Bool)

(assert (=> b!4566086 (= res!1906056 (allKeysSameHash!1110 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4566087 () Bool)

(assert (=> b!4566087 (= e!2846587 e!2846582)))

(declare-fun res!1906059 () Bool)

(assert (=> b!4566087 (=> res!1906059 e!2846582)))

(declare-fun contains!13773 (ListMap!3781 K!12280) Bool)

(assert (=> b!4566087 (= res!1906059 (not (contains!13773 (extractMap!1312 (t!358007 (toList!4519 lm!1477))) key!3287)))))

(assert (=> b!4566087 (contains!13773 lt!1735189 key!3287)))

(assert (=> b!4566087 (= lt!1735189 (extractMap!1312 (toList!4519 lt!1735178)))))

(declare-fun lt!1735186 () Unit!103233)

(declare-fun lemmaListContainsThenExtractedMapContains!212 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> b!4566087 (= lt!1735186 (lemmaListContainsThenExtractedMapContains!212 lt!1735178 key!3287 hashF!1107))))

(declare-fun b!4566088 () Bool)

(declare-fun res!1906055 () Bool)

(assert (=> b!4566088 (=> (not res!1906055) (not e!2846586))))

(declare-fun allKeysSameHashInMap!1363 (ListLongMap!3151 Hashable!5651) Bool)

(assert (=> b!4566088 (= res!1906055 (allKeysSameHashInMap!1363 lm!1477 hashF!1107))))

(declare-fun b!4566089 () Bool)

(assert (=> b!4566089 (= e!2846588 e!2846580)))

(declare-fun res!1906050 () Bool)

(assert (=> b!4566089 (=> res!1906050 e!2846580)))

(declare-fun contains!13774 (ListLongMap!3151 (_ BitVec 64)) Bool)

(assert (=> b!4566089 (= res!1906050 (not (contains!13774 lt!1735178 hash!344)))))

(declare-fun tail!7887 (ListLongMap!3151) ListLongMap!3151)

(assert (=> b!4566089 (= lt!1735178 (tail!7887 lm!1477))))

(declare-fun b!4566090 () Bool)

(declare-fun Unit!103236 () Unit!103233)

(assert (=> b!4566090 (= e!2846584 Unit!103236)))

(declare-fun b!4566091 () Bool)

(declare-fun e!2846585 () Bool)

(assert (=> b!4566091 (= e!2846586 e!2846585)))

(declare-fun res!1906044 () Bool)

(assert (=> b!4566091 (=> (not res!1906044) (not e!2846585))))

(assert (=> b!4566091 (= res!1906044 (contains!13773 lt!1735194 key!3287))))

(assert (=> b!4566091 (= lt!1735194 (extractMap!1312 (toList!4519 lm!1477)))))

(declare-fun tp!1339452 () Bool)

(declare-fun b!4566092 () Bool)

(declare-fun tp_is_empty!28303 () Bool)

(assert (=> b!4566092 (= e!2846579 (and tp_is_empty!28301 tp_is_empty!28303 tp!1339452))))

(declare-fun b!4566093 () Bool)

(assert (=> b!4566093 (= e!2846585 e!2846583)))

(declare-fun res!1906054 () Bool)

(assert (=> b!4566093 (=> (not res!1906054) (not e!2846583))))

(declare-fun lt!1735180 () (_ BitVec 64))

(assert (=> b!4566093 (= res!1906054 (= lt!1735180 hash!344))))

(declare-fun hash!3067 (Hashable!5651 K!12280) (_ BitVec 64))

(assert (=> b!4566093 (= lt!1735180 (hash!3067 hashF!1107 key!3287))))

(declare-fun b!4566094 () Bool)

(assert (=> b!4566094 (= e!2846583 (not e!2846588))))

(declare-fun res!1906048 () Bool)

(assert (=> b!4566094 (=> res!1906048 e!2846588)))

(declare-fun removePairForKey!883 (List!51028 K!12280) List!51028)

(assert (=> b!4566094 (= res!1906048 (not (= newBucket!178 (removePairForKey!883 lt!1735181 key!3287))))))

(declare-fun lt!1735187 () tuple2!51460)

(declare-fun lt!1735188 () Unit!103233)

(declare-fun forallContained!2723 (List!51029 Int tuple2!51460) Unit!103233)

(assert (=> b!4566094 (= lt!1735188 (forallContained!2723 (toList!4519 lm!1477) lambda!180879 lt!1735187))))

(declare-fun contains!13775 (List!51029 tuple2!51460) Bool)

(assert (=> b!4566094 (contains!13775 (toList!4519 lm!1477) lt!1735187)))

(assert (=> b!4566094 (= lt!1735187 (tuple2!51461 hash!344 lt!1735181))))

(declare-fun lt!1735182 () Unit!103233)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!768 (List!51029 (_ BitVec 64) List!51028) Unit!103233)

(assert (=> b!4566094 (= lt!1735182 (lemmaGetValueByKeyImpliesContainsTuple!768 (toList!4519 lm!1477) hash!344 lt!1735181))))

(assert (=> b!4566094 (= lt!1735181 (apply!11993 lm!1477 hash!344))))

(assert (=> b!4566094 (contains!13774 lm!1477 lt!1735180)))

(declare-fun lt!1735179 () Unit!103233)

(declare-fun lemmaInGenMapThenLongMapContainsHash!330 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> b!4566094 (= lt!1735179 (lemmaInGenMapThenLongMapContainsHash!330 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4566095 () Bool)

(assert (=> b!4566095 (= e!2846589 (bvslt (_1!29024 lt!1735192) hash!344))))

(declare-fun b!4566096 () Bool)

(declare-fun tp!1339453 () Bool)

(assert (=> b!4566096 (= e!2846581 tp!1339453)))

(declare-fun b!4566097 () Bool)

(declare-fun res!1906057 () Bool)

(assert (=> b!4566097 (=> res!1906057 e!2846580)))

(assert (=> b!4566097 (= res!1906057 (not (contains!13775 (t!358007 (toList!4519 lm!1477)) lt!1735187)))))

(assert (= (and start!454364 res!1906051) b!4566088))

(assert (= (and b!4566088 res!1906055) b!4566091))

(assert (= (and b!4566091 res!1906044) b!4566093))

(assert (= (and b!4566093 res!1906054) b!4566086))

(assert (= (and b!4566086 res!1906056) b!4566094))

(assert (= (and b!4566094 (not res!1906048)) b!4566081))

(assert (= (and b!4566081 (not res!1906052)) b!4566084))

(assert (= (and b!4566084 (not res!1906045)) b!4566089))

(assert (= (and b!4566089 (not res!1906050)) b!4566083))

(assert (= (and b!4566083 (not res!1906046)) b!4566097))

(assert (= (and b!4566097 (not res!1906057)) b!4566078))

(assert (= (and b!4566078 c!780846) b!4566082))

(assert (= (and b!4566078 (not c!780846)) b!4566090))

(assert (= (and b!4566078 (not res!1906058)) b!4566079))

(assert (= (and b!4566079 (not res!1906047)) b!4566087))

(assert (= (and b!4566087 (not res!1906059)) b!4566085))

(assert (= (and b!4566085 (not res!1906053)) b!4566080))

(assert (= (and b!4566080 (not res!1906049)) b!4566095))

(assert (= start!454364 b!4566096))

(assert (= (and start!454364 ((_ is Cons!50904) newBucket!178)) b!4566092))

(declare-fun m!5360689 () Bool)

(assert (=> b!4566094 m!5360689))

(declare-fun m!5360691 () Bool)

(assert (=> b!4566094 m!5360691))

(declare-fun m!5360693 () Bool)

(assert (=> b!4566094 m!5360693))

(declare-fun m!5360695 () Bool)

(assert (=> b!4566094 m!5360695))

(declare-fun m!5360697 () Bool)

(assert (=> b!4566094 m!5360697))

(declare-fun m!5360699 () Bool)

(assert (=> b!4566094 m!5360699))

(declare-fun m!5360701 () Bool)

(assert (=> b!4566094 m!5360701))

(declare-fun m!5360703 () Bool)

(assert (=> b!4566078 m!5360703))

(declare-fun m!5360705 () Bool)

(assert (=> b!4566093 m!5360705))

(declare-fun m!5360707 () Bool)

(assert (=> b!4566088 m!5360707))

(declare-fun m!5360709 () Bool)

(assert (=> b!4566083 m!5360709))

(declare-fun m!5360711 () Bool)

(assert (=> b!4566082 m!5360711))

(declare-fun m!5360713 () Bool)

(assert (=> start!454364 m!5360713))

(declare-fun m!5360715 () Bool)

(assert (=> start!454364 m!5360715))

(declare-fun m!5360717 () Bool)

(assert (=> b!4566091 m!5360717))

(declare-fun m!5360719 () Bool)

(assert (=> b!4566091 m!5360719))

(declare-fun m!5360721 () Bool)

(assert (=> b!4566080 m!5360721))

(declare-fun m!5360723 () Bool)

(assert (=> b!4566079 m!5360723))

(declare-fun m!5360725 () Bool)

(assert (=> b!4566079 m!5360725))

(declare-fun m!5360727 () Bool)

(assert (=> b!4566079 m!5360727))

(declare-fun m!5360729 () Bool)

(assert (=> b!4566087 m!5360729))

(declare-fun m!5360731 () Bool)

(assert (=> b!4566087 m!5360731))

(declare-fun m!5360733 () Bool)

(assert (=> b!4566087 m!5360733))

(assert (=> b!4566087 m!5360731))

(declare-fun m!5360735 () Bool)

(assert (=> b!4566087 m!5360735))

(declare-fun m!5360737 () Bool)

(assert (=> b!4566087 m!5360737))

(declare-fun m!5360739 () Bool)

(assert (=> b!4566086 m!5360739))

(declare-fun m!5360741 () Bool)

(assert (=> b!4566089 m!5360741))

(declare-fun m!5360743 () Bool)

(assert (=> b!4566089 m!5360743))

(declare-fun m!5360745 () Bool)

(assert (=> b!4566081 m!5360745))

(declare-fun m!5360747 () Bool)

(assert (=> b!4566085 m!5360747))

(declare-fun m!5360749 () Bool)

(assert (=> b!4566085 m!5360749))

(declare-fun m!5360751 () Bool)

(assert (=> b!4566085 m!5360751))

(declare-fun m!5360753 () Bool)

(assert (=> b!4566085 m!5360753))

(declare-fun m!5360755 () Bool)

(assert (=> b!4566085 m!5360755))

(declare-fun m!5360757 () Bool)

(assert (=> b!4566085 m!5360757))

(declare-fun m!5360759 () Bool)

(assert (=> b!4566085 m!5360759))

(assert (=> b!4566085 m!5360747))

(assert (=> b!4566085 m!5360749))

(declare-fun m!5360761 () Bool)

(assert (=> b!4566085 m!5360761))

(declare-fun m!5360763 () Bool)

(assert (=> b!4566085 m!5360763))

(declare-fun m!5360765 () Bool)

(assert (=> b!4566097 m!5360765))

(check-sat (not b!4566078) (not b!4566079) (not start!454364) tp_is_empty!28301 (not b!4566092) (not b!4566096) (not b!4566088) (not b!4566081) tp_is_empty!28303 (not b!4566097) (not b!4566087) (not b!4566082) (not b!4566094) (not b!4566085) (not b!4566080) (not b!4566086) (not b!4566083) (not b!4566089) (not b!4566091) (not b!4566093))
(check-sat)
(get-model)

(declare-fun d!1423256 () Bool)

(declare-fun e!2846595 () Bool)

(assert (=> d!1423256 e!2846595))

(declare-fun res!1906071 () Bool)

(assert (=> d!1423256 (=> (not res!1906071) (not e!2846595))))

(declare-fun lt!1735216 () ListLongMap!3151)

(assert (=> d!1423256 (= res!1906071 (contains!13774 lt!1735216 (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun lt!1735218 () List!51029)

(assert (=> d!1423256 (= lt!1735216 (ListLongMap!3152 lt!1735218))))

(declare-fun lt!1735217 () Unit!103233)

(declare-fun lt!1735215 () Unit!103233)

(assert (=> d!1423256 (= lt!1735217 lt!1735215)))

(declare-datatypes ((Option!11294 0))(
  ( (None!11293) (Some!11293 (v!45123 List!51028)) )
))
(declare-fun getValueByKey!1226 (List!51029 (_ BitVec 64)) Option!11294)

(assert (=> d!1423256 (= (getValueByKey!1226 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178))) (Some!11293 (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun lemmaContainsTupThenGetReturnValue!758 (List!51029 (_ BitVec 64) List!51028) Unit!103233)

(assert (=> d!1423256 (= lt!1735215 (lemmaContainsTupThenGetReturnValue!758 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun insertStrictlySorted!464 (List!51029 (_ BitVec 64) List!51028) List!51029)

(assert (=> d!1423256 (= lt!1735218 (insertStrictlySorted!464 (toList!4519 lt!1735178) (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))

(assert (=> d!1423256 (= (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)) lt!1735216)))

(declare-fun b!4566108 () Bool)

(declare-fun res!1906070 () Bool)

(assert (=> b!4566108 (=> (not res!1906070) (not e!2846595))))

(assert (=> b!4566108 (= res!1906070 (= (getValueByKey!1226 (toList!4519 lt!1735216) (_1!29024 (tuple2!51461 hash!344 newBucket!178))) (Some!11293 (_2!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(declare-fun b!4566109 () Bool)

(assert (=> b!4566109 (= e!2846595 (contains!13775 (toList!4519 lt!1735216) (tuple2!51461 hash!344 newBucket!178)))))

(assert (= (and d!1423256 res!1906071) b!4566108))

(assert (= (and b!4566108 res!1906070) b!4566109))

(declare-fun m!5360779 () Bool)

(assert (=> d!1423256 m!5360779))

(declare-fun m!5360781 () Bool)

(assert (=> d!1423256 m!5360781))

(declare-fun m!5360783 () Bool)

(assert (=> d!1423256 m!5360783))

(declare-fun m!5360785 () Bool)

(assert (=> d!1423256 m!5360785))

(declare-fun m!5360787 () Bool)

(assert (=> b!4566108 m!5360787))

(declare-fun m!5360789 () Bool)

(assert (=> b!4566109 m!5360789))

(assert (=> b!4566085 d!1423256))

(declare-fun d!1423262 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8544 (List!51028) (InoxSet tuple2!51458))

(assert (=> d!1423262 (= (eq!695 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) (-!464 lt!1735189 key!3287)) (= (content!8544 (toList!4520 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (content!8544 (toList!4520 (-!464 lt!1735189 key!3287)))))))

(declare-fun bs!946486 () Bool)

(assert (= bs!946486 d!1423262))

(declare-fun m!5360791 () Bool)

(assert (=> bs!946486 m!5360791))

(declare-fun m!5360793 () Bool)

(assert (=> bs!946486 m!5360793))

(assert (=> b!4566085 d!1423262))

(declare-fun d!1423264 () Bool)

(declare-fun e!2846596 () Bool)

(assert (=> d!1423264 e!2846596))

(declare-fun res!1906073 () Bool)

(assert (=> d!1423264 (=> (not res!1906073) (not e!2846596))))

(declare-fun lt!1735220 () ListLongMap!3151)

(assert (=> d!1423264 (= res!1906073 (contains!13774 lt!1735220 (_1!29024 lt!1735192)))))

(declare-fun lt!1735222 () List!51029)

(assert (=> d!1423264 (= lt!1735220 (ListLongMap!3152 lt!1735222))))

(declare-fun lt!1735221 () Unit!103233)

(declare-fun lt!1735219 () Unit!103233)

(assert (=> d!1423264 (= lt!1735221 lt!1735219)))

(assert (=> d!1423264 (= (getValueByKey!1226 lt!1735222 (_1!29024 lt!1735192)) (Some!11293 (_2!29024 lt!1735192)))))

(assert (=> d!1423264 (= lt!1735219 (lemmaContainsTupThenGetReturnValue!758 lt!1735222 (_1!29024 lt!1735192) (_2!29024 lt!1735192)))))

(assert (=> d!1423264 (= lt!1735222 (insertStrictlySorted!464 (toList!4519 lt!1735178) (_1!29024 lt!1735192) (_2!29024 lt!1735192)))))

(assert (=> d!1423264 (= (+!1678 lt!1735178 lt!1735192) lt!1735220)))

(declare-fun b!4566110 () Bool)

(declare-fun res!1906072 () Bool)

(assert (=> b!4566110 (=> (not res!1906072) (not e!2846596))))

(assert (=> b!4566110 (= res!1906072 (= (getValueByKey!1226 (toList!4519 lt!1735220) (_1!29024 lt!1735192)) (Some!11293 (_2!29024 lt!1735192))))))

(declare-fun b!4566111 () Bool)

(assert (=> b!4566111 (= e!2846596 (contains!13775 (toList!4519 lt!1735220) lt!1735192))))

(assert (= (and d!1423264 res!1906073) b!4566110))

(assert (= (and b!4566110 res!1906072) b!4566111))

(declare-fun m!5360795 () Bool)

(assert (=> d!1423264 m!5360795))

(declare-fun m!5360797 () Bool)

(assert (=> d!1423264 m!5360797))

(declare-fun m!5360799 () Bool)

(assert (=> d!1423264 m!5360799))

(declare-fun m!5360801 () Bool)

(assert (=> d!1423264 m!5360801))

(declare-fun m!5360803 () Bool)

(assert (=> b!4566110 m!5360803))

(declare-fun m!5360805 () Bool)

(assert (=> b!4566111 m!5360805))

(assert (=> b!4566085 d!1423264))

(declare-fun d!1423266 () Bool)

(declare-fun e!2846603 () Bool)

(assert (=> d!1423266 e!2846603))

(declare-fun res!1906078 () Bool)

(assert (=> d!1423266 (=> (not res!1906078) (not e!2846603))))

(declare-fun lt!1735234 () ListMap!3781)

(assert (=> d!1423266 (= res!1906078 (not (contains!13773 lt!1735234 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!197 (List!51028 K!12280) List!51028)

(assert (=> d!1423266 (= lt!1735234 (ListMap!3782 (removePresrvNoDuplicatedKeys!197 (toList!4520 lt!1735189) key!3287)))))

(assert (=> d!1423266 (= (-!464 lt!1735189 key!3287) lt!1735234)))

(declare-fun b!4566122 () Bool)

(declare-datatypes ((List!51031 0))(
  ( (Nil!50907) (Cons!50907 (h!56830 K!12280) (t!358009 List!51031)) )
))
(declare-fun content!8545 (List!51031) (InoxSet K!12280))

(declare-fun keys!17764 (ListMap!3781) List!51031)

(assert (=> b!4566122 (= e!2846603 (= ((_ map and) (content!8545 (keys!17764 lt!1735189)) ((_ map not) (store ((as const (Array K!12280 Bool)) false) key!3287 true))) (content!8545 (keys!17764 lt!1735234))))))

(assert (= (and d!1423266 res!1906078) b!4566122))

(declare-fun m!5360831 () Bool)

(assert (=> d!1423266 m!5360831))

(declare-fun m!5360833 () Bool)

(assert (=> d!1423266 m!5360833))

(declare-fun m!5360835 () Bool)

(assert (=> b!4566122 m!5360835))

(declare-fun m!5360837 () Bool)

(assert (=> b!4566122 m!5360837))

(declare-fun m!5360839 () Bool)

(assert (=> b!4566122 m!5360839))

(declare-fun m!5360841 () Bool)

(assert (=> b!4566122 m!5360841))

(assert (=> b!4566122 m!5360837))

(assert (=> b!4566122 m!5360835))

(declare-fun m!5360843 () Bool)

(assert (=> b!4566122 m!5360843))

(assert (=> b!4566085 d!1423266))

(declare-fun bs!946503 () Bool)

(declare-fun d!1423274 () Bool)

(assert (= bs!946503 (and d!1423274 start!454364)))

(declare-fun lambda!180892 () Int)

(assert (=> bs!946503 (= lambda!180892 lambda!180879)))

(declare-fun lt!1735257 () ListMap!3781)

(declare-fun invariantList!1083 (List!51028) Bool)

(assert (=> d!1423274 (invariantList!1083 (toList!4520 lt!1735257))))

(declare-fun e!2846628 () ListMap!3781)

(assert (=> d!1423274 (= lt!1735257 e!2846628)))

(declare-fun c!780859 () Bool)

(assert (=> d!1423274 (= c!780859 ((_ is Cons!50905) (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (=> d!1423274 (forall!10462 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))) lambda!180892)))

(assert (=> d!1423274 (= (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) lt!1735257)))

(declare-fun b!4566156 () Bool)

(declare-fun addToMapMapFromBucket!769 (List!51028 ListMap!3781) ListMap!3781)

(assert (=> b!4566156 (= e!2846628 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))

(declare-fun b!4566157 () Bool)

(assert (=> b!4566157 (= e!2846628 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423274 c!780859) b!4566156))

(assert (= (and d!1423274 (not c!780859)) b!4566157))

(declare-fun m!5360911 () Bool)

(assert (=> d!1423274 m!5360911))

(declare-fun m!5360913 () Bool)

(assert (=> d!1423274 m!5360913))

(declare-fun m!5360915 () Bool)

(assert (=> b!4566156 m!5360915))

(assert (=> b!4566156 m!5360915))

(declare-fun m!5360917 () Bool)

(assert (=> b!4566156 m!5360917))

(assert (=> b!4566085 d!1423274))

(declare-fun bs!946504 () Bool)

(declare-fun d!1423298 () Bool)

(assert (= bs!946504 (and d!1423298 start!454364)))

(declare-fun lambda!180893 () Int)

(assert (=> bs!946504 (= lambda!180893 lambda!180879)))

(declare-fun bs!946505 () Bool)

(assert (= bs!946505 (and d!1423298 d!1423274)))

(assert (=> bs!946505 (= lambda!180893 lambda!180892)))

(declare-fun lt!1735258 () ListMap!3781)

(assert (=> d!1423298 (invariantList!1083 (toList!4520 lt!1735258))))

(declare-fun e!2846629 () ListMap!3781)

(assert (=> d!1423298 (= lt!1735258 e!2846629)))

(declare-fun c!780860 () Bool)

(assert (=> d!1423298 (= c!780860 ((_ is Cons!50905) (toList!4519 (+!1678 lt!1735178 lt!1735192))))))

(assert (=> d!1423298 (forall!10462 (toList!4519 (+!1678 lt!1735178 lt!1735192)) lambda!180893)))

(assert (=> d!1423298 (= (extractMap!1312 (toList!4519 (+!1678 lt!1735178 lt!1735192))) lt!1735258)))

(declare-fun b!4566158 () Bool)

(assert (=> b!4566158 (= e!2846629 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))))

(declare-fun b!4566159 () Bool)

(assert (=> b!4566159 (= e!2846629 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423298 c!780860) b!4566158))

(assert (= (and d!1423298 (not c!780860)) b!4566159))

(declare-fun m!5360919 () Bool)

(assert (=> d!1423298 m!5360919))

(declare-fun m!5360921 () Bool)

(assert (=> d!1423298 m!5360921))

(declare-fun m!5360923 () Bool)

(assert (=> b!4566158 m!5360923))

(assert (=> b!4566158 m!5360923))

(declare-fun m!5360925 () Bool)

(assert (=> b!4566158 m!5360925))

(assert (=> b!4566085 d!1423298))

(declare-fun d!1423300 () Bool)

(assert (=> d!1423300 (= (eq!695 lt!1735190 lt!1735194) (= (content!8544 (toList!4520 lt!1735190)) (content!8544 (toList!4520 lt!1735194))))))

(declare-fun bs!946506 () Bool)

(assert (= bs!946506 d!1423300))

(declare-fun m!5360927 () Bool)

(assert (=> bs!946506 m!5360927))

(declare-fun m!5360929 () Bool)

(assert (=> bs!946506 m!5360929))

(assert (=> b!4566085 d!1423300))

(declare-fun d!1423302 () Bool)

(declare-fun head!9510 (List!51029) tuple2!51460)

(assert (=> d!1423302 (= (head!9508 lm!1477) (head!9510 (toList!4519 lm!1477)))))

(declare-fun bs!946508 () Bool)

(assert (= bs!946508 d!1423302))

(declare-fun m!5360939 () Bool)

(assert (=> bs!946508 m!5360939))

(assert (=> b!4566085 d!1423302))

(declare-fun bs!946538 () Bool)

(declare-fun d!1423308 () Bool)

(assert (= bs!946538 (and d!1423308 start!454364)))

(declare-fun lambda!180904 () Int)

(assert (=> bs!946538 (= lambda!180904 lambda!180879)))

(declare-fun bs!946539 () Bool)

(assert (= bs!946539 (and d!1423308 d!1423274)))

(assert (=> bs!946539 (= lambda!180904 lambda!180892)))

(declare-fun bs!946540 () Bool)

(assert (= bs!946540 (and d!1423308 d!1423298)))

(assert (=> bs!946540 (= lambda!180904 lambda!180893)))

(assert (=> d!1423308 (eq!695 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) (-!464 (extractMap!1312 (toList!4519 lt!1735178)) key!3287))))

(declare-fun lt!1735318 () Unit!103233)

(declare-fun choose!30323 (ListLongMap!3151 (_ BitVec 64) List!51028 K!12280 Hashable!5651) Unit!103233)

(assert (=> d!1423308 (= lt!1735318 (choose!30323 lt!1735178 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1423308 (forall!10462 (toList!4519 lt!1735178) lambda!180904)))

(assert (=> d!1423308 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!203 lt!1735178 hash!344 newBucket!178 key!3287 hashF!1107) lt!1735318)))

(declare-fun bs!946541 () Bool)

(assert (= bs!946541 d!1423308))

(declare-fun m!5361029 () Bool)

(assert (=> bs!946541 m!5361029))

(assert (=> bs!946541 m!5360735))

(declare-fun m!5361031 () Bool)

(assert (=> bs!946541 m!5361031))

(assert (=> bs!946541 m!5360747))

(assert (=> bs!946541 m!5360735))

(assert (=> bs!946541 m!5360747))

(assert (=> bs!946541 m!5361031))

(declare-fun m!5361037 () Bool)

(assert (=> bs!946541 m!5361037))

(declare-fun m!5361039 () Bool)

(assert (=> bs!946541 m!5361039))

(assert (=> bs!946541 m!5360755))

(assert (=> b!4566085 d!1423308))

(declare-fun bs!946555 () Bool)

(declare-fun d!1423334 () Bool)

(assert (= bs!946555 (and d!1423334 start!454364)))

(declare-fun lambda!180910 () Int)

(assert (=> bs!946555 (= lambda!180910 lambda!180879)))

(declare-fun bs!946556 () Bool)

(assert (= bs!946556 (and d!1423334 d!1423274)))

(assert (=> bs!946556 (= lambda!180910 lambda!180892)))

(declare-fun bs!946558 () Bool)

(assert (= bs!946558 (and d!1423334 d!1423298)))

(assert (=> bs!946558 (= lambda!180910 lambda!180893)))

(declare-fun bs!946560 () Bool)

(assert (= bs!946560 (and d!1423334 d!1423308)))

(assert (=> bs!946560 (= lambda!180910 lambda!180904)))

(assert (=> d!1423334 (contains!13774 lm!1477 (hash!3067 hashF!1107 key!3287))))

(declare-fun lt!1735329 () Unit!103233)

(declare-fun choose!30324 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> d!1423334 (= lt!1735329 (choose!30324 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1423334 (forall!10462 (toList!4519 lm!1477) lambda!180910)))

(assert (=> d!1423334 (= (lemmaInGenMapThenLongMapContainsHash!330 lm!1477 key!3287 hashF!1107) lt!1735329)))

(declare-fun bs!946567 () Bool)

(assert (= bs!946567 d!1423334))

(assert (=> bs!946567 m!5360705))

(assert (=> bs!946567 m!5360705))

(declare-fun m!5361073 () Bool)

(assert (=> bs!946567 m!5361073))

(declare-fun m!5361075 () Bool)

(assert (=> bs!946567 m!5361075))

(declare-fun m!5361077 () Bool)

(assert (=> bs!946567 m!5361077))

(assert (=> b!4566094 d!1423334))

(declare-fun d!1423350 () Bool)

(declare-fun lt!1735333 () Bool)

(declare-fun content!8546 (List!51029) (InoxSet tuple2!51460))

(assert (=> d!1423350 (= lt!1735333 (select (content!8546 (toList!4519 lm!1477)) lt!1735187))))

(declare-fun e!2846707 () Bool)

(assert (=> d!1423350 (= lt!1735333 e!2846707)))

(declare-fun res!1906150 () Bool)

(assert (=> d!1423350 (=> (not res!1906150) (not e!2846707))))

(assert (=> d!1423350 (= res!1906150 ((_ is Cons!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423350 (= (contains!13775 (toList!4519 lm!1477) lt!1735187) lt!1735333)))

(declare-fun b!4566261 () Bool)

(declare-fun e!2846708 () Bool)

(assert (=> b!4566261 (= e!2846707 e!2846708)))

(declare-fun res!1906149 () Bool)

(assert (=> b!4566261 (=> res!1906149 e!2846708)))

(assert (=> b!4566261 (= res!1906149 (= (h!56826 (toList!4519 lm!1477)) lt!1735187))))

(declare-fun b!4566262 () Bool)

(assert (=> b!4566262 (= e!2846708 (contains!13775 (t!358007 (toList!4519 lm!1477)) lt!1735187))))

(assert (= (and d!1423350 res!1906150) b!4566261))

(assert (= (and b!4566261 (not res!1906149)) b!4566262))

(declare-fun m!5361085 () Bool)

(assert (=> d!1423350 m!5361085))

(declare-fun m!5361087 () Bool)

(assert (=> d!1423350 m!5361087))

(assert (=> b!4566262 m!5360765))

(assert (=> b!4566094 d!1423350))

(declare-fun d!1423354 () Bool)

(declare-fun get!16780 (Option!11294) List!51028)

(assert (=> d!1423354 (= (apply!11993 lm!1477 hash!344) (get!16780 (getValueByKey!1226 (toList!4519 lm!1477) hash!344)))))

(declare-fun bs!946570 () Bool)

(assert (= bs!946570 d!1423354))

(declare-fun m!5361089 () Bool)

(assert (=> bs!946570 m!5361089))

(assert (=> bs!946570 m!5361089))

(declare-fun m!5361091 () Bool)

(assert (=> bs!946570 m!5361091))

(assert (=> b!4566094 d!1423354))

(declare-fun b!4566274 () Bool)

(declare-fun e!2846713 () List!51028)

(assert (=> b!4566274 (= e!2846713 Nil!50904)))

(declare-fun b!4566271 () Bool)

(declare-fun e!2846714 () List!51028)

(assert (=> b!4566271 (= e!2846714 (t!358006 lt!1735181))))

(declare-fun b!4566273 () Bool)

(assert (=> b!4566273 (= e!2846713 (Cons!50904 (h!56825 lt!1735181) (removePairForKey!883 (t!358006 lt!1735181) key!3287)))))

(declare-fun b!4566272 () Bool)

(assert (=> b!4566272 (= e!2846714 e!2846713)))

(declare-fun c!780887 () Bool)

(assert (=> b!4566272 (= c!780887 ((_ is Cons!50904) lt!1735181))))

(declare-fun d!1423356 () Bool)

(declare-fun lt!1735339 () List!51028)

(assert (=> d!1423356 (not (containsKey!2010 lt!1735339 key!3287))))

(assert (=> d!1423356 (= lt!1735339 e!2846714)))

(declare-fun c!780888 () Bool)

(assert (=> d!1423356 (= c!780888 (and ((_ is Cons!50904) lt!1735181) (= (_1!29023 (h!56825 lt!1735181)) key!3287)))))

(assert (=> d!1423356 (noDuplicateKeys!1256 lt!1735181)))

(assert (=> d!1423356 (= (removePairForKey!883 lt!1735181 key!3287) lt!1735339)))

(assert (= (and d!1423356 c!780888) b!4566271))

(assert (= (and d!1423356 (not c!780888)) b!4566272))

(assert (= (and b!4566272 c!780887) b!4566273))

(assert (= (and b!4566272 (not c!780887)) b!4566274))

(declare-fun m!5361099 () Bool)

(assert (=> b!4566273 m!5361099))

(declare-fun m!5361101 () Bool)

(assert (=> d!1423356 m!5361101))

(declare-fun m!5361103 () Bool)

(assert (=> d!1423356 m!5361103))

(assert (=> b!4566094 d!1423356))

(declare-fun d!1423360 () Bool)

(declare-fun dynLambda!21298 (Int tuple2!51460) Bool)

(assert (=> d!1423360 (dynLambda!21298 lambda!180879 lt!1735187)))

(declare-fun lt!1735342 () Unit!103233)

(declare-fun choose!30325 (List!51029 Int tuple2!51460) Unit!103233)

(assert (=> d!1423360 (= lt!1735342 (choose!30325 (toList!4519 lm!1477) lambda!180879 lt!1735187))))

(declare-fun e!2846723 () Bool)

(assert (=> d!1423360 e!2846723))

(declare-fun res!1906153 () Bool)

(assert (=> d!1423360 (=> (not res!1906153) (not e!2846723))))

(assert (=> d!1423360 (= res!1906153 (forall!10462 (toList!4519 lm!1477) lambda!180879))))

(assert (=> d!1423360 (= (forallContained!2723 (toList!4519 lm!1477) lambda!180879 lt!1735187) lt!1735342)))

(declare-fun b!4566291 () Bool)

(assert (=> b!4566291 (= e!2846723 (contains!13775 (toList!4519 lm!1477) lt!1735187))))

(assert (= (and d!1423360 res!1906153) b!4566291))

(declare-fun b_lambda!163119 () Bool)

(assert (=> (not b_lambda!163119) (not d!1423360)))

(declare-fun m!5361111 () Bool)

(assert (=> d!1423360 m!5361111))

(declare-fun m!5361113 () Bool)

(assert (=> d!1423360 m!5361113))

(assert (=> d!1423360 m!5360713))

(assert (=> b!4566291 m!5360701))

(assert (=> b!4566094 d!1423360))

(declare-fun d!1423366 () Bool)

(declare-fun e!2846728 () Bool)

(assert (=> d!1423366 e!2846728))

(declare-fun res!1906156 () Bool)

(assert (=> d!1423366 (=> res!1906156 e!2846728)))

(declare-fun lt!1735354 () Bool)

(assert (=> d!1423366 (= res!1906156 (not lt!1735354))))

(declare-fun lt!1735352 () Bool)

(assert (=> d!1423366 (= lt!1735354 lt!1735352)))

(declare-fun lt!1735353 () Unit!103233)

(declare-fun e!2846729 () Unit!103233)

(assert (=> d!1423366 (= lt!1735353 e!2846729)))

(declare-fun c!780891 () Bool)

(assert (=> d!1423366 (= c!780891 lt!1735352)))

(declare-fun containsKey!2013 (List!51029 (_ BitVec 64)) Bool)

(assert (=> d!1423366 (= lt!1735352 (containsKey!2013 (toList!4519 lm!1477) lt!1735180))))

(assert (=> d!1423366 (= (contains!13774 lm!1477 lt!1735180) lt!1735354)))

(declare-fun b!4566298 () Bool)

(declare-fun lt!1735351 () Unit!103233)

(assert (=> b!4566298 (= e!2846729 lt!1735351)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (List!51029 (_ BitVec 64)) Unit!103233)

(assert (=> b!4566298 (= lt!1735351 (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lm!1477) lt!1735180))))

(declare-fun isDefined!8566 (Option!11294) Bool)

(assert (=> b!4566298 (isDefined!8566 (getValueByKey!1226 (toList!4519 lm!1477) lt!1735180))))

(declare-fun b!4566299 () Bool)

(declare-fun Unit!103245 () Unit!103233)

(assert (=> b!4566299 (= e!2846729 Unit!103245)))

(declare-fun b!4566300 () Bool)

(assert (=> b!4566300 (= e!2846728 (isDefined!8566 (getValueByKey!1226 (toList!4519 lm!1477) lt!1735180)))))

(assert (= (and d!1423366 c!780891) b!4566298))

(assert (= (and d!1423366 (not c!780891)) b!4566299))

(assert (= (and d!1423366 (not res!1906156)) b!4566300))

(declare-fun m!5361115 () Bool)

(assert (=> d!1423366 m!5361115))

(declare-fun m!5361117 () Bool)

(assert (=> b!4566298 m!5361117))

(declare-fun m!5361119 () Bool)

(assert (=> b!4566298 m!5361119))

(assert (=> b!4566298 m!5361119))

(declare-fun m!5361121 () Bool)

(assert (=> b!4566298 m!5361121))

(assert (=> b!4566300 m!5361119))

(assert (=> b!4566300 m!5361119))

(assert (=> b!4566300 m!5361121))

(assert (=> b!4566094 d!1423366))

(declare-fun d!1423368 () Bool)

(assert (=> d!1423368 (contains!13775 (toList!4519 lm!1477) (tuple2!51461 hash!344 lt!1735181))))

(declare-fun lt!1735357 () Unit!103233)

(declare-fun choose!30326 (List!51029 (_ BitVec 64) List!51028) Unit!103233)

(assert (=> d!1423368 (= lt!1735357 (choose!30326 (toList!4519 lm!1477) hash!344 lt!1735181))))

(declare-fun e!2846732 () Bool)

(assert (=> d!1423368 e!2846732))

(declare-fun res!1906159 () Bool)

(assert (=> d!1423368 (=> (not res!1906159) (not e!2846732))))

(declare-fun isStrictlySorted!498 (List!51029) Bool)

(assert (=> d!1423368 (= res!1906159 (isStrictlySorted!498 (toList!4519 lm!1477)))))

(assert (=> d!1423368 (= (lemmaGetValueByKeyImpliesContainsTuple!768 (toList!4519 lm!1477) hash!344 lt!1735181) lt!1735357)))

(declare-fun b!4566303 () Bool)

(assert (=> b!4566303 (= e!2846732 (= (getValueByKey!1226 (toList!4519 lm!1477) hash!344) (Some!11293 lt!1735181)))))

(assert (= (and d!1423368 res!1906159) b!4566303))

(declare-fun m!5361123 () Bool)

(assert (=> d!1423368 m!5361123))

(declare-fun m!5361125 () Bool)

(assert (=> d!1423368 m!5361125))

(declare-fun m!5361127 () Bool)

(assert (=> d!1423368 m!5361127))

(assert (=> b!4566303 m!5361089))

(assert (=> b!4566094 d!1423368))

(declare-fun d!1423370 () Bool)

(assert (=> d!1423370 (= (apply!11993 lt!1735178 hash!344) (get!16780 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344)))))

(declare-fun bs!946586 () Bool)

(assert (= bs!946586 d!1423370))

(declare-fun m!5361129 () Bool)

(assert (=> bs!946586 m!5361129))

(assert (=> bs!946586 m!5361129))

(declare-fun m!5361131 () Bool)

(assert (=> bs!946586 m!5361131))

(assert (=> b!4566083 d!1423370))

(declare-fun bs!946587 () Bool)

(declare-fun d!1423372 () Bool)

(assert (= bs!946587 (and d!1423372 start!454364)))

(declare-fun lambda!180920 () Int)

(assert (=> bs!946587 (= lambda!180920 lambda!180879)))

(declare-fun bs!946588 () Bool)

(assert (= bs!946588 (and d!1423372 d!1423334)))

(assert (=> bs!946588 (= lambda!180920 lambda!180910)))

(declare-fun bs!946589 () Bool)

(assert (= bs!946589 (and d!1423372 d!1423298)))

(assert (=> bs!946589 (= lambda!180920 lambda!180893)))

(declare-fun bs!946590 () Bool)

(assert (= bs!946590 (and d!1423372 d!1423308)))

(assert (=> bs!946590 (= lambda!180920 lambda!180904)))

(declare-fun bs!946591 () Bool)

(assert (= bs!946591 (and d!1423372 d!1423274)))

(assert (=> bs!946591 (= lambda!180920 lambda!180892)))

(assert (=> d!1423372 (not (contains!13773 (extractMap!1312 (toList!4519 lm!1477)) key!3287))))

(declare-fun lt!1735360 () Unit!103233)

(declare-fun choose!30327 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> d!1423372 (= lt!1735360 (choose!30327 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1423372 (forall!10462 (toList!4519 lm!1477) lambda!180920)))

(assert (=> d!1423372 (= (lemmaNotInItsHashBucketThenNotInMap!238 lm!1477 key!3287 hashF!1107) lt!1735360)))

(declare-fun bs!946592 () Bool)

(assert (= bs!946592 d!1423372))

(assert (=> bs!946592 m!5360719))

(assert (=> bs!946592 m!5360719))

(declare-fun m!5361133 () Bool)

(assert (=> bs!946592 m!5361133))

(declare-fun m!5361135 () Bool)

(assert (=> bs!946592 m!5361135))

(declare-fun m!5361137 () Bool)

(assert (=> bs!946592 m!5361137))

(assert (=> b!4566082 d!1423372))

(declare-fun d!1423374 () Bool)

(declare-fun hash!3071 (Hashable!5651 K!12280) (_ BitVec 64))

(assert (=> d!1423374 (= (hash!3067 hashF!1107 key!3287) (hash!3071 hashF!1107 key!3287))))

(declare-fun bs!946593 () Bool)

(assert (= bs!946593 d!1423374))

(declare-fun m!5361139 () Bool)

(assert (=> bs!946593 m!5361139))

(assert (=> b!4566093 d!1423374))

(declare-fun b!4566322 () Bool)

(declare-fun e!2846745 () Unit!103233)

(declare-fun Unit!103246 () Unit!103233)

(assert (=> b!4566322 (= e!2846745 Unit!103246)))

(declare-fun b!4566323 () Bool)

(declare-fun e!2846746 () Bool)

(declare-fun contains!13777 (List!51031 K!12280) Bool)

(assert (=> b!4566323 (= e!2846746 (not (contains!13777 (keys!17764 lt!1735194) key!3287)))))

(declare-fun b!4566324 () Bool)

(declare-fun e!2846748 () Bool)

(assert (=> b!4566324 (= e!2846748 (contains!13777 (keys!17764 lt!1735194) key!3287))))

(declare-fun b!4566325 () Bool)

(declare-fun e!2846749 () List!51031)

(assert (=> b!4566325 (= e!2846749 (keys!17764 lt!1735194))))

(declare-fun d!1423376 () Bool)

(declare-fun e!2846747 () Bool)

(assert (=> d!1423376 e!2846747))

(declare-fun res!1906167 () Bool)

(assert (=> d!1423376 (=> res!1906167 e!2846747)))

(assert (=> d!1423376 (= res!1906167 e!2846746)))

(declare-fun res!1906166 () Bool)

(assert (=> d!1423376 (=> (not res!1906166) (not e!2846746))))

(declare-fun lt!1735384 () Bool)

(assert (=> d!1423376 (= res!1906166 (not lt!1735384))))

(declare-fun lt!1735378 () Bool)

(assert (=> d!1423376 (= lt!1735384 lt!1735378)))

(declare-fun lt!1735380 () Unit!103233)

(declare-fun e!2846750 () Unit!103233)

(assert (=> d!1423376 (= lt!1735380 e!2846750)))

(declare-fun c!780899 () Bool)

(assert (=> d!1423376 (= c!780899 lt!1735378)))

(declare-fun containsKey!2014 (List!51028 K!12280) Bool)

(assert (=> d!1423376 (= lt!1735378 (containsKey!2014 (toList!4520 lt!1735194) key!3287))))

(assert (=> d!1423376 (= (contains!13773 lt!1735194 key!3287) lt!1735384)))

(declare-fun b!4566326 () Bool)

(assert (=> b!4566326 false))

(declare-fun lt!1735383 () Unit!103233)

(declare-fun lt!1735382 () Unit!103233)

(assert (=> b!4566326 (= lt!1735383 lt!1735382)))

(assert (=> b!4566326 (containsKey!2014 (toList!4520 lt!1735194) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!530 (List!51028 K!12280) Unit!103233)

(assert (=> b!4566326 (= lt!1735382 (lemmaInGetKeysListThenContainsKey!530 (toList!4520 lt!1735194) key!3287))))

(declare-fun Unit!103247 () Unit!103233)

(assert (=> b!4566326 (= e!2846745 Unit!103247)))

(declare-fun bm!318575 () Bool)

(declare-fun call!318580 () Bool)

(assert (=> bm!318575 (= call!318580 (contains!13777 e!2846749 key!3287))))

(declare-fun c!780898 () Bool)

(assert (=> bm!318575 (= c!780898 c!780899)))

(declare-fun b!4566327 () Bool)

(assert (=> b!4566327 (= e!2846750 e!2846745)))

(declare-fun c!780900 () Bool)

(assert (=> b!4566327 (= c!780900 call!318580)))

(declare-fun b!4566328 () Bool)

(declare-fun getKeysList!531 (List!51028) List!51031)

(assert (=> b!4566328 (= e!2846749 (getKeysList!531 (toList!4520 lt!1735194)))))

(declare-fun b!4566329 () Bool)

(assert (=> b!4566329 (= e!2846747 e!2846748)))

(declare-fun res!1906168 () Bool)

(assert (=> b!4566329 (=> (not res!1906168) (not e!2846748))))

(declare-datatypes ((Option!11295 0))(
  ( (None!11294) (Some!11294 (v!45124 V!12526)) )
))
(declare-fun isDefined!8567 (Option!11295) Bool)

(declare-fun getValueByKey!1227 (List!51028 K!12280) Option!11295)

(assert (=> b!4566329 (= res!1906168 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735194) key!3287)))))

(declare-fun b!4566330 () Bool)

(declare-fun lt!1735379 () Unit!103233)

(assert (=> b!4566330 (= e!2846750 lt!1735379)))

(declare-fun lt!1735381 () Unit!103233)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (List!51028 K!12280) Unit!103233)

(assert (=> b!4566330 (= lt!1735381 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 lt!1735194) key!3287))))

(assert (=> b!4566330 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735194) key!3287))))

(declare-fun lt!1735377 () Unit!103233)

(assert (=> b!4566330 (= lt!1735377 lt!1735381)))

(declare-fun lemmaInListThenGetKeysListContains!527 (List!51028 K!12280) Unit!103233)

(assert (=> b!4566330 (= lt!1735379 (lemmaInListThenGetKeysListContains!527 (toList!4520 lt!1735194) key!3287))))

(assert (=> b!4566330 call!318580))

(assert (= (and d!1423376 c!780899) b!4566330))

(assert (= (and d!1423376 (not c!780899)) b!4566327))

(assert (= (and b!4566327 c!780900) b!4566326))

(assert (= (and b!4566327 (not c!780900)) b!4566322))

(assert (= (or b!4566330 b!4566327) bm!318575))

(assert (= (and bm!318575 c!780898) b!4566328))

(assert (= (and bm!318575 (not c!780898)) b!4566325))

(assert (= (and d!1423376 res!1906166) b!4566323))

(assert (= (and d!1423376 (not res!1906167)) b!4566329))

(assert (= (and b!4566329 res!1906168) b!4566324))

(declare-fun m!5361141 () Bool)

(assert (=> b!4566326 m!5361141))

(declare-fun m!5361143 () Bool)

(assert (=> b!4566326 m!5361143))

(declare-fun m!5361145 () Bool)

(assert (=> b!4566324 m!5361145))

(assert (=> b!4566324 m!5361145))

(declare-fun m!5361147 () Bool)

(assert (=> b!4566324 m!5361147))

(assert (=> b!4566325 m!5361145))

(declare-fun m!5361149 () Bool)

(assert (=> b!4566328 m!5361149))

(declare-fun m!5361151 () Bool)

(assert (=> bm!318575 m!5361151))

(declare-fun m!5361153 () Bool)

(assert (=> b!4566329 m!5361153))

(assert (=> b!4566329 m!5361153))

(declare-fun m!5361155 () Bool)

(assert (=> b!4566329 m!5361155))

(assert (=> b!4566323 m!5361145))

(assert (=> b!4566323 m!5361145))

(assert (=> b!4566323 m!5361147))

(assert (=> d!1423376 m!5361141))

(declare-fun m!5361157 () Bool)

(assert (=> b!4566330 m!5361157))

(assert (=> b!4566330 m!5361153))

(assert (=> b!4566330 m!5361153))

(assert (=> b!4566330 m!5361155))

(declare-fun m!5361159 () Bool)

(assert (=> b!4566330 m!5361159))

(assert (=> b!4566091 d!1423376))

(declare-fun bs!946594 () Bool)

(declare-fun d!1423378 () Bool)

(assert (= bs!946594 (and d!1423378 start!454364)))

(declare-fun lambda!180921 () Int)

(assert (=> bs!946594 (= lambda!180921 lambda!180879)))

(declare-fun bs!946595 () Bool)

(assert (= bs!946595 (and d!1423378 d!1423334)))

(assert (=> bs!946595 (= lambda!180921 lambda!180910)))

(declare-fun bs!946596 () Bool)

(assert (= bs!946596 (and d!1423378 d!1423298)))

(assert (=> bs!946596 (= lambda!180921 lambda!180893)))

(declare-fun bs!946597 () Bool)

(assert (= bs!946597 (and d!1423378 d!1423308)))

(assert (=> bs!946597 (= lambda!180921 lambda!180904)))

(declare-fun bs!946598 () Bool)

(assert (= bs!946598 (and d!1423378 d!1423372)))

(assert (=> bs!946598 (= lambda!180921 lambda!180920)))

(declare-fun bs!946599 () Bool)

(assert (= bs!946599 (and d!1423378 d!1423274)))

(assert (=> bs!946599 (= lambda!180921 lambda!180892)))

(declare-fun lt!1735385 () ListMap!3781)

(assert (=> d!1423378 (invariantList!1083 (toList!4520 lt!1735385))))

(declare-fun e!2846751 () ListMap!3781)

(assert (=> d!1423378 (= lt!1735385 e!2846751)))

(declare-fun c!780901 () Bool)

(assert (=> d!1423378 (= c!780901 ((_ is Cons!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423378 (forall!10462 (toList!4519 lm!1477) lambda!180921)))

(assert (=> d!1423378 (= (extractMap!1312 (toList!4519 lm!1477)) lt!1735385)))

(declare-fun b!4566331 () Bool)

(assert (=> b!4566331 (= e!2846751 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun b!4566332 () Bool)

(assert (=> b!4566332 (= e!2846751 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423378 c!780901) b!4566331))

(assert (= (and d!1423378 (not c!780901)) b!4566332))

(declare-fun m!5361161 () Bool)

(assert (=> d!1423378 m!5361161))

(declare-fun m!5361163 () Bool)

(assert (=> d!1423378 m!5361163))

(assert (=> b!4566331 m!5360731))

(assert (=> b!4566331 m!5360731))

(declare-fun m!5361165 () Bool)

(assert (=> b!4566331 m!5361165))

(assert (=> b!4566091 d!1423378))

(declare-fun d!1423380 () Bool)

(declare-fun res!1906173 () Bool)

(declare-fun e!2846756 () Bool)

(assert (=> d!1423380 (=> res!1906173 e!2846756)))

(assert (=> d!1423380 (= res!1906173 (not ((_ is Cons!50904) newBucket!178)))))

(assert (=> d!1423380 (= (noDuplicateKeys!1256 newBucket!178) e!2846756)))

(declare-fun b!4566337 () Bool)

(declare-fun e!2846757 () Bool)

(assert (=> b!4566337 (= e!2846756 e!2846757)))

(declare-fun res!1906174 () Bool)

(assert (=> b!4566337 (=> (not res!1906174) (not e!2846757))))

(assert (=> b!4566337 (= res!1906174 (not (containsKey!2010 (t!358006 newBucket!178) (_1!29023 (h!56825 newBucket!178)))))))

(declare-fun b!4566338 () Bool)

(assert (=> b!4566338 (= e!2846757 (noDuplicateKeys!1256 (t!358006 newBucket!178)))))

(assert (= (and d!1423380 (not res!1906173)) b!4566337))

(assert (= (and b!4566337 res!1906174) b!4566338))

(declare-fun m!5361167 () Bool)

(assert (=> b!4566337 m!5361167))

(declare-fun m!5361169 () Bool)

(assert (=> b!4566338 m!5361169))

(assert (=> b!4566081 d!1423380))

(declare-fun d!1423382 () Bool)

(declare-fun res!1906181 () Bool)

(declare-fun e!2846765 () Bool)

(assert (=> d!1423382 (=> res!1906181 e!2846765)))

(declare-fun e!2846764 () Bool)

(assert (=> d!1423382 (= res!1906181 e!2846764)))

(declare-fun res!1906183 () Bool)

(assert (=> d!1423382 (=> (not res!1906183) (not e!2846764))))

(assert (=> d!1423382 (= res!1906183 ((_ is Cons!50905) (t!358007 (toList!4519 lm!1477))))))

(assert (=> d!1423382 (= (containsKeyBiggerList!226 (t!358007 (toList!4519 lm!1477)) key!3287) e!2846765)))

(declare-fun b!4566345 () Bool)

(assert (=> b!4566345 (= e!2846764 (containsKey!2010 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(declare-fun b!4566346 () Bool)

(declare-fun e!2846766 () Bool)

(assert (=> b!4566346 (= e!2846765 e!2846766)))

(declare-fun res!1906182 () Bool)

(assert (=> b!4566346 (=> (not res!1906182) (not e!2846766))))

(assert (=> b!4566346 (= res!1906182 ((_ is Cons!50905) (t!358007 (toList!4519 lm!1477))))))

(declare-fun b!4566347 () Bool)

(assert (=> b!4566347 (= e!2846766 (containsKeyBiggerList!226 (t!358007 (t!358007 (toList!4519 lm!1477))) key!3287))))

(assert (= (and d!1423382 res!1906183) b!4566345))

(assert (= (and d!1423382 (not res!1906181)) b!4566346))

(assert (= (and b!4566346 res!1906182) b!4566347))

(declare-fun m!5361171 () Bool)

(assert (=> b!4566345 m!5361171))

(declare-fun m!5361173 () Bool)

(assert (=> b!4566347 m!5361173))

(assert (=> b!4566079 d!1423382))

(declare-fun d!1423384 () Bool)

(declare-fun res!1906184 () Bool)

(declare-fun e!2846768 () Bool)

(assert (=> d!1423384 (=> res!1906184 e!2846768)))

(declare-fun e!2846767 () Bool)

(assert (=> d!1423384 (= res!1906184 e!2846767)))

(declare-fun res!1906186 () Bool)

(assert (=> d!1423384 (=> (not res!1906186) (not e!2846767))))

(assert (=> d!1423384 (= res!1906186 ((_ is Cons!50905) (toList!4519 lt!1735178)))))

(assert (=> d!1423384 (= (containsKeyBiggerList!226 (toList!4519 lt!1735178) key!3287) e!2846768)))

(declare-fun b!4566348 () Bool)

(assert (=> b!4566348 (= e!2846767 (containsKey!2010 (_2!29024 (h!56826 (toList!4519 lt!1735178))) key!3287))))

(declare-fun b!4566349 () Bool)

(declare-fun e!2846769 () Bool)

(assert (=> b!4566349 (= e!2846768 e!2846769)))

(declare-fun res!1906185 () Bool)

(assert (=> b!4566349 (=> (not res!1906185) (not e!2846769))))

(assert (=> b!4566349 (= res!1906185 ((_ is Cons!50905) (toList!4519 lt!1735178)))))

(declare-fun b!4566350 () Bool)

(assert (=> b!4566350 (= e!2846769 (containsKeyBiggerList!226 (t!358007 (toList!4519 lt!1735178)) key!3287))))

(assert (= (and d!1423384 res!1906186) b!4566348))

(assert (= (and d!1423384 (not res!1906184)) b!4566349))

(assert (= (and b!4566349 res!1906185) b!4566350))

(declare-fun m!5361175 () Bool)

(assert (=> b!4566348 m!5361175))

(declare-fun m!5361177 () Bool)

(assert (=> b!4566350 m!5361177))

(assert (=> b!4566079 d!1423384))

(declare-fun bs!946600 () Bool)

(declare-fun d!1423386 () Bool)

(assert (= bs!946600 (and d!1423386 start!454364)))

(declare-fun lambda!180924 () Int)

(assert (=> bs!946600 (= lambda!180924 lambda!180879)))

(declare-fun bs!946601 () Bool)

(assert (= bs!946601 (and d!1423386 d!1423334)))

(assert (=> bs!946601 (= lambda!180924 lambda!180910)))

(declare-fun bs!946602 () Bool)

(assert (= bs!946602 (and d!1423386 d!1423378)))

(assert (=> bs!946602 (= lambda!180924 lambda!180921)))

(declare-fun bs!946603 () Bool)

(assert (= bs!946603 (and d!1423386 d!1423298)))

(assert (=> bs!946603 (= lambda!180924 lambda!180893)))

(declare-fun bs!946604 () Bool)

(assert (= bs!946604 (and d!1423386 d!1423308)))

(assert (=> bs!946604 (= lambda!180924 lambda!180904)))

(declare-fun bs!946605 () Bool)

(assert (= bs!946605 (and d!1423386 d!1423372)))

(assert (=> bs!946605 (= lambda!180924 lambda!180920)))

(declare-fun bs!946606 () Bool)

(assert (= bs!946606 (and d!1423386 d!1423274)))

(assert (=> bs!946606 (= lambda!180924 lambda!180892)))

(assert (=> d!1423386 (containsKeyBiggerList!226 (toList!4519 lt!1735178) key!3287)))

(declare-fun lt!1735388 () Unit!103233)

(declare-fun choose!30329 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> d!1423386 (= lt!1735388 (choose!30329 lt!1735178 key!3287 hashF!1107))))

(assert (=> d!1423386 (forall!10462 (toList!4519 lt!1735178) lambda!180924)))

(assert (=> d!1423386 (= (lemmaInLongMapThenContainsKeyBiggerList!138 lt!1735178 key!3287 hashF!1107) lt!1735388)))

(declare-fun bs!946607 () Bool)

(assert (= bs!946607 d!1423386))

(assert (=> bs!946607 m!5360725))

(declare-fun m!5361179 () Bool)

(assert (=> bs!946607 m!5361179))

(declare-fun m!5361181 () Bool)

(assert (=> bs!946607 m!5361181))

(assert (=> b!4566079 d!1423386))

(declare-fun d!1423388 () Bool)

(assert (=> d!1423388 (= (eq!695 lt!1735194 lt!1735190) (= (content!8544 (toList!4520 lt!1735194)) (content!8544 (toList!4520 lt!1735190))))))

(declare-fun bs!946608 () Bool)

(assert (= bs!946608 d!1423388))

(assert (=> bs!946608 m!5360929))

(assert (=> bs!946608 m!5360927))

(assert (=> b!4566080 d!1423388))

(declare-fun d!1423390 () Bool)

(declare-fun res!1906191 () Bool)

(declare-fun e!2846774 () Bool)

(assert (=> d!1423390 (=> res!1906191 e!2846774)))

(assert (=> d!1423390 (= res!1906191 ((_ is Nil!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423390 (= (forall!10462 (toList!4519 lm!1477) lambda!180879) e!2846774)))

(declare-fun b!4566355 () Bool)

(declare-fun e!2846775 () Bool)

(assert (=> b!4566355 (= e!2846774 e!2846775)))

(declare-fun res!1906192 () Bool)

(assert (=> b!4566355 (=> (not res!1906192) (not e!2846775))))

(assert (=> b!4566355 (= res!1906192 (dynLambda!21298 lambda!180879 (h!56826 (toList!4519 lm!1477))))))

(declare-fun b!4566356 () Bool)

(assert (=> b!4566356 (= e!2846775 (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180879))))

(assert (= (and d!1423390 (not res!1906191)) b!4566355))

(assert (= (and b!4566355 res!1906192) b!4566356))

(declare-fun b_lambda!163121 () Bool)

(assert (=> (not b_lambda!163121) (not b!4566355)))

(declare-fun m!5361183 () Bool)

(assert (=> b!4566355 m!5361183))

(declare-fun m!5361185 () Bool)

(assert (=> b!4566356 m!5361185))

(assert (=> start!454364 d!1423390))

(declare-fun d!1423392 () Bool)

(assert (=> d!1423392 (= (inv!66464 lm!1477) (isStrictlySorted!498 (toList!4519 lm!1477)))))

(declare-fun bs!946609 () Bool)

(assert (= bs!946609 d!1423392))

(assert (=> bs!946609 m!5361127))

(assert (=> start!454364 d!1423392))

(declare-fun d!1423394 () Bool)

(declare-fun res!1906197 () Bool)

(declare-fun e!2846780 () Bool)

(assert (=> d!1423394 (=> res!1906197 e!2846780)))

(assert (=> d!1423394 (= res!1906197 (and ((_ is Cons!50904) lt!1735181) (= (_1!29023 (h!56825 lt!1735181)) key!3287)))))

(assert (=> d!1423394 (= (containsKey!2010 lt!1735181 key!3287) e!2846780)))

(declare-fun b!4566361 () Bool)

(declare-fun e!2846781 () Bool)

(assert (=> b!4566361 (= e!2846780 e!2846781)))

(declare-fun res!1906198 () Bool)

(assert (=> b!4566361 (=> (not res!1906198) (not e!2846781))))

(assert (=> b!4566361 (= res!1906198 ((_ is Cons!50904) lt!1735181))))

(declare-fun b!4566362 () Bool)

(assert (=> b!4566362 (= e!2846781 (containsKey!2010 (t!358006 lt!1735181) key!3287))))

(assert (= (and d!1423394 (not res!1906197)) b!4566361))

(assert (= (and b!4566361 res!1906198) b!4566362))

(declare-fun m!5361187 () Bool)

(assert (=> b!4566362 m!5361187))

(assert (=> b!4566078 d!1423394))

(declare-fun d!1423396 () Bool)

(declare-fun e!2846782 () Bool)

(assert (=> d!1423396 e!2846782))

(declare-fun res!1906199 () Bool)

(assert (=> d!1423396 (=> res!1906199 e!2846782)))

(declare-fun lt!1735392 () Bool)

(assert (=> d!1423396 (= res!1906199 (not lt!1735392))))

(declare-fun lt!1735390 () Bool)

(assert (=> d!1423396 (= lt!1735392 lt!1735390)))

(declare-fun lt!1735391 () Unit!103233)

(declare-fun e!2846783 () Unit!103233)

(assert (=> d!1423396 (= lt!1735391 e!2846783)))

(declare-fun c!780902 () Bool)

(assert (=> d!1423396 (= c!780902 lt!1735390)))

(assert (=> d!1423396 (= lt!1735390 (containsKey!2013 (toList!4519 lt!1735178) hash!344))))

(assert (=> d!1423396 (= (contains!13774 lt!1735178 hash!344) lt!1735392)))

(declare-fun b!4566363 () Bool)

(declare-fun lt!1735389 () Unit!103233)

(assert (=> b!4566363 (= e!2846783 lt!1735389)))

(assert (=> b!4566363 (= lt!1735389 (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lt!1735178) hash!344))))

(assert (=> b!4566363 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344))))

(declare-fun b!4566364 () Bool)

(declare-fun Unit!103248 () Unit!103233)

(assert (=> b!4566364 (= e!2846783 Unit!103248)))

(declare-fun b!4566365 () Bool)

(assert (=> b!4566365 (= e!2846782 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344)))))

(assert (= (and d!1423396 c!780902) b!4566363))

(assert (= (and d!1423396 (not c!780902)) b!4566364))

(assert (= (and d!1423396 (not res!1906199)) b!4566365))

(declare-fun m!5361189 () Bool)

(assert (=> d!1423396 m!5361189))

(declare-fun m!5361191 () Bool)

(assert (=> b!4566363 m!5361191))

(assert (=> b!4566363 m!5361129))

(assert (=> b!4566363 m!5361129))

(declare-fun m!5361193 () Bool)

(assert (=> b!4566363 m!5361193))

(assert (=> b!4566365 m!5361129))

(assert (=> b!4566365 m!5361129))

(assert (=> b!4566365 m!5361193))

(assert (=> b!4566089 d!1423396))

(declare-fun d!1423398 () Bool)

(declare-fun tail!7889 (List!51029) List!51029)

(assert (=> d!1423398 (= (tail!7887 lm!1477) (ListLongMap!3152 (tail!7889 (toList!4519 lm!1477))))))

(declare-fun bs!946610 () Bool)

(assert (= bs!946610 d!1423398))

(declare-fun m!5361195 () Bool)

(assert (=> bs!946610 m!5361195))

(assert (=> b!4566089 d!1423398))

(declare-fun bs!946611 () Bool)

(declare-fun d!1423400 () Bool)

(assert (= bs!946611 (and d!1423400 start!454364)))

(declare-fun lambda!180925 () Int)

(assert (=> bs!946611 (= lambda!180925 lambda!180879)))

(declare-fun bs!946612 () Bool)

(assert (= bs!946612 (and d!1423400 d!1423334)))

(assert (=> bs!946612 (= lambda!180925 lambda!180910)))

(declare-fun bs!946613 () Bool)

(assert (= bs!946613 (and d!1423400 d!1423378)))

(assert (=> bs!946613 (= lambda!180925 lambda!180921)))

(declare-fun bs!946614 () Bool)

(assert (= bs!946614 (and d!1423400 d!1423298)))

(assert (=> bs!946614 (= lambda!180925 lambda!180893)))

(declare-fun bs!946615 () Bool)

(assert (= bs!946615 (and d!1423400 d!1423308)))

(assert (=> bs!946615 (= lambda!180925 lambda!180904)))

(declare-fun bs!946616 () Bool)

(assert (= bs!946616 (and d!1423400 d!1423372)))

(assert (=> bs!946616 (= lambda!180925 lambda!180920)))

(declare-fun bs!946617 () Bool)

(assert (= bs!946617 (and d!1423400 d!1423386)))

(assert (=> bs!946617 (= lambda!180925 lambda!180924)))

(declare-fun bs!946618 () Bool)

(assert (= bs!946618 (and d!1423400 d!1423274)))

(assert (=> bs!946618 (= lambda!180925 lambda!180892)))

(declare-fun lt!1735393 () ListMap!3781)

(assert (=> d!1423400 (invariantList!1083 (toList!4520 lt!1735393))))

(declare-fun e!2846784 () ListMap!3781)

(assert (=> d!1423400 (= lt!1735393 e!2846784)))

(declare-fun c!780903 () Bool)

(assert (=> d!1423400 (= c!780903 ((_ is Cons!50905) (toList!4519 lt!1735178)))))

(assert (=> d!1423400 (forall!10462 (toList!4519 lt!1735178) lambda!180925)))

(assert (=> d!1423400 (= (extractMap!1312 (toList!4519 lt!1735178)) lt!1735393)))

(declare-fun b!4566366 () Bool)

(assert (=> b!4566366 (= e!2846784 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 lt!1735178))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))))))

(declare-fun b!4566367 () Bool)

(assert (=> b!4566367 (= e!2846784 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423400 c!780903) b!4566366))

(assert (= (and d!1423400 (not c!780903)) b!4566367))

(declare-fun m!5361197 () Bool)

(assert (=> d!1423400 m!5361197))

(declare-fun m!5361199 () Bool)

(assert (=> d!1423400 m!5361199))

(declare-fun m!5361201 () Bool)

(assert (=> b!4566366 m!5361201))

(assert (=> b!4566366 m!5361201))

(declare-fun m!5361203 () Bool)

(assert (=> b!4566366 m!5361203))

(assert (=> b!4566087 d!1423400))

(declare-fun b!4566368 () Bool)

(declare-fun e!2846785 () Unit!103233)

(declare-fun Unit!103249 () Unit!103233)

(assert (=> b!4566368 (= e!2846785 Unit!103249)))

(declare-fun b!4566369 () Bool)

(declare-fun e!2846786 () Bool)

(assert (=> b!4566369 (= e!2846786 (not (contains!13777 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287)))))

(declare-fun b!4566370 () Bool)

(declare-fun e!2846788 () Bool)

(assert (=> b!4566370 (= e!2846788 (contains!13777 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(declare-fun b!4566371 () Bool)

(declare-fun e!2846789 () List!51031)

(assert (=> b!4566371 (= e!2846789 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun d!1423402 () Bool)

(declare-fun e!2846787 () Bool)

(assert (=> d!1423402 e!2846787))

(declare-fun res!1906201 () Bool)

(assert (=> d!1423402 (=> res!1906201 e!2846787)))

(assert (=> d!1423402 (= res!1906201 e!2846786)))

(declare-fun res!1906200 () Bool)

(assert (=> d!1423402 (=> (not res!1906200) (not e!2846786))))

(declare-fun lt!1735401 () Bool)

(assert (=> d!1423402 (= res!1906200 (not lt!1735401))))

(declare-fun lt!1735395 () Bool)

(assert (=> d!1423402 (= lt!1735401 lt!1735395)))

(declare-fun lt!1735397 () Unit!103233)

(declare-fun e!2846790 () Unit!103233)

(assert (=> d!1423402 (= lt!1735397 e!2846790)))

(declare-fun c!780905 () Bool)

(assert (=> d!1423402 (= c!780905 lt!1735395)))

(assert (=> d!1423402 (= lt!1735395 (containsKey!2014 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (=> d!1423402 (= (contains!13773 (extractMap!1312 (t!358007 (toList!4519 lm!1477))) key!3287) lt!1735401)))

(declare-fun b!4566372 () Bool)

(assert (=> b!4566372 false))

(declare-fun lt!1735400 () Unit!103233)

(declare-fun lt!1735399 () Unit!103233)

(assert (=> b!4566372 (= lt!1735400 lt!1735399)))

(assert (=> b!4566372 (containsKey!2014 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287)))

(assert (=> b!4566372 (= lt!1735399 (lemmaInGetKeysListThenContainsKey!530 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(declare-fun Unit!103250 () Unit!103233)

(assert (=> b!4566372 (= e!2846785 Unit!103250)))

(declare-fun bm!318576 () Bool)

(declare-fun call!318581 () Bool)

(assert (=> bm!318576 (= call!318581 (contains!13777 e!2846789 key!3287))))

(declare-fun c!780904 () Bool)

(assert (=> bm!318576 (= c!780904 c!780905)))

(declare-fun b!4566373 () Bool)

(assert (=> b!4566373 (= e!2846790 e!2846785)))

(declare-fun c!780906 () Bool)

(assert (=> b!4566373 (= c!780906 call!318581)))

(declare-fun b!4566374 () Bool)

(assert (=> b!4566374 (= e!2846789 (getKeysList!531 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))

(declare-fun b!4566375 () Bool)

(assert (=> b!4566375 (= e!2846787 e!2846788)))

(declare-fun res!1906202 () Bool)

(assert (=> b!4566375 (=> (not res!1906202) (not e!2846788))))

(assert (=> b!4566375 (= res!1906202 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287)))))

(declare-fun b!4566376 () Bool)

(declare-fun lt!1735396 () Unit!103233)

(assert (=> b!4566376 (= e!2846790 lt!1735396)))

(declare-fun lt!1735398 () Unit!103233)

(assert (=> b!4566376 (= lt!1735398 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (=> b!4566376 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(declare-fun lt!1735394 () Unit!103233)

(assert (=> b!4566376 (= lt!1735394 lt!1735398)))

(assert (=> b!4566376 (= lt!1735396 (lemmaInListThenGetKeysListContains!527 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (=> b!4566376 call!318581))

(assert (= (and d!1423402 c!780905) b!4566376))

(assert (= (and d!1423402 (not c!780905)) b!4566373))

(assert (= (and b!4566373 c!780906) b!4566372))

(assert (= (and b!4566373 (not c!780906)) b!4566368))

(assert (= (or b!4566376 b!4566373) bm!318576))

(assert (= (and bm!318576 c!780904) b!4566374))

(assert (= (and bm!318576 (not c!780904)) b!4566371))

(assert (= (and d!1423402 res!1906200) b!4566369))

(assert (= (and d!1423402 (not res!1906201)) b!4566375))

(assert (= (and b!4566375 res!1906202) b!4566370))

(declare-fun m!5361205 () Bool)

(assert (=> b!4566372 m!5361205))

(declare-fun m!5361207 () Bool)

(assert (=> b!4566372 m!5361207))

(assert (=> b!4566370 m!5360731))

(declare-fun m!5361209 () Bool)

(assert (=> b!4566370 m!5361209))

(assert (=> b!4566370 m!5361209))

(declare-fun m!5361211 () Bool)

(assert (=> b!4566370 m!5361211))

(assert (=> b!4566371 m!5360731))

(assert (=> b!4566371 m!5361209))

(declare-fun m!5361213 () Bool)

(assert (=> b!4566374 m!5361213))

(declare-fun m!5361215 () Bool)

(assert (=> bm!318576 m!5361215))

(declare-fun m!5361217 () Bool)

(assert (=> b!4566375 m!5361217))

(assert (=> b!4566375 m!5361217))

(declare-fun m!5361219 () Bool)

(assert (=> b!4566375 m!5361219))

(assert (=> b!4566369 m!5360731))

(assert (=> b!4566369 m!5361209))

(assert (=> b!4566369 m!5361209))

(assert (=> b!4566369 m!5361211))

(assert (=> d!1423402 m!5361205))

(declare-fun m!5361221 () Bool)

(assert (=> b!4566376 m!5361221))

(assert (=> b!4566376 m!5361217))

(assert (=> b!4566376 m!5361217))

(assert (=> b!4566376 m!5361219))

(declare-fun m!5361223 () Bool)

(assert (=> b!4566376 m!5361223))

(assert (=> b!4566087 d!1423402))

(declare-fun bs!946619 () Bool)

(declare-fun d!1423404 () Bool)

(assert (= bs!946619 (and d!1423404 start!454364)))

(declare-fun lambda!180926 () Int)

(assert (=> bs!946619 (= lambda!180926 lambda!180879)))

(declare-fun bs!946620 () Bool)

(assert (= bs!946620 (and d!1423404 d!1423334)))

(assert (=> bs!946620 (= lambda!180926 lambda!180910)))

(declare-fun bs!946621 () Bool)

(assert (= bs!946621 (and d!1423404 d!1423378)))

(assert (=> bs!946621 (= lambda!180926 lambda!180921)))

(declare-fun bs!946622 () Bool)

(assert (= bs!946622 (and d!1423404 d!1423308)))

(assert (=> bs!946622 (= lambda!180926 lambda!180904)))

(declare-fun bs!946623 () Bool)

(assert (= bs!946623 (and d!1423404 d!1423372)))

(assert (=> bs!946623 (= lambda!180926 lambda!180920)))

(declare-fun bs!946624 () Bool)

(assert (= bs!946624 (and d!1423404 d!1423386)))

(assert (=> bs!946624 (= lambda!180926 lambda!180924)))

(declare-fun bs!946625 () Bool)

(assert (= bs!946625 (and d!1423404 d!1423274)))

(assert (=> bs!946625 (= lambda!180926 lambda!180892)))

(declare-fun bs!946626 () Bool)

(assert (= bs!946626 (and d!1423404 d!1423400)))

(assert (=> bs!946626 (= lambda!180926 lambda!180925)))

(declare-fun bs!946627 () Bool)

(assert (= bs!946627 (and d!1423404 d!1423298)))

(assert (=> bs!946627 (= lambda!180926 lambda!180893)))

(declare-fun lt!1735402 () ListMap!3781)

(assert (=> d!1423404 (invariantList!1083 (toList!4520 lt!1735402))))

(declare-fun e!2846791 () ListMap!3781)

(assert (=> d!1423404 (= lt!1735402 e!2846791)))

(declare-fun c!780907 () Bool)

(assert (=> d!1423404 (= c!780907 ((_ is Cons!50905) (t!358007 (toList!4519 lm!1477))))))

(assert (=> d!1423404 (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180926)))

(assert (=> d!1423404 (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735402)))

(declare-fun b!4566377 () Bool)

(assert (=> b!4566377 (= e!2846791 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))))))

(declare-fun b!4566378 () Bool)

(assert (=> b!4566378 (= e!2846791 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423404 c!780907) b!4566377))

(assert (= (and d!1423404 (not c!780907)) b!4566378))

(declare-fun m!5361225 () Bool)

(assert (=> d!1423404 m!5361225))

(declare-fun m!5361227 () Bool)

(assert (=> d!1423404 m!5361227))

(declare-fun m!5361229 () Bool)

(assert (=> b!4566377 m!5361229))

(assert (=> b!4566377 m!5361229))

(declare-fun m!5361231 () Bool)

(assert (=> b!4566377 m!5361231))

(assert (=> b!4566087 d!1423404))

(declare-fun b!4566379 () Bool)

(declare-fun e!2846792 () Unit!103233)

(declare-fun Unit!103251 () Unit!103233)

(assert (=> b!4566379 (= e!2846792 Unit!103251)))

(declare-fun b!4566380 () Bool)

(declare-fun e!2846793 () Bool)

(assert (=> b!4566380 (= e!2846793 (not (contains!13777 (keys!17764 lt!1735189) key!3287)))))

(declare-fun b!4566381 () Bool)

(declare-fun e!2846795 () Bool)

(assert (=> b!4566381 (= e!2846795 (contains!13777 (keys!17764 lt!1735189) key!3287))))

(declare-fun b!4566382 () Bool)

(declare-fun e!2846796 () List!51031)

(assert (=> b!4566382 (= e!2846796 (keys!17764 lt!1735189))))

(declare-fun d!1423406 () Bool)

(declare-fun e!2846794 () Bool)

(assert (=> d!1423406 e!2846794))

(declare-fun res!1906204 () Bool)

(assert (=> d!1423406 (=> res!1906204 e!2846794)))

(assert (=> d!1423406 (= res!1906204 e!2846793)))

(declare-fun res!1906203 () Bool)

(assert (=> d!1423406 (=> (not res!1906203) (not e!2846793))))

(declare-fun lt!1735410 () Bool)

(assert (=> d!1423406 (= res!1906203 (not lt!1735410))))

(declare-fun lt!1735404 () Bool)

(assert (=> d!1423406 (= lt!1735410 lt!1735404)))

(declare-fun lt!1735406 () Unit!103233)

(declare-fun e!2846797 () Unit!103233)

(assert (=> d!1423406 (= lt!1735406 e!2846797)))

(declare-fun c!780909 () Bool)

(assert (=> d!1423406 (= c!780909 lt!1735404)))

(assert (=> d!1423406 (= lt!1735404 (containsKey!2014 (toList!4520 lt!1735189) key!3287))))

(assert (=> d!1423406 (= (contains!13773 lt!1735189 key!3287) lt!1735410)))

(declare-fun b!4566383 () Bool)

(assert (=> b!4566383 false))

(declare-fun lt!1735409 () Unit!103233)

(declare-fun lt!1735408 () Unit!103233)

(assert (=> b!4566383 (= lt!1735409 lt!1735408)))

(assert (=> b!4566383 (containsKey!2014 (toList!4520 lt!1735189) key!3287)))

(assert (=> b!4566383 (= lt!1735408 (lemmaInGetKeysListThenContainsKey!530 (toList!4520 lt!1735189) key!3287))))

(declare-fun Unit!103252 () Unit!103233)

(assert (=> b!4566383 (= e!2846792 Unit!103252)))

(declare-fun bm!318577 () Bool)

(declare-fun call!318582 () Bool)

(assert (=> bm!318577 (= call!318582 (contains!13777 e!2846796 key!3287))))

(declare-fun c!780908 () Bool)

(assert (=> bm!318577 (= c!780908 c!780909)))

(declare-fun b!4566384 () Bool)

(assert (=> b!4566384 (= e!2846797 e!2846792)))

(declare-fun c!780910 () Bool)

(assert (=> b!4566384 (= c!780910 call!318582)))

(declare-fun b!4566385 () Bool)

(assert (=> b!4566385 (= e!2846796 (getKeysList!531 (toList!4520 lt!1735189)))))

(declare-fun b!4566386 () Bool)

(assert (=> b!4566386 (= e!2846794 e!2846795)))

(declare-fun res!1906205 () Bool)

(assert (=> b!4566386 (=> (not res!1906205) (not e!2846795))))

(assert (=> b!4566386 (= res!1906205 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287)))))

(declare-fun b!4566387 () Bool)

(declare-fun lt!1735405 () Unit!103233)

(assert (=> b!4566387 (= e!2846797 lt!1735405)))

(declare-fun lt!1735407 () Unit!103233)

(assert (=> b!4566387 (= lt!1735407 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 lt!1735189) key!3287))))

(assert (=> b!4566387 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))))

(declare-fun lt!1735403 () Unit!103233)

(assert (=> b!4566387 (= lt!1735403 lt!1735407)))

(assert (=> b!4566387 (= lt!1735405 (lemmaInListThenGetKeysListContains!527 (toList!4520 lt!1735189) key!3287))))

(assert (=> b!4566387 call!318582))

(assert (= (and d!1423406 c!780909) b!4566387))

(assert (= (and d!1423406 (not c!780909)) b!4566384))

(assert (= (and b!4566384 c!780910) b!4566383))

(assert (= (and b!4566384 (not c!780910)) b!4566379))

(assert (= (or b!4566387 b!4566384) bm!318577))

(assert (= (and bm!318577 c!780908) b!4566385))

(assert (= (and bm!318577 (not c!780908)) b!4566382))

(assert (= (and d!1423406 res!1906203) b!4566380))

(assert (= (and d!1423406 (not res!1906204)) b!4566386))

(assert (= (and b!4566386 res!1906205) b!4566381))

(declare-fun m!5361233 () Bool)

(assert (=> b!4566383 m!5361233))

(declare-fun m!5361235 () Bool)

(assert (=> b!4566383 m!5361235))

(assert (=> b!4566381 m!5360837))

(assert (=> b!4566381 m!5360837))

(declare-fun m!5361237 () Bool)

(assert (=> b!4566381 m!5361237))

(assert (=> b!4566382 m!5360837))

(declare-fun m!5361239 () Bool)

(assert (=> b!4566385 m!5361239))

(declare-fun m!5361241 () Bool)

(assert (=> bm!318577 m!5361241))

(declare-fun m!5361243 () Bool)

(assert (=> b!4566386 m!5361243))

(assert (=> b!4566386 m!5361243))

(declare-fun m!5361245 () Bool)

(assert (=> b!4566386 m!5361245))

(assert (=> b!4566380 m!5360837))

(assert (=> b!4566380 m!5360837))

(assert (=> b!4566380 m!5361237))

(assert (=> d!1423406 m!5361233))

(declare-fun m!5361247 () Bool)

(assert (=> b!4566387 m!5361247))

(assert (=> b!4566387 m!5361243))

(assert (=> b!4566387 m!5361243))

(assert (=> b!4566387 m!5361245))

(declare-fun m!5361249 () Bool)

(assert (=> b!4566387 m!5361249))

(assert (=> b!4566087 d!1423406))

(declare-fun bs!946628 () Bool)

(declare-fun d!1423408 () Bool)

(assert (= bs!946628 (and d!1423408 start!454364)))

(declare-fun lambda!180929 () Int)

(assert (=> bs!946628 (= lambda!180929 lambda!180879)))

(declare-fun bs!946629 () Bool)

(assert (= bs!946629 (and d!1423408 d!1423334)))

(assert (=> bs!946629 (= lambda!180929 lambda!180910)))

(declare-fun bs!946630 () Bool)

(assert (= bs!946630 (and d!1423408 d!1423378)))

(assert (=> bs!946630 (= lambda!180929 lambda!180921)))

(declare-fun bs!946631 () Bool)

(assert (= bs!946631 (and d!1423408 d!1423308)))

(assert (=> bs!946631 (= lambda!180929 lambda!180904)))

(declare-fun bs!946632 () Bool)

(assert (= bs!946632 (and d!1423408 d!1423372)))

(assert (=> bs!946632 (= lambda!180929 lambda!180920)))

(declare-fun bs!946633 () Bool)

(assert (= bs!946633 (and d!1423408 d!1423404)))

(assert (=> bs!946633 (= lambda!180929 lambda!180926)))

(declare-fun bs!946634 () Bool)

(assert (= bs!946634 (and d!1423408 d!1423386)))

(assert (=> bs!946634 (= lambda!180929 lambda!180924)))

(declare-fun bs!946635 () Bool)

(assert (= bs!946635 (and d!1423408 d!1423274)))

(assert (=> bs!946635 (= lambda!180929 lambda!180892)))

(declare-fun bs!946636 () Bool)

(assert (= bs!946636 (and d!1423408 d!1423400)))

(assert (=> bs!946636 (= lambda!180929 lambda!180925)))

(declare-fun bs!946637 () Bool)

(assert (= bs!946637 (and d!1423408 d!1423298)))

(assert (=> bs!946637 (= lambda!180929 lambda!180893)))

(assert (=> d!1423408 (contains!13773 (extractMap!1312 (toList!4519 lt!1735178)) key!3287)))

(declare-fun lt!1735413 () Unit!103233)

(declare-fun choose!30330 (ListLongMap!3151 K!12280 Hashable!5651) Unit!103233)

(assert (=> d!1423408 (= lt!1735413 (choose!30330 lt!1735178 key!3287 hashF!1107))))

(assert (=> d!1423408 (forall!10462 (toList!4519 lt!1735178) lambda!180929)))

(assert (=> d!1423408 (= (lemmaListContainsThenExtractedMapContains!212 lt!1735178 key!3287 hashF!1107) lt!1735413)))

(declare-fun bs!946638 () Bool)

(assert (= bs!946638 d!1423408))

(assert (=> bs!946638 m!5360735))

(assert (=> bs!946638 m!5360735))

(declare-fun m!5361251 () Bool)

(assert (=> bs!946638 m!5361251))

(declare-fun m!5361253 () Bool)

(assert (=> bs!946638 m!5361253))

(declare-fun m!5361255 () Bool)

(assert (=> bs!946638 m!5361255))

(assert (=> b!4566087 d!1423408))

(declare-fun bs!946639 () Bool)

(declare-fun d!1423410 () Bool)

(assert (= bs!946639 (and d!1423410 d!1423408)))

(declare-fun lambda!180932 () Int)

(assert (=> bs!946639 (not (= lambda!180932 lambda!180929))))

(declare-fun bs!946640 () Bool)

(assert (= bs!946640 (and d!1423410 start!454364)))

(assert (=> bs!946640 (not (= lambda!180932 lambda!180879))))

(declare-fun bs!946641 () Bool)

(assert (= bs!946641 (and d!1423410 d!1423334)))

(assert (=> bs!946641 (not (= lambda!180932 lambda!180910))))

(declare-fun bs!946642 () Bool)

(assert (= bs!946642 (and d!1423410 d!1423378)))

(assert (=> bs!946642 (not (= lambda!180932 lambda!180921))))

(declare-fun bs!946643 () Bool)

(assert (= bs!946643 (and d!1423410 d!1423308)))

(assert (=> bs!946643 (not (= lambda!180932 lambda!180904))))

(declare-fun bs!946644 () Bool)

(assert (= bs!946644 (and d!1423410 d!1423372)))

(assert (=> bs!946644 (not (= lambda!180932 lambda!180920))))

(declare-fun bs!946645 () Bool)

(assert (= bs!946645 (and d!1423410 d!1423404)))

(assert (=> bs!946645 (not (= lambda!180932 lambda!180926))))

(declare-fun bs!946646 () Bool)

(assert (= bs!946646 (and d!1423410 d!1423386)))

(assert (=> bs!946646 (not (= lambda!180932 lambda!180924))))

(declare-fun bs!946647 () Bool)

(assert (= bs!946647 (and d!1423410 d!1423274)))

(assert (=> bs!946647 (not (= lambda!180932 lambda!180892))))

(declare-fun bs!946648 () Bool)

(assert (= bs!946648 (and d!1423410 d!1423400)))

(assert (=> bs!946648 (not (= lambda!180932 lambda!180925))))

(declare-fun bs!946649 () Bool)

(assert (= bs!946649 (and d!1423410 d!1423298)))

(assert (=> bs!946649 (not (= lambda!180932 lambda!180893))))

(assert (=> d!1423410 true))

(assert (=> d!1423410 (= (allKeysSameHashInMap!1363 lm!1477 hashF!1107) (forall!10462 (toList!4519 lm!1477) lambda!180932))))

(declare-fun bs!946650 () Bool)

(assert (= bs!946650 d!1423410))

(declare-fun m!5361257 () Bool)

(assert (=> bs!946650 m!5361257))

(assert (=> b!4566088 d!1423410))

(declare-fun d!1423412 () Bool)

(assert (=> d!1423412 true))

(assert (=> d!1423412 true))

(declare-fun lambda!180935 () Int)

(declare-fun forall!10464 (List!51028 Int) Bool)

(assert (=> d!1423412 (= (allKeysSameHash!1110 newBucket!178 hash!344 hashF!1107) (forall!10464 newBucket!178 lambda!180935))))

(declare-fun bs!946651 () Bool)

(assert (= bs!946651 d!1423412))

(declare-fun m!5361259 () Bool)

(assert (=> bs!946651 m!5361259))

(assert (=> b!4566086 d!1423412))

(declare-fun d!1423414 () Bool)

(declare-fun lt!1735414 () Bool)

(assert (=> d!1423414 (= lt!1735414 (select (content!8546 (t!358007 (toList!4519 lm!1477))) lt!1735187))))

(declare-fun e!2846798 () Bool)

(assert (=> d!1423414 (= lt!1735414 e!2846798)))

(declare-fun res!1906207 () Bool)

(assert (=> d!1423414 (=> (not res!1906207) (not e!2846798))))

(assert (=> d!1423414 (= res!1906207 ((_ is Cons!50905) (t!358007 (toList!4519 lm!1477))))))

(assert (=> d!1423414 (= (contains!13775 (t!358007 (toList!4519 lm!1477)) lt!1735187) lt!1735414)))

(declare-fun b!4566394 () Bool)

(declare-fun e!2846799 () Bool)

(assert (=> b!4566394 (= e!2846798 e!2846799)))

(declare-fun res!1906206 () Bool)

(assert (=> b!4566394 (=> res!1906206 e!2846799)))

(assert (=> b!4566394 (= res!1906206 (= (h!56826 (t!358007 (toList!4519 lm!1477))) lt!1735187))))

(declare-fun b!4566395 () Bool)

(assert (=> b!4566395 (= e!2846799 (contains!13775 (t!358007 (t!358007 (toList!4519 lm!1477))) lt!1735187))))

(assert (= (and d!1423414 res!1906207) b!4566394))

(assert (= (and b!4566394 (not res!1906206)) b!4566395))

(declare-fun m!5361261 () Bool)

(assert (=> d!1423414 m!5361261))

(declare-fun m!5361263 () Bool)

(assert (=> d!1423414 m!5361263))

(declare-fun m!5361265 () Bool)

(assert (=> b!4566395 m!5361265))

(assert (=> b!4566097 d!1423414))

(declare-fun b!4566400 () Bool)

(declare-fun e!2846802 () Bool)

(declare-fun tp!1339467 () Bool)

(declare-fun tp!1339468 () Bool)

(assert (=> b!4566400 (= e!2846802 (and tp!1339467 tp!1339468))))

(assert (=> b!4566096 (= tp!1339453 e!2846802)))

(assert (= (and b!4566096 ((_ is Cons!50905) (toList!4519 lm!1477))) b!4566400))

(declare-fun b!4566405 () Bool)

(declare-fun tp!1339471 () Bool)

(declare-fun e!2846805 () Bool)

(assert (=> b!4566405 (= e!2846805 (and tp_is_empty!28301 tp_is_empty!28303 tp!1339471))))

(assert (=> b!4566092 (= tp!1339452 e!2846805)))

(assert (= (and b!4566092 ((_ is Cons!50904) (t!358006 newBucket!178))) b!4566405))

(declare-fun b_lambda!163123 () Bool)

(assert (= b_lambda!163121 (or start!454364 b_lambda!163123)))

(declare-fun bs!946652 () Bool)

(declare-fun d!1423416 () Bool)

(assert (= bs!946652 (and d!1423416 start!454364)))

(assert (=> bs!946652 (= (dynLambda!21298 lambda!180879 (h!56826 (toList!4519 lm!1477))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(declare-fun m!5361267 () Bool)

(assert (=> bs!946652 m!5361267))

(assert (=> b!4566355 d!1423416))

(declare-fun b_lambda!163125 () Bool)

(assert (= b_lambda!163119 (or start!454364 b_lambda!163125)))

(declare-fun bs!946653 () Bool)

(declare-fun d!1423418 () Bool)

(assert (= bs!946653 (and d!1423418 start!454364)))

(assert (=> bs!946653 (= (dynLambda!21298 lambda!180879 lt!1735187) (noDuplicateKeys!1256 (_2!29024 lt!1735187)))))

(declare-fun m!5361269 () Bool)

(assert (=> bs!946653 m!5361269))

(assert (=> d!1423360 d!1423418))

(check-sat (not b!4566158) (not d!1423266) (not d!1423396) tp_is_empty!28301 (not b!4566291) (not b!4566377) (not d!1423366) (not b!4566262) (not b!4566109) (not d!1423402) (not d!1423308) (not b!4566395) (not d!1423392) (not b!4566369) (not b!4566338) (not b_lambda!163123) (not bm!318575) (not d!1423378) (not b!4566372) (not b!4566376) (not d!1423302) (not b!4566108) (not d!1423410) (not b!4566387) (not b!4566273) (not b!4566122) (not b!4566328) (not d!1423372) (not b!4566363) (not b!4566303) (not b!4566329) (not b!4566375) (not b!4566111) (not b!4566347) (not d!1423368) (not d!1423388) (not b!4566380) (not d!1423300) (not d!1423370) (not b!4566365) (not bs!946653) (not b!4566366) (not b!4566381) (not b!4566356) (not b!4566324) (not d!1423274) (not b!4566405) (not d!1423264) (not b!4566326) (not d!1423256) (not b!4566386) (not d!1423386) (not d!1423406) (not d!1423360) (not d!1423408) (not bs!946652) (not d!1423376) (not bm!318577) (not b!4566374) (not d!1423354) (not b!4566371) (not b!4566298) (not d!1423412) (not b!4566385) (not d!1423262) (not b_lambda!163125) (not d!1423350) (not b!4566370) (not b!4566110) (not b!4566156) (not b!4566323) (not b!4566330) (not b!4566350) (not b!4566331) (not b!4566383) (not d!1423374) (not b!4566362) (not d!1423414) (not b!4566345) (not b!4566337) (not d!1423356) (not b!4566400) (not d!1423334) (not b!4566382) (not d!1423298) tp_is_empty!28303 (not b!4566325) (not d!1423400) (not d!1423398) (not d!1423404) (not b!4566300) (not bm!318576) (not b!4566348))
(check-sat)
(get-model)

(declare-fun d!1423432 () Bool)

(assert (=> d!1423432 (dynLambda!21298 lambda!180879 lt!1735187)))

(assert (=> d!1423432 true))

(declare-fun _$7!2025 () Unit!103233)

(assert (=> d!1423432 (= (choose!30325 (toList!4519 lm!1477) lambda!180879 lt!1735187) _$7!2025)))

(declare-fun b_lambda!163129 () Bool)

(assert (=> (not b_lambda!163129) (not d!1423432)))

(declare-fun bs!946656 () Bool)

(assert (= bs!946656 d!1423432))

(assert (=> bs!946656 m!5361111))

(assert (=> d!1423360 d!1423432))

(assert (=> d!1423360 d!1423390))

(declare-fun d!1423436 () Bool)

(declare-fun c!780916 () Bool)

(assert (=> d!1423436 (= c!780916 ((_ is Nil!50904) (toList!4520 lt!1735190)))))

(declare-fun e!2846828 () (InoxSet tuple2!51458))

(assert (=> d!1423436 (= (content!8544 (toList!4520 lt!1735190)) e!2846828)))

(declare-fun b!4566441 () Bool)

(assert (=> b!4566441 (= e!2846828 ((as const (Array tuple2!51458 Bool)) false))))

(declare-fun b!4566442 () Bool)

(assert (=> b!4566442 (= e!2846828 ((_ map or) (store ((as const (Array tuple2!51458 Bool)) false) (h!56825 (toList!4520 lt!1735190)) true) (content!8544 (t!358006 (toList!4520 lt!1735190)))))))

(assert (= (and d!1423436 c!780916) b!4566441))

(assert (= (and d!1423436 (not c!780916)) b!4566442))

(declare-fun m!5361307 () Bool)

(assert (=> b!4566442 m!5361307))

(declare-fun m!5361309 () Bool)

(assert (=> b!4566442 m!5361309))

(assert (=> d!1423300 d!1423436))

(declare-fun d!1423442 () Bool)

(declare-fun c!780917 () Bool)

(assert (=> d!1423442 (= c!780917 ((_ is Nil!50904) (toList!4520 lt!1735194)))))

(declare-fun e!2846829 () (InoxSet tuple2!51458))

(assert (=> d!1423442 (= (content!8544 (toList!4520 lt!1735194)) e!2846829)))

(declare-fun b!4566443 () Bool)

(assert (=> b!4566443 (= e!2846829 ((as const (Array tuple2!51458 Bool)) false))))

(declare-fun b!4566444 () Bool)

(assert (=> b!4566444 (= e!2846829 ((_ map or) (store ((as const (Array tuple2!51458 Bool)) false) (h!56825 (toList!4520 lt!1735194)) true) (content!8544 (t!358006 (toList!4520 lt!1735194)))))))

(assert (= (and d!1423442 c!780917) b!4566443))

(assert (= (and d!1423442 (not c!780917)) b!4566444))

(declare-fun m!5361311 () Bool)

(assert (=> b!4566444 m!5361311))

(declare-fun m!5361313 () Bool)

(assert (=> b!4566444 m!5361313))

(assert (=> d!1423300 d!1423442))

(declare-fun d!1423444 () Bool)

(declare-fun res!1906235 () Bool)

(declare-fun e!2846840 () Bool)

(assert (=> d!1423444 (=> res!1906235 e!2846840)))

(assert (=> d!1423444 (= res!1906235 (and ((_ is Cons!50904) (toList!4520 lt!1735194)) (= (_1!29023 (h!56825 (toList!4520 lt!1735194))) key!3287)))))

(assert (=> d!1423444 (= (containsKey!2014 (toList!4520 lt!1735194) key!3287) e!2846840)))

(declare-fun b!4566461 () Bool)

(declare-fun e!2846841 () Bool)

(assert (=> b!4566461 (= e!2846840 e!2846841)))

(declare-fun res!1906236 () Bool)

(assert (=> b!4566461 (=> (not res!1906236) (not e!2846841))))

(assert (=> b!4566461 (= res!1906236 ((_ is Cons!50904) (toList!4520 lt!1735194)))))

(declare-fun b!4566462 () Bool)

(assert (=> b!4566462 (= e!2846841 (containsKey!2014 (t!358006 (toList!4520 lt!1735194)) key!3287))))

(assert (= (and d!1423444 (not res!1906235)) b!4566461))

(assert (= (and b!4566461 res!1906236) b!4566462))

(declare-fun m!5361317 () Bool)

(assert (=> b!4566462 m!5361317))

(assert (=> b!4566326 d!1423444))

(declare-fun d!1423448 () Bool)

(assert (=> d!1423448 (containsKey!2014 (toList!4520 lt!1735194) key!3287)))

(declare-fun lt!1735435 () Unit!103233)

(declare-fun choose!30331 (List!51028 K!12280) Unit!103233)

(assert (=> d!1423448 (= lt!1735435 (choose!30331 (toList!4520 lt!1735194) key!3287))))

(assert (=> d!1423448 (invariantList!1083 (toList!4520 lt!1735194))))

(assert (=> d!1423448 (= (lemmaInGetKeysListThenContainsKey!530 (toList!4520 lt!1735194) key!3287) lt!1735435)))

(declare-fun bs!946658 () Bool)

(assert (= bs!946658 d!1423448))

(assert (=> bs!946658 m!5361141))

(declare-fun m!5361327 () Bool)

(assert (=> bs!946658 m!5361327))

(declare-fun m!5361329 () Bool)

(assert (=> bs!946658 m!5361329))

(assert (=> b!4566326 d!1423448))

(declare-fun d!1423454 () Bool)

(declare-fun noDuplicatedKeys!298 (List!51028) Bool)

(assert (=> d!1423454 (= (invariantList!1083 (toList!4520 lt!1735258)) (noDuplicatedKeys!298 (toList!4520 lt!1735258)))))

(declare-fun bs!946659 () Bool)

(assert (= bs!946659 d!1423454))

(declare-fun m!5361331 () Bool)

(assert (=> bs!946659 m!5361331))

(assert (=> d!1423298 d!1423454))

(declare-fun d!1423456 () Bool)

(declare-fun res!1906244 () Bool)

(declare-fun e!2846852 () Bool)

(assert (=> d!1423456 (=> res!1906244 e!2846852)))

(assert (=> d!1423456 (= res!1906244 ((_ is Nil!50905) (toList!4519 (+!1678 lt!1735178 lt!1735192))))))

(assert (=> d!1423456 (= (forall!10462 (toList!4519 (+!1678 lt!1735178 lt!1735192)) lambda!180893) e!2846852)))

(declare-fun b!4566476 () Bool)

(declare-fun e!2846853 () Bool)

(assert (=> b!4566476 (= e!2846852 e!2846853)))

(declare-fun res!1906245 () Bool)

(assert (=> b!4566476 (=> (not res!1906245) (not e!2846853))))

(assert (=> b!4566476 (= res!1906245 (dynLambda!21298 lambda!180893 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))

(declare-fun b!4566477 () Bool)

(assert (=> b!4566477 (= e!2846853 (forall!10462 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))) lambda!180893))))

(assert (= (and d!1423456 (not res!1906244)) b!4566476))

(assert (= (and b!4566476 res!1906245) b!4566477))

(declare-fun b_lambda!163133 () Bool)

(assert (=> (not b_lambda!163133) (not b!4566476)))

(declare-fun m!5361341 () Bool)

(assert (=> b!4566476 m!5361341))

(declare-fun m!5361347 () Bool)

(assert (=> b!4566477 m!5361347))

(assert (=> d!1423298 d!1423456))

(declare-fun d!1423458 () Bool)

(declare-fun res!1906246 () Bool)

(declare-fun e!2846855 () Bool)

(assert (=> d!1423458 (=> res!1906246 e!2846855)))

(declare-fun e!2846854 () Bool)

(assert (=> d!1423458 (= res!1906246 e!2846854)))

(declare-fun res!1906248 () Bool)

(assert (=> d!1423458 (=> (not res!1906248) (not e!2846854))))

(assert (=> d!1423458 (= res!1906248 ((_ is Cons!50905) (t!358007 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423458 (= (containsKeyBiggerList!226 (t!358007 (t!358007 (toList!4519 lm!1477))) key!3287) e!2846855)))

(declare-fun b!4566478 () Bool)

(assert (=> b!4566478 (= e!2846854 (containsKey!2010 (_2!29024 (h!56826 (t!358007 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(declare-fun b!4566479 () Bool)

(declare-fun e!2846856 () Bool)

(assert (=> b!4566479 (= e!2846855 e!2846856)))

(declare-fun res!1906247 () Bool)

(assert (=> b!4566479 (=> (not res!1906247) (not e!2846856))))

(assert (=> b!4566479 (= res!1906247 ((_ is Cons!50905) (t!358007 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun b!4566480 () Bool)

(assert (=> b!4566480 (= e!2846856 (containsKeyBiggerList!226 (t!358007 (t!358007 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (= (and d!1423458 res!1906248) b!4566478))

(assert (= (and d!1423458 (not res!1906246)) b!4566479))

(assert (= (and b!4566479 res!1906247) b!4566480))

(declare-fun m!5361355 () Bool)

(assert (=> b!4566478 m!5361355))

(declare-fun m!5361357 () Bool)

(assert (=> b!4566480 m!5361357))

(assert (=> b!4566347 d!1423458))

(assert (=> d!1423386 d!1423384))

(declare-fun d!1423462 () Bool)

(assert (=> d!1423462 (containsKeyBiggerList!226 (toList!4519 lt!1735178) key!3287)))

(assert (=> d!1423462 true))

(declare-fun _$33!733 () Unit!103233)

(assert (=> d!1423462 (= (choose!30329 lt!1735178 key!3287 hashF!1107) _$33!733)))

(declare-fun bs!946660 () Bool)

(assert (= bs!946660 d!1423462))

(assert (=> bs!946660 m!5360725))

(assert (=> d!1423386 d!1423462))

(declare-fun d!1423464 () Bool)

(declare-fun res!1906249 () Bool)

(declare-fun e!2846857 () Bool)

(assert (=> d!1423464 (=> res!1906249 e!2846857)))

(assert (=> d!1423464 (= res!1906249 ((_ is Nil!50905) (toList!4519 lt!1735178)))))

(assert (=> d!1423464 (= (forall!10462 (toList!4519 lt!1735178) lambda!180924) e!2846857)))

(declare-fun b!4566481 () Bool)

(declare-fun e!2846858 () Bool)

(assert (=> b!4566481 (= e!2846857 e!2846858)))

(declare-fun res!1906250 () Bool)

(assert (=> b!4566481 (=> (not res!1906250) (not e!2846858))))

(assert (=> b!4566481 (= res!1906250 (dynLambda!21298 lambda!180924 (h!56826 (toList!4519 lt!1735178))))))

(declare-fun b!4566482 () Bool)

(assert (=> b!4566482 (= e!2846858 (forall!10462 (t!358007 (toList!4519 lt!1735178)) lambda!180924))))

(assert (= (and d!1423464 (not res!1906249)) b!4566481))

(assert (= (and b!4566481 res!1906250) b!4566482))

(declare-fun b_lambda!163135 () Bool)

(assert (=> (not b_lambda!163135) (not b!4566481)))

(declare-fun m!5361359 () Bool)

(assert (=> b!4566481 m!5361359))

(declare-fun m!5361361 () Bool)

(assert (=> b!4566482 m!5361361))

(assert (=> d!1423386 d!1423464))

(declare-fun d!1423466 () Bool)

(declare-fun lt!1735438 () Bool)

(assert (=> d!1423466 (= lt!1735438 (select (content!8545 (keys!17764 lt!1735194)) key!3287))))

(declare-fun e!2846863 () Bool)

(assert (=> d!1423466 (= lt!1735438 e!2846863)))

(declare-fun res!1906255 () Bool)

(assert (=> d!1423466 (=> (not res!1906255) (not e!2846863))))

(assert (=> d!1423466 (= res!1906255 ((_ is Cons!50907) (keys!17764 lt!1735194)))))

(assert (=> d!1423466 (= (contains!13777 (keys!17764 lt!1735194) key!3287) lt!1735438)))

(declare-fun b!4566487 () Bool)

(declare-fun e!2846864 () Bool)

(assert (=> b!4566487 (= e!2846863 e!2846864)))

(declare-fun res!1906256 () Bool)

(assert (=> b!4566487 (=> res!1906256 e!2846864)))

(assert (=> b!4566487 (= res!1906256 (= (h!56830 (keys!17764 lt!1735194)) key!3287))))

(declare-fun b!4566488 () Bool)

(assert (=> b!4566488 (= e!2846864 (contains!13777 (t!358009 (keys!17764 lt!1735194)) key!3287))))

(assert (= (and d!1423466 res!1906255) b!4566487))

(assert (= (and b!4566487 (not res!1906256)) b!4566488))

(assert (=> d!1423466 m!5361145))

(declare-fun m!5361363 () Bool)

(assert (=> d!1423466 m!5361363))

(declare-fun m!5361365 () Bool)

(assert (=> d!1423466 m!5361365))

(declare-fun m!5361367 () Bool)

(assert (=> b!4566488 m!5361367))

(assert (=> b!4566324 d!1423466))

(declare-fun b!4566496 () Bool)

(assert (=> b!4566496 true))

(declare-fun d!1423468 () Bool)

(declare-fun e!2846867 () Bool)

(assert (=> d!1423468 e!2846867))

(declare-fun res!1906265 () Bool)

(assert (=> d!1423468 (=> (not res!1906265) (not e!2846867))))

(declare-fun lt!1735441 () List!51031)

(declare-fun noDuplicate!784 (List!51031) Bool)

(assert (=> d!1423468 (= res!1906265 (noDuplicate!784 lt!1735441))))

(assert (=> d!1423468 (= lt!1735441 (getKeysList!531 (toList!4520 lt!1735194)))))

(assert (=> d!1423468 (= (keys!17764 lt!1735194) lt!1735441)))

(declare-fun b!4566495 () Bool)

(declare-fun res!1906264 () Bool)

(assert (=> b!4566495 (=> (not res!1906264) (not e!2846867))))

(declare-fun length!424 (List!51031) Int)

(declare-fun length!425 (List!51028) Int)

(assert (=> b!4566495 (= res!1906264 (= (length!424 lt!1735441) (length!425 (toList!4520 lt!1735194))))))

(declare-fun res!1906263 () Bool)

(assert (=> b!4566496 (=> (not res!1906263) (not e!2846867))))

(declare-fun lambda!180946 () Int)

(declare-fun forall!10466 (List!51031 Int) Bool)

(assert (=> b!4566496 (= res!1906263 (forall!10466 lt!1735441 lambda!180946))))

(declare-fun lambda!180947 () Int)

(declare-fun b!4566497 () Bool)

(declare-fun map!11223 (List!51028 Int) List!51031)

(assert (=> b!4566497 (= e!2846867 (= (content!8545 lt!1735441) (content!8545 (map!11223 (toList!4520 lt!1735194) lambda!180947))))))

(assert (= (and d!1423468 res!1906265) b!4566495))

(assert (= (and b!4566495 res!1906264) b!4566496))

(assert (= (and b!4566496 res!1906263) b!4566497))

(declare-fun m!5361369 () Bool)

(assert (=> d!1423468 m!5361369))

(assert (=> d!1423468 m!5361149))

(declare-fun m!5361371 () Bool)

(assert (=> b!4566495 m!5361371))

(declare-fun m!5361373 () Bool)

(assert (=> b!4566495 m!5361373))

(declare-fun m!5361375 () Bool)

(assert (=> b!4566496 m!5361375))

(declare-fun m!5361377 () Bool)

(assert (=> b!4566497 m!5361377))

(declare-fun m!5361379 () Bool)

(assert (=> b!4566497 m!5361379))

(assert (=> b!4566497 m!5361379))

(declare-fun m!5361381 () Bool)

(assert (=> b!4566497 m!5361381))

(assert (=> b!4566324 d!1423468))

(declare-fun d!1423470 () Bool)

(declare-fun lt!1735442 () Bool)

(assert (=> d!1423470 (= lt!1735442 (select (content!8545 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(declare-fun e!2846868 () Bool)

(assert (=> d!1423470 (= lt!1735442 e!2846868)))

(declare-fun res!1906266 () Bool)

(assert (=> d!1423470 (=> (not res!1906266) (not e!2846868))))

(assert (=> d!1423470 (= res!1906266 ((_ is Cons!50907) (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))

(assert (=> d!1423470 (= (contains!13777 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287) lt!1735442)))

(declare-fun b!4566500 () Bool)

(declare-fun e!2846869 () Bool)

(assert (=> b!4566500 (= e!2846868 e!2846869)))

(declare-fun res!1906267 () Bool)

(assert (=> b!4566500 (=> res!1906267 e!2846869)))

(assert (=> b!4566500 (= res!1906267 (= (h!56830 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(declare-fun b!4566501 () Bool)

(assert (=> b!4566501 (= e!2846869 (contains!13777 (t!358009 (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(assert (= (and d!1423470 res!1906266) b!4566500))

(assert (= (and b!4566500 (not res!1906267)) b!4566501))

(assert (=> d!1423470 m!5361209))

(declare-fun m!5361383 () Bool)

(assert (=> d!1423470 m!5361383))

(declare-fun m!5361385 () Bool)

(assert (=> d!1423470 m!5361385))

(declare-fun m!5361387 () Bool)

(assert (=> b!4566501 m!5361387))

(assert (=> b!4566370 d!1423470))

(declare-fun bs!946661 () Bool)

(declare-fun b!4566503 () Bool)

(assert (= bs!946661 (and b!4566503 b!4566496)))

(declare-fun lambda!180948 () Int)

(assert (=> bs!946661 (= (= (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (toList!4520 lt!1735194)) (= lambda!180948 lambda!180946))))

(assert (=> b!4566503 true))

(declare-fun bs!946662 () Bool)

(declare-fun b!4566504 () Bool)

(assert (= bs!946662 (and b!4566504 b!4566497)))

(declare-fun lambda!180949 () Int)

(assert (=> bs!946662 (= lambda!180949 lambda!180947)))

(declare-fun d!1423472 () Bool)

(declare-fun e!2846870 () Bool)

(assert (=> d!1423472 e!2846870))

(declare-fun res!1906270 () Bool)

(assert (=> d!1423472 (=> (not res!1906270) (not e!2846870))))

(declare-fun lt!1735443 () List!51031)

(assert (=> d!1423472 (= res!1906270 (noDuplicate!784 lt!1735443))))

(assert (=> d!1423472 (= lt!1735443 (getKeysList!531 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))

(assert (=> d!1423472 (= (keys!17764 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lt!1735443)))

(declare-fun b!4566502 () Bool)

(declare-fun res!1906269 () Bool)

(assert (=> b!4566502 (=> (not res!1906269) (not e!2846870))))

(assert (=> b!4566502 (= res!1906269 (= (length!424 lt!1735443) (length!425 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))))

(declare-fun res!1906268 () Bool)

(assert (=> b!4566503 (=> (not res!1906268) (not e!2846870))))

(assert (=> b!4566503 (= res!1906268 (forall!10466 lt!1735443 lambda!180948))))

(assert (=> b!4566504 (= e!2846870 (= (content!8545 lt!1735443) (content!8545 (map!11223 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!180949))))))

(assert (= (and d!1423472 res!1906270) b!4566502))

(assert (= (and b!4566502 res!1906269) b!4566503))

(assert (= (and b!4566503 res!1906268) b!4566504))

(declare-fun m!5361389 () Bool)

(assert (=> d!1423472 m!5361389))

(assert (=> d!1423472 m!5361213))

(declare-fun m!5361391 () Bool)

(assert (=> b!4566502 m!5361391))

(declare-fun m!5361393 () Bool)

(assert (=> b!4566502 m!5361393))

(declare-fun m!5361395 () Bool)

(assert (=> b!4566503 m!5361395))

(declare-fun m!5361397 () Bool)

(assert (=> b!4566504 m!5361397))

(declare-fun m!5361399 () Bool)

(assert (=> b!4566504 m!5361399))

(assert (=> b!4566504 m!5361399))

(declare-fun m!5361401 () Bool)

(assert (=> b!4566504 m!5361401))

(assert (=> b!4566370 d!1423472))

(declare-fun d!1423474 () Bool)

(declare-fun res!1906271 () Bool)

(declare-fun e!2846871 () Bool)

(assert (=> d!1423474 (=> res!1906271 e!2846871)))

(assert (=> d!1423474 (= res!1906271 (and ((_ is Cons!50904) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) key!3287)))))

(assert (=> d!1423474 (= (containsKey!2014 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287) e!2846871)))

(declare-fun b!4566505 () Bool)

(declare-fun e!2846872 () Bool)

(assert (=> b!4566505 (= e!2846871 e!2846872)))

(declare-fun res!1906272 () Bool)

(assert (=> b!4566505 (=> (not res!1906272) (not e!2846872))))

(assert (=> b!4566505 (= res!1906272 ((_ is Cons!50904) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))

(declare-fun b!4566506 () Bool)

(assert (=> b!4566506 (= e!2846872 (containsKey!2014 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(assert (= (and d!1423474 (not res!1906271)) b!4566505))

(assert (= (and b!4566505 res!1906272) b!4566506))

(declare-fun m!5361403 () Bool)

(assert (=> b!4566506 m!5361403))

(assert (=> b!4566372 d!1423474))

(declare-fun d!1423476 () Bool)

(assert (=> d!1423476 (containsKey!2014 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287)))

(declare-fun lt!1735444 () Unit!103233)

(assert (=> d!1423476 (= lt!1735444 (choose!30331 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (=> d!1423476 (invariantList!1083 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423476 (= (lemmaInGetKeysListThenContainsKey!530 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287) lt!1735444)))

(declare-fun bs!946663 () Bool)

(assert (= bs!946663 d!1423476))

(assert (=> bs!946663 m!5361205))

(declare-fun m!5361405 () Bool)

(assert (=> bs!946663 m!5361405))

(declare-fun m!5361407 () Bool)

(assert (=> bs!946663 m!5361407))

(assert (=> b!4566372 d!1423476))

(assert (=> d!1423376 d!1423444))

(declare-fun d!1423478 () Bool)

(assert (=> d!1423478 (= (invariantList!1083 (toList!4520 lt!1735385)) (noDuplicatedKeys!298 (toList!4520 lt!1735385)))))

(declare-fun bs!946664 () Bool)

(assert (= bs!946664 d!1423478))

(declare-fun m!5361409 () Bool)

(assert (=> bs!946664 m!5361409))

(assert (=> d!1423378 d!1423478))

(declare-fun d!1423480 () Bool)

(declare-fun res!1906273 () Bool)

(declare-fun e!2846873 () Bool)

(assert (=> d!1423480 (=> res!1906273 e!2846873)))

(assert (=> d!1423480 (= res!1906273 ((_ is Nil!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423480 (= (forall!10462 (toList!4519 lm!1477) lambda!180921) e!2846873)))

(declare-fun b!4566507 () Bool)

(declare-fun e!2846874 () Bool)

(assert (=> b!4566507 (= e!2846873 e!2846874)))

(declare-fun res!1906274 () Bool)

(assert (=> b!4566507 (=> (not res!1906274) (not e!2846874))))

(assert (=> b!4566507 (= res!1906274 (dynLambda!21298 lambda!180921 (h!56826 (toList!4519 lm!1477))))))

(declare-fun b!4566508 () Bool)

(assert (=> b!4566508 (= e!2846874 (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180921))))

(assert (= (and d!1423480 (not res!1906273)) b!4566507))

(assert (= (and b!4566507 res!1906274) b!4566508))

(declare-fun b_lambda!163137 () Bool)

(assert (=> (not b_lambda!163137) (not b!4566507)))

(declare-fun m!5361411 () Bool)

(assert (=> b!4566507 m!5361411))

(declare-fun m!5361413 () Bool)

(assert (=> b!4566508 m!5361413))

(assert (=> d!1423378 d!1423480))

(declare-fun d!1423482 () Bool)

(declare-fun res!1906279 () Bool)

(declare-fun e!2846879 () Bool)

(assert (=> d!1423482 (=> res!1906279 e!2846879)))

(assert (=> d!1423482 (= res!1906279 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (= (_1!29024 (h!56826 (toList!4519 lt!1735178))) hash!344)))))

(assert (=> d!1423482 (= (containsKey!2013 (toList!4519 lt!1735178) hash!344) e!2846879)))

(declare-fun b!4566513 () Bool)

(declare-fun e!2846880 () Bool)

(assert (=> b!4566513 (= e!2846879 e!2846880)))

(declare-fun res!1906280 () Bool)

(assert (=> b!4566513 (=> (not res!1906280) (not e!2846880))))

(assert (=> b!4566513 (= res!1906280 (and (or (not ((_ is Cons!50905) (toList!4519 lt!1735178))) (bvsle (_1!29024 (h!56826 (toList!4519 lt!1735178))) hash!344)) ((_ is Cons!50905) (toList!4519 lt!1735178)) (bvslt (_1!29024 (h!56826 (toList!4519 lt!1735178))) hash!344)))))

(declare-fun b!4566514 () Bool)

(assert (=> b!4566514 (= e!2846880 (containsKey!2013 (t!358007 (toList!4519 lt!1735178)) hash!344))))

(assert (= (and d!1423482 (not res!1906279)) b!4566513))

(assert (= (and b!4566513 res!1906280) b!4566514))

(declare-fun m!5361415 () Bool)

(assert (=> b!4566514 m!5361415))

(assert (=> d!1423396 d!1423482))

(declare-fun d!1423484 () Bool)

(declare-fun res!1906281 () Bool)

(declare-fun e!2846881 () Bool)

(assert (=> d!1423484 (=> res!1906281 e!2846881)))

(assert (=> d!1423484 (= res!1906281 (and ((_ is Cons!50905) (toList!4519 lm!1477)) (= (_1!29024 (h!56826 (toList!4519 lm!1477))) lt!1735180)))))

(assert (=> d!1423484 (= (containsKey!2013 (toList!4519 lm!1477) lt!1735180) e!2846881)))

(declare-fun b!4566515 () Bool)

(declare-fun e!2846882 () Bool)

(assert (=> b!4566515 (= e!2846881 e!2846882)))

(declare-fun res!1906282 () Bool)

(assert (=> b!4566515 (=> (not res!1906282) (not e!2846882))))

(assert (=> b!4566515 (= res!1906282 (and (or (not ((_ is Cons!50905) (toList!4519 lm!1477))) (bvsle (_1!29024 (h!56826 (toList!4519 lm!1477))) lt!1735180)) ((_ is Cons!50905) (toList!4519 lm!1477)) (bvslt (_1!29024 (h!56826 (toList!4519 lm!1477))) lt!1735180)))))

(declare-fun b!4566516 () Bool)

(assert (=> b!4566516 (= e!2846882 (containsKey!2013 (t!358007 (toList!4519 lm!1477)) lt!1735180))))

(assert (= (and d!1423484 (not res!1906281)) b!4566515))

(assert (= (and b!4566515 res!1906282) b!4566516))

(declare-fun m!5361417 () Bool)

(assert (=> b!4566516 m!5361417))

(assert (=> d!1423366 d!1423484))

(declare-fun bs!946666 () Bool)

(declare-fun b!4566591 () Bool)

(assert (= bs!946666 (and b!4566591 d!1423412)))

(declare-fun lambda!180978 () Int)

(assert (=> bs!946666 (not (= lambda!180978 lambda!180935))))

(assert (=> b!4566591 true))

(declare-fun bs!946667 () Bool)

(declare-fun b!4566588 () Bool)

(assert (= bs!946667 (and b!4566588 d!1423412)))

(declare-fun lambda!180979 () Int)

(assert (=> bs!946667 (not (= lambda!180979 lambda!180935))))

(declare-fun bs!946668 () Bool)

(assert (= bs!946668 (and b!4566588 b!4566591)))

(assert (=> bs!946668 (= lambda!180979 lambda!180978)))

(assert (=> b!4566588 true))

(declare-fun lambda!180980 () Int)

(assert (=> bs!946667 (not (= lambda!180980 lambda!180935))))

(declare-fun lt!1735559 () ListMap!3781)

(assert (=> bs!946668 (= (= lt!1735559 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!180980 lambda!180978))))

(assert (=> b!4566588 (= (= lt!1735559 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!180980 lambda!180979))))

(assert (=> b!4566588 true))

(declare-fun bs!946669 () Bool)

(declare-fun d!1423486 () Bool)

(assert (= bs!946669 (and d!1423486 d!1423412)))

(declare-fun lambda!180981 () Int)

(assert (=> bs!946669 (not (= lambda!180981 lambda!180935))))

(declare-fun bs!946670 () Bool)

(assert (= bs!946670 (and d!1423486 b!4566591)))

(declare-fun lt!1735554 () ListMap!3781)

(assert (=> bs!946670 (= (= lt!1735554 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!180981 lambda!180978))))

(declare-fun bs!946671 () Bool)

(assert (= bs!946671 (and d!1423486 b!4566588)))

(assert (=> bs!946671 (= (= lt!1735554 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!180981 lambda!180979))))

(assert (=> bs!946671 (= (= lt!1735554 lt!1735559) (= lambda!180981 lambda!180980))))

(assert (=> d!1423486 true))

(declare-fun e!2846924 () ListMap!3781)

(assert (=> b!4566588 (= e!2846924 lt!1735559)))

(declare-fun lt!1735542 () ListMap!3781)

(declare-fun +!1679 (ListMap!3781 tuple2!51458) ListMap!3781)

(assert (=> b!4566588 (= lt!1735542 (+!1679 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))))

(assert (=> b!4566588 (= lt!1735559 (addToMapMapFromBucket!769 (t!358006 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (+!1679 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))))))

(declare-fun lt!1735557 () Unit!103233)

(declare-fun call!318609 () Unit!103233)

(assert (=> b!4566588 (= lt!1735557 call!318609)))

(assert (=> b!4566588 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) lambda!180979)))

(declare-fun lt!1735560 () Unit!103233)

(assert (=> b!4566588 (= lt!1735560 lt!1735557)))

(assert (=> b!4566588 (forall!10464 (toList!4520 lt!1735542) lambda!180980)))

(declare-fun lt!1735550 () Unit!103233)

(declare-fun Unit!103261 () Unit!103233)

(assert (=> b!4566588 (= lt!1735550 Unit!103261)))

(declare-fun call!318608 () Bool)

(assert (=> b!4566588 call!318608))

(declare-fun lt!1735555 () Unit!103233)

(declare-fun Unit!103262 () Unit!103233)

(assert (=> b!4566588 (= lt!1735555 Unit!103262)))

(declare-fun lt!1735546 () Unit!103233)

(declare-fun Unit!103263 () Unit!103233)

(assert (=> b!4566588 (= lt!1735546 Unit!103263)))

(declare-fun lt!1735562 () Unit!103233)

(declare-fun forallContained!2724 (List!51028 Int tuple2!51458) Unit!103233)

(assert (=> b!4566588 (= lt!1735562 (forallContained!2724 (toList!4520 lt!1735542) lambda!180980 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))))

(assert (=> b!4566588 (contains!13773 lt!1735542 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))))

(declare-fun lt!1735561 () Unit!103233)

(declare-fun Unit!103264 () Unit!103233)

(assert (=> b!4566588 (= lt!1735561 Unit!103264)))

(assert (=> b!4566588 (contains!13773 lt!1735559 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))))

(declare-fun lt!1735556 () Unit!103233)

(declare-fun Unit!103265 () Unit!103233)

(assert (=> b!4566588 (= lt!1735556 Unit!103265)))

(assert (=> b!4566588 (forall!10464 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) lambda!180980)))

(declare-fun lt!1735544 () Unit!103233)

(declare-fun Unit!103267 () Unit!103233)

(assert (=> b!4566588 (= lt!1735544 Unit!103267)))

(declare-fun call!318610 () Bool)

(assert (=> b!4566588 call!318610))

(declare-fun lt!1735553 () Unit!103233)

(declare-fun Unit!103268 () Unit!103233)

(assert (=> b!4566588 (= lt!1735553 Unit!103268)))

(declare-fun lt!1735543 () Unit!103233)

(declare-fun Unit!103269 () Unit!103233)

(assert (=> b!4566588 (= lt!1735543 Unit!103269)))

(declare-fun lt!1735548 () Unit!103233)

(declare-fun addForallContainsKeyThenBeforeAdding!399 (ListMap!3781 ListMap!3781 K!12280 V!12526) Unit!103233)

(assert (=> b!4566588 (= lt!1735548 (addForallContainsKeyThenBeforeAdding!399 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) lt!1735559 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))) (_2!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))))))

(assert (=> b!4566588 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) lambda!180980)))

(declare-fun lt!1735552 () Unit!103233)

(assert (=> b!4566588 (= lt!1735552 lt!1735548)))

(assert (=> b!4566588 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) lambda!180980)))

(declare-fun lt!1735547 () Unit!103233)

(declare-fun Unit!103271 () Unit!103233)

(assert (=> b!4566588 (= lt!1735547 Unit!103271)))

(declare-fun res!1906302 () Bool)

(assert (=> b!4566588 (= res!1906302 (forall!10464 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) lambda!180980))))

(declare-fun e!2846922 () Bool)

(assert (=> b!4566588 (=> (not res!1906302) (not e!2846922))))

(assert (=> b!4566588 e!2846922))

(declare-fun lt!1735558 () Unit!103233)

(declare-fun Unit!103272 () Unit!103233)

(assert (=> b!4566588 (= lt!1735558 Unit!103272)))

(declare-fun b!4566589 () Bool)

(assert (=> b!4566589 (= e!2846922 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) lambda!180980))))

(declare-fun e!2846923 () Bool)

(assert (=> d!1423486 e!2846923))

(declare-fun res!1906303 () Bool)

(assert (=> d!1423486 (=> (not res!1906303) (not e!2846923))))

(assert (=> d!1423486 (= res!1906303 (forall!10464 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) lambda!180981))))

(assert (=> d!1423486 (= lt!1735554 e!2846924)))

(declare-fun c!780953 () Bool)

(assert (=> d!1423486 (= c!780953 ((_ is Nil!50904) (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))))

(assert (=> d!1423486 (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))

(assert (=> d!1423486 (= (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) lt!1735554)))

(declare-fun b!4566590 () Bool)

(assert (=> b!4566590 (= e!2846923 (invariantList!1083 (toList!4520 lt!1735554)))))

(assert (=> b!4566591 (= e!2846924 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))

(declare-fun lt!1735551 () Unit!103233)

(assert (=> b!4566591 (= lt!1735551 call!318609)))

(assert (=> b!4566591 call!318610))

(declare-fun lt!1735549 () Unit!103233)

(assert (=> b!4566591 (= lt!1735549 lt!1735551)))

(assert (=> b!4566591 call!318608))

(declare-fun lt!1735545 () Unit!103233)

(declare-fun Unit!103273 () Unit!103233)

(assert (=> b!4566591 (= lt!1735545 Unit!103273)))

(declare-fun bm!318603 () Bool)

(assert (=> bm!318603 (= call!318610 (forall!10464 (ite c!780953 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (toList!4520 lt!1735542)) (ite c!780953 lambda!180978 lambda!180980)))))

(declare-fun b!4566592 () Bool)

(declare-fun res!1906304 () Bool)

(assert (=> b!4566592 (=> (not res!1906304) (not e!2846923))))

(assert (=> b!4566592 (= res!1906304 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) lambda!180981))))

(declare-fun bm!318604 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!399 (ListMap!3781) Unit!103233)

(assert (=> bm!318604 (= call!318609 (lemmaContainsAllItsOwnKeys!399 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))))

(declare-fun bm!318605 () Bool)

(assert (=> bm!318605 (= call!318608 (forall!10464 (ite c!780953 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (t!358006 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))) (ite c!780953 lambda!180978 lambda!180980)))))

(assert (= (and d!1423486 c!780953) b!4566591))

(assert (= (and d!1423486 (not c!780953)) b!4566588))

(assert (= (and b!4566588 res!1906302) b!4566589))

(assert (= (or b!4566591 b!4566588) bm!318605))

(assert (= (or b!4566591 b!4566588) bm!318603))

(assert (= (or b!4566591 b!4566588) bm!318604))

(assert (= (and d!1423486 res!1906303) b!4566592))

(assert (= (and b!4566592 res!1906304) b!4566590))

(declare-fun m!5361475 () Bool)

(assert (=> bm!318603 m!5361475))

(declare-fun m!5361477 () Bool)

(assert (=> b!4566592 m!5361477))

(declare-fun m!5361479 () Bool)

(assert (=> d!1423486 m!5361479))

(declare-fun m!5361481 () Bool)

(assert (=> d!1423486 m!5361481))

(declare-fun m!5361483 () Bool)

(assert (=> b!4566588 m!5361483))

(declare-fun m!5361485 () Bool)

(assert (=> b!4566588 m!5361485))

(declare-fun m!5361487 () Bool)

(assert (=> b!4566588 m!5361487))

(declare-fun m!5361489 () Bool)

(assert (=> b!4566588 m!5361489))

(declare-fun m!5361491 () Bool)

(assert (=> b!4566588 m!5361491))

(declare-fun m!5361493 () Bool)

(assert (=> b!4566588 m!5361493))

(assert (=> b!4566588 m!5360923))

(declare-fun m!5361495 () Bool)

(assert (=> b!4566588 m!5361495))

(assert (=> b!4566588 m!5360923))

(assert (=> b!4566588 m!5361487))

(declare-fun m!5361497 () Bool)

(assert (=> b!4566588 m!5361497))

(declare-fun m!5361499 () Bool)

(assert (=> b!4566588 m!5361499))

(declare-fun m!5361501 () Bool)

(assert (=> b!4566588 m!5361501))

(assert (=> b!4566588 m!5361501))

(assert (=> b!4566588 m!5361497))

(declare-fun m!5361503 () Bool)

(assert (=> b!4566590 m!5361503))

(declare-fun m!5361505 () Bool)

(assert (=> bm!318605 m!5361505))

(assert (=> b!4566589 m!5361497))

(assert (=> bm!318604 m!5360923))

(declare-fun m!5361507 () Bool)

(assert (=> bm!318604 m!5361507))

(assert (=> b!4566158 d!1423486))

(declare-fun bs!946672 () Bool)

(declare-fun d!1423496 () Bool)

(assert (= bs!946672 (and d!1423496 d!1423408)))

(declare-fun lambda!180982 () Int)

(assert (=> bs!946672 (= lambda!180982 lambda!180929)))

(declare-fun bs!946673 () Bool)

(assert (= bs!946673 (and d!1423496 start!454364)))

(assert (=> bs!946673 (= lambda!180982 lambda!180879)))

(declare-fun bs!946674 () Bool)

(assert (= bs!946674 (and d!1423496 d!1423334)))

(assert (=> bs!946674 (= lambda!180982 lambda!180910)))

(declare-fun bs!946675 () Bool)

(assert (= bs!946675 (and d!1423496 d!1423378)))

(assert (=> bs!946675 (= lambda!180982 lambda!180921)))

(declare-fun bs!946676 () Bool)

(assert (= bs!946676 (and d!1423496 d!1423308)))

(assert (=> bs!946676 (= lambda!180982 lambda!180904)))

(declare-fun bs!946677 () Bool)

(assert (= bs!946677 (and d!1423496 d!1423372)))

(assert (=> bs!946677 (= lambda!180982 lambda!180920)))

(declare-fun bs!946678 () Bool)

(assert (= bs!946678 (and d!1423496 d!1423404)))

(assert (=> bs!946678 (= lambda!180982 lambda!180926)))

(declare-fun bs!946679 () Bool)

(assert (= bs!946679 (and d!1423496 d!1423386)))

(assert (=> bs!946679 (= lambda!180982 lambda!180924)))

(declare-fun bs!946680 () Bool)

(assert (= bs!946680 (and d!1423496 d!1423410)))

(assert (=> bs!946680 (not (= lambda!180982 lambda!180932))))

(declare-fun bs!946681 () Bool)

(assert (= bs!946681 (and d!1423496 d!1423274)))

(assert (=> bs!946681 (= lambda!180982 lambda!180892)))

(declare-fun bs!946682 () Bool)

(assert (= bs!946682 (and d!1423496 d!1423400)))

(assert (=> bs!946682 (= lambda!180982 lambda!180925)))

(declare-fun bs!946683 () Bool)

(assert (= bs!946683 (and d!1423496 d!1423298)))

(assert (=> bs!946683 (= lambda!180982 lambda!180893)))

(declare-fun lt!1735563 () ListMap!3781)

(assert (=> d!1423496 (invariantList!1083 (toList!4520 lt!1735563))))

(declare-fun e!2846925 () ListMap!3781)

(assert (=> d!1423496 (= lt!1735563 e!2846925)))

(declare-fun c!780954 () Bool)

(assert (=> d!1423496 (= c!780954 ((_ is Cons!50905) (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))

(assert (=> d!1423496 (forall!10462 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))) lambda!180982)))

(assert (=> d!1423496 (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) lt!1735563)))

(declare-fun b!4566595 () Bool)

(assert (=> b!4566595 (= e!2846925 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192)))))))))

(declare-fun b!4566596 () Bool)

(assert (=> b!4566596 (= e!2846925 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423496 c!780954) b!4566595))

(assert (= (and d!1423496 (not c!780954)) b!4566596))

(declare-fun m!5361509 () Bool)

(assert (=> d!1423496 m!5361509))

(declare-fun m!5361511 () Bool)

(assert (=> d!1423496 m!5361511))

(declare-fun m!5361513 () Bool)

(assert (=> b!4566595 m!5361513))

(assert (=> b!4566595 m!5361513))

(declare-fun m!5361515 () Bool)

(assert (=> b!4566595 m!5361515))

(assert (=> b!4566158 d!1423496))

(declare-fun d!1423498 () Bool)

(declare-fun isEmpty!28800 (Option!11295) Bool)

(assert (=> d!1423498 (= (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287)) (not (isEmpty!28800 (getValueByKey!1227 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))))

(declare-fun bs!946684 () Bool)

(assert (= bs!946684 d!1423498))

(assert (=> bs!946684 m!5361217))

(declare-fun m!5361517 () Bool)

(assert (=> bs!946684 m!5361517))

(assert (=> b!4566375 d!1423498))

(declare-fun b!4566607 () Bool)

(declare-fun e!2846931 () Option!11295)

(assert (=> b!4566607 (= e!2846931 (getValueByKey!1227 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(declare-fun d!1423500 () Bool)

(declare-fun c!780959 () Bool)

(assert (=> d!1423500 (= c!780959 (and ((_ is Cons!50904) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) key!3287)))))

(declare-fun e!2846930 () Option!11295)

(assert (=> d!1423500 (= (getValueByKey!1227 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287) e!2846930)))

(declare-fun b!4566605 () Bool)

(assert (=> b!4566605 (= e!2846930 (Some!11294 (_2!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))))

(declare-fun b!4566608 () Bool)

(assert (=> b!4566608 (= e!2846931 None!11294)))

(declare-fun b!4566606 () Bool)

(assert (=> b!4566606 (= e!2846930 e!2846931)))

(declare-fun c!780960 () Bool)

(assert (=> b!4566606 (= c!780960 (and ((_ is Cons!50904) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (not (= (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) key!3287))))))

(assert (= (and d!1423500 c!780959) b!4566605))

(assert (= (and d!1423500 (not c!780959)) b!4566606))

(assert (= (and b!4566606 c!780960) b!4566607))

(assert (= (and b!4566606 (not c!780960)) b!4566608))

(declare-fun m!5361519 () Bool)

(assert (=> b!4566607 m!5361519))

(assert (=> b!4566375 d!1423500))

(declare-fun d!1423502 () Bool)

(declare-fun res!1906305 () Bool)

(declare-fun e!2846932 () Bool)

(assert (=> d!1423502 (=> res!1906305 e!2846932)))

(assert (=> d!1423502 (= res!1906305 (and ((_ is Cons!50904) (t!358006 newBucket!178)) (= (_1!29023 (h!56825 (t!358006 newBucket!178))) (_1!29023 (h!56825 newBucket!178)))))))

(assert (=> d!1423502 (= (containsKey!2010 (t!358006 newBucket!178) (_1!29023 (h!56825 newBucket!178))) e!2846932)))

(declare-fun b!4566609 () Bool)

(declare-fun e!2846933 () Bool)

(assert (=> b!4566609 (= e!2846932 e!2846933)))

(declare-fun res!1906306 () Bool)

(assert (=> b!4566609 (=> (not res!1906306) (not e!2846933))))

(assert (=> b!4566609 (= res!1906306 ((_ is Cons!50904) (t!358006 newBucket!178)))))

(declare-fun b!4566610 () Bool)

(assert (=> b!4566610 (= e!2846933 (containsKey!2010 (t!358006 (t!358006 newBucket!178)) (_1!29023 (h!56825 newBucket!178))))))

(assert (= (and d!1423502 (not res!1906305)) b!4566609))

(assert (= (and b!4566609 res!1906306) b!4566610))

(declare-fun m!5361521 () Bool)

(assert (=> b!4566610 m!5361521))

(assert (=> b!4566337 d!1423502))

(declare-fun d!1423504 () Bool)

(assert (=> d!1423504 (= (get!16780 (getValueByKey!1226 (toList!4519 lm!1477) hash!344)) (v!45123 (getValueByKey!1226 (toList!4519 lm!1477) hash!344)))))

(assert (=> d!1423354 d!1423504))

(declare-fun b!4566619 () Bool)

(declare-fun e!2846938 () Option!11294)

(assert (=> b!4566619 (= e!2846938 (Some!11293 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(declare-fun d!1423506 () Bool)

(declare-fun c!780965 () Bool)

(assert (=> d!1423506 (= c!780965 (and ((_ is Cons!50905) (toList!4519 lm!1477)) (= (_1!29024 (h!56826 (toList!4519 lm!1477))) hash!344)))))

(assert (=> d!1423506 (= (getValueByKey!1226 (toList!4519 lm!1477) hash!344) e!2846938)))

(declare-fun b!4566622 () Bool)

(declare-fun e!2846939 () Option!11294)

(assert (=> b!4566622 (= e!2846939 None!11293)))

(declare-fun b!4566620 () Bool)

(assert (=> b!4566620 (= e!2846938 e!2846939)))

(declare-fun c!780966 () Bool)

(assert (=> b!4566620 (= c!780966 (and ((_ is Cons!50905) (toList!4519 lm!1477)) (not (= (_1!29024 (h!56826 (toList!4519 lm!1477))) hash!344))))))

(declare-fun b!4566621 () Bool)

(assert (=> b!4566621 (= e!2846939 (getValueByKey!1226 (t!358007 (toList!4519 lm!1477)) hash!344))))

(assert (= (and d!1423506 c!780965) b!4566619))

(assert (= (and d!1423506 (not c!780965)) b!4566620))

(assert (= (and b!4566620 c!780966) b!4566621))

(assert (= (and b!4566620 (not c!780966)) b!4566622))

(declare-fun m!5361523 () Bool)

(assert (=> b!4566621 m!5361523))

(assert (=> d!1423354 d!1423506))

(declare-fun d!1423508 () Bool)

(declare-fun res!1906307 () Bool)

(declare-fun e!2846940 () Bool)

(assert (=> d!1423508 (=> res!1906307 e!2846940)))

(assert (=> d!1423508 (= res!1906307 (and ((_ is Cons!50904) (t!358006 lt!1735181)) (= (_1!29023 (h!56825 (t!358006 lt!1735181))) key!3287)))))

(assert (=> d!1423508 (= (containsKey!2010 (t!358006 lt!1735181) key!3287) e!2846940)))

(declare-fun b!4566623 () Bool)

(declare-fun e!2846941 () Bool)

(assert (=> b!4566623 (= e!2846940 e!2846941)))

(declare-fun res!1906308 () Bool)

(assert (=> b!4566623 (=> (not res!1906308) (not e!2846941))))

(assert (=> b!4566623 (= res!1906308 ((_ is Cons!50904) (t!358006 lt!1735181)))))

(declare-fun b!4566624 () Bool)

(assert (=> b!4566624 (= e!2846941 (containsKey!2010 (t!358006 (t!358006 lt!1735181)) key!3287))))

(assert (= (and d!1423508 (not res!1906307)) b!4566623))

(assert (= (and b!4566623 res!1906308) b!4566624))

(declare-fun m!5361525 () Bool)

(assert (=> b!4566624 m!5361525))

(assert (=> b!4566362 d!1423508))

(declare-fun d!1423510 () Bool)

(assert (=> d!1423510 (= (invariantList!1083 (toList!4520 lt!1735402)) (noDuplicatedKeys!298 (toList!4520 lt!1735402)))))

(declare-fun bs!946685 () Bool)

(assert (= bs!946685 d!1423510))

(declare-fun m!5361527 () Bool)

(assert (=> bs!946685 m!5361527))

(assert (=> d!1423404 d!1423510))

(declare-fun d!1423512 () Bool)

(declare-fun res!1906309 () Bool)

(declare-fun e!2846942 () Bool)

(assert (=> d!1423512 (=> res!1906309 e!2846942)))

(assert (=> d!1423512 (= res!1906309 ((_ is Nil!50905) (t!358007 (toList!4519 lm!1477))))))

(assert (=> d!1423512 (= (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180926) e!2846942)))

(declare-fun b!4566625 () Bool)

(declare-fun e!2846943 () Bool)

(assert (=> b!4566625 (= e!2846942 e!2846943)))

(declare-fun res!1906310 () Bool)

(assert (=> b!4566625 (=> (not res!1906310) (not e!2846943))))

(assert (=> b!4566625 (= res!1906310 (dynLambda!21298 lambda!180926 (h!56826 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun b!4566626 () Bool)

(assert (=> b!4566626 (= e!2846943 (forall!10462 (t!358007 (t!358007 (toList!4519 lm!1477))) lambda!180926))))

(assert (= (and d!1423512 (not res!1906309)) b!4566625))

(assert (= (and b!4566625 res!1906310) b!4566626))

(declare-fun b_lambda!163139 () Bool)

(assert (=> (not b_lambda!163139) (not b!4566625)))

(declare-fun m!5361529 () Bool)

(assert (=> b!4566625 m!5361529))

(declare-fun m!5361531 () Bool)

(assert (=> b!4566626 m!5361531))

(assert (=> d!1423404 d!1423512))

(declare-fun d!1423514 () Bool)

(assert (=> d!1423514 (= (tail!7889 (toList!4519 lm!1477)) (t!358007 (toList!4519 lm!1477)))))

(assert (=> d!1423398 d!1423514))

(declare-fun d!1423516 () Bool)

(declare-fun c!780969 () Bool)

(assert (=> d!1423516 (= c!780969 ((_ is Nil!50905) (t!358007 (toList!4519 lm!1477))))))

(declare-fun e!2846946 () (InoxSet tuple2!51460))

(assert (=> d!1423516 (= (content!8546 (t!358007 (toList!4519 lm!1477))) e!2846946)))

(declare-fun b!4566631 () Bool)

(assert (=> b!4566631 (= e!2846946 ((as const (Array tuple2!51460 Bool)) false))))

(declare-fun b!4566632 () Bool)

(assert (=> b!4566632 (= e!2846946 ((_ map or) (store ((as const (Array tuple2!51460 Bool)) false) (h!56826 (t!358007 (toList!4519 lm!1477))) true) (content!8546 (t!358007 (t!358007 (toList!4519 lm!1477))))))))

(assert (= (and d!1423516 c!780969) b!4566631))

(assert (= (and d!1423516 (not c!780969)) b!4566632))

(declare-fun m!5361533 () Bool)

(assert (=> b!4566632 m!5361533))

(declare-fun m!5361535 () Bool)

(assert (=> b!4566632 m!5361535))

(assert (=> d!1423414 d!1423516))

(declare-fun d!1423518 () Bool)

(assert (=> d!1423518 (= (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735194) key!3287)) (not (isEmpty!28800 (getValueByKey!1227 (toList!4520 lt!1735194) key!3287))))))

(declare-fun bs!946686 () Bool)

(assert (= bs!946686 d!1423518))

(assert (=> bs!946686 m!5361153))

(declare-fun m!5361537 () Bool)

(assert (=> bs!946686 m!5361537))

(assert (=> b!4566329 d!1423518))

(declare-fun b!4566635 () Bool)

(declare-fun e!2846948 () Option!11295)

(assert (=> b!4566635 (= e!2846948 (getValueByKey!1227 (t!358006 (toList!4520 lt!1735194)) key!3287))))

(declare-fun d!1423520 () Bool)

(declare-fun c!780970 () Bool)

(assert (=> d!1423520 (= c!780970 (and ((_ is Cons!50904) (toList!4520 lt!1735194)) (= (_1!29023 (h!56825 (toList!4520 lt!1735194))) key!3287)))))

(declare-fun e!2846947 () Option!11295)

(assert (=> d!1423520 (= (getValueByKey!1227 (toList!4520 lt!1735194) key!3287) e!2846947)))

(declare-fun b!4566633 () Bool)

(assert (=> b!4566633 (= e!2846947 (Some!11294 (_2!29023 (h!56825 (toList!4520 lt!1735194)))))))

(declare-fun b!4566636 () Bool)

(assert (=> b!4566636 (= e!2846948 None!11294)))

(declare-fun b!4566634 () Bool)

(assert (=> b!4566634 (= e!2846947 e!2846948)))

(declare-fun c!780971 () Bool)

(assert (=> b!4566634 (= c!780971 (and ((_ is Cons!50904) (toList!4520 lt!1735194)) (not (= (_1!29023 (h!56825 (toList!4520 lt!1735194))) key!3287))))))

(assert (= (and d!1423520 c!780970) b!4566633))

(assert (= (and d!1423520 (not c!780970)) b!4566634))

(assert (= (and b!4566634 c!780971) b!4566635))

(assert (= (and b!4566634 (not c!780971)) b!4566636))

(declare-fun m!5361539 () Bool)

(assert (=> b!4566635 m!5361539))

(assert (=> b!4566329 d!1423520))

(declare-fun d!1423522 () Bool)

(declare-fun lt!1735564 () Bool)

(assert (=> d!1423522 (= lt!1735564 (select (content!8545 (keys!17764 lt!1735189)) key!3287))))

(declare-fun e!2846949 () Bool)

(assert (=> d!1423522 (= lt!1735564 e!2846949)))

(declare-fun res!1906311 () Bool)

(assert (=> d!1423522 (=> (not res!1906311) (not e!2846949))))

(assert (=> d!1423522 (= res!1906311 ((_ is Cons!50907) (keys!17764 lt!1735189)))))

(assert (=> d!1423522 (= (contains!13777 (keys!17764 lt!1735189) key!3287) lt!1735564)))

(declare-fun b!4566637 () Bool)

(declare-fun e!2846950 () Bool)

(assert (=> b!4566637 (= e!2846949 e!2846950)))

(declare-fun res!1906312 () Bool)

(assert (=> b!4566637 (=> res!1906312 e!2846950)))

(assert (=> b!4566637 (= res!1906312 (= (h!56830 (keys!17764 lt!1735189)) key!3287))))

(declare-fun b!4566638 () Bool)

(assert (=> b!4566638 (= e!2846950 (contains!13777 (t!358009 (keys!17764 lt!1735189)) key!3287))))

(assert (= (and d!1423522 res!1906311) b!4566637))

(assert (= (and b!4566637 (not res!1906312)) b!4566638))

(assert (=> d!1423522 m!5360837))

(assert (=> d!1423522 m!5360839))

(declare-fun m!5361541 () Bool)

(assert (=> d!1423522 m!5361541))

(declare-fun m!5361543 () Bool)

(assert (=> b!4566638 m!5361543))

(assert (=> b!4566381 d!1423522))

(declare-fun bs!946687 () Bool)

(declare-fun b!4566640 () Bool)

(assert (= bs!946687 (and b!4566640 b!4566496)))

(declare-fun lambda!180983 () Int)

(assert (=> bs!946687 (= (= (toList!4520 lt!1735189) (toList!4520 lt!1735194)) (= lambda!180983 lambda!180946))))

(declare-fun bs!946688 () Bool)

(assert (= bs!946688 (and b!4566640 b!4566503)))

(assert (=> bs!946688 (= (= (toList!4520 lt!1735189) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!180983 lambda!180948))))

(assert (=> b!4566640 true))

(declare-fun bs!946689 () Bool)

(declare-fun b!4566641 () Bool)

(assert (= bs!946689 (and b!4566641 b!4566497)))

(declare-fun lambda!180984 () Int)

(assert (=> bs!946689 (= lambda!180984 lambda!180947)))

(declare-fun bs!946690 () Bool)

(assert (= bs!946690 (and b!4566641 b!4566504)))

(assert (=> bs!946690 (= lambda!180984 lambda!180949)))

(declare-fun d!1423524 () Bool)

(declare-fun e!2846951 () Bool)

(assert (=> d!1423524 e!2846951))

(declare-fun res!1906315 () Bool)

(assert (=> d!1423524 (=> (not res!1906315) (not e!2846951))))

(declare-fun lt!1735565 () List!51031)

(assert (=> d!1423524 (= res!1906315 (noDuplicate!784 lt!1735565))))

(assert (=> d!1423524 (= lt!1735565 (getKeysList!531 (toList!4520 lt!1735189)))))

(assert (=> d!1423524 (= (keys!17764 lt!1735189) lt!1735565)))

(declare-fun b!4566639 () Bool)

(declare-fun res!1906314 () Bool)

(assert (=> b!4566639 (=> (not res!1906314) (not e!2846951))))

(assert (=> b!4566639 (= res!1906314 (= (length!424 lt!1735565) (length!425 (toList!4520 lt!1735189))))))

(declare-fun res!1906313 () Bool)

(assert (=> b!4566640 (=> (not res!1906313) (not e!2846951))))

(assert (=> b!4566640 (= res!1906313 (forall!10466 lt!1735565 lambda!180983))))

(assert (=> b!4566641 (= e!2846951 (= (content!8545 lt!1735565) (content!8545 (map!11223 (toList!4520 lt!1735189) lambda!180984))))))

(assert (= (and d!1423524 res!1906315) b!4566639))

(assert (= (and b!4566639 res!1906314) b!4566640))

(assert (= (and b!4566640 res!1906313) b!4566641))

(declare-fun m!5361545 () Bool)

(assert (=> d!1423524 m!5361545))

(assert (=> d!1423524 m!5361239))

(declare-fun m!5361547 () Bool)

(assert (=> b!4566639 m!5361547))

(declare-fun m!5361549 () Bool)

(assert (=> b!4566639 m!5361549))

(declare-fun m!5361551 () Bool)

(assert (=> b!4566640 m!5361551))

(declare-fun m!5361553 () Bool)

(assert (=> b!4566641 m!5361553))

(declare-fun m!5361555 () Bool)

(assert (=> b!4566641 m!5361555))

(assert (=> b!4566641 m!5361555))

(declare-fun m!5361557 () Bool)

(assert (=> b!4566641 m!5361557))

(assert (=> b!4566381 d!1423524))

(declare-fun b!4566646 () Bool)

(declare-fun e!2846954 () Option!11294)

(assert (=> b!4566646 (= e!2846954 (Some!11293 (_2!29024 (h!56826 (toList!4519 lt!1735216)))))))

(declare-fun d!1423526 () Bool)

(declare-fun c!780974 () Bool)

(assert (=> d!1423526 (= c!780974 (and ((_ is Cons!50905) (toList!4519 lt!1735216)) (= (_1!29024 (h!56826 (toList!4519 lt!1735216))) (_1!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (=> d!1423526 (= (getValueByKey!1226 (toList!4519 lt!1735216) (_1!29024 (tuple2!51461 hash!344 newBucket!178))) e!2846954)))

(declare-fun b!4566649 () Bool)

(declare-fun e!2846955 () Option!11294)

(assert (=> b!4566649 (= e!2846955 None!11293)))

(declare-fun b!4566647 () Bool)

(assert (=> b!4566647 (= e!2846954 e!2846955)))

(declare-fun c!780975 () Bool)

(assert (=> b!4566647 (= c!780975 (and ((_ is Cons!50905) (toList!4519 lt!1735216)) (not (= (_1!29024 (h!56826 (toList!4519 lt!1735216))) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))))

(declare-fun b!4566648 () Bool)

(assert (=> b!4566648 (= e!2846955 (getValueByKey!1226 (t!358007 (toList!4519 lt!1735216)) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(assert (= (and d!1423526 c!780974) b!4566646))

(assert (= (and d!1423526 (not c!780974)) b!4566647))

(assert (= (and b!4566647 c!780975) b!4566648))

(assert (= (and b!4566647 (not c!780975)) b!4566649))

(declare-fun m!5361559 () Bool)

(assert (=> b!4566648 m!5361559))

(assert (=> b!4566108 d!1423526))

(declare-fun d!1423528 () Bool)

(declare-fun res!1906316 () Bool)

(declare-fun e!2846956 () Bool)

(assert (=> d!1423528 (=> res!1906316 e!2846956)))

(assert (=> d!1423528 (= res!1906316 (and ((_ is Cons!50904) (_2!29024 (h!56826 (toList!4519 lt!1735178)))) (= (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178))))) key!3287)))))

(assert (=> d!1423528 (= (containsKey!2010 (_2!29024 (h!56826 (toList!4519 lt!1735178))) key!3287) e!2846956)))

(declare-fun b!4566650 () Bool)

(declare-fun e!2846957 () Bool)

(assert (=> b!4566650 (= e!2846956 e!2846957)))

(declare-fun res!1906317 () Bool)

(assert (=> b!4566650 (=> (not res!1906317) (not e!2846957))))

(assert (=> b!4566650 (= res!1906317 ((_ is Cons!50904) (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(declare-fun b!4566651 () Bool)

(assert (=> b!4566651 (= e!2846957 (containsKey!2010 (t!358006 (_2!29024 (h!56826 (toList!4519 lt!1735178)))) key!3287))))

(assert (= (and d!1423528 (not res!1906316)) b!4566650))

(assert (= (and b!4566650 res!1906317) b!4566651))

(declare-fun m!5361561 () Bool)

(assert (=> b!4566651 m!5361561))

(assert (=> b!4566348 d!1423528))

(declare-fun d!1423530 () Bool)

(declare-fun lt!1735572 () Bool)

(assert (=> d!1423530 (= lt!1735572 (select (content!8546 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735187))))

(declare-fun e!2846958 () Bool)

(assert (=> d!1423530 (= lt!1735572 e!2846958)))

(declare-fun res!1906319 () Bool)

(assert (=> d!1423530 (=> (not res!1906319) (not e!2846958))))

(assert (=> d!1423530 (= res!1906319 ((_ is Cons!50905) (t!358007 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423530 (= (contains!13775 (t!358007 (t!358007 (toList!4519 lm!1477))) lt!1735187) lt!1735572)))

(declare-fun b!4566652 () Bool)

(declare-fun e!2846959 () Bool)

(assert (=> b!4566652 (= e!2846958 e!2846959)))

(declare-fun res!1906318 () Bool)

(assert (=> b!4566652 (=> res!1906318 e!2846959)))

(assert (=> b!4566652 (= res!1906318 (= (h!56826 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735187))))

(declare-fun b!4566653 () Bool)

(assert (=> b!4566653 (= e!2846959 (contains!13775 (t!358007 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735187))))

(assert (= (and d!1423530 res!1906319) b!4566652))

(assert (= (and b!4566652 (not res!1906318)) b!4566653))

(assert (=> d!1423530 m!5361535))

(declare-fun m!5361563 () Bool)

(assert (=> d!1423530 m!5361563))

(declare-fun m!5361565 () Bool)

(assert (=> b!4566653 m!5361565))

(assert (=> b!4566395 d!1423530))

(declare-fun b!4566654 () Bool)

(declare-fun e!2846960 () Option!11294)

(assert (=> b!4566654 (= e!2846960 (Some!11293 (_2!29024 (h!56826 (toList!4519 lt!1735220)))))))

(declare-fun d!1423532 () Bool)

(declare-fun c!780976 () Bool)

(assert (=> d!1423532 (= c!780976 (and ((_ is Cons!50905) (toList!4519 lt!1735220)) (= (_1!29024 (h!56826 (toList!4519 lt!1735220))) (_1!29024 lt!1735192))))))

(assert (=> d!1423532 (= (getValueByKey!1226 (toList!4519 lt!1735220) (_1!29024 lt!1735192)) e!2846960)))

(declare-fun b!4566657 () Bool)

(declare-fun e!2846961 () Option!11294)

(assert (=> b!4566657 (= e!2846961 None!11293)))

(declare-fun b!4566655 () Bool)

(assert (=> b!4566655 (= e!2846960 e!2846961)))

(declare-fun c!780977 () Bool)

(assert (=> b!4566655 (= c!780977 (and ((_ is Cons!50905) (toList!4519 lt!1735220)) (not (= (_1!29024 (h!56826 (toList!4519 lt!1735220))) (_1!29024 lt!1735192)))))))

(declare-fun b!4566656 () Bool)

(assert (=> b!4566656 (= e!2846961 (getValueByKey!1226 (t!358007 (toList!4519 lt!1735220)) (_1!29024 lt!1735192)))))

(assert (= (and d!1423532 c!780976) b!4566654))

(assert (= (and d!1423532 (not c!780976)) b!4566655))

(assert (= (and b!4566655 c!780977) b!4566656))

(assert (= (and b!4566655 (not c!780977)) b!4566657))

(declare-fun m!5361567 () Bool)

(assert (=> b!4566656 m!5361567))

(assert (=> b!4566110 d!1423532))

(declare-fun d!1423534 () Bool)

(declare-fun c!780980 () Bool)

(assert (=> d!1423534 (= c!780980 ((_ is Nil!50907) (keys!17764 lt!1735189)))))

(declare-fun e!2846964 () (InoxSet K!12280))

(assert (=> d!1423534 (= (content!8545 (keys!17764 lt!1735189)) e!2846964)))

(declare-fun b!4566662 () Bool)

(assert (=> b!4566662 (= e!2846964 ((as const (Array K!12280 Bool)) false))))

(declare-fun b!4566663 () Bool)

(assert (=> b!4566663 (= e!2846964 ((_ map or) (store ((as const (Array K!12280 Bool)) false) (h!56830 (keys!17764 lt!1735189)) true) (content!8545 (t!358009 (keys!17764 lt!1735189)))))))

(assert (= (and d!1423534 c!780980) b!4566662))

(assert (= (and d!1423534 (not c!780980)) b!4566663))

(declare-fun m!5361569 () Bool)

(assert (=> b!4566663 m!5361569))

(declare-fun m!5361571 () Bool)

(assert (=> b!4566663 m!5361571))

(assert (=> b!4566122 d!1423534))

(assert (=> b!4566122 d!1423524))

(declare-fun d!1423536 () Bool)

(declare-fun c!780981 () Bool)

(assert (=> d!1423536 (= c!780981 ((_ is Nil!50907) (keys!17764 lt!1735234)))))

(declare-fun e!2846965 () (InoxSet K!12280))

(assert (=> d!1423536 (= (content!8545 (keys!17764 lt!1735234)) e!2846965)))

(declare-fun b!4566664 () Bool)

(assert (=> b!4566664 (= e!2846965 ((as const (Array K!12280 Bool)) false))))

(declare-fun b!4566665 () Bool)

(assert (=> b!4566665 (= e!2846965 ((_ map or) (store ((as const (Array K!12280 Bool)) false) (h!56830 (keys!17764 lt!1735234)) true) (content!8545 (t!358009 (keys!17764 lt!1735234)))))))

(assert (= (and d!1423536 c!780981) b!4566664))

(assert (= (and d!1423536 (not c!780981)) b!4566665))

(declare-fun m!5361573 () Bool)

(assert (=> b!4566665 m!5361573))

(declare-fun m!5361575 () Bool)

(assert (=> b!4566665 m!5361575))

(assert (=> b!4566122 d!1423536))

(declare-fun bs!946691 () Bool)

(declare-fun b!4566667 () Bool)

(assert (= bs!946691 (and b!4566667 b!4566496)))

(declare-fun lambda!180992 () Int)

(assert (=> bs!946691 (= (= (toList!4520 lt!1735234) (toList!4520 lt!1735194)) (= lambda!180992 lambda!180946))))

(declare-fun bs!946692 () Bool)

(assert (= bs!946692 (and b!4566667 b!4566503)))

(assert (=> bs!946692 (= (= (toList!4520 lt!1735234) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!180992 lambda!180948))))

(declare-fun bs!946693 () Bool)

(assert (= bs!946693 (and b!4566667 b!4566640)))

(assert (=> bs!946693 (= (= (toList!4520 lt!1735234) (toList!4520 lt!1735189)) (= lambda!180992 lambda!180983))))

(assert (=> b!4566667 true))

(declare-fun bs!946694 () Bool)

(declare-fun b!4566668 () Bool)

(assert (= bs!946694 (and b!4566668 b!4566497)))

(declare-fun lambda!180994 () Int)

(assert (=> bs!946694 (= lambda!180994 lambda!180947)))

(declare-fun bs!946695 () Bool)

(assert (= bs!946695 (and b!4566668 b!4566504)))

(assert (=> bs!946695 (= lambda!180994 lambda!180949)))

(declare-fun bs!946696 () Bool)

(assert (= bs!946696 (and b!4566668 b!4566641)))

(assert (=> bs!946696 (= lambda!180994 lambda!180984)))

(declare-fun d!1423538 () Bool)

(declare-fun e!2846966 () Bool)

(assert (=> d!1423538 e!2846966))

(declare-fun res!1906322 () Bool)

(assert (=> d!1423538 (=> (not res!1906322) (not e!2846966))))

(declare-fun lt!1735585 () List!51031)

(assert (=> d!1423538 (= res!1906322 (noDuplicate!784 lt!1735585))))

(assert (=> d!1423538 (= lt!1735585 (getKeysList!531 (toList!4520 lt!1735234)))))

(assert (=> d!1423538 (= (keys!17764 lt!1735234) lt!1735585)))

(declare-fun b!4566666 () Bool)

(declare-fun res!1906321 () Bool)

(assert (=> b!4566666 (=> (not res!1906321) (not e!2846966))))

(assert (=> b!4566666 (= res!1906321 (= (length!424 lt!1735585) (length!425 (toList!4520 lt!1735234))))))

(declare-fun res!1906320 () Bool)

(assert (=> b!4566667 (=> (not res!1906320) (not e!2846966))))

(assert (=> b!4566667 (= res!1906320 (forall!10466 lt!1735585 lambda!180992))))

(assert (=> b!4566668 (= e!2846966 (= (content!8545 lt!1735585) (content!8545 (map!11223 (toList!4520 lt!1735234) lambda!180994))))))

(assert (= (and d!1423538 res!1906322) b!4566666))

(assert (= (and b!4566666 res!1906321) b!4566667))

(assert (= (and b!4566667 res!1906320) b!4566668))

(declare-fun m!5361577 () Bool)

(assert (=> d!1423538 m!5361577))

(declare-fun m!5361579 () Bool)

(assert (=> d!1423538 m!5361579))

(declare-fun m!5361581 () Bool)

(assert (=> b!4566666 m!5361581))

(declare-fun m!5361583 () Bool)

(assert (=> b!4566666 m!5361583))

(declare-fun m!5361585 () Bool)

(assert (=> b!4566667 m!5361585))

(declare-fun m!5361587 () Bool)

(assert (=> b!4566668 m!5361587))

(declare-fun m!5361589 () Bool)

(assert (=> b!4566668 m!5361589))

(assert (=> b!4566668 m!5361589))

(declare-fun m!5361591 () Bool)

(assert (=> b!4566668 m!5361591))

(assert (=> b!4566122 d!1423538))

(declare-fun d!1423540 () Bool)

(declare-fun res!1906323 () Bool)

(declare-fun e!2846967 () Bool)

(assert (=> d!1423540 (=> res!1906323 e!2846967)))

(assert (=> d!1423540 (= res!1906323 ((_ is Nil!50905) (t!358007 (toList!4519 lm!1477))))))

(assert (=> d!1423540 (= (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180879) e!2846967)))

(declare-fun b!4566669 () Bool)

(declare-fun e!2846968 () Bool)

(assert (=> b!4566669 (= e!2846967 e!2846968)))

(declare-fun res!1906324 () Bool)

(assert (=> b!4566669 (=> (not res!1906324) (not e!2846968))))

(assert (=> b!4566669 (= res!1906324 (dynLambda!21298 lambda!180879 (h!56826 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun b!4566670 () Bool)

(assert (=> b!4566670 (= e!2846968 (forall!10462 (t!358007 (t!358007 (toList!4519 lm!1477))) lambda!180879))))

(assert (= (and d!1423540 (not res!1906323)) b!4566669))

(assert (= (and b!4566669 res!1906324) b!4566670))

(declare-fun b_lambda!163141 () Bool)

(assert (=> (not b_lambda!163141) (not b!4566669)))

(declare-fun m!5361593 () Bool)

(assert (=> b!4566669 m!5361593))

(declare-fun m!5361595 () Bool)

(assert (=> b!4566670 m!5361595))

(assert (=> b!4566356 d!1423540))

(declare-fun lt!1735592 () Bool)

(declare-fun d!1423542 () Bool)

(assert (=> d!1423542 (= lt!1735592 (select (content!8546 (toList!4519 lm!1477)) (tuple2!51461 hash!344 lt!1735181)))))

(declare-fun e!2846969 () Bool)

(assert (=> d!1423542 (= lt!1735592 e!2846969)))

(declare-fun res!1906326 () Bool)

(assert (=> d!1423542 (=> (not res!1906326) (not e!2846969))))

(assert (=> d!1423542 (= res!1906326 ((_ is Cons!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423542 (= (contains!13775 (toList!4519 lm!1477) (tuple2!51461 hash!344 lt!1735181)) lt!1735592)))

(declare-fun b!4566671 () Bool)

(declare-fun e!2846970 () Bool)

(assert (=> b!4566671 (= e!2846969 e!2846970)))

(declare-fun res!1906325 () Bool)

(assert (=> b!4566671 (=> res!1906325 e!2846970)))

(assert (=> b!4566671 (= res!1906325 (= (h!56826 (toList!4519 lm!1477)) (tuple2!51461 hash!344 lt!1735181)))))

(declare-fun b!4566672 () Bool)

(assert (=> b!4566672 (= e!2846970 (contains!13775 (t!358007 (toList!4519 lm!1477)) (tuple2!51461 hash!344 lt!1735181)))))

(assert (= (and d!1423542 res!1906326) b!4566671))

(assert (= (and b!4566671 (not res!1906325)) b!4566672))

(assert (=> d!1423542 m!5361085))

(declare-fun m!5361597 () Bool)

(assert (=> d!1423542 m!5361597))

(declare-fun m!5361599 () Bool)

(assert (=> b!4566672 m!5361599))

(assert (=> d!1423368 d!1423542))

(declare-fun d!1423544 () Bool)

(assert (=> d!1423544 (contains!13775 (toList!4519 lm!1477) (tuple2!51461 hash!344 lt!1735181))))

(assert (=> d!1423544 true))

(declare-fun _$14!1331 () Unit!103233)

(assert (=> d!1423544 (= (choose!30326 (toList!4519 lm!1477) hash!344 lt!1735181) _$14!1331)))

(declare-fun bs!946697 () Bool)

(assert (= bs!946697 d!1423544))

(assert (=> bs!946697 m!5361123))

(assert (=> d!1423368 d!1423544))

(declare-fun d!1423546 () Bool)

(declare-fun res!1906331 () Bool)

(declare-fun e!2846975 () Bool)

(assert (=> d!1423546 (=> res!1906331 e!2846975)))

(assert (=> d!1423546 (= res!1906331 (or ((_ is Nil!50905) (toList!4519 lm!1477)) ((_ is Nil!50905) (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423546 (= (isStrictlySorted!498 (toList!4519 lm!1477)) e!2846975)))

(declare-fun b!4566677 () Bool)

(declare-fun e!2846976 () Bool)

(assert (=> b!4566677 (= e!2846975 e!2846976)))

(declare-fun res!1906332 () Bool)

(assert (=> b!4566677 (=> (not res!1906332) (not e!2846976))))

(assert (=> b!4566677 (= res!1906332 (bvslt (_1!29024 (h!56826 (toList!4519 lm!1477))) (_1!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))

(declare-fun b!4566678 () Bool)

(assert (=> b!4566678 (= e!2846976 (isStrictlySorted!498 (t!358007 (toList!4519 lm!1477))))))

(assert (= (and d!1423546 (not res!1906331)) b!4566677))

(assert (= (and b!4566677 res!1906332) b!4566678))

(declare-fun m!5361601 () Bool)

(assert (=> b!4566678 m!5361601))

(assert (=> d!1423368 d!1423546))

(declare-fun d!1423548 () Bool)

(assert (=> d!1423548 (= (head!9510 (toList!4519 lm!1477)) (h!56826 (toList!4519 lm!1477)))))

(assert (=> d!1423302 d!1423548))

(declare-fun b!4566679 () Bool)

(declare-fun e!2846979 () Unit!103233)

(declare-fun Unit!103289 () Unit!103233)

(assert (=> b!4566679 (= e!2846979 Unit!103289)))

(declare-fun b!4566680 () Bool)

(declare-fun e!2846980 () Bool)

(assert (=> b!4566680 (= e!2846980 (not (contains!13777 (keys!17764 (extractMap!1312 (toList!4519 lt!1735178))) key!3287)))))

(declare-fun b!4566681 () Bool)

(declare-fun e!2846982 () Bool)

(assert (=> b!4566681 (= e!2846982 (contains!13777 (keys!17764 (extractMap!1312 (toList!4519 lt!1735178))) key!3287))))

(declare-fun b!4566682 () Bool)

(declare-fun e!2846983 () List!51031)

(assert (=> b!4566682 (= e!2846983 (keys!17764 (extractMap!1312 (toList!4519 lt!1735178))))))

(declare-fun d!1423550 () Bool)

(declare-fun e!2846981 () Bool)

(assert (=> d!1423550 e!2846981))

(declare-fun res!1906336 () Bool)

(assert (=> d!1423550 (=> res!1906336 e!2846981)))

(assert (=> d!1423550 (= res!1906336 e!2846980)))

(declare-fun res!1906335 () Bool)

(assert (=> d!1423550 (=> (not res!1906335) (not e!2846980))))

(declare-fun lt!1735618 () Bool)

(assert (=> d!1423550 (= res!1906335 (not lt!1735618))))

(declare-fun lt!1735612 () Bool)

(assert (=> d!1423550 (= lt!1735618 lt!1735612)))

(declare-fun lt!1735614 () Unit!103233)

(declare-fun e!2846984 () Unit!103233)

(assert (=> d!1423550 (= lt!1735614 e!2846984)))

(declare-fun c!780983 () Bool)

(assert (=> d!1423550 (= c!780983 lt!1735612)))

(assert (=> d!1423550 (= lt!1735612 (containsKey!2014 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287))))

(assert (=> d!1423550 (= (contains!13773 (extractMap!1312 (toList!4519 lt!1735178)) key!3287) lt!1735618)))

(declare-fun b!4566683 () Bool)

(assert (=> b!4566683 false))

(declare-fun lt!1735617 () Unit!103233)

(declare-fun lt!1735616 () Unit!103233)

(assert (=> b!4566683 (= lt!1735617 lt!1735616)))

(assert (=> b!4566683 (containsKey!2014 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287)))

(assert (=> b!4566683 (= lt!1735616 (lemmaInGetKeysListThenContainsKey!530 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287))))

(declare-fun Unit!103290 () Unit!103233)

(assert (=> b!4566683 (= e!2846979 Unit!103290)))

(declare-fun bm!318606 () Bool)

(declare-fun call!318611 () Bool)

(assert (=> bm!318606 (= call!318611 (contains!13777 e!2846983 key!3287))))

(declare-fun c!780982 () Bool)

(assert (=> bm!318606 (= c!780982 c!780983)))

(declare-fun b!4566684 () Bool)

(assert (=> b!4566684 (= e!2846984 e!2846979)))

(declare-fun c!780984 () Bool)

(assert (=> b!4566684 (= c!780984 call!318611)))

(declare-fun b!4566685 () Bool)

(assert (=> b!4566685 (= e!2846983 (getKeysList!531 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178)))))))

(declare-fun b!4566686 () Bool)

(assert (=> b!4566686 (= e!2846981 e!2846982)))

(declare-fun res!1906337 () Bool)

(assert (=> b!4566686 (=> (not res!1906337) (not e!2846982))))

(assert (=> b!4566686 (= res!1906337 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287)))))

(declare-fun b!4566687 () Bool)

(declare-fun lt!1735613 () Unit!103233)

(assert (=> b!4566687 (= e!2846984 lt!1735613)))

(declare-fun lt!1735615 () Unit!103233)

(assert (=> b!4566687 (= lt!1735615 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287))))

(assert (=> b!4566687 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287))))

(declare-fun lt!1735611 () Unit!103233)

(assert (=> b!4566687 (= lt!1735611 lt!1735615)))

(assert (=> b!4566687 (= lt!1735613 (lemmaInListThenGetKeysListContains!527 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287))))

(assert (=> b!4566687 call!318611))

(assert (= (and d!1423550 c!780983) b!4566687))

(assert (= (and d!1423550 (not c!780983)) b!4566684))

(assert (= (and b!4566684 c!780984) b!4566683))

(assert (= (and b!4566684 (not c!780984)) b!4566679))

(assert (= (or b!4566687 b!4566684) bm!318606))

(assert (= (and bm!318606 c!780982) b!4566685))

(assert (= (and bm!318606 (not c!780982)) b!4566682))

(assert (= (and d!1423550 res!1906335) b!4566680))

(assert (= (and d!1423550 (not res!1906336)) b!4566686))

(assert (= (and b!4566686 res!1906337) b!4566681))

(declare-fun m!5361603 () Bool)

(assert (=> b!4566683 m!5361603))

(declare-fun m!5361605 () Bool)

(assert (=> b!4566683 m!5361605))

(assert (=> b!4566681 m!5360735))

(declare-fun m!5361607 () Bool)

(assert (=> b!4566681 m!5361607))

(assert (=> b!4566681 m!5361607))

(declare-fun m!5361609 () Bool)

(assert (=> b!4566681 m!5361609))

(assert (=> b!4566682 m!5360735))

(assert (=> b!4566682 m!5361607))

(declare-fun m!5361611 () Bool)

(assert (=> b!4566685 m!5361611))

(declare-fun m!5361613 () Bool)

(assert (=> bm!318606 m!5361613))

(declare-fun m!5361615 () Bool)

(assert (=> b!4566686 m!5361615))

(assert (=> b!4566686 m!5361615))

(declare-fun m!5361617 () Bool)

(assert (=> b!4566686 m!5361617))

(assert (=> b!4566680 m!5360735))

(assert (=> b!4566680 m!5361607))

(assert (=> b!4566680 m!5361607))

(assert (=> b!4566680 m!5361609))

(assert (=> d!1423550 m!5361603))

(declare-fun m!5361619 () Bool)

(assert (=> b!4566687 m!5361619))

(assert (=> b!4566687 m!5361615))

(assert (=> b!4566687 m!5361615))

(assert (=> b!4566687 m!5361617))

(declare-fun m!5361621 () Bool)

(assert (=> b!4566687 m!5361621))

(assert (=> d!1423408 d!1423550))

(assert (=> d!1423408 d!1423400))

(declare-fun d!1423552 () Bool)

(assert (=> d!1423552 (contains!13773 (extractMap!1312 (toList!4519 lt!1735178)) key!3287)))

(assert (=> d!1423552 true))

(declare-fun _$34!769 () Unit!103233)

(assert (=> d!1423552 (= (choose!30330 lt!1735178 key!3287 hashF!1107) _$34!769)))

(declare-fun bs!946699 () Bool)

(assert (= bs!946699 d!1423552))

(assert (=> bs!946699 m!5360735))

(assert (=> bs!946699 m!5360735))

(assert (=> bs!946699 m!5361251))

(assert (=> d!1423408 d!1423552))

(declare-fun d!1423554 () Bool)

(declare-fun res!1906345 () Bool)

(declare-fun e!2846990 () Bool)

(assert (=> d!1423554 (=> res!1906345 e!2846990)))

(assert (=> d!1423554 (= res!1906345 ((_ is Nil!50905) (toList!4519 lt!1735178)))))

(assert (=> d!1423554 (= (forall!10462 (toList!4519 lt!1735178) lambda!180929) e!2846990)))

(declare-fun b!4566701 () Bool)

(declare-fun e!2846991 () Bool)

(assert (=> b!4566701 (= e!2846990 e!2846991)))

(declare-fun res!1906346 () Bool)

(assert (=> b!4566701 (=> (not res!1906346) (not e!2846991))))

(assert (=> b!4566701 (= res!1906346 (dynLambda!21298 lambda!180929 (h!56826 (toList!4519 lt!1735178))))))

(declare-fun b!4566702 () Bool)

(assert (=> b!4566702 (= e!2846991 (forall!10462 (t!358007 (toList!4519 lt!1735178)) lambda!180929))))

(assert (= (and d!1423554 (not res!1906345)) b!4566701))

(assert (= (and b!4566701 res!1906346) b!4566702))

(declare-fun b_lambda!163143 () Bool)

(assert (=> (not b_lambda!163143) (not b!4566701)))

(declare-fun m!5361623 () Bool)

(assert (=> b!4566701 m!5361623))

(declare-fun m!5361625 () Bool)

(assert (=> b!4566702 m!5361625))

(assert (=> d!1423408 d!1423554))

(assert (=> d!1423392 d!1423546))

(declare-fun d!1423556 () Bool)

(declare-fun res!1906347 () Bool)

(declare-fun e!2846992 () Bool)

(assert (=> d!1423556 (=> res!1906347 e!2846992)))

(assert (=> d!1423556 (= res!1906347 ((_ is Nil!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423556 (= (forall!10462 (toList!4519 lm!1477) lambda!180932) e!2846992)))

(declare-fun b!4566703 () Bool)

(declare-fun e!2846993 () Bool)

(assert (=> b!4566703 (= e!2846992 e!2846993)))

(declare-fun res!1906348 () Bool)

(assert (=> b!4566703 (=> (not res!1906348) (not e!2846993))))

(assert (=> b!4566703 (= res!1906348 (dynLambda!21298 lambda!180932 (h!56826 (toList!4519 lm!1477))))))

(declare-fun b!4566704 () Bool)

(assert (=> b!4566704 (= e!2846993 (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180932))))

(assert (= (and d!1423556 (not res!1906347)) b!4566703))

(assert (= (and b!4566703 res!1906348) b!4566704))

(declare-fun b_lambda!163145 () Bool)

(assert (=> (not b_lambda!163145) (not b!4566703)))

(declare-fun m!5361627 () Bool)

(assert (=> b!4566703 m!5361627))

(declare-fun m!5361629 () Bool)

(assert (=> b!4566704 m!5361629))

(assert (=> d!1423410 d!1423556))

(assert (=> b!4566262 d!1423414))

(declare-fun d!1423558 () Bool)

(declare-fun isEmpty!28801 (Option!11294) Bool)

(assert (=> d!1423558 (= (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344)) (not (isEmpty!28801 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344))))))

(declare-fun bs!946702 () Bool)

(assert (= bs!946702 d!1423558))

(assert (=> bs!946702 m!5361129))

(declare-fun m!5361631 () Bool)

(assert (=> bs!946702 m!5361631))

(assert (=> b!4566365 d!1423558))

(declare-fun b!4566705 () Bool)

(declare-fun e!2846994 () Option!11294)

(assert (=> b!4566705 (= e!2846994 (Some!11293 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(declare-fun d!1423560 () Bool)

(declare-fun c!780986 () Bool)

(assert (=> d!1423560 (= c!780986 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (= (_1!29024 (h!56826 (toList!4519 lt!1735178))) hash!344)))))

(assert (=> d!1423560 (= (getValueByKey!1226 (toList!4519 lt!1735178) hash!344) e!2846994)))

(declare-fun b!4566708 () Bool)

(declare-fun e!2846995 () Option!11294)

(assert (=> b!4566708 (= e!2846995 None!11293)))

(declare-fun b!4566706 () Bool)

(assert (=> b!4566706 (= e!2846994 e!2846995)))

(declare-fun c!780987 () Bool)

(assert (=> b!4566706 (= c!780987 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (not (= (_1!29024 (h!56826 (toList!4519 lt!1735178))) hash!344))))))

(declare-fun b!4566707 () Bool)

(assert (=> b!4566707 (= e!2846995 (getValueByKey!1226 (t!358007 (toList!4519 lt!1735178)) hash!344))))

(assert (= (and d!1423560 c!780986) b!4566705))

(assert (= (and d!1423560 (not c!780986)) b!4566706))

(assert (= (and b!4566706 c!780987) b!4566707))

(assert (= (and b!4566706 (not c!780987)) b!4566708))

(declare-fun m!5361633 () Bool)

(assert (=> b!4566707 m!5361633))

(assert (=> b!4566365 d!1423560))

(declare-fun d!1423562 () Bool)

(declare-fun res!1906349 () Bool)

(declare-fun e!2846996 () Bool)

(assert (=> d!1423562 (=> res!1906349 e!2846996)))

(assert (=> d!1423562 (= res!1906349 (and ((_ is Cons!50904) (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))) (= (_1!29023 (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))) key!3287)))))

(assert (=> d!1423562 (= (containsKey!2010 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) key!3287) e!2846996)))

(declare-fun b!4566709 () Bool)

(declare-fun e!2846997 () Bool)

(assert (=> b!4566709 (= e!2846996 e!2846997)))

(declare-fun res!1906350 () Bool)

(assert (=> b!4566709 (=> (not res!1906350) (not e!2846997))))

(assert (=> b!4566709 (= res!1906350 ((_ is Cons!50904) (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))

(declare-fun b!4566710 () Bool)

(assert (=> b!4566710 (= e!2846997 (containsKey!2010 (t!358006 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))) key!3287))))

(assert (= (and d!1423562 (not res!1906349)) b!4566709))

(assert (= (and b!4566709 res!1906350) b!4566710))

(declare-fun m!5361635 () Bool)

(assert (=> b!4566710 m!5361635))

(assert (=> b!4566345 d!1423562))

(declare-fun d!1423564 () Bool)

(assert (=> d!1423564 (= (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287)) (not (isEmpty!28800 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))))))

(declare-fun bs!946706 () Bool)

(assert (= bs!946706 d!1423564))

(assert (=> bs!946706 m!5361243))

(declare-fun m!5361637 () Bool)

(assert (=> bs!946706 m!5361637))

(assert (=> b!4566386 d!1423564))

(declare-fun b!4566713 () Bool)

(declare-fun e!2846999 () Option!11295)

(assert (=> b!4566713 (= e!2846999 (getValueByKey!1227 (t!358006 (toList!4520 lt!1735189)) key!3287))))

(declare-fun d!1423566 () Bool)

(declare-fun c!780988 () Bool)

(assert (=> d!1423566 (= c!780988 (and ((_ is Cons!50904) (toList!4520 lt!1735189)) (= (_1!29023 (h!56825 (toList!4520 lt!1735189))) key!3287)))))

(declare-fun e!2846998 () Option!11295)

(assert (=> d!1423566 (= (getValueByKey!1227 (toList!4520 lt!1735189) key!3287) e!2846998)))

(declare-fun b!4566711 () Bool)

(assert (=> b!4566711 (= e!2846998 (Some!11294 (_2!29023 (h!56825 (toList!4520 lt!1735189)))))))

(declare-fun b!4566714 () Bool)

(assert (=> b!4566714 (= e!2846999 None!11294)))

(declare-fun b!4566712 () Bool)

(assert (=> b!4566712 (= e!2846998 e!2846999)))

(declare-fun c!780989 () Bool)

(assert (=> b!4566712 (= c!780989 (and ((_ is Cons!50904) (toList!4520 lt!1735189)) (not (= (_1!29023 (h!56825 (toList!4520 lt!1735189))) key!3287))))))

(assert (= (and d!1423566 c!780988) b!4566711))

(assert (= (and d!1423566 (not c!780988)) b!4566712))

(assert (= (and b!4566712 c!780989) b!4566713))

(assert (= (and b!4566712 (not c!780989)) b!4566714))

(declare-fun m!5361639 () Bool)

(assert (=> b!4566713 m!5361639))

(assert (=> b!4566386 d!1423566))

(declare-fun bs!946707 () Bool)

(declare-fun b!4566718 () Bool)

(assert (= bs!946707 (and b!4566718 b!4566588)))

(declare-fun lambda!181019 () Int)

(assert (=> bs!946707 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) lt!1735559) (= lambda!181019 lambda!180980))))

(assert (=> bs!946707 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181019 lambda!180979))))

(declare-fun bs!946708 () Bool)

(assert (= bs!946708 (and b!4566718 d!1423486)))

(assert (=> bs!946708 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) lt!1735554) (= lambda!181019 lambda!180981))))

(declare-fun bs!946709 () Bool)

(assert (= bs!946709 (and b!4566718 d!1423412)))

(assert (=> bs!946709 (not (= lambda!181019 lambda!180935))))

(declare-fun bs!946710 () Bool)

(assert (= bs!946710 (and b!4566718 b!4566591)))

(assert (=> bs!946710 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181019 lambda!180978))))

(assert (=> b!4566718 true))

(declare-fun bs!946711 () Bool)

(declare-fun b!4566715 () Bool)

(assert (= bs!946711 (and b!4566715 b!4566588)))

(declare-fun lambda!181020 () Int)

(assert (=> bs!946711 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) lt!1735559) (= lambda!181020 lambda!180980))))

(assert (=> bs!946711 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181020 lambda!180979))))

(declare-fun bs!946712 () Bool)

(assert (= bs!946712 (and b!4566715 d!1423486)))

(assert (=> bs!946712 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) lt!1735554) (= lambda!181020 lambda!180981))))

(declare-fun bs!946713 () Bool)

(assert (= bs!946713 (and b!4566715 b!4566718)))

(assert (=> bs!946713 (= lambda!181020 lambda!181019)))

(declare-fun bs!946714 () Bool)

(assert (= bs!946714 (and b!4566715 d!1423412)))

(assert (=> bs!946714 (not (= lambda!181020 lambda!180935))))

(declare-fun bs!946715 () Bool)

(assert (= bs!946715 (and b!4566715 b!4566591)))

(assert (=> bs!946715 (= (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181020 lambda!180978))))

(assert (=> b!4566715 true))

(declare-fun lt!1735657 () ListMap!3781)

(declare-fun lambda!181021 () Int)

(assert (=> bs!946711 (= (= lt!1735657 lt!1735559) (= lambda!181021 lambda!180980))))

(assert (=> b!4566715 (= (= lt!1735657 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181021 lambda!181020))))

(assert (=> bs!946711 (= (= lt!1735657 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181021 lambda!180979))))

(assert (=> bs!946712 (= (= lt!1735657 lt!1735554) (= lambda!181021 lambda!180981))))

(assert (=> bs!946713 (= (= lt!1735657 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181021 lambda!181019))))

(assert (=> bs!946714 (not (= lambda!181021 lambda!180935))))

(assert (=> bs!946715 (= (= lt!1735657 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181021 lambda!180978))))

(assert (=> b!4566715 true))

(declare-fun bs!946716 () Bool)

(declare-fun d!1423568 () Bool)

(assert (= bs!946716 (and d!1423568 b!4566588)))

(declare-fun lt!1735652 () ListMap!3781)

(declare-fun lambda!181022 () Int)

(assert (=> bs!946716 (= (= lt!1735652 lt!1735559) (= lambda!181022 lambda!180980))))

(declare-fun bs!946717 () Bool)

(assert (= bs!946717 (and d!1423568 b!4566715)))

(assert (=> bs!946717 (= (= lt!1735652 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181022 lambda!181020))))

(assert (=> bs!946716 (= (= lt!1735652 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181022 lambda!180979))))

(declare-fun bs!946718 () Bool)

(assert (= bs!946718 (and d!1423568 d!1423486)))

(assert (=> bs!946718 (= (= lt!1735652 lt!1735554) (= lambda!181022 lambda!180981))))

(declare-fun bs!946719 () Bool)

(assert (= bs!946719 (and d!1423568 b!4566718)))

(assert (=> bs!946719 (= (= lt!1735652 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181022 lambda!181019))))

(assert (=> bs!946717 (= (= lt!1735652 lt!1735657) (= lambda!181022 lambda!181021))))

(declare-fun bs!946720 () Bool)

(assert (= bs!946720 (and d!1423568 d!1423412)))

(assert (=> bs!946720 (not (= lambda!181022 lambda!180935))))

(declare-fun bs!946721 () Bool)

(assert (= bs!946721 (and d!1423568 b!4566591)))

(assert (=> bs!946721 (= (= lt!1735652 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181022 lambda!180978))))

(assert (=> d!1423568 true))

(declare-fun e!2847002 () ListMap!3781)

(assert (=> b!4566715 (= e!2847002 lt!1735657)))

(declare-fun lt!1735640 () ListMap!3781)

(assert (=> b!4566715 (= lt!1735640 (+!1679 (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178))))))))

(assert (=> b!4566715 (= lt!1735657 (addToMapMapFromBucket!769 (t!358006 (_2!29024 (h!56826 (toList!4519 lt!1735178)))) (+!1679 (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))))

(declare-fun lt!1735655 () Unit!103233)

(declare-fun call!318622 () Unit!103233)

(assert (=> b!4566715 (= lt!1735655 call!318622)))

(assert (=> b!4566715 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) lambda!181020)))

(declare-fun lt!1735658 () Unit!103233)

(assert (=> b!4566715 (= lt!1735658 lt!1735655)))

(assert (=> b!4566715 (forall!10464 (toList!4520 lt!1735640) lambda!181021)))

(declare-fun lt!1735648 () Unit!103233)

(declare-fun Unit!103292 () Unit!103233)

(assert (=> b!4566715 (= lt!1735648 Unit!103292)))

(declare-fun call!318621 () Bool)

(assert (=> b!4566715 call!318621))

(declare-fun lt!1735653 () Unit!103233)

(declare-fun Unit!103293 () Unit!103233)

(assert (=> b!4566715 (= lt!1735653 Unit!103293)))

(declare-fun lt!1735644 () Unit!103233)

(declare-fun Unit!103294 () Unit!103233)

(assert (=> b!4566715 (= lt!1735644 Unit!103294)))

(declare-fun lt!1735660 () Unit!103233)

(assert (=> b!4566715 (= lt!1735660 (forallContained!2724 (toList!4520 lt!1735640) lambda!181021 (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178))))))))

(assert (=> b!4566715 (contains!13773 lt!1735640 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178))))))))

(declare-fun lt!1735659 () Unit!103233)

(declare-fun Unit!103295 () Unit!103233)

(assert (=> b!4566715 (= lt!1735659 Unit!103295)))

(assert (=> b!4566715 (contains!13773 lt!1735657 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178))))))))

(declare-fun lt!1735654 () Unit!103233)

(declare-fun Unit!103296 () Unit!103233)

(assert (=> b!4566715 (= lt!1735654 Unit!103296)))

(assert (=> b!4566715 (forall!10464 (_2!29024 (h!56826 (toList!4519 lt!1735178))) lambda!181021)))

(declare-fun lt!1735642 () Unit!103233)

(declare-fun Unit!103297 () Unit!103233)

(assert (=> b!4566715 (= lt!1735642 Unit!103297)))

(declare-fun call!318623 () Bool)

(assert (=> b!4566715 call!318623))

(declare-fun lt!1735651 () Unit!103233)

(declare-fun Unit!103298 () Unit!103233)

(assert (=> b!4566715 (= lt!1735651 Unit!103298)))

(declare-fun lt!1735641 () Unit!103233)

(declare-fun Unit!103299 () Unit!103233)

(assert (=> b!4566715 (= lt!1735641 Unit!103299)))

(declare-fun lt!1735646 () Unit!103233)

(assert (=> b!4566715 (= lt!1735646 (addForallContainsKeyThenBeforeAdding!399 (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) lt!1735657 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178))))) (_2!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))))

(assert (=> b!4566715 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) lambda!181021)))

(declare-fun lt!1735650 () Unit!103233)

(assert (=> b!4566715 (= lt!1735650 lt!1735646)))

(assert (=> b!4566715 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) lambda!181021)))

(declare-fun lt!1735645 () Unit!103233)

(declare-fun Unit!103300 () Unit!103233)

(assert (=> b!4566715 (= lt!1735645 Unit!103300)))

(declare-fun res!1906351 () Bool)

(assert (=> b!4566715 (= res!1906351 (forall!10464 (_2!29024 (h!56826 (toList!4519 lt!1735178))) lambda!181021))))

(declare-fun e!2847000 () Bool)

(assert (=> b!4566715 (=> (not res!1906351) (not e!2847000))))

(assert (=> b!4566715 e!2847000))

(declare-fun lt!1735656 () Unit!103233)

(declare-fun Unit!103301 () Unit!103233)

(assert (=> b!4566715 (= lt!1735656 Unit!103301)))

(declare-fun b!4566716 () Bool)

(assert (=> b!4566716 (= e!2847000 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) lambda!181021))))

(declare-fun e!2847001 () Bool)

(assert (=> d!1423568 e!2847001))

(declare-fun res!1906352 () Bool)

(assert (=> d!1423568 (=> (not res!1906352) (not e!2847001))))

(assert (=> d!1423568 (= res!1906352 (forall!10464 (_2!29024 (h!56826 (toList!4519 lt!1735178))) lambda!181022))))

(assert (=> d!1423568 (= lt!1735652 e!2847002)))

(declare-fun c!780990 () Bool)

(assert (=> d!1423568 (= c!780990 ((_ is Nil!50904) (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(assert (=> d!1423568 (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lt!1735178))))))

(assert (=> d!1423568 (= (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 lt!1735178))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) lt!1735652)))

(declare-fun b!4566717 () Bool)

(assert (=> b!4566717 (= e!2847001 (invariantList!1083 (toList!4520 lt!1735652)))))

(assert (=> b!4566718 (= e!2847002 (extractMap!1312 (t!358007 (toList!4519 lt!1735178))))))

(declare-fun lt!1735649 () Unit!103233)

(assert (=> b!4566718 (= lt!1735649 call!318622)))

(assert (=> b!4566718 call!318623))

(declare-fun lt!1735647 () Unit!103233)

(assert (=> b!4566718 (= lt!1735647 lt!1735649)))

(assert (=> b!4566718 call!318621))

(declare-fun lt!1735643 () Unit!103233)

(declare-fun Unit!103302 () Unit!103233)

(assert (=> b!4566718 (= lt!1735643 Unit!103302)))

(declare-fun bm!318616 () Bool)

(assert (=> bm!318616 (= call!318623 (forall!10464 (ite c!780990 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (toList!4520 lt!1735640)) (ite c!780990 lambda!181019 lambda!181021)))))

(declare-fun b!4566719 () Bool)

(declare-fun res!1906353 () Bool)

(assert (=> b!4566719 (=> (not res!1906353) (not e!2847001))))

(assert (=> b!4566719 (= res!1906353 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) lambda!181022))))

(declare-fun bm!318617 () Bool)

(assert (=> bm!318617 (= call!318622 (lemmaContainsAllItsOwnKeys!399 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))))))

(declare-fun bm!318618 () Bool)

(assert (=> bm!318618 (= call!318621 (forall!10464 (ite c!780990 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (t!358006 (_2!29024 (h!56826 (toList!4519 lt!1735178))))) (ite c!780990 lambda!181019 lambda!181021)))))

(assert (= (and d!1423568 c!780990) b!4566718))

(assert (= (and d!1423568 (not c!780990)) b!4566715))

(assert (= (and b!4566715 res!1906351) b!4566716))

(assert (= (or b!4566718 b!4566715) bm!318618))

(assert (= (or b!4566718 b!4566715) bm!318616))

(assert (= (or b!4566718 b!4566715) bm!318617))

(assert (= (and d!1423568 res!1906352) b!4566719))

(assert (= (and b!4566719 res!1906353) b!4566717))

(declare-fun m!5361677 () Bool)

(assert (=> bm!318616 m!5361677))

(declare-fun m!5361679 () Bool)

(assert (=> b!4566719 m!5361679))

(declare-fun m!5361681 () Bool)

(assert (=> d!1423568 m!5361681))

(declare-fun m!5361683 () Bool)

(assert (=> d!1423568 m!5361683))

(declare-fun m!5361685 () Bool)

(assert (=> b!4566715 m!5361685))

(declare-fun m!5361687 () Bool)

(assert (=> b!4566715 m!5361687))

(declare-fun m!5361689 () Bool)

(assert (=> b!4566715 m!5361689))

(declare-fun m!5361691 () Bool)

(assert (=> b!4566715 m!5361691))

(declare-fun m!5361693 () Bool)

(assert (=> b!4566715 m!5361693))

(declare-fun m!5361695 () Bool)

(assert (=> b!4566715 m!5361695))

(assert (=> b!4566715 m!5361201))

(declare-fun m!5361697 () Bool)

(assert (=> b!4566715 m!5361697))

(assert (=> b!4566715 m!5361201))

(assert (=> b!4566715 m!5361689))

(declare-fun m!5361699 () Bool)

(assert (=> b!4566715 m!5361699))

(declare-fun m!5361701 () Bool)

(assert (=> b!4566715 m!5361701))

(declare-fun m!5361703 () Bool)

(assert (=> b!4566715 m!5361703))

(assert (=> b!4566715 m!5361703))

(assert (=> b!4566715 m!5361699))

(declare-fun m!5361705 () Bool)

(assert (=> b!4566717 m!5361705))

(declare-fun m!5361709 () Bool)

(assert (=> bm!318618 m!5361709))

(assert (=> b!4566716 m!5361699))

(assert (=> bm!318617 m!5361201))

(declare-fun m!5361711 () Bool)

(assert (=> bm!318617 m!5361711))

(assert (=> b!4566366 d!1423568))

(declare-fun bs!946722 () Bool)

(declare-fun d!1423578 () Bool)

(assert (= bs!946722 (and d!1423578 d!1423408)))

(declare-fun lambda!181023 () Int)

(assert (=> bs!946722 (= lambda!181023 lambda!180929)))

(declare-fun bs!946723 () Bool)

(assert (= bs!946723 (and d!1423578 start!454364)))

(assert (=> bs!946723 (= lambda!181023 lambda!180879)))

(declare-fun bs!946724 () Bool)

(assert (= bs!946724 (and d!1423578 d!1423334)))

(assert (=> bs!946724 (= lambda!181023 lambda!180910)))

(declare-fun bs!946725 () Bool)

(assert (= bs!946725 (and d!1423578 d!1423378)))

(assert (=> bs!946725 (= lambda!181023 lambda!180921)))

(declare-fun bs!946726 () Bool)

(assert (= bs!946726 (and d!1423578 d!1423308)))

(assert (=> bs!946726 (= lambda!181023 lambda!180904)))

(declare-fun bs!946727 () Bool)

(assert (= bs!946727 (and d!1423578 d!1423372)))

(assert (=> bs!946727 (= lambda!181023 lambda!180920)))

(declare-fun bs!946728 () Bool)

(assert (= bs!946728 (and d!1423578 d!1423404)))

(assert (=> bs!946728 (= lambda!181023 lambda!180926)))

(declare-fun bs!946729 () Bool)

(assert (= bs!946729 (and d!1423578 d!1423386)))

(assert (=> bs!946729 (= lambda!181023 lambda!180924)))

(declare-fun bs!946730 () Bool)

(assert (= bs!946730 (and d!1423578 d!1423496)))

(assert (=> bs!946730 (= lambda!181023 lambda!180982)))

(declare-fun bs!946731 () Bool)

(assert (= bs!946731 (and d!1423578 d!1423410)))

(assert (=> bs!946731 (not (= lambda!181023 lambda!180932))))

(declare-fun bs!946732 () Bool)

(assert (= bs!946732 (and d!1423578 d!1423274)))

(assert (=> bs!946732 (= lambda!181023 lambda!180892)))

(declare-fun bs!946733 () Bool)

(assert (= bs!946733 (and d!1423578 d!1423400)))

(assert (=> bs!946733 (= lambda!181023 lambda!180925)))

(declare-fun bs!946734 () Bool)

(assert (= bs!946734 (and d!1423578 d!1423298)))

(assert (=> bs!946734 (= lambda!181023 lambda!180893)))

(declare-fun lt!1735661 () ListMap!3781)

(assert (=> d!1423578 (invariantList!1083 (toList!4520 lt!1735661))))

(declare-fun e!2847013 () ListMap!3781)

(assert (=> d!1423578 (= lt!1735661 e!2847013)))

(declare-fun c!780993 () Bool)

(assert (=> d!1423578 (= c!780993 ((_ is Cons!50905) (t!358007 (toList!4519 lt!1735178))))))

(assert (=> d!1423578 (forall!10462 (t!358007 (toList!4519 lt!1735178)) lambda!181023)))

(assert (=> d!1423578 (= (extractMap!1312 (t!358007 (toList!4519 lt!1735178))) lt!1735661)))

(declare-fun b!4566732 () Bool)

(assert (=> b!4566732 (= e!2847013 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (t!358007 (toList!4519 lt!1735178)))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lt!1735178))))))))

(declare-fun b!4566733 () Bool)

(assert (=> b!4566733 (= e!2847013 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423578 c!780993) b!4566732))

(assert (= (and d!1423578 (not c!780993)) b!4566733))

(declare-fun m!5361717 () Bool)

(assert (=> d!1423578 m!5361717))

(declare-fun m!5361719 () Bool)

(assert (=> d!1423578 m!5361719))

(declare-fun m!5361721 () Bool)

(assert (=> b!4566732 m!5361721))

(assert (=> b!4566732 m!5361721))

(declare-fun m!5361723 () Bool)

(assert (=> b!4566732 m!5361723))

(assert (=> b!4566366 d!1423578))

(declare-fun d!1423582 () Bool)

(declare-fun res!1906362 () Bool)

(declare-fun e!2847014 () Bool)

(assert (=> d!1423582 (=> res!1906362 e!2847014)))

(assert (=> d!1423582 (= res!1906362 (not ((_ is Cons!50904) (_2!29024 (h!56826 (toList!4519 lm!1477))))))))

(assert (=> d!1423582 (= (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lm!1477)))) e!2847014)))

(declare-fun b!4566734 () Bool)

(declare-fun e!2847015 () Bool)

(assert (=> b!4566734 (= e!2847014 e!2847015)))

(declare-fun res!1906363 () Bool)

(assert (=> b!4566734 (=> (not res!1906363) (not e!2847015))))

(assert (=> b!4566734 (= res!1906363 (not (containsKey!2010 (t!358006 (_2!29024 (h!56826 (toList!4519 lm!1477)))) (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477))))))))))

(declare-fun b!4566735 () Bool)

(assert (=> b!4566735 (= e!2847015 (noDuplicateKeys!1256 (t!358006 (_2!29024 (h!56826 (toList!4519 lm!1477))))))))

(assert (= (and d!1423582 (not res!1906362)) b!4566734))

(assert (= (and b!4566734 res!1906363) b!4566735))

(declare-fun m!5361725 () Bool)

(assert (=> b!4566734 m!5361725))

(declare-fun m!5361727 () Bool)

(assert (=> b!4566735 m!5361727))

(assert (=> bs!946652 d!1423582))

(declare-fun d!1423584 () Bool)

(declare-fun res!1906364 () Bool)

(declare-fun e!2847016 () Bool)

(assert (=> d!1423584 (=> res!1906364 e!2847016)))

(assert (=> d!1423584 (= res!1906364 (and ((_ is Cons!50904) lt!1735339) (= (_1!29023 (h!56825 lt!1735339)) key!3287)))))

(assert (=> d!1423584 (= (containsKey!2010 lt!1735339 key!3287) e!2847016)))

(declare-fun b!4566736 () Bool)

(declare-fun e!2847017 () Bool)

(assert (=> b!4566736 (= e!2847016 e!2847017)))

(declare-fun res!1906365 () Bool)

(assert (=> b!4566736 (=> (not res!1906365) (not e!2847017))))

(assert (=> b!4566736 (= res!1906365 ((_ is Cons!50904) lt!1735339))))

(declare-fun b!4566737 () Bool)

(assert (=> b!4566737 (= e!2847017 (containsKey!2010 (t!358006 lt!1735339) key!3287))))

(assert (= (and d!1423584 (not res!1906364)) b!4566736))

(assert (= (and b!4566736 res!1906365) b!4566737))

(declare-fun m!5361729 () Bool)

(assert (=> b!4566737 m!5361729))

(assert (=> d!1423356 d!1423584))

(declare-fun d!1423586 () Bool)

(declare-fun res!1906366 () Bool)

(declare-fun e!2847018 () Bool)

(assert (=> d!1423586 (=> res!1906366 e!2847018)))

(assert (=> d!1423586 (= res!1906366 (not ((_ is Cons!50904) lt!1735181)))))

(assert (=> d!1423586 (= (noDuplicateKeys!1256 lt!1735181) e!2847018)))

(declare-fun b!4566738 () Bool)

(declare-fun e!2847019 () Bool)

(assert (=> b!4566738 (= e!2847018 e!2847019)))

(declare-fun res!1906367 () Bool)

(assert (=> b!4566738 (=> (not res!1906367) (not e!2847019))))

(assert (=> b!4566738 (= res!1906367 (not (containsKey!2010 (t!358006 lt!1735181) (_1!29023 (h!56825 lt!1735181)))))))

(declare-fun b!4566739 () Bool)

(assert (=> b!4566739 (= e!2847019 (noDuplicateKeys!1256 (t!358006 lt!1735181)))))

(assert (= (and d!1423586 (not res!1906366)) b!4566738))

(assert (= (and b!4566738 res!1906367) b!4566739))

(declare-fun m!5361731 () Bool)

(assert (=> b!4566738 m!5361731))

(declare-fun m!5361733 () Bool)

(assert (=> b!4566739 m!5361733))

(assert (=> d!1423356 d!1423586))

(declare-fun d!1423588 () Bool)

(declare-fun res!1906368 () Bool)

(declare-fun e!2847020 () Bool)

(assert (=> d!1423588 (=> res!1906368 e!2847020)))

(assert (=> d!1423588 (= res!1906368 (and ((_ is Cons!50904) (toList!4520 lt!1735189)) (= (_1!29023 (h!56825 (toList!4520 lt!1735189))) key!3287)))))

(assert (=> d!1423588 (= (containsKey!2014 (toList!4520 lt!1735189) key!3287) e!2847020)))

(declare-fun b!4566740 () Bool)

(declare-fun e!2847021 () Bool)

(assert (=> b!4566740 (= e!2847020 e!2847021)))

(declare-fun res!1906369 () Bool)

(assert (=> b!4566740 (=> (not res!1906369) (not e!2847021))))

(assert (=> b!4566740 (= res!1906369 ((_ is Cons!50904) (toList!4520 lt!1735189)))))

(declare-fun b!4566741 () Bool)

(assert (=> b!4566741 (= e!2847021 (containsKey!2014 (t!358006 (toList!4520 lt!1735189)) key!3287))))

(assert (= (and d!1423588 (not res!1906368)) b!4566740))

(assert (= (and b!4566740 res!1906369) b!4566741))

(declare-fun m!5361735 () Bool)

(assert (=> b!4566741 m!5361735))

(assert (=> b!4566383 d!1423588))

(declare-fun d!1423590 () Bool)

(assert (=> d!1423590 (containsKey!2014 (toList!4520 lt!1735189) key!3287)))

(declare-fun lt!1735662 () Unit!103233)

(assert (=> d!1423590 (= lt!1735662 (choose!30331 (toList!4520 lt!1735189) key!3287))))

(assert (=> d!1423590 (invariantList!1083 (toList!4520 lt!1735189))))

(assert (=> d!1423590 (= (lemmaInGetKeysListThenContainsKey!530 (toList!4520 lt!1735189) key!3287) lt!1735662)))

(declare-fun bs!946735 () Bool)

(assert (= bs!946735 d!1423590))

(assert (=> bs!946735 m!5361233))

(declare-fun m!5361737 () Bool)

(assert (=> bs!946735 m!5361737))

(declare-fun m!5361739 () Bool)

(assert (=> bs!946735 m!5361739))

(assert (=> b!4566383 d!1423590))

(declare-fun d!1423592 () Bool)

(declare-fun res!1906370 () Bool)

(declare-fun e!2847023 () Bool)

(assert (=> d!1423592 (=> res!1906370 e!2847023)))

(declare-fun e!2847022 () Bool)

(assert (=> d!1423592 (= res!1906370 e!2847022)))

(declare-fun res!1906372 () Bool)

(assert (=> d!1423592 (=> (not res!1906372) (not e!2847022))))

(assert (=> d!1423592 (= res!1906372 ((_ is Cons!50905) (t!358007 (toList!4519 lt!1735178))))))

(assert (=> d!1423592 (= (containsKeyBiggerList!226 (t!358007 (toList!4519 lt!1735178)) key!3287) e!2847023)))

(declare-fun b!4566742 () Bool)

(assert (=> b!4566742 (= e!2847022 (containsKey!2010 (_2!29024 (h!56826 (t!358007 (toList!4519 lt!1735178)))) key!3287))))

(declare-fun b!4566743 () Bool)

(declare-fun e!2847024 () Bool)

(assert (=> b!4566743 (= e!2847023 e!2847024)))

(declare-fun res!1906371 () Bool)

(assert (=> b!4566743 (=> (not res!1906371) (not e!2847024))))

(assert (=> b!4566743 (= res!1906371 ((_ is Cons!50905) (t!358007 (toList!4519 lt!1735178))))))

(declare-fun b!4566744 () Bool)

(assert (=> b!4566744 (= e!2847024 (containsKeyBiggerList!226 (t!358007 (t!358007 (toList!4519 lt!1735178))) key!3287))))

(assert (= (and d!1423592 res!1906372) b!4566742))

(assert (= (and d!1423592 (not res!1906370)) b!4566743))

(assert (= (and b!4566743 res!1906371) b!4566744))

(declare-fun m!5361741 () Bool)

(assert (=> b!4566742 m!5361741))

(declare-fun m!5361743 () Bool)

(assert (=> b!4566744 m!5361743))

(assert (=> b!4566350 d!1423592))

(declare-fun d!1423594 () Bool)

(assert (=> d!1423594 (= (invariantList!1083 (toList!4520 lt!1735393)) (noDuplicatedKeys!298 (toList!4520 lt!1735393)))))

(declare-fun bs!946736 () Bool)

(assert (= bs!946736 d!1423594))

(declare-fun m!5361745 () Bool)

(assert (=> bs!946736 m!5361745))

(assert (=> d!1423400 d!1423594))

(declare-fun d!1423596 () Bool)

(declare-fun res!1906373 () Bool)

(declare-fun e!2847025 () Bool)

(assert (=> d!1423596 (=> res!1906373 e!2847025)))

(assert (=> d!1423596 (= res!1906373 ((_ is Nil!50905) (toList!4519 lt!1735178)))))

(assert (=> d!1423596 (= (forall!10462 (toList!4519 lt!1735178) lambda!180925) e!2847025)))

(declare-fun b!4566745 () Bool)

(declare-fun e!2847026 () Bool)

(assert (=> b!4566745 (= e!2847025 e!2847026)))

(declare-fun res!1906374 () Bool)

(assert (=> b!4566745 (=> (not res!1906374) (not e!2847026))))

(assert (=> b!4566745 (= res!1906374 (dynLambda!21298 lambda!180925 (h!56826 (toList!4519 lt!1735178))))))

(declare-fun b!4566746 () Bool)

(assert (=> b!4566746 (= e!2847026 (forall!10462 (t!358007 (toList!4519 lt!1735178)) lambda!180925))))

(assert (= (and d!1423596 (not res!1906373)) b!4566745))

(assert (= (and b!4566745 res!1906374) b!4566746))

(declare-fun b_lambda!163147 () Bool)

(assert (=> (not b_lambda!163147) (not b!4566745)))

(declare-fun m!5361747 () Bool)

(assert (=> b!4566745 m!5361747))

(declare-fun m!5361749 () Bool)

(assert (=> b!4566746 m!5361749))

(assert (=> d!1423400 d!1423596))

(declare-fun d!1423598 () Bool)

(assert (=> d!1423598 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344))))

(declare-fun lt!1735665 () Unit!103233)

(declare-fun choose!30335 (List!51029 (_ BitVec 64)) Unit!103233)

(assert (=> d!1423598 (= lt!1735665 (choose!30335 (toList!4519 lt!1735178) hash!344))))

(declare-fun e!2847029 () Bool)

(assert (=> d!1423598 e!2847029))

(declare-fun res!1906377 () Bool)

(assert (=> d!1423598 (=> (not res!1906377) (not e!2847029))))

(assert (=> d!1423598 (= res!1906377 (isStrictlySorted!498 (toList!4519 lt!1735178)))))

(assert (=> d!1423598 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lt!1735178) hash!344) lt!1735665)))

(declare-fun b!4566749 () Bool)

(assert (=> b!4566749 (= e!2847029 (containsKey!2013 (toList!4519 lt!1735178) hash!344))))

(assert (= (and d!1423598 res!1906377) b!4566749))

(assert (=> d!1423598 m!5361129))

(assert (=> d!1423598 m!5361129))

(assert (=> d!1423598 m!5361193))

(declare-fun m!5361751 () Bool)

(assert (=> d!1423598 m!5361751))

(declare-fun m!5361753 () Bool)

(assert (=> d!1423598 m!5361753))

(assert (=> b!4566749 m!5361189))

(assert (=> b!4566363 d!1423598))

(assert (=> b!4566363 d!1423558))

(assert (=> b!4566363 d!1423560))

(declare-fun d!1423600 () Bool)

(assert (=> d!1423600 (= (get!16780 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344)) (v!45123 (getValueByKey!1226 (toList!4519 lt!1735178) hash!344)))))

(assert (=> d!1423370 d!1423600))

(assert (=> d!1423370 d!1423560))

(assert (=> b!4566291 d!1423350))

(declare-fun d!1423602 () Bool)

(declare-fun lt!1735666 () Bool)

(assert (=> d!1423602 (= lt!1735666 (select (content!8545 e!2846749) key!3287))))

(declare-fun e!2847030 () Bool)

(assert (=> d!1423602 (= lt!1735666 e!2847030)))

(declare-fun res!1906378 () Bool)

(assert (=> d!1423602 (=> (not res!1906378) (not e!2847030))))

(assert (=> d!1423602 (= res!1906378 ((_ is Cons!50907) e!2846749))))

(assert (=> d!1423602 (= (contains!13777 e!2846749 key!3287) lt!1735666)))

(declare-fun b!4566750 () Bool)

(declare-fun e!2847031 () Bool)

(assert (=> b!4566750 (= e!2847030 e!2847031)))

(declare-fun res!1906379 () Bool)

(assert (=> b!4566750 (=> res!1906379 e!2847031)))

(assert (=> b!4566750 (= res!1906379 (= (h!56830 e!2846749) key!3287))))

(declare-fun b!4566751 () Bool)

(assert (=> b!4566751 (= e!2847031 (contains!13777 (t!358009 e!2846749) key!3287))))

(assert (= (and d!1423602 res!1906378) b!4566750))

(assert (= (and b!4566750 (not res!1906379)) b!4566751))

(declare-fun m!5361755 () Bool)

(assert (=> d!1423602 m!5361755))

(declare-fun m!5361757 () Bool)

(assert (=> d!1423602 m!5361757))

(declare-fun m!5361759 () Bool)

(assert (=> b!4566751 m!5361759))

(assert (=> bm!318575 d!1423602))

(declare-fun d!1423604 () Bool)

(declare-fun lt!1735667 () Bool)

(assert (=> d!1423604 (= lt!1735667 (select (content!8545 e!2846789) key!3287))))

(declare-fun e!2847032 () Bool)

(assert (=> d!1423604 (= lt!1735667 e!2847032)))

(declare-fun res!1906380 () Bool)

(assert (=> d!1423604 (=> (not res!1906380) (not e!2847032))))

(assert (=> d!1423604 (= res!1906380 ((_ is Cons!50907) e!2846789))))

(assert (=> d!1423604 (= (contains!13777 e!2846789 key!3287) lt!1735667)))

(declare-fun b!4566752 () Bool)

(declare-fun e!2847033 () Bool)

(assert (=> b!4566752 (= e!2847032 e!2847033)))

(declare-fun res!1906381 () Bool)

(assert (=> b!4566752 (=> res!1906381 e!2847033)))

(assert (=> b!4566752 (= res!1906381 (= (h!56830 e!2846789) key!3287))))

(declare-fun b!4566753 () Bool)

(assert (=> b!4566753 (= e!2847033 (contains!13777 (t!358009 e!2846789) key!3287))))

(assert (= (and d!1423604 res!1906380) b!4566752))

(assert (= (and b!4566752 (not res!1906381)) b!4566753))

(declare-fun m!5361761 () Bool)

(assert (=> d!1423604 m!5361761))

(declare-fun m!5361763 () Bool)

(assert (=> d!1423604 m!5361763))

(declare-fun m!5361765 () Bool)

(assert (=> b!4566753 m!5361765))

(assert (=> bm!318576 d!1423604))

(declare-fun d!1423606 () Bool)

(assert (=> d!1423606 (= (isDefined!8566 (getValueByKey!1226 (toList!4519 lm!1477) lt!1735180)) (not (isEmpty!28801 (getValueByKey!1226 (toList!4519 lm!1477) lt!1735180))))))

(declare-fun bs!946737 () Bool)

(assert (= bs!946737 d!1423606))

(assert (=> bs!946737 m!5361119))

(declare-fun m!5361767 () Bool)

(assert (=> bs!946737 m!5361767))

(assert (=> b!4566300 d!1423606))

(declare-fun b!4566754 () Bool)

(declare-fun e!2847034 () Option!11294)

(assert (=> b!4566754 (= e!2847034 (Some!11293 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(declare-fun d!1423608 () Bool)

(declare-fun c!780994 () Bool)

(assert (=> d!1423608 (= c!780994 (and ((_ is Cons!50905) (toList!4519 lm!1477)) (= (_1!29024 (h!56826 (toList!4519 lm!1477))) lt!1735180)))))

(assert (=> d!1423608 (= (getValueByKey!1226 (toList!4519 lm!1477) lt!1735180) e!2847034)))

(declare-fun b!4566757 () Bool)

(declare-fun e!2847035 () Option!11294)

(assert (=> b!4566757 (= e!2847035 None!11293)))

(declare-fun b!4566755 () Bool)

(assert (=> b!4566755 (= e!2847034 e!2847035)))

(declare-fun c!780995 () Bool)

(assert (=> b!4566755 (= c!780995 (and ((_ is Cons!50905) (toList!4519 lm!1477)) (not (= (_1!29024 (h!56826 (toList!4519 lm!1477))) lt!1735180))))))

(declare-fun b!4566756 () Bool)

(assert (=> b!4566756 (= e!2847035 (getValueByKey!1226 (t!358007 (toList!4519 lm!1477)) lt!1735180))))

(assert (= (and d!1423608 c!780994) b!4566754))

(assert (= (and d!1423608 (not c!780994)) b!4566755))

(assert (= (and b!4566755 c!780995) b!4566756))

(assert (= (and b!4566755 (not c!780995)) b!4566757))

(declare-fun m!5361769 () Bool)

(assert (=> b!4566756 m!5361769))

(assert (=> b!4566300 d!1423608))

(declare-fun bs!946752 () Bool)

(declare-fun b!4566827 () Bool)

(assert (= bs!946752 (and b!4566827 b!4566496)))

(declare-fun lambda!181046 () Int)

(assert (=> bs!946752 (= (= (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (toList!4520 lt!1735194)) (= lambda!181046 lambda!180946))))

(declare-fun bs!946753 () Bool)

(assert (= bs!946753 (and b!4566827 b!4566503)))

(assert (=> bs!946753 (= (= (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181046 lambda!180948))))

(declare-fun bs!946754 () Bool)

(assert (= bs!946754 (and b!4566827 b!4566640)))

(assert (=> bs!946754 (= (= (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (toList!4520 lt!1735189)) (= lambda!181046 lambda!180983))))

(declare-fun bs!946755 () Bool)

(assert (= bs!946755 (and b!4566827 b!4566667)))

(assert (=> bs!946755 (= (= (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (toList!4520 lt!1735234)) (= lambda!181046 lambda!180992))))

(assert (=> b!4566827 true))

(declare-fun bs!946756 () Bool)

(declare-fun b!4566823 () Bool)

(assert (= bs!946756 (and b!4566823 b!4566496)))

(declare-fun lambda!181047 () Int)

(assert (=> bs!946756 (= (= (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (toList!4520 lt!1735194)) (= lambda!181047 lambda!180946))))

(declare-fun bs!946757 () Bool)

(assert (= bs!946757 (and b!4566823 b!4566503)))

(assert (=> bs!946757 (= (= (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181047 lambda!180948))))

(declare-fun bs!946758 () Bool)

(assert (= bs!946758 (and b!4566823 b!4566827)))

(assert (=> bs!946758 (= (= (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181047 lambda!181046))))

(declare-fun bs!946759 () Bool)

(assert (= bs!946759 (and b!4566823 b!4566640)))

(assert (=> bs!946759 (= (= (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (toList!4520 lt!1735189)) (= lambda!181047 lambda!180983))))

(declare-fun bs!946760 () Bool)

(assert (= bs!946760 (and b!4566823 b!4566667)))

(assert (=> bs!946760 (= (= (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (toList!4520 lt!1735234)) (= lambda!181047 lambda!180992))))

(assert (=> b!4566823 true))

(declare-fun bs!946761 () Bool)

(declare-fun b!4566824 () Bool)

(assert (= bs!946761 (and b!4566824 b!4566496)))

(declare-fun lambda!181048 () Int)

(assert (=> bs!946761 (= (= (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (toList!4520 lt!1735194)) (= lambda!181048 lambda!180946))))

(declare-fun bs!946762 () Bool)

(assert (= bs!946762 (and b!4566824 b!4566503)))

(assert (=> bs!946762 (= lambda!181048 lambda!180948)))

(declare-fun bs!946763 () Bool)

(assert (= bs!946763 (and b!4566824 b!4566827)))

(assert (=> bs!946763 (= (= (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181048 lambda!181046))))

(declare-fun bs!946764 () Bool)

(assert (= bs!946764 (and b!4566824 b!4566640)))

(assert (=> bs!946764 (= (= (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (toList!4520 lt!1735189)) (= lambda!181048 lambda!180983))))

(declare-fun bs!946765 () Bool)

(assert (= bs!946765 (and b!4566824 b!4566823)))

(assert (=> bs!946765 (= (= (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181048 lambda!181047))))

(declare-fun bs!946766 () Bool)

(assert (= bs!946766 (and b!4566824 b!4566667)))

(assert (=> bs!946766 (= (= (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (toList!4520 lt!1735234)) (= lambda!181048 lambda!180992))))

(assert (=> b!4566824 true))

(declare-fun bs!946767 () Bool)

(declare-fun b!4566826 () Bool)

(assert (= bs!946767 (and b!4566826 b!4566497)))

(declare-fun lambda!181049 () Int)

(assert (=> bs!946767 (= lambda!181049 lambda!180947)))

(declare-fun bs!946768 () Bool)

(assert (= bs!946768 (and b!4566826 b!4566504)))

(assert (=> bs!946768 (= lambda!181049 lambda!180949)))

(declare-fun bs!946769 () Bool)

(assert (= bs!946769 (and b!4566826 b!4566641)))

(assert (=> bs!946769 (= lambda!181049 lambda!180984)))

(declare-fun bs!946770 () Bool)

(assert (= bs!946770 (and b!4566826 b!4566668)))

(assert (=> bs!946770 (= lambda!181049 lambda!180994)))

(declare-fun b!4566820 () Bool)

(declare-fun res!1906405 () Bool)

(declare-fun e!2847066 () Bool)

(assert (=> b!4566820 (=> (not res!1906405) (not e!2847066))))

(declare-fun lt!1735706 () List!51031)

(assert (=> b!4566820 (= res!1906405 (= (length!424 lt!1735706) (length!425 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))))

(declare-fun b!4566821 () Bool)

(declare-fun e!2847068 () Unit!103233)

(declare-fun Unit!103314 () Unit!103233)

(assert (=> b!4566821 (= e!2847068 Unit!103314)))

(declare-fun b!4566822 () Bool)

(declare-fun e!2847067 () List!51031)

(assert (=> b!4566822 (= e!2847067 Nil!50907)))

(assert (=> b!4566823 (= e!2847067 (Cons!50907 (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (getKeysList!531 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))))

(declare-fun c!781015 () Bool)

(assert (=> b!4566823 (= c!781015 (containsKey!2014 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))))

(declare-fun lt!1735705 () Unit!103233)

(assert (=> b!4566823 (= lt!1735705 e!2847068)))

(declare-fun c!781017 () Bool)

(assert (=> b!4566823 (= c!781017 (contains!13777 (getKeysList!531 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))))

(declare-fun lt!1735711 () Unit!103233)

(declare-fun e!2847065 () Unit!103233)

(assert (=> b!4566823 (= lt!1735711 e!2847065)))

(declare-fun lt!1735707 () List!51031)

(assert (=> b!4566823 (= lt!1735707 (getKeysList!531 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))))

(declare-fun lt!1735709 () Unit!103233)

(declare-fun lemmaForallContainsAddHeadPreserves!204 (List!51028 List!51031 tuple2!51458) Unit!103233)

(assert (=> b!4566823 (= lt!1735709 (lemmaForallContainsAddHeadPreserves!204 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) lt!1735707 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))))

(assert (=> b!4566823 (forall!10466 lt!1735707 lambda!181047)))

(declare-fun lt!1735708 () Unit!103233)

(assert (=> b!4566823 (= lt!1735708 lt!1735709)))

(declare-fun res!1906406 () Bool)

(assert (=> b!4566824 (=> (not res!1906406) (not e!2847066))))

(assert (=> b!4566824 (= res!1906406 (forall!10466 lt!1735706 lambda!181048))))

(declare-fun b!4566825 () Bool)

(declare-fun Unit!103316 () Unit!103233)

(assert (=> b!4566825 (= e!2847065 Unit!103316)))

(assert (=> b!4566826 (= e!2847066 (= (content!8545 lt!1735706) (content!8545 (map!11223 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!181049))))))

(assert (=> b!4566827 false))

(declare-fun lt!1735710 () Unit!103233)

(declare-fun forallContained!2727 (List!51031 Int K!12280) Unit!103233)

(assert (=> b!4566827 (= lt!1735710 (forallContained!2727 (getKeysList!531 (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) lambda!181046 (_1!29023 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))))

(declare-fun Unit!103317 () Unit!103233)

(assert (=> b!4566827 (= e!2847065 Unit!103317)))

(declare-fun d!1423610 () Bool)

(assert (=> d!1423610 e!2847066))

(declare-fun res!1906404 () Bool)

(assert (=> d!1423610 (=> (not res!1906404) (not e!2847066))))

(assert (=> d!1423610 (= res!1906404 (noDuplicate!784 lt!1735706))))

(assert (=> d!1423610 (= lt!1735706 e!2847067)))

(declare-fun c!781016 () Bool)

(assert (=> d!1423610 (= c!781016 ((_ is Cons!50904) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))))

(assert (=> d!1423610 (invariantList!1083 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423610 (= (getKeysList!531 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) lt!1735706)))

(declare-fun b!4566828 () Bool)

(assert (=> b!4566828 false))

(declare-fun Unit!103320 () Unit!103233)

(assert (=> b!4566828 (= e!2847068 Unit!103320)))

(assert (= (and d!1423610 c!781016) b!4566823))

(assert (= (and d!1423610 (not c!781016)) b!4566822))

(assert (= (and b!4566823 c!781015) b!4566828))

(assert (= (and b!4566823 (not c!781015)) b!4566821))

(assert (= (and b!4566823 c!781017) b!4566827))

(assert (= (and b!4566823 (not c!781017)) b!4566825))

(assert (= (and d!1423610 res!1906404) b!4566820))

(assert (= (and b!4566820 res!1906405) b!4566824))

(assert (= (and b!4566824 res!1906406) b!4566826))

(declare-fun m!5361835 () Bool)

(assert (=> b!4566826 m!5361835))

(declare-fun m!5361837 () Bool)

(assert (=> b!4566826 m!5361837))

(assert (=> b!4566826 m!5361837))

(declare-fun m!5361839 () Bool)

(assert (=> b!4566826 m!5361839))

(declare-fun m!5361841 () Bool)

(assert (=> b!4566820 m!5361841))

(assert (=> b!4566820 m!5361393))

(declare-fun m!5361843 () Bool)

(assert (=> b!4566827 m!5361843))

(assert (=> b!4566827 m!5361843))

(declare-fun m!5361845 () Bool)

(assert (=> b!4566827 m!5361845))

(assert (=> b!4566823 m!5361843))

(declare-fun m!5361847 () Bool)

(assert (=> b!4566823 m!5361847))

(assert (=> b!4566823 m!5361843))

(declare-fun m!5361849 () Bool)

(assert (=> b!4566823 m!5361849))

(declare-fun m!5361851 () Bool)

(assert (=> b!4566823 m!5361851))

(declare-fun m!5361853 () Bool)

(assert (=> b!4566823 m!5361853))

(declare-fun m!5361855 () Bool)

(assert (=> d!1423610 m!5361855))

(assert (=> d!1423610 m!5361407))

(declare-fun m!5361857 () Bool)

(assert (=> b!4566824 m!5361857))

(assert (=> b!4566374 d!1423610))

(declare-fun b!4566842 () Bool)

(declare-fun e!2847075 () Unit!103233)

(declare-fun Unit!103328 () Unit!103233)

(assert (=> b!4566842 (= e!2847075 Unit!103328)))

(declare-fun b!4566843 () Bool)

(declare-fun e!2847076 () Bool)

(assert (=> b!4566843 (= e!2847076 (not (contains!13777 (keys!17764 (extractMap!1312 (toList!4519 lm!1477))) key!3287)))))

(declare-fun b!4566844 () Bool)

(declare-fun e!2847078 () Bool)

(assert (=> b!4566844 (= e!2847078 (contains!13777 (keys!17764 (extractMap!1312 (toList!4519 lm!1477))) key!3287))))

(declare-fun b!4566845 () Bool)

(declare-fun e!2847079 () List!51031)

(assert (=> b!4566845 (= e!2847079 (keys!17764 (extractMap!1312 (toList!4519 lm!1477))))))

(declare-fun d!1423632 () Bool)

(declare-fun e!2847077 () Bool)

(assert (=> d!1423632 e!2847077))

(declare-fun res!1906413 () Bool)

(assert (=> d!1423632 (=> res!1906413 e!2847077)))

(assert (=> d!1423632 (= res!1906413 e!2847076)))

(declare-fun res!1906410 () Bool)

(assert (=> d!1423632 (=> (not res!1906410) (not e!2847076))))

(declare-fun lt!1735723 () Bool)

(assert (=> d!1423632 (= res!1906410 (not lt!1735723))))

(declare-fun lt!1735717 () Bool)

(assert (=> d!1423632 (= lt!1735723 lt!1735717)))

(declare-fun lt!1735719 () Unit!103233)

(declare-fun e!2847080 () Unit!103233)

(assert (=> d!1423632 (= lt!1735719 e!2847080)))

(declare-fun c!781022 () Bool)

(assert (=> d!1423632 (= c!781022 lt!1735717)))

(assert (=> d!1423632 (= lt!1735717 (containsKey!2014 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287))))

(assert (=> d!1423632 (= (contains!13773 (extractMap!1312 (toList!4519 lm!1477)) key!3287) lt!1735723)))

(declare-fun b!4566846 () Bool)

(assert (=> b!4566846 false))

(declare-fun lt!1735722 () Unit!103233)

(declare-fun lt!1735721 () Unit!103233)

(assert (=> b!4566846 (= lt!1735722 lt!1735721)))

(assert (=> b!4566846 (containsKey!2014 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287)))

(assert (=> b!4566846 (= lt!1735721 (lemmaInGetKeysListThenContainsKey!530 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287))))

(declare-fun Unit!103330 () Unit!103233)

(assert (=> b!4566846 (= e!2847075 Unit!103330)))

(declare-fun bm!318619 () Bool)

(declare-fun call!318624 () Bool)

(assert (=> bm!318619 (= call!318624 (contains!13777 e!2847079 key!3287))))

(declare-fun c!781021 () Bool)

(assert (=> bm!318619 (= c!781021 c!781022)))

(declare-fun b!4566847 () Bool)

(assert (=> b!4566847 (= e!2847080 e!2847075)))

(declare-fun c!781023 () Bool)

(assert (=> b!4566847 (= c!781023 call!318624)))

(declare-fun b!4566848 () Bool)

(assert (=> b!4566848 (= e!2847079 (getKeysList!531 (toList!4520 (extractMap!1312 (toList!4519 lm!1477)))))))

(declare-fun b!4566849 () Bool)

(assert (=> b!4566849 (= e!2847077 e!2847078)))

(declare-fun res!1906414 () Bool)

(assert (=> b!4566849 (=> (not res!1906414) (not e!2847078))))

(assert (=> b!4566849 (= res!1906414 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287)))))

(declare-fun b!4566850 () Bool)

(declare-fun lt!1735718 () Unit!103233)

(assert (=> b!4566850 (= e!2847080 lt!1735718)))

(declare-fun lt!1735720 () Unit!103233)

(assert (=> b!4566850 (= lt!1735720 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287))))

(assert (=> b!4566850 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287))))

(declare-fun lt!1735716 () Unit!103233)

(assert (=> b!4566850 (= lt!1735716 lt!1735720)))

(assert (=> b!4566850 (= lt!1735718 (lemmaInListThenGetKeysListContains!527 (toList!4520 (extractMap!1312 (toList!4519 lm!1477))) key!3287))))

(assert (=> b!4566850 call!318624))

(assert (= (and d!1423632 c!781022) b!4566850))

(assert (= (and d!1423632 (not c!781022)) b!4566847))

(assert (= (and b!4566847 c!781023) b!4566846))

(assert (= (and b!4566847 (not c!781023)) b!4566842))

(assert (= (or b!4566850 b!4566847) bm!318619))

(assert (= (and bm!318619 c!781021) b!4566848))

(assert (= (and bm!318619 (not c!781021)) b!4566845))

(assert (= (and d!1423632 res!1906410) b!4566843))

(assert (= (and d!1423632 (not res!1906413)) b!4566849))

(assert (= (and b!4566849 res!1906414) b!4566844))

(declare-fun m!5361859 () Bool)

(assert (=> b!4566846 m!5361859))

(declare-fun m!5361861 () Bool)

(assert (=> b!4566846 m!5361861))

(assert (=> b!4566844 m!5360719))

(declare-fun m!5361863 () Bool)

(assert (=> b!4566844 m!5361863))

(assert (=> b!4566844 m!5361863))

(declare-fun m!5361865 () Bool)

(assert (=> b!4566844 m!5361865))

(assert (=> b!4566845 m!5360719))

(assert (=> b!4566845 m!5361863))

(declare-fun m!5361867 () Bool)

(assert (=> b!4566848 m!5361867))

(declare-fun m!5361869 () Bool)

(assert (=> bm!318619 m!5361869))

(declare-fun m!5361871 () Bool)

(assert (=> b!4566849 m!5361871))

(assert (=> b!4566849 m!5361871))

(declare-fun m!5361873 () Bool)

(assert (=> b!4566849 m!5361873))

(assert (=> b!4566843 m!5360719))

(assert (=> b!4566843 m!5361863))

(assert (=> b!4566843 m!5361863))

(assert (=> b!4566843 m!5361865))

(assert (=> d!1423632 m!5361859))

(declare-fun m!5361875 () Bool)

(assert (=> b!4566850 m!5361875))

(assert (=> b!4566850 m!5361871))

(assert (=> b!4566850 m!5361871))

(assert (=> b!4566850 m!5361873))

(declare-fun m!5361877 () Bool)

(assert (=> b!4566850 m!5361877))

(assert (=> d!1423372 d!1423632))

(assert (=> d!1423372 d!1423378))

(declare-fun d!1423634 () Bool)

(assert (=> d!1423634 (not (contains!13773 (extractMap!1312 (toList!4519 lm!1477)) key!3287))))

(assert (=> d!1423634 true))

(declare-fun _$26!470 () Unit!103233)

(assert (=> d!1423634 (= (choose!30327 lm!1477 key!3287 hashF!1107) _$26!470)))

(declare-fun bs!946771 () Bool)

(assert (= bs!946771 d!1423634))

(assert (=> bs!946771 m!5360719))

(assert (=> bs!946771 m!5360719))

(assert (=> bs!946771 m!5361133))

(assert (=> d!1423372 d!1423634))

(declare-fun d!1423638 () Bool)

(declare-fun res!1906421 () Bool)

(declare-fun e!2847092 () Bool)

(assert (=> d!1423638 (=> res!1906421 e!2847092)))

(assert (=> d!1423638 (= res!1906421 ((_ is Nil!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423638 (= (forall!10462 (toList!4519 lm!1477) lambda!180920) e!2847092)))

(declare-fun b!4566873 () Bool)

(declare-fun e!2847093 () Bool)

(assert (=> b!4566873 (= e!2847092 e!2847093)))

(declare-fun res!1906422 () Bool)

(assert (=> b!4566873 (=> (not res!1906422) (not e!2847093))))

(assert (=> b!4566873 (= res!1906422 (dynLambda!21298 lambda!180920 (h!56826 (toList!4519 lm!1477))))))

(declare-fun b!4566874 () Bool)

(assert (=> b!4566874 (= e!2847093 (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180920))))

(assert (= (and d!1423638 (not res!1906421)) b!4566873))

(assert (= (and b!4566873 res!1906422) b!4566874))

(declare-fun b_lambda!163151 () Bool)

(assert (=> (not b_lambda!163151) (not b!4566873)))

(declare-fun m!5361887 () Bool)

(assert (=> b!4566873 m!5361887))

(declare-fun m!5361889 () Bool)

(assert (=> b!4566874 m!5361889))

(assert (=> d!1423372 d!1423638))

(assert (=> b!4566371 d!1423472))

(declare-fun d!1423640 () Bool)

(declare-fun res!1906423 () Bool)

(declare-fun e!2847094 () Bool)

(assert (=> d!1423640 (=> res!1906423 e!2847094)))

(assert (=> d!1423640 (= res!1906423 (not ((_ is Cons!50904) (_2!29024 lt!1735187))))))

(assert (=> d!1423640 (= (noDuplicateKeys!1256 (_2!29024 lt!1735187)) e!2847094)))

(declare-fun b!4566875 () Bool)

(declare-fun e!2847095 () Bool)

(assert (=> b!4566875 (= e!2847094 e!2847095)))

(declare-fun res!1906424 () Bool)

(assert (=> b!4566875 (=> (not res!1906424) (not e!2847095))))

(assert (=> b!4566875 (= res!1906424 (not (containsKey!2010 (t!358006 (_2!29024 lt!1735187)) (_1!29023 (h!56825 (_2!29024 lt!1735187))))))))

(declare-fun b!4566876 () Bool)

(assert (=> b!4566876 (= e!2847095 (noDuplicateKeys!1256 (t!358006 (_2!29024 lt!1735187))))))

(assert (= (and d!1423640 (not res!1906423)) b!4566875))

(assert (= (and b!4566875 res!1906424) b!4566876))

(declare-fun m!5361891 () Bool)

(assert (=> b!4566875 m!5361891))

(declare-fun m!5361893 () Bool)

(assert (=> b!4566876 m!5361893))

(assert (=> bs!946653 d!1423640))

(declare-fun b!4566877 () Bool)

(declare-fun e!2847096 () Unit!103233)

(declare-fun Unit!103331 () Unit!103233)

(assert (=> b!4566877 (= e!2847096 Unit!103331)))

(declare-fun b!4566878 () Bool)

(declare-fun e!2847097 () Bool)

(assert (=> b!4566878 (= e!2847097 (not (contains!13777 (keys!17764 lt!1735234) key!3287)))))

(declare-fun b!4566879 () Bool)

(declare-fun e!2847099 () Bool)

(assert (=> b!4566879 (= e!2847099 (contains!13777 (keys!17764 lt!1735234) key!3287))))

(declare-fun b!4566880 () Bool)

(declare-fun e!2847100 () List!51031)

(assert (=> b!4566880 (= e!2847100 (keys!17764 lt!1735234))))

(declare-fun d!1423642 () Bool)

(declare-fun e!2847098 () Bool)

(assert (=> d!1423642 e!2847098))

(declare-fun res!1906426 () Bool)

(assert (=> d!1423642 (=> res!1906426 e!2847098)))

(assert (=> d!1423642 (= res!1906426 e!2847097)))

(declare-fun res!1906425 () Bool)

(assert (=> d!1423642 (=> (not res!1906425) (not e!2847097))))

(declare-fun lt!1735736 () Bool)

(assert (=> d!1423642 (= res!1906425 (not lt!1735736))))

(declare-fun lt!1735730 () Bool)

(assert (=> d!1423642 (= lt!1735736 lt!1735730)))

(declare-fun lt!1735732 () Unit!103233)

(declare-fun e!2847101 () Unit!103233)

(assert (=> d!1423642 (= lt!1735732 e!2847101)))

(declare-fun c!781033 () Bool)

(assert (=> d!1423642 (= c!781033 lt!1735730)))

(assert (=> d!1423642 (= lt!1735730 (containsKey!2014 (toList!4520 lt!1735234) key!3287))))

(assert (=> d!1423642 (= (contains!13773 lt!1735234 key!3287) lt!1735736)))

(declare-fun b!4566881 () Bool)

(assert (=> b!4566881 false))

(declare-fun lt!1735735 () Unit!103233)

(declare-fun lt!1735734 () Unit!103233)

(assert (=> b!4566881 (= lt!1735735 lt!1735734)))

(assert (=> b!4566881 (containsKey!2014 (toList!4520 lt!1735234) key!3287)))

(assert (=> b!4566881 (= lt!1735734 (lemmaInGetKeysListThenContainsKey!530 (toList!4520 lt!1735234) key!3287))))

(declare-fun Unit!103332 () Unit!103233)

(assert (=> b!4566881 (= e!2847096 Unit!103332)))

(declare-fun bm!318626 () Bool)

(declare-fun call!318631 () Bool)

(assert (=> bm!318626 (= call!318631 (contains!13777 e!2847100 key!3287))))

(declare-fun c!781032 () Bool)

(assert (=> bm!318626 (= c!781032 c!781033)))

(declare-fun b!4566882 () Bool)

(assert (=> b!4566882 (= e!2847101 e!2847096)))

(declare-fun c!781034 () Bool)

(assert (=> b!4566882 (= c!781034 call!318631)))

(declare-fun b!4566883 () Bool)

(assert (=> b!4566883 (= e!2847100 (getKeysList!531 (toList!4520 lt!1735234)))))

(declare-fun b!4566884 () Bool)

(assert (=> b!4566884 (= e!2847098 e!2847099)))

(declare-fun res!1906427 () Bool)

(assert (=> b!4566884 (=> (not res!1906427) (not e!2847099))))

(assert (=> b!4566884 (= res!1906427 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735234) key!3287)))))

(declare-fun b!4566885 () Bool)

(declare-fun lt!1735731 () Unit!103233)

(assert (=> b!4566885 (= e!2847101 lt!1735731)))

(declare-fun lt!1735733 () Unit!103233)

(assert (=> b!4566885 (= lt!1735733 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 lt!1735234) key!3287))))

(assert (=> b!4566885 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735234) key!3287))))

(declare-fun lt!1735729 () Unit!103233)

(assert (=> b!4566885 (= lt!1735729 lt!1735733)))

(assert (=> b!4566885 (= lt!1735731 (lemmaInListThenGetKeysListContains!527 (toList!4520 lt!1735234) key!3287))))

(assert (=> b!4566885 call!318631))

(assert (= (and d!1423642 c!781033) b!4566885))

(assert (= (and d!1423642 (not c!781033)) b!4566882))

(assert (= (and b!4566882 c!781034) b!4566881))

(assert (= (and b!4566882 (not c!781034)) b!4566877))

(assert (= (or b!4566885 b!4566882) bm!318626))

(assert (= (and bm!318626 c!781032) b!4566883))

(assert (= (and bm!318626 (not c!781032)) b!4566880))

(assert (= (and d!1423642 res!1906425) b!4566878))

(assert (= (and d!1423642 (not res!1906426)) b!4566884))

(assert (= (and b!4566884 res!1906427) b!4566879))

(declare-fun m!5361895 () Bool)

(assert (=> b!4566881 m!5361895))

(declare-fun m!5361897 () Bool)

(assert (=> b!4566881 m!5361897))

(assert (=> b!4566879 m!5360835))

(assert (=> b!4566879 m!5360835))

(declare-fun m!5361899 () Bool)

(assert (=> b!4566879 m!5361899))

(assert (=> b!4566880 m!5360835))

(assert (=> b!4566883 m!5361579))

(declare-fun m!5361901 () Bool)

(assert (=> bm!318626 m!5361901))

(declare-fun m!5361903 () Bool)

(assert (=> b!4566884 m!5361903))

(assert (=> b!4566884 m!5361903))

(declare-fun m!5361905 () Bool)

(assert (=> b!4566884 m!5361905))

(assert (=> b!4566878 m!5360835))

(assert (=> b!4566878 m!5360835))

(assert (=> b!4566878 m!5361899))

(assert (=> d!1423642 m!5361895))

(declare-fun m!5361907 () Bool)

(assert (=> b!4566885 m!5361907))

(assert (=> b!4566885 m!5361903))

(assert (=> b!4566885 m!5361903))

(assert (=> b!4566885 m!5361905))

(declare-fun m!5361909 () Bool)

(assert (=> b!4566885 m!5361909))

(assert (=> d!1423266 d!1423642))

(declare-fun bm!318652 () Bool)

(declare-fun call!318659 () (InoxSet tuple2!51458))

(assert (=> bm!318652 (= call!318659 (content!8544 (t!358006 (toList!4520 lt!1735189))))))

(declare-fun b!4567001 () Bool)

(declare-fun e!2847178 () Unit!103233)

(declare-fun Unit!103333 () Unit!103233)

(assert (=> b!4567001 (= e!2847178 Unit!103333)))

(declare-fun b!4567002 () Bool)

(declare-fun res!1906467 () Bool)

(declare-fun e!2847170 () Bool)

(assert (=> b!4567002 (=> (not res!1906467) (not e!2847170))))

(declare-fun lt!1735865 () List!51028)

(assert (=> b!4567002 (= res!1906467 (not (containsKey!2014 lt!1735865 key!3287)))))

(declare-fun b!4567003 () Bool)

(declare-fun Unit!103334 () Unit!103233)

(assert (=> b!4567003 (= e!2847178 Unit!103334)))

(declare-fun lt!1735861 () List!51028)

(assert (=> b!4567003 (= lt!1735861 (removePresrvNoDuplicatedKeys!197 (t!358006 (toList!4520 lt!1735189)) key!3287))))

(declare-fun lt!1735858 () Unit!103233)

(assert (=> b!4567003 (= lt!1735858 (lemmaInListThenGetKeysListContains!527 lt!1735861 (_1!29023 (h!56825 (toList!4520 lt!1735189)))))))

(assert (=> b!4567003 (contains!13777 (getKeysList!531 lt!1735861) (_1!29023 (h!56825 (toList!4520 lt!1735189))))))

(declare-fun lt!1735857 () Unit!103233)

(assert (=> b!4567003 (= lt!1735857 lt!1735858)))

(assert (=> b!4567003 false))

(declare-fun b!4567004 () Bool)

(declare-fun e!2847175 () List!51028)

(assert (=> b!4567004 (= e!2847175 (t!358006 (toList!4520 lt!1735189)))))

(declare-fun call!318657 () Bool)

(declare-fun bm!318653 () Bool)

(declare-fun c!781075 () Bool)

(assert (=> bm!318653 (= call!318657 (containsKey!2014 (ite c!781075 (toList!4520 lt!1735189) (t!358006 (toList!4520 lt!1735189))) (ite c!781075 key!3287 (_1!29023 (h!56825 (toList!4520 lt!1735189))))))))

(declare-fun bm!318654 () Bool)

(declare-fun call!318660 () (InoxSet tuple2!51458))

(assert (=> bm!318654 (= call!318660 (content!8544 lt!1735865))))

(declare-fun b!4567005 () Bool)

(declare-fun e!2847173 () List!51028)

(assert (=> b!4567005 (= e!2847173 Nil!50904)))

(declare-fun b!4567006 () Bool)

(declare-fun e!2847172 () Unit!103233)

(declare-fun Unit!103335 () Unit!103233)

(assert (=> b!4567006 (= e!2847172 Unit!103335)))

(declare-fun lt!1735870 () Unit!103233)

(assert (=> b!4567006 (= lt!1735870 (lemmaInGetKeysListThenContainsKey!530 (t!358006 (toList!4520 lt!1735189)) (_1!29023 (h!56825 (toList!4520 lt!1735189)))))))

(assert (=> b!4567006 call!318657))

(declare-fun lt!1735866 () Unit!103233)

(assert (=> b!4567006 (= lt!1735866 lt!1735870)))

(assert (=> b!4567006 false))

(declare-fun b!4567007 () Bool)

(declare-fun e!2847176 () List!51028)

(assert (=> b!4567007 (= e!2847176 (t!358006 (toList!4520 lt!1735189)))))

(declare-fun c!781074 () Bool)

(assert (=> b!4567007 (= c!781074 call!318657)))

(declare-fun lt!1735867 () Unit!103233)

(declare-fun e!2847177 () Unit!103233)

(assert (=> b!4567007 (= lt!1735867 e!2847177)))

(declare-fun e!2847174 () Bool)

(declare-fun b!4567008 () Bool)

(declare-fun call!318662 () (InoxSet tuple2!51458))

(declare-fun get!16782 (Option!11295) V!12526)

(assert (=> b!4567008 (= e!2847174 (= call!318660 ((_ map and) call!318662 ((_ map not) (store ((as const (Array tuple2!51458 Bool)) false) (tuple2!51459 key!3287 (get!16782 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))) true)))))))

(assert (=> b!4567008 (containsKey!2014 (toList!4520 lt!1735189) key!3287)))

(declare-fun lt!1735871 () Unit!103233)

(assert (=> b!4567008 (= lt!1735871 (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 lt!1735189) key!3287))))

(assert (=> b!4567008 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))))

(declare-fun lt!1735860 () Unit!103233)

(assert (=> b!4567008 (= lt!1735860 lt!1735871)))

(declare-fun b!4567009 () Bool)

(declare-fun call!318658 () (InoxSet tuple2!51458))

(assert (=> b!4567009 (= call!318659 call!318658)))

(declare-fun Unit!103336 () Unit!103233)

(assert (=> b!4567009 (= e!2847177 Unit!103336)))

(declare-fun b!4567011 () Bool)

(assert (=> b!4567011 (= e!2847170 e!2847174)))

(declare-fun c!781079 () Bool)

(assert (=> b!4567011 (= c!781079 (containsKey!2014 (toList!4520 lt!1735189) key!3287))))

(declare-fun b!4567012 () Bool)

(declare-fun Unit!103337 () Unit!103233)

(assert (=> b!4567012 (= e!2847172 Unit!103337)))

(declare-fun bm!318655 () Bool)

(declare-fun call!318661 () Bool)

(declare-fun lt!1735872 () K!12280)

(assert (=> bm!318655 (= call!318661 (containsKey!2014 e!2847175 (ite c!781075 lt!1735872 (_1!29023 (h!56825 (toList!4520 lt!1735189))))))))

(declare-fun c!781076 () Bool)

(assert (=> bm!318655 (= c!781076 c!781075)))

(declare-fun b!4567013 () Bool)

(assert (=> b!4567013 (= e!2847175 (removePresrvNoDuplicatedKeys!197 (t!358006 (toList!4520 lt!1735189)) key!3287))))

(declare-fun b!4567014 () Bool)

(declare-fun res!1906466 () Bool)

(assert (=> b!4567014 (=> (not res!1906466) (not e!2847170))))

(assert (=> b!4567014 (= res!1906466 (= (content!8545 (getKeysList!531 lt!1735865)) ((_ map and) (content!8545 (getKeysList!531 (toList!4520 lt!1735189))) ((_ map not) (store ((as const (Array K!12280 Bool)) false) key!3287 true)))))))

(declare-fun bm!318656 () Bool)

(assert (=> bm!318656 (= call!318662 (content!8544 (toList!4520 lt!1735189)))))

(declare-fun b!4567015 () Bool)

(declare-fun e!2847171 () Unit!103233)

(declare-fun Unit!103342 () Unit!103233)

(assert (=> b!4567015 (= e!2847171 Unit!103342)))

(declare-fun b!4567016 () Bool)

(declare-fun Unit!103343 () Unit!103233)

(assert (=> b!4567016 (= e!2847171 Unit!103343)))

(declare-fun lt!1735859 () V!12526)

(assert (=> b!4567016 (= lt!1735859 (get!16782 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287)))))

(assert (=> b!4567016 (= lt!1735872 key!3287)))

(declare-fun lt!1735869 () K!12280)

(assert (=> b!4567016 (= lt!1735869 key!3287)))

(declare-fun lt!1735864 () Unit!103233)

(declare-fun lemmaContainsTupleThenContainsKey!91 (List!51028 K!12280 V!12526) Unit!103233)

(assert (=> b!4567016 (= lt!1735864 (lemmaContainsTupleThenContainsKey!91 (t!358006 (toList!4520 lt!1735189)) lt!1735872 (get!16782 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))))))

(assert (=> b!4567016 call!318661))

(declare-fun lt!1735862 () Unit!103233)

(assert (=> b!4567016 (= lt!1735862 lt!1735864)))

(assert (=> b!4567016 false))

(declare-fun b!4567017 () Bool)

(assert (=> b!4567017 (= e!2847174 (= call!318660 call!318662))))

(declare-fun b!4567018 () Bool)

(declare-fun lt!1735874 () Unit!103233)

(assert (=> b!4567018 (= lt!1735874 e!2847178)))

(declare-fun c!781081 () Bool)

(assert (=> b!4567018 (= c!781081 call!318661)))

(declare-fun lt!1735873 () Unit!103233)

(assert (=> b!4567018 (= lt!1735873 e!2847172)))

(declare-fun c!781077 () Bool)

(assert (=> b!4567018 (= c!781077 (contains!13777 (getKeysList!531 (t!358006 (toList!4520 lt!1735189))) (_1!29023 (h!56825 (toList!4520 lt!1735189)))))))

(declare-fun lt!1735868 () List!51028)

(declare-fun $colon$colon!1001 (List!51028 tuple2!51458) List!51028)

(assert (=> b!4567018 (= lt!1735868 ($colon$colon!1001 (removePresrvNoDuplicatedKeys!197 (t!358006 (toList!4520 lt!1735189)) key!3287) (h!56825 (toList!4520 lt!1735189))))))

(assert (=> b!4567018 (= e!2847173 lt!1735868)))

(declare-fun bm!318657 () Bool)

(assert (=> bm!318657 (= call!318658 (content!8544 (toList!4520 lt!1735189)))))

(declare-fun b!4567019 () Bool)

(assert (=> b!4567019 (= call!318659 ((_ map and) call!318658 ((_ map not) (store ((as const (Array tuple2!51458 Bool)) false) (tuple2!51459 key!3287 (get!16782 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))) true))))))

(declare-fun lt!1735863 () Unit!103233)

(assert (=> b!4567019 (= lt!1735863 e!2847171)))

(declare-fun c!781078 () Bool)

(declare-fun contains!13779 (List!51028 tuple2!51458) Bool)

(assert (=> b!4567019 (= c!781078 (contains!13779 (t!358006 (toList!4520 lt!1735189)) (tuple2!51459 key!3287 (get!16782 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287)))))))

(declare-fun Unit!103344 () Unit!103233)

(assert (=> b!4567019 (= e!2847177 Unit!103344)))

(declare-fun b!4567010 () Bool)

(assert (=> b!4567010 (= e!2847176 e!2847173)))

(declare-fun c!781080 () Bool)

(assert (=> b!4567010 (= c!781080 (and ((_ is Cons!50904) (toList!4520 lt!1735189)) (not (= (_1!29023 (h!56825 (toList!4520 lt!1735189))) key!3287))))))

(declare-fun d!1423644 () Bool)

(assert (=> d!1423644 e!2847170))

(declare-fun res!1906465 () Bool)

(assert (=> d!1423644 (=> (not res!1906465) (not e!2847170))))

(assert (=> d!1423644 (= res!1906465 (invariantList!1083 lt!1735865))))

(assert (=> d!1423644 (= lt!1735865 e!2847176)))

(assert (=> d!1423644 (= c!781075 (and ((_ is Cons!50904) (toList!4520 lt!1735189)) (= (_1!29023 (h!56825 (toList!4520 lt!1735189))) key!3287)))))

(assert (=> d!1423644 (invariantList!1083 (toList!4520 lt!1735189))))

(assert (=> d!1423644 (= (removePresrvNoDuplicatedKeys!197 (toList!4520 lt!1735189) key!3287) lt!1735865)))

(assert (= (and d!1423644 c!781075) b!4567007))

(assert (= (and d!1423644 (not c!781075)) b!4567010))

(assert (= (and b!4567007 c!781074) b!4567019))

(assert (= (and b!4567007 (not c!781074)) b!4567009))

(assert (= (and b!4567019 c!781078) b!4567016))

(assert (= (and b!4567019 (not c!781078)) b!4567015))

(assert (= (or b!4567019 b!4567009) bm!318652))

(assert (= (or b!4567019 b!4567009) bm!318657))

(assert (= (and b!4567010 c!781080) b!4567018))

(assert (= (and b!4567010 (not c!781080)) b!4567005))

(assert (= (and b!4567018 c!781077) b!4567006))

(assert (= (and b!4567018 (not c!781077)) b!4567012))

(assert (= (and b!4567018 c!781081) b!4567003))

(assert (= (and b!4567018 (not c!781081)) b!4567001))

(assert (= (or b!4567007 b!4567006) bm!318653))

(assert (= (or b!4567016 b!4567018) bm!318655))

(assert (= (and bm!318655 c!781076) b!4567004))

(assert (= (and bm!318655 (not c!781076)) b!4567013))

(assert (= (and d!1423644 res!1906465) b!4567002))

(assert (= (and b!4567002 res!1906467) b!4567014))

(assert (= (and b!4567014 res!1906466) b!4567011))

(assert (= (and b!4567011 c!781079) b!4567008))

(assert (= (and b!4567011 (not c!781079)) b!4567017))

(assert (= (or b!4567008 b!4567017) bm!318654))

(assert (= (or b!4567008 b!4567017) bm!318656))

(declare-fun m!5362143 () Bool)

(assert (=> d!1423644 m!5362143))

(assert (=> d!1423644 m!5361739))

(assert (=> b!4567019 m!5361243))

(assert (=> b!4567019 m!5361243))

(declare-fun m!5362145 () Bool)

(assert (=> b!4567019 m!5362145))

(declare-fun m!5362147 () Bool)

(assert (=> b!4567019 m!5362147))

(declare-fun m!5362149 () Bool)

(assert (=> b!4567019 m!5362149))

(assert (=> b!4567008 m!5361233))

(assert (=> b!4567008 m!5361243))

(assert (=> b!4567008 m!5361243))

(assert (=> b!4567008 m!5361245))

(assert (=> b!4567008 m!5361243))

(assert (=> b!4567008 m!5362145))

(assert (=> b!4567008 m!5361247))

(assert (=> b!4567008 m!5362147))

(declare-fun m!5362157 () Bool)

(assert (=> bm!318653 m!5362157))

(declare-fun m!5362159 () Bool)

(assert (=> b!4567006 m!5362159))

(declare-fun m!5362161 () Bool)

(assert (=> b!4567018 m!5362161))

(assert (=> b!4567018 m!5362161))

(declare-fun m!5362163 () Bool)

(assert (=> b!4567018 m!5362163))

(declare-fun m!5362165 () Bool)

(assert (=> b!4567018 m!5362165))

(assert (=> b!4567018 m!5362165))

(declare-fun m!5362167 () Bool)

(assert (=> b!4567018 m!5362167))

(assert (=> b!4567013 m!5362165))

(declare-fun m!5362169 () Bool)

(assert (=> b!4567002 m!5362169))

(assert (=> b!4567016 m!5361243))

(assert (=> b!4567016 m!5361243))

(assert (=> b!4567016 m!5362145))

(assert (=> b!4567016 m!5362145))

(declare-fun m!5362171 () Bool)

(assert (=> b!4567016 m!5362171))

(declare-fun m!5362173 () Bool)

(assert (=> bm!318657 m!5362173))

(declare-fun m!5362175 () Bool)

(assert (=> bm!318655 m!5362175))

(assert (=> bm!318656 m!5362173))

(declare-fun m!5362177 () Bool)

(assert (=> b!4567014 m!5362177))

(assert (=> b!4567014 m!5362177))

(declare-fun m!5362179 () Bool)

(assert (=> b!4567014 m!5362179))

(assert (=> b!4567014 m!5361239))

(assert (=> b!4567014 m!5360841))

(assert (=> b!4567014 m!5361239))

(declare-fun m!5362181 () Bool)

(assert (=> b!4567014 m!5362181))

(declare-fun m!5362183 () Bool)

(assert (=> bm!318652 m!5362183))

(declare-fun m!5362185 () Bool)

(assert (=> bm!318654 m!5362185))

(assert (=> b!4567011 m!5361233))

(assert (=> b!4567003 m!5362165))

(declare-fun m!5362187 () Bool)

(assert (=> b!4567003 m!5362187))

(declare-fun m!5362189 () Bool)

(assert (=> b!4567003 m!5362189))

(assert (=> b!4567003 m!5362189))

(declare-fun m!5362191 () Bool)

(assert (=> b!4567003 m!5362191))

(assert (=> d!1423266 d!1423644))

(declare-fun d!1423694 () Bool)

(assert (=> d!1423694 (isDefined!8566 (getValueByKey!1226 (toList!4519 lm!1477) lt!1735180))))

(declare-fun lt!1735878 () Unit!103233)

(assert (=> d!1423694 (= lt!1735878 (choose!30335 (toList!4519 lm!1477) lt!1735180))))

(declare-fun e!2847183 () Bool)

(assert (=> d!1423694 e!2847183))

(declare-fun res!1906473 () Bool)

(assert (=> d!1423694 (=> (not res!1906473) (not e!2847183))))

(assert (=> d!1423694 (= res!1906473 (isStrictlySorted!498 (toList!4519 lm!1477)))))

(assert (=> d!1423694 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lm!1477) lt!1735180) lt!1735878)))

(declare-fun b!4567027 () Bool)

(assert (=> b!4567027 (= e!2847183 (containsKey!2013 (toList!4519 lm!1477) lt!1735180))))

(assert (= (and d!1423694 res!1906473) b!4567027))

(assert (=> d!1423694 m!5361119))

(assert (=> d!1423694 m!5361119))

(assert (=> d!1423694 m!5361121))

(declare-fun m!5362193 () Bool)

(assert (=> d!1423694 m!5362193))

(assert (=> d!1423694 m!5361127))

(assert (=> b!4567027 m!5361115))

(assert (=> b!4566298 d!1423694))

(assert (=> b!4566298 d!1423606))

(assert (=> b!4566298 d!1423608))

(assert (=> d!1423308 d!1423400))

(assert (=> d!1423308 d!1423256))

(declare-fun d!1423696 () Bool)

(assert (=> d!1423696 (= (eq!695 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) (-!464 (extractMap!1312 (toList!4519 lt!1735178)) key!3287)) (= (content!8544 (toList!4520 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (content!8544 (toList!4520 (-!464 (extractMap!1312 (toList!4519 lt!1735178)) key!3287)))))))

(declare-fun bs!946919 () Bool)

(assert (= bs!946919 d!1423696))

(assert (=> bs!946919 m!5360791))

(declare-fun m!5362207 () Bool)

(assert (=> bs!946919 m!5362207))

(assert (=> d!1423308 d!1423696))

(declare-fun d!1423700 () Bool)

(declare-fun e!2847184 () Bool)

(assert (=> d!1423700 e!2847184))

(declare-fun res!1906474 () Bool)

(assert (=> d!1423700 (=> (not res!1906474) (not e!2847184))))

(declare-fun lt!1735879 () ListMap!3781)

(assert (=> d!1423700 (= res!1906474 (not (contains!13773 lt!1735879 key!3287)))))

(assert (=> d!1423700 (= lt!1735879 (ListMap!3782 (removePresrvNoDuplicatedKeys!197 (toList!4520 (extractMap!1312 (toList!4519 lt!1735178))) key!3287)))))

(assert (=> d!1423700 (= (-!464 (extractMap!1312 (toList!4519 lt!1735178)) key!3287) lt!1735879)))

(declare-fun b!4567028 () Bool)

(assert (=> b!4567028 (= e!2847184 (= ((_ map and) (content!8545 (keys!17764 (extractMap!1312 (toList!4519 lt!1735178)))) ((_ map not) (store ((as const (Array K!12280 Bool)) false) key!3287 true))) (content!8545 (keys!17764 lt!1735879))))))

(assert (= (and d!1423700 res!1906474) b!4567028))

(declare-fun m!5362209 () Bool)

(assert (=> d!1423700 m!5362209))

(declare-fun m!5362211 () Bool)

(assert (=> d!1423700 m!5362211))

(declare-fun m!5362213 () Bool)

(assert (=> b!4567028 m!5362213))

(assert (=> b!4567028 m!5361607))

(declare-fun m!5362217 () Bool)

(assert (=> b!4567028 m!5362217))

(assert (=> b!4567028 m!5360841))

(assert (=> b!4567028 m!5360735))

(assert (=> b!4567028 m!5361607))

(assert (=> b!4567028 m!5362213))

(declare-fun m!5362219 () Bool)

(assert (=> b!4567028 m!5362219))

(assert (=> d!1423308 d!1423700))

(declare-fun d!1423706 () Bool)

(assert (=> d!1423706 (eq!695 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) (-!464 (extractMap!1312 (toList!4519 lt!1735178)) key!3287))))

(assert (=> d!1423706 true))

(declare-fun _$8!707 () Unit!103233)

(assert (=> d!1423706 (= (choose!30323 lt!1735178 hash!344 newBucket!178 key!3287 hashF!1107) _$8!707)))

(declare-fun bs!946921 () Bool)

(assert (= bs!946921 d!1423706))

(assert (=> bs!946921 m!5360747))

(assert (=> bs!946921 m!5361031))

(assert (=> bs!946921 m!5361037))

(assert (=> bs!946921 m!5360735))

(assert (=> bs!946921 m!5361031))

(assert (=> bs!946921 m!5360747))

(assert (=> bs!946921 m!5360755))

(assert (=> bs!946921 m!5360735))

(assert (=> d!1423308 d!1423706))

(assert (=> d!1423308 d!1423274))

(declare-fun d!1423724 () Bool)

(declare-fun res!1906486 () Bool)

(declare-fun e!2847203 () Bool)

(assert (=> d!1423724 (=> res!1906486 e!2847203)))

(assert (=> d!1423724 (= res!1906486 ((_ is Nil!50905) (toList!4519 lt!1735178)))))

(assert (=> d!1423724 (= (forall!10462 (toList!4519 lt!1735178) lambda!180904) e!2847203)))

(declare-fun b!4567058 () Bool)

(declare-fun e!2847204 () Bool)

(assert (=> b!4567058 (= e!2847203 e!2847204)))

(declare-fun res!1906487 () Bool)

(assert (=> b!4567058 (=> (not res!1906487) (not e!2847204))))

(assert (=> b!4567058 (= res!1906487 (dynLambda!21298 lambda!180904 (h!56826 (toList!4519 lt!1735178))))))

(declare-fun b!4567059 () Bool)

(assert (=> b!4567059 (= e!2847204 (forall!10462 (t!358007 (toList!4519 lt!1735178)) lambda!180904))))

(assert (= (and d!1423724 (not res!1906486)) b!4567058))

(assert (= (and b!4567058 res!1906487) b!4567059))

(declare-fun b_lambda!163157 () Bool)

(assert (=> (not b_lambda!163157) (not b!4567058)))

(declare-fun m!5362269 () Bool)

(assert (=> b!4567058 m!5362269))

(declare-fun m!5362271 () Bool)

(assert (=> b!4567059 m!5362271))

(assert (=> d!1423308 d!1423724))

(assert (=> b!4566325 d!1423468))

(declare-fun b!4567063 () Bool)

(declare-fun e!2847205 () List!51028)

(assert (=> b!4567063 (= e!2847205 Nil!50904)))

(declare-fun b!4567060 () Bool)

(declare-fun e!2847206 () List!51028)

(assert (=> b!4567060 (= e!2847206 (t!358006 (t!358006 lt!1735181)))))

(declare-fun b!4567062 () Bool)

(assert (=> b!4567062 (= e!2847205 (Cons!50904 (h!56825 (t!358006 lt!1735181)) (removePairForKey!883 (t!358006 (t!358006 lt!1735181)) key!3287)))))

(declare-fun b!4567061 () Bool)

(assert (=> b!4567061 (= e!2847206 e!2847205)))

(declare-fun c!781092 () Bool)

(assert (=> b!4567061 (= c!781092 ((_ is Cons!50904) (t!358006 lt!1735181)))))

(declare-fun d!1423726 () Bool)

(declare-fun lt!1735887 () List!51028)

(assert (=> d!1423726 (not (containsKey!2010 lt!1735887 key!3287))))

(assert (=> d!1423726 (= lt!1735887 e!2847206)))

(declare-fun c!781093 () Bool)

(assert (=> d!1423726 (= c!781093 (and ((_ is Cons!50904) (t!358006 lt!1735181)) (= (_1!29023 (h!56825 (t!358006 lt!1735181))) key!3287)))))

(assert (=> d!1423726 (noDuplicateKeys!1256 (t!358006 lt!1735181))))

(assert (=> d!1423726 (= (removePairForKey!883 (t!358006 lt!1735181) key!3287) lt!1735887)))

(assert (= (and d!1423726 c!781093) b!4567060))

(assert (= (and d!1423726 (not c!781093)) b!4567061))

(assert (= (and b!4567061 c!781092) b!4567062))

(assert (= (and b!4567061 (not c!781092)) b!4567063))

(declare-fun m!5362273 () Bool)

(assert (=> b!4567062 m!5362273))

(declare-fun m!5362275 () Bool)

(assert (=> d!1423726 m!5362275))

(assert (=> d!1423726 m!5361733))

(assert (=> b!4566273 d!1423726))

(declare-fun d!1423728 () Bool)

(declare-fun c!781094 () Bool)

(assert (=> d!1423728 (= c!781094 ((_ is Nil!50905) (toList!4519 lm!1477)))))

(declare-fun e!2847207 () (InoxSet tuple2!51460))

(assert (=> d!1423728 (= (content!8546 (toList!4519 lm!1477)) e!2847207)))

(declare-fun b!4567064 () Bool)

(assert (=> b!4567064 (= e!2847207 ((as const (Array tuple2!51460 Bool)) false))))

(declare-fun b!4567065 () Bool)

(assert (=> b!4567065 (= e!2847207 ((_ map or) (store ((as const (Array tuple2!51460 Bool)) false) (h!56826 (toList!4519 lm!1477)) true) (content!8546 (t!358007 (toList!4519 lm!1477)))))))

(assert (= (and d!1423728 c!781094) b!4567064))

(assert (= (and d!1423728 (not c!781094)) b!4567065))

(declare-fun m!5362277 () Bool)

(assert (=> b!4567065 m!5362277))

(assert (=> b!4567065 m!5361261))

(assert (=> d!1423350 d!1423728))

(declare-fun d!1423730 () Bool)

(assert (=> d!1423730 (= (invariantList!1083 (toList!4520 lt!1735257)) (noDuplicatedKeys!298 (toList!4520 lt!1735257)))))

(declare-fun bs!946922 () Bool)

(assert (= bs!946922 d!1423730))

(declare-fun m!5362279 () Bool)

(assert (=> bs!946922 m!5362279))

(assert (=> d!1423274 d!1423730))

(declare-fun d!1423732 () Bool)

(declare-fun res!1906488 () Bool)

(declare-fun e!2847208 () Bool)

(assert (=> d!1423732 (=> res!1906488 e!2847208)))

(assert (=> d!1423732 (= res!1906488 ((_ is Nil!50905) (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (=> d!1423732 (= (forall!10462 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))) lambda!180892) e!2847208)))

(declare-fun b!4567066 () Bool)

(declare-fun e!2847209 () Bool)

(assert (=> b!4567066 (= e!2847208 e!2847209)))

(declare-fun res!1906489 () Bool)

(assert (=> b!4567066 (=> (not res!1906489) (not e!2847209))))

(assert (=> b!4567066 (= res!1906489 (dynLambda!21298 lambda!180892 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))

(declare-fun b!4567067 () Bool)

(assert (=> b!4567067 (= e!2847209 (forall!10462 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) lambda!180892))))

(assert (= (and d!1423732 (not res!1906488)) b!4567066))

(assert (= (and b!4567066 res!1906489) b!4567067))

(declare-fun b_lambda!163159 () Bool)

(assert (=> (not b_lambda!163159) (not b!4567066)))

(declare-fun m!5362281 () Bool)

(assert (=> b!4567066 m!5362281))

(declare-fun m!5362283 () Bool)

(assert (=> b!4567067 m!5362283))

(assert (=> d!1423274 d!1423732))

(assert (=> b!4566303 d!1423506))

(declare-fun c!781095 () Bool)

(declare-fun d!1423734 () Bool)

(assert (=> d!1423734 (= c!781095 ((_ is Nil!50904) (toList!4520 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))

(declare-fun e!2847210 () (InoxSet tuple2!51458))

(assert (=> d!1423734 (= (content!8544 (toList!4520 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) e!2847210)))

(declare-fun b!4567068 () Bool)

(assert (=> b!4567068 (= e!2847210 ((as const (Array tuple2!51458 Bool)) false))))

(declare-fun b!4567069 () Bool)

(assert (=> b!4567069 (= e!2847210 ((_ map or) (store ((as const (Array tuple2!51458 Bool)) false) (h!56825 (toList!4520 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) true) (content!8544 (t!358006 (toList!4520 (extractMap!1312 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))))

(assert (= (and d!1423734 c!781095) b!4567068))

(assert (= (and d!1423734 (not c!781095)) b!4567069))

(declare-fun m!5362285 () Bool)

(assert (=> b!4567069 m!5362285))

(declare-fun m!5362287 () Bool)

(assert (=> b!4567069 m!5362287))

(assert (=> d!1423262 d!1423734))

(declare-fun d!1423736 () Bool)

(declare-fun c!781096 () Bool)

(assert (=> d!1423736 (= c!781096 ((_ is Nil!50904) (toList!4520 (-!464 lt!1735189 key!3287))))))

(declare-fun e!2847211 () (InoxSet tuple2!51458))

(assert (=> d!1423736 (= (content!8544 (toList!4520 (-!464 lt!1735189 key!3287))) e!2847211)))

(declare-fun b!4567070 () Bool)

(assert (=> b!4567070 (= e!2847211 ((as const (Array tuple2!51458 Bool)) false))))

(declare-fun b!4567071 () Bool)

(assert (=> b!4567071 (= e!2847211 ((_ map or) (store ((as const (Array tuple2!51458 Bool)) false) (h!56825 (toList!4520 (-!464 lt!1735189 key!3287))) true) (content!8544 (t!358006 (toList!4520 (-!464 lt!1735189 key!3287))))))))

(assert (= (and d!1423736 c!781096) b!4567070))

(assert (= (and d!1423736 (not c!781096)) b!4567071))

(declare-fun m!5362289 () Bool)

(assert (=> b!4567071 m!5362289))

(declare-fun m!5362291 () Bool)

(assert (=> b!4567071 m!5362291))

(assert (=> d!1423262 d!1423736))

(declare-fun bs!946923 () Bool)

(declare-fun b!4567079 () Bool)

(assert (= bs!946923 (and b!4567079 b!4566496)))

(declare-fun lambda!181071 () Int)

(assert (=> bs!946923 (= (= (t!358006 (toList!4520 lt!1735194)) (toList!4520 lt!1735194)) (= lambda!181071 lambda!180946))))

(declare-fun bs!946924 () Bool)

(assert (= bs!946924 (and b!4567079 b!4566503)))

(assert (=> bs!946924 (= (= (t!358006 (toList!4520 lt!1735194)) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181071 lambda!180948))))

(declare-fun bs!946925 () Bool)

(assert (= bs!946925 (and b!4567079 b!4566827)))

(assert (=> bs!946925 (= (= (t!358006 (toList!4520 lt!1735194)) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181071 lambda!181046))))

(declare-fun bs!946926 () Bool)

(assert (= bs!946926 (and b!4567079 b!4566640)))

(assert (=> bs!946926 (= (= (t!358006 (toList!4520 lt!1735194)) (toList!4520 lt!1735189)) (= lambda!181071 lambda!180983))))

(declare-fun bs!946927 () Bool)

(assert (= bs!946927 (and b!4567079 b!4566823)))

(assert (=> bs!946927 (= (= (t!358006 (toList!4520 lt!1735194)) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181071 lambda!181047))))

(declare-fun bs!946928 () Bool)

(assert (= bs!946928 (and b!4567079 b!4566667)))

(assert (=> bs!946928 (= (= (t!358006 (toList!4520 lt!1735194)) (toList!4520 lt!1735234)) (= lambda!181071 lambda!180992))))

(declare-fun bs!946929 () Bool)

(assert (= bs!946929 (and b!4567079 b!4566824)))

(assert (=> bs!946929 (= (= (t!358006 (toList!4520 lt!1735194)) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181071 lambda!181048))))

(assert (=> b!4567079 true))

(declare-fun bs!946930 () Bool)

(declare-fun b!4567075 () Bool)

(assert (= bs!946930 (and b!4567075 b!4566496)))

(declare-fun lambda!181072 () Int)

(assert (=> bs!946930 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (toList!4520 lt!1735194)) (= lambda!181072 lambda!180946))))

(declare-fun bs!946931 () Bool)

(assert (= bs!946931 (and b!4567075 b!4566503)))

(assert (=> bs!946931 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181072 lambda!180948))))

(declare-fun bs!946932 () Bool)

(assert (= bs!946932 (and b!4567075 b!4566827)))

(assert (=> bs!946932 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181072 lambda!181046))))

(declare-fun bs!946933 () Bool)

(assert (= bs!946933 (and b!4567075 b!4566640)))

(assert (=> bs!946933 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (toList!4520 lt!1735189)) (= lambda!181072 lambda!180983))))

(declare-fun bs!946934 () Bool)

(assert (= bs!946934 (and b!4567075 b!4566823)))

(assert (=> bs!946934 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181072 lambda!181047))))

(declare-fun bs!946935 () Bool)

(assert (= bs!946935 (and b!4567075 b!4566667)))

(assert (=> bs!946935 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (toList!4520 lt!1735234)) (= lambda!181072 lambda!180992))))

(declare-fun bs!946936 () Bool)

(assert (= bs!946936 (and b!4567075 b!4566824)))

(assert (=> bs!946936 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181072 lambda!181048))))

(declare-fun bs!946937 () Bool)

(assert (= bs!946937 (and b!4567075 b!4567079)))

(assert (=> bs!946937 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194))) (t!358006 (toList!4520 lt!1735194))) (= lambda!181072 lambda!181071))))

(assert (=> b!4567075 true))

(declare-fun bs!946938 () Bool)

(declare-fun b!4567076 () Bool)

(assert (= bs!946938 (and b!4567076 b!4566496)))

(declare-fun lambda!181073 () Int)

(assert (=> bs!946938 (= lambda!181073 lambda!180946)))

(declare-fun bs!946939 () Bool)

(assert (= bs!946939 (and b!4567076 b!4566503)))

(assert (=> bs!946939 (= (= (toList!4520 lt!1735194) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181073 lambda!180948))))

(declare-fun bs!946940 () Bool)

(assert (= bs!946940 (and b!4567076 b!4566827)))

(assert (=> bs!946940 (= (= (toList!4520 lt!1735194) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181073 lambda!181046))))

(declare-fun bs!946941 () Bool)

(assert (= bs!946941 (and b!4567076 b!4566640)))

(assert (=> bs!946941 (= (= (toList!4520 lt!1735194) (toList!4520 lt!1735189)) (= lambda!181073 lambda!180983))))

(declare-fun bs!946943 () Bool)

(assert (= bs!946943 (and b!4567076 b!4566823)))

(assert (=> bs!946943 (= (= (toList!4520 lt!1735194) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181073 lambda!181047))))

(declare-fun bs!946944 () Bool)

(assert (= bs!946944 (and b!4567076 b!4566667)))

(assert (=> bs!946944 (= (= (toList!4520 lt!1735194) (toList!4520 lt!1735234)) (= lambda!181073 lambda!180992))))

(declare-fun bs!946945 () Bool)

(assert (= bs!946945 (and b!4567076 b!4567075)))

(assert (=> bs!946945 (= (= (toList!4520 lt!1735194) (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194)))) (= lambda!181073 lambda!181072))))

(declare-fun bs!946946 () Bool)

(assert (= bs!946946 (and b!4567076 b!4566824)))

(assert (=> bs!946946 (= (= (toList!4520 lt!1735194) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181073 lambda!181048))))

(declare-fun bs!946947 () Bool)

(assert (= bs!946947 (and b!4567076 b!4567079)))

(assert (=> bs!946947 (= (= (toList!4520 lt!1735194) (t!358006 (toList!4520 lt!1735194))) (= lambda!181073 lambda!181071))))

(assert (=> b!4567076 true))

(declare-fun bs!946948 () Bool)

(declare-fun b!4567078 () Bool)

(assert (= bs!946948 (and b!4567078 b!4566504)))

(declare-fun lambda!181074 () Int)

(assert (=> bs!946948 (= lambda!181074 lambda!180949)))

(declare-fun bs!946949 () Bool)

(assert (= bs!946949 (and b!4567078 b!4566641)))

(assert (=> bs!946949 (= lambda!181074 lambda!180984)))

(declare-fun bs!946951 () Bool)

(assert (= bs!946951 (and b!4567078 b!4566668)))

(assert (=> bs!946951 (= lambda!181074 lambda!180994)))

(declare-fun bs!946952 () Bool)

(assert (= bs!946952 (and b!4567078 b!4566497)))

(assert (=> bs!946952 (= lambda!181074 lambda!180947)))

(declare-fun bs!946953 () Bool)

(assert (= bs!946953 (and b!4567078 b!4566826)))

(assert (=> bs!946953 (= lambda!181074 lambda!181049)))

(declare-fun b!4567072 () Bool)

(declare-fun res!1906491 () Bool)

(declare-fun e!2847213 () Bool)

(assert (=> b!4567072 (=> (not res!1906491) (not e!2847213))))

(declare-fun lt!1735889 () List!51031)

(assert (=> b!4567072 (= res!1906491 (= (length!424 lt!1735889) (length!425 (toList!4520 lt!1735194))))))

(declare-fun b!4567073 () Bool)

(declare-fun e!2847215 () Unit!103233)

(declare-fun Unit!103347 () Unit!103233)

(assert (=> b!4567073 (= e!2847215 Unit!103347)))

(declare-fun b!4567074 () Bool)

(declare-fun e!2847214 () List!51031)

(assert (=> b!4567074 (= e!2847214 Nil!50907)))

(assert (=> b!4567075 (= e!2847214 (Cons!50907 (_1!29023 (h!56825 (toList!4520 lt!1735194))) (getKeysList!531 (t!358006 (toList!4520 lt!1735194)))))))

(declare-fun c!781097 () Bool)

(assert (=> b!4567075 (= c!781097 (containsKey!2014 (t!358006 (toList!4520 lt!1735194)) (_1!29023 (h!56825 (toList!4520 lt!1735194)))))))

(declare-fun lt!1735888 () Unit!103233)

(assert (=> b!4567075 (= lt!1735888 e!2847215)))

(declare-fun c!781099 () Bool)

(assert (=> b!4567075 (= c!781099 (contains!13777 (getKeysList!531 (t!358006 (toList!4520 lt!1735194))) (_1!29023 (h!56825 (toList!4520 lt!1735194)))))))

(declare-fun lt!1735894 () Unit!103233)

(declare-fun e!2847212 () Unit!103233)

(assert (=> b!4567075 (= lt!1735894 e!2847212)))

(declare-fun lt!1735890 () List!51031)

(assert (=> b!4567075 (= lt!1735890 (getKeysList!531 (t!358006 (toList!4520 lt!1735194))))))

(declare-fun lt!1735892 () Unit!103233)

(assert (=> b!4567075 (= lt!1735892 (lemmaForallContainsAddHeadPreserves!204 (t!358006 (toList!4520 lt!1735194)) lt!1735890 (h!56825 (toList!4520 lt!1735194))))))

(assert (=> b!4567075 (forall!10466 lt!1735890 lambda!181072)))

(declare-fun lt!1735891 () Unit!103233)

(assert (=> b!4567075 (= lt!1735891 lt!1735892)))

(declare-fun res!1906492 () Bool)

(assert (=> b!4567076 (=> (not res!1906492) (not e!2847213))))

(assert (=> b!4567076 (= res!1906492 (forall!10466 lt!1735889 lambda!181073))))

(declare-fun b!4567077 () Bool)

(declare-fun Unit!103349 () Unit!103233)

(assert (=> b!4567077 (= e!2847212 Unit!103349)))

(assert (=> b!4567078 (= e!2847213 (= (content!8545 lt!1735889) (content!8545 (map!11223 (toList!4520 lt!1735194) lambda!181074))))))

(assert (=> b!4567079 false))

(declare-fun lt!1735893 () Unit!103233)

(assert (=> b!4567079 (= lt!1735893 (forallContained!2727 (getKeysList!531 (t!358006 (toList!4520 lt!1735194))) lambda!181071 (_1!29023 (h!56825 (toList!4520 lt!1735194)))))))

(declare-fun Unit!103350 () Unit!103233)

(assert (=> b!4567079 (= e!2847212 Unit!103350)))

(declare-fun d!1423738 () Bool)

(assert (=> d!1423738 e!2847213))

(declare-fun res!1906490 () Bool)

(assert (=> d!1423738 (=> (not res!1906490) (not e!2847213))))

(assert (=> d!1423738 (= res!1906490 (noDuplicate!784 lt!1735889))))

(assert (=> d!1423738 (= lt!1735889 e!2847214)))

(declare-fun c!781098 () Bool)

(assert (=> d!1423738 (= c!781098 ((_ is Cons!50904) (toList!4520 lt!1735194)))))

(assert (=> d!1423738 (invariantList!1083 (toList!4520 lt!1735194))))

(assert (=> d!1423738 (= (getKeysList!531 (toList!4520 lt!1735194)) lt!1735889)))

(declare-fun b!4567080 () Bool)

(assert (=> b!4567080 false))

(declare-fun Unit!103354 () Unit!103233)

(assert (=> b!4567080 (= e!2847215 Unit!103354)))

(assert (= (and d!1423738 c!781098) b!4567075))

(assert (= (and d!1423738 (not c!781098)) b!4567074))

(assert (= (and b!4567075 c!781097) b!4567080))

(assert (= (and b!4567075 (not c!781097)) b!4567073))

(assert (= (and b!4567075 c!781099) b!4567079))

(assert (= (and b!4567075 (not c!781099)) b!4567077))

(assert (= (and d!1423738 res!1906490) b!4567072))

(assert (= (and b!4567072 res!1906491) b!4567076))

(assert (= (and b!4567076 res!1906492) b!4567078))

(declare-fun m!5362297 () Bool)

(assert (=> b!4567078 m!5362297))

(declare-fun m!5362299 () Bool)

(assert (=> b!4567078 m!5362299))

(assert (=> b!4567078 m!5362299))

(declare-fun m!5362301 () Bool)

(assert (=> b!4567078 m!5362301))

(declare-fun m!5362303 () Bool)

(assert (=> b!4567072 m!5362303))

(assert (=> b!4567072 m!5361373))

(declare-fun m!5362305 () Bool)

(assert (=> b!4567079 m!5362305))

(assert (=> b!4567079 m!5362305))

(declare-fun m!5362309 () Bool)

(assert (=> b!4567079 m!5362309))

(assert (=> b!4567075 m!5362305))

(declare-fun m!5362313 () Bool)

(assert (=> b!4567075 m!5362313))

(assert (=> b!4567075 m!5362305))

(declare-fun m!5362317 () Bool)

(assert (=> b!4567075 m!5362317))

(declare-fun m!5362319 () Bool)

(assert (=> b!4567075 m!5362319))

(declare-fun m!5362323 () Bool)

(assert (=> b!4567075 m!5362323))

(declare-fun m!5362325 () Bool)

(assert (=> d!1423738 m!5362325))

(assert (=> d!1423738 m!5361329))

(declare-fun m!5362327 () Bool)

(assert (=> b!4567076 m!5362327))

(assert (=> b!4566328 d!1423738))

(declare-fun d!1423746 () Bool)

(assert (=> d!1423746 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735194) key!3287))))

(declare-fun lt!1735901 () Unit!103233)

(declare-fun choose!30336 (List!51028 K!12280) Unit!103233)

(assert (=> d!1423746 (= lt!1735901 (choose!30336 (toList!4520 lt!1735194) key!3287))))

(assert (=> d!1423746 (invariantList!1083 (toList!4520 lt!1735194))))

(assert (=> d!1423746 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 lt!1735194) key!3287) lt!1735901)))

(declare-fun bs!946955 () Bool)

(assert (= bs!946955 d!1423746))

(assert (=> bs!946955 m!5361153))

(assert (=> bs!946955 m!5361153))

(assert (=> bs!946955 m!5361155))

(declare-fun m!5362329 () Bool)

(assert (=> bs!946955 m!5362329))

(assert (=> bs!946955 m!5361329))

(assert (=> b!4566330 d!1423746))

(assert (=> b!4566330 d!1423518))

(assert (=> b!4566330 d!1423520))

(declare-fun d!1423752 () Bool)

(assert (=> d!1423752 (contains!13777 (getKeysList!531 (toList!4520 lt!1735194)) key!3287)))

(declare-fun lt!1735905 () Unit!103233)

(declare-fun choose!30337 (List!51028 K!12280) Unit!103233)

(assert (=> d!1423752 (= lt!1735905 (choose!30337 (toList!4520 lt!1735194) key!3287))))

(assert (=> d!1423752 (invariantList!1083 (toList!4520 lt!1735194))))

(assert (=> d!1423752 (= (lemmaInListThenGetKeysListContains!527 (toList!4520 lt!1735194) key!3287) lt!1735905)))

(declare-fun bs!946957 () Bool)

(assert (= bs!946957 d!1423752))

(assert (=> bs!946957 m!5361149))

(assert (=> bs!946957 m!5361149))

(declare-fun m!5362339 () Bool)

(assert (=> bs!946957 m!5362339))

(declare-fun m!5362341 () Bool)

(assert (=> bs!946957 m!5362341))

(assert (=> bs!946957 m!5361329))

(assert (=> b!4566330 d!1423752))

(assert (=> d!1423388 d!1423442))

(assert (=> d!1423388 d!1423436))

(declare-fun d!1423760 () Bool)

(assert (=> d!1423760 (isDefined!8567 (getValueByKey!1227 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(declare-fun lt!1735906 () Unit!103233)

(assert (=> d!1423760 (= lt!1735906 (choose!30336 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (=> d!1423760 (invariantList!1083 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423760 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287) lt!1735906)))

(declare-fun bs!946958 () Bool)

(assert (= bs!946958 d!1423760))

(assert (=> bs!946958 m!5361217))

(assert (=> bs!946958 m!5361217))

(assert (=> bs!946958 m!5361219))

(declare-fun m!5362343 () Bool)

(assert (=> bs!946958 m!5362343))

(assert (=> bs!946958 m!5361407))

(assert (=> b!4566376 d!1423760))

(assert (=> b!4566376 d!1423498))

(assert (=> b!4566376 d!1423500))

(declare-fun d!1423762 () Bool)

(assert (=> d!1423762 (contains!13777 (getKeysList!531 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) key!3287)))

(declare-fun lt!1735907 () Unit!103233)

(assert (=> d!1423762 (= lt!1735907 (choose!30337 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287))))

(assert (=> d!1423762 (invariantList!1083 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423762 (= (lemmaInListThenGetKeysListContains!527 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) key!3287) lt!1735907)))

(declare-fun bs!946959 () Bool)

(assert (= bs!946959 d!1423762))

(assert (=> bs!946959 m!5361213))

(assert (=> bs!946959 m!5361213))

(declare-fun m!5362345 () Bool)

(assert (=> bs!946959 m!5362345))

(declare-fun m!5362347 () Bool)

(assert (=> bs!946959 m!5362347))

(assert (=> bs!946959 m!5361407))

(assert (=> b!4566376 d!1423762))

(declare-fun d!1423764 () Bool)

(declare-fun e!2847224 () Bool)

(assert (=> d!1423764 e!2847224))

(declare-fun res!1906498 () Bool)

(assert (=> d!1423764 (=> res!1906498 e!2847224)))

(declare-fun lt!1735911 () Bool)

(assert (=> d!1423764 (= res!1906498 (not lt!1735911))))

(declare-fun lt!1735909 () Bool)

(assert (=> d!1423764 (= lt!1735911 lt!1735909)))

(declare-fun lt!1735910 () Unit!103233)

(declare-fun e!2847225 () Unit!103233)

(assert (=> d!1423764 (= lt!1735910 e!2847225)))

(declare-fun c!781103 () Bool)

(assert (=> d!1423764 (= c!781103 lt!1735909)))

(assert (=> d!1423764 (= lt!1735909 (containsKey!2013 (toList!4519 lt!1735220) (_1!29024 lt!1735192)))))

(assert (=> d!1423764 (= (contains!13774 lt!1735220 (_1!29024 lt!1735192)) lt!1735911)))

(declare-fun b!4567092 () Bool)

(declare-fun lt!1735908 () Unit!103233)

(assert (=> b!4567092 (= e!2847225 lt!1735908)))

(assert (=> b!4567092 (= lt!1735908 (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lt!1735220) (_1!29024 lt!1735192)))))

(assert (=> b!4567092 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735220) (_1!29024 lt!1735192)))))

(declare-fun b!4567093 () Bool)

(declare-fun Unit!103362 () Unit!103233)

(assert (=> b!4567093 (= e!2847225 Unit!103362)))

(declare-fun b!4567094 () Bool)

(assert (=> b!4567094 (= e!2847224 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735220) (_1!29024 lt!1735192))))))

(assert (= (and d!1423764 c!781103) b!4567092))

(assert (= (and d!1423764 (not c!781103)) b!4567093))

(assert (= (and d!1423764 (not res!1906498)) b!4567094))

(declare-fun m!5362349 () Bool)

(assert (=> d!1423764 m!5362349))

(declare-fun m!5362351 () Bool)

(assert (=> b!4567092 m!5362351))

(assert (=> b!4567092 m!5360803))

(assert (=> b!4567092 m!5360803))

(declare-fun m!5362353 () Bool)

(assert (=> b!4567092 m!5362353))

(assert (=> b!4567094 m!5360803))

(assert (=> b!4567094 m!5360803))

(assert (=> b!4567094 m!5362353))

(assert (=> d!1423264 d!1423764))

(declare-fun b!4567099 () Bool)

(declare-fun e!2847230 () Option!11294)

(assert (=> b!4567099 (= e!2847230 (Some!11293 (_2!29024 (h!56826 lt!1735222))))))

(declare-fun d!1423766 () Bool)

(declare-fun c!781104 () Bool)

(assert (=> d!1423766 (= c!781104 (and ((_ is Cons!50905) lt!1735222) (= (_1!29024 (h!56826 lt!1735222)) (_1!29024 lt!1735192))))))

(assert (=> d!1423766 (= (getValueByKey!1226 lt!1735222 (_1!29024 lt!1735192)) e!2847230)))

(declare-fun b!4567102 () Bool)

(declare-fun e!2847231 () Option!11294)

(assert (=> b!4567102 (= e!2847231 None!11293)))

(declare-fun b!4567100 () Bool)

(assert (=> b!4567100 (= e!2847230 e!2847231)))

(declare-fun c!781105 () Bool)

(assert (=> b!4567100 (= c!781105 (and ((_ is Cons!50905) lt!1735222) (not (= (_1!29024 (h!56826 lt!1735222)) (_1!29024 lt!1735192)))))))

(declare-fun b!4567101 () Bool)

(assert (=> b!4567101 (= e!2847231 (getValueByKey!1226 (t!358007 lt!1735222) (_1!29024 lt!1735192)))))

(assert (= (and d!1423766 c!781104) b!4567099))

(assert (= (and d!1423766 (not c!781104)) b!4567100))

(assert (= (and b!4567100 c!781105) b!4567101))

(assert (= (and b!4567100 (not c!781105)) b!4567102))

(declare-fun m!5362355 () Bool)

(assert (=> b!4567101 m!5362355))

(assert (=> d!1423264 d!1423766))

(declare-fun d!1423768 () Bool)

(assert (=> d!1423768 (= (getValueByKey!1226 lt!1735222 (_1!29024 lt!1735192)) (Some!11293 (_2!29024 lt!1735192)))))

(declare-fun lt!1735915 () Unit!103233)

(declare-fun choose!30338 (List!51029 (_ BitVec 64) List!51028) Unit!103233)

(assert (=> d!1423768 (= lt!1735915 (choose!30338 lt!1735222 (_1!29024 lt!1735192) (_2!29024 lt!1735192)))))

(declare-fun e!2847240 () Bool)

(assert (=> d!1423768 e!2847240))

(declare-fun res!1906513 () Bool)

(assert (=> d!1423768 (=> (not res!1906513) (not e!2847240))))

(assert (=> d!1423768 (= res!1906513 (isStrictlySorted!498 lt!1735222))))

(assert (=> d!1423768 (= (lemmaContainsTupThenGetReturnValue!758 lt!1735222 (_1!29024 lt!1735192) (_2!29024 lt!1735192)) lt!1735915)))

(declare-fun b!4567113 () Bool)

(declare-fun res!1906514 () Bool)

(assert (=> b!4567113 (=> (not res!1906514) (not e!2847240))))

(assert (=> b!4567113 (= res!1906514 (containsKey!2013 lt!1735222 (_1!29024 lt!1735192)))))

(declare-fun b!4567114 () Bool)

(assert (=> b!4567114 (= e!2847240 (contains!13775 lt!1735222 (tuple2!51461 (_1!29024 lt!1735192) (_2!29024 lt!1735192))))))

(assert (= (and d!1423768 res!1906513) b!4567113))

(assert (= (and b!4567113 res!1906514) b!4567114))

(assert (=> d!1423768 m!5360797))

(declare-fun m!5362369 () Bool)

(assert (=> d!1423768 m!5362369))

(declare-fun m!5362371 () Bool)

(assert (=> d!1423768 m!5362371))

(declare-fun m!5362373 () Bool)

(assert (=> b!4567113 m!5362373))

(declare-fun m!5362375 () Bool)

(assert (=> b!4567114 m!5362375))

(assert (=> d!1423264 d!1423768))

(declare-fun call!318675 () List!51029)

(declare-fun e!2847264 () List!51029)

(declare-fun c!781120 () Bool)

(declare-fun bm!318670 () Bool)

(declare-fun $colon$colon!1002 (List!51029 tuple2!51460) List!51029)

(assert (=> bm!318670 (= call!318675 ($colon$colon!1002 e!2847264 (ite c!781120 (h!56826 (toList!4519 lt!1735178)) (tuple2!51461 (_1!29024 lt!1735192) (_2!29024 lt!1735192)))))))

(declare-fun c!781119 () Bool)

(assert (=> bm!318670 (= c!781119 c!781120)))

(declare-fun b!4567149 () Bool)

(declare-fun res!1906527 () Bool)

(declare-fun e!2847262 () Bool)

(assert (=> b!4567149 (=> (not res!1906527) (not e!2847262))))

(declare-fun lt!1735942 () List!51029)

(assert (=> b!4567149 (= res!1906527 (containsKey!2013 lt!1735942 (_1!29024 lt!1735192)))))

(declare-fun d!1423778 () Bool)

(assert (=> d!1423778 e!2847262))

(declare-fun res!1906528 () Bool)

(assert (=> d!1423778 (=> (not res!1906528) (not e!2847262))))

(assert (=> d!1423778 (= res!1906528 (isStrictlySorted!498 lt!1735942))))

(declare-fun e!2847263 () List!51029)

(assert (=> d!1423778 (= lt!1735942 e!2847263)))

(assert (=> d!1423778 (= c!781120 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (bvslt (_1!29024 (h!56826 (toList!4519 lt!1735178))) (_1!29024 lt!1735192))))))

(assert (=> d!1423778 (isStrictlySorted!498 (toList!4519 lt!1735178))))

(assert (=> d!1423778 (= (insertStrictlySorted!464 (toList!4519 lt!1735178) (_1!29024 lt!1735192) (_2!29024 lt!1735192)) lt!1735942)))

(declare-fun b!4567150 () Bool)

(declare-fun c!781117 () Bool)

(declare-fun c!781118 () Bool)

(assert (=> b!4567150 (= e!2847264 (ite c!781117 (t!358007 (toList!4519 lt!1735178)) (ite c!781118 (Cons!50905 (h!56826 (toList!4519 lt!1735178)) (t!358007 (toList!4519 lt!1735178))) Nil!50905)))))

(declare-fun b!4567151 () Bool)

(assert (=> b!4567151 (= e!2847263 call!318675)))

(declare-fun b!4567152 () Bool)

(declare-fun e!2847261 () List!51029)

(declare-fun call!318676 () List!51029)

(assert (=> b!4567152 (= e!2847261 call!318676)))

(declare-fun bm!318671 () Bool)

(declare-fun call!318677 () List!51029)

(assert (=> bm!318671 (= call!318677 call!318676)))

(declare-fun b!4567153 () Bool)

(assert (=> b!4567153 (= e!2847264 (insertStrictlySorted!464 (t!358007 (toList!4519 lt!1735178)) (_1!29024 lt!1735192) (_2!29024 lt!1735192)))))

(declare-fun b!4567154 () Bool)

(assert (=> b!4567154 (= e!2847262 (contains!13775 lt!1735942 (tuple2!51461 (_1!29024 lt!1735192) (_2!29024 lt!1735192))))))

(declare-fun b!4567155 () Bool)

(declare-fun e!2847265 () List!51029)

(assert (=> b!4567155 (= e!2847265 call!318677)))

(declare-fun b!4567156 () Bool)

(assert (=> b!4567156 (= e!2847263 e!2847261)))

(assert (=> b!4567156 (= c!781117 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (= (_1!29024 (h!56826 (toList!4519 lt!1735178))) (_1!29024 lt!1735192))))))

(declare-fun bm!318672 () Bool)

(assert (=> bm!318672 (= call!318676 call!318675)))

(declare-fun b!4567157 () Bool)

(assert (=> b!4567157 (= c!781118 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (bvsgt (_1!29024 (h!56826 (toList!4519 lt!1735178))) (_1!29024 lt!1735192))))))

(assert (=> b!4567157 (= e!2847261 e!2847265)))

(declare-fun b!4567158 () Bool)

(assert (=> b!4567158 (= e!2847265 call!318677)))

(assert (= (and d!1423778 c!781120) b!4567151))

(assert (= (and d!1423778 (not c!781120)) b!4567156))

(assert (= (and b!4567156 c!781117) b!4567152))

(assert (= (and b!4567156 (not c!781117)) b!4567157))

(assert (= (and b!4567157 c!781118) b!4567155))

(assert (= (and b!4567157 (not c!781118)) b!4567158))

(assert (= (or b!4567155 b!4567158) bm!318671))

(assert (= (or b!4567152 bm!318671) bm!318672))

(assert (= (or b!4567151 bm!318672) bm!318670))

(assert (= (and bm!318670 c!781119) b!4567153))

(assert (= (and bm!318670 (not c!781119)) b!4567150))

(assert (= (and d!1423778 res!1906528) b!4567149))

(assert (= (and b!4567149 res!1906527) b!4567154))

(declare-fun m!5362385 () Bool)

(assert (=> b!4567153 m!5362385))

(declare-fun m!5362387 () Bool)

(assert (=> bm!318670 m!5362387))

(declare-fun m!5362389 () Bool)

(assert (=> d!1423778 m!5362389))

(assert (=> d!1423778 m!5361753))

(declare-fun m!5362391 () Bool)

(assert (=> b!4567149 m!5362391))

(declare-fun m!5362393 () Bool)

(assert (=> b!4567154 m!5362393))

(assert (=> d!1423264 d!1423778))

(declare-fun d!1423788 () Bool)

(declare-fun res!1906529 () Bool)

(declare-fun e!2847266 () Bool)

(assert (=> d!1423788 (=> res!1906529 e!2847266)))

(assert (=> d!1423788 (= res!1906529 (not ((_ is Cons!50904) (t!358006 newBucket!178))))))

(assert (=> d!1423788 (= (noDuplicateKeys!1256 (t!358006 newBucket!178)) e!2847266)))

(declare-fun b!4567159 () Bool)

(declare-fun e!2847267 () Bool)

(assert (=> b!4567159 (= e!2847266 e!2847267)))

(declare-fun res!1906530 () Bool)

(assert (=> b!4567159 (=> (not res!1906530) (not e!2847267))))

(assert (=> b!4567159 (= res!1906530 (not (containsKey!2010 (t!358006 (t!358006 newBucket!178)) (_1!29023 (h!56825 (t!358006 newBucket!178))))))))

(declare-fun b!4567160 () Bool)

(assert (=> b!4567160 (= e!2847267 (noDuplicateKeys!1256 (t!358006 (t!358006 newBucket!178))))))

(assert (= (and d!1423788 (not res!1906529)) b!4567159))

(assert (= (and b!4567159 res!1906530) b!4567160))

(declare-fun m!5362395 () Bool)

(assert (=> b!4567159 m!5362395))

(declare-fun m!5362397 () Bool)

(assert (=> b!4567160 m!5362397))

(assert (=> b!4566338 d!1423788))

(declare-fun d!1423790 () Bool)

(declare-fun lt!1735943 () Bool)

(assert (=> d!1423790 (= lt!1735943 (select (content!8546 (toList!4519 lt!1735220)) lt!1735192))))

(declare-fun e!2847268 () Bool)

(assert (=> d!1423790 (= lt!1735943 e!2847268)))

(declare-fun res!1906532 () Bool)

(assert (=> d!1423790 (=> (not res!1906532) (not e!2847268))))

(assert (=> d!1423790 (= res!1906532 ((_ is Cons!50905) (toList!4519 lt!1735220)))))

(assert (=> d!1423790 (= (contains!13775 (toList!4519 lt!1735220) lt!1735192) lt!1735943)))

(declare-fun b!4567161 () Bool)

(declare-fun e!2847269 () Bool)

(assert (=> b!4567161 (= e!2847268 e!2847269)))

(declare-fun res!1906531 () Bool)

(assert (=> b!4567161 (=> res!1906531 e!2847269)))

(assert (=> b!4567161 (= res!1906531 (= (h!56826 (toList!4519 lt!1735220)) lt!1735192))))

(declare-fun b!4567162 () Bool)

(assert (=> b!4567162 (= e!2847269 (contains!13775 (t!358007 (toList!4519 lt!1735220)) lt!1735192))))

(assert (= (and d!1423790 res!1906532) b!4567161))

(assert (= (and b!4567161 (not res!1906531)) b!4567162))

(declare-fun m!5362399 () Bool)

(assert (=> d!1423790 m!5362399))

(declare-fun m!5362401 () Bool)

(assert (=> d!1423790 m!5362401))

(declare-fun m!5362403 () Bool)

(assert (=> b!4567162 m!5362403))

(assert (=> b!4566111 d!1423790))

(declare-fun d!1423792 () Bool)

(declare-fun res!1906537 () Bool)

(declare-fun e!2847274 () Bool)

(assert (=> d!1423792 (=> res!1906537 e!2847274)))

(assert (=> d!1423792 (= res!1906537 ((_ is Nil!50904) newBucket!178))))

(assert (=> d!1423792 (= (forall!10464 newBucket!178 lambda!180935) e!2847274)))

(declare-fun b!4567167 () Bool)

(declare-fun e!2847275 () Bool)

(assert (=> b!4567167 (= e!2847274 e!2847275)))

(declare-fun res!1906538 () Bool)

(assert (=> b!4567167 (=> (not res!1906538) (not e!2847275))))

(declare-fun dynLambda!21299 (Int tuple2!51458) Bool)

(assert (=> b!4567167 (= res!1906538 (dynLambda!21299 lambda!180935 (h!56825 newBucket!178)))))

(declare-fun b!4567168 () Bool)

(assert (=> b!4567168 (= e!2847275 (forall!10464 (t!358006 newBucket!178) lambda!180935))))

(assert (= (and d!1423792 (not res!1906537)) b!4567167))

(assert (= (and b!4567167 res!1906538) b!4567168))

(declare-fun b_lambda!163163 () Bool)

(assert (=> (not b_lambda!163163) (not b!4567167)))

(declare-fun m!5362437 () Bool)

(assert (=> b!4567167 m!5362437))

(declare-fun m!5362441 () Bool)

(assert (=> b!4567168 m!5362441))

(assert (=> d!1423412 d!1423792))

(assert (=> b!4566382 d!1423524))

(declare-fun bs!947007 () Bool)

(declare-fun b!4567174 () Bool)

(assert (= bs!947007 (and b!4567174 b!4566588)))

(declare-fun lambda!181080 () Int)

(assert (=> bs!947007 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735559) (= lambda!181080 lambda!180980))))

(declare-fun bs!947010 () Bool)

(assert (= bs!947010 (and b!4567174 b!4566715)))

(assert (=> bs!947010 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181080 lambda!181020))))

(declare-fun bs!947012 () Bool)

(assert (= bs!947012 (and b!4567174 d!1423568)))

(assert (=> bs!947012 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735652) (= lambda!181080 lambda!181022))))

(assert (=> bs!947007 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181080 lambda!180979))))

(declare-fun bs!947015 () Bool)

(assert (= bs!947015 (and b!4567174 d!1423486)))

(assert (=> bs!947015 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735554) (= lambda!181080 lambda!180981))))

(declare-fun bs!947017 () Bool)

(assert (= bs!947017 (and b!4567174 b!4566718)))

(assert (=> bs!947017 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181080 lambda!181019))))

(assert (=> bs!947010 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735657) (= lambda!181080 lambda!181021))))

(declare-fun bs!947020 () Bool)

(assert (= bs!947020 (and b!4567174 d!1423412)))

(assert (=> bs!947020 (not (= lambda!181080 lambda!180935))))

(declare-fun bs!947022 () Bool)

(assert (= bs!947022 (and b!4567174 b!4566591)))

(assert (=> bs!947022 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181080 lambda!180978))))

(assert (=> b!4567174 true))

(declare-fun bs!947026 () Bool)

(declare-fun b!4567171 () Bool)

(assert (= bs!947026 (and b!4567171 b!4566588)))

(declare-fun lambda!181081 () Int)

(assert (=> bs!947026 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735559) (= lambda!181081 lambda!180980))))

(declare-fun bs!947027 () Bool)

(assert (= bs!947027 (and b!4567171 b!4566715)))

(assert (=> bs!947027 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181081 lambda!181020))))

(declare-fun bs!947028 () Bool)

(assert (= bs!947028 (and b!4567171 d!1423568)))

(assert (=> bs!947028 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735652) (= lambda!181081 lambda!181022))))

(assert (=> bs!947026 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181081 lambda!180979))))

(declare-fun bs!947029 () Bool)

(assert (= bs!947029 (and b!4567171 b!4566718)))

(assert (=> bs!947029 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181081 lambda!181019))))

(assert (=> bs!947027 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735657) (= lambda!181081 lambda!181021))))

(declare-fun bs!947030 () Bool)

(assert (= bs!947030 (and b!4567171 d!1423412)))

(assert (=> bs!947030 (not (= lambda!181081 lambda!180935))))

(declare-fun bs!947031 () Bool)

(assert (= bs!947031 (and b!4567171 b!4566591)))

(assert (=> bs!947031 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181081 lambda!180978))))

(declare-fun bs!947032 () Bool)

(assert (= bs!947032 (and b!4567171 d!1423486)))

(assert (=> bs!947032 (= (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735554) (= lambda!181081 lambda!180981))))

(declare-fun bs!947033 () Bool)

(assert (= bs!947033 (and b!4567171 b!4567174)))

(assert (=> bs!947033 (= lambda!181081 lambda!181080)))

(assert (=> b!4567171 true))

(declare-fun lt!1735962 () ListMap!3781)

(declare-fun lambda!181082 () Int)

(assert (=> bs!947026 (= (= lt!1735962 lt!1735559) (= lambda!181082 lambda!180980))))

(assert (=> bs!947027 (= (= lt!1735962 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181082 lambda!181020))))

(assert (=> bs!947028 (= (= lt!1735962 lt!1735652) (= lambda!181082 lambda!181022))))

(assert (=> bs!947029 (= (= lt!1735962 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181082 lambda!181019))))

(assert (=> bs!947027 (= (= lt!1735962 lt!1735657) (= lambda!181082 lambda!181021))))

(assert (=> bs!947030 (not (= lambda!181082 lambda!180935))))

(assert (=> bs!947031 (= (= lt!1735962 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181082 lambda!180978))))

(assert (=> b!4567171 (= (= lt!1735962 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181082 lambda!181081))))

(assert (=> bs!947026 (= (= lt!1735962 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181082 lambda!180979))))

(assert (=> bs!947032 (= (= lt!1735962 lt!1735554) (= lambda!181082 lambda!180981))))

(assert (=> bs!947033 (= (= lt!1735962 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181082 lambda!181080))))

(assert (=> b!4567171 true))

(declare-fun bs!947035 () Bool)

(declare-fun d!1423794 () Bool)

(assert (= bs!947035 (and d!1423794 b!4567171)))

(declare-fun lt!1735956 () ListMap!3781)

(declare-fun lambda!181083 () Int)

(assert (=> bs!947035 (= (= lt!1735956 lt!1735962) (= lambda!181083 lambda!181082))))

(declare-fun bs!947036 () Bool)

(assert (= bs!947036 (and d!1423794 b!4566588)))

(assert (=> bs!947036 (= (= lt!1735956 lt!1735559) (= lambda!181083 lambda!180980))))

(declare-fun bs!947037 () Bool)

(assert (= bs!947037 (and d!1423794 b!4566715)))

(assert (=> bs!947037 (= (= lt!1735956 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181083 lambda!181020))))

(declare-fun bs!947038 () Bool)

(assert (= bs!947038 (and d!1423794 d!1423568)))

(assert (=> bs!947038 (= (= lt!1735956 lt!1735652) (= lambda!181083 lambda!181022))))

(declare-fun bs!947039 () Bool)

(assert (= bs!947039 (and d!1423794 b!4566718)))

(assert (=> bs!947039 (= (= lt!1735956 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181083 lambda!181019))))

(assert (=> bs!947037 (= (= lt!1735956 lt!1735657) (= lambda!181083 lambda!181021))))

(declare-fun bs!947040 () Bool)

(assert (= bs!947040 (and d!1423794 d!1423412)))

(assert (=> bs!947040 (not (= lambda!181083 lambda!180935))))

(declare-fun bs!947041 () Bool)

(assert (= bs!947041 (and d!1423794 b!4566591)))

(assert (=> bs!947041 (= (= lt!1735956 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181083 lambda!180978))))

(assert (=> bs!947035 (= (= lt!1735956 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181083 lambda!181081))))

(assert (=> bs!947036 (= (= lt!1735956 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181083 lambda!180979))))

(declare-fun bs!947042 () Bool)

(assert (= bs!947042 (and d!1423794 d!1423486)))

(assert (=> bs!947042 (= (= lt!1735956 lt!1735554) (= lambda!181083 lambda!180981))))

(declare-fun bs!947043 () Bool)

(assert (= bs!947043 (and d!1423794 b!4567174)))

(assert (=> bs!947043 (= (= lt!1735956 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181083 lambda!181080))))

(assert (=> d!1423794 true))

(declare-fun e!2847278 () ListMap!3781)

(assert (=> b!4567171 (= e!2847278 lt!1735962)))

(declare-fun lt!1735944 () ListMap!3781)

(assert (=> b!4567171 (= lt!1735944 (+!1679 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))))))

(assert (=> b!4567171 (= lt!1735962 (addToMapMapFromBucket!769 (t!358006 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))) (+!1679 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))))

(declare-fun lt!1735960 () Unit!103233)

(declare-fun call!318679 () Unit!103233)

(assert (=> b!4567171 (= lt!1735960 call!318679)))

(assert (=> b!4567171 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) lambda!181081)))

(declare-fun lt!1735963 () Unit!103233)

(assert (=> b!4567171 (= lt!1735963 lt!1735960)))

(assert (=> b!4567171 (forall!10464 (toList!4520 lt!1735944) lambda!181082)))

(declare-fun lt!1735952 () Unit!103233)

(declare-fun Unit!103364 () Unit!103233)

(assert (=> b!4567171 (= lt!1735952 Unit!103364)))

(declare-fun call!318678 () Bool)

(assert (=> b!4567171 call!318678))

(declare-fun lt!1735958 () Unit!103233)

(declare-fun Unit!103365 () Unit!103233)

(assert (=> b!4567171 (= lt!1735958 Unit!103365)))

(declare-fun lt!1735948 () Unit!103233)

(declare-fun Unit!103366 () Unit!103233)

(assert (=> b!4567171 (= lt!1735948 Unit!103366)))

(declare-fun lt!1735965 () Unit!103233)

(assert (=> b!4567171 (= lt!1735965 (forallContained!2724 (toList!4520 lt!1735944) lambda!181082 (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))))))

(assert (=> b!4567171 (contains!13773 lt!1735944 (_1!29023 (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))))))

(declare-fun lt!1735964 () Unit!103233)

(declare-fun Unit!103367 () Unit!103233)

(assert (=> b!4567171 (= lt!1735964 Unit!103367)))

(assert (=> b!4567171 (contains!13773 lt!1735962 (_1!29023 (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))))))

(declare-fun lt!1735959 () Unit!103233)

(declare-fun Unit!103368 () Unit!103233)

(assert (=> b!4567171 (= lt!1735959 Unit!103368)))

(assert (=> b!4567171 (forall!10464 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) lambda!181082)))

(declare-fun lt!1735946 () Unit!103233)

(declare-fun Unit!103369 () Unit!103233)

(assert (=> b!4567171 (= lt!1735946 Unit!103369)))

(declare-fun call!318680 () Bool)

(assert (=> b!4567171 call!318680))

(declare-fun lt!1735955 () Unit!103233)

(declare-fun Unit!103370 () Unit!103233)

(assert (=> b!4567171 (= lt!1735955 Unit!103370)))

(declare-fun lt!1735945 () Unit!103233)

(declare-fun Unit!103371 () Unit!103233)

(assert (=> b!4567171 (= lt!1735945 Unit!103371)))

(declare-fun lt!1735950 () Unit!103233)

(assert (=> b!4567171 (= lt!1735950 (addForallContainsKeyThenBeforeAdding!399 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735962 (_1!29023 (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))) (_2!29023 (h!56825 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))))

(assert (=> b!4567171 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) lambda!181082)))

(declare-fun lt!1735954 () Unit!103233)

(assert (=> b!4567171 (= lt!1735954 lt!1735950)))

(assert (=> b!4567171 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) lambda!181082)))

(declare-fun lt!1735949 () Unit!103233)

(declare-fun Unit!103372 () Unit!103233)

(assert (=> b!4567171 (= lt!1735949 Unit!103372)))

(declare-fun res!1906539 () Bool)

(assert (=> b!4567171 (= res!1906539 (forall!10464 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) lambda!181082))))

(declare-fun e!2847276 () Bool)

(assert (=> b!4567171 (=> (not res!1906539) (not e!2847276))))

(assert (=> b!4567171 e!2847276))

(declare-fun lt!1735961 () Unit!103233)

(declare-fun Unit!103373 () Unit!103233)

(assert (=> b!4567171 (= lt!1735961 Unit!103373)))

(declare-fun b!4567172 () Bool)

(assert (=> b!4567172 (= e!2847276 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) lambda!181082))))

(declare-fun e!2847277 () Bool)

(assert (=> d!1423794 e!2847277))

(declare-fun res!1906540 () Bool)

(assert (=> d!1423794 (=> (not res!1906540) (not e!2847277))))

(assert (=> d!1423794 (= res!1906540 (forall!10464 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) lambda!181083))))

(assert (=> d!1423794 (= lt!1735956 e!2847278)))

(declare-fun c!781121 () Bool)

(assert (=> d!1423794 (= c!781121 ((_ is Nil!50904) (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))

(assert (=> d!1423794 (noDuplicateKeys!1256 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423794 (= (addToMapMapFromBucket!769 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) lt!1735956)))

(declare-fun b!4567173 () Bool)

(assert (=> b!4567173 (= e!2847277 (invariantList!1083 (toList!4520 lt!1735956)))))

(assert (=> b!4567174 (= e!2847278 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun lt!1735953 () Unit!103233)

(assert (=> b!4567174 (= lt!1735953 call!318679)))

(assert (=> b!4567174 call!318680))

(declare-fun lt!1735951 () Unit!103233)

(assert (=> b!4567174 (= lt!1735951 lt!1735953)))

(assert (=> b!4567174 call!318678))

(declare-fun lt!1735947 () Unit!103233)

(declare-fun Unit!103374 () Unit!103233)

(assert (=> b!4567174 (= lt!1735947 Unit!103374)))

(declare-fun bm!318673 () Bool)

(assert (=> bm!318673 (= call!318680 (forall!10464 (ite c!781121 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (toList!4520 lt!1735944)) (ite c!781121 lambda!181080 lambda!181082)))))

(declare-fun b!4567175 () Bool)

(declare-fun res!1906541 () Bool)

(assert (=> b!4567175 (=> (not res!1906541) (not e!2847277))))

(assert (=> b!4567175 (= res!1906541 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) lambda!181083))))

(declare-fun bm!318674 () Bool)

(assert (=> bm!318674 (= call!318679 (lemmaContainsAllItsOwnKeys!399 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))))))

(declare-fun bm!318675 () Bool)

(assert (=> bm!318675 (= call!318678 (forall!10464 (ite c!781121 (toList!4520 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (t!358006 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477)))))) (ite c!781121 lambda!181080 lambda!181082)))))

(assert (= (and d!1423794 c!781121) b!4567174))

(assert (= (and d!1423794 (not c!781121)) b!4567171))

(assert (= (and b!4567171 res!1906539) b!4567172))

(assert (= (or b!4567174 b!4567171) bm!318675))

(assert (= (or b!4567174 b!4567171) bm!318673))

(assert (= (or b!4567174 b!4567171) bm!318674))

(assert (= (and d!1423794 res!1906540) b!4567175))

(assert (= (and b!4567175 res!1906541) b!4567173))

(declare-fun m!5362455 () Bool)

(assert (=> bm!318673 m!5362455))

(declare-fun m!5362457 () Bool)

(assert (=> b!4567175 m!5362457))

(declare-fun m!5362459 () Bool)

(assert (=> d!1423794 m!5362459))

(declare-fun m!5362461 () Bool)

(assert (=> d!1423794 m!5362461))

(declare-fun m!5362463 () Bool)

(assert (=> b!4567171 m!5362463))

(declare-fun m!5362465 () Bool)

(assert (=> b!4567171 m!5362465))

(declare-fun m!5362467 () Bool)

(assert (=> b!4567171 m!5362467))

(declare-fun m!5362469 () Bool)

(assert (=> b!4567171 m!5362469))

(declare-fun m!5362471 () Bool)

(assert (=> b!4567171 m!5362471))

(declare-fun m!5362473 () Bool)

(assert (=> b!4567171 m!5362473))

(assert (=> b!4567171 m!5361229))

(declare-fun m!5362475 () Bool)

(assert (=> b!4567171 m!5362475))

(assert (=> b!4567171 m!5361229))

(assert (=> b!4567171 m!5362467))

(declare-fun m!5362477 () Bool)

(assert (=> b!4567171 m!5362477))

(declare-fun m!5362479 () Bool)

(assert (=> b!4567171 m!5362479))

(declare-fun m!5362481 () Bool)

(assert (=> b!4567171 m!5362481))

(assert (=> b!4567171 m!5362481))

(assert (=> b!4567171 m!5362477))

(declare-fun m!5362483 () Bool)

(assert (=> b!4567173 m!5362483))

(declare-fun m!5362485 () Bool)

(assert (=> bm!318675 m!5362485))

(assert (=> b!4567172 m!5362477))

(assert (=> bm!318674 m!5361229))

(declare-fun m!5362489 () Bool)

(assert (=> bm!318674 m!5362489))

(assert (=> b!4566377 d!1423794))

(declare-fun bs!947045 () Bool)

(declare-fun d!1423802 () Bool)

(assert (= bs!947045 (and d!1423802 d!1423408)))

(declare-fun lambda!181084 () Int)

(assert (=> bs!947045 (= lambda!181084 lambda!180929)))

(declare-fun bs!947046 () Bool)

(assert (= bs!947046 (and d!1423802 start!454364)))

(assert (=> bs!947046 (= lambda!181084 lambda!180879)))

(declare-fun bs!947047 () Bool)

(assert (= bs!947047 (and d!1423802 d!1423334)))

(assert (=> bs!947047 (= lambda!181084 lambda!180910)))

(declare-fun bs!947048 () Bool)

(assert (= bs!947048 (and d!1423802 d!1423378)))

(assert (=> bs!947048 (= lambda!181084 lambda!180921)))

(declare-fun bs!947049 () Bool)

(assert (= bs!947049 (and d!1423802 d!1423308)))

(assert (=> bs!947049 (= lambda!181084 lambda!180904)))

(declare-fun bs!947050 () Bool)

(assert (= bs!947050 (and d!1423802 d!1423372)))

(assert (=> bs!947050 (= lambda!181084 lambda!180920)))

(declare-fun bs!947051 () Bool)

(assert (= bs!947051 (and d!1423802 d!1423404)))

(assert (=> bs!947051 (= lambda!181084 lambda!180926)))

(declare-fun bs!947052 () Bool)

(assert (= bs!947052 (and d!1423802 d!1423386)))

(assert (=> bs!947052 (= lambda!181084 lambda!180924)))

(declare-fun bs!947053 () Bool)

(assert (= bs!947053 (and d!1423802 d!1423496)))

(assert (=> bs!947053 (= lambda!181084 lambda!180982)))

(declare-fun bs!947055 () Bool)

(assert (= bs!947055 (and d!1423802 d!1423410)))

(assert (=> bs!947055 (not (= lambda!181084 lambda!180932))))

(declare-fun bs!947056 () Bool)

(assert (= bs!947056 (and d!1423802 d!1423578)))

(assert (=> bs!947056 (= lambda!181084 lambda!181023)))

(declare-fun bs!947057 () Bool)

(assert (= bs!947057 (and d!1423802 d!1423274)))

(assert (=> bs!947057 (= lambda!181084 lambda!180892)))

(declare-fun bs!947058 () Bool)

(assert (= bs!947058 (and d!1423802 d!1423400)))

(assert (=> bs!947058 (= lambda!181084 lambda!180925)))

(declare-fun bs!947059 () Bool)

(assert (= bs!947059 (and d!1423802 d!1423298)))

(assert (=> bs!947059 (= lambda!181084 lambda!180893)))

(declare-fun lt!1735972 () ListMap!3781)

(assert (=> d!1423802 (invariantList!1083 (toList!4520 lt!1735972))))

(declare-fun e!2847280 () ListMap!3781)

(assert (=> d!1423802 (= lt!1735972 e!2847280)))

(declare-fun c!781123 () Bool)

(assert (=> d!1423802 (= c!781123 ((_ is Cons!50905) (t!358007 (t!358007 (toList!4519 lm!1477)))))))

(assert (=> d!1423802 (forall!10462 (t!358007 (t!358007 (toList!4519 lm!1477))) lambda!181084)))

(assert (=> d!1423802 (= (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477)))) lt!1735972)))

(declare-fun b!4567176 () Bool)

(assert (=> b!4567176 (= e!2847280 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (t!358007 (t!358007 (toList!4519 lm!1477))))) (extractMap!1312 (t!358007 (t!358007 (t!358007 (toList!4519 lm!1477)))))))))

(declare-fun b!4567177 () Bool)

(assert (=> b!4567177 (= e!2847280 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423802 c!781123) b!4567176))

(assert (= (and d!1423802 (not c!781123)) b!4567177))

(declare-fun m!5362497 () Bool)

(assert (=> d!1423802 m!5362497))

(declare-fun m!5362499 () Bool)

(assert (=> d!1423802 m!5362499))

(declare-fun m!5362501 () Bool)

(assert (=> b!4567176 m!5362501))

(assert (=> b!4567176 m!5362501))

(declare-fun m!5362503 () Bool)

(assert (=> b!4567176 m!5362503))

(assert (=> b!4566377 d!1423802))

(assert (=> d!1423406 d!1423588))

(assert (=> b!4566380 d!1423522))

(assert (=> b!4566380 d!1423524))

(declare-fun bs!947060 () Bool)

(declare-fun b!4567195 () Bool)

(assert (= bs!947060 (and b!4567195 b!4567171)))

(declare-fun lambda!181085 () Int)

(assert (=> bs!947060 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735962) (= lambda!181085 lambda!181082))))

(declare-fun bs!947061 () Bool)

(assert (= bs!947061 (and b!4567195 b!4566715)))

(assert (=> bs!947061 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181085 lambda!181020))))

(declare-fun bs!947062 () Bool)

(assert (= bs!947062 (and b!4567195 d!1423568)))

(assert (=> bs!947062 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735652) (= lambda!181085 lambda!181022))))

(declare-fun bs!947063 () Bool)

(assert (= bs!947063 (and b!4567195 b!4566718)))

(assert (=> bs!947063 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181085 lambda!181019))))

(assert (=> bs!947061 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735657) (= lambda!181085 lambda!181021))))

(declare-fun bs!947064 () Bool)

(assert (= bs!947064 (and b!4567195 d!1423412)))

(assert (=> bs!947064 (not (= lambda!181085 lambda!180935))))

(declare-fun bs!947065 () Bool)

(assert (= bs!947065 (and b!4567195 b!4566591)))

(assert (=> bs!947065 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181085 lambda!180978))))

(declare-fun bs!947066 () Bool)

(assert (= bs!947066 (and b!4567195 b!4566588)))

(assert (=> bs!947066 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735559) (= lambda!181085 lambda!180980))))

(declare-fun bs!947067 () Bool)

(assert (= bs!947067 (and b!4567195 d!1423794)))

(assert (=> bs!947067 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735956) (= lambda!181085 lambda!181083))))

(assert (=> bs!947060 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181085 lambda!181081))))

(assert (=> bs!947066 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181085 lambda!180979))))

(declare-fun bs!947068 () Bool)

(assert (= bs!947068 (and b!4567195 d!1423486)))

(assert (=> bs!947068 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735554) (= lambda!181085 lambda!180981))))

(declare-fun bs!947069 () Bool)

(assert (= bs!947069 (and b!4567195 b!4567174)))

(assert (=> bs!947069 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181085 lambda!181080))))

(assert (=> b!4567195 true))

(declare-fun bs!947070 () Bool)

(declare-fun b!4567192 () Bool)

(assert (= bs!947070 (and b!4567192 b!4567171)))

(declare-fun lambda!181086 () Int)

(assert (=> bs!947070 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735962) (= lambda!181086 lambda!181082))))

(declare-fun bs!947071 () Bool)

(assert (= bs!947071 (and b!4567192 d!1423568)))

(assert (=> bs!947071 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735652) (= lambda!181086 lambda!181022))))

(declare-fun bs!947072 () Bool)

(assert (= bs!947072 (and b!4567192 b!4566718)))

(assert (=> bs!947072 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181086 lambda!181019))))

(declare-fun bs!947073 () Bool)

(assert (= bs!947073 (and b!4567192 b!4566715)))

(assert (=> bs!947073 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735657) (= lambda!181086 lambda!181021))))

(declare-fun bs!947074 () Bool)

(assert (= bs!947074 (and b!4567192 d!1423412)))

(assert (=> bs!947074 (not (= lambda!181086 lambda!180935))))

(declare-fun bs!947075 () Bool)

(assert (= bs!947075 (and b!4567192 b!4566591)))

(assert (=> bs!947075 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181086 lambda!180978))))

(declare-fun bs!947076 () Bool)

(assert (= bs!947076 (and b!4567192 b!4566588)))

(assert (=> bs!947076 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735559) (= lambda!181086 lambda!180980))))

(declare-fun bs!947077 () Bool)

(assert (= bs!947077 (and b!4567192 d!1423794)))

(assert (=> bs!947077 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735956) (= lambda!181086 lambda!181083))))

(declare-fun bs!947078 () Bool)

(assert (= bs!947078 (and b!4567192 b!4567195)))

(assert (=> bs!947078 (= lambda!181086 lambda!181085)))

(assert (=> bs!947073 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181086 lambda!181020))))

(assert (=> bs!947070 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181086 lambda!181081))))

(assert (=> bs!947076 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181086 lambda!180979))))

(declare-fun bs!947079 () Bool)

(assert (= bs!947079 (and b!4567192 d!1423486)))

(assert (=> bs!947079 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735554) (= lambda!181086 lambda!180981))))

(declare-fun bs!947080 () Bool)

(assert (= bs!947080 (and b!4567192 b!4567174)))

(assert (=> bs!947080 (= (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181086 lambda!181080))))

(assert (=> b!4567192 true))

(declare-fun lambda!181087 () Int)

(declare-fun lt!1735998 () ListMap!3781)

(assert (=> bs!947071 (= (= lt!1735998 lt!1735652) (= lambda!181087 lambda!181022))))

(assert (=> bs!947072 (= (= lt!1735998 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181087 lambda!181019))))

(assert (=> bs!947073 (= (= lt!1735998 lt!1735657) (= lambda!181087 lambda!181021))))

(assert (=> bs!947070 (= (= lt!1735998 lt!1735962) (= lambda!181087 lambda!181082))))

(assert (=> b!4567192 (= (= lt!1735998 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181087 lambda!181086))))

(assert (=> bs!947074 (not (= lambda!181087 lambda!180935))))

(assert (=> bs!947075 (= (= lt!1735998 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181087 lambda!180978))))

(assert (=> bs!947076 (= (= lt!1735998 lt!1735559) (= lambda!181087 lambda!180980))))

(assert (=> bs!947077 (= (= lt!1735998 lt!1735956) (= lambda!181087 lambda!181083))))

(assert (=> bs!947078 (= (= lt!1735998 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181087 lambda!181085))))

(assert (=> bs!947073 (= (= lt!1735998 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181087 lambda!181020))))

(assert (=> bs!947070 (= (= lt!1735998 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181087 lambda!181081))))

(assert (=> bs!947076 (= (= lt!1735998 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181087 lambda!180979))))

(assert (=> bs!947079 (= (= lt!1735998 lt!1735554) (= lambda!181087 lambda!180981))))

(assert (=> bs!947080 (= (= lt!1735998 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181087 lambda!181080))))

(assert (=> b!4567192 true))

(declare-fun bs!947081 () Bool)

(declare-fun d!1423810 () Bool)

(assert (= bs!947081 (and d!1423810 b!4567192)))

(declare-fun lambda!181088 () Int)

(declare-fun lt!1735993 () ListMap!3781)

(assert (=> bs!947081 (= (= lt!1735993 lt!1735998) (= lambda!181088 lambda!181087))))

(declare-fun bs!947082 () Bool)

(assert (= bs!947082 (and d!1423810 d!1423568)))

(assert (=> bs!947082 (= (= lt!1735993 lt!1735652) (= lambda!181088 lambda!181022))))

(declare-fun bs!947083 () Bool)

(assert (= bs!947083 (and d!1423810 b!4566718)))

(assert (=> bs!947083 (= (= lt!1735993 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181088 lambda!181019))))

(declare-fun bs!947084 () Bool)

(assert (= bs!947084 (and d!1423810 b!4566715)))

(assert (=> bs!947084 (= (= lt!1735993 lt!1735657) (= lambda!181088 lambda!181021))))

(declare-fun bs!947085 () Bool)

(assert (= bs!947085 (and d!1423810 b!4567171)))

(assert (=> bs!947085 (= (= lt!1735993 lt!1735962) (= lambda!181088 lambda!181082))))

(assert (=> bs!947081 (= (= lt!1735993 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181088 lambda!181086))))

(declare-fun bs!947086 () Bool)

(assert (= bs!947086 (and d!1423810 d!1423412)))

(assert (=> bs!947086 (not (= lambda!181088 lambda!180935))))

(declare-fun bs!947087 () Bool)

(assert (= bs!947087 (and d!1423810 b!4566591)))

(assert (=> bs!947087 (= (= lt!1735993 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181088 lambda!180978))))

(declare-fun bs!947088 () Bool)

(assert (= bs!947088 (and d!1423810 b!4566588)))

(assert (=> bs!947088 (= (= lt!1735993 lt!1735559) (= lambda!181088 lambda!180980))))

(declare-fun bs!947089 () Bool)

(assert (= bs!947089 (and d!1423810 d!1423794)))

(assert (=> bs!947089 (= (= lt!1735993 lt!1735956) (= lambda!181088 lambda!181083))))

(declare-fun bs!947090 () Bool)

(assert (= bs!947090 (and d!1423810 b!4567195)))

(assert (=> bs!947090 (= (= lt!1735993 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181088 lambda!181085))))

(assert (=> bs!947084 (= (= lt!1735993 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181088 lambda!181020))))

(assert (=> bs!947085 (= (= lt!1735993 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181088 lambda!181081))))

(assert (=> bs!947088 (= (= lt!1735993 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181088 lambda!180979))))

(declare-fun bs!947091 () Bool)

(assert (= bs!947091 (and d!1423810 d!1423486)))

(assert (=> bs!947091 (= (= lt!1735993 lt!1735554) (= lambda!181088 lambda!180981))))

(declare-fun bs!947092 () Bool)

(assert (= bs!947092 (and d!1423810 b!4567174)))

(assert (=> bs!947092 (= (= lt!1735993 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181088 lambda!181080))))

(assert (=> d!1423810 true))

(declare-fun e!2847294 () ListMap!3781)

(assert (=> b!4567192 (= e!2847294 lt!1735998)))

(declare-fun lt!1735975 () ListMap!3781)

(assert (=> b!4567192 (= lt!1735975 (+!1679 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))))

(assert (=> b!4567192 (= lt!1735998 (addToMapMapFromBucket!769 (t!358006 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (+!1679 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))))

(declare-fun lt!1735996 () Unit!103233)

(declare-fun call!318683 () Unit!103233)

(assert (=> b!4567192 (= lt!1735996 call!318683)))

(assert (=> b!4567192 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) lambda!181086)))

(declare-fun lt!1735999 () Unit!103233)

(assert (=> b!4567192 (= lt!1735999 lt!1735996)))

(assert (=> b!4567192 (forall!10464 (toList!4520 lt!1735975) lambda!181087)))

(declare-fun lt!1735989 () Unit!103233)

(declare-fun Unit!103376 () Unit!103233)

(assert (=> b!4567192 (= lt!1735989 Unit!103376)))

(declare-fun call!318682 () Bool)

(assert (=> b!4567192 call!318682))

(declare-fun lt!1735994 () Unit!103233)

(declare-fun Unit!103377 () Unit!103233)

(assert (=> b!4567192 (= lt!1735994 Unit!103377)))

(declare-fun lt!1735982 () Unit!103233)

(declare-fun Unit!103378 () Unit!103233)

(assert (=> b!4567192 (= lt!1735982 Unit!103378)))

(declare-fun lt!1736001 () Unit!103233)

(assert (=> b!4567192 (= lt!1736001 (forallContained!2724 (toList!4520 lt!1735975) lambda!181087 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))))

(assert (=> b!4567192 (contains!13773 lt!1735975 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))))

(declare-fun lt!1736000 () Unit!103233)

(declare-fun Unit!103379 () Unit!103233)

(assert (=> b!4567192 (= lt!1736000 Unit!103379)))

(assert (=> b!4567192 (contains!13773 lt!1735998 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))))

(declare-fun lt!1735995 () Unit!103233)

(declare-fun Unit!103380 () Unit!103233)

(assert (=> b!4567192 (= lt!1735995 Unit!103380)))

(assert (=> b!4567192 (forall!10464 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lambda!181087)))

(declare-fun lt!1735979 () Unit!103233)

(declare-fun Unit!103381 () Unit!103233)

(assert (=> b!4567192 (= lt!1735979 Unit!103381)))

(declare-fun call!318684 () Bool)

(assert (=> b!4567192 call!318684))

(declare-fun lt!1735992 () Unit!103233)

(declare-fun Unit!103382 () Unit!103233)

(assert (=> b!4567192 (= lt!1735992 Unit!103382)))

(declare-fun lt!1735976 () Unit!103233)

(declare-fun Unit!103383 () Unit!103233)

(assert (=> b!4567192 (= lt!1735976 Unit!103383)))

(declare-fun lt!1735984 () Unit!103233)

(assert (=> b!4567192 (= lt!1735984 (addForallContainsKeyThenBeforeAdding!399 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1735998 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))) (_2!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))))

(assert (=> b!4567192 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) lambda!181087)))

(declare-fun lt!1735991 () Unit!103233)

(assert (=> b!4567192 (= lt!1735991 lt!1735984)))

(assert (=> b!4567192 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) lambda!181087)))

(declare-fun lt!1735983 () Unit!103233)

(declare-fun Unit!103384 () Unit!103233)

(assert (=> b!4567192 (= lt!1735983 Unit!103384)))

(declare-fun res!1906549 () Bool)

(assert (=> b!4567192 (= res!1906549 (forall!10464 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lambda!181087))))

(declare-fun e!2847289 () Bool)

(assert (=> b!4567192 (=> (not res!1906549) (not e!2847289))))

(assert (=> b!4567192 e!2847289))

(declare-fun lt!1735997 () Unit!103233)

(declare-fun Unit!103385 () Unit!103233)

(assert (=> b!4567192 (= lt!1735997 Unit!103385)))

(declare-fun b!4567193 () Bool)

(assert (=> b!4567193 (= e!2847289 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) lambda!181087))))

(declare-fun e!2847291 () Bool)

(assert (=> d!1423810 e!2847291))

(declare-fun res!1906551 () Bool)

(assert (=> d!1423810 (=> (not res!1906551) (not e!2847291))))

(assert (=> d!1423810 (= res!1906551 (forall!10464 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lambda!181088))))

(assert (=> d!1423810 (= lt!1735993 e!2847294)))

(declare-fun c!781126 () Bool)

(assert (=> d!1423810 (= c!781126 ((_ is Nil!50904) (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))

(assert (=> d!1423810 (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))

(assert (=> d!1423810 (= (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) lt!1735993)))

(declare-fun b!4567194 () Bool)

(assert (=> b!4567194 (= e!2847291 (invariantList!1083 (toList!4520 lt!1735993)))))

(assert (=> b!4567195 (= e!2847294 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))

(declare-fun lt!1735990 () Unit!103233)

(assert (=> b!4567195 (= lt!1735990 call!318683)))

(assert (=> b!4567195 call!318684))

(declare-fun lt!1735986 () Unit!103233)

(assert (=> b!4567195 (= lt!1735986 lt!1735990)))

(assert (=> b!4567195 call!318682))

(declare-fun lt!1735981 () Unit!103233)

(declare-fun Unit!103386 () Unit!103233)

(assert (=> b!4567195 (= lt!1735981 Unit!103386)))

(declare-fun bm!318677 () Bool)

(assert (=> bm!318677 (= call!318684 (forall!10464 (ite c!781126 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (toList!4520 lt!1735975)) (ite c!781126 lambda!181085 lambda!181087)))))

(declare-fun b!4567196 () Bool)

(declare-fun res!1906552 () Bool)

(assert (=> b!4567196 (=> (not res!1906552) (not e!2847291))))

(assert (=> b!4567196 (= res!1906552 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) lambda!181088))))

(declare-fun bm!318678 () Bool)

(assert (=> bm!318678 (= call!318683 (lemmaContainsAllItsOwnKeys!399 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))

(declare-fun bm!318679 () Bool)

(assert (=> bm!318679 (= call!318682 (forall!10464 (ite c!781126 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (t!358006 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))) (ite c!781126 lambda!181085 lambda!181087)))))

(assert (= (and d!1423810 c!781126) b!4567195))

(assert (= (and d!1423810 (not c!781126)) b!4567192))

(assert (= (and b!4567192 res!1906549) b!4567193))

(assert (= (or b!4567195 b!4567192) bm!318679))

(assert (= (or b!4567195 b!4567192) bm!318677))

(assert (= (or b!4567195 b!4567192) bm!318678))

(assert (= (and d!1423810 res!1906551) b!4567196))

(assert (= (and b!4567196 res!1906552) b!4567194))

(declare-fun m!5362527 () Bool)

(assert (=> bm!318677 m!5362527))

(declare-fun m!5362529 () Bool)

(assert (=> b!4567196 m!5362529))

(declare-fun m!5362531 () Bool)

(assert (=> d!1423810 m!5362531))

(declare-fun m!5362533 () Bool)

(assert (=> d!1423810 m!5362533))

(declare-fun m!5362535 () Bool)

(assert (=> b!4567192 m!5362535))

(declare-fun m!5362537 () Bool)

(assert (=> b!4567192 m!5362537))

(declare-fun m!5362539 () Bool)

(assert (=> b!4567192 m!5362539))

(declare-fun m!5362541 () Bool)

(assert (=> b!4567192 m!5362541))

(declare-fun m!5362543 () Bool)

(assert (=> b!4567192 m!5362543))

(declare-fun m!5362545 () Bool)

(assert (=> b!4567192 m!5362545))

(assert (=> b!4567192 m!5360915))

(declare-fun m!5362547 () Bool)

(assert (=> b!4567192 m!5362547))

(assert (=> b!4567192 m!5360915))

(assert (=> b!4567192 m!5362539))

(declare-fun m!5362549 () Bool)

(assert (=> b!4567192 m!5362549))

(declare-fun m!5362551 () Bool)

(assert (=> b!4567192 m!5362551))

(declare-fun m!5362553 () Bool)

(assert (=> b!4567192 m!5362553))

(assert (=> b!4567192 m!5362553))

(assert (=> b!4567192 m!5362549))

(declare-fun m!5362555 () Bool)

(assert (=> b!4567194 m!5362555))

(declare-fun m!5362557 () Bool)

(assert (=> bm!318679 m!5362557))

(assert (=> b!4567193 m!5362549))

(assert (=> bm!318678 m!5360915))

(declare-fun m!5362559 () Bool)

(assert (=> bm!318678 m!5362559))

(assert (=> b!4566156 d!1423810))

(declare-fun bs!947093 () Bool)

(declare-fun d!1423816 () Bool)

(assert (= bs!947093 (and d!1423816 d!1423408)))

(declare-fun lambda!181089 () Int)

(assert (=> bs!947093 (= lambda!181089 lambda!180929)))

(declare-fun bs!947094 () Bool)

(assert (= bs!947094 (and d!1423816 start!454364)))

(assert (=> bs!947094 (= lambda!181089 lambda!180879)))

(declare-fun bs!947095 () Bool)

(assert (= bs!947095 (and d!1423816 d!1423334)))

(assert (=> bs!947095 (= lambda!181089 lambda!180910)))

(declare-fun bs!947096 () Bool)

(assert (= bs!947096 (and d!1423816 d!1423378)))

(assert (=> bs!947096 (= lambda!181089 lambda!180921)))

(declare-fun bs!947097 () Bool)

(assert (= bs!947097 (and d!1423816 d!1423308)))

(assert (=> bs!947097 (= lambda!181089 lambda!180904)))

(declare-fun bs!947098 () Bool)

(assert (= bs!947098 (and d!1423816 d!1423372)))

(assert (=> bs!947098 (= lambda!181089 lambda!180920)))

(declare-fun bs!947099 () Bool)

(assert (= bs!947099 (and d!1423816 d!1423404)))

(assert (=> bs!947099 (= lambda!181089 lambda!180926)))

(declare-fun bs!947100 () Bool)

(assert (= bs!947100 (and d!1423816 d!1423386)))

(assert (=> bs!947100 (= lambda!181089 lambda!180924)))

(declare-fun bs!947101 () Bool)

(assert (= bs!947101 (and d!1423816 d!1423802)))

(assert (=> bs!947101 (= lambda!181089 lambda!181084)))

(declare-fun bs!947102 () Bool)

(assert (= bs!947102 (and d!1423816 d!1423496)))

(assert (=> bs!947102 (= lambda!181089 lambda!180982)))

(declare-fun bs!947103 () Bool)

(assert (= bs!947103 (and d!1423816 d!1423410)))

(assert (=> bs!947103 (not (= lambda!181089 lambda!180932))))

(declare-fun bs!947104 () Bool)

(assert (= bs!947104 (and d!1423816 d!1423578)))

(assert (=> bs!947104 (= lambda!181089 lambda!181023)))

(declare-fun bs!947106 () Bool)

(assert (= bs!947106 (and d!1423816 d!1423274)))

(assert (=> bs!947106 (= lambda!181089 lambda!180892)))

(declare-fun bs!947107 () Bool)

(assert (= bs!947107 (and d!1423816 d!1423400)))

(assert (=> bs!947107 (= lambda!181089 lambda!180925)))

(declare-fun bs!947108 () Bool)

(assert (= bs!947108 (and d!1423816 d!1423298)))

(assert (=> bs!947108 (= lambda!181089 lambda!180893)))

(declare-fun lt!1736002 () ListMap!3781)

(assert (=> d!1423816 (invariantList!1083 (toList!4520 lt!1736002))))

(declare-fun e!2847295 () ListMap!3781)

(assert (=> d!1423816 (= lt!1736002 e!2847295)))

(declare-fun c!781128 () Bool)

(assert (=> d!1423816 (= c!781128 ((_ is Cons!50905) (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))

(assert (=> d!1423816 (forall!10462 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))) lambda!181089)))

(assert (=> d!1423816 (= (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) lt!1736002)))

(declare-fun b!4567197 () Bool)

(assert (=> b!4567197 (= e!2847295 (addToMapMapFromBucket!769 (_2!29024 (h!56826 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))))))))

(declare-fun b!4567198 () Bool)

(assert (=> b!4567198 (= e!2847295 (ListMap!3782 Nil!50904))))

(assert (= (and d!1423816 c!781128) b!4567197))

(assert (= (and d!1423816 (not c!781128)) b!4567198))

(declare-fun m!5362561 () Bool)

(assert (=> d!1423816 m!5362561))

(declare-fun m!5362565 () Bool)

(assert (=> d!1423816 m!5362565))

(declare-fun m!5362567 () Bool)

(assert (=> b!4567197 m!5362567))

(assert (=> b!4567197 m!5362567))

(declare-fun m!5362571 () Bool)

(assert (=> b!4567197 m!5362571))

(assert (=> b!4566156 d!1423816))

(declare-fun bs!947109 () Bool)

(declare-fun b!4567206 () Bool)

(assert (= bs!947109 (and b!4567206 b!4567192)))

(declare-fun lambda!181090 () Int)

(assert (=> bs!947109 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735998) (= lambda!181090 lambda!181087))))

(declare-fun bs!947110 () Bool)

(assert (= bs!947110 (and b!4567206 d!1423568)))

(assert (=> bs!947110 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735652) (= lambda!181090 lambda!181022))))

(declare-fun bs!947111 () Bool)

(assert (= bs!947111 (and b!4567206 b!4566718)))

(assert (=> bs!947111 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181090 lambda!181019))))

(declare-fun bs!947112 () Bool)

(assert (= bs!947112 (and b!4567206 b!4566715)))

(assert (=> bs!947112 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735657) (= lambda!181090 lambda!181021))))

(declare-fun bs!947114 () Bool)

(assert (= bs!947114 (and b!4567206 b!4567171)))

(assert (=> bs!947114 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735962) (= lambda!181090 lambda!181082))))

(assert (=> bs!947109 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181090 lambda!181086))))

(declare-fun bs!947115 () Bool)

(assert (= bs!947115 (and b!4567206 d!1423412)))

(assert (=> bs!947115 (not (= lambda!181090 lambda!180935))))

(declare-fun bs!947116 () Bool)

(assert (= bs!947116 (and b!4567206 b!4566591)))

(assert (=> bs!947116 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181090 lambda!180978))))

(declare-fun bs!947117 () Bool)

(assert (= bs!947117 (and b!4567206 b!4566588)))

(assert (=> bs!947117 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735559) (= lambda!181090 lambda!180980))))

(declare-fun bs!947118 () Bool)

(assert (= bs!947118 (and b!4567206 d!1423794)))

(assert (=> bs!947118 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735956) (= lambda!181090 lambda!181083))))

(declare-fun bs!947119 () Bool)

(assert (= bs!947119 (and b!4567206 b!4567195)))

(assert (=> bs!947119 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181090 lambda!181085))))

(assert (=> bs!947112 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181090 lambda!181020))))

(assert (=> bs!947114 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181090 lambda!181081))))

(declare-fun bs!947121 () Bool)

(assert (= bs!947121 (and b!4567206 d!1423810)))

(assert (=> bs!947121 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735993) (= lambda!181090 lambda!181088))))

(assert (=> bs!947117 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181090 lambda!180979))))

(declare-fun bs!947122 () Bool)

(assert (= bs!947122 (and b!4567206 d!1423486)))

(assert (=> bs!947122 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735554) (= lambda!181090 lambda!180981))))

(declare-fun bs!947123 () Bool)

(assert (= bs!947123 (and b!4567206 b!4567174)))

(assert (=> bs!947123 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181090 lambda!181080))))

(assert (=> b!4567206 true))

(declare-fun bs!947124 () Bool)

(declare-fun b!4567203 () Bool)

(assert (= bs!947124 (and b!4567203 b!4567192)))

(declare-fun lambda!181091 () Int)

(assert (=> bs!947124 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735998) (= lambda!181091 lambda!181087))))

(declare-fun bs!947125 () Bool)

(assert (= bs!947125 (and b!4567203 d!1423568)))

(assert (=> bs!947125 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735652) (= lambda!181091 lambda!181022))))

(declare-fun bs!947126 () Bool)

(assert (= bs!947126 (and b!4567203 b!4567206)))

(assert (=> bs!947126 (= lambda!181091 lambda!181090)))

(declare-fun bs!947127 () Bool)

(assert (= bs!947127 (and b!4567203 b!4566718)))

(assert (=> bs!947127 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181091 lambda!181019))))

(declare-fun bs!947128 () Bool)

(assert (= bs!947128 (and b!4567203 b!4566715)))

(assert (=> bs!947128 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735657) (= lambda!181091 lambda!181021))))

(declare-fun bs!947129 () Bool)

(assert (= bs!947129 (and b!4567203 b!4567171)))

(assert (=> bs!947129 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735962) (= lambda!181091 lambda!181082))))

(assert (=> bs!947124 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181091 lambda!181086))))

(declare-fun bs!947130 () Bool)

(assert (= bs!947130 (and b!4567203 d!1423412)))

(assert (=> bs!947130 (not (= lambda!181091 lambda!180935))))

(declare-fun bs!947131 () Bool)

(assert (= bs!947131 (and b!4567203 b!4566591)))

(assert (=> bs!947131 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181091 lambda!180978))))

(declare-fun bs!947133 () Bool)

(assert (= bs!947133 (and b!4567203 b!4566588)))

(assert (=> bs!947133 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735559) (= lambda!181091 lambda!180980))))

(declare-fun bs!947134 () Bool)

(assert (= bs!947134 (and b!4567203 d!1423794)))

(assert (=> bs!947134 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735956) (= lambda!181091 lambda!181083))))

(declare-fun bs!947135 () Bool)

(assert (= bs!947135 (and b!4567203 b!4567195)))

(assert (=> bs!947135 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181091 lambda!181085))))

(assert (=> bs!947128 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181091 lambda!181020))))

(assert (=> bs!947129 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181091 lambda!181081))))

(declare-fun bs!947136 () Bool)

(assert (= bs!947136 (and b!4567203 d!1423810)))

(assert (=> bs!947136 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735993) (= lambda!181091 lambda!181088))))

(assert (=> bs!947133 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181091 lambda!180979))))

(declare-fun bs!947137 () Bool)

(assert (= bs!947137 (and b!4567203 d!1423486)))

(assert (=> bs!947137 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1735554) (= lambda!181091 lambda!180981))))

(declare-fun bs!947138 () Bool)

(assert (= bs!947138 (and b!4567203 b!4567174)))

(assert (=> bs!947138 (= (= (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181091 lambda!181080))))

(assert (=> b!4567203 true))

(declare-fun lt!1736020 () ListMap!3781)

(declare-fun lambda!181092 () Int)

(assert (=> b!4567203 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (= lambda!181092 lambda!181091))))

(assert (=> bs!947124 (= (= lt!1736020 lt!1735998) (= lambda!181092 lambda!181087))))

(assert (=> bs!947125 (= (= lt!1736020 lt!1735652) (= lambda!181092 lambda!181022))))

(assert (=> bs!947126 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (= lambda!181092 lambda!181090))))

(assert (=> bs!947127 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181092 lambda!181019))))

(assert (=> bs!947128 (= (= lt!1736020 lt!1735657) (= lambda!181092 lambda!181021))))

(assert (=> bs!947129 (= (= lt!1736020 lt!1735962) (= lambda!181092 lambda!181082))))

(assert (=> bs!947124 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181092 lambda!181086))))

(assert (=> bs!947130 (not (= lambda!181092 lambda!180935))))

(assert (=> bs!947131 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181092 lambda!180978))))

(assert (=> bs!947133 (= (= lt!1736020 lt!1735559) (= lambda!181092 lambda!180980))))

(assert (=> bs!947134 (= (= lt!1736020 lt!1735956) (= lambda!181092 lambda!181083))))

(assert (=> bs!947135 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181092 lambda!181085))))

(assert (=> bs!947128 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181092 lambda!181020))))

(assert (=> bs!947129 (= (= lt!1736020 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181092 lambda!181081))))

(assert (=> bs!947136 (= (= lt!1736020 lt!1735993) (= lambda!181092 lambda!181088))))

(assert (=> bs!947133 (= (= lt!1736020 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181092 lambda!180979))))

(assert (=> bs!947137 (= (= lt!1736020 lt!1735554) (= lambda!181092 lambda!180981))))

(assert (=> bs!947138 (= (= lt!1736020 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181092 lambda!181080))))

(assert (=> b!4567203 true))

(declare-fun bs!947139 () Bool)

(declare-fun d!1423822 () Bool)

(assert (= bs!947139 (and d!1423822 b!4567203)))

(declare-fun lambda!181093 () Int)

(declare-fun lt!1736015 () ListMap!3781)

(assert (=> bs!947139 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (= lambda!181093 lambda!181091))))

(declare-fun bs!947140 () Bool)

(assert (= bs!947140 (and d!1423822 b!4567192)))

(assert (=> bs!947140 (= (= lt!1736015 lt!1735998) (= lambda!181093 lambda!181087))))

(declare-fun bs!947141 () Bool)

(assert (= bs!947141 (and d!1423822 d!1423568)))

(assert (=> bs!947141 (= (= lt!1736015 lt!1735652) (= lambda!181093 lambda!181022))))

(declare-fun bs!947142 () Bool)

(assert (= bs!947142 (and d!1423822 b!4567206)))

(assert (=> bs!947142 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (= lambda!181093 lambda!181090))))

(declare-fun bs!947143 () Bool)

(assert (= bs!947143 (and d!1423822 b!4566715)))

(assert (=> bs!947143 (= (= lt!1736015 lt!1735657) (= lambda!181093 lambda!181021))))

(declare-fun bs!947144 () Bool)

(assert (= bs!947144 (and d!1423822 b!4567171)))

(assert (=> bs!947144 (= (= lt!1736015 lt!1735962) (= lambda!181093 lambda!181082))))

(assert (=> bs!947140 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181093 lambda!181086))))

(declare-fun bs!947145 () Bool)

(assert (= bs!947145 (and d!1423822 d!1423412)))

(assert (=> bs!947145 (not (= lambda!181093 lambda!180935))))

(declare-fun bs!947146 () Bool)

(assert (= bs!947146 (and d!1423822 b!4566591)))

(assert (=> bs!947146 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181093 lambda!180978))))

(declare-fun bs!947147 () Bool)

(assert (= bs!947147 (and d!1423822 b!4566588)))

(assert (=> bs!947147 (= (= lt!1736015 lt!1735559) (= lambda!181093 lambda!180980))))

(declare-fun bs!947148 () Bool)

(assert (= bs!947148 (and d!1423822 d!1423794)))

(assert (=> bs!947148 (= (= lt!1736015 lt!1735956) (= lambda!181093 lambda!181083))))

(declare-fun bs!947149 () Bool)

(assert (= bs!947149 (and d!1423822 b!4567195)))

(assert (=> bs!947149 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))) (= lambda!181093 lambda!181085))))

(assert (=> bs!947143 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181093 lambda!181020))))

(assert (=> bs!947144 (= (= lt!1736015 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181093 lambda!181081))))

(declare-fun bs!947150 () Bool)

(assert (= bs!947150 (and d!1423822 d!1423810)))

(assert (=> bs!947150 (= (= lt!1736015 lt!1735993) (= lambda!181093 lambda!181088))))

(assert (=> bs!947147 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 (+!1678 lt!1735178 lt!1735192))))) (= lambda!181093 lambda!180979))))

(declare-fun bs!947151 () Bool)

(assert (= bs!947151 (and d!1423822 d!1423486)))

(assert (=> bs!947151 (= (= lt!1736015 lt!1735554) (= lambda!181093 lambda!180981))))

(declare-fun bs!947152 () Bool)

(assert (= bs!947152 (and d!1423822 b!4567174)))

(assert (=> bs!947152 (= (= lt!1736015 (extractMap!1312 (t!358007 (t!358007 (toList!4519 lm!1477))))) (= lambda!181093 lambda!181080))))

(assert (=> bs!947139 (= (= lt!1736015 lt!1736020) (= lambda!181093 lambda!181092))))

(declare-fun bs!947153 () Bool)

(assert (= bs!947153 (and d!1423822 b!4566718)))

(assert (=> bs!947153 (= (= lt!1736015 (extractMap!1312 (t!358007 (toList!4519 lt!1735178)))) (= lambda!181093 lambda!181019))))

(assert (=> d!1423822 true))

(declare-fun e!2847302 () ListMap!3781)

(assert (=> b!4567203 (= e!2847302 lt!1736020)))

(declare-fun lt!1736003 () ListMap!3781)

(assert (=> b!4567203 (= lt!1736003 (+!1679 (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477))))))))

(assert (=> b!4567203 (= lt!1736020 (addToMapMapFromBucket!769 (t!358006 (_2!29024 (h!56826 (toList!4519 lm!1477)))) (+!1679 (extractMap!1312 (t!358007 (toList!4519 lm!1477))) (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))))

(declare-fun lt!1736018 () Unit!103233)

(declare-fun call!318686 () Unit!103233)

(assert (=> b!4567203 (= lt!1736018 call!318686)))

(assert (=> b!4567203 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!181091)))

(declare-fun lt!1736021 () Unit!103233)

(assert (=> b!4567203 (= lt!1736021 lt!1736018)))

(assert (=> b!4567203 (forall!10464 (toList!4520 lt!1736003) lambda!181092)))

(declare-fun lt!1736011 () Unit!103233)

(declare-fun Unit!103397 () Unit!103233)

(assert (=> b!4567203 (= lt!1736011 Unit!103397)))

(declare-fun call!318685 () Bool)

(assert (=> b!4567203 call!318685))

(declare-fun lt!1736016 () Unit!103233)

(declare-fun Unit!103399 () Unit!103233)

(assert (=> b!4567203 (= lt!1736016 Unit!103399)))

(declare-fun lt!1736007 () Unit!103233)

(declare-fun Unit!103400 () Unit!103233)

(assert (=> b!4567203 (= lt!1736007 Unit!103400)))

(declare-fun lt!1736023 () Unit!103233)

(assert (=> b!4567203 (= lt!1736023 (forallContained!2724 (toList!4520 lt!1736003) lambda!181092 (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477))))))))

(assert (=> b!4567203 (contains!13773 lt!1736003 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477))))))))

(declare-fun lt!1736022 () Unit!103233)

(declare-fun Unit!103401 () Unit!103233)

(assert (=> b!4567203 (= lt!1736022 Unit!103401)))

(assert (=> b!4567203 (contains!13773 lt!1736020 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477))))))))

(declare-fun lt!1736017 () Unit!103233)

(declare-fun Unit!103402 () Unit!103233)

(assert (=> b!4567203 (= lt!1736017 Unit!103402)))

(assert (=> b!4567203 (forall!10464 (_2!29024 (h!56826 (toList!4519 lm!1477))) lambda!181092)))

(declare-fun lt!1736005 () Unit!103233)

(declare-fun Unit!103403 () Unit!103233)

(assert (=> b!4567203 (= lt!1736005 Unit!103403)))

(declare-fun call!318687 () Bool)

(assert (=> b!4567203 call!318687))

(declare-fun lt!1736014 () Unit!103233)

(declare-fun Unit!103404 () Unit!103233)

(assert (=> b!4567203 (= lt!1736014 Unit!103404)))

(declare-fun lt!1736004 () Unit!103233)

(declare-fun Unit!103405 () Unit!103233)

(assert (=> b!4567203 (= lt!1736004 Unit!103405)))

(declare-fun lt!1736009 () Unit!103233)

(assert (=> b!4567203 (= lt!1736009 (addForallContainsKeyThenBeforeAdding!399 (extractMap!1312 (t!358007 (toList!4519 lm!1477))) lt!1736020 (_1!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477))))) (_2!29023 (h!56825 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))))

(assert (=> b!4567203 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!181092)))

(declare-fun lt!1736013 () Unit!103233)

(assert (=> b!4567203 (= lt!1736013 lt!1736009)))

(assert (=> b!4567203 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!181092)))

(declare-fun lt!1736008 () Unit!103233)

(declare-fun Unit!103406 () Unit!103233)

(assert (=> b!4567203 (= lt!1736008 Unit!103406)))

(declare-fun res!1906557 () Bool)

(assert (=> b!4567203 (= res!1906557 (forall!10464 (_2!29024 (h!56826 (toList!4519 lm!1477))) lambda!181092))))

(declare-fun e!2847300 () Bool)

(assert (=> b!4567203 (=> (not res!1906557) (not e!2847300))))

(assert (=> b!4567203 e!2847300))

(declare-fun lt!1736019 () Unit!103233)

(declare-fun Unit!103407 () Unit!103233)

(assert (=> b!4567203 (= lt!1736019 Unit!103407)))

(declare-fun b!4567204 () Bool)

(assert (=> b!4567204 (= e!2847300 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!181092))))

(declare-fun e!2847301 () Bool)

(assert (=> d!1423822 e!2847301))

(declare-fun res!1906558 () Bool)

(assert (=> d!1423822 (=> (not res!1906558) (not e!2847301))))

(assert (=> d!1423822 (= res!1906558 (forall!10464 (_2!29024 (h!56826 (toList!4519 lm!1477))) lambda!181093))))

(assert (=> d!1423822 (= lt!1736015 e!2847302)))

(declare-fun c!781129 () Bool)

(assert (=> d!1423822 (= c!781129 ((_ is Nil!50904) (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(assert (=> d!1423822 (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lm!1477))))))

(assert (=> d!1423822 (= (addToMapMapFromBucket!769 (_2!29024 (h!56826 (toList!4519 lm!1477))) (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lt!1736015)))

(declare-fun b!4567205 () Bool)

(assert (=> b!4567205 (= e!2847301 (invariantList!1083 (toList!4520 lt!1736015)))))

(assert (=> b!4567206 (= e!2847302 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))

(declare-fun lt!1736012 () Unit!103233)

(assert (=> b!4567206 (= lt!1736012 call!318686)))

(assert (=> b!4567206 call!318687))

(declare-fun lt!1736010 () Unit!103233)

(assert (=> b!4567206 (= lt!1736010 lt!1736012)))

(assert (=> b!4567206 call!318685))

(declare-fun lt!1736006 () Unit!103233)

(declare-fun Unit!103408 () Unit!103233)

(assert (=> b!4567206 (= lt!1736006 Unit!103408)))

(declare-fun bm!318680 () Bool)

(assert (=> bm!318680 (= call!318687 (forall!10464 (ite c!781129 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (toList!4520 lt!1736003)) (ite c!781129 lambda!181090 lambda!181092)))))

(declare-fun b!4567207 () Bool)

(declare-fun res!1906559 () Bool)

(assert (=> b!4567207 (=> (not res!1906559) (not e!2847301))))

(assert (=> b!4567207 (= res!1906559 (forall!10464 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) lambda!181093))))

(declare-fun bm!318681 () Bool)

(assert (=> bm!318681 (= call!318686 (lemmaContainsAllItsOwnKeys!399 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))))

(declare-fun bm!318682 () Bool)

(assert (=> bm!318682 (= call!318685 (forall!10464 (ite c!781129 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))) (t!358006 (_2!29024 (h!56826 (toList!4519 lm!1477))))) (ite c!781129 lambda!181090 lambda!181092)))))

(assert (= (and d!1423822 c!781129) b!4567206))

(assert (= (and d!1423822 (not c!781129)) b!4567203))

(assert (= (and b!4567203 res!1906557) b!4567204))

(assert (= (or b!4567206 b!4567203) bm!318682))

(assert (= (or b!4567206 b!4567203) bm!318680))

(assert (= (or b!4567206 b!4567203) bm!318681))

(assert (= (and d!1423822 res!1906558) b!4567207))

(assert (= (and b!4567207 res!1906559) b!4567205))

(declare-fun m!5362619 () Bool)

(assert (=> bm!318680 m!5362619))

(declare-fun m!5362621 () Bool)

(assert (=> b!4567207 m!5362621))

(declare-fun m!5362623 () Bool)

(assert (=> d!1423822 m!5362623))

(assert (=> d!1423822 m!5361267))

(declare-fun m!5362627 () Bool)

(assert (=> b!4567203 m!5362627))

(declare-fun m!5362629 () Bool)

(assert (=> b!4567203 m!5362629))

(declare-fun m!5362631 () Bool)

(assert (=> b!4567203 m!5362631))

(declare-fun m!5362633 () Bool)

(assert (=> b!4567203 m!5362633))

(declare-fun m!5362635 () Bool)

(assert (=> b!4567203 m!5362635))

(declare-fun m!5362637 () Bool)

(assert (=> b!4567203 m!5362637))

(assert (=> b!4567203 m!5360731))

(declare-fun m!5362639 () Bool)

(assert (=> b!4567203 m!5362639))

(assert (=> b!4567203 m!5360731))

(assert (=> b!4567203 m!5362631))

(declare-fun m!5362641 () Bool)

(assert (=> b!4567203 m!5362641))

(declare-fun m!5362643 () Bool)

(assert (=> b!4567203 m!5362643))

(declare-fun m!5362645 () Bool)

(assert (=> b!4567203 m!5362645))

(assert (=> b!4567203 m!5362645))

(assert (=> b!4567203 m!5362641))

(declare-fun m!5362647 () Bool)

(assert (=> b!4567205 m!5362647))

(declare-fun m!5362649 () Bool)

(assert (=> bm!318682 m!5362649))

(assert (=> b!4567204 m!5362641))

(assert (=> bm!318681 m!5360731))

(declare-fun m!5362655 () Bool)

(assert (=> bm!318681 m!5362655))

(assert (=> b!4566331 d!1423822))

(assert (=> b!4566331 d!1423404))

(assert (=> d!1423402 d!1423474))

(declare-fun bs!947157 () Bool)

(declare-fun b!4567243 () Bool)

(assert (= bs!947157 (and b!4567243 b!4566503)))

(declare-fun lambda!181094 () Int)

(assert (=> bs!947157 (= (= (t!358006 (toList!4520 lt!1735189)) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181094 lambda!180948))))

(declare-fun bs!947158 () Bool)

(assert (= bs!947158 (and b!4567243 b!4566827)))

(assert (=> bs!947158 (= (= (t!358006 (toList!4520 lt!1735189)) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181094 lambda!181046))))

(declare-fun bs!947159 () Bool)

(assert (= bs!947159 (and b!4567243 b!4566640)))

(assert (=> bs!947159 (= (= (t!358006 (toList!4520 lt!1735189)) (toList!4520 lt!1735189)) (= lambda!181094 lambda!180983))))

(declare-fun bs!947160 () Bool)

(assert (= bs!947160 (and b!4567243 b!4566823)))

(assert (=> bs!947160 (= (= (t!358006 (toList!4520 lt!1735189)) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181094 lambda!181047))))

(declare-fun bs!947161 () Bool)

(assert (= bs!947161 (and b!4567243 b!4566667)))

(assert (=> bs!947161 (= (= (t!358006 (toList!4520 lt!1735189)) (toList!4520 lt!1735234)) (= lambda!181094 lambda!180992))))

(declare-fun bs!947162 () Bool)

(assert (= bs!947162 (and b!4567243 b!4567075)))

(assert (=> bs!947162 (= (= (t!358006 (toList!4520 lt!1735189)) (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194)))) (= lambda!181094 lambda!181072))))

(declare-fun bs!947163 () Bool)

(assert (= bs!947163 (and b!4567243 b!4566824)))

(assert (=> bs!947163 (= (= (t!358006 (toList!4520 lt!1735189)) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181094 lambda!181048))))

(declare-fun bs!947164 () Bool)

(assert (= bs!947164 (and b!4567243 b!4567079)))

(assert (=> bs!947164 (= (= (t!358006 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735194))) (= lambda!181094 lambda!181071))))

(declare-fun bs!947166 () Bool)

(assert (= bs!947166 (and b!4567243 b!4567076)))

(assert (=> bs!947166 (= (= (t!358006 (toList!4520 lt!1735189)) (toList!4520 lt!1735194)) (= lambda!181094 lambda!181073))))

(declare-fun bs!947167 () Bool)

(assert (= bs!947167 (and b!4567243 b!4566496)))

(assert (=> bs!947167 (= (= (t!358006 (toList!4520 lt!1735189)) (toList!4520 lt!1735194)) (= lambda!181094 lambda!180946))))

(assert (=> b!4567243 true))

(declare-fun bs!947168 () Bool)

(declare-fun b!4567239 () Bool)

(assert (= bs!947168 (and b!4567239 b!4566503)))

(declare-fun lambda!181095 () Int)

(assert (=> bs!947168 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181095 lambda!180948))))

(declare-fun bs!947169 () Bool)

(assert (= bs!947169 (and b!4567239 b!4567243)))

(assert (=> bs!947169 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (t!358006 (toList!4520 lt!1735189))) (= lambda!181095 lambda!181094))))

(declare-fun bs!947170 () Bool)

(assert (= bs!947170 (and b!4567239 b!4566827)))

(assert (=> bs!947170 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181095 lambda!181046))))

(declare-fun bs!947171 () Bool)

(assert (= bs!947171 (and b!4567239 b!4566640)))

(assert (=> bs!947171 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (toList!4520 lt!1735189)) (= lambda!181095 lambda!180983))))

(declare-fun bs!947172 () Bool)

(assert (= bs!947172 (and b!4567239 b!4566823)))

(assert (=> bs!947172 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181095 lambda!181047))))

(declare-fun bs!947173 () Bool)

(assert (= bs!947173 (and b!4567239 b!4566667)))

(assert (=> bs!947173 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (toList!4520 lt!1735234)) (= lambda!181095 lambda!180992))))

(declare-fun bs!947174 () Bool)

(assert (= bs!947174 (and b!4567239 b!4567075)))

(assert (=> bs!947174 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194)))) (= lambda!181095 lambda!181072))))

(declare-fun bs!947175 () Bool)

(assert (= bs!947175 (and b!4567239 b!4566824)))

(assert (=> bs!947175 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181095 lambda!181048))))

(declare-fun bs!947176 () Bool)

(assert (= bs!947176 (and b!4567239 b!4567079)))

(assert (=> bs!947176 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (t!358006 (toList!4520 lt!1735194))) (= lambda!181095 lambda!181071))))

(declare-fun bs!947177 () Bool)

(assert (= bs!947177 (and b!4567239 b!4567076)))

(assert (=> bs!947177 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (toList!4520 lt!1735194)) (= lambda!181095 lambda!181073))))

(declare-fun bs!947178 () Bool)

(assert (= bs!947178 (and b!4567239 b!4566496)))

(assert (=> bs!947178 (= (= (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189))) (toList!4520 lt!1735194)) (= lambda!181095 lambda!180946))))

(assert (=> b!4567239 true))

(declare-fun bs!947179 () Bool)

(declare-fun b!4567240 () Bool)

(assert (= bs!947179 (and b!4567240 b!4566503)))

(declare-fun lambda!181096 () Int)

(assert (=> bs!947179 (= (= (toList!4520 lt!1735189) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181096 lambda!180948))))

(declare-fun bs!947180 () Bool)

(assert (= bs!947180 (and b!4567240 b!4567243)))

(assert (=> bs!947180 (= (= (toList!4520 lt!1735189) (t!358006 (toList!4520 lt!1735189))) (= lambda!181096 lambda!181094))))

(declare-fun bs!947182 () Bool)

(assert (= bs!947182 (and b!4567240 b!4566827)))

(assert (=> bs!947182 (= (= (toList!4520 lt!1735189) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477)))))) (= lambda!181096 lambda!181046))))

(declare-fun bs!947183 () Bool)

(assert (= bs!947183 (and b!4567240 b!4566640)))

(assert (=> bs!947183 (= lambda!181096 lambda!180983)))

(declare-fun bs!947184 () Bool)

(assert (= bs!947184 (and b!4567240 b!4566823)))

(assert (=> bs!947184 (= (= (toList!4520 lt!1735189) (Cons!50904 (h!56825 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (t!358006 (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))))) (= lambda!181096 lambda!181047))))

(declare-fun bs!947185 () Bool)

(assert (= bs!947185 (and b!4567240 b!4567239)))

(assert (=> bs!947185 (= (= (toList!4520 lt!1735189) (Cons!50904 (h!56825 (toList!4520 lt!1735189)) (t!358006 (toList!4520 lt!1735189)))) (= lambda!181096 lambda!181095))))

(declare-fun bs!947186 () Bool)

(assert (= bs!947186 (and b!4567240 b!4566667)))

(assert (=> bs!947186 (= (= (toList!4520 lt!1735189) (toList!4520 lt!1735234)) (= lambda!181096 lambda!180992))))

(declare-fun bs!947188 () Bool)

(assert (= bs!947188 (and b!4567240 b!4567075)))

(assert (=> bs!947188 (= (= (toList!4520 lt!1735189) (Cons!50904 (h!56825 (toList!4520 lt!1735194)) (t!358006 (toList!4520 lt!1735194)))) (= lambda!181096 lambda!181072))))

(declare-fun bs!947189 () Bool)

(assert (= bs!947189 (and b!4567240 b!4566824)))

(assert (=> bs!947189 (= (= (toList!4520 lt!1735189) (toList!4520 (extractMap!1312 (t!358007 (toList!4519 lm!1477))))) (= lambda!181096 lambda!181048))))

(declare-fun bs!947190 () Bool)

(assert (= bs!947190 (and b!4567240 b!4567079)))

(assert (=> bs!947190 (= (= (toList!4520 lt!1735189) (t!358006 (toList!4520 lt!1735194))) (= lambda!181096 lambda!181071))))

(declare-fun bs!947191 () Bool)

(assert (= bs!947191 (and b!4567240 b!4567076)))

(assert (=> bs!947191 (= (= (toList!4520 lt!1735189) (toList!4520 lt!1735194)) (= lambda!181096 lambda!181073))))

(declare-fun bs!947192 () Bool)

(assert (= bs!947192 (and b!4567240 b!4566496)))

(assert (=> bs!947192 (= (= (toList!4520 lt!1735189) (toList!4520 lt!1735194)) (= lambda!181096 lambda!180946))))

(assert (=> b!4567240 true))

(declare-fun bs!947193 () Bool)

(declare-fun b!4567242 () Bool)

(assert (= bs!947193 (and b!4567242 b!4566504)))

(declare-fun lambda!181098 () Int)

(assert (=> bs!947193 (= lambda!181098 lambda!180949)))

(declare-fun bs!947194 () Bool)

(assert (= bs!947194 (and b!4567242 b!4566641)))

(assert (=> bs!947194 (= lambda!181098 lambda!180984)))

(declare-fun bs!947196 () Bool)

(assert (= bs!947196 (and b!4567242 b!4566668)))

(assert (=> bs!947196 (= lambda!181098 lambda!180994)))

(declare-fun bs!947197 () Bool)

(assert (= bs!947197 (and b!4567242 b!4566497)))

(assert (=> bs!947197 (= lambda!181098 lambda!180947)))

(declare-fun bs!947199 () Bool)

(assert (= bs!947199 (and b!4567242 b!4566826)))

(assert (=> bs!947199 (= lambda!181098 lambda!181049)))

(declare-fun bs!947201 () Bool)

(assert (= bs!947201 (and b!4567242 b!4567078)))

(assert (=> bs!947201 (= lambda!181098 lambda!181074)))

(declare-fun b!4567236 () Bool)

(declare-fun res!1906583 () Bool)

(declare-fun e!2847329 () Bool)

(assert (=> b!4567236 (=> (not res!1906583) (not e!2847329))))

(declare-fun lt!1736029 () List!51031)

(assert (=> b!4567236 (= res!1906583 (= (length!424 lt!1736029) (length!425 (toList!4520 lt!1735189))))))

(declare-fun b!4567237 () Bool)

(declare-fun e!2847331 () Unit!103233)

(declare-fun Unit!103410 () Unit!103233)

(assert (=> b!4567237 (= e!2847331 Unit!103410)))

(declare-fun b!4567238 () Bool)

(declare-fun e!2847330 () List!51031)

(assert (=> b!4567238 (= e!2847330 Nil!50907)))

(assert (=> b!4567239 (= e!2847330 (Cons!50907 (_1!29023 (h!56825 (toList!4520 lt!1735189))) (getKeysList!531 (t!358006 (toList!4520 lt!1735189)))))))

(declare-fun c!781133 () Bool)

(assert (=> b!4567239 (= c!781133 (containsKey!2014 (t!358006 (toList!4520 lt!1735189)) (_1!29023 (h!56825 (toList!4520 lt!1735189)))))))

(declare-fun lt!1736028 () Unit!103233)

(assert (=> b!4567239 (= lt!1736028 e!2847331)))

(declare-fun c!781135 () Bool)

(assert (=> b!4567239 (= c!781135 (contains!13777 (getKeysList!531 (t!358006 (toList!4520 lt!1735189))) (_1!29023 (h!56825 (toList!4520 lt!1735189)))))))

(declare-fun lt!1736034 () Unit!103233)

(declare-fun e!2847328 () Unit!103233)

(assert (=> b!4567239 (= lt!1736034 e!2847328)))

(declare-fun lt!1736030 () List!51031)

(assert (=> b!4567239 (= lt!1736030 (getKeysList!531 (t!358006 (toList!4520 lt!1735189))))))

(declare-fun lt!1736032 () Unit!103233)

(assert (=> b!4567239 (= lt!1736032 (lemmaForallContainsAddHeadPreserves!204 (t!358006 (toList!4520 lt!1735189)) lt!1736030 (h!56825 (toList!4520 lt!1735189))))))

(assert (=> b!4567239 (forall!10466 lt!1736030 lambda!181095)))

(declare-fun lt!1736031 () Unit!103233)

(assert (=> b!4567239 (= lt!1736031 lt!1736032)))

(declare-fun res!1906584 () Bool)

(assert (=> b!4567240 (=> (not res!1906584) (not e!2847329))))

(assert (=> b!4567240 (= res!1906584 (forall!10466 lt!1736029 lambda!181096))))

(declare-fun b!4567241 () Bool)

(declare-fun Unit!103412 () Unit!103233)

(assert (=> b!4567241 (= e!2847328 Unit!103412)))

(assert (=> b!4567242 (= e!2847329 (= (content!8545 lt!1736029) (content!8545 (map!11223 (toList!4520 lt!1735189) lambda!181098))))))

(assert (=> b!4567243 false))

(declare-fun lt!1736033 () Unit!103233)

(assert (=> b!4567243 (= lt!1736033 (forallContained!2727 (getKeysList!531 (t!358006 (toList!4520 lt!1735189))) lambda!181094 (_1!29023 (h!56825 (toList!4520 lt!1735189)))))))

(declare-fun Unit!103413 () Unit!103233)

(assert (=> b!4567243 (= e!2847328 Unit!103413)))

(declare-fun d!1423856 () Bool)

(assert (=> d!1423856 e!2847329))

(declare-fun res!1906582 () Bool)

(assert (=> d!1423856 (=> (not res!1906582) (not e!2847329))))

(assert (=> d!1423856 (= res!1906582 (noDuplicate!784 lt!1736029))))

(assert (=> d!1423856 (= lt!1736029 e!2847330)))

(declare-fun c!781134 () Bool)

(assert (=> d!1423856 (= c!781134 ((_ is Cons!50904) (toList!4520 lt!1735189)))))

(assert (=> d!1423856 (invariantList!1083 (toList!4520 lt!1735189))))

(assert (=> d!1423856 (= (getKeysList!531 (toList!4520 lt!1735189)) lt!1736029)))

(declare-fun b!4567244 () Bool)

(assert (=> b!4567244 false))

(declare-fun Unit!103414 () Unit!103233)

(assert (=> b!4567244 (= e!2847331 Unit!103414)))

(assert (= (and d!1423856 c!781134) b!4567239))

(assert (= (and d!1423856 (not c!781134)) b!4567238))

(assert (= (and b!4567239 c!781133) b!4567244))

(assert (= (and b!4567239 (not c!781133)) b!4567237))

(assert (= (and b!4567239 c!781135) b!4567243))

(assert (= (and b!4567239 (not c!781135)) b!4567241))

(assert (= (and d!1423856 res!1906582) b!4567236))

(assert (= (and b!4567236 res!1906583) b!4567240))

(assert (= (and b!4567240 res!1906584) b!4567242))

(declare-fun m!5362677 () Bool)

(assert (=> b!4567242 m!5362677))

(declare-fun m!5362679 () Bool)

(assert (=> b!4567242 m!5362679))

(assert (=> b!4567242 m!5362679))

(declare-fun m!5362681 () Bool)

(assert (=> b!4567242 m!5362681))

(declare-fun m!5362683 () Bool)

(assert (=> b!4567236 m!5362683))

(assert (=> b!4567236 m!5361549))

(assert (=> b!4567243 m!5362161))

(assert (=> b!4567243 m!5362161))

(declare-fun m!5362685 () Bool)

(assert (=> b!4567243 m!5362685))

(assert (=> b!4567239 m!5362161))

(declare-fun m!5362687 () Bool)

(assert (=> b!4567239 m!5362687))

(assert (=> b!4567239 m!5362161))

(assert (=> b!4567239 m!5362163))

(declare-fun m!5362689 () Bool)

(assert (=> b!4567239 m!5362689))

(declare-fun m!5362691 () Bool)

(assert (=> b!4567239 m!5362691))

(declare-fun m!5362693 () Bool)

(assert (=> d!1423856 m!5362693))

(assert (=> d!1423856 m!5361739))

(declare-fun m!5362695 () Bool)

(assert (=> b!4567240 m!5362695))

(assert (=> b!4566385 d!1423856))

(assert (=> b!4566323 d!1423466))

(assert (=> b!4566323 d!1423468))

(declare-fun d!1423874 () Bool)

(declare-fun choose!30342 (Hashable!5651 K!12280) (_ BitVec 64))

(assert (=> d!1423874 (= (hash!3071 hashF!1107 key!3287) (choose!30342 hashF!1107 key!3287))))

(declare-fun bs!947219 () Bool)

(assert (= bs!947219 d!1423874))

(declare-fun m!5362697 () Bool)

(assert (=> bs!947219 m!5362697))

(assert (=> d!1423374 d!1423874))

(declare-fun d!1423876 () Bool)

(assert (=> d!1423876 (isDefined!8567 (getValueByKey!1227 (toList!4520 lt!1735189) key!3287))))

(declare-fun lt!1736046 () Unit!103233)

(assert (=> d!1423876 (= lt!1736046 (choose!30336 (toList!4520 lt!1735189) key!3287))))

(assert (=> d!1423876 (invariantList!1083 (toList!4520 lt!1735189))))

(assert (=> d!1423876 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1131 (toList!4520 lt!1735189) key!3287) lt!1736046)))

(declare-fun bs!947223 () Bool)

(assert (= bs!947223 d!1423876))

(assert (=> bs!947223 m!5361243))

(assert (=> bs!947223 m!5361243))

(assert (=> bs!947223 m!5361245))

(declare-fun m!5362699 () Bool)

(assert (=> bs!947223 m!5362699))

(assert (=> bs!947223 m!5361739))

(assert (=> b!4566387 d!1423876))

(assert (=> b!4566387 d!1423564))

(assert (=> b!4566387 d!1423566))

(declare-fun d!1423878 () Bool)

(assert (=> d!1423878 (contains!13777 (getKeysList!531 (toList!4520 lt!1735189)) key!3287)))

(declare-fun lt!1736047 () Unit!103233)

(assert (=> d!1423878 (= lt!1736047 (choose!30337 (toList!4520 lt!1735189) key!3287))))

(assert (=> d!1423878 (invariantList!1083 (toList!4520 lt!1735189))))

(assert (=> d!1423878 (= (lemmaInListThenGetKeysListContains!527 (toList!4520 lt!1735189) key!3287) lt!1736047)))

(declare-fun bs!947227 () Bool)

(assert (= bs!947227 d!1423878))

(assert (=> bs!947227 m!5361239))

(assert (=> bs!947227 m!5361239))

(declare-fun m!5362701 () Bool)

(assert (=> bs!947227 m!5362701))

(declare-fun m!5362703 () Bool)

(assert (=> bs!947227 m!5362703))

(assert (=> bs!947227 m!5361739))

(assert (=> b!4566387 d!1423878))

(declare-fun d!1423880 () Bool)

(declare-fun e!2847341 () Bool)

(assert (=> d!1423880 e!2847341))

(declare-fun res!1906589 () Bool)

(assert (=> d!1423880 (=> res!1906589 e!2847341)))

(declare-fun lt!1736051 () Bool)

(assert (=> d!1423880 (= res!1906589 (not lt!1736051))))

(declare-fun lt!1736049 () Bool)

(assert (=> d!1423880 (= lt!1736051 lt!1736049)))

(declare-fun lt!1736050 () Unit!103233)

(declare-fun e!2847342 () Unit!103233)

(assert (=> d!1423880 (= lt!1736050 e!2847342)))

(declare-fun c!781143 () Bool)

(assert (=> d!1423880 (= c!781143 lt!1736049)))

(assert (=> d!1423880 (= lt!1736049 (containsKey!2013 (toList!4519 lt!1735216) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(assert (=> d!1423880 (= (contains!13774 lt!1735216 (_1!29024 (tuple2!51461 hash!344 newBucket!178))) lt!1736051)))

(declare-fun b!4567263 () Bool)

(declare-fun lt!1736048 () Unit!103233)

(assert (=> b!4567263 (= e!2847342 lt!1736048)))

(assert (=> b!4567263 (= lt!1736048 (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lt!1735216) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(assert (=> b!4567263 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735216) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun b!4567264 () Bool)

(declare-fun Unit!103415 () Unit!103233)

(assert (=> b!4567264 (= e!2847342 Unit!103415)))

(declare-fun b!4567265 () Bool)

(assert (=> b!4567265 (= e!2847341 (isDefined!8566 (getValueByKey!1226 (toList!4519 lt!1735216) (_1!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (= (and d!1423880 c!781143) b!4567263))

(assert (= (and d!1423880 (not c!781143)) b!4567264))

(assert (= (and d!1423880 (not res!1906589)) b!4567265))

(declare-fun m!5362705 () Bool)

(assert (=> d!1423880 m!5362705))

(declare-fun m!5362707 () Bool)

(assert (=> b!4567263 m!5362707))

(assert (=> b!4567263 m!5360787))

(assert (=> b!4567263 m!5360787))

(declare-fun m!5362709 () Bool)

(assert (=> b!4567263 m!5362709))

(assert (=> b!4567265 m!5360787))

(assert (=> b!4567265 m!5360787))

(assert (=> b!4567265 m!5362709))

(assert (=> d!1423256 d!1423880))

(declare-fun b!4567266 () Bool)

(declare-fun e!2847343 () Option!11294)

(assert (=> b!4567266 (= e!2847343 (Some!11293 (_2!29024 (h!56826 lt!1735218))))))

(declare-fun c!781144 () Bool)

(declare-fun d!1423882 () Bool)

(assert (=> d!1423882 (= c!781144 (and ((_ is Cons!50905) lt!1735218) (= (_1!29024 (h!56826 lt!1735218)) (_1!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (=> d!1423882 (= (getValueByKey!1226 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178))) e!2847343)))

(declare-fun b!4567269 () Bool)

(declare-fun e!2847344 () Option!11294)

(assert (=> b!4567269 (= e!2847344 None!11293)))

(declare-fun b!4567267 () Bool)

(assert (=> b!4567267 (= e!2847343 e!2847344)))

(declare-fun c!781145 () Bool)

(assert (=> b!4567267 (= c!781145 (and ((_ is Cons!50905) lt!1735218) (not (= (_1!29024 (h!56826 lt!1735218)) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))))

(declare-fun b!4567268 () Bool)

(assert (=> b!4567268 (= e!2847344 (getValueByKey!1226 (t!358007 lt!1735218) (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(assert (= (and d!1423882 c!781144) b!4567266))

(assert (= (and d!1423882 (not c!781144)) b!4567267))

(assert (= (and b!4567267 c!781145) b!4567268))

(assert (= (and b!4567267 (not c!781145)) b!4567269))

(declare-fun m!5362711 () Bool)

(assert (=> b!4567268 m!5362711))

(assert (=> d!1423256 d!1423882))

(declare-fun d!1423884 () Bool)

(assert (=> d!1423884 (= (getValueByKey!1226 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178))) (Some!11293 (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun lt!1736052 () Unit!103233)

(assert (=> d!1423884 (= lt!1736052 (choose!30338 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun e!2847345 () Bool)

(assert (=> d!1423884 e!2847345))

(declare-fun res!1906590 () Bool)

(assert (=> d!1423884 (=> (not res!1906590) (not e!2847345))))

(assert (=> d!1423884 (= res!1906590 (isStrictlySorted!498 lt!1735218))))

(assert (=> d!1423884 (= (lemmaContainsTupThenGetReturnValue!758 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))) lt!1736052)))

(declare-fun b!4567270 () Bool)

(declare-fun res!1906591 () Bool)

(assert (=> b!4567270 (=> (not res!1906591) (not e!2847345))))

(assert (=> b!4567270 (= res!1906591 (containsKey!2013 lt!1735218 (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun b!4567271 () Bool)

(assert (=> b!4567271 (= e!2847345 (contains!13775 lt!1735218 (tuple2!51461 (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (= (and d!1423884 res!1906590) b!4567270))

(assert (= (and b!4567270 res!1906591) b!4567271))

(assert (=> d!1423884 m!5360781))

(declare-fun m!5362717 () Bool)

(assert (=> d!1423884 m!5362717))

(declare-fun m!5362719 () Bool)

(assert (=> d!1423884 m!5362719))

(declare-fun m!5362721 () Bool)

(assert (=> b!4567270 m!5362721))

(declare-fun m!5362725 () Bool)

(assert (=> b!4567271 m!5362725))

(assert (=> d!1423256 d!1423884))

(declare-fun c!781149 () Bool)

(declare-fun e!2847349 () List!51029)

(declare-fun call!318688 () List!51029)

(declare-fun bm!318683 () Bool)

(assert (=> bm!318683 (= call!318688 ($colon$colon!1002 e!2847349 (ite c!781149 (h!56826 (toList!4519 lt!1735178)) (tuple2!51461 (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))))

(declare-fun c!781148 () Bool)

(assert (=> bm!318683 (= c!781148 c!781149)))

(declare-fun b!4567272 () Bool)

(declare-fun res!1906592 () Bool)

(declare-fun e!2847347 () Bool)

(assert (=> b!4567272 (=> (not res!1906592) (not e!2847347))))

(declare-fun lt!1736053 () List!51029)

(assert (=> b!4567272 (= res!1906592 (containsKey!2013 lt!1736053 (_1!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun d!1423886 () Bool)

(assert (=> d!1423886 e!2847347))

(declare-fun res!1906593 () Bool)

(assert (=> d!1423886 (=> (not res!1906593) (not e!2847347))))

(assert (=> d!1423886 (= res!1906593 (isStrictlySorted!498 lt!1736053))))

(declare-fun e!2847348 () List!51029)

(assert (=> d!1423886 (= lt!1736053 e!2847348)))

(assert (=> d!1423886 (= c!781149 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (bvslt (_1!29024 (h!56826 (toList!4519 lt!1735178))) (_1!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (=> d!1423886 (isStrictlySorted!498 (toList!4519 lt!1735178))))

(assert (=> d!1423886 (= (insertStrictlySorted!464 (toList!4519 lt!1735178) (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))) lt!1736053)))

(declare-fun c!781146 () Bool)

(declare-fun b!4567273 () Bool)

(declare-fun c!781147 () Bool)

(assert (=> b!4567273 (= e!2847349 (ite c!781146 (t!358007 (toList!4519 lt!1735178)) (ite c!781147 (Cons!50905 (h!56826 (toList!4519 lt!1735178)) (t!358007 (toList!4519 lt!1735178))) Nil!50905)))))

(declare-fun b!4567274 () Bool)

(assert (=> b!4567274 (= e!2847348 call!318688)))

(declare-fun b!4567275 () Bool)

(declare-fun e!2847346 () List!51029)

(declare-fun call!318689 () List!51029)

(assert (=> b!4567275 (= e!2847346 call!318689)))

(declare-fun bm!318684 () Bool)

(declare-fun call!318690 () List!51029)

(assert (=> bm!318684 (= call!318690 call!318689)))

(declare-fun b!4567276 () Bool)

(assert (=> b!4567276 (= e!2847349 (insertStrictlySorted!464 (t!358007 (toList!4519 lt!1735178)) (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178))))))

(declare-fun b!4567277 () Bool)

(assert (=> b!4567277 (= e!2847347 (contains!13775 lt!1736053 (tuple2!51461 (_1!29024 (tuple2!51461 hash!344 newBucket!178)) (_2!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(declare-fun b!4567278 () Bool)

(declare-fun e!2847350 () List!51029)

(assert (=> b!4567278 (= e!2847350 call!318690)))

(declare-fun b!4567279 () Bool)

(assert (=> b!4567279 (= e!2847348 e!2847346)))

(assert (=> b!4567279 (= c!781146 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (= (_1!29024 (h!56826 (toList!4519 lt!1735178))) (_1!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(declare-fun bm!318685 () Bool)

(assert (=> bm!318685 (= call!318689 call!318688)))

(declare-fun b!4567280 () Bool)

(assert (=> b!4567280 (= c!781147 (and ((_ is Cons!50905) (toList!4519 lt!1735178)) (bvsgt (_1!29024 (h!56826 (toList!4519 lt!1735178))) (_1!29024 (tuple2!51461 hash!344 newBucket!178)))))))

(assert (=> b!4567280 (= e!2847346 e!2847350)))

(declare-fun b!4567281 () Bool)

(assert (=> b!4567281 (= e!2847350 call!318690)))

(assert (= (and d!1423886 c!781149) b!4567274))

(assert (= (and d!1423886 (not c!781149)) b!4567279))

(assert (= (and b!4567279 c!781146) b!4567275))

(assert (= (and b!4567279 (not c!781146)) b!4567280))

(assert (= (and b!4567280 c!781147) b!4567278))

(assert (= (and b!4567280 (not c!781147)) b!4567281))

(assert (= (or b!4567278 b!4567281) bm!318684))

(assert (= (or b!4567275 bm!318684) bm!318685))

(assert (= (or b!4567274 bm!318685) bm!318683))

(assert (= (and bm!318683 c!781148) b!4567276))

(assert (= (and bm!318683 (not c!781148)) b!4567273))

(assert (= (and d!1423886 res!1906593) b!4567272))

(assert (= (and b!4567272 res!1906592) b!4567277))

(declare-fun m!5362741 () Bool)

(assert (=> b!4567276 m!5362741))

(declare-fun m!5362743 () Bool)

(assert (=> bm!318683 m!5362743))

(declare-fun m!5362745 () Bool)

(assert (=> d!1423886 m!5362745))

(assert (=> d!1423886 m!5361753))

(declare-fun m!5362747 () Bool)

(assert (=> b!4567272 m!5362747))

(declare-fun m!5362749 () Bool)

(assert (=> b!4567277 m!5362749))

(assert (=> d!1423256 d!1423886))

(assert (=> b!4566369 d!1423470))

(assert (=> b!4566369 d!1423472))

(declare-fun d!1423890 () Bool)

(declare-fun lt!1736054 () Bool)

(assert (=> d!1423890 (= lt!1736054 (select (content!8545 e!2846796) key!3287))))

(declare-fun e!2847353 () Bool)

(assert (=> d!1423890 (= lt!1736054 e!2847353)))

(declare-fun res!1906594 () Bool)

(assert (=> d!1423890 (=> (not res!1906594) (not e!2847353))))

(assert (=> d!1423890 (= res!1906594 ((_ is Cons!50907) e!2846796))))

(assert (=> d!1423890 (= (contains!13777 e!2846796 key!3287) lt!1736054)))

(declare-fun b!4567286 () Bool)

(declare-fun e!2847354 () Bool)

(assert (=> b!4567286 (= e!2847353 e!2847354)))

(declare-fun res!1906595 () Bool)

(assert (=> b!4567286 (=> res!1906595 e!2847354)))

(assert (=> b!4567286 (= res!1906595 (= (h!56830 e!2846796) key!3287))))

(declare-fun b!4567287 () Bool)

(assert (=> b!4567287 (= e!2847354 (contains!13777 (t!358009 e!2846796) key!3287))))

(assert (= (and d!1423890 res!1906594) b!4567286))

(assert (= (and b!4567286 (not res!1906595)) b!4567287))

(declare-fun m!5362751 () Bool)

(assert (=> d!1423890 m!5362751))

(declare-fun m!5362753 () Bool)

(assert (=> d!1423890 m!5362753))

(declare-fun m!5362755 () Bool)

(assert (=> b!4567287 m!5362755))

(assert (=> bm!318577 d!1423890))

(declare-fun d!1423892 () Bool)

(declare-fun lt!1736055 () Bool)

(assert (=> d!1423892 (= lt!1736055 (select (content!8546 (toList!4519 lt!1735216)) (tuple2!51461 hash!344 newBucket!178)))))

(declare-fun e!2847355 () Bool)

(assert (=> d!1423892 (= lt!1736055 e!2847355)))

(declare-fun res!1906597 () Bool)

(assert (=> d!1423892 (=> (not res!1906597) (not e!2847355))))

(assert (=> d!1423892 (= res!1906597 ((_ is Cons!50905) (toList!4519 lt!1735216)))))

(assert (=> d!1423892 (= (contains!13775 (toList!4519 lt!1735216) (tuple2!51461 hash!344 newBucket!178)) lt!1736055)))

(declare-fun b!4567288 () Bool)

(declare-fun e!2847356 () Bool)

(assert (=> b!4567288 (= e!2847355 e!2847356)))

(declare-fun res!1906596 () Bool)

(assert (=> b!4567288 (=> res!1906596 e!2847356)))

(assert (=> b!4567288 (= res!1906596 (= (h!56826 (toList!4519 lt!1735216)) (tuple2!51461 hash!344 newBucket!178)))))

(declare-fun b!4567289 () Bool)

(assert (=> b!4567289 (= e!2847356 (contains!13775 (t!358007 (toList!4519 lt!1735216)) (tuple2!51461 hash!344 newBucket!178)))))

(assert (= (and d!1423892 res!1906597) b!4567288))

(assert (= (and b!4567288 (not res!1906596)) b!4567289))

(declare-fun m!5362757 () Bool)

(assert (=> d!1423892 m!5362757))

(declare-fun m!5362759 () Bool)

(assert (=> d!1423892 m!5362759))

(declare-fun m!5362761 () Bool)

(assert (=> b!4567289 m!5362761))

(assert (=> b!4566109 d!1423892))

(declare-fun d!1423894 () Bool)

(declare-fun e!2847357 () Bool)

(assert (=> d!1423894 e!2847357))

(declare-fun res!1906598 () Bool)

(assert (=> d!1423894 (=> res!1906598 e!2847357)))

(declare-fun lt!1736059 () Bool)

(assert (=> d!1423894 (= res!1906598 (not lt!1736059))))

(declare-fun lt!1736057 () Bool)

(assert (=> d!1423894 (= lt!1736059 lt!1736057)))

(declare-fun lt!1736058 () Unit!103233)

(declare-fun e!2847358 () Unit!103233)

(assert (=> d!1423894 (= lt!1736058 e!2847358)))

(declare-fun c!781152 () Bool)

(assert (=> d!1423894 (= c!781152 lt!1736057)))

(assert (=> d!1423894 (= lt!1736057 (containsKey!2013 (toList!4519 lm!1477) (hash!3067 hashF!1107 key!3287)))))

(assert (=> d!1423894 (= (contains!13774 lm!1477 (hash!3067 hashF!1107 key!3287)) lt!1736059)))

(declare-fun b!4567291 () Bool)

(declare-fun lt!1736056 () Unit!103233)

(assert (=> b!4567291 (= e!2847358 lt!1736056)))

(assert (=> b!4567291 (= lt!1736056 (lemmaContainsKeyImpliesGetValueByKeyDefined!1130 (toList!4519 lm!1477) (hash!3067 hashF!1107 key!3287)))))

(assert (=> b!4567291 (isDefined!8566 (getValueByKey!1226 (toList!4519 lm!1477) (hash!3067 hashF!1107 key!3287)))))

(declare-fun b!4567293 () Bool)

(declare-fun Unit!103416 () Unit!103233)

(assert (=> b!4567293 (= e!2847358 Unit!103416)))

(declare-fun b!4567294 () Bool)

(assert (=> b!4567294 (= e!2847357 (isDefined!8566 (getValueByKey!1226 (toList!4519 lm!1477) (hash!3067 hashF!1107 key!3287))))))

(assert (= (and d!1423894 c!781152) b!4567291))

(assert (= (and d!1423894 (not c!781152)) b!4567293))

(assert (= (and d!1423894 (not res!1906598)) b!4567294))

(assert (=> d!1423894 m!5360705))

(declare-fun m!5362767 () Bool)

(assert (=> d!1423894 m!5362767))

(assert (=> b!4567291 m!5360705))

(declare-fun m!5362769 () Bool)

(assert (=> b!4567291 m!5362769))

(assert (=> b!4567291 m!5360705))

(declare-fun m!5362771 () Bool)

(assert (=> b!4567291 m!5362771))

(assert (=> b!4567291 m!5362771))

(declare-fun m!5362775 () Bool)

(assert (=> b!4567291 m!5362775))

(assert (=> b!4567294 m!5360705))

(assert (=> b!4567294 m!5362771))

(assert (=> b!4567294 m!5362771))

(assert (=> b!4567294 m!5362775))

(assert (=> d!1423334 d!1423894))

(assert (=> d!1423334 d!1423374))

(declare-fun d!1423900 () Bool)

(assert (=> d!1423900 (contains!13774 lm!1477 (hash!3067 hashF!1107 key!3287))))

(assert (=> d!1423900 true))

(declare-fun _$27!1348 () Unit!103233)

(assert (=> d!1423900 (= (choose!30324 lm!1477 key!3287 hashF!1107) _$27!1348)))

(declare-fun bs!947249 () Bool)

(assert (= bs!947249 d!1423900))

(assert (=> bs!947249 m!5360705))

(assert (=> bs!947249 m!5360705))

(assert (=> bs!947249 m!5361073))

(assert (=> d!1423334 d!1423900))

(declare-fun d!1423902 () Bool)

(declare-fun res!1906602 () Bool)

(declare-fun e!2847362 () Bool)

(assert (=> d!1423902 (=> res!1906602 e!2847362)))

(assert (=> d!1423902 (= res!1906602 ((_ is Nil!50905) (toList!4519 lm!1477)))))

(assert (=> d!1423902 (= (forall!10462 (toList!4519 lm!1477) lambda!180910) e!2847362)))

(declare-fun b!4567300 () Bool)

(declare-fun e!2847363 () Bool)

(assert (=> b!4567300 (= e!2847362 e!2847363)))

(declare-fun res!1906603 () Bool)

(assert (=> b!4567300 (=> (not res!1906603) (not e!2847363))))

(assert (=> b!4567300 (= res!1906603 (dynLambda!21298 lambda!180910 (h!56826 (toList!4519 lm!1477))))))

(declare-fun b!4567301 () Bool)

(assert (=> b!4567301 (= e!2847363 (forall!10462 (t!358007 (toList!4519 lm!1477)) lambda!180910))))

(assert (= (and d!1423902 (not res!1906602)) b!4567300))

(assert (= (and b!4567300 res!1906603) b!4567301))

(declare-fun b_lambda!163181 () Bool)

(assert (=> (not b_lambda!163181) (not b!4567300)))

(declare-fun m!5362779 () Bool)

(assert (=> b!4567300 m!5362779))

(declare-fun m!5362781 () Bool)

(assert (=> b!4567301 m!5362781))

(assert (=> d!1423334 d!1423902))

(declare-fun b!4567302 () Bool)

(declare-fun tp!1339472 () Bool)

(declare-fun e!2847364 () Bool)

(assert (=> b!4567302 (= e!2847364 (and tp_is_empty!28301 tp_is_empty!28303 tp!1339472))))

(assert (=> b!4566405 (= tp!1339471 e!2847364)))

(assert (= (and b!4566405 ((_ is Cons!50904) (t!358006 (t!358006 newBucket!178)))) b!4567302))

(declare-fun e!2847365 () Bool)

(declare-fun tp!1339473 () Bool)

(declare-fun b!4567303 () Bool)

(assert (=> b!4567303 (= e!2847365 (and tp_is_empty!28301 tp_is_empty!28303 tp!1339473))))

(assert (=> b!4566400 (= tp!1339467 e!2847365)))

(assert (= (and b!4566400 ((_ is Cons!50904) (_2!29024 (h!56826 (toList!4519 lm!1477))))) b!4567303))

(declare-fun b!4567304 () Bool)

(declare-fun e!2847366 () Bool)

(declare-fun tp!1339474 () Bool)

(declare-fun tp!1339475 () Bool)

(assert (=> b!4567304 (= e!2847366 (and tp!1339474 tp!1339475))))

(assert (=> b!4566400 (= tp!1339468 e!2847366)))

(assert (= (and b!4566400 ((_ is Cons!50905) (t!358007 (toList!4519 lm!1477)))) b!4567304))

(declare-fun b_lambda!163183 () Bool)

(assert (= b_lambda!163137 (or d!1423378 b_lambda!163183)))

(declare-fun bs!947256 () Bool)

(declare-fun d!1423904 () Bool)

(assert (= bs!947256 (and d!1423904 d!1423378)))

(assert (=> bs!947256 (= (dynLambda!21298 lambda!180921 (h!56826 (toList!4519 lm!1477))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(assert (=> bs!947256 m!5361267))

(assert (=> b!4566507 d!1423904))

(declare-fun b_lambda!163185 () Bool)

(assert (= b_lambda!163141 (or start!454364 b_lambda!163185)))

(declare-fun bs!947257 () Bool)

(declare-fun d!1423906 () Bool)

(assert (= bs!947257 (and d!1423906 start!454364)))

(assert (=> bs!947257 (= (dynLambda!21298 lambda!180879 (h!56826 (t!358007 (toList!4519 lm!1477)))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))

(assert (=> bs!947257 m!5362461))

(assert (=> b!4566669 d!1423906))

(declare-fun b_lambda!163187 () Bool)

(assert (= b_lambda!163147 (or d!1423400 b_lambda!163187)))

(declare-fun bs!947258 () Bool)

(declare-fun d!1423908 () Bool)

(assert (= bs!947258 (and d!1423908 d!1423400)))

(assert (=> bs!947258 (= (dynLambda!21298 lambda!180925 (h!56826 (toList!4519 lt!1735178))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(assert (=> bs!947258 m!5361683))

(assert (=> b!4566745 d!1423908))

(declare-fun b_lambda!163189 () Bool)

(assert (= b_lambda!163139 (or d!1423404 b_lambda!163189)))

(declare-fun bs!947259 () Bool)

(declare-fun d!1423910 () Bool)

(assert (= bs!947259 (and d!1423910 d!1423404)))

(assert (=> bs!947259 (= (dynLambda!21298 lambda!180926 (h!56826 (t!358007 (toList!4519 lm!1477)))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (t!358007 (toList!4519 lm!1477))))))))

(assert (=> bs!947259 m!5362461))

(assert (=> b!4566625 d!1423910))

(declare-fun b_lambda!163191 () Bool)

(assert (= b_lambda!163135 (or d!1423386 b_lambda!163191)))

(declare-fun bs!947260 () Bool)

(declare-fun d!1423912 () Bool)

(assert (= bs!947260 (and d!1423912 d!1423386)))

(assert (=> bs!947260 (= (dynLambda!21298 lambda!180924 (h!56826 (toList!4519 lt!1735178))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(assert (=> bs!947260 m!5361683))

(assert (=> b!4566481 d!1423912))

(declare-fun b_lambda!163193 () Bool)

(assert (= b_lambda!163157 (or d!1423308 b_lambda!163193)))

(declare-fun bs!947261 () Bool)

(declare-fun d!1423914 () Bool)

(assert (= bs!947261 (and d!1423914 d!1423308)))

(assert (=> bs!947261 (= (dynLambda!21298 lambda!180904 (h!56826 (toList!4519 lt!1735178))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(assert (=> bs!947261 m!5361683))

(assert (=> b!4567058 d!1423914))

(declare-fun b_lambda!163195 () Bool)

(assert (= b_lambda!163159 (or d!1423274 b_lambda!163195)))

(declare-fun bs!947262 () Bool)

(declare-fun d!1423916 () Bool)

(assert (= bs!947262 (and d!1423916 d!1423274)))

(assert (=> bs!947262 (= (dynLambda!21298 lambda!180892 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178))))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 (tuple2!51461 hash!344 newBucket!178)))))))))

(assert (=> bs!947262 m!5362533))

(assert (=> b!4567066 d!1423916))

(declare-fun b_lambda!163197 () Bool)

(assert (= b_lambda!163129 (or start!454364 b_lambda!163197)))

(assert (=> d!1423432 d!1423418))

(declare-fun b_lambda!163199 () Bool)

(assert (= b_lambda!163145 (or d!1423410 b_lambda!163199)))

(declare-fun bs!947264 () Bool)

(declare-fun d!1423920 () Bool)

(assert (= bs!947264 (and d!1423920 d!1423410)))

(assert (=> bs!947264 (= (dynLambda!21298 lambda!180932 (h!56826 (toList!4519 lm!1477))) (allKeysSameHash!1110 (_2!29024 (h!56826 (toList!4519 lm!1477))) (_1!29024 (h!56826 (toList!4519 lm!1477))) hashF!1107))))

(declare-fun m!5362797 () Bool)

(assert (=> bs!947264 m!5362797))

(assert (=> b!4566703 d!1423920))

(declare-fun b_lambda!163201 () Bool)

(assert (= b_lambda!163151 (or d!1423372 b_lambda!163201)))

(declare-fun bs!947266 () Bool)

(declare-fun d!1423924 () Bool)

(assert (= bs!947266 (and d!1423924 d!1423372)))

(assert (=> bs!947266 (= (dynLambda!21298 lambda!180920 (h!56826 (toList!4519 lm!1477))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(assert (=> bs!947266 m!5361267))

(assert (=> b!4566873 d!1423924))

(declare-fun b_lambda!163203 () Bool)

(assert (= b_lambda!163181 (or d!1423334 b_lambda!163203)))

(declare-fun bs!947268 () Bool)

(declare-fun d!1423928 () Bool)

(assert (= bs!947268 (and d!1423928 d!1423334)))

(assert (=> bs!947268 (= (dynLambda!21298 lambda!180910 (h!56826 (toList!4519 lm!1477))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lm!1477)))))))

(assert (=> bs!947268 m!5361267))

(assert (=> b!4567300 d!1423928))

(declare-fun b_lambda!163205 () Bool)

(assert (= b_lambda!163133 (or d!1423298 b_lambda!163205)))

(declare-fun bs!947270 () Bool)

(declare-fun d!1423932 () Bool)

(assert (= bs!947270 (and d!1423932 d!1423298)))

(assert (=> bs!947270 (= (dynLambda!21298 lambda!180893 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192)))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 (+!1678 lt!1735178 lt!1735192))))))))

(assert (=> bs!947270 m!5361481))

(assert (=> b!4566476 d!1423932))

(declare-fun b_lambda!163207 () Bool)

(assert (= b_lambda!163143 (or d!1423408 b_lambda!163207)))

(declare-fun bs!947272 () Bool)

(declare-fun d!1423936 () Bool)

(assert (= bs!947272 (and d!1423936 d!1423408)))

(assert (=> bs!947272 (= (dynLambda!21298 lambda!180929 (h!56826 (toList!4519 lt!1735178))) (noDuplicateKeys!1256 (_2!29024 (h!56826 (toList!4519 lt!1735178)))))))

(assert (=> bs!947272 m!5361683))

(assert (=> b!4566701 d!1423936))

(declare-fun b_lambda!163209 () Bool)

(assert (= b_lambda!163163 (or d!1423412 b_lambda!163209)))

(declare-fun bs!947274 () Bool)

(declare-fun d!1423940 () Bool)

(assert (= bs!947274 (and d!1423940 d!1423412)))

(assert (=> bs!947274 (= (dynLambda!21299 lambda!180935 (h!56825 newBucket!178)) (= (hash!3067 hashF!1107 (_1!29023 (h!56825 newBucket!178))) hash!344))))

(declare-fun m!5362801 () Bool)

(assert (=> bs!947274 m!5362801))

(assert (=> b!4567167 d!1423940))

(check-sat (not b!4567002) (not d!1423470) (not bs!947264) (not b!4566641) (not b!4566683) (not bm!318670) (not b!4567203) (not b!4566687) (not b_lambda!163189) (not d!1423524) (not d!1423522) (not d!1423726) (not b!4567270) (not bm!318655) (not d!1423816) (not d!1423632) (not b!4567242) (not b!4567067) (not d!1423810) (not b!4567277) (not bs!947261) (not b_lambda!163123) (not b!4566624) (not b!4566883) (not b!4567113) (not b!4566741) (not b!4567062) (not b!4566738) (not bm!318617) (not b!4566495) (not d!1423472) (not b!4566876) (not b!4567193) (not b!4566880) (not b_lambda!163205) (not bs!947266) (not b!4566640) (not d!1423468) (not b!4566610) (not b!4566678) (not b!4566663) (not b!4567294) (not b!4566651) (not b!4566707) (not b!4566482) (not b!4566626) (not b!4566732) (not d!1423530) (not d!1423478) (not b!4566638) (not bs!947270) (not b!4566648) (not d!1423874) (not d!1423880) (not b!4566878) (not bs!947259) (not b!4566462) (not b!4566516) (not d!1423610) (not bm!318678) (not b!4567101) (not b!4567265) (not b!4567159) (not b!4567240) (not b!4566497) (not b!4566879) (not b!4567175) (not b!4566751) (not b!4566681) (not b!4567236) (not b!4566501) (not b!4566589) (not bs!947274) (not bs!947260) (not b!4567301) (not b_lambda!163187) (not b!4567276) (not d!1423454) (not d!1423802) (not d!1423462) (not b!4567065) (not b!4566488) (not b!4567018) (not b!4566621) (not b!4567075) (not b_lambda!163207) (not b!4566444) (not d!1423486) (not b!4566680) (not b!4567197) (not b!4567291) (not d!1423510) (not bm!318652) (not b!4566875) (not b!4566848) (not b!4567205) (not b!4566744) (not bm!318605) (not b!4566715) (not b!4566480) (not b!4567003) (not d!1423886) (not d!1423694) (not b!4567162) (not b!4566843) (not b!4566742) (not b!4567192) (not b!4567272) (not b!4566588) (not d!1423542) (not d!1423878) (not b!4567153) (not d!1423448) (not d!1423476) (not bm!318626) (not bs!947268) (not b!4567243) (not b!4566670) (not bm!318618) (not b!4566719) (not b!4567006) (not d!1423876) (not b_lambda!163199) (not b!4566844) (not b_lambda!163201) (not b!4566672) (not b!4566885) (not bs!947262) (not b!4567268) (not b!4567168) (not d!1423884) (not d!1423518) (not b!4566749) (not d!1423538) (not d!1423900) (not b!4566635) (not b!4566590) (not b!4566595) (not b!4567008) (not bm!318682) (not b!4567013) (not b!4567289) (not b!4566753) (not d!1423706) (not bm!318680) (not b!4567016) (not d!1423730) (not d!1423578) (not b!4566639) (not d!1423550) (not b!4567172) (not b!4566850) (not d!1423552) (not b!4567027) (not bm!318675) (not d!1423822) (not d!1423738) (not b!4567059) (not b!4567028) (not b!4566502) (not bs!947256) (not bm!318616) (not b!4567072) tp_is_empty!28301 (not b!4567160) (not b!4567303) (not d!1423764) (not b_lambda!163183) (not b!4567263) (not b_lambda!163191) (not d!1423544) (not b_lambda!163125) (not d!1423602) (not bm!318677) (not b!4566826) (not d!1423762) (not b!4567154) (not b!4566746) (not b!4566756) (not b!4566734) (not b!4566716) (not b!4567149) (not b!4566665) (not d!1423894) (not b!4566846) (not b!4567092) (not b_lambda!163209) (not bm!318653) (not b!4567079) (not b!4566737) (not b!4567011) (not b!4567071) (not b!4567094) (not b!4566508) (not d!1423594) (not b!4566686) (not b!4566849) (not d!1423696) (not bm!318603) (not b!4567207) (not b!4567171) (not d!1423564) (not d!1423634) (not b!4566514) (not b_lambda!163185) (not d!1423746) (not d!1423598) (not b!4567014) (not b_lambda!163203) (not b!4566667) (not bm!318654) (not b!4566827) (not b!4566820) (not b!4566506) (not b!4566874) (not b!4566607) (not bm!318679) (not bm!318656) (not b!4566682) (not bm!318619) (not d!1423700) (not b_lambda!163197) (not d!1423590) (not b!4566503) (not bm!318604) (not b!4566504) (not d!1423794) (not d!1423778) (not bm!318657) (not b!4567069) (not d!1423856) (not b!4567304) (not b!4566685) (not b!4566739) (not b!4567239) (not bs!947272) (not b_lambda!163193) (not b!4567204) (not d!1423606) (not d!1423496) (not d!1423760) (not d!1423642) (not d!1423466) (not b!4566824) (not bm!318673) (not b!4566710) (not b!4567173) (not d!1423498) (not b!4566496) (not bm!318683) (not bm!318674) (not b!4566666) (not b!4566632) (not d!1423768) (not b!4566702) (not bs!947258) (not b!4566735) (not b!4566656) tp_is_empty!28303 (not b!4567019) (not b!4567271) (not b!4567287) (not d!1423644) (not bm!318606) (not b!4566823) (not b!4566478) (not b!4566881) (not b_lambda!163195) (not d!1423890) (not b!4567078) (not d!1423790) (not bs!947257) (not b!4566477) (not d!1423558) (not b!4566592) (not b!4566717) (not d!1423752) (not b!4566704) (not b!4567114) (not b!4566668) (not b!4566442) (not d!1423604) (not d!1423892) (not d!1423568) (not b!4567196) (not b!4566884) (not b!4567176) (not bm!318681) (not b!4566653) (not b!4567076) (not b!4567302) (not b!4566713) (not b!4566845) (not b!4567194))
(check-sat)
