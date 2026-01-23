; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!455896 () Bool)

(assert start!455896)

(declare-fun bs!971501 () Bool)

(declare-fun b!4579364 () Bool)

(assert (= bs!971501 (and b!4579364 start!455896)))

(declare-fun lambda!182878 () Int)

(declare-fun lambda!182877 () Int)

(assert (=> bs!971501 (not (= lambda!182878 lambda!182877))))

(assert (=> b!4579364 true))

(assert (=> b!4579364 true))

(assert (=> b!4579364 true))

(declare-fun b!4579337 () Bool)

(declare-fun e!2855581 () Bool)

(declare-fun e!2855575 () Bool)

(assert (=> b!4579337 (= e!2855581 e!2855575)))

(declare-fun res!1913106 () Bool)

(assert (=> b!4579337 (=> res!1913106 e!2855575)))

(declare-datatypes ((K!12315 0))(
  ( (K!12316 (val!18123 Int)) )
))
(declare-datatypes ((V!12561 0))(
  ( (V!12562 (val!18124 Int)) )
))
(declare-datatypes ((tuple2!51514 0))(
  ( (tuple2!51515 (_1!29051 K!12315) (_2!29051 V!12561)) )
))
(declare-datatypes ((List!51068 0))(
  ( (Nil!50944) (Cons!50944 (h!56877 tuple2!51514) (t!358058 List!51068)) )
))
(declare-datatypes ((tuple2!51516 0))(
  ( (tuple2!51517 (_1!29052 (_ BitVec 64)) (_2!29052 List!51068)) )
))
(declare-datatypes ((List!51069 0))(
  ( (Nil!50945) (Cons!50945 (h!56878 tuple2!51516) (t!358059 List!51069)) )
))
(declare-datatypes ((ListLongMap!3179 0))(
  ( (ListLongMap!3180 (toList!4547 List!51069)) )
))
(declare-fun lm!1477 () ListLongMap!3179)

(declare-fun key!3287 () K!12315)

(declare-fun containsKeyBiggerList!240 (List!51069 K!12315) Bool)

(assert (=> b!4579337 (= res!1913106 (not (containsKeyBiggerList!240 (t!358059 (toList!4547 lm!1477)) key!3287)))))

(declare-fun lt!1744529 () ListLongMap!3179)

(assert (=> b!4579337 (containsKeyBiggerList!240 (toList!4547 lt!1744529) key!3287)))

(declare-datatypes ((Hashable!5665 0))(
  ( (HashableExt!5664 (__x!31368 Int)) )
))
(declare-fun hashF!1107 () Hashable!5665)

(declare-datatypes ((Unit!105431 0))(
  ( (Unit!105432) )
))
(declare-fun lt!1744540 () Unit!105431)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!152 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> b!4579337 (= lt!1744540 (lemmaInLongMapThenContainsKeyBiggerList!152 lt!1744529 key!3287 hashF!1107))))

(declare-fun b!4579338 () Bool)

(declare-fun e!2855571 () Bool)

(declare-fun e!2855574 () Bool)

(assert (=> b!4579338 (= e!2855571 e!2855574)))

(declare-fun res!1913098 () Bool)

(assert (=> b!4579338 (=> res!1913098 e!2855574)))

(declare-datatypes ((ListMap!3809 0))(
  ( (ListMap!3810 (toList!4548 List!51068)) )
))
(declare-fun lt!1744562 () ListMap!3809)

(declare-fun lt!1744533 () ListMap!3809)

(declare-fun eq!709 (ListMap!3809 ListMap!3809) Bool)

(assert (=> b!4579338 (= res!1913098 (not (eq!709 lt!1744562 lt!1744533)))))

(declare-fun lt!1744536 () tuple2!51516)

(declare-fun extractMap!1326 (List!51069) ListMap!3809)

(declare-fun +!1704 (ListLongMap!3179 tuple2!51516) ListLongMap!3179)

(assert (=> b!4579338 (= lt!1744562 (extractMap!1326 (toList!4547 (+!1704 lt!1744529 lt!1744536))))))

(declare-fun head!9534 (ListLongMap!3179) tuple2!51516)

(assert (=> b!4579338 (= lt!1744536 (head!9534 lm!1477))))

(declare-fun lt!1744544 () ListMap!3809)

(declare-fun lt!1744553 () ListMap!3809)

(assert (=> b!4579338 (eq!709 lt!1744544 lt!1744553)))

(declare-fun lt!1744558 () ListMap!3809)

(declare-fun -!478 (ListMap!3809 K!12315) ListMap!3809)

(assert (=> b!4579338 (= lt!1744553 (-!478 lt!1744558 key!3287))))

(declare-fun lt!1744557 () ListLongMap!3179)

(assert (=> b!4579338 (= lt!1744544 (extractMap!1326 (toList!4547 lt!1744557)))))

(declare-fun lt!1744550 () tuple2!51516)

(assert (=> b!4579338 (= lt!1744557 (+!1704 lt!1744529 lt!1744550))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!51068)

(assert (=> b!4579338 (= lt!1744550 (tuple2!51517 hash!344 newBucket!178))))

(declare-fun lt!1744555 () Unit!105431)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!217 (ListLongMap!3179 (_ BitVec 64) List!51068 K!12315 Hashable!5665) Unit!105431)

(assert (=> b!4579338 (= lt!1744555 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!217 lt!1744529 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4579339 () Bool)

(declare-fun e!2855572 () Bool)

(declare-fun e!2855580 () Bool)

(assert (=> b!4579339 (= e!2855572 e!2855580)))

(declare-fun res!1913114 () Bool)

(assert (=> b!4579339 (=> (not res!1913114) (not e!2855580))))

(declare-fun contains!13835 (ListMap!3809 K!12315) Bool)

(assert (=> b!4579339 (= res!1913114 (contains!13835 lt!1744533 key!3287))))

(assert (=> b!4579339 (= lt!1744533 (extractMap!1326 (toList!4547 lm!1477)))))

(declare-fun b!4579340 () Bool)

(declare-fun res!1913112 () Bool)

(assert (=> b!4579340 (=> (not res!1913112) (not e!2855572))))

(declare-fun allKeysSameHashInMap!1377 (ListLongMap!3179 Hashable!5665) Bool)

(assert (=> b!4579340 (= res!1913112 (allKeysSameHashInMap!1377 lm!1477 hashF!1107))))

(declare-fun b!4579341 () Bool)

(declare-fun res!1913119 () Bool)

(declare-fun e!2855579 () Bool)

(assert (=> b!4579341 (=> res!1913119 e!2855579)))

(declare-fun lt!1744554 () ListLongMap!3179)

(assert (=> b!4579341 (= res!1913119 (not (= (head!9534 lt!1744554) lt!1744536)))))

(declare-fun b!4579342 () Bool)

(declare-fun e!2855570 () Unit!105431)

(declare-fun Unit!105433 () Unit!105431)

(assert (=> b!4579342 (= e!2855570 Unit!105433)))

(declare-fun b!4579343 () Bool)

(declare-fun e!2855583 () Unit!105431)

(declare-fun Unit!105434 () Unit!105431)

(assert (=> b!4579343 (= e!2855583 Unit!105434)))

(declare-fun b!4579344 () Bool)

(declare-fun res!1913110 () Bool)

(declare-fun e!2855566 () Bool)

(assert (=> b!4579344 (=> (not res!1913110) (not e!2855566))))

(declare-fun allKeysSameHash!1124 (List!51068 (_ BitVec 64) Hashable!5665) Bool)

(assert (=> b!4579344 (= res!1913110 (allKeysSameHash!1124 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4579345 () Bool)

(declare-fun e!2855582 () Bool)

(declare-fun e!2855567 () Bool)

(assert (=> b!4579345 (= e!2855582 e!2855567)))

(declare-fun res!1913116 () Bool)

(assert (=> b!4579345 (=> res!1913116 e!2855567)))

(declare-fun contains!13836 (ListLongMap!3179 (_ BitVec 64)) Bool)

(assert (=> b!4579345 (= res!1913116 (not (contains!13836 lt!1744529 hash!344)))))

(declare-fun tail!7913 (ListLongMap!3179) ListLongMap!3179)

(assert (=> b!4579345 (= lt!1744529 (tail!7913 lm!1477))))

(declare-fun b!4579346 () Bool)

(assert (=> b!4579346 (= e!2855567 e!2855581)))

(declare-fun res!1913115 () Bool)

(assert (=> b!4579346 (=> res!1913115 e!2855581)))

(declare-fun lt!1744537 () Bool)

(assert (=> b!4579346 (= res!1913115 lt!1744537)))

(declare-fun lt!1744559 () Unit!105431)

(assert (=> b!4579346 (= lt!1744559 e!2855583)))

(declare-fun c!783749 () Bool)

(assert (=> b!4579346 (= c!783749 lt!1744537)))

(declare-fun lt!1744561 () List!51068)

(declare-fun containsKey!2048 (List!51068 K!12315) Bool)

(assert (=> b!4579346 (= lt!1744537 (not (containsKey!2048 lt!1744561 key!3287)))))

(declare-fun b!4579347 () Bool)

(declare-fun e!2855573 () Bool)

(declare-fun tp!1339707 () Bool)

(assert (=> b!4579347 (= e!2855573 tp!1339707)))

(declare-fun b!4579348 () Bool)

(declare-fun Unit!105435 () Unit!105431)

(assert (=> b!4579348 (= e!2855583 Unit!105435)))

(declare-fun lt!1744534 () Unit!105431)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!252 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> b!4579348 (= lt!1744534 (lemmaNotInItsHashBucketThenNotInMap!252 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4579348 false))

(declare-fun res!1913104 () Bool)

(assert (=> start!455896 (=> (not res!1913104) (not e!2855572))))

(declare-fun forall!10496 (List!51069 Int) Bool)

(assert (=> start!455896 (= res!1913104 (forall!10496 (toList!4547 lm!1477) lambda!182877))))

(assert (=> start!455896 e!2855572))

(assert (=> start!455896 true))

(declare-fun inv!66499 (ListLongMap!3179) Bool)

(assert (=> start!455896 (and (inv!66499 lm!1477) e!2855573)))

(declare-fun tp_is_empty!28357 () Bool)

(assert (=> start!455896 tp_is_empty!28357))

(declare-fun e!2855568 () Bool)

(assert (=> start!455896 e!2855568))

(declare-fun b!4579349 () Bool)

(declare-fun e!2855577 () Bool)

(declare-fun e!2855576 () Bool)

(assert (=> b!4579349 (= e!2855577 e!2855576)))

(declare-fun res!1913108 () Bool)

(assert (=> b!4579349 (=> res!1913108 e!2855576)))

(declare-fun lt!1744546 () Bool)

(assert (=> b!4579349 (= res!1913108 lt!1744546)))

(declare-fun lt!1744541 () Unit!105431)

(assert (=> b!4579349 (= lt!1744541 e!2855570)))

(declare-fun c!783750 () Bool)

(assert (=> b!4579349 (= c!783750 lt!1744546)))

(assert (=> b!4579349 (= lt!1744546 (containsKey!2048 (_2!29052 lt!1744536) key!3287))))

(declare-fun b!4579350 () Bool)

(declare-fun res!1913100 () Bool)

(assert (=> b!4579350 (=> res!1913100 e!2855582)))

(declare-fun noDuplicateKeys!1270 (List!51068) Bool)

(assert (=> b!4579350 (= res!1913100 (not (noDuplicateKeys!1270 newBucket!178)))))

(declare-fun b!4579351 () Bool)

(declare-fun res!1913109 () Bool)

(assert (=> b!4579351 (=> res!1913109 e!2855574)))

(assert (=> b!4579351 (= res!1913109 (not (eq!709 lt!1744533 lt!1744562)))))

(declare-fun b!4579352 () Bool)

(declare-fun res!1913101 () Bool)

(assert (=> b!4579352 (=> res!1913101 e!2855567)))

(declare-fun apply!12007 (ListLongMap!3179 (_ BitVec 64)) List!51068)

(assert (=> b!4579352 (= res!1913101 (not (= (apply!12007 lt!1744529 hash!344) lt!1744561)))))

(declare-fun b!4579353 () Bool)

(assert (=> b!4579353 (= e!2855580 e!2855566)))

(declare-fun res!1913099 () Bool)

(assert (=> b!4579353 (=> (not res!1913099) (not e!2855566))))

(declare-fun lt!1744547 () (_ BitVec 64))

(assert (=> b!4579353 (= res!1913099 (= lt!1744547 hash!344))))

(declare-fun hash!3113 (Hashable!5665 K!12315) (_ BitVec 64))

(assert (=> b!4579353 (= lt!1744547 (hash!3113 hashF!1107 key!3287))))

(declare-fun tp_is_empty!28359 () Bool)

(declare-fun tp!1339706 () Bool)

(declare-fun b!4579354 () Bool)

(assert (=> b!4579354 (= e!2855568 (and tp_is_empty!28357 tp_is_empty!28359 tp!1339706))))

(declare-fun b!4579355 () Bool)

(assert (=> b!4579355 (= e!2855575 e!2855571)))

(declare-fun res!1913111 () Bool)

(assert (=> b!4579355 (=> res!1913111 e!2855571)))

(assert (=> b!4579355 (= res!1913111 (not (contains!13835 (extractMap!1326 (t!358059 (toList!4547 lm!1477))) key!3287)))))

(assert (=> b!4579355 (contains!13835 lt!1744558 key!3287)))

(assert (=> b!4579355 (= lt!1744558 (extractMap!1326 (toList!4547 lt!1744529)))))

(declare-fun lt!1744556 () Unit!105431)

(declare-fun lemmaListContainsThenExtractedMapContains!226 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> b!4579355 (= lt!1744556 (lemmaListContainsThenExtractedMapContains!226 lt!1744529 key!3287 hashF!1107))))

(declare-fun b!4579356 () Bool)

(declare-fun res!1913102 () Bool)

(assert (=> b!4579356 (=> res!1913102 e!2855582)))

(get-info :version)

(assert (=> b!4579356 (= res!1913102 (or ((_ is Nil!50945) (toList!4547 lm!1477)) (= (_1!29052 (h!56878 (toList!4547 lm!1477))) hash!344)))))

(declare-fun b!4579357 () Bool)

(assert (=> b!4579357 (= e!2855574 e!2855579)))

(declare-fun res!1913118 () Bool)

(assert (=> b!4579357 (=> res!1913118 e!2855579)))

(assert (=> b!4579357 (= res!1913118 (not (= lt!1744554 (+!1704 lm!1477 lt!1744550))))))

(assert (=> b!4579357 (= lt!1744554 (+!1704 lt!1744557 lt!1744536))))

(declare-fun b!4579358 () Bool)

(declare-fun e!2855578 () Bool)

(assert (=> b!4579358 (= e!2855578 e!2855577)))

(declare-fun res!1913113 () Bool)

(assert (=> b!4579358 (=> res!1913113 e!2855577)))

(assert (=> b!4579358 (= res!1913113 (not (noDuplicateKeys!1270 (_2!29052 lt!1744536))))))

(declare-fun lt!1744538 () Unit!105431)

(declare-fun forallContained!2760 (List!51069 Int tuple2!51516) Unit!105431)

(assert (=> b!4579358 (= lt!1744538 (forallContained!2760 (toList!4547 lm!1477) lambda!182877 (h!56878 (toList!4547 lm!1477))))))

(declare-fun b!4579359 () Bool)

(declare-fun res!1913107 () Bool)

(assert (=> b!4579359 (=> res!1913107 e!2855567)))

(declare-fun lt!1744542 () tuple2!51516)

(declare-fun contains!13837 (List!51069 tuple2!51516) Bool)

(assert (=> b!4579359 (= res!1913107 (not (contains!13837 (t!358059 (toList!4547 lm!1477)) lt!1744542)))))

(declare-fun b!4579360 () Bool)

(declare-fun e!2855569 () Bool)

(assert (=> b!4579360 (= e!2855569 e!2855578)))

(declare-fun res!1913103 () Bool)

(assert (=> b!4579360 (=> res!1913103 e!2855578)))

(declare-fun lt!1744531 () ListMap!3809)

(declare-fun lt!1744552 () ListMap!3809)

(assert (=> b!4579360 (= res!1913103 (not (eq!709 lt!1744531 lt!1744552)))))

(declare-fun lt!1744543 () ListMap!3809)

(assert (=> b!4579360 (eq!709 lt!1744543 lt!1744552)))

(declare-fun addToMapMapFromBucket!783 (List!51068 ListMap!3809) ListMap!3809)

(assert (=> b!4579360 (= lt!1744552 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744553))))

(declare-fun lt!1744560 () Unit!105431)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!94 (ListMap!3809 ListMap!3809 List!51068) Unit!105431)

(assert (=> b!4579360 (= lt!1744560 (lemmaAddToMapFromBucketPreservesEquivalence!94 lt!1744544 lt!1744553 (_2!29052 lt!1744536)))))

(declare-fun b!4579361 () Bool)

(declare-fun lt!1744549 () ListMap!3809)

(assert (=> b!4579361 (= e!2855576 (eq!709 lt!1744552 lt!1744549))))

(assert (=> b!4579361 (= lt!1744552 lt!1744549)))

(assert (=> b!4579361 (= lt!1744549 (-!478 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744558) key!3287))))

(declare-fun lt!1744532 () Unit!105431)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!36 (ListMap!3809 K!12315 List!51068) Unit!105431)

(assert (=> b!4579361 (= lt!1744532 (lemmaAddToMapFromBucketMinusKeyIsCommutative!36 lt!1744558 key!3287 (_2!29052 lt!1744536)))))

(declare-fun b!4579362 () Bool)

(declare-fun res!1913105 () Bool)

(assert (=> b!4579362 (=> res!1913105 e!2855574)))

(assert (=> b!4579362 (= res!1913105 (bvsge (_1!29052 lt!1744536) hash!344))))

(declare-fun b!4579363 () Bool)

(assert (=> b!4579363 (= e!2855566 (not e!2855582))))

(declare-fun res!1913117 () Bool)

(assert (=> b!4579363 (=> res!1913117 e!2855582)))

(declare-fun removePairForKey!897 (List!51068 K!12315) List!51068)

(assert (=> b!4579363 (= res!1913117 (not (= newBucket!178 (removePairForKey!897 lt!1744561 key!3287))))))

(declare-fun lt!1744535 () Unit!105431)

(assert (=> b!4579363 (= lt!1744535 (forallContained!2760 (toList!4547 lm!1477) lambda!182877 lt!1744542))))

(assert (=> b!4579363 (contains!13837 (toList!4547 lm!1477) lt!1744542)))

(assert (=> b!4579363 (= lt!1744542 (tuple2!51517 hash!344 lt!1744561))))

(declare-fun lt!1744551 () Unit!105431)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!782 (List!51069 (_ BitVec 64) List!51068) Unit!105431)

(assert (=> b!4579363 (= lt!1744551 (lemmaGetValueByKeyImpliesContainsTuple!782 (toList!4547 lm!1477) hash!344 lt!1744561))))

(assert (=> b!4579363 (= lt!1744561 (apply!12007 lm!1477 hash!344))))

(assert (=> b!4579363 (contains!13836 lm!1477 lt!1744547)))

(declare-fun lt!1744548 () Unit!105431)

(declare-fun lemmaInGenMapThenLongMapContainsHash!344 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> b!4579363 (= lt!1744548 (lemmaInGenMapThenLongMapContainsHash!344 lm!1477 key!3287 hashF!1107))))

(declare-fun Unit!105436 () Unit!105431)

(assert (=> b!4579364 (= e!2855570 Unit!105436)))

(assert (=> b!4579364 (not (= hash!344 (_1!29052 lt!1744536)))))

(declare-datatypes ((Option!11319 0))(
  ( (None!11318) (Some!11318 (v!45190 tuple2!51514)) )
))
(declare-fun lt!1744530 () Option!11319)

(declare-fun getPair!230 (List!51068 K!12315) Option!11319)

(assert (=> b!4579364 (= lt!1744530 (getPair!230 (_2!29052 lt!1744536) key!3287))))

(declare-fun lt!1744539 () Unit!105431)

(assert (=> b!4579364 (= lt!1744539 (forallContained!2760 (toList!4547 lm!1477) lambda!182878 (h!56878 (toList!4547 lm!1477))))))

(declare-fun lt!1744545 () Unit!105431)

(declare-fun lambda!182879 () Int)

(declare-fun forallContained!2761 (List!51068 Int tuple2!51514) Unit!105431)

(declare-fun get!16809 (Option!11319) tuple2!51514)

(assert (=> b!4579364 (= lt!1744545 (forallContained!2761 (_2!29052 (h!56878 (toList!4547 lm!1477))) lambda!182879 (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530)))))))

(assert (=> b!4579364 false))

(declare-fun b!4579365 () Bool)

(assert (=> b!4579365 (= e!2855579 e!2855569)))

(declare-fun res!1913097 () Bool)

(assert (=> b!4579365 (=> res!1913097 e!2855569)))

(assert (=> b!4579365 (= res!1913097 (not (eq!709 lt!1744531 lt!1744543)))))

(assert (=> b!4579365 (= lt!1744543 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744544))))

(assert (=> b!4579365 (= lt!1744531 (extractMap!1326 (toList!4547 lt!1744554)))))

(assert (= (and start!455896 res!1913104) b!4579340))

(assert (= (and b!4579340 res!1913112) b!4579339))

(assert (= (and b!4579339 res!1913114) b!4579353))

(assert (= (and b!4579353 res!1913099) b!4579344))

(assert (= (and b!4579344 res!1913110) b!4579363))

(assert (= (and b!4579363 (not res!1913117)) b!4579350))

(assert (= (and b!4579350 (not res!1913100)) b!4579356))

(assert (= (and b!4579356 (not res!1913102)) b!4579345))

(assert (= (and b!4579345 (not res!1913116)) b!4579352))

(assert (= (and b!4579352 (not res!1913101)) b!4579359))

(assert (= (and b!4579359 (not res!1913107)) b!4579346))

(assert (= (and b!4579346 c!783749) b!4579348))

(assert (= (and b!4579346 (not c!783749)) b!4579343))

(assert (= (and b!4579346 (not res!1913115)) b!4579337))

(assert (= (and b!4579337 (not res!1913106)) b!4579355))

(assert (= (and b!4579355 (not res!1913111)) b!4579338))

(assert (= (and b!4579338 (not res!1913098)) b!4579351))

(assert (= (and b!4579351 (not res!1913109)) b!4579362))

(assert (= (and b!4579362 (not res!1913105)) b!4579357))

(assert (= (and b!4579357 (not res!1913118)) b!4579341))

(assert (= (and b!4579341 (not res!1913119)) b!4579365))

(assert (= (and b!4579365 (not res!1913097)) b!4579360))

(assert (= (and b!4579360 (not res!1913103)) b!4579358))

(assert (= (and b!4579358 (not res!1913113)) b!4579349))

(assert (= (and b!4579349 c!783750) b!4579364))

(assert (= (and b!4579349 (not c!783750)) b!4579342))

(assert (= (and b!4579349 (not res!1913108)) b!4579361))

(assert (= start!455896 b!4579347))

(assert (= (and start!455896 ((_ is Cons!50944) newBucket!178)) b!4579354))

(declare-fun m!5388581 () Bool)

(assert (=> b!4579346 m!5388581))

(declare-fun m!5388583 () Bool)

(assert (=> b!4579359 m!5388583))

(declare-fun m!5388585 () Bool)

(assert (=> b!4579355 m!5388585))

(declare-fun m!5388587 () Bool)

(assert (=> b!4579355 m!5388587))

(declare-fun m!5388589 () Bool)

(assert (=> b!4579355 m!5388589))

(declare-fun m!5388591 () Bool)

(assert (=> b!4579355 m!5388591))

(assert (=> b!4579355 m!5388587))

(declare-fun m!5388593 () Bool)

(assert (=> b!4579355 m!5388593))

(declare-fun m!5388595 () Bool)

(assert (=> b!4579352 m!5388595))

(declare-fun m!5388597 () Bool)

(assert (=> b!4579350 m!5388597))

(declare-fun m!5388599 () Bool)

(assert (=> b!4579365 m!5388599))

(declare-fun m!5388601 () Bool)

(assert (=> b!4579365 m!5388601))

(declare-fun m!5388603 () Bool)

(assert (=> b!4579365 m!5388603))

(declare-fun m!5388605 () Bool)

(assert (=> b!4579360 m!5388605))

(declare-fun m!5388607 () Bool)

(assert (=> b!4579360 m!5388607))

(declare-fun m!5388609 () Bool)

(assert (=> b!4579360 m!5388609))

(declare-fun m!5388611 () Bool)

(assert (=> b!4579360 m!5388611))

(declare-fun m!5388613 () Bool)

(assert (=> b!4579357 m!5388613))

(declare-fun m!5388615 () Bool)

(assert (=> b!4579357 m!5388615))

(declare-fun m!5388617 () Bool)

(assert (=> b!4579363 m!5388617))

(declare-fun m!5388619 () Bool)

(assert (=> b!4579363 m!5388619))

(declare-fun m!5388621 () Bool)

(assert (=> b!4579363 m!5388621))

(declare-fun m!5388623 () Bool)

(assert (=> b!4579363 m!5388623))

(declare-fun m!5388625 () Bool)

(assert (=> b!4579363 m!5388625))

(declare-fun m!5388627 () Bool)

(assert (=> b!4579363 m!5388627))

(declare-fun m!5388629 () Bool)

(assert (=> b!4579363 m!5388629))

(declare-fun m!5388631 () Bool)

(assert (=> b!4579348 m!5388631))

(declare-fun m!5388633 () Bool)

(assert (=> b!4579337 m!5388633))

(declare-fun m!5388635 () Bool)

(assert (=> b!4579337 m!5388635))

(declare-fun m!5388637 () Bool)

(assert (=> b!4579337 m!5388637))

(declare-fun m!5388639 () Bool)

(assert (=> b!4579353 m!5388639))

(declare-fun m!5388641 () Bool)

(assert (=> b!4579364 m!5388641))

(declare-fun m!5388643 () Bool)

(assert (=> b!4579364 m!5388643))

(declare-fun m!5388645 () Bool)

(assert (=> b!4579364 m!5388645))

(declare-fun m!5388647 () Bool)

(assert (=> b!4579364 m!5388647))

(declare-fun m!5388649 () Bool)

(assert (=> b!4579340 m!5388649))

(declare-fun m!5388651 () Bool)

(assert (=> b!4579361 m!5388651))

(declare-fun m!5388653 () Bool)

(assert (=> b!4579361 m!5388653))

(assert (=> b!4579361 m!5388653))

(declare-fun m!5388655 () Bool)

(assert (=> b!4579361 m!5388655))

(declare-fun m!5388657 () Bool)

(assert (=> b!4579361 m!5388657))

(declare-fun m!5388659 () Bool)

(assert (=> b!4579339 m!5388659))

(declare-fun m!5388661 () Bool)

(assert (=> b!4579339 m!5388661))

(declare-fun m!5388663 () Bool)

(assert (=> start!455896 m!5388663))

(declare-fun m!5388665 () Bool)

(assert (=> start!455896 m!5388665))

(declare-fun m!5388667 () Bool)

(assert (=> b!4579345 m!5388667))

(declare-fun m!5388669 () Bool)

(assert (=> b!4579345 m!5388669))

(declare-fun m!5388671 () Bool)

(assert (=> b!4579341 m!5388671))

(declare-fun m!5388673 () Bool)

(assert (=> b!4579351 m!5388673))

(declare-fun m!5388675 () Bool)

(assert (=> b!4579344 m!5388675))

(declare-fun m!5388677 () Bool)

(assert (=> b!4579349 m!5388677))

(declare-fun m!5388679 () Bool)

(assert (=> b!4579358 m!5388679))

(declare-fun m!5388681 () Bool)

(assert (=> b!4579358 m!5388681))

(declare-fun m!5388683 () Bool)

(assert (=> b!4579338 m!5388683))

(declare-fun m!5388685 () Bool)

(assert (=> b!4579338 m!5388685))

(declare-fun m!5388687 () Bool)

(assert (=> b!4579338 m!5388687))

(declare-fun m!5388689 () Bool)

(assert (=> b!4579338 m!5388689))

(declare-fun m!5388691 () Bool)

(assert (=> b!4579338 m!5388691))

(declare-fun m!5388693 () Bool)

(assert (=> b!4579338 m!5388693))

(declare-fun m!5388695 () Bool)

(assert (=> b!4579338 m!5388695))

(declare-fun m!5388697 () Bool)

(assert (=> b!4579338 m!5388697))

(declare-fun m!5388699 () Bool)

(assert (=> b!4579338 m!5388699))

(check-sat (not b!4579338) (not b!4579349) (not b!4579345) (not b!4579365) (not b!4579361) (not b!4579363) (not b!4579348) tp_is_empty!28359 (not b!4579337) (not b!4579354) (not b!4579340) (not b!4579357) (not b!4579351) (not b!4579350) (not b!4579359) (not b!4579358) (not b!4579353) (not b!4579344) tp_is_empty!28357 (not b!4579346) (not b!4579339) (not b!4579360) (not b!4579341) (not b!4579364) (not b!4579352) (not start!455896) (not b!4579347) (not b!4579355))
(check-sat)
(get-model)

(declare-fun bs!971509 () Bool)

(declare-fun d!1433755 () Bool)

(assert (= bs!971509 (and d!1433755 start!455896)))

(declare-fun lambda!182885 () Int)

(assert (=> bs!971509 (= lambda!182885 lambda!182877)))

(declare-fun bs!971510 () Bool)

(assert (= bs!971510 (and d!1433755 b!4579364)))

(assert (=> bs!971510 (not (= lambda!182885 lambda!182878))))

(assert (=> d!1433755 (contains!13835 (extractMap!1326 (toList!4547 lt!1744529)) key!3287)))

(declare-fun lt!1744604 () Unit!105431)

(declare-fun choose!30494 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> d!1433755 (= lt!1744604 (choose!30494 lt!1744529 key!3287 hashF!1107))))

(assert (=> d!1433755 (forall!10496 (toList!4547 lt!1744529) lambda!182885)))

(assert (=> d!1433755 (= (lemmaListContainsThenExtractedMapContains!226 lt!1744529 key!3287 hashF!1107) lt!1744604)))

(declare-fun bs!971511 () Bool)

(assert (= bs!971511 d!1433755))

(assert (=> bs!971511 m!5388591))

(assert (=> bs!971511 m!5388591))

(declare-fun m!5388747 () Bool)

(assert (=> bs!971511 m!5388747))

(declare-fun m!5388749 () Bool)

(assert (=> bs!971511 m!5388749))

(declare-fun m!5388751 () Bool)

(assert (=> bs!971511 m!5388751))

(assert (=> b!4579355 d!1433755))

(declare-fun bs!971512 () Bool)

(declare-fun d!1433767 () Bool)

(assert (= bs!971512 (and d!1433767 start!455896)))

(declare-fun lambda!182888 () Int)

(assert (=> bs!971512 (= lambda!182888 lambda!182877)))

(declare-fun bs!971513 () Bool)

(assert (= bs!971513 (and d!1433767 b!4579364)))

(assert (=> bs!971513 (not (= lambda!182888 lambda!182878))))

(declare-fun bs!971514 () Bool)

(assert (= bs!971514 (and d!1433767 d!1433755)))

(assert (=> bs!971514 (= lambda!182888 lambda!182885)))

(declare-fun lt!1744607 () ListMap!3809)

(declare-fun invariantList!1095 (List!51068) Bool)

(assert (=> d!1433767 (invariantList!1095 (toList!4548 lt!1744607))))

(declare-fun e!2855613 () ListMap!3809)

(assert (=> d!1433767 (= lt!1744607 e!2855613)))

(declare-fun c!783768 () Bool)

(assert (=> d!1433767 (= c!783768 ((_ is Cons!50945) (toList!4547 lt!1744529)))))

(assert (=> d!1433767 (forall!10496 (toList!4547 lt!1744529) lambda!182888)))

(assert (=> d!1433767 (= (extractMap!1326 (toList!4547 lt!1744529)) lt!1744607)))

(declare-fun b!4579418 () Bool)

(assert (=> b!4579418 (= e!2855613 (addToMapMapFromBucket!783 (_2!29052 (h!56878 (toList!4547 lt!1744529))) (extractMap!1326 (t!358059 (toList!4547 lt!1744529)))))))

(declare-fun b!4579419 () Bool)

(assert (=> b!4579419 (= e!2855613 (ListMap!3810 Nil!50944))))

(assert (= (and d!1433767 c!783768) b!4579418))

(assert (= (and d!1433767 (not c!783768)) b!4579419))

(declare-fun m!5388753 () Bool)

(assert (=> d!1433767 m!5388753))

(declare-fun m!5388755 () Bool)

(assert (=> d!1433767 m!5388755))

(declare-fun m!5388757 () Bool)

(assert (=> b!4579418 m!5388757))

(assert (=> b!4579418 m!5388757))

(declare-fun m!5388759 () Bool)

(assert (=> b!4579418 m!5388759))

(assert (=> b!4579355 d!1433767))

(declare-fun b!4579438 () Bool)

(declare-datatypes ((List!51071 0))(
  ( (Nil!50947) (Cons!50947 (h!56882 K!12315) (t!358061 List!51071)) )
))
(declare-fun e!2855627 () List!51071)

(declare-fun getKeysList!543 (List!51068) List!51071)

(assert (=> b!4579438 (= e!2855627 (getKeysList!543 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477))))))))

(declare-fun b!4579439 () Bool)

(declare-fun e!2855626 () Unit!105431)

(declare-fun lt!1744628 () Unit!105431)

(assert (=> b!4579439 (= e!2855626 lt!1744628)))

(declare-fun lt!1744630 () Unit!105431)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1154 (List!51068 K!12315) Unit!105431)

(assert (=> b!4579439 (= lt!1744630 (lemmaContainsKeyImpliesGetValueByKeyDefined!1154 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11322 0))(
  ( (None!11321) (Some!11321 (v!45197 V!12561)) )
))
(declare-fun isDefined!8590 (Option!11322) Bool)

(declare-fun getValueByKey!1250 (List!51068 K!12315) Option!11322)

(assert (=> b!4579439 (isDefined!8590 (getValueByKey!1250 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(declare-fun lt!1744624 () Unit!105431)

(assert (=> b!4579439 (= lt!1744624 lt!1744630)))

(declare-fun lemmaInListThenGetKeysListContains!539 (List!51068 K!12315) Unit!105431)

(assert (=> b!4579439 (= lt!1744628 (lemmaInListThenGetKeysListContains!539 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(declare-fun call!319648 () Bool)

(assert (=> b!4579439 call!319648))

(declare-fun b!4579440 () Bool)

(declare-fun e!2855629 () Unit!105431)

(declare-fun Unit!105462 () Unit!105431)

(assert (=> b!4579440 (= e!2855629 Unit!105462)))

(declare-fun b!4579441 () Bool)

(assert (=> b!4579441 (= e!2855626 e!2855629)))

(declare-fun c!783777 () Bool)

(assert (=> b!4579441 (= c!783777 call!319648)))

(declare-fun b!4579442 () Bool)

(assert (=> b!4579442 false))

(declare-fun lt!1744629 () Unit!105431)

(declare-fun lt!1744627 () Unit!105431)

(assert (=> b!4579442 (= lt!1744629 lt!1744627)))

(declare-fun containsKey!2051 (List!51068 K!12315) Bool)

(assert (=> b!4579442 (containsKey!2051 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!542 (List!51068 K!12315) Unit!105431)

(assert (=> b!4579442 (= lt!1744627 (lemmaInGetKeysListThenContainsKey!542 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(declare-fun Unit!105463 () Unit!105431)

(assert (=> b!4579442 (= e!2855629 Unit!105463)))

(declare-fun b!4579443 () Bool)

(declare-fun e!2855631 () Bool)

(declare-fun e!2855630 () Bool)

(assert (=> b!4579443 (= e!2855631 e!2855630)))

(declare-fun res!1913138 () Bool)

(assert (=> b!4579443 (=> (not res!1913138) (not e!2855630))))

(assert (=> b!4579443 (= res!1913138 (isDefined!8590 (getValueByKey!1250 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287)))))

(declare-fun bm!319643 () Bool)

(declare-fun contains!13839 (List!51071 K!12315) Bool)

(assert (=> bm!319643 (= call!319648 (contains!13839 e!2855627 key!3287))))

(declare-fun c!783775 () Bool)

(declare-fun c!783776 () Bool)

(assert (=> bm!319643 (= c!783775 c!783776)))

(declare-fun b!4579445 () Bool)

(declare-fun keys!17796 (ListMap!3809) List!51071)

(assert (=> b!4579445 (= e!2855630 (contains!13839 (keys!17796 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(declare-fun b!4579446 () Bool)

(declare-fun e!2855628 () Bool)

(assert (=> b!4579446 (= e!2855628 (not (contains!13839 (keys!17796 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287)))))

(declare-fun d!1433769 () Bool)

(assert (=> d!1433769 e!2855631))

(declare-fun res!1913140 () Bool)

(assert (=> d!1433769 (=> res!1913140 e!2855631)))

(assert (=> d!1433769 (= res!1913140 e!2855628)))

(declare-fun res!1913139 () Bool)

(assert (=> d!1433769 (=> (not res!1913139) (not e!2855628))))

(declare-fun lt!1744625 () Bool)

(assert (=> d!1433769 (= res!1913139 (not lt!1744625))))

(declare-fun lt!1744626 () Bool)

(assert (=> d!1433769 (= lt!1744625 lt!1744626)))

(declare-fun lt!1744631 () Unit!105431)

(assert (=> d!1433769 (= lt!1744631 e!2855626)))

(assert (=> d!1433769 (= c!783776 lt!1744626)))

(assert (=> d!1433769 (= lt!1744626 (containsKey!2051 (toList!4548 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(assert (=> d!1433769 (= (contains!13835 (extractMap!1326 (t!358059 (toList!4547 lm!1477))) key!3287) lt!1744625)))

(declare-fun b!4579444 () Bool)

(assert (=> b!4579444 (= e!2855627 (keys!17796 (extractMap!1326 (t!358059 (toList!4547 lm!1477)))))))

(assert (= (and d!1433769 c!783776) b!4579439))

(assert (= (and d!1433769 (not c!783776)) b!4579441))

(assert (= (and b!4579441 c!783777) b!4579442))

(assert (= (and b!4579441 (not c!783777)) b!4579440))

(assert (= (or b!4579439 b!4579441) bm!319643))

(assert (= (and bm!319643 c!783775) b!4579438))

(assert (= (and bm!319643 (not c!783775)) b!4579444))

(assert (= (and d!1433769 res!1913139) b!4579446))

(assert (= (and d!1433769 (not res!1913140)) b!4579443))

(assert (= (and b!4579443 res!1913138) b!4579445))

(declare-fun m!5388761 () Bool)

(assert (=> b!4579443 m!5388761))

(assert (=> b!4579443 m!5388761))

(declare-fun m!5388763 () Bool)

(assert (=> b!4579443 m!5388763))

(declare-fun m!5388765 () Bool)

(assert (=> d!1433769 m!5388765))

(declare-fun m!5388767 () Bool)

(assert (=> bm!319643 m!5388767))

(assert (=> b!4579442 m!5388765))

(declare-fun m!5388769 () Bool)

(assert (=> b!4579442 m!5388769))

(assert (=> b!4579445 m!5388587))

(declare-fun m!5388771 () Bool)

(assert (=> b!4579445 m!5388771))

(assert (=> b!4579445 m!5388771))

(declare-fun m!5388773 () Bool)

(assert (=> b!4579445 m!5388773))

(assert (=> b!4579446 m!5388587))

(assert (=> b!4579446 m!5388771))

(assert (=> b!4579446 m!5388771))

(assert (=> b!4579446 m!5388773))

(assert (=> b!4579444 m!5388587))

(assert (=> b!4579444 m!5388771))

(declare-fun m!5388775 () Bool)

(assert (=> b!4579438 m!5388775))

(declare-fun m!5388777 () Bool)

(assert (=> b!4579439 m!5388777))

(assert (=> b!4579439 m!5388761))

(assert (=> b!4579439 m!5388761))

(assert (=> b!4579439 m!5388763))

(declare-fun m!5388779 () Bool)

(assert (=> b!4579439 m!5388779))

(assert (=> b!4579355 d!1433769))

(declare-fun b!4579451 () Bool)

(declare-fun e!2855635 () List!51071)

(assert (=> b!4579451 (= e!2855635 (getKeysList!543 (toList!4548 lt!1744558)))))

(declare-fun b!4579452 () Bool)

(declare-fun e!2855634 () Unit!105431)

(declare-fun lt!1744644 () Unit!105431)

(assert (=> b!4579452 (= e!2855634 lt!1744644)))

(declare-fun lt!1744646 () Unit!105431)

(assert (=> b!4579452 (= lt!1744646 (lemmaContainsKeyImpliesGetValueByKeyDefined!1154 (toList!4548 lt!1744558) key!3287))))

(assert (=> b!4579452 (isDefined!8590 (getValueByKey!1250 (toList!4548 lt!1744558) key!3287))))

(declare-fun lt!1744640 () Unit!105431)

(assert (=> b!4579452 (= lt!1744640 lt!1744646)))

(assert (=> b!4579452 (= lt!1744644 (lemmaInListThenGetKeysListContains!539 (toList!4548 lt!1744558) key!3287))))

(declare-fun call!319649 () Bool)

(assert (=> b!4579452 call!319649))

(declare-fun b!4579453 () Bool)

(declare-fun e!2855637 () Unit!105431)

(declare-fun Unit!105464 () Unit!105431)

(assert (=> b!4579453 (= e!2855637 Unit!105464)))

(declare-fun b!4579454 () Bool)

(assert (=> b!4579454 (= e!2855634 e!2855637)))

(declare-fun c!783782 () Bool)

(assert (=> b!4579454 (= c!783782 call!319649)))

(declare-fun b!4579455 () Bool)

(assert (=> b!4579455 false))

(declare-fun lt!1744645 () Unit!105431)

(declare-fun lt!1744643 () Unit!105431)

(assert (=> b!4579455 (= lt!1744645 lt!1744643)))

(assert (=> b!4579455 (containsKey!2051 (toList!4548 lt!1744558) key!3287)))

(assert (=> b!4579455 (= lt!1744643 (lemmaInGetKeysListThenContainsKey!542 (toList!4548 lt!1744558) key!3287))))

(declare-fun Unit!105465 () Unit!105431)

(assert (=> b!4579455 (= e!2855637 Unit!105465)))

(declare-fun b!4579456 () Bool)

(declare-fun e!2855639 () Bool)

(declare-fun e!2855638 () Bool)

(assert (=> b!4579456 (= e!2855639 e!2855638)))

(declare-fun res!1913141 () Bool)

(assert (=> b!4579456 (=> (not res!1913141) (not e!2855638))))

(assert (=> b!4579456 (= res!1913141 (isDefined!8590 (getValueByKey!1250 (toList!4548 lt!1744558) key!3287)))))

(declare-fun bm!319644 () Bool)

(assert (=> bm!319644 (= call!319649 (contains!13839 e!2855635 key!3287))))

(declare-fun c!783780 () Bool)

(declare-fun c!783781 () Bool)

(assert (=> bm!319644 (= c!783780 c!783781)))

(declare-fun b!4579458 () Bool)

(assert (=> b!4579458 (= e!2855638 (contains!13839 (keys!17796 lt!1744558) key!3287))))

(declare-fun b!4579459 () Bool)

(declare-fun e!2855636 () Bool)

(assert (=> b!4579459 (= e!2855636 (not (contains!13839 (keys!17796 lt!1744558) key!3287)))))

(declare-fun d!1433771 () Bool)

(assert (=> d!1433771 e!2855639))

(declare-fun res!1913143 () Bool)

(assert (=> d!1433771 (=> res!1913143 e!2855639)))

(assert (=> d!1433771 (= res!1913143 e!2855636)))

(declare-fun res!1913142 () Bool)

(assert (=> d!1433771 (=> (not res!1913142) (not e!2855636))))

(declare-fun lt!1744641 () Bool)

(assert (=> d!1433771 (= res!1913142 (not lt!1744641))))

(declare-fun lt!1744642 () Bool)

(assert (=> d!1433771 (= lt!1744641 lt!1744642)))

(declare-fun lt!1744647 () Unit!105431)

(assert (=> d!1433771 (= lt!1744647 e!2855634)))

(assert (=> d!1433771 (= c!783781 lt!1744642)))

(assert (=> d!1433771 (= lt!1744642 (containsKey!2051 (toList!4548 lt!1744558) key!3287))))

(assert (=> d!1433771 (= (contains!13835 lt!1744558 key!3287) lt!1744641)))

(declare-fun b!4579457 () Bool)

(assert (=> b!4579457 (= e!2855635 (keys!17796 lt!1744558))))

(assert (= (and d!1433771 c!783781) b!4579452))

(assert (= (and d!1433771 (not c!783781)) b!4579454))

(assert (= (and b!4579454 c!783782) b!4579455))

(assert (= (and b!4579454 (not c!783782)) b!4579453))

(assert (= (or b!4579452 b!4579454) bm!319644))

(assert (= (and bm!319644 c!783780) b!4579451))

(assert (= (and bm!319644 (not c!783780)) b!4579457))

(assert (= (and d!1433771 res!1913142) b!4579459))

(assert (= (and d!1433771 (not res!1913143)) b!4579456))

(assert (= (and b!4579456 res!1913141) b!4579458))

(declare-fun m!5388781 () Bool)

(assert (=> b!4579456 m!5388781))

(assert (=> b!4579456 m!5388781))

(declare-fun m!5388783 () Bool)

(assert (=> b!4579456 m!5388783))

(declare-fun m!5388785 () Bool)

(assert (=> d!1433771 m!5388785))

(declare-fun m!5388787 () Bool)

(assert (=> bm!319644 m!5388787))

(assert (=> b!4579455 m!5388785))

(declare-fun m!5388789 () Bool)

(assert (=> b!4579455 m!5388789))

(declare-fun m!5388791 () Bool)

(assert (=> b!4579458 m!5388791))

(assert (=> b!4579458 m!5388791))

(declare-fun m!5388793 () Bool)

(assert (=> b!4579458 m!5388793))

(assert (=> b!4579459 m!5388791))

(assert (=> b!4579459 m!5388791))

(assert (=> b!4579459 m!5388793))

(assert (=> b!4579457 m!5388791))

(declare-fun m!5388795 () Bool)

(assert (=> b!4579451 m!5388795))

(declare-fun m!5388797 () Bool)

(assert (=> b!4579452 m!5388797))

(assert (=> b!4579452 m!5388781))

(assert (=> b!4579452 m!5388781))

(assert (=> b!4579452 m!5388783))

(declare-fun m!5388799 () Bool)

(assert (=> b!4579452 m!5388799))

(assert (=> b!4579355 d!1433771))

(declare-fun bs!971515 () Bool)

(declare-fun d!1433773 () Bool)

(assert (= bs!971515 (and d!1433773 start!455896)))

(declare-fun lambda!182897 () Int)

(assert (=> bs!971515 (= lambda!182897 lambda!182877)))

(declare-fun bs!971516 () Bool)

(assert (= bs!971516 (and d!1433773 b!4579364)))

(assert (=> bs!971516 (not (= lambda!182897 lambda!182878))))

(declare-fun bs!971517 () Bool)

(assert (= bs!971517 (and d!1433773 d!1433755)))

(assert (=> bs!971517 (= lambda!182897 lambda!182885)))

(declare-fun bs!971518 () Bool)

(assert (= bs!971518 (and d!1433773 d!1433767)))

(assert (=> bs!971518 (= lambda!182897 lambda!182888)))

(declare-fun lt!1744658 () ListMap!3809)

(assert (=> d!1433773 (invariantList!1095 (toList!4548 lt!1744658))))

(declare-fun e!2855640 () ListMap!3809)

(assert (=> d!1433773 (= lt!1744658 e!2855640)))

(declare-fun c!783783 () Bool)

(assert (=> d!1433773 (= c!783783 ((_ is Cons!50945) (t!358059 (toList!4547 lm!1477))))))

(assert (=> d!1433773 (forall!10496 (t!358059 (toList!4547 lm!1477)) lambda!182897)))

(assert (=> d!1433773 (= (extractMap!1326 (t!358059 (toList!4547 lm!1477))) lt!1744658)))

(declare-fun b!4579460 () Bool)

(assert (=> b!4579460 (= e!2855640 (addToMapMapFromBucket!783 (_2!29052 (h!56878 (t!358059 (toList!4547 lm!1477)))) (extractMap!1326 (t!358059 (t!358059 (toList!4547 lm!1477))))))))

(declare-fun b!4579461 () Bool)

(assert (=> b!4579461 (= e!2855640 (ListMap!3810 Nil!50944))))

(assert (= (and d!1433773 c!783783) b!4579460))

(assert (= (and d!1433773 (not c!783783)) b!4579461))

(declare-fun m!5388801 () Bool)

(assert (=> d!1433773 m!5388801))

(declare-fun m!5388803 () Bool)

(assert (=> d!1433773 m!5388803))

(declare-fun m!5388805 () Bool)

(assert (=> b!4579460 m!5388805))

(assert (=> b!4579460 m!5388805))

(declare-fun m!5388807 () Bool)

(assert (=> b!4579460 m!5388807))

(assert (=> b!4579355 d!1433773))

(declare-fun d!1433775 () Bool)

(declare-datatypes ((Option!11323 0))(
  ( (None!11322) (Some!11322 (v!45198 List!51068)) )
))
(declare-fun get!16811 (Option!11323) List!51068)

(declare-fun getValueByKey!1251 (List!51069 (_ BitVec 64)) Option!11323)

(assert (=> d!1433775 (= (apply!12007 lt!1744529 hash!344) (get!16811 (getValueByKey!1251 (toList!4547 lt!1744529) hash!344)))))

(declare-fun bs!971519 () Bool)

(assert (= bs!971519 d!1433775))

(declare-fun m!5388809 () Bool)

(assert (=> bs!971519 m!5388809))

(assert (=> bs!971519 m!5388809))

(declare-fun m!5388811 () Bool)

(assert (=> bs!971519 m!5388811))

(assert (=> b!4579352 d!1433775))

(declare-fun d!1433777 () Bool)

(declare-fun hash!3117 (Hashable!5665 K!12315) (_ BitVec 64))

(assert (=> d!1433777 (= (hash!3113 hashF!1107 key!3287) (hash!3117 hashF!1107 key!3287))))

(declare-fun bs!971520 () Bool)

(assert (= bs!971520 d!1433777))

(declare-fun m!5388813 () Bool)

(assert (=> bs!971520 m!5388813))

(assert (=> b!4579353 d!1433777))

(declare-fun d!1433779 () Bool)

(declare-fun res!1913152 () Bool)

(declare-fun e!2855649 () Bool)

(assert (=> d!1433779 (=> res!1913152 e!2855649)))

(assert (=> d!1433779 (= res!1913152 (not ((_ is Cons!50944) newBucket!178)))))

(assert (=> d!1433779 (= (noDuplicateKeys!1270 newBucket!178) e!2855649)))

(declare-fun b!4579468 () Bool)

(declare-fun e!2855650 () Bool)

(assert (=> b!4579468 (= e!2855649 e!2855650)))

(declare-fun res!1913153 () Bool)

(assert (=> b!4579468 (=> (not res!1913153) (not e!2855650))))

(assert (=> b!4579468 (= res!1913153 (not (containsKey!2048 (t!358058 newBucket!178) (_1!29051 (h!56877 newBucket!178)))))))

(declare-fun b!4579469 () Bool)

(assert (=> b!4579469 (= e!2855650 (noDuplicateKeys!1270 (t!358058 newBucket!178)))))

(assert (= (and d!1433779 (not res!1913152)) b!4579468))

(assert (= (and b!4579468 res!1913153) b!4579469))

(declare-fun m!5388815 () Bool)

(assert (=> b!4579468 m!5388815))

(declare-fun m!5388817 () Bool)

(assert (=> b!4579469 m!5388817))

(assert (=> b!4579350 d!1433779))

(declare-fun d!1433781 () Bool)

(declare-fun res!1913160 () Bool)

(declare-fun e!2855655 () Bool)

(assert (=> d!1433781 (=> res!1913160 e!2855655)))

(assert (=> d!1433781 (= res!1913160 (and ((_ is Cons!50944) (_2!29052 lt!1744536)) (= (_1!29051 (h!56877 (_2!29052 lt!1744536))) key!3287)))))

(assert (=> d!1433781 (= (containsKey!2048 (_2!29052 lt!1744536) key!3287) e!2855655)))

(declare-fun b!4579478 () Bool)

(declare-fun e!2855656 () Bool)

(assert (=> b!4579478 (= e!2855655 e!2855656)))

(declare-fun res!1913161 () Bool)

(assert (=> b!4579478 (=> (not res!1913161) (not e!2855656))))

(assert (=> b!4579478 (= res!1913161 ((_ is Cons!50944) (_2!29052 lt!1744536)))))

(declare-fun b!4579479 () Bool)

(assert (=> b!4579479 (= e!2855656 (containsKey!2048 (t!358058 (_2!29052 lt!1744536)) key!3287))))

(assert (= (and d!1433781 (not res!1913160)) b!4579478))

(assert (= (and b!4579478 res!1913161) b!4579479))

(declare-fun m!5388819 () Bool)

(assert (=> b!4579479 m!5388819))

(assert (=> b!4579349 d!1433781))

(declare-fun d!1433783 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8579 (List!51068) (InoxSet tuple2!51514))

(assert (=> d!1433783 (= (eq!709 lt!1744533 lt!1744562) (= (content!8579 (toList!4548 lt!1744533)) (content!8579 (toList!4548 lt!1744562))))))

(declare-fun bs!971521 () Bool)

(assert (= bs!971521 d!1433783))

(declare-fun m!5388821 () Bool)

(assert (=> bs!971521 m!5388821))

(declare-fun m!5388823 () Bool)

(assert (=> bs!971521 m!5388823))

(assert (=> b!4579351 d!1433783))

(declare-fun d!1433785 () Bool)

(declare-fun res!1913169 () Bool)

(declare-fun e!2855664 () Bool)

(assert (=> d!1433785 (=> res!1913169 e!2855664)))

(assert (=> d!1433785 (= res!1913169 ((_ is Nil!50945) (toList!4547 lm!1477)))))

(assert (=> d!1433785 (= (forall!10496 (toList!4547 lm!1477) lambda!182877) e!2855664)))

(declare-fun b!4579491 () Bool)

(declare-fun e!2855665 () Bool)

(assert (=> b!4579491 (= e!2855664 e!2855665)))

(declare-fun res!1913170 () Bool)

(assert (=> b!4579491 (=> (not res!1913170) (not e!2855665))))

(declare-fun dynLambda!21331 (Int tuple2!51516) Bool)

(assert (=> b!4579491 (= res!1913170 (dynLambda!21331 lambda!182877 (h!56878 (toList!4547 lm!1477))))))

(declare-fun b!4579492 () Bool)

(assert (=> b!4579492 (= e!2855665 (forall!10496 (t!358059 (toList!4547 lm!1477)) lambda!182877))))

(assert (= (and d!1433785 (not res!1913169)) b!4579491))

(assert (= (and b!4579491 res!1913170) b!4579492))

(declare-fun b_lambda!165951 () Bool)

(assert (=> (not b_lambda!165951) (not b!4579491)))

(declare-fun m!5388825 () Bool)

(assert (=> b!4579491 m!5388825))

(declare-fun m!5388827 () Bool)

(assert (=> b!4579492 m!5388827))

(assert (=> start!455896 d!1433785))

(declare-fun d!1433787 () Bool)

(declare-fun isStrictlySorted!510 (List!51069) Bool)

(assert (=> d!1433787 (= (inv!66499 lm!1477) (isStrictlySorted!510 (toList!4547 lm!1477)))))

(declare-fun bs!971528 () Bool)

(assert (= bs!971528 d!1433787))

(declare-fun m!5388861 () Bool)

(assert (=> bs!971528 m!5388861))

(assert (=> start!455896 d!1433787))

(declare-fun bs!971534 () Bool)

(declare-fun d!1433791 () Bool)

(assert (= bs!971534 (and d!1433791 b!4579364)))

(declare-fun lambda!182927 () Int)

(assert (=> bs!971534 (not (= lambda!182927 lambda!182878))))

(declare-fun bs!971535 () Bool)

(assert (= bs!971535 (and d!1433791 start!455896)))

(assert (=> bs!971535 (= lambda!182927 lambda!182877)))

(declare-fun bs!971536 () Bool)

(assert (= bs!971536 (and d!1433791 d!1433755)))

(assert (=> bs!971536 (= lambda!182927 lambda!182885)))

(declare-fun bs!971537 () Bool)

(assert (= bs!971537 (and d!1433791 d!1433773)))

(assert (=> bs!971537 (= lambda!182927 lambda!182897)))

(declare-fun bs!971538 () Bool)

(assert (= bs!971538 (and d!1433791 d!1433767)))

(assert (=> bs!971538 (= lambda!182927 lambda!182888)))

(assert (=> d!1433791 (not (contains!13835 (extractMap!1326 (toList!4547 lm!1477)) key!3287))))

(declare-fun lt!1744712 () Unit!105431)

(declare-fun choose!30498 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> d!1433791 (= lt!1744712 (choose!30498 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1433791 (forall!10496 (toList!4547 lm!1477) lambda!182927)))

(assert (=> d!1433791 (= (lemmaNotInItsHashBucketThenNotInMap!252 lm!1477 key!3287 hashF!1107) lt!1744712)))

(declare-fun bs!971539 () Bool)

(assert (= bs!971539 d!1433791))

(assert (=> bs!971539 m!5388661))

(assert (=> bs!971539 m!5388661))

(declare-fun m!5388873 () Bool)

(assert (=> bs!971539 m!5388873))

(declare-fun m!5388875 () Bool)

(assert (=> bs!971539 m!5388875))

(declare-fun m!5388877 () Bool)

(assert (=> bs!971539 m!5388877))

(assert (=> b!4579348 d!1433791))

(declare-fun d!1433797 () Bool)

(assert (=> d!1433797 (= (eq!709 lt!1744531 lt!1744543) (= (content!8579 (toList!4548 lt!1744531)) (content!8579 (toList!4548 lt!1744543))))))

(declare-fun bs!971540 () Bool)

(assert (= bs!971540 d!1433797))

(declare-fun m!5388879 () Bool)

(assert (=> bs!971540 m!5388879))

(declare-fun m!5388881 () Bool)

(assert (=> bs!971540 m!5388881))

(assert (=> b!4579365 d!1433797))

(declare-fun bs!971625 () Bool)

(declare-fun b!4579630 () Bool)

(assert (= bs!971625 (and b!4579630 b!4579364)))

(declare-fun lambda!182976 () Int)

(assert (=> bs!971625 (not (= lambda!182976 lambda!182879))))

(assert (=> b!4579630 true))

(declare-fun bs!971626 () Bool)

(declare-fun b!4579631 () Bool)

(assert (= bs!971626 (and b!4579631 b!4579364)))

(declare-fun lambda!182977 () Int)

(assert (=> bs!971626 (not (= lambda!182977 lambda!182879))))

(declare-fun bs!971627 () Bool)

(assert (= bs!971627 (and b!4579631 b!4579630)))

(assert (=> bs!971627 (= lambda!182977 lambda!182976)))

(assert (=> b!4579631 true))

(declare-fun lambda!182978 () Int)

(assert (=> bs!971626 (not (= lambda!182978 lambda!182879))))

(declare-fun lt!1744860 () ListMap!3809)

(assert (=> bs!971627 (= (= lt!1744860 lt!1744544) (= lambda!182978 lambda!182976))))

(assert (=> b!4579631 (= (= lt!1744860 lt!1744544) (= lambda!182978 lambda!182977))))

(assert (=> b!4579631 true))

(declare-fun bs!971629 () Bool)

(declare-fun d!1433799 () Bool)

(assert (= bs!971629 (and d!1433799 b!4579364)))

(declare-fun lambda!182979 () Int)

(assert (=> bs!971629 (not (= lambda!182979 lambda!182879))))

(declare-fun bs!971631 () Bool)

(assert (= bs!971631 (and d!1433799 b!4579630)))

(declare-fun lt!1744861 () ListMap!3809)

(assert (=> bs!971631 (= (= lt!1744861 lt!1744544) (= lambda!182979 lambda!182976))))

(declare-fun bs!971633 () Bool)

(assert (= bs!971633 (and d!1433799 b!4579631)))

(assert (=> bs!971633 (= (= lt!1744861 lt!1744544) (= lambda!182979 lambda!182977))))

(assert (=> bs!971633 (= (= lt!1744861 lt!1744860) (= lambda!182979 lambda!182978))))

(assert (=> d!1433799 true))

(declare-fun e!2855768 () ListMap!3809)

(assert (=> b!4579630 (= e!2855768 lt!1744544)))

(declare-fun lt!1744854 () Unit!105431)

(declare-fun call!319672 () Unit!105431)

(assert (=> b!4579630 (= lt!1744854 call!319672)))

(declare-fun call!319670 () Bool)

(assert (=> b!4579630 call!319670))

(declare-fun lt!1744858 () Unit!105431)

(assert (=> b!4579630 (= lt!1744858 lt!1744854)))

(declare-fun call!319671 () Bool)

(assert (=> b!4579630 call!319671))

(declare-fun lt!1744849 () Unit!105431)

(declare-fun Unit!105469 () Unit!105431)

(assert (=> b!4579630 (= lt!1744849 Unit!105469)))

(assert (=> b!4579631 (= e!2855768 lt!1744860)))

(declare-fun lt!1744853 () ListMap!3809)

(declare-fun +!1706 (ListMap!3809 tuple2!51514) ListMap!3809)

(assert (=> b!4579631 (= lt!1744853 (+!1706 lt!1744544 (h!56877 (_2!29052 lt!1744536))))))

(assert (=> b!4579631 (= lt!1744860 (addToMapMapFromBucket!783 (t!358058 (_2!29052 lt!1744536)) (+!1706 lt!1744544 (h!56877 (_2!29052 lt!1744536)))))))

(declare-fun lt!1744864 () Unit!105431)

(assert (=> b!4579631 (= lt!1744864 call!319672)))

(declare-fun forall!10498 (List!51068 Int) Bool)

(assert (=> b!4579631 (forall!10498 (toList!4548 lt!1744544) lambda!182977)))

(declare-fun lt!1744862 () Unit!105431)

(assert (=> b!4579631 (= lt!1744862 lt!1744864)))

(assert (=> b!4579631 (forall!10498 (toList!4548 lt!1744853) lambda!182978)))

(declare-fun lt!1744863 () Unit!105431)

(declare-fun Unit!105470 () Unit!105431)

(assert (=> b!4579631 (= lt!1744863 Unit!105470)))

(assert (=> b!4579631 (forall!10498 (t!358058 (_2!29052 lt!1744536)) lambda!182978)))

(declare-fun lt!1744846 () Unit!105431)

(declare-fun Unit!105471 () Unit!105431)

(assert (=> b!4579631 (= lt!1744846 Unit!105471)))

(declare-fun lt!1744845 () Unit!105431)

(declare-fun Unit!105472 () Unit!105431)

(assert (=> b!4579631 (= lt!1744845 Unit!105472)))

(declare-fun lt!1744852 () Unit!105431)

(assert (=> b!4579631 (= lt!1744852 (forallContained!2761 (toList!4548 lt!1744853) lambda!182978 (h!56877 (_2!29052 lt!1744536))))))

(assert (=> b!4579631 (contains!13835 lt!1744853 (_1!29051 (h!56877 (_2!29052 lt!1744536))))))

(declare-fun lt!1744850 () Unit!105431)

(declare-fun Unit!105473 () Unit!105431)

(assert (=> b!4579631 (= lt!1744850 Unit!105473)))

(assert (=> b!4579631 (contains!13835 lt!1744860 (_1!29051 (h!56877 (_2!29052 lt!1744536))))))

(declare-fun lt!1744857 () Unit!105431)

(declare-fun Unit!105474 () Unit!105431)

(assert (=> b!4579631 (= lt!1744857 Unit!105474)))

(assert (=> b!4579631 (forall!10498 (_2!29052 lt!1744536) lambda!182978)))

(declare-fun lt!1744847 () Unit!105431)

(declare-fun Unit!105475 () Unit!105431)

(assert (=> b!4579631 (= lt!1744847 Unit!105475)))

(assert (=> b!4579631 call!319670))

(declare-fun lt!1744851 () Unit!105431)

(declare-fun Unit!105476 () Unit!105431)

(assert (=> b!4579631 (= lt!1744851 Unit!105476)))

(declare-fun lt!1744848 () Unit!105431)

(declare-fun Unit!105477 () Unit!105431)

(assert (=> b!4579631 (= lt!1744848 Unit!105477)))

(declare-fun lt!1744865 () Unit!105431)

(declare-fun addForallContainsKeyThenBeforeAdding!412 (ListMap!3809 ListMap!3809 K!12315 V!12561) Unit!105431)

(assert (=> b!4579631 (= lt!1744865 (addForallContainsKeyThenBeforeAdding!412 lt!1744544 lt!1744860 (_1!29051 (h!56877 (_2!29052 lt!1744536))) (_2!29051 (h!56877 (_2!29052 lt!1744536)))))))

(assert (=> b!4579631 call!319671))

(declare-fun lt!1744859 () Unit!105431)

(assert (=> b!4579631 (= lt!1744859 lt!1744865)))

(assert (=> b!4579631 (forall!10498 (toList!4548 lt!1744544) lambda!182978)))

(declare-fun lt!1744856 () Unit!105431)

(declare-fun Unit!105478 () Unit!105431)

(assert (=> b!4579631 (= lt!1744856 Unit!105478)))

(declare-fun res!1913256 () Bool)

(assert (=> b!4579631 (= res!1913256 (forall!10498 (_2!29052 lt!1744536) lambda!182978))))

(declare-fun e!2855770 () Bool)

(assert (=> b!4579631 (=> (not res!1913256) (not e!2855770))))

(assert (=> b!4579631 e!2855770))

(declare-fun lt!1744855 () Unit!105431)

(declare-fun Unit!105479 () Unit!105431)

(assert (=> b!4579631 (= lt!1744855 Unit!105479)))

(declare-fun b!4579632 () Bool)

(assert (=> b!4579632 (= e!2855770 (forall!10498 (toList!4548 lt!1744544) lambda!182978))))

(declare-fun c!783811 () Bool)

(declare-fun bm!319665 () Bool)

(assert (=> bm!319665 (= call!319671 (forall!10498 (toList!4548 lt!1744544) (ite c!783811 lambda!182976 lambda!182978)))))

(declare-fun bm!319666 () Bool)

(assert (=> bm!319666 (= call!319670 (forall!10498 (ite c!783811 (toList!4548 lt!1744544) (toList!4548 lt!1744853)) (ite c!783811 lambda!182976 lambda!182978)))))

(declare-fun b!4579633 () Bool)

(declare-fun e!2855769 () Bool)

(assert (=> b!4579633 (= e!2855769 (invariantList!1095 (toList!4548 lt!1744861)))))

(assert (=> d!1433799 e!2855769))

(declare-fun res!1913257 () Bool)

(assert (=> d!1433799 (=> (not res!1913257) (not e!2855769))))

(assert (=> d!1433799 (= res!1913257 (forall!10498 (_2!29052 lt!1744536) lambda!182979))))

(assert (=> d!1433799 (= lt!1744861 e!2855768)))

(assert (=> d!1433799 (= c!783811 ((_ is Nil!50944) (_2!29052 lt!1744536)))))

(assert (=> d!1433799 (noDuplicateKeys!1270 (_2!29052 lt!1744536))))

(assert (=> d!1433799 (= (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744544) lt!1744861)))

(declare-fun b!4579634 () Bool)

(declare-fun res!1913258 () Bool)

(assert (=> b!4579634 (=> (not res!1913258) (not e!2855769))))

(assert (=> b!4579634 (= res!1913258 (forall!10498 (toList!4548 lt!1744544) lambda!182979))))

(declare-fun bm!319667 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!412 (ListMap!3809) Unit!105431)

(assert (=> bm!319667 (= call!319672 (lemmaContainsAllItsOwnKeys!412 lt!1744544))))

(assert (= (and d!1433799 c!783811) b!4579630))

(assert (= (and d!1433799 (not c!783811)) b!4579631))

(assert (= (and b!4579631 res!1913256) b!4579632))

(assert (= (or b!4579630 b!4579631) bm!319666))

(assert (= (or b!4579630 b!4579631) bm!319665))

(assert (= (or b!4579630 b!4579631) bm!319667))

(assert (= (and d!1433799 res!1913257) b!4579634))

(assert (= (and b!4579634 res!1913258) b!4579633))

(declare-fun m!5389141 () Bool)

(assert (=> bm!319665 m!5389141))

(declare-fun m!5389143 () Bool)

(assert (=> b!4579631 m!5389143))

(declare-fun m!5389145 () Bool)

(assert (=> b!4579631 m!5389145))

(assert (=> b!4579631 m!5389145))

(declare-fun m!5389147 () Bool)

(assert (=> b!4579631 m!5389147))

(declare-fun m!5389151 () Bool)

(assert (=> b!4579631 m!5389151))

(declare-fun m!5389155 () Bool)

(assert (=> b!4579631 m!5389155))

(declare-fun m!5389157 () Bool)

(assert (=> b!4579631 m!5389157))

(declare-fun m!5389161 () Bool)

(assert (=> b!4579631 m!5389161))

(declare-fun m!5389165 () Bool)

(assert (=> b!4579631 m!5389165))

(declare-fun m!5389169 () Bool)

(assert (=> b!4579631 m!5389169))

(declare-fun m!5389173 () Bool)

(assert (=> b!4579631 m!5389173))

(assert (=> b!4579631 m!5389161))

(declare-fun m!5389175 () Bool)

(assert (=> b!4579631 m!5389175))

(declare-fun m!5389177 () Bool)

(assert (=> b!4579634 m!5389177))

(declare-fun m!5389179 () Bool)

(assert (=> d!1433799 m!5389179))

(assert (=> d!1433799 m!5388679))

(declare-fun m!5389181 () Bool)

(assert (=> bm!319666 m!5389181))

(declare-fun m!5389183 () Bool)

(assert (=> b!4579633 m!5389183))

(declare-fun m!5389187 () Bool)

(assert (=> bm!319667 m!5389187))

(assert (=> b!4579632 m!5389143))

(assert (=> b!4579365 d!1433799))

(declare-fun bs!971646 () Bool)

(declare-fun d!1433881 () Bool)

(assert (= bs!971646 (and d!1433881 b!4579364)))

(declare-fun lambda!182981 () Int)

(assert (=> bs!971646 (not (= lambda!182981 lambda!182878))))

(declare-fun bs!971647 () Bool)

(assert (= bs!971647 (and d!1433881 d!1433791)))

(assert (=> bs!971647 (= lambda!182981 lambda!182927)))

(declare-fun bs!971648 () Bool)

(assert (= bs!971648 (and d!1433881 start!455896)))

(assert (=> bs!971648 (= lambda!182981 lambda!182877)))

(declare-fun bs!971649 () Bool)

(assert (= bs!971649 (and d!1433881 d!1433755)))

(assert (=> bs!971649 (= lambda!182981 lambda!182885)))

(declare-fun bs!971650 () Bool)

(assert (= bs!971650 (and d!1433881 d!1433773)))

(assert (=> bs!971650 (= lambda!182981 lambda!182897)))

(declare-fun bs!971651 () Bool)

(assert (= bs!971651 (and d!1433881 d!1433767)))

(assert (=> bs!971651 (= lambda!182981 lambda!182888)))

(declare-fun lt!1744874 () ListMap!3809)

(assert (=> d!1433881 (invariantList!1095 (toList!4548 lt!1744874))))

(declare-fun e!2855776 () ListMap!3809)

(assert (=> d!1433881 (= lt!1744874 e!2855776)))

(declare-fun c!783813 () Bool)

(assert (=> d!1433881 (= c!783813 ((_ is Cons!50945) (toList!4547 lt!1744554)))))

(assert (=> d!1433881 (forall!10496 (toList!4547 lt!1744554) lambda!182981)))

(assert (=> d!1433881 (= (extractMap!1326 (toList!4547 lt!1744554)) lt!1744874)))

(declare-fun b!4579644 () Bool)

(assert (=> b!4579644 (= e!2855776 (addToMapMapFromBucket!783 (_2!29052 (h!56878 (toList!4547 lt!1744554))) (extractMap!1326 (t!358059 (toList!4547 lt!1744554)))))))

(declare-fun b!4579645 () Bool)

(assert (=> b!4579645 (= e!2855776 (ListMap!3810 Nil!50944))))

(assert (= (and d!1433881 c!783813) b!4579644))

(assert (= (and d!1433881 (not c!783813)) b!4579645))

(declare-fun m!5389191 () Bool)

(assert (=> d!1433881 m!5389191))

(declare-fun m!5389193 () Bool)

(assert (=> d!1433881 m!5389193))

(declare-fun m!5389195 () Bool)

(assert (=> b!4579644 m!5389195))

(assert (=> b!4579644 m!5389195))

(declare-fun m!5389197 () Bool)

(assert (=> b!4579644 m!5389197))

(assert (=> b!4579365 d!1433881))

(declare-fun bs!971663 () Bool)

(declare-fun d!1433883 () Bool)

(assert (= bs!971663 (and d!1433883 b!4579364)))

(declare-fun lambda!182987 () Int)

(assert (=> bs!971663 (= (= hash!344 (_1!29052 (h!56878 (toList!4547 lm!1477)))) (= lambda!182987 lambda!182879))))

(declare-fun bs!971665 () Bool)

(assert (= bs!971665 (and d!1433883 b!4579630)))

(assert (=> bs!971665 (not (= lambda!182987 lambda!182976))))

(declare-fun bs!971667 () Bool)

(assert (= bs!971667 (and d!1433883 b!4579631)))

(assert (=> bs!971667 (not (= lambda!182987 lambda!182977))))

(declare-fun bs!971668 () Bool)

(assert (= bs!971668 (and d!1433883 d!1433799)))

(assert (=> bs!971668 (not (= lambda!182987 lambda!182979))))

(assert (=> bs!971667 (not (= lambda!182987 lambda!182978))))

(assert (=> d!1433883 true))

(assert (=> d!1433883 true))

(assert (=> d!1433883 (= (allKeysSameHash!1124 newBucket!178 hash!344 hashF!1107) (forall!10498 newBucket!178 lambda!182987))))

(declare-fun bs!971670 () Bool)

(assert (= bs!971670 d!1433883))

(declare-fun m!5389201 () Bool)

(assert (=> bs!971670 m!5389201))

(assert (=> b!4579344 d!1433883))

(declare-fun d!1433887 () Bool)

(declare-fun res!1913266 () Bool)

(declare-fun e!2855779 () Bool)

(assert (=> d!1433887 (=> res!1913266 e!2855779)))

(assert (=> d!1433887 (= res!1913266 (and ((_ is Cons!50944) lt!1744561) (= (_1!29051 (h!56877 lt!1744561)) key!3287)))))

(assert (=> d!1433887 (= (containsKey!2048 lt!1744561 key!3287) e!2855779)))

(declare-fun b!4579650 () Bool)

(declare-fun e!2855780 () Bool)

(assert (=> b!4579650 (= e!2855779 e!2855780)))

(declare-fun res!1913267 () Bool)

(assert (=> b!4579650 (=> (not res!1913267) (not e!2855780))))

(assert (=> b!4579650 (= res!1913267 ((_ is Cons!50944) lt!1744561))))

(declare-fun b!4579651 () Bool)

(assert (=> b!4579651 (= e!2855780 (containsKey!2048 (t!358058 lt!1744561) key!3287))))

(assert (= (and d!1433887 (not res!1913266)) b!4579650))

(assert (= (and b!4579650 res!1913267) b!4579651))

(declare-fun m!5389207 () Bool)

(assert (=> b!4579651 m!5389207))

(assert (=> b!4579346 d!1433887))

(declare-fun d!1433891 () Bool)

(declare-fun e!2855792 () Bool)

(assert (=> d!1433891 e!2855792))

(declare-fun res!1913278 () Bool)

(assert (=> d!1433891 (=> res!1913278 e!2855792)))

(declare-fun lt!1744913 () Bool)

(assert (=> d!1433891 (= res!1913278 (not lt!1744913))))

(declare-fun lt!1744916 () Bool)

(assert (=> d!1433891 (= lt!1744913 lt!1744916)))

(declare-fun lt!1744914 () Unit!105431)

(declare-fun e!2855791 () Unit!105431)

(assert (=> d!1433891 (= lt!1744914 e!2855791)))

(declare-fun c!783817 () Bool)

(assert (=> d!1433891 (= c!783817 lt!1744916)))

(declare-fun containsKey!2052 (List!51069 (_ BitVec 64)) Bool)

(assert (=> d!1433891 (= lt!1744916 (containsKey!2052 (toList!4547 lt!1744529) hash!344))))

(assert (=> d!1433891 (= (contains!13836 lt!1744529 hash!344) lt!1744913)))

(declare-fun b!4579670 () Bool)

(declare-fun lt!1744915 () Unit!105431)

(assert (=> b!4579670 (= e!2855791 lt!1744915)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1155 (List!51069 (_ BitVec 64)) Unit!105431)

(assert (=> b!4579670 (= lt!1744915 (lemmaContainsKeyImpliesGetValueByKeyDefined!1155 (toList!4547 lt!1744529) hash!344))))

(declare-fun isDefined!8592 (Option!11323) Bool)

(assert (=> b!4579670 (isDefined!8592 (getValueByKey!1251 (toList!4547 lt!1744529) hash!344))))

(declare-fun b!4579671 () Bool)

(declare-fun Unit!105482 () Unit!105431)

(assert (=> b!4579671 (= e!2855791 Unit!105482)))

(declare-fun b!4579672 () Bool)

(assert (=> b!4579672 (= e!2855792 (isDefined!8592 (getValueByKey!1251 (toList!4547 lt!1744529) hash!344)))))

(assert (= (and d!1433891 c!783817) b!4579670))

(assert (= (and d!1433891 (not c!783817)) b!4579671))

(assert (= (and d!1433891 (not res!1913278)) b!4579672))

(declare-fun m!5389249 () Bool)

(assert (=> d!1433891 m!5389249))

(declare-fun m!5389251 () Bool)

(assert (=> b!4579670 m!5389251))

(assert (=> b!4579670 m!5388809))

(assert (=> b!4579670 m!5388809))

(declare-fun m!5389253 () Bool)

(assert (=> b!4579670 m!5389253))

(assert (=> b!4579672 m!5388809))

(assert (=> b!4579672 m!5388809))

(assert (=> b!4579672 m!5389253))

(assert (=> b!4579345 d!1433891))

(declare-fun d!1433903 () Bool)

(declare-fun tail!7915 (List!51069) List!51069)

(assert (=> d!1433903 (= (tail!7913 lm!1477) (ListLongMap!3180 (tail!7915 (toList!4547 lm!1477))))))

(declare-fun bs!971697 () Bool)

(assert (= bs!971697 d!1433903))

(declare-fun m!5389255 () Bool)

(assert (=> bs!971697 m!5389255))

(assert (=> b!4579345 d!1433903))

(declare-fun b!4579683 () Bool)

(declare-fun e!2855798 () List!51068)

(assert (=> b!4579683 (= e!2855798 (Cons!50944 (h!56877 lt!1744561) (removePairForKey!897 (t!358058 lt!1744561) key!3287)))))

(declare-fun b!4579682 () Bool)

(declare-fun e!2855797 () List!51068)

(assert (=> b!4579682 (= e!2855797 e!2855798)))

(declare-fun c!783822 () Bool)

(assert (=> b!4579682 (= c!783822 ((_ is Cons!50944) lt!1744561))))

(declare-fun b!4579684 () Bool)

(assert (=> b!4579684 (= e!2855798 Nil!50944)))

(declare-fun b!4579681 () Bool)

(assert (=> b!4579681 (= e!2855797 (t!358058 lt!1744561))))

(declare-fun d!1433905 () Bool)

(declare-fun lt!1744919 () List!51068)

(assert (=> d!1433905 (not (containsKey!2048 lt!1744919 key!3287))))

(assert (=> d!1433905 (= lt!1744919 e!2855797)))

(declare-fun c!783823 () Bool)

(assert (=> d!1433905 (= c!783823 (and ((_ is Cons!50944) lt!1744561) (= (_1!29051 (h!56877 lt!1744561)) key!3287)))))

(assert (=> d!1433905 (noDuplicateKeys!1270 lt!1744561)))

(assert (=> d!1433905 (= (removePairForKey!897 lt!1744561 key!3287) lt!1744919)))

(assert (= (and d!1433905 c!783823) b!4579681))

(assert (= (and d!1433905 (not c!783823)) b!4579682))

(assert (= (and b!4579682 c!783822) b!4579683))

(assert (= (and b!4579682 (not c!783822)) b!4579684))

(declare-fun m!5389265 () Bool)

(assert (=> b!4579683 m!5389265))

(declare-fun m!5389271 () Bool)

(assert (=> d!1433905 m!5389271))

(declare-fun m!5389273 () Bool)

(assert (=> d!1433905 m!5389273))

(assert (=> b!4579363 d!1433905))

(declare-fun d!1433907 () Bool)

(declare-fun e!2855800 () Bool)

(assert (=> d!1433907 e!2855800))

(declare-fun res!1913279 () Bool)

(assert (=> d!1433907 (=> res!1913279 e!2855800)))

(declare-fun lt!1744920 () Bool)

(assert (=> d!1433907 (= res!1913279 (not lt!1744920))))

(declare-fun lt!1744923 () Bool)

(assert (=> d!1433907 (= lt!1744920 lt!1744923)))

(declare-fun lt!1744921 () Unit!105431)

(declare-fun e!2855799 () Unit!105431)

(assert (=> d!1433907 (= lt!1744921 e!2855799)))

(declare-fun c!783824 () Bool)

(assert (=> d!1433907 (= c!783824 lt!1744923)))

(assert (=> d!1433907 (= lt!1744923 (containsKey!2052 (toList!4547 lm!1477) lt!1744547))))

(assert (=> d!1433907 (= (contains!13836 lm!1477 lt!1744547) lt!1744920)))

(declare-fun b!4579685 () Bool)

(declare-fun lt!1744922 () Unit!105431)

(assert (=> b!4579685 (= e!2855799 lt!1744922)))

(assert (=> b!4579685 (= lt!1744922 (lemmaContainsKeyImpliesGetValueByKeyDefined!1155 (toList!4547 lm!1477) lt!1744547))))

(assert (=> b!4579685 (isDefined!8592 (getValueByKey!1251 (toList!4547 lm!1477) lt!1744547))))

(declare-fun b!4579686 () Bool)

(declare-fun Unit!105483 () Unit!105431)

(assert (=> b!4579686 (= e!2855799 Unit!105483)))

(declare-fun b!4579687 () Bool)

(assert (=> b!4579687 (= e!2855800 (isDefined!8592 (getValueByKey!1251 (toList!4547 lm!1477) lt!1744547)))))

(assert (= (and d!1433907 c!783824) b!4579685))

(assert (= (and d!1433907 (not c!783824)) b!4579686))

(assert (= (and d!1433907 (not res!1913279)) b!4579687))

(declare-fun m!5389295 () Bool)

(assert (=> d!1433907 m!5389295))

(declare-fun m!5389297 () Bool)

(assert (=> b!4579685 m!5389297))

(declare-fun m!5389299 () Bool)

(assert (=> b!4579685 m!5389299))

(assert (=> b!4579685 m!5389299))

(declare-fun m!5389301 () Bool)

(assert (=> b!4579685 m!5389301))

(assert (=> b!4579687 m!5389299))

(assert (=> b!4579687 m!5389299))

(assert (=> b!4579687 m!5389301))

(assert (=> b!4579363 d!1433907))

(declare-fun d!1433911 () Bool)

(assert (=> d!1433911 (dynLambda!21331 lambda!182877 lt!1744542)))

(declare-fun lt!1744926 () Unit!105431)

(declare-fun choose!30500 (List!51069 Int tuple2!51516) Unit!105431)

(assert (=> d!1433911 (= lt!1744926 (choose!30500 (toList!4547 lm!1477) lambda!182877 lt!1744542))))

(declare-fun e!2855803 () Bool)

(assert (=> d!1433911 e!2855803))

(declare-fun res!1913282 () Bool)

(assert (=> d!1433911 (=> (not res!1913282) (not e!2855803))))

(assert (=> d!1433911 (= res!1913282 (forall!10496 (toList!4547 lm!1477) lambda!182877))))

(assert (=> d!1433911 (= (forallContained!2760 (toList!4547 lm!1477) lambda!182877 lt!1744542) lt!1744926)))

(declare-fun b!4579690 () Bool)

(assert (=> b!4579690 (= e!2855803 (contains!13837 (toList!4547 lm!1477) lt!1744542))))

(assert (= (and d!1433911 res!1913282) b!4579690))

(declare-fun b_lambda!165963 () Bool)

(assert (=> (not b_lambda!165963) (not d!1433911)))

(declare-fun m!5389303 () Bool)

(assert (=> d!1433911 m!5389303))

(declare-fun m!5389305 () Bool)

(assert (=> d!1433911 m!5389305))

(assert (=> d!1433911 m!5388663))

(assert (=> b!4579690 m!5388619))

(assert (=> b!4579363 d!1433911))

(declare-fun bs!971708 () Bool)

(declare-fun d!1433913 () Bool)

(assert (= bs!971708 (and d!1433913 b!4579364)))

(declare-fun lambda!182997 () Int)

(assert (=> bs!971708 (not (= lambda!182997 lambda!182878))))

(declare-fun bs!971709 () Bool)

(assert (= bs!971709 (and d!1433913 start!455896)))

(assert (=> bs!971709 (= lambda!182997 lambda!182877)))

(declare-fun bs!971710 () Bool)

(assert (= bs!971710 (and d!1433913 d!1433755)))

(assert (=> bs!971710 (= lambda!182997 lambda!182885)))

(declare-fun bs!971711 () Bool)

(assert (= bs!971711 (and d!1433913 d!1433773)))

(assert (=> bs!971711 (= lambda!182997 lambda!182897)))

(declare-fun bs!971712 () Bool)

(assert (= bs!971712 (and d!1433913 d!1433767)))

(assert (=> bs!971712 (= lambda!182997 lambda!182888)))

(declare-fun bs!971713 () Bool)

(assert (= bs!971713 (and d!1433913 d!1433791)))

(assert (=> bs!971713 (= lambda!182997 lambda!182927)))

(declare-fun bs!971714 () Bool)

(assert (= bs!971714 (and d!1433913 d!1433881)))

(assert (=> bs!971714 (= lambda!182997 lambda!182981)))

(assert (=> d!1433913 (contains!13836 lm!1477 (hash!3113 hashF!1107 key!3287))))

(declare-fun lt!1744929 () Unit!105431)

(declare-fun choose!30501 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> d!1433913 (= lt!1744929 (choose!30501 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1433913 (forall!10496 (toList!4547 lm!1477) lambda!182997)))

(assert (=> d!1433913 (= (lemmaInGenMapThenLongMapContainsHash!344 lm!1477 key!3287 hashF!1107) lt!1744929)))

(declare-fun bs!971715 () Bool)

(assert (= bs!971715 d!1433913))

(assert (=> bs!971715 m!5388639))

(assert (=> bs!971715 m!5388639))

(declare-fun m!5389307 () Bool)

(assert (=> bs!971715 m!5389307))

(declare-fun m!5389309 () Bool)

(assert (=> bs!971715 m!5389309))

(declare-fun m!5389311 () Bool)

(assert (=> bs!971715 m!5389311))

(assert (=> b!4579363 d!1433913))

(declare-fun d!1433915 () Bool)

(declare-fun lt!1744934 () Bool)

(declare-fun content!8580 (List!51069) (InoxSet tuple2!51516))

(assert (=> d!1433915 (= lt!1744934 (select (content!8580 (toList!4547 lm!1477)) lt!1744542))))

(declare-fun e!2855809 () Bool)

(assert (=> d!1433915 (= lt!1744934 e!2855809)))

(declare-fun res!1913288 () Bool)

(assert (=> d!1433915 (=> (not res!1913288) (not e!2855809))))

(assert (=> d!1433915 (= res!1913288 ((_ is Cons!50945) (toList!4547 lm!1477)))))

(assert (=> d!1433915 (= (contains!13837 (toList!4547 lm!1477) lt!1744542) lt!1744934)))

(declare-fun b!4579695 () Bool)

(declare-fun e!2855808 () Bool)

(assert (=> b!4579695 (= e!2855809 e!2855808)))

(declare-fun res!1913287 () Bool)

(assert (=> b!4579695 (=> res!1913287 e!2855808)))

(assert (=> b!4579695 (= res!1913287 (= (h!56878 (toList!4547 lm!1477)) lt!1744542))))

(declare-fun b!4579696 () Bool)

(assert (=> b!4579696 (= e!2855808 (contains!13837 (t!358059 (toList!4547 lm!1477)) lt!1744542))))

(assert (= (and d!1433915 res!1913288) b!4579695))

(assert (= (and b!4579695 (not res!1913287)) b!4579696))

(declare-fun m!5389313 () Bool)

(assert (=> d!1433915 m!5389313))

(declare-fun m!5389317 () Bool)

(assert (=> d!1433915 m!5389317))

(assert (=> b!4579696 m!5388583))

(assert (=> b!4579363 d!1433915))

(declare-fun d!1433917 () Bool)

(assert (=> d!1433917 (contains!13837 (toList!4547 lm!1477) (tuple2!51517 hash!344 lt!1744561))))

(declare-fun lt!1744938 () Unit!105431)

(declare-fun choose!30503 (List!51069 (_ BitVec 64) List!51068) Unit!105431)

(assert (=> d!1433917 (= lt!1744938 (choose!30503 (toList!4547 lm!1477) hash!344 lt!1744561))))

(declare-fun e!2855818 () Bool)

(assert (=> d!1433917 e!2855818))

(declare-fun res!1913291 () Bool)

(assert (=> d!1433917 (=> (not res!1913291) (not e!2855818))))

(assert (=> d!1433917 (= res!1913291 (isStrictlySorted!510 (toList!4547 lm!1477)))))

(assert (=> d!1433917 (= (lemmaGetValueByKeyImpliesContainsTuple!782 (toList!4547 lm!1477) hash!344 lt!1744561) lt!1744938)))

(declare-fun b!4579709 () Bool)

(assert (=> b!4579709 (= e!2855818 (= (getValueByKey!1251 (toList!4547 lm!1477) hash!344) (Some!11322 lt!1744561)))))

(assert (= (and d!1433917 res!1913291) b!4579709))

(declare-fun m!5389329 () Bool)

(assert (=> d!1433917 m!5389329))

(declare-fun m!5389331 () Bool)

(assert (=> d!1433917 m!5389331))

(assert (=> d!1433917 m!5388861))

(declare-fun m!5389333 () Bool)

(assert (=> b!4579709 m!5389333))

(assert (=> b!4579363 d!1433917))

(declare-fun d!1433927 () Bool)

(assert (=> d!1433927 (= (apply!12007 lm!1477 hash!344) (get!16811 (getValueByKey!1251 (toList!4547 lm!1477) hash!344)))))

(declare-fun bs!971721 () Bool)

(assert (= bs!971721 d!1433927))

(assert (=> bs!971721 m!5389333))

(assert (=> bs!971721 m!5389333))

(declare-fun m!5389335 () Bool)

(assert (=> bs!971721 m!5389335))

(assert (=> b!4579363 d!1433927))

(declare-fun d!1433929 () Bool)

(declare-fun head!9536 (List!51069) tuple2!51516)

(assert (=> d!1433929 (= (head!9534 lt!1744554) (head!9536 (toList!4547 lt!1744554)))))

(declare-fun bs!971722 () Bool)

(assert (= bs!971722 d!1433929))

(declare-fun m!5389337 () Bool)

(assert (=> bs!971722 m!5389337))

(assert (=> b!4579341 d!1433929))

(declare-fun d!1433931 () Bool)

(declare-fun e!2855831 () Bool)

(assert (=> d!1433931 e!2855831))

(declare-fun res!1913301 () Bool)

(assert (=> d!1433931 (=> res!1913301 e!2855831)))

(declare-fun e!2855833 () Bool)

(assert (=> d!1433931 (= res!1913301 e!2855833)))

(declare-fun res!1913300 () Bool)

(assert (=> d!1433931 (=> (not res!1913300) (not e!2855833))))

(declare-fun lt!1744941 () Option!11319)

(declare-fun isEmpty!28817 (Option!11319) Bool)

(assert (=> d!1433931 (= res!1913300 (isEmpty!28817 lt!1744941))))

(declare-fun e!2855830 () Option!11319)

(assert (=> d!1433931 (= lt!1744941 e!2855830)))

(declare-fun c!783829 () Bool)

(assert (=> d!1433931 (= c!783829 (and ((_ is Cons!50944) (_2!29052 lt!1744536)) (= (_1!29051 (h!56877 (_2!29052 lt!1744536))) key!3287)))))

(assert (=> d!1433931 (noDuplicateKeys!1270 (_2!29052 lt!1744536))))

(assert (=> d!1433931 (= (getPair!230 (_2!29052 lt!1744536) key!3287) lt!1744941)))

(declare-fun b!4579726 () Bool)

(declare-fun e!2855829 () Bool)

(declare-fun contains!13841 (List!51068 tuple2!51514) Bool)

(assert (=> b!4579726 (= e!2855829 (contains!13841 (_2!29052 lt!1744536) (get!16809 lt!1744941)))))

(declare-fun b!4579727 () Bool)

(declare-fun e!2855832 () Option!11319)

(assert (=> b!4579727 (= e!2855832 (getPair!230 (t!358058 (_2!29052 lt!1744536)) key!3287))))

(declare-fun b!4579728 () Bool)

(declare-fun res!1913302 () Bool)

(assert (=> b!4579728 (=> (not res!1913302) (not e!2855829))))

(assert (=> b!4579728 (= res!1913302 (= (_1!29051 (get!16809 lt!1744941)) key!3287))))

(declare-fun b!4579729 () Bool)

(assert (=> b!4579729 (= e!2855833 (not (containsKey!2048 (_2!29052 lt!1744536) key!3287)))))

(declare-fun b!4579730 () Bool)

(assert (=> b!4579730 (= e!2855832 None!11318)))

(declare-fun b!4579731 () Bool)

(assert (=> b!4579731 (= e!2855830 e!2855832)))

(declare-fun c!783830 () Bool)

(assert (=> b!4579731 (= c!783830 ((_ is Cons!50944) (_2!29052 lt!1744536)))))

(declare-fun b!4579732 () Bool)

(assert (=> b!4579732 (= e!2855831 e!2855829)))

(declare-fun res!1913303 () Bool)

(assert (=> b!4579732 (=> (not res!1913303) (not e!2855829))))

(declare-fun isDefined!8593 (Option!11319) Bool)

(assert (=> b!4579732 (= res!1913303 (isDefined!8593 lt!1744941))))

(declare-fun b!4579733 () Bool)

(assert (=> b!4579733 (= e!2855830 (Some!11318 (h!56877 (_2!29052 lt!1744536))))))

(assert (= (and d!1433931 c!783829) b!4579733))

(assert (= (and d!1433931 (not c!783829)) b!4579731))

(assert (= (and b!4579731 c!783830) b!4579727))

(assert (= (and b!4579731 (not c!783830)) b!4579730))

(assert (= (and d!1433931 res!1913300) b!4579729))

(assert (= (and d!1433931 (not res!1913301)) b!4579732))

(assert (= (and b!4579732 res!1913303) b!4579728))

(assert (= (and b!4579728 res!1913302) b!4579726))

(declare-fun m!5389339 () Bool)

(assert (=> b!4579726 m!5389339))

(assert (=> b!4579726 m!5389339))

(declare-fun m!5389341 () Bool)

(assert (=> b!4579726 m!5389341))

(declare-fun m!5389343 () Bool)

(assert (=> d!1433931 m!5389343))

(assert (=> d!1433931 m!5388679))

(declare-fun m!5389345 () Bool)

(assert (=> b!4579727 m!5389345))

(declare-fun m!5389347 () Bool)

(assert (=> b!4579732 m!5389347))

(assert (=> b!4579728 m!5389339))

(assert (=> b!4579729 m!5388677))

(assert (=> b!4579364 d!1433931))

(declare-fun d!1433933 () Bool)

(assert (=> d!1433933 (dynLambda!21331 lambda!182878 (h!56878 (toList!4547 lm!1477)))))

(declare-fun lt!1744942 () Unit!105431)

(assert (=> d!1433933 (= lt!1744942 (choose!30500 (toList!4547 lm!1477) lambda!182878 (h!56878 (toList!4547 lm!1477))))))

(declare-fun e!2855834 () Bool)

(assert (=> d!1433933 e!2855834))

(declare-fun res!1913304 () Bool)

(assert (=> d!1433933 (=> (not res!1913304) (not e!2855834))))

(assert (=> d!1433933 (= res!1913304 (forall!10496 (toList!4547 lm!1477) lambda!182878))))

(assert (=> d!1433933 (= (forallContained!2760 (toList!4547 lm!1477) lambda!182878 (h!56878 (toList!4547 lm!1477))) lt!1744942)))

(declare-fun b!4579734 () Bool)

(assert (=> b!4579734 (= e!2855834 (contains!13837 (toList!4547 lm!1477) (h!56878 (toList!4547 lm!1477))))))

(assert (= (and d!1433933 res!1913304) b!4579734))

(declare-fun b_lambda!165975 () Bool)

(assert (=> (not b_lambda!165975) (not d!1433933)))

(declare-fun m!5389349 () Bool)

(assert (=> d!1433933 m!5389349))

(declare-fun m!5389351 () Bool)

(assert (=> d!1433933 m!5389351))

(declare-fun m!5389353 () Bool)

(assert (=> d!1433933 m!5389353))

(declare-fun m!5389355 () Bool)

(assert (=> b!4579734 m!5389355))

(assert (=> b!4579364 d!1433933))

(declare-fun d!1433935 () Bool)

(declare-fun dynLambda!21332 (Int tuple2!51514) Bool)

(assert (=> d!1433935 (dynLambda!21332 lambda!182879 (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530))))))

(declare-fun lt!1744945 () Unit!105431)

(declare-fun choose!30505 (List!51068 Int tuple2!51514) Unit!105431)

(assert (=> d!1433935 (= lt!1744945 (choose!30505 (_2!29052 (h!56878 (toList!4547 lm!1477))) lambda!182879 (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530)))))))

(declare-fun e!2855837 () Bool)

(assert (=> d!1433935 e!2855837))

(declare-fun res!1913307 () Bool)

(assert (=> d!1433935 (=> (not res!1913307) (not e!2855837))))

(assert (=> d!1433935 (= res!1913307 (forall!10498 (_2!29052 (h!56878 (toList!4547 lm!1477))) lambda!182879))))

(assert (=> d!1433935 (= (forallContained!2761 (_2!29052 (h!56878 (toList!4547 lm!1477))) lambda!182879 (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530)))) lt!1744945)))

(declare-fun b!4579737 () Bool)

(assert (=> b!4579737 (= e!2855837 (contains!13841 (_2!29052 (h!56878 (toList!4547 lm!1477))) (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530)))))))

(assert (= (and d!1433935 res!1913307) b!4579737))

(declare-fun b_lambda!165977 () Bool)

(assert (=> (not b_lambda!165977) (not d!1433935)))

(declare-fun m!5389357 () Bool)

(assert (=> d!1433935 m!5389357))

(declare-fun m!5389359 () Bool)

(assert (=> d!1433935 m!5389359))

(declare-fun m!5389361 () Bool)

(assert (=> d!1433935 m!5389361))

(declare-fun m!5389363 () Bool)

(assert (=> b!4579737 m!5389363))

(assert (=> b!4579364 d!1433935))

(declare-fun d!1433937 () Bool)

(assert (=> d!1433937 (= (get!16809 lt!1744530) (v!45190 lt!1744530))))

(assert (=> b!4579364 d!1433937))

(declare-fun b!4579738 () Bool)

(declare-fun e!2855839 () List!51071)

(assert (=> b!4579738 (= e!2855839 (getKeysList!543 (toList!4548 lt!1744533)))))

(declare-fun b!4579739 () Bool)

(declare-fun e!2855838 () Unit!105431)

(declare-fun lt!1744950 () Unit!105431)

(assert (=> b!4579739 (= e!2855838 lt!1744950)))

(declare-fun lt!1744952 () Unit!105431)

(assert (=> b!4579739 (= lt!1744952 (lemmaContainsKeyImpliesGetValueByKeyDefined!1154 (toList!4548 lt!1744533) key!3287))))

(assert (=> b!4579739 (isDefined!8590 (getValueByKey!1250 (toList!4548 lt!1744533) key!3287))))

(declare-fun lt!1744946 () Unit!105431)

(assert (=> b!4579739 (= lt!1744946 lt!1744952)))

(assert (=> b!4579739 (= lt!1744950 (lemmaInListThenGetKeysListContains!539 (toList!4548 lt!1744533) key!3287))))

(declare-fun call!319676 () Bool)

(assert (=> b!4579739 call!319676))

(declare-fun b!4579740 () Bool)

(declare-fun e!2855841 () Unit!105431)

(declare-fun Unit!105484 () Unit!105431)

(assert (=> b!4579740 (= e!2855841 Unit!105484)))

(declare-fun b!4579741 () Bool)

(assert (=> b!4579741 (= e!2855838 e!2855841)))

(declare-fun c!783833 () Bool)

(assert (=> b!4579741 (= c!783833 call!319676)))

(declare-fun b!4579742 () Bool)

(assert (=> b!4579742 false))

(declare-fun lt!1744951 () Unit!105431)

(declare-fun lt!1744949 () Unit!105431)

(assert (=> b!4579742 (= lt!1744951 lt!1744949)))

(assert (=> b!4579742 (containsKey!2051 (toList!4548 lt!1744533) key!3287)))

(assert (=> b!4579742 (= lt!1744949 (lemmaInGetKeysListThenContainsKey!542 (toList!4548 lt!1744533) key!3287))))

(declare-fun Unit!105485 () Unit!105431)

(assert (=> b!4579742 (= e!2855841 Unit!105485)))

(declare-fun b!4579743 () Bool)

(declare-fun e!2855843 () Bool)

(declare-fun e!2855842 () Bool)

(assert (=> b!4579743 (= e!2855843 e!2855842)))

(declare-fun res!1913308 () Bool)

(assert (=> b!4579743 (=> (not res!1913308) (not e!2855842))))

(assert (=> b!4579743 (= res!1913308 (isDefined!8590 (getValueByKey!1250 (toList!4548 lt!1744533) key!3287)))))

(declare-fun bm!319671 () Bool)

(assert (=> bm!319671 (= call!319676 (contains!13839 e!2855839 key!3287))))

(declare-fun c!783831 () Bool)

(declare-fun c!783832 () Bool)

(assert (=> bm!319671 (= c!783831 c!783832)))

(declare-fun b!4579745 () Bool)

(assert (=> b!4579745 (= e!2855842 (contains!13839 (keys!17796 lt!1744533) key!3287))))

(declare-fun b!4579746 () Bool)

(declare-fun e!2855840 () Bool)

(assert (=> b!4579746 (= e!2855840 (not (contains!13839 (keys!17796 lt!1744533) key!3287)))))

(declare-fun d!1433939 () Bool)

(assert (=> d!1433939 e!2855843))

(declare-fun res!1913310 () Bool)

(assert (=> d!1433939 (=> res!1913310 e!2855843)))

(assert (=> d!1433939 (= res!1913310 e!2855840)))

(declare-fun res!1913309 () Bool)

(assert (=> d!1433939 (=> (not res!1913309) (not e!2855840))))

(declare-fun lt!1744947 () Bool)

(assert (=> d!1433939 (= res!1913309 (not lt!1744947))))

(declare-fun lt!1744948 () Bool)

(assert (=> d!1433939 (= lt!1744947 lt!1744948)))

(declare-fun lt!1744953 () Unit!105431)

(assert (=> d!1433939 (= lt!1744953 e!2855838)))

(assert (=> d!1433939 (= c!783832 lt!1744948)))

(assert (=> d!1433939 (= lt!1744948 (containsKey!2051 (toList!4548 lt!1744533) key!3287))))

(assert (=> d!1433939 (= (contains!13835 lt!1744533 key!3287) lt!1744947)))

(declare-fun b!4579744 () Bool)

(assert (=> b!4579744 (= e!2855839 (keys!17796 lt!1744533))))

(assert (= (and d!1433939 c!783832) b!4579739))

(assert (= (and d!1433939 (not c!783832)) b!4579741))

(assert (= (and b!4579741 c!783833) b!4579742))

(assert (= (and b!4579741 (not c!783833)) b!4579740))

(assert (= (or b!4579739 b!4579741) bm!319671))

(assert (= (and bm!319671 c!783831) b!4579738))

(assert (= (and bm!319671 (not c!783831)) b!4579744))

(assert (= (and d!1433939 res!1913309) b!4579746))

(assert (= (and d!1433939 (not res!1913310)) b!4579743))

(assert (= (and b!4579743 res!1913308) b!4579745))

(declare-fun m!5389365 () Bool)

(assert (=> b!4579743 m!5389365))

(assert (=> b!4579743 m!5389365))

(declare-fun m!5389367 () Bool)

(assert (=> b!4579743 m!5389367))

(declare-fun m!5389369 () Bool)

(assert (=> d!1433939 m!5389369))

(declare-fun m!5389371 () Bool)

(assert (=> bm!319671 m!5389371))

(assert (=> b!4579742 m!5389369))

(declare-fun m!5389373 () Bool)

(assert (=> b!4579742 m!5389373))

(declare-fun m!5389375 () Bool)

(assert (=> b!4579745 m!5389375))

(assert (=> b!4579745 m!5389375))

(declare-fun m!5389377 () Bool)

(assert (=> b!4579745 m!5389377))

(assert (=> b!4579746 m!5389375))

(assert (=> b!4579746 m!5389375))

(assert (=> b!4579746 m!5389377))

(assert (=> b!4579744 m!5389375))

(declare-fun m!5389379 () Bool)

(assert (=> b!4579738 m!5389379))

(declare-fun m!5389381 () Bool)

(assert (=> b!4579739 m!5389381))

(assert (=> b!4579739 m!5389365))

(assert (=> b!4579739 m!5389365))

(assert (=> b!4579739 m!5389367))

(declare-fun m!5389383 () Bool)

(assert (=> b!4579739 m!5389383))

(assert (=> b!4579339 d!1433939))

(declare-fun bs!971723 () Bool)

(declare-fun d!1433941 () Bool)

(assert (= bs!971723 (and d!1433941 b!4579364)))

(declare-fun lambda!182998 () Int)

(assert (=> bs!971723 (not (= lambda!182998 lambda!182878))))

(declare-fun bs!971724 () Bool)

(assert (= bs!971724 (and d!1433941 d!1433913)))

(assert (=> bs!971724 (= lambda!182998 lambda!182997)))

(declare-fun bs!971725 () Bool)

(assert (= bs!971725 (and d!1433941 start!455896)))

(assert (=> bs!971725 (= lambda!182998 lambda!182877)))

(declare-fun bs!971726 () Bool)

(assert (= bs!971726 (and d!1433941 d!1433755)))

(assert (=> bs!971726 (= lambda!182998 lambda!182885)))

(declare-fun bs!971727 () Bool)

(assert (= bs!971727 (and d!1433941 d!1433773)))

(assert (=> bs!971727 (= lambda!182998 lambda!182897)))

(declare-fun bs!971728 () Bool)

(assert (= bs!971728 (and d!1433941 d!1433767)))

(assert (=> bs!971728 (= lambda!182998 lambda!182888)))

(declare-fun bs!971729 () Bool)

(assert (= bs!971729 (and d!1433941 d!1433791)))

(assert (=> bs!971729 (= lambda!182998 lambda!182927)))

(declare-fun bs!971730 () Bool)

(assert (= bs!971730 (and d!1433941 d!1433881)))

(assert (=> bs!971730 (= lambda!182998 lambda!182981)))

(declare-fun lt!1744954 () ListMap!3809)

(assert (=> d!1433941 (invariantList!1095 (toList!4548 lt!1744954))))

(declare-fun e!2855844 () ListMap!3809)

(assert (=> d!1433941 (= lt!1744954 e!2855844)))

(declare-fun c!783834 () Bool)

(assert (=> d!1433941 (= c!783834 ((_ is Cons!50945) (toList!4547 lm!1477)))))

(assert (=> d!1433941 (forall!10496 (toList!4547 lm!1477) lambda!182998)))

(assert (=> d!1433941 (= (extractMap!1326 (toList!4547 lm!1477)) lt!1744954)))

(declare-fun b!4579747 () Bool)

(assert (=> b!4579747 (= e!2855844 (addToMapMapFromBucket!783 (_2!29052 (h!56878 (toList!4547 lm!1477))) (extractMap!1326 (t!358059 (toList!4547 lm!1477)))))))

(declare-fun b!4579748 () Bool)

(assert (=> b!4579748 (= e!2855844 (ListMap!3810 Nil!50944))))

(assert (= (and d!1433941 c!783834) b!4579747))

(assert (= (and d!1433941 (not c!783834)) b!4579748))

(declare-fun m!5389385 () Bool)

(assert (=> d!1433941 m!5389385))

(declare-fun m!5389387 () Bool)

(assert (=> d!1433941 m!5389387))

(assert (=> b!4579747 m!5388587))

(assert (=> b!4579747 m!5388587))

(declare-fun m!5389389 () Bool)

(assert (=> b!4579747 m!5389389))

(assert (=> b!4579339 d!1433941))

(declare-fun d!1433943 () Bool)

(assert (=> d!1433943 (= (eq!709 lt!1744531 lt!1744552) (= (content!8579 (toList!4548 lt!1744531)) (content!8579 (toList!4548 lt!1744552))))))

(declare-fun bs!971731 () Bool)

(assert (= bs!971731 d!1433943))

(assert (=> bs!971731 m!5388879))

(declare-fun m!5389391 () Bool)

(assert (=> bs!971731 m!5389391))

(assert (=> b!4579360 d!1433943))

(declare-fun d!1433945 () Bool)

(assert (=> d!1433945 (= (eq!709 lt!1744543 lt!1744552) (= (content!8579 (toList!4548 lt!1744543)) (content!8579 (toList!4548 lt!1744552))))))

(declare-fun bs!971732 () Bool)

(assert (= bs!971732 d!1433945))

(assert (=> bs!971732 m!5388881))

(assert (=> bs!971732 m!5389391))

(assert (=> b!4579360 d!1433945))

(declare-fun bs!971733 () Bool)

(declare-fun b!4579749 () Bool)

(assert (= bs!971733 (and b!4579749 b!4579364)))

(declare-fun lambda!182999 () Int)

(assert (=> bs!971733 (not (= lambda!182999 lambda!182879))))

(declare-fun bs!971734 () Bool)

(assert (= bs!971734 (and b!4579749 b!4579630)))

(assert (=> bs!971734 (= (= lt!1744553 lt!1744544) (= lambda!182999 lambda!182976))))

(declare-fun bs!971735 () Bool)

(assert (= bs!971735 (and b!4579749 d!1433883)))

(assert (=> bs!971735 (not (= lambda!182999 lambda!182987))))

(declare-fun bs!971736 () Bool)

(assert (= bs!971736 (and b!4579749 b!4579631)))

(assert (=> bs!971736 (= (= lt!1744553 lt!1744544) (= lambda!182999 lambda!182977))))

(declare-fun bs!971737 () Bool)

(assert (= bs!971737 (and b!4579749 d!1433799)))

(assert (=> bs!971737 (= (= lt!1744553 lt!1744861) (= lambda!182999 lambda!182979))))

(assert (=> bs!971736 (= (= lt!1744553 lt!1744860) (= lambda!182999 lambda!182978))))

(assert (=> b!4579749 true))

(declare-fun bs!971738 () Bool)

(declare-fun b!4579750 () Bool)

(assert (= bs!971738 (and b!4579750 b!4579364)))

(declare-fun lambda!183000 () Int)

(assert (=> bs!971738 (not (= lambda!183000 lambda!182879))))

(declare-fun bs!971739 () Bool)

(assert (= bs!971739 (and b!4579750 b!4579630)))

(assert (=> bs!971739 (= (= lt!1744553 lt!1744544) (= lambda!183000 lambda!182976))))

(declare-fun bs!971740 () Bool)

(assert (= bs!971740 (and b!4579750 d!1433883)))

(assert (=> bs!971740 (not (= lambda!183000 lambda!182987))))

(declare-fun bs!971741 () Bool)

(assert (= bs!971741 (and b!4579750 b!4579631)))

(assert (=> bs!971741 (= (= lt!1744553 lt!1744544) (= lambda!183000 lambda!182977))))

(declare-fun bs!971742 () Bool)

(assert (= bs!971742 (and b!4579750 d!1433799)))

(assert (=> bs!971742 (= (= lt!1744553 lt!1744861) (= lambda!183000 lambda!182979))))

(declare-fun bs!971743 () Bool)

(assert (= bs!971743 (and b!4579750 b!4579749)))

(assert (=> bs!971743 (= lambda!183000 lambda!182999)))

(assert (=> bs!971741 (= (= lt!1744553 lt!1744860) (= lambda!183000 lambda!182978))))

(assert (=> b!4579750 true))

(declare-fun lambda!183001 () Int)

(declare-fun lt!1744970 () ListMap!3809)

(assert (=> b!4579750 (= (= lt!1744970 lt!1744553) (= lambda!183001 lambda!183000))))

(assert (=> bs!971738 (not (= lambda!183001 lambda!182879))))

(assert (=> bs!971739 (= (= lt!1744970 lt!1744544) (= lambda!183001 lambda!182976))))

(assert (=> bs!971740 (not (= lambda!183001 lambda!182987))))

(assert (=> bs!971741 (= (= lt!1744970 lt!1744544) (= lambda!183001 lambda!182977))))

(assert (=> bs!971742 (= (= lt!1744970 lt!1744861) (= lambda!183001 lambda!182979))))

(assert (=> bs!971743 (= (= lt!1744970 lt!1744553) (= lambda!183001 lambda!182999))))

(assert (=> bs!971741 (= (= lt!1744970 lt!1744860) (= lambda!183001 lambda!182978))))

(assert (=> b!4579750 true))

(declare-fun bs!971744 () Bool)

(declare-fun d!1433947 () Bool)

(assert (= bs!971744 (and d!1433947 b!4579750)))

(declare-fun lambda!183002 () Int)

(declare-fun lt!1744971 () ListMap!3809)

(assert (=> bs!971744 (= (= lt!1744971 lt!1744553) (= lambda!183002 lambda!183000))))

(declare-fun bs!971745 () Bool)

(assert (= bs!971745 (and d!1433947 b!4579364)))

(assert (=> bs!971745 (not (= lambda!183002 lambda!182879))))

(declare-fun bs!971746 () Bool)

(assert (= bs!971746 (and d!1433947 d!1433883)))

(assert (=> bs!971746 (not (= lambda!183002 lambda!182987))))

(declare-fun bs!971747 () Bool)

(assert (= bs!971747 (and d!1433947 b!4579631)))

(assert (=> bs!971747 (= (= lt!1744971 lt!1744544) (= lambda!183002 lambda!182977))))

(declare-fun bs!971748 () Bool)

(assert (= bs!971748 (and d!1433947 d!1433799)))

(assert (=> bs!971748 (= (= lt!1744971 lt!1744861) (= lambda!183002 lambda!182979))))

(declare-fun bs!971749 () Bool)

(assert (= bs!971749 (and d!1433947 b!4579749)))

(assert (=> bs!971749 (= (= lt!1744971 lt!1744553) (= lambda!183002 lambda!182999))))

(assert (=> bs!971747 (= (= lt!1744971 lt!1744860) (= lambda!183002 lambda!182978))))

(assert (=> bs!971744 (= (= lt!1744971 lt!1744970) (= lambda!183002 lambda!183001))))

(declare-fun bs!971750 () Bool)

(assert (= bs!971750 (and d!1433947 b!4579630)))

(assert (=> bs!971750 (= (= lt!1744971 lt!1744544) (= lambda!183002 lambda!182976))))

(assert (=> d!1433947 true))

(declare-fun e!2855845 () ListMap!3809)

(assert (=> b!4579749 (= e!2855845 lt!1744553)))

(declare-fun lt!1744964 () Unit!105431)

(declare-fun call!319679 () Unit!105431)

(assert (=> b!4579749 (= lt!1744964 call!319679)))

(declare-fun call!319677 () Bool)

(assert (=> b!4579749 call!319677))

(declare-fun lt!1744968 () Unit!105431)

(assert (=> b!4579749 (= lt!1744968 lt!1744964)))

(declare-fun call!319678 () Bool)

(assert (=> b!4579749 call!319678))

(declare-fun lt!1744959 () Unit!105431)

(declare-fun Unit!105486 () Unit!105431)

(assert (=> b!4579749 (= lt!1744959 Unit!105486)))

(assert (=> b!4579750 (= e!2855845 lt!1744970)))

(declare-fun lt!1744963 () ListMap!3809)

(assert (=> b!4579750 (= lt!1744963 (+!1706 lt!1744553 (h!56877 (_2!29052 lt!1744536))))))

(assert (=> b!4579750 (= lt!1744970 (addToMapMapFromBucket!783 (t!358058 (_2!29052 lt!1744536)) (+!1706 lt!1744553 (h!56877 (_2!29052 lt!1744536)))))))

(declare-fun lt!1744974 () Unit!105431)

(assert (=> b!4579750 (= lt!1744974 call!319679)))

(assert (=> b!4579750 (forall!10498 (toList!4548 lt!1744553) lambda!183000)))

(declare-fun lt!1744972 () Unit!105431)

(assert (=> b!4579750 (= lt!1744972 lt!1744974)))

(assert (=> b!4579750 (forall!10498 (toList!4548 lt!1744963) lambda!183001)))

(declare-fun lt!1744973 () Unit!105431)

(declare-fun Unit!105487 () Unit!105431)

(assert (=> b!4579750 (= lt!1744973 Unit!105487)))

(assert (=> b!4579750 (forall!10498 (t!358058 (_2!29052 lt!1744536)) lambda!183001)))

(declare-fun lt!1744956 () Unit!105431)

(declare-fun Unit!105488 () Unit!105431)

(assert (=> b!4579750 (= lt!1744956 Unit!105488)))

(declare-fun lt!1744955 () Unit!105431)

(declare-fun Unit!105489 () Unit!105431)

(assert (=> b!4579750 (= lt!1744955 Unit!105489)))

(declare-fun lt!1744962 () Unit!105431)

(assert (=> b!4579750 (= lt!1744962 (forallContained!2761 (toList!4548 lt!1744963) lambda!183001 (h!56877 (_2!29052 lt!1744536))))))

(assert (=> b!4579750 (contains!13835 lt!1744963 (_1!29051 (h!56877 (_2!29052 lt!1744536))))))

(declare-fun lt!1744960 () Unit!105431)

(declare-fun Unit!105490 () Unit!105431)

(assert (=> b!4579750 (= lt!1744960 Unit!105490)))

(assert (=> b!4579750 (contains!13835 lt!1744970 (_1!29051 (h!56877 (_2!29052 lt!1744536))))))

(declare-fun lt!1744967 () Unit!105431)

(declare-fun Unit!105491 () Unit!105431)

(assert (=> b!4579750 (= lt!1744967 Unit!105491)))

(assert (=> b!4579750 (forall!10498 (_2!29052 lt!1744536) lambda!183001)))

(declare-fun lt!1744957 () Unit!105431)

(declare-fun Unit!105492 () Unit!105431)

(assert (=> b!4579750 (= lt!1744957 Unit!105492)))

(assert (=> b!4579750 call!319677))

(declare-fun lt!1744961 () Unit!105431)

(declare-fun Unit!105493 () Unit!105431)

(assert (=> b!4579750 (= lt!1744961 Unit!105493)))

(declare-fun lt!1744958 () Unit!105431)

(declare-fun Unit!105494 () Unit!105431)

(assert (=> b!4579750 (= lt!1744958 Unit!105494)))

(declare-fun lt!1744975 () Unit!105431)

(assert (=> b!4579750 (= lt!1744975 (addForallContainsKeyThenBeforeAdding!412 lt!1744553 lt!1744970 (_1!29051 (h!56877 (_2!29052 lt!1744536))) (_2!29051 (h!56877 (_2!29052 lt!1744536)))))))

(assert (=> b!4579750 call!319678))

(declare-fun lt!1744969 () Unit!105431)

(assert (=> b!4579750 (= lt!1744969 lt!1744975)))

(assert (=> b!4579750 (forall!10498 (toList!4548 lt!1744553) lambda!183001)))

(declare-fun lt!1744966 () Unit!105431)

(declare-fun Unit!105495 () Unit!105431)

(assert (=> b!4579750 (= lt!1744966 Unit!105495)))

(declare-fun res!1913311 () Bool)

(assert (=> b!4579750 (= res!1913311 (forall!10498 (_2!29052 lt!1744536) lambda!183001))))

(declare-fun e!2855847 () Bool)

(assert (=> b!4579750 (=> (not res!1913311) (not e!2855847))))

(assert (=> b!4579750 e!2855847))

(declare-fun lt!1744965 () Unit!105431)

(declare-fun Unit!105496 () Unit!105431)

(assert (=> b!4579750 (= lt!1744965 Unit!105496)))

(declare-fun b!4579751 () Bool)

(assert (=> b!4579751 (= e!2855847 (forall!10498 (toList!4548 lt!1744553) lambda!183001))))

(declare-fun bm!319672 () Bool)

(declare-fun c!783835 () Bool)

(assert (=> bm!319672 (= call!319678 (forall!10498 (toList!4548 lt!1744553) (ite c!783835 lambda!182999 lambda!183001)))))

(declare-fun bm!319673 () Bool)

(assert (=> bm!319673 (= call!319677 (forall!10498 (ite c!783835 (toList!4548 lt!1744553) (toList!4548 lt!1744963)) (ite c!783835 lambda!182999 lambda!183001)))))

(declare-fun b!4579752 () Bool)

(declare-fun e!2855846 () Bool)

(assert (=> b!4579752 (= e!2855846 (invariantList!1095 (toList!4548 lt!1744971)))))

(assert (=> d!1433947 e!2855846))

(declare-fun res!1913312 () Bool)

(assert (=> d!1433947 (=> (not res!1913312) (not e!2855846))))

(assert (=> d!1433947 (= res!1913312 (forall!10498 (_2!29052 lt!1744536) lambda!183002))))

(assert (=> d!1433947 (= lt!1744971 e!2855845)))

(assert (=> d!1433947 (= c!783835 ((_ is Nil!50944) (_2!29052 lt!1744536)))))

(assert (=> d!1433947 (noDuplicateKeys!1270 (_2!29052 lt!1744536))))

(assert (=> d!1433947 (= (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744553) lt!1744971)))

(declare-fun b!4579753 () Bool)

(declare-fun res!1913313 () Bool)

(assert (=> b!4579753 (=> (not res!1913313) (not e!2855846))))

(assert (=> b!4579753 (= res!1913313 (forall!10498 (toList!4548 lt!1744553) lambda!183002))))

(declare-fun bm!319674 () Bool)

(assert (=> bm!319674 (= call!319679 (lemmaContainsAllItsOwnKeys!412 lt!1744553))))

(assert (= (and d!1433947 c!783835) b!4579749))

(assert (= (and d!1433947 (not c!783835)) b!4579750))

(assert (= (and b!4579750 res!1913311) b!4579751))

(assert (= (or b!4579749 b!4579750) bm!319673))

(assert (= (or b!4579749 b!4579750) bm!319672))

(assert (= (or b!4579749 b!4579750) bm!319674))

(assert (= (and d!1433947 res!1913312) b!4579753))

(assert (= (and b!4579753 res!1913313) b!4579752))

(declare-fun m!5389393 () Bool)

(assert (=> bm!319672 m!5389393))

(declare-fun m!5389395 () Bool)

(assert (=> b!4579750 m!5389395))

(declare-fun m!5389397 () Bool)

(assert (=> b!4579750 m!5389397))

(assert (=> b!4579750 m!5389397))

(declare-fun m!5389399 () Bool)

(assert (=> b!4579750 m!5389399))

(declare-fun m!5389401 () Bool)

(assert (=> b!4579750 m!5389401))

(declare-fun m!5389403 () Bool)

(assert (=> b!4579750 m!5389403))

(declare-fun m!5389405 () Bool)

(assert (=> b!4579750 m!5389405))

(declare-fun m!5389407 () Bool)

(assert (=> b!4579750 m!5389407))

(declare-fun m!5389409 () Bool)

(assert (=> b!4579750 m!5389409))

(declare-fun m!5389411 () Bool)

(assert (=> b!4579750 m!5389411))

(declare-fun m!5389413 () Bool)

(assert (=> b!4579750 m!5389413))

(assert (=> b!4579750 m!5389407))

(declare-fun m!5389415 () Bool)

(assert (=> b!4579750 m!5389415))

(declare-fun m!5389417 () Bool)

(assert (=> b!4579753 m!5389417))

(declare-fun m!5389419 () Bool)

(assert (=> d!1433947 m!5389419))

(assert (=> d!1433947 m!5388679))

(declare-fun m!5389421 () Bool)

(assert (=> bm!319673 m!5389421))

(declare-fun m!5389423 () Bool)

(assert (=> b!4579752 m!5389423))

(declare-fun m!5389425 () Bool)

(assert (=> bm!319674 m!5389425))

(assert (=> b!4579751 m!5389395))

(assert (=> b!4579360 d!1433947))

(declare-fun d!1433949 () Bool)

(assert (=> d!1433949 (eq!709 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744544) (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744553))))

(declare-fun lt!1744978 () Unit!105431)

(declare-fun choose!30506 (ListMap!3809 ListMap!3809 List!51068) Unit!105431)

(assert (=> d!1433949 (= lt!1744978 (choose!30506 lt!1744544 lt!1744553 (_2!29052 lt!1744536)))))

(assert (=> d!1433949 (noDuplicateKeys!1270 (_2!29052 lt!1744536))))

(assert (=> d!1433949 (= (lemmaAddToMapFromBucketPreservesEquivalence!94 lt!1744544 lt!1744553 (_2!29052 lt!1744536)) lt!1744978)))

(declare-fun bs!971751 () Bool)

(assert (= bs!971751 d!1433949))

(assert (=> bs!971751 m!5388609))

(declare-fun m!5389427 () Bool)

(assert (=> bs!971751 m!5389427))

(assert (=> bs!971751 m!5388601))

(assert (=> bs!971751 m!5388609))

(declare-fun m!5389429 () Bool)

(assert (=> bs!971751 m!5389429))

(assert (=> bs!971751 m!5388679))

(assert (=> bs!971751 m!5388601))

(assert (=> b!4579360 d!1433949))

(declare-fun d!1433951 () Bool)

(assert (=> d!1433951 (= (eq!709 lt!1744552 lt!1744549) (= (content!8579 (toList!4548 lt!1744552)) (content!8579 (toList!4548 lt!1744549))))))

(declare-fun bs!971752 () Bool)

(assert (= bs!971752 d!1433951))

(assert (=> bs!971752 m!5389391))

(declare-fun m!5389431 () Bool)

(assert (=> bs!971752 m!5389431))

(assert (=> b!4579361 d!1433951))

(declare-fun d!1433953 () Bool)

(declare-fun e!2855850 () Bool)

(assert (=> d!1433953 e!2855850))

(declare-fun res!1913316 () Bool)

(assert (=> d!1433953 (=> (not res!1913316) (not e!2855850))))

(declare-fun lt!1744981 () ListMap!3809)

(assert (=> d!1433953 (= res!1913316 (not (contains!13835 lt!1744981 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!209 (List!51068 K!12315) List!51068)

(assert (=> d!1433953 (= lt!1744981 (ListMap!3810 (removePresrvNoDuplicatedKeys!209 (toList!4548 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744558)) key!3287)))))

(assert (=> d!1433953 (= (-!478 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744558) key!3287) lt!1744981)))

(declare-fun b!4579756 () Bool)

(declare-fun content!8582 (List!51071) (InoxSet K!12315))

(assert (=> b!4579756 (= e!2855850 (= ((_ map and) (content!8582 (keys!17796 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744558))) ((_ map not) (store ((as const (Array K!12315 Bool)) false) key!3287 true))) (content!8582 (keys!17796 lt!1744981))))))

(assert (= (and d!1433953 res!1913316) b!4579756))

(declare-fun m!5389433 () Bool)

(assert (=> d!1433953 m!5389433))

(declare-fun m!5389435 () Bool)

(assert (=> d!1433953 m!5389435))

(assert (=> b!4579756 m!5388653))

(declare-fun m!5389437 () Bool)

(assert (=> b!4579756 m!5389437))

(declare-fun m!5389439 () Bool)

(assert (=> b!4579756 m!5389439))

(declare-fun m!5389441 () Bool)

(assert (=> b!4579756 m!5389441))

(assert (=> b!4579756 m!5389441))

(declare-fun m!5389443 () Bool)

(assert (=> b!4579756 m!5389443))

(assert (=> b!4579756 m!5389437))

(declare-fun m!5389445 () Bool)

(assert (=> b!4579756 m!5389445))

(assert (=> b!4579361 d!1433953))

(declare-fun bs!971753 () Bool)

(declare-fun b!4579757 () Bool)

(assert (= bs!971753 (and b!4579757 b!4579750)))

(declare-fun lambda!183003 () Int)

(assert (=> bs!971753 (= (= lt!1744558 lt!1744553) (= lambda!183003 lambda!183000))))

(declare-fun bs!971754 () Bool)

(assert (= bs!971754 (and b!4579757 b!4579364)))

(assert (=> bs!971754 (not (= lambda!183003 lambda!182879))))

(declare-fun bs!971755 () Bool)

(assert (= bs!971755 (and b!4579757 d!1433883)))

(assert (=> bs!971755 (not (= lambda!183003 lambda!182987))))

(declare-fun bs!971756 () Bool)

(assert (= bs!971756 (and b!4579757 b!4579631)))

(assert (=> bs!971756 (= (= lt!1744558 lt!1744544) (= lambda!183003 lambda!182977))))

(declare-fun bs!971757 () Bool)

(assert (= bs!971757 (and b!4579757 d!1433799)))

(assert (=> bs!971757 (= (= lt!1744558 lt!1744861) (= lambda!183003 lambda!182979))))

(declare-fun bs!971758 () Bool)

(assert (= bs!971758 (and b!4579757 d!1433947)))

(assert (=> bs!971758 (= (= lt!1744558 lt!1744971) (= lambda!183003 lambda!183002))))

(declare-fun bs!971759 () Bool)

(assert (= bs!971759 (and b!4579757 b!4579749)))

(assert (=> bs!971759 (= (= lt!1744558 lt!1744553) (= lambda!183003 lambda!182999))))

(assert (=> bs!971756 (= (= lt!1744558 lt!1744860) (= lambda!183003 lambda!182978))))

(assert (=> bs!971753 (= (= lt!1744558 lt!1744970) (= lambda!183003 lambda!183001))))

(declare-fun bs!971760 () Bool)

(assert (= bs!971760 (and b!4579757 b!4579630)))

(assert (=> bs!971760 (= (= lt!1744558 lt!1744544) (= lambda!183003 lambda!182976))))

(assert (=> b!4579757 true))

(declare-fun bs!971761 () Bool)

(declare-fun b!4579758 () Bool)

(assert (= bs!971761 (and b!4579758 b!4579750)))

(declare-fun lambda!183004 () Int)

(assert (=> bs!971761 (= (= lt!1744558 lt!1744553) (= lambda!183004 lambda!183000))))

(declare-fun bs!971762 () Bool)

(assert (= bs!971762 (and b!4579758 b!4579364)))

(assert (=> bs!971762 (not (= lambda!183004 lambda!182879))))

(declare-fun bs!971763 () Bool)

(assert (= bs!971763 (and b!4579758 d!1433883)))

(assert (=> bs!971763 (not (= lambda!183004 lambda!182987))))

(declare-fun bs!971764 () Bool)

(assert (= bs!971764 (and b!4579758 b!4579631)))

(assert (=> bs!971764 (= (= lt!1744558 lt!1744544) (= lambda!183004 lambda!182977))))

(declare-fun bs!971765 () Bool)

(assert (= bs!971765 (and b!4579758 d!1433799)))

(assert (=> bs!971765 (= (= lt!1744558 lt!1744861) (= lambda!183004 lambda!182979))))

(declare-fun bs!971766 () Bool)

(assert (= bs!971766 (and b!4579758 d!1433947)))

(assert (=> bs!971766 (= (= lt!1744558 lt!1744971) (= lambda!183004 lambda!183002))))

(declare-fun bs!971767 () Bool)

(assert (= bs!971767 (and b!4579758 b!4579749)))

(assert (=> bs!971767 (= (= lt!1744558 lt!1744553) (= lambda!183004 lambda!182999))))

(assert (=> bs!971764 (= (= lt!1744558 lt!1744860) (= lambda!183004 lambda!182978))))

(declare-fun bs!971768 () Bool)

(assert (= bs!971768 (and b!4579758 b!4579757)))

(assert (=> bs!971768 (= lambda!183004 lambda!183003)))

(assert (=> bs!971761 (= (= lt!1744558 lt!1744970) (= lambda!183004 lambda!183001))))

(declare-fun bs!971769 () Bool)

(assert (= bs!971769 (and b!4579758 b!4579630)))

(assert (=> bs!971769 (= (= lt!1744558 lt!1744544) (= lambda!183004 lambda!182976))))

(assert (=> b!4579758 true))

(declare-fun lt!1744997 () ListMap!3809)

(declare-fun lambda!183005 () Int)

(assert (=> bs!971761 (= (= lt!1744997 lt!1744553) (= lambda!183005 lambda!183000))))

(assert (=> bs!971762 (not (= lambda!183005 lambda!182879))))

(assert (=> bs!971763 (not (= lambda!183005 lambda!182987))))

(assert (=> bs!971764 (= (= lt!1744997 lt!1744544) (= lambda!183005 lambda!182977))))

(assert (=> bs!971765 (= (= lt!1744997 lt!1744861) (= lambda!183005 lambda!182979))))

(assert (=> bs!971766 (= (= lt!1744997 lt!1744971) (= lambda!183005 lambda!183002))))

(assert (=> bs!971767 (= (= lt!1744997 lt!1744553) (= lambda!183005 lambda!182999))))

(assert (=> b!4579758 (= (= lt!1744997 lt!1744558) (= lambda!183005 lambda!183004))))

(assert (=> bs!971764 (= (= lt!1744997 lt!1744860) (= lambda!183005 lambda!182978))))

(assert (=> bs!971768 (= (= lt!1744997 lt!1744558) (= lambda!183005 lambda!183003))))

(assert (=> bs!971761 (= (= lt!1744997 lt!1744970) (= lambda!183005 lambda!183001))))

(assert (=> bs!971769 (= (= lt!1744997 lt!1744544) (= lambda!183005 lambda!182976))))

(assert (=> b!4579758 true))

(declare-fun bs!971770 () Bool)

(declare-fun d!1433955 () Bool)

(assert (= bs!971770 (and d!1433955 b!4579750)))

(declare-fun lt!1744998 () ListMap!3809)

(declare-fun lambda!183006 () Int)

(assert (=> bs!971770 (= (= lt!1744998 lt!1744553) (= lambda!183006 lambda!183000))))

(declare-fun bs!971771 () Bool)

(assert (= bs!971771 (and d!1433955 b!4579364)))

(assert (=> bs!971771 (not (= lambda!183006 lambda!182879))))

(declare-fun bs!971772 () Bool)

(assert (= bs!971772 (and d!1433955 d!1433883)))

(assert (=> bs!971772 (not (= lambda!183006 lambda!182987))))

(declare-fun bs!971773 () Bool)

(assert (= bs!971773 (and d!1433955 b!4579631)))

(assert (=> bs!971773 (= (= lt!1744998 lt!1744544) (= lambda!183006 lambda!182977))))

(declare-fun bs!971774 () Bool)

(assert (= bs!971774 (and d!1433955 d!1433799)))

(assert (=> bs!971774 (= (= lt!1744998 lt!1744861) (= lambda!183006 lambda!182979))))

(declare-fun bs!971775 () Bool)

(assert (= bs!971775 (and d!1433955 d!1433947)))

(assert (=> bs!971775 (= (= lt!1744998 lt!1744971) (= lambda!183006 lambda!183002))))

(declare-fun bs!971776 () Bool)

(assert (= bs!971776 (and d!1433955 b!4579749)))

(assert (=> bs!971776 (= (= lt!1744998 lt!1744553) (= lambda!183006 lambda!182999))))

(declare-fun bs!971777 () Bool)

(assert (= bs!971777 (and d!1433955 b!4579758)))

(assert (=> bs!971777 (= (= lt!1744998 lt!1744558) (= lambda!183006 lambda!183004))))

(assert (=> bs!971773 (= (= lt!1744998 lt!1744860) (= lambda!183006 lambda!182978))))

(declare-fun bs!971778 () Bool)

(assert (= bs!971778 (and d!1433955 b!4579757)))

(assert (=> bs!971778 (= (= lt!1744998 lt!1744558) (= lambda!183006 lambda!183003))))

(assert (=> bs!971770 (= (= lt!1744998 lt!1744970) (= lambda!183006 lambda!183001))))

(declare-fun bs!971779 () Bool)

(assert (= bs!971779 (and d!1433955 b!4579630)))

(assert (=> bs!971779 (= (= lt!1744998 lt!1744544) (= lambda!183006 lambda!182976))))

(assert (=> bs!971777 (= (= lt!1744998 lt!1744997) (= lambda!183006 lambda!183005))))

(assert (=> d!1433955 true))

(declare-fun e!2855851 () ListMap!3809)

(assert (=> b!4579757 (= e!2855851 lt!1744558)))

(declare-fun lt!1744991 () Unit!105431)

(declare-fun call!319682 () Unit!105431)

(assert (=> b!4579757 (= lt!1744991 call!319682)))

(declare-fun call!319680 () Bool)

(assert (=> b!4579757 call!319680))

(declare-fun lt!1744995 () Unit!105431)

(assert (=> b!4579757 (= lt!1744995 lt!1744991)))

(declare-fun call!319681 () Bool)

(assert (=> b!4579757 call!319681))

(declare-fun lt!1744986 () Unit!105431)

(declare-fun Unit!105497 () Unit!105431)

(assert (=> b!4579757 (= lt!1744986 Unit!105497)))

(assert (=> b!4579758 (= e!2855851 lt!1744997)))

(declare-fun lt!1744990 () ListMap!3809)

(assert (=> b!4579758 (= lt!1744990 (+!1706 lt!1744558 (h!56877 (_2!29052 lt!1744536))))))

(assert (=> b!4579758 (= lt!1744997 (addToMapMapFromBucket!783 (t!358058 (_2!29052 lt!1744536)) (+!1706 lt!1744558 (h!56877 (_2!29052 lt!1744536)))))))

(declare-fun lt!1745001 () Unit!105431)

(assert (=> b!4579758 (= lt!1745001 call!319682)))

(assert (=> b!4579758 (forall!10498 (toList!4548 lt!1744558) lambda!183004)))

(declare-fun lt!1744999 () Unit!105431)

(assert (=> b!4579758 (= lt!1744999 lt!1745001)))

(assert (=> b!4579758 (forall!10498 (toList!4548 lt!1744990) lambda!183005)))

(declare-fun lt!1745000 () Unit!105431)

(declare-fun Unit!105498 () Unit!105431)

(assert (=> b!4579758 (= lt!1745000 Unit!105498)))

(assert (=> b!4579758 (forall!10498 (t!358058 (_2!29052 lt!1744536)) lambda!183005)))

(declare-fun lt!1744983 () Unit!105431)

(declare-fun Unit!105499 () Unit!105431)

(assert (=> b!4579758 (= lt!1744983 Unit!105499)))

(declare-fun lt!1744982 () Unit!105431)

(declare-fun Unit!105500 () Unit!105431)

(assert (=> b!4579758 (= lt!1744982 Unit!105500)))

(declare-fun lt!1744989 () Unit!105431)

(assert (=> b!4579758 (= lt!1744989 (forallContained!2761 (toList!4548 lt!1744990) lambda!183005 (h!56877 (_2!29052 lt!1744536))))))

(assert (=> b!4579758 (contains!13835 lt!1744990 (_1!29051 (h!56877 (_2!29052 lt!1744536))))))

(declare-fun lt!1744987 () Unit!105431)

(declare-fun Unit!105501 () Unit!105431)

(assert (=> b!4579758 (= lt!1744987 Unit!105501)))

(assert (=> b!4579758 (contains!13835 lt!1744997 (_1!29051 (h!56877 (_2!29052 lt!1744536))))))

(declare-fun lt!1744994 () Unit!105431)

(declare-fun Unit!105502 () Unit!105431)

(assert (=> b!4579758 (= lt!1744994 Unit!105502)))

(assert (=> b!4579758 (forall!10498 (_2!29052 lt!1744536) lambda!183005)))

(declare-fun lt!1744984 () Unit!105431)

(declare-fun Unit!105503 () Unit!105431)

(assert (=> b!4579758 (= lt!1744984 Unit!105503)))

(assert (=> b!4579758 call!319680))

(declare-fun lt!1744988 () Unit!105431)

(declare-fun Unit!105504 () Unit!105431)

(assert (=> b!4579758 (= lt!1744988 Unit!105504)))

(declare-fun lt!1744985 () Unit!105431)

(declare-fun Unit!105505 () Unit!105431)

(assert (=> b!4579758 (= lt!1744985 Unit!105505)))

(declare-fun lt!1745002 () Unit!105431)

(assert (=> b!4579758 (= lt!1745002 (addForallContainsKeyThenBeforeAdding!412 lt!1744558 lt!1744997 (_1!29051 (h!56877 (_2!29052 lt!1744536))) (_2!29051 (h!56877 (_2!29052 lt!1744536)))))))

(assert (=> b!4579758 call!319681))

(declare-fun lt!1744996 () Unit!105431)

(assert (=> b!4579758 (= lt!1744996 lt!1745002)))

(assert (=> b!4579758 (forall!10498 (toList!4548 lt!1744558) lambda!183005)))

(declare-fun lt!1744993 () Unit!105431)

(declare-fun Unit!105507 () Unit!105431)

(assert (=> b!4579758 (= lt!1744993 Unit!105507)))

(declare-fun res!1913317 () Bool)

(assert (=> b!4579758 (= res!1913317 (forall!10498 (_2!29052 lt!1744536) lambda!183005))))

(declare-fun e!2855853 () Bool)

(assert (=> b!4579758 (=> (not res!1913317) (not e!2855853))))

(assert (=> b!4579758 e!2855853))

(declare-fun lt!1744992 () Unit!105431)

(declare-fun Unit!105510 () Unit!105431)

(assert (=> b!4579758 (= lt!1744992 Unit!105510)))

(declare-fun b!4579759 () Bool)

(assert (=> b!4579759 (= e!2855853 (forall!10498 (toList!4548 lt!1744558) lambda!183005))))

(declare-fun bm!319675 () Bool)

(declare-fun c!783836 () Bool)

(assert (=> bm!319675 (= call!319681 (forall!10498 (toList!4548 lt!1744558) (ite c!783836 lambda!183003 lambda!183005)))))

(declare-fun bm!319676 () Bool)

(assert (=> bm!319676 (= call!319680 (forall!10498 (ite c!783836 (toList!4548 lt!1744558) (toList!4548 lt!1744990)) (ite c!783836 lambda!183003 lambda!183005)))))

(declare-fun b!4579760 () Bool)

(declare-fun e!2855852 () Bool)

(assert (=> b!4579760 (= e!2855852 (invariantList!1095 (toList!4548 lt!1744998)))))

(assert (=> d!1433955 e!2855852))

(declare-fun res!1913318 () Bool)

(assert (=> d!1433955 (=> (not res!1913318) (not e!2855852))))

(assert (=> d!1433955 (= res!1913318 (forall!10498 (_2!29052 lt!1744536) lambda!183006))))

(assert (=> d!1433955 (= lt!1744998 e!2855851)))

(assert (=> d!1433955 (= c!783836 ((_ is Nil!50944) (_2!29052 lt!1744536)))))

(assert (=> d!1433955 (noDuplicateKeys!1270 (_2!29052 lt!1744536))))

(assert (=> d!1433955 (= (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744558) lt!1744998)))

(declare-fun b!4579761 () Bool)

(declare-fun res!1913319 () Bool)

(assert (=> b!4579761 (=> (not res!1913319) (not e!2855852))))

(assert (=> b!4579761 (= res!1913319 (forall!10498 (toList!4548 lt!1744558) lambda!183006))))

(declare-fun bm!319677 () Bool)

(assert (=> bm!319677 (= call!319682 (lemmaContainsAllItsOwnKeys!412 lt!1744558))))

(assert (= (and d!1433955 c!783836) b!4579757))

(assert (= (and d!1433955 (not c!783836)) b!4579758))

(assert (= (and b!4579758 res!1913317) b!4579759))

(assert (= (or b!4579757 b!4579758) bm!319676))

(assert (= (or b!4579757 b!4579758) bm!319675))

(assert (= (or b!4579757 b!4579758) bm!319677))

(assert (= (and d!1433955 res!1913318) b!4579761))

(assert (= (and b!4579761 res!1913319) b!4579760))

(declare-fun m!5389447 () Bool)

(assert (=> bm!319675 m!5389447))

(declare-fun m!5389449 () Bool)

(assert (=> b!4579758 m!5389449))

(declare-fun m!5389451 () Bool)

(assert (=> b!4579758 m!5389451))

(assert (=> b!4579758 m!5389451))

(declare-fun m!5389453 () Bool)

(assert (=> b!4579758 m!5389453))

(declare-fun m!5389455 () Bool)

(assert (=> b!4579758 m!5389455))

(declare-fun m!5389457 () Bool)

(assert (=> b!4579758 m!5389457))

(declare-fun m!5389459 () Bool)

(assert (=> b!4579758 m!5389459))

(declare-fun m!5389461 () Bool)

(assert (=> b!4579758 m!5389461))

(declare-fun m!5389463 () Bool)

(assert (=> b!4579758 m!5389463))

(declare-fun m!5389465 () Bool)

(assert (=> b!4579758 m!5389465))

(declare-fun m!5389467 () Bool)

(assert (=> b!4579758 m!5389467))

(assert (=> b!4579758 m!5389461))

(declare-fun m!5389469 () Bool)

(assert (=> b!4579758 m!5389469))

(declare-fun m!5389471 () Bool)

(assert (=> b!4579761 m!5389471))

(declare-fun m!5389473 () Bool)

(assert (=> d!1433955 m!5389473))

(assert (=> d!1433955 m!5388679))

(declare-fun m!5389475 () Bool)

(assert (=> bm!319676 m!5389475))

(declare-fun m!5389477 () Bool)

(assert (=> b!4579760 m!5389477))

(declare-fun m!5389479 () Bool)

(assert (=> bm!319677 m!5389479))

(assert (=> b!4579759 m!5389449))

(assert (=> b!4579361 d!1433955))

(declare-fun d!1433957 () Bool)

(assert (=> d!1433957 (= (addToMapMapFromBucket!783 (_2!29052 lt!1744536) (-!478 lt!1744558 key!3287)) (-!478 (addToMapMapFromBucket!783 (_2!29052 lt!1744536) lt!1744558) key!3287))))

(declare-fun lt!1745005 () Unit!105431)

(declare-fun choose!30507 (ListMap!3809 K!12315 List!51068) Unit!105431)

(assert (=> d!1433957 (= lt!1745005 (choose!30507 lt!1744558 key!3287 (_2!29052 lt!1744536)))))

(assert (=> d!1433957 (not (containsKey!2048 (_2!29052 lt!1744536) key!3287))))

(assert (=> d!1433957 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!36 lt!1744558 key!3287 (_2!29052 lt!1744536)) lt!1745005)))

(declare-fun bs!971780 () Bool)

(assert (= bs!971780 d!1433957))

(assert (=> bs!971780 m!5388653))

(assert (=> bs!971780 m!5388655))

(assert (=> bs!971780 m!5388699))

(assert (=> bs!971780 m!5388653))

(declare-fun m!5389481 () Bool)

(assert (=> bs!971780 m!5389481))

(assert (=> bs!971780 m!5388699))

(declare-fun m!5389483 () Bool)

(assert (=> bs!971780 m!5389483))

(assert (=> bs!971780 m!5388677))

(assert (=> b!4579361 d!1433957))

(declare-fun bs!971781 () Bool)

(declare-fun d!1433959 () Bool)

(assert (= bs!971781 (and d!1433959 b!4579364)))

(declare-fun lambda!183009 () Int)

(assert (=> bs!971781 (= lambda!183009 lambda!182878)))

(declare-fun bs!971782 () Bool)

(assert (= bs!971782 (and d!1433959 d!1433913)))

(assert (=> bs!971782 (not (= lambda!183009 lambda!182997))))

(declare-fun bs!971783 () Bool)

(assert (= bs!971783 (and d!1433959 start!455896)))

(assert (=> bs!971783 (not (= lambda!183009 lambda!182877))))

(declare-fun bs!971784 () Bool)

(assert (= bs!971784 (and d!1433959 d!1433755)))

(assert (=> bs!971784 (not (= lambda!183009 lambda!182885))))

(declare-fun bs!971785 () Bool)

(assert (= bs!971785 (and d!1433959 d!1433941)))

(assert (=> bs!971785 (not (= lambda!183009 lambda!182998))))

(declare-fun bs!971786 () Bool)

(assert (= bs!971786 (and d!1433959 d!1433773)))

(assert (=> bs!971786 (not (= lambda!183009 lambda!182897))))

(declare-fun bs!971787 () Bool)

(assert (= bs!971787 (and d!1433959 d!1433767)))

(assert (=> bs!971787 (not (= lambda!183009 lambda!182888))))

(declare-fun bs!971788 () Bool)

(assert (= bs!971788 (and d!1433959 d!1433791)))

(assert (=> bs!971788 (not (= lambda!183009 lambda!182927))))

(declare-fun bs!971789 () Bool)

(assert (= bs!971789 (and d!1433959 d!1433881)))

(assert (=> bs!971789 (not (= lambda!183009 lambda!182981))))

(assert (=> d!1433959 true))

(assert (=> d!1433959 (= (allKeysSameHashInMap!1377 lm!1477 hashF!1107) (forall!10496 (toList!4547 lm!1477) lambda!183009))))

(declare-fun bs!971790 () Bool)

(assert (= bs!971790 d!1433959))

(declare-fun m!5389485 () Bool)

(assert (=> bs!971790 m!5389485))

(assert (=> b!4579340 d!1433959))

(declare-fun d!1433961 () Bool)

(declare-fun res!1913320 () Bool)

(declare-fun e!2855854 () Bool)

(assert (=> d!1433961 (=> res!1913320 e!2855854)))

(assert (=> d!1433961 (= res!1913320 (not ((_ is Cons!50944) (_2!29052 lt!1744536))))))

(assert (=> d!1433961 (= (noDuplicateKeys!1270 (_2!29052 lt!1744536)) e!2855854)))

(declare-fun b!4579762 () Bool)

(declare-fun e!2855855 () Bool)

(assert (=> b!4579762 (= e!2855854 e!2855855)))

(declare-fun res!1913321 () Bool)

(assert (=> b!4579762 (=> (not res!1913321) (not e!2855855))))

(assert (=> b!4579762 (= res!1913321 (not (containsKey!2048 (t!358058 (_2!29052 lt!1744536)) (_1!29051 (h!56877 (_2!29052 lt!1744536))))))))

(declare-fun b!4579763 () Bool)

(assert (=> b!4579763 (= e!2855855 (noDuplicateKeys!1270 (t!358058 (_2!29052 lt!1744536))))))

(assert (= (and d!1433961 (not res!1913320)) b!4579762))

(assert (= (and b!4579762 res!1913321) b!4579763))

(declare-fun m!5389487 () Bool)

(assert (=> b!4579762 m!5389487))

(declare-fun m!5389489 () Bool)

(assert (=> b!4579763 m!5389489))

(assert (=> b!4579358 d!1433961))

(declare-fun d!1433963 () Bool)

(assert (=> d!1433963 (dynLambda!21331 lambda!182877 (h!56878 (toList!4547 lm!1477)))))

(declare-fun lt!1745006 () Unit!105431)

(assert (=> d!1433963 (= lt!1745006 (choose!30500 (toList!4547 lm!1477) lambda!182877 (h!56878 (toList!4547 lm!1477))))))

(declare-fun e!2855856 () Bool)

(assert (=> d!1433963 e!2855856))

(declare-fun res!1913322 () Bool)

(assert (=> d!1433963 (=> (not res!1913322) (not e!2855856))))

(assert (=> d!1433963 (= res!1913322 (forall!10496 (toList!4547 lm!1477) lambda!182877))))

(assert (=> d!1433963 (= (forallContained!2760 (toList!4547 lm!1477) lambda!182877 (h!56878 (toList!4547 lm!1477))) lt!1745006)))

(declare-fun b!4579764 () Bool)

(assert (=> b!4579764 (= e!2855856 (contains!13837 (toList!4547 lm!1477) (h!56878 (toList!4547 lm!1477))))))

(assert (= (and d!1433963 res!1913322) b!4579764))

(declare-fun b_lambda!165979 () Bool)

(assert (=> (not b_lambda!165979) (not d!1433963)))

(assert (=> d!1433963 m!5388825))

(declare-fun m!5389491 () Bool)

(assert (=> d!1433963 m!5389491))

(assert (=> d!1433963 m!5388663))

(assert (=> b!4579764 m!5389355))

(assert (=> b!4579358 d!1433963))

(declare-fun d!1433965 () Bool)

(declare-fun e!2855859 () Bool)

(assert (=> d!1433965 e!2855859))

(declare-fun res!1913327 () Bool)

(assert (=> d!1433965 (=> (not res!1913327) (not e!2855859))))

(declare-fun lt!1745015 () ListLongMap!3179)

(assert (=> d!1433965 (= res!1913327 (contains!13836 lt!1745015 (_1!29052 lt!1744550)))))

(declare-fun lt!1745018 () List!51069)

(assert (=> d!1433965 (= lt!1745015 (ListLongMap!3180 lt!1745018))))

(declare-fun lt!1745017 () Unit!105431)

(declare-fun lt!1745016 () Unit!105431)

(assert (=> d!1433965 (= lt!1745017 lt!1745016)))

(assert (=> d!1433965 (= (getValueByKey!1251 lt!1745018 (_1!29052 lt!1744550)) (Some!11322 (_2!29052 lt!1744550)))))

(declare-fun lemmaContainsTupThenGetReturnValue!776 (List!51069 (_ BitVec 64) List!51068) Unit!105431)

(assert (=> d!1433965 (= lt!1745016 (lemmaContainsTupThenGetReturnValue!776 lt!1745018 (_1!29052 lt!1744550) (_2!29052 lt!1744550)))))

(declare-fun insertStrictlySorted!476 (List!51069 (_ BitVec 64) List!51068) List!51069)

(assert (=> d!1433965 (= lt!1745018 (insertStrictlySorted!476 (toList!4547 lm!1477) (_1!29052 lt!1744550) (_2!29052 lt!1744550)))))

(assert (=> d!1433965 (= (+!1704 lm!1477 lt!1744550) lt!1745015)))

(declare-fun b!4579769 () Bool)

(declare-fun res!1913328 () Bool)

(assert (=> b!4579769 (=> (not res!1913328) (not e!2855859))))

(assert (=> b!4579769 (= res!1913328 (= (getValueByKey!1251 (toList!4547 lt!1745015) (_1!29052 lt!1744550)) (Some!11322 (_2!29052 lt!1744550))))))

(declare-fun b!4579770 () Bool)

(assert (=> b!4579770 (= e!2855859 (contains!13837 (toList!4547 lt!1745015) lt!1744550))))

(assert (= (and d!1433965 res!1913327) b!4579769))

(assert (= (and b!4579769 res!1913328) b!4579770))

(declare-fun m!5389493 () Bool)

(assert (=> d!1433965 m!5389493))

(declare-fun m!5389495 () Bool)

(assert (=> d!1433965 m!5389495))

(declare-fun m!5389497 () Bool)

(assert (=> d!1433965 m!5389497))

(declare-fun m!5389499 () Bool)

(assert (=> d!1433965 m!5389499))

(declare-fun m!5389501 () Bool)

(assert (=> b!4579769 m!5389501))

(declare-fun m!5389503 () Bool)

(assert (=> b!4579770 m!5389503))

(assert (=> b!4579357 d!1433965))

(declare-fun d!1433967 () Bool)

(declare-fun e!2855860 () Bool)

(assert (=> d!1433967 e!2855860))

(declare-fun res!1913329 () Bool)

(assert (=> d!1433967 (=> (not res!1913329) (not e!2855860))))

(declare-fun lt!1745019 () ListLongMap!3179)

(assert (=> d!1433967 (= res!1913329 (contains!13836 lt!1745019 (_1!29052 lt!1744536)))))

(declare-fun lt!1745022 () List!51069)

(assert (=> d!1433967 (= lt!1745019 (ListLongMap!3180 lt!1745022))))

(declare-fun lt!1745021 () Unit!105431)

(declare-fun lt!1745020 () Unit!105431)

(assert (=> d!1433967 (= lt!1745021 lt!1745020)))

(assert (=> d!1433967 (= (getValueByKey!1251 lt!1745022 (_1!29052 lt!1744536)) (Some!11322 (_2!29052 lt!1744536)))))

(assert (=> d!1433967 (= lt!1745020 (lemmaContainsTupThenGetReturnValue!776 lt!1745022 (_1!29052 lt!1744536) (_2!29052 lt!1744536)))))

(assert (=> d!1433967 (= lt!1745022 (insertStrictlySorted!476 (toList!4547 lt!1744557) (_1!29052 lt!1744536) (_2!29052 lt!1744536)))))

(assert (=> d!1433967 (= (+!1704 lt!1744557 lt!1744536) lt!1745019)))

(declare-fun b!4579771 () Bool)

(declare-fun res!1913330 () Bool)

(assert (=> b!4579771 (=> (not res!1913330) (not e!2855860))))

(assert (=> b!4579771 (= res!1913330 (= (getValueByKey!1251 (toList!4547 lt!1745019) (_1!29052 lt!1744536)) (Some!11322 (_2!29052 lt!1744536))))))

(declare-fun b!4579772 () Bool)

(assert (=> b!4579772 (= e!2855860 (contains!13837 (toList!4547 lt!1745019) lt!1744536))))

(assert (= (and d!1433967 res!1913329) b!4579771))

(assert (= (and b!4579771 res!1913330) b!4579772))

(declare-fun m!5389505 () Bool)

(assert (=> d!1433967 m!5389505))

(declare-fun m!5389507 () Bool)

(assert (=> d!1433967 m!5389507))

(declare-fun m!5389509 () Bool)

(assert (=> d!1433967 m!5389509))

(declare-fun m!5389511 () Bool)

(assert (=> d!1433967 m!5389511))

(declare-fun m!5389513 () Bool)

(assert (=> b!4579771 m!5389513))

(declare-fun m!5389515 () Bool)

(assert (=> b!4579772 m!5389515))

(assert (=> b!4579357 d!1433967))

(declare-fun d!1433969 () Bool)

(declare-fun lt!1745023 () Bool)

(assert (=> d!1433969 (= lt!1745023 (select (content!8580 (t!358059 (toList!4547 lm!1477))) lt!1744542))))

(declare-fun e!2855862 () Bool)

(assert (=> d!1433969 (= lt!1745023 e!2855862)))

(declare-fun res!1913332 () Bool)

(assert (=> d!1433969 (=> (not res!1913332) (not e!2855862))))

(assert (=> d!1433969 (= res!1913332 ((_ is Cons!50945) (t!358059 (toList!4547 lm!1477))))))

(assert (=> d!1433969 (= (contains!13837 (t!358059 (toList!4547 lm!1477)) lt!1744542) lt!1745023)))

(declare-fun b!4579773 () Bool)

(declare-fun e!2855861 () Bool)

(assert (=> b!4579773 (= e!2855862 e!2855861)))

(declare-fun res!1913331 () Bool)

(assert (=> b!4579773 (=> res!1913331 e!2855861)))

(assert (=> b!4579773 (= res!1913331 (= (h!56878 (t!358059 (toList!4547 lm!1477))) lt!1744542))))

(declare-fun b!4579774 () Bool)

(assert (=> b!4579774 (= e!2855861 (contains!13837 (t!358059 (t!358059 (toList!4547 lm!1477))) lt!1744542))))

(assert (= (and d!1433969 res!1913332) b!4579773))

(assert (= (and b!4579773 (not res!1913331)) b!4579774))

(declare-fun m!5389517 () Bool)

(assert (=> d!1433969 m!5389517))

(declare-fun m!5389519 () Bool)

(assert (=> d!1433969 m!5389519))

(declare-fun m!5389521 () Bool)

(assert (=> b!4579774 m!5389521))

(assert (=> b!4579359 d!1433969))

(declare-fun bs!971791 () Bool)

(declare-fun d!1433971 () Bool)

(assert (= bs!971791 (and d!1433971 d!1433913)))

(declare-fun lambda!183012 () Int)

(assert (=> bs!971791 (= lambda!183012 lambda!182997)))

(declare-fun bs!971792 () Bool)

(assert (= bs!971792 (and d!1433971 start!455896)))

(assert (=> bs!971792 (= lambda!183012 lambda!182877)))

(declare-fun bs!971793 () Bool)

(assert (= bs!971793 (and d!1433971 d!1433755)))

(assert (=> bs!971793 (= lambda!183012 lambda!182885)))

(declare-fun bs!971794 () Bool)

(assert (= bs!971794 (and d!1433971 d!1433941)))

(assert (=> bs!971794 (= lambda!183012 lambda!182998)))

(declare-fun bs!971795 () Bool)

(assert (= bs!971795 (and d!1433971 d!1433773)))

(assert (=> bs!971795 (= lambda!183012 lambda!182897)))

(declare-fun bs!971796 () Bool)

(assert (= bs!971796 (and d!1433971 d!1433767)))

(assert (=> bs!971796 (= lambda!183012 lambda!182888)))

(declare-fun bs!971797 () Bool)

(assert (= bs!971797 (and d!1433971 d!1433959)))

(assert (=> bs!971797 (not (= lambda!183012 lambda!183009))))

(declare-fun bs!971798 () Bool)

(assert (= bs!971798 (and d!1433971 b!4579364)))

(assert (=> bs!971798 (not (= lambda!183012 lambda!182878))))

(declare-fun bs!971799 () Bool)

(assert (= bs!971799 (and d!1433971 d!1433791)))

(assert (=> bs!971799 (= lambda!183012 lambda!182927)))

(declare-fun bs!971800 () Bool)

(assert (= bs!971800 (and d!1433971 d!1433881)))

(assert (=> bs!971800 (= lambda!183012 lambda!182981)))

(assert (=> d!1433971 (eq!709 (extractMap!1326 (toList!4547 (+!1704 lt!1744529 (tuple2!51517 hash!344 newBucket!178)))) (-!478 (extractMap!1326 (toList!4547 lt!1744529)) key!3287))))

(declare-fun lt!1745026 () Unit!105431)

(declare-fun choose!30509 (ListLongMap!3179 (_ BitVec 64) List!51068 K!12315 Hashable!5665) Unit!105431)

(assert (=> d!1433971 (= lt!1745026 (choose!30509 lt!1744529 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1433971 (forall!10496 (toList!4547 lt!1744529) lambda!183012)))

(assert (=> d!1433971 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!217 lt!1744529 hash!344 newBucket!178 key!3287 hashF!1107) lt!1745026)))

(declare-fun bs!971801 () Bool)

(assert (= bs!971801 d!1433971))

(assert (=> bs!971801 m!5388591))

(declare-fun m!5389523 () Bool)

(assert (=> bs!971801 m!5389523))

(declare-fun m!5389525 () Bool)

(assert (=> bs!971801 m!5389525))

(assert (=> bs!971801 m!5388591))

(declare-fun m!5389527 () Bool)

(assert (=> bs!971801 m!5389527))

(declare-fun m!5389529 () Bool)

(assert (=> bs!971801 m!5389529))

(assert (=> bs!971801 m!5389527))

(declare-fun m!5389531 () Bool)

(assert (=> bs!971801 m!5389531))

(declare-fun m!5389533 () Bool)

(assert (=> bs!971801 m!5389533))

(assert (=> bs!971801 m!5389529))

(assert (=> b!4579338 d!1433971))

(declare-fun d!1433973 () Bool)

(assert (=> d!1433973 (= (eq!709 lt!1744562 lt!1744533) (= (content!8579 (toList!4548 lt!1744562)) (content!8579 (toList!4548 lt!1744533))))))

(declare-fun bs!971802 () Bool)

(assert (= bs!971802 d!1433973))

(assert (=> bs!971802 m!5388823))

(assert (=> bs!971802 m!5388821))

(assert (=> b!4579338 d!1433973))

(declare-fun bs!971803 () Bool)

(declare-fun d!1433975 () Bool)

(assert (= bs!971803 (and d!1433975 d!1433913)))

(declare-fun lambda!183013 () Int)

(assert (=> bs!971803 (= lambda!183013 lambda!182997)))

(declare-fun bs!971804 () Bool)

(assert (= bs!971804 (and d!1433975 start!455896)))

(assert (=> bs!971804 (= lambda!183013 lambda!182877)))

(declare-fun bs!971805 () Bool)

(assert (= bs!971805 (and d!1433975 d!1433971)))

(assert (=> bs!971805 (= lambda!183013 lambda!183012)))

(declare-fun bs!971806 () Bool)

(assert (= bs!971806 (and d!1433975 d!1433755)))

(assert (=> bs!971806 (= lambda!183013 lambda!182885)))

(declare-fun bs!971807 () Bool)

(assert (= bs!971807 (and d!1433975 d!1433941)))

(assert (=> bs!971807 (= lambda!183013 lambda!182998)))

(declare-fun bs!971808 () Bool)

(assert (= bs!971808 (and d!1433975 d!1433773)))

(assert (=> bs!971808 (= lambda!183013 lambda!182897)))

(declare-fun bs!971809 () Bool)

(assert (= bs!971809 (and d!1433975 d!1433767)))

(assert (=> bs!971809 (= lambda!183013 lambda!182888)))

(declare-fun bs!971810 () Bool)

(assert (= bs!971810 (and d!1433975 d!1433959)))

(assert (=> bs!971810 (not (= lambda!183013 lambda!183009))))

(declare-fun bs!971811 () Bool)

(assert (= bs!971811 (and d!1433975 b!4579364)))

(assert (=> bs!971811 (not (= lambda!183013 lambda!182878))))

(declare-fun bs!971812 () Bool)

(assert (= bs!971812 (and d!1433975 d!1433791)))

(assert (=> bs!971812 (= lambda!183013 lambda!182927)))

(declare-fun bs!971813 () Bool)

(assert (= bs!971813 (and d!1433975 d!1433881)))

(assert (=> bs!971813 (= lambda!183013 lambda!182981)))

(declare-fun lt!1745027 () ListMap!3809)

(assert (=> d!1433975 (invariantList!1095 (toList!4548 lt!1745027))))

(declare-fun e!2855863 () ListMap!3809)

(assert (=> d!1433975 (= lt!1745027 e!2855863)))

(declare-fun c!783837 () Bool)

(assert (=> d!1433975 (= c!783837 ((_ is Cons!50945) (toList!4547 (+!1704 lt!1744529 lt!1744536))))))

(assert (=> d!1433975 (forall!10496 (toList!4547 (+!1704 lt!1744529 lt!1744536)) lambda!183013)))

(assert (=> d!1433975 (= (extractMap!1326 (toList!4547 (+!1704 lt!1744529 lt!1744536))) lt!1745027)))

(declare-fun b!4579775 () Bool)

(assert (=> b!4579775 (= e!2855863 (addToMapMapFromBucket!783 (_2!29052 (h!56878 (toList!4547 (+!1704 lt!1744529 lt!1744536)))) (extractMap!1326 (t!358059 (toList!4547 (+!1704 lt!1744529 lt!1744536))))))))

(declare-fun b!4579776 () Bool)

(assert (=> b!4579776 (= e!2855863 (ListMap!3810 Nil!50944))))

(assert (= (and d!1433975 c!783837) b!4579775))

(assert (= (and d!1433975 (not c!783837)) b!4579776))

(declare-fun m!5389535 () Bool)

(assert (=> d!1433975 m!5389535))

(declare-fun m!5389537 () Bool)

(assert (=> d!1433975 m!5389537))

(declare-fun m!5389539 () Bool)

(assert (=> b!4579775 m!5389539))

(assert (=> b!4579775 m!5389539))

(declare-fun m!5389541 () Bool)

(assert (=> b!4579775 m!5389541))

(assert (=> b!4579338 d!1433975))

(declare-fun d!1433977 () Bool)

(assert (=> d!1433977 (= (eq!709 lt!1744544 lt!1744553) (= (content!8579 (toList!4548 lt!1744544)) (content!8579 (toList!4548 lt!1744553))))))

(declare-fun bs!971814 () Bool)

(assert (= bs!971814 d!1433977))

(declare-fun m!5389543 () Bool)

(assert (=> bs!971814 m!5389543))

(declare-fun m!5389545 () Bool)

(assert (=> bs!971814 m!5389545))

(assert (=> b!4579338 d!1433977))

(declare-fun bs!971815 () Bool)

(declare-fun d!1433979 () Bool)

(assert (= bs!971815 (and d!1433979 d!1433913)))

(declare-fun lambda!183014 () Int)

(assert (=> bs!971815 (= lambda!183014 lambda!182997)))

(declare-fun bs!971816 () Bool)

(assert (= bs!971816 (and d!1433979 start!455896)))

(assert (=> bs!971816 (= lambda!183014 lambda!182877)))

(declare-fun bs!971817 () Bool)

(assert (= bs!971817 (and d!1433979 d!1433971)))

(assert (=> bs!971817 (= lambda!183014 lambda!183012)))

(declare-fun bs!971818 () Bool)

(assert (= bs!971818 (and d!1433979 d!1433755)))

(assert (=> bs!971818 (= lambda!183014 lambda!182885)))

(declare-fun bs!971819 () Bool)

(assert (= bs!971819 (and d!1433979 d!1433941)))

(assert (=> bs!971819 (= lambda!183014 lambda!182998)))

(declare-fun bs!971820 () Bool)

(assert (= bs!971820 (and d!1433979 d!1433773)))

(assert (=> bs!971820 (= lambda!183014 lambda!182897)))

(declare-fun bs!971821 () Bool)

(assert (= bs!971821 (and d!1433979 d!1433959)))

(assert (=> bs!971821 (not (= lambda!183014 lambda!183009))))

(declare-fun bs!971822 () Bool)

(assert (= bs!971822 (and d!1433979 b!4579364)))

(assert (=> bs!971822 (not (= lambda!183014 lambda!182878))))

(declare-fun bs!971823 () Bool)

(assert (= bs!971823 (and d!1433979 d!1433791)))

(assert (=> bs!971823 (= lambda!183014 lambda!182927)))

(declare-fun bs!971824 () Bool)

(assert (= bs!971824 (and d!1433979 d!1433881)))

(assert (=> bs!971824 (= lambda!183014 lambda!182981)))

(declare-fun bs!971825 () Bool)

(assert (= bs!971825 (and d!1433979 d!1433975)))

(assert (=> bs!971825 (= lambda!183014 lambda!183013)))

(declare-fun bs!971826 () Bool)

(assert (= bs!971826 (and d!1433979 d!1433767)))

(assert (=> bs!971826 (= lambda!183014 lambda!182888)))

(declare-fun lt!1745028 () ListMap!3809)

(assert (=> d!1433979 (invariantList!1095 (toList!4548 lt!1745028))))

(declare-fun e!2855864 () ListMap!3809)

(assert (=> d!1433979 (= lt!1745028 e!2855864)))

(declare-fun c!783838 () Bool)

(assert (=> d!1433979 (= c!783838 ((_ is Cons!50945) (toList!4547 lt!1744557)))))

(assert (=> d!1433979 (forall!10496 (toList!4547 lt!1744557) lambda!183014)))

(assert (=> d!1433979 (= (extractMap!1326 (toList!4547 lt!1744557)) lt!1745028)))

(declare-fun b!4579777 () Bool)

(assert (=> b!4579777 (= e!2855864 (addToMapMapFromBucket!783 (_2!29052 (h!56878 (toList!4547 lt!1744557))) (extractMap!1326 (t!358059 (toList!4547 lt!1744557)))))))

(declare-fun b!4579778 () Bool)

(assert (=> b!4579778 (= e!2855864 (ListMap!3810 Nil!50944))))

(assert (= (and d!1433979 c!783838) b!4579777))

(assert (= (and d!1433979 (not c!783838)) b!4579778))

(declare-fun m!5389547 () Bool)

(assert (=> d!1433979 m!5389547))

(declare-fun m!5389549 () Bool)

(assert (=> d!1433979 m!5389549))

(declare-fun m!5389551 () Bool)

(assert (=> b!4579777 m!5389551))

(assert (=> b!4579777 m!5389551))

(declare-fun m!5389553 () Bool)

(assert (=> b!4579777 m!5389553))

(assert (=> b!4579338 d!1433979))

(declare-fun d!1433981 () Bool)

(declare-fun e!2855865 () Bool)

(assert (=> d!1433981 e!2855865))

(declare-fun res!1913333 () Bool)

(assert (=> d!1433981 (=> (not res!1913333) (not e!2855865))))

(declare-fun lt!1745029 () ListMap!3809)

(assert (=> d!1433981 (= res!1913333 (not (contains!13835 lt!1745029 key!3287)))))

(assert (=> d!1433981 (= lt!1745029 (ListMap!3810 (removePresrvNoDuplicatedKeys!209 (toList!4548 lt!1744558) key!3287)))))

(assert (=> d!1433981 (= (-!478 lt!1744558 key!3287) lt!1745029)))

(declare-fun b!4579779 () Bool)

(assert (=> b!4579779 (= e!2855865 (= ((_ map and) (content!8582 (keys!17796 lt!1744558)) ((_ map not) (store ((as const (Array K!12315 Bool)) false) key!3287 true))) (content!8582 (keys!17796 lt!1745029))))))

(assert (= (and d!1433981 res!1913333) b!4579779))

(declare-fun m!5389555 () Bool)

(assert (=> d!1433981 m!5389555))

(declare-fun m!5389557 () Bool)

(assert (=> d!1433981 m!5389557))

(assert (=> b!4579779 m!5388791))

(assert (=> b!4579779 m!5389439))

(declare-fun m!5389559 () Bool)

(assert (=> b!4579779 m!5389559))

(assert (=> b!4579779 m!5389559))

(declare-fun m!5389561 () Bool)

(assert (=> b!4579779 m!5389561))

(assert (=> b!4579779 m!5388791))

(declare-fun m!5389563 () Bool)

(assert (=> b!4579779 m!5389563))

(assert (=> b!4579338 d!1433981))

(declare-fun d!1433983 () Bool)

(declare-fun e!2855866 () Bool)

(assert (=> d!1433983 e!2855866))

(declare-fun res!1913334 () Bool)

(assert (=> d!1433983 (=> (not res!1913334) (not e!2855866))))

(declare-fun lt!1745030 () ListLongMap!3179)

(assert (=> d!1433983 (= res!1913334 (contains!13836 lt!1745030 (_1!29052 lt!1744550)))))

(declare-fun lt!1745033 () List!51069)

(assert (=> d!1433983 (= lt!1745030 (ListLongMap!3180 lt!1745033))))

(declare-fun lt!1745032 () Unit!105431)

(declare-fun lt!1745031 () Unit!105431)

(assert (=> d!1433983 (= lt!1745032 lt!1745031)))

(assert (=> d!1433983 (= (getValueByKey!1251 lt!1745033 (_1!29052 lt!1744550)) (Some!11322 (_2!29052 lt!1744550)))))

(assert (=> d!1433983 (= lt!1745031 (lemmaContainsTupThenGetReturnValue!776 lt!1745033 (_1!29052 lt!1744550) (_2!29052 lt!1744550)))))

(assert (=> d!1433983 (= lt!1745033 (insertStrictlySorted!476 (toList!4547 lt!1744529) (_1!29052 lt!1744550) (_2!29052 lt!1744550)))))

(assert (=> d!1433983 (= (+!1704 lt!1744529 lt!1744550) lt!1745030)))

(declare-fun b!4579780 () Bool)

(declare-fun res!1913335 () Bool)

(assert (=> b!4579780 (=> (not res!1913335) (not e!2855866))))

(assert (=> b!4579780 (= res!1913335 (= (getValueByKey!1251 (toList!4547 lt!1745030) (_1!29052 lt!1744550)) (Some!11322 (_2!29052 lt!1744550))))))

(declare-fun b!4579781 () Bool)

(assert (=> b!4579781 (= e!2855866 (contains!13837 (toList!4547 lt!1745030) lt!1744550))))

(assert (= (and d!1433983 res!1913334) b!4579780))

(assert (= (and b!4579780 res!1913335) b!4579781))

(declare-fun m!5389565 () Bool)

(assert (=> d!1433983 m!5389565))

(declare-fun m!5389567 () Bool)

(assert (=> d!1433983 m!5389567))

(declare-fun m!5389569 () Bool)

(assert (=> d!1433983 m!5389569))

(declare-fun m!5389571 () Bool)

(assert (=> d!1433983 m!5389571))

(declare-fun m!5389573 () Bool)

(assert (=> b!4579780 m!5389573))

(declare-fun m!5389575 () Bool)

(assert (=> b!4579781 m!5389575))

(assert (=> b!4579338 d!1433983))

(declare-fun d!1433985 () Bool)

(declare-fun e!2855867 () Bool)

(assert (=> d!1433985 e!2855867))

(declare-fun res!1913336 () Bool)

(assert (=> d!1433985 (=> (not res!1913336) (not e!2855867))))

(declare-fun lt!1745034 () ListLongMap!3179)

(assert (=> d!1433985 (= res!1913336 (contains!13836 lt!1745034 (_1!29052 lt!1744536)))))

(declare-fun lt!1745037 () List!51069)

(assert (=> d!1433985 (= lt!1745034 (ListLongMap!3180 lt!1745037))))

(declare-fun lt!1745036 () Unit!105431)

(declare-fun lt!1745035 () Unit!105431)

(assert (=> d!1433985 (= lt!1745036 lt!1745035)))

(assert (=> d!1433985 (= (getValueByKey!1251 lt!1745037 (_1!29052 lt!1744536)) (Some!11322 (_2!29052 lt!1744536)))))

(assert (=> d!1433985 (= lt!1745035 (lemmaContainsTupThenGetReturnValue!776 lt!1745037 (_1!29052 lt!1744536) (_2!29052 lt!1744536)))))

(assert (=> d!1433985 (= lt!1745037 (insertStrictlySorted!476 (toList!4547 lt!1744529) (_1!29052 lt!1744536) (_2!29052 lt!1744536)))))

(assert (=> d!1433985 (= (+!1704 lt!1744529 lt!1744536) lt!1745034)))

(declare-fun b!4579782 () Bool)

(declare-fun res!1913337 () Bool)

(assert (=> b!4579782 (=> (not res!1913337) (not e!2855867))))

(assert (=> b!4579782 (= res!1913337 (= (getValueByKey!1251 (toList!4547 lt!1745034) (_1!29052 lt!1744536)) (Some!11322 (_2!29052 lt!1744536))))))

(declare-fun b!4579783 () Bool)

(assert (=> b!4579783 (= e!2855867 (contains!13837 (toList!4547 lt!1745034) lt!1744536))))

(assert (= (and d!1433985 res!1913336) b!4579782))

(assert (= (and b!4579782 res!1913337) b!4579783))

(declare-fun m!5389577 () Bool)

(assert (=> d!1433985 m!5389577))

(declare-fun m!5389579 () Bool)

(assert (=> d!1433985 m!5389579))

(declare-fun m!5389581 () Bool)

(assert (=> d!1433985 m!5389581))

(declare-fun m!5389583 () Bool)

(assert (=> d!1433985 m!5389583))

(declare-fun m!5389585 () Bool)

(assert (=> b!4579782 m!5389585))

(declare-fun m!5389587 () Bool)

(assert (=> b!4579783 m!5389587))

(assert (=> b!4579338 d!1433985))

(declare-fun d!1433987 () Bool)

(assert (=> d!1433987 (= (head!9534 lm!1477) (head!9536 (toList!4547 lm!1477)))))

(declare-fun bs!971827 () Bool)

(assert (= bs!971827 d!1433987))

(declare-fun m!5389589 () Bool)

(assert (=> bs!971827 m!5389589))

(assert (=> b!4579338 d!1433987))

(declare-fun d!1433989 () Bool)

(declare-fun res!1913345 () Bool)

(declare-fun e!2855875 () Bool)

(assert (=> d!1433989 (=> res!1913345 e!2855875)))

(declare-fun e!2855874 () Bool)

(assert (=> d!1433989 (= res!1913345 e!2855874)))

(declare-fun res!1913346 () Bool)

(assert (=> d!1433989 (=> (not res!1913346) (not e!2855874))))

(assert (=> d!1433989 (= res!1913346 ((_ is Cons!50945) (t!358059 (toList!4547 lm!1477))))))

(assert (=> d!1433989 (= (containsKeyBiggerList!240 (t!358059 (toList!4547 lm!1477)) key!3287) e!2855875)))

(declare-fun b!4579790 () Bool)

(assert (=> b!4579790 (= e!2855874 (containsKey!2048 (_2!29052 (h!56878 (t!358059 (toList!4547 lm!1477)))) key!3287))))

(declare-fun b!4579791 () Bool)

(declare-fun e!2855876 () Bool)

(assert (=> b!4579791 (= e!2855875 e!2855876)))

(declare-fun res!1913344 () Bool)

(assert (=> b!4579791 (=> (not res!1913344) (not e!2855876))))

(assert (=> b!4579791 (= res!1913344 ((_ is Cons!50945) (t!358059 (toList!4547 lm!1477))))))

(declare-fun b!4579792 () Bool)

(assert (=> b!4579792 (= e!2855876 (containsKeyBiggerList!240 (t!358059 (t!358059 (toList!4547 lm!1477))) key!3287))))

(assert (= (and d!1433989 res!1913346) b!4579790))

(assert (= (and d!1433989 (not res!1913345)) b!4579791))

(assert (= (and b!4579791 res!1913344) b!4579792))

(declare-fun m!5389591 () Bool)

(assert (=> b!4579790 m!5389591))

(declare-fun m!5389593 () Bool)

(assert (=> b!4579792 m!5389593))

(assert (=> b!4579337 d!1433989))

(declare-fun d!1433991 () Bool)

(declare-fun res!1913348 () Bool)

(declare-fun e!2855878 () Bool)

(assert (=> d!1433991 (=> res!1913348 e!2855878)))

(declare-fun e!2855877 () Bool)

(assert (=> d!1433991 (= res!1913348 e!2855877)))

(declare-fun res!1913349 () Bool)

(assert (=> d!1433991 (=> (not res!1913349) (not e!2855877))))

(assert (=> d!1433991 (= res!1913349 ((_ is Cons!50945) (toList!4547 lt!1744529)))))

(assert (=> d!1433991 (= (containsKeyBiggerList!240 (toList!4547 lt!1744529) key!3287) e!2855878)))

(declare-fun b!4579793 () Bool)

(assert (=> b!4579793 (= e!2855877 (containsKey!2048 (_2!29052 (h!56878 (toList!4547 lt!1744529))) key!3287))))

(declare-fun b!4579794 () Bool)

(declare-fun e!2855879 () Bool)

(assert (=> b!4579794 (= e!2855878 e!2855879)))

(declare-fun res!1913347 () Bool)

(assert (=> b!4579794 (=> (not res!1913347) (not e!2855879))))

(assert (=> b!4579794 (= res!1913347 ((_ is Cons!50945) (toList!4547 lt!1744529)))))

(declare-fun b!4579795 () Bool)

(assert (=> b!4579795 (= e!2855879 (containsKeyBiggerList!240 (t!358059 (toList!4547 lt!1744529)) key!3287))))

(assert (= (and d!1433991 res!1913349) b!4579793))

(assert (= (and d!1433991 (not res!1913348)) b!4579794))

(assert (= (and b!4579794 res!1913347) b!4579795))

(declare-fun m!5389595 () Bool)

(assert (=> b!4579793 m!5389595))

(declare-fun m!5389597 () Bool)

(assert (=> b!4579795 m!5389597))

(assert (=> b!4579337 d!1433991))

(declare-fun bs!971828 () Bool)

(declare-fun d!1433993 () Bool)

(assert (= bs!971828 (and d!1433993 d!1433913)))

(declare-fun lambda!183017 () Int)

(assert (=> bs!971828 (= lambda!183017 lambda!182997)))

(declare-fun bs!971829 () Bool)

(assert (= bs!971829 (and d!1433993 start!455896)))

(assert (=> bs!971829 (= lambda!183017 lambda!182877)))

(declare-fun bs!971830 () Bool)

(assert (= bs!971830 (and d!1433993 d!1433979)))

(assert (=> bs!971830 (= lambda!183017 lambda!183014)))

(declare-fun bs!971831 () Bool)

(assert (= bs!971831 (and d!1433993 d!1433971)))

(assert (=> bs!971831 (= lambda!183017 lambda!183012)))

(declare-fun bs!971832 () Bool)

(assert (= bs!971832 (and d!1433993 d!1433755)))

(assert (=> bs!971832 (= lambda!183017 lambda!182885)))

(declare-fun bs!971833 () Bool)

(assert (= bs!971833 (and d!1433993 d!1433941)))

(assert (=> bs!971833 (= lambda!183017 lambda!182998)))

(declare-fun bs!971834 () Bool)

(assert (= bs!971834 (and d!1433993 d!1433773)))

(assert (=> bs!971834 (= lambda!183017 lambda!182897)))

(declare-fun bs!971835 () Bool)

(assert (= bs!971835 (and d!1433993 d!1433959)))

(assert (=> bs!971835 (not (= lambda!183017 lambda!183009))))

(declare-fun bs!971836 () Bool)

(assert (= bs!971836 (and d!1433993 b!4579364)))

(assert (=> bs!971836 (not (= lambda!183017 lambda!182878))))

(declare-fun bs!971837 () Bool)

(assert (= bs!971837 (and d!1433993 d!1433791)))

(assert (=> bs!971837 (= lambda!183017 lambda!182927)))

(declare-fun bs!971838 () Bool)

(assert (= bs!971838 (and d!1433993 d!1433881)))

(assert (=> bs!971838 (= lambda!183017 lambda!182981)))

(declare-fun bs!971839 () Bool)

(assert (= bs!971839 (and d!1433993 d!1433975)))

(assert (=> bs!971839 (= lambda!183017 lambda!183013)))

(declare-fun bs!971840 () Bool)

(assert (= bs!971840 (and d!1433993 d!1433767)))

(assert (=> bs!971840 (= lambda!183017 lambda!182888)))

(assert (=> d!1433993 (containsKeyBiggerList!240 (toList!4547 lt!1744529) key!3287)))

(declare-fun lt!1745040 () Unit!105431)

(declare-fun choose!30510 (ListLongMap!3179 K!12315 Hashable!5665) Unit!105431)

(assert (=> d!1433993 (= lt!1745040 (choose!30510 lt!1744529 key!3287 hashF!1107))))

(assert (=> d!1433993 (forall!10496 (toList!4547 lt!1744529) lambda!183017)))

(assert (=> d!1433993 (= (lemmaInLongMapThenContainsKeyBiggerList!152 lt!1744529 key!3287 hashF!1107) lt!1745040)))

(declare-fun bs!971841 () Bool)

(assert (= bs!971841 d!1433993))

(assert (=> bs!971841 m!5388635))

(declare-fun m!5389599 () Bool)

(assert (=> bs!971841 m!5389599))

(declare-fun m!5389601 () Bool)

(assert (=> bs!971841 m!5389601))

(assert (=> b!4579337 d!1433993))

(declare-fun b!4579800 () Bool)

(declare-fun e!2855882 () Bool)

(declare-fun tp!1339721 () Bool)

(declare-fun tp!1339722 () Bool)

(assert (=> b!4579800 (= e!2855882 (and tp!1339721 tp!1339722))))

(assert (=> b!4579347 (= tp!1339707 e!2855882)))

(assert (= (and b!4579347 ((_ is Cons!50945) (toList!4547 lm!1477))) b!4579800))

(declare-fun b!4579805 () Bool)

(declare-fun e!2855885 () Bool)

(declare-fun tp!1339725 () Bool)

(assert (=> b!4579805 (= e!2855885 (and tp_is_empty!28357 tp_is_empty!28359 tp!1339725))))

(assert (=> b!4579354 (= tp!1339706 e!2855885)))

(assert (= (and b!4579354 ((_ is Cons!50944) (t!358058 newBucket!178))) b!4579805))

(declare-fun b_lambda!165981 () Bool)

(assert (= b_lambda!165975 (or b!4579364 b_lambda!165981)))

(declare-fun bs!971842 () Bool)

(declare-fun d!1433995 () Bool)

(assert (= bs!971842 (and d!1433995 b!4579364)))

(assert (=> bs!971842 (= (dynLambda!21331 lambda!182878 (h!56878 (toList!4547 lm!1477))) (allKeysSameHash!1124 (_2!29052 (h!56878 (toList!4547 lm!1477))) (_1!29052 (h!56878 (toList!4547 lm!1477))) hashF!1107))))

(declare-fun m!5389603 () Bool)

(assert (=> bs!971842 m!5389603))

(assert (=> d!1433933 d!1433995))

(declare-fun b_lambda!165983 () Bool)

(assert (= b_lambda!165979 (or start!455896 b_lambda!165983)))

(declare-fun bs!971843 () Bool)

(declare-fun d!1433997 () Bool)

(assert (= bs!971843 (and d!1433997 start!455896)))

(assert (=> bs!971843 (= (dynLambda!21331 lambda!182877 (h!56878 (toList!4547 lm!1477))) (noDuplicateKeys!1270 (_2!29052 (h!56878 (toList!4547 lm!1477)))))))

(declare-fun m!5389605 () Bool)

(assert (=> bs!971843 m!5389605))

(assert (=> d!1433963 d!1433997))

(declare-fun b_lambda!165985 () Bool)

(assert (= b_lambda!165977 (or b!4579364 b_lambda!165985)))

(declare-fun bs!971844 () Bool)

(declare-fun d!1433999 () Bool)

(assert (= bs!971844 (and d!1433999 b!4579364)))

(assert (=> bs!971844 (= (dynLambda!21332 lambda!182879 (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530)))) (= (hash!3113 hashF!1107 (_1!29051 (tuple2!51515 key!3287 (_2!29051 (get!16809 lt!1744530))))) (_1!29052 (h!56878 (toList!4547 lm!1477)))))))

(declare-fun m!5389607 () Bool)

(assert (=> bs!971844 m!5389607))

(assert (=> d!1433935 d!1433999))

(declare-fun b_lambda!165987 () Bool)

(assert (= b_lambda!165963 (or start!455896 b_lambda!165987)))

(declare-fun bs!971845 () Bool)

(declare-fun d!1434001 () Bool)

(assert (= bs!971845 (and d!1434001 start!455896)))

(assert (=> bs!971845 (= (dynLambda!21331 lambda!182877 lt!1744542) (noDuplicateKeys!1270 (_2!29052 lt!1744542)))))

(declare-fun m!5389609 () Bool)

(assert (=> bs!971845 m!5389609))

(assert (=> d!1433911 d!1434001))

(declare-fun b_lambda!165989 () Bool)

(assert (= b_lambda!165951 (or start!455896 b_lambda!165989)))

(assert (=> b!4579491 d!1433997))

(check-sat (not bm!319675) (not d!1433799) (not d!1433903) (not b!4579763) (not bs!971842) (not b!4579774) (not d!1433791) (not b!4579744) (not b_lambda!165983) (not d!1433915) (not b!4579781) (not bm!319667) (not b!4579761) (not b!4579750) (not d!1433881) (not b!4579634) (not b!4579670) (not b!4579747) (not d!1433987) (not bm!319676) (not b!4579762) (not b_lambda!165985) (not b!4579458) (not d!1433787) (not b!4579445) (not b!4579793) (not b!4579792) (not b!4579795) (not b!4579772) (not b!4579672) (not bm!319677) (not b!4579690) (not b!4579746) (not d!1433957) (not b!4579737) (not d!1433917) (not b_lambda!165989) (not d!1433967) (not d!1433931) (not b!4579479) (not d!1433971) (not b!4579790) (not b!4579770) (not b!4579743) (not b!4579728) (not b_lambda!165987) (not d!1433929) tp_is_empty!28357 (not b!4579727) (not b!4579460) (not b!4579468) (not d!1433905) (not bs!971844) (not b!4579632) (not d!1433783) (not d!1433955) (not d!1433939) (not b!4579771) (not b!4579459) (not d!1433981) (not bm!319671) (not b!4579752) (not bm!319643) (not b!4579779) (not b!4579685) (not b!4579442) (not b!4579760) (not b!4579759) (not b!4579687) (not b!4579644) (not b_lambda!165981) (not bs!971845) (not b!4579443) (not d!1433993) (not b!4579738) (not b!4579739) (not bm!319674) (not bm!319644) (not b!4579800) (not d!1433933) (not d!1433913) (not b!4579683) (not b!4579775) (not d!1433755) (not bm!319665) tp_is_empty!28359 (not b!4579777) (not d!1433935) (not d!1433949) (not d!1433979) (not d!1433769) (not d!1433927) (not b!4579696) (not b!4579742) (not b!4579444) (not b!4579651) (not bm!319666) (not d!1433959) (not bm!319673) (not b!4579769) (not d!1433777) (not b!4579492) (not b!4579446) (not d!1433883) (not b!4579734) (not b!4579457) (not b!4579633) (not b!4579729) (not d!1433773) (not b!4579456) (not d!1433963) (not d!1433941) (not b!4579783) (not d!1433973) (not b!4579455) (not d!1433767) (not b!4579753) (not d!1433947) (not d!1433891) (not b!4579751) (not b!4579451) (not b!4579758) (not d!1433907) (not bm!319672) (not b!4579732) (not d!1433969) (not d!1433797) (not b!4579439) (not d!1433983) (not b!4579438) (not d!1433985) (not d!1433951) (not d!1433911) (not b!4579418) (not b!4579709) (not b!4579631) (not d!1433977) (not b!4579726) (not b!4579764) (not d!1433775) (not b!4579780) (not b!4579469) (not d!1433975) (not d!1433945) (not d!1433953) (not d!1433771) (not d!1433965) (not bs!971843) (not d!1433943) (not b!4579745) (not b!4579805) (not b!4579756) (not b!4579782) (not b!4579452))
(check-sat)
