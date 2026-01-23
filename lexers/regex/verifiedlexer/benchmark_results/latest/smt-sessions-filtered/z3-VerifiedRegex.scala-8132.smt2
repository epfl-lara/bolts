; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418468 () Bool)

(assert start!418468)

(declare-fun b!4337441 () Bool)

(declare-fun e!2698866 () Bool)

(declare-datatypes ((K!10065 0))(
  ( (K!10066 (val!16323 Int)) )
))
(declare-datatypes ((V!10311 0))(
  ( (V!10312 (val!16324 Int)) )
))
(declare-datatypes ((tuple2!47966 0))(
  ( (tuple2!47967 (_1!27277 K!10065) (_2!27277 V!10311)) )
))
(declare-datatypes ((List!48831 0))(
  ( (Nil!48707) (Cons!48707 (h!54214 tuple2!47966) (t!355747 List!48831)) )
))
(declare-datatypes ((ListMap!2025 0))(
  ( (ListMap!2026 (toList!2781 List!48831)) )
))
(declare-fun lt!1551346 () ListMap!2025)

(declare-fun lt!1551354 () ListMap!2025)

(declare-fun eq!189 (ListMap!2025 ListMap!2025) Bool)

(assert (=> b!4337441 (= e!2698866 (eq!189 lt!1551346 lt!1551354))))

(declare-fun tp_is_empty!24833 () Bool)

(declare-fun b!4337442 () Bool)

(declare-fun e!2698869 () Bool)

(declare-fun tp_is_empty!24835 () Bool)

(declare-fun tp!1329130 () Bool)

(assert (=> b!4337442 (= e!2698869 (and tp_is_empty!24833 tp_is_empty!24835 tp!1329130))))

(declare-fun b!4337443 () Bool)

(declare-fun res!1779379 () Bool)

(declare-fun e!2698867 () Bool)

(assert (=> b!4337443 (=> (not res!1779379) (not e!2698867))))

(declare-datatypes ((tuple2!47968 0))(
  ( (tuple2!47969 (_1!27278 (_ BitVec 64)) (_2!27278 List!48831)) )
))
(declare-datatypes ((List!48832 0))(
  ( (Nil!48708) (Cons!48708 (h!54215 tuple2!47968) (t!355748 List!48832)) )
))
(declare-datatypes ((ListLongMap!1431 0))(
  ( (ListLongMap!1432 (toList!2782 List!48832)) )
))
(declare-fun lt!1551349 () ListLongMap!1431)

(declare-fun lambda!136339 () Int)

(declare-fun forall!8973 (List!48832 Int) Bool)

(assert (=> b!4337443 (= res!1779379 (forall!8973 (toList!2782 lt!1551349) lambda!136339))))

(declare-fun b!4337444 () Bool)

(declare-fun e!2698868 () Bool)

(declare-fun e!2698864 () Bool)

(assert (=> b!4337444 (= e!2698868 (not e!2698864))))

(declare-fun res!1779377 () Bool)

(assert (=> b!4337444 (=> res!1779377 e!2698864)))

(declare-fun newBucket!200 () List!48831)

(declare-fun lt!1551353 () List!48831)

(assert (=> b!4337444 (= res!1779377 (not (= newBucket!200 lt!1551353)))))

(declare-fun lt!1551343 () tuple2!47966)

(declare-fun lt!1551344 () List!48831)

(assert (=> b!4337444 (= lt!1551353 (Cons!48707 lt!1551343 lt!1551344))))

(declare-fun lt!1551341 () List!48831)

(declare-fun key!3918 () K!10065)

(declare-fun removePairForKey!369 (List!48831 K!10065) List!48831)

(assert (=> b!4337444 (= lt!1551344 (removePairForKey!369 lt!1551341 key!3918))))

(declare-fun newValue!99 () V!10311)

(assert (=> b!4337444 (= lt!1551343 (tuple2!47967 key!3918 newValue!99))))

(declare-fun lt!1551350 () tuple2!47968)

(declare-fun lm!1707 () ListLongMap!1431)

(declare-datatypes ((Unit!68877 0))(
  ( (Unit!68878) )
))
(declare-fun lt!1551347 () Unit!68877)

(declare-fun forallContained!1623 (List!48832 Int tuple2!47968) Unit!68877)

(assert (=> b!4337444 (= lt!1551347 (forallContained!1623 (toList!2782 lm!1707) lambda!136339 lt!1551350))))

(declare-fun contains!10786 (List!48832 tuple2!47968) Bool)

(assert (=> b!4337444 (contains!10786 (toList!2782 lm!1707) lt!1551350)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4337444 (= lt!1551350 (tuple2!47969 hash!377 lt!1551341))))

(declare-fun lt!1551355 () Unit!68877)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!246 (List!48832 (_ BitVec 64) List!48831) Unit!68877)

(assert (=> b!4337444 (= lt!1551355 (lemmaGetValueByKeyImpliesContainsTuple!246 (toList!2782 lm!1707) hash!377 lt!1551341))))

(declare-fun apply!11251 (ListLongMap!1431 (_ BitVec 64)) List!48831)

(assert (=> b!4337444 (= lt!1551341 (apply!11251 lm!1707 hash!377))))

(declare-fun b!4337445 () Bool)

(declare-fun res!1779374 () Bool)

(assert (=> b!4337445 (=> (not res!1779374) (not e!2698868))))

(declare-fun contains!10787 (ListLongMap!1431 (_ BitVec 64)) Bool)

(assert (=> b!4337445 (= res!1779374 (contains!10787 lm!1707 hash!377))))

(declare-fun b!4337446 () Bool)

(declare-fun res!1779371 () Bool)

(assert (=> b!4337446 (=> (not res!1779371) (not e!2698868))))

(declare-datatypes ((Hashable!4791 0))(
  ( (HashableExt!4790 (__x!30494 Int)) )
))
(declare-fun hashF!1247 () Hashable!4791)

(declare-fun allKeysSameHashInMap!503 (ListLongMap!1431 Hashable!4791) Bool)

(assert (=> b!4337446 (= res!1779371 (allKeysSameHashInMap!503 lm!1707 hashF!1247))))

(declare-fun res!1779368 () Bool)

(assert (=> start!418468 (=> (not res!1779368) (not e!2698868))))

(assert (=> start!418468 (= res!1779368 (forall!8973 (toList!2782 lm!1707) lambda!136339))))

(assert (=> start!418468 e!2698868))

(assert (=> start!418468 e!2698869))

(assert (=> start!418468 true))

(declare-fun e!2698865 () Bool)

(declare-fun inv!64251 (ListLongMap!1431) Bool)

(assert (=> start!418468 (and (inv!64251 lm!1707) e!2698865)))

(assert (=> start!418468 tp_is_empty!24833))

(assert (=> start!418468 tp_is_empty!24835))

(declare-fun b!4337447 () Bool)

(declare-fun e!2698870 () Bool)

(assert (=> b!4337447 (= e!2698864 e!2698870)))

(declare-fun res!1779376 () Bool)

(assert (=> b!4337447 (=> res!1779376 e!2698870)))

(get-info :version)

(assert (=> b!4337447 (= res!1779376 (or (not ((_ is Cons!48708) (toList!2782 lm!1707))) (not (= (_1!27278 (h!54215 (toList!2782 lm!1707))) hash!377))))))

(assert (=> b!4337447 e!2698867))

(declare-fun res!1779375 () Bool)

(assert (=> b!4337447 (=> (not res!1779375) (not e!2698867))))

(assert (=> b!4337447 (= res!1779375 (forall!8973 (toList!2782 lt!1551349) lambda!136339))))

(declare-fun lt!1551340 () tuple2!47968)

(declare-fun +!469 (ListLongMap!1431 tuple2!47968) ListLongMap!1431)

(assert (=> b!4337447 (= lt!1551349 (+!469 lm!1707 lt!1551340))))

(assert (=> b!4337447 (= lt!1551340 (tuple2!47969 hash!377 newBucket!200))))

(declare-fun lt!1551342 () Unit!68877)

(declare-fun addValidProp!53 (ListLongMap!1431 Int (_ BitVec 64) List!48831) Unit!68877)

(assert (=> b!4337447 (= lt!1551342 (addValidProp!53 lm!1707 lambda!136339 hash!377 newBucket!200))))

(assert (=> b!4337447 (forall!8973 (toList!2782 lm!1707) lambda!136339)))

(declare-fun b!4337448 () Bool)

(declare-fun noDuplicateKeys!399 (List!48831) Bool)

(assert (=> b!4337448 (= e!2698870 (noDuplicateKeys!399 lt!1551341))))

(declare-fun lt!1551356 () ListLongMap!1431)

(declare-fun tail!6897 (List!48831) List!48831)

(assert (=> b!4337448 (= lt!1551356 (+!469 lm!1707 (tuple2!47969 hash!377 (tail!6897 newBucket!200))))))

(assert (=> b!4337448 e!2698866))

(declare-fun res!1779372 () Bool)

(assert (=> b!4337448 (=> (not res!1779372) (not e!2698866))))

(declare-fun lt!1551348 () ListMap!2025)

(assert (=> b!4337448 (= res!1779372 (eq!189 lt!1551348 lt!1551354))))

(declare-fun lt!1551351 () ListMap!2025)

(declare-fun +!470 (ListMap!2025 tuple2!47966) ListMap!2025)

(declare-fun addToMapMapFromBucket!107 (List!48831 ListMap!2025) ListMap!2025)

(assert (=> b!4337448 (= lt!1551354 (+!470 (addToMapMapFromBucket!107 lt!1551344 lt!1551351) lt!1551343))))

(declare-fun lt!1551352 () Unit!68877)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!18 (ListMap!2025 K!10065 V!10311 List!48831) Unit!68877)

(assert (=> b!4337448 (= lt!1551352 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!18 lt!1551351 key!3918 newValue!99 lt!1551344))))

(assert (=> b!4337448 (= lt!1551346 lt!1551348)))

(assert (=> b!4337448 (= lt!1551348 (addToMapMapFromBucket!107 lt!1551344 (+!470 lt!1551351 lt!1551343)))))

(declare-fun lt!1551345 () ListMap!2025)

(assert (=> b!4337448 (= lt!1551345 lt!1551346)))

(assert (=> b!4337448 (= lt!1551346 (addToMapMapFromBucket!107 lt!1551353 lt!1551351))))

(assert (=> b!4337448 (= lt!1551345 (addToMapMapFromBucket!107 newBucket!200 lt!1551351))))

(declare-fun extractMap!458 (List!48832) ListMap!2025)

(assert (=> b!4337448 (= lt!1551345 (extractMap!458 (toList!2782 lt!1551349)))))

(assert (=> b!4337448 (= lt!1551351 (extractMap!458 (t!355748 (toList!2782 lm!1707))))))

(declare-fun b!4337449 () Bool)

(assert (=> b!4337449 (= e!2698867 (or (not ((_ is Cons!48708) (toList!2782 lm!1707))) (not (= (_1!27278 (h!54215 (toList!2782 lm!1707))) hash!377)) (= lt!1551349 (ListLongMap!1432 (Cons!48708 lt!1551340 (t!355748 (toList!2782 lm!1707)))))))))

(declare-fun b!4337450 () Bool)

(declare-fun res!1779373 () Bool)

(assert (=> b!4337450 (=> (not res!1779373) (not e!2698868))))

(declare-fun hash!1352 (Hashable!4791 K!10065) (_ BitVec 64))

(assert (=> b!4337450 (= res!1779373 (= (hash!1352 hashF!1247 key!3918) hash!377))))

(declare-fun b!4337451 () Bool)

(declare-fun res!1779369 () Bool)

(assert (=> b!4337451 (=> (not res!1779369) (not e!2698868))))

(declare-fun allKeysSameHash!357 (List!48831 (_ BitVec 64) Hashable!4791) Bool)

(assert (=> b!4337451 (= res!1779369 (allKeysSameHash!357 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4337452 () Bool)

(declare-fun res!1779370 () Bool)

(assert (=> b!4337452 (=> (not res!1779370) (not e!2698868))))

(declare-fun contains!10788 (ListMap!2025 K!10065) Bool)

(assert (=> b!4337452 (= res!1779370 (contains!10788 (extractMap!458 (toList!2782 lm!1707)) key!3918))))

(declare-fun b!4337453 () Bool)

(declare-fun res!1779378 () Bool)

(assert (=> b!4337453 (=> res!1779378 e!2698864)))

(assert (=> b!4337453 (= res!1779378 (not (noDuplicateKeys!399 newBucket!200)))))

(declare-fun b!4337454 () Bool)

(declare-fun tp!1329129 () Bool)

(assert (=> b!4337454 (= e!2698865 tp!1329129)))

(assert (= (and start!418468 res!1779368) b!4337446))

(assert (= (and b!4337446 res!1779371) b!4337450))

(assert (= (and b!4337450 res!1779373) b!4337451))

(assert (= (and b!4337451 res!1779369) b!4337452))

(assert (= (and b!4337452 res!1779370) b!4337445))

(assert (= (and b!4337445 res!1779374) b!4337444))

(assert (= (and b!4337444 (not res!1779377)) b!4337453))

(assert (= (and b!4337453 (not res!1779378)) b!4337447))

(assert (= (and b!4337447 res!1779375) b!4337443))

(assert (= (and b!4337443 res!1779379) b!4337449))

(assert (= (and b!4337447 (not res!1779376)) b!4337448))

(assert (= (and b!4337448 res!1779372) b!4337441))

(assert (= (and start!418468 ((_ is Cons!48707) newBucket!200)) b!4337442))

(assert (= start!418468 b!4337454))

(declare-fun m!4933613 () Bool)

(assert (=> start!418468 m!4933613))

(declare-fun m!4933615 () Bool)

(assert (=> start!418468 m!4933615))

(declare-fun m!4933617 () Bool)

(assert (=> b!4337452 m!4933617))

(assert (=> b!4337452 m!4933617))

(declare-fun m!4933619 () Bool)

(assert (=> b!4337452 m!4933619))

(declare-fun m!4933621 () Bool)

(assert (=> b!4337445 m!4933621))

(declare-fun m!4933623 () Bool)

(assert (=> b!4337451 m!4933623))

(declare-fun m!4933625 () Bool)

(assert (=> b!4337453 m!4933625))

(declare-fun m!4933627 () Bool)

(assert (=> b!4337450 m!4933627))

(declare-fun m!4933629 () Bool)

(assert (=> b!4337447 m!4933629))

(declare-fun m!4933631 () Bool)

(assert (=> b!4337447 m!4933631))

(declare-fun m!4933633 () Bool)

(assert (=> b!4337447 m!4933633))

(assert (=> b!4337447 m!4933613))

(declare-fun m!4933635 () Bool)

(assert (=> b!4337446 m!4933635))

(assert (=> b!4337443 m!4933629))

(declare-fun m!4933637 () Bool)

(assert (=> b!4337448 m!4933637))

(declare-fun m!4933639 () Bool)

(assert (=> b!4337448 m!4933639))

(declare-fun m!4933641 () Bool)

(assert (=> b!4337448 m!4933641))

(declare-fun m!4933643 () Bool)

(assert (=> b!4337448 m!4933643))

(declare-fun m!4933645 () Bool)

(assert (=> b!4337448 m!4933645))

(declare-fun m!4933647 () Bool)

(assert (=> b!4337448 m!4933647))

(declare-fun m!4933649 () Bool)

(assert (=> b!4337448 m!4933649))

(declare-fun m!4933651 () Bool)

(assert (=> b!4337448 m!4933651))

(assert (=> b!4337448 m!4933649))

(declare-fun m!4933653 () Bool)

(assert (=> b!4337448 m!4933653))

(declare-fun m!4933655 () Bool)

(assert (=> b!4337448 m!4933655))

(assert (=> b!4337448 m!4933643))

(declare-fun m!4933657 () Bool)

(assert (=> b!4337448 m!4933657))

(declare-fun m!4933659 () Bool)

(assert (=> b!4337448 m!4933659))

(declare-fun m!4933661 () Bool)

(assert (=> b!4337448 m!4933661))

(declare-fun m!4933663 () Bool)

(assert (=> b!4337441 m!4933663))

(declare-fun m!4933665 () Bool)

(assert (=> b!4337444 m!4933665))

(declare-fun m!4933667 () Bool)

(assert (=> b!4337444 m!4933667))

(declare-fun m!4933669 () Bool)

(assert (=> b!4337444 m!4933669))

(declare-fun m!4933671 () Bool)

(assert (=> b!4337444 m!4933671))

(declare-fun m!4933673 () Bool)

(assert (=> b!4337444 m!4933673))

(check-sat tp_is_empty!24833 (not b!4337448) (not b!4337450) (not b!4337445) (not b!4337447) (not b!4337446) tp_is_empty!24835 (not start!418468) (not b!4337443) (not b!4337453) (not b!4337451) (not b!4337442) (not b!4337441) (not b!4337454) (not b!4337452) (not b!4337444))
(check-sat)
(get-model)

(declare-fun bs!609274 () Bool)

(declare-fun d!1274905 () Bool)

(assert (= bs!609274 (and d!1274905 start!418468)))

(declare-fun lambda!136345 () Int)

(assert (=> bs!609274 (not (= lambda!136345 lambda!136339))))

(assert (=> d!1274905 true))

(assert (=> d!1274905 (= (allKeysSameHashInMap!503 lm!1707 hashF!1247) (forall!8973 (toList!2782 lm!1707) lambda!136345))))

(declare-fun bs!609275 () Bool)

(assert (= bs!609275 d!1274905))

(declare-fun m!4933717 () Bool)

(assert (=> bs!609275 m!4933717))

(assert (=> b!4337446 d!1274905))

(declare-fun d!1274907 () Bool)

(declare-fun e!2698916 () Bool)

(assert (=> d!1274907 e!2698916))

(declare-fun res!1779414 () Bool)

(assert (=> d!1274907 (=> res!1779414 e!2698916)))

(declare-fun lt!1551408 () Bool)

(assert (=> d!1274907 (= res!1779414 (not lt!1551408))))

(declare-fun lt!1551407 () Bool)

(assert (=> d!1274907 (= lt!1551408 lt!1551407)))

(declare-fun lt!1551409 () Unit!68877)

(declare-fun e!2698917 () Unit!68877)

(assert (=> d!1274907 (= lt!1551409 e!2698917)))

(declare-fun c!737489 () Bool)

(assert (=> d!1274907 (= c!737489 lt!1551407)))

(declare-fun containsKey!551 (List!48832 (_ BitVec 64)) Bool)

(assert (=> d!1274907 (= lt!1551407 (containsKey!551 (toList!2782 lm!1707) hash!377))))

(assert (=> d!1274907 (= (contains!10787 lm!1707 hash!377) lt!1551408)))

(declare-fun b!4337524 () Bool)

(declare-fun lt!1551410 () Unit!68877)

(assert (=> b!4337524 (= e!2698917 lt!1551410)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!278 (List!48832 (_ BitVec 64)) Unit!68877)

(assert (=> b!4337524 (= lt!1551410 (lemmaContainsKeyImpliesGetValueByKeyDefined!278 (toList!2782 lm!1707) hash!377))))

(declare-datatypes ((Option!10380 0))(
  ( (None!10379) (Some!10379 (v!43131 List!48831)) )
))
(declare-fun isDefined!7675 (Option!10380) Bool)

(declare-fun getValueByKey!366 (List!48832 (_ BitVec 64)) Option!10380)

(assert (=> b!4337524 (isDefined!7675 (getValueByKey!366 (toList!2782 lm!1707) hash!377))))

(declare-fun b!4337525 () Bool)

(declare-fun Unit!68903 () Unit!68877)

(assert (=> b!4337525 (= e!2698917 Unit!68903)))

(declare-fun b!4337526 () Bool)

(assert (=> b!4337526 (= e!2698916 (isDefined!7675 (getValueByKey!366 (toList!2782 lm!1707) hash!377)))))

(assert (= (and d!1274907 c!737489) b!4337524))

(assert (= (and d!1274907 (not c!737489)) b!4337525))

(assert (= (and d!1274907 (not res!1779414)) b!4337526))

(declare-fun m!4933745 () Bool)

(assert (=> d!1274907 m!4933745))

(declare-fun m!4933747 () Bool)

(assert (=> b!4337524 m!4933747))

(declare-fun m!4933749 () Bool)

(assert (=> b!4337524 m!4933749))

(assert (=> b!4337524 m!4933749))

(declare-fun m!4933751 () Bool)

(assert (=> b!4337524 m!4933751))

(assert (=> b!4337526 m!4933749))

(assert (=> b!4337526 m!4933749))

(assert (=> b!4337526 m!4933751))

(assert (=> b!4337445 d!1274907))

(declare-fun d!1274913 () Bool)

(declare-fun get!15805 (Option!10380) List!48831)

(assert (=> d!1274913 (= (apply!11251 lm!1707 hash!377) (get!15805 (getValueByKey!366 (toList!2782 lm!1707) hash!377)))))

(declare-fun bs!609277 () Bool)

(assert (= bs!609277 d!1274913))

(assert (=> bs!609277 m!4933749))

(assert (=> bs!609277 m!4933749))

(declare-fun m!4933753 () Bool)

(assert (=> bs!609277 m!4933753))

(assert (=> b!4337444 d!1274913))

(declare-fun d!1274915 () Bool)

(declare-fun dynLambda!20573 (Int tuple2!47968) Bool)

(assert (=> d!1274915 (dynLambda!20573 lambda!136339 lt!1551350)))

(declare-fun lt!1551413 () Unit!68877)

(declare-fun choose!26561 (List!48832 Int tuple2!47968) Unit!68877)

(assert (=> d!1274915 (= lt!1551413 (choose!26561 (toList!2782 lm!1707) lambda!136339 lt!1551350))))

(declare-fun e!2698920 () Bool)

(assert (=> d!1274915 e!2698920))

(declare-fun res!1779417 () Bool)

(assert (=> d!1274915 (=> (not res!1779417) (not e!2698920))))

(assert (=> d!1274915 (= res!1779417 (forall!8973 (toList!2782 lm!1707) lambda!136339))))

(assert (=> d!1274915 (= (forallContained!1623 (toList!2782 lm!1707) lambda!136339 lt!1551350) lt!1551413)))

(declare-fun b!4337529 () Bool)

(assert (=> b!4337529 (= e!2698920 (contains!10786 (toList!2782 lm!1707) lt!1551350))))

(assert (= (and d!1274915 res!1779417) b!4337529))

(declare-fun b_lambda!128401 () Bool)

(assert (=> (not b_lambda!128401) (not d!1274915)))

(declare-fun m!4933755 () Bool)

(assert (=> d!1274915 m!4933755))

(declare-fun m!4933757 () Bool)

(assert (=> d!1274915 m!4933757))

(assert (=> d!1274915 m!4933613))

(assert (=> b!4337529 m!4933665))

(assert (=> b!4337444 d!1274915))

(declare-fun d!1274917 () Bool)

(assert (=> d!1274917 (contains!10786 (toList!2782 lm!1707) (tuple2!47969 hash!377 lt!1551341))))

(declare-fun lt!1551416 () Unit!68877)

(declare-fun choose!26562 (List!48832 (_ BitVec 64) List!48831) Unit!68877)

(assert (=> d!1274917 (= lt!1551416 (choose!26562 (toList!2782 lm!1707) hash!377 lt!1551341))))

(declare-fun e!2698923 () Bool)

(assert (=> d!1274917 e!2698923))

(declare-fun res!1779420 () Bool)

(assert (=> d!1274917 (=> (not res!1779420) (not e!2698923))))

(declare-fun isStrictlySorted!60 (List!48832) Bool)

(assert (=> d!1274917 (= res!1779420 (isStrictlySorted!60 (toList!2782 lm!1707)))))

(assert (=> d!1274917 (= (lemmaGetValueByKeyImpliesContainsTuple!246 (toList!2782 lm!1707) hash!377 lt!1551341) lt!1551416)))

(declare-fun b!4337532 () Bool)

(assert (=> b!4337532 (= e!2698923 (= (getValueByKey!366 (toList!2782 lm!1707) hash!377) (Some!10379 lt!1551341)))))

(assert (= (and d!1274917 res!1779420) b!4337532))

(declare-fun m!4933759 () Bool)

(assert (=> d!1274917 m!4933759))

(declare-fun m!4933761 () Bool)

(assert (=> d!1274917 m!4933761))

(declare-fun m!4933763 () Bool)

(assert (=> d!1274917 m!4933763))

(assert (=> b!4337532 m!4933749))

(assert (=> b!4337444 d!1274917))

(declare-fun d!1274919 () Bool)

(declare-fun lt!1551419 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7616 (List!48832) (InoxSet tuple2!47968))

(assert (=> d!1274919 (= lt!1551419 (select (content!7616 (toList!2782 lm!1707)) lt!1551350))))

(declare-fun e!2698929 () Bool)

(assert (=> d!1274919 (= lt!1551419 e!2698929)))

(declare-fun res!1779426 () Bool)

(assert (=> d!1274919 (=> (not res!1779426) (not e!2698929))))

(assert (=> d!1274919 (= res!1779426 ((_ is Cons!48708) (toList!2782 lm!1707)))))

(assert (=> d!1274919 (= (contains!10786 (toList!2782 lm!1707) lt!1551350) lt!1551419)))

(declare-fun b!4337537 () Bool)

(declare-fun e!2698928 () Bool)

(assert (=> b!4337537 (= e!2698929 e!2698928)))

(declare-fun res!1779425 () Bool)

(assert (=> b!4337537 (=> res!1779425 e!2698928)))

(assert (=> b!4337537 (= res!1779425 (= (h!54215 (toList!2782 lm!1707)) lt!1551350))))

(declare-fun b!4337538 () Bool)

(assert (=> b!4337538 (= e!2698928 (contains!10786 (t!355748 (toList!2782 lm!1707)) lt!1551350))))

(assert (= (and d!1274919 res!1779426) b!4337537))

(assert (= (and b!4337537 (not res!1779425)) b!4337538))

(declare-fun m!4933765 () Bool)

(assert (=> d!1274919 m!4933765))

(declare-fun m!4933767 () Bool)

(assert (=> d!1274919 m!4933767))

(declare-fun m!4933769 () Bool)

(assert (=> b!4337538 m!4933769))

(assert (=> b!4337444 d!1274919))

(declare-fun b!4337550 () Bool)

(declare-fun e!2698935 () List!48831)

(assert (=> b!4337550 (= e!2698935 Nil!48707)))

(declare-fun b!4337549 () Bool)

(assert (=> b!4337549 (= e!2698935 (Cons!48707 (h!54214 lt!1551341) (removePairForKey!369 (t!355747 lt!1551341) key!3918)))))

(declare-fun b!4337548 () Bool)

(declare-fun e!2698934 () List!48831)

(assert (=> b!4337548 (= e!2698934 e!2698935)))

(declare-fun c!737494 () Bool)

(assert (=> b!4337548 (= c!737494 ((_ is Cons!48707) lt!1551341))))

(declare-fun d!1274921 () Bool)

(declare-fun lt!1551422 () List!48831)

(declare-fun containsKey!552 (List!48831 K!10065) Bool)

(assert (=> d!1274921 (not (containsKey!552 lt!1551422 key!3918))))

(assert (=> d!1274921 (= lt!1551422 e!2698934)))

(declare-fun c!737495 () Bool)

(assert (=> d!1274921 (= c!737495 (and ((_ is Cons!48707) lt!1551341) (= (_1!27277 (h!54214 lt!1551341)) key!3918)))))

(assert (=> d!1274921 (noDuplicateKeys!399 lt!1551341)))

(assert (=> d!1274921 (= (removePairForKey!369 lt!1551341 key!3918) lt!1551422)))

(declare-fun b!4337547 () Bool)

(assert (=> b!4337547 (= e!2698934 (t!355747 lt!1551341))))

(assert (= (and d!1274921 c!737495) b!4337547))

(assert (= (and d!1274921 (not c!737495)) b!4337548))

(assert (= (and b!4337548 c!737494) b!4337549))

(assert (= (and b!4337548 (not c!737494)) b!4337550))

(declare-fun m!4933771 () Bool)

(assert (=> b!4337549 m!4933771))

(declare-fun m!4933773 () Bool)

(assert (=> d!1274921 m!4933773))

(assert (=> d!1274921 m!4933657))

(assert (=> b!4337444 d!1274921))

(declare-fun d!1274923 () Bool)

(declare-fun res!1779431 () Bool)

(declare-fun e!2698940 () Bool)

(assert (=> d!1274923 (=> res!1779431 e!2698940)))

(assert (=> d!1274923 (= res!1779431 ((_ is Nil!48708) (toList!2782 lt!1551349)))))

(assert (=> d!1274923 (= (forall!8973 (toList!2782 lt!1551349) lambda!136339) e!2698940)))

(declare-fun b!4337555 () Bool)

(declare-fun e!2698941 () Bool)

(assert (=> b!4337555 (= e!2698940 e!2698941)))

(declare-fun res!1779432 () Bool)

(assert (=> b!4337555 (=> (not res!1779432) (not e!2698941))))

(assert (=> b!4337555 (= res!1779432 (dynLambda!20573 lambda!136339 (h!54215 (toList!2782 lt!1551349))))))

(declare-fun b!4337556 () Bool)

(assert (=> b!4337556 (= e!2698941 (forall!8973 (t!355748 (toList!2782 lt!1551349)) lambda!136339))))

(assert (= (and d!1274923 (not res!1779431)) b!4337555))

(assert (= (and b!4337555 res!1779432) b!4337556))

(declare-fun b_lambda!128403 () Bool)

(assert (=> (not b_lambda!128403) (not b!4337555)))

(declare-fun m!4933775 () Bool)

(assert (=> b!4337555 m!4933775))

(declare-fun m!4933777 () Bool)

(assert (=> b!4337556 m!4933777))

(assert (=> b!4337443 d!1274923))

(declare-fun d!1274925 () Bool)

(declare-fun res!1779437 () Bool)

(declare-fun e!2698946 () Bool)

(assert (=> d!1274925 (=> res!1779437 e!2698946)))

(assert (=> d!1274925 (= res!1779437 (not ((_ is Cons!48707) newBucket!200)))))

(assert (=> d!1274925 (= (noDuplicateKeys!399 newBucket!200) e!2698946)))

(declare-fun b!4337561 () Bool)

(declare-fun e!2698947 () Bool)

(assert (=> b!4337561 (= e!2698946 e!2698947)))

(declare-fun res!1779438 () Bool)

(assert (=> b!4337561 (=> (not res!1779438) (not e!2698947))))

(assert (=> b!4337561 (= res!1779438 (not (containsKey!552 (t!355747 newBucket!200) (_1!27277 (h!54214 newBucket!200)))))))

(declare-fun b!4337562 () Bool)

(assert (=> b!4337562 (= e!2698947 (noDuplicateKeys!399 (t!355747 newBucket!200)))))

(assert (= (and d!1274925 (not res!1779437)) b!4337561))

(assert (= (and b!4337561 res!1779438) b!4337562))

(declare-fun m!4933779 () Bool)

(assert (=> b!4337561 m!4933779))

(declare-fun m!4933781 () Bool)

(assert (=> b!4337562 m!4933781))

(assert (=> b!4337453 d!1274925))

(declare-fun d!1274927 () Bool)

(declare-fun e!2698963 () Bool)

(assert (=> d!1274927 e!2698963))

(declare-fun res!1779446 () Bool)

(assert (=> d!1274927 (=> res!1779446 e!2698963)))

(declare-fun e!2698962 () Bool)

(assert (=> d!1274927 (= res!1779446 e!2698962)))

(declare-fun res!1779445 () Bool)

(assert (=> d!1274927 (=> (not res!1779445) (not e!2698962))))

(declare-fun lt!1551449 () Bool)

(assert (=> d!1274927 (= res!1779445 (not lt!1551449))))

(declare-fun lt!1551451 () Bool)

(assert (=> d!1274927 (= lt!1551449 lt!1551451)))

(declare-fun lt!1551450 () Unit!68877)

(declare-fun e!2698965 () Unit!68877)

(assert (=> d!1274927 (= lt!1551450 e!2698965)))

(declare-fun c!737506 () Bool)

(assert (=> d!1274927 (= c!737506 lt!1551451)))

(declare-fun containsKey!553 (List!48831 K!10065) Bool)

(assert (=> d!1274927 (= lt!1551451 (containsKey!553 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918))))

(assert (=> d!1274927 (= (contains!10788 (extractMap!458 (toList!2782 lm!1707)) key!3918) lt!1551449)))

(declare-fun b!4337585 () Bool)

(declare-datatypes ((List!48834 0))(
  ( (Nil!48710) (Cons!48710 (h!54219 K!10065) (t!355750 List!48834)) )
))
(declare-fun contains!10790 (List!48834 K!10065) Bool)

(declare-fun keys!16392 (ListMap!2025) List!48834)

(assert (=> b!4337585 (= e!2698962 (not (contains!10790 (keys!16392 (extractMap!458 (toList!2782 lm!1707))) key!3918)))))

(declare-fun b!4337586 () Bool)

(declare-fun e!2698966 () Unit!68877)

(declare-fun Unit!68915 () Unit!68877)

(assert (=> b!4337586 (= e!2698966 Unit!68915)))

(declare-fun b!4337587 () Bool)

(declare-fun lt!1551448 () Unit!68877)

(assert (=> b!4337587 (= e!2698965 lt!1551448)))

(declare-fun lt!1551454 () Unit!68877)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!279 (List!48831 K!10065) Unit!68877)

(assert (=> b!4337587 (= lt!1551454 (lemmaContainsKeyImpliesGetValueByKeyDefined!279 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918))))

(declare-datatypes ((Option!10381 0))(
  ( (None!10380) (Some!10380 (v!43132 V!10311)) )
))
(declare-fun isDefined!7676 (Option!10381) Bool)

(declare-fun getValueByKey!367 (List!48831 K!10065) Option!10381)

(assert (=> b!4337587 (isDefined!7676 (getValueByKey!367 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918))))

(declare-fun lt!1551447 () Unit!68877)

(assert (=> b!4337587 (= lt!1551447 lt!1551454)))

(declare-fun lemmaInListThenGetKeysListContains!79 (List!48831 K!10065) Unit!68877)

(assert (=> b!4337587 (= lt!1551448 (lemmaInListThenGetKeysListContains!79 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918))))

(declare-fun call!301435 () Bool)

(assert (=> b!4337587 call!301435))

(declare-fun b!4337588 () Bool)

(declare-fun e!2698967 () List!48834)

(declare-fun getKeysList!82 (List!48831) List!48834)

(assert (=> b!4337588 (= e!2698967 (getKeysList!82 (toList!2781 (extractMap!458 (toList!2782 lm!1707)))))))

(declare-fun b!4337589 () Bool)

(declare-fun e!2698964 () Bool)

(assert (=> b!4337589 (= e!2698963 e!2698964)))

(declare-fun res!1779447 () Bool)

(assert (=> b!4337589 (=> (not res!1779447) (not e!2698964))))

(assert (=> b!4337589 (= res!1779447 (isDefined!7676 (getValueByKey!367 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918)))))

(declare-fun b!4337590 () Bool)

(assert (=> b!4337590 (= e!2698967 (keys!16392 (extractMap!458 (toList!2782 lm!1707))))))

(declare-fun bm!301430 () Bool)

(assert (=> bm!301430 (= call!301435 (contains!10790 e!2698967 key!3918))))

(declare-fun c!737505 () Bool)

(assert (=> bm!301430 (= c!737505 c!737506)))

(declare-fun b!4337591 () Bool)

(assert (=> b!4337591 false))

(declare-fun lt!1551452 () Unit!68877)

(declare-fun lt!1551453 () Unit!68877)

(assert (=> b!4337591 (= lt!1551452 lt!1551453)))

(assert (=> b!4337591 (containsKey!553 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!80 (List!48831 K!10065) Unit!68877)

(assert (=> b!4337591 (= lt!1551453 (lemmaInGetKeysListThenContainsKey!80 (toList!2781 (extractMap!458 (toList!2782 lm!1707))) key!3918))))

(declare-fun Unit!68916 () Unit!68877)

(assert (=> b!4337591 (= e!2698966 Unit!68916)))

(declare-fun b!4337592 () Bool)

(assert (=> b!4337592 (= e!2698965 e!2698966)))

(declare-fun c!737504 () Bool)

(assert (=> b!4337592 (= c!737504 call!301435)))

(declare-fun b!4337593 () Bool)

(assert (=> b!4337593 (= e!2698964 (contains!10790 (keys!16392 (extractMap!458 (toList!2782 lm!1707))) key!3918))))

(assert (= (and d!1274927 c!737506) b!4337587))

(assert (= (and d!1274927 (not c!737506)) b!4337592))

(assert (= (and b!4337592 c!737504) b!4337591))

(assert (= (and b!4337592 (not c!737504)) b!4337586))

(assert (= (or b!4337587 b!4337592) bm!301430))

(assert (= (and bm!301430 c!737505) b!4337588))

(assert (= (and bm!301430 (not c!737505)) b!4337590))

(assert (= (and d!1274927 res!1779445) b!4337585))

(assert (= (and d!1274927 (not res!1779446)) b!4337589))

(assert (= (and b!4337589 res!1779447) b!4337593))

(declare-fun m!4933783 () Bool)

(assert (=> b!4337591 m!4933783))

(declare-fun m!4933785 () Bool)

(assert (=> b!4337591 m!4933785))

(declare-fun m!4933787 () Bool)

(assert (=> b!4337589 m!4933787))

(assert (=> b!4337589 m!4933787))

(declare-fun m!4933789 () Bool)

(assert (=> b!4337589 m!4933789))

(declare-fun m!4933791 () Bool)

(assert (=> bm!301430 m!4933791))

(declare-fun m!4933793 () Bool)

(assert (=> b!4337587 m!4933793))

(assert (=> b!4337587 m!4933787))

(assert (=> b!4337587 m!4933787))

(assert (=> b!4337587 m!4933789))

(declare-fun m!4933795 () Bool)

(assert (=> b!4337587 m!4933795))

(assert (=> b!4337585 m!4933617))

(declare-fun m!4933797 () Bool)

(assert (=> b!4337585 m!4933797))

(assert (=> b!4337585 m!4933797))

(declare-fun m!4933799 () Bool)

(assert (=> b!4337585 m!4933799))

(assert (=> b!4337590 m!4933617))

(assert (=> b!4337590 m!4933797))

(assert (=> d!1274927 m!4933783))

(assert (=> b!4337593 m!4933617))

(assert (=> b!4337593 m!4933797))

(assert (=> b!4337593 m!4933797))

(assert (=> b!4337593 m!4933799))

(declare-fun m!4933801 () Bool)

(assert (=> b!4337588 m!4933801))

(assert (=> b!4337452 d!1274927))

(declare-fun bs!609286 () Bool)

(declare-fun d!1274929 () Bool)

(assert (= bs!609286 (and d!1274929 start!418468)))

(declare-fun lambda!136384 () Int)

(assert (=> bs!609286 (= lambda!136384 lambda!136339)))

(declare-fun bs!609287 () Bool)

(assert (= bs!609287 (and d!1274929 d!1274905)))

(assert (=> bs!609287 (not (= lambda!136384 lambda!136345))))

(declare-fun lt!1551513 () ListMap!2025)

(declare-fun invariantList!634 (List!48831) Bool)

(assert (=> d!1274929 (invariantList!634 (toList!2781 lt!1551513))))

(declare-fun e!2698978 () ListMap!2025)

(assert (=> d!1274929 (= lt!1551513 e!2698978)))

(declare-fun c!737511 () Bool)

(assert (=> d!1274929 (= c!737511 ((_ is Cons!48708) (toList!2782 lm!1707)))))

(assert (=> d!1274929 (forall!8973 (toList!2782 lm!1707) lambda!136384)))

(assert (=> d!1274929 (= (extractMap!458 (toList!2782 lm!1707)) lt!1551513)))

(declare-fun b!4337613 () Bool)

(assert (=> b!4337613 (= e!2698978 (addToMapMapFromBucket!107 (_2!27278 (h!54215 (toList!2782 lm!1707))) (extractMap!458 (t!355748 (toList!2782 lm!1707)))))))

(declare-fun b!4337614 () Bool)

(assert (=> b!4337614 (= e!2698978 (ListMap!2026 Nil!48707))))

(assert (= (and d!1274929 c!737511) b!4337613))

(assert (= (and d!1274929 (not c!737511)) b!4337614))

(declare-fun m!4933847 () Bool)

(assert (=> d!1274929 m!4933847))

(declare-fun m!4933849 () Bool)

(assert (=> d!1274929 m!4933849))

(assert (=> b!4337613 m!4933641))

(assert (=> b!4337613 m!4933641))

(declare-fun m!4933851 () Bool)

(assert (=> b!4337613 m!4933851))

(assert (=> b!4337452 d!1274929))

(declare-fun d!1274935 () Bool)

(declare-fun content!7617 (List!48831) (InoxSet tuple2!47966))

(assert (=> d!1274935 (= (eq!189 lt!1551346 lt!1551354) (= (content!7617 (toList!2781 lt!1551346)) (content!7617 (toList!2781 lt!1551354))))))

(declare-fun bs!609288 () Bool)

(assert (= bs!609288 d!1274935))

(declare-fun m!4933853 () Bool)

(assert (=> bs!609288 m!4933853))

(declare-fun m!4933855 () Bool)

(assert (=> bs!609288 m!4933855))

(assert (=> b!4337441 d!1274935))

(declare-fun d!1274937 () Bool)

(assert (=> d!1274937 true))

(assert (=> d!1274937 true))

(declare-fun lambda!136387 () Int)

(declare-fun forall!8975 (List!48831 Int) Bool)

(assert (=> d!1274937 (= (allKeysSameHash!357 newBucket!200 hash!377 hashF!1247) (forall!8975 newBucket!200 lambda!136387))))

(declare-fun bs!609289 () Bool)

(assert (= bs!609289 d!1274937))

(declare-fun m!4933857 () Bool)

(assert (=> bs!609289 m!4933857))

(assert (=> b!4337451 d!1274937))

(declare-fun d!1274939 () Bool)

(declare-fun res!1779457 () Bool)

(declare-fun e!2698979 () Bool)

(assert (=> d!1274939 (=> res!1779457 e!2698979)))

(assert (=> d!1274939 (= res!1779457 ((_ is Nil!48708) (toList!2782 lm!1707)))))

(assert (=> d!1274939 (= (forall!8973 (toList!2782 lm!1707) lambda!136339) e!2698979)))

(declare-fun b!4337619 () Bool)

(declare-fun e!2698980 () Bool)

(assert (=> b!4337619 (= e!2698979 e!2698980)))

(declare-fun res!1779458 () Bool)

(assert (=> b!4337619 (=> (not res!1779458) (not e!2698980))))

(assert (=> b!4337619 (= res!1779458 (dynLambda!20573 lambda!136339 (h!54215 (toList!2782 lm!1707))))))

(declare-fun b!4337620 () Bool)

(assert (=> b!4337620 (= e!2698980 (forall!8973 (t!355748 (toList!2782 lm!1707)) lambda!136339))))

(assert (= (and d!1274939 (not res!1779457)) b!4337619))

(assert (= (and b!4337619 res!1779458) b!4337620))

(declare-fun b_lambda!128405 () Bool)

(assert (=> (not b_lambda!128405) (not b!4337619)))

(declare-fun m!4933859 () Bool)

(assert (=> b!4337619 m!4933859))

(declare-fun m!4933861 () Bool)

(assert (=> b!4337620 m!4933861))

(assert (=> start!418468 d!1274939))

(declare-fun d!1274941 () Bool)

(assert (=> d!1274941 (= (inv!64251 lm!1707) (isStrictlySorted!60 (toList!2782 lm!1707)))))

(declare-fun bs!609290 () Bool)

(assert (= bs!609290 d!1274941))

(assert (=> bs!609290 m!4933763))

(assert (=> start!418468 d!1274941))

(declare-fun d!1274943 () Bool)

(declare-fun hash!1354 (Hashable!4791 K!10065) (_ BitVec 64))

(assert (=> d!1274943 (= (hash!1352 hashF!1247 key!3918) (hash!1354 hashF!1247 key!3918))))

(declare-fun bs!609292 () Bool)

(assert (= bs!609292 d!1274943))

(declare-fun m!4933865 () Bool)

(assert (=> bs!609292 m!4933865))

(assert (=> b!4337450 d!1274943))

(declare-fun d!1274945 () Bool)

(assert (=> d!1274945 (= (eq!189 lt!1551348 lt!1551354) (= (content!7617 (toList!2781 lt!1551348)) (content!7617 (toList!2781 lt!1551354))))))

(declare-fun bs!609293 () Bool)

(assert (= bs!609293 d!1274945))

(declare-fun m!4933875 () Bool)

(assert (=> bs!609293 m!4933875))

(assert (=> bs!609293 m!4933855))

(assert (=> b!4337448 d!1274945))

(declare-fun bs!609380 () Bool)

(declare-fun b!4337705 () Bool)

(assert (= bs!609380 (and b!4337705 d!1274937)))

(declare-fun lambda!136432 () Int)

(assert (=> bs!609380 (not (= lambda!136432 lambda!136387))))

(assert (=> b!4337705 true))

(declare-fun bs!609381 () Bool)

(declare-fun b!4337708 () Bool)

(assert (= bs!609381 (and b!4337708 d!1274937)))

(declare-fun lambda!136433 () Int)

(assert (=> bs!609381 (not (= lambda!136433 lambda!136387))))

(declare-fun bs!609382 () Bool)

(assert (= bs!609382 (and b!4337708 b!4337705)))

(assert (=> bs!609382 (= lambda!136433 lambda!136432)))

(assert (=> b!4337708 true))

(declare-fun lambda!136434 () Int)

(assert (=> bs!609381 (not (= lambda!136434 lambda!136387))))

(declare-fun lt!1551683 () ListMap!2025)

(assert (=> bs!609382 (= (= lt!1551683 lt!1551351) (= lambda!136434 lambda!136432))))

(assert (=> b!4337708 (= (= lt!1551683 lt!1551351) (= lambda!136434 lambda!136433))))

(assert (=> b!4337708 true))

(declare-fun bs!609383 () Bool)

(declare-fun d!1274947 () Bool)

(assert (= bs!609383 (and d!1274947 d!1274937)))

(declare-fun lambda!136435 () Int)

(assert (=> bs!609383 (not (= lambda!136435 lambda!136387))))

(declare-fun bs!609384 () Bool)

(assert (= bs!609384 (and d!1274947 b!4337705)))

(declare-fun lt!1551673 () ListMap!2025)

(assert (=> bs!609384 (= (= lt!1551673 lt!1551351) (= lambda!136435 lambda!136432))))

(declare-fun bs!609385 () Bool)

(assert (= bs!609385 (and d!1274947 b!4337708)))

(assert (=> bs!609385 (= (= lt!1551673 lt!1551351) (= lambda!136435 lambda!136433))))

(assert (=> bs!609385 (= (= lt!1551673 lt!1551683) (= lambda!136435 lambda!136434))))

(assert (=> d!1274947 true))

(declare-fun bm!301455 () Bool)

(declare-fun call!301460 () Unit!68877)

(declare-fun lemmaContainsAllItsOwnKeys!27 (ListMap!2025) Unit!68877)

(assert (=> bm!301455 (= call!301460 (lemmaContainsAllItsOwnKeys!27 lt!1551351))))

(declare-fun e!2699036 () ListMap!2025)

(assert (=> b!4337705 (= e!2699036 lt!1551351)))

(declare-fun lt!1551675 () Unit!68877)

(assert (=> b!4337705 (= lt!1551675 call!301460)))

(declare-fun call!301461 () Bool)

(assert (=> b!4337705 call!301461))

(declare-fun lt!1551677 () Unit!68877)

(assert (=> b!4337705 (= lt!1551677 lt!1551675)))

(declare-fun call!301462 () Bool)

(assert (=> b!4337705 call!301462))

(declare-fun lt!1551674 () Unit!68877)

(declare-fun Unit!68917 () Unit!68877)

(assert (=> b!4337705 (= lt!1551674 Unit!68917)))

(declare-fun e!2699035 () Bool)

(assert (=> d!1274947 e!2699035))

(declare-fun res!1779503 () Bool)

(assert (=> d!1274947 (=> (not res!1779503) (not e!2699035))))

(assert (=> d!1274947 (= res!1779503 (forall!8975 lt!1551344 lambda!136435))))

(assert (=> d!1274947 (= lt!1551673 e!2699036)))

(declare-fun c!737527 () Bool)

(assert (=> d!1274947 (= c!737527 ((_ is Nil!48707) lt!1551344))))

(assert (=> d!1274947 (noDuplicateKeys!399 lt!1551344)))

(assert (=> d!1274947 (= (addToMapMapFromBucket!107 lt!1551344 lt!1551351) lt!1551673)))

(declare-fun bm!301456 () Bool)

(assert (=> bm!301456 (= call!301461 (forall!8975 (ite c!737527 (toList!2781 lt!1551351) (t!355747 lt!1551344)) (ite c!737527 lambda!136432 lambda!136434)))))

(declare-fun b!4337706 () Bool)

(declare-fun e!2699034 () Bool)

(assert (=> b!4337706 (= e!2699034 (forall!8975 (toList!2781 lt!1551351) lambda!136434))))

(declare-fun bm!301457 () Bool)

(assert (=> bm!301457 (= call!301462 (forall!8975 (ite c!737527 (toList!2781 lt!1551351) lt!1551344) (ite c!737527 lambda!136432 lambda!136434)))))

(declare-fun b!4337707 () Bool)

(declare-fun res!1779501 () Bool)

(assert (=> b!4337707 (=> (not res!1779501) (not e!2699035))))

(assert (=> b!4337707 (= res!1779501 (forall!8975 (toList!2781 lt!1551351) lambda!136435))))

(assert (=> b!4337708 (= e!2699036 lt!1551683)))

(declare-fun lt!1551686 () ListMap!2025)

(assert (=> b!4337708 (= lt!1551686 (+!470 lt!1551351 (h!54214 lt!1551344)))))

(assert (=> b!4337708 (= lt!1551683 (addToMapMapFromBucket!107 (t!355747 lt!1551344) (+!470 lt!1551351 (h!54214 lt!1551344))))))

(declare-fun lt!1551684 () Unit!68877)

(assert (=> b!4337708 (= lt!1551684 call!301460)))

(assert (=> b!4337708 (forall!8975 (toList!2781 lt!1551351) lambda!136433)))

(declare-fun lt!1551669 () Unit!68877)

(assert (=> b!4337708 (= lt!1551669 lt!1551684)))

(assert (=> b!4337708 (forall!8975 (toList!2781 lt!1551686) lambda!136434)))

(declare-fun lt!1551667 () Unit!68877)

(declare-fun Unit!68918 () Unit!68877)

(assert (=> b!4337708 (= lt!1551667 Unit!68918)))

(assert (=> b!4337708 call!301461))

(declare-fun lt!1551685 () Unit!68877)

(declare-fun Unit!68919 () Unit!68877)

(assert (=> b!4337708 (= lt!1551685 Unit!68919)))

(declare-fun lt!1551679 () Unit!68877)

(declare-fun Unit!68920 () Unit!68877)

(assert (=> b!4337708 (= lt!1551679 Unit!68920)))

(declare-fun lt!1551671 () Unit!68877)

(declare-fun forallContained!1625 (List!48831 Int tuple2!47966) Unit!68877)

(assert (=> b!4337708 (= lt!1551671 (forallContained!1625 (toList!2781 lt!1551686) lambda!136434 (h!54214 lt!1551344)))))

(assert (=> b!4337708 (contains!10788 lt!1551686 (_1!27277 (h!54214 lt!1551344)))))

(declare-fun lt!1551682 () Unit!68877)

(declare-fun Unit!68921 () Unit!68877)

(assert (=> b!4337708 (= lt!1551682 Unit!68921)))

(assert (=> b!4337708 (contains!10788 lt!1551683 (_1!27277 (h!54214 lt!1551344)))))

(declare-fun lt!1551670 () Unit!68877)

(declare-fun Unit!68922 () Unit!68877)

(assert (=> b!4337708 (= lt!1551670 Unit!68922)))

(assert (=> b!4337708 call!301462))

(declare-fun lt!1551678 () Unit!68877)

(declare-fun Unit!68923 () Unit!68877)

(assert (=> b!4337708 (= lt!1551678 Unit!68923)))

(assert (=> b!4337708 (forall!8975 (toList!2781 lt!1551686) lambda!136434)))

(declare-fun lt!1551676 () Unit!68877)

(declare-fun Unit!68924 () Unit!68877)

(assert (=> b!4337708 (= lt!1551676 Unit!68924)))

(declare-fun lt!1551687 () Unit!68877)

(declare-fun Unit!68925 () Unit!68877)

(assert (=> b!4337708 (= lt!1551687 Unit!68925)))

(declare-fun lt!1551681 () Unit!68877)

(declare-fun addForallContainsKeyThenBeforeAdding!27 (ListMap!2025 ListMap!2025 K!10065 V!10311) Unit!68877)

(assert (=> b!4337708 (= lt!1551681 (addForallContainsKeyThenBeforeAdding!27 lt!1551351 lt!1551683 (_1!27277 (h!54214 lt!1551344)) (_2!27277 (h!54214 lt!1551344))))))

(assert (=> b!4337708 (forall!8975 (toList!2781 lt!1551351) lambda!136434)))

(declare-fun lt!1551668 () Unit!68877)

(assert (=> b!4337708 (= lt!1551668 lt!1551681)))

(assert (=> b!4337708 (forall!8975 (toList!2781 lt!1551351) lambda!136434)))

(declare-fun lt!1551672 () Unit!68877)

(declare-fun Unit!68926 () Unit!68877)

(assert (=> b!4337708 (= lt!1551672 Unit!68926)))

(declare-fun res!1779502 () Bool)

(assert (=> b!4337708 (= res!1779502 (forall!8975 lt!1551344 lambda!136434))))

(assert (=> b!4337708 (=> (not res!1779502) (not e!2699034))))

(assert (=> b!4337708 e!2699034))

(declare-fun lt!1551680 () Unit!68877)

(declare-fun Unit!68927 () Unit!68877)

(assert (=> b!4337708 (= lt!1551680 Unit!68927)))

(declare-fun b!4337709 () Bool)

(assert (=> b!4337709 (= e!2699035 (invariantList!634 (toList!2781 lt!1551673)))))

(assert (= (and d!1274947 c!737527) b!4337705))

(assert (= (and d!1274947 (not c!737527)) b!4337708))

(assert (= (and b!4337708 res!1779502) b!4337706))

(assert (= (or b!4337705 b!4337708) bm!301455))

(assert (= (or b!4337705 b!4337708) bm!301457))

(assert (= (or b!4337705 b!4337708) bm!301456))

(assert (= (and d!1274947 res!1779503) b!4337707))

(assert (= (and b!4337707 res!1779501) b!4337709))

(declare-fun m!4934067 () Bool)

(assert (=> bm!301455 m!4934067))

(declare-fun m!4934069 () Bool)

(assert (=> bm!301456 m!4934069))

(declare-fun m!4934071 () Bool)

(assert (=> b!4337708 m!4934071))

(declare-fun m!4934073 () Bool)

(assert (=> b!4337708 m!4934073))

(assert (=> b!4337708 m!4934073))

(declare-fun m!4934075 () Bool)

(assert (=> b!4337708 m!4934075))

(declare-fun m!4934077 () Bool)

(assert (=> b!4337708 m!4934077))

(declare-fun m!4934079 () Bool)

(assert (=> b!4337708 m!4934079))

(declare-fun m!4934081 () Bool)

(assert (=> b!4337708 m!4934081))

(declare-fun m!4934083 () Bool)

(assert (=> b!4337708 m!4934083))

(assert (=> b!4337708 m!4934071))

(declare-fun m!4934085 () Bool)

(assert (=> b!4337708 m!4934085))

(declare-fun m!4934087 () Bool)

(assert (=> b!4337708 m!4934087))

(assert (=> b!4337708 m!4934077))

(declare-fun m!4934089 () Bool)

(assert (=> b!4337708 m!4934089))

(declare-fun m!4934091 () Bool)

(assert (=> b!4337707 m!4934091))

(assert (=> b!4337706 m!4934073))

(declare-fun m!4934093 () Bool)

(assert (=> bm!301457 m!4934093))

(declare-fun m!4934095 () Bool)

(assert (=> b!4337709 m!4934095))

(declare-fun m!4934097 () Bool)

(assert (=> d!1274947 m!4934097))

(declare-fun m!4934099 () Bool)

(assert (=> d!1274947 m!4934099))

(assert (=> b!4337448 d!1274947))

(declare-fun d!1274991 () Bool)

(declare-fun e!2699039 () Bool)

(assert (=> d!1274991 e!2699039))

(declare-fun res!1779508 () Bool)

(assert (=> d!1274991 (=> (not res!1779508) (not e!2699039))))

(declare-fun lt!1551699 () ListMap!2025)

(assert (=> d!1274991 (= res!1779508 (contains!10788 lt!1551699 (_1!27277 lt!1551343)))))

(declare-fun lt!1551698 () List!48831)

(assert (=> d!1274991 (= lt!1551699 (ListMap!2026 lt!1551698))))

(declare-fun lt!1551697 () Unit!68877)

(declare-fun lt!1551696 () Unit!68877)

(assert (=> d!1274991 (= lt!1551697 lt!1551696)))

(assert (=> d!1274991 (= (getValueByKey!367 lt!1551698 (_1!27277 lt!1551343)) (Some!10380 (_2!27277 lt!1551343)))))

(declare-fun lemmaContainsTupThenGetReturnValue!149 (List!48831 K!10065 V!10311) Unit!68877)

(assert (=> d!1274991 (= lt!1551696 (lemmaContainsTupThenGetReturnValue!149 lt!1551698 (_1!27277 lt!1551343) (_2!27277 lt!1551343)))))

(declare-fun insertNoDuplicatedKeys!67 (List!48831 K!10065 V!10311) List!48831)

(assert (=> d!1274991 (= lt!1551698 (insertNoDuplicatedKeys!67 (toList!2781 (addToMapMapFromBucket!107 lt!1551344 lt!1551351)) (_1!27277 lt!1551343) (_2!27277 lt!1551343)))))

(assert (=> d!1274991 (= (+!470 (addToMapMapFromBucket!107 lt!1551344 lt!1551351) lt!1551343) lt!1551699)))

(declare-fun b!4337716 () Bool)

(declare-fun res!1779509 () Bool)

(assert (=> b!4337716 (=> (not res!1779509) (not e!2699039))))

(assert (=> b!4337716 (= res!1779509 (= (getValueByKey!367 (toList!2781 lt!1551699) (_1!27277 lt!1551343)) (Some!10380 (_2!27277 lt!1551343))))))

(declare-fun b!4337717 () Bool)

(declare-fun contains!10792 (List!48831 tuple2!47966) Bool)

(assert (=> b!4337717 (= e!2699039 (contains!10792 (toList!2781 lt!1551699) lt!1551343))))

(assert (= (and d!1274991 res!1779508) b!4337716))

(assert (= (and b!4337716 res!1779509) b!4337717))

(declare-fun m!4934101 () Bool)

(assert (=> d!1274991 m!4934101))

(declare-fun m!4934103 () Bool)

(assert (=> d!1274991 m!4934103))

(declare-fun m!4934105 () Bool)

(assert (=> d!1274991 m!4934105))

(declare-fun m!4934107 () Bool)

(assert (=> d!1274991 m!4934107))

(declare-fun m!4934109 () Bool)

(assert (=> b!4337716 m!4934109))

(declare-fun m!4934111 () Bool)

(assert (=> b!4337717 m!4934111))

(assert (=> b!4337448 d!1274991))

(declare-fun bs!609386 () Bool)

(declare-fun d!1274993 () Bool)

(assert (= bs!609386 (and d!1274993 start!418468)))

(declare-fun lambda!136436 () Int)

(assert (=> bs!609386 (= lambda!136436 lambda!136339)))

(declare-fun bs!609387 () Bool)

(assert (= bs!609387 (and d!1274993 d!1274905)))

(assert (=> bs!609387 (not (= lambda!136436 lambda!136345))))

(declare-fun bs!609388 () Bool)

(assert (= bs!609388 (and d!1274993 d!1274929)))

(assert (=> bs!609388 (= lambda!136436 lambda!136384)))

(declare-fun lt!1551700 () ListMap!2025)

(assert (=> d!1274993 (invariantList!634 (toList!2781 lt!1551700))))

(declare-fun e!2699040 () ListMap!2025)

(assert (=> d!1274993 (= lt!1551700 e!2699040)))

(declare-fun c!737528 () Bool)

(assert (=> d!1274993 (= c!737528 ((_ is Cons!48708) (toList!2782 lt!1551349)))))

(assert (=> d!1274993 (forall!8973 (toList!2782 lt!1551349) lambda!136436)))

(assert (=> d!1274993 (= (extractMap!458 (toList!2782 lt!1551349)) lt!1551700)))

(declare-fun b!4337718 () Bool)

(assert (=> b!4337718 (= e!2699040 (addToMapMapFromBucket!107 (_2!27278 (h!54215 (toList!2782 lt!1551349))) (extractMap!458 (t!355748 (toList!2782 lt!1551349)))))))

(declare-fun b!4337719 () Bool)

(assert (=> b!4337719 (= e!2699040 (ListMap!2026 Nil!48707))))

(assert (= (and d!1274993 c!737528) b!4337718))

(assert (= (and d!1274993 (not c!737528)) b!4337719))

(declare-fun m!4934113 () Bool)

(assert (=> d!1274993 m!4934113))

(declare-fun m!4934115 () Bool)

(assert (=> d!1274993 m!4934115))

(declare-fun m!4934117 () Bool)

(assert (=> b!4337718 m!4934117))

(assert (=> b!4337718 m!4934117))

(declare-fun m!4934119 () Bool)

(assert (=> b!4337718 m!4934119))

(assert (=> b!4337448 d!1274993))

(declare-fun d!1274995 () Bool)

(assert (=> d!1274995 (= (tail!6897 newBucket!200) (t!355747 newBucket!200))))

(assert (=> b!4337448 d!1274995))

(declare-fun bs!609389 () Bool)

(declare-fun b!4337720 () Bool)

(assert (= bs!609389 (and b!4337720 b!4337705)))

(declare-fun lambda!136437 () Int)

(assert (=> bs!609389 (= lambda!136437 lambda!136432)))

(declare-fun bs!609390 () Bool)

(assert (= bs!609390 (and b!4337720 d!1274947)))

(assert (=> bs!609390 (= (= lt!1551351 lt!1551673) (= lambda!136437 lambda!136435))))

(declare-fun bs!609391 () Bool)

(assert (= bs!609391 (and b!4337720 d!1274937)))

(assert (=> bs!609391 (not (= lambda!136437 lambda!136387))))

(declare-fun bs!609392 () Bool)

(assert (= bs!609392 (and b!4337720 b!4337708)))

(assert (=> bs!609392 (= (= lt!1551351 lt!1551683) (= lambda!136437 lambda!136434))))

(assert (=> bs!609392 (= lambda!136437 lambda!136433)))

(assert (=> b!4337720 true))

(declare-fun bs!609393 () Bool)

(declare-fun b!4337723 () Bool)

(assert (= bs!609393 (and b!4337723 b!4337720)))

(declare-fun lambda!136438 () Int)

(assert (=> bs!609393 (= lambda!136438 lambda!136437)))

(declare-fun bs!609394 () Bool)

(assert (= bs!609394 (and b!4337723 b!4337705)))

(assert (=> bs!609394 (= lambda!136438 lambda!136432)))

(declare-fun bs!609395 () Bool)

(assert (= bs!609395 (and b!4337723 d!1274947)))

(assert (=> bs!609395 (= (= lt!1551351 lt!1551673) (= lambda!136438 lambda!136435))))

(declare-fun bs!609396 () Bool)

(assert (= bs!609396 (and b!4337723 d!1274937)))

(assert (=> bs!609396 (not (= lambda!136438 lambda!136387))))

(declare-fun bs!609397 () Bool)

(assert (= bs!609397 (and b!4337723 b!4337708)))

(assert (=> bs!609397 (= (= lt!1551351 lt!1551683) (= lambda!136438 lambda!136434))))

(assert (=> bs!609397 (= lambda!136438 lambda!136433)))

(assert (=> b!4337723 true))

(declare-fun lt!1551717 () ListMap!2025)

(declare-fun lambda!136439 () Int)

(assert (=> bs!609394 (= (= lt!1551717 lt!1551351) (= lambda!136439 lambda!136432))))

(assert (=> bs!609395 (= (= lt!1551717 lt!1551673) (= lambda!136439 lambda!136435))))

(assert (=> bs!609396 (not (= lambda!136439 lambda!136387))))

(assert (=> b!4337723 (= (= lt!1551717 lt!1551351) (= lambda!136439 lambda!136438))))

(assert (=> bs!609393 (= (= lt!1551717 lt!1551351) (= lambda!136439 lambda!136437))))

(assert (=> bs!609397 (= (= lt!1551717 lt!1551683) (= lambda!136439 lambda!136434))))

(assert (=> bs!609397 (= (= lt!1551717 lt!1551351) (= lambda!136439 lambda!136433))))

(assert (=> b!4337723 true))

(declare-fun bs!609398 () Bool)

(declare-fun d!1274997 () Bool)

(assert (= bs!609398 (and d!1274997 b!4337705)))

(declare-fun lambda!136440 () Int)

(declare-fun lt!1551707 () ListMap!2025)

(assert (=> bs!609398 (= (= lt!1551707 lt!1551351) (= lambda!136440 lambda!136432))))

(declare-fun bs!609399 () Bool)

(assert (= bs!609399 (and d!1274997 b!4337723)))

(assert (=> bs!609399 (= (= lt!1551707 lt!1551717) (= lambda!136440 lambda!136439))))

(declare-fun bs!609400 () Bool)

(assert (= bs!609400 (and d!1274997 d!1274947)))

(assert (=> bs!609400 (= (= lt!1551707 lt!1551673) (= lambda!136440 lambda!136435))))

(declare-fun bs!609401 () Bool)

(assert (= bs!609401 (and d!1274997 d!1274937)))

(assert (=> bs!609401 (not (= lambda!136440 lambda!136387))))

(assert (=> bs!609399 (= (= lt!1551707 lt!1551351) (= lambda!136440 lambda!136438))))

(declare-fun bs!609402 () Bool)

(assert (= bs!609402 (and d!1274997 b!4337720)))

(assert (=> bs!609402 (= (= lt!1551707 lt!1551351) (= lambda!136440 lambda!136437))))

(declare-fun bs!609403 () Bool)

(assert (= bs!609403 (and d!1274997 b!4337708)))

(assert (=> bs!609403 (= (= lt!1551707 lt!1551683) (= lambda!136440 lambda!136434))))

(assert (=> bs!609403 (= (= lt!1551707 lt!1551351) (= lambda!136440 lambda!136433))))

(assert (=> d!1274997 true))

(declare-fun bm!301458 () Bool)

(declare-fun call!301463 () Unit!68877)

(assert (=> bm!301458 (= call!301463 (lemmaContainsAllItsOwnKeys!27 lt!1551351))))

(declare-fun e!2699043 () ListMap!2025)

(assert (=> b!4337720 (= e!2699043 lt!1551351)))

(declare-fun lt!1551709 () Unit!68877)

(assert (=> b!4337720 (= lt!1551709 call!301463)))

(declare-fun call!301464 () Bool)

(assert (=> b!4337720 call!301464))

(declare-fun lt!1551711 () Unit!68877)

(assert (=> b!4337720 (= lt!1551711 lt!1551709)))

(declare-fun call!301465 () Bool)

(assert (=> b!4337720 call!301465))

(declare-fun lt!1551708 () Unit!68877)

(declare-fun Unit!68939 () Unit!68877)

(assert (=> b!4337720 (= lt!1551708 Unit!68939)))

(declare-fun e!2699042 () Bool)

(assert (=> d!1274997 e!2699042))

(declare-fun res!1779512 () Bool)

(assert (=> d!1274997 (=> (not res!1779512) (not e!2699042))))

(assert (=> d!1274997 (= res!1779512 (forall!8975 lt!1551353 lambda!136440))))

(assert (=> d!1274997 (= lt!1551707 e!2699043)))

(declare-fun c!737529 () Bool)

(assert (=> d!1274997 (= c!737529 ((_ is Nil!48707) lt!1551353))))

(assert (=> d!1274997 (noDuplicateKeys!399 lt!1551353)))

(assert (=> d!1274997 (= (addToMapMapFromBucket!107 lt!1551353 lt!1551351) lt!1551707)))

(declare-fun bm!301459 () Bool)

(assert (=> bm!301459 (= call!301464 (forall!8975 (ite c!737529 (toList!2781 lt!1551351) (t!355747 lt!1551353)) (ite c!737529 lambda!136437 lambda!136439)))))

(declare-fun b!4337721 () Bool)

(declare-fun e!2699041 () Bool)

(assert (=> b!4337721 (= e!2699041 (forall!8975 (toList!2781 lt!1551351) lambda!136439))))

(declare-fun bm!301460 () Bool)

(assert (=> bm!301460 (= call!301465 (forall!8975 (ite c!737529 (toList!2781 lt!1551351) lt!1551353) (ite c!737529 lambda!136437 lambda!136439)))))

(declare-fun b!4337722 () Bool)

(declare-fun res!1779510 () Bool)

(assert (=> b!4337722 (=> (not res!1779510) (not e!2699042))))

(assert (=> b!4337722 (= res!1779510 (forall!8975 (toList!2781 lt!1551351) lambda!136440))))

(assert (=> b!4337723 (= e!2699043 lt!1551717)))

(declare-fun lt!1551720 () ListMap!2025)

(assert (=> b!4337723 (= lt!1551720 (+!470 lt!1551351 (h!54214 lt!1551353)))))

(assert (=> b!4337723 (= lt!1551717 (addToMapMapFromBucket!107 (t!355747 lt!1551353) (+!470 lt!1551351 (h!54214 lt!1551353))))))

(declare-fun lt!1551718 () Unit!68877)

(assert (=> b!4337723 (= lt!1551718 call!301463)))

(assert (=> b!4337723 (forall!8975 (toList!2781 lt!1551351) lambda!136438)))

(declare-fun lt!1551703 () Unit!68877)

(assert (=> b!4337723 (= lt!1551703 lt!1551718)))

(assert (=> b!4337723 (forall!8975 (toList!2781 lt!1551720) lambda!136439)))

(declare-fun lt!1551701 () Unit!68877)

(declare-fun Unit!68940 () Unit!68877)

(assert (=> b!4337723 (= lt!1551701 Unit!68940)))

(assert (=> b!4337723 call!301464))

(declare-fun lt!1551719 () Unit!68877)

(declare-fun Unit!68941 () Unit!68877)

(assert (=> b!4337723 (= lt!1551719 Unit!68941)))

(declare-fun lt!1551713 () Unit!68877)

(declare-fun Unit!68942 () Unit!68877)

(assert (=> b!4337723 (= lt!1551713 Unit!68942)))

(declare-fun lt!1551705 () Unit!68877)

(assert (=> b!4337723 (= lt!1551705 (forallContained!1625 (toList!2781 lt!1551720) lambda!136439 (h!54214 lt!1551353)))))

(assert (=> b!4337723 (contains!10788 lt!1551720 (_1!27277 (h!54214 lt!1551353)))))

(declare-fun lt!1551716 () Unit!68877)

(declare-fun Unit!68943 () Unit!68877)

(assert (=> b!4337723 (= lt!1551716 Unit!68943)))

(assert (=> b!4337723 (contains!10788 lt!1551717 (_1!27277 (h!54214 lt!1551353)))))

(declare-fun lt!1551704 () Unit!68877)

(declare-fun Unit!68944 () Unit!68877)

(assert (=> b!4337723 (= lt!1551704 Unit!68944)))

(assert (=> b!4337723 call!301465))

(declare-fun lt!1551712 () Unit!68877)

(declare-fun Unit!68945 () Unit!68877)

(assert (=> b!4337723 (= lt!1551712 Unit!68945)))

(assert (=> b!4337723 (forall!8975 (toList!2781 lt!1551720) lambda!136439)))

(declare-fun lt!1551710 () Unit!68877)

(declare-fun Unit!68946 () Unit!68877)

(assert (=> b!4337723 (= lt!1551710 Unit!68946)))

(declare-fun lt!1551721 () Unit!68877)

(declare-fun Unit!68947 () Unit!68877)

(assert (=> b!4337723 (= lt!1551721 Unit!68947)))

(declare-fun lt!1551715 () Unit!68877)

(assert (=> b!4337723 (= lt!1551715 (addForallContainsKeyThenBeforeAdding!27 lt!1551351 lt!1551717 (_1!27277 (h!54214 lt!1551353)) (_2!27277 (h!54214 lt!1551353))))))

(assert (=> b!4337723 (forall!8975 (toList!2781 lt!1551351) lambda!136439)))

(declare-fun lt!1551702 () Unit!68877)

(assert (=> b!4337723 (= lt!1551702 lt!1551715)))

(assert (=> b!4337723 (forall!8975 (toList!2781 lt!1551351) lambda!136439)))

(declare-fun lt!1551706 () Unit!68877)

(declare-fun Unit!68948 () Unit!68877)

(assert (=> b!4337723 (= lt!1551706 Unit!68948)))

(declare-fun res!1779511 () Bool)

(assert (=> b!4337723 (= res!1779511 (forall!8975 lt!1551353 lambda!136439))))

(assert (=> b!4337723 (=> (not res!1779511) (not e!2699041))))

(assert (=> b!4337723 e!2699041))

(declare-fun lt!1551714 () Unit!68877)

(declare-fun Unit!68949 () Unit!68877)

(assert (=> b!4337723 (= lt!1551714 Unit!68949)))

(declare-fun b!4337724 () Bool)

(assert (=> b!4337724 (= e!2699042 (invariantList!634 (toList!2781 lt!1551707)))))

(assert (= (and d!1274997 c!737529) b!4337720))

(assert (= (and d!1274997 (not c!737529)) b!4337723))

(assert (= (and b!4337723 res!1779511) b!4337721))

(assert (= (or b!4337720 b!4337723) bm!301458))

(assert (= (or b!4337720 b!4337723) bm!301460))

(assert (= (or b!4337720 b!4337723) bm!301459))

(assert (= (and d!1274997 res!1779512) b!4337722))

(assert (= (and b!4337722 res!1779510) b!4337724))

(assert (=> bm!301458 m!4934067))

(declare-fun m!4934121 () Bool)

(assert (=> bm!301459 m!4934121))

(declare-fun m!4934123 () Bool)

(assert (=> b!4337723 m!4934123))

(declare-fun m!4934125 () Bool)

(assert (=> b!4337723 m!4934125))

(assert (=> b!4337723 m!4934125))

(declare-fun m!4934127 () Bool)

(assert (=> b!4337723 m!4934127))

(declare-fun m!4934129 () Bool)

(assert (=> b!4337723 m!4934129))

(declare-fun m!4934131 () Bool)

(assert (=> b!4337723 m!4934131))

(declare-fun m!4934133 () Bool)

(assert (=> b!4337723 m!4934133))

(declare-fun m!4934135 () Bool)

(assert (=> b!4337723 m!4934135))

(assert (=> b!4337723 m!4934123))

(declare-fun m!4934137 () Bool)

(assert (=> b!4337723 m!4934137))

(declare-fun m!4934139 () Bool)

(assert (=> b!4337723 m!4934139))

(assert (=> b!4337723 m!4934129))

(declare-fun m!4934141 () Bool)

(assert (=> b!4337723 m!4934141))

(declare-fun m!4934143 () Bool)

(assert (=> b!4337722 m!4934143))

(assert (=> b!4337721 m!4934125))

(declare-fun m!4934145 () Bool)

(assert (=> bm!301460 m!4934145))

(declare-fun m!4934147 () Bool)

(assert (=> b!4337724 m!4934147))

(declare-fun m!4934149 () Bool)

(assert (=> d!1274997 m!4934149))

(declare-fun m!4934151 () Bool)

(assert (=> d!1274997 m!4934151))

(assert (=> b!4337448 d!1274997))

(declare-fun bs!609404 () Bool)

(declare-fun d!1274999 () Bool)

(assert (= bs!609404 (and d!1274999 start!418468)))

(declare-fun lambda!136441 () Int)

(assert (=> bs!609404 (= lambda!136441 lambda!136339)))

(declare-fun bs!609405 () Bool)

(assert (= bs!609405 (and d!1274999 d!1274905)))

(assert (=> bs!609405 (not (= lambda!136441 lambda!136345))))

(declare-fun bs!609406 () Bool)

(assert (= bs!609406 (and d!1274999 d!1274929)))

(assert (=> bs!609406 (= lambda!136441 lambda!136384)))

(declare-fun bs!609407 () Bool)

(assert (= bs!609407 (and d!1274999 d!1274993)))

(assert (=> bs!609407 (= lambda!136441 lambda!136436)))

(declare-fun lt!1551722 () ListMap!2025)

(assert (=> d!1274999 (invariantList!634 (toList!2781 lt!1551722))))

(declare-fun e!2699044 () ListMap!2025)

(assert (=> d!1274999 (= lt!1551722 e!2699044)))

(declare-fun c!737530 () Bool)

(assert (=> d!1274999 (= c!737530 ((_ is Cons!48708) (t!355748 (toList!2782 lm!1707))))))

(assert (=> d!1274999 (forall!8973 (t!355748 (toList!2782 lm!1707)) lambda!136441)))

(assert (=> d!1274999 (= (extractMap!458 (t!355748 (toList!2782 lm!1707))) lt!1551722)))

(declare-fun b!4337725 () Bool)

(assert (=> b!4337725 (= e!2699044 (addToMapMapFromBucket!107 (_2!27278 (h!54215 (t!355748 (toList!2782 lm!1707)))) (extractMap!458 (t!355748 (t!355748 (toList!2782 lm!1707))))))))

(declare-fun b!4337726 () Bool)

(assert (=> b!4337726 (= e!2699044 (ListMap!2026 Nil!48707))))

(assert (= (and d!1274999 c!737530) b!4337725))

(assert (= (and d!1274999 (not c!737530)) b!4337726))

(declare-fun m!4934153 () Bool)

(assert (=> d!1274999 m!4934153))

(declare-fun m!4934155 () Bool)

(assert (=> d!1274999 m!4934155))

(declare-fun m!4934157 () Bool)

(assert (=> b!4337725 m!4934157))

(assert (=> b!4337725 m!4934157))

(declare-fun m!4934159 () Bool)

(assert (=> b!4337725 m!4934159))

(assert (=> b!4337448 d!1274999))

(declare-fun d!1275001 () Bool)

(declare-fun e!2699045 () Bool)

(assert (=> d!1275001 e!2699045))

(declare-fun res!1779513 () Bool)

(assert (=> d!1275001 (=> (not res!1779513) (not e!2699045))))

(declare-fun lt!1551726 () ListMap!2025)

(assert (=> d!1275001 (= res!1779513 (contains!10788 lt!1551726 (_1!27277 lt!1551343)))))

(declare-fun lt!1551725 () List!48831)

(assert (=> d!1275001 (= lt!1551726 (ListMap!2026 lt!1551725))))

(declare-fun lt!1551724 () Unit!68877)

(declare-fun lt!1551723 () Unit!68877)

(assert (=> d!1275001 (= lt!1551724 lt!1551723)))

(assert (=> d!1275001 (= (getValueByKey!367 lt!1551725 (_1!27277 lt!1551343)) (Some!10380 (_2!27277 lt!1551343)))))

(assert (=> d!1275001 (= lt!1551723 (lemmaContainsTupThenGetReturnValue!149 lt!1551725 (_1!27277 lt!1551343) (_2!27277 lt!1551343)))))

(assert (=> d!1275001 (= lt!1551725 (insertNoDuplicatedKeys!67 (toList!2781 lt!1551351) (_1!27277 lt!1551343) (_2!27277 lt!1551343)))))

(assert (=> d!1275001 (= (+!470 lt!1551351 lt!1551343) lt!1551726)))

(declare-fun b!4337727 () Bool)

(declare-fun res!1779514 () Bool)

(assert (=> b!4337727 (=> (not res!1779514) (not e!2699045))))

(assert (=> b!4337727 (= res!1779514 (= (getValueByKey!367 (toList!2781 lt!1551726) (_1!27277 lt!1551343)) (Some!10380 (_2!27277 lt!1551343))))))

(declare-fun b!4337728 () Bool)

(assert (=> b!4337728 (= e!2699045 (contains!10792 (toList!2781 lt!1551726) lt!1551343))))

(assert (= (and d!1275001 res!1779513) b!4337727))

(assert (= (and b!4337727 res!1779514) b!4337728))

(declare-fun m!4934161 () Bool)

(assert (=> d!1275001 m!4934161))

(declare-fun m!4934163 () Bool)

(assert (=> d!1275001 m!4934163))

(declare-fun m!4934165 () Bool)

(assert (=> d!1275001 m!4934165))

(declare-fun m!4934167 () Bool)

(assert (=> d!1275001 m!4934167))

(declare-fun m!4934169 () Bool)

(assert (=> b!4337727 m!4934169))

(declare-fun m!4934171 () Bool)

(assert (=> b!4337728 m!4934171))

(assert (=> b!4337448 d!1275001))

(declare-fun bs!609408 () Bool)

(declare-fun b!4337729 () Bool)

(assert (= bs!609408 (and b!4337729 d!1274997)))

(declare-fun lambda!136442 () Int)

(assert (=> bs!609408 (= (= (+!470 lt!1551351 lt!1551343) lt!1551707) (= lambda!136442 lambda!136440))))

(declare-fun bs!609409 () Bool)

(assert (= bs!609409 (and b!4337729 b!4337705)))

(assert (=> bs!609409 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136442 lambda!136432))))

(declare-fun bs!609410 () Bool)

(assert (= bs!609410 (and b!4337729 b!4337723)))

(assert (=> bs!609410 (= (= (+!470 lt!1551351 lt!1551343) lt!1551717) (= lambda!136442 lambda!136439))))

(declare-fun bs!609411 () Bool)

(assert (= bs!609411 (and b!4337729 d!1274947)))

(assert (=> bs!609411 (= (= (+!470 lt!1551351 lt!1551343) lt!1551673) (= lambda!136442 lambda!136435))))

(declare-fun bs!609412 () Bool)

(assert (= bs!609412 (and b!4337729 d!1274937)))

(assert (=> bs!609412 (not (= lambda!136442 lambda!136387))))

(assert (=> bs!609410 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136442 lambda!136438))))

(declare-fun bs!609413 () Bool)

(assert (= bs!609413 (and b!4337729 b!4337720)))

(assert (=> bs!609413 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136442 lambda!136437))))

(declare-fun bs!609414 () Bool)

(assert (= bs!609414 (and b!4337729 b!4337708)))

(assert (=> bs!609414 (= (= (+!470 lt!1551351 lt!1551343) lt!1551683) (= lambda!136442 lambda!136434))))

(assert (=> bs!609414 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136442 lambda!136433))))

(assert (=> b!4337729 true))

(declare-fun bs!609415 () Bool)

(declare-fun b!4337732 () Bool)

(assert (= bs!609415 (and b!4337732 d!1274997)))

(declare-fun lambda!136443 () Int)

(assert (=> bs!609415 (= (= (+!470 lt!1551351 lt!1551343) lt!1551707) (= lambda!136443 lambda!136440))))

(declare-fun bs!609416 () Bool)

(assert (= bs!609416 (and b!4337732 b!4337729)))

(assert (=> bs!609416 (= lambda!136443 lambda!136442)))

(declare-fun bs!609417 () Bool)

(assert (= bs!609417 (and b!4337732 b!4337705)))

(assert (=> bs!609417 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136443 lambda!136432))))

(declare-fun bs!609418 () Bool)

(assert (= bs!609418 (and b!4337732 b!4337723)))

(assert (=> bs!609418 (= (= (+!470 lt!1551351 lt!1551343) lt!1551717) (= lambda!136443 lambda!136439))))

(declare-fun bs!609419 () Bool)

(assert (= bs!609419 (and b!4337732 d!1274947)))

(assert (=> bs!609419 (= (= (+!470 lt!1551351 lt!1551343) lt!1551673) (= lambda!136443 lambda!136435))))

(declare-fun bs!609420 () Bool)

(assert (= bs!609420 (and b!4337732 d!1274937)))

(assert (=> bs!609420 (not (= lambda!136443 lambda!136387))))

(assert (=> bs!609418 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136443 lambda!136438))))

(declare-fun bs!609421 () Bool)

(assert (= bs!609421 (and b!4337732 b!4337720)))

(assert (=> bs!609421 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136443 lambda!136437))))

(declare-fun bs!609422 () Bool)

(assert (= bs!609422 (and b!4337732 b!4337708)))

(assert (=> bs!609422 (= (= (+!470 lt!1551351 lt!1551343) lt!1551683) (= lambda!136443 lambda!136434))))

(assert (=> bs!609422 (= (= (+!470 lt!1551351 lt!1551343) lt!1551351) (= lambda!136443 lambda!136433))))

(assert (=> b!4337732 true))

(declare-fun lambda!136444 () Int)

(declare-fun lt!1551743 () ListMap!2025)

(assert (=> bs!609415 (= (= lt!1551743 lt!1551707) (= lambda!136444 lambda!136440))))

(assert (=> bs!609416 (= (= lt!1551743 (+!470 lt!1551351 lt!1551343)) (= lambda!136444 lambda!136442))))

(assert (=> bs!609417 (= (= lt!1551743 lt!1551351) (= lambda!136444 lambda!136432))))

(assert (=> bs!609418 (= (= lt!1551743 lt!1551717) (= lambda!136444 lambda!136439))))

(assert (=> bs!609419 (= (= lt!1551743 lt!1551673) (= lambda!136444 lambda!136435))))

(assert (=> b!4337732 (= (= lt!1551743 (+!470 lt!1551351 lt!1551343)) (= lambda!136444 lambda!136443))))

(assert (=> bs!609420 (not (= lambda!136444 lambda!136387))))

(assert (=> bs!609418 (= (= lt!1551743 lt!1551351) (= lambda!136444 lambda!136438))))

(assert (=> bs!609421 (= (= lt!1551743 lt!1551351) (= lambda!136444 lambda!136437))))

(assert (=> bs!609422 (= (= lt!1551743 lt!1551683) (= lambda!136444 lambda!136434))))

(assert (=> bs!609422 (= (= lt!1551743 lt!1551351) (= lambda!136444 lambda!136433))))

(assert (=> b!4337732 true))

(declare-fun bs!609423 () Bool)

(declare-fun d!1275003 () Bool)

(assert (= bs!609423 (and d!1275003 d!1274997)))

(declare-fun lambda!136445 () Int)

(declare-fun lt!1551733 () ListMap!2025)

(assert (=> bs!609423 (= (= lt!1551733 lt!1551707) (= lambda!136445 lambda!136440))))

(declare-fun bs!609424 () Bool)

(assert (= bs!609424 (and d!1275003 b!4337729)))

(assert (=> bs!609424 (= (= lt!1551733 (+!470 lt!1551351 lt!1551343)) (= lambda!136445 lambda!136442))))

(declare-fun bs!609425 () Bool)

(assert (= bs!609425 (and d!1275003 b!4337705)))

(assert (=> bs!609425 (= (= lt!1551733 lt!1551351) (= lambda!136445 lambda!136432))))

(declare-fun bs!609426 () Bool)

(assert (= bs!609426 (and d!1275003 b!4337723)))

(assert (=> bs!609426 (= (= lt!1551733 lt!1551717) (= lambda!136445 lambda!136439))))

(declare-fun bs!609427 () Bool)

(assert (= bs!609427 (and d!1275003 d!1274947)))

(assert (=> bs!609427 (= (= lt!1551733 lt!1551673) (= lambda!136445 lambda!136435))))

(declare-fun bs!609428 () Bool)

(assert (= bs!609428 (and d!1275003 b!4337732)))

(assert (=> bs!609428 (= (= lt!1551733 (+!470 lt!1551351 lt!1551343)) (= lambda!136445 lambda!136443))))

(declare-fun bs!609429 () Bool)

(assert (= bs!609429 (and d!1275003 d!1274937)))

(assert (=> bs!609429 (not (= lambda!136445 lambda!136387))))

(assert (=> bs!609428 (= (= lt!1551733 lt!1551743) (= lambda!136445 lambda!136444))))

(assert (=> bs!609426 (= (= lt!1551733 lt!1551351) (= lambda!136445 lambda!136438))))

(declare-fun bs!609430 () Bool)

(assert (= bs!609430 (and d!1275003 b!4337720)))

(assert (=> bs!609430 (= (= lt!1551733 lt!1551351) (= lambda!136445 lambda!136437))))

(declare-fun bs!609431 () Bool)

(assert (= bs!609431 (and d!1275003 b!4337708)))

(assert (=> bs!609431 (= (= lt!1551733 lt!1551683) (= lambda!136445 lambda!136434))))

(assert (=> bs!609431 (= (= lt!1551733 lt!1551351) (= lambda!136445 lambda!136433))))

(assert (=> d!1275003 true))

(declare-fun bm!301461 () Bool)

(declare-fun call!301466 () Unit!68877)

(assert (=> bm!301461 (= call!301466 (lemmaContainsAllItsOwnKeys!27 (+!470 lt!1551351 lt!1551343)))))

(declare-fun e!2699048 () ListMap!2025)

(assert (=> b!4337729 (= e!2699048 (+!470 lt!1551351 lt!1551343))))

(declare-fun lt!1551735 () Unit!68877)

(assert (=> b!4337729 (= lt!1551735 call!301466)))

(declare-fun call!301467 () Bool)

(assert (=> b!4337729 call!301467))

(declare-fun lt!1551737 () Unit!68877)

(assert (=> b!4337729 (= lt!1551737 lt!1551735)))

(declare-fun call!301468 () Bool)

(assert (=> b!4337729 call!301468))

(declare-fun lt!1551734 () Unit!68877)

(declare-fun Unit!68951 () Unit!68877)

(assert (=> b!4337729 (= lt!1551734 Unit!68951)))

(declare-fun e!2699047 () Bool)

(assert (=> d!1275003 e!2699047))

(declare-fun res!1779517 () Bool)

(assert (=> d!1275003 (=> (not res!1779517) (not e!2699047))))

(assert (=> d!1275003 (= res!1779517 (forall!8975 lt!1551344 lambda!136445))))

(assert (=> d!1275003 (= lt!1551733 e!2699048)))

(declare-fun c!737531 () Bool)

(assert (=> d!1275003 (= c!737531 ((_ is Nil!48707) lt!1551344))))

(assert (=> d!1275003 (noDuplicateKeys!399 lt!1551344)))

(assert (=> d!1275003 (= (addToMapMapFromBucket!107 lt!1551344 (+!470 lt!1551351 lt!1551343)) lt!1551733)))

(declare-fun bm!301462 () Bool)

(assert (=> bm!301462 (= call!301467 (forall!8975 (ite c!737531 (toList!2781 (+!470 lt!1551351 lt!1551343)) (t!355747 lt!1551344)) (ite c!737531 lambda!136442 lambda!136444)))))

(declare-fun e!2699046 () Bool)

(declare-fun b!4337730 () Bool)

(assert (=> b!4337730 (= e!2699046 (forall!8975 (toList!2781 (+!470 lt!1551351 lt!1551343)) lambda!136444))))

(declare-fun bm!301463 () Bool)

(assert (=> bm!301463 (= call!301468 (forall!8975 (ite c!737531 (toList!2781 (+!470 lt!1551351 lt!1551343)) lt!1551344) (ite c!737531 lambda!136442 lambda!136444)))))

(declare-fun b!4337731 () Bool)

(declare-fun res!1779515 () Bool)

(assert (=> b!4337731 (=> (not res!1779515) (not e!2699047))))

(assert (=> b!4337731 (= res!1779515 (forall!8975 (toList!2781 (+!470 lt!1551351 lt!1551343)) lambda!136445))))

(assert (=> b!4337732 (= e!2699048 lt!1551743)))

(declare-fun lt!1551746 () ListMap!2025)

(assert (=> b!4337732 (= lt!1551746 (+!470 (+!470 lt!1551351 lt!1551343) (h!54214 lt!1551344)))))

(assert (=> b!4337732 (= lt!1551743 (addToMapMapFromBucket!107 (t!355747 lt!1551344) (+!470 (+!470 lt!1551351 lt!1551343) (h!54214 lt!1551344))))))

(declare-fun lt!1551744 () Unit!68877)

(assert (=> b!4337732 (= lt!1551744 call!301466)))

(assert (=> b!4337732 (forall!8975 (toList!2781 (+!470 lt!1551351 lt!1551343)) lambda!136443)))

(declare-fun lt!1551729 () Unit!68877)

(assert (=> b!4337732 (= lt!1551729 lt!1551744)))

(assert (=> b!4337732 (forall!8975 (toList!2781 lt!1551746) lambda!136444)))

(declare-fun lt!1551727 () Unit!68877)

(declare-fun Unit!68952 () Unit!68877)

(assert (=> b!4337732 (= lt!1551727 Unit!68952)))

(assert (=> b!4337732 call!301467))

(declare-fun lt!1551745 () Unit!68877)

(declare-fun Unit!68953 () Unit!68877)

(assert (=> b!4337732 (= lt!1551745 Unit!68953)))

(declare-fun lt!1551739 () Unit!68877)

(declare-fun Unit!68954 () Unit!68877)

(assert (=> b!4337732 (= lt!1551739 Unit!68954)))

(declare-fun lt!1551731 () Unit!68877)

(assert (=> b!4337732 (= lt!1551731 (forallContained!1625 (toList!2781 lt!1551746) lambda!136444 (h!54214 lt!1551344)))))

(assert (=> b!4337732 (contains!10788 lt!1551746 (_1!27277 (h!54214 lt!1551344)))))

(declare-fun lt!1551742 () Unit!68877)

(declare-fun Unit!68955 () Unit!68877)

(assert (=> b!4337732 (= lt!1551742 Unit!68955)))

(assert (=> b!4337732 (contains!10788 lt!1551743 (_1!27277 (h!54214 lt!1551344)))))

(declare-fun lt!1551730 () Unit!68877)

(declare-fun Unit!68956 () Unit!68877)

(assert (=> b!4337732 (= lt!1551730 Unit!68956)))

(assert (=> b!4337732 call!301468))

(declare-fun lt!1551738 () Unit!68877)

(declare-fun Unit!68957 () Unit!68877)

(assert (=> b!4337732 (= lt!1551738 Unit!68957)))

(assert (=> b!4337732 (forall!8975 (toList!2781 lt!1551746) lambda!136444)))

(declare-fun lt!1551736 () Unit!68877)

(declare-fun Unit!68958 () Unit!68877)

(assert (=> b!4337732 (= lt!1551736 Unit!68958)))

(declare-fun lt!1551747 () Unit!68877)

(declare-fun Unit!68959 () Unit!68877)

(assert (=> b!4337732 (= lt!1551747 Unit!68959)))

(declare-fun lt!1551741 () Unit!68877)

(assert (=> b!4337732 (= lt!1551741 (addForallContainsKeyThenBeforeAdding!27 (+!470 lt!1551351 lt!1551343) lt!1551743 (_1!27277 (h!54214 lt!1551344)) (_2!27277 (h!54214 lt!1551344))))))

(assert (=> b!4337732 (forall!8975 (toList!2781 (+!470 lt!1551351 lt!1551343)) lambda!136444)))

(declare-fun lt!1551728 () Unit!68877)

(assert (=> b!4337732 (= lt!1551728 lt!1551741)))

(assert (=> b!4337732 (forall!8975 (toList!2781 (+!470 lt!1551351 lt!1551343)) lambda!136444)))

(declare-fun lt!1551732 () Unit!68877)

(declare-fun Unit!68960 () Unit!68877)

(assert (=> b!4337732 (= lt!1551732 Unit!68960)))

(declare-fun res!1779516 () Bool)

(assert (=> b!4337732 (= res!1779516 (forall!8975 lt!1551344 lambda!136444))))

(assert (=> b!4337732 (=> (not res!1779516) (not e!2699046))))

(assert (=> b!4337732 e!2699046))

(declare-fun lt!1551740 () Unit!68877)

(declare-fun Unit!68961 () Unit!68877)

(assert (=> b!4337732 (= lt!1551740 Unit!68961)))

(declare-fun b!4337733 () Bool)

(assert (=> b!4337733 (= e!2699047 (invariantList!634 (toList!2781 lt!1551733)))))

(assert (= (and d!1275003 c!737531) b!4337729))

(assert (= (and d!1275003 (not c!737531)) b!4337732))

(assert (= (and b!4337732 res!1779516) b!4337730))

(assert (= (or b!4337729 b!4337732) bm!301461))

(assert (= (or b!4337729 b!4337732) bm!301463))

(assert (= (or b!4337729 b!4337732) bm!301462))

(assert (= (and d!1275003 res!1779517) b!4337731))

(assert (= (and b!4337731 res!1779515) b!4337733))

(assert (=> bm!301461 m!4933643))

(declare-fun m!4934173 () Bool)

(assert (=> bm!301461 m!4934173))

(declare-fun m!4934175 () Bool)

(assert (=> bm!301462 m!4934175))

(declare-fun m!4934177 () Bool)

(assert (=> b!4337732 m!4934177))

(declare-fun m!4934179 () Bool)

(assert (=> b!4337732 m!4934179))

(assert (=> b!4337732 m!4934179))

(assert (=> b!4337732 m!4933643))

(declare-fun m!4934181 () Bool)

(assert (=> b!4337732 m!4934181))

(assert (=> b!4337732 m!4933643))

(declare-fun m!4934183 () Bool)

(assert (=> b!4337732 m!4934183))

(declare-fun m!4934185 () Bool)

(assert (=> b!4337732 m!4934185))

(declare-fun m!4934187 () Bool)

(assert (=> b!4337732 m!4934187))

(declare-fun m!4934189 () Bool)

(assert (=> b!4337732 m!4934189))

(assert (=> b!4337732 m!4934177))

(declare-fun m!4934191 () Bool)

(assert (=> b!4337732 m!4934191))

(declare-fun m!4934193 () Bool)

(assert (=> b!4337732 m!4934193))

(assert (=> b!4337732 m!4934183))

(declare-fun m!4934195 () Bool)

(assert (=> b!4337732 m!4934195))

(declare-fun m!4934197 () Bool)

(assert (=> b!4337731 m!4934197))

(assert (=> b!4337730 m!4934179))

(declare-fun m!4934199 () Bool)

(assert (=> bm!301463 m!4934199))

(declare-fun m!4934201 () Bool)

(assert (=> b!4337733 m!4934201))

(declare-fun m!4934203 () Bool)

(assert (=> d!1275003 m!4934203))

(assert (=> d!1275003 m!4934099))

(assert (=> b!4337448 d!1275003))

(declare-fun d!1275005 () Bool)

(declare-fun e!2699051 () Bool)

(assert (=> d!1275005 e!2699051))

(declare-fun res!1779522 () Bool)

(assert (=> d!1275005 (=> (not res!1779522) (not e!2699051))))

(declare-fun lt!1551757 () ListLongMap!1431)

(assert (=> d!1275005 (= res!1779522 (contains!10787 lt!1551757 (_1!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200)))))))

(declare-fun lt!1551756 () List!48832)

(assert (=> d!1275005 (= lt!1551757 (ListLongMap!1432 lt!1551756))))

(declare-fun lt!1551759 () Unit!68877)

(declare-fun lt!1551758 () Unit!68877)

(assert (=> d!1275005 (= lt!1551759 lt!1551758)))

(assert (=> d!1275005 (= (getValueByKey!366 lt!1551756 (_1!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200)))) (Some!10379 (_2!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!150 (List!48832 (_ BitVec 64) List!48831) Unit!68877)

(assert (=> d!1275005 (= lt!1551758 (lemmaContainsTupThenGetReturnValue!150 lt!1551756 (_1!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200))) (_2!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200)))))))

(declare-fun insertStrictlySorted!91 (List!48832 (_ BitVec 64) List!48831) List!48832)

(assert (=> d!1275005 (= lt!1551756 (insertStrictlySorted!91 (toList!2782 lm!1707) (_1!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200))) (_2!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200)))))))

(assert (=> d!1275005 (= (+!469 lm!1707 (tuple2!47969 hash!377 (tail!6897 newBucket!200))) lt!1551757)))

(declare-fun b!4337738 () Bool)

(declare-fun res!1779523 () Bool)

(assert (=> b!4337738 (=> (not res!1779523) (not e!2699051))))

(assert (=> b!4337738 (= res!1779523 (= (getValueByKey!366 (toList!2782 lt!1551757) (_1!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200)))) (Some!10379 (_2!27278 (tuple2!47969 hash!377 (tail!6897 newBucket!200))))))))

(declare-fun b!4337739 () Bool)

(assert (=> b!4337739 (= e!2699051 (contains!10786 (toList!2782 lt!1551757) (tuple2!47969 hash!377 (tail!6897 newBucket!200))))))

(assert (= (and d!1275005 res!1779522) b!4337738))

(assert (= (and b!4337738 res!1779523) b!4337739))

(declare-fun m!4934205 () Bool)

(assert (=> d!1275005 m!4934205))

(declare-fun m!4934207 () Bool)

(assert (=> d!1275005 m!4934207))

(declare-fun m!4934209 () Bool)

(assert (=> d!1275005 m!4934209))

(declare-fun m!4934211 () Bool)

(assert (=> d!1275005 m!4934211))

(declare-fun m!4934213 () Bool)

(assert (=> b!4337738 m!4934213))

(declare-fun m!4934215 () Bool)

(assert (=> b!4337739 m!4934215))

(assert (=> b!4337448 d!1275005))

(declare-fun d!1275007 () Bool)

(declare-fun res!1779524 () Bool)

(declare-fun e!2699052 () Bool)

(assert (=> d!1275007 (=> res!1779524 e!2699052)))

(assert (=> d!1275007 (= res!1779524 (not ((_ is Cons!48707) lt!1551341)))))

(assert (=> d!1275007 (= (noDuplicateKeys!399 lt!1551341) e!2699052)))

(declare-fun b!4337740 () Bool)

(declare-fun e!2699053 () Bool)

(assert (=> b!4337740 (= e!2699052 e!2699053)))

(declare-fun res!1779525 () Bool)

(assert (=> b!4337740 (=> (not res!1779525) (not e!2699053))))

(assert (=> b!4337740 (= res!1779525 (not (containsKey!552 (t!355747 lt!1551341) (_1!27277 (h!54214 lt!1551341)))))))

(declare-fun b!4337741 () Bool)

(assert (=> b!4337741 (= e!2699053 (noDuplicateKeys!399 (t!355747 lt!1551341)))))

(assert (= (and d!1275007 (not res!1779524)) b!4337740))

(assert (= (and b!4337740 res!1779525) b!4337741))

(declare-fun m!4934217 () Bool)

(assert (=> b!4337740 m!4934217))

(declare-fun m!4934219 () Bool)

(assert (=> b!4337741 m!4934219))

(assert (=> b!4337448 d!1275007))

(declare-fun bs!609432 () Bool)

(declare-fun b!4337742 () Bool)

(assert (= bs!609432 (and b!4337742 d!1274997)))

(declare-fun lambda!136446 () Int)

(assert (=> bs!609432 (= (= lt!1551351 lt!1551707) (= lambda!136446 lambda!136440))))

(declare-fun bs!609433 () Bool)

(assert (= bs!609433 (and b!4337742 b!4337729)))

(assert (=> bs!609433 (= (= lt!1551351 (+!470 lt!1551351 lt!1551343)) (= lambda!136446 lambda!136442))))

(declare-fun bs!609434 () Bool)

(assert (= bs!609434 (and b!4337742 b!4337705)))

(assert (=> bs!609434 (= lambda!136446 lambda!136432)))

(declare-fun bs!609435 () Bool)

(assert (= bs!609435 (and b!4337742 b!4337723)))

(assert (=> bs!609435 (= (= lt!1551351 lt!1551717) (= lambda!136446 lambda!136439))))

(declare-fun bs!609436 () Bool)

(assert (= bs!609436 (and b!4337742 d!1274947)))

(assert (=> bs!609436 (= (= lt!1551351 lt!1551673) (= lambda!136446 lambda!136435))))

(declare-fun bs!609437 () Bool)

(assert (= bs!609437 (and b!4337742 b!4337732)))

(assert (=> bs!609437 (= (= lt!1551351 (+!470 lt!1551351 lt!1551343)) (= lambda!136446 lambda!136443))))

(declare-fun bs!609438 () Bool)

(assert (= bs!609438 (and b!4337742 d!1275003)))

(assert (=> bs!609438 (= (= lt!1551351 lt!1551733) (= lambda!136446 lambda!136445))))

(declare-fun bs!609439 () Bool)

(assert (= bs!609439 (and b!4337742 d!1274937)))

(assert (=> bs!609439 (not (= lambda!136446 lambda!136387))))

(assert (=> bs!609437 (= (= lt!1551351 lt!1551743) (= lambda!136446 lambda!136444))))

(assert (=> bs!609435 (= lambda!136446 lambda!136438)))

(declare-fun bs!609440 () Bool)

(assert (= bs!609440 (and b!4337742 b!4337720)))

(assert (=> bs!609440 (= lambda!136446 lambda!136437)))

(declare-fun bs!609441 () Bool)

(assert (= bs!609441 (and b!4337742 b!4337708)))

(assert (=> bs!609441 (= (= lt!1551351 lt!1551683) (= lambda!136446 lambda!136434))))

(assert (=> bs!609441 (= lambda!136446 lambda!136433)))

(assert (=> b!4337742 true))

(declare-fun bs!609442 () Bool)

(declare-fun b!4337745 () Bool)

(assert (= bs!609442 (and b!4337745 d!1274997)))

(declare-fun lambda!136447 () Int)

(assert (=> bs!609442 (= (= lt!1551351 lt!1551707) (= lambda!136447 lambda!136440))))

(declare-fun bs!609443 () Bool)

(assert (= bs!609443 (and b!4337745 b!4337729)))

(assert (=> bs!609443 (= (= lt!1551351 (+!470 lt!1551351 lt!1551343)) (= lambda!136447 lambda!136442))))

(declare-fun bs!609444 () Bool)

(assert (= bs!609444 (and b!4337745 b!4337705)))

(assert (=> bs!609444 (= lambda!136447 lambda!136432)))

(declare-fun bs!609445 () Bool)

(assert (= bs!609445 (and b!4337745 b!4337723)))

(assert (=> bs!609445 (= (= lt!1551351 lt!1551717) (= lambda!136447 lambda!136439))))

(declare-fun bs!609446 () Bool)

(assert (= bs!609446 (and b!4337745 d!1274947)))

(assert (=> bs!609446 (= (= lt!1551351 lt!1551673) (= lambda!136447 lambda!136435))))

(declare-fun bs!609447 () Bool)

(assert (= bs!609447 (and b!4337745 b!4337732)))

(assert (=> bs!609447 (= (= lt!1551351 (+!470 lt!1551351 lt!1551343)) (= lambda!136447 lambda!136443))))

(declare-fun bs!609448 () Bool)

(assert (= bs!609448 (and b!4337745 d!1275003)))

(assert (=> bs!609448 (= (= lt!1551351 lt!1551733) (= lambda!136447 lambda!136445))))

(declare-fun bs!609449 () Bool)

(assert (= bs!609449 (and b!4337745 d!1274937)))

(assert (=> bs!609449 (not (= lambda!136447 lambda!136387))))

(assert (=> bs!609447 (= (= lt!1551351 lt!1551743) (= lambda!136447 lambda!136444))))

(declare-fun bs!609450 () Bool)

(assert (= bs!609450 (and b!4337745 b!4337742)))

(assert (=> bs!609450 (= lambda!136447 lambda!136446)))

(assert (=> bs!609445 (= lambda!136447 lambda!136438)))

(declare-fun bs!609451 () Bool)

(assert (= bs!609451 (and b!4337745 b!4337720)))

(assert (=> bs!609451 (= lambda!136447 lambda!136437)))

(declare-fun bs!609452 () Bool)

(assert (= bs!609452 (and b!4337745 b!4337708)))

(assert (=> bs!609452 (= (= lt!1551351 lt!1551683) (= lambda!136447 lambda!136434))))

(assert (=> bs!609452 (= lambda!136447 lambda!136433)))

(assert (=> b!4337745 true))

(declare-fun lt!1551776 () ListMap!2025)

(declare-fun lambda!136448 () Int)

(assert (=> bs!609442 (= (= lt!1551776 lt!1551707) (= lambda!136448 lambda!136440))))

(assert (=> bs!609443 (= (= lt!1551776 (+!470 lt!1551351 lt!1551343)) (= lambda!136448 lambda!136442))))

(assert (=> bs!609444 (= (= lt!1551776 lt!1551351) (= lambda!136448 lambda!136432))))

(assert (=> bs!609445 (= (= lt!1551776 lt!1551717) (= lambda!136448 lambda!136439))))

(assert (=> bs!609446 (= (= lt!1551776 lt!1551673) (= lambda!136448 lambda!136435))))

(assert (=> bs!609447 (= (= lt!1551776 (+!470 lt!1551351 lt!1551343)) (= lambda!136448 lambda!136443))))

(assert (=> bs!609448 (= (= lt!1551776 lt!1551733) (= lambda!136448 lambda!136445))))

(assert (=> bs!609447 (= (= lt!1551776 lt!1551743) (= lambda!136448 lambda!136444))))

(assert (=> bs!609450 (= (= lt!1551776 lt!1551351) (= lambda!136448 lambda!136446))))

(assert (=> bs!609445 (= (= lt!1551776 lt!1551351) (= lambda!136448 lambda!136438))))

(assert (=> bs!609451 (= (= lt!1551776 lt!1551351) (= lambda!136448 lambda!136437))))

(assert (=> b!4337745 (= (= lt!1551776 lt!1551351) (= lambda!136448 lambda!136447))))

(assert (=> bs!609449 (not (= lambda!136448 lambda!136387))))

(assert (=> bs!609452 (= (= lt!1551776 lt!1551683) (= lambda!136448 lambda!136434))))

(assert (=> bs!609452 (= (= lt!1551776 lt!1551351) (= lambda!136448 lambda!136433))))

(assert (=> b!4337745 true))

(declare-fun bs!609453 () Bool)

(declare-fun d!1275009 () Bool)

(assert (= bs!609453 (and d!1275009 d!1274997)))

(declare-fun lt!1551766 () ListMap!2025)

(declare-fun lambda!136449 () Int)

(assert (=> bs!609453 (= (= lt!1551766 lt!1551707) (= lambda!136449 lambda!136440))))

(declare-fun bs!609454 () Bool)

(assert (= bs!609454 (and d!1275009 b!4337745)))

(assert (=> bs!609454 (= (= lt!1551766 lt!1551776) (= lambda!136449 lambda!136448))))

(declare-fun bs!609455 () Bool)

(assert (= bs!609455 (and d!1275009 b!4337729)))

(assert (=> bs!609455 (= (= lt!1551766 (+!470 lt!1551351 lt!1551343)) (= lambda!136449 lambda!136442))))

(declare-fun bs!609456 () Bool)

(assert (= bs!609456 (and d!1275009 b!4337705)))

(assert (=> bs!609456 (= (= lt!1551766 lt!1551351) (= lambda!136449 lambda!136432))))

(declare-fun bs!609457 () Bool)

(assert (= bs!609457 (and d!1275009 b!4337723)))

(assert (=> bs!609457 (= (= lt!1551766 lt!1551717) (= lambda!136449 lambda!136439))))

(declare-fun bs!609458 () Bool)

(assert (= bs!609458 (and d!1275009 d!1274947)))

(assert (=> bs!609458 (= (= lt!1551766 lt!1551673) (= lambda!136449 lambda!136435))))

(declare-fun bs!609459 () Bool)

(assert (= bs!609459 (and d!1275009 b!4337732)))

(assert (=> bs!609459 (= (= lt!1551766 (+!470 lt!1551351 lt!1551343)) (= lambda!136449 lambda!136443))))

(declare-fun bs!609460 () Bool)

(assert (= bs!609460 (and d!1275009 d!1275003)))

(assert (=> bs!609460 (= (= lt!1551766 lt!1551733) (= lambda!136449 lambda!136445))))

(assert (=> bs!609459 (= (= lt!1551766 lt!1551743) (= lambda!136449 lambda!136444))))

(declare-fun bs!609461 () Bool)

(assert (= bs!609461 (and d!1275009 b!4337742)))

(assert (=> bs!609461 (= (= lt!1551766 lt!1551351) (= lambda!136449 lambda!136446))))

(assert (=> bs!609457 (= (= lt!1551766 lt!1551351) (= lambda!136449 lambda!136438))))

(declare-fun bs!609462 () Bool)

(assert (= bs!609462 (and d!1275009 b!4337720)))

(assert (=> bs!609462 (= (= lt!1551766 lt!1551351) (= lambda!136449 lambda!136437))))

(assert (=> bs!609454 (= (= lt!1551766 lt!1551351) (= lambda!136449 lambda!136447))))

(declare-fun bs!609463 () Bool)

(assert (= bs!609463 (and d!1275009 d!1274937)))

(assert (=> bs!609463 (not (= lambda!136449 lambda!136387))))

(declare-fun bs!609464 () Bool)

(assert (= bs!609464 (and d!1275009 b!4337708)))

(assert (=> bs!609464 (= (= lt!1551766 lt!1551683) (= lambda!136449 lambda!136434))))

(assert (=> bs!609464 (= (= lt!1551766 lt!1551351) (= lambda!136449 lambda!136433))))

(assert (=> d!1275009 true))

(declare-fun bm!301464 () Bool)

(declare-fun call!301469 () Unit!68877)

(assert (=> bm!301464 (= call!301469 (lemmaContainsAllItsOwnKeys!27 lt!1551351))))

(declare-fun e!2699056 () ListMap!2025)

(assert (=> b!4337742 (= e!2699056 lt!1551351)))

(declare-fun lt!1551768 () Unit!68877)

(assert (=> b!4337742 (= lt!1551768 call!301469)))

(declare-fun call!301470 () Bool)

(assert (=> b!4337742 call!301470))

(declare-fun lt!1551770 () Unit!68877)

(assert (=> b!4337742 (= lt!1551770 lt!1551768)))

(declare-fun call!301471 () Bool)

(assert (=> b!4337742 call!301471))

(declare-fun lt!1551767 () Unit!68877)

(declare-fun Unit!68962 () Unit!68877)

(assert (=> b!4337742 (= lt!1551767 Unit!68962)))

(declare-fun e!2699055 () Bool)

(assert (=> d!1275009 e!2699055))

(declare-fun res!1779528 () Bool)

(assert (=> d!1275009 (=> (not res!1779528) (not e!2699055))))

(assert (=> d!1275009 (= res!1779528 (forall!8975 newBucket!200 lambda!136449))))

(assert (=> d!1275009 (= lt!1551766 e!2699056)))

(declare-fun c!737532 () Bool)

(assert (=> d!1275009 (= c!737532 ((_ is Nil!48707) newBucket!200))))

(assert (=> d!1275009 (noDuplicateKeys!399 newBucket!200)))

(assert (=> d!1275009 (= (addToMapMapFromBucket!107 newBucket!200 lt!1551351) lt!1551766)))

(declare-fun bm!301465 () Bool)

(assert (=> bm!301465 (= call!301470 (forall!8975 (ite c!737532 (toList!2781 lt!1551351) (t!355747 newBucket!200)) (ite c!737532 lambda!136446 lambda!136448)))))

(declare-fun b!4337743 () Bool)

(declare-fun e!2699054 () Bool)

(assert (=> b!4337743 (= e!2699054 (forall!8975 (toList!2781 lt!1551351) lambda!136448))))

(declare-fun bm!301466 () Bool)

(assert (=> bm!301466 (= call!301471 (forall!8975 (ite c!737532 (toList!2781 lt!1551351) newBucket!200) (ite c!737532 lambda!136446 lambda!136448)))))

(declare-fun b!4337744 () Bool)

(declare-fun res!1779526 () Bool)

(assert (=> b!4337744 (=> (not res!1779526) (not e!2699055))))

(assert (=> b!4337744 (= res!1779526 (forall!8975 (toList!2781 lt!1551351) lambda!136449))))

(assert (=> b!4337745 (= e!2699056 lt!1551776)))

(declare-fun lt!1551779 () ListMap!2025)

(assert (=> b!4337745 (= lt!1551779 (+!470 lt!1551351 (h!54214 newBucket!200)))))

(assert (=> b!4337745 (= lt!1551776 (addToMapMapFromBucket!107 (t!355747 newBucket!200) (+!470 lt!1551351 (h!54214 newBucket!200))))))

(declare-fun lt!1551777 () Unit!68877)

(assert (=> b!4337745 (= lt!1551777 call!301469)))

(assert (=> b!4337745 (forall!8975 (toList!2781 lt!1551351) lambda!136447)))

(declare-fun lt!1551762 () Unit!68877)

(assert (=> b!4337745 (= lt!1551762 lt!1551777)))

(assert (=> b!4337745 (forall!8975 (toList!2781 lt!1551779) lambda!136448)))

(declare-fun lt!1551760 () Unit!68877)

(declare-fun Unit!68963 () Unit!68877)

(assert (=> b!4337745 (= lt!1551760 Unit!68963)))

(assert (=> b!4337745 call!301470))

(declare-fun lt!1551778 () Unit!68877)

(declare-fun Unit!68964 () Unit!68877)

(assert (=> b!4337745 (= lt!1551778 Unit!68964)))

(declare-fun lt!1551772 () Unit!68877)

(declare-fun Unit!68965 () Unit!68877)

(assert (=> b!4337745 (= lt!1551772 Unit!68965)))

(declare-fun lt!1551764 () Unit!68877)

(assert (=> b!4337745 (= lt!1551764 (forallContained!1625 (toList!2781 lt!1551779) lambda!136448 (h!54214 newBucket!200)))))

(assert (=> b!4337745 (contains!10788 lt!1551779 (_1!27277 (h!54214 newBucket!200)))))

(declare-fun lt!1551775 () Unit!68877)

(declare-fun Unit!68966 () Unit!68877)

(assert (=> b!4337745 (= lt!1551775 Unit!68966)))

(assert (=> b!4337745 (contains!10788 lt!1551776 (_1!27277 (h!54214 newBucket!200)))))

(declare-fun lt!1551763 () Unit!68877)

(declare-fun Unit!68967 () Unit!68877)

(assert (=> b!4337745 (= lt!1551763 Unit!68967)))

(assert (=> b!4337745 call!301471))

(declare-fun lt!1551771 () Unit!68877)

(declare-fun Unit!68968 () Unit!68877)

(assert (=> b!4337745 (= lt!1551771 Unit!68968)))

(assert (=> b!4337745 (forall!8975 (toList!2781 lt!1551779) lambda!136448)))

(declare-fun lt!1551769 () Unit!68877)

(declare-fun Unit!68969 () Unit!68877)

(assert (=> b!4337745 (= lt!1551769 Unit!68969)))

(declare-fun lt!1551780 () Unit!68877)

(declare-fun Unit!68970 () Unit!68877)

(assert (=> b!4337745 (= lt!1551780 Unit!68970)))

(declare-fun lt!1551774 () Unit!68877)

(assert (=> b!4337745 (= lt!1551774 (addForallContainsKeyThenBeforeAdding!27 lt!1551351 lt!1551776 (_1!27277 (h!54214 newBucket!200)) (_2!27277 (h!54214 newBucket!200))))))

(assert (=> b!4337745 (forall!8975 (toList!2781 lt!1551351) lambda!136448)))

(declare-fun lt!1551761 () Unit!68877)

(assert (=> b!4337745 (= lt!1551761 lt!1551774)))

(assert (=> b!4337745 (forall!8975 (toList!2781 lt!1551351) lambda!136448)))

(declare-fun lt!1551765 () Unit!68877)

(declare-fun Unit!68971 () Unit!68877)

(assert (=> b!4337745 (= lt!1551765 Unit!68971)))

(declare-fun res!1779527 () Bool)

(assert (=> b!4337745 (= res!1779527 (forall!8975 newBucket!200 lambda!136448))))

(assert (=> b!4337745 (=> (not res!1779527) (not e!2699054))))

(assert (=> b!4337745 e!2699054))

(declare-fun lt!1551773 () Unit!68877)

(declare-fun Unit!68972 () Unit!68877)

(assert (=> b!4337745 (= lt!1551773 Unit!68972)))

(declare-fun b!4337746 () Bool)

(assert (=> b!4337746 (= e!2699055 (invariantList!634 (toList!2781 lt!1551766)))))

(assert (= (and d!1275009 c!737532) b!4337742))

(assert (= (and d!1275009 (not c!737532)) b!4337745))

(assert (= (and b!4337745 res!1779527) b!4337743))

(assert (= (or b!4337742 b!4337745) bm!301464))

(assert (= (or b!4337742 b!4337745) bm!301466))

(assert (= (or b!4337742 b!4337745) bm!301465))

(assert (= (and d!1275009 res!1779528) b!4337744))

(assert (= (and b!4337744 res!1779526) b!4337746))

(assert (=> bm!301464 m!4934067))

(declare-fun m!4934221 () Bool)

(assert (=> bm!301465 m!4934221))

(declare-fun m!4934223 () Bool)

(assert (=> b!4337745 m!4934223))

(declare-fun m!4934225 () Bool)

(assert (=> b!4337745 m!4934225))

(assert (=> b!4337745 m!4934225))

(declare-fun m!4934227 () Bool)

(assert (=> b!4337745 m!4934227))

(declare-fun m!4934229 () Bool)

(assert (=> b!4337745 m!4934229))

(declare-fun m!4934231 () Bool)

(assert (=> b!4337745 m!4934231))

(declare-fun m!4934233 () Bool)

(assert (=> b!4337745 m!4934233))

(declare-fun m!4934235 () Bool)

(assert (=> b!4337745 m!4934235))

(assert (=> b!4337745 m!4934223))

(declare-fun m!4934237 () Bool)

(assert (=> b!4337745 m!4934237))

(declare-fun m!4934239 () Bool)

(assert (=> b!4337745 m!4934239))

(assert (=> b!4337745 m!4934229))

(declare-fun m!4934241 () Bool)

(assert (=> b!4337745 m!4934241))

(declare-fun m!4934243 () Bool)

(assert (=> b!4337744 m!4934243))

(assert (=> b!4337743 m!4934225))

(declare-fun m!4934245 () Bool)

(assert (=> bm!301466 m!4934245))

(declare-fun m!4934247 () Bool)

(assert (=> b!4337746 m!4934247))

(declare-fun m!4934249 () Bool)

(assert (=> d!1275009 m!4934249))

(assert (=> d!1275009 m!4933625))

(assert (=> b!4337448 d!1275009))

(declare-fun d!1275011 () Bool)

(assert (=> d!1275011 (eq!189 (addToMapMapFromBucket!107 lt!1551344 (+!470 lt!1551351 (tuple2!47967 key!3918 newValue!99))) (+!470 (addToMapMapFromBucket!107 lt!1551344 lt!1551351) (tuple2!47967 key!3918 newValue!99)))))

(declare-fun lt!1551783 () Unit!68877)

(declare-fun choose!26565 (ListMap!2025 K!10065 V!10311 List!48831) Unit!68877)

(assert (=> d!1275011 (= lt!1551783 (choose!26565 lt!1551351 key!3918 newValue!99 lt!1551344))))

(assert (=> d!1275011 (not (containsKey!552 lt!1551344 key!3918))))

(assert (=> d!1275011 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!18 lt!1551351 key!3918 newValue!99 lt!1551344) lt!1551783)))

(declare-fun bs!609465 () Bool)

(assert (= bs!609465 d!1275011))

(declare-fun m!4934251 () Bool)

(assert (=> bs!609465 m!4934251))

(assert (=> bs!609465 m!4933649))

(declare-fun m!4934253 () Bool)

(assert (=> bs!609465 m!4934253))

(assert (=> bs!609465 m!4933649))

(declare-fun m!4934255 () Bool)

(assert (=> bs!609465 m!4934255))

(declare-fun m!4934257 () Bool)

(assert (=> bs!609465 m!4934257))

(assert (=> bs!609465 m!4934253))

(declare-fun m!4934259 () Bool)

(assert (=> bs!609465 m!4934259))

(assert (=> bs!609465 m!4934255))

(assert (=> bs!609465 m!4934257))

(declare-fun m!4934261 () Bool)

(assert (=> bs!609465 m!4934261))

(assert (=> b!4337448 d!1275011))

(assert (=> b!4337447 d!1274923))

(declare-fun d!1275013 () Bool)

(declare-fun e!2699057 () Bool)

(assert (=> d!1275013 e!2699057))

(declare-fun res!1779529 () Bool)

(assert (=> d!1275013 (=> (not res!1779529) (not e!2699057))))

(declare-fun lt!1551785 () ListLongMap!1431)

(assert (=> d!1275013 (= res!1779529 (contains!10787 lt!1551785 (_1!27278 lt!1551340)))))

(declare-fun lt!1551784 () List!48832)

(assert (=> d!1275013 (= lt!1551785 (ListLongMap!1432 lt!1551784))))

(declare-fun lt!1551787 () Unit!68877)

(declare-fun lt!1551786 () Unit!68877)

(assert (=> d!1275013 (= lt!1551787 lt!1551786)))

(assert (=> d!1275013 (= (getValueByKey!366 lt!1551784 (_1!27278 lt!1551340)) (Some!10379 (_2!27278 lt!1551340)))))

(assert (=> d!1275013 (= lt!1551786 (lemmaContainsTupThenGetReturnValue!150 lt!1551784 (_1!27278 lt!1551340) (_2!27278 lt!1551340)))))

(assert (=> d!1275013 (= lt!1551784 (insertStrictlySorted!91 (toList!2782 lm!1707) (_1!27278 lt!1551340) (_2!27278 lt!1551340)))))

(assert (=> d!1275013 (= (+!469 lm!1707 lt!1551340) lt!1551785)))

(declare-fun b!4337747 () Bool)

(declare-fun res!1779530 () Bool)

(assert (=> b!4337747 (=> (not res!1779530) (not e!2699057))))

(assert (=> b!4337747 (= res!1779530 (= (getValueByKey!366 (toList!2782 lt!1551785) (_1!27278 lt!1551340)) (Some!10379 (_2!27278 lt!1551340))))))

(declare-fun b!4337748 () Bool)

(assert (=> b!4337748 (= e!2699057 (contains!10786 (toList!2782 lt!1551785) lt!1551340))))

(assert (= (and d!1275013 res!1779529) b!4337747))

(assert (= (and b!4337747 res!1779530) b!4337748))

(declare-fun m!4934263 () Bool)

(assert (=> d!1275013 m!4934263))

(declare-fun m!4934265 () Bool)

(assert (=> d!1275013 m!4934265))

(declare-fun m!4934267 () Bool)

(assert (=> d!1275013 m!4934267))

(declare-fun m!4934269 () Bool)

(assert (=> d!1275013 m!4934269))

(declare-fun m!4934271 () Bool)

(assert (=> b!4337747 m!4934271))

(declare-fun m!4934273 () Bool)

(assert (=> b!4337748 m!4934273))

(assert (=> b!4337447 d!1275013))

(declare-fun d!1275015 () Bool)

(assert (=> d!1275015 (forall!8973 (toList!2782 (+!469 lm!1707 (tuple2!47969 hash!377 newBucket!200))) lambda!136339)))

(declare-fun lt!1551790 () Unit!68877)

(declare-fun choose!26566 (ListLongMap!1431 Int (_ BitVec 64) List!48831) Unit!68877)

(assert (=> d!1275015 (= lt!1551790 (choose!26566 lm!1707 lambda!136339 hash!377 newBucket!200))))

(declare-fun e!2699060 () Bool)

(assert (=> d!1275015 e!2699060))

(declare-fun res!1779533 () Bool)

(assert (=> d!1275015 (=> (not res!1779533) (not e!2699060))))

(assert (=> d!1275015 (= res!1779533 (forall!8973 (toList!2782 lm!1707) lambda!136339))))

(assert (=> d!1275015 (= (addValidProp!53 lm!1707 lambda!136339 hash!377 newBucket!200) lt!1551790)))

(declare-fun b!4337752 () Bool)

(assert (=> b!4337752 (= e!2699060 (dynLambda!20573 lambda!136339 (tuple2!47969 hash!377 newBucket!200)))))

(assert (= (and d!1275015 res!1779533) b!4337752))

(declare-fun b_lambda!128417 () Bool)

(assert (=> (not b_lambda!128417) (not b!4337752)))

(declare-fun m!4934275 () Bool)

(assert (=> d!1275015 m!4934275))

(declare-fun m!4934277 () Bool)

(assert (=> d!1275015 m!4934277))

(declare-fun m!4934279 () Bool)

(assert (=> d!1275015 m!4934279))

(assert (=> d!1275015 m!4933613))

(declare-fun m!4934281 () Bool)

(assert (=> b!4337752 m!4934281))

(assert (=> b!4337447 d!1275015))

(assert (=> b!4337447 d!1274939))

(declare-fun b!4337757 () Bool)

(declare-fun e!2699063 () Bool)

(declare-fun tp!1329144 () Bool)

(declare-fun tp!1329145 () Bool)

(assert (=> b!4337757 (= e!2699063 (and tp!1329144 tp!1329145))))

(assert (=> b!4337454 (= tp!1329129 e!2699063)))

(assert (= (and b!4337454 ((_ is Cons!48708) (toList!2782 lm!1707))) b!4337757))

(declare-fun b!4337762 () Bool)

(declare-fun tp!1329148 () Bool)

(declare-fun e!2699066 () Bool)

(assert (=> b!4337762 (= e!2699066 (and tp_is_empty!24833 tp_is_empty!24835 tp!1329148))))

(assert (=> b!4337442 (= tp!1329130 e!2699066)))

(assert (= (and b!4337442 ((_ is Cons!48707) (t!355747 newBucket!200))) b!4337762))

(declare-fun b_lambda!128419 () Bool)

(assert (= b_lambda!128405 (or start!418468 b_lambda!128419)))

(declare-fun bs!609466 () Bool)

(declare-fun d!1275017 () Bool)

(assert (= bs!609466 (and d!1275017 start!418468)))

(assert (=> bs!609466 (= (dynLambda!20573 lambda!136339 (h!54215 (toList!2782 lm!1707))) (noDuplicateKeys!399 (_2!27278 (h!54215 (toList!2782 lm!1707)))))))

(declare-fun m!4934283 () Bool)

(assert (=> bs!609466 m!4934283))

(assert (=> b!4337619 d!1275017))

(declare-fun b_lambda!128421 () Bool)

(assert (= b_lambda!128401 (or start!418468 b_lambda!128421)))

(declare-fun bs!609467 () Bool)

(declare-fun d!1275019 () Bool)

(assert (= bs!609467 (and d!1275019 start!418468)))

(assert (=> bs!609467 (= (dynLambda!20573 lambda!136339 lt!1551350) (noDuplicateKeys!399 (_2!27278 lt!1551350)))))

(declare-fun m!4934285 () Bool)

(assert (=> bs!609467 m!4934285))

(assert (=> d!1274915 d!1275019))

(declare-fun b_lambda!128423 () Bool)

(assert (= b_lambda!128403 (or start!418468 b_lambda!128423)))

(declare-fun bs!609468 () Bool)

(declare-fun d!1275021 () Bool)

(assert (= bs!609468 (and d!1275021 start!418468)))

(assert (=> bs!609468 (= (dynLambda!20573 lambda!136339 (h!54215 (toList!2782 lt!1551349))) (noDuplicateKeys!399 (_2!27278 (h!54215 (toList!2782 lt!1551349)))))))

(declare-fun m!4934287 () Bool)

(assert (=> bs!609468 m!4934287))

(assert (=> b!4337555 d!1275021))

(declare-fun b_lambda!128425 () Bool)

(assert (= b_lambda!128417 (or start!418468 b_lambda!128425)))

(declare-fun bs!609469 () Bool)

(declare-fun d!1275023 () Bool)

(assert (= bs!609469 (and d!1275023 start!418468)))

(assert (=> bs!609469 (= (dynLambda!20573 lambda!136339 (tuple2!47969 hash!377 newBucket!200)) (noDuplicateKeys!399 (_2!27278 (tuple2!47969 hash!377 newBucket!200))))))

(declare-fun m!4934289 () Bool)

(assert (=> bs!609469 m!4934289))

(assert (=> b!4337752 d!1275023))

(check-sat (not d!1275009) (not b!4337738) (not b!4337706) (not b!4337585) (not b!4337745) tp_is_empty!24833 (not b!4337717) (not d!1274913) (not bs!609468) (not bm!301459) (not b!4337721) (not bm!301461) (not b!4337744) (not b!4337620) (not b!4337591) (not b!4337741) (not d!1275015) (not b!4337532) (not b!4337716) (not d!1274991) (not b!4337733) (not d!1274943) (not d!1274915) (not d!1274921) (not b!4337718) (not bm!301460) (not b!4337732) (not b!4337613) (not d!1274905) (not d!1274937) (not bm!301464) (not bm!301457) (not d!1274919) (not b!4337730) (not bm!301430) (not b!4337707) (not b!4337709) (not d!1274935) (not d!1274917) (not b!4337747) (not bm!301462) (not d!1274907) (not bs!609467) (not b!4337526) (not b!4337740) (not bm!301455) (not b!4337524) (not bs!609469) (not b!4337589) (not b!4337722) (not b!4337739) (not b!4337590) (not b_lambda!128425) (not b!4337725) (not b!4337723) (not d!1274927) (not b_lambda!128421) (not b!4337746) tp_is_empty!24835 (not bm!301465) (not bm!301456) (not b!4337748) (not b!4337743) (not d!1274999) (not b!4337593) (not b!4337708) (not d!1275003) (not b!4337762) (not b!4337727) (not bm!301458) (not b_lambda!128423) (not d!1274997) (not d!1274947) (not d!1275005) (not b!4337529) (not bs!609466) (not b!4337562) (not bm!301466) (not b!4337561) (not bm!301463) (not d!1274993) (not b_lambda!128419) (not b!4337728) (not b!4337588) (not b!4337724) (not b!4337538) (not b!4337757) (not d!1274929) (not d!1275011) (not b!4337556) (not b!4337587) (not d!1275001) (not d!1275013) (not d!1274941) (not b!4337549) (not b!4337731) (not d!1274945))
(check-sat)
