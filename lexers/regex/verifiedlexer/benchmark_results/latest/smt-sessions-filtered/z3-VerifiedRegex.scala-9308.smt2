; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!494390 () Bool)

(assert start!494390)

(declare-fun bs!1156217 () Bool)

(declare-fun b!4796040 () Bool)

(assert (= bs!1156217 (and b!4796040 start!494390)))

(declare-fun lambda!231368 () Int)

(declare-fun lambda!231367 () Int)

(assert (=> bs!1156217 (not (= lambda!231368 lambda!231367))))

(assert (=> b!4796040 true))

(assert (=> b!4796040 true))

(assert (=> b!4796040 true))

(declare-fun b!4796035 () Bool)

(declare-fun e!2994774 () Bool)

(declare-fun e!2994776 () Bool)

(assert (=> b!4796035 (= e!2994774 (not e!2994776))))

(declare-fun res!2039088 () Bool)

(assert (=> b!4796035 (=> res!2039088 e!2994776)))

(declare-datatypes ((K!15829 0))(
  ( (K!15830 (val!20969 Int)) )
))
(declare-datatypes ((V!16075 0))(
  ( (V!16076 (val!20970 Int)) )
))
(declare-datatypes ((tuple2!56912 0))(
  ( (tuple2!56913 (_1!31750 K!15829) (_2!31750 V!16075)) )
))
(declare-datatypes ((List!54380 0))(
  ( (Nil!54256) (Cons!54256 (h!60688 tuple2!56912) (t!361830 List!54380)) )
))
(declare-datatypes ((tuple2!56914 0))(
  ( (tuple2!56915 (_1!31751 (_ BitVec 64)) (_2!31751 List!54380)) )
))
(declare-datatypes ((List!54381 0))(
  ( (Nil!54257) (Cons!54257 (h!60689 tuple2!56914) (t!361831 List!54381)) )
))
(declare-datatypes ((ListLongMap!5373 0))(
  ( (ListLongMap!5374 (toList!6951 List!54381)) )
))
(declare-fun lm!2473 () ListLongMap!5373)

(declare-fun value!3111 () V!16075)

(declare-fun key!5896 () K!15829)

(declare-fun getValue!124 (List!54381 K!15829) V!16075)

(assert (=> b!4796035 (= res!2039088 (not (= (getValue!124 (toList!6951 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!578 (List!54381 K!15829) Bool)

(assert (=> b!4796035 (containsKeyBiggerList!578 (toList!6951 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6936 0))(
  ( (HashableExt!6935 (__x!32959 Int)) )
))
(declare-fun hashF!1559 () Hashable!6936)

(declare-datatypes ((Unit!140270 0))(
  ( (Unit!140271) )
))
(declare-fun lt!1953526 () Unit!140270)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!318 (ListLongMap!5373 K!15829 Hashable!6936) Unit!140270)

(assert (=> b!4796035 (= lt!1953526 (lemmaInLongMapThenContainsKeyBiggerList!318 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2994772 () Bool)

(assert (=> b!4796035 e!2994772))

(declare-fun res!2039085 () Bool)

(assert (=> b!4796035 (=> (not res!2039085) (not e!2994772))))

(declare-fun lt!1953532 () (_ BitVec 64))

(declare-fun contains!17892 (ListLongMap!5373 (_ BitVec 64)) Bool)

(assert (=> b!4796035 (= res!2039085 (contains!17892 lm!2473 lt!1953532))))

(declare-fun hash!4979 (Hashable!6936 K!15829) (_ BitVec 64))

(assert (=> b!4796035 (= lt!1953532 (hash!4979 hashF!1559 key!5896))))

(declare-fun lt!1953537 () Unit!140270)

(declare-fun lemmaInGenericMapThenInLongMap!340 (ListLongMap!5373 K!15829 Hashable!6936) Unit!140270)

(assert (=> b!4796035 (= lt!1953537 (lemmaInGenericMapThenInLongMap!340 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4796037 () Bool)

(declare-fun e!2994768 () Bool)

(declare-fun lt!1953536 () Bool)

(assert (=> b!4796037 (= e!2994768 lt!1953536)))

(declare-fun b!4796038 () Bool)

(declare-fun e!2994773 () Bool)

(assert (=> b!4796038 (= e!2994773 e!2994768)))

(declare-fun res!2039091 () Bool)

(assert (=> b!4796038 (=> res!2039091 e!2994768)))

(declare-fun lt!1953531 () tuple2!56912)

(declare-fun contains!17893 (List!54380 tuple2!56912) Bool)

(assert (=> b!4796038 (= res!2039091 (not (contains!17893 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953531)))))

(declare-fun b!4796039 () Bool)

(declare-fun res!2039093 () Bool)

(assert (=> b!4796039 (=> res!2039093 e!2994776)))

(get-info :version)

(assert (=> b!4796039 (= res!2039093 (not ((_ is Cons!54257) (toList!6951 lm!2473))))))

(declare-fun e!2994771 () Bool)

(assert (=> b!4796040 (= e!2994776 e!2994771)))

(declare-fun res!2039087 () Bool)

(assert (=> b!4796040 (=> res!2039087 e!2994771)))

(declare-fun noDuplicateKeys!2349 (List!54380) Bool)

(assert (=> b!4796040 (= res!2039087 (not (noDuplicateKeys!2349 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(declare-datatypes ((ListMap!6423 0))(
  ( (ListMap!6424 (toList!6952 List!54380)) )
))
(declare-fun lt!1953525 () ListMap!6423)

(declare-fun extractMap!2463 (List!54381) ListMap!6423)

(assert (=> b!4796040 (= lt!1953525 (extractMap!2463 (t!361831 (toList!6951 lm!2473))))))

(declare-fun lt!1953534 () ListLongMap!5373)

(declare-fun contains!17894 (ListMap!6423 K!15829) Bool)

(assert (=> b!4796040 (not (contains!17894 (extractMap!2463 (toList!6951 lt!1953534)) key!5896))))

(declare-fun lt!1953529 () Unit!140270)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!42 (ListLongMap!5373 K!15829 Hashable!6936) Unit!140270)

(assert (=> b!4796040 (= lt!1953529 (lemmaHashNotInLongMapThenNotInGenerated!42 lt!1953534 key!5896 hashF!1559))))

(declare-fun tail!9289 (ListLongMap!5373) ListLongMap!5373)

(assert (=> b!4796040 (= lt!1953534 (tail!9289 lm!2473))))

(declare-fun lt!1953524 () Unit!140270)

(declare-fun lambda!231369 () Int)

(declare-fun forallContained!4188 (List!54380 Int tuple2!56912) Unit!140270)

(assert (=> b!4796040 (= lt!1953524 (forallContained!4188 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231369 lt!1953531))))

(assert (=> b!4796040 (= lt!1953531 (tuple2!56913 key!5896 value!3111))))

(declare-fun lt!1953533 () Unit!140270)

(declare-fun forallContained!4189 (List!54381 Int tuple2!56914) Unit!140270)

(assert (=> b!4796040 (= lt!1953533 (forallContained!4189 (toList!6951 lm!2473) lambda!231368 (h!60689 (toList!6951 lm!2473))))))

(declare-fun b!4796041 () Bool)

(declare-fun e!2994770 () Bool)

(declare-fun e!2994769 () Bool)

(assert (=> b!4796041 (= e!2994770 e!2994769)))

(declare-fun res!2039089 () Bool)

(assert (=> b!4796041 (=> res!2039089 e!2994769)))

(assert (=> b!4796041 (= res!2039089 e!2994773)))

(declare-fun res!2039086 () Bool)

(assert (=> b!4796041 (=> (not res!2039086) (not e!2994773))))

(declare-fun e!2994767 () Bool)

(assert (=> b!4796041 (= res!2039086 e!2994767)))

(declare-fun res!2039090 () Bool)

(assert (=> b!4796041 (=> res!2039090 e!2994767)))

(assert (=> b!4796041 (= res!2039090 (not lt!1953536))))

(assert (=> b!4796041 (= lt!1953536 (contains!17894 lt!1953525 key!5896))))

(declare-fun b!4796042 () Bool)

(assert (=> b!4796042 (= e!2994767 true)))

(declare-fun lt!1953535 () V!16075)

(declare-fun apply!13008 (ListMap!6423 K!15829) V!16075)

(assert (=> b!4796042 (= lt!1953535 (apply!13008 lt!1953525 key!5896))))

(declare-fun b!4796043 () Bool)

(declare-fun res!2039094 () Bool)

(declare-fun e!2994775 () Bool)

(assert (=> b!4796043 (=> (not res!2039094) (not e!2994775))))

(declare-fun allKeysSameHashInMap!2341 (ListLongMap!5373 Hashable!6936) Bool)

(assert (=> b!4796043 (= res!2039094 (allKeysSameHashInMap!2341 lm!2473 hashF!1559))))

(declare-fun b!4796044 () Bool)

(assert (=> b!4796044 (= e!2994771 e!2994770)))

(declare-fun res!2039084 () Bool)

(assert (=> b!4796044 (=> res!2039084 e!2994770)))

(declare-fun lt!1953527 () ListMap!6423)

(assert (=> b!4796044 (= res!2039084 (not (contains!17894 lt!1953527 key!5896)))))

(declare-fun addToMapMapFromBucket!1717 (List!54380 ListMap!6423) ListMap!6423)

(assert (=> b!4796044 (= lt!1953527 (addToMapMapFromBucket!1717 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953525))))

(declare-fun res!2039083 () Bool)

(assert (=> start!494390 (=> (not res!2039083) (not e!2994775))))

(declare-fun forall!12281 (List!54381 Int) Bool)

(assert (=> start!494390 (= res!2039083 (forall!12281 (toList!6951 lm!2473) lambda!231367))))

(assert (=> start!494390 e!2994775))

(declare-fun e!2994766 () Bool)

(declare-fun inv!69855 (ListLongMap!5373) Bool)

(assert (=> start!494390 (and (inv!69855 lm!2473) e!2994766)))

(assert (=> start!494390 true))

(declare-fun tp_is_empty!33605 () Bool)

(assert (=> start!494390 tp_is_empty!33605))

(declare-fun tp_is_empty!33607 () Bool)

(assert (=> start!494390 tp_is_empty!33607))

(declare-fun b!4796036 () Bool)

(declare-datatypes ((Option!13128 0))(
  ( (None!13127) (Some!13127 (v!48430 tuple2!56912)) )
))
(declare-fun isDefined!10269 (Option!13128) Bool)

(declare-fun getPair!908 (List!54380 K!15829) Option!13128)

(declare-fun apply!13009 (ListLongMap!5373 (_ BitVec 64)) List!54380)

(assert (=> b!4796036 (= e!2994772 (isDefined!10269 (getPair!908 (apply!13009 lm!2473 lt!1953532) key!5896)))))

(declare-fun b!4796045 () Bool)

(assert (=> b!4796045 (= e!2994775 e!2994774)))

(declare-fun res!2039092 () Bool)

(assert (=> b!4796045 (=> (not res!2039092) (not e!2994774))))

(declare-fun lt!1953528 () ListMap!6423)

(assert (=> b!4796045 (= res!2039092 (contains!17894 lt!1953528 key!5896))))

(assert (=> b!4796045 (= lt!1953528 (extractMap!2463 (toList!6951 lm!2473)))))

(declare-fun b!4796046 () Bool)

(declare-fun res!2039082 () Bool)

(assert (=> b!4796046 (=> res!2039082 e!2994776)))

(declare-fun containsKey!3978 (List!54380 K!15829) Bool)

(assert (=> b!4796046 (= res!2039082 (not (containsKey!3978 (_2!31751 (h!60689 (toList!6951 lm!2473))) key!5896)))))

(declare-fun b!4796047 () Bool)

(assert (=> b!4796047 (= e!2994769 (= (apply!13008 lt!1953528 key!5896) value!3111))))

(assert (=> b!4796047 (= (apply!13008 lt!1953527 key!5896) value!3111)))

(declare-fun lt!1953530 () Unit!140270)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!10 (List!54380 ListMap!6423 K!15829 V!16075) Unit!140270)

(assert (=> b!4796047 (= lt!1953530 (lemmaAddToMapFromBucketMaintainsMapping!10 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953525 key!5896 value!3111))))

(declare-fun b!4796048 () Bool)

(declare-fun tp!1358162 () Bool)

(assert (=> b!4796048 (= e!2994766 tp!1358162)))

(assert (= (and start!494390 res!2039083) b!4796043))

(assert (= (and b!4796043 res!2039094) b!4796045))

(assert (= (and b!4796045 res!2039092) b!4796035))

(assert (= (and b!4796035 res!2039085) b!4796036))

(assert (= (and b!4796035 (not res!2039088)) b!4796039))

(assert (= (and b!4796039 (not res!2039093)) b!4796046))

(assert (= (and b!4796046 (not res!2039082)) b!4796040))

(assert (= (and b!4796040 (not res!2039087)) b!4796044))

(assert (= (and b!4796044 (not res!2039084)) b!4796041))

(assert (= (and b!4796041 (not res!2039090)) b!4796042))

(assert (= (and b!4796041 res!2039086) b!4796038))

(assert (= (and b!4796038 (not res!2039091)) b!4796037))

(assert (= (and b!4796041 (not res!2039089)) b!4796047))

(assert (= start!494390 b!4796048))

(declare-fun m!5778204 () Bool)

(assert (=> b!4796043 m!5778204))

(declare-fun m!5778206 () Bool)

(assert (=> b!4796044 m!5778206))

(declare-fun m!5778208 () Bool)

(assert (=> b!4796044 m!5778208))

(declare-fun m!5778210 () Bool)

(assert (=> b!4796045 m!5778210))

(declare-fun m!5778212 () Bool)

(assert (=> b!4796045 m!5778212))

(declare-fun m!5778214 () Bool)

(assert (=> b!4796040 m!5778214))

(declare-fun m!5778216 () Bool)

(assert (=> b!4796040 m!5778216))

(declare-fun m!5778218 () Bool)

(assert (=> b!4796040 m!5778218))

(assert (=> b!4796040 m!5778214))

(declare-fun m!5778220 () Bool)

(assert (=> b!4796040 m!5778220))

(declare-fun m!5778222 () Bool)

(assert (=> b!4796040 m!5778222))

(declare-fun m!5778224 () Bool)

(assert (=> b!4796040 m!5778224))

(declare-fun m!5778226 () Bool)

(assert (=> b!4796040 m!5778226))

(declare-fun m!5778228 () Bool)

(assert (=> b!4796040 m!5778228))

(declare-fun m!5778230 () Bool)

(assert (=> b!4796042 m!5778230))

(declare-fun m!5778232 () Bool)

(assert (=> start!494390 m!5778232))

(declare-fun m!5778234 () Bool)

(assert (=> start!494390 m!5778234))

(declare-fun m!5778236 () Bool)

(assert (=> b!4796035 m!5778236))

(declare-fun m!5778238 () Bool)

(assert (=> b!4796035 m!5778238))

(declare-fun m!5778240 () Bool)

(assert (=> b!4796035 m!5778240))

(declare-fun m!5778242 () Bool)

(assert (=> b!4796035 m!5778242))

(declare-fun m!5778244 () Bool)

(assert (=> b!4796035 m!5778244))

(declare-fun m!5778246 () Bool)

(assert (=> b!4796035 m!5778246))

(declare-fun m!5778248 () Bool)

(assert (=> b!4796038 m!5778248))

(declare-fun m!5778250 () Bool)

(assert (=> b!4796047 m!5778250))

(declare-fun m!5778252 () Bool)

(assert (=> b!4796047 m!5778252))

(declare-fun m!5778254 () Bool)

(assert (=> b!4796047 m!5778254))

(declare-fun m!5778256 () Bool)

(assert (=> b!4796036 m!5778256))

(assert (=> b!4796036 m!5778256))

(declare-fun m!5778258 () Bool)

(assert (=> b!4796036 m!5778258))

(assert (=> b!4796036 m!5778258))

(declare-fun m!5778260 () Bool)

(assert (=> b!4796036 m!5778260))

(declare-fun m!5778262 () Bool)

(assert (=> b!4796046 m!5778262))

(declare-fun m!5778264 () Bool)

(assert (=> b!4796041 m!5778264))

(check-sat (not b!4796041) (not b!4796044) (not b!4796045) (not b!4796043) (not b!4796036) tp_is_empty!33607 (not b!4796042) (not b!4796040) (not b!4796046) (not b!4796038) (not b!4796048) (not start!494390) tp_is_empty!33605 (not b!4796035) (not b!4796047))
(check-sat)
(get-model)

(declare-fun bs!1156219 () Bool)

(declare-fun d!1534953 () Bool)

(assert (= bs!1156219 (and d!1534953 start!494390)))

(declare-fun lambda!231372 () Int)

(assert (=> bs!1156219 (= lambda!231372 lambda!231367)))

(declare-fun bs!1156220 () Bool)

(assert (= bs!1156220 (and d!1534953 b!4796040)))

(assert (=> bs!1156220 (not (= lambda!231372 lambda!231368))))

(assert (=> d!1534953 (not (contains!17894 (extractMap!2463 (toList!6951 lt!1953534)) key!5896))))

(declare-fun lt!1953564 () Unit!140270)

(declare-fun choose!34595 (ListLongMap!5373 K!15829 Hashable!6936) Unit!140270)

(assert (=> d!1534953 (= lt!1953564 (choose!34595 lt!1953534 key!5896 hashF!1559))))

(assert (=> d!1534953 (forall!12281 (toList!6951 lt!1953534) lambda!231372)))

(assert (=> d!1534953 (= (lemmaHashNotInLongMapThenNotInGenerated!42 lt!1953534 key!5896 hashF!1559) lt!1953564)))

(declare-fun bs!1156221 () Bool)

(assert (= bs!1156221 d!1534953))

(assert (=> bs!1156221 m!5778214))

(assert (=> bs!1156221 m!5778214))

(assert (=> bs!1156221 m!5778216))

(declare-fun m!5778290 () Bool)

(assert (=> bs!1156221 m!5778290))

(declare-fun m!5778292 () Bool)

(assert (=> bs!1156221 m!5778292))

(assert (=> b!4796040 d!1534953))

(declare-fun b!4796100 () Bool)

(declare-fun e!2994808 () Bool)

(declare-fun e!2994812 () Bool)

(assert (=> b!4796100 (= e!2994808 e!2994812)))

(declare-fun res!2039111 () Bool)

(assert (=> b!4796100 (=> (not res!2039111) (not e!2994812))))

(declare-datatypes ((Option!13131 0))(
  ( (None!13130) (Some!13130 (v!48435 V!16075)) )
))
(declare-fun isDefined!10272 (Option!13131) Bool)

(declare-fun getValueByKey!2370 (List!54380 K!15829) Option!13131)

(assert (=> b!4796100 (= res!2039111 (isDefined!10272 (getValueByKey!2370 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896)))))

(declare-fun b!4796101 () Bool)

(declare-fun e!2994807 () Unit!140270)

(declare-fun Unit!140288 () Unit!140270)

(assert (=> b!4796101 (= e!2994807 Unit!140288)))

(declare-fun b!4796102 () Bool)

(declare-fun e!2994809 () Unit!140270)

(declare-fun lt!1953583 () Unit!140270)

(assert (=> b!4796102 (= e!2994809 lt!1953583)))

(declare-fun lt!1953582 () Unit!140270)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2161 (List!54380 K!15829) Unit!140270)

(assert (=> b!4796102 (= lt!1953582 (lemmaContainsKeyImpliesGetValueByKeyDefined!2161 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896))))

(assert (=> b!4796102 (isDefined!10272 (getValueByKey!2370 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896))))

(declare-fun lt!1953585 () Unit!140270)

(assert (=> b!4796102 (= lt!1953585 lt!1953582)))

(declare-fun lemmaInListThenGetKeysListContains!1081 (List!54380 K!15829) Unit!140270)

(assert (=> b!4796102 (= lt!1953583 (lemmaInListThenGetKeysListContains!1081 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896))))

(declare-fun call!335188 () Bool)

(assert (=> b!4796102 call!335188))

(declare-fun b!4796103 () Bool)

(declare-datatypes ((List!54383 0))(
  ( (Nil!54259) (Cons!54259 (h!60691 K!15829) (t!361833 List!54383)) )
))
(declare-fun e!2994811 () List!54383)

(declare-fun getKeysList!1086 (List!54380) List!54383)

(assert (=> b!4796103 (= e!2994811 (getKeysList!1086 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534)))))))

(declare-fun b!4796104 () Bool)

(assert (=> b!4796104 (= e!2994809 e!2994807)))

(declare-fun c!817431 () Bool)

(assert (=> b!4796104 (= c!817431 call!335188)))

(declare-fun d!1534955 () Bool)

(assert (=> d!1534955 e!2994808))

(declare-fun res!2039112 () Bool)

(assert (=> d!1534955 (=> res!2039112 e!2994808)))

(declare-fun e!2994810 () Bool)

(assert (=> d!1534955 (= res!2039112 e!2994810)))

(declare-fun res!2039110 () Bool)

(assert (=> d!1534955 (=> (not res!2039110) (not e!2994810))))

(declare-fun lt!1953586 () Bool)

(assert (=> d!1534955 (= res!2039110 (not lt!1953586))))

(declare-fun lt!1953587 () Bool)

(assert (=> d!1534955 (= lt!1953586 lt!1953587)))

(declare-fun lt!1953584 () Unit!140270)

(assert (=> d!1534955 (= lt!1953584 e!2994809)))

(declare-fun c!817432 () Bool)

(assert (=> d!1534955 (= c!817432 lt!1953587)))

(declare-fun containsKey!3981 (List!54380 K!15829) Bool)

(assert (=> d!1534955 (= lt!1953587 (containsKey!3981 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896))))

(assert (=> d!1534955 (= (contains!17894 (extractMap!2463 (toList!6951 lt!1953534)) key!5896) lt!1953586)))

(declare-fun bm!335183 () Bool)

(declare-fun contains!17896 (List!54383 K!15829) Bool)

(assert (=> bm!335183 (= call!335188 (contains!17896 e!2994811 key!5896))))

(declare-fun c!817433 () Bool)

(assert (=> bm!335183 (= c!817433 c!817432)))

(declare-fun b!4796105 () Bool)

(assert (=> b!4796105 false))

(declare-fun lt!1953581 () Unit!140270)

(declare-fun lt!1953588 () Unit!140270)

(assert (=> b!4796105 (= lt!1953581 lt!1953588)))

(assert (=> b!4796105 (containsKey!3981 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1086 (List!54380 K!15829) Unit!140270)

(assert (=> b!4796105 (= lt!1953588 (lemmaInGetKeysListThenContainsKey!1086 (toList!6952 (extractMap!2463 (toList!6951 lt!1953534))) key!5896))))

(declare-fun Unit!140289 () Unit!140270)

(assert (=> b!4796105 (= e!2994807 Unit!140289)))

(declare-fun b!4796106 () Bool)

(declare-fun keys!19821 (ListMap!6423) List!54383)

(assert (=> b!4796106 (= e!2994811 (keys!19821 (extractMap!2463 (toList!6951 lt!1953534))))))

(declare-fun b!4796107 () Bool)

(assert (=> b!4796107 (= e!2994810 (not (contains!17896 (keys!19821 (extractMap!2463 (toList!6951 lt!1953534))) key!5896)))))

(declare-fun b!4796108 () Bool)

(assert (=> b!4796108 (= e!2994812 (contains!17896 (keys!19821 (extractMap!2463 (toList!6951 lt!1953534))) key!5896))))

(assert (= (and d!1534955 c!817432) b!4796102))

(assert (= (and d!1534955 (not c!817432)) b!4796104))

(assert (= (and b!4796104 c!817431) b!4796105))

(assert (= (and b!4796104 (not c!817431)) b!4796101))

(assert (= (or b!4796102 b!4796104) bm!335183))

(assert (= (and bm!335183 c!817433) b!4796103))

(assert (= (and bm!335183 (not c!817433)) b!4796106))

(assert (= (and d!1534955 res!2039110) b!4796107))

(assert (= (and d!1534955 (not res!2039112)) b!4796100))

(assert (= (and b!4796100 res!2039111) b!4796108))

(declare-fun m!5778294 () Bool)

(assert (=> b!4796100 m!5778294))

(assert (=> b!4796100 m!5778294))

(declare-fun m!5778296 () Bool)

(assert (=> b!4796100 m!5778296))

(declare-fun m!5778298 () Bool)

(assert (=> b!4796105 m!5778298))

(declare-fun m!5778300 () Bool)

(assert (=> b!4796105 m!5778300))

(assert (=> b!4796108 m!5778214))

(declare-fun m!5778302 () Bool)

(assert (=> b!4796108 m!5778302))

(assert (=> b!4796108 m!5778302))

(declare-fun m!5778304 () Bool)

(assert (=> b!4796108 m!5778304))

(declare-fun m!5778306 () Bool)

(assert (=> b!4796103 m!5778306))

(assert (=> b!4796107 m!5778214))

(assert (=> b!4796107 m!5778302))

(assert (=> b!4796107 m!5778302))

(assert (=> b!4796107 m!5778304))

(assert (=> b!4796106 m!5778214))

(assert (=> b!4796106 m!5778302))

(assert (=> d!1534955 m!5778298))

(declare-fun m!5778308 () Bool)

(assert (=> b!4796102 m!5778308))

(assert (=> b!4796102 m!5778294))

(assert (=> b!4796102 m!5778294))

(assert (=> b!4796102 m!5778296))

(declare-fun m!5778310 () Bool)

(assert (=> b!4796102 m!5778310))

(declare-fun m!5778312 () Bool)

(assert (=> bm!335183 m!5778312))

(assert (=> b!4796040 d!1534955))

(declare-fun bs!1156228 () Bool)

(declare-fun d!1534957 () Bool)

(assert (= bs!1156228 (and d!1534957 start!494390)))

(declare-fun lambda!231407 () Int)

(assert (=> bs!1156228 (= lambda!231407 lambda!231367)))

(declare-fun bs!1156229 () Bool)

(assert (= bs!1156229 (and d!1534957 b!4796040)))

(assert (=> bs!1156229 (not (= lambda!231407 lambda!231368))))

(declare-fun bs!1156230 () Bool)

(assert (= bs!1156230 (and d!1534957 d!1534953)))

(assert (=> bs!1156230 (= lambda!231407 lambda!231372)))

(declare-fun lt!1953662 () ListMap!6423)

(declare-fun invariantList!1740 (List!54380) Bool)

(assert (=> d!1534957 (invariantList!1740 (toList!6952 lt!1953662))))

(declare-fun e!2994830 () ListMap!6423)

(assert (=> d!1534957 (= lt!1953662 e!2994830)))

(declare-fun c!817442 () Bool)

(assert (=> d!1534957 (= c!817442 ((_ is Cons!54257) (toList!6951 lt!1953534)))))

(assert (=> d!1534957 (forall!12281 (toList!6951 lt!1953534) lambda!231407)))

(assert (=> d!1534957 (= (extractMap!2463 (toList!6951 lt!1953534)) lt!1953662)))

(declare-fun b!4796139 () Bool)

(assert (=> b!4796139 (= e!2994830 (addToMapMapFromBucket!1717 (_2!31751 (h!60689 (toList!6951 lt!1953534))) (extractMap!2463 (t!361831 (toList!6951 lt!1953534)))))))

(declare-fun b!4796140 () Bool)

(assert (=> b!4796140 (= e!2994830 (ListMap!6424 Nil!54256))))

(assert (= (and d!1534957 c!817442) b!4796139))

(assert (= (and d!1534957 (not c!817442)) b!4796140))

(declare-fun m!5778366 () Bool)

(assert (=> d!1534957 m!5778366))

(declare-fun m!5778368 () Bool)

(assert (=> d!1534957 m!5778368))

(declare-fun m!5778370 () Bool)

(assert (=> b!4796139 m!5778370))

(assert (=> b!4796139 m!5778370))

(declare-fun m!5778372 () Bool)

(assert (=> b!4796139 m!5778372))

(assert (=> b!4796040 d!1534957))

(declare-fun d!1534963 () Bool)

(declare-fun res!2039129 () Bool)

(declare-fun e!2994835 () Bool)

(assert (=> d!1534963 (=> res!2039129 e!2994835)))

(assert (=> d!1534963 (= res!2039129 (not ((_ is Cons!54256) (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(assert (=> d!1534963 (= (noDuplicateKeys!2349 (_2!31751 (h!60689 (toList!6951 lm!2473)))) e!2994835)))

(declare-fun b!4796145 () Bool)

(declare-fun e!2994836 () Bool)

(assert (=> b!4796145 (= e!2994835 e!2994836)))

(declare-fun res!2039130 () Bool)

(assert (=> b!4796145 (=> (not res!2039130) (not e!2994836))))

(assert (=> b!4796145 (= res!2039130 (not (containsKey!3978 (t!361830 (_2!31751 (h!60689 (toList!6951 lm!2473)))) (_1!31750 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))))

(declare-fun b!4796146 () Bool)

(assert (=> b!4796146 (= e!2994836 (noDuplicateKeys!2349 (t!361830 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(assert (= (and d!1534963 (not res!2039129)) b!4796145))

(assert (= (and b!4796145 res!2039130) b!4796146))

(declare-fun m!5778374 () Bool)

(assert (=> b!4796145 m!5778374))

(declare-fun m!5778376 () Bool)

(assert (=> b!4796146 m!5778376))

(assert (=> b!4796040 d!1534963))

(declare-fun d!1534965 () Bool)

(declare-fun dynLambda!22079 (Int tuple2!56914) Bool)

(assert (=> d!1534965 (dynLambda!22079 lambda!231368 (h!60689 (toList!6951 lm!2473)))))

(declare-fun lt!1953667 () Unit!140270)

(declare-fun choose!34598 (List!54381 Int tuple2!56914) Unit!140270)

(assert (=> d!1534965 (= lt!1953667 (choose!34598 (toList!6951 lm!2473) lambda!231368 (h!60689 (toList!6951 lm!2473))))))

(declare-fun e!2994841 () Bool)

(assert (=> d!1534965 e!2994841))

(declare-fun res!2039133 () Bool)

(assert (=> d!1534965 (=> (not res!2039133) (not e!2994841))))

(assert (=> d!1534965 (= res!2039133 (forall!12281 (toList!6951 lm!2473) lambda!231368))))

(assert (=> d!1534965 (= (forallContained!4189 (toList!6951 lm!2473) lambda!231368 (h!60689 (toList!6951 lm!2473))) lt!1953667)))

(declare-fun b!4796153 () Bool)

(declare-fun contains!17898 (List!54381 tuple2!56914) Bool)

(assert (=> b!4796153 (= e!2994841 (contains!17898 (toList!6951 lm!2473) (h!60689 (toList!6951 lm!2473))))))

(assert (= (and d!1534965 res!2039133) b!4796153))

(declare-fun b_lambda!187163 () Bool)

(assert (=> (not b_lambda!187163) (not d!1534965)))

(declare-fun m!5778378 () Bool)

(assert (=> d!1534965 m!5778378))

(declare-fun m!5778380 () Bool)

(assert (=> d!1534965 m!5778380))

(declare-fun m!5778382 () Bool)

(assert (=> d!1534965 m!5778382))

(declare-fun m!5778384 () Bool)

(assert (=> b!4796153 m!5778384))

(assert (=> b!4796040 d!1534965))

(declare-fun d!1534967 () Bool)

(declare-fun tail!9291 (List!54381) List!54381)

(assert (=> d!1534967 (= (tail!9289 lm!2473) (ListLongMap!5374 (tail!9291 (toList!6951 lm!2473))))))

(declare-fun bs!1156235 () Bool)

(assert (= bs!1156235 d!1534967))

(declare-fun m!5778396 () Bool)

(assert (=> bs!1156235 m!5778396))

(assert (=> b!4796040 d!1534967))

(declare-fun bs!1156236 () Bool)

(declare-fun d!1534975 () Bool)

(assert (= bs!1156236 (and d!1534975 start!494390)))

(declare-fun lambda!231411 () Int)

(assert (=> bs!1156236 (= lambda!231411 lambda!231367)))

(declare-fun bs!1156237 () Bool)

(assert (= bs!1156237 (and d!1534975 b!4796040)))

(assert (=> bs!1156237 (not (= lambda!231411 lambda!231368))))

(declare-fun bs!1156238 () Bool)

(assert (= bs!1156238 (and d!1534975 d!1534953)))

(assert (=> bs!1156238 (= lambda!231411 lambda!231372)))

(declare-fun bs!1156239 () Bool)

(assert (= bs!1156239 (and d!1534975 d!1534957)))

(assert (=> bs!1156239 (= lambda!231411 lambda!231407)))

(declare-fun lt!1953669 () ListMap!6423)

(assert (=> d!1534975 (invariantList!1740 (toList!6952 lt!1953669))))

(declare-fun e!2994843 () ListMap!6423)

(assert (=> d!1534975 (= lt!1953669 e!2994843)))

(declare-fun c!817446 () Bool)

(assert (=> d!1534975 (= c!817446 ((_ is Cons!54257) (t!361831 (toList!6951 lm!2473))))))

(assert (=> d!1534975 (forall!12281 (t!361831 (toList!6951 lm!2473)) lambda!231411)))

(assert (=> d!1534975 (= (extractMap!2463 (t!361831 (toList!6951 lm!2473))) lt!1953669)))

(declare-fun b!4796156 () Bool)

(assert (=> b!4796156 (= e!2994843 (addToMapMapFromBucket!1717 (_2!31751 (h!60689 (t!361831 (toList!6951 lm!2473)))) (extractMap!2463 (t!361831 (t!361831 (toList!6951 lm!2473))))))))

(declare-fun b!4796157 () Bool)

(assert (=> b!4796157 (= e!2994843 (ListMap!6424 Nil!54256))))

(assert (= (and d!1534975 c!817446) b!4796156))

(assert (= (and d!1534975 (not c!817446)) b!4796157))

(declare-fun m!5778398 () Bool)

(assert (=> d!1534975 m!5778398))

(declare-fun m!5778400 () Bool)

(assert (=> d!1534975 m!5778400))

(declare-fun m!5778402 () Bool)

(assert (=> b!4796156 m!5778402))

(assert (=> b!4796156 m!5778402))

(declare-fun m!5778404 () Bool)

(assert (=> b!4796156 m!5778404))

(assert (=> b!4796040 d!1534975))

(declare-fun d!1534977 () Bool)

(declare-fun dynLambda!22080 (Int tuple2!56912) Bool)

(assert (=> d!1534977 (dynLambda!22080 lambda!231369 lt!1953531)))

(declare-fun lt!1953672 () Unit!140270)

(declare-fun choose!34599 (List!54380 Int tuple2!56912) Unit!140270)

(assert (=> d!1534977 (= lt!1953672 (choose!34599 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231369 lt!1953531))))

(declare-fun e!2994846 () Bool)

(assert (=> d!1534977 e!2994846))

(declare-fun res!2039136 () Bool)

(assert (=> d!1534977 (=> (not res!2039136) (not e!2994846))))

(declare-fun forall!12283 (List!54380 Int) Bool)

(assert (=> d!1534977 (= res!2039136 (forall!12283 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231369))))

(assert (=> d!1534977 (= (forallContained!4188 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231369 lt!1953531) lt!1953672)))

(declare-fun b!4796160 () Bool)

(assert (=> b!4796160 (= e!2994846 (contains!17893 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953531))))

(assert (= (and d!1534977 res!2039136) b!4796160))

(declare-fun b_lambda!187165 () Bool)

(assert (=> (not b_lambda!187165) (not d!1534977)))

(declare-fun m!5778406 () Bool)

(assert (=> d!1534977 m!5778406))

(declare-fun m!5778408 () Bool)

(assert (=> d!1534977 m!5778408))

(declare-fun m!5778410 () Bool)

(assert (=> d!1534977 m!5778410))

(assert (=> b!4796160 m!5778248))

(assert (=> b!4796040 d!1534977))

(declare-fun b!4796161 () Bool)

(declare-fun e!2994848 () Bool)

(declare-fun e!2994852 () Bool)

(assert (=> b!4796161 (= e!2994848 e!2994852)))

(declare-fun res!2039138 () Bool)

(assert (=> b!4796161 (=> (not res!2039138) (not e!2994852))))

(assert (=> b!4796161 (= res!2039138 (isDefined!10272 (getValueByKey!2370 (toList!6952 lt!1953525) key!5896)))))

(declare-fun b!4796162 () Bool)

(declare-fun e!2994847 () Unit!140270)

(declare-fun Unit!140292 () Unit!140270)

(assert (=> b!4796162 (= e!2994847 Unit!140292)))

(declare-fun b!4796163 () Bool)

(declare-fun e!2994849 () Unit!140270)

(declare-fun lt!1953677 () Unit!140270)

(assert (=> b!4796163 (= e!2994849 lt!1953677)))

(declare-fun lt!1953676 () Unit!140270)

(assert (=> b!4796163 (= lt!1953676 (lemmaContainsKeyImpliesGetValueByKeyDefined!2161 (toList!6952 lt!1953525) key!5896))))

(assert (=> b!4796163 (isDefined!10272 (getValueByKey!2370 (toList!6952 lt!1953525) key!5896))))

(declare-fun lt!1953679 () Unit!140270)

(assert (=> b!4796163 (= lt!1953679 lt!1953676)))

(assert (=> b!4796163 (= lt!1953677 (lemmaInListThenGetKeysListContains!1081 (toList!6952 lt!1953525) key!5896))))

(declare-fun call!335199 () Bool)

(assert (=> b!4796163 call!335199))

(declare-fun b!4796164 () Bool)

(declare-fun e!2994851 () List!54383)

(assert (=> b!4796164 (= e!2994851 (getKeysList!1086 (toList!6952 lt!1953525)))))

(declare-fun b!4796165 () Bool)

(assert (=> b!4796165 (= e!2994849 e!2994847)))

(declare-fun c!817447 () Bool)

(assert (=> b!4796165 (= c!817447 call!335199)))

(declare-fun d!1534979 () Bool)

(assert (=> d!1534979 e!2994848))

(declare-fun res!2039139 () Bool)

(assert (=> d!1534979 (=> res!2039139 e!2994848)))

(declare-fun e!2994850 () Bool)

(assert (=> d!1534979 (= res!2039139 e!2994850)))

(declare-fun res!2039137 () Bool)

(assert (=> d!1534979 (=> (not res!2039137) (not e!2994850))))

(declare-fun lt!1953680 () Bool)

(assert (=> d!1534979 (= res!2039137 (not lt!1953680))))

(declare-fun lt!1953681 () Bool)

(assert (=> d!1534979 (= lt!1953680 lt!1953681)))

(declare-fun lt!1953678 () Unit!140270)

(assert (=> d!1534979 (= lt!1953678 e!2994849)))

(declare-fun c!817448 () Bool)

(assert (=> d!1534979 (= c!817448 lt!1953681)))

(assert (=> d!1534979 (= lt!1953681 (containsKey!3981 (toList!6952 lt!1953525) key!5896))))

(assert (=> d!1534979 (= (contains!17894 lt!1953525 key!5896) lt!1953680)))

(declare-fun bm!335194 () Bool)

(assert (=> bm!335194 (= call!335199 (contains!17896 e!2994851 key!5896))))

(declare-fun c!817449 () Bool)

(assert (=> bm!335194 (= c!817449 c!817448)))

(declare-fun b!4796166 () Bool)

(assert (=> b!4796166 false))

(declare-fun lt!1953675 () Unit!140270)

(declare-fun lt!1953682 () Unit!140270)

(assert (=> b!4796166 (= lt!1953675 lt!1953682)))

(assert (=> b!4796166 (containsKey!3981 (toList!6952 lt!1953525) key!5896)))

(assert (=> b!4796166 (= lt!1953682 (lemmaInGetKeysListThenContainsKey!1086 (toList!6952 lt!1953525) key!5896))))

(declare-fun Unit!140293 () Unit!140270)

(assert (=> b!4796166 (= e!2994847 Unit!140293)))

(declare-fun b!4796167 () Bool)

(assert (=> b!4796167 (= e!2994851 (keys!19821 lt!1953525))))

(declare-fun b!4796168 () Bool)

(assert (=> b!4796168 (= e!2994850 (not (contains!17896 (keys!19821 lt!1953525) key!5896)))))

(declare-fun b!4796169 () Bool)

(assert (=> b!4796169 (= e!2994852 (contains!17896 (keys!19821 lt!1953525) key!5896))))

(assert (= (and d!1534979 c!817448) b!4796163))

(assert (= (and d!1534979 (not c!817448)) b!4796165))

(assert (= (and b!4796165 c!817447) b!4796166))

(assert (= (and b!4796165 (not c!817447)) b!4796162))

(assert (= (or b!4796163 b!4796165) bm!335194))

(assert (= (and bm!335194 c!817449) b!4796164))

(assert (= (and bm!335194 (not c!817449)) b!4796167))

(assert (= (and d!1534979 res!2039137) b!4796168))

(assert (= (and d!1534979 (not res!2039139)) b!4796161))

(assert (= (and b!4796161 res!2039138) b!4796169))

(declare-fun m!5778416 () Bool)

(assert (=> b!4796161 m!5778416))

(assert (=> b!4796161 m!5778416))

(declare-fun m!5778418 () Bool)

(assert (=> b!4796161 m!5778418))

(declare-fun m!5778420 () Bool)

(assert (=> b!4796166 m!5778420))

(declare-fun m!5778422 () Bool)

(assert (=> b!4796166 m!5778422))

(declare-fun m!5778424 () Bool)

(assert (=> b!4796169 m!5778424))

(assert (=> b!4796169 m!5778424))

(declare-fun m!5778426 () Bool)

(assert (=> b!4796169 m!5778426))

(declare-fun m!5778428 () Bool)

(assert (=> b!4796164 m!5778428))

(assert (=> b!4796168 m!5778424))

(assert (=> b!4796168 m!5778424))

(assert (=> b!4796168 m!5778426))

(assert (=> b!4796167 m!5778424))

(assert (=> d!1534979 m!5778420))

(declare-fun m!5778430 () Bool)

(assert (=> b!4796163 m!5778430))

(assert (=> b!4796163 m!5778416))

(assert (=> b!4796163 m!5778416))

(assert (=> b!4796163 m!5778418))

(declare-fun m!5778432 () Bool)

(assert (=> b!4796163 m!5778432))

(declare-fun m!5778434 () Bool)

(assert (=> bm!335194 m!5778434))

(assert (=> b!4796041 d!1534979))

(declare-fun d!1534983 () Bool)

(declare-fun get!18509 (Option!13131) V!16075)

(assert (=> d!1534983 (= (apply!13008 lt!1953525 key!5896) (get!18509 (getValueByKey!2370 (toList!6952 lt!1953525) key!5896)))))

(declare-fun bs!1156245 () Bool)

(assert (= bs!1156245 d!1534983))

(assert (=> bs!1156245 m!5778416))

(assert (=> bs!1156245 m!5778416))

(declare-fun m!5778438 () Bool)

(assert (=> bs!1156245 m!5778438))

(assert (=> b!4796042 d!1534983))

(declare-fun d!1534987 () Bool)

(declare-fun res!2039150 () Bool)

(declare-fun e!2994863 () Bool)

(assert (=> d!1534987 (=> res!2039150 e!2994863)))

(assert (=> d!1534987 (= res!2039150 ((_ is Nil!54257) (toList!6951 lm!2473)))))

(assert (=> d!1534987 (= (forall!12281 (toList!6951 lm!2473) lambda!231367) e!2994863)))

(declare-fun b!4796180 () Bool)

(declare-fun e!2994864 () Bool)

(assert (=> b!4796180 (= e!2994863 e!2994864)))

(declare-fun res!2039151 () Bool)

(assert (=> b!4796180 (=> (not res!2039151) (not e!2994864))))

(assert (=> b!4796180 (= res!2039151 (dynLambda!22079 lambda!231367 (h!60689 (toList!6951 lm!2473))))))

(declare-fun b!4796181 () Bool)

(assert (=> b!4796181 (= e!2994864 (forall!12281 (t!361831 (toList!6951 lm!2473)) lambda!231367))))

(assert (= (and d!1534987 (not res!2039150)) b!4796180))

(assert (= (and b!4796180 res!2039151) b!4796181))

(declare-fun b_lambda!187169 () Bool)

(assert (=> (not b_lambda!187169) (not b!4796180)))

(declare-fun m!5778446 () Bool)

(assert (=> b!4796180 m!5778446))

(declare-fun m!5778448 () Bool)

(assert (=> b!4796181 m!5778448))

(assert (=> start!494390 d!1534987))

(declare-fun d!1534993 () Bool)

(declare-fun isStrictlySorted!887 (List!54381) Bool)

(assert (=> d!1534993 (= (inv!69855 lm!2473) (isStrictlySorted!887 (toList!6951 lm!2473)))))

(declare-fun bs!1156247 () Bool)

(assert (= bs!1156247 d!1534993))

(declare-fun m!5778450 () Bool)

(assert (=> bs!1156247 m!5778450))

(assert (=> start!494390 d!1534993))

(declare-fun bs!1156248 () Bool)

(declare-fun d!1534995 () Bool)

(assert (= bs!1156248 (and d!1534995 b!4796040)))

(declare-fun lambda!231417 () Int)

(assert (=> bs!1156248 (= lambda!231417 lambda!231368)))

(declare-fun bs!1156249 () Bool)

(assert (= bs!1156249 (and d!1534995 d!1534953)))

(assert (=> bs!1156249 (not (= lambda!231417 lambda!231372))))

(declare-fun bs!1156250 () Bool)

(assert (= bs!1156250 (and d!1534995 d!1534957)))

(assert (=> bs!1156250 (not (= lambda!231417 lambda!231407))))

(declare-fun bs!1156251 () Bool)

(assert (= bs!1156251 (and d!1534995 d!1534975)))

(assert (=> bs!1156251 (not (= lambda!231417 lambda!231411))))

(declare-fun bs!1156252 () Bool)

(assert (= bs!1156252 (and d!1534995 start!494390)))

(assert (=> bs!1156252 (not (= lambda!231417 lambda!231367))))

(assert (=> d!1534995 true))

(assert (=> d!1534995 (= (allKeysSameHashInMap!2341 lm!2473 hashF!1559) (forall!12281 (toList!6951 lm!2473) lambda!231417))))

(declare-fun bs!1156253 () Bool)

(assert (= bs!1156253 d!1534995))

(declare-fun m!5778460 () Bool)

(assert (=> bs!1156253 m!5778460))

(assert (=> b!4796043 d!1534995))

(declare-fun b!4796200 () Bool)

(declare-fun e!2994881 () Bool)

(declare-fun e!2994885 () Bool)

(assert (=> b!4796200 (= e!2994881 e!2994885)))

(declare-fun res!2039165 () Bool)

(assert (=> b!4796200 (=> (not res!2039165) (not e!2994885))))

(assert (=> b!4796200 (= res!2039165 (isDefined!10272 (getValueByKey!2370 (toList!6952 lt!1953527) key!5896)))))

(declare-fun b!4796201 () Bool)

(declare-fun e!2994880 () Unit!140270)

(declare-fun Unit!140295 () Unit!140270)

(assert (=> b!4796201 (= e!2994880 Unit!140295)))

(declare-fun b!4796202 () Bool)

(declare-fun e!2994882 () Unit!140270)

(declare-fun lt!1953698 () Unit!140270)

(assert (=> b!4796202 (= e!2994882 lt!1953698)))

(declare-fun lt!1953697 () Unit!140270)

(assert (=> b!4796202 (= lt!1953697 (lemmaContainsKeyImpliesGetValueByKeyDefined!2161 (toList!6952 lt!1953527) key!5896))))

(assert (=> b!4796202 (isDefined!10272 (getValueByKey!2370 (toList!6952 lt!1953527) key!5896))))

(declare-fun lt!1953700 () Unit!140270)

(assert (=> b!4796202 (= lt!1953700 lt!1953697)))

(assert (=> b!4796202 (= lt!1953698 (lemmaInListThenGetKeysListContains!1081 (toList!6952 lt!1953527) key!5896))))

(declare-fun call!335200 () Bool)

(assert (=> b!4796202 call!335200))

(declare-fun b!4796203 () Bool)

(declare-fun e!2994884 () List!54383)

(assert (=> b!4796203 (= e!2994884 (getKeysList!1086 (toList!6952 lt!1953527)))))

(declare-fun b!4796204 () Bool)

(assert (=> b!4796204 (= e!2994882 e!2994880)))

(declare-fun c!817453 () Bool)

(assert (=> b!4796204 (= c!817453 call!335200)))

(declare-fun d!1534999 () Bool)

(assert (=> d!1534999 e!2994881))

(declare-fun res!2039166 () Bool)

(assert (=> d!1534999 (=> res!2039166 e!2994881)))

(declare-fun e!2994883 () Bool)

(assert (=> d!1534999 (= res!2039166 e!2994883)))

(declare-fun res!2039164 () Bool)

(assert (=> d!1534999 (=> (not res!2039164) (not e!2994883))))

(declare-fun lt!1953701 () Bool)

(assert (=> d!1534999 (= res!2039164 (not lt!1953701))))

(declare-fun lt!1953702 () Bool)

(assert (=> d!1534999 (= lt!1953701 lt!1953702)))

(declare-fun lt!1953699 () Unit!140270)

(assert (=> d!1534999 (= lt!1953699 e!2994882)))

(declare-fun c!817454 () Bool)

(assert (=> d!1534999 (= c!817454 lt!1953702)))

(assert (=> d!1534999 (= lt!1953702 (containsKey!3981 (toList!6952 lt!1953527) key!5896))))

(assert (=> d!1534999 (= (contains!17894 lt!1953527 key!5896) lt!1953701)))

(declare-fun bm!335195 () Bool)

(assert (=> bm!335195 (= call!335200 (contains!17896 e!2994884 key!5896))))

(declare-fun c!817455 () Bool)

(assert (=> bm!335195 (= c!817455 c!817454)))

(declare-fun b!4796205 () Bool)

(assert (=> b!4796205 false))

(declare-fun lt!1953696 () Unit!140270)

(declare-fun lt!1953703 () Unit!140270)

(assert (=> b!4796205 (= lt!1953696 lt!1953703)))

(assert (=> b!4796205 (containsKey!3981 (toList!6952 lt!1953527) key!5896)))

(assert (=> b!4796205 (= lt!1953703 (lemmaInGetKeysListThenContainsKey!1086 (toList!6952 lt!1953527) key!5896))))

(declare-fun Unit!140297 () Unit!140270)

(assert (=> b!4796205 (= e!2994880 Unit!140297)))

(declare-fun b!4796206 () Bool)

(assert (=> b!4796206 (= e!2994884 (keys!19821 lt!1953527))))

(declare-fun b!4796207 () Bool)

(assert (=> b!4796207 (= e!2994883 (not (contains!17896 (keys!19821 lt!1953527) key!5896)))))

(declare-fun b!4796208 () Bool)

(assert (=> b!4796208 (= e!2994885 (contains!17896 (keys!19821 lt!1953527) key!5896))))

(assert (= (and d!1534999 c!817454) b!4796202))

(assert (= (and d!1534999 (not c!817454)) b!4796204))

(assert (= (and b!4796204 c!817453) b!4796205))

(assert (= (and b!4796204 (not c!817453)) b!4796201))

(assert (= (or b!4796202 b!4796204) bm!335195))

(assert (= (and bm!335195 c!817455) b!4796203))

(assert (= (and bm!335195 (not c!817455)) b!4796206))

(assert (= (and d!1534999 res!2039164) b!4796207))

(assert (= (and d!1534999 (not res!2039166)) b!4796200))

(assert (= (and b!4796200 res!2039165) b!4796208))

(declare-fun m!5778464 () Bool)

(assert (=> b!4796200 m!5778464))

(assert (=> b!4796200 m!5778464))

(declare-fun m!5778466 () Bool)

(assert (=> b!4796200 m!5778466))

(declare-fun m!5778468 () Bool)

(assert (=> b!4796205 m!5778468))

(declare-fun m!5778470 () Bool)

(assert (=> b!4796205 m!5778470))

(declare-fun m!5778472 () Bool)

(assert (=> b!4796208 m!5778472))

(assert (=> b!4796208 m!5778472))

(declare-fun m!5778474 () Bool)

(assert (=> b!4796208 m!5778474))

(declare-fun m!5778476 () Bool)

(assert (=> b!4796203 m!5778476))

(assert (=> b!4796207 m!5778472))

(assert (=> b!4796207 m!5778472))

(assert (=> b!4796207 m!5778474))

(assert (=> b!4796206 m!5778472))

(assert (=> d!1534999 m!5778468))

(declare-fun m!5778478 () Bool)

(assert (=> b!4796202 m!5778478))

(assert (=> b!4796202 m!5778464))

(assert (=> b!4796202 m!5778464))

(assert (=> b!4796202 m!5778466))

(declare-fun m!5778480 () Bool)

(assert (=> b!4796202 m!5778480))

(declare-fun m!5778482 () Bool)

(assert (=> bm!335195 m!5778482))

(assert (=> b!4796044 d!1534999))

(declare-fun bs!1156293 () Bool)

(declare-fun b!4796306 () Bool)

(assert (= bs!1156293 (and b!4796306 b!4796040)))

(declare-fun lambda!231457 () Int)

(assert (=> bs!1156293 (not (= lambda!231457 lambda!231369))))

(assert (=> b!4796306 true))

(declare-fun bs!1156294 () Bool)

(declare-fun b!4796308 () Bool)

(assert (= bs!1156294 (and b!4796308 b!4796040)))

(declare-fun lambda!231458 () Int)

(assert (=> bs!1156294 (not (= lambda!231458 lambda!231369))))

(declare-fun bs!1156295 () Bool)

(assert (= bs!1156295 (and b!4796308 b!4796306)))

(assert (=> bs!1156295 (= lambda!231458 lambda!231457)))

(assert (=> b!4796308 true))

(declare-fun lambda!231459 () Int)

(assert (=> bs!1156294 (not (= lambda!231459 lambda!231369))))

(declare-fun lt!1953802 () ListMap!6423)

(assert (=> bs!1156295 (= (= lt!1953802 lt!1953525) (= lambda!231459 lambda!231457))))

(assert (=> b!4796308 (= (= lt!1953802 lt!1953525) (= lambda!231459 lambda!231458))))

(assert (=> b!4796308 true))

(declare-fun bs!1156296 () Bool)

(declare-fun d!1535003 () Bool)

(assert (= bs!1156296 (and d!1535003 b!4796040)))

(declare-fun lambda!231460 () Int)

(assert (=> bs!1156296 (not (= lambda!231460 lambda!231369))))

(declare-fun bs!1156297 () Bool)

(assert (= bs!1156297 (and d!1535003 b!4796306)))

(declare-fun lt!1953793 () ListMap!6423)

(assert (=> bs!1156297 (= (= lt!1953793 lt!1953525) (= lambda!231460 lambda!231457))))

(declare-fun bs!1156298 () Bool)

(assert (= bs!1156298 (and d!1535003 b!4796308)))

(assert (=> bs!1156298 (= (= lt!1953793 lt!1953525) (= lambda!231460 lambda!231458))))

(assert (=> bs!1156298 (= (= lt!1953793 lt!1953802) (= lambda!231460 lambda!231459))))

(assert (=> d!1535003 true))

(declare-fun e!2994957 () ListMap!6423)

(assert (=> b!4796306 (= e!2994957 lt!1953525)))

(declare-fun lt!1953787 () Unit!140270)

(declare-fun call!335209 () Unit!140270)

(assert (=> b!4796306 (= lt!1953787 call!335209)))

(declare-fun call!335210 () Bool)

(assert (=> b!4796306 call!335210))

(declare-fun lt!1953794 () Unit!140270)

(assert (=> b!4796306 (= lt!1953794 lt!1953787)))

(declare-fun call!335211 () Bool)

(assert (=> b!4796306 call!335211))

(declare-fun lt!1953801 () Unit!140270)

(declare-fun Unit!140298 () Unit!140270)

(assert (=> b!4796306 (= lt!1953801 Unit!140298)))

(declare-fun c!817475 () Bool)

(declare-fun bm!335204 () Bool)

(assert (=> bm!335204 (= call!335210 (forall!12283 (toList!6952 lt!1953525) (ite c!817475 lambda!231457 lambda!231459)))))

(declare-fun e!2994958 () Bool)

(assert (=> d!1535003 e!2994958))

(declare-fun res!2039222 () Bool)

(assert (=> d!1535003 (=> (not res!2039222) (not e!2994958))))

(assert (=> d!1535003 (= res!2039222 (forall!12283 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231460))))

(assert (=> d!1535003 (= lt!1953793 e!2994957)))

(assert (=> d!1535003 (= c!817475 ((_ is Nil!54256) (_2!31751 (h!60689 (toList!6951 lm!2473)))))))

(assert (=> d!1535003 (noDuplicateKeys!2349 (_2!31751 (h!60689 (toList!6951 lm!2473))))))

(assert (=> d!1535003 (= (addToMapMapFromBucket!1717 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953525) lt!1953793)))

(declare-fun b!4796307 () Bool)

(declare-fun res!2039221 () Bool)

(assert (=> b!4796307 (=> (not res!2039221) (not e!2994958))))

(assert (=> b!4796307 (= res!2039221 (forall!12283 (toList!6952 lt!1953525) lambda!231460))))

(assert (=> b!4796308 (= e!2994957 lt!1953802)))

(declare-fun lt!1953799 () ListMap!6423)

(declare-fun +!2493 (ListMap!6423 tuple2!56912) ListMap!6423)

(assert (=> b!4796308 (= lt!1953799 (+!2493 lt!1953525 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(assert (=> b!4796308 (= lt!1953802 (addToMapMapFromBucket!1717 (t!361830 (_2!31751 (h!60689 (toList!6951 lm!2473)))) (+!2493 lt!1953525 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473)))))))))

(declare-fun lt!1953796 () Unit!140270)

(assert (=> b!4796308 (= lt!1953796 call!335209)))

(assert (=> b!4796308 (forall!12283 (toList!6952 lt!1953525) lambda!231458)))

(declare-fun lt!1953790 () Unit!140270)

(assert (=> b!4796308 (= lt!1953790 lt!1953796)))

(assert (=> b!4796308 (forall!12283 (toList!6952 lt!1953799) lambda!231459)))

(declare-fun lt!1953805 () Unit!140270)

(declare-fun Unit!140299 () Unit!140270)

(assert (=> b!4796308 (= lt!1953805 Unit!140299)))

(assert (=> b!4796308 (forall!12283 (t!361830 (_2!31751 (h!60689 (toList!6951 lm!2473)))) lambda!231459)))

(declare-fun lt!1953800 () Unit!140270)

(declare-fun Unit!140300 () Unit!140270)

(assert (=> b!4796308 (= lt!1953800 Unit!140300)))

(declare-fun lt!1953792 () Unit!140270)

(declare-fun Unit!140301 () Unit!140270)

(assert (=> b!4796308 (= lt!1953792 Unit!140301)))

(declare-fun lt!1953797 () Unit!140270)

(assert (=> b!4796308 (= lt!1953797 (forallContained!4188 (toList!6952 lt!1953799) lambda!231459 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(assert (=> b!4796308 (contains!17894 lt!1953799 (_1!31750 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(declare-fun lt!1953795 () Unit!140270)

(declare-fun Unit!140302 () Unit!140270)

(assert (=> b!4796308 (= lt!1953795 Unit!140302)))

(assert (=> b!4796308 (contains!17894 lt!1953802 (_1!31750 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))))))

(declare-fun lt!1953791 () Unit!140270)

(declare-fun Unit!140303 () Unit!140270)

(assert (=> b!4796308 (= lt!1953791 Unit!140303)))

(assert (=> b!4796308 (forall!12283 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231459)))

(declare-fun lt!1953804 () Unit!140270)

(declare-fun Unit!140304 () Unit!140270)

(assert (=> b!4796308 (= lt!1953804 Unit!140304)))

(assert (=> b!4796308 call!335211))

(declare-fun lt!1953785 () Unit!140270)

(declare-fun Unit!140305 () Unit!140270)

(assert (=> b!4796308 (= lt!1953785 Unit!140305)))

(declare-fun lt!1953803 () Unit!140270)

(declare-fun Unit!140306 () Unit!140270)

(assert (=> b!4796308 (= lt!1953803 Unit!140306)))

(declare-fun lt!1953798 () Unit!140270)

(declare-fun addForallContainsKeyThenBeforeAdding!948 (ListMap!6423 ListMap!6423 K!15829 V!16075) Unit!140270)

(assert (=> b!4796308 (= lt!1953798 (addForallContainsKeyThenBeforeAdding!948 lt!1953525 lt!1953802 (_1!31750 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))) (_2!31750 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473)))))))))

(assert (=> b!4796308 (forall!12283 (toList!6952 lt!1953525) lambda!231459)))

(declare-fun lt!1953788 () Unit!140270)

(assert (=> b!4796308 (= lt!1953788 lt!1953798)))

(assert (=> b!4796308 call!335210))

(declare-fun lt!1953789 () Unit!140270)

(declare-fun Unit!140307 () Unit!140270)

(assert (=> b!4796308 (= lt!1953789 Unit!140307)))

(declare-fun res!2039223 () Bool)

(assert (=> b!4796308 (= res!2039223 (forall!12283 (_2!31751 (h!60689 (toList!6951 lm!2473))) lambda!231459))))

(declare-fun e!2994959 () Bool)

(assert (=> b!4796308 (=> (not res!2039223) (not e!2994959))))

(assert (=> b!4796308 e!2994959))

(declare-fun lt!1953786 () Unit!140270)

(declare-fun Unit!140308 () Unit!140270)

(assert (=> b!4796308 (= lt!1953786 Unit!140308)))

(declare-fun bm!335205 () Bool)

(assert (=> bm!335205 (= call!335211 (forall!12283 (ite c!817475 (toList!6952 lt!1953525) (toList!6952 lt!1953799)) (ite c!817475 lambda!231457 lambda!231459)))))

(declare-fun b!4796309 () Bool)

(assert (=> b!4796309 (= e!2994958 (invariantList!1740 (toList!6952 lt!1953793)))))

(declare-fun b!4796310 () Bool)

(assert (=> b!4796310 (= e!2994959 (forall!12283 (toList!6952 lt!1953525) lambda!231459))))

(declare-fun bm!335206 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!949 (ListMap!6423) Unit!140270)

(assert (=> bm!335206 (= call!335209 (lemmaContainsAllItsOwnKeys!949 lt!1953525))))

(assert (= (and d!1535003 c!817475) b!4796306))

(assert (= (and d!1535003 (not c!817475)) b!4796308))

(assert (= (and b!4796308 res!2039223) b!4796310))

(assert (= (or b!4796306 b!4796308) bm!335204))

(assert (= (or b!4796306 b!4796308) bm!335205))

(assert (= (or b!4796306 b!4796308) bm!335206))

(assert (= (and d!1535003 res!2039222) b!4796307))

(assert (= (and b!4796307 res!2039221) b!4796309))

(declare-fun m!5778616 () Bool)

(assert (=> b!4796309 m!5778616))

(declare-fun m!5778618 () Bool)

(assert (=> b!4796307 m!5778618))

(declare-fun m!5778620 () Bool)

(assert (=> b!4796310 m!5778620))

(declare-fun m!5778622 () Bool)

(assert (=> d!1535003 m!5778622))

(assert (=> d!1535003 m!5778222))

(declare-fun m!5778624 () Bool)

(assert (=> bm!335206 m!5778624))

(declare-fun m!5778626 () Bool)

(assert (=> bm!335205 m!5778626))

(declare-fun m!5778628 () Bool)

(assert (=> b!4796308 m!5778628))

(declare-fun m!5778630 () Bool)

(assert (=> b!4796308 m!5778630))

(declare-fun m!5778632 () Bool)

(assert (=> b!4796308 m!5778632))

(declare-fun m!5778634 () Bool)

(assert (=> b!4796308 m!5778634))

(declare-fun m!5778636 () Bool)

(assert (=> b!4796308 m!5778636))

(declare-fun m!5778638 () Bool)

(assert (=> b!4796308 m!5778638))

(assert (=> b!4796308 m!5778620))

(assert (=> b!4796308 m!5778628))

(assert (=> b!4796308 m!5778632))

(declare-fun m!5778640 () Bool)

(assert (=> b!4796308 m!5778640))

(declare-fun m!5778642 () Bool)

(assert (=> b!4796308 m!5778642))

(declare-fun m!5778644 () Bool)

(assert (=> b!4796308 m!5778644))

(declare-fun m!5778646 () Bool)

(assert (=> b!4796308 m!5778646))

(declare-fun m!5778648 () Bool)

(assert (=> bm!335204 m!5778648))

(assert (=> b!4796044 d!1535003))

(declare-fun b!4796313 () Bool)

(declare-fun e!2994961 () Bool)

(declare-fun e!2994965 () Bool)

(assert (=> b!4796313 (= e!2994961 e!2994965)))

(declare-fun res!2039225 () Bool)

(assert (=> b!4796313 (=> (not res!2039225) (not e!2994965))))

(assert (=> b!4796313 (= res!2039225 (isDefined!10272 (getValueByKey!2370 (toList!6952 lt!1953528) key!5896)))))

(declare-fun b!4796314 () Bool)

(declare-fun e!2994960 () Unit!140270)

(declare-fun Unit!140309 () Unit!140270)

(assert (=> b!4796314 (= e!2994960 Unit!140309)))

(declare-fun b!4796315 () Bool)

(declare-fun e!2994962 () Unit!140270)

(declare-fun lt!1953808 () Unit!140270)

(assert (=> b!4796315 (= e!2994962 lt!1953808)))

(declare-fun lt!1953807 () Unit!140270)

(assert (=> b!4796315 (= lt!1953807 (lemmaContainsKeyImpliesGetValueByKeyDefined!2161 (toList!6952 lt!1953528) key!5896))))

(assert (=> b!4796315 (isDefined!10272 (getValueByKey!2370 (toList!6952 lt!1953528) key!5896))))

(declare-fun lt!1953810 () Unit!140270)

(assert (=> b!4796315 (= lt!1953810 lt!1953807)))

(assert (=> b!4796315 (= lt!1953808 (lemmaInListThenGetKeysListContains!1081 (toList!6952 lt!1953528) key!5896))))

(declare-fun call!335212 () Bool)

(assert (=> b!4796315 call!335212))

(declare-fun b!4796316 () Bool)

(declare-fun e!2994964 () List!54383)

(assert (=> b!4796316 (= e!2994964 (getKeysList!1086 (toList!6952 lt!1953528)))))

(declare-fun b!4796317 () Bool)

(assert (=> b!4796317 (= e!2994962 e!2994960)))

(declare-fun c!817476 () Bool)

(assert (=> b!4796317 (= c!817476 call!335212)))

(declare-fun d!1535045 () Bool)

(assert (=> d!1535045 e!2994961))

(declare-fun res!2039226 () Bool)

(assert (=> d!1535045 (=> res!2039226 e!2994961)))

(declare-fun e!2994963 () Bool)

(assert (=> d!1535045 (= res!2039226 e!2994963)))

(declare-fun res!2039224 () Bool)

(assert (=> d!1535045 (=> (not res!2039224) (not e!2994963))))

(declare-fun lt!1953811 () Bool)

(assert (=> d!1535045 (= res!2039224 (not lt!1953811))))

(declare-fun lt!1953812 () Bool)

(assert (=> d!1535045 (= lt!1953811 lt!1953812)))

(declare-fun lt!1953809 () Unit!140270)

(assert (=> d!1535045 (= lt!1953809 e!2994962)))

(declare-fun c!817477 () Bool)

(assert (=> d!1535045 (= c!817477 lt!1953812)))

(assert (=> d!1535045 (= lt!1953812 (containsKey!3981 (toList!6952 lt!1953528) key!5896))))

(assert (=> d!1535045 (= (contains!17894 lt!1953528 key!5896) lt!1953811)))

(declare-fun bm!335207 () Bool)

(assert (=> bm!335207 (= call!335212 (contains!17896 e!2994964 key!5896))))

(declare-fun c!817478 () Bool)

(assert (=> bm!335207 (= c!817478 c!817477)))

(declare-fun b!4796318 () Bool)

(assert (=> b!4796318 false))

(declare-fun lt!1953806 () Unit!140270)

(declare-fun lt!1953813 () Unit!140270)

(assert (=> b!4796318 (= lt!1953806 lt!1953813)))

(assert (=> b!4796318 (containsKey!3981 (toList!6952 lt!1953528) key!5896)))

(assert (=> b!4796318 (= lt!1953813 (lemmaInGetKeysListThenContainsKey!1086 (toList!6952 lt!1953528) key!5896))))

(declare-fun Unit!140310 () Unit!140270)

(assert (=> b!4796318 (= e!2994960 Unit!140310)))

(declare-fun b!4796319 () Bool)

(assert (=> b!4796319 (= e!2994964 (keys!19821 lt!1953528))))

(declare-fun b!4796320 () Bool)

(assert (=> b!4796320 (= e!2994963 (not (contains!17896 (keys!19821 lt!1953528) key!5896)))))

(declare-fun b!4796321 () Bool)

(assert (=> b!4796321 (= e!2994965 (contains!17896 (keys!19821 lt!1953528) key!5896))))

(assert (= (and d!1535045 c!817477) b!4796315))

(assert (= (and d!1535045 (not c!817477)) b!4796317))

(assert (= (and b!4796317 c!817476) b!4796318))

(assert (= (and b!4796317 (not c!817476)) b!4796314))

(assert (= (or b!4796315 b!4796317) bm!335207))

(assert (= (and bm!335207 c!817478) b!4796316))

(assert (= (and bm!335207 (not c!817478)) b!4796319))

(assert (= (and d!1535045 res!2039224) b!4796320))

(assert (= (and d!1535045 (not res!2039226)) b!4796313))

(assert (= (and b!4796313 res!2039225) b!4796321))

(declare-fun m!5778650 () Bool)

(assert (=> b!4796313 m!5778650))

(assert (=> b!4796313 m!5778650))

(declare-fun m!5778652 () Bool)

(assert (=> b!4796313 m!5778652))

(declare-fun m!5778654 () Bool)

(assert (=> b!4796318 m!5778654))

(declare-fun m!5778656 () Bool)

(assert (=> b!4796318 m!5778656))

(declare-fun m!5778658 () Bool)

(assert (=> b!4796321 m!5778658))

(assert (=> b!4796321 m!5778658))

(declare-fun m!5778660 () Bool)

(assert (=> b!4796321 m!5778660))

(declare-fun m!5778662 () Bool)

(assert (=> b!4796316 m!5778662))

(assert (=> b!4796320 m!5778658))

(assert (=> b!4796320 m!5778658))

(assert (=> b!4796320 m!5778660))

(assert (=> b!4796319 m!5778658))

(assert (=> d!1535045 m!5778654))

(declare-fun m!5778664 () Bool)

(assert (=> b!4796315 m!5778664))

(assert (=> b!4796315 m!5778650))

(assert (=> b!4796315 m!5778650))

(assert (=> b!4796315 m!5778652))

(declare-fun m!5778666 () Bool)

(assert (=> b!4796315 m!5778666))

(declare-fun m!5778668 () Bool)

(assert (=> bm!335207 m!5778668))

(assert (=> b!4796045 d!1535045))

(declare-fun bs!1156299 () Bool)

(declare-fun d!1535047 () Bool)

(assert (= bs!1156299 (and d!1535047 d!1534995)))

(declare-fun lambda!231461 () Int)

(assert (=> bs!1156299 (not (= lambda!231461 lambda!231417))))

(declare-fun bs!1156300 () Bool)

(assert (= bs!1156300 (and d!1535047 b!4796040)))

(assert (=> bs!1156300 (not (= lambda!231461 lambda!231368))))

(declare-fun bs!1156301 () Bool)

(assert (= bs!1156301 (and d!1535047 d!1534953)))

(assert (=> bs!1156301 (= lambda!231461 lambda!231372)))

(declare-fun bs!1156302 () Bool)

(assert (= bs!1156302 (and d!1535047 d!1534957)))

(assert (=> bs!1156302 (= lambda!231461 lambda!231407)))

(declare-fun bs!1156303 () Bool)

(assert (= bs!1156303 (and d!1535047 d!1534975)))

(assert (=> bs!1156303 (= lambda!231461 lambda!231411)))

(declare-fun bs!1156304 () Bool)

(assert (= bs!1156304 (and d!1535047 start!494390)))

(assert (=> bs!1156304 (= lambda!231461 lambda!231367)))

(declare-fun lt!1953814 () ListMap!6423)

(assert (=> d!1535047 (invariantList!1740 (toList!6952 lt!1953814))))

(declare-fun e!2994966 () ListMap!6423)

(assert (=> d!1535047 (= lt!1953814 e!2994966)))

(declare-fun c!817479 () Bool)

(assert (=> d!1535047 (= c!817479 ((_ is Cons!54257) (toList!6951 lm!2473)))))

(assert (=> d!1535047 (forall!12281 (toList!6951 lm!2473) lambda!231461)))

(assert (=> d!1535047 (= (extractMap!2463 (toList!6951 lm!2473)) lt!1953814)))

(declare-fun b!4796322 () Bool)

(assert (=> b!4796322 (= e!2994966 (addToMapMapFromBucket!1717 (_2!31751 (h!60689 (toList!6951 lm!2473))) (extractMap!2463 (t!361831 (toList!6951 lm!2473)))))))

(declare-fun b!4796323 () Bool)

(assert (=> b!4796323 (= e!2994966 (ListMap!6424 Nil!54256))))

(assert (= (and d!1535047 c!817479) b!4796322))

(assert (= (and d!1535047 (not c!817479)) b!4796323))

(declare-fun m!5778670 () Bool)

(assert (=> d!1535047 m!5778670))

(declare-fun m!5778672 () Bool)

(assert (=> d!1535047 m!5778672))

(assert (=> b!4796322 m!5778220))

(assert (=> b!4796322 m!5778220))

(declare-fun m!5778674 () Bool)

(assert (=> b!4796322 m!5778674))

(assert (=> b!4796045 d!1535047))

(declare-fun d!1535049 () Bool)

(declare-fun res!2039231 () Bool)

(declare-fun e!2994971 () Bool)

(assert (=> d!1535049 (=> res!2039231 e!2994971)))

(assert (=> d!1535049 (= res!2039231 (and ((_ is Cons!54256) (_2!31751 (h!60689 (toList!6951 lm!2473)))) (= (_1!31750 (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473))))) key!5896)))))

(assert (=> d!1535049 (= (containsKey!3978 (_2!31751 (h!60689 (toList!6951 lm!2473))) key!5896) e!2994971)))

(declare-fun b!4796328 () Bool)

(declare-fun e!2994972 () Bool)

(assert (=> b!4796328 (= e!2994971 e!2994972)))

(declare-fun res!2039232 () Bool)

(assert (=> b!4796328 (=> (not res!2039232) (not e!2994972))))

(assert (=> b!4796328 (= res!2039232 ((_ is Cons!54256) (_2!31751 (h!60689 (toList!6951 lm!2473)))))))

(declare-fun b!4796329 () Bool)

(assert (=> b!4796329 (= e!2994972 (containsKey!3978 (t!361830 (_2!31751 (h!60689 (toList!6951 lm!2473)))) key!5896))))

(assert (= (and d!1535049 (not res!2039231)) b!4796328))

(assert (= (and b!4796328 res!2039232) b!4796329))

(declare-fun m!5778676 () Bool)

(assert (=> b!4796329 m!5778676))

(assert (=> b!4796046 d!1535049))

(declare-fun d!1535051 () Bool)

(declare-fun e!2994977 () Bool)

(assert (=> d!1535051 e!2994977))

(declare-fun res!2039235 () Bool)

(assert (=> d!1535051 (=> res!2039235 e!2994977)))

(declare-fun lt!1953825 () Bool)

(assert (=> d!1535051 (= res!2039235 (not lt!1953825))))

(declare-fun lt!1953826 () Bool)

(assert (=> d!1535051 (= lt!1953825 lt!1953826)))

(declare-fun lt!1953824 () Unit!140270)

(declare-fun e!2994978 () Unit!140270)

(assert (=> d!1535051 (= lt!1953824 e!2994978)))

(declare-fun c!817482 () Bool)

(assert (=> d!1535051 (= c!817482 lt!1953826)))

(declare-fun containsKey!3982 (List!54381 (_ BitVec 64)) Bool)

(assert (=> d!1535051 (= lt!1953826 (containsKey!3982 (toList!6951 lm!2473) lt!1953532))))

(assert (=> d!1535051 (= (contains!17892 lm!2473 lt!1953532) lt!1953825)))

(declare-fun b!4796336 () Bool)

(declare-fun lt!1953823 () Unit!140270)

(assert (=> b!4796336 (= e!2994978 lt!1953823)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2162 (List!54381 (_ BitVec 64)) Unit!140270)

(assert (=> b!4796336 (= lt!1953823 (lemmaContainsKeyImpliesGetValueByKeyDefined!2162 (toList!6951 lm!2473) lt!1953532))))

(declare-datatypes ((Option!13132 0))(
  ( (None!13131) (Some!13131 (v!48436 List!54380)) )
))
(declare-fun isDefined!10273 (Option!13132) Bool)

(declare-fun getValueByKey!2371 (List!54381 (_ BitVec 64)) Option!13132)

(assert (=> b!4796336 (isDefined!10273 (getValueByKey!2371 (toList!6951 lm!2473) lt!1953532))))

(declare-fun b!4796337 () Bool)

(declare-fun Unit!140311 () Unit!140270)

(assert (=> b!4796337 (= e!2994978 Unit!140311)))

(declare-fun b!4796338 () Bool)

(assert (=> b!4796338 (= e!2994977 (isDefined!10273 (getValueByKey!2371 (toList!6951 lm!2473) lt!1953532)))))

(assert (= (and d!1535051 c!817482) b!4796336))

(assert (= (and d!1535051 (not c!817482)) b!4796337))

(assert (= (and d!1535051 (not res!2039235)) b!4796338))

(declare-fun m!5778678 () Bool)

(assert (=> d!1535051 m!5778678))

(declare-fun m!5778680 () Bool)

(assert (=> b!4796336 m!5778680))

(declare-fun m!5778682 () Bool)

(assert (=> b!4796336 m!5778682))

(assert (=> b!4796336 m!5778682))

(declare-fun m!5778684 () Bool)

(assert (=> b!4796336 m!5778684))

(assert (=> b!4796338 m!5778682))

(assert (=> b!4796338 m!5778682))

(assert (=> b!4796338 m!5778684))

(assert (=> b!4796035 d!1535051))

(declare-fun d!1535053 () Bool)

(declare-fun res!2039244 () Bool)

(declare-fun e!2994985 () Bool)

(assert (=> d!1535053 (=> res!2039244 e!2994985)))

(declare-fun e!2994986 () Bool)

(assert (=> d!1535053 (= res!2039244 e!2994986)))

(declare-fun res!2039242 () Bool)

(assert (=> d!1535053 (=> (not res!2039242) (not e!2994986))))

(assert (=> d!1535053 (= res!2039242 ((_ is Cons!54257) (toList!6951 lm!2473)))))

(assert (=> d!1535053 (= (containsKeyBiggerList!578 (toList!6951 lm!2473) key!5896) e!2994985)))

(declare-fun b!4796345 () Bool)

(assert (=> b!4796345 (= e!2994986 (containsKey!3978 (_2!31751 (h!60689 (toList!6951 lm!2473))) key!5896))))

(declare-fun b!4796346 () Bool)

(declare-fun e!2994987 () Bool)

(assert (=> b!4796346 (= e!2994985 e!2994987)))

(declare-fun res!2039243 () Bool)

(assert (=> b!4796346 (=> (not res!2039243) (not e!2994987))))

(assert (=> b!4796346 (= res!2039243 ((_ is Cons!54257) (toList!6951 lm!2473)))))

(declare-fun b!4796347 () Bool)

(assert (=> b!4796347 (= e!2994987 (containsKeyBiggerList!578 (t!361831 (toList!6951 lm!2473)) key!5896))))

(assert (= (and d!1535053 res!2039242) b!4796345))

(assert (= (and d!1535053 (not res!2039244)) b!4796346))

(assert (= (and b!4796346 res!2039243) b!4796347))

(assert (=> b!4796345 m!5778262))

(declare-fun m!5778686 () Bool)

(assert (=> b!4796347 m!5778686))

(assert (=> b!4796035 d!1535053))

(declare-fun bs!1156305 () Bool)

(declare-fun d!1535055 () Bool)

(assert (= bs!1156305 (and d!1535055 b!4796040)))

(declare-fun lambda!231464 () Int)

(assert (=> bs!1156305 (not (= lambda!231464 lambda!231368))))

(declare-fun bs!1156306 () Bool)

(assert (= bs!1156306 (and d!1535055 d!1534953)))

(assert (=> bs!1156306 (= lambda!231464 lambda!231372)))

(declare-fun bs!1156307 () Bool)

(assert (= bs!1156307 (and d!1535055 d!1534957)))

(assert (=> bs!1156307 (= lambda!231464 lambda!231407)))

(declare-fun bs!1156308 () Bool)

(assert (= bs!1156308 (and d!1535055 d!1534975)))

(assert (=> bs!1156308 (= lambda!231464 lambda!231411)))

(declare-fun bs!1156309 () Bool)

(assert (= bs!1156309 (and d!1535055 start!494390)))

(assert (=> bs!1156309 (= lambda!231464 lambda!231367)))

(declare-fun bs!1156310 () Bool)

(assert (= bs!1156310 (and d!1535055 d!1535047)))

(assert (=> bs!1156310 (= lambda!231464 lambda!231461)))

(declare-fun bs!1156311 () Bool)

(assert (= bs!1156311 (and d!1535055 d!1534995)))

(assert (=> bs!1156311 (not (= lambda!231464 lambda!231417))))

(assert (=> d!1535055 (containsKeyBiggerList!578 (toList!6951 lm!2473) key!5896)))

(declare-fun lt!1953829 () Unit!140270)

(declare-fun choose!34601 (ListLongMap!5373 K!15829 Hashable!6936) Unit!140270)

(assert (=> d!1535055 (= lt!1953829 (choose!34601 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535055 (forall!12281 (toList!6951 lm!2473) lambda!231464)))

(assert (=> d!1535055 (= (lemmaInLongMapThenContainsKeyBiggerList!318 lm!2473 key!5896 hashF!1559) lt!1953829)))

(declare-fun bs!1156312 () Bool)

(assert (= bs!1156312 d!1535055))

(assert (=> bs!1156312 m!5778236))

(declare-fun m!5778688 () Bool)

(assert (=> bs!1156312 m!5778688))

(declare-fun m!5778690 () Bool)

(assert (=> bs!1156312 m!5778690))

(assert (=> b!4796035 d!1535055))

(declare-fun bs!1156313 () Bool)

(declare-fun d!1535057 () Bool)

(assert (= bs!1156313 (and d!1535057 b!4796040)))

(declare-fun lambda!231467 () Int)

(assert (=> bs!1156313 (not (= lambda!231467 lambda!231368))))

(declare-fun bs!1156314 () Bool)

(assert (= bs!1156314 (and d!1535057 d!1534953)))

(assert (=> bs!1156314 (= lambda!231467 lambda!231372)))

(declare-fun bs!1156315 () Bool)

(assert (= bs!1156315 (and d!1535057 d!1534957)))

(assert (=> bs!1156315 (= lambda!231467 lambda!231407)))

(declare-fun bs!1156316 () Bool)

(assert (= bs!1156316 (and d!1535057 d!1535055)))

(assert (=> bs!1156316 (= lambda!231467 lambda!231464)))

(declare-fun bs!1156317 () Bool)

(assert (= bs!1156317 (and d!1535057 d!1534975)))

(assert (=> bs!1156317 (= lambda!231467 lambda!231411)))

(declare-fun bs!1156318 () Bool)

(assert (= bs!1156318 (and d!1535057 start!494390)))

(assert (=> bs!1156318 (= lambda!231467 lambda!231367)))

(declare-fun bs!1156319 () Bool)

(assert (= bs!1156319 (and d!1535057 d!1535047)))

(assert (=> bs!1156319 (= lambda!231467 lambda!231461)))

(declare-fun bs!1156320 () Bool)

(assert (= bs!1156320 (and d!1535057 d!1534995)))

(assert (=> bs!1156320 (not (= lambda!231467 lambda!231417))))

(declare-fun e!2994990 () Bool)

(assert (=> d!1535057 e!2994990))

(declare-fun res!2039247 () Bool)

(assert (=> d!1535057 (=> (not res!2039247) (not e!2994990))))

(assert (=> d!1535057 (= res!2039247 (contains!17892 lm!2473 (hash!4979 hashF!1559 key!5896)))))

(declare-fun lt!1953832 () Unit!140270)

(declare-fun choose!34602 (ListLongMap!5373 K!15829 Hashable!6936) Unit!140270)

(assert (=> d!1535057 (= lt!1953832 (choose!34602 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535057 (forall!12281 (toList!6951 lm!2473) lambda!231467)))

(assert (=> d!1535057 (= (lemmaInGenericMapThenInLongMap!340 lm!2473 key!5896 hashF!1559) lt!1953832)))

(declare-fun b!4796350 () Bool)

(assert (=> b!4796350 (= e!2994990 (isDefined!10269 (getPair!908 (apply!13009 lm!2473 (hash!4979 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1535057 res!2039247) b!4796350))

(assert (=> d!1535057 m!5778240))

(assert (=> d!1535057 m!5778240))

(declare-fun m!5778692 () Bool)

(assert (=> d!1535057 m!5778692))

(declare-fun m!5778694 () Bool)

(assert (=> d!1535057 m!5778694))

(declare-fun m!5778696 () Bool)

(assert (=> d!1535057 m!5778696))

(assert (=> b!4796350 m!5778240))

(assert (=> b!4796350 m!5778240))

(declare-fun m!5778698 () Bool)

(assert (=> b!4796350 m!5778698))

(assert (=> b!4796350 m!5778698))

(declare-fun m!5778700 () Bool)

(assert (=> b!4796350 m!5778700))

(assert (=> b!4796350 m!5778700))

(declare-fun m!5778702 () Bool)

(assert (=> b!4796350 m!5778702))

(assert (=> b!4796035 d!1535057))

(declare-fun d!1535059 () Bool)

(declare-fun c!817485 () Bool)

(declare-fun e!2994996 () Bool)

(assert (=> d!1535059 (= c!817485 e!2994996)))

(declare-fun res!2039250 () Bool)

(assert (=> d!1535059 (=> (not res!2039250) (not e!2994996))))

(assert (=> d!1535059 (= res!2039250 ((_ is Cons!54257) (toList!6951 lm!2473)))))

(declare-fun e!2994995 () V!16075)

(assert (=> d!1535059 (= (getValue!124 (toList!6951 lm!2473) key!5896) e!2994995)))

(declare-fun b!4796359 () Bool)

(assert (=> b!4796359 (= e!2994996 (containsKey!3978 (_2!31751 (h!60689 (toList!6951 lm!2473))) key!5896))))

(declare-fun b!4796357 () Bool)

(declare-fun get!18510 (Option!13128) tuple2!56912)

(assert (=> b!4796357 (= e!2994995 (_2!31750 (get!18510 (getPair!908 (_2!31751 (h!60689 (toList!6951 lm!2473))) key!5896))))))

(declare-fun b!4796358 () Bool)

(assert (=> b!4796358 (= e!2994995 (getValue!124 (t!361831 (toList!6951 lm!2473)) key!5896))))

(assert (= (and d!1535059 res!2039250) b!4796359))

(assert (= (and d!1535059 c!817485) b!4796357))

(assert (= (and d!1535059 (not c!817485)) b!4796358))

(assert (=> b!4796359 m!5778262))

(declare-fun m!5778704 () Bool)

(assert (=> b!4796357 m!5778704))

(assert (=> b!4796357 m!5778704))

(declare-fun m!5778706 () Bool)

(assert (=> b!4796357 m!5778706))

(declare-fun m!5778708 () Bool)

(assert (=> b!4796358 m!5778708))

(assert (=> b!4796035 d!1535059))

(declare-fun d!1535061 () Bool)

(declare-fun hash!4981 (Hashable!6936 K!15829) (_ BitVec 64))

(assert (=> d!1535061 (= (hash!4979 hashF!1559 key!5896) (hash!4981 hashF!1559 key!5896))))

(declare-fun bs!1156321 () Bool)

(assert (= bs!1156321 d!1535061))

(declare-fun m!5778710 () Bool)

(assert (=> bs!1156321 m!5778710))

(assert (=> b!4796035 d!1535061))

(declare-fun d!1535063 () Bool)

(declare-fun isEmpty!29470 (Option!13128) Bool)

(assert (=> d!1535063 (= (isDefined!10269 (getPair!908 (apply!13009 lm!2473 lt!1953532) key!5896)) (not (isEmpty!29470 (getPair!908 (apply!13009 lm!2473 lt!1953532) key!5896))))))

(declare-fun bs!1156322 () Bool)

(assert (= bs!1156322 d!1535063))

(assert (=> bs!1156322 m!5778258))

(declare-fun m!5778712 () Bool)

(assert (=> bs!1156322 m!5778712))

(assert (=> b!4796036 d!1535063))

(declare-fun b!4796376 () Bool)

(declare-fun e!2995009 () Bool)

(declare-fun e!2995010 () Bool)

(assert (=> b!4796376 (= e!2995009 e!2995010)))

(declare-fun res!2039261 () Bool)

(assert (=> b!4796376 (=> (not res!2039261) (not e!2995010))))

(declare-fun lt!1953835 () Option!13128)

(assert (=> b!4796376 (= res!2039261 (isDefined!10269 lt!1953835))))

(declare-fun b!4796377 () Bool)

(declare-fun e!2995007 () Option!13128)

(declare-fun e!2995008 () Option!13128)

(assert (=> b!4796377 (= e!2995007 e!2995008)))

(declare-fun c!817491 () Bool)

(assert (=> b!4796377 (= c!817491 ((_ is Cons!54256) (apply!13009 lm!2473 lt!1953532)))))

(declare-fun b!4796378 () Bool)

(assert (=> b!4796378 (= e!2995007 (Some!13127 (h!60688 (apply!13009 lm!2473 lt!1953532))))))

(declare-fun b!4796380 () Bool)

(assert (=> b!4796380 (= e!2995008 (getPair!908 (t!361830 (apply!13009 lm!2473 lt!1953532)) key!5896))))

(declare-fun b!4796381 () Bool)

(assert (=> b!4796381 (= e!2995008 None!13127)))

(declare-fun b!4796382 () Bool)

(declare-fun res!2039259 () Bool)

(assert (=> b!4796382 (=> (not res!2039259) (not e!2995010))))

(assert (=> b!4796382 (= res!2039259 (= (_1!31750 (get!18510 lt!1953835)) key!5896))))

(declare-fun b!4796383 () Bool)

(declare-fun e!2995011 () Bool)

(assert (=> b!4796383 (= e!2995011 (not (containsKey!3978 (apply!13009 lm!2473 lt!1953532) key!5896)))))

(declare-fun d!1535065 () Bool)

(assert (=> d!1535065 e!2995009))

(declare-fun res!2039262 () Bool)

(assert (=> d!1535065 (=> res!2039262 e!2995009)))

(assert (=> d!1535065 (= res!2039262 e!2995011)))

(declare-fun res!2039260 () Bool)

(assert (=> d!1535065 (=> (not res!2039260) (not e!2995011))))

(assert (=> d!1535065 (= res!2039260 (isEmpty!29470 lt!1953835))))

(assert (=> d!1535065 (= lt!1953835 e!2995007)))

(declare-fun c!817490 () Bool)

(assert (=> d!1535065 (= c!817490 (and ((_ is Cons!54256) (apply!13009 lm!2473 lt!1953532)) (= (_1!31750 (h!60688 (apply!13009 lm!2473 lt!1953532))) key!5896)))))

(assert (=> d!1535065 (noDuplicateKeys!2349 (apply!13009 lm!2473 lt!1953532))))

(assert (=> d!1535065 (= (getPair!908 (apply!13009 lm!2473 lt!1953532) key!5896) lt!1953835)))

(declare-fun b!4796379 () Bool)

(assert (=> b!4796379 (= e!2995010 (contains!17893 (apply!13009 lm!2473 lt!1953532) (get!18510 lt!1953835)))))

(assert (= (and d!1535065 c!817490) b!4796378))

(assert (= (and d!1535065 (not c!817490)) b!4796377))

(assert (= (and b!4796377 c!817491) b!4796380))

(assert (= (and b!4796377 (not c!817491)) b!4796381))

(assert (= (and d!1535065 res!2039260) b!4796383))

(assert (= (and d!1535065 (not res!2039262)) b!4796376))

(assert (= (and b!4796376 res!2039261) b!4796382))

(assert (= (and b!4796382 res!2039259) b!4796379))

(declare-fun m!5778714 () Bool)

(assert (=> b!4796376 m!5778714))

(declare-fun m!5778716 () Bool)

(assert (=> b!4796380 m!5778716))

(assert (=> b!4796383 m!5778256))

(declare-fun m!5778718 () Bool)

(assert (=> b!4796383 m!5778718))

(declare-fun m!5778720 () Bool)

(assert (=> d!1535065 m!5778720))

(assert (=> d!1535065 m!5778256))

(declare-fun m!5778722 () Bool)

(assert (=> d!1535065 m!5778722))

(declare-fun m!5778724 () Bool)

(assert (=> b!4796379 m!5778724))

(assert (=> b!4796379 m!5778256))

(assert (=> b!4796379 m!5778724))

(declare-fun m!5778726 () Bool)

(assert (=> b!4796379 m!5778726))

(assert (=> b!4796382 m!5778724))

(assert (=> b!4796036 d!1535065))

(declare-fun d!1535067 () Bool)

(declare-fun get!18511 (Option!13132) List!54380)

(assert (=> d!1535067 (= (apply!13009 lm!2473 lt!1953532) (get!18511 (getValueByKey!2371 (toList!6951 lm!2473) lt!1953532)))))

(declare-fun bs!1156323 () Bool)

(assert (= bs!1156323 d!1535067))

(assert (=> bs!1156323 m!5778682))

(assert (=> bs!1156323 m!5778682))

(declare-fun m!5778728 () Bool)

(assert (=> bs!1156323 m!5778728))

(assert (=> b!4796036 d!1535067))

(declare-fun d!1535069 () Bool)

(assert (=> d!1535069 (= (apply!13008 lt!1953528 key!5896) (get!18509 (getValueByKey!2370 (toList!6952 lt!1953528) key!5896)))))

(declare-fun bs!1156324 () Bool)

(assert (= bs!1156324 d!1535069))

(assert (=> bs!1156324 m!5778650))

(assert (=> bs!1156324 m!5778650))

(declare-fun m!5778730 () Bool)

(assert (=> bs!1156324 m!5778730))

(assert (=> b!4796047 d!1535069))

(declare-fun d!1535071 () Bool)

(assert (=> d!1535071 (= (apply!13008 lt!1953527 key!5896) (get!18509 (getValueByKey!2370 (toList!6952 lt!1953527) key!5896)))))

(declare-fun bs!1156325 () Bool)

(assert (= bs!1156325 d!1535071))

(assert (=> bs!1156325 m!5778464))

(assert (=> bs!1156325 m!5778464))

(declare-fun m!5778732 () Bool)

(assert (=> bs!1156325 m!5778732))

(assert (=> b!4796047 d!1535071))

(declare-fun d!1535073 () Bool)

(assert (=> d!1535073 (= (apply!13008 (addToMapMapFromBucket!1717 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953525) key!5896) value!3111)))

(declare-fun lt!1953838 () Unit!140270)

(declare-fun choose!34603 (List!54380 ListMap!6423 K!15829 V!16075) Unit!140270)

(assert (=> d!1535073 (= lt!1953838 (choose!34603 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953525 key!5896 value!3111))))

(assert (=> d!1535073 (noDuplicateKeys!2349 (_2!31751 (h!60689 (toList!6951 lm!2473))))))

(assert (=> d!1535073 (= (lemmaAddToMapFromBucketMaintainsMapping!10 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953525 key!5896 value!3111) lt!1953838)))

(declare-fun bs!1156326 () Bool)

(assert (= bs!1156326 d!1535073))

(assert (=> bs!1156326 m!5778208))

(assert (=> bs!1156326 m!5778208))

(declare-fun m!5778734 () Bool)

(assert (=> bs!1156326 m!5778734))

(declare-fun m!5778736 () Bool)

(assert (=> bs!1156326 m!5778736))

(assert (=> bs!1156326 m!5778222))

(assert (=> b!4796047 d!1535073))

(declare-fun d!1535075 () Bool)

(declare-fun lt!1953841 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9724 (List!54380) (InoxSet tuple2!56912))

(assert (=> d!1535075 (= lt!1953841 (select (content!9724 (_2!31751 (h!60689 (toList!6951 lm!2473)))) lt!1953531))))

(declare-fun e!2995016 () Bool)

(assert (=> d!1535075 (= lt!1953841 e!2995016)))

(declare-fun res!2039268 () Bool)

(assert (=> d!1535075 (=> (not res!2039268) (not e!2995016))))

(assert (=> d!1535075 (= res!2039268 ((_ is Cons!54256) (_2!31751 (h!60689 (toList!6951 lm!2473)))))))

(assert (=> d!1535075 (= (contains!17893 (_2!31751 (h!60689 (toList!6951 lm!2473))) lt!1953531) lt!1953841)))

(declare-fun b!4796388 () Bool)

(declare-fun e!2995017 () Bool)

(assert (=> b!4796388 (= e!2995016 e!2995017)))

(declare-fun res!2039267 () Bool)

(assert (=> b!4796388 (=> res!2039267 e!2995017)))

(assert (=> b!4796388 (= res!2039267 (= (h!60688 (_2!31751 (h!60689 (toList!6951 lm!2473)))) lt!1953531))))

(declare-fun b!4796389 () Bool)

(assert (=> b!4796389 (= e!2995017 (contains!17893 (t!361830 (_2!31751 (h!60689 (toList!6951 lm!2473)))) lt!1953531))))

(assert (= (and d!1535075 res!2039268) b!4796388))

(assert (= (and b!4796388 (not res!2039267)) b!4796389))

(declare-fun m!5778738 () Bool)

(assert (=> d!1535075 m!5778738))

(declare-fun m!5778740 () Bool)

(assert (=> d!1535075 m!5778740))

(declare-fun m!5778742 () Bool)

(assert (=> b!4796389 m!5778742))

(assert (=> b!4796038 d!1535075))

(declare-fun b!4796394 () Bool)

(declare-fun e!2995020 () Bool)

(declare-fun tp!1358173 () Bool)

(declare-fun tp!1358174 () Bool)

(assert (=> b!4796394 (= e!2995020 (and tp!1358173 tp!1358174))))

(assert (=> b!4796048 (= tp!1358162 e!2995020)))

(assert (= (and b!4796048 ((_ is Cons!54257) (toList!6951 lm!2473))) b!4796394))

(declare-fun b_lambda!187181 () Bool)

(assert (= b_lambda!187163 (or b!4796040 b_lambda!187181)))

(declare-fun bs!1156327 () Bool)

(declare-fun d!1535077 () Bool)

(assert (= bs!1156327 (and d!1535077 b!4796040)))

(declare-fun allKeysSameHash!1966 (List!54380 (_ BitVec 64) Hashable!6936) Bool)

(assert (=> bs!1156327 (= (dynLambda!22079 lambda!231368 (h!60689 (toList!6951 lm!2473))) (allKeysSameHash!1966 (_2!31751 (h!60689 (toList!6951 lm!2473))) (_1!31751 (h!60689 (toList!6951 lm!2473))) hashF!1559))))

(declare-fun m!5778744 () Bool)

(assert (=> bs!1156327 m!5778744))

(assert (=> d!1534965 d!1535077))

(declare-fun b_lambda!187183 () Bool)

(assert (= b_lambda!187169 (or start!494390 b_lambda!187183)))

(declare-fun bs!1156328 () Bool)

(declare-fun d!1535079 () Bool)

(assert (= bs!1156328 (and d!1535079 start!494390)))

(assert (=> bs!1156328 (= (dynLambda!22079 lambda!231367 (h!60689 (toList!6951 lm!2473))) (noDuplicateKeys!2349 (_2!31751 (h!60689 (toList!6951 lm!2473)))))))

(assert (=> bs!1156328 m!5778222))

(assert (=> b!4796180 d!1535079))

(declare-fun b_lambda!187185 () Bool)

(assert (= b_lambda!187165 (or b!4796040 b_lambda!187185)))

(declare-fun bs!1156329 () Bool)

(declare-fun d!1535081 () Bool)

(assert (= bs!1156329 (and d!1535081 b!4796040)))

(assert (=> bs!1156329 (= (dynLambda!22080 lambda!231369 lt!1953531) (= (hash!4979 hashF!1559 (_1!31750 lt!1953531)) (_1!31751 (h!60689 (toList!6951 lm!2473)))))))

(declare-fun m!5778746 () Bool)

(assert (=> bs!1156329 m!5778746))

(assert (=> d!1534977 d!1535081))

(check-sat (not b!4796208) (not bm!335195) (not b!4796203) (not d!1534983) (not d!1534995) (not b!4796307) (not b_lambda!187181) (not b!4796164) (not b!4796169) (not b!4796357) (not d!1535067) (not b!4796345) (not d!1535075) (not d!1535065) (not b!4796163) (not bm!335206) (not b!4796318) (not bm!335183) (not b!4796309) (not bs!1156329) (not b!4796389) (not b!4796359) (not b!4796383) (not d!1535073) (not d!1535071) (not b!4796338) (not d!1534999) (not b!4796321) (not bm!335205) (not bs!1156327) (not b!4796347) (not d!1534955) (not b!4796107) (not b!4796319) (not d!1535051) (not b!4796106) (not bs!1156328) (not d!1534965) (not b!4796166) (not b!4796358) (not b!4796376) (not b!4796313) (not b!4796167) (not b!4796322) (not b!4796350) (not b!4796206) (not d!1535047) (not d!1534993) (not d!1535057) (not b!4796202) (not d!1535003) (not d!1534977) tp_is_empty!33607 (not b!4796320) (not b!4796100) (not b!4796382) (not b!4796310) (not d!1535061) (not d!1535069) (not bm!335207) (not b!4796168) (not b!4796139) tp_is_empty!33605 (not b!4796200) (not b!4796161) (not bm!335194) (not d!1534953) (not b!4796145) (not d!1534975) (not b!4796394) (not b!4796207) (not b!4796316) (not b!4796102) (not b!4796379) (not b!4796315) (not b!4796146) (not d!1534979) (not bm!335204) (not d!1534957) (not b!4796103) (not d!1535063) (not d!1535055) (not b_lambda!187183) (not b!4796336) (not b!4796329) (not b!4796308) (not b!4796105) (not b!4796156) (not b!4796153) (not b_lambda!187185) (not d!1535045) (not b!4796181) (not b!4796205) (not d!1534967) (not b!4796380) (not b!4796108) (not b!4796160))
(check-sat)
