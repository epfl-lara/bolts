; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!494494 () Bool)

(assert start!494494)

(declare-fun b!4796482 () Bool)

(declare-fun res!2039345 () Bool)

(declare-fun e!2995070 () Bool)

(assert (=> b!4796482 (=> (not res!2039345) (not e!2995070))))

(declare-datatypes ((K!15839 0))(
  ( (K!15840 (val!20977 Int)) )
))
(declare-datatypes ((V!16085 0))(
  ( (V!16086 (val!20978 Int)) )
))
(declare-datatypes ((tuple2!56928 0))(
  ( (tuple2!56929 (_1!31758 K!15839) (_2!31758 V!16085)) )
))
(declare-datatypes ((List!54390 0))(
  ( (Nil!54266) (Cons!54266 (h!60698 tuple2!56928) (t!361840 List!54390)) )
))
(declare-datatypes ((tuple2!56930 0))(
  ( (tuple2!56931 (_1!31759 (_ BitVec 64)) (_2!31759 List!54390)) )
))
(declare-datatypes ((List!54391 0))(
  ( (Nil!54267) (Cons!54267 (h!60699 tuple2!56930) (t!361841 List!54391)) )
))
(declare-datatypes ((ListLongMap!5381 0))(
  ( (ListLongMap!5382 (toList!6959 List!54391)) )
))
(declare-fun lm!2473 () ListLongMap!5381)

(declare-datatypes ((Hashable!6940 0))(
  ( (HashableExt!6939 (__x!32963 Int)) )
))
(declare-fun hashF!1559 () Hashable!6940)

(declare-fun allKeysSameHashInMap!2345 (ListLongMap!5381 Hashable!6940) Bool)

(assert (=> b!4796482 (= res!2039345 (allKeysSameHashInMap!2345 lm!2473 hashF!1559))))

(declare-fun b!4796483 () Bool)

(declare-fun e!2995072 () Bool)

(declare-fun e!2995073 () Bool)

(assert (=> b!4796483 (= e!2995072 e!2995073)))

(declare-fun res!2039346 () Bool)

(assert (=> b!4796483 (=> res!2039346 e!2995073)))

(declare-fun lt!1953887 () ListLongMap!5381)

(declare-fun lt!1953888 () (_ BitVec 64))

(declare-fun contains!17905 (ListLongMap!5381 (_ BitVec 64)) Bool)

(assert (=> b!4796483 (= res!2039346 (contains!17905 lt!1953887 lt!1953888))))

(declare-fun tail!9293 (ListLongMap!5381) ListLongMap!5381)

(assert (=> b!4796483 (= lt!1953887 (tail!9293 lm!2473))))

(declare-fun b!4796484 () Bool)

(declare-fun res!2039350 () Bool)

(assert (=> b!4796484 (=> (not res!2039350) (not e!2995070))))

(declare-fun key!5896 () K!15839)

(declare-datatypes ((ListMap!6431 0))(
  ( (ListMap!6432 (toList!6960 List!54390)) )
))
(declare-fun contains!17906 (ListMap!6431 K!15839) Bool)

(declare-fun extractMap!2467 (List!54391) ListMap!6431)

(assert (=> b!4796484 (= res!2039350 (contains!17906 (extractMap!2467 (toList!6959 lm!2473)) key!5896))))

(declare-fun b!4796485 () Bool)

(declare-fun res!2039351 () Bool)

(assert (=> b!4796485 (=> res!2039351 e!2995072)))

(declare-fun containsKey!3986 (List!54390 K!15839) Bool)

(assert (=> b!4796485 (= res!2039351 (containsKey!3986 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896))))

(declare-fun b!4796486 () Bool)

(declare-fun e!2995071 () Bool)

(declare-fun tp!1358186 () Bool)

(assert (=> b!4796486 (= e!2995071 tp!1358186)))

(declare-fun b!4796487 () Bool)

(declare-fun res!2039347 () Bool)

(assert (=> b!4796487 (=> res!2039347 e!2995072)))

(get-info :version)

(assert (=> b!4796487 (= res!2039347 (not ((_ is Cons!54267) (toList!6959 lm!2473))))))

(declare-fun b!4796488 () Bool)

(assert (=> b!4796488 (= e!2995070 (not e!2995072))))

(declare-fun res!2039352 () Bool)

(assert (=> b!4796488 (=> res!2039352 e!2995072)))

(declare-fun value!3111 () V!16085)

(declare-fun getValue!128 (List!54391 K!15839) V!16085)

(assert (=> b!4796488 (= res!2039352 (not (= (getValue!128 (toList!6959 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!582 (List!54391 K!15839) Bool)

(assert (=> b!4796488 (containsKeyBiggerList!582 (toList!6959 lm!2473) key!5896)))

(declare-datatypes ((Unit!140318 0))(
  ( (Unit!140319) )
))
(declare-fun lt!1953886 () Unit!140318)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!322 (ListLongMap!5381 K!15839 Hashable!6940) Unit!140318)

(assert (=> b!4796488 (= lt!1953886 (lemmaInLongMapThenContainsKeyBiggerList!322 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2995074 () Bool)

(assert (=> b!4796488 e!2995074))

(declare-fun res!2039349 () Bool)

(assert (=> b!4796488 (=> (not res!2039349) (not e!2995074))))

(assert (=> b!4796488 (= res!2039349 (contains!17905 lm!2473 lt!1953888))))

(declare-fun hash!4985 (Hashable!6940 K!15839) (_ BitVec 64))

(assert (=> b!4796488 (= lt!1953888 (hash!4985 hashF!1559 key!5896))))

(declare-fun lt!1953889 () Unit!140318)

(declare-fun lemmaInGenericMapThenInLongMap!344 (ListLongMap!5381 K!15839 Hashable!6940) Unit!140318)

(assert (=> b!4796488 (= lt!1953889 (lemmaInGenericMapThenInLongMap!344 lm!2473 key!5896 hashF!1559))))

(declare-fun res!2039348 () Bool)

(assert (=> start!494494 (=> (not res!2039348) (not e!2995070))))

(declare-fun lambda!231483 () Int)

(declare-fun forall!12287 (List!54391 Int) Bool)

(assert (=> start!494494 (= res!2039348 (forall!12287 (toList!6959 lm!2473) lambda!231483))))

(assert (=> start!494494 e!2995070))

(declare-fun inv!69865 (ListLongMap!5381) Bool)

(assert (=> start!494494 (and (inv!69865 lm!2473) e!2995071)))

(assert (=> start!494494 true))

(declare-fun tp_is_empty!33621 () Bool)

(assert (=> start!494494 tp_is_empty!33621))

(declare-fun tp_is_empty!33623 () Bool)

(assert (=> start!494494 tp_is_empty!33623))

(declare-fun b!4796489 () Bool)

(assert (=> b!4796489 (= e!2995073 (forall!12287 (toList!6959 lt!1953887) lambda!231483))))

(declare-fun b!4796490 () Bool)

(declare-datatypes ((Option!13136 0))(
  ( (None!13135) (Some!13135 (v!48440 tuple2!56928)) )
))
(declare-fun isDefined!10277 (Option!13136) Bool)

(declare-fun getPair!912 (List!54390 K!15839) Option!13136)

(declare-fun apply!13013 (ListLongMap!5381 (_ BitVec 64)) List!54390)

(assert (=> b!4796490 (= e!2995074 (isDefined!10277 (getPair!912 (apply!13013 lm!2473 lt!1953888) key!5896)))))

(assert (= (and start!494494 res!2039348) b!4796482))

(assert (= (and b!4796482 res!2039345) b!4796484))

(assert (= (and b!4796484 res!2039350) b!4796488))

(assert (= (and b!4796488 res!2039349) b!4796490))

(assert (= (and b!4796488 (not res!2039352)) b!4796487))

(assert (= (and b!4796487 (not res!2039347)) b!4796485))

(assert (= (and b!4796485 (not res!2039351)) b!4796483))

(assert (= (and b!4796483 (not res!2039346)) b!4796489))

(assert (= start!494494 b!4796486))

(declare-fun m!5778844 () Bool)

(assert (=> start!494494 m!5778844))

(declare-fun m!5778846 () Bool)

(assert (=> start!494494 m!5778846))

(declare-fun m!5778848 () Bool)

(assert (=> b!4796483 m!5778848))

(declare-fun m!5778850 () Bool)

(assert (=> b!4796483 m!5778850))

(declare-fun m!5778852 () Bool)

(assert (=> b!4796482 m!5778852))

(declare-fun m!5778854 () Bool)

(assert (=> b!4796489 m!5778854))

(declare-fun m!5778856 () Bool)

(assert (=> b!4796488 m!5778856))

(declare-fun m!5778858 () Bool)

(assert (=> b!4796488 m!5778858))

(declare-fun m!5778860 () Bool)

(assert (=> b!4796488 m!5778860))

(declare-fun m!5778862 () Bool)

(assert (=> b!4796488 m!5778862))

(declare-fun m!5778864 () Bool)

(assert (=> b!4796488 m!5778864))

(declare-fun m!5778866 () Bool)

(assert (=> b!4796488 m!5778866))

(declare-fun m!5778868 () Bool)

(assert (=> b!4796490 m!5778868))

(assert (=> b!4796490 m!5778868))

(declare-fun m!5778870 () Bool)

(assert (=> b!4796490 m!5778870))

(assert (=> b!4796490 m!5778870))

(declare-fun m!5778872 () Bool)

(assert (=> b!4796490 m!5778872))

(declare-fun m!5778874 () Bool)

(assert (=> b!4796484 m!5778874))

(assert (=> b!4796484 m!5778874))

(declare-fun m!5778876 () Bool)

(assert (=> b!4796484 m!5778876))

(declare-fun m!5778878 () Bool)

(assert (=> b!4796485 m!5778878))

(check-sat tp_is_empty!33623 (not b!4796484) (not b!4796486) tp_is_empty!33621 (not b!4796485) (not b!4796488) (not b!4796489) (not start!494494) (not b!4796482) (not b!4796490) (not b!4796483))
(check-sat)
(get-model)

(declare-fun b!4796547 () Bool)

(declare-fun e!2995122 () Bool)

(declare-datatypes ((List!54392 0))(
  ( (Nil!54268) (Cons!54268 (h!60700 K!15839) (t!361842 List!54392)) )
))
(declare-fun contains!17907 (List!54392 K!15839) Bool)

(declare-fun keys!19826 (ListMap!6431) List!54392)

(assert (=> b!4796547 (= e!2995122 (contains!17907 (keys!19826 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(declare-fun d!1535089 () Bool)

(declare-fun e!2995121 () Bool)

(assert (=> d!1535089 e!2995121))

(declare-fun res!2039383 () Bool)

(assert (=> d!1535089 (=> res!2039383 e!2995121)))

(declare-fun e!2995119 () Bool)

(assert (=> d!1535089 (= res!2039383 e!2995119)))

(declare-fun res!2039385 () Bool)

(assert (=> d!1535089 (=> (not res!2039385) (not e!2995119))))

(declare-fun lt!1953926 () Bool)

(assert (=> d!1535089 (= res!2039385 (not lt!1953926))))

(declare-fun lt!1953927 () Bool)

(assert (=> d!1535089 (= lt!1953926 lt!1953927)))

(declare-fun lt!1953928 () Unit!140318)

(declare-fun e!2995117 () Unit!140318)

(assert (=> d!1535089 (= lt!1953928 e!2995117)))

(declare-fun c!817504 () Bool)

(assert (=> d!1535089 (= c!817504 lt!1953927)))

(declare-fun containsKey!3988 (List!54390 K!15839) Bool)

(assert (=> d!1535089 (= lt!1953927 (containsKey!3988 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(assert (=> d!1535089 (= (contains!17906 (extractMap!2467 (toList!6959 lm!2473)) key!5896) lt!1953926)))

(declare-fun b!4796548 () Bool)

(declare-fun lt!1953924 () Unit!140318)

(assert (=> b!4796548 (= e!2995117 lt!1953924)))

(declare-fun lt!1953931 () Unit!140318)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2164 (List!54390 K!15839) Unit!140318)

(assert (=> b!4796548 (= lt!1953931 (lemmaContainsKeyImpliesGetValueByKeyDefined!2164 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(declare-datatypes ((Option!13138 0))(
  ( (None!13137) (Some!13137 (v!48442 V!16085)) )
))
(declare-fun isDefined!10279 (Option!13138) Bool)

(declare-fun getValueByKey!2373 (List!54390 K!15839) Option!13138)

(assert (=> b!4796548 (isDefined!10279 (getValueByKey!2373 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(declare-fun lt!1953930 () Unit!140318)

(assert (=> b!4796548 (= lt!1953930 lt!1953931)))

(declare-fun lemmaInListThenGetKeysListContains!1082 (List!54390 K!15839) Unit!140318)

(assert (=> b!4796548 (= lt!1953924 (lemmaInListThenGetKeysListContains!1082 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(declare-fun call!335215 () Bool)

(assert (=> b!4796548 call!335215))

(declare-fun b!4796549 () Bool)

(assert (=> b!4796549 (= e!2995119 (not (contains!17907 (keys!19826 (extractMap!2467 (toList!6959 lm!2473))) key!5896)))))

(declare-fun b!4796550 () Bool)

(assert (=> b!4796550 (= e!2995121 e!2995122)))

(declare-fun res!2039384 () Bool)

(assert (=> b!4796550 (=> (not res!2039384) (not e!2995122))))

(assert (=> b!4796550 (= res!2039384 (isDefined!10279 (getValueByKey!2373 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896)))))

(declare-fun b!4796551 () Bool)

(declare-fun e!2995118 () Unit!140318)

(assert (=> b!4796551 (= e!2995117 e!2995118)))

(declare-fun c!817506 () Bool)

(assert (=> b!4796551 (= c!817506 call!335215)))

(declare-fun b!4796552 () Bool)

(declare-fun Unit!140321 () Unit!140318)

(assert (=> b!4796552 (= e!2995118 Unit!140321)))

(declare-fun b!4796553 () Bool)

(declare-fun e!2995120 () List!54392)

(declare-fun getKeysList!1087 (List!54390) List!54392)

(assert (=> b!4796553 (= e!2995120 (getKeysList!1087 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))

(declare-fun b!4796554 () Bool)

(assert (=> b!4796554 (= e!2995120 (keys!19826 (extractMap!2467 (toList!6959 lm!2473))))))

(declare-fun bm!335210 () Bool)

(assert (=> bm!335210 (= call!335215 (contains!17907 e!2995120 key!5896))))

(declare-fun c!817505 () Bool)

(assert (=> bm!335210 (= c!817505 c!817504)))

(declare-fun b!4796555 () Bool)

(assert (=> b!4796555 false))

(declare-fun lt!1953929 () Unit!140318)

(declare-fun lt!1953925 () Unit!140318)

(assert (=> b!4796555 (= lt!1953929 lt!1953925)))

(assert (=> b!4796555 (containsKey!3988 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1087 (List!54390 K!15839) Unit!140318)

(assert (=> b!4796555 (= lt!1953925 (lemmaInGetKeysListThenContainsKey!1087 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(declare-fun Unit!140322 () Unit!140318)

(assert (=> b!4796555 (= e!2995118 Unit!140322)))

(assert (= (and d!1535089 c!817504) b!4796548))

(assert (= (and d!1535089 (not c!817504)) b!4796551))

(assert (= (and b!4796551 c!817506) b!4796555))

(assert (= (and b!4796551 (not c!817506)) b!4796552))

(assert (= (or b!4796548 b!4796551) bm!335210))

(assert (= (and bm!335210 c!817505) b!4796553))

(assert (= (and bm!335210 (not c!817505)) b!4796554))

(assert (= (and d!1535089 res!2039385) b!4796549))

(assert (= (and d!1535089 (not res!2039383)) b!4796550))

(assert (= (and b!4796550 res!2039384) b!4796547))

(declare-fun m!5778920 () Bool)

(assert (=> bm!335210 m!5778920))

(assert (=> b!4796549 m!5778874))

(declare-fun m!5778922 () Bool)

(assert (=> b!4796549 m!5778922))

(assert (=> b!4796549 m!5778922))

(declare-fun m!5778924 () Bool)

(assert (=> b!4796549 m!5778924))

(assert (=> b!4796547 m!5778874))

(assert (=> b!4796547 m!5778922))

(assert (=> b!4796547 m!5778922))

(assert (=> b!4796547 m!5778924))

(assert (=> b!4796554 m!5778874))

(assert (=> b!4796554 m!5778922))

(declare-fun m!5778926 () Bool)

(assert (=> d!1535089 m!5778926))

(declare-fun m!5778928 () Bool)

(assert (=> b!4796553 m!5778928))

(declare-fun m!5778930 () Bool)

(assert (=> b!4796548 m!5778930))

(declare-fun m!5778932 () Bool)

(assert (=> b!4796548 m!5778932))

(assert (=> b!4796548 m!5778932))

(declare-fun m!5778934 () Bool)

(assert (=> b!4796548 m!5778934))

(declare-fun m!5778936 () Bool)

(assert (=> b!4796548 m!5778936))

(assert (=> b!4796550 m!5778932))

(assert (=> b!4796550 m!5778932))

(assert (=> b!4796550 m!5778934))

(assert (=> b!4796555 m!5778926))

(declare-fun m!5778938 () Bool)

(assert (=> b!4796555 m!5778938))

(assert (=> b!4796484 d!1535089))

(declare-fun bs!1156346 () Bool)

(declare-fun d!1535107 () Bool)

(assert (= bs!1156346 (and d!1535107 start!494494)))

(declare-fun lambda!231495 () Int)

(assert (=> bs!1156346 (= lambda!231495 lambda!231483)))

(declare-fun lt!1953941 () ListMap!6431)

(declare-fun invariantList!1741 (List!54390) Bool)

(assert (=> d!1535107 (invariantList!1741 (toList!6960 lt!1953941))))

(declare-fun e!2995142 () ListMap!6431)

(assert (=> d!1535107 (= lt!1953941 e!2995142)))

(declare-fun c!817516 () Bool)

(assert (=> d!1535107 (= c!817516 ((_ is Cons!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535107 (forall!12287 (toList!6959 lm!2473) lambda!231495)))

(assert (=> d!1535107 (= (extractMap!2467 (toList!6959 lm!2473)) lt!1953941)))

(declare-fun b!4796587 () Bool)

(declare-fun addToMapMapFromBucket!1718 (List!54390 ListMap!6431) ListMap!6431)

(assert (=> b!4796587 (= e!2995142 (addToMapMapFromBucket!1718 (_2!31759 (h!60699 (toList!6959 lm!2473))) (extractMap!2467 (t!361841 (toList!6959 lm!2473)))))))

(declare-fun b!4796588 () Bool)

(assert (=> b!4796588 (= e!2995142 (ListMap!6432 Nil!54266))))

(assert (= (and d!1535107 c!817516) b!4796587))

(assert (= (and d!1535107 (not c!817516)) b!4796588))

(declare-fun m!5778966 () Bool)

(assert (=> d!1535107 m!5778966))

(declare-fun m!5778968 () Bool)

(assert (=> d!1535107 m!5778968))

(declare-fun m!5778970 () Bool)

(assert (=> b!4796587 m!5778970))

(assert (=> b!4796587 m!5778970))

(declare-fun m!5778972 () Bool)

(assert (=> b!4796587 m!5778972))

(assert (=> b!4796484 d!1535107))

(declare-fun d!1535117 () Bool)

(declare-fun res!2039403 () Bool)

(declare-fun e!2995147 () Bool)

(assert (=> d!1535117 (=> res!2039403 e!2995147)))

(assert (=> d!1535117 (= res!2039403 ((_ is Nil!54267) (toList!6959 lt!1953887)))))

(assert (=> d!1535117 (= (forall!12287 (toList!6959 lt!1953887) lambda!231483) e!2995147)))

(declare-fun b!4796593 () Bool)

(declare-fun e!2995148 () Bool)

(assert (=> b!4796593 (= e!2995147 e!2995148)))

(declare-fun res!2039404 () Bool)

(assert (=> b!4796593 (=> (not res!2039404) (not e!2995148))))

(declare-fun dynLambda!22081 (Int tuple2!56930) Bool)

(assert (=> b!4796593 (= res!2039404 (dynLambda!22081 lambda!231483 (h!60699 (toList!6959 lt!1953887))))))

(declare-fun b!4796594 () Bool)

(assert (=> b!4796594 (= e!2995148 (forall!12287 (t!361841 (toList!6959 lt!1953887)) lambda!231483))))

(assert (= (and d!1535117 (not res!2039403)) b!4796593))

(assert (= (and b!4796593 res!2039404) b!4796594))

(declare-fun b_lambda!187187 () Bool)

(assert (=> (not b_lambda!187187) (not b!4796593)))

(declare-fun m!5778974 () Bool)

(assert (=> b!4796593 m!5778974))

(declare-fun m!5778976 () Bool)

(assert (=> b!4796594 m!5778976))

(assert (=> b!4796489 d!1535117))

(declare-fun d!1535119 () Bool)

(declare-fun res!2039405 () Bool)

(declare-fun e!2995149 () Bool)

(assert (=> d!1535119 (=> res!2039405 e!2995149)))

(assert (=> d!1535119 (= res!2039405 ((_ is Nil!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535119 (= (forall!12287 (toList!6959 lm!2473) lambda!231483) e!2995149)))

(declare-fun b!4796595 () Bool)

(declare-fun e!2995150 () Bool)

(assert (=> b!4796595 (= e!2995149 e!2995150)))

(declare-fun res!2039406 () Bool)

(assert (=> b!4796595 (=> (not res!2039406) (not e!2995150))))

(assert (=> b!4796595 (= res!2039406 (dynLambda!22081 lambda!231483 (h!60699 (toList!6959 lm!2473))))))

(declare-fun b!4796596 () Bool)

(assert (=> b!4796596 (= e!2995150 (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231483))))

(assert (= (and d!1535119 (not res!2039405)) b!4796595))

(assert (= (and b!4796595 res!2039406) b!4796596))

(declare-fun b_lambda!187189 () Bool)

(assert (=> (not b_lambda!187189) (not b!4796595)))

(declare-fun m!5778978 () Bool)

(assert (=> b!4796595 m!5778978))

(declare-fun m!5778980 () Bool)

(assert (=> b!4796596 m!5778980))

(assert (=> start!494494 d!1535119))

(declare-fun d!1535121 () Bool)

(declare-fun isStrictlySorted!888 (List!54391) Bool)

(assert (=> d!1535121 (= (inv!69865 lm!2473) (isStrictlySorted!888 (toList!6959 lm!2473)))))

(declare-fun bs!1156347 () Bool)

(assert (= bs!1156347 d!1535121))

(declare-fun m!5778982 () Bool)

(assert (=> bs!1156347 m!5778982))

(assert (=> start!494494 d!1535121))

(declare-fun d!1535123 () Bool)

(declare-fun res!2039414 () Bool)

(declare-fun e!2995159 () Bool)

(assert (=> d!1535123 (=> res!2039414 e!2995159)))

(declare-fun e!2995157 () Bool)

(assert (=> d!1535123 (= res!2039414 e!2995157)))

(declare-fun res!2039413 () Bool)

(assert (=> d!1535123 (=> (not res!2039413) (not e!2995157))))

(assert (=> d!1535123 (= res!2039413 ((_ is Cons!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535123 (= (containsKeyBiggerList!582 (toList!6959 lm!2473) key!5896) e!2995159)))

(declare-fun b!4796603 () Bool)

(assert (=> b!4796603 (= e!2995157 (containsKey!3986 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896))))

(declare-fun b!4796604 () Bool)

(declare-fun e!2995158 () Bool)

(assert (=> b!4796604 (= e!2995159 e!2995158)))

(declare-fun res!2039415 () Bool)

(assert (=> b!4796604 (=> (not res!2039415) (not e!2995158))))

(assert (=> b!4796604 (= res!2039415 ((_ is Cons!54267) (toList!6959 lm!2473)))))

(declare-fun b!4796605 () Bool)

(assert (=> b!4796605 (= e!2995158 (containsKeyBiggerList!582 (t!361841 (toList!6959 lm!2473)) key!5896))))

(assert (= (and d!1535123 res!2039413) b!4796603))

(assert (= (and d!1535123 (not res!2039414)) b!4796604))

(assert (= (and b!4796604 res!2039415) b!4796605))

(assert (=> b!4796603 m!5778878))

(declare-fun m!5778984 () Bool)

(assert (=> b!4796605 m!5778984))

(assert (=> b!4796488 d!1535123))

(declare-fun bs!1156348 () Bool)

(declare-fun d!1535125 () Bool)

(assert (= bs!1156348 (and d!1535125 start!494494)))

(declare-fun lambda!231498 () Int)

(assert (=> bs!1156348 (= lambda!231498 lambda!231483)))

(declare-fun bs!1156349 () Bool)

(assert (= bs!1156349 (and d!1535125 d!1535107)))

(assert (=> bs!1156349 (= lambda!231498 lambda!231495)))

(assert (=> d!1535125 (containsKeyBiggerList!582 (toList!6959 lm!2473) key!5896)))

(declare-fun lt!1953960 () Unit!140318)

(declare-fun choose!34606 (ListLongMap!5381 K!15839 Hashable!6940) Unit!140318)

(assert (=> d!1535125 (= lt!1953960 (choose!34606 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535125 (forall!12287 (toList!6959 lm!2473) lambda!231498)))

(assert (=> d!1535125 (= (lemmaInLongMapThenContainsKeyBiggerList!322 lm!2473 key!5896 hashF!1559) lt!1953960)))

(declare-fun bs!1156350 () Bool)

(assert (= bs!1156350 d!1535125))

(assert (=> bs!1156350 m!5778856))

(declare-fun m!5778986 () Bool)

(assert (=> bs!1156350 m!5778986))

(declare-fun m!5778988 () Bool)

(assert (=> bs!1156350 m!5778988))

(assert (=> b!4796488 d!1535125))

(declare-fun bs!1156351 () Bool)

(declare-fun d!1535127 () Bool)

(assert (= bs!1156351 (and d!1535127 start!494494)))

(declare-fun lambda!231501 () Int)

(assert (=> bs!1156351 (= lambda!231501 lambda!231483)))

(declare-fun bs!1156352 () Bool)

(assert (= bs!1156352 (and d!1535127 d!1535107)))

(assert (=> bs!1156352 (= lambda!231501 lambda!231495)))

(declare-fun bs!1156353 () Bool)

(assert (= bs!1156353 (and d!1535127 d!1535125)))

(assert (=> bs!1156353 (= lambda!231501 lambda!231498)))

(declare-fun e!2995180 () Bool)

(assert (=> d!1535127 e!2995180))

(declare-fun res!2039427 () Bool)

(assert (=> d!1535127 (=> (not res!2039427) (not e!2995180))))

(assert (=> d!1535127 (= res!2039427 (contains!17905 lm!2473 (hash!4985 hashF!1559 key!5896)))))

(declare-fun lt!1953971 () Unit!140318)

(declare-fun choose!34607 (ListLongMap!5381 K!15839 Hashable!6940) Unit!140318)

(assert (=> d!1535127 (= lt!1953971 (choose!34607 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1535127 (forall!12287 (toList!6959 lm!2473) lambda!231501)))

(assert (=> d!1535127 (= (lemmaInGenericMapThenInLongMap!344 lm!2473 key!5896 hashF!1559) lt!1953971)))

(declare-fun b!4796635 () Bool)

(assert (=> b!4796635 (= e!2995180 (isDefined!10277 (getPair!912 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1535127 res!2039427) b!4796635))

(assert (=> d!1535127 m!5778860))

(assert (=> d!1535127 m!5778860))

(declare-fun m!5779010 () Bool)

(assert (=> d!1535127 m!5779010))

(declare-fun m!5779012 () Bool)

(assert (=> d!1535127 m!5779012))

(declare-fun m!5779014 () Bool)

(assert (=> d!1535127 m!5779014))

(assert (=> b!4796635 m!5778860))

(assert (=> b!4796635 m!5778860))

(declare-fun m!5779016 () Bool)

(assert (=> b!4796635 m!5779016))

(assert (=> b!4796635 m!5779016))

(declare-fun m!5779018 () Bool)

(assert (=> b!4796635 m!5779018))

(assert (=> b!4796635 m!5779018))

(declare-fun m!5779020 () Bool)

(assert (=> b!4796635 m!5779020))

(assert (=> b!4796488 d!1535127))

(declare-fun d!1535131 () Bool)

(declare-fun c!817528 () Bool)

(declare-fun e!2995186 () Bool)

(assert (=> d!1535131 (= c!817528 e!2995186)))

(declare-fun res!2039430 () Bool)

(assert (=> d!1535131 (=> (not res!2039430) (not e!2995186))))

(assert (=> d!1535131 (= res!2039430 ((_ is Cons!54267) (toList!6959 lm!2473)))))

(declare-fun e!2995185 () V!16085)

(assert (=> d!1535131 (= (getValue!128 (toList!6959 lm!2473) key!5896) e!2995185)))

(declare-fun b!4796644 () Bool)

(assert (=> b!4796644 (= e!2995186 (containsKey!3986 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896))))

(declare-fun b!4796642 () Bool)

(declare-fun get!18516 (Option!13136) tuple2!56928)

(assert (=> b!4796642 (= e!2995185 (_2!31758 (get!18516 (getPair!912 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896))))))

(declare-fun b!4796643 () Bool)

(assert (=> b!4796643 (= e!2995185 (getValue!128 (t!361841 (toList!6959 lm!2473)) key!5896))))

(assert (= (and d!1535131 res!2039430) b!4796644))

(assert (= (and d!1535131 c!817528) b!4796642))

(assert (= (and d!1535131 (not c!817528)) b!4796643))

(assert (=> b!4796644 m!5778878))

(declare-fun m!5779022 () Bool)

(assert (=> b!4796642 m!5779022))

(assert (=> b!4796642 m!5779022))

(declare-fun m!5779024 () Bool)

(assert (=> b!4796642 m!5779024))

(declare-fun m!5779026 () Bool)

(assert (=> b!4796643 m!5779026))

(assert (=> b!4796488 d!1535131))

(declare-fun d!1535133 () Bool)

(declare-fun e!2995194 () Bool)

(assert (=> d!1535133 e!2995194))

(declare-fun res!2039433 () Bool)

(assert (=> d!1535133 (=> res!2039433 e!2995194)))

(declare-fun lt!1953984 () Bool)

(assert (=> d!1535133 (= res!2039433 (not lt!1953984))))

(declare-fun lt!1953986 () Bool)

(assert (=> d!1535133 (= lt!1953984 lt!1953986)))

(declare-fun lt!1953983 () Unit!140318)

(declare-fun e!2995195 () Unit!140318)

(assert (=> d!1535133 (= lt!1953983 e!2995195)))

(declare-fun c!817534 () Bool)

(assert (=> d!1535133 (= c!817534 lt!1953986)))

(declare-fun containsKey!3990 (List!54391 (_ BitVec 64)) Bool)

(assert (=> d!1535133 (= lt!1953986 (containsKey!3990 (toList!6959 lm!2473) lt!1953888))))

(assert (=> d!1535133 (= (contains!17905 lm!2473 lt!1953888) lt!1953984)))

(declare-fun b!4796657 () Bool)

(declare-fun lt!1953985 () Unit!140318)

(assert (=> b!4796657 (= e!2995195 lt!1953985)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2166 (List!54391 (_ BitVec 64)) Unit!140318)

(assert (=> b!4796657 (= lt!1953985 (lemmaContainsKeyImpliesGetValueByKeyDefined!2166 (toList!6959 lm!2473) lt!1953888))))

(declare-datatypes ((Option!13140 0))(
  ( (None!13139) (Some!13139 (v!48444 List!54390)) )
))
(declare-fun isDefined!10281 (Option!13140) Bool)

(declare-fun getValueByKey!2375 (List!54391 (_ BitVec 64)) Option!13140)

(assert (=> b!4796657 (isDefined!10281 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888))))

(declare-fun b!4796658 () Bool)

(declare-fun Unit!140326 () Unit!140318)

(assert (=> b!4796658 (= e!2995195 Unit!140326)))

(declare-fun b!4796659 () Bool)

(assert (=> b!4796659 (= e!2995194 (isDefined!10281 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888)))))

(assert (= (and d!1535133 c!817534) b!4796657))

(assert (= (and d!1535133 (not c!817534)) b!4796658))

(assert (= (and d!1535133 (not res!2039433)) b!4796659))

(declare-fun m!5779034 () Bool)

(assert (=> d!1535133 m!5779034))

(declare-fun m!5779038 () Bool)

(assert (=> b!4796657 m!5779038))

(declare-fun m!5779040 () Bool)

(assert (=> b!4796657 m!5779040))

(assert (=> b!4796657 m!5779040))

(declare-fun m!5779042 () Bool)

(assert (=> b!4796657 m!5779042))

(assert (=> b!4796659 m!5779040))

(assert (=> b!4796659 m!5779040))

(assert (=> b!4796659 m!5779042))

(assert (=> b!4796488 d!1535133))

(declare-fun d!1535137 () Bool)

(declare-fun hash!4987 (Hashable!6940 K!15839) (_ BitVec 64))

(assert (=> d!1535137 (= (hash!4985 hashF!1559 key!5896) (hash!4987 hashF!1559 key!5896))))

(declare-fun bs!1156358 () Bool)

(assert (= bs!1156358 d!1535137))

(declare-fun m!5779044 () Bool)

(assert (=> bs!1156358 m!5779044))

(assert (=> b!4796488 d!1535137))

(declare-fun d!1535139 () Bool)

(declare-fun e!2995196 () Bool)

(assert (=> d!1535139 e!2995196))

(declare-fun res!2039434 () Bool)

(assert (=> d!1535139 (=> res!2039434 e!2995196)))

(declare-fun lt!1953988 () Bool)

(assert (=> d!1535139 (= res!2039434 (not lt!1953988))))

(declare-fun lt!1953990 () Bool)

(assert (=> d!1535139 (= lt!1953988 lt!1953990)))

(declare-fun lt!1953987 () Unit!140318)

(declare-fun e!2995199 () Unit!140318)

(assert (=> d!1535139 (= lt!1953987 e!2995199)))

(declare-fun c!817535 () Bool)

(assert (=> d!1535139 (= c!817535 lt!1953990)))

(assert (=> d!1535139 (= lt!1953990 (containsKey!3990 (toList!6959 lt!1953887) lt!1953888))))

(assert (=> d!1535139 (= (contains!17905 lt!1953887 lt!1953888) lt!1953988)))

(declare-fun b!4796662 () Bool)

(declare-fun lt!1953989 () Unit!140318)

(assert (=> b!4796662 (= e!2995199 lt!1953989)))

(assert (=> b!4796662 (= lt!1953989 (lemmaContainsKeyImpliesGetValueByKeyDefined!2166 (toList!6959 lt!1953887) lt!1953888))))

(assert (=> b!4796662 (isDefined!10281 (getValueByKey!2375 (toList!6959 lt!1953887) lt!1953888))))

(declare-fun b!4796663 () Bool)

(declare-fun Unit!140327 () Unit!140318)

(assert (=> b!4796663 (= e!2995199 Unit!140327)))

(declare-fun b!4796664 () Bool)

(assert (=> b!4796664 (= e!2995196 (isDefined!10281 (getValueByKey!2375 (toList!6959 lt!1953887) lt!1953888)))))

(assert (= (and d!1535139 c!817535) b!4796662))

(assert (= (and d!1535139 (not c!817535)) b!4796663))

(assert (= (and d!1535139 (not res!2039434)) b!4796664))

(declare-fun m!5779046 () Bool)

(assert (=> d!1535139 m!5779046))

(declare-fun m!5779048 () Bool)

(assert (=> b!4796662 m!5779048))

(declare-fun m!5779050 () Bool)

(assert (=> b!4796662 m!5779050))

(assert (=> b!4796662 m!5779050))

(declare-fun m!5779052 () Bool)

(assert (=> b!4796662 m!5779052))

(assert (=> b!4796664 m!5779050))

(assert (=> b!4796664 m!5779050))

(assert (=> b!4796664 m!5779052))

(assert (=> b!4796483 d!1535139))

(declare-fun d!1535141 () Bool)

(declare-fun tail!9295 (List!54391) List!54391)

(assert (=> d!1535141 (= (tail!9293 lm!2473) (ListLongMap!5382 (tail!9295 (toList!6959 lm!2473))))))

(declare-fun bs!1156359 () Bool)

(assert (= bs!1156359 d!1535141))

(declare-fun m!5779056 () Bool)

(assert (=> bs!1156359 m!5779056))

(assert (=> b!4796483 d!1535141))

(declare-fun bs!1156363 () Bool)

(declare-fun d!1535143 () Bool)

(assert (= bs!1156363 (and d!1535143 start!494494)))

(declare-fun lambda!231507 () Int)

(assert (=> bs!1156363 (not (= lambda!231507 lambda!231483))))

(declare-fun bs!1156364 () Bool)

(assert (= bs!1156364 (and d!1535143 d!1535107)))

(assert (=> bs!1156364 (not (= lambda!231507 lambda!231495))))

(declare-fun bs!1156365 () Bool)

(assert (= bs!1156365 (and d!1535143 d!1535125)))

(assert (=> bs!1156365 (not (= lambda!231507 lambda!231498))))

(declare-fun bs!1156366 () Bool)

(assert (= bs!1156366 (and d!1535143 d!1535127)))

(assert (=> bs!1156366 (not (= lambda!231507 lambda!231501))))

(assert (=> d!1535143 true))

(assert (=> d!1535143 (= (allKeysSameHashInMap!2345 lm!2473 hashF!1559) (forall!12287 (toList!6959 lm!2473) lambda!231507))))

(declare-fun bs!1156367 () Bool)

(assert (= bs!1156367 d!1535143))

(declare-fun m!5779070 () Bool)

(assert (=> bs!1156367 m!5779070))

(assert (=> b!4796482 d!1535143))

(declare-fun d!1535153 () Bool)

(declare-fun isEmpty!29472 (Option!13136) Bool)

(assert (=> d!1535153 (= (isDefined!10277 (getPair!912 (apply!13013 lm!2473 lt!1953888) key!5896)) (not (isEmpty!29472 (getPair!912 (apply!13013 lm!2473 lt!1953888) key!5896))))))

(declare-fun bs!1156368 () Bool)

(assert (= bs!1156368 d!1535153))

(assert (=> bs!1156368 m!5778870))

(declare-fun m!5779072 () Bool)

(assert (=> bs!1156368 m!5779072))

(assert (=> b!4796490 d!1535153))

(declare-fun e!2995220 () Bool)

(declare-fun b!4796694 () Bool)

(assert (=> b!4796694 (= e!2995220 (not (containsKey!3986 (apply!13013 lm!2473 lt!1953888) key!5896)))))

(declare-fun lt!1953993 () Option!13136)

(declare-fun b!4796695 () Bool)

(declare-fun e!2995219 () Bool)

(declare-fun contains!17910 (List!54390 tuple2!56928) Bool)

(assert (=> b!4796695 (= e!2995219 (contains!17910 (apply!13013 lm!2473 lt!1953888) (get!18516 lt!1953993)))))

(declare-fun b!4796696 () Bool)

(declare-fun e!2995221 () Option!13136)

(assert (=> b!4796696 (= e!2995221 (getPair!912 (t!361840 (apply!13013 lm!2473 lt!1953888)) key!5896))))

(declare-fun b!4796697 () Bool)

(declare-fun e!2995222 () Option!13136)

(assert (=> b!4796697 (= e!2995222 (Some!13135 (h!60698 (apply!13013 lm!2473 lt!1953888))))))

(declare-fun d!1535155 () Bool)

(declare-fun e!2995223 () Bool)

(assert (=> d!1535155 e!2995223))

(declare-fun res!2039452 () Bool)

(assert (=> d!1535155 (=> res!2039452 e!2995223)))

(assert (=> d!1535155 (= res!2039452 e!2995220)))

(declare-fun res!2039451 () Bool)

(assert (=> d!1535155 (=> (not res!2039451) (not e!2995220))))

(assert (=> d!1535155 (= res!2039451 (isEmpty!29472 lt!1953993))))

(assert (=> d!1535155 (= lt!1953993 e!2995222)))

(declare-fun c!817541 () Bool)

(assert (=> d!1535155 (= c!817541 (and ((_ is Cons!54266) (apply!13013 lm!2473 lt!1953888)) (= (_1!31758 (h!60698 (apply!13013 lm!2473 lt!1953888))) key!5896)))))

(declare-fun noDuplicateKeys!2351 (List!54390) Bool)

(assert (=> d!1535155 (noDuplicateKeys!2351 (apply!13013 lm!2473 lt!1953888))))

(assert (=> d!1535155 (= (getPair!912 (apply!13013 lm!2473 lt!1953888) key!5896) lt!1953993)))

(declare-fun b!4796698 () Bool)

(declare-fun res!2039454 () Bool)

(assert (=> b!4796698 (=> (not res!2039454) (not e!2995219))))

(assert (=> b!4796698 (= res!2039454 (= (_1!31758 (get!18516 lt!1953993)) key!5896))))

(declare-fun b!4796699 () Bool)

(assert (=> b!4796699 (= e!2995222 e!2995221)))

(declare-fun c!817540 () Bool)

(assert (=> b!4796699 (= c!817540 ((_ is Cons!54266) (apply!13013 lm!2473 lt!1953888)))))

(declare-fun b!4796700 () Bool)

(assert (=> b!4796700 (= e!2995221 None!13135)))

(declare-fun b!4796701 () Bool)

(assert (=> b!4796701 (= e!2995223 e!2995219)))

(declare-fun res!2039453 () Bool)

(assert (=> b!4796701 (=> (not res!2039453) (not e!2995219))))

(assert (=> b!4796701 (= res!2039453 (isDefined!10277 lt!1953993))))

(assert (= (and d!1535155 c!817541) b!4796697))

(assert (= (and d!1535155 (not c!817541)) b!4796699))

(assert (= (and b!4796699 c!817540) b!4796696))

(assert (= (and b!4796699 (not c!817540)) b!4796700))

(assert (= (and d!1535155 res!2039451) b!4796694))

(assert (= (and d!1535155 (not res!2039452)) b!4796701))

(assert (= (and b!4796701 res!2039453) b!4796698))

(assert (= (and b!4796698 res!2039454) b!4796695))

(declare-fun m!5779074 () Bool)

(assert (=> b!4796698 m!5779074))

(assert (=> b!4796694 m!5778868))

(declare-fun m!5779076 () Bool)

(assert (=> b!4796694 m!5779076))

(declare-fun m!5779078 () Bool)

(assert (=> d!1535155 m!5779078))

(assert (=> d!1535155 m!5778868))

(declare-fun m!5779080 () Bool)

(assert (=> d!1535155 m!5779080))

(declare-fun m!5779082 () Bool)

(assert (=> b!4796701 m!5779082))

(declare-fun m!5779084 () Bool)

(assert (=> b!4796696 m!5779084))

(assert (=> b!4796695 m!5779074))

(assert (=> b!4796695 m!5778868))

(assert (=> b!4796695 m!5779074))

(declare-fun m!5779086 () Bool)

(assert (=> b!4796695 m!5779086))

(assert (=> b!4796490 d!1535155))

(declare-fun d!1535157 () Bool)

(declare-fun get!18517 (Option!13140) List!54390)

(assert (=> d!1535157 (= (apply!13013 lm!2473 lt!1953888) (get!18517 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888)))))

(declare-fun bs!1156369 () Bool)

(assert (= bs!1156369 d!1535157))

(assert (=> bs!1156369 m!5779040))

(assert (=> bs!1156369 m!5779040))

(declare-fun m!5779088 () Bool)

(assert (=> bs!1156369 m!5779088))

(assert (=> b!4796490 d!1535157))

(declare-fun d!1535159 () Bool)

(declare-fun res!2039459 () Bool)

(declare-fun e!2995228 () Bool)

(assert (=> d!1535159 (=> res!2039459 e!2995228)))

(assert (=> d!1535159 (= res!2039459 (and ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lm!2473)))) (= (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))) key!5896)))))

(assert (=> d!1535159 (= (containsKey!3986 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896) e!2995228)))

(declare-fun b!4796706 () Bool)

(declare-fun e!2995229 () Bool)

(assert (=> b!4796706 (= e!2995228 e!2995229)))

(declare-fun res!2039460 () Bool)

(assert (=> b!4796706 (=> (not res!2039460) (not e!2995229))))

(assert (=> b!4796706 (= res!2039460 ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(declare-fun b!4796707 () Bool)

(assert (=> b!4796707 (= e!2995229 (containsKey!3986 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))) key!5896))))

(assert (= (and d!1535159 (not res!2039459)) b!4796706))

(assert (= (and b!4796706 res!2039460) b!4796707))

(declare-fun m!5779090 () Bool)

(assert (=> b!4796707 m!5779090))

(assert (=> b!4796485 d!1535159))

(declare-fun b!4796712 () Bool)

(declare-fun e!2995232 () Bool)

(declare-fun tp!1358197 () Bool)

(declare-fun tp!1358198 () Bool)

(assert (=> b!4796712 (= e!2995232 (and tp!1358197 tp!1358198))))

(assert (=> b!4796486 (= tp!1358186 e!2995232)))

(assert (= (and b!4796486 ((_ is Cons!54267) (toList!6959 lm!2473))) b!4796712))

(declare-fun b_lambda!187199 () Bool)

(assert (= b_lambda!187187 (or start!494494 b_lambda!187199)))

(declare-fun bs!1156370 () Bool)

(declare-fun d!1535161 () Bool)

(assert (= bs!1156370 (and d!1535161 start!494494)))

(assert (=> bs!1156370 (= (dynLambda!22081 lambda!231483 (h!60699 (toList!6959 lt!1953887))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lt!1953887)))))))

(declare-fun m!5779092 () Bool)

(assert (=> bs!1156370 m!5779092))

(assert (=> b!4796593 d!1535161))

(declare-fun b_lambda!187201 () Bool)

(assert (= b_lambda!187189 (or start!494494 b_lambda!187201)))

(declare-fun bs!1156371 () Bool)

(declare-fun d!1535163 () Bool)

(assert (= bs!1156371 (and d!1535163 start!494494)))

(assert (=> bs!1156371 (= (dynLambda!22081 lambda!231483 (h!60699 (toList!6959 lm!2473))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(declare-fun m!5779094 () Bool)

(assert (=> bs!1156371 m!5779094))

(assert (=> b!4796595 d!1535163))

(check-sat (not b!4796549) (not b!4796696) (not b!4796712) (not d!1535141) (not d!1535157) (not d!1535137) (not b!4796659) (not b!4796694) (not b_lambda!187201) (not b!4796701) tp_is_empty!33623 (not d!1535133) (not b!4796603) (not b!4796555) (not b!4796698) (not d!1535089) (not b!4796707) (not d!1535107) (not b!4796550) (not b!4796547) (not b!4796605) (not d!1535125) (not b!4796643) tp_is_empty!33621 (not b!4796644) (not d!1535153) (not d!1535155) (not b!4796635) (not b!4796657) (not b!4796664) (not b!4796548) (not b!4796594) (not b!4796587) (not bs!1156371) (not bs!1156370) (not d!1535143) (not d!1535139) (not b!4796554) (not b!4796553) (not b_lambda!187199) (not d!1535121) (not bm!335210) (not b!4796695) (not b!4796642) (not b!4796662) (not d!1535127) (not b!4796596))
(check-sat)
(get-model)

(declare-fun d!1535165 () Bool)

(declare-fun lt!1953996 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9725 (List!54392) (InoxSet K!15839))

(assert (=> d!1535165 (= lt!1953996 (select (content!9725 (keys!19826 (extractMap!2467 (toList!6959 lm!2473)))) key!5896))))

(declare-fun e!2995238 () Bool)

(assert (=> d!1535165 (= lt!1953996 e!2995238)))

(declare-fun res!2039465 () Bool)

(assert (=> d!1535165 (=> (not res!2039465) (not e!2995238))))

(assert (=> d!1535165 (= res!2039465 ((_ is Cons!54268) (keys!19826 (extractMap!2467 (toList!6959 lm!2473)))))))

(assert (=> d!1535165 (= (contains!17907 (keys!19826 (extractMap!2467 (toList!6959 lm!2473))) key!5896) lt!1953996)))

(declare-fun b!4796717 () Bool)

(declare-fun e!2995237 () Bool)

(assert (=> b!4796717 (= e!2995238 e!2995237)))

(declare-fun res!2039466 () Bool)

(assert (=> b!4796717 (=> res!2039466 e!2995237)))

(assert (=> b!4796717 (= res!2039466 (= (h!60700 (keys!19826 (extractMap!2467 (toList!6959 lm!2473)))) key!5896))))

(declare-fun b!4796718 () Bool)

(assert (=> b!4796718 (= e!2995237 (contains!17907 (t!361842 (keys!19826 (extractMap!2467 (toList!6959 lm!2473)))) key!5896))))

(assert (= (and d!1535165 res!2039465) b!4796717))

(assert (= (and b!4796717 (not res!2039466)) b!4796718))

(assert (=> d!1535165 m!5778922))

(declare-fun m!5779096 () Bool)

(assert (=> d!1535165 m!5779096))

(declare-fun m!5779098 () Bool)

(assert (=> d!1535165 m!5779098))

(declare-fun m!5779100 () Bool)

(assert (=> b!4796718 m!5779100))

(assert (=> b!4796547 d!1535165))

(declare-fun b!4796726 () Bool)

(assert (=> b!4796726 true))

(declare-fun d!1535167 () Bool)

(declare-fun e!2995241 () Bool)

(assert (=> d!1535167 e!2995241))

(declare-fun res!2039474 () Bool)

(assert (=> d!1535167 (=> (not res!2039474) (not e!2995241))))

(declare-fun lt!1953999 () List!54392)

(declare-fun noDuplicate!924 (List!54392) Bool)

(assert (=> d!1535167 (= res!2039474 (noDuplicate!924 lt!1953999))))

(assert (=> d!1535167 (= lt!1953999 (getKeysList!1087 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))

(assert (=> d!1535167 (= (keys!19826 (extractMap!2467 (toList!6959 lm!2473))) lt!1953999)))

(declare-fun b!4796725 () Bool)

(declare-fun res!2039473 () Bool)

(assert (=> b!4796725 (=> (not res!2039473) (not e!2995241))))

(declare-fun length!704 (List!54392) Int)

(declare-fun length!705 (List!54390) Int)

(assert (=> b!4796725 (= res!2039473 (= (length!704 lt!1953999) (length!705 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))))

(declare-fun res!2039475 () Bool)

(assert (=> b!4796726 (=> (not res!2039475) (not e!2995241))))

(declare-fun lambda!231512 () Int)

(declare-fun forall!12288 (List!54392 Int) Bool)

(assert (=> b!4796726 (= res!2039475 (forall!12288 lt!1953999 lambda!231512))))

(declare-fun lambda!231513 () Int)

(declare-fun b!4796727 () Bool)

(declare-fun map!12255 (List!54390 Int) List!54392)

(assert (=> b!4796727 (= e!2995241 (= (content!9725 lt!1953999) (content!9725 (map!12255 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) lambda!231513))))))

(assert (= (and d!1535167 res!2039474) b!4796725))

(assert (= (and b!4796725 res!2039473) b!4796726))

(assert (= (and b!4796726 res!2039475) b!4796727))

(declare-fun m!5779102 () Bool)

(assert (=> d!1535167 m!5779102))

(assert (=> d!1535167 m!5778928))

(declare-fun m!5779104 () Bool)

(assert (=> b!4796725 m!5779104))

(declare-fun m!5779106 () Bool)

(assert (=> b!4796725 m!5779106))

(declare-fun m!5779108 () Bool)

(assert (=> b!4796726 m!5779108))

(declare-fun m!5779110 () Bool)

(assert (=> b!4796727 m!5779110))

(declare-fun m!5779112 () Bool)

(assert (=> b!4796727 m!5779112))

(assert (=> b!4796727 m!5779112))

(declare-fun m!5779114 () Bool)

(assert (=> b!4796727 m!5779114))

(assert (=> b!4796547 d!1535167))

(declare-fun d!1535169 () Bool)

(declare-fun res!2039476 () Bool)

(declare-fun e!2995242 () Bool)

(assert (=> d!1535169 (=> res!2039476 e!2995242)))

(assert (=> d!1535169 (= res!2039476 ((_ is Nil!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535169 (= (forall!12287 (toList!6959 lm!2473) lambda!231507) e!2995242)))

(declare-fun b!4796730 () Bool)

(declare-fun e!2995243 () Bool)

(assert (=> b!4796730 (= e!2995242 e!2995243)))

(declare-fun res!2039477 () Bool)

(assert (=> b!4796730 (=> (not res!2039477) (not e!2995243))))

(assert (=> b!4796730 (= res!2039477 (dynLambda!22081 lambda!231507 (h!60699 (toList!6959 lm!2473))))))

(declare-fun b!4796731 () Bool)

(assert (=> b!4796731 (= e!2995243 (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231507))))

(assert (= (and d!1535169 (not res!2039476)) b!4796730))

(assert (= (and b!4796730 res!2039477) b!4796731))

(declare-fun b_lambda!187203 () Bool)

(assert (=> (not b_lambda!187203) (not b!4796730)))

(declare-fun m!5779116 () Bool)

(assert (=> b!4796730 m!5779116))

(declare-fun m!5779118 () Bool)

(assert (=> b!4796731 m!5779118))

(assert (=> d!1535143 d!1535169))

(declare-fun d!1535171 () Bool)

(assert (=> d!1535171 (isDefined!10279 (getValueByKey!2373 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(declare-fun lt!1954002 () Unit!140318)

(declare-fun choose!34608 (List!54390 K!15839) Unit!140318)

(assert (=> d!1535171 (= lt!1954002 (choose!34608 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(assert (=> d!1535171 (invariantList!1741 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))

(assert (=> d!1535171 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2164 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896) lt!1954002)))

(declare-fun bs!1156372 () Bool)

(assert (= bs!1156372 d!1535171))

(assert (=> bs!1156372 m!5778932))

(assert (=> bs!1156372 m!5778932))

(assert (=> bs!1156372 m!5778934))

(declare-fun m!5779120 () Bool)

(assert (=> bs!1156372 m!5779120))

(declare-fun m!5779122 () Bool)

(assert (=> bs!1156372 m!5779122))

(assert (=> b!4796548 d!1535171))

(declare-fun d!1535173 () Bool)

(declare-fun isEmpty!29473 (Option!13138) Bool)

(assert (=> d!1535173 (= (isDefined!10279 (getValueByKey!2373 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896)) (not (isEmpty!29473 (getValueByKey!2373 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))))

(declare-fun bs!1156373 () Bool)

(assert (= bs!1156373 d!1535173))

(assert (=> bs!1156373 m!5778932))

(declare-fun m!5779124 () Bool)

(assert (=> bs!1156373 m!5779124))

(assert (=> b!4796548 d!1535173))

(declare-fun b!4796741 () Bool)

(declare-fun e!2995248 () Option!13138)

(declare-fun e!2995249 () Option!13138)

(assert (=> b!4796741 (= e!2995248 e!2995249)))

(declare-fun c!817547 () Bool)

(assert (=> b!4796741 (= c!817547 (and ((_ is Cons!54266) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (not (= (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) key!5896))))))

(declare-fun d!1535175 () Bool)

(declare-fun c!817546 () Bool)

(assert (=> d!1535175 (= c!817546 (and ((_ is Cons!54266) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (= (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) key!5896)))))

(assert (=> d!1535175 (= (getValueByKey!2373 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896) e!2995248)))

(declare-fun b!4796742 () Bool)

(assert (=> b!4796742 (= e!2995249 (getValueByKey!2373 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) key!5896))))

(declare-fun b!4796740 () Bool)

(assert (=> b!4796740 (= e!2995248 (Some!13137 (_2!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))))

(declare-fun b!4796743 () Bool)

(assert (=> b!4796743 (= e!2995249 None!13137)))

(assert (= (and d!1535175 c!817546) b!4796740))

(assert (= (and d!1535175 (not c!817546)) b!4796741))

(assert (= (and b!4796741 c!817547) b!4796742))

(assert (= (and b!4796741 (not c!817547)) b!4796743))

(declare-fun m!5779126 () Bool)

(assert (=> b!4796742 m!5779126))

(assert (=> b!4796548 d!1535175))

(declare-fun d!1535177 () Bool)

(assert (=> d!1535177 (contains!17907 (getKeysList!1087 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) key!5896)))

(declare-fun lt!1954005 () Unit!140318)

(declare-fun choose!34609 (List!54390 K!15839) Unit!140318)

(assert (=> d!1535177 (= lt!1954005 (choose!34609 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(assert (=> d!1535177 (invariantList!1741 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))

(assert (=> d!1535177 (= (lemmaInListThenGetKeysListContains!1082 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896) lt!1954005)))

(declare-fun bs!1156374 () Bool)

(assert (= bs!1156374 d!1535177))

(assert (=> bs!1156374 m!5778928))

(assert (=> bs!1156374 m!5778928))

(declare-fun m!5779128 () Bool)

(assert (=> bs!1156374 m!5779128))

(declare-fun m!5779130 () Bool)

(assert (=> bs!1156374 m!5779130))

(assert (=> bs!1156374 m!5779122))

(assert (=> b!4796548 d!1535177))

(assert (=> d!1535125 d!1535123))

(declare-fun d!1535179 () Bool)

(assert (=> d!1535179 (containsKeyBiggerList!582 (toList!6959 lm!2473) key!5896)))

(assert (=> d!1535179 true))

(declare-fun _$33!847 () Unit!140318)

(assert (=> d!1535179 (= (choose!34606 lm!2473 key!5896 hashF!1559) _$33!847)))

(declare-fun bs!1156375 () Bool)

(assert (= bs!1156375 d!1535179))

(assert (=> bs!1156375 m!5778856))

(assert (=> d!1535125 d!1535179))

(declare-fun d!1535181 () Bool)

(declare-fun res!2039478 () Bool)

(declare-fun e!2995250 () Bool)

(assert (=> d!1535181 (=> res!2039478 e!2995250)))

(assert (=> d!1535181 (= res!2039478 ((_ is Nil!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535181 (= (forall!12287 (toList!6959 lm!2473) lambda!231498) e!2995250)))

(declare-fun b!4796744 () Bool)

(declare-fun e!2995251 () Bool)

(assert (=> b!4796744 (= e!2995250 e!2995251)))

(declare-fun res!2039479 () Bool)

(assert (=> b!4796744 (=> (not res!2039479) (not e!2995251))))

(assert (=> b!4796744 (= res!2039479 (dynLambda!22081 lambda!231498 (h!60699 (toList!6959 lm!2473))))))

(declare-fun b!4796745 () Bool)

(assert (=> b!4796745 (= e!2995251 (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231498))))

(assert (= (and d!1535181 (not res!2039478)) b!4796744))

(assert (= (and b!4796744 res!2039479) b!4796745))

(declare-fun b_lambda!187205 () Bool)

(assert (=> (not b_lambda!187205) (not b!4796744)))

(declare-fun m!5779132 () Bool)

(assert (=> b!4796744 m!5779132))

(declare-fun m!5779134 () Bool)

(assert (=> b!4796745 m!5779134))

(assert (=> d!1535125 d!1535181))

(declare-fun d!1535183 () Bool)

(declare-fun isEmpty!29474 (Option!13140) Bool)

(assert (=> d!1535183 (= (isDefined!10281 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888)) (not (isEmpty!29474 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888))))))

(declare-fun bs!1156376 () Bool)

(assert (= bs!1156376 d!1535183))

(assert (=> bs!1156376 m!5779040))

(declare-fun m!5779136 () Bool)

(assert (=> bs!1156376 m!5779136))

(assert (=> b!4796659 d!1535183))

(declare-fun b!4796754 () Bool)

(declare-fun e!2995256 () Option!13140)

(assert (=> b!4796754 (= e!2995256 (Some!13139 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(declare-fun b!4796757 () Bool)

(declare-fun e!2995257 () Option!13140)

(assert (=> b!4796757 (= e!2995257 None!13139)))

(declare-fun d!1535185 () Bool)

(declare-fun c!817552 () Bool)

(assert (=> d!1535185 (= c!817552 (and ((_ is Cons!54267) (toList!6959 lm!2473)) (= (_1!31759 (h!60699 (toList!6959 lm!2473))) lt!1953888)))))

(assert (=> d!1535185 (= (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888) e!2995256)))

(declare-fun b!4796755 () Bool)

(assert (=> b!4796755 (= e!2995256 e!2995257)))

(declare-fun c!817553 () Bool)

(assert (=> b!4796755 (= c!817553 (and ((_ is Cons!54267) (toList!6959 lm!2473)) (not (= (_1!31759 (h!60699 (toList!6959 lm!2473))) lt!1953888))))))

(declare-fun b!4796756 () Bool)

(assert (=> b!4796756 (= e!2995257 (getValueByKey!2375 (t!361841 (toList!6959 lm!2473)) lt!1953888))))

(assert (= (and d!1535185 c!817552) b!4796754))

(assert (= (and d!1535185 (not c!817552)) b!4796755))

(assert (= (and b!4796755 c!817553) b!4796756))

(assert (= (and b!4796755 (not c!817553)) b!4796757))

(declare-fun m!5779138 () Bool)

(assert (=> b!4796756 m!5779138))

(assert (=> b!4796659 d!1535185))

(declare-fun d!1535187 () Bool)

(declare-fun res!2039480 () Bool)

(declare-fun e!2995258 () Bool)

(assert (=> d!1535187 (=> res!2039480 e!2995258)))

(assert (=> d!1535187 (= res!2039480 ((_ is Nil!54267) (t!361841 (toList!6959 lt!1953887))))))

(assert (=> d!1535187 (= (forall!12287 (t!361841 (toList!6959 lt!1953887)) lambda!231483) e!2995258)))

(declare-fun b!4796758 () Bool)

(declare-fun e!2995259 () Bool)

(assert (=> b!4796758 (= e!2995258 e!2995259)))

(declare-fun res!2039481 () Bool)

(assert (=> b!4796758 (=> (not res!2039481) (not e!2995259))))

(assert (=> b!4796758 (= res!2039481 (dynLambda!22081 lambda!231483 (h!60699 (t!361841 (toList!6959 lt!1953887)))))))

(declare-fun b!4796759 () Bool)

(assert (=> b!4796759 (= e!2995259 (forall!12287 (t!361841 (t!361841 (toList!6959 lt!1953887))) lambda!231483))))

(assert (= (and d!1535187 (not res!2039480)) b!4796758))

(assert (= (and b!4796758 res!2039481) b!4796759))

(declare-fun b_lambda!187207 () Bool)

(assert (=> (not b_lambda!187207) (not b!4796758)))

(declare-fun m!5779140 () Bool)

(assert (=> b!4796758 m!5779140))

(declare-fun m!5779142 () Bool)

(assert (=> b!4796759 m!5779142))

(assert (=> b!4796594 d!1535187))

(declare-fun d!1535189 () Bool)

(declare-fun res!2039482 () Bool)

(declare-fun e!2995260 () Bool)

(assert (=> d!1535189 (=> res!2039482 e!2995260)))

(assert (=> d!1535189 (= res!2039482 (and ((_ is Cons!54266) (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473))))) (= (_1!31758 (h!60698 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))))) key!5896)))))

(assert (=> d!1535189 (= (containsKey!3986 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))) key!5896) e!2995260)))

(declare-fun b!4796760 () Bool)

(declare-fun e!2995261 () Bool)

(assert (=> b!4796760 (= e!2995260 e!2995261)))

(declare-fun res!2039483 () Bool)

(assert (=> b!4796760 (=> (not res!2039483) (not e!2995261))))

(assert (=> b!4796760 (= res!2039483 ((_ is Cons!54266) (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(declare-fun b!4796761 () Bool)

(assert (=> b!4796761 (= e!2995261 (containsKey!3986 (t!361840 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473))))) key!5896))))

(assert (= (and d!1535189 (not res!2039482)) b!4796760))

(assert (= (and b!4796760 res!2039483) b!4796761))

(declare-fun m!5779144 () Bool)

(assert (=> b!4796761 m!5779144))

(assert (=> b!4796707 d!1535189))

(declare-fun d!1535191 () Bool)

(assert (=> d!1535191 (= (isEmpty!29472 (getPair!912 (apply!13013 lm!2473 lt!1953888) key!5896)) (not ((_ is Some!13135) (getPair!912 (apply!13013 lm!2473 lt!1953888) key!5896))))))

(assert (=> d!1535153 d!1535191))

(declare-fun d!1535193 () Bool)

(assert (=> d!1535193 (isDefined!10281 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888))))

(declare-fun lt!1954008 () Unit!140318)

(declare-fun choose!34610 (List!54391 (_ BitVec 64)) Unit!140318)

(assert (=> d!1535193 (= lt!1954008 (choose!34610 (toList!6959 lm!2473) lt!1953888))))

(declare-fun e!2995264 () Bool)

(assert (=> d!1535193 e!2995264))

(declare-fun res!2039486 () Bool)

(assert (=> d!1535193 (=> (not res!2039486) (not e!2995264))))

(assert (=> d!1535193 (= res!2039486 (isStrictlySorted!888 (toList!6959 lm!2473)))))

(assert (=> d!1535193 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2166 (toList!6959 lm!2473) lt!1953888) lt!1954008)))

(declare-fun b!4796764 () Bool)

(assert (=> b!4796764 (= e!2995264 (containsKey!3990 (toList!6959 lm!2473) lt!1953888))))

(assert (= (and d!1535193 res!2039486) b!4796764))

(assert (=> d!1535193 m!5779040))

(assert (=> d!1535193 m!5779040))

(assert (=> d!1535193 m!5779042))

(declare-fun m!5779146 () Bool)

(assert (=> d!1535193 m!5779146))

(assert (=> d!1535193 m!5778982))

(assert (=> b!4796764 m!5779034))

(assert (=> b!4796657 d!1535193))

(assert (=> b!4796657 d!1535183))

(assert (=> b!4796657 d!1535185))

(declare-fun d!1535195 () Bool)

(declare-fun res!2039491 () Bool)

(declare-fun e!2995269 () Bool)

(assert (=> d!1535195 (=> res!2039491 e!2995269)))

(assert (=> d!1535195 (= res!2039491 (and ((_ is Cons!54267) (toList!6959 lm!2473)) (= (_1!31759 (h!60699 (toList!6959 lm!2473))) lt!1953888)))))

(assert (=> d!1535195 (= (containsKey!3990 (toList!6959 lm!2473) lt!1953888) e!2995269)))

(declare-fun b!4796769 () Bool)

(declare-fun e!2995270 () Bool)

(assert (=> b!4796769 (= e!2995269 e!2995270)))

(declare-fun res!2039492 () Bool)

(assert (=> b!4796769 (=> (not res!2039492) (not e!2995270))))

(assert (=> b!4796769 (= res!2039492 (and (or (not ((_ is Cons!54267) (toList!6959 lm!2473))) (bvsle (_1!31759 (h!60699 (toList!6959 lm!2473))) lt!1953888)) ((_ is Cons!54267) (toList!6959 lm!2473)) (bvslt (_1!31759 (h!60699 (toList!6959 lm!2473))) lt!1953888)))))

(declare-fun b!4796770 () Bool)

(assert (=> b!4796770 (= e!2995270 (containsKey!3990 (t!361841 (toList!6959 lm!2473)) lt!1953888))))

(assert (= (and d!1535195 (not res!2039491)) b!4796769))

(assert (= (and b!4796769 res!2039492) b!4796770))

(declare-fun m!5779148 () Bool)

(assert (=> b!4796770 m!5779148))

(assert (=> d!1535133 d!1535195))

(declare-fun d!1535197 () Bool)

(declare-fun res!2039497 () Bool)

(declare-fun e!2995275 () Bool)

(assert (=> d!1535197 (=> res!2039497 e!2995275)))

(assert (=> d!1535197 (= res!2039497 (or ((_ is Nil!54267) (toList!6959 lm!2473)) ((_ is Nil!54267) (t!361841 (toList!6959 lm!2473)))))))

(assert (=> d!1535197 (= (isStrictlySorted!888 (toList!6959 lm!2473)) e!2995275)))

(declare-fun b!4796775 () Bool)

(declare-fun e!2995276 () Bool)

(assert (=> b!4796775 (= e!2995275 e!2995276)))

(declare-fun res!2039498 () Bool)

(assert (=> b!4796775 (=> (not res!2039498) (not e!2995276))))

(assert (=> b!4796775 (= res!2039498 (bvslt (_1!31759 (h!60699 (toList!6959 lm!2473))) (_1!31759 (h!60699 (t!361841 (toList!6959 lm!2473))))))))

(declare-fun b!4796776 () Bool)

(assert (=> b!4796776 (= e!2995276 (isStrictlySorted!888 (t!361841 (toList!6959 lm!2473))))))

(assert (= (and d!1535197 (not res!2039497)) b!4796775))

(assert (= (and b!4796775 res!2039498) b!4796776))

(declare-fun m!5779152 () Bool)

(assert (=> b!4796776 m!5779152))

(assert (=> d!1535121 d!1535197))

(declare-fun d!1535203 () Bool)

(declare-fun choose!34612 (Hashable!6940 K!15839) (_ BitVec 64))

(assert (=> d!1535203 (= (hash!4987 hashF!1559 key!5896) (choose!34612 hashF!1559 key!5896))))

(declare-fun bs!1156378 () Bool)

(assert (= bs!1156378 d!1535203))

(declare-fun m!5779158 () Bool)

(assert (=> bs!1156378 m!5779158))

(assert (=> d!1535137 d!1535203))

(declare-fun d!1535207 () Bool)

(assert (=> d!1535207 (= (isEmpty!29472 lt!1953993) (not ((_ is Some!13135) lt!1953993)))))

(assert (=> d!1535155 d!1535207))

(declare-fun d!1535209 () Bool)

(declare-fun res!2039509 () Bool)

(declare-fun e!2995287 () Bool)

(assert (=> d!1535209 (=> res!2039509 e!2995287)))

(assert (=> d!1535209 (= res!2039509 (not ((_ is Cons!54266) (apply!13013 lm!2473 lt!1953888))))))

(assert (=> d!1535209 (= (noDuplicateKeys!2351 (apply!13013 lm!2473 lt!1953888)) e!2995287)))

(declare-fun b!4796787 () Bool)

(declare-fun e!2995288 () Bool)

(assert (=> b!4796787 (= e!2995287 e!2995288)))

(declare-fun res!2039510 () Bool)

(assert (=> b!4796787 (=> (not res!2039510) (not e!2995288))))

(assert (=> b!4796787 (= res!2039510 (not (containsKey!3986 (t!361840 (apply!13013 lm!2473 lt!1953888)) (_1!31758 (h!60698 (apply!13013 lm!2473 lt!1953888))))))))

(declare-fun b!4796788 () Bool)

(assert (=> b!4796788 (= e!2995288 (noDuplicateKeys!2351 (t!361840 (apply!13013 lm!2473 lt!1953888))))))

(assert (= (and d!1535209 (not res!2039509)) b!4796787))

(assert (= (and b!4796787 res!2039510) b!4796788))

(declare-fun m!5779160 () Bool)

(assert (=> b!4796787 m!5779160))

(declare-fun m!5779162 () Bool)

(assert (=> b!4796788 m!5779162))

(assert (=> d!1535155 d!1535209))

(declare-fun b!4796859 () Bool)

(assert (=> b!4796859 true))

(declare-fun bs!1156385 () Bool)

(declare-fun b!4796862 () Bool)

(assert (= bs!1156385 (and b!4796862 b!4796859)))

(declare-fun lambda!231549 () Int)

(declare-fun lambda!231548 () Int)

(assert (=> bs!1156385 (= lambda!231549 lambda!231548)))

(assert (=> b!4796862 true))

(declare-fun lambda!231550 () Int)

(declare-fun lt!1954083 () ListMap!6431)

(assert (=> bs!1156385 (= (= lt!1954083 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) (= lambda!231550 lambda!231548))))

(assert (=> b!4796862 (= (= lt!1954083 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) (= lambda!231550 lambda!231549))))

(assert (=> b!4796862 true))

(declare-fun bs!1156386 () Bool)

(declare-fun d!1535211 () Bool)

(assert (= bs!1156386 (and d!1535211 b!4796859)))

(declare-fun lambda!231551 () Int)

(declare-fun lt!1954084 () ListMap!6431)

(assert (=> bs!1156386 (= (= lt!1954084 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) (= lambda!231551 lambda!231548))))

(declare-fun bs!1156387 () Bool)

(assert (= bs!1156387 (and d!1535211 b!4796862)))

(assert (=> bs!1156387 (= (= lt!1954084 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) (= lambda!231551 lambda!231549))))

(assert (=> bs!1156387 (= (= lt!1954084 lt!1954083) (= lambda!231551 lambda!231550))))

(assert (=> d!1535211 true))

(declare-fun e!2995336 () ListMap!6431)

(assert (=> b!4796859 (= e!2995336 (extractMap!2467 (t!361841 (toList!6959 lm!2473))))))

(declare-fun lt!1954079 () Unit!140318)

(declare-fun call!335227 () Unit!140318)

(assert (=> b!4796859 (= lt!1954079 call!335227)))

(declare-fun call!335225 () Bool)

(assert (=> b!4796859 call!335225))

(declare-fun lt!1954077 () Unit!140318)

(assert (=> b!4796859 (= lt!1954077 lt!1954079)))

(declare-fun call!335226 () Bool)

(assert (=> b!4796859 call!335226))

(declare-fun lt!1954069 () Unit!140318)

(declare-fun Unit!140328 () Unit!140318)

(assert (=> b!4796859 (= lt!1954069 Unit!140328)))

(declare-fun bm!335220 () Bool)

(declare-fun c!817568 () Bool)

(declare-fun forall!12289 (List!54390 Int) Bool)

(assert (=> bm!335220 (= call!335225 (forall!12289 (toList!6960 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) (ite c!817568 lambda!231548 lambda!231550)))))

(declare-fun e!2995337 () Bool)

(assert (=> d!1535211 e!2995337))

(declare-fun res!2039551 () Bool)

(assert (=> d!1535211 (=> (not res!2039551) (not e!2995337))))

(assert (=> d!1535211 (= res!2039551 (forall!12289 (_2!31759 (h!60699 (toList!6959 lm!2473))) lambda!231551))))

(assert (=> d!1535211 (= lt!1954084 e!2995336)))

(assert (=> d!1535211 (= c!817568 ((_ is Nil!54266) (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(assert (=> d!1535211 (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473))))))

(assert (=> d!1535211 (= (addToMapMapFromBucket!1718 (_2!31759 (h!60699 (toList!6959 lm!2473))) (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) lt!1954084)))

(declare-fun b!4796860 () Bool)

(declare-fun res!2039552 () Bool)

(assert (=> b!4796860 (=> (not res!2039552) (not e!2995337))))

(assert (=> b!4796860 (= res!2039552 (forall!12289 (toList!6960 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) lambda!231551))))

(declare-fun bm!335221 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!950 (ListMap!6431) Unit!140318)

(assert (=> bm!335221 (= call!335227 (lemmaContainsAllItsOwnKeys!950 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))))))

(declare-fun b!4796861 () Bool)

(declare-fun e!2995335 () Bool)

(assert (=> b!4796861 (= e!2995335 call!335225)))

(declare-fun lt!1954073 () ListMap!6431)

(declare-fun bm!335222 () Bool)

(assert (=> bm!335222 (= call!335226 (forall!12289 (ite c!817568 (toList!6960 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) (toList!6960 lt!1954073)) (ite c!817568 lambda!231548 lambda!231550)))))

(assert (=> b!4796862 (= e!2995336 lt!1954083)))

(declare-fun +!2494 (ListMap!6431 tuple2!56928) ListMap!6431)

(assert (=> b!4796862 (= lt!1954073 (+!2494 (extractMap!2467 (t!361841 (toList!6959 lm!2473))) (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(assert (=> b!4796862 (= lt!1954083 (addToMapMapFromBucket!1718 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))) (+!2494 (extractMap!2467 (t!361841 (toList!6959 lm!2473))) (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))))

(declare-fun lt!1954070 () Unit!140318)

(assert (=> b!4796862 (= lt!1954070 call!335227)))

(assert (=> b!4796862 (forall!12289 (toList!6960 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) lambda!231549)))

(declare-fun lt!1954074 () Unit!140318)

(assert (=> b!4796862 (= lt!1954074 lt!1954070)))

(assert (=> b!4796862 call!335226))

(declare-fun lt!1954075 () Unit!140318)

(declare-fun Unit!140329 () Unit!140318)

(assert (=> b!4796862 (= lt!1954075 Unit!140329)))

(assert (=> b!4796862 (forall!12289 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))) lambda!231550)))

(declare-fun lt!1954076 () Unit!140318)

(declare-fun Unit!140330 () Unit!140318)

(assert (=> b!4796862 (= lt!1954076 Unit!140330)))

(declare-fun lt!1954087 () Unit!140318)

(declare-fun Unit!140331 () Unit!140318)

(assert (=> b!4796862 (= lt!1954087 Unit!140331)))

(declare-fun lt!1954078 () Unit!140318)

(declare-fun forallContained!4190 (List!54390 Int tuple2!56928) Unit!140318)

(assert (=> b!4796862 (= lt!1954078 (forallContained!4190 (toList!6960 lt!1954073) lambda!231550 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(assert (=> b!4796862 (contains!17906 lt!1954073 (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(declare-fun lt!1954071 () Unit!140318)

(declare-fun Unit!140332 () Unit!140318)

(assert (=> b!4796862 (= lt!1954071 Unit!140332)))

(assert (=> b!4796862 (contains!17906 lt!1954083 (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(declare-fun lt!1954081 () Unit!140318)

(declare-fun Unit!140333 () Unit!140318)

(assert (=> b!4796862 (= lt!1954081 Unit!140333)))

(assert (=> b!4796862 (forall!12289 (_2!31759 (h!60699 (toList!6959 lm!2473))) lambda!231550)))

(declare-fun lt!1954072 () Unit!140318)

(declare-fun Unit!140334 () Unit!140318)

(assert (=> b!4796862 (= lt!1954072 Unit!140334)))

(assert (=> b!4796862 (forall!12289 (toList!6960 lt!1954073) lambda!231550)))

(declare-fun lt!1954082 () Unit!140318)

(declare-fun Unit!140335 () Unit!140318)

(assert (=> b!4796862 (= lt!1954082 Unit!140335)))

(declare-fun lt!1954088 () Unit!140318)

(declare-fun Unit!140336 () Unit!140318)

(assert (=> b!4796862 (= lt!1954088 Unit!140336)))

(declare-fun lt!1954080 () Unit!140318)

(declare-fun addForallContainsKeyThenBeforeAdding!949 (ListMap!6431 ListMap!6431 K!15839 V!16085) Unit!140318)

(assert (=> b!4796862 (= lt!1954080 (addForallContainsKeyThenBeforeAdding!949 (extractMap!2467 (t!361841 (toList!6959 lm!2473))) lt!1954083 (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))) (_2!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))))

(assert (=> b!4796862 (forall!12289 (toList!6960 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) lambda!231550)))

(declare-fun lt!1954089 () Unit!140318)

(assert (=> b!4796862 (= lt!1954089 lt!1954080)))

(assert (=> b!4796862 (forall!12289 (toList!6960 (extractMap!2467 (t!361841 (toList!6959 lm!2473)))) lambda!231550)))

(declare-fun lt!1954085 () Unit!140318)

(declare-fun Unit!140337 () Unit!140318)

(assert (=> b!4796862 (= lt!1954085 Unit!140337)))

(declare-fun res!2039553 () Bool)

(assert (=> b!4796862 (= res!2039553 (forall!12289 (_2!31759 (h!60699 (toList!6959 lm!2473))) lambda!231550))))

(assert (=> b!4796862 (=> (not res!2039553) (not e!2995335))))

(assert (=> b!4796862 e!2995335))

(declare-fun lt!1954086 () Unit!140318)

(declare-fun Unit!140338 () Unit!140318)

(assert (=> b!4796862 (= lt!1954086 Unit!140338)))

(declare-fun b!4796863 () Bool)

(assert (=> b!4796863 (= e!2995337 (invariantList!1741 (toList!6960 lt!1954084)))))

(assert (= (and d!1535211 c!817568) b!4796859))

(assert (= (and d!1535211 (not c!817568)) b!4796862))

(assert (= (and b!4796862 res!2039553) b!4796861))

(assert (= (or b!4796859 b!4796861) bm!335220))

(assert (= (or b!4796859 b!4796862) bm!335222))

(assert (= (or b!4796859 b!4796862) bm!335221))

(assert (= (and d!1535211 res!2039551) b!4796860))

(assert (= (and b!4796860 res!2039552) b!4796863))

(declare-fun m!5779220 () Bool)

(assert (=> b!4796862 m!5779220))

(declare-fun m!5779222 () Bool)

(assert (=> b!4796862 m!5779222))

(declare-fun m!5779224 () Bool)

(assert (=> b!4796862 m!5779224))

(declare-fun m!5779226 () Bool)

(assert (=> b!4796862 m!5779226))

(declare-fun m!5779228 () Bool)

(assert (=> b!4796862 m!5779228))

(declare-fun m!5779230 () Bool)

(assert (=> b!4796862 m!5779230))

(assert (=> b!4796862 m!5778970))

(assert (=> b!4796862 m!5779220))

(assert (=> b!4796862 m!5778970))

(declare-fun m!5779232 () Bool)

(assert (=> b!4796862 m!5779232))

(assert (=> b!4796862 m!5779226))

(declare-fun m!5779234 () Bool)

(assert (=> b!4796862 m!5779234))

(declare-fun m!5779236 () Bool)

(assert (=> b!4796862 m!5779236))

(declare-fun m!5779238 () Bool)

(assert (=> b!4796862 m!5779238))

(assert (=> b!4796862 m!5779228))

(declare-fun m!5779240 () Bool)

(assert (=> b!4796862 m!5779240))

(declare-fun m!5779242 () Bool)

(assert (=> bm!335220 m!5779242))

(declare-fun m!5779244 () Bool)

(assert (=> b!4796863 m!5779244))

(declare-fun m!5779246 () Bool)

(assert (=> b!4796860 m!5779246))

(assert (=> bm!335221 m!5778970))

(declare-fun m!5779248 () Bool)

(assert (=> bm!335221 m!5779248))

(declare-fun m!5779250 () Bool)

(assert (=> d!1535211 m!5779250))

(assert (=> d!1535211 m!5779094))

(declare-fun m!5779252 () Bool)

(assert (=> bm!335222 m!5779252))

(assert (=> b!4796587 d!1535211))

(declare-fun bs!1156388 () Bool)

(declare-fun d!1535247 () Bool)

(assert (= bs!1156388 (and d!1535247 d!1535143)))

(declare-fun lambda!231552 () Int)

(assert (=> bs!1156388 (not (= lambda!231552 lambda!231507))))

(declare-fun bs!1156389 () Bool)

(assert (= bs!1156389 (and d!1535247 d!1535127)))

(assert (=> bs!1156389 (= lambda!231552 lambda!231501)))

(declare-fun bs!1156390 () Bool)

(assert (= bs!1156390 (and d!1535247 start!494494)))

(assert (=> bs!1156390 (= lambda!231552 lambda!231483)))

(declare-fun bs!1156391 () Bool)

(assert (= bs!1156391 (and d!1535247 d!1535125)))

(assert (=> bs!1156391 (= lambda!231552 lambda!231498)))

(declare-fun bs!1156392 () Bool)

(assert (= bs!1156392 (and d!1535247 d!1535107)))

(assert (=> bs!1156392 (= lambda!231552 lambda!231495)))

(declare-fun lt!1954090 () ListMap!6431)

(assert (=> d!1535247 (invariantList!1741 (toList!6960 lt!1954090))))

(declare-fun e!2995338 () ListMap!6431)

(assert (=> d!1535247 (= lt!1954090 e!2995338)))

(declare-fun c!817569 () Bool)

(assert (=> d!1535247 (= c!817569 ((_ is Cons!54267) (t!361841 (toList!6959 lm!2473))))))

(assert (=> d!1535247 (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231552)))

(assert (=> d!1535247 (= (extractMap!2467 (t!361841 (toList!6959 lm!2473))) lt!1954090)))

(declare-fun b!4796866 () Bool)

(assert (=> b!4796866 (= e!2995338 (addToMapMapFromBucket!1718 (_2!31759 (h!60699 (t!361841 (toList!6959 lm!2473)))) (extractMap!2467 (t!361841 (t!361841 (toList!6959 lm!2473))))))))

(declare-fun b!4796867 () Bool)

(assert (=> b!4796867 (= e!2995338 (ListMap!6432 Nil!54266))))

(assert (= (and d!1535247 c!817569) b!4796866))

(assert (= (and d!1535247 (not c!817569)) b!4796867))

(declare-fun m!5779254 () Bool)

(assert (=> d!1535247 m!5779254))

(declare-fun m!5779256 () Bool)

(assert (=> d!1535247 m!5779256))

(declare-fun m!5779258 () Bool)

(assert (=> b!4796866 m!5779258))

(assert (=> b!4796866 m!5779258))

(declare-fun m!5779260 () Bool)

(assert (=> b!4796866 m!5779260))

(assert (=> b!4796587 d!1535247))

(declare-fun bs!1156393 () Bool)

(declare-fun b!4796897 () Bool)

(assert (= bs!1156393 (and b!4796897 b!4796726)))

(declare-fun lambda!231587 () Int)

(assert (=> bs!1156393 (= (= (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (= lambda!231587 lambda!231512))))

(assert (=> b!4796897 true))

(declare-fun bs!1156394 () Bool)

(declare-fun b!4796899 () Bool)

(assert (= bs!1156394 (and b!4796899 b!4796726)))

(declare-fun lambda!231588 () Int)

(assert (=> bs!1156394 (= (= (Cons!54266 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (= lambda!231588 lambda!231512))))

(declare-fun bs!1156395 () Bool)

(assert (= bs!1156395 (and b!4796899 b!4796897)))

(assert (=> bs!1156395 (= (= (Cons!54266 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) (= lambda!231588 lambda!231587))))

(assert (=> b!4796899 true))

(declare-fun bs!1156396 () Bool)

(declare-fun b!4796895 () Bool)

(assert (= bs!1156396 (and b!4796895 b!4796726)))

(declare-fun lambda!231591 () Int)

(assert (=> bs!1156396 (= lambda!231591 lambda!231512)))

(declare-fun bs!1156397 () Bool)

(assert (= bs!1156397 (and b!4796895 b!4796897)))

(assert (=> bs!1156397 (= (= (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) (= lambda!231591 lambda!231587))))

(declare-fun bs!1156398 () Bool)

(assert (= bs!1156398 (and b!4796895 b!4796899)))

(assert (=> bs!1156398 (= (= (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) (Cons!54266 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))) (= lambda!231591 lambda!231588))))

(assert (=> b!4796895 true))

(declare-fun bs!1156399 () Bool)

(declare-fun b!4796892 () Bool)

(assert (= bs!1156399 (and b!4796892 b!4796727)))

(declare-fun lambda!231592 () Int)

(assert (=> bs!1156399 (= lambda!231592 lambda!231513)))

(declare-fun e!2995354 () Bool)

(declare-fun lt!1954147 () List!54392)

(assert (=> b!4796892 (= e!2995354 (= (content!9725 lt!1954147) (content!9725 (map!12255 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) lambda!231592))))))

(declare-fun b!4796893 () Bool)

(declare-fun e!2995353 () Unit!140318)

(declare-fun Unit!140339 () Unit!140318)

(assert (=> b!4796893 (= e!2995353 Unit!140339)))

(declare-fun b!4796894 () Bool)

(declare-fun e!2995356 () Unit!140318)

(declare-fun Unit!140340 () Unit!140318)

(assert (=> b!4796894 (= e!2995356 Unit!140340)))

(declare-fun res!2039564 () Bool)

(assert (=> b!4796895 (=> (not res!2039564) (not e!2995354))))

(assert (=> b!4796895 (= res!2039564 (forall!12288 lt!1954147 lambda!231591))))

(declare-fun d!1535249 () Bool)

(assert (=> d!1535249 e!2995354))

(declare-fun res!2039565 () Bool)

(assert (=> d!1535249 (=> (not res!2039565) (not e!2995354))))

(assert (=> d!1535249 (= res!2039565 (noDuplicate!924 lt!1954147))))

(declare-fun e!2995355 () List!54392)

(assert (=> d!1535249 (= lt!1954147 e!2995355)))

(declare-fun c!817579 () Bool)

(assert (=> d!1535249 (= c!817579 ((_ is Cons!54266) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))

(assert (=> d!1535249 (invariantList!1741 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))

(assert (=> d!1535249 (= (getKeysList!1087 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) lt!1954147)))

(declare-fun b!4796896 () Bool)

(declare-fun res!2039566 () Bool)

(assert (=> b!4796896 (=> (not res!2039566) (not e!2995354))))

(assert (=> b!4796896 (= res!2039566 (= (length!704 lt!1954147) (length!705 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))))

(assert (=> b!4796897 false))

(declare-fun lt!1954148 () Unit!140318)

(declare-fun forallContained!4191 (List!54392 Int K!15839) Unit!140318)

(assert (=> b!4796897 (= lt!1954148 (forallContained!4191 (getKeysList!1087 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) lambda!231587 (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))))

(declare-fun Unit!140341 () Unit!140318)

(assert (=> b!4796897 (= e!2995356 Unit!140341)))

(declare-fun b!4796898 () Bool)

(assert (=> b!4796898 (= e!2995355 Nil!54268)))

(assert (=> b!4796899 (= e!2995355 (Cons!54268 (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) (getKeysList!1087 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))))

(declare-fun c!817578 () Bool)

(assert (=> b!4796899 (= c!817578 (containsKey!3988 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))))

(declare-fun lt!1954149 () Unit!140318)

(assert (=> b!4796899 (= lt!1954149 e!2995353)))

(declare-fun c!817580 () Bool)

(assert (=> b!4796899 (= c!817580 (contains!17907 (getKeysList!1087 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))))

(declare-fun lt!1954151 () Unit!140318)

(assert (=> b!4796899 (= lt!1954151 e!2995356)))

(declare-fun lt!1954153 () List!54392)

(assert (=> b!4796899 (= lt!1954153 (getKeysList!1087 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))))

(declare-fun lt!1954150 () Unit!140318)

(declare-fun lemmaForallContainsAddHeadPreserves!339 (List!54390 List!54392 tuple2!56928) Unit!140318)

(assert (=> b!4796899 (= lt!1954150 (lemmaForallContainsAddHeadPreserves!339 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) lt!1954153 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))))

(assert (=> b!4796899 (forall!12288 lt!1954153 lambda!231588)))

(declare-fun lt!1954152 () Unit!140318)

(assert (=> b!4796899 (= lt!1954152 lt!1954150)))

(declare-fun b!4796900 () Bool)

(assert (=> b!4796900 false))

(declare-fun Unit!140343 () Unit!140318)

(assert (=> b!4796900 (= e!2995353 Unit!140343)))

(assert (= (and d!1535249 c!817579) b!4796899))

(assert (= (and d!1535249 (not c!817579)) b!4796898))

(assert (= (and b!4796899 c!817578) b!4796900))

(assert (= (and b!4796899 (not c!817578)) b!4796893))

(assert (= (and b!4796899 c!817580) b!4796897))

(assert (= (and b!4796899 (not c!817580)) b!4796894))

(assert (= (and d!1535249 res!2039565) b!4796896))

(assert (= (and b!4796896 res!2039566) b!4796895))

(assert (= (and b!4796895 res!2039564) b!4796892))

(declare-fun m!5779262 () Bool)

(assert (=> b!4796899 m!5779262))

(declare-fun m!5779264 () Bool)

(assert (=> b!4796899 m!5779264))

(assert (=> b!4796899 m!5779264))

(declare-fun m!5779266 () Bool)

(assert (=> b!4796899 m!5779266))

(declare-fun m!5779268 () Bool)

(assert (=> b!4796899 m!5779268))

(declare-fun m!5779270 () Bool)

(assert (=> b!4796899 m!5779270))

(declare-fun m!5779272 () Bool)

(assert (=> b!4796895 m!5779272))

(assert (=> b!4796897 m!5779264))

(assert (=> b!4796897 m!5779264))

(declare-fun m!5779274 () Bool)

(assert (=> b!4796897 m!5779274))

(declare-fun m!5779276 () Bool)

(assert (=> d!1535249 m!5779276))

(assert (=> d!1535249 m!5779122))

(declare-fun m!5779278 () Bool)

(assert (=> b!4796896 m!5779278))

(assert (=> b!4796896 m!5779106))

(declare-fun m!5779280 () Bool)

(assert (=> b!4796892 m!5779280))

(declare-fun m!5779282 () Bool)

(assert (=> b!4796892 m!5779282))

(assert (=> b!4796892 m!5779282))

(declare-fun m!5779284 () Bool)

(assert (=> b!4796892 m!5779284))

(assert (=> b!4796553 d!1535249))

(declare-fun d!1535251 () Bool)

(assert (=> d!1535251 (isDefined!10281 (getValueByKey!2375 (toList!6959 lt!1953887) lt!1953888))))

(declare-fun lt!1954154 () Unit!140318)

(assert (=> d!1535251 (= lt!1954154 (choose!34610 (toList!6959 lt!1953887) lt!1953888))))

(declare-fun e!2995357 () Bool)

(assert (=> d!1535251 e!2995357))

(declare-fun res!2039569 () Bool)

(assert (=> d!1535251 (=> (not res!2039569) (not e!2995357))))

(assert (=> d!1535251 (= res!2039569 (isStrictlySorted!888 (toList!6959 lt!1953887)))))

(assert (=> d!1535251 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2166 (toList!6959 lt!1953887) lt!1953888) lt!1954154)))

(declare-fun b!4796907 () Bool)

(assert (=> b!4796907 (= e!2995357 (containsKey!3990 (toList!6959 lt!1953887) lt!1953888))))

(assert (= (and d!1535251 res!2039569) b!4796907))

(assert (=> d!1535251 m!5779050))

(assert (=> d!1535251 m!5779050))

(assert (=> d!1535251 m!5779052))

(declare-fun m!5779286 () Bool)

(assert (=> d!1535251 m!5779286))

(declare-fun m!5779288 () Bool)

(assert (=> d!1535251 m!5779288))

(assert (=> b!4796907 m!5779046))

(assert (=> b!4796662 d!1535251))

(declare-fun d!1535253 () Bool)

(assert (=> d!1535253 (= (isDefined!10281 (getValueByKey!2375 (toList!6959 lt!1953887) lt!1953888)) (not (isEmpty!29474 (getValueByKey!2375 (toList!6959 lt!1953887) lt!1953888))))))

(declare-fun bs!1156400 () Bool)

(assert (= bs!1156400 d!1535253))

(assert (=> bs!1156400 m!5779050))

(declare-fun m!5779290 () Bool)

(assert (=> bs!1156400 m!5779290))

(assert (=> b!4796662 d!1535253))

(declare-fun b!4796908 () Bool)

(declare-fun e!2995358 () Option!13140)

(assert (=> b!4796908 (= e!2995358 (Some!13139 (_2!31759 (h!60699 (toList!6959 lt!1953887)))))))

(declare-fun b!4796911 () Bool)

(declare-fun e!2995359 () Option!13140)

(assert (=> b!4796911 (= e!2995359 None!13139)))

(declare-fun d!1535255 () Bool)

(declare-fun c!817581 () Bool)

(assert (=> d!1535255 (= c!817581 (and ((_ is Cons!54267) (toList!6959 lt!1953887)) (= (_1!31759 (h!60699 (toList!6959 lt!1953887))) lt!1953888)))))

(assert (=> d!1535255 (= (getValueByKey!2375 (toList!6959 lt!1953887) lt!1953888) e!2995358)))

(declare-fun b!4796909 () Bool)

(assert (=> b!4796909 (= e!2995358 e!2995359)))

(declare-fun c!817582 () Bool)

(assert (=> b!4796909 (= c!817582 (and ((_ is Cons!54267) (toList!6959 lt!1953887)) (not (= (_1!31759 (h!60699 (toList!6959 lt!1953887))) lt!1953888))))))

(declare-fun b!4796910 () Bool)

(assert (=> b!4796910 (= e!2995359 (getValueByKey!2375 (t!361841 (toList!6959 lt!1953887)) lt!1953888))))

(assert (= (and d!1535255 c!817581) b!4796908))

(assert (= (and d!1535255 (not c!817581)) b!4796909))

(assert (= (and b!4796909 c!817582) b!4796910))

(assert (= (and b!4796909 (not c!817582)) b!4796911))

(declare-fun m!5779292 () Bool)

(assert (=> b!4796910 m!5779292))

(assert (=> b!4796662 d!1535255))

(assert (=> b!4796550 d!1535173))

(assert (=> b!4796550 d!1535175))

(declare-fun d!1535257 () Bool)

(declare-fun res!2039570 () Bool)

(declare-fun e!2995360 () Bool)

(assert (=> d!1535257 (=> res!2039570 e!2995360)))

(assert (=> d!1535257 (= res!2039570 (not ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lt!1953887))))))))

(assert (=> d!1535257 (= (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lt!1953887)))) e!2995360)))

(declare-fun b!4796912 () Bool)

(declare-fun e!2995361 () Bool)

(assert (=> b!4796912 (= e!2995360 e!2995361)))

(declare-fun res!2039571 () Bool)

(assert (=> b!4796912 (=> (not res!2039571) (not e!2995361))))

(assert (=> b!4796912 (= res!2039571 (not (containsKey!3986 (t!361840 (_2!31759 (h!60699 (toList!6959 lt!1953887)))) (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lt!1953887))))))))))

(declare-fun b!4796913 () Bool)

(assert (=> b!4796913 (= e!2995361 (noDuplicateKeys!2351 (t!361840 (_2!31759 (h!60699 (toList!6959 lt!1953887))))))))

(assert (= (and d!1535257 (not res!2039570)) b!4796912))

(assert (= (and b!4796912 res!2039571) b!4796913))

(declare-fun m!5779294 () Bool)

(assert (=> b!4796912 m!5779294))

(declare-fun m!5779296 () Bool)

(assert (=> b!4796913 m!5779296))

(assert (=> bs!1156370 d!1535257))

(declare-fun d!1535259 () Bool)

(declare-fun e!2995362 () Bool)

(assert (=> d!1535259 e!2995362))

(declare-fun res!2039572 () Bool)

(assert (=> d!1535259 (=> res!2039572 e!2995362)))

(declare-fun lt!1954156 () Bool)

(assert (=> d!1535259 (= res!2039572 (not lt!1954156))))

(declare-fun lt!1954158 () Bool)

(assert (=> d!1535259 (= lt!1954156 lt!1954158)))

(declare-fun lt!1954155 () Unit!140318)

(declare-fun e!2995363 () Unit!140318)

(assert (=> d!1535259 (= lt!1954155 e!2995363)))

(declare-fun c!817583 () Bool)

(assert (=> d!1535259 (= c!817583 lt!1954158)))

(assert (=> d!1535259 (= lt!1954158 (containsKey!3990 (toList!6959 lm!2473) (hash!4985 hashF!1559 key!5896)))))

(assert (=> d!1535259 (= (contains!17905 lm!2473 (hash!4985 hashF!1559 key!5896)) lt!1954156)))

(declare-fun b!4796914 () Bool)

(declare-fun lt!1954157 () Unit!140318)

(assert (=> b!4796914 (= e!2995363 lt!1954157)))

(assert (=> b!4796914 (= lt!1954157 (lemmaContainsKeyImpliesGetValueByKeyDefined!2166 (toList!6959 lm!2473) (hash!4985 hashF!1559 key!5896)))))

(assert (=> b!4796914 (isDefined!10281 (getValueByKey!2375 (toList!6959 lm!2473) (hash!4985 hashF!1559 key!5896)))))

(declare-fun b!4796915 () Bool)

(declare-fun Unit!140354 () Unit!140318)

(assert (=> b!4796915 (= e!2995363 Unit!140354)))

(declare-fun b!4796916 () Bool)

(assert (=> b!4796916 (= e!2995362 (isDefined!10281 (getValueByKey!2375 (toList!6959 lm!2473) (hash!4985 hashF!1559 key!5896))))))

(assert (= (and d!1535259 c!817583) b!4796914))

(assert (= (and d!1535259 (not c!817583)) b!4796915))

(assert (= (and d!1535259 (not res!2039572)) b!4796916))

(assert (=> d!1535259 m!5778860))

(declare-fun m!5779298 () Bool)

(assert (=> d!1535259 m!5779298))

(assert (=> b!4796914 m!5778860))

(declare-fun m!5779300 () Bool)

(assert (=> b!4796914 m!5779300))

(assert (=> b!4796914 m!5778860))

(declare-fun m!5779302 () Bool)

(assert (=> b!4796914 m!5779302))

(assert (=> b!4796914 m!5779302))

(declare-fun m!5779304 () Bool)

(assert (=> b!4796914 m!5779304))

(assert (=> b!4796916 m!5778860))

(assert (=> b!4796916 m!5779302))

(assert (=> b!4796916 m!5779302))

(assert (=> b!4796916 m!5779304))

(assert (=> d!1535127 d!1535259))

(assert (=> d!1535127 d!1535137))

(declare-fun d!1535261 () Bool)

(declare-fun e!2995369 () Bool)

(assert (=> d!1535261 e!2995369))

(declare-fun res!2039578 () Bool)

(assert (=> d!1535261 (=> (not res!2039578) (not e!2995369))))

(assert (=> d!1535261 (= res!2039578 (contains!17905 lm!2473 (hash!4985 hashF!1559 key!5896)))))

(assert (=> d!1535261 true))

(declare-fun _$5!229 () Unit!140318)

(assert (=> d!1535261 (= (choose!34607 lm!2473 key!5896 hashF!1559) _$5!229)))

(declare-fun b!4796926 () Bool)

(assert (=> b!4796926 (= e!2995369 (isDefined!10277 (getPair!912 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1535261 res!2039578) b!4796926))

(assert (=> d!1535261 m!5778860))

(assert (=> d!1535261 m!5778860))

(assert (=> d!1535261 m!5779010))

(assert (=> b!4796926 m!5778860))

(assert (=> b!4796926 m!5778860))

(assert (=> b!4796926 m!5779016))

(assert (=> b!4796926 m!5779016))

(assert (=> b!4796926 m!5779018))

(assert (=> b!4796926 m!5779018))

(assert (=> b!4796926 m!5779020))

(assert (=> d!1535127 d!1535261))

(declare-fun d!1535263 () Bool)

(declare-fun res!2039579 () Bool)

(declare-fun e!2995370 () Bool)

(assert (=> d!1535263 (=> res!2039579 e!2995370)))

(assert (=> d!1535263 (= res!2039579 ((_ is Nil!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535263 (= (forall!12287 (toList!6959 lm!2473) lambda!231501) e!2995370)))

(declare-fun b!4796927 () Bool)

(declare-fun e!2995371 () Bool)

(assert (=> b!4796927 (= e!2995370 e!2995371)))

(declare-fun res!2039580 () Bool)

(assert (=> b!4796927 (=> (not res!2039580) (not e!2995371))))

(assert (=> b!4796927 (= res!2039580 (dynLambda!22081 lambda!231501 (h!60699 (toList!6959 lm!2473))))))

(declare-fun b!4796928 () Bool)

(assert (=> b!4796928 (= e!2995371 (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231501))))

(assert (= (and d!1535263 (not res!2039579)) b!4796927))

(assert (= (and b!4796927 res!2039580) b!4796928))

(declare-fun b_lambda!187213 () Bool)

(assert (=> (not b_lambda!187213) (not b!4796927)))

(declare-fun m!5779306 () Bool)

(assert (=> b!4796927 m!5779306))

(declare-fun m!5779308 () Bool)

(assert (=> b!4796928 m!5779308))

(assert (=> d!1535127 d!1535263))

(declare-fun d!1535265 () Bool)

(assert (=> d!1535265 (= (tail!9295 (toList!6959 lm!2473)) (t!361841 (toList!6959 lm!2473)))))

(assert (=> d!1535141 d!1535265))

(assert (=> b!4796549 d!1535165))

(assert (=> b!4796549 d!1535167))

(declare-fun d!1535267 () Bool)

(declare-fun res!2039581 () Bool)

(declare-fun e!2995372 () Bool)

(assert (=> d!1535267 (=> res!2039581 e!2995372)))

(assert (=> d!1535267 (= res!2039581 (and ((_ is Cons!54267) (toList!6959 lt!1953887)) (= (_1!31759 (h!60699 (toList!6959 lt!1953887))) lt!1953888)))))

(assert (=> d!1535267 (= (containsKey!3990 (toList!6959 lt!1953887) lt!1953888) e!2995372)))

(declare-fun b!4796929 () Bool)

(declare-fun e!2995373 () Bool)

(assert (=> b!4796929 (= e!2995372 e!2995373)))

(declare-fun res!2039582 () Bool)

(assert (=> b!4796929 (=> (not res!2039582) (not e!2995373))))

(assert (=> b!4796929 (= res!2039582 (and (or (not ((_ is Cons!54267) (toList!6959 lt!1953887))) (bvsle (_1!31759 (h!60699 (toList!6959 lt!1953887))) lt!1953888)) ((_ is Cons!54267) (toList!6959 lt!1953887)) (bvslt (_1!31759 (h!60699 (toList!6959 lt!1953887))) lt!1953888)))))

(declare-fun b!4796930 () Bool)

(assert (=> b!4796930 (= e!2995373 (containsKey!3990 (t!361841 (toList!6959 lt!1953887)) lt!1953888))))

(assert (= (and d!1535267 (not res!2039581)) b!4796929))

(assert (= (and b!4796929 res!2039582) b!4796930))

(declare-fun m!5779310 () Bool)

(assert (=> b!4796930 m!5779310))

(assert (=> d!1535139 d!1535267))

(declare-fun d!1535269 () Bool)

(declare-fun c!817585 () Bool)

(declare-fun e!2995375 () Bool)

(assert (=> d!1535269 (= c!817585 e!2995375)))

(declare-fun res!2039583 () Bool)

(assert (=> d!1535269 (=> (not res!2039583) (not e!2995375))))

(assert (=> d!1535269 (= res!2039583 ((_ is Cons!54267) (t!361841 (toList!6959 lm!2473))))))

(declare-fun e!2995374 () V!16085)

(assert (=> d!1535269 (= (getValue!128 (t!361841 (toList!6959 lm!2473)) key!5896) e!2995374)))

(declare-fun b!4796933 () Bool)

(assert (=> b!4796933 (= e!2995375 (containsKey!3986 (_2!31759 (h!60699 (t!361841 (toList!6959 lm!2473)))) key!5896))))

(declare-fun b!4796931 () Bool)

(assert (=> b!4796931 (= e!2995374 (_2!31758 (get!18516 (getPair!912 (_2!31759 (h!60699 (t!361841 (toList!6959 lm!2473)))) key!5896))))))

(declare-fun b!4796932 () Bool)

(assert (=> b!4796932 (= e!2995374 (getValue!128 (t!361841 (t!361841 (toList!6959 lm!2473))) key!5896))))

(assert (= (and d!1535269 res!2039583) b!4796933))

(assert (= (and d!1535269 c!817585) b!4796931))

(assert (= (and d!1535269 (not c!817585)) b!4796932))

(declare-fun m!5779312 () Bool)

(assert (=> b!4796933 m!5779312))

(declare-fun m!5779314 () Bool)

(assert (=> b!4796931 m!5779314))

(assert (=> b!4796931 m!5779314))

(declare-fun m!5779316 () Bool)

(assert (=> b!4796931 m!5779316))

(declare-fun m!5779318 () Bool)

(assert (=> b!4796932 m!5779318))

(assert (=> b!4796643 d!1535269))

(assert (=> b!4796644 d!1535159))

(declare-fun d!1535271 () Bool)

(declare-fun res!2039584 () Bool)

(declare-fun e!2995376 () Bool)

(assert (=> d!1535271 (=> res!2039584 e!2995376)))

(assert (=> d!1535271 (= res!2039584 ((_ is Nil!54267) (t!361841 (toList!6959 lm!2473))))))

(assert (=> d!1535271 (= (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231483) e!2995376)))

(declare-fun b!4796934 () Bool)

(declare-fun e!2995377 () Bool)

(assert (=> b!4796934 (= e!2995376 e!2995377)))

(declare-fun res!2039585 () Bool)

(assert (=> b!4796934 (=> (not res!2039585) (not e!2995377))))

(assert (=> b!4796934 (= res!2039585 (dynLambda!22081 lambda!231483 (h!60699 (t!361841 (toList!6959 lm!2473)))))))

(declare-fun b!4796935 () Bool)

(assert (=> b!4796935 (= e!2995377 (forall!12287 (t!361841 (t!361841 (toList!6959 lm!2473))) lambda!231483))))

(assert (= (and d!1535271 (not res!2039584)) b!4796934))

(assert (= (and b!4796934 res!2039585) b!4796935))

(declare-fun b_lambda!187215 () Bool)

(assert (=> (not b_lambda!187215) (not b!4796934)))

(declare-fun m!5779328 () Bool)

(assert (=> b!4796934 m!5779328))

(declare-fun m!5779332 () Bool)

(assert (=> b!4796935 m!5779332))

(assert (=> b!4796596 d!1535271))

(declare-fun d!1535273 () Bool)

(assert (=> d!1535273 (= (get!18516 lt!1953993) (v!48440 lt!1953993))))

(assert (=> b!4796698 d!1535273))

(declare-fun d!1535275 () Bool)

(assert (=> d!1535275 (= (isDefined!10277 (getPair!912 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29472 (getPair!912 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1156404 () Bool)

(assert (= bs!1156404 d!1535275))

(assert (=> bs!1156404 m!5779018))

(declare-fun m!5779356 () Bool)

(assert (=> bs!1156404 m!5779356))

(assert (=> b!4796635 d!1535275))

(declare-fun e!2995380 () Bool)

(declare-fun b!4796938 () Bool)

(assert (=> b!4796938 (= e!2995380 (not (containsKey!3986 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) key!5896)))))

(declare-fun lt!1954181 () Option!13136)

(declare-fun b!4796939 () Bool)

(declare-fun e!2995379 () Bool)

(assert (=> b!4796939 (= e!2995379 (contains!17910 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) (get!18516 lt!1954181)))))

(declare-fun b!4796940 () Bool)

(declare-fun e!2995381 () Option!13136)

(assert (=> b!4796940 (= e!2995381 (getPair!912 (t!361840 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896))) key!5896))))

(declare-fun e!2995382 () Option!13136)

(declare-fun b!4796941 () Bool)

(assert (=> b!4796941 (= e!2995382 (Some!13135 (h!60698 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)))))))

(declare-fun d!1535279 () Bool)

(declare-fun e!2995383 () Bool)

(assert (=> d!1535279 e!2995383))

(declare-fun res!2039587 () Bool)

(assert (=> d!1535279 (=> res!2039587 e!2995383)))

(assert (=> d!1535279 (= res!2039587 e!2995380)))

(declare-fun res!2039586 () Bool)

(assert (=> d!1535279 (=> (not res!2039586) (not e!2995380))))

(assert (=> d!1535279 (= res!2039586 (isEmpty!29472 lt!1954181))))

(assert (=> d!1535279 (= lt!1954181 e!2995382)))

(declare-fun c!817588 () Bool)

(assert (=> d!1535279 (= c!817588 (and ((_ is Cons!54266) (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896))) (= (_1!31758 (h!60698 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1535279 (noDuplicateKeys!2351 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)))))

(assert (=> d!1535279 (= (getPair!912 (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) key!5896) lt!1954181)))

(declare-fun b!4796942 () Bool)

(declare-fun res!2039589 () Bool)

(assert (=> b!4796942 (=> (not res!2039589) (not e!2995379))))

(assert (=> b!4796942 (= res!2039589 (= (_1!31758 (get!18516 lt!1954181)) key!5896))))

(declare-fun b!4796943 () Bool)

(assert (=> b!4796943 (= e!2995382 e!2995381)))

(declare-fun c!817587 () Bool)

(assert (=> b!4796943 (= c!817587 ((_ is Cons!54266) (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896))))))

(declare-fun b!4796944 () Bool)

(assert (=> b!4796944 (= e!2995381 None!13135)))

(declare-fun b!4796945 () Bool)

(assert (=> b!4796945 (= e!2995383 e!2995379)))

(declare-fun res!2039588 () Bool)

(assert (=> b!4796945 (=> (not res!2039588) (not e!2995379))))

(assert (=> b!4796945 (= res!2039588 (isDefined!10277 lt!1954181))))

(assert (= (and d!1535279 c!817588) b!4796941))

(assert (= (and d!1535279 (not c!817588)) b!4796943))

(assert (= (and b!4796943 c!817587) b!4796940))

(assert (= (and b!4796943 (not c!817587)) b!4796944))

(assert (= (and d!1535279 res!2039586) b!4796938))

(assert (= (and d!1535279 (not res!2039587)) b!4796945))

(assert (= (and b!4796945 res!2039588) b!4796942))

(assert (= (and b!4796942 res!2039589) b!4796939))

(declare-fun m!5779358 () Bool)

(assert (=> b!4796942 m!5779358))

(assert (=> b!4796938 m!5779016))

(declare-fun m!5779360 () Bool)

(assert (=> b!4796938 m!5779360))

(declare-fun m!5779362 () Bool)

(assert (=> d!1535279 m!5779362))

(assert (=> d!1535279 m!5779016))

(declare-fun m!5779364 () Bool)

(assert (=> d!1535279 m!5779364))

(declare-fun m!5779366 () Bool)

(assert (=> b!4796945 m!5779366))

(declare-fun m!5779368 () Bool)

(assert (=> b!4796940 m!5779368))

(assert (=> b!4796939 m!5779358))

(assert (=> b!4796939 m!5779016))

(assert (=> b!4796939 m!5779358))

(declare-fun m!5779370 () Bool)

(assert (=> b!4796939 m!5779370))

(assert (=> b!4796635 d!1535279))

(declare-fun d!1535281 () Bool)

(assert (=> d!1535281 (= (apply!13013 lm!2473 (hash!4985 hashF!1559 key!5896)) (get!18517 (getValueByKey!2375 (toList!6959 lm!2473) (hash!4985 hashF!1559 key!5896))))))

(declare-fun bs!1156410 () Bool)

(assert (= bs!1156410 d!1535281))

(assert (=> bs!1156410 m!5778860))

(assert (=> bs!1156410 m!5779302))

(assert (=> bs!1156410 m!5779302))

(declare-fun m!5779380 () Bool)

(assert (=> bs!1156410 m!5779380))

(assert (=> b!4796635 d!1535281))

(assert (=> b!4796635 d!1535137))

(declare-fun d!1535285 () Bool)

(assert (=> d!1535285 (= (get!18516 (getPair!912 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896)) (v!48440 (getPair!912 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896)))))

(assert (=> b!4796642 d!1535285))

(declare-fun b!4796946 () Bool)

(declare-fun e!2995385 () Bool)

(assert (=> b!4796946 (= e!2995385 (not (containsKey!3986 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896)))))

(declare-fun b!4796947 () Bool)

(declare-fun e!2995384 () Bool)

(declare-fun lt!1954182 () Option!13136)

(assert (=> b!4796947 (= e!2995384 (contains!17910 (_2!31759 (h!60699 (toList!6959 lm!2473))) (get!18516 lt!1954182)))))

(declare-fun b!4796948 () Bool)

(declare-fun e!2995386 () Option!13136)

(assert (=> b!4796948 (= e!2995386 (getPair!912 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))) key!5896))))

(declare-fun b!4796949 () Bool)

(declare-fun e!2995387 () Option!13136)

(assert (=> b!4796949 (= e!2995387 (Some!13135 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(declare-fun d!1535287 () Bool)

(declare-fun e!2995388 () Bool)

(assert (=> d!1535287 e!2995388))

(declare-fun res!2039591 () Bool)

(assert (=> d!1535287 (=> res!2039591 e!2995388)))

(assert (=> d!1535287 (= res!2039591 e!2995385)))

(declare-fun res!2039590 () Bool)

(assert (=> d!1535287 (=> (not res!2039590) (not e!2995385))))

(assert (=> d!1535287 (= res!2039590 (isEmpty!29472 lt!1954182))))

(assert (=> d!1535287 (= lt!1954182 e!2995387)))

(declare-fun c!817590 () Bool)

(assert (=> d!1535287 (= c!817590 (and ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lm!2473)))) (= (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))) key!5896)))))

(assert (=> d!1535287 (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473))))))

(assert (=> d!1535287 (= (getPair!912 (_2!31759 (h!60699 (toList!6959 lm!2473))) key!5896) lt!1954182)))

(declare-fun b!4796950 () Bool)

(declare-fun res!2039593 () Bool)

(assert (=> b!4796950 (=> (not res!2039593) (not e!2995384))))

(assert (=> b!4796950 (= res!2039593 (= (_1!31758 (get!18516 lt!1954182)) key!5896))))

(declare-fun b!4796951 () Bool)

(assert (=> b!4796951 (= e!2995387 e!2995386)))

(declare-fun c!817589 () Bool)

(assert (=> b!4796951 (= c!817589 ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(declare-fun b!4796952 () Bool)

(assert (=> b!4796952 (= e!2995386 None!13135)))

(declare-fun b!4796953 () Bool)

(assert (=> b!4796953 (= e!2995388 e!2995384)))

(declare-fun res!2039592 () Bool)

(assert (=> b!4796953 (=> (not res!2039592) (not e!2995384))))

(assert (=> b!4796953 (= res!2039592 (isDefined!10277 lt!1954182))))

(assert (= (and d!1535287 c!817590) b!4796949))

(assert (= (and d!1535287 (not c!817590)) b!4796951))

(assert (= (and b!4796951 c!817589) b!4796948))

(assert (= (and b!4796951 (not c!817589)) b!4796952))

(assert (= (and d!1535287 res!2039590) b!4796946))

(assert (= (and d!1535287 (not res!2039591)) b!4796953))

(assert (= (and b!4796953 res!2039592) b!4796950))

(assert (= (and b!4796950 res!2039593) b!4796947))

(declare-fun m!5779382 () Bool)

(assert (=> b!4796950 m!5779382))

(assert (=> b!4796946 m!5778878))

(declare-fun m!5779384 () Bool)

(assert (=> d!1535287 m!5779384))

(assert (=> d!1535287 m!5779094))

(declare-fun m!5779386 () Bool)

(assert (=> b!4796953 m!5779386))

(declare-fun m!5779388 () Bool)

(assert (=> b!4796948 m!5779388))

(assert (=> b!4796947 m!5779382))

(assert (=> b!4796947 m!5779382))

(declare-fun m!5779390 () Bool)

(assert (=> b!4796947 m!5779390))

(assert (=> b!4796642 d!1535287))

(declare-fun e!2995390 () Bool)

(declare-fun b!4796954 () Bool)

(assert (=> b!4796954 (= e!2995390 (not (containsKey!3986 (t!361840 (apply!13013 lm!2473 lt!1953888)) key!5896)))))

(declare-fun e!2995389 () Bool)

(declare-fun lt!1954183 () Option!13136)

(declare-fun b!4796955 () Bool)

(assert (=> b!4796955 (= e!2995389 (contains!17910 (t!361840 (apply!13013 lm!2473 lt!1953888)) (get!18516 lt!1954183)))))

(declare-fun b!4796956 () Bool)

(declare-fun e!2995391 () Option!13136)

(assert (=> b!4796956 (= e!2995391 (getPair!912 (t!361840 (t!361840 (apply!13013 lm!2473 lt!1953888))) key!5896))))

(declare-fun b!4796957 () Bool)

(declare-fun e!2995392 () Option!13136)

(assert (=> b!4796957 (= e!2995392 (Some!13135 (h!60698 (t!361840 (apply!13013 lm!2473 lt!1953888)))))))

(declare-fun d!1535289 () Bool)

(declare-fun e!2995393 () Bool)

(assert (=> d!1535289 e!2995393))

(declare-fun res!2039595 () Bool)

(assert (=> d!1535289 (=> res!2039595 e!2995393)))

(assert (=> d!1535289 (= res!2039595 e!2995390)))

(declare-fun res!2039594 () Bool)

(assert (=> d!1535289 (=> (not res!2039594) (not e!2995390))))

(assert (=> d!1535289 (= res!2039594 (isEmpty!29472 lt!1954183))))

(assert (=> d!1535289 (= lt!1954183 e!2995392)))

(declare-fun c!817592 () Bool)

(assert (=> d!1535289 (= c!817592 (and ((_ is Cons!54266) (t!361840 (apply!13013 lm!2473 lt!1953888))) (= (_1!31758 (h!60698 (t!361840 (apply!13013 lm!2473 lt!1953888)))) key!5896)))))

(assert (=> d!1535289 (noDuplicateKeys!2351 (t!361840 (apply!13013 lm!2473 lt!1953888)))))

(assert (=> d!1535289 (= (getPair!912 (t!361840 (apply!13013 lm!2473 lt!1953888)) key!5896) lt!1954183)))

(declare-fun b!4796958 () Bool)

(declare-fun res!2039597 () Bool)

(assert (=> b!4796958 (=> (not res!2039597) (not e!2995389))))

(assert (=> b!4796958 (= res!2039597 (= (_1!31758 (get!18516 lt!1954183)) key!5896))))

(declare-fun b!4796959 () Bool)

(assert (=> b!4796959 (= e!2995392 e!2995391)))

(declare-fun c!817591 () Bool)

(assert (=> b!4796959 (= c!817591 ((_ is Cons!54266) (t!361840 (apply!13013 lm!2473 lt!1953888))))))

(declare-fun b!4796960 () Bool)

(assert (=> b!4796960 (= e!2995391 None!13135)))

(declare-fun b!4796961 () Bool)

(assert (=> b!4796961 (= e!2995393 e!2995389)))

(declare-fun res!2039596 () Bool)

(assert (=> b!4796961 (=> (not res!2039596) (not e!2995389))))

(assert (=> b!4796961 (= res!2039596 (isDefined!10277 lt!1954183))))

(assert (= (and d!1535289 c!817592) b!4796957))

(assert (= (and d!1535289 (not c!817592)) b!4796959))

(assert (= (and b!4796959 c!817591) b!4796956))

(assert (= (and b!4796959 (not c!817591)) b!4796960))

(assert (= (and d!1535289 res!2039594) b!4796954))

(assert (= (and d!1535289 (not res!2039595)) b!4796961))

(assert (= (and b!4796961 res!2039596) b!4796958))

(assert (= (and b!4796958 res!2039597) b!4796955))

(declare-fun m!5779392 () Bool)

(assert (=> b!4796958 m!5779392))

(declare-fun m!5779394 () Bool)

(assert (=> b!4796954 m!5779394))

(declare-fun m!5779396 () Bool)

(assert (=> d!1535289 m!5779396))

(assert (=> d!1535289 m!5779162))

(declare-fun m!5779398 () Bool)

(assert (=> b!4796961 m!5779398))

(declare-fun m!5779400 () Bool)

(assert (=> b!4796956 m!5779400))

(assert (=> b!4796955 m!5779392))

(assert (=> b!4796955 m!5779392))

(declare-fun m!5779402 () Bool)

(assert (=> b!4796955 m!5779402))

(assert (=> b!4796696 d!1535289))

(declare-fun d!1535291 () Bool)

(declare-fun res!2039602 () Bool)

(declare-fun e!2995398 () Bool)

(assert (=> d!1535291 (=> res!2039602 e!2995398)))

(assert (=> d!1535291 (= res!2039602 (not ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(assert (=> d!1535291 (= (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473)))) e!2995398)))

(declare-fun b!4796966 () Bool)

(declare-fun e!2995399 () Bool)

(assert (=> b!4796966 (= e!2995398 e!2995399)))

(declare-fun res!2039603 () Bool)

(assert (=> b!4796966 (=> (not res!2039603) (not e!2995399))))

(assert (=> b!4796966 (= res!2039603 (not (containsKey!3986 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473)))) (_1!31758 (h!60698 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))))

(declare-fun b!4796967 () Bool)

(assert (=> b!4796967 (= e!2995399 (noDuplicateKeys!2351 (t!361840 (_2!31759 (h!60699 (toList!6959 lm!2473))))))))

(assert (= (and d!1535291 (not res!2039602)) b!4796966))

(assert (= (and b!4796966 res!2039603) b!4796967))

(declare-fun m!5779404 () Bool)

(assert (=> b!4796966 m!5779404))

(declare-fun m!5779406 () Bool)

(assert (=> b!4796967 m!5779406))

(assert (=> bs!1156371 d!1535291))

(declare-fun d!1535293 () Bool)

(assert (=> d!1535293 (= (get!18517 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888)) (v!48444 (getValueByKey!2375 (toList!6959 lm!2473) lt!1953888)))))

(assert (=> d!1535157 d!1535293))

(assert (=> d!1535157 d!1535185))

(declare-fun d!1535295 () Bool)

(declare-fun lt!1954184 () Bool)

(assert (=> d!1535295 (= lt!1954184 (select (content!9725 e!2995120) key!5896))))

(declare-fun e!2995403 () Bool)

(assert (=> d!1535295 (= lt!1954184 e!2995403)))

(declare-fun res!2039606 () Bool)

(assert (=> d!1535295 (=> (not res!2039606) (not e!2995403))))

(assert (=> d!1535295 (= res!2039606 ((_ is Cons!54268) e!2995120))))

(assert (=> d!1535295 (= (contains!17907 e!2995120 key!5896) lt!1954184)))

(declare-fun b!4796970 () Bool)

(declare-fun e!2995402 () Bool)

(assert (=> b!4796970 (= e!2995403 e!2995402)))

(declare-fun res!2039607 () Bool)

(assert (=> b!4796970 (=> res!2039607 e!2995402)))

(assert (=> b!4796970 (= res!2039607 (= (h!60700 e!2995120) key!5896))))

(declare-fun b!4796971 () Bool)

(assert (=> b!4796971 (= e!2995402 (contains!17907 (t!361842 e!2995120) key!5896))))

(assert (= (and d!1535295 res!2039606) b!4796970))

(assert (= (and b!4796970 (not res!2039607)) b!4796971))

(declare-fun m!5779410 () Bool)

(assert (=> d!1535295 m!5779410))

(declare-fun m!5779412 () Bool)

(assert (=> d!1535295 m!5779412))

(declare-fun m!5779414 () Bool)

(assert (=> b!4796971 m!5779414))

(assert (=> bm!335210 d!1535295))

(declare-fun d!1535299 () Bool)

(declare-fun res!2039617 () Bool)

(declare-fun e!2995415 () Bool)

(assert (=> d!1535299 (=> res!2039617 e!2995415)))

(assert (=> d!1535299 (= res!2039617 (and ((_ is Cons!54266) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) (= (_1!31758 (h!60698 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))) key!5896)))))

(assert (=> d!1535299 (= (containsKey!3988 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896) e!2995415)))

(declare-fun b!4796985 () Bool)

(declare-fun e!2995416 () Bool)

(assert (=> b!4796985 (= e!2995415 e!2995416)))

(declare-fun res!2039618 () Bool)

(assert (=> b!4796985 (=> (not res!2039618) (not e!2995416))))

(assert (=> b!4796985 (= res!2039618 ((_ is Cons!54266) (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))))))

(declare-fun b!4796986 () Bool)

(assert (=> b!4796986 (= e!2995416 (containsKey!3988 (t!361840 (toList!6960 (extractMap!2467 (toList!6959 lm!2473)))) key!5896))))

(assert (= (and d!1535299 (not res!2039617)) b!4796985))

(assert (= (and b!4796985 res!2039618) b!4796986))

(declare-fun m!5779426 () Bool)

(assert (=> b!4796986 m!5779426))

(assert (=> b!4796555 d!1535299))

(declare-fun d!1535313 () Bool)

(assert (=> d!1535313 (containsKey!3988 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896)))

(declare-fun lt!1954187 () Unit!140318)

(declare-fun choose!34617 (List!54390 K!15839) Unit!140318)

(assert (=> d!1535313 (= lt!1954187 (choose!34617 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896))))

(assert (=> d!1535313 (invariantList!1741 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))))))

(assert (=> d!1535313 (= (lemmaInGetKeysListThenContainsKey!1087 (toList!6960 (extractMap!2467 (toList!6959 lm!2473))) key!5896) lt!1954187)))

(declare-fun bs!1156413 () Bool)

(assert (= bs!1156413 d!1535313))

(assert (=> bs!1156413 m!5778926))

(declare-fun m!5779428 () Bool)

(assert (=> bs!1156413 m!5779428))

(assert (=> bs!1156413 m!5779122))

(assert (=> b!4796555 d!1535313))

(declare-fun lt!1954190 () Bool)

(declare-fun d!1535315 () Bool)

(declare-fun content!9727 (List!54390) (InoxSet tuple2!56928))

(assert (=> d!1535315 (= lt!1954190 (select (content!9727 (apply!13013 lm!2473 lt!1953888)) (get!18516 lt!1953993)))))

(declare-fun e!2995422 () Bool)

(assert (=> d!1535315 (= lt!1954190 e!2995422)))

(declare-fun res!2039624 () Bool)

(assert (=> d!1535315 (=> (not res!2039624) (not e!2995422))))

(assert (=> d!1535315 (= res!2039624 ((_ is Cons!54266) (apply!13013 lm!2473 lt!1953888)))))

(assert (=> d!1535315 (= (contains!17910 (apply!13013 lm!2473 lt!1953888) (get!18516 lt!1953993)) lt!1954190)))

(declare-fun b!4796991 () Bool)

(declare-fun e!2995421 () Bool)

(assert (=> b!4796991 (= e!2995422 e!2995421)))

(declare-fun res!2039623 () Bool)

(assert (=> b!4796991 (=> res!2039623 e!2995421)))

(assert (=> b!4796991 (= res!2039623 (= (h!60698 (apply!13013 lm!2473 lt!1953888)) (get!18516 lt!1953993)))))

(declare-fun b!4796992 () Bool)

(assert (=> b!4796992 (= e!2995421 (contains!17910 (t!361840 (apply!13013 lm!2473 lt!1953888)) (get!18516 lt!1953993)))))

(assert (= (and d!1535315 res!2039624) b!4796991))

(assert (= (and b!4796991 (not res!2039623)) b!4796992))

(assert (=> d!1535315 m!5778868))

(declare-fun m!5779430 () Bool)

(assert (=> d!1535315 m!5779430))

(assert (=> d!1535315 m!5779074))

(declare-fun m!5779432 () Bool)

(assert (=> d!1535315 m!5779432))

(assert (=> b!4796992 m!5779074))

(declare-fun m!5779434 () Bool)

(assert (=> b!4796992 m!5779434))

(assert (=> b!4796695 d!1535315))

(assert (=> b!4796695 d!1535273))

(assert (=> b!4796554 d!1535167))

(assert (=> b!4796664 d!1535253))

(assert (=> b!4796664 d!1535255))

(declare-fun d!1535317 () Bool)

(declare-fun res!2039625 () Bool)

(declare-fun e!2995423 () Bool)

(assert (=> d!1535317 (=> res!2039625 e!2995423)))

(assert (=> d!1535317 (= res!2039625 (and ((_ is Cons!54266) (apply!13013 lm!2473 lt!1953888)) (= (_1!31758 (h!60698 (apply!13013 lm!2473 lt!1953888))) key!5896)))))

(assert (=> d!1535317 (= (containsKey!3986 (apply!13013 lm!2473 lt!1953888) key!5896) e!2995423)))

(declare-fun b!4796993 () Bool)

(declare-fun e!2995424 () Bool)

(assert (=> b!4796993 (= e!2995423 e!2995424)))

(declare-fun res!2039626 () Bool)

(assert (=> b!4796993 (=> (not res!2039626) (not e!2995424))))

(assert (=> b!4796993 (= res!2039626 ((_ is Cons!54266) (apply!13013 lm!2473 lt!1953888)))))

(declare-fun b!4796994 () Bool)

(assert (=> b!4796994 (= e!2995424 (containsKey!3986 (t!361840 (apply!13013 lm!2473 lt!1953888)) key!5896))))

(assert (= (and d!1535317 (not res!2039625)) b!4796993))

(assert (= (and b!4796993 res!2039626) b!4796994))

(assert (=> b!4796994 m!5779394))

(assert (=> b!4796694 d!1535317))

(declare-fun d!1535319 () Bool)

(declare-fun res!2039628 () Bool)

(declare-fun e!2995427 () Bool)

(assert (=> d!1535319 (=> res!2039628 e!2995427)))

(declare-fun e!2995425 () Bool)

(assert (=> d!1535319 (= res!2039628 e!2995425)))

(declare-fun res!2039627 () Bool)

(assert (=> d!1535319 (=> (not res!2039627) (not e!2995425))))

(assert (=> d!1535319 (= res!2039627 ((_ is Cons!54267) (t!361841 (toList!6959 lm!2473))))))

(assert (=> d!1535319 (= (containsKeyBiggerList!582 (t!361841 (toList!6959 lm!2473)) key!5896) e!2995427)))

(declare-fun b!4796995 () Bool)

(assert (=> b!4796995 (= e!2995425 (containsKey!3986 (_2!31759 (h!60699 (t!361841 (toList!6959 lm!2473)))) key!5896))))

(declare-fun b!4796996 () Bool)

(declare-fun e!2995426 () Bool)

(assert (=> b!4796996 (= e!2995427 e!2995426)))

(declare-fun res!2039629 () Bool)

(assert (=> b!4796996 (=> (not res!2039629) (not e!2995426))))

(assert (=> b!4796996 (= res!2039629 ((_ is Cons!54267) (t!361841 (toList!6959 lm!2473))))))

(declare-fun b!4796997 () Bool)

(assert (=> b!4796997 (= e!2995426 (containsKeyBiggerList!582 (t!361841 (t!361841 (toList!6959 lm!2473))) key!5896))))

(assert (= (and d!1535319 res!2039627) b!4796995))

(assert (= (and d!1535319 (not res!2039628)) b!4796996))

(assert (= (and b!4796996 res!2039629) b!4796997))

(assert (=> b!4796995 m!5779312))

(declare-fun m!5779436 () Bool)

(assert (=> b!4796997 m!5779436))

(assert (=> b!4796605 d!1535319))

(declare-fun d!1535321 () Bool)

(declare-fun noDuplicatedKeys!444 (List!54390) Bool)

(assert (=> d!1535321 (= (invariantList!1741 (toList!6960 lt!1953941)) (noDuplicatedKeys!444 (toList!6960 lt!1953941)))))

(declare-fun bs!1156414 () Bool)

(assert (= bs!1156414 d!1535321))

(declare-fun m!5779438 () Bool)

(assert (=> bs!1156414 m!5779438))

(assert (=> d!1535107 d!1535321))

(declare-fun d!1535323 () Bool)

(declare-fun res!2039630 () Bool)

(declare-fun e!2995428 () Bool)

(assert (=> d!1535323 (=> res!2039630 e!2995428)))

(assert (=> d!1535323 (= res!2039630 ((_ is Nil!54267) (toList!6959 lm!2473)))))

(assert (=> d!1535323 (= (forall!12287 (toList!6959 lm!2473) lambda!231495) e!2995428)))

(declare-fun b!4796998 () Bool)

(declare-fun e!2995429 () Bool)

(assert (=> b!4796998 (= e!2995428 e!2995429)))

(declare-fun res!2039631 () Bool)

(assert (=> b!4796998 (=> (not res!2039631) (not e!2995429))))

(assert (=> b!4796998 (= res!2039631 (dynLambda!22081 lambda!231495 (h!60699 (toList!6959 lm!2473))))))

(declare-fun b!4796999 () Bool)

(assert (=> b!4796999 (= e!2995429 (forall!12287 (t!361841 (toList!6959 lm!2473)) lambda!231495))))

(assert (= (and d!1535323 (not res!2039630)) b!4796998))

(assert (= (and b!4796998 res!2039631) b!4796999))

(declare-fun b_lambda!187217 () Bool)

(assert (=> (not b_lambda!187217) (not b!4796998)))

(declare-fun m!5779440 () Bool)

(assert (=> b!4796998 m!5779440))

(declare-fun m!5779442 () Bool)

(assert (=> b!4796999 m!5779442))

(assert (=> d!1535107 d!1535323))

(declare-fun d!1535325 () Bool)

(assert (=> d!1535325 (= (isDefined!10277 lt!1953993) (not (isEmpty!29472 lt!1953993)))))

(declare-fun bs!1156415 () Bool)

(assert (= bs!1156415 d!1535325))

(assert (=> bs!1156415 m!5779078))

(assert (=> b!4796701 d!1535325))

(assert (=> b!4796603 d!1535159))

(assert (=> d!1535089 d!1535299))

(declare-fun e!2995432 () Bool)

(declare-fun b!4797004 () Bool)

(declare-fun tp!1358201 () Bool)

(assert (=> b!4797004 (= e!2995432 (and tp_is_empty!33621 tp_is_empty!33623 tp!1358201))))

(assert (=> b!4796712 (= tp!1358197 e!2995432)))

(assert (= (and b!4796712 ((_ is Cons!54266) (_2!31759 (h!60699 (toList!6959 lm!2473))))) b!4797004))

(declare-fun b!4797005 () Bool)

(declare-fun e!2995433 () Bool)

(declare-fun tp!1358202 () Bool)

(declare-fun tp!1358203 () Bool)

(assert (=> b!4797005 (= e!2995433 (and tp!1358202 tp!1358203))))

(assert (=> b!4796712 (= tp!1358198 e!2995433)))

(assert (= (and b!4796712 ((_ is Cons!54267) (t!361841 (toList!6959 lm!2473)))) b!4797005))

(declare-fun b_lambda!187219 () Bool)

(assert (= b_lambda!187203 (or d!1535143 b_lambda!187219)))

(declare-fun bs!1156416 () Bool)

(declare-fun d!1535327 () Bool)

(assert (= bs!1156416 (and d!1535327 d!1535143)))

(declare-fun allKeysSameHash!1967 (List!54390 (_ BitVec 64) Hashable!6940) Bool)

(assert (=> bs!1156416 (= (dynLambda!22081 lambda!231507 (h!60699 (toList!6959 lm!2473))) (allKeysSameHash!1967 (_2!31759 (h!60699 (toList!6959 lm!2473))) (_1!31759 (h!60699 (toList!6959 lm!2473))) hashF!1559))))

(declare-fun m!5779444 () Bool)

(assert (=> bs!1156416 m!5779444))

(assert (=> b!4796730 d!1535327))

(declare-fun b_lambda!187221 () Bool)

(assert (= b_lambda!187215 (or start!494494 b_lambda!187221)))

(declare-fun bs!1156417 () Bool)

(declare-fun d!1535329 () Bool)

(assert (= bs!1156417 (and d!1535329 start!494494)))

(assert (=> bs!1156417 (= (dynLambda!22081 lambda!231483 (h!60699 (t!361841 (toList!6959 lm!2473)))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (t!361841 (toList!6959 lm!2473))))))))

(declare-fun m!5779446 () Bool)

(assert (=> bs!1156417 m!5779446))

(assert (=> b!4796934 d!1535329))

(declare-fun b_lambda!187223 () Bool)

(assert (= b_lambda!187213 (or d!1535127 b_lambda!187223)))

(declare-fun bs!1156418 () Bool)

(declare-fun d!1535331 () Bool)

(assert (= bs!1156418 (and d!1535331 d!1535127)))

(assert (=> bs!1156418 (= (dynLambda!22081 lambda!231501 (h!60699 (toList!6959 lm!2473))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(assert (=> bs!1156418 m!5779094))

(assert (=> b!4796927 d!1535331))

(declare-fun b_lambda!187225 () Bool)

(assert (= b_lambda!187217 (or d!1535107 b_lambda!187225)))

(declare-fun bs!1156419 () Bool)

(declare-fun d!1535333 () Bool)

(assert (= bs!1156419 (and d!1535333 d!1535107)))

(assert (=> bs!1156419 (= (dynLambda!22081 lambda!231495 (h!60699 (toList!6959 lm!2473))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(assert (=> bs!1156419 m!5779094))

(assert (=> b!4796998 d!1535333))

(declare-fun b_lambda!187227 () Bool)

(assert (= b_lambda!187207 (or start!494494 b_lambda!187227)))

(declare-fun bs!1156420 () Bool)

(declare-fun d!1535335 () Bool)

(assert (= bs!1156420 (and d!1535335 start!494494)))

(assert (=> bs!1156420 (= (dynLambda!22081 lambda!231483 (h!60699 (t!361841 (toList!6959 lt!1953887)))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (t!361841 (toList!6959 lt!1953887))))))))

(declare-fun m!5779448 () Bool)

(assert (=> bs!1156420 m!5779448))

(assert (=> b!4796758 d!1535335))

(declare-fun b_lambda!187229 () Bool)

(assert (= b_lambda!187205 (or d!1535125 b_lambda!187229)))

(declare-fun bs!1156421 () Bool)

(declare-fun d!1535337 () Bool)

(assert (= bs!1156421 (and d!1535337 d!1535125)))

(assert (=> bs!1156421 (= (dynLambda!22081 lambda!231498 (h!60699 (toList!6959 lm!2473))) (noDuplicateKeys!2351 (_2!31759 (h!60699 (toList!6959 lm!2473)))))))

(assert (=> bs!1156421 m!5779094))

(assert (=> b!4796744 d!1535337))

(check-sat (not d!1535315) (not b!4796946) (not b!4796950) (not b!4796967) (not b!4796938) (not d!1535281) (not d!1535171) (not d!1535253) (not d!1535179) (not b!4796966) (not bs!1156421) (not b_lambda!187201) tp_is_empty!33623 (not b!4796759) (not b!4796997) (not b!4796932) (not b!4796862) (not d!1535211) (not b_lambda!187227) (not d!1535183) (not b!4796787) (not d!1535247) (not bs!1156416) (not b!4796961) (not b!4796948) (not b_lambda!187223) (not b!4796942) (not b!4796742) (not d!1535275) (not b!4796718) (not b!4796756) (not b!4796914) (not b!4796745) (not b!4796892) (not d!1535289) (not b!4797005) (not b!4796912) (not b!4796958) (not b!4796764) (not b!4796725) (not b_lambda!187221) (not b!4796788) (not b!4796994) (not d!1535313) (not b!4796954) (not b!4796863) (not d!1535259) (not b_lambda!187225) (not b!4796928) (not b!4796971) tp_is_empty!33621 (not bs!1156420) (not d!1535279) (not b!4796935) (not b!4796907) (not b!4797004) (not bm!335222) (not d!1535295) (not b!4796956) (not b!4796986) (not b!4796776) (not b!4796999) (not d!1535173) (not d!1535203) (not b!4796945) (not bm!335220) (not bm!335221) (not d!1535325) (not b!4796895) (not b!4796896) (not d!1535193) (not b!4796933) (not d!1535251) (not b!4796910) (not b!4796916) (not b!4796939) (not b_lambda!187199) (not d!1535177) (not d!1535165) (not b!4796726) (not d!1535287) (not b!4796926) (not b_lambda!187229) (not b!4796731) (not b_lambda!187219) (not b!4796995) (not d!1535249) (not b!4796931) (not b!4796992) (not b!4796727) (not b!4796930) (not b!4796947) (not d!1535167) (not bs!1156417) (not b!4796953) (not b!4796761) (not b!4796955) (not d!1535261) (not b!4796770) (not b!4796897) (not d!1535321) (not b!4796899) (not bs!1156419) (not b!4796866) (not bs!1156418) (not b!4796913) (not b!4796940) (not b!4796860))
(check-sat)
