; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473688 () Bool)

(assert start!473688)

(declare-fun b!4686382 () Bool)

(declare-fun res!1976064 () Bool)

(declare-fun e!2923707 () Bool)

(assert (=> b!4686382 (=> (not res!1976064) (not e!2923707))))

(declare-datatypes ((K!13740 0))(
  ( (K!13741 (val!19263 Int)) )
))
(declare-datatypes ((V!13986 0))(
  ( (V!13987 (val!19264 Int)) )
))
(declare-datatypes ((tuple2!53738 0))(
  ( (tuple2!53739 (_1!30163 K!13740) (_2!30163 V!13986)) )
))
(declare-datatypes ((List!52485 0))(
  ( (Nil!52361) (Cons!52361 (h!58594 tuple2!53738) (t!359649 List!52485)) )
))
(declare-datatypes ((tuple2!53740 0))(
  ( (tuple2!53741 (_1!30164 (_ BitVec 64)) (_2!30164 List!52485)) )
))
(declare-datatypes ((List!52486 0))(
  ( (Nil!52362) (Cons!52362 (h!58595 tuple2!53740) (t!359650 List!52486)) )
))
(declare-datatypes ((ListLongMap!4091 0))(
  ( (ListLongMap!4092 (toList!5561 List!52486)) )
))
(declare-fun lm!2023 () ListLongMap!4091)

(declare-datatypes ((Hashable!6205 0))(
  ( (HashableExt!6204 (__x!31908 Int)) )
))
(declare-fun hashF!1323 () Hashable!6205)

(declare-fun allKeysSameHashInMap!1750 (ListLongMap!4091 Hashable!6205) Bool)

(assert (=> b!4686382 (= res!1976064 (allKeysSameHashInMap!1750 lm!2023 hashF!1323))))

(declare-fun b!4686383 () Bool)

(declare-fun e!2923702 () Bool)

(declare-fun tp!1345635 () Bool)

(assert (=> b!4686383 (= e!2923702 tp!1345635)))

(declare-fun tp!1345634 () Bool)

(declare-fun b!4686384 () Bool)

(declare-fun e!2923705 () Bool)

(declare-fun tp_is_empty!30639 () Bool)

(declare-fun tp_is_empty!30637 () Bool)

(assert (=> b!4686384 (= e!2923705 (and tp_is_empty!30637 tp_is_empty!30639 tp!1345634))))

(declare-fun res!1976065 () Bool)

(declare-fun e!2923700 () Bool)

(assert (=> start!473688 (=> (not res!1976065) (not e!2923700))))

(declare-fun lambda!206123 () Int)

(declare-fun forall!11291 (List!52486 Int) Bool)

(assert (=> start!473688 (= res!1976065 (forall!11291 (toList!5561 lm!2023) lambda!206123))))

(assert (=> start!473688 e!2923700))

(declare-fun inv!67614 (ListLongMap!4091) Bool)

(assert (=> start!473688 (and (inv!67614 lm!2023) e!2923702)))

(assert (=> start!473688 tp_is_empty!30637))

(declare-fun e!2923706 () Bool)

(assert (=> start!473688 e!2923706))

(assert (=> start!473688 true))

(assert (=> start!473688 e!2923705))

(declare-fun b!4686385 () Bool)

(declare-fun e!2923703 () Bool)

(declare-fun e!2923708 () Bool)

(assert (=> b!4686385 (= e!2923703 e!2923708)))

(declare-fun res!1976061 () Bool)

(assert (=> b!4686385 (=> res!1976061 e!2923708)))

(declare-fun lt!1845498 () List!52485)

(declare-fun key!4653 () K!13740)

(declare-fun lt!1845492 () List!52485)

(declare-fun removePairForKey!1431 (List!52485 K!13740) List!52485)

(assert (=> b!4686385 (= res!1976061 (not (= (removePairForKey!1431 lt!1845498 key!4653) lt!1845492)))))

(declare-fun newBucket!218 () List!52485)

(declare-fun tail!8542 (List!52485) List!52485)

(assert (=> b!4686385 (= lt!1845492 (tail!8542 newBucket!218))))

(declare-fun oldBucket!34 () List!52485)

(assert (=> b!4686385 (= lt!1845498 (tail!8542 oldBucket!34))))

(declare-fun b!4686386 () Bool)

(declare-fun res!1976058 () Bool)

(assert (=> b!4686386 (=> (not res!1976058) (not e!2923700))))

(assert (=> b!4686386 (= res!1976058 (= (removePairForKey!1431 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4686387 () Bool)

(declare-fun e!2923701 () Bool)

(assert (=> b!4686387 (= e!2923701 e!2923707)))

(declare-fun res!1976066 () Bool)

(assert (=> b!4686387 (=> (not res!1976066) (not e!2923707))))

(declare-fun lt!1845489 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4686387 (= res!1976066 (= lt!1845489 hash!405))))

(declare-fun hash!4035 (Hashable!6205 K!13740) (_ BitVec 64))

(assert (=> b!4686387 (= lt!1845489 (hash!4035 hashF!1323 key!4653))))

(declare-fun b!4686388 () Bool)

(declare-fun e!2923704 () Bool)

(assert (=> b!4686388 (= e!2923707 (not e!2923704))))

(declare-fun res!1976062 () Bool)

(assert (=> b!4686388 (=> res!1976062 e!2923704)))

(get-info :version)

(assert (=> b!4686388 (= res!1976062 (or (and ((_ is Cons!52361) oldBucket!34) (= (_1!30163 (h!58594 oldBucket!34)) key!4653)) (not ((_ is Cons!52361) oldBucket!34)) (= (_1!30163 (h!58594 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4925 0))(
  ( (ListMap!4926 (toList!5562 List!52485)) )
))
(declare-fun lt!1845491 () ListMap!4925)

(declare-fun lt!1845501 () ListMap!4925)

(declare-fun addToMapMapFromBucket!1268 (List!52485 ListMap!4925) ListMap!4925)

(assert (=> b!4686388 (= lt!1845491 (addToMapMapFromBucket!1268 (_2!30164 (h!58595 (toList!5561 lm!2023))) lt!1845501))))

(declare-fun extractMap!1862 (List!52486) ListMap!4925)

(assert (=> b!4686388 (= lt!1845501 (extractMap!1862 (t!359650 (toList!5561 lm!2023))))))

(declare-fun tail!8543 (ListLongMap!4091) ListLongMap!4091)

(assert (=> b!4686388 (= (t!359650 (toList!5561 lm!2023)) (toList!5561 (tail!8543 lm!2023)))))

(declare-fun b!4686389 () Bool)

(declare-fun res!1976056 () Bool)

(assert (=> b!4686389 (=> (not res!1976056) (not e!2923700))))

(declare-fun allKeysSameHash!1662 (List!52485 (_ BitVec 64) Hashable!6205) Bool)

(assert (=> b!4686389 (= res!1976056 (allKeysSameHash!1662 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4686390 () Bool)

(declare-fun res!1976063 () Bool)

(assert (=> b!4686390 (=> (not res!1976063) (not e!2923707))))

(assert (=> b!4686390 (= res!1976063 ((_ is Cons!52362) (toList!5561 lm!2023)))))

(declare-fun b!4686391 () Bool)

(declare-fun res!1976053 () Bool)

(assert (=> b!4686391 (=> (not res!1976053) (not e!2923700))))

(declare-fun noDuplicateKeys!1836 (List!52485) Bool)

(assert (=> b!4686391 (= res!1976053 (noDuplicateKeys!1836 newBucket!218))))

(declare-fun b!4686392 () Bool)

(assert (=> b!4686392 (= e!2923708 (forall!11291 (t!359650 (toList!5561 lm!2023)) lambda!206123))))

(declare-fun lt!1845490 () tuple2!53738)

(declare-fun eq!995 (ListMap!4925 ListMap!4925) Bool)

(declare-fun +!2120 (ListMap!4925 tuple2!53738) ListMap!4925)

(assert (=> b!4686392 (eq!995 (addToMapMapFromBucket!1268 (Cons!52361 lt!1845490 lt!1845498) lt!1845501) (+!2120 (addToMapMapFromBucket!1268 lt!1845498 lt!1845501) lt!1845490))))

(declare-datatypes ((Unit!123313 0))(
  ( (Unit!123314) )
))
(declare-fun lt!1845496 () Unit!123313)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!244 (tuple2!53738 List!52485 ListMap!4925) Unit!123313)

(assert (=> b!4686392 (= lt!1845496 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!244 lt!1845490 lt!1845498 lt!1845501))))

(declare-fun head!9935 (List!52485) tuple2!53738)

(assert (=> b!4686392 (= lt!1845490 (head!9935 oldBucket!34))))

(declare-fun lt!1845495 () List!52486)

(declare-fun contains!15530 (ListMap!4925 K!13740) Bool)

(assert (=> b!4686392 (contains!15530 (extractMap!1862 lt!1845495) key!4653)))

(declare-fun lt!1845500 () Unit!123313)

(declare-fun lemmaListContainsThenExtractedMapContains!428 (ListLongMap!4091 K!13740 Hashable!6205) Unit!123313)

(assert (=> b!4686392 (= lt!1845500 (lemmaListContainsThenExtractedMapContains!428 (ListLongMap!4092 lt!1845495) key!4653 hashF!1323))))

(assert (=> b!4686392 (= lt!1845495 (Cons!52362 (tuple2!53741 hash!405 (t!359649 oldBucket!34)) (t!359650 (toList!5561 lm!2023))))))

(declare-fun b!4686393 () Bool)

(declare-fun res!1976067 () Bool)

(assert (=> b!4686393 (=> (not res!1976067) (not e!2923707))))

(declare-fun head!9936 (List!52486) tuple2!53740)

(assert (=> b!4686393 (= res!1976067 (= (head!9936 (toList!5561 lm!2023)) (tuple2!53741 hash!405 oldBucket!34)))))

(declare-fun b!4686394 () Bool)

(declare-fun res!1976055 () Bool)

(assert (=> b!4686394 (=> res!1976055 e!2923708)))

(assert (=> b!4686394 (= res!1976055 (not (= (removePairForKey!1431 (t!359649 oldBucket!34) key!4653) lt!1845492)))))

(declare-fun b!4686395 () Bool)

(assert (=> b!4686395 (= e!2923704 e!2923703)))

(declare-fun res!1976060 () Bool)

(assert (=> b!4686395 (=> res!1976060 e!2923703)))

(declare-fun containsKey!3011 (List!52485 K!13740) Bool)

(assert (=> b!4686395 (= res!1976060 (not (containsKey!3011 (t!359649 oldBucket!34) key!4653)))))

(assert (=> b!4686395 (containsKey!3011 oldBucket!34 key!4653)))

(declare-fun lt!1845503 () Unit!123313)

(declare-fun lemmaGetPairDefinedThenContainsKey!188 (List!52485 K!13740 Hashable!6205) Unit!123313)

(assert (=> b!4686395 (= lt!1845503 (lemmaGetPairDefinedThenContainsKey!188 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1845499 () List!52485)

(declare-datatypes ((Option!12035 0))(
  ( (None!12034) (Some!12034 (v!46425 tuple2!53738)) )
))
(declare-fun isDefined!9290 (Option!12035) Bool)

(declare-fun getPair!440 (List!52485 K!13740) Option!12035)

(assert (=> b!4686395 (isDefined!9290 (getPair!440 lt!1845499 key!4653))))

(declare-fun lt!1845497 () Unit!123313)

(declare-fun lt!1845504 () tuple2!53740)

(declare-fun forallContained!3398 (List!52486 Int tuple2!53740) Unit!123313)

(assert (=> b!4686395 (= lt!1845497 (forallContained!3398 (toList!5561 lm!2023) lambda!206123 lt!1845504))))

(declare-fun contains!15531 (List!52486 tuple2!53740) Bool)

(assert (=> b!4686395 (contains!15531 (toList!5561 lm!2023) lt!1845504)))

(assert (=> b!4686395 (= lt!1845504 (tuple2!53741 lt!1845489 lt!1845499))))

(declare-fun lt!1845502 () Unit!123313)

(declare-fun lemmaGetValueImpliesTupleContained!245 (ListLongMap!4091 (_ BitVec 64) List!52485) Unit!123313)

(assert (=> b!4686395 (= lt!1845502 (lemmaGetValueImpliesTupleContained!245 lm!2023 lt!1845489 lt!1845499))))

(declare-fun apply!12319 (ListLongMap!4091 (_ BitVec 64)) List!52485)

(assert (=> b!4686395 (= lt!1845499 (apply!12319 lm!2023 lt!1845489))))

(declare-fun contains!15532 (ListLongMap!4091 (_ BitVec 64)) Bool)

(assert (=> b!4686395 (contains!15532 lm!2023 lt!1845489)))

(declare-fun lt!1845493 () Unit!123313)

(declare-fun lemmaInGenMapThenLongMapContainsHash!646 (ListLongMap!4091 K!13740 Hashable!6205) Unit!123313)

(assert (=> b!4686395 (= lt!1845493 (lemmaInGenMapThenLongMapContainsHash!646 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1845494 () Unit!123313)

(declare-fun lemmaInGenMapThenGetPairDefined!236 (ListLongMap!4091 K!13740 Hashable!6205) Unit!123313)

(assert (=> b!4686395 (= lt!1845494 (lemmaInGenMapThenGetPairDefined!236 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4686396 () Bool)

(declare-fun res!1976054 () Bool)

(assert (=> b!4686396 (=> (not res!1976054) (not e!2923700))))

(assert (=> b!4686396 (= res!1976054 (noDuplicateKeys!1836 oldBucket!34))))

(declare-fun b!4686397 () Bool)

(assert (=> b!4686397 (= e!2923700 e!2923701)))

(declare-fun res!1976059 () Bool)

(assert (=> b!4686397 (=> (not res!1976059) (not e!2923701))))

(assert (=> b!4686397 (= res!1976059 (contains!15530 lt!1845491 key!4653))))

(assert (=> b!4686397 (= lt!1845491 (extractMap!1862 (toList!5561 lm!2023)))))

(declare-fun b!4686398 () Bool)

(declare-fun res!1976057 () Bool)

(assert (=> b!4686398 (=> (not res!1976057) (not e!2923707))))

(assert (=> b!4686398 (= res!1976057 (allKeysSameHash!1662 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4686399 () Bool)

(declare-fun tp!1345633 () Bool)

(assert (=> b!4686399 (= e!2923706 (and tp_is_empty!30637 tp_is_empty!30639 tp!1345633))))

(assert (= (and start!473688 res!1976065) b!4686396))

(assert (= (and b!4686396 res!1976054) b!4686391))

(assert (= (and b!4686391 res!1976053) b!4686386))

(assert (= (and b!4686386 res!1976058) b!4686389))

(assert (= (and b!4686389 res!1976056) b!4686397))

(assert (= (and b!4686397 res!1976059) b!4686387))

(assert (= (and b!4686387 res!1976066) b!4686398))

(assert (= (and b!4686398 res!1976057) b!4686382))

(assert (= (and b!4686382 res!1976064) b!4686393))

(assert (= (and b!4686393 res!1976067) b!4686390))

(assert (= (and b!4686390 res!1976063) b!4686388))

(assert (= (and b!4686388 (not res!1976062)) b!4686395))

(assert (= (and b!4686395 (not res!1976060)) b!4686385))

(assert (= (and b!4686385 (not res!1976061)) b!4686394))

(assert (= (and b!4686394 (not res!1976055)) b!4686392))

(assert (= start!473688 b!4686383))

(assert (= (and start!473688 ((_ is Cons!52361) oldBucket!34)) b!4686399))

(assert (= (and start!473688 ((_ is Cons!52361) newBucket!218)) b!4686384))

(declare-fun m!5585533 () Bool)

(assert (=> start!473688 m!5585533))

(declare-fun m!5585535 () Bool)

(assert (=> start!473688 m!5585535))

(declare-fun m!5585537 () Bool)

(assert (=> b!4686396 m!5585537))

(declare-fun m!5585539 () Bool)

(assert (=> b!4686389 m!5585539))

(declare-fun m!5585541 () Bool)

(assert (=> b!4686387 m!5585541))

(declare-fun m!5585543 () Bool)

(assert (=> b!4686382 m!5585543))

(declare-fun m!5585545 () Bool)

(assert (=> b!4686398 m!5585545))

(declare-fun m!5585547 () Bool)

(assert (=> b!4686392 m!5585547))

(declare-fun m!5585549 () Bool)

(assert (=> b!4686392 m!5585549))

(declare-fun m!5585551 () Bool)

(assert (=> b!4686392 m!5585551))

(assert (=> b!4686392 m!5585547))

(declare-fun m!5585553 () Bool)

(assert (=> b!4686392 m!5585553))

(declare-fun m!5585555 () Bool)

(assert (=> b!4686392 m!5585555))

(declare-fun m!5585557 () Bool)

(assert (=> b!4686392 m!5585557))

(assert (=> b!4686392 m!5585549))

(assert (=> b!4686392 m!5585557))

(declare-fun m!5585559 () Bool)

(assert (=> b!4686392 m!5585559))

(declare-fun m!5585561 () Bool)

(assert (=> b!4686392 m!5585561))

(assert (=> b!4686392 m!5585555))

(declare-fun m!5585563 () Bool)

(assert (=> b!4686392 m!5585563))

(declare-fun m!5585565 () Bool)

(assert (=> b!4686392 m!5585565))

(declare-fun m!5585567 () Bool)

(assert (=> b!4686391 m!5585567))

(declare-fun m!5585569 () Bool)

(assert (=> b!4686395 m!5585569))

(declare-fun m!5585571 () Bool)

(assert (=> b!4686395 m!5585571))

(declare-fun m!5585573 () Bool)

(assert (=> b!4686395 m!5585573))

(declare-fun m!5585575 () Bool)

(assert (=> b!4686395 m!5585575))

(declare-fun m!5585577 () Bool)

(assert (=> b!4686395 m!5585577))

(declare-fun m!5585579 () Bool)

(assert (=> b!4686395 m!5585579))

(declare-fun m!5585581 () Bool)

(assert (=> b!4686395 m!5585581))

(declare-fun m!5585583 () Bool)

(assert (=> b!4686395 m!5585583))

(declare-fun m!5585585 () Bool)

(assert (=> b!4686395 m!5585585))

(declare-fun m!5585587 () Bool)

(assert (=> b!4686395 m!5585587))

(assert (=> b!4686395 m!5585585))

(declare-fun m!5585589 () Bool)

(assert (=> b!4686395 m!5585589))

(declare-fun m!5585591 () Bool)

(assert (=> b!4686395 m!5585591))

(declare-fun m!5585593 () Bool)

(assert (=> b!4686386 m!5585593))

(declare-fun m!5585595 () Bool)

(assert (=> b!4686388 m!5585595))

(declare-fun m!5585597 () Bool)

(assert (=> b!4686388 m!5585597))

(declare-fun m!5585599 () Bool)

(assert (=> b!4686388 m!5585599))

(declare-fun m!5585601 () Bool)

(assert (=> b!4686385 m!5585601))

(declare-fun m!5585603 () Bool)

(assert (=> b!4686385 m!5585603))

(declare-fun m!5585605 () Bool)

(assert (=> b!4686385 m!5585605))

(declare-fun m!5585607 () Bool)

(assert (=> b!4686397 m!5585607))

(declare-fun m!5585609 () Bool)

(assert (=> b!4686397 m!5585609))

(declare-fun m!5585611 () Bool)

(assert (=> b!4686394 m!5585611))

(declare-fun m!5585613 () Bool)

(assert (=> b!4686393 m!5585613))

(check-sat (not b!4686384) (not b!4686397) (not b!4686399) (not b!4686383) (not b!4686394) (not b!4686393) (not b!4686396) (not b!4686395) (not b!4686392) (not b!4686398) tp_is_empty!30637 (not b!4686382) (not start!473688) (not b!4686389) (not b!4686388) tp_is_empty!30639 (not b!4686391) (not b!4686387) (not b!4686386) (not b!4686385))
(check-sat)
(get-model)

(declare-fun d!1489228 () Bool)

(assert (=> d!1489228 true))

(assert (=> d!1489228 true))

(declare-fun lambda!206126 () Int)

(declare-fun forall!11293 (List!52485 Int) Bool)

(assert (=> d!1489228 (= (allKeysSameHash!1662 oldBucket!34 hash!405 hashF!1323) (forall!11293 oldBucket!34 lambda!206126))))

(declare-fun bs!1084358 () Bool)

(assert (= bs!1084358 d!1489228))

(declare-fun m!5585615 () Bool)

(assert (=> bs!1084358 m!5585615))

(assert (=> b!4686389 d!1489228))

(declare-fun bs!1084359 () Bool)

(declare-fun d!1489232 () Bool)

(assert (= bs!1084359 (and d!1489232 d!1489228)))

(declare-fun lambda!206127 () Int)

(assert (=> bs!1084359 (= lambda!206127 lambda!206126)))

(assert (=> d!1489232 true))

(assert (=> d!1489232 true))

(assert (=> d!1489232 (= (allKeysSameHash!1662 newBucket!218 hash!405 hashF!1323) (forall!11293 newBucket!218 lambda!206127))))

(declare-fun bs!1084360 () Bool)

(assert (= bs!1084360 d!1489232))

(declare-fun m!5585617 () Bool)

(assert (=> bs!1084360 m!5585617))

(assert (=> b!4686398 d!1489232))

(declare-fun bs!1084381 () Bool)

(declare-fun b!4686494 () Bool)

(assert (= bs!1084381 (and b!4686494 d!1489228)))

(declare-fun lambda!206199 () Int)

(assert (=> bs!1084381 (not (= lambda!206199 lambda!206126))))

(declare-fun bs!1084382 () Bool)

(assert (= bs!1084382 (and b!4686494 d!1489232)))

(assert (=> bs!1084382 (not (= lambda!206199 lambda!206127))))

(assert (=> b!4686494 true))

(declare-fun bs!1084383 () Bool)

(declare-fun b!4686497 () Bool)

(assert (= bs!1084383 (and b!4686497 d!1489228)))

(declare-fun lambda!206200 () Int)

(assert (=> bs!1084383 (not (= lambda!206200 lambda!206126))))

(declare-fun bs!1084384 () Bool)

(assert (= bs!1084384 (and b!4686497 d!1489232)))

(assert (=> bs!1084384 (not (= lambda!206200 lambda!206127))))

(declare-fun bs!1084385 () Bool)

(assert (= bs!1084385 (and b!4686497 b!4686494)))

(assert (=> bs!1084385 (= lambda!206200 lambda!206199)))

(assert (=> b!4686497 true))

(declare-fun lambda!206201 () Int)

(assert (=> bs!1084383 (not (= lambda!206201 lambda!206126))))

(assert (=> bs!1084384 (not (= lambda!206201 lambda!206127))))

(declare-fun lt!1845673 () ListMap!4925)

(assert (=> bs!1084385 (= (= lt!1845673 lt!1845501) (= lambda!206201 lambda!206199))))

(assert (=> b!4686497 (= (= lt!1845673 lt!1845501) (= lambda!206201 lambda!206200))))

(assert (=> b!4686497 true))

(declare-fun bs!1084393 () Bool)

(declare-fun d!1489234 () Bool)

(assert (= bs!1084393 (and d!1489234 b!4686497)))

(declare-fun lt!1845671 () ListMap!4925)

(declare-fun lambda!206204 () Int)

(assert (=> bs!1084393 (= (= lt!1845671 lt!1845673) (= lambda!206204 lambda!206201))))

(declare-fun bs!1084395 () Bool)

(assert (= bs!1084395 (and d!1489234 d!1489228)))

(assert (=> bs!1084395 (not (= lambda!206204 lambda!206126))))

(assert (=> bs!1084393 (= (= lt!1845671 lt!1845501) (= lambda!206204 lambda!206200))))

(declare-fun bs!1084398 () Bool)

(assert (= bs!1084398 (and d!1489234 d!1489232)))

(assert (=> bs!1084398 (not (= lambda!206204 lambda!206127))))

(declare-fun bs!1084399 () Bool)

(assert (= bs!1084399 (and d!1489234 b!4686494)))

(assert (=> bs!1084399 (= (= lt!1845671 lt!1845501) (= lambda!206204 lambda!206199))))

(assert (=> d!1489234 true))

(declare-fun b!4686493 () Bool)

(declare-fun e!2923763 () Bool)

(declare-fun invariantList!1398 (List!52485) Bool)

(assert (=> b!4686493 (= e!2923763 (invariantList!1398 (toList!5562 lt!1845671)))))

(declare-fun call!327490 () Bool)

(declare-fun c!801368 () Bool)

(declare-fun bm!327484 () Bool)

(assert (=> bm!327484 (= call!327490 (forall!11293 (toList!5562 lt!1845501) (ite c!801368 lambda!206199 lambda!206201)))))

(declare-fun bm!327485 () Bool)

(declare-fun call!327491 () Bool)

(assert (=> bm!327485 (= call!327491 (forall!11293 (toList!5562 lt!1845501) (ite c!801368 lambda!206199 lambda!206200)))))

(declare-fun e!2923764 () ListMap!4925)

(assert (=> b!4686494 (= e!2923764 lt!1845501)))

(declare-fun lt!1845668 () Unit!123313)

(declare-fun call!327489 () Unit!123313)

(assert (=> b!4686494 (= lt!1845668 call!327489)))

(assert (=> b!4686494 call!327491))

(declare-fun lt!1845680 () Unit!123313)

(assert (=> b!4686494 (= lt!1845680 lt!1845668)))

(assert (=> b!4686494 call!327490))

(declare-fun lt!1845666 () Unit!123313)

(declare-fun Unit!123330 () Unit!123313)

(assert (=> b!4686494 (= lt!1845666 Unit!123330)))

(declare-fun b!4686495 () Bool)

(declare-fun res!1976109 () Bool)

(assert (=> b!4686495 (=> (not res!1976109) (not e!2923763))))

(assert (=> b!4686495 (= res!1976109 (forall!11293 (toList!5562 lt!1845501) lambda!206204))))

(declare-fun b!4686496 () Bool)

(declare-fun e!2923762 () Bool)

(assert (=> b!4686496 (= e!2923762 (forall!11293 (toList!5562 lt!1845501) lambda!206201))))

(declare-fun bm!327486 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!686 (ListMap!4925) Unit!123313)

(assert (=> bm!327486 (= call!327489 (lemmaContainsAllItsOwnKeys!686 lt!1845501))))

(assert (=> d!1489234 e!2923763))

(declare-fun res!1976108 () Bool)

(assert (=> d!1489234 (=> (not res!1976108) (not e!2923763))))

(assert (=> d!1489234 (= res!1976108 (forall!11293 (_2!30164 (h!58595 (toList!5561 lm!2023))) lambda!206204))))

(assert (=> d!1489234 (= lt!1845671 e!2923764)))

(assert (=> d!1489234 (= c!801368 ((_ is Nil!52361) (_2!30164 (h!58595 (toList!5561 lm!2023)))))))

(assert (=> d!1489234 (noDuplicateKeys!1836 (_2!30164 (h!58595 (toList!5561 lm!2023))))))

(assert (=> d!1489234 (= (addToMapMapFromBucket!1268 (_2!30164 (h!58595 (toList!5561 lm!2023))) lt!1845501) lt!1845671)))

(assert (=> b!4686497 (= e!2923764 lt!1845673)))

(declare-fun lt!1845663 () ListMap!4925)

(assert (=> b!4686497 (= lt!1845663 (+!2120 lt!1845501 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023))))))))

(assert (=> b!4686497 (= lt!1845673 (addToMapMapFromBucket!1268 (t!359649 (_2!30164 (h!58595 (toList!5561 lm!2023)))) (+!2120 lt!1845501 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023)))))))))

(declare-fun lt!1845674 () Unit!123313)

(assert (=> b!4686497 (= lt!1845674 call!327489)))

(assert (=> b!4686497 call!327491))

(declare-fun lt!1845667 () Unit!123313)

(assert (=> b!4686497 (= lt!1845667 lt!1845674)))

(assert (=> b!4686497 (forall!11293 (toList!5562 lt!1845663) lambda!206201)))

(declare-fun lt!1845681 () Unit!123313)

(declare-fun Unit!123331 () Unit!123313)

(assert (=> b!4686497 (= lt!1845681 Unit!123331)))

(assert (=> b!4686497 (forall!11293 (t!359649 (_2!30164 (h!58595 (toList!5561 lm!2023)))) lambda!206201)))

(declare-fun lt!1845675 () Unit!123313)

(declare-fun Unit!123332 () Unit!123313)

(assert (=> b!4686497 (= lt!1845675 Unit!123332)))

(declare-fun lt!1845670 () Unit!123313)

(declare-fun Unit!123333 () Unit!123313)

(assert (=> b!4686497 (= lt!1845670 Unit!123333)))

(declare-fun lt!1845678 () Unit!123313)

(declare-fun forallContained!3400 (List!52485 Int tuple2!53738) Unit!123313)

(assert (=> b!4686497 (= lt!1845678 (forallContained!3400 (toList!5562 lt!1845663) lambda!206201 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023))))))))

(assert (=> b!4686497 (contains!15530 lt!1845663 (_1!30163 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023))))))))

(declare-fun lt!1845662 () Unit!123313)

(declare-fun Unit!123334 () Unit!123313)

(assert (=> b!4686497 (= lt!1845662 Unit!123334)))

(assert (=> b!4686497 (contains!15530 lt!1845673 (_1!30163 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023))))))))

(declare-fun lt!1845669 () Unit!123313)

(declare-fun Unit!123335 () Unit!123313)

(assert (=> b!4686497 (= lt!1845669 Unit!123335)))

(assert (=> b!4686497 (forall!11293 (_2!30164 (h!58595 (toList!5561 lm!2023))) lambda!206201)))

(declare-fun lt!1845676 () Unit!123313)

(declare-fun Unit!123336 () Unit!123313)

(assert (=> b!4686497 (= lt!1845676 Unit!123336)))

(assert (=> b!4686497 (forall!11293 (toList!5562 lt!1845663) lambda!206201)))

(declare-fun lt!1845664 () Unit!123313)

(declare-fun Unit!123337 () Unit!123313)

(assert (=> b!4686497 (= lt!1845664 Unit!123337)))

(declare-fun lt!1845672 () Unit!123313)

(declare-fun Unit!123338 () Unit!123313)

(assert (=> b!4686497 (= lt!1845672 Unit!123338)))

(declare-fun lt!1845679 () Unit!123313)

(declare-fun addForallContainsKeyThenBeforeAdding!685 (ListMap!4925 ListMap!4925 K!13740 V!13986) Unit!123313)

(assert (=> b!4686497 (= lt!1845679 (addForallContainsKeyThenBeforeAdding!685 lt!1845501 lt!1845673 (_1!30163 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023))))) (_2!30163 (h!58594 (_2!30164 (h!58595 (toList!5561 lm!2023)))))))))

(assert (=> b!4686497 call!327490))

(declare-fun lt!1845677 () Unit!123313)

(assert (=> b!4686497 (= lt!1845677 lt!1845679)))

(assert (=> b!4686497 (forall!11293 (toList!5562 lt!1845501) lambda!206201)))

(declare-fun lt!1845665 () Unit!123313)

(declare-fun Unit!123339 () Unit!123313)

(assert (=> b!4686497 (= lt!1845665 Unit!123339)))

(declare-fun res!1976107 () Bool)

(assert (=> b!4686497 (= res!1976107 (forall!11293 (_2!30164 (h!58595 (toList!5561 lm!2023))) lambda!206201))))

(assert (=> b!4686497 (=> (not res!1976107) (not e!2923762))))

(assert (=> b!4686497 e!2923762))

(declare-fun lt!1845682 () Unit!123313)

(declare-fun Unit!123340 () Unit!123313)

(assert (=> b!4686497 (= lt!1845682 Unit!123340)))

(assert (= (and d!1489234 c!801368) b!4686494))

(assert (= (and d!1489234 (not c!801368)) b!4686497))

(assert (= (and b!4686497 res!1976107) b!4686496))

(assert (= (or b!4686494 b!4686497) bm!327486))

(assert (= (or b!4686494 b!4686497) bm!327484))

(assert (= (or b!4686494 b!4686497) bm!327485))

(assert (= (and d!1489234 res!1976108) b!4686495))

(assert (= (and b!4686495 res!1976109) b!4686493))

(declare-fun m!5585753 () Bool)

(assert (=> bm!327485 m!5585753))

(declare-fun m!5585755 () Bool)

(assert (=> bm!327484 m!5585755))

(declare-fun m!5585757 () Bool)

(assert (=> bm!327486 m!5585757))

(declare-fun m!5585759 () Bool)

(assert (=> b!4686496 m!5585759))

(declare-fun m!5585761 () Bool)

(assert (=> b!4686497 m!5585761))

(declare-fun m!5585763 () Bool)

(assert (=> b!4686497 m!5585763))

(declare-fun m!5585765 () Bool)

(assert (=> b!4686497 m!5585765))

(declare-fun m!5585767 () Bool)

(assert (=> b!4686497 m!5585767))

(declare-fun m!5585769 () Bool)

(assert (=> b!4686497 m!5585769))

(assert (=> b!4686497 m!5585759))

(declare-fun m!5585771 () Bool)

(assert (=> b!4686497 m!5585771))

(assert (=> b!4686497 m!5585771))

(assert (=> b!4686497 m!5585761))

(declare-fun m!5585773 () Bool)

(assert (=> b!4686497 m!5585773))

(declare-fun m!5585775 () Bool)

(assert (=> b!4686497 m!5585775))

(declare-fun m!5585777 () Bool)

(assert (=> b!4686497 m!5585777))

(assert (=> b!4686497 m!5585775))

(declare-fun m!5585779 () Bool)

(assert (=> d!1489234 m!5585779))

(declare-fun m!5585781 () Bool)

(assert (=> d!1489234 m!5585781))

(declare-fun m!5585783 () Bool)

(assert (=> b!4686495 m!5585783))

(declare-fun m!5585785 () Bool)

(assert (=> b!4686493 m!5585785))

(assert (=> b!4686388 d!1489234))

(declare-fun bs!1084430 () Bool)

(declare-fun d!1489264 () Bool)

(assert (= bs!1084430 (and d!1489264 start!473688)))

(declare-fun lambda!206213 () Int)

(assert (=> bs!1084430 (= lambda!206213 lambda!206123)))

(declare-fun lt!1845732 () ListMap!4925)

(assert (=> d!1489264 (invariantList!1398 (toList!5562 lt!1845732))))

(declare-fun e!2923777 () ListMap!4925)

(assert (=> d!1489264 (= lt!1845732 e!2923777)))

(declare-fun c!801377 () Bool)

(assert (=> d!1489264 (= c!801377 ((_ is Cons!52362) (t!359650 (toList!5561 lm!2023))))))

(assert (=> d!1489264 (forall!11291 (t!359650 (toList!5561 lm!2023)) lambda!206213)))

(assert (=> d!1489264 (= (extractMap!1862 (t!359650 (toList!5561 lm!2023))) lt!1845732)))

(declare-fun b!4686522 () Bool)

(assert (=> b!4686522 (= e!2923777 (addToMapMapFromBucket!1268 (_2!30164 (h!58595 (t!359650 (toList!5561 lm!2023)))) (extractMap!1862 (t!359650 (t!359650 (toList!5561 lm!2023))))))))

(declare-fun b!4686523 () Bool)

(assert (=> b!4686523 (= e!2923777 (ListMap!4926 Nil!52361))))

(assert (= (and d!1489264 c!801377) b!4686522))

(assert (= (and d!1489264 (not c!801377)) b!4686523))

(declare-fun m!5585853 () Bool)

(assert (=> d!1489264 m!5585853))

(declare-fun m!5585855 () Bool)

(assert (=> d!1489264 m!5585855))

(declare-fun m!5585857 () Bool)

(assert (=> b!4686522 m!5585857))

(assert (=> b!4686522 m!5585857))

(declare-fun m!5585859 () Bool)

(assert (=> b!4686522 m!5585859))

(assert (=> b!4686388 d!1489264))

(declare-fun d!1489270 () Bool)

(declare-fun tail!8545 (List!52486) List!52486)

(assert (=> d!1489270 (= (tail!8543 lm!2023) (ListLongMap!4092 (tail!8545 (toList!5561 lm!2023))))))

(declare-fun bs!1084431 () Bool)

(assert (= bs!1084431 d!1489270))

(declare-fun m!5585861 () Bool)

(assert (=> bs!1084431 m!5585861))

(assert (=> b!4686388 d!1489270))

(declare-fun d!1489272 () Bool)

(declare-fun res!1976120 () Bool)

(declare-fun e!2923786 () Bool)

(assert (=> d!1489272 (=> res!1976120 e!2923786)))

(assert (=> d!1489272 (= res!1976120 ((_ is Nil!52362) (toList!5561 lm!2023)))))

(assert (=> d!1489272 (= (forall!11291 (toList!5561 lm!2023) lambda!206123) e!2923786)))

(declare-fun b!4686536 () Bool)

(declare-fun e!2923787 () Bool)

(assert (=> b!4686536 (= e!2923786 e!2923787)))

(declare-fun res!1976121 () Bool)

(assert (=> b!4686536 (=> (not res!1976121) (not e!2923787))))

(declare-fun dynLambda!21701 (Int tuple2!53740) Bool)

(assert (=> b!4686536 (= res!1976121 (dynLambda!21701 lambda!206123 (h!58595 (toList!5561 lm!2023))))))

(declare-fun b!4686537 () Bool)

(assert (=> b!4686537 (= e!2923787 (forall!11291 (t!359650 (toList!5561 lm!2023)) lambda!206123))))

(assert (= (and d!1489272 (not res!1976120)) b!4686536))

(assert (= (and b!4686536 res!1976121) b!4686537))

(declare-fun b_lambda!176855 () Bool)

(assert (=> (not b_lambda!176855) (not b!4686536)))

(declare-fun m!5585873 () Bool)

(assert (=> b!4686536 m!5585873))

(assert (=> b!4686537 m!5585551))

(assert (=> start!473688 d!1489272))

(declare-fun d!1489282 () Bool)

(declare-fun isStrictlySorted!637 (List!52486) Bool)

(assert (=> d!1489282 (= (inv!67614 lm!2023) (isStrictlySorted!637 (toList!5561 lm!2023)))))

(declare-fun bs!1084433 () Bool)

(assert (= bs!1084433 d!1489282))

(declare-fun m!5585875 () Bool)

(assert (=> bs!1084433 m!5585875))

(assert (=> start!473688 d!1489282))

(declare-fun b!4686572 () Bool)

(declare-datatypes ((List!52488 0))(
  ( (Nil!52364) (Cons!52364 (h!58599 K!13740) (t!359654 List!52488)) )
))
(declare-fun e!2923814 () List!52488)

(declare-fun getKeysList!838 (List!52485) List!52488)

(assert (=> b!4686572 (= e!2923814 (getKeysList!838 (toList!5562 lt!1845491)))))

(declare-fun b!4686573 () Bool)

(declare-fun e!2923819 () Unit!123313)

(declare-fun e!2923815 () Unit!123313)

(assert (=> b!4686573 (= e!2923819 e!2923815)))

(declare-fun c!801390 () Bool)

(declare-fun call!327500 () Bool)

(assert (=> b!4686573 (= c!801390 call!327500)))

(declare-fun b!4686574 () Bool)

(declare-fun e!2923817 () Bool)

(declare-fun contains!15535 (List!52488 K!13740) Bool)

(declare-fun keys!18683 (ListMap!4925) List!52488)

(assert (=> b!4686574 (= e!2923817 (contains!15535 (keys!18683 lt!1845491) key!4653))))

(declare-fun b!4686575 () Bool)

(declare-fun Unit!123349 () Unit!123313)

(assert (=> b!4686575 (= e!2923815 Unit!123349)))

(declare-fun d!1489284 () Bool)

(declare-fun e!2923816 () Bool)

(assert (=> d!1489284 e!2923816))

(declare-fun res!1976143 () Bool)

(assert (=> d!1489284 (=> res!1976143 e!2923816)))

(declare-fun e!2923818 () Bool)

(assert (=> d!1489284 (= res!1976143 e!2923818)))

(declare-fun res!1976144 () Bool)

(assert (=> d!1489284 (=> (not res!1976144) (not e!2923818))))

(declare-fun lt!1845763 () Bool)

(assert (=> d!1489284 (= res!1976144 (not lt!1845763))))

(declare-fun lt!1845761 () Bool)

(assert (=> d!1489284 (= lt!1845763 lt!1845761)))

(declare-fun lt!1845764 () Unit!123313)

(assert (=> d!1489284 (= lt!1845764 e!2923819)))

(declare-fun c!801389 () Bool)

(assert (=> d!1489284 (= c!801389 lt!1845761)))

(declare-fun containsKey!3013 (List!52485 K!13740) Bool)

(assert (=> d!1489284 (= lt!1845761 (containsKey!3013 (toList!5562 lt!1845491) key!4653))))

(assert (=> d!1489284 (= (contains!15530 lt!1845491 key!4653) lt!1845763)))

(declare-fun b!4686576 () Bool)

(assert (=> b!4686576 (= e!2923814 (keys!18683 lt!1845491))))

(declare-fun b!4686577 () Bool)

(assert (=> b!4686577 (= e!2923818 (not (contains!15535 (keys!18683 lt!1845491) key!4653)))))

(declare-fun b!4686578 () Bool)

(declare-fun lt!1845758 () Unit!123313)

(assert (=> b!4686578 (= e!2923819 lt!1845758)))

(declare-fun lt!1845760 () Unit!123313)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1647 (List!52485 K!13740) Unit!123313)

(assert (=> b!4686578 (= lt!1845760 (lemmaContainsKeyImpliesGetValueByKeyDefined!1647 (toList!5562 lt!1845491) key!4653))))

(declare-datatypes ((Option!12037 0))(
  ( (None!12036) (Some!12036 (v!46431 V!13986)) )
))
(declare-fun isDefined!9292 (Option!12037) Bool)

(declare-fun getValueByKey!1755 (List!52485 K!13740) Option!12037)

(assert (=> b!4686578 (isDefined!9292 (getValueByKey!1755 (toList!5562 lt!1845491) key!4653))))

(declare-fun lt!1845759 () Unit!123313)

(assert (=> b!4686578 (= lt!1845759 lt!1845760)))

(declare-fun lemmaInListThenGetKeysListContains!833 (List!52485 K!13740) Unit!123313)

(assert (=> b!4686578 (= lt!1845758 (lemmaInListThenGetKeysListContains!833 (toList!5562 lt!1845491) key!4653))))

(assert (=> b!4686578 call!327500))

(declare-fun b!4686579 () Bool)

(assert (=> b!4686579 false))

(declare-fun lt!1845762 () Unit!123313)

(declare-fun lt!1845757 () Unit!123313)

(assert (=> b!4686579 (= lt!1845762 lt!1845757)))

(assert (=> b!4686579 (containsKey!3013 (toList!5562 lt!1845491) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!837 (List!52485 K!13740) Unit!123313)

(assert (=> b!4686579 (= lt!1845757 (lemmaInGetKeysListThenContainsKey!837 (toList!5562 lt!1845491) key!4653))))

(declare-fun Unit!123353 () Unit!123313)

(assert (=> b!4686579 (= e!2923815 Unit!123353)))

(declare-fun bm!327495 () Bool)

(assert (=> bm!327495 (= call!327500 (contains!15535 e!2923814 key!4653))))

(declare-fun c!801388 () Bool)

(assert (=> bm!327495 (= c!801388 c!801389)))

(declare-fun b!4686580 () Bool)

(assert (=> b!4686580 (= e!2923816 e!2923817)))

(declare-fun res!1976142 () Bool)

(assert (=> b!4686580 (=> (not res!1976142) (not e!2923817))))

(assert (=> b!4686580 (= res!1976142 (isDefined!9292 (getValueByKey!1755 (toList!5562 lt!1845491) key!4653)))))

(assert (= (and d!1489284 c!801389) b!4686578))

(assert (= (and d!1489284 (not c!801389)) b!4686573))

(assert (= (and b!4686573 c!801390) b!4686579))

(assert (= (and b!4686573 (not c!801390)) b!4686575))

(assert (= (or b!4686578 b!4686573) bm!327495))

(assert (= (and bm!327495 c!801388) b!4686572))

(assert (= (and bm!327495 (not c!801388)) b!4686576))

(assert (= (and d!1489284 res!1976144) b!4686577))

(assert (= (and d!1489284 (not res!1976143)) b!4686580))

(assert (= (and b!4686580 res!1976142) b!4686574))

(declare-fun m!5585901 () Bool)

(assert (=> b!4686574 m!5585901))

(assert (=> b!4686574 m!5585901))

(declare-fun m!5585903 () Bool)

(assert (=> b!4686574 m!5585903))

(assert (=> b!4686577 m!5585901))

(assert (=> b!4686577 m!5585901))

(assert (=> b!4686577 m!5585903))

(declare-fun m!5585905 () Bool)

(assert (=> bm!327495 m!5585905))

(assert (=> b!4686576 m!5585901))

(declare-fun m!5585907 () Bool)

(assert (=> b!4686578 m!5585907))

(declare-fun m!5585909 () Bool)

(assert (=> b!4686578 m!5585909))

(assert (=> b!4686578 m!5585909))

(declare-fun m!5585911 () Bool)

(assert (=> b!4686578 m!5585911))

(declare-fun m!5585913 () Bool)

(assert (=> b!4686578 m!5585913))

(declare-fun m!5585915 () Bool)

(assert (=> b!4686579 m!5585915))

(declare-fun m!5585917 () Bool)

(assert (=> b!4686579 m!5585917))

(assert (=> b!4686580 m!5585909))

(assert (=> b!4686580 m!5585909))

(assert (=> b!4686580 m!5585911))

(declare-fun m!5585919 () Bool)

(assert (=> b!4686572 m!5585919))

(assert (=> d!1489284 m!5585915))

(assert (=> b!4686397 d!1489284))

(declare-fun bs!1084458 () Bool)

(declare-fun d!1489300 () Bool)

(assert (= bs!1084458 (and d!1489300 start!473688)))

(declare-fun lambda!206221 () Int)

(assert (=> bs!1084458 (= lambda!206221 lambda!206123)))

(declare-fun bs!1084459 () Bool)

(assert (= bs!1084459 (and d!1489300 d!1489264)))

(assert (=> bs!1084459 (= lambda!206221 lambda!206213)))

(declare-fun lt!1845765 () ListMap!4925)

(assert (=> d!1489300 (invariantList!1398 (toList!5562 lt!1845765))))

(declare-fun e!2923820 () ListMap!4925)

(assert (=> d!1489300 (= lt!1845765 e!2923820)))

(declare-fun c!801391 () Bool)

(assert (=> d!1489300 (= c!801391 ((_ is Cons!52362) (toList!5561 lm!2023)))))

(assert (=> d!1489300 (forall!11291 (toList!5561 lm!2023) lambda!206221)))

(assert (=> d!1489300 (= (extractMap!1862 (toList!5561 lm!2023)) lt!1845765)))

(declare-fun b!4686581 () Bool)

(assert (=> b!4686581 (= e!2923820 (addToMapMapFromBucket!1268 (_2!30164 (h!58595 (toList!5561 lm!2023))) (extractMap!1862 (t!359650 (toList!5561 lm!2023)))))))

(declare-fun b!4686582 () Bool)

(assert (=> b!4686582 (= e!2923820 (ListMap!4926 Nil!52361))))

(assert (= (and d!1489300 c!801391) b!4686581))

(assert (= (and d!1489300 (not c!801391)) b!4686582))

(declare-fun m!5585921 () Bool)

(assert (=> d!1489300 m!5585921))

(declare-fun m!5585923 () Bool)

(assert (=> d!1489300 m!5585923))

(assert (=> b!4686581 m!5585597))

(assert (=> b!4686581 m!5585597))

(declare-fun m!5585925 () Bool)

(assert (=> b!4686581 m!5585925))

(assert (=> b!4686397 d!1489300))

(declare-fun d!1489302 () Bool)

(declare-fun lt!1845768 () List!52485)

(assert (=> d!1489302 (not (containsKey!3011 lt!1845768 key!4653))))

(declare-fun e!2923825 () List!52485)

(assert (=> d!1489302 (= lt!1845768 e!2923825)))

(declare-fun c!801397 () Bool)

(assert (=> d!1489302 (= c!801397 (and ((_ is Cons!52361) oldBucket!34) (= (_1!30163 (h!58594 oldBucket!34)) key!4653)))))

(assert (=> d!1489302 (noDuplicateKeys!1836 oldBucket!34)))

(assert (=> d!1489302 (= (removePairForKey!1431 oldBucket!34 key!4653) lt!1845768)))

(declare-fun b!4686594 () Bool)

(declare-fun e!2923826 () List!52485)

(assert (=> b!4686594 (= e!2923826 Nil!52361)))

(declare-fun b!4686591 () Bool)

(assert (=> b!4686591 (= e!2923825 (t!359649 oldBucket!34))))

(declare-fun b!4686593 () Bool)

(assert (=> b!4686593 (= e!2923826 (Cons!52361 (h!58594 oldBucket!34) (removePairForKey!1431 (t!359649 oldBucket!34) key!4653)))))

(declare-fun b!4686592 () Bool)

(assert (=> b!4686592 (= e!2923825 e!2923826)))

(declare-fun c!801396 () Bool)

(assert (=> b!4686592 (= c!801396 ((_ is Cons!52361) oldBucket!34))))

(assert (= (and d!1489302 c!801397) b!4686591))

(assert (= (and d!1489302 (not c!801397)) b!4686592))

(assert (= (and b!4686592 c!801396) b!4686593))

(assert (= (and b!4686592 (not c!801396)) b!4686594))

(declare-fun m!5585927 () Bool)

(assert (=> d!1489302 m!5585927))

(assert (=> d!1489302 m!5585537))

(assert (=> b!4686593 m!5585611))

(assert (=> b!4686386 d!1489302))

(declare-fun d!1489304 () Bool)

(declare-fun hash!4036 (Hashable!6205 K!13740) (_ BitVec 64))

(assert (=> d!1489304 (= (hash!4035 hashF!1323 key!4653) (hash!4036 hashF!1323 key!4653))))

(declare-fun bs!1084460 () Bool)

(assert (= bs!1084460 d!1489304))

(declare-fun m!5585929 () Bool)

(assert (=> bs!1084460 m!5585929))

(assert (=> b!4686387 d!1489304))

(declare-fun d!1489306 () Bool)

(declare-fun lt!1845769 () List!52485)

(assert (=> d!1489306 (not (containsKey!3011 lt!1845769 key!4653))))

(declare-fun e!2923827 () List!52485)

(assert (=> d!1489306 (= lt!1845769 e!2923827)))

(declare-fun c!801399 () Bool)

(assert (=> d!1489306 (= c!801399 (and ((_ is Cons!52361) lt!1845498) (= (_1!30163 (h!58594 lt!1845498)) key!4653)))))

(assert (=> d!1489306 (noDuplicateKeys!1836 lt!1845498)))

(assert (=> d!1489306 (= (removePairForKey!1431 lt!1845498 key!4653) lt!1845769)))

(declare-fun b!4686598 () Bool)

(declare-fun e!2923828 () List!52485)

(assert (=> b!4686598 (= e!2923828 Nil!52361)))

(declare-fun b!4686595 () Bool)

(assert (=> b!4686595 (= e!2923827 (t!359649 lt!1845498))))

(declare-fun b!4686597 () Bool)

(assert (=> b!4686597 (= e!2923828 (Cons!52361 (h!58594 lt!1845498) (removePairForKey!1431 (t!359649 lt!1845498) key!4653)))))

(declare-fun b!4686596 () Bool)

(assert (=> b!4686596 (= e!2923827 e!2923828)))

(declare-fun c!801398 () Bool)

(assert (=> b!4686596 (= c!801398 ((_ is Cons!52361) lt!1845498))))

(assert (= (and d!1489306 c!801399) b!4686595))

(assert (= (and d!1489306 (not c!801399)) b!4686596))

(assert (= (and b!4686596 c!801398) b!4686597))

(assert (= (and b!4686596 (not c!801398)) b!4686598))

(declare-fun m!5585931 () Bool)

(assert (=> d!1489306 m!5585931))

(declare-fun m!5585933 () Bool)

(assert (=> d!1489306 m!5585933))

(declare-fun m!5585935 () Bool)

(assert (=> b!4686597 m!5585935))

(assert (=> b!4686385 d!1489306))

(declare-fun d!1489308 () Bool)

(assert (=> d!1489308 (= (tail!8542 newBucket!218) (t!359649 newBucket!218))))

(assert (=> b!4686385 d!1489308))

(declare-fun d!1489310 () Bool)

(assert (=> d!1489310 (= (tail!8542 oldBucket!34) (t!359649 oldBucket!34))))

(assert (=> b!4686385 d!1489310))

(declare-fun d!1489312 () Bool)

(declare-fun res!1976149 () Bool)

(declare-fun e!2923833 () Bool)

(assert (=> d!1489312 (=> res!1976149 e!2923833)))

(assert (=> d!1489312 (= res!1976149 (not ((_ is Cons!52361) oldBucket!34)))))

(assert (=> d!1489312 (= (noDuplicateKeys!1836 oldBucket!34) e!2923833)))

(declare-fun b!4686603 () Bool)

(declare-fun e!2923834 () Bool)

(assert (=> b!4686603 (= e!2923833 e!2923834)))

(declare-fun res!1976150 () Bool)

(assert (=> b!4686603 (=> (not res!1976150) (not e!2923834))))

(assert (=> b!4686603 (= res!1976150 (not (containsKey!3011 (t!359649 oldBucket!34) (_1!30163 (h!58594 oldBucket!34)))))))

(declare-fun b!4686604 () Bool)

(assert (=> b!4686604 (= e!2923834 (noDuplicateKeys!1836 (t!359649 oldBucket!34)))))

(assert (= (and d!1489312 (not res!1976149)) b!4686603))

(assert (= (and b!4686603 res!1976150) b!4686604))

(declare-fun m!5585937 () Bool)

(assert (=> b!4686603 m!5585937))

(declare-fun m!5585939 () Bool)

(assert (=> b!4686604 m!5585939))

(assert (=> b!4686396 d!1489312))

(declare-fun d!1489314 () Bool)

(declare-fun lt!1845770 () List!52485)

(assert (=> d!1489314 (not (containsKey!3011 lt!1845770 key!4653))))

(declare-fun e!2923835 () List!52485)

(assert (=> d!1489314 (= lt!1845770 e!2923835)))

(declare-fun c!801401 () Bool)

(assert (=> d!1489314 (= c!801401 (and ((_ is Cons!52361) (t!359649 oldBucket!34)) (= (_1!30163 (h!58594 (t!359649 oldBucket!34))) key!4653)))))

(assert (=> d!1489314 (noDuplicateKeys!1836 (t!359649 oldBucket!34))))

(assert (=> d!1489314 (= (removePairForKey!1431 (t!359649 oldBucket!34) key!4653) lt!1845770)))

(declare-fun b!4686608 () Bool)

(declare-fun e!2923836 () List!52485)

(assert (=> b!4686608 (= e!2923836 Nil!52361)))

(declare-fun b!4686605 () Bool)

(assert (=> b!4686605 (= e!2923835 (t!359649 (t!359649 oldBucket!34)))))

(declare-fun b!4686607 () Bool)

(assert (=> b!4686607 (= e!2923836 (Cons!52361 (h!58594 (t!359649 oldBucket!34)) (removePairForKey!1431 (t!359649 (t!359649 oldBucket!34)) key!4653)))))

(declare-fun b!4686606 () Bool)

(assert (=> b!4686606 (= e!2923835 e!2923836)))

(declare-fun c!801400 () Bool)

(assert (=> b!4686606 (= c!801400 ((_ is Cons!52361) (t!359649 oldBucket!34)))))

(assert (= (and d!1489314 c!801401) b!4686605))

(assert (= (and d!1489314 (not c!801401)) b!4686606))

(assert (= (and b!4686606 c!801400) b!4686607))

(assert (= (and b!4686606 (not c!801400)) b!4686608))

(declare-fun m!5585941 () Bool)

(assert (=> d!1489314 m!5585941))

(assert (=> d!1489314 m!5585939))

(declare-fun m!5585943 () Bool)

(assert (=> b!4686607 m!5585943))

(assert (=> b!4686394 d!1489314))

(declare-fun d!1489316 () Bool)

(declare-fun lt!1845773 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9140 (List!52486) (InoxSet tuple2!53740))

(assert (=> d!1489316 (= lt!1845773 (select (content!9140 (toList!5561 lm!2023)) lt!1845504))))

(declare-fun e!2923841 () Bool)

(assert (=> d!1489316 (= lt!1845773 e!2923841)))

(declare-fun res!1976155 () Bool)

(assert (=> d!1489316 (=> (not res!1976155) (not e!2923841))))

(assert (=> d!1489316 (= res!1976155 ((_ is Cons!52362) (toList!5561 lm!2023)))))

(assert (=> d!1489316 (= (contains!15531 (toList!5561 lm!2023) lt!1845504) lt!1845773)))

(declare-fun b!4686613 () Bool)

(declare-fun e!2923842 () Bool)

(assert (=> b!4686613 (= e!2923841 e!2923842)))

(declare-fun res!1976156 () Bool)

(assert (=> b!4686613 (=> res!1976156 e!2923842)))

(assert (=> b!4686613 (= res!1976156 (= (h!58595 (toList!5561 lm!2023)) lt!1845504))))

(declare-fun b!4686614 () Bool)

(assert (=> b!4686614 (= e!2923842 (contains!15531 (t!359650 (toList!5561 lm!2023)) lt!1845504))))

(assert (= (and d!1489316 res!1976155) b!4686613))

(assert (= (and b!4686613 (not res!1976156)) b!4686614))

(declare-fun m!5585945 () Bool)

(assert (=> d!1489316 m!5585945))

(declare-fun m!5585947 () Bool)

(assert (=> d!1489316 m!5585947))

(declare-fun m!5585949 () Bool)

(assert (=> b!4686614 m!5585949))

(assert (=> b!4686395 d!1489316))

(declare-fun d!1489318 () Bool)

(assert (=> d!1489318 (dynLambda!21701 lambda!206123 lt!1845504)))

(declare-fun lt!1845776 () Unit!123313)

(declare-fun choose!32496 (List!52486 Int tuple2!53740) Unit!123313)

(assert (=> d!1489318 (= lt!1845776 (choose!32496 (toList!5561 lm!2023) lambda!206123 lt!1845504))))

(declare-fun e!2923845 () Bool)

(assert (=> d!1489318 e!2923845))

(declare-fun res!1976159 () Bool)

(assert (=> d!1489318 (=> (not res!1976159) (not e!2923845))))

(assert (=> d!1489318 (= res!1976159 (forall!11291 (toList!5561 lm!2023) lambda!206123))))

(assert (=> d!1489318 (= (forallContained!3398 (toList!5561 lm!2023) lambda!206123 lt!1845504) lt!1845776)))

(declare-fun b!4686617 () Bool)

(assert (=> b!4686617 (= e!2923845 (contains!15531 (toList!5561 lm!2023) lt!1845504))))

(assert (= (and d!1489318 res!1976159) b!4686617))

(declare-fun b_lambda!176859 () Bool)

(assert (=> (not b_lambda!176859) (not d!1489318)))

(declare-fun m!5585951 () Bool)

(assert (=> d!1489318 m!5585951))

(declare-fun m!5585953 () Bool)

(assert (=> d!1489318 m!5585953))

(assert (=> d!1489318 m!5585533))

(assert (=> b!4686617 m!5585577))

(assert (=> b!4686395 d!1489318))

(declare-fun bs!1084461 () Bool)

(declare-fun d!1489320 () Bool)

(assert (= bs!1084461 (and d!1489320 start!473688)))

(declare-fun lambda!206224 () Int)

(assert (=> bs!1084461 (= lambda!206224 lambda!206123)))

(declare-fun bs!1084462 () Bool)

(assert (= bs!1084462 (and d!1489320 d!1489264)))

(assert (=> bs!1084462 (= lambda!206224 lambda!206213)))

(declare-fun bs!1084463 () Bool)

(assert (= bs!1084463 (and d!1489320 d!1489300)))

(assert (=> bs!1084463 (= lambda!206224 lambda!206221)))

(assert (=> d!1489320 (contains!15532 lm!2023 (hash!4035 hashF!1323 key!4653))))

(declare-fun lt!1845779 () Unit!123313)

(declare-fun choose!32497 (ListLongMap!4091 K!13740 Hashable!6205) Unit!123313)

(assert (=> d!1489320 (= lt!1845779 (choose!32497 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489320 (forall!11291 (toList!5561 lm!2023) lambda!206224)))

(assert (=> d!1489320 (= (lemmaInGenMapThenLongMapContainsHash!646 lm!2023 key!4653 hashF!1323) lt!1845779)))

(declare-fun bs!1084464 () Bool)

(assert (= bs!1084464 d!1489320))

(assert (=> bs!1084464 m!5585541))

(assert (=> bs!1084464 m!5585541))

(declare-fun m!5585955 () Bool)

(assert (=> bs!1084464 m!5585955))

(declare-fun m!5585957 () Bool)

(assert (=> bs!1084464 m!5585957))

(declare-fun m!5585959 () Bool)

(assert (=> bs!1084464 m!5585959))

(assert (=> b!4686395 d!1489320))

(declare-fun d!1489322 () Bool)

(assert (=> d!1489322 (containsKey!3011 oldBucket!34 key!4653)))

(declare-fun lt!1845782 () Unit!123313)

(declare-fun choose!32498 (List!52485 K!13740 Hashable!6205) Unit!123313)

(assert (=> d!1489322 (= lt!1845782 (choose!32498 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1489322 (noDuplicateKeys!1836 oldBucket!34)))

(assert (=> d!1489322 (= (lemmaGetPairDefinedThenContainsKey!188 oldBucket!34 key!4653 hashF!1323) lt!1845782)))

(declare-fun bs!1084465 () Bool)

(assert (= bs!1084465 d!1489322))

(assert (=> bs!1084465 m!5585591))

(declare-fun m!5585961 () Bool)

(assert (=> bs!1084465 m!5585961))

(assert (=> bs!1084465 m!5585537))

(assert (=> b!4686395 d!1489322))

(declare-fun d!1489324 () Bool)

(declare-fun res!1976164 () Bool)

(declare-fun e!2923850 () Bool)

(assert (=> d!1489324 (=> res!1976164 e!2923850)))

(assert (=> d!1489324 (= res!1976164 (and ((_ is Cons!52361) oldBucket!34) (= (_1!30163 (h!58594 oldBucket!34)) key!4653)))))

(assert (=> d!1489324 (= (containsKey!3011 oldBucket!34 key!4653) e!2923850)))

(declare-fun b!4686622 () Bool)

(declare-fun e!2923851 () Bool)

(assert (=> b!4686622 (= e!2923850 e!2923851)))

(declare-fun res!1976165 () Bool)

(assert (=> b!4686622 (=> (not res!1976165) (not e!2923851))))

(assert (=> b!4686622 (= res!1976165 ((_ is Cons!52361) oldBucket!34))))

(declare-fun b!4686623 () Bool)

(assert (=> b!4686623 (= e!2923851 (containsKey!3011 (t!359649 oldBucket!34) key!4653))))

(assert (= (and d!1489324 (not res!1976164)) b!4686622))

(assert (= (and b!4686622 res!1976165) b!4686623))

(assert (=> b!4686623 m!5585583))

(assert (=> b!4686395 d!1489324))

(declare-fun d!1489326 () Bool)

(declare-datatypes ((Option!12038 0))(
  ( (None!12037) (Some!12037 (v!46432 List!52485)) )
))
(declare-fun get!17458 (Option!12038) List!52485)

(declare-fun getValueByKey!1756 (List!52486 (_ BitVec 64)) Option!12038)

(assert (=> d!1489326 (= (apply!12319 lm!2023 lt!1845489) (get!17458 (getValueByKey!1756 (toList!5561 lm!2023) lt!1845489)))))

(declare-fun bs!1084466 () Bool)

(assert (= bs!1084466 d!1489326))

(declare-fun m!5585963 () Bool)

(assert (=> bs!1084466 m!5585963))

(assert (=> bs!1084466 m!5585963))

(declare-fun m!5585965 () Bool)

(assert (=> bs!1084466 m!5585965))

(assert (=> b!4686395 d!1489326))

(declare-fun b!4686648 () Bool)

(declare-fun e!2923869 () Bool)

(declare-fun lt!1845801 () Option!12035)

(declare-fun contains!15536 (List!52485 tuple2!53738) Bool)

(declare-fun get!17459 (Option!12035) tuple2!53738)

(assert (=> b!4686648 (= e!2923869 (contains!15536 lt!1845499 (get!17459 lt!1845801)))))

(declare-fun b!4686649 () Bool)

(declare-fun e!2923870 () Bool)

(assert (=> b!4686649 (= e!2923870 (not (containsKey!3011 lt!1845499 key!4653)))))

(declare-fun b!4686650 () Bool)

(declare-fun e!2923867 () Option!12035)

(assert (=> b!4686650 (= e!2923867 (Some!12034 (h!58594 lt!1845499)))))

(declare-fun b!4686651 () Bool)

(declare-fun e!2923868 () Option!12035)

(assert (=> b!4686651 (= e!2923868 None!12034)))

(declare-fun b!4686652 () Bool)

(assert (=> b!4686652 (= e!2923867 e!2923868)))

(declare-fun c!801407 () Bool)

(assert (=> b!4686652 (= c!801407 ((_ is Cons!52361) lt!1845499))))

(declare-fun b!4686653 () Bool)

(declare-fun res!1976184 () Bool)

(assert (=> b!4686653 (=> (not res!1976184) (not e!2923869))))

(assert (=> b!4686653 (= res!1976184 (= (_1!30163 (get!17459 lt!1845801)) key!4653))))

(declare-fun d!1489328 () Bool)

(declare-fun e!2923866 () Bool)

(assert (=> d!1489328 e!2923866))

(declare-fun res!1976185 () Bool)

(assert (=> d!1489328 (=> res!1976185 e!2923866)))

(assert (=> d!1489328 (= res!1976185 e!2923870)))

(declare-fun res!1976182 () Bool)

(assert (=> d!1489328 (=> (not res!1976182) (not e!2923870))))

(declare-fun isEmpty!29081 (Option!12035) Bool)

(assert (=> d!1489328 (= res!1976182 (isEmpty!29081 lt!1845801))))

(assert (=> d!1489328 (= lt!1845801 e!2923867)))

(declare-fun c!801406 () Bool)

(assert (=> d!1489328 (= c!801406 (and ((_ is Cons!52361) lt!1845499) (= (_1!30163 (h!58594 lt!1845499)) key!4653)))))

(assert (=> d!1489328 (noDuplicateKeys!1836 lt!1845499)))

(assert (=> d!1489328 (= (getPair!440 lt!1845499 key!4653) lt!1845801)))

(declare-fun b!4686654 () Bool)

(assert (=> b!4686654 (= e!2923866 e!2923869)))

(declare-fun res!1976183 () Bool)

(assert (=> b!4686654 (=> (not res!1976183) (not e!2923869))))

(assert (=> b!4686654 (= res!1976183 (isDefined!9290 lt!1845801))))

(declare-fun b!4686655 () Bool)

(assert (=> b!4686655 (= e!2923868 (getPair!440 (t!359649 lt!1845499) key!4653))))

(assert (= (and d!1489328 c!801406) b!4686650))

(assert (= (and d!1489328 (not c!801406)) b!4686652))

(assert (= (and b!4686652 c!801407) b!4686655))

(assert (= (and b!4686652 (not c!801407)) b!4686651))

(assert (= (and d!1489328 res!1976182) b!4686649))

(assert (= (and d!1489328 (not res!1976185)) b!4686654))

(assert (= (and b!4686654 res!1976183) b!4686653))

(assert (= (and b!4686653 res!1976184) b!4686648))

(declare-fun m!5585967 () Bool)

(assert (=> b!4686648 m!5585967))

(assert (=> b!4686648 m!5585967))

(declare-fun m!5585969 () Bool)

(assert (=> b!4686648 m!5585969))

(assert (=> b!4686653 m!5585967))

(declare-fun m!5585971 () Bool)

(assert (=> b!4686654 m!5585971))

(declare-fun m!5585973 () Bool)

(assert (=> d!1489328 m!5585973))

(declare-fun m!5585975 () Bool)

(assert (=> d!1489328 m!5585975))

(declare-fun m!5585977 () Bool)

(assert (=> b!4686649 m!5585977))

(declare-fun m!5585979 () Bool)

(assert (=> b!4686655 m!5585979))

(assert (=> b!4686395 d!1489328))

(declare-fun d!1489330 () Bool)

(assert (=> d!1489330 (contains!15531 (toList!5561 lm!2023) (tuple2!53741 lt!1845489 lt!1845499))))

(declare-fun lt!1845812 () Unit!123313)

(declare-fun choose!32499 (ListLongMap!4091 (_ BitVec 64) List!52485) Unit!123313)

(assert (=> d!1489330 (= lt!1845812 (choose!32499 lm!2023 lt!1845489 lt!1845499))))

(assert (=> d!1489330 (contains!15532 lm!2023 lt!1845489)))

(assert (=> d!1489330 (= (lemmaGetValueImpliesTupleContained!245 lm!2023 lt!1845489 lt!1845499) lt!1845812)))

(declare-fun bs!1084474 () Bool)

(assert (= bs!1084474 d!1489330))

(declare-fun m!5585981 () Bool)

(assert (=> bs!1084474 m!5585981))

(declare-fun m!5585985 () Bool)

(assert (=> bs!1084474 m!5585985))

(assert (=> bs!1084474 m!5585581))

(assert (=> b!4686395 d!1489330))

(declare-fun bs!1084483 () Bool)

(declare-fun d!1489332 () Bool)

(assert (= bs!1084483 (and d!1489332 start!473688)))

(declare-fun lambda!206238 () Int)

(assert (=> bs!1084483 (= lambda!206238 lambda!206123)))

(declare-fun bs!1084484 () Bool)

(assert (= bs!1084484 (and d!1489332 d!1489264)))

(assert (=> bs!1084484 (= lambda!206238 lambda!206213)))

(declare-fun bs!1084485 () Bool)

(assert (= bs!1084485 (and d!1489332 d!1489300)))

(assert (=> bs!1084485 (= lambda!206238 lambda!206221)))

(declare-fun bs!1084486 () Bool)

(assert (= bs!1084486 (and d!1489332 d!1489320)))

(assert (=> bs!1084486 (= lambda!206238 lambda!206224)))

(declare-fun lt!1845857 () (_ BitVec 64))

(declare-fun b!4686734 () Bool)

(declare-fun lt!1845859 () List!52485)

(declare-fun e!2923921 () Bool)

(assert (=> b!4686734 (= e!2923921 (= (getValueByKey!1756 (toList!5561 lm!2023) lt!1845857) (Some!12037 lt!1845859)))))

(declare-fun b!4686733 () Bool)

(declare-fun e!2923920 () Bool)

(assert (=> b!4686733 (= e!2923920 (isDefined!9290 (getPair!440 (apply!12319 lm!2023 (hash!4035 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1845854 () Unit!123313)

(assert (=> b!4686733 (= lt!1845854 (forallContained!3398 (toList!5561 lm!2023) lambda!206238 (tuple2!53741 (hash!4035 hashF!1323 key!4653) (apply!12319 lm!2023 (hash!4035 hashF!1323 key!4653)))))))

(declare-fun lt!1845855 () Unit!123313)

(declare-fun lt!1845856 () Unit!123313)

(assert (=> b!4686733 (= lt!1845855 lt!1845856)))

(assert (=> b!4686733 (contains!15531 (toList!5561 lm!2023) (tuple2!53741 lt!1845857 lt!1845859))))

(assert (=> b!4686733 (= lt!1845856 (lemmaGetValueImpliesTupleContained!245 lm!2023 lt!1845857 lt!1845859))))

(assert (=> b!4686733 e!2923921))

(declare-fun res!1976227 () Bool)

(assert (=> b!4686733 (=> (not res!1976227) (not e!2923921))))

(assert (=> b!4686733 (= res!1976227 (contains!15532 lm!2023 lt!1845857))))

(assert (=> b!4686733 (= lt!1845859 (apply!12319 lm!2023 (hash!4035 hashF!1323 key!4653)))))

(assert (=> b!4686733 (= lt!1845857 (hash!4035 hashF!1323 key!4653))))

(declare-fun lt!1845858 () Unit!123313)

(declare-fun lt!1845861 () Unit!123313)

(assert (=> b!4686733 (= lt!1845858 lt!1845861)))

(assert (=> b!4686733 (contains!15532 lm!2023 (hash!4035 hashF!1323 key!4653))))

(assert (=> b!4686733 (= lt!1845861 (lemmaInGenMapThenLongMapContainsHash!646 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4686731 () Bool)

(declare-fun res!1976226 () Bool)

(assert (=> b!4686731 (=> (not res!1976226) (not e!2923920))))

(assert (=> b!4686731 (= res!1976226 (allKeysSameHashInMap!1750 lm!2023 hashF!1323))))

(assert (=> d!1489332 e!2923920))

(declare-fun res!1976229 () Bool)

(assert (=> d!1489332 (=> (not res!1976229) (not e!2923920))))

(assert (=> d!1489332 (= res!1976229 (forall!11291 (toList!5561 lm!2023) lambda!206238))))

(declare-fun lt!1845860 () Unit!123313)

(declare-fun choose!32500 (ListLongMap!4091 K!13740 Hashable!6205) Unit!123313)

(assert (=> d!1489332 (= lt!1845860 (choose!32500 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489332 (forall!11291 (toList!5561 lm!2023) lambda!206238)))

(assert (=> d!1489332 (= (lemmaInGenMapThenGetPairDefined!236 lm!2023 key!4653 hashF!1323) lt!1845860)))

(declare-fun b!4686732 () Bool)

(declare-fun res!1976228 () Bool)

(assert (=> b!4686732 (=> (not res!1976228) (not e!2923920))))

(assert (=> b!4686732 (= res!1976228 (contains!15530 (extractMap!1862 (toList!5561 lm!2023)) key!4653))))

(assert (= (and d!1489332 res!1976229) b!4686731))

(assert (= (and b!4686731 res!1976226) b!4686732))

(assert (= (and b!4686732 res!1976228) b!4686733))

(assert (= (and b!4686733 res!1976227) b!4686734))

(assert (=> b!4686731 m!5585543))

(assert (=> b!4686733 m!5585575))

(declare-fun m!5586055 () Bool)

(assert (=> b!4686733 m!5586055))

(declare-fun m!5586057 () Bool)

(assert (=> b!4686733 m!5586057))

(declare-fun m!5586059 () Bool)

(assert (=> b!4686733 m!5586059))

(declare-fun m!5586061 () Bool)

(assert (=> b!4686733 m!5586061))

(assert (=> b!4686733 m!5586057))

(assert (=> b!4686733 m!5585541))

(assert (=> b!4686733 m!5585955))

(declare-fun m!5586063 () Bool)

(assert (=> b!4686733 m!5586063))

(assert (=> b!4686733 m!5585541))

(assert (=> b!4686733 m!5586061))

(assert (=> b!4686733 m!5585541))

(declare-fun m!5586065 () Bool)

(assert (=> b!4686733 m!5586065))

(declare-fun m!5586067 () Bool)

(assert (=> b!4686733 m!5586067))

(declare-fun m!5586069 () Bool)

(assert (=> b!4686734 m!5586069))

(declare-fun m!5586071 () Bool)

(assert (=> d!1489332 m!5586071))

(declare-fun m!5586073 () Bool)

(assert (=> d!1489332 m!5586073))

(assert (=> d!1489332 m!5586071))

(assert (=> b!4686732 m!5585609))

(assert (=> b!4686732 m!5585609))

(declare-fun m!5586075 () Bool)

(assert (=> b!4686732 m!5586075))

(assert (=> b!4686395 d!1489332))

(declare-fun d!1489366 () Bool)

(declare-fun e!2923927 () Bool)

(assert (=> d!1489366 e!2923927))

(declare-fun res!1976232 () Bool)

(assert (=> d!1489366 (=> res!1976232 e!2923927)))

(declare-fun lt!1845873 () Bool)

(assert (=> d!1489366 (= res!1976232 (not lt!1845873))))

(declare-fun lt!1845870 () Bool)

(assert (=> d!1489366 (= lt!1845873 lt!1845870)))

(declare-fun lt!1845871 () Unit!123313)

(declare-fun e!2923926 () Unit!123313)

(assert (=> d!1489366 (= lt!1845871 e!2923926)))

(declare-fun c!801421 () Bool)

(assert (=> d!1489366 (= c!801421 lt!1845870)))

(declare-fun containsKey!3014 (List!52486 (_ BitVec 64)) Bool)

(assert (=> d!1489366 (= lt!1845870 (containsKey!3014 (toList!5561 lm!2023) lt!1845489))))

(assert (=> d!1489366 (= (contains!15532 lm!2023 lt!1845489) lt!1845873)))

(declare-fun b!4686741 () Bool)

(declare-fun lt!1845872 () Unit!123313)

(assert (=> b!4686741 (= e!2923926 lt!1845872)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1648 (List!52486 (_ BitVec 64)) Unit!123313)

(assert (=> b!4686741 (= lt!1845872 (lemmaContainsKeyImpliesGetValueByKeyDefined!1648 (toList!5561 lm!2023) lt!1845489))))

(declare-fun isDefined!9293 (Option!12038) Bool)

(assert (=> b!4686741 (isDefined!9293 (getValueByKey!1756 (toList!5561 lm!2023) lt!1845489))))

(declare-fun b!4686742 () Bool)

(declare-fun Unit!123365 () Unit!123313)

(assert (=> b!4686742 (= e!2923926 Unit!123365)))

(declare-fun b!4686743 () Bool)

(assert (=> b!4686743 (= e!2923927 (isDefined!9293 (getValueByKey!1756 (toList!5561 lm!2023) lt!1845489)))))

(assert (= (and d!1489366 c!801421) b!4686741))

(assert (= (and d!1489366 (not c!801421)) b!4686742))

(assert (= (and d!1489366 (not res!1976232)) b!4686743))

(declare-fun m!5586077 () Bool)

(assert (=> d!1489366 m!5586077))

(declare-fun m!5586079 () Bool)

(assert (=> b!4686741 m!5586079))

(assert (=> b!4686741 m!5585963))

(assert (=> b!4686741 m!5585963))

(declare-fun m!5586081 () Bool)

(assert (=> b!4686741 m!5586081))

(assert (=> b!4686743 m!5585963))

(assert (=> b!4686743 m!5585963))

(assert (=> b!4686743 m!5586081))

(assert (=> b!4686395 d!1489366))

(declare-fun d!1489368 () Bool)

(assert (=> d!1489368 (= (isDefined!9290 (getPair!440 lt!1845499 key!4653)) (not (isEmpty!29081 (getPair!440 lt!1845499 key!4653))))))

(declare-fun bs!1084487 () Bool)

(assert (= bs!1084487 d!1489368))

(assert (=> bs!1084487 m!5585585))

(declare-fun m!5586083 () Bool)

(assert (=> bs!1084487 m!5586083))

(assert (=> b!4686395 d!1489368))

(declare-fun d!1489370 () Bool)

(declare-fun res!1976233 () Bool)

(declare-fun e!2923928 () Bool)

(assert (=> d!1489370 (=> res!1976233 e!2923928)))

(assert (=> d!1489370 (= res!1976233 (and ((_ is Cons!52361) (t!359649 oldBucket!34)) (= (_1!30163 (h!58594 (t!359649 oldBucket!34))) key!4653)))))

(assert (=> d!1489370 (= (containsKey!3011 (t!359649 oldBucket!34) key!4653) e!2923928)))

(declare-fun b!4686744 () Bool)

(declare-fun e!2923929 () Bool)

(assert (=> b!4686744 (= e!2923928 e!2923929)))

(declare-fun res!1976234 () Bool)

(assert (=> b!4686744 (=> (not res!1976234) (not e!2923929))))

(assert (=> b!4686744 (= res!1976234 ((_ is Cons!52361) (t!359649 oldBucket!34)))))

(declare-fun b!4686745 () Bool)

(assert (=> b!4686745 (= e!2923929 (containsKey!3011 (t!359649 (t!359649 oldBucket!34)) key!4653))))

(assert (= (and d!1489370 (not res!1976233)) b!4686744))

(assert (= (and b!4686744 res!1976234) b!4686745))

(declare-fun m!5586085 () Bool)

(assert (=> b!4686745 m!5586085))

(assert (=> b!4686395 d!1489370))

(declare-fun d!1489372 () Bool)

(assert (=> d!1489372 (= (head!9936 (toList!5561 lm!2023)) (h!58595 (toList!5561 lm!2023)))))

(assert (=> b!4686393 d!1489372))

(declare-fun bs!1084488 () Bool)

(declare-fun d!1489374 () Bool)

(assert (= bs!1084488 (and d!1489374 d!1489332)))

(declare-fun lambda!206241 () Int)

(assert (=> bs!1084488 (not (= lambda!206241 lambda!206238))))

(declare-fun bs!1084489 () Bool)

(assert (= bs!1084489 (and d!1489374 d!1489300)))

(assert (=> bs!1084489 (not (= lambda!206241 lambda!206221))))

(declare-fun bs!1084490 () Bool)

(assert (= bs!1084490 (and d!1489374 start!473688)))

(assert (=> bs!1084490 (not (= lambda!206241 lambda!206123))))

(declare-fun bs!1084491 () Bool)

(assert (= bs!1084491 (and d!1489374 d!1489320)))

(assert (=> bs!1084491 (not (= lambda!206241 lambda!206224))))

(declare-fun bs!1084492 () Bool)

(assert (= bs!1084492 (and d!1489374 d!1489264)))

(assert (=> bs!1084492 (not (= lambda!206241 lambda!206213))))

(assert (=> d!1489374 true))

(assert (=> d!1489374 (= (allKeysSameHashInMap!1750 lm!2023 hashF!1323) (forall!11291 (toList!5561 lm!2023) lambda!206241))))

(declare-fun bs!1084493 () Bool)

(assert (= bs!1084493 d!1489374))

(declare-fun m!5586087 () Bool)

(assert (=> bs!1084493 m!5586087))

(assert (=> b!4686382 d!1489374))

(declare-fun d!1489376 () Bool)

(declare-fun e!2923932 () Bool)

(assert (=> d!1489376 e!2923932))

(declare-fun res!1976240 () Bool)

(assert (=> d!1489376 (=> (not res!1976240) (not e!2923932))))

(declare-fun lt!1845882 () ListMap!4925)

(assert (=> d!1489376 (= res!1976240 (contains!15530 lt!1845882 (_1!30163 lt!1845490)))))

(declare-fun lt!1845885 () List!52485)

(assert (=> d!1489376 (= lt!1845882 (ListMap!4926 lt!1845885))))

(declare-fun lt!1845883 () Unit!123313)

(declare-fun lt!1845884 () Unit!123313)

(assert (=> d!1489376 (= lt!1845883 lt!1845884)))

(assert (=> d!1489376 (= (getValueByKey!1755 lt!1845885 (_1!30163 lt!1845490)) (Some!12036 (_2!30163 lt!1845490)))))

(declare-fun lemmaContainsTupThenGetReturnValue!988 (List!52485 K!13740 V!13986) Unit!123313)

(assert (=> d!1489376 (= lt!1845884 (lemmaContainsTupThenGetReturnValue!988 lt!1845885 (_1!30163 lt!1845490) (_2!30163 lt!1845490)))))

(declare-fun insertNoDuplicatedKeys!496 (List!52485 K!13740 V!13986) List!52485)

(assert (=> d!1489376 (= lt!1845885 (insertNoDuplicatedKeys!496 (toList!5562 (addToMapMapFromBucket!1268 lt!1845498 lt!1845501)) (_1!30163 lt!1845490) (_2!30163 lt!1845490)))))

(assert (=> d!1489376 (= (+!2120 (addToMapMapFromBucket!1268 lt!1845498 lt!1845501) lt!1845490) lt!1845882)))

(declare-fun b!4686752 () Bool)

(declare-fun res!1976239 () Bool)

(assert (=> b!4686752 (=> (not res!1976239) (not e!2923932))))

(assert (=> b!4686752 (= res!1976239 (= (getValueByKey!1755 (toList!5562 lt!1845882) (_1!30163 lt!1845490)) (Some!12036 (_2!30163 lt!1845490))))))

(declare-fun b!4686753 () Bool)

(assert (=> b!4686753 (= e!2923932 (contains!15536 (toList!5562 lt!1845882) lt!1845490))))

(assert (= (and d!1489376 res!1976240) b!4686752))

(assert (= (and b!4686752 res!1976239) b!4686753))

(declare-fun m!5586089 () Bool)

(assert (=> d!1489376 m!5586089))

(declare-fun m!5586091 () Bool)

(assert (=> d!1489376 m!5586091))

(declare-fun m!5586093 () Bool)

(assert (=> d!1489376 m!5586093))

(declare-fun m!5586095 () Bool)

(assert (=> d!1489376 m!5586095))

(declare-fun m!5586097 () Bool)

(assert (=> b!4686752 m!5586097))

(declare-fun m!5586099 () Bool)

(assert (=> b!4686753 m!5586099))

(assert (=> b!4686392 d!1489376))

(declare-fun bs!1084494 () Bool)

(declare-fun d!1489378 () Bool)

(assert (= bs!1084494 (and d!1489378 d!1489332)))

(declare-fun lambda!206244 () Int)

(assert (=> bs!1084494 (= lambda!206244 lambda!206238)))

(declare-fun bs!1084495 () Bool)

(assert (= bs!1084495 (and d!1489378 d!1489300)))

(assert (=> bs!1084495 (= lambda!206244 lambda!206221)))

(declare-fun bs!1084496 () Bool)

(assert (= bs!1084496 (and d!1489378 d!1489320)))

(assert (=> bs!1084496 (= lambda!206244 lambda!206224)))

(declare-fun bs!1084497 () Bool)

(assert (= bs!1084497 (and d!1489378 d!1489264)))

(assert (=> bs!1084497 (= lambda!206244 lambda!206213)))

(declare-fun bs!1084498 () Bool)

(assert (= bs!1084498 (and d!1489378 start!473688)))

(assert (=> bs!1084498 (= lambda!206244 lambda!206123)))

(declare-fun bs!1084499 () Bool)

(assert (= bs!1084499 (and d!1489378 d!1489374)))

(assert (=> bs!1084499 (not (= lambda!206244 lambda!206241))))

(assert (=> d!1489378 (contains!15530 (extractMap!1862 (toList!5561 (ListLongMap!4092 lt!1845495))) key!4653)))

(declare-fun lt!1845888 () Unit!123313)

(declare-fun choose!32503 (ListLongMap!4091 K!13740 Hashable!6205) Unit!123313)

(assert (=> d!1489378 (= lt!1845888 (choose!32503 (ListLongMap!4092 lt!1845495) key!4653 hashF!1323))))

(assert (=> d!1489378 (forall!11291 (toList!5561 (ListLongMap!4092 lt!1845495)) lambda!206244)))

(assert (=> d!1489378 (= (lemmaListContainsThenExtractedMapContains!428 (ListLongMap!4092 lt!1845495) key!4653 hashF!1323) lt!1845888)))

(declare-fun bs!1084500 () Bool)

(assert (= bs!1084500 d!1489378))

(declare-fun m!5586101 () Bool)

(assert (=> bs!1084500 m!5586101))

(assert (=> bs!1084500 m!5586101))

(declare-fun m!5586103 () Bool)

(assert (=> bs!1084500 m!5586103))

(declare-fun m!5586105 () Bool)

(assert (=> bs!1084500 m!5586105))

(declare-fun m!5586107 () Bool)

(assert (=> bs!1084500 m!5586107))

(assert (=> b!4686392 d!1489378))

(declare-fun d!1489380 () Bool)

(assert (=> d!1489380 (= (head!9935 oldBucket!34) (h!58594 oldBucket!34))))

(assert (=> b!4686392 d!1489380))

(declare-fun bs!1084501 () Bool)

(declare-fun b!4686755 () Bool)

(assert (= bs!1084501 (and b!4686755 b!4686497)))

(declare-fun lambda!206245 () Int)

(assert (=> bs!1084501 (= (= lt!1845501 lt!1845673) (= lambda!206245 lambda!206201))))

(declare-fun bs!1084502 () Bool)

(assert (= bs!1084502 (and b!4686755 d!1489234)))

(assert (=> bs!1084502 (= (= lt!1845501 lt!1845671) (= lambda!206245 lambda!206204))))

(declare-fun bs!1084503 () Bool)

(assert (= bs!1084503 (and b!4686755 d!1489228)))

(assert (=> bs!1084503 (not (= lambda!206245 lambda!206126))))

(assert (=> bs!1084501 (= lambda!206245 lambda!206200)))

(declare-fun bs!1084504 () Bool)

(assert (= bs!1084504 (and b!4686755 d!1489232)))

(assert (=> bs!1084504 (not (= lambda!206245 lambda!206127))))

(declare-fun bs!1084505 () Bool)

(assert (= bs!1084505 (and b!4686755 b!4686494)))

(assert (=> bs!1084505 (= lambda!206245 lambda!206199)))

(assert (=> b!4686755 true))

(declare-fun bs!1084506 () Bool)

(declare-fun b!4686758 () Bool)

(assert (= bs!1084506 (and b!4686758 b!4686497)))

(declare-fun lambda!206246 () Int)

(assert (=> bs!1084506 (= (= lt!1845501 lt!1845673) (= lambda!206246 lambda!206201))))

(declare-fun bs!1084507 () Bool)

(assert (= bs!1084507 (and b!4686758 b!4686755)))

(assert (=> bs!1084507 (= lambda!206246 lambda!206245)))

(declare-fun bs!1084508 () Bool)

(assert (= bs!1084508 (and b!4686758 d!1489234)))

(assert (=> bs!1084508 (= (= lt!1845501 lt!1845671) (= lambda!206246 lambda!206204))))

(declare-fun bs!1084509 () Bool)

(assert (= bs!1084509 (and b!4686758 d!1489228)))

(assert (=> bs!1084509 (not (= lambda!206246 lambda!206126))))

(assert (=> bs!1084506 (= lambda!206246 lambda!206200)))

(declare-fun bs!1084510 () Bool)

(assert (= bs!1084510 (and b!4686758 d!1489232)))

(assert (=> bs!1084510 (not (= lambda!206246 lambda!206127))))

(declare-fun bs!1084511 () Bool)

(assert (= bs!1084511 (and b!4686758 b!4686494)))

(assert (=> bs!1084511 (= lambda!206246 lambda!206199)))

(assert (=> b!4686758 true))

(declare-fun lambda!206247 () Int)

(declare-fun lt!1845900 () ListMap!4925)

(assert (=> bs!1084506 (= (= lt!1845900 lt!1845673) (= lambda!206247 lambda!206201))))

(assert (=> bs!1084508 (= (= lt!1845900 lt!1845671) (= lambda!206247 lambda!206204))))

(assert (=> bs!1084509 (not (= lambda!206247 lambda!206126))))

(assert (=> bs!1084506 (= (= lt!1845900 lt!1845501) (= lambda!206247 lambda!206200))))

(assert (=> bs!1084510 (not (= lambda!206247 lambda!206127))))

(assert (=> bs!1084511 (= (= lt!1845900 lt!1845501) (= lambda!206247 lambda!206199))))

(assert (=> b!4686758 (= (= lt!1845900 lt!1845501) (= lambda!206247 lambda!206246))))

(assert (=> bs!1084507 (= (= lt!1845900 lt!1845501) (= lambda!206247 lambda!206245))))

(assert (=> b!4686758 true))

(declare-fun bs!1084512 () Bool)

(declare-fun d!1489382 () Bool)

(assert (= bs!1084512 (and d!1489382 b!4686497)))

(declare-fun lt!1845898 () ListMap!4925)

(declare-fun lambda!206248 () Int)

(assert (=> bs!1084512 (= (= lt!1845898 lt!1845673) (= lambda!206248 lambda!206201))))

(declare-fun bs!1084513 () Bool)

(assert (= bs!1084513 (and d!1489382 d!1489234)))

(assert (=> bs!1084513 (= (= lt!1845898 lt!1845671) (= lambda!206248 lambda!206204))))

(declare-fun bs!1084514 () Bool)

(assert (= bs!1084514 (and d!1489382 d!1489228)))

(assert (=> bs!1084514 (not (= lambda!206248 lambda!206126))))

(assert (=> bs!1084512 (= (= lt!1845898 lt!1845501) (= lambda!206248 lambda!206200))))

(declare-fun bs!1084515 () Bool)

(assert (= bs!1084515 (and d!1489382 d!1489232)))

(assert (=> bs!1084515 (not (= lambda!206248 lambda!206127))))

(declare-fun bs!1084516 () Bool)

(assert (= bs!1084516 (and d!1489382 b!4686494)))

(assert (=> bs!1084516 (= (= lt!1845898 lt!1845501) (= lambda!206248 lambda!206199))))

(declare-fun bs!1084517 () Bool)

(assert (= bs!1084517 (and d!1489382 b!4686758)))

(assert (=> bs!1084517 (= (= lt!1845898 lt!1845900) (= lambda!206248 lambda!206247))))

(assert (=> bs!1084517 (= (= lt!1845898 lt!1845501) (= lambda!206248 lambda!206246))))

(declare-fun bs!1084518 () Bool)

(assert (= bs!1084518 (and d!1489382 b!4686755)))

(assert (=> bs!1084518 (= (= lt!1845898 lt!1845501) (= lambda!206248 lambda!206245))))

(assert (=> d!1489382 true))

(declare-fun b!4686754 () Bool)

(declare-fun e!2923934 () Bool)

(assert (=> b!4686754 (= e!2923934 (invariantList!1398 (toList!5562 lt!1845898)))))

(declare-fun call!327502 () Bool)

(declare-fun bm!327496 () Bool)

(declare-fun c!801422 () Bool)

(assert (=> bm!327496 (= call!327502 (forall!11293 (toList!5562 lt!1845501) (ite c!801422 lambda!206245 lambda!206247)))))

(declare-fun call!327503 () Bool)

(declare-fun bm!327497 () Bool)

(assert (=> bm!327497 (= call!327503 (forall!11293 (toList!5562 lt!1845501) (ite c!801422 lambda!206245 lambda!206246)))))

(declare-fun e!2923935 () ListMap!4925)

(assert (=> b!4686755 (= e!2923935 lt!1845501)))

(declare-fun lt!1845895 () Unit!123313)

(declare-fun call!327501 () Unit!123313)

(assert (=> b!4686755 (= lt!1845895 call!327501)))

(assert (=> b!4686755 call!327503))

(declare-fun lt!1845907 () Unit!123313)

(assert (=> b!4686755 (= lt!1845907 lt!1845895)))

(assert (=> b!4686755 call!327502))

(declare-fun lt!1845893 () Unit!123313)

(declare-fun Unit!123367 () Unit!123313)

(assert (=> b!4686755 (= lt!1845893 Unit!123367)))

(declare-fun b!4686756 () Bool)

(declare-fun res!1976243 () Bool)

(assert (=> b!4686756 (=> (not res!1976243) (not e!2923934))))

(assert (=> b!4686756 (= res!1976243 (forall!11293 (toList!5562 lt!1845501) lambda!206248))))

(declare-fun b!4686757 () Bool)

(declare-fun e!2923933 () Bool)

(assert (=> b!4686757 (= e!2923933 (forall!11293 (toList!5562 lt!1845501) lambda!206247))))

(declare-fun bm!327498 () Bool)

(assert (=> bm!327498 (= call!327501 (lemmaContainsAllItsOwnKeys!686 lt!1845501))))

(assert (=> d!1489382 e!2923934))

(declare-fun res!1976242 () Bool)

(assert (=> d!1489382 (=> (not res!1976242) (not e!2923934))))

(assert (=> d!1489382 (= res!1976242 (forall!11293 (Cons!52361 lt!1845490 lt!1845498) lambda!206248))))

(assert (=> d!1489382 (= lt!1845898 e!2923935)))

(assert (=> d!1489382 (= c!801422 ((_ is Nil!52361) (Cons!52361 lt!1845490 lt!1845498)))))

(assert (=> d!1489382 (noDuplicateKeys!1836 (Cons!52361 lt!1845490 lt!1845498))))

(assert (=> d!1489382 (= (addToMapMapFromBucket!1268 (Cons!52361 lt!1845490 lt!1845498) lt!1845501) lt!1845898)))

(assert (=> b!4686758 (= e!2923935 lt!1845900)))

(declare-fun lt!1845890 () ListMap!4925)

(assert (=> b!4686758 (= lt!1845890 (+!2120 lt!1845501 (h!58594 (Cons!52361 lt!1845490 lt!1845498))))))

(assert (=> b!4686758 (= lt!1845900 (addToMapMapFromBucket!1268 (t!359649 (Cons!52361 lt!1845490 lt!1845498)) (+!2120 lt!1845501 (h!58594 (Cons!52361 lt!1845490 lt!1845498)))))))

(declare-fun lt!1845901 () Unit!123313)

(assert (=> b!4686758 (= lt!1845901 call!327501)))

(assert (=> b!4686758 call!327503))

(declare-fun lt!1845894 () Unit!123313)

(assert (=> b!4686758 (= lt!1845894 lt!1845901)))

(assert (=> b!4686758 (forall!11293 (toList!5562 lt!1845890) lambda!206247)))

(declare-fun lt!1845908 () Unit!123313)

(declare-fun Unit!123368 () Unit!123313)

(assert (=> b!4686758 (= lt!1845908 Unit!123368)))

(assert (=> b!4686758 (forall!11293 (t!359649 (Cons!52361 lt!1845490 lt!1845498)) lambda!206247)))

(declare-fun lt!1845902 () Unit!123313)

(declare-fun Unit!123369 () Unit!123313)

(assert (=> b!4686758 (= lt!1845902 Unit!123369)))

(declare-fun lt!1845897 () Unit!123313)

(declare-fun Unit!123370 () Unit!123313)

(assert (=> b!4686758 (= lt!1845897 Unit!123370)))

(declare-fun lt!1845905 () Unit!123313)

(assert (=> b!4686758 (= lt!1845905 (forallContained!3400 (toList!5562 lt!1845890) lambda!206247 (h!58594 (Cons!52361 lt!1845490 lt!1845498))))))

(assert (=> b!4686758 (contains!15530 lt!1845890 (_1!30163 (h!58594 (Cons!52361 lt!1845490 lt!1845498))))))

(declare-fun lt!1845889 () Unit!123313)

(declare-fun Unit!123371 () Unit!123313)

(assert (=> b!4686758 (= lt!1845889 Unit!123371)))

(assert (=> b!4686758 (contains!15530 lt!1845900 (_1!30163 (h!58594 (Cons!52361 lt!1845490 lt!1845498))))))

(declare-fun lt!1845896 () Unit!123313)

(declare-fun Unit!123372 () Unit!123313)

(assert (=> b!4686758 (= lt!1845896 Unit!123372)))

(assert (=> b!4686758 (forall!11293 (Cons!52361 lt!1845490 lt!1845498) lambda!206247)))

(declare-fun lt!1845903 () Unit!123313)

(declare-fun Unit!123373 () Unit!123313)

(assert (=> b!4686758 (= lt!1845903 Unit!123373)))

(assert (=> b!4686758 (forall!11293 (toList!5562 lt!1845890) lambda!206247)))

(declare-fun lt!1845891 () Unit!123313)

(declare-fun Unit!123374 () Unit!123313)

(assert (=> b!4686758 (= lt!1845891 Unit!123374)))

(declare-fun lt!1845899 () Unit!123313)

(declare-fun Unit!123375 () Unit!123313)

(assert (=> b!4686758 (= lt!1845899 Unit!123375)))

(declare-fun lt!1845906 () Unit!123313)

(assert (=> b!4686758 (= lt!1845906 (addForallContainsKeyThenBeforeAdding!685 lt!1845501 lt!1845900 (_1!30163 (h!58594 (Cons!52361 lt!1845490 lt!1845498))) (_2!30163 (h!58594 (Cons!52361 lt!1845490 lt!1845498)))))))

(assert (=> b!4686758 call!327502))

(declare-fun lt!1845904 () Unit!123313)

(assert (=> b!4686758 (= lt!1845904 lt!1845906)))

(assert (=> b!4686758 (forall!11293 (toList!5562 lt!1845501) lambda!206247)))

(declare-fun lt!1845892 () Unit!123313)

(declare-fun Unit!123376 () Unit!123313)

(assert (=> b!4686758 (= lt!1845892 Unit!123376)))

(declare-fun res!1976241 () Bool)

(assert (=> b!4686758 (= res!1976241 (forall!11293 (Cons!52361 lt!1845490 lt!1845498) lambda!206247))))

(assert (=> b!4686758 (=> (not res!1976241) (not e!2923933))))

(assert (=> b!4686758 e!2923933))

(declare-fun lt!1845909 () Unit!123313)

(declare-fun Unit!123377 () Unit!123313)

(assert (=> b!4686758 (= lt!1845909 Unit!123377)))

(assert (= (and d!1489382 c!801422) b!4686755))

(assert (= (and d!1489382 (not c!801422)) b!4686758))

(assert (= (and b!4686758 res!1976241) b!4686757))

(assert (= (or b!4686755 b!4686758) bm!327498))

(assert (= (or b!4686755 b!4686758) bm!327496))

(assert (= (or b!4686755 b!4686758) bm!327497))

(assert (= (and d!1489382 res!1976242) b!4686756))

(assert (= (and b!4686756 res!1976243) b!4686754))

(declare-fun m!5586109 () Bool)

(assert (=> bm!327497 m!5586109))

(declare-fun m!5586111 () Bool)

(assert (=> bm!327496 m!5586111))

(assert (=> bm!327498 m!5585757))

(declare-fun m!5586113 () Bool)

(assert (=> b!4686757 m!5586113))

(declare-fun m!5586115 () Bool)

(assert (=> b!4686758 m!5586115))

(declare-fun m!5586117 () Bool)

(assert (=> b!4686758 m!5586117))

(declare-fun m!5586119 () Bool)

(assert (=> b!4686758 m!5586119))

(declare-fun m!5586121 () Bool)

(assert (=> b!4686758 m!5586121))

(declare-fun m!5586123 () Bool)

(assert (=> b!4686758 m!5586123))

(assert (=> b!4686758 m!5586113))

(declare-fun m!5586125 () Bool)

(assert (=> b!4686758 m!5586125))

(assert (=> b!4686758 m!5586125))

(assert (=> b!4686758 m!5586115))

(declare-fun m!5586127 () Bool)

(assert (=> b!4686758 m!5586127))

(declare-fun m!5586129 () Bool)

(assert (=> b!4686758 m!5586129))

(declare-fun m!5586131 () Bool)

(assert (=> b!4686758 m!5586131))

(assert (=> b!4686758 m!5586129))

(declare-fun m!5586133 () Bool)

(assert (=> d!1489382 m!5586133))

(declare-fun m!5586135 () Bool)

(assert (=> d!1489382 m!5586135))

(declare-fun m!5586137 () Bool)

(assert (=> b!4686756 m!5586137))

(declare-fun m!5586139 () Bool)

(assert (=> b!4686754 m!5586139))

(assert (=> b!4686392 d!1489382))

(declare-fun bs!1084519 () Bool)

(declare-fun b!4686760 () Bool)

(assert (= bs!1084519 (and b!4686760 b!4686497)))

(declare-fun lambda!206249 () Int)

(assert (=> bs!1084519 (= (= lt!1845501 lt!1845673) (= lambda!206249 lambda!206201))))

(declare-fun bs!1084520 () Bool)

(assert (= bs!1084520 (and b!4686760 d!1489382)))

(assert (=> bs!1084520 (= (= lt!1845501 lt!1845898) (= lambda!206249 lambda!206248))))

(declare-fun bs!1084521 () Bool)

(assert (= bs!1084521 (and b!4686760 d!1489234)))

(assert (=> bs!1084521 (= (= lt!1845501 lt!1845671) (= lambda!206249 lambda!206204))))

(declare-fun bs!1084522 () Bool)

(assert (= bs!1084522 (and b!4686760 d!1489228)))

(assert (=> bs!1084522 (not (= lambda!206249 lambda!206126))))

(assert (=> bs!1084519 (= lambda!206249 lambda!206200)))

(declare-fun bs!1084523 () Bool)

(assert (= bs!1084523 (and b!4686760 d!1489232)))

(assert (=> bs!1084523 (not (= lambda!206249 lambda!206127))))

(declare-fun bs!1084524 () Bool)

(assert (= bs!1084524 (and b!4686760 b!4686494)))

(assert (=> bs!1084524 (= lambda!206249 lambda!206199)))

(declare-fun bs!1084525 () Bool)

(assert (= bs!1084525 (and b!4686760 b!4686758)))

(assert (=> bs!1084525 (= (= lt!1845501 lt!1845900) (= lambda!206249 lambda!206247))))

(assert (=> bs!1084525 (= lambda!206249 lambda!206246)))

(declare-fun bs!1084526 () Bool)

(assert (= bs!1084526 (and b!4686760 b!4686755)))

(assert (=> bs!1084526 (= lambda!206249 lambda!206245)))

(assert (=> b!4686760 true))

(declare-fun bs!1084527 () Bool)

(declare-fun b!4686763 () Bool)

(assert (= bs!1084527 (and b!4686763 b!4686497)))

(declare-fun lambda!206250 () Int)

(assert (=> bs!1084527 (= (= lt!1845501 lt!1845673) (= lambda!206250 lambda!206201))))

(declare-fun bs!1084528 () Bool)

(assert (= bs!1084528 (and b!4686763 d!1489382)))

(assert (=> bs!1084528 (= (= lt!1845501 lt!1845898) (= lambda!206250 lambda!206248))))

(declare-fun bs!1084529 () Bool)

(assert (= bs!1084529 (and b!4686763 d!1489234)))

(assert (=> bs!1084529 (= (= lt!1845501 lt!1845671) (= lambda!206250 lambda!206204))))

(declare-fun bs!1084530 () Bool)

(assert (= bs!1084530 (and b!4686763 d!1489228)))

(assert (=> bs!1084530 (not (= lambda!206250 lambda!206126))))

(declare-fun bs!1084531 () Bool)

(assert (= bs!1084531 (and b!4686763 d!1489232)))

(assert (=> bs!1084531 (not (= lambda!206250 lambda!206127))))

(declare-fun bs!1084532 () Bool)

(assert (= bs!1084532 (and b!4686763 b!4686494)))

(assert (=> bs!1084532 (= lambda!206250 lambda!206199)))

(declare-fun bs!1084533 () Bool)

(assert (= bs!1084533 (and b!4686763 b!4686758)))

(assert (=> bs!1084533 (= (= lt!1845501 lt!1845900) (= lambda!206250 lambda!206247))))

(assert (=> bs!1084533 (= lambda!206250 lambda!206246)))

(declare-fun bs!1084534 () Bool)

(assert (= bs!1084534 (and b!4686763 b!4686755)))

(assert (=> bs!1084534 (= lambda!206250 lambda!206245)))

(declare-fun bs!1084535 () Bool)

(assert (= bs!1084535 (and b!4686763 b!4686760)))

(assert (=> bs!1084535 (= lambda!206250 lambda!206249)))

(assert (=> bs!1084527 (= lambda!206250 lambda!206200)))

(assert (=> b!4686763 true))

(declare-fun lambda!206251 () Int)

(declare-fun lt!1845921 () ListMap!4925)

(assert (=> bs!1084527 (= (= lt!1845921 lt!1845673) (= lambda!206251 lambda!206201))))

(assert (=> b!4686763 (= (= lt!1845921 lt!1845501) (= lambda!206251 lambda!206250))))

(assert (=> bs!1084528 (= (= lt!1845921 lt!1845898) (= lambda!206251 lambda!206248))))

(assert (=> bs!1084529 (= (= lt!1845921 lt!1845671) (= lambda!206251 lambda!206204))))

(assert (=> bs!1084530 (not (= lambda!206251 lambda!206126))))

(assert (=> bs!1084531 (not (= lambda!206251 lambda!206127))))

(assert (=> bs!1084532 (= (= lt!1845921 lt!1845501) (= lambda!206251 lambda!206199))))

(assert (=> bs!1084533 (= (= lt!1845921 lt!1845900) (= lambda!206251 lambda!206247))))

(assert (=> bs!1084533 (= (= lt!1845921 lt!1845501) (= lambda!206251 lambda!206246))))

(assert (=> bs!1084534 (= (= lt!1845921 lt!1845501) (= lambda!206251 lambda!206245))))

(assert (=> bs!1084535 (= (= lt!1845921 lt!1845501) (= lambda!206251 lambda!206249))))

(assert (=> bs!1084527 (= (= lt!1845921 lt!1845501) (= lambda!206251 lambda!206200))))

(assert (=> b!4686763 true))

(declare-fun bs!1084536 () Bool)

(declare-fun d!1489384 () Bool)

(assert (= bs!1084536 (and d!1489384 b!4686763)))

(declare-fun lt!1845919 () ListMap!4925)

(declare-fun lambda!206252 () Int)

(assert (=> bs!1084536 (= (= lt!1845919 lt!1845501) (= lambda!206252 lambda!206250))))

(declare-fun bs!1084537 () Bool)

(assert (= bs!1084537 (and d!1489384 d!1489382)))

(assert (=> bs!1084537 (= (= lt!1845919 lt!1845898) (= lambda!206252 lambda!206248))))

(declare-fun bs!1084538 () Bool)

(assert (= bs!1084538 (and d!1489384 d!1489234)))

(assert (=> bs!1084538 (= (= lt!1845919 lt!1845671) (= lambda!206252 lambda!206204))))

(declare-fun bs!1084539 () Bool)

(assert (= bs!1084539 (and d!1489384 d!1489228)))

(assert (=> bs!1084539 (not (= lambda!206252 lambda!206126))))

(declare-fun bs!1084540 () Bool)

(assert (= bs!1084540 (and d!1489384 d!1489232)))

(assert (=> bs!1084540 (not (= lambda!206252 lambda!206127))))

(declare-fun bs!1084541 () Bool)

(assert (= bs!1084541 (and d!1489384 b!4686494)))

(assert (=> bs!1084541 (= (= lt!1845919 lt!1845501) (= lambda!206252 lambda!206199))))

(declare-fun bs!1084542 () Bool)

(assert (= bs!1084542 (and d!1489384 b!4686758)))

(assert (=> bs!1084542 (= (= lt!1845919 lt!1845900) (= lambda!206252 lambda!206247))))

(assert (=> bs!1084536 (= (= lt!1845919 lt!1845921) (= lambda!206252 lambda!206251))))

(declare-fun bs!1084543 () Bool)

(assert (= bs!1084543 (and d!1489384 b!4686497)))

(assert (=> bs!1084543 (= (= lt!1845919 lt!1845673) (= lambda!206252 lambda!206201))))

(assert (=> bs!1084542 (= (= lt!1845919 lt!1845501) (= lambda!206252 lambda!206246))))

(declare-fun bs!1084544 () Bool)

(assert (= bs!1084544 (and d!1489384 b!4686755)))

(assert (=> bs!1084544 (= (= lt!1845919 lt!1845501) (= lambda!206252 lambda!206245))))

(declare-fun bs!1084545 () Bool)

(assert (= bs!1084545 (and d!1489384 b!4686760)))

(assert (=> bs!1084545 (= (= lt!1845919 lt!1845501) (= lambda!206252 lambda!206249))))

(assert (=> bs!1084543 (= (= lt!1845919 lt!1845501) (= lambda!206252 lambda!206200))))

(assert (=> d!1489384 true))

(declare-fun b!4686759 () Bool)

(declare-fun e!2923937 () Bool)

(assert (=> b!4686759 (= e!2923937 (invariantList!1398 (toList!5562 lt!1845919)))))

(declare-fun c!801423 () Bool)

(declare-fun call!327505 () Bool)

(declare-fun bm!327499 () Bool)

(assert (=> bm!327499 (= call!327505 (forall!11293 (toList!5562 lt!1845501) (ite c!801423 lambda!206249 lambda!206251)))))

(declare-fun call!327506 () Bool)

(declare-fun bm!327500 () Bool)

(assert (=> bm!327500 (= call!327506 (forall!11293 (toList!5562 lt!1845501) (ite c!801423 lambda!206249 lambda!206250)))))

(declare-fun e!2923938 () ListMap!4925)

(assert (=> b!4686760 (= e!2923938 lt!1845501)))

(declare-fun lt!1845916 () Unit!123313)

(declare-fun call!327504 () Unit!123313)

(assert (=> b!4686760 (= lt!1845916 call!327504)))

(assert (=> b!4686760 call!327506))

(declare-fun lt!1845928 () Unit!123313)

(assert (=> b!4686760 (= lt!1845928 lt!1845916)))

(assert (=> b!4686760 call!327505))

(declare-fun lt!1845914 () Unit!123313)

(declare-fun Unit!123378 () Unit!123313)

(assert (=> b!4686760 (= lt!1845914 Unit!123378)))

(declare-fun b!4686761 () Bool)

(declare-fun res!1976246 () Bool)

(assert (=> b!4686761 (=> (not res!1976246) (not e!2923937))))

(assert (=> b!4686761 (= res!1976246 (forall!11293 (toList!5562 lt!1845501) lambda!206252))))

(declare-fun b!4686762 () Bool)

(declare-fun e!2923936 () Bool)

(assert (=> b!4686762 (= e!2923936 (forall!11293 (toList!5562 lt!1845501) lambda!206251))))

(declare-fun bm!327501 () Bool)

(assert (=> bm!327501 (= call!327504 (lemmaContainsAllItsOwnKeys!686 lt!1845501))))

(assert (=> d!1489384 e!2923937))

(declare-fun res!1976245 () Bool)

(assert (=> d!1489384 (=> (not res!1976245) (not e!2923937))))

(assert (=> d!1489384 (= res!1976245 (forall!11293 lt!1845498 lambda!206252))))

(assert (=> d!1489384 (= lt!1845919 e!2923938)))

(assert (=> d!1489384 (= c!801423 ((_ is Nil!52361) lt!1845498))))

(assert (=> d!1489384 (noDuplicateKeys!1836 lt!1845498)))

(assert (=> d!1489384 (= (addToMapMapFromBucket!1268 lt!1845498 lt!1845501) lt!1845919)))

(assert (=> b!4686763 (= e!2923938 lt!1845921)))

(declare-fun lt!1845911 () ListMap!4925)

(assert (=> b!4686763 (= lt!1845911 (+!2120 lt!1845501 (h!58594 lt!1845498)))))

(assert (=> b!4686763 (= lt!1845921 (addToMapMapFromBucket!1268 (t!359649 lt!1845498) (+!2120 lt!1845501 (h!58594 lt!1845498))))))

(declare-fun lt!1845922 () Unit!123313)

(assert (=> b!4686763 (= lt!1845922 call!327504)))

(assert (=> b!4686763 call!327506))

(declare-fun lt!1845915 () Unit!123313)

(assert (=> b!4686763 (= lt!1845915 lt!1845922)))

(assert (=> b!4686763 (forall!11293 (toList!5562 lt!1845911) lambda!206251)))

(declare-fun lt!1845929 () Unit!123313)

(declare-fun Unit!123379 () Unit!123313)

(assert (=> b!4686763 (= lt!1845929 Unit!123379)))

(assert (=> b!4686763 (forall!11293 (t!359649 lt!1845498) lambda!206251)))

(declare-fun lt!1845923 () Unit!123313)

(declare-fun Unit!123380 () Unit!123313)

(assert (=> b!4686763 (= lt!1845923 Unit!123380)))

(declare-fun lt!1845918 () Unit!123313)

(declare-fun Unit!123381 () Unit!123313)

(assert (=> b!4686763 (= lt!1845918 Unit!123381)))

(declare-fun lt!1845926 () Unit!123313)

(assert (=> b!4686763 (= lt!1845926 (forallContained!3400 (toList!5562 lt!1845911) lambda!206251 (h!58594 lt!1845498)))))

(assert (=> b!4686763 (contains!15530 lt!1845911 (_1!30163 (h!58594 lt!1845498)))))

(declare-fun lt!1845910 () Unit!123313)

(declare-fun Unit!123382 () Unit!123313)

(assert (=> b!4686763 (= lt!1845910 Unit!123382)))

(assert (=> b!4686763 (contains!15530 lt!1845921 (_1!30163 (h!58594 lt!1845498)))))

(declare-fun lt!1845917 () Unit!123313)

(declare-fun Unit!123383 () Unit!123313)

(assert (=> b!4686763 (= lt!1845917 Unit!123383)))

(assert (=> b!4686763 (forall!11293 lt!1845498 lambda!206251)))

(declare-fun lt!1845924 () Unit!123313)

(declare-fun Unit!123384 () Unit!123313)

(assert (=> b!4686763 (= lt!1845924 Unit!123384)))

(assert (=> b!4686763 (forall!11293 (toList!5562 lt!1845911) lambda!206251)))

(declare-fun lt!1845912 () Unit!123313)

(declare-fun Unit!123385 () Unit!123313)

(assert (=> b!4686763 (= lt!1845912 Unit!123385)))

(declare-fun lt!1845920 () Unit!123313)

(declare-fun Unit!123386 () Unit!123313)

(assert (=> b!4686763 (= lt!1845920 Unit!123386)))

(declare-fun lt!1845927 () Unit!123313)

(assert (=> b!4686763 (= lt!1845927 (addForallContainsKeyThenBeforeAdding!685 lt!1845501 lt!1845921 (_1!30163 (h!58594 lt!1845498)) (_2!30163 (h!58594 lt!1845498))))))

(assert (=> b!4686763 call!327505))

(declare-fun lt!1845925 () Unit!123313)

(assert (=> b!4686763 (= lt!1845925 lt!1845927)))

(assert (=> b!4686763 (forall!11293 (toList!5562 lt!1845501) lambda!206251)))

(declare-fun lt!1845913 () Unit!123313)

(declare-fun Unit!123387 () Unit!123313)

(assert (=> b!4686763 (= lt!1845913 Unit!123387)))

(declare-fun res!1976244 () Bool)

(assert (=> b!4686763 (= res!1976244 (forall!11293 lt!1845498 lambda!206251))))

(assert (=> b!4686763 (=> (not res!1976244) (not e!2923936))))

(assert (=> b!4686763 e!2923936))

(declare-fun lt!1845930 () Unit!123313)

(declare-fun Unit!123388 () Unit!123313)

(assert (=> b!4686763 (= lt!1845930 Unit!123388)))

(assert (= (and d!1489384 c!801423) b!4686760))

(assert (= (and d!1489384 (not c!801423)) b!4686763))

(assert (= (and b!4686763 res!1976244) b!4686762))

(assert (= (or b!4686760 b!4686763) bm!327501))

(assert (= (or b!4686760 b!4686763) bm!327499))

(assert (= (or b!4686760 b!4686763) bm!327500))

(assert (= (and d!1489384 res!1976245) b!4686761))

(assert (= (and b!4686761 res!1976246) b!4686759))

(declare-fun m!5586141 () Bool)

(assert (=> bm!327500 m!5586141))

(declare-fun m!5586143 () Bool)

(assert (=> bm!327499 m!5586143))

(assert (=> bm!327501 m!5585757))

(declare-fun m!5586145 () Bool)

(assert (=> b!4686762 m!5586145))

(declare-fun m!5586147 () Bool)

(assert (=> b!4686763 m!5586147))

(declare-fun m!5586149 () Bool)

(assert (=> b!4686763 m!5586149))

(declare-fun m!5586151 () Bool)

(assert (=> b!4686763 m!5586151))

(declare-fun m!5586153 () Bool)

(assert (=> b!4686763 m!5586153))

(declare-fun m!5586155 () Bool)

(assert (=> b!4686763 m!5586155))

(assert (=> b!4686763 m!5586145))

(declare-fun m!5586157 () Bool)

(assert (=> b!4686763 m!5586157))

(assert (=> b!4686763 m!5586157))

(assert (=> b!4686763 m!5586147))

(declare-fun m!5586159 () Bool)

(assert (=> b!4686763 m!5586159))

(declare-fun m!5586161 () Bool)

(assert (=> b!4686763 m!5586161))

(declare-fun m!5586163 () Bool)

(assert (=> b!4686763 m!5586163))

(assert (=> b!4686763 m!5586161))

(declare-fun m!5586165 () Bool)

(assert (=> d!1489384 m!5586165))

(assert (=> d!1489384 m!5585933))

(declare-fun m!5586167 () Bool)

(assert (=> b!4686761 m!5586167))

(declare-fun m!5586169 () Bool)

(assert (=> b!4686759 m!5586169))

(assert (=> b!4686392 d!1489384))

(declare-fun bs!1084546 () Bool)

(declare-fun d!1489386 () Bool)

(assert (= bs!1084546 (and d!1489386 d!1489332)))

(declare-fun lambda!206253 () Int)

(assert (=> bs!1084546 (= lambda!206253 lambda!206238)))

(declare-fun bs!1084547 () Bool)

(assert (= bs!1084547 (and d!1489386 d!1489378)))

(assert (=> bs!1084547 (= lambda!206253 lambda!206244)))

(declare-fun bs!1084548 () Bool)

(assert (= bs!1084548 (and d!1489386 d!1489300)))

(assert (=> bs!1084548 (= lambda!206253 lambda!206221)))

(declare-fun bs!1084549 () Bool)

(assert (= bs!1084549 (and d!1489386 d!1489320)))

(assert (=> bs!1084549 (= lambda!206253 lambda!206224)))

(declare-fun bs!1084550 () Bool)

(assert (= bs!1084550 (and d!1489386 d!1489264)))

(assert (=> bs!1084550 (= lambda!206253 lambda!206213)))

(declare-fun bs!1084551 () Bool)

(assert (= bs!1084551 (and d!1489386 start!473688)))

(assert (=> bs!1084551 (= lambda!206253 lambda!206123)))

(declare-fun bs!1084552 () Bool)

(assert (= bs!1084552 (and d!1489386 d!1489374)))

(assert (=> bs!1084552 (not (= lambda!206253 lambda!206241))))

(declare-fun lt!1845931 () ListMap!4925)

(assert (=> d!1489386 (invariantList!1398 (toList!5562 lt!1845931))))

(declare-fun e!2923939 () ListMap!4925)

(assert (=> d!1489386 (= lt!1845931 e!2923939)))

(declare-fun c!801424 () Bool)

(assert (=> d!1489386 (= c!801424 ((_ is Cons!52362) lt!1845495))))

(assert (=> d!1489386 (forall!11291 lt!1845495 lambda!206253)))

(assert (=> d!1489386 (= (extractMap!1862 lt!1845495) lt!1845931)))

(declare-fun b!4686764 () Bool)

(assert (=> b!4686764 (= e!2923939 (addToMapMapFromBucket!1268 (_2!30164 (h!58595 lt!1845495)) (extractMap!1862 (t!359650 lt!1845495))))))

(declare-fun b!4686765 () Bool)

(assert (=> b!4686765 (= e!2923939 (ListMap!4926 Nil!52361))))

(assert (= (and d!1489386 c!801424) b!4686764))

(assert (= (and d!1489386 (not c!801424)) b!4686765))

(declare-fun m!5586171 () Bool)

(assert (=> d!1489386 m!5586171))

(declare-fun m!5586173 () Bool)

(assert (=> d!1489386 m!5586173))

(declare-fun m!5586175 () Bool)

(assert (=> b!4686764 m!5586175))

(assert (=> b!4686764 m!5586175))

(declare-fun m!5586177 () Bool)

(assert (=> b!4686764 m!5586177))

(assert (=> b!4686392 d!1489386))

(declare-fun d!1489388 () Bool)

(declare-fun content!9142 (List!52485) (InoxSet tuple2!53738))

(assert (=> d!1489388 (= (eq!995 (addToMapMapFromBucket!1268 (Cons!52361 lt!1845490 lt!1845498) lt!1845501) (+!2120 (addToMapMapFromBucket!1268 lt!1845498 lt!1845501) lt!1845490)) (= (content!9142 (toList!5562 (addToMapMapFromBucket!1268 (Cons!52361 lt!1845490 lt!1845498) lt!1845501))) (content!9142 (toList!5562 (+!2120 (addToMapMapFromBucket!1268 lt!1845498 lt!1845501) lt!1845490)))))))

(declare-fun bs!1084553 () Bool)

(assert (= bs!1084553 d!1489388))

(declare-fun m!5586179 () Bool)

(assert (=> bs!1084553 m!5586179))

(declare-fun m!5586181 () Bool)

(assert (=> bs!1084553 m!5586181))

(assert (=> b!4686392 d!1489388))

(declare-fun d!1489390 () Bool)

(assert (=> d!1489390 (eq!995 (addToMapMapFromBucket!1268 (Cons!52361 lt!1845490 lt!1845498) lt!1845501) (+!2120 (addToMapMapFromBucket!1268 lt!1845498 lt!1845501) lt!1845490))))

(declare-fun lt!1845934 () Unit!123313)

(declare-fun choose!32507 (tuple2!53738 List!52485 ListMap!4925) Unit!123313)

(assert (=> d!1489390 (= lt!1845934 (choose!32507 lt!1845490 lt!1845498 lt!1845501))))

(assert (=> d!1489390 (noDuplicateKeys!1836 lt!1845498)))

(assert (=> d!1489390 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!244 lt!1845490 lt!1845498 lt!1845501) lt!1845934)))

(declare-fun bs!1084554 () Bool)

(assert (= bs!1084554 d!1489390))

(assert (=> bs!1084554 m!5585933))

(assert (=> bs!1084554 m!5585555))

(assert (=> bs!1084554 m!5585557))

(assert (=> bs!1084554 m!5585549))

(assert (=> bs!1084554 m!5585549))

(assert (=> bs!1084554 m!5585557))

(assert (=> bs!1084554 m!5585559))

(declare-fun m!5586183 () Bool)

(assert (=> bs!1084554 m!5586183))

(assert (=> bs!1084554 m!5585555))

(assert (=> b!4686392 d!1489390))

(declare-fun d!1489392 () Bool)

(declare-fun res!1976247 () Bool)

(declare-fun e!2923940 () Bool)

(assert (=> d!1489392 (=> res!1976247 e!2923940)))

(assert (=> d!1489392 (= res!1976247 ((_ is Nil!52362) (t!359650 (toList!5561 lm!2023))))))

(assert (=> d!1489392 (= (forall!11291 (t!359650 (toList!5561 lm!2023)) lambda!206123) e!2923940)))

(declare-fun b!4686766 () Bool)

(declare-fun e!2923941 () Bool)

(assert (=> b!4686766 (= e!2923940 e!2923941)))

(declare-fun res!1976248 () Bool)

(assert (=> b!4686766 (=> (not res!1976248) (not e!2923941))))

(assert (=> b!4686766 (= res!1976248 (dynLambda!21701 lambda!206123 (h!58595 (t!359650 (toList!5561 lm!2023)))))))

(declare-fun b!4686767 () Bool)

(assert (=> b!4686767 (= e!2923941 (forall!11291 (t!359650 (t!359650 (toList!5561 lm!2023))) lambda!206123))))

(assert (= (and d!1489392 (not res!1976247)) b!4686766))

(assert (= (and b!4686766 res!1976248) b!4686767))

(declare-fun b_lambda!176869 () Bool)

(assert (=> (not b_lambda!176869) (not b!4686766)))

(declare-fun m!5586185 () Bool)

(assert (=> b!4686766 m!5586185))

(declare-fun m!5586187 () Bool)

(assert (=> b!4686767 m!5586187))

(assert (=> b!4686392 d!1489392))

(declare-fun b!4686768 () Bool)

(declare-fun e!2923942 () List!52488)

(assert (=> b!4686768 (= e!2923942 (getKeysList!838 (toList!5562 (extractMap!1862 lt!1845495))))))

(declare-fun b!4686769 () Bool)

(declare-fun e!2923947 () Unit!123313)

(declare-fun e!2923943 () Unit!123313)

(assert (=> b!4686769 (= e!2923947 e!2923943)))

(declare-fun c!801427 () Bool)

(declare-fun call!327507 () Bool)

(assert (=> b!4686769 (= c!801427 call!327507)))

(declare-fun b!4686770 () Bool)

(declare-fun e!2923945 () Bool)

(assert (=> b!4686770 (= e!2923945 (contains!15535 (keys!18683 (extractMap!1862 lt!1845495)) key!4653))))

(declare-fun b!4686771 () Bool)

(declare-fun Unit!123389 () Unit!123313)

(assert (=> b!4686771 (= e!2923943 Unit!123389)))

(declare-fun d!1489394 () Bool)

(declare-fun e!2923944 () Bool)

(assert (=> d!1489394 e!2923944))

(declare-fun res!1976250 () Bool)

(assert (=> d!1489394 (=> res!1976250 e!2923944)))

(declare-fun e!2923946 () Bool)

(assert (=> d!1489394 (= res!1976250 e!2923946)))

(declare-fun res!1976251 () Bool)

(assert (=> d!1489394 (=> (not res!1976251) (not e!2923946))))

(declare-fun lt!1845941 () Bool)

(assert (=> d!1489394 (= res!1976251 (not lt!1845941))))

(declare-fun lt!1845939 () Bool)

(assert (=> d!1489394 (= lt!1845941 lt!1845939)))

(declare-fun lt!1845942 () Unit!123313)

(assert (=> d!1489394 (= lt!1845942 e!2923947)))

(declare-fun c!801426 () Bool)

(assert (=> d!1489394 (= c!801426 lt!1845939)))

(assert (=> d!1489394 (= lt!1845939 (containsKey!3013 (toList!5562 (extractMap!1862 lt!1845495)) key!4653))))

(assert (=> d!1489394 (= (contains!15530 (extractMap!1862 lt!1845495) key!4653) lt!1845941)))

(declare-fun b!4686772 () Bool)

(assert (=> b!4686772 (= e!2923942 (keys!18683 (extractMap!1862 lt!1845495)))))

(declare-fun b!4686773 () Bool)

(assert (=> b!4686773 (= e!2923946 (not (contains!15535 (keys!18683 (extractMap!1862 lt!1845495)) key!4653)))))

(declare-fun b!4686774 () Bool)

(declare-fun lt!1845936 () Unit!123313)

(assert (=> b!4686774 (= e!2923947 lt!1845936)))

(declare-fun lt!1845938 () Unit!123313)

(assert (=> b!4686774 (= lt!1845938 (lemmaContainsKeyImpliesGetValueByKeyDefined!1647 (toList!5562 (extractMap!1862 lt!1845495)) key!4653))))

(assert (=> b!4686774 (isDefined!9292 (getValueByKey!1755 (toList!5562 (extractMap!1862 lt!1845495)) key!4653))))

(declare-fun lt!1845937 () Unit!123313)

(assert (=> b!4686774 (= lt!1845937 lt!1845938)))

(assert (=> b!4686774 (= lt!1845936 (lemmaInListThenGetKeysListContains!833 (toList!5562 (extractMap!1862 lt!1845495)) key!4653))))

(assert (=> b!4686774 call!327507))

(declare-fun b!4686775 () Bool)

(assert (=> b!4686775 false))

(declare-fun lt!1845940 () Unit!123313)

(declare-fun lt!1845935 () Unit!123313)

(assert (=> b!4686775 (= lt!1845940 lt!1845935)))

(assert (=> b!4686775 (containsKey!3013 (toList!5562 (extractMap!1862 lt!1845495)) key!4653)))

(assert (=> b!4686775 (= lt!1845935 (lemmaInGetKeysListThenContainsKey!837 (toList!5562 (extractMap!1862 lt!1845495)) key!4653))))

(declare-fun Unit!123390 () Unit!123313)

(assert (=> b!4686775 (= e!2923943 Unit!123390)))

(declare-fun bm!327502 () Bool)

(assert (=> bm!327502 (= call!327507 (contains!15535 e!2923942 key!4653))))

(declare-fun c!801425 () Bool)

(assert (=> bm!327502 (= c!801425 c!801426)))

(declare-fun b!4686776 () Bool)

(assert (=> b!4686776 (= e!2923944 e!2923945)))

(declare-fun res!1976249 () Bool)

(assert (=> b!4686776 (=> (not res!1976249) (not e!2923945))))

(assert (=> b!4686776 (= res!1976249 (isDefined!9292 (getValueByKey!1755 (toList!5562 (extractMap!1862 lt!1845495)) key!4653)))))

(assert (= (and d!1489394 c!801426) b!4686774))

(assert (= (and d!1489394 (not c!801426)) b!4686769))

(assert (= (and b!4686769 c!801427) b!4686775))

(assert (= (and b!4686769 (not c!801427)) b!4686771))

(assert (= (or b!4686774 b!4686769) bm!327502))

(assert (= (and bm!327502 c!801425) b!4686768))

(assert (= (and bm!327502 (not c!801425)) b!4686772))

(assert (= (and d!1489394 res!1976251) b!4686773))

(assert (= (and d!1489394 (not res!1976250)) b!4686776))

(assert (= (and b!4686776 res!1976249) b!4686770))

(assert (=> b!4686770 m!5585547))

(declare-fun m!5586189 () Bool)

(assert (=> b!4686770 m!5586189))

(assert (=> b!4686770 m!5586189))

(declare-fun m!5586191 () Bool)

(assert (=> b!4686770 m!5586191))

(assert (=> b!4686773 m!5585547))

(assert (=> b!4686773 m!5586189))

(assert (=> b!4686773 m!5586189))

(assert (=> b!4686773 m!5586191))

(declare-fun m!5586193 () Bool)

(assert (=> bm!327502 m!5586193))

(assert (=> b!4686772 m!5585547))

(assert (=> b!4686772 m!5586189))

(declare-fun m!5586195 () Bool)

(assert (=> b!4686774 m!5586195))

(declare-fun m!5586197 () Bool)

(assert (=> b!4686774 m!5586197))

(assert (=> b!4686774 m!5586197))

(declare-fun m!5586199 () Bool)

(assert (=> b!4686774 m!5586199))

(declare-fun m!5586201 () Bool)

(assert (=> b!4686774 m!5586201))

(declare-fun m!5586203 () Bool)

(assert (=> b!4686775 m!5586203))

(declare-fun m!5586205 () Bool)

(assert (=> b!4686775 m!5586205))

(assert (=> b!4686776 m!5586197))

(assert (=> b!4686776 m!5586197))

(assert (=> b!4686776 m!5586199))

(declare-fun m!5586207 () Bool)

(assert (=> b!4686768 m!5586207))

(assert (=> d!1489394 m!5586203))

(assert (=> b!4686392 d!1489394))

(declare-fun d!1489396 () Bool)

(declare-fun res!1976252 () Bool)

(declare-fun e!2923948 () Bool)

(assert (=> d!1489396 (=> res!1976252 e!2923948)))

(assert (=> d!1489396 (= res!1976252 (not ((_ is Cons!52361) newBucket!218)))))

(assert (=> d!1489396 (= (noDuplicateKeys!1836 newBucket!218) e!2923948)))

(declare-fun b!4686777 () Bool)

(declare-fun e!2923949 () Bool)

(assert (=> b!4686777 (= e!2923948 e!2923949)))

(declare-fun res!1976253 () Bool)

(assert (=> b!4686777 (=> (not res!1976253) (not e!2923949))))

(assert (=> b!4686777 (= res!1976253 (not (containsKey!3011 (t!359649 newBucket!218) (_1!30163 (h!58594 newBucket!218)))))))

(declare-fun b!4686778 () Bool)

(assert (=> b!4686778 (= e!2923949 (noDuplicateKeys!1836 (t!359649 newBucket!218)))))

(assert (= (and d!1489396 (not res!1976252)) b!4686777))

(assert (= (and b!4686777 res!1976253) b!4686778))

(declare-fun m!5586209 () Bool)

(assert (=> b!4686777 m!5586209))

(declare-fun m!5586211 () Bool)

(assert (=> b!4686778 m!5586211))

(assert (=> b!4686391 d!1489396))

(declare-fun tp!1345648 () Bool)

(declare-fun b!4686783 () Bool)

(declare-fun e!2923952 () Bool)

(assert (=> b!4686783 (= e!2923952 (and tp_is_empty!30637 tp_is_empty!30639 tp!1345648))))

(assert (=> b!4686384 (= tp!1345634 e!2923952)))

(assert (= (and b!4686384 ((_ is Cons!52361) (t!359649 newBucket!218))) b!4686783))

(declare-fun b!4686788 () Bool)

(declare-fun e!2923955 () Bool)

(declare-fun tp!1345653 () Bool)

(declare-fun tp!1345654 () Bool)

(assert (=> b!4686788 (= e!2923955 (and tp!1345653 tp!1345654))))

(assert (=> b!4686383 (= tp!1345635 e!2923955)))

(assert (= (and b!4686383 ((_ is Cons!52362) (toList!5561 lm!2023))) b!4686788))

(declare-fun e!2923956 () Bool)

(declare-fun b!4686789 () Bool)

(declare-fun tp!1345655 () Bool)

(assert (=> b!4686789 (= e!2923956 (and tp_is_empty!30637 tp_is_empty!30639 tp!1345655))))

(assert (=> b!4686399 (= tp!1345633 e!2923956)))

(assert (= (and b!4686399 ((_ is Cons!52361) (t!359649 oldBucket!34))) b!4686789))

(declare-fun b_lambda!176871 () Bool)

(assert (= b_lambda!176859 (or start!473688 b_lambda!176871)))

(declare-fun bs!1084555 () Bool)

(declare-fun d!1489398 () Bool)

(assert (= bs!1084555 (and d!1489398 start!473688)))

(assert (=> bs!1084555 (= (dynLambda!21701 lambda!206123 lt!1845504) (noDuplicateKeys!1836 (_2!30164 lt!1845504)))))

(declare-fun m!5586213 () Bool)

(assert (=> bs!1084555 m!5586213))

(assert (=> d!1489318 d!1489398))

(declare-fun b_lambda!176873 () Bool)

(assert (= b_lambda!176869 (or start!473688 b_lambda!176873)))

(declare-fun bs!1084556 () Bool)

(declare-fun d!1489400 () Bool)

(assert (= bs!1084556 (and d!1489400 start!473688)))

(assert (=> bs!1084556 (= (dynLambda!21701 lambda!206123 (h!58595 (t!359650 (toList!5561 lm!2023)))) (noDuplicateKeys!1836 (_2!30164 (h!58595 (t!359650 (toList!5561 lm!2023))))))))

(declare-fun m!5586215 () Bool)

(assert (=> bs!1084556 m!5586215))

(assert (=> b!4686766 d!1489400))

(declare-fun b_lambda!176875 () Bool)

(assert (= b_lambda!176855 (or start!473688 b_lambda!176875)))

(declare-fun bs!1084557 () Bool)

(declare-fun d!1489402 () Bool)

(assert (= bs!1084557 (and d!1489402 start!473688)))

(assert (=> bs!1084557 (= (dynLambda!21701 lambda!206123 (h!58595 (toList!5561 lm!2023))) (noDuplicateKeys!1836 (_2!30164 (h!58595 (toList!5561 lm!2023)))))))

(assert (=> bs!1084557 m!5585781))

(assert (=> b!4686536 d!1489402))

(check-sat (not d!1489316) (not d!1489306) (not b!4686493) (not b!4686759) (not b!4686775) (not d!1489232) (not d!1489378) (not b_lambda!176871) (not b!4686648) (not b!4686617) (not d!1489330) (not bm!327499) (not b!4686576) (not b!4686655) (not b_lambda!176875) (not bm!327486) (not b!4686763) (not d!1489388) (not bs!1084555) (not b!4686732) (not b!4686776) (not b!4686761) (not d!1489270) (not d!1489318) (not b!4686593) (not b!4686772) (not b!4686577) (not d!1489304) (not b!4686603) (not b!4686578) (not b!4686579) (not d!1489328) (not b!4686768) (not d!1489264) (not bm!327502) (not b!4686778) (not b!4686574) (not d!1489300) (not d!1489326) (not d!1489376) (not d!1489368) (not b!4686649) (not bs!1084557) (not b!4686753) (not b!4686770) (not bm!327501) (not b!4686537) (not b!4686788) (not bm!327495) (not b!4686597) (not b!4686653) (not d!1489282) (not b!4686734) (not bs!1084556) (not bm!327485) (not b!4686572) (not d!1489322) (not b!4686581) (not b!4686757) tp_is_empty!30639 (not d!1489332) (not d!1489386) (not d!1489284) (not bm!327496) (not b!4686758) (not b!4686580) (not b!4686522) (not bm!327497) (not b!4686743) (not d!1489374) (not b!4686773) (not b_lambda!176873) (not b!4686774) (not bm!327500) (not b!4686783) (not d!1489366) (not b!4686495) (not d!1489302) (not b!4686733) (not b!4686756) (not bm!327484) (not d!1489234) (not b!4686496) (not b!4686754) (not d!1489394) (not b!4686731) (not d!1489228) (not b!4686777) (not d!1489384) (not b!4686741) (not bm!327498) (not b!4686604) (not b!4686623) (not b!4686762) tp_is_empty!30637 (not b!4686767) (not b!4686752) (not d!1489320) (not b!4686745) (not d!1489382) (not d!1489314) (not b!4686607) (not b!4686614) (not b!4686497) (not d!1489390) (not b!4686789) (not b!4686654) (not b!4686764))
(check-sat)
