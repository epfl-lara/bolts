; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!440418 () Bool)

(assert start!440418)

(declare-fun b!4479243 () Bool)

(declare-fun e!2789672 () Bool)

(declare-fun e!2789676 () Bool)

(assert (=> b!4479243 (= e!2789672 e!2789676)))

(declare-fun res!1859437 () Bool)

(assert (=> b!4479243 (=> res!1859437 e!2789676)))

(declare-datatypes ((K!11763 0))(
  ( (K!11764 (val!17681 Int)) )
))
(declare-datatypes ((V!12009 0))(
  ( (V!12010 (val!17682 Int)) )
))
(declare-datatypes ((tuple2!50630 0))(
  ( (tuple2!50631 (_1!28609 K!11763) (_2!28609 V!12009)) )
))
(declare-datatypes ((List!50474 0))(
  ( (Nil!50350) (Cons!50350 (h!56129 tuple2!50630) (t!357428 List!50474)) )
))
(declare-datatypes ((tuple2!50632 0))(
  ( (tuple2!50633 (_1!28610 (_ BitVec 64)) (_2!28610 List!50474)) )
))
(declare-datatypes ((List!50475 0))(
  ( (Nil!50351) (Cons!50351 (h!56130 tuple2!50632) (t!357429 List!50475)) )
))
(declare-datatypes ((ListLongMap!2737 0))(
  ( (ListLongMap!2738 (toList!4105 List!50475)) )
))
(declare-fun lm!1477 () ListLongMap!2737)

(declare-fun lt!1665876 () ListLongMap!2737)

(declare-fun tail!7550 (List!50475) List!50475)

(assert (=> b!4479243 (= res!1859437 (not (= (t!357429 (toList!4105 lm!1477)) (tail!7550 (toList!4105 lt!1665876)))))))

(declare-fun lt!1665894 () tuple2!50632)

(declare-fun +!1399 (ListLongMap!2737 tuple2!50632) ListLongMap!2737)

(assert (=> b!4479243 (= lt!1665876 (+!1399 lm!1477 lt!1665894))))

(declare-fun lt!1665881 () tuple2!50632)

(declare-fun key!3287 () K!11763)

(declare-datatypes ((ListMap!3367 0))(
  ( (ListMap!3368 (toList!4106 List!50474)) )
))
(declare-fun eq!542 (ListMap!3367 ListMap!3367) Bool)

(declare-fun extractMap!1105 (List!50475) ListMap!3367)

(declare-fun -!311 (ListMap!3367 K!11763) ListMap!3367)

(assert (=> b!4479243 (eq!542 (extractMap!1105 (Cons!50351 lt!1665894 Nil!50351)) (-!311 (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351)) key!3287))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4479243 (= lt!1665881 (tuple2!50633 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477)))))))

(declare-fun newBucket!178 () List!50474)

(assert (=> b!4479243 (= lt!1665894 (tuple2!50633 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5444 0))(
  ( (HashableExt!5443 (__x!31147 Int)) )
))
(declare-fun hashF!1107 () Hashable!5444)

(declare-datatypes ((Unit!89527 0))(
  ( (Unit!89528) )
))
(declare-fun lt!1665887 () Unit!89527)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!41 ((_ BitVec 64) List!50474 List!50474 K!11763 Hashable!5444) Unit!89527)

(assert (=> b!4479243 (= lt!1665887 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!41 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1665883 () List!50475)

(declare-fun contains!12932 (ListMap!3367 K!11763) Bool)

(assert (=> b!4479243 (contains!12932 (extractMap!1105 lt!1665883) key!3287)))

(declare-fun lt!1665878 () Unit!89527)

(declare-fun lemmaListContainsThenExtractedMapContains!45 (ListLongMap!2737 K!11763 Hashable!5444) Unit!89527)

(assert (=> b!4479243 (= lt!1665878 (lemmaListContainsThenExtractedMapContains!45 (ListLongMap!2738 lt!1665883) key!3287 hashF!1107))))

(declare-fun b!4479244 () Bool)

(declare-fun res!1859447 () Bool)

(declare-fun e!2789668 () Bool)

(assert (=> b!4479244 (=> (not res!1859447) (not e!2789668))))

(declare-fun allKeysSameHash!903 (List!50474 (_ BitVec 64) Hashable!5444) Bool)

(assert (=> b!4479244 (= res!1859447 (allKeysSameHash!903 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4479245 () Bool)

(declare-fun res!1859445 () Bool)

(declare-fun e!2789666 () Bool)

(assert (=> b!4479245 (=> (not res!1859445) (not e!2789666))))

(assert (=> b!4479245 (= res!1859445 (contains!12932 (extractMap!1105 (toList!4105 lm!1477)) key!3287))))

(declare-fun b!4479246 () Bool)

(declare-fun res!1859434 () Bool)

(declare-fun e!2789669 () Bool)

(assert (=> b!4479246 (=> res!1859434 e!2789669)))

(declare-fun noDuplicateKeys!1049 (List!50474) Bool)

(assert (=> b!4479246 (= res!1859434 (not (noDuplicateKeys!1049 newBucket!178)))))

(declare-fun b!4479247 () Bool)

(declare-fun res!1859439 () Bool)

(assert (=> b!4479247 (=> (not res!1859439) (not e!2789666))))

(declare-fun allKeysSameHashInMap!1156 (ListLongMap!2737 Hashable!5444) Bool)

(assert (=> b!4479247 (= res!1859439 (allKeysSameHashInMap!1156 lm!1477 hashF!1107))))

(declare-fun b!4479248 () Bool)

(assert (=> b!4479248 (= e!2789666 e!2789668)))

(declare-fun res!1859448 () Bool)

(assert (=> b!4479248 (=> (not res!1859448) (not e!2789668))))

(declare-fun lt!1665877 () (_ BitVec 64))

(assert (=> b!4479248 (= res!1859448 (= lt!1665877 hash!344))))

(declare-fun hash!2518 (Hashable!5444 K!11763) (_ BitVec 64))

(assert (=> b!4479248 (= lt!1665877 (hash!2518 hashF!1107 key!3287))))

(declare-fun b!4479249 () Bool)

(declare-fun e!2789679 () Bool)

(declare-fun e!2789680 () Bool)

(assert (=> b!4479249 (= e!2789679 e!2789680)))

(declare-fun res!1859436 () Bool)

(assert (=> b!4479249 (=> res!1859436 e!2789680)))

(assert (=> b!4479249 (= res!1859436 (not (= (toList!4105 lt!1665876) (Cons!50351 lt!1665894 (t!357429 (toList!4105 lm!1477))))))))

(declare-fun lt!1665885 () List!50475)

(assert (=> b!4479249 (eq!542 (extractMap!1105 (Cons!50351 lt!1665894 lt!1665885)) (-!311 (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885)) key!3287))))

(assert (=> b!4479249 (= lt!1665885 (tail!7550 (toList!4105 lm!1477)))))

(declare-fun lt!1665890 () Unit!89527)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!9 (ListLongMap!2737 (_ BitVec 64) List!50474 List!50474 K!11763 Hashable!5444) Unit!89527)

(assert (=> b!4479249 (= lt!1665890 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!9 lm!1477 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4479250 () Bool)

(declare-fun e!2789675 () Bool)

(declare-fun e!2789671 () Bool)

(assert (=> b!4479250 (= e!2789675 e!2789671)))

(declare-fun res!1859435 () Bool)

(assert (=> b!4479250 (=> res!1859435 e!2789671)))

(declare-fun lt!1665882 () ListMap!3367)

(declare-fun lt!1665888 () ListMap!3367)

(assert (=> b!4479250 (= res!1859435 (not (= lt!1665882 lt!1665888)))))

(assert (=> b!4479250 (= lt!1665888 (extractMap!1105 (t!357429 (toList!4105 lm!1477))))))

(declare-fun lt!1665871 () ListLongMap!2737)

(assert (=> b!4479250 (= lt!1665882 (extractMap!1105 (toList!4105 lt!1665871)))))

(declare-fun b!4479251 () Bool)

(assert (=> b!4479251 (= e!2789668 (not e!2789669))))

(declare-fun res!1859441 () Bool)

(assert (=> b!4479251 (=> res!1859441 e!2789669)))

(declare-fun lt!1665886 () List!50474)

(declare-fun removePairForKey!676 (List!50474 K!11763) List!50474)

(assert (=> b!4479251 (= res!1859441 (not (= newBucket!178 (removePairForKey!676 lt!1665886 key!3287))))))

(declare-fun lt!1665879 () Unit!89527)

(declare-fun lt!1665873 () tuple2!50632)

(declare-fun lambda!164898 () Int)

(declare-fun forallContained!2298 (List!50475 Int tuple2!50632) Unit!89527)

(assert (=> b!4479251 (= lt!1665879 (forallContained!2298 (toList!4105 lm!1477) lambda!164898 lt!1665873))))

(declare-fun contains!12933 (List!50475 tuple2!50632) Bool)

(assert (=> b!4479251 (contains!12933 (toList!4105 lm!1477) lt!1665873)))

(assert (=> b!4479251 (= lt!1665873 (tuple2!50633 hash!344 lt!1665886))))

(declare-fun lt!1665872 () Unit!89527)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!561 (List!50475 (_ BitVec 64) List!50474) Unit!89527)

(assert (=> b!4479251 (= lt!1665872 (lemmaGetValueByKeyImpliesContainsTuple!561 (toList!4105 lm!1477) hash!344 lt!1665886))))

(declare-fun apply!11786 (ListLongMap!2737 (_ BitVec 64)) List!50474)

(assert (=> b!4479251 (= lt!1665886 (apply!11786 lm!1477 hash!344))))

(declare-fun contains!12934 (ListLongMap!2737 (_ BitVec 64)) Bool)

(assert (=> b!4479251 (contains!12934 lm!1477 lt!1665877)))

(declare-fun lt!1665880 () Unit!89527)

(declare-fun lemmaInGenMapThenLongMapContainsHash!123 (ListLongMap!2737 K!11763 Hashable!5444) Unit!89527)

(assert (=> b!4479251 (= lt!1665880 (lemmaInGenMapThenLongMapContainsHash!123 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4479252 () Bool)

(declare-fun e!2789674 () Bool)

(assert (=> b!4479252 (= e!2789674 e!2789672)))

(declare-fun res!1859438 () Bool)

(assert (=> b!4479252 (=> res!1859438 e!2789672)))

(declare-fun containsKeyBiggerList!49 (List!50475 K!11763) Bool)

(assert (=> b!4479252 (= res!1859438 (not (containsKeyBiggerList!49 lt!1665883 key!3287)))))

(assert (=> b!4479252 (= lt!1665883 (Cons!50351 (h!56130 (toList!4105 lm!1477)) Nil!50351))))

(declare-fun b!4479253 () Bool)

(declare-fun res!1859446 () Bool)

(assert (=> b!4479253 (=> res!1859446 e!2789680)))

(declare-fun addToMapMapFromBucket!604 (List!50474 ListMap!3367) ListMap!3367)

(assert (=> b!4479253 (= res!1859446 (not (eq!542 (extractMap!1105 (toList!4105 lt!1665876)) (addToMapMapFromBucket!604 newBucket!178 lt!1665888))))))

(declare-fun res!1859449 () Bool)

(assert (=> start!440418 (=> (not res!1859449) (not e!2789666))))

(declare-fun forall!10037 (List!50475 Int) Bool)

(assert (=> start!440418 (= res!1859449 (forall!10037 (toList!4105 lm!1477) lambda!164898))))

(assert (=> start!440418 e!2789666))

(assert (=> start!440418 true))

(declare-fun e!2789673 () Bool)

(declare-fun inv!65948 (ListLongMap!2737) Bool)

(assert (=> start!440418 (and (inv!65948 lm!1477) e!2789673)))

(declare-fun tp_is_empty!27473 () Bool)

(assert (=> start!440418 tp_is_empty!27473))

(declare-fun e!2789667 () Bool)

(assert (=> start!440418 e!2789667))

(declare-fun b!4479254 () Bool)

(declare-fun e!2789678 () Bool)

(assert (=> b!4479254 (= e!2789678 false)))

(declare-fun b!4479255 () Bool)

(declare-fun e!2789670 () Unit!89527)

(declare-fun Unit!89529 () Unit!89527)

(assert (=> b!4479255 (= e!2789670 Unit!89529)))

(declare-fun lt!1665893 () Unit!89527)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!49 (ListLongMap!2737 K!11763 Hashable!5444) Unit!89527)

(assert (=> b!4479255 (= lt!1665893 (lemmaNotInItsHashBucketThenNotInMap!49 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4479255 false))

(declare-fun b!4479256 () Bool)

(declare-fun e!2789677 () Unit!89527)

(declare-fun Unit!89530 () Unit!89527)

(assert (=> b!4479256 (= e!2789677 Unit!89530)))

(declare-fun lt!1665874 () Unit!89527)

(assert (=> b!4479256 (= lt!1665874 (lemmaInGenMapThenLongMapContainsHash!123 lt!1665871 key!3287 hashF!1107))))

(declare-fun res!1859433 () Bool)

(assert (=> b!4479256 (= res!1859433 (contains!12934 lt!1665871 lt!1665877))))

(assert (=> b!4479256 (=> (not res!1859433) (not e!2789678))))

(assert (=> b!4479256 e!2789678))

(declare-fun b!4479257 () Bool)

(declare-fun res!1859442 () Bool)

(assert (=> b!4479257 (=> res!1859442 e!2789669)))

(assert (=> b!4479257 (= res!1859442 (or (is-Nil!50351 (toList!4105 lm!1477)) (not (= (_1!28610 (h!56130 (toList!4105 lm!1477))) hash!344))))))

(declare-fun b!4479258 () Bool)

(assert (=> b!4479258 (= e!2789676 e!2789675)))

(declare-fun res!1859443 () Bool)

(assert (=> b!4479258 (=> res!1859443 e!2789675)))

(assert (=> b!4479258 (= res!1859443 (not (= lt!1665876 (+!1399 lt!1665871 lt!1665894))))))

(declare-fun tail!7551 (ListLongMap!2737) ListLongMap!2737)

(assert (=> b!4479258 (= lt!1665871 (tail!7551 lm!1477))))

(declare-fun b!4479259 () Bool)

(assert (=> b!4479259 (= e!2789680 (forall!10037 (t!357429 (toList!4105 lm!1477)) lambda!164898))))

(declare-fun lt!1665891 () ListMap!3367)

(assert (=> b!4479259 (= lt!1665891 (extractMap!1105 (toList!4105 (+!1399 lm!1477 lt!1665881))))))

(declare-fun b!4479260 () Bool)

(assert (=> b!4479260 (= e!2789669 e!2789674)))

(declare-fun res!1859444 () Bool)

(assert (=> b!4479260 (=> res!1859444 e!2789674)))

(declare-fun lt!1665884 () Bool)

(assert (=> b!4479260 (= res!1859444 lt!1665884)))

(declare-fun lt!1665892 () Unit!89527)

(assert (=> b!4479260 (= lt!1665892 e!2789670)))

(declare-fun c!763000 () Bool)

(assert (=> b!4479260 (= c!763000 lt!1665884)))

(declare-fun containsKey!1525 (List!50474 K!11763) Bool)

(assert (=> b!4479260 (= lt!1665884 (not (containsKey!1525 (_2!28610 (h!56130 (toList!4105 lm!1477))) key!3287)))))

(declare-fun b!4479261 () Bool)

(declare-fun Unit!89531 () Unit!89527)

(assert (=> b!4479261 (= e!2789670 Unit!89531)))

(declare-fun b!4479262 () Bool)

(assert (=> b!4479262 (= e!2789671 e!2789679)))

(declare-fun res!1859440 () Bool)

(assert (=> b!4479262 (=> res!1859440 e!2789679)))

(declare-fun lt!1665875 () Bool)

(assert (=> b!4479262 (= res!1859440 lt!1665875)))

(declare-fun lt!1665889 () Unit!89527)

(assert (=> b!4479262 (= lt!1665889 e!2789677)))

(declare-fun c!763001 () Bool)

(assert (=> b!4479262 (= c!763001 lt!1665875)))

(assert (=> b!4479262 (= lt!1665875 (contains!12932 lt!1665882 key!3287))))

(declare-fun tp_is_empty!27475 () Bool)

(declare-fun b!4479263 () Bool)

(declare-fun tp!1336561 () Bool)

(assert (=> b!4479263 (= e!2789667 (and tp_is_empty!27473 tp_is_empty!27475 tp!1336561))))

(declare-fun b!4479264 () Bool)

(declare-fun tp!1336560 () Bool)

(assert (=> b!4479264 (= e!2789673 tp!1336560)))

(declare-fun b!4479265 () Bool)

(declare-fun Unit!89532 () Unit!89527)

(assert (=> b!4479265 (= e!2789677 Unit!89532)))

(assert (= (and start!440418 res!1859449) b!4479247))

(assert (= (and b!4479247 res!1859439) b!4479245))

(assert (= (and b!4479245 res!1859445) b!4479248))

(assert (= (and b!4479248 res!1859448) b!4479244))

(assert (= (and b!4479244 res!1859447) b!4479251))

(assert (= (and b!4479251 (not res!1859441)) b!4479246))

(assert (= (and b!4479246 (not res!1859434)) b!4479257))

(assert (= (and b!4479257 (not res!1859442)) b!4479260))

(assert (= (and b!4479260 c!763000) b!4479255))

(assert (= (and b!4479260 (not c!763000)) b!4479261))

(assert (= (and b!4479260 (not res!1859444)) b!4479252))

(assert (= (and b!4479252 (not res!1859438)) b!4479243))

(assert (= (and b!4479243 (not res!1859437)) b!4479258))

(assert (= (and b!4479258 (not res!1859443)) b!4479250))

(assert (= (and b!4479250 (not res!1859435)) b!4479262))

(assert (= (and b!4479262 c!763001) b!4479256))

(assert (= (and b!4479262 (not c!763001)) b!4479265))

(assert (= (and b!4479256 res!1859433) b!4479254))

(assert (= (and b!4479262 (not res!1859440)) b!4479249))

(assert (= (and b!4479249 (not res!1859436)) b!4479253))

(assert (= (and b!4479253 (not res!1859446)) b!4479259))

(assert (= start!440418 b!4479264))

(assert (= (and start!440418 (is-Cons!50350 newBucket!178)) b!4479263))

(declare-fun m!5197235 () Bool)

(assert (=> b!4479249 m!5197235))

(declare-fun m!5197237 () Bool)

(assert (=> b!4479249 m!5197237))

(declare-fun m!5197239 () Bool)

(assert (=> b!4479249 m!5197239))

(assert (=> b!4479249 m!5197235))

(assert (=> b!4479249 m!5197239))

(declare-fun m!5197241 () Bool)

(assert (=> b!4479249 m!5197241))

(declare-fun m!5197243 () Bool)

(assert (=> b!4479249 m!5197243))

(declare-fun m!5197245 () Bool)

(assert (=> b!4479249 m!5197245))

(assert (=> b!4479249 m!5197237))

(declare-fun m!5197247 () Bool)

(assert (=> b!4479252 m!5197247))

(declare-fun m!5197249 () Bool)

(assert (=> b!4479250 m!5197249))

(declare-fun m!5197251 () Bool)

(assert (=> b!4479250 m!5197251))

(declare-fun m!5197253 () Bool)

(assert (=> b!4479256 m!5197253))

(declare-fun m!5197255 () Bool)

(assert (=> b!4479256 m!5197255))

(declare-fun m!5197257 () Bool)

(assert (=> b!4479260 m!5197257))

(declare-fun m!5197259 () Bool)

(assert (=> b!4479243 m!5197259))

(declare-fun m!5197261 () Bool)

(assert (=> b!4479243 m!5197261))

(declare-fun m!5197263 () Bool)

(assert (=> b!4479243 m!5197263))

(declare-fun m!5197265 () Bool)

(assert (=> b!4479243 m!5197265))

(declare-fun m!5197267 () Bool)

(assert (=> b!4479243 m!5197267))

(declare-fun m!5197269 () Bool)

(assert (=> b!4479243 m!5197269))

(declare-fun m!5197271 () Bool)

(assert (=> b!4479243 m!5197271))

(assert (=> b!4479243 m!5197265))

(declare-fun m!5197273 () Bool)

(assert (=> b!4479243 m!5197273))

(declare-fun m!5197275 () Bool)

(assert (=> b!4479243 m!5197275))

(declare-fun m!5197277 () Bool)

(assert (=> b!4479243 m!5197277))

(assert (=> b!4479243 m!5197273))

(assert (=> b!4479243 m!5197271))

(assert (=> b!4479243 m!5197267))

(declare-fun m!5197279 () Bool)

(assert (=> b!4479262 m!5197279))

(declare-fun m!5197281 () Bool)

(assert (=> b!4479253 m!5197281))

(declare-fun m!5197283 () Bool)

(assert (=> b!4479253 m!5197283))

(assert (=> b!4479253 m!5197281))

(assert (=> b!4479253 m!5197283))

(declare-fun m!5197285 () Bool)

(assert (=> b!4479253 m!5197285))

(declare-fun m!5197287 () Bool)

(assert (=> b!4479251 m!5197287))

(declare-fun m!5197289 () Bool)

(assert (=> b!4479251 m!5197289))

(declare-fun m!5197291 () Bool)

(assert (=> b!4479251 m!5197291))

(declare-fun m!5197293 () Bool)

(assert (=> b!4479251 m!5197293))

(declare-fun m!5197295 () Bool)

(assert (=> b!4479251 m!5197295))

(declare-fun m!5197297 () Bool)

(assert (=> b!4479251 m!5197297))

(declare-fun m!5197299 () Bool)

(assert (=> b!4479251 m!5197299))

(declare-fun m!5197301 () Bool)

(assert (=> b!4479248 m!5197301))

(declare-fun m!5197303 () Bool)

(assert (=> b!4479255 m!5197303))

(declare-fun m!5197305 () Bool)

(assert (=> b!4479245 m!5197305))

(assert (=> b!4479245 m!5197305))

(declare-fun m!5197307 () Bool)

(assert (=> b!4479245 m!5197307))

(declare-fun m!5197309 () Bool)

(assert (=> b!4479258 m!5197309))

(declare-fun m!5197311 () Bool)

(assert (=> b!4479258 m!5197311))

(declare-fun m!5197313 () Bool)

(assert (=> b!4479259 m!5197313))

(declare-fun m!5197315 () Bool)

(assert (=> b!4479259 m!5197315))

(declare-fun m!5197317 () Bool)

(assert (=> b!4479259 m!5197317))

(declare-fun m!5197319 () Bool)

(assert (=> b!4479246 m!5197319))

(declare-fun m!5197321 () Bool)

(assert (=> start!440418 m!5197321))

(declare-fun m!5197323 () Bool)

(assert (=> start!440418 m!5197323))

(declare-fun m!5197325 () Bool)

(assert (=> b!4479244 m!5197325))

(declare-fun m!5197327 () Bool)

(assert (=> b!4479247 m!5197327))

(push 1)

(assert (not b!4479251))

(assert (not b!4479263))

(assert (not b!4479243))

(assert (not b!4479260))

(assert (not b!4479259))

(assert (not b!4479253))

(assert (not b!4479258))

(assert (not b!4479256))

(assert (not b!4479250))

(assert tp_is_empty!27475)

(assert (not b!4479255))

(assert (not b!4479252))

(assert (not b!4479264))

(assert (not b!4479248))

(assert (not b!4479245))

(assert (not start!440418))

(assert (not b!4479247))

(assert (not b!4479244))

(assert (not b!4479262))

(assert tp_is_empty!27473)

(assert (not b!4479246))

(assert (not b!4479249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1370893 () Bool)

(declare-fun e!2789728 () Bool)

(assert (=> d!1370893 e!2789728))

(declare-fun res!1859505 () Bool)

(assert (=> d!1370893 (=> (not res!1859505) (not e!2789728))))

(declare-fun lt!1665978 () ListLongMap!2737)

(assert (=> d!1370893 (= res!1859505 (contains!12934 lt!1665978 (_1!28610 lt!1665894)))))

(declare-fun lt!1665977 () List!50475)

(assert (=> d!1370893 (= lt!1665978 (ListLongMap!2738 lt!1665977))))

(declare-fun lt!1665975 () Unit!89527)

(declare-fun lt!1665976 () Unit!89527)

(assert (=> d!1370893 (= lt!1665975 lt!1665976)))

(declare-datatypes ((Option!10956 0))(
  ( (None!10955) (Some!10955 (v!44317 List!50474)) )
))
(declare-fun getValueByKey!942 (List!50475 (_ BitVec 64)) Option!10956)

(assert (=> d!1370893 (= (getValueByKey!942 lt!1665977 (_1!28610 lt!1665894)) (Some!10955 (_2!28610 lt!1665894)))))

(declare-fun lemmaContainsTupThenGetReturnValue!601 (List!50475 (_ BitVec 64) List!50474) Unit!89527)

(assert (=> d!1370893 (= lt!1665976 (lemmaContainsTupThenGetReturnValue!601 lt!1665977 (_1!28610 lt!1665894) (_2!28610 lt!1665894)))))

(declare-fun insertStrictlySorted!345 (List!50475 (_ BitVec 64) List!50474) List!50475)

(assert (=> d!1370893 (= lt!1665977 (insertStrictlySorted!345 (toList!4105 lt!1665871) (_1!28610 lt!1665894) (_2!28610 lt!1665894)))))

(assert (=> d!1370893 (= (+!1399 lt!1665871 lt!1665894) lt!1665978)))

(declare-fun b!4479339 () Bool)

(declare-fun res!1859506 () Bool)

(assert (=> b!4479339 (=> (not res!1859506) (not e!2789728))))

(assert (=> b!4479339 (= res!1859506 (= (getValueByKey!942 (toList!4105 lt!1665978) (_1!28610 lt!1665894)) (Some!10955 (_2!28610 lt!1665894))))))

(declare-fun b!4479340 () Bool)

(assert (=> b!4479340 (= e!2789728 (contains!12933 (toList!4105 lt!1665978) lt!1665894))))

(assert (= (and d!1370893 res!1859505) b!4479339))

(assert (= (and b!4479339 res!1859506) b!4479340))

(declare-fun m!5197423 () Bool)

(assert (=> d!1370893 m!5197423))

(declare-fun m!5197425 () Bool)

(assert (=> d!1370893 m!5197425))

(declare-fun m!5197427 () Bool)

(assert (=> d!1370893 m!5197427))

(declare-fun m!5197429 () Bool)

(assert (=> d!1370893 m!5197429))

(declare-fun m!5197431 () Bool)

(assert (=> b!4479339 m!5197431))

(declare-fun m!5197433 () Bool)

(assert (=> b!4479340 m!5197433))

(assert (=> b!4479258 d!1370893))

(declare-fun d!1370895 () Bool)

(assert (=> d!1370895 (= (tail!7551 lm!1477) (ListLongMap!2738 (tail!7550 (toList!4105 lm!1477))))))

(declare-fun bs!823727 () Bool)

(assert (= bs!823727 d!1370895))

(assert (=> bs!823727 m!5197245))

(assert (=> b!4479258 d!1370895))

(declare-fun bs!823728 () Bool)

(declare-fun d!1370897 () Bool)

(assert (= bs!823728 (and d!1370897 start!440418)))

(declare-fun lambda!164908 () Int)

(assert (=> bs!823728 (not (= lambda!164908 lambda!164898))))

(assert (=> d!1370897 true))

(assert (=> d!1370897 (= (allKeysSameHashInMap!1156 lm!1477 hashF!1107) (forall!10037 (toList!4105 lm!1477) lambda!164908))))

(declare-fun bs!823729 () Bool)

(assert (= bs!823729 d!1370897))

(declare-fun m!5197435 () Bool)

(assert (=> bs!823729 m!5197435))

(assert (=> b!4479247 d!1370897))

(declare-fun d!1370899 () Bool)

(declare-fun res!1859511 () Bool)

(declare-fun e!2789733 () Bool)

(assert (=> d!1370899 (=> res!1859511 e!2789733)))

(assert (=> d!1370899 (= res!1859511 (is-Nil!50351 (t!357429 (toList!4105 lm!1477))))))

(assert (=> d!1370899 (= (forall!10037 (t!357429 (toList!4105 lm!1477)) lambda!164898) e!2789733)))

(declare-fun b!4479347 () Bool)

(declare-fun e!2789734 () Bool)

(assert (=> b!4479347 (= e!2789733 e!2789734)))

(declare-fun res!1859512 () Bool)

(assert (=> b!4479347 (=> (not res!1859512) (not e!2789734))))

(declare-fun dynLambda!21039 (Int tuple2!50632) Bool)

(assert (=> b!4479347 (= res!1859512 (dynLambda!21039 lambda!164898 (h!56130 (t!357429 (toList!4105 lm!1477)))))))

(declare-fun b!4479348 () Bool)

(assert (=> b!4479348 (= e!2789734 (forall!10037 (t!357429 (t!357429 (toList!4105 lm!1477))) lambda!164898))))

(assert (= (and d!1370899 (not res!1859511)) b!4479347))

(assert (= (and b!4479347 res!1859512) b!4479348))

(declare-fun b_lambda!150241 () Bool)

(assert (=> (not b_lambda!150241) (not b!4479347)))

(declare-fun m!5197437 () Bool)

(assert (=> b!4479347 m!5197437))

(declare-fun m!5197439 () Bool)

(assert (=> b!4479348 m!5197439))

(assert (=> b!4479259 d!1370899))

(declare-fun bs!823730 () Bool)

(declare-fun d!1370901 () Bool)

(assert (= bs!823730 (and d!1370901 start!440418)))

(declare-fun lambda!164911 () Int)

(assert (=> bs!823730 (= lambda!164911 lambda!164898)))

(declare-fun bs!823731 () Bool)

(assert (= bs!823731 (and d!1370901 d!1370897)))

(assert (=> bs!823731 (not (= lambda!164911 lambda!164908))))

(declare-fun lt!1665981 () ListMap!3367)

(declare-fun invariantList!942 (List!50474) Bool)

(assert (=> d!1370901 (invariantList!942 (toList!4106 lt!1665981))))

(declare-fun e!2789741 () ListMap!3367)

(assert (=> d!1370901 (= lt!1665981 e!2789741)))

(declare-fun c!763010 () Bool)

(assert (=> d!1370901 (= c!763010 (is-Cons!50351 (toList!4105 (+!1399 lm!1477 lt!1665881))))))

(assert (=> d!1370901 (forall!10037 (toList!4105 (+!1399 lm!1477 lt!1665881)) lambda!164911)))

(assert (=> d!1370901 (= (extractMap!1105 (toList!4105 (+!1399 lm!1477 lt!1665881))) lt!1665981)))

(declare-fun b!4479357 () Bool)

(assert (=> b!4479357 (= e!2789741 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (toList!4105 (+!1399 lm!1477 lt!1665881)))) (extractMap!1105 (t!357429 (toList!4105 (+!1399 lm!1477 lt!1665881))))))))

(declare-fun b!4479358 () Bool)

(assert (=> b!4479358 (= e!2789741 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370901 c!763010) b!4479357))

(assert (= (and d!1370901 (not c!763010)) b!4479358))

(declare-fun m!5197441 () Bool)

(assert (=> d!1370901 m!5197441))

(declare-fun m!5197443 () Bool)

(assert (=> d!1370901 m!5197443))

(declare-fun m!5197445 () Bool)

(assert (=> b!4479357 m!5197445))

(assert (=> b!4479357 m!5197445))

(declare-fun m!5197447 () Bool)

(assert (=> b!4479357 m!5197447))

(assert (=> b!4479259 d!1370901))

(declare-fun d!1370905 () Bool)

(declare-fun e!2789742 () Bool)

(assert (=> d!1370905 e!2789742))

(declare-fun res!1859517 () Bool)

(assert (=> d!1370905 (=> (not res!1859517) (not e!2789742))))

(declare-fun lt!1665985 () ListLongMap!2737)

(assert (=> d!1370905 (= res!1859517 (contains!12934 lt!1665985 (_1!28610 lt!1665881)))))

(declare-fun lt!1665984 () List!50475)

(assert (=> d!1370905 (= lt!1665985 (ListLongMap!2738 lt!1665984))))

(declare-fun lt!1665982 () Unit!89527)

(declare-fun lt!1665983 () Unit!89527)

(assert (=> d!1370905 (= lt!1665982 lt!1665983)))

(assert (=> d!1370905 (= (getValueByKey!942 lt!1665984 (_1!28610 lt!1665881)) (Some!10955 (_2!28610 lt!1665881)))))

(assert (=> d!1370905 (= lt!1665983 (lemmaContainsTupThenGetReturnValue!601 lt!1665984 (_1!28610 lt!1665881) (_2!28610 lt!1665881)))))

(assert (=> d!1370905 (= lt!1665984 (insertStrictlySorted!345 (toList!4105 lm!1477) (_1!28610 lt!1665881) (_2!28610 lt!1665881)))))

(assert (=> d!1370905 (= (+!1399 lm!1477 lt!1665881) lt!1665985)))

(declare-fun b!4479359 () Bool)

(declare-fun res!1859518 () Bool)

(assert (=> b!4479359 (=> (not res!1859518) (not e!2789742))))

(assert (=> b!4479359 (= res!1859518 (= (getValueByKey!942 (toList!4105 lt!1665985) (_1!28610 lt!1665881)) (Some!10955 (_2!28610 lt!1665881))))))

(declare-fun b!4479360 () Bool)

(assert (=> b!4479360 (= e!2789742 (contains!12933 (toList!4105 lt!1665985) lt!1665881))))

(assert (= (and d!1370905 res!1859517) b!4479359))

(assert (= (and b!4479359 res!1859518) b!4479360))

(declare-fun m!5197449 () Bool)

(assert (=> d!1370905 m!5197449))

(declare-fun m!5197451 () Bool)

(assert (=> d!1370905 m!5197451))

(declare-fun m!5197453 () Bool)

(assert (=> d!1370905 m!5197453))

(declare-fun m!5197455 () Bool)

(assert (=> d!1370905 m!5197455))

(declare-fun m!5197457 () Bool)

(assert (=> b!4479359 m!5197457))

(declare-fun m!5197459 () Bool)

(assert (=> b!4479360 m!5197459))

(assert (=> b!4479259 d!1370905))

(declare-fun d!1370907 () Bool)

(declare-fun hash!2524 (Hashable!5444 K!11763) (_ BitVec 64))

(assert (=> d!1370907 (= (hash!2518 hashF!1107 key!3287) (hash!2524 hashF!1107 key!3287))))

(declare-fun bs!823732 () Bool)

(assert (= bs!823732 d!1370907))

(declare-fun m!5197461 () Bool)

(assert (=> bs!823732 m!5197461))

(assert (=> b!4479248 d!1370907))

(declare-fun bs!823733 () Bool)

(declare-fun d!1370909 () Bool)

(assert (= bs!823733 (and d!1370909 start!440418)))

(declare-fun lambda!164912 () Int)

(assert (=> bs!823733 (= lambda!164912 lambda!164898)))

(declare-fun bs!823734 () Bool)

(assert (= bs!823734 (and d!1370909 d!1370897)))

(assert (=> bs!823734 (not (= lambda!164912 lambda!164908))))

(declare-fun bs!823735 () Bool)

(assert (= bs!823735 (and d!1370909 d!1370901)))

(assert (=> bs!823735 (= lambda!164912 lambda!164911)))

(declare-fun lt!1665986 () ListMap!3367)

(assert (=> d!1370909 (invariantList!942 (toList!4106 lt!1665986))))

(declare-fun e!2789743 () ListMap!3367)

(assert (=> d!1370909 (= lt!1665986 e!2789743)))

(declare-fun c!763011 () Bool)

(assert (=> d!1370909 (= c!763011 (is-Cons!50351 (t!357429 (toList!4105 lm!1477))))))

(assert (=> d!1370909 (forall!10037 (t!357429 (toList!4105 lm!1477)) lambda!164912)))

(assert (=> d!1370909 (= (extractMap!1105 (t!357429 (toList!4105 lm!1477))) lt!1665986)))

(declare-fun b!4479361 () Bool)

(assert (=> b!4479361 (= e!2789743 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (t!357429 (toList!4105 lm!1477)))) (extractMap!1105 (t!357429 (t!357429 (toList!4105 lm!1477))))))))

(declare-fun b!4479362 () Bool)

(assert (=> b!4479362 (= e!2789743 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370909 c!763011) b!4479361))

(assert (= (and d!1370909 (not c!763011)) b!4479362))

(declare-fun m!5197463 () Bool)

(assert (=> d!1370909 m!5197463))

(declare-fun m!5197465 () Bool)

(assert (=> d!1370909 m!5197465))

(declare-fun m!5197467 () Bool)

(assert (=> b!4479361 m!5197467))

(assert (=> b!4479361 m!5197467))

(declare-fun m!5197469 () Bool)

(assert (=> b!4479361 m!5197469))

(assert (=> b!4479250 d!1370909))

(declare-fun bs!823736 () Bool)

(declare-fun d!1370911 () Bool)

(assert (= bs!823736 (and d!1370911 start!440418)))

(declare-fun lambda!164913 () Int)

(assert (=> bs!823736 (= lambda!164913 lambda!164898)))

(declare-fun bs!823737 () Bool)

(assert (= bs!823737 (and d!1370911 d!1370897)))

(assert (=> bs!823737 (not (= lambda!164913 lambda!164908))))

(declare-fun bs!823738 () Bool)

(assert (= bs!823738 (and d!1370911 d!1370901)))

(assert (=> bs!823738 (= lambda!164913 lambda!164911)))

(declare-fun bs!823739 () Bool)

(assert (= bs!823739 (and d!1370911 d!1370909)))

(assert (=> bs!823739 (= lambda!164913 lambda!164912)))

(declare-fun lt!1665987 () ListMap!3367)

(assert (=> d!1370911 (invariantList!942 (toList!4106 lt!1665987))))

(declare-fun e!2789746 () ListMap!3367)

(assert (=> d!1370911 (= lt!1665987 e!2789746)))

(declare-fun c!763012 () Bool)

(assert (=> d!1370911 (= c!763012 (is-Cons!50351 (toList!4105 lt!1665871)))))

(assert (=> d!1370911 (forall!10037 (toList!4105 lt!1665871) lambda!164913)))

(assert (=> d!1370911 (= (extractMap!1105 (toList!4105 lt!1665871)) lt!1665987)))

(declare-fun b!4479365 () Bool)

(assert (=> b!4479365 (= e!2789746 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (toList!4105 lt!1665871))) (extractMap!1105 (t!357429 (toList!4105 lt!1665871)))))))

(declare-fun b!4479366 () Bool)

(assert (=> b!4479366 (= e!2789746 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370911 c!763012) b!4479365))

(assert (= (and d!1370911 (not c!763012)) b!4479366))

(declare-fun m!5197473 () Bool)

(assert (=> d!1370911 m!5197473))

(declare-fun m!5197475 () Bool)

(assert (=> d!1370911 m!5197475))

(declare-fun m!5197477 () Bool)

(assert (=> b!4479365 m!5197477))

(assert (=> b!4479365 m!5197477))

(declare-fun m!5197479 () Bool)

(assert (=> b!4479365 m!5197479))

(assert (=> b!4479250 d!1370911))

(declare-fun d!1370915 () Bool)

(declare-fun res!1859525 () Bool)

(declare-fun e!2789751 () Bool)

(assert (=> d!1370915 (=> res!1859525 e!2789751)))

(assert (=> d!1370915 (= res!1859525 (and (is-Cons!50350 (_2!28610 (h!56130 (toList!4105 lm!1477)))) (= (_1!28609 (h!56129 (_2!28610 (h!56130 (toList!4105 lm!1477))))) key!3287)))))

(assert (=> d!1370915 (= (containsKey!1525 (_2!28610 (h!56130 (toList!4105 lm!1477))) key!3287) e!2789751)))

(declare-fun b!4479371 () Bool)

(declare-fun e!2789752 () Bool)

(assert (=> b!4479371 (= e!2789751 e!2789752)))

(declare-fun res!1859526 () Bool)

(assert (=> b!4479371 (=> (not res!1859526) (not e!2789752))))

(assert (=> b!4479371 (= res!1859526 (is-Cons!50350 (_2!28610 (h!56130 (toList!4105 lm!1477)))))))

(declare-fun b!4479372 () Bool)

(assert (=> b!4479372 (= e!2789752 (containsKey!1525 (t!357428 (_2!28610 (h!56130 (toList!4105 lm!1477)))) key!3287))))

(assert (= (and d!1370915 (not res!1859525)) b!4479371))

(assert (= (and b!4479371 res!1859526) b!4479372))

(declare-fun m!5197481 () Bool)

(assert (=> b!4479372 m!5197481))

(assert (=> b!4479260 d!1370915))

(declare-fun d!1370917 () Bool)

(declare-fun e!2789755 () Bool)

(assert (=> d!1370917 e!2789755))

(declare-fun res!1859529 () Bool)

(assert (=> d!1370917 (=> (not res!1859529) (not e!2789755))))

(declare-fun lt!1665990 () ListMap!3367)

(assert (=> d!1370917 (= res!1859529 (not (contains!12932 lt!1665990 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!78 (List!50474 K!11763) List!50474)

(assert (=> d!1370917 (= lt!1665990 (ListMap!3368 (removePresrvNoDuplicatedKeys!78 (toList!4106 (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885))) key!3287)))))

(assert (=> d!1370917 (= (-!311 (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885)) key!3287) lt!1665990)))

(declare-fun b!4479375 () Bool)

(declare-datatypes ((List!50478 0))(
  ( (Nil!50354) (Cons!50354 (h!56134 K!11763) (t!357432 List!50478)) )
))
(declare-fun content!8147 (List!50478) (Set K!11763))

(declare-fun keys!17405 (ListMap!3367) List!50478)

(assert (=> b!4479375 (= e!2789755 (= (set.minus (content!8147 (keys!17405 (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885)))) (set.insert key!3287 (as set.empty (Set K!11763)))) (content!8147 (keys!17405 lt!1665990))))))

(assert (= (and d!1370917 res!1859529) b!4479375))

(declare-fun m!5197485 () Bool)

(assert (=> d!1370917 m!5197485))

(declare-fun m!5197487 () Bool)

(assert (=> d!1370917 m!5197487))

(declare-fun m!5197489 () Bool)

(assert (=> b!4479375 m!5197489))

(declare-fun m!5197491 () Bool)

(assert (=> b!4479375 m!5197491))

(declare-fun m!5197493 () Bool)

(assert (=> b!4479375 m!5197493))

(declare-fun m!5197495 () Bool)

(assert (=> b!4479375 m!5197495))

(assert (=> b!4479375 m!5197237))

(assert (=> b!4479375 m!5197493))

(assert (=> b!4479375 m!5197489))

(declare-fun m!5197497 () Bool)

(assert (=> b!4479375 m!5197497))

(assert (=> b!4479249 d!1370917))

(declare-fun d!1370921 () Bool)

(assert (=> d!1370921 (= (tail!7550 (toList!4105 lm!1477)) (t!357429 (toList!4105 lm!1477)))))

(assert (=> b!4479249 d!1370921))

(declare-fun d!1370923 () Bool)

(declare-fun content!8148 (List!50474) (Set tuple2!50630))

(assert (=> d!1370923 (= (eq!542 (extractMap!1105 (Cons!50351 lt!1665894 lt!1665885)) (-!311 (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885)) key!3287)) (= (content!8148 (toList!4106 (extractMap!1105 (Cons!50351 lt!1665894 lt!1665885)))) (content!8148 (toList!4106 (-!311 (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885)) key!3287)))))))

(declare-fun bs!823741 () Bool)

(assert (= bs!823741 d!1370923))

(declare-fun m!5197499 () Bool)

(assert (=> bs!823741 m!5197499))

(declare-fun m!5197501 () Bool)

(assert (=> bs!823741 m!5197501))

(assert (=> b!4479249 d!1370923))

(declare-fun bs!823742 () Bool)

(declare-fun d!1370925 () Bool)

(assert (= bs!823742 (and d!1370925 d!1370909)))

(declare-fun lambda!164916 () Int)

(assert (=> bs!823742 (= lambda!164916 lambda!164912)))

(declare-fun bs!823743 () Bool)

(assert (= bs!823743 (and d!1370925 d!1370897)))

(assert (=> bs!823743 (not (= lambda!164916 lambda!164908))))

(declare-fun bs!823744 () Bool)

(assert (= bs!823744 (and d!1370925 start!440418)))

(assert (=> bs!823744 (= lambda!164916 lambda!164898)))

(declare-fun bs!823745 () Bool)

(assert (= bs!823745 (and d!1370925 d!1370911)))

(assert (=> bs!823745 (= lambda!164916 lambda!164913)))

(declare-fun bs!823746 () Bool)

(assert (= bs!823746 (and d!1370925 d!1370901)))

(assert (=> bs!823746 (= lambda!164916 lambda!164911)))

(assert (=> d!1370925 (eq!542 (extractMap!1105 (Cons!50351 (tuple2!50633 hash!344 newBucket!178) (tail!7550 (toList!4105 lm!1477)))) (-!311 (extractMap!1105 (Cons!50351 (tuple2!50633 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477)))) (tail!7550 (toList!4105 lm!1477)))) key!3287))))

(declare-fun lt!1665993 () Unit!89527)

(declare-fun choose!28720 (ListLongMap!2737 (_ BitVec 64) List!50474 List!50474 K!11763 Hashable!5444) Unit!89527)

(assert (=> d!1370925 (= lt!1665993 (choose!28720 lm!1477 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1370925 (forall!10037 (toList!4105 lm!1477) lambda!164916)))

(assert (=> d!1370925 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!9 lm!1477 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1665993)))

(declare-fun bs!823747 () Bool)

(assert (= bs!823747 d!1370925))

(declare-fun m!5197503 () Bool)

(assert (=> bs!823747 m!5197503))

(declare-fun m!5197505 () Bool)

(assert (=> bs!823747 m!5197505))

(declare-fun m!5197507 () Bool)

(assert (=> bs!823747 m!5197507))

(declare-fun m!5197509 () Bool)

(assert (=> bs!823747 m!5197509))

(assert (=> bs!823747 m!5197245))

(assert (=> bs!823747 m!5197509))

(declare-fun m!5197511 () Bool)

(assert (=> bs!823747 m!5197511))

(assert (=> bs!823747 m!5197505))

(assert (=> bs!823747 m!5197511))

(declare-fun m!5197513 () Bool)

(assert (=> bs!823747 m!5197513))

(assert (=> b!4479249 d!1370925))

(declare-fun bs!823748 () Bool)

(declare-fun d!1370927 () Bool)

(assert (= bs!823748 (and d!1370927 d!1370909)))

(declare-fun lambda!164917 () Int)

(assert (=> bs!823748 (= lambda!164917 lambda!164912)))

(declare-fun bs!823749 () Bool)

(assert (= bs!823749 (and d!1370927 d!1370897)))

(assert (=> bs!823749 (not (= lambda!164917 lambda!164908))))

(declare-fun bs!823750 () Bool)

(assert (= bs!823750 (and d!1370927 start!440418)))

(assert (=> bs!823750 (= lambda!164917 lambda!164898)))

(declare-fun bs!823751 () Bool)

(assert (= bs!823751 (and d!1370927 d!1370925)))

(assert (=> bs!823751 (= lambda!164917 lambda!164916)))

(declare-fun bs!823752 () Bool)

(assert (= bs!823752 (and d!1370927 d!1370911)))

(assert (=> bs!823752 (= lambda!164917 lambda!164913)))

(declare-fun bs!823753 () Bool)

(assert (= bs!823753 (and d!1370927 d!1370901)))

(assert (=> bs!823753 (= lambda!164917 lambda!164911)))

(declare-fun lt!1665994 () ListMap!3367)

(assert (=> d!1370927 (invariantList!942 (toList!4106 lt!1665994))))

(declare-fun e!2789756 () ListMap!3367)

(assert (=> d!1370927 (= lt!1665994 e!2789756)))

(declare-fun c!763013 () Bool)

(assert (=> d!1370927 (= c!763013 (is-Cons!50351 (Cons!50351 lt!1665894 lt!1665885)))))

(assert (=> d!1370927 (forall!10037 (Cons!50351 lt!1665894 lt!1665885) lambda!164917)))

(assert (=> d!1370927 (= (extractMap!1105 (Cons!50351 lt!1665894 lt!1665885)) lt!1665994)))

(declare-fun b!4479376 () Bool)

(assert (=> b!4479376 (= e!2789756 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (Cons!50351 lt!1665894 lt!1665885))) (extractMap!1105 (t!357429 (Cons!50351 lt!1665894 lt!1665885)))))))

(declare-fun b!4479377 () Bool)

(assert (=> b!4479377 (= e!2789756 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370927 c!763013) b!4479376))

(assert (= (and d!1370927 (not c!763013)) b!4479377))

(declare-fun m!5197515 () Bool)

(assert (=> d!1370927 m!5197515))

(declare-fun m!5197517 () Bool)

(assert (=> d!1370927 m!5197517))

(declare-fun m!5197519 () Bool)

(assert (=> b!4479376 m!5197519))

(assert (=> b!4479376 m!5197519))

(declare-fun m!5197521 () Bool)

(assert (=> b!4479376 m!5197521))

(assert (=> b!4479249 d!1370927))

(declare-fun bs!823754 () Bool)

(declare-fun d!1370929 () Bool)

(assert (= bs!823754 (and d!1370929 d!1370927)))

(declare-fun lambda!164920 () Int)

(assert (=> bs!823754 (= lambda!164920 lambda!164917)))

(declare-fun bs!823755 () Bool)

(assert (= bs!823755 (and d!1370929 d!1370909)))

(assert (=> bs!823755 (= lambda!164920 lambda!164912)))

(declare-fun bs!823756 () Bool)

(assert (= bs!823756 (and d!1370929 d!1370897)))

(assert (=> bs!823756 (not (= lambda!164920 lambda!164908))))

(declare-fun bs!823757 () Bool)

(assert (= bs!823757 (and d!1370929 start!440418)))

(assert (=> bs!823757 (= lambda!164920 lambda!164898)))

(declare-fun bs!823758 () Bool)

(assert (= bs!823758 (and d!1370929 d!1370925)))

(assert (=> bs!823758 (= lambda!164920 lambda!164916)))

(declare-fun bs!823759 () Bool)

(assert (= bs!823759 (and d!1370929 d!1370911)))

(assert (=> bs!823759 (= lambda!164920 lambda!164913)))

(declare-fun bs!823760 () Bool)

(assert (= bs!823760 (and d!1370929 d!1370901)))

(assert (=> bs!823760 (= lambda!164920 lambda!164911)))

(declare-fun lt!1665995 () ListMap!3367)

(assert (=> d!1370929 (invariantList!942 (toList!4106 lt!1665995))))

(declare-fun e!2789757 () ListMap!3367)

(assert (=> d!1370929 (= lt!1665995 e!2789757)))

(declare-fun c!763014 () Bool)

(assert (=> d!1370929 (= c!763014 (is-Cons!50351 (Cons!50351 lt!1665881 lt!1665885)))))

(assert (=> d!1370929 (forall!10037 (Cons!50351 lt!1665881 lt!1665885) lambda!164920)))

(assert (=> d!1370929 (= (extractMap!1105 (Cons!50351 lt!1665881 lt!1665885)) lt!1665995)))

(declare-fun b!4479378 () Bool)

(assert (=> b!4479378 (= e!2789757 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (Cons!50351 lt!1665881 lt!1665885))) (extractMap!1105 (t!357429 (Cons!50351 lt!1665881 lt!1665885)))))))

(declare-fun b!4479379 () Bool)

(assert (=> b!4479379 (= e!2789757 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370929 c!763014) b!4479378))

(assert (= (and d!1370929 (not c!763014)) b!4479379))

(declare-fun m!5197523 () Bool)

(assert (=> d!1370929 m!5197523))

(declare-fun m!5197525 () Bool)

(assert (=> d!1370929 m!5197525))

(declare-fun m!5197527 () Bool)

(assert (=> b!4479378 m!5197527))

(assert (=> b!4479378 m!5197527))

(declare-fun m!5197529 () Bool)

(assert (=> b!4479378 m!5197529))

(assert (=> b!4479249 d!1370929))

(declare-fun b!4479404 () Bool)

(declare-fun e!2789776 () Unit!89527)

(declare-fun Unit!89539 () Unit!89527)

(assert (=> b!4479404 (= e!2789776 Unit!89539)))

(declare-fun b!4479405 () Bool)

(declare-fun e!2789778 () Unit!89527)

(declare-fun lt!1666019 () Unit!89527)

(assert (=> b!4479405 (= e!2789778 lt!1666019)))

(declare-fun lt!1666021 () Unit!89527)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!846 (List!50474 K!11763) Unit!89527)

(assert (=> b!4479405 (= lt!1666021 (lemmaContainsKeyImpliesGetValueByKeyDefined!846 (toList!4106 lt!1665882) key!3287))))

(declare-datatypes ((Option!10957 0))(
  ( (None!10956) (Some!10956 (v!44318 V!12009)) )
))
(declare-fun isDefined!8243 (Option!10957) Bool)

(declare-fun getValueByKey!943 (List!50474 K!11763) Option!10957)

(assert (=> b!4479405 (isDefined!8243 (getValueByKey!943 (toList!4106 lt!1665882) key!3287))))

(declare-fun lt!1666022 () Unit!89527)

(assert (=> b!4479405 (= lt!1666022 lt!1666021)))

(declare-fun lemmaInListThenGetKeysListContains!386 (List!50474 K!11763) Unit!89527)

(assert (=> b!4479405 (= lt!1666019 (lemmaInListThenGetKeysListContains!386 (toList!4106 lt!1665882) key!3287))))

(declare-fun call!311952 () Bool)

(assert (=> b!4479405 call!311952))

(declare-fun d!1370931 () Bool)

(declare-fun e!2789775 () Bool)

(assert (=> d!1370931 e!2789775))

(declare-fun res!1859536 () Bool)

(assert (=> d!1370931 (=> res!1859536 e!2789775)))

(declare-fun e!2789777 () Bool)

(assert (=> d!1370931 (= res!1859536 e!2789777)))

(declare-fun res!1859538 () Bool)

(assert (=> d!1370931 (=> (not res!1859538) (not e!2789777))))

(declare-fun lt!1666016 () Bool)

(assert (=> d!1370931 (= res!1859538 (not lt!1666016))))

(declare-fun lt!1666020 () Bool)

(assert (=> d!1370931 (= lt!1666016 lt!1666020)))

(declare-fun lt!1666015 () Unit!89527)

(assert (=> d!1370931 (= lt!1666015 e!2789778)))

(declare-fun c!763024 () Bool)

(assert (=> d!1370931 (= c!763024 lt!1666020)))

(declare-fun containsKey!1527 (List!50474 K!11763) Bool)

(assert (=> d!1370931 (= lt!1666020 (containsKey!1527 (toList!4106 lt!1665882) key!3287))))

(assert (=> d!1370931 (= (contains!12932 lt!1665882 key!3287) lt!1666016)))

(declare-fun b!4479406 () Bool)

(declare-fun contains!12938 (List!50478 K!11763) Bool)

(assert (=> b!4479406 (= e!2789777 (not (contains!12938 (keys!17405 lt!1665882) key!3287)))))

(declare-fun b!4479407 () Bool)

(assert (=> b!4479407 false))

(declare-fun lt!1666018 () Unit!89527)

(declare-fun lt!1666017 () Unit!89527)

(assert (=> b!4479407 (= lt!1666018 lt!1666017)))

(assert (=> b!4479407 (containsKey!1527 (toList!4106 lt!1665882) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!389 (List!50474 K!11763) Unit!89527)

(assert (=> b!4479407 (= lt!1666017 (lemmaInGetKeysListThenContainsKey!389 (toList!4106 lt!1665882) key!3287))))

(declare-fun Unit!89540 () Unit!89527)

(assert (=> b!4479407 (= e!2789776 Unit!89540)))

(declare-fun b!4479408 () Bool)

(declare-fun e!2789774 () Bool)

(assert (=> b!4479408 (= e!2789774 (contains!12938 (keys!17405 lt!1665882) key!3287))))

(declare-fun b!4479409 () Bool)

(declare-fun e!2789773 () List!50478)

(declare-fun getKeysList!390 (List!50474) List!50478)

(assert (=> b!4479409 (= e!2789773 (getKeysList!390 (toList!4106 lt!1665882)))))

(declare-fun bm!311947 () Bool)

(assert (=> bm!311947 (= call!311952 (contains!12938 e!2789773 key!3287))))

(declare-fun c!763025 () Bool)

(assert (=> bm!311947 (= c!763025 c!763024)))

(declare-fun b!4479410 () Bool)

(assert (=> b!4479410 (= e!2789775 e!2789774)))

(declare-fun res!1859537 () Bool)

(assert (=> b!4479410 (=> (not res!1859537) (not e!2789774))))

(assert (=> b!4479410 (= res!1859537 (isDefined!8243 (getValueByKey!943 (toList!4106 lt!1665882) key!3287)))))

(declare-fun b!4479411 () Bool)

(assert (=> b!4479411 (= e!2789773 (keys!17405 lt!1665882))))

(declare-fun b!4479412 () Bool)

(assert (=> b!4479412 (= e!2789778 e!2789776)))

(declare-fun c!763026 () Bool)

(assert (=> b!4479412 (= c!763026 call!311952)))

(assert (= (and d!1370931 c!763024) b!4479405))

(assert (= (and d!1370931 (not c!763024)) b!4479412))

(assert (= (and b!4479412 c!763026) b!4479407))

(assert (= (and b!4479412 (not c!763026)) b!4479404))

(assert (= (or b!4479405 b!4479412) bm!311947))

(assert (= (and bm!311947 c!763025) b!4479409))

(assert (= (and bm!311947 (not c!763025)) b!4479411))

(assert (= (and d!1370931 res!1859538) b!4479406))

(assert (= (and d!1370931 (not res!1859536)) b!4479410))

(assert (= (and b!4479410 res!1859537) b!4479408))

(declare-fun m!5197539 () Bool)

(assert (=> b!4479406 m!5197539))

(assert (=> b!4479406 m!5197539))

(declare-fun m!5197541 () Bool)

(assert (=> b!4479406 m!5197541))

(assert (=> b!4479411 m!5197539))

(declare-fun m!5197543 () Bool)

(assert (=> bm!311947 m!5197543))

(declare-fun m!5197545 () Bool)

(assert (=> b!4479405 m!5197545))

(declare-fun m!5197547 () Bool)

(assert (=> b!4479405 m!5197547))

(assert (=> b!4479405 m!5197547))

(declare-fun m!5197549 () Bool)

(assert (=> b!4479405 m!5197549))

(declare-fun m!5197551 () Bool)

(assert (=> b!4479405 m!5197551))

(declare-fun m!5197553 () Bool)

(assert (=> b!4479407 m!5197553))

(declare-fun m!5197555 () Bool)

(assert (=> b!4479407 m!5197555))

(assert (=> b!4479408 m!5197539))

(assert (=> b!4479408 m!5197539))

(assert (=> b!4479408 m!5197541))

(declare-fun m!5197557 () Bool)

(assert (=> b!4479409 m!5197557))

(assert (=> b!4479410 m!5197547))

(assert (=> b!4479410 m!5197547))

(assert (=> b!4479410 m!5197549))

(assert (=> d!1370931 m!5197553))

(assert (=> b!4479262 d!1370931))

(declare-fun bs!823762 () Bool)

(declare-fun d!1370935 () Bool)

(assert (= bs!823762 (and d!1370935 d!1370927)))

(declare-fun lambda!164924 () Int)

(assert (=> bs!823762 (= lambda!164924 lambda!164917)))

(declare-fun bs!823763 () Bool)

(assert (= bs!823763 (and d!1370935 d!1370909)))

(assert (=> bs!823763 (= lambda!164924 lambda!164912)))

(declare-fun bs!823764 () Bool)

(assert (= bs!823764 (and d!1370935 start!440418)))

(assert (=> bs!823764 (= lambda!164924 lambda!164898)))

(declare-fun bs!823765 () Bool)

(assert (= bs!823765 (and d!1370935 d!1370925)))

(assert (=> bs!823765 (= lambda!164924 lambda!164916)))

(declare-fun bs!823766 () Bool)

(assert (= bs!823766 (and d!1370935 d!1370911)))

(assert (=> bs!823766 (= lambda!164924 lambda!164913)))

(declare-fun bs!823767 () Bool)

(assert (= bs!823767 (and d!1370935 d!1370901)))

(assert (=> bs!823767 (= lambda!164924 lambda!164911)))

(declare-fun bs!823768 () Bool)

(assert (= bs!823768 (and d!1370935 d!1370929)))

(assert (=> bs!823768 (= lambda!164924 lambda!164920)))

(declare-fun bs!823769 () Bool)

(assert (= bs!823769 (and d!1370935 d!1370897)))

(assert (=> bs!823769 (not (= lambda!164924 lambda!164908))))

(assert (=> d!1370935 (contains!12934 lm!1477 (hash!2518 hashF!1107 key!3287))))

(declare-fun lt!1666025 () Unit!89527)

(declare-fun choose!28721 (ListLongMap!2737 K!11763 Hashable!5444) Unit!89527)

(assert (=> d!1370935 (= lt!1666025 (choose!28721 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1370935 (forall!10037 (toList!4105 lm!1477) lambda!164924)))

(assert (=> d!1370935 (= (lemmaInGenMapThenLongMapContainsHash!123 lm!1477 key!3287 hashF!1107) lt!1666025)))

(declare-fun bs!823770 () Bool)

(assert (= bs!823770 d!1370935))

(assert (=> bs!823770 m!5197301))

(assert (=> bs!823770 m!5197301))

(declare-fun m!5197559 () Bool)

(assert (=> bs!823770 m!5197559))

(declare-fun m!5197561 () Bool)

(assert (=> bs!823770 m!5197561))

(declare-fun m!5197563 () Bool)

(assert (=> bs!823770 m!5197563))

(assert (=> b!4479251 d!1370935))

(declare-fun d!1370937 () Bool)

(assert (=> d!1370937 (contains!12933 (toList!4105 lm!1477) (tuple2!50633 hash!344 lt!1665886))))

(declare-fun lt!1666028 () Unit!89527)

(declare-fun choose!28722 (List!50475 (_ BitVec 64) List!50474) Unit!89527)

(assert (=> d!1370937 (= lt!1666028 (choose!28722 (toList!4105 lm!1477) hash!344 lt!1665886))))

(declare-fun e!2789781 () Bool)

(assert (=> d!1370937 e!2789781))

(declare-fun res!1859541 () Bool)

(assert (=> d!1370937 (=> (not res!1859541) (not e!2789781))))

(declare-fun isStrictlySorted!356 (List!50475) Bool)

(assert (=> d!1370937 (= res!1859541 (isStrictlySorted!356 (toList!4105 lm!1477)))))

(assert (=> d!1370937 (= (lemmaGetValueByKeyImpliesContainsTuple!561 (toList!4105 lm!1477) hash!344 lt!1665886) lt!1666028)))

(declare-fun b!4479415 () Bool)

(assert (=> b!4479415 (= e!2789781 (= (getValueByKey!942 (toList!4105 lm!1477) hash!344) (Some!10955 lt!1665886)))))

(assert (= (and d!1370937 res!1859541) b!4479415))

(declare-fun m!5197565 () Bool)

(assert (=> d!1370937 m!5197565))

(declare-fun m!5197567 () Bool)

(assert (=> d!1370937 m!5197567))

(declare-fun m!5197569 () Bool)

(assert (=> d!1370937 m!5197569))

(declare-fun m!5197571 () Bool)

(assert (=> b!4479415 m!5197571))

(assert (=> b!4479251 d!1370937))

(declare-fun d!1370939 () Bool)

(declare-fun e!2789786 () Bool)

(assert (=> d!1370939 e!2789786))

(declare-fun res!1859544 () Bool)

(assert (=> d!1370939 (=> res!1859544 e!2789786)))

(declare-fun lt!1666041 () Bool)

(assert (=> d!1370939 (= res!1859544 (not lt!1666041))))

(declare-fun lt!1666039 () Bool)

(assert (=> d!1370939 (= lt!1666041 lt!1666039)))

(declare-fun lt!1666042 () Unit!89527)

(declare-fun e!2789787 () Unit!89527)

(assert (=> d!1370939 (= lt!1666042 e!2789787)))

(declare-fun c!763029 () Bool)

(assert (=> d!1370939 (= c!763029 lt!1666039)))

(declare-fun containsKey!1528 (List!50475 (_ BitVec 64)) Bool)

(assert (=> d!1370939 (= lt!1666039 (containsKey!1528 (toList!4105 lm!1477) lt!1665877))))

(assert (=> d!1370939 (= (contains!12934 lm!1477 lt!1665877) lt!1666041)))

(declare-fun b!4479422 () Bool)

(declare-fun lt!1666040 () Unit!89527)

(assert (=> b!4479422 (= e!2789787 lt!1666040)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!847 (List!50475 (_ BitVec 64)) Unit!89527)

(assert (=> b!4479422 (= lt!1666040 (lemmaContainsKeyImpliesGetValueByKeyDefined!847 (toList!4105 lm!1477) lt!1665877))))

(declare-fun isDefined!8244 (Option!10956) Bool)

(assert (=> b!4479422 (isDefined!8244 (getValueByKey!942 (toList!4105 lm!1477) lt!1665877))))

(declare-fun b!4479423 () Bool)

(declare-fun Unit!89541 () Unit!89527)

(assert (=> b!4479423 (= e!2789787 Unit!89541)))

(declare-fun b!4479424 () Bool)

(assert (=> b!4479424 (= e!2789786 (isDefined!8244 (getValueByKey!942 (toList!4105 lm!1477) lt!1665877)))))

(assert (= (and d!1370939 c!763029) b!4479422))

(assert (= (and d!1370939 (not c!763029)) b!4479423))

(assert (= (and d!1370939 (not res!1859544)) b!4479424))

(declare-fun m!5197573 () Bool)

(assert (=> d!1370939 m!5197573))

(declare-fun m!5197575 () Bool)

(assert (=> b!4479422 m!5197575))

(declare-fun m!5197577 () Bool)

(assert (=> b!4479422 m!5197577))

(assert (=> b!4479422 m!5197577))

(declare-fun m!5197579 () Bool)

(assert (=> b!4479422 m!5197579))

(assert (=> b!4479424 m!5197577))

(assert (=> b!4479424 m!5197577))

(assert (=> b!4479424 m!5197579))

(assert (=> b!4479251 d!1370939))

(declare-fun d!1370941 () Bool)

(declare-fun lt!1666046 () Bool)

(declare-fun content!8149 (List!50475) (Set tuple2!50632))

(assert (=> d!1370941 (= lt!1666046 (set.member lt!1665873 (content!8149 (toList!4105 lm!1477))))))

(declare-fun e!2789792 () Bool)

(assert (=> d!1370941 (= lt!1666046 e!2789792)))

(declare-fun res!1859550 () Bool)

(assert (=> d!1370941 (=> (not res!1859550) (not e!2789792))))

(assert (=> d!1370941 (= res!1859550 (is-Cons!50351 (toList!4105 lm!1477)))))

(assert (=> d!1370941 (= (contains!12933 (toList!4105 lm!1477) lt!1665873) lt!1666046)))

(declare-fun b!4479429 () Bool)

(declare-fun e!2789793 () Bool)

(assert (=> b!4479429 (= e!2789792 e!2789793)))

(declare-fun res!1859549 () Bool)

(assert (=> b!4479429 (=> res!1859549 e!2789793)))

(assert (=> b!4479429 (= res!1859549 (= (h!56130 (toList!4105 lm!1477)) lt!1665873))))

(declare-fun b!4479430 () Bool)

(assert (=> b!4479430 (= e!2789793 (contains!12933 (t!357429 (toList!4105 lm!1477)) lt!1665873))))

(assert (= (and d!1370941 res!1859550) b!4479429))

(assert (= (and b!4479429 (not res!1859549)) b!4479430))

(declare-fun m!5197589 () Bool)

(assert (=> d!1370941 m!5197589))

(declare-fun m!5197591 () Bool)

(assert (=> d!1370941 m!5197591))

(declare-fun m!5197593 () Bool)

(assert (=> b!4479430 m!5197593))

(assert (=> b!4479251 d!1370941))

(declare-fun d!1370945 () Bool)

(assert (=> d!1370945 (dynLambda!21039 lambda!164898 lt!1665873)))

(declare-fun lt!1666049 () Unit!89527)

(declare-fun choose!28723 (List!50475 Int tuple2!50632) Unit!89527)

(assert (=> d!1370945 (= lt!1666049 (choose!28723 (toList!4105 lm!1477) lambda!164898 lt!1665873))))

(declare-fun e!2789796 () Bool)

(assert (=> d!1370945 e!2789796))

(declare-fun res!1859553 () Bool)

(assert (=> d!1370945 (=> (not res!1859553) (not e!2789796))))

(assert (=> d!1370945 (= res!1859553 (forall!10037 (toList!4105 lm!1477) lambda!164898))))

(assert (=> d!1370945 (= (forallContained!2298 (toList!4105 lm!1477) lambda!164898 lt!1665873) lt!1666049)))

(declare-fun b!4479433 () Bool)

(assert (=> b!4479433 (= e!2789796 (contains!12933 (toList!4105 lm!1477) lt!1665873))))

(assert (= (and d!1370945 res!1859553) b!4479433))

(declare-fun b_lambda!150245 () Bool)

(assert (=> (not b_lambda!150245) (not d!1370945)))

(declare-fun m!5197595 () Bool)

(assert (=> d!1370945 m!5197595))

(declare-fun m!5197597 () Bool)

(assert (=> d!1370945 m!5197597))

(assert (=> d!1370945 m!5197321))

(assert (=> b!4479433 m!5197299))

(assert (=> b!4479251 d!1370945))

(declare-fun b!4479444 () Bool)

(declare-fun e!2789801 () List!50474)

(assert (=> b!4479444 (= e!2789801 (Cons!50350 (h!56129 lt!1665886) (removePairForKey!676 (t!357428 lt!1665886) key!3287)))))

(declare-fun d!1370947 () Bool)

(declare-fun lt!1666052 () List!50474)

(assert (=> d!1370947 (not (containsKey!1525 lt!1666052 key!3287))))

(declare-fun e!2789802 () List!50474)

(assert (=> d!1370947 (= lt!1666052 e!2789802)))

(declare-fun c!763034 () Bool)

(assert (=> d!1370947 (= c!763034 (and (is-Cons!50350 lt!1665886) (= (_1!28609 (h!56129 lt!1665886)) key!3287)))))

(assert (=> d!1370947 (noDuplicateKeys!1049 lt!1665886)))

(assert (=> d!1370947 (= (removePairForKey!676 lt!1665886 key!3287) lt!1666052)))

(declare-fun b!4479445 () Bool)

(assert (=> b!4479445 (= e!2789801 Nil!50350)))

(declare-fun b!4479443 () Bool)

(assert (=> b!4479443 (= e!2789802 e!2789801)))

(declare-fun c!763035 () Bool)

(assert (=> b!4479443 (= c!763035 (is-Cons!50350 lt!1665886))))

(declare-fun b!4479442 () Bool)

(assert (=> b!4479442 (= e!2789802 (t!357428 lt!1665886))))

(assert (= (and d!1370947 c!763034) b!4479442))

(assert (= (and d!1370947 (not c!763034)) b!4479443))

(assert (= (and b!4479443 c!763035) b!4479444))

(assert (= (and b!4479443 (not c!763035)) b!4479445))

(declare-fun m!5197599 () Bool)

(assert (=> b!4479444 m!5197599))

(declare-fun m!5197601 () Bool)

(assert (=> d!1370947 m!5197601))

(declare-fun m!5197603 () Bool)

(assert (=> d!1370947 m!5197603))

(assert (=> b!4479251 d!1370947))

(declare-fun d!1370949 () Bool)

(declare-fun get!16427 (Option!10956) List!50474)

(assert (=> d!1370949 (= (apply!11786 lm!1477 hash!344) (get!16427 (getValueByKey!942 (toList!4105 lm!1477) hash!344)))))

(declare-fun bs!823774 () Bool)

(assert (= bs!823774 d!1370949))

(assert (=> bs!823774 m!5197571))

(assert (=> bs!823774 m!5197571))

(declare-fun m!5197605 () Bool)

(assert (=> bs!823774 m!5197605))

(assert (=> b!4479251 d!1370949))

(declare-fun d!1370951 () Bool)

(declare-fun res!1859554 () Bool)

(declare-fun e!2789803 () Bool)

(assert (=> d!1370951 (=> res!1859554 e!2789803)))

(assert (=> d!1370951 (= res!1859554 (is-Nil!50351 (toList!4105 lm!1477)))))

(assert (=> d!1370951 (= (forall!10037 (toList!4105 lm!1477) lambda!164898) e!2789803)))

(declare-fun b!4479446 () Bool)

(declare-fun e!2789804 () Bool)

(assert (=> b!4479446 (= e!2789803 e!2789804)))

(declare-fun res!1859555 () Bool)

(assert (=> b!4479446 (=> (not res!1859555) (not e!2789804))))

(assert (=> b!4479446 (= res!1859555 (dynLambda!21039 lambda!164898 (h!56130 (toList!4105 lm!1477))))))

(declare-fun b!4479447 () Bool)

(assert (=> b!4479447 (= e!2789804 (forall!10037 (t!357429 (toList!4105 lm!1477)) lambda!164898))))

(assert (= (and d!1370951 (not res!1859554)) b!4479446))

(assert (= (and b!4479446 res!1859555) b!4479447))

(declare-fun b_lambda!150247 () Bool)

(assert (=> (not b_lambda!150247) (not b!4479446)))

(declare-fun m!5197607 () Bool)

(assert (=> b!4479446 m!5197607))

(assert (=> b!4479447 m!5197313))

(assert (=> start!440418 d!1370951))

(declare-fun d!1370953 () Bool)

(assert (=> d!1370953 (= (inv!65948 lm!1477) (isStrictlySorted!356 (toList!4105 lm!1477)))))

(declare-fun bs!823775 () Bool)

(assert (= bs!823775 d!1370953))

(assert (=> bs!823775 m!5197569))

(assert (=> start!440418 d!1370953))

(declare-fun d!1370955 () Bool)

(declare-fun res!1859563 () Bool)

(declare-fun e!2789813 () Bool)

(assert (=> d!1370955 (=> res!1859563 e!2789813)))

(declare-fun e!2789811 () Bool)

(assert (=> d!1370955 (= res!1859563 e!2789811)))

(declare-fun res!1859562 () Bool)

(assert (=> d!1370955 (=> (not res!1859562) (not e!2789811))))

(assert (=> d!1370955 (= res!1859562 (is-Cons!50351 lt!1665883))))

(assert (=> d!1370955 (= (containsKeyBiggerList!49 lt!1665883 key!3287) e!2789813)))

(declare-fun b!4479454 () Bool)

(assert (=> b!4479454 (= e!2789811 (containsKey!1525 (_2!28610 (h!56130 lt!1665883)) key!3287))))

(declare-fun b!4479455 () Bool)

(declare-fun e!2789812 () Bool)

(assert (=> b!4479455 (= e!2789813 e!2789812)))

(declare-fun res!1859564 () Bool)

(assert (=> b!4479455 (=> (not res!1859564) (not e!2789812))))

(assert (=> b!4479455 (= res!1859564 (is-Cons!50351 lt!1665883))))

(declare-fun b!4479456 () Bool)

(assert (=> b!4479456 (= e!2789812 (containsKeyBiggerList!49 (t!357429 lt!1665883) key!3287))))

(assert (= (and d!1370955 res!1859562) b!4479454))

(assert (= (and d!1370955 (not res!1859563)) b!4479455))

(assert (= (and b!4479455 res!1859564) b!4479456))

(declare-fun m!5197609 () Bool)

(assert (=> b!4479454 m!5197609))

(declare-fun m!5197611 () Bool)

(assert (=> b!4479456 m!5197611))

(assert (=> b!4479252 d!1370955))

(declare-fun bs!823776 () Bool)

(declare-fun d!1370957 () Bool)

(assert (= bs!823776 (and d!1370957 d!1370927)))

(declare-fun lambda!164930 () Int)

(assert (=> bs!823776 (= lambda!164930 lambda!164917)))

(declare-fun bs!823777 () Bool)

(assert (= bs!823777 (and d!1370957 d!1370935)))

(assert (=> bs!823777 (= lambda!164930 lambda!164924)))

(declare-fun bs!823778 () Bool)

(assert (= bs!823778 (and d!1370957 d!1370909)))

(assert (=> bs!823778 (= lambda!164930 lambda!164912)))

(declare-fun bs!823779 () Bool)

(assert (= bs!823779 (and d!1370957 start!440418)))

(assert (=> bs!823779 (= lambda!164930 lambda!164898)))

(declare-fun bs!823780 () Bool)

(assert (= bs!823780 (and d!1370957 d!1370925)))

(assert (=> bs!823780 (= lambda!164930 lambda!164916)))

(declare-fun bs!823781 () Bool)

(assert (= bs!823781 (and d!1370957 d!1370911)))

(assert (=> bs!823781 (= lambda!164930 lambda!164913)))

(declare-fun bs!823782 () Bool)

(assert (= bs!823782 (and d!1370957 d!1370901)))

(assert (=> bs!823782 (= lambda!164930 lambda!164911)))

(declare-fun bs!823783 () Bool)

(assert (= bs!823783 (and d!1370957 d!1370929)))

(assert (=> bs!823783 (= lambda!164930 lambda!164920)))

(declare-fun bs!823784 () Bool)

(assert (= bs!823784 (and d!1370957 d!1370897)))

(assert (=> bs!823784 (not (= lambda!164930 lambda!164908))))

(assert (=> d!1370957 (contains!12932 (extractMap!1105 (toList!4105 (ListLongMap!2738 lt!1665883))) key!3287)))

(declare-fun lt!1666058 () Unit!89527)

(declare-fun choose!28724 (ListLongMap!2737 K!11763 Hashable!5444) Unit!89527)

(assert (=> d!1370957 (= lt!1666058 (choose!28724 (ListLongMap!2738 lt!1665883) key!3287 hashF!1107))))

(assert (=> d!1370957 (forall!10037 (toList!4105 (ListLongMap!2738 lt!1665883)) lambda!164930)))

(assert (=> d!1370957 (= (lemmaListContainsThenExtractedMapContains!45 (ListLongMap!2738 lt!1665883) key!3287 hashF!1107) lt!1666058)))

(declare-fun bs!823785 () Bool)

(assert (= bs!823785 d!1370957))

(declare-fun m!5197627 () Bool)

(assert (=> bs!823785 m!5197627))

(assert (=> bs!823785 m!5197627))

(declare-fun m!5197629 () Bool)

(assert (=> bs!823785 m!5197629))

(declare-fun m!5197631 () Bool)

(assert (=> bs!823785 m!5197631))

(declare-fun m!5197633 () Bool)

(assert (=> bs!823785 m!5197633))

(assert (=> b!4479243 d!1370957))

(declare-fun bs!823786 () Bool)

(declare-fun d!1370961 () Bool)

(assert (= bs!823786 (and d!1370961 d!1370927)))

(declare-fun lambda!164931 () Int)

(assert (=> bs!823786 (= lambda!164931 lambda!164917)))

(declare-fun bs!823787 () Bool)

(assert (= bs!823787 (and d!1370961 d!1370935)))

(assert (=> bs!823787 (= lambda!164931 lambda!164924)))

(declare-fun bs!823788 () Bool)

(assert (= bs!823788 (and d!1370961 start!440418)))

(assert (=> bs!823788 (= lambda!164931 lambda!164898)))

(declare-fun bs!823789 () Bool)

(assert (= bs!823789 (and d!1370961 d!1370925)))

(assert (=> bs!823789 (= lambda!164931 lambda!164916)))

(declare-fun bs!823790 () Bool)

(assert (= bs!823790 (and d!1370961 d!1370911)))

(assert (=> bs!823790 (= lambda!164931 lambda!164913)))

(declare-fun bs!823791 () Bool)

(assert (= bs!823791 (and d!1370961 d!1370901)))

(assert (=> bs!823791 (= lambda!164931 lambda!164911)))

(declare-fun bs!823792 () Bool)

(assert (= bs!823792 (and d!1370961 d!1370909)))

(assert (=> bs!823792 (= lambda!164931 lambda!164912)))

(declare-fun bs!823793 () Bool)

(assert (= bs!823793 (and d!1370961 d!1370957)))

(assert (=> bs!823793 (= lambda!164931 lambda!164930)))

(declare-fun bs!823794 () Bool)

(assert (= bs!823794 (and d!1370961 d!1370929)))

(assert (=> bs!823794 (= lambda!164931 lambda!164920)))

(declare-fun bs!823795 () Bool)

(assert (= bs!823795 (and d!1370961 d!1370897)))

(assert (=> bs!823795 (not (= lambda!164931 lambda!164908))))

(declare-fun lt!1666059 () ListMap!3367)

(assert (=> d!1370961 (invariantList!942 (toList!4106 lt!1666059))))

(declare-fun e!2789817 () ListMap!3367)

(assert (=> d!1370961 (= lt!1666059 e!2789817)))

(declare-fun c!763036 () Bool)

(assert (=> d!1370961 (= c!763036 (is-Cons!50351 (Cons!50351 lt!1665881 Nil!50351)))))

(assert (=> d!1370961 (forall!10037 (Cons!50351 lt!1665881 Nil!50351) lambda!164931)))

(assert (=> d!1370961 (= (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351)) lt!1666059)))

(declare-fun b!4479460 () Bool)

(assert (=> b!4479460 (= e!2789817 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (Cons!50351 lt!1665881 Nil!50351))) (extractMap!1105 (t!357429 (Cons!50351 lt!1665881 Nil!50351)))))))

(declare-fun b!4479461 () Bool)

(assert (=> b!4479461 (= e!2789817 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370961 c!763036) b!4479460))

(assert (= (and d!1370961 (not c!763036)) b!4479461))

(declare-fun m!5197635 () Bool)

(assert (=> d!1370961 m!5197635))

(declare-fun m!5197637 () Bool)

(assert (=> d!1370961 m!5197637))

(declare-fun m!5197639 () Bool)

(assert (=> b!4479460 m!5197639))

(assert (=> b!4479460 m!5197639))

(declare-fun m!5197641 () Bool)

(assert (=> b!4479460 m!5197641))

(assert (=> b!4479243 d!1370961))

(declare-fun d!1370963 () Bool)

(declare-fun e!2789818 () Bool)

(assert (=> d!1370963 e!2789818))

(declare-fun res!1859568 () Bool)

(assert (=> d!1370963 (=> (not res!1859568) (not e!2789818))))

(declare-fun lt!1666060 () ListMap!3367)

(assert (=> d!1370963 (= res!1859568 (not (contains!12932 lt!1666060 key!3287)))))

(assert (=> d!1370963 (= lt!1666060 (ListMap!3368 (removePresrvNoDuplicatedKeys!78 (toList!4106 (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351))) key!3287)))))

(assert (=> d!1370963 (= (-!311 (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351)) key!3287) lt!1666060)))

(declare-fun b!4479462 () Bool)

(assert (=> b!4479462 (= e!2789818 (= (set.minus (content!8147 (keys!17405 (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351)))) (set.insert key!3287 (as set.empty (Set K!11763)))) (content!8147 (keys!17405 lt!1666060))))))

(assert (= (and d!1370963 res!1859568) b!4479462))

(declare-fun m!5197643 () Bool)

(assert (=> d!1370963 m!5197643))

(declare-fun m!5197645 () Bool)

(assert (=> d!1370963 m!5197645))

(declare-fun m!5197647 () Bool)

(assert (=> b!4479462 m!5197647))

(declare-fun m!5197649 () Bool)

(assert (=> b!4479462 m!5197649))

(declare-fun m!5197651 () Bool)

(assert (=> b!4479462 m!5197651))

(declare-fun m!5197653 () Bool)

(assert (=> b!4479462 m!5197653))

(assert (=> b!4479462 m!5197271))

(assert (=> b!4479462 m!5197651))

(assert (=> b!4479462 m!5197647))

(assert (=> b!4479462 m!5197497))

(assert (=> b!4479243 d!1370963))

(declare-fun d!1370965 () Bool)

(assert (=> d!1370965 (= (tail!7550 (toList!4105 lt!1665876)) (t!357429 (toList!4105 lt!1665876)))))

(assert (=> b!4479243 d!1370965))

(declare-fun d!1370967 () Bool)

(declare-fun e!2789819 () Bool)

(assert (=> d!1370967 e!2789819))

(declare-fun res!1859569 () Bool)

(assert (=> d!1370967 (=> (not res!1859569) (not e!2789819))))

(declare-fun lt!1666064 () ListLongMap!2737)

(assert (=> d!1370967 (= res!1859569 (contains!12934 lt!1666064 (_1!28610 lt!1665894)))))

(declare-fun lt!1666063 () List!50475)

(assert (=> d!1370967 (= lt!1666064 (ListLongMap!2738 lt!1666063))))

(declare-fun lt!1666061 () Unit!89527)

(declare-fun lt!1666062 () Unit!89527)

(assert (=> d!1370967 (= lt!1666061 lt!1666062)))

(assert (=> d!1370967 (= (getValueByKey!942 lt!1666063 (_1!28610 lt!1665894)) (Some!10955 (_2!28610 lt!1665894)))))

(assert (=> d!1370967 (= lt!1666062 (lemmaContainsTupThenGetReturnValue!601 lt!1666063 (_1!28610 lt!1665894) (_2!28610 lt!1665894)))))

(assert (=> d!1370967 (= lt!1666063 (insertStrictlySorted!345 (toList!4105 lm!1477) (_1!28610 lt!1665894) (_2!28610 lt!1665894)))))

(assert (=> d!1370967 (= (+!1399 lm!1477 lt!1665894) lt!1666064)))

(declare-fun b!4479463 () Bool)

(declare-fun res!1859570 () Bool)

(assert (=> b!4479463 (=> (not res!1859570) (not e!2789819))))

(assert (=> b!4479463 (= res!1859570 (= (getValueByKey!942 (toList!4105 lt!1666064) (_1!28610 lt!1665894)) (Some!10955 (_2!28610 lt!1665894))))))

(declare-fun b!4479464 () Bool)

(assert (=> b!4479464 (= e!2789819 (contains!12933 (toList!4105 lt!1666064) lt!1665894))))

(assert (= (and d!1370967 res!1859569) b!4479463))

(assert (= (and b!4479463 res!1859570) b!4479464))

(declare-fun m!5197655 () Bool)

(assert (=> d!1370967 m!5197655))

(declare-fun m!5197657 () Bool)

(assert (=> d!1370967 m!5197657))

(declare-fun m!5197659 () Bool)

(assert (=> d!1370967 m!5197659))

(declare-fun m!5197661 () Bool)

(assert (=> d!1370967 m!5197661))

(declare-fun m!5197663 () Bool)

(assert (=> b!4479463 m!5197663))

(declare-fun m!5197665 () Bool)

(assert (=> b!4479464 m!5197665))

(assert (=> b!4479243 d!1370967))

(declare-fun bs!823796 () Bool)

(declare-fun d!1370969 () Bool)

(assert (= bs!823796 (and d!1370969 d!1370927)))

(declare-fun lambda!164932 () Int)

(assert (=> bs!823796 (= lambda!164932 lambda!164917)))

(declare-fun bs!823797 () Bool)

(assert (= bs!823797 (and d!1370969 d!1370935)))

(assert (=> bs!823797 (= lambda!164932 lambda!164924)))

(declare-fun bs!823798 () Bool)

(assert (= bs!823798 (and d!1370969 start!440418)))

(assert (=> bs!823798 (= lambda!164932 lambda!164898)))

(declare-fun bs!823799 () Bool)

(assert (= bs!823799 (and d!1370969 d!1370925)))

(assert (=> bs!823799 (= lambda!164932 lambda!164916)))

(declare-fun bs!823800 () Bool)

(assert (= bs!823800 (and d!1370969 d!1370911)))

(assert (=> bs!823800 (= lambda!164932 lambda!164913)))

(declare-fun bs!823801 () Bool)

(assert (= bs!823801 (and d!1370969 d!1370909)))

(assert (=> bs!823801 (= lambda!164932 lambda!164912)))

(declare-fun bs!823802 () Bool)

(assert (= bs!823802 (and d!1370969 d!1370957)))

(assert (=> bs!823802 (= lambda!164932 lambda!164930)))

(declare-fun bs!823803 () Bool)

(assert (= bs!823803 (and d!1370969 d!1370929)))

(assert (=> bs!823803 (= lambda!164932 lambda!164920)))

(declare-fun bs!823804 () Bool)

(assert (= bs!823804 (and d!1370969 d!1370897)))

(assert (=> bs!823804 (not (= lambda!164932 lambda!164908))))

(declare-fun bs!823805 () Bool)

(assert (= bs!823805 (and d!1370969 d!1370961)))

(assert (=> bs!823805 (= lambda!164932 lambda!164931)))

(declare-fun bs!823806 () Bool)

(assert (= bs!823806 (and d!1370969 d!1370901)))

(assert (=> bs!823806 (= lambda!164932 lambda!164911)))

(declare-fun lt!1666065 () ListMap!3367)

(assert (=> d!1370969 (invariantList!942 (toList!4106 lt!1666065))))

(declare-fun e!2789820 () ListMap!3367)

(assert (=> d!1370969 (= lt!1666065 e!2789820)))

(declare-fun c!763037 () Bool)

(assert (=> d!1370969 (= c!763037 (is-Cons!50351 (Cons!50351 lt!1665894 Nil!50351)))))

(assert (=> d!1370969 (forall!10037 (Cons!50351 lt!1665894 Nil!50351) lambda!164932)))

(assert (=> d!1370969 (= (extractMap!1105 (Cons!50351 lt!1665894 Nil!50351)) lt!1666065)))

(declare-fun b!4479465 () Bool)

(assert (=> b!4479465 (= e!2789820 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (Cons!50351 lt!1665894 Nil!50351))) (extractMap!1105 (t!357429 (Cons!50351 lt!1665894 Nil!50351)))))))

(declare-fun b!4479466 () Bool)

(assert (=> b!4479466 (= e!2789820 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370969 c!763037) b!4479465))

(assert (= (and d!1370969 (not c!763037)) b!4479466))

(declare-fun m!5197667 () Bool)

(assert (=> d!1370969 m!5197667))

(declare-fun m!5197669 () Bool)

(assert (=> d!1370969 m!5197669))

(declare-fun m!5197671 () Bool)

(assert (=> b!4479465 m!5197671))

(assert (=> b!4479465 m!5197671))

(declare-fun m!5197673 () Bool)

(assert (=> b!4479465 m!5197673))

(assert (=> b!4479243 d!1370969))

(declare-fun bs!823807 () Bool)

(declare-fun d!1370971 () Bool)

(assert (= bs!823807 (and d!1370971 d!1370927)))

(declare-fun lambda!164933 () Int)

(assert (=> bs!823807 (= lambda!164933 lambda!164917)))

(declare-fun bs!823808 () Bool)

(assert (= bs!823808 (and d!1370971 d!1370935)))

(assert (=> bs!823808 (= lambda!164933 lambda!164924)))

(declare-fun bs!823809 () Bool)

(assert (= bs!823809 (and d!1370971 start!440418)))

(assert (=> bs!823809 (= lambda!164933 lambda!164898)))

(declare-fun bs!823810 () Bool)

(assert (= bs!823810 (and d!1370971 d!1370925)))

(assert (=> bs!823810 (= lambda!164933 lambda!164916)))

(declare-fun bs!823811 () Bool)

(assert (= bs!823811 (and d!1370971 d!1370911)))

(assert (=> bs!823811 (= lambda!164933 lambda!164913)))

(declare-fun bs!823812 () Bool)

(assert (= bs!823812 (and d!1370971 d!1370969)))

(assert (=> bs!823812 (= lambda!164933 lambda!164932)))

(declare-fun bs!823813 () Bool)

(assert (= bs!823813 (and d!1370971 d!1370909)))

(assert (=> bs!823813 (= lambda!164933 lambda!164912)))

(declare-fun bs!823814 () Bool)

(assert (= bs!823814 (and d!1370971 d!1370957)))

(assert (=> bs!823814 (= lambda!164933 lambda!164930)))

(declare-fun bs!823815 () Bool)

(assert (= bs!823815 (and d!1370971 d!1370929)))

(assert (=> bs!823815 (= lambda!164933 lambda!164920)))

(declare-fun bs!823816 () Bool)

(assert (= bs!823816 (and d!1370971 d!1370897)))

(assert (=> bs!823816 (not (= lambda!164933 lambda!164908))))

(declare-fun bs!823817 () Bool)

(assert (= bs!823817 (and d!1370971 d!1370961)))

(assert (=> bs!823817 (= lambda!164933 lambda!164931)))

(declare-fun bs!823818 () Bool)

(assert (= bs!823818 (and d!1370971 d!1370901)))

(assert (=> bs!823818 (= lambda!164933 lambda!164911)))

(declare-fun lt!1666066 () ListMap!3367)

(assert (=> d!1370971 (invariantList!942 (toList!4106 lt!1666066))))

(declare-fun e!2789821 () ListMap!3367)

(assert (=> d!1370971 (= lt!1666066 e!2789821)))

(declare-fun c!763038 () Bool)

(assert (=> d!1370971 (= c!763038 (is-Cons!50351 lt!1665883))))

(assert (=> d!1370971 (forall!10037 lt!1665883 lambda!164933)))

(assert (=> d!1370971 (= (extractMap!1105 lt!1665883) lt!1666066)))

(declare-fun b!4479467 () Bool)

(assert (=> b!4479467 (= e!2789821 (addToMapMapFromBucket!604 (_2!28610 (h!56130 lt!1665883)) (extractMap!1105 (t!357429 lt!1665883))))))

(declare-fun b!4479468 () Bool)

(assert (=> b!4479468 (= e!2789821 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370971 c!763038) b!4479467))

(assert (= (and d!1370971 (not c!763038)) b!4479468))

(declare-fun m!5197675 () Bool)

(assert (=> d!1370971 m!5197675))

(declare-fun m!5197677 () Bool)

(assert (=> d!1370971 m!5197677))

(declare-fun m!5197679 () Bool)

(assert (=> b!4479467 m!5197679))

(assert (=> b!4479467 m!5197679))

(declare-fun m!5197681 () Bool)

(assert (=> b!4479467 m!5197681))

(assert (=> b!4479243 d!1370971))

(declare-fun b!4479469 () Bool)

(declare-fun e!2789825 () Unit!89527)

(declare-fun Unit!89542 () Unit!89527)

(assert (=> b!4479469 (= e!2789825 Unit!89542)))

(declare-fun b!4479470 () Bool)

(declare-fun e!2789827 () Unit!89527)

(declare-fun lt!1666071 () Unit!89527)

(assert (=> b!4479470 (= e!2789827 lt!1666071)))

(declare-fun lt!1666073 () Unit!89527)

(assert (=> b!4479470 (= lt!1666073 (lemmaContainsKeyImpliesGetValueByKeyDefined!846 (toList!4106 (extractMap!1105 lt!1665883)) key!3287))))

(assert (=> b!4479470 (isDefined!8243 (getValueByKey!943 (toList!4106 (extractMap!1105 lt!1665883)) key!3287))))

(declare-fun lt!1666074 () Unit!89527)

(assert (=> b!4479470 (= lt!1666074 lt!1666073)))

(assert (=> b!4479470 (= lt!1666071 (lemmaInListThenGetKeysListContains!386 (toList!4106 (extractMap!1105 lt!1665883)) key!3287))))

(declare-fun call!311953 () Bool)

(assert (=> b!4479470 call!311953))

(declare-fun d!1370973 () Bool)

(declare-fun e!2789824 () Bool)

(assert (=> d!1370973 e!2789824))

(declare-fun res!1859571 () Bool)

(assert (=> d!1370973 (=> res!1859571 e!2789824)))

(declare-fun e!2789826 () Bool)

(assert (=> d!1370973 (= res!1859571 e!2789826)))

(declare-fun res!1859573 () Bool)

(assert (=> d!1370973 (=> (not res!1859573) (not e!2789826))))

(declare-fun lt!1666068 () Bool)

(assert (=> d!1370973 (= res!1859573 (not lt!1666068))))

(declare-fun lt!1666072 () Bool)

(assert (=> d!1370973 (= lt!1666068 lt!1666072)))

(declare-fun lt!1666067 () Unit!89527)

(assert (=> d!1370973 (= lt!1666067 e!2789827)))

(declare-fun c!763039 () Bool)

(assert (=> d!1370973 (= c!763039 lt!1666072)))

(assert (=> d!1370973 (= lt!1666072 (containsKey!1527 (toList!4106 (extractMap!1105 lt!1665883)) key!3287))))

(assert (=> d!1370973 (= (contains!12932 (extractMap!1105 lt!1665883) key!3287) lt!1666068)))

(declare-fun b!4479471 () Bool)

(assert (=> b!4479471 (= e!2789826 (not (contains!12938 (keys!17405 (extractMap!1105 lt!1665883)) key!3287)))))

(declare-fun b!4479472 () Bool)

(assert (=> b!4479472 false))

(declare-fun lt!1666070 () Unit!89527)

(declare-fun lt!1666069 () Unit!89527)

(assert (=> b!4479472 (= lt!1666070 lt!1666069)))

(assert (=> b!4479472 (containsKey!1527 (toList!4106 (extractMap!1105 lt!1665883)) key!3287)))

(assert (=> b!4479472 (= lt!1666069 (lemmaInGetKeysListThenContainsKey!389 (toList!4106 (extractMap!1105 lt!1665883)) key!3287))))

(declare-fun Unit!89543 () Unit!89527)

(assert (=> b!4479472 (= e!2789825 Unit!89543)))

(declare-fun b!4479473 () Bool)

(declare-fun e!2789823 () Bool)

(assert (=> b!4479473 (= e!2789823 (contains!12938 (keys!17405 (extractMap!1105 lt!1665883)) key!3287))))

(declare-fun b!4479474 () Bool)

(declare-fun e!2789822 () List!50478)

(assert (=> b!4479474 (= e!2789822 (getKeysList!390 (toList!4106 (extractMap!1105 lt!1665883))))))

(declare-fun bm!311948 () Bool)

(assert (=> bm!311948 (= call!311953 (contains!12938 e!2789822 key!3287))))

(declare-fun c!763040 () Bool)

(assert (=> bm!311948 (= c!763040 c!763039)))

(declare-fun b!4479475 () Bool)

(assert (=> b!4479475 (= e!2789824 e!2789823)))

(declare-fun res!1859572 () Bool)

(assert (=> b!4479475 (=> (not res!1859572) (not e!2789823))))

(assert (=> b!4479475 (= res!1859572 (isDefined!8243 (getValueByKey!943 (toList!4106 (extractMap!1105 lt!1665883)) key!3287)))))

(declare-fun b!4479476 () Bool)

(assert (=> b!4479476 (= e!2789822 (keys!17405 (extractMap!1105 lt!1665883)))))

(declare-fun b!4479477 () Bool)

(assert (=> b!4479477 (= e!2789827 e!2789825)))

(declare-fun c!763041 () Bool)

(assert (=> b!4479477 (= c!763041 call!311953)))

(assert (= (and d!1370973 c!763039) b!4479470))

(assert (= (and d!1370973 (not c!763039)) b!4479477))

(assert (= (and b!4479477 c!763041) b!4479472))

(assert (= (and b!4479477 (not c!763041)) b!4479469))

(assert (= (or b!4479470 b!4479477) bm!311948))

(assert (= (and bm!311948 c!763040) b!4479474))

(assert (= (and bm!311948 (not c!763040)) b!4479476))

(assert (= (and d!1370973 res!1859573) b!4479471))

(assert (= (and d!1370973 (not res!1859571)) b!4479475))

(assert (= (and b!4479475 res!1859572) b!4479473))

(assert (=> b!4479471 m!5197273))

(declare-fun m!5197683 () Bool)

(assert (=> b!4479471 m!5197683))

(assert (=> b!4479471 m!5197683))

(declare-fun m!5197685 () Bool)

(assert (=> b!4479471 m!5197685))

(assert (=> b!4479476 m!5197273))

(assert (=> b!4479476 m!5197683))

(declare-fun m!5197687 () Bool)

(assert (=> bm!311948 m!5197687))

(declare-fun m!5197689 () Bool)

(assert (=> b!4479470 m!5197689))

(declare-fun m!5197691 () Bool)

(assert (=> b!4479470 m!5197691))

(assert (=> b!4479470 m!5197691))

(declare-fun m!5197693 () Bool)

(assert (=> b!4479470 m!5197693))

(declare-fun m!5197695 () Bool)

(assert (=> b!4479470 m!5197695))

(declare-fun m!5197697 () Bool)

(assert (=> b!4479472 m!5197697))

(declare-fun m!5197699 () Bool)

(assert (=> b!4479472 m!5197699))

(assert (=> b!4479473 m!5197273))

(assert (=> b!4479473 m!5197683))

(assert (=> b!4479473 m!5197683))

(assert (=> b!4479473 m!5197685))

(declare-fun m!5197701 () Bool)

(assert (=> b!4479474 m!5197701))

(assert (=> b!4479475 m!5197691))

(assert (=> b!4479475 m!5197691))

(assert (=> b!4479475 m!5197693))

(assert (=> d!1370973 m!5197697))

(assert (=> b!4479243 d!1370973))

(declare-fun d!1370975 () Bool)

(assert (=> d!1370975 (= (eq!542 (extractMap!1105 (Cons!50351 lt!1665894 Nil!50351)) (-!311 (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351)) key!3287)) (= (content!8148 (toList!4106 (extractMap!1105 (Cons!50351 lt!1665894 Nil!50351)))) (content!8148 (toList!4106 (-!311 (extractMap!1105 (Cons!50351 lt!1665881 Nil!50351)) key!3287)))))))

(declare-fun bs!823819 () Bool)

(assert (= bs!823819 d!1370975))

(declare-fun m!5197703 () Bool)

(assert (=> bs!823819 m!5197703))

(declare-fun m!5197705 () Bool)

(assert (=> bs!823819 m!5197705))

(assert (=> b!4479243 d!1370975))

(declare-fun d!1370977 () Bool)

(assert (=> d!1370977 (eq!542 (extractMap!1105 (Cons!50351 (tuple2!50633 hash!344 newBucket!178) Nil!50351)) (-!311 (extractMap!1105 (Cons!50351 (tuple2!50633 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477)))) Nil!50351)) key!3287))))

(declare-fun lt!1666089 () Unit!89527)

(declare-fun choose!28725 ((_ BitVec 64) List!50474 List!50474 K!11763 Hashable!5444) Unit!89527)

(assert (=> d!1370977 (= lt!1666089 (choose!28725 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1370977 (noDuplicateKeys!1049 (_2!28610 (h!56130 (toList!4105 lm!1477))))))

(assert (=> d!1370977 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!41 hash!344 (_2!28610 (h!56130 (toList!4105 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1666089)))

(declare-fun bs!823821 () Bool)

(assert (= bs!823821 d!1370977))

(declare-fun m!5197723 () Bool)

(assert (=> bs!823821 m!5197723))

(assert (=> bs!823821 m!5197723))

(declare-fun m!5197725 () Bool)

(assert (=> bs!823821 m!5197725))

(declare-fun m!5197727 () Bool)

(assert (=> bs!823821 m!5197727))

(declare-fun m!5197729 () Bool)

(assert (=> bs!823821 m!5197729))

(assert (=> bs!823821 m!5197725))

(declare-fun m!5197731 () Bool)

(assert (=> bs!823821 m!5197731))

(declare-fun m!5197733 () Bool)

(assert (=> bs!823821 m!5197733))

(assert (=> bs!823821 m!5197729))

(assert (=> b!4479243 d!1370977))

(declare-fun d!1370983 () Bool)

(assert (=> d!1370983 (= (eq!542 (extractMap!1105 (toList!4105 lt!1665876)) (addToMapMapFromBucket!604 newBucket!178 lt!1665888)) (= (content!8148 (toList!4106 (extractMap!1105 (toList!4105 lt!1665876)))) (content!8148 (toList!4106 (addToMapMapFromBucket!604 newBucket!178 lt!1665888)))))))

(declare-fun bs!823822 () Bool)

(assert (= bs!823822 d!1370983))

(declare-fun m!5197735 () Bool)

(assert (=> bs!823822 m!5197735))

(declare-fun m!5197737 () Bool)

(assert (=> bs!823822 m!5197737))

(assert (=> b!4479253 d!1370983))

(declare-fun bs!823823 () Bool)

(declare-fun d!1370985 () Bool)

(assert (= bs!823823 (and d!1370985 d!1370927)))

(declare-fun lambda!164934 () Int)

(assert (=> bs!823823 (= lambda!164934 lambda!164917)))

(declare-fun bs!823824 () Bool)

(assert (= bs!823824 (and d!1370985 start!440418)))

(assert (=> bs!823824 (= lambda!164934 lambda!164898)))

(declare-fun bs!823825 () Bool)

(assert (= bs!823825 (and d!1370985 d!1370925)))

(assert (=> bs!823825 (= lambda!164934 lambda!164916)))

(declare-fun bs!823826 () Bool)

(assert (= bs!823826 (and d!1370985 d!1370911)))

(assert (=> bs!823826 (= lambda!164934 lambda!164913)))

(declare-fun bs!823827 () Bool)

(assert (= bs!823827 (and d!1370985 d!1370969)))

(assert (=> bs!823827 (= lambda!164934 lambda!164932)))

(declare-fun bs!823828 () Bool)

(assert (= bs!823828 (and d!1370985 d!1370935)))

(assert (=> bs!823828 (= lambda!164934 lambda!164924)))

(declare-fun bs!823829 () Bool)

(assert (= bs!823829 (and d!1370985 d!1370971)))

(assert (=> bs!823829 (= lambda!164934 lambda!164933)))

(declare-fun bs!823830 () Bool)

(assert (= bs!823830 (and d!1370985 d!1370909)))

(assert (=> bs!823830 (= lambda!164934 lambda!164912)))

(declare-fun bs!823831 () Bool)

(assert (= bs!823831 (and d!1370985 d!1370957)))

(assert (=> bs!823831 (= lambda!164934 lambda!164930)))

(declare-fun bs!823832 () Bool)

(assert (= bs!823832 (and d!1370985 d!1370929)))

(assert (=> bs!823832 (= lambda!164934 lambda!164920)))

(declare-fun bs!823833 () Bool)

(assert (= bs!823833 (and d!1370985 d!1370897)))

(assert (=> bs!823833 (not (= lambda!164934 lambda!164908))))

(declare-fun bs!823834 () Bool)

(assert (= bs!823834 (and d!1370985 d!1370961)))

(assert (=> bs!823834 (= lambda!164934 lambda!164931)))

(declare-fun bs!823835 () Bool)

(assert (= bs!823835 (and d!1370985 d!1370901)))

(assert (=> bs!823835 (= lambda!164934 lambda!164911)))

(declare-fun lt!1666090 () ListMap!3367)

(assert (=> d!1370985 (invariantList!942 (toList!4106 lt!1666090))))

(declare-fun e!2789831 () ListMap!3367)

(assert (=> d!1370985 (= lt!1666090 e!2789831)))

(declare-fun c!763042 () Bool)

(assert (=> d!1370985 (= c!763042 (is-Cons!50351 (toList!4105 lt!1665876)))))

(assert (=> d!1370985 (forall!10037 (toList!4105 lt!1665876) lambda!164934)))

(assert (=> d!1370985 (= (extractMap!1105 (toList!4105 lt!1665876)) lt!1666090)))

(declare-fun b!4479484 () Bool)

(assert (=> b!4479484 (= e!2789831 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (toList!4105 lt!1665876))) (extractMap!1105 (t!357429 (toList!4105 lt!1665876)))))))

(declare-fun b!4479485 () Bool)

(assert (=> b!4479485 (= e!2789831 (ListMap!3368 Nil!50350))))

(assert (= (and d!1370985 c!763042) b!4479484))

(assert (= (and d!1370985 (not c!763042)) b!4479485))

(declare-fun m!5197739 () Bool)

(assert (=> d!1370985 m!5197739))

(declare-fun m!5197741 () Bool)

(assert (=> d!1370985 m!5197741))

(declare-fun m!5197743 () Bool)

(assert (=> b!4479484 m!5197743))

(assert (=> b!4479484 m!5197743))

(declare-fun m!5197745 () Bool)

(assert (=> b!4479484 m!5197745))

(assert (=> b!4479253 d!1370985))

(declare-fun b!4479574 () Bool)

(assert (=> b!4479574 true))

(declare-fun bs!823907 () Bool)

(declare-fun b!4479573 () Bool)

(assert (= bs!823907 (and b!4479573 b!4479574)))

(declare-fun lambda!164979 () Int)

(declare-fun lambda!164978 () Int)

(assert (=> bs!823907 (= lambda!164979 lambda!164978)))

(assert (=> b!4479573 true))

(declare-fun lambda!164980 () Int)

(declare-fun lt!1666212 () ListMap!3367)

(assert (=> bs!823907 (= (= lt!1666212 lt!1665888) (= lambda!164980 lambda!164978))))

(assert (=> b!4479573 (= (= lt!1666212 lt!1665888) (= lambda!164980 lambda!164979))))

(assert (=> b!4479573 true))

(declare-fun bs!823908 () Bool)

(declare-fun d!1370987 () Bool)

(assert (= bs!823908 (and d!1370987 b!4479574)))

(declare-fun lambda!164981 () Int)

(declare-fun lt!1666215 () ListMap!3367)

(assert (=> bs!823908 (= (= lt!1666215 lt!1665888) (= lambda!164981 lambda!164978))))

(declare-fun bs!823909 () Bool)

(assert (= bs!823909 (and d!1370987 b!4479573)))

(assert (=> bs!823909 (= (= lt!1666215 lt!1665888) (= lambda!164981 lambda!164979))))

(assert (=> bs!823909 (= (= lt!1666215 lt!1666212) (= lambda!164981 lambda!164980))))

(assert (=> d!1370987 true))

(declare-fun e!2789889 () ListMap!3367)

(assert (=> b!4479573 (= e!2789889 lt!1666212)))

(declare-fun lt!1666209 () ListMap!3367)

(declare-fun +!1401 (ListMap!3367 tuple2!50630) ListMap!3367)

(assert (=> b!4479573 (= lt!1666209 (+!1401 lt!1665888 (h!56129 newBucket!178)))))

(assert (=> b!4479573 (= lt!1666212 (addToMapMapFromBucket!604 (t!357428 newBucket!178) (+!1401 lt!1665888 (h!56129 newBucket!178))))))

(declare-fun lt!1666223 () Unit!89527)

(declare-fun call!311966 () Unit!89527)

(assert (=> b!4479573 (= lt!1666223 call!311966)))

(declare-fun forall!10039 (List!50474 Int) Bool)

(assert (=> b!4479573 (forall!10039 (toList!4106 lt!1665888) lambda!164979)))

(declare-fun lt!1666216 () Unit!89527)

(assert (=> b!4479573 (= lt!1666216 lt!1666223)))

(assert (=> b!4479573 (forall!10039 (toList!4106 lt!1666209) lambda!164980)))

(declare-fun lt!1666224 () Unit!89527)

(declare-fun Unit!89544 () Unit!89527)

(assert (=> b!4479573 (= lt!1666224 Unit!89544)))

(assert (=> b!4479573 (forall!10039 (t!357428 newBucket!178) lambda!164980)))

(declare-fun lt!1666214 () Unit!89527)

(declare-fun Unit!89545 () Unit!89527)

(assert (=> b!4479573 (= lt!1666214 Unit!89545)))

(declare-fun lt!1666213 () Unit!89527)

(declare-fun Unit!89546 () Unit!89527)

(assert (=> b!4479573 (= lt!1666213 Unit!89546)))

(declare-fun lt!1666225 () Unit!89527)

(declare-fun forallContained!2300 (List!50474 Int tuple2!50630) Unit!89527)

(assert (=> b!4479573 (= lt!1666225 (forallContained!2300 (toList!4106 lt!1666209) lambda!164980 (h!56129 newBucket!178)))))

(assert (=> b!4479573 (contains!12932 lt!1666209 (_1!28609 (h!56129 newBucket!178)))))

(declare-fun lt!1666211 () Unit!89527)

(declare-fun Unit!89547 () Unit!89527)

(assert (=> b!4479573 (= lt!1666211 Unit!89547)))

(assert (=> b!4479573 (contains!12932 lt!1666212 (_1!28609 (h!56129 newBucket!178)))))

(declare-fun lt!1666220 () Unit!89527)

(declare-fun Unit!89548 () Unit!89527)

(assert (=> b!4479573 (= lt!1666220 Unit!89548)))

(assert (=> b!4479573 (forall!10039 newBucket!178 lambda!164980)))

(declare-fun lt!1666219 () Unit!89527)

(declare-fun Unit!89549 () Unit!89527)

(assert (=> b!4479573 (= lt!1666219 Unit!89549)))

(declare-fun call!311967 () Bool)

(assert (=> b!4479573 call!311967))

(declare-fun lt!1666207 () Unit!89527)

(declare-fun Unit!89550 () Unit!89527)

(assert (=> b!4479573 (= lt!1666207 Unit!89550)))

(declare-fun lt!1666218 () Unit!89527)

(declare-fun Unit!89551 () Unit!89527)

(assert (=> b!4479573 (= lt!1666218 Unit!89551)))

(declare-fun lt!1666206 () Unit!89527)

(declare-fun addForallContainsKeyThenBeforeAdding!273 (ListMap!3367 ListMap!3367 K!11763 V!12009) Unit!89527)

(assert (=> b!4479573 (= lt!1666206 (addForallContainsKeyThenBeforeAdding!273 lt!1665888 lt!1666212 (_1!28609 (h!56129 newBucket!178)) (_2!28609 (h!56129 newBucket!178))))))

(assert (=> b!4479573 (forall!10039 (toList!4106 lt!1665888) lambda!164980)))

(declare-fun lt!1666217 () Unit!89527)

(assert (=> b!4479573 (= lt!1666217 lt!1666206)))

(assert (=> b!4479573 (forall!10039 (toList!4106 lt!1665888) lambda!164980)))

(declare-fun lt!1666210 () Unit!89527)

(declare-fun Unit!89552 () Unit!89527)

(assert (=> b!4479573 (= lt!1666210 Unit!89552)))

(declare-fun res!1859614 () Bool)

(declare-fun call!311965 () Bool)

(assert (=> b!4479573 (= res!1859614 call!311965)))

(declare-fun e!2789888 () Bool)

(assert (=> b!4479573 (=> (not res!1859614) (not e!2789888))))

(assert (=> b!4479573 e!2789888))

(declare-fun lt!1666205 () Unit!89527)

(declare-fun Unit!89553 () Unit!89527)

(assert (=> b!4479573 (= lt!1666205 Unit!89553)))

(declare-fun c!763069 () Bool)

(declare-fun bm!311960 () Bool)

(assert (=> bm!311960 (= call!311965 (forall!10039 (ite c!763069 (toList!4106 lt!1665888) newBucket!178) (ite c!763069 lambda!164978 lambda!164980)))))

(assert (=> b!4479574 (= e!2789889 lt!1665888)))

(declare-fun lt!1666221 () Unit!89527)

(assert (=> b!4479574 (= lt!1666221 call!311966)))

(assert (=> b!4479574 call!311965))

(declare-fun lt!1666208 () Unit!89527)

(assert (=> b!4479574 (= lt!1666208 lt!1666221)))

(assert (=> b!4479574 call!311967))

(declare-fun lt!1666222 () Unit!89527)

(declare-fun Unit!89554 () Unit!89527)

(assert (=> b!4479574 (= lt!1666222 Unit!89554)))

(declare-fun bm!311961 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!274 (ListMap!3367) Unit!89527)

(assert (=> bm!311961 (= call!311966 (lemmaContainsAllItsOwnKeys!274 lt!1665888))))

(declare-fun b!4479575 () Bool)

(declare-fun res!1859613 () Bool)

(declare-fun e!2789890 () Bool)

(assert (=> b!4479575 (=> (not res!1859613) (not e!2789890))))

(assert (=> b!4479575 (= res!1859613 (forall!10039 (toList!4106 lt!1665888) lambda!164981))))

(assert (=> d!1370987 e!2789890))

(declare-fun res!1859615 () Bool)

(assert (=> d!1370987 (=> (not res!1859615) (not e!2789890))))

(assert (=> d!1370987 (= res!1859615 (forall!10039 newBucket!178 lambda!164981))))

(assert (=> d!1370987 (= lt!1666215 e!2789889)))

(assert (=> d!1370987 (= c!763069 (is-Nil!50350 newBucket!178))))

(assert (=> d!1370987 (noDuplicateKeys!1049 newBucket!178)))

(assert (=> d!1370987 (= (addToMapMapFromBucket!604 newBucket!178 lt!1665888) lt!1666215)))

(declare-fun bm!311962 () Bool)

(assert (=> bm!311962 (= call!311967 (forall!10039 (ite c!763069 (toList!4106 lt!1665888) (toList!4106 lt!1666209)) (ite c!763069 lambda!164978 lambda!164980)))))

(declare-fun b!4479576 () Bool)

(assert (=> b!4479576 (= e!2789890 (invariantList!942 (toList!4106 lt!1666215)))))

(declare-fun b!4479577 () Bool)

(assert (=> b!4479577 (= e!2789888 (forall!10039 (toList!4106 lt!1665888) lambda!164980))))

(assert (= (and d!1370987 c!763069) b!4479574))

(assert (= (and d!1370987 (not c!763069)) b!4479573))

(assert (= (and b!4479573 res!1859614) b!4479577))

(assert (= (or b!4479574 b!4479573) bm!311962))

(assert (= (or b!4479574 b!4479573) bm!311960))

(assert (= (or b!4479574 b!4479573) bm!311961))

(assert (= (and d!1370987 res!1859615) b!4479575))

(assert (= (and b!4479575 res!1859613) b!4479576))

(declare-fun m!5197929 () Bool)

(assert (=> b!4479573 m!5197929))

(assert (=> b!4479573 m!5197929))

(declare-fun m!5197931 () Bool)

(assert (=> b!4479573 m!5197931))

(declare-fun m!5197933 () Bool)

(assert (=> b!4479573 m!5197933))

(declare-fun m!5197935 () Bool)

(assert (=> b!4479573 m!5197935))

(declare-fun m!5197937 () Bool)

(assert (=> b!4479573 m!5197937))

(declare-fun m!5197939 () Bool)

(assert (=> b!4479573 m!5197939))

(declare-fun m!5197941 () Bool)

(assert (=> b!4479573 m!5197941))

(assert (=> b!4479573 m!5197935))

(declare-fun m!5197943 () Bool)

(assert (=> b!4479573 m!5197943))

(declare-fun m!5197945 () Bool)

(assert (=> b!4479573 m!5197945))

(declare-fun m!5197947 () Bool)

(assert (=> b!4479573 m!5197947))

(declare-fun m!5197949 () Bool)

(assert (=> b!4479573 m!5197949))

(declare-fun m!5197951 () Bool)

(assert (=> b!4479576 m!5197951))

(declare-fun m!5197953 () Bool)

(assert (=> d!1370987 m!5197953))

(assert (=> d!1370987 m!5197319))

(declare-fun m!5197955 () Bool)

(assert (=> b!4479575 m!5197955))

(declare-fun m!5197957 () Bool)

(assert (=> bm!311962 m!5197957))

(assert (=> b!4479577 m!5197929))

(declare-fun m!5197959 () Bool)

(assert (=> bm!311961 m!5197959))

(declare-fun m!5197961 () Bool)

(assert (=> bm!311960 m!5197961))

(assert (=> b!4479253 d!1370987))

(declare-fun bs!823910 () Bool)

(declare-fun d!1371035 () Bool)

(assert (= bs!823910 (and d!1371035 d!1370927)))

(declare-fun lambda!164984 () Int)

(assert (=> bs!823910 (= lambda!164984 lambda!164917)))

(declare-fun bs!823911 () Bool)

(assert (= bs!823911 (and d!1371035 d!1370985)))

(assert (=> bs!823911 (= lambda!164984 lambda!164934)))

(declare-fun bs!823912 () Bool)

(assert (= bs!823912 (and d!1371035 start!440418)))

(assert (=> bs!823912 (= lambda!164984 lambda!164898)))

(declare-fun bs!823913 () Bool)

(assert (= bs!823913 (and d!1371035 d!1370925)))

(assert (=> bs!823913 (= lambda!164984 lambda!164916)))

(declare-fun bs!823914 () Bool)

(assert (= bs!823914 (and d!1371035 d!1370911)))

(assert (=> bs!823914 (= lambda!164984 lambda!164913)))

(declare-fun bs!823915 () Bool)

(assert (= bs!823915 (and d!1371035 d!1370969)))

(assert (=> bs!823915 (= lambda!164984 lambda!164932)))

(declare-fun bs!823916 () Bool)

(assert (= bs!823916 (and d!1371035 d!1370935)))

(assert (=> bs!823916 (= lambda!164984 lambda!164924)))

(declare-fun bs!823917 () Bool)

(assert (= bs!823917 (and d!1371035 d!1370971)))

(assert (=> bs!823917 (= lambda!164984 lambda!164933)))

(declare-fun bs!823918 () Bool)

(assert (= bs!823918 (and d!1371035 d!1370909)))

(assert (=> bs!823918 (= lambda!164984 lambda!164912)))

(declare-fun bs!823919 () Bool)

(assert (= bs!823919 (and d!1371035 d!1370957)))

(assert (=> bs!823919 (= lambda!164984 lambda!164930)))

(declare-fun bs!823920 () Bool)

(assert (= bs!823920 (and d!1371035 d!1370929)))

(assert (=> bs!823920 (= lambda!164984 lambda!164920)))

(declare-fun bs!823921 () Bool)

(assert (= bs!823921 (and d!1371035 d!1370897)))

(assert (=> bs!823921 (not (= lambda!164984 lambda!164908))))

(declare-fun bs!823922 () Bool)

(assert (= bs!823922 (and d!1371035 d!1370961)))

(assert (=> bs!823922 (= lambda!164984 lambda!164931)))

(declare-fun bs!823923 () Bool)

(assert (= bs!823923 (and d!1371035 d!1370901)))

(assert (=> bs!823923 (= lambda!164984 lambda!164911)))

(assert (=> d!1371035 (not (contains!12932 (extractMap!1105 (toList!4105 lm!1477)) key!3287))))

(declare-fun lt!1666228 () Unit!89527)

(declare-fun choose!28727 (ListLongMap!2737 K!11763 Hashable!5444) Unit!89527)

(assert (=> d!1371035 (= lt!1666228 (choose!28727 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371035 (forall!10037 (toList!4105 lm!1477) lambda!164984)))

(assert (=> d!1371035 (= (lemmaNotInItsHashBucketThenNotInMap!49 lm!1477 key!3287 hashF!1107) lt!1666228)))

(declare-fun bs!823924 () Bool)

(assert (= bs!823924 d!1371035))

(assert (=> bs!823924 m!5197305))

(assert (=> bs!823924 m!5197305))

(assert (=> bs!823924 m!5197307))

(declare-fun m!5197963 () Bool)

(assert (=> bs!823924 m!5197963))

(declare-fun m!5197965 () Bool)

(assert (=> bs!823924 m!5197965))

(assert (=> b!4479255 d!1371035))

(declare-fun bs!823925 () Bool)

(declare-fun d!1371037 () Bool)

(assert (= bs!823925 (and d!1371037 b!4479574)))

(declare-fun lambda!164987 () Int)

(assert (=> bs!823925 (not (= lambda!164987 lambda!164978))))

(declare-fun bs!823926 () Bool)

(assert (= bs!823926 (and d!1371037 b!4479573)))

(assert (=> bs!823926 (not (= lambda!164987 lambda!164979))))

(assert (=> bs!823926 (not (= lambda!164987 lambda!164980))))

(declare-fun bs!823927 () Bool)

(assert (= bs!823927 (and d!1371037 d!1370987)))

(assert (=> bs!823927 (not (= lambda!164987 lambda!164981))))

(assert (=> d!1371037 true))

(assert (=> d!1371037 true))

(assert (=> d!1371037 (= (allKeysSameHash!903 newBucket!178 hash!344 hashF!1107) (forall!10039 newBucket!178 lambda!164987))))

(declare-fun bs!823928 () Bool)

(assert (= bs!823928 d!1371037))

(declare-fun m!5197967 () Bool)

(assert (=> bs!823928 m!5197967))

(assert (=> b!4479244 d!1371037))

(declare-fun d!1371039 () Bool)

(declare-fun res!1859620 () Bool)

(declare-fun e!2789895 () Bool)

(assert (=> d!1371039 (=> res!1859620 e!2789895)))

(assert (=> d!1371039 (= res!1859620 (not (is-Cons!50350 newBucket!178)))))

(assert (=> d!1371039 (= (noDuplicateKeys!1049 newBucket!178) e!2789895)))

(declare-fun b!4479588 () Bool)

(declare-fun e!2789896 () Bool)

(assert (=> b!4479588 (= e!2789895 e!2789896)))

(declare-fun res!1859621 () Bool)

(assert (=> b!4479588 (=> (not res!1859621) (not e!2789896))))

(assert (=> b!4479588 (= res!1859621 (not (containsKey!1525 (t!357428 newBucket!178) (_1!28609 (h!56129 newBucket!178)))))))

(declare-fun b!4479589 () Bool)

(assert (=> b!4479589 (= e!2789896 (noDuplicateKeys!1049 (t!357428 newBucket!178)))))

(assert (= (and d!1371039 (not res!1859620)) b!4479588))

(assert (= (and b!4479588 res!1859621) b!4479589))

(declare-fun m!5197969 () Bool)

(assert (=> b!4479588 m!5197969))

(declare-fun m!5197971 () Bool)

(assert (=> b!4479589 m!5197971))

(assert (=> b!4479246 d!1371039))

(declare-fun bs!823929 () Bool)

(declare-fun d!1371041 () Bool)

(assert (= bs!823929 (and d!1371041 d!1370927)))

(declare-fun lambda!164988 () Int)

(assert (=> bs!823929 (= lambda!164988 lambda!164917)))

(declare-fun bs!823930 () Bool)

(assert (= bs!823930 (and d!1371041 d!1371035)))

(assert (=> bs!823930 (= lambda!164988 lambda!164984)))

(declare-fun bs!823931 () Bool)

(assert (= bs!823931 (and d!1371041 d!1370985)))

(assert (=> bs!823931 (= lambda!164988 lambda!164934)))

(declare-fun bs!823932 () Bool)

(assert (= bs!823932 (and d!1371041 start!440418)))

(assert (=> bs!823932 (= lambda!164988 lambda!164898)))

(declare-fun bs!823933 () Bool)

(assert (= bs!823933 (and d!1371041 d!1370925)))

(assert (=> bs!823933 (= lambda!164988 lambda!164916)))

(declare-fun bs!823934 () Bool)

(assert (= bs!823934 (and d!1371041 d!1370911)))

(assert (=> bs!823934 (= lambda!164988 lambda!164913)))

(declare-fun bs!823935 () Bool)

(assert (= bs!823935 (and d!1371041 d!1370969)))

(assert (=> bs!823935 (= lambda!164988 lambda!164932)))

(declare-fun bs!823936 () Bool)

(assert (= bs!823936 (and d!1371041 d!1370935)))

(assert (=> bs!823936 (= lambda!164988 lambda!164924)))

(declare-fun bs!823937 () Bool)

(assert (= bs!823937 (and d!1371041 d!1370971)))

(assert (=> bs!823937 (= lambda!164988 lambda!164933)))

(declare-fun bs!823938 () Bool)

(assert (= bs!823938 (and d!1371041 d!1370909)))

(assert (=> bs!823938 (= lambda!164988 lambda!164912)))

(declare-fun bs!823939 () Bool)

(assert (= bs!823939 (and d!1371041 d!1370957)))

(assert (=> bs!823939 (= lambda!164988 lambda!164930)))

(declare-fun bs!823940 () Bool)

(assert (= bs!823940 (and d!1371041 d!1370929)))

(assert (=> bs!823940 (= lambda!164988 lambda!164920)))

(declare-fun bs!823941 () Bool)

(assert (= bs!823941 (and d!1371041 d!1370897)))

(assert (=> bs!823941 (not (= lambda!164988 lambda!164908))))

(declare-fun bs!823942 () Bool)

(assert (= bs!823942 (and d!1371041 d!1370961)))

(assert (=> bs!823942 (= lambda!164988 lambda!164931)))

(declare-fun bs!823943 () Bool)

(assert (= bs!823943 (and d!1371041 d!1370901)))

(assert (=> bs!823943 (= lambda!164988 lambda!164911)))

(assert (=> d!1371041 (contains!12934 lt!1665871 (hash!2518 hashF!1107 key!3287))))

(declare-fun lt!1666229 () Unit!89527)

(assert (=> d!1371041 (= lt!1666229 (choose!28721 lt!1665871 key!3287 hashF!1107))))

(assert (=> d!1371041 (forall!10037 (toList!4105 lt!1665871) lambda!164988)))

(assert (=> d!1371041 (= (lemmaInGenMapThenLongMapContainsHash!123 lt!1665871 key!3287 hashF!1107) lt!1666229)))

(declare-fun bs!823944 () Bool)

(assert (= bs!823944 d!1371041))

(assert (=> bs!823944 m!5197301))

(assert (=> bs!823944 m!5197301))

(declare-fun m!5197973 () Bool)

(assert (=> bs!823944 m!5197973))

(declare-fun m!5197975 () Bool)

(assert (=> bs!823944 m!5197975))

(declare-fun m!5197977 () Bool)

(assert (=> bs!823944 m!5197977))

(assert (=> b!4479256 d!1371041))

(declare-fun d!1371043 () Bool)

(declare-fun e!2789897 () Bool)

(assert (=> d!1371043 e!2789897))

(declare-fun res!1859622 () Bool)

(assert (=> d!1371043 (=> res!1859622 e!2789897)))

(declare-fun lt!1666232 () Bool)

(assert (=> d!1371043 (= res!1859622 (not lt!1666232))))

(declare-fun lt!1666230 () Bool)

(assert (=> d!1371043 (= lt!1666232 lt!1666230)))

(declare-fun lt!1666233 () Unit!89527)

(declare-fun e!2789898 () Unit!89527)

(assert (=> d!1371043 (= lt!1666233 e!2789898)))

(declare-fun c!763070 () Bool)

(assert (=> d!1371043 (= c!763070 lt!1666230)))

(assert (=> d!1371043 (= lt!1666230 (containsKey!1528 (toList!4105 lt!1665871) lt!1665877))))

(assert (=> d!1371043 (= (contains!12934 lt!1665871 lt!1665877) lt!1666232)))

(declare-fun b!4479590 () Bool)

(declare-fun lt!1666231 () Unit!89527)

(assert (=> b!4479590 (= e!2789898 lt!1666231)))

(assert (=> b!4479590 (= lt!1666231 (lemmaContainsKeyImpliesGetValueByKeyDefined!847 (toList!4105 lt!1665871) lt!1665877))))

(assert (=> b!4479590 (isDefined!8244 (getValueByKey!942 (toList!4105 lt!1665871) lt!1665877))))

(declare-fun b!4479591 () Bool)

(declare-fun Unit!89557 () Unit!89527)

(assert (=> b!4479591 (= e!2789898 Unit!89557)))

(declare-fun b!4479592 () Bool)

(assert (=> b!4479592 (= e!2789897 (isDefined!8244 (getValueByKey!942 (toList!4105 lt!1665871) lt!1665877)))))

(assert (= (and d!1371043 c!763070) b!4479590))

(assert (= (and d!1371043 (not c!763070)) b!4479591))

(assert (= (and d!1371043 (not res!1859622)) b!4479592))

(declare-fun m!5197979 () Bool)

(assert (=> d!1371043 m!5197979))

(declare-fun m!5197981 () Bool)

(assert (=> b!4479590 m!5197981))

(declare-fun m!5197983 () Bool)

(assert (=> b!4479590 m!5197983))

(assert (=> b!4479590 m!5197983))

(declare-fun m!5197985 () Bool)

(assert (=> b!4479590 m!5197985))

(assert (=> b!4479592 m!5197983))

(assert (=> b!4479592 m!5197983))

(assert (=> b!4479592 m!5197985))

(assert (=> b!4479256 d!1371043))

(declare-fun b!4479593 () Bool)

(declare-fun e!2789902 () Unit!89527)

(declare-fun Unit!89558 () Unit!89527)

(assert (=> b!4479593 (= e!2789902 Unit!89558)))

(declare-fun b!4479594 () Bool)

(declare-fun e!2789904 () Unit!89527)

(declare-fun lt!1666238 () Unit!89527)

(assert (=> b!4479594 (= e!2789904 lt!1666238)))

(declare-fun lt!1666240 () Unit!89527)

(assert (=> b!4479594 (= lt!1666240 (lemmaContainsKeyImpliesGetValueByKeyDefined!846 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287))))

(assert (=> b!4479594 (isDefined!8243 (getValueByKey!943 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287))))

(declare-fun lt!1666241 () Unit!89527)

(assert (=> b!4479594 (= lt!1666241 lt!1666240)))

(assert (=> b!4479594 (= lt!1666238 (lemmaInListThenGetKeysListContains!386 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287))))

(declare-fun call!311968 () Bool)

(assert (=> b!4479594 call!311968))

(declare-fun d!1371045 () Bool)

(declare-fun e!2789901 () Bool)

(assert (=> d!1371045 e!2789901))

(declare-fun res!1859623 () Bool)

(assert (=> d!1371045 (=> res!1859623 e!2789901)))

(declare-fun e!2789903 () Bool)

(assert (=> d!1371045 (= res!1859623 e!2789903)))

(declare-fun res!1859625 () Bool)

(assert (=> d!1371045 (=> (not res!1859625) (not e!2789903))))

(declare-fun lt!1666235 () Bool)

(assert (=> d!1371045 (= res!1859625 (not lt!1666235))))

(declare-fun lt!1666239 () Bool)

(assert (=> d!1371045 (= lt!1666235 lt!1666239)))

(declare-fun lt!1666234 () Unit!89527)

(assert (=> d!1371045 (= lt!1666234 e!2789904)))

(declare-fun c!763071 () Bool)

(assert (=> d!1371045 (= c!763071 lt!1666239)))

(assert (=> d!1371045 (= lt!1666239 (containsKey!1527 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287))))

(assert (=> d!1371045 (= (contains!12932 (extractMap!1105 (toList!4105 lm!1477)) key!3287) lt!1666235)))

(declare-fun b!4479595 () Bool)

(assert (=> b!4479595 (= e!2789903 (not (contains!12938 (keys!17405 (extractMap!1105 (toList!4105 lm!1477))) key!3287)))))

(declare-fun b!4479596 () Bool)

(assert (=> b!4479596 false))

(declare-fun lt!1666237 () Unit!89527)

(declare-fun lt!1666236 () Unit!89527)

(assert (=> b!4479596 (= lt!1666237 lt!1666236)))

(assert (=> b!4479596 (containsKey!1527 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287)))

(assert (=> b!4479596 (= lt!1666236 (lemmaInGetKeysListThenContainsKey!389 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287))))

(declare-fun Unit!89559 () Unit!89527)

(assert (=> b!4479596 (= e!2789902 Unit!89559)))

(declare-fun b!4479597 () Bool)

(declare-fun e!2789900 () Bool)

(assert (=> b!4479597 (= e!2789900 (contains!12938 (keys!17405 (extractMap!1105 (toList!4105 lm!1477))) key!3287))))

(declare-fun b!4479598 () Bool)

(declare-fun e!2789899 () List!50478)

(assert (=> b!4479598 (= e!2789899 (getKeysList!390 (toList!4106 (extractMap!1105 (toList!4105 lm!1477)))))))

(declare-fun bm!311963 () Bool)

(assert (=> bm!311963 (= call!311968 (contains!12938 e!2789899 key!3287))))

(declare-fun c!763072 () Bool)

(assert (=> bm!311963 (= c!763072 c!763071)))

(declare-fun b!4479599 () Bool)

(assert (=> b!4479599 (= e!2789901 e!2789900)))

(declare-fun res!1859624 () Bool)

(assert (=> b!4479599 (=> (not res!1859624) (not e!2789900))))

(assert (=> b!4479599 (= res!1859624 (isDefined!8243 (getValueByKey!943 (toList!4106 (extractMap!1105 (toList!4105 lm!1477))) key!3287)))))

(declare-fun b!4479600 () Bool)

(assert (=> b!4479600 (= e!2789899 (keys!17405 (extractMap!1105 (toList!4105 lm!1477))))))

(declare-fun b!4479601 () Bool)

(assert (=> b!4479601 (= e!2789904 e!2789902)))

(declare-fun c!763073 () Bool)

(assert (=> b!4479601 (= c!763073 call!311968)))

(assert (= (and d!1371045 c!763071) b!4479594))

(assert (= (and d!1371045 (not c!763071)) b!4479601))

(assert (= (and b!4479601 c!763073) b!4479596))

(assert (= (and b!4479601 (not c!763073)) b!4479593))

(assert (= (or b!4479594 b!4479601) bm!311963))

(assert (= (and bm!311963 c!763072) b!4479598))

(assert (= (and bm!311963 (not c!763072)) b!4479600))

(assert (= (and d!1371045 res!1859625) b!4479595))

(assert (= (and d!1371045 (not res!1859623)) b!4479599))

(assert (= (and b!4479599 res!1859624) b!4479597))

(assert (=> b!4479595 m!5197305))

(declare-fun m!5197987 () Bool)

(assert (=> b!4479595 m!5197987))

(assert (=> b!4479595 m!5197987))

(declare-fun m!5197989 () Bool)

(assert (=> b!4479595 m!5197989))

(assert (=> b!4479600 m!5197305))

(assert (=> b!4479600 m!5197987))

(declare-fun m!5197991 () Bool)

(assert (=> bm!311963 m!5197991))

(declare-fun m!5197993 () Bool)

(assert (=> b!4479594 m!5197993))

(declare-fun m!5197995 () Bool)

(assert (=> b!4479594 m!5197995))

(assert (=> b!4479594 m!5197995))

(declare-fun m!5197997 () Bool)

(assert (=> b!4479594 m!5197997))

(declare-fun m!5197999 () Bool)

(assert (=> b!4479594 m!5197999))

(declare-fun m!5198001 () Bool)

(assert (=> b!4479596 m!5198001))

(declare-fun m!5198003 () Bool)

(assert (=> b!4479596 m!5198003))

(assert (=> b!4479597 m!5197305))

(assert (=> b!4479597 m!5197987))

(assert (=> b!4479597 m!5197987))

(assert (=> b!4479597 m!5197989))

(declare-fun m!5198005 () Bool)

(assert (=> b!4479598 m!5198005))

(assert (=> b!4479599 m!5197995))

(assert (=> b!4479599 m!5197995))

(assert (=> b!4479599 m!5197997))

(assert (=> d!1371045 m!5198001))

(assert (=> b!4479245 d!1371045))

(declare-fun bs!823945 () Bool)

(declare-fun d!1371047 () Bool)

(assert (= bs!823945 (and d!1371047 d!1370927)))

(declare-fun lambda!164989 () Int)

(assert (=> bs!823945 (= lambda!164989 lambda!164917)))

(declare-fun bs!823946 () Bool)

(assert (= bs!823946 (and d!1371047 d!1371035)))

(assert (=> bs!823946 (= lambda!164989 lambda!164984)))

(declare-fun bs!823947 () Bool)

(assert (= bs!823947 (and d!1371047 d!1371041)))

(assert (=> bs!823947 (= lambda!164989 lambda!164988)))

(declare-fun bs!823948 () Bool)

(assert (= bs!823948 (and d!1371047 d!1370985)))

(assert (=> bs!823948 (= lambda!164989 lambda!164934)))

(declare-fun bs!823949 () Bool)

(assert (= bs!823949 (and d!1371047 start!440418)))

(assert (=> bs!823949 (= lambda!164989 lambda!164898)))

(declare-fun bs!823950 () Bool)

(assert (= bs!823950 (and d!1371047 d!1370925)))

(assert (=> bs!823950 (= lambda!164989 lambda!164916)))

(declare-fun bs!823951 () Bool)

(assert (= bs!823951 (and d!1371047 d!1370911)))

(assert (=> bs!823951 (= lambda!164989 lambda!164913)))

(declare-fun bs!823952 () Bool)

(assert (= bs!823952 (and d!1371047 d!1370969)))

(assert (=> bs!823952 (= lambda!164989 lambda!164932)))

(declare-fun bs!823953 () Bool)

(assert (= bs!823953 (and d!1371047 d!1370935)))

(assert (=> bs!823953 (= lambda!164989 lambda!164924)))

(declare-fun bs!823954 () Bool)

(assert (= bs!823954 (and d!1371047 d!1370971)))

(assert (=> bs!823954 (= lambda!164989 lambda!164933)))

(declare-fun bs!823955 () Bool)

(assert (= bs!823955 (and d!1371047 d!1370909)))

(assert (=> bs!823955 (= lambda!164989 lambda!164912)))

(declare-fun bs!823956 () Bool)

(assert (= bs!823956 (and d!1371047 d!1370957)))

(assert (=> bs!823956 (= lambda!164989 lambda!164930)))

(declare-fun bs!823957 () Bool)

(assert (= bs!823957 (and d!1371047 d!1370929)))

(assert (=> bs!823957 (= lambda!164989 lambda!164920)))

(declare-fun bs!823958 () Bool)

(assert (= bs!823958 (and d!1371047 d!1370897)))

(assert (=> bs!823958 (not (= lambda!164989 lambda!164908))))

(declare-fun bs!823959 () Bool)

(assert (= bs!823959 (and d!1371047 d!1370961)))

(assert (=> bs!823959 (= lambda!164989 lambda!164931)))

(declare-fun bs!823960 () Bool)

(assert (= bs!823960 (and d!1371047 d!1370901)))

(assert (=> bs!823960 (= lambda!164989 lambda!164911)))

(declare-fun lt!1666242 () ListMap!3367)

(assert (=> d!1371047 (invariantList!942 (toList!4106 lt!1666242))))

(declare-fun e!2789905 () ListMap!3367)

(assert (=> d!1371047 (= lt!1666242 e!2789905)))

(declare-fun c!763074 () Bool)

(assert (=> d!1371047 (= c!763074 (is-Cons!50351 (toList!4105 lm!1477)))))

(assert (=> d!1371047 (forall!10037 (toList!4105 lm!1477) lambda!164989)))

(assert (=> d!1371047 (= (extractMap!1105 (toList!4105 lm!1477)) lt!1666242)))

(declare-fun b!4479602 () Bool)

(assert (=> b!4479602 (= e!2789905 (addToMapMapFromBucket!604 (_2!28610 (h!56130 (toList!4105 lm!1477))) (extractMap!1105 (t!357429 (toList!4105 lm!1477)))))))

(declare-fun b!4479603 () Bool)

(assert (=> b!4479603 (= e!2789905 (ListMap!3368 Nil!50350))))

(assert (= (and d!1371047 c!763074) b!4479602))

(assert (= (and d!1371047 (not c!763074)) b!4479603))

(declare-fun m!5198007 () Bool)

(assert (=> d!1371047 m!5198007))

(declare-fun m!5198009 () Bool)

(assert (=> d!1371047 m!5198009))

(assert (=> b!4479602 m!5197249))

(assert (=> b!4479602 m!5197249))

(declare-fun m!5198011 () Bool)

(assert (=> b!4479602 m!5198011))

(assert (=> b!4479245 d!1371047))

(declare-fun tp!1336570 () Bool)

(declare-fun e!2789908 () Bool)

(declare-fun b!4479608 () Bool)

(assert (=> b!4479608 (= e!2789908 (and tp_is_empty!27473 tp_is_empty!27475 tp!1336570))))

(assert (=> b!4479263 (= tp!1336561 e!2789908)))

(assert (= (and b!4479263 (is-Cons!50350 (t!357428 newBucket!178))) b!4479608))

(declare-fun b!4479613 () Bool)

(declare-fun e!2789911 () Bool)

(declare-fun tp!1336575 () Bool)

(declare-fun tp!1336576 () Bool)

(assert (=> b!4479613 (= e!2789911 (and tp!1336575 tp!1336576))))

(assert (=> b!4479264 (= tp!1336560 e!2789911)))

(assert (= (and b!4479264 (is-Cons!50351 (toList!4105 lm!1477))) b!4479613))

(declare-fun b_lambda!150249 () Bool)

(assert (= b_lambda!150245 (or start!440418 b_lambda!150249)))

(declare-fun bs!823961 () Bool)

(declare-fun d!1371049 () Bool)

(assert (= bs!823961 (and d!1371049 start!440418)))

(assert (=> bs!823961 (= (dynLambda!21039 lambda!164898 lt!1665873) (noDuplicateKeys!1049 (_2!28610 lt!1665873)))))

(declare-fun m!5198013 () Bool)

(assert (=> bs!823961 m!5198013))

(assert (=> d!1370945 d!1371049))

(declare-fun b_lambda!150251 () Bool)

(assert (= b_lambda!150241 (or start!440418 b_lambda!150251)))

(declare-fun bs!823962 () Bool)

(declare-fun d!1371051 () Bool)

(assert (= bs!823962 (and d!1371051 start!440418)))

(assert (=> bs!823962 (= (dynLambda!21039 lambda!164898 (h!56130 (t!357429 (toList!4105 lm!1477)))) (noDuplicateKeys!1049 (_2!28610 (h!56130 (t!357429 (toList!4105 lm!1477))))))))

(declare-fun m!5198015 () Bool)

(assert (=> bs!823962 m!5198015))

(assert (=> b!4479347 d!1371051))

(declare-fun b_lambda!150253 () Bool)

(assert (= b_lambda!150247 (or start!440418 b_lambda!150253)))

(declare-fun bs!823963 () Bool)

(declare-fun d!1371053 () Bool)

(assert (= bs!823963 (and d!1371053 start!440418)))

(assert (=> bs!823963 (= (dynLambda!21039 lambda!164898 (h!56130 (toList!4105 lm!1477))) (noDuplicateKeys!1049 (_2!28610 (h!56130 (toList!4105 lm!1477)))))))

(assert (=> bs!823963 m!5197733))

(assert (=> b!4479446 d!1371053))

(push 1)

(assert (not d!1370985))

(assert (not b!4479422))

(assert (not b!4479405))

(assert (not d!1371043))

(assert (not d!1370935))

(assert (not b!4479594))

(assert (not d!1370917))

(assert (not d!1370893))

(assert (not d!1370953))

(assert (not bm!311963))

(assert (not b!4479359))

(assert (not b!4479360))

(assert (not d!1370963))

(assert (not d!1370911))

(assert (not d!1370987))

(assert (not b!4479447))

(assert (not b!4479433))

(assert (not b!4479361))

(assert (not b!4479365))

(assert (not d!1370945))

(assert (not d!1370977))

(assert (not b!4479348))

(assert (not b!4479599))

(assert (not d!1370949))

(assert (not d!1371041))

(assert (not b!4479456))

(assert (not d!1370909))

(assert (not b!4479589))

(assert (not b!4479598))

(assert (not b!4479467))

(assert (not b!4479474))

(assert (not b!4479575))

(assert (not b!4479588))

(assert (not b!4479608))

(assert (not b!4479595))

(assert (not b!4479407))

(assert (not b!4479409))

(assert (not b!4479444))

(assert (not b!4479454))

(assert (not d!1370929))

(assert (not b!4479590))

(assert (not b!4479430))

(assert (not b!4479463))

(assert (not b!4479339))

(assert (not b!4479472))

(assert (not b!4479484))

(assert (not b!4479406))

(assert (not b!4479424))

(assert (not b!4479602))

(assert (not d!1370907))

(assert (not b!4479375))

(assert (not b!4479460))

(assert (not b!4479410))

(assert (not b!4479464))

(assert (not d!1370983))

(assert (not bs!823962))

(assert (not b!4479475))

(assert (not d!1370901))

(assert (not d!1370937))

(assert (not b!4479476))

(assert (not b!4479597))

(assert (not d!1370927))

(assert (not b!4479465))

(assert (not d!1371037))

(assert (not bs!823961))

(assert (not bm!311961))

(assert (not d!1370961))

(assert (not b!4479473))

(assert (not b!4479462))

(assert (not bm!311948))

(assert (not bm!311962))

(assert tp_is_empty!27475)

(assert (not b!4479577))

(assert (not d!1370895))

(assert (not d!1370905))

(assert (not d!1370941))

(assert (not d!1370971))

(assert (not b!4479408))

(assert (not d!1370969))

(assert (not d!1370975))

(assert (not b!4479378))

(assert tp_is_empty!27473)

(assert (not b!4479357))

(assert (not b_lambda!150251))

(assert (not d!1371035))

(assert (not bm!311947))

(assert (not b!4479415))

(assert (not d!1370957))

(assert (not d!1370947))

(assert (not b!4479596))

(assert (not b!4479411))

(assert (not d!1371047))

(assert (not d!1371045))

(assert (not b!4479470))

(assert (not b!4479471))

(assert (not b!4479340))

(assert (not d!1370939))

(assert (not b_lambda!150253))

(assert (not b!4479600))

(assert (not b!4479613))

(assert (not d!1370897))

(assert (not d!1370931))

(assert (not bs!823963))

(assert (not d!1370973))

(assert (not b!4479372))

(assert (not b!4479573))

(assert (not bm!311960))

(assert (not b!4479592))

(assert (not d!1370923))

(assert (not d!1370925))

(assert (not b!4479376))

(assert (not b!4479576))

(assert (not d!1370967))

(assert (not b_lambda!150249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

