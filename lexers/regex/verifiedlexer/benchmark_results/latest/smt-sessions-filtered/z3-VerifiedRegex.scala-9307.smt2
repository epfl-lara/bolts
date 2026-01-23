; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!494162 () Bool)

(assert start!494162)

(declare-fun bs!1155347 () Bool)

(declare-fun b!4794974 () Bool)

(assert (= bs!1155347 (and b!4794974 start!494162)))

(declare-fun lambda!231122 () Int)

(declare-fun lambda!231121 () Int)

(assert (=> bs!1155347 (not (= lambda!231122 lambda!231121))))

(assert (=> b!4794974 true))

(assert (=> b!4794974 true))

(assert (=> b!4794974 true))

(declare-fun b!4794962 () Bool)

(declare-fun e!2994026 () Bool)

(declare-fun tp!1358134 () Bool)

(assert (=> b!4794962 (= e!2994026 tp!1358134)))

(declare-fun b!4794963 () Bool)

(declare-fun res!2038466 () Bool)

(declare-fun e!2994030 () Bool)

(assert (=> b!4794963 (=> res!2038466 e!2994030)))

(declare-datatypes ((K!15824 0))(
  ( (K!15825 (val!20965 Int)) )
))
(declare-datatypes ((V!16070 0))(
  ( (V!16071 (val!20966 Int)) )
))
(declare-datatypes ((tuple2!56904 0))(
  ( (tuple2!56905 (_1!31746 K!15824) (_2!31746 V!16070)) )
))
(declare-datatypes ((List!54374 0))(
  ( (Nil!54250) (Cons!54250 (h!60680 tuple2!56904) (t!361824 List!54374)) )
))
(declare-datatypes ((ListMap!6419 0))(
  ( (ListMap!6420 (toList!6947 List!54374)) )
))
(declare-fun lt!1952727 () ListMap!6419)

(declare-fun key!5896 () K!15824)

(declare-datatypes ((tuple2!56906 0))(
  ( (tuple2!56907 (_1!31747 (_ BitVec 64)) (_2!31747 List!54374)) )
))
(declare-datatypes ((List!54375 0))(
  ( (Nil!54251) (Cons!54251 (h!60681 tuple2!56906) (t!361825 List!54375)) )
))
(declare-datatypes ((ListLongMap!5369 0))(
  ( (ListLongMap!5370 (toList!6948 List!54375)) )
))
(declare-fun lm!2473 () ListLongMap!5369)

(declare-fun contains!17882 (ListMap!6419 K!15824) Bool)

(declare-fun addToMapMapFromBucket!1715 (List!54374 ListMap!6419) ListMap!6419)

(assert (=> b!4794963 (= res!2038466 (not (contains!17882 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727) key!5896)))))

(declare-fun b!4794964 () Bool)

(declare-fun e!2994029 () Bool)

(assert (=> b!4794964 (= e!2994030 e!2994029)))

(declare-fun res!2038465 () Bool)

(assert (=> b!4794964 (=> res!2038465 e!2994029)))

(declare-fun e!2994028 () Bool)

(assert (=> b!4794964 (= res!2038465 e!2994028)))

(declare-fun res!2038462 () Bool)

(assert (=> b!4794964 (=> (not res!2038462) (not e!2994028))))

(declare-fun lt!1952721 () Bool)

(assert (=> b!4794964 (= res!2038462 lt!1952721)))

(assert (=> b!4794964 (= lt!1952721 (contains!17882 lt!1952727 key!5896))))

(declare-fun b!4794965 () Bool)

(declare-fun res!2038463 () Bool)

(declare-fun e!2994032 () Bool)

(assert (=> b!4794965 (=> res!2038463 e!2994032)))

(declare-fun containsKey!3972 (List!54374 K!15824) Bool)

(assert (=> b!4794965 (= res!2038463 (not (containsKey!3972 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896)))))

(declare-fun b!4794966 () Bool)

(declare-fun e!2994031 () Bool)

(assert (=> b!4794966 (= e!2994029 e!2994031)))

(declare-fun res!2038459 () Bool)

(assert (=> b!4794966 (=> (not res!2038459) (not e!2994031))))

(declare-fun lt!1952726 () tuple2!56904)

(declare-fun contains!17883 (List!54374 tuple2!56904) Bool)

(assert (=> b!4794966 (= res!2038459 (contains!17883 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952726))))

(declare-fun b!4794968 () Bool)

(declare-fun res!2038455 () Bool)

(declare-fun e!2994027 () Bool)

(assert (=> b!4794968 (=> (not res!2038455) (not e!2994027))))

(declare-datatypes ((Hashable!6934 0))(
  ( (HashableExt!6933 (__x!32957 Int)) )
))
(declare-fun hashF!1559 () Hashable!6934)

(declare-fun allKeysSameHashInMap!2339 (ListLongMap!5369 Hashable!6934) Bool)

(assert (=> b!4794968 (= res!2038455 (allKeysSameHashInMap!2339 lm!2473 hashF!1559))))

(declare-fun b!4794969 () Bool)

(declare-fun e!2994025 () Bool)

(declare-fun lt!1952729 () (_ BitVec 64))

(declare-datatypes ((Option!13122 0))(
  ( (None!13121) (Some!13121 (v!48418 tuple2!56904)) )
))
(declare-fun isDefined!10263 (Option!13122) Bool)

(declare-fun getPair!906 (List!54374 K!15824) Option!13122)

(declare-fun apply!13004 (ListLongMap!5369 (_ BitVec 64)) List!54374)

(assert (=> b!4794969 (= e!2994025 (isDefined!10263 (getPair!906 (apply!13004 lm!2473 lt!1952729) key!5896)))))

(declare-fun b!4794970 () Bool)

(assert (=> b!4794970 (= e!2994031 (not lt!1952721))))

(declare-fun b!4794971 () Bool)

(declare-fun res!2038456 () Bool)

(assert (=> b!4794971 (=> (not res!2038456) (not e!2994027))))

(declare-fun extractMap!2461 (List!54375) ListMap!6419)

(assert (=> b!4794971 (= res!2038456 (contains!17882 (extractMap!2461 (toList!6948 lm!2473)) key!5896))))

(declare-fun b!4794972 () Bool)

(assert (=> b!4794972 (= e!2994028 false)))

(declare-fun lt!1952722 () V!16070)

(declare-fun apply!13005 (ListMap!6419 K!15824) V!16070)

(assert (=> b!4794972 (= lt!1952722 (apply!13005 lt!1952727 key!5896))))

(declare-fun res!2038461 () Bool)

(assert (=> start!494162 (=> (not res!2038461) (not e!2994027))))

(declare-fun forall!12275 (List!54375 Int) Bool)

(assert (=> start!494162 (= res!2038461 (forall!12275 (toList!6948 lm!2473) lambda!231121))))

(assert (=> start!494162 e!2994027))

(declare-fun inv!69850 (ListLongMap!5369) Bool)

(assert (=> start!494162 (and (inv!69850 lm!2473) e!2994026)))

(assert (=> start!494162 true))

(declare-fun tp_is_empty!33597 () Bool)

(assert (=> start!494162 tp_is_empty!33597))

(declare-fun tp_is_empty!33599 () Bool)

(assert (=> start!494162 tp_is_empty!33599))

(declare-fun b!4794967 () Bool)

(declare-fun res!2038460 () Bool)

(assert (=> b!4794967 (=> res!2038460 e!2994032)))

(get-info :version)

(assert (=> b!4794967 (= res!2038460 (not ((_ is Cons!54251) (toList!6948 lm!2473))))))

(declare-fun b!4794973 () Bool)

(assert (=> b!4794973 (= e!2994027 (not e!2994032))))

(declare-fun res!2038464 () Bool)

(assert (=> b!4794973 (=> res!2038464 e!2994032)))

(declare-fun value!3111 () V!16070)

(declare-fun getValue!122 (List!54375 K!15824) V!16070)

(assert (=> b!4794973 (= res!2038464 (not (= (getValue!122 (toList!6948 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!576 (List!54375 K!15824) Bool)

(assert (=> b!4794973 (containsKeyBiggerList!576 (toList!6948 lm!2473) key!5896)))

(declare-datatypes ((Unit!140096 0))(
  ( (Unit!140097) )
))
(declare-fun lt!1952725 () Unit!140096)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!316 (ListLongMap!5369 K!15824 Hashable!6934) Unit!140096)

(assert (=> b!4794973 (= lt!1952725 (lemmaInLongMapThenContainsKeyBiggerList!316 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4794973 e!2994025))

(declare-fun res!2038457 () Bool)

(assert (=> b!4794973 (=> (not res!2038457) (not e!2994025))))

(declare-fun contains!17884 (ListLongMap!5369 (_ BitVec 64)) Bool)

(assert (=> b!4794973 (= res!2038457 (contains!17884 lm!2473 lt!1952729))))

(declare-fun hash!4975 (Hashable!6934 K!15824) (_ BitVec 64))

(assert (=> b!4794973 (= lt!1952729 (hash!4975 hashF!1559 key!5896))))

(declare-fun lt!1952730 () Unit!140096)

(declare-fun lemmaInGenericMapThenInLongMap!338 (ListLongMap!5369 K!15824 Hashable!6934) Unit!140096)

(assert (=> b!4794973 (= lt!1952730 (lemmaInGenericMapThenInLongMap!338 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4794974 (= e!2994032 e!2994030)))

(declare-fun res!2038458 () Bool)

(assert (=> b!4794974 (=> res!2038458 e!2994030)))

(declare-fun noDuplicateKeys!2347 (List!54374) Bool)

(assert (=> b!4794974 (= res!2038458 (not (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4794974 (= lt!1952727 (extractMap!2461 (t!361825 (toList!6948 lm!2473))))))

(declare-fun lt!1952728 () ListLongMap!5369)

(assert (=> b!4794974 (not (contains!17882 (extractMap!2461 (toList!6948 lt!1952728)) key!5896))))

(declare-fun lt!1952724 () Unit!140096)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!40 (ListLongMap!5369 K!15824 Hashable!6934) Unit!140096)

(assert (=> b!4794974 (= lt!1952724 (lemmaHashNotInLongMapThenNotInGenerated!40 lt!1952728 key!5896 hashF!1559))))

(declare-fun tail!9285 (ListLongMap!5369) ListLongMap!5369)

(assert (=> b!4794974 (= lt!1952728 (tail!9285 lm!2473))))

(declare-fun lt!1952731 () Unit!140096)

(declare-fun lambda!231123 () Int)

(declare-fun forallContained!4182 (List!54374 Int tuple2!56904) Unit!140096)

(assert (=> b!4794974 (= lt!1952731 (forallContained!4182 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231123 lt!1952726))))

(assert (=> b!4794974 (= lt!1952726 (tuple2!56905 key!5896 value!3111))))

(declare-fun lt!1952723 () Unit!140096)

(declare-fun forallContained!4183 (List!54375 Int tuple2!56906) Unit!140096)

(assert (=> b!4794974 (= lt!1952723 (forallContained!4183 (toList!6948 lm!2473) lambda!231122 (h!60681 (toList!6948 lm!2473))))))

(assert (= (and start!494162 res!2038461) b!4794968))

(assert (= (and b!4794968 res!2038455) b!4794971))

(assert (= (and b!4794971 res!2038456) b!4794973))

(assert (= (and b!4794973 res!2038457) b!4794969))

(assert (= (and b!4794973 (not res!2038464)) b!4794967))

(assert (= (and b!4794967 (not res!2038460)) b!4794965))

(assert (= (and b!4794965 (not res!2038463)) b!4794974))

(assert (= (and b!4794974 (not res!2038458)) b!4794963))

(assert (= (and b!4794963 (not res!2038466)) b!4794964))

(assert (= (and b!4794964 res!2038462) b!4794972))

(assert (= (and b!4794964 (not res!2038465)) b!4794966))

(assert (= (and b!4794966 res!2038459) b!4794970))

(assert (= start!494162 b!4794962))

(declare-fun m!5776270 () Bool)

(assert (=> b!4794974 m!5776270))

(declare-fun m!5776272 () Bool)

(assert (=> b!4794974 m!5776272))

(declare-fun m!5776274 () Bool)

(assert (=> b!4794974 m!5776274))

(declare-fun m!5776276 () Bool)

(assert (=> b!4794974 m!5776276))

(declare-fun m!5776278 () Bool)

(assert (=> b!4794974 m!5776278))

(declare-fun m!5776280 () Bool)

(assert (=> b!4794974 m!5776280))

(declare-fun m!5776282 () Bool)

(assert (=> b!4794974 m!5776282))

(declare-fun m!5776284 () Bool)

(assert (=> b!4794974 m!5776284))

(assert (=> b!4794974 m!5776270))

(declare-fun m!5776286 () Bool)

(assert (=> b!4794963 m!5776286))

(assert (=> b!4794963 m!5776286))

(declare-fun m!5776288 () Bool)

(assert (=> b!4794963 m!5776288))

(declare-fun m!5776290 () Bool)

(assert (=> b!4794965 m!5776290))

(declare-fun m!5776292 () Bool)

(assert (=> b!4794973 m!5776292))

(declare-fun m!5776294 () Bool)

(assert (=> b!4794973 m!5776294))

(declare-fun m!5776296 () Bool)

(assert (=> b!4794973 m!5776296))

(declare-fun m!5776298 () Bool)

(assert (=> b!4794973 m!5776298))

(declare-fun m!5776300 () Bool)

(assert (=> b!4794973 m!5776300))

(declare-fun m!5776302 () Bool)

(assert (=> b!4794973 m!5776302))

(declare-fun m!5776304 () Bool)

(assert (=> b!4794971 m!5776304))

(assert (=> b!4794971 m!5776304))

(declare-fun m!5776306 () Bool)

(assert (=> b!4794971 m!5776306))

(declare-fun m!5776308 () Bool)

(assert (=> b!4794968 m!5776308))

(declare-fun m!5776310 () Bool)

(assert (=> b!4794972 m!5776310))

(declare-fun m!5776312 () Bool)

(assert (=> b!4794966 m!5776312))

(declare-fun m!5776314 () Bool)

(assert (=> b!4794964 m!5776314))

(declare-fun m!5776316 () Bool)

(assert (=> start!494162 m!5776316))

(declare-fun m!5776318 () Bool)

(assert (=> start!494162 m!5776318))

(declare-fun m!5776320 () Bool)

(assert (=> b!4794969 m!5776320))

(assert (=> b!4794969 m!5776320))

(declare-fun m!5776322 () Bool)

(assert (=> b!4794969 m!5776322))

(assert (=> b!4794969 m!5776322))

(declare-fun m!5776324 () Bool)

(assert (=> b!4794969 m!5776324))

(check-sat (not b!4794963) (not b!4794969) (not b!4794972) tp_is_empty!33597 (not b!4794974) (not b!4794965) (not b!4794971) (not b!4794973) (not b!4794964) tp_is_empty!33599 (not b!4794962) (not b!4794968) (not start!494162) (not b!4794966))
(check-sat)
(get-model)

(declare-fun d!1534318 () Bool)

(declare-fun res!2038477 () Bool)

(declare-fun e!2994043 () Bool)

(assert (=> d!1534318 (=> res!2038477 e!2994043)))

(assert (=> d!1534318 (= res!2038477 ((_ is Nil!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534318 (= (forall!12275 (toList!6948 lm!2473) lambda!231121) e!2994043)))

(declare-fun b!4794991 () Bool)

(declare-fun e!2994044 () Bool)

(assert (=> b!4794991 (= e!2994043 e!2994044)))

(declare-fun res!2038478 () Bool)

(assert (=> b!4794991 (=> (not res!2038478) (not e!2994044))))

(declare-fun dynLambda!22075 (Int tuple2!56906) Bool)

(assert (=> b!4794991 (= res!2038478 (dynLambda!22075 lambda!231121 (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4794992 () Bool)

(assert (=> b!4794992 (= e!2994044 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231121))))

(assert (= (and d!1534318 (not res!2038477)) b!4794991))

(assert (= (and b!4794991 res!2038478) b!4794992))

(declare-fun b_lambda!186979 () Bool)

(assert (=> (not b_lambda!186979) (not b!4794991)))

(declare-fun m!5776328 () Bool)

(assert (=> b!4794991 m!5776328))

(declare-fun m!5776330 () Bool)

(assert (=> b!4794992 m!5776330))

(assert (=> start!494162 d!1534318))

(declare-fun d!1534320 () Bool)

(declare-fun isStrictlySorted!885 (List!54375) Bool)

(assert (=> d!1534320 (= (inv!69850 lm!2473) (isStrictlySorted!885 (toList!6948 lm!2473)))))

(declare-fun bs!1155348 () Bool)

(assert (= bs!1155348 d!1534320))

(declare-fun m!5776332 () Bool)

(assert (=> bs!1155348 m!5776332))

(assert (=> start!494162 d!1534320))

(declare-fun d!1534322 () Bool)

(declare-datatypes ((Option!13125 0))(
  ( (None!13124) (Some!13124 (v!48423 V!16070)) )
))
(declare-fun get!18501 (Option!13125) V!16070)

(declare-fun getValueByKey!2366 (List!54374 K!15824) Option!13125)

(assert (=> d!1534322 (= (apply!13005 lt!1952727 key!5896) (get!18501 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896)))))

(declare-fun bs!1155349 () Bool)

(assert (= bs!1155349 d!1534322))

(declare-fun m!5776334 () Bool)

(assert (=> bs!1155349 m!5776334))

(assert (=> bs!1155349 m!5776334))

(declare-fun m!5776336 () Bool)

(assert (=> bs!1155349 m!5776336))

(assert (=> b!4794972 d!1534322))

(declare-fun d!1534324 () Bool)

(declare-fun e!2994086 () Bool)

(assert (=> d!1534324 e!2994086))

(declare-fun res!2038505 () Bool)

(assert (=> d!1534324 (=> res!2038505 e!2994086)))

(declare-fun lt!1952778 () Bool)

(assert (=> d!1534324 (= res!2038505 (not lt!1952778))))

(declare-fun lt!1952776 () Bool)

(assert (=> d!1534324 (= lt!1952778 lt!1952776)))

(declare-fun lt!1952777 () Unit!140096)

(declare-fun e!2994085 () Unit!140096)

(assert (=> d!1534324 (= lt!1952777 e!2994085)))

(declare-fun c!817236 () Bool)

(assert (=> d!1534324 (= c!817236 lt!1952776)))

(declare-fun containsKey!3975 (List!54375 (_ BitVec 64)) Bool)

(assert (=> d!1534324 (= lt!1952776 (containsKey!3975 (toList!6948 lm!2473) lt!1952729))))

(assert (=> d!1534324 (= (contains!17884 lm!2473 lt!1952729) lt!1952778)))

(declare-fun b!4795047 () Bool)

(declare-fun lt!1952779 () Unit!140096)

(assert (=> b!4795047 (= e!2994085 lt!1952779)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2157 (List!54375 (_ BitVec 64)) Unit!140096)

(assert (=> b!4795047 (= lt!1952779 (lemmaContainsKeyImpliesGetValueByKeyDefined!2157 (toList!6948 lm!2473) lt!1952729))))

(declare-datatypes ((Option!13126 0))(
  ( (None!13125) (Some!13125 (v!48424 List!54374)) )
))
(declare-fun isDefined!10266 (Option!13126) Bool)

(declare-fun getValueByKey!2367 (List!54375 (_ BitVec 64)) Option!13126)

(assert (=> b!4795047 (isDefined!10266 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729))))

(declare-fun b!4795048 () Bool)

(declare-fun Unit!140103 () Unit!140096)

(assert (=> b!4795048 (= e!2994085 Unit!140103)))

(declare-fun b!4795049 () Bool)

(assert (=> b!4795049 (= e!2994086 (isDefined!10266 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729)))))

(assert (= (and d!1534324 c!817236) b!4795047))

(assert (= (and d!1534324 (not c!817236)) b!4795048))

(assert (= (and d!1534324 (not res!2038505)) b!4795049))

(declare-fun m!5776374 () Bool)

(assert (=> d!1534324 m!5776374))

(declare-fun m!5776376 () Bool)

(assert (=> b!4795047 m!5776376))

(declare-fun m!5776378 () Bool)

(assert (=> b!4795047 m!5776378))

(assert (=> b!4795047 m!5776378))

(declare-fun m!5776380 () Bool)

(assert (=> b!4795047 m!5776380))

(assert (=> b!4795049 m!5776378))

(assert (=> b!4795049 m!5776378))

(assert (=> b!4795049 m!5776380))

(assert (=> b!4794973 d!1534324))

(declare-fun d!1534336 () Bool)

(declare-fun res!2038515 () Bool)

(declare-fun e!2994097 () Bool)

(assert (=> d!1534336 (=> res!2038515 e!2994097)))

(declare-fun e!2994096 () Bool)

(assert (=> d!1534336 (= res!2038515 e!2994096)))

(declare-fun res!2038517 () Bool)

(assert (=> d!1534336 (=> (not res!2038517) (not e!2994096))))

(assert (=> d!1534336 (= res!2038517 ((_ is Cons!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534336 (= (containsKeyBiggerList!576 (toList!6948 lm!2473) key!5896) e!2994097)))

(declare-fun b!4795059 () Bool)

(assert (=> b!4795059 (= e!2994096 (containsKey!3972 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896))))

(declare-fun b!4795060 () Bool)

(declare-fun e!2994098 () Bool)

(assert (=> b!4795060 (= e!2994097 e!2994098)))

(declare-fun res!2038516 () Bool)

(assert (=> b!4795060 (=> (not res!2038516) (not e!2994098))))

(assert (=> b!4795060 (= res!2038516 ((_ is Cons!54251) (toList!6948 lm!2473)))))

(declare-fun b!4795061 () Bool)

(assert (=> b!4795061 (= e!2994098 (containsKeyBiggerList!576 (t!361825 (toList!6948 lm!2473)) key!5896))))

(assert (= (and d!1534336 res!2038517) b!4795059))

(assert (= (and d!1534336 (not res!2038515)) b!4795060))

(assert (= (and b!4795060 res!2038516) b!4795061))

(assert (=> b!4795059 m!5776290))

(declare-fun m!5776386 () Bool)

(assert (=> b!4795061 m!5776386))

(assert (=> b!4794973 d!1534336))

(declare-fun bs!1155357 () Bool)

(declare-fun d!1534340 () Bool)

(assert (= bs!1155357 (and d!1534340 start!494162)))

(declare-fun lambda!231132 () Int)

(assert (=> bs!1155357 (= lambda!231132 lambda!231121)))

(declare-fun bs!1155358 () Bool)

(assert (= bs!1155358 (and d!1534340 b!4794974)))

(assert (=> bs!1155358 (not (= lambda!231132 lambda!231122))))

(assert (=> d!1534340 (containsKeyBiggerList!576 (toList!6948 lm!2473) key!5896)))

(declare-fun lt!1952788 () Unit!140096)

(declare-fun choose!34573 (ListLongMap!5369 K!15824 Hashable!6934) Unit!140096)

(assert (=> d!1534340 (= lt!1952788 (choose!34573 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1534340 (forall!12275 (toList!6948 lm!2473) lambda!231132)))

(assert (=> d!1534340 (= (lemmaInLongMapThenContainsKeyBiggerList!316 lm!2473 key!5896 hashF!1559) lt!1952788)))

(declare-fun bs!1155359 () Bool)

(assert (= bs!1155359 d!1534340))

(assert (=> bs!1155359 m!5776292))

(declare-fun m!5776408 () Bool)

(assert (=> bs!1155359 m!5776408))

(declare-fun m!5776410 () Bool)

(assert (=> bs!1155359 m!5776410))

(assert (=> b!4794973 d!1534340))

(declare-fun bs!1155367 () Bool)

(declare-fun d!1534348 () Bool)

(assert (= bs!1155367 (and d!1534348 start!494162)))

(declare-fun lambda!231138 () Int)

(assert (=> bs!1155367 (= lambda!231138 lambda!231121)))

(declare-fun bs!1155368 () Bool)

(assert (= bs!1155368 (and d!1534348 b!4794974)))

(assert (=> bs!1155368 (not (= lambda!231138 lambda!231122))))

(declare-fun bs!1155369 () Bool)

(assert (= bs!1155369 (and d!1534348 d!1534340)))

(assert (=> bs!1155369 (= lambda!231138 lambda!231132)))

(declare-fun e!2994125 () Bool)

(assert (=> d!1534348 e!2994125))

(declare-fun res!2038538 () Bool)

(assert (=> d!1534348 (=> (not res!2038538) (not e!2994125))))

(assert (=> d!1534348 (= res!2038538 (contains!17884 lm!2473 (hash!4975 hashF!1559 key!5896)))))

(declare-fun lt!1952802 () Unit!140096)

(declare-fun choose!34574 (ListLongMap!5369 K!15824 Hashable!6934) Unit!140096)

(assert (=> d!1534348 (= lt!1952802 (choose!34574 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1534348 (forall!12275 (toList!6948 lm!2473) lambda!231138)))

(assert (=> d!1534348 (= (lemmaInGenericMapThenInLongMap!338 lm!2473 key!5896 hashF!1559) lt!1952802)))

(declare-fun b!4795094 () Bool)

(assert (=> b!4795094 (= e!2994125 (isDefined!10263 (getPair!906 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1534348 res!2038538) b!4795094))

(assert (=> d!1534348 m!5776294))

(assert (=> d!1534348 m!5776294))

(declare-fun m!5776448 () Bool)

(assert (=> d!1534348 m!5776448))

(declare-fun m!5776450 () Bool)

(assert (=> d!1534348 m!5776450))

(declare-fun m!5776452 () Bool)

(assert (=> d!1534348 m!5776452))

(assert (=> b!4795094 m!5776294))

(assert (=> b!4795094 m!5776294))

(declare-fun m!5776454 () Bool)

(assert (=> b!4795094 m!5776454))

(assert (=> b!4795094 m!5776454))

(declare-fun m!5776456 () Bool)

(assert (=> b!4795094 m!5776456))

(assert (=> b!4795094 m!5776456))

(declare-fun m!5776458 () Bool)

(assert (=> b!4795094 m!5776458))

(assert (=> b!4794973 d!1534348))

(declare-fun d!1534360 () Bool)

(declare-fun c!817248 () Bool)

(declare-fun e!2994134 () Bool)

(assert (=> d!1534360 (= c!817248 e!2994134)))

(declare-fun res!2038541 () Bool)

(assert (=> d!1534360 (=> (not res!2038541) (not e!2994134))))

(assert (=> d!1534360 (= res!2038541 ((_ is Cons!54251) (toList!6948 lm!2473)))))

(declare-fun e!2994133 () V!16070)

(assert (=> d!1534360 (= (getValue!122 (toList!6948 lm!2473) key!5896) e!2994133)))

(declare-fun b!4795109 () Bool)

(assert (=> b!4795109 (= e!2994134 (containsKey!3972 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896))))

(declare-fun b!4795107 () Bool)

(declare-fun get!18502 (Option!13122) tuple2!56904)

(assert (=> b!4795107 (= e!2994133 (_2!31746 (get!18502 (getPair!906 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896))))))

(declare-fun b!4795108 () Bool)

(assert (=> b!4795108 (= e!2994133 (getValue!122 (t!361825 (toList!6948 lm!2473)) key!5896))))

(assert (= (and d!1534360 res!2038541) b!4795109))

(assert (= (and d!1534360 c!817248) b!4795107))

(assert (= (and d!1534360 (not c!817248)) b!4795108))

(assert (=> b!4795109 m!5776290))

(declare-fun m!5776460 () Bool)

(assert (=> b!4795107 m!5776460))

(assert (=> b!4795107 m!5776460))

(declare-fun m!5776468 () Bool)

(assert (=> b!4795107 m!5776468))

(declare-fun m!5776472 () Bool)

(assert (=> b!4795108 m!5776472))

(assert (=> b!4794973 d!1534360))

(declare-fun d!1534364 () Bool)

(declare-fun hash!4977 (Hashable!6934 K!15824) (_ BitVec 64))

(assert (=> d!1534364 (= (hash!4975 hashF!1559 key!5896) (hash!4977 hashF!1559 key!5896))))

(declare-fun bs!1155376 () Bool)

(assert (= bs!1155376 d!1534364))

(declare-fun m!5776476 () Bool)

(assert (=> bs!1155376 m!5776476))

(assert (=> b!4794973 d!1534364))

(declare-fun b!4795153 () Bool)

(assert (=> b!4795153 false))

(declare-fun lt!1952850 () Unit!140096)

(declare-fun lt!1952847 () Unit!140096)

(assert (=> b!4795153 (= lt!1952850 lt!1952847)))

(declare-fun containsKey!3976 (List!54374 K!15824) Bool)

(assert (=> b!4795153 (containsKey!3976 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1084 (List!54374 K!15824) Unit!140096)

(assert (=> b!4795153 (= lt!1952847 (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(declare-fun e!2994166 () Unit!140096)

(declare-fun Unit!140106 () Unit!140096)

(assert (=> b!4795153 (= e!2994166 Unit!140106)))

(declare-fun b!4795154 () Bool)

(declare-fun Unit!140107 () Unit!140096)

(assert (=> b!4795154 (= e!2994166 Unit!140107)))

(declare-fun b!4795155 () Bool)

(declare-fun e!2994169 () Unit!140096)

(assert (=> b!4795155 (= e!2994169 e!2994166)))

(declare-fun c!817263 () Bool)

(declare-fun call!335133 () Bool)

(assert (=> b!4795155 (= c!817263 call!335133)))

(declare-fun b!4795156 () Bool)

(declare-datatypes ((List!54377 0))(
  ( (Nil!54253) (Cons!54253 (h!60683 K!15824) (t!361827 List!54377)) )
))
(declare-fun e!2994165 () List!54377)

(declare-fun getKeysList!1084 (List!54374) List!54377)

(assert (=> b!4795156 (= e!2994165 (getKeysList!1084 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))

(declare-fun b!4795157 () Bool)

(declare-fun e!2994168 () Bool)

(declare-fun contains!17887 (List!54377 K!15824) Bool)

(declare-fun keys!19817 (ListMap!6419) List!54377)

(assert (=> b!4795157 (= e!2994168 (not (contains!17887 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896)))))

(declare-fun b!4795158 () Bool)

(declare-fun e!2994167 () Bool)

(declare-fun e!2994164 () Bool)

(assert (=> b!4795158 (= e!2994167 e!2994164)))

(declare-fun res!2038559 () Bool)

(assert (=> b!4795158 (=> (not res!2038559) (not e!2994164))))

(declare-fun isDefined!10267 (Option!13125) Bool)

(assert (=> b!4795158 (= res!2038559 (isDefined!10267 (getValueByKey!2366 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896)))))

(declare-fun b!4795159 () Bool)

(assert (=> b!4795159 (= e!2994165 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))

(declare-fun d!1534368 () Bool)

(assert (=> d!1534368 e!2994167))

(declare-fun res!2038558 () Bool)

(assert (=> d!1534368 (=> res!2038558 e!2994167)))

(assert (=> d!1534368 (= res!2038558 e!2994168)))

(declare-fun res!2038557 () Bool)

(assert (=> d!1534368 (=> (not res!2038557) (not e!2994168))))

(declare-fun lt!1952848 () Bool)

(assert (=> d!1534368 (= res!2038557 (not lt!1952848))))

(declare-fun lt!1952853 () Bool)

(assert (=> d!1534368 (= lt!1952848 lt!1952853)))

(declare-fun lt!1952849 () Unit!140096)

(assert (=> d!1534368 (= lt!1952849 e!2994169)))

(declare-fun c!817265 () Bool)

(assert (=> d!1534368 (= c!817265 lt!1952853)))

(assert (=> d!1534368 (= lt!1952853 (containsKey!3976 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(assert (=> d!1534368 (= (contains!17882 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727) key!5896) lt!1952848)))

(declare-fun bm!335128 () Bool)

(assert (=> bm!335128 (= call!335133 (contains!17887 e!2994165 key!5896))))

(declare-fun c!817264 () Bool)

(assert (=> bm!335128 (= c!817264 c!817265)))

(declare-fun b!4795160 () Bool)

(assert (=> b!4795160 (= e!2994164 (contains!17887 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(declare-fun b!4795161 () Bool)

(declare-fun lt!1952846 () Unit!140096)

(assert (=> b!4795161 (= e!2994169 lt!1952846)))

(declare-fun lt!1952852 () Unit!140096)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (List!54374 K!15824) Unit!140096)

(assert (=> b!4795161 (= lt!1952852 (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(assert (=> b!4795161 (isDefined!10267 (getValueByKey!2366 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(declare-fun lt!1952851 () Unit!140096)

(assert (=> b!4795161 (= lt!1952851 lt!1952852)))

(declare-fun lemmaInListThenGetKeysListContains!1079 (List!54374 K!15824) Unit!140096)

(assert (=> b!4795161 (= lt!1952846 (lemmaInListThenGetKeysListContains!1079 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(assert (=> b!4795161 call!335133))

(assert (= (and d!1534368 c!817265) b!4795161))

(assert (= (and d!1534368 (not c!817265)) b!4795155))

(assert (= (and b!4795155 c!817263) b!4795153))

(assert (= (and b!4795155 (not c!817263)) b!4795154))

(assert (= (or b!4795161 b!4795155) bm!335128))

(assert (= (and bm!335128 c!817264) b!4795156))

(assert (= (and bm!335128 (not c!817264)) b!4795159))

(assert (= (and d!1534368 res!2038557) b!4795157))

(assert (= (and d!1534368 (not res!2038558)) b!4795158))

(assert (= (and b!4795158 res!2038559) b!4795160))

(declare-fun m!5776542 () Bool)

(assert (=> b!4795156 m!5776542))

(declare-fun m!5776544 () Bool)

(assert (=> d!1534368 m!5776544))

(declare-fun m!5776546 () Bool)

(assert (=> b!4795158 m!5776546))

(assert (=> b!4795158 m!5776546))

(declare-fun m!5776548 () Bool)

(assert (=> b!4795158 m!5776548))

(declare-fun m!5776550 () Bool)

(assert (=> bm!335128 m!5776550))

(assert (=> b!4795157 m!5776286))

(declare-fun m!5776552 () Bool)

(assert (=> b!4795157 m!5776552))

(assert (=> b!4795157 m!5776552))

(declare-fun m!5776554 () Bool)

(assert (=> b!4795157 m!5776554))

(assert (=> b!4795160 m!5776286))

(assert (=> b!4795160 m!5776552))

(assert (=> b!4795160 m!5776552))

(assert (=> b!4795160 m!5776554))

(assert (=> b!4795153 m!5776544))

(declare-fun m!5776556 () Bool)

(assert (=> b!4795153 m!5776556))

(assert (=> b!4795159 m!5776286))

(assert (=> b!4795159 m!5776552))

(declare-fun m!5776558 () Bool)

(assert (=> b!4795161 m!5776558))

(assert (=> b!4795161 m!5776546))

(assert (=> b!4795161 m!5776546))

(assert (=> b!4795161 m!5776548))

(declare-fun m!5776560 () Bool)

(assert (=> b!4795161 m!5776560))

(assert (=> b!4794963 d!1534368))

(declare-fun bs!1155410 () Bool)

(declare-fun b!4795226 () Bool)

(assert (= bs!1155410 (and b!4795226 b!4794974)))

(declare-fun lambda!231207 () Int)

(assert (=> bs!1155410 (not (= lambda!231207 lambda!231123))))

(assert (=> b!4795226 true))

(declare-fun bs!1155411 () Bool)

(declare-fun b!4795228 () Bool)

(assert (= bs!1155411 (and b!4795228 b!4794974)))

(declare-fun lambda!231208 () Int)

(assert (=> bs!1155411 (not (= lambda!231208 lambda!231123))))

(declare-fun bs!1155412 () Bool)

(assert (= bs!1155412 (and b!4795228 b!4795226)))

(assert (=> bs!1155412 (= lambda!231208 lambda!231207)))

(assert (=> b!4795228 true))

(declare-fun lambda!231209 () Int)

(assert (=> bs!1155411 (not (= lambda!231209 lambda!231123))))

(declare-fun lt!1952967 () ListMap!6419)

(assert (=> bs!1155412 (= (= lt!1952967 lt!1952727) (= lambda!231209 lambda!231207))))

(assert (=> b!4795228 (= (= lt!1952967 lt!1952727) (= lambda!231209 lambda!231208))))

(assert (=> b!4795228 true))

(declare-fun bs!1155413 () Bool)

(declare-fun d!1534382 () Bool)

(assert (= bs!1155413 (and d!1534382 b!4794974)))

(declare-fun lambda!231210 () Int)

(assert (=> bs!1155413 (not (= lambda!231210 lambda!231123))))

(declare-fun bs!1155414 () Bool)

(assert (= bs!1155414 (and d!1534382 b!4795226)))

(declare-fun lt!1952974 () ListMap!6419)

(assert (=> bs!1155414 (= (= lt!1952974 lt!1952727) (= lambda!231210 lambda!231207))))

(declare-fun bs!1155415 () Bool)

(assert (= bs!1155415 (and d!1534382 b!4795228)))

(assert (=> bs!1155415 (= (= lt!1952974 lt!1952727) (= lambda!231210 lambda!231208))))

(assert (=> bs!1155415 (= (= lt!1952974 lt!1952967) (= lambda!231210 lambda!231209))))

(assert (=> d!1534382 true))

(declare-fun bm!335144 () Bool)

(declare-fun call!335150 () Unit!140096)

(declare-fun lemmaContainsAllItsOwnKeys!946 (ListMap!6419) Unit!140096)

(assert (=> bm!335144 (= call!335150 (lemmaContainsAllItsOwnKeys!946 lt!1952727))))

(declare-fun e!2994209 () Bool)

(assert (=> d!1534382 e!2994209))

(declare-fun res!2038594 () Bool)

(assert (=> d!1534382 (=> (not res!2038594) (not e!2994209))))

(declare-fun forall!12277 (List!54374 Int) Bool)

(assert (=> d!1534382 (= res!2038594 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231210))))

(declare-fun e!2994210 () ListMap!6419)

(assert (=> d!1534382 (= lt!1952974 e!2994210)))

(declare-fun c!817277 () Bool)

(assert (=> d!1534382 (= c!817277 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534382 (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473))))))

(assert (=> d!1534382 (= (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727) lt!1952974)))

(declare-fun b!4795224 () Bool)

(declare-fun res!2038593 () Bool)

(assert (=> b!4795224 (=> (not res!2038593) (not e!2994209))))

(assert (=> b!4795224 (= res!2038593 (forall!12277 (toList!6947 lt!1952727) lambda!231210))))

(declare-fun b!4795225 () Bool)

(declare-fun e!2994211 () Bool)

(assert (=> b!4795225 (= e!2994211 (forall!12277 (toList!6947 lt!1952727) lambda!231209))))

(assert (=> b!4795226 (= e!2994210 lt!1952727)))

(declare-fun lt!1952973 () Unit!140096)

(assert (=> b!4795226 (= lt!1952973 call!335150)))

(declare-fun call!335149 () Bool)

(assert (=> b!4795226 call!335149))

(declare-fun lt!1952982 () Unit!140096)

(assert (=> b!4795226 (= lt!1952982 lt!1952973)))

(declare-fun call!335151 () Bool)

(assert (=> b!4795226 call!335151))

(declare-fun lt!1952971 () Unit!140096)

(declare-fun Unit!140111 () Unit!140096)

(assert (=> b!4795226 (= lt!1952971 Unit!140111)))

(declare-fun b!4795227 () Bool)

(declare-fun invariantList!1738 (List!54374) Bool)

(assert (=> b!4795227 (= e!2994209 (invariantList!1738 (toList!6947 lt!1952974)))))

(assert (=> b!4795228 (= e!2994210 lt!1952967)))

(declare-fun lt!1952985 () ListMap!6419)

(declare-fun +!2491 (ListMap!6419 tuple2!56904) ListMap!6419)

(assert (=> b!4795228 (= lt!1952985 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4795228 (= lt!1952967 (addToMapMapFromBucket!1715 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1952969 () Unit!140096)

(assert (=> b!4795228 (= lt!1952969 call!335150)))

(assert (=> b!4795228 (forall!12277 (toList!6947 lt!1952727) lambda!231208)))

(declare-fun lt!1952968 () Unit!140096)

(assert (=> b!4795228 (= lt!1952968 lt!1952969)))

(assert (=> b!4795228 (forall!12277 (toList!6947 lt!1952985) lambda!231209)))

(declare-fun lt!1952970 () Unit!140096)

(declare-fun Unit!140112 () Unit!140096)

(assert (=> b!4795228 (= lt!1952970 Unit!140112)))

(assert (=> b!4795228 call!335149))

(declare-fun lt!1952965 () Unit!140096)

(declare-fun Unit!140114 () Unit!140096)

(assert (=> b!4795228 (= lt!1952965 Unit!140114)))

(declare-fun lt!1952975 () Unit!140096)

(declare-fun Unit!140116 () Unit!140096)

(assert (=> b!4795228 (= lt!1952975 Unit!140116)))

(declare-fun lt!1952983 () Unit!140096)

(assert (=> b!4795228 (= lt!1952983 (forallContained!4182 (toList!6947 lt!1952985) lambda!231209 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4795228 (contains!17882 lt!1952985 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun lt!1952977 () Unit!140096)

(declare-fun Unit!140118 () Unit!140096)

(assert (=> b!4795228 (= lt!1952977 Unit!140118)))

(assert (=> b!4795228 (contains!17882 lt!1952967 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun lt!1952981 () Unit!140096)

(declare-fun Unit!140120 () Unit!140096)

(assert (=> b!4795228 (= lt!1952981 Unit!140120)))

(assert (=> b!4795228 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231209)))

(declare-fun lt!1952980 () Unit!140096)

(declare-fun Unit!140122 () Unit!140096)

(assert (=> b!4795228 (= lt!1952980 Unit!140122)))

(assert (=> b!4795228 call!335151))

(declare-fun lt!1952984 () Unit!140096)

(declare-fun Unit!140124 () Unit!140096)

(assert (=> b!4795228 (= lt!1952984 Unit!140124)))

(declare-fun lt!1952978 () Unit!140096)

(declare-fun Unit!140125 () Unit!140096)

(assert (=> b!4795228 (= lt!1952978 Unit!140125)))

(declare-fun lt!1952979 () Unit!140096)

(declare-fun addForallContainsKeyThenBeforeAdding!945 (ListMap!6419 ListMap!6419 K!15824 V!16070) Unit!140096)

(assert (=> b!4795228 (= lt!1952979 (addForallContainsKeyThenBeforeAdding!945 lt!1952727 lt!1952967 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795228 (forall!12277 (toList!6947 lt!1952727) lambda!231209)))

(declare-fun lt!1952972 () Unit!140096)

(assert (=> b!4795228 (= lt!1952972 lt!1952979)))

(assert (=> b!4795228 (forall!12277 (toList!6947 lt!1952727) lambda!231209)))

(declare-fun lt!1952976 () Unit!140096)

(declare-fun Unit!140128 () Unit!140096)

(assert (=> b!4795228 (= lt!1952976 Unit!140128)))

(declare-fun res!2038595 () Bool)

(assert (=> b!4795228 (= res!2038595 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231209))))

(assert (=> b!4795228 (=> (not res!2038595) (not e!2994211))))

(assert (=> b!4795228 e!2994211))

(declare-fun lt!1952966 () Unit!140096)

(declare-fun Unit!140130 () Unit!140096)

(assert (=> b!4795228 (= lt!1952966 Unit!140130)))

(declare-fun bm!335145 () Bool)

(assert (=> bm!335145 (= call!335151 (forall!12277 (ite c!817277 (toList!6947 lt!1952727) (toList!6947 lt!1952985)) (ite c!817277 lambda!231207 lambda!231209)))))

(declare-fun bm!335146 () Bool)

(assert (=> bm!335146 (= call!335149 (forall!12277 (ite c!817277 (toList!6947 lt!1952727) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (ite c!817277 lambda!231207 lambda!231209)))))

(assert (= (and d!1534382 c!817277) b!4795226))

(assert (= (and d!1534382 (not c!817277)) b!4795228))

(assert (= (and b!4795228 res!2038595) b!4795225))

(assert (= (or b!4795226 b!4795228) bm!335145))

(assert (= (or b!4795226 b!4795228) bm!335146))

(assert (= (or b!4795226 b!4795228) bm!335144))

(assert (= (and d!1534382 res!2038594) b!4795224))

(assert (= (and b!4795224 res!2038593) b!4795227))

(declare-fun m!5776622 () Bool)

(assert (=> b!4795228 m!5776622))

(declare-fun m!5776624 () Bool)

(assert (=> b!4795228 m!5776624))

(declare-fun m!5776626 () Bool)

(assert (=> b!4795228 m!5776626))

(declare-fun m!5776628 () Bool)

(assert (=> b!4795228 m!5776628))

(assert (=> b!4795228 m!5776622))

(declare-fun m!5776630 () Bool)

(assert (=> b!4795228 m!5776630))

(declare-fun m!5776632 () Bool)

(assert (=> b!4795228 m!5776632))

(assert (=> b!4795228 m!5776628))

(declare-fun m!5776634 () Bool)

(assert (=> b!4795228 m!5776634))

(declare-fun m!5776636 () Bool)

(assert (=> b!4795228 m!5776636))

(declare-fun m!5776638 () Bool)

(assert (=> b!4795228 m!5776638))

(assert (=> b!4795228 m!5776636))

(declare-fun m!5776640 () Bool)

(assert (=> b!4795228 m!5776640))

(declare-fun m!5776642 () Bool)

(assert (=> b!4795227 m!5776642))

(declare-fun m!5776644 () Bool)

(assert (=> b!4795224 m!5776644))

(declare-fun m!5776646 () Bool)

(assert (=> bm!335144 m!5776646))

(assert (=> b!4795225 m!5776636))

(declare-fun m!5776648 () Bool)

(assert (=> d!1534382 m!5776648))

(assert (=> d!1534382 m!5776284))

(declare-fun m!5776650 () Bool)

(assert (=> bm!335145 m!5776650))

(declare-fun m!5776652 () Bool)

(assert (=> bm!335146 m!5776652))

(assert (=> b!4794963 d!1534382))

(declare-fun d!1534398 () Bool)

(declare-fun isEmpty!29463 (Option!13122) Bool)

(assert (=> d!1534398 (= (isDefined!10263 (getPair!906 (apply!13004 lm!2473 lt!1952729) key!5896)) (not (isEmpty!29463 (getPair!906 (apply!13004 lm!2473 lt!1952729) key!5896))))))

(declare-fun bs!1155416 () Bool)

(assert (= bs!1155416 d!1534398))

(assert (=> bs!1155416 m!5776322))

(declare-fun m!5776654 () Bool)

(assert (=> bs!1155416 m!5776654))

(assert (=> b!4794969 d!1534398))

(declare-fun b!4795247 () Bool)

(declare-fun e!2994224 () Option!13122)

(assert (=> b!4795247 (= e!2994224 (Some!13121 (h!60680 (apply!13004 lm!2473 lt!1952729))))))

(declare-fun b!4795249 () Bool)

(declare-fun e!2994222 () Option!13122)

(assert (=> b!4795249 (= e!2994224 e!2994222)))

(declare-fun c!817282 () Bool)

(assert (=> b!4795249 (= c!817282 ((_ is Cons!54250) (apply!13004 lm!2473 lt!1952729)))))

(declare-fun e!2994223 () Bool)

(declare-fun lt!1952988 () Option!13122)

(declare-fun b!4795250 () Bool)

(assert (=> b!4795250 (= e!2994223 (contains!17883 (apply!13004 lm!2473 lt!1952729) (get!18502 lt!1952988)))))

(declare-fun e!2994225 () Bool)

(declare-fun b!4795251 () Bool)

(assert (=> b!4795251 (= e!2994225 (not (containsKey!3972 (apply!13004 lm!2473 lt!1952729) key!5896)))))

(declare-fun b!4795252 () Bool)

(assert (=> b!4795252 (= e!2994222 (getPair!906 (t!361824 (apply!13004 lm!2473 lt!1952729)) key!5896))))

(declare-fun b!4795253 () Bool)

(declare-fun e!2994226 () Bool)

(assert (=> b!4795253 (= e!2994226 e!2994223)))

(declare-fun res!2038605 () Bool)

(assert (=> b!4795253 (=> (not res!2038605) (not e!2994223))))

(assert (=> b!4795253 (= res!2038605 (isDefined!10263 lt!1952988))))

(declare-fun b!4795254 () Bool)

(declare-fun res!2038606 () Bool)

(assert (=> b!4795254 (=> (not res!2038606) (not e!2994223))))

(assert (=> b!4795254 (= res!2038606 (= (_1!31746 (get!18502 lt!1952988)) key!5896))))

(declare-fun b!4795248 () Bool)

(assert (=> b!4795248 (= e!2994222 None!13121)))

(declare-fun d!1534400 () Bool)

(assert (=> d!1534400 e!2994226))

(declare-fun res!2038604 () Bool)

(assert (=> d!1534400 (=> res!2038604 e!2994226)))

(assert (=> d!1534400 (= res!2038604 e!2994225)))

(declare-fun res!2038607 () Bool)

(assert (=> d!1534400 (=> (not res!2038607) (not e!2994225))))

(assert (=> d!1534400 (= res!2038607 (isEmpty!29463 lt!1952988))))

(assert (=> d!1534400 (= lt!1952988 e!2994224)))

(declare-fun c!817283 () Bool)

(assert (=> d!1534400 (= c!817283 (and ((_ is Cons!54250) (apply!13004 lm!2473 lt!1952729)) (= (_1!31746 (h!60680 (apply!13004 lm!2473 lt!1952729))) key!5896)))))

(assert (=> d!1534400 (noDuplicateKeys!2347 (apply!13004 lm!2473 lt!1952729))))

(assert (=> d!1534400 (= (getPair!906 (apply!13004 lm!2473 lt!1952729) key!5896) lt!1952988)))

(assert (= (and d!1534400 c!817283) b!4795247))

(assert (= (and d!1534400 (not c!817283)) b!4795249))

(assert (= (and b!4795249 c!817282) b!4795252))

(assert (= (and b!4795249 (not c!817282)) b!4795248))

(assert (= (and d!1534400 res!2038607) b!4795251))

(assert (= (and d!1534400 (not res!2038604)) b!4795253))

(assert (= (and b!4795253 res!2038605) b!4795254))

(assert (= (and b!4795254 res!2038606) b!4795250))

(declare-fun m!5776656 () Bool)

(assert (=> b!4795253 m!5776656))

(declare-fun m!5776658 () Bool)

(assert (=> b!4795254 m!5776658))

(declare-fun m!5776660 () Bool)

(assert (=> d!1534400 m!5776660))

(assert (=> d!1534400 m!5776320))

(declare-fun m!5776662 () Bool)

(assert (=> d!1534400 m!5776662))

(declare-fun m!5776664 () Bool)

(assert (=> b!4795252 m!5776664))

(assert (=> b!4795251 m!5776320))

(declare-fun m!5776666 () Bool)

(assert (=> b!4795251 m!5776666))

(assert (=> b!4795250 m!5776658))

(assert (=> b!4795250 m!5776320))

(assert (=> b!4795250 m!5776658))

(declare-fun m!5776668 () Bool)

(assert (=> b!4795250 m!5776668))

(assert (=> b!4794969 d!1534400))

(declare-fun d!1534402 () Bool)

(declare-fun get!18503 (Option!13126) List!54374)

(assert (=> d!1534402 (= (apply!13004 lm!2473 lt!1952729) (get!18503 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729)))))

(declare-fun bs!1155417 () Bool)

(assert (= bs!1155417 d!1534402))

(assert (=> bs!1155417 m!5776378))

(assert (=> bs!1155417 m!5776378))

(declare-fun m!5776670 () Bool)

(assert (=> bs!1155417 m!5776670))

(assert (=> b!4794969 d!1534402))

(declare-fun b!4795255 () Bool)

(assert (=> b!4795255 false))

(declare-fun lt!1952993 () Unit!140096)

(declare-fun lt!1952990 () Unit!140096)

(assert (=> b!4795255 (= lt!1952993 lt!1952990)))

(assert (=> b!4795255 (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896)))

(assert (=> b!4795255 (= lt!1952990 (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(declare-fun e!2994229 () Unit!140096)

(declare-fun Unit!140132 () Unit!140096)

(assert (=> b!4795255 (= e!2994229 Unit!140132)))

(declare-fun b!4795256 () Bool)

(declare-fun Unit!140133 () Unit!140096)

(assert (=> b!4795256 (= e!2994229 Unit!140133)))

(declare-fun b!4795257 () Bool)

(declare-fun e!2994232 () Unit!140096)

(assert (=> b!4795257 (= e!2994232 e!2994229)))

(declare-fun c!817284 () Bool)

(declare-fun call!335152 () Bool)

(assert (=> b!4795257 (= c!817284 call!335152)))

(declare-fun b!4795258 () Bool)

(declare-fun e!2994228 () List!54377)

(assert (=> b!4795258 (= e!2994228 (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))

(declare-fun b!4795259 () Bool)

(declare-fun e!2994231 () Bool)

(assert (=> b!4795259 (= e!2994231 (not (contains!17887 (keys!19817 (extractMap!2461 (toList!6948 lm!2473))) key!5896)))))

(declare-fun b!4795260 () Bool)

(declare-fun e!2994230 () Bool)

(declare-fun e!2994227 () Bool)

(assert (=> b!4795260 (= e!2994230 e!2994227)))

(declare-fun res!2038610 () Bool)

(assert (=> b!4795260 (=> (not res!2038610) (not e!2994227))))

(assert (=> b!4795260 (= res!2038610 (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896)))))

(declare-fun b!4795261 () Bool)

(assert (=> b!4795261 (= e!2994228 (keys!19817 (extractMap!2461 (toList!6948 lm!2473))))))

(declare-fun d!1534404 () Bool)

(assert (=> d!1534404 e!2994230))

(declare-fun res!2038609 () Bool)

(assert (=> d!1534404 (=> res!2038609 e!2994230)))

(assert (=> d!1534404 (= res!2038609 e!2994231)))

(declare-fun res!2038608 () Bool)

(assert (=> d!1534404 (=> (not res!2038608) (not e!2994231))))

(declare-fun lt!1952991 () Bool)

(assert (=> d!1534404 (= res!2038608 (not lt!1952991))))

(declare-fun lt!1952996 () Bool)

(assert (=> d!1534404 (= lt!1952991 lt!1952996)))

(declare-fun lt!1952992 () Unit!140096)

(assert (=> d!1534404 (= lt!1952992 e!2994232)))

(declare-fun c!817286 () Bool)

(assert (=> d!1534404 (= c!817286 lt!1952996)))

(assert (=> d!1534404 (= lt!1952996 (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(assert (=> d!1534404 (= (contains!17882 (extractMap!2461 (toList!6948 lm!2473)) key!5896) lt!1952991)))

(declare-fun bm!335147 () Bool)

(assert (=> bm!335147 (= call!335152 (contains!17887 e!2994228 key!5896))))

(declare-fun c!817285 () Bool)

(assert (=> bm!335147 (= c!817285 c!817286)))

(declare-fun b!4795262 () Bool)

(assert (=> b!4795262 (= e!2994227 (contains!17887 (keys!19817 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(declare-fun b!4795263 () Bool)

(declare-fun lt!1952989 () Unit!140096)

(assert (=> b!4795263 (= e!2994232 lt!1952989)))

(declare-fun lt!1952995 () Unit!140096)

(assert (=> b!4795263 (= lt!1952995 (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(assert (=> b!4795263 (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(declare-fun lt!1952994 () Unit!140096)

(assert (=> b!4795263 (= lt!1952994 lt!1952995)))

(assert (=> b!4795263 (= lt!1952989 (lemmaInListThenGetKeysListContains!1079 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(assert (=> b!4795263 call!335152))

(assert (= (and d!1534404 c!817286) b!4795263))

(assert (= (and d!1534404 (not c!817286)) b!4795257))

(assert (= (and b!4795257 c!817284) b!4795255))

(assert (= (and b!4795257 (not c!817284)) b!4795256))

(assert (= (or b!4795263 b!4795257) bm!335147))

(assert (= (and bm!335147 c!817285) b!4795258))

(assert (= (and bm!335147 (not c!817285)) b!4795261))

(assert (= (and d!1534404 res!2038608) b!4795259))

(assert (= (and d!1534404 (not res!2038609)) b!4795260))

(assert (= (and b!4795260 res!2038610) b!4795262))

(declare-fun m!5776672 () Bool)

(assert (=> b!4795258 m!5776672))

(declare-fun m!5776674 () Bool)

(assert (=> d!1534404 m!5776674))

(declare-fun m!5776676 () Bool)

(assert (=> b!4795260 m!5776676))

(assert (=> b!4795260 m!5776676))

(declare-fun m!5776678 () Bool)

(assert (=> b!4795260 m!5776678))

(declare-fun m!5776680 () Bool)

(assert (=> bm!335147 m!5776680))

(assert (=> b!4795259 m!5776304))

(declare-fun m!5776682 () Bool)

(assert (=> b!4795259 m!5776682))

(assert (=> b!4795259 m!5776682))

(declare-fun m!5776684 () Bool)

(assert (=> b!4795259 m!5776684))

(assert (=> b!4795262 m!5776304))

(assert (=> b!4795262 m!5776682))

(assert (=> b!4795262 m!5776682))

(assert (=> b!4795262 m!5776684))

(assert (=> b!4795255 m!5776674))

(declare-fun m!5776686 () Bool)

(assert (=> b!4795255 m!5776686))

(assert (=> b!4795261 m!5776304))

(assert (=> b!4795261 m!5776682))

(declare-fun m!5776688 () Bool)

(assert (=> b!4795263 m!5776688))

(assert (=> b!4795263 m!5776676))

(assert (=> b!4795263 m!5776676))

(assert (=> b!4795263 m!5776678))

(declare-fun m!5776690 () Bool)

(assert (=> b!4795263 m!5776690))

(assert (=> b!4794971 d!1534404))

(declare-fun bs!1155418 () Bool)

(declare-fun d!1534406 () Bool)

(assert (= bs!1155418 (and d!1534406 start!494162)))

(declare-fun lambda!231213 () Int)

(assert (=> bs!1155418 (= lambda!231213 lambda!231121)))

(declare-fun bs!1155419 () Bool)

(assert (= bs!1155419 (and d!1534406 b!4794974)))

(assert (=> bs!1155419 (not (= lambda!231213 lambda!231122))))

(declare-fun bs!1155420 () Bool)

(assert (= bs!1155420 (and d!1534406 d!1534340)))

(assert (=> bs!1155420 (= lambda!231213 lambda!231132)))

(declare-fun bs!1155421 () Bool)

(assert (= bs!1155421 (and d!1534406 d!1534348)))

(assert (=> bs!1155421 (= lambda!231213 lambda!231138)))

(declare-fun lt!1952999 () ListMap!6419)

(assert (=> d!1534406 (invariantList!1738 (toList!6947 lt!1952999))))

(declare-fun e!2994235 () ListMap!6419)

(assert (=> d!1534406 (= lt!1952999 e!2994235)))

(declare-fun c!817289 () Bool)

(assert (=> d!1534406 (= c!817289 ((_ is Cons!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534406 (forall!12275 (toList!6948 lm!2473) lambda!231213)))

(assert (=> d!1534406 (= (extractMap!2461 (toList!6948 lm!2473)) lt!1952999)))

(declare-fun b!4795268 () Bool)

(assert (=> b!4795268 (= e!2994235 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (toList!6948 lm!2473)))))))

(declare-fun b!4795269 () Bool)

(assert (=> b!4795269 (= e!2994235 (ListMap!6420 Nil!54250))))

(assert (= (and d!1534406 c!817289) b!4795268))

(assert (= (and d!1534406 (not c!817289)) b!4795269))

(declare-fun m!5776692 () Bool)

(assert (=> d!1534406 m!5776692))

(declare-fun m!5776694 () Bool)

(assert (=> d!1534406 m!5776694))

(assert (=> b!4795268 m!5776282))

(assert (=> b!4795268 m!5776282))

(declare-fun m!5776696 () Bool)

(assert (=> b!4795268 m!5776696))

(assert (=> b!4794971 d!1534406))

(declare-fun d!1534408 () Bool)

(declare-fun lt!1953002 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9718 (List!54374) (InoxSet tuple2!56904))

(assert (=> d!1534408 (= lt!1953002 (select (content!9718 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lt!1952726))))

(declare-fun e!2994241 () Bool)

(assert (=> d!1534408 (= lt!1953002 e!2994241)))

(declare-fun res!2038616 () Bool)

(assert (=> d!1534408 (=> (not res!2038616) (not e!2994241))))

(assert (=> d!1534408 (= res!2038616 ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534408 (= (contains!17883 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952726) lt!1953002)))

(declare-fun b!4795274 () Bool)

(declare-fun e!2994240 () Bool)

(assert (=> b!4795274 (= e!2994241 e!2994240)))

(declare-fun res!2038615 () Bool)

(assert (=> b!4795274 (=> res!2038615 e!2994240)))

(assert (=> b!4795274 (= res!2038615 (= (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lt!1952726))))

(declare-fun b!4795275 () Bool)

(assert (=> b!4795275 (= e!2994240 (contains!17883 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lt!1952726))))

(assert (= (and d!1534408 res!2038616) b!4795274))

(assert (= (and b!4795274 (not res!2038615)) b!4795275))

(declare-fun m!5776698 () Bool)

(assert (=> d!1534408 m!5776698))

(declare-fun m!5776700 () Bool)

(assert (=> d!1534408 m!5776700))

(declare-fun m!5776702 () Bool)

(assert (=> b!4795275 m!5776702))

(assert (=> b!4794966 d!1534408))

(declare-fun bs!1155422 () Bool)

(declare-fun d!1534410 () Bool)

(assert (= bs!1155422 (and d!1534410 d!1534348)))

(declare-fun lambda!231216 () Int)

(assert (=> bs!1155422 (not (= lambda!231216 lambda!231138))))

(declare-fun bs!1155423 () Bool)

(assert (= bs!1155423 (and d!1534410 start!494162)))

(assert (=> bs!1155423 (not (= lambda!231216 lambda!231121))))

(declare-fun bs!1155424 () Bool)

(assert (= bs!1155424 (and d!1534410 d!1534340)))

(assert (=> bs!1155424 (not (= lambda!231216 lambda!231132))))

(declare-fun bs!1155425 () Bool)

(assert (= bs!1155425 (and d!1534410 b!4794974)))

(assert (=> bs!1155425 (= lambda!231216 lambda!231122)))

(declare-fun bs!1155426 () Bool)

(assert (= bs!1155426 (and d!1534410 d!1534406)))

(assert (=> bs!1155426 (not (= lambda!231216 lambda!231213))))

(assert (=> d!1534410 true))

(assert (=> d!1534410 (= (allKeysSameHashInMap!2339 lm!2473 hashF!1559) (forall!12275 (toList!6948 lm!2473) lambda!231216))))

(declare-fun bs!1155427 () Bool)

(assert (= bs!1155427 d!1534410))

(declare-fun m!5776704 () Bool)

(assert (=> bs!1155427 m!5776704))

(assert (=> b!4794968 d!1534410))

(declare-fun bs!1155428 () Bool)

(declare-fun d!1534412 () Bool)

(assert (= bs!1155428 (and d!1534412 d!1534348)))

(declare-fun lambda!231217 () Int)

(assert (=> bs!1155428 (= lambda!231217 lambda!231138)))

(declare-fun bs!1155429 () Bool)

(assert (= bs!1155429 (and d!1534412 start!494162)))

(assert (=> bs!1155429 (= lambda!231217 lambda!231121)))

(declare-fun bs!1155430 () Bool)

(assert (= bs!1155430 (and d!1534412 d!1534410)))

(assert (=> bs!1155430 (not (= lambda!231217 lambda!231216))))

(declare-fun bs!1155431 () Bool)

(assert (= bs!1155431 (and d!1534412 d!1534340)))

(assert (=> bs!1155431 (= lambda!231217 lambda!231132)))

(declare-fun bs!1155432 () Bool)

(assert (= bs!1155432 (and d!1534412 b!4794974)))

(assert (=> bs!1155432 (not (= lambda!231217 lambda!231122))))

(declare-fun bs!1155433 () Bool)

(assert (= bs!1155433 (and d!1534412 d!1534406)))

(assert (=> bs!1155433 (= lambda!231217 lambda!231213)))

(declare-fun lt!1953003 () ListMap!6419)

(assert (=> d!1534412 (invariantList!1738 (toList!6947 lt!1953003))))

(declare-fun e!2994242 () ListMap!6419)

(assert (=> d!1534412 (= lt!1953003 e!2994242)))

(declare-fun c!817290 () Bool)

(assert (=> d!1534412 (= c!817290 ((_ is Cons!54251) (toList!6948 lt!1952728)))))

(assert (=> d!1534412 (forall!12275 (toList!6948 lt!1952728) lambda!231217)))

(assert (=> d!1534412 (= (extractMap!2461 (toList!6948 lt!1952728)) lt!1953003)))

(declare-fun b!4795276 () Bool)

(assert (=> b!4795276 (= e!2994242 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lt!1952728))) (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))))))

(declare-fun b!4795277 () Bool)

(assert (=> b!4795277 (= e!2994242 (ListMap!6420 Nil!54250))))

(assert (= (and d!1534412 c!817290) b!4795276))

(assert (= (and d!1534412 (not c!817290)) b!4795277))

(declare-fun m!5776706 () Bool)

(assert (=> d!1534412 m!5776706))

(declare-fun m!5776708 () Bool)

(assert (=> d!1534412 m!5776708))

(declare-fun m!5776710 () Bool)

(assert (=> b!4795276 m!5776710))

(assert (=> b!4795276 m!5776710))

(declare-fun m!5776712 () Bool)

(assert (=> b!4795276 m!5776712))

(assert (=> b!4794974 d!1534412))

(declare-fun d!1534414 () Bool)

(declare-fun res!2038621 () Bool)

(declare-fun e!2994247 () Bool)

(assert (=> d!1534414 (=> res!2038621 e!2994247)))

(assert (=> d!1534414 (= res!2038621 (not ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> d!1534414 (= (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473)))) e!2994247)))

(declare-fun b!4795282 () Bool)

(declare-fun e!2994248 () Bool)

(assert (=> b!4795282 (= e!2994247 e!2994248)))

(declare-fun res!2038622 () Bool)

(assert (=> b!4795282 (=> (not res!2038622) (not e!2994248))))

(assert (=> b!4795282 (= res!2038622 (not (containsKey!3972 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795283 () Bool)

(assert (=> b!4795283 (= e!2994248 (noDuplicateKeys!2347 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (= (and d!1534414 (not res!2038621)) b!4795282))

(assert (= (and b!4795282 res!2038622) b!4795283))

(declare-fun m!5776714 () Bool)

(assert (=> b!4795282 m!5776714))

(declare-fun m!5776716 () Bool)

(assert (=> b!4795283 m!5776716))

(assert (=> b!4794974 d!1534414))

(declare-fun d!1534416 () Bool)

(assert (=> d!1534416 (dynLambda!22075 lambda!231122 (h!60681 (toList!6948 lm!2473)))))

(declare-fun lt!1953006 () Unit!140096)

(declare-fun choose!34575 (List!54375 Int tuple2!56906) Unit!140096)

(assert (=> d!1534416 (= lt!1953006 (choose!34575 (toList!6948 lm!2473) lambda!231122 (h!60681 (toList!6948 lm!2473))))))

(declare-fun e!2994251 () Bool)

(assert (=> d!1534416 e!2994251))

(declare-fun res!2038625 () Bool)

(assert (=> d!1534416 (=> (not res!2038625) (not e!2994251))))

(assert (=> d!1534416 (= res!2038625 (forall!12275 (toList!6948 lm!2473) lambda!231122))))

(assert (=> d!1534416 (= (forallContained!4183 (toList!6948 lm!2473) lambda!231122 (h!60681 (toList!6948 lm!2473))) lt!1953006)))

(declare-fun b!4795286 () Bool)

(declare-fun contains!17888 (List!54375 tuple2!56906) Bool)

(assert (=> b!4795286 (= e!2994251 (contains!17888 (toList!6948 lm!2473) (h!60681 (toList!6948 lm!2473))))))

(assert (= (and d!1534416 res!2038625) b!4795286))

(declare-fun b_lambda!186993 () Bool)

(assert (=> (not b_lambda!186993) (not d!1534416)))

(declare-fun m!5776718 () Bool)

(assert (=> d!1534416 m!5776718))

(declare-fun m!5776720 () Bool)

(assert (=> d!1534416 m!5776720))

(declare-fun m!5776722 () Bool)

(assert (=> d!1534416 m!5776722))

(declare-fun m!5776724 () Bool)

(assert (=> b!4795286 m!5776724))

(assert (=> b!4794974 d!1534416))

(declare-fun d!1534418 () Bool)

(declare-fun tail!9287 (List!54375) List!54375)

(assert (=> d!1534418 (= (tail!9285 lm!2473) (ListLongMap!5370 (tail!9287 (toList!6948 lm!2473))))))

(declare-fun bs!1155434 () Bool)

(assert (= bs!1155434 d!1534418))

(declare-fun m!5776726 () Bool)

(assert (=> bs!1155434 m!5776726))

(assert (=> b!4794974 d!1534418))

(declare-fun bs!1155435 () Bool)

(declare-fun d!1534420 () Bool)

(assert (= bs!1155435 (and d!1534420 d!1534348)))

(declare-fun lambda!231218 () Int)

(assert (=> bs!1155435 (= lambda!231218 lambda!231138)))

(declare-fun bs!1155436 () Bool)

(assert (= bs!1155436 (and d!1534420 start!494162)))

(assert (=> bs!1155436 (= lambda!231218 lambda!231121)))

(declare-fun bs!1155437 () Bool)

(assert (= bs!1155437 (and d!1534420 d!1534410)))

(assert (=> bs!1155437 (not (= lambda!231218 lambda!231216))))

(declare-fun bs!1155438 () Bool)

(assert (= bs!1155438 (and d!1534420 d!1534340)))

(assert (=> bs!1155438 (= lambda!231218 lambda!231132)))

(declare-fun bs!1155439 () Bool)

(assert (= bs!1155439 (and d!1534420 b!4794974)))

(assert (=> bs!1155439 (not (= lambda!231218 lambda!231122))))

(declare-fun bs!1155440 () Bool)

(assert (= bs!1155440 (and d!1534420 d!1534406)))

(assert (=> bs!1155440 (= lambda!231218 lambda!231213)))

(declare-fun bs!1155441 () Bool)

(assert (= bs!1155441 (and d!1534420 d!1534412)))

(assert (=> bs!1155441 (= lambda!231218 lambda!231217)))

(declare-fun lt!1953007 () ListMap!6419)

(assert (=> d!1534420 (invariantList!1738 (toList!6947 lt!1953007))))

(declare-fun e!2994252 () ListMap!6419)

(assert (=> d!1534420 (= lt!1953007 e!2994252)))

(declare-fun c!817291 () Bool)

(assert (=> d!1534420 (= c!817291 ((_ is Cons!54251) (t!361825 (toList!6948 lm!2473))))))

(assert (=> d!1534420 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231218)))

(assert (=> d!1534420 (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953007)))

(declare-fun b!4795287 () Bool)

(assert (=> b!4795287 (= e!2994252 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))))))

(declare-fun b!4795288 () Bool)

(assert (=> b!4795288 (= e!2994252 (ListMap!6420 Nil!54250))))

(assert (= (and d!1534420 c!817291) b!4795287))

(assert (= (and d!1534420 (not c!817291)) b!4795288))

(declare-fun m!5776728 () Bool)

(assert (=> d!1534420 m!5776728))

(declare-fun m!5776730 () Bool)

(assert (=> d!1534420 m!5776730))

(declare-fun m!5776732 () Bool)

(assert (=> b!4795287 m!5776732))

(assert (=> b!4795287 m!5776732))

(declare-fun m!5776734 () Bool)

(assert (=> b!4795287 m!5776734))

(assert (=> b!4794974 d!1534420))

(declare-fun d!1534422 () Bool)

(declare-fun dynLambda!22076 (Int tuple2!56904) Bool)

(assert (=> d!1534422 (dynLambda!22076 lambda!231123 lt!1952726)))

(declare-fun lt!1953010 () Unit!140096)

(declare-fun choose!34576 (List!54374 Int tuple2!56904) Unit!140096)

(assert (=> d!1534422 (= lt!1953010 (choose!34576 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231123 lt!1952726))))

(declare-fun e!2994255 () Bool)

(assert (=> d!1534422 e!2994255))

(declare-fun res!2038628 () Bool)

(assert (=> d!1534422 (=> (not res!2038628) (not e!2994255))))

(assert (=> d!1534422 (= res!2038628 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231123))))

(assert (=> d!1534422 (= (forallContained!4182 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231123 lt!1952726) lt!1953010)))

(declare-fun b!4795291 () Bool)

(assert (=> b!4795291 (= e!2994255 (contains!17883 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952726))))

(assert (= (and d!1534422 res!2038628) b!4795291))

(declare-fun b_lambda!186995 () Bool)

(assert (=> (not b_lambda!186995) (not d!1534422)))

(declare-fun m!5776736 () Bool)

(assert (=> d!1534422 m!5776736))

(declare-fun m!5776738 () Bool)

(assert (=> d!1534422 m!5776738))

(declare-fun m!5776740 () Bool)

(assert (=> d!1534422 m!5776740))

(assert (=> b!4795291 m!5776312))

(assert (=> b!4794974 d!1534422))

(declare-fun bs!1155442 () Bool)

(declare-fun d!1534424 () Bool)

(assert (= bs!1155442 (and d!1534424 d!1534420)))

(declare-fun lambda!231221 () Int)

(assert (=> bs!1155442 (= lambda!231221 lambda!231218)))

(declare-fun bs!1155443 () Bool)

(assert (= bs!1155443 (and d!1534424 d!1534348)))

(assert (=> bs!1155443 (= lambda!231221 lambda!231138)))

(declare-fun bs!1155444 () Bool)

(assert (= bs!1155444 (and d!1534424 start!494162)))

(assert (=> bs!1155444 (= lambda!231221 lambda!231121)))

(declare-fun bs!1155445 () Bool)

(assert (= bs!1155445 (and d!1534424 d!1534410)))

(assert (=> bs!1155445 (not (= lambda!231221 lambda!231216))))

(declare-fun bs!1155446 () Bool)

(assert (= bs!1155446 (and d!1534424 d!1534340)))

(assert (=> bs!1155446 (= lambda!231221 lambda!231132)))

(declare-fun bs!1155447 () Bool)

(assert (= bs!1155447 (and d!1534424 b!4794974)))

(assert (=> bs!1155447 (not (= lambda!231221 lambda!231122))))

(declare-fun bs!1155448 () Bool)

(assert (= bs!1155448 (and d!1534424 d!1534406)))

(assert (=> bs!1155448 (= lambda!231221 lambda!231213)))

(declare-fun bs!1155449 () Bool)

(assert (= bs!1155449 (and d!1534424 d!1534412)))

(assert (=> bs!1155449 (= lambda!231221 lambda!231217)))

(assert (=> d!1534424 (not (contains!17882 (extractMap!2461 (toList!6948 lt!1952728)) key!5896))))

(declare-fun lt!1953013 () Unit!140096)

(declare-fun choose!34577 (ListLongMap!5369 K!15824 Hashable!6934) Unit!140096)

(assert (=> d!1534424 (= lt!1953013 (choose!34577 lt!1952728 key!5896 hashF!1559))))

(assert (=> d!1534424 (forall!12275 (toList!6948 lt!1952728) lambda!231221)))

(assert (=> d!1534424 (= (lemmaHashNotInLongMapThenNotInGenerated!40 lt!1952728 key!5896 hashF!1559) lt!1953013)))

(declare-fun bs!1155450 () Bool)

(assert (= bs!1155450 d!1534424))

(assert (=> bs!1155450 m!5776270))

(assert (=> bs!1155450 m!5776270))

(assert (=> bs!1155450 m!5776272))

(declare-fun m!5776742 () Bool)

(assert (=> bs!1155450 m!5776742))

(declare-fun m!5776744 () Bool)

(assert (=> bs!1155450 m!5776744))

(assert (=> b!4794974 d!1534424))

(declare-fun b!4795292 () Bool)

(assert (=> b!4795292 false))

(declare-fun lt!1953018 () Unit!140096)

(declare-fun lt!1953015 () Unit!140096)

(assert (=> b!4795292 (= lt!1953018 lt!1953015)))

(assert (=> b!4795292 (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896)))

(assert (=> b!4795292 (= lt!1953015 (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(declare-fun e!2994258 () Unit!140096)

(declare-fun Unit!140134 () Unit!140096)

(assert (=> b!4795292 (= e!2994258 Unit!140134)))

(declare-fun b!4795293 () Bool)

(declare-fun Unit!140135 () Unit!140096)

(assert (=> b!4795293 (= e!2994258 Unit!140135)))

(declare-fun b!4795294 () Bool)

(declare-fun e!2994261 () Unit!140096)

(assert (=> b!4795294 (= e!2994261 e!2994258)))

(declare-fun c!817292 () Bool)

(declare-fun call!335153 () Bool)

(assert (=> b!4795294 (= c!817292 call!335153)))

(declare-fun b!4795295 () Bool)

(declare-fun e!2994257 () List!54377)

(assert (=> b!4795295 (= e!2994257 (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))

(declare-fun b!4795296 () Bool)

(declare-fun e!2994260 () Bool)

(assert (=> b!4795296 (= e!2994260 (not (contains!17887 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728))) key!5896)))))

(declare-fun b!4795297 () Bool)

(declare-fun e!2994259 () Bool)

(declare-fun e!2994256 () Bool)

(assert (=> b!4795297 (= e!2994259 e!2994256)))

(declare-fun res!2038631 () Bool)

(assert (=> b!4795297 (=> (not res!2038631) (not e!2994256))))

(assert (=> b!4795297 (= res!2038631 (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896)))))

(declare-fun b!4795298 () Bool)

(assert (=> b!4795298 (= e!2994257 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728))))))

(declare-fun d!1534426 () Bool)

(assert (=> d!1534426 e!2994259))

(declare-fun res!2038630 () Bool)

(assert (=> d!1534426 (=> res!2038630 e!2994259)))

(assert (=> d!1534426 (= res!2038630 e!2994260)))

(declare-fun res!2038629 () Bool)

(assert (=> d!1534426 (=> (not res!2038629) (not e!2994260))))

(declare-fun lt!1953016 () Bool)

(assert (=> d!1534426 (= res!2038629 (not lt!1953016))))

(declare-fun lt!1953021 () Bool)

(assert (=> d!1534426 (= lt!1953016 lt!1953021)))

(declare-fun lt!1953017 () Unit!140096)

(assert (=> d!1534426 (= lt!1953017 e!2994261)))

(declare-fun c!817294 () Bool)

(assert (=> d!1534426 (= c!817294 lt!1953021)))

(assert (=> d!1534426 (= lt!1953021 (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(assert (=> d!1534426 (= (contains!17882 (extractMap!2461 (toList!6948 lt!1952728)) key!5896) lt!1953016)))

(declare-fun bm!335148 () Bool)

(assert (=> bm!335148 (= call!335153 (contains!17887 e!2994257 key!5896))))

(declare-fun c!817293 () Bool)

(assert (=> bm!335148 (= c!817293 c!817294)))

(declare-fun b!4795299 () Bool)

(assert (=> b!4795299 (= e!2994256 (contains!17887 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(declare-fun b!4795300 () Bool)

(declare-fun lt!1953014 () Unit!140096)

(assert (=> b!4795300 (= e!2994261 lt!1953014)))

(declare-fun lt!1953020 () Unit!140096)

(assert (=> b!4795300 (= lt!1953020 (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(assert (=> b!4795300 (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(declare-fun lt!1953019 () Unit!140096)

(assert (=> b!4795300 (= lt!1953019 lt!1953020)))

(assert (=> b!4795300 (= lt!1953014 (lemmaInListThenGetKeysListContains!1079 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(assert (=> b!4795300 call!335153))

(assert (= (and d!1534426 c!817294) b!4795300))

(assert (= (and d!1534426 (not c!817294)) b!4795294))

(assert (= (and b!4795294 c!817292) b!4795292))

(assert (= (and b!4795294 (not c!817292)) b!4795293))

(assert (= (or b!4795300 b!4795294) bm!335148))

(assert (= (and bm!335148 c!817293) b!4795295))

(assert (= (and bm!335148 (not c!817293)) b!4795298))

(assert (= (and d!1534426 res!2038629) b!4795296))

(assert (= (and d!1534426 (not res!2038630)) b!4795297))

(assert (= (and b!4795297 res!2038631) b!4795299))

(declare-fun m!5776746 () Bool)

(assert (=> b!4795295 m!5776746))

(declare-fun m!5776748 () Bool)

(assert (=> d!1534426 m!5776748))

(declare-fun m!5776750 () Bool)

(assert (=> b!4795297 m!5776750))

(assert (=> b!4795297 m!5776750))

(declare-fun m!5776752 () Bool)

(assert (=> b!4795297 m!5776752))

(declare-fun m!5776754 () Bool)

(assert (=> bm!335148 m!5776754))

(assert (=> b!4795296 m!5776270))

(declare-fun m!5776756 () Bool)

(assert (=> b!4795296 m!5776756))

(assert (=> b!4795296 m!5776756))

(declare-fun m!5776758 () Bool)

(assert (=> b!4795296 m!5776758))

(assert (=> b!4795299 m!5776270))

(assert (=> b!4795299 m!5776756))

(assert (=> b!4795299 m!5776756))

(assert (=> b!4795299 m!5776758))

(assert (=> b!4795292 m!5776748))

(declare-fun m!5776760 () Bool)

(assert (=> b!4795292 m!5776760))

(assert (=> b!4795298 m!5776270))

(assert (=> b!4795298 m!5776756))

(declare-fun m!5776762 () Bool)

(assert (=> b!4795300 m!5776762))

(assert (=> b!4795300 m!5776750))

(assert (=> b!4795300 m!5776750))

(assert (=> b!4795300 m!5776752))

(declare-fun m!5776764 () Bool)

(assert (=> b!4795300 m!5776764))

(assert (=> b!4794974 d!1534426))

(declare-fun b!4795301 () Bool)

(assert (=> b!4795301 false))

(declare-fun lt!1953026 () Unit!140096)

(declare-fun lt!1953023 () Unit!140096)

(assert (=> b!4795301 (= lt!1953026 lt!1953023)))

(assert (=> b!4795301 (containsKey!3976 (toList!6947 lt!1952727) key!5896)))

(assert (=> b!4795301 (= lt!1953023 (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 lt!1952727) key!5896))))

(declare-fun e!2994264 () Unit!140096)

(declare-fun Unit!140136 () Unit!140096)

(assert (=> b!4795301 (= e!2994264 Unit!140136)))

(declare-fun b!4795302 () Bool)

(declare-fun Unit!140137 () Unit!140096)

(assert (=> b!4795302 (= e!2994264 Unit!140137)))

(declare-fun b!4795303 () Bool)

(declare-fun e!2994267 () Unit!140096)

(assert (=> b!4795303 (= e!2994267 e!2994264)))

(declare-fun c!817295 () Bool)

(declare-fun call!335154 () Bool)

(assert (=> b!4795303 (= c!817295 call!335154)))

(declare-fun b!4795304 () Bool)

(declare-fun e!2994263 () List!54377)

(assert (=> b!4795304 (= e!2994263 (getKeysList!1084 (toList!6947 lt!1952727)))))

(declare-fun b!4795305 () Bool)

(declare-fun e!2994266 () Bool)

(assert (=> b!4795305 (= e!2994266 (not (contains!17887 (keys!19817 lt!1952727) key!5896)))))

(declare-fun b!4795306 () Bool)

(declare-fun e!2994265 () Bool)

(declare-fun e!2994262 () Bool)

(assert (=> b!4795306 (= e!2994265 e!2994262)))

(declare-fun res!2038634 () Bool)

(assert (=> b!4795306 (=> (not res!2038634) (not e!2994262))))

(assert (=> b!4795306 (= res!2038634 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896)))))

(declare-fun b!4795307 () Bool)

(assert (=> b!4795307 (= e!2994263 (keys!19817 lt!1952727))))

(declare-fun d!1534428 () Bool)

(assert (=> d!1534428 e!2994265))

(declare-fun res!2038633 () Bool)

(assert (=> d!1534428 (=> res!2038633 e!2994265)))

(assert (=> d!1534428 (= res!2038633 e!2994266)))

(declare-fun res!2038632 () Bool)

(assert (=> d!1534428 (=> (not res!2038632) (not e!2994266))))

(declare-fun lt!1953024 () Bool)

(assert (=> d!1534428 (= res!2038632 (not lt!1953024))))

(declare-fun lt!1953029 () Bool)

(assert (=> d!1534428 (= lt!1953024 lt!1953029)))

(declare-fun lt!1953025 () Unit!140096)

(assert (=> d!1534428 (= lt!1953025 e!2994267)))

(declare-fun c!817297 () Bool)

(assert (=> d!1534428 (= c!817297 lt!1953029)))

(assert (=> d!1534428 (= lt!1953029 (containsKey!3976 (toList!6947 lt!1952727) key!5896))))

(assert (=> d!1534428 (= (contains!17882 lt!1952727 key!5896) lt!1953024)))

(declare-fun bm!335149 () Bool)

(assert (=> bm!335149 (= call!335154 (contains!17887 e!2994263 key!5896))))

(declare-fun c!817296 () Bool)

(assert (=> bm!335149 (= c!817296 c!817297)))

(declare-fun b!4795308 () Bool)

(assert (=> b!4795308 (= e!2994262 (contains!17887 (keys!19817 lt!1952727) key!5896))))

(declare-fun b!4795309 () Bool)

(declare-fun lt!1953022 () Unit!140096)

(assert (=> b!4795309 (= e!2994267 lt!1953022)))

(declare-fun lt!1953028 () Unit!140096)

(assert (=> b!4795309 (= lt!1953028 (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 lt!1952727) key!5896))))

(assert (=> b!4795309 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896))))

(declare-fun lt!1953027 () Unit!140096)

(assert (=> b!4795309 (= lt!1953027 lt!1953028)))

(assert (=> b!4795309 (= lt!1953022 (lemmaInListThenGetKeysListContains!1079 (toList!6947 lt!1952727) key!5896))))

(assert (=> b!4795309 call!335154))

(assert (= (and d!1534428 c!817297) b!4795309))

(assert (= (and d!1534428 (not c!817297)) b!4795303))

(assert (= (and b!4795303 c!817295) b!4795301))

(assert (= (and b!4795303 (not c!817295)) b!4795302))

(assert (= (or b!4795309 b!4795303) bm!335149))

(assert (= (and bm!335149 c!817296) b!4795304))

(assert (= (and bm!335149 (not c!817296)) b!4795307))

(assert (= (and d!1534428 res!2038632) b!4795305))

(assert (= (and d!1534428 (not res!2038633)) b!4795306))

(assert (= (and b!4795306 res!2038634) b!4795308))

(declare-fun m!5776766 () Bool)

(assert (=> b!4795304 m!5776766))

(declare-fun m!5776768 () Bool)

(assert (=> d!1534428 m!5776768))

(assert (=> b!4795306 m!5776334))

(assert (=> b!4795306 m!5776334))

(declare-fun m!5776770 () Bool)

(assert (=> b!4795306 m!5776770))

(declare-fun m!5776772 () Bool)

(assert (=> bm!335149 m!5776772))

(declare-fun m!5776774 () Bool)

(assert (=> b!4795305 m!5776774))

(assert (=> b!4795305 m!5776774))

(declare-fun m!5776776 () Bool)

(assert (=> b!4795305 m!5776776))

(assert (=> b!4795308 m!5776774))

(assert (=> b!4795308 m!5776774))

(assert (=> b!4795308 m!5776776))

(assert (=> b!4795301 m!5776768))

(declare-fun m!5776778 () Bool)

(assert (=> b!4795301 m!5776778))

(assert (=> b!4795307 m!5776774))

(declare-fun m!5776780 () Bool)

(assert (=> b!4795309 m!5776780))

(assert (=> b!4795309 m!5776334))

(assert (=> b!4795309 m!5776334))

(assert (=> b!4795309 m!5776770))

(declare-fun m!5776782 () Bool)

(assert (=> b!4795309 m!5776782))

(assert (=> b!4794964 d!1534428))

(declare-fun d!1534430 () Bool)

(declare-fun res!2038639 () Bool)

(declare-fun e!2994272 () Bool)

(assert (=> d!1534430 (=> res!2038639 e!2994272)))

(assert (=> d!1534430 (= res!2038639 (and ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))) (= (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) key!5896)))))

(assert (=> d!1534430 (= (containsKey!3972 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896) e!2994272)))

(declare-fun b!4795314 () Bool)

(declare-fun e!2994273 () Bool)

(assert (=> b!4795314 (= e!2994272 e!2994273)))

(declare-fun res!2038640 () Bool)

(assert (=> b!4795314 (=> (not res!2038640) (not e!2994273))))

(assert (=> b!4795314 (= res!2038640 ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun b!4795315 () Bool)

(assert (=> b!4795315 (= e!2994273 (containsKey!3972 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) key!5896))))

(assert (= (and d!1534430 (not res!2038639)) b!4795314))

(assert (= (and b!4795314 res!2038640) b!4795315))

(declare-fun m!5776784 () Bool)

(assert (=> b!4795315 m!5776784))

(assert (=> b!4794965 d!1534430))

(declare-fun b!4795320 () Bool)

(declare-fun e!2994276 () Bool)

(declare-fun tp!1358145 () Bool)

(declare-fun tp!1358146 () Bool)

(assert (=> b!4795320 (= e!2994276 (and tp!1358145 tp!1358146))))

(assert (=> b!4794962 (= tp!1358134 e!2994276)))

(assert (= (and b!4794962 ((_ is Cons!54251) (toList!6948 lm!2473))) b!4795320))

(declare-fun b_lambda!186997 () Bool)

(assert (= b_lambda!186979 (or start!494162 b_lambda!186997)))

(declare-fun bs!1155451 () Bool)

(declare-fun d!1534432 () Bool)

(assert (= bs!1155451 (and d!1534432 start!494162)))

(assert (=> bs!1155451 (= (dynLambda!22075 lambda!231121 (h!60681 (toList!6948 lm!2473))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> bs!1155451 m!5776284))

(assert (=> b!4794991 d!1534432))

(declare-fun b_lambda!186999 () Bool)

(assert (= b_lambda!186995 (or b!4794974 b_lambda!186999)))

(declare-fun bs!1155452 () Bool)

(declare-fun d!1534434 () Bool)

(assert (= bs!1155452 (and d!1534434 b!4794974)))

(assert (=> bs!1155452 (= (dynLambda!22076 lambda!231123 lt!1952726) (= (hash!4975 hashF!1559 (_1!31746 lt!1952726)) (_1!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun m!5776786 () Bool)

(assert (=> bs!1155452 m!5776786))

(assert (=> d!1534422 d!1534434))

(declare-fun b_lambda!187001 () Bool)

(assert (= b_lambda!186993 (or b!4794974 b_lambda!187001)))

(declare-fun bs!1155453 () Bool)

(declare-fun d!1534436 () Bool)

(assert (= bs!1155453 (and d!1534436 b!4794974)))

(declare-fun allKeysSameHash!1964 (List!54374 (_ BitVec 64) Hashable!6934) Bool)

(assert (=> bs!1155453 (= (dynLambda!22075 lambda!231122 (h!60681 (toList!6948 lm!2473))) (allKeysSameHash!1964 (_2!31747 (h!60681 (toList!6948 lm!2473))) (_1!31747 (h!60681 (toList!6948 lm!2473))) hashF!1559))))

(declare-fun m!5776788 () Bool)

(assert (=> bs!1155453 m!5776788))

(assert (=> d!1534416 d!1534436))

(check-sat (not d!1534410) (not b!4795160) (not d!1534406) (not b!4795159) (not b!4795262) (not b!4794992) (not b!4795283) (not b!4795109) (not bm!335147) (not d!1534368) (not bm!335148) (not b!4795297) (not b!4795161) (not d!1534320) (not b_lambda!186997) (not d!1534420) (not b!4795295) (not b!4795291) (not d!1534348) (not b!4795228) (not d!1534340) (not b!4795309) (not b!4795107) (not b_lambda!187001) (not b!4795253) (not d!1534424) (not d!1534402) (not b!4795298) (not d!1534404) tp_is_empty!33599 (not b!4795296) (not d!1534400) (not b!4795315) (not b!4795158) (not b!4795300) (not b!4795260) (not b!4795094) (not bs!1155453) (not d!1534426) (not b!4795252) (not b!4795153) (not bm!335149) (not d!1534382) (not b!4795286) (not d!1534428) tp_is_empty!33597 (not b!4795292) (not b!4795061) (not d!1534322) (not b!4795250) (not b!4795259) (not d!1534324) (not b!4795275) (not d!1534418) (not b!4795287) (not d!1534408) (not d!1534364) (not b!4795255) (not b_lambda!186999) (not b!4795227) (not b!4795299) (not b!4795305) (not b!4795282) (not b!4795047) (not b!4795224) (not bm!335128) (not b!4795258) (not b!4795157) (not b!4795059) (not d!1534416) (not b!4795049) (not b!4795320) (not bm!335146) (not b!4795308) (not b!4795254) (not d!1534422) (not b!4795263) (not b!4795156) (not b!4795276) (not d!1534398) (not b!4795251) (not b!4795304) (not b!4795306) (not b!4795225) (not b!4795307) (not b!4795108) (not bs!1155451) (not b!4795268) (not b!4795261) (not bm!335144) (not bs!1155452) (not bm!335145) (not d!1534412) (not b!4795301))
(check-sat)
(get-model)

(declare-fun d!1534442 () Bool)

(assert (=> d!1534442 (= (isEmpty!29463 (getPair!906 (apply!13004 lm!2473 lt!1952729) key!5896)) (not ((_ is Some!13121) (getPair!906 (apply!13004 lm!2473 lt!1952729) key!5896))))))

(assert (=> d!1534398 d!1534442))

(declare-fun d!1534444 () Bool)

(assert (=> d!1534444 (= (hash!4975 hashF!1559 (_1!31746 lt!1952726)) (hash!4977 hashF!1559 (_1!31746 lt!1952726)))))

(declare-fun bs!1155459 () Bool)

(assert (= bs!1155459 d!1534444))

(declare-fun m!5776794 () Bool)

(assert (=> bs!1155459 m!5776794))

(assert (=> bs!1155452 d!1534444))

(declare-fun d!1534446 () Bool)

(declare-fun c!817300 () Bool)

(assert (=> d!1534446 (= c!817300 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun e!2994283 () (InoxSet tuple2!56904))

(assert (=> d!1534446 (= (content!9718 (_2!31747 (h!60681 (toList!6948 lm!2473)))) e!2994283)))

(declare-fun b!4795329 () Bool)

(assert (=> b!4795329 (= e!2994283 ((as const (Array tuple2!56904 Bool)) false))))

(declare-fun b!4795330 () Bool)

(assert (=> b!4795330 (= e!2994283 ((_ map or) (store ((as const (Array tuple2!56904 Bool)) false) (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))) true) (content!9718 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (= (and d!1534446 c!817300) b!4795329))

(assert (= (and d!1534446 (not c!817300)) b!4795330))

(declare-fun m!5776796 () Bool)

(assert (=> b!4795330 m!5776796))

(declare-fun m!5776798 () Bool)

(assert (=> b!4795330 m!5776798))

(assert (=> d!1534408 d!1534446))

(declare-fun d!1534448 () Bool)

(assert (=> d!1534448 (= (isDefined!10263 (getPair!906 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29463 (getPair!906 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1155460 () Bool)

(assert (= bs!1155460 d!1534448))

(assert (=> bs!1155460 m!5776456))

(declare-fun m!5776800 () Bool)

(assert (=> bs!1155460 m!5776800))

(assert (=> b!4795094 d!1534448))

(declare-fun b!4795331 () Bool)

(declare-fun e!2994286 () Option!13122)

(assert (=> b!4795331 (= e!2994286 (Some!13121 (h!60680 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)))))))

(declare-fun b!4795333 () Bool)

(declare-fun e!2994284 () Option!13122)

(assert (=> b!4795333 (= e!2994286 e!2994284)))

(declare-fun c!817301 () Bool)

(assert (=> b!4795333 (= c!817301 ((_ is Cons!54250) (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896))))))

(declare-fun lt!1953035 () Option!13122)

(declare-fun e!2994285 () Bool)

(declare-fun b!4795334 () Bool)

(assert (=> b!4795334 (= e!2994285 (contains!17883 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) (get!18502 lt!1953035)))))

(declare-fun e!2994287 () Bool)

(declare-fun b!4795335 () Bool)

(assert (=> b!4795335 (= e!2994287 (not (containsKey!3972 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4795336 () Bool)

(assert (=> b!4795336 (= e!2994284 (getPair!906 (t!361824 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4795337 () Bool)

(declare-fun e!2994288 () Bool)

(assert (=> b!4795337 (= e!2994288 e!2994285)))

(declare-fun res!2038646 () Bool)

(assert (=> b!4795337 (=> (not res!2038646) (not e!2994285))))

(assert (=> b!4795337 (= res!2038646 (isDefined!10263 lt!1953035))))

(declare-fun b!4795338 () Bool)

(declare-fun res!2038647 () Bool)

(assert (=> b!4795338 (=> (not res!2038647) (not e!2994285))))

(assert (=> b!4795338 (= res!2038647 (= (_1!31746 (get!18502 lt!1953035)) key!5896))))

(declare-fun b!4795332 () Bool)

(assert (=> b!4795332 (= e!2994284 None!13121)))

(declare-fun d!1534450 () Bool)

(assert (=> d!1534450 e!2994288))

(declare-fun res!2038645 () Bool)

(assert (=> d!1534450 (=> res!2038645 e!2994288)))

(assert (=> d!1534450 (= res!2038645 e!2994287)))

(declare-fun res!2038648 () Bool)

(assert (=> d!1534450 (=> (not res!2038648) (not e!2994287))))

(assert (=> d!1534450 (= res!2038648 (isEmpty!29463 lt!1953035))))

(assert (=> d!1534450 (= lt!1953035 e!2994286)))

(declare-fun c!817302 () Bool)

(assert (=> d!1534450 (= c!817302 (and ((_ is Cons!54250) (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896))) (= (_1!31746 (h!60680 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1534450 (noDuplicateKeys!2347 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)))))

(assert (=> d!1534450 (= (getPair!906 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) key!5896) lt!1953035)))

(assert (= (and d!1534450 c!817302) b!4795331))

(assert (= (and d!1534450 (not c!817302)) b!4795333))

(assert (= (and b!4795333 c!817301) b!4795336))

(assert (= (and b!4795333 (not c!817301)) b!4795332))

(assert (= (and d!1534450 res!2038648) b!4795335))

(assert (= (and d!1534450 (not res!2038645)) b!4795337))

(assert (= (and b!4795337 res!2038646) b!4795338))

(assert (= (and b!4795338 res!2038647) b!4795334))

(declare-fun m!5776802 () Bool)

(assert (=> b!4795337 m!5776802))

(declare-fun m!5776804 () Bool)

(assert (=> b!4795338 m!5776804))

(declare-fun m!5776806 () Bool)

(assert (=> d!1534450 m!5776806))

(assert (=> d!1534450 m!5776454))

(declare-fun m!5776808 () Bool)

(assert (=> d!1534450 m!5776808))

(declare-fun m!5776810 () Bool)

(assert (=> b!4795336 m!5776810))

(assert (=> b!4795335 m!5776454))

(declare-fun m!5776814 () Bool)

(assert (=> b!4795335 m!5776814))

(assert (=> b!4795334 m!5776804))

(assert (=> b!4795334 m!5776454))

(assert (=> b!4795334 m!5776804))

(declare-fun m!5776818 () Bool)

(assert (=> b!4795334 m!5776818))

(assert (=> b!4795094 d!1534450))

(declare-fun d!1534452 () Bool)

(assert (=> d!1534452 (= (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) (get!18503 (getValueByKey!2367 (toList!6948 lm!2473) (hash!4975 hashF!1559 key!5896))))))

(declare-fun bs!1155461 () Bool)

(assert (= bs!1155461 d!1534452))

(assert (=> bs!1155461 m!5776294))

(declare-fun m!5776822 () Bool)

(assert (=> bs!1155461 m!5776822))

(assert (=> bs!1155461 m!5776822))

(declare-fun m!5776824 () Bool)

(assert (=> bs!1155461 m!5776824))

(assert (=> b!4795094 d!1534452))

(assert (=> b!4795094 d!1534364))

(declare-fun b!4795352 () Bool)

(assert (=> b!4795352 true))

(declare-fun d!1534456 () Bool)

(declare-fun e!2994295 () Bool)

(assert (=> d!1534456 e!2994295))

(declare-fun res!2038663 () Bool)

(assert (=> d!1534456 (=> (not res!2038663) (not e!2994295))))

(declare-fun lt!1953041 () List!54377)

(declare-fun noDuplicate!923 (List!54377) Bool)

(assert (=> d!1534456 (= res!2038663 (noDuplicate!923 lt!1953041))))

(assert (=> d!1534456 (= lt!1953041 (getKeysList!1084 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))

(assert (=> d!1534456 (= (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) lt!1953041)))

(declare-fun b!4795351 () Bool)

(declare-fun res!2038665 () Bool)

(assert (=> b!4795351 (=> (not res!2038665) (not e!2994295))))

(declare-fun length!702 (List!54377) Int)

(declare-fun length!703 (List!54374) Int)

(assert (=> b!4795351 (= res!2038665 (= (length!702 lt!1953041) (length!703 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))))

(declare-fun res!2038664 () Bool)

(assert (=> b!4795352 (=> (not res!2038664) (not e!2994295))))

(declare-fun lambda!231229 () Int)

(declare-fun forall!12279 (List!54377 Int) Bool)

(assert (=> b!4795352 (= res!2038664 (forall!12279 lt!1953041 lambda!231229))))

(declare-fun b!4795353 () Bool)

(declare-fun lambda!231232 () Int)

(declare-fun content!9720 (List!54377) (InoxSet K!15824))

(declare-fun map!12251 (List!54374 Int) List!54377)

(assert (=> b!4795353 (= e!2994295 (= (content!9720 lt!1953041) (content!9720 (map!12251 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) lambda!231232))))))

(assert (= (and d!1534456 res!2038663) b!4795351))

(assert (= (and b!4795351 res!2038665) b!4795352))

(assert (= (and b!4795352 res!2038664) b!4795353))

(declare-fun m!5776826 () Bool)

(assert (=> d!1534456 m!5776826))

(assert (=> d!1534456 m!5776542))

(declare-fun m!5776828 () Bool)

(assert (=> b!4795351 m!5776828))

(declare-fun m!5776830 () Bool)

(assert (=> b!4795351 m!5776830))

(declare-fun m!5776832 () Bool)

(assert (=> b!4795352 m!5776832))

(declare-fun m!5776834 () Bool)

(assert (=> b!4795353 m!5776834))

(declare-fun m!5776836 () Bool)

(assert (=> b!4795353 m!5776836))

(assert (=> b!4795353 m!5776836))

(declare-fun m!5776838 () Bool)

(assert (=> b!4795353 m!5776838))

(assert (=> b!4795159 d!1534456))

(declare-fun bs!1155462 () Bool)

(declare-fun b!4795359 () Bool)

(assert (= bs!1155462 (and b!4795359 b!4795352)))

(declare-fun lambda!231233 () Int)

(assert (=> bs!1155462 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231233 lambda!231229))))

(assert (=> b!4795359 true))

(declare-fun bs!1155463 () Bool)

(declare-fun b!4795360 () Bool)

(assert (= bs!1155463 (and b!4795360 b!4795353)))

(declare-fun lambda!231236 () Int)

(assert (=> bs!1155463 (= lambda!231236 lambda!231232)))

(declare-fun d!1534458 () Bool)

(declare-fun e!2994296 () Bool)

(assert (=> d!1534458 e!2994296))

(declare-fun res!2038666 () Bool)

(assert (=> d!1534458 (=> (not res!2038666) (not e!2994296))))

(declare-fun lt!1953042 () List!54377)

(assert (=> d!1534458 (= res!2038666 (noDuplicate!923 lt!1953042))))

(assert (=> d!1534458 (= lt!1953042 (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))

(assert (=> d!1534458 (= (keys!19817 (extractMap!2461 (toList!6948 lm!2473))) lt!1953042)))

(declare-fun b!4795358 () Bool)

(declare-fun res!2038668 () Bool)

(assert (=> b!4795358 (=> (not res!2038668) (not e!2994296))))

(assert (=> b!4795358 (= res!2038668 (= (length!702 lt!1953042) (length!703 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))))

(declare-fun res!2038667 () Bool)

(assert (=> b!4795359 (=> (not res!2038667) (not e!2994296))))

(assert (=> b!4795359 (= res!2038667 (forall!12279 lt!1953042 lambda!231233))))

(assert (=> b!4795360 (= e!2994296 (= (content!9720 lt!1953042) (content!9720 (map!12251 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) lambda!231236))))))

(assert (= (and d!1534458 res!2038666) b!4795358))

(assert (= (and b!4795358 res!2038668) b!4795359))

(assert (= (and b!4795359 res!2038667) b!4795360))

(declare-fun m!5776840 () Bool)

(assert (=> d!1534458 m!5776840))

(assert (=> d!1534458 m!5776672))

(declare-fun m!5776842 () Bool)

(assert (=> b!4795358 m!5776842))

(declare-fun m!5776844 () Bool)

(assert (=> b!4795358 m!5776844))

(declare-fun m!5776846 () Bool)

(assert (=> b!4795359 m!5776846))

(declare-fun m!5776848 () Bool)

(assert (=> b!4795360 m!5776848))

(declare-fun m!5776850 () Bool)

(assert (=> b!4795360 m!5776850))

(assert (=> b!4795360 m!5776850))

(declare-fun m!5776852 () Bool)

(assert (=> b!4795360 m!5776852))

(assert (=> b!4795261 d!1534458))

(declare-fun d!1534460 () Bool)

(declare-fun res!2038673 () Bool)

(declare-fun e!2994301 () Bool)

(assert (=> d!1534460 (=> res!2038673 e!2994301)))

(assert (=> d!1534460 (= res!2038673 (and ((_ is Cons!54250) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) key!5896)))))

(assert (=> d!1534460 (= (containsKey!3976 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896) e!2994301)))

(declare-fun b!4795365 () Bool)

(declare-fun e!2994302 () Bool)

(assert (=> b!4795365 (= e!2994301 e!2994302)))

(declare-fun res!2038674 () Bool)

(assert (=> b!4795365 (=> (not res!2038674) (not e!2994302))))

(assert (=> b!4795365 (= res!2038674 ((_ is Cons!54250) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))

(declare-fun b!4795366 () Bool)

(assert (=> b!4795366 (= e!2994302 (containsKey!3976 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) key!5896))))

(assert (= (and d!1534460 (not res!2038673)) b!4795365))

(assert (= (and b!4795365 res!2038674) b!4795366))

(declare-fun m!5776854 () Bool)

(assert (=> b!4795366 m!5776854))

(assert (=> d!1534368 d!1534460))

(declare-fun d!1534462 () Bool)

(declare-fun lt!1953046 () Bool)

(assert (=> d!1534462 (= lt!1953046 (select (content!9720 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728)))) key!5896))))

(declare-fun e!2994308 () Bool)

(assert (=> d!1534462 (= lt!1953046 e!2994308)))

(declare-fun res!2038682 () Bool)

(assert (=> d!1534462 (=> (not res!2038682) (not e!2994308))))

(assert (=> d!1534462 (= res!2038682 ((_ is Cons!54253) (keys!19817 (extractMap!2461 (toList!6948 lt!1952728)))))))

(assert (=> d!1534462 (= (contains!17887 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728))) key!5896) lt!1953046)))

(declare-fun b!4795376 () Bool)

(declare-fun e!2994309 () Bool)

(assert (=> b!4795376 (= e!2994308 e!2994309)))

(declare-fun res!2038683 () Bool)

(assert (=> b!4795376 (=> res!2038683 e!2994309)))

(assert (=> b!4795376 (= res!2038683 (= (h!60683 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728)))) key!5896))))

(declare-fun b!4795377 () Bool)

(assert (=> b!4795377 (= e!2994309 (contains!17887 (t!361827 (keys!19817 (extractMap!2461 (toList!6948 lt!1952728)))) key!5896))))

(assert (= (and d!1534462 res!2038682) b!4795376))

(assert (= (and b!4795376 (not res!2038683)) b!4795377))

(assert (=> d!1534462 m!5776756))

(declare-fun m!5776870 () Bool)

(assert (=> d!1534462 m!5776870))

(declare-fun m!5776872 () Bool)

(assert (=> d!1534462 m!5776872))

(declare-fun m!5776874 () Bool)

(assert (=> b!4795377 m!5776874))

(assert (=> b!4795299 d!1534462))

(declare-fun bs!1155464 () Bool)

(declare-fun b!4795379 () Bool)

(assert (= bs!1155464 (and b!4795379 b!4795352)))

(declare-fun lambda!231239 () Int)

(assert (=> bs!1155464 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231239 lambda!231229))))

(declare-fun bs!1155466 () Bool)

(assert (= bs!1155466 (and b!4795379 b!4795359)))

(assert (=> bs!1155466 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231239 lambda!231233))))

(assert (=> b!4795379 true))

(declare-fun bs!1155467 () Bool)

(declare-fun b!4795380 () Bool)

(assert (= bs!1155467 (and b!4795380 b!4795353)))

(declare-fun lambda!231240 () Int)

(assert (=> bs!1155467 (= lambda!231240 lambda!231232)))

(declare-fun bs!1155468 () Bool)

(assert (= bs!1155468 (and b!4795380 b!4795360)))

(assert (=> bs!1155468 (= lambda!231240 lambda!231236)))

(declare-fun d!1534466 () Bool)

(declare-fun e!2994310 () Bool)

(assert (=> d!1534466 e!2994310))

(declare-fun res!2038684 () Bool)

(assert (=> d!1534466 (=> (not res!2038684) (not e!2994310))))

(declare-fun lt!1953047 () List!54377)

(assert (=> d!1534466 (= res!2038684 (noDuplicate!923 lt!1953047))))

(assert (=> d!1534466 (= lt!1953047 (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))

(assert (=> d!1534466 (= (keys!19817 (extractMap!2461 (toList!6948 lt!1952728))) lt!1953047)))

(declare-fun b!4795378 () Bool)

(declare-fun res!2038686 () Bool)

(assert (=> b!4795378 (=> (not res!2038686) (not e!2994310))))

(assert (=> b!4795378 (= res!2038686 (= (length!702 lt!1953047) (length!703 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))))

(declare-fun res!2038685 () Bool)

(assert (=> b!4795379 (=> (not res!2038685) (not e!2994310))))

(assert (=> b!4795379 (= res!2038685 (forall!12279 lt!1953047 lambda!231239))))

(assert (=> b!4795380 (= e!2994310 (= (content!9720 lt!1953047) (content!9720 (map!12251 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) lambda!231240))))))

(assert (= (and d!1534466 res!2038684) b!4795378))

(assert (= (and b!4795378 res!2038686) b!4795379))

(assert (= (and b!4795379 res!2038685) b!4795380))

(declare-fun m!5776878 () Bool)

(assert (=> d!1534466 m!5776878))

(assert (=> d!1534466 m!5776746))

(declare-fun m!5776880 () Bool)

(assert (=> b!4795378 m!5776880))

(declare-fun m!5776882 () Bool)

(assert (=> b!4795378 m!5776882))

(declare-fun m!5776884 () Bool)

(assert (=> b!4795379 m!5776884))

(declare-fun m!5776886 () Bool)

(assert (=> b!4795380 m!5776886))

(declare-fun m!5776888 () Bool)

(assert (=> b!4795380 m!5776888))

(assert (=> b!4795380 m!5776888))

(declare-fun m!5776890 () Bool)

(assert (=> b!4795380 m!5776890))

(assert (=> b!4795299 d!1534466))

(declare-fun d!1534470 () Bool)

(declare-fun res!2038691 () Bool)

(declare-fun e!2994319 () Bool)

(assert (=> d!1534470 (=> res!2038691 e!2994319)))

(assert (=> d!1534470 (= res!2038691 (or ((_ is Nil!54251) (toList!6948 lm!2473)) ((_ is Nil!54251) (t!361825 (toList!6948 lm!2473)))))))

(assert (=> d!1534470 (= (isStrictlySorted!885 (toList!6948 lm!2473)) e!2994319)))

(declare-fun b!4795393 () Bool)

(declare-fun e!2994320 () Bool)

(assert (=> b!4795393 (= e!2994319 e!2994320)))

(declare-fun res!2038692 () Bool)

(assert (=> b!4795393 (=> (not res!2038692) (not e!2994320))))

(assert (=> b!4795393 (= res!2038692 (bvslt (_1!31747 (h!60681 (toList!6948 lm!2473))) (_1!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))))))

(declare-fun b!4795394 () Bool)

(assert (=> b!4795394 (= e!2994320 (isStrictlySorted!885 (t!361825 (toList!6948 lm!2473))))))

(assert (= (and d!1534470 (not res!2038691)) b!4795393))

(assert (= (and b!4795393 res!2038692) b!4795394))

(declare-fun m!5776892 () Bool)

(assert (=> b!4795394 m!5776892))

(assert (=> d!1534320 d!1534470))

(declare-fun d!1534472 () Bool)

(declare-fun res!2038693 () Bool)

(declare-fun e!2994321 () Bool)

(assert (=> d!1534472 (=> res!2038693 e!2994321)))

(assert (=> d!1534472 (= res!2038693 (and ((_ is Cons!54250) (toList!6947 lt!1952727)) (= (_1!31746 (h!60680 (toList!6947 lt!1952727))) key!5896)))))

(assert (=> d!1534472 (= (containsKey!3976 (toList!6947 lt!1952727) key!5896) e!2994321)))

(declare-fun b!4795395 () Bool)

(declare-fun e!2994322 () Bool)

(assert (=> b!4795395 (= e!2994321 e!2994322)))

(declare-fun res!2038694 () Bool)

(assert (=> b!4795395 (=> (not res!2038694) (not e!2994322))))

(assert (=> b!4795395 (= res!2038694 ((_ is Cons!54250) (toList!6947 lt!1952727)))))

(declare-fun b!4795396 () Bool)

(assert (=> b!4795396 (= e!2994322 (containsKey!3976 (t!361824 (toList!6947 lt!1952727)) key!5896))))

(assert (= (and d!1534472 (not res!2038693)) b!4795395))

(assert (= (and b!4795395 res!2038694) b!4795396))

(declare-fun m!5776894 () Bool)

(assert (=> b!4795396 m!5776894))

(assert (=> d!1534428 d!1534472))

(declare-fun d!1534474 () Bool)

(declare-fun lt!1953048 () Bool)

(assert (=> d!1534474 (= lt!1953048 (select (content!9720 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) key!5896))))

(declare-fun e!2994323 () Bool)

(assert (=> d!1534474 (= lt!1953048 e!2994323)))

(declare-fun res!2038695 () Bool)

(assert (=> d!1534474 (=> (not res!2038695) (not e!2994323))))

(assert (=> d!1534474 (= res!2038695 ((_ is Cons!54253) (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))

(assert (=> d!1534474 (= (contains!17887 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896) lt!1953048)))

(declare-fun b!4795397 () Bool)

(declare-fun e!2994324 () Bool)

(assert (=> b!4795397 (= e!2994323 e!2994324)))

(declare-fun res!2038696 () Bool)

(assert (=> b!4795397 (=> res!2038696 e!2994324)))

(assert (=> b!4795397 (= res!2038696 (= (h!60683 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) key!5896))))

(declare-fun b!4795398 () Bool)

(assert (=> b!4795398 (= e!2994324 (contains!17887 (t!361827 (keys!19817 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) key!5896))))

(assert (= (and d!1534474 res!2038695) b!4795397))

(assert (= (and b!4795397 (not res!2038696)) b!4795398))

(assert (=> d!1534474 m!5776552))

(declare-fun m!5776896 () Bool)

(assert (=> d!1534474 m!5776896))

(declare-fun m!5776898 () Bool)

(assert (=> d!1534474 m!5776898))

(declare-fun m!5776900 () Bool)

(assert (=> b!4795398 m!5776900))

(assert (=> b!4795157 d!1534474))

(assert (=> b!4795157 d!1534456))

(declare-fun d!1534476 () Bool)

(declare-fun res!2038701 () Bool)

(declare-fun e!2994331 () Bool)

(assert (=> d!1534476 (=> res!2038701 e!2994331)))

(assert (=> d!1534476 (= res!2038701 ((_ is Nil!54250) (toList!6947 lt!1952727)))))

(assert (=> d!1534476 (= (forall!12277 (toList!6947 lt!1952727) lambda!231210) e!2994331)))

(declare-fun b!4795407 () Bool)

(declare-fun e!2994332 () Bool)

(assert (=> b!4795407 (= e!2994331 e!2994332)))

(declare-fun res!2038702 () Bool)

(assert (=> b!4795407 (=> (not res!2038702) (not e!2994332))))

(assert (=> b!4795407 (= res!2038702 (dynLambda!22076 lambda!231210 (h!60680 (toList!6947 lt!1952727))))))

(declare-fun b!4795408 () Bool)

(assert (=> b!4795408 (= e!2994332 (forall!12277 (t!361824 (toList!6947 lt!1952727)) lambda!231210))))

(assert (= (and d!1534476 (not res!2038701)) b!4795407))

(assert (= (and b!4795407 res!2038702) b!4795408))

(declare-fun b_lambda!187003 () Bool)

(assert (=> (not b_lambda!187003) (not b!4795407)))

(declare-fun m!5776904 () Bool)

(assert (=> b!4795407 m!5776904))

(declare-fun m!5776906 () Bool)

(assert (=> b!4795408 m!5776906))

(assert (=> b!4795224 d!1534476))

(assert (=> d!1534424 d!1534426))

(assert (=> d!1534424 d!1534412))

(declare-fun d!1534480 () Bool)

(assert (=> d!1534480 (not (contains!17882 (extractMap!2461 (toList!6948 lt!1952728)) key!5896))))

(assert (=> d!1534480 true))

(declare-fun _$28!826 () Unit!140096)

(assert (=> d!1534480 (= (choose!34577 lt!1952728 key!5896 hashF!1559) _$28!826)))

(declare-fun bs!1155471 () Bool)

(assert (= bs!1155471 d!1534480))

(assert (=> bs!1155471 m!5776270))

(assert (=> bs!1155471 m!5776270))

(assert (=> bs!1155471 m!5776272))

(assert (=> d!1534424 d!1534480))

(declare-fun d!1534492 () Bool)

(declare-fun res!2038714 () Bool)

(declare-fun e!2994345 () Bool)

(assert (=> d!1534492 (=> res!2038714 e!2994345)))

(assert (=> d!1534492 (= res!2038714 ((_ is Nil!54251) (toList!6948 lt!1952728)))))

(assert (=> d!1534492 (= (forall!12275 (toList!6948 lt!1952728) lambda!231221) e!2994345)))

(declare-fun b!4795426 () Bool)

(declare-fun e!2994346 () Bool)

(assert (=> b!4795426 (= e!2994345 e!2994346)))

(declare-fun res!2038715 () Bool)

(assert (=> b!4795426 (=> (not res!2038715) (not e!2994346))))

(assert (=> b!4795426 (= res!2038715 (dynLambda!22075 lambda!231221 (h!60681 (toList!6948 lt!1952728))))))

(declare-fun b!4795427 () Bool)

(assert (=> b!4795427 (= e!2994346 (forall!12275 (t!361825 (toList!6948 lt!1952728)) lambda!231221))))

(assert (= (and d!1534492 (not res!2038714)) b!4795426))

(assert (= (and b!4795426 res!2038715) b!4795427))

(declare-fun b_lambda!187007 () Bool)

(assert (=> (not b_lambda!187007) (not b!4795426)))

(declare-fun m!5776936 () Bool)

(assert (=> b!4795426 m!5776936))

(declare-fun m!5776938 () Bool)

(assert (=> b!4795427 m!5776938))

(assert (=> d!1534424 d!1534492))

(declare-fun d!1534494 () Bool)

(declare-fun lt!1953051 () Bool)

(assert (=> d!1534494 (= lt!1953051 (select (content!9720 (keys!19817 (extractMap!2461 (toList!6948 lm!2473)))) key!5896))))

(declare-fun e!2994347 () Bool)

(assert (=> d!1534494 (= lt!1953051 e!2994347)))

(declare-fun res!2038716 () Bool)

(assert (=> d!1534494 (=> (not res!2038716) (not e!2994347))))

(assert (=> d!1534494 (= res!2038716 ((_ is Cons!54253) (keys!19817 (extractMap!2461 (toList!6948 lm!2473)))))))

(assert (=> d!1534494 (= (contains!17887 (keys!19817 (extractMap!2461 (toList!6948 lm!2473))) key!5896) lt!1953051)))

(declare-fun b!4795428 () Bool)

(declare-fun e!2994348 () Bool)

(assert (=> b!4795428 (= e!2994347 e!2994348)))

(declare-fun res!2038717 () Bool)

(assert (=> b!4795428 (=> res!2038717 e!2994348)))

(assert (=> b!4795428 (= res!2038717 (= (h!60683 (keys!19817 (extractMap!2461 (toList!6948 lm!2473)))) key!5896))))

(declare-fun b!4795429 () Bool)

(assert (=> b!4795429 (= e!2994348 (contains!17887 (t!361827 (keys!19817 (extractMap!2461 (toList!6948 lm!2473)))) key!5896))))

(assert (= (and d!1534494 res!2038716) b!4795428))

(assert (= (and b!4795428 (not res!2038717)) b!4795429))

(assert (=> d!1534494 m!5776682))

(declare-fun m!5776940 () Bool)

(assert (=> d!1534494 m!5776940))

(declare-fun m!5776942 () Bool)

(assert (=> d!1534494 m!5776942))

(declare-fun m!5776944 () Bool)

(assert (=> b!4795429 m!5776944))

(assert (=> b!4795262 d!1534494))

(assert (=> b!4795262 d!1534458))

(assert (=> b!4795153 d!1534460))

(declare-fun d!1534496 () Bool)

(assert (=> d!1534496 (containsKey!3976 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896)))

(declare-fun lt!1953054 () Unit!140096)

(declare-fun choose!34580 (List!54374 K!15824) Unit!140096)

(assert (=> d!1534496 (= lt!1953054 (choose!34580 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(assert (=> d!1534496 (invariantList!1738 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))

(assert (=> d!1534496 (= (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896) lt!1953054)))

(declare-fun bs!1155472 () Bool)

(assert (= bs!1155472 d!1534496))

(assert (=> bs!1155472 m!5776544))

(declare-fun m!5776950 () Bool)

(assert (=> bs!1155472 m!5776950))

(declare-fun m!5776952 () Bool)

(assert (=> bs!1155472 m!5776952))

(assert (=> b!4795153 d!1534496))

(assert (=> b!4795296 d!1534462))

(assert (=> b!4795296 d!1534466))

(declare-fun d!1534502 () Bool)

(assert (=> d!1534502 (dynLambda!22076 lambda!231123 lt!1952726)))

(assert (=> d!1534502 true))

(declare-fun _$7!2419 () Unit!140096)

(assert (=> d!1534502 (= (choose!34576 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231123 lt!1952726) _$7!2419)))

(declare-fun b_lambda!187009 () Bool)

(assert (=> (not b_lambda!187009) (not d!1534502)))

(declare-fun bs!1155473 () Bool)

(assert (= bs!1155473 d!1534502))

(assert (=> bs!1155473 m!5776736))

(assert (=> d!1534422 d!1534502))

(declare-fun d!1534504 () Bool)

(declare-fun res!2038726 () Bool)

(declare-fun e!2994357 () Bool)

(assert (=> d!1534504 (=> res!2038726 e!2994357)))

(assert (=> d!1534504 (= res!2038726 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534504 (= (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231123) e!2994357)))

(declare-fun b!4795438 () Bool)

(declare-fun e!2994358 () Bool)

(assert (=> b!4795438 (= e!2994357 e!2994358)))

(declare-fun res!2038727 () Bool)

(assert (=> b!4795438 (=> (not res!2038727) (not e!2994358))))

(assert (=> b!4795438 (= res!2038727 (dynLambda!22076 lambda!231123 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun b!4795439 () Bool)

(assert (=> b!4795439 (= e!2994358 (forall!12277 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lambda!231123))))

(assert (= (and d!1534504 (not res!2038726)) b!4795438))

(assert (= (and b!4795438 res!2038727) b!4795439))

(declare-fun b_lambda!187011 () Bool)

(assert (=> (not b_lambda!187011) (not b!4795438)))

(declare-fun m!5776958 () Bool)

(assert (=> b!4795438 m!5776958))

(declare-fun m!5776960 () Bool)

(assert (=> b!4795439 m!5776960))

(assert (=> d!1534422 d!1534504))

(declare-fun d!1534508 () Bool)

(declare-fun res!2038728 () Bool)

(declare-fun e!2994359 () Bool)

(assert (=> d!1534508 (=> res!2038728 e!2994359)))

(assert (=> d!1534508 (= res!2038728 (and ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) key!5896)))))

(assert (=> d!1534508 (= (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896) e!2994359)))

(declare-fun b!4795440 () Bool)

(declare-fun e!2994360 () Bool)

(assert (=> b!4795440 (= e!2994359 e!2994360)))

(declare-fun res!2038729 () Bool)

(assert (=> b!4795440 (=> (not res!2038729) (not e!2994360))))

(assert (=> b!4795440 (= res!2038729 ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))

(declare-fun b!4795441 () Bool)

(assert (=> b!4795441 (= e!2994360 (containsKey!3976 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) key!5896))))

(assert (= (and d!1534508 (not res!2038728)) b!4795440))

(assert (= (and b!4795440 res!2038729) b!4795441))

(declare-fun m!5776962 () Bool)

(assert (=> b!4795441 m!5776962))

(assert (=> b!4795255 d!1534508))

(declare-fun d!1534510 () Bool)

(assert (=> d!1534510 (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896)))

(declare-fun lt!1953058 () Unit!140096)

(assert (=> d!1534510 (= lt!1953058 (choose!34580 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(assert (=> d!1534510 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))

(assert (=> d!1534510 (= (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896) lt!1953058)))

(declare-fun bs!1155475 () Bool)

(assert (= bs!1155475 d!1534510))

(assert (=> bs!1155475 m!5776674))

(declare-fun m!5776964 () Bool)

(assert (=> bs!1155475 m!5776964))

(declare-fun m!5776966 () Bool)

(assert (=> bs!1155475 m!5776966))

(assert (=> b!4795255 d!1534510))

(assert (=> b!4795259 d!1534494))

(assert (=> b!4795259 d!1534458))

(assert (=> b!4795298 d!1534466))

(declare-fun bs!1155476 () Bool)

(declare-fun b!4795444 () Bool)

(assert (= bs!1155476 (and b!4795444 b!4795228)))

(declare-fun lambda!231243 () Int)

(assert (=> bs!1155476 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952967) (= lambda!231243 lambda!231209))))

(assert (=> bs!1155476 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952727) (= lambda!231243 lambda!231208))))

(declare-fun bs!1155477 () Bool)

(assert (= bs!1155477 (and b!4795444 d!1534382)))

(assert (=> bs!1155477 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952974) (= lambda!231243 lambda!231210))))

(declare-fun bs!1155478 () Bool)

(assert (= bs!1155478 (and b!4795444 b!4794974)))

(assert (=> bs!1155478 (not (= lambda!231243 lambda!231123))))

(declare-fun bs!1155479 () Bool)

(assert (= bs!1155479 (and b!4795444 b!4795226)))

(assert (=> bs!1155479 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952727) (= lambda!231243 lambda!231207))))

(assert (=> b!4795444 true))

(declare-fun bs!1155480 () Bool)

(declare-fun b!4795446 () Bool)

(assert (= bs!1155480 (and b!4795446 b!4795228)))

(declare-fun lambda!231244 () Int)

(assert (=> bs!1155480 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952967) (= lambda!231244 lambda!231209))))

(assert (=> bs!1155480 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952727) (= lambda!231244 lambda!231208))))

(declare-fun bs!1155481 () Bool)

(assert (= bs!1155481 (and b!4795446 b!4795444)))

(assert (=> bs!1155481 (= lambda!231244 lambda!231243)))

(declare-fun bs!1155482 () Bool)

(assert (= bs!1155482 (and b!4795446 d!1534382)))

(assert (=> bs!1155482 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952974) (= lambda!231244 lambda!231210))))

(declare-fun bs!1155483 () Bool)

(assert (= bs!1155483 (and b!4795446 b!4794974)))

(assert (=> bs!1155483 (not (= lambda!231244 lambda!231123))))

(declare-fun bs!1155484 () Bool)

(assert (= bs!1155484 (and b!4795446 b!4795226)))

(assert (=> bs!1155484 (= (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1952727) (= lambda!231244 lambda!231207))))

(assert (=> b!4795446 true))

(declare-fun lt!1953061 () ListMap!6419)

(declare-fun lambda!231245 () Int)

(assert (=> bs!1155480 (= (= lt!1953061 lt!1952967) (= lambda!231245 lambda!231209))))

(assert (=> bs!1155480 (= (= lt!1953061 lt!1952727) (= lambda!231245 lambda!231208))))

(assert (=> bs!1155481 (= (= lt!1953061 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231245 lambda!231243))))

(assert (=> bs!1155482 (= (= lt!1953061 lt!1952974) (= lambda!231245 lambda!231210))))

(assert (=> b!4795446 (= (= lt!1953061 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231245 lambda!231244))))

(assert (=> bs!1155483 (not (= lambda!231245 lambda!231123))))

(assert (=> bs!1155484 (= (= lt!1953061 lt!1952727) (= lambda!231245 lambda!231207))))

(assert (=> b!4795446 true))

(declare-fun bs!1155485 () Bool)

(declare-fun d!1534512 () Bool)

(assert (= bs!1155485 (and d!1534512 b!4795446)))

(declare-fun lt!1953068 () ListMap!6419)

(declare-fun lambda!231246 () Int)

(assert (=> bs!1155485 (= (= lt!1953068 lt!1953061) (= lambda!231246 lambda!231245))))

(declare-fun bs!1155486 () Bool)

(assert (= bs!1155486 (and d!1534512 b!4795228)))

(assert (=> bs!1155486 (= (= lt!1953068 lt!1952967) (= lambda!231246 lambda!231209))))

(assert (=> bs!1155486 (= (= lt!1953068 lt!1952727) (= lambda!231246 lambda!231208))))

(declare-fun bs!1155487 () Bool)

(assert (= bs!1155487 (and d!1534512 b!4795444)))

(assert (=> bs!1155487 (= (= lt!1953068 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231246 lambda!231243))))

(declare-fun bs!1155488 () Bool)

(assert (= bs!1155488 (and d!1534512 d!1534382)))

(assert (=> bs!1155488 (= (= lt!1953068 lt!1952974) (= lambda!231246 lambda!231210))))

(assert (=> bs!1155485 (= (= lt!1953068 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231246 lambda!231244))))

(declare-fun bs!1155489 () Bool)

(assert (= bs!1155489 (and d!1534512 b!4794974)))

(assert (=> bs!1155489 (not (= lambda!231246 lambda!231123))))

(declare-fun bs!1155490 () Bool)

(assert (= bs!1155490 (and d!1534512 b!4795226)))

(assert (=> bs!1155490 (= (= lt!1953068 lt!1952727) (= lambda!231246 lambda!231207))))

(assert (=> d!1534512 true))

(declare-fun bm!335150 () Bool)

(declare-fun call!335156 () Unit!140096)

(assert (=> bm!335150 (= call!335156 (lemmaContainsAllItsOwnKeys!946 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))))))

(declare-fun e!2994361 () Bool)

(assert (=> d!1534512 e!2994361))

(declare-fun res!2038731 () Bool)

(assert (=> d!1534512 (=> (not res!2038731) (not e!2994361))))

(assert (=> d!1534512 (= res!2038731 (forall!12277 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) lambda!231246))))

(declare-fun e!2994362 () ListMap!6419)

(assert (=> d!1534512 (= lt!1953068 e!2994362)))

(declare-fun c!817312 () Bool)

(assert (=> d!1534512 (= c!817312 ((_ is Nil!54250) (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))))))

(assert (=> d!1534512 (noDuplicateKeys!2347 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))))

(assert (=> d!1534512 (= (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) lt!1953068)))

(declare-fun b!4795442 () Bool)

(declare-fun res!2038730 () Bool)

(assert (=> b!4795442 (=> (not res!2038730) (not e!2994361))))

(assert (=> b!4795442 (= res!2038730 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) lambda!231246))))

(declare-fun b!4795443 () Bool)

(declare-fun e!2994363 () Bool)

(assert (=> b!4795443 (= e!2994363 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) lambda!231245))))

(assert (=> b!4795444 (= e!2994362 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))))))

(declare-fun lt!1953067 () Unit!140096)

(assert (=> b!4795444 (= lt!1953067 call!335156)))

(declare-fun call!335155 () Bool)

(assert (=> b!4795444 call!335155))

(declare-fun lt!1953076 () Unit!140096)

(assert (=> b!4795444 (= lt!1953076 lt!1953067)))

(declare-fun call!335157 () Bool)

(assert (=> b!4795444 call!335157))

(declare-fun lt!1953065 () Unit!140096)

(declare-fun Unit!140142 () Unit!140096)

(assert (=> b!4795444 (= lt!1953065 Unit!140142)))

(declare-fun b!4795445 () Bool)

(assert (=> b!4795445 (= e!2994361 (invariantList!1738 (toList!6947 lt!1953068)))))

(assert (=> b!4795446 (= e!2994362 lt!1953061)))

(declare-fun lt!1953079 () ListMap!6419)

(assert (=> b!4795446 (= lt!1953079 (+!2491 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))))))

(assert (=> b!4795446 (= lt!1953061 (addToMapMapFromBucket!1715 (t!361824 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))) (+!2491 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))))))))

(declare-fun lt!1953063 () Unit!140096)

(assert (=> b!4795446 (= lt!1953063 call!335156)))

(assert (=> b!4795446 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) lambda!231244)))

(declare-fun lt!1953062 () Unit!140096)

(assert (=> b!4795446 (= lt!1953062 lt!1953063)))

(assert (=> b!4795446 (forall!12277 (toList!6947 lt!1953079) lambda!231245)))

(declare-fun lt!1953064 () Unit!140096)

(declare-fun Unit!140143 () Unit!140096)

(assert (=> b!4795446 (= lt!1953064 Unit!140143)))

(assert (=> b!4795446 call!335155))

(declare-fun lt!1953059 () Unit!140096)

(declare-fun Unit!140144 () Unit!140096)

(assert (=> b!4795446 (= lt!1953059 Unit!140144)))

(declare-fun lt!1953069 () Unit!140096)

(declare-fun Unit!140145 () Unit!140096)

(assert (=> b!4795446 (= lt!1953069 Unit!140145)))

(declare-fun lt!1953077 () Unit!140096)

(assert (=> b!4795446 (= lt!1953077 (forallContained!4182 (toList!6947 lt!1953079) lambda!231245 (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))))))

(assert (=> b!4795446 (contains!17882 lt!1953079 (_1!31746 (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953071 () Unit!140096)

(declare-fun Unit!140146 () Unit!140096)

(assert (=> b!4795446 (= lt!1953071 Unit!140146)))

(assert (=> b!4795446 (contains!17882 lt!1953061 (_1!31746 (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953075 () Unit!140096)

(declare-fun Unit!140147 () Unit!140096)

(assert (=> b!4795446 (= lt!1953075 Unit!140147)))

(assert (=> b!4795446 (forall!12277 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) lambda!231245)))

(declare-fun lt!1953074 () Unit!140096)

(declare-fun Unit!140148 () Unit!140096)

(assert (=> b!4795446 (= lt!1953074 Unit!140148)))

(assert (=> b!4795446 call!335157))

(declare-fun lt!1953078 () Unit!140096)

(declare-fun Unit!140149 () Unit!140096)

(assert (=> b!4795446 (= lt!1953078 Unit!140149)))

(declare-fun lt!1953072 () Unit!140096)

(declare-fun Unit!140150 () Unit!140096)

(assert (=> b!4795446 (= lt!1953072 Unit!140150)))

(declare-fun lt!1953073 () Unit!140096)

(assert (=> b!4795446 (= lt!1953073 (addForallContainsKeyThenBeforeAdding!945 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1953061 (_1!31746 (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))))))))

(assert (=> b!4795446 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) lambda!231245)))

(declare-fun lt!1953066 () Unit!140096)

(assert (=> b!4795446 (= lt!1953066 lt!1953073)))

(assert (=> b!4795446 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) lambda!231245)))

(declare-fun lt!1953070 () Unit!140096)

(declare-fun Unit!140151 () Unit!140096)

(assert (=> b!4795446 (= lt!1953070 Unit!140151)))

(declare-fun res!2038732 () Bool)

(assert (=> b!4795446 (= res!2038732 (forall!12277 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) lambda!231245))))

(assert (=> b!4795446 (=> (not res!2038732) (not e!2994363))))

(assert (=> b!4795446 e!2994363))

(declare-fun lt!1953060 () Unit!140096)

(declare-fun Unit!140152 () Unit!140096)

(assert (=> b!4795446 (= lt!1953060 Unit!140152)))

(declare-fun bm!335151 () Bool)

(assert (=> bm!335151 (= call!335157 (forall!12277 (ite c!817312 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (toList!6947 lt!1953079)) (ite c!817312 lambda!231243 lambda!231245)))))

(declare-fun bm!335152 () Bool)

(assert (=> bm!335152 (= call!335155 (forall!12277 (ite c!817312 (toList!6947 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (t!361824 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))))) (ite c!817312 lambda!231243 lambda!231245)))))

(assert (= (and d!1534512 c!817312) b!4795444))

(assert (= (and d!1534512 (not c!817312)) b!4795446))

(assert (= (and b!4795446 res!2038732) b!4795443))

(assert (= (or b!4795444 b!4795446) bm!335151))

(assert (= (or b!4795444 b!4795446) bm!335152))

(assert (= (or b!4795444 b!4795446) bm!335150))

(assert (= (and d!1534512 res!2038731) b!4795442))

(assert (= (and b!4795442 res!2038730) b!4795445))

(declare-fun m!5776968 () Bool)

(assert (=> b!4795446 m!5776968))

(declare-fun m!5776970 () Bool)

(assert (=> b!4795446 m!5776970))

(declare-fun m!5776972 () Bool)

(assert (=> b!4795446 m!5776972))

(declare-fun m!5776974 () Bool)

(assert (=> b!4795446 m!5776974))

(assert (=> b!4795446 m!5776732))

(assert (=> b!4795446 m!5776968))

(declare-fun m!5776976 () Bool)

(assert (=> b!4795446 m!5776976))

(declare-fun m!5776978 () Bool)

(assert (=> b!4795446 m!5776978))

(assert (=> b!4795446 m!5776974))

(declare-fun m!5776980 () Bool)

(assert (=> b!4795446 m!5776980))

(declare-fun m!5776982 () Bool)

(assert (=> b!4795446 m!5776982))

(declare-fun m!5776984 () Bool)

(assert (=> b!4795446 m!5776984))

(assert (=> b!4795446 m!5776982))

(assert (=> b!4795446 m!5776732))

(declare-fun m!5776986 () Bool)

(assert (=> b!4795446 m!5776986))

(declare-fun m!5776988 () Bool)

(assert (=> b!4795445 m!5776988))

(declare-fun m!5776990 () Bool)

(assert (=> b!4795442 m!5776990))

(assert (=> bm!335150 m!5776732))

(declare-fun m!5776992 () Bool)

(assert (=> bm!335150 m!5776992))

(assert (=> b!4795443 m!5776982))

(declare-fun m!5776994 () Bool)

(assert (=> d!1534512 m!5776994))

(declare-fun m!5776996 () Bool)

(assert (=> d!1534512 m!5776996))

(declare-fun m!5776998 () Bool)

(assert (=> bm!335151 m!5776998))

(declare-fun m!5777000 () Bool)

(assert (=> bm!335152 m!5777000))

(assert (=> b!4795287 d!1534512))

(declare-fun bs!1155491 () Bool)

(declare-fun d!1534514 () Bool)

(assert (= bs!1155491 (and d!1534514 d!1534420)))

(declare-fun lambda!231247 () Int)

(assert (=> bs!1155491 (= lambda!231247 lambda!231218)))

(declare-fun bs!1155492 () Bool)

(assert (= bs!1155492 (and d!1534514 d!1534348)))

(assert (=> bs!1155492 (= lambda!231247 lambda!231138)))

(declare-fun bs!1155493 () Bool)

(assert (= bs!1155493 (and d!1534514 start!494162)))

(assert (=> bs!1155493 (= lambda!231247 lambda!231121)))

(declare-fun bs!1155494 () Bool)

(assert (= bs!1155494 (and d!1534514 d!1534410)))

(assert (=> bs!1155494 (not (= lambda!231247 lambda!231216))))

(declare-fun bs!1155495 () Bool)

(assert (= bs!1155495 (and d!1534514 d!1534340)))

(assert (=> bs!1155495 (= lambda!231247 lambda!231132)))

(declare-fun bs!1155496 () Bool)

(assert (= bs!1155496 (and d!1534514 d!1534424)))

(assert (=> bs!1155496 (= lambda!231247 lambda!231221)))

(declare-fun bs!1155497 () Bool)

(assert (= bs!1155497 (and d!1534514 b!4794974)))

(assert (=> bs!1155497 (not (= lambda!231247 lambda!231122))))

(declare-fun bs!1155498 () Bool)

(assert (= bs!1155498 (and d!1534514 d!1534406)))

(assert (=> bs!1155498 (= lambda!231247 lambda!231213)))

(declare-fun bs!1155499 () Bool)

(assert (= bs!1155499 (and d!1534514 d!1534412)))

(assert (=> bs!1155499 (= lambda!231247 lambda!231217)))

(declare-fun lt!1953080 () ListMap!6419)

(assert (=> d!1534514 (invariantList!1738 (toList!6947 lt!1953080))))

(declare-fun e!2994364 () ListMap!6419)

(assert (=> d!1534514 (= lt!1953080 e!2994364)))

(declare-fun c!817313 () Bool)

(assert (=> d!1534514 (= c!817313 ((_ is Cons!54251) (t!361825 (t!361825 (toList!6948 lm!2473)))))))

(assert (=> d!1534514 (forall!12275 (t!361825 (t!361825 (toList!6948 lm!2473))) lambda!231247)))

(assert (=> d!1534514 (= (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473)))) lt!1953080)))

(declare-fun b!4795447 () Bool)

(assert (=> b!4795447 (= e!2994364 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (t!361825 (t!361825 (toList!6948 lm!2473))))) (extractMap!2461 (t!361825 (t!361825 (t!361825 (toList!6948 lm!2473)))))))))

(declare-fun b!4795448 () Bool)

(assert (=> b!4795448 (= e!2994364 (ListMap!6420 Nil!54250))))

(assert (= (and d!1534514 c!817313) b!4795447))

(assert (= (and d!1534514 (not c!817313)) b!4795448))

(declare-fun m!5777002 () Bool)

(assert (=> d!1534514 m!5777002))

(declare-fun m!5777004 () Bool)

(assert (=> d!1534514 m!5777004))

(declare-fun m!5777006 () Bool)

(assert (=> b!4795447 m!5777006))

(assert (=> b!4795447 m!5777006))

(declare-fun m!5777008 () Bool)

(assert (=> b!4795447 m!5777008))

(assert (=> b!4795287 d!1534514))

(declare-fun d!1534516 () Bool)

(assert (=> d!1534516 (= (get!18501 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896)) (v!48423 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896)))))

(assert (=> d!1534322 d!1534516))

(declare-fun b!4795457 () Bool)

(declare-fun e!2994369 () Option!13125)

(assert (=> b!4795457 (= e!2994369 (Some!13124 (_2!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun b!4795459 () Bool)

(declare-fun e!2994370 () Option!13125)

(assert (=> b!4795459 (= e!2994370 (getValueByKey!2366 (t!361824 (toList!6947 lt!1952727)) key!5896))))

(declare-fun b!4795458 () Bool)

(assert (=> b!4795458 (= e!2994369 e!2994370)))

(declare-fun c!817319 () Bool)

(assert (=> b!4795458 (= c!817319 (and ((_ is Cons!54250) (toList!6947 lt!1952727)) (not (= (_1!31746 (h!60680 (toList!6947 lt!1952727))) key!5896))))))

(declare-fun b!4795460 () Bool)

(assert (=> b!4795460 (= e!2994370 None!13124)))

(declare-fun d!1534518 () Bool)

(declare-fun c!817318 () Bool)

(assert (=> d!1534518 (= c!817318 (and ((_ is Cons!54250) (toList!6947 lt!1952727)) (= (_1!31746 (h!60680 (toList!6947 lt!1952727))) key!5896)))))

(assert (=> d!1534518 (= (getValueByKey!2366 (toList!6947 lt!1952727) key!5896) e!2994369)))

(assert (= (and d!1534518 c!817318) b!4795457))

(assert (= (and d!1534518 (not c!817318)) b!4795458))

(assert (= (and b!4795458 c!817319) b!4795459))

(assert (= (and b!4795458 (not c!817319)) b!4795460))

(declare-fun m!5777010 () Bool)

(assert (=> b!4795459 m!5777010))

(assert (=> d!1534322 d!1534518))

(declare-fun d!1534520 () Bool)

(declare-fun res!2038733 () Bool)

(declare-fun e!2994371 () Bool)

(assert (=> d!1534520 (=> res!2038733 e!2994371)))

(assert (=> d!1534520 (= res!2038733 (and ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) key!5896)))))

(assert (=> d!1534520 (= (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896) e!2994371)))

(declare-fun b!4795461 () Bool)

(declare-fun e!2994372 () Bool)

(assert (=> b!4795461 (= e!2994371 e!2994372)))

(declare-fun res!2038734 () Bool)

(assert (=> b!4795461 (=> (not res!2038734) (not e!2994372))))

(assert (=> b!4795461 (= res!2038734 ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))

(declare-fun b!4795462 () Bool)

(assert (=> b!4795462 (= e!2994372 (containsKey!3976 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) key!5896))))

(assert (= (and d!1534520 (not res!2038733)) b!4795461))

(assert (= (and b!4795461 res!2038734) b!4795462))

(declare-fun m!5777012 () Bool)

(assert (=> b!4795462 m!5777012))

(assert (=> d!1534426 d!1534520))

(declare-fun d!1534522 () Bool)

(declare-fun res!2038735 () Bool)

(declare-fun e!2994373 () Bool)

(assert (=> d!1534522 (=> res!2038735 e!2994373)))

(assert (=> d!1534522 (= res!2038735 (and ((_ is Cons!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (= (_1!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) key!5896)))))

(assert (=> d!1534522 (= (containsKey!3972 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) key!5896) e!2994373)))

(declare-fun b!4795463 () Bool)

(declare-fun e!2994374 () Bool)

(assert (=> b!4795463 (= e!2994373 e!2994374)))

(declare-fun res!2038736 () Bool)

(assert (=> b!4795463 (=> (not res!2038736) (not e!2994374))))

(assert (=> b!4795463 (= res!2038736 ((_ is Cons!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun b!4795464 () Bool)

(assert (=> b!4795464 (= e!2994374 (containsKey!3972 (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) key!5896))))

(assert (= (and d!1534522 (not res!2038735)) b!4795463))

(assert (= (and b!4795463 res!2038736) b!4795464))

(declare-fun m!5777014 () Bool)

(assert (=> b!4795464 m!5777014))

(assert (=> b!4795315 d!1534522))

(declare-fun d!1534524 () Bool)

(declare-fun res!2038737 () Bool)

(declare-fun e!2994375 () Bool)

(assert (=> d!1534524 (=> res!2038737 e!2994375)))

(assert (=> d!1534524 (= res!2038737 (and ((_ is Cons!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (= (_1!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(assert (=> d!1534524 (= (containsKey!3972 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) e!2994375)))

(declare-fun b!4795467 () Bool)

(declare-fun e!2994376 () Bool)

(assert (=> b!4795467 (= e!2994375 e!2994376)))

(declare-fun res!2038738 () Bool)

(assert (=> b!4795467 (=> (not res!2038738) (not e!2994376))))

(assert (=> b!4795467 (= res!2038738 ((_ is Cons!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun b!4795468 () Bool)

(assert (=> b!4795468 (= e!2994376 (containsKey!3972 (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (= (and d!1534524 (not res!2038737)) b!4795467))

(assert (= (and b!4795467 res!2038738) b!4795468))

(declare-fun m!5777016 () Bool)

(assert (=> b!4795468 m!5777016))

(assert (=> b!4795282 d!1534524))

(assert (=> b!4795059 d!1534430))

(declare-fun d!1534526 () Bool)

(declare-fun lt!1953085 () Bool)

(assert (=> d!1534526 (= lt!1953085 (select (content!9720 e!2994263) key!5896))))

(declare-fun e!2994381 () Bool)

(assert (=> d!1534526 (= lt!1953085 e!2994381)))

(declare-fun res!2038739 () Bool)

(assert (=> d!1534526 (=> (not res!2038739) (not e!2994381))))

(assert (=> d!1534526 (= res!2038739 ((_ is Cons!54253) e!2994263))))

(assert (=> d!1534526 (= (contains!17887 e!2994263 key!5896) lt!1953085)))

(declare-fun b!4795475 () Bool)

(declare-fun e!2994382 () Bool)

(assert (=> b!4795475 (= e!2994381 e!2994382)))

(declare-fun res!2038740 () Bool)

(assert (=> b!4795475 (=> res!2038740 e!2994382)))

(assert (=> b!4795475 (= res!2038740 (= (h!60683 e!2994263) key!5896))))

(declare-fun b!4795476 () Bool)

(assert (=> b!4795476 (= e!2994382 (contains!17887 (t!361827 e!2994263) key!5896))))

(assert (= (and d!1534526 res!2038739) b!4795475))

(assert (= (and b!4795475 (not res!2038740)) b!4795476))

(declare-fun m!5777018 () Bool)

(assert (=> d!1534526 m!5777018))

(declare-fun m!5777020 () Bool)

(assert (=> d!1534526 m!5777020))

(declare-fun m!5777022 () Bool)

(assert (=> b!4795476 m!5777022))

(assert (=> bm!335149 d!1534526))

(assert (=> d!1534404 d!1534508))

(declare-fun d!1534528 () Bool)

(assert (=> d!1534528 (= (isEmpty!29463 lt!1952988) (not ((_ is Some!13121) lt!1952988)))))

(assert (=> d!1534400 d!1534528))

(declare-fun d!1534530 () Bool)

(declare-fun res!2038741 () Bool)

(declare-fun e!2994385 () Bool)

(assert (=> d!1534530 (=> res!2038741 e!2994385)))

(assert (=> d!1534530 (= res!2038741 (not ((_ is Cons!54250) (apply!13004 lm!2473 lt!1952729))))))

(assert (=> d!1534530 (= (noDuplicateKeys!2347 (apply!13004 lm!2473 lt!1952729)) e!2994385)))

(declare-fun b!4795481 () Bool)

(declare-fun e!2994386 () Bool)

(assert (=> b!4795481 (= e!2994385 e!2994386)))

(declare-fun res!2038742 () Bool)

(assert (=> b!4795481 (=> (not res!2038742) (not e!2994386))))

(assert (=> b!4795481 (= res!2038742 (not (containsKey!3972 (t!361824 (apply!13004 lm!2473 lt!1952729)) (_1!31746 (h!60680 (apply!13004 lm!2473 lt!1952729))))))))

(declare-fun b!4795482 () Bool)

(assert (=> b!4795482 (= e!2994386 (noDuplicateKeys!2347 (t!361824 (apply!13004 lm!2473 lt!1952729))))))

(assert (= (and d!1534530 (not res!2038741)) b!4795481))

(assert (= (and b!4795481 res!2038742) b!4795482))

(declare-fun m!5777024 () Bool)

(assert (=> b!4795481 m!5777024))

(declare-fun m!5777026 () Bool)

(assert (=> b!4795482 m!5777026))

(assert (=> d!1534400 d!1534530))

(declare-fun d!1534532 () Bool)

(assert (=> d!1534532 (= (get!18502 lt!1952988) (v!48418 lt!1952988))))

(assert (=> b!4795254 d!1534532))

(declare-fun d!1534534 () Bool)

(declare-fun res!2038743 () Bool)

(declare-fun e!2994387 () Bool)

(assert (=> d!1534534 (=> res!2038743 e!2994387)))

(assert (=> d!1534534 (= res!2038743 ((_ is Nil!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534534 (= (forall!12275 (toList!6948 lm!2473) lambda!231216) e!2994387)))

(declare-fun b!4795483 () Bool)

(declare-fun e!2994388 () Bool)

(assert (=> b!4795483 (= e!2994387 e!2994388)))

(declare-fun res!2038744 () Bool)

(assert (=> b!4795483 (=> (not res!2038744) (not e!2994388))))

(assert (=> b!4795483 (= res!2038744 (dynLambda!22075 lambda!231216 (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4795484 () Bool)

(assert (=> b!4795484 (= e!2994388 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231216))))

(assert (= (and d!1534534 (not res!2038743)) b!4795483))

(assert (= (and b!4795483 res!2038744) b!4795484))

(declare-fun b_lambda!187013 () Bool)

(assert (=> (not b_lambda!187013) (not b!4795483)))

(declare-fun m!5777028 () Bool)

(assert (=> b!4795483 m!5777028))

(declare-fun m!5777030 () Bool)

(assert (=> b!4795484 m!5777030))

(assert (=> d!1534410 d!1534534))

(assert (=> b!4795291 d!1534408))

(declare-fun d!1534536 () Bool)

(assert (=> d!1534536 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896))))

(declare-fun lt!1953098 () Unit!140096)

(declare-fun choose!34585 (List!54374 K!15824) Unit!140096)

(assert (=> d!1534536 (= lt!1953098 (choose!34585 (toList!6947 lt!1952727) key!5896))))

(assert (=> d!1534536 (invariantList!1738 (toList!6947 lt!1952727))))

(assert (=> d!1534536 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 lt!1952727) key!5896) lt!1953098)))

(declare-fun bs!1155500 () Bool)

(assert (= bs!1155500 d!1534536))

(assert (=> bs!1155500 m!5776334))

(assert (=> bs!1155500 m!5776334))

(assert (=> bs!1155500 m!5776770))

(declare-fun m!5777032 () Bool)

(assert (=> bs!1155500 m!5777032))

(declare-fun m!5777034 () Bool)

(assert (=> bs!1155500 m!5777034))

(assert (=> b!4795309 d!1534536))

(declare-fun d!1534538 () Bool)

(declare-fun isEmpty!29467 (Option!13125) Bool)

(assert (=> d!1534538 (= (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896)) (not (isEmpty!29467 (getValueByKey!2366 (toList!6947 lt!1952727) key!5896))))))

(declare-fun bs!1155501 () Bool)

(assert (= bs!1155501 d!1534538))

(assert (=> bs!1155501 m!5776334))

(declare-fun m!5777036 () Bool)

(assert (=> bs!1155501 m!5777036))

(assert (=> b!4795309 d!1534538))

(assert (=> b!4795309 d!1534518))

(declare-fun d!1534540 () Bool)

(assert (=> d!1534540 (contains!17887 (getKeysList!1084 (toList!6947 lt!1952727)) key!5896)))

(declare-fun lt!1953101 () Unit!140096)

(declare-fun choose!34586 (List!54374 K!15824) Unit!140096)

(assert (=> d!1534540 (= lt!1953101 (choose!34586 (toList!6947 lt!1952727) key!5896))))

(assert (=> d!1534540 (invariantList!1738 (toList!6947 lt!1952727))))

(assert (=> d!1534540 (= (lemmaInListThenGetKeysListContains!1079 (toList!6947 lt!1952727) key!5896) lt!1953101)))

(declare-fun bs!1155502 () Bool)

(assert (= bs!1155502 d!1534540))

(assert (=> bs!1155502 m!5776766))

(assert (=> bs!1155502 m!5776766))

(declare-fun m!5777038 () Bool)

(assert (=> bs!1155502 m!5777038))

(declare-fun m!5777040 () Bool)

(assert (=> bs!1155502 m!5777040))

(assert (=> bs!1155502 m!5777034))

(assert (=> b!4795309 d!1534540))

(declare-fun d!1534542 () Bool)

(declare-fun noDuplicatedKeys!442 (List!54374) Bool)

(assert (=> d!1534542 (= (invariantList!1738 (toList!6947 lt!1953003)) (noDuplicatedKeys!442 (toList!6947 lt!1953003)))))

(declare-fun bs!1155504 () Bool)

(assert (= bs!1155504 d!1534542))

(declare-fun m!5777042 () Bool)

(assert (=> bs!1155504 m!5777042))

(assert (=> d!1534412 d!1534542))

(declare-fun d!1534544 () Bool)

(declare-fun res!2038754 () Bool)

(declare-fun e!2994395 () Bool)

(assert (=> d!1534544 (=> res!2038754 e!2994395)))

(assert (=> d!1534544 (= res!2038754 ((_ is Nil!54251) (toList!6948 lt!1952728)))))

(assert (=> d!1534544 (= (forall!12275 (toList!6948 lt!1952728) lambda!231217) e!2994395)))

(declare-fun b!4795502 () Bool)

(declare-fun e!2994396 () Bool)

(assert (=> b!4795502 (= e!2994395 e!2994396)))

(declare-fun res!2038755 () Bool)

(assert (=> b!4795502 (=> (not res!2038755) (not e!2994396))))

(assert (=> b!4795502 (= res!2038755 (dynLambda!22075 lambda!231217 (h!60681 (toList!6948 lt!1952728))))))

(declare-fun b!4795503 () Bool)

(assert (=> b!4795503 (= e!2994396 (forall!12275 (t!361825 (toList!6948 lt!1952728)) lambda!231217))))

(assert (= (and d!1534544 (not res!2038754)) b!4795502))

(assert (= (and b!4795502 res!2038755) b!4795503))

(declare-fun b_lambda!187015 () Bool)

(assert (=> (not b_lambda!187015) (not b!4795502)))

(declare-fun m!5777044 () Bool)

(assert (=> b!4795502 m!5777044))

(declare-fun m!5777046 () Bool)

(assert (=> b!4795503 m!5777046))

(assert (=> d!1534412 d!1534544))

(declare-fun d!1534546 () Bool)

(declare-fun res!2038756 () Bool)

(declare-fun e!2994397 () Bool)

(assert (=> d!1534546 (=> res!2038756 e!2994397)))

(assert (=> d!1534546 (= res!2038756 ((_ is Nil!54250) (ite c!817277 (toList!6947 lt!1952727) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> d!1534546 (= (forall!12277 (ite c!817277 (toList!6947 lt!1952727) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (ite c!817277 lambda!231207 lambda!231209)) e!2994397)))

(declare-fun b!4795504 () Bool)

(declare-fun e!2994398 () Bool)

(assert (=> b!4795504 (= e!2994397 e!2994398)))

(declare-fun res!2038757 () Bool)

(assert (=> b!4795504 (=> (not res!2038757) (not e!2994398))))

(assert (=> b!4795504 (= res!2038757 (dynLambda!22076 (ite c!817277 lambda!231207 lambda!231209) (h!60680 (ite c!817277 (toList!6947 lt!1952727) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795505 () Bool)

(assert (=> b!4795505 (= e!2994398 (forall!12277 (t!361824 (ite c!817277 (toList!6947 lt!1952727) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (ite c!817277 lambda!231207 lambda!231209)))))

(assert (= (and d!1534546 (not res!2038756)) b!4795504))

(assert (= (and b!4795504 res!2038757) b!4795505))

(declare-fun b_lambda!187017 () Bool)

(assert (=> (not b_lambda!187017) (not b!4795504)))

(declare-fun m!5777048 () Bool)

(assert (=> b!4795504 m!5777048))

(declare-fun m!5777050 () Bool)

(assert (=> b!4795505 m!5777050))

(assert (=> bm!335146 d!1534546))

(declare-fun lt!1953109 () Bool)

(declare-fun d!1534548 () Bool)

(assert (=> d!1534548 (= lt!1953109 (select (content!9718 (apply!13004 lm!2473 lt!1952729)) (get!18502 lt!1952988)))))

(declare-fun e!2994400 () Bool)

(assert (=> d!1534548 (= lt!1953109 e!2994400)))

(declare-fun res!2038759 () Bool)

(assert (=> d!1534548 (=> (not res!2038759) (not e!2994400))))

(assert (=> d!1534548 (= res!2038759 ((_ is Cons!54250) (apply!13004 lm!2473 lt!1952729)))))

(assert (=> d!1534548 (= (contains!17883 (apply!13004 lm!2473 lt!1952729) (get!18502 lt!1952988)) lt!1953109)))

(declare-fun b!4795506 () Bool)

(declare-fun e!2994399 () Bool)

(assert (=> b!4795506 (= e!2994400 e!2994399)))

(declare-fun res!2038758 () Bool)

(assert (=> b!4795506 (=> res!2038758 e!2994399)))

(assert (=> b!4795506 (= res!2038758 (= (h!60680 (apply!13004 lm!2473 lt!1952729)) (get!18502 lt!1952988)))))

(declare-fun b!4795507 () Bool)

(assert (=> b!4795507 (= e!2994399 (contains!17883 (t!361824 (apply!13004 lm!2473 lt!1952729)) (get!18502 lt!1952988)))))

(assert (= (and d!1534548 res!2038759) b!4795506))

(assert (= (and b!4795506 (not res!2038758)) b!4795507))

(assert (=> d!1534548 m!5776320))

(declare-fun m!5777052 () Bool)

(assert (=> d!1534548 m!5777052))

(assert (=> d!1534548 m!5776658))

(declare-fun m!5777054 () Bool)

(assert (=> d!1534548 m!5777054))

(assert (=> b!4795507 m!5776658))

(declare-fun m!5777056 () Bool)

(assert (=> b!4795507 m!5777056))

(assert (=> b!4795250 d!1534548))

(assert (=> b!4795250 d!1534532))

(declare-fun bs!1155526 () Bool)

(declare-fun b!4795564 () Bool)

(assert (= bs!1155526 (and b!4795564 b!4795352)))

(declare-fun lambda!231271 () Int)

(assert (=> bs!1155526 (= (= (t!361824 (toList!6947 lt!1952727)) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231271 lambda!231229))))

(declare-fun bs!1155527 () Bool)

(assert (= bs!1155527 (and b!4795564 b!4795359)))

(assert (=> bs!1155527 (= (= (t!361824 (toList!6947 lt!1952727)) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231271 lambda!231233))))

(declare-fun bs!1155528 () Bool)

(assert (= bs!1155528 (and b!4795564 b!4795379)))

(assert (=> bs!1155528 (= (= (t!361824 (toList!6947 lt!1952727)) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231271 lambda!231239))))

(assert (=> b!4795564 true))

(declare-fun bs!1155529 () Bool)

(declare-fun b!4795566 () Bool)

(assert (= bs!1155529 (and b!4795566 b!4795352)))

(declare-fun lambda!231272 () Int)

(assert (=> bs!1155529 (= (= (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231272 lambda!231229))))

(declare-fun bs!1155530 () Bool)

(assert (= bs!1155530 (and b!4795566 b!4795359)))

(assert (=> bs!1155530 (= (= (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231272 lambda!231233))))

(declare-fun bs!1155531 () Bool)

(assert (= bs!1155531 (and b!4795566 b!4795379)))

(assert (=> bs!1155531 (= (= (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231272 lambda!231239))))

(declare-fun bs!1155532 () Bool)

(assert (= bs!1155532 (and b!4795566 b!4795564)))

(assert (=> bs!1155532 (= (= (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231272 lambda!231271))))

(assert (=> b!4795566 true))

(declare-fun bs!1155533 () Bool)

(declare-fun b!4795563 () Bool)

(assert (= bs!1155533 (and b!4795563 b!4795566)))

(declare-fun lambda!231273 () Int)

(assert (=> bs!1155533 (= (= (toList!6947 lt!1952727) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231273 lambda!231272))))

(declare-fun bs!1155534 () Bool)

(assert (= bs!1155534 (and b!4795563 b!4795352)))

(assert (=> bs!1155534 (= (= (toList!6947 lt!1952727) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231273 lambda!231229))))

(declare-fun bs!1155535 () Bool)

(assert (= bs!1155535 (and b!4795563 b!4795359)))

(assert (=> bs!1155535 (= (= (toList!6947 lt!1952727) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231273 lambda!231233))))

(declare-fun bs!1155536 () Bool)

(assert (= bs!1155536 (and b!4795563 b!4795379)))

(assert (=> bs!1155536 (= (= (toList!6947 lt!1952727) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231273 lambda!231239))))

(declare-fun bs!1155537 () Bool)

(assert (= bs!1155537 (and b!4795563 b!4795564)))

(assert (=> bs!1155537 (= (= (toList!6947 lt!1952727) (t!361824 (toList!6947 lt!1952727))) (= lambda!231273 lambda!231271))))

(assert (=> b!4795563 true))

(declare-fun bs!1155538 () Bool)

(declare-fun b!4795567 () Bool)

(assert (= bs!1155538 (and b!4795567 b!4795353)))

(declare-fun lambda!231274 () Int)

(assert (=> bs!1155538 (= lambda!231274 lambda!231232)))

(declare-fun bs!1155539 () Bool)

(assert (= bs!1155539 (and b!4795567 b!4795360)))

(assert (=> bs!1155539 (= lambda!231274 lambda!231236)))

(declare-fun bs!1155540 () Bool)

(assert (= bs!1155540 (and b!4795567 b!4795380)))

(assert (=> bs!1155540 (= lambda!231274 lambda!231240)))

(declare-fun b!4795559 () Bool)

(assert (=> b!4795559 false))

(declare-fun e!2994432 () Unit!140096)

(declare-fun Unit!140162 () Unit!140096)

(assert (=> b!4795559 (= e!2994432 Unit!140162)))

(declare-fun d!1534550 () Bool)

(declare-fun e!2994431 () Bool)

(assert (=> d!1534550 e!2994431))

(declare-fun res!2038782 () Bool)

(assert (=> d!1534550 (=> (not res!2038782) (not e!2994431))))

(declare-fun lt!1953139 () List!54377)

(assert (=> d!1534550 (= res!2038782 (noDuplicate!923 lt!1953139))))

(declare-fun e!2994433 () List!54377)

(assert (=> d!1534550 (= lt!1953139 e!2994433)))

(declare-fun c!817343 () Bool)

(assert (=> d!1534550 (= c!817343 ((_ is Cons!54250) (toList!6947 lt!1952727)))))

(assert (=> d!1534550 (invariantList!1738 (toList!6947 lt!1952727))))

(assert (=> d!1534550 (= (getKeysList!1084 (toList!6947 lt!1952727)) lt!1953139)))

(declare-fun b!4795560 () Bool)

(declare-fun e!2994434 () Unit!140096)

(declare-fun Unit!140164 () Unit!140096)

(assert (=> b!4795560 (= e!2994434 Unit!140164)))

(declare-fun b!4795561 () Bool)

(assert (=> b!4795561 (= e!2994433 Nil!54253)))

(declare-fun b!4795562 () Bool)

(declare-fun res!2038781 () Bool)

(assert (=> b!4795562 (=> (not res!2038781) (not e!2994431))))

(assert (=> b!4795562 (= res!2038781 (= (length!702 lt!1953139) (length!703 (toList!6947 lt!1952727))))))

(declare-fun res!2038783 () Bool)

(assert (=> b!4795563 (=> (not res!2038783) (not e!2994431))))

(assert (=> b!4795563 (= res!2038783 (forall!12279 lt!1953139 lambda!231273))))

(assert (=> b!4795564 false))

(declare-fun lt!1953136 () Unit!140096)

(declare-fun forallContained!4185 (List!54377 Int K!15824) Unit!140096)

(assert (=> b!4795564 (= lt!1953136 (forallContained!4185 (getKeysList!1084 (t!361824 (toList!6947 lt!1952727))) lambda!231271 (_1!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun Unit!140166 () Unit!140096)

(assert (=> b!4795564 (= e!2994434 Unit!140166)))

(declare-fun b!4795565 () Bool)

(declare-fun Unit!140167 () Unit!140096)

(assert (=> b!4795565 (= e!2994432 Unit!140167)))

(assert (=> b!4795566 (= e!2994433 (Cons!54253 (_1!31746 (h!60680 (toList!6947 lt!1952727))) (getKeysList!1084 (t!361824 (toList!6947 lt!1952727)))))))

(declare-fun c!817345 () Bool)

(assert (=> b!4795566 (= c!817345 (containsKey!3976 (t!361824 (toList!6947 lt!1952727)) (_1!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun lt!1953135 () Unit!140096)

(assert (=> b!4795566 (= lt!1953135 e!2994432)))

(declare-fun c!817344 () Bool)

(assert (=> b!4795566 (= c!817344 (contains!17887 (getKeysList!1084 (t!361824 (toList!6947 lt!1952727))) (_1!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun lt!1953138 () Unit!140096)

(assert (=> b!4795566 (= lt!1953138 e!2994434)))

(declare-fun lt!1953140 () List!54377)

(assert (=> b!4795566 (= lt!1953140 (getKeysList!1084 (t!361824 (toList!6947 lt!1952727))))))

(declare-fun lt!1953141 () Unit!140096)

(declare-fun lemmaForallContainsAddHeadPreserves!338 (List!54374 List!54377 tuple2!56904) Unit!140096)

(assert (=> b!4795566 (= lt!1953141 (lemmaForallContainsAddHeadPreserves!338 (t!361824 (toList!6947 lt!1952727)) lt!1953140 (h!60680 (toList!6947 lt!1952727))))))

(assert (=> b!4795566 (forall!12279 lt!1953140 lambda!231272)))

(declare-fun lt!1953137 () Unit!140096)

(assert (=> b!4795566 (= lt!1953137 lt!1953141)))

(assert (=> b!4795567 (= e!2994431 (= (content!9720 lt!1953139) (content!9720 (map!12251 (toList!6947 lt!1952727) lambda!231274))))))

(assert (= (and d!1534550 c!817343) b!4795566))

(assert (= (and d!1534550 (not c!817343)) b!4795561))

(assert (= (and b!4795566 c!817345) b!4795559))

(assert (= (and b!4795566 (not c!817345)) b!4795565))

(assert (= (and b!4795566 c!817344) b!4795564))

(assert (= (and b!4795566 (not c!817344)) b!4795560))

(assert (= (and d!1534550 res!2038782) b!4795562))

(assert (= (and b!4795562 res!2038781) b!4795563))

(assert (= (and b!4795563 res!2038783) b!4795567))

(declare-fun m!5777142 () Bool)

(assert (=> b!4795562 m!5777142))

(declare-fun m!5777144 () Bool)

(assert (=> b!4795562 m!5777144))

(declare-fun m!5777146 () Bool)

(assert (=> b!4795563 m!5777146))

(declare-fun m!5777148 () Bool)

(assert (=> b!4795566 m!5777148))

(declare-fun m!5777150 () Bool)

(assert (=> b!4795566 m!5777150))

(declare-fun m!5777152 () Bool)

(assert (=> b!4795566 m!5777152))

(declare-fun m!5777154 () Bool)

(assert (=> b!4795566 m!5777154))

(assert (=> b!4795566 m!5777154))

(declare-fun m!5777158 () Bool)

(assert (=> b!4795566 m!5777158))

(declare-fun m!5777162 () Bool)

(assert (=> d!1534550 m!5777162))

(assert (=> d!1534550 m!5777034))

(assert (=> b!4795564 m!5777154))

(assert (=> b!4795564 m!5777154))

(declare-fun m!5777166 () Bool)

(assert (=> b!4795564 m!5777166))

(declare-fun m!5777168 () Bool)

(assert (=> b!4795567 m!5777168))

(declare-fun m!5777170 () Bool)

(assert (=> b!4795567 m!5777170))

(assert (=> b!4795567 m!5777170))

(declare-fun m!5777172 () Bool)

(assert (=> b!4795567 m!5777172))

(assert (=> b!4795304 d!1534550))

(declare-fun d!1534594 () Bool)

(declare-fun choose!34587 (Hashable!6934 K!15824) (_ BitVec 64))

(assert (=> d!1534594 (= (hash!4977 hashF!1559 key!5896) (choose!34587 hashF!1559 key!5896))))

(declare-fun bs!1155547 () Bool)

(assert (= bs!1155547 d!1534594))

(declare-fun m!5777174 () Bool)

(assert (=> bs!1155547 m!5777174))

(assert (=> d!1534364 d!1534594))

(declare-fun b!4795587 () Bool)

(declare-fun e!2994452 () Option!13122)

(assert (=> b!4795587 (= e!2994452 (Some!13121 (h!60680 (t!361824 (apply!13004 lm!2473 lt!1952729)))))))

(declare-fun b!4795589 () Bool)

(declare-fun e!2994450 () Option!13122)

(assert (=> b!4795589 (= e!2994452 e!2994450)))

(declare-fun c!817346 () Bool)

(assert (=> b!4795589 (= c!817346 ((_ is Cons!54250) (t!361824 (apply!13004 lm!2473 lt!1952729))))))

(declare-fun e!2994451 () Bool)

(declare-fun b!4795590 () Bool)

(declare-fun lt!1953145 () Option!13122)

(assert (=> b!4795590 (= e!2994451 (contains!17883 (t!361824 (apply!13004 lm!2473 lt!1952729)) (get!18502 lt!1953145)))))

(declare-fun b!4795591 () Bool)

(declare-fun e!2994453 () Bool)

(assert (=> b!4795591 (= e!2994453 (not (containsKey!3972 (t!361824 (apply!13004 lm!2473 lt!1952729)) key!5896)))))

(declare-fun b!4795592 () Bool)

(assert (=> b!4795592 (= e!2994450 (getPair!906 (t!361824 (t!361824 (apply!13004 lm!2473 lt!1952729))) key!5896))))

(declare-fun b!4795593 () Bool)

(declare-fun e!2994454 () Bool)

(assert (=> b!4795593 (= e!2994454 e!2994451)))

(declare-fun res!2038802 () Bool)

(assert (=> b!4795593 (=> (not res!2038802) (not e!2994451))))

(assert (=> b!4795593 (= res!2038802 (isDefined!10263 lt!1953145))))

(declare-fun b!4795594 () Bool)

(declare-fun res!2038803 () Bool)

(assert (=> b!4795594 (=> (not res!2038803) (not e!2994451))))

(assert (=> b!4795594 (= res!2038803 (= (_1!31746 (get!18502 lt!1953145)) key!5896))))

(declare-fun b!4795588 () Bool)

(assert (=> b!4795588 (= e!2994450 None!13121)))

(declare-fun d!1534596 () Bool)

(assert (=> d!1534596 e!2994454))

(declare-fun res!2038801 () Bool)

(assert (=> d!1534596 (=> res!2038801 e!2994454)))

(assert (=> d!1534596 (= res!2038801 e!2994453)))

(declare-fun res!2038804 () Bool)

(assert (=> d!1534596 (=> (not res!2038804) (not e!2994453))))

(assert (=> d!1534596 (= res!2038804 (isEmpty!29463 lt!1953145))))

(assert (=> d!1534596 (= lt!1953145 e!2994452)))

(declare-fun c!817347 () Bool)

(assert (=> d!1534596 (= c!817347 (and ((_ is Cons!54250) (t!361824 (apply!13004 lm!2473 lt!1952729))) (= (_1!31746 (h!60680 (t!361824 (apply!13004 lm!2473 lt!1952729)))) key!5896)))))

(assert (=> d!1534596 (noDuplicateKeys!2347 (t!361824 (apply!13004 lm!2473 lt!1952729)))))

(assert (=> d!1534596 (= (getPair!906 (t!361824 (apply!13004 lm!2473 lt!1952729)) key!5896) lt!1953145)))

(assert (= (and d!1534596 c!817347) b!4795587))

(assert (= (and d!1534596 (not c!817347)) b!4795589))

(assert (= (and b!4795589 c!817346) b!4795592))

(assert (= (and b!4795589 (not c!817346)) b!4795588))

(assert (= (and d!1534596 res!2038804) b!4795591))

(assert (= (and d!1534596 (not res!2038801)) b!4795593))

(assert (= (and b!4795593 res!2038802) b!4795594))

(assert (= (and b!4795594 res!2038803) b!4795590))

(declare-fun m!5777188 () Bool)

(assert (=> b!4795593 m!5777188))

(declare-fun m!5777192 () Bool)

(assert (=> b!4795594 m!5777192))

(declare-fun m!5777194 () Bool)

(assert (=> d!1534596 m!5777194))

(assert (=> d!1534596 m!5777026))

(declare-fun m!5777196 () Bool)

(assert (=> b!4795592 m!5777196))

(declare-fun m!5777198 () Bool)

(assert (=> b!4795591 m!5777198))

(assert (=> b!4795590 m!5777192))

(assert (=> b!4795590 m!5777192))

(declare-fun m!5777200 () Bool)

(assert (=> b!4795590 m!5777200))

(assert (=> b!4795252 d!1534596))

(declare-fun d!1534600 () Bool)

(declare-fun lt!1953146 () Bool)

(assert (=> d!1534600 (= lt!1953146 (select (content!9718 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952726))))

(declare-fun e!2994459 () Bool)

(assert (=> d!1534600 (= lt!1953146 e!2994459)))

(declare-fun res!2038809 () Bool)

(assert (=> d!1534600 (=> (not res!2038809) (not e!2994459))))

(assert (=> d!1534600 (= res!2038809 ((_ is Cons!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> d!1534600 (= (contains!17883 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lt!1952726) lt!1953146)))

(declare-fun b!4795598 () Bool)

(declare-fun e!2994458 () Bool)

(assert (=> b!4795598 (= e!2994459 e!2994458)))

(declare-fun res!2038808 () Bool)

(assert (=> b!4795598 (=> res!2038808 e!2994458)))

(assert (=> b!4795598 (= res!2038808 (= (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952726))))

(declare-fun b!4795599 () Bool)

(assert (=> b!4795599 (= e!2994458 (contains!17883 (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952726))))

(assert (= (and d!1534600 res!2038809) b!4795598))

(assert (= (and b!4795598 (not res!2038808)) b!4795599))

(assert (=> d!1534600 m!5776798))

(declare-fun m!5777206 () Bool)

(assert (=> d!1534600 m!5777206))

(declare-fun m!5777208 () Bool)

(assert (=> b!4795599 m!5777208))

(assert (=> b!4795275 d!1534600))

(declare-fun d!1534604 () Bool)

(declare-fun c!817348 () Bool)

(declare-fun e!2994463 () Bool)

(assert (=> d!1534604 (= c!817348 e!2994463)))

(declare-fun res!2038812 () Bool)

(assert (=> d!1534604 (=> (not res!2038812) (not e!2994463))))

(assert (=> d!1534604 (= res!2038812 ((_ is Cons!54251) (t!361825 (toList!6948 lm!2473))))))

(declare-fun e!2994462 () V!16070)

(assert (=> d!1534604 (= (getValue!122 (t!361825 (toList!6948 lm!2473)) key!5896) e!2994462)))

(declare-fun b!4795604 () Bool)

(assert (=> b!4795604 (= e!2994463 (containsKey!3972 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) key!5896))))

(declare-fun b!4795602 () Bool)

(assert (=> b!4795602 (= e!2994462 (_2!31746 (get!18502 (getPair!906 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) key!5896))))))

(declare-fun b!4795603 () Bool)

(assert (=> b!4795603 (= e!2994462 (getValue!122 (t!361825 (t!361825 (toList!6948 lm!2473))) key!5896))))

(assert (= (and d!1534604 res!2038812) b!4795604))

(assert (= (and d!1534604 c!817348) b!4795602))

(assert (= (and d!1534604 (not c!817348)) b!4795603))

(declare-fun m!5777216 () Bool)

(assert (=> b!4795604 m!5777216))

(declare-fun m!5777218 () Bool)

(assert (=> b!4795602 m!5777218))

(assert (=> b!4795602 m!5777218))

(declare-fun m!5777220 () Bool)

(assert (=> b!4795602 m!5777220))

(declare-fun m!5777222 () Bool)

(assert (=> b!4795603 m!5777222))

(assert (=> b!4795108 d!1534604))

(assert (=> b!4795160 d!1534474))

(assert (=> b!4795160 d!1534456))

(declare-fun d!1534608 () Bool)

(declare-fun res!2038813 () Bool)

(declare-fun e!2994464 () Bool)

(assert (=> d!1534608 (=> res!2038813 e!2994464)))

(assert (=> d!1534608 (= res!2038813 ((_ is Nil!54250) (toList!6947 lt!1952727)))))

(assert (=> d!1534608 (= (forall!12277 (toList!6947 lt!1952727) lambda!231209) e!2994464)))

(declare-fun b!4795605 () Bool)

(declare-fun e!2994465 () Bool)

(assert (=> b!4795605 (= e!2994464 e!2994465)))

(declare-fun res!2038814 () Bool)

(assert (=> b!4795605 (=> (not res!2038814) (not e!2994465))))

(assert (=> b!4795605 (= res!2038814 (dynLambda!22076 lambda!231209 (h!60680 (toList!6947 lt!1952727))))))

(declare-fun b!4795606 () Bool)

(assert (=> b!4795606 (= e!2994465 (forall!12277 (t!361824 (toList!6947 lt!1952727)) lambda!231209))))

(assert (= (and d!1534608 (not res!2038813)) b!4795605))

(assert (= (and b!4795605 res!2038814) b!4795606))

(declare-fun b_lambda!187023 () Bool)

(assert (=> (not b_lambda!187023) (not b!4795605)))

(declare-fun m!5777224 () Bool)

(assert (=> b!4795605 m!5777224))

(declare-fun m!5777226 () Bool)

(assert (=> b!4795606 m!5777226))

(assert (=> b!4795228 d!1534608))

(declare-fun d!1534612 () Bool)

(declare-fun e!2994472 () Bool)

(assert (=> d!1534612 e!2994472))

(declare-fun res!2038823 () Bool)

(assert (=> d!1534612 (=> (not res!2038823) (not e!2994472))))

(declare-fun lt!1953178 () ListMap!6419)

(assert (=> d!1534612 (= res!2038823 (contains!17882 lt!1953178 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953181 () List!54374)

(assert (=> d!1534612 (= lt!1953178 (ListMap!6420 lt!1953181))))

(declare-fun lt!1953179 () Unit!140096)

(declare-fun lt!1953180 () Unit!140096)

(assert (=> d!1534612 (= lt!1953179 lt!1953180)))

(assert (=> d!1534612 (= (getValueByKey!2366 lt!1953181 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (Some!13124 (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1200 (List!54374 K!15824 V!16070) Unit!140096)

(assert (=> d!1534612 (= lt!1953180 (lemmaContainsTupThenGetReturnValue!1200 lt!1953181 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun insertNoDuplicatedKeys!708 (List!54374 K!15824 V!16070) List!54374)

(assert (=> d!1534612 (= lt!1953181 (insertNoDuplicatedKeys!708 (toList!6947 lt!1952727) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> d!1534612 (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953178)))

(declare-fun b!4795618 () Bool)

(declare-fun res!2038822 () Bool)

(assert (=> b!4795618 (=> (not res!2038822) (not e!2994472))))

(assert (=> b!4795618 (= res!2038822 (= (getValueByKey!2366 (toList!6947 lt!1953178) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (Some!13124 (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795619 () Bool)

(assert (=> b!4795619 (= e!2994472 (contains!17883 (toList!6947 lt!1953178) (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (= (and d!1534612 res!2038823) b!4795618))

(assert (= (and b!4795618 res!2038822) b!4795619))

(declare-fun m!5777270 () Bool)

(assert (=> d!1534612 m!5777270))

(declare-fun m!5777272 () Bool)

(assert (=> d!1534612 m!5777272))

(declare-fun m!5777276 () Bool)

(assert (=> d!1534612 m!5777276))

(declare-fun m!5777278 () Bool)

(assert (=> d!1534612 m!5777278))

(declare-fun m!5777280 () Bool)

(assert (=> b!4795618 m!5777280))

(declare-fun m!5777282 () Bool)

(assert (=> b!4795619 m!5777282))

(assert (=> b!4795228 d!1534612))

(declare-fun d!1534622 () Bool)

(declare-fun res!2038826 () Bool)

(declare-fun e!2994477 () Bool)

(assert (=> d!1534622 (=> res!2038826 e!2994477)))

(assert (=> d!1534622 (= res!2038826 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534622 (= (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231209) e!2994477)))

(declare-fun b!4795626 () Bool)

(declare-fun e!2994478 () Bool)

(assert (=> b!4795626 (= e!2994477 e!2994478)))

(declare-fun res!2038827 () Bool)

(assert (=> b!4795626 (=> (not res!2038827) (not e!2994478))))

(assert (=> b!4795626 (= res!2038827 (dynLambda!22076 lambda!231209 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun b!4795627 () Bool)

(assert (=> b!4795627 (= e!2994478 (forall!12277 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lambda!231209))))

(assert (= (and d!1534622 (not res!2038826)) b!4795626))

(assert (= (and b!4795626 res!2038827) b!4795627))

(declare-fun b_lambda!187025 () Bool)

(assert (=> (not b_lambda!187025) (not b!4795626)))

(declare-fun m!5777286 () Bool)

(assert (=> b!4795626 m!5777286))

(declare-fun m!5777290 () Bool)

(assert (=> b!4795627 m!5777290))

(assert (=> b!4795228 d!1534622))

(declare-fun d!1534626 () Bool)

(declare-fun res!2038828 () Bool)

(declare-fun e!2994479 () Bool)

(assert (=> d!1534626 (=> res!2038828 e!2994479)))

(assert (=> d!1534626 (= res!2038828 ((_ is Nil!54250) (toList!6947 lt!1952985)))))

(assert (=> d!1534626 (= (forall!12277 (toList!6947 lt!1952985) lambda!231209) e!2994479)))

(declare-fun b!4795628 () Bool)

(declare-fun e!2994480 () Bool)

(assert (=> b!4795628 (= e!2994479 e!2994480)))

(declare-fun res!2038829 () Bool)

(assert (=> b!4795628 (=> (not res!2038829) (not e!2994480))))

(assert (=> b!4795628 (= res!2038829 (dynLambda!22076 lambda!231209 (h!60680 (toList!6947 lt!1952985))))))

(declare-fun b!4795629 () Bool)

(assert (=> b!4795629 (= e!2994480 (forall!12277 (t!361824 (toList!6947 lt!1952985)) lambda!231209))))

(assert (= (and d!1534626 (not res!2038828)) b!4795628))

(assert (= (and b!4795628 res!2038829) b!4795629))

(declare-fun b_lambda!187027 () Bool)

(assert (=> (not b_lambda!187027) (not b!4795628)))

(declare-fun m!5777296 () Bool)

(assert (=> b!4795628 m!5777296))

(declare-fun m!5777298 () Bool)

(assert (=> b!4795629 m!5777298))

(assert (=> b!4795228 d!1534626))

(declare-fun b!4795634 () Bool)

(assert (=> b!4795634 false))

(declare-fun lt!1953187 () Unit!140096)

(declare-fun lt!1953184 () Unit!140096)

(assert (=> b!4795634 (= lt!1953187 lt!1953184)))

(assert (=> b!4795634 (containsKey!3976 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4795634 (= lt!1953184 (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun e!2994485 () Unit!140096)

(declare-fun Unit!140168 () Unit!140096)

(assert (=> b!4795634 (= e!2994485 Unit!140168)))

(declare-fun b!4795635 () Bool)

(declare-fun Unit!140169 () Unit!140096)

(assert (=> b!4795635 (= e!2994485 Unit!140169)))

(declare-fun b!4795636 () Bool)

(declare-fun e!2994488 () Unit!140096)

(assert (=> b!4795636 (= e!2994488 e!2994485)))

(declare-fun c!817355 () Bool)

(declare-fun call!335161 () Bool)

(assert (=> b!4795636 (= c!817355 call!335161)))

(declare-fun b!4795637 () Bool)

(declare-fun e!2994484 () List!54377)

(assert (=> b!4795637 (= e!2994484 (getKeysList!1084 (toList!6947 lt!1952985)))))

(declare-fun b!4795638 () Bool)

(declare-fun e!2994487 () Bool)

(assert (=> b!4795638 (= e!2994487 (not (contains!17887 (keys!19817 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795639 () Bool)

(declare-fun e!2994486 () Bool)

(declare-fun e!2994483 () Bool)

(assert (=> b!4795639 (= e!2994486 e!2994483)))

(declare-fun res!2038832 () Bool)

(assert (=> b!4795639 (=> (not res!2038832) (not e!2994483))))

(assert (=> b!4795639 (= res!2038832 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795640 () Bool)

(assert (=> b!4795640 (= e!2994484 (keys!19817 lt!1952985))))

(declare-fun d!1534632 () Bool)

(assert (=> d!1534632 e!2994486))

(declare-fun res!2038831 () Bool)

(assert (=> d!1534632 (=> res!2038831 e!2994486)))

(assert (=> d!1534632 (= res!2038831 e!2994487)))

(declare-fun res!2038830 () Bool)

(assert (=> d!1534632 (=> (not res!2038830) (not e!2994487))))

(declare-fun lt!1953185 () Bool)

(assert (=> d!1534632 (= res!2038830 (not lt!1953185))))

(declare-fun lt!1953190 () Bool)

(assert (=> d!1534632 (= lt!1953185 lt!1953190)))

(declare-fun lt!1953186 () Unit!140096)

(assert (=> d!1534632 (= lt!1953186 e!2994488)))

(declare-fun c!817357 () Bool)

(assert (=> d!1534632 (= c!817357 lt!1953190)))

(assert (=> d!1534632 (= lt!1953190 (containsKey!3976 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> d!1534632 (= (contains!17882 lt!1952985 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lt!1953185)))

(declare-fun bm!335156 () Bool)

(assert (=> bm!335156 (= call!335161 (contains!17887 e!2994484 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun c!817356 () Bool)

(assert (=> bm!335156 (= c!817356 c!817357)))

(declare-fun b!4795641 () Bool)

(assert (=> b!4795641 (= e!2994483 (contains!17887 (keys!19817 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun b!4795642 () Bool)

(declare-fun lt!1953183 () Unit!140096)

(assert (=> b!4795642 (= e!2994488 lt!1953183)))

(declare-fun lt!1953189 () Unit!140096)

(assert (=> b!4795642 (= lt!1953189 (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795642 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953188 () Unit!140096)

(assert (=> b!4795642 (= lt!1953188 lt!1953189)))

(assert (=> b!4795642 (= lt!1953183 (lemmaInListThenGetKeysListContains!1079 (toList!6947 lt!1952985) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795642 call!335161))

(assert (= (and d!1534632 c!817357) b!4795642))

(assert (= (and d!1534632 (not c!817357)) b!4795636))

(assert (= (and b!4795636 c!817355) b!4795634))

(assert (= (and b!4795636 (not c!817355)) b!4795635))

(assert (= (or b!4795642 b!4795636) bm!335156))

(assert (= (and bm!335156 c!817356) b!4795637))

(assert (= (and bm!335156 (not c!817356)) b!4795640))

(assert (= (and d!1534632 res!2038830) b!4795638))

(assert (= (and d!1534632 (not res!2038831)) b!4795639))

(assert (= (and b!4795639 res!2038832) b!4795641))

(declare-fun m!5777314 () Bool)

(assert (=> b!4795637 m!5777314))

(declare-fun m!5777316 () Bool)

(assert (=> d!1534632 m!5777316))

(declare-fun m!5777318 () Bool)

(assert (=> b!4795639 m!5777318))

(assert (=> b!4795639 m!5777318))

(declare-fun m!5777322 () Bool)

(assert (=> b!4795639 m!5777322))

(declare-fun m!5777324 () Bool)

(assert (=> bm!335156 m!5777324))

(declare-fun m!5777326 () Bool)

(assert (=> b!4795638 m!5777326))

(assert (=> b!4795638 m!5777326))

(declare-fun m!5777328 () Bool)

(assert (=> b!4795638 m!5777328))

(assert (=> b!4795641 m!5777326))

(assert (=> b!4795641 m!5777326))

(assert (=> b!4795641 m!5777328))

(assert (=> b!4795634 m!5777316))

(declare-fun m!5777330 () Bool)

(assert (=> b!4795634 m!5777330))

(assert (=> b!4795640 m!5777326))

(declare-fun m!5777332 () Bool)

(assert (=> b!4795642 m!5777332))

(assert (=> b!4795642 m!5777318))

(assert (=> b!4795642 m!5777318))

(assert (=> b!4795642 m!5777322))

(declare-fun m!5777334 () Bool)

(assert (=> b!4795642 m!5777334))

(assert (=> b!4795228 d!1534632))

(declare-fun bs!1155600 () Bool)

(declare-fun d!1534644 () Bool)

(assert (= bs!1155600 (and d!1534644 b!4795446)))

(declare-fun lambda!231288 () Int)

(assert (=> bs!1155600 (= (= lt!1952967 lt!1953061) (= lambda!231288 lambda!231245))))

(declare-fun bs!1155601 () Bool)

(assert (= bs!1155601 (and d!1534644 d!1534512)))

(assert (=> bs!1155601 (= (= lt!1952967 lt!1953068) (= lambda!231288 lambda!231246))))

(declare-fun bs!1155602 () Bool)

(assert (= bs!1155602 (and d!1534644 b!4795228)))

(assert (=> bs!1155602 (= lambda!231288 lambda!231209)))

(assert (=> bs!1155602 (= (= lt!1952967 lt!1952727) (= lambda!231288 lambda!231208))))

(declare-fun bs!1155604 () Bool)

(assert (= bs!1155604 (and d!1534644 b!4795444)))

(assert (=> bs!1155604 (= (= lt!1952967 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231288 lambda!231243))))

(declare-fun bs!1155605 () Bool)

(assert (= bs!1155605 (and d!1534644 d!1534382)))

(assert (=> bs!1155605 (= (= lt!1952967 lt!1952974) (= lambda!231288 lambda!231210))))

(assert (=> bs!1155600 (= (= lt!1952967 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231288 lambda!231244))))

(declare-fun bs!1155608 () Bool)

(assert (= bs!1155608 (and d!1534644 b!4794974)))

(assert (=> bs!1155608 (not (= lambda!231288 lambda!231123))))

(declare-fun bs!1155610 () Bool)

(assert (= bs!1155610 (and d!1534644 b!4795226)))

(assert (=> bs!1155610 (= (= lt!1952967 lt!1952727) (= lambda!231288 lambda!231207))))

(assert (=> d!1534644 true))

(assert (=> d!1534644 (forall!12277 (toList!6947 lt!1952727) lambda!231288)))

(declare-fun lt!1953202 () Unit!140096)

(declare-fun choose!34588 (ListMap!6419 ListMap!6419 K!15824 V!16070) Unit!140096)

(assert (=> d!1534644 (= lt!1953202 (choose!34588 lt!1952727 lt!1952967 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> d!1534644 (forall!12277 (toList!6947 (+!2491 lt!1952727 (tuple2!56905 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))) lambda!231288)))

(assert (=> d!1534644 (= (addForallContainsKeyThenBeforeAdding!945 lt!1952727 lt!1952967 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lt!1953202)))

(declare-fun bs!1155614 () Bool)

(assert (= bs!1155614 d!1534644))

(declare-fun m!5777400 () Bool)

(assert (=> bs!1155614 m!5777400))

(declare-fun m!5777402 () Bool)

(assert (=> bs!1155614 m!5777402))

(declare-fun m!5777404 () Bool)

(assert (=> bs!1155614 m!5777404))

(declare-fun m!5777406 () Bool)

(assert (=> bs!1155614 m!5777406))

(assert (=> b!4795228 d!1534644))

(declare-fun d!1534676 () Bool)

(declare-fun res!2038863 () Bool)

(declare-fun e!2994521 () Bool)

(assert (=> d!1534676 (=> res!2038863 e!2994521)))

(assert (=> d!1534676 (= res!2038863 ((_ is Nil!54250) (toList!6947 lt!1952727)))))

(assert (=> d!1534676 (= (forall!12277 (toList!6947 lt!1952727) lambda!231208) e!2994521)))

(declare-fun b!4795688 () Bool)

(declare-fun e!2994522 () Bool)

(assert (=> b!4795688 (= e!2994521 e!2994522)))

(declare-fun res!2038864 () Bool)

(assert (=> b!4795688 (=> (not res!2038864) (not e!2994522))))

(assert (=> b!4795688 (= res!2038864 (dynLambda!22076 lambda!231208 (h!60680 (toList!6947 lt!1952727))))))

(declare-fun b!4795689 () Bool)

(assert (=> b!4795689 (= e!2994522 (forall!12277 (t!361824 (toList!6947 lt!1952727)) lambda!231208))))

(assert (= (and d!1534676 (not res!2038863)) b!4795688))

(assert (= (and b!4795688 res!2038864) b!4795689))

(declare-fun b_lambda!187035 () Bool)

(assert (=> (not b_lambda!187035) (not b!4795688)))

(declare-fun m!5777408 () Bool)

(assert (=> b!4795688 m!5777408))

(declare-fun m!5777410 () Bool)

(assert (=> b!4795689 m!5777410))

(assert (=> b!4795228 d!1534676))

(declare-fun b!4795690 () Bool)

(assert (=> b!4795690 false))

(declare-fun lt!1953214 () Unit!140096)

(declare-fun lt!1953211 () Unit!140096)

(assert (=> b!4795690 (= lt!1953214 lt!1953211)))

(assert (=> b!4795690 (containsKey!3976 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4795690 (= lt!1953211 (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun e!2994525 () Unit!140096)

(declare-fun Unit!140170 () Unit!140096)

(assert (=> b!4795690 (= e!2994525 Unit!140170)))

(declare-fun b!4795691 () Bool)

(declare-fun Unit!140171 () Unit!140096)

(assert (=> b!4795691 (= e!2994525 Unit!140171)))

(declare-fun b!4795692 () Bool)

(declare-fun e!2994528 () Unit!140096)

(assert (=> b!4795692 (= e!2994528 e!2994525)))

(declare-fun c!817365 () Bool)

(declare-fun call!335162 () Bool)

(assert (=> b!4795692 (= c!817365 call!335162)))

(declare-fun b!4795693 () Bool)

(declare-fun e!2994524 () List!54377)

(assert (=> b!4795693 (= e!2994524 (getKeysList!1084 (toList!6947 lt!1952967)))))

(declare-fun b!4795694 () Bool)

(declare-fun e!2994527 () Bool)

(assert (=> b!4795694 (= e!2994527 (not (contains!17887 (keys!19817 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795695 () Bool)

(declare-fun e!2994526 () Bool)

(declare-fun e!2994523 () Bool)

(assert (=> b!4795695 (= e!2994526 e!2994523)))

(declare-fun res!2038867 () Bool)

(assert (=> b!4795695 (=> (not res!2038867) (not e!2994523))))

(assert (=> b!4795695 (= res!2038867 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun b!4795696 () Bool)

(assert (=> b!4795696 (= e!2994524 (keys!19817 lt!1952967))))

(declare-fun d!1534678 () Bool)

(assert (=> d!1534678 e!2994526))

(declare-fun res!2038866 () Bool)

(assert (=> d!1534678 (=> res!2038866 e!2994526)))

(assert (=> d!1534678 (= res!2038866 e!2994527)))

(declare-fun res!2038865 () Bool)

(assert (=> d!1534678 (=> (not res!2038865) (not e!2994527))))

(declare-fun lt!1953212 () Bool)

(assert (=> d!1534678 (= res!2038865 (not lt!1953212))))

(declare-fun lt!1953217 () Bool)

(assert (=> d!1534678 (= lt!1953212 lt!1953217)))

(declare-fun lt!1953213 () Unit!140096)

(assert (=> d!1534678 (= lt!1953213 e!2994528)))

(declare-fun c!817367 () Bool)

(assert (=> d!1534678 (= c!817367 lt!1953217)))

(assert (=> d!1534678 (= lt!1953217 (containsKey!3976 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> d!1534678 (= (contains!17882 lt!1952967 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lt!1953212)))

(declare-fun bm!335157 () Bool)

(assert (=> bm!335157 (= call!335162 (contains!17887 e!2994524 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun c!817366 () Bool)

(assert (=> bm!335157 (= c!817366 c!817367)))

(declare-fun b!4795697 () Bool)

(assert (=> b!4795697 (= e!2994523 (contains!17887 (keys!19817 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun b!4795698 () Bool)

(declare-fun lt!1953210 () Unit!140096)

(assert (=> b!4795698 (= e!2994528 lt!1953210)))

(declare-fun lt!1953216 () Unit!140096)

(assert (=> b!4795698 (= lt!1953216 (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795698 (isDefined!10267 (getValueByKey!2366 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953215 () Unit!140096)

(assert (=> b!4795698 (= lt!1953215 lt!1953216)))

(assert (=> b!4795698 (= lt!1953210 (lemmaInListThenGetKeysListContains!1079 (toList!6947 lt!1952967) (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795698 call!335162))

(assert (= (and d!1534678 c!817367) b!4795698))

(assert (= (and d!1534678 (not c!817367)) b!4795692))

(assert (= (and b!4795692 c!817365) b!4795690))

(assert (= (and b!4795692 (not c!817365)) b!4795691))

(assert (= (or b!4795698 b!4795692) bm!335157))

(assert (= (and bm!335157 c!817366) b!4795693))

(assert (= (and bm!335157 (not c!817366)) b!4795696))

(assert (= (and d!1534678 res!2038865) b!4795694))

(assert (= (and d!1534678 (not res!2038866)) b!4795695))

(assert (= (and b!4795695 res!2038867) b!4795697))

(declare-fun m!5777412 () Bool)

(assert (=> b!4795693 m!5777412))

(declare-fun m!5777414 () Bool)

(assert (=> d!1534678 m!5777414))

(declare-fun m!5777416 () Bool)

(assert (=> b!4795695 m!5777416))

(assert (=> b!4795695 m!5777416))

(declare-fun m!5777418 () Bool)

(assert (=> b!4795695 m!5777418))

(declare-fun m!5777420 () Bool)

(assert (=> bm!335157 m!5777420))

(declare-fun m!5777422 () Bool)

(assert (=> b!4795694 m!5777422))

(assert (=> b!4795694 m!5777422))

(declare-fun m!5777424 () Bool)

(assert (=> b!4795694 m!5777424))

(assert (=> b!4795697 m!5777422))

(assert (=> b!4795697 m!5777422))

(assert (=> b!4795697 m!5777424))

(assert (=> b!4795690 m!5777414))

(declare-fun m!5777426 () Bool)

(assert (=> b!4795690 m!5777426))

(assert (=> b!4795696 m!5777422))

(declare-fun m!5777428 () Bool)

(assert (=> b!4795698 m!5777428))

(assert (=> b!4795698 m!5777416))

(assert (=> b!4795698 m!5777416))

(assert (=> b!4795698 m!5777418))

(declare-fun m!5777430 () Bool)

(assert (=> b!4795698 m!5777430))

(assert (=> b!4795228 d!1534678))

(declare-fun d!1534680 () Bool)

(assert (=> d!1534680 (dynLambda!22076 lambda!231209 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun lt!1953218 () Unit!140096)

(assert (=> d!1534680 (= lt!1953218 (choose!34576 (toList!6947 lt!1952985) lambda!231209 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun e!2994529 () Bool)

(assert (=> d!1534680 e!2994529))

(declare-fun res!2038868 () Bool)

(assert (=> d!1534680 (=> (not res!2038868) (not e!2994529))))

(assert (=> d!1534680 (= res!2038868 (forall!12277 (toList!6947 lt!1952985) lambda!231209))))

(assert (=> d!1534680 (= (forallContained!4182 (toList!6947 lt!1952985) lambda!231209 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953218)))

(declare-fun b!4795699 () Bool)

(assert (=> b!4795699 (= e!2994529 (contains!17883 (toList!6947 lt!1952985) (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (= (and d!1534680 res!2038868) b!4795699))

(declare-fun b_lambda!187037 () Bool)

(assert (=> (not b_lambda!187037) (not d!1534680)))

(assert (=> d!1534680 m!5777286))

(declare-fun m!5777432 () Bool)

(assert (=> d!1534680 m!5777432))

(assert (=> d!1534680 m!5776632))

(declare-fun m!5777434 () Bool)

(assert (=> b!4795699 m!5777434))

(assert (=> b!4795228 d!1534680))

(declare-fun bs!1155637 () Bool)

(declare-fun b!4795702 () Bool)

(assert (= bs!1155637 (and b!4795702 d!1534644)))

(declare-fun lambda!231293 () Int)

(assert (=> bs!1155637 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952967) (= lambda!231293 lambda!231288))))

(declare-fun bs!1155638 () Bool)

(assert (= bs!1155638 (and b!4795702 b!4795446)))

(assert (=> bs!1155638 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953061) (= lambda!231293 lambda!231245))))

(declare-fun bs!1155639 () Bool)

(assert (= bs!1155639 (and b!4795702 d!1534512)))

(assert (=> bs!1155639 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953068) (= lambda!231293 lambda!231246))))

(declare-fun bs!1155640 () Bool)

(assert (= bs!1155640 (and b!4795702 b!4795228)))

(assert (=> bs!1155640 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952967) (= lambda!231293 lambda!231209))))

(assert (=> bs!1155640 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952727) (= lambda!231293 lambda!231208))))

(declare-fun bs!1155641 () Bool)

(assert (= bs!1155641 (and b!4795702 b!4795444)))

(assert (=> bs!1155641 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231293 lambda!231243))))

(declare-fun bs!1155642 () Bool)

(assert (= bs!1155642 (and b!4795702 d!1534382)))

(assert (=> bs!1155642 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952974) (= lambda!231293 lambda!231210))))

(assert (=> bs!1155638 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231293 lambda!231244))))

(declare-fun bs!1155643 () Bool)

(assert (= bs!1155643 (and b!4795702 b!4794974)))

(assert (=> bs!1155643 (not (= lambda!231293 lambda!231123))))

(declare-fun bs!1155644 () Bool)

(assert (= bs!1155644 (and b!4795702 b!4795226)))

(assert (=> bs!1155644 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952727) (= lambda!231293 lambda!231207))))

(assert (=> b!4795702 true))

(declare-fun bs!1155645 () Bool)

(declare-fun b!4795704 () Bool)

(assert (= bs!1155645 (and b!4795704 d!1534644)))

(declare-fun lambda!231294 () Int)

(assert (=> bs!1155645 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952967) (= lambda!231294 lambda!231288))))

(declare-fun bs!1155647 () Bool)

(assert (= bs!1155647 (and b!4795704 b!4795702)))

(assert (=> bs!1155647 (= lambda!231294 lambda!231293)))

(declare-fun bs!1155648 () Bool)

(assert (= bs!1155648 (and b!4795704 b!4795446)))

(assert (=> bs!1155648 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953061) (= lambda!231294 lambda!231245))))

(declare-fun bs!1155649 () Bool)

(assert (= bs!1155649 (and b!4795704 d!1534512)))

(assert (=> bs!1155649 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953068) (= lambda!231294 lambda!231246))))

(declare-fun bs!1155650 () Bool)

(assert (= bs!1155650 (and b!4795704 b!4795228)))

(assert (=> bs!1155650 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952967) (= lambda!231294 lambda!231209))))

(assert (=> bs!1155650 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952727) (= lambda!231294 lambda!231208))))

(declare-fun bs!1155651 () Bool)

(assert (= bs!1155651 (and b!4795704 b!4795444)))

(assert (=> bs!1155651 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231294 lambda!231243))))

(declare-fun bs!1155652 () Bool)

(assert (= bs!1155652 (and b!4795704 d!1534382)))

(assert (=> bs!1155652 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952974) (= lambda!231294 lambda!231210))))

(assert (=> bs!1155648 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231294 lambda!231244))))

(declare-fun bs!1155654 () Bool)

(assert (= bs!1155654 (and b!4795704 b!4794974)))

(assert (=> bs!1155654 (not (= lambda!231294 lambda!231123))))

(declare-fun bs!1155656 () Bool)

(assert (= bs!1155656 (and b!4795704 b!4795226)))

(assert (=> bs!1155656 (= (= (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1952727) (= lambda!231294 lambda!231207))))

(assert (=> b!4795704 true))

(declare-fun lt!1953221 () ListMap!6419)

(declare-fun lambda!231296 () Int)

(assert (=> bs!1155645 (= (= lt!1953221 lt!1952967) (= lambda!231296 lambda!231288))))

(assert (=> bs!1155647 (= (= lt!1953221 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231296 lambda!231293))))

(assert (=> bs!1155648 (= (= lt!1953221 lt!1953061) (= lambda!231296 lambda!231245))))

(assert (=> bs!1155649 (= (= lt!1953221 lt!1953068) (= lambda!231296 lambda!231246))))

(assert (=> b!4795704 (= (= lt!1953221 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231296 lambda!231294))))

(assert (=> bs!1155650 (= (= lt!1953221 lt!1952967) (= lambda!231296 lambda!231209))))

(assert (=> bs!1155650 (= (= lt!1953221 lt!1952727) (= lambda!231296 lambda!231208))))

(assert (=> bs!1155651 (= (= lt!1953221 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231296 lambda!231243))))

(assert (=> bs!1155652 (= (= lt!1953221 lt!1952974) (= lambda!231296 lambda!231210))))

(assert (=> bs!1155648 (= (= lt!1953221 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231296 lambda!231244))))

(assert (=> bs!1155654 (not (= lambda!231296 lambda!231123))))

(assert (=> bs!1155656 (= (= lt!1953221 lt!1952727) (= lambda!231296 lambda!231207))))

(assert (=> b!4795704 true))

(declare-fun bs!1155674 () Bool)

(declare-fun d!1534682 () Bool)

(assert (= bs!1155674 (and d!1534682 d!1534644)))

(declare-fun lambda!231298 () Int)

(declare-fun lt!1953228 () ListMap!6419)

(assert (=> bs!1155674 (= (= lt!1953228 lt!1952967) (= lambda!231298 lambda!231288))))

(declare-fun bs!1155675 () Bool)

(assert (= bs!1155675 (and d!1534682 b!4795702)))

(assert (=> bs!1155675 (= (= lt!1953228 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231298 lambda!231293))))

(declare-fun bs!1155676 () Bool)

(assert (= bs!1155676 (and d!1534682 b!4795446)))

(assert (=> bs!1155676 (= (= lt!1953228 lt!1953061) (= lambda!231298 lambda!231245))))

(declare-fun bs!1155677 () Bool)

(assert (= bs!1155677 (and d!1534682 d!1534512)))

(assert (=> bs!1155677 (= (= lt!1953228 lt!1953068) (= lambda!231298 lambda!231246))))

(declare-fun bs!1155678 () Bool)

(assert (= bs!1155678 (and d!1534682 b!4795704)))

(assert (=> bs!1155678 (= (= lt!1953228 lt!1953221) (= lambda!231298 lambda!231296))))

(assert (=> bs!1155678 (= (= lt!1953228 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231298 lambda!231294))))

(declare-fun bs!1155679 () Bool)

(assert (= bs!1155679 (and d!1534682 b!4795228)))

(assert (=> bs!1155679 (= (= lt!1953228 lt!1952967) (= lambda!231298 lambda!231209))))

(assert (=> bs!1155679 (= (= lt!1953228 lt!1952727) (= lambda!231298 lambda!231208))))

(declare-fun bs!1155680 () Bool)

(assert (= bs!1155680 (and d!1534682 b!4795444)))

(assert (=> bs!1155680 (= (= lt!1953228 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231298 lambda!231243))))

(declare-fun bs!1155681 () Bool)

(assert (= bs!1155681 (and d!1534682 d!1534382)))

(assert (=> bs!1155681 (= (= lt!1953228 lt!1952974) (= lambda!231298 lambda!231210))))

(assert (=> bs!1155676 (= (= lt!1953228 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231298 lambda!231244))))

(declare-fun bs!1155682 () Bool)

(assert (= bs!1155682 (and d!1534682 b!4794974)))

(assert (=> bs!1155682 (not (= lambda!231298 lambda!231123))))

(declare-fun bs!1155683 () Bool)

(assert (= bs!1155683 (and d!1534682 b!4795226)))

(assert (=> bs!1155683 (= (= lt!1953228 lt!1952727) (= lambda!231298 lambda!231207))))

(assert (=> d!1534682 true))

(declare-fun bm!335158 () Bool)

(declare-fun call!335164 () Unit!140096)

(assert (=> bm!335158 (= call!335164 (lemmaContainsAllItsOwnKeys!946 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun e!2994530 () Bool)

(assert (=> d!1534682 e!2994530))

(declare-fun res!2038870 () Bool)

(assert (=> d!1534682 (=> (not res!2038870) (not e!2994530))))

(assert (=> d!1534682 (= res!2038870 (forall!12277 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lambda!231298))))

(declare-fun e!2994531 () ListMap!6419)

(assert (=> d!1534682 (= lt!1953228 e!2994531)))

(declare-fun c!817368 () Bool)

(assert (=> d!1534682 (= c!817368 ((_ is Nil!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> d!1534682 (noDuplicateKeys!2347 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534682 (= (addToMapMapFromBucket!1715 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lt!1953228)))

(declare-fun b!4795700 () Bool)

(declare-fun res!2038869 () Bool)

(assert (=> b!4795700 (=> (not res!2038869) (not e!2994530))))

(assert (=> b!4795700 (= res!2038869 (forall!12277 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lambda!231298))))

(declare-fun e!2994532 () Bool)

(declare-fun b!4795701 () Bool)

(assert (=> b!4795701 (= e!2994532 (forall!12277 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lambda!231296))))

(assert (=> b!4795702 (= e!2994531 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun lt!1953227 () Unit!140096)

(assert (=> b!4795702 (= lt!1953227 call!335164)))

(declare-fun call!335163 () Bool)

(assert (=> b!4795702 call!335163))

(declare-fun lt!1953236 () Unit!140096)

(assert (=> b!4795702 (= lt!1953236 lt!1953227)))

(declare-fun call!335165 () Bool)

(assert (=> b!4795702 call!335165))

(declare-fun lt!1953225 () Unit!140096)

(declare-fun Unit!140172 () Unit!140096)

(assert (=> b!4795702 (= lt!1953225 Unit!140172)))

(declare-fun b!4795703 () Bool)

(assert (=> b!4795703 (= e!2994530 (invariantList!1738 (toList!6947 lt!1953228)))))

(assert (=> b!4795704 (= e!2994531 lt!1953221)))

(declare-fun lt!1953239 () ListMap!6419)

(assert (=> b!4795704 (= lt!1953239 (+!2491 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795704 (= lt!1953221 (addToMapMapFromBucket!1715 (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (+!2491 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(declare-fun lt!1953223 () Unit!140096)

(assert (=> b!4795704 (= lt!1953223 call!335164)))

(assert (=> b!4795704 (forall!12277 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lambda!231294)))

(declare-fun lt!1953222 () Unit!140096)

(assert (=> b!4795704 (= lt!1953222 lt!1953223)))

(assert (=> b!4795704 (forall!12277 (toList!6947 lt!1953239) lambda!231296)))

(declare-fun lt!1953224 () Unit!140096)

(declare-fun Unit!140173 () Unit!140096)

(assert (=> b!4795704 (= lt!1953224 Unit!140173)))

(assert (=> b!4795704 call!335163))

(declare-fun lt!1953219 () Unit!140096)

(declare-fun Unit!140174 () Unit!140096)

(assert (=> b!4795704 (= lt!1953219 Unit!140174)))

(declare-fun lt!1953229 () Unit!140096)

(declare-fun Unit!140175 () Unit!140096)

(assert (=> b!4795704 (= lt!1953229 Unit!140175)))

(declare-fun lt!1953237 () Unit!140096)

(assert (=> b!4795704 (= lt!1953237 (forallContained!4182 (toList!6947 lt!1953239) lambda!231296 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795704 (contains!17882 lt!1953239 (_1!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953231 () Unit!140096)

(declare-fun Unit!140176 () Unit!140096)

(assert (=> b!4795704 (= lt!1953231 Unit!140176)))

(assert (=> b!4795704 (contains!17882 lt!1953221 (_1!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953235 () Unit!140096)

(declare-fun Unit!140177 () Unit!140096)

(assert (=> b!4795704 (= lt!1953235 Unit!140177)))

(assert (=> b!4795704 (forall!12277 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lambda!231296)))

(declare-fun lt!1953234 () Unit!140096)

(declare-fun Unit!140178 () Unit!140096)

(assert (=> b!4795704 (= lt!1953234 Unit!140178)))

(assert (=> b!4795704 call!335165))

(declare-fun lt!1953238 () Unit!140096)

(declare-fun Unit!140180 () Unit!140096)

(assert (=> b!4795704 (= lt!1953238 Unit!140180)))

(declare-fun lt!1953232 () Unit!140096)

(declare-fun Unit!140181 () Unit!140096)

(assert (=> b!4795704 (= lt!1953232 Unit!140181)))

(declare-fun lt!1953233 () Unit!140096)

(assert (=> b!4795704 (= lt!1953233 (addForallContainsKeyThenBeforeAdding!945 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) lt!1953221 (_1!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (_2!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))))

(assert (=> b!4795704 (forall!12277 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lambda!231296)))

(declare-fun lt!1953226 () Unit!140096)

(assert (=> b!4795704 (= lt!1953226 lt!1953233)))

(assert (=> b!4795704 (forall!12277 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) lambda!231296)))

(declare-fun lt!1953230 () Unit!140096)

(declare-fun Unit!140184 () Unit!140096)

(assert (=> b!4795704 (= lt!1953230 Unit!140184)))

(declare-fun res!2038871 () Bool)

(assert (=> b!4795704 (= res!2038871 (forall!12277 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lambda!231296))))

(assert (=> b!4795704 (=> (not res!2038871) (not e!2994532))))

(assert (=> b!4795704 e!2994532))

(declare-fun lt!1953220 () Unit!140096)

(declare-fun Unit!140185 () Unit!140096)

(assert (=> b!4795704 (= lt!1953220 Unit!140185)))

(declare-fun bm!335159 () Bool)

(assert (=> bm!335159 (= call!335165 (forall!12277 (ite c!817368 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (toList!6947 lt!1953239)) (ite c!817368 lambda!231293 lambda!231296)))))

(declare-fun bm!335160 () Bool)

(assert (=> bm!335160 (= call!335163 (forall!12277 (ite c!817368 (toList!6947 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (ite c!817368 lambda!231293 lambda!231296)))))

(assert (= (and d!1534682 c!817368) b!4795702))

(assert (= (and d!1534682 (not c!817368)) b!4795704))

(assert (= (and b!4795704 res!2038871) b!4795701))

(assert (= (or b!4795702 b!4795704) bm!335159))

(assert (= (or b!4795702 b!4795704) bm!335160))

(assert (= (or b!4795702 b!4795704) bm!335158))

(assert (= (and d!1534682 res!2038870) b!4795700))

(assert (= (and b!4795700 res!2038869) b!4795703))

(declare-fun m!5777468 () Bool)

(assert (=> b!4795704 m!5777468))

(declare-fun m!5777470 () Bool)

(assert (=> b!4795704 m!5777470))

(declare-fun m!5777472 () Bool)

(assert (=> b!4795704 m!5777472))

(declare-fun m!5777474 () Bool)

(assert (=> b!4795704 m!5777474))

(assert (=> b!4795704 m!5776622))

(assert (=> b!4795704 m!5777468))

(declare-fun m!5777476 () Bool)

(assert (=> b!4795704 m!5777476))

(declare-fun m!5777478 () Bool)

(assert (=> b!4795704 m!5777478))

(assert (=> b!4795704 m!5777474))

(declare-fun m!5777480 () Bool)

(assert (=> b!4795704 m!5777480))

(declare-fun m!5777482 () Bool)

(assert (=> b!4795704 m!5777482))

(declare-fun m!5777484 () Bool)

(assert (=> b!4795704 m!5777484))

(assert (=> b!4795704 m!5777482))

(assert (=> b!4795704 m!5776622))

(declare-fun m!5777486 () Bool)

(assert (=> b!4795704 m!5777486))

(declare-fun m!5777488 () Bool)

(assert (=> b!4795703 m!5777488))

(declare-fun m!5777490 () Bool)

(assert (=> b!4795700 m!5777490))

(assert (=> bm!335158 m!5776622))

(declare-fun m!5777492 () Bool)

(assert (=> bm!335158 m!5777492))

(assert (=> b!4795701 m!5777482))

(declare-fun m!5777494 () Bool)

(assert (=> d!1534682 m!5777494))

(assert (=> d!1534682 m!5776716))

(declare-fun m!5777496 () Bool)

(assert (=> bm!335159 m!5777496))

(declare-fun m!5777498 () Bool)

(assert (=> bm!335160 m!5777498))

(assert (=> b!4795228 d!1534682))

(assert (=> b!4795306 d!1534538))

(assert (=> b!4795306 d!1534518))

(declare-fun d!1534694 () Bool)

(declare-fun res!2038879 () Bool)

(declare-fun e!2994540 () Bool)

(assert (=> d!1534694 (=> res!2038879 e!2994540)))

(assert (=> d!1534694 (= res!2038879 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534694 (= (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231210) e!2994540)))

(declare-fun b!4795714 () Bool)

(declare-fun e!2994541 () Bool)

(assert (=> b!4795714 (= e!2994540 e!2994541)))

(declare-fun res!2038880 () Bool)

(assert (=> b!4795714 (=> (not res!2038880) (not e!2994541))))

(assert (=> b!4795714 (= res!2038880 (dynLambda!22076 lambda!231210 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun b!4795715 () Bool)

(assert (=> b!4795715 (= e!2994541 (forall!12277 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) lambda!231210))))

(assert (= (and d!1534694 (not res!2038879)) b!4795714))

(assert (= (and b!4795714 res!2038880) b!4795715))

(declare-fun b_lambda!187041 () Bool)

(assert (=> (not b_lambda!187041) (not b!4795714)))

(declare-fun m!5777500 () Bool)

(assert (=> b!4795714 m!5777500))

(declare-fun m!5777502 () Bool)

(assert (=> b!4795715 m!5777502))

(assert (=> d!1534382 d!1534694))

(assert (=> d!1534382 d!1534414))

(declare-fun d!1534696 () Bool)

(assert (=> d!1534696 (isDefined!10266 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729))))

(declare-fun lt!1953264 () Unit!140096)

(declare-fun choose!34589 (List!54375 (_ BitVec 64)) Unit!140096)

(assert (=> d!1534696 (= lt!1953264 (choose!34589 (toList!6948 lm!2473) lt!1952729))))

(declare-fun e!2994545 () Bool)

(assert (=> d!1534696 e!2994545))

(declare-fun res!2038883 () Bool)

(assert (=> d!1534696 (=> (not res!2038883) (not e!2994545))))

(assert (=> d!1534696 (= res!2038883 (isStrictlySorted!885 (toList!6948 lm!2473)))))

(assert (=> d!1534696 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2157 (toList!6948 lm!2473) lt!1952729) lt!1953264)))

(declare-fun b!4795720 () Bool)

(assert (=> b!4795720 (= e!2994545 (containsKey!3975 (toList!6948 lm!2473) lt!1952729))))

(assert (= (and d!1534696 res!2038883) b!4795720))

(assert (=> d!1534696 m!5776378))

(assert (=> d!1534696 m!5776378))

(assert (=> d!1534696 m!5776380))

(declare-fun m!5777546 () Bool)

(assert (=> d!1534696 m!5777546))

(assert (=> d!1534696 m!5776332))

(assert (=> b!4795720 m!5776374))

(assert (=> b!4795047 d!1534696))

(declare-fun d!1534702 () Bool)

(declare-fun isEmpty!29468 (Option!13126) Bool)

(assert (=> d!1534702 (= (isDefined!10266 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729)) (not (isEmpty!29468 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729))))))

(declare-fun bs!1155706 () Bool)

(assert (= bs!1155706 d!1534702))

(assert (=> bs!1155706 m!5776378))

(declare-fun m!5777550 () Bool)

(assert (=> bs!1155706 m!5777550))

(assert (=> b!4795047 d!1534702))

(declare-fun d!1534706 () Bool)

(declare-fun c!817377 () Bool)

(assert (=> d!1534706 (= c!817377 (and ((_ is Cons!54251) (toList!6948 lm!2473)) (= (_1!31747 (h!60681 (toList!6948 lm!2473))) lt!1952729)))))

(declare-fun e!2994559 () Option!13126)

(assert (=> d!1534706 (= (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729) e!2994559)))

(declare-fun b!4795741 () Bool)

(assert (=> b!4795741 (= e!2994559 (Some!13125 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun b!4795744 () Bool)

(declare-fun e!2994560 () Option!13126)

(assert (=> b!4795744 (= e!2994560 None!13125)))

(declare-fun b!4795743 () Bool)

(assert (=> b!4795743 (= e!2994560 (getValueByKey!2367 (t!361825 (toList!6948 lm!2473)) lt!1952729))))

(declare-fun b!4795742 () Bool)

(assert (=> b!4795742 (= e!2994559 e!2994560)))

(declare-fun c!817378 () Bool)

(assert (=> b!4795742 (= c!817378 (and ((_ is Cons!54251) (toList!6948 lm!2473)) (not (= (_1!31747 (h!60681 (toList!6948 lm!2473))) lt!1952729))))))

(assert (= (and d!1534706 c!817377) b!4795741))

(assert (= (and d!1534706 (not c!817377)) b!4795742))

(assert (= (and b!4795742 c!817378) b!4795743))

(assert (= (and b!4795742 (not c!817378)) b!4795744))

(declare-fun m!5777580 () Bool)

(assert (=> b!4795743 m!5777580))

(assert (=> b!4795047 d!1534706))

(declare-fun d!1534720 () Bool)

(assert (=> d!1534720 (= (isDefined!10267 (getValueByKey!2366 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896)) (not (isEmpty!29467 (getValueByKey!2366 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))))

(declare-fun bs!1155710 () Bool)

(assert (= bs!1155710 d!1534720))

(assert (=> bs!1155710 m!5776546))

(declare-fun m!5777582 () Bool)

(assert (=> bs!1155710 m!5777582))

(assert (=> b!4795158 d!1534720))

(declare-fun b!4795745 () Bool)

(declare-fun e!2994561 () Option!13125)

(assert (=> b!4795745 (= e!2994561 (Some!13124 (_2!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))))

(declare-fun b!4795747 () Bool)

(declare-fun e!2994562 () Option!13125)

(assert (=> b!4795747 (= e!2994562 (getValueByKey!2366 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) key!5896))))

(declare-fun b!4795746 () Bool)

(assert (=> b!4795746 (= e!2994561 e!2994562)))

(declare-fun c!817380 () Bool)

(assert (=> b!4795746 (= c!817380 (and ((_ is Cons!54250) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (not (= (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) key!5896))))))

(declare-fun b!4795748 () Bool)

(assert (=> b!4795748 (= e!2994562 None!13124)))

(declare-fun d!1534722 () Bool)

(declare-fun c!817379 () Bool)

(assert (=> d!1534722 (= c!817379 (and ((_ is Cons!54250) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) key!5896)))))

(assert (=> d!1534722 (= (getValueByKey!2366 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896) e!2994561)))

(assert (= (and d!1534722 c!817379) b!4795745))

(assert (= (and d!1534722 (not c!817379)) b!4795746))

(assert (= (and b!4795746 c!817380) b!4795747))

(assert (= (and b!4795746 (not c!817380)) b!4795748))

(declare-fun m!5777584 () Bool)

(assert (=> b!4795747 m!5777584))

(assert (=> b!4795158 d!1534722))

(assert (=> b!4795225 d!1534608))

(declare-fun d!1534726 () Bool)

(declare-fun lt!1953267 () Bool)

(assert (=> d!1534726 (= lt!1953267 (select (content!9720 e!2994228) key!5896))))

(declare-fun e!2994563 () Bool)

(assert (=> d!1534726 (= lt!1953267 e!2994563)))

(declare-fun res!2038892 () Bool)

(assert (=> d!1534726 (=> (not res!2038892) (not e!2994563))))

(assert (=> d!1534726 (= res!2038892 ((_ is Cons!54253) e!2994228))))

(assert (=> d!1534726 (= (contains!17887 e!2994228 key!5896) lt!1953267)))

(declare-fun b!4795749 () Bool)

(declare-fun e!2994564 () Bool)

(assert (=> b!4795749 (= e!2994563 e!2994564)))

(declare-fun res!2038893 () Bool)

(assert (=> b!4795749 (=> res!2038893 e!2994564)))

(assert (=> b!4795749 (= res!2038893 (= (h!60683 e!2994228) key!5896))))

(declare-fun b!4795750 () Bool)

(assert (=> b!4795750 (= e!2994564 (contains!17887 (t!361827 e!2994228) key!5896))))

(assert (= (and d!1534726 res!2038892) b!4795749))

(assert (= (and b!4795749 (not res!2038893)) b!4795750))

(declare-fun m!5777586 () Bool)

(assert (=> d!1534726 m!5777586))

(declare-fun m!5777588 () Bool)

(assert (=> d!1534726 m!5777588))

(declare-fun m!5777590 () Bool)

(assert (=> b!4795750 m!5777590))

(assert (=> bm!335147 d!1534726))

(declare-fun d!1534728 () Bool)

(assert (=> d!1534728 (= (get!18502 (getPair!906 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896)) (v!48418 (getPair!906 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896)))))

(assert (=> b!4795107 d!1534728))

(declare-fun b!4795751 () Bool)

(declare-fun e!2994567 () Option!13122)

(assert (=> b!4795751 (= e!2994567 (Some!13121 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun b!4795753 () Bool)

(declare-fun e!2994565 () Option!13122)

(assert (=> b!4795753 (= e!2994567 e!2994565)))

(declare-fun c!817381 () Bool)

(assert (=> b!4795753 (= c!817381 ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun b!4795754 () Bool)

(declare-fun e!2994566 () Bool)

(declare-fun lt!1953268 () Option!13122)

(assert (=> b!4795754 (= e!2994566 (contains!17883 (_2!31747 (h!60681 (toList!6948 lm!2473))) (get!18502 lt!1953268)))))

(declare-fun b!4795755 () Bool)

(declare-fun e!2994568 () Bool)

(assert (=> b!4795755 (= e!2994568 (not (containsKey!3972 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896)))))

(declare-fun b!4795756 () Bool)

(assert (=> b!4795756 (= e!2994565 (getPair!906 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) key!5896))))

(declare-fun b!4795757 () Bool)

(declare-fun e!2994569 () Bool)

(assert (=> b!4795757 (= e!2994569 e!2994566)))

(declare-fun res!2038895 () Bool)

(assert (=> b!4795757 (=> (not res!2038895) (not e!2994566))))

(assert (=> b!4795757 (= res!2038895 (isDefined!10263 lt!1953268))))

(declare-fun b!4795758 () Bool)

(declare-fun res!2038896 () Bool)

(assert (=> b!4795758 (=> (not res!2038896) (not e!2994566))))

(assert (=> b!4795758 (= res!2038896 (= (_1!31746 (get!18502 lt!1953268)) key!5896))))

(declare-fun b!4795752 () Bool)

(assert (=> b!4795752 (= e!2994565 None!13121)))

(declare-fun d!1534730 () Bool)

(assert (=> d!1534730 e!2994569))

(declare-fun res!2038894 () Bool)

(assert (=> d!1534730 (=> res!2038894 e!2994569)))

(assert (=> d!1534730 (= res!2038894 e!2994568)))

(declare-fun res!2038897 () Bool)

(assert (=> d!1534730 (=> (not res!2038897) (not e!2994568))))

(assert (=> d!1534730 (= res!2038897 (isEmpty!29463 lt!1953268))))

(assert (=> d!1534730 (= lt!1953268 e!2994567)))

(declare-fun c!817382 () Bool)

(assert (=> d!1534730 (= c!817382 (and ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))) (= (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) key!5896)))))

(assert (=> d!1534730 (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473))))))

(assert (=> d!1534730 (= (getPair!906 (_2!31747 (h!60681 (toList!6948 lm!2473))) key!5896) lt!1953268)))

(assert (= (and d!1534730 c!817382) b!4795751))

(assert (= (and d!1534730 (not c!817382)) b!4795753))

(assert (= (and b!4795753 c!817381) b!4795756))

(assert (= (and b!4795753 (not c!817381)) b!4795752))

(assert (= (and d!1534730 res!2038897) b!4795755))

(assert (= (and d!1534730 (not res!2038894)) b!4795757))

(assert (= (and b!4795757 res!2038895) b!4795758))

(assert (= (and b!4795758 res!2038896) b!4795754))

(declare-fun m!5777592 () Bool)

(assert (=> b!4795757 m!5777592))

(declare-fun m!5777594 () Bool)

(assert (=> b!4795758 m!5777594))

(declare-fun m!5777596 () Bool)

(assert (=> d!1534730 m!5777596))

(assert (=> d!1534730 m!5776284))

(declare-fun m!5777598 () Bool)

(assert (=> b!4795756 m!5777598))

(assert (=> b!4795755 m!5776290))

(assert (=> b!4795754 m!5777594))

(assert (=> b!4795754 m!5777594))

(declare-fun m!5777602 () Bool)

(assert (=> b!4795754 m!5777602))

(assert (=> b!4795107 d!1534730))

(declare-fun d!1534734 () Bool)

(assert (=> d!1534734 (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(declare-fun lt!1953269 () Unit!140096)

(assert (=> d!1534734 (= lt!1953269 (choose!34585 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(assert (=> d!1534734 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))

(assert (=> d!1534734 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896) lt!1953269)))

(declare-fun bs!1155712 () Bool)

(assert (= bs!1155712 d!1534734))

(assert (=> bs!1155712 m!5776750))

(assert (=> bs!1155712 m!5776750))

(assert (=> bs!1155712 m!5776752))

(declare-fun m!5777606 () Bool)

(assert (=> bs!1155712 m!5777606))

(declare-fun m!5777608 () Bool)

(assert (=> bs!1155712 m!5777608))

(assert (=> b!4795300 d!1534734))

(declare-fun d!1534738 () Bool)

(assert (=> d!1534738 (= (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896)) (not (isEmpty!29467 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))))

(declare-fun bs!1155713 () Bool)

(assert (= bs!1155713 d!1534738))

(assert (=> bs!1155713 m!5776750))

(declare-fun m!5777610 () Bool)

(assert (=> bs!1155713 m!5777610))

(assert (=> b!4795300 d!1534738))

(declare-fun b!4795770 () Bool)

(declare-fun e!2994576 () Option!13125)

(assert (=> b!4795770 (= e!2994576 (Some!13124 (_2!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))))

(declare-fun b!4795772 () Bool)

(declare-fun e!2994577 () Option!13125)

(assert (=> b!4795772 (= e!2994577 (getValueByKey!2366 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) key!5896))))

(declare-fun b!4795771 () Bool)

(assert (=> b!4795771 (= e!2994576 e!2994577)))

(declare-fun c!817387 () Bool)

(assert (=> b!4795771 (= c!817387 (and ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (not (= (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) key!5896))))))

(declare-fun b!4795773 () Bool)

(assert (=> b!4795773 (= e!2994577 None!13124)))

(declare-fun d!1534740 () Bool)

(declare-fun c!817386 () Bool)

(assert (=> d!1534740 (= c!817386 (and ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) key!5896)))))

(assert (=> d!1534740 (= (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896) e!2994576)))

(assert (= (and d!1534740 c!817386) b!4795770))

(assert (= (and d!1534740 (not c!817386)) b!4795771))

(assert (= (and b!4795771 c!817387) b!4795772))

(assert (= (and b!4795771 (not c!817387)) b!4795773))

(declare-fun m!5777612 () Bool)

(assert (=> b!4795772 m!5777612))

(assert (=> b!4795300 d!1534740))

(declare-fun d!1534742 () Bool)

(assert (=> d!1534742 (contains!17887 (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) key!5896)))

(declare-fun lt!1953277 () Unit!140096)

(assert (=> d!1534742 (= lt!1953277 (choose!34586 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(assert (=> d!1534742 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))

(assert (=> d!1534742 (= (lemmaInListThenGetKeysListContains!1079 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896) lt!1953277)))

(declare-fun bs!1155720 () Bool)

(assert (= bs!1155720 d!1534742))

(assert (=> bs!1155720 m!5776746))

(assert (=> bs!1155720 m!5776746))

(declare-fun m!5777614 () Bool)

(assert (=> bs!1155720 m!5777614))

(declare-fun m!5777616 () Bool)

(assert (=> bs!1155720 m!5777616))

(assert (=> bs!1155720 m!5777608))

(assert (=> b!4795300 d!1534742))

(assert (=> b!4795049 d!1534702))

(assert (=> b!4795049 d!1534706))

(declare-fun d!1534744 () Bool)

(declare-fun lt!1953278 () Bool)

(assert (=> d!1534744 (= lt!1953278 (select (content!9720 e!2994165) key!5896))))

(declare-fun e!2994578 () Bool)

(assert (=> d!1534744 (= lt!1953278 e!2994578)))

(declare-fun res!2038903 () Bool)

(assert (=> d!1534744 (=> (not res!2038903) (not e!2994578))))

(assert (=> d!1534744 (= res!2038903 ((_ is Cons!54253) e!2994165))))

(assert (=> d!1534744 (= (contains!17887 e!2994165 key!5896) lt!1953278)))

(declare-fun b!4795774 () Bool)

(declare-fun e!2994579 () Bool)

(assert (=> b!4795774 (= e!2994578 e!2994579)))

(declare-fun res!2038904 () Bool)

(assert (=> b!4795774 (=> res!2038904 e!2994579)))

(assert (=> b!4795774 (= res!2038904 (= (h!60683 e!2994165) key!5896))))

(declare-fun b!4795775 () Bool)

(assert (=> b!4795775 (= e!2994579 (contains!17887 (t!361827 e!2994165) key!5896))))

(assert (= (and d!1534744 res!2038903) b!4795774))

(assert (= (and b!4795774 (not res!2038904)) b!4795775))

(declare-fun m!5777618 () Bool)

(assert (=> d!1534744 m!5777618))

(declare-fun m!5777620 () Bool)

(assert (=> d!1534744 m!5777620))

(declare-fun m!5777622 () Bool)

(assert (=> b!4795775 m!5777622))

(assert (=> bm!335128 d!1534744))

(declare-fun d!1534746 () Bool)

(assert (=> d!1534746 (= (invariantList!1738 (toList!6947 lt!1952974)) (noDuplicatedKeys!442 (toList!6947 lt!1952974)))))

(declare-fun bs!1155725 () Bool)

(assert (= bs!1155725 d!1534746))

(declare-fun m!5777624 () Bool)

(assert (=> bs!1155725 m!5777624))

(assert (=> b!4795227 d!1534746))

(declare-fun d!1534748 () Bool)

(assert (=> d!1534748 (= (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896)) (not (isEmpty!29467 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))))

(declare-fun bs!1155726 () Bool)

(assert (= bs!1155726 d!1534748))

(assert (=> bs!1155726 m!5776676))

(declare-fun m!5777626 () Bool)

(assert (=> bs!1155726 m!5777626))

(assert (=> b!4795260 d!1534748))

(declare-fun b!4795776 () Bool)

(declare-fun e!2994580 () Option!13125)

(assert (=> b!4795776 (= e!2994580 (Some!13124 (_2!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))))

(declare-fun b!4795778 () Bool)

(declare-fun e!2994581 () Option!13125)

(assert (=> b!4795778 (= e!2994581 (getValueByKey!2366 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) key!5896))))

(declare-fun b!4795777 () Bool)

(assert (=> b!4795777 (= e!2994580 e!2994581)))

(declare-fun c!817389 () Bool)

(assert (=> b!4795777 (= c!817389 (and ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (not (= (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) key!5896))))))

(declare-fun b!4795779 () Bool)

(assert (=> b!4795779 (= e!2994581 None!13124)))

(declare-fun d!1534750 () Bool)

(declare-fun c!817388 () Bool)

(assert (=> d!1534750 (= c!817388 (and ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) key!5896)))))

(assert (=> d!1534750 (= (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896) e!2994580)))

(assert (= (and d!1534750 c!817388) b!4795776))

(assert (= (and d!1534750 (not c!817388)) b!4795777))

(assert (= (and b!4795777 c!817389) b!4795778))

(assert (= (and b!4795777 (not c!817389)) b!4795779))

(declare-fun m!5777628 () Bool)

(assert (=> b!4795778 m!5777628))

(assert (=> b!4795260 d!1534750))

(assert (=> b!4795301 d!1534472))

(declare-fun d!1534752 () Bool)

(assert (=> d!1534752 (containsKey!3976 (toList!6947 lt!1952727) key!5896)))

(declare-fun lt!1953279 () Unit!140096)

(assert (=> d!1534752 (= lt!1953279 (choose!34580 (toList!6947 lt!1952727) key!5896))))

(assert (=> d!1534752 (invariantList!1738 (toList!6947 lt!1952727))))

(assert (=> d!1534752 (= (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 lt!1952727) key!5896) lt!1953279)))

(declare-fun bs!1155734 () Bool)

(assert (= bs!1155734 d!1534752))

(assert (=> bs!1155734 m!5776768))

(declare-fun m!5777630 () Bool)

(assert (=> bs!1155734 m!5777630))

(assert (=> bs!1155734 m!5777034))

(assert (=> b!4795301 d!1534752))

(declare-fun bs!1155739 () Bool)

(declare-fun b!4795785 () Bool)

(assert (= bs!1155739 (and b!4795785 b!4795566)))

(declare-fun lambda!231304 () Int)

(assert (=> bs!1155739 (= (= (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231304 lambda!231272))))

(declare-fun bs!1155741 () Bool)

(assert (= bs!1155741 (and b!4795785 b!4795352)))

(assert (=> bs!1155741 (= (= (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231304 lambda!231229))))

(declare-fun bs!1155743 () Bool)

(assert (= bs!1155743 (and b!4795785 b!4795359)))

(assert (=> bs!1155743 (= (= (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231304 lambda!231233))))

(declare-fun bs!1155745 () Bool)

(assert (= bs!1155745 (and b!4795785 b!4795379)))

(assert (=> bs!1155745 (= (= (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231304 lambda!231239))))

(declare-fun bs!1155747 () Bool)

(assert (= bs!1155747 (and b!4795785 b!4795563)))

(assert (=> bs!1155747 (= (= (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (toList!6947 lt!1952727)) (= lambda!231304 lambda!231273))))

(declare-fun bs!1155749 () Bool)

(assert (= bs!1155749 (and b!4795785 b!4795564)))

(assert (=> bs!1155749 (= (= (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231304 lambda!231271))))

(assert (=> b!4795785 true))

(declare-fun bs!1155756 () Bool)

(declare-fun b!4795787 () Bool)

(assert (= bs!1155756 (and b!4795787 b!4795785)))

(declare-fun lambda!231306 () Int)

(assert (=> bs!1155756 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231306 lambda!231304))))

(declare-fun bs!1155758 () Bool)

(assert (= bs!1155758 (and b!4795787 b!4795566)))

(assert (=> bs!1155758 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231306 lambda!231272))))

(declare-fun bs!1155759 () Bool)

(assert (= bs!1155759 (and b!4795787 b!4795352)))

(assert (=> bs!1155759 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231306 lambda!231229))))

(declare-fun bs!1155760 () Bool)

(assert (= bs!1155760 (and b!4795787 b!4795359)))

(assert (=> bs!1155760 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231306 lambda!231233))))

(declare-fun bs!1155762 () Bool)

(assert (= bs!1155762 (and b!4795787 b!4795379)))

(assert (=> bs!1155762 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231306 lambda!231239))))

(declare-fun bs!1155764 () Bool)

(assert (= bs!1155764 (and b!4795787 b!4795563)))

(assert (=> bs!1155764 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (toList!6947 lt!1952727)) (= lambda!231306 lambda!231273))))

(declare-fun bs!1155766 () Bool)

(assert (= bs!1155766 (and b!4795787 b!4795564)))

(assert (=> bs!1155766 (= (= (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231306 lambda!231271))))

(assert (=> b!4795787 true))

(declare-fun bs!1155770 () Bool)

(declare-fun b!4795784 () Bool)

(assert (= bs!1155770 (and b!4795784 b!4795785)))

(declare-fun lambda!231308 () Int)

(assert (=> bs!1155770 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231308 lambda!231304))))

(declare-fun bs!1155771 () Bool)

(assert (= bs!1155771 (and b!4795784 b!4795566)))

(assert (=> bs!1155771 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231308 lambda!231272))))

(declare-fun bs!1155772 () Bool)

(assert (= bs!1155772 (and b!4795784 b!4795787)))

(assert (=> bs!1155772 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231308 lambda!231306))))

(declare-fun bs!1155773 () Bool)

(assert (= bs!1155773 (and b!4795784 b!4795352)))

(assert (=> bs!1155773 (= lambda!231308 lambda!231229)))

(declare-fun bs!1155774 () Bool)

(assert (= bs!1155774 (and b!4795784 b!4795359)))

(assert (=> bs!1155774 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231308 lambda!231233))))

(declare-fun bs!1155775 () Bool)

(assert (= bs!1155775 (and b!4795784 b!4795379)))

(assert (=> bs!1155775 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231308 lambda!231239))))

(declare-fun bs!1155776 () Bool)

(assert (= bs!1155776 (and b!4795784 b!4795563)))

(assert (=> bs!1155776 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (toList!6947 lt!1952727)) (= lambda!231308 lambda!231273))))

(declare-fun bs!1155777 () Bool)

(assert (= bs!1155777 (and b!4795784 b!4795564)))

(assert (=> bs!1155777 (= (= (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) (t!361824 (toList!6947 lt!1952727))) (= lambda!231308 lambda!231271))))

(assert (=> b!4795784 true))

(declare-fun bs!1155778 () Bool)

(declare-fun b!4795788 () Bool)

(assert (= bs!1155778 (and b!4795788 b!4795353)))

(declare-fun lambda!231309 () Int)

(assert (=> bs!1155778 (= lambda!231309 lambda!231232)))

(declare-fun bs!1155779 () Bool)

(assert (= bs!1155779 (and b!4795788 b!4795360)))

(assert (=> bs!1155779 (= lambda!231309 lambda!231236)))

(declare-fun bs!1155780 () Bool)

(assert (= bs!1155780 (and b!4795788 b!4795380)))

(assert (=> bs!1155780 (= lambda!231309 lambda!231240)))

(declare-fun bs!1155781 () Bool)

(assert (= bs!1155781 (and b!4795788 b!4795567)))

(assert (=> bs!1155781 (= lambda!231309 lambda!231274)))

(declare-fun b!4795780 () Bool)

(assert (=> b!4795780 false))

(declare-fun e!2994583 () Unit!140096)

(declare-fun Unit!140198 () Unit!140096)

(assert (=> b!4795780 (= e!2994583 Unit!140198)))

(declare-fun d!1534754 () Bool)

(declare-fun e!2994582 () Bool)

(assert (=> d!1534754 e!2994582))

(declare-fun res!2038906 () Bool)

(assert (=> d!1534754 (=> (not res!2038906) (not e!2994582))))

(declare-fun lt!1953284 () List!54377)

(assert (=> d!1534754 (= res!2038906 (noDuplicate!923 lt!1953284))))

(declare-fun e!2994584 () List!54377)

(assert (=> d!1534754 (= lt!1953284 e!2994584)))

(declare-fun c!817390 () Bool)

(assert (=> d!1534754 (= c!817390 ((_ is Cons!54250) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))

(assert (=> d!1534754 (invariantList!1738 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))

(assert (=> d!1534754 (= (getKeysList!1084 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) lt!1953284)))

(declare-fun b!4795781 () Bool)

(declare-fun e!2994585 () Unit!140096)

(declare-fun Unit!140199 () Unit!140096)

(assert (=> b!4795781 (= e!2994585 Unit!140199)))

(declare-fun b!4795782 () Bool)

(assert (=> b!4795782 (= e!2994584 Nil!54253)))

(declare-fun b!4795783 () Bool)

(declare-fun res!2038905 () Bool)

(assert (=> b!4795783 (=> (not res!2038905) (not e!2994582))))

(assert (=> b!4795783 (= res!2038905 (= (length!702 lt!1953284) (length!703 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))))

(declare-fun res!2038907 () Bool)

(assert (=> b!4795784 (=> (not res!2038907) (not e!2994582))))

(assert (=> b!4795784 (= res!2038907 (forall!12279 lt!1953284 lambda!231308))))

(assert (=> b!4795785 false))

(declare-fun lt!1953281 () Unit!140096)

(assert (=> b!4795785 (= lt!1953281 (forallContained!4185 (getKeysList!1084 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) lambda!231304 (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))))

(declare-fun Unit!140200 () Unit!140096)

(assert (=> b!4795785 (= e!2994585 Unit!140200)))

(declare-fun b!4795786 () Bool)

(declare-fun Unit!140201 () Unit!140096)

(assert (=> b!4795786 (= e!2994583 Unit!140201)))

(assert (=> b!4795787 (= e!2994584 (Cons!54253 (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (getKeysList!1084 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))))

(declare-fun c!817392 () Bool)

(assert (=> b!4795787 (= c!817392 (containsKey!3976 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))))

(declare-fun lt!1953280 () Unit!140096)

(assert (=> b!4795787 (= lt!1953280 e!2994583)))

(declare-fun c!817391 () Bool)

(assert (=> b!4795787 (= c!817391 (contains!17887 (getKeysList!1084 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (_1!31746 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))))))

(declare-fun lt!1953283 () Unit!140096)

(assert (=> b!4795787 (= lt!1953283 e!2994585)))

(declare-fun lt!1953285 () List!54377)

(assert (=> b!4795787 (= lt!1953285 (getKeysList!1084 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))))

(declare-fun lt!1953286 () Unit!140096)

(assert (=> b!4795787 (= lt!1953286 (lemmaForallContainsAddHeadPreserves!338 (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) lt!1953285 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))))

(assert (=> b!4795787 (forall!12279 lt!1953285 lambda!231306)))

(declare-fun lt!1953282 () Unit!140096)

(assert (=> b!4795787 (= lt!1953282 lt!1953286)))

(assert (=> b!4795788 (= e!2994582 (= (content!9720 lt!1953284) (content!9720 (map!12251 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) lambda!231309))))))

(assert (= (and d!1534754 c!817390) b!4795787))

(assert (= (and d!1534754 (not c!817390)) b!4795782))

(assert (= (and b!4795787 c!817392) b!4795780))

(assert (= (and b!4795787 (not c!817392)) b!4795786))

(assert (= (and b!4795787 c!817391) b!4795785))

(assert (= (and b!4795787 (not c!817391)) b!4795781))

(assert (= (and d!1534754 res!2038906) b!4795783))

(assert (= (and b!4795783 res!2038905) b!4795784))

(assert (= (and b!4795784 res!2038907) b!4795788))

(declare-fun m!5777660 () Bool)

(assert (=> b!4795783 m!5777660))

(assert (=> b!4795783 m!5776830))

(declare-fun m!5777662 () Bool)

(assert (=> b!4795784 m!5777662))

(declare-fun m!5777666 () Bool)

(assert (=> b!4795787 m!5777666))

(declare-fun m!5777670 () Bool)

(assert (=> b!4795787 m!5777670))

(declare-fun m!5777672 () Bool)

(assert (=> b!4795787 m!5777672))

(declare-fun m!5777674 () Bool)

(assert (=> b!4795787 m!5777674))

(assert (=> b!4795787 m!5777674))

(declare-fun m!5777676 () Bool)

(assert (=> b!4795787 m!5777676))

(declare-fun m!5777678 () Bool)

(assert (=> d!1534754 m!5777678))

(assert (=> d!1534754 m!5776952))

(assert (=> b!4795785 m!5777674))

(assert (=> b!4795785 m!5777674))

(declare-fun m!5777680 () Bool)

(assert (=> b!4795785 m!5777680))

(declare-fun m!5777682 () Bool)

(assert (=> b!4795788 m!5777682))

(declare-fun m!5777684 () Bool)

(assert (=> b!4795788 m!5777684))

(assert (=> b!4795788 m!5777684))

(declare-fun m!5777686 () Bool)

(assert (=> b!4795788 m!5777686))

(assert (=> b!4795156 d!1534754))

(declare-fun bs!1155782 () Bool)

(declare-fun d!1534762 () Bool)

(assert (= bs!1155782 (and d!1534762 d!1534644)))

(declare-fun lambda!231312 () Int)

(assert (=> bs!1155782 (= (= lt!1952727 lt!1952967) (= lambda!231312 lambda!231288))))

(declare-fun bs!1155783 () Bool)

(assert (= bs!1155783 (and d!1534762 b!4795446)))

(assert (=> bs!1155783 (= (= lt!1952727 lt!1953061) (= lambda!231312 lambda!231245))))

(declare-fun bs!1155784 () Bool)

(assert (= bs!1155784 (and d!1534762 d!1534512)))

(assert (=> bs!1155784 (= (= lt!1952727 lt!1953068) (= lambda!231312 lambda!231246))))

(declare-fun bs!1155785 () Bool)

(assert (= bs!1155785 (and d!1534762 b!4795704)))

(assert (=> bs!1155785 (= (= lt!1952727 lt!1953221) (= lambda!231312 lambda!231296))))

(assert (=> bs!1155785 (= (= lt!1952727 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231312 lambda!231294))))

(declare-fun bs!1155786 () Bool)

(assert (= bs!1155786 (and d!1534762 b!4795228)))

(assert (=> bs!1155786 (= (= lt!1952727 lt!1952967) (= lambda!231312 lambda!231209))))

(assert (=> bs!1155786 (= lambda!231312 lambda!231208)))

(declare-fun bs!1155787 () Bool)

(assert (= bs!1155787 (and d!1534762 b!4795444)))

(assert (=> bs!1155787 (= (= lt!1952727 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231312 lambda!231243))))

(declare-fun bs!1155788 () Bool)

(assert (= bs!1155788 (and d!1534762 d!1534382)))

(assert (=> bs!1155788 (= (= lt!1952727 lt!1952974) (= lambda!231312 lambda!231210))))

(assert (=> bs!1155783 (= (= lt!1952727 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231312 lambda!231244))))

(declare-fun bs!1155789 () Bool)

(assert (= bs!1155789 (and d!1534762 b!4794974)))

(assert (=> bs!1155789 (not (= lambda!231312 lambda!231123))))

(declare-fun bs!1155790 () Bool)

(assert (= bs!1155790 (and d!1534762 b!4795226)))

(assert (=> bs!1155790 (= lambda!231312 lambda!231207)))

(declare-fun bs!1155791 () Bool)

(assert (= bs!1155791 (and d!1534762 d!1534682)))

(assert (=> bs!1155791 (= (= lt!1952727 lt!1953228) (= lambda!231312 lambda!231298))))

(declare-fun bs!1155792 () Bool)

(assert (= bs!1155792 (and d!1534762 b!4795702)))

(assert (=> bs!1155792 (= (= lt!1952727 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231312 lambda!231293))))

(assert (=> d!1534762 true))

(assert (=> d!1534762 (forall!12277 (toList!6947 lt!1952727) lambda!231312)))

(declare-fun lt!1953289 () Unit!140096)

(declare-fun choose!34590 (ListMap!6419) Unit!140096)

(assert (=> d!1534762 (= lt!1953289 (choose!34590 lt!1952727))))

(assert (=> d!1534762 (= (lemmaContainsAllItsOwnKeys!946 lt!1952727) lt!1953289)))

(declare-fun bs!1155793 () Bool)

(assert (= bs!1155793 d!1534762))

(declare-fun m!5777688 () Bool)

(assert (=> bs!1155793 m!5777688))

(declare-fun m!5777690 () Bool)

(assert (=> bs!1155793 m!5777690))

(assert (=> bm!335144 d!1534762))

(declare-fun d!1534764 () Bool)

(assert (=> d!1534764 (isDefined!10267 (getValueByKey!2366 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(declare-fun lt!1953290 () Unit!140096)

(assert (=> d!1534764 (= lt!1953290 (choose!34585 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(assert (=> d!1534764 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))

(assert (=> d!1534764 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896) lt!1953290)))

(declare-fun bs!1155794 () Bool)

(assert (= bs!1155794 d!1534764))

(assert (=> bs!1155794 m!5776676))

(assert (=> bs!1155794 m!5776676))

(assert (=> bs!1155794 m!5776678))

(declare-fun m!5777692 () Bool)

(assert (=> bs!1155794 m!5777692))

(assert (=> bs!1155794 m!5776966))

(assert (=> b!4795263 d!1534764))

(assert (=> b!4795263 d!1534748))

(assert (=> b!4795263 d!1534750))

(declare-fun d!1534766 () Bool)

(assert (=> d!1534766 (contains!17887 (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) key!5896)))

(declare-fun lt!1953291 () Unit!140096)

(assert (=> d!1534766 (= lt!1953291 (choose!34586 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896))))

(assert (=> d!1534766 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))

(assert (=> d!1534766 (= (lemmaInListThenGetKeysListContains!1079 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) key!5896) lt!1953291)))

(declare-fun bs!1155795 () Bool)

(assert (= bs!1155795 d!1534766))

(assert (=> bs!1155795 m!5776672))

(assert (=> bs!1155795 m!5776672))

(declare-fun m!5777694 () Bool)

(assert (=> bs!1155795 m!5777694))

(declare-fun m!5777696 () Bool)

(assert (=> bs!1155795 m!5777696))

(assert (=> bs!1155795 m!5776966))

(assert (=> b!4795263 d!1534766))

(assert (=> b!4795297 d!1534738))

(assert (=> b!4795297 d!1534740))

(declare-fun bs!1155796 () Bool)

(declare-fun b!4795795 () Bool)

(assert (= bs!1155796 (and b!4795795 d!1534644)))

(declare-fun lambda!231313 () Int)

(assert (=> bs!1155796 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952967) (= lambda!231313 lambda!231288))))

(declare-fun bs!1155797 () Bool)

(assert (= bs!1155797 (and b!4795795 b!4795446)))

(assert (=> bs!1155797 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953061) (= lambda!231313 lambda!231245))))

(declare-fun bs!1155798 () Bool)

(assert (= bs!1155798 (and b!4795795 b!4795704)))

(assert (=> bs!1155798 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953221) (= lambda!231313 lambda!231296))))

(assert (=> bs!1155798 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231313 lambda!231294))))

(declare-fun bs!1155799 () Bool)

(assert (= bs!1155799 (and b!4795795 b!4795228)))

(assert (=> bs!1155799 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952967) (= lambda!231313 lambda!231209))))

(assert (=> bs!1155799 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952727) (= lambda!231313 lambda!231208))))

(declare-fun bs!1155800 () Bool)

(assert (= bs!1155800 (and b!4795795 b!4795444)))

(assert (=> bs!1155800 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231313 lambda!231243))))

(declare-fun bs!1155801 () Bool)

(assert (= bs!1155801 (and b!4795795 d!1534382)))

(assert (=> bs!1155801 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952974) (= lambda!231313 lambda!231210))))

(assert (=> bs!1155797 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231313 lambda!231244))))

(declare-fun bs!1155802 () Bool)

(assert (= bs!1155802 (and b!4795795 b!4794974)))

(assert (=> bs!1155802 (not (= lambda!231313 lambda!231123))))

(declare-fun bs!1155803 () Bool)

(assert (= bs!1155803 (and b!4795795 b!4795226)))

(assert (=> bs!1155803 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952727) (= lambda!231313 lambda!231207))))

(declare-fun bs!1155804 () Bool)

(assert (= bs!1155804 (and b!4795795 d!1534682)))

(assert (=> bs!1155804 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953228) (= lambda!231313 lambda!231298))))

(declare-fun bs!1155805 () Bool)

(assert (= bs!1155805 (and b!4795795 b!4795702)))

(assert (=> bs!1155805 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231313 lambda!231293))))

(declare-fun bs!1155806 () Bool)

(assert (= bs!1155806 (and b!4795795 d!1534762)))

(assert (=> bs!1155806 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952727) (= lambda!231313 lambda!231312))))

(declare-fun bs!1155807 () Bool)

(assert (= bs!1155807 (and b!4795795 d!1534512)))

(assert (=> bs!1155807 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953068) (= lambda!231313 lambda!231246))))

(assert (=> b!4795795 true))

(declare-fun bs!1155809 () Bool)

(declare-fun b!4795797 () Bool)

(assert (= bs!1155809 (and b!4795797 d!1534644)))

(declare-fun lambda!231314 () Int)

(assert (=> bs!1155809 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952967) (= lambda!231314 lambda!231288))))

(declare-fun bs!1155810 () Bool)

(assert (= bs!1155810 (and b!4795797 b!4795795)))

(assert (=> bs!1155810 (= lambda!231314 lambda!231313)))

(declare-fun bs!1155811 () Bool)

(assert (= bs!1155811 (and b!4795797 b!4795446)))

(assert (=> bs!1155811 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953061) (= lambda!231314 lambda!231245))))

(declare-fun bs!1155812 () Bool)

(assert (= bs!1155812 (and b!4795797 b!4795704)))

(assert (=> bs!1155812 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953221) (= lambda!231314 lambda!231296))))

(assert (=> bs!1155812 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231314 lambda!231294))))

(declare-fun bs!1155813 () Bool)

(assert (= bs!1155813 (and b!4795797 b!4795228)))

(assert (=> bs!1155813 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952967) (= lambda!231314 lambda!231209))))

(assert (=> bs!1155813 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952727) (= lambda!231314 lambda!231208))))

(declare-fun bs!1155814 () Bool)

(assert (= bs!1155814 (and b!4795797 b!4795444)))

(assert (=> bs!1155814 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231314 lambda!231243))))

(declare-fun bs!1155815 () Bool)

(assert (= bs!1155815 (and b!4795797 d!1534382)))

(assert (=> bs!1155815 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952974) (= lambda!231314 lambda!231210))))

(assert (=> bs!1155811 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231314 lambda!231244))))

(declare-fun bs!1155816 () Bool)

(assert (= bs!1155816 (and b!4795797 b!4794974)))

(assert (=> bs!1155816 (not (= lambda!231314 lambda!231123))))

(declare-fun bs!1155817 () Bool)

(assert (= bs!1155817 (and b!4795797 b!4795226)))

(assert (=> bs!1155817 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952727) (= lambda!231314 lambda!231207))))

(declare-fun bs!1155818 () Bool)

(assert (= bs!1155818 (and b!4795797 d!1534682)))

(assert (=> bs!1155818 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953228) (= lambda!231314 lambda!231298))))

(declare-fun bs!1155819 () Bool)

(assert (= bs!1155819 (and b!4795797 b!4795702)))

(assert (=> bs!1155819 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231314 lambda!231293))))

(declare-fun bs!1155820 () Bool)

(assert (= bs!1155820 (and b!4795797 d!1534762)))

(assert (=> bs!1155820 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1952727) (= lambda!231314 lambda!231312))))

(declare-fun bs!1155821 () Bool)

(assert (= bs!1155821 (and b!4795797 d!1534512)))

(assert (=> bs!1155821 (= (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953068) (= lambda!231314 lambda!231246))))

(assert (=> b!4795797 true))

(declare-fun lambda!231315 () Int)

(declare-fun lt!1953294 () ListMap!6419)

(assert (=> bs!1155809 (= (= lt!1953294 lt!1952967) (= lambda!231315 lambda!231288))))

(assert (=> bs!1155810 (= (= lt!1953294 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231315 lambda!231313))))

(assert (=> bs!1155811 (= (= lt!1953294 lt!1953061) (= lambda!231315 lambda!231245))))

(assert (=> bs!1155812 (= (= lt!1953294 lt!1953221) (= lambda!231315 lambda!231296))))

(assert (=> bs!1155812 (= (= lt!1953294 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231315 lambda!231294))))

(assert (=> bs!1155813 (= (= lt!1953294 lt!1952967) (= lambda!231315 lambda!231209))))

(assert (=> b!4795797 (= (= lt!1953294 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231315 lambda!231314))))

(assert (=> bs!1155813 (= (= lt!1953294 lt!1952727) (= lambda!231315 lambda!231208))))

(assert (=> bs!1155814 (= (= lt!1953294 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231315 lambda!231243))))

(assert (=> bs!1155815 (= (= lt!1953294 lt!1952974) (= lambda!231315 lambda!231210))))

(assert (=> bs!1155811 (= (= lt!1953294 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231315 lambda!231244))))

(assert (=> bs!1155816 (not (= lambda!231315 lambda!231123))))

(assert (=> bs!1155817 (= (= lt!1953294 lt!1952727) (= lambda!231315 lambda!231207))))

(assert (=> bs!1155818 (= (= lt!1953294 lt!1953228) (= lambda!231315 lambda!231298))))

(assert (=> bs!1155819 (= (= lt!1953294 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231315 lambda!231293))))

(assert (=> bs!1155820 (= (= lt!1953294 lt!1952727) (= lambda!231315 lambda!231312))))

(assert (=> bs!1155821 (= (= lt!1953294 lt!1953068) (= lambda!231315 lambda!231246))))

(assert (=> b!4795797 true))

(declare-fun bs!1155823 () Bool)

(declare-fun d!1534768 () Bool)

(assert (= bs!1155823 (and d!1534768 d!1534644)))

(declare-fun lambda!231316 () Int)

(declare-fun lt!1953301 () ListMap!6419)

(assert (=> bs!1155823 (= (= lt!1953301 lt!1952967) (= lambda!231316 lambda!231288))))

(declare-fun bs!1155824 () Bool)

(assert (= bs!1155824 (and d!1534768 b!4795795)))

(assert (=> bs!1155824 (= (= lt!1953301 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231316 lambda!231313))))

(declare-fun bs!1155825 () Bool)

(assert (= bs!1155825 (and d!1534768 b!4795446)))

(assert (=> bs!1155825 (= (= lt!1953301 lt!1953061) (= lambda!231316 lambda!231245))))

(declare-fun bs!1155826 () Bool)

(assert (= bs!1155826 (and d!1534768 b!4795704)))

(assert (=> bs!1155826 (= (= lt!1953301 lt!1953221) (= lambda!231316 lambda!231296))))

(declare-fun bs!1155827 () Bool)

(assert (= bs!1155827 (and d!1534768 b!4795228)))

(assert (=> bs!1155827 (= (= lt!1953301 lt!1952967) (= lambda!231316 lambda!231209))))

(declare-fun bs!1155828 () Bool)

(assert (= bs!1155828 (and d!1534768 b!4795797)))

(assert (=> bs!1155828 (= (= lt!1953301 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231316 lambda!231314))))

(assert (=> bs!1155827 (= (= lt!1953301 lt!1952727) (= lambda!231316 lambda!231208))))

(declare-fun bs!1155829 () Bool)

(assert (= bs!1155829 (and d!1534768 b!4795444)))

(assert (=> bs!1155829 (= (= lt!1953301 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231316 lambda!231243))))

(declare-fun bs!1155830 () Bool)

(assert (= bs!1155830 (and d!1534768 d!1534382)))

(assert (=> bs!1155830 (= (= lt!1953301 lt!1952974) (= lambda!231316 lambda!231210))))

(assert (=> bs!1155825 (= (= lt!1953301 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231316 lambda!231244))))

(declare-fun bs!1155831 () Bool)

(assert (= bs!1155831 (and d!1534768 b!4794974)))

(assert (=> bs!1155831 (not (= lambda!231316 lambda!231123))))

(declare-fun bs!1155832 () Bool)

(assert (= bs!1155832 (and d!1534768 b!4795226)))

(assert (=> bs!1155832 (= (= lt!1953301 lt!1952727) (= lambda!231316 lambda!231207))))

(declare-fun bs!1155833 () Bool)

(assert (= bs!1155833 (and d!1534768 d!1534682)))

(assert (=> bs!1155833 (= (= lt!1953301 lt!1953228) (= lambda!231316 lambda!231298))))

(declare-fun bs!1155834 () Bool)

(assert (= bs!1155834 (and d!1534768 b!4795702)))

(assert (=> bs!1155834 (= (= lt!1953301 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231316 lambda!231293))))

(declare-fun bs!1155835 () Bool)

(assert (= bs!1155835 (and d!1534768 d!1534762)))

(assert (=> bs!1155835 (= (= lt!1953301 lt!1952727) (= lambda!231316 lambda!231312))))

(declare-fun bs!1155836 () Bool)

(assert (= bs!1155836 (and d!1534768 d!1534512)))

(assert (=> bs!1155836 (= (= lt!1953301 lt!1953068) (= lambda!231316 lambda!231246))))

(assert (=> bs!1155828 (= (= lt!1953301 lt!1953294) (= lambda!231316 lambda!231315))))

(assert (=> bs!1155826 (= (= lt!1953301 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231316 lambda!231294))))

(assert (=> d!1534768 true))

(declare-fun bm!335164 () Bool)

(declare-fun call!335170 () Unit!140096)

(assert (=> bm!335164 (= call!335170 (lemmaContainsAllItsOwnKeys!946 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))))))

(declare-fun e!2994590 () Bool)

(assert (=> d!1534768 e!2994590))

(declare-fun res!2038913 () Bool)

(assert (=> d!1534768 (=> (not res!2038913) (not e!2994590))))

(assert (=> d!1534768 (= res!2038913 (forall!12277 (_2!31747 (h!60681 (toList!6948 lt!1952728))) lambda!231316))))

(declare-fun e!2994591 () ListMap!6419)

(assert (=> d!1534768 (= lt!1953301 e!2994591)))

(declare-fun c!817393 () Bool)

(assert (=> d!1534768 (= c!817393 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lt!1952728)))))))

(assert (=> d!1534768 (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lt!1952728))))))

(assert (=> d!1534768 (= (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lt!1952728))) (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) lt!1953301)))

(declare-fun b!4795793 () Bool)

(declare-fun res!2038912 () Bool)

(assert (=> b!4795793 (=> (not res!2038912) (not e!2994590))))

(assert (=> b!4795793 (= res!2038912 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) lambda!231316))))

(declare-fun b!4795794 () Bool)

(declare-fun e!2994592 () Bool)

(assert (=> b!4795794 (= e!2994592 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) lambda!231315))))

(assert (=> b!4795795 (= e!2994591 (extractMap!2461 (t!361825 (toList!6948 lt!1952728))))))

(declare-fun lt!1953300 () Unit!140096)

(assert (=> b!4795795 (= lt!1953300 call!335170)))

(declare-fun call!335169 () Bool)

(assert (=> b!4795795 call!335169))

(declare-fun lt!1953309 () Unit!140096)

(assert (=> b!4795795 (= lt!1953309 lt!1953300)))

(declare-fun call!335171 () Bool)

(assert (=> b!4795795 call!335171))

(declare-fun lt!1953298 () Unit!140096)

(declare-fun Unit!140206 () Unit!140096)

(assert (=> b!4795795 (= lt!1953298 Unit!140206)))

(declare-fun b!4795796 () Bool)

(assert (=> b!4795796 (= e!2994590 (invariantList!1738 (toList!6947 lt!1953301)))))

(assert (=> b!4795797 (= e!2994591 lt!1953294)))

(declare-fun lt!1953312 () ListMap!6419)

(assert (=> b!4795797 (= lt!1953312 (+!2491 (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728))))))))

(assert (=> b!4795797 (= lt!1953294 (addToMapMapFromBucket!1715 (t!361824 (_2!31747 (h!60681 (toList!6948 lt!1952728)))) (+!2491 (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728)))))))))

(declare-fun lt!1953296 () Unit!140096)

(assert (=> b!4795797 (= lt!1953296 call!335170)))

(assert (=> b!4795797 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) lambda!231314)))

(declare-fun lt!1953295 () Unit!140096)

(assert (=> b!4795797 (= lt!1953295 lt!1953296)))

(assert (=> b!4795797 (forall!12277 (toList!6947 lt!1953312) lambda!231315)))

(declare-fun lt!1953297 () Unit!140096)

(declare-fun Unit!140207 () Unit!140096)

(assert (=> b!4795797 (= lt!1953297 Unit!140207)))

(assert (=> b!4795797 call!335169))

(declare-fun lt!1953292 () Unit!140096)

(declare-fun Unit!140208 () Unit!140096)

(assert (=> b!4795797 (= lt!1953292 Unit!140208)))

(declare-fun lt!1953302 () Unit!140096)

(declare-fun Unit!140209 () Unit!140096)

(assert (=> b!4795797 (= lt!1953302 Unit!140209)))

(declare-fun lt!1953310 () Unit!140096)

(assert (=> b!4795797 (= lt!1953310 (forallContained!4182 (toList!6947 lt!1953312) lambda!231315 (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728))))))))

(assert (=> b!4795797 (contains!17882 lt!1953312 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728))))))))

(declare-fun lt!1953304 () Unit!140096)

(declare-fun Unit!140210 () Unit!140096)

(assert (=> b!4795797 (= lt!1953304 Unit!140210)))

(assert (=> b!4795797 (contains!17882 lt!1953294 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728))))))))

(declare-fun lt!1953308 () Unit!140096)

(declare-fun Unit!140211 () Unit!140096)

(assert (=> b!4795797 (= lt!1953308 Unit!140211)))

(assert (=> b!4795797 (forall!12277 (_2!31747 (h!60681 (toList!6948 lt!1952728))) lambda!231315)))

(declare-fun lt!1953307 () Unit!140096)

(declare-fun Unit!140212 () Unit!140096)

(assert (=> b!4795797 (= lt!1953307 Unit!140212)))

(assert (=> b!4795797 call!335171))

(declare-fun lt!1953311 () Unit!140096)

(declare-fun Unit!140213 () Unit!140096)

(assert (=> b!4795797 (= lt!1953311 Unit!140213)))

(declare-fun lt!1953305 () Unit!140096)

(declare-fun Unit!140214 () Unit!140096)

(assert (=> b!4795797 (= lt!1953305 Unit!140214)))

(declare-fun lt!1953306 () Unit!140096)

(assert (=> b!4795797 (= lt!1953306 (addForallContainsKeyThenBeforeAdding!945 (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953294 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lt!1952728)))))))))

(assert (=> b!4795797 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) lambda!231315)))

(declare-fun lt!1953299 () Unit!140096)

(assert (=> b!4795797 (= lt!1953299 lt!1953306)))

(assert (=> b!4795797 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) lambda!231315)))

(declare-fun lt!1953303 () Unit!140096)

(declare-fun Unit!140215 () Unit!140096)

(assert (=> b!4795797 (= lt!1953303 Unit!140215)))

(declare-fun res!2038914 () Bool)

(assert (=> b!4795797 (= res!2038914 (forall!12277 (_2!31747 (h!60681 (toList!6948 lt!1952728))) lambda!231315))))

(assert (=> b!4795797 (=> (not res!2038914) (not e!2994592))))

(assert (=> b!4795797 e!2994592))

(declare-fun lt!1953293 () Unit!140096)

(declare-fun Unit!140216 () Unit!140096)

(assert (=> b!4795797 (= lt!1953293 Unit!140216)))

(declare-fun bm!335165 () Bool)

(assert (=> bm!335165 (= call!335171 (forall!12277 (ite c!817393 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (toList!6947 lt!1953312)) (ite c!817393 lambda!231313 lambda!231315)))))

(declare-fun bm!335166 () Bool)

(assert (=> bm!335166 (= call!335169 (forall!12277 (ite c!817393 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (t!361824 (_2!31747 (h!60681 (toList!6948 lt!1952728))))) (ite c!817393 lambda!231313 lambda!231315)))))

(assert (= (and d!1534768 c!817393) b!4795795))

(assert (= (and d!1534768 (not c!817393)) b!4795797))

(assert (= (and b!4795797 res!2038914) b!4795794))

(assert (= (or b!4795795 b!4795797) bm!335165))

(assert (= (or b!4795795 b!4795797) bm!335166))

(assert (= (or b!4795795 b!4795797) bm!335164))

(assert (= (and d!1534768 res!2038913) b!4795793))

(assert (= (and b!4795793 res!2038912) b!4795796))

(declare-fun m!5777712 () Bool)

(assert (=> b!4795797 m!5777712))

(declare-fun m!5777714 () Bool)

(assert (=> b!4795797 m!5777714))

(declare-fun m!5777716 () Bool)

(assert (=> b!4795797 m!5777716))

(declare-fun m!5777718 () Bool)

(assert (=> b!4795797 m!5777718))

(assert (=> b!4795797 m!5776710))

(assert (=> b!4795797 m!5777712))

(declare-fun m!5777720 () Bool)

(assert (=> b!4795797 m!5777720))

(declare-fun m!5777722 () Bool)

(assert (=> b!4795797 m!5777722))

(assert (=> b!4795797 m!5777718))

(declare-fun m!5777724 () Bool)

(assert (=> b!4795797 m!5777724))

(declare-fun m!5777726 () Bool)

(assert (=> b!4795797 m!5777726))

(declare-fun m!5777728 () Bool)

(assert (=> b!4795797 m!5777728))

(assert (=> b!4795797 m!5777726))

(assert (=> b!4795797 m!5776710))

(declare-fun m!5777730 () Bool)

(assert (=> b!4795797 m!5777730))

(declare-fun m!5777732 () Bool)

(assert (=> b!4795796 m!5777732))

(declare-fun m!5777734 () Bool)

(assert (=> b!4795793 m!5777734))

(assert (=> bm!335164 m!5776710))

(declare-fun m!5777736 () Bool)

(assert (=> bm!335164 m!5777736))

(assert (=> b!4795794 m!5777726))

(declare-fun m!5777738 () Bool)

(assert (=> d!1534768 m!5777738))

(declare-fun m!5777740 () Bool)

(assert (=> d!1534768 m!5777740))

(declare-fun m!5777742 () Bool)

(assert (=> bm!335165 m!5777742))

(declare-fun m!5777744 () Bool)

(assert (=> bm!335166 m!5777744))

(assert (=> b!4795276 d!1534768))

(declare-fun bs!1155857 () Bool)

(declare-fun d!1534782 () Bool)

(assert (= bs!1155857 (and d!1534782 d!1534420)))

(declare-fun lambda!231319 () Int)

(assert (=> bs!1155857 (= lambda!231319 lambda!231218)))

(declare-fun bs!1155860 () Bool)

(assert (= bs!1155860 (and d!1534782 d!1534514)))

(assert (=> bs!1155860 (= lambda!231319 lambda!231247)))

(declare-fun bs!1155862 () Bool)

(assert (= bs!1155862 (and d!1534782 d!1534348)))

(assert (=> bs!1155862 (= lambda!231319 lambda!231138)))

(declare-fun bs!1155864 () Bool)

(assert (= bs!1155864 (and d!1534782 start!494162)))

(assert (=> bs!1155864 (= lambda!231319 lambda!231121)))

(declare-fun bs!1155866 () Bool)

(assert (= bs!1155866 (and d!1534782 d!1534410)))

(assert (=> bs!1155866 (not (= lambda!231319 lambda!231216))))

(declare-fun bs!1155867 () Bool)

(assert (= bs!1155867 (and d!1534782 d!1534340)))

(assert (=> bs!1155867 (= lambda!231319 lambda!231132)))

(declare-fun bs!1155869 () Bool)

(assert (= bs!1155869 (and d!1534782 d!1534424)))

(assert (=> bs!1155869 (= lambda!231319 lambda!231221)))

(declare-fun bs!1155870 () Bool)

(assert (= bs!1155870 (and d!1534782 b!4794974)))

(assert (=> bs!1155870 (not (= lambda!231319 lambda!231122))))

(declare-fun bs!1155871 () Bool)

(assert (= bs!1155871 (and d!1534782 d!1534406)))

(assert (=> bs!1155871 (= lambda!231319 lambda!231213)))

(declare-fun bs!1155872 () Bool)

(assert (= bs!1155872 (and d!1534782 d!1534412)))

(assert (=> bs!1155872 (= lambda!231319 lambda!231217)))

(declare-fun lt!1953338 () ListMap!6419)

(assert (=> d!1534782 (invariantList!1738 (toList!6947 lt!1953338))))

(declare-fun e!2994606 () ListMap!6419)

(assert (=> d!1534782 (= lt!1953338 e!2994606)))

(declare-fun c!817395 () Bool)

(assert (=> d!1534782 (= c!817395 ((_ is Cons!54251) (t!361825 (toList!6948 lt!1952728))))))

(assert (=> d!1534782 (forall!12275 (t!361825 (toList!6948 lt!1952728)) lambda!231319)))

(assert (=> d!1534782 (= (extractMap!2461 (t!361825 (toList!6948 lt!1952728))) lt!1953338)))

(declare-fun b!4795813 () Bool)

(assert (=> b!4795813 (= e!2994606 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (t!361825 (toList!6948 lt!1952728)))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lt!1952728))))))))

(declare-fun b!4795814 () Bool)

(assert (=> b!4795814 (= e!2994606 (ListMap!6420 Nil!54250))))

(assert (= (and d!1534782 c!817395) b!4795813))

(assert (= (and d!1534782 (not c!817395)) b!4795814))

(declare-fun m!5777746 () Bool)

(assert (=> d!1534782 m!5777746))

(declare-fun m!5777748 () Bool)

(assert (=> d!1534782 m!5777748))

(declare-fun m!5777750 () Bool)

(assert (=> b!4795813 m!5777750))

(assert (=> b!4795813 m!5777750))

(declare-fun m!5777752 () Bool)

(assert (=> b!4795813 m!5777752))

(assert (=> b!4795276 d!1534782))

(declare-fun d!1534784 () Bool)

(declare-fun res!2038932 () Bool)

(declare-fun e!2994611 () Bool)

(assert (=> d!1534784 (=> res!2038932 e!2994611)))

(assert (=> d!1534784 (= res!2038932 (and ((_ is Cons!54251) (toList!6948 lm!2473)) (= (_1!31747 (h!60681 (toList!6948 lm!2473))) lt!1952729)))))

(assert (=> d!1534784 (= (containsKey!3975 (toList!6948 lm!2473) lt!1952729) e!2994611)))

(declare-fun b!4795819 () Bool)

(declare-fun e!2994612 () Bool)

(assert (=> b!4795819 (= e!2994611 e!2994612)))

(declare-fun res!2038933 () Bool)

(assert (=> b!4795819 (=> (not res!2038933) (not e!2994612))))

(assert (=> b!4795819 (= res!2038933 (and (or (not ((_ is Cons!54251) (toList!6948 lm!2473))) (bvsle (_1!31747 (h!60681 (toList!6948 lm!2473))) lt!1952729)) ((_ is Cons!54251) (toList!6948 lm!2473)) (bvslt (_1!31747 (h!60681 (toList!6948 lm!2473))) lt!1952729)))))

(declare-fun b!4795820 () Bool)

(assert (=> b!4795820 (= e!2994612 (containsKey!3975 (t!361825 (toList!6948 lm!2473)) lt!1952729))))

(assert (= (and d!1534784 (not res!2038932)) b!4795819))

(assert (= (and b!4795819 res!2038933) b!4795820))

(declare-fun m!5777754 () Bool)

(assert (=> b!4795820 m!5777754))

(assert (=> d!1534324 d!1534784))

(declare-fun bs!1155887 () Bool)

(declare-fun b!4795826 () Bool)

(assert (= bs!1155887 (and b!4795826 b!4795785)))

(declare-fun lambda!231322 () Int)

(assert (=> bs!1155887 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231322 lambda!231304))))

(declare-fun bs!1155888 () Bool)

(assert (= bs!1155888 (and b!4795826 b!4795566)))

(assert (=> bs!1155888 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231322 lambda!231272))))

(declare-fun bs!1155889 () Bool)

(assert (= bs!1155889 (and b!4795826 b!4795787)))

(assert (=> bs!1155889 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231322 lambda!231306))))

(declare-fun bs!1155890 () Bool)

(assert (= bs!1155890 (and b!4795826 b!4795352)))

(assert (=> bs!1155890 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231322 lambda!231229))))

(declare-fun bs!1155891 () Bool)

(assert (= bs!1155891 (and b!4795826 b!4795359)))

(assert (=> bs!1155891 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231322 lambda!231233))))

(declare-fun bs!1155892 () Bool)

(assert (= bs!1155892 (and b!4795826 b!4795379)))

(assert (=> bs!1155892 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231322 lambda!231239))))

(declare-fun bs!1155893 () Bool)

(assert (= bs!1155893 (and b!4795826 b!4795563)))

(assert (=> bs!1155893 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (toList!6947 lt!1952727)) (= lambda!231322 lambda!231273))))

(declare-fun bs!1155894 () Bool)

(assert (= bs!1155894 (and b!4795826 b!4795784)))

(assert (=> bs!1155894 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231322 lambda!231308))))

(declare-fun bs!1155895 () Bool)

(assert (= bs!1155895 (and b!4795826 b!4795564)))

(assert (=> bs!1155895 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231322 lambda!231271))))

(assert (=> b!4795826 true))

(declare-fun bs!1155896 () Bool)

(declare-fun b!4795828 () Bool)

(assert (= bs!1155896 (and b!4795828 b!4795826)))

(declare-fun lambda!231323 () Int)

(assert (=> bs!1155896 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (= lambda!231323 lambda!231322))))

(declare-fun bs!1155897 () Bool)

(assert (= bs!1155897 (and b!4795828 b!4795785)))

(assert (=> bs!1155897 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231323 lambda!231304))))

(declare-fun bs!1155898 () Bool)

(assert (= bs!1155898 (and b!4795828 b!4795566)))

(assert (=> bs!1155898 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231323 lambda!231272))))

(declare-fun bs!1155899 () Bool)

(assert (= bs!1155899 (and b!4795828 b!4795787)))

(assert (=> bs!1155899 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231323 lambda!231306))))

(declare-fun bs!1155900 () Bool)

(assert (= bs!1155900 (and b!4795828 b!4795352)))

(assert (=> bs!1155900 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231323 lambda!231229))))

(declare-fun bs!1155901 () Bool)

(assert (= bs!1155901 (and b!4795828 b!4795359)))

(assert (=> bs!1155901 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231323 lambda!231233))))

(declare-fun bs!1155902 () Bool)

(assert (= bs!1155902 (and b!4795828 b!4795379)))

(assert (=> bs!1155902 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231323 lambda!231239))))

(declare-fun bs!1155903 () Bool)

(assert (= bs!1155903 (and b!4795828 b!4795563)))

(assert (=> bs!1155903 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (toList!6947 lt!1952727)) (= lambda!231323 lambda!231273))))

(declare-fun bs!1155904 () Bool)

(assert (= bs!1155904 (and b!4795828 b!4795784)))

(assert (=> bs!1155904 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231323 lambda!231308))))

(declare-fun bs!1155905 () Bool)

(assert (= bs!1155905 (and b!4795828 b!4795564)))

(assert (=> bs!1155905 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231323 lambda!231271))))

(assert (=> b!4795828 true))

(declare-fun bs!1155906 () Bool)

(declare-fun b!4795825 () Bool)

(assert (= bs!1155906 (and b!4795825 b!4795826)))

(declare-fun lambda!231324 () Int)

(assert (=> bs!1155906 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (= lambda!231324 lambda!231322))))

(declare-fun bs!1155907 () Bool)

(assert (= bs!1155907 (and b!4795825 b!4795785)))

(assert (=> bs!1155907 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231324 lambda!231304))))

(declare-fun bs!1155908 () Bool)

(assert (= bs!1155908 (and b!4795825 b!4795566)))

(assert (=> bs!1155908 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231324 lambda!231272))))

(declare-fun bs!1155909 () Bool)

(assert (= bs!1155909 (and b!4795825 b!4795787)))

(assert (=> bs!1155909 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231324 lambda!231306))))

(declare-fun bs!1155910 () Bool)

(assert (= bs!1155910 (and b!4795825 b!4795352)))

(assert (=> bs!1155910 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231324 lambda!231229))))

(declare-fun bs!1155911 () Bool)

(assert (= bs!1155911 (and b!4795825 b!4795359)))

(assert (=> bs!1155911 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231324 lambda!231233))))

(declare-fun bs!1155912 () Bool)

(assert (= bs!1155912 (and b!4795825 b!4795379)))

(assert (=> bs!1155912 (= lambda!231324 lambda!231239)))

(declare-fun bs!1155913 () Bool)

(assert (= bs!1155913 (and b!4795825 b!4795563)))

(assert (=> bs!1155913 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (toList!6947 lt!1952727)) (= lambda!231324 lambda!231273))))

(declare-fun bs!1155914 () Bool)

(assert (= bs!1155914 (and b!4795825 b!4795828)))

(assert (=> bs!1155914 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))) (= lambda!231324 lambda!231323))))

(declare-fun bs!1155915 () Bool)

(assert (= bs!1155915 (and b!4795825 b!4795784)))

(assert (=> bs!1155915 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231324 lambda!231308))))

(declare-fun bs!1155916 () Bool)

(assert (= bs!1155916 (and b!4795825 b!4795564)))

(assert (=> bs!1155916 (= (= (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231324 lambda!231271))))

(assert (=> b!4795825 true))

(declare-fun bs!1155918 () Bool)

(declare-fun b!4795829 () Bool)

(assert (= bs!1155918 (and b!4795829 b!4795567)))

(declare-fun lambda!231325 () Int)

(assert (=> bs!1155918 (= lambda!231325 lambda!231274)))

(declare-fun bs!1155919 () Bool)

(assert (= bs!1155919 (and b!4795829 b!4795353)))

(assert (=> bs!1155919 (= lambda!231325 lambda!231232)))

(declare-fun bs!1155921 () Bool)

(assert (= bs!1155921 (and b!4795829 b!4795380)))

(assert (=> bs!1155921 (= lambda!231325 lambda!231240)))

(declare-fun bs!1155922 () Bool)

(assert (= bs!1155922 (and b!4795829 b!4795788)))

(assert (=> bs!1155922 (= lambda!231325 lambda!231309)))

(declare-fun bs!1155923 () Bool)

(assert (= bs!1155923 (and b!4795829 b!4795360)))

(assert (=> bs!1155923 (= lambda!231325 lambda!231236)))

(declare-fun b!4795821 () Bool)

(assert (=> b!4795821 false))

(declare-fun e!2994614 () Unit!140096)

(declare-fun Unit!140218 () Unit!140096)

(assert (=> b!4795821 (= e!2994614 Unit!140218)))

(declare-fun d!1534786 () Bool)

(declare-fun e!2994613 () Bool)

(assert (=> d!1534786 e!2994613))

(declare-fun res!2038935 () Bool)

(assert (=> d!1534786 (=> (not res!2038935) (not e!2994613))))

(declare-fun lt!1953343 () List!54377)

(assert (=> d!1534786 (= res!2038935 (noDuplicate!923 lt!1953343))))

(declare-fun e!2994615 () List!54377)

(assert (=> d!1534786 (= lt!1953343 e!2994615)))

(declare-fun c!817396 () Bool)

(assert (=> d!1534786 (= c!817396 ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))

(assert (=> d!1534786 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))

(assert (=> d!1534786 (= (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) lt!1953343)))

(declare-fun b!4795822 () Bool)

(declare-fun e!2994616 () Unit!140096)

(declare-fun Unit!140222 () Unit!140096)

(assert (=> b!4795822 (= e!2994616 Unit!140222)))

(declare-fun b!4795823 () Bool)

(assert (=> b!4795823 (= e!2994615 Nil!54253)))

(declare-fun b!4795824 () Bool)

(declare-fun res!2038934 () Bool)

(assert (=> b!4795824 (=> (not res!2038934) (not e!2994613))))

(assert (=> b!4795824 (= res!2038934 (= (length!702 lt!1953343) (length!703 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))))

(declare-fun res!2038936 () Bool)

(assert (=> b!4795825 (=> (not res!2038936) (not e!2994613))))

(assert (=> b!4795825 (= res!2038936 (forall!12279 lt!1953343 lambda!231324))))

(assert (=> b!4795826 false))

(declare-fun lt!1953340 () Unit!140096)

(assert (=> b!4795826 (= lt!1953340 (forallContained!4185 (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) lambda!231322 (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))))

(declare-fun Unit!140227 () Unit!140096)

(assert (=> b!4795826 (= e!2994616 Unit!140227)))

(declare-fun b!4795827 () Bool)

(declare-fun Unit!140229 () Unit!140096)

(assert (=> b!4795827 (= e!2994614 Unit!140229)))

(assert (=> b!4795828 (= e!2994615 (Cons!54253 (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))))

(declare-fun c!817398 () Bool)

(assert (=> b!4795828 (= c!817398 (containsKey!3976 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))))

(declare-fun lt!1953339 () Unit!140096)

(assert (=> b!4795828 (= lt!1953339 e!2994614)))

(declare-fun c!817397 () Bool)

(assert (=> b!4795828 (= c!817397 (contains!17887 (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))))))

(declare-fun lt!1953342 () Unit!140096)

(assert (=> b!4795828 (= lt!1953342 e!2994616)))

(declare-fun lt!1953344 () List!54377)

(assert (=> b!4795828 (= lt!1953344 (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))))

(declare-fun lt!1953345 () Unit!140096)

(assert (=> b!4795828 (= lt!1953345 (lemmaForallContainsAddHeadPreserves!338 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) lt!1953344 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))))

(assert (=> b!4795828 (forall!12279 lt!1953344 lambda!231323)))

(declare-fun lt!1953341 () Unit!140096)

(assert (=> b!4795828 (= lt!1953341 lt!1953345)))

(assert (=> b!4795829 (= e!2994613 (= (content!9720 lt!1953343) (content!9720 (map!12251 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) lambda!231325))))))

(assert (= (and d!1534786 c!817396) b!4795828))

(assert (= (and d!1534786 (not c!817396)) b!4795823))

(assert (= (and b!4795828 c!817398) b!4795821))

(assert (= (and b!4795828 (not c!817398)) b!4795827))

(assert (= (and b!4795828 c!817397) b!4795826))

(assert (= (and b!4795828 (not c!817397)) b!4795822))

(assert (= (and d!1534786 res!2038935) b!4795824))

(assert (= (and b!4795824 res!2038934) b!4795825))

(assert (= (and b!4795825 res!2038936) b!4795829))

(declare-fun m!5777800 () Bool)

(assert (=> b!4795824 m!5777800))

(assert (=> b!4795824 m!5776882))

(declare-fun m!5777802 () Bool)

(assert (=> b!4795825 m!5777802))

(declare-fun m!5777804 () Bool)

(assert (=> b!4795828 m!5777804))

(declare-fun m!5777806 () Bool)

(assert (=> b!4795828 m!5777806))

(declare-fun m!5777808 () Bool)

(assert (=> b!4795828 m!5777808))

(declare-fun m!5777810 () Bool)

(assert (=> b!4795828 m!5777810))

(assert (=> b!4795828 m!5777810))

(declare-fun m!5777812 () Bool)

(assert (=> b!4795828 m!5777812))

(declare-fun m!5777814 () Bool)

(assert (=> d!1534786 m!5777814))

(assert (=> d!1534786 m!5777608))

(assert (=> b!4795826 m!5777810))

(assert (=> b!4795826 m!5777810))

(declare-fun m!5777816 () Bool)

(assert (=> b!4795826 m!5777816))

(declare-fun m!5777818 () Bool)

(assert (=> b!4795829 m!5777818))

(declare-fun m!5777820 () Bool)

(assert (=> b!4795829 m!5777820))

(assert (=> b!4795829 m!5777820))

(declare-fun m!5777822 () Bool)

(assert (=> b!4795829 m!5777822))

(assert (=> b!4795295 d!1534786))

(declare-fun d!1534796 () Bool)

(declare-fun lt!1953350 () Bool)

(declare-fun content!9722 (List!54375) (InoxSet tuple2!56906))

(assert (=> d!1534796 (= lt!1953350 (select (content!9722 (toList!6948 lm!2473)) (h!60681 (toList!6948 lm!2473))))))

(declare-fun e!2994623 () Bool)

(assert (=> d!1534796 (= lt!1953350 e!2994623)))

(declare-fun res!2038942 () Bool)

(assert (=> d!1534796 (=> (not res!2038942) (not e!2994623))))

(assert (=> d!1534796 (= res!2038942 ((_ is Cons!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534796 (= (contains!17888 (toList!6948 lm!2473) (h!60681 (toList!6948 lm!2473))) lt!1953350)))

(declare-fun b!4795837 () Bool)

(declare-fun e!2994624 () Bool)

(assert (=> b!4795837 (= e!2994623 e!2994624)))

(declare-fun res!2038943 () Bool)

(assert (=> b!4795837 (=> res!2038943 e!2994624)))

(assert (=> b!4795837 (= res!2038943 (= (h!60681 (toList!6948 lm!2473)) (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4795838 () Bool)

(assert (=> b!4795838 (= e!2994624 (contains!17888 (t!361825 (toList!6948 lm!2473)) (h!60681 (toList!6948 lm!2473))))))

(assert (= (and d!1534796 res!2038942) b!4795837))

(assert (= (and b!4795837 (not res!2038943)) b!4795838))

(declare-fun m!5777824 () Bool)

(assert (=> d!1534796 m!5777824))

(declare-fun m!5777826 () Bool)

(assert (=> d!1534796 m!5777826))

(declare-fun m!5777828 () Bool)

(assert (=> b!4795838 m!5777828))

(assert (=> b!4795286 d!1534796))

(assert (=> d!1534340 d!1534336))

(declare-fun d!1534798 () Bool)

(assert (=> d!1534798 (containsKeyBiggerList!576 (toList!6948 lm!2473) key!5896)))

(assert (=> d!1534798 true))

(declare-fun _$33!844 () Unit!140096)

(assert (=> d!1534798 (= (choose!34573 lm!2473 key!5896 hashF!1559) _$33!844)))

(declare-fun bs!1155924 () Bool)

(assert (= bs!1155924 d!1534798))

(assert (=> bs!1155924 m!5776292))

(assert (=> d!1534340 d!1534798))

(declare-fun d!1534800 () Bool)

(declare-fun res!2038944 () Bool)

(declare-fun e!2994625 () Bool)

(assert (=> d!1534800 (=> res!2038944 e!2994625)))

(assert (=> d!1534800 (= res!2038944 ((_ is Nil!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534800 (= (forall!12275 (toList!6948 lm!2473) lambda!231132) e!2994625)))

(declare-fun b!4795839 () Bool)

(declare-fun e!2994626 () Bool)

(assert (=> b!4795839 (= e!2994625 e!2994626)))

(declare-fun res!2038945 () Bool)

(assert (=> b!4795839 (=> (not res!2038945) (not e!2994626))))

(assert (=> b!4795839 (= res!2038945 (dynLambda!22075 lambda!231132 (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4795840 () Bool)

(assert (=> b!4795840 (= e!2994626 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231132))))

(assert (= (and d!1534800 (not res!2038944)) b!4795839))

(assert (= (and b!4795839 res!2038945) b!4795840))

(declare-fun b_lambda!187059 () Bool)

(assert (=> (not b_lambda!187059) (not b!4795839)))

(declare-fun m!5777830 () Bool)

(assert (=> b!4795839 m!5777830))

(declare-fun m!5777832 () Bool)

(assert (=> b!4795840 m!5777832))

(assert (=> d!1534340 d!1534800))

(declare-fun d!1534802 () Bool)

(assert (=> d!1534802 (dynLambda!22075 lambda!231122 (h!60681 (toList!6948 lm!2473)))))

(assert (=> d!1534802 true))

(declare-fun _$7!2428 () Unit!140096)

(assert (=> d!1534802 (= (choose!34575 (toList!6948 lm!2473) lambda!231122 (h!60681 (toList!6948 lm!2473))) _$7!2428)))

(declare-fun b_lambda!187061 () Bool)

(assert (=> (not b_lambda!187061) (not d!1534802)))

(declare-fun bs!1155925 () Bool)

(assert (= bs!1155925 d!1534802))

(assert (=> bs!1155925 m!5776718))

(assert (=> d!1534416 d!1534802))

(declare-fun d!1534804 () Bool)

(declare-fun res!2038946 () Bool)

(declare-fun e!2994627 () Bool)

(assert (=> d!1534804 (=> res!2038946 e!2994627)))

(assert (=> d!1534804 (= res!2038946 ((_ is Nil!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534804 (= (forall!12275 (toList!6948 lm!2473) lambda!231122) e!2994627)))

(declare-fun b!4795842 () Bool)

(declare-fun e!2994628 () Bool)

(assert (=> b!4795842 (= e!2994627 e!2994628)))

(declare-fun res!2038947 () Bool)

(assert (=> b!4795842 (=> (not res!2038947) (not e!2994628))))

(assert (=> b!4795842 (= res!2038947 (dynLambda!22075 lambda!231122 (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4795843 () Bool)

(assert (=> b!4795843 (= e!2994628 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231122))))

(assert (= (and d!1534804 (not res!2038946)) b!4795842))

(assert (= (and b!4795842 res!2038947) b!4795843))

(declare-fun b_lambda!187063 () Bool)

(assert (=> (not b_lambda!187063) (not b!4795842)))

(assert (=> b!4795842 m!5776718))

(declare-fun m!5777834 () Bool)

(assert (=> b!4795843 m!5777834))

(assert (=> d!1534416 d!1534804))

(declare-fun d!1534806 () Bool)

(declare-fun e!2994630 () Bool)

(assert (=> d!1534806 e!2994630))

(declare-fun res!2038948 () Bool)

(assert (=> d!1534806 (=> res!2038948 e!2994630)))

(declare-fun lt!1953355 () Bool)

(assert (=> d!1534806 (= res!2038948 (not lt!1953355))))

(declare-fun lt!1953353 () Bool)

(assert (=> d!1534806 (= lt!1953355 lt!1953353)))

(declare-fun lt!1953354 () Unit!140096)

(declare-fun e!2994629 () Unit!140096)

(assert (=> d!1534806 (= lt!1953354 e!2994629)))

(declare-fun c!817400 () Bool)

(assert (=> d!1534806 (= c!817400 lt!1953353)))

(assert (=> d!1534806 (= lt!1953353 (containsKey!3975 (toList!6948 lm!2473) (hash!4975 hashF!1559 key!5896)))))

(assert (=> d!1534806 (= (contains!17884 lm!2473 (hash!4975 hashF!1559 key!5896)) lt!1953355)))

(declare-fun b!4795844 () Bool)

(declare-fun lt!1953356 () Unit!140096)

(assert (=> b!4795844 (= e!2994629 lt!1953356)))

(assert (=> b!4795844 (= lt!1953356 (lemmaContainsKeyImpliesGetValueByKeyDefined!2157 (toList!6948 lm!2473) (hash!4975 hashF!1559 key!5896)))))

(assert (=> b!4795844 (isDefined!10266 (getValueByKey!2367 (toList!6948 lm!2473) (hash!4975 hashF!1559 key!5896)))))

(declare-fun b!4795845 () Bool)

(declare-fun Unit!140232 () Unit!140096)

(assert (=> b!4795845 (= e!2994629 Unit!140232)))

(declare-fun b!4795846 () Bool)

(assert (=> b!4795846 (= e!2994630 (isDefined!10266 (getValueByKey!2367 (toList!6948 lm!2473) (hash!4975 hashF!1559 key!5896))))))

(assert (= (and d!1534806 c!817400) b!4795844))

(assert (= (and d!1534806 (not c!817400)) b!4795845))

(assert (= (and d!1534806 (not res!2038948)) b!4795846))

(assert (=> d!1534806 m!5776294))

(declare-fun m!5777836 () Bool)

(assert (=> d!1534806 m!5777836))

(assert (=> b!4795844 m!5776294))

(declare-fun m!5777838 () Bool)

(assert (=> b!4795844 m!5777838))

(assert (=> b!4795844 m!5776294))

(assert (=> b!4795844 m!5776822))

(assert (=> b!4795844 m!5776822))

(declare-fun m!5777840 () Bool)

(assert (=> b!4795844 m!5777840))

(assert (=> b!4795846 m!5776294))

(assert (=> b!4795846 m!5776822))

(assert (=> b!4795846 m!5776822))

(assert (=> b!4795846 m!5777840))

(assert (=> d!1534348 d!1534806))

(assert (=> d!1534348 d!1534364))

(declare-fun d!1534808 () Bool)

(declare-fun e!2994633 () Bool)

(assert (=> d!1534808 e!2994633))

(declare-fun res!2038951 () Bool)

(assert (=> d!1534808 (=> (not res!2038951) (not e!2994633))))

(assert (=> d!1534808 (= res!2038951 (contains!17884 lm!2473 (hash!4975 hashF!1559 key!5896)))))

(assert (=> d!1534808 true))

(declare-fun _$5!223 () Unit!140096)

(assert (=> d!1534808 (= (choose!34574 lm!2473 key!5896 hashF!1559) _$5!223)))

(declare-fun b!4795849 () Bool)

(assert (=> b!4795849 (= e!2994633 (isDefined!10263 (getPair!906 (apply!13004 lm!2473 (hash!4975 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1534808 res!2038951) b!4795849))

(assert (=> d!1534808 m!5776294))

(assert (=> d!1534808 m!5776294))

(assert (=> d!1534808 m!5776448))

(assert (=> b!4795849 m!5776294))

(assert (=> b!4795849 m!5776294))

(assert (=> b!4795849 m!5776454))

(assert (=> b!4795849 m!5776454))

(assert (=> b!4795849 m!5776456))

(assert (=> b!4795849 m!5776456))

(assert (=> b!4795849 m!5776458))

(assert (=> d!1534348 d!1534808))

(declare-fun d!1534812 () Bool)

(declare-fun res!2038955 () Bool)

(declare-fun e!2994640 () Bool)

(assert (=> d!1534812 (=> res!2038955 e!2994640)))

(assert (=> d!1534812 (= res!2038955 ((_ is Nil!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534812 (= (forall!12275 (toList!6948 lm!2473) lambda!231138) e!2994640)))

(declare-fun b!4795859 () Bool)

(declare-fun e!2994641 () Bool)

(assert (=> b!4795859 (= e!2994640 e!2994641)))

(declare-fun res!2038956 () Bool)

(assert (=> b!4795859 (=> (not res!2038956) (not e!2994641))))

(assert (=> b!4795859 (= res!2038956 (dynLambda!22075 lambda!231138 (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4795860 () Bool)

(assert (=> b!4795860 (= e!2994641 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231138))))

(assert (= (and d!1534812 (not res!2038955)) b!4795859))

(assert (= (and b!4795859 res!2038956) b!4795860))

(declare-fun b_lambda!187065 () Bool)

(assert (=> (not b_lambda!187065) (not b!4795859)))

(declare-fun m!5777850 () Bool)

(assert (=> b!4795859 m!5777850))

(declare-fun m!5777854 () Bool)

(assert (=> b!4795860 m!5777854))

(assert (=> d!1534348 d!1534812))

(declare-fun d!1534814 () Bool)

(declare-fun lt!1953366 () Bool)

(assert (=> d!1534814 (= lt!1953366 (select (content!9720 e!2994257) key!5896))))

(declare-fun e!2994642 () Bool)

(assert (=> d!1534814 (= lt!1953366 e!2994642)))

(declare-fun res!2038957 () Bool)

(assert (=> d!1534814 (=> (not res!2038957) (not e!2994642))))

(assert (=> d!1534814 (= res!2038957 ((_ is Cons!54253) e!2994257))))

(assert (=> d!1534814 (= (contains!17887 e!2994257 key!5896) lt!1953366)))

(declare-fun b!4795861 () Bool)

(declare-fun e!2994643 () Bool)

(assert (=> b!4795861 (= e!2994642 e!2994643)))

(declare-fun res!2038958 () Bool)

(assert (=> b!4795861 (=> res!2038958 e!2994643)))

(assert (=> b!4795861 (= res!2038958 (= (h!60683 e!2994257) key!5896))))

(declare-fun b!4795862 () Bool)

(assert (=> b!4795862 (= e!2994643 (contains!17887 (t!361827 e!2994257) key!5896))))

(assert (= (and d!1534814 res!2038957) b!4795861))

(assert (= (and b!4795861 (not res!2038958)) b!4795862))

(declare-fun m!5777872 () Bool)

(assert (=> d!1534814 m!5777872))

(declare-fun m!5777874 () Bool)

(assert (=> d!1534814 m!5777874))

(declare-fun m!5777876 () Bool)

(assert (=> b!4795862 m!5777876))

(assert (=> bm!335148 d!1534814))

(assert (=> bs!1155451 d!1534414))

(declare-fun d!1534816 () Bool)

(declare-fun res!2038959 () Bool)

(declare-fun e!2994645 () Bool)

(assert (=> d!1534816 (=> res!2038959 e!2994645)))

(declare-fun e!2994644 () Bool)

(assert (=> d!1534816 (= res!2038959 e!2994644)))

(declare-fun res!2038961 () Bool)

(assert (=> d!1534816 (=> (not res!2038961) (not e!2994644))))

(assert (=> d!1534816 (= res!2038961 ((_ is Cons!54251) (t!361825 (toList!6948 lm!2473))))))

(assert (=> d!1534816 (= (containsKeyBiggerList!576 (t!361825 (toList!6948 lm!2473)) key!5896) e!2994645)))

(declare-fun b!4795863 () Bool)

(assert (=> b!4795863 (= e!2994644 (containsKey!3972 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473)))) key!5896))))

(declare-fun b!4795864 () Bool)

(declare-fun e!2994646 () Bool)

(assert (=> b!4795864 (= e!2994645 e!2994646)))

(declare-fun res!2038960 () Bool)

(assert (=> b!4795864 (=> (not res!2038960) (not e!2994646))))

(assert (=> b!4795864 (= res!2038960 ((_ is Cons!54251) (t!361825 (toList!6948 lm!2473))))))

(declare-fun b!4795865 () Bool)

(assert (=> b!4795865 (= e!2994646 (containsKeyBiggerList!576 (t!361825 (t!361825 (toList!6948 lm!2473))) key!5896))))

(assert (= (and d!1534816 res!2038961) b!4795863))

(assert (= (and d!1534816 (not res!2038959)) b!4795864))

(assert (= (and b!4795864 res!2038960) b!4795865))

(assert (=> b!4795863 m!5777216))

(declare-fun m!5777880 () Bool)

(assert (=> b!4795865 m!5777880))

(assert (=> b!4795061 d!1534816))

(declare-fun bs!1155942 () Bool)

(declare-fun b!4795873 () Bool)

(assert (= bs!1155942 (and b!4795873 b!4795785)))

(declare-fun lambda!231331 () Int)

(assert (=> bs!1155942 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231331 lambda!231304))))

(declare-fun bs!1155943 () Bool)

(assert (= bs!1155943 (and b!4795873 b!4795566)))

(assert (=> bs!1155943 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231331 lambda!231272))))

(declare-fun bs!1155944 () Bool)

(assert (= bs!1155944 (and b!4795873 b!4795787)))

(assert (=> bs!1155944 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231331 lambda!231306))))

(declare-fun bs!1155945 () Bool)

(assert (= bs!1155945 (and b!4795873 b!4795352)))

(assert (=> bs!1155945 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231331 lambda!231229))))

(declare-fun bs!1155946 () Bool)

(assert (= bs!1155946 (and b!4795873 b!4795359)))

(assert (=> bs!1155946 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231331 lambda!231233))))

(declare-fun bs!1155947 () Bool)

(assert (= bs!1155947 (and b!4795873 b!4795379)))

(assert (=> bs!1155947 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231331 lambda!231239))))

(declare-fun bs!1155948 () Bool)

(assert (= bs!1155948 (and b!4795873 b!4795563)))

(assert (=> bs!1155948 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (toList!6947 lt!1952727)) (= lambda!231331 lambda!231273))))

(declare-fun bs!1155949 () Bool)

(assert (= bs!1155949 (and b!4795873 b!4795828)))

(assert (=> bs!1155949 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))) (= lambda!231331 lambda!231323))))

(declare-fun bs!1155950 () Bool)

(assert (= bs!1155950 (and b!4795873 b!4795784)))

(assert (=> bs!1155950 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231331 lambda!231308))))

(declare-fun bs!1155951 () Bool)

(assert (= bs!1155951 (and b!4795873 b!4795564)))

(assert (=> bs!1155951 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231331 lambda!231271))))

(declare-fun bs!1155952 () Bool)

(assert (= bs!1155952 (and b!4795873 b!4795826)))

(assert (=> bs!1155952 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (= lambda!231331 lambda!231322))))

(declare-fun bs!1155953 () Bool)

(assert (= bs!1155953 (and b!4795873 b!4795825)))

(assert (=> bs!1155953 (= (= (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231331 lambda!231324))))

(assert (=> b!4795873 true))

(declare-fun bs!1155956 () Bool)

(declare-fun b!4795875 () Bool)

(assert (= bs!1155956 (and b!4795875 b!4795873)))

(declare-fun lambda!231333 () Int)

(assert (=> bs!1155956 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (= lambda!231333 lambda!231331))))

(declare-fun bs!1155958 () Bool)

(assert (= bs!1155958 (and b!4795875 b!4795785)))

(assert (=> bs!1155958 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231333 lambda!231304))))

(declare-fun bs!1155960 () Bool)

(assert (= bs!1155960 (and b!4795875 b!4795566)))

(assert (=> bs!1155960 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231333 lambda!231272))))

(declare-fun bs!1155961 () Bool)

(assert (= bs!1155961 (and b!4795875 b!4795787)))

(assert (=> bs!1155961 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231333 lambda!231306))))

(declare-fun bs!1155963 () Bool)

(assert (= bs!1155963 (and b!4795875 b!4795352)))

(assert (=> bs!1155963 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231333 lambda!231229))))

(declare-fun bs!1155965 () Bool)

(assert (= bs!1155965 (and b!4795875 b!4795359)))

(assert (=> bs!1155965 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231333 lambda!231233))))

(declare-fun bs!1155967 () Bool)

(assert (= bs!1155967 (and b!4795875 b!4795379)))

(assert (=> bs!1155967 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231333 lambda!231239))))

(declare-fun bs!1155969 () Bool)

(assert (= bs!1155969 (and b!4795875 b!4795563)))

(assert (=> bs!1155969 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (toList!6947 lt!1952727)) (= lambda!231333 lambda!231273))))

(declare-fun bs!1155971 () Bool)

(assert (= bs!1155971 (and b!4795875 b!4795828)))

(assert (=> bs!1155971 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))) (= lambda!231333 lambda!231323))))

(declare-fun bs!1155973 () Bool)

(assert (= bs!1155973 (and b!4795875 b!4795784)))

(assert (=> bs!1155973 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231333 lambda!231308))))

(declare-fun bs!1155975 () Bool)

(assert (= bs!1155975 (and b!4795875 b!4795564)))

(assert (=> bs!1155975 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231333 lambda!231271))))

(declare-fun bs!1155977 () Bool)

(assert (= bs!1155977 (and b!4795875 b!4795826)))

(assert (=> bs!1155977 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (= lambda!231333 lambda!231322))))

(declare-fun bs!1155979 () Bool)

(assert (= bs!1155979 (and b!4795875 b!4795825)))

(assert (=> bs!1155979 (= (= (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231333 lambda!231324))))

(assert (=> b!4795875 true))

(declare-fun bs!1155982 () Bool)

(declare-fun b!4795872 () Bool)

(assert (= bs!1155982 (and b!4795872 b!4795873)))

(declare-fun lambda!231334 () Int)

(assert (=> bs!1155982 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (= lambda!231334 lambda!231331))))

(declare-fun bs!1155983 () Bool)

(assert (= bs!1155983 (and b!4795872 b!4795785)))

(assert (=> bs!1155983 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231334 lambda!231304))))

(declare-fun bs!1155985 () Bool)

(assert (= bs!1155985 (and b!4795872 b!4795566)))

(assert (=> bs!1155985 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231334 lambda!231272))))

(declare-fun bs!1155986 () Bool)

(assert (= bs!1155986 (and b!4795872 b!4795352)))

(assert (=> bs!1155986 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231334 lambda!231229))))

(declare-fun bs!1155987 () Bool)

(assert (= bs!1155987 (and b!4795872 b!4795359)))

(assert (=> bs!1155987 (= lambda!231334 lambda!231233)))

(declare-fun bs!1155988 () Bool)

(assert (= bs!1155988 (and b!4795872 b!4795379)))

(assert (=> bs!1155988 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231334 lambda!231239))))

(declare-fun bs!1155989 () Bool)

(assert (= bs!1155989 (and b!4795872 b!4795563)))

(assert (=> bs!1155989 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (toList!6947 lt!1952727)) (= lambda!231334 lambda!231273))))

(declare-fun bs!1155990 () Bool)

(assert (= bs!1155990 (and b!4795872 b!4795828)))

(assert (=> bs!1155990 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))) (= lambda!231334 lambda!231323))))

(declare-fun bs!1155991 () Bool)

(assert (= bs!1155991 (and b!4795872 b!4795784)))

(assert (=> bs!1155991 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231334 lambda!231308))))

(declare-fun bs!1155992 () Bool)

(assert (= bs!1155992 (and b!4795872 b!4795564)))

(assert (=> bs!1155992 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (t!361824 (toList!6947 lt!1952727))) (= lambda!231334 lambda!231271))))

(declare-fun bs!1155994 () Bool)

(assert (= bs!1155994 (and b!4795872 b!4795826)))

(assert (=> bs!1155994 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (= lambda!231334 lambda!231322))))

(declare-fun bs!1155996 () Bool)

(assert (= bs!1155996 (and b!4795872 b!4795825)))

(assert (=> bs!1155996 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231334 lambda!231324))))

(declare-fun bs!1155998 () Bool)

(assert (= bs!1155998 (and b!4795872 b!4795875)))

(assert (=> bs!1155998 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))) (= lambda!231334 lambda!231333))))

(declare-fun bs!1156000 () Bool)

(assert (= bs!1156000 (and b!4795872 b!4795787)))

(assert (=> bs!1156000 (= (= (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231334 lambda!231306))))

(assert (=> b!4795872 true))

(declare-fun bs!1156003 () Bool)

(declare-fun b!4795876 () Bool)

(assert (= bs!1156003 (and b!4795876 b!4795567)))

(declare-fun lambda!231336 () Int)

(assert (=> bs!1156003 (= lambda!231336 lambda!231274)))

(declare-fun bs!1156005 () Bool)

(assert (= bs!1156005 (and b!4795876 b!4795353)))

(assert (=> bs!1156005 (= lambda!231336 lambda!231232)))

(declare-fun bs!1156007 () Bool)

(assert (= bs!1156007 (and b!4795876 b!4795380)))

(assert (=> bs!1156007 (= lambda!231336 lambda!231240)))

(declare-fun bs!1156009 () Bool)

(assert (= bs!1156009 (and b!4795876 b!4795788)))

(assert (=> bs!1156009 (= lambda!231336 lambda!231309)))

(declare-fun bs!1156011 () Bool)

(assert (= bs!1156011 (and b!4795876 b!4795829)))

(assert (=> bs!1156011 (= lambda!231336 lambda!231325)))

(declare-fun bs!1156012 () Bool)

(assert (= bs!1156012 (and b!4795876 b!4795360)))

(assert (=> bs!1156012 (= lambda!231336 lambda!231236)))

(declare-fun b!4795868 () Bool)

(assert (=> b!4795868 false))

(declare-fun e!2994650 () Unit!140096)

(declare-fun Unit!140235 () Unit!140096)

(assert (=> b!4795868 (= e!2994650 Unit!140235)))

(declare-fun d!1534820 () Bool)

(declare-fun e!2994649 () Bool)

(assert (=> d!1534820 e!2994649))

(declare-fun res!2038965 () Bool)

(assert (=> d!1534820 (=> (not res!2038965) (not e!2994649))))

(declare-fun lt!1953371 () List!54377)

(assert (=> d!1534820 (= res!2038965 (noDuplicate!923 lt!1953371))))

(declare-fun e!2994651 () List!54377)

(assert (=> d!1534820 (= lt!1953371 e!2994651)))

(declare-fun c!817404 () Bool)

(assert (=> d!1534820 (= c!817404 ((_ is Cons!54250) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))

(assert (=> d!1534820 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))

(assert (=> d!1534820 (= (getKeysList!1084 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) lt!1953371)))

(declare-fun b!4795869 () Bool)

(declare-fun e!2994652 () Unit!140096)

(declare-fun Unit!140236 () Unit!140096)

(assert (=> b!4795869 (= e!2994652 Unit!140236)))

(declare-fun b!4795870 () Bool)

(assert (=> b!4795870 (= e!2994651 Nil!54253)))

(declare-fun b!4795871 () Bool)

(declare-fun res!2038964 () Bool)

(assert (=> b!4795871 (=> (not res!2038964) (not e!2994649))))

(assert (=> b!4795871 (= res!2038964 (= (length!702 lt!1953371) (length!703 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))))

(declare-fun res!2038966 () Bool)

(assert (=> b!4795872 (=> (not res!2038966) (not e!2994649))))

(assert (=> b!4795872 (= res!2038966 (forall!12279 lt!1953371 lambda!231334))))

(assert (=> b!4795873 false))

(declare-fun lt!1953368 () Unit!140096)

(assert (=> b!4795873 (= lt!1953368 (forallContained!4185 (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) lambda!231331 (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))))

(declare-fun Unit!140237 () Unit!140096)

(assert (=> b!4795873 (= e!2994652 Unit!140237)))

(declare-fun b!4795874 () Bool)

(declare-fun Unit!140238 () Unit!140096)

(assert (=> b!4795874 (= e!2994650 Unit!140238)))

(assert (=> b!4795875 (= e!2994651 (Cons!54253 (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))))

(declare-fun c!817406 () Bool)

(assert (=> b!4795875 (= c!817406 (containsKey!3976 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953367 () Unit!140096)

(assert (=> b!4795875 (= lt!1953367 e!2994650)))

(declare-fun c!817405 () Bool)

(assert (=> b!4795875 (= c!817405 (contains!17887 (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (_1!31746 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953370 () Unit!140096)

(assert (=> b!4795875 (= lt!1953370 e!2994652)))

(declare-fun lt!1953372 () List!54377)

(assert (=> b!4795875 (= lt!1953372 (getKeysList!1084 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))))

(declare-fun lt!1953373 () Unit!140096)

(assert (=> b!4795875 (= lt!1953373 (lemmaForallContainsAddHeadPreserves!338 (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) lt!1953372 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))))))

(assert (=> b!4795875 (forall!12279 lt!1953372 lambda!231333)))

(declare-fun lt!1953369 () Unit!140096)

(assert (=> b!4795875 (= lt!1953369 lt!1953373)))

(assert (=> b!4795876 (= e!2994649 (= (content!9720 lt!1953371) (content!9720 (map!12251 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))) lambda!231336))))))

(assert (= (and d!1534820 c!817404) b!4795875))

(assert (= (and d!1534820 (not c!817404)) b!4795870))

(assert (= (and b!4795875 c!817406) b!4795868))

(assert (= (and b!4795875 (not c!817406)) b!4795874))

(assert (= (and b!4795875 c!817405) b!4795873))

(assert (= (and b!4795875 (not c!817405)) b!4795869))

(assert (= (and d!1534820 res!2038965) b!4795871))

(assert (= (and b!4795871 res!2038964) b!4795872))

(assert (= (and b!4795872 res!2038966) b!4795876))

(declare-fun m!5777894 () Bool)

(assert (=> b!4795871 m!5777894))

(assert (=> b!4795871 m!5776844))

(declare-fun m!5777896 () Bool)

(assert (=> b!4795872 m!5777896))

(declare-fun m!5777898 () Bool)

(assert (=> b!4795875 m!5777898))

(declare-fun m!5777900 () Bool)

(assert (=> b!4795875 m!5777900))

(declare-fun m!5777902 () Bool)

(assert (=> b!4795875 m!5777902))

(declare-fun m!5777904 () Bool)

(assert (=> b!4795875 m!5777904))

(assert (=> b!4795875 m!5777904))

(declare-fun m!5777906 () Bool)

(assert (=> b!4795875 m!5777906))

(declare-fun m!5777908 () Bool)

(assert (=> d!1534820 m!5777908))

(assert (=> d!1534820 m!5776966))

(assert (=> b!4795873 m!5777904))

(assert (=> b!4795873 m!5777904))

(declare-fun m!5777910 () Bool)

(assert (=> b!4795873 m!5777910))

(declare-fun m!5777912 () Bool)

(assert (=> b!4795876 m!5777912))

(declare-fun m!5777914 () Bool)

(assert (=> b!4795876 m!5777914))

(assert (=> b!4795876 m!5777914))

(declare-fun m!5777916 () Bool)

(assert (=> b!4795876 m!5777916))

(assert (=> b!4795258 d!1534820))

(declare-fun d!1534828 () Bool)

(declare-fun res!2038973 () Bool)

(declare-fun e!2994659 () Bool)

(assert (=> d!1534828 (=> res!2038973 e!2994659)))

(assert (=> d!1534828 (= res!2038973 ((_ is Nil!54251) (t!361825 (toList!6948 lm!2473))))))

(assert (=> d!1534828 (= (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231121) e!2994659)))

(declare-fun b!4795885 () Bool)

(declare-fun e!2994660 () Bool)

(assert (=> b!4795885 (= e!2994659 e!2994660)))

(declare-fun res!2038974 () Bool)

(assert (=> b!4795885 (=> (not res!2038974) (not e!2994660))))

(assert (=> b!4795885 (= res!2038974 (dynLambda!22075 lambda!231121 (h!60681 (t!361825 (toList!6948 lm!2473)))))))

(declare-fun b!4795886 () Bool)

(assert (=> b!4795886 (= e!2994660 (forall!12275 (t!361825 (t!361825 (toList!6948 lm!2473))) lambda!231121))))

(assert (= (and d!1534828 (not res!2038973)) b!4795885))

(assert (= (and b!4795885 res!2038974) b!4795886))

(declare-fun b_lambda!187073 () Bool)

(assert (=> (not b_lambda!187073) (not b!4795885)))

(declare-fun m!5777918 () Bool)

(assert (=> b!4795885 m!5777918))

(declare-fun m!5777920 () Bool)

(assert (=> b!4795886 m!5777920))

(assert (=> b!4794992 d!1534828))

(declare-fun d!1534830 () Bool)

(declare-fun lt!1953396 () Bool)

(assert (=> d!1534830 (= lt!1953396 (select (content!9720 (keys!19817 lt!1952727)) key!5896))))

(declare-fun e!2994661 () Bool)

(assert (=> d!1534830 (= lt!1953396 e!2994661)))

(declare-fun res!2038975 () Bool)

(assert (=> d!1534830 (=> (not res!2038975) (not e!2994661))))

(assert (=> d!1534830 (= res!2038975 ((_ is Cons!54253) (keys!19817 lt!1952727)))))

(assert (=> d!1534830 (= (contains!17887 (keys!19817 lt!1952727) key!5896) lt!1953396)))

(declare-fun b!4795887 () Bool)

(declare-fun e!2994662 () Bool)

(assert (=> b!4795887 (= e!2994661 e!2994662)))

(declare-fun res!2038976 () Bool)

(assert (=> b!4795887 (=> res!2038976 e!2994662)))

(assert (=> b!4795887 (= res!2038976 (= (h!60683 (keys!19817 lt!1952727)) key!5896))))

(declare-fun b!4795888 () Bool)

(assert (=> b!4795888 (= e!2994662 (contains!17887 (t!361827 (keys!19817 lt!1952727)) key!5896))))

(assert (= (and d!1534830 res!2038975) b!4795887))

(assert (= (and b!4795887 (not res!2038976)) b!4795888))

(assert (=> d!1534830 m!5776774))

(declare-fun m!5777922 () Bool)

(assert (=> d!1534830 m!5777922))

(declare-fun m!5777924 () Bool)

(assert (=> d!1534830 m!5777924))

(declare-fun m!5777926 () Bool)

(assert (=> b!4795888 m!5777926))

(assert (=> b!4795308 d!1534830))

(declare-fun bs!1156020 () Bool)

(declare-fun b!4795890 () Bool)

(assert (= bs!1156020 (and b!4795890 b!4795873)))

(declare-fun lambda!231338 () Int)

(assert (=> bs!1156020 (= (= (toList!6947 lt!1952727) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473))))) (= lambda!231338 lambda!231331))))

(declare-fun bs!1156021 () Bool)

(assert (= bs!1156021 (and b!4795890 b!4795785)))

(assert (=> bs!1156021 (= (= (toList!6947 lt!1952727) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))) (= lambda!231338 lambda!231304))))

(declare-fun bs!1156022 () Bool)

(assert (= bs!1156022 (and b!4795890 b!4795566)))

(assert (=> bs!1156022 (= (= (toList!6947 lt!1952727) (Cons!54250 (h!60680 (toList!6947 lt!1952727)) (t!361824 (toList!6947 lt!1952727)))) (= lambda!231338 lambda!231272))))

(declare-fun bs!1156023 () Bool)

(assert (= bs!1156023 (and b!4795890 b!4795352)))

(assert (=> bs!1156023 (= (= (toList!6947 lt!1952727) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231338 lambda!231229))))

(declare-fun bs!1156024 () Bool)

(assert (= bs!1156024 (and b!4795890 b!4795359)))

(assert (=> bs!1156024 (= (= (toList!6947 lt!1952727) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231338 lambda!231233))))

(declare-fun bs!1156025 () Bool)

(assert (= bs!1156025 (and b!4795890 b!4795379)))

(assert (=> bs!1156025 (= (= (toList!6947 lt!1952727) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231338 lambda!231239))))

(declare-fun bs!1156026 () Bool)

(assert (= bs!1156026 (and b!4795890 b!4795563)))

(assert (=> bs!1156026 (= lambda!231338 lambda!231273)))

(declare-fun bs!1156027 () Bool)

(assert (= bs!1156027 (and b!4795890 b!4795828)))

(assert (=> bs!1156027 (= (= (toList!6947 lt!1952727) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))))) (= lambda!231338 lambda!231323))))

(declare-fun bs!1156028 () Bool)

(assert (= bs!1156028 (and b!4795890 b!4795564)))

(assert (=> bs!1156028 (= (= (toList!6947 lt!1952727) (t!361824 (toList!6947 lt!1952727))) (= lambda!231338 lambda!231271))))

(declare-fun bs!1156029 () Bool)

(assert (= bs!1156029 (and b!4795890 b!4795826)))

(assert (=> bs!1156029 (= (= (toList!6947 lt!1952727) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))) (= lambda!231338 lambda!231322))))

(declare-fun bs!1156030 () Bool)

(assert (= bs!1156030 (and b!4795890 b!4795825)))

(assert (=> bs!1156030 (= (= (toList!6947 lt!1952727) (toList!6947 (extractMap!2461 (toList!6948 lt!1952728)))) (= lambda!231338 lambda!231324))))

(declare-fun bs!1156031 () Bool)

(assert (= bs!1156031 (and b!4795890 b!4795875)))

(assert (=> bs!1156031 (= (= (toList!6947 lt!1952727) (Cons!54250 (h!60680 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (t!361824 (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))))) (= lambda!231338 lambda!231333))))

(declare-fun bs!1156032 () Bool)

(assert (= bs!1156032 (and b!4795890 b!4795787)))

(assert (=> bs!1156032 (= (= (toList!6947 lt!1952727) (Cons!54250 (h!60680 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (t!361824 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))))) (= lambda!231338 lambda!231306))))

(declare-fun bs!1156033 () Bool)

(assert (= bs!1156033 (and b!4795890 b!4795784)))

(assert (=> bs!1156033 (= (= (toList!6947 lt!1952727) (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) (= lambda!231338 lambda!231308))))

(declare-fun bs!1156035 () Bool)

(assert (= bs!1156035 (and b!4795890 b!4795872)))

(assert (=> bs!1156035 (= (= (toList!6947 lt!1952727) (toList!6947 (extractMap!2461 (toList!6948 lm!2473)))) (= lambda!231338 lambda!231334))))

(assert (=> b!4795890 true))

(declare-fun bs!1156039 () Bool)

(declare-fun b!4795891 () Bool)

(assert (= bs!1156039 (and b!4795891 b!4795567)))

(declare-fun lambda!231340 () Int)

(assert (=> bs!1156039 (= lambda!231340 lambda!231274)))

(declare-fun bs!1156040 () Bool)

(assert (= bs!1156040 (and b!4795891 b!4795353)))

(assert (=> bs!1156040 (= lambda!231340 lambda!231232)))

(declare-fun bs!1156042 () Bool)

(assert (= bs!1156042 (and b!4795891 b!4795876)))

(assert (=> bs!1156042 (= lambda!231340 lambda!231336)))

(declare-fun bs!1156043 () Bool)

(assert (= bs!1156043 (and b!4795891 b!4795380)))

(assert (=> bs!1156043 (= lambda!231340 lambda!231240)))

(declare-fun bs!1156045 () Bool)

(assert (= bs!1156045 (and b!4795891 b!4795788)))

(assert (=> bs!1156045 (= lambda!231340 lambda!231309)))

(declare-fun bs!1156047 () Bool)

(assert (= bs!1156047 (and b!4795891 b!4795829)))

(assert (=> bs!1156047 (= lambda!231340 lambda!231325)))

(declare-fun bs!1156048 () Bool)

(assert (= bs!1156048 (and b!4795891 b!4795360)))

(assert (=> bs!1156048 (= lambda!231340 lambda!231236)))

(declare-fun d!1534832 () Bool)

(declare-fun e!2994663 () Bool)

(assert (=> d!1534832 e!2994663))

(declare-fun res!2038977 () Bool)

(assert (=> d!1534832 (=> (not res!2038977) (not e!2994663))))

(declare-fun lt!1953397 () List!54377)

(assert (=> d!1534832 (= res!2038977 (noDuplicate!923 lt!1953397))))

(assert (=> d!1534832 (= lt!1953397 (getKeysList!1084 (toList!6947 lt!1952727)))))

(assert (=> d!1534832 (= (keys!19817 lt!1952727) lt!1953397)))

(declare-fun b!4795889 () Bool)

(declare-fun res!2038979 () Bool)

(assert (=> b!4795889 (=> (not res!2038979) (not e!2994663))))

(assert (=> b!4795889 (= res!2038979 (= (length!702 lt!1953397) (length!703 (toList!6947 lt!1952727))))))

(declare-fun res!2038978 () Bool)

(assert (=> b!4795890 (=> (not res!2038978) (not e!2994663))))

(assert (=> b!4795890 (= res!2038978 (forall!12279 lt!1953397 lambda!231338))))

(assert (=> b!4795891 (= e!2994663 (= (content!9720 lt!1953397) (content!9720 (map!12251 (toList!6947 lt!1952727) lambda!231340))))))

(assert (= (and d!1534832 res!2038977) b!4795889))

(assert (= (and b!4795889 res!2038979) b!4795890))

(assert (= (and b!4795890 res!2038978) b!4795891))

(declare-fun m!5777928 () Bool)

(assert (=> d!1534832 m!5777928))

(assert (=> d!1534832 m!5776766))

(declare-fun m!5777930 () Bool)

(assert (=> b!4795889 m!5777930))

(assert (=> b!4795889 m!5777144))

(declare-fun m!5777932 () Bool)

(assert (=> b!4795890 m!5777932))

(declare-fun m!5777934 () Bool)

(assert (=> b!4795891 m!5777934))

(declare-fun m!5777936 () Bool)

(assert (=> b!4795891 m!5777936))

(assert (=> b!4795891 m!5777936))

(declare-fun m!5777938 () Bool)

(assert (=> b!4795891 m!5777938))

(assert (=> b!4795308 d!1534832))

(declare-fun d!1534834 () Bool)

(assert (=> d!1534834 (= (isDefined!10263 lt!1952988) (not (isEmpty!29463 lt!1952988)))))

(declare-fun bs!1156057 () Bool)

(assert (= bs!1156057 d!1534834))

(assert (=> bs!1156057 m!5776660))

(assert (=> b!4795253 d!1534834))

(declare-fun d!1534836 () Bool)

(assert (=> d!1534836 (= (invariantList!1738 (toList!6947 lt!1953007)) (noDuplicatedKeys!442 (toList!6947 lt!1953007)))))

(declare-fun bs!1156059 () Bool)

(assert (= bs!1156059 d!1534836))

(declare-fun m!5777940 () Bool)

(assert (=> bs!1156059 m!5777940))

(assert (=> d!1534420 d!1534836))

(declare-fun d!1534838 () Bool)

(declare-fun res!2038980 () Bool)

(declare-fun e!2994664 () Bool)

(assert (=> d!1534838 (=> res!2038980 e!2994664)))

(assert (=> d!1534838 (= res!2038980 ((_ is Nil!54251) (t!361825 (toList!6948 lm!2473))))))

(assert (=> d!1534838 (= (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231218) e!2994664)))

(declare-fun b!4795892 () Bool)

(declare-fun e!2994665 () Bool)

(assert (=> b!4795892 (= e!2994664 e!2994665)))

(declare-fun res!2038981 () Bool)

(assert (=> b!4795892 (=> (not res!2038981) (not e!2994665))))

(assert (=> b!4795892 (= res!2038981 (dynLambda!22075 lambda!231218 (h!60681 (t!361825 (toList!6948 lm!2473)))))))

(declare-fun b!4795893 () Bool)

(assert (=> b!4795893 (= e!2994665 (forall!12275 (t!361825 (t!361825 (toList!6948 lm!2473))) lambda!231218))))

(assert (= (and d!1534838 (not res!2038980)) b!4795892))

(assert (= (and b!4795892 res!2038981) b!4795893))

(declare-fun b_lambda!187075 () Bool)

(assert (=> (not b_lambda!187075) (not b!4795892)))

(declare-fun m!5777942 () Bool)

(assert (=> b!4795892 m!5777942))

(declare-fun m!5777944 () Bool)

(assert (=> b!4795893 m!5777944))

(assert (=> d!1534420 d!1534838))

(declare-fun d!1534840 () Bool)

(declare-fun res!2038982 () Bool)

(declare-fun e!2994666 () Bool)

(assert (=> d!1534840 (=> res!2038982 e!2994666)))

(assert (=> d!1534840 (= res!2038982 (not ((_ is Cons!54250) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> d!1534840 (= (noDuplicateKeys!2347 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) e!2994666)))

(declare-fun b!4795894 () Bool)

(declare-fun e!2994667 () Bool)

(assert (=> b!4795894 (= e!2994666 e!2994667)))

(declare-fun res!2038983 () Bool)

(assert (=> b!4795894 (=> (not res!2038983) (not e!2994667))))

(assert (=> b!4795894 (= res!2038983 (not (containsKey!3972 (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_1!31746 (h!60680 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))))

(declare-fun b!4795895 () Bool)

(assert (=> b!4795895 (= e!2994667 (noDuplicateKeys!2347 (t!361824 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (= (and d!1534840 (not res!2038982)) b!4795894))

(assert (= (and b!4795894 res!2038983) b!4795895))

(declare-fun m!5777946 () Bool)

(assert (=> b!4795894 m!5777946))

(declare-fun m!5777948 () Bool)

(assert (=> b!4795895 m!5777948))

(assert (=> b!4795283 d!1534840))

(assert (=> b!4795292 d!1534520))

(declare-fun d!1534842 () Bool)

(assert (=> d!1534842 (containsKey!3976 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896)))

(declare-fun lt!1953398 () Unit!140096)

(assert (=> d!1534842 (= lt!1953398 (choose!34580 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896))))

(assert (=> d!1534842 (invariantList!1738 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))))))

(assert (=> d!1534842 (= (lemmaInGetKeysListThenContainsKey!1084 (toList!6947 (extractMap!2461 (toList!6948 lt!1952728))) key!5896) lt!1953398)))

(declare-fun bs!1156062 () Bool)

(assert (= bs!1156062 d!1534842))

(assert (=> bs!1156062 m!5776748))

(declare-fun m!5777950 () Bool)

(assert (=> bs!1156062 m!5777950))

(assert (=> bs!1156062 m!5777608))

(assert (=> b!4795292 d!1534842))

(declare-fun bs!1156063 () Bool)

(declare-fun d!1534844 () Bool)

(assert (= bs!1156063 (and d!1534844 d!1534644)))

(declare-fun lambda!231343 () Int)

(assert (=> bs!1156063 (not (= lambda!231343 lambda!231288))))

(declare-fun bs!1156064 () Bool)

(assert (= bs!1156064 (and d!1534844 b!4795795)))

(assert (=> bs!1156064 (not (= lambda!231343 lambda!231313))))

(declare-fun bs!1156065 () Bool)

(assert (= bs!1156065 (and d!1534844 b!4795446)))

(assert (=> bs!1156065 (not (= lambda!231343 lambda!231245))))

(declare-fun bs!1156066 () Bool)

(assert (= bs!1156066 (and d!1534844 b!4795704)))

(assert (=> bs!1156066 (not (= lambda!231343 lambda!231296))))

(declare-fun bs!1156067 () Bool)

(assert (= bs!1156067 (and d!1534844 b!4795228)))

(assert (=> bs!1156067 (not (= lambda!231343 lambda!231209))))

(declare-fun bs!1156068 () Bool)

(assert (= bs!1156068 (and d!1534844 d!1534768)))

(assert (=> bs!1156068 (not (= lambda!231343 lambda!231316))))

(declare-fun bs!1156069 () Bool)

(assert (= bs!1156069 (and d!1534844 b!4795797)))

(assert (=> bs!1156069 (not (= lambda!231343 lambda!231314))))

(assert (=> bs!1156067 (not (= lambda!231343 lambda!231208))))

(declare-fun bs!1156070 () Bool)

(assert (= bs!1156070 (and d!1534844 b!4795444)))

(assert (=> bs!1156070 (not (= lambda!231343 lambda!231243))))

(declare-fun bs!1156071 () Bool)

(assert (= bs!1156071 (and d!1534844 d!1534382)))

(assert (=> bs!1156071 (not (= lambda!231343 lambda!231210))))

(assert (=> bs!1156065 (not (= lambda!231343 lambda!231244))))

(declare-fun bs!1156072 () Bool)

(assert (= bs!1156072 (and d!1534844 b!4794974)))

(assert (=> bs!1156072 (= lambda!231343 lambda!231123)))

(declare-fun bs!1156073 () Bool)

(assert (= bs!1156073 (and d!1534844 b!4795226)))

(assert (=> bs!1156073 (not (= lambda!231343 lambda!231207))))

(declare-fun bs!1156074 () Bool)

(assert (= bs!1156074 (and d!1534844 d!1534682)))

(assert (=> bs!1156074 (not (= lambda!231343 lambda!231298))))

(declare-fun bs!1156075 () Bool)

(assert (= bs!1156075 (and d!1534844 b!4795702)))

(assert (=> bs!1156075 (not (= lambda!231343 lambda!231293))))

(declare-fun bs!1156076 () Bool)

(assert (= bs!1156076 (and d!1534844 d!1534762)))

(assert (=> bs!1156076 (not (= lambda!231343 lambda!231312))))

(declare-fun bs!1156077 () Bool)

(assert (= bs!1156077 (and d!1534844 d!1534512)))

(assert (=> bs!1156077 (not (= lambda!231343 lambda!231246))))

(assert (=> bs!1156069 (not (= lambda!231343 lambda!231315))))

(assert (=> bs!1156066 (not (= lambda!231343 lambda!231294))))

(assert (=> d!1534844 true))

(assert (=> d!1534844 true))

(assert (=> d!1534844 (= (allKeysSameHash!1964 (_2!31747 (h!60681 (toList!6948 lm!2473))) (_1!31747 (h!60681 (toList!6948 lm!2473))) hashF!1559) (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231343))))

(declare-fun bs!1156078 () Bool)

(assert (= bs!1156078 d!1534844))

(declare-fun m!5777984 () Bool)

(assert (=> bs!1156078 m!5777984))

(assert (=> bs!1155453 d!1534844))

(declare-fun d!1534848 () Bool)

(assert (=> d!1534848 (= (tail!9287 (toList!6948 lm!2473)) (t!361825 (toList!6948 lm!2473)))))

(assert (=> d!1534418 d!1534848))

(declare-fun d!1534850 () Bool)

(declare-fun res!2038984 () Bool)

(declare-fun e!2994668 () Bool)

(assert (=> d!1534850 (=> res!2038984 e!2994668)))

(assert (=> d!1534850 (= res!2038984 (and ((_ is Cons!54250) (apply!13004 lm!2473 lt!1952729)) (= (_1!31746 (h!60680 (apply!13004 lm!2473 lt!1952729))) key!5896)))))

(assert (=> d!1534850 (= (containsKey!3972 (apply!13004 lm!2473 lt!1952729) key!5896) e!2994668)))

(declare-fun b!4795898 () Bool)

(declare-fun e!2994669 () Bool)

(assert (=> b!4795898 (= e!2994668 e!2994669)))

(declare-fun res!2038985 () Bool)

(assert (=> b!4795898 (=> (not res!2038985) (not e!2994669))))

(assert (=> b!4795898 (= res!2038985 ((_ is Cons!54250) (apply!13004 lm!2473 lt!1952729)))))

(declare-fun b!4795899 () Bool)

(assert (=> b!4795899 (= e!2994669 (containsKey!3972 (t!361824 (apply!13004 lm!2473 lt!1952729)) key!5896))))

(assert (= (and d!1534850 (not res!2038984)) b!4795898))

(assert (= (and b!4795898 res!2038985) b!4795899))

(assert (=> b!4795899 m!5777198))

(assert (=> b!4795251 d!1534850))

(declare-fun d!1534852 () Bool)

(assert (=> d!1534852 (= (get!18503 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729)) (v!48424 (getValueByKey!2367 (toList!6948 lm!2473) lt!1952729)))))

(assert (=> d!1534402 d!1534852))

(assert (=> d!1534402 d!1534706))

(declare-fun d!1534854 () Bool)

(assert (=> d!1534854 (= (invariantList!1738 (toList!6947 lt!1952999)) (noDuplicatedKeys!442 (toList!6947 lt!1952999)))))

(declare-fun bs!1156079 () Bool)

(assert (= bs!1156079 d!1534854))

(declare-fun m!5777986 () Bool)

(assert (=> bs!1156079 m!5777986))

(assert (=> d!1534406 d!1534854))

(declare-fun d!1534856 () Bool)

(declare-fun res!2038986 () Bool)

(declare-fun e!2994670 () Bool)

(assert (=> d!1534856 (=> res!2038986 e!2994670)))

(assert (=> d!1534856 (= res!2038986 ((_ is Nil!54251) (toList!6948 lm!2473)))))

(assert (=> d!1534856 (= (forall!12275 (toList!6948 lm!2473) lambda!231213) e!2994670)))

(declare-fun b!4795900 () Bool)

(declare-fun e!2994671 () Bool)

(assert (=> b!4795900 (= e!2994670 e!2994671)))

(declare-fun res!2038987 () Bool)

(assert (=> b!4795900 (=> (not res!2038987) (not e!2994671))))

(assert (=> b!4795900 (= res!2038987 (dynLambda!22075 lambda!231213 (h!60681 (toList!6948 lm!2473))))))

(declare-fun b!4795901 () Bool)

(assert (=> b!4795901 (= e!2994671 (forall!12275 (t!361825 (toList!6948 lm!2473)) lambda!231213))))

(assert (= (and d!1534856 (not res!2038986)) b!4795900))

(assert (= (and b!4795900 res!2038987) b!4795901))

(declare-fun b_lambda!187077 () Bool)

(assert (=> (not b_lambda!187077) (not b!4795900)))

(declare-fun m!5777988 () Bool)

(assert (=> b!4795900 m!5777988))

(declare-fun m!5777990 () Bool)

(assert (=> b!4795901 m!5777990))

(assert (=> d!1534406 d!1534856))

(assert (=> b!4795307 d!1534832))

(assert (=> b!4795109 d!1534430))

(declare-fun bs!1156080 () Bool)

(declare-fun b!4795904 () Bool)

(assert (= bs!1156080 (and b!4795904 d!1534644)))

(declare-fun lambda!231344 () Int)

(assert (=> bs!1156080 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952967) (= lambda!231344 lambda!231288))))

(declare-fun bs!1156081 () Bool)

(assert (= bs!1156081 (and b!4795904 b!4795795)))

(assert (=> bs!1156081 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231344 lambda!231313))))

(declare-fun bs!1156082 () Bool)

(assert (= bs!1156082 (and b!4795904 b!4795446)))

(assert (=> bs!1156082 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953061) (= lambda!231344 lambda!231245))))

(declare-fun bs!1156083 () Bool)

(assert (= bs!1156083 (and b!4795904 b!4795704)))

(assert (=> bs!1156083 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953221) (= lambda!231344 lambda!231296))))

(declare-fun bs!1156084 () Bool)

(assert (= bs!1156084 (and b!4795904 b!4795228)))

(assert (=> bs!1156084 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952967) (= lambda!231344 lambda!231209))))

(declare-fun bs!1156085 () Bool)

(assert (= bs!1156085 (and b!4795904 d!1534768)))

(assert (=> bs!1156085 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953301) (= lambda!231344 lambda!231316))))

(declare-fun bs!1156086 () Bool)

(assert (= bs!1156086 (and b!4795904 b!4795797)))

(assert (=> bs!1156086 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231344 lambda!231314))))

(assert (=> bs!1156084 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952727) (= lambda!231344 lambda!231208))))

(declare-fun bs!1156087 () Bool)

(assert (= bs!1156087 (and b!4795904 d!1534844)))

(assert (=> bs!1156087 (not (= lambda!231344 lambda!231343))))

(declare-fun bs!1156088 () Bool)

(assert (= bs!1156088 (and b!4795904 b!4795444)))

(assert (=> bs!1156088 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231344 lambda!231243))))

(declare-fun bs!1156089 () Bool)

(assert (= bs!1156089 (and b!4795904 d!1534382)))

(assert (=> bs!1156089 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952974) (= lambda!231344 lambda!231210))))

(assert (=> bs!1156082 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231344 lambda!231244))))

(declare-fun bs!1156090 () Bool)

(assert (= bs!1156090 (and b!4795904 b!4794974)))

(assert (=> bs!1156090 (not (= lambda!231344 lambda!231123))))

(declare-fun bs!1156091 () Bool)

(assert (= bs!1156091 (and b!4795904 b!4795226)))

(assert (=> bs!1156091 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952727) (= lambda!231344 lambda!231207))))

(declare-fun bs!1156092 () Bool)

(assert (= bs!1156092 (and b!4795904 d!1534682)))

(assert (=> bs!1156092 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953228) (= lambda!231344 lambda!231298))))

(declare-fun bs!1156093 () Bool)

(assert (= bs!1156093 (and b!4795904 b!4795702)))

(assert (=> bs!1156093 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231344 lambda!231293))))

(declare-fun bs!1156094 () Bool)

(assert (= bs!1156094 (and b!4795904 d!1534762)))

(assert (=> bs!1156094 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952727) (= lambda!231344 lambda!231312))))

(declare-fun bs!1156095 () Bool)

(assert (= bs!1156095 (and b!4795904 d!1534512)))

(assert (=> bs!1156095 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953068) (= lambda!231344 lambda!231246))))

(assert (=> bs!1156086 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953294) (= lambda!231344 lambda!231315))))

(assert (=> bs!1156083 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231344 lambda!231294))))

(assert (=> b!4795904 true))

(declare-fun bs!1156096 () Bool)

(declare-fun b!4795906 () Bool)

(assert (= bs!1156096 (and b!4795906 d!1534644)))

(declare-fun lambda!231345 () Int)

(assert (=> bs!1156096 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952967) (= lambda!231345 lambda!231288))))

(declare-fun bs!1156097 () Bool)

(assert (= bs!1156097 (and b!4795906 b!4795795)))

(assert (=> bs!1156097 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231345 lambda!231313))))

(declare-fun bs!1156098 () Bool)

(assert (= bs!1156098 (and b!4795906 b!4795446)))

(assert (=> bs!1156098 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953061) (= lambda!231345 lambda!231245))))

(declare-fun bs!1156099 () Bool)

(assert (= bs!1156099 (and b!4795906 b!4795704)))

(assert (=> bs!1156099 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953221) (= lambda!231345 lambda!231296))))

(declare-fun bs!1156100 () Bool)

(assert (= bs!1156100 (and b!4795906 b!4795228)))

(assert (=> bs!1156100 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952967) (= lambda!231345 lambda!231209))))

(declare-fun bs!1156101 () Bool)

(assert (= bs!1156101 (and b!4795906 d!1534768)))

(assert (=> bs!1156101 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953301) (= lambda!231345 lambda!231316))))

(declare-fun bs!1156102 () Bool)

(assert (= bs!1156102 (and b!4795906 b!4795797)))

(assert (=> bs!1156102 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231345 lambda!231314))))

(assert (=> bs!1156100 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952727) (= lambda!231345 lambda!231208))))

(declare-fun bs!1156103 () Bool)

(assert (= bs!1156103 (and b!4795906 d!1534844)))

(assert (=> bs!1156103 (not (= lambda!231345 lambda!231343))))

(declare-fun bs!1156104 () Bool)

(assert (= bs!1156104 (and b!4795906 b!4795444)))

(assert (=> bs!1156104 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231345 lambda!231243))))

(declare-fun bs!1156105 () Bool)

(assert (= bs!1156105 (and b!4795906 d!1534382)))

(assert (=> bs!1156105 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952974) (= lambda!231345 lambda!231210))))

(assert (=> bs!1156098 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231345 lambda!231244))))

(declare-fun bs!1156106 () Bool)

(assert (= bs!1156106 (and b!4795906 b!4794974)))

(assert (=> bs!1156106 (not (= lambda!231345 lambda!231123))))

(declare-fun bs!1156107 () Bool)

(assert (= bs!1156107 (and b!4795906 b!4795226)))

(assert (=> bs!1156107 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952727) (= lambda!231345 lambda!231207))))

(declare-fun bs!1156108 () Bool)

(assert (= bs!1156108 (and b!4795906 d!1534682)))

(assert (=> bs!1156108 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953228) (= lambda!231345 lambda!231298))))

(declare-fun bs!1156109 () Bool)

(assert (= bs!1156109 (and b!4795906 b!4795702)))

(assert (=> bs!1156109 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231345 lambda!231293))))

(declare-fun bs!1156110 () Bool)

(assert (= bs!1156110 (and b!4795906 d!1534762)))

(assert (=> bs!1156110 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1952727) (= lambda!231345 lambda!231312))))

(declare-fun bs!1156111 () Bool)

(assert (= bs!1156111 (and b!4795906 b!4795904)))

(assert (=> bs!1156111 (= lambda!231345 lambda!231344)))

(declare-fun bs!1156112 () Bool)

(assert (= bs!1156112 (and b!4795906 d!1534512)))

(assert (=> bs!1156112 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953068) (= lambda!231345 lambda!231246))))

(assert (=> bs!1156102 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953294) (= lambda!231345 lambda!231315))))

(assert (=> bs!1156099 (= (= (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231345 lambda!231294))))

(assert (=> b!4795906 true))

(declare-fun lambda!231346 () Int)

(declare-fun lt!1953401 () ListMap!6419)

(assert (=> bs!1156096 (= (= lt!1953401 lt!1952967) (= lambda!231346 lambda!231288))))

(assert (=> bs!1156098 (= (= lt!1953401 lt!1953061) (= lambda!231346 lambda!231245))))

(assert (=> bs!1156099 (= (= lt!1953401 lt!1953221) (= lambda!231346 lambda!231296))))

(assert (=> bs!1156100 (= (= lt!1953401 lt!1952967) (= lambda!231346 lambda!231209))))

(assert (=> bs!1156101 (= (= lt!1953401 lt!1953301) (= lambda!231346 lambda!231316))))

(assert (=> bs!1156102 (= (= lt!1953401 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231346 lambda!231314))))

(assert (=> bs!1156100 (= (= lt!1953401 lt!1952727) (= lambda!231346 lambda!231208))))

(assert (=> bs!1156103 (not (= lambda!231346 lambda!231343))))

(assert (=> bs!1156104 (= (= lt!1953401 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231346 lambda!231243))))

(assert (=> bs!1156105 (= (= lt!1953401 lt!1952974) (= lambda!231346 lambda!231210))))

(assert (=> bs!1156098 (= (= lt!1953401 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231346 lambda!231244))))

(assert (=> bs!1156106 (not (= lambda!231346 lambda!231123))))

(assert (=> bs!1156107 (= (= lt!1953401 lt!1952727) (= lambda!231346 lambda!231207))))

(assert (=> bs!1156108 (= (= lt!1953401 lt!1953228) (= lambda!231346 lambda!231298))))

(assert (=> bs!1156109 (= (= lt!1953401 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231346 lambda!231293))))

(assert (=> b!4795906 (= (= lt!1953401 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) (= lambda!231346 lambda!231345))))

(assert (=> bs!1156097 (= (= lt!1953401 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231346 lambda!231313))))

(assert (=> bs!1156110 (= (= lt!1953401 lt!1952727) (= lambda!231346 lambda!231312))))

(assert (=> bs!1156111 (= (= lt!1953401 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) (= lambda!231346 lambda!231344))))

(assert (=> bs!1156112 (= (= lt!1953401 lt!1953068) (= lambda!231346 lambda!231246))))

(assert (=> bs!1156102 (= (= lt!1953401 lt!1953294) (= lambda!231346 lambda!231315))))

(assert (=> bs!1156099 (= (= lt!1953401 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231346 lambda!231294))))

(assert (=> b!4795906 true))

(declare-fun bs!1156113 () Bool)

(declare-fun d!1534858 () Bool)

(assert (= bs!1156113 (and d!1534858 d!1534644)))

(declare-fun lt!1953408 () ListMap!6419)

(declare-fun lambda!231347 () Int)

(assert (=> bs!1156113 (= (= lt!1953408 lt!1952967) (= lambda!231347 lambda!231288))))

(declare-fun bs!1156114 () Bool)

(assert (= bs!1156114 (and d!1534858 b!4795446)))

(assert (=> bs!1156114 (= (= lt!1953408 lt!1953061) (= lambda!231347 lambda!231245))))

(declare-fun bs!1156115 () Bool)

(assert (= bs!1156115 (and d!1534858 b!4795704)))

(assert (=> bs!1156115 (= (= lt!1953408 lt!1953221) (= lambda!231347 lambda!231296))))

(declare-fun bs!1156116 () Bool)

(assert (= bs!1156116 (and d!1534858 b!4795228)))

(assert (=> bs!1156116 (= (= lt!1953408 lt!1952967) (= lambda!231347 lambda!231209))))

(declare-fun bs!1156117 () Bool)

(assert (= bs!1156117 (and d!1534858 d!1534768)))

(assert (=> bs!1156117 (= (= lt!1953408 lt!1953301) (= lambda!231347 lambda!231316))))

(declare-fun bs!1156118 () Bool)

(assert (= bs!1156118 (and d!1534858 b!4795797)))

(assert (=> bs!1156118 (= (= lt!1953408 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231347 lambda!231314))))

(assert (=> bs!1156116 (= (= lt!1953408 lt!1952727) (= lambda!231347 lambda!231208))))

(declare-fun bs!1156119 () Bool)

(assert (= bs!1156119 (and d!1534858 d!1534844)))

(assert (=> bs!1156119 (not (= lambda!231347 lambda!231343))))

(declare-fun bs!1156120 () Bool)

(assert (= bs!1156120 (and d!1534858 b!4795444)))

(assert (=> bs!1156120 (= (= lt!1953408 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231347 lambda!231243))))

(declare-fun bs!1156121 () Bool)

(assert (= bs!1156121 (and d!1534858 d!1534382)))

(assert (=> bs!1156121 (= (= lt!1953408 lt!1952974) (= lambda!231347 lambda!231210))))

(assert (=> bs!1156114 (= (= lt!1953408 (extractMap!2461 (t!361825 (t!361825 (toList!6948 lm!2473))))) (= lambda!231347 lambda!231244))))

(declare-fun bs!1156123 () Bool)

(assert (= bs!1156123 (and d!1534858 b!4794974)))

(assert (=> bs!1156123 (not (= lambda!231347 lambda!231123))))

(declare-fun bs!1156124 () Bool)

(assert (= bs!1156124 (and d!1534858 b!4795226)))

(assert (=> bs!1156124 (= (= lt!1953408 lt!1952727) (= lambda!231347 lambda!231207))))

(declare-fun bs!1156125 () Bool)

(assert (= bs!1156125 (and d!1534858 d!1534682)))

(assert (=> bs!1156125 (= (= lt!1953408 lt!1953228) (= lambda!231347 lambda!231298))))

(declare-fun bs!1156126 () Bool)

(assert (= bs!1156126 (and d!1534858 b!4795906)))

(assert (=> bs!1156126 (= (= lt!1953408 lt!1953401) (= lambda!231347 lambda!231346))))

(declare-fun bs!1156127 () Bool)

(assert (= bs!1156127 (and d!1534858 b!4795702)))

(assert (=> bs!1156127 (= (= lt!1953408 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231347 lambda!231293))))

(assert (=> bs!1156126 (= (= lt!1953408 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) (= lambda!231347 lambda!231345))))

(declare-fun bs!1156128 () Bool)

(assert (= bs!1156128 (and d!1534858 b!4795795)))

(assert (=> bs!1156128 (= (= lt!1953408 (extractMap!2461 (t!361825 (toList!6948 lt!1952728)))) (= lambda!231347 lambda!231313))))

(declare-fun bs!1156129 () Bool)

(assert (= bs!1156129 (and d!1534858 d!1534762)))

(assert (=> bs!1156129 (= (= lt!1953408 lt!1952727) (= lambda!231347 lambda!231312))))

(declare-fun bs!1156131 () Bool)

(assert (= bs!1156131 (and d!1534858 b!4795904)))

(assert (=> bs!1156131 (= (= lt!1953408 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) (= lambda!231347 lambda!231344))))

(declare-fun bs!1156132 () Bool)

(assert (= bs!1156132 (and d!1534858 d!1534512)))

(assert (=> bs!1156132 (= (= lt!1953408 lt!1953068) (= lambda!231347 lambda!231246))))

(assert (=> bs!1156118 (= (= lt!1953408 lt!1953294) (= lambda!231347 lambda!231315))))

(assert (=> bs!1156115 (= (= lt!1953408 (+!2491 lt!1952727 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (= lambda!231347 lambda!231294))))

(assert (=> d!1534858 true))

(declare-fun bm!335174 () Bool)

(declare-fun call!335180 () Unit!140096)

(assert (=> bm!335174 (= call!335180 (lemmaContainsAllItsOwnKeys!946 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))))))

(declare-fun e!2994672 () Bool)

(assert (=> d!1534858 e!2994672))

(declare-fun res!2038989 () Bool)

(assert (=> d!1534858 (=> (not res!2038989) (not e!2994672))))

(assert (=> d!1534858 (= res!2038989 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231347))))

(declare-fun e!2994673 () ListMap!6419)

(assert (=> d!1534858 (= lt!1953408 e!2994673)))

(declare-fun c!817408 () Bool)

(assert (=> d!1534858 (= c!817408 ((_ is Nil!54250) (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> d!1534858 (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473))))))

(assert (=> d!1534858 (= (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) lt!1953408)))

(declare-fun b!4795902 () Bool)

(declare-fun res!2038988 () Bool)

(assert (=> b!4795902 (=> (not res!2038988) (not e!2994672))))

(assert (=> b!4795902 (= res!2038988 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) lambda!231347))))

(declare-fun b!4795903 () Bool)

(declare-fun e!2994674 () Bool)

(assert (=> b!4795903 (= e!2994674 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) lambda!231346))))

(assert (=> b!4795904 (= e!2994673 (extractMap!2461 (t!361825 (toList!6948 lm!2473))))))

(declare-fun lt!1953407 () Unit!140096)

(assert (=> b!4795904 (= lt!1953407 call!335180)))

(declare-fun call!335179 () Bool)

(assert (=> b!4795904 call!335179))

(declare-fun lt!1953416 () Unit!140096)

(assert (=> b!4795904 (= lt!1953416 lt!1953407)))

(declare-fun call!335181 () Bool)

(assert (=> b!4795904 call!335181))

(declare-fun lt!1953405 () Unit!140096)

(declare-fun Unit!140252 () Unit!140096)

(assert (=> b!4795904 (= lt!1953405 Unit!140252)))

(declare-fun b!4795905 () Bool)

(assert (=> b!4795905 (= e!2994672 (invariantList!1738 (toList!6947 lt!1953408)))))

(assert (=> b!4795906 (= e!2994673 lt!1953401)))

(declare-fun lt!1953419 () ListMap!6419)

(assert (=> b!4795906 (= lt!1953419 (+!2491 (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4795906 (= lt!1953401 (addToMapMapFromBucket!1715 (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473)))) (+!2491 (extractMap!2461 (t!361825 (toList!6948 lm!2473))) (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun lt!1953403 () Unit!140096)

(assert (=> b!4795906 (= lt!1953403 call!335180)))

(assert (=> b!4795906 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) lambda!231345)))

(declare-fun lt!1953402 () Unit!140096)

(assert (=> b!4795906 (= lt!1953402 lt!1953403)))

(assert (=> b!4795906 (forall!12277 (toList!6947 lt!1953419) lambda!231346)))

(declare-fun lt!1953404 () Unit!140096)

(declare-fun Unit!140253 () Unit!140096)

(assert (=> b!4795906 (= lt!1953404 Unit!140253)))

(assert (=> b!4795906 call!335179))

(declare-fun lt!1953399 () Unit!140096)

(declare-fun Unit!140254 () Unit!140096)

(assert (=> b!4795906 (= lt!1953399 Unit!140254)))

(declare-fun lt!1953409 () Unit!140096)

(declare-fun Unit!140255 () Unit!140096)

(assert (=> b!4795906 (= lt!1953409 Unit!140255)))

(declare-fun lt!1953417 () Unit!140096)

(assert (=> b!4795906 (= lt!1953417 (forallContained!4182 (toList!6947 lt!1953419) lambda!231346 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(assert (=> b!4795906 (contains!17882 lt!1953419 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun lt!1953411 () Unit!140096)

(declare-fun Unit!140256 () Unit!140096)

(assert (=> b!4795906 (= lt!1953411 Unit!140256)))

(assert (=> b!4795906 (contains!17882 lt!1953401 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))))))

(declare-fun lt!1953415 () Unit!140096)

(declare-fun Unit!140257 () Unit!140096)

(assert (=> b!4795906 (= lt!1953415 Unit!140257)))

(assert (=> b!4795906 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231346)))

(declare-fun lt!1953414 () Unit!140096)

(declare-fun Unit!140258 () Unit!140096)

(assert (=> b!4795906 (= lt!1953414 Unit!140258)))

(assert (=> b!4795906 call!335181))

(declare-fun lt!1953418 () Unit!140096)

(declare-fun Unit!140259 () Unit!140096)

(assert (=> b!4795906 (= lt!1953418 Unit!140259)))

(declare-fun lt!1953412 () Unit!140096)

(declare-fun Unit!140260 () Unit!140096)

(assert (=> b!4795906 (= lt!1953412 Unit!140260)))

(declare-fun lt!1953413 () Unit!140096)

(assert (=> b!4795906 (= lt!1953413 (addForallContainsKeyThenBeforeAdding!945 (extractMap!2461 (t!361825 (toList!6948 lm!2473))) lt!1953401 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (_2!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> b!4795906 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) lambda!231346)))

(declare-fun lt!1953406 () Unit!140096)

(assert (=> b!4795906 (= lt!1953406 lt!1953413)))

(assert (=> b!4795906 (forall!12277 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) lambda!231346)))

(declare-fun lt!1953410 () Unit!140096)

(declare-fun Unit!140261 () Unit!140096)

(assert (=> b!4795906 (= lt!1953410 Unit!140261)))

(declare-fun res!2038990 () Bool)

(assert (=> b!4795906 (= res!2038990 (forall!12277 (_2!31747 (h!60681 (toList!6948 lm!2473))) lambda!231346))))

(assert (=> b!4795906 (=> (not res!2038990) (not e!2994674))))

(assert (=> b!4795906 e!2994674))

(declare-fun lt!1953400 () Unit!140096)

(declare-fun Unit!140262 () Unit!140096)

(assert (=> b!4795906 (= lt!1953400 Unit!140262)))

(declare-fun bm!335175 () Bool)

(assert (=> bm!335175 (= call!335181 (forall!12277 (ite c!817408 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) (toList!6947 lt!1953419)) (ite c!817408 lambda!231344 lambda!231346)))))

(declare-fun bm!335176 () Bool)

(assert (=> bm!335176 (= call!335179 (forall!12277 (ite c!817408 (toList!6947 (extractMap!2461 (t!361825 (toList!6948 lm!2473)))) (t!361824 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (ite c!817408 lambda!231344 lambda!231346)))))

(assert (= (and d!1534858 c!817408) b!4795904))

(assert (= (and d!1534858 (not c!817408)) b!4795906))

(assert (= (and b!4795906 res!2038990) b!4795903))

(assert (= (or b!4795904 b!4795906) bm!335175))

(assert (= (or b!4795904 b!4795906) bm!335176))

(assert (= (or b!4795904 b!4795906) bm!335174))

(assert (= (and d!1534858 res!2038989) b!4795902))

(assert (= (and b!4795902 res!2038988) b!4795905))

(declare-fun m!5778036 () Bool)

(assert (=> b!4795906 m!5778036))

(declare-fun m!5778038 () Bool)

(assert (=> b!4795906 m!5778038))

(declare-fun m!5778040 () Bool)

(assert (=> b!4795906 m!5778040))

(declare-fun m!5778042 () Bool)

(assert (=> b!4795906 m!5778042))

(assert (=> b!4795906 m!5776282))

(assert (=> b!4795906 m!5778036))

(declare-fun m!5778044 () Bool)

(assert (=> b!4795906 m!5778044))

(declare-fun m!5778046 () Bool)

(assert (=> b!4795906 m!5778046))

(assert (=> b!4795906 m!5778042))

(declare-fun m!5778048 () Bool)

(assert (=> b!4795906 m!5778048))

(declare-fun m!5778050 () Bool)

(assert (=> b!4795906 m!5778050))

(declare-fun m!5778052 () Bool)

(assert (=> b!4795906 m!5778052))

(assert (=> b!4795906 m!5778050))

(assert (=> b!4795906 m!5776282))

(declare-fun m!5778054 () Bool)

(assert (=> b!4795906 m!5778054))

(declare-fun m!5778056 () Bool)

(assert (=> b!4795905 m!5778056))

(declare-fun m!5778058 () Bool)

(assert (=> b!4795902 m!5778058))

(assert (=> bm!335174 m!5776282))

(declare-fun m!5778060 () Bool)

(assert (=> bm!335174 m!5778060))

(assert (=> b!4795903 m!5778050))

(declare-fun m!5778062 () Bool)

(assert (=> d!1534858 m!5778062))

(assert (=> d!1534858 m!5776284))

(declare-fun m!5778064 () Bool)

(assert (=> bm!335175 m!5778064))

(declare-fun m!5778066 () Bool)

(assert (=> bm!335176 m!5778066))

(assert (=> b!4795268 d!1534858))

(assert (=> b!4795268 d!1534420))

(declare-fun d!1534872 () Bool)

(assert (=> d!1534872 (isDefined!10267 (getValueByKey!2366 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(declare-fun lt!1953447 () Unit!140096)

(assert (=> d!1534872 (= lt!1953447 (choose!34585 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(assert (=> d!1534872 (invariantList!1738 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))

(assert (=> d!1534872 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2158 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896) lt!1953447)))

(declare-fun bs!1156156 () Bool)

(assert (= bs!1156156 d!1534872))

(assert (=> bs!1156156 m!5776546))

(assert (=> bs!1156156 m!5776546))

(assert (=> bs!1156156 m!5776548))

(declare-fun m!5778068 () Bool)

(assert (=> bs!1156156 m!5778068))

(assert (=> bs!1156156 m!5776952))

(assert (=> b!4795161 d!1534872))

(assert (=> b!4795161 d!1534720))

(assert (=> b!4795161 d!1534722))

(declare-fun d!1534874 () Bool)

(assert (=> d!1534874 (contains!17887 (getKeysList!1084 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727))) key!5896)))

(declare-fun lt!1953448 () Unit!140096)

(assert (=> d!1534874 (= lt!1953448 (choose!34586 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896))))

(assert (=> d!1534874 (invariantList!1738 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)))))

(assert (=> d!1534874 (= (lemmaInListThenGetKeysListContains!1079 (toList!6947 (addToMapMapFromBucket!1715 (_2!31747 (h!60681 (toList!6948 lm!2473))) lt!1952727)) key!5896) lt!1953448)))

(declare-fun bs!1156161 () Bool)

(assert (= bs!1156161 d!1534874))

(assert (=> bs!1156161 m!5776542))

(assert (=> bs!1156161 m!5776542))

(declare-fun m!5778070 () Bool)

(assert (=> bs!1156161 m!5778070))

(declare-fun m!5778072 () Bool)

(assert (=> bs!1156161 m!5778072))

(assert (=> bs!1156161 m!5776952))

(assert (=> b!4795161 d!1534874))

(declare-fun d!1534876 () Bool)

(declare-fun res!2039007 () Bool)

(declare-fun e!2994692 () Bool)

(assert (=> d!1534876 (=> res!2039007 e!2994692)))

(assert (=> d!1534876 (= res!2039007 ((_ is Nil!54250) (ite c!817277 (toList!6947 lt!1952727) (toList!6947 lt!1952985))))))

(assert (=> d!1534876 (= (forall!12277 (ite c!817277 (toList!6947 lt!1952727) (toList!6947 lt!1952985)) (ite c!817277 lambda!231207 lambda!231209)) e!2994692)))

(declare-fun b!4795935 () Bool)

(declare-fun e!2994693 () Bool)

(assert (=> b!4795935 (= e!2994692 e!2994693)))

(declare-fun res!2039008 () Bool)

(assert (=> b!4795935 (=> (not res!2039008) (not e!2994693))))

(assert (=> b!4795935 (= res!2039008 (dynLambda!22076 (ite c!817277 lambda!231207 lambda!231209) (h!60680 (ite c!817277 (toList!6947 lt!1952727) (toList!6947 lt!1952985)))))))

(declare-fun b!4795936 () Bool)

(assert (=> b!4795936 (= e!2994693 (forall!12277 (t!361824 (ite c!817277 (toList!6947 lt!1952727) (toList!6947 lt!1952985))) (ite c!817277 lambda!231207 lambda!231209)))))

(assert (= (and d!1534876 (not res!2039007)) b!4795935))

(assert (= (and b!4795935 res!2039008) b!4795936))

(declare-fun b_lambda!187083 () Bool)

(assert (=> (not b_lambda!187083) (not b!4795935)))

(declare-fun m!5778074 () Bool)

(assert (=> b!4795935 m!5778074))

(declare-fun m!5778076 () Bool)

(assert (=> b!4795936 m!5778076))

(assert (=> bm!335145 d!1534876))

(assert (=> b!4795305 d!1534830))

(assert (=> b!4795305 d!1534832))

(declare-fun tp!1358149 () Bool)

(declare-fun e!2994696 () Bool)

(declare-fun b!4795941 () Bool)

(assert (=> b!4795941 (= e!2994696 (and tp_is_empty!33597 tp_is_empty!33599 tp!1358149))))

(assert (=> b!4795320 (= tp!1358145 e!2994696)))

(assert (= (and b!4795320 ((_ is Cons!54250) (_2!31747 (h!60681 (toList!6948 lm!2473))))) b!4795941))

(declare-fun b!4795942 () Bool)

(declare-fun e!2994697 () Bool)

(declare-fun tp!1358150 () Bool)

(declare-fun tp!1358151 () Bool)

(assert (=> b!4795942 (= e!2994697 (and tp!1358150 tp!1358151))))

(assert (=> b!4795320 (= tp!1358146 e!2994697)))

(assert (= (and b!4795320 ((_ is Cons!54251) (t!361825 (toList!6948 lm!2473)))) b!4795942))

(declare-fun b_lambda!187085 () Bool)

(assert (= b_lambda!187023 (or b!4795228 b_lambda!187085)))

(declare-fun bs!1156184 () Bool)

(declare-fun d!1534878 () Bool)

(assert (= bs!1156184 (and d!1534878 b!4795228)))

(assert (=> bs!1156184 (= (dynLambda!22076 lambda!231209 (h!60680 (toList!6947 lt!1952727))) (contains!17882 lt!1952967 (_1!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun m!5778086 () Bool)

(assert (=> bs!1156184 m!5778086))

(assert (=> b!4795605 d!1534878))

(declare-fun b_lambda!187087 () Bool)

(assert (= b_lambda!187003 (or d!1534382 b_lambda!187087)))

(declare-fun bs!1156185 () Bool)

(declare-fun d!1534880 () Bool)

(assert (= bs!1156185 (and d!1534880 d!1534382)))

(assert (=> bs!1156185 (= (dynLambda!22076 lambda!231210 (h!60680 (toList!6947 lt!1952727))) (contains!17882 lt!1952974 (_1!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun m!5778094 () Bool)

(assert (=> bs!1156185 m!5778094))

(assert (=> b!4795407 d!1534880))

(declare-fun b_lambda!187089 () Bool)

(assert (= b_lambda!187007 (or d!1534424 b_lambda!187089)))

(declare-fun bs!1156186 () Bool)

(declare-fun d!1534882 () Bool)

(assert (= bs!1156186 (and d!1534882 d!1534424)))

(assert (=> bs!1156186 (= (dynLambda!22075 lambda!231221 (h!60681 (toList!6948 lt!1952728))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lt!1952728)))))))

(assert (=> bs!1156186 m!5777740))

(assert (=> b!4795426 d!1534882))

(declare-fun b_lambda!187091 () Bool)

(assert (= b_lambda!187035 (or b!4795228 b_lambda!187091)))

(declare-fun bs!1156187 () Bool)

(declare-fun d!1534884 () Bool)

(assert (= bs!1156187 (and d!1534884 b!4795228)))

(assert (=> bs!1156187 (= (dynLambda!22076 lambda!231208 (h!60680 (toList!6947 lt!1952727))) (contains!17882 lt!1952727 (_1!31746 (h!60680 (toList!6947 lt!1952727)))))))

(declare-fun m!5778104 () Bool)

(assert (=> bs!1156187 m!5778104))

(assert (=> b!4795688 d!1534884))

(declare-fun b_lambda!187093 () Bool)

(assert (= b_lambda!187037 (or b!4795228 b_lambda!187093)))

(declare-fun bs!1156188 () Bool)

(declare-fun d!1534886 () Bool)

(assert (= bs!1156188 (and d!1534886 b!4795228)))

(assert (=> bs!1156188 (= (dynLambda!22076 lambda!231209 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (contains!17882 lt!1952967 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(assert (=> bs!1156188 m!5776634))

(assert (=> d!1534680 d!1534886))

(declare-fun b_lambda!187095 () Bool)

(assert (= b_lambda!187073 (or start!494162 b_lambda!187095)))

(declare-fun bs!1156189 () Bool)

(declare-fun d!1534890 () Bool)

(assert (= bs!1156189 (and d!1534890 start!494162)))

(assert (=> bs!1156189 (= (dynLambda!22075 lambda!231121 (h!60681 (t!361825 (toList!6948 lm!2473)))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))))))

(assert (=> bs!1156189 m!5776996))

(assert (=> b!4795885 d!1534890))

(declare-fun b_lambda!187097 () Bool)

(assert (= b_lambda!187065 (or d!1534348 b_lambda!187097)))

(declare-fun bs!1156190 () Bool)

(declare-fun d!1534892 () Bool)

(assert (= bs!1156190 (and d!1534892 d!1534348)))

(assert (=> bs!1156190 (= (dynLambda!22075 lambda!231138 (h!60681 (toList!6948 lm!2473))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> bs!1156190 m!5776284))

(assert (=> b!4795859 d!1534892))

(declare-fun b_lambda!187099 () Bool)

(assert (= b_lambda!187063 (or b!4794974 b_lambda!187099)))

(assert (=> b!4795842 d!1534436))

(declare-fun b_lambda!187101 () Bool)

(assert (= b_lambda!187061 (or b!4794974 b_lambda!187101)))

(assert (=> d!1534802 d!1534436))

(declare-fun b_lambda!187103 () Bool)

(assert (= b_lambda!187011 (or b!4794974 b_lambda!187103)))

(declare-fun bs!1156191 () Bool)

(declare-fun d!1534894 () Bool)

(assert (= bs!1156191 (and d!1534894 b!4794974)))

(assert (=> bs!1156191 (= (dynLambda!22076 lambda!231123 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (= (hash!4975 hashF!1559 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))) (_1!31747 (h!60681 (toList!6948 lm!2473)))))))

(declare-fun m!5778108 () Bool)

(assert (=> bs!1156191 m!5778108))

(assert (=> b!4795438 d!1534894))

(declare-fun b_lambda!187105 () Bool)

(assert (= b_lambda!187075 (or d!1534420 b_lambda!187105)))

(declare-fun bs!1156192 () Bool)

(declare-fun d!1534896 () Bool)

(assert (= bs!1156192 (and d!1534896 d!1534420)))

(assert (=> bs!1156192 (= (dynLambda!22075 lambda!231218 (h!60681 (t!361825 (toList!6948 lm!2473)))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (t!361825 (toList!6948 lm!2473))))))))

(assert (=> bs!1156192 m!5776996))

(assert (=> b!4795892 d!1534896))

(declare-fun b_lambda!187107 () Bool)

(assert (= b_lambda!187041 (or d!1534382 b_lambda!187107)))

(declare-fun bs!1156193 () Bool)

(declare-fun d!1534898 () Bool)

(assert (= bs!1156193 (and d!1534898 d!1534382)))

(assert (=> bs!1156193 (= (dynLambda!22076 lambda!231210 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473))))) (contains!17882 lt!1952974 (_1!31746 (h!60680 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))))

(declare-fun m!5778112 () Bool)

(assert (=> bs!1156193 m!5778112))

(assert (=> b!4795714 d!1534898))

(declare-fun b_lambda!187109 () Bool)

(assert (= b_lambda!187015 (or d!1534412 b_lambda!187109)))

(declare-fun bs!1156194 () Bool)

(declare-fun d!1534900 () Bool)

(assert (= bs!1156194 (and d!1534900 d!1534412)))

(assert (=> bs!1156194 (= (dynLambda!22075 lambda!231217 (h!60681 (toList!6948 lt!1952728))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lt!1952728)))))))

(assert (=> bs!1156194 m!5777740))

(assert (=> b!4795502 d!1534900))

(declare-fun b_lambda!187111 () Bool)

(assert (= b_lambda!187025 (or b!4795228 b_lambda!187111)))

(assert (=> b!4795626 d!1534886))

(declare-fun b_lambda!187113 () Bool)

(assert (= b_lambda!187013 (or d!1534410 b_lambda!187113)))

(declare-fun bs!1156195 () Bool)

(declare-fun d!1534902 () Bool)

(assert (= bs!1156195 (and d!1534902 d!1534410)))

(assert (=> bs!1156195 (= (dynLambda!22075 lambda!231216 (h!60681 (toList!6948 lm!2473))) (allKeysSameHash!1964 (_2!31747 (h!60681 (toList!6948 lm!2473))) (_1!31747 (h!60681 (toList!6948 lm!2473))) hashF!1559))))

(assert (=> bs!1156195 m!5776788))

(assert (=> b!4795483 d!1534902))

(declare-fun b_lambda!187115 () Bool)

(assert (= b_lambda!187059 (or d!1534340 b_lambda!187115)))

(declare-fun bs!1156196 () Bool)

(declare-fun d!1534905 () Bool)

(assert (= bs!1156196 (and d!1534905 d!1534340)))

(assert (=> bs!1156196 (= (dynLambda!22075 lambda!231132 (h!60681 (toList!6948 lm!2473))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> bs!1156196 m!5776284))

(assert (=> b!4795839 d!1534905))

(declare-fun b_lambda!187117 () Bool)

(assert (= b_lambda!187077 (or d!1534406 b_lambda!187117)))

(declare-fun bs!1156197 () Bool)

(declare-fun d!1534908 () Bool)

(assert (= bs!1156197 (and d!1534908 d!1534406)))

(assert (=> bs!1156197 (= (dynLambda!22075 lambda!231213 (h!60681 (toList!6948 lm!2473))) (noDuplicateKeys!2347 (_2!31747 (h!60681 (toList!6948 lm!2473)))))))

(assert (=> bs!1156197 m!5776284))

(assert (=> b!4795900 d!1534908))

(declare-fun b_lambda!187119 () Bool)

(assert (= b_lambda!187027 (or b!4795228 b_lambda!187119)))

(declare-fun bs!1156198 () Bool)

(declare-fun d!1534910 () Bool)

(assert (= bs!1156198 (and d!1534910 b!4795228)))

(assert (=> bs!1156198 (= (dynLambda!22076 lambda!231209 (h!60680 (toList!6947 lt!1952985))) (contains!17882 lt!1952967 (_1!31746 (h!60680 (toList!6947 lt!1952985)))))))

(declare-fun m!5778118 () Bool)

(assert (=> bs!1156198 m!5778118))

(assert (=> b!4795628 d!1534910))

(declare-fun b_lambda!187121 () Bool)

(assert (= b_lambda!187009 (or b!4794974 b_lambda!187121)))

(assert (=> d!1534502 d!1534434))

(check-sat (not d!1534730) (not b!4795459) (not d!1534814) (not bs!1156185) (not d!1534798) (not b!4795380) (not d!1534466) (not b!4795849) (not b!4795865) (not b!4795796) (not b!4795591) (not bm!335174) (not b!4795618) (not d!1534834) (not d!1534844) (not b!4795889) (not bm!335164) (not b!4795377) (not b_lambda!187105) (not bm!335158) (not b!4795505) (not b!4795899) (not b!4795634) (not d!1534494) (not bm!335176) (not b_lambda!186997) (not b!4795593) (not bs!1156190) (not b!4795563) (not d!1534874) (not d!1534512) (not b!4795840) (not b_lambda!187095) (not d!1534514) (not bs!1156189) (not b_lambda!187093) (not d!1534702) (not b!4795838) (not b!4795629) (not d!1534540) (not b!4795690) (not b!4795891) (not b!4795846) (not bm!335151) (not b_lambda!187001) (not b!4795360) (not b_lambda!187085) (not b!4795606) (not d!1534450) (not d!1534748) (not b!4795429) (not b!4795747) (not b!4795783) (not b_lambda!187101) (not b!4795567) (not b!4795788) (not b!4795829) (not b_lambda!187091) (not b!4795772) (not b!4795464) (not d!1534444) (not b!4795720) (not b!4795352) (not b!4795775) (not d!1534678) (not b!4795906) (not b!4795871) (not d!1534632) (not d!1534768) (not b!4795396) (not d!1534832) (not bs!1156186) (not bs!1156195) (not b!4795863) (not b!4795439) (not d!1534854) (not b!4795843) (not b!4795394) (not b!4795860) (not d!1534682) tp_is_empty!33599 (not b!4795445) (not bs!1156191) (not d!1534612) (not b!4795942) (not d!1534764) (not d!1534754) (not b!4795813) (not b!4795638) (not d!1534842) (not d!1534858) (not b!4795894) (not b!4795695) (not b!4795564) (not b!4795754) (not d!1534496) (not b!4795793) (not b_lambda!187083) (not bm!335160) (not b_lambda!187097) (not b!4795743) (not b_lambda!187121) (not b!4795820) (not d!1534456) (not bs!1156193) (not b_lambda!187119) (not d!1534536) (not b!4795689) (not b!4795758) (not b!4795462) (not d!1534762) (not d!1534680) (not b!4795427) (not b_lambda!187017) (not b!4795794) (not b!4795353) (not b_lambda!187089) (not b!4795886) tp_is_empty!33597 (not d!1534458) (not d!1534538) (not b!4795787) (not d!1534526) (not bm!335150) (not b!4795619) (not b!4795639) (not b!4795379) (not b!4795351) (not b!4795873) (not d!1534752) (not b!4795336) (not d!1534462) (not d!1534696) (not b_lambda!187115) (not bs!1156197) (not b!4795592) (not b!4795699) (not b!4795693) (not d!1534746) (not b!4795503) (not b!4795875) (not b!4795337) (not b!4795905) (not b!4795330) (not b!4795358) (not bm!335157) (not b!4795481) (not b!4795784) (not b!4795640) (not d!1534786) (not bs!1156184) (not b!4795398) (not b!4795378) (not b!4795338) (not b!4795603) (not b!4795755) (not b_lambda!186999) (not d!1534644) (not d!1534474) (not bm!335159) (not bm!335156) (not b!4795602) (not d!1534480) (not d!1534734) (not b!4795844) (not b_lambda!187087) (not b!4795757) (not b_lambda!187111) (not b!4795604) (not d!1534600) (not b!4795335) (not b!4795359) (not b!4795476) (not b!4795700) (not b!4795446) (not b!4795594) (not b!4795902) (not b!4795562) (not b!4795756) (not bm!335152) (not bm!335166) (not b!4795704) (not d!1534738) (not b!4795826) (not d!1534510) (not d!1534726) (not b!4795468) (not bs!1156196) (not b!4795785) (not b_lambda!187113) (not b!4795828) (not b!4795893) (not bs!1156198) (not bs!1156192) (not d!1534742) (not d!1534596) (not d!1534796) (not b!4795797) (not b!4795442) (not b!4795701) (not d!1534830) (not d!1534836) (not b!4795334) (not b_lambda!187117) (not b_lambda!187107) (not b!4795443) (not d!1534808) (not bs!1156194) (not b_lambda!187099) (not b!4795698) (not b!4795750) (not b!4795715) (not b!4795862) (not b!4795895) (not b!4795941) (not d!1534548) (not bs!1156187) (not b!4795599) (not b!4795507) (not b!4795694) (not bm!335175) (not d!1534542) (not d!1534766) (not b!4795590) (not d!1534550) (not b!4795903) (not b!4795447) (not bm!335165) (not d!1534720) (not b!4795876) (not d!1534820) (not b!4795637) (not b!4795825) (not b!4795697) (not d!1534782) (not d!1534594) (not b!4795641) (not b!4795936) (not b!4795872) (not b!4795703) (not d!1534448) (not b!4795482) (not b!4795627) (not b!4795824) (not b!4795441) (not b!4795901) (not b!4795696) (not d!1534744) (not b!4795888) (not d!1534452) (not b!4795408) (not b!4795890) (not d!1534806) (not b!4795642) (not b!4795778) (not b!4795366) (not d!1534872) (not b!4795566) (not b_lambda!187109) (not b!4795484) (not bs!1156188) (not b_lambda!187103))
(check-sat)
