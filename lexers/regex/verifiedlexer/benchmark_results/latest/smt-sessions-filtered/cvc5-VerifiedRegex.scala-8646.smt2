; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461234 () Bool)

(assert start!461234)

(declare-fun b!4611363 () Bool)

(declare-fun e!2876490 () Bool)

(declare-fun e!2876487 () Bool)

(assert (=> b!4611363 (= e!2876490 (not e!2876487))))

(declare-fun res!1930846 () Bool)

(assert (=> b!4611363 (=> res!1930846 e!2876487)))

(declare-datatypes ((K!12633 0))(
  ( (K!12634 (val!18377 Int)) )
))
(declare-datatypes ((V!12879 0))(
  ( (V!12880 (val!18378 Int)) )
))
(declare-datatypes ((tuple2!52018 0))(
  ( (tuple2!52019 (_1!29303 K!12633) (_2!29303 V!12879)) )
))
(declare-datatypes ((List!51381 0))(
  ( (Nil!51257) (Cons!51257 (h!57255 tuple2!52018) (t!358375 List!51381)) )
))
(declare-fun oldBucket!40 () List!51381)

(declare-fun key!4968 () K!12633)

(assert (=> b!4611363 (= res!1930846 (or (not (is-Cons!51257 oldBucket!40)) (not (= (_1!29303 (h!57255 oldBucket!40)) key!4968))))))

(declare-fun e!2876489 () Bool)

(assert (=> b!4611363 e!2876489))

(declare-fun res!1930838 () Bool)

(assert (=> b!4611363 (=> (not res!1930838) (not e!2876489))))

(declare-datatypes ((ListMap!4055 0))(
  ( (ListMap!4056 (toList!4781 List!51381)) )
))
(declare-fun lt!1767226 () ListMap!4055)

(declare-fun lt!1767225 () ListMap!4055)

(declare-fun addToMapMapFromBucket!854 (List!51381 ListMap!4055) ListMap!4055)

(assert (=> b!4611363 (= res!1930838 (= lt!1767226 (addToMapMapFromBucket!854 oldBucket!40 lt!1767225)))))

(declare-datatypes ((tuple2!52020 0))(
  ( (tuple2!52021 (_1!29304 (_ BitVec 64)) (_2!29304 List!51381)) )
))
(declare-datatypes ((List!51382 0))(
  ( (Nil!51258) (Cons!51258 (h!57256 tuple2!52020) (t!358376 List!51382)) )
))
(declare-fun extractMap!1449 (List!51382) ListMap!4055)

(assert (=> b!4611363 (= lt!1767225 (extractMap!1449 Nil!51258))))

(assert (=> b!4611363 true))

(declare-fun b!4611364 () Bool)

(declare-fun res!1930845 () Bool)

(assert (=> b!4611364 (=> (not res!1930845) (not e!2876490))))

(declare-datatypes ((Hashable!5790 0))(
  ( (HashableExt!5789 (__x!31493 Int)) )
))
(declare-fun hashF!1389 () Hashable!5790)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51381)

(declare-fun allKeysSameHash!1247 (List!51381 (_ BitVec 64) Hashable!5790) Bool)

(assert (=> b!4611364 (= res!1930845 (allKeysSameHash!1247 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp_is_empty!28867 () Bool)

(declare-fun e!2876485 () Bool)

(declare-fun tp!1341220 () Bool)

(declare-fun b!4611365 () Bool)

(declare-fun tp_is_empty!28865 () Bool)

(assert (=> b!4611365 (= e!2876485 (and tp_is_empty!28865 tp_is_empty!28867 tp!1341220))))

(declare-fun b!4611366 () Bool)

(declare-fun res!1930840 () Bool)

(declare-fun e!2876486 () Bool)

(assert (=> b!4611366 (=> (not res!1930840) (not e!2876486))))

(assert (=> b!4611366 (= res!1930840 (allKeysSameHash!1247 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1341221 () Bool)

(declare-fun b!4611367 () Bool)

(declare-fun e!2876491 () Bool)

(assert (=> b!4611367 (= e!2876491 (and tp_is_empty!28865 tp_is_empty!28867 tp!1341221))))

(declare-fun res!1930841 () Bool)

(assert (=> start!461234 (=> (not res!1930841) (not e!2876486))))

(declare-fun noDuplicateKeys!1393 (List!51381) Bool)

(assert (=> start!461234 (= res!1930841 (noDuplicateKeys!1393 oldBucket!40))))

(assert (=> start!461234 e!2876486))

(assert (=> start!461234 true))

(assert (=> start!461234 e!2876485))

(assert (=> start!461234 tp_is_empty!28865))

(assert (=> start!461234 e!2876491))

(declare-fun b!4611368 () Bool)

(assert (=> b!4611368 (= e!2876486 e!2876490)))

(declare-fun res!1930837 () Bool)

(assert (=> b!4611368 (=> (not res!1930837) (not e!2876490))))

(declare-fun contains!14255 (ListMap!4055 K!12633) Bool)

(assert (=> b!4611368 (= res!1930837 (contains!14255 lt!1767226 key!4968))))

(assert (=> b!4611368 (= lt!1767226 (extractMap!1449 (Cons!51258 (tuple2!52021 hash!414 oldBucket!40) Nil!51258)))))

(declare-fun b!4611369 () Bool)

(declare-fun e!2876488 () Bool)

(assert (=> b!4611369 (= e!2876487 e!2876488)))

(declare-fun res!1930839 () Bool)

(assert (=> b!4611369 (=> res!1930839 e!2876488)))

(declare-fun lt!1767224 () List!51381)

(assert (=> b!4611369 (= res!1930839 (not (= lt!1767224 newBucket!224)))))

(declare-fun tail!8040 (List!51381) List!51381)

(assert (=> b!4611369 (= lt!1767224 (tail!8040 oldBucket!40))))

(declare-fun b!4611370 () Bool)

(declare-fun res!1930844 () Bool)

(assert (=> b!4611370 (=> (not res!1930844) (not e!2876486))))

(assert (=> b!4611370 (= res!1930844 (noDuplicateKeys!1393 newBucket!224))))

(declare-fun b!4611371 () Bool)

(declare-fun lambda!188507 () Int)

(declare-fun forall!10708 (List!51382 Int) Bool)

(assert (=> b!4611371 (= e!2876488 (forall!10708 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258) lambda!188507))))

(declare-fun b!4611372 () Bool)

(declare-fun res!1930842 () Bool)

(assert (=> b!4611372 (=> (not res!1930842) (not e!2876490))))

(declare-fun hash!3334 (Hashable!5790 K!12633) (_ BitVec 64))

(assert (=> b!4611372 (= res!1930842 (= (hash!3334 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611373 () Bool)

(assert (=> b!4611373 (= e!2876489 (= lt!1767225 (ListMap!4056 Nil!51257)))))

(declare-fun b!4611374 () Bool)

(declare-fun res!1930843 () Bool)

(assert (=> b!4611374 (=> (not res!1930843) (not e!2876486))))

(declare-fun removePairForKey!1016 (List!51381 K!12633) List!51381)

(assert (=> b!4611374 (= res!1930843 (= (removePairForKey!1016 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!461234 res!1930841) b!4611370))

(assert (= (and b!4611370 res!1930844) b!4611374))

(assert (= (and b!4611374 res!1930843) b!4611366))

(assert (= (and b!4611366 res!1930840) b!4611368))

(assert (= (and b!4611368 res!1930837) b!4611372))

(assert (= (and b!4611372 res!1930842) b!4611364))

(assert (= (and b!4611364 res!1930845) b!4611363))

(assert (= (and b!4611363 res!1930838) b!4611373))

(assert (= (and b!4611363 (not res!1930846)) b!4611369))

(assert (= (and b!4611369 (not res!1930839)) b!4611371))

(assert (= (and start!461234 (is-Cons!51257 oldBucket!40)) b!4611365))

(assert (= (and start!461234 (is-Cons!51257 newBucket!224)) b!4611367))

(declare-fun m!5442795 () Bool)

(assert (=> b!4611374 m!5442795))

(declare-fun m!5442797 () Bool)

(assert (=> b!4611366 m!5442797))

(declare-fun m!5442799 () Bool)

(assert (=> b!4611369 m!5442799))

(declare-fun m!5442801 () Bool)

(assert (=> b!4611364 m!5442801))

(declare-fun m!5442803 () Bool)

(assert (=> b!4611371 m!5442803))

(declare-fun m!5442805 () Bool)

(assert (=> b!4611368 m!5442805))

(declare-fun m!5442807 () Bool)

(assert (=> b!4611368 m!5442807))

(declare-fun m!5442809 () Bool)

(assert (=> b!4611372 m!5442809))

(declare-fun m!5442811 () Bool)

(assert (=> b!4611370 m!5442811))

(declare-fun m!5442813 () Bool)

(assert (=> b!4611363 m!5442813))

(declare-fun m!5442815 () Bool)

(assert (=> b!4611363 m!5442815))

(declare-fun m!5442817 () Bool)

(assert (=> start!461234 m!5442817))

(push 1)

(assert tp_is_empty!28867)

(assert (not b!4611369))

(assert (not b!4611364))

(assert (not b!4611370))

(assert (not b!4611371))

(assert (not b!4611372))

(assert (not b!4611365))

(assert (not b!4611367))

(assert (not start!461234))

(assert tp_is_empty!28865)

(assert (not b!4611374))

(assert (not b!4611366))

(assert (not b!4611363))

(assert (not b!4611368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1453055 () Bool)

(assert (=> d!1453055 true))

(assert (=> d!1453055 true))

(declare-fun lambda!188513 () Int)

(declare-fun forall!10710 (List!51381 Int) Bool)

(assert (=> d!1453055 (= (allKeysSameHash!1247 oldBucket!40 hash!414 hashF!1389) (forall!10710 oldBucket!40 lambda!188513))))

(declare-fun bs!1016164 () Bool)

(assert (= bs!1016164 d!1453055))

(declare-fun m!5442843 () Bool)

(assert (=> bs!1016164 m!5442843))

(assert (=> b!4611366 d!1453055))

(declare-fun d!1453057 () Bool)

(declare-fun res!1930881 () Bool)

(declare-fun e!2876517 () Bool)

(assert (=> d!1453057 (=> res!1930881 e!2876517)))

(assert (=> d!1453057 (= res!1930881 (not (is-Cons!51257 oldBucket!40)))))

(assert (=> d!1453057 (= (noDuplicateKeys!1393 oldBucket!40) e!2876517)))

(declare-fun b!4611419 () Bool)

(declare-fun e!2876518 () Bool)

(assert (=> b!4611419 (= e!2876517 e!2876518)))

(declare-fun res!1930882 () Bool)

(assert (=> b!4611419 (=> (not res!1930882) (not e!2876518))))

(declare-fun containsKey!2277 (List!51381 K!12633) Bool)

(assert (=> b!4611419 (= res!1930882 (not (containsKey!2277 (t!358375 oldBucket!40) (_1!29303 (h!57255 oldBucket!40)))))))

(declare-fun b!4611420 () Bool)

(assert (=> b!4611420 (= e!2876518 (noDuplicateKeys!1393 (t!358375 oldBucket!40)))))

(assert (= (and d!1453057 (not res!1930881)) b!4611419))

(assert (= (and b!4611419 res!1930882) b!4611420))

(declare-fun m!5442845 () Bool)

(assert (=> b!4611419 m!5442845))

(declare-fun m!5442847 () Bool)

(assert (=> b!4611420 m!5442847))

(assert (=> start!461234 d!1453057))

(declare-fun d!1453059 () Bool)

(declare-fun res!1930887 () Bool)

(declare-fun e!2876523 () Bool)

(assert (=> d!1453059 (=> res!1930887 e!2876523)))

(assert (=> d!1453059 (= res!1930887 (is-Nil!51258 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258)))))

(assert (=> d!1453059 (= (forall!10708 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258) lambda!188507) e!2876523)))

(declare-fun b!4611425 () Bool)

(declare-fun e!2876524 () Bool)

(assert (=> b!4611425 (= e!2876523 e!2876524)))

(declare-fun res!1930888 () Bool)

(assert (=> b!4611425 (=> (not res!1930888) (not e!2876524))))

(declare-fun dynLambda!21447 (Int tuple2!52020) Bool)

(assert (=> b!4611425 (= res!1930888 (dynLambda!21447 lambda!188507 (h!57256 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258))))))

(declare-fun b!4611426 () Bool)

(assert (=> b!4611426 (= e!2876524 (forall!10708 (t!358376 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258)) lambda!188507))))

(assert (= (and d!1453059 (not res!1930887)) b!4611425))

(assert (= (and b!4611425 res!1930888) b!4611426))

(declare-fun b_lambda!170469 () Bool)

(assert (=> (not b_lambda!170469) (not b!4611425)))

(declare-fun m!5442849 () Bool)

(assert (=> b!4611425 m!5442849))

(declare-fun m!5442851 () Bool)

(assert (=> b!4611426 m!5442851))

(assert (=> b!4611371 d!1453059))

(declare-fun d!1453061 () Bool)

(declare-fun hash!3336 (Hashable!5790 K!12633) (_ BitVec 64))

(assert (=> d!1453061 (= (hash!3334 hashF!1389 key!4968) (hash!3336 hashF!1389 key!4968))))

(declare-fun bs!1016165 () Bool)

(assert (= bs!1016165 d!1453061))

(declare-fun m!5442853 () Bool)

(assert (=> bs!1016165 m!5442853))

(assert (=> b!4611372 d!1453061))

(declare-fun b!4611436 () Bool)

(declare-fun e!2876530 () List!51381)

(declare-fun e!2876529 () List!51381)

(assert (=> b!4611436 (= e!2876530 e!2876529)))

(declare-fun c!789796 () Bool)

(assert (=> b!4611436 (= c!789796 (is-Cons!51257 oldBucket!40))))

(declare-fun d!1453063 () Bool)

(declare-fun lt!1767238 () List!51381)

(assert (=> d!1453063 (not (containsKey!2277 lt!1767238 key!4968))))

(assert (=> d!1453063 (= lt!1767238 e!2876530)))

(declare-fun c!789795 () Bool)

(assert (=> d!1453063 (= c!789795 (and (is-Cons!51257 oldBucket!40) (= (_1!29303 (h!57255 oldBucket!40)) key!4968)))))

(assert (=> d!1453063 (noDuplicateKeys!1393 oldBucket!40)))

(assert (=> d!1453063 (= (removePairForKey!1016 oldBucket!40 key!4968) lt!1767238)))

(declare-fun b!4611437 () Bool)

(assert (=> b!4611437 (= e!2876529 (Cons!51257 (h!57255 oldBucket!40) (removePairForKey!1016 (t!358375 oldBucket!40) key!4968)))))

(declare-fun b!4611438 () Bool)

(assert (=> b!4611438 (= e!2876529 Nil!51257)))

(declare-fun b!4611435 () Bool)

(assert (=> b!4611435 (= e!2876530 (t!358375 oldBucket!40))))

(assert (= (and d!1453063 c!789795) b!4611435))

(assert (= (and d!1453063 (not c!789795)) b!4611436))

(assert (= (and b!4611436 c!789796) b!4611437))

(assert (= (and b!4611436 (not c!789796)) b!4611438))

(declare-fun m!5442855 () Bool)

(assert (=> d!1453063 m!5442855))

(assert (=> d!1453063 m!5442817))

(declare-fun m!5442857 () Bool)

(assert (=> b!4611437 m!5442857))

(assert (=> b!4611374 d!1453063))

(declare-fun d!1453065 () Bool)

(assert (=> d!1453065 (= (tail!8040 oldBucket!40) (t!358375 oldBucket!40))))

(assert (=> b!4611369 d!1453065))

(declare-fun b!4611463 () Bool)

(declare-datatypes ((List!51385 0))(
  ( (Nil!51261) (Cons!51261 (h!57260 K!12633) (t!358379 List!51385)) )
))
(declare-fun e!2876550 () List!51385)

(declare-fun keys!17990 (ListMap!4055) List!51385)

(assert (=> b!4611463 (= e!2876550 (keys!17990 lt!1767226))))

(declare-fun b!4611464 () Bool)

(declare-datatypes ((Unit!109431 0))(
  ( (Unit!109432) )
))
(declare-fun e!2876551 () Unit!109431)

(declare-fun e!2876553 () Unit!109431)

(assert (=> b!4611464 (= e!2876551 e!2876553)))

(declare-fun c!789803 () Bool)

(declare-fun call!321482 () Bool)

(assert (=> b!4611464 (= c!789803 call!321482)))

(declare-fun b!4611465 () Bool)

(declare-fun lt!1767262 () Unit!109431)

(assert (=> b!4611465 (= e!2876551 lt!1767262)))

(declare-fun lt!1767255 () Unit!109431)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1271 (List!51381 K!12633) Unit!109431)

(assert (=> b!4611465 (= lt!1767255 (lemmaContainsKeyImpliesGetValueByKeyDefined!1271 (toList!4781 lt!1767226) key!4968))))

(declare-datatypes ((Option!11455 0))(
  ( (None!11454) (Some!11454 (v!45520 V!12879)) )
))
(declare-fun isDefined!8720 (Option!11455) Bool)

(declare-fun getValueByKey!1369 (List!51381 K!12633) Option!11455)

(assert (=> b!4611465 (isDefined!8720 (getValueByKey!1369 (toList!4781 lt!1767226) key!4968))))

(declare-fun lt!1767258 () Unit!109431)

(assert (=> b!4611465 (= lt!1767258 lt!1767255)))

(declare-fun lemmaInListThenGetKeysListContains!598 (List!51381 K!12633) Unit!109431)

(assert (=> b!4611465 (= lt!1767262 (lemmaInListThenGetKeysListContains!598 (toList!4781 lt!1767226) key!4968))))

(assert (=> b!4611465 call!321482))

(declare-fun d!1453067 () Bool)

(declare-fun e!2876554 () Bool)

(assert (=> d!1453067 e!2876554))

(declare-fun res!1930901 () Bool)

(assert (=> d!1453067 (=> res!1930901 e!2876554)))

(declare-fun e!2876552 () Bool)

(assert (=> d!1453067 (= res!1930901 e!2876552)))

(declare-fun res!1930903 () Bool)

(assert (=> d!1453067 (=> (not res!1930903) (not e!2876552))))

(declare-fun lt!1767261 () Bool)

(assert (=> d!1453067 (= res!1930903 (not lt!1767261))))

(declare-fun lt!1767259 () Bool)

(assert (=> d!1453067 (= lt!1767261 lt!1767259)))

(declare-fun lt!1767256 () Unit!109431)

(assert (=> d!1453067 (= lt!1767256 e!2876551)))

(declare-fun c!789804 () Bool)

(assert (=> d!1453067 (= c!789804 lt!1767259)))

(declare-fun containsKey!2278 (List!51381 K!12633) Bool)

(assert (=> d!1453067 (= lt!1767259 (containsKey!2278 (toList!4781 lt!1767226) key!4968))))

(assert (=> d!1453067 (= (contains!14255 lt!1767226 key!4968) lt!1767261)))

(declare-fun b!4611466 () Bool)

(assert (=> b!4611466 false))

(declare-fun lt!1767260 () Unit!109431)

(declare-fun lt!1767257 () Unit!109431)

(assert (=> b!4611466 (= lt!1767260 lt!1767257)))

(assert (=> b!4611466 (containsKey!2278 (toList!4781 lt!1767226) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!602 (List!51381 K!12633) Unit!109431)

(assert (=> b!4611466 (= lt!1767257 (lemmaInGetKeysListThenContainsKey!602 (toList!4781 lt!1767226) key!4968))))

(declare-fun Unit!109433 () Unit!109431)

(assert (=> b!4611466 (= e!2876553 Unit!109433)))

(declare-fun b!4611467 () Bool)

(declare-fun e!2876549 () Bool)

(assert (=> b!4611467 (= e!2876554 e!2876549)))

(declare-fun res!1930902 () Bool)

(assert (=> b!4611467 (=> (not res!1930902) (not e!2876549))))

(assert (=> b!4611467 (= res!1930902 (isDefined!8720 (getValueByKey!1369 (toList!4781 lt!1767226) key!4968)))))

(declare-fun b!4611468 () Bool)

(declare-fun contains!14257 (List!51385 K!12633) Bool)

(assert (=> b!4611468 (= e!2876549 (contains!14257 (keys!17990 lt!1767226) key!4968))))

(declare-fun b!4611469 () Bool)

(declare-fun getKeysList!603 (List!51381) List!51385)

(assert (=> b!4611469 (= e!2876550 (getKeysList!603 (toList!4781 lt!1767226)))))

(declare-fun bm!321477 () Bool)

(assert (=> bm!321477 (= call!321482 (contains!14257 e!2876550 key!4968))))

(declare-fun c!789805 () Bool)

(assert (=> bm!321477 (= c!789805 c!789804)))

(declare-fun b!4611470 () Bool)

(assert (=> b!4611470 (= e!2876552 (not (contains!14257 (keys!17990 lt!1767226) key!4968)))))

(declare-fun b!4611471 () Bool)

(declare-fun Unit!109434 () Unit!109431)

(assert (=> b!4611471 (= e!2876553 Unit!109434)))

(assert (= (and d!1453067 c!789804) b!4611465))

(assert (= (and d!1453067 (not c!789804)) b!4611464))

(assert (= (and b!4611464 c!789803) b!4611466))

(assert (= (and b!4611464 (not c!789803)) b!4611471))

(assert (= (or b!4611465 b!4611464) bm!321477))

(assert (= (and bm!321477 c!789805) b!4611469))

(assert (= (and bm!321477 (not c!789805)) b!4611463))

(assert (= (and d!1453067 res!1930903) b!4611470))

(assert (= (and d!1453067 (not res!1930901)) b!4611467))

(assert (= (and b!4611467 res!1930902) b!4611468))

(declare-fun m!5442863 () Bool)

(assert (=> b!4611468 m!5442863))

(assert (=> b!4611468 m!5442863))

(declare-fun m!5442865 () Bool)

(assert (=> b!4611468 m!5442865))

(assert (=> b!4611463 m!5442863))

(declare-fun m!5442867 () Bool)

(assert (=> b!4611466 m!5442867))

(declare-fun m!5442869 () Bool)

(assert (=> b!4611466 m!5442869))

(declare-fun m!5442871 () Bool)

(assert (=> b!4611467 m!5442871))

(assert (=> b!4611467 m!5442871))

(declare-fun m!5442873 () Bool)

(assert (=> b!4611467 m!5442873))

(assert (=> b!4611470 m!5442863))

(assert (=> b!4611470 m!5442863))

(assert (=> b!4611470 m!5442865))

(declare-fun m!5442875 () Bool)

(assert (=> bm!321477 m!5442875))

(declare-fun m!5442877 () Bool)

(assert (=> b!4611469 m!5442877))

(declare-fun m!5442879 () Bool)

(assert (=> b!4611465 m!5442879))

(assert (=> b!4611465 m!5442871))

(assert (=> b!4611465 m!5442871))

(assert (=> b!4611465 m!5442873))

(declare-fun m!5442881 () Bool)

(assert (=> b!4611465 m!5442881))

(assert (=> d!1453067 m!5442867))

(assert (=> b!4611368 d!1453067))

(declare-fun bs!1016166 () Bool)

(declare-fun d!1453073 () Bool)

(assert (= bs!1016166 (and d!1453073 b!4611371)))

(declare-fun lambda!188516 () Int)

(assert (=> bs!1016166 (= lambda!188516 lambda!188507)))

(declare-fun lt!1767265 () ListMap!4055)

(declare-fun invariantList!1152 (List!51381) Bool)

(assert (=> d!1453073 (invariantList!1152 (toList!4781 lt!1767265))))

(declare-fun e!2876557 () ListMap!4055)

(assert (=> d!1453073 (= lt!1767265 e!2876557)))

(declare-fun c!789808 () Bool)

(assert (=> d!1453073 (= c!789808 (is-Cons!51258 (Cons!51258 (tuple2!52021 hash!414 oldBucket!40) Nil!51258)))))

(assert (=> d!1453073 (forall!10708 (Cons!51258 (tuple2!52021 hash!414 oldBucket!40) Nil!51258) lambda!188516)))

(assert (=> d!1453073 (= (extractMap!1449 (Cons!51258 (tuple2!52021 hash!414 oldBucket!40) Nil!51258)) lt!1767265)))

(declare-fun b!4611476 () Bool)

(assert (=> b!4611476 (= e!2876557 (addToMapMapFromBucket!854 (_2!29304 (h!57256 (Cons!51258 (tuple2!52021 hash!414 oldBucket!40) Nil!51258))) (extractMap!1449 (t!358376 (Cons!51258 (tuple2!52021 hash!414 oldBucket!40) Nil!51258)))))))

(declare-fun b!4611477 () Bool)

(assert (=> b!4611477 (= e!2876557 (ListMap!4056 Nil!51257))))

(assert (= (and d!1453073 c!789808) b!4611476))

(assert (= (and d!1453073 (not c!789808)) b!4611477))

(declare-fun m!5442883 () Bool)

(assert (=> d!1453073 m!5442883))

(declare-fun m!5442885 () Bool)

(assert (=> d!1453073 m!5442885))

(declare-fun m!5442887 () Bool)

(assert (=> b!4611476 m!5442887))

(assert (=> b!4611476 m!5442887))

(declare-fun m!5442889 () Bool)

(assert (=> b!4611476 m!5442889))

(assert (=> b!4611368 d!1453073))

(declare-fun bs!1016168 () Bool)

(declare-fun b!4611523 () Bool)

(assert (= bs!1016168 (and b!4611523 d!1453055)))

(declare-fun lambda!188548 () Int)

(assert (=> bs!1016168 (not (= lambda!188548 lambda!188513))))

(assert (=> b!4611523 true))

(declare-fun bs!1016169 () Bool)

(declare-fun b!4611524 () Bool)

(assert (= bs!1016169 (and b!4611524 d!1453055)))

(declare-fun lambda!188549 () Int)

(assert (=> bs!1016169 (not (= lambda!188549 lambda!188513))))

(declare-fun bs!1016170 () Bool)

(assert (= bs!1016170 (and b!4611524 b!4611523)))

(assert (=> bs!1016170 (= lambda!188549 lambda!188548)))

(assert (=> b!4611524 true))

(declare-fun lambda!188550 () Int)

(assert (=> bs!1016169 (not (= lambda!188550 lambda!188513))))

(declare-fun lt!1767355 () ListMap!4055)

(assert (=> bs!1016170 (= (= lt!1767355 lt!1767225) (= lambda!188550 lambda!188548))))

(assert (=> b!4611524 (= (= lt!1767355 lt!1767225) (= lambda!188550 lambda!188549))))

(assert (=> b!4611524 true))

(declare-fun bs!1016171 () Bool)

(declare-fun d!1453075 () Bool)

(assert (= bs!1016171 (and d!1453075 d!1453055)))

(declare-fun lambda!188551 () Int)

(assert (=> bs!1016171 (not (= lambda!188551 lambda!188513))))

(declare-fun bs!1016172 () Bool)

(assert (= bs!1016172 (and d!1453075 b!4611523)))

(declare-fun lt!1767336 () ListMap!4055)

(assert (=> bs!1016172 (= (= lt!1767336 lt!1767225) (= lambda!188551 lambda!188548))))

(declare-fun bs!1016173 () Bool)

(assert (= bs!1016173 (and d!1453075 b!4611524)))

(assert (=> bs!1016173 (= (= lt!1767336 lt!1767225) (= lambda!188551 lambda!188549))))

(assert (=> bs!1016173 (= (= lt!1767336 lt!1767355) (= lambda!188551 lambda!188550))))

(assert (=> d!1453075 true))

(declare-fun bm!321487 () Bool)

(declare-fun call!321493 () Bool)

(declare-fun c!789823 () Bool)

(assert (=> bm!321487 (= call!321493 (forall!10710 (toList!4781 lt!1767225) (ite c!789823 lambda!188548 lambda!188550)))))

(declare-fun e!2876587 () Bool)

(assert (=> d!1453075 e!2876587))

(declare-fun res!1930921 () Bool)

(assert (=> d!1453075 (=> (not res!1930921) (not e!2876587))))

(assert (=> d!1453075 (= res!1930921 (forall!10710 oldBucket!40 lambda!188551))))

(declare-fun e!2876586 () ListMap!4055)

(assert (=> d!1453075 (= lt!1767336 e!2876586)))

(assert (=> d!1453075 (= c!789823 (is-Nil!51257 oldBucket!40))))

(assert (=> d!1453075 (noDuplicateKeys!1393 oldBucket!40)))

(assert (=> d!1453075 (= (addToMapMapFromBucket!854 oldBucket!40 lt!1767225) lt!1767336)))

(declare-fun b!4611521 () Bool)

(declare-fun res!1930920 () Bool)

(assert (=> b!4611521 (=> (not res!1930920) (not e!2876587))))

(assert (=> b!4611521 (= res!1930920 (forall!10710 (toList!4781 lt!1767225) lambda!188551))))

(declare-fun bm!321488 () Bool)

(declare-fun call!321492 () Unit!109431)

(declare-fun lemmaContainsAllItsOwnKeys!455 (ListMap!4055) Unit!109431)

(assert (=> bm!321488 (= call!321492 (lemmaContainsAllItsOwnKeys!455 lt!1767225))))

(declare-fun b!4611522 () Bool)

(assert (=> b!4611522 (= e!2876587 (invariantList!1152 (toList!4781 lt!1767336)))))

(assert (=> b!4611523 (= e!2876586 lt!1767225)))

(declare-fun lt!1767338 () Unit!109431)

(assert (=> b!4611523 (= lt!1767338 call!321492)))

(assert (=> b!4611523 call!321493))

(declare-fun lt!1767335 () Unit!109431)

(assert (=> b!4611523 (= lt!1767335 lt!1767338)))

(declare-fun call!321494 () Bool)

(assert (=> b!4611523 call!321494))

(declare-fun lt!1767346 () Unit!109431)

(declare-fun Unit!109435 () Unit!109431)

(assert (=> b!4611523 (= lt!1767346 Unit!109435)))

(assert (=> b!4611524 (= e!2876586 lt!1767355)))

(declare-fun lt!1767353 () ListMap!4055)

(declare-fun +!1789 (ListMap!4055 tuple2!52018) ListMap!4055)

(assert (=> b!4611524 (= lt!1767353 (+!1789 lt!1767225 (h!57255 oldBucket!40)))))

(assert (=> b!4611524 (= lt!1767355 (addToMapMapFromBucket!854 (t!358375 oldBucket!40) (+!1789 lt!1767225 (h!57255 oldBucket!40))))))

(declare-fun lt!1767347 () Unit!109431)

(assert (=> b!4611524 (= lt!1767347 call!321492)))

(assert (=> b!4611524 (forall!10710 (toList!4781 lt!1767225) lambda!188549)))

(declare-fun lt!1767340 () Unit!109431)

(assert (=> b!4611524 (= lt!1767340 lt!1767347)))

(assert (=> b!4611524 (forall!10710 (toList!4781 lt!1767353) lambda!188550)))

(declare-fun lt!1767342 () Unit!109431)

(declare-fun Unit!109436 () Unit!109431)

(assert (=> b!4611524 (= lt!1767342 Unit!109436)))

(assert (=> b!4611524 (forall!10710 (t!358375 oldBucket!40) lambda!188550)))

(declare-fun lt!1767344 () Unit!109431)

(declare-fun Unit!109437 () Unit!109431)

(assert (=> b!4611524 (= lt!1767344 Unit!109437)))

(declare-fun lt!1767351 () Unit!109431)

(declare-fun Unit!109438 () Unit!109431)

(assert (=> b!4611524 (= lt!1767351 Unit!109438)))

(declare-fun lt!1767343 () Unit!109431)

(declare-fun forallContained!2948 (List!51381 Int tuple2!52018) Unit!109431)

(assert (=> b!4611524 (= lt!1767343 (forallContained!2948 (toList!4781 lt!1767353) lambda!188550 (h!57255 oldBucket!40)))))

(assert (=> b!4611524 (contains!14255 lt!1767353 (_1!29303 (h!57255 oldBucket!40)))))

(declare-fun lt!1767354 () Unit!109431)

(declare-fun Unit!109439 () Unit!109431)

(assert (=> b!4611524 (= lt!1767354 Unit!109439)))

(assert (=> b!4611524 (contains!14255 lt!1767355 (_1!29303 (h!57255 oldBucket!40)))))

(declare-fun lt!1767337 () Unit!109431)

(declare-fun Unit!109440 () Unit!109431)

(assert (=> b!4611524 (= lt!1767337 Unit!109440)))

(assert (=> b!4611524 (forall!10710 oldBucket!40 lambda!188550)))

(declare-fun lt!1767345 () Unit!109431)

(declare-fun Unit!109441 () Unit!109431)

(assert (=> b!4611524 (= lt!1767345 Unit!109441)))

(assert (=> b!4611524 call!321494))

(declare-fun lt!1767350 () Unit!109431)

(declare-fun Unit!109442 () Unit!109431)

(assert (=> b!4611524 (= lt!1767350 Unit!109442)))

(declare-fun lt!1767339 () Unit!109431)

(declare-fun Unit!109443 () Unit!109431)

(assert (=> b!4611524 (= lt!1767339 Unit!109443)))

(declare-fun lt!1767341 () Unit!109431)

(declare-fun addForallContainsKeyThenBeforeAdding!455 (ListMap!4055 ListMap!4055 K!12633 V!12879) Unit!109431)

(assert (=> b!4611524 (= lt!1767341 (addForallContainsKeyThenBeforeAdding!455 lt!1767225 lt!1767355 (_1!29303 (h!57255 oldBucket!40)) (_2!29303 (h!57255 oldBucket!40))))))

(assert (=> b!4611524 call!321493))

(declare-fun lt!1767348 () Unit!109431)

(assert (=> b!4611524 (= lt!1767348 lt!1767341)))

(assert (=> b!4611524 (forall!10710 (toList!4781 lt!1767225) lambda!188550)))

(declare-fun lt!1767349 () Unit!109431)

(declare-fun Unit!109444 () Unit!109431)

(assert (=> b!4611524 (= lt!1767349 Unit!109444)))

(declare-fun res!1930919 () Bool)

(assert (=> b!4611524 (= res!1930919 (forall!10710 oldBucket!40 lambda!188550))))

(declare-fun e!2876585 () Bool)

(assert (=> b!4611524 (=> (not res!1930919) (not e!2876585))))

(assert (=> b!4611524 e!2876585))

(declare-fun lt!1767352 () Unit!109431)

(declare-fun Unit!109445 () Unit!109431)

(assert (=> b!4611524 (= lt!1767352 Unit!109445)))

(declare-fun bm!321489 () Bool)

(assert (=> bm!321489 (= call!321494 (forall!10710 (ite c!789823 (toList!4781 lt!1767225) (toList!4781 lt!1767353)) (ite c!789823 lambda!188548 lambda!188550)))))

(declare-fun b!4611525 () Bool)

(assert (=> b!4611525 (= e!2876585 (forall!10710 (toList!4781 lt!1767225) lambda!188550))))

(assert (= (and d!1453075 c!789823) b!4611523))

(assert (= (and d!1453075 (not c!789823)) b!4611524))

(assert (= (and b!4611524 res!1930919) b!4611525))

(assert (= (or b!4611523 b!4611524) bm!321488))

(assert (= (or b!4611523 b!4611524) bm!321487))

(assert (= (or b!4611523 b!4611524) bm!321489))

(assert (= (and d!1453075 res!1930921) b!4611521))

(assert (= (and b!4611521 res!1930920) b!4611522))

(declare-fun m!5442919 () Bool)

(assert (=> d!1453075 m!5442919))

(assert (=> d!1453075 m!5442817))

(declare-fun m!5442921 () Bool)

(assert (=> b!4611521 m!5442921))

(declare-fun m!5442923 () Bool)

(assert (=> bm!321488 m!5442923))

(declare-fun m!5442925 () Bool)

(assert (=> bm!321489 m!5442925))

(declare-fun m!5442927 () Bool)

(assert (=> b!4611525 m!5442927))

(declare-fun m!5442929 () Bool)

(assert (=> b!4611524 m!5442929))

(declare-fun m!5442931 () Bool)

(assert (=> b!4611524 m!5442931))

(declare-fun m!5442933 () Bool)

(assert (=> b!4611524 m!5442933))

(assert (=> b!4611524 m!5442927))

(declare-fun m!5442935 () Bool)

(assert (=> b!4611524 m!5442935))

(declare-fun m!5442937 () Bool)

(assert (=> b!4611524 m!5442937))

(declare-fun m!5442939 () Bool)

(assert (=> b!4611524 m!5442939))

(assert (=> b!4611524 m!5442935))

(declare-fun m!5442941 () Bool)

(assert (=> b!4611524 m!5442941))

(declare-fun m!5442943 () Bool)

(assert (=> b!4611524 m!5442943))

(assert (=> b!4611524 m!5442931))

(declare-fun m!5442945 () Bool)

(assert (=> b!4611524 m!5442945))

(declare-fun m!5442947 () Bool)

(assert (=> b!4611524 m!5442947))

(declare-fun m!5442949 () Bool)

(assert (=> b!4611522 m!5442949))

(declare-fun m!5442951 () Bool)

(assert (=> bm!321487 m!5442951))

(assert (=> b!4611363 d!1453075))

(declare-fun bs!1016174 () Bool)

(declare-fun d!1453081 () Bool)

(assert (= bs!1016174 (and d!1453081 b!4611371)))

(declare-fun lambda!188552 () Int)

(assert (=> bs!1016174 (= lambda!188552 lambda!188507)))

(declare-fun bs!1016175 () Bool)

(assert (= bs!1016175 (and d!1453081 d!1453073)))

(assert (=> bs!1016175 (= lambda!188552 lambda!188516)))

(declare-fun lt!1767356 () ListMap!4055)

(assert (=> d!1453081 (invariantList!1152 (toList!4781 lt!1767356))))

(declare-fun e!2876588 () ListMap!4055)

(assert (=> d!1453081 (= lt!1767356 e!2876588)))

(declare-fun c!789824 () Bool)

(assert (=> d!1453081 (= c!789824 (is-Cons!51258 Nil!51258))))

(assert (=> d!1453081 (forall!10708 Nil!51258 lambda!188552)))

(assert (=> d!1453081 (= (extractMap!1449 Nil!51258) lt!1767356)))

(declare-fun b!4611528 () Bool)

(assert (=> b!4611528 (= e!2876588 (addToMapMapFromBucket!854 (_2!29304 (h!57256 Nil!51258)) (extractMap!1449 (t!358376 Nil!51258))))))

(declare-fun b!4611529 () Bool)

(assert (=> b!4611529 (= e!2876588 (ListMap!4056 Nil!51257))))

(assert (= (and d!1453081 c!789824) b!4611528))

(assert (= (and d!1453081 (not c!789824)) b!4611529))

(declare-fun m!5442953 () Bool)

(assert (=> d!1453081 m!5442953))

(declare-fun m!5442955 () Bool)

(assert (=> d!1453081 m!5442955))

(declare-fun m!5442957 () Bool)

(assert (=> b!4611528 m!5442957))

(assert (=> b!4611528 m!5442957))

(declare-fun m!5442959 () Bool)

(assert (=> b!4611528 m!5442959))

(assert (=> b!4611363 d!1453081))

(declare-fun d!1453083 () Bool)

(declare-fun res!1930922 () Bool)

(declare-fun e!2876589 () Bool)

(assert (=> d!1453083 (=> res!1930922 e!2876589)))

(assert (=> d!1453083 (= res!1930922 (not (is-Cons!51257 newBucket!224)))))

(assert (=> d!1453083 (= (noDuplicateKeys!1393 newBucket!224) e!2876589)))

(declare-fun b!4611530 () Bool)

(declare-fun e!2876590 () Bool)

(assert (=> b!4611530 (= e!2876589 e!2876590)))

(declare-fun res!1930923 () Bool)

(assert (=> b!4611530 (=> (not res!1930923) (not e!2876590))))

(assert (=> b!4611530 (= res!1930923 (not (containsKey!2277 (t!358375 newBucket!224) (_1!29303 (h!57255 newBucket!224)))))))

(declare-fun b!4611531 () Bool)

(assert (=> b!4611531 (= e!2876590 (noDuplicateKeys!1393 (t!358375 newBucket!224)))))

(assert (= (and d!1453083 (not res!1930922)) b!4611530))

(assert (= (and b!4611530 res!1930923) b!4611531))

(declare-fun m!5442961 () Bool)

(assert (=> b!4611530 m!5442961))

(declare-fun m!5442963 () Bool)

(assert (=> b!4611531 m!5442963))

(assert (=> b!4611370 d!1453083))

(declare-fun bs!1016176 () Bool)

(declare-fun d!1453085 () Bool)

(assert (= bs!1016176 (and d!1453085 b!4611524)))

(declare-fun lambda!188553 () Int)

(assert (=> bs!1016176 (not (= lambda!188553 lambda!188549))))

(assert (=> bs!1016176 (not (= lambda!188553 lambda!188550))))

(declare-fun bs!1016177 () Bool)

(assert (= bs!1016177 (and d!1453085 d!1453055)))

(assert (=> bs!1016177 (= lambda!188553 lambda!188513)))

(declare-fun bs!1016178 () Bool)

(assert (= bs!1016178 (and d!1453085 b!4611523)))

(assert (=> bs!1016178 (not (= lambda!188553 lambda!188548))))

(declare-fun bs!1016179 () Bool)

(assert (= bs!1016179 (and d!1453085 d!1453075)))

(assert (=> bs!1016179 (not (= lambda!188553 lambda!188551))))

(assert (=> d!1453085 true))

(assert (=> d!1453085 true))

(assert (=> d!1453085 (= (allKeysSameHash!1247 newBucket!224 hash!414 hashF!1389) (forall!10710 newBucket!224 lambda!188553))))

(declare-fun bs!1016180 () Bool)

(assert (= bs!1016180 d!1453085))

(declare-fun m!5442965 () Bool)

(assert (=> bs!1016180 m!5442965))

(assert (=> b!4611364 d!1453085))

(declare-fun b!4611536 () Bool)

(declare-fun e!2876593 () Bool)

(declare-fun tp!1341230 () Bool)

(assert (=> b!4611536 (= e!2876593 (and tp_is_empty!28865 tp_is_empty!28867 tp!1341230))))

(assert (=> b!4611367 (= tp!1341221 e!2876593)))

(assert (= (and b!4611367 (is-Cons!51257 (t!358375 newBucket!224))) b!4611536))

(declare-fun e!2876594 () Bool)

(declare-fun b!4611537 () Bool)

(declare-fun tp!1341231 () Bool)

(assert (=> b!4611537 (= e!2876594 (and tp_is_empty!28865 tp_is_empty!28867 tp!1341231))))

(assert (=> b!4611365 (= tp!1341220 e!2876594)))

(assert (= (and b!4611365 (is-Cons!51257 (t!358375 oldBucket!40))) b!4611537))

(declare-fun b_lambda!170471 () Bool)

(assert (= b_lambda!170469 (or b!4611371 b_lambda!170471)))

(declare-fun bs!1016181 () Bool)

(declare-fun d!1453087 () Bool)

(assert (= bs!1016181 (and d!1453087 b!4611371)))

(assert (=> bs!1016181 (= (dynLambda!21447 lambda!188507 (h!57256 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258))) (noDuplicateKeys!1393 (_2!29304 (h!57256 (Cons!51258 (tuple2!52021 hash!414 lt!1767224) Nil!51258)))))))

(declare-fun m!5442967 () Bool)

(assert (=> bs!1016181 m!5442967))

(assert (=> b!4611425 d!1453087))

(push 1)

(assert (not d!1453063))

(assert (not b!4611524))

(assert (not b_lambda!170471))

(assert (not b!4611525))

(assert (not b!4611522))

(assert (not d!1453067))

(assert (not d!1453085))

(assert (not b!4611465))

(assert (not b!4611530))

(assert tp_is_empty!28867)

(assert (not b!4611437))

(assert (not d!1453081))

(assert (not b!4611426))

(assert (not b!4611476))

(assert (not b!4611521))

(assert (not bs!1016181))

(assert (not bm!321477))

(assert (not b!4611420))

(assert (not b!4611531))

(assert (not b!4611463))

(assert (not b!4611468))

(assert (not d!1453061))

(assert (not b!4611466))

(assert (not b!4611470))

(assert (not bm!321488))

(assert (not b!4611528))

(assert (not bm!321489))

(assert (not b!4611537))

(assert (not bm!321487))

(assert (not d!1453075))

(assert (not b!4611536))

(assert (not b!4611467))

(assert (not d!1453073))

(assert (not d!1453055))

(assert (not b!4611419))

(assert tp_is_empty!28865)

(assert (not b!4611469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

