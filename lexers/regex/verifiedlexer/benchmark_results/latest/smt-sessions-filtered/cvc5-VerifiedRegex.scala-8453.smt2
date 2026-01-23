; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437910 () Bool)

(assert start!437910)

(declare-fun b!4463728 () Bool)

(declare-fun e!2779507 () Bool)

(declare-fun e!2779505 () Bool)

(assert (=> b!4463728 (= e!2779507 e!2779505)))

(declare-fun res!1851501 () Bool)

(assert (=> b!4463728 (=> (not res!1851501) (not e!2779505))))

(declare-fun lt!1654088 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4463728 (= res!1851501 (= lt!1654088 hash!344))))

(declare-datatypes ((Hashable!5406 0))(
  ( (HashableExt!5405 (__x!31109 Int)) )
))
(declare-fun hashF!1107 () Hashable!5406)

(declare-datatypes ((K!11668 0))(
  ( (K!11669 (val!17605 Int)) )
))
(declare-fun key!3287 () K!11668)

(declare-fun hash!2402 (Hashable!5406 K!11668) (_ BitVec 64))

(assert (=> b!4463728 (= lt!1654088 (hash!2402 hashF!1107 key!3287))))

(declare-fun b!4463729 () Bool)

(declare-fun e!2779508 () Bool)

(declare-datatypes ((V!11914 0))(
  ( (V!11915 (val!17606 Int)) )
))
(declare-datatypes ((tuple2!50478 0))(
  ( (tuple2!50479 (_1!28533 K!11668) (_2!28533 V!11914)) )
))
(declare-datatypes ((List!50370 0))(
  ( (Nil!50246) (Cons!50246 (h!55997 tuple2!50478) (t!357320 List!50370)) )
))
(declare-datatypes ((tuple2!50480 0))(
  ( (tuple2!50481 (_1!28534 (_ BitVec 64)) (_2!28534 List!50370)) )
))
(declare-datatypes ((List!50371 0))(
  ( (Nil!50247) (Cons!50247 (h!55998 tuple2!50480) (t!357321 List!50371)) )
))
(declare-fun lt!1654091 () List!50371)

(declare-fun lambda!162278 () Int)

(declare-fun forall!9958 (List!50371 Int) Bool)

(assert (=> b!4463729 (= e!2779508 (forall!9958 lt!1654091 lambda!162278))))

(declare-fun b!4463730 () Bool)

(declare-fun res!1851496 () Bool)

(declare-fun e!2779504 () Bool)

(assert (=> b!4463730 (=> res!1851496 e!2779504)))

(declare-datatypes ((ListLongMap!2661 0))(
  ( (ListLongMap!2662 (toList!4029 List!50371)) )
))
(declare-fun lm!1477 () ListLongMap!2661)

(assert (=> b!4463730 (= res!1851496 (or (is-Nil!50247 (toList!4029 lm!1477)) (not (= (_1!28534 (h!55998 (toList!4029 lm!1477))) hash!344))))))

(declare-fun b!4463731 () Bool)

(declare-fun res!1851500 () Bool)

(assert (=> b!4463731 (=> (not res!1851500) (not e!2779507))))

(declare-fun allKeysSameHashInMap!1118 (ListLongMap!2661 Hashable!5406) Bool)

(assert (=> b!4463731 (= res!1851500 (allKeysSameHashInMap!1118 lm!1477 hashF!1107))))

(declare-fun b!4463732 () Bool)

(declare-fun e!2779510 () Bool)

(declare-fun e!2779512 () Bool)

(assert (=> b!4463732 (= e!2779510 e!2779512)))

(declare-fun res!1851497 () Bool)

(assert (=> b!4463732 (=> res!1851497 e!2779512)))

(declare-fun lt!1654092 () List!50371)

(declare-fun containsKeyBiggerList!11 (List!50371 K!11668) Bool)

(assert (=> b!4463732 (= res!1851497 (not (containsKeyBiggerList!11 lt!1654092 key!3287)))))

(assert (=> b!4463732 (= lt!1654092 (Cons!50247 (h!55998 (toList!4029 lm!1477)) Nil!50247))))

(declare-fun b!4463733 () Bool)

(assert (=> b!4463733 (= e!2779505 (not e!2779504))))

(declare-fun res!1851493 () Bool)

(assert (=> b!4463733 (=> res!1851493 e!2779504)))

(declare-fun lt!1654094 () List!50370)

(declare-fun newBucket!178 () List!50370)

(declare-fun removePairForKey!638 (List!50370 K!11668) List!50370)

(assert (=> b!4463733 (= res!1851493 (not (= newBucket!178 (removePairForKey!638 lt!1654094 key!3287))))))

(declare-fun lt!1654085 () tuple2!50480)

(declare-datatypes ((Unit!87073 0))(
  ( (Unit!87074) )
))
(declare-fun lt!1654087 () Unit!87073)

(declare-fun forallContained!2232 (List!50371 Int tuple2!50480) Unit!87073)

(assert (=> b!4463733 (= lt!1654087 (forallContained!2232 (toList!4029 lm!1477) lambda!162278 lt!1654085))))

(declare-fun contains!12776 (List!50371 tuple2!50480) Bool)

(assert (=> b!4463733 (contains!12776 (toList!4029 lm!1477) lt!1654085)))

(assert (=> b!4463733 (= lt!1654085 (tuple2!50481 hash!344 lt!1654094))))

(declare-fun lt!1654095 () Unit!87073)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!523 (List!50371 (_ BitVec 64) List!50370) Unit!87073)

(assert (=> b!4463733 (= lt!1654095 (lemmaGetValueByKeyImpliesContainsTuple!523 (toList!4029 lm!1477) hash!344 lt!1654094))))

(declare-fun apply!11748 (ListLongMap!2661 (_ BitVec 64)) List!50370)

(assert (=> b!4463733 (= lt!1654094 (apply!11748 lm!1477 hash!344))))

(declare-fun contains!12777 (ListLongMap!2661 (_ BitVec 64)) Bool)

(assert (=> b!4463733 (contains!12777 lm!1477 lt!1654088)))

(declare-fun lt!1654084 () Unit!87073)

(declare-fun lemmaInGenMapThenLongMapContainsHash!85 (ListLongMap!2661 K!11668 Hashable!5406) Unit!87073)

(assert (=> b!4463733 (= lt!1654084 (lemmaInGenMapThenLongMapContainsHash!85 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4463734 () Bool)

(declare-fun res!1851495 () Bool)

(assert (=> b!4463734 (=> (not res!1851495) (not e!2779505))))

(declare-fun allKeysSameHash!865 (List!50370 (_ BitVec 64) Hashable!5406) Bool)

(assert (=> b!4463734 (= res!1851495 (allKeysSameHash!865 newBucket!178 hash!344 hashF!1107))))

(declare-fun tp!1336015 () Bool)

(declare-fun tp_is_empty!27323 () Bool)

(declare-fun b!4463736 () Bool)

(declare-fun e!2779511 () Bool)

(declare-fun tp_is_empty!27321 () Bool)

(assert (=> b!4463736 (= e!2779511 (and tp_is_empty!27321 tp_is_empty!27323 tp!1336015))))

(declare-fun b!4463737 () Bool)

(declare-fun res!1851498 () Bool)

(assert (=> b!4463737 (=> (not res!1851498) (not e!2779507))))

(declare-datatypes ((ListMap!3291 0))(
  ( (ListMap!3292 (toList!4030 List!50370)) )
))
(declare-fun contains!12778 (ListMap!3291 K!11668) Bool)

(declare-fun extractMap!1067 (List!50371) ListMap!3291)

(assert (=> b!4463737 (= res!1851498 (contains!12778 (extractMap!1067 (toList!4029 lm!1477)) key!3287))))

(declare-fun b!4463738 () Bool)

(declare-fun e!2779506 () Bool)

(declare-fun tp!1336014 () Bool)

(assert (=> b!4463738 (= e!2779506 tp!1336014)))

(declare-fun b!4463735 () Bool)

(assert (=> b!4463735 (= e!2779504 e!2779510)))

(declare-fun res!1851494 () Bool)

(assert (=> b!4463735 (=> res!1851494 e!2779510)))

(declare-fun lt!1654096 () Bool)

(assert (=> b!4463735 (= res!1851494 lt!1654096)))

(declare-fun lt!1654093 () Unit!87073)

(declare-fun e!2779509 () Unit!87073)

(assert (=> b!4463735 (= lt!1654093 e!2779509)))

(declare-fun c!759619 () Bool)

(assert (=> b!4463735 (= c!759619 lt!1654096)))

(declare-fun containsKey!1431 (List!50370 K!11668) Bool)

(assert (=> b!4463735 (= lt!1654096 (not (containsKey!1431 (_2!28534 (h!55998 (toList!4029 lm!1477))) key!3287)))))

(declare-fun res!1851492 () Bool)

(assert (=> start!437910 (=> (not res!1851492) (not e!2779507))))

(assert (=> start!437910 (= res!1851492 (forall!9958 (toList!4029 lm!1477) lambda!162278))))

(assert (=> start!437910 e!2779507))

(assert (=> start!437910 true))

(declare-fun inv!65853 (ListLongMap!2661) Bool)

(assert (=> start!437910 (and (inv!65853 lm!1477) e!2779506)))

(assert (=> start!437910 tp_is_empty!27321))

(assert (=> start!437910 e!2779511))

(declare-fun b!4463739 () Bool)

(declare-fun Unit!87075 () Unit!87073)

(assert (=> b!4463739 (= e!2779509 Unit!87075)))

(declare-fun b!4463740 () Bool)

(assert (=> b!4463740 (= e!2779512 e!2779508)))

(declare-fun res!1851502 () Bool)

(assert (=> b!4463740 (=> res!1851502 e!2779508)))

(declare-fun lt!1654083 () tuple2!50480)

(declare-fun tail!7480 (List!50371) List!50371)

(declare-fun +!1347 (ListLongMap!2661 tuple2!50480) ListLongMap!2661)

(assert (=> b!4463740 (= res!1851502 (not (= (t!357321 (toList!4029 lm!1477)) (tail!7480 (toList!4029 (+!1347 lm!1477 lt!1654083))))))))

(declare-fun eq!504 (ListMap!3291 ListMap!3291) Bool)

(declare-fun -!273 (ListMap!3291 K!11668) ListMap!3291)

(assert (=> b!4463740 (eq!504 (extractMap!1067 lt!1654091) (-!273 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)) key!3287))))

(assert (=> b!4463740 (= lt!1654091 (Cons!50247 lt!1654083 Nil!50247))))

(assert (=> b!4463740 (= lt!1654083 (tuple2!50481 hash!344 newBucket!178))))

(declare-fun lt!1654090 () Unit!87073)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!3 ((_ BitVec 64) List!50370 List!50370 K!11668 Hashable!5406) Unit!87073)

(assert (=> b!4463740 (= lt!1654090 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!3 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4463740 (contains!12778 (extractMap!1067 lt!1654092) key!3287)))

(declare-fun lt!1654089 () Unit!87073)

(declare-fun lemmaListContainsThenExtractedMapContains!7 (ListLongMap!2661 K!11668 Hashable!5406) Unit!87073)

(assert (=> b!4463740 (= lt!1654089 (lemmaListContainsThenExtractedMapContains!7 (ListLongMap!2662 lt!1654092) key!3287 hashF!1107))))

(declare-fun b!4463741 () Bool)

(declare-fun res!1851499 () Bool)

(assert (=> b!4463741 (=> res!1851499 e!2779504)))

(declare-fun noDuplicateKeys!1011 (List!50370) Bool)

(assert (=> b!4463741 (= res!1851499 (not (noDuplicateKeys!1011 newBucket!178)))))

(declare-fun b!4463742 () Bool)

(declare-fun Unit!87076 () Unit!87073)

(assert (=> b!4463742 (= e!2779509 Unit!87076)))

(declare-fun lt!1654086 () Unit!87073)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!11 (ListLongMap!2661 K!11668 Hashable!5406) Unit!87073)

(assert (=> b!4463742 (= lt!1654086 (lemmaNotInItsHashBucketThenNotInMap!11 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4463742 false))

(assert (= (and start!437910 res!1851492) b!4463731))

(assert (= (and b!4463731 res!1851500) b!4463737))

(assert (= (and b!4463737 res!1851498) b!4463728))

(assert (= (and b!4463728 res!1851501) b!4463734))

(assert (= (and b!4463734 res!1851495) b!4463733))

(assert (= (and b!4463733 (not res!1851493)) b!4463741))

(assert (= (and b!4463741 (not res!1851499)) b!4463730))

(assert (= (and b!4463730 (not res!1851496)) b!4463735))

(assert (= (and b!4463735 c!759619) b!4463742))

(assert (= (and b!4463735 (not c!759619)) b!4463739))

(assert (= (and b!4463735 (not res!1851494)) b!4463732))

(assert (= (and b!4463732 (not res!1851497)) b!4463740))

(assert (= (and b!4463740 (not res!1851502)) b!4463729))

(assert (= start!437910 b!4463738))

(assert (= (and start!437910 (is-Cons!50246 newBucket!178)) b!4463736))

(declare-fun m!5167327 () Bool)

(assert (=> b!4463735 m!5167327))

(declare-fun m!5167329 () Bool)

(assert (=> b!4463734 m!5167329))

(declare-fun m!5167331 () Bool)

(assert (=> b!4463733 m!5167331))

(declare-fun m!5167333 () Bool)

(assert (=> b!4463733 m!5167333))

(declare-fun m!5167335 () Bool)

(assert (=> b!4463733 m!5167335))

(declare-fun m!5167337 () Bool)

(assert (=> b!4463733 m!5167337))

(declare-fun m!5167339 () Bool)

(assert (=> b!4463733 m!5167339))

(declare-fun m!5167341 () Bool)

(assert (=> b!4463733 m!5167341))

(declare-fun m!5167343 () Bool)

(assert (=> b!4463733 m!5167343))

(declare-fun m!5167345 () Bool)

(assert (=> b!4463731 m!5167345))

(declare-fun m!5167347 () Bool)

(assert (=> b!4463742 m!5167347))

(declare-fun m!5167349 () Bool)

(assert (=> b!4463732 m!5167349))

(declare-fun m!5167351 () Bool)

(assert (=> b!4463741 m!5167351))

(declare-fun m!5167353 () Bool)

(assert (=> b!4463740 m!5167353))

(declare-fun m!5167355 () Bool)

(assert (=> b!4463740 m!5167355))

(declare-fun m!5167357 () Bool)

(assert (=> b!4463740 m!5167357))

(declare-fun m!5167359 () Bool)

(assert (=> b!4463740 m!5167359))

(declare-fun m!5167361 () Bool)

(assert (=> b!4463740 m!5167361))

(declare-fun m!5167363 () Bool)

(assert (=> b!4463740 m!5167363))

(declare-fun m!5167365 () Bool)

(assert (=> b!4463740 m!5167365))

(declare-fun m!5167367 () Bool)

(assert (=> b!4463740 m!5167367))

(assert (=> b!4463740 m!5167359))

(assert (=> b!4463740 m!5167355))

(declare-fun m!5167369 () Bool)

(assert (=> b!4463740 m!5167369))

(declare-fun m!5167371 () Bool)

(assert (=> b!4463740 m!5167371))

(assert (=> b!4463740 m!5167363))

(assert (=> b!4463740 m!5167353))

(declare-fun m!5167373 () Bool)

(assert (=> b!4463729 m!5167373))

(declare-fun m!5167375 () Bool)

(assert (=> b!4463737 m!5167375))

(assert (=> b!4463737 m!5167375))

(declare-fun m!5167377 () Bool)

(assert (=> b!4463737 m!5167377))

(declare-fun m!5167379 () Bool)

(assert (=> start!437910 m!5167379))

(declare-fun m!5167381 () Bool)

(assert (=> start!437910 m!5167381))

(declare-fun m!5167383 () Bool)

(assert (=> b!4463728 m!5167383))

(push 1)

(assert (not b!4463734))

(assert (not b!4463729))

(assert (not b!4463733))

(assert (not b!4463728))

(assert (not start!437910))

(assert (not b!4463741))

(assert (not b!4463735))

(assert (not b!4463731))

(assert (not b!4463742))

(assert tp_is_empty!27321)

(assert (not b!4463740))

(assert (not b!4463736))

(assert tp_is_empty!27323)

(assert (not b!4463732))

(assert (not b!4463737))

(assert (not b!4463738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!792200 () Bool)

(declare-fun d!1360954 () Bool)

(assert (= bs!792200 (and d!1360954 start!437910)))

(declare-fun lambda!162288 () Int)

(assert (=> bs!792200 (not (= lambda!162288 lambda!162278))))

(assert (=> d!1360954 true))

(assert (=> d!1360954 (= (allKeysSameHashInMap!1118 lm!1477 hashF!1107) (forall!9958 (toList!4029 lm!1477) lambda!162288))))

(declare-fun bs!792201 () Bool)

(assert (= bs!792201 d!1360954))

(declare-fun m!5167443 () Bool)

(assert (=> bs!792201 m!5167443))

(assert (=> b!4463731 d!1360954))

(declare-fun d!1360956 () Bool)

(declare-fun res!1851549 () Bool)

(declare-fun e!2779553 () Bool)

(assert (=> d!1360956 (=> res!1851549 e!2779553)))

(assert (=> d!1360956 (= res!1851549 (not (is-Cons!50246 newBucket!178)))))

(assert (=> d!1360956 (= (noDuplicateKeys!1011 newBucket!178) e!2779553)))

(declare-fun b!4463803 () Bool)

(declare-fun e!2779554 () Bool)

(assert (=> b!4463803 (= e!2779553 e!2779554)))

(declare-fun res!1851550 () Bool)

(assert (=> b!4463803 (=> (not res!1851550) (not e!2779554))))

(assert (=> b!4463803 (= res!1851550 (not (containsKey!1431 (t!357320 newBucket!178) (_1!28533 (h!55997 newBucket!178)))))))

(declare-fun b!4463804 () Bool)

(assert (=> b!4463804 (= e!2779554 (noDuplicateKeys!1011 (t!357320 newBucket!178)))))

(assert (= (and d!1360956 (not res!1851549)) b!4463803))

(assert (= (and b!4463803 res!1851550) b!4463804))

(declare-fun m!5167449 () Bool)

(assert (=> b!4463803 m!5167449))

(declare-fun m!5167451 () Bool)

(assert (=> b!4463804 m!5167451))

(assert (=> b!4463741 d!1360956))

(declare-fun d!1360960 () Bool)

(declare-fun res!1851561 () Bool)

(declare-fun e!2779565 () Bool)

(assert (=> d!1360960 (=> res!1851561 e!2779565)))

(declare-fun e!2779567 () Bool)

(assert (=> d!1360960 (= res!1851561 e!2779567)))

(declare-fun res!1851562 () Bool)

(assert (=> d!1360960 (=> (not res!1851562) (not e!2779567))))

(assert (=> d!1360960 (= res!1851562 (is-Cons!50247 lt!1654092))))

(assert (=> d!1360960 (= (containsKeyBiggerList!11 lt!1654092 key!3287) e!2779565)))

(declare-fun b!4463815 () Bool)

(assert (=> b!4463815 (= e!2779567 (containsKey!1431 (_2!28534 (h!55998 lt!1654092)) key!3287))))

(declare-fun b!4463816 () Bool)

(declare-fun e!2779566 () Bool)

(assert (=> b!4463816 (= e!2779565 e!2779566)))

(declare-fun res!1851563 () Bool)

(assert (=> b!4463816 (=> (not res!1851563) (not e!2779566))))

(assert (=> b!4463816 (= res!1851563 (is-Cons!50247 lt!1654092))))

(declare-fun b!4463817 () Bool)

(assert (=> b!4463817 (= e!2779566 (containsKeyBiggerList!11 (t!357321 lt!1654092) key!3287))))

(assert (= (and d!1360960 res!1851562) b!4463815))

(assert (= (and d!1360960 (not res!1851561)) b!4463816))

(assert (= (and b!4463816 res!1851563) b!4463817))

(declare-fun m!5167453 () Bool)

(assert (=> b!4463815 m!5167453))

(declare-fun m!5167455 () Bool)

(assert (=> b!4463817 m!5167455))

(assert (=> b!4463732 d!1360960))

(declare-fun bs!792203 () Bool)

(declare-fun d!1360962 () Bool)

(assert (= bs!792203 (and d!1360962 start!437910)))

(declare-fun lambda!162291 () Int)

(assert (=> bs!792203 (= lambda!162291 lambda!162278)))

(declare-fun bs!792204 () Bool)

(assert (= bs!792204 (and d!1360962 d!1360954)))

(assert (=> bs!792204 (not (= lambda!162291 lambda!162288))))

(assert (=> d!1360962 (not (contains!12778 (extractMap!1067 (toList!4029 lm!1477)) key!3287))))

(declare-fun lt!1654141 () Unit!87073)

(declare-fun choose!28450 (ListLongMap!2661 K!11668 Hashable!5406) Unit!87073)

(assert (=> d!1360962 (= lt!1654141 (choose!28450 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1360962 (forall!9958 (toList!4029 lm!1477) lambda!162291)))

(assert (=> d!1360962 (= (lemmaNotInItsHashBucketThenNotInMap!11 lm!1477 key!3287 hashF!1107) lt!1654141)))

(declare-fun bs!792205 () Bool)

(assert (= bs!792205 d!1360962))

(assert (=> bs!792205 m!5167375))

(assert (=> bs!792205 m!5167375))

(assert (=> bs!792205 m!5167377))

(declare-fun m!5167463 () Bool)

(assert (=> bs!792205 m!5167463))

(declare-fun m!5167465 () Bool)

(assert (=> bs!792205 m!5167465))

(assert (=> b!4463742 d!1360962))

(declare-fun d!1360968 () Bool)

(declare-fun hash!2405 (Hashable!5406 K!11668) (_ BitVec 64))

(assert (=> d!1360968 (= (hash!2402 hashF!1107 key!3287) (hash!2405 hashF!1107 key!3287))))

(declare-fun bs!792206 () Bool)

(assert (= bs!792206 d!1360968))

(declare-fun m!5167467 () Bool)

(assert (=> bs!792206 m!5167467))

(assert (=> b!4463728 d!1360968))

(declare-fun d!1360970 () Bool)

(assert (=> d!1360970 (= (tail!7480 (toList!4029 (+!1347 lm!1477 lt!1654083))) (t!357321 (toList!4029 (+!1347 lm!1477 lt!1654083))))))

(assert (=> b!4463740 d!1360970))

(declare-fun bs!792207 () Bool)

(declare-fun d!1360972 () Bool)

(assert (= bs!792207 (and d!1360972 start!437910)))

(declare-fun lambda!162294 () Int)

(assert (=> bs!792207 (= lambda!162294 lambda!162278)))

(declare-fun bs!792208 () Bool)

(assert (= bs!792208 (and d!1360972 d!1360954)))

(assert (=> bs!792208 (not (= lambda!162294 lambda!162288))))

(declare-fun bs!792209 () Bool)

(assert (= bs!792209 (and d!1360972 d!1360962)))

(assert (=> bs!792209 (= lambda!162294 lambda!162291)))

(declare-fun lt!1654144 () ListMap!3291)

(declare-fun invariantList!914 (List!50370) Bool)

(assert (=> d!1360972 (invariantList!914 (toList!4030 lt!1654144))))

(declare-fun e!2779572 () ListMap!3291)

(assert (=> d!1360972 (= lt!1654144 e!2779572)))

(declare-fun c!759625 () Bool)

(assert (=> d!1360972 (= c!759625 (is-Cons!50247 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)))))

(assert (=> d!1360972 (forall!9958 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247) lambda!162294)))

(assert (=> d!1360972 (= (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)) lt!1654144)))

(declare-fun b!4463824 () Bool)

(declare-fun addToMapMapFromBucket!576 (List!50370 ListMap!3291) ListMap!3291)

(assert (=> b!4463824 (= e!2779572 (addToMapMapFromBucket!576 (_2!28534 (h!55998 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247))) (extractMap!1067 (t!357321 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)))))))

(declare-fun b!4463825 () Bool)

(assert (=> b!4463825 (= e!2779572 (ListMap!3292 Nil!50246))))

(assert (= (and d!1360972 c!759625) b!4463824))

(assert (= (and d!1360972 (not c!759625)) b!4463825))

(declare-fun m!5167469 () Bool)

(assert (=> d!1360972 m!5167469))

(declare-fun m!5167471 () Bool)

(assert (=> d!1360972 m!5167471))

(declare-fun m!5167473 () Bool)

(assert (=> b!4463824 m!5167473))

(assert (=> b!4463824 m!5167473))

(declare-fun m!5167475 () Bool)

(assert (=> b!4463824 m!5167475))

(assert (=> b!4463740 d!1360972))

(declare-fun b!4463852 () Bool)

(declare-fun e!2779594 () Bool)

(declare-datatypes ((List!50374 0))(
  ( (Nil!50250) (Cons!50250 (h!56002 K!11668) (t!357324 List!50374)) )
))
(declare-fun contains!12782 (List!50374 K!11668) Bool)

(declare-fun keys!17337 (ListMap!3291) List!50374)

(assert (=> b!4463852 (= e!2779594 (contains!12782 (keys!17337 (extractMap!1067 lt!1654092)) key!3287))))

(declare-fun d!1360974 () Bool)

(declare-fun e!2779592 () Bool)

(assert (=> d!1360974 e!2779592))

(declare-fun res!1851573 () Bool)

(assert (=> d!1360974 (=> res!1851573 e!2779592)))

(declare-fun e!2779589 () Bool)

(assert (=> d!1360974 (= res!1851573 e!2779589)))

(declare-fun res!1851574 () Bool)

(assert (=> d!1360974 (=> (not res!1851574) (not e!2779589))))

(declare-fun lt!1654172 () Bool)

(assert (=> d!1360974 (= res!1851574 (not lt!1654172))))

(declare-fun lt!1654167 () Bool)

(assert (=> d!1360974 (= lt!1654172 lt!1654167)))

(declare-fun lt!1654168 () Unit!87073)

(declare-fun e!2779591 () Unit!87073)

(assert (=> d!1360974 (= lt!1654168 e!2779591)))

(declare-fun c!759637 () Bool)

(assert (=> d!1360974 (= c!759637 lt!1654167)))

(declare-fun containsKey!1433 (List!50370 K!11668) Bool)

(assert (=> d!1360974 (= lt!1654167 (containsKey!1433 (toList!4030 (extractMap!1067 lt!1654092)) key!3287))))

(assert (=> d!1360974 (= (contains!12778 (extractMap!1067 lt!1654092) key!3287) lt!1654172)))

(declare-fun b!4463853 () Bool)

(declare-fun e!2779590 () Unit!87073)

(assert (=> b!4463853 (= e!2779591 e!2779590)))

(declare-fun c!759636 () Bool)

(declare-fun call!310747 () Bool)

(assert (=> b!4463853 (= c!759636 call!310747)))

(declare-fun b!4463854 () Bool)

(declare-fun e!2779593 () List!50374)

(declare-fun getKeysList!362 (List!50370) List!50374)

(assert (=> b!4463854 (= e!2779593 (getKeysList!362 (toList!4030 (extractMap!1067 lt!1654092))))))

(declare-fun b!4463855 () Bool)

(assert (=> b!4463855 false))

(declare-fun lt!1654169 () Unit!87073)

(declare-fun lt!1654166 () Unit!87073)

(assert (=> b!4463855 (= lt!1654169 lt!1654166)))

(assert (=> b!4463855 (containsKey!1433 (toList!4030 (extractMap!1067 lt!1654092)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!361 (List!50370 K!11668) Unit!87073)

(assert (=> b!4463855 (= lt!1654166 (lemmaInGetKeysListThenContainsKey!361 (toList!4030 (extractMap!1067 lt!1654092)) key!3287))))

(declare-fun Unit!87081 () Unit!87073)

(assert (=> b!4463855 (= e!2779590 Unit!87081)))

(declare-fun b!4463856 () Bool)

(assert (=> b!4463856 (= e!2779592 e!2779594)))

(declare-fun res!1851572 () Bool)

(assert (=> b!4463856 (=> (not res!1851572) (not e!2779594))))

(declare-datatypes ((Option!10900 0))(
  ( (None!10899) (Some!10899 (v!44175 V!11914)) )
))
(declare-fun isDefined!8187 (Option!10900) Bool)

(declare-fun getValueByKey!886 (List!50370 K!11668) Option!10900)

(assert (=> b!4463856 (= res!1851572 (isDefined!8187 (getValueByKey!886 (toList!4030 (extractMap!1067 lt!1654092)) key!3287)))))

(declare-fun b!4463857 () Bool)

(declare-fun Unit!87082 () Unit!87073)

(assert (=> b!4463857 (= e!2779590 Unit!87082)))

(declare-fun b!4463858 () Bool)

(assert (=> b!4463858 (= e!2779589 (not (contains!12782 (keys!17337 (extractMap!1067 lt!1654092)) key!3287)))))

(declare-fun b!4463859 () Bool)

(assert (=> b!4463859 (= e!2779593 (keys!17337 (extractMap!1067 lt!1654092)))))

(declare-fun bm!310742 () Bool)

(assert (=> bm!310742 (= call!310747 (contains!12782 e!2779593 key!3287))))

(declare-fun c!759638 () Bool)

(assert (=> bm!310742 (= c!759638 c!759637)))

(declare-fun b!4463860 () Bool)

(declare-fun lt!1654165 () Unit!87073)

(assert (=> b!4463860 (= e!2779591 lt!1654165)))

(declare-fun lt!1654171 () Unit!87073)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!790 (List!50370 K!11668) Unit!87073)

(assert (=> b!4463860 (= lt!1654171 (lemmaContainsKeyImpliesGetValueByKeyDefined!790 (toList!4030 (extractMap!1067 lt!1654092)) key!3287))))

(assert (=> b!4463860 (isDefined!8187 (getValueByKey!886 (toList!4030 (extractMap!1067 lt!1654092)) key!3287))))

(declare-fun lt!1654170 () Unit!87073)

(assert (=> b!4463860 (= lt!1654170 lt!1654171)))

(declare-fun lemmaInListThenGetKeysListContains!358 (List!50370 K!11668) Unit!87073)

(assert (=> b!4463860 (= lt!1654165 (lemmaInListThenGetKeysListContains!358 (toList!4030 (extractMap!1067 lt!1654092)) key!3287))))

(assert (=> b!4463860 call!310747))

(assert (= (and d!1360974 c!759637) b!4463860))

(assert (= (and d!1360974 (not c!759637)) b!4463853))

(assert (= (and b!4463853 c!759636) b!4463855))

(assert (= (and b!4463853 (not c!759636)) b!4463857))

(assert (= (or b!4463860 b!4463853) bm!310742))

(assert (= (and bm!310742 c!759638) b!4463854))

(assert (= (and bm!310742 (not c!759638)) b!4463859))

(assert (= (and d!1360974 res!1851574) b!4463858))

(assert (= (and d!1360974 (not res!1851573)) b!4463856))

(assert (= (and b!4463856 res!1851572) b!4463852))

(declare-fun m!5167493 () Bool)

(assert (=> b!4463854 m!5167493))

(declare-fun m!5167495 () Bool)

(assert (=> b!4463855 m!5167495))

(declare-fun m!5167497 () Bool)

(assert (=> b!4463855 m!5167497))

(declare-fun m!5167499 () Bool)

(assert (=> b!4463860 m!5167499))

(declare-fun m!5167501 () Bool)

(assert (=> b!4463860 m!5167501))

(assert (=> b!4463860 m!5167501))

(declare-fun m!5167503 () Bool)

(assert (=> b!4463860 m!5167503))

(declare-fun m!5167505 () Bool)

(assert (=> b!4463860 m!5167505))

(assert (=> b!4463856 m!5167501))

(assert (=> b!4463856 m!5167501))

(assert (=> b!4463856 m!5167503))

(assert (=> b!4463859 m!5167363))

(declare-fun m!5167507 () Bool)

(assert (=> b!4463859 m!5167507))

(assert (=> d!1360974 m!5167495))

(assert (=> b!4463852 m!5167363))

(assert (=> b!4463852 m!5167507))

(assert (=> b!4463852 m!5167507))

(declare-fun m!5167509 () Bool)

(assert (=> b!4463852 m!5167509))

(declare-fun m!5167511 () Bool)

(assert (=> bm!310742 m!5167511))

(assert (=> b!4463858 m!5167363))

(assert (=> b!4463858 m!5167507))

(assert (=> b!4463858 m!5167507))

(assert (=> b!4463858 m!5167509))

(assert (=> b!4463740 d!1360974))

(declare-fun bs!792213 () Bool)

(declare-fun d!1360980 () Bool)

(assert (= bs!792213 (and d!1360980 start!437910)))

(declare-fun lambda!162299 () Int)

(assert (=> bs!792213 (= lambda!162299 lambda!162278)))

(declare-fun bs!792214 () Bool)

(assert (= bs!792214 (and d!1360980 d!1360954)))

(assert (=> bs!792214 (not (= lambda!162299 lambda!162288))))

(declare-fun bs!792215 () Bool)

(assert (= bs!792215 (and d!1360980 d!1360962)))

(assert (=> bs!792215 (= lambda!162299 lambda!162291)))

(declare-fun bs!792216 () Bool)

(assert (= bs!792216 (and d!1360980 d!1360972)))

(assert (=> bs!792216 (= lambda!162299 lambda!162294)))

(declare-fun lt!1654173 () ListMap!3291)

(assert (=> d!1360980 (invariantList!914 (toList!4030 lt!1654173))))

(declare-fun e!2779595 () ListMap!3291)

(assert (=> d!1360980 (= lt!1654173 e!2779595)))

(declare-fun c!759639 () Bool)

(assert (=> d!1360980 (= c!759639 (is-Cons!50247 lt!1654092))))

(assert (=> d!1360980 (forall!9958 lt!1654092 lambda!162299)))

(assert (=> d!1360980 (= (extractMap!1067 lt!1654092) lt!1654173)))

(declare-fun b!4463861 () Bool)

(assert (=> b!4463861 (= e!2779595 (addToMapMapFromBucket!576 (_2!28534 (h!55998 lt!1654092)) (extractMap!1067 (t!357321 lt!1654092))))))

(declare-fun b!4463862 () Bool)

(assert (=> b!4463862 (= e!2779595 (ListMap!3292 Nil!50246))))

(assert (= (and d!1360980 c!759639) b!4463861))

(assert (= (and d!1360980 (not c!759639)) b!4463862))

(declare-fun m!5167513 () Bool)

(assert (=> d!1360980 m!5167513))

(declare-fun m!5167515 () Bool)

(assert (=> d!1360980 m!5167515))

(declare-fun m!5167517 () Bool)

(assert (=> b!4463861 m!5167517))

(assert (=> b!4463861 m!5167517))

(declare-fun m!5167519 () Bool)

(assert (=> b!4463861 m!5167519))

(assert (=> b!4463740 d!1360980))

(declare-fun d!1360982 () Bool)

(declare-fun content!8063 (List!50370) (Set tuple2!50478))

(assert (=> d!1360982 (= (eq!504 (extractMap!1067 lt!1654091) (-!273 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)) key!3287)) (= (content!8063 (toList!4030 (extractMap!1067 lt!1654091))) (content!8063 (toList!4030 (-!273 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)) key!3287)))))))

(declare-fun bs!792217 () Bool)

(assert (= bs!792217 d!1360982))

(declare-fun m!5167521 () Bool)

(assert (=> bs!792217 m!5167521))

(declare-fun m!5167523 () Bool)

(assert (=> bs!792217 m!5167523))

(assert (=> b!4463740 d!1360982))

(declare-fun d!1360984 () Bool)

(assert (=> d!1360984 (eq!504 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 newBucket!178) Nil!50247)) (-!273 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)) key!3287))))

(declare-fun lt!1654179 () Unit!87073)

(declare-fun choose!28451 ((_ BitVec 64) List!50370 List!50370 K!11668 Hashable!5406) Unit!87073)

(assert (=> d!1360984 (= lt!1654179 (choose!28451 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1360984 (noDuplicateKeys!1011 (_2!28534 (h!55998 (toList!4029 lm!1477))))))

(assert (=> d!1360984 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!3 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1654179)))

(declare-fun bs!792218 () Bool)

(assert (= bs!792218 d!1360984))

(declare-fun m!5167539 () Bool)

(assert (=> bs!792218 m!5167539))

(assert (=> bs!792218 m!5167539))

(assert (=> bs!792218 m!5167355))

(declare-fun m!5167541 () Bool)

(assert (=> bs!792218 m!5167541))

(declare-fun m!5167543 () Bool)

(assert (=> bs!792218 m!5167543))

(assert (=> bs!792218 m!5167353))

(declare-fun m!5167545 () Bool)

(assert (=> bs!792218 m!5167545))

(assert (=> bs!792218 m!5167353))

(assert (=> bs!792218 m!5167355))

(assert (=> b!4463740 d!1360984))

(declare-fun d!1360988 () Bool)

(declare-fun e!2779601 () Bool)

(assert (=> d!1360988 e!2779601))

(declare-fun res!1851583 () Bool)

(assert (=> d!1360988 (=> (not res!1851583) (not e!2779601))))

(declare-fun lt!1654190 () ListLongMap!2661)

(assert (=> d!1360988 (= res!1851583 (contains!12777 lt!1654190 (_1!28534 lt!1654083)))))

(declare-fun lt!1654188 () List!50371)

(assert (=> d!1360988 (= lt!1654190 (ListLongMap!2662 lt!1654188))))

(declare-fun lt!1654191 () Unit!87073)

(declare-fun lt!1654189 () Unit!87073)

(assert (=> d!1360988 (= lt!1654191 lt!1654189)))

(declare-datatypes ((Option!10901 0))(
  ( (None!10900) (Some!10900 (v!44177 List!50370)) )
))
(declare-fun getValueByKey!887 (List!50371 (_ BitVec 64)) Option!10901)

(assert (=> d!1360988 (= (getValueByKey!887 lt!1654188 (_1!28534 lt!1654083)) (Some!10900 (_2!28534 lt!1654083)))))

(declare-fun lemmaContainsTupThenGetReturnValue!571 (List!50371 (_ BitVec 64) List!50370) Unit!87073)

(assert (=> d!1360988 (= lt!1654189 (lemmaContainsTupThenGetReturnValue!571 lt!1654188 (_1!28534 lt!1654083) (_2!28534 lt!1654083)))))

(declare-fun insertStrictlySorted!317 (List!50371 (_ BitVec 64) List!50370) List!50371)

(assert (=> d!1360988 (= lt!1654188 (insertStrictlySorted!317 (toList!4029 lm!1477) (_1!28534 lt!1654083) (_2!28534 lt!1654083)))))

(assert (=> d!1360988 (= (+!1347 lm!1477 lt!1654083) lt!1654190)))

(declare-fun b!4463870 () Bool)

(declare-fun res!1851582 () Bool)

(assert (=> b!4463870 (=> (not res!1851582) (not e!2779601))))

(assert (=> b!4463870 (= res!1851582 (= (getValueByKey!887 (toList!4029 lt!1654190) (_1!28534 lt!1654083)) (Some!10900 (_2!28534 lt!1654083))))))

(declare-fun b!4463871 () Bool)

(assert (=> b!4463871 (= e!2779601 (contains!12776 (toList!4029 lt!1654190) lt!1654083))))

(assert (= (and d!1360988 res!1851583) b!4463870))

(assert (= (and b!4463870 res!1851582) b!4463871))

(declare-fun m!5167547 () Bool)

(assert (=> d!1360988 m!5167547))

(declare-fun m!5167549 () Bool)

(assert (=> d!1360988 m!5167549))

(declare-fun m!5167551 () Bool)

(assert (=> d!1360988 m!5167551))

(declare-fun m!5167553 () Bool)

(assert (=> d!1360988 m!5167553))

(declare-fun m!5167555 () Bool)

(assert (=> b!4463870 m!5167555))

(declare-fun m!5167557 () Bool)

(assert (=> b!4463871 m!5167557))

(assert (=> b!4463740 d!1360988))

(declare-fun bs!792219 () Bool)

(declare-fun d!1360990 () Bool)

(assert (= bs!792219 (and d!1360990 d!1360980)))

(declare-fun lambda!162300 () Int)

(assert (=> bs!792219 (= lambda!162300 lambda!162299)))

(declare-fun bs!792220 () Bool)

(assert (= bs!792220 (and d!1360990 start!437910)))

(assert (=> bs!792220 (= lambda!162300 lambda!162278)))

(declare-fun bs!792221 () Bool)

(assert (= bs!792221 (and d!1360990 d!1360962)))

(assert (=> bs!792221 (= lambda!162300 lambda!162291)))

(declare-fun bs!792222 () Bool)

(assert (= bs!792222 (and d!1360990 d!1360954)))

(assert (=> bs!792222 (not (= lambda!162300 lambda!162288))))

(declare-fun bs!792223 () Bool)

(assert (= bs!792223 (and d!1360990 d!1360972)))

(assert (=> bs!792223 (= lambda!162300 lambda!162294)))

(declare-fun lt!1654192 () ListMap!3291)

(assert (=> d!1360990 (invariantList!914 (toList!4030 lt!1654192))))

(declare-fun e!2779602 () ListMap!3291)

(assert (=> d!1360990 (= lt!1654192 e!2779602)))

(declare-fun c!759640 () Bool)

(assert (=> d!1360990 (= c!759640 (is-Cons!50247 lt!1654091))))

(assert (=> d!1360990 (forall!9958 lt!1654091 lambda!162300)))

(assert (=> d!1360990 (= (extractMap!1067 lt!1654091) lt!1654192)))

(declare-fun b!4463872 () Bool)

(assert (=> b!4463872 (= e!2779602 (addToMapMapFromBucket!576 (_2!28534 (h!55998 lt!1654091)) (extractMap!1067 (t!357321 lt!1654091))))))

(declare-fun b!4463873 () Bool)

(assert (=> b!4463873 (= e!2779602 (ListMap!3292 Nil!50246))))

(assert (= (and d!1360990 c!759640) b!4463872))

(assert (= (and d!1360990 (not c!759640)) b!4463873))

(declare-fun m!5167559 () Bool)

(assert (=> d!1360990 m!5167559))

(declare-fun m!5167561 () Bool)

(assert (=> d!1360990 m!5167561))

(declare-fun m!5167563 () Bool)

(assert (=> b!4463872 m!5167563))

(assert (=> b!4463872 m!5167563))

(declare-fun m!5167565 () Bool)

(assert (=> b!4463872 m!5167565))

(assert (=> b!4463740 d!1360990))

(declare-fun d!1360992 () Bool)

(declare-fun e!2779605 () Bool)

(assert (=> d!1360992 e!2779605))

(declare-fun res!1851586 () Bool)

(assert (=> d!1360992 (=> (not res!1851586) (not e!2779605))))

(declare-fun lt!1654195 () ListMap!3291)

(assert (=> d!1360992 (= res!1851586 (not (contains!12778 lt!1654195 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!50 (List!50370 K!11668) List!50370)

(assert (=> d!1360992 (= lt!1654195 (ListMap!3292 (removePresrvNoDuplicatedKeys!50 (toList!4030 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247))) key!3287)))))

(assert (=> d!1360992 (= (-!273 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)) key!3287) lt!1654195)))

(declare-fun b!4463876 () Bool)

(declare-fun content!8064 (List!50374) (Set K!11668))

(assert (=> b!4463876 (= e!2779605 (= (set.minus (content!8064 (keys!17337 (extractMap!1067 (Cons!50247 (tuple2!50481 hash!344 (_2!28534 (h!55998 (toList!4029 lm!1477)))) Nil!50247)))) (set.insert key!3287 (as set.empty (Set K!11668)))) (content!8064 (keys!17337 lt!1654195))))))

(assert (= (and d!1360992 res!1851586) b!4463876))

(declare-fun m!5167567 () Bool)

(assert (=> d!1360992 m!5167567))

(declare-fun m!5167569 () Bool)

(assert (=> d!1360992 m!5167569))

(declare-fun m!5167571 () Bool)

(assert (=> b!4463876 m!5167571))

(declare-fun m!5167573 () Bool)

(assert (=> b!4463876 m!5167573))

(declare-fun m!5167575 () Bool)

(assert (=> b!4463876 m!5167575))

(declare-fun m!5167577 () Bool)

(assert (=> b!4463876 m!5167577))

(declare-fun m!5167579 () Bool)

(assert (=> b!4463876 m!5167579))

(assert (=> b!4463876 m!5167353))

(assert (=> b!4463876 m!5167571))

(assert (=> b!4463876 m!5167577))

(assert (=> b!4463740 d!1360992))

(declare-fun bs!792224 () Bool)

(declare-fun d!1360994 () Bool)

(assert (= bs!792224 (and d!1360994 d!1360990)))

(declare-fun lambda!162303 () Int)

(assert (=> bs!792224 (= lambda!162303 lambda!162300)))

(declare-fun bs!792225 () Bool)

(assert (= bs!792225 (and d!1360994 d!1360980)))

(assert (=> bs!792225 (= lambda!162303 lambda!162299)))

(declare-fun bs!792226 () Bool)

(assert (= bs!792226 (and d!1360994 start!437910)))

(assert (=> bs!792226 (= lambda!162303 lambda!162278)))

(declare-fun bs!792227 () Bool)

(assert (= bs!792227 (and d!1360994 d!1360962)))

(assert (=> bs!792227 (= lambda!162303 lambda!162291)))

(declare-fun bs!792228 () Bool)

(assert (= bs!792228 (and d!1360994 d!1360954)))

(assert (=> bs!792228 (not (= lambda!162303 lambda!162288))))

(declare-fun bs!792229 () Bool)

(assert (= bs!792229 (and d!1360994 d!1360972)))

(assert (=> bs!792229 (= lambda!162303 lambda!162294)))

(assert (=> d!1360994 (contains!12778 (extractMap!1067 (toList!4029 (ListLongMap!2662 lt!1654092))) key!3287)))

(declare-fun lt!1654198 () Unit!87073)

(declare-fun choose!28452 (ListLongMap!2661 K!11668 Hashable!5406) Unit!87073)

(assert (=> d!1360994 (= lt!1654198 (choose!28452 (ListLongMap!2662 lt!1654092) key!3287 hashF!1107))))

(assert (=> d!1360994 (forall!9958 (toList!4029 (ListLongMap!2662 lt!1654092)) lambda!162303)))

(assert (=> d!1360994 (= (lemmaListContainsThenExtractedMapContains!7 (ListLongMap!2662 lt!1654092) key!3287 hashF!1107) lt!1654198)))

(declare-fun bs!792230 () Bool)

(assert (= bs!792230 d!1360994))

(declare-fun m!5167581 () Bool)

(assert (=> bs!792230 m!5167581))

(assert (=> bs!792230 m!5167581))

(declare-fun m!5167583 () Bool)

(assert (=> bs!792230 m!5167583))

(declare-fun m!5167585 () Bool)

(assert (=> bs!792230 m!5167585))

(declare-fun m!5167587 () Bool)

(assert (=> bs!792230 m!5167587))

(assert (=> b!4463740 d!1360994))

(declare-fun d!1360996 () Bool)

(declare-fun res!1851591 () Bool)

(declare-fun e!2779610 () Bool)

(assert (=> d!1360996 (=> res!1851591 e!2779610)))

(assert (=> d!1360996 (= res!1851591 (is-Nil!50247 lt!1654091))))

(assert (=> d!1360996 (= (forall!9958 lt!1654091 lambda!162278) e!2779610)))

(declare-fun b!4463881 () Bool)

(declare-fun e!2779611 () Bool)

(assert (=> b!4463881 (= e!2779610 e!2779611)))

(declare-fun res!1851592 () Bool)

(assert (=> b!4463881 (=> (not res!1851592) (not e!2779611))))

(declare-fun dynLambda!20993 (Int tuple2!50480) Bool)

(assert (=> b!4463881 (= res!1851592 (dynLambda!20993 lambda!162278 (h!55998 lt!1654091)))))

(declare-fun b!4463882 () Bool)

(assert (=> b!4463882 (= e!2779611 (forall!9958 (t!357321 lt!1654091) lambda!162278))))

(assert (= (and d!1360996 (not res!1851591)) b!4463881))

(assert (= (and b!4463881 res!1851592) b!4463882))

(declare-fun b_lambda!147901 () Bool)

(assert (=> (not b_lambda!147901) (not b!4463881)))

(declare-fun m!5167589 () Bool)

(assert (=> b!4463881 m!5167589))

(declare-fun m!5167591 () Bool)

(assert (=> b!4463882 m!5167591))

(assert (=> b!4463729 d!1360996))

(declare-fun b!4463887 () Bool)

(declare-fun e!2779619 () Bool)

(assert (=> b!4463887 (= e!2779619 (contains!12782 (keys!17337 (extractMap!1067 (toList!4029 lm!1477))) key!3287))))

(declare-fun d!1360998 () Bool)

(declare-fun e!2779617 () Bool)

(assert (=> d!1360998 e!2779617))

(declare-fun res!1851594 () Bool)

(assert (=> d!1360998 (=> res!1851594 e!2779617)))

(declare-fun e!2779614 () Bool)

(assert (=> d!1360998 (= res!1851594 e!2779614)))

(declare-fun res!1851595 () Bool)

(assert (=> d!1360998 (=> (not res!1851595) (not e!2779614))))

(declare-fun lt!1654212 () Bool)

(assert (=> d!1360998 (= res!1851595 (not lt!1654212))))

(declare-fun lt!1654207 () Bool)

(assert (=> d!1360998 (= lt!1654212 lt!1654207)))

(declare-fun lt!1654208 () Unit!87073)

(declare-fun e!2779616 () Unit!87073)

(assert (=> d!1360998 (= lt!1654208 e!2779616)))

(declare-fun c!759644 () Bool)

(assert (=> d!1360998 (= c!759644 lt!1654207)))

(assert (=> d!1360998 (= lt!1654207 (containsKey!1433 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287))))

(assert (=> d!1360998 (= (contains!12778 (extractMap!1067 (toList!4029 lm!1477)) key!3287) lt!1654212)))

(declare-fun b!4463888 () Bool)

(declare-fun e!2779615 () Unit!87073)

(assert (=> b!4463888 (= e!2779616 e!2779615)))

(declare-fun c!759643 () Bool)

(declare-fun call!310748 () Bool)

(assert (=> b!4463888 (= c!759643 call!310748)))

(declare-fun b!4463889 () Bool)

(declare-fun e!2779618 () List!50374)

(assert (=> b!4463889 (= e!2779618 (getKeysList!362 (toList!4030 (extractMap!1067 (toList!4029 lm!1477)))))))

(declare-fun b!4463890 () Bool)

(assert (=> b!4463890 false))

(declare-fun lt!1654209 () Unit!87073)

(declare-fun lt!1654206 () Unit!87073)

(assert (=> b!4463890 (= lt!1654209 lt!1654206)))

(assert (=> b!4463890 (containsKey!1433 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287)))

(assert (=> b!4463890 (= lt!1654206 (lemmaInGetKeysListThenContainsKey!361 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287))))

(declare-fun Unit!87083 () Unit!87073)

(assert (=> b!4463890 (= e!2779615 Unit!87083)))

(declare-fun b!4463891 () Bool)

(assert (=> b!4463891 (= e!2779617 e!2779619)))

(declare-fun res!1851593 () Bool)

(assert (=> b!4463891 (=> (not res!1851593) (not e!2779619))))

(assert (=> b!4463891 (= res!1851593 (isDefined!8187 (getValueByKey!886 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287)))))

(declare-fun b!4463892 () Bool)

(declare-fun Unit!87084 () Unit!87073)

(assert (=> b!4463892 (= e!2779615 Unit!87084)))

(declare-fun b!4463893 () Bool)

(assert (=> b!4463893 (= e!2779614 (not (contains!12782 (keys!17337 (extractMap!1067 (toList!4029 lm!1477))) key!3287)))))

(declare-fun b!4463894 () Bool)

(assert (=> b!4463894 (= e!2779618 (keys!17337 (extractMap!1067 (toList!4029 lm!1477))))))

(declare-fun bm!310743 () Bool)

(assert (=> bm!310743 (= call!310748 (contains!12782 e!2779618 key!3287))))

(declare-fun c!759645 () Bool)

(assert (=> bm!310743 (= c!759645 c!759644)))

(declare-fun b!4463895 () Bool)

(declare-fun lt!1654205 () Unit!87073)

(assert (=> b!4463895 (= e!2779616 lt!1654205)))

(declare-fun lt!1654211 () Unit!87073)

(assert (=> b!4463895 (= lt!1654211 (lemmaContainsKeyImpliesGetValueByKeyDefined!790 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287))))

(assert (=> b!4463895 (isDefined!8187 (getValueByKey!886 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287))))

(declare-fun lt!1654210 () Unit!87073)

(assert (=> b!4463895 (= lt!1654210 lt!1654211)))

(assert (=> b!4463895 (= lt!1654205 (lemmaInListThenGetKeysListContains!358 (toList!4030 (extractMap!1067 (toList!4029 lm!1477))) key!3287))))

(assert (=> b!4463895 call!310748))

(assert (= (and d!1360998 c!759644) b!4463895))

(assert (= (and d!1360998 (not c!759644)) b!4463888))

(assert (= (and b!4463888 c!759643) b!4463890))

(assert (= (and b!4463888 (not c!759643)) b!4463892))

(assert (= (or b!4463895 b!4463888) bm!310743))

(assert (= (and bm!310743 c!759645) b!4463889))

(assert (= (and bm!310743 (not c!759645)) b!4463894))

(assert (= (and d!1360998 res!1851595) b!4463893))

(assert (= (and d!1360998 (not res!1851594)) b!4463891))

(assert (= (and b!4463891 res!1851593) b!4463887))

(declare-fun m!5167593 () Bool)

(assert (=> b!4463889 m!5167593))

(declare-fun m!5167595 () Bool)

(assert (=> b!4463890 m!5167595))

(declare-fun m!5167597 () Bool)

(assert (=> b!4463890 m!5167597))

(declare-fun m!5167599 () Bool)

(assert (=> b!4463895 m!5167599))

(declare-fun m!5167601 () Bool)

(assert (=> b!4463895 m!5167601))

(assert (=> b!4463895 m!5167601))

(declare-fun m!5167603 () Bool)

(assert (=> b!4463895 m!5167603))

(declare-fun m!5167605 () Bool)

(assert (=> b!4463895 m!5167605))

(assert (=> b!4463891 m!5167601))

(assert (=> b!4463891 m!5167601))

(assert (=> b!4463891 m!5167603))

(assert (=> b!4463894 m!5167375))

(declare-fun m!5167607 () Bool)

(assert (=> b!4463894 m!5167607))

(assert (=> d!1360998 m!5167595))

(assert (=> b!4463887 m!5167375))

(assert (=> b!4463887 m!5167607))

(assert (=> b!4463887 m!5167607))

(declare-fun m!5167609 () Bool)

(assert (=> b!4463887 m!5167609))

(declare-fun m!5167611 () Bool)

(assert (=> bm!310743 m!5167611))

(assert (=> b!4463893 m!5167375))

(assert (=> b!4463893 m!5167607))

(assert (=> b!4463893 m!5167607))

(assert (=> b!4463893 m!5167609))

(assert (=> b!4463737 d!1360998))

(declare-fun bs!792231 () Bool)

(declare-fun d!1361000 () Bool)

(assert (= bs!792231 (and d!1361000 d!1360990)))

(declare-fun lambda!162304 () Int)

(assert (=> bs!792231 (= lambda!162304 lambda!162300)))

(declare-fun bs!792232 () Bool)

(assert (= bs!792232 (and d!1361000 d!1360980)))

(assert (=> bs!792232 (= lambda!162304 lambda!162299)))

(declare-fun bs!792233 () Bool)

(assert (= bs!792233 (and d!1361000 d!1360994)))

(assert (=> bs!792233 (= lambda!162304 lambda!162303)))

(declare-fun bs!792234 () Bool)

(assert (= bs!792234 (and d!1361000 start!437910)))

(assert (=> bs!792234 (= lambda!162304 lambda!162278)))

(declare-fun bs!792235 () Bool)

(assert (= bs!792235 (and d!1361000 d!1360962)))

(assert (=> bs!792235 (= lambda!162304 lambda!162291)))

(declare-fun bs!792236 () Bool)

(assert (= bs!792236 (and d!1361000 d!1360954)))

(assert (=> bs!792236 (not (= lambda!162304 lambda!162288))))

(declare-fun bs!792237 () Bool)

(assert (= bs!792237 (and d!1361000 d!1360972)))

(assert (=> bs!792237 (= lambda!162304 lambda!162294)))

(declare-fun lt!1654223 () ListMap!3291)

(assert (=> d!1361000 (invariantList!914 (toList!4030 lt!1654223))))

(declare-fun e!2779622 () ListMap!3291)

(assert (=> d!1361000 (= lt!1654223 e!2779622)))

(declare-fun c!759648 () Bool)

(assert (=> d!1361000 (= c!759648 (is-Cons!50247 (toList!4029 lm!1477)))))

(assert (=> d!1361000 (forall!9958 (toList!4029 lm!1477) lambda!162304)))

(assert (=> d!1361000 (= (extractMap!1067 (toList!4029 lm!1477)) lt!1654223)))

(declare-fun b!4463900 () Bool)

(assert (=> b!4463900 (= e!2779622 (addToMapMapFromBucket!576 (_2!28534 (h!55998 (toList!4029 lm!1477))) (extractMap!1067 (t!357321 (toList!4029 lm!1477)))))))

(declare-fun b!4463901 () Bool)

(assert (=> b!4463901 (= e!2779622 (ListMap!3292 Nil!50246))))

(assert (= (and d!1361000 c!759648) b!4463900))

(assert (= (and d!1361000 (not c!759648)) b!4463901))

(declare-fun m!5167613 () Bool)

(assert (=> d!1361000 m!5167613))

(declare-fun m!5167615 () Bool)

(assert (=> d!1361000 m!5167615))

(declare-fun m!5167617 () Bool)

(assert (=> b!4463900 m!5167617))

(assert (=> b!4463900 m!5167617))

(declare-fun m!5167619 () Bool)

(assert (=> b!4463900 m!5167619))

(assert (=> b!4463737 d!1361000))

(declare-fun d!1361002 () Bool)

(declare-fun res!1851596 () Bool)

(declare-fun e!2779625 () Bool)

(assert (=> d!1361002 (=> res!1851596 e!2779625)))

(assert (=> d!1361002 (= res!1851596 (is-Nil!50247 (toList!4029 lm!1477)))))

(assert (=> d!1361002 (= (forall!9958 (toList!4029 lm!1477) lambda!162278) e!2779625)))

(declare-fun b!4463906 () Bool)

(declare-fun e!2779626 () Bool)

(assert (=> b!4463906 (= e!2779625 e!2779626)))

(declare-fun res!1851597 () Bool)

(assert (=> b!4463906 (=> (not res!1851597) (not e!2779626))))

(assert (=> b!4463906 (= res!1851597 (dynLambda!20993 lambda!162278 (h!55998 (toList!4029 lm!1477))))))

(declare-fun b!4463907 () Bool)

(assert (=> b!4463907 (= e!2779626 (forall!9958 (t!357321 (toList!4029 lm!1477)) lambda!162278))))

(assert (= (and d!1361002 (not res!1851596)) b!4463906))

(assert (= (and b!4463906 res!1851597) b!4463907))

(declare-fun b_lambda!147903 () Bool)

(assert (=> (not b_lambda!147903) (not b!4463906)))

(declare-fun m!5167621 () Bool)

(assert (=> b!4463906 m!5167621))

(declare-fun m!5167623 () Bool)

(assert (=> b!4463907 m!5167623))

(assert (=> start!437910 d!1361002))

(declare-fun d!1361004 () Bool)

(declare-fun isStrictlySorted!328 (List!50371) Bool)

(assert (=> d!1361004 (= (inv!65853 lm!1477) (isStrictlySorted!328 (toList!4029 lm!1477)))))

(declare-fun bs!792238 () Bool)

(assert (= bs!792238 d!1361004))

(declare-fun m!5167625 () Bool)

(assert (=> bs!792238 m!5167625))

(assert (=> start!437910 d!1361004))

(declare-fun d!1361006 () Bool)

(declare-fun e!2779637 () Bool)

(assert (=> d!1361006 e!2779637))

(declare-fun res!1851606 () Bool)

(assert (=> d!1361006 (=> res!1851606 e!2779637)))

(declare-fun lt!1654232 () Bool)

(assert (=> d!1361006 (= res!1851606 (not lt!1654232))))

(declare-fun lt!1654233 () Bool)

(assert (=> d!1361006 (= lt!1654232 lt!1654233)))

(declare-fun lt!1654234 () Unit!87073)

(declare-fun e!2779638 () Unit!87073)

(assert (=> d!1361006 (= lt!1654234 e!2779638)))

(declare-fun c!759653 () Bool)

(assert (=> d!1361006 (= c!759653 lt!1654233)))

(declare-fun containsKey!1434 (List!50371 (_ BitVec 64)) Bool)

(assert (=> d!1361006 (= lt!1654233 (containsKey!1434 (toList!4029 lm!1477) lt!1654088))))

(assert (=> d!1361006 (= (contains!12777 lm!1477 lt!1654088) lt!1654232)))

(declare-fun b!4463920 () Bool)

(declare-fun lt!1654235 () Unit!87073)

(assert (=> b!4463920 (= e!2779638 lt!1654235)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!791 (List!50371 (_ BitVec 64)) Unit!87073)

(assert (=> b!4463920 (= lt!1654235 (lemmaContainsKeyImpliesGetValueByKeyDefined!791 (toList!4029 lm!1477) lt!1654088))))

(declare-fun isDefined!8188 (Option!10901) Bool)

(assert (=> b!4463920 (isDefined!8188 (getValueByKey!887 (toList!4029 lm!1477) lt!1654088))))

(declare-fun b!4463921 () Bool)

(declare-fun Unit!87085 () Unit!87073)

(assert (=> b!4463921 (= e!2779638 Unit!87085)))

(declare-fun b!4463922 () Bool)

(assert (=> b!4463922 (= e!2779637 (isDefined!8188 (getValueByKey!887 (toList!4029 lm!1477) lt!1654088)))))

(assert (= (and d!1361006 c!759653) b!4463920))

(assert (= (and d!1361006 (not c!759653)) b!4463921))

(assert (= (and d!1361006 (not res!1851606)) b!4463922))

(declare-fun m!5167627 () Bool)

(assert (=> d!1361006 m!5167627))

(declare-fun m!5167629 () Bool)

(assert (=> b!4463920 m!5167629))

(declare-fun m!5167631 () Bool)

(assert (=> b!4463920 m!5167631))

(assert (=> b!4463920 m!5167631))

(declare-fun m!5167633 () Bool)

(assert (=> b!4463920 m!5167633))

(assert (=> b!4463922 m!5167631))

(assert (=> b!4463922 m!5167631))

(assert (=> b!4463922 m!5167633))

(assert (=> b!4463733 d!1361006))

(declare-fun d!1361008 () Bool)

(declare-fun get!16366 (Option!10901) List!50370)

(assert (=> d!1361008 (= (apply!11748 lm!1477 hash!344) (get!16366 (getValueByKey!887 (toList!4029 lm!1477) hash!344)))))

(declare-fun bs!792239 () Bool)

(assert (= bs!792239 d!1361008))

(declare-fun m!5167635 () Bool)

(assert (=> bs!792239 m!5167635))

(assert (=> bs!792239 m!5167635))

(declare-fun m!5167637 () Bool)

(assert (=> bs!792239 m!5167637))

(assert (=> b!4463733 d!1361008))

(declare-fun b!4463942 () Bool)

(declare-fun e!2779650 () List!50370)

(assert (=> b!4463942 (= e!2779650 (Cons!50246 (h!55997 lt!1654094) (removePairForKey!638 (t!357320 lt!1654094) key!3287)))))

(declare-fun d!1361010 () Bool)

(declare-fun lt!1654246 () List!50370)

(assert (=> d!1361010 (not (containsKey!1431 lt!1654246 key!3287))))

(declare-fun e!2779649 () List!50370)

(assert (=> d!1361010 (= lt!1654246 e!2779649)))

(declare-fun c!759662 () Bool)

(assert (=> d!1361010 (= c!759662 (and (is-Cons!50246 lt!1654094) (= (_1!28533 (h!55997 lt!1654094)) key!3287)))))

(assert (=> d!1361010 (noDuplicateKeys!1011 lt!1654094)))

(assert (=> d!1361010 (= (removePairForKey!638 lt!1654094 key!3287) lt!1654246)))

(declare-fun b!4463940 () Bool)

(assert (=> b!4463940 (= e!2779649 (t!357320 lt!1654094))))

(declare-fun b!4463941 () Bool)

(assert (=> b!4463941 (= e!2779649 e!2779650)))

(declare-fun c!759661 () Bool)

(assert (=> b!4463941 (= c!759661 (is-Cons!50246 lt!1654094))))

(declare-fun b!4463943 () Bool)

(assert (=> b!4463943 (= e!2779650 Nil!50246)))

(assert (= (and d!1361010 c!759662) b!4463940))

(assert (= (and d!1361010 (not c!759662)) b!4463941))

(assert (= (and b!4463941 c!759661) b!4463942))

(assert (= (and b!4463941 (not c!759661)) b!4463943))

(declare-fun m!5167659 () Bool)

(assert (=> b!4463942 m!5167659))

(declare-fun m!5167661 () Bool)

(assert (=> d!1361010 m!5167661))

(declare-fun m!5167663 () Bool)

(assert (=> d!1361010 m!5167663))

(assert (=> b!4463733 d!1361010))

(declare-fun d!1361014 () Bool)

(assert (=> d!1361014 (dynLambda!20993 lambda!162278 lt!1654085)))

(declare-fun lt!1654249 () Unit!87073)

(declare-fun choose!28453 (List!50371 Int tuple2!50480) Unit!87073)

(assert (=> d!1361014 (= lt!1654249 (choose!28453 (toList!4029 lm!1477) lambda!162278 lt!1654085))))

(declare-fun e!2779653 () Bool)

(assert (=> d!1361014 e!2779653))

(declare-fun res!1851612 () Bool)

(assert (=> d!1361014 (=> (not res!1851612) (not e!2779653))))

(assert (=> d!1361014 (= res!1851612 (forall!9958 (toList!4029 lm!1477) lambda!162278))))

(assert (=> d!1361014 (= (forallContained!2232 (toList!4029 lm!1477) lambda!162278 lt!1654085) lt!1654249)))

(declare-fun b!4463946 () Bool)

(assert (=> b!4463946 (= e!2779653 (contains!12776 (toList!4029 lm!1477) lt!1654085))))

(assert (= (and d!1361014 res!1851612) b!4463946))

(declare-fun b_lambda!147905 () Bool)

(assert (=> (not b_lambda!147905) (not d!1361014)))

(declare-fun m!5167665 () Bool)

(assert (=> d!1361014 m!5167665))

(declare-fun m!5167667 () Bool)

(assert (=> d!1361014 m!5167667))

(assert (=> d!1361014 m!5167379))

(assert (=> b!4463946 m!5167341))

(assert (=> b!4463733 d!1361014))

(declare-fun d!1361018 () Bool)

(declare-fun lt!1654252 () Bool)

(declare-fun content!8066 (List!50371) (Set tuple2!50480))

(assert (=> d!1361018 (= lt!1654252 (set.member lt!1654085 (content!8066 (toList!4029 lm!1477))))))

(declare-fun e!2779658 () Bool)

(assert (=> d!1361018 (= lt!1654252 e!2779658)))

(declare-fun res!1851617 () Bool)

(assert (=> d!1361018 (=> (not res!1851617) (not e!2779658))))

(assert (=> d!1361018 (= res!1851617 (is-Cons!50247 (toList!4029 lm!1477)))))

(assert (=> d!1361018 (= (contains!12776 (toList!4029 lm!1477) lt!1654085) lt!1654252)))

(declare-fun b!4463951 () Bool)

(declare-fun e!2779659 () Bool)

(assert (=> b!4463951 (= e!2779658 e!2779659)))

(declare-fun res!1851618 () Bool)

(assert (=> b!4463951 (=> res!1851618 e!2779659)))

(assert (=> b!4463951 (= res!1851618 (= (h!55998 (toList!4029 lm!1477)) lt!1654085))))

(declare-fun b!4463952 () Bool)

(assert (=> b!4463952 (= e!2779659 (contains!12776 (t!357321 (toList!4029 lm!1477)) lt!1654085))))

(assert (= (and d!1361018 res!1851617) b!4463951))

(assert (= (and b!4463951 (not res!1851618)) b!4463952))

(declare-fun m!5167669 () Bool)

(assert (=> d!1361018 m!5167669))

(declare-fun m!5167671 () Bool)

(assert (=> d!1361018 m!5167671))

(declare-fun m!5167673 () Bool)

(assert (=> b!4463952 m!5167673))

(assert (=> b!4463733 d!1361018))

(declare-fun bs!792240 () Bool)

(declare-fun d!1361020 () Bool)

(assert (= bs!792240 (and d!1361020 d!1360990)))

(declare-fun lambda!162307 () Int)

(assert (=> bs!792240 (= lambda!162307 lambda!162300)))

(declare-fun bs!792241 () Bool)

(assert (= bs!792241 (and d!1361020 d!1361000)))

(assert (=> bs!792241 (= lambda!162307 lambda!162304)))

(declare-fun bs!792242 () Bool)

(assert (= bs!792242 (and d!1361020 d!1360980)))

(assert (=> bs!792242 (= lambda!162307 lambda!162299)))

(declare-fun bs!792243 () Bool)

(assert (= bs!792243 (and d!1361020 d!1360994)))

(assert (=> bs!792243 (= lambda!162307 lambda!162303)))

(declare-fun bs!792244 () Bool)

(assert (= bs!792244 (and d!1361020 start!437910)))

(assert (=> bs!792244 (= lambda!162307 lambda!162278)))

(declare-fun bs!792245 () Bool)

(assert (= bs!792245 (and d!1361020 d!1360962)))

(assert (=> bs!792245 (= lambda!162307 lambda!162291)))

(declare-fun bs!792246 () Bool)

(assert (= bs!792246 (and d!1361020 d!1360954)))

(assert (=> bs!792246 (not (= lambda!162307 lambda!162288))))

(declare-fun bs!792247 () Bool)

(assert (= bs!792247 (and d!1361020 d!1360972)))

(assert (=> bs!792247 (= lambda!162307 lambda!162294)))

(assert (=> d!1361020 (contains!12777 lm!1477 (hash!2402 hashF!1107 key!3287))))

(declare-fun lt!1654255 () Unit!87073)

(declare-fun choose!28454 (ListLongMap!2661 K!11668 Hashable!5406) Unit!87073)

(assert (=> d!1361020 (= lt!1654255 (choose!28454 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361020 (forall!9958 (toList!4029 lm!1477) lambda!162307)))

(assert (=> d!1361020 (= (lemmaInGenMapThenLongMapContainsHash!85 lm!1477 key!3287 hashF!1107) lt!1654255)))

(declare-fun bs!792248 () Bool)

(assert (= bs!792248 d!1361020))

(assert (=> bs!792248 m!5167383))

(assert (=> bs!792248 m!5167383))

(declare-fun m!5167675 () Bool)

(assert (=> bs!792248 m!5167675))

(declare-fun m!5167677 () Bool)

(assert (=> bs!792248 m!5167677))

(declare-fun m!5167679 () Bool)

(assert (=> bs!792248 m!5167679))

(assert (=> b!4463733 d!1361020))

(declare-fun d!1361022 () Bool)

(assert (=> d!1361022 (contains!12776 (toList!4029 lm!1477) (tuple2!50481 hash!344 lt!1654094))))

(declare-fun lt!1654266 () Unit!87073)

(declare-fun choose!28455 (List!50371 (_ BitVec 64) List!50370) Unit!87073)

(assert (=> d!1361022 (= lt!1654266 (choose!28455 (toList!4029 lm!1477) hash!344 lt!1654094))))

(declare-fun e!2779664 () Bool)

(assert (=> d!1361022 e!2779664))

(declare-fun res!1851625 () Bool)

(assert (=> d!1361022 (=> (not res!1851625) (not e!2779664))))

(assert (=> d!1361022 (= res!1851625 (isStrictlySorted!328 (toList!4029 lm!1477)))))

(assert (=> d!1361022 (= (lemmaGetValueByKeyImpliesContainsTuple!523 (toList!4029 lm!1477) hash!344 lt!1654094) lt!1654266)))

(declare-fun b!4463959 () Bool)

(assert (=> b!4463959 (= e!2779664 (= (getValueByKey!887 (toList!4029 lm!1477) hash!344) (Some!10900 lt!1654094)))))

(assert (= (and d!1361022 res!1851625) b!4463959))

(declare-fun m!5167681 () Bool)

(assert (=> d!1361022 m!5167681))

(declare-fun m!5167683 () Bool)

(assert (=> d!1361022 m!5167683))

(assert (=> d!1361022 m!5167625))

(assert (=> b!4463959 m!5167635))

(assert (=> b!4463733 d!1361022))

(declare-fun d!1361024 () Bool)

(declare-fun res!1851630 () Bool)

(declare-fun e!2779669 () Bool)

(assert (=> d!1361024 (=> res!1851630 e!2779669)))

(assert (=> d!1361024 (= res!1851630 (and (is-Cons!50246 (_2!28534 (h!55998 (toList!4029 lm!1477)))) (= (_1!28533 (h!55997 (_2!28534 (h!55998 (toList!4029 lm!1477))))) key!3287)))))

(assert (=> d!1361024 (= (containsKey!1431 (_2!28534 (h!55998 (toList!4029 lm!1477))) key!3287) e!2779669)))

(declare-fun b!4463964 () Bool)

(declare-fun e!2779670 () Bool)

(assert (=> b!4463964 (= e!2779669 e!2779670)))

(declare-fun res!1851631 () Bool)

(assert (=> b!4463964 (=> (not res!1851631) (not e!2779670))))

(assert (=> b!4463964 (= res!1851631 (is-Cons!50246 (_2!28534 (h!55998 (toList!4029 lm!1477)))))))

(declare-fun b!4463965 () Bool)

(assert (=> b!4463965 (= e!2779670 (containsKey!1431 (t!357320 (_2!28534 (h!55998 (toList!4029 lm!1477)))) key!3287))))

(assert (= (and d!1361024 (not res!1851630)) b!4463964))

(assert (= (and b!4463964 res!1851631) b!4463965))

(declare-fun m!5167685 () Bool)

(assert (=> b!4463965 m!5167685))

(assert (=> b!4463735 d!1361024))

(declare-fun d!1361026 () Bool)

(assert (=> d!1361026 true))

(assert (=> d!1361026 true))

(declare-fun lambda!162310 () Int)

(declare-fun forall!9960 (List!50370 Int) Bool)

(assert (=> d!1361026 (= (allKeysSameHash!865 newBucket!178 hash!344 hashF!1107) (forall!9960 newBucket!178 lambda!162310))))

(declare-fun bs!792249 () Bool)

(assert (= bs!792249 d!1361026))

(declare-fun m!5167699 () Bool)

(assert (=> bs!792249 m!5167699))

(assert (=> b!4463734 d!1361026))

(declare-fun tp!1336024 () Bool)

(declare-fun e!2779674 () Bool)

(declare-fun b!4463976 () Bool)

(assert (=> b!4463976 (= e!2779674 (and tp_is_empty!27321 tp_is_empty!27323 tp!1336024))))

(assert (=> b!4463736 (= tp!1336015 e!2779674)))

(assert (= (and b!4463736 (is-Cons!50246 (t!357320 newBucket!178))) b!4463976))

(declare-fun b!4463981 () Bool)

(declare-fun e!2779677 () Bool)

(declare-fun tp!1336029 () Bool)

(declare-fun tp!1336030 () Bool)

(assert (=> b!4463981 (= e!2779677 (and tp!1336029 tp!1336030))))

(assert (=> b!4463738 (= tp!1336014 e!2779677)))

(assert (= (and b!4463738 (is-Cons!50247 (toList!4029 lm!1477))) b!4463981))

(declare-fun b_lambda!147907 () Bool)

(assert (= b_lambda!147903 (or start!437910 b_lambda!147907)))

(declare-fun bs!792250 () Bool)

(declare-fun d!1361030 () Bool)

(assert (= bs!792250 (and d!1361030 start!437910)))

(assert (=> bs!792250 (= (dynLambda!20993 lambda!162278 (h!55998 (toList!4029 lm!1477))) (noDuplicateKeys!1011 (_2!28534 (h!55998 (toList!4029 lm!1477)))))))

(assert (=> bs!792250 m!5167543))

(assert (=> b!4463906 d!1361030))

(declare-fun b_lambda!147909 () Bool)

(assert (= b_lambda!147905 (or start!437910 b_lambda!147909)))

(declare-fun bs!792251 () Bool)

(declare-fun d!1361032 () Bool)

(assert (= bs!792251 (and d!1361032 start!437910)))

(assert (=> bs!792251 (= (dynLambda!20993 lambda!162278 lt!1654085) (noDuplicateKeys!1011 (_2!28534 lt!1654085)))))

(declare-fun m!5167701 () Bool)

(assert (=> bs!792251 m!5167701))

(assert (=> d!1361014 d!1361032))

(declare-fun b_lambda!147911 () Bool)

(assert (= b_lambda!147901 (or start!437910 b_lambda!147911)))

(declare-fun bs!792252 () Bool)

(declare-fun d!1361034 () Bool)

(assert (= bs!792252 (and d!1361034 start!437910)))

(assert (=> bs!792252 (= (dynLambda!20993 lambda!162278 (h!55998 lt!1654091)) (noDuplicateKeys!1011 (_2!28534 (h!55998 lt!1654091))))))

(declare-fun m!5167703 () Bool)

(assert (=> bs!792252 m!5167703))

(assert (=> b!4463881 d!1361034))

(push 1)

(assert (not b!4463887))

(assert (not b!4463856))

(assert (not b!4463871))

(assert (not d!1361022))

(assert (not b!4463860))

(assert (not b!4463882))

(assert (not d!1360990))

(assert (not d!1360980))

(assert (not bm!310742))

(assert (not b!4463900))

(assert (not b!4463854))

(assert (not b!4463894))

(assert (not d!1361020))

(assert (not b!4463858))

(assert (not d!1360982))

(assert (not d!1361004))

(assert (not bm!310743))

(assert (not b!4463815))

(assert (not b!4463803))

(assert (not b!4463852))

(assert (not d!1360988))

(assert (not b!4463817))

(assert (not d!1360998))

(assert (not d!1361026))

(assert (not d!1361000))

(assert (not d!1360994))

(assert (not b!4463893))

(assert (not d!1360974))

(assert (not d!1361010))

(assert (not d!1360992))

(assert (not b!4463895))

(assert (not bs!792250))

(assert (not d!1361014))

(assert (not b!4463976))

(assert (not d!1361006))

(assert (not b!4463981))

(assert (not b!4463861))

(assert (not b!4463922))

(assert (not b!4463855))

(assert (not b!4463824))

(assert (not b!4463907))

(assert (not b!4463889))

(assert (not b!4463965))

(assert (not d!1360954))

(assert (not b_lambda!147907))

(assert (not b!4463859))

(assert (not b_lambda!147911))

(assert (not b!4463946))

(assert (not b!4463804))

(assert (not d!1360972))

(assert tp_is_empty!27321)

(assert (not b!4463891))

(assert (not b!4463920))

(assert tp_is_empty!27323)

(assert (not bs!792251))

(assert (not d!1360962))

(assert (not b!4463952))

(assert (not b!4463876))

(assert (not d!1361008))

(assert (not b!4463959))

(assert (not d!1361018))

(assert (not b_lambda!147909))

(assert (not b!4463942))

(assert (not d!1360984))

(assert (not b!4463870))

(assert (not d!1360968))

(assert (not bs!792252))

(assert (not b!4463890))

(assert (not b!4463872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

