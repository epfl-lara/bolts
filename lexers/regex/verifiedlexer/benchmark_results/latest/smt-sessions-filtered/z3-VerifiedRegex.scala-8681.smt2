; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462216 () Bool)

(assert start!462216)

(declare-fun b!4618356 () Bool)

(declare-fun res!1935471 () Bool)

(declare-fun e!2880773 () Bool)

(assert (=> b!4618356 (=> (not res!1935471) (not e!2880773))))

(declare-datatypes ((K!12810 0))(
  ( (K!12811 (val!18519 Int)) )
))
(declare-datatypes ((V!13056 0))(
  ( (V!13057 (val!18520 Int)) )
))
(declare-datatypes ((tuple2!52302 0))(
  ( (tuple2!52303 (_1!29445 K!12810) (_2!29445 V!13056)) )
))
(declare-datatypes ((List!51549 0))(
  ( (Nil!51425) (Cons!51425 (h!57449 tuple2!52302) (t!358561 List!51549)) )
))
(declare-fun oldBucket!40 () List!51549)

(declare-fun key!4968 () K!12810)

(declare-fun newBucket!224 () List!51549)

(declare-fun removePairForKey!1087 (List!51549 K!12810) List!51549)

(assert (=> b!4618356 (= res!1935471 (= (removePairForKey!1087 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4618357 () Bool)

(declare-fun res!1935474 () Bool)

(declare-fun e!2880769 () Bool)

(assert (=> b!4618357 (=> res!1935474 e!2880769)))

(declare-fun tail!8099 (List!51549) List!51549)

(assert (=> b!4618357 (= res!1935474 (not (= (removePairForKey!1087 (tail!8099 oldBucket!40) key!4968) (tail!8099 newBucket!224))))))

(declare-fun res!1935469 () Bool)

(assert (=> start!462216 (=> (not res!1935469) (not e!2880773))))

(declare-fun noDuplicateKeys!1464 (List!51549) Bool)

(assert (=> start!462216 (= res!1935469 (noDuplicateKeys!1464 oldBucket!40))))

(assert (=> start!462216 e!2880773))

(assert (=> start!462216 true))

(declare-fun e!2880768 () Bool)

(assert (=> start!462216 e!2880768))

(declare-fun tp_is_empty!29149 () Bool)

(assert (=> start!462216 tp_is_empty!29149))

(declare-fun e!2880771 () Bool)

(assert (=> start!462216 e!2880771))

(declare-fun tp_is_empty!29151 () Bool)

(declare-fun b!4618358 () Bool)

(declare-fun tp!1341751 () Bool)

(assert (=> b!4618358 (= e!2880768 (and tp_is_empty!29149 tp_is_empty!29151 tp!1341751))))

(declare-fun b!4618359 () Bool)

(declare-fun res!1935465 () Bool)

(declare-fun e!2880774 () Bool)

(assert (=> b!4618359 (=> (not res!1935465) (not e!2880774))))

(declare-datatypes ((Hashable!5861 0))(
  ( (HashableExt!5860 (__x!31564 Int)) )
))
(declare-fun hashF!1389 () Hashable!5861)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1318 (List!51549 (_ BitVec 64) Hashable!5861) Bool)

(assert (=> b!4618359 (= res!1935465 (allKeysSameHash!1318 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4618360 () Bool)

(declare-fun res!1935464 () Bool)

(assert (=> b!4618360 (=> (not res!1935464) (not e!2880773))))

(assert (=> b!4618360 (= res!1935464 (allKeysSameHash!1318 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4618361 () Bool)

(declare-fun res!1935473 () Bool)

(assert (=> b!4618361 (=> (not res!1935473) (not e!2880773))))

(assert (=> b!4618361 (= res!1935473 (noDuplicateKeys!1464 newBucket!224))))

(declare-fun tp!1341750 () Bool)

(declare-fun b!4618362 () Bool)

(assert (=> b!4618362 (= e!2880771 (and tp_is_empty!29149 tp_is_empty!29151 tp!1341750))))

(declare-fun b!4618363 () Bool)

(declare-fun e!2880770 () Bool)

(assert (=> b!4618363 (= e!2880774 (not e!2880770))))

(declare-fun res!1935470 () Bool)

(assert (=> b!4618363 (=> res!1935470 e!2880770)))

(get-info :version)

(assert (=> b!4618363 (= res!1935470 (or (and ((_ is Cons!51425) oldBucket!40) (= (_1!29445 (h!57449 oldBucket!40)) key!4968)) (not ((_ is Cons!51425) oldBucket!40)) (= (_1!29445 (h!57449 oldBucket!40)) key!4968)))))

(declare-fun e!2880772 () Bool)

(assert (=> b!4618363 e!2880772))

(declare-fun res!1935472 () Bool)

(assert (=> b!4618363 (=> (not res!1935472) (not e!2880772))))

(declare-datatypes ((ListMap!4197 0))(
  ( (ListMap!4198 (toList!4893 List!51549)) )
))
(declare-fun lt!1774243 () ListMap!4197)

(declare-fun lt!1774239 () ListMap!4197)

(declare-fun addToMapMapFromBucket!925 (List!51549 ListMap!4197) ListMap!4197)

(assert (=> b!4618363 (= res!1935472 (= lt!1774239 (addToMapMapFromBucket!925 oldBucket!40 lt!1774243)))))

(declare-datatypes ((tuple2!52304 0))(
  ( (tuple2!52305 (_1!29446 (_ BitVec 64)) (_2!29446 List!51549)) )
))
(declare-datatypes ((List!51550 0))(
  ( (Nil!51426) (Cons!51426 (h!57450 tuple2!52304) (t!358562 List!51550)) )
))
(declare-fun extractMap!1520 (List!51550) ListMap!4197)

(assert (=> b!4618363 (= lt!1774243 (extractMap!1520 Nil!51426))))

(assert (=> b!4618363 true))

(declare-fun b!4618364 () Bool)

(assert (=> b!4618364 (= e!2880769 (noDuplicateKeys!1464 (t!358561 oldBucket!40)))))

(declare-fun b!4618365 () Bool)

(assert (=> b!4618365 (= e!2880770 e!2880769)))

(declare-fun res!1935466 () Bool)

(assert (=> b!4618365 (=> res!1935466 e!2880769)))

(declare-fun containsKey!2354 (List!51549 K!12810) Bool)

(assert (=> b!4618365 (= res!1935466 (not (containsKey!2354 (t!358561 oldBucket!40) key!4968)))))

(assert (=> b!4618365 (containsKey!2354 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110718 0))(
  ( (Unit!110719) )
))
(declare-fun lt!1774249 () Unit!110718)

(declare-fun lemmaGetPairDefinedThenContainsKey!10 (List!51549 K!12810 Hashable!5861) Unit!110718)

(assert (=> b!4618365 (= lt!1774249 (lemmaGetPairDefinedThenContainsKey!10 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1774245 () List!51549)

(declare-datatypes ((Option!11496 0))(
  ( (None!11495) (Some!11495 (v!45569 tuple2!52302)) )
))
(declare-fun isDefined!8761 (Option!11496) Bool)

(declare-fun getPair!256 (List!51549 K!12810) Option!11496)

(assert (=> b!4618365 (isDefined!8761 (getPair!256 lt!1774245 key!4968))))

(declare-fun lt!1774246 () tuple2!52304)

(declare-fun lt!1774238 () Unit!110718)

(declare-fun lt!1774242 () List!51550)

(declare-fun lambda!190090 () Int)

(declare-fun forallContained!2983 (List!51550 Int tuple2!52304) Unit!110718)

(assert (=> b!4618365 (= lt!1774238 (forallContained!2983 lt!1774242 lambda!190090 lt!1774246))))

(declare-fun contains!14400 (List!51550 tuple2!52304) Bool)

(assert (=> b!4618365 (contains!14400 lt!1774242 lt!1774246)))

(declare-fun lt!1774248 () (_ BitVec 64))

(assert (=> b!4618365 (= lt!1774246 (tuple2!52305 lt!1774248 lt!1774245))))

(declare-datatypes ((ListLongMap!3483 0))(
  ( (ListLongMap!3484 (toList!4894 List!51550)) )
))
(declare-fun lt!1774240 () ListLongMap!3483)

(declare-fun lt!1774241 () Unit!110718)

(declare-fun lemmaGetValueImpliesTupleContained!61 (ListLongMap!3483 (_ BitVec 64) List!51549) Unit!110718)

(assert (=> b!4618365 (= lt!1774241 (lemmaGetValueImpliesTupleContained!61 lt!1774240 lt!1774248 lt!1774245))))

(declare-fun apply!12129 (ListLongMap!3483 (_ BitVec 64)) List!51549)

(assert (=> b!4618365 (= lt!1774245 (apply!12129 lt!1774240 lt!1774248))))

(declare-fun contains!14401 (ListLongMap!3483 (_ BitVec 64)) Bool)

(assert (=> b!4618365 (contains!14401 lt!1774240 lt!1774248)))

(declare-fun lt!1774244 () Unit!110718)

(declare-fun lemmaInGenMapThenLongMapContainsHash!462 (ListLongMap!3483 K!12810 Hashable!5861) Unit!110718)

(assert (=> b!4618365 (= lt!1774244 (lemmaInGenMapThenLongMapContainsHash!462 lt!1774240 key!4968 hashF!1389))))

(declare-fun lt!1774247 () Unit!110718)

(declare-fun lemmaInGenMapThenGetPairDefined!52 (ListLongMap!3483 K!12810 Hashable!5861) Unit!110718)

(assert (=> b!4618365 (= lt!1774247 (lemmaInGenMapThenGetPairDefined!52 lt!1774240 key!4968 hashF!1389))))

(assert (=> b!4618365 (= lt!1774240 (ListLongMap!3484 lt!1774242))))

(declare-fun b!4618366 () Bool)

(declare-fun e!2880767 () Bool)

(assert (=> b!4618366 (= e!2880767 e!2880774)))

(declare-fun res!1935467 () Bool)

(assert (=> b!4618366 (=> (not res!1935467) (not e!2880774))))

(assert (=> b!4618366 (= res!1935467 (= lt!1774248 hash!414))))

(declare-fun hash!3429 (Hashable!5861 K!12810) (_ BitVec 64))

(assert (=> b!4618366 (= lt!1774248 (hash!3429 hashF!1389 key!4968))))

(declare-fun b!4618367 () Bool)

(assert (=> b!4618367 (= e!2880773 e!2880767)))

(declare-fun res!1935468 () Bool)

(assert (=> b!4618367 (=> (not res!1935468) (not e!2880767))))

(declare-fun contains!14402 (ListMap!4197 K!12810) Bool)

(assert (=> b!4618367 (= res!1935468 (contains!14402 lt!1774239 key!4968))))

(assert (=> b!4618367 (= lt!1774239 (extractMap!1520 lt!1774242))))

(assert (=> b!4618367 (= lt!1774242 (Cons!51426 (tuple2!52305 hash!414 oldBucket!40) Nil!51426))))

(declare-fun b!4618368 () Bool)

(assert (=> b!4618368 (= e!2880772 (= lt!1774243 (ListMap!4198 Nil!51425)))))

(assert (= (and start!462216 res!1935469) b!4618361))

(assert (= (and b!4618361 res!1935473) b!4618356))

(assert (= (and b!4618356 res!1935471) b!4618360))

(assert (= (and b!4618360 res!1935464) b!4618367))

(assert (= (and b!4618367 res!1935468) b!4618366))

(assert (= (and b!4618366 res!1935467) b!4618359))

(assert (= (and b!4618359 res!1935465) b!4618363))

(assert (= (and b!4618363 res!1935472) b!4618368))

(assert (= (and b!4618363 (not res!1935470)) b!4618365))

(assert (= (and b!4618365 (not res!1935466)) b!4618357))

(assert (= (and b!4618357 (not res!1935474)) b!4618364))

(assert (= (and start!462216 ((_ is Cons!51425) oldBucket!40)) b!4618358))

(assert (= (and start!462216 ((_ is Cons!51425) newBucket!224)) b!4618362))

(declare-fun m!5453843 () Bool)

(assert (=> b!4618359 m!5453843))

(declare-fun m!5453845 () Bool)

(assert (=> b!4618367 m!5453845))

(declare-fun m!5453847 () Bool)

(assert (=> b!4618367 m!5453847))

(declare-fun m!5453849 () Bool)

(assert (=> b!4618361 m!5453849))

(declare-fun m!5453851 () Bool)

(assert (=> b!4618360 m!5453851))

(declare-fun m!5453853 () Bool)

(assert (=> b!4618365 m!5453853))

(declare-fun m!5453855 () Bool)

(assert (=> b!4618365 m!5453855))

(declare-fun m!5453857 () Bool)

(assert (=> b!4618365 m!5453857))

(declare-fun m!5453859 () Bool)

(assert (=> b!4618365 m!5453859))

(declare-fun m!5453861 () Bool)

(assert (=> b!4618365 m!5453861))

(declare-fun m!5453863 () Bool)

(assert (=> b!4618365 m!5453863))

(declare-fun m!5453865 () Bool)

(assert (=> b!4618365 m!5453865))

(declare-fun m!5453867 () Bool)

(assert (=> b!4618365 m!5453867))

(declare-fun m!5453869 () Bool)

(assert (=> b!4618365 m!5453869))

(declare-fun m!5453871 () Bool)

(assert (=> b!4618365 m!5453871))

(declare-fun m!5453873 () Bool)

(assert (=> b!4618365 m!5453873))

(assert (=> b!4618365 m!5453867))

(declare-fun m!5453875 () Bool)

(assert (=> b!4618365 m!5453875))

(declare-fun m!5453877 () Bool)

(assert (=> b!4618363 m!5453877))

(declare-fun m!5453879 () Bool)

(assert (=> b!4618363 m!5453879))

(declare-fun m!5453881 () Bool)

(assert (=> b!4618366 m!5453881))

(declare-fun m!5453883 () Bool)

(assert (=> start!462216 m!5453883))

(declare-fun m!5453885 () Bool)

(assert (=> b!4618364 m!5453885))

(declare-fun m!5453887 () Bool)

(assert (=> b!4618357 m!5453887))

(assert (=> b!4618357 m!5453887))

(declare-fun m!5453889 () Bool)

(assert (=> b!4618357 m!5453889))

(declare-fun m!5453891 () Bool)

(assert (=> b!4618357 m!5453891))

(declare-fun m!5453893 () Bool)

(assert (=> b!4618356 m!5453893))

(check-sat (not b!4618358) tp_is_empty!29149 (not b!4618364) (not b!4618359) (not b!4618366) (not b!4618360) (not b!4618361) (not b!4618363) (not b!4618356) (not start!462216) (not b!4618365) (not b!4618357) tp_is_empty!29151 (not b!4618362) (not b!4618367))
(check-sat)
(get-model)

(declare-fun b!4618466 () Bool)

(assert (=> b!4618466 true))

(declare-fun bs!1019337 () Bool)

(declare-fun b!4618469 () Bool)

(assert (= bs!1019337 (and b!4618469 b!4618466)))

(declare-fun lambda!190160 () Int)

(declare-fun lambda!190159 () Int)

(assert (=> bs!1019337 (= lambda!190160 lambda!190159)))

(assert (=> b!4618469 true))

(declare-fun lambda!190161 () Int)

(declare-fun lt!1774391 () ListMap!4197)

(assert (=> bs!1019337 (= (= lt!1774391 lt!1774243) (= lambda!190161 lambda!190159))))

(assert (=> b!4618469 (= (= lt!1774391 lt!1774243) (= lambda!190161 lambda!190160))))

(assert (=> b!4618469 true))

(declare-fun bs!1019338 () Bool)

(declare-fun d!1454658 () Bool)

(assert (= bs!1019338 (and d!1454658 b!4618466)))

(declare-fun lambda!190162 () Int)

(declare-fun lt!1774401 () ListMap!4197)

(assert (=> bs!1019338 (= (= lt!1774401 lt!1774243) (= lambda!190162 lambda!190159))))

(declare-fun bs!1019339 () Bool)

(assert (= bs!1019339 (and d!1454658 b!4618469)))

(assert (=> bs!1019339 (= (= lt!1774401 lt!1774243) (= lambda!190162 lambda!190160))))

(assert (=> bs!1019339 (= (= lt!1774401 lt!1774391) (= lambda!190162 lambda!190161))))

(assert (=> d!1454658 true))

(declare-fun e!2880837 () ListMap!4197)

(assert (=> b!4618466 (= e!2880837 lt!1774243)))

(declare-fun lt!1774400 () Unit!110718)

(declare-fun call!322058 () Unit!110718)

(assert (=> b!4618466 (= lt!1774400 call!322058)))

(declare-fun call!322059 () Bool)

(assert (=> b!4618466 call!322059))

(declare-fun lt!1774410 () Unit!110718)

(assert (=> b!4618466 (= lt!1774410 lt!1774400)))

(declare-fun call!322060 () Bool)

(assert (=> b!4618466 call!322060))

(declare-fun lt!1774408 () Unit!110718)

(declare-fun Unit!110733 () Unit!110718)

(assert (=> b!4618466 (= lt!1774408 Unit!110733)))

(declare-fun b!4618467 () Bool)

(declare-fun e!2880836 () Bool)

(declare-fun forall!10769 (List!51549 Int) Bool)

(assert (=> b!4618467 (= e!2880836 (forall!10769 (toList!4893 lt!1774243) lambda!190161))))

(declare-fun lt!1774405 () ListMap!4197)

(declare-fun c!790629 () Bool)

(declare-fun bm!322054 () Bool)

(assert (=> bm!322054 (= call!322060 (forall!10769 (ite c!790629 (toList!4893 lt!1774243) (toList!4893 lt!1774405)) (ite c!790629 lambda!190159 lambda!190161)))))

(declare-fun b!4618468 () Bool)

(declare-fun e!2880835 () Bool)

(declare-fun invariantList!1179 (List!51549) Bool)

(assert (=> b!4618468 (= e!2880835 (invariantList!1179 (toList!4893 lt!1774401)))))

(declare-fun bm!322055 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!481 (ListMap!4197) Unit!110718)

(assert (=> bm!322055 (= call!322058 (lemmaContainsAllItsOwnKeys!481 lt!1774243))))

(declare-fun bm!322053 () Bool)

(assert (=> bm!322053 (= call!322059 (forall!10769 (toList!4893 lt!1774243) (ite c!790629 lambda!190159 lambda!190161)))))

(assert (=> d!1454658 e!2880835))

(declare-fun res!1935516 () Bool)

(assert (=> d!1454658 (=> (not res!1935516) (not e!2880835))))

(assert (=> d!1454658 (= res!1935516 (forall!10769 oldBucket!40 lambda!190162))))

(assert (=> d!1454658 (= lt!1774401 e!2880837)))

(assert (=> d!1454658 (= c!790629 ((_ is Nil!51425) oldBucket!40))))

(assert (=> d!1454658 (noDuplicateKeys!1464 oldBucket!40)))

(assert (=> d!1454658 (= (addToMapMapFromBucket!925 oldBucket!40 lt!1774243) lt!1774401)))

(assert (=> b!4618469 (= e!2880837 lt!1774391)))

(declare-fun +!1839 (ListMap!4197 tuple2!52302) ListMap!4197)

(assert (=> b!4618469 (= lt!1774405 (+!1839 lt!1774243 (h!57449 oldBucket!40)))))

(assert (=> b!4618469 (= lt!1774391 (addToMapMapFromBucket!925 (t!358561 oldBucket!40) (+!1839 lt!1774243 (h!57449 oldBucket!40))))))

(declare-fun lt!1774409 () Unit!110718)

(assert (=> b!4618469 (= lt!1774409 call!322058)))

(assert (=> b!4618469 (forall!10769 (toList!4893 lt!1774243) lambda!190160)))

(declare-fun lt!1774392 () Unit!110718)

(assert (=> b!4618469 (= lt!1774392 lt!1774409)))

(assert (=> b!4618469 (forall!10769 (toList!4893 lt!1774405) lambda!190161)))

(declare-fun lt!1774394 () Unit!110718)

(declare-fun Unit!110734 () Unit!110718)

(assert (=> b!4618469 (= lt!1774394 Unit!110734)))

(assert (=> b!4618469 (forall!10769 (t!358561 oldBucket!40) lambda!190161)))

(declare-fun lt!1774399 () Unit!110718)

(declare-fun Unit!110735 () Unit!110718)

(assert (=> b!4618469 (= lt!1774399 Unit!110735)))

(declare-fun lt!1774407 () Unit!110718)

(declare-fun Unit!110736 () Unit!110718)

(assert (=> b!4618469 (= lt!1774407 Unit!110736)))

(declare-fun lt!1774406 () Unit!110718)

(declare-fun forallContained!2985 (List!51549 Int tuple2!52302) Unit!110718)

(assert (=> b!4618469 (= lt!1774406 (forallContained!2985 (toList!4893 lt!1774405) lambda!190161 (h!57449 oldBucket!40)))))

(assert (=> b!4618469 (contains!14402 lt!1774405 (_1!29445 (h!57449 oldBucket!40)))))

(declare-fun lt!1774402 () Unit!110718)

(declare-fun Unit!110737 () Unit!110718)

(assert (=> b!4618469 (= lt!1774402 Unit!110737)))

(assert (=> b!4618469 (contains!14402 lt!1774391 (_1!29445 (h!57449 oldBucket!40)))))

(declare-fun lt!1774390 () Unit!110718)

(declare-fun Unit!110738 () Unit!110718)

(assert (=> b!4618469 (= lt!1774390 Unit!110738)))

(assert (=> b!4618469 (forall!10769 oldBucket!40 lambda!190161)))

(declare-fun lt!1774393 () Unit!110718)

(declare-fun Unit!110739 () Unit!110718)

(assert (=> b!4618469 (= lt!1774393 Unit!110739)))

(assert (=> b!4618469 call!322060))

(declare-fun lt!1774404 () Unit!110718)

(declare-fun Unit!110740 () Unit!110718)

(assert (=> b!4618469 (= lt!1774404 Unit!110740)))

(declare-fun lt!1774403 () Unit!110718)

(declare-fun Unit!110741 () Unit!110718)

(assert (=> b!4618469 (= lt!1774403 Unit!110741)))

(declare-fun lt!1774395 () Unit!110718)

(declare-fun addForallContainsKeyThenBeforeAdding!480 (ListMap!4197 ListMap!4197 K!12810 V!13056) Unit!110718)

(assert (=> b!4618469 (= lt!1774395 (addForallContainsKeyThenBeforeAdding!480 lt!1774243 lt!1774391 (_1!29445 (h!57449 oldBucket!40)) (_2!29445 (h!57449 oldBucket!40))))))

(assert (=> b!4618469 call!322059))

(declare-fun lt!1774396 () Unit!110718)

(assert (=> b!4618469 (= lt!1774396 lt!1774395)))

(assert (=> b!4618469 (forall!10769 (toList!4893 lt!1774243) lambda!190161)))

(declare-fun lt!1774397 () Unit!110718)

(declare-fun Unit!110742 () Unit!110718)

(assert (=> b!4618469 (= lt!1774397 Unit!110742)))

(declare-fun res!1935515 () Bool)

(assert (=> b!4618469 (= res!1935515 (forall!10769 oldBucket!40 lambda!190161))))

(assert (=> b!4618469 (=> (not res!1935515) (not e!2880836))))

(assert (=> b!4618469 e!2880836))

(declare-fun lt!1774398 () Unit!110718)

(declare-fun Unit!110743 () Unit!110718)

(assert (=> b!4618469 (= lt!1774398 Unit!110743)))

(declare-fun b!4618470 () Bool)

(declare-fun res!1935514 () Bool)

(assert (=> b!4618470 (=> (not res!1935514) (not e!2880835))))

(assert (=> b!4618470 (= res!1935514 (forall!10769 (toList!4893 lt!1774243) lambda!190162))))

(assert (= (and d!1454658 c!790629) b!4618466))

(assert (= (and d!1454658 (not c!790629)) b!4618469))

(assert (= (and b!4618469 res!1935515) b!4618467))

(assert (= (or b!4618466 b!4618469) bm!322055))

(assert (= (or b!4618466 b!4618469) bm!322053))

(assert (= (or b!4618466 b!4618469) bm!322054))

(assert (= (and d!1454658 res!1935516) b!4618470))

(assert (= (and b!4618470 res!1935514) b!4618468))

(declare-fun m!5453995 () Bool)

(assert (=> b!4618467 m!5453995))

(declare-fun m!5453997 () Bool)

(assert (=> bm!322054 m!5453997))

(declare-fun m!5453999 () Bool)

(assert (=> b!4618468 m!5453999))

(declare-fun m!5454001 () Bool)

(assert (=> bm!322055 m!5454001))

(declare-fun m!5454003 () Bool)

(assert (=> bm!322053 m!5454003))

(declare-fun m!5454005 () Bool)

(assert (=> b!4618469 m!5454005))

(declare-fun m!5454007 () Bool)

(assert (=> b!4618469 m!5454007))

(declare-fun m!5454009 () Bool)

(assert (=> b!4618469 m!5454009))

(assert (=> b!4618469 m!5454005))

(declare-fun m!5454011 () Bool)

(assert (=> b!4618469 m!5454011))

(declare-fun m!5454013 () Bool)

(assert (=> b!4618469 m!5454013))

(declare-fun m!5454015 () Bool)

(assert (=> b!4618469 m!5454015))

(declare-fun m!5454017 () Bool)

(assert (=> b!4618469 m!5454017))

(declare-fun m!5454019 () Bool)

(assert (=> b!4618469 m!5454019))

(declare-fun m!5454021 () Bool)

(assert (=> b!4618469 m!5454021))

(assert (=> b!4618469 m!5454009))

(declare-fun m!5454023 () Bool)

(assert (=> b!4618469 m!5454023))

(assert (=> b!4618469 m!5453995))

(declare-fun m!5454025 () Bool)

(assert (=> d!1454658 m!5454025))

(assert (=> d!1454658 m!5453883))

(declare-fun m!5454027 () Bool)

(assert (=> b!4618470 m!5454027))

(assert (=> b!4618363 d!1454658))

(declare-fun bs!1019340 () Bool)

(declare-fun d!1454672 () Bool)

(assert (= bs!1019340 (and d!1454672 b!4618365)))

(declare-fun lambda!190167 () Int)

(assert (=> bs!1019340 (= lambda!190167 lambda!190090)))

(declare-fun lt!1774413 () ListMap!4197)

(assert (=> d!1454672 (invariantList!1179 (toList!4893 lt!1774413))))

(declare-fun e!2880840 () ListMap!4197)

(assert (=> d!1454672 (= lt!1774413 e!2880840)))

(declare-fun c!790632 () Bool)

(assert (=> d!1454672 (= c!790632 ((_ is Cons!51426) Nil!51426))))

(declare-fun forall!10770 (List!51550 Int) Bool)

(assert (=> d!1454672 (forall!10770 Nil!51426 lambda!190167)))

(assert (=> d!1454672 (= (extractMap!1520 Nil!51426) lt!1774413)))

(declare-fun b!4618477 () Bool)

(assert (=> b!4618477 (= e!2880840 (addToMapMapFromBucket!925 (_2!29446 (h!57450 Nil!51426)) (extractMap!1520 (t!358562 Nil!51426))))))

(declare-fun b!4618478 () Bool)

(assert (=> b!4618478 (= e!2880840 (ListMap!4198 Nil!51425))))

(assert (= (and d!1454672 c!790632) b!4618477))

(assert (= (and d!1454672 (not c!790632)) b!4618478))

(declare-fun m!5454029 () Bool)

(assert (=> d!1454672 m!5454029))

(declare-fun m!5454031 () Bool)

(assert (=> d!1454672 m!5454031))

(declare-fun m!5454033 () Bool)

(assert (=> b!4618477 m!5454033))

(assert (=> b!4618477 m!5454033))

(declare-fun m!5454035 () Bool)

(assert (=> b!4618477 m!5454035))

(assert (=> b!4618363 d!1454672))

(declare-fun b!4618498 () Bool)

(declare-fun e!2880849 () List!51549)

(assert (=> b!4618498 (= e!2880849 Nil!51425)))

(declare-fun b!4618497 () Bool)

(assert (=> b!4618497 (= e!2880849 (Cons!51425 (h!57449 (tail!8099 oldBucket!40)) (removePairForKey!1087 (t!358561 (tail!8099 oldBucket!40)) key!4968)))))

(declare-fun b!4618496 () Bool)

(declare-fun e!2880850 () List!51549)

(assert (=> b!4618496 (= e!2880850 e!2880849)))

(declare-fun c!790638 () Bool)

(assert (=> b!4618496 (= c!790638 ((_ is Cons!51425) (tail!8099 oldBucket!40)))))

(declare-fun b!4618495 () Bool)

(assert (=> b!4618495 (= e!2880850 (t!358561 (tail!8099 oldBucket!40)))))

(declare-fun d!1454674 () Bool)

(declare-fun lt!1774432 () List!51549)

(assert (=> d!1454674 (not (containsKey!2354 lt!1774432 key!4968))))

(assert (=> d!1454674 (= lt!1774432 e!2880850)))

(declare-fun c!790637 () Bool)

(assert (=> d!1454674 (= c!790637 (and ((_ is Cons!51425) (tail!8099 oldBucket!40)) (= (_1!29445 (h!57449 (tail!8099 oldBucket!40))) key!4968)))))

(assert (=> d!1454674 (noDuplicateKeys!1464 (tail!8099 oldBucket!40))))

(assert (=> d!1454674 (= (removePairForKey!1087 (tail!8099 oldBucket!40) key!4968) lt!1774432)))

(assert (= (and d!1454674 c!790637) b!4618495))

(assert (= (and d!1454674 (not c!790637)) b!4618496))

(assert (= (and b!4618496 c!790638) b!4618497))

(assert (= (and b!4618496 (not c!790638)) b!4618498))

(declare-fun m!5454037 () Bool)

(assert (=> b!4618497 m!5454037))

(declare-fun m!5454039 () Bool)

(assert (=> d!1454674 m!5454039))

(assert (=> d!1454674 m!5453887))

(declare-fun m!5454041 () Bool)

(assert (=> d!1454674 m!5454041))

(assert (=> b!4618357 d!1454674))

(declare-fun d!1454676 () Bool)

(assert (=> d!1454676 (= (tail!8099 oldBucket!40) (t!358561 oldBucket!40))))

(assert (=> b!4618357 d!1454676))

(declare-fun d!1454678 () Bool)

(assert (=> d!1454678 (= (tail!8099 newBucket!224) (t!358561 newBucket!224))))

(assert (=> b!4618357 d!1454678))

(declare-fun b!4618537 () Bool)

(declare-datatypes ((List!51552 0))(
  ( (Nil!51428) (Cons!51428 (h!57454 K!12810) (t!358564 List!51552)) )
))
(declare-fun e!2880878 () List!51552)

(declare-fun keys!18087 (ListMap!4197) List!51552)

(assert (=> b!4618537 (= e!2880878 (keys!18087 lt!1774239))))

(declare-fun b!4618538 () Bool)

(declare-fun e!2880880 () Unit!110718)

(declare-fun e!2880881 () Unit!110718)

(assert (=> b!4618538 (= e!2880880 e!2880881)))

(declare-fun c!790649 () Bool)

(declare-fun call!322063 () Bool)

(assert (=> b!4618538 (= c!790649 call!322063)))

(declare-fun b!4618539 () Bool)

(declare-fun e!2880877 () Bool)

(declare-fun e!2880879 () Bool)

(assert (=> b!4618539 (= e!2880877 e!2880879)))

(declare-fun res!1935546 () Bool)

(assert (=> b!4618539 (=> (not res!1935546) (not e!2880879))))

(declare-datatypes ((Option!11499 0))(
  ( (None!11498) (Some!11498 (v!45576 V!13056)) )
))
(declare-fun isDefined!8764 (Option!11499) Bool)

(declare-fun getValueByKey!1401 (List!51549 K!12810) Option!11499)

(assert (=> b!4618539 (= res!1935546 (isDefined!8764 (getValueByKey!1401 (toList!4893 lt!1774239) key!4968)))))

(declare-fun b!4618540 () Bool)

(declare-fun e!2880882 () Bool)

(declare-fun contains!14404 (List!51552 K!12810) Bool)

(assert (=> b!4618540 (= e!2880882 (not (contains!14404 (keys!18087 lt!1774239) key!4968)))))

(declare-fun b!4618541 () Bool)

(assert (=> b!4618541 false))

(declare-fun lt!1774476 () Unit!110718)

(declare-fun lt!1774478 () Unit!110718)

(assert (=> b!4618541 (= lt!1774476 lt!1774478)))

(declare-fun containsKey!2357 (List!51549 K!12810) Bool)

(assert (=> b!4618541 (containsKey!2357 (toList!4893 lt!1774239) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!629 (List!51549 K!12810) Unit!110718)

(assert (=> b!4618541 (= lt!1774478 (lemmaInGetKeysListThenContainsKey!629 (toList!4893 lt!1774239) key!4968))))

(declare-fun Unit!110745 () Unit!110718)

(assert (=> b!4618541 (= e!2880881 Unit!110745)))

(declare-fun d!1454680 () Bool)

(assert (=> d!1454680 e!2880877))

(declare-fun res!1935545 () Bool)

(assert (=> d!1454680 (=> res!1935545 e!2880877)))

(assert (=> d!1454680 (= res!1935545 e!2880882)))

(declare-fun res!1935544 () Bool)

(assert (=> d!1454680 (=> (not res!1935544) (not e!2880882))))

(declare-fun lt!1774479 () Bool)

(assert (=> d!1454680 (= res!1935544 (not lt!1774479))))

(declare-fun lt!1774480 () Bool)

(assert (=> d!1454680 (= lt!1774479 lt!1774480)))

(declare-fun lt!1774482 () Unit!110718)

(assert (=> d!1454680 (= lt!1774482 e!2880880)))

(declare-fun c!790650 () Bool)

(assert (=> d!1454680 (= c!790650 lt!1774480)))

(assert (=> d!1454680 (= lt!1774480 (containsKey!2357 (toList!4893 lt!1774239) key!4968))))

(assert (=> d!1454680 (= (contains!14402 lt!1774239 key!4968) lt!1774479)))

(declare-fun b!4618542 () Bool)

(declare-fun Unit!110746 () Unit!110718)

(assert (=> b!4618542 (= e!2880881 Unit!110746)))

(declare-fun bm!322058 () Bool)

(assert (=> bm!322058 (= call!322063 (contains!14404 e!2880878 key!4968))))

(declare-fun c!790648 () Bool)

(assert (=> bm!322058 (= c!790648 c!790650)))

(declare-fun b!4618543 () Bool)

(assert (=> b!4618543 (= e!2880879 (contains!14404 (keys!18087 lt!1774239) key!4968))))

(declare-fun b!4618544 () Bool)

(declare-fun getKeysList!630 (List!51549) List!51552)

(assert (=> b!4618544 (= e!2880878 (getKeysList!630 (toList!4893 lt!1774239)))))

(declare-fun b!4618545 () Bool)

(declare-fun lt!1774477 () Unit!110718)

(assert (=> b!4618545 (= e!2880880 lt!1774477)))

(declare-fun lt!1774481 () Unit!110718)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1303 (List!51549 K!12810) Unit!110718)

(assert (=> b!4618545 (= lt!1774481 (lemmaContainsKeyImpliesGetValueByKeyDefined!1303 (toList!4893 lt!1774239) key!4968))))

(assert (=> b!4618545 (isDefined!8764 (getValueByKey!1401 (toList!4893 lt!1774239) key!4968))))

(declare-fun lt!1774475 () Unit!110718)

(assert (=> b!4618545 (= lt!1774475 lt!1774481)))

(declare-fun lemmaInListThenGetKeysListContains!625 (List!51549 K!12810) Unit!110718)

(assert (=> b!4618545 (= lt!1774477 (lemmaInListThenGetKeysListContains!625 (toList!4893 lt!1774239) key!4968))))

(assert (=> b!4618545 call!322063))

(assert (= (and d!1454680 c!790650) b!4618545))

(assert (= (and d!1454680 (not c!790650)) b!4618538))

(assert (= (and b!4618538 c!790649) b!4618541))

(assert (= (and b!4618538 (not c!790649)) b!4618542))

(assert (= (or b!4618545 b!4618538) bm!322058))

(assert (= (and bm!322058 c!790648) b!4618544))

(assert (= (and bm!322058 (not c!790648)) b!4618537))

(assert (= (and d!1454680 res!1935544) b!4618540))

(assert (= (and d!1454680 (not res!1935545)) b!4618539))

(assert (= (and b!4618539 res!1935546) b!4618543))

(declare-fun m!5454089 () Bool)

(assert (=> b!4618539 m!5454089))

(assert (=> b!4618539 m!5454089))

(declare-fun m!5454091 () Bool)

(assert (=> b!4618539 m!5454091))

(declare-fun m!5454093 () Bool)

(assert (=> b!4618537 m!5454093))

(declare-fun m!5454095 () Bool)

(assert (=> b!4618544 m!5454095))

(declare-fun m!5454097 () Bool)

(assert (=> b!4618545 m!5454097))

(assert (=> b!4618545 m!5454089))

(assert (=> b!4618545 m!5454089))

(assert (=> b!4618545 m!5454091))

(declare-fun m!5454099 () Bool)

(assert (=> b!4618545 m!5454099))

(declare-fun m!5454101 () Bool)

(assert (=> b!4618541 m!5454101))

(declare-fun m!5454103 () Bool)

(assert (=> b!4618541 m!5454103))

(assert (=> d!1454680 m!5454101))

(assert (=> b!4618540 m!5454093))

(assert (=> b!4618540 m!5454093))

(declare-fun m!5454105 () Bool)

(assert (=> b!4618540 m!5454105))

(assert (=> b!4618543 m!5454093))

(assert (=> b!4618543 m!5454093))

(assert (=> b!4618543 m!5454105))

(declare-fun m!5454107 () Bool)

(assert (=> bm!322058 m!5454107))

(assert (=> b!4618367 d!1454680))

(declare-fun bs!1019345 () Bool)

(declare-fun d!1454690 () Bool)

(assert (= bs!1019345 (and d!1454690 b!4618365)))

(declare-fun lambda!190173 () Int)

(assert (=> bs!1019345 (= lambda!190173 lambda!190090)))

(declare-fun bs!1019346 () Bool)

(assert (= bs!1019346 (and d!1454690 d!1454672)))

(assert (=> bs!1019346 (= lambda!190173 lambda!190167)))

(declare-fun lt!1774483 () ListMap!4197)

(assert (=> d!1454690 (invariantList!1179 (toList!4893 lt!1774483))))

(declare-fun e!2880883 () ListMap!4197)

(assert (=> d!1454690 (= lt!1774483 e!2880883)))

(declare-fun c!790651 () Bool)

(assert (=> d!1454690 (= c!790651 ((_ is Cons!51426) lt!1774242))))

(assert (=> d!1454690 (forall!10770 lt!1774242 lambda!190173)))

(assert (=> d!1454690 (= (extractMap!1520 lt!1774242) lt!1774483)))

(declare-fun b!4618546 () Bool)

(assert (=> b!4618546 (= e!2880883 (addToMapMapFromBucket!925 (_2!29446 (h!57450 lt!1774242)) (extractMap!1520 (t!358562 lt!1774242))))))

(declare-fun b!4618547 () Bool)

(assert (=> b!4618547 (= e!2880883 (ListMap!4198 Nil!51425))))

(assert (= (and d!1454690 c!790651) b!4618546))

(assert (= (and d!1454690 (not c!790651)) b!4618547))

(declare-fun m!5454109 () Bool)

(assert (=> d!1454690 m!5454109))

(declare-fun m!5454111 () Bool)

(assert (=> d!1454690 m!5454111))

(declare-fun m!5454113 () Bool)

(assert (=> b!4618546 m!5454113))

(assert (=> b!4618546 m!5454113))

(declare-fun m!5454115 () Bool)

(assert (=> b!4618546 m!5454115))

(assert (=> b!4618367 d!1454690))

(declare-fun d!1454692 () Bool)

(declare-fun res!1935559 () Bool)

(declare-fun e!2880898 () Bool)

(assert (=> d!1454692 (=> res!1935559 e!2880898)))

(assert (=> d!1454692 (= res!1935559 (not ((_ is Cons!51425) oldBucket!40)))))

(assert (=> d!1454692 (= (noDuplicateKeys!1464 oldBucket!40) e!2880898)))

(declare-fun b!4618568 () Bool)

(declare-fun e!2880899 () Bool)

(assert (=> b!4618568 (= e!2880898 e!2880899)))

(declare-fun res!1935560 () Bool)

(assert (=> b!4618568 (=> (not res!1935560) (not e!2880899))))

(assert (=> b!4618568 (= res!1935560 (not (containsKey!2354 (t!358561 oldBucket!40) (_1!29445 (h!57449 oldBucket!40)))))))

(declare-fun b!4618569 () Bool)

(assert (=> b!4618569 (= e!2880899 (noDuplicateKeys!1464 (t!358561 oldBucket!40)))))

(assert (= (and d!1454692 (not res!1935559)) b!4618568))

(assert (= (and b!4618568 res!1935560) b!4618569))

(declare-fun m!5454117 () Bool)

(assert (=> b!4618568 m!5454117))

(assert (=> b!4618569 m!5453885))

(assert (=> start!462216 d!1454692))

(declare-fun d!1454694 () Bool)

(declare-fun res!1935561 () Bool)

(declare-fun e!2880900 () Bool)

(assert (=> d!1454694 (=> res!1935561 e!2880900)))

(assert (=> d!1454694 (= res!1935561 (not ((_ is Cons!51425) newBucket!224)))))

(assert (=> d!1454694 (= (noDuplicateKeys!1464 newBucket!224) e!2880900)))

(declare-fun b!4618570 () Bool)

(declare-fun e!2880901 () Bool)

(assert (=> b!4618570 (= e!2880900 e!2880901)))

(declare-fun res!1935562 () Bool)

(assert (=> b!4618570 (=> (not res!1935562) (not e!2880901))))

(assert (=> b!4618570 (= res!1935562 (not (containsKey!2354 (t!358561 newBucket!224) (_1!29445 (h!57449 newBucket!224)))))))

(declare-fun b!4618571 () Bool)

(assert (=> b!4618571 (= e!2880901 (noDuplicateKeys!1464 (t!358561 newBucket!224)))))

(assert (= (and d!1454694 (not res!1935561)) b!4618570))

(assert (= (and b!4618570 res!1935562) b!4618571))

(declare-fun m!5454119 () Bool)

(assert (=> b!4618570 m!5454119))

(declare-fun m!5454121 () Bool)

(assert (=> b!4618571 m!5454121))

(assert (=> b!4618361 d!1454694))

(declare-fun b!4618575 () Bool)

(declare-fun e!2880902 () List!51549)

(assert (=> b!4618575 (= e!2880902 Nil!51425)))

(declare-fun b!4618574 () Bool)

(assert (=> b!4618574 (= e!2880902 (Cons!51425 (h!57449 oldBucket!40) (removePairForKey!1087 (t!358561 oldBucket!40) key!4968)))))

(declare-fun b!4618573 () Bool)

(declare-fun e!2880904 () List!51549)

(assert (=> b!4618573 (= e!2880904 e!2880902)))

(declare-fun c!790657 () Bool)

(assert (=> b!4618573 (= c!790657 ((_ is Cons!51425) oldBucket!40))))

(declare-fun b!4618572 () Bool)

(assert (=> b!4618572 (= e!2880904 (t!358561 oldBucket!40))))

(declare-fun d!1454696 () Bool)

(declare-fun lt!1774487 () List!51549)

(assert (=> d!1454696 (not (containsKey!2354 lt!1774487 key!4968))))

(assert (=> d!1454696 (= lt!1774487 e!2880904)))

(declare-fun c!790656 () Bool)

(assert (=> d!1454696 (= c!790656 (and ((_ is Cons!51425) oldBucket!40) (= (_1!29445 (h!57449 oldBucket!40)) key!4968)))))

(assert (=> d!1454696 (noDuplicateKeys!1464 oldBucket!40)))

(assert (=> d!1454696 (= (removePairForKey!1087 oldBucket!40 key!4968) lt!1774487)))

(assert (= (and d!1454696 c!790656) b!4618572))

(assert (= (and d!1454696 (not c!790656)) b!4618573))

(assert (= (and b!4618573 c!790657) b!4618574))

(assert (= (and b!4618573 (not c!790657)) b!4618575))

(declare-fun m!5454123 () Bool)

(assert (=> b!4618574 m!5454123))

(declare-fun m!5454125 () Bool)

(assert (=> d!1454696 m!5454125))

(assert (=> d!1454696 m!5453883))

(assert (=> b!4618356 d!1454696))

(declare-fun d!1454698 () Bool)

(declare-fun hash!3431 (Hashable!5861 K!12810) (_ BitVec 64))

(assert (=> d!1454698 (= (hash!3429 hashF!1389 key!4968) (hash!3431 hashF!1389 key!4968))))

(declare-fun bs!1019347 () Bool)

(assert (= bs!1019347 d!1454698))

(declare-fun m!5454141 () Bool)

(assert (=> bs!1019347 m!5454141))

(assert (=> b!4618366 d!1454698))

(declare-fun d!1454702 () Bool)

(declare-fun e!2880922 () Bool)

(assert (=> d!1454702 e!2880922))

(declare-fun res!1935577 () Bool)

(assert (=> d!1454702 (=> res!1935577 e!2880922)))

(declare-fun e!2880923 () Bool)

(assert (=> d!1454702 (= res!1935577 e!2880923)))

(declare-fun res!1935578 () Bool)

(assert (=> d!1454702 (=> (not res!1935578) (not e!2880923))))

(declare-fun lt!1774496 () Option!11496)

(declare-fun isEmpty!28904 (Option!11496) Bool)

(assert (=> d!1454702 (= res!1935578 (isEmpty!28904 lt!1774496))))

(declare-fun e!2880920 () Option!11496)

(assert (=> d!1454702 (= lt!1774496 e!2880920)))

(declare-fun c!790665 () Bool)

(assert (=> d!1454702 (= c!790665 (and ((_ is Cons!51425) lt!1774245) (= (_1!29445 (h!57449 lt!1774245)) key!4968)))))

(assert (=> d!1454702 (noDuplicateKeys!1464 lt!1774245)))

(assert (=> d!1454702 (= (getPair!256 lt!1774245 key!4968) lt!1774496)))

(declare-fun b!4618600 () Bool)

(assert (=> b!4618600 (= e!2880923 (not (containsKey!2354 lt!1774245 key!4968)))))

(declare-fun b!4618601 () Bool)

(declare-fun e!2880919 () Option!11496)

(assert (=> b!4618601 (= e!2880919 None!11495)))

(declare-fun b!4618602 () Bool)

(assert (=> b!4618602 (= e!2880920 (Some!11495 (h!57449 lt!1774245)))))

(declare-fun b!4618603 () Bool)

(declare-fun e!2880921 () Bool)

(assert (=> b!4618603 (= e!2880922 e!2880921)))

(declare-fun res!1935575 () Bool)

(assert (=> b!4618603 (=> (not res!1935575) (not e!2880921))))

(assert (=> b!4618603 (= res!1935575 (isDefined!8761 lt!1774496))))

(declare-fun b!4618604 () Bool)

(assert (=> b!4618604 (= e!2880920 e!2880919)))

(declare-fun c!790664 () Bool)

(assert (=> b!4618604 (= c!790664 ((_ is Cons!51425) lt!1774245))))

(declare-fun b!4618605 () Bool)

(declare-fun res!1935576 () Bool)

(assert (=> b!4618605 (=> (not res!1935576) (not e!2880921))))

(declare-fun get!17005 (Option!11496) tuple2!52302)

(assert (=> b!4618605 (= res!1935576 (= (_1!29445 (get!17005 lt!1774496)) key!4968))))

(declare-fun b!4618606 () Bool)

(assert (=> b!4618606 (= e!2880919 (getPair!256 (t!358561 lt!1774245) key!4968))))

(declare-fun b!4618607 () Bool)

(declare-fun contains!14406 (List!51549 tuple2!52302) Bool)

(assert (=> b!4618607 (= e!2880921 (contains!14406 lt!1774245 (get!17005 lt!1774496)))))

(assert (= (and d!1454702 c!790665) b!4618602))

(assert (= (and d!1454702 (not c!790665)) b!4618604))

(assert (= (and b!4618604 c!790664) b!4618606))

(assert (= (and b!4618604 (not c!790664)) b!4618601))

(assert (= (and d!1454702 res!1935578) b!4618600))

(assert (= (and d!1454702 (not res!1935577)) b!4618603))

(assert (= (and b!4618603 res!1935575) b!4618605))

(assert (= (and b!4618605 res!1935576) b!4618607))

(declare-fun m!5454147 () Bool)

(assert (=> b!4618605 m!5454147))

(declare-fun m!5454149 () Bool)

(assert (=> d!1454702 m!5454149))

(declare-fun m!5454151 () Bool)

(assert (=> d!1454702 m!5454151))

(declare-fun m!5454153 () Bool)

(assert (=> b!4618603 m!5454153))

(declare-fun m!5454155 () Bool)

(assert (=> b!4618600 m!5454155))

(assert (=> b!4618607 m!5454147))

(assert (=> b!4618607 m!5454147))

(declare-fun m!5454157 () Bool)

(assert (=> b!4618607 m!5454157))

(declare-fun m!5454161 () Bool)

(assert (=> b!4618606 m!5454161))

(assert (=> b!4618365 d!1454702))

(declare-fun d!1454708 () Bool)

(declare-fun dynLambda!21473 (Int tuple2!52304) Bool)

(assert (=> d!1454708 (dynLambda!21473 lambda!190090 lt!1774246)))

(declare-fun lt!1774499 () Unit!110718)

(declare-fun choose!31134 (List!51550 Int tuple2!52304) Unit!110718)

(assert (=> d!1454708 (= lt!1774499 (choose!31134 lt!1774242 lambda!190090 lt!1774246))))

(declare-fun e!2880936 () Bool)

(assert (=> d!1454708 e!2880936))

(declare-fun res!1935587 () Bool)

(assert (=> d!1454708 (=> (not res!1935587) (not e!2880936))))

(assert (=> d!1454708 (= res!1935587 (forall!10770 lt!1774242 lambda!190090))))

(assert (=> d!1454708 (= (forallContained!2983 lt!1774242 lambda!190090 lt!1774246) lt!1774499)))

(declare-fun b!4618622 () Bool)

(assert (=> b!4618622 (= e!2880936 (contains!14400 lt!1774242 lt!1774246))))

(assert (= (and d!1454708 res!1935587) b!4618622))

(declare-fun b_lambda!170577 () Bool)

(assert (=> (not b_lambda!170577) (not d!1454708)))

(declare-fun m!5454173 () Bool)

(assert (=> d!1454708 m!5454173))

(declare-fun m!5454175 () Bool)

(assert (=> d!1454708 m!5454175))

(declare-fun m!5454177 () Bool)

(assert (=> d!1454708 m!5454177))

(assert (=> b!4618622 m!5453865))

(assert (=> b!4618365 d!1454708))

(declare-fun d!1454718 () Bool)

(assert (=> d!1454718 (containsKey!2354 oldBucket!40 key!4968)))

(declare-fun lt!1774502 () Unit!110718)

(declare-fun choose!31135 (List!51549 K!12810 Hashable!5861) Unit!110718)

(assert (=> d!1454718 (= lt!1774502 (choose!31135 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1454718 (noDuplicateKeys!1464 oldBucket!40)))

(assert (=> d!1454718 (= (lemmaGetPairDefinedThenContainsKey!10 oldBucket!40 key!4968 hashF!1389) lt!1774502)))

(declare-fun bs!1019356 () Bool)

(assert (= bs!1019356 d!1454718))

(assert (=> bs!1019356 m!5453863))

(declare-fun m!5454179 () Bool)

(assert (=> bs!1019356 m!5454179))

(assert (=> bs!1019356 m!5453883))

(assert (=> b!4618365 d!1454718))

(declare-fun d!1454720 () Bool)

(assert (=> d!1454720 (contains!14400 (toList!4894 lt!1774240) (tuple2!52305 lt!1774248 lt!1774245))))

(declare-fun lt!1774505 () Unit!110718)

(declare-fun choose!31136 (ListLongMap!3483 (_ BitVec 64) List!51549) Unit!110718)

(assert (=> d!1454720 (= lt!1774505 (choose!31136 lt!1774240 lt!1774248 lt!1774245))))

(assert (=> d!1454720 (contains!14401 lt!1774240 lt!1774248)))

(assert (=> d!1454720 (= (lemmaGetValueImpliesTupleContained!61 lt!1774240 lt!1774248 lt!1774245) lt!1774505)))

(declare-fun bs!1019357 () Bool)

(assert (= bs!1019357 d!1454720))

(declare-fun m!5454181 () Bool)

(assert (=> bs!1019357 m!5454181))

(declare-fun m!5454183 () Bool)

(assert (=> bs!1019357 m!5454183))

(assert (=> bs!1019357 m!5453853))

(assert (=> b!4618365 d!1454720))

(declare-fun d!1454722 () Bool)

(declare-fun e!2880942 () Bool)

(assert (=> d!1454722 e!2880942))

(declare-fun res!1935590 () Bool)

(assert (=> d!1454722 (=> res!1935590 e!2880942)))

(declare-fun lt!1774515 () Bool)

(assert (=> d!1454722 (= res!1935590 (not lt!1774515))))

(declare-fun lt!1774517 () Bool)

(assert (=> d!1454722 (= lt!1774515 lt!1774517)))

(declare-fun lt!1774516 () Unit!110718)

(declare-fun e!2880941 () Unit!110718)

(assert (=> d!1454722 (= lt!1774516 e!2880941)))

(declare-fun c!790668 () Bool)

(assert (=> d!1454722 (= c!790668 lt!1774517)))

(declare-fun containsKey!2358 (List!51550 (_ BitVec 64)) Bool)

(assert (=> d!1454722 (= lt!1774517 (containsKey!2358 (toList!4894 lt!1774240) lt!1774248))))

(assert (=> d!1454722 (= (contains!14401 lt!1774240 lt!1774248) lt!1774515)))

(declare-fun b!4618630 () Bool)

(declare-fun lt!1774514 () Unit!110718)

(assert (=> b!4618630 (= e!2880941 lt!1774514)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1304 (List!51550 (_ BitVec 64)) Unit!110718)

(assert (=> b!4618630 (= lt!1774514 (lemmaContainsKeyImpliesGetValueByKeyDefined!1304 (toList!4894 lt!1774240) lt!1774248))))

(declare-datatypes ((Option!11500 0))(
  ( (None!11499) (Some!11499 (v!45577 List!51549)) )
))
(declare-fun isDefined!8765 (Option!11500) Bool)

(declare-fun getValueByKey!1402 (List!51550 (_ BitVec 64)) Option!11500)

(assert (=> b!4618630 (isDefined!8765 (getValueByKey!1402 (toList!4894 lt!1774240) lt!1774248))))

(declare-fun b!4618631 () Bool)

(declare-fun Unit!110747 () Unit!110718)

(assert (=> b!4618631 (= e!2880941 Unit!110747)))

(declare-fun b!4618632 () Bool)

(assert (=> b!4618632 (= e!2880942 (isDefined!8765 (getValueByKey!1402 (toList!4894 lt!1774240) lt!1774248)))))

(assert (= (and d!1454722 c!790668) b!4618630))

(assert (= (and d!1454722 (not c!790668)) b!4618631))

(assert (= (and d!1454722 (not res!1935590)) b!4618632))

(declare-fun m!5454185 () Bool)

(assert (=> d!1454722 m!5454185))

(declare-fun m!5454187 () Bool)

(assert (=> b!4618630 m!5454187))

(declare-fun m!5454189 () Bool)

(assert (=> b!4618630 m!5454189))

(assert (=> b!4618630 m!5454189))

(declare-fun m!5454191 () Bool)

(assert (=> b!4618630 m!5454191))

(assert (=> b!4618632 m!5454189))

(assert (=> b!4618632 m!5454189))

(assert (=> b!4618632 m!5454191))

(assert (=> b!4618365 d!1454722))

(declare-fun d!1454724 () Bool)

(declare-fun res!1935595 () Bool)

(declare-fun e!2880947 () Bool)

(assert (=> d!1454724 (=> res!1935595 e!2880947)))

(assert (=> d!1454724 (= res!1935595 (and ((_ is Cons!51425) (t!358561 oldBucket!40)) (= (_1!29445 (h!57449 (t!358561 oldBucket!40))) key!4968)))))

(assert (=> d!1454724 (= (containsKey!2354 (t!358561 oldBucket!40) key!4968) e!2880947)))

(declare-fun b!4618637 () Bool)

(declare-fun e!2880948 () Bool)

(assert (=> b!4618637 (= e!2880947 e!2880948)))

(declare-fun res!1935596 () Bool)

(assert (=> b!4618637 (=> (not res!1935596) (not e!2880948))))

(assert (=> b!4618637 (= res!1935596 ((_ is Cons!51425) (t!358561 oldBucket!40)))))

(declare-fun b!4618638 () Bool)

(assert (=> b!4618638 (= e!2880948 (containsKey!2354 (t!358561 (t!358561 oldBucket!40)) key!4968))))

(assert (= (and d!1454724 (not res!1935595)) b!4618637))

(assert (= (and b!4618637 res!1935596) b!4618638))

(declare-fun m!5454193 () Bool)

(assert (=> b!4618638 m!5454193))

(assert (=> b!4618365 d!1454724))

(declare-fun d!1454726 () Bool)

(declare-fun get!17006 (Option!11500) List!51549)

(assert (=> d!1454726 (= (apply!12129 lt!1774240 lt!1774248) (get!17006 (getValueByKey!1402 (toList!4894 lt!1774240) lt!1774248)))))

(declare-fun bs!1019358 () Bool)

(assert (= bs!1019358 d!1454726))

(assert (=> bs!1019358 m!5454189))

(assert (=> bs!1019358 m!5454189))

(declare-fun m!5454195 () Bool)

(assert (=> bs!1019358 m!5454195))

(assert (=> b!4618365 d!1454726))

(declare-fun bs!1019359 () Bool)

(declare-fun d!1454728 () Bool)

(assert (= bs!1019359 (and d!1454728 b!4618365)))

(declare-fun lambda!190179 () Int)

(assert (=> bs!1019359 (= lambda!190179 lambda!190090)))

(declare-fun bs!1019360 () Bool)

(assert (= bs!1019360 (and d!1454728 d!1454672)))

(assert (=> bs!1019360 (= lambda!190179 lambda!190167)))

(declare-fun bs!1019361 () Bool)

(assert (= bs!1019361 (and d!1454728 d!1454690)))

(assert (=> bs!1019361 (= lambda!190179 lambda!190173)))

(assert (=> d!1454728 (contains!14401 lt!1774240 (hash!3429 hashF!1389 key!4968))))

(declare-fun lt!1774520 () Unit!110718)

(declare-fun choose!31137 (ListLongMap!3483 K!12810 Hashable!5861) Unit!110718)

(assert (=> d!1454728 (= lt!1774520 (choose!31137 lt!1774240 key!4968 hashF!1389))))

(assert (=> d!1454728 (forall!10770 (toList!4894 lt!1774240) lambda!190179)))

(assert (=> d!1454728 (= (lemmaInGenMapThenLongMapContainsHash!462 lt!1774240 key!4968 hashF!1389) lt!1774520)))

(declare-fun bs!1019362 () Bool)

(assert (= bs!1019362 d!1454728))

(assert (=> bs!1019362 m!5453881))

(assert (=> bs!1019362 m!5453881))

(declare-fun m!5454197 () Bool)

(assert (=> bs!1019362 m!5454197))

(declare-fun m!5454199 () Bool)

(assert (=> bs!1019362 m!5454199))

(declare-fun m!5454201 () Bool)

(assert (=> bs!1019362 m!5454201))

(assert (=> b!4618365 d!1454728))

(declare-fun d!1454730 () Bool)

(assert (=> d!1454730 (= (isDefined!8761 (getPair!256 lt!1774245 key!4968)) (not (isEmpty!28904 (getPair!256 lt!1774245 key!4968))))))

(declare-fun bs!1019363 () Bool)

(assert (= bs!1019363 d!1454730))

(assert (=> bs!1019363 m!5453867))

(declare-fun m!5454203 () Bool)

(assert (=> bs!1019363 m!5454203))

(assert (=> b!4618365 d!1454730))

(declare-fun d!1454732 () Bool)

(declare-fun lt!1774523 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8747 (List!51550) (InoxSet tuple2!52304))

(assert (=> d!1454732 (= lt!1774523 (select (content!8747 lt!1774242) lt!1774246))))

(declare-fun e!2880954 () Bool)

(assert (=> d!1454732 (= lt!1774523 e!2880954)))

(declare-fun res!1935602 () Bool)

(assert (=> d!1454732 (=> (not res!1935602) (not e!2880954))))

(assert (=> d!1454732 (= res!1935602 ((_ is Cons!51426) lt!1774242))))

(assert (=> d!1454732 (= (contains!14400 lt!1774242 lt!1774246) lt!1774523)))

(declare-fun b!4618643 () Bool)

(declare-fun e!2880953 () Bool)

(assert (=> b!4618643 (= e!2880954 e!2880953)))

(declare-fun res!1935601 () Bool)

(assert (=> b!4618643 (=> res!1935601 e!2880953)))

(assert (=> b!4618643 (= res!1935601 (= (h!57450 lt!1774242) lt!1774246))))

(declare-fun b!4618644 () Bool)

(assert (=> b!4618644 (= e!2880953 (contains!14400 (t!358562 lt!1774242) lt!1774246))))

(assert (= (and d!1454732 res!1935602) b!4618643))

(assert (= (and b!4618643 (not res!1935601)) b!4618644))

(declare-fun m!5454205 () Bool)

(assert (=> d!1454732 m!5454205))

(declare-fun m!5454207 () Bool)

(assert (=> d!1454732 m!5454207))

(declare-fun m!5454209 () Bool)

(assert (=> b!4618644 m!5454209))

(assert (=> b!4618365 d!1454732))

(declare-fun bs!1019364 () Bool)

(declare-fun d!1454734 () Bool)

(assert (= bs!1019364 (and d!1454734 b!4618365)))

(declare-fun lambda!190186 () Int)

(assert (=> bs!1019364 (= lambda!190186 lambda!190090)))

(declare-fun bs!1019365 () Bool)

(assert (= bs!1019365 (and d!1454734 d!1454672)))

(assert (=> bs!1019365 (= lambda!190186 lambda!190167)))

(declare-fun bs!1019366 () Bool)

(assert (= bs!1019366 (and d!1454734 d!1454690)))

(assert (=> bs!1019366 (= lambda!190186 lambda!190173)))

(declare-fun bs!1019367 () Bool)

(assert (= bs!1019367 (and d!1454734 d!1454728)))

(assert (=> bs!1019367 (= lambda!190186 lambda!190179)))

(declare-fun b!4618653 () Bool)

(declare-fun res!1935611 () Bool)

(declare-fun e!2880959 () Bool)

(assert (=> b!4618653 (=> (not res!1935611) (not e!2880959))))

(declare-fun allKeysSameHashInMap!1501 (ListLongMap!3483 Hashable!5861) Bool)

(assert (=> b!4618653 (= res!1935611 (allKeysSameHashInMap!1501 lt!1774240 hashF!1389))))

(declare-fun b!4618654 () Bool)

(declare-fun res!1935612 () Bool)

(assert (=> b!4618654 (=> (not res!1935612) (not e!2880959))))

(assert (=> b!4618654 (= res!1935612 (contains!14402 (extractMap!1520 (toList!4894 lt!1774240)) key!4968))))

(declare-fun b!4618655 () Bool)

(assert (=> b!4618655 (= e!2880959 (isDefined!8761 (getPair!256 (apply!12129 lt!1774240 (hash!3429 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1774544 () Unit!110718)

(assert (=> b!4618655 (= lt!1774544 (forallContained!2983 (toList!4894 lt!1774240) lambda!190186 (tuple2!52305 (hash!3429 hashF!1389 key!4968) (apply!12129 lt!1774240 (hash!3429 hashF!1389 key!4968)))))))

(declare-fun lt!1774545 () Unit!110718)

(declare-fun lt!1774547 () Unit!110718)

(assert (=> b!4618655 (= lt!1774545 lt!1774547)))

(declare-fun lt!1774546 () (_ BitVec 64))

(declare-fun lt!1774543 () List!51549)

(assert (=> b!4618655 (contains!14400 (toList!4894 lt!1774240) (tuple2!52305 lt!1774546 lt!1774543))))

(assert (=> b!4618655 (= lt!1774547 (lemmaGetValueImpliesTupleContained!61 lt!1774240 lt!1774546 lt!1774543))))

(declare-fun e!2880960 () Bool)

(assert (=> b!4618655 e!2880960))

(declare-fun res!1935613 () Bool)

(assert (=> b!4618655 (=> (not res!1935613) (not e!2880960))))

(assert (=> b!4618655 (= res!1935613 (contains!14401 lt!1774240 lt!1774546))))

(assert (=> b!4618655 (= lt!1774543 (apply!12129 lt!1774240 (hash!3429 hashF!1389 key!4968)))))

(assert (=> b!4618655 (= lt!1774546 (hash!3429 hashF!1389 key!4968))))

(declare-fun lt!1774542 () Unit!110718)

(declare-fun lt!1774540 () Unit!110718)

(assert (=> b!4618655 (= lt!1774542 lt!1774540)))

(assert (=> b!4618655 (contains!14401 lt!1774240 (hash!3429 hashF!1389 key!4968))))

(assert (=> b!4618655 (= lt!1774540 (lemmaInGenMapThenLongMapContainsHash!462 lt!1774240 key!4968 hashF!1389))))

(declare-fun b!4618656 () Bool)

(assert (=> b!4618656 (= e!2880960 (= (getValueByKey!1402 (toList!4894 lt!1774240) lt!1774546) (Some!11499 lt!1774543)))))

(assert (=> d!1454734 e!2880959))

(declare-fun res!1935614 () Bool)

(assert (=> d!1454734 (=> (not res!1935614) (not e!2880959))))

(assert (=> d!1454734 (= res!1935614 (forall!10770 (toList!4894 lt!1774240) lambda!190186))))

(declare-fun lt!1774541 () Unit!110718)

(declare-fun choose!31138 (ListLongMap!3483 K!12810 Hashable!5861) Unit!110718)

(assert (=> d!1454734 (= lt!1774541 (choose!31138 lt!1774240 key!4968 hashF!1389))))

(assert (=> d!1454734 (forall!10770 (toList!4894 lt!1774240) lambda!190186)))

(assert (=> d!1454734 (= (lemmaInGenMapThenGetPairDefined!52 lt!1774240 key!4968 hashF!1389) lt!1774541)))

(assert (= (and d!1454734 res!1935614) b!4618653))

(assert (= (and b!4618653 res!1935611) b!4618654))

(assert (= (and b!4618654 res!1935612) b!4618655))

(assert (= (and b!4618655 res!1935613) b!4618656))

(declare-fun m!5454211 () Bool)

(assert (=> b!4618653 m!5454211))

(declare-fun m!5454213 () Bool)

(assert (=> b!4618654 m!5454213))

(assert (=> b!4618654 m!5454213))

(declare-fun m!5454215 () Bool)

(assert (=> b!4618654 m!5454215))

(declare-fun m!5454217 () Bool)

(assert (=> d!1454734 m!5454217))

(declare-fun m!5454219 () Bool)

(assert (=> d!1454734 m!5454219))

(assert (=> d!1454734 m!5454217))

(assert (=> b!4618655 m!5453881))

(declare-fun m!5454221 () Bool)

(assert (=> b!4618655 m!5454221))

(assert (=> b!4618655 m!5453881))

(assert (=> b!4618655 m!5454197))

(declare-fun m!5454223 () Bool)

(assert (=> b!4618655 m!5454223))

(declare-fun m!5454225 () Bool)

(assert (=> b!4618655 m!5454225))

(declare-fun m!5454227 () Bool)

(assert (=> b!4618655 m!5454227))

(assert (=> b!4618655 m!5453881))

(declare-fun m!5454229 () Bool)

(assert (=> b!4618655 m!5454229))

(assert (=> b!4618655 m!5454221))

(assert (=> b!4618655 m!5454225))

(declare-fun m!5454231 () Bool)

(assert (=> b!4618655 m!5454231))

(declare-fun m!5454233 () Bool)

(assert (=> b!4618655 m!5454233))

(assert (=> b!4618655 m!5453859))

(declare-fun m!5454235 () Bool)

(assert (=> b!4618656 m!5454235))

(assert (=> b!4618365 d!1454734))

(declare-fun d!1454736 () Bool)

(declare-fun res!1935615 () Bool)

(declare-fun e!2880961 () Bool)

(assert (=> d!1454736 (=> res!1935615 e!2880961)))

(assert (=> d!1454736 (= res!1935615 (and ((_ is Cons!51425) oldBucket!40) (= (_1!29445 (h!57449 oldBucket!40)) key!4968)))))

(assert (=> d!1454736 (= (containsKey!2354 oldBucket!40 key!4968) e!2880961)))

(declare-fun b!4618657 () Bool)

(declare-fun e!2880962 () Bool)

(assert (=> b!4618657 (= e!2880961 e!2880962)))

(declare-fun res!1935616 () Bool)

(assert (=> b!4618657 (=> (not res!1935616) (not e!2880962))))

(assert (=> b!4618657 (= res!1935616 ((_ is Cons!51425) oldBucket!40))))

(declare-fun b!4618658 () Bool)

(assert (=> b!4618658 (= e!2880962 (containsKey!2354 (t!358561 oldBucket!40) key!4968))))

(assert (= (and d!1454736 (not res!1935615)) b!4618657))

(assert (= (and b!4618657 res!1935616) b!4618658))

(assert (=> b!4618658 m!5453869))

(assert (=> b!4618365 d!1454736))

(declare-fun bs!1019368 () Bool)

(declare-fun d!1454738 () Bool)

(assert (= bs!1019368 (and d!1454738 b!4618466)))

(declare-fun lambda!190189 () Int)

(assert (=> bs!1019368 (not (= lambda!190189 lambda!190159))))

(declare-fun bs!1019369 () Bool)

(assert (= bs!1019369 (and d!1454738 b!4618469)))

(assert (=> bs!1019369 (not (= lambda!190189 lambda!190160))))

(assert (=> bs!1019369 (not (= lambda!190189 lambda!190161))))

(declare-fun bs!1019370 () Bool)

(assert (= bs!1019370 (and d!1454738 d!1454658)))

(assert (=> bs!1019370 (not (= lambda!190189 lambda!190162))))

(assert (=> d!1454738 true))

(assert (=> d!1454738 true))

(assert (=> d!1454738 (= (allKeysSameHash!1318 oldBucket!40 hash!414 hashF!1389) (forall!10769 oldBucket!40 lambda!190189))))

(declare-fun bs!1019371 () Bool)

(assert (= bs!1019371 d!1454738))

(declare-fun m!5454237 () Bool)

(assert (=> bs!1019371 m!5454237))

(assert (=> b!4618360 d!1454738))

(declare-fun bs!1019372 () Bool)

(declare-fun d!1454740 () Bool)

(assert (= bs!1019372 (and d!1454740 d!1454738)))

(declare-fun lambda!190190 () Int)

(assert (=> bs!1019372 (= lambda!190190 lambda!190189)))

(declare-fun bs!1019373 () Bool)

(assert (= bs!1019373 (and d!1454740 b!4618469)))

(assert (=> bs!1019373 (not (= lambda!190190 lambda!190160))))

(declare-fun bs!1019374 () Bool)

(assert (= bs!1019374 (and d!1454740 d!1454658)))

(assert (=> bs!1019374 (not (= lambda!190190 lambda!190162))))

(assert (=> bs!1019373 (not (= lambda!190190 lambda!190161))))

(declare-fun bs!1019375 () Bool)

(assert (= bs!1019375 (and d!1454740 b!4618466)))

(assert (=> bs!1019375 (not (= lambda!190190 lambda!190159))))

(assert (=> d!1454740 true))

(assert (=> d!1454740 true))

(assert (=> d!1454740 (= (allKeysSameHash!1318 newBucket!224 hash!414 hashF!1389) (forall!10769 newBucket!224 lambda!190190))))

(declare-fun bs!1019376 () Bool)

(assert (= bs!1019376 d!1454740))

(declare-fun m!5454239 () Bool)

(assert (=> bs!1019376 m!5454239))

(assert (=> b!4618359 d!1454740))

(declare-fun d!1454742 () Bool)

(declare-fun res!1935617 () Bool)

(declare-fun e!2880963 () Bool)

(assert (=> d!1454742 (=> res!1935617 e!2880963)))

(assert (=> d!1454742 (= res!1935617 (not ((_ is Cons!51425) (t!358561 oldBucket!40))))))

(assert (=> d!1454742 (= (noDuplicateKeys!1464 (t!358561 oldBucket!40)) e!2880963)))

(declare-fun b!4618663 () Bool)

(declare-fun e!2880964 () Bool)

(assert (=> b!4618663 (= e!2880963 e!2880964)))

(declare-fun res!1935618 () Bool)

(assert (=> b!4618663 (=> (not res!1935618) (not e!2880964))))

(assert (=> b!4618663 (= res!1935618 (not (containsKey!2354 (t!358561 (t!358561 oldBucket!40)) (_1!29445 (h!57449 (t!358561 oldBucket!40))))))))

(declare-fun b!4618664 () Bool)

(assert (=> b!4618664 (= e!2880964 (noDuplicateKeys!1464 (t!358561 (t!358561 oldBucket!40))))))

(assert (= (and d!1454742 (not res!1935617)) b!4618663))

(assert (= (and b!4618663 res!1935618) b!4618664))

(declare-fun m!5454241 () Bool)

(assert (=> b!4618663 m!5454241))

(declare-fun m!5454243 () Bool)

(assert (=> b!4618664 m!5454243))

(assert (=> b!4618364 d!1454742))

(declare-fun e!2880967 () Bool)

(declare-fun tp!1341758 () Bool)

(declare-fun b!4618669 () Bool)

(assert (=> b!4618669 (= e!2880967 (and tp_is_empty!29149 tp_is_empty!29151 tp!1341758))))

(assert (=> b!4618358 (= tp!1341751 e!2880967)))

(assert (= (and b!4618358 ((_ is Cons!51425) (t!358561 oldBucket!40))) b!4618669))

(declare-fun tp!1341759 () Bool)

(declare-fun e!2880968 () Bool)

(declare-fun b!4618670 () Bool)

(assert (=> b!4618670 (= e!2880968 (and tp_is_empty!29149 tp_is_empty!29151 tp!1341759))))

(assert (=> b!4618362 (= tp!1341750 e!2880968)))

(assert (= (and b!4618362 ((_ is Cons!51425) (t!358561 newBucket!224))) b!4618670))

(declare-fun b_lambda!170579 () Bool)

(assert (= b_lambda!170577 (or b!4618365 b_lambda!170579)))

(declare-fun bs!1019377 () Bool)

(declare-fun d!1454744 () Bool)

(assert (= bs!1019377 (and d!1454744 b!4618365)))

(assert (=> bs!1019377 (= (dynLambda!21473 lambda!190090 lt!1774246) (noDuplicateKeys!1464 (_2!29446 lt!1774246)))))

(declare-fun m!5454245 () Bool)

(assert (=> bs!1019377 m!5454245))

(assert (=> d!1454708 d!1454744))

(check-sat (not d!1454720) tp_is_empty!29149 (not b_lambda!170579) (not bm!322054) (not b!4618607) (not b!4618605) (not b!4618574) (not b!4618467) (not b!4618569) (not b!4618469) (not b!4618541) (not b!4618477) (not d!1454728) (not b!4618546) tp_is_empty!29151 (not b!4618540) (not b!4618644) (not d!1454696) (not b!4618571) (not d!1454658) (not b!4618622) (not b!4618638) (not d!1454730) (not d!1454738) (not bm!322055) (not b!4618654) (not b!4618539) (not b!4618664) (not d!1454690) (not b!4618568) (not d!1454726) (not b!4618606) (not b!4618669) (not d!1454674) (not d!1454708) (not b!4618544) (not d!1454734) (not b!4618653) (not b!4618537) (not bm!322053) (not b!4618632) (not b!4618655) (not d!1454698) (not b!4618468) (not b!4618670) (not d!1454722) (not bm!322058) (not bs!1019377) (not d!1454702) (not d!1454672) (not b!4618570) (not b!4618658) (not b!4618545) (not b!4618497) (not d!1454718) (not b!4618603) (not b!4618600) (not b!4618630) (not d!1454732) (not d!1454680) (not b!4618656) (not b!4618543) (not b!4618663) (not b!4618470) (not d!1454740))
(check-sat)
