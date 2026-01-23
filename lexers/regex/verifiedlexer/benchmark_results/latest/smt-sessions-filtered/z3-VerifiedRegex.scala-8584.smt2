; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!456328 () Bool)

(assert start!456328)

(declare-fun bs!975036 () Bool)

(declare-fun b!4582126 () Bool)

(assert (= bs!975036 (and b!4582126 start!456328)))

(declare-fun lambda!183400 () Int)

(declare-fun lambda!183399 () Int)

(assert (=> bs!975036 (not (= lambda!183400 lambda!183399))))

(assert (=> b!4582126 true))

(assert (=> b!4582126 true))

(assert (=> b!4582126 true))

(declare-fun b!4582099 () Bool)

(declare-fun e!2857382 () Bool)

(declare-fun e!2857386 () Bool)

(assert (=> b!4582099 (= e!2857382 e!2857386)))

(declare-fun res!1914566 () Bool)

(assert (=> b!4582099 (=> res!1914566 e!2857386)))

(declare-fun lt!1747021 () Bool)

(assert (=> b!4582099 (= res!1914566 lt!1747021)))

(declare-datatypes ((Unit!105923 0))(
  ( (Unit!105924) )
))
(declare-fun lt!1747030 () Unit!105923)

(declare-fun e!2857384 () Unit!105923)

(assert (=> b!4582099 (= lt!1747030 e!2857384)))

(declare-fun c!784341 () Bool)

(assert (=> b!4582099 (= c!784341 lt!1747021)))

(declare-datatypes ((K!12325 0))(
  ( (K!12326 (val!18131 Int)) )
))
(declare-datatypes ((V!12571 0))(
  ( (V!12572 (val!18132 Int)) )
))
(declare-datatypes ((tuple2!51530 0))(
  ( (tuple2!51531 (_1!29059 K!12325) (_2!29059 V!12571)) )
))
(declare-datatypes ((List!51080 0))(
  ( (Nil!50956) (Cons!50956 (h!56893 tuple2!51530) (t!358070 List!51080)) )
))
(declare-datatypes ((tuple2!51532 0))(
  ( (tuple2!51533 (_1!29060 (_ BitVec 64)) (_2!29060 List!51080)) )
))
(declare-fun lt!1746997 () tuple2!51532)

(declare-fun key!3287 () K!12325)

(declare-fun containsKey!2060 (List!51080 K!12325) Bool)

(assert (=> b!4582099 (= lt!1747021 (containsKey!2060 (_2!29060 lt!1746997) key!3287))))

(declare-fun b!4582101 () Bool)

(declare-fun res!1914568 () Bool)

(declare-fun e!2857390 () Bool)

(assert (=> b!4582101 (=> res!1914568 e!2857390)))

(declare-datatypes ((ListMap!3817 0))(
  ( (ListMap!3818 (toList!4555 List!51080)) )
))
(declare-fun lt!1747027 () ListMap!3817)

(declare-fun lt!1747028 () ListMap!3817)

(declare-fun eq!713 (ListMap!3817 ListMap!3817) Bool)

(assert (=> b!4582101 (= res!1914568 (not (eq!713 lt!1747027 lt!1747028)))))

(declare-fun b!4582102 () Bool)

(declare-fun res!1914557 () Bool)

(assert (=> b!4582102 (=> res!1914557 e!2857390)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4582102 (= res!1914557 (bvsge (_1!29060 lt!1746997) hash!344))))

(declare-fun b!4582103 () Bool)

(declare-fun e!2857377 () Unit!105923)

(declare-fun Unit!105925 () Unit!105923)

(assert (=> b!4582103 (= e!2857377 Unit!105925)))

(declare-fun b!4582104 () Bool)

(declare-fun Unit!105926 () Unit!105923)

(assert (=> b!4582104 (= e!2857377 Unit!105926)))

(declare-datatypes ((Hashable!5669 0))(
  ( (HashableExt!5668 (__x!31372 Int)) )
))
(declare-fun hashF!1107 () Hashable!5669)

(declare-datatypes ((List!51081 0))(
  ( (Nil!50957) (Cons!50957 (h!56894 tuple2!51532) (t!358071 List!51081)) )
))
(declare-datatypes ((ListLongMap!3187 0))(
  ( (ListLongMap!3188 (toList!4556 List!51081)) )
))
(declare-fun lm!1477 () ListLongMap!3187)

(declare-fun lt!1747003 () Unit!105923)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!256 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> b!4582104 (= lt!1747003 (lemmaNotInItsHashBucketThenNotInMap!256 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4582104 false))

(declare-fun b!4582105 () Bool)

(declare-fun res!1914556 () Bool)

(declare-fun e!2857389 () Bool)

(assert (=> b!4582105 (=> (not res!1914556) (not e!2857389))))

(declare-fun allKeysSameHashInMap!1381 (ListLongMap!3187 Hashable!5669) Bool)

(assert (=> b!4582105 (= res!1914556 (allKeysSameHashInMap!1381 lm!1477 hashF!1107))))

(declare-fun b!4582106 () Bool)

(declare-fun e!2857394 () Bool)

(declare-fun e!2857392 () Bool)

(assert (=> b!4582106 (= e!2857394 (not e!2857392))))

(declare-fun res!1914576 () Bool)

(assert (=> b!4582106 (=> res!1914576 e!2857392)))

(declare-fun lt!1747008 () List!51080)

(declare-fun newBucket!178 () List!51080)

(declare-fun removePairForKey!901 (List!51080 K!12325) List!51080)

(assert (=> b!4582106 (= res!1914576 (not (= newBucket!178 (removePairForKey!901 lt!1747008 key!3287))))))

(declare-fun lt!1747005 () Unit!105923)

(declare-fun lt!1746998 () tuple2!51532)

(declare-fun forallContained!2770 (List!51081 Int tuple2!51532) Unit!105923)

(assert (=> b!4582106 (= lt!1747005 (forallContained!2770 (toList!4556 lm!1477) lambda!183399 lt!1746998))))

(declare-fun contains!13855 (List!51081 tuple2!51532) Bool)

(assert (=> b!4582106 (contains!13855 (toList!4556 lm!1477) lt!1746998)))

(assert (=> b!4582106 (= lt!1746998 (tuple2!51533 hash!344 lt!1747008))))

(declare-fun lt!1747001 () Unit!105923)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!786 (List!51081 (_ BitVec 64) List!51080) Unit!105923)

(assert (=> b!4582106 (= lt!1747001 (lemmaGetValueByKeyImpliesContainsTuple!786 (toList!4556 lm!1477) hash!344 lt!1747008))))

(declare-fun apply!12011 (ListLongMap!3187 (_ BitVec 64)) List!51080)

(assert (=> b!4582106 (= lt!1747008 (apply!12011 lm!1477 hash!344))))

(declare-fun lt!1747017 () (_ BitVec 64))

(declare-fun contains!13856 (ListLongMap!3187 (_ BitVec 64)) Bool)

(assert (=> b!4582106 (contains!13856 lm!1477 lt!1747017)))

(declare-fun lt!1747024 () Unit!105923)

(declare-fun lemmaInGenMapThenLongMapContainsHash!348 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> b!4582106 (= lt!1747024 (lemmaInGenMapThenLongMapContainsHash!348 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4582107 () Bool)

(declare-fun Unit!105927 () Unit!105923)

(assert (=> b!4582107 (= e!2857384 Unit!105927)))

(declare-fun tp_is_empty!28373 () Bool)

(declare-fun b!4582108 () Bool)

(declare-fun tp!1339774 () Bool)

(declare-fun tp_is_empty!28375 () Bool)

(declare-fun e!2857388 () Bool)

(assert (=> b!4582108 (= e!2857388 (and tp_is_empty!28373 tp_is_empty!28375 tp!1339774))))

(declare-fun b!4582109 () Bool)

(declare-fun res!1914570 () Bool)

(declare-fun e!2857381 () Bool)

(assert (=> b!4582109 (=> res!1914570 e!2857381)))

(assert (=> b!4582109 (= res!1914570 (not (contains!13855 (t!358071 (toList!4556 lm!1477)) lt!1746998)))))

(declare-fun b!4582110 () Bool)

(declare-fun e!2857387 () Bool)

(declare-fun lt!1747015 () ListMap!3817)

(declare-fun lt!1747014 () ListMap!3817)

(assert (=> b!4582110 (= e!2857387 (eq!713 lt!1747015 lt!1747014))))

(declare-fun b!4582111 () Bool)

(declare-fun e!2857379 () Bool)

(declare-fun tp!1339775 () Bool)

(assert (=> b!4582111 (= e!2857379 tp!1339775)))

(declare-fun b!4582112 () Bool)

(declare-fun res!1914571 () Bool)

(assert (=> b!4582112 (=> res!1914571 e!2857392)))

(declare-fun noDuplicateKeys!1274 (List!51080) Bool)

(assert (=> b!4582112 (= res!1914571 (not (noDuplicateKeys!1274 newBucket!178)))))

(declare-fun res!1914577 () Bool)

(assert (=> start!456328 (=> (not res!1914577) (not e!2857389))))

(declare-fun forall!10506 (List!51081 Int) Bool)

(assert (=> start!456328 (= res!1914577 (forall!10506 (toList!4556 lm!1477) lambda!183399))))

(assert (=> start!456328 e!2857389))

(assert (=> start!456328 true))

(declare-fun inv!66509 (ListLongMap!3187) Bool)

(assert (=> start!456328 (and (inv!66509 lm!1477) e!2857379)))

(assert (=> start!456328 tp_is_empty!28373))

(assert (=> start!456328 e!2857388))

(declare-fun b!4582100 () Bool)

(declare-fun e!2857393 () Bool)

(declare-fun e!2857378 () Bool)

(assert (=> b!4582100 (= e!2857393 e!2857378)))

(declare-fun res!1914562 () Bool)

(assert (=> b!4582100 (=> res!1914562 e!2857378)))

(declare-fun containsKeyBiggerList!244 (List!51081 K!12325) Bool)

(assert (=> b!4582100 (= res!1914562 (not (containsKeyBiggerList!244 (t!358071 (toList!4556 lm!1477)) key!3287)))))

(declare-fun lt!1747013 () ListLongMap!3187)

(assert (=> b!4582100 (containsKeyBiggerList!244 (toList!4556 lt!1747013) key!3287)))

(declare-fun lt!1747019 () Unit!105923)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!156 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> b!4582100 (= lt!1747019 (lemmaInLongMapThenContainsKeyBiggerList!156 lt!1747013 key!3287 hashF!1107))))

(declare-fun b!4582113 () Bool)

(declare-fun e!2857391 () Bool)

(assert (=> b!4582113 (= e!2857390 e!2857391)))

(declare-fun res!1914579 () Bool)

(assert (=> b!4582113 (=> res!1914579 e!2857391)))

(declare-fun lt!1747004 () ListLongMap!3187)

(declare-fun lt!1747012 () tuple2!51532)

(declare-fun +!1712 (ListLongMap!3187 tuple2!51532) ListLongMap!3187)

(assert (=> b!4582113 (= res!1914579 (not (= lt!1747004 (+!1712 lm!1477 lt!1747012))))))

(declare-fun lt!1747023 () ListLongMap!3187)

(assert (=> b!4582113 (= lt!1747004 (+!1712 lt!1747023 lt!1746997))))

(declare-fun b!4582114 () Bool)

(declare-fun e!2857376 () Bool)

(assert (=> b!4582114 (= e!2857376 e!2857387)))

(declare-fun res!1914573 () Bool)

(assert (=> b!4582114 (=> res!1914573 e!2857387)))

(declare-fun lt!1747011 () ListMap!3817)

(assert (=> b!4582114 (= res!1914573 (not (eq!713 lt!1747011 lt!1747014)))))

(declare-fun -!482 (ListMap!3817 K!12325) ListMap!3817)

(assert (=> b!4582114 (= lt!1747014 (-!482 lt!1747027 key!3287))))

(declare-fun b!4582115 () Bool)

(declare-fun res!1914575 () Bool)

(assert (=> b!4582115 (=> res!1914575 e!2857391)))

(declare-fun head!9542 (ListLongMap!3187) tuple2!51532)

(assert (=> b!4582115 (= res!1914575 (not (= (head!9542 lt!1747004) lt!1746997)))))

(declare-fun b!4582116 () Bool)

(declare-fun e!2857380 () Bool)

(assert (=> b!4582116 (= e!2857391 e!2857380)))

(declare-fun res!1914558 () Bool)

(assert (=> b!4582116 (=> res!1914558 e!2857380)))

(declare-fun lt!1747000 () ListMap!3817)

(assert (=> b!4582116 (= res!1914558 (not (eq!713 lt!1747015 lt!1747000)))))

(declare-fun lt!1747022 () ListMap!3817)

(declare-fun addToMapMapFromBucket!787 (List!51080 ListMap!3817) ListMap!3817)

(assert (=> b!4582116 (= lt!1747000 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747022))))

(declare-fun extractMap!1330 (List!51081) ListMap!3817)

(assert (=> b!4582116 (= lt!1747015 (extractMap!1330 (toList!4556 lt!1747004)))))

(declare-fun b!4582117 () Bool)

(declare-fun e!2857385 () Bool)

(assert (=> b!4582117 (= e!2857385 e!2857394)))

(declare-fun res!1914564 () Bool)

(assert (=> b!4582117 (=> (not res!1914564) (not e!2857394))))

(assert (=> b!4582117 (= res!1914564 (= lt!1747017 hash!344))))

(declare-fun hash!3127 (Hashable!5669 K!12325) (_ BitVec 64))

(assert (=> b!4582117 (= lt!1747017 (hash!3127 hashF!1107 key!3287))))

(declare-fun b!4582118 () Bool)

(declare-fun e!2857383 () Bool)

(assert (=> b!4582118 (= e!2857383 e!2857390)))

(declare-fun res!1914561 () Bool)

(assert (=> b!4582118 (=> res!1914561 e!2857390)))

(assert (=> b!4582118 (= res!1914561 (not (eq!713 lt!1747028 lt!1747027)))))

(assert (=> b!4582118 (= lt!1747028 (extractMap!1330 (toList!4556 (+!1712 lt!1747013 lt!1746997))))))

(assert (=> b!4582118 (= lt!1746997 (head!9542 lm!1477))))

(declare-fun lt!1747029 () ListMap!3817)

(assert (=> b!4582118 (eq!713 lt!1747022 lt!1747029)))

(declare-fun lt!1747025 () ListMap!3817)

(assert (=> b!4582118 (= lt!1747029 (-!482 lt!1747025 key!3287))))

(assert (=> b!4582118 (= lt!1747022 (extractMap!1330 (toList!4556 lt!1747023)))))

(assert (=> b!4582118 (= lt!1747023 (+!1712 lt!1747013 lt!1747012))))

(assert (=> b!4582118 (= lt!1747012 (tuple2!51533 hash!344 newBucket!178))))

(declare-fun lt!1747006 () Unit!105923)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!221 (ListLongMap!3187 (_ BitVec 64) List!51080 K!12325 Hashable!5669) Unit!105923)

(assert (=> b!4582118 (= lt!1747006 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!221 lt!1747013 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4582119 () Bool)

(declare-fun e!2857395 () Bool)

(assert (=> b!4582119 (= e!2857395 e!2857382)))

(declare-fun res!1914559 () Bool)

(assert (=> b!4582119 (=> res!1914559 e!2857382)))

(assert (=> b!4582119 (= res!1914559 (not (noDuplicateKeys!1274 (_2!29060 lt!1746997))))))

(declare-fun lt!1746996 () Unit!105923)

(assert (=> b!4582119 (= lt!1746996 (forallContained!2770 (toList!4556 lm!1477) lambda!183399 (h!56894 (toList!4556 lm!1477))))))

(declare-fun b!4582120 () Bool)

(assert (=> b!4582120 (= e!2857378 e!2857383)))

(declare-fun res!1914560 () Bool)

(assert (=> b!4582120 (=> res!1914560 e!2857383)))

(declare-fun contains!13857 (ListMap!3817 K!12325) Bool)

(assert (=> b!4582120 (= res!1914560 (not (contains!13857 (extractMap!1330 (t!358071 (toList!4556 lm!1477))) key!3287)))))

(assert (=> b!4582120 (contains!13857 lt!1747025 key!3287)))

(assert (=> b!4582120 (= lt!1747025 (extractMap!1330 (toList!4556 lt!1747013)))))

(declare-fun lt!1747002 () Unit!105923)

(declare-fun lemmaListContainsThenExtractedMapContains!230 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> b!4582120 (= lt!1747002 (lemmaListContainsThenExtractedMapContains!230 lt!1747013 key!3287 hashF!1107))))

(declare-fun b!4582121 () Bool)

(assert (=> b!4582121 (= e!2857389 e!2857385)))

(declare-fun res!1914572 () Bool)

(assert (=> b!4582121 (=> (not res!1914572) (not e!2857385))))

(assert (=> b!4582121 (= res!1914572 (contains!13857 lt!1747027 key!3287))))

(assert (=> b!4582121 (= lt!1747027 (extractMap!1330 (toList!4556 lm!1477)))))

(declare-fun b!4582122 () Bool)

(assert (=> b!4582122 (= e!2857392 e!2857381)))

(declare-fun res!1914563 () Bool)

(assert (=> b!4582122 (=> res!1914563 e!2857381)))

(assert (=> b!4582122 (= res!1914563 (not (contains!13856 lt!1747013 hash!344)))))

(declare-fun tail!7921 (ListLongMap!3187) ListLongMap!3187)

(assert (=> b!4582122 (= lt!1747013 (tail!7921 lm!1477))))

(declare-fun b!4582123 () Bool)

(assert (=> b!4582123 (= e!2857380 e!2857395)))

(declare-fun res!1914567 () Bool)

(assert (=> b!4582123 (=> res!1914567 e!2857395)))

(assert (=> b!4582123 (= res!1914567 (not (eq!713 lt!1747015 lt!1747011)))))

(assert (=> b!4582123 (eq!713 lt!1747000 lt!1747011)))

(assert (=> b!4582123 (= lt!1747011 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747029))))

(declare-fun lt!1747007 () Unit!105923)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!98 (ListMap!3817 ListMap!3817 List!51080) Unit!105923)

(assert (=> b!4582123 (= lt!1747007 (lemmaAddToMapFromBucketPreservesEquivalence!98 lt!1747022 lt!1747029 (_2!29060 lt!1746997)))))

(declare-fun b!4582124 () Bool)

(assert (=> b!4582124 (= e!2857386 e!2857376)))

(declare-fun res!1914569 () Bool)

(assert (=> b!4582124 (=> res!1914569 e!2857376)))

(declare-fun lt!1746999 () ListMap!3817)

(assert (=> b!4582124 (= res!1914569 (not (eq!713 lt!1747011 lt!1746999)))))

(assert (=> b!4582124 (= lt!1747011 lt!1746999)))

(assert (=> b!4582124 (= lt!1746999 (-!482 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747025) key!3287))))

(declare-fun lt!1747010 () Unit!105923)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!40 (ListMap!3817 K!12325 List!51080) Unit!105923)

(assert (=> b!4582124 (= lt!1747010 (lemmaAddToMapFromBucketMinusKeyIsCommutative!40 lt!1747025 key!3287 (_2!29060 lt!1746997)))))

(declare-fun b!4582125 () Bool)

(declare-fun res!1914565 () Bool)

(assert (=> b!4582125 (=> res!1914565 e!2857381)))

(assert (=> b!4582125 (= res!1914565 (not (= (apply!12011 lt!1747013 hash!344) lt!1747008)))))

(declare-fun Unit!105928 () Unit!105923)

(assert (=> b!4582126 (= e!2857384 Unit!105928)))

(assert (=> b!4582126 (not (= hash!344 (_1!29060 lt!1746997)))))

(declare-datatypes ((Option!11331 0))(
  ( (None!11330) (Some!11330 (v!45216 tuple2!51530)) )
))
(declare-fun lt!1747026 () Option!11331)

(declare-fun getPair!234 (List!51080 K!12325) Option!11331)

(assert (=> b!4582126 (= lt!1747026 (getPair!234 (_2!29060 lt!1746997) key!3287))))

(declare-fun lt!1747018 () Unit!105923)

(assert (=> b!4582126 (= lt!1747018 (forallContained!2770 (toList!4556 lm!1477) lambda!183400 (h!56894 (toList!4556 lm!1477))))))

(declare-fun lambda!183401 () Int)

(declare-fun lt!1747016 () Unit!105923)

(declare-fun forallContained!2771 (List!51080 Int tuple2!51530) Unit!105923)

(declare-fun get!16821 (Option!11331) tuple2!51530)

(assert (=> b!4582126 (= lt!1747016 (forallContained!2771 (_2!29060 (h!56894 (toList!4556 lm!1477))) lambda!183401 (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026)))))))

(assert (=> b!4582126 false))

(declare-fun b!4582127 () Bool)

(declare-fun res!1914574 () Bool)

(assert (=> b!4582127 (=> (not res!1914574) (not e!2857394))))

(declare-fun allKeysSameHash!1128 (List!51080 (_ BitVec 64) Hashable!5669) Bool)

(assert (=> b!4582127 (= res!1914574 (allKeysSameHash!1128 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4582128 () Bool)

(assert (=> b!4582128 (= e!2857381 e!2857393)))

(declare-fun res!1914555 () Bool)

(assert (=> b!4582128 (=> res!1914555 e!2857393)))

(declare-fun lt!1747009 () Bool)

(assert (=> b!4582128 (= res!1914555 lt!1747009)))

(declare-fun lt!1747020 () Unit!105923)

(assert (=> b!4582128 (= lt!1747020 e!2857377)))

(declare-fun c!784342 () Bool)

(assert (=> b!4582128 (= c!784342 lt!1747009)))

(assert (=> b!4582128 (= lt!1747009 (not (containsKey!2060 lt!1747008 key!3287)))))

(declare-fun b!4582129 () Bool)

(declare-fun res!1914578 () Bool)

(assert (=> b!4582129 (=> res!1914578 e!2857392)))

(get-info :version)

(assert (=> b!4582129 (= res!1914578 (or ((_ is Nil!50957) (toList!4556 lm!1477)) (= (_1!29060 (h!56894 (toList!4556 lm!1477))) hash!344)))))

(assert (= (and start!456328 res!1914577) b!4582105))

(assert (= (and b!4582105 res!1914556) b!4582121))

(assert (= (and b!4582121 res!1914572) b!4582117))

(assert (= (and b!4582117 res!1914564) b!4582127))

(assert (= (and b!4582127 res!1914574) b!4582106))

(assert (= (and b!4582106 (not res!1914576)) b!4582112))

(assert (= (and b!4582112 (not res!1914571)) b!4582129))

(assert (= (and b!4582129 (not res!1914578)) b!4582122))

(assert (= (and b!4582122 (not res!1914563)) b!4582125))

(assert (= (and b!4582125 (not res!1914565)) b!4582109))

(assert (= (and b!4582109 (not res!1914570)) b!4582128))

(assert (= (and b!4582128 c!784342) b!4582104))

(assert (= (and b!4582128 (not c!784342)) b!4582103))

(assert (= (and b!4582128 (not res!1914555)) b!4582100))

(assert (= (and b!4582100 (not res!1914562)) b!4582120))

(assert (= (and b!4582120 (not res!1914560)) b!4582118))

(assert (= (and b!4582118 (not res!1914561)) b!4582101))

(assert (= (and b!4582101 (not res!1914568)) b!4582102))

(assert (= (and b!4582102 (not res!1914557)) b!4582113))

(assert (= (and b!4582113 (not res!1914579)) b!4582115))

(assert (= (and b!4582115 (not res!1914575)) b!4582116))

(assert (= (and b!4582116 (not res!1914558)) b!4582123))

(assert (= (and b!4582123 (not res!1914567)) b!4582119))

(assert (= (and b!4582119 (not res!1914559)) b!4582099))

(assert (= (and b!4582099 c!784341) b!4582126))

(assert (= (and b!4582099 (not c!784341)) b!4582107))

(assert (= (and b!4582099 (not res!1914566)) b!4582124))

(assert (= (and b!4582124 (not res!1914569)) b!4582114))

(assert (= (and b!4582114 (not res!1914573)) b!4582110))

(assert (= start!456328 b!4582111))

(assert (= (and start!456328 ((_ is Cons!50956) newBucket!178)) b!4582108))

(declare-fun m!5394181 () Bool)

(assert (=> b!4582128 m!5394181))

(declare-fun m!5394183 () Bool)

(assert (=> b!4582121 m!5394183))

(declare-fun m!5394185 () Bool)

(assert (=> b!4582121 m!5394185))

(declare-fun m!5394187 () Bool)

(assert (=> b!4582117 m!5394187))

(declare-fun m!5394189 () Bool)

(assert (=> b!4582123 m!5394189))

(declare-fun m!5394191 () Bool)

(assert (=> b!4582123 m!5394191))

(declare-fun m!5394193 () Bool)

(assert (=> b!4582123 m!5394193))

(declare-fun m!5394195 () Bool)

(assert (=> b!4582123 m!5394195))

(declare-fun m!5394197 () Bool)

(assert (=> b!4582116 m!5394197))

(declare-fun m!5394199 () Bool)

(assert (=> b!4582116 m!5394199))

(declare-fun m!5394201 () Bool)

(assert (=> b!4582116 m!5394201))

(declare-fun m!5394203 () Bool)

(assert (=> b!4582122 m!5394203))

(declare-fun m!5394205 () Bool)

(assert (=> b!4582122 m!5394205))

(declare-fun m!5394207 () Bool)

(assert (=> b!4582127 m!5394207))

(declare-fun m!5394209 () Bool)

(assert (=> b!4582101 m!5394209))

(declare-fun m!5394211 () Bool)

(assert (=> b!4582109 m!5394211))

(declare-fun m!5394213 () Bool)

(assert (=> b!4582106 m!5394213))

(declare-fun m!5394215 () Bool)

(assert (=> b!4582106 m!5394215))

(declare-fun m!5394217 () Bool)

(assert (=> b!4582106 m!5394217))

(declare-fun m!5394219 () Bool)

(assert (=> b!4582106 m!5394219))

(declare-fun m!5394221 () Bool)

(assert (=> b!4582106 m!5394221))

(declare-fun m!5394223 () Bool)

(assert (=> b!4582106 m!5394223))

(declare-fun m!5394225 () Bool)

(assert (=> b!4582106 m!5394225))

(declare-fun m!5394227 () Bool)

(assert (=> b!4582114 m!5394227))

(declare-fun m!5394229 () Bool)

(assert (=> b!4582114 m!5394229))

(declare-fun m!5394231 () Bool)

(assert (=> b!4582104 m!5394231))

(declare-fun m!5394233 () Bool)

(assert (=> b!4582120 m!5394233))

(declare-fun m!5394235 () Bool)

(assert (=> b!4582120 m!5394235))

(declare-fun m!5394237 () Bool)

(assert (=> b!4582120 m!5394237))

(assert (=> b!4582120 m!5394235))

(declare-fun m!5394239 () Bool)

(assert (=> b!4582120 m!5394239))

(declare-fun m!5394241 () Bool)

(assert (=> b!4582120 m!5394241))

(declare-fun m!5394243 () Bool)

(assert (=> b!4582118 m!5394243))

(declare-fun m!5394245 () Bool)

(assert (=> b!4582118 m!5394245))

(declare-fun m!5394247 () Bool)

(assert (=> b!4582118 m!5394247))

(declare-fun m!5394249 () Bool)

(assert (=> b!4582118 m!5394249))

(declare-fun m!5394251 () Bool)

(assert (=> b!4582118 m!5394251))

(declare-fun m!5394253 () Bool)

(assert (=> b!4582118 m!5394253))

(declare-fun m!5394255 () Bool)

(assert (=> b!4582118 m!5394255))

(declare-fun m!5394257 () Bool)

(assert (=> b!4582118 m!5394257))

(declare-fun m!5394259 () Bool)

(assert (=> b!4582118 m!5394259))

(declare-fun m!5394261 () Bool)

(assert (=> b!4582112 m!5394261))

(declare-fun m!5394263 () Bool)

(assert (=> b!4582110 m!5394263))

(declare-fun m!5394265 () Bool)

(assert (=> start!456328 m!5394265))

(declare-fun m!5394267 () Bool)

(assert (=> start!456328 m!5394267))

(declare-fun m!5394269 () Bool)

(assert (=> b!4582099 m!5394269))

(declare-fun m!5394271 () Bool)

(assert (=> b!4582100 m!5394271))

(declare-fun m!5394273 () Bool)

(assert (=> b!4582100 m!5394273))

(declare-fun m!5394275 () Bool)

(assert (=> b!4582100 m!5394275))

(declare-fun m!5394277 () Bool)

(assert (=> b!4582125 m!5394277))

(declare-fun m!5394279 () Bool)

(assert (=> b!4582126 m!5394279))

(declare-fun m!5394281 () Bool)

(assert (=> b!4582126 m!5394281))

(declare-fun m!5394283 () Bool)

(assert (=> b!4582126 m!5394283))

(declare-fun m!5394285 () Bool)

(assert (=> b!4582126 m!5394285))

(declare-fun m!5394287 () Bool)

(assert (=> b!4582119 m!5394287))

(declare-fun m!5394289 () Bool)

(assert (=> b!4582119 m!5394289))

(declare-fun m!5394291 () Bool)

(assert (=> b!4582124 m!5394291))

(declare-fun m!5394293 () Bool)

(assert (=> b!4582124 m!5394293))

(assert (=> b!4582124 m!5394293))

(declare-fun m!5394295 () Bool)

(assert (=> b!4582124 m!5394295))

(declare-fun m!5394297 () Bool)

(assert (=> b!4582124 m!5394297))

(declare-fun m!5394299 () Bool)

(assert (=> b!4582105 m!5394299))

(declare-fun m!5394301 () Bool)

(assert (=> b!4582115 m!5394301))

(declare-fun m!5394303 () Bool)

(assert (=> b!4582113 m!5394303))

(declare-fun m!5394305 () Bool)

(assert (=> b!4582113 m!5394305))

(check-sat (not b!4582099) (not b!4582117) (not b!4582118) (not b!4582105) (not b!4582114) (not b!4582128) (not start!456328) (not b!4582124) (not b!4582113) tp_is_empty!28373 (not b!4582120) (not b!4582110) (not b!4582104) (not b!4582116) (not b!4582121) (not b!4582119) (not b!4582127) (not b!4582100) (not b!4582123) (not b!4582112) (not b!4582115) (not b!4582111) tp_is_empty!28375 (not b!4582125) (not b!4582106) (not b!4582126) (not b!4582109) (not b!4582101) (not b!4582122) (not b!4582108))
(check-sat)
(get-model)

(declare-fun d!1435313 () Bool)

(declare-fun res!1914584 () Bool)

(declare-fun e!2857400 () Bool)

(assert (=> d!1435313 (=> res!1914584 e!2857400)))

(assert (=> d!1435313 (= res!1914584 (not ((_ is Cons!50956) newBucket!178)))))

(assert (=> d!1435313 (= (noDuplicateKeys!1274 newBucket!178) e!2857400)))

(declare-fun b!4582140 () Bool)

(declare-fun e!2857401 () Bool)

(assert (=> b!4582140 (= e!2857400 e!2857401)))

(declare-fun res!1914585 () Bool)

(assert (=> b!4582140 (=> (not res!1914585) (not e!2857401))))

(assert (=> b!4582140 (= res!1914585 (not (containsKey!2060 (t!358070 newBucket!178) (_1!29059 (h!56893 newBucket!178)))))))

(declare-fun b!4582141 () Bool)

(assert (=> b!4582141 (= e!2857401 (noDuplicateKeys!1274 (t!358070 newBucket!178)))))

(assert (= (and d!1435313 (not res!1914584)) b!4582140))

(assert (= (and b!4582140 res!1914585) b!4582141))

(declare-fun m!5394307 () Bool)

(assert (=> b!4582140 m!5394307))

(declare-fun m!5394309 () Bool)

(assert (=> b!4582141 m!5394309))

(assert (=> b!4582112 d!1435313))

(declare-fun d!1435315 () Bool)

(declare-fun res!1914590 () Bool)

(declare-fun e!2857406 () Bool)

(assert (=> d!1435315 (=> res!1914590 e!2857406)))

(assert (=> d!1435315 (= res!1914590 ((_ is Nil!50957) (toList!4556 lm!1477)))))

(assert (=> d!1435315 (= (forall!10506 (toList!4556 lm!1477) lambda!183399) e!2857406)))

(declare-fun b!4582146 () Bool)

(declare-fun e!2857407 () Bool)

(assert (=> b!4582146 (= e!2857406 e!2857407)))

(declare-fun res!1914591 () Bool)

(assert (=> b!4582146 (=> (not res!1914591) (not e!2857407))))

(declare-fun dynLambda!21337 (Int tuple2!51532) Bool)

(assert (=> b!4582146 (= res!1914591 (dynLambda!21337 lambda!183399 (h!56894 (toList!4556 lm!1477))))))

(declare-fun b!4582147 () Bool)

(assert (=> b!4582147 (= e!2857407 (forall!10506 (t!358071 (toList!4556 lm!1477)) lambda!183399))))

(assert (= (and d!1435315 (not res!1914590)) b!4582146))

(assert (= (and b!4582146 res!1914591) b!4582147))

(declare-fun b_lambda!166395 () Bool)

(assert (=> (not b_lambda!166395) (not b!4582146)))

(declare-fun m!5394311 () Bool)

(assert (=> b!4582146 m!5394311))

(declare-fun m!5394313 () Bool)

(assert (=> b!4582147 m!5394313))

(assert (=> start!456328 d!1435315))

(declare-fun d!1435317 () Bool)

(declare-fun isStrictlySorted!513 (List!51081) Bool)

(assert (=> d!1435317 (= (inv!66509 lm!1477) (isStrictlySorted!513 (toList!4556 lm!1477)))))

(declare-fun bs!975037 () Bool)

(assert (= bs!975037 d!1435317))

(declare-fun m!5394315 () Bool)

(assert (=> bs!975037 m!5394315))

(assert (=> start!456328 d!1435317))

(declare-fun d!1435319 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8590 (List!51080) (InoxSet tuple2!51530))

(assert (=> d!1435319 (= (eq!713 lt!1747011 lt!1747014) (= (content!8590 (toList!4555 lt!1747011)) (content!8590 (toList!4555 lt!1747014))))))

(declare-fun bs!975038 () Bool)

(assert (= bs!975038 d!1435319))

(declare-fun m!5394317 () Bool)

(assert (=> bs!975038 m!5394317))

(declare-fun m!5394319 () Bool)

(assert (=> bs!975038 m!5394319))

(assert (=> b!4582114 d!1435319))

(declare-fun d!1435321 () Bool)

(declare-fun e!2857410 () Bool)

(assert (=> d!1435321 e!2857410))

(declare-fun res!1914594 () Bool)

(assert (=> d!1435321 (=> (not res!1914594) (not e!2857410))))

(declare-fun lt!1747033 () ListMap!3817)

(assert (=> d!1435321 (= res!1914594 (not (contains!13857 lt!1747033 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!212 (List!51080 K!12325) List!51080)

(assert (=> d!1435321 (= lt!1747033 (ListMap!3818 (removePresrvNoDuplicatedKeys!212 (toList!4555 lt!1747027) key!3287)))))

(assert (=> d!1435321 (= (-!482 lt!1747027 key!3287) lt!1747033)))

(declare-fun b!4582150 () Bool)

(declare-datatypes ((List!51082 0))(
  ( (Nil!50958) (Cons!50958 (h!56897 K!12325) (t!358072 List!51082)) )
))
(declare-fun content!8591 (List!51082) (InoxSet K!12325))

(declare-fun keys!17803 (ListMap!3817) List!51082)

(assert (=> b!4582150 (= e!2857410 (= ((_ map and) (content!8591 (keys!17803 lt!1747027)) ((_ map not) (store ((as const (Array K!12325 Bool)) false) key!3287 true))) (content!8591 (keys!17803 lt!1747033))))))

(assert (= (and d!1435321 res!1914594) b!4582150))

(declare-fun m!5394321 () Bool)

(assert (=> d!1435321 m!5394321))

(declare-fun m!5394323 () Bool)

(assert (=> d!1435321 m!5394323))

(declare-fun m!5394325 () Bool)

(assert (=> b!4582150 m!5394325))

(declare-fun m!5394327 () Bool)

(assert (=> b!4582150 m!5394327))

(declare-fun m!5394329 () Bool)

(assert (=> b!4582150 m!5394329))

(declare-fun m!5394331 () Bool)

(assert (=> b!4582150 m!5394331))

(assert (=> b!4582150 m!5394325))

(assert (=> b!4582150 m!5394329))

(declare-fun m!5394333 () Bool)

(assert (=> b!4582150 m!5394333))

(assert (=> b!4582114 d!1435321))

(declare-fun d!1435323 () Bool)

(declare-fun e!2857413 () Bool)

(assert (=> d!1435323 e!2857413))

(declare-fun res!1914599 () Bool)

(assert (=> d!1435323 (=> (not res!1914599) (not e!2857413))))

(declare-fun lt!1747043 () ListLongMap!3187)

(assert (=> d!1435323 (= res!1914599 (contains!13856 lt!1747043 (_1!29060 lt!1747012)))))

(declare-fun lt!1747045 () List!51081)

(assert (=> d!1435323 (= lt!1747043 (ListLongMap!3188 lt!1747045))))

(declare-fun lt!1747042 () Unit!105923)

(declare-fun lt!1747044 () Unit!105923)

(assert (=> d!1435323 (= lt!1747042 lt!1747044)))

(declare-datatypes ((Option!11334 0))(
  ( (None!11333) (Some!11333 (v!45223 List!51080)) )
))
(declare-fun getValueByKey!1257 (List!51081 (_ BitVec 64)) Option!11334)

(assert (=> d!1435323 (= (getValueByKey!1257 lt!1747045 (_1!29060 lt!1747012)) (Some!11333 (_2!29060 lt!1747012)))))

(declare-fun lemmaContainsTupThenGetReturnValue!781 (List!51081 (_ BitVec 64) List!51080) Unit!105923)

(assert (=> d!1435323 (= lt!1747044 (lemmaContainsTupThenGetReturnValue!781 lt!1747045 (_1!29060 lt!1747012) (_2!29060 lt!1747012)))))

(declare-fun insertStrictlySorted!479 (List!51081 (_ BitVec 64) List!51080) List!51081)

(assert (=> d!1435323 (= lt!1747045 (insertStrictlySorted!479 (toList!4556 lm!1477) (_1!29060 lt!1747012) (_2!29060 lt!1747012)))))

(assert (=> d!1435323 (= (+!1712 lm!1477 lt!1747012) lt!1747043)))

(declare-fun b!4582155 () Bool)

(declare-fun res!1914600 () Bool)

(assert (=> b!4582155 (=> (not res!1914600) (not e!2857413))))

(assert (=> b!4582155 (= res!1914600 (= (getValueByKey!1257 (toList!4556 lt!1747043) (_1!29060 lt!1747012)) (Some!11333 (_2!29060 lt!1747012))))))

(declare-fun b!4582156 () Bool)

(assert (=> b!4582156 (= e!2857413 (contains!13855 (toList!4556 lt!1747043) lt!1747012))))

(assert (= (and d!1435323 res!1914599) b!4582155))

(assert (= (and b!4582155 res!1914600) b!4582156))

(declare-fun m!5394335 () Bool)

(assert (=> d!1435323 m!5394335))

(declare-fun m!5394337 () Bool)

(assert (=> d!1435323 m!5394337))

(declare-fun m!5394339 () Bool)

(assert (=> d!1435323 m!5394339))

(declare-fun m!5394341 () Bool)

(assert (=> d!1435323 m!5394341))

(declare-fun m!5394343 () Bool)

(assert (=> b!4582155 m!5394343))

(declare-fun m!5394345 () Bool)

(assert (=> b!4582156 m!5394345))

(assert (=> b!4582113 d!1435323))

(declare-fun d!1435325 () Bool)

(declare-fun e!2857414 () Bool)

(assert (=> d!1435325 e!2857414))

(declare-fun res!1914601 () Bool)

(assert (=> d!1435325 (=> (not res!1914601) (not e!2857414))))

(declare-fun lt!1747047 () ListLongMap!3187)

(assert (=> d!1435325 (= res!1914601 (contains!13856 lt!1747047 (_1!29060 lt!1746997)))))

(declare-fun lt!1747049 () List!51081)

(assert (=> d!1435325 (= lt!1747047 (ListLongMap!3188 lt!1747049))))

(declare-fun lt!1747046 () Unit!105923)

(declare-fun lt!1747048 () Unit!105923)

(assert (=> d!1435325 (= lt!1747046 lt!1747048)))

(assert (=> d!1435325 (= (getValueByKey!1257 lt!1747049 (_1!29060 lt!1746997)) (Some!11333 (_2!29060 lt!1746997)))))

(assert (=> d!1435325 (= lt!1747048 (lemmaContainsTupThenGetReturnValue!781 lt!1747049 (_1!29060 lt!1746997) (_2!29060 lt!1746997)))))

(assert (=> d!1435325 (= lt!1747049 (insertStrictlySorted!479 (toList!4556 lt!1747023) (_1!29060 lt!1746997) (_2!29060 lt!1746997)))))

(assert (=> d!1435325 (= (+!1712 lt!1747023 lt!1746997) lt!1747047)))

(declare-fun b!4582157 () Bool)

(declare-fun res!1914602 () Bool)

(assert (=> b!4582157 (=> (not res!1914602) (not e!2857414))))

(assert (=> b!4582157 (= res!1914602 (= (getValueByKey!1257 (toList!4556 lt!1747047) (_1!29060 lt!1746997)) (Some!11333 (_2!29060 lt!1746997))))))

(declare-fun b!4582158 () Bool)

(assert (=> b!4582158 (= e!2857414 (contains!13855 (toList!4556 lt!1747047) lt!1746997))))

(assert (= (and d!1435325 res!1914601) b!4582157))

(assert (= (and b!4582157 res!1914602) b!4582158))

(declare-fun m!5394347 () Bool)

(assert (=> d!1435325 m!5394347))

(declare-fun m!5394349 () Bool)

(assert (=> d!1435325 m!5394349))

(declare-fun m!5394351 () Bool)

(assert (=> d!1435325 m!5394351))

(declare-fun m!5394353 () Bool)

(assert (=> d!1435325 m!5394353))

(declare-fun m!5394355 () Bool)

(assert (=> b!4582157 m!5394355))

(declare-fun m!5394357 () Bool)

(assert (=> b!4582158 m!5394357))

(assert (=> b!4582113 d!1435325))

(declare-fun d!1435327 () Bool)

(declare-fun head!9544 (List!51081) tuple2!51532)

(assert (=> d!1435327 (= (head!9542 lt!1747004) (head!9544 (toList!4556 lt!1747004)))))

(declare-fun bs!975039 () Bool)

(assert (= bs!975039 d!1435327))

(declare-fun m!5394359 () Bool)

(assert (=> bs!975039 m!5394359))

(assert (=> b!4582115 d!1435327))

(declare-fun d!1435329 () Bool)

(assert (=> d!1435329 (= (eq!713 lt!1747015 lt!1747000) (= (content!8590 (toList!4555 lt!1747015)) (content!8590 (toList!4555 lt!1747000))))))

(declare-fun bs!975040 () Bool)

(assert (= bs!975040 d!1435329))

(declare-fun m!5394361 () Bool)

(assert (=> bs!975040 m!5394361))

(declare-fun m!5394363 () Bool)

(assert (=> bs!975040 m!5394363))

(assert (=> b!4582116 d!1435329))

(declare-fun bs!975062 () Bool)

(declare-fun b!4582223 () Bool)

(assert (= bs!975062 (and b!4582223 b!4582126)))

(declare-fun lambda!183471 () Int)

(assert (=> bs!975062 (not (= lambda!183471 lambda!183401))))

(assert (=> b!4582223 true))

(declare-fun bs!975063 () Bool)

(declare-fun b!4582221 () Bool)

(assert (= bs!975063 (and b!4582221 b!4582126)))

(declare-fun lambda!183472 () Int)

(assert (=> bs!975063 (not (= lambda!183472 lambda!183401))))

(declare-fun bs!975064 () Bool)

(assert (= bs!975064 (and b!4582221 b!4582223)))

(assert (=> bs!975064 (= lambda!183472 lambda!183471)))

(assert (=> b!4582221 true))

(declare-fun lambda!183473 () Int)

(assert (=> bs!975063 (not (= lambda!183473 lambda!183401))))

(declare-fun lt!1747204 () ListMap!3817)

(assert (=> bs!975064 (= (= lt!1747204 lt!1747022) (= lambda!183473 lambda!183471))))

(assert (=> b!4582221 (= (= lt!1747204 lt!1747022) (= lambda!183473 lambda!183472))))

(assert (=> b!4582221 true))

(declare-fun bs!975065 () Bool)

(declare-fun d!1435331 () Bool)

(assert (= bs!975065 (and d!1435331 b!4582126)))

(declare-fun lambda!183474 () Int)

(assert (=> bs!975065 (not (= lambda!183474 lambda!183401))))

(declare-fun bs!975066 () Bool)

(assert (= bs!975066 (and d!1435331 b!4582223)))

(declare-fun lt!1747209 () ListMap!3817)

(assert (=> bs!975066 (= (= lt!1747209 lt!1747022) (= lambda!183474 lambda!183471))))

(declare-fun bs!975067 () Bool)

(assert (= bs!975067 (and d!1435331 b!4582221)))

(assert (=> bs!975067 (= (= lt!1747209 lt!1747022) (= lambda!183474 lambda!183472))))

(assert (=> bs!975067 (= (= lt!1747209 lt!1747204) (= lambda!183474 lambda!183473))))

(assert (=> d!1435331 true))

(declare-fun e!2857451 () ListMap!3817)

(assert (=> b!4582221 (= e!2857451 lt!1747204)))

(declare-fun lt!1747193 () ListMap!3817)

(declare-fun +!1714 (ListMap!3817 tuple2!51530) ListMap!3817)

(assert (=> b!4582221 (= lt!1747193 (+!1714 lt!1747022 (h!56893 (_2!29060 lt!1746997))))))

(assert (=> b!4582221 (= lt!1747204 (addToMapMapFromBucket!787 (t!358070 (_2!29060 lt!1746997)) (+!1714 lt!1747022 (h!56893 (_2!29060 lt!1746997)))))))

(declare-fun lt!1747197 () Unit!105923)

(declare-fun call!319918 () Unit!105923)

(assert (=> b!4582221 (= lt!1747197 call!319918)))

(declare-fun forall!10508 (List!51080 Int) Bool)

(assert (=> b!4582221 (forall!10508 (toList!4555 lt!1747022) lambda!183472)))

(declare-fun lt!1747196 () Unit!105923)

(assert (=> b!4582221 (= lt!1747196 lt!1747197)))

(assert (=> b!4582221 (forall!10508 (toList!4555 lt!1747193) lambda!183473)))

(declare-fun lt!1747199 () Unit!105923)

(declare-fun Unit!105943 () Unit!105923)

(assert (=> b!4582221 (= lt!1747199 Unit!105943)))

(declare-fun call!319919 () Bool)

(assert (=> b!4582221 call!319919))

(declare-fun lt!1747203 () Unit!105923)

(declare-fun Unit!105944 () Unit!105923)

(assert (=> b!4582221 (= lt!1747203 Unit!105944)))

(declare-fun lt!1747190 () Unit!105923)

(declare-fun Unit!105945 () Unit!105923)

(assert (=> b!4582221 (= lt!1747190 Unit!105945)))

(declare-fun lt!1747208 () Unit!105923)

(assert (=> b!4582221 (= lt!1747208 (forallContained!2771 (toList!4555 lt!1747193) lambda!183473 (h!56893 (_2!29060 lt!1746997))))))

(assert (=> b!4582221 (contains!13857 lt!1747193 (_1!29059 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun lt!1747202 () Unit!105923)

(declare-fun Unit!105946 () Unit!105923)

(assert (=> b!4582221 (= lt!1747202 Unit!105946)))

(assert (=> b!4582221 (contains!13857 lt!1747204 (_1!29059 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun lt!1747201 () Unit!105923)

(declare-fun Unit!105947 () Unit!105923)

(assert (=> b!4582221 (= lt!1747201 Unit!105947)))

(assert (=> b!4582221 (forall!10508 (_2!29060 lt!1746997) lambda!183473)))

(declare-fun lt!1747191 () Unit!105923)

(declare-fun Unit!105948 () Unit!105923)

(assert (=> b!4582221 (= lt!1747191 Unit!105948)))

(assert (=> b!4582221 (forall!10508 (toList!4555 lt!1747193) lambda!183473)))

(declare-fun lt!1747205 () Unit!105923)

(declare-fun Unit!105949 () Unit!105923)

(assert (=> b!4582221 (= lt!1747205 Unit!105949)))

(declare-fun lt!1747198 () Unit!105923)

(declare-fun Unit!105950 () Unit!105923)

(assert (=> b!4582221 (= lt!1747198 Unit!105950)))

(declare-fun lt!1747192 () Unit!105923)

(declare-fun addForallContainsKeyThenBeforeAdding!416 (ListMap!3817 ListMap!3817 K!12325 V!12571) Unit!105923)

(assert (=> b!4582221 (= lt!1747192 (addForallContainsKeyThenBeforeAdding!416 lt!1747022 lt!1747204 (_1!29059 (h!56893 (_2!29060 lt!1746997))) (_2!29059 (h!56893 (_2!29060 lt!1746997)))))))

(assert (=> b!4582221 (forall!10508 (toList!4555 lt!1747022) lambda!183473)))

(declare-fun lt!1747206 () Unit!105923)

(assert (=> b!4582221 (= lt!1747206 lt!1747192)))

(assert (=> b!4582221 (forall!10508 (toList!4555 lt!1747022) lambda!183473)))

(declare-fun lt!1747207 () Unit!105923)

(declare-fun Unit!105951 () Unit!105923)

(assert (=> b!4582221 (= lt!1747207 Unit!105951)))

(declare-fun res!1914629 () Bool)

(assert (=> b!4582221 (= res!1914629 (forall!10508 (_2!29060 lt!1746997) lambda!183473))))

(declare-fun e!2857452 () Bool)

(assert (=> b!4582221 (=> (not res!1914629) (not e!2857452))))

(assert (=> b!4582221 e!2857452))

(declare-fun lt!1747194 () Unit!105923)

(declare-fun Unit!105952 () Unit!105923)

(assert (=> b!4582221 (= lt!1747194 Unit!105952)))

(declare-fun bm!319913 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!416 (ListMap!3817) Unit!105923)

(assert (=> bm!319913 (= call!319918 (lemmaContainsAllItsOwnKeys!416 lt!1747022))))

(declare-fun b!4582222 () Bool)

(declare-fun e!2857453 () Bool)

(declare-fun invariantList!1099 (List!51080) Bool)

(assert (=> b!4582222 (= e!2857453 (invariantList!1099 (toList!4555 lt!1747209)))))

(declare-fun bm!319914 () Bool)

(declare-fun c!784360 () Bool)

(declare-fun call!319920 () Bool)

(assert (=> bm!319914 (= call!319920 (forall!10508 (toList!4555 lt!1747022) (ite c!784360 lambda!183471 lambda!183473)))))

(declare-fun b!4582224 () Bool)

(assert (=> b!4582224 (= e!2857452 call!319920)))

(declare-fun bm!319915 () Bool)

(assert (=> bm!319915 (= call!319919 (forall!10508 (ite c!784360 (toList!4555 lt!1747022) (t!358070 (_2!29060 lt!1746997))) (ite c!784360 lambda!183471 lambda!183473)))))

(declare-fun b!4582225 () Bool)

(declare-fun res!1914627 () Bool)

(assert (=> b!4582225 (=> (not res!1914627) (not e!2857453))))

(assert (=> b!4582225 (= res!1914627 (forall!10508 (toList!4555 lt!1747022) lambda!183474))))

(assert (=> d!1435331 e!2857453))

(declare-fun res!1914628 () Bool)

(assert (=> d!1435331 (=> (not res!1914628) (not e!2857453))))

(assert (=> d!1435331 (= res!1914628 (forall!10508 (_2!29060 lt!1746997) lambda!183474))))

(assert (=> d!1435331 (= lt!1747209 e!2857451)))

(assert (=> d!1435331 (= c!784360 ((_ is Nil!50956) (_2!29060 lt!1746997)))))

(assert (=> d!1435331 (noDuplicateKeys!1274 (_2!29060 lt!1746997))))

(assert (=> d!1435331 (= (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747022) lt!1747209)))

(assert (=> b!4582223 (= e!2857451 lt!1747022)))

(declare-fun lt!1747189 () Unit!105923)

(assert (=> b!4582223 (= lt!1747189 call!319918)))

(assert (=> b!4582223 call!319919))

(declare-fun lt!1747200 () Unit!105923)

(assert (=> b!4582223 (= lt!1747200 lt!1747189)))

(assert (=> b!4582223 call!319920))

(declare-fun lt!1747195 () Unit!105923)

(declare-fun Unit!105953 () Unit!105923)

(assert (=> b!4582223 (= lt!1747195 Unit!105953)))

(assert (= (and d!1435331 c!784360) b!4582223))

(assert (= (and d!1435331 (not c!784360)) b!4582221))

(assert (= (and b!4582221 res!1914629) b!4582224))

(assert (= (or b!4582223 b!4582224) bm!319914))

(assert (= (or b!4582223 b!4582221) bm!319915))

(assert (= (or b!4582223 b!4582221) bm!319913))

(assert (= (and d!1435331 res!1914628) b!4582225))

(assert (= (and b!4582225 res!1914627) b!4582222))

(declare-fun m!5394457 () Bool)

(assert (=> bm!319914 m!5394457))

(declare-fun m!5394459 () Bool)

(assert (=> b!4582222 m!5394459))

(declare-fun m!5394461 () Bool)

(assert (=> d!1435331 m!5394461))

(assert (=> d!1435331 m!5394287))

(declare-fun m!5394463 () Bool)

(assert (=> b!4582225 m!5394463))

(declare-fun m!5394465 () Bool)

(assert (=> bm!319913 m!5394465))

(declare-fun m!5394467 () Bool)

(assert (=> b!4582221 m!5394467))

(declare-fun m!5394469 () Bool)

(assert (=> b!4582221 m!5394469))

(declare-fun m!5394471 () Bool)

(assert (=> b!4582221 m!5394471))

(declare-fun m!5394473 () Bool)

(assert (=> b!4582221 m!5394473))

(declare-fun m!5394475 () Bool)

(assert (=> b!4582221 m!5394475))

(declare-fun m!5394477 () Bool)

(assert (=> b!4582221 m!5394477))

(declare-fun m!5394479 () Bool)

(assert (=> b!4582221 m!5394479))

(assert (=> b!4582221 m!5394479))

(declare-fun m!5394481 () Bool)

(assert (=> b!4582221 m!5394481))

(assert (=> b!4582221 m!5394471))

(declare-fun m!5394483 () Bool)

(assert (=> b!4582221 m!5394483))

(assert (=> b!4582221 m!5394467))

(declare-fun m!5394485 () Bool)

(assert (=> b!4582221 m!5394485))

(assert (=> b!4582221 m!5394475))

(declare-fun m!5394487 () Bool)

(assert (=> bm!319915 m!5394487))

(assert (=> b!4582116 d!1435331))

(declare-fun bs!975072 () Bool)

(declare-fun d!1435357 () Bool)

(assert (= bs!975072 (and d!1435357 start!456328)))

(declare-fun lambda!183478 () Int)

(assert (=> bs!975072 (= lambda!183478 lambda!183399)))

(declare-fun bs!975073 () Bool)

(assert (= bs!975073 (and d!1435357 b!4582126)))

(assert (=> bs!975073 (not (= lambda!183478 lambda!183400))))

(declare-fun lt!1747227 () ListMap!3817)

(assert (=> d!1435357 (invariantList!1099 (toList!4555 lt!1747227))))

(declare-fun e!2857472 () ListMap!3817)

(assert (=> d!1435357 (= lt!1747227 e!2857472)))

(declare-fun c!784367 () Bool)

(assert (=> d!1435357 (= c!784367 ((_ is Cons!50957) (toList!4556 lt!1747004)))))

(assert (=> d!1435357 (forall!10506 (toList!4556 lt!1747004) lambda!183478)))

(assert (=> d!1435357 (= (extractMap!1330 (toList!4556 lt!1747004)) lt!1747227)))

(declare-fun b!4582252 () Bool)

(assert (=> b!4582252 (= e!2857472 (addToMapMapFromBucket!787 (_2!29060 (h!56894 (toList!4556 lt!1747004))) (extractMap!1330 (t!358071 (toList!4556 lt!1747004)))))))

(declare-fun b!4582253 () Bool)

(assert (=> b!4582253 (= e!2857472 (ListMap!3818 Nil!50956))))

(assert (= (and d!1435357 c!784367) b!4582252))

(assert (= (and d!1435357 (not c!784367)) b!4582253))

(declare-fun m!5394509 () Bool)

(assert (=> d!1435357 m!5394509))

(declare-fun m!5394511 () Bool)

(assert (=> d!1435357 m!5394511))

(declare-fun m!5394513 () Bool)

(assert (=> b!4582252 m!5394513))

(assert (=> b!4582252 m!5394513))

(declare-fun m!5394515 () Bool)

(assert (=> b!4582252 m!5394515))

(assert (=> b!4582116 d!1435357))

(declare-fun d!1435363 () Bool)

(assert (=> d!1435363 (= (eq!713 lt!1747022 lt!1747029) (= (content!8590 (toList!4555 lt!1747022)) (content!8590 (toList!4555 lt!1747029))))))

(declare-fun bs!975074 () Bool)

(assert (= bs!975074 d!1435363))

(declare-fun m!5394517 () Bool)

(assert (=> bs!975074 m!5394517))

(declare-fun m!5394519 () Bool)

(assert (=> bs!975074 m!5394519))

(assert (=> b!4582118 d!1435363))

(declare-fun bs!975075 () Bool)

(declare-fun d!1435365 () Bool)

(assert (= bs!975075 (and d!1435365 start!456328)))

(declare-fun lambda!183479 () Int)

(assert (=> bs!975075 (= lambda!183479 lambda!183399)))

(declare-fun bs!975076 () Bool)

(assert (= bs!975076 (and d!1435365 b!4582126)))

(assert (=> bs!975076 (not (= lambda!183479 lambda!183400))))

(declare-fun bs!975077 () Bool)

(assert (= bs!975077 (and d!1435365 d!1435357)))

(assert (=> bs!975077 (= lambda!183479 lambda!183478)))

(declare-fun lt!1747228 () ListMap!3817)

(assert (=> d!1435365 (invariantList!1099 (toList!4555 lt!1747228))))

(declare-fun e!2857473 () ListMap!3817)

(assert (=> d!1435365 (= lt!1747228 e!2857473)))

(declare-fun c!784368 () Bool)

(assert (=> d!1435365 (= c!784368 ((_ is Cons!50957) (toList!4556 (+!1712 lt!1747013 lt!1746997))))))

(assert (=> d!1435365 (forall!10506 (toList!4556 (+!1712 lt!1747013 lt!1746997)) lambda!183479)))

(assert (=> d!1435365 (= (extractMap!1330 (toList!4556 (+!1712 lt!1747013 lt!1746997))) lt!1747228)))

(declare-fun b!4582254 () Bool)

(assert (=> b!4582254 (= e!2857473 (addToMapMapFromBucket!787 (_2!29060 (h!56894 (toList!4556 (+!1712 lt!1747013 lt!1746997)))) (extractMap!1330 (t!358071 (toList!4556 (+!1712 lt!1747013 lt!1746997))))))))

(declare-fun b!4582255 () Bool)

(assert (=> b!4582255 (= e!2857473 (ListMap!3818 Nil!50956))))

(assert (= (and d!1435365 c!784368) b!4582254))

(assert (= (and d!1435365 (not c!784368)) b!4582255))

(declare-fun m!5394521 () Bool)

(assert (=> d!1435365 m!5394521))

(declare-fun m!5394523 () Bool)

(assert (=> d!1435365 m!5394523))

(declare-fun m!5394525 () Bool)

(assert (=> b!4582254 m!5394525))

(assert (=> b!4582254 m!5394525))

(declare-fun m!5394527 () Bool)

(assert (=> b!4582254 m!5394527))

(assert (=> b!4582118 d!1435365))

(declare-fun d!1435367 () Bool)

(declare-fun e!2857474 () Bool)

(assert (=> d!1435367 e!2857474))

(declare-fun res!1914642 () Bool)

(assert (=> d!1435367 (=> (not res!1914642) (not e!2857474))))

(declare-fun lt!1747230 () ListLongMap!3187)

(assert (=> d!1435367 (= res!1914642 (contains!13856 lt!1747230 (_1!29060 lt!1746997)))))

(declare-fun lt!1747232 () List!51081)

(assert (=> d!1435367 (= lt!1747230 (ListLongMap!3188 lt!1747232))))

(declare-fun lt!1747229 () Unit!105923)

(declare-fun lt!1747231 () Unit!105923)

(assert (=> d!1435367 (= lt!1747229 lt!1747231)))

(assert (=> d!1435367 (= (getValueByKey!1257 lt!1747232 (_1!29060 lt!1746997)) (Some!11333 (_2!29060 lt!1746997)))))

(assert (=> d!1435367 (= lt!1747231 (lemmaContainsTupThenGetReturnValue!781 lt!1747232 (_1!29060 lt!1746997) (_2!29060 lt!1746997)))))

(assert (=> d!1435367 (= lt!1747232 (insertStrictlySorted!479 (toList!4556 lt!1747013) (_1!29060 lt!1746997) (_2!29060 lt!1746997)))))

(assert (=> d!1435367 (= (+!1712 lt!1747013 lt!1746997) lt!1747230)))

(declare-fun b!4582256 () Bool)

(declare-fun res!1914643 () Bool)

(assert (=> b!4582256 (=> (not res!1914643) (not e!2857474))))

(assert (=> b!4582256 (= res!1914643 (= (getValueByKey!1257 (toList!4556 lt!1747230) (_1!29060 lt!1746997)) (Some!11333 (_2!29060 lt!1746997))))))

(declare-fun b!4582257 () Bool)

(assert (=> b!4582257 (= e!2857474 (contains!13855 (toList!4556 lt!1747230) lt!1746997))))

(assert (= (and d!1435367 res!1914642) b!4582256))

(assert (= (and b!4582256 res!1914643) b!4582257))

(declare-fun m!5394529 () Bool)

(assert (=> d!1435367 m!5394529))

(declare-fun m!5394531 () Bool)

(assert (=> d!1435367 m!5394531))

(declare-fun m!5394533 () Bool)

(assert (=> d!1435367 m!5394533))

(declare-fun m!5394535 () Bool)

(assert (=> d!1435367 m!5394535))

(declare-fun m!5394537 () Bool)

(assert (=> b!4582256 m!5394537))

(declare-fun m!5394539 () Bool)

(assert (=> b!4582257 m!5394539))

(assert (=> b!4582118 d!1435367))

(declare-fun bs!975079 () Bool)

(declare-fun d!1435369 () Bool)

(assert (= bs!975079 (and d!1435369 start!456328)))

(declare-fun lambda!183482 () Int)

(assert (=> bs!975079 (= lambda!183482 lambda!183399)))

(declare-fun bs!975080 () Bool)

(assert (= bs!975080 (and d!1435369 b!4582126)))

(assert (=> bs!975080 (not (= lambda!183482 lambda!183400))))

(declare-fun bs!975081 () Bool)

(assert (= bs!975081 (and d!1435369 d!1435357)))

(assert (=> bs!975081 (= lambda!183482 lambda!183478)))

(declare-fun bs!975082 () Bool)

(assert (= bs!975082 (and d!1435369 d!1435365)))

(assert (=> bs!975082 (= lambda!183482 lambda!183479)))

(assert (=> d!1435369 (eq!713 (extractMap!1330 (toList!4556 (+!1712 lt!1747013 (tuple2!51533 hash!344 newBucket!178)))) (-!482 (extractMap!1330 (toList!4556 lt!1747013)) key!3287))))

(declare-fun lt!1747251 () Unit!105923)

(declare-fun choose!30547 (ListLongMap!3187 (_ BitVec 64) List!51080 K!12325 Hashable!5669) Unit!105923)

(assert (=> d!1435369 (= lt!1747251 (choose!30547 lt!1747013 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1435369 (forall!10506 (toList!4556 lt!1747013) lambda!183482)))

(assert (=> d!1435369 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!221 lt!1747013 hash!344 newBucket!178 key!3287 hashF!1107) lt!1747251)))

(declare-fun bs!975083 () Bool)

(assert (= bs!975083 d!1435369))

(declare-fun m!5394569 () Bool)

(assert (=> bs!975083 m!5394569))

(declare-fun m!5394571 () Bool)

(assert (=> bs!975083 m!5394571))

(declare-fun m!5394573 () Bool)

(assert (=> bs!975083 m!5394573))

(assert (=> bs!975083 m!5394233))

(assert (=> bs!975083 m!5394571))

(declare-fun m!5394575 () Bool)

(assert (=> bs!975083 m!5394575))

(declare-fun m!5394577 () Bool)

(assert (=> bs!975083 m!5394577))

(declare-fun m!5394579 () Bool)

(assert (=> bs!975083 m!5394579))

(assert (=> bs!975083 m!5394233))

(assert (=> bs!975083 m!5394575))

(assert (=> b!4582118 d!1435369))

(declare-fun d!1435377 () Bool)

(assert (=> d!1435377 (= (eq!713 lt!1747028 lt!1747027) (= (content!8590 (toList!4555 lt!1747028)) (content!8590 (toList!4555 lt!1747027))))))

(declare-fun bs!975084 () Bool)

(assert (= bs!975084 d!1435377))

(declare-fun m!5394581 () Bool)

(assert (=> bs!975084 m!5394581))

(declare-fun m!5394583 () Bool)

(assert (=> bs!975084 m!5394583))

(assert (=> b!4582118 d!1435377))

(declare-fun d!1435379 () Bool)

(declare-fun e!2857479 () Bool)

(assert (=> d!1435379 e!2857479))

(declare-fun res!1914652 () Bool)

(assert (=> d!1435379 (=> (not res!1914652) (not e!2857479))))

(declare-fun lt!1747254 () ListMap!3817)

(assert (=> d!1435379 (= res!1914652 (not (contains!13857 lt!1747254 key!3287)))))

(assert (=> d!1435379 (= lt!1747254 (ListMap!3818 (removePresrvNoDuplicatedKeys!212 (toList!4555 lt!1747025) key!3287)))))

(assert (=> d!1435379 (= (-!482 lt!1747025 key!3287) lt!1747254)))

(declare-fun b!4582266 () Bool)

(assert (=> b!4582266 (= e!2857479 (= ((_ map and) (content!8591 (keys!17803 lt!1747025)) ((_ map not) (store ((as const (Array K!12325 Bool)) false) key!3287 true))) (content!8591 (keys!17803 lt!1747254))))))

(assert (= (and d!1435379 res!1914652) b!4582266))

(declare-fun m!5394585 () Bool)

(assert (=> d!1435379 m!5394585))

(declare-fun m!5394587 () Bool)

(assert (=> d!1435379 m!5394587))

(declare-fun m!5394589 () Bool)

(assert (=> b!4582266 m!5394589))

(declare-fun m!5394591 () Bool)

(assert (=> b!4582266 m!5394591))

(declare-fun m!5394593 () Bool)

(assert (=> b!4582266 m!5394593))

(declare-fun m!5394595 () Bool)

(assert (=> b!4582266 m!5394595))

(assert (=> b!4582266 m!5394589))

(assert (=> b!4582266 m!5394593))

(assert (=> b!4582266 m!5394333))

(assert (=> b!4582118 d!1435379))

(declare-fun bs!975086 () Bool)

(declare-fun d!1435381 () Bool)

(assert (= bs!975086 (and d!1435381 d!1435357)))

(declare-fun lambda!183486 () Int)

(assert (=> bs!975086 (= lambda!183486 lambda!183478)))

(declare-fun bs!975088 () Bool)

(assert (= bs!975088 (and d!1435381 b!4582126)))

(assert (=> bs!975088 (not (= lambda!183486 lambda!183400))))

(declare-fun bs!975090 () Bool)

(assert (= bs!975090 (and d!1435381 d!1435365)))

(assert (=> bs!975090 (= lambda!183486 lambda!183479)))

(declare-fun bs!975092 () Bool)

(assert (= bs!975092 (and d!1435381 d!1435369)))

(assert (=> bs!975092 (= lambda!183486 lambda!183482)))

(declare-fun bs!975094 () Bool)

(assert (= bs!975094 (and d!1435381 start!456328)))

(assert (=> bs!975094 (= lambda!183486 lambda!183399)))

(declare-fun lt!1747256 () ListMap!3817)

(assert (=> d!1435381 (invariantList!1099 (toList!4555 lt!1747256))))

(declare-fun e!2857480 () ListMap!3817)

(assert (=> d!1435381 (= lt!1747256 e!2857480)))

(declare-fun c!784369 () Bool)

(assert (=> d!1435381 (= c!784369 ((_ is Cons!50957) (toList!4556 lt!1747023)))))

(assert (=> d!1435381 (forall!10506 (toList!4556 lt!1747023) lambda!183486)))

(assert (=> d!1435381 (= (extractMap!1330 (toList!4556 lt!1747023)) lt!1747256)))

(declare-fun b!4582267 () Bool)

(assert (=> b!4582267 (= e!2857480 (addToMapMapFromBucket!787 (_2!29060 (h!56894 (toList!4556 lt!1747023))) (extractMap!1330 (t!358071 (toList!4556 lt!1747023)))))))

(declare-fun b!4582268 () Bool)

(assert (=> b!4582268 (= e!2857480 (ListMap!3818 Nil!50956))))

(assert (= (and d!1435381 c!784369) b!4582267))

(assert (= (and d!1435381 (not c!784369)) b!4582268))

(declare-fun m!5394597 () Bool)

(assert (=> d!1435381 m!5394597))

(declare-fun m!5394599 () Bool)

(assert (=> d!1435381 m!5394599))

(declare-fun m!5394603 () Bool)

(assert (=> b!4582267 m!5394603))

(assert (=> b!4582267 m!5394603))

(declare-fun m!5394605 () Bool)

(assert (=> b!4582267 m!5394605))

(assert (=> b!4582118 d!1435381))

(declare-fun d!1435383 () Bool)

(assert (=> d!1435383 (= (head!9542 lm!1477) (head!9544 (toList!4556 lm!1477)))))

(declare-fun bs!975096 () Bool)

(assert (= bs!975096 d!1435383))

(declare-fun m!5394613 () Bool)

(assert (=> bs!975096 m!5394613))

(assert (=> b!4582118 d!1435383))

(declare-fun d!1435385 () Bool)

(declare-fun e!2857481 () Bool)

(assert (=> d!1435385 e!2857481))

(declare-fun res!1914653 () Bool)

(assert (=> d!1435385 (=> (not res!1914653) (not e!2857481))))

(declare-fun lt!1747258 () ListLongMap!3187)

(assert (=> d!1435385 (= res!1914653 (contains!13856 lt!1747258 (_1!29060 lt!1747012)))))

(declare-fun lt!1747260 () List!51081)

(assert (=> d!1435385 (= lt!1747258 (ListLongMap!3188 lt!1747260))))

(declare-fun lt!1747257 () Unit!105923)

(declare-fun lt!1747259 () Unit!105923)

(assert (=> d!1435385 (= lt!1747257 lt!1747259)))

(assert (=> d!1435385 (= (getValueByKey!1257 lt!1747260 (_1!29060 lt!1747012)) (Some!11333 (_2!29060 lt!1747012)))))

(assert (=> d!1435385 (= lt!1747259 (lemmaContainsTupThenGetReturnValue!781 lt!1747260 (_1!29060 lt!1747012) (_2!29060 lt!1747012)))))

(assert (=> d!1435385 (= lt!1747260 (insertStrictlySorted!479 (toList!4556 lt!1747013) (_1!29060 lt!1747012) (_2!29060 lt!1747012)))))

(assert (=> d!1435385 (= (+!1712 lt!1747013 lt!1747012) lt!1747258)))

(declare-fun b!4582269 () Bool)

(declare-fun res!1914654 () Bool)

(assert (=> b!4582269 (=> (not res!1914654) (not e!2857481))))

(assert (=> b!4582269 (= res!1914654 (= (getValueByKey!1257 (toList!4556 lt!1747258) (_1!29060 lt!1747012)) (Some!11333 (_2!29060 lt!1747012))))))

(declare-fun b!4582270 () Bool)

(assert (=> b!4582270 (= e!2857481 (contains!13855 (toList!4556 lt!1747258) lt!1747012))))

(assert (= (and d!1435385 res!1914653) b!4582269))

(assert (= (and b!4582269 res!1914654) b!4582270))

(declare-fun m!5394619 () Bool)

(assert (=> d!1435385 m!5394619))

(declare-fun m!5394621 () Bool)

(assert (=> d!1435385 m!5394621))

(declare-fun m!5394623 () Bool)

(assert (=> d!1435385 m!5394623))

(declare-fun m!5394625 () Bool)

(assert (=> d!1435385 m!5394625))

(declare-fun m!5394627 () Bool)

(assert (=> b!4582269 m!5394627))

(declare-fun m!5394629 () Bool)

(assert (=> b!4582270 m!5394629))

(assert (=> b!4582118 d!1435385))

(declare-fun d!1435389 () Bool)

(declare-fun hash!3130 (Hashable!5669 K!12325) (_ BitVec 64))

(assert (=> d!1435389 (= (hash!3127 hashF!1107 key!3287) (hash!3130 hashF!1107 key!3287))))

(declare-fun bs!975104 () Bool)

(assert (= bs!975104 d!1435389))

(declare-fun m!5394641 () Bool)

(assert (=> bs!975104 m!5394641))

(assert (=> b!4582117 d!1435389))

(declare-fun d!1435395 () Bool)

(declare-fun res!1914655 () Bool)

(declare-fun e!2857484 () Bool)

(assert (=> d!1435395 (=> res!1914655 e!2857484)))

(assert (=> d!1435395 (= res!1914655 (not ((_ is Cons!50956) (_2!29060 lt!1746997))))))

(assert (=> d!1435395 (= (noDuplicateKeys!1274 (_2!29060 lt!1746997)) e!2857484)))

(declare-fun b!4582275 () Bool)

(declare-fun e!2857485 () Bool)

(assert (=> b!4582275 (= e!2857484 e!2857485)))

(declare-fun res!1914656 () Bool)

(assert (=> b!4582275 (=> (not res!1914656) (not e!2857485))))

(assert (=> b!4582275 (= res!1914656 (not (containsKey!2060 (t!358070 (_2!29060 lt!1746997)) (_1!29059 (h!56893 (_2!29060 lt!1746997))))))))

(declare-fun b!4582276 () Bool)

(assert (=> b!4582276 (= e!2857485 (noDuplicateKeys!1274 (t!358070 (_2!29060 lt!1746997))))))

(assert (= (and d!1435395 (not res!1914655)) b!4582275))

(assert (= (and b!4582275 res!1914656) b!4582276))

(declare-fun m!5394643 () Bool)

(assert (=> b!4582275 m!5394643))

(declare-fun m!5394645 () Bool)

(assert (=> b!4582276 m!5394645))

(assert (=> b!4582119 d!1435395))

(declare-fun d!1435397 () Bool)

(assert (=> d!1435397 (dynLambda!21337 lambda!183399 (h!56894 (toList!4556 lm!1477)))))

(declare-fun lt!1747265 () Unit!105923)

(declare-fun choose!30549 (List!51081 Int tuple2!51532) Unit!105923)

(assert (=> d!1435397 (= lt!1747265 (choose!30549 (toList!4556 lm!1477) lambda!183399 (h!56894 (toList!4556 lm!1477))))))

(declare-fun e!2857488 () Bool)

(assert (=> d!1435397 e!2857488))

(declare-fun res!1914659 () Bool)

(assert (=> d!1435397 (=> (not res!1914659) (not e!2857488))))

(assert (=> d!1435397 (= res!1914659 (forall!10506 (toList!4556 lm!1477) lambda!183399))))

(assert (=> d!1435397 (= (forallContained!2770 (toList!4556 lm!1477) lambda!183399 (h!56894 (toList!4556 lm!1477))) lt!1747265)))

(declare-fun b!4582279 () Bool)

(assert (=> b!4582279 (= e!2857488 (contains!13855 (toList!4556 lm!1477) (h!56894 (toList!4556 lm!1477))))))

(assert (= (and d!1435397 res!1914659) b!4582279))

(declare-fun b_lambda!166397 () Bool)

(assert (=> (not b_lambda!166397) (not d!1435397)))

(assert (=> d!1435397 m!5394311))

(declare-fun m!5394659 () Bool)

(assert (=> d!1435397 m!5394659))

(assert (=> d!1435397 m!5394265))

(declare-fun m!5394661 () Bool)

(assert (=> b!4582279 m!5394661))

(assert (=> b!4582119 d!1435397))

(declare-fun d!1435403 () Bool)

(declare-fun res!1914664 () Bool)

(declare-fun e!2857493 () Bool)

(assert (=> d!1435403 (=> res!1914664 e!2857493)))

(assert (=> d!1435403 (= res!1914664 (and ((_ is Cons!50956) (_2!29060 lt!1746997)) (= (_1!29059 (h!56893 (_2!29060 lt!1746997))) key!3287)))))

(assert (=> d!1435403 (= (containsKey!2060 (_2!29060 lt!1746997) key!3287) e!2857493)))

(declare-fun b!4582284 () Bool)

(declare-fun e!2857494 () Bool)

(assert (=> b!4582284 (= e!2857493 e!2857494)))

(declare-fun res!1914665 () Bool)

(assert (=> b!4582284 (=> (not res!1914665) (not e!2857494))))

(assert (=> b!4582284 (= res!1914665 ((_ is Cons!50956) (_2!29060 lt!1746997)))))

(declare-fun b!4582285 () Bool)

(assert (=> b!4582285 (= e!2857494 (containsKey!2060 (t!358070 (_2!29060 lt!1746997)) key!3287))))

(assert (= (and d!1435403 (not res!1914664)) b!4582284))

(assert (= (and b!4582284 res!1914665) b!4582285))

(declare-fun m!5394663 () Bool)

(assert (=> b!4582285 m!5394663))

(assert (=> b!4582099 d!1435403))

(declare-fun bs!975134 () Bool)

(declare-fun d!1435405 () Bool)

(assert (= bs!975134 (and d!1435405 d!1435381)))

(declare-fun lambda!183496 () Int)

(assert (=> bs!975134 (= lambda!183496 lambda!183486)))

(declare-fun bs!975136 () Bool)

(assert (= bs!975136 (and d!1435405 d!1435357)))

(assert (=> bs!975136 (= lambda!183496 lambda!183478)))

(declare-fun bs!975138 () Bool)

(assert (= bs!975138 (and d!1435405 b!4582126)))

(assert (=> bs!975138 (not (= lambda!183496 lambda!183400))))

(declare-fun bs!975141 () Bool)

(assert (= bs!975141 (and d!1435405 d!1435365)))

(assert (=> bs!975141 (= lambda!183496 lambda!183479)))

(declare-fun bs!975143 () Bool)

(assert (= bs!975143 (and d!1435405 d!1435369)))

(assert (=> bs!975143 (= lambda!183496 lambda!183482)))

(declare-fun bs!975145 () Bool)

(assert (= bs!975145 (and d!1435405 start!456328)))

(assert (=> bs!975145 (= lambda!183496 lambda!183399)))

(assert (=> d!1435405 (contains!13857 (extractMap!1330 (toList!4556 lt!1747013)) key!3287)))

(declare-fun lt!1747281 () Unit!105923)

(declare-fun choose!30550 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> d!1435405 (= lt!1747281 (choose!30550 lt!1747013 key!3287 hashF!1107))))

(assert (=> d!1435405 (forall!10506 (toList!4556 lt!1747013) lambda!183496)))

(assert (=> d!1435405 (= (lemmaListContainsThenExtractedMapContains!230 lt!1747013 key!3287 hashF!1107) lt!1747281)))

(declare-fun bs!975147 () Bool)

(assert (= bs!975147 d!1435405))

(assert (=> bs!975147 m!5394233))

(assert (=> bs!975147 m!5394233))

(declare-fun m!5394701 () Bool)

(assert (=> bs!975147 m!5394701))

(declare-fun m!5394703 () Bool)

(assert (=> bs!975147 m!5394703))

(declare-fun m!5394709 () Bool)

(assert (=> bs!975147 m!5394709))

(assert (=> b!4582120 d!1435405))

(declare-fun b!4582356 () Bool)

(declare-fun e!2857544 () Bool)

(declare-fun contains!13859 (List!51082 K!12325) Bool)

(assert (=> b!4582356 (= e!2857544 (not (contains!13859 (keys!17803 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287)))))

(declare-fun b!4582357 () Bool)

(declare-fun e!2857546 () List!51082)

(declare-fun getKeysList!547 (List!51080) List!51082)

(assert (=> b!4582357 (= e!2857546 (getKeysList!547 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477))))))))

(declare-fun b!4582358 () Bool)

(declare-fun e!2857542 () Unit!105923)

(declare-fun e!2857545 () Unit!105923)

(assert (=> b!4582358 (= e!2857542 e!2857545)))

(declare-fun c!784394 () Bool)

(declare-fun call!319926 () Bool)

(assert (=> b!4582358 (= c!784394 call!319926)))

(declare-fun b!4582359 () Bool)

(declare-fun lt!1747317 () Unit!105923)

(assert (=> b!4582359 (= e!2857542 lt!1747317)))

(declare-fun lt!1747320 () Unit!105923)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1162 (List!51080 K!12325) Unit!105923)

(assert (=> b!4582359 (= lt!1747320 (lemmaContainsKeyImpliesGetValueByKeyDefined!1162 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11335 0))(
  ( (None!11334) (Some!11334 (v!45224 V!12571)) )
))
(declare-fun isDefined!8602 (Option!11335) Bool)

(declare-fun getValueByKey!1259 (List!51080 K!12325) Option!11335)

(assert (=> b!4582359 (isDefined!8602 (getValueByKey!1259 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(declare-fun lt!1747319 () Unit!105923)

(assert (=> b!4582359 (= lt!1747319 lt!1747320)))

(declare-fun lemmaInListThenGetKeysListContains!543 (List!51080 K!12325) Unit!105923)

(assert (=> b!4582359 (= lt!1747317 (lemmaInListThenGetKeysListContains!543 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(assert (=> b!4582359 call!319926))

(declare-fun b!4582360 () Bool)

(declare-fun e!2857543 () Bool)

(assert (=> b!4582360 (= e!2857543 (contains!13859 (keys!17803 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(declare-fun b!4582361 () Bool)

(declare-fun Unit!105956 () Unit!105923)

(assert (=> b!4582361 (= e!2857545 Unit!105956)))

(declare-fun bm!319921 () Bool)

(assert (=> bm!319921 (= call!319926 (contains!13859 e!2857546 key!3287))))

(declare-fun c!784393 () Bool)

(declare-fun c!784392 () Bool)

(assert (=> bm!319921 (= c!784393 c!784392)))

(declare-fun b!4582362 () Bool)

(declare-fun e!2857547 () Bool)

(assert (=> b!4582362 (= e!2857547 e!2857543)))

(declare-fun res!1914697 () Bool)

(assert (=> b!4582362 (=> (not res!1914697) (not e!2857543))))

(assert (=> b!4582362 (= res!1914697 (isDefined!8602 (getValueByKey!1259 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287)))))

(declare-fun d!1435413 () Bool)

(assert (=> d!1435413 e!2857547))

(declare-fun res!1914696 () Bool)

(assert (=> d!1435413 (=> res!1914696 e!2857547)))

(assert (=> d!1435413 (= res!1914696 e!2857544)))

(declare-fun res!1914698 () Bool)

(assert (=> d!1435413 (=> (not res!1914698) (not e!2857544))))

(declare-fun lt!1747318 () Bool)

(assert (=> d!1435413 (= res!1914698 (not lt!1747318))))

(declare-fun lt!1747322 () Bool)

(assert (=> d!1435413 (= lt!1747318 lt!1747322)))

(declare-fun lt!1747315 () Unit!105923)

(assert (=> d!1435413 (= lt!1747315 e!2857542)))

(assert (=> d!1435413 (= c!784392 lt!1747322)))

(declare-fun containsKey!2063 (List!51080 K!12325) Bool)

(assert (=> d!1435413 (= lt!1747322 (containsKey!2063 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(assert (=> d!1435413 (= (contains!13857 (extractMap!1330 (t!358071 (toList!4556 lm!1477))) key!3287) lt!1747318)))

(declare-fun b!4582363 () Bool)

(assert (=> b!4582363 false))

(declare-fun lt!1747316 () Unit!105923)

(declare-fun lt!1747321 () Unit!105923)

(assert (=> b!4582363 (= lt!1747316 lt!1747321)))

(assert (=> b!4582363 (containsKey!2063 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!546 (List!51080 K!12325) Unit!105923)

(assert (=> b!4582363 (= lt!1747321 (lemmaInGetKeysListThenContainsKey!546 (toList!4555 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(declare-fun Unit!105957 () Unit!105923)

(assert (=> b!4582363 (= e!2857545 Unit!105957)))

(declare-fun b!4582364 () Bool)

(assert (=> b!4582364 (= e!2857546 (keys!17803 (extractMap!1330 (t!358071 (toList!4556 lm!1477)))))))

(assert (= (and d!1435413 c!784392) b!4582359))

(assert (= (and d!1435413 (not c!784392)) b!4582358))

(assert (= (and b!4582358 c!784394) b!4582363))

(assert (= (and b!4582358 (not c!784394)) b!4582361))

(assert (= (or b!4582359 b!4582358) bm!319921))

(assert (= (and bm!319921 c!784393) b!4582357))

(assert (= (and bm!319921 (not c!784393)) b!4582364))

(assert (= (and d!1435413 res!1914698) b!4582356))

(assert (= (and d!1435413 (not res!1914696)) b!4582362))

(assert (= (and b!4582362 res!1914697) b!4582360))

(declare-fun m!5394759 () Bool)

(assert (=> b!4582363 m!5394759))

(declare-fun m!5394761 () Bool)

(assert (=> b!4582363 m!5394761))

(declare-fun m!5394763 () Bool)

(assert (=> b!4582357 m!5394763))

(declare-fun m!5394765 () Bool)

(assert (=> b!4582359 m!5394765))

(declare-fun m!5394767 () Bool)

(assert (=> b!4582359 m!5394767))

(assert (=> b!4582359 m!5394767))

(declare-fun m!5394769 () Bool)

(assert (=> b!4582359 m!5394769))

(declare-fun m!5394771 () Bool)

(assert (=> b!4582359 m!5394771))

(assert (=> b!4582364 m!5394235))

(declare-fun m!5394773 () Bool)

(assert (=> b!4582364 m!5394773))

(assert (=> b!4582362 m!5394767))

(assert (=> b!4582362 m!5394767))

(assert (=> b!4582362 m!5394769))

(assert (=> d!1435413 m!5394759))

(assert (=> b!4582360 m!5394235))

(assert (=> b!4582360 m!5394773))

(assert (=> b!4582360 m!5394773))

(declare-fun m!5394775 () Bool)

(assert (=> b!4582360 m!5394775))

(assert (=> b!4582356 m!5394235))

(assert (=> b!4582356 m!5394773))

(assert (=> b!4582356 m!5394773))

(assert (=> b!4582356 m!5394775))

(declare-fun m!5394777 () Bool)

(assert (=> bm!319921 m!5394777))

(assert (=> b!4582120 d!1435413))

(declare-fun bs!975160 () Bool)

(declare-fun d!1435429 () Bool)

(assert (= bs!975160 (and d!1435429 d!1435405)))

(declare-fun lambda!183500 () Int)

(assert (=> bs!975160 (= lambda!183500 lambda!183496)))

(declare-fun bs!975161 () Bool)

(assert (= bs!975161 (and d!1435429 d!1435381)))

(assert (=> bs!975161 (= lambda!183500 lambda!183486)))

(declare-fun bs!975162 () Bool)

(assert (= bs!975162 (and d!1435429 d!1435357)))

(assert (=> bs!975162 (= lambda!183500 lambda!183478)))

(declare-fun bs!975163 () Bool)

(assert (= bs!975163 (and d!1435429 b!4582126)))

(assert (=> bs!975163 (not (= lambda!183500 lambda!183400))))

(declare-fun bs!975164 () Bool)

(assert (= bs!975164 (and d!1435429 d!1435365)))

(assert (=> bs!975164 (= lambda!183500 lambda!183479)))

(declare-fun bs!975165 () Bool)

(assert (= bs!975165 (and d!1435429 d!1435369)))

(assert (=> bs!975165 (= lambda!183500 lambda!183482)))

(declare-fun bs!975166 () Bool)

(assert (= bs!975166 (and d!1435429 start!456328)))

(assert (=> bs!975166 (= lambda!183500 lambda!183399)))

(declare-fun lt!1747323 () ListMap!3817)

(assert (=> d!1435429 (invariantList!1099 (toList!4555 lt!1747323))))

(declare-fun e!2857548 () ListMap!3817)

(assert (=> d!1435429 (= lt!1747323 e!2857548)))

(declare-fun c!784395 () Bool)

(assert (=> d!1435429 (= c!784395 ((_ is Cons!50957) (t!358071 (toList!4556 lm!1477))))))

(assert (=> d!1435429 (forall!10506 (t!358071 (toList!4556 lm!1477)) lambda!183500)))

(assert (=> d!1435429 (= (extractMap!1330 (t!358071 (toList!4556 lm!1477))) lt!1747323)))

(declare-fun b!4582365 () Bool)

(assert (=> b!4582365 (= e!2857548 (addToMapMapFromBucket!787 (_2!29060 (h!56894 (t!358071 (toList!4556 lm!1477)))) (extractMap!1330 (t!358071 (t!358071 (toList!4556 lm!1477))))))))

(declare-fun b!4582366 () Bool)

(assert (=> b!4582366 (= e!2857548 (ListMap!3818 Nil!50956))))

(assert (= (and d!1435429 c!784395) b!4582365))

(assert (= (and d!1435429 (not c!784395)) b!4582366))

(declare-fun m!5394779 () Bool)

(assert (=> d!1435429 m!5394779))

(declare-fun m!5394781 () Bool)

(assert (=> d!1435429 m!5394781))

(declare-fun m!5394783 () Bool)

(assert (=> b!4582365 m!5394783))

(assert (=> b!4582365 m!5394783))

(declare-fun m!5394785 () Bool)

(assert (=> b!4582365 m!5394785))

(assert (=> b!4582120 d!1435429))

(declare-fun b!4582376 () Bool)

(declare-fun e!2857560 () Bool)

(assert (=> b!4582376 (= e!2857560 (not (contains!13859 (keys!17803 lt!1747025) key!3287)))))

(declare-fun b!4582377 () Bool)

(declare-fun e!2857562 () List!51082)

(assert (=> b!4582377 (= e!2857562 (getKeysList!547 (toList!4555 lt!1747025)))))

(declare-fun b!4582378 () Bool)

(declare-fun e!2857558 () Unit!105923)

(declare-fun e!2857561 () Unit!105923)

(assert (=> b!4582378 (= e!2857558 e!2857561)))

(declare-fun c!784398 () Bool)

(declare-fun call!319927 () Bool)

(assert (=> b!4582378 (= c!784398 call!319927)))

(declare-fun b!4582379 () Bool)

(declare-fun lt!1747326 () Unit!105923)

(assert (=> b!4582379 (= e!2857558 lt!1747326)))

(declare-fun lt!1747329 () Unit!105923)

(assert (=> b!4582379 (= lt!1747329 (lemmaContainsKeyImpliesGetValueByKeyDefined!1162 (toList!4555 lt!1747025) key!3287))))

(assert (=> b!4582379 (isDefined!8602 (getValueByKey!1259 (toList!4555 lt!1747025) key!3287))))

(declare-fun lt!1747328 () Unit!105923)

(assert (=> b!4582379 (= lt!1747328 lt!1747329)))

(assert (=> b!4582379 (= lt!1747326 (lemmaInListThenGetKeysListContains!543 (toList!4555 lt!1747025) key!3287))))

(assert (=> b!4582379 call!319927))

(declare-fun b!4582380 () Bool)

(declare-fun e!2857559 () Bool)

(assert (=> b!4582380 (= e!2857559 (contains!13859 (keys!17803 lt!1747025) key!3287))))

(declare-fun b!4582381 () Bool)

(declare-fun Unit!105960 () Unit!105923)

(assert (=> b!4582381 (= e!2857561 Unit!105960)))

(declare-fun bm!319922 () Bool)

(assert (=> bm!319922 (= call!319927 (contains!13859 e!2857562 key!3287))))

(declare-fun c!784397 () Bool)

(declare-fun c!784396 () Bool)

(assert (=> bm!319922 (= c!784397 c!784396)))

(declare-fun b!4582382 () Bool)

(declare-fun e!2857563 () Bool)

(assert (=> b!4582382 (= e!2857563 e!2857559)))

(declare-fun res!1914709 () Bool)

(assert (=> b!4582382 (=> (not res!1914709) (not e!2857559))))

(assert (=> b!4582382 (= res!1914709 (isDefined!8602 (getValueByKey!1259 (toList!4555 lt!1747025) key!3287)))))

(declare-fun d!1435431 () Bool)

(assert (=> d!1435431 e!2857563))

(declare-fun res!1914708 () Bool)

(assert (=> d!1435431 (=> res!1914708 e!2857563)))

(assert (=> d!1435431 (= res!1914708 e!2857560)))

(declare-fun res!1914710 () Bool)

(assert (=> d!1435431 (=> (not res!1914710) (not e!2857560))))

(declare-fun lt!1747327 () Bool)

(assert (=> d!1435431 (= res!1914710 (not lt!1747327))))

(declare-fun lt!1747331 () Bool)

(assert (=> d!1435431 (= lt!1747327 lt!1747331)))

(declare-fun lt!1747324 () Unit!105923)

(assert (=> d!1435431 (= lt!1747324 e!2857558)))

(assert (=> d!1435431 (= c!784396 lt!1747331)))

(assert (=> d!1435431 (= lt!1747331 (containsKey!2063 (toList!4555 lt!1747025) key!3287))))

(assert (=> d!1435431 (= (contains!13857 lt!1747025 key!3287) lt!1747327)))

(declare-fun b!4582383 () Bool)

(assert (=> b!4582383 false))

(declare-fun lt!1747325 () Unit!105923)

(declare-fun lt!1747330 () Unit!105923)

(assert (=> b!4582383 (= lt!1747325 lt!1747330)))

(assert (=> b!4582383 (containsKey!2063 (toList!4555 lt!1747025) key!3287)))

(assert (=> b!4582383 (= lt!1747330 (lemmaInGetKeysListThenContainsKey!546 (toList!4555 lt!1747025) key!3287))))

(declare-fun Unit!105961 () Unit!105923)

(assert (=> b!4582383 (= e!2857561 Unit!105961)))

(declare-fun b!4582384 () Bool)

(assert (=> b!4582384 (= e!2857562 (keys!17803 lt!1747025))))

(assert (= (and d!1435431 c!784396) b!4582379))

(assert (= (and d!1435431 (not c!784396)) b!4582378))

(assert (= (and b!4582378 c!784398) b!4582383))

(assert (= (and b!4582378 (not c!784398)) b!4582381))

(assert (= (or b!4582379 b!4582378) bm!319922))

(assert (= (and bm!319922 c!784397) b!4582377))

(assert (= (and bm!319922 (not c!784397)) b!4582384))

(assert (= (and d!1435431 res!1914710) b!4582376))

(assert (= (and d!1435431 (not res!1914708)) b!4582382))

(assert (= (and b!4582382 res!1914709) b!4582380))

(declare-fun m!5394795 () Bool)

(assert (=> b!4582383 m!5394795))

(declare-fun m!5394797 () Bool)

(assert (=> b!4582383 m!5394797))

(declare-fun m!5394799 () Bool)

(assert (=> b!4582377 m!5394799))

(declare-fun m!5394801 () Bool)

(assert (=> b!4582379 m!5394801))

(declare-fun m!5394803 () Bool)

(assert (=> b!4582379 m!5394803))

(assert (=> b!4582379 m!5394803))

(declare-fun m!5394805 () Bool)

(assert (=> b!4582379 m!5394805))

(declare-fun m!5394807 () Bool)

(assert (=> b!4582379 m!5394807))

(assert (=> b!4582384 m!5394589))

(assert (=> b!4582382 m!5394803))

(assert (=> b!4582382 m!5394803))

(assert (=> b!4582382 m!5394805))

(assert (=> d!1435431 m!5394795))

(assert (=> b!4582380 m!5394589))

(assert (=> b!4582380 m!5394589))

(declare-fun m!5394809 () Bool)

(assert (=> b!4582380 m!5394809))

(assert (=> b!4582376 m!5394589))

(assert (=> b!4582376 m!5394589))

(assert (=> b!4582376 m!5394809))

(declare-fun m!5394811 () Bool)

(assert (=> bm!319922 m!5394811))

(assert (=> b!4582120 d!1435431))

(declare-fun bs!975167 () Bool)

(declare-fun d!1435437 () Bool)

(assert (= bs!975167 (and d!1435437 d!1435405)))

(declare-fun lambda!183501 () Int)

(assert (=> bs!975167 (= lambda!183501 lambda!183496)))

(declare-fun bs!975168 () Bool)

(assert (= bs!975168 (and d!1435437 d!1435429)))

(assert (=> bs!975168 (= lambda!183501 lambda!183500)))

(declare-fun bs!975169 () Bool)

(assert (= bs!975169 (and d!1435437 d!1435381)))

(assert (=> bs!975169 (= lambda!183501 lambda!183486)))

(declare-fun bs!975170 () Bool)

(assert (= bs!975170 (and d!1435437 d!1435357)))

(assert (=> bs!975170 (= lambda!183501 lambda!183478)))

(declare-fun bs!975171 () Bool)

(assert (= bs!975171 (and d!1435437 b!4582126)))

(assert (=> bs!975171 (not (= lambda!183501 lambda!183400))))

(declare-fun bs!975172 () Bool)

(assert (= bs!975172 (and d!1435437 d!1435365)))

(assert (=> bs!975172 (= lambda!183501 lambda!183479)))

(declare-fun bs!975173 () Bool)

(assert (= bs!975173 (and d!1435437 d!1435369)))

(assert (=> bs!975173 (= lambda!183501 lambda!183482)))

(declare-fun bs!975174 () Bool)

(assert (= bs!975174 (and d!1435437 start!456328)))

(assert (=> bs!975174 (= lambda!183501 lambda!183399)))

(declare-fun lt!1747332 () ListMap!3817)

(assert (=> d!1435437 (invariantList!1099 (toList!4555 lt!1747332))))

(declare-fun e!2857567 () ListMap!3817)

(assert (=> d!1435437 (= lt!1747332 e!2857567)))

(declare-fun c!784399 () Bool)

(assert (=> d!1435437 (= c!784399 ((_ is Cons!50957) (toList!4556 lt!1747013)))))

(assert (=> d!1435437 (forall!10506 (toList!4556 lt!1747013) lambda!183501)))

(assert (=> d!1435437 (= (extractMap!1330 (toList!4556 lt!1747013)) lt!1747332)))

(declare-fun b!4582388 () Bool)

(assert (=> b!4582388 (= e!2857567 (addToMapMapFromBucket!787 (_2!29060 (h!56894 (toList!4556 lt!1747013))) (extractMap!1330 (t!358071 (toList!4556 lt!1747013)))))))

(declare-fun b!4582389 () Bool)

(assert (=> b!4582389 (= e!2857567 (ListMap!3818 Nil!50956))))

(assert (= (and d!1435437 c!784399) b!4582388))

(assert (= (and d!1435437 (not c!784399)) b!4582389))

(declare-fun m!5394813 () Bool)

(assert (=> d!1435437 m!5394813))

(declare-fun m!5394815 () Bool)

(assert (=> d!1435437 m!5394815))

(declare-fun m!5394817 () Bool)

(assert (=> b!4582388 m!5394817))

(assert (=> b!4582388 m!5394817))

(declare-fun m!5394819 () Bool)

(assert (=> b!4582388 m!5394819))

(assert (=> b!4582120 d!1435437))

(declare-fun d!1435439 () Bool)

(declare-fun e!2857575 () Bool)

(assert (=> d!1435439 e!2857575))

(declare-fun res!1914717 () Bool)

(assert (=> d!1435439 (=> res!1914717 e!2857575)))

(declare-fun lt!1747351 () Bool)

(assert (=> d!1435439 (= res!1914717 (not lt!1747351))))

(declare-fun lt!1747348 () Bool)

(assert (=> d!1435439 (= lt!1747351 lt!1747348)))

(declare-fun lt!1747349 () Unit!105923)

(declare-fun e!2857574 () Unit!105923)

(assert (=> d!1435439 (= lt!1747349 e!2857574)))

(declare-fun c!784403 () Bool)

(assert (=> d!1435439 (= c!784403 lt!1747348)))

(declare-fun containsKey!2064 (List!51081 (_ BitVec 64)) Bool)

(assert (=> d!1435439 (= lt!1747348 (containsKey!2064 (toList!4556 lt!1747013) hash!344))))

(assert (=> d!1435439 (= (contains!13856 lt!1747013 hash!344) lt!1747351)))

(declare-fun b!4582399 () Bool)

(declare-fun lt!1747350 () Unit!105923)

(assert (=> b!4582399 (= e!2857574 lt!1747350)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1163 (List!51081 (_ BitVec 64)) Unit!105923)

(assert (=> b!4582399 (= lt!1747350 (lemmaContainsKeyImpliesGetValueByKeyDefined!1163 (toList!4556 lt!1747013) hash!344))))

(declare-fun isDefined!8604 (Option!11334) Bool)

(assert (=> b!4582399 (isDefined!8604 (getValueByKey!1257 (toList!4556 lt!1747013) hash!344))))

(declare-fun b!4582400 () Bool)

(declare-fun Unit!105962 () Unit!105923)

(assert (=> b!4582400 (= e!2857574 Unit!105962)))

(declare-fun b!4582401 () Bool)

(assert (=> b!4582401 (= e!2857575 (isDefined!8604 (getValueByKey!1257 (toList!4556 lt!1747013) hash!344)))))

(assert (= (and d!1435439 c!784403) b!4582399))

(assert (= (and d!1435439 (not c!784403)) b!4582400))

(assert (= (and d!1435439 (not res!1914717)) b!4582401))

(declare-fun m!5394833 () Bool)

(assert (=> d!1435439 m!5394833))

(declare-fun m!5394835 () Bool)

(assert (=> b!4582399 m!5394835))

(declare-fun m!5394837 () Bool)

(assert (=> b!4582399 m!5394837))

(assert (=> b!4582399 m!5394837))

(declare-fun m!5394839 () Bool)

(assert (=> b!4582399 m!5394839))

(assert (=> b!4582401 m!5394837))

(assert (=> b!4582401 m!5394837))

(assert (=> b!4582401 m!5394839))

(assert (=> b!4582122 d!1435439))

(declare-fun d!1435445 () Bool)

(declare-fun tail!7923 (List!51081) List!51081)

(assert (=> d!1435445 (= (tail!7921 lm!1477) (ListLongMap!3188 (tail!7923 (toList!4556 lm!1477))))))

(declare-fun bs!975188 () Bool)

(assert (= bs!975188 d!1435445))

(declare-fun m!5394841 () Bool)

(assert (=> bs!975188 m!5394841))

(assert (=> b!4582122 d!1435445))

(declare-fun d!1435447 () Bool)

(declare-fun res!1914726 () Bool)

(declare-fun e!2857584 () Bool)

(assert (=> d!1435447 (=> res!1914726 e!2857584)))

(declare-fun e!2857583 () Bool)

(assert (=> d!1435447 (= res!1914726 e!2857583)))

(declare-fun res!1914724 () Bool)

(assert (=> d!1435447 (=> (not res!1914724) (not e!2857583))))

(assert (=> d!1435447 (= res!1914724 ((_ is Cons!50957) (t!358071 (toList!4556 lm!1477))))))

(assert (=> d!1435447 (= (containsKeyBiggerList!244 (t!358071 (toList!4556 lm!1477)) key!3287) e!2857584)))

(declare-fun b!4582408 () Bool)

(assert (=> b!4582408 (= e!2857583 (containsKey!2060 (_2!29060 (h!56894 (t!358071 (toList!4556 lm!1477)))) key!3287))))

(declare-fun b!4582409 () Bool)

(declare-fun e!2857582 () Bool)

(assert (=> b!4582409 (= e!2857584 e!2857582)))

(declare-fun res!1914725 () Bool)

(assert (=> b!4582409 (=> (not res!1914725) (not e!2857582))))

(assert (=> b!4582409 (= res!1914725 ((_ is Cons!50957) (t!358071 (toList!4556 lm!1477))))))

(declare-fun b!4582410 () Bool)

(assert (=> b!4582410 (= e!2857582 (containsKeyBiggerList!244 (t!358071 (t!358071 (toList!4556 lm!1477))) key!3287))))

(assert (= (and d!1435447 res!1914724) b!4582408))

(assert (= (and d!1435447 (not res!1914726)) b!4582409))

(assert (= (and b!4582409 res!1914725) b!4582410))

(declare-fun m!5394853 () Bool)

(assert (=> b!4582408 m!5394853))

(declare-fun m!5394855 () Bool)

(assert (=> b!4582410 m!5394855))

(assert (=> b!4582100 d!1435447))

(declare-fun d!1435453 () Bool)

(declare-fun res!1914729 () Bool)

(declare-fun e!2857587 () Bool)

(assert (=> d!1435453 (=> res!1914729 e!2857587)))

(declare-fun e!2857586 () Bool)

(assert (=> d!1435453 (= res!1914729 e!2857586)))

(declare-fun res!1914727 () Bool)

(assert (=> d!1435453 (=> (not res!1914727) (not e!2857586))))

(assert (=> d!1435453 (= res!1914727 ((_ is Cons!50957) (toList!4556 lt!1747013)))))

(assert (=> d!1435453 (= (containsKeyBiggerList!244 (toList!4556 lt!1747013) key!3287) e!2857587)))

(declare-fun b!4582411 () Bool)

(assert (=> b!4582411 (= e!2857586 (containsKey!2060 (_2!29060 (h!56894 (toList!4556 lt!1747013))) key!3287))))

(declare-fun b!4582412 () Bool)

(declare-fun e!2857585 () Bool)

(assert (=> b!4582412 (= e!2857587 e!2857585)))

(declare-fun res!1914728 () Bool)

(assert (=> b!4582412 (=> (not res!1914728) (not e!2857585))))

(assert (=> b!4582412 (= res!1914728 ((_ is Cons!50957) (toList!4556 lt!1747013)))))

(declare-fun b!4582413 () Bool)

(assert (=> b!4582413 (= e!2857585 (containsKeyBiggerList!244 (t!358071 (toList!4556 lt!1747013)) key!3287))))

(assert (= (and d!1435453 res!1914727) b!4582411))

(assert (= (and d!1435453 (not res!1914729)) b!4582412))

(assert (= (and b!4582412 res!1914728) b!4582413))

(declare-fun m!5394857 () Bool)

(assert (=> b!4582411 m!5394857))

(declare-fun m!5394859 () Bool)

(assert (=> b!4582413 m!5394859))

(assert (=> b!4582100 d!1435453))

(declare-fun bs!975204 () Bool)

(declare-fun d!1435455 () Bool)

(assert (= bs!975204 (and d!1435455 d!1435405)))

(declare-fun lambda!183510 () Int)

(assert (=> bs!975204 (= lambda!183510 lambda!183496)))

(declare-fun bs!975205 () Bool)

(assert (= bs!975205 (and d!1435455 d!1435429)))

(assert (=> bs!975205 (= lambda!183510 lambda!183500)))

(declare-fun bs!975206 () Bool)

(assert (= bs!975206 (and d!1435455 d!1435381)))

(assert (=> bs!975206 (= lambda!183510 lambda!183486)))

(declare-fun bs!975207 () Bool)

(assert (= bs!975207 (and d!1435455 b!4582126)))

(assert (=> bs!975207 (not (= lambda!183510 lambda!183400))))

(declare-fun bs!975208 () Bool)

(assert (= bs!975208 (and d!1435455 d!1435365)))

(assert (=> bs!975208 (= lambda!183510 lambda!183479)))

(declare-fun bs!975209 () Bool)

(assert (= bs!975209 (and d!1435455 d!1435357)))

(assert (=> bs!975209 (= lambda!183510 lambda!183478)))

(declare-fun bs!975210 () Bool)

(assert (= bs!975210 (and d!1435455 d!1435437)))

(assert (=> bs!975210 (= lambda!183510 lambda!183501)))

(declare-fun bs!975211 () Bool)

(assert (= bs!975211 (and d!1435455 d!1435369)))

(assert (=> bs!975211 (= lambda!183510 lambda!183482)))

(declare-fun bs!975212 () Bool)

(assert (= bs!975212 (and d!1435455 start!456328)))

(assert (=> bs!975212 (= lambda!183510 lambda!183399)))

(assert (=> d!1435455 (containsKeyBiggerList!244 (toList!4556 lt!1747013) key!3287)))

(declare-fun lt!1747361 () Unit!105923)

(declare-fun choose!30553 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> d!1435455 (= lt!1747361 (choose!30553 lt!1747013 key!3287 hashF!1107))))

(assert (=> d!1435455 (forall!10506 (toList!4556 lt!1747013) lambda!183510)))

(assert (=> d!1435455 (= (lemmaInLongMapThenContainsKeyBiggerList!156 lt!1747013 key!3287 hashF!1107) lt!1747361)))

(declare-fun bs!975213 () Bool)

(assert (= bs!975213 d!1435455))

(assert (=> bs!975213 m!5394273))

(declare-fun m!5394871 () Bool)

(assert (=> bs!975213 m!5394871))

(declare-fun m!5394873 () Bool)

(assert (=> bs!975213 m!5394873))

(assert (=> b!4582100 d!1435455))

(declare-fun b!4582428 () Bool)

(declare-fun e!2857598 () Bool)

(assert (=> b!4582428 (= e!2857598 (not (contains!13859 (keys!17803 lt!1747027) key!3287)))))

(declare-fun b!4582429 () Bool)

(declare-fun e!2857600 () List!51082)

(assert (=> b!4582429 (= e!2857600 (getKeysList!547 (toList!4555 lt!1747027)))))

(declare-fun b!4582430 () Bool)

(declare-fun e!2857596 () Unit!105923)

(declare-fun e!2857599 () Unit!105923)

(assert (=> b!4582430 (= e!2857596 e!2857599)))

(declare-fun c!784412 () Bool)

(declare-fun call!319928 () Bool)

(assert (=> b!4582430 (= c!784412 call!319928)))

(declare-fun b!4582431 () Bool)

(declare-fun lt!1747364 () Unit!105923)

(assert (=> b!4582431 (= e!2857596 lt!1747364)))

(declare-fun lt!1747367 () Unit!105923)

(assert (=> b!4582431 (= lt!1747367 (lemmaContainsKeyImpliesGetValueByKeyDefined!1162 (toList!4555 lt!1747027) key!3287))))

(assert (=> b!4582431 (isDefined!8602 (getValueByKey!1259 (toList!4555 lt!1747027) key!3287))))

(declare-fun lt!1747366 () Unit!105923)

(assert (=> b!4582431 (= lt!1747366 lt!1747367)))

(assert (=> b!4582431 (= lt!1747364 (lemmaInListThenGetKeysListContains!543 (toList!4555 lt!1747027) key!3287))))

(assert (=> b!4582431 call!319928))

(declare-fun b!4582432 () Bool)

(declare-fun e!2857597 () Bool)

(assert (=> b!4582432 (= e!2857597 (contains!13859 (keys!17803 lt!1747027) key!3287))))

(declare-fun b!4582433 () Bool)

(declare-fun Unit!105963 () Unit!105923)

(assert (=> b!4582433 (= e!2857599 Unit!105963)))

(declare-fun bm!319923 () Bool)

(assert (=> bm!319923 (= call!319928 (contains!13859 e!2857600 key!3287))))

(declare-fun c!784411 () Bool)

(declare-fun c!784410 () Bool)

(assert (=> bm!319923 (= c!784411 c!784410)))

(declare-fun b!4582434 () Bool)

(declare-fun e!2857601 () Bool)

(assert (=> b!4582434 (= e!2857601 e!2857597)))

(declare-fun res!1914733 () Bool)

(assert (=> b!4582434 (=> (not res!1914733) (not e!2857597))))

(assert (=> b!4582434 (= res!1914733 (isDefined!8602 (getValueByKey!1259 (toList!4555 lt!1747027) key!3287)))))

(declare-fun d!1435461 () Bool)

(assert (=> d!1435461 e!2857601))

(declare-fun res!1914732 () Bool)

(assert (=> d!1435461 (=> res!1914732 e!2857601)))

(assert (=> d!1435461 (= res!1914732 e!2857598)))

(declare-fun res!1914734 () Bool)

(assert (=> d!1435461 (=> (not res!1914734) (not e!2857598))))

(declare-fun lt!1747365 () Bool)

(assert (=> d!1435461 (= res!1914734 (not lt!1747365))))

(declare-fun lt!1747369 () Bool)

(assert (=> d!1435461 (= lt!1747365 lt!1747369)))

(declare-fun lt!1747362 () Unit!105923)

(assert (=> d!1435461 (= lt!1747362 e!2857596)))

(assert (=> d!1435461 (= c!784410 lt!1747369)))

(assert (=> d!1435461 (= lt!1747369 (containsKey!2063 (toList!4555 lt!1747027) key!3287))))

(assert (=> d!1435461 (= (contains!13857 lt!1747027 key!3287) lt!1747365)))

(declare-fun b!4582435 () Bool)

(assert (=> b!4582435 false))

(declare-fun lt!1747363 () Unit!105923)

(declare-fun lt!1747368 () Unit!105923)

(assert (=> b!4582435 (= lt!1747363 lt!1747368)))

(assert (=> b!4582435 (containsKey!2063 (toList!4555 lt!1747027) key!3287)))

(assert (=> b!4582435 (= lt!1747368 (lemmaInGetKeysListThenContainsKey!546 (toList!4555 lt!1747027) key!3287))))

(declare-fun Unit!105964 () Unit!105923)

(assert (=> b!4582435 (= e!2857599 Unit!105964)))

(declare-fun b!4582436 () Bool)

(assert (=> b!4582436 (= e!2857600 (keys!17803 lt!1747027))))

(assert (= (and d!1435461 c!784410) b!4582431))

(assert (= (and d!1435461 (not c!784410)) b!4582430))

(assert (= (and b!4582430 c!784412) b!4582435))

(assert (= (and b!4582430 (not c!784412)) b!4582433))

(assert (= (or b!4582431 b!4582430) bm!319923))

(assert (= (and bm!319923 c!784411) b!4582429))

(assert (= (and bm!319923 (not c!784411)) b!4582436))

(assert (= (and d!1435461 res!1914734) b!4582428))

(assert (= (and d!1435461 (not res!1914732)) b!4582434))

(assert (= (and b!4582434 res!1914733) b!4582432))

(declare-fun m!5394875 () Bool)

(assert (=> b!4582435 m!5394875))

(declare-fun m!5394877 () Bool)

(assert (=> b!4582435 m!5394877))

(declare-fun m!5394879 () Bool)

(assert (=> b!4582429 m!5394879))

(declare-fun m!5394881 () Bool)

(assert (=> b!4582431 m!5394881))

(declare-fun m!5394883 () Bool)

(assert (=> b!4582431 m!5394883))

(assert (=> b!4582431 m!5394883))

(declare-fun m!5394885 () Bool)

(assert (=> b!4582431 m!5394885))

(declare-fun m!5394887 () Bool)

(assert (=> b!4582431 m!5394887))

(assert (=> b!4582436 m!5394325))

(assert (=> b!4582434 m!5394883))

(assert (=> b!4582434 m!5394883))

(assert (=> b!4582434 m!5394885))

(assert (=> d!1435461 m!5394875))

(assert (=> b!4582432 m!5394325))

(assert (=> b!4582432 m!5394325))

(declare-fun m!5394889 () Bool)

(assert (=> b!4582432 m!5394889))

(assert (=> b!4582428 m!5394325))

(assert (=> b!4582428 m!5394325))

(assert (=> b!4582428 m!5394889))

(declare-fun m!5394891 () Bool)

(assert (=> bm!319923 m!5394891))

(assert (=> b!4582121 d!1435461))

(declare-fun bs!975214 () Bool)

(declare-fun d!1435463 () Bool)

(assert (= bs!975214 (and d!1435463 d!1435455)))

(declare-fun lambda!183511 () Int)

(assert (=> bs!975214 (= lambda!183511 lambda!183510)))

(declare-fun bs!975215 () Bool)

(assert (= bs!975215 (and d!1435463 d!1435405)))

(assert (=> bs!975215 (= lambda!183511 lambda!183496)))

(declare-fun bs!975216 () Bool)

(assert (= bs!975216 (and d!1435463 d!1435429)))

(assert (=> bs!975216 (= lambda!183511 lambda!183500)))

(declare-fun bs!975217 () Bool)

(assert (= bs!975217 (and d!1435463 d!1435381)))

(assert (=> bs!975217 (= lambda!183511 lambda!183486)))

(declare-fun bs!975218 () Bool)

(assert (= bs!975218 (and d!1435463 b!4582126)))

(assert (=> bs!975218 (not (= lambda!183511 lambda!183400))))

(declare-fun bs!975219 () Bool)

(assert (= bs!975219 (and d!1435463 d!1435365)))

(assert (=> bs!975219 (= lambda!183511 lambda!183479)))

(declare-fun bs!975220 () Bool)

(assert (= bs!975220 (and d!1435463 d!1435357)))

(assert (=> bs!975220 (= lambda!183511 lambda!183478)))

(declare-fun bs!975221 () Bool)

(assert (= bs!975221 (and d!1435463 d!1435437)))

(assert (=> bs!975221 (= lambda!183511 lambda!183501)))

(declare-fun bs!975222 () Bool)

(assert (= bs!975222 (and d!1435463 d!1435369)))

(assert (=> bs!975222 (= lambda!183511 lambda!183482)))

(declare-fun bs!975223 () Bool)

(assert (= bs!975223 (and d!1435463 start!456328)))

(assert (=> bs!975223 (= lambda!183511 lambda!183399)))

(declare-fun lt!1747372 () ListMap!3817)

(assert (=> d!1435463 (invariantList!1099 (toList!4555 lt!1747372))))

(declare-fun e!2857604 () ListMap!3817)

(assert (=> d!1435463 (= lt!1747372 e!2857604)))

(declare-fun c!784413 () Bool)

(assert (=> d!1435463 (= c!784413 ((_ is Cons!50957) (toList!4556 lm!1477)))))

(assert (=> d!1435463 (forall!10506 (toList!4556 lm!1477) lambda!183511)))

(assert (=> d!1435463 (= (extractMap!1330 (toList!4556 lm!1477)) lt!1747372)))

(declare-fun b!4582439 () Bool)

(assert (=> b!4582439 (= e!2857604 (addToMapMapFromBucket!787 (_2!29060 (h!56894 (toList!4556 lm!1477))) (extractMap!1330 (t!358071 (toList!4556 lm!1477)))))))

(declare-fun b!4582440 () Bool)

(assert (=> b!4582440 (= e!2857604 (ListMap!3818 Nil!50956))))

(assert (= (and d!1435463 c!784413) b!4582439))

(assert (= (and d!1435463 (not c!784413)) b!4582440))

(declare-fun m!5394899 () Bool)

(assert (=> d!1435463 m!5394899))

(declare-fun m!5394901 () Bool)

(assert (=> d!1435463 m!5394901))

(assert (=> b!4582439 m!5394235))

(assert (=> b!4582439 m!5394235))

(declare-fun m!5394903 () Bool)

(assert (=> b!4582439 m!5394903))

(assert (=> b!4582121 d!1435463))

(declare-fun d!1435467 () Bool)

(assert (=> d!1435467 (= (eq!713 lt!1747015 lt!1747011) (= (content!8590 (toList!4555 lt!1747015)) (content!8590 (toList!4555 lt!1747011))))))

(declare-fun bs!975224 () Bool)

(assert (= bs!975224 d!1435467))

(assert (=> bs!975224 m!5394361))

(assert (=> bs!975224 m!5394317))

(assert (=> b!4582123 d!1435467))

(declare-fun d!1435469 () Bool)

(assert (=> d!1435469 (= (eq!713 lt!1747000 lt!1747011) (= (content!8590 (toList!4555 lt!1747000)) (content!8590 (toList!4555 lt!1747011))))))

(declare-fun bs!975225 () Bool)

(assert (= bs!975225 d!1435469))

(assert (=> bs!975225 m!5394363))

(assert (=> bs!975225 m!5394317))

(assert (=> b!4582123 d!1435469))

(declare-fun bs!975227 () Bool)

(declare-fun b!4582445 () Bool)

(assert (= bs!975227 (and b!4582445 b!4582221)))

(declare-fun lambda!183512 () Int)

(assert (=> bs!975227 (= (= lt!1747029 lt!1747204) (= lambda!183512 lambda!183473))))

(declare-fun bs!975228 () Bool)

(assert (= bs!975228 (and b!4582445 b!4582223)))

(assert (=> bs!975228 (= (= lt!1747029 lt!1747022) (= lambda!183512 lambda!183471))))

(declare-fun bs!975229 () Bool)

(assert (= bs!975229 (and b!4582445 d!1435331)))

(assert (=> bs!975229 (= (= lt!1747029 lt!1747209) (= lambda!183512 lambda!183474))))

(assert (=> bs!975227 (= (= lt!1747029 lt!1747022) (= lambda!183512 lambda!183472))))

(declare-fun bs!975230 () Bool)

(assert (= bs!975230 (and b!4582445 b!4582126)))

(assert (=> bs!975230 (not (= lambda!183512 lambda!183401))))

(assert (=> b!4582445 true))

(declare-fun bs!975231 () Bool)

(declare-fun b!4582443 () Bool)

(assert (= bs!975231 (and b!4582443 b!4582221)))

(declare-fun lambda!183513 () Int)

(assert (=> bs!975231 (= (= lt!1747029 lt!1747204) (= lambda!183513 lambda!183473))))

(declare-fun bs!975232 () Bool)

(assert (= bs!975232 (and b!4582443 b!4582223)))

(assert (=> bs!975232 (= (= lt!1747029 lt!1747022) (= lambda!183513 lambda!183471))))

(declare-fun bs!975233 () Bool)

(assert (= bs!975233 (and b!4582443 d!1435331)))

(assert (=> bs!975233 (= (= lt!1747029 lt!1747209) (= lambda!183513 lambda!183474))))

(declare-fun bs!975234 () Bool)

(assert (= bs!975234 (and b!4582443 b!4582445)))

(assert (=> bs!975234 (= lambda!183513 lambda!183512)))

(assert (=> bs!975231 (= (= lt!1747029 lt!1747022) (= lambda!183513 lambda!183472))))

(declare-fun bs!975235 () Bool)

(assert (= bs!975235 (and b!4582443 b!4582126)))

(assert (=> bs!975235 (not (= lambda!183513 lambda!183401))))

(assert (=> b!4582443 true))

(declare-fun lt!1747390 () ListMap!3817)

(declare-fun lambda!183514 () Int)

(assert (=> b!4582443 (= (= lt!1747390 lt!1747029) (= lambda!183514 lambda!183513))))

(assert (=> bs!975231 (= (= lt!1747390 lt!1747204) (= lambda!183514 lambda!183473))))

(assert (=> bs!975232 (= (= lt!1747390 lt!1747022) (= lambda!183514 lambda!183471))))

(assert (=> bs!975233 (= (= lt!1747390 lt!1747209) (= lambda!183514 lambda!183474))))

(assert (=> bs!975234 (= (= lt!1747390 lt!1747029) (= lambda!183514 lambda!183512))))

(assert (=> bs!975231 (= (= lt!1747390 lt!1747022) (= lambda!183514 lambda!183472))))

(assert (=> bs!975235 (not (= lambda!183514 lambda!183401))))

(assert (=> b!4582443 true))

(declare-fun bs!975236 () Bool)

(declare-fun d!1435473 () Bool)

(assert (= bs!975236 (and d!1435473 b!4582443)))

(declare-fun lambda!183515 () Int)

(declare-fun lt!1747395 () ListMap!3817)

(assert (=> bs!975236 (= (= lt!1747395 lt!1747390) (= lambda!183515 lambda!183514))))

(assert (=> bs!975236 (= (= lt!1747395 lt!1747029) (= lambda!183515 lambda!183513))))

(declare-fun bs!975237 () Bool)

(assert (= bs!975237 (and d!1435473 b!4582221)))

(assert (=> bs!975237 (= (= lt!1747395 lt!1747204) (= lambda!183515 lambda!183473))))

(declare-fun bs!975238 () Bool)

(assert (= bs!975238 (and d!1435473 b!4582223)))

(assert (=> bs!975238 (= (= lt!1747395 lt!1747022) (= lambda!183515 lambda!183471))))

(declare-fun bs!975239 () Bool)

(assert (= bs!975239 (and d!1435473 d!1435331)))

(assert (=> bs!975239 (= (= lt!1747395 lt!1747209) (= lambda!183515 lambda!183474))))

(declare-fun bs!975240 () Bool)

(assert (= bs!975240 (and d!1435473 b!4582445)))

(assert (=> bs!975240 (= (= lt!1747395 lt!1747029) (= lambda!183515 lambda!183512))))

(assert (=> bs!975237 (= (= lt!1747395 lt!1747022) (= lambda!183515 lambda!183472))))

(declare-fun bs!975241 () Bool)

(assert (= bs!975241 (and d!1435473 b!4582126)))

(assert (=> bs!975241 (not (= lambda!183515 lambda!183401))))

(assert (=> d!1435473 true))

(declare-fun e!2857607 () ListMap!3817)

(assert (=> b!4582443 (= e!2857607 lt!1747390)))

(declare-fun lt!1747379 () ListMap!3817)

(assert (=> b!4582443 (= lt!1747379 (+!1714 lt!1747029 (h!56893 (_2!29060 lt!1746997))))))

(assert (=> b!4582443 (= lt!1747390 (addToMapMapFromBucket!787 (t!358070 (_2!29060 lt!1746997)) (+!1714 lt!1747029 (h!56893 (_2!29060 lt!1746997)))))))

(declare-fun lt!1747383 () Unit!105923)

(declare-fun call!319929 () Unit!105923)

(assert (=> b!4582443 (= lt!1747383 call!319929)))

(assert (=> b!4582443 (forall!10508 (toList!4555 lt!1747029) lambda!183513)))

(declare-fun lt!1747382 () Unit!105923)

(assert (=> b!4582443 (= lt!1747382 lt!1747383)))

(assert (=> b!4582443 (forall!10508 (toList!4555 lt!1747379) lambda!183514)))

(declare-fun lt!1747385 () Unit!105923)

(declare-fun Unit!105966 () Unit!105923)

(assert (=> b!4582443 (= lt!1747385 Unit!105966)))

(declare-fun call!319930 () Bool)

(assert (=> b!4582443 call!319930))

(declare-fun lt!1747389 () Unit!105923)

(declare-fun Unit!105967 () Unit!105923)

(assert (=> b!4582443 (= lt!1747389 Unit!105967)))

(declare-fun lt!1747376 () Unit!105923)

(declare-fun Unit!105968 () Unit!105923)

(assert (=> b!4582443 (= lt!1747376 Unit!105968)))

(declare-fun lt!1747394 () Unit!105923)

(assert (=> b!4582443 (= lt!1747394 (forallContained!2771 (toList!4555 lt!1747379) lambda!183514 (h!56893 (_2!29060 lt!1746997))))))

(assert (=> b!4582443 (contains!13857 lt!1747379 (_1!29059 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun lt!1747388 () Unit!105923)

(declare-fun Unit!105969 () Unit!105923)

(assert (=> b!4582443 (= lt!1747388 Unit!105969)))

(assert (=> b!4582443 (contains!13857 lt!1747390 (_1!29059 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun lt!1747387 () Unit!105923)

(declare-fun Unit!105970 () Unit!105923)

(assert (=> b!4582443 (= lt!1747387 Unit!105970)))

(assert (=> b!4582443 (forall!10508 (_2!29060 lt!1746997) lambda!183514)))

(declare-fun lt!1747377 () Unit!105923)

(declare-fun Unit!105971 () Unit!105923)

(assert (=> b!4582443 (= lt!1747377 Unit!105971)))

(assert (=> b!4582443 (forall!10508 (toList!4555 lt!1747379) lambda!183514)))

(declare-fun lt!1747391 () Unit!105923)

(declare-fun Unit!105972 () Unit!105923)

(assert (=> b!4582443 (= lt!1747391 Unit!105972)))

(declare-fun lt!1747384 () Unit!105923)

(declare-fun Unit!105973 () Unit!105923)

(assert (=> b!4582443 (= lt!1747384 Unit!105973)))

(declare-fun lt!1747378 () Unit!105923)

(assert (=> b!4582443 (= lt!1747378 (addForallContainsKeyThenBeforeAdding!416 lt!1747029 lt!1747390 (_1!29059 (h!56893 (_2!29060 lt!1746997))) (_2!29059 (h!56893 (_2!29060 lt!1746997)))))))

(assert (=> b!4582443 (forall!10508 (toList!4555 lt!1747029) lambda!183514)))

(declare-fun lt!1747392 () Unit!105923)

(assert (=> b!4582443 (= lt!1747392 lt!1747378)))

(assert (=> b!4582443 (forall!10508 (toList!4555 lt!1747029) lambda!183514)))

(declare-fun lt!1747393 () Unit!105923)

(declare-fun Unit!105974 () Unit!105923)

(assert (=> b!4582443 (= lt!1747393 Unit!105974)))

(declare-fun res!1914741 () Bool)

(assert (=> b!4582443 (= res!1914741 (forall!10508 (_2!29060 lt!1746997) lambda!183514))))

(declare-fun e!2857608 () Bool)

(assert (=> b!4582443 (=> (not res!1914741) (not e!2857608))))

(assert (=> b!4582443 e!2857608))

(declare-fun lt!1747380 () Unit!105923)

(declare-fun Unit!105975 () Unit!105923)

(assert (=> b!4582443 (= lt!1747380 Unit!105975)))

(declare-fun bm!319924 () Bool)

(assert (=> bm!319924 (= call!319929 (lemmaContainsAllItsOwnKeys!416 lt!1747029))))

(declare-fun b!4582444 () Bool)

(declare-fun e!2857609 () Bool)

(assert (=> b!4582444 (= e!2857609 (invariantList!1099 (toList!4555 lt!1747395)))))

(declare-fun c!784414 () Bool)

(declare-fun bm!319925 () Bool)

(declare-fun call!319931 () Bool)

(assert (=> bm!319925 (= call!319931 (forall!10508 (toList!4555 lt!1747029) (ite c!784414 lambda!183512 lambda!183514)))))

(declare-fun b!4582446 () Bool)

(assert (=> b!4582446 (= e!2857608 call!319931)))

(declare-fun bm!319926 () Bool)

(assert (=> bm!319926 (= call!319930 (forall!10508 (ite c!784414 (toList!4555 lt!1747029) (t!358070 (_2!29060 lt!1746997))) (ite c!784414 lambda!183512 lambda!183514)))))

(declare-fun b!4582447 () Bool)

(declare-fun res!1914739 () Bool)

(assert (=> b!4582447 (=> (not res!1914739) (not e!2857609))))

(assert (=> b!4582447 (= res!1914739 (forall!10508 (toList!4555 lt!1747029) lambda!183515))))

(assert (=> d!1435473 e!2857609))

(declare-fun res!1914740 () Bool)

(assert (=> d!1435473 (=> (not res!1914740) (not e!2857609))))

(assert (=> d!1435473 (= res!1914740 (forall!10508 (_2!29060 lt!1746997) lambda!183515))))

(assert (=> d!1435473 (= lt!1747395 e!2857607)))

(assert (=> d!1435473 (= c!784414 ((_ is Nil!50956) (_2!29060 lt!1746997)))))

(assert (=> d!1435473 (noDuplicateKeys!1274 (_2!29060 lt!1746997))))

(assert (=> d!1435473 (= (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747029) lt!1747395)))

(assert (=> b!4582445 (= e!2857607 lt!1747029)))

(declare-fun lt!1747375 () Unit!105923)

(assert (=> b!4582445 (= lt!1747375 call!319929)))

(assert (=> b!4582445 call!319930))

(declare-fun lt!1747386 () Unit!105923)

(assert (=> b!4582445 (= lt!1747386 lt!1747375)))

(assert (=> b!4582445 call!319931))

(declare-fun lt!1747381 () Unit!105923)

(declare-fun Unit!105976 () Unit!105923)

(assert (=> b!4582445 (= lt!1747381 Unit!105976)))

(assert (= (and d!1435473 c!784414) b!4582445))

(assert (= (and d!1435473 (not c!784414)) b!4582443))

(assert (= (and b!4582443 res!1914741) b!4582446))

(assert (= (or b!4582445 b!4582446) bm!319925))

(assert (= (or b!4582445 b!4582443) bm!319926))

(assert (= (or b!4582445 b!4582443) bm!319924))

(assert (= (and d!1435473 res!1914740) b!4582447))

(assert (= (and b!4582447 res!1914739) b!4582444))

(declare-fun m!5394933 () Bool)

(assert (=> bm!319925 m!5394933))

(declare-fun m!5394935 () Bool)

(assert (=> b!4582444 m!5394935))

(declare-fun m!5394937 () Bool)

(assert (=> d!1435473 m!5394937))

(assert (=> d!1435473 m!5394287))

(declare-fun m!5394939 () Bool)

(assert (=> b!4582447 m!5394939))

(declare-fun m!5394941 () Bool)

(assert (=> bm!319924 m!5394941))

(declare-fun m!5394943 () Bool)

(assert (=> b!4582443 m!5394943))

(declare-fun m!5394945 () Bool)

(assert (=> b!4582443 m!5394945))

(declare-fun m!5394947 () Bool)

(assert (=> b!4582443 m!5394947))

(declare-fun m!5394949 () Bool)

(assert (=> b!4582443 m!5394949))

(declare-fun m!5394951 () Bool)

(assert (=> b!4582443 m!5394951))

(declare-fun m!5394953 () Bool)

(assert (=> b!4582443 m!5394953))

(declare-fun m!5394955 () Bool)

(assert (=> b!4582443 m!5394955))

(assert (=> b!4582443 m!5394955))

(declare-fun m!5394957 () Bool)

(assert (=> b!4582443 m!5394957))

(assert (=> b!4582443 m!5394947))

(declare-fun m!5394959 () Bool)

(assert (=> b!4582443 m!5394959))

(assert (=> b!4582443 m!5394943))

(declare-fun m!5394961 () Bool)

(assert (=> b!4582443 m!5394961))

(assert (=> b!4582443 m!5394951))

(declare-fun m!5394965 () Bool)

(assert (=> bm!319926 m!5394965))

(assert (=> b!4582123 d!1435473))

(declare-fun d!1435489 () Bool)

(assert (=> d!1435489 (eq!713 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747022) (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747029))))

(declare-fun lt!1747422 () Unit!105923)

(declare-fun choose!30557 (ListMap!3817 ListMap!3817 List!51080) Unit!105923)

(assert (=> d!1435489 (= lt!1747422 (choose!30557 lt!1747022 lt!1747029 (_2!29060 lt!1746997)))))

(assert (=> d!1435489 (noDuplicateKeys!1274 (_2!29060 lt!1746997))))

(assert (=> d!1435489 (= (lemmaAddToMapFromBucketPreservesEquivalence!98 lt!1747022 lt!1747029 (_2!29060 lt!1746997)) lt!1747422)))

(declare-fun bs!975262 () Bool)

(assert (= bs!975262 d!1435489))

(assert (=> bs!975262 m!5394199))

(assert (=> bs!975262 m!5394193))

(assert (=> bs!975262 m!5394287))

(declare-fun m!5395011 () Bool)

(assert (=> bs!975262 m!5395011))

(assert (=> bs!975262 m!5394199))

(assert (=> bs!975262 m!5394193))

(declare-fun m!5395013 () Bool)

(assert (=> bs!975262 m!5395013))

(assert (=> b!4582123 d!1435489))

(declare-fun d!1435495 () Bool)

(assert (=> d!1435495 (= (eq!713 lt!1747027 lt!1747028) (= (content!8590 (toList!4555 lt!1747027)) (content!8590 (toList!4555 lt!1747028))))))

(declare-fun bs!975263 () Bool)

(assert (= bs!975263 d!1435495))

(assert (=> bs!975263 m!5394583))

(assert (=> bs!975263 m!5394581))

(assert (=> b!4582101 d!1435495))

(declare-fun d!1435497 () Bool)

(assert (=> d!1435497 (= (eq!713 lt!1747011 lt!1746999) (= (content!8590 (toList!4555 lt!1747011)) (content!8590 (toList!4555 lt!1746999))))))

(declare-fun bs!975264 () Bool)

(assert (= bs!975264 d!1435497))

(assert (=> bs!975264 m!5394317))

(declare-fun m!5395015 () Bool)

(assert (=> bs!975264 m!5395015))

(assert (=> b!4582124 d!1435497))

(declare-fun d!1435499 () Bool)

(declare-fun e!2857628 () Bool)

(assert (=> d!1435499 e!2857628))

(declare-fun res!1914760 () Bool)

(assert (=> d!1435499 (=> (not res!1914760) (not e!2857628))))

(declare-fun lt!1747423 () ListMap!3817)

(assert (=> d!1435499 (= res!1914760 (not (contains!13857 lt!1747423 key!3287)))))

(assert (=> d!1435499 (= lt!1747423 (ListMap!3818 (removePresrvNoDuplicatedKeys!212 (toList!4555 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747025)) key!3287)))))

(assert (=> d!1435499 (= (-!482 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747025) key!3287) lt!1747423)))

(declare-fun b!4582468 () Bool)

(assert (=> b!4582468 (= e!2857628 (= ((_ map and) (content!8591 (keys!17803 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747025))) ((_ map not) (store ((as const (Array K!12325 Bool)) false) key!3287 true))) (content!8591 (keys!17803 lt!1747423))))))

(assert (= (and d!1435499 res!1914760) b!4582468))

(declare-fun m!5395017 () Bool)

(assert (=> d!1435499 m!5395017))

(declare-fun m!5395019 () Bool)

(assert (=> d!1435499 m!5395019))

(declare-fun m!5395021 () Bool)

(assert (=> b!4582468 m!5395021))

(declare-fun m!5395023 () Bool)

(assert (=> b!4582468 m!5395023))

(declare-fun m!5395025 () Bool)

(assert (=> b!4582468 m!5395025))

(declare-fun m!5395027 () Bool)

(assert (=> b!4582468 m!5395027))

(assert (=> b!4582468 m!5394293))

(assert (=> b!4582468 m!5395021))

(assert (=> b!4582468 m!5395025))

(assert (=> b!4582468 m!5394333))

(assert (=> b!4582124 d!1435499))

(declare-fun bs!975265 () Bool)

(declare-fun b!4582471 () Bool)

(assert (= bs!975265 (and b!4582471 d!1435473)))

(declare-fun lambda!183520 () Int)

(assert (=> bs!975265 (= (= lt!1747025 lt!1747395) (= lambda!183520 lambda!183515))))

(declare-fun bs!975266 () Bool)

(assert (= bs!975266 (and b!4582471 b!4582443)))

(assert (=> bs!975266 (= (= lt!1747025 lt!1747390) (= lambda!183520 lambda!183514))))

(assert (=> bs!975266 (= (= lt!1747025 lt!1747029) (= lambda!183520 lambda!183513))))

(declare-fun bs!975267 () Bool)

(assert (= bs!975267 (and b!4582471 b!4582221)))

(assert (=> bs!975267 (= (= lt!1747025 lt!1747204) (= lambda!183520 lambda!183473))))

(declare-fun bs!975268 () Bool)

(assert (= bs!975268 (and b!4582471 b!4582223)))

(assert (=> bs!975268 (= (= lt!1747025 lt!1747022) (= lambda!183520 lambda!183471))))

(declare-fun bs!975269 () Bool)

(assert (= bs!975269 (and b!4582471 d!1435331)))

(assert (=> bs!975269 (= (= lt!1747025 lt!1747209) (= lambda!183520 lambda!183474))))

(declare-fun bs!975270 () Bool)

(assert (= bs!975270 (and b!4582471 b!4582445)))

(assert (=> bs!975270 (= (= lt!1747025 lt!1747029) (= lambda!183520 lambda!183512))))

(assert (=> bs!975267 (= (= lt!1747025 lt!1747022) (= lambda!183520 lambda!183472))))

(declare-fun bs!975271 () Bool)

(assert (= bs!975271 (and b!4582471 b!4582126)))

(assert (=> bs!975271 (not (= lambda!183520 lambda!183401))))

(assert (=> b!4582471 true))

(declare-fun bs!975272 () Bool)

(declare-fun b!4582469 () Bool)

(assert (= bs!975272 (and b!4582469 d!1435473)))

(declare-fun lambda!183521 () Int)

(assert (=> bs!975272 (= (= lt!1747025 lt!1747395) (= lambda!183521 lambda!183515))))

(declare-fun bs!975273 () Bool)

(assert (= bs!975273 (and b!4582469 b!4582471)))

(assert (=> bs!975273 (= lambda!183521 lambda!183520)))

(declare-fun bs!975274 () Bool)

(assert (= bs!975274 (and b!4582469 b!4582443)))

(assert (=> bs!975274 (= (= lt!1747025 lt!1747390) (= lambda!183521 lambda!183514))))

(assert (=> bs!975274 (= (= lt!1747025 lt!1747029) (= lambda!183521 lambda!183513))))

(declare-fun bs!975275 () Bool)

(assert (= bs!975275 (and b!4582469 b!4582221)))

(assert (=> bs!975275 (= (= lt!1747025 lt!1747204) (= lambda!183521 lambda!183473))))

(declare-fun bs!975276 () Bool)

(assert (= bs!975276 (and b!4582469 b!4582223)))

(assert (=> bs!975276 (= (= lt!1747025 lt!1747022) (= lambda!183521 lambda!183471))))

(declare-fun bs!975277 () Bool)

(assert (= bs!975277 (and b!4582469 d!1435331)))

(assert (=> bs!975277 (= (= lt!1747025 lt!1747209) (= lambda!183521 lambda!183474))))

(declare-fun bs!975278 () Bool)

(assert (= bs!975278 (and b!4582469 b!4582445)))

(assert (=> bs!975278 (= (= lt!1747025 lt!1747029) (= lambda!183521 lambda!183512))))

(assert (=> bs!975275 (= (= lt!1747025 lt!1747022) (= lambda!183521 lambda!183472))))

(declare-fun bs!975279 () Bool)

(assert (= bs!975279 (and b!4582469 b!4582126)))

(assert (=> bs!975279 (not (= lambda!183521 lambda!183401))))

(assert (=> b!4582469 true))

(declare-fun lambda!183522 () Int)

(declare-fun lt!1747439 () ListMap!3817)

(assert (=> b!4582469 (= (= lt!1747439 lt!1747025) (= lambda!183522 lambda!183521))))

(assert (=> bs!975272 (= (= lt!1747439 lt!1747395) (= lambda!183522 lambda!183515))))

(assert (=> bs!975273 (= (= lt!1747439 lt!1747025) (= lambda!183522 lambda!183520))))

(assert (=> bs!975274 (= (= lt!1747439 lt!1747390) (= lambda!183522 lambda!183514))))

(assert (=> bs!975274 (= (= lt!1747439 lt!1747029) (= lambda!183522 lambda!183513))))

(assert (=> bs!975275 (= (= lt!1747439 lt!1747204) (= lambda!183522 lambda!183473))))

(assert (=> bs!975276 (= (= lt!1747439 lt!1747022) (= lambda!183522 lambda!183471))))

(assert (=> bs!975277 (= (= lt!1747439 lt!1747209) (= lambda!183522 lambda!183474))))

(assert (=> bs!975278 (= (= lt!1747439 lt!1747029) (= lambda!183522 lambda!183512))))

(assert (=> bs!975275 (= (= lt!1747439 lt!1747022) (= lambda!183522 lambda!183472))))

(assert (=> bs!975279 (not (= lambda!183522 lambda!183401))))

(assert (=> b!4582469 true))

(declare-fun bs!975280 () Bool)

(declare-fun d!1435501 () Bool)

(assert (= bs!975280 (and d!1435501 b!4582469)))

(declare-fun lambda!183523 () Int)

(declare-fun lt!1747444 () ListMap!3817)

(assert (=> bs!975280 (= (= lt!1747444 lt!1747025) (= lambda!183523 lambda!183521))))

(declare-fun bs!975281 () Bool)

(assert (= bs!975281 (and d!1435501 d!1435473)))

(assert (=> bs!975281 (= (= lt!1747444 lt!1747395) (= lambda!183523 lambda!183515))))

(declare-fun bs!975282 () Bool)

(assert (= bs!975282 (and d!1435501 b!4582471)))

(assert (=> bs!975282 (= (= lt!1747444 lt!1747025) (= lambda!183523 lambda!183520))))

(declare-fun bs!975283 () Bool)

(assert (= bs!975283 (and d!1435501 b!4582443)))

(assert (=> bs!975283 (= (= lt!1747444 lt!1747390) (= lambda!183523 lambda!183514))))

(assert (=> bs!975280 (= (= lt!1747444 lt!1747439) (= lambda!183523 lambda!183522))))

(assert (=> bs!975283 (= (= lt!1747444 lt!1747029) (= lambda!183523 lambda!183513))))

(declare-fun bs!975284 () Bool)

(assert (= bs!975284 (and d!1435501 b!4582221)))

(assert (=> bs!975284 (= (= lt!1747444 lt!1747204) (= lambda!183523 lambda!183473))))

(declare-fun bs!975285 () Bool)

(assert (= bs!975285 (and d!1435501 b!4582223)))

(assert (=> bs!975285 (= (= lt!1747444 lt!1747022) (= lambda!183523 lambda!183471))))

(declare-fun bs!975286 () Bool)

(assert (= bs!975286 (and d!1435501 d!1435331)))

(assert (=> bs!975286 (= (= lt!1747444 lt!1747209) (= lambda!183523 lambda!183474))))

(declare-fun bs!975287 () Bool)

(assert (= bs!975287 (and d!1435501 b!4582445)))

(assert (=> bs!975287 (= (= lt!1747444 lt!1747029) (= lambda!183523 lambda!183512))))

(assert (=> bs!975284 (= (= lt!1747444 lt!1747022) (= lambda!183523 lambda!183472))))

(declare-fun bs!975288 () Bool)

(assert (= bs!975288 (and d!1435501 b!4582126)))

(assert (=> bs!975288 (not (= lambda!183523 lambda!183401))))

(assert (=> d!1435501 true))

(declare-fun e!2857629 () ListMap!3817)

(assert (=> b!4582469 (= e!2857629 lt!1747439)))

(declare-fun lt!1747428 () ListMap!3817)

(assert (=> b!4582469 (= lt!1747428 (+!1714 lt!1747025 (h!56893 (_2!29060 lt!1746997))))))

(assert (=> b!4582469 (= lt!1747439 (addToMapMapFromBucket!787 (t!358070 (_2!29060 lt!1746997)) (+!1714 lt!1747025 (h!56893 (_2!29060 lt!1746997)))))))

(declare-fun lt!1747432 () Unit!105923)

(declare-fun call!319935 () Unit!105923)

(assert (=> b!4582469 (= lt!1747432 call!319935)))

(assert (=> b!4582469 (forall!10508 (toList!4555 lt!1747025) lambda!183521)))

(declare-fun lt!1747431 () Unit!105923)

(assert (=> b!4582469 (= lt!1747431 lt!1747432)))

(assert (=> b!4582469 (forall!10508 (toList!4555 lt!1747428) lambda!183522)))

(declare-fun lt!1747434 () Unit!105923)

(declare-fun Unit!105977 () Unit!105923)

(assert (=> b!4582469 (= lt!1747434 Unit!105977)))

(declare-fun call!319936 () Bool)

(assert (=> b!4582469 call!319936))

(declare-fun lt!1747438 () Unit!105923)

(declare-fun Unit!105978 () Unit!105923)

(assert (=> b!4582469 (= lt!1747438 Unit!105978)))

(declare-fun lt!1747425 () Unit!105923)

(declare-fun Unit!105979 () Unit!105923)

(assert (=> b!4582469 (= lt!1747425 Unit!105979)))

(declare-fun lt!1747443 () Unit!105923)

(assert (=> b!4582469 (= lt!1747443 (forallContained!2771 (toList!4555 lt!1747428) lambda!183522 (h!56893 (_2!29060 lt!1746997))))))

(assert (=> b!4582469 (contains!13857 lt!1747428 (_1!29059 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun lt!1747437 () Unit!105923)

(declare-fun Unit!105980 () Unit!105923)

(assert (=> b!4582469 (= lt!1747437 Unit!105980)))

(assert (=> b!4582469 (contains!13857 lt!1747439 (_1!29059 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun lt!1747436 () Unit!105923)

(declare-fun Unit!105981 () Unit!105923)

(assert (=> b!4582469 (= lt!1747436 Unit!105981)))

(assert (=> b!4582469 (forall!10508 (_2!29060 lt!1746997) lambda!183522)))

(declare-fun lt!1747426 () Unit!105923)

(declare-fun Unit!105982 () Unit!105923)

(assert (=> b!4582469 (= lt!1747426 Unit!105982)))

(assert (=> b!4582469 (forall!10508 (toList!4555 lt!1747428) lambda!183522)))

(declare-fun lt!1747440 () Unit!105923)

(declare-fun Unit!105983 () Unit!105923)

(assert (=> b!4582469 (= lt!1747440 Unit!105983)))

(declare-fun lt!1747433 () Unit!105923)

(declare-fun Unit!105984 () Unit!105923)

(assert (=> b!4582469 (= lt!1747433 Unit!105984)))

(declare-fun lt!1747427 () Unit!105923)

(assert (=> b!4582469 (= lt!1747427 (addForallContainsKeyThenBeforeAdding!416 lt!1747025 lt!1747439 (_1!29059 (h!56893 (_2!29060 lt!1746997))) (_2!29059 (h!56893 (_2!29060 lt!1746997)))))))

(assert (=> b!4582469 (forall!10508 (toList!4555 lt!1747025) lambda!183522)))

(declare-fun lt!1747441 () Unit!105923)

(assert (=> b!4582469 (= lt!1747441 lt!1747427)))

(assert (=> b!4582469 (forall!10508 (toList!4555 lt!1747025) lambda!183522)))

(declare-fun lt!1747442 () Unit!105923)

(declare-fun Unit!105986 () Unit!105923)

(assert (=> b!4582469 (= lt!1747442 Unit!105986)))

(declare-fun res!1914763 () Bool)

(assert (=> b!4582469 (= res!1914763 (forall!10508 (_2!29060 lt!1746997) lambda!183522))))

(declare-fun e!2857630 () Bool)

(assert (=> b!4582469 (=> (not res!1914763) (not e!2857630))))

(assert (=> b!4582469 e!2857630))

(declare-fun lt!1747429 () Unit!105923)

(declare-fun Unit!105989 () Unit!105923)

(assert (=> b!4582469 (= lt!1747429 Unit!105989)))

(declare-fun bm!319930 () Bool)

(assert (=> bm!319930 (= call!319935 (lemmaContainsAllItsOwnKeys!416 lt!1747025))))

(declare-fun b!4582470 () Bool)

(declare-fun e!2857631 () Bool)

(assert (=> b!4582470 (= e!2857631 (invariantList!1099 (toList!4555 lt!1747444)))))

(declare-fun bm!319931 () Bool)

(declare-fun call!319937 () Bool)

(declare-fun c!784416 () Bool)

(assert (=> bm!319931 (= call!319937 (forall!10508 (toList!4555 lt!1747025) (ite c!784416 lambda!183520 lambda!183522)))))

(declare-fun b!4582472 () Bool)

(assert (=> b!4582472 (= e!2857630 call!319937)))

(declare-fun bm!319932 () Bool)

(assert (=> bm!319932 (= call!319936 (forall!10508 (ite c!784416 (toList!4555 lt!1747025) (t!358070 (_2!29060 lt!1746997))) (ite c!784416 lambda!183520 lambda!183522)))))

(declare-fun b!4582473 () Bool)

(declare-fun res!1914761 () Bool)

(assert (=> b!4582473 (=> (not res!1914761) (not e!2857631))))

(assert (=> b!4582473 (= res!1914761 (forall!10508 (toList!4555 lt!1747025) lambda!183523))))

(assert (=> d!1435501 e!2857631))

(declare-fun res!1914762 () Bool)

(assert (=> d!1435501 (=> (not res!1914762) (not e!2857631))))

(assert (=> d!1435501 (= res!1914762 (forall!10508 (_2!29060 lt!1746997) lambda!183523))))

(assert (=> d!1435501 (= lt!1747444 e!2857629)))

(assert (=> d!1435501 (= c!784416 ((_ is Nil!50956) (_2!29060 lt!1746997)))))

(assert (=> d!1435501 (noDuplicateKeys!1274 (_2!29060 lt!1746997))))

(assert (=> d!1435501 (= (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747025) lt!1747444)))

(assert (=> b!4582471 (= e!2857629 lt!1747025)))

(declare-fun lt!1747424 () Unit!105923)

(assert (=> b!4582471 (= lt!1747424 call!319935)))

(assert (=> b!4582471 call!319936))

(declare-fun lt!1747435 () Unit!105923)

(assert (=> b!4582471 (= lt!1747435 lt!1747424)))

(assert (=> b!4582471 call!319937))

(declare-fun lt!1747430 () Unit!105923)

(declare-fun Unit!105996 () Unit!105923)

(assert (=> b!4582471 (= lt!1747430 Unit!105996)))

(assert (= (and d!1435501 c!784416) b!4582471))

(assert (= (and d!1435501 (not c!784416)) b!4582469))

(assert (= (and b!4582469 res!1914763) b!4582472))

(assert (= (or b!4582471 b!4582472) bm!319931))

(assert (= (or b!4582471 b!4582469) bm!319932))

(assert (= (or b!4582471 b!4582469) bm!319930))

(assert (= (and d!1435501 res!1914762) b!4582473))

(assert (= (and b!4582473 res!1914761) b!4582470))

(declare-fun m!5395029 () Bool)

(assert (=> bm!319931 m!5395029))

(declare-fun m!5395031 () Bool)

(assert (=> b!4582470 m!5395031))

(declare-fun m!5395033 () Bool)

(assert (=> d!1435501 m!5395033))

(assert (=> d!1435501 m!5394287))

(declare-fun m!5395035 () Bool)

(assert (=> b!4582473 m!5395035))

(declare-fun m!5395037 () Bool)

(assert (=> bm!319930 m!5395037))

(declare-fun m!5395039 () Bool)

(assert (=> b!4582469 m!5395039))

(declare-fun m!5395041 () Bool)

(assert (=> b!4582469 m!5395041))

(declare-fun m!5395043 () Bool)

(assert (=> b!4582469 m!5395043))

(declare-fun m!5395045 () Bool)

(assert (=> b!4582469 m!5395045))

(declare-fun m!5395047 () Bool)

(assert (=> b!4582469 m!5395047))

(declare-fun m!5395049 () Bool)

(assert (=> b!4582469 m!5395049))

(declare-fun m!5395051 () Bool)

(assert (=> b!4582469 m!5395051))

(assert (=> b!4582469 m!5395051))

(declare-fun m!5395053 () Bool)

(assert (=> b!4582469 m!5395053))

(assert (=> b!4582469 m!5395043))

(declare-fun m!5395055 () Bool)

(assert (=> b!4582469 m!5395055))

(assert (=> b!4582469 m!5395039))

(declare-fun m!5395057 () Bool)

(assert (=> b!4582469 m!5395057))

(assert (=> b!4582469 m!5395047))

(declare-fun m!5395059 () Bool)

(assert (=> bm!319932 m!5395059))

(assert (=> b!4582124 d!1435501))

(declare-fun d!1435503 () Bool)

(assert (=> d!1435503 (= (addToMapMapFromBucket!787 (_2!29060 lt!1746997) (-!482 lt!1747025 key!3287)) (-!482 (addToMapMapFromBucket!787 (_2!29060 lt!1746997) lt!1747025) key!3287))))

(declare-fun lt!1747479 () Unit!105923)

(declare-fun choose!30558 (ListMap!3817 K!12325 List!51080) Unit!105923)

(assert (=> d!1435503 (= lt!1747479 (choose!30558 lt!1747025 key!3287 (_2!29060 lt!1746997)))))

(assert (=> d!1435503 (not (containsKey!2060 (_2!29060 lt!1746997) key!3287))))

(assert (=> d!1435503 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!40 lt!1747025 key!3287 (_2!29060 lt!1746997)) lt!1747479)))

(declare-fun bs!975319 () Bool)

(assert (= bs!975319 d!1435503))

(assert (=> bs!975319 m!5394293))

(assert (=> bs!975319 m!5394269))

(assert (=> bs!975319 m!5394255))

(declare-fun m!5395091 () Bool)

(assert (=> bs!975319 m!5395091))

(declare-fun m!5395093 () Bool)

(assert (=> bs!975319 m!5395093))

(assert (=> bs!975319 m!5394255))

(assert (=> bs!975319 m!5394293))

(assert (=> bs!975319 m!5394295))

(assert (=> b!4582124 d!1435503))

(declare-fun b!4582505 () Bool)

(declare-fun e!2857654 () Bool)

(declare-fun e!2857657 () Bool)

(assert (=> b!4582505 (= e!2857654 e!2857657)))

(declare-fun res!1914785 () Bool)

(assert (=> b!4582505 (=> (not res!1914785) (not e!2857657))))

(declare-fun lt!1747482 () Option!11331)

(declare-fun isDefined!8605 (Option!11331) Bool)

(assert (=> b!4582505 (= res!1914785 (isDefined!8605 lt!1747482))))

(declare-fun b!4582506 () Bool)

(declare-fun e!2857655 () Bool)

(assert (=> b!4582506 (= e!2857655 (not (containsKey!2060 (_2!29060 lt!1746997) key!3287)))))

(declare-fun b!4582507 () Bool)

(declare-fun e!2857656 () Option!11331)

(assert (=> b!4582507 (= e!2857656 None!11330)))

(declare-fun b!4582508 () Bool)

(declare-fun e!2857653 () Option!11331)

(assert (=> b!4582508 (= e!2857653 e!2857656)))

(declare-fun c!784423 () Bool)

(assert (=> b!4582508 (= c!784423 ((_ is Cons!50956) (_2!29060 lt!1746997)))))

(declare-fun b!4582509 () Bool)

(assert (=> b!4582509 (= e!2857653 (Some!11330 (h!56893 (_2!29060 lt!1746997))))))

(declare-fun b!4582510 () Bool)

(declare-fun contains!13861 (List!51080 tuple2!51530) Bool)

(assert (=> b!4582510 (= e!2857657 (contains!13861 (_2!29060 lt!1746997) (get!16821 lt!1747482)))))

(declare-fun b!4582511 () Bool)

(assert (=> b!4582511 (= e!2857656 (getPair!234 (t!358070 (_2!29060 lt!1746997)) key!3287))))

(declare-fun d!1435517 () Bool)

(assert (=> d!1435517 e!2857654))

(declare-fun res!1914787 () Bool)

(assert (=> d!1435517 (=> res!1914787 e!2857654)))

(assert (=> d!1435517 (= res!1914787 e!2857655)))

(declare-fun res!1914788 () Bool)

(assert (=> d!1435517 (=> (not res!1914788) (not e!2857655))))

(declare-fun isEmpty!28825 (Option!11331) Bool)

(assert (=> d!1435517 (= res!1914788 (isEmpty!28825 lt!1747482))))

(assert (=> d!1435517 (= lt!1747482 e!2857653)))

(declare-fun c!784422 () Bool)

(assert (=> d!1435517 (= c!784422 (and ((_ is Cons!50956) (_2!29060 lt!1746997)) (= (_1!29059 (h!56893 (_2!29060 lt!1746997))) key!3287)))))

(assert (=> d!1435517 (noDuplicateKeys!1274 (_2!29060 lt!1746997))))

(assert (=> d!1435517 (= (getPair!234 (_2!29060 lt!1746997) key!3287) lt!1747482)))

(declare-fun b!4582512 () Bool)

(declare-fun res!1914786 () Bool)

(assert (=> b!4582512 (=> (not res!1914786) (not e!2857657))))

(assert (=> b!4582512 (= res!1914786 (= (_1!29059 (get!16821 lt!1747482)) key!3287))))

(assert (= (and d!1435517 c!784422) b!4582509))

(assert (= (and d!1435517 (not c!784422)) b!4582508))

(assert (= (and b!4582508 c!784423) b!4582511))

(assert (= (and b!4582508 (not c!784423)) b!4582507))

(assert (= (and d!1435517 res!1914788) b!4582506))

(assert (= (and d!1435517 (not res!1914787)) b!4582505))

(assert (= (and b!4582505 res!1914785) b!4582512))

(assert (= (and b!4582512 res!1914786) b!4582510))

(declare-fun m!5395127 () Bool)

(assert (=> b!4582510 m!5395127))

(assert (=> b!4582510 m!5395127))

(declare-fun m!5395129 () Bool)

(assert (=> b!4582510 m!5395129))

(declare-fun m!5395131 () Bool)

(assert (=> d!1435517 m!5395131))

(assert (=> d!1435517 m!5394287))

(assert (=> b!4582512 m!5395127))

(assert (=> b!4582506 m!5394269))

(declare-fun m!5395133 () Bool)

(assert (=> b!4582505 m!5395133))

(declare-fun m!5395135 () Bool)

(assert (=> b!4582511 m!5395135))

(assert (=> b!4582126 d!1435517))

(declare-fun d!1435521 () Bool)

(assert (=> d!1435521 (dynLambda!21337 lambda!183400 (h!56894 (toList!4556 lm!1477)))))

(declare-fun lt!1747483 () Unit!105923)

(assert (=> d!1435521 (= lt!1747483 (choose!30549 (toList!4556 lm!1477) lambda!183400 (h!56894 (toList!4556 lm!1477))))))

(declare-fun e!2857658 () Bool)

(assert (=> d!1435521 e!2857658))

(declare-fun res!1914789 () Bool)

(assert (=> d!1435521 (=> (not res!1914789) (not e!2857658))))

(assert (=> d!1435521 (= res!1914789 (forall!10506 (toList!4556 lm!1477) lambda!183400))))

(assert (=> d!1435521 (= (forallContained!2770 (toList!4556 lm!1477) lambda!183400 (h!56894 (toList!4556 lm!1477))) lt!1747483)))

(declare-fun b!4582513 () Bool)

(assert (=> b!4582513 (= e!2857658 (contains!13855 (toList!4556 lm!1477) (h!56894 (toList!4556 lm!1477))))))

(assert (= (and d!1435521 res!1914789) b!4582513))

(declare-fun b_lambda!166409 () Bool)

(assert (=> (not b_lambda!166409) (not d!1435521)))

(declare-fun m!5395137 () Bool)

(assert (=> d!1435521 m!5395137))

(declare-fun m!5395139 () Bool)

(assert (=> d!1435521 m!5395139))

(declare-fun m!5395141 () Bool)

(assert (=> d!1435521 m!5395141))

(assert (=> b!4582513 m!5394661))

(assert (=> b!4582126 d!1435521))

(declare-fun d!1435523 () Bool)

(declare-fun dynLambda!21340 (Int tuple2!51530) Bool)

(assert (=> d!1435523 (dynLambda!21340 lambda!183401 (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026))))))

(declare-fun lt!1747489 () Unit!105923)

(declare-fun choose!30560 (List!51080 Int tuple2!51530) Unit!105923)

(assert (=> d!1435523 (= lt!1747489 (choose!30560 (_2!29060 (h!56894 (toList!4556 lm!1477))) lambda!183401 (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026)))))))

(declare-fun e!2857663 () Bool)

(assert (=> d!1435523 e!2857663))

(declare-fun res!1914794 () Bool)

(assert (=> d!1435523 (=> (not res!1914794) (not e!2857663))))

(assert (=> d!1435523 (= res!1914794 (forall!10508 (_2!29060 (h!56894 (toList!4556 lm!1477))) lambda!183401))))

(assert (=> d!1435523 (= (forallContained!2771 (_2!29060 (h!56894 (toList!4556 lm!1477))) lambda!183401 (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026)))) lt!1747489)))

(declare-fun b!4582518 () Bool)

(assert (=> b!4582518 (= e!2857663 (contains!13861 (_2!29060 (h!56894 (toList!4556 lm!1477))) (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026)))))))

(assert (= (and d!1435523 res!1914794) b!4582518))

(declare-fun b_lambda!166411 () Bool)

(assert (=> (not b_lambda!166411) (not d!1435523)))

(declare-fun m!5395151 () Bool)

(assert (=> d!1435523 m!5395151))

(declare-fun m!5395153 () Bool)

(assert (=> d!1435523 m!5395153))

(declare-fun m!5395155 () Bool)

(assert (=> d!1435523 m!5395155))

(declare-fun m!5395157 () Bool)

(assert (=> b!4582518 m!5395157))

(assert (=> b!4582126 d!1435523))

(declare-fun d!1435535 () Bool)

(assert (=> d!1435535 (= (get!16821 lt!1747026) (v!45216 lt!1747026))))

(assert (=> b!4582126 d!1435535))

(declare-fun bs!975328 () Bool)

(declare-fun d!1435537 () Bool)

(assert (= bs!975328 (and d!1435537 d!1435455)))

(declare-fun lambda!183530 () Int)

(assert (=> bs!975328 (= lambda!183530 lambda!183510)))

(declare-fun bs!975329 () Bool)

(assert (= bs!975329 (and d!1435537 d!1435405)))

(assert (=> bs!975329 (= lambda!183530 lambda!183496)))

(declare-fun bs!975330 () Bool)

(assert (= bs!975330 (and d!1435537 d!1435463)))

(assert (=> bs!975330 (= lambda!183530 lambda!183511)))

(declare-fun bs!975331 () Bool)

(assert (= bs!975331 (and d!1435537 d!1435429)))

(assert (=> bs!975331 (= lambda!183530 lambda!183500)))

(declare-fun bs!975332 () Bool)

(assert (= bs!975332 (and d!1435537 d!1435381)))

(assert (=> bs!975332 (= lambda!183530 lambda!183486)))

(declare-fun bs!975333 () Bool)

(assert (= bs!975333 (and d!1435537 b!4582126)))

(assert (=> bs!975333 (not (= lambda!183530 lambda!183400))))

(declare-fun bs!975334 () Bool)

(assert (= bs!975334 (and d!1435537 d!1435365)))

(assert (=> bs!975334 (= lambda!183530 lambda!183479)))

(declare-fun bs!975335 () Bool)

(assert (= bs!975335 (and d!1435537 d!1435357)))

(assert (=> bs!975335 (= lambda!183530 lambda!183478)))

(declare-fun bs!975336 () Bool)

(assert (= bs!975336 (and d!1435537 d!1435437)))

(assert (=> bs!975336 (= lambda!183530 lambda!183501)))

(declare-fun bs!975337 () Bool)

(assert (= bs!975337 (and d!1435537 d!1435369)))

(assert (=> bs!975337 (= lambda!183530 lambda!183482)))

(declare-fun bs!975338 () Bool)

(assert (= bs!975338 (and d!1435537 start!456328)))

(assert (=> bs!975338 (= lambda!183530 lambda!183399)))

(assert (=> d!1435537 (not (contains!13857 (extractMap!1330 (toList!4556 lm!1477)) key!3287))))

(declare-fun lt!1747492 () Unit!105923)

(declare-fun choose!30561 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> d!1435537 (= lt!1747492 (choose!30561 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1435537 (forall!10506 (toList!4556 lm!1477) lambda!183530)))

(assert (=> d!1435537 (= (lemmaNotInItsHashBucketThenNotInMap!256 lm!1477 key!3287 hashF!1107) lt!1747492)))

(declare-fun bs!975339 () Bool)

(assert (= bs!975339 d!1435537))

(assert (=> bs!975339 m!5394185))

(assert (=> bs!975339 m!5394185))

(declare-fun m!5395171 () Bool)

(assert (=> bs!975339 m!5395171))

(declare-fun m!5395173 () Bool)

(assert (=> bs!975339 m!5395173))

(declare-fun m!5395175 () Bool)

(assert (=> bs!975339 m!5395175))

(assert (=> b!4582104 d!1435537))

(declare-fun d!1435547 () Bool)

(declare-fun get!16823 (Option!11334) List!51080)

(assert (=> d!1435547 (= (apply!12011 lt!1747013 hash!344) (get!16823 (getValueByKey!1257 (toList!4556 lt!1747013) hash!344)))))

(declare-fun bs!975340 () Bool)

(assert (= bs!975340 d!1435547))

(assert (=> bs!975340 m!5394837))

(assert (=> bs!975340 m!5394837))

(declare-fun m!5395177 () Bool)

(assert (=> bs!975340 m!5395177))

(assert (=> b!4582125 d!1435547))

(declare-fun bs!975341 () Bool)

(declare-fun d!1435549 () Bool)

(assert (= bs!975341 (and d!1435549 d!1435455)))

(declare-fun lambda!183533 () Int)

(assert (=> bs!975341 (= lambda!183533 lambda!183510)))

(declare-fun bs!975342 () Bool)

(assert (= bs!975342 (and d!1435549 d!1435405)))

(assert (=> bs!975342 (= lambda!183533 lambda!183496)))

(declare-fun bs!975343 () Bool)

(assert (= bs!975343 (and d!1435549 d!1435463)))

(assert (=> bs!975343 (= lambda!183533 lambda!183511)))

(declare-fun bs!975344 () Bool)

(assert (= bs!975344 (and d!1435549 d!1435429)))

(assert (=> bs!975344 (= lambda!183533 lambda!183500)))

(declare-fun bs!975345 () Bool)

(assert (= bs!975345 (and d!1435549 d!1435381)))

(assert (=> bs!975345 (= lambda!183533 lambda!183486)))

(declare-fun bs!975346 () Bool)

(assert (= bs!975346 (and d!1435549 b!4582126)))

(assert (=> bs!975346 (not (= lambda!183533 lambda!183400))))

(declare-fun bs!975347 () Bool)

(assert (= bs!975347 (and d!1435549 d!1435357)))

(assert (=> bs!975347 (= lambda!183533 lambda!183478)))

(declare-fun bs!975348 () Bool)

(assert (= bs!975348 (and d!1435549 d!1435437)))

(assert (=> bs!975348 (= lambda!183533 lambda!183501)))

(declare-fun bs!975349 () Bool)

(assert (= bs!975349 (and d!1435549 d!1435369)))

(assert (=> bs!975349 (= lambda!183533 lambda!183482)))

(declare-fun bs!975350 () Bool)

(assert (= bs!975350 (and d!1435549 start!456328)))

(assert (=> bs!975350 (= lambda!183533 lambda!183399)))

(declare-fun bs!975351 () Bool)

(assert (= bs!975351 (and d!1435549 d!1435365)))

(assert (=> bs!975351 (= lambda!183533 lambda!183479)))

(declare-fun bs!975352 () Bool)

(assert (= bs!975352 (and d!1435549 d!1435537)))

(assert (=> bs!975352 (= lambda!183533 lambda!183530)))

(assert (=> d!1435549 (contains!13856 lm!1477 (hash!3127 hashF!1107 key!3287))))

(declare-fun lt!1747495 () Unit!105923)

(declare-fun choose!30562 (ListLongMap!3187 K!12325 Hashable!5669) Unit!105923)

(assert (=> d!1435549 (= lt!1747495 (choose!30562 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1435549 (forall!10506 (toList!4556 lm!1477) lambda!183533)))

(assert (=> d!1435549 (= (lemmaInGenMapThenLongMapContainsHash!348 lm!1477 key!3287 hashF!1107) lt!1747495)))

(declare-fun bs!975353 () Bool)

(assert (= bs!975353 d!1435549))

(assert (=> bs!975353 m!5394187))

(assert (=> bs!975353 m!5394187))

(declare-fun m!5395179 () Bool)

(assert (=> bs!975353 m!5395179))

(declare-fun m!5395181 () Bool)

(assert (=> bs!975353 m!5395181))

(declare-fun m!5395183 () Bool)

(assert (=> bs!975353 m!5395183))

(assert (=> b!4582106 d!1435549))

(declare-fun d!1435551 () Bool)

(declare-fun e!2857673 () Bool)

(assert (=> d!1435551 e!2857673))

(declare-fun res!1914797 () Bool)

(assert (=> d!1435551 (=> res!1914797 e!2857673)))

(declare-fun lt!1747499 () Bool)

(assert (=> d!1435551 (= res!1914797 (not lt!1747499))))

(declare-fun lt!1747496 () Bool)

(assert (=> d!1435551 (= lt!1747499 lt!1747496)))

(declare-fun lt!1747497 () Unit!105923)

(declare-fun e!2857672 () Unit!105923)

(assert (=> d!1435551 (= lt!1747497 e!2857672)))

(declare-fun c!784424 () Bool)

(assert (=> d!1435551 (= c!784424 lt!1747496)))

(assert (=> d!1435551 (= lt!1747496 (containsKey!2064 (toList!4556 lm!1477) lt!1747017))))

(assert (=> d!1435551 (= (contains!13856 lm!1477 lt!1747017) lt!1747499)))

(declare-fun b!4582531 () Bool)

(declare-fun lt!1747498 () Unit!105923)

(assert (=> b!4582531 (= e!2857672 lt!1747498)))

(assert (=> b!4582531 (= lt!1747498 (lemmaContainsKeyImpliesGetValueByKeyDefined!1163 (toList!4556 lm!1477) lt!1747017))))

(assert (=> b!4582531 (isDefined!8604 (getValueByKey!1257 (toList!4556 lm!1477) lt!1747017))))

(declare-fun b!4582532 () Bool)

(declare-fun Unit!105999 () Unit!105923)

(assert (=> b!4582532 (= e!2857672 Unit!105999)))

(declare-fun b!4582533 () Bool)

(assert (=> b!4582533 (= e!2857673 (isDefined!8604 (getValueByKey!1257 (toList!4556 lm!1477) lt!1747017)))))

(assert (= (and d!1435551 c!784424) b!4582531))

(assert (= (and d!1435551 (not c!784424)) b!4582532))

(assert (= (and d!1435551 (not res!1914797)) b!4582533))

(declare-fun m!5395185 () Bool)

(assert (=> d!1435551 m!5395185))

(declare-fun m!5395187 () Bool)

(assert (=> b!4582531 m!5395187))

(declare-fun m!5395189 () Bool)

(assert (=> b!4582531 m!5395189))

(assert (=> b!4582531 m!5395189))

(declare-fun m!5395191 () Bool)

(assert (=> b!4582531 m!5395191))

(assert (=> b!4582533 m!5395189))

(assert (=> b!4582533 m!5395189))

(assert (=> b!4582533 m!5395191))

(assert (=> b!4582106 d!1435551))

(declare-fun d!1435553 () Bool)

(assert (=> d!1435553 (dynLambda!21337 lambda!183399 lt!1746998)))

(declare-fun lt!1747500 () Unit!105923)

(assert (=> d!1435553 (= lt!1747500 (choose!30549 (toList!4556 lm!1477) lambda!183399 lt!1746998))))

(declare-fun e!2857674 () Bool)

(assert (=> d!1435553 e!2857674))

(declare-fun res!1914798 () Bool)

(assert (=> d!1435553 (=> (not res!1914798) (not e!2857674))))

(assert (=> d!1435553 (= res!1914798 (forall!10506 (toList!4556 lm!1477) lambda!183399))))

(assert (=> d!1435553 (= (forallContained!2770 (toList!4556 lm!1477) lambda!183399 lt!1746998) lt!1747500)))

(declare-fun b!4582534 () Bool)

(assert (=> b!4582534 (= e!2857674 (contains!13855 (toList!4556 lm!1477) lt!1746998))))

(assert (= (and d!1435553 res!1914798) b!4582534))

(declare-fun b_lambda!166423 () Bool)

(assert (=> (not b_lambda!166423) (not d!1435553)))

(declare-fun m!5395193 () Bool)

(assert (=> d!1435553 m!5395193))

(declare-fun m!5395195 () Bool)

(assert (=> d!1435553 m!5395195))

(assert (=> d!1435553 m!5394265))

(assert (=> b!4582534 m!5394223))

(assert (=> b!4582106 d!1435553))

(declare-fun d!1435555 () Bool)

(assert (=> d!1435555 (= (apply!12011 lm!1477 hash!344) (get!16823 (getValueByKey!1257 (toList!4556 lm!1477) hash!344)))))

(declare-fun bs!975354 () Bool)

(assert (= bs!975354 d!1435555))

(declare-fun m!5395197 () Bool)

(assert (=> bs!975354 m!5395197))

(assert (=> bs!975354 m!5395197))

(declare-fun m!5395199 () Bool)

(assert (=> bs!975354 m!5395199))

(assert (=> b!4582106 d!1435555))

(declare-fun d!1435557 () Bool)

(declare-fun lt!1747503 () Bool)

(declare-fun content!8594 (List!51081) (InoxSet tuple2!51532))

(assert (=> d!1435557 (= lt!1747503 (select (content!8594 (toList!4556 lm!1477)) lt!1746998))))

(declare-fun e!2857679 () Bool)

(assert (=> d!1435557 (= lt!1747503 e!2857679)))

(declare-fun res!1914803 () Bool)

(assert (=> d!1435557 (=> (not res!1914803) (not e!2857679))))

(assert (=> d!1435557 (= res!1914803 ((_ is Cons!50957) (toList!4556 lm!1477)))))

(assert (=> d!1435557 (= (contains!13855 (toList!4556 lm!1477) lt!1746998) lt!1747503)))

(declare-fun b!4582539 () Bool)

(declare-fun e!2857680 () Bool)

(assert (=> b!4582539 (= e!2857679 e!2857680)))

(declare-fun res!1914804 () Bool)

(assert (=> b!4582539 (=> res!1914804 e!2857680)))

(assert (=> b!4582539 (= res!1914804 (= (h!56894 (toList!4556 lm!1477)) lt!1746998))))

(declare-fun b!4582540 () Bool)

(assert (=> b!4582540 (= e!2857680 (contains!13855 (t!358071 (toList!4556 lm!1477)) lt!1746998))))

(assert (= (and d!1435557 res!1914803) b!4582539))

(assert (= (and b!4582539 (not res!1914804)) b!4582540))

(declare-fun m!5395201 () Bool)

(assert (=> d!1435557 m!5395201))

(declare-fun m!5395203 () Bool)

(assert (=> d!1435557 m!5395203))

(assert (=> b!4582540 m!5394211))

(assert (=> b!4582106 d!1435557))

(declare-fun d!1435559 () Bool)

(declare-fun lt!1747506 () List!51080)

(assert (=> d!1435559 (not (containsKey!2060 lt!1747506 key!3287))))

(declare-fun e!2857686 () List!51080)

(assert (=> d!1435559 (= lt!1747506 e!2857686)))

(declare-fun c!784430 () Bool)

(assert (=> d!1435559 (= c!784430 (and ((_ is Cons!50956) lt!1747008) (= (_1!29059 (h!56893 lt!1747008)) key!3287)))))

(assert (=> d!1435559 (noDuplicateKeys!1274 lt!1747008)))

(assert (=> d!1435559 (= (removePairForKey!901 lt!1747008 key!3287) lt!1747506)))

(declare-fun b!4582549 () Bool)

(assert (=> b!4582549 (= e!2857686 (t!358070 lt!1747008))))

(declare-fun b!4582550 () Bool)

(declare-fun e!2857685 () List!51080)

(assert (=> b!4582550 (= e!2857686 e!2857685)))

(declare-fun c!784429 () Bool)

(assert (=> b!4582550 (= c!784429 ((_ is Cons!50956) lt!1747008))))

(declare-fun b!4582552 () Bool)

(assert (=> b!4582552 (= e!2857685 Nil!50956)))

(declare-fun b!4582551 () Bool)

(assert (=> b!4582551 (= e!2857685 (Cons!50956 (h!56893 lt!1747008) (removePairForKey!901 (t!358070 lt!1747008) key!3287)))))

(assert (= (and d!1435559 c!784430) b!4582549))

(assert (= (and d!1435559 (not c!784430)) b!4582550))

(assert (= (and b!4582550 c!784429) b!4582551))

(assert (= (and b!4582550 (not c!784429)) b!4582552))

(declare-fun m!5395205 () Bool)

(assert (=> d!1435559 m!5395205))

(declare-fun m!5395207 () Bool)

(assert (=> d!1435559 m!5395207))

(declare-fun m!5395209 () Bool)

(assert (=> b!4582551 m!5395209))

(assert (=> b!4582106 d!1435559))

(declare-fun d!1435561 () Bool)

(assert (=> d!1435561 (contains!13855 (toList!4556 lm!1477) (tuple2!51533 hash!344 lt!1747008))))

(declare-fun lt!1747509 () Unit!105923)

(declare-fun choose!30563 (List!51081 (_ BitVec 64) List!51080) Unit!105923)

(assert (=> d!1435561 (= lt!1747509 (choose!30563 (toList!4556 lm!1477) hash!344 lt!1747008))))

(declare-fun e!2857689 () Bool)

(assert (=> d!1435561 e!2857689))

(declare-fun res!1914807 () Bool)

(assert (=> d!1435561 (=> (not res!1914807) (not e!2857689))))

(assert (=> d!1435561 (= res!1914807 (isStrictlySorted!513 (toList!4556 lm!1477)))))

(assert (=> d!1435561 (= (lemmaGetValueByKeyImpliesContainsTuple!786 (toList!4556 lm!1477) hash!344 lt!1747008) lt!1747509)))

(declare-fun b!4582555 () Bool)

(assert (=> b!4582555 (= e!2857689 (= (getValueByKey!1257 (toList!4556 lm!1477) hash!344) (Some!11333 lt!1747008)))))

(assert (= (and d!1435561 res!1914807) b!4582555))

(declare-fun m!5395211 () Bool)

(assert (=> d!1435561 m!5395211))

(declare-fun m!5395213 () Bool)

(assert (=> d!1435561 m!5395213))

(assert (=> d!1435561 m!5394315))

(assert (=> b!4582555 m!5395197))

(assert (=> b!4582106 d!1435561))

(declare-fun bs!975355 () Bool)

(declare-fun d!1435563 () Bool)

(assert (= bs!975355 (and d!1435563 b!4582469)))

(declare-fun lambda!183536 () Int)

(assert (=> bs!975355 (not (= lambda!183536 lambda!183521))))

(declare-fun bs!975356 () Bool)

(assert (= bs!975356 (and d!1435563 d!1435473)))

(assert (=> bs!975356 (not (= lambda!183536 lambda!183515))))

(declare-fun bs!975357 () Bool)

(assert (= bs!975357 (and d!1435563 b!4582471)))

(assert (=> bs!975357 (not (= lambda!183536 lambda!183520))))

(assert (=> bs!975355 (not (= lambda!183536 lambda!183522))))

(declare-fun bs!975358 () Bool)

(assert (= bs!975358 (and d!1435563 b!4582443)))

(assert (=> bs!975358 (not (= lambda!183536 lambda!183513))))

(declare-fun bs!975359 () Bool)

(assert (= bs!975359 (and d!1435563 b!4582221)))

(assert (=> bs!975359 (not (= lambda!183536 lambda!183473))))

(declare-fun bs!975360 () Bool)

(assert (= bs!975360 (and d!1435563 b!4582223)))

(assert (=> bs!975360 (not (= lambda!183536 lambda!183471))))

(declare-fun bs!975361 () Bool)

(assert (= bs!975361 (and d!1435563 d!1435331)))

(assert (=> bs!975361 (not (= lambda!183536 lambda!183474))))

(declare-fun bs!975362 () Bool)

(assert (= bs!975362 (and d!1435563 b!4582445)))

(assert (=> bs!975362 (not (= lambda!183536 lambda!183512))))

(assert (=> bs!975359 (not (= lambda!183536 lambda!183472))))

(declare-fun bs!975363 () Bool)

(assert (= bs!975363 (and d!1435563 b!4582126)))

(assert (=> bs!975363 (= (= hash!344 (_1!29060 (h!56894 (toList!4556 lm!1477)))) (= lambda!183536 lambda!183401))))

(declare-fun bs!975364 () Bool)

(assert (= bs!975364 (and d!1435563 d!1435501)))

(assert (=> bs!975364 (not (= lambda!183536 lambda!183523))))

(assert (=> bs!975358 (not (= lambda!183536 lambda!183514))))

(assert (=> d!1435563 true))

(assert (=> d!1435563 true))

(assert (=> d!1435563 (= (allKeysSameHash!1128 newBucket!178 hash!344 hashF!1107) (forall!10508 newBucket!178 lambda!183536))))

(declare-fun bs!975365 () Bool)

(assert (= bs!975365 d!1435563))

(declare-fun m!5395215 () Bool)

(assert (=> bs!975365 m!5395215))

(assert (=> b!4582127 d!1435563))

(declare-fun bs!975366 () Bool)

(declare-fun d!1435565 () Bool)

(assert (= bs!975366 (and d!1435565 d!1435455)))

(declare-fun lambda!183539 () Int)

(assert (=> bs!975366 (not (= lambda!183539 lambda!183510))))

(declare-fun bs!975367 () Bool)

(assert (= bs!975367 (and d!1435565 d!1435405)))

(assert (=> bs!975367 (not (= lambda!183539 lambda!183496))))

(declare-fun bs!975368 () Bool)

(assert (= bs!975368 (and d!1435565 d!1435463)))

(assert (=> bs!975368 (not (= lambda!183539 lambda!183511))))

(declare-fun bs!975369 () Bool)

(assert (= bs!975369 (and d!1435565 d!1435429)))

(assert (=> bs!975369 (not (= lambda!183539 lambda!183500))))

(declare-fun bs!975370 () Bool)

(assert (= bs!975370 (and d!1435565 d!1435381)))

(assert (=> bs!975370 (not (= lambda!183539 lambda!183486))))

(declare-fun bs!975371 () Bool)

(assert (= bs!975371 (and d!1435565 b!4582126)))

(assert (=> bs!975371 (= lambda!183539 lambda!183400)))

(declare-fun bs!975372 () Bool)

(assert (= bs!975372 (and d!1435565 d!1435549)))

(assert (=> bs!975372 (not (= lambda!183539 lambda!183533))))

(declare-fun bs!975373 () Bool)

(assert (= bs!975373 (and d!1435565 d!1435357)))

(assert (=> bs!975373 (not (= lambda!183539 lambda!183478))))

(declare-fun bs!975374 () Bool)

(assert (= bs!975374 (and d!1435565 d!1435437)))

(assert (=> bs!975374 (not (= lambda!183539 lambda!183501))))

(declare-fun bs!975375 () Bool)

(assert (= bs!975375 (and d!1435565 d!1435369)))

(assert (=> bs!975375 (not (= lambda!183539 lambda!183482))))

(declare-fun bs!975376 () Bool)

(assert (= bs!975376 (and d!1435565 start!456328)))

(assert (=> bs!975376 (not (= lambda!183539 lambda!183399))))

(declare-fun bs!975377 () Bool)

(assert (= bs!975377 (and d!1435565 d!1435365)))

(assert (=> bs!975377 (not (= lambda!183539 lambda!183479))))

(declare-fun bs!975378 () Bool)

(assert (= bs!975378 (and d!1435565 d!1435537)))

(assert (=> bs!975378 (not (= lambda!183539 lambda!183530))))

(assert (=> d!1435565 true))

(assert (=> d!1435565 (= (allKeysSameHashInMap!1381 lm!1477 hashF!1107) (forall!10506 (toList!4556 lm!1477) lambda!183539))))

(declare-fun bs!975379 () Bool)

(assert (= bs!975379 d!1435565))

(declare-fun m!5395217 () Bool)

(assert (=> bs!975379 m!5395217))

(assert (=> b!4582105 d!1435565))

(declare-fun d!1435567 () Bool)

(declare-fun res!1914808 () Bool)

(declare-fun e!2857690 () Bool)

(assert (=> d!1435567 (=> res!1914808 e!2857690)))

(assert (=> d!1435567 (= res!1914808 (and ((_ is Cons!50956) lt!1747008) (= (_1!29059 (h!56893 lt!1747008)) key!3287)))))

(assert (=> d!1435567 (= (containsKey!2060 lt!1747008 key!3287) e!2857690)))

(declare-fun b!4582558 () Bool)

(declare-fun e!2857691 () Bool)

(assert (=> b!4582558 (= e!2857690 e!2857691)))

(declare-fun res!1914809 () Bool)

(assert (=> b!4582558 (=> (not res!1914809) (not e!2857691))))

(assert (=> b!4582558 (= res!1914809 ((_ is Cons!50956) lt!1747008))))

(declare-fun b!4582559 () Bool)

(assert (=> b!4582559 (= e!2857691 (containsKey!2060 (t!358070 lt!1747008) key!3287))))

(assert (= (and d!1435567 (not res!1914808)) b!4582558))

(assert (= (and b!4582558 res!1914809) b!4582559))

(declare-fun m!5395219 () Bool)

(assert (=> b!4582559 m!5395219))

(assert (=> b!4582128 d!1435567))

(declare-fun d!1435569 () Bool)

(assert (=> d!1435569 (= (eq!713 lt!1747015 lt!1747014) (= (content!8590 (toList!4555 lt!1747015)) (content!8590 (toList!4555 lt!1747014))))))

(declare-fun bs!975380 () Bool)

(assert (= bs!975380 d!1435569))

(assert (=> bs!975380 m!5394361))

(assert (=> bs!975380 m!5394319))

(assert (=> b!4582110 d!1435569))

(declare-fun d!1435571 () Bool)

(declare-fun lt!1747510 () Bool)

(assert (=> d!1435571 (= lt!1747510 (select (content!8594 (t!358071 (toList!4556 lm!1477))) lt!1746998))))

(declare-fun e!2857692 () Bool)

(assert (=> d!1435571 (= lt!1747510 e!2857692)))

(declare-fun res!1914810 () Bool)

(assert (=> d!1435571 (=> (not res!1914810) (not e!2857692))))

(assert (=> d!1435571 (= res!1914810 ((_ is Cons!50957) (t!358071 (toList!4556 lm!1477))))))

(assert (=> d!1435571 (= (contains!13855 (t!358071 (toList!4556 lm!1477)) lt!1746998) lt!1747510)))

(declare-fun b!4582560 () Bool)

(declare-fun e!2857693 () Bool)

(assert (=> b!4582560 (= e!2857692 e!2857693)))

(declare-fun res!1914811 () Bool)

(assert (=> b!4582560 (=> res!1914811 e!2857693)))

(assert (=> b!4582560 (= res!1914811 (= (h!56894 (t!358071 (toList!4556 lm!1477))) lt!1746998))))

(declare-fun b!4582561 () Bool)

(assert (=> b!4582561 (= e!2857693 (contains!13855 (t!358071 (t!358071 (toList!4556 lm!1477))) lt!1746998))))

(assert (= (and d!1435571 res!1914810) b!4582560))

(assert (= (and b!4582560 (not res!1914811)) b!4582561))

(declare-fun m!5395221 () Bool)

(assert (=> d!1435571 m!5395221))

(declare-fun m!5395223 () Bool)

(assert (=> d!1435571 m!5395223))

(declare-fun m!5395225 () Bool)

(assert (=> b!4582561 m!5395225))

(assert (=> b!4582109 d!1435571))

(declare-fun b!4582566 () Bool)

(declare-fun e!2857696 () Bool)

(declare-fun tp!1339789 () Bool)

(declare-fun tp!1339790 () Bool)

(assert (=> b!4582566 (= e!2857696 (and tp!1339789 tp!1339790))))

(assert (=> b!4582111 (= tp!1339775 e!2857696)))

(assert (= (and b!4582111 ((_ is Cons!50957) (toList!4556 lm!1477))) b!4582566))

(declare-fun tp!1339793 () Bool)

(declare-fun b!4582571 () Bool)

(declare-fun e!2857699 () Bool)

(assert (=> b!4582571 (= e!2857699 (and tp_is_empty!28373 tp_is_empty!28375 tp!1339793))))

(assert (=> b!4582108 (= tp!1339774 e!2857699)))

(assert (= (and b!4582108 ((_ is Cons!50956) (t!358070 newBucket!178))) b!4582571))

(declare-fun b_lambda!166425 () Bool)

(assert (= b_lambda!166411 (or b!4582126 b_lambda!166425)))

(declare-fun bs!975381 () Bool)

(declare-fun d!1435573 () Bool)

(assert (= bs!975381 (and d!1435573 b!4582126)))

(assert (=> bs!975381 (= (dynLambda!21340 lambda!183401 (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026)))) (= (hash!3127 hashF!1107 (_1!29059 (tuple2!51531 key!3287 (_2!29059 (get!16821 lt!1747026))))) (_1!29060 (h!56894 (toList!4556 lm!1477)))))))

(declare-fun m!5395227 () Bool)

(assert (=> bs!975381 m!5395227))

(assert (=> d!1435523 d!1435573))

(declare-fun b_lambda!166427 () Bool)

(assert (= b_lambda!166395 (or start!456328 b_lambda!166427)))

(declare-fun bs!975382 () Bool)

(declare-fun d!1435575 () Bool)

(assert (= bs!975382 (and d!1435575 start!456328)))

(assert (=> bs!975382 (= (dynLambda!21337 lambda!183399 (h!56894 (toList!4556 lm!1477))) (noDuplicateKeys!1274 (_2!29060 (h!56894 (toList!4556 lm!1477)))))))

(declare-fun m!5395229 () Bool)

(assert (=> bs!975382 m!5395229))

(assert (=> b!4582146 d!1435575))

(declare-fun b_lambda!166429 () Bool)

(assert (= b_lambda!166397 (or start!456328 b_lambda!166429)))

(assert (=> d!1435397 d!1435575))

(declare-fun b_lambda!166431 () Bool)

(assert (= b_lambda!166423 (or start!456328 b_lambda!166431)))

(declare-fun bs!975383 () Bool)

(declare-fun d!1435577 () Bool)

(assert (= bs!975383 (and d!1435577 start!456328)))

(assert (=> bs!975383 (= (dynLambda!21337 lambda!183399 lt!1746998) (noDuplicateKeys!1274 (_2!29060 lt!1746998)))))

(declare-fun m!5395231 () Bool)

(assert (=> bs!975383 m!5395231))

(assert (=> d!1435553 d!1435577))

(declare-fun b_lambda!166433 () Bool)

(assert (= b_lambda!166409 (or b!4582126 b_lambda!166433)))

(declare-fun bs!975384 () Bool)

(declare-fun d!1435579 () Bool)

(assert (= bs!975384 (and d!1435579 b!4582126)))

(assert (=> bs!975384 (= (dynLambda!21337 lambda!183400 (h!56894 (toList!4556 lm!1477))) (allKeysSameHash!1128 (_2!29060 (h!56894 (toList!4556 lm!1477))) (_1!29060 (h!56894 (toList!4556 lm!1477))) hashF!1107))))

(declare-fun m!5395233 () Bool)

(assert (=> bs!975384 m!5395233))

(assert (=> d!1435521 d!1435579))

(check-sat (not d!1435389) (not d!1435551) (not d!1435557) (not b!4582225) (not b!4582561) (not d!1435463) (not d!1435571) (not d!1435445) (not d!1435429) (not d!1435379) (not b!4582436) (not d!1435431) (not d!1435473) (not d!1435559) (not bs!975381) (not d!1435569) (not b!4582429) (not d!1435553) (not d!1435547) (not b!4582428) (not b!4582505) (not bm!319925) (not b!4582411) (not b!4582257) (not b!4582363) (not bm!319926) (not b!4582410) (not b!4582473) (not b!4582285) (not b!4582256) (not b!4582147) (not d!1435317) (not d!1435563) (not b!4582377) (not b!4582155) (not b!4582432) (not d!1435469) (not d!1435501) (not b!4582439) (not d!1435495) (not bm!319923) (not d!1435517) (not d!1435323) (not bm!319914) (not b!4582156) (not b!4582140) (not b!4582401) (not b!4582276) (not d!1435321) (not bm!319922) (not b!4582533) (not d!1435331) (not b_lambda!166427) (not d!1435377) (not b!4582384) (not d!1435365) (not d!1435561) (not b!4582359) (not d!1435497) (not d!1435383) (not b!4582222) (not d!1435319) (not b!4582267) (not d!1435461) (not d!1435555) (not b!4582413) (not b!4582266) (not d!1435523) (not b!4582399) (not d!1435521) (not b!4582383) (not d!1435385) (not b!4582141) (not b!4582221) (not bm!319931) (not b!4582150) (not d!1435367) (not d!1435327) tp_is_empty!28373 (not d!1435369) (not d!1435405) (not d!1435455) (not d!1435381) (not bm!319932) (not d!1435437) (not d!1435363) (not b!4582510) (not d!1435325) (not b!4582555) (not b!4582431) (not d!1435549) (not b!4582559) (not b_lambda!166431) (not b!4582360) (not b!4582382) (not b!4582434) (not b!4582551) (not b!4582512) (not b!4582470) (not b!4582534) (not b!4582270) (not d!1435537) (not d!1435503) (not b!4582531) (not b!4582571) (not d!1435357) (not bs!975384) (not b!4582468) tp_is_empty!28375 (not bm!319913) (not b!4582158) (not b_lambda!166429) (not b!4582566) (not d!1435467) (not bm!319915) (not b!4582254) (not bs!975382) (not d!1435413) (not b!4582252) (not b!4582469) (not b!4582435) (not bm!319930) (not d!1435565) (not b!4582269) (not b!4582443) (not b!4582513) (not b!4582364) (not bm!319924) (not bs!975383) (not b!4582357) (not b!4582157) (not b!4582447) (not b!4582408) (not b_lambda!166425) (not b!4582279) (not b!4582379) (not b_lambda!166433) (not b!4582388) (not b!4582511) (not d!1435489) (not bm!319921) (not b!4582365) (not b!4582444) (not b!4582506) (not b!4582362) (not d!1435397) (not d!1435499) (not d!1435439) (not b!4582540) (not b!4582380) (not b!4582275) (not b!4582356) (not b!4582518) (not d!1435329) (not b!4582376))
(check-sat)
