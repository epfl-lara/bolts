; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439496 () Bool)

(assert start!439496)

(declare-fun res!1855317 () Bool)

(declare-fun e!2784415 () Bool)

(assert (=> start!439496 (=> (not res!1855317) (not e!2784415))))

(declare-datatypes ((K!11725 0))(
  ( (K!11726 (val!17651 Int)) )
))
(declare-datatypes ((V!11971 0))(
  ( (V!11972 (val!17652 Int)) )
))
(declare-datatypes ((tuple2!50570 0))(
  ( (tuple2!50571 (_1!28579 K!11725) (_2!28579 V!11971)) )
))
(declare-datatypes ((List!50434 0))(
  ( (Nil!50310) (Cons!50310 (h!56079 tuple2!50570) (t!357384 List!50434)) )
))
(declare-datatypes ((tuple2!50572 0))(
  ( (tuple2!50573 (_1!28580 (_ BitVec 64)) (_2!28580 List!50434)) )
))
(declare-datatypes ((List!50435 0))(
  ( (Nil!50311) (Cons!50311 (h!56080 tuple2!50572) (t!357385 List!50435)) )
))
(declare-datatypes ((ListLongMap!2707 0))(
  ( (ListLongMap!2708 (toList!4075 List!50435)) )
))
(declare-fun lm!1477 () ListLongMap!2707)

(declare-fun lambda!163641 () Int)

(declare-fun forall!10008 (List!50435 Int) Bool)

(assert (=> start!439496 (= res!1855317 (forall!10008 (toList!4075 lm!1477) lambda!163641))))

(assert (=> start!439496 e!2784415))

(assert (=> start!439496 true))

(declare-fun e!2784418 () Bool)

(declare-fun inv!65909 (ListLongMap!2707) Bool)

(assert (=> start!439496 (and (inv!65909 lm!1477) e!2784418)))

(declare-fun tp_is_empty!27413 () Bool)

(assert (=> start!439496 tp_is_empty!27413))

(declare-fun e!2784409 () Bool)

(assert (=> start!439496 e!2784409))

(declare-fun b!4471424 () Bool)

(declare-fun e!2784413 () Bool)

(declare-fun isEmpty!28499 (ListLongMap!2707) Bool)

(assert (=> b!4471424 (= e!2784413 (not (isEmpty!28499 lm!1477)))))

(declare-datatypes ((Unit!88025 0))(
  ( (Unit!88026) )
))
(declare-fun lt!1659805 () Unit!88025)

(declare-fun e!2784419 () Unit!88025)

(assert (=> b!4471424 (= lt!1659805 e!2784419)))

(declare-fun c!761302 () Bool)

(declare-datatypes ((ListMap!3337 0))(
  ( (ListMap!3338 (toList!4076 List!50434)) )
))
(declare-fun lt!1659809 () ListMap!3337)

(declare-fun key!3287 () K!11725)

(declare-fun contains!12873 (ListMap!3337 K!11725) Bool)

(assert (=> b!4471424 (= c!761302 (contains!12873 lt!1659809 key!3287))))

(declare-fun b!4471425 () Bool)

(declare-fun res!1855313 () Bool)

(assert (=> b!4471425 (=> (not res!1855313) (not e!2784415))))

(declare-fun extractMap!1090 (List!50435) ListMap!3337)

(assert (=> b!4471425 (= res!1855313 (contains!12873 (extractMap!1090 (toList!4075 lm!1477)) key!3287))))

(declare-fun b!4471426 () Bool)

(declare-fun res!1855321 () Bool)

(assert (=> b!4471426 (=> (not res!1855321) (not e!2784415))))

(declare-datatypes ((Hashable!5429 0))(
  ( (HashableExt!5428 (__x!31132 Int)) )
))
(declare-fun hashF!1107 () Hashable!5429)

(declare-fun allKeysSameHashInMap!1141 (ListLongMap!2707 Hashable!5429) Bool)

(assert (=> b!4471426 (= res!1855321 (allKeysSameHashInMap!1141 lm!1477 hashF!1107))))

(declare-fun b!4471427 () Bool)

(declare-fun res!1855314 () Bool)

(declare-fun e!2784410 () Bool)

(assert (=> b!4471427 (=> (not res!1855314) (not e!2784410))))

(declare-fun newBucket!178 () List!50434)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!888 (List!50434 (_ BitVec 64) Hashable!5429) Bool)

(assert (=> b!4471427 (= res!1855314 (allKeysSameHash!888 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4471428 () Bool)

(declare-fun res!1855316 () Bool)

(declare-fun e!2784412 () Bool)

(assert (=> b!4471428 (=> res!1855316 e!2784412)))

(declare-fun noDuplicateKeys!1034 (List!50434) Bool)

(assert (=> b!4471428 (= res!1855316 (not (noDuplicateKeys!1034 newBucket!178)))))

(declare-fun b!4471429 () Bool)

(declare-fun e!2784411 () Unit!88025)

(declare-fun Unit!88027 () Unit!88025)

(assert (=> b!4471429 (= e!2784411 Unit!88027)))

(declare-fun b!4471430 () Bool)

(declare-fun Unit!88028 () Unit!88025)

(assert (=> b!4471430 (= e!2784411 Unit!88028)))

(declare-fun lt!1659815 () Unit!88025)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!34 (ListLongMap!2707 K!11725 Hashable!5429) Unit!88025)

(assert (=> b!4471430 (= lt!1659815 (lemmaNotInItsHashBucketThenNotInMap!34 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4471430 false))

(declare-fun b!4471431 () Bool)

(declare-fun Unit!88029 () Unit!88025)

(assert (=> b!4471431 (= e!2784419 Unit!88029)))

(declare-fun lt!1659812 () ListLongMap!2707)

(declare-fun lt!1659803 () Unit!88025)

(declare-fun lemmaInGenMapThenLongMapContainsHash!108 (ListLongMap!2707 K!11725 Hashable!5429) Unit!88025)

(assert (=> b!4471431 (= lt!1659803 (lemmaInGenMapThenLongMapContainsHash!108 lt!1659812 key!3287 hashF!1107))))

(declare-fun res!1855312 () Bool)

(declare-fun lt!1659807 () (_ BitVec 64))

(declare-fun contains!12874 (ListLongMap!2707 (_ BitVec 64)) Bool)

(assert (=> b!4471431 (= res!1855312 (contains!12874 lt!1659812 lt!1659807))))

(declare-fun e!2784414 () Bool)

(assert (=> b!4471431 (=> (not res!1855312) (not e!2784414))))

(assert (=> b!4471431 e!2784414))

(declare-fun b!4471432 () Bool)

(declare-fun tp!1336355 () Bool)

(assert (=> b!4471432 (= e!2784418 tp!1336355)))

(declare-fun b!4471433 () Bool)

(declare-fun e!2784421 () Bool)

(declare-fun e!2784416 () Bool)

(assert (=> b!4471433 (= e!2784421 e!2784416)))

(declare-fun res!1855311 () Bool)

(assert (=> b!4471433 (=> res!1855311 e!2784416)))

(declare-fun lt!1659802 () ListLongMap!2707)

(declare-fun tail!7520 (List!50435) List!50435)

(assert (=> b!4471433 (= res!1855311 (not (= (t!357385 (toList!4075 lm!1477)) (tail!7520 (toList!4075 lt!1659802)))))))

(declare-fun lt!1659810 () tuple2!50572)

(declare-fun +!1380 (ListLongMap!2707 tuple2!50572) ListLongMap!2707)

(assert (=> b!4471433 (= lt!1659802 (+!1380 lm!1477 lt!1659810))))

(declare-fun eq!527 (ListMap!3337 ListMap!3337) Bool)

(declare-fun -!296 (ListMap!3337 K!11725) ListMap!3337)

(assert (=> b!4471433 (eq!527 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)) (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))))

(assert (=> b!4471433 (= lt!1659810 (tuple2!50573 hash!344 newBucket!178))))

(declare-fun lt!1659811 () Unit!88025)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!26 ((_ BitVec 64) List!50434 List!50434 K!11725 Hashable!5429) Unit!88025)

(assert (=> b!4471433 (= lt!1659811 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!26 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1659816 () List!50435)

(assert (=> b!4471433 (contains!12873 (extractMap!1090 lt!1659816) key!3287)))

(declare-fun lt!1659813 () Unit!88025)

(declare-fun lemmaListContainsThenExtractedMapContains!30 (ListLongMap!2707 K!11725 Hashable!5429) Unit!88025)

(assert (=> b!4471433 (= lt!1659813 (lemmaListContainsThenExtractedMapContains!30 (ListLongMap!2708 lt!1659816) key!3287 hashF!1107))))

(declare-fun b!4471434 () Bool)

(declare-fun e!2784420 () Bool)

(assert (=> b!4471434 (= e!2784420 e!2784421)))

(declare-fun res!1855319 () Bool)

(assert (=> b!4471434 (=> res!1855319 e!2784421)))

(declare-fun containsKeyBiggerList!34 (List!50435 K!11725) Bool)

(assert (=> b!4471434 (= res!1855319 (not (containsKeyBiggerList!34 lt!1659816 key!3287)))))

(assert (=> b!4471434 (= lt!1659816 (Cons!50311 (h!56080 (toList!4075 lm!1477)) Nil!50311))))

(declare-fun b!4471435 () Bool)

(assert (=> b!4471435 (= e!2784414 false)))

(declare-fun b!4471436 () Bool)

(declare-fun Unit!88030 () Unit!88025)

(assert (=> b!4471436 (= e!2784419 Unit!88030)))

(declare-fun tp_is_empty!27415 () Bool)

(declare-fun b!4471437 () Bool)

(declare-fun tp!1336354 () Bool)

(assert (=> b!4471437 (= e!2784409 (and tp_is_empty!27413 tp_is_empty!27415 tp!1336354))))

(declare-fun b!4471438 () Bool)

(assert (=> b!4471438 (= e!2784412 e!2784420)))

(declare-fun res!1855308 () Bool)

(assert (=> b!4471438 (=> res!1855308 e!2784420)))

(declare-fun lt!1659801 () Bool)

(assert (=> b!4471438 (= res!1855308 lt!1659801)))

(declare-fun lt!1659799 () Unit!88025)

(assert (=> b!4471438 (= lt!1659799 e!2784411)))

(declare-fun c!761301 () Bool)

(assert (=> b!4471438 (= c!761301 lt!1659801)))

(declare-fun containsKey!1490 (List!50434 K!11725) Bool)

(assert (=> b!4471438 (= lt!1659801 (not (containsKey!1490 (_2!28580 (h!56080 (toList!4075 lm!1477))) key!3287)))))

(declare-fun b!4471439 () Bool)

(declare-fun e!2784417 () Bool)

(assert (=> b!4471439 (= e!2784417 e!2784413)))

(declare-fun res!1855320 () Bool)

(assert (=> b!4471439 (=> res!1855320 e!2784413)))

(assert (=> b!4471439 (= res!1855320 (not (= lt!1659809 (extractMap!1090 (t!357385 (toList!4075 lm!1477))))))))

(assert (=> b!4471439 (= lt!1659809 (extractMap!1090 (toList!4075 lt!1659812)))))

(declare-fun b!4471440 () Bool)

(assert (=> b!4471440 (= e!2784410 (not e!2784412))))

(declare-fun res!1855315 () Bool)

(assert (=> b!4471440 (=> res!1855315 e!2784412)))

(declare-fun lt!1659806 () List!50434)

(declare-fun removePairForKey!661 (List!50434 K!11725) List!50434)

(assert (=> b!4471440 (= res!1855315 (not (= newBucket!178 (removePairForKey!661 lt!1659806 key!3287))))))

(declare-fun lt!1659814 () tuple2!50572)

(declare-fun lt!1659804 () Unit!88025)

(declare-fun forallContained!2275 (List!50435 Int tuple2!50572) Unit!88025)

(assert (=> b!4471440 (= lt!1659804 (forallContained!2275 (toList!4075 lm!1477) lambda!163641 lt!1659814))))

(declare-fun contains!12875 (List!50435 tuple2!50572) Bool)

(assert (=> b!4471440 (contains!12875 (toList!4075 lm!1477) lt!1659814)))

(assert (=> b!4471440 (= lt!1659814 (tuple2!50573 hash!344 lt!1659806))))

(declare-fun lt!1659808 () Unit!88025)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!546 (List!50435 (_ BitVec 64) List!50434) Unit!88025)

(assert (=> b!4471440 (= lt!1659808 (lemmaGetValueByKeyImpliesContainsTuple!546 (toList!4075 lm!1477) hash!344 lt!1659806))))

(declare-fun apply!11771 (ListLongMap!2707 (_ BitVec 64)) List!50434)

(assert (=> b!4471440 (= lt!1659806 (apply!11771 lm!1477 hash!344))))

(assert (=> b!4471440 (contains!12874 lm!1477 lt!1659807)))

(declare-fun lt!1659800 () Unit!88025)

(assert (=> b!4471440 (= lt!1659800 (lemmaInGenMapThenLongMapContainsHash!108 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4471441 () Bool)

(assert (=> b!4471441 (= e!2784415 e!2784410)))

(declare-fun res!1855309 () Bool)

(assert (=> b!4471441 (=> (not res!1855309) (not e!2784410))))

(assert (=> b!4471441 (= res!1855309 (= lt!1659807 hash!344))))

(declare-fun hash!2471 (Hashable!5429 K!11725) (_ BitVec 64))

(assert (=> b!4471441 (= lt!1659807 (hash!2471 hashF!1107 key!3287))))

(declare-fun b!4471442 () Bool)

(assert (=> b!4471442 (= e!2784416 e!2784417)))

(declare-fun res!1855318 () Bool)

(assert (=> b!4471442 (=> res!1855318 e!2784417)))

(assert (=> b!4471442 (= res!1855318 (not (= lt!1659802 (+!1380 lt!1659812 lt!1659810))))))

(declare-fun tail!7521 (ListLongMap!2707) ListLongMap!2707)

(assert (=> b!4471442 (= lt!1659812 (tail!7521 lm!1477))))

(declare-fun b!4471443 () Bool)

(declare-fun res!1855310 () Bool)

(assert (=> b!4471443 (=> res!1855310 e!2784412)))

(get-info :version)

(assert (=> b!4471443 (= res!1855310 (or ((_ is Nil!50311) (toList!4075 lm!1477)) (not (= (_1!28580 (h!56080 (toList!4075 lm!1477))) hash!344))))))

(assert (= (and start!439496 res!1855317) b!4471426))

(assert (= (and b!4471426 res!1855321) b!4471425))

(assert (= (and b!4471425 res!1855313) b!4471441))

(assert (= (and b!4471441 res!1855309) b!4471427))

(assert (= (and b!4471427 res!1855314) b!4471440))

(assert (= (and b!4471440 (not res!1855315)) b!4471428))

(assert (= (and b!4471428 (not res!1855316)) b!4471443))

(assert (= (and b!4471443 (not res!1855310)) b!4471438))

(assert (= (and b!4471438 c!761301) b!4471430))

(assert (= (and b!4471438 (not c!761301)) b!4471429))

(assert (= (and b!4471438 (not res!1855308)) b!4471434))

(assert (= (and b!4471434 (not res!1855319)) b!4471433))

(assert (= (and b!4471433 (not res!1855311)) b!4471442))

(assert (= (and b!4471442 (not res!1855318)) b!4471439))

(assert (= (and b!4471439 (not res!1855320)) b!4471424))

(assert (= (and b!4471424 c!761302) b!4471431))

(assert (= (and b!4471424 (not c!761302)) b!4471436))

(assert (= (and b!4471431 res!1855312) b!4471435))

(assert (= start!439496 b!4471432))

(assert (= (and start!439496 ((_ is Cons!50310) newBucket!178)) b!4471437))

(declare-fun m!5179425 () Bool)

(assert (=> b!4471431 m!5179425))

(declare-fun m!5179427 () Bool)

(assert (=> b!4471431 m!5179427))

(declare-fun m!5179429 () Bool)

(assert (=> b!4471430 m!5179429))

(declare-fun m!5179431 () Bool)

(assert (=> b!4471424 m!5179431))

(declare-fun m!5179433 () Bool)

(assert (=> b!4471424 m!5179433))

(declare-fun m!5179435 () Bool)

(assert (=> b!4471434 m!5179435))

(declare-fun m!5179437 () Bool)

(assert (=> start!439496 m!5179437))

(declare-fun m!5179439 () Bool)

(assert (=> start!439496 m!5179439))

(declare-fun m!5179441 () Bool)

(assert (=> b!4471433 m!5179441))

(declare-fun m!5179443 () Bool)

(assert (=> b!4471433 m!5179443))

(declare-fun m!5179445 () Bool)

(assert (=> b!4471433 m!5179445))

(assert (=> b!4471433 m!5179443))

(declare-fun m!5179447 () Bool)

(assert (=> b!4471433 m!5179447))

(assert (=> b!4471433 m!5179445))

(declare-fun m!5179449 () Bool)

(assert (=> b!4471433 m!5179449))

(declare-fun m!5179451 () Bool)

(assert (=> b!4471433 m!5179451))

(declare-fun m!5179453 () Bool)

(assert (=> b!4471433 m!5179453))

(declare-fun m!5179455 () Bool)

(assert (=> b!4471433 m!5179455))

(declare-fun m!5179457 () Bool)

(assert (=> b!4471433 m!5179457))

(declare-fun m!5179459 () Bool)

(assert (=> b!4471433 m!5179459))

(assert (=> b!4471433 m!5179441))

(assert (=> b!4471433 m!5179451))

(declare-fun m!5179461 () Bool)

(assert (=> b!4471441 m!5179461))

(declare-fun m!5179463 () Bool)

(assert (=> b!4471442 m!5179463))

(declare-fun m!5179465 () Bool)

(assert (=> b!4471442 m!5179465))

(declare-fun m!5179467 () Bool)

(assert (=> b!4471427 m!5179467))

(declare-fun m!5179469 () Bool)

(assert (=> b!4471439 m!5179469))

(declare-fun m!5179471 () Bool)

(assert (=> b!4471439 m!5179471))

(declare-fun m!5179473 () Bool)

(assert (=> b!4471438 m!5179473))

(declare-fun m!5179475 () Bool)

(assert (=> b!4471426 m!5179475))

(declare-fun m!5179477 () Bool)

(assert (=> b!4471425 m!5179477))

(assert (=> b!4471425 m!5179477))

(declare-fun m!5179479 () Bool)

(assert (=> b!4471425 m!5179479))

(declare-fun m!5179481 () Bool)

(assert (=> b!4471440 m!5179481))

(declare-fun m!5179483 () Bool)

(assert (=> b!4471440 m!5179483))

(declare-fun m!5179485 () Bool)

(assert (=> b!4471440 m!5179485))

(declare-fun m!5179487 () Bool)

(assert (=> b!4471440 m!5179487))

(declare-fun m!5179489 () Bool)

(assert (=> b!4471440 m!5179489))

(declare-fun m!5179491 () Bool)

(assert (=> b!4471440 m!5179491))

(declare-fun m!5179493 () Bool)

(assert (=> b!4471440 m!5179493))

(declare-fun m!5179495 () Bool)

(assert (=> b!4471428 m!5179495))

(check-sat (not b!4471434) tp_is_empty!27413 (not b!4471430) (not b!4471425) (not start!439496) (not b!4471442) (not b!4471437) (not b!4471438) (not b!4471433) (not b!4471432) (not b!4471431) (not b!4471428) (not b!4471426) (not b!4471424) (not b!4471427) (not b!4471440) (not b!4471441) tp_is_empty!27415 (not b!4471439))
(check-sat)
(get-model)

(declare-fun d!1364387 () Bool)

(declare-fun res!1855326 () Bool)

(declare-fun e!2784426 () Bool)

(assert (=> d!1364387 (=> res!1855326 e!2784426)))

(assert (=> d!1364387 (= res!1855326 (and ((_ is Cons!50310) (_2!28580 (h!56080 (toList!4075 lm!1477)))) (= (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))) key!3287)))))

(assert (=> d!1364387 (= (containsKey!1490 (_2!28580 (h!56080 (toList!4075 lm!1477))) key!3287) e!2784426)))

(declare-fun b!4471448 () Bool)

(declare-fun e!2784427 () Bool)

(assert (=> b!4471448 (= e!2784426 e!2784427)))

(declare-fun res!1855327 () Bool)

(assert (=> b!4471448 (=> (not res!1855327) (not e!2784427))))

(assert (=> b!4471448 (= res!1855327 ((_ is Cons!50310) (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(declare-fun b!4471449 () Bool)

(assert (=> b!4471449 (= e!2784427 (containsKey!1490 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477)))) key!3287))))

(assert (= (and d!1364387 (not res!1855326)) b!4471448))

(assert (= (and b!4471448 res!1855327) b!4471449))

(declare-fun m!5179497 () Bool)

(assert (=> b!4471449 m!5179497))

(assert (=> b!4471438 d!1364387))

(declare-fun d!1364389 () Bool)

(assert (=> d!1364389 true))

(assert (=> d!1364389 true))

(declare-fun lambda!163644 () Int)

(declare-fun forall!10009 (List!50434 Int) Bool)

(assert (=> d!1364389 (= (allKeysSameHash!888 newBucket!178 hash!344 hashF!1107) (forall!10009 newBucket!178 lambda!163644))))

(declare-fun bs!796242 () Bool)

(assert (= bs!796242 d!1364389))

(declare-fun m!5179499 () Bool)

(assert (=> bs!796242 m!5179499))

(assert (=> b!4471427 d!1364389))

(declare-fun d!1364391 () Bool)

(declare-fun res!1855332 () Bool)

(declare-fun e!2784432 () Bool)

(assert (=> d!1364391 (=> res!1855332 e!2784432)))

(assert (=> d!1364391 (= res!1855332 (not ((_ is Cons!50310) newBucket!178)))))

(assert (=> d!1364391 (= (noDuplicateKeys!1034 newBucket!178) e!2784432)))

(declare-fun b!4471458 () Bool)

(declare-fun e!2784433 () Bool)

(assert (=> b!4471458 (= e!2784432 e!2784433)))

(declare-fun res!1855333 () Bool)

(assert (=> b!4471458 (=> (not res!1855333) (not e!2784433))))

(assert (=> b!4471458 (= res!1855333 (not (containsKey!1490 (t!357384 newBucket!178) (_1!28579 (h!56079 newBucket!178)))))))

(declare-fun b!4471459 () Bool)

(assert (=> b!4471459 (= e!2784433 (noDuplicateKeys!1034 (t!357384 newBucket!178)))))

(assert (= (and d!1364391 (not res!1855332)) b!4471458))

(assert (= (and b!4471458 res!1855333) b!4471459))

(declare-fun m!5179501 () Bool)

(assert (=> b!4471458 m!5179501))

(declare-fun m!5179503 () Bool)

(assert (=> b!4471459 m!5179503))

(assert (=> b!4471428 d!1364391))

(declare-fun bs!796243 () Bool)

(declare-fun d!1364393 () Bool)

(assert (= bs!796243 (and d!1364393 start!439496)))

(declare-fun lambda!163647 () Int)

(assert (=> bs!796243 (not (= lambda!163647 lambda!163641))))

(assert (=> d!1364393 true))

(assert (=> d!1364393 (= (allKeysSameHashInMap!1141 lm!1477 hashF!1107) (forall!10008 (toList!4075 lm!1477) lambda!163647))))

(declare-fun bs!796244 () Bool)

(assert (= bs!796244 d!1364393))

(declare-fun m!5179505 () Bool)

(assert (=> bs!796244 m!5179505))

(assert (=> b!4471426 d!1364393))

(declare-fun bs!796247 () Bool)

(declare-fun d!1364395 () Bool)

(assert (= bs!796247 (and d!1364395 start!439496)))

(declare-fun lambda!163653 () Int)

(assert (=> bs!796247 (= lambda!163653 lambda!163641)))

(declare-fun bs!796248 () Bool)

(assert (= bs!796248 (and d!1364395 d!1364393)))

(assert (=> bs!796248 (not (= lambda!163653 lambda!163647))))

(assert (=> d!1364395 (not (contains!12873 (extractMap!1090 (toList!4075 lm!1477)) key!3287))))

(declare-fun lt!1659822 () Unit!88025)

(declare-fun choose!28622 (ListLongMap!2707 K!11725 Hashable!5429) Unit!88025)

(assert (=> d!1364395 (= lt!1659822 (choose!28622 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1364395 (forall!10008 (toList!4075 lm!1477) lambda!163653)))

(assert (=> d!1364395 (= (lemmaNotInItsHashBucketThenNotInMap!34 lm!1477 key!3287 hashF!1107) lt!1659822)))

(declare-fun bs!796249 () Bool)

(assert (= bs!796249 d!1364395))

(assert (=> bs!796249 m!5179477))

(assert (=> bs!796249 m!5179477))

(assert (=> bs!796249 m!5179479))

(declare-fun m!5179521 () Bool)

(assert (=> bs!796249 m!5179521))

(declare-fun m!5179523 () Bool)

(assert (=> bs!796249 m!5179523))

(assert (=> b!4471430 d!1364395))

(declare-fun d!1364407 () Bool)

(declare-fun hash!2474 (Hashable!5429 K!11725) (_ BitVec 64))

(assert (=> d!1364407 (= (hash!2471 hashF!1107 key!3287) (hash!2474 hashF!1107 key!3287))))

(declare-fun bs!796250 () Bool)

(assert (= bs!796250 d!1364407))

(declare-fun m!5179525 () Bool)

(assert (=> bs!796250 m!5179525))

(assert (=> b!4471441 d!1364407))

(declare-fun bs!796262 () Bool)

(declare-fun d!1364409 () Bool)

(assert (= bs!796262 (and d!1364409 start!439496)))

(declare-fun lambda!163663 () Int)

(assert (=> bs!796262 (= lambda!163663 lambda!163641)))

(declare-fun bs!796263 () Bool)

(assert (= bs!796263 (and d!1364409 d!1364393)))

(assert (=> bs!796263 (not (= lambda!163663 lambda!163647))))

(declare-fun bs!796264 () Bool)

(assert (= bs!796264 (and d!1364409 d!1364395)))

(assert (=> bs!796264 (= lambda!163663 lambda!163653)))

(declare-fun lt!1659835 () ListMap!3337)

(declare-fun invariantList!933 (List!50434) Bool)

(assert (=> d!1364409 (invariantList!933 (toList!4076 lt!1659835))))

(declare-fun e!2784464 () ListMap!3337)

(assert (=> d!1364409 (= lt!1659835 e!2784464)))

(declare-fun c!761309 () Bool)

(assert (=> d!1364409 (= c!761309 ((_ is Cons!50311) (t!357385 (toList!4075 lm!1477))))))

(assert (=> d!1364409 (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163663)))

(assert (=> d!1364409 (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1659835)))

(declare-fun b!4471498 () Bool)

(declare-fun addToMapMapFromBucket!595 (List!50434 ListMap!3337) ListMap!3337)

(assert (=> b!4471498 (= e!2784464 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))))))

(declare-fun b!4471499 () Bool)

(assert (=> b!4471499 (= e!2784464 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364409 c!761309) b!4471498))

(assert (= (and d!1364409 (not c!761309)) b!4471499))

(declare-fun m!5179569 () Bool)

(assert (=> d!1364409 m!5179569))

(declare-fun m!5179571 () Bool)

(assert (=> d!1364409 m!5179571))

(declare-fun m!5179573 () Bool)

(assert (=> b!4471498 m!5179573))

(assert (=> b!4471498 m!5179573))

(declare-fun m!5179575 () Bool)

(assert (=> b!4471498 m!5179575))

(assert (=> b!4471439 d!1364409))

(declare-fun bs!796265 () Bool)

(declare-fun d!1364421 () Bool)

(assert (= bs!796265 (and d!1364421 start!439496)))

(declare-fun lambda!163664 () Int)

(assert (=> bs!796265 (= lambda!163664 lambda!163641)))

(declare-fun bs!796266 () Bool)

(assert (= bs!796266 (and d!1364421 d!1364393)))

(assert (=> bs!796266 (not (= lambda!163664 lambda!163647))))

(declare-fun bs!796267 () Bool)

(assert (= bs!796267 (and d!1364421 d!1364395)))

(assert (=> bs!796267 (= lambda!163664 lambda!163653)))

(declare-fun bs!796268 () Bool)

(assert (= bs!796268 (and d!1364421 d!1364409)))

(assert (=> bs!796268 (= lambda!163664 lambda!163663)))

(declare-fun lt!1659836 () ListMap!3337)

(assert (=> d!1364421 (invariantList!933 (toList!4076 lt!1659836))))

(declare-fun e!2784465 () ListMap!3337)

(assert (=> d!1364421 (= lt!1659836 e!2784465)))

(declare-fun c!761310 () Bool)

(assert (=> d!1364421 (= c!761310 ((_ is Cons!50311) (toList!4075 lt!1659812)))))

(assert (=> d!1364421 (forall!10008 (toList!4075 lt!1659812) lambda!163664)))

(assert (=> d!1364421 (= (extractMap!1090 (toList!4075 lt!1659812)) lt!1659836)))

(declare-fun b!4471500 () Bool)

(assert (=> b!4471500 (= e!2784465 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))))))

(declare-fun b!4471501 () Bool)

(assert (=> b!4471501 (= e!2784465 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364421 c!761310) b!4471500))

(assert (= (and d!1364421 (not c!761310)) b!4471501))

(declare-fun m!5179577 () Bool)

(assert (=> d!1364421 m!5179577))

(declare-fun m!5179579 () Bool)

(assert (=> d!1364421 m!5179579))

(declare-fun m!5179581 () Bool)

(assert (=> b!4471500 m!5179581))

(assert (=> b!4471500 m!5179581))

(declare-fun m!5179583 () Bool)

(assert (=> b!4471500 m!5179583))

(assert (=> b!4471439 d!1364421))

(declare-fun bs!796275 () Bool)

(declare-fun d!1364423 () Bool)

(assert (= bs!796275 (and d!1364423 d!1364395)))

(declare-fun lambda!163668 () Int)

(assert (=> bs!796275 (= lambda!163668 lambda!163653)))

(declare-fun bs!796276 () Bool)

(assert (= bs!796276 (and d!1364423 d!1364393)))

(assert (=> bs!796276 (not (= lambda!163668 lambda!163647))))

(declare-fun bs!796277 () Bool)

(assert (= bs!796277 (and d!1364423 d!1364409)))

(assert (=> bs!796277 (= lambda!163668 lambda!163663)))

(declare-fun bs!796278 () Bool)

(assert (= bs!796278 (and d!1364423 d!1364421)))

(assert (=> bs!796278 (= lambda!163668 lambda!163664)))

(declare-fun bs!796279 () Bool)

(assert (= bs!796279 (and d!1364423 start!439496)))

(assert (=> bs!796279 (= lambda!163668 lambda!163641)))

(assert (=> d!1364423 (contains!12874 lm!1477 (hash!2471 hashF!1107 key!3287))))

(declare-fun lt!1659843 () Unit!88025)

(declare-fun choose!28623 (ListLongMap!2707 K!11725 Hashable!5429) Unit!88025)

(assert (=> d!1364423 (= lt!1659843 (choose!28623 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1364423 (forall!10008 (toList!4075 lm!1477) lambda!163668)))

(assert (=> d!1364423 (= (lemmaInGenMapThenLongMapContainsHash!108 lm!1477 key!3287 hashF!1107) lt!1659843)))

(declare-fun bs!796280 () Bool)

(assert (= bs!796280 d!1364423))

(assert (=> bs!796280 m!5179461))

(assert (=> bs!796280 m!5179461))

(declare-fun m!5179601 () Bool)

(assert (=> bs!796280 m!5179601))

(declare-fun m!5179603 () Bool)

(assert (=> bs!796280 m!5179603))

(declare-fun m!5179605 () Bool)

(assert (=> bs!796280 m!5179605))

(assert (=> b!4471440 d!1364423))

(declare-fun b!4471514 () Bool)

(declare-fun e!2784472 () List!50434)

(assert (=> b!4471514 (= e!2784472 (Cons!50310 (h!56079 lt!1659806) (removePairForKey!661 (t!357384 lt!1659806) key!3287)))))

(declare-fun b!4471515 () Bool)

(assert (=> b!4471515 (= e!2784472 Nil!50310)))

(declare-fun b!4471513 () Bool)

(declare-fun e!2784471 () List!50434)

(assert (=> b!4471513 (= e!2784471 e!2784472)))

(declare-fun c!761317 () Bool)

(assert (=> b!4471513 (= c!761317 ((_ is Cons!50310) lt!1659806))))

(declare-fun d!1364431 () Bool)

(declare-fun lt!1659846 () List!50434)

(assert (=> d!1364431 (not (containsKey!1490 lt!1659846 key!3287))))

(assert (=> d!1364431 (= lt!1659846 e!2784471)))

(declare-fun c!761316 () Bool)

(assert (=> d!1364431 (= c!761316 (and ((_ is Cons!50310) lt!1659806) (= (_1!28579 (h!56079 lt!1659806)) key!3287)))))

(assert (=> d!1364431 (noDuplicateKeys!1034 lt!1659806)))

(assert (=> d!1364431 (= (removePairForKey!661 lt!1659806 key!3287) lt!1659846)))

(declare-fun b!4471512 () Bool)

(assert (=> b!4471512 (= e!2784471 (t!357384 lt!1659806))))

(assert (= (and d!1364431 c!761316) b!4471512))

(assert (= (and d!1364431 (not c!761316)) b!4471513))

(assert (= (and b!4471513 c!761317) b!4471514))

(assert (= (and b!4471513 (not c!761317)) b!4471515))

(declare-fun m!5179607 () Bool)

(assert (=> b!4471514 m!5179607))

(declare-fun m!5179609 () Bool)

(assert (=> d!1364431 m!5179609))

(declare-fun m!5179611 () Bool)

(assert (=> d!1364431 m!5179611))

(assert (=> b!4471440 d!1364431))

(declare-fun d!1364433 () Bool)

(declare-datatypes ((Option!10938 0))(
  ( (None!10937) (Some!10937 (v!44271 List!50434)) )
))
(declare-fun get!16406 (Option!10938) List!50434)

(declare-fun getValueByKey!924 (List!50435 (_ BitVec 64)) Option!10938)

(assert (=> d!1364433 (= (apply!11771 lm!1477 hash!344) (get!16406 (getValueByKey!924 (toList!4075 lm!1477) hash!344)))))

(declare-fun bs!796281 () Bool)

(assert (= bs!796281 d!1364433))

(declare-fun m!5179613 () Bool)

(assert (=> bs!796281 m!5179613))

(assert (=> bs!796281 m!5179613))

(declare-fun m!5179615 () Bool)

(assert (=> bs!796281 m!5179615))

(assert (=> b!4471440 d!1364433))

(declare-fun d!1364435 () Bool)

(declare-fun dynLambda!21022 (Int tuple2!50572) Bool)

(assert (=> d!1364435 (dynLambda!21022 lambda!163641 lt!1659814)))

(declare-fun lt!1659873 () Unit!88025)

(declare-fun choose!28624 (List!50435 Int tuple2!50572) Unit!88025)

(assert (=> d!1364435 (= lt!1659873 (choose!28624 (toList!4075 lm!1477) lambda!163641 lt!1659814))))

(declare-fun e!2784493 () Bool)

(assert (=> d!1364435 e!2784493))

(declare-fun res!1855369 () Bool)

(assert (=> d!1364435 (=> (not res!1855369) (not e!2784493))))

(assert (=> d!1364435 (= res!1855369 (forall!10008 (toList!4075 lm!1477) lambda!163641))))

(assert (=> d!1364435 (= (forallContained!2275 (toList!4075 lm!1477) lambda!163641 lt!1659814) lt!1659873)))

(declare-fun b!4471545 () Bool)

(assert (=> b!4471545 (= e!2784493 (contains!12875 (toList!4075 lm!1477) lt!1659814))))

(assert (= (and d!1364435 res!1855369) b!4471545))

(declare-fun b_lambda!148565 () Bool)

(assert (=> (not b_lambda!148565) (not d!1364435)))

(declare-fun m!5179637 () Bool)

(assert (=> d!1364435 m!5179637))

(declare-fun m!5179639 () Bool)

(assert (=> d!1364435 m!5179639))

(assert (=> d!1364435 m!5179437))

(assert (=> b!4471545 m!5179491))

(assert (=> b!4471440 d!1364435))

(declare-fun d!1364439 () Bool)

(declare-fun e!2784504 () Bool)

(assert (=> d!1364439 e!2784504))

(declare-fun res!1855380 () Bool)

(assert (=> d!1364439 (=> res!1855380 e!2784504)))

(declare-fun lt!1659899 () Bool)

(assert (=> d!1364439 (= res!1855380 (not lt!1659899))))

(declare-fun lt!1659900 () Bool)

(assert (=> d!1364439 (= lt!1659899 lt!1659900)))

(declare-fun lt!1659901 () Unit!88025)

(declare-fun e!2784503 () Unit!88025)

(assert (=> d!1364439 (= lt!1659901 e!2784503)))

(declare-fun c!761329 () Bool)

(assert (=> d!1364439 (= c!761329 lt!1659900)))

(declare-fun containsKey!1493 (List!50435 (_ BitVec 64)) Bool)

(assert (=> d!1364439 (= lt!1659900 (containsKey!1493 (toList!4075 lm!1477) lt!1659807))))

(assert (=> d!1364439 (= (contains!12874 lm!1477 lt!1659807) lt!1659899)))

(declare-fun b!4471560 () Bool)

(declare-fun lt!1659902 () Unit!88025)

(assert (=> b!4471560 (= e!2784503 lt!1659902)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!828 (List!50435 (_ BitVec 64)) Unit!88025)

(assert (=> b!4471560 (= lt!1659902 (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lm!1477) lt!1659807))))

(declare-fun isDefined!8225 (Option!10938) Bool)

(assert (=> b!4471560 (isDefined!8225 (getValueByKey!924 (toList!4075 lm!1477) lt!1659807))))

(declare-fun b!4471561 () Bool)

(declare-fun Unit!88034 () Unit!88025)

(assert (=> b!4471561 (= e!2784503 Unit!88034)))

(declare-fun b!4471562 () Bool)

(assert (=> b!4471562 (= e!2784504 (isDefined!8225 (getValueByKey!924 (toList!4075 lm!1477) lt!1659807)))))

(assert (= (and d!1364439 c!761329) b!4471560))

(assert (= (and d!1364439 (not c!761329)) b!4471561))

(assert (= (and d!1364439 (not res!1855380)) b!4471562))

(declare-fun m!5179663 () Bool)

(assert (=> d!1364439 m!5179663))

(declare-fun m!5179667 () Bool)

(assert (=> b!4471560 m!5179667))

(declare-fun m!5179673 () Bool)

(assert (=> b!4471560 m!5179673))

(assert (=> b!4471560 m!5179673))

(declare-fun m!5179675 () Bool)

(assert (=> b!4471560 m!5179675))

(assert (=> b!4471562 m!5179673))

(assert (=> b!4471562 m!5179673))

(assert (=> b!4471562 m!5179675))

(assert (=> b!4471440 d!1364439))

(declare-fun d!1364449 () Bool)

(declare-fun lt!1659911 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8120 (List!50435) (InoxSet tuple2!50572))

(assert (=> d!1364449 (= lt!1659911 (select (content!8120 (toList!4075 lm!1477)) lt!1659814))))

(declare-fun e!2784518 () Bool)

(assert (=> d!1364449 (= lt!1659911 e!2784518)))

(declare-fun res!1855389 () Bool)

(assert (=> d!1364449 (=> (not res!1855389) (not e!2784518))))

(assert (=> d!1364449 (= res!1855389 ((_ is Cons!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364449 (= (contains!12875 (toList!4075 lm!1477) lt!1659814) lt!1659911)))

(declare-fun b!4471579 () Bool)

(declare-fun e!2784517 () Bool)

(assert (=> b!4471579 (= e!2784518 e!2784517)))

(declare-fun res!1855390 () Bool)

(assert (=> b!4471579 (=> res!1855390 e!2784517)))

(assert (=> b!4471579 (= res!1855390 (= (h!56080 (toList!4075 lm!1477)) lt!1659814))))

(declare-fun b!4471580 () Bool)

(assert (=> b!4471580 (= e!2784517 (contains!12875 (t!357385 (toList!4075 lm!1477)) lt!1659814))))

(assert (= (and d!1364449 res!1855389) b!4471579))

(assert (= (and b!4471579 (not res!1855390)) b!4471580))

(declare-fun m!5179681 () Bool)

(assert (=> d!1364449 m!5179681))

(declare-fun m!5179683 () Bool)

(assert (=> d!1364449 m!5179683))

(declare-fun m!5179685 () Bool)

(assert (=> b!4471580 m!5179685))

(assert (=> b!4471440 d!1364449))

(declare-fun d!1364453 () Bool)

(assert (=> d!1364453 (contains!12875 (toList!4075 lm!1477) (tuple2!50573 hash!344 lt!1659806))))

(declare-fun lt!1659923 () Unit!88025)

(declare-fun choose!28625 (List!50435 (_ BitVec 64) List!50434) Unit!88025)

(assert (=> d!1364453 (= lt!1659923 (choose!28625 (toList!4075 lm!1477) hash!344 lt!1659806))))

(declare-fun e!2784527 () Bool)

(assert (=> d!1364453 e!2784527))

(declare-fun res!1855395 () Bool)

(assert (=> d!1364453 (=> (not res!1855395) (not e!2784527))))

(declare-fun isStrictlySorted!347 (List!50435) Bool)

(assert (=> d!1364453 (= res!1855395 (isStrictlySorted!347 (toList!4075 lm!1477)))))

(assert (=> d!1364453 (= (lemmaGetValueByKeyImpliesContainsTuple!546 (toList!4075 lm!1477) hash!344 lt!1659806) lt!1659923)))

(declare-fun b!4471593 () Bool)

(assert (=> b!4471593 (= e!2784527 (= (getValueByKey!924 (toList!4075 lm!1477) hash!344) (Some!10937 lt!1659806)))))

(assert (= (and d!1364453 res!1855395) b!4471593))

(declare-fun m!5179693 () Bool)

(assert (=> d!1364453 m!5179693))

(declare-fun m!5179695 () Bool)

(assert (=> d!1364453 m!5179695))

(declare-fun m!5179697 () Bool)

(assert (=> d!1364453 m!5179697))

(assert (=> b!4471593 m!5179613))

(assert (=> b!4471440 d!1364453))

(declare-fun d!1364457 () Bool)

(declare-fun res!1855405 () Bool)

(declare-fun e!2784538 () Bool)

(assert (=> d!1364457 (=> res!1855405 e!2784538)))

(assert (=> d!1364457 (= res!1855405 ((_ is Nil!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364457 (= (forall!10008 (toList!4075 lm!1477) lambda!163641) e!2784538)))

(declare-fun b!4471605 () Bool)

(declare-fun e!2784539 () Bool)

(assert (=> b!4471605 (= e!2784538 e!2784539)))

(declare-fun res!1855406 () Bool)

(assert (=> b!4471605 (=> (not res!1855406) (not e!2784539))))

(assert (=> b!4471605 (= res!1855406 (dynLambda!21022 lambda!163641 (h!56080 (toList!4075 lm!1477))))))

(declare-fun b!4471606 () Bool)

(assert (=> b!4471606 (= e!2784539 (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163641))))

(assert (= (and d!1364457 (not res!1855405)) b!4471605))

(assert (= (and b!4471605 res!1855406) b!4471606))

(declare-fun b_lambda!148569 () Bool)

(assert (=> (not b_lambda!148569) (not b!4471605)))

(declare-fun m!5179713 () Bool)

(assert (=> b!4471605 m!5179713))

(declare-fun m!5179715 () Bool)

(assert (=> b!4471606 m!5179715))

(assert (=> start!439496 d!1364457))

(declare-fun d!1364463 () Bool)

(assert (=> d!1364463 (= (inv!65909 lm!1477) (isStrictlySorted!347 (toList!4075 lm!1477)))))

(declare-fun bs!796297 () Bool)

(assert (= bs!796297 d!1364463))

(assert (=> bs!796297 m!5179697))

(assert (=> start!439496 d!1364463))

(declare-fun bs!796306 () Bool)

(declare-fun d!1364467 () Bool)

(assert (= bs!796306 (and d!1364467 d!1364395)))

(declare-fun lambda!163674 () Int)

(assert (=> bs!796306 (= lambda!163674 lambda!163653)))

(declare-fun bs!796307 () Bool)

(assert (= bs!796307 (and d!1364467 d!1364393)))

(assert (=> bs!796307 (not (= lambda!163674 lambda!163647))))

(declare-fun bs!796308 () Bool)

(assert (= bs!796308 (and d!1364467 d!1364423)))

(assert (=> bs!796308 (= lambda!163674 lambda!163668)))

(declare-fun bs!796309 () Bool)

(assert (= bs!796309 (and d!1364467 d!1364409)))

(assert (=> bs!796309 (= lambda!163674 lambda!163663)))

(declare-fun bs!796310 () Bool)

(assert (= bs!796310 (and d!1364467 d!1364421)))

(assert (=> bs!796310 (= lambda!163674 lambda!163664)))

(declare-fun bs!796311 () Bool)

(assert (= bs!796311 (and d!1364467 start!439496)))

(assert (=> bs!796311 (= lambda!163674 lambda!163641)))

(declare-fun lt!1659933 () ListMap!3337)

(assert (=> d!1364467 (invariantList!933 (toList!4076 lt!1659933))))

(declare-fun e!2784544 () ListMap!3337)

(assert (=> d!1364467 (= lt!1659933 e!2784544)))

(declare-fun c!761341 () Bool)

(assert (=> d!1364467 (= c!761341 ((_ is Cons!50311) (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))

(assert (=> d!1364467 (forall!10008 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311) lambda!163674)))

(assert (=> d!1364467 (= (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) lt!1659933)))

(declare-fun b!4471613 () Bool)

(assert (=> b!4471613 (= e!2784544 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun b!4471614 () Bool)

(assert (=> b!4471614 (= e!2784544 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364467 c!761341) b!4471613))

(assert (= (and d!1364467 (not c!761341)) b!4471614))

(declare-fun m!5179733 () Bool)

(assert (=> d!1364467 m!5179733))

(declare-fun m!5179735 () Bool)

(assert (=> d!1364467 m!5179735))

(declare-fun m!5179737 () Bool)

(assert (=> b!4471613 m!5179737))

(assert (=> b!4471613 m!5179737))

(declare-fun m!5179739 () Bool)

(assert (=> b!4471613 m!5179739))

(assert (=> b!4471433 d!1364467))

(declare-fun d!1364471 () Bool)

(declare-fun e!2784567 () Bool)

(assert (=> d!1364471 e!2784567))

(declare-fun res!1855426 () Bool)

(assert (=> d!1364471 (=> (not res!1855426) (not e!2784567))))

(declare-fun lt!1659965 () ListLongMap!2707)

(assert (=> d!1364471 (= res!1855426 (contains!12874 lt!1659965 (_1!28580 lt!1659810)))))

(declare-fun lt!1659966 () List!50435)

(assert (=> d!1364471 (= lt!1659965 (ListLongMap!2708 lt!1659966))))

(declare-fun lt!1659963 () Unit!88025)

(declare-fun lt!1659964 () Unit!88025)

(assert (=> d!1364471 (= lt!1659963 lt!1659964)))

(assert (=> d!1364471 (= (getValueByKey!924 lt!1659966 (_1!28580 lt!1659810)) (Some!10937 (_2!28580 lt!1659810)))))

(declare-fun lemmaContainsTupThenGetReturnValue!590 (List!50435 (_ BitVec 64) List!50434) Unit!88025)

(assert (=> d!1364471 (= lt!1659964 (lemmaContainsTupThenGetReturnValue!590 lt!1659966 (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(declare-fun insertStrictlySorted!336 (List!50435 (_ BitVec 64) List!50434) List!50435)

(assert (=> d!1364471 (= lt!1659966 (insertStrictlySorted!336 (toList!4075 lm!1477) (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(assert (=> d!1364471 (= (+!1380 lm!1477 lt!1659810) lt!1659965)))

(declare-fun b!4471652 () Bool)

(declare-fun res!1855427 () Bool)

(assert (=> b!4471652 (=> (not res!1855427) (not e!2784567))))

(assert (=> b!4471652 (= res!1855427 (= (getValueByKey!924 (toList!4075 lt!1659965) (_1!28580 lt!1659810)) (Some!10937 (_2!28580 lt!1659810))))))

(declare-fun b!4471653 () Bool)

(assert (=> b!4471653 (= e!2784567 (contains!12875 (toList!4075 lt!1659965) lt!1659810))))

(assert (= (and d!1364471 res!1855426) b!4471652))

(assert (= (and b!4471652 res!1855427) b!4471653))

(declare-fun m!5179807 () Bool)

(assert (=> d!1364471 m!5179807))

(declare-fun m!5179809 () Bool)

(assert (=> d!1364471 m!5179809))

(declare-fun m!5179811 () Bool)

(assert (=> d!1364471 m!5179811))

(declare-fun m!5179813 () Bool)

(assert (=> d!1364471 m!5179813))

(declare-fun m!5179815 () Bool)

(assert (=> b!4471652 m!5179815))

(declare-fun m!5179817 () Bool)

(assert (=> b!4471653 m!5179817))

(assert (=> b!4471433 d!1364471))

(declare-fun d!1364493 () Bool)

(assert (=> d!1364493 (eq!527 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)) (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))))

(declare-fun lt!1659974 () Unit!88025)

(declare-fun choose!28626 ((_ BitVec 64) List!50434 List!50434 K!11725 Hashable!5429) Unit!88025)

(assert (=> d!1364493 (= lt!1659974 (choose!28626 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1364493 (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477))))))

(assert (=> d!1364493 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!26 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1659974)))

(declare-fun bs!796351 () Bool)

(assert (= bs!796351 d!1364493))

(declare-fun m!5179841 () Bool)

(assert (=> bs!796351 m!5179841))

(assert (=> bs!796351 m!5179441))

(declare-fun m!5179843 () Bool)

(assert (=> bs!796351 m!5179843))

(declare-fun m!5179845 () Bool)

(assert (=> bs!796351 m!5179845))

(assert (=> bs!796351 m!5179441))

(assert (=> bs!796351 m!5179443))

(assert (=> bs!796351 m!5179841))

(assert (=> bs!796351 m!5179443))

(declare-fun m!5179847 () Bool)

(assert (=> bs!796351 m!5179847))

(assert (=> b!4471433 d!1364493))

(declare-fun bs!796352 () Bool)

(declare-fun d!1364503 () Bool)

(assert (= bs!796352 (and d!1364503 d!1364393)))

(declare-fun lambda!163683 () Int)

(assert (=> bs!796352 (not (= lambda!163683 lambda!163647))))

(declare-fun bs!796353 () Bool)

(assert (= bs!796353 (and d!1364503 d!1364423)))

(assert (=> bs!796353 (= lambda!163683 lambda!163668)))

(declare-fun bs!796354 () Bool)

(assert (= bs!796354 (and d!1364503 d!1364409)))

(assert (=> bs!796354 (= lambda!163683 lambda!163663)))

(declare-fun bs!796355 () Bool)

(assert (= bs!796355 (and d!1364503 d!1364467)))

(assert (=> bs!796355 (= lambda!163683 lambda!163674)))

(declare-fun bs!796356 () Bool)

(assert (= bs!796356 (and d!1364503 d!1364395)))

(assert (=> bs!796356 (= lambda!163683 lambda!163653)))

(declare-fun bs!796357 () Bool)

(assert (= bs!796357 (and d!1364503 d!1364421)))

(assert (=> bs!796357 (= lambda!163683 lambda!163664)))

(declare-fun bs!796358 () Bool)

(assert (= bs!796358 (and d!1364503 start!439496)))

(assert (=> bs!796358 (= lambda!163683 lambda!163641)))

(declare-fun lt!1659975 () ListMap!3337)

(assert (=> d!1364503 (invariantList!933 (toList!4076 lt!1659975))))

(declare-fun e!2784576 () ListMap!3337)

(assert (=> d!1364503 (= lt!1659975 e!2784576)))

(declare-fun c!761350 () Bool)

(assert (=> d!1364503 (= c!761350 ((_ is Cons!50311) (Cons!50311 lt!1659810 Nil!50311)))))

(assert (=> d!1364503 (forall!10008 (Cons!50311 lt!1659810 Nil!50311) lambda!163683)))

(assert (=> d!1364503 (= (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)) lt!1659975)))

(declare-fun b!4471668 () Bool)

(assert (=> b!4471668 (= e!2784576 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))))))

(declare-fun b!4471669 () Bool)

(assert (=> b!4471669 (= e!2784576 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364503 c!761350) b!4471668))

(assert (= (and d!1364503 (not c!761350)) b!4471669))

(declare-fun m!5179849 () Bool)

(assert (=> d!1364503 m!5179849))

(declare-fun m!5179851 () Bool)

(assert (=> d!1364503 m!5179851))

(declare-fun m!5179853 () Bool)

(assert (=> b!4471668 m!5179853))

(assert (=> b!4471668 m!5179853))

(declare-fun m!5179855 () Bool)

(assert (=> b!4471668 m!5179855))

(assert (=> b!4471433 d!1364503))

(declare-fun bs!796359 () Bool)

(declare-fun d!1364505 () Bool)

(assert (= bs!796359 (and d!1364505 d!1364503)))

(declare-fun lambda!163684 () Int)

(assert (=> bs!796359 (= lambda!163684 lambda!163683)))

(declare-fun bs!796360 () Bool)

(assert (= bs!796360 (and d!1364505 d!1364393)))

(assert (=> bs!796360 (not (= lambda!163684 lambda!163647))))

(declare-fun bs!796361 () Bool)

(assert (= bs!796361 (and d!1364505 d!1364423)))

(assert (=> bs!796361 (= lambda!163684 lambda!163668)))

(declare-fun bs!796362 () Bool)

(assert (= bs!796362 (and d!1364505 d!1364409)))

(assert (=> bs!796362 (= lambda!163684 lambda!163663)))

(declare-fun bs!796363 () Bool)

(assert (= bs!796363 (and d!1364505 d!1364467)))

(assert (=> bs!796363 (= lambda!163684 lambda!163674)))

(declare-fun bs!796364 () Bool)

(assert (= bs!796364 (and d!1364505 d!1364395)))

(assert (=> bs!796364 (= lambda!163684 lambda!163653)))

(declare-fun bs!796365 () Bool)

(assert (= bs!796365 (and d!1364505 d!1364421)))

(assert (=> bs!796365 (= lambda!163684 lambda!163664)))

(declare-fun bs!796366 () Bool)

(assert (= bs!796366 (and d!1364505 start!439496)))

(assert (=> bs!796366 (= lambda!163684 lambda!163641)))

(declare-fun lt!1659976 () ListMap!3337)

(assert (=> d!1364505 (invariantList!933 (toList!4076 lt!1659976))))

(declare-fun e!2784577 () ListMap!3337)

(assert (=> d!1364505 (= lt!1659976 e!2784577)))

(declare-fun c!761351 () Bool)

(assert (=> d!1364505 (= c!761351 ((_ is Cons!50311) lt!1659816))))

(assert (=> d!1364505 (forall!10008 lt!1659816 lambda!163684)))

(assert (=> d!1364505 (= (extractMap!1090 lt!1659816) lt!1659976)))

(declare-fun b!4471670 () Bool)

(assert (=> b!4471670 (= e!2784577 (addToMapMapFromBucket!595 (_2!28580 (h!56080 lt!1659816)) (extractMap!1090 (t!357385 lt!1659816))))))

(declare-fun b!4471671 () Bool)

(assert (=> b!4471671 (= e!2784577 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364505 c!761351) b!4471670))

(assert (= (and d!1364505 (not c!761351)) b!4471671))

(declare-fun m!5179857 () Bool)

(assert (=> d!1364505 m!5179857))

(declare-fun m!5179859 () Bool)

(assert (=> d!1364505 m!5179859))

(declare-fun m!5179861 () Bool)

(assert (=> b!4471670 m!5179861))

(assert (=> b!4471670 m!5179861))

(declare-fun m!5179863 () Bool)

(assert (=> b!4471670 m!5179863))

(assert (=> b!4471433 d!1364505))

(declare-fun b!4471690 () Bool)

(declare-fun e!2784594 () Bool)

(declare-fun e!2784592 () Bool)

(assert (=> b!4471690 (= e!2784594 e!2784592)))

(declare-fun res!1855437 () Bool)

(assert (=> b!4471690 (=> (not res!1855437) (not e!2784592))))

(declare-datatypes ((Option!10939 0))(
  ( (None!10938) (Some!10938 (v!44272 V!11971)) )
))
(declare-fun isDefined!8226 (Option!10939) Bool)

(declare-fun getValueByKey!925 (List!50434 K!11725) Option!10939)

(assert (=> b!4471690 (= res!1855437 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 lt!1659816)) key!3287)))))

(declare-fun bm!311339 () Bool)

(declare-fun call!311344 () Bool)

(declare-datatypes ((List!50437 0))(
  ( (Nil!50313) (Cons!50313 (h!56084 K!11725) (t!357387 List!50437)) )
))
(declare-fun e!2784593 () List!50437)

(declare-fun contains!12877 (List!50437 K!11725) Bool)

(assert (=> bm!311339 (= call!311344 (contains!12877 e!2784593 key!3287))))

(declare-fun c!761358 () Bool)

(declare-fun c!761359 () Bool)

(assert (=> bm!311339 (= c!761358 c!761359)))

(declare-fun b!4471691 () Bool)

(assert (=> b!4471691 false))

(declare-fun lt!1660000 () Unit!88025)

(declare-fun lt!1659993 () Unit!88025)

(assert (=> b!4471691 (= lt!1660000 lt!1659993)))

(declare-fun containsKey!1494 (List!50434 K!11725) Bool)

(assert (=> b!4471691 (containsKey!1494 (toList!4076 (extractMap!1090 lt!1659816)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!380 (List!50434 K!11725) Unit!88025)

(assert (=> b!4471691 (= lt!1659993 (lemmaInGetKeysListThenContainsKey!380 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(declare-fun e!2784590 () Unit!88025)

(declare-fun Unit!88040 () Unit!88025)

(assert (=> b!4471691 (= e!2784590 Unit!88040)))

(declare-fun b!4471692 () Bool)

(declare-fun keys!17378 (ListMap!3337) List!50437)

(assert (=> b!4471692 (= e!2784593 (keys!17378 (extractMap!1090 lt!1659816)))))

(declare-fun d!1364507 () Bool)

(assert (=> d!1364507 e!2784594))

(declare-fun res!1855438 () Bool)

(assert (=> d!1364507 (=> res!1855438 e!2784594)))

(declare-fun e!2784591 () Bool)

(assert (=> d!1364507 (= res!1855438 e!2784591)))

(declare-fun res!1855436 () Bool)

(assert (=> d!1364507 (=> (not res!1855436) (not e!2784591))))

(declare-fun lt!1659995 () Bool)

(assert (=> d!1364507 (= res!1855436 (not lt!1659995))))

(declare-fun lt!1659998 () Bool)

(assert (=> d!1364507 (= lt!1659995 lt!1659998)))

(declare-fun lt!1659996 () Unit!88025)

(declare-fun e!2784595 () Unit!88025)

(assert (=> d!1364507 (= lt!1659996 e!2784595)))

(assert (=> d!1364507 (= c!761359 lt!1659998)))

(assert (=> d!1364507 (= lt!1659998 (containsKey!1494 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(assert (=> d!1364507 (= (contains!12873 (extractMap!1090 lt!1659816) key!3287) lt!1659995)))

(declare-fun b!4471693 () Bool)

(declare-fun Unit!88041 () Unit!88025)

(assert (=> b!4471693 (= e!2784590 Unit!88041)))

(declare-fun b!4471694 () Bool)

(assert (=> b!4471694 (= e!2784591 (not (contains!12877 (keys!17378 (extractMap!1090 lt!1659816)) key!3287)))))

(declare-fun b!4471695 () Bool)

(assert (=> b!4471695 (= e!2784595 e!2784590)))

(declare-fun c!761360 () Bool)

(assert (=> b!4471695 (= c!761360 call!311344)))

(declare-fun b!4471696 () Bool)

(assert (=> b!4471696 (= e!2784592 (contains!12877 (keys!17378 (extractMap!1090 lt!1659816)) key!3287))))

(declare-fun b!4471697 () Bool)

(declare-fun lt!1659994 () Unit!88025)

(assert (=> b!4471697 (= e!2784595 lt!1659994)))

(declare-fun lt!1659997 () Unit!88025)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!829 (List!50434 K!11725) Unit!88025)

(assert (=> b!4471697 (= lt!1659997 (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(assert (=> b!4471697 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(declare-fun lt!1659999 () Unit!88025)

(assert (=> b!4471697 (= lt!1659999 lt!1659997)))

(declare-fun lemmaInListThenGetKeysListContains!377 (List!50434 K!11725) Unit!88025)

(assert (=> b!4471697 (= lt!1659994 (lemmaInListThenGetKeysListContains!377 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(assert (=> b!4471697 call!311344))

(declare-fun b!4471698 () Bool)

(declare-fun getKeysList!381 (List!50434) List!50437)

(assert (=> b!4471698 (= e!2784593 (getKeysList!381 (toList!4076 (extractMap!1090 lt!1659816))))))

(assert (= (and d!1364507 c!761359) b!4471697))

(assert (= (and d!1364507 (not c!761359)) b!4471695))

(assert (= (and b!4471695 c!761360) b!4471691))

(assert (= (and b!4471695 (not c!761360)) b!4471693))

(assert (= (or b!4471697 b!4471695) bm!311339))

(assert (= (and bm!311339 c!761358) b!4471698))

(assert (= (and bm!311339 (not c!761358)) b!4471692))

(assert (= (and d!1364507 res!1855436) b!4471694))

(assert (= (and d!1364507 (not res!1855438)) b!4471690))

(assert (= (and b!4471690 res!1855437) b!4471696))

(declare-fun m!5179865 () Bool)

(assert (=> b!4471691 m!5179865))

(declare-fun m!5179867 () Bool)

(assert (=> b!4471691 m!5179867))

(declare-fun m!5179869 () Bool)

(assert (=> b!4471698 m!5179869))

(assert (=> b!4471692 m!5179451))

(declare-fun m!5179871 () Bool)

(assert (=> b!4471692 m!5179871))

(assert (=> b!4471694 m!5179451))

(assert (=> b!4471694 m!5179871))

(assert (=> b!4471694 m!5179871))

(declare-fun m!5179873 () Bool)

(assert (=> b!4471694 m!5179873))

(declare-fun m!5179875 () Bool)

(assert (=> b!4471697 m!5179875))

(declare-fun m!5179877 () Bool)

(assert (=> b!4471697 m!5179877))

(assert (=> b!4471697 m!5179877))

(declare-fun m!5179879 () Bool)

(assert (=> b!4471697 m!5179879))

(declare-fun m!5179881 () Bool)

(assert (=> b!4471697 m!5179881))

(assert (=> b!4471690 m!5179877))

(assert (=> b!4471690 m!5179877))

(assert (=> b!4471690 m!5179879))

(assert (=> b!4471696 m!5179451))

(assert (=> b!4471696 m!5179871))

(assert (=> b!4471696 m!5179871))

(assert (=> b!4471696 m!5179873))

(declare-fun m!5179883 () Bool)

(assert (=> bm!311339 m!5179883))

(assert (=> d!1364507 m!5179865))

(assert (=> b!4471433 d!1364507))

(declare-fun d!1364509 () Bool)

(declare-fun e!2784598 () Bool)

(assert (=> d!1364509 e!2784598))

(declare-fun res!1855441 () Bool)

(assert (=> d!1364509 (=> (not res!1855441) (not e!2784598))))

(declare-fun lt!1660003 () ListMap!3337)

(assert (=> d!1364509 (= res!1855441 (not (contains!12873 lt!1660003 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!69 (List!50434 K!11725) List!50434)

(assert (=> d!1364509 (= lt!1660003 (ListMap!3338 (removePresrvNoDuplicatedKeys!69 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287)))))

(assert (=> d!1364509 (= (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287) lt!1660003)))

(declare-fun b!4471701 () Bool)

(declare-fun content!8121 (List!50437) (InoxSet K!11725))

(assert (=> b!4471701 (= e!2784598 (= ((_ map and) (content!8121 (keys!17378 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) ((_ map not) (store ((as const (Array K!11725 Bool)) false) key!3287 true))) (content!8121 (keys!17378 lt!1660003))))))

(assert (= (and d!1364509 res!1855441) b!4471701))

(declare-fun m!5179885 () Bool)

(assert (=> d!1364509 m!5179885))

(declare-fun m!5179887 () Bool)

(assert (=> d!1364509 m!5179887))

(assert (=> b!4471701 m!5179441))

(declare-fun m!5179889 () Bool)

(assert (=> b!4471701 m!5179889))

(declare-fun m!5179891 () Bool)

(assert (=> b!4471701 m!5179891))

(declare-fun m!5179893 () Bool)

(assert (=> b!4471701 m!5179893))

(declare-fun m!5179895 () Bool)

(assert (=> b!4471701 m!5179895))

(assert (=> b!4471701 m!5179893))

(assert (=> b!4471701 m!5179889))

(declare-fun m!5179897 () Bool)

(assert (=> b!4471701 m!5179897))

(assert (=> b!4471433 d!1364509))

(declare-fun bs!796367 () Bool)

(declare-fun d!1364511 () Bool)

(assert (= bs!796367 (and d!1364511 d!1364505)))

(declare-fun lambda!163687 () Int)

(assert (=> bs!796367 (= lambda!163687 lambda!163684)))

(declare-fun bs!796368 () Bool)

(assert (= bs!796368 (and d!1364511 d!1364503)))

(assert (=> bs!796368 (= lambda!163687 lambda!163683)))

(declare-fun bs!796369 () Bool)

(assert (= bs!796369 (and d!1364511 d!1364393)))

(assert (=> bs!796369 (not (= lambda!163687 lambda!163647))))

(declare-fun bs!796370 () Bool)

(assert (= bs!796370 (and d!1364511 d!1364423)))

(assert (=> bs!796370 (= lambda!163687 lambda!163668)))

(declare-fun bs!796371 () Bool)

(assert (= bs!796371 (and d!1364511 d!1364409)))

(assert (=> bs!796371 (= lambda!163687 lambda!163663)))

(declare-fun bs!796372 () Bool)

(assert (= bs!796372 (and d!1364511 d!1364467)))

(assert (=> bs!796372 (= lambda!163687 lambda!163674)))

(declare-fun bs!796373 () Bool)

(assert (= bs!796373 (and d!1364511 d!1364395)))

(assert (=> bs!796373 (= lambda!163687 lambda!163653)))

(declare-fun bs!796374 () Bool)

(assert (= bs!796374 (and d!1364511 d!1364421)))

(assert (=> bs!796374 (= lambda!163687 lambda!163664)))

(declare-fun bs!796375 () Bool)

(assert (= bs!796375 (and d!1364511 start!439496)))

(assert (=> bs!796375 (= lambda!163687 lambda!163641)))

(assert (=> d!1364511 (contains!12873 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816))) key!3287)))

(declare-fun lt!1660006 () Unit!88025)

(declare-fun choose!28627 (ListLongMap!2707 K!11725 Hashable!5429) Unit!88025)

(assert (=> d!1364511 (= lt!1660006 (choose!28627 (ListLongMap!2708 lt!1659816) key!3287 hashF!1107))))

(assert (=> d!1364511 (forall!10008 (toList!4075 (ListLongMap!2708 lt!1659816)) lambda!163687)))

(assert (=> d!1364511 (= (lemmaListContainsThenExtractedMapContains!30 (ListLongMap!2708 lt!1659816) key!3287 hashF!1107) lt!1660006)))

(declare-fun bs!796376 () Bool)

(assert (= bs!796376 d!1364511))

(declare-fun m!5179899 () Bool)

(assert (=> bs!796376 m!5179899))

(assert (=> bs!796376 m!5179899))

(declare-fun m!5179901 () Bool)

(assert (=> bs!796376 m!5179901))

(declare-fun m!5179903 () Bool)

(assert (=> bs!796376 m!5179903))

(declare-fun m!5179905 () Bool)

(assert (=> bs!796376 m!5179905))

(assert (=> b!4471433 d!1364511))

(declare-fun d!1364513 () Bool)

(assert (=> d!1364513 (= (tail!7520 (toList!4075 lt!1659802)) (t!357385 (toList!4075 lt!1659802)))))

(assert (=> b!4471433 d!1364513))

(declare-fun d!1364515 () Bool)

(declare-fun content!8122 (List!50434) (InoxSet tuple2!50570))

(assert (=> d!1364515 (= (eq!527 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)) (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287)) (= (content!8122 (toList!4076 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)))) (content!8122 (toList!4076 (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287)))))))

(declare-fun bs!796377 () Bool)

(assert (= bs!796377 d!1364515))

(declare-fun m!5179907 () Bool)

(assert (=> bs!796377 m!5179907))

(declare-fun m!5179909 () Bool)

(assert (=> bs!796377 m!5179909))

(assert (=> b!4471433 d!1364515))

(declare-fun d!1364517 () Bool)

(declare-fun e!2784599 () Bool)

(assert (=> d!1364517 e!2784599))

(declare-fun res!1855442 () Bool)

(assert (=> d!1364517 (=> (not res!1855442) (not e!2784599))))

(declare-fun lt!1660009 () ListLongMap!2707)

(assert (=> d!1364517 (= res!1855442 (contains!12874 lt!1660009 (_1!28580 lt!1659810)))))

(declare-fun lt!1660010 () List!50435)

(assert (=> d!1364517 (= lt!1660009 (ListLongMap!2708 lt!1660010))))

(declare-fun lt!1660007 () Unit!88025)

(declare-fun lt!1660008 () Unit!88025)

(assert (=> d!1364517 (= lt!1660007 lt!1660008)))

(assert (=> d!1364517 (= (getValueByKey!924 lt!1660010 (_1!28580 lt!1659810)) (Some!10937 (_2!28580 lt!1659810)))))

(assert (=> d!1364517 (= lt!1660008 (lemmaContainsTupThenGetReturnValue!590 lt!1660010 (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(assert (=> d!1364517 (= lt!1660010 (insertStrictlySorted!336 (toList!4075 lt!1659812) (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(assert (=> d!1364517 (= (+!1380 lt!1659812 lt!1659810) lt!1660009)))

(declare-fun b!4471702 () Bool)

(declare-fun res!1855443 () Bool)

(assert (=> b!4471702 (=> (not res!1855443) (not e!2784599))))

(assert (=> b!4471702 (= res!1855443 (= (getValueByKey!924 (toList!4075 lt!1660009) (_1!28580 lt!1659810)) (Some!10937 (_2!28580 lt!1659810))))))

(declare-fun b!4471703 () Bool)

(assert (=> b!4471703 (= e!2784599 (contains!12875 (toList!4075 lt!1660009) lt!1659810))))

(assert (= (and d!1364517 res!1855442) b!4471702))

(assert (= (and b!4471702 res!1855443) b!4471703))

(declare-fun m!5179911 () Bool)

(assert (=> d!1364517 m!5179911))

(declare-fun m!5179913 () Bool)

(assert (=> d!1364517 m!5179913))

(declare-fun m!5179915 () Bool)

(assert (=> d!1364517 m!5179915))

(declare-fun m!5179917 () Bool)

(assert (=> d!1364517 m!5179917))

(declare-fun m!5179919 () Bool)

(assert (=> b!4471702 m!5179919))

(declare-fun m!5179921 () Bool)

(assert (=> b!4471703 m!5179921))

(assert (=> b!4471442 d!1364517))

(declare-fun d!1364519 () Bool)

(assert (=> d!1364519 (= (tail!7521 lm!1477) (ListLongMap!2708 (tail!7520 (toList!4075 lm!1477))))))

(declare-fun bs!796378 () Bool)

(assert (= bs!796378 d!1364519))

(declare-fun m!5179923 () Bool)

(assert (=> bs!796378 m!5179923))

(assert (=> b!4471442 d!1364519))

(declare-fun bs!796379 () Bool)

(declare-fun d!1364521 () Bool)

(assert (= bs!796379 (and d!1364521 d!1364505)))

(declare-fun lambda!163688 () Int)

(assert (=> bs!796379 (= lambda!163688 lambda!163684)))

(declare-fun bs!796380 () Bool)

(assert (= bs!796380 (and d!1364521 d!1364511)))

(assert (=> bs!796380 (= lambda!163688 lambda!163687)))

(declare-fun bs!796381 () Bool)

(assert (= bs!796381 (and d!1364521 d!1364503)))

(assert (=> bs!796381 (= lambda!163688 lambda!163683)))

(declare-fun bs!796382 () Bool)

(assert (= bs!796382 (and d!1364521 d!1364393)))

(assert (=> bs!796382 (not (= lambda!163688 lambda!163647))))

(declare-fun bs!796383 () Bool)

(assert (= bs!796383 (and d!1364521 d!1364423)))

(assert (=> bs!796383 (= lambda!163688 lambda!163668)))

(declare-fun bs!796384 () Bool)

(assert (= bs!796384 (and d!1364521 d!1364409)))

(assert (=> bs!796384 (= lambda!163688 lambda!163663)))

(declare-fun bs!796385 () Bool)

(assert (= bs!796385 (and d!1364521 d!1364467)))

(assert (=> bs!796385 (= lambda!163688 lambda!163674)))

(declare-fun bs!796386 () Bool)

(assert (= bs!796386 (and d!1364521 d!1364395)))

(assert (=> bs!796386 (= lambda!163688 lambda!163653)))

(declare-fun bs!796387 () Bool)

(assert (= bs!796387 (and d!1364521 d!1364421)))

(assert (=> bs!796387 (= lambda!163688 lambda!163664)))

(declare-fun bs!796388 () Bool)

(assert (= bs!796388 (and d!1364521 start!439496)))

(assert (=> bs!796388 (= lambda!163688 lambda!163641)))

(assert (=> d!1364521 (contains!12874 lt!1659812 (hash!2471 hashF!1107 key!3287))))

(declare-fun lt!1660011 () Unit!88025)

(assert (=> d!1364521 (= lt!1660011 (choose!28623 lt!1659812 key!3287 hashF!1107))))

(assert (=> d!1364521 (forall!10008 (toList!4075 lt!1659812) lambda!163688)))

(assert (=> d!1364521 (= (lemmaInGenMapThenLongMapContainsHash!108 lt!1659812 key!3287 hashF!1107) lt!1660011)))

(declare-fun bs!796389 () Bool)

(assert (= bs!796389 d!1364521))

(assert (=> bs!796389 m!5179461))

(assert (=> bs!796389 m!5179461))

(declare-fun m!5179925 () Bool)

(assert (=> bs!796389 m!5179925))

(declare-fun m!5179927 () Bool)

(assert (=> bs!796389 m!5179927))

(declare-fun m!5179929 () Bool)

(assert (=> bs!796389 m!5179929))

(assert (=> b!4471431 d!1364521))

(declare-fun d!1364523 () Bool)

(declare-fun e!2784601 () Bool)

(assert (=> d!1364523 e!2784601))

(declare-fun res!1855444 () Bool)

(assert (=> d!1364523 (=> res!1855444 e!2784601)))

(declare-fun lt!1660012 () Bool)

(assert (=> d!1364523 (= res!1855444 (not lt!1660012))))

(declare-fun lt!1660013 () Bool)

(assert (=> d!1364523 (= lt!1660012 lt!1660013)))

(declare-fun lt!1660014 () Unit!88025)

(declare-fun e!2784600 () Unit!88025)

(assert (=> d!1364523 (= lt!1660014 e!2784600)))

(declare-fun c!761361 () Bool)

(assert (=> d!1364523 (= c!761361 lt!1660013)))

(assert (=> d!1364523 (= lt!1660013 (containsKey!1493 (toList!4075 lt!1659812) lt!1659807))))

(assert (=> d!1364523 (= (contains!12874 lt!1659812 lt!1659807) lt!1660012)))

(declare-fun b!4471704 () Bool)

(declare-fun lt!1660015 () Unit!88025)

(assert (=> b!4471704 (= e!2784600 lt!1660015)))

(assert (=> b!4471704 (= lt!1660015 (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lt!1659812) lt!1659807))))

(assert (=> b!4471704 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659812) lt!1659807))))

(declare-fun b!4471705 () Bool)

(declare-fun Unit!88042 () Unit!88025)

(assert (=> b!4471705 (= e!2784600 Unit!88042)))

(declare-fun b!4471706 () Bool)

(assert (=> b!4471706 (= e!2784601 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659812) lt!1659807)))))

(assert (= (and d!1364523 c!761361) b!4471704))

(assert (= (and d!1364523 (not c!761361)) b!4471705))

(assert (= (and d!1364523 (not res!1855444)) b!4471706))

(declare-fun m!5179931 () Bool)

(assert (=> d!1364523 m!5179931))

(declare-fun m!5179933 () Bool)

(assert (=> b!4471704 m!5179933))

(declare-fun m!5179935 () Bool)

(assert (=> b!4471704 m!5179935))

(assert (=> b!4471704 m!5179935))

(declare-fun m!5179937 () Bool)

(assert (=> b!4471704 m!5179937))

(assert (=> b!4471706 m!5179935))

(assert (=> b!4471706 m!5179935))

(assert (=> b!4471706 m!5179937))

(assert (=> b!4471431 d!1364523))

(declare-fun b!4471707 () Bool)

(declare-fun e!2784606 () Bool)

(declare-fun e!2784604 () Bool)

(assert (=> b!4471707 (= e!2784606 e!2784604)))

(declare-fun res!1855446 () Bool)

(assert (=> b!4471707 (=> (not res!1855446) (not e!2784604))))

(assert (=> b!4471707 (= res!1855446 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287)))))

(declare-fun bm!311340 () Bool)

(declare-fun call!311345 () Bool)

(declare-fun e!2784605 () List!50437)

(assert (=> bm!311340 (= call!311345 (contains!12877 e!2784605 key!3287))))

(declare-fun c!761362 () Bool)

(declare-fun c!761363 () Bool)

(assert (=> bm!311340 (= c!761362 c!761363)))

(declare-fun b!4471708 () Bool)

(assert (=> b!4471708 false))

(declare-fun lt!1660023 () Unit!88025)

(declare-fun lt!1660016 () Unit!88025)

(assert (=> b!4471708 (= lt!1660023 lt!1660016)))

(assert (=> b!4471708 (containsKey!1494 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287)))

(assert (=> b!4471708 (= lt!1660016 (lemmaInGetKeysListThenContainsKey!380 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(declare-fun e!2784602 () Unit!88025)

(declare-fun Unit!88043 () Unit!88025)

(assert (=> b!4471708 (= e!2784602 Unit!88043)))

(declare-fun b!4471709 () Bool)

(assert (=> b!4471709 (= e!2784605 (keys!17378 (extractMap!1090 (toList!4075 lm!1477))))))

(declare-fun d!1364525 () Bool)

(assert (=> d!1364525 e!2784606))

(declare-fun res!1855447 () Bool)

(assert (=> d!1364525 (=> res!1855447 e!2784606)))

(declare-fun e!2784603 () Bool)

(assert (=> d!1364525 (= res!1855447 e!2784603)))

(declare-fun res!1855445 () Bool)

(assert (=> d!1364525 (=> (not res!1855445) (not e!2784603))))

(declare-fun lt!1660018 () Bool)

(assert (=> d!1364525 (= res!1855445 (not lt!1660018))))

(declare-fun lt!1660021 () Bool)

(assert (=> d!1364525 (= lt!1660018 lt!1660021)))

(declare-fun lt!1660019 () Unit!88025)

(declare-fun e!2784607 () Unit!88025)

(assert (=> d!1364525 (= lt!1660019 e!2784607)))

(assert (=> d!1364525 (= c!761363 lt!1660021)))

(assert (=> d!1364525 (= lt!1660021 (containsKey!1494 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(assert (=> d!1364525 (= (contains!12873 (extractMap!1090 (toList!4075 lm!1477)) key!3287) lt!1660018)))

(declare-fun b!4471710 () Bool)

(declare-fun Unit!88044 () Unit!88025)

(assert (=> b!4471710 (= e!2784602 Unit!88044)))

(declare-fun b!4471711 () Bool)

(assert (=> b!4471711 (= e!2784603 (not (contains!12877 (keys!17378 (extractMap!1090 (toList!4075 lm!1477))) key!3287)))))

(declare-fun b!4471712 () Bool)

(assert (=> b!4471712 (= e!2784607 e!2784602)))

(declare-fun c!761364 () Bool)

(assert (=> b!4471712 (= c!761364 call!311345)))

(declare-fun b!4471713 () Bool)

(assert (=> b!4471713 (= e!2784604 (contains!12877 (keys!17378 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(declare-fun b!4471714 () Bool)

(declare-fun lt!1660017 () Unit!88025)

(assert (=> b!4471714 (= e!2784607 lt!1660017)))

(declare-fun lt!1660020 () Unit!88025)

(assert (=> b!4471714 (= lt!1660020 (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(assert (=> b!4471714 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(declare-fun lt!1660022 () Unit!88025)

(assert (=> b!4471714 (= lt!1660022 lt!1660020)))

(assert (=> b!4471714 (= lt!1660017 (lemmaInListThenGetKeysListContains!377 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(assert (=> b!4471714 call!311345))

(declare-fun b!4471715 () Bool)

(assert (=> b!4471715 (= e!2784605 (getKeysList!381 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))

(assert (= (and d!1364525 c!761363) b!4471714))

(assert (= (and d!1364525 (not c!761363)) b!4471712))

(assert (= (and b!4471712 c!761364) b!4471708))

(assert (= (and b!4471712 (not c!761364)) b!4471710))

(assert (= (or b!4471714 b!4471712) bm!311340))

(assert (= (and bm!311340 c!761362) b!4471715))

(assert (= (and bm!311340 (not c!761362)) b!4471709))

(assert (= (and d!1364525 res!1855445) b!4471711))

(assert (= (and d!1364525 (not res!1855447)) b!4471707))

(assert (= (and b!4471707 res!1855446) b!4471713))

(declare-fun m!5179939 () Bool)

(assert (=> b!4471708 m!5179939))

(declare-fun m!5179941 () Bool)

(assert (=> b!4471708 m!5179941))

(declare-fun m!5179943 () Bool)

(assert (=> b!4471715 m!5179943))

(assert (=> b!4471709 m!5179477))

(declare-fun m!5179945 () Bool)

(assert (=> b!4471709 m!5179945))

(assert (=> b!4471711 m!5179477))

(assert (=> b!4471711 m!5179945))

(assert (=> b!4471711 m!5179945))

(declare-fun m!5179947 () Bool)

(assert (=> b!4471711 m!5179947))

(declare-fun m!5179949 () Bool)

(assert (=> b!4471714 m!5179949))

(declare-fun m!5179951 () Bool)

(assert (=> b!4471714 m!5179951))

(assert (=> b!4471714 m!5179951))

(declare-fun m!5179953 () Bool)

(assert (=> b!4471714 m!5179953))

(declare-fun m!5179955 () Bool)

(assert (=> b!4471714 m!5179955))

(assert (=> b!4471707 m!5179951))

(assert (=> b!4471707 m!5179951))

(assert (=> b!4471707 m!5179953))

(assert (=> b!4471713 m!5179477))

(assert (=> b!4471713 m!5179945))

(assert (=> b!4471713 m!5179945))

(assert (=> b!4471713 m!5179947))

(declare-fun m!5179957 () Bool)

(assert (=> bm!311340 m!5179957))

(assert (=> d!1364525 m!5179939))

(assert (=> b!4471425 d!1364525))

(declare-fun bs!796390 () Bool)

(declare-fun d!1364527 () Bool)

(assert (= bs!796390 (and d!1364527 d!1364505)))

(declare-fun lambda!163689 () Int)

(assert (=> bs!796390 (= lambda!163689 lambda!163684)))

(declare-fun bs!796391 () Bool)

(assert (= bs!796391 (and d!1364527 d!1364511)))

(assert (=> bs!796391 (= lambda!163689 lambda!163687)))

(declare-fun bs!796392 () Bool)

(assert (= bs!796392 (and d!1364527 d!1364503)))

(assert (=> bs!796392 (= lambda!163689 lambda!163683)))

(declare-fun bs!796393 () Bool)

(assert (= bs!796393 (and d!1364527 d!1364521)))

(assert (=> bs!796393 (= lambda!163689 lambda!163688)))

(declare-fun bs!796394 () Bool)

(assert (= bs!796394 (and d!1364527 d!1364393)))

(assert (=> bs!796394 (not (= lambda!163689 lambda!163647))))

(declare-fun bs!796395 () Bool)

(assert (= bs!796395 (and d!1364527 d!1364423)))

(assert (=> bs!796395 (= lambda!163689 lambda!163668)))

(declare-fun bs!796396 () Bool)

(assert (= bs!796396 (and d!1364527 d!1364409)))

(assert (=> bs!796396 (= lambda!163689 lambda!163663)))

(declare-fun bs!796397 () Bool)

(assert (= bs!796397 (and d!1364527 d!1364467)))

(assert (=> bs!796397 (= lambda!163689 lambda!163674)))

(declare-fun bs!796398 () Bool)

(assert (= bs!796398 (and d!1364527 d!1364395)))

(assert (=> bs!796398 (= lambda!163689 lambda!163653)))

(declare-fun bs!796399 () Bool)

(assert (= bs!796399 (and d!1364527 d!1364421)))

(assert (=> bs!796399 (= lambda!163689 lambda!163664)))

(declare-fun bs!796400 () Bool)

(assert (= bs!796400 (and d!1364527 start!439496)))

(assert (=> bs!796400 (= lambda!163689 lambda!163641)))

(declare-fun lt!1660024 () ListMap!3337)

(assert (=> d!1364527 (invariantList!933 (toList!4076 lt!1660024))))

(declare-fun e!2784608 () ListMap!3337)

(assert (=> d!1364527 (= lt!1660024 e!2784608)))

(declare-fun c!761365 () Bool)

(assert (=> d!1364527 (= c!761365 ((_ is Cons!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364527 (forall!10008 (toList!4075 lm!1477) lambda!163689)))

(assert (=> d!1364527 (= (extractMap!1090 (toList!4075 lm!1477)) lt!1660024)))

(declare-fun b!4471716 () Bool)

(assert (=> b!4471716 (= e!2784608 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (toList!4075 lm!1477)))))))

(declare-fun b!4471717 () Bool)

(assert (=> b!4471717 (= e!2784608 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364527 c!761365) b!4471716))

(assert (= (and d!1364527 (not c!761365)) b!4471717))

(declare-fun m!5179959 () Bool)

(assert (=> d!1364527 m!5179959))

(declare-fun m!5179961 () Bool)

(assert (=> d!1364527 m!5179961))

(assert (=> b!4471716 m!5179469))

(assert (=> b!4471716 m!5179469))

(declare-fun m!5179963 () Bool)

(assert (=> b!4471716 m!5179963))

(assert (=> b!4471425 d!1364527))

(declare-fun d!1364529 () Bool)

(declare-fun res!1855456 () Bool)

(declare-fun e!2784616 () Bool)

(assert (=> d!1364529 (=> res!1855456 e!2784616)))

(declare-fun e!2784617 () Bool)

(assert (=> d!1364529 (= res!1855456 e!2784617)))

(declare-fun res!1855454 () Bool)

(assert (=> d!1364529 (=> (not res!1855454) (not e!2784617))))

(assert (=> d!1364529 (= res!1855454 ((_ is Cons!50311) lt!1659816))))

(assert (=> d!1364529 (= (containsKeyBiggerList!34 lt!1659816 key!3287) e!2784616)))

(declare-fun b!4471724 () Bool)

(assert (=> b!4471724 (= e!2784617 (containsKey!1490 (_2!28580 (h!56080 lt!1659816)) key!3287))))

(declare-fun b!4471725 () Bool)

(declare-fun e!2784615 () Bool)

(assert (=> b!4471725 (= e!2784616 e!2784615)))

(declare-fun res!1855455 () Bool)

(assert (=> b!4471725 (=> (not res!1855455) (not e!2784615))))

(assert (=> b!4471725 (= res!1855455 ((_ is Cons!50311) lt!1659816))))

(declare-fun b!4471726 () Bool)

(assert (=> b!4471726 (= e!2784615 (containsKeyBiggerList!34 (t!357385 lt!1659816) key!3287))))

(assert (= (and d!1364529 res!1855454) b!4471724))

(assert (= (and d!1364529 (not res!1855456)) b!4471725))

(assert (= (and b!4471725 res!1855455) b!4471726))

(declare-fun m!5179965 () Bool)

(assert (=> b!4471724 m!5179965))

(declare-fun m!5179967 () Bool)

(assert (=> b!4471726 m!5179967))

(assert (=> b!4471434 d!1364529))

(declare-fun d!1364531 () Bool)

(declare-fun isEmpty!28501 (List!50435) Bool)

(assert (=> d!1364531 (= (isEmpty!28499 lm!1477) (isEmpty!28501 (toList!4075 lm!1477)))))

(declare-fun bs!796401 () Bool)

(assert (= bs!796401 d!1364531))

(declare-fun m!5179969 () Bool)

(assert (=> bs!796401 m!5179969))

(assert (=> b!4471424 d!1364531))

(declare-fun b!4471727 () Bool)

(declare-fun e!2784622 () Bool)

(declare-fun e!2784620 () Bool)

(assert (=> b!4471727 (= e!2784622 e!2784620)))

(declare-fun res!1855458 () Bool)

(assert (=> b!4471727 (=> (not res!1855458) (not e!2784620))))

(assert (=> b!4471727 (= res!1855458 (isDefined!8226 (getValueByKey!925 (toList!4076 lt!1659809) key!3287)))))

(declare-fun bm!311341 () Bool)

(declare-fun call!311346 () Bool)

(declare-fun e!2784621 () List!50437)

(assert (=> bm!311341 (= call!311346 (contains!12877 e!2784621 key!3287))))

(declare-fun c!761366 () Bool)

(declare-fun c!761367 () Bool)

(assert (=> bm!311341 (= c!761366 c!761367)))

(declare-fun b!4471728 () Bool)

(assert (=> b!4471728 false))

(declare-fun lt!1660032 () Unit!88025)

(declare-fun lt!1660025 () Unit!88025)

(assert (=> b!4471728 (= lt!1660032 lt!1660025)))

(assert (=> b!4471728 (containsKey!1494 (toList!4076 lt!1659809) key!3287)))

(assert (=> b!4471728 (= lt!1660025 (lemmaInGetKeysListThenContainsKey!380 (toList!4076 lt!1659809) key!3287))))

(declare-fun e!2784618 () Unit!88025)

(declare-fun Unit!88045 () Unit!88025)

(assert (=> b!4471728 (= e!2784618 Unit!88045)))

(declare-fun b!4471729 () Bool)

(assert (=> b!4471729 (= e!2784621 (keys!17378 lt!1659809))))

(declare-fun d!1364533 () Bool)

(assert (=> d!1364533 e!2784622))

(declare-fun res!1855459 () Bool)

(assert (=> d!1364533 (=> res!1855459 e!2784622)))

(declare-fun e!2784619 () Bool)

(assert (=> d!1364533 (= res!1855459 e!2784619)))

(declare-fun res!1855457 () Bool)

(assert (=> d!1364533 (=> (not res!1855457) (not e!2784619))))

(declare-fun lt!1660027 () Bool)

(assert (=> d!1364533 (= res!1855457 (not lt!1660027))))

(declare-fun lt!1660030 () Bool)

(assert (=> d!1364533 (= lt!1660027 lt!1660030)))

(declare-fun lt!1660028 () Unit!88025)

(declare-fun e!2784623 () Unit!88025)

(assert (=> d!1364533 (= lt!1660028 e!2784623)))

(assert (=> d!1364533 (= c!761367 lt!1660030)))

(assert (=> d!1364533 (= lt!1660030 (containsKey!1494 (toList!4076 lt!1659809) key!3287))))

(assert (=> d!1364533 (= (contains!12873 lt!1659809 key!3287) lt!1660027)))

(declare-fun b!4471730 () Bool)

(declare-fun Unit!88046 () Unit!88025)

(assert (=> b!4471730 (= e!2784618 Unit!88046)))

(declare-fun b!4471731 () Bool)

(assert (=> b!4471731 (= e!2784619 (not (contains!12877 (keys!17378 lt!1659809) key!3287)))))

(declare-fun b!4471732 () Bool)

(assert (=> b!4471732 (= e!2784623 e!2784618)))

(declare-fun c!761368 () Bool)

(assert (=> b!4471732 (= c!761368 call!311346)))

(declare-fun b!4471733 () Bool)

(assert (=> b!4471733 (= e!2784620 (contains!12877 (keys!17378 lt!1659809) key!3287))))

(declare-fun b!4471734 () Bool)

(declare-fun lt!1660026 () Unit!88025)

(assert (=> b!4471734 (= e!2784623 lt!1660026)))

(declare-fun lt!1660029 () Unit!88025)

(assert (=> b!4471734 (= lt!1660029 (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 lt!1659809) key!3287))))

(assert (=> b!4471734 (isDefined!8226 (getValueByKey!925 (toList!4076 lt!1659809) key!3287))))

(declare-fun lt!1660031 () Unit!88025)

(assert (=> b!4471734 (= lt!1660031 lt!1660029)))

(assert (=> b!4471734 (= lt!1660026 (lemmaInListThenGetKeysListContains!377 (toList!4076 lt!1659809) key!3287))))

(assert (=> b!4471734 call!311346))

(declare-fun b!4471735 () Bool)

(assert (=> b!4471735 (= e!2784621 (getKeysList!381 (toList!4076 lt!1659809)))))

(assert (= (and d!1364533 c!761367) b!4471734))

(assert (= (and d!1364533 (not c!761367)) b!4471732))

(assert (= (and b!4471732 c!761368) b!4471728))

(assert (= (and b!4471732 (not c!761368)) b!4471730))

(assert (= (or b!4471734 b!4471732) bm!311341))

(assert (= (and bm!311341 c!761366) b!4471735))

(assert (= (and bm!311341 (not c!761366)) b!4471729))

(assert (= (and d!1364533 res!1855457) b!4471731))

(assert (= (and d!1364533 (not res!1855459)) b!4471727))

(assert (= (and b!4471727 res!1855458) b!4471733))

(declare-fun m!5179971 () Bool)

(assert (=> b!4471728 m!5179971))

(declare-fun m!5179973 () Bool)

(assert (=> b!4471728 m!5179973))

(declare-fun m!5179975 () Bool)

(assert (=> b!4471735 m!5179975))

(declare-fun m!5179977 () Bool)

(assert (=> b!4471729 m!5179977))

(assert (=> b!4471731 m!5179977))

(assert (=> b!4471731 m!5179977))

(declare-fun m!5179979 () Bool)

(assert (=> b!4471731 m!5179979))

(declare-fun m!5179981 () Bool)

(assert (=> b!4471734 m!5179981))

(declare-fun m!5179983 () Bool)

(assert (=> b!4471734 m!5179983))

(assert (=> b!4471734 m!5179983))

(declare-fun m!5179985 () Bool)

(assert (=> b!4471734 m!5179985))

(declare-fun m!5179987 () Bool)

(assert (=> b!4471734 m!5179987))

(assert (=> b!4471727 m!5179983))

(assert (=> b!4471727 m!5179983))

(assert (=> b!4471727 m!5179985))

(assert (=> b!4471733 m!5179977))

(assert (=> b!4471733 m!5179977))

(assert (=> b!4471733 m!5179979))

(declare-fun m!5179989 () Bool)

(assert (=> bm!311341 m!5179989))

(assert (=> d!1364533 m!5179971))

(assert (=> b!4471424 d!1364533))

(declare-fun b!4471740 () Bool)

(declare-fun e!2784626 () Bool)

(declare-fun tp!1336369 () Bool)

(declare-fun tp!1336370 () Bool)

(assert (=> b!4471740 (= e!2784626 (and tp!1336369 tp!1336370))))

(assert (=> b!4471432 (= tp!1336355 e!2784626)))

(assert (= (and b!4471432 ((_ is Cons!50311) (toList!4075 lm!1477))) b!4471740))

(declare-fun e!2784629 () Bool)

(declare-fun b!4471745 () Bool)

(declare-fun tp!1336373 () Bool)

(assert (=> b!4471745 (= e!2784629 (and tp_is_empty!27413 tp_is_empty!27415 tp!1336373))))

(assert (=> b!4471437 (= tp!1336354 e!2784629)))

(assert (= (and b!4471437 ((_ is Cons!50310) (t!357384 newBucket!178))) b!4471745))

(declare-fun b_lambda!148577 () Bool)

(assert (= b_lambda!148565 (or start!439496 b_lambda!148577)))

(declare-fun bs!796402 () Bool)

(declare-fun d!1364535 () Bool)

(assert (= bs!796402 (and d!1364535 start!439496)))

(assert (=> bs!796402 (= (dynLambda!21022 lambda!163641 lt!1659814) (noDuplicateKeys!1034 (_2!28580 lt!1659814)))))

(declare-fun m!5179991 () Bool)

(assert (=> bs!796402 m!5179991))

(assert (=> d!1364435 d!1364535))

(declare-fun b_lambda!148579 () Bool)

(assert (= b_lambda!148569 (or start!439496 b_lambda!148579)))

(declare-fun bs!796403 () Bool)

(declare-fun d!1364537 () Bool)

(assert (= bs!796403 (and d!1364537 start!439496)))

(assert (=> bs!796403 (= (dynLambda!21022 lambda!163641 (h!56080 (toList!4075 lm!1477))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(assert (=> bs!796403 m!5179843))

(assert (=> b!4471605 d!1364537))

(check-sat (not d!1364471) (not d!1364453) (not b!4471745) (not b!4471696) (not b!4471734) (not bm!311340) (not d!1364409) (not b!4471729) (not d!1364395) (not d!1364503) (not b!4471706) (not d!1364433) (not b!4471580) (not b!4471711) (not d!1364515) (not d!1364507) (not b!4471668) (not d!1364493) (not b!4471731) tp_is_empty!27413 (not b!4471702) (not d!1364531) (not d!1364449) (not d!1364439) (not b!4471449) (not b!4471514) (not bm!311341) (not b!4471692) (not b!4471735) (not b!4471458) (not d!1364407) (not b!4471740) (not b!4471714) (not d!1364389) (not b!4471727) (not b!4471593) (not d!1364521) (not d!1364463) (not bs!796403) (not b!4471560) (not d!1364527) (not b!4471709) (not d!1364509) (not d!1364435) (not d!1364505) (not bs!796402) (not b!4471652) (not b!4471500) (not d!1364421) (not b!4471728) (not b!4471713) (not d!1364517) (not d!1364519) (not b!4471701) (not b!4471562) (not bm!311339) (not b!4471697) (not b!4471498) (not b!4471613) (not b!4471606) (not b!4471704) (not d!1364511) (not b!4471708) (not b!4471670) (not d!1364523) (not b!4471698) (not b!4471545) tp_is_empty!27415 (not b!4471703) (not b!4471733) (not b!4471653) (not d!1364525) (not b!4471694) (not b!4471726) (not b!4471715) (not d!1364431) (not d!1364393) (not d!1364533) (not b!4471707) (not b!4471690) (not d!1364467) (not b!4471724) (not b_lambda!148579) (not b!4471459) (not b!4471716) (not b!4471691) (not b_lambda!148577) (not d!1364423))
(check-sat)
(get-model)

(declare-fun d!1364539 () Bool)

(declare-fun res!1855464 () Bool)

(declare-fun e!2784634 () Bool)

(assert (=> d!1364539 (=> res!1855464 e!2784634)))

(assert (=> d!1364539 (= res!1855464 (or ((_ is Nil!50311) (toList!4075 lm!1477)) ((_ is Nil!50311) (t!357385 (toList!4075 lm!1477)))))))

(assert (=> d!1364539 (= (isStrictlySorted!347 (toList!4075 lm!1477)) e!2784634)))

(declare-fun b!4471750 () Bool)

(declare-fun e!2784635 () Bool)

(assert (=> b!4471750 (= e!2784634 e!2784635)))

(declare-fun res!1855465 () Bool)

(assert (=> b!4471750 (=> (not res!1855465) (not e!2784635))))

(assert (=> b!4471750 (= res!1855465 (bvslt (_1!28580 (h!56080 (toList!4075 lm!1477))) (_1!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))))))

(declare-fun b!4471751 () Bool)

(assert (=> b!4471751 (= e!2784635 (isStrictlySorted!347 (t!357385 (toList!4075 lm!1477))))))

(assert (= (and d!1364539 (not res!1855464)) b!4471750))

(assert (= (and b!4471750 res!1855465) b!4471751))

(declare-fun m!5179993 () Bool)

(assert (=> b!4471751 m!5179993))

(assert (=> d!1364463 d!1364539))

(declare-fun d!1364541 () Bool)

(declare-fun e!2784637 () Bool)

(assert (=> d!1364541 e!2784637))

(declare-fun res!1855466 () Bool)

(assert (=> d!1364541 (=> res!1855466 e!2784637)))

(declare-fun lt!1660033 () Bool)

(assert (=> d!1364541 (= res!1855466 (not lt!1660033))))

(declare-fun lt!1660034 () Bool)

(assert (=> d!1364541 (= lt!1660033 lt!1660034)))

(declare-fun lt!1660035 () Unit!88025)

(declare-fun e!2784636 () Unit!88025)

(assert (=> d!1364541 (= lt!1660035 e!2784636)))

(declare-fun c!761369 () Bool)

(assert (=> d!1364541 (= c!761369 lt!1660034)))

(assert (=> d!1364541 (= lt!1660034 (containsKey!1493 (toList!4075 lm!1477) (hash!2471 hashF!1107 key!3287)))))

(assert (=> d!1364541 (= (contains!12874 lm!1477 (hash!2471 hashF!1107 key!3287)) lt!1660033)))

(declare-fun b!4471752 () Bool)

(declare-fun lt!1660036 () Unit!88025)

(assert (=> b!4471752 (= e!2784636 lt!1660036)))

(assert (=> b!4471752 (= lt!1660036 (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lm!1477) (hash!2471 hashF!1107 key!3287)))))

(assert (=> b!4471752 (isDefined!8225 (getValueByKey!924 (toList!4075 lm!1477) (hash!2471 hashF!1107 key!3287)))))

(declare-fun b!4471753 () Bool)

(declare-fun Unit!88047 () Unit!88025)

(assert (=> b!4471753 (= e!2784636 Unit!88047)))

(declare-fun b!4471754 () Bool)

(assert (=> b!4471754 (= e!2784637 (isDefined!8225 (getValueByKey!924 (toList!4075 lm!1477) (hash!2471 hashF!1107 key!3287))))))

(assert (= (and d!1364541 c!761369) b!4471752))

(assert (= (and d!1364541 (not c!761369)) b!4471753))

(assert (= (and d!1364541 (not res!1855466)) b!4471754))

(assert (=> d!1364541 m!5179461))

(declare-fun m!5179995 () Bool)

(assert (=> d!1364541 m!5179995))

(assert (=> b!4471752 m!5179461))

(declare-fun m!5179997 () Bool)

(assert (=> b!4471752 m!5179997))

(assert (=> b!4471752 m!5179461))

(declare-fun m!5179999 () Bool)

(assert (=> b!4471752 m!5179999))

(assert (=> b!4471752 m!5179999))

(declare-fun m!5180001 () Bool)

(assert (=> b!4471752 m!5180001))

(assert (=> b!4471754 m!5179461))

(assert (=> b!4471754 m!5179999))

(assert (=> b!4471754 m!5179999))

(assert (=> b!4471754 m!5180001))

(assert (=> d!1364423 d!1364541))

(assert (=> d!1364423 d!1364407))

(declare-fun d!1364543 () Bool)

(assert (=> d!1364543 (contains!12874 lm!1477 (hash!2471 hashF!1107 key!3287))))

(assert (=> d!1364543 true))

(declare-fun _$27!1091 () Unit!88025)

(assert (=> d!1364543 (= (choose!28623 lm!1477 key!3287 hashF!1107) _$27!1091)))

(declare-fun bs!796404 () Bool)

(assert (= bs!796404 d!1364543))

(assert (=> bs!796404 m!5179461))

(assert (=> bs!796404 m!5179461))

(assert (=> bs!796404 m!5179601))

(assert (=> d!1364423 d!1364543))

(declare-fun d!1364545 () Bool)

(declare-fun res!1855467 () Bool)

(declare-fun e!2784638 () Bool)

(assert (=> d!1364545 (=> res!1855467 e!2784638)))

(assert (=> d!1364545 (= res!1855467 ((_ is Nil!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364545 (= (forall!10008 (toList!4075 lm!1477) lambda!163668) e!2784638)))

(declare-fun b!4471755 () Bool)

(declare-fun e!2784639 () Bool)

(assert (=> b!4471755 (= e!2784638 e!2784639)))

(declare-fun res!1855468 () Bool)

(assert (=> b!4471755 (=> (not res!1855468) (not e!2784639))))

(assert (=> b!4471755 (= res!1855468 (dynLambda!21022 lambda!163668 (h!56080 (toList!4075 lm!1477))))))

(declare-fun b!4471756 () Bool)

(assert (=> b!4471756 (= e!2784639 (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163668))))

(assert (= (and d!1364545 (not res!1855467)) b!4471755))

(assert (= (and b!4471755 res!1855468) b!4471756))

(declare-fun b_lambda!148581 () Bool)

(assert (=> (not b_lambda!148581) (not b!4471755)))

(declare-fun m!5180003 () Bool)

(assert (=> b!4471755 m!5180003))

(declare-fun m!5180005 () Bool)

(assert (=> b!4471756 m!5180005))

(assert (=> d!1364423 d!1364545))

(declare-fun d!1364547 () Bool)

(declare-fun e!2784641 () Bool)

(assert (=> d!1364547 e!2784641))

(declare-fun res!1855469 () Bool)

(assert (=> d!1364547 (=> res!1855469 e!2784641)))

(declare-fun lt!1660037 () Bool)

(assert (=> d!1364547 (= res!1855469 (not lt!1660037))))

(declare-fun lt!1660038 () Bool)

(assert (=> d!1364547 (= lt!1660037 lt!1660038)))

(declare-fun lt!1660039 () Unit!88025)

(declare-fun e!2784640 () Unit!88025)

(assert (=> d!1364547 (= lt!1660039 e!2784640)))

(declare-fun c!761370 () Bool)

(assert (=> d!1364547 (= c!761370 lt!1660038)))

(assert (=> d!1364547 (= lt!1660038 (containsKey!1493 (toList!4075 lt!1659965) (_1!28580 lt!1659810)))))

(assert (=> d!1364547 (= (contains!12874 lt!1659965 (_1!28580 lt!1659810)) lt!1660037)))

(declare-fun b!4471757 () Bool)

(declare-fun lt!1660040 () Unit!88025)

(assert (=> b!4471757 (= e!2784640 lt!1660040)))

(assert (=> b!4471757 (= lt!1660040 (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lt!1659965) (_1!28580 lt!1659810)))))

(assert (=> b!4471757 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659965) (_1!28580 lt!1659810)))))

(declare-fun b!4471758 () Bool)

(declare-fun Unit!88048 () Unit!88025)

(assert (=> b!4471758 (= e!2784640 Unit!88048)))

(declare-fun b!4471759 () Bool)

(assert (=> b!4471759 (= e!2784641 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659965) (_1!28580 lt!1659810))))))

(assert (= (and d!1364547 c!761370) b!4471757))

(assert (= (and d!1364547 (not c!761370)) b!4471758))

(assert (= (and d!1364547 (not res!1855469)) b!4471759))

(declare-fun m!5180007 () Bool)

(assert (=> d!1364547 m!5180007))

(declare-fun m!5180009 () Bool)

(assert (=> b!4471757 m!5180009))

(assert (=> b!4471757 m!5179815))

(assert (=> b!4471757 m!5179815))

(declare-fun m!5180011 () Bool)

(assert (=> b!4471757 m!5180011))

(assert (=> b!4471759 m!5179815))

(assert (=> b!4471759 m!5179815))

(assert (=> b!4471759 m!5180011))

(assert (=> d!1364471 d!1364547))

(declare-fun d!1364549 () Bool)

(declare-fun c!761375 () Bool)

(assert (=> d!1364549 (= c!761375 (and ((_ is Cons!50311) lt!1659966) (= (_1!28580 (h!56080 lt!1659966)) (_1!28580 lt!1659810))))))

(declare-fun e!2784650 () Option!10938)

(assert (=> d!1364549 (= (getValueByKey!924 lt!1659966 (_1!28580 lt!1659810)) e!2784650)))

(declare-fun b!4471775 () Bool)

(declare-fun e!2784651 () Option!10938)

(assert (=> b!4471775 (= e!2784651 None!10937)))

(declare-fun b!4471773 () Bool)

(assert (=> b!4471773 (= e!2784650 e!2784651)))

(declare-fun c!761376 () Bool)

(assert (=> b!4471773 (= c!761376 (and ((_ is Cons!50311) lt!1659966) (not (= (_1!28580 (h!56080 lt!1659966)) (_1!28580 lt!1659810)))))))

(declare-fun b!4471772 () Bool)

(assert (=> b!4471772 (= e!2784650 (Some!10937 (_2!28580 (h!56080 lt!1659966))))))

(declare-fun b!4471774 () Bool)

(assert (=> b!4471774 (= e!2784651 (getValueByKey!924 (t!357385 lt!1659966) (_1!28580 lt!1659810)))))

(assert (= (and d!1364549 c!761375) b!4471772))

(assert (= (and d!1364549 (not c!761375)) b!4471773))

(assert (= (and b!4471773 c!761376) b!4471774))

(assert (= (and b!4471773 (not c!761376)) b!4471775))

(declare-fun m!5180019 () Bool)

(assert (=> b!4471774 m!5180019))

(assert (=> d!1364471 d!1364549))

(declare-fun d!1364557 () Bool)

(assert (=> d!1364557 (= (getValueByKey!924 lt!1659966 (_1!28580 lt!1659810)) (Some!10937 (_2!28580 lt!1659810)))))

(declare-fun lt!1660043 () Unit!88025)

(declare-fun choose!28628 (List!50435 (_ BitVec 64) List!50434) Unit!88025)

(assert (=> d!1364557 (= lt!1660043 (choose!28628 lt!1659966 (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(declare-fun e!2784654 () Bool)

(assert (=> d!1364557 e!2784654))

(declare-fun res!1855478 () Bool)

(assert (=> d!1364557 (=> (not res!1855478) (not e!2784654))))

(assert (=> d!1364557 (= res!1855478 (isStrictlySorted!347 lt!1659966))))

(assert (=> d!1364557 (= (lemmaContainsTupThenGetReturnValue!590 lt!1659966 (_1!28580 lt!1659810) (_2!28580 lt!1659810)) lt!1660043)))

(declare-fun b!4471780 () Bool)

(declare-fun res!1855479 () Bool)

(assert (=> b!4471780 (=> (not res!1855479) (not e!2784654))))

(assert (=> b!4471780 (= res!1855479 (containsKey!1493 lt!1659966 (_1!28580 lt!1659810)))))

(declare-fun b!4471781 () Bool)

(assert (=> b!4471781 (= e!2784654 (contains!12875 lt!1659966 (tuple2!50573 (_1!28580 lt!1659810) (_2!28580 lt!1659810))))))

(assert (= (and d!1364557 res!1855478) b!4471780))

(assert (= (and b!4471780 res!1855479) b!4471781))

(assert (=> d!1364557 m!5179809))

(declare-fun m!5180021 () Bool)

(assert (=> d!1364557 m!5180021))

(declare-fun m!5180023 () Bool)

(assert (=> d!1364557 m!5180023))

(declare-fun m!5180025 () Bool)

(assert (=> b!4471780 m!5180025))

(declare-fun m!5180027 () Bool)

(assert (=> b!4471781 m!5180027))

(assert (=> d!1364471 d!1364557))

(declare-fun b!4471802 () Bool)

(declare-fun e!2784665 () List!50435)

(declare-fun call!311353 () List!50435)

(assert (=> b!4471802 (= e!2784665 call!311353)))

(declare-fun b!4471803 () Bool)

(declare-fun e!2784668 () List!50435)

(declare-fun call!311354 () List!50435)

(assert (=> b!4471803 (= e!2784668 call!311354)))

(declare-fun d!1364559 () Bool)

(declare-fun e!2784667 () Bool)

(assert (=> d!1364559 e!2784667))

(declare-fun res!1855485 () Bool)

(assert (=> d!1364559 (=> (not res!1855485) (not e!2784667))))

(declare-fun lt!1660046 () List!50435)

(assert (=> d!1364559 (= res!1855485 (isStrictlySorted!347 lt!1660046))))

(assert (=> d!1364559 (= lt!1660046 e!2784668)))

(declare-fun c!761387 () Bool)

(assert (=> d!1364559 (= c!761387 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (bvslt (_1!28580 (h!56080 (toList!4075 lm!1477))) (_1!28580 lt!1659810))))))

(assert (=> d!1364559 (isStrictlySorted!347 (toList!4075 lm!1477))))

(assert (=> d!1364559 (= (insertStrictlySorted!336 (toList!4075 lm!1477) (_1!28580 lt!1659810) (_2!28580 lt!1659810)) lt!1660046)))

(declare-fun b!4471804 () Bool)

(assert (=> b!4471804 (= e!2784667 (contains!12875 lt!1660046 (tuple2!50573 (_1!28580 lt!1659810) (_2!28580 lt!1659810))))))

(declare-fun b!4471805 () Bool)

(declare-fun e!2784666 () List!50435)

(assert (=> b!4471805 (= e!2784668 e!2784666)))

(declare-fun c!761388 () Bool)

(assert (=> b!4471805 (= c!761388 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (= (_1!28580 (h!56080 (toList!4075 lm!1477))) (_1!28580 lt!1659810))))))

(declare-fun b!4471806 () Bool)

(declare-fun c!761385 () Bool)

(assert (=> b!4471806 (= c!761385 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (bvsgt (_1!28580 (h!56080 (toList!4075 lm!1477))) (_1!28580 lt!1659810))))))

(assert (=> b!4471806 (= e!2784666 e!2784665)))

(declare-fun e!2784669 () List!50435)

(declare-fun bm!311348 () Bool)

(declare-fun $colon$colon!857 (List!50435 tuple2!50572) List!50435)

(assert (=> bm!311348 (= call!311354 ($colon$colon!857 e!2784669 (ite c!761387 (h!56080 (toList!4075 lm!1477)) (tuple2!50573 (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))))

(declare-fun c!761386 () Bool)

(assert (=> bm!311348 (= c!761386 c!761387)))

(declare-fun b!4471807 () Bool)

(assert (=> b!4471807 (= e!2784665 call!311353)))

(declare-fun b!4471808 () Bool)

(assert (=> b!4471808 (= e!2784669 (insertStrictlySorted!336 (t!357385 (toList!4075 lm!1477)) (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(declare-fun b!4471809 () Bool)

(assert (=> b!4471809 (= e!2784669 (ite c!761388 (t!357385 (toList!4075 lm!1477)) (ite c!761385 (Cons!50311 (h!56080 (toList!4075 lm!1477)) (t!357385 (toList!4075 lm!1477))) Nil!50311)))))

(declare-fun bm!311349 () Bool)

(declare-fun call!311355 () List!50435)

(assert (=> bm!311349 (= call!311355 call!311354)))

(declare-fun b!4471810 () Bool)

(assert (=> b!4471810 (= e!2784666 call!311355)))

(declare-fun b!4471811 () Bool)

(declare-fun res!1855484 () Bool)

(assert (=> b!4471811 (=> (not res!1855484) (not e!2784667))))

(assert (=> b!4471811 (= res!1855484 (containsKey!1493 lt!1660046 (_1!28580 lt!1659810)))))

(declare-fun bm!311350 () Bool)

(assert (=> bm!311350 (= call!311353 call!311355)))

(assert (= (and d!1364559 c!761387) b!4471803))

(assert (= (and d!1364559 (not c!761387)) b!4471805))

(assert (= (and b!4471805 c!761388) b!4471810))

(assert (= (and b!4471805 (not c!761388)) b!4471806))

(assert (= (and b!4471806 c!761385) b!4471807))

(assert (= (and b!4471806 (not c!761385)) b!4471802))

(assert (= (or b!4471807 b!4471802) bm!311350))

(assert (= (or b!4471810 bm!311350) bm!311349))

(assert (= (or b!4471803 bm!311349) bm!311348))

(assert (= (and bm!311348 c!761386) b!4471808))

(assert (= (and bm!311348 (not c!761386)) b!4471809))

(assert (= (and d!1364559 res!1855485) b!4471811))

(assert (= (and b!4471811 res!1855484) b!4471804))

(declare-fun m!5180029 () Bool)

(assert (=> b!4471811 m!5180029))

(declare-fun m!5180031 () Bool)

(assert (=> b!4471808 m!5180031))

(declare-fun m!5180033 () Bool)

(assert (=> b!4471804 m!5180033))

(declare-fun m!5180035 () Bool)

(assert (=> d!1364559 m!5180035))

(assert (=> d!1364559 m!5179697))

(declare-fun m!5180037 () Bool)

(assert (=> bm!311348 m!5180037))

(assert (=> d!1364471 d!1364559))

(assert (=> b!4471545 d!1364449))

(declare-fun d!1364563 () Bool)

(declare-fun res!1855488 () Bool)

(declare-fun e!2784672 () Bool)

(assert (=> d!1364563 (=> res!1855488 e!2784672)))

(assert (=> d!1364563 (= res!1855488 (not ((_ is Cons!50310) (t!357384 newBucket!178))))))

(assert (=> d!1364563 (= (noDuplicateKeys!1034 (t!357384 newBucket!178)) e!2784672)))

(declare-fun b!4471814 () Bool)

(declare-fun e!2784673 () Bool)

(assert (=> b!4471814 (= e!2784672 e!2784673)))

(declare-fun res!1855489 () Bool)

(assert (=> b!4471814 (=> (not res!1855489) (not e!2784673))))

(assert (=> b!4471814 (= res!1855489 (not (containsKey!1490 (t!357384 (t!357384 newBucket!178)) (_1!28579 (h!56079 (t!357384 newBucket!178))))))))

(declare-fun b!4471815 () Bool)

(assert (=> b!4471815 (= e!2784673 (noDuplicateKeys!1034 (t!357384 (t!357384 newBucket!178))))))

(assert (= (and d!1364563 (not res!1855488)) b!4471814))

(assert (= (and b!4471814 res!1855489) b!4471815))

(declare-fun m!5180041 () Bool)

(assert (=> b!4471814 m!5180041))

(declare-fun m!5180043 () Bool)

(assert (=> b!4471815 m!5180043))

(assert (=> b!4471459 d!1364563))

(declare-fun d!1364565 () Bool)

(declare-fun lt!1660047 () Bool)

(assert (=> d!1364565 (= lt!1660047 (select (content!8120 (toList!4075 lt!1659965)) lt!1659810))))

(declare-fun e!2784675 () Bool)

(assert (=> d!1364565 (= lt!1660047 e!2784675)))

(declare-fun res!1855490 () Bool)

(assert (=> d!1364565 (=> (not res!1855490) (not e!2784675))))

(assert (=> d!1364565 (= res!1855490 ((_ is Cons!50311) (toList!4075 lt!1659965)))))

(assert (=> d!1364565 (= (contains!12875 (toList!4075 lt!1659965) lt!1659810) lt!1660047)))

(declare-fun b!4471816 () Bool)

(declare-fun e!2784674 () Bool)

(assert (=> b!4471816 (= e!2784675 e!2784674)))

(declare-fun res!1855491 () Bool)

(assert (=> b!4471816 (=> res!1855491 e!2784674)))

(assert (=> b!4471816 (= res!1855491 (= (h!56080 (toList!4075 lt!1659965)) lt!1659810))))

(declare-fun b!4471817 () Bool)

(assert (=> b!4471817 (= e!2784674 (contains!12875 (t!357385 (toList!4075 lt!1659965)) lt!1659810))))

(assert (= (and d!1364565 res!1855490) b!4471816))

(assert (= (and b!4471816 (not res!1855491)) b!4471817))

(declare-fun m!5180047 () Bool)

(assert (=> d!1364565 m!5180047))

(declare-fun m!5180049 () Bool)

(assert (=> d!1364565 m!5180049))

(declare-fun m!5180051 () Bool)

(assert (=> b!4471817 m!5180051))

(assert (=> b!4471653 d!1364565))

(declare-fun d!1364569 () Bool)

(declare-fun res!1855498 () Bool)

(declare-fun e!2784684 () Bool)

(assert (=> d!1364569 (=> res!1855498 e!2784684)))

(assert (=> d!1364569 (= res!1855498 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) key!3287)))))

(assert (=> d!1364569 (= (containsKey!1494 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287) e!2784684)))

(declare-fun b!4471828 () Bool)

(declare-fun e!2784685 () Bool)

(assert (=> b!4471828 (= e!2784684 e!2784685)))

(declare-fun res!1855499 () Bool)

(assert (=> b!4471828 (=> (not res!1855499) (not e!2784685))))

(assert (=> b!4471828 (= res!1855499 ((_ is Cons!50310) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))

(declare-fun b!4471829 () Bool)

(assert (=> b!4471829 (= e!2784685 (containsKey!1494 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) key!3287))))

(assert (= (and d!1364569 (not res!1855498)) b!4471828))

(assert (= (and b!4471828 res!1855499) b!4471829))

(declare-fun m!5180063 () Bool)

(assert (=> b!4471829 m!5180063))

(assert (=> d!1364525 d!1364569))

(declare-fun d!1364575 () Bool)

(declare-fun res!1855508 () Bool)

(declare-fun e!2784694 () Bool)

(assert (=> d!1364575 (=> res!1855508 e!2784694)))

(assert (=> d!1364575 (= res!1855508 (and ((_ is Cons!50311) (toList!4075 lt!1659812)) (= (_1!28580 (h!56080 (toList!4075 lt!1659812))) lt!1659807)))))

(assert (=> d!1364575 (= (containsKey!1493 (toList!4075 lt!1659812) lt!1659807) e!2784694)))

(declare-fun b!4471838 () Bool)

(declare-fun e!2784695 () Bool)

(assert (=> b!4471838 (= e!2784694 e!2784695)))

(declare-fun res!1855509 () Bool)

(assert (=> b!4471838 (=> (not res!1855509) (not e!2784695))))

(assert (=> b!4471838 (= res!1855509 (and (or (not ((_ is Cons!50311) (toList!4075 lt!1659812))) (bvsle (_1!28580 (h!56080 (toList!4075 lt!1659812))) lt!1659807)) ((_ is Cons!50311) (toList!4075 lt!1659812)) (bvslt (_1!28580 (h!56080 (toList!4075 lt!1659812))) lt!1659807)))))

(declare-fun b!4471839 () Bool)

(assert (=> b!4471839 (= e!2784695 (containsKey!1493 (t!357385 (toList!4075 lt!1659812)) lt!1659807))))

(assert (= (and d!1364575 (not res!1855508)) b!4471838))

(assert (= (and b!4471838 res!1855509) b!4471839))

(declare-fun m!5180065 () Bool)

(assert (=> b!4471839 m!5180065))

(assert (=> d!1364523 d!1364575))

(declare-fun b!4471842 () Bool)

(declare-fun e!2784702 () Bool)

(declare-fun e!2784700 () Bool)

(assert (=> b!4471842 (= e!2784702 e!2784700)))

(declare-fun res!1855513 () Bool)

(assert (=> b!4471842 (=> (not res!1855513) (not e!2784700))))

(assert (=> b!4471842 (= res!1855513 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287)))))

(declare-fun bm!311351 () Bool)

(declare-fun call!311356 () Bool)

(declare-fun e!2784701 () List!50437)

(assert (=> bm!311351 (= call!311356 (contains!12877 e!2784701 key!3287))))

(declare-fun c!761391 () Bool)

(declare-fun c!761392 () Bool)

(assert (=> bm!311351 (= c!761391 c!761392)))

(declare-fun b!4471843 () Bool)

(assert (=> b!4471843 false))

(declare-fun lt!1660057 () Unit!88025)

(declare-fun lt!1660050 () Unit!88025)

(assert (=> b!4471843 (= lt!1660057 lt!1660050)))

(assert (=> b!4471843 (containsKey!1494 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287)))

(assert (=> b!4471843 (= lt!1660050 (lemmaInGetKeysListThenContainsKey!380 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287))))

(declare-fun e!2784698 () Unit!88025)

(declare-fun Unit!88049 () Unit!88025)

(assert (=> b!4471843 (= e!2784698 Unit!88049)))

(declare-fun b!4471844 () Bool)

(assert (=> b!4471844 (= e!2784701 (keys!17378 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))))))

(declare-fun d!1364577 () Bool)

(assert (=> d!1364577 e!2784702))

(declare-fun res!1855514 () Bool)

(assert (=> d!1364577 (=> res!1855514 e!2784702)))

(declare-fun e!2784699 () Bool)

(assert (=> d!1364577 (= res!1855514 e!2784699)))

(declare-fun res!1855512 () Bool)

(assert (=> d!1364577 (=> (not res!1855512) (not e!2784699))))

(declare-fun lt!1660052 () Bool)

(assert (=> d!1364577 (= res!1855512 (not lt!1660052))))

(declare-fun lt!1660055 () Bool)

(assert (=> d!1364577 (= lt!1660052 lt!1660055)))

(declare-fun lt!1660053 () Unit!88025)

(declare-fun e!2784703 () Unit!88025)

(assert (=> d!1364577 (= lt!1660053 e!2784703)))

(assert (=> d!1364577 (= c!761392 lt!1660055)))

(assert (=> d!1364577 (= lt!1660055 (containsKey!1494 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287))))

(assert (=> d!1364577 (= (contains!12873 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816))) key!3287) lt!1660052)))

(declare-fun b!4471845 () Bool)

(declare-fun Unit!88050 () Unit!88025)

(assert (=> b!4471845 (= e!2784698 Unit!88050)))

(declare-fun b!4471846 () Bool)

(assert (=> b!4471846 (= e!2784699 (not (contains!12877 (keys!17378 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287)))))

(declare-fun b!4471847 () Bool)

(assert (=> b!4471847 (= e!2784703 e!2784698)))

(declare-fun c!761393 () Bool)

(assert (=> b!4471847 (= c!761393 call!311356)))

(declare-fun b!4471848 () Bool)

(assert (=> b!4471848 (= e!2784700 (contains!12877 (keys!17378 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287))))

(declare-fun b!4471849 () Bool)

(declare-fun lt!1660051 () Unit!88025)

(assert (=> b!4471849 (= e!2784703 lt!1660051)))

(declare-fun lt!1660054 () Unit!88025)

(assert (=> b!4471849 (= lt!1660054 (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287))))

(assert (=> b!4471849 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287))))

(declare-fun lt!1660056 () Unit!88025)

(assert (=> b!4471849 (= lt!1660056 lt!1660054)))

(assert (=> b!4471849 (= lt!1660051 (lemmaInListThenGetKeysListContains!377 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816)))) key!3287))))

(assert (=> b!4471849 call!311356))

(declare-fun b!4471850 () Bool)

(assert (=> b!4471850 (= e!2784701 (getKeysList!381 (toList!4076 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816))))))))

(assert (= (and d!1364577 c!761392) b!4471849))

(assert (= (and d!1364577 (not c!761392)) b!4471847))

(assert (= (and b!4471847 c!761393) b!4471843))

(assert (= (and b!4471847 (not c!761393)) b!4471845))

(assert (= (or b!4471849 b!4471847) bm!311351))

(assert (= (and bm!311351 c!761391) b!4471850))

(assert (= (and bm!311351 (not c!761391)) b!4471844))

(assert (= (and d!1364577 res!1855512) b!4471846))

(assert (= (and d!1364577 (not res!1855514)) b!4471842))

(assert (= (and b!4471842 res!1855513) b!4471848))

(declare-fun m!5180069 () Bool)

(assert (=> b!4471843 m!5180069))

(declare-fun m!5180071 () Bool)

(assert (=> b!4471843 m!5180071))

(declare-fun m!5180073 () Bool)

(assert (=> b!4471850 m!5180073))

(assert (=> b!4471844 m!5179899))

(declare-fun m!5180075 () Bool)

(assert (=> b!4471844 m!5180075))

(assert (=> b!4471846 m!5179899))

(assert (=> b!4471846 m!5180075))

(assert (=> b!4471846 m!5180075))

(declare-fun m!5180077 () Bool)

(assert (=> b!4471846 m!5180077))

(declare-fun m!5180079 () Bool)

(assert (=> b!4471849 m!5180079))

(declare-fun m!5180081 () Bool)

(assert (=> b!4471849 m!5180081))

(assert (=> b!4471849 m!5180081))

(declare-fun m!5180083 () Bool)

(assert (=> b!4471849 m!5180083))

(declare-fun m!5180085 () Bool)

(assert (=> b!4471849 m!5180085))

(assert (=> b!4471842 m!5180081))

(assert (=> b!4471842 m!5180081))

(assert (=> b!4471842 m!5180083))

(assert (=> b!4471848 m!5179899))

(assert (=> b!4471848 m!5180075))

(assert (=> b!4471848 m!5180075))

(assert (=> b!4471848 m!5180077))

(declare-fun m!5180087 () Bool)

(assert (=> bm!311351 m!5180087))

(assert (=> d!1364577 m!5180069))

(assert (=> d!1364511 d!1364577))

(declare-fun bs!796406 () Bool)

(declare-fun d!1364581 () Bool)

(assert (= bs!796406 (and d!1364581 d!1364505)))

(declare-fun lambda!163690 () Int)

(assert (=> bs!796406 (= lambda!163690 lambda!163684)))

(declare-fun bs!796407 () Bool)

(assert (= bs!796407 (and d!1364581 d!1364511)))

(assert (=> bs!796407 (= lambda!163690 lambda!163687)))

(declare-fun bs!796408 () Bool)

(assert (= bs!796408 (and d!1364581 d!1364503)))

(assert (=> bs!796408 (= lambda!163690 lambda!163683)))

(declare-fun bs!796409 () Bool)

(assert (= bs!796409 (and d!1364581 d!1364527)))

(assert (=> bs!796409 (= lambda!163690 lambda!163689)))

(declare-fun bs!796410 () Bool)

(assert (= bs!796410 (and d!1364581 d!1364521)))

(assert (=> bs!796410 (= lambda!163690 lambda!163688)))

(declare-fun bs!796411 () Bool)

(assert (= bs!796411 (and d!1364581 d!1364393)))

(assert (=> bs!796411 (not (= lambda!163690 lambda!163647))))

(declare-fun bs!796412 () Bool)

(assert (= bs!796412 (and d!1364581 d!1364423)))

(assert (=> bs!796412 (= lambda!163690 lambda!163668)))

(declare-fun bs!796413 () Bool)

(assert (= bs!796413 (and d!1364581 d!1364409)))

(assert (=> bs!796413 (= lambda!163690 lambda!163663)))

(declare-fun bs!796414 () Bool)

(assert (= bs!796414 (and d!1364581 d!1364467)))

(assert (=> bs!796414 (= lambda!163690 lambda!163674)))

(declare-fun bs!796415 () Bool)

(assert (= bs!796415 (and d!1364581 d!1364395)))

(assert (=> bs!796415 (= lambda!163690 lambda!163653)))

(declare-fun bs!796416 () Bool)

(assert (= bs!796416 (and d!1364581 d!1364421)))

(assert (=> bs!796416 (= lambda!163690 lambda!163664)))

(declare-fun bs!796417 () Bool)

(assert (= bs!796417 (and d!1364581 start!439496)))

(assert (=> bs!796417 (= lambda!163690 lambda!163641)))

(declare-fun lt!1660058 () ListMap!3337)

(assert (=> d!1364581 (invariantList!933 (toList!4076 lt!1660058))))

(declare-fun e!2784704 () ListMap!3337)

(assert (=> d!1364581 (= lt!1660058 e!2784704)))

(declare-fun c!761394 () Bool)

(assert (=> d!1364581 (= c!761394 ((_ is Cons!50311) (toList!4075 (ListLongMap!2708 lt!1659816))))))

(assert (=> d!1364581 (forall!10008 (toList!4075 (ListLongMap!2708 lt!1659816)) lambda!163690)))

(assert (=> d!1364581 (= (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816))) lt!1660058)))

(declare-fun b!4471851 () Bool)

(assert (=> b!4471851 (= e!2784704 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (toList!4075 (ListLongMap!2708 lt!1659816)))) (extractMap!1090 (t!357385 (toList!4075 (ListLongMap!2708 lt!1659816))))))))

(declare-fun b!4471852 () Bool)

(assert (=> b!4471852 (= e!2784704 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364581 c!761394) b!4471851))

(assert (= (and d!1364581 (not c!761394)) b!4471852))

(declare-fun m!5180089 () Bool)

(assert (=> d!1364581 m!5180089))

(declare-fun m!5180091 () Bool)

(assert (=> d!1364581 m!5180091))

(declare-fun m!5180093 () Bool)

(assert (=> b!4471851 m!5180093))

(assert (=> b!4471851 m!5180093))

(declare-fun m!5180095 () Bool)

(assert (=> b!4471851 m!5180095))

(assert (=> d!1364511 d!1364581))

(declare-fun d!1364583 () Bool)

(assert (=> d!1364583 (contains!12873 (extractMap!1090 (toList!4075 (ListLongMap!2708 lt!1659816))) key!3287)))

(assert (=> d!1364583 true))

(declare-fun _$34!565 () Unit!88025)

(assert (=> d!1364583 (= (choose!28627 (ListLongMap!2708 lt!1659816) key!3287 hashF!1107) _$34!565)))

(declare-fun bs!796419 () Bool)

(assert (= bs!796419 d!1364583))

(assert (=> bs!796419 m!5179899))

(assert (=> bs!796419 m!5179899))

(assert (=> bs!796419 m!5179901))

(assert (=> d!1364511 d!1364583))

(declare-fun d!1364591 () Bool)

(declare-fun res!1855524 () Bool)

(declare-fun e!2784710 () Bool)

(assert (=> d!1364591 (=> res!1855524 e!2784710)))

(assert (=> d!1364591 (= res!1855524 ((_ is Nil!50311) (toList!4075 (ListLongMap!2708 lt!1659816))))))

(assert (=> d!1364591 (= (forall!10008 (toList!4075 (ListLongMap!2708 lt!1659816)) lambda!163687) e!2784710)))

(declare-fun b!4471860 () Bool)

(declare-fun e!2784711 () Bool)

(assert (=> b!4471860 (= e!2784710 e!2784711)))

(declare-fun res!1855525 () Bool)

(assert (=> b!4471860 (=> (not res!1855525) (not e!2784711))))

(assert (=> b!4471860 (= res!1855525 (dynLambda!21022 lambda!163687 (h!56080 (toList!4075 (ListLongMap!2708 lt!1659816)))))))

(declare-fun b!4471861 () Bool)

(assert (=> b!4471861 (= e!2784711 (forall!10008 (t!357385 (toList!4075 (ListLongMap!2708 lt!1659816))) lambda!163687))))

(assert (= (and d!1364591 (not res!1855524)) b!4471860))

(assert (= (and b!4471860 res!1855525) b!4471861))

(declare-fun b_lambda!148585 () Bool)

(assert (=> (not b_lambda!148585) (not b!4471860)))

(declare-fun m!5180105 () Bool)

(assert (=> b!4471860 m!5180105))

(declare-fun m!5180107 () Bool)

(assert (=> b!4471861 m!5180107))

(assert (=> d!1364511 d!1364591))

(declare-fun d!1364593 () Bool)

(declare-fun isEmpty!28502 (Option!10939) Bool)

(assert (=> d!1364593 (= (isDefined!8226 (getValueByKey!925 (toList!4076 lt!1659809) key!3287)) (not (isEmpty!28502 (getValueByKey!925 (toList!4076 lt!1659809) key!3287))))))

(declare-fun bs!796420 () Bool)

(assert (= bs!796420 d!1364593))

(assert (=> bs!796420 m!5179983))

(declare-fun m!5180109 () Bool)

(assert (=> bs!796420 m!5180109))

(assert (=> b!4471727 d!1364593))

(declare-fun b!4471872 () Bool)

(declare-fun e!2784716 () Option!10939)

(assert (=> b!4471872 (= e!2784716 (Some!10938 (_2!28579 (h!56079 (toList!4076 lt!1659809)))))))

(declare-fun b!4471875 () Bool)

(declare-fun e!2784717 () Option!10939)

(assert (=> b!4471875 (= e!2784717 None!10938)))

(declare-fun b!4471873 () Bool)

(assert (=> b!4471873 (= e!2784716 e!2784717)))

(declare-fun c!761400 () Bool)

(assert (=> b!4471873 (= c!761400 (and ((_ is Cons!50310) (toList!4076 lt!1659809)) (not (= (_1!28579 (h!56079 (toList!4076 lt!1659809))) key!3287))))))

(declare-fun d!1364595 () Bool)

(declare-fun c!761399 () Bool)

(assert (=> d!1364595 (= c!761399 (and ((_ is Cons!50310) (toList!4076 lt!1659809)) (= (_1!28579 (h!56079 (toList!4076 lt!1659809))) key!3287)))))

(assert (=> d!1364595 (= (getValueByKey!925 (toList!4076 lt!1659809) key!3287) e!2784716)))

(declare-fun b!4471874 () Bool)

(assert (=> b!4471874 (= e!2784717 (getValueByKey!925 (t!357384 (toList!4076 lt!1659809)) key!3287))))

(assert (= (and d!1364595 c!761399) b!4471872))

(assert (= (and d!1364595 (not c!761399)) b!4471873))

(assert (= (and b!4471873 c!761400) b!4471874))

(assert (= (and b!4471873 (not c!761400)) b!4471875))

(declare-fun m!5180111 () Bool)

(assert (=> b!4471874 m!5180111))

(assert (=> b!4471727 d!1364595))

(declare-fun d!1364597 () Bool)

(declare-fun c!761401 () Bool)

(assert (=> d!1364597 (= c!761401 (and ((_ is Cons!50311) (toList!4075 lt!1660009)) (= (_1!28580 (h!56080 (toList!4075 lt!1660009))) (_1!28580 lt!1659810))))))

(declare-fun e!2784718 () Option!10938)

(assert (=> d!1364597 (= (getValueByKey!924 (toList!4075 lt!1660009) (_1!28580 lt!1659810)) e!2784718)))

(declare-fun b!4471879 () Bool)

(declare-fun e!2784719 () Option!10938)

(assert (=> b!4471879 (= e!2784719 None!10937)))

(declare-fun b!4471877 () Bool)

(assert (=> b!4471877 (= e!2784718 e!2784719)))

(declare-fun c!761402 () Bool)

(assert (=> b!4471877 (= c!761402 (and ((_ is Cons!50311) (toList!4075 lt!1660009)) (not (= (_1!28580 (h!56080 (toList!4075 lt!1660009))) (_1!28580 lt!1659810)))))))

(declare-fun b!4471876 () Bool)

(assert (=> b!4471876 (= e!2784718 (Some!10937 (_2!28580 (h!56080 (toList!4075 lt!1660009)))))))

(declare-fun b!4471878 () Bool)

(assert (=> b!4471878 (= e!2784719 (getValueByKey!924 (t!357385 (toList!4075 lt!1660009)) (_1!28580 lt!1659810)))))

(assert (= (and d!1364597 c!761401) b!4471876))

(assert (= (and d!1364597 (not c!761401)) b!4471877))

(assert (= (and b!4471877 c!761402) b!4471878))

(assert (= (and b!4471877 (not c!761402)) b!4471879))

(declare-fun m!5180113 () Bool)

(assert (=> b!4471878 m!5180113))

(assert (=> b!4471702 d!1364597))

(declare-fun d!1364599 () Bool)

(declare-fun lt!1660067 () Bool)

(assert (=> d!1364599 (= lt!1660067 (select (content!8121 e!2784605) key!3287))))

(declare-fun e!2784728 () Bool)

(assert (=> d!1364599 (= lt!1660067 e!2784728)))

(declare-fun res!1855536 () Bool)

(assert (=> d!1364599 (=> (not res!1855536) (not e!2784728))))

(assert (=> d!1364599 (= res!1855536 ((_ is Cons!50313) e!2784605))))

(assert (=> d!1364599 (= (contains!12877 e!2784605 key!3287) lt!1660067)))

(declare-fun b!4471891 () Bool)

(declare-fun e!2784727 () Bool)

(assert (=> b!4471891 (= e!2784728 e!2784727)))

(declare-fun res!1855535 () Bool)

(assert (=> b!4471891 (=> res!1855535 e!2784727)))

(assert (=> b!4471891 (= res!1855535 (= (h!56084 e!2784605) key!3287))))

(declare-fun b!4471892 () Bool)

(assert (=> b!4471892 (= e!2784727 (contains!12877 (t!357387 e!2784605) key!3287))))

(assert (= (and d!1364599 res!1855536) b!4471891))

(assert (= (and b!4471891 (not res!1855535)) b!4471892))

(declare-fun m!5180131 () Bool)

(assert (=> d!1364599 m!5180131))

(declare-fun m!5180133 () Bool)

(assert (=> d!1364599 m!5180133))

(declare-fun m!5180135 () Bool)

(assert (=> b!4471892 m!5180135))

(assert (=> bm!311340 d!1364599))

(declare-fun d!1364605 () Bool)

(declare-fun res!1855537 () Bool)

(declare-fun e!2784729 () Bool)

(assert (=> d!1364605 (=> res!1855537 e!2784729)))

(assert (=> d!1364605 (= res!1855537 (and ((_ is Cons!50310) (toList!4076 lt!1659809)) (= (_1!28579 (h!56079 (toList!4076 lt!1659809))) key!3287)))))

(assert (=> d!1364605 (= (containsKey!1494 (toList!4076 lt!1659809) key!3287) e!2784729)))

(declare-fun b!4471893 () Bool)

(declare-fun e!2784730 () Bool)

(assert (=> b!4471893 (= e!2784729 e!2784730)))

(declare-fun res!1855538 () Bool)

(assert (=> b!4471893 (=> (not res!1855538) (not e!2784730))))

(assert (=> b!4471893 (= res!1855538 ((_ is Cons!50310) (toList!4076 lt!1659809)))))

(declare-fun b!4471894 () Bool)

(assert (=> b!4471894 (= e!2784730 (containsKey!1494 (t!357384 (toList!4076 lt!1659809)) key!3287))))

(assert (= (and d!1364605 (not res!1855537)) b!4471893))

(assert (= (and b!4471893 res!1855538) b!4471894))

(declare-fun m!5180137 () Bool)

(assert (=> b!4471894 m!5180137))

(assert (=> b!4471728 d!1364605))

(declare-fun d!1364607 () Bool)

(assert (=> d!1364607 (containsKey!1494 (toList!4076 lt!1659809) key!3287)))

(declare-fun lt!1660070 () Unit!88025)

(declare-fun choose!28630 (List!50434 K!11725) Unit!88025)

(assert (=> d!1364607 (= lt!1660070 (choose!28630 (toList!4076 lt!1659809) key!3287))))

(assert (=> d!1364607 (invariantList!933 (toList!4076 lt!1659809))))

(assert (=> d!1364607 (= (lemmaInGetKeysListThenContainsKey!380 (toList!4076 lt!1659809) key!3287) lt!1660070)))

(declare-fun bs!796421 () Bool)

(assert (= bs!796421 d!1364607))

(assert (=> bs!796421 m!5179971))

(declare-fun m!5180139 () Bool)

(assert (=> bs!796421 m!5180139))

(declare-fun m!5180141 () Bool)

(assert (=> bs!796421 m!5180141))

(assert (=> b!4471728 d!1364607))

(declare-fun d!1364609 () Bool)

(assert (=> d!1364609 (= (get!16406 (getValueByKey!924 (toList!4075 lm!1477) hash!344)) (v!44271 (getValueByKey!924 (toList!4075 lm!1477) hash!344)))))

(assert (=> d!1364433 d!1364609))

(declare-fun d!1364611 () Bool)

(declare-fun c!761403 () Bool)

(assert (=> d!1364611 (= c!761403 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (= (_1!28580 (h!56080 (toList!4075 lm!1477))) hash!344)))))

(declare-fun e!2784731 () Option!10938)

(assert (=> d!1364611 (= (getValueByKey!924 (toList!4075 lm!1477) hash!344) e!2784731)))

(declare-fun b!4471898 () Bool)

(declare-fun e!2784732 () Option!10938)

(assert (=> b!4471898 (= e!2784732 None!10937)))

(declare-fun b!4471896 () Bool)

(assert (=> b!4471896 (= e!2784731 e!2784732)))

(declare-fun c!761404 () Bool)

(assert (=> b!4471896 (= c!761404 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (not (= (_1!28580 (h!56080 (toList!4075 lm!1477))) hash!344))))))

(declare-fun b!4471895 () Bool)

(assert (=> b!4471895 (= e!2784731 (Some!10937 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(declare-fun b!4471897 () Bool)

(assert (=> b!4471897 (= e!2784732 (getValueByKey!924 (t!357385 (toList!4075 lm!1477)) hash!344))))

(assert (= (and d!1364611 c!761403) b!4471895))

(assert (= (and d!1364611 (not c!761403)) b!4471896))

(assert (= (and b!4471896 c!761404) b!4471897))

(assert (= (and b!4471896 (not c!761404)) b!4471898))

(declare-fun m!5180143 () Bool)

(assert (=> b!4471897 m!5180143))

(assert (=> d!1364433 d!1364611))

(declare-fun d!1364613 () Bool)

(declare-fun c!761407 () Bool)

(assert (=> d!1364613 (= c!761407 ((_ is Nil!50313) (keys!17378 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun e!2784735 () (InoxSet K!11725))

(assert (=> d!1364613 (= (content!8121 (keys!17378 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) e!2784735)))

(declare-fun b!4471903 () Bool)

(assert (=> b!4471903 (= e!2784735 ((as const (Array K!11725 Bool)) false))))

(declare-fun b!4471904 () Bool)

(assert (=> b!4471904 (= e!2784735 ((_ map or) (store ((as const (Array K!11725 Bool)) false) (h!56084 (keys!17378 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) true) (content!8121 (t!357387 (keys!17378 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))))

(assert (= (and d!1364613 c!761407) b!4471903))

(assert (= (and d!1364613 (not c!761407)) b!4471904))

(declare-fun m!5180147 () Bool)

(assert (=> b!4471904 m!5180147))

(declare-fun m!5180149 () Bool)

(assert (=> b!4471904 m!5180149))

(assert (=> b!4471701 d!1364613))

(declare-fun b!4471924 () Bool)

(assert (=> b!4471924 true))

(declare-fun d!1364617 () Bool)

(declare-fun e!2784744 () Bool)

(assert (=> d!1364617 e!2784744))

(declare-fun res!1855547 () Bool)

(assert (=> d!1364617 (=> (not res!1855547) (not e!2784744))))

(declare-fun lt!1660076 () List!50437)

(declare-fun noDuplicate!702 (List!50437) Bool)

(assert (=> d!1364617 (= res!1855547 (noDuplicate!702 lt!1660076))))

(assert (=> d!1364617 (= lt!1660076 (getKeysList!381 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(assert (=> d!1364617 (= (keys!17378 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) lt!1660076)))

(declare-fun b!4471923 () Bool)

(declare-fun res!1855546 () Bool)

(assert (=> b!4471923 (=> (not res!1855546) (not e!2784744))))

(declare-fun length!260 (List!50437) Int)

(declare-fun length!261 (List!50434) Int)

(assert (=> b!4471923 (= res!1855546 (= (length!260 lt!1660076) (length!261 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(declare-fun res!1855545 () Bool)

(assert (=> b!4471924 (=> (not res!1855545) (not e!2784744))))

(declare-fun lambda!163701 () Int)

(declare-fun forall!10012 (List!50437 Int) Bool)

(assert (=> b!4471924 (= res!1855545 (forall!10012 lt!1660076 lambda!163701))))

(declare-fun lambda!163702 () Int)

(declare-fun b!4471925 () Bool)

(declare-fun map!11030 (List!50434 Int) List!50437)

(assert (=> b!4471925 (= e!2784744 (= (content!8121 lt!1660076) (content!8121 (map!11030 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) lambda!163702))))))

(assert (= (and d!1364617 res!1855547) b!4471923))

(assert (= (and b!4471923 res!1855546) b!4471924))

(assert (= (and b!4471924 res!1855545) b!4471925))

(declare-fun m!5180155 () Bool)

(assert (=> d!1364617 m!5180155))

(declare-fun m!5180157 () Bool)

(assert (=> d!1364617 m!5180157))

(declare-fun m!5180159 () Bool)

(assert (=> b!4471923 m!5180159))

(declare-fun m!5180161 () Bool)

(assert (=> b!4471923 m!5180161))

(declare-fun m!5180163 () Bool)

(assert (=> b!4471924 m!5180163))

(declare-fun m!5180165 () Bool)

(assert (=> b!4471925 m!5180165))

(declare-fun m!5180167 () Bool)

(assert (=> b!4471925 m!5180167))

(assert (=> b!4471925 m!5180167))

(declare-fun m!5180169 () Bool)

(assert (=> b!4471925 m!5180169))

(assert (=> b!4471701 d!1364617))

(declare-fun d!1364623 () Bool)

(declare-fun c!761414 () Bool)

(assert (=> d!1364623 (= c!761414 ((_ is Nil!50313) (keys!17378 lt!1660003)))))

(declare-fun e!2784745 () (InoxSet K!11725))

(assert (=> d!1364623 (= (content!8121 (keys!17378 lt!1660003)) e!2784745)))

(declare-fun b!4471928 () Bool)

(assert (=> b!4471928 (= e!2784745 ((as const (Array K!11725 Bool)) false))))

(declare-fun b!4471929 () Bool)

(assert (=> b!4471929 (= e!2784745 ((_ map or) (store ((as const (Array K!11725 Bool)) false) (h!56084 (keys!17378 lt!1660003)) true) (content!8121 (t!357387 (keys!17378 lt!1660003)))))))

(assert (= (and d!1364623 c!761414) b!4471928))

(assert (= (and d!1364623 (not c!761414)) b!4471929))

(declare-fun m!5180171 () Bool)

(assert (=> b!4471929 m!5180171))

(declare-fun m!5180173 () Bool)

(assert (=> b!4471929 m!5180173))

(assert (=> b!4471701 d!1364623))

(declare-fun bs!796424 () Bool)

(declare-fun b!4471931 () Bool)

(assert (= bs!796424 (and b!4471931 b!4471924)))

(declare-fun lambda!163703 () Int)

(assert (=> bs!796424 (= (= (toList!4076 lt!1660003) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163703 lambda!163701))))

(assert (=> b!4471931 true))

(declare-fun bs!796425 () Bool)

(declare-fun b!4471932 () Bool)

(assert (= bs!796425 (and b!4471932 b!4471925)))

(declare-fun lambda!163704 () Int)

(assert (=> bs!796425 (= lambda!163704 lambda!163702)))

(declare-fun d!1364625 () Bool)

(declare-fun e!2784746 () Bool)

(assert (=> d!1364625 e!2784746))

(declare-fun res!1855550 () Bool)

(assert (=> d!1364625 (=> (not res!1855550) (not e!2784746))))

(declare-fun lt!1660077 () List!50437)

(assert (=> d!1364625 (= res!1855550 (noDuplicate!702 lt!1660077))))

(assert (=> d!1364625 (= lt!1660077 (getKeysList!381 (toList!4076 lt!1660003)))))

(assert (=> d!1364625 (= (keys!17378 lt!1660003) lt!1660077)))

(declare-fun b!4471930 () Bool)

(declare-fun res!1855549 () Bool)

(assert (=> b!4471930 (=> (not res!1855549) (not e!2784746))))

(assert (=> b!4471930 (= res!1855549 (= (length!260 lt!1660077) (length!261 (toList!4076 lt!1660003))))))

(declare-fun res!1855548 () Bool)

(assert (=> b!4471931 (=> (not res!1855548) (not e!2784746))))

(assert (=> b!4471931 (= res!1855548 (forall!10012 lt!1660077 lambda!163703))))

(assert (=> b!4471932 (= e!2784746 (= (content!8121 lt!1660077) (content!8121 (map!11030 (toList!4076 lt!1660003) lambda!163704))))))

(assert (= (and d!1364625 res!1855550) b!4471930))

(assert (= (and b!4471930 res!1855549) b!4471931))

(assert (= (and b!4471931 res!1855548) b!4471932))

(declare-fun m!5180175 () Bool)

(assert (=> d!1364625 m!5180175))

(declare-fun m!5180177 () Bool)

(assert (=> d!1364625 m!5180177))

(declare-fun m!5180179 () Bool)

(assert (=> b!4471930 m!5180179))

(declare-fun m!5180181 () Bool)

(assert (=> b!4471930 m!5180181))

(declare-fun m!5180183 () Bool)

(assert (=> b!4471931 m!5180183))

(declare-fun m!5180185 () Bool)

(assert (=> b!4471932 m!5180185))

(declare-fun m!5180187 () Bool)

(assert (=> b!4471932 m!5180187))

(assert (=> b!4471932 m!5180187))

(declare-fun m!5180189 () Bool)

(assert (=> b!4471932 m!5180189))

(assert (=> b!4471701 d!1364625))

(declare-fun d!1364627 () Bool)

(declare-fun e!2784748 () Bool)

(assert (=> d!1364627 e!2784748))

(declare-fun res!1855551 () Bool)

(assert (=> d!1364627 (=> res!1855551 e!2784748)))

(declare-fun lt!1660078 () Bool)

(assert (=> d!1364627 (= res!1855551 (not lt!1660078))))

(declare-fun lt!1660079 () Bool)

(assert (=> d!1364627 (= lt!1660078 lt!1660079)))

(declare-fun lt!1660080 () Unit!88025)

(declare-fun e!2784747 () Unit!88025)

(assert (=> d!1364627 (= lt!1660080 e!2784747)))

(declare-fun c!761415 () Bool)

(assert (=> d!1364627 (= c!761415 lt!1660079)))

(assert (=> d!1364627 (= lt!1660079 (containsKey!1493 (toList!4075 lt!1659812) (hash!2471 hashF!1107 key!3287)))))

(assert (=> d!1364627 (= (contains!12874 lt!1659812 (hash!2471 hashF!1107 key!3287)) lt!1660078)))

(declare-fun b!4471933 () Bool)

(declare-fun lt!1660081 () Unit!88025)

(assert (=> b!4471933 (= e!2784747 lt!1660081)))

(assert (=> b!4471933 (= lt!1660081 (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lt!1659812) (hash!2471 hashF!1107 key!3287)))))

(assert (=> b!4471933 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659812) (hash!2471 hashF!1107 key!3287)))))

(declare-fun b!4471934 () Bool)

(declare-fun Unit!88051 () Unit!88025)

(assert (=> b!4471934 (= e!2784747 Unit!88051)))

(declare-fun b!4471935 () Bool)

(assert (=> b!4471935 (= e!2784748 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659812) (hash!2471 hashF!1107 key!3287))))))

(assert (= (and d!1364627 c!761415) b!4471933))

(assert (= (and d!1364627 (not c!761415)) b!4471934))

(assert (= (and d!1364627 (not res!1855551)) b!4471935))

(assert (=> d!1364627 m!5179461))

(declare-fun m!5180191 () Bool)

(assert (=> d!1364627 m!5180191))

(assert (=> b!4471933 m!5179461))

(declare-fun m!5180193 () Bool)

(assert (=> b!4471933 m!5180193))

(assert (=> b!4471933 m!5179461))

(declare-fun m!5180195 () Bool)

(assert (=> b!4471933 m!5180195))

(assert (=> b!4471933 m!5180195))

(declare-fun m!5180197 () Bool)

(assert (=> b!4471933 m!5180197))

(assert (=> b!4471935 m!5179461))

(assert (=> b!4471935 m!5180195))

(assert (=> b!4471935 m!5180195))

(assert (=> b!4471935 m!5180197))

(assert (=> d!1364521 d!1364627))

(assert (=> d!1364521 d!1364407))

(declare-fun d!1364629 () Bool)

(assert (=> d!1364629 (contains!12874 lt!1659812 (hash!2471 hashF!1107 key!3287))))

(assert (=> d!1364629 true))

(declare-fun _$27!1092 () Unit!88025)

(assert (=> d!1364629 (= (choose!28623 lt!1659812 key!3287 hashF!1107) _$27!1092)))

(declare-fun bs!796426 () Bool)

(assert (= bs!796426 d!1364629))

(assert (=> bs!796426 m!5179461))

(assert (=> bs!796426 m!5179461))

(assert (=> bs!796426 m!5179925))

(assert (=> d!1364521 d!1364629))

(declare-fun d!1364631 () Bool)

(declare-fun res!1855552 () Bool)

(declare-fun e!2784749 () Bool)

(assert (=> d!1364631 (=> res!1855552 e!2784749)))

(assert (=> d!1364631 (= res!1855552 ((_ is Nil!50311) (toList!4075 lt!1659812)))))

(assert (=> d!1364631 (= (forall!10008 (toList!4075 lt!1659812) lambda!163688) e!2784749)))

(declare-fun b!4471936 () Bool)

(declare-fun e!2784750 () Bool)

(assert (=> b!4471936 (= e!2784749 e!2784750)))

(declare-fun res!1855553 () Bool)

(assert (=> b!4471936 (=> (not res!1855553) (not e!2784750))))

(assert (=> b!4471936 (= res!1855553 (dynLambda!21022 lambda!163688 (h!56080 (toList!4075 lt!1659812))))))

(declare-fun b!4471937 () Bool)

(assert (=> b!4471937 (= e!2784750 (forall!10008 (t!357385 (toList!4075 lt!1659812)) lambda!163688))))

(assert (= (and d!1364631 (not res!1855552)) b!4471936))

(assert (= (and b!4471936 res!1855553) b!4471937))

(declare-fun b_lambda!148587 () Bool)

(assert (=> (not b_lambda!148587) (not b!4471936)))

(declare-fun m!5180199 () Bool)

(assert (=> b!4471936 m!5180199))

(declare-fun m!5180201 () Bool)

(assert (=> b!4471937 m!5180201))

(assert (=> d!1364521 d!1364631))

(declare-fun d!1364633 () Bool)

(declare-fun c!761418 () Bool)

(assert (=> d!1364633 (= c!761418 ((_ is Nil!50310) (toList!4076 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)))))))

(declare-fun e!2784753 () (InoxSet tuple2!50570))

(assert (=> d!1364633 (= (content!8122 (toList!4076 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)))) e!2784753)))

(declare-fun b!4471942 () Bool)

(assert (=> b!4471942 (= e!2784753 ((as const (Array tuple2!50570 Bool)) false))))

(declare-fun b!4471943 () Bool)

(assert (=> b!4471943 (= e!2784753 ((_ map or) (store ((as const (Array tuple2!50570 Bool)) false) (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)))) true) (content!8122 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 lt!1659810 Nil!50311)))))))))

(assert (= (and d!1364633 c!761418) b!4471942))

(assert (= (and d!1364633 (not c!761418)) b!4471943))

(declare-fun m!5180207 () Bool)

(assert (=> b!4471943 m!5180207))

(declare-fun m!5180209 () Bool)

(assert (=> b!4471943 m!5180209))

(assert (=> d!1364515 d!1364633))

(declare-fun c!761419 () Bool)

(declare-fun d!1364637 () Bool)

(assert (=> d!1364637 (= c!761419 ((_ is Nil!50310) (toList!4076 (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))))))

(declare-fun e!2784754 () (InoxSet tuple2!50570))

(assert (=> d!1364637 (= (content!8122 (toList!4076 (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))) e!2784754)))

(declare-fun b!4471944 () Bool)

(assert (=> b!4471944 (= e!2784754 ((as const (Array tuple2!50570 Bool)) false))))

(declare-fun b!4471945 () Bool)

(assert (=> b!4471945 (= e!2784754 ((_ map or) (store ((as const (Array tuple2!50570 Bool)) false) (h!56079 (toList!4076 (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))) true) (content!8122 (t!357384 (toList!4076 (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))))))))

(assert (= (and d!1364637 c!761419) b!4471944))

(assert (= (and d!1364637 (not c!761419)) b!4471945))

(declare-fun m!5180211 () Bool)

(assert (=> b!4471945 m!5180211))

(declare-fun m!5180213 () Bool)

(assert (=> b!4471945 m!5180213))

(assert (=> d!1364515 d!1364637))

(declare-fun d!1364639 () Bool)

(declare-fun res!1855554 () Bool)

(declare-fun e!2784755 () Bool)

(assert (=> d!1364639 (=> res!1855554 e!2784755)))

(assert (=> d!1364639 (= res!1855554 (and ((_ is Cons!50310) (_2!28580 (h!56080 lt!1659816))) (= (_1!28579 (h!56079 (_2!28580 (h!56080 lt!1659816)))) key!3287)))))

(assert (=> d!1364639 (= (containsKey!1490 (_2!28580 (h!56080 lt!1659816)) key!3287) e!2784755)))

(declare-fun b!4471946 () Bool)

(declare-fun e!2784756 () Bool)

(assert (=> b!4471946 (= e!2784755 e!2784756)))

(declare-fun res!1855555 () Bool)

(assert (=> b!4471946 (=> (not res!1855555) (not e!2784756))))

(assert (=> b!4471946 (= res!1855555 ((_ is Cons!50310) (_2!28580 (h!56080 lt!1659816))))))

(declare-fun b!4471947 () Bool)

(assert (=> b!4471947 (= e!2784756 (containsKey!1490 (t!357384 (_2!28580 (h!56080 lt!1659816))) key!3287))))

(assert (= (and d!1364639 (not res!1855554)) b!4471946))

(assert (= (and b!4471946 res!1855555) b!4471947))

(declare-fun m!5180215 () Bool)

(assert (=> b!4471947 m!5180215))

(assert (=> b!4471724 d!1364639))

(declare-fun d!1364641 () Bool)

(declare-fun res!1855558 () Bool)

(declare-fun e!2784758 () Bool)

(assert (=> d!1364641 (=> res!1855558 e!2784758)))

(declare-fun e!2784759 () Bool)

(assert (=> d!1364641 (= res!1855558 e!2784759)))

(declare-fun res!1855556 () Bool)

(assert (=> d!1364641 (=> (not res!1855556) (not e!2784759))))

(assert (=> d!1364641 (= res!1855556 ((_ is Cons!50311) (t!357385 lt!1659816)))))

(assert (=> d!1364641 (= (containsKeyBiggerList!34 (t!357385 lt!1659816) key!3287) e!2784758)))

(declare-fun b!4471948 () Bool)

(assert (=> b!4471948 (= e!2784759 (containsKey!1490 (_2!28580 (h!56080 (t!357385 lt!1659816))) key!3287))))

(declare-fun b!4471949 () Bool)

(declare-fun e!2784757 () Bool)

(assert (=> b!4471949 (= e!2784758 e!2784757)))

(declare-fun res!1855557 () Bool)

(assert (=> b!4471949 (=> (not res!1855557) (not e!2784757))))

(assert (=> b!4471949 (= res!1855557 ((_ is Cons!50311) (t!357385 lt!1659816)))))

(declare-fun b!4471950 () Bool)

(assert (=> b!4471950 (= e!2784757 (containsKeyBiggerList!34 (t!357385 (t!357385 lt!1659816)) key!3287))))

(assert (= (and d!1364641 res!1855556) b!4471948))

(assert (= (and d!1364641 (not res!1855558)) b!4471949))

(assert (= (and b!4471949 res!1855557) b!4471950))

(declare-fun m!5180217 () Bool)

(assert (=> b!4471948 m!5180217))

(declare-fun m!5180219 () Bool)

(assert (=> b!4471950 m!5180219))

(assert (=> b!4471726 d!1364641))

(assert (=> b!4471593 d!1364611))

(declare-fun d!1364643 () Bool)

(declare-fun noDuplicatedKeys!216 (List!50434) Bool)

(assert (=> d!1364643 (= (invariantList!933 (toList!4076 lt!1659933)) (noDuplicatedKeys!216 (toList!4076 lt!1659933)))))

(declare-fun bs!796428 () Bool)

(assert (= bs!796428 d!1364643))

(declare-fun m!5180221 () Bool)

(assert (=> bs!796428 m!5180221))

(assert (=> d!1364467 d!1364643))

(declare-fun d!1364645 () Bool)

(declare-fun res!1855559 () Bool)

(declare-fun e!2784760 () Bool)

(assert (=> d!1364645 (=> res!1855559 e!2784760)))

(assert (=> d!1364645 (= res!1855559 ((_ is Nil!50311) (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))

(assert (=> d!1364645 (= (forall!10008 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311) lambda!163674) e!2784760)))

(declare-fun b!4471951 () Bool)

(declare-fun e!2784761 () Bool)

(assert (=> b!4471951 (= e!2784760 e!2784761)))

(declare-fun res!1855560 () Bool)

(assert (=> b!4471951 (=> (not res!1855560) (not e!2784761))))

(assert (=> b!4471951 (= res!1855560 (dynLambda!21022 lambda!163674 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))

(declare-fun b!4471952 () Bool)

(assert (=> b!4471952 (= e!2784761 (forall!10008 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) lambda!163674))))

(assert (= (and d!1364645 (not res!1855559)) b!4471951))

(assert (= (and b!4471951 res!1855560) b!4471952))

(declare-fun b_lambda!148589 () Bool)

(assert (=> (not b_lambda!148589) (not b!4471951)))

(declare-fun m!5180223 () Bool)

(assert (=> b!4471951 m!5180223))

(declare-fun m!5180225 () Bool)

(assert (=> b!4471952 m!5180225))

(assert (=> d!1364467 d!1364645))

(declare-fun bs!796429 () Bool)

(declare-fun b!4471954 () Bool)

(assert (= bs!796429 (and b!4471954 b!4471924)))

(declare-fun lambda!163705 () Int)

(assert (=> bs!796429 (= (= (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163705 lambda!163701))))

(declare-fun bs!796430 () Bool)

(assert (= bs!796430 (and b!4471954 b!4471931)))

(assert (=> bs!796430 (= (= (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) (toList!4076 lt!1660003)) (= lambda!163705 lambda!163703))))

(assert (=> b!4471954 true))

(declare-fun bs!796431 () Bool)

(declare-fun b!4471955 () Bool)

(assert (= bs!796431 (and b!4471955 b!4471925)))

(declare-fun lambda!163706 () Int)

(assert (=> bs!796431 (= lambda!163706 lambda!163702)))

(declare-fun bs!796432 () Bool)

(assert (= bs!796432 (and b!4471955 b!4471932)))

(assert (=> bs!796432 (= lambda!163706 lambda!163704)))

(declare-fun d!1364647 () Bool)

(declare-fun e!2784762 () Bool)

(assert (=> d!1364647 e!2784762))

(declare-fun res!1855563 () Bool)

(assert (=> d!1364647 (=> (not res!1855563) (not e!2784762))))

(declare-fun lt!1660085 () List!50437)

(assert (=> d!1364647 (= res!1855563 (noDuplicate!702 lt!1660085))))

(assert (=> d!1364647 (= lt!1660085 (getKeysList!381 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))

(assert (=> d!1364647 (= (keys!17378 (extractMap!1090 (toList!4075 lm!1477))) lt!1660085)))

(declare-fun b!4471953 () Bool)

(declare-fun res!1855562 () Bool)

(assert (=> b!4471953 (=> (not res!1855562) (not e!2784762))))

(assert (=> b!4471953 (= res!1855562 (= (length!260 lt!1660085) (length!261 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))))

(declare-fun res!1855561 () Bool)

(assert (=> b!4471954 (=> (not res!1855561) (not e!2784762))))

(assert (=> b!4471954 (= res!1855561 (forall!10012 lt!1660085 lambda!163705))))

(assert (=> b!4471955 (= e!2784762 (= (content!8121 lt!1660085) (content!8121 (map!11030 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) lambda!163706))))))

(assert (= (and d!1364647 res!1855563) b!4471953))

(assert (= (and b!4471953 res!1855562) b!4471954))

(assert (= (and b!4471954 res!1855561) b!4471955))

(declare-fun m!5180227 () Bool)

(assert (=> d!1364647 m!5180227))

(assert (=> d!1364647 m!5179943))

(declare-fun m!5180229 () Bool)

(assert (=> b!4471953 m!5180229))

(declare-fun m!5180231 () Bool)

(assert (=> b!4471953 m!5180231))

(declare-fun m!5180233 () Bool)

(assert (=> b!4471954 m!5180233))

(declare-fun m!5180235 () Bool)

(assert (=> b!4471955 m!5180235))

(declare-fun m!5180237 () Bool)

(assert (=> b!4471955 m!5180237))

(assert (=> b!4471955 m!5180237))

(declare-fun m!5180239 () Bool)

(assert (=> b!4471955 m!5180239))

(assert (=> b!4471709 d!1364647))

(declare-fun d!1364649 () Bool)

(declare-fun res!1855564 () Bool)

(declare-fun e!2784763 () Bool)

(assert (=> d!1364649 (=> res!1855564 e!2784763)))

(assert (=> d!1364649 (= res!1855564 ((_ is Nil!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364649 (= (forall!10008 (toList!4075 lm!1477) lambda!163647) e!2784763)))

(declare-fun b!4471956 () Bool)

(declare-fun e!2784764 () Bool)

(assert (=> b!4471956 (= e!2784763 e!2784764)))

(declare-fun res!1855565 () Bool)

(assert (=> b!4471956 (=> (not res!1855565) (not e!2784764))))

(assert (=> b!4471956 (= res!1855565 (dynLambda!21022 lambda!163647 (h!56080 (toList!4075 lm!1477))))))

(declare-fun b!4471957 () Bool)

(assert (=> b!4471957 (= e!2784764 (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163647))))

(assert (= (and d!1364649 (not res!1855564)) b!4471956))

(assert (= (and b!4471956 res!1855565) b!4471957))

(declare-fun b_lambda!148591 () Bool)

(assert (=> (not b_lambda!148591) (not b!4471956)))

(declare-fun m!5180241 () Bool)

(assert (=> b!4471956 m!5180241))

(declare-fun m!5180243 () Bool)

(assert (=> b!4471957 m!5180243))

(assert (=> d!1364393 d!1364649))

(declare-fun d!1364651 () Bool)

(declare-fun lt!1660086 () Bool)

(assert (=> d!1364651 (= lt!1660086 (select (content!8121 (keys!17378 (extractMap!1090 (toList!4075 lm!1477)))) key!3287))))

(declare-fun e!2784766 () Bool)

(assert (=> d!1364651 (= lt!1660086 e!2784766)))

(declare-fun res!1855567 () Bool)

(assert (=> d!1364651 (=> (not res!1855567) (not e!2784766))))

(assert (=> d!1364651 (= res!1855567 ((_ is Cons!50313) (keys!17378 (extractMap!1090 (toList!4075 lm!1477)))))))

(assert (=> d!1364651 (= (contains!12877 (keys!17378 (extractMap!1090 (toList!4075 lm!1477))) key!3287) lt!1660086)))

(declare-fun b!4471958 () Bool)

(declare-fun e!2784765 () Bool)

(assert (=> b!4471958 (= e!2784766 e!2784765)))

(declare-fun res!1855566 () Bool)

(assert (=> b!4471958 (=> res!1855566 e!2784765)))

(assert (=> b!4471958 (= res!1855566 (= (h!56084 (keys!17378 (extractMap!1090 (toList!4075 lm!1477)))) key!3287))))

(declare-fun b!4471959 () Bool)

(assert (=> b!4471959 (= e!2784765 (contains!12877 (t!357387 (keys!17378 (extractMap!1090 (toList!4075 lm!1477)))) key!3287))))

(assert (= (and d!1364651 res!1855567) b!4471958))

(assert (= (and b!4471958 (not res!1855566)) b!4471959))

(assert (=> d!1364651 m!5179945))

(declare-fun m!5180245 () Bool)

(assert (=> d!1364651 m!5180245))

(declare-fun m!5180247 () Bool)

(assert (=> d!1364651 m!5180247))

(declare-fun m!5180249 () Bool)

(assert (=> b!4471959 m!5180249))

(assert (=> b!4471711 d!1364651))

(assert (=> b!4471711 d!1364647))

(declare-fun d!1364653 () Bool)

(declare-fun res!1855568 () Bool)

(declare-fun e!2784767 () Bool)

(assert (=> d!1364653 (=> res!1855568 e!2784767)))

(assert (=> d!1364653 (= res!1855568 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (= (_1!28580 (h!56080 (toList!4075 lm!1477))) lt!1659807)))))

(assert (=> d!1364653 (= (containsKey!1493 (toList!4075 lm!1477) lt!1659807) e!2784767)))

(declare-fun b!4471960 () Bool)

(declare-fun e!2784768 () Bool)

(assert (=> b!4471960 (= e!2784767 e!2784768)))

(declare-fun res!1855569 () Bool)

(assert (=> b!4471960 (=> (not res!1855569) (not e!2784768))))

(assert (=> b!4471960 (= res!1855569 (and (or (not ((_ is Cons!50311) (toList!4075 lm!1477))) (bvsle (_1!28580 (h!56080 (toList!4075 lm!1477))) lt!1659807)) ((_ is Cons!50311) (toList!4075 lm!1477)) (bvslt (_1!28580 (h!56080 (toList!4075 lm!1477))) lt!1659807)))))

(declare-fun b!4471961 () Bool)

(assert (=> b!4471961 (= e!2784768 (containsKey!1493 (t!357385 (toList!4075 lm!1477)) lt!1659807))))

(assert (= (and d!1364653 (not res!1855568)) b!4471960))

(assert (= (and b!4471960 res!1855569) b!4471961))

(declare-fun m!5180251 () Bool)

(assert (=> b!4471961 m!5180251))

(assert (=> d!1364439 d!1364653))

(declare-fun d!1364655 () Bool)

(assert (=> d!1364655 (= (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 lt!1659816)) key!3287)) (not (isEmpty!28502 (getValueByKey!925 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))))

(declare-fun bs!796433 () Bool)

(assert (= bs!796433 d!1364655))

(assert (=> bs!796433 m!5179877))

(declare-fun m!5180253 () Bool)

(assert (=> bs!796433 m!5180253))

(assert (=> b!4471690 d!1364655))

(declare-fun b!4471962 () Bool)

(declare-fun e!2784769 () Option!10939)

(assert (=> b!4471962 (= e!2784769 (Some!10938 (_2!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))))))))

(declare-fun b!4471965 () Bool)

(declare-fun e!2784770 () Option!10939)

(assert (=> b!4471965 (= e!2784770 None!10938)))

(declare-fun b!4471963 () Bool)

(assert (=> b!4471963 (= e!2784769 e!2784770)))

(declare-fun c!761421 () Bool)

(assert (=> b!4471963 (= c!761421 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 lt!1659816))) (not (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816)))) key!3287))))))

(declare-fun d!1364657 () Bool)

(declare-fun c!761420 () Bool)

(assert (=> d!1364657 (= c!761420 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 lt!1659816))) (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816)))) key!3287)))))

(assert (=> d!1364657 (= (getValueByKey!925 (toList!4076 (extractMap!1090 lt!1659816)) key!3287) e!2784769)))

(declare-fun b!4471964 () Bool)

(assert (=> b!4471964 (= e!2784770 (getValueByKey!925 (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) key!3287))))

(assert (= (and d!1364657 c!761420) b!4471962))

(assert (= (and d!1364657 (not c!761420)) b!4471963))

(assert (= (and b!4471963 c!761421) b!4471964))

(assert (= (and b!4471963 (not c!761421)) b!4471965))

(declare-fun m!5180255 () Bool)

(assert (=> b!4471964 m!5180255))

(assert (=> b!4471690 d!1364657))

(assert (=> b!4471713 d!1364651))

(assert (=> b!4471713 d!1364647))

(declare-fun d!1364659 () Bool)

(assert (=> d!1364659 (isDefined!8226 (getValueByKey!925 (toList!4076 lt!1659809) key!3287))))

(declare-fun lt!1660089 () Unit!88025)

(declare-fun choose!28634 (List!50434 K!11725) Unit!88025)

(assert (=> d!1364659 (= lt!1660089 (choose!28634 (toList!4076 lt!1659809) key!3287))))

(assert (=> d!1364659 (invariantList!933 (toList!4076 lt!1659809))))

(assert (=> d!1364659 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 lt!1659809) key!3287) lt!1660089)))

(declare-fun bs!796434 () Bool)

(assert (= bs!796434 d!1364659))

(assert (=> bs!796434 m!5179983))

(assert (=> bs!796434 m!5179983))

(assert (=> bs!796434 m!5179985))

(declare-fun m!5180257 () Bool)

(assert (=> bs!796434 m!5180257))

(assert (=> bs!796434 m!5180141))

(assert (=> b!4471734 d!1364659))

(assert (=> b!4471734 d!1364593))

(assert (=> b!4471734 d!1364595))

(declare-fun d!1364661 () Bool)

(assert (=> d!1364661 (contains!12877 (getKeysList!381 (toList!4076 lt!1659809)) key!3287)))

(declare-fun lt!1660092 () Unit!88025)

(declare-fun choose!28635 (List!50434 K!11725) Unit!88025)

(assert (=> d!1364661 (= lt!1660092 (choose!28635 (toList!4076 lt!1659809) key!3287))))

(assert (=> d!1364661 (invariantList!933 (toList!4076 lt!1659809))))

(assert (=> d!1364661 (= (lemmaInListThenGetKeysListContains!377 (toList!4076 lt!1659809) key!3287) lt!1660092)))

(declare-fun bs!796435 () Bool)

(assert (= bs!796435 d!1364661))

(assert (=> bs!796435 m!5179975))

(assert (=> bs!796435 m!5179975))

(declare-fun m!5180259 () Bool)

(assert (=> bs!796435 m!5180259))

(declare-fun m!5180261 () Bool)

(assert (=> bs!796435 m!5180261))

(assert (=> bs!796435 m!5180141))

(assert (=> b!4471734 d!1364661))

(declare-fun d!1364663 () Bool)

(declare-fun res!1855570 () Bool)

(declare-fun e!2784771 () Bool)

(assert (=> d!1364663 (=> res!1855570 e!2784771)))

(assert (=> d!1364663 (= res!1855570 ((_ is Nil!50311) (t!357385 (toList!4075 lm!1477))))))

(assert (=> d!1364663 (= (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163641) e!2784771)))

(declare-fun b!4471966 () Bool)

(declare-fun e!2784772 () Bool)

(assert (=> b!4471966 (= e!2784771 e!2784772)))

(declare-fun res!1855571 () Bool)

(assert (=> b!4471966 (=> (not res!1855571) (not e!2784772))))

(assert (=> b!4471966 (= res!1855571 (dynLambda!21022 lambda!163641 (h!56080 (t!357385 (toList!4075 lm!1477)))))))

(declare-fun b!4471967 () Bool)

(assert (=> b!4471967 (= e!2784772 (forall!10008 (t!357385 (t!357385 (toList!4075 lm!1477))) lambda!163641))))

(assert (= (and d!1364663 (not res!1855570)) b!4471966))

(assert (= (and b!4471966 res!1855571) b!4471967))

(declare-fun b_lambda!148593 () Bool)

(assert (=> (not b_lambda!148593) (not b!4471966)))

(declare-fun m!5180263 () Bool)

(assert (=> b!4471966 m!5180263))

(declare-fun m!5180265 () Bool)

(assert (=> b!4471967 m!5180265))

(assert (=> b!4471606 d!1364663))

(declare-fun bs!796436 () Bool)

(declare-fun b!4471992 () Bool)

(assert (= bs!796436 (and b!4471992 b!4471924)))

(declare-fun lambda!163715 () Int)

(assert (=> bs!796436 (= (= (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163715 lambda!163701))))

(declare-fun bs!796437 () Bool)

(assert (= bs!796437 (and b!4471992 b!4471931)))

(assert (=> bs!796437 (= (= (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (toList!4076 lt!1660003)) (= lambda!163715 lambda!163703))))

(declare-fun bs!796438 () Bool)

(assert (= bs!796438 (and b!4471992 b!4471954)))

(assert (=> bs!796438 (= (= (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163715 lambda!163705))))

(assert (=> b!4471992 true))

(declare-fun bs!796439 () Bool)

(declare-fun b!4471993 () Bool)

(assert (= bs!796439 (and b!4471993 b!4471924)))

(declare-fun lambda!163716 () Int)

(assert (=> bs!796439 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163716 lambda!163701))))

(declare-fun bs!796440 () Bool)

(assert (= bs!796440 (and b!4471993 b!4471931)))

(assert (=> bs!796440 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (toList!4076 lt!1660003)) (= lambda!163716 lambda!163703))))

(declare-fun bs!796441 () Bool)

(assert (= bs!796441 (and b!4471993 b!4471954)))

(assert (=> bs!796441 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163716 lambda!163705))))

(declare-fun bs!796442 () Bool)

(assert (= bs!796442 (and b!4471993 b!4471992)))

(assert (=> bs!796442 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163716 lambda!163715))))

(assert (=> b!4471993 true))

(declare-fun bs!796443 () Bool)

(declare-fun b!4471994 () Bool)

(assert (= bs!796443 (and b!4471994 b!4471992)))

(declare-fun lambda!163717 () Int)

(assert (=> bs!796443 (= (= (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163717 lambda!163715))))

(declare-fun bs!796444 () Bool)

(assert (= bs!796444 (and b!4471994 b!4471931)))

(assert (=> bs!796444 (= (= (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) (toList!4076 lt!1660003)) (= lambda!163717 lambda!163703))))

(declare-fun bs!796445 () Bool)

(assert (= bs!796445 (and b!4471994 b!4471954)))

(assert (=> bs!796445 (= lambda!163717 lambda!163705)))

(declare-fun bs!796446 () Bool)

(assert (= bs!796446 (and b!4471994 b!4471924)))

(assert (=> bs!796446 (= (= (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163717 lambda!163701))))

(declare-fun bs!796447 () Bool)

(assert (= bs!796447 (and b!4471994 b!4471993)))

(assert (=> bs!796447 (= (= (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163717 lambda!163716))))

(assert (=> b!4471994 true))

(declare-fun bs!796448 () Bool)

(declare-fun b!4471987 () Bool)

(assert (= bs!796448 (and b!4471987 b!4471925)))

(declare-fun lambda!163718 () Int)

(assert (=> bs!796448 (= lambda!163718 lambda!163702)))

(declare-fun bs!796449 () Bool)

(assert (= bs!796449 (and b!4471987 b!4471932)))

(assert (=> bs!796449 (= lambda!163718 lambda!163704)))

(declare-fun bs!796450 () Bool)

(assert (= bs!796450 (and b!4471987 b!4471955)))

(assert (=> bs!796450 (= lambda!163718 lambda!163706)))

(declare-fun b!4471986 () Bool)

(declare-fun res!1855580 () Bool)

(declare-fun e!2784783 () Bool)

(assert (=> b!4471986 (=> (not res!1855580) (not e!2784783))))

(declare-fun lt!1660112 () List!50437)

(assert (=> b!4471986 (= res!1855580 (= (length!260 lt!1660112) (length!261 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))))

(assert (=> b!4471987 (= e!2784783 (= (content!8121 lt!1660112) (content!8121 (map!11030 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) lambda!163718))))))

(declare-fun b!4471988 () Bool)

(declare-fun e!2784784 () Unit!88025)

(declare-fun Unit!88069 () Unit!88025)

(assert (=> b!4471988 (= e!2784784 Unit!88069)))

(declare-fun b!4471990 () Bool)

(assert (=> b!4471990 false))

(declare-fun e!2784782 () Unit!88025)

(declare-fun Unit!88071 () Unit!88025)

(assert (=> b!4471990 (= e!2784782 Unit!88071)))

(declare-fun b!4471991 () Bool)

(declare-fun Unit!88073 () Unit!88025)

(assert (=> b!4471991 (= e!2784782 Unit!88073)))

(assert (=> b!4471992 false))

(declare-fun lt!1660113 () Unit!88025)

(declare-fun forallContained!2277 (List!50437 Int K!11725) Unit!88025)

(assert (=> b!4471992 (= lt!1660113 (forallContained!2277 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) lambda!163715 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))))

(declare-fun Unit!88074 () Unit!88025)

(assert (=> b!4471992 (= e!2784784 Unit!88074)))

(declare-fun e!2784781 () List!50437)

(assert (=> b!4471993 (= e!2784781 (Cons!50313 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))))

(declare-fun c!761429 () Bool)

(assert (=> b!4471993 (= c!761429 (containsKey!1494 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))))

(declare-fun lt!1660107 () Unit!88025)

(assert (=> b!4471993 (= lt!1660107 e!2784782)))

(declare-fun c!761428 () Bool)

(assert (=> b!4471993 (= c!761428 (contains!12877 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))))

(declare-fun lt!1660110 () Unit!88025)

(assert (=> b!4471993 (= lt!1660110 e!2784784)))

(declare-fun lt!1660111 () List!50437)

(assert (=> b!4471993 (= lt!1660111 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))))

(declare-fun lt!1660109 () Unit!88025)

(declare-fun lemmaForallContainsAddHeadPreserves!123 (List!50434 List!50437 tuple2!50570) Unit!88025)

(assert (=> b!4471993 (= lt!1660109 (lemmaForallContainsAddHeadPreserves!123 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) lt!1660111 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))))

(assert (=> b!4471993 (forall!10012 lt!1660111 lambda!163716)))

(declare-fun lt!1660108 () Unit!88025)

(assert (=> b!4471993 (= lt!1660108 lt!1660109)))

(declare-fun res!1855579 () Bool)

(assert (=> b!4471994 (=> (not res!1855579) (not e!2784783))))

(assert (=> b!4471994 (= res!1855579 (forall!10012 lt!1660112 lambda!163717))))

(declare-fun d!1364665 () Bool)

(assert (=> d!1364665 e!2784783))

(declare-fun res!1855578 () Bool)

(assert (=> d!1364665 (=> (not res!1855578) (not e!2784783))))

(assert (=> d!1364665 (= res!1855578 (noDuplicate!702 lt!1660112))))

(assert (=> d!1364665 (= lt!1660112 e!2784781)))

(declare-fun c!761430 () Bool)

(assert (=> d!1364665 (= c!761430 ((_ is Cons!50310) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))

(assert (=> d!1364665 (invariantList!933 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))

(assert (=> d!1364665 (= (getKeysList!381 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) lt!1660112)))

(declare-fun b!4471989 () Bool)

(assert (=> b!4471989 (= e!2784781 Nil!50313)))

(assert (= (and d!1364665 c!761430) b!4471993))

(assert (= (and d!1364665 (not c!761430)) b!4471989))

(assert (= (and b!4471993 c!761429) b!4471990))

(assert (= (and b!4471993 (not c!761429)) b!4471991))

(assert (= (and b!4471993 c!761428) b!4471992))

(assert (= (and b!4471993 (not c!761428)) b!4471988))

(assert (= (and d!1364665 res!1855578) b!4471986))

(assert (= (and b!4471986 res!1855580) b!4471994))

(assert (= (and b!4471994 res!1855579) b!4471987))

(declare-fun m!5180267 () Bool)

(assert (=> b!4471987 m!5180267))

(declare-fun m!5180269 () Bool)

(assert (=> b!4471987 m!5180269))

(assert (=> b!4471987 m!5180269))

(declare-fun m!5180271 () Bool)

(assert (=> b!4471987 m!5180271))

(declare-fun m!5180273 () Bool)

(assert (=> d!1364665 m!5180273))

(declare-fun m!5180275 () Bool)

(assert (=> d!1364665 m!5180275))

(declare-fun m!5180277 () Bool)

(assert (=> b!4471992 m!5180277))

(assert (=> b!4471992 m!5180277))

(declare-fun m!5180279 () Bool)

(assert (=> b!4471992 m!5180279))

(declare-fun m!5180281 () Bool)

(assert (=> b!4471994 m!5180281))

(declare-fun m!5180283 () Bool)

(assert (=> b!4471993 m!5180283))

(declare-fun m!5180285 () Bool)

(assert (=> b!4471993 m!5180285))

(assert (=> b!4471993 m!5180277))

(declare-fun m!5180287 () Bool)

(assert (=> b!4471993 m!5180287))

(declare-fun m!5180289 () Bool)

(assert (=> b!4471993 m!5180289))

(assert (=> b!4471993 m!5180277))

(declare-fun m!5180291 () Bool)

(assert (=> b!4471986 m!5180291))

(assert (=> b!4471986 m!5180231))

(assert (=> b!4471715 d!1364665))

(declare-fun bs!796504 () Bool)

(declare-fun b!4472075 () Bool)

(assert (= bs!796504 (and b!4472075 d!1364389)))

(declare-fun lambda!163787 () Int)

(assert (=> bs!796504 (not (= lambda!163787 lambda!163644))))

(assert (=> b!4472075 true))

(declare-fun bs!796505 () Bool)

(declare-fun b!4472076 () Bool)

(assert (= bs!796505 (and b!4472076 d!1364389)))

(declare-fun lambda!163788 () Int)

(assert (=> bs!796505 (not (= lambda!163788 lambda!163644))))

(declare-fun bs!796506 () Bool)

(assert (= bs!796506 (and b!4472076 b!4472075)))

(assert (=> bs!796506 (= lambda!163788 lambda!163787)))

(assert (=> b!4472076 true))

(declare-fun lambda!163790 () Int)

(assert (=> bs!796505 (not (= lambda!163790 lambda!163644))))

(declare-fun lt!1660288 () ListMap!3337)

(assert (=> bs!796506 (= (= lt!1660288 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163790 lambda!163787))))

(assert (=> b!4472076 (= (= lt!1660288 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163790 lambda!163788))))

(assert (=> b!4472076 true))

(declare-fun bs!796516 () Bool)

(declare-fun d!1364667 () Bool)

(assert (= bs!796516 (and d!1364667 d!1364389)))

(declare-fun lambda!163791 () Int)

(assert (=> bs!796516 (not (= lambda!163791 lambda!163644))))

(declare-fun bs!796517 () Bool)

(assert (= bs!796517 (and d!1364667 b!4472075)))

(declare-fun lt!1660279 () ListMap!3337)

(assert (=> bs!796517 (= (= lt!1660279 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163791 lambda!163787))))

(declare-fun bs!796518 () Bool)

(assert (= bs!796518 (and d!1364667 b!4472076)))

(assert (=> bs!796518 (= (= lt!1660279 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163791 lambda!163788))))

(assert (=> bs!796518 (= (= lt!1660279 lt!1660288) (= lambda!163791 lambda!163790))))

(assert (=> d!1364667 true))

(declare-fun b!4472072 () Bool)

(declare-fun e!2784837 () Bool)

(assert (=> b!4472072 (= e!2784837 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lambda!163790))))

(declare-fun b!4472073 () Bool)

(declare-fun e!2784838 () Bool)

(assert (=> b!4472073 (= e!2784838 (invariantList!933 (toList!4076 lt!1660279)))))

(assert (=> d!1364667 e!2784838))

(declare-fun res!1855626 () Bool)

(assert (=> d!1364667 (=> (not res!1855626) (not e!2784838))))

(assert (=> d!1364667 (= res!1855626 (forall!10009 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) lambda!163791))))

(declare-fun e!2784836 () ListMap!3337)

(assert (=> d!1364667 (= lt!1660279 e!2784836)))

(declare-fun c!761446 () Bool)

(assert (=> d!1364667 (= c!761446 ((_ is Nil!50310) (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(assert (=> d!1364667 (noDuplicateKeys!1034 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))

(assert (=> d!1364667 (= (addToMapMapFromBucket!595 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lt!1660279)))

(declare-fun bm!311373 () Bool)

(declare-fun call!311380 () Bool)

(assert (=> bm!311373 (= call!311380 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (ite c!761446 lambda!163787 lambda!163790)))))

(declare-fun bm!311374 () Bool)

(declare-fun call!311379 () Unit!88025)

(declare-fun lemmaContainsAllItsOwnKeys!271 (ListMap!3337) Unit!88025)

(assert (=> bm!311374 (= call!311379 (lemmaContainsAllItsOwnKeys!271 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun b!4472074 () Bool)

(declare-fun res!1855624 () Bool)

(assert (=> b!4472074 (=> (not res!1855624) (not e!2784838))))

(assert (=> b!4472074 (= res!1855624 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lambda!163791))))

(assert (=> b!4472075 (= e!2784836 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))

(declare-fun lt!1660285 () Unit!88025)

(assert (=> b!4472075 (= lt!1660285 call!311379)))

(assert (=> b!4472075 call!311380))

(declare-fun lt!1660276 () Unit!88025)

(assert (=> b!4472075 (= lt!1660276 lt!1660285)))

(declare-fun call!311378 () Bool)

(assert (=> b!4472075 call!311378))

(declare-fun lt!1660275 () Unit!88025)

(declare-fun Unit!88079 () Unit!88025)

(assert (=> b!4472075 (= lt!1660275 Unit!88079)))

(declare-fun bm!311375 () Bool)

(assert (=> bm!311375 (= call!311378 (forall!10009 (ite c!761446 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (ite c!761446 lambda!163787 lambda!163790)))))

(assert (=> b!4472076 (= e!2784836 lt!1660288)))

(declare-fun lt!1660290 () ListMap!3337)

(declare-fun +!1382 (ListMap!3337 tuple2!50570) ListMap!3337)

(assert (=> b!4472076 (= lt!1660290 (+!1382 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(assert (=> b!4472076 (= lt!1660288 (addToMapMapFromBucket!595 (t!357384 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (+!1382 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))))

(declare-fun lt!1660287 () Unit!88025)

(assert (=> b!4472076 (= lt!1660287 call!311379)))

(assert (=> b!4472076 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lambda!163788)))

(declare-fun lt!1660278 () Unit!88025)

(assert (=> b!4472076 (= lt!1660278 lt!1660287)))

(assert (=> b!4472076 (forall!10009 (toList!4076 lt!1660290) lambda!163790)))

(declare-fun lt!1660273 () Unit!88025)

(declare-fun Unit!88080 () Unit!88025)

(assert (=> b!4472076 (= lt!1660273 Unit!88080)))

(assert (=> b!4472076 (forall!10009 (t!357384 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lambda!163790)))

(declare-fun lt!1660291 () Unit!88025)

(declare-fun Unit!88081 () Unit!88025)

(assert (=> b!4472076 (= lt!1660291 Unit!88081)))

(declare-fun lt!1660274 () Unit!88025)

(declare-fun Unit!88082 () Unit!88025)

(assert (=> b!4472076 (= lt!1660274 Unit!88082)))

(declare-fun lt!1660284 () Unit!88025)

(declare-fun forallContained!2278 (List!50434 Int tuple2!50570) Unit!88025)

(assert (=> b!4472076 (= lt!1660284 (forallContained!2278 (toList!4076 lt!1660290) lambda!163790 (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(assert (=> b!4472076 (contains!12873 lt!1660290 (_1!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(declare-fun lt!1660282 () Unit!88025)

(declare-fun Unit!88083 () Unit!88025)

(assert (=> b!4472076 (= lt!1660282 Unit!88083)))

(assert (=> b!4472076 (contains!12873 lt!1660288 (_1!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(declare-fun lt!1660272 () Unit!88025)

(declare-fun Unit!88084 () Unit!88025)

(assert (=> b!4472076 (= lt!1660272 Unit!88084)))

(assert (=> b!4472076 call!311378))

(declare-fun lt!1660292 () Unit!88025)

(declare-fun Unit!88085 () Unit!88025)

(assert (=> b!4472076 (= lt!1660292 Unit!88085)))

(assert (=> b!4472076 (forall!10009 (toList!4076 lt!1660290) lambda!163790)))

(declare-fun lt!1660277 () Unit!88025)

(declare-fun Unit!88086 () Unit!88025)

(assert (=> b!4472076 (= lt!1660277 Unit!88086)))

(declare-fun lt!1660283 () Unit!88025)

(declare-fun Unit!88087 () Unit!88025)

(assert (=> b!4472076 (= lt!1660283 Unit!88087)))

(declare-fun lt!1660286 () Unit!88025)

(declare-fun addForallContainsKeyThenBeforeAdding!270 (ListMap!3337 ListMap!3337 K!11725 V!11971) Unit!88025)

(assert (=> b!4472076 (= lt!1660286 (addForallContainsKeyThenBeforeAdding!270 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) lt!1660288 (_1!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))) (_2!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))))

(assert (=> b!4472076 call!311380))

(declare-fun lt!1660281 () Unit!88025)

(assert (=> b!4472076 (= lt!1660281 lt!1660286)))

(assert (=> b!4472076 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lambda!163790)))

(declare-fun lt!1660289 () Unit!88025)

(declare-fun Unit!88088 () Unit!88025)

(assert (=> b!4472076 (= lt!1660289 Unit!88088)))

(declare-fun res!1855625 () Bool)

(assert (=> b!4472076 (= res!1855625 (forall!10009 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) lambda!163790))))

(assert (=> b!4472076 (=> (not res!1855625) (not e!2784837))))

(assert (=> b!4472076 e!2784837))

(declare-fun lt!1660280 () Unit!88025)

(declare-fun Unit!88089 () Unit!88025)

(assert (=> b!4472076 (= lt!1660280 Unit!88089)))

(assert (= (and d!1364667 c!761446) b!4472075))

(assert (= (and d!1364667 (not c!761446)) b!4472076))

(assert (= (and b!4472076 res!1855625) b!4472072))

(assert (= (or b!4472075 b!4472076) bm!311373))

(assert (= (or b!4472075 b!4472076) bm!311375))

(assert (= (or b!4472075 b!4472076) bm!311374))

(assert (= (and d!1364667 res!1855626) b!4472074))

(assert (= (and b!4472074 res!1855624) b!4472073))

(declare-fun m!5180443 () Bool)

(assert (=> b!4472076 m!5180443))

(declare-fun m!5180445 () Bool)

(assert (=> b!4472076 m!5180445))

(declare-fun m!5180447 () Bool)

(assert (=> b!4472076 m!5180447))

(declare-fun m!5180449 () Bool)

(assert (=> b!4472076 m!5180449))

(declare-fun m!5180451 () Bool)

(assert (=> b!4472076 m!5180451))

(declare-fun m!5180453 () Bool)

(assert (=> b!4472076 m!5180453))

(assert (=> b!4472076 m!5179737))

(assert (=> b!4472076 m!5180443))

(declare-fun m!5180455 () Bool)

(assert (=> b!4472076 m!5180455))

(assert (=> b!4472076 m!5179737))

(declare-fun m!5180457 () Bool)

(assert (=> b!4472076 m!5180457))

(declare-fun m!5180459 () Bool)

(assert (=> b!4472076 m!5180459))

(declare-fun m!5180461 () Bool)

(assert (=> b!4472076 m!5180461))

(assert (=> b!4472076 m!5180461))

(declare-fun m!5180463 () Bool)

(assert (=> b!4472076 m!5180463))

(assert (=> bm!311374 m!5179737))

(declare-fun m!5180465 () Bool)

(assert (=> bm!311374 m!5180465))

(declare-fun m!5180467 () Bool)

(assert (=> bm!311375 m!5180467))

(declare-fun m!5180469 () Bool)

(assert (=> b!4472074 m!5180469))

(assert (=> b!4472072 m!5180459))

(declare-fun m!5180471 () Bool)

(assert (=> b!4472073 m!5180471))

(declare-fun m!5180473 () Bool)

(assert (=> bm!311373 m!5180473))

(declare-fun m!5180475 () Bool)

(assert (=> d!1364667 m!5180475))

(declare-fun m!5180477 () Bool)

(assert (=> d!1364667 m!5180477))

(assert (=> b!4471613 d!1364667))

(declare-fun bs!796532 () Bool)

(declare-fun d!1364707 () Bool)

(assert (= bs!796532 (and d!1364707 d!1364505)))

(declare-fun lambda!163793 () Int)

(assert (=> bs!796532 (= lambda!163793 lambda!163684)))

(declare-fun bs!796533 () Bool)

(assert (= bs!796533 (and d!1364707 d!1364511)))

(assert (=> bs!796533 (= lambda!163793 lambda!163687)))

(declare-fun bs!796534 () Bool)

(assert (= bs!796534 (and d!1364707 d!1364503)))

(assert (=> bs!796534 (= lambda!163793 lambda!163683)))

(declare-fun bs!796535 () Bool)

(assert (= bs!796535 (and d!1364707 d!1364527)))

(assert (=> bs!796535 (= lambda!163793 lambda!163689)))

(declare-fun bs!796536 () Bool)

(assert (= bs!796536 (and d!1364707 d!1364581)))

(assert (=> bs!796536 (= lambda!163793 lambda!163690)))

(declare-fun bs!796537 () Bool)

(assert (= bs!796537 (and d!1364707 d!1364521)))

(assert (=> bs!796537 (= lambda!163793 lambda!163688)))

(declare-fun bs!796539 () Bool)

(assert (= bs!796539 (and d!1364707 d!1364393)))

(assert (=> bs!796539 (not (= lambda!163793 lambda!163647))))

(declare-fun bs!796541 () Bool)

(assert (= bs!796541 (and d!1364707 d!1364423)))

(assert (=> bs!796541 (= lambda!163793 lambda!163668)))

(declare-fun bs!796543 () Bool)

(assert (= bs!796543 (and d!1364707 d!1364409)))

(assert (=> bs!796543 (= lambda!163793 lambda!163663)))

(declare-fun bs!796545 () Bool)

(assert (= bs!796545 (and d!1364707 d!1364467)))

(assert (=> bs!796545 (= lambda!163793 lambda!163674)))

(declare-fun bs!796547 () Bool)

(assert (= bs!796547 (and d!1364707 d!1364395)))

(assert (=> bs!796547 (= lambda!163793 lambda!163653)))

(declare-fun bs!796549 () Bool)

(assert (= bs!796549 (and d!1364707 d!1364421)))

(assert (=> bs!796549 (= lambda!163793 lambda!163664)))

(declare-fun bs!796550 () Bool)

(assert (= bs!796550 (and d!1364707 start!439496)))

(assert (=> bs!796550 (= lambda!163793 lambda!163641)))

(declare-fun lt!1660294 () ListMap!3337)

(assert (=> d!1364707 (invariantList!933 (toList!4076 lt!1660294))))

(declare-fun e!2784840 () ListMap!3337)

(assert (=> d!1364707 (= lt!1660294 e!2784840)))

(declare-fun c!761448 () Bool)

(assert (=> d!1364707 (= c!761448 ((_ is Cons!50311) (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))

(assert (=> d!1364707 (forall!10008 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) lambda!163793)))

(assert (=> d!1364707 (= (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) lt!1660294)))

(declare-fun b!4472081 () Bool)

(assert (=> b!4472081 (= e!2784840 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (extractMap!1090 (t!357385 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(declare-fun b!4472082 () Bool)

(assert (=> b!4472082 (= e!2784840 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364707 c!761448) b!4472081))

(assert (= (and d!1364707 (not c!761448)) b!4472082))

(declare-fun m!5180487 () Bool)

(assert (=> d!1364707 m!5180487))

(declare-fun m!5180489 () Bool)

(assert (=> d!1364707 m!5180489))

(declare-fun m!5180491 () Bool)

(assert (=> b!4472081 m!5180491))

(assert (=> b!4472081 m!5180491))

(declare-fun m!5180493 () Bool)

(assert (=> b!4472081 m!5180493))

(assert (=> b!4471613 d!1364707))

(declare-fun d!1364711 () Bool)

(declare-fun res!1855630 () Bool)

(declare-fun e!2784844 () Bool)

(assert (=> d!1364711 (=> res!1855630 e!2784844)))

(assert (=> d!1364711 (= res!1855630 (not ((_ is Cons!50310) (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(assert (=> d!1364711 (= (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477)))) e!2784844)))

(declare-fun b!4472088 () Bool)

(declare-fun e!2784845 () Bool)

(assert (=> b!4472088 (= e!2784844 e!2784845)))

(declare-fun res!1855631 () Bool)

(assert (=> b!4472088 (=> (not res!1855631) (not e!2784845))))

(assert (=> b!4472088 (= res!1855631 (not (containsKey!1490 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477)))) (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))))

(declare-fun b!4472089 () Bool)

(assert (=> b!4472089 (= e!2784845 (noDuplicateKeys!1034 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(assert (= (and d!1364711 (not res!1855630)) b!4472088))

(assert (= (and b!4472088 res!1855631) b!4472089))

(declare-fun m!5180495 () Bool)

(assert (=> b!4472088 m!5180495))

(declare-fun m!5180497 () Bool)

(assert (=> b!4472089 m!5180497))

(assert (=> bs!796403 d!1364711))

(declare-fun d!1364713 () Bool)

(declare-fun res!1855632 () Bool)

(declare-fun e!2784846 () Bool)

(assert (=> d!1364713 (=> res!1855632 e!2784846)))

(assert (=> d!1364713 (= res!1855632 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 lt!1659816))) (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816)))) key!3287)))))

(assert (=> d!1364713 (= (containsKey!1494 (toList!4076 (extractMap!1090 lt!1659816)) key!3287) e!2784846)))

(declare-fun b!4472090 () Bool)

(declare-fun e!2784847 () Bool)

(assert (=> b!4472090 (= e!2784846 e!2784847)))

(declare-fun res!1855633 () Bool)

(assert (=> b!4472090 (=> (not res!1855633) (not e!2784847))))

(assert (=> b!4472090 (= res!1855633 ((_ is Cons!50310) (toList!4076 (extractMap!1090 lt!1659816))))))

(declare-fun b!4472091 () Bool)

(assert (=> b!4472091 (= e!2784847 (containsKey!1494 (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) key!3287))))

(assert (= (and d!1364713 (not res!1855632)) b!4472090))

(assert (= (and b!4472090 res!1855633) b!4472091))

(declare-fun m!5180499 () Bool)

(assert (=> b!4472091 m!5180499))

(assert (=> b!4471691 d!1364713))

(declare-fun d!1364715 () Bool)

(assert (=> d!1364715 (containsKey!1494 (toList!4076 (extractMap!1090 lt!1659816)) key!3287)))

(declare-fun lt!1660316 () Unit!88025)

(assert (=> d!1364715 (= lt!1660316 (choose!28630 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(assert (=> d!1364715 (invariantList!933 (toList!4076 (extractMap!1090 lt!1659816)))))

(assert (=> d!1364715 (= (lemmaInGetKeysListThenContainsKey!380 (toList!4076 (extractMap!1090 lt!1659816)) key!3287) lt!1660316)))

(declare-fun bs!796563 () Bool)

(assert (= bs!796563 d!1364715))

(assert (=> bs!796563 m!5179865))

(declare-fun m!5180501 () Bool)

(assert (=> bs!796563 m!5180501))

(declare-fun m!5180503 () Bool)

(assert (=> bs!796563 m!5180503))

(assert (=> b!4471691 d!1364715))

(declare-fun d!1364717 () Bool)

(declare-fun isEmpty!28505 (Option!10938) Bool)

(assert (=> d!1364717 (= (isDefined!8225 (getValueByKey!924 (toList!4075 lm!1477) lt!1659807)) (not (isEmpty!28505 (getValueByKey!924 (toList!4075 lm!1477) lt!1659807))))))

(declare-fun bs!796567 () Bool)

(assert (= bs!796567 d!1364717))

(assert (=> bs!796567 m!5179673))

(declare-fun m!5180505 () Bool)

(assert (=> bs!796567 m!5180505))

(assert (=> b!4471562 d!1364717))

(declare-fun d!1364719 () Bool)

(declare-fun c!761450 () Bool)

(assert (=> d!1364719 (= c!761450 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (= (_1!28580 (h!56080 (toList!4075 lm!1477))) lt!1659807)))))

(declare-fun e!2784848 () Option!10938)

(assert (=> d!1364719 (= (getValueByKey!924 (toList!4075 lm!1477) lt!1659807) e!2784848)))

(declare-fun b!4472095 () Bool)

(declare-fun e!2784849 () Option!10938)

(assert (=> b!4472095 (= e!2784849 None!10937)))

(declare-fun b!4472093 () Bool)

(assert (=> b!4472093 (= e!2784848 e!2784849)))

(declare-fun c!761451 () Bool)

(assert (=> b!4472093 (= c!761451 (and ((_ is Cons!50311) (toList!4075 lm!1477)) (not (= (_1!28580 (h!56080 (toList!4075 lm!1477))) lt!1659807))))))

(declare-fun b!4472092 () Bool)

(assert (=> b!4472092 (= e!2784848 (Some!10937 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(declare-fun b!4472094 () Bool)

(assert (=> b!4472094 (= e!2784849 (getValueByKey!924 (t!357385 (toList!4075 lm!1477)) lt!1659807))))

(assert (= (and d!1364719 c!761450) b!4472092))

(assert (= (and d!1364719 (not c!761450)) b!4472093))

(assert (= (and b!4472093 c!761451) b!4472094))

(assert (= (and b!4472093 (not c!761451)) b!4472095))

(declare-fun m!5180507 () Bool)

(assert (=> b!4472094 m!5180507))

(assert (=> b!4471562 d!1364719))

(declare-fun d!1364721 () Bool)

(assert (=> d!1364721 (= (invariantList!933 (toList!4076 lt!1659976)) (noDuplicatedKeys!216 (toList!4076 lt!1659976)))))

(declare-fun bs!796568 () Bool)

(assert (= bs!796568 d!1364721))

(declare-fun m!5180509 () Bool)

(assert (=> bs!796568 m!5180509))

(assert (=> d!1364505 d!1364721))

(declare-fun d!1364723 () Bool)

(declare-fun res!1855634 () Bool)

(declare-fun e!2784850 () Bool)

(assert (=> d!1364723 (=> res!1855634 e!2784850)))

(assert (=> d!1364723 (= res!1855634 ((_ is Nil!50311) lt!1659816))))

(assert (=> d!1364723 (= (forall!10008 lt!1659816 lambda!163684) e!2784850)))

(declare-fun b!4472096 () Bool)

(declare-fun e!2784851 () Bool)

(assert (=> b!4472096 (= e!2784850 e!2784851)))

(declare-fun res!1855635 () Bool)

(assert (=> b!4472096 (=> (not res!1855635) (not e!2784851))))

(assert (=> b!4472096 (= res!1855635 (dynLambda!21022 lambda!163684 (h!56080 lt!1659816)))))

(declare-fun b!4472097 () Bool)

(assert (=> b!4472097 (= e!2784851 (forall!10008 (t!357385 lt!1659816) lambda!163684))))

(assert (= (and d!1364723 (not res!1855634)) b!4472096))

(assert (= (and b!4472096 res!1855635) b!4472097))

(declare-fun b_lambda!148605 () Bool)

(assert (=> (not b_lambda!148605) (not b!4472096)))

(declare-fun m!5180511 () Bool)

(assert (=> b!4472096 m!5180511))

(declare-fun m!5180513 () Bool)

(assert (=> b!4472097 m!5180513))

(assert (=> d!1364505 d!1364723))

(declare-fun d!1364725 () Bool)

(assert (=> d!1364725 (isDefined!8225 (getValueByKey!924 (toList!4075 lm!1477) lt!1659807))))

(declare-fun lt!1660319 () Unit!88025)

(declare-fun choose!28636 (List!50435 (_ BitVec 64)) Unit!88025)

(assert (=> d!1364725 (= lt!1660319 (choose!28636 (toList!4075 lm!1477) lt!1659807))))

(declare-fun e!2784854 () Bool)

(assert (=> d!1364725 e!2784854))

(declare-fun res!1855638 () Bool)

(assert (=> d!1364725 (=> (not res!1855638) (not e!2784854))))

(assert (=> d!1364725 (= res!1855638 (isStrictlySorted!347 (toList!4075 lm!1477)))))

(assert (=> d!1364725 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lm!1477) lt!1659807) lt!1660319)))

(declare-fun b!4472100 () Bool)

(assert (=> b!4472100 (= e!2784854 (containsKey!1493 (toList!4075 lm!1477) lt!1659807))))

(assert (= (and d!1364725 res!1855638) b!4472100))

(assert (=> d!1364725 m!5179673))

(assert (=> d!1364725 m!5179673))

(assert (=> d!1364725 m!5179675))

(declare-fun m!5180515 () Bool)

(assert (=> d!1364725 m!5180515))

(assert (=> d!1364725 m!5179697))

(assert (=> b!4472100 m!5179663))

(assert (=> b!4471560 d!1364725))

(assert (=> b!4471560 d!1364717))

(assert (=> b!4471560 d!1364719))

(assert (=> d!1364493 d!1364467))

(declare-fun d!1364727 () Bool)

(assert (=> d!1364727 (eq!527 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)) (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287))))

(assert (=> d!1364727 true))

(declare-fun _$18!213 () Unit!88025)

(assert (=> d!1364727 (= (choose!28626 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!213)))

(declare-fun bs!796569 () Bool)

(assert (= bs!796569 d!1364727))

(assert (=> bs!796569 m!5179841))

(assert (=> bs!796569 m!5179441))

(assert (=> bs!796569 m!5179441))

(assert (=> bs!796569 m!5179443))

(assert (=> bs!796569 m!5179841))

(assert (=> bs!796569 m!5179443))

(assert (=> bs!796569 m!5179847))

(assert (=> d!1364493 d!1364727))

(assert (=> d!1364493 d!1364509))

(assert (=> d!1364493 d!1364711))

(declare-fun bs!796570 () Bool)

(declare-fun d!1364729 () Bool)

(assert (= bs!796570 (and d!1364729 d!1364505)))

(declare-fun lambda!163797 () Int)

(assert (=> bs!796570 (= lambda!163797 lambda!163684)))

(declare-fun bs!796571 () Bool)

(assert (= bs!796571 (and d!1364729 d!1364511)))

(assert (=> bs!796571 (= lambda!163797 lambda!163687)))

(declare-fun bs!796572 () Bool)

(assert (= bs!796572 (and d!1364729 d!1364503)))

(assert (=> bs!796572 (= lambda!163797 lambda!163683)))

(declare-fun bs!796573 () Bool)

(assert (= bs!796573 (and d!1364729 d!1364527)))

(assert (=> bs!796573 (= lambda!163797 lambda!163689)))

(declare-fun bs!796574 () Bool)

(assert (= bs!796574 (and d!1364729 d!1364581)))

(assert (=> bs!796574 (= lambda!163797 lambda!163690)))

(declare-fun bs!796575 () Bool)

(assert (= bs!796575 (and d!1364729 d!1364707)))

(assert (=> bs!796575 (= lambda!163797 lambda!163793)))

(declare-fun bs!796576 () Bool)

(assert (= bs!796576 (and d!1364729 d!1364521)))

(assert (=> bs!796576 (= lambda!163797 lambda!163688)))

(declare-fun bs!796577 () Bool)

(assert (= bs!796577 (and d!1364729 d!1364393)))

(assert (=> bs!796577 (not (= lambda!163797 lambda!163647))))

(declare-fun bs!796578 () Bool)

(assert (= bs!796578 (and d!1364729 d!1364423)))

(assert (=> bs!796578 (= lambda!163797 lambda!163668)))

(declare-fun bs!796579 () Bool)

(assert (= bs!796579 (and d!1364729 d!1364409)))

(assert (=> bs!796579 (= lambda!163797 lambda!163663)))

(declare-fun bs!796580 () Bool)

(assert (= bs!796580 (and d!1364729 d!1364467)))

(assert (=> bs!796580 (= lambda!163797 lambda!163674)))

(declare-fun bs!796581 () Bool)

(assert (= bs!796581 (and d!1364729 d!1364395)))

(assert (=> bs!796581 (= lambda!163797 lambda!163653)))

(declare-fun bs!796582 () Bool)

(assert (= bs!796582 (and d!1364729 d!1364421)))

(assert (=> bs!796582 (= lambda!163797 lambda!163664)))

(declare-fun bs!796583 () Bool)

(assert (= bs!796583 (and d!1364729 start!439496)))

(assert (=> bs!796583 (= lambda!163797 lambda!163641)))

(declare-fun lt!1660320 () ListMap!3337)

(assert (=> d!1364729 (invariantList!933 (toList!4076 lt!1660320))))

(declare-fun e!2784855 () ListMap!3337)

(assert (=> d!1364729 (= lt!1660320 e!2784855)))

(declare-fun c!761452 () Bool)

(assert (=> d!1364729 (= c!761452 ((_ is Cons!50311) (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)))))

(assert (=> d!1364729 (forall!10008 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311) lambda!163797)))

(assert (=> d!1364729 (= (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)) lt!1660320)))

(declare-fun b!4472101 () Bool)

(assert (=> b!4472101 (= e!2784855 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)))))))

(declare-fun b!4472102 () Bool)

(assert (=> b!4472102 (= e!2784855 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364729 c!761452) b!4472101))

(assert (= (and d!1364729 (not c!761452)) b!4472102))

(declare-fun m!5180517 () Bool)

(assert (=> d!1364729 m!5180517))

(declare-fun m!5180519 () Bool)

(assert (=> d!1364729 m!5180519))

(declare-fun m!5180521 () Bool)

(assert (=> b!4472101 m!5180521))

(assert (=> b!4472101 m!5180521))

(declare-fun m!5180523 () Bool)

(assert (=> b!4472101 m!5180523))

(assert (=> d!1364493 d!1364729))

(declare-fun d!1364731 () Bool)

(assert (=> d!1364731 (= (eq!527 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)) (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287)) (= (content!8122 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 newBucket!178) Nil!50311)))) (content!8122 (toList!4076 (-!296 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)) key!3287)))))))

(declare-fun bs!796584 () Bool)

(assert (= bs!796584 d!1364731))

(declare-fun m!5180525 () Bool)

(assert (=> bs!796584 m!5180525))

(assert (=> bs!796584 m!5179909))

(assert (=> d!1364493 d!1364731))

(declare-fun d!1364733 () Bool)

(assert (=> d!1364733 (= (invariantList!933 (toList!4076 lt!1659975)) (noDuplicatedKeys!216 (toList!4076 lt!1659975)))))

(declare-fun bs!796585 () Bool)

(assert (= bs!796585 d!1364733))

(declare-fun m!5180527 () Bool)

(assert (=> bs!796585 m!5180527))

(assert (=> d!1364503 d!1364733))

(declare-fun d!1364735 () Bool)

(declare-fun res!1855639 () Bool)

(declare-fun e!2784856 () Bool)

(assert (=> d!1364735 (=> res!1855639 e!2784856)))

(assert (=> d!1364735 (= res!1855639 ((_ is Nil!50311) (Cons!50311 lt!1659810 Nil!50311)))))

(assert (=> d!1364735 (= (forall!10008 (Cons!50311 lt!1659810 Nil!50311) lambda!163683) e!2784856)))

(declare-fun b!4472103 () Bool)

(declare-fun e!2784857 () Bool)

(assert (=> b!4472103 (= e!2784856 e!2784857)))

(declare-fun res!1855640 () Bool)

(assert (=> b!4472103 (=> (not res!1855640) (not e!2784857))))

(assert (=> b!4472103 (= res!1855640 (dynLambda!21022 lambda!163683 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))))

(declare-fun b!4472104 () Bool)

(assert (=> b!4472104 (= e!2784857 (forall!10008 (t!357385 (Cons!50311 lt!1659810 Nil!50311)) lambda!163683))))

(assert (= (and d!1364735 (not res!1855639)) b!4472103))

(assert (= (and b!4472103 res!1855640) b!4472104))

(declare-fun b_lambda!148607 () Bool)

(assert (=> (not b_lambda!148607) (not b!4472103)))

(declare-fun m!5180529 () Bool)

(assert (=> b!4472103 m!5180529))

(declare-fun m!5180531 () Bool)

(assert (=> b!4472104 m!5180531))

(assert (=> d!1364503 d!1364735))

(declare-fun d!1364737 () Bool)

(assert (=> d!1364737 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(declare-fun lt!1660321 () Unit!88025)

(assert (=> d!1364737 (= lt!1660321 (choose!28634 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(assert (=> d!1364737 (invariantList!933 (toList!4076 (extractMap!1090 lt!1659816)))))

(assert (=> d!1364737 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 (extractMap!1090 lt!1659816)) key!3287) lt!1660321)))

(declare-fun bs!796586 () Bool)

(assert (= bs!796586 d!1364737))

(assert (=> bs!796586 m!5179877))

(assert (=> bs!796586 m!5179877))

(assert (=> bs!796586 m!5179879))

(declare-fun m!5180533 () Bool)

(assert (=> bs!796586 m!5180533))

(assert (=> bs!796586 m!5180503))

(assert (=> b!4471697 d!1364737))

(assert (=> b!4471697 d!1364655))

(assert (=> b!4471697 d!1364657))

(declare-fun d!1364739 () Bool)

(assert (=> d!1364739 (contains!12877 (getKeysList!381 (toList!4076 (extractMap!1090 lt!1659816))) key!3287)))

(declare-fun lt!1660322 () Unit!88025)

(assert (=> d!1364739 (= lt!1660322 (choose!28635 (toList!4076 (extractMap!1090 lt!1659816)) key!3287))))

(assert (=> d!1364739 (invariantList!933 (toList!4076 (extractMap!1090 lt!1659816)))))

(assert (=> d!1364739 (= (lemmaInListThenGetKeysListContains!377 (toList!4076 (extractMap!1090 lt!1659816)) key!3287) lt!1660322)))

(declare-fun bs!796587 () Bool)

(assert (= bs!796587 d!1364739))

(assert (=> bs!796587 m!5179869))

(assert (=> bs!796587 m!5179869))

(declare-fun m!5180535 () Bool)

(assert (=> bs!796587 m!5180535))

(declare-fun m!5180537 () Bool)

(assert (=> bs!796587 m!5180537))

(assert (=> bs!796587 m!5180503))

(assert (=> b!4471697 d!1364739))

(declare-fun bs!796588 () Bool)

(declare-fun b!4472108 () Bool)

(assert (= bs!796588 (and b!4472108 d!1364389)))

(declare-fun lambda!163798 () Int)

(assert (=> bs!796588 (not (= lambda!163798 lambda!163644))))

(declare-fun bs!796589 () Bool)

(assert (= bs!796589 (and b!4472108 d!1364667)))

(assert (=> bs!796589 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) lt!1660279) (= lambda!163798 lambda!163791))))

(declare-fun bs!796590 () Bool)

(assert (= bs!796590 (and b!4472108 b!4472076)))

(assert (=> bs!796590 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) lt!1660288) (= lambda!163798 lambda!163790))))

(assert (=> bs!796590 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163798 lambda!163788))))

(declare-fun bs!796591 () Bool)

(assert (= bs!796591 (and b!4472108 b!4472075)))

(assert (=> bs!796591 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163798 lambda!163787))))

(assert (=> b!4472108 true))

(declare-fun bs!796592 () Bool)

(declare-fun b!4472109 () Bool)

(assert (= bs!796592 (and b!4472109 d!1364389)))

(declare-fun lambda!163799 () Int)

(assert (=> bs!796592 (not (= lambda!163799 lambda!163644))))

(declare-fun bs!796593 () Bool)

(assert (= bs!796593 (and b!4472109 d!1364667)))

(assert (=> bs!796593 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) lt!1660279) (= lambda!163799 lambda!163791))))

(declare-fun bs!796594 () Bool)

(assert (= bs!796594 (and b!4472109 b!4472076)))

(assert (=> bs!796594 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) lt!1660288) (= lambda!163799 lambda!163790))))

(assert (=> bs!796594 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163799 lambda!163788))))

(declare-fun bs!796595 () Bool)

(assert (= bs!796595 (and b!4472109 b!4472075)))

(assert (=> bs!796595 (= (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163799 lambda!163787))))

(declare-fun bs!796596 () Bool)

(assert (= bs!796596 (and b!4472109 b!4472108)))

(assert (=> bs!796596 (= lambda!163799 lambda!163798)))

(assert (=> b!4472109 true))

(declare-fun lambda!163800 () Int)

(assert (=> bs!796592 (not (= lambda!163800 lambda!163644))))

(declare-fun lt!1660339 () ListMap!3337)

(assert (=> bs!796593 (= (= lt!1660339 lt!1660279) (= lambda!163800 lambda!163791))))

(assert (=> bs!796594 (= (= lt!1660339 lt!1660288) (= lambda!163800 lambda!163790))))

(assert (=> b!4472109 (= (= lt!1660339 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163800 lambda!163799))))

(assert (=> bs!796594 (= (= lt!1660339 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163800 lambda!163788))))

(assert (=> bs!796595 (= (= lt!1660339 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163800 lambda!163787))))

(assert (=> bs!796596 (= (= lt!1660339 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163800 lambda!163798))))

(assert (=> b!4472109 true))

(declare-fun bs!796607 () Bool)

(declare-fun d!1364741 () Bool)

(assert (= bs!796607 (and d!1364741 d!1364389)))

(declare-fun lambda!163802 () Int)

(assert (=> bs!796607 (not (= lambda!163802 lambda!163644))))

(declare-fun bs!796608 () Bool)

(assert (= bs!796608 (and d!1364741 d!1364667)))

(declare-fun lt!1660330 () ListMap!3337)

(assert (=> bs!796608 (= (= lt!1660330 lt!1660279) (= lambda!163802 lambda!163791))))

(declare-fun bs!796610 () Bool)

(assert (= bs!796610 (and d!1364741 b!4472076)))

(assert (=> bs!796610 (= (= lt!1660330 lt!1660288) (= lambda!163802 lambda!163790))))

(assert (=> bs!796610 (= (= lt!1660330 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163802 lambda!163788))))

(declare-fun bs!796612 () Bool)

(assert (= bs!796612 (and d!1364741 b!4472109)))

(assert (=> bs!796612 (= (= lt!1660330 lt!1660339) (= lambda!163802 lambda!163800))))

(assert (=> bs!796612 (= (= lt!1660330 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163802 lambda!163799))))

(declare-fun bs!796613 () Bool)

(assert (= bs!796613 (and d!1364741 b!4472075)))

(assert (=> bs!796613 (= (= lt!1660330 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163802 lambda!163787))))

(declare-fun bs!796614 () Bool)

(assert (= bs!796614 (and d!1364741 b!4472108)))

(assert (=> bs!796614 (= (= lt!1660330 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163802 lambda!163798))))

(assert (=> d!1364741 true))

(declare-fun b!4472105 () Bool)

(declare-fun e!2784859 () Bool)

(assert (=> b!4472105 (= e!2784859 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) lambda!163800))))

(declare-fun b!4472106 () Bool)

(declare-fun e!2784860 () Bool)

(assert (=> b!4472106 (= e!2784860 (invariantList!933 (toList!4076 lt!1660330)))))

(assert (=> d!1364741 e!2784860))

(declare-fun res!1855643 () Bool)

(assert (=> d!1364741 (=> (not res!1855643) (not e!2784860))))

(assert (=> d!1364741 (= res!1855643 (forall!10009 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))) lambda!163802))))

(declare-fun e!2784858 () ListMap!3337)

(assert (=> d!1364741 (= lt!1660330 e!2784858)))

(declare-fun c!761453 () Bool)

(assert (=> d!1364741 (= c!761453 ((_ is Nil!50310) (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))))))

(assert (=> d!1364741 (noDuplicateKeys!1034 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))))

(assert (=> d!1364741 (= (addToMapMapFromBucket!595 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) lt!1660330)))

(declare-fun bm!311379 () Bool)

(declare-fun call!311386 () Bool)

(assert (=> bm!311379 (= call!311386 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (ite c!761453 lambda!163798 lambda!163800)))))

(declare-fun bm!311380 () Bool)

(declare-fun call!311385 () Unit!88025)

(assert (=> bm!311380 (= call!311385 (lemmaContainsAllItsOwnKeys!271 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))))))

(declare-fun b!4472107 () Bool)

(declare-fun res!1855641 () Bool)

(assert (=> b!4472107 (=> (not res!1855641) (not e!2784860))))

(assert (=> b!4472107 (= res!1855641 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) lambda!163802))))

(assert (=> b!4472108 (= e!2784858 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))))))

(declare-fun lt!1660336 () Unit!88025)

(assert (=> b!4472108 (= lt!1660336 call!311385)))

(assert (=> b!4472108 call!311386))

(declare-fun lt!1660327 () Unit!88025)

(assert (=> b!4472108 (= lt!1660327 lt!1660336)))

(declare-fun call!311384 () Bool)

(assert (=> b!4472108 call!311384))

(declare-fun lt!1660326 () Unit!88025)

(declare-fun Unit!88101 () Unit!88025)

(assert (=> b!4472108 (= lt!1660326 Unit!88101)))

(declare-fun bm!311381 () Bool)

(assert (=> bm!311381 (= call!311384 (forall!10009 (ite c!761453 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))) (ite c!761453 lambda!163798 lambda!163800)))))

(assert (=> b!4472109 (= e!2784858 lt!1660339)))

(declare-fun lt!1660341 () ListMap!3337)

(assert (=> b!4472109 (= lt!1660341 (+!1382 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))))))

(assert (=> b!4472109 (= lt!1660339 (addToMapMapFromBucket!595 (t!357384 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))) (+!1382 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))))))))

(declare-fun lt!1660338 () Unit!88025)

(assert (=> b!4472109 (= lt!1660338 call!311385)))

(assert (=> b!4472109 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) lambda!163799)))

(declare-fun lt!1660329 () Unit!88025)

(assert (=> b!4472109 (= lt!1660329 lt!1660338)))

(assert (=> b!4472109 (forall!10009 (toList!4076 lt!1660341) lambda!163800)))

(declare-fun lt!1660324 () Unit!88025)

(declare-fun Unit!88102 () Unit!88025)

(assert (=> b!4472109 (= lt!1660324 Unit!88102)))

(assert (=> b!4472109 (forall!10009 (t!357384 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))) lambda!163800)))

(declare-fun lt!1660342 () Unit!88025)

(declare-fun Unit!88103 () Unit!88025)

(assert (=> b!4472109 (= lt!1660342 Unit!88103)))

(declare-fun lt!1660325 () Unit!88025)

(declare-fun Unit!88104 () Unit!88025)

(assert (=> b!4472109 (= lt!1660325 Unit!88104)))

(declare-fun lt!1660335 () Unit!88025)

(assert (=> b!4472109 (= lt!1660335 (forallContained!2278 (toList!4076 lt!1660341) lambda!163800 (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))))))

(assert (=> b!4472109 (contains!12873 lt!1660341 (_1!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))))))

(declare-fun lt!1660333 () Unit!88025)

(declare-fun Unit!88105 () Unit!88025)

(assert (=> b!4472109 (= lt!1660333 Unit!88105)))

(assert (=> b!4472109 (contains!12873 lt!1660339 (_1!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))))))

(declare-fun lt!1660323 () Unit!88025)

(declare-fun Unit!88106 () Unit!88025)

(assert (=> b!4472109 (= lt!1660323 Unit!88106)))

(assert (=> b!4472109 call!311384))

(declare-fun lt!1660343 () Unit!88025)

(declare-fun Unit!88107 () Unit!88025)

(assert (=> b!4472109 (= lt!1660343 Unit!88107)))

(assert (=> b!4472109 (forall!10009 (toList!4076 lt!1660341) lambda!163800)))

(declare-fun lt!1660328 () Unit!88025)

(declare-fun Unit!88108 () Unit!88025)

(assert (=> b!4472109 (= lt!1660328 Unit!88108)))

(declare-fun lt!1660334 () Unit!88025)

(declare-fun Unit!88109 () Unit!88025)

(assert (=> b!4472109 (= lt!1660334 Unit!88109)))

(declare-fun lt!1660337 () Unit!88025)

(assert (=> b!4472109 (= lt!1660337 (addForallContainsKeyThenBeforeAdding!270 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) lt!1660339 (_1!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))))) (_2!28579 (h!56079 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))))))))

(assert (=> b!4472109 call!311386))

(declare-fun lt!1660332 () Unit!88025)

(assert (=> b!4472109 (= lt!1660332 lt!1660337)))

(assert (=> b!4472109 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) lambda!163800)))

(declare-fun lt!1660340 () Unit!88025)

(declare-fun Unit!88110 () Unit!88025)

(assert (=> b!4472109 (= lt!1660340 Unit!88110)))

(declare-fun res!1855642 () Bool)

(assert (=> b!4472109 (= res!1855642 (forall!10009 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311))) lambda!163800))))

(assert (=> b!4472109 (=> (not res!1855642) (not e!2784859))))

(assert (=> b!4472109 e!2784859))

(declare-fun lt!1660331 () Unit!88025)

(declare-fun Unit!88111 () Unit!88025)

(assert (=> b!4472109 (= lt!1660331 Unit!88111)))

(assert (= (and d!1364741 c!761453) b!4472108))

(assert (= (and d!1364741 (not c!761453)) b!4472109))

(assert (= (and b!4472109 res!1855642) b!4472105))

(assert (= (or b!4472108 b!4472109) bm!311379))

(assert (= (or b!4472108 b!4472109) bm!311381))

(assert (= (or b!4472108 b!4472109) bm!311380))

(assert (= (and d!1364741 res!1855643) b!4472107))

(assert (= (and b!4472107 res!1855641) b!4472106))

(declare-fun m!5180561 () Bool)

(assert (=> b!4472109 m!5180561))

(declare-fun m!5180565 () Bool)

(assert (=> b!4472109 m!5180565))

(declare-fun m!5180569 () Bool)

(assert (=> b!4472109 m!5180569))

(declare-fun m!5180573 () Bool)

(assert (=> b!4472109 m!5180573))

(declare-fun m!5180579 () Bool)

(assert (=> b!4472109 m!5180579))

(declare-fun m!5180581 () Bool)

(assert (=> b!4472109 m!5180581))

(assert (=> b!4472109 m!5179853))

(assert (=> b!4472109 m!5180561))

(declare-fun m!5180583 () Bool)

(assert (=> b!4472109 m!5180583))

(assert (=> b!4472109 m!5179853))

(declare-fun m!5180585 () Bool)

(assert (=> b!4472109 m!5180585))

(declare-fun m!5180587 () Bool)

(assert (=> b!4472109 m!5180587))

(declare-fun m!5180589 () Bool)

(assert (=> b!4472109 m!5180589))

(assert (=> b!4472109 m!5180589))

(declare-fun m!5180591 () Bool)

(assert (=> b!4472109 m!5180591))

(assert (=> bm!311380 m!5179853))

(declare-fun m!5180593 () Bool)

(assert (=> bm!311380 m!5180593))

(declare-fun m!5180595 () Bool)

(assert (=> bm!311381 m!5180595))

(declare-fun m!5180597 () Bool)

(assert (=> b!4472107 m!5180597))

(assert (=> b!4472105 m!5180587))

(declare-fun m!5180599 () Bool)

(assert (=> b!4472106 m!5180599))

(declare-fun m!5180601 () Bool)

(assert (=> bm!311379 m!5180601))

(declare-fun m!5180603 () Bool)

(assert (=> d!1364741 m!5180603))

(declare-fun m!5180605 () Bool)

(assert (=> d!1364741 m!5180605))

(assert (=> b!4471668 d!1364741))

(declare-fun bs!796626 () Bool)

(declare-fun d!1364745 () Bool)

(assert (= bs!796626 (and d!1364745 d!1364505)))

(declare-fun lambda!163804 () Int)

(assert (=> bs!796626 (= lambda!163804 lambda!163684)))

(declare-fun bs!796628 () Bool)

(assert (= bs!796628 (and d!1364745 d!1364511)))

(assert (=> bs!796628 (= lambda!163804 lambda!163687)))

(declare-fun bs!796630 () Bool)

(assert (= bs!796630 (and d!1364745 d!1364503)))

(assert (=> bs!796630 (= lambda!163804 lambda!163683)))

(declare-fun bs!796632 () Bool)

(assert (= bs!796632 (and d!1364745 d!1364527)))

(assert (=> bs!796632 (= lambda!163804 lambda!163689)))

(declare-fun bs!796633 () Bool)

(assert (= bs!796633 (and d!1364745 d!1364729)))

(assert (=> bs!796633 (= lambda!163804 lambda!163797)))

(declare-fun bs!796634 () Bool)

(assert (= bs!796634 (and d!1364745 d!1364581)))

(assert (=> bs!796634 (= lambda!163804 lambda!163690)))

(declare-fun bs!796635 () Bool)

(assert (= bs!796635 (and d!1364745 d!1364707)))

(assert (=> bs!796635 (= lambda!163804 lambda!163793)))

(declare-fun bs!796636 () Bool)

(assert (= bs!796636 (and d!1364745 d!1364521)))

(assert (=> bs!796636 (= lambda!163804 lambda!163688)))

(declare-fun bs!796637 () Bool)

(assert (= bs!796637 (and d!1364745 d!1364393)))

(assert (=> bs!796637 (not (= lambda!163804 lambda!163647))))

(declare-fun bs!796638 () Bool)

(assert (= bs!796638 (and d!1364745 d!1364423)))

(assert (=> bs!796638 (= lambda!163804 lambda!163668)))

(declare-fun bs!796639 () Bool)

(assert (= bs!796639 (and d!1364745 d!1364409)))

(assert (=> bs!796639 (= lambda!163804 lambda!163663)))

(declare-fun bs!796640 () Bool)

(assert (= bs!796640 (and d!1364745 d!1364467)))

(assert (=> bs!796640 (= lambda!163804 lambda!163674)))

(declare-fun bs!796641 () Bool)

(assert (= bs!796641 (and d!1364745 d!1364395)))

(assert (=> bs!796641 (= lambda!163804 lambda!163653)))

(declare-fun bs!796642 () Bool)

(assert (= bs!796642 (and d!1364745 d!1364421)))

(assert (=> bs!796642 (= lambda!163804 lambda!163664)))

(declare-fun bs!796643 () Bool)

(assert (= bs!796643 (and d!1364745 start!439496)))

(assert (=> bs!796643 (= lambda!163804 lambda!163641)))

(declare-fun lt!1660345 () ListMap!3337)

(assert (=> d!1364745 (invariantList!933 (toList!4076 lt!1660345))))

(declare-fun e!2784862 () ListMap!3337)

(assert (=> d!1364745 (= lt!1660345 e!2784862)))

(declare-fun c!761455 () Bool)

(assert (=> d!1364745 (= c!761455 ((_ is Cons!50311) (t!357385 (Cons!50311 lt!1659810 Nil!50311))))))

(assert (=> d!1364745 (forall!10008 (t!357385 (Cons!50311 lt!1659810 Nil!50311)) lambda!163804)))

(assert (=> d!1364745 (= (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311))) lt!1660345)))

(declare-fun b!4472112 () Bool)

(assert (=> b!4472112 (= e!2784862 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (extractMap!1090 (t!357385 (t!357385 (Cons!50311 lt!1659810 Nil!50311))))))))

(declare-fun b!4472113 () Bool)

(assert (=> b!4472113 (= e!2784862 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364745 c!761455) b!4472112))

(assert (= (and d!1364745 (not c!761455)) b!4472113))

(declare-fun m!5180615 () Bool)

(assert (=> d!1364745 m!5180615))

(declare-fun m!5180617 () Bool)

(assert (=> d!1364745 m!5180617))

(declare-fun m!5180619 () Bool)

(assert (=> b!4472112 m!5180619))

(assert (=> b!4472112 m!5180619))

(declare-fun m!5180621 () Bool)

(assert (=> b!4472112 m!5180621))

(assert (=> b!4471668 d!1364745))

(declare-fun b!4472116 () Bool)

(declare-fun e!2784864 () List!50434)

(assert (=> b!4472116 (= e!2784864 (Cons!50310 (h!56079 (t!357384 lt!1659806)) (removePairForKey!661 (t!357384 (t!357384 lt!1659806)) key!3287)))))

(declare-fun b!4472117 () Bool)

(assert (=> b!4472117 (= e!2784864 Nil!50310)))

(declare-fun b!4472115 () Bool)

(declare-fun e!2784863 () List!50434)

(assert (=> b!4472115 (= e!2784863 e!2784864)))

(declare-fun c!761457 () Bool)

(assert (=> b!4472115 (= c!761457 ((_ is Cons!50310) (t!357384 lt!1659806)))))

(declare-fun d!1364749 () Bool)

(declare-fun lt!1660346 () List!50434)

(assert (=> d!1364749 (not (containsKey!1490 lt!1660346 key!3287))))

(assert (=> d!1364749 (= lt!1660346 e!2784863)))

(declare-fun c!761456 () Bool)

(assert (=> d!1364749 (= c!761456 (and ((_ is Cons!50310) (t!357384 lt!1659806)) (= (_1!28579 (h!56079 (t!357384 lt!1659806))) key!3287)))))

(assert (=> d!1364749 (noDuplicateKeys!1034 (t!357384 lt!1659806))))

(assert (=> d!1364749 (= (removePairForKey!661 (t!357384 lt!1659806) key!3287) lt!1660346)))

(declare-fun b!4472114 () Bool)

(assert (=> b!4472114 (= e!2784863 (t!357384 (t!357384 lt!1659806)))))

(assert (= (and d!1364749 c!761456) b!4472114))

(assert (= (and d!1364749 (not c!761456)) b!4472115))

(assert (= (and b!4472115 c!761457) b!4472116))

(assert (= (and b!4472115 (not c!761457)) b!4472117))

(declare-fun m!5180623 () Bool)

(assert (=> b!4472116 m!5180623))

(declare-fun m!5180625 () Bool)

(assert (=> d!1364749 m!5180625))

(declare-fun m!5180627 () Bool)

(assert (=> d!1364749 m!5180627))

(assert (=> b!4471514 d!1364749))

(declare-fun d!1364751 () Bool)

(assert (=> d!1364751 (dynLambda!21022 lambda!163641 lt!1659814)))

(assert (=> d!1364751 true))

(declare-fun _$7!1690 () Unit!88025)

(assert (=> d!1364751 (= (choose!28624 (toList!4075 lm!1477) lambda!163641 lt!1659814) _$7!1690)))

(declare-fun b_lambda!148609 () Bool)

(assert (=> (not b_lambda!148609) (not d!1364751)))

(declare-fun bs!796644 () Bool)

(assert (= bs!796644 d!1364751))

(assert (=> bs!796644 m!5179637))

(assert (=> d!1364435 d!1364751))

(assert (=> d!1364435 d!1364457))

(declare-fun d!1364753 () Bool)

(assert (=> d!1364753 (= (invariantList!933 (toList!4076 lt!1659836)) (noDuplicatedKeys!216 (toList!4076 lt!1659836)))))

(declare-fun bs!796645 () Bool)

(assert (= bs!796645 d!1364753))

(declare-fun m!5180629 () Bool)

(assert (=> bs!796645 m!5180629))

(assert (=> d!1364421 d!1364753))

(declare-fun d!1364755 () Bool)

(declare-fun res!1855644 () Bool)

(declare-fun e!2784865 () Bool)

(assert (=> d!1364755 (=> res!1855644 e!2784865)))

(assert (=> d!1364755 (= res!1855644 ((_ is Nil!50311) (toList!4075 lt!1659812)))))

(assert (=> d!1364755 (= (forall!10008 (toList!4075 lt!1659812) lambda!163664) e!2784865)))

(declare-fun b!4472118 () Bool)

(declare-fun e!2784866 () Bool)

(assert (=> b!4472118 (= e!2784865 e!2784866)))

(declare-fun res!1855645 () Bool)

(assert (=> b!4472118 (=> (not res!1855645) (not e!2784866))))

(assert (=> b!4472118 (= res!1855645 (dynLambda!21022 lambda!163664 (h!56080 (toList!4075 lt!1659812))))))

(declare-fun b!4472119 () Bool)

(assert (=> b!4472119 (= e!2784866 (forall!10008 (t!357385 (toList!4075 lt!1659812)) lambda!163664))))

(assert (= (and d!1364755 (not res!1855644)) b!4472118))

(assert (= (and b!4472118 res!1855645) b!4472119))

(declare-fun b_lambda!148611 () Bool)

(assert (=> (not b_lambda!148611) (not b!4472118)))

(declare-fun m!5180631 () Bool)

(assert (=> b!4472118 m!5180631))

(declare-fun m!5180633 () Bool)

(assert (=> b!4472119 m!5180633))

(assert (=> d!1364421 d!1364755))

(declare-fun d!1364757 () Bool)

(declare-fun c!761458 () Bool)

(assert (=> d!1364757 (= c!761458 (and ((_ is Cons!50311) (toList!4075 lt!1659965)) (= (_1!28580 (h!56080 (toList!4075 lt!1659965))) (_1!28580 lt!1659810))))))

(declare-fun e!2784867 () Option!10938)

(assert (=> d!1364757 (= (getValueByKey!924 (toList!4075 lt!1659965) (_1!28580 lt!1659810)) e!2784867)))

(declare-fun b!4472123 () Bool)

(declare-fun e!2784868 () Option!10938)

(assert (=> b!4472123 (= e!2784868 None!10937)))

(declare-fun b!4472121 () Bool)

(assert (=> b!4472121 (= e!2784867 e!2784868)))

(declare-fun c!761459 () Bool)

(assert (=> b!4472121 (= c!761459 (and ((_ is Cons!50311) (toList!4075 lt!1659965)) (not (= (_1!28580 (h!56080 (toList!4075 lt!1659965))) (_1!28580 lt!1659810)))))))

(declare-fun b!4472120 () Bool)

(assert (=> b!4472120 (= e!2784867 (Some!10937 (_2!28580 (h!56080 (toList!4075 lt!1659965)))))))

(declare-fun b!4472122 () Bool)

(assert (=> b!4472122 (= e!2784868 (getValueByKey!924 (t!357385 (toList!4075 lt!1659965)) (_1!28580 lt!1659810)))))

(assert (= (and d!1364757 c!761458) b!4472120))

(assert (= (and d!1364757 (not c!761458)) b!4472121))

(assert (= (and b!4472121 c!761459) b!4472122))

(assert (= (and b!4472121 (not c!761459)) b!4472123))

(declare-fun m!5180635 () Bool)

(assert (=> b!4472122 m!5180635))

(assert (=> b!4471652 d!1364757))

(declare-fun d!1364759 () Bool)

(declare-fun choose!28637 (Hashable!5429 K!11725) (_ BitVec 64))

(assert (=> d!1364759 (= (hash!2474 hashF!1107 key!3287) (choose!28637 hashF!1107 key!3287))))

(declare-fun bs!796646 () Bool)

(assert (= bs!796646 d!1364759))

(declare-fun m!5180637 () Bool)

(assert (=> bs!796646 m!5180637))

(assert (=> d!1364407 d!1364759))

(declare-fun b!4472124 () Bool)

(declare-fun e!2784873 () Bool)

(declare-fun e!2784871 () Bool)

(assert (=> b!4472124 (= e!2784873 e!2784871)))

(declare-fun res!1855647 () Bool)

(assert (=> b!4472124 (=> (not res!1855647) (not e!2784871))))

(assert (=> b!4472124 (= res!1855647 (isDefined!8226 (getValueByKey!925 (toList!4076 lt!1660003) key!3287)))))

(declare-fun bm!311382 () Bool)

(declare-fun call!311387 () Bool)

(declare-fun e!2784872 () List!50437)

(assert (=> bm!311382 (= call!311387 (contains!12877 e!2784872 key!3287))))

(declare-fun c!761460 () Bool)

(declare-fun c!761461 () Bool)

(assert (=> bm!311382 (= c!761460 c!761461)))

(declare-fun b!4472125 () Bool)

(assert (=> b!4472125 false))

(declare-fun lt!1660354 () Unit!88025)

(declare-fun lt!1660347 () Unit!88025)

(assert (=> b!4472125 (= lt!1660354 lt!1660347)))

(assert (=> b!4472125 (containsKey!1494 (toList!4076 lt!1660003) key!3287)))

(assert (=> b!4472125 (= lt!1660347 (lemmaInGetKeysListThenContainsKey!380 (toList!4076 lt!1660003) key!3287))))

(declare-fun e!2784869 () Unit!88025)

(declare-fun Unit!88123 () Unit!88025)

(assert (=> b!4472125 (= e!2784869 Unit!88123)))

(declare-fun b!4472126 () Bool)

(assert (=> b!4472126 (= e!2784872 (keys!17378 lt!1660003))))

(declare-fun d!1364761 () Bool)

(assert (=> d!1364761 e!2784873))

(declare-fun res!1855648 () Bool)

(assert (=> d!1364761 (=> res!1855648 e!2784873)))

(declare-fun e!2784870 () Bool)

(assert (=> d!1364761 (= res!1855648 e!2784870)))

(declare-fun res!1855646 () Bool)

(assert (=> d!1364761 (=> (not res!1855646) (not e!2784870))))

(declare-fun lt!1660349 () Bool)

(assert (=> d!1364761 (= res!1855646 (not lt!1660349))))

(declare-fun lt!1660352 () Bool)

(assert (=> d!1364761 (= lt!1660349 lt!1660352)))

(declare-fun lt!1660350 () Unit!88025)

(declare-fun e!2784874 () Unit!88025)

(assert (=> d!1364761 (= lt!1660350 e!2784874)))

(assert (=> d!1364761 (= c!761461 lt!1660352)))

(assert (=> d!1364761 (= lt!1660352 (containsKey!1494 (toList!4076 lt!1660003) key!3287))))

(assert (=> d!1364761 (= (contains!12873 lt!1660003 key!3287) lt!1660349)))

(declare-fun b!4472127 () Bool)

(declare-fun Unit!88124 () Unit!88025)

(assert (=> b!4472127 (= e!2784869 Unit!88124)))

(declare-fun b!4472128 () Bool)

(assert (=> b!4472128 (= e!2784870 (not (contains!12877 (keys!17378 lt!1660003) key!3287)))))

(declare-fun b!4472129 () Bool)

(assert (=> b!4472129 (= e!2784874 e!2784869)))

(declare-fun c!761462 () Bool)

(assert (=> b!4472129 (= c!761462 call!311387)))

(declare-fun b!4472130 () Bool)

(assert (=> b!4472130 (= e!2784871 (contains!12877 (keys!17378 lt!1660003) key!3287))))

(declare-fun b!4472131 () Bool)

(declare-fun lt!1660348 () Unit!88025)

(assert (=> b!4472131 (= e!2784874 lt!1660348)))

(declare-fun lt!1660351 () Unit!88025)

(assert (=> b!4472131 (= lt!1660351 (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 lt!1660003) key!3287))))

(assert (=> b!4472131 (isDefined!8226 (getValueByKey!925 (toList!4076 lt!1660003) key!3287))))

(declare-fun lt!1660353 () Unit!88025)

(assert (=> b!4472131 (= lt!1660353 lt!1660351)))

(assert (=> b!4472131 (= lt!1660348 (lemmaInListThenGetKeysListContains!377 (toList!4076 lt!1660003) key!3287))))

(assert (=> b!4472131 call!311387))

(declare-fun b!4472132 () Bool)

(assert (=> b!4472132 (= e!2784872 (getKeysList!381 (toList!4076 lt!1660003)))))

(assert (= (and d!1364761 c!761461) b!4472131))

(assert (= (and d!1364761 (not c!761461)) b!4472129))

(assert (= (and b!4472129 c!761462) b!4472125))

(assert (= (and b!4472129 (not c!761462)) b!4472127))

(assert (= (or b!4472131 b!4472129) bm!311382))

(assert (= (and bm!311382 c!761460) b!4472132))

(assert (= (and bm!311382 (not c!761460)) b!4472126))

(assert (= (and d!1364761 res!1855646) b!4472128))

(assert (= (and d!1364761 (not res!1855648)) b!4472124))

(assert (= (and b!4472124 res!1855647) b!4472130))

(declare-fun m!5180639 () Bool)

(assert (=> b!4472125 m!5180639))

(declare-fun m!5180641 () Bool)

(assert (=> b!4472125 m!5180641))

(assert (=> b!4472132 m!5180177))

(assert (=> b!4472126 m!5179893))

(assert (=> b!4472128 m!5179893))

(assert (=> b!4472128 m!5179893))

(declare-fun m!5180643 () Bool)

(assert (=> b!4472128 m!5180643))

(declare-fun m!5180645 () Bool)

(assert (=> b!4472131 m!5180645))

(declare-fun m!5180647 () Bool)

(assert (=> b!4472131 m!5180647))

(assert (=> b!4472131 m!5180647))

(declare-fun m!5180649 () Bool)

(assert (=> b!4472131 m!5180649))

(declare-fun m!5180651 () Bool)

(assert (=> b!4472131 m!5180651))

(assert (=> b!4472124 m!5180647))

(assert (=> b!4472124 m!5180647))

(assert (=> b!4472124 m!5180649))

(assert (=> b!4472130 m!5179893))

(assert (=> b!4472130 m!5179893))

(assert (=> b!4472130 m!5180643))

(declare-fun m!5180653 () Bool)

(assert (=> bm!311382 m!5180653))

(assert (=> d!1364761 m!5180639))

(assert (=> d!1364509 d!1364761))

(declare-fun b!4472262 () Bool)

(declare-fun res!1855697 () Bool)

(declare-fun e!2784950 () Bool)

(assert (=> b!4472262 (=> (not res!1855697) (not e!2784950))))

(declare-fun lt!1660456 () List!50434)

(assert (=> b!4472262 (= res!1855697 (not (containsKey!1494 lt!1660456 key!3287)))))

(declare-fun b!4472263 () Bool)

(declare-fun e!2784949 () List!50434)

(declare-fun e!2784951 () List!50434)

(assert (=> b!4472263 (= e!2784949 e!2784951)))

(declare-fun c!761510 () Bool)

(assert (=> b!4472263 (= c!761510 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (not (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))) key!3287))))))

(declare-fun b!4472264 () Bool)

(declare-fun e!2784953 () Unit!88025)

(declare-fun Unit!88126 () Unit!88025)

(assert (=> b!4472264 (= e!2784953 Unit!88126)))

(declare-fun e!2784947 () Bool)

(declare-fun b!4472265 () Bool)

(declare-fun call!311403 () (InoxSet tuple2!50570))

(declare-fun call!311404 () (InoxSet tuple2!50570))

(declare-fun get!16407 (Option!10939) V!11971)

(assert (=> b!4472265 (= e!2784947 (= call!311403 ((_ map and) call!311404 ((_ map not) (store ((as const (Array tuple2!50570 Bool)) false) (tuple2!50571 key!3287 (get!16407 (getValueByKey!925 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287))) true)))))))

(assert (=> b!4472265 (containsKey!1494 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287)))

(declare-fun lt!1660461 () Unit!88025)

(assert (=> b!4472265 (= lt!1660461 (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287))))

(assert (=> b!4472265 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287))))

(declare-fun lt!1660444 () Unit!88025)

(assert (=> b!4472265 (= lt!1660444 lt!1660461)))

(declare-fun b!4472266 () Bool)

(declare-fun e!2784945 () List!50434)

(assert (=> b!4472266 (= e!2784945 (removePresrvNoDuplicatedKeys!69 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) key!3287))))

(declare-fun b!4472267 () Bool)

(assert (=> b!4472267 (= e!2784949 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun c!761508 () Bool)

(declare-fun call!311405 () Bool)

(assert (=> b!4472267 (= c!761508 call!311405)))

(declare-fun lt!1660453 () Unit!88025)

(declare-fun e!2784946 () Unit!88025)

(assert (=> b!4472267 (= lt!1660453 e!2784946)))

(declare-fun d!1364763 () Bool)

(assert (=> d!1364763 e!2784950))

(declare-fun res!1855696 () Bool)

(assert (=> d!1364763 (=> (not res!1855696) (not e!2784950))))

(assert (=> d!1364763 (= res!1855696 (invariantList!933 lt!1660456))))

(assert (=> d!1364763 (= lt!1660456 e!2784949)))

(declare-fun c!761509 () Bool)

(assert (=> d!1364763 (= c!761509 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))) key!3287)))))

(assert (=> d!1364763 (invariantList!933 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))

(assert (=> d!1364763 (= (removePresrvNoDuplicatedKeys!69 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287) lt!1660456)))

(declare-fun b!4472268 () Bool)

(declare-fun call!311406 () (InoxSet tuple2!50570))

(declare-fun call!311407 () (InoxSet tuple2!50570))

(assert (=> b!4472268 (= call!311406 call!311407)))

(declare-fun Unit!88130 () Unit!88025)

(assert (=> b!4472268 (= e!2784946 Unit!88130)))

(declare-fun bm!311398 () Bool)

(assert (=> bm!311398 (= call!311405 (containsKey!1494 (ite c!761509 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))) (ite c!761509 key!3287 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))))

(declare-fun b!4472269 () Bool)

(declare-fun e!2784952 () Unit!88025)

(declare-fun Unit!88131 () Unit!88025)

(assert (=> b!4472269 (= e!2784952 Unit!88131)))

(declare-fun lt!1660445 () List!50434)

(assert (=> b!4472269 (= lt!1660445 (removePresrvNoDuplicatedKeys!69 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) key!3287))))

(declare-fun lt!1660451 () Unit!88025)

(assert (=> b!4472269 (= lt!1660451 (lemmaInListThenGetKeysListContains!377 lt!1660445 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))))

(assert (=> b!4472269 (contains!12877 (getKeysList!381 lt!1660445) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(declare-fun lt!1660458 () Unit!88025)

(assert (=> b!4472269 (= lt!1660458 lt!1660451)))

(assert (=> b!4472269 false))

(declare-fun bm!311399 () Bool)

(assert (=> bm!311399 (= call!311406 (content!8122 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(declare-fun bm!311400 () Bool)

(assert (=> bm!311400 (= call!311403 (content!8122 lt!1660456))))

(declare-fun b!4472270 () Bool)

(assert (=> b!4472270 (= call!311406 ((_ map and) call!311407 ((_ map not) (store ((as const (Array tuple2!50570 Bool)) false) (tuple2!50571 key!3287 (get!16407 (getValueByKey!925 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287))) true))))))

(declare-fun lt!1660452 () Unit!88025)

(declare-fun e!2784948 () Unit!88025)

(assert (=> b!4472270 (= lt!1660452 e!2784948)))

(declare-fun c!761505 () Bool)

(declare-fun contains!12878 (List!50434 tuple2!50570) Bool)

(assert (=> b!4472270 (= c!761505 (contains!12878 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (tuple2!50571 key!3287 (get!16407 (getValueByKey!925 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287)))))))

(declare-fun Unit!88132 () Unit!88025)

(assert (=> b!4472270 (= e!2784946 Unit!88132)))

(declare-fun bm!311401 () Bool)

(assert (=> bm!311401 (= call!311404 (content!8122 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun bm!311402 () Bool)

(assert (=> bm!311402 (= call!311407 (content!8122 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun b!4472271 () Bool)

(assert (=> b!4472271 (= e!2784950 e!2784947)))

(declare-fun c!761506 () Bool)

(assert (=> b!4472271 (= c!761506 (containsKey!1494 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287))))

(declare-fun b!4472272 () Bool)

(declare-fun Unit!88133 () Unit!88025)

(assert (=> b!4472272 (= e!2784948 Unit!88133)))

(declare-fun lt!1660459 () V!11971)

(assert (=> b!4472272 (= lt!1660459 (get!16407 (getValueByKey!925 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287)))))

(declare-fun lt!1660448 () K!11725)

(assert (=> b!4472272 (= lt!1660448 key!3287)))

(declare-fun lt!1660457 () K!11725)

(assert (=> b!4472272 (= lt!1660457 key!3287)))

(declare-fun lt!1660447 () Unit!88025)

(declare-fun lemmaContainsTupleThenContainsKey!26 (List!50434 K!11725 V!11971) Unit!88025)

(assert (=> b!4472272 (= lt!1660447 (lemmaContainsTupleThenContainsKey!26 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) lt!1660448 (get!16407 (getValueByKey!925 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) key!3287))))))

(declare-fun call!311408 () Bool)

(assert (=> b!4472272 call!311408))

(declare-fun lt!1660454 () Unit!88025)

(assert (=> b!4472272 (= lt!1660454 lt!1660447)))

(assert (=> b!4472272 false))

(declare-fun b!4472273 () Bool)

(declare-fun Unit!88134 () Unit!88025)

(assert (=> b!4472273 (= e!2784948 Unit!88134)))

(declare-fun b!4472274 () Bool)

(declare-fun Unit!88135 () Unit!88025)

(assert (=> b!4472274 (= e!2784953 Unit!88135)))

(declare-fun lt!1660449 () Unit!88025)

(assert (=> b!4472274 (= lt!1660449 (lemmaInGetKeysListThenContainsKey!380 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))))

(assert (=> b!4472274 call!311405))

(declare-fun lt!1660460 () Unit!88025)

(assert (=> b!4472274 (= lt!1660460 lt!1660449)))

(assert (=> b!4472274 false))

(declare-fun b!4472275 () Bool)

(assert (=> b!4472275 (= e!2784951 Nil!50310)))

(declare-fun bm!311403 () Bool)

(assert (=> bm!311403 (= call!311408 (containsKey!1494 e!2784945 (ite c!761509 lt!1660448 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))))

(declare-fun c!761507 () Bool)

(assert (=> bm!311403 (= c!761507 c!761509)))

(declare-fun b!4472276 () Bool)

(declare-fun Unit!88136 () Unit!88025)

(assert (=> b!4472276 (= e!2784952 Unit!88136)))

(declare-fun b!4472277 () Bool)

(declare-fun lt!1660450 () Unit!88025)

(assert (=> b!4472277 (= lt!1660450 e!2784952)))

(declare-fun c!761503 () Bool)

(assert (=> b!4472277 (= c!761503 call!311408)))

(declare-fun lt!1660455 () Unit!88025)

(assert (=> b!4472277 (= lt!1660455 e!2784953)))

(declare-fun c!761504 () Bool)

(assert (=> b!4472277 (= c!761504 (contains!12877 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))))

(declare-fun lt!1660446 () List!50434)

(declare-fun $colon$colon!858 (List!50434 tuple2!50570) List!50434)

(assert (=> b!4472277 (= lt!1660446 ($colon$colon!858 (removePresrvNoDuplicatedKeys!69 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) key!3287) (h!56079 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))))))

(assert (=> b!4472277 (= e!2784951 lt!1660446)))

(declare-fun b!4472278 () Bool)

(assert (=> b!4472278 (= e!2784945 (t!357384 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(declare-fun b!4472279 () Bool)

(assert (=> b!4472279 (= e!2784947 (= call!311403 call!311404))))

(declare-fun b!4472280 () Bool)

(declare-fun res!1855698 () Bool)

(assert (=> b!4472280 (=> (not res!1855698) (not e!2784950))))

(assert (=> b!4472280 (= res!1855698 (= (content!8121 (getKeysList!381 lt!1660456)) ((_ map and) (content!8121 (getKeysList!381 (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))))) ((_ map not) (store ((as const (Array K!11725 Bool)) false) key!3287 true)))))))

(assert (= (and d!1364763 c!761509) b!4472267))

(assert (= (and d!1364763 (not c!761509)) b!4472263))

(assert (= (and b!4472267 c!761508) b!4472270))

(assert (= (and b!4472267 (not c!761508)) b!4472268))

(assert (= (and b!4472270 c!761505) b!4472272))

(assert (= (and b!4472270 (not c!761505)) b!4472273))

(assert (= (or b!4472270 b!4472268) bm!311399))

(assert (= (or b!4472270 b!4472268) bm!311402))

(assert (= (and b!4472263 c!761510) b!4472277))

(assert (= (and b!4472263 (not c!761510)) b!4472275))

(assert (= (and b!4472277 c!761504) b!4472274))

(assert (= (and b!4472277 (not c!761504)) b!4472264))

(assert (= (and b!4472277 c!761503) b!4472269))

(assert (= (and b!4472277 (not c!761503)) b!4472276))

(assert (= (or b!4472267 b!4472274) bm!311398))

(assert (= (or b!4472272 b!4472277) bm!311403))

(assert (= (and bm!311403 c!761507) b!4472278))

(assert (= (and bm!311403 (not c!761507)) b!4472266))

(assert (= (and d!1364763 res!1855696) b!4472262))

(assert (= (and b!4472262 res!1855697) b!4472280))

(assert (= (and b!4472280 res!1855698) b!4472271))

(assert (= (and b!4472271 c!761506) b!4472265))

(assert (= (and b!4472271 (not c!761506)) b!4472279))

(assert (= (or b!4472265 b!4472279) bm!311400))

(assert (= (or b!4472265 b!4472279) bm!311401))

(declare-fun m!5180843 () Bool)

(assert (=> b!4472265 m!5180843))

(declare-fun m!5180845 () Bool)

(assert (=> b!4472265 m!5180845))

(assert (=> b!4472265 m!5180845))

(declare-fun m!5180847 () Bool)

(assert (=> b!4472265 m!5180847))

(declare-fun m!5180849 () Bool)

(assert (=> b!4472265 m!5180849))

(declare-fun m!5180851 () Bool)

(assert (=> b!4472265 m!5180851))

(assert (=> b!4472265 m!5180845))

(declare-fun m!5180853 () Bool)

(assert (=> b!4472265 m!5180853))

(declare-fun m!5180855 () Bool)

(assert (=> bm!311398 m!5180855))

(declare-fun m!5180857 () Bool)

(assert (=> b!4472269 m!5180857))

(declare-fun m!5180859 () Bool)

(assert (=> b!4472269 m!5180859))

(declare-fun m!5180861 () Bool)

(assert (=> b!4472269 m!5180861))

(assert (=> b!4472269 m!5180861))

(declare-fun m!5180863 () Bool)

(assert (=> b!4472269 m!5180863))

(assert (=> b!4472271 m!5180849))

(declare-fun m!5180865 () Bool)

(assert (=> b!4472262 m!5180865))

(assert (=> b!4472272 m!5180845))

(assert (=> b!4472272 m!5180845))

(assert (=> b!4472272 m!5180847))

(assert (=> b!4472272 m!5180847))

(declare-fun m!5180867 () Bool)

(assert (=> b!4472272 m!5180867))

(declare-fun m!5180869 () Bool)

(assert (=> bm!311402 m!5180869))

(assert (=> b!4472280 m!5180157))

(declare-fun m!5180871 () Bool)

(assert (=> b!4472280 m!5180871))

(assert (=> b!4472280 m!5180157))

(declare-fun m!5180873 () Bool)

(assert (=> b!4472280 m!5180873))

(declare-fun m!5180875 () Bool)

(assert (=> b!4472280 m!5180875))

(assert (=> b!4472280 m!5180873))

(assert (=> b!4472280 m!5179891))

(declare-fun m!5180877 () Bool)

(assert (=> d!1364763 m!5180877))

(declare-fun m!5180879 () Bool)

(assert (=> d!1364763 m!5180879))

(assert (=> bm!311401 m!5180869))

(declare-fun m!5180881 () Bool)

(assert (=> bm!311400 m!5180881))

(assert (=> b!4472266 m!5180857))

(declare-fun m!5180883 () Bool)

(assert (=> bm!311399 m!5180883))

(declare-fun m!5180885 () Bool)

(assert (=> b!4472277 m!5180885))

(assert (=> b!4472277 m!5180885))

(declare-fun m!5180887 () Bool)

(assert (=> b!4472277 m!5180887))

(assert (=> b!4472277 m!5180857))

(assert (=> b!4472277 m!5180857))

(declare-fun m!5180889 () Bool)

(assert (=> b!4472277 m!5180889))

(declare-fun m!5180891 () Bool)

(assert (=> b!4472274 m!5180891))

(assert (=> b!4472270 m!5180845))

(assert (=> b!4472270 m!5180845))

(assert (=> b!4472270 m!5180847))

(assert (=> b!4472270 m!5180843))

(declare-fun m!5180895 () Bool)

(assert (=> b!4472270 m!5180895))

(declare-fun m!5180901 () Bool)

(assert (=> bm!311403 m!5180901))

(assert (=> d!1364509 d!1364763))

(declare-fun bs!796787 () Bool)

(declare-fun b!4472293 () Bool)

(assert (= bs!796787 (and b!4472293 d!1364389)))

(declare-fun lambda!163834 () Int)

(assert (=> bs!796787 (not (= lambda!163834 lambda!163644))))

(declare-fun bs!796788 () Bool)

(assert (= bs!796788 (and b!4472293 d!1364667)))

(assert (=> bs!796788 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660279) (= lambda!163834 lambda!163791))))

(declare-fun bs!796789 () Bool)

(assert (= bs!796789 (and b!4472293 b!4472076)))

(assert (=> bs!796789 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660288) (= lambda!163834 lambda!163790))))

(declare-fun bs!796790 () Bool)

(assert (= bs!796790 (and b!4472293 b!4472109)))

(assert (=> bs!796790 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660339) (= lambda!163834 lambda!163800))))

(assert (=> bs!796790 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163834 lambda!163799))))

(declare-fun bs!796791 () Bool)

(assert (= bs!796791 (and b!4472293 d!1364741)))

(assert (=> bs!796791 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660330) (= lambda!163834 lambda!163802))))

(assert (=> bs!796789 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163834 lambda!163788))))

(declare-fun bs!796792 () Bool)

(assert (= bs!796792 (and b!4472293 b!4472075)))

(assert (=> bs!796792 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163834 lambda!163787))))

(declare-fun bs!796793 () Bool)

(assert (= bs!796793 (and b!4472293 b!4472108)))

(assert (=> bs!796793 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163834 lambda!163798))))

(assert (=> b!4472293 true))

(declare-fun bs!796794 () Bool)

(declare-fun b!4472294 () Bool)

(assert (= bs!796794 (and b!4472294 d!1364389)))

(declare-fun lambda!163835 () Int)

(assert (=> bs!796794 (not (= lambda!163835 lambda!163644))))

(declare-fun bs!796795 () Bool)

(assert (= bs!796795 (and b!4472294 d!1364667)))

(assert (=> bs!796795 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660279) (= lambda!163835 lambda!163791))))

(declare-fun bs!796796 () Bool)

(assert (= bs!796796 (and b!4472294 b!4472293)))

(assert (=> bs!796796 (= lambda!163835 lambda!163834)))

(declare-fun bs!796797 () Bool)

(assert (= bs!796797 (and b!4472294 b!4472076)))

(assert (=> bs!796797 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660288) (= lambda!163835 lambda!163790))))

(declare-fun bs!796798 () Bool)

(assert (= bs!796798 (and b!4472294 b!4472109)))

(assert (=> bs!796798 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660339) (= lambda!163835 lambda!163800))))

(assert (=> bs!796798 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163835 lambda!163799))))

(declare-fun bs!796799 () Bool)

(assert (= bs!796799 (and b!4472294 d!1364741)))

(assert (=> bs!796799 (= (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660330) (= lambda!163835 lambda!163802))))

(assert (=> bs!796797 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163835 lambda!163788))))

(declare-fun bs!796800 () Bool)

(assert (= bs!796800 (and b!4472294 b!4472075)))

(assert (=> bs!796800 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163835 lambda!163787))))

(declare-fun bs!796801 () Bool)

(assert (= bs!796801 (and b!4472294 b!4472108)))

(assert (=> bs!796801 (= (= (extractMap!1090 (t!357385 lt!1659816)) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163835 lambda!163798))))

(assert (=> b!4472294 true))

(declare-fun lambda!163836 () Int)

(assert (=> bs!796794 (not (= lambda!163836 lambda!163644))))

(declare-fun lt!1660485 () ListMap!3337)

(assert (=> bs!796795 (= (= lt!1660485 lt!1660279) (= lambda!163836 lambda!163791))))

(assert (=> bs!796796 (= (= lt!1660485 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163836 lambda!163834))))

(assert (=> b!4472294 (= (= lt!1660485 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163836 lambda!163835))))

(assert (=> bs!796797 (= (= lt!1660485 lt!1660288) (= lambda!163836 lambda!163790))))

(assert (=> bs!796798 (= (= lt!1660485 lt!1660339) (= lambda!163836 lambda!163800))))

(assert (=> bs!796798 (= (= lt!1660485 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163836 lambda!163799))))

(assert (=> bs!796799 (= (= lt!1660485 lt!1660330) (= lambda!163836 lambda!163802))))

(assert (=> bs!796797 (= (= lt!1660485 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163836 lambda!163788))))

(assert (=> bs!796800 (= (= lt!1660485 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163836 lambda!163787))))

(assert (=> bs!796801 (= (= lt!1660485 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163836 lambda!163798))))

(assert (=> b!4472294 true))

(declare-fun bs!796802 () Bool)

(declare-fun d!1364819 () Bool)

(assert (= bs!796802 (and d!1364819 d!1364389)))

(declare-fun lambda!163837 () Int)

(assert (=> bs!796802 (not (= lambda!163837 lambda!163644))))

(declare-fun bs!796803 () Bool)

(assert (= bs!796803 (and d!1364819 d!1364667)))

(declare-fun lt!1660476 () ListMap!3337)

(assert (=> bs!796803 (= (= lt!1660476 lt!1660279) (= lambda!163837 lambda!163791))))

(declare-fun bs!796804 () Bool)

(assert (= bs!796804 (and d!1364819 b!4472293)))

(assert (=> bs!796804 (= (= lt!1660476 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163837 lambda!163834))))

(declare-fun bs!796805 () Bool)

(assert (= bs!796805 (and d!1364819 b!4472294)))

(assert (=> bs!796805 (= (= lt!1660476 lt!1660485) (= lambda!163837 lambda!163836))))

(assert (=> bs!796805 (= (= lt!1660476 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163837 lambda!163835))))

(declare-fun bs!796806 () Bool)

(assert (= bs!796806 (and d!1364819 b!4472076)))

(assert (=> bs!796806 (= (= lt!1660476 lt!1660288) (= lambda!163837 lambda!163790))))

(declare-fun bs!796807 () Bool)

(assert (= bs!796807 (and d!1364819 b!4472109)))

(assert (=> bs!796807 (= (= lt!1660476 lt!1660339) (= lambda!163837 lambda!163800))))

(assert (=> bs!796807 (= (= lt!1660476 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163837 lambda!163799))))

(declare-fun bs!796808 () Bool)

(assert (= bs!796808 (and d!1364819 d!1364741)))

(assert (=> bs!796808 (= (= lt!1660476 lt!1660330) (= lambda!163837 lambda!163802))))

(assert (=> bs!796806 (= (= lt!1660476 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163837 lambda!163788))))

(declare-fun bs!796809 () Bool)

(assert (= bs!796809 (and d!1364819 b!4472075)))

(assert (=> bs!796809 (= (= lt!1660476 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163837 lambda!163787))))

(declare-fun bs!796810 () Bool)

(assert (= bs!796810 (and d!1364819 b!4472108)))

(assert (=> bs!796810 (= (= lt!1660476 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163837 lambda!163798))))

(assert (=> d!1364819 true))

(declare-fun b!4472290 () Bool)

(declare-fun e!2784959 () Bool)

(assert (=> b!4472290 (= e!2784959 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 lt!1659816))) lambda!163836))))

(declare-fun b!4472291 () Bool)

(declare-fun e!2784960 () Bool)

(assert (=> b!4472291 (= e!2784960 (invariantList!933 (toList!4076 lt!1660476)))))

(assert (=> d!1364819 e!2784960))

(declare-fun res!1855704 () Bool)

(assert (=> d!1364819 (=> (not res!1855704) (not e!2784960))))

(assert (=> d!1364819 (= res!1855704 (forall!10009 (_2!28580 (h!56080 lt!1659816)) lambda!163837))))

(declare-fun e!2784958 () ListMap!3337)

(assert (=> d!1364819 (= lt!1660476 e!2784958)))

(declare-fun c!761514 () Bool)

(assert (=> d!1364819 (= c!761514 ((_ is Nil!50310) (_2!28580 (h!56080 lt!1659816))))))

(assert (=> d!1364819 (noDuplicateKeys!1034 (_2!28580 (h!56080 lt!1659816)))))

(assert (=> d!1364819 (= (addToMapMapFromBucket!595 (_2!28580 (h!56080 lt!1659816)) (extractMap!1090 (t!357385 lt!1659816))) lt!1660476)))

(declare-fun call!311411 () Bool)

(declare-fun bm!311404 () Bool)

(assert (=> bm!311404 (= call!311411 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 lt!1659816))) (ite c!761514 lambda!163834 lambda!163836)))))

(declare-fun bm!311405 () Bool)

(declare-fun call!311410 () Unit!88025)

(assert (=> bm!311405 (= call!311410 (lemmaContainsAllItsOwnKeys!271 (extractMap!1090 (t!357385 lt!1659816))))))

(declare-fun b!4472292 () Bool)

(declare-fun res!1855702 () Bool)

(assert (=> b!4472292 (=> (not res!1855702) (not e!2784960))))

(assert (=> b!4472292 (= res!1855702 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 lt!1659816))) lambda!163837))))

(assert (=> b!4472293 (= e!2784958 (extractMap!1090 (t!357385 lt!1659816)))))

(declare-fun lt!1660482 () Unit!88025)

(assert (=> b!4472293 (= lt!1660482 call!311410)))

(assert (=> b!4472293 call!311411))

(declare-fun lt!1660473 () Unit!88025)

(assert (=> b!4472293 (= lt!1660473 lt!1660482)))

(declare-fun call!311409 () Bool)

(assert (=> b!4472293 call!311409))

(declare-fun lt!1660472 () Unit!88025)

(declare-fun Unit!88137 () Unit!88025)

(assert (=> b!4472293 (= lt!1660472 Unit!88137)))

(declare-fun bm!311406 () Bool)

(assert (=> bm!311406 (= call!311409 (forall!10009 (ite c!761514 (toList!4076 (extractMap!1090 (t!357385 lt!1659816))) (_2!28580 (h!56080 lt!1659816))) (ite c!761514 lambda!163834 lambda!163836)))))

(assert (=> b!4472294 (= e!2784958 lt!1660485)))

(declare-fun lt!1660487 () ListMap!3337)

(assert (=> b!4472294 (= lt!1660487 (+!1382 (extractMap!1090 (t!357385 lt!1659816)) (h!56079 (_2!28580 (h!56080 lt!1659816)))))))

(assert (=> b!4472294 (= lt!1660485 (addToMapMapFromBucket!595 (t!357384 (_2!28580 (h!56080 lt!1659816))) (+!1382 (extractMap!1090 (t!357385 lt!1659816)) (h!56079 (_2!28580 (h!56080 lt!1659816))))))))

(declare-fun lt!1660484 () Unit!88025)

(assert (=> b!4472294 (= lt!1660484 call!311410)))

(assert (=> b!4472294 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 lt!1659816))) lambda!163835)))

(declare-fun lt!1660475 () Unit!88025)

(assert (=> b!4472294 (= lt!1660475 lt!1660484)))

(assert (=> b!4472294 (forall!10009 (toList!4076 lt!1660487) lambda!163836)))

(declare-fun lt!1660470 () Unit!88025)

(declare-fun Unit!88138 () Unit!88025)

(assert (=> b!4472294 (= lt!1660470 Unit!88138)))

(assert (=> b!4472294 (forall!10009 (t!357384 (_2!28580 (h!56080 lt!1659816))) lambda!163836)))

(declare-fun lt!1660488 () Unit!88025)

(declare-fun Unit!88139 () Unit!88025)

(assert (=> b!4472294 (= lt!1660488 Unit!88139)))

(declare-fun lt!1660471 () Unit!88025)

(declare-fun Unit!88140 () Unit!88025)

(assert (=> b!4472294 (= lt!1660471 Unit!88140)))

(declare-fun lt!1660481 () Unit!88025)

(assert (=> b!4472294 (= lt!1660481 (forallContained!2278 (toList!4076 lt!1660487) lambda!163836 (h!56079 (_2!28580 (h!56080 lt!1659816)))))))

(assert (=> b!4472294 (contains!12873 lt!1660487 (_1!28579 (h!56079 (_2!28580 (h!56080 lt!1659816)))))))

(declare-fun lt!1660479 () Unit!88025)

(declare-fun Unit!88141 () Unit!88025)

(assert (=> b!4472294 (= lt!1660479 Unit!88141)))

(assert (=> b!4472294 (contains!12873 lt!1660485 (_1!28579 (h!56079 (_2!28580 (h!56080 lt!1659816)))))))

(declare-fun lt!1660469 () Unit!88025)

(declare-fun Unit!88142 () Unit!88025)

(assert (=> b!4472294 (= lt!1660469 Unit!88142)))

(assert (=> b!4472294 call!311409))

(declare-fun lt!1660489 () Unit!88025)

(declare-fun Unit!88143 () Unit!88025)

(assert (=> b!4472294 (= lt!1660489 Unit!88143)))

(assert (=> b!4472294 (forall!10009 (toList!4076 lt!1660487) lambda!163836)))

(declare-fun lt!1660474 () Unit!88025)

(declare-fun Unit!88144 () Unit!88025)

(assert (=> b!4472294 (= lt!1660474 Unit!88144)))

(declare-fun lt!1660480 () Unit!88025)

(declare-fun Unit!88145 () Unit!88025)

(assert (=> b!4472294 (= lt!1660480 Unit!88145)))

(declare-fun lt!1660483 () Unit!88025)

(assert (=> b!4472294 (= lt!1660483 (addForallContainsKeyThenBeforeAdding!270 (extractMap!1090 (t!357385 lt!1659816)) lt!1660485 (_1!28579 (h!56079 (_2!28580 (h!56080 lt!1659816)))) (_2!28579 (h!56079 (_2!28580 (h!56080 lt!1659816))))))))

(assert (=> b!4472294 call!311411))

(declare-fun lt!1660478 () Unit!88025)

(assert (=> b!4472294 (= lt!1660478 lt!1660483)))

(assert (=> b!4472294 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 lt!1659816))) lambda!163836)))

(declare-fun lt!1660486 () Unit!88025)

(declare-fun Unit!88146 () Unit!88025)

(assert (=> b!4472294 (= lt!1660486 Unit!88146)))

(declare-fun res!1855703 () Bool)

(assert (=> b!4472294 (= res!1855703 (forall!10009 (_2!28580 (h!56080 lt!1659816)) lambda!163836))))

(assert (=> b!4472294 (=> (not res!1855703) (not e!2784959))))

(assert (=> b!4472294 e!2784959))

(declare-fun lt!1660477 () Unit!88025)

(declare-fun Unit!88147 () Unit!88025)

(assert (=> b!4472294 (= lt!1660477 Unit!88147)))

(assert (= (and d!1364819 c!761514) b!4472293))

(assert (= (and d!1364819 (not c!761514)) b!4472294))

(assert (= (and b!4472294 res!1855703) b!4472290))

(assert (= (or b!4472293 b!4472294) bm!311404))

(assert (= (or b!4472293 b!4472294) bm!311406))

(assert (= (or b!4472293 b!4472294) bm!311405))

(assert (= (and d!1364819 res!1855704) b!4472292))

(assert (= (and b!4472292 res!1855702) b!4472291))

(declare-fun m!5180935 () Bool)

(assert (=> b!4472294 m!5180935))

(declare-fun m!5180937 () Bool)

(assert (=> b!4472294 m!5180937))

(declare-fun m!5180939 () Bool)

(assert (=> b!4472294 m!5180939))

(declare-fun m!5180941 () Bool)

(assert (=> b!4472294 m!5180941))

(declare-fun m!5180943 () Bool)

(assert (=> b!4472294 m!5180943))

(declare-fun m!5180945 () Bool)

(assert (=> b!4472294 m!5180945))

(assert (=> b!4472294 m!5179861))

(assert (=> b!4472294 m!5180935))

(declare-fun m!5180947 () Bool)

(assert (=> b!4472294 m!5180947))

(assert (=> b!4472294 m!5179861))

(declare-fun m!5180949 () Bool)

(assert (=> b!4472294 m!5180949))

(declare-fun m!5180951 () Bool)

(assert (=> b!4472294 m!5180951))

(declare-fun m!5180953 () Bool)

(assert (=> b!4472294 m!5180953))

(assert (=> b!4472294 m!5180953))

(declare-fun m!5180955 () Bool)

(assert (=> b!4472294 m!5180955))

(assert (=> bm!311405 m!5179861))

(declare-fun m!5180957 () Bool)

(assert (=> bm!311405 m!5180957))

(declare-fun m!5180959 () Bool)

(assert (=> bm!311406 m!5180959))

(declare-fun m!5180961 () Bool)

(assert (=> b!4472292 m!5180961))

(assert (=> b!4472290 m!5180951))

(declare-fun m!5180963 () Bool)

(assert (=> b!4472291 m!5180963))

(declare-fun m!5180965 () Bool)

(assert (=> bm!311404 m!5180965))

(declare-fun m!5180967 () Bool)

(assert (=> d!1364819 m!5180967))

(declare-fun m!5180969 () Bool)

(assert (=> d!1364819 m!5180969))

(assert (=> b!4471670 d!1364819))

(declare-fun bs!796811 () Bool)

(declare-fun d!1364831 () Bool)

(assert (= bs!796811 (and d!1364831 d!1364505)))

(declare-fun lambda!163838 () Int)

(assert (=> bs!796811 (= lambda!163838 lambda!163684)))

(declare-fun bs!796812 () Bool)

(assert (= bs!796812 (and d!1364831 d!1364511)))

(assert (=> bs!796812 (= lambda!163838 lambda!163687)))

(declare-fun bs!796813 () Bool)

(assert (= bs!796813 (and d!1364831 d!1364503)))

(assert (=> bs!796813 (= lambda!163838 lambda!163683)))

(declare-fun bs!796814 () Bool)

(assert (= bs!796814 (and d!1364831 d!1364527)))

(assert (=> bs!796814 (= lambda!163838 lambda!163689)))

(declare-fun bs!796815 () Bool)

(assert (= bs!796815 (and d!1364831 d!1364729)))

(assert (=> bs!796815 (= lambda!163838 lambda!163797)))

(declare-fun bs!796816 () Bool)

(assert (= bs!796816 (and d!1364831 d!1364707)))

(assert (=> bs!796816 (= lambda!163838 lambda!163793)))

(declare-fun bs!796817 () Bool)

(assert (= bs!796817 (and d!1364831 d!1364521)))

(assert (=> bs!796817 (= lambda!163838 lambda!163688)))

(declare-fun bs!796818 () Bool)

(assert (= bs!796818 (and d!1364831 d!1364393)))

(assert (=> bs!796818 (not (= lambda!163838 lambda!163647))))

(declare-fun bs!796819 () Bool)

(assert (= bs!796819 (and d!1364831 d!1364423)))

(assert (=> bs!796819 (= lambda!163838 lambda!163668)))

(declare-fun bs!796820 () Bool)

(assert (= bs!796820 (and d!1364831 d!1364409)))

(assert (=> bs!796820 (= lambda!163838 lambda!163663)))

(declare-fun bs!796821 () Bool)

(assert (= bs!796821 (and d!1364831 d!1364467)))

(assert (=> bs!796821 (= lambda!163838 lambda!163674)))

(declare-fun bs!796822 () Bool)

(assert (= bs!796822 (and d!1364831 d!1364395)))

(assert (=> bs!796822 (= lambda!163838 lambda!163653)))

(declare-fun bs!796823 () Bool)

(assert (= bs!796823 (and d!1364831 d!1364581)))

(assert (=> bs!796823 (= lambda!163838 lambda!163690)))

(declare-fun bs!796824 () Bool)

(assert (= bs!796824 (and d!1364831 d!1364745)))

(assert (=> bs!796824 (= lambda!163838 lambda!163804)))

(declare-fun bs!796825 () Bool)

(assert (= bs!796825 (and d!1364831 d!1364421)))

(assert (=> bs!796825 (= lambda!163838 lambda!163664)))

(declare-fun bs!796826 () Bool)

(assert (= bs!796826 (and d!1364831 start!439496)))

(assert (=> bs!796826 (= lambda!163838 lambda!163641)))

(declare-fun lt!1660492 () ListMap!3337)

(assert (=> d!1364831 (invariantList!933 (toList!4076 lt!1660492))))

(declare-fun e!2784967 () ListMap!3337)

(assert (=> d!1364831 (= lt!1660492 e!2784967)))

(declare-fun c!761517 () Bool)

(assert (=> d!1364831 (= c!761517 ((_ is Cons!50311) (t!357385 lt!1659816)))))

(assert (=> d!1364831 (forall!10008 (t!357385 lt!1659816) lambda!163838)))

(assert (=> d!1364831 (= (extractMap!1090 (t!357385 lt!1659816)) lt!1660492)))

(declare-fun b!4472303 () Bool)

(assert (=> b!4472303 (= e!2784967 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 lt!1659816))) (extractMap!1090 (t!357385 (t!357385 lt!1659816)))))))

(declare-fun b!4472304 () Bool)

(assert (=> b!4472304 (= e!2784967 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364831 c!761517) b!4472303))

(assert (= (and d!1364831 (not c!761517)) b!4472304))

(declare-fun m!5180971 () Bool)

(assert (=> d!1364831 m!5180971))

(declare-fun m!5180973 () Bool)

(assert (=> d!1364831 m!5180973))

(declare-fun m!5180975 () Bool)

(assert (=> b!4472303 m!5180975))

(assert (=> b!4472303 m!5180975))

(declare-fun m!5180977 () Bool)

(assert (=> b!4472303 m!5180977))

(assert (=> b!4471670 d!1364831))

(assert (=> d!1364533 d!1364605))

(declare-fun d!1364833 () Bool)

(declare-fun lt!1660493 () Bool)

(assert (=> d!1364833 (= lt!1660493 (select (content!8120 (toList!4075 lt!1660009)) lt!1659810))))

(declare-fun e!2784969 () Bool)

(assert (=> d!1364833 (= lt!1660493 e!2784969)))

(declare-fun res!1855709 () Bool)

(assert (=> d!1364833 (=> (not res!1855709) (not e!2784969))))

(assert (=> d!1364833 (= res!1855709 ((_ is Cons!50311) (toList!4075 lt!1660009)))))

(assert (=> d!1364833 (= (contains!12875 (toList!4075 lt!1660009) lt!1659810) lt!1660493)))

(declare-fun b!4472305 () Bool)

(declare-fun e!2784968 () Bool)

(assert (=> b!4472305 (= e!2784969 e!2784968)))

(declare-fun res!1855710 () Bool)

(assert (=> b!4472305 (=> res!1855710 e!2784968)))

(assert (=> b!4472305 (= res!1855710 (= (h!56080 (toList!4075 lt!1660009)) lt!1659810))))

(declare-fun b!4472306 () Bool)

(assert (=> b!4472306 (= e!2784968 (contains!12875 (t!357385 (toList!4075 lt!1660009)) lt!1659810))))

(assert (= (and d!1364833 res!1855709) b!4472305))

(assert (= (and b!4472305 (not res!1855710)) b!4472306))

(declare-fun m!5180979 () Bool)

(assert (=> d!1364833 m!5180979))

(declare-fun m!5180981 () Bool)

(assert (=> d!1364833 m!5180981))

(declare-fun m!5180983 () Bool)

(assert (=> b!4472306 m!5180983))

(assert (=> b!4471703 d!1364833))

(declare-fun d!1364835 () Bool)

(declare-fun res!1855711 () Bool)

(declare-fun e!2784970 () Bool)

(assert (=> d!1364835 (=> res!1855711 e!2784970)))

(assert (=> d!1364835 (= res!1855711 (and ((_ is Cons!50310) (t!357384 newBucket!178)) (= (_1!28579 (h!56079 (t!357384 newBucket!178))) (_1!28579 (h!56079 newBucket!178)))))))

(assert (=> d!1364835 (= (containsKey!1490 (t!357384 newBucket!178) (_1!28579 (h!56079 newBucket!178))) e!2784970)))

(declare-fun b!4472307 () Bool)

(declare-fun e!2784971 () Bool)

(assert (=> b!4472307 (= e!2784970 e!2784971)))

(declare-fun res!1855712 () Bool)

(assert (=> b!4472307 (=> (not res!1855712) (not e!2784971))))

(assert (=> b!4472307 (= res!1855712 ((_ is Cons!50310) (t!357384 newBucket!178)))))

(declare-fun b!4472308 () Bool)

(assert (=> b!4472308 (= e!2784971 (containsKey!1490 (t!357384 (t!357384 newBucket!178)) (_1!28579 (h!56079 newBucket!178))))))

(assert (= (and d!1364835 (not res!1855711)) b!4472307))

(assert (= (and b!4472307 res!1855712) b!4472308))

(declare-fun m!5180985 () Bool)

(assert (=> b!4472308 m!5180985))

(assert (=> b!4471458 d!1364835))

(declare-fun d!1364837 () Bool)

(assert (=> d!1364837 (= (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287)) (not (isEmpty!28502 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))))

(declare-fun bs!796827 () Bool)

(assert (= bs!796827 d!1364837))

(assert (=> bs!796827 m!5179951))

(declare-fun m!5180987 () Bool)

(assert (=> bs!796827 m!5180987))

(assert (=> b!4471707 d!1364837))

(declare-fun b!4472309 () Bool)

(declare-fun e!2784972 () Option!10939)

(assert (=> b!4472309 (= e!2784972 (Some!10938 (_2!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))))))

(declare-fun b!4472312 () Bool)

(declare-fun e!2784973 () Option!10939)

(assert (=> b!4472312 (= e!2784973 None!10938)))

(declare-fun b!4472310 () Bool)

(assert (=> b!4472310 (= e!2784972 e!2784973)))

(declare-fun c!761519 () Bool)

(assert (=> b!4472310 (= c!761519 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (not (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) key!3287))))))

(declare-fun d!1364839 () Bool)

(declare-fun c!761518 () Bool)

(assert (=> d!1364839 (= c!761518 (and ((_ is Cons!50310) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= (_1!28579 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) key!3287)))))

(assert (=> d!1364839 (= (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287) e!2784972)))

(declare-fun b!4472311 () Bool)

(assert (=> b!4472311 (= e!2784973 (getValueByKey!925 (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) key!3287))))

(assert (= (and d!1364839 c!761518) b!4472309))

(assert (= (and d!1364839 (not c!761518)) b!4472310))

(assert (= (and b!4472310 c!761519) b!4472311))

(assert (= (and b!4472310 (not c!761519)) b!4472312))

(declare-fun m!5180989 () Bool)

(assert (=> b!4472311 m!5180989))

(assert (=> b!4471707 d!1364839))

(declare-fun d!1364841 () Bool)

(declare-fun lt!1660494 () Bool)

(assert (=> d!1364841 (= lt!1660494 (select (content!8121 e!2784621) key!3287))))

(declare-fun e!2784975 () Bool)

(assert (=> d!1364841 (= lt!1660494 e!2784975)))

(declare-fun res!1855714 () Bool)

(assert (=> d!1364841 (=> (not res!1855714) (not e!2784975))))

(assert (=> d!1364841 (= res!1855714 ((_ is Cons!50313) e!2784621))))

(assert (=> d!1364841 (= (contains!12877 e!2784621 key!3287) lt!1660494)))

(declare-fun b!4472313 () Bool)

(declare-fun e!2784974 () Bool)

(assert (=> b!4472313 (= e!2784975 e!2784974)))

(declare-fun res!1855713 () Bool)

(assert (=> b!4472313 (=> res!1855713 e!2784974)))

(assert (=> b!4472313 (= res!1855713 (= (h!56084 e!2784621) key!3287))))

(declare-fun b!4472314 () Bool)

(assert (=> b!4472314 (= e!2784974 (contains!12877 (t!357387 e!2784621) key!3287))))

(assert (= (and d!1364841 res!1855714) b!4472313))

(assert (= (and b!4472313 (not res!1855713)) b!4472314))

(declare-fun m!5180991 () Bool)

(assert (=> d!1364841 m!5180991))

(declare-fun m!5180993 () Bool)

(assert (=> d!1364841 m!5180993))

(declare-fun m!5180995 () Bool)

(assert (=> b!4472314 m!5180995))

(assert (=> bm!311341 d!1364841))

(declare-fun bs!796828 () Bool)

(declare-fun b!4472318 () Bool)

(assert (= bs!796828 (and b!4472318 d!1364389)))

(declare-fun lambda!163839 () Int)

(assert (=> bs!796828 (not (= lambda!163839 lambda!163644))))

(declare-fun bs!796829 () Bool)

(assert (= bs!796829 (and b!4472318 d!1364667)))

(assert (=> bs!796829 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660279) (= lambda!163839 lambda!163791))))

(declare-fun bs!796830 () Bool)

(assert (= bs!796830 (and b!4472318 b!4472293)))

(assert (=> bs!796830 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163839 lambda!163834))))

(declare-fun bs!796831 () Bool)

(assert (= bs!796831 (and b!4472318 b!4472294)))

(assert (=> bs!796831 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660485) (= lambda!163839 lambda!163836))))

(assert (=> bs!796831 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163839 lambda!163835))))

(declare-fun bs!796832 () Bool)

(assert (= bs!796832 (and b!4472318 b!4472076)))

(assert (=> bs!796832 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660288) (= lambda!163839 lambda!163790))))

(declare-fun bs!796833 () Bool)

(assert (= bs!796833 (and b!4472318 d!1364819)))

(assert (=> bs!796833 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660476) (= lambda!163839 lambda!163837))))

(declare-fun bs!796834 () Bool)

(assert (= bs!796834 (and b!4472318 b!4472109)))

(assert (=> bs!796834 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660339) (= lambda!163839 lambda!163800))))

(assert (=> bs!796834 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163839 lambda!163799))))

(declare-fun bs!796835 () Bool)

(assert (= bs!796835 (and b!4472318 d!1364741)))

(assert (=> bs!796835 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660330) (= lambda!163839 lambda!163802))))

(assert (=> bs!796832 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163839 lambda!163788))))

(declare-fun bs!796836 () Bool)

(assert (= bs!796836 (and b!4472318 b!4472075)))

(assert (=> bs!796836 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163839 lambda!163787))))

(declare-fun bs!796837 () Bool)

(assert (= bs!796837 (and b!4472318 b!4472108)))

(assert (=> bs!796837 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163839 lambda!163798))))

(assert (=> b!4472318 true))

(declare-fun bs!796838 () Bool)

(declare-fun b!4472319 () Bool)

(assert (= bs!796838 (and b!4472319 d!1364389)))

(declare-fun lambda!163840 () Int)

(assert (=> bs!796838 (not (= lambda!163840 lambda!163644))))

(declare-fun bs!796839 () Bool)

(assert (= bs!796839 (and b!4472319 d!1364667)))

(assert (=> bs!796839 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660279) (= lambda!163840 lambda!163791))))

(declare-fun bs!796840 () Bool)

(assert (= bs!796840 (and b!4472319 b!4472293)))

(assert (=> bs!796840 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163840 lambda!163834))))

(declare-fun bs!796842 () Bool)

(assert (= bs!796842 (and b!4472319 b!4472294)))

(assert (=> bs!796842 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163840 lambda!163835))))

(declare-fun bs!796843 () Bool)

(assert (= bs!796843 (and b!4472319 b!4472076)))

(assert (=> bs!796843 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660288) (= lambda!163840 lambda!163790))))

(declare-fun bs!796844 () Bool)

(assert (= bs!796844 (and b!4472319 d!1364819)))

(assert (=> bs!796844 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660476) (= lambda!163840 lambda!163837))))

(declare-fun bs!796845 () Bool)

(assert (= bs!796845 (and b!4472319 b!4472318)))

(assert (=> bs!796845 (= lambda!163840 lambda!163839)))

(assert (=> bs!796842 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660485) (= lambda!163840 lambda!163836))))

(declare-fun bs!796846 () Bool)

(assert (= bs!796846 (and b!4472319 b!4472109)))

(assert (=> bs!796846 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660339) (= lambda!163840 lambda!163800))))

(assert (=> bs!796846 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163840 lambda!163799))))

(declare-fun bs!796847 () Bool)

(assert (= bs!796847 (and b!4472319 d!1364741)))

(assert (=> bs!796847 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660330) (= lambda!163840 lambda!163802))))

(assert (=> bs!796843 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163840 lambda!163788))))

(declare-fun bs!796848 () Bool)

(assert (= bs!796848 (and b!4472319 b!4472075)))

(assert (=> bs!796848 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163840 lambda!163787))))

(declare-fun bs!796849 () Bool)

(assert (= bs!796849 (and b!4472319 b!4472108)))

(assert (=> bs!796849 (= (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163840 lambda!163798))))

(assert (=> b!4472319 true))

(declare-fun lambda!163841 () Int)

(assert (=> bs!796838 (not (= lambda!163841 lambda!163644))))

(declare-fun lt!1660511 () ListMap!3337)

(assert (=> bs!796839 (= (= lt!1660511 lt!1660279) (= lambda!163841 lambda!163791))))

(assert (=> bs!796840 (= (= lt!1660511 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163841 lambda!163834))))

(assert (=> bs!796842 (= (= lt!1660511 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163841 lambda!163835))))

(assert (=> bs!796843 (= (= lt!1660511 lt!1660288) (= lambda!163841 lambda!163790))))

(assert (=> bs!796845 (= (= lt!1660511 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163841 lambda!163839))))

(assert (=> bs!796842 (= (= lt!1660511 lt!1660485) (= lambda!163841 lambda!163836))))

(assert (=> bs!796846 (= (= lt!1660511 lt!1660339) (= lambda!163841 lambda!163800))))

(assert (=> bs!796846 (= (= lt!1660511 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163841 lambda!163799))))

(assert (=> bs!796847 (= (= lt!1660511 lt!1660330) (= lambda!163841 lambda!163802))))

(assert (=> bs!796843 (= (= lt!1660511 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163841 lambda!163788))))

(assert (=> bs!796848 (= (= lt!1660511 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163841 lambda!163787))))

(assert (=> bs!796849 (= (= lt!1660511 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163841 lambda!163798))))

(assert (=> bs!796844 (= (= lt!1660511 lt!1660476) (= lambda!163841 lambda!163837))))

(assert (=> b!4472319 (= (= lt!1660511 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163841 lambda!163840))))

(assert (=> b!4472319 true))

(declare-fun bs!796866 () Bool)

(declare-fun d!1364843 () Bool)

(assert (= bs!796866 (and d!1364843 d!1364389)))

(declare-fun lambda!163843 () Int)

(assert (=> bs!796866 (not (= lambda!163843 lambda!163644))))

(declare-fun bs!796867 () Bool)

(assert (= bs!796867 (and d!1364843 d!1364667)))

(declare-fun lt!1660502 () ListMap!3337)

(assert (=> bs!796867 (= (= lt!1660502 lt!1660279) (= lambda!163843 lambda!163791))))

(declare-fun bs!796868 () Bool)

(assert (= bs!796868 (and d!1364843 b!4472293)))

(assert (=> bs!796868 (= (= lt!1660502 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163843 lambda!163834))))

(declare-fun bs!796869 () Bool)

(assert (= bs!796869 (and d!1364843 b!4472294)))

(assert (=> bs!796869 (= (= lt!1660502 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163843 lambda!163835))))

(declare-fun bs!796870 () Bool)

(assert (= bs!796870 (and d!1364843 b!4472318)))

(assert (=> bs!796870 (= (= lt!1660502 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163843 lambda!163839))))

(assert (=> bs!796869 (= (= lt!1660502 lt!1660485) (= lambda!163843 lambda!163836))))

(declare-fun bs!796872 () Bool)

(assert (= bs!796872 (and d!1364843 b!4472319)))

(assert (=> bs!796872 (= (= lt!1660502 lt!1660511) (= lambda!163843 lambda!163841))))

(declare-fun bs!796873 () Bool)

(assert (= bs!796873 (and d!1364843 b!4472076)))

(assert (=> bs!796873 (= (= lt!1660502 lt!1660288) (= lambda!163843 lambda!163790))))

(declare-fun bs!796874 () Bool)

(assert (= bs!796874 (and d!1364843 b!4472109)))

(assert (=> bs!796874 (= (= lt!1660502 lt!1660339) (= lambda!163843 lambda!163800))))

(assert (=> bs!796874 (= (= lt!1660502 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163843 lambda!163799))))

(declare-fun bs!796875 () Bool)

(assert (= bs!796875 (and d!1364843 d!1364741)))

(assert (=> bs!796875 (= (= lt!1660502 lt!1660330) (= lambda!163843 lambda!163802))))

(assert (=> bs!796873 (= (= lt!1660502 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163843 lambda!163788))))

(declare-fun bs!796876 () Bool)

(assert (= bs!796876 (and d!1364843 b!4472075)))

(assert (=> bs!796876 (= (= lt!1660502 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163843 lambda!163787))))

(declare-fun bs!796877 () Bool)

(assert (= bs!796877 (and d!1364843 b!4472108)))

(assert (=> bs!796877 (= (= lt!1660502 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163843 lambda!163798))))

(declare-fun bs!796878 () Bool)

(assert (= bs!796878 (and d!1364843 d!1364819)))

(assert (=> bs!796878 (= (= lt!1660502 lt!1660476) (= lambda!163843 lambda!163837))))

(assert (=> bs!796872 (= (= lt!1660502 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163843 lambda!163840))))

(assert (=> d!1364843 true))

(declare-fun b!4472315 () Bool)

(declare-fun e!2784977 () Bool)

(assert (=> b!4472315 (= e!2784977 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) lambda!163841))))

(declare-fun b!4472316 () Bool)

(declare-fun e!2784978 () Bool)

(assert (=> b!4472316 (= e!2784978 (invariantList!933 (toList!4076 lt!1660502)))))

(assert (=> d!1364843 e!2784978))

(declare-fun res!1855717 () Bool)

(assert (=> d!1364843 (=> (not res!1855717) (not e!2784978))))

(assert (=> d!1364843 (= res!1855717 (forall!10009 (_2!28580 (h!56080 (toList!4075 lt!1659812))) lambda!163843))))

(declare-fun e!2784976 () ListMap!3337)

(assert (=> d!1364843 (= lt!1660502 e!2784976)))

(declare-fun c!761520 () Bool)

(assert (=> d!1364843 (= c!761520 ((_ is Nil!50310) (_2!28580 (h!56080 (toList!4075 lt!1659812)))))))

(assert (=> d!1364843 (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lt!1659812))))))

(assert (=> d!1364843 (= (addToMapMapFromBucket!595 (_2!28580 (h!56080 (toList!4075 lt!1659812))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) lt!1660502)))

(declare-fun bm!311407 () Bool)

(declare-fun call!311414 () Bool)

(assert (=> bm!311407 (= call!311414 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (ite c!761520 lambda!163839 lambda!163841)))))

(declare-fun bm!311408 () Bool)

(declare-fun call!311413 () Unit!88025)

(assert (=> bm!311408 (= call!311413 (lemmaContainsAllItsOwnKeys!271 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))))))

(declare-fun b!4472317 () Bool)

(declare-fun res!1855715 () Bool)

(assert (=> b!4472317 (=> (not res!1855715) (not e!2784978))))

(assert (=> b!4472317 (= res!1855715 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) lambda!163843))))

(assert (=> b!4472318 (= e!2784976 (extractMap!1090 (t!357385 (toList!4075 lt!1659812))))))

(declare-fun lt!1660508 () Unit!88025)

(assert (=> b!4472318 (= lt!1660508 call!311413)))

(assert (=> b!4472318 call!311414))

(declare-fun lt!1660499 () Unit!88025)

(assert (=> b!4472318 (= lt!1660499 lt!1660508)))

(declare-fun call!311412 () Bool)

(assert (=> b!4472318 call!311412))

(declare-fun lt!1660498 () Unit!88025)

(declare-fun Unit!88149 () Unit!88025)

(assert (=> b!4472318 (= lt!1660498 Unit!88149)))

(declare-fun bm!311409 () Bool)

(assert (=> bm!311409 (= call!311412 (forall!10009 (ite c!761520 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (_2!28580 (h!56080 (toList!4075 lt!1659812)))) (ite c!761520 lambda!163839 lambda!163841)))))

(assert (=> b!4472319 (= e!2784976 lt!1660511)))

(declare-fun lt!1660513 () ListMap!3337)

(assert (=> b!4472319 (= lt!1660513 (+!1382 (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812))))))))

(assert (=> b!4472319 (= lt!1660511 (addToMapMapFromBucket!595 (t!357384 (_2!28580 (h!56080 (toList!4075 lt!1659812)))) (+!1382 (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812)))))))))

(declare-fun lt!1660510 () Unit!88025)

(assert (=> b!4472319 (= lt!1660510 call!311413)))

(assert (=> b!4472319 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) lambda!163840)))

(declare-fun lt!1660501 () Unit!88025)

(assert (=> b!4472319 (= lt!1660501 lt!1660510)))

(assert (=> b!4472319 (forall!10009 (toList!4076 lt!1660513) lambda!163841)))

(declare-fun lt!1660496 () Unit!88025)

(declare-fun Unit!88154 () Unit!88025)

(assert (=> b!4472319 (= lt!1660496 Unit!88154)))

(assert (=> b!4472319 (forall!10009 (t!357384 (_2!28580 (h!56080 (toList!4075 lt!1659812)))) lambda!163841)))

(declare-fun lt!1660514 () Unit!88025)

(declare-fun Unit!88156 () Unit!88025)

(assert (=> b!4472319 (= lt!1660514 Unit!88156)))

(declare-fun lt!1660497 () Unit!88025)

(declare-fun Unit!88158 () Unit!88025)

(assert (=> b!4472319 (= lt!1660497 Unit!88158)))

(declare-fun lt!1660507 () Unit!88025)

(assert (=> b!4472319 (= lt!1660507 (forallContained!2278 (toList!4076 lt!1660513) lambda!163841 (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812))))))))

(assert (=> b!4472319 (contains!12873 lt!1660513 (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812))))))))

(declare-fun lt!1660505 () Unit!88025)

(declare-fun Unit!88160 () Unit!88025)

(assert (=> b!4472319 (= lt!1660505 Unit!88160)))

(assert (=> b!4472319 (contains!12873 lt!1660511 (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812))))))))

(declare-fun lt!1660495 () Unit!88025)

(declare-fun Unit!88161 () Unit!88025)

(assert (=> b!4472319 (= lt!1660495 Unit!88161)))

(assert (=> b!4472319 call!311412))

(declare-fun lt!1660515 () Unit!88025)

(declare-fun Unit!88163 () Unit!88025)

(assert (=> b!4472319 (= lt!1660515 Unit!88163)))

(assert (=> b!4472319 (forall!10009 (toList!4076 lt!1660513) lambda!163841)))

(declare-fun lt!1660500 () Unit!88025)

(declare-fun Unit!88164 () Unit!88025)

(assert (=> b!4472319 (= lt!1660500 Unit!88164)))

(declare-fun lt!1660506 () Unit!88025)

(declare-fun Unit!88165 () Unit!88025)

(assert (=> b!4472319 (= lt!1660506 Unit!88165)))

(declare-fun lt!1660509 () Unit!88025)

(assert (=> b!4472319 (= lt!1660509 (addForallContainsKeyThenBeforeAdding!270 (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660511 (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812))))) (_2!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lt!1659812)))))))))

(assert (=> b!4472319 call!311414))

(declare-fun lt!1660504 () Unit!88025)

(assert (=> b!4472319 (= lt!1660504 lt!1660509)))

(assert (=> b!4472319 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) lambda!163841)))

(declare-fun lt!1660512 () Unit!88025)

(declare-fun Unit!88167 () Unit!88025)

(assert (=> b!4472319 (= lt!1660512 Unit!88167)))

(declare-fun res!1855716 () Bool)

(assert (=> b!4472319 (= res!1855716 (forall!10009 (_2!28580 (h!56080 (toList!4075 lt!1659812))) lambda!163841))))

(assert (=> b!4472319 (=> (not res!1855716) (not e!2784977))))

(assert (=> b!4472319 e!2784977))

(declare-fun lt!1660503 () Unit!88025)

(declare-fun Unit!88169 () Unit!88025)

(assert (=> b!4472319 (= lt!1660503 Unit!88169)))

(assert (= (and d!1364843 c!761520) b!4472318))

(assert (= (and d!1364843 (not c!761520)) b!4472319))

(assert (= (and b!4472319 res!1855716) b!4472315))

(assert (= (or b!4472318 b!4472319) bm!311407))

(assert (= (or b!4472318 b!4472319) bm!311409))

(assert (= (or b!4472318 b!4472319) bm!311408))

(assert (= (and d!1364843 res!1855717) b!4472317))

(assert (= (and b!4472317 res!1855715) b!4472316))

(declare-fun m!5181019 () Bool)

(assert (=> b!4472319 m!5181019))

(declare-fun m!5181021 () Bool)

(assert (=> b!4472319 m!5181021))

(declare-fun m!5181023 () Bool)

(assert (=> b!4472319 m!5181023))

(declare-fun m!5181025 () Bool)

(assert (=> b!4472319 m!5181025))

(declare-fun m!5181027 () Bool)

(assert (=> b!4472319 m!5181027))

(declare-fun m!5181029 () Bool)

(assert (=> b!4472319 m!5181029))

(assert (=> b!4472319 m!5179581))

(assert (=> b!4472319 m!5181019))

(declare-fun m!5181031 () Bool)

(assert (=> b!4472319 m!5181031))

(assert (=> b!4472319 m!5179581))

(declare-fun m!5181033 () Bool)

(assert (=> b!4472319 m!5181033))

(declare-fun m!5181035 () Bool)

(assert (=> b!4472319 m!5181035))

(declare-fun m!5181037 () Bool)

(assert (=> b!4472319 m!5181037))

(assert (=> b!4472319 m!5181037))

(declare-fun m!5181039 () Bool)

(assert (=> b!4472319 m!5181039))

(assert (=> bm!311408 m!5179581))

(declare-fun m!5181041 () Bool)

(assert (=> bm!311408 m!5181041))

(declare-fun m!5181043 () Bool)

(assert (=> bm!311409 m!5181043))

(declare-fun m!5181045 () Bool)

(assert (=> b!4472317 m!5181045))

(assert (=> b!4472315 m!5181035))

(declare-fun m!5181047 () Bool)

(assert (=> b!4472316 m!5181047))

(declare-fun m!5181049 () Bool)

(assert (=> bm!311407 m!5181049))

(declare-fun m!5181051 () Bool)

(assert (=> d!1364843 m!5181051))

(declare-fun m!5181053 () Bool)

(assert (=> d!1364843 m!5181053))

(assert (=> b!4471500 d!1364843))

(declare-fun bs!796879 () Bool)

(declare-fun d!1364859 () Bool)

(assert (= bs!796879 (and d!1364859 d!1364505)))

(declare-fun lambda!163844 () Int)

(assert (=> bs!796879 (= lambda!163844 lambda!163684)))

(declare-fun bs!796880 () Bool)

(assert (= bs!796880 (and d!1364859 d!1364511)))

(assert (=> bs!796880 (= lambda!163844 lambda!163687)))

(declare-fun bs!796881 () Bool)

(assert (= bs!796881 (and d!1364859 d!1364503)))

(assert (=> bs!796881 (= lambda!163844 lambda!163683)))

(declare-fun bs!796882 () Bool)

(assert (= bs!796882 (and d!1364859 d!1364527)))

(assert (=> bs!796882 (= lambda!163844 lambda!163689)))

(declare-fun bs!796883 () Bool)

(assert (= bs!796883 (and d!1364859 d!1364729)))

(assert (=> bs!796883 (= lambda!163844 lambda!163797)))

(declare-fun bs!796884 () Bool)

(assert (= bs!796884 (and d!1364859 d!1364831)))

(assert (=> bs!796884 (= lambda!163844 lambda!163838)))

(declare-fun bs!796885 () Bool)

(assert (= bs!796885 (and d!1364859 d!1364707)))

(assert (=> bs!796885 (= lambda!163844 lambda!163793)))

(declare-fun bs!796886 () Bool)

(assert (= bs!796886 (and d!1364859 d!1364521)))

(assert (=> bs!796886 (= lambda!163844 lambda!163688)))

(declare-fun bs!796887 () Bool)

(assert (= bs!796887 (and d!1364859 d!1364393)))

(assert (=> bs!796887 (not (= lambda!163844 lambda!163647))))

(declare-fun bs!796888 () Bool)

(assert (= bs!796888 (and d!1364859 d!1364423)))

(assert (=> bs!796888 (= lambda!163844 lambda!163668)))

(declare-fun bs!796889 () Bool)

(assert (= bs!796889 (and d!1364859 d!1364409)))

(assert (=> bs!796889 (= lambda!163844 lambda!163663)))

(declare-fun bs!796890 () Bool)

(assert (= bs!796890 (and d!1364859 d!1364467)))

(assert (=> bs!796890 (= lambda!163844 lambda!163674)))

(declare-fun bs!796891 () Bool)

(assert (= bs!796891 (and d!1364859 d!1364395)))

(assert (=> bs!796891 (= lambda!163844 lambda!163653)))

(declare-fun bs!796892 () Bool)

(assert (= bs!796892 (and d!1364859 d!1364581)))

(assert (=> bs!796892 (= lambda!163844 lambda!163690)))

(declare-fun bs!796893 () Bool)

(assert (= bs!796893 (and d!1364859 d!1364745)))

(assert (=> bs!796893 (= lambda!163844 lambda!163804)))

(declare-fun bs!796894 () Bool)

(assert (= bs!796894 (and d!1364859 d!1364421)))

(assert (=> bs!796894 (= lambda!163844 lambda!163664)))

(declare-fun bs!796895 () Bool)

(assert (= bs!796895 (and d!1364859 start!439496)))

(assert (=> bs!796895 (= lambda!163844 lambda!163641)))

(declare-fun lt!1660521 () ListMap!3337)

(assert (=> d!1364859 (invariantList!933 (toList!4076 lt!1660521))))

(declare-fun e!2784986 () ListMap!3337)

(assert (=> d!1364859 (= lt!1660521 e!2784986)))

(declare-fun c!761525 () Bool)

(assert (=> d!1364859 (= c!761525 ((_ is Cons!50311) (t!357385 (toList!4075 lt!1659812))))))

(assert (=> d!1364859 (forall!10008 (t!357385 (toList!4075 lt!1659812)) lambda!163844)))

(assert (=> d!1364859 (= (extractMap!1090 (t!357385 (toList!4075 lt!1659812))) lt!1660521)))

(declare-fun b!4472331 () Bool)

(assert (=> b!4472331 (= e!2784986 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 (toList!4075 lt!1659812)))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lt!1659812))))))))

(declare-fun b!4472332 () Bool)

(assert (=> b!4472332 (= e!2784986 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364859 c!761525) b!4472331))

(assert (= (and d!1364859 (not c!761525)) b!4472332))

(declare-fun m!5181055 () Bool)

(assert (=> d!1364859 m!5181055))

(declare-fun m!5181057 () Bool)

(assert (=> d!1364859 m!5181057))

(declare-fun m!5181059 () Bool)

(assert (=> b!4472331 m!5181059))

(assert (=> b!4472331 m!5181059))

(declare-fun m!5181061 () Bool)

(assert (=> b!4472331 m!5181061))

(assert (=> b!4471500 d!1364859))

(declare-fun d!1364861 () Bool)

(declare-fun lt!1660525 () Bool)

(assert (=> d!1364861 (= lt!1660525 (select (content!8120 (t!357385 (toList!4075 lm!1477))) lt!1659814))))

(declare-fun e!2784991 () Bool)

(assert (=> d!1364861 (= lt!1660525 e!2784991)))

(declare-fun res!1855727 () Bool)

(assert (=> d!1364861 (=> (not res!1855727) (not e!2784991))))

(assert (=> d!1364861 (= res!1855727 ((_ is Cons!50311) (t!357385 (toList!4075 lm!1477))))))

(assert (=> d!1364861 (= (contains!12875 (t!357385 (toList!4075 lm!1477)) lt!1659814) lt!1660525)))

(declare-fun b!4472339 () Bool)

(declare-fun e!2784990 () Bool)

(assert (=> b!4472339 (= e!2784991 e!2784990)))

(declare-fun res!1855728 () Bool)

(assert (=> b!4472339 (=> res!1855728 e!2784990)))

(assert (=> b!4472339 (= res!1855728 (= (h!56080 (t!357385 (toList!4075 lm!1477))) lt!1659814))))

(declare-fun b!4472340 () Bool)

(assert (=> b!4472340 (= e!2784990 (contains!12875 (t!357385 (t!357385 (toList!4075 lm!1477))) lt!1659814))))

(assert (= (and d!1364861 res!1855727) b!4472339))

(assert (= (and b!4472339 (not res!1855728)) b!4472340))

(declare-fun m!5181063 () Bool)

(assert (=> d!1364861 m!5181063))

(declare-fun m!5181067 () Bool)

(assert (=> d!1364861 m!5181067))

(declare-fun m!5181071 () Bool)

(assert (=> b!4472340 m!5181071))

(assert (=> b!4471580 d!1364861))

(assert (=> b!4471708 d!1364569))

(declare-fun d!1364863 () Bool)

(assert (=> d!1364863 (containsKey!1494 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287)))

(declare-fun lt!1660526 () Unit!88025)

(assert (=> d!1364863 (= lt!1660526 (choose!28630 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(assert (=> d!1364863 (invariantList!933 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))

(assert (=> d!1364863 (= (lemmaInGetKeysListThenContainsKey!380 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287) lt!1660526)))

(declare-fun bs!796896 () Bool)

(assert (= bs!796896 d!1364863))

(assert (=> bs!796896 m!5179939))

(declare-fun m!5181077 () Bool)

(assert (=> bs!796896 m!5181077))

(assert (=> bs!796896 m!5180275))

(assert (=> b!4471708 d!1364863))

(declare-fun bs!796897 () Bool)

(declare-fun b!4472342 () Bool)

(assert (= bs!796897 (and b!4472342 b!4471992)))

(declare-fun lambda!163845 () Int)

(assert (=> bs!796897 (= (= (toList!4076 lt!1659809) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163845 lambda!163715))))

(declare-fun bs!796898 () Bool)

(assert (= bs!796898 (and b!4472342 b!4471931)))

(assert (=> bs!796898 (= (= (toList!4076 lt!1659809) (toList!4076 lt!1660003)) (= lambda!163845 lambda!163703))))

(declare-fun bs!796899 () Bool)

(assert (= bs!796899 (and b!4472342 b!4471994)))

(assert (=> bs!796899 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163845 lambda!163717))))

(declare-fun bs!796900 () Bool)

(assert (= bs!796900 (and b!4472342 b!4471954)))

(assert (=> bs!796900 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163845 lambda!163705))))

(declare-fun bs!796901 () Bool)

(assert (= bs!796901 (and b!4472342 b!4471924)))

(assert (=> bs!796901 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163845 lambda!163701))))

(declare-fun bs!796902 () Bool)

(assert (= bs!796902 (and b!4472342 b!4471993)))

(assert (=> bs!796902 (= (= (toList!4076 lt!1659809) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163845 lambda!163716))))

(assert (=> b!4472342 true))

(declare-fun bs!796903 () Bool)

(declare-fun b!4472343 () Bool)

(assert (= bs!796903 (and b!4472343 b!4471925)))

(declare-fun lambda!163846 () Int)

(assert (=> bs!796903 (= lambda!163846 lambda!163702)))

(declare-fun bs!796904 () Bool)

(assert (= bs!796904 (and b!4472343 b!4471932)))

(assert (=> bs!796904 (= lambda!163846 lambda!163704)))

(declare-fun bs!796905 () Bool)

(assert (= bs!796905 (and b!4472343 b!4471955)))

(assert (=> bs!796905 (= lambda!163846 lambda!163706)))

(declare-fun bs!796906 () Bool)

(assert (= bs!796906 (and b!4472343 b!4471987)))

(assert (=> bs!796906 (= lambda!163846 lambda!163718)))

(declare-fun d!1364867 () Bool)

(declare-fun e!2784992 () Bool)

(assert (=> d!1364867 e!2784992))

(declare-fun res!1855731 () Bool)

(assert (=> d!1364867 (=> (not res!1855731) (not e!2784992))))

(declare-fun lt!1660527 () List!50437)

(assert (=> d!1364867 (= res!1855731 (noDuplicate!702 lt!1660527))))

(assert (=> d!1364867 (= lt!1660527 (getKeysList!381 (toList!4076 lt!1659809)))))

(assert (=> d!1364867 (= (keys!17378 lt!1659809) lt!1660527)))

(declare-fun b!4472341 () Bool)

(declare-fun res!1855730 () Bool)

(assert (=> b!4472341 (=> (not res!1855730) (not e!2784992))))

(assert (=> b!4472341 (= res!1855730 (= (length!260 lt!1660527) (length!261 (toList!4076 lt!1659809))))))

(declare-fun res!1855729 () Bool)

(assert (=> b!4472342 (=> (not res!1855729) (not e!2784992))))

(assert (=> b!4472342 (= res!1855729 (forall!10012 lt!1660527 lambda!163845))))

(assert (=> b!4472343 (= e!2784992 (= (content!8121 lt!1660527) (content!8121 (map!11030 (toList!4076 lt!1659809) lambda!163846))))))

(assert (= (and d!1364867 res!1855731) b!4472341))

(assert (= (and b!4472341 res!1855730) b!4472342))

(assert (= (and b!4472342 res!1855729) b!4472343))

(declare-fun m!5181079 () Bool)

(assert (=> d!1364867 m!5181079))

(assert (=> d!1364867 m!5179975))

(declare-fun m!5181081 () Bool)

(assert (=> b!4472341 m!5181081))

(declare-fun m!5181083 () Bool)

(assert (=> b!4472341 m!5181083))

(declare-fun m!5181085 () Bool)

(assert (=> b!4472342 m!5181085))

(declare-fun m!5181087 () Bool)

(assert (=> b!4472343 m!5181087))

(declare-fun m!5181089 () Bool)

(assert (=> b!4472343 m!5181089))

(assert (=> b!4472343 m!5181089))

(declare-fun m!5181091 () Bool)

(assert (=> b!4472343 m!5181091))

(assert (=> b!4471729 d!1364867))

(declare-fun d!1364869 () Bool)

(declare-fun res!1855732 () Bool)

(declare-fun e!2784993 () Bool)

(assert (=> d!1364869 (=> res!1855732 e!2784993)))

(assert (=> d!1364869 (= res!1855732 (and ((_ is Cons!50310) (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477))))) (= (_1!28579 (h!56079 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477)))))) key!3287)))))

(assert (=> d!1364869 (= (containsKey!1490 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477)))) key!3287) e!2784993)))

(declare-fun b!4472344 () Bool)

(declare-fun e!2784994 () Bool)

(assert (=> b!4472344 (= e!2784993 e!2784994)))

(declare-fun res!1855733 () Bool)

(assert (=> b!4472344 (=> (not res!1855733) (not e!2784994))))

(assert (=> b!4472344 (= res!1855733 ((_ is Cons!50310) (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(declare-fun b!4472345 () Bool)

(assert (=> b!4472345 (= e!2784994 (containsKey!1490 (t!357384 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477))))) key!3287))))

(assert (= (and d!1364869 (not res!1855732)) b!4472344))

(assert (= (and b!4472344 res!1855733) b!4472345))

(declare-fun m!5181093 () Bool)

(assert (=> b!4472345 m!5181093))

(assert (=> b!4471449 d!1364869))

(declare-fun d!1364871 () Bool)

(declare-fun res!1855734 () Bool)

(declare-fun e!2784995 () Bool)

(assert (=> d!1364871 (=> res!1855734 e!2784995)))

(assert (=> d!1364871 (= res!1855734 (and ((_ is Cons!50310) lt!1659846) (= (_1!28579 (h!56079 lt!1659846)) key!3287)))))

(assert (=> d!1364871 (= (containsKey!1490 lt!1659846 key!3287) e!2784995)))

(declare-fun b!4472346 () Bool)

(declare-fun e!2784996 () Bool)

(assert (=> b!4472346 (= e!2784995 e!2784996)))

(declare-fun res!1855735 () Bool)

(assert (=> b!4472346 (=> (not res!1855735) (not e!2784996))))

(assert (=> b!4472346 (= res!1855735 ((_ is Cons!50310) lt!1659846))))

(declare-fun b!4472347 () Bool)

(assert (=> b!4472347 (= e!2784996 (containsKey!1490 (t!357384 lt!1659846) key!3287))))

(assert (= (and d!1364871 (not res!1855734)) b!4472346))

(assert (= (and b!4472346 res!1855735) b!4472347))

(declare-fun m!5181095 () Bool)

(assert (=> b!4472347 m!5181095))

(assert (=> d!1364431 d!1364871))

(declare-fun d!1364873 () Bool)

(declare-fun res!1855736 () Bool)

(declare-fun e!2784997 () Bool)

(assert (=> d!1364873 (=> res!1855736 e!2784997)))

(assert (=> d!1364873 (= res!1855736 (not ((_ is Cons!50310) lt!1659806)))))

(assert (=> d!1364873 (= (noDuplicateKeys!1034 lt!1659806) e!2784997)))

(declare-fun b!4472348 () Bool)

(declare-fun e!2784998 () Bool)

(assert (=> b!4472348 (= e!2784997 e!2784998)))

(declare-fun res!1855737 () Bool)

(assert (=> b!4472348 (=> (not res!1855737) (not e!2784998))))

(assert (=> b!4472348 (= res!1855737 (not (containsKey!1490 (t!357384 lt!1659806) (_1!28579 (h!56079 lt!1659806)))))))

(declare-fun b!4472349 () Bool)

(assert (=> b!4472349 (= e!2784998 (noDuplicateKeys!1034 (t!357384 lt!1659806)))))

(assert (= (and d!1364873 (not res!1855736)) b!4472348))

(assert (= (and b!4472348 res!1855737) b!4472349))

(declare-fun m!5181097 () Bool)

(assert (=> b!4472348 m!5181097))

(assert (=> b!4472349 m!5180627))

(assert (=> d!1364431 d!1364873))

(declare-fun d!1364875 () Bool)

(declare-fun res!1855742 () Bool)

(declare-fun e!2785003 () Bool)

(assert (=> d!1364875 (=> res!1855742 e!2785003)))

(assert (=> d!1364875 (= res!1855742 ((_ is Nil!50310) newBucket!178))))

(assert (=> d!1364875 (= (forall!10009 newBucket!178 lambda!163644) e!2785003)))

(declare-fun b!4472354 () Bool)

(declare-fun e!2785004 () Bool)

(assert (=> b!4472354 (= e!2785003 e!2785004)))

(declare-fun res!1855743 () Bool)

(assert (=> b!4472354 (=> (not res!1855743) (not e!2785004))))

(declare-fun dynLambda!21023 (Int tuple2!50570) Bool)

(assert (=> b!4472354 (= res!1855743 (dynLambda!21023 lambda!163644 (h!56079 newBucket!178)))))

(declare-fun b!4472355 () Bool)

(assert (=> b!4472355 (= e!2785004 (forall!10009 (t!357384 newBucket!178) lambda!163644))))

(assert (= (and d!1364875 (not res!1855742)) b!4472354))

(assert (= (and b!4472354 res!1855743) b!4472355))

(declare-fun b_lambda!148613 () Bool)

(assert (=> (not b_lambda!148613) (not b!4472354)))

(declare-fun m!5181099 () Bool)

(assert (=> b!4472354 m!5181099))

(declare-fun m!5181101 () Bool)

(assert (=> b!4472355 m!5181101))

(assert (=> d!1364389 d!1364875))

(declare-fun d!1364877 () Bool)

(declare-fun res!1855744 () Bool)

(declare-fun e!2785005 () Bool)

(assert (=> d!1364877 (=> res!1855744 e!2785005)))

(assert (=> d!1364877 (= res!1855744 (not ((_ is Cons!50310) (_2!28580 lt!1659814))))))

(assert (=> d!1364877 (= (noDuplicateKeys!1034 (_2!28580 lt!1659814)) e!2785005)))

(declare-fun b!4472356 () Bool)

(declare-fun e!2785006 () Bool)

(assert (=> b!4472356 (= e!2785005 e!2785006)))

(declare-fun res!1855745 () Bool)

(assert (=> b!4472356 (=> (not res!1855745) (not e!2785006))))

(assert (=> b!4472356 (= res!1855745 (not (containsKey!1490 (t!357384 (_2!28580 lt!1659814)) (_1!28579 (h!56079 (_2!28580 lt!1659814))))))))

(declare-fun b!4472357 () Bool)

(assert (=> b!4472357 (= e!2785006 (noDuplicateKeys!1034 (t!357384 (_2!28580 lt!1659814))))))

(assert (= (and d!1364877 (not res!1855744)) b!4472356))

(assert (= (and b!4472356 res!1855745) b!4472357))

(declare-fun m!5181103 () Bool)

(assert (=> b!4472356 m!5181103))

(declare-fun m!5181105 () Bool)

(assert (=> b!4472357 m!5181105))

(assert (=> bs!796402 d!1364877))

(declare-fun bs!796907 () Bool)

(declare-fun b!4472361 () Bool)

(assert (= bs!796907 (and b!4472361 d!1364389)))

(declare-fun lambda!163847 () Int)

(assert (=> bs!796907 (not (= lambda!163847 lambda!163644))))

(declare-fun bs!796908 () Bool)

(assert (= bs!796908 (and b!4472361 d!1364843)))

(assert (=> bs!796908 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660502) (= lambda!163847 lambda!163843))))

(declare-fun bs!796909 () Bool)

(assert (= bs!796909 (and b!4472361 d!1364667)))

(assert (=> bs!796909 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660279) (= lambda!163847 lambda!163791))))

(declare-fun bs!796910 () Bool)

(assert (= bs!796910 (and b!4472361 b!4472293)))

(assert (=> bs!796910 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163847 lambda!163834))))

(declare-fun bs!796911 () Bool)

(assert (= bs!796911 (and b!4472361 b!4472294)))

(assert (=> bs!796911 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163847 lambda!163835))))

(declare-fun bs!796912 () Bool)

(assert (= bs!796912 (and b!4472361 b!4472318)))

(assert (=> bs!796912 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163847 lambda!163839))))

(assert (=> bs!796911 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660485) (= lambda!163847 lambda!163836))))

(declare-fun bs!796913 () Bool)

(assert (= bs!796913 (and b!4472361 b!4472319)))

(assert (=> bs!796913 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660511) (= lambda!163847 lambda!163841))))

(declare-fun bs!796914 () Bool)

(assert (= bs!796914 (and b!4472361 b!4472076)))

(assert (=> bs!796914 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660288) (= lambda!163847 lambda!163790))))

(declare-fun bs!796915 () Bool)

(assert (= bs!796915 (and b!4472361 b!4472109)))

(assert (=> bs!796915 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660339) (= lambda!163847 lambda!163800))))

(assert (=> bs!796915 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163847 lambda!163799))))

(declare-fun bs!796916 () Bool)

(assert (= bs!796916 (and b!4472361 d!1364741)))

(assert (=> bs!796916 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660330) (= lambda!163847 lambda!163802))))

(assert (=> bs!796914 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163847 lambda!163788))))

(declare-fun bs!796917 () Bool)

(assert (= bs!796917 (and b!4472361 b!4472075)))

(assert (=> bs!796917 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163847 lambda!163787))))

(declare-fun bs!796918 () Bool)

(assert (= bs!796918 (and b!4472361 b!4472108)))

(assert (=> bs!796918 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163847 lambda!163798))))

(declare-fun bs!796919 () Bool)

(assert (= bs!796919 (and b!4472361 d!1364819)))

(assert (=> bs!796919 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660476) (= lambda!163847 lambda!163837))))

(assert (=> bs!796913 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163847 lambda!163840))))

(assert (=> b!4472361 true))

(declare-fun bs!796920 () Bool)

(declare-fun b!4472362 () Bool)

(assert (= bs!796920 (and b!4472362 b!4472361)))

(declare-fun lambda!163848 () Int)

(assert (=> bs!796920 (= lambda!163848 lambda!163847)))

(declare-fun bs!796921 () Bool)

(assert (= bs!796921 (and b!4472362 d!1364389)))

(assert (=> bs!796921 (not (= lambda!163848 lambda!163644))))

(declare-fun bs!796922 () Bool)

(assert (= bs!796922 (and b!4472362 d!1364843)))

(assert (=> bs!796922 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660502) (= lambda!163848 lambda!163843))))

(declare-fun bs!796923 () Bool)

(assert (= bs!796923 (and b!4472362 d!1364667)))

(assert (=> bs!796923 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660279) (= lambda!163848 lambda!163791))))

(declare-fun bs!796924 () Bool)

(assert (= bs!796924 (and b!4472362 b!4472293)))

(assert (=> bs!796924 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163848 lambda!163834))))

(declare-fun bs!796925 () Bool)

(assert (= bs!796925 (and b!4472362 b!4472294)))

(assert (=> bs!796925 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163848 lambda!163835))))

(declare-fun bs!796926 () Bool)

(assert (= bs!796926 (and b!4472362 b!4472318)))

(assert (=> bs!796926 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163848 lambda!163839))))

(assert (=> bs!796925 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660485) (= lambda!163848 lambda!163836))))

(declare-fun bs!796927 () Bool)

(assert (= bs!796927 (and b!4472362 b!4472319)))

(assert (=> bs!796927 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660511) (= lambda!163848 lambda!163841))))

(declare-fun bs!796928 () Bool)

(assert (= bs!796928 (and b!4472362 b!4472076)))

(assert (=> bs!796928 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660288) (= lambda!163848 lambda!163790))))

(declare-fun bs!796929 () Bool)

(assert (= bs!796929 (and b!4472362 b!4472109)))

(assert (=> bs!796929 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660339) (= lambda!163848 lambda!163800))))

(assert (=> bs!796929 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163848 lambda!163799))))

(declare-fun bs!796930 () Bool)

(assert (= bs!796930 (and b!4472362 d!1364741)))

(assert (=> bs!796930 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660330) (= lambda!163848 lambda!163802))))

(assert (=> bs!796928 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163848 lambda!163788))))

(declare-fun bs!796931 () Bool)

(assert (= bs!796931 (and b!4472362 b!4472075)))

(assert (=> bs!796931 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163848 lambda!163787))))

(declare-fun bs!796932 () Bool)

(assert (= bs!796932 (and b!4472362 b!4472108)))

(assert (=> bs!796932 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163848 lambda!163798))))

(declare-fun bs!796933 () Bool)

(assert (= bs!796933 (and b!4472362 d!1364819)))

(assert (=> bs!796933 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660476) (= lambda!163848 lambda!163837))))

(assert (=> bs!796927 (= (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163848 lambda!163840))))

(assert (=> b!4472362 true))

(declare-fun lambda!163849 () Int)

(declare-fun lt!1660544 () ListMap!3337)

(assert (=> bs!796920 (= (= lt!1660544 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163849 lambda!163847))))

(assert (=> bs!796921 (not (= lambda!163849 lambda!163644))))

(assert (=> bs!796922 (= (= lt!1660544 lt!1660502) (= lambda!163849 lambda!163843))))

(assert (=> bs!796923 (= (= lt!1660544 lt!1660279) (= lambda!163849 lambda!163791))))

(assert (=> bs!796924 (= (= lt!1660544 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163849 lambda!163834))))

(assert (=> bs!796925 (= (= lt!1660544 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163849 lambda!163835))))

(assert (=> b!4472362 (= (= lt!1660544 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163849 lambda!163848))))

(assert (=> bs!796926 (= (= lt!1660544 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163849 lambda!163839))))

(assert (=> bs!796925 (= (= lt!1660544 lt!1660485) (= lambda!163849 lambda!163836))))

(assert (=> bs!796927 (= (= lt!1660544 lt!1660511) (= lambda!163849 lambda!163841))))

(assert (=> bs!796928 (= (= lt!1660544 lt!1660288) (= lambda!163849 lambda!163790))))

(assert (=> bs!796929 (= (= lt!1660544 lt!1660339) (= lambda!163849 lambda!163800))))

(assert (=> bs!796929 (= (= lt!1660544 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163849 lambda!163799))))

(assert (=> bs!796930 (= (= lt!1660544 lt!1660330) (= lambda!163849 lambda!163802))))

(assert (=> bs!796928 (= (= lt!1660544 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163849 lambda!163788))))

(assert (=> bs!796931 (= (= lt!1660544 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163849 lambda!163787))))

(assert (=> bs!796932 (= (= lt!1660544 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163849 lambda!163798))))

(assert (=> bs!796933 (= (= lt!1660544 lt!1660476) (= lambda!163849 lambda!163837))))

(assert (=> bs!796927 (= (= lt!1660544 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163849 lambda!163840))))

(assert (=> b!4472362 true))

(declare-fun bs!796934 () Bool)

(declare-fun d!1364879 () Bool)

(assert (= bs!796934 (and d!1364879 b!4472361)))

(declare-fun lambda!163850 () Int)

(declare-fun lt!1660535 () ListMap!3337)

(assert (=> bs!796934 (= (= lt!1660535 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163850 lambda!163847))))

(declare-fun bs!796935 () Bool)

(assert (= bs!796935 (and d!1364879 d!1364389)))

(assert (=> bs!796935 (not (= lambda!163850 lambda!163644))))

(declare-fun bs!796936 () Bool)

(assert (= bs!796936 (and d!1364879 d!1364843)))

(assert (=> bs!796936 (= (= lt!1660535 lt!1660502) (= lambda!163850 lambda!163843))))

(declare-fun bs!796937 () Bool)

(assert (= bs!796937 (and d!1364879 d!1364667)))

(assert (=> bs!796937 (= (= lt!1660535 lt!1660279) (= lambda!163850 lambda!163791))))

(declare-fun bs!796938 () Bool)

(assert (= bs!796938 (and d!1364879 b!4472293)))

(assert (=> bs!796938 (= (= lt!1660535 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163850 lambda!163834))))

(declare-fun bs!796939 () Bool)

(assert (= bs!796939 (and d!1364879 b!4472294)))

(assert (=> bs!796939 (= (= lt!1660535 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163850 lambda!163835))))

(declare-fun bs!796940 () Bool)

(assert (= bs!796940 (and d!1364879 b!4472362)))

(assert (=> bs!796940 (= (= lt!1660535 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163850 lambda!163848))))

(declare-fun bs!796941 () Bool)

(assert (= bs!796941 (and d!1364879 b!4472318)))

(assert (=> bs!796941 (= (= lt!1660535 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163850 lambda!163839))))

(assert (=> bs!796939 (= (= lt!1660535 lt!1660485) (= lambda!163850 lambda!163836))))

(declare-fun bs!796942 () Bool)

(assert (= bs!796942 (and d!1364879 b!4472319)))

(assert (=> bs!796942 (= (= lt!1660535 lt!1660511) (= lambda!163850 lambda!163841))))

(declare-fun bs!796943 () Bool)

(assert (= bs!796943 (and d!1364879 b!4472076)))

(assert (=> bs!796943 (= (= lt!1660535 lt!1660288) (= lambda!163850 lambda!163790))))

(declare-fun bs!796944 () Bool)

(assert (= bs!796944 (and d!1364879 b!4472109)))

(assert (=> bs!796944 (= (= lt!1660535 lt!1660339) (= lambda!163850 lambda!163800))))

(assert (=> bs!796944 (= (= lt!1660535 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163850 lambda!163799))))

(declare-fun bs!796945 () Bool)

(assert (= bs!796945 (and d!1364879 d!1364741)))

(assert (=> bs!796945 (= (= lt!1660535 lt!1660330) (= lambda!163850 lambda!163802))))

(assert (=> bs!796943 (= (= lt!1660535 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163850 lambda!163788))))

(declare-fun bs!796946 () Bool)

(assert (= bs!796946 (and d!1364879 b!4472075)))

(assert (=> bs!796946 (= (= lt!1660535 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163850 lambda!163787))))

(assert (=> bs!796940 (= (= lt!1660535 lt!1660544) (= lambda!163850 lambda!163849))))

(declare-fun bs!796947 () Bool)

(assert (= bs!796947 (and d!1364879 b!4472108)))

(assert (=> bs!796947 (= (= lt!1660535 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163850 lambda!163798))))

(declare-fun bs!796948 () Bool)

(assert (= bs!796948 (and d!1364879 d!1364819)))

(assert (=> bs!796948 (= (= lt!1660535 lt!1660476) (= lambda!163850 lambda!163837))))

(assert (=> bs!796942 (= (= lt!1660535 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163850 lambda!163840))))

(assert (=> d!1364879 true))

(declare-fun b!4472358 () Bool)

(declare-fun e!2785008 () Bool)

(assert (=> b!4472358 (= e!2785008 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) lambda!163849))))

(declare-fun b!4472359 () Bool)

(declare-fun e!2785009 () Bool)

(assert (=> b!4472359 (= e!2785009 (invariantList!933 (toList!4076 lt!1660535)))))

(assert (=> d!1364879 e!2785009))

(declare-fun res!1855748 () Bool)

(assert (=> d!1364879 (=> (not res!1855748) (not e!2785009))))

(assert (=> d!1364879 (= res!1855748 (forall!10009 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))) lambda!163850))))

(declare-fun e!2785007 () ListMap!3337)

(assert (=> d!1364879 (= lt!1660535 e!2785007)))

(declare-fun c!761526 () Bool)

(assert (=> d!1364879 (= c!761526 ((_ is Nil!50310) (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))))))

(assert (=> d!1364879 (noDuplicateKeys!1034 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))))))

(assert (=> d!1364879 (= (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) lt!1660535)))

(declare-fun bm!311410 () Bool)

(declare-fun call!311417 () Bool)

(assert (=> bm!311410 (= call!311417 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (ite c!761526 lambda!163847 lambda!163849)))))

(declare-fun bm!311411 () Bool)

(declare-fun call!311416 () Unit!88025)

(assert (=> bm!311411 (= call!311416 (lemmaContainsAllItsOwnKeys!271 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))))))

(declare-fun b!4472360 () Bool)

(declare-fun res!1855746 () Bool)

(assert (=> b!4472360 (=> (not res!1855746) (not e!2785009))))

(assert (=> b!4472360 (= res!1855746 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) lambda!163850))))

(assert (=> b!4472361 (= e!2785007 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))))))

(declare-fun lt!1660541 () Unit!88025)

(assert (=> b!4472361 (= lt!1660541 call!311416)))

(assert (=> b!4472361 call!311417))

(declare-fun lt!1660532 () Unit!88025)

(assert (=> b!4472361 (= lt!1660532 lt!1660541)))

(declare-fun call!311415 () Bool)

(assert (=> b!4472361 call!311415))

(declare-fun lt!1660531 () Unit!88025)

(declare-fun Unit!88174 () Unit!88025)

(assert (=> b!4472361 (= lt!1660531 Unit!88174)))

(declare-fun bm!311412 () Bool)

(assert (=> bm!311412 (= call!311415 (forall!10009 (ite c!761526 (toList!4076 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))) (ite c!761526 lambda!163847 lambda!163849)))))

(assert (=> b!4472362 (= e!2785007 lt!1660544)))

(declare-fun lt!1660546 () ListMap!3337)

(assert (=> b!4472362 (= lt!1660546 (+!1382 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))))))))

(assert (=> b!4472362 (= lt!1660544 (addToMapMapFromBucket!595 (t!357384 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))) (+!1382 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))))))))

(declare-fun lt!1660543 () Unit!88025)

(assert (=> b!4472362 (= lt!1660543 call!311416)))

(assert (=> b!4472362 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) lambda!163848)))

(declare-fun lt!1660534 () Unit!88025)

(assert (=> b!4472362 (= lt!1660534 lt!1660543)))

(assert (=> b!4472362 (forall!10009 (toList!4076 lt!1660546) lambda!163849)))

(declare-fun lt!1660529 () Unit!88025)

(declare-fun Unit!88175 () Unit!88025)

(assert (=> b!4472362 (= lt!1660529 Unit!88175)))

(assert (=> b!4472362 (forall!10009 (t!357384 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))) lambda!163849)))

(declare-fun lt!1660547 () Unit!88025)

(declare-fun Unit!88176 () Unit!88025)

(assert (=> b!4472362 (= lt!1660547 Unit!88176)))

(declare-fun lt!1660530 () Unit!88025)

(declare-fun Unit!88177 () Unit!88025)

(assert (=> b!4472362 (= lt!1660530 Unit!88177)))

(declare-fun lt!1660540 () Unit!88025)

(assert (=> b!4472362 (= lt!1660540 (forallContained!2278 (toList!4076 lt!1660546) lambda!163849 (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))))))))

(assert (=> b!4472362 (contains!12873 lt!1660546 (_1!28579 (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))))))))

(declare-fun lt!1660538 () Unit!88025)

(declare-fun Unit!88178 () Unit!88025)

(assert (=> b!4472362 (= lt!1660538 Unit!88178)))

(assert (=> b!4472362 (contains!12873 lt!1660544 (_1!28579 (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))))))))

(declare-fun lt!1660528 () Unit!88025)

(declare-fun Unit!88179 () Unit!88025)

(assert (=> b!4472362 (= lt!1660528 Unit!88179)))

(assert (=> b!4472362 call!311415))

(declare-fun lt!1660548 () Unit!88025)

(declare-fun Unit!88180 () Unit!88025)

(assert (=> b!4472362 (= lt!1660548 Unit!88180)))

(assert (=> b!4472362 (forall!10009 (toList!4076 lt!1660546) lambda!163849)))

(declare-fun lt!1660533 () Unit!88025)

(declare-fun Unit!88181 () Unit!88025)

(assert (=> b!4472362 (= lt!1660533 Unit!88181)))

(declare-fun lt!1660539 () Unit!88025)

(declare-fun Unit!88182 () Unit!88025)

(assert (=> b!4472362 (= lt!1660539 Unit!88182)))

(declare-fun lt!1660542 () Unit!88025)

(assert (=> b!4472362 (= lt!1660542 (addForallContainsKeyThenBeforeAdding!270 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660544 (_1!28579 (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))))) (_2!28579 (h!56079 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))))))))

(assert (=> b!4472362 call!311417))

(declare-fun lt!1660537 () Unit!88025)

(assert (=> b!4472362 (= lt!1660537 lt!1660542)))

(assert (=> b!4472362 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) lambda!163849)))

(declare-fun lt!1660545 () Unit!88025)

(declare-fun Unit!88183 () Unit!88025)

(assert (=> b!4472362 (= lt!1660545 Unit!88183)))

(declare-fun res!1855747 () Bool)

(assert (=> b!4472362 (= res!1855747 (forall!10009 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477)))) lambda!163849))))

(assert (=> b!4472362 (=> (not res!1855747) (not e!2785008))))

(assert (=> b!4472362 e!2785008))

(declare-fun lt!1660536 () Unit!88025)

(declare-fun Unit!88184 () Unit!88025)

(assert (=> b!4472362 (= lt!1660536 Unit!88184)))

(assert (= (and d!1364879 c!761526) b!4472361))

(assert (= (and d!1364879 (not c!761526)) b!4472362))

(assert (= (and b!4472362 res!1855747) b!4472358))

(assert (= (or b!4472361 b!4472362) bm!311410))

(assert (= (or b!4472361 b!4472362) bm!311412))

(assert (= (or b!4472361 b!4472362) bm!311411))

(assert (= (and d!1364879 res!1855748) b!4472360))

(assert (= (and b!4472360 res!1855746) b!4472359))

(declare-fun m!5181133 () Bool)

(assert (=> b!4472362 m!5181133))

(declare-fun m!5181135 () Bool)

(assert (=> b!4472362 m!5181135))

(declare-fun m!5181137 () Bool)

(assert (=> b!4472362 m!5181137))

(declare-fun m!5181139 () Bool)

(assert (=> b!4472362 m!5181139))

(declare-fun m!5181141 () Bool)

(assert (=> b!4472362 m!5181141))

(declare-fun m!5181143 () Bool)

(assert (=> b!4472362 m!5181143))

(assert (=> b!4472362 m!5179573))

(assert (=> b!4472362 m!5181133))

(declare-fun m!5181145 () Bool)

(assert (=> b!4472362 m!5181145))

(assert (=> b!4472362 m!5179573))

(declare-fun m!5181147 () Bool)

(assert (=> b!4472362 m!5181147))

(declare-fun m!5181149 () Bool)

(assert (=> b!4472362 m!5181149))

(declare-fun m!5181151 () Bool)

(assert (=> b!4472362 m!5181151))

(assert (=> b!4472362 m!5181151))

(declare-fun m!5181153 () Bool)

(assert (=> b!4472362 m!5181153))

(assert (=> bm!311411 m!5179573))

(declare-fun m!5181155 () Bool)

(assert (=> bm!311411 m!5181155))

(declare-fun m!5181157 () Bool)

(assert (=> bm!311412 m!5181157))

(declare-fun m!5181159 () Bool)

(assert (=> b!4472360 m!5181159))

(assert (=> b!4472358 m!5181149))

(declare-fun m!5181161 () Bool)

(assert (=> b!4472359 m!5181161))

(declare-fun m!5181163 () Bool)

(assert (=> bm!311410 m!5181163))

(declare-fun m!5181165 () Bool)

(assert (=> d!1364879 m!5181165))

(declare-fun m!5181167 () Bool)

(assert (=> d!1364879 m!5181167))

(assert (=> b!4471498 d!1364879))

(declare-fun bs!796949 () Bool)

(declare-fun d!1364885 () Bool)

(assert (= bs!796949 (and d!1364885 d!1364505)))

(declare-fun lambda!163851 () Int)

(assert (=> bs!796949 (= lambda!163851 lambda!163684)))

(declare-fun bs!796950 () Bool)

(assert (= bs!796950 (and d!1364885 d!1364511)))

(assert (=> bs!796950 (= lambda!163851 lambda!163687)))

(declare-fun bs!796951 () Bool)

(assert (= bs!796951 (and d!1364885 d!1364503)))

(assert (=> bs!796951 (= lambda!163851 lambda!163683)))

(declare-fun bs!796952 () Bool)

(assert (= bs!796952 (and d!1364885 d!1364527)))

(assert (=> bs!796952 (= lambda!163851 lambda!163689)))

(declare-fun bs!796953 () Bool)

(assert (= bs!796953 (and d!1364885 d!1364729)))

(assert (=> bs!796953 (= lambda!163851 lambda!163797)))

(declare-fun bs!796954 () Bool)

(assert (= bs!796954 (and d!1364885 d!1364831)))

(assert (=> bs!796954 (= lambda!163851 lambda!163838)))

(declare-fun bs!796955 () Bool)

(assert (= bs!796955 (and d!1364885 d!1364521)))

(assert (=> bs!796955 (= lambda!163851 lambda!163688)))

(declare-fun bs!796956 () Bool)

(assert (= bs!796956 (and d!1364885 d!1364393)))

(assert (=> bs!796956 (not (= lambda!163851 lambda!163647))))

(declare-fun bs!796957 () Bool)

(assert (= bs!796957 (and d!1364885 d!1364423)))

(assert (=> bs!796957 (= lambda!163851 lambda!163668)))

(declare-fun bs!796958 () Bool)

(assert (= bs!796958 (and d!1364885 d!1364409)))

(assert (=> bs!796958 (= lambda!163851 lambda!163663)))

(declare-fun bs!796959 () Bool)

(assert (= bs!796959 (and d!1364885 d!1364467)))

(assert (=> bs!796959 (= lambda!163851 lambda!163674)))

(declare-fun bs!796960 () Bool)

(assert (= bs!796960 (and d!1364885 d!1364395)))

(assert (=> bs!796960 (= lambda!163851 lambda!163653)))

(declare-fun bs!796961 () Bool)

(assert (= bs!796961 (and d!1364885 d!1364581)))

(assert (=> bs!796961 (= lambda!163851 lambda!163690)))

(declare-fun bs!796962 () Bool)

(assert (= bs!796962 (and d!1364885 d!1364745)))

(assert (=> bs!796962 (= lambda!163851 lambda!163804)))

(declare-fun bs!796963 () Bool)

(assert (= bs!796963 (and d!1364885 d!1364707)))

(assert (=> bs!796963 (= lambda!163851 lambda!163793)))

(declare-fun bs!796964 () Bool)

(assert (= bs!796964 (and d!1364885 d!1364859)))

(assert (=> bs!796964 (= lambda!163851 lambda!163844)))

(declare-fun bs!796965 () Bool)

(assert (= bs!796965 (and d!1364885 d!1364421)))

(assert (=> bs!796965 (= lambda!163851 lambda!163664)))

(declare-fun bs!796966 () Bool)

(assert (= bs!796966 (and d!1364885 start!439496)))

(assert (=> bs!796966 (= lambda!163851 lambda!163641)))

(declare-fun lt!1660560 () ListMap!3337)

(assert (=> d!1364885 (invariantList!933 (toList!4076 lt!1660560))))

(declare-fun e!2785031 () ListMap!3337)

(assert (=> d!1364885 (= lt!1660560 e!2785031)))

(declare-fun c!761542 () Bool)

(assert (=> d!1364885 (= c!761542 ((_ is Cons!50311) (t!357385 (t!357385 (toList!4075 lm!1477)))))))

(assert (=> d!1364885 (forall!10008 (t!357385 (t!357385 (toList!4075 lm!1477))) lambda!163851)))

(assert (=> d!1364885 (= (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477)))) lt!1660560)))

(declare-fun b!4472402 () Bool)

(assert (=> b!4472402 (= e!2785031 (addToMapMapFromBucket!595 (_2!28580 (h!56080 (t!357385 (t!357385 (toList!4075 lm!1477))))) (extractMap!1090 (t!357385 (t!357385 (t!357385 (toList!4075 lm!1477)))))))))

(declare-fun b!4472403 () Bool)

(assert (=> b!4472403 (= e!2785031 (ListMap!3338 Nil!50310))))

(assert (= (and d!1364885 c!761542) b!4472402))

(assert (= (and d!1364885 (not c!761542)) b!4472403))

(declare-fun m!5181169 () Bool)

(assert (=> d!1364885 m!5181169))

(declare-fun m!5181171 () Bool)

(assert (=> d!1364885 m!5181171))

(declare-fun m!5181173 () Bool)

(assert (=> b!4472402 m!5181173))

(assert (=> b!4472402 m!5181173))

(declare-fun m!5181175 () Bool)

(assert (=> b!4472402 m!5181175))

(assert (=> b!4471498 d!1364885))

(declare-fun d!1364887 () Bool)

(declare-fun lt!1660561 () Bool)

(assert (=> d!1364887 (= lt!1660561 (select (content!8121 (keys!17378 lt!1659809)) key!3287))))

(declare-fun e!2785033 () Bool)

(assert (=> d!1364887 (= lt!1660561 e!2785033)))

(declare-fun res!1855759 () Bool)

(assert (=> d!1364887 (=> (not res!1855759) (not e!2785033))))

(assert (=> d!1364887 (= res!1855759 ((_ is Cons!50313) (keys!17378 lt!1659809)))))

(assert (=> d!1364887 (= (contains!12877 (keys!17378 lt!1659809) key!3287) lt!1660561)))

(declare-fun b!4472404 () Bool)

(declare-fun e!2785032 () Bool)

(assert (=> b!4472404 (= e!2785033 e!2785032)))

(declare-fun res!1855758 () Bool)

(assert (=> b!4472404 (=> res!1855758 e!2785032)))

(assert (=> b!4472404 (= res!1855758 (= (h!56084 (keys!17378 lt!1659809)) key!3287))))

(declare-fun b!4472405 () Bool)

(assert (=> b!4472405 (= e!2785032 (contains!12877 (t!357387 (keys!17378 lt!1659809)) key!3287))))

(assert (= (and d!1364887 res!1855759) b!4472404))

(assert (= (and b!4472404 (not res!1855758)) b!4472405))

(assert (=> d!1364887 m!5179977))

(declare-fun m!5181177 () Bool)

(assert (=> d!1364887 m!5181177))

(declare-fun m!5181179 () Bool)

(assert (=> d!1364887 m!5181179))

(declare-fun m!5181181 () Bool)

(assert (=> b!4472405 m!5181181))

(assert (=> b!4471731 d!1364887))

(assert (=> b!4471731 d!1364867))

(assert (=> b!4471733 d!1364887))

(assert (=> b!4471733 d!1364867))

(declare-fun d!1364889 () Bool)

(declare-fun lt!1660562 () Bool)

(assert (=> d!1364889 (= lt!1660562 (select (content!8121 e!2784593) key!3287))))

(declare-fun e!2785035 () Bool)

(assert (=> d!1364889 (= lt!1660562 e!2785035)))

(declare-fun res!1855761 () Bool)

(assert (=> d!1364889 (=> (not res!1855761) (not e!2785035))))

(assert (=> d!1364889 (= res!1855761 ((_ is Cons!50313) e!2784593))))

(assert (=> d!1364889 (= (contains!12877 e!2784593 key!3287) lt!1660562)))

(declare-fun b!4472406 () Bool)

(declare-fun e!2785034 () Bool)

(assert (=> b!4472406 (= e!2785035 e!2785034)))

(declare-fun res!1855760 () Bool)

(assert (=> b!4472406 (=> res!1855760 e!2785034)))

(assert (=> b!4472406 (= res!1855760 (= (h!56084 e!2784593) key!3287))))

(declare-fun b!4472407 () Bool)

(assert (=> b!4472407 (= e!2785034 (contains!12877 (t!357387 e!2784593) key!3287))))

(assert (= (and d!1364889 res!1855761) b!4472406))

(assert (= (and b!4472406 (not res!1855760)) b!4472407))

(declare-fun m!5181183 () Bool)

(assert (=> d!1364889 m!5181183))

(declare-fun m!5181185 () Bool)

(assert (=> d!1364889 m!5181185))

(declare-fun m!5181187 () Bool)

(assert (=> b!4472407 m!5181187))

(assert (=> bm!311339 d!1364889))

(assert (=> d!1364395 d!1364525))

(assert (=> d!1364395 d!1364527))

(declare-fun d!1364891 () Bool)

(assert (=> d!1364891 (not (contains!12873 (extractMap!1090 (toList!4075 lm!1477)) key!3287))))

(assert (=> d!1364891 true))

(declare-fun _$26!251 () Unit!88025)

(assert (=> d!1364891 (= (choose!28622 lm!1477 key!3287 hashF!1107) _$26!251)))

(declare-fun bs!796967 () Bool)

(assert (= bs!796967 d!1364891))

(assert (=> bs!796967 m!5179477))

(assert (=> bs!796967 m!5179477))

(assert (=> bs!796967 m!5179479))

(assert (=> d!1364395 d!1364891))

(declare-fun d!1364893 () Bool)

(declare-fun res!1855762 () Bool)

(declare-fun e!2785036 () Bool)

(assert (=> d!1364893 (=> res!1855762 e!2785036)))

(assert (=> d!1364893 (= res!1855762 ((_ is Nil!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364893 (= (forall!10008 (toList!4075 lm!1477) lambda!163653) e!2785036)))

(declare-fun b!4472408 () Bool)

(declare-fun e!2785037 () Bool)

(assert (=> b!4472408 (= e!2785036 e!2785037)))

(declare-fun res!1855763 () Bool)

(assert (=> b!4472408 (=> (not res!1855763) (not e!2785037))))

(assert (=> b!4472408 (= res!1855763 (dynLambda!21022 lambda!163653 (h!56080 (toList!4075 lm!1477))))))

(declare-fun b!4472409 () Bool)

(assert (=> b!4472409 (= e!2785037 (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163653))))

(assert (= (and d!1364893 (not res!1855762)) b!4472408))

(assert (= (and b!4472408 res!1855763) b!4472409))

(declare-fun b_lambda!148615 () Bool)

(assert (=> (not b_lambda!148615) (not b!4472408)))

(declare-fun m!5181189 () Bool)

(assert (=> b!4472408 m!5181189))

(declare-fun m!5181191 () Bool)

(assert (=> b!4472409 m!5181191))

(assert (=> d!1364395 d!1364893))

(declare-fun bs!796968 () Bool)

(declare-fun b!4472411 () Bool)

(assert (= bs!796968 (and b!4472411 b!4471992)))

(declare-fun lambda!163852 () Int)

(assert (=> bs!796968 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163852 lambda!163715))))

(declare-fun bs!796969 () Bool)

(assert (= bs!796969 (and b!4472411 b!4471931)))

(assert (=> bs!796969 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 lt!1660003)) (= lambda!163852 lambda!163703))))

(declare-fun bs!796970 () Bool)

(assert (= bs!796970 (and b!4472411 b!4471994)))

(assert (=> bs!796970 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163852 lambda!163717))))

(declare-fun bs!796971 () Bool)

(assert (= bs!796971 (and b!4472411 b!4472342)))

(assert (=> bs!796971 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 lt!1659809)) (= lambda!163852 lambda!163845))))

(declare-fun bs!796972 () Bool)

(assert (= bs!796972 (and b!4472411 b!4471954)))

(assert (=> bs!796972 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163852 lambda!163705))))

(declare-fun bs!796973 () Bool)

(assert (= bs!796973 (and b!4472411 b!4471924)))

(assert (=> bs!796973 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163852 lambda!163701))))

(declare-fun bs!796974 () Bool)

(assert (= bs!796974 (and b!4472411 b!4471993)))

(assert (=> bs!796974 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163852 lambda!163716))))

(assert (=> b!4472411 true))

(declare-fun bs!796975 () Bool)

(declare-fun b!4472412 () Bool)

(assert (= bs!796975 (and b!4472412 b!4471987)))

(declare-fun lambda!163853 () Int)

(assert (=> bs!796975 (= lambda!163853 lambda!163718)))

(declare-fun bs!796976 () Bool)

(assert (= bs!796976 (and b!4472412 b!4471932)))

(assert (=> bs!796976 (= lambda!163853 lambda!163704)))

(declare-fun bs!796977 () Bool)

(assert (= bs!796977 (and b!4472412 b!4472343)))

(assert (=> bs!796977 (= lambda!163853 lambda!163846)))

(declare-fun bs!796978 () Bool)

(assert (= bs!796978 (and b!4472412 b!4471955)))

(assert (=> bs!796978 (= lambda!163853 lambda!163706)))

(declare-fun bs!796979 () Bool)

(assert (= bs!796979 (and b!4472412 b!4471925)))

(assert (=> bs!796979 (= lambda!163853 lambda!163702)))

(declare-fun d!1364895 () Bool)

(declare-fun e!2785038 () Bool)

(assert (=> d!1364895 e!2785038))

(declare-fun res!1855766 () Bool)

(assert (=> d!1364895 (=> (not res!1855766) (not e!2785038))))

(declare-fun lt!1660563 () List!50437)

(assert (=> d!1364895 (= res!1855766 (noDuplicate!702 lt!1660563))))

(assert (=> d!1364895 (= lt!1660563 (getKeysList!381 (toList!4076 (extractMap!1090 lt!1659816))))))

(assert (=> d!1364895 (= (keys!17378 (extractMap!1090 lt!1659816)) lt!1660563)))

(declare-fun b!4472410 () Bool)

(declare-fun res!1855765 () Bool)

(assert (=> b!4472410 (=> (not res!1855765) (not e!2785038))))

(assert (=> b!4472410 (= res!1855765 (= (length!260 lt!1660563) (length!261 (toList!4076 (extractMap!1090 lt!1659816)))))))

(declare-fun res!1855764 () Bool)

(assert (=> b!4472411 (=> (not res!1855764) (not e!2785038))))

(assert (=> b!4472411 (= res!1855764 (forall!10012 lt!1660563 lambda!163852))))

(assert (=> b!4472412 (= e!2785038 (= (content!8121 lt!1660563) (content!8121 (map!11030 (toList!4076 (extractMap!1090 lt!1659816)) lambda!163853))))))

(assert (= (and d!1364895 res!1855766) b!4472410))

(assert (= (and b!4472410 res!1855765) b!4472411))

(assert (= (and b!4472411 res!1855764) b!4472412))

(declare-fun m!5181193 () Bool)

(assert (=> d!1364895 m!5181193))

(assert (=> d!1364895 m!5179869))

(declare-fun m!5181195 () Bool)

(assert (=> b!4472410 m!5181195))

(declare-fun m!5181197 () Bool)

(assert (=> b!4472410 m!5181197))

(declare-fun m!5181199 () Bool)

(assert (=> b!4472411 m!5181199))

(declare-fun m!5181201 () Bool)

(assert (=> b!4472412 m!5181201))

(declare-fun m!5181203 () Bool)

(assert (=> b!4472412 m!5181203))

(assert (=> b!4472412 m!5181203))

(declare-fun m!5181205 () Bool)

(assert (=> b!4472412 m!5181205))

(assert (=> b!4471692 d!1364895))

(declare-fun d!1364897 () Bool)

(assert (=> d!1364897 (isDefined!8226 (getValueByKey!925 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(declare-fun lt!1660564 () Unit!88025)

(assert (=> d!1364897 (= lt!1660564 (choose!28634 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(assert (=> d!1364897 (invariantList!933 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))

(assert (=> d!1364897 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!829 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287) lt!1660564)))

(declare-fun bs!796980 () Bool)

(assert (= bs!796980 d!1364897))

(assert (=> bs!796980 m!5179951))

(assert (=> bs!796980 m!5179951))

(assert (=> bs!796980 m!5179953))

(declare-fun m!5181207 () Bool)

(assert (=> bs!796980 m!5181207))

(assert (=> bs!796980 m!5180275))

(assert (=> b!4471714 d!1364897))

(assert (=> b!4471714 d!1364837))

(assert (=> b!4471714 d!1364839))

(declare-fun d!1364899 () Bool)

(assert (=> d!1364899 (contains!12877 (getKeysList!381 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) key!3287)))

(declare-fun lt!1660565 () Unit!88025)

(assert (=> d!1364899 (= lt!1660565 (choose!28635 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287))))

(assert (=> d!1364899 (invariantList!933 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))))

(assert (=> d!1364899 (= (lemmaInListThenGetKeysListContains!377 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))) key!3287) lt!1660565)))

(declare-fun bs!796981 () Bool)

(assert (= bs!796981 d!1364899))

(assert (=> bs!796981 m!5179943))

(assert (=> bs!796981 m!5179943))

(declare-fun m!5181209 () Bool)

(assert (=> bs!796981 m!5181209))

(declare-fun m!5181211 () Bool)

(assert (=> bs!796981 m!5181211))

(assert (=> bs!796981 m!5180275))

(assert (=> b!4471714 d!1364899))

(declare-fun bs!796982 () Bool)

(declare-fun b!4472419 () Bool)

(assert (= bs!796982 (and b!4472419 b!4471992)))

(declare-fun lambda!163854 () Int)

(assert (=> bs!796982 (= (= (t!357384 (toList!4076 lt!1659809)) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163854 lambda!163715))))

(declare-fun bs!796983 () Bool)

(assert (= bs!796983 (and b!4472419 b!4471931)))

(assert (=> bs!796983 (= (= (t!357384 (toList!4076 lt!1659809)) (toList!4076 lt!1660003)) (= lambda!163854 lambda!163703))))

(declare-fun bs!796984 () Bool)

(assert (= bs!796984 (and b!4472419 b!4471994)))

(assert (=> bs!796984 (= (= (t!357384 (toList!4076 lt!1659809)) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163854 lambda!163717))))

(declare-fun bs!796985 () Bool)

(assert (= bs!796985 (and b!4472419 b!4472411)))

(assert (=> bs!796985 (= (= (t!357384 (toList!4076 lt!1659809)) (toList!4076 (extractMap!1090 lt!1659816))) (= lambda!163854 lambda!163852))))

(declare-fun bs!796986 () Bool)

(assert (= bs!796986 (and b!4472419 b!4472342)))

(assert (=> bs!796986 (= (= (t!357384 (toList!4076 lt!1659809)) (toList!4076 lt!1659809)) (= lambda!163854 lambda!163845))))

(declare-fun bs!796987 () Bool)

(assert (= bs!796987 (and b!4472419 b!4471954)))

(assert (=> bs!796987 (= (= (t!357384 (toList!4076 lt!1659809)) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163854 lambda!163705))))

(declare-fun bs!796988 () Bool)

(assert (= bs!796988 (and b!4472419 b!4471924)))

(assert (=> bs!796988 (= (= (t!357384 (toList!4076 lt!1659809)) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163854 lambda!163701))))

(declare-fun bs!796989 () Bool)

(assert (= bs!796989 (and b!4472419 b!4471993)))

(assert (=> bs!796989 (= (= (t!357384 (toList!4076 lt!1659809)) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163854 lambda!163716))))

(assert (=> b!4472419 true))

(declare-fun bs!796990 () Bool)

(declare-fun b!4472420 () Bool)

(assert (= bs!796990 (and b!4472420 b!4472419)))

(declare-fun lambda!163855 () Int)

(assert (=> bs!796990 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (t!357384 (toList!4076 lt!1659809))) (= lambda!163855 lambda!163854))))

(declare-fun bs!796991 () Bool)

(assert (= bs!796991 (and b!4472420 b!4471992)))

(assert (=> bs!796991 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163855 lambda!163715))))

(declare-fun bs!796992 () Bool)

(assert (= bs!796992 (and b!4472420 b!4471931)))

(assert (=> bs!796992 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (toList!4076 lt!1660003)) (= lambda!163855 lambda!163703))))

(declare-fun bs!796993 () Bool)

(assert (= bs!796993 (and b!4472420 b!4471994)))

(assert (=> bs!796993 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163855 lambda!163717))))

(declare-fun bs!796994 () Bool)

(assert (= bs!796994 (and b!4472420 b!4472411)))

(assert (=> bs!796994 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (toList!4076 (extractMap!1090 lt!1659816))) (= lambda!163855 lambda!163852))))

(declare-fun bs!796995 () Bool)

(assert (= bs!796995 (and b!4472420 b!4472342)))

(assert (=> bs!796995 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (toList!4076 lt!1659809)) (= lambda!163855 lambda!163845))))

(declare-fun bs!796996 () Bool)

(assert (= bs!796996 (and b!4472420 b!4471954)))

(assert (=> bs!796996 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163855 lambda!163705))))

(declare-fun bs!796997 () Bool)

(assert (= bs!796997 (and b!4472420 b!4471924)))

(assert (=> bs!796997 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163855 lambda!163701))))

(declare-fun bs!796998 () Bool)

(assert (= bs!796998 (and b!4472420 b!4471993)))

(assert (=> bs!796998 (= (= (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809))) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163855 lambda!163716))))

(assert (=> b!4472420 true))

(declare-fun bs!796999 () Bool)

(declare-fun b!4472421 () Bool)

(assert (= bs!796999 (and b!4472421 b!4472419)))

(declare-fun lambda!163856 () Int)

(assert (=> bs!796999 (= (= (toList!4076 lt!1659809) (t!357384 (toList!4076 lt!1659809))) (= lambda!163856 lambda!163854))))

(declare-fun bs!797000 () Bool)

(assert (= bs!797000 (and b!4472421 b!4471992)))

(assert (=> bs!797000 (= (= (toList!4076 lt!1659809) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163856 lambda!163715))))

(declare-fun bs!797001 () Bool)

(assert (= bs!797001 (and b!4472421 b!4471931)))

(assert (=> bs!797001 (= (= (toList!4076 lt!1659809) (toList!4076 lt!1660003)) (= lambda!163856 lambda!163703))))

(declare-fun bs!797002 () Bool)

(assert (= bs!797002 (and b!4472421 b!4471994)))

(assert (=> bs!797002 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163856 lambda!163717))))

(declare-fun bs!797003 () Bool)

(assert (= bs!797003 (and b!4472421 b!4472411)))

(assert (=> bs!797003 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 lt!1659816))) (= lambda!163856 lambda!163852))))

(declare-fun bs!797004 () Bool)

(assert (= bs!797004 (and b!4472421 b!4472342)))

(assert (=> bs!797004 (= lambda!163856 lambda!163845)))

(declare-fun bs!797005 () Bool)

(assert (= bs!797005 (and b!4472421 b!4471954)))

(assert (=> bs!797005 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163856 lambda!163705))))

(declare-fun bs!797006 () Bool)

(assert (= bs!797006 (and b!4472421 b!4471924)))

(assert (=> bs!797006 (= (= (toList!4076 lt!1659809) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163856 lambda!163701))))

(declare-fun bs!797007 () Bool)

(assert (= bs!797007 (and b!4472421 b!4471993)))

(assert (=> bs!797007 (= (= (toList!4076 lt!1659809) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163856 lambda!163716))))

(declare-fun bs!797008 () Bool)

(assert (= bs!797008 (and b!4472421 b!4472420)))

(assert (=> bs!797008 (= (= (toList!4076 lt!1659809) (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809)))) (= lambda!163856 lambda!163855))))

(assert (=> b!4472421 true))

(declare-fun bs!797009 () Bool)

(declare-fun b!4472414 () Bool)

(assert (= bs!797009 (and b!4472414 b!4471987)))

(declare-fun lambda!163857 () Int)

(assert (=> bs!797009 (= lambda!163857 lambda!163718)))

(declare-fun bs!797010 () Bool)

(assert (= bs!797010 (and b!4472414 b!4471932)))

(assert (=> bs!797010 (= lambda!163857 lambda!163704)))

(declare-fun bs!797011 () Bool)

(assert (= bs!797011 (and b!4472414 b!4472412)))

(assert (=> bs!797011 (= lambda!163857 lambda!163853)))

(declare-fun bs!797012 () Bool)

(assert (= bs!797012 (and b!4472414 b!4472343)))

(assert (=> bs!797012 (= lambda!163857 lambda!163846)))

(declare-fun bs!797013 () Bool)

(assert (= bs!797013 (and b!4472414 b!4471955)))

(assert (=> bs!797013 (= lambda!163857 lambda!163706)))

(declare-fun bs!797014 () Bool)

(assert (= bs!797014 (and b!4472414 b!4471925)))

(assert (=> bs!797014 (= lambda!163857 lambda!163702)))

(declare-fun b!4472413 () Bool)

(declare-fun res!1855769 () Bool)

(declare-fun e!2785041 () Bool)

(assert (=> b!4472413 (=> (not res!1855769) (not e!2785041))))

(declare-fun lt!1660571 () List!50437)

(assert (=> b!4472413 (= res!1855769 (= (length!260 lt!1660571) (length!261 (toList!4076 lt!1659809))))))

(assert (=> b!4472414 (= e!2785041 (= (content!8121 lt!1660571) (content!8121 (map!11030 (toList!4076 lt!1659809) lambda!163857))))))

(declare-fun b!4472415 () Bool)

(declare-fun e!2785042 () Unit!88025)

(declare-fun Unit!88186 () Unit!88025)

(assert (=> b!4472415 (= e!2785042 Unit!88186)))

(declare-fun b!4472417 () Bool)

(assert (=> b!4472417 false))

(declare-fun e!2785040 () Unit!88025)

(declare-fun Unit!88187 () Unit!88025)

(assert (=> b!4472417 (= e!2785040 Unit!88187)))

(declare-fun b!4472418 () Bool)

(declare-fun Unit!88188 () Unit!88025)

(assert (=> b!4472418 (= e!2785040 Unit!88188)))

(assert (=> b!4472419 false))

(declare-fun lt!1660572 () Unit!88025)

(assert (=> b!4472419 (= lt!1660572 (forallContained!2277 (getKeysList!381 (t!357384 (toList!4076 lt!1659809))) lambda!163854 (_1!28579 (h!56079 (toList!4076 lt!1659809)))))))

(declare-fun Unit!88190 () Unit!88025)

(assert (=> b!4472419 (= e!2785042 Unit!88190)))

(declare-fun e!2785039 () List!50437)

(assert (=> b!4472420 (= e!2785039 (Cons!50313 (_1!28579 (h!56079 (toList!4076 lt!1659809))) (getKeysList!381 (t!357384 (toList!4076 lt!1659809)))))))

(declare-fun c!761544 () Bool)

(assert (=> b!4472420 (= c!761544 (containsKey!1494 (t!357384 (toList!4076 lt!1659809)) (_1!28579 (h!56079 (toList!4076 lt!1659809)))))))

(declare-fun lt!1660566 () Unit!88025)

(assert (=> b!4472420 (= lt!1660566 e!2785040)))

(declare-fun c!761543 () Bool)

(assert (=> b!4472420 (= c!761543 (contains!12877 (getKeysList!381 (t!357384 (toList!4076 lt!1659809))) (_1!28579 (h!56079 (toList!4076 lt!1659809)))))))

(declare-fun lt!1660569 () Unit!88025)

(assert (=> b!4472420 (= lt!1660569 e!2785042)))

(declare-fun lt!1660570 () List!50437)

(assert (=> b!4472420 (= lt!1660570 (getKeysList!381 (t!357384 (toList!4076 lt!1659809))))))

(declare-fun lt!1660568 () Unit!88025)

(assert (=> b!4472420 (= lt!1660568 (lemmaForallContainsAddHeadPreserves!123 (t!357384 (toList!4076 lt!1659809)) lt!1660570 (h!56079 (toList!4076 lt!1659809))))))

(assert (=> b!4472420 (forall!10012 lt!1660570 lambda!163855)))

(declare-fun lt!1660567 () Unit!88025)

(assert (=> b!4472420 (= lt!1660567 lt!1660568)))

(declare-fun res!1855768 () Bool)

(assert (=> b!4472421 (=> (not res!1855768) (not e!2785041))))

(assert (=> b!4472421 (= res!1855768 (forall!10012 lt!1660571 lambda!163856))))

(declare-fun d!1364901 () Bool)

(assert (=> d!1364901 e!2785041))

(declare-fun res!1855767 () Bool)

(assert (=> d!1364901 (=> (not res!1855767) (not e!2785041))))

(assert (=> d!1364901 (= res!1855767 (noDuplicate!702 lt!1660571))))

(assert (=> d!1364901 (= lt!1660571 e!2785039)))

(declare-fun c!761545 () Bool)

(assert (=> d!1364901 (= c!761545 ((_ is Cons!50310) (toList!4076 lt!1659809)))))

(assert (=> d!1364901 (invariantList!933 (toList!4076 lt!1659809))))

(assert (=> d!1364901 (= (getKeysList!381 (toList!4076 lt!1659809)) lt!1660571)))

(declare-fun b!4472416 () Bool)

(assert (=> b!4472416 (= e!2785039 Nil!50313)))

(assert (= (and d!1364901 c!761545) b!4472420))

(assert (= (and d!1364901 (not c!761545)) b!4472416))

(assert (= (and b!4472420 c!761544) b!4472417))

(assert (= (and b!4472420 (not c!761544)) b!4472418))

(assert (= (and b!4472420 c!761543) b!4472419))

(assert (= (and b!4472420 (not c!761543)) b!4472415))

(assert (= (and d!1364901 res!1855767) b!4472413))

(assert (= (and b!4472413 res!1855769) b!4472421))

(assert (= (and b!4472421 res!1855768) b!4472414))

(declare-fun m!5181213 () Bool)

(assert (=> b!4472414 m!5181213))

(declare-fun m!5181215 () Bool)

(assert (=> b!4472414 m!5181215))

(assert (=> b!4472414 m!5181215))

(declare-fun m!5181217 () Bool)

(assert (=> b!4472414 m!5181217))

(declare-fun m!5181219 () Bool)

(assert (=> d!1364901 m!5181219))

(assert (=> d!1364901 m!5180141))

(declare-fun m!5181221 () Bool)

(assert (=> b!4472419 m!5181221))

(assert (=> b!4472419 m!5181221))

(declare-fun m!5181223 () Bool)

(assert (=> b!4472419 m!5181223))

(declare-fun m!5181225 () Bool)

(assert (=> b!4472421 m!5181225))

(declare-fun m!5181227 () Bool)

(assert (=> b!4472420 m!5181227))

(declare-fun m!5181229 () Bool)

(assert (=> b!4472420 m!5181229))

(assert (=> b!4472420 m!5181221))

(declare-fun m!5181231 () Bool)

(assert (=> b!4472420 m!5181231))

(declare-fun m!5181233 () Bool)

(assert (=> b!4472420 m!5181233))

(assert (=> b!4472420 m!5181221))

(declare-fun m!5181235 () Bool)

(assert (=> b!4472413 m!5181235))

(assert (=> b!4472413 m!5181083))

(assert (=> b!4471735 d!1364901))

(declare-fun d!1364903 () Bool)

(declare-fun lt!1660573 () Bool)

(assert (=> d!1364903 (= lt!1660573 (select (content!8120 (toList!4075 lm!1477)) (tuple2!50573 hash!344 lt!1659806)))))

(declare-fun e!2785044 () Bool)

(assert (=> d!1364903 (= lt!1660573 e!2785044)))

(declare-fun res!1855770 () Bool)

(assert (=> d!1364903 (=> (not res!1855770) (not e!2785044))))

(assert (=> d!1364903 (= res!1855770 ((_ is Cons!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364903 (= (contains!12875 (toList!4075 lm!1477) (tuple2!50573 hash!344 lt!1659806)) lt!1660573)))

(declare-fun b!4472422 () Bool)

(declare-fun e!2785043 () Bool)

(assert (=> b!4472422 (= e!2785044 e!2785043)))

(declare-fun res!1855771 () Bool)

(assert (=> b!4472422 (=> res!1855771 e!2785043)))

(assert (=> b!4472422 (= res!1855771 (= (h!56080 (toList!4075 lm!1477)) (tuple2!50573 hash!344 lt!1659806)))))

(declare-fun b!4472423 () Bool)

(assert (=> b!4472423 (= e!2785043 (contains!12875 (t!357385 (toList!4075 lm!1477)) (tuple2!50573 hash!344 lt!1659806)))))

(assert (= (and d!1364903 res!1855770) b!4472422))

(assert (= (and b!4472422 (not res!1855771)) b!4472423))

(assert (=> d!1364903 m!5179681))

(declare-fun m!5181237 () Bool)

(assert (=> d!1364903 m!5181237))

(declare-fun m!5181239 () Bool)

(assert (=> b!4472423 m!5181239))

(assert (=> d!1364453 d!1364903))

(declare-fun d!1364905 () Bool)

(assert (=> d!1364905 (contains!12875 (toList!4075 lm!1477) (tuple2!50573 hash!344 lt!1659806))))

(assert (=> d!1364905 true))

(declare-fun _$14!993 () Unit!88025)

(assert (=> d!1364905 (= (choose!28625 (toList!4075 lm!1477) hash!344 lt!1659806) _$14!993)))

(declare-fun bs!797015 () Bool)

(assert (= bs!797015 d!1364905))

(assert (=> bs!797015 m!5179693))

(assert (=> d!1364453 d!1364905))

(assert (=> d!1364453 d!1364539))

(declare-fun d!1364907 () Bool)

(assert (=> d!1364907 (= (invariantList!933 (toList!4076 lt!1659835)) (noDuplicatedKeys!216 (toList!4076 lt!1659835)))))

(declare-fun bs!797016 () Bool)

(assert (= bs!797016 d!1364907))

(declare-fun m!5181241 () Bool)

(assert (=> bs!797016 m!5181241))

(assert (=> d!1364409 d!1364907))

(declare-fun d!1364909 () Bool)

(declare-fun res!1855772 () Bool)

(declare-fun e!2785045 () Bool)

(assert (=> d!1364909 (=> res!1855772 e!2785045)))

(assert (=> d!1364909 (= res!1855772 ((_ is Nil!50311) (t!357385 (toList!4075 lm!1477))))))

(assert (=> d!1364909 (= (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163663) e!2785045)))

(declare-fun b!4472424 () Bool)

(declare-fun e!2785046 () Bool)

(assert (=> b!4472424 (= e!2785045 e!2785046)))

(declare-fun res!1855773 () Bool)

(assert (=> b!4472424 (=> (not res!1855773) (not e!2785046))))

(assert (=> b!4472424 (= res!1855773 (dynLambda!21022 lambda!163663 (h!56080 (t!357385 (toList!4075 lm!1477)))))))

(declare-fun b!4472425 () Bool)

(assert (=> b!4472425 (= e!2785046 (forall!10008 (t!357385 (t!357385 (toList!4075 lm!1477))) lambda!163663))))

(assert (= (and d!1364909 (not res!1855772)) b!4472424))

(assert (= (and b!4472424 res!1855773) b!4472425))

(declare-fun b_lambda!148617 () Bool)

(assert (=> (not b_lambda!148617) (not b!4472424)))

(declare-fun m!5181243 () Bool)

(assert (=> b!4472424 m!5181243))

(declare-fun m!5181245 () Bool)

(assert (=> b!4472425 m!5181245))

(assert (=> d!1364409 d!1364909))

(declare-fun d!1364911 () Bool)

(assert (=> d!1364911 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659812) lt!1659807))))

(declare-fun lt!1660574 () Unit!88025)

(assert (=> d!1364911 (= lt!1660574 (choose!28636 (toList!4075 lt!1659812) lt!1659807))))

(declare-fun e!2785047 () Bool)

(assert (=> d!1364911 e!2785047))

(declare-fun res!1855774 () Bool)

(assert (=> d!1364911 (=> (not res!1855774) (not e!2785047))))

(assert (=> d!1364911 (= res!1855774 (isStrictlySorted!347 (toList!4075 lt!1659812)))))

(assert (=> d!1364911 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lt!1659812) lt!1659807) lt!1660574)))

(declare-fun b!4472426 () Bool)

(assert (=> b!4472426 (= e!2785047 (containsKey!1493 (toList!4075 lt!1659812) lt!1659807))))

(assert (= (and d!1364911 res!1855774) b!4472426))

(assert (=> d!1364911 m!5179935))

(assert (=> d!1364911 m!5179935))

(assert (=> d!1364911 m!5179937))

(declare-fun m!5181247 () Bool)

(assert (=> d!1364911 m!5181247))

(declare-fun m!5181249 () Bool)

(assert (=> d!1364911 m!5181249))

(assert (=> b!4472426 m!5179931))

(assert (=> b!4471704 d!1364911))

(declare-fun d!1364913 () Bool)

(assert (=> d!1364913 (= (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1659812) lt!1659807)) (not (isEmpty!28505 (getValueByKey!924 (toList!4075 lt!1659812) lt!1659807))))))

(declare-fun bs!797017 () Bool)

(assert (= bs!797017 d!1364913))

(assert (=> bs!797017 m!5179935))

(declare-fun m!5181251 () Bool)

(assert (=> bs!797017 m!5181251))

(assert (=> b!4471704 d!1364913))

(declare-fun d!1364915 () Bool)

(declare-fun c!761546 () Bool)

(assert (=> d!1364915 (= c!761546 (and ((_ is Cons!50311) (toList!4075 lt!1659812)) (= (_1!28580 (h!56080 (toList!4075 lt!1659812))) lt!1659807)))))

(declare-fun e!2785050 () Option!10938)

(assert (=> d!1364915 (= (getValueByKey!924 (toList!4075 lt!1659812) lt!1659807) e!2785050)))

(declare-fun b!4472430 () Bool)

(declare-fun e!2785051 () Option!10938)

(assert (=> b!4472430 (= e!2785051 None!10937)))

(declare-fun b!4472428 () Bool)

(assert (=> b!4472428 (= e!2785050 e!2785051)))

(declare-fun c!761547 () Bool)

(assert (=> b!4472428 (= c!761547 (and ((_ is Cons!50311) (toList!4075 lt!1659812)) (not (= (_1!28580 (h!56080 (toList!4075 lt!1659812))) lt!1659807))))))

(declare-fun b!4472427 () Bool)

(assert (=> b!4472427 (= e!2785050 (Some!10937 (_2!28580 (h!56080 (toList!4075 lt!1659812)))))))

(declare-fun b!4472429 () Bool)

(assert (=> b!4472429 (= e!2785051 (getValueByKey!924 (t!357385 (toList!4075 lt!1659812)) lt!1659807))))

(assert (= (and d!1364915 c!761546) b!4472427))

(assert (= (and d!1364915 (not c!761546)) b!4472428))

(assert (= (and b!4472428 c!761547) b!4472429))

(assert (= (and b!4472428 (not c!761547)) b!4472430))

(declare-fun m!5181253 () Bool)

(assert (=> b!4472429 m!5181253))

(assert (=> b!4471704 d!1364915))

(declare-fun d!1364917 () Bool)

(assert (=> d!1364917 (= (invariantList!933 (toList!4076 lt!1660024)) (noDuplicatedKeys!216 (toList!4076 lt!1660024)))))

(declare-fun bs!797018 () Bool)

(assert (= bs!797018 d!1364917))

(declare-fun m!5181255 () Bool)

(assert (=> bs!797018 m!5181255))

(assert (=> d!1364527 d!1364917))

(declare-fun d!1364919 () Bool)

(declare-fun res!1855775 () Bool)

(declare-fun e!2785052 () Bool)

(assert (=> d!1364919 (=> res!1855775 e!2785052)))

(assert (=> d!1364919 (= res!1855775 ((_ is Nil!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364919 (= (forall!10008 (toList!4075 lm!1477) lambda!163689) e!2785052)))

(declare-fun b!4472431 () Bool)

(declare-fun e!2785053 () Bool)

(assert (=> b!4472431 (= e!2785052 e!2785053)))

(declare-fun res!1855776 () Bool)

(assert (=> b!4472431 (=> (not res!1855776) (not e!2785053))))

(assert (=> b!4472431 (= res!1855776 (dynLambda!21022 lambda!163689 (h!56080 (toList!4075 lm!1477))))))

(declare-fun b!4472432 () Bool)

(assert (=> b!4472432 (= e!2785053 (forall!10008 (t!357385 (toList!4075 lm!1477)) lambda!163689))))

(assert (= (and d!1364919 (not res!1855775)) b!4472431))

(assert (= (and b!4472431 res!1855776) b!4472432))

(declare-fun b_lambda!148619 () Bool)

(assert (=> (not b_lambda!148619) (not b!4472431)))

(declare-fun m!5181257 () Bool)

(assert (=> b!4472431 m!5181257))

(declare-fun m!5181259 () Bool)

(assert (=> b!4472432 m!5181259))

(assert (=> d!1364527 d!1364919))

(declare-fun d!1364921 () Bool)

(assert (=> d!1364921 (= (isEmpty!28501 (toList!4075 lm!1477)) ((_ is Nil!50311) (toList!4075 lm!1477)))))

(assert (=> d!1364531 d!1364921))

(assert (=> b!4471706 d!1364913))

(assert (=> b!4471706 d!1364915))

(declare-fun d!1364923 () Bool)

(declare-fun lt!1660575 () Bool)

(assert (=> d!1364923 (= lt!1660575 (select (content!8121 (keys!17378 (extractMap!1090 lt!1659816))) key!3287))))

(declare-fun e!2785055 () Bool)

(assert (=> d!1364923 (= lt!1660575 e!2785055)))

(declare-fun res!1855778 () Bool)

(assert (=> d!1364923 (=> (not res!1855778) (not e!2785055))))

(assert (=> d!1364923 (= res!1855778 ((_ is Cons!50313) (keys!17378 (extractMap!1090 lt!1659816))))))

(assert (=> d!1364923 (= (contains!12877 (keys!17378 (extractMap!1090 lt!1659816)) key!3287) lt!1660575)))

(declare-fun b!4472433 () Bool)

(declare-fun e!2785054 () Bool)

(assert (=> b!4472433 (= e!2785055 e!2785054)))

(declare-fun res!1855777 () Bool)

(assert (=> b!4472433 (=> res!1855777 e!2785054)))

(assert (=> b!4472433 (= res!1855777 (= (h!56084 (keys!17378 (extractMap!1090 lt!1659816))) key!3287))))

(declare-fun b!4472434 () Bool)

(assert (=> b!4472434 (= e!2785054 (contains!12877 (t!357387 (keys!17378 (extractMap!1090 lt!1659816))) key!3287))))

(assert (= (and d!1364923 res!1855778) b!4472433))

(assert (= (and b!4472433 (not res!1855777)) b!4472434))

(assert (=> d!1364923 m!5179871))

(declare-fun m!5181261 () Bool)

(assert (=> d!1364923 m!5181261))

(declare-fun m!5181263 () Bool)

(assert (=> d!1364923 m!5181263))

(declare-fun m!5181265 () Bool)

(assert (=> b!4472434 m!5181265))

(assert (=> b!4471694 d!1364923))

(assert (=> b!4471694 d!1364895))

(declare-fun d!1364925 () Bool)

(declare-fun e!2785057 () Bool)

(assert (=> d!1364925 e!2785057))

(declare-fun res!1855779 () Bool)

(assert (=> d!1364925 (=> res!1855779 e!2785057)))

(declare-fun lt!1660576 () Bool)

(assert (=> d!1364925 (= res!1855779 (not lt!1660576))))

(declare-fun lt!1660577 () Bool)

(assert (=> d!1364925 (= lt!1660576 lt!1660577)))

(declare-fun lt!1660578 () Unit!88025)

(declare-fun e!2785056 () Unit!88025)

(assert (=> d!1364925 (= lt!1660578 e!2785056)))

(declare-fun c!761548 () Bool)

(assert (=> d!1364925 (= c!761548 lt!1660577)))

(assert (=> d!1364925 (= lt!1660577 (containsKey!1493 (toList!4075 lt!1660009) (_1!28580 lt!1659810)))))

(assert (=> d!1364925 (= (contains!12874 lt!1660009 (_1!28580 lt!1659810)) lt!1660576)))

(declare-fun b!4472435 () Bool)

(declare-fun lt!1660579 () Unit!88025)

(assert (=> b!4472435 (= e!2785056 lt!1660579)))

(assert (=> b!4472435 (= lt!1660579 (lemmaContainsKeyImpliesGetValueByKeyDefined!828 (toList!4075 lt!1660009) (_1!28580 lt!1659810)))))

(assert (=> b!4472435 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1660009) (_1!28580 lt!1659810)))))

(declare-fun b!4472436 () Bool)

(declare-fun Unit!88199 () Unit!88025)

(assert (=> b!4472436 (= e!2785056 Unit!88199)))

(declare-fun b!4472437 () Bool)

(assert (=> b!4472437 (= e!2785057 (isDefined!8225 (getValueByKey!924 (toList!4075 lt!1660009) (_1!28580 lt!1659810))))))

(assert (= (and d!1364925 c!761548) b!4472435))

(assert (= (and d!1364925 (not c!761548)) b!4472436))

(assert (= (and d!1364925 (not res!1855779)) b!4472437))

(declare-fun m!5181267 () Bool)

(assert (=> d!1364925 m!5181267))

(declare-fun m!5181269 () Bool)

(assert (=> b!4472435 m!5181269))

(assert (=> b!4472435 m!5179919))

(assert (=> b!4472435 m!5179919))

(declare-fun m!5181271 () Bool)

(assert (=> b!4472435 m!5181271))

(assert (=> b!4472437 m!5179919))

(assert (=> b!4472437 m!5179919))

(assert (=> b!4472437 m!5181271))

(assert (=> d!1364517 d!1364925))

(declare-fun d!1364927 () Bool)

(declare-fun c!761549 () Bool)

(assert (=> d!1364927 (= c!761549 (and ((_ is Cons!50311) lt!1660010) (= (_1!28580 (h!56080 lt!1660010)) (_1!28580 lt!1659810))))))

(declare-fun e!2785058 () Option!10938)

(assert (=> d!1364927 (= (getValueByKey!924 lt!1660010 (_1!28580 lt!1659810)) e!2785058)))

(declare-fun b!4472441 () Bool)

(declare-fun e!2785059 () Option!10938)

(assert (=> b!4472441 (= e!2785059 None!10937)))

(declare-fun b!4472439 () Bool)

(assert (=> b!4472439 (= e!2785058 e!2785059)))

(declare-fun c!761550 () Bool)

(assert (=> b!4472439 (= c!761550 (and ((_ is Cons!50311) lt!1660010) (not (= (_1!28580 (h!56080 lt!1660010)) (_1!28580 lt!1659810)))))))

(declare-fun b!4472438 () Bool)

(assert (=> b!4472438 (= e!2785058 (Some!10937 (_2!28580 (h!56080 lt!1660010))))))

(declare-fun b!4472440 () Bool)

(assert (=> b!4472440 (= e!2785059 (getValueByKey!924 (t!357385 lt!1660010) (_1!28580 lt!1659810)))))

(assert (= (and d!1364927 c!761549) b!4472438))

(assert (= (and d!1364927 (not c!761549)) b!4472439))

(assert (= (and b!4472439 c!761550) b!4472440))

(assert (= (and b!4472439 (not c!761550)) b!4472441))

(declare-fun m!5181273 () Bool)

(assert (=> b!4472440 m!5181273))

(assert (=> d!1364517 d!1364927))

(declare-fun d!1364929 () Bool)

(assert (=> d!1364929 (= (getValueByKey!924 lt!1660010 (_1!28580 lt!1659810)) (Some!10937 (_2!28580 lt!1659810)))))

(declare-fun lt!1660580 () Unit!88025)

(assert (=> d!1364929 (= lt!1660580 (choose!28628 lt!1660010 (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(declare-fun e!2785060 () Bool)

(assert (=> d!1364929 e!2785060))

(declare-fun res!1855780 () Bool)

(assert (=> d!1364929 (=> (not res!1855780) (not e!2785060))))

(assert (=> d!1364929 (= res!1855780 (isStrictlySorted!347 lt!1660010))))

(assert (=> d!1364929 (= (lemmaContainsTupThenGetReturnValue!590 lt!1660010 (_1!28580 lt!1659810) (_2!28580 lt!1659810)) lt!1660580)))

(declare-fun b!4472442 () Bool)

(declare-fun res!1855781 () Bool)

(assert (=> b!4472442 (=> (not res!1855781) (not e!2785060))))

(assert (=> b!4472442 (= res!1855781 (containsKey!1493 lt!1660010 (_1!28580 lt!1659810)))))

(declare-fun b!4472443 () Bool)

(assert (=> b!4472443 (= e!2785060 (contains!12875 lt!1660010 (tuple2!50573 (_1!28580 lt!1659810) (_2!28580 lt!1659810))))))

(assert (= (and d!1364929 res!1855780) b!4472442))

(assert (= (and b!4472442 res!1855781) b!4472443))

(assert (=> d!1364929 m!5179913))

(declare-fun m!5181275 () Bool)

(assert (=> d!1364929 m!5181275))

(declare-fun m!5181277 () Bool)

(assert (=> d!1364929 m!5181277))

(declare-fun m!5181279 () Bool)

(assert (=> b!4472442 m!5181279))

(declare-fun m!5181281 () Bool)

(assert (=> b!4472443 m!5181281))

(assert (=> d!1364517 d!1364929))

(declare-fun b!4472444 () Bool)

(declare-fun e!2785061 () List!50435)

(declare-fun call!311428 () List!50435)

(assert (=> b!4472444 (= e!2785061 call!311428)))

(declare-fun b!4472445 () Bool)

(declare-fun e!2785064 () List!50435)

(declare-fun call!311429 () List!50435)

(assert (=> b!4472445 (= e!2785064 call!311429)))

(declare-fun d!1364931 () Bool)

(declare-fun e!2785063 () Bool)

(assert (=> d!1364931 e!2785063))

(declare-fun res!1855783 () Bool)

(assert (=> d!1364931 (=> (not res!1855783) (not e!2785063))))

(declare-fun lt!1660581 () List!50435)

(assert (=> d!1364931 (= res!1855783 (isStrictlySorted!347 lt!1660581))))

(assert (=> d!1364931 (= lt!1660581 e!2785064)))

(declare-fun c!761553 () Bool)

(assert (=> d!1364931 (= c!761553 (and ((_ is Cons!50311) (toList!4075 lt!1659812)) (bvslt (_1!28580 (h!56080 (toList!4075 lt!1659812))) (_1!28580 lt!1659810))))))

(assert (=> d!1364931 (isStrictlySorted!347 (toList!4075 lt!1659812))))

(assert (=> d!1364931 (= (insertStrictlySorted!336 (toList!4075 lt!1659812) (_1!28580 lt!1659810) (_2!28580 lt!1659810)) lt!1660581)))

(declare-fun b!4472446 () Bool)

(assert (=> b!4472446 (= e!2785063 (contains!12875 lt!1660581 (tuple2!50573 (_1!28580 lt!1659810) (_2!28580 lt!1659810))))))

(declare-fun b!4472447 () Bool)

(declare-fun e!2785062 () List!50435)

(assert (=> b!4472447 (= e!2785064 e!2785062)))

(declare-fun c!761554 () Bool)

(assert (=> b!4472447 (= c!761554 (and ((_ is Cons!50311) (toList!4075 lt!1659812)) (= (_1!28580 (h!56080 (toList!4075 lt!1659812))) (_1!28580 lt!1659810))))))

(declare-fun b!4472448 () Bool)

(declare-fun c!761551 () Bool)

(assert (=> b!4472448 (= c!761551 (and ((_ is Cons!50311) (toList!4075 lt!1659812)) (bvsgt (_1!28580 (h!56080 (toList!4075 lt!1659812))) (_1!28580 lt!1659810))))))

(assert (=> b!4472448 (= e!2785062 e!2785061)))

(declare-fun e!2785065 () List!50435)

(declare-fun bm!311423 () Bool)

(assert (=> bm!311423 (= call!311429 ($colon$colon!857 e!2785065 (ite c!761553 (h!56080 (toList!4075 lt!1659812)) (tuple2!50573 (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))))

(declare-fun c!761552 () Bool)

(assert (=> bm!311423 (= c!761552 c!761553)))

(declare-fun b!4472449 () Bool)

(assert (=> b!4472449 (= e!2785061 call!311428)))

(declare-fun b!4472450 () Bool)

(assert (=> b!4472450 (= e!2785065 (insertStrictlySorted!336 (t!357385 (toList!4075 lt!1659812)) (_1!28580 lt!1659810) (_2!28580 lt!1659810)))))

(declare-fun b!4472451 () Bool)

(assert (=> b!4472451 (= e!2785065 (ite c!761554 (t!357385 (toList!4075 lt!1659812)) (ite c!761551 (Cons!50311 (h!56080 (toList!4075 lt!1659812)) (t!357385 (toList!4075 lt!1659812))) Nil!50311)))))

(declare-fun bm!311424 () Bool)

(declare-fun call!311430 () List!50435)

(assert (=> bm!311424 (= call!311430 call!311429)))

(declare-fun b!4472452 () Bool)

(assert (=> b!4472452 (= e!2785062 call!311430)))

(declare-fun b!4472453 () Bool)

(declare-fun res!1855782 () Bool)

(assert (=> b!4472453 (=> (not res!1855782) (not e!2785063))))

(assert (=> b!4472453 (= res!1855782 (containsKey!1493 lt!1660581 (_1!28580 lt!1659810)))))

(declare-fun bm!311425 () Bool)

(assert (=> bm!311425 (= call!311428 call!311430)))

(assert (= (and d!1364931 c!761553) b!4472445))

(assert (= (and d!1364931 (not c!761553)) b!4472447))

(assert (= (and b!4472447 c!761554) b!4472452))

(assert (= (and b!4472447 (not c!761554)) b!4472448))

(assert (= (and b!4472448 c!761551) b!4472449))

(assert (= (and b!4472448 (not c!761551)) b!4472444))

(assert (= (or b!4472449 b!4472444) bm!311425))

(assert (= (or b!4472452 bm!311425) bm!311424))

(assert (= (or b!4472445 bm!311424) bm!311423))

(assert (= (and bm!311423 c!761552) b!4472450))

(assert (= (and bm!311423 (not c!761552)) b!4472451))

(assert (= (and d!1364931 res!1855783) b!4472453))

(assert (= (and b!4472453 res!1855782) b!4472446))

(declare-fun m!5181283 () Bool)

(assert (=> b!4472453 m!5181283))

(declare-fun m!5181285 () Bool)

(assert (=> b!4472450 m!5181285))

(declare-fun m!5181287 () Bool)

(assert (=> b!4472446 m!5181287))

(declare-fun m!5181289 () Bool)

(assert (=> d!1364931 m!5181289))

(assert (=> d!1364931 m!5181249))

(declare-fun m!5181291 () Bool)

(assert (=> bm!311423 m!5181291))

(assert (=> d!1364517 d!1364931))

(assert (=> d!1364507 d!1364713))

(declare-fun bs!797019 () Bool)

(declare-fun b!4472457 () Bool)

(assert (= bs!797019 (and b!4472457 b!4472361)))

(declare-fun lambda!163858 () Int)

(assert (=> bs!797019 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163858 lambda!163847))))

(declare-fun bs!797020 () Bool)

(assert (= bs!797020 (and b!4472457 d!1364389)))

(assert (=> bs!797020 (not (= lambda!163858 lambda!163644))))

(declare-fun bs!797021 () Bool)

(assert (= bs!797021 (and b!4472457 d!1364843)))

(assert (=> bs!797021 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660502) (= lambda!163858 lambda!163843))))

(declare-fun bs!797022 () Bool)

(assert (= bs!797022 (and b!4472457 d!1364667)))

(assert (=> bs!797022 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660279) (= lambda!163858 lambda!163791))))

(declare-fun bs!797023 () Bool)

(assert (= bs!797023 (and b!4472457 b!4472293)))

(assert (=> bs!797023 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163858 lambda!163834))))

(declare-fun bs!797024 () Bool)

(assert (= bs!797024 (and b!4472457 b!4472294)))

(assert (=> bs!797024 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163858 lambda!163835))))

(declare-fun bs!797025 () Bool)

(assert (= bs!797025 (and b!4472457 b!4472362)))

(assert (=> bs!797025 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163858 lambda!163848))))

(declare-fun bs!797026 () Bool)

(assert (= bs!797026 (and b!4472457 b!4472318)))

(assert (=> bs!797026 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163858 lambda!163839))))

(assert (=> bs!797024 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660485) (= lambda!163858 lambda!163836))))

(declare-fun bs!797027 () Bool)

(assert (= bs!797027 (and b!4472457 d!1364879)))

(assert (=> bs!797027 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660535) (= lambda!163858 lambda!163850))))

(declare-fun bs!797028 () Bool)

(assert (= bs!797028 (and b!4472457 b!4472319)))

(assert (=> bs!797028 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660511) (= lambda!163858 lambda!163841))))

(declare-fun bs!797029 () Bool)

(assert (= bs!797029 (and b!4472457 b!4472076)))

(assert (=> bs!797029 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660288) (= lambda!163858 lambda!163790))))

(declare-fun bs!797030 () Bool)

(assert (= bs!797030 (and b!4472457 b!4472109)))

(assert (=> bs!797030 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660339) (= lambda!163858 lambda!163800))))

(assert (=> bs!797030 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163858 lambda!163799))))

(declare-fun bs!797031 () Bool)

(assert (= bs!797031 (and b!4472457 d!1364741)))

(assert (=> bs!797031 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660330) (= lambda!163858 lambda!163802))))

(assert (=> bs!797029 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163858 lambda!163788))))

(declare-fun bs!797032 () Bool)

(assert (= bs!797032 (and b!4472457 b!4472075)))

(assert (=> bs!797032 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163858 lambda!163787))))

(assert (=> bs!797025 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660544) (= lambda!163858 lambda!163849))))

(declare-fun bs!797033 () Bool)

(assert (= bs!797033 (and b!4472457 b!4472108)))

(assert (=> bs!797033 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163858 lambda!163798))))

(declare-fun bs!797034 () Bool)

(assert (= bs!797034 (and b!4472457 d!1364819)))

(assert (=> bs!797034 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660476) (= lambda!163858 lambda!163837))))

(assert (=> bs!797028 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163858 lambda!163840))))

(assert (=> b!4472457 true))

(declare-fun bs!797035 () Bool)

(declare-fun b!4472458 () Bool)

(assert (= bs!797035 (and b!4472458 b!4472361)))

(declare-fun lambda!163859 () Int)

(assert (=> bs!797035 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163859 lambda!163847))))

(declare-fun bs!797036 () Bool)

(assert (= bs!797036 (and b!4472458 d!1364389)))

(assert (=> bs!797036 (not (= lambda!163859 lambda!163644))))

(declare-fun bs!797037 () Bool)

(assert (= bs!797037 (and b!4472458 d!1364843)))

(assert (=> bs!797037 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660502) (= lambda!163859 lambda!163843))))

(declare-fun bs!797038 () Bool)

(assert (= bs!797038 (and b!4472458 d!1364667)))

(assert (=> bs!797038 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660279) (= lambda!163859 lambda!163791))))

(declare-fun bs!797039 () Bool)

(assert (= bs!797039 (and b!4472458 b!4472293)))

(assert (=> bs!797039 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163859 lambda!163834))))

(declare-fun bs!797040 () Bool)

(assert (= bs!797040 (and b!4472458 b!4472294)))

(assert (=> bs!797040 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163859 lambda!163835))))

(declare-fun bs!797041 () Bool)

(assert (= bs!797041 (and b!4472458 b!4472457)))

(assert (=> bs!797041 (= lambda!163859 lambda!163858)))

(declare-fun bs!797042 () Bool)

(assert (= bs!797042 (and b!4472458 b!4472362)))

(assert (=> bs!797042 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163859 lambda!163848))))

(declare-fun bs!797043 () Bool)

(assert (= bs!797043 (and b!4472458 b!4472318)))

(assert (=> bs!797043 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163859 lambda!163839))))

(assert (=> bs!797040 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660485) (= lambda!163859 lambda!163836))))

(declare-fun bs!797044 () Bool)

(assert (= bs!797044 (and b!4472458 d!1364879)))

(assert (=> bs!797044 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660535) (= lambda!163859 lambda!163850))))

(declare-fun bs!797045 () Bool)

(assert (= bs!797045 (and b!4472458 b!4472319)))

(assert (=> bs!797045 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660511) (= lambda!163859 lambda!163841))))

(declare-fun bs!797046 () Bool)

(assert (= bs!797046 (and b!4472458 b!4472076)))

(assert (=> bs!797046 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660288) (= lambda!163859 lambda!163790))))

(declare-fun bs!797047 () Bool)

(assert (= bs!797047 (and b!4472458 b!4472109)))

(assert (=> bs!797047 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660339) (= lambda!163859 lambda!163800))))

(assert (=> bs!797047 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163859 lambda!163799))))

(declare-fun bs!797048 () Bool)

(assert (= bs!797048 (and b!4472458 d!1364741)))

(assert (=> bs!797048 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660330) (= lambda!163859 lambda!163802))))

(assert (=> bs!797046 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163859 lambda!163788))))

(declare-fun bs!797049 () Bool)

(assert (= bs!797049 (and b!4472458 b!4472075)))

(assert (=> bs!797049 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163859 lambda!163787))))

(assert (=> bs!797042 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660544) (= lambda!163859 lambda!163849))))

(declare-fun bs!797050 () Bool)

(assert (= bs!797050 (and b!4472458 b!4472108)))

(assert (=> bs!797050 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163859 lambda!163798))))

(declare-fun bs!797051 () Bool)

(assert (= bs!797051 (and b!4472458 d!1364819)))

(assert (=> bs!797051 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660476) (= lambda!163859 lambda!163837))))

(assert (=> bs!797045 (= (= (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163859 lambda!163840))))

(assert (=> b!4472458 true))

(declare-fun lambda!163860 () Int)

(declare-fun lt!1660598 () ListMap!3337)

(assert (=> bs!797035 (= (= lt!1660598 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163860 lambda!163847))))

(assert (=> bs!797036 (not (= lambda!163860 lambda!163644))))

(assert (=> bs!797037 (= (= lt!1660598 lt!1660502) (= lambda!163860 lambda!163843))))

(assert (=> bs!797038 (= (= lt!1660598 lt!1660279) (= lambda!163860 lambda!163791))))

(assert (=> bs!797039 (= (= lt!1660598 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163860 lambda!163834))))

(assert (=> bs!797040 (= (= lt!1660598 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163860 lambda!163835))))

(assert (=> b!4472458 (= (= lt!1660598 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) (= lambda!163860 lambda!163859))))

(assert (=> bs!797041 (= (= lt!1660598 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) (= lambda!163860 lambda!163858))))

(assert (=> bs!797042 (= (= lt!1660598 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163860 lambda!163848))))

(assert (=> bs!797043 (= (= lt!1660598 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163860 lambda!163839))))

(assert (=> bs!797040 (= (= lt!1660598 lt!1660485) (= lambda!163860 lambda!163836))))

(assert (=> bs!797044 (= (= lt!1660598 lt!1660535) (= lambda!163860 lambda!163850))))

(assert (=> bs!797045 (= (= lt!1660598 lt!1660511) (= lambda!163860 lambda!163841))))

(assert (=> bs!797046 (= (= lt!1660598 lt!1660288) (= lambda!163860 lambda!163790))))

(assert (=> bs!797047 (= (= lt!1660598 lt!1660339) (= lambda!163860 lambda!163800))))

(assert (=> bs!797047 (= (= lt!1660598 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163860 lambda!163799))))

(assert (=> bs!797048 (= (= lt!1660598 lt!1660330) (= lambda!163860 lambda!163802))))

(assert (=> bs!797046 (= (= lt!1660598 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163860 lambda!163788))))

(assert (=> bs!797049 (= (= lt!1660598 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163860 lambda!163787))))

(assert (=> bs!797042 (= (= lt!1660598 lt!1660544) (= lambda!163860 lambda!163849))))

(assert (=> bs!797050 (= (= lt!1660598 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163860 lambda!163798))))

(assert (=> bs!797051 (= (= lt!1660598 lt!1660476) (= lambda!163860 lambda!163837))))

(assert (=> bs!797045 (= (= lt!1660598 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163860 lambda!163840))))

(assert (=> b!4472458 true))

(declare-fun bs!797052 () Bool)

(declare-fun d!1364933 () Bool)

(assert (= bs!797052 (and d!1364933 b!4472361)))

(declare-fun lt!1660589 () ListMap!3337)

(declare-fun lambda!163861 () Int)

(assert (=> bs!797052 (= (= lt!1660589 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163861 lambda!163847))))

(declare-fun bs!797053 () Bool)

(assert (= bs!797053 (and d!1364933 d!1364389)))

(assert (=> bs!797053 (not (= lambda!163861 lambda!163644))))

(declare-fun bs!797054 () Bool)

(assert (= bs!797054 (and d!1364933 d!1364843)))

(assert (=> bs!797054 (= (= lt!1660589 lt!1660502) (= lambda!163861 lambda!163843))))

(declare-fun bs!797055 () Bool)

(assert (= bs!797055 (and d!1364933 d!1364667)))

(assert (=> bs!797055 (= (= lt!1660589 lt!1660279) (= lambda!163861 lambda!163791))))

(declare-fun bs!797056 () Bool)

(assert (= bs!797056 (and d!1364933 b!4472293)))

(assert (=> bs!797056 (= (= lt!1660589 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163861 lambda!163834))))

(declare-fun bs!797057 () Bool)

(assert (= bs!797057 (and d!1364933 b!4472294)))

(assert (=> bs!797057 (= (= lt!1660589 (extractMap!1090 (t!357385 lt!1659816))) (= lambda!163861 lambda!163835))))

(declare-fun bs!797058 () Bool)

(assert (= bs!797058 (and d!1364933 b!4472458)))

(assert (=> bs!797058 (= (= lt!1660589 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) (= lambda!163861 lambda!163859))))

(declare-fun bs!797059 () Bool)

(assert (= bs!797059 (and d!1364933 b!4472457)))

(assert (=> bs!797059 (= (= lt!1660589 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) (= lambda!163861 lambda!163858))))

(declare-fun bs!797060 () Bool)

(assert (= bs!797060 (and d!1364933 b!4472362)))

(assert (=> bs!797060 (= (= lt!1660589 (extractMap!1090 (t!357385 (t!357385 (toList!4075 lm!1477))))) (= lambda!163861 lambda!163848))))

(declare-fun bs!797061 () Bool)

(assert (= bs!797061 (and d!1364933 b!4472318)))

(assert (=> bs!797061 (= (= lt!1660589 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163861 lambda!163839))))

(assert (=> bs!797057 (= (= lt!1660589 lt!1660485) (= lambda!163861 lambda!163836))))

(declare-fun bs!797062 () Bool)

(assert (= bs!797062 (and d!1364933 d!1364879)))

(assert (=> bs!797062 (= (= lt!1660589 lt!1660535) (= lambda!163861 lambda!163850))))

(declare-fun bs!797063 () Bool)

(assert (= bs!797063 (and d!1364933 b!4472319)))

(assert (=> bs!797063 (= (= lt!1660589 lt!1660511) (= lambda!163861 lambda!163841))))

(declare-fun bs!797064 () Bool)

(assert (= bs!797064 (and d!1364933 b!4472076)))

(assert (=> bs!797064 (= (= lt!1660589 lt!1660288) (= lambda!163861 lambda!163790))))

(declare-fun bs!797065 () Bool)

(assert (= bs!797065 (and d!1364933 b!4472109)))

(assert (=> bs!797065 (= (= lt!1660589 lt!1660339) (= lambda!163861 lambda!163800))))

(assert (=> bs!797058 (= (= lt!1660589 lt!1660598) (= lambda!163861 lambda!163860))))

(assert (=> bs!797065 (= (= lt!1660589 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163861 lambda!163799))))

(declare-fun bs!797066 () Bool)

(assert (= bs!797066 (and d!1364933 d!1364741)))

(assert (=> bs!797066 (= (= lt!1660589 lt!1660330) (= lambda!163861 lambda!163802))))

(assert (=> bs!797064 (= (= lt!1660589 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163861 lambda!163788))))

(declare-fun bs!797067 () Bool)

(assert (= bs!797067 (and d!1364933 b!4472075)))

(assert (=> bs!797067 (= (= lt!1660589 (extractMap!1090 (t!357385 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163861 lambda!163787))))

(assert (=> bs!797060 (= (= lt!1660589 lt!1660544) (= lambda!163861 lambda!163849))))

(declare-fun bs!797068 () Bool)

(assert (= bs!797068 (and d!1364933 b!4472108)))

(assert (=> bs!797068 (= (= lt!1660589 (extractMap!1090 (t!357385 (Cons!50311 lt!1659810 Nil!50311)))) (= lambda!163861 lambda!163798))))

(declare-fun bs!797069 () Bool)

(assert (= bs!797069 (and d!1364933 d!1364819)))

(assert (=> bs!797069 (= (= lt!1660589 lt!1660476) (= lambda!163861 lambda!163837))))

(assert (=> bs!797063 (= (= lt!1660589 (extractMap!1090 (t!357385 (toList!4075 lt!1659812)))) (= lambda!163861 lambda!163840))))

(assert (=> d!1364933 true))

(declare-fun b!4472454 () Bool)

(declare-fun e!2785067 () Bool)

(assert (=> b!4472454 (= e!2785067 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) lambda!163860))))

(declare-fun b!4472455 () Bool)

(declare-fun e!2785068 () Bool)

(assert (=> b!4472455 (= e!2785068 (invariantList!933 (toList!4076 lt!1660589)))))

(assert (=> d!1364933 e!2785068))

(declare-fun res!1855786 () Bool)

(assert (=> d!1364933 (=> (not res!1855786) (not e!2785068))))

(assert (=> d!1364933 (= res!1855786 (forall!10009 (_2!28580 (h!56080 (toList!4075 lm!1477))) lambda!163861))))

(declare-fun e!2785066 () ListMap!3337)

(assert (=> d!1364933 (= lt!1660589 e!2785066)))

(declare-fun c!761555 () Bool)

(assert (=> d!1364933 (= c!761555 ((_ is Nil!50310) (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(assert (=> d!1364933 (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477))))))

(assert (=> d!1364933 (= (addToMapMapFromBucket!595 (_2!28580 (h!56080 (toList!4075 lm!1477))) (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) lt!1660589)))

(declare-fun call!311433 () Bool)

(declare-fun bm!311426 () Bool)

(assert (=> bm!311426 (= call!311433 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) (ite c!761555 lambda!163858 lambda!163860)))))

(declare-fun bm!311427 () Bool)

(declare-fun call!311432 () Unit!88025)

(assert (=> bm!311427 (= call!311432 (lemmaContainsAllItsOwnKeys!271 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))))))

(declare-fun b!4472456 () Bool)

(declare-fun res!1855784 () Bool)

(assert (=> b!4472456 (=> (not res!1855784) (not e!2785068))))

(assert (=> b!4472456 (= res!1855784 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) lambda!163861))))

(assert (=> b!4472457 (= e!2785066 (extractMap!1090 (t!357385 (toList!4075 lm!1477))))))

(declare-fun lt!1660595 () Unit!88025)

(assert (=> b!4472457 (= lt!1660595 call!311432)))

(assert (=> b!4472457 call!311433))

(declare-fun lt!1660586 () Unit!88025)

(assert (=> b!4472457 (= lt!1660586 lt!1660595)))

(declare-fun call!311431 () Bool)

(assert (=> b!4472457 call!311431))

(declare-fun lt!1660585 () Unit!88025)

(declare-fun Unit!88201 () Unit!88025)

(assert (=> b!4472457 (= lt!1660585 Unit!88201)))

(declare-fun bm!311428 () Bool)

(assert (=> bm!311428 (= call!311431 (forall!10009 (ite c!761555 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) (_2!28580 (h!56080 (toList!4075 lm!1477)))) (ite c!761555 lambda!163858 lambda!163860)))))

(assert (=> b!4472458 (= e!2785066 lt!1660598)))

(declare-fun lt!1660600 () ListMap!3337)

(assert (=> b!4472458 (= lt!1660600 (+!1382 (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(assert (=> b!4472458 (= lt!1660598 (addToMapMapFromBucket!595 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477)))) (+!1382 (extractMap!1090 (t!357385 (toList!4075 lm!1477))) (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))))

(declare-fun lt!1660597 () Unit!88025)

(assert (=> b!4472458 (= lt!1660597 call!311432)))

(assert (=> b!4472458 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) lambda!163859)))

(declare-fun lt!1660588 () Unit!88025)

(assert (=> b!4472458 (= lt!1660588 lt!1660597)))

(assert (=> b!4472458 (forall!10009 (toList!4076 lt!1660600) lambda!163860)))

(declare-fun lt!1660583 () Unit!88025)

(declare-fun Unit!88202 () Unit!88025)

(assert (=> b!4472458 (= lt!1660583 Unit!88202)))

(assert (=> b!4472458 (forall!10009 (t!357384 (_2!28580 (h!56080 (toList!4075 lm!1477)))) lambda!163860)))

(declare-fun lt!1660601 () Unit!88025)

(declare-fun Unit!88203 () Unit!88025)

(assert (=> b!4472458 (= lt!1660601 Unit!88203)))

(declare-fun lt!1660584 () Unit!88025)

(declare-fun Unit!88204 () Unit!88025)

(assert (=> b!4472458 (= lt!1660584 Unit!88204)))

(declare-fun lt!1660594 () Unit!88025)

(assert (=> b!4472458 (= lt!1660594 (forallContained!2278 (toList!4076 lt!1660600) lambda!163860 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(assert (=> b!4472458 (contains!12873 lt!1660600 (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(declare-fun lt!1660592 () Unit!88025)

(declare-fun Unit!88205 () Unit!88025)

(assert (=> b!4472458 (= lt!1660592 Unit!88205)))

(assert (=> b!4472458 (contains!12873 lt!1660598 (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))))))

(declare-fun lt!1660582 () Unit!88025)

(declare-fun Unit!88206 () Unit!88025)

(assert (=> b!4472458 (= lt!1660582 Unit!88206)))

(assert (=> b!4472458 call!311431))

(declare-fun lt!1660602 () Unit!88025)

(declare-fun Unit!88207 () Unit!88025)

(assert (=> b!4472458 (= lt!1660602 Unit!88207)))

(assert (=> b!4472458 (forall!10009 (toList!4076 lt!1660600) lambda!163860)))

(declare-fun lt!1660587 () Unit!88025)

(declare-fun Unit!88208 () Unit!88025)

(assert (=> b!4472458 (= lt!1660587 Unit!88208)))

(declare-fun lt!1660593 () Unit!88025)

(declare-fun Unit!88209 () Unit!88025)

(assert (=> b!4472458 (= lt!1660593 Unit!88209)))

(declare-fun lt!1660596 () Unit!88025)

(assert (=> b!4472458 (= lt!1660596 (addForallContainsKeyThenBeforeAdding!270 (extractMap!1090 (t!357385 (toList!4075 lm!1477))) lt!1660598 (_1!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477))))) (_2!28579 (h!56079 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))))

(assert (=> b!4472458 call!311433))

(declare-fun lt!1660591 () Unit!88025)

(assert (=> b!4472458 (= lt!1660591 lt!1660596)))

(assert (=> b!4472458 (forall!10009 (toList!4076 (extractMap!1090 (t!357385 (toList!4075 lm!1477)))) lambda!163860)))

(declare-fun lt!1660599 () Unit!88025)

(declare-fun Unit!88210 () Unit!88025)

(assert (=> b!4472458 (= lt!1660599 Unit!88210)))

(declare-fun res!1855785 () Bool)

(assert (=> b!4472458 (= res!1855785 (forall!10009 (_2!28580 (h!56080 (toList!4075 lm!1477))) lambda!163860))))

(assert (=> b!4472458 (=> (not res!1855785) (not e!2785067))))

(assert (=> b!4472458 e!2785067))

(declare-fun lt!1660590 () Unit!88025)

(declare-fun Unit!88212 () Unit!88025)

(assert (=> b!4472458 (= lt!1660590 Unit!88212)))

(assert (= (and d!1364933 c!761555) b!4472457))

(assert (= (and d!1364933 (not c!761555)) b!4472458))

(assert (= (and b!4472458 res!1855785) b!4472454))

(assert (= (or b!4472457 b!4472458) bm!311426))

(assert (= (or b!4472457 b!4472458) bm!311428))

(assert (= (or b!4472457 b!4472458) bm!311427))

(assert (= (and d!1364933 res!1855786) b!4472456))

(assert (= (and b!4472456 res!1855784) b!4472455))

(declare-fun m!5181293 () Bool)

(assert (=> b!4472458 m!5181293))

(declare-fun m!5181295 () Bool)

(assert (=> b!4472458 m!5181295))

(declare-fun m!5181297 () Bool)

(assert (=> b!4472458 m!5181297))

(declare-fun m!5181299 () Bool)

(assert (=> b!4472458 m!5181299))

(declare-fun m!5181301 () Bool)

(assert (=> b!4472458 m!5181301))

(declare-fun m!5181303 () Bool)

(assert (=> b!4472458 m!5181303))

(assert (=> b!4472458 m!5179469))

(assert (=> b!4472458 m!5181293))

(declare-fun m!5181305 () Bool)

(assert (=> b!4472458 m!5181305))

(assert (=> b!4472458 m!5179469))

(declare-fun m!5181307 () Bool)

(assert (=> b!4472458 m!5181307))

(declare-fun m!5181309 () Bool)

(assert (=> b!4472458 m!5181309))

(declare-fun m!5181311 () Bool)

(assert (=> b!4472458 m!5181311))

(assert (=> b!4472458 m!5181311))

(declare-fun m!5181313 () Bool)

(assert (=> b!4472458 m!5181313))

(assert (=> bm!311427 m!5179469))

(declare-fun m!5181315 () Bool)

(assert (=> bm!311427 m!5181315))

(declare-fun m!5181317 () Bool)

(assert (=> bm!311428 m!5181317))

(declare-fun m!5181319 () Bool)

(assert (=> b!4472456 m!5181319))

(assert (=> b!4472454 m!5181309))

(declare-fun m!5181321 () Bool)

(assert (=> b!4472455 m!5181321))

(declare-fun m!5181323 () Bool)

(assert (=> bm!311426 m!5181323))

(declare-fun m!5181325 () Bool)

(assert (=> d!1364933 m!5181325))

(assert (=> d!1364933 m!5179843))

(assert (=> b!4471716 d!1364933))

(assert (=> b!4471716 d!1364409))

(declare-fun bs!797070 () Bool)

(declare-fun b!4472503 () Bool)

(assert (= bs!797070 (and b!4472503 b!4472419)))

(declare-fun lambda!163862 () Int)

(assert (=> bs!797070 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 lt!1659809))) (= lambda!163862 lambda!163854))))

(declare-fun bs!797071 () Bool)

(assert (= bs!797071 (and b!4472503 b!4472421)))

(assert (=> bs!797071 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 lt!1659809)) (= lambda!163862 lambda!163856))))

(declare-fun bs!797072 () Bool)

(assert (= bs!797072 (and b!4472503 b!4471992)))

(assert (=> bs!797072 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163862 lambda!163715))))

(declare-fun bs!797073 () Bool)

(assert (= bs!797073 (and b!4472503 b!4471931)))

(assert (=> bs!797073 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 lt!1660003)) (= lambda!163862 lambda!163703))))

(declare-fun bs!797074 () Bool)

(assert (= bs!797074 (and b!4472503 b!4471994)))

(assert (=> bs!797074 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163862 lambda!163717))))

(declare-fun bs!797075 () Bool)

(assert (= bs!797075 (and b!4472503 b!4472411)))

(assert (=> bs!797075 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 (extractMap!1090 lt!1659816))) (= lambda!163862 lambda!163852))))

(declare-fun bs!797076 () Bool)

(assert (= bs!797076 (and b!4472503 b!4472342)))

(assert (=> bs!797076 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 lt!1659809)) (= lambda!163862 lambda!163845))))

(declare-fun bs!797077 () Bool)

(assert (= bs!797077 (and b!4472503 b!4471954)))

(assert (=> bs!797077 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163862 lambda!163705))))

(declare-fun bs!797078 () Bool)

(assert (= bs!797078 (and b!4472503 b!4471924)))

(assert (=> bs!797078 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163862 lambda!163701))))

(declare-fun bs!797079 () Bool)

(assert (= bs!797079 (and b!4472503 b!4471993)))

(assert (=> bs!797079 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163862 lambda!163716))))

(declare-fun bs!797080 () Bool)

(assert (= bs!797080 (and b!4472503 b!4472420)))

(assert (=> bs!797080 (= (= (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809)))) (= lambda!163862 lambda!163855))))

(assert (=> b!4472503 true))

(declare-fun bs!797081 () Bool)

(declare-fun b!4472504 () Bool)

(assert (= bs!797081 (and b!4472504 b!4472419)))

(declare-fun lambda!163863 () Int)

(assert (=> bs!797081 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (t!357384 (toList!4076 lt!1659809))) (= lambda!163863 lambda!163854))))

(declare-fun bs!797082 () Bool)

(assert (= bs!797082 (and b!4472504 b!4472421)))

(assert (=> bs!797082 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 lt!1659809)) (= lambda!163863 lambda!163856))))

(declare-fun bs!797083 () Bool)

(assert (= bs!797083 (and b!4472504 b!4471992)))

(assert (=> bs!797083 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163863 lambda!163715))))

(declare-fun bs!797084 () Bool)

(assert (= bs!797084 (and b!4472504 b!4471931)))

(assert (=> bs!797084 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 lt!1660003)) (= lambda!163863 lambda!163703))))

(declare-fun bs!797085 () Bool)

(assert (= bs!797085 (and b!4472504 b!4471994)))

(assert (=> bs!797085 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163863 lambda!163717))))

(declare-fun bs!797086 () Bool)

(assert (= bs!797086 (and b!4472504 b!4472411)))

(assert (=> bs!797086 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 (extractMap!1090 lt!1659816))) (= lambda!163863 lambda!163852))))

(declare-fun bs!797087 () Bool)

(assert (= bs!797087 (and b!4472504 b!4471954)))

(assert (=> bs!797087 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163863 lambda!163705))))

(declare-fun bs!797088 () Bool)

(assert (= bs!797088 (and b!4472504 b!4471924)))

(assert (=> bs!797088 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163863 lambda!163701))))

(declare-fun bs!797089 () Bool)

(assert (= bs!797089 (and b!4472504 b!4471993)))

(assert (=> bs!797089 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163863 lambda!163716))))

(declare-fun bs!797090 () Bool)

(assert (= bs!797090 (and b!4472504 b!4472420)))

(assert (=> bs!797090 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809)))) (= lambda!163863 lambda!163855))))

(declare-fun bs!797091 () Bool)

(assert (= bs!797091 (and b!4472504 b!4472342)))

(assert (=> bs!797091 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (toList!4076 lt!1659809)) (= lambda!163863 lambda!163845))))

(declare-fun bs!797092 () Bool)

(assert (= bs!797092 (and b!4472504 b!4472503)))

(assert (=> bs!797092 (= (= (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (= lambda!163863 lambda!163862))))

(assert (=> b!4472504 true))

(declare-fun bs!797093 () Bool)

(declare-fun b!4472505 () Bool)

(assert (= bs!797093 (and b!4472505 b!4472419)))

(declare-fun lambda!163864 () Int)

(assert (=> bs!797093 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (t!357384 (toList!4076 lt!1659809))) (= lambda!163864 lambda!163854))))

(declare-fun bs!797094 () Bool)

(assert (= bs!797094 (and b!4472505 b!4472421)))

(assert (=> bs!797094 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 lt!1659809)) (= lambda!163864 lambda!163856))))

(declare-fun bs!797095 () Bool)

(assert (= bs!797095 (and b!4472505 b!4471992)))

(assert (=> bs!797095 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477))))) (= lambda!163864 lambda!163715))))

(declare-fun bs!797096 () Bool)

(assert (= bs!797096 (and b!4472505 b!4471931)))

(assert (=> bs!797096 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 lt!1660003)) (= lambda!163864 lambda!163703))))

(declare-fun bs!797097 () Bool)

(assert (= bs!797097 (and b!4472505 b!4471994)))

(assert (=> bs!797097 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163864 lambda!163717))))

(declare-fun bs!797098 () Bool)

(assert (= bs!797098 (and b!4472505 b!4472504)))

(assert (=> bs!797098 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))) (t!357384 (toList!4076 (extractMap!1090 lt!1659816))))) (= lambda!163864 lambda!163863))))

(declare-fun bs!797099 () Bool)

(assert (= bs!797099 (and b!4472505 b!4472411)))

(assert (=> bs!797099 (= lambda!163864 lambda!163852)))

(declare-fun bs!797100 () Bool)

(assert (= bs!797100 (and b!4472505 b!4471954)))

(assert (=> bs!797100 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (= lambda!163864 lambda!163705))))

(declare-fun bs!797101 () Bool)

(assert (= bs!797101 (and b!4472505 b!4471924)))

(assert (=> bs!797101 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 (extractMap!1090 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))) (= lambda!163864 lambda!163701))))

(declare-fun bs!797102 () Bool)

(assert (= bs!797102 (and b!4472505 b!4471993)))

(assert (=> bs!797102 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (Cons!50310 (h!56079 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))) (t!357384 (toList!4076 (extractMap!1090 (toList!4075 lm!1477)))))) (= lambda!163864 lambda!163716))))

(declare-fun bs!797103 () Bool)

(assert (= bs!797103 (and b!4472505 b!4472420)))

(assert (=> bs!797103 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (Cons!50310 (h!56079 (toList!4076 lt!1659809)) (t!357384 (toList!4076 lt!1659809)))) (= lambda!163864 lambda!163855))))

(declare-fun bs!797104 () Bool)

(assert (= bs!797104 (and b!4472505 b!4472342)))

(assert (=> bs!797104 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (toList!4076 lt!1659809)) (= lambda!163864 lambda!163845))))

(declare-fun bs!797105 () Bool)

(assert (= bs!797105 (and b!4472505 b!4472503)))

(assert (=> bs!797105 (= (= (toList!4076 (extractMap!1090 lt!1659816)) (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (= lambda!163864 lambda!163862))))

(assert (=> b!4472505 true))

(declare-fun bs!797106 () Bool)

(declare-fun b!4472498 () Bool)

(assert (= bs!797106 (and b!4472498 b!4471987)))

(declare-fun lambda!163865 () Int)

(assert (=> bs!797106 (= lambda!163865 lambda!163718)))

(declare-fun bs!797107 () Bool)

(assert (= bs!797107 (and b!4472498 b!4471932)))

(assert (=> bs!797107 (= lambda!163865 lambda!163704)))

(declare-fun bs!797108 () Bool)

(assert (= bs!797108 (and b!4472498 b!4472412)))

(assert (=> bs!797108 (= lambda!163865 lambda!163853)))

(declare-fun bs!797109 () Bool)

(assert (= bs!797109 (and b!4472498 b!4472414)))

(assert (=> bs!797109 (= lambda!163865 lambda!163857)))

(declare-fun bs!797110 () Bool)

(assert (= bs!797110 (and b!4472498 b!4472343)))

(assert (=> bs!797110 (= lambda!163865 lambda!163846)))

(declare-fun bs!797111 () Bool)

(assert (= bs!797111 (and b!4472498 b!4471955)))

(assert (=> bs!797111 (= lambda!163865 lambda!163706)))

(declare-fun bs!797112 () Bool)

(assert (= bs!797112 (and b!4472498 b!4471925)))

(assert (=> bs!797112 (= lambda!163865 lambda!163702)))

(declare-fun b!4472497 () Bool)

(declare-fun res!1855795 () Bool)

(declare-fun e!2785089 () Bool)

(assert (=> b!4472497 (=> (not res!1855795) (not e!2785089))))

(declare-fun lt!1660644 () List!50437)

(assert (=> b!4472497 (= res!1855795 (= (length!260 lt!1660644) (length!261 (toList!4076 (extractMap!1090 lt!1659816)))))))

(assert (=> b!4472498 (= e!2785089 (= (content!8121 lt!1660644) (content!8121 (map!11030 (toList!4076 (extractMap!1090 lt!1659816)) lambda!163865))))))

(declare-fun b!4472499 () Bool)

(declare-fun e!2785090 () Unit!88025)

(declare-fun Unit!88216 () Unit!88025)

(assert (=> b!4472499 (= e!2785090 Unit!88216)))

(declare-fun b!4472501 () Bool)

(assert (=> b!4472501 false))

(declare-fun e!2785088 () Unit!88025)

(declare-fun Unit!88217 () Unit!88025)

(assert (=> b!4472501 (= e!2785088 Unit!88217)))

(declare-fun b!4472502 () Bool)

(declare-fun Unit!88218 () Unit!88025)

(assert (=> b!4472502 (= e!2785088 Unit!88218)))

(assert (=> b!4472503 false))

(declare-fun lt!1660645 () Unit!88025)

(assert (=> b!4472503 (= lt!1660645 (forallContained!2277 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) lambda!163862 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))))))))

(declare-fun Unit!88219 () Unit!88025)

(assert (=> b!4472503 (= e!2785090 Unit!88219)))

(declare-fun e!2785087 () List!50437)

(assert (=> b!4472504 (= e!2785087 (Cons!50313 (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816)))) (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 lt!1659816))))))))

(declare-fun c!761573 () Bool)

(assert (=> b!4472504 (= c!761573 (containsKey!1494 (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))))))))

(declare-fun lt!1660639 () Unit!88025)

(assert (=> b!4472504 (= lt!1660639 e!2785088)))

(declare-fun c!761572 () Bool)

(assert (=> b!4472504 (= c!761572 (contains!12877 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))) (_1!28579 (h!56079 (toList!4076 (extractMap!1090 lt!1659816))))))))

(declare-fun lt!1660642 () Unit!88025)

(assert (=> b!4472504 (= lt!1660642 e!2785090)))

(declare-fun lt!1660643 () List!50437)

(assert (=> b!4472504 (= lt!1660643 (getKeysList!381 (t!357384 (toList!4076 (extractMap!1090 lt!1659816)))))))

(declare-fun lt!1660641 () Unit!88025)

(assert (=> b!4472504 (= lt!1660641 (lemmaForallContainsAddHeadPreserves!123 (t!357384 (toList!4076 (extractMap!1090 lt!1659816))) lt!1660643 (h!56079 (toList!4076 (extractMap!1090 lt!1659816)))))))

(assert (=> b!4472504 (forall!10012 lt!1660643 lambda!163863)))

(declare-fun lt!1660640 () Unit!88025)

(assert (=> b!4472504 (= lt!1660640 lt!1660641)))

(declare-fun res!1855794 () Bool)

(assert (=> b!4472505 (=> (not res!1855794) (not e!2785089))))

(assert (=> b!4472505 (= res!1855794 (forall!10012 lt!1660644 lambda!163864))))

(declare-fun d!1364935 () Bool)

(assert (=> d!1364935 e!2785089))

(declare-fun res!1855793 () Bool)

(assert (=> d!1364935 (=> (not res!1855793) (not e!2785089))))

(assert (=> d!1364935 (= res!1855793 (noDuplicate!702 lt!1660644))))

(assert (=> d!1364935 (= lt!1660644 e!2785087)))

(declare-fun c!761574 () Bool)

(assert (=> d!1364935 (= c!761574 ((_ is Cons!50310) (toList!4076 (extractMap!1090 lt!1659816))))))

(assert (=> d!1364935 (invariantList!933 (toList!4076 (extractMap!1090 lt!1659816)))))

(assert (=> d!1364935 (= (getKeysList!381 (toList!4076 (extractMap!1090 lt!1659816))) lt!1660644)))

(declare-fun b!4472500 () Bool)

(assert (=> b!4472500 (= e!2785087 Nil!50313)))

(assert (= (and d!1364935 c!761574) b!4472504))

(assert (= (and d!1364935 (not c!761574)) b!4472500))

(assert (= (and b!4472504 c!761573) b!4472501))

(assert (= (and b!4472504 (not c!761573)) b!4472502))

(assert (= (and b!4472504 c!761572) b!4472503))

(assert (= (and b!4472504 (not c!761572)) b!4472499))

(assert (= (and d!1364935 res!1855793) b!4472497))

(assert (= (and b!4472497 res!1855795) b!4472505))

(assert (= (and b!4472505 res!1855794) b!4472498))

(declare-fun m!5181327 () Bool)

(assert (=> b!4472498 m!5181327))

(declare-fun m!5181329 () Bool)

(assert (=> b!4472498 m!5181329))

(assert (=> b!4472498 m!5181329))

(declare-fun m!5181331 () Bool)

(assert (=> b!4472498 m!5181331))

(declare-fun m!5181333 () Bool)

(assert (=> d!1364935 m!5181333))

(assert (=> d!1364935 m!5180503))

(declare-fun m!5181335 () Bool)

(assert (=> b!4472503 m!5181335))

(assert (=> b!4472503 m!5181335))

(declare-fun m!5181337 () Bool)

(assert (=> b!4472503 m!5181337))

(declare-fun m!5181339 () Bool)

(assert (=> b!4472505 m!5181339))

(declare-fun m!5181341 () Bool)

(assert (=> b!4472504 m!5181341))

(declare-fun m!5181343 () Bool)

(assert (=> b!4472504 m!5181343))

(assert (=> b!4472504 m!5181335))

(declare-fun m!5181345 () Bool)

(assert (=> b!4472504 m!5181345))

(declare-fun m!5181347 () Bool)

(assert (=> b!4472504 m!5181347))

(assert (=> b!4472504 m!5181335))

(declare-fun m!5181349 () Bool)

(assert (=> b!4472497 m!5181349))

(assert (=> b!4472497 m!5181197))

(assert (=> b!4471698 d!1364935))

(declare-fun d!1364937 () Bool)

(declare-fun c!761577 () Bool)

(assert (=> d!1364937 (= c!761577 ((_ is Nil!50311) (toList!4075 lm!1477)))))

(declare-fun e!2785093 () (InoxSet tuple2!50572))

(assert (=> d!1364937 (= (content!8120 (toList!4075 lm!1477)) e!2785093)))

(declare-fun b!4472510 () Bool)

(assert (=> b!4472510 (= e!2785093 ((as const (Array tuple2!50572 Bool)) false))))

(declare-fun b!4472511 () Bool)

(assert (=> b!4472511 (= e!2785093 ((_ map or) (store ((as const (Array tuple2!50572 Bool)) false) (h!56080 (toList!4075 lm!1477)) true) (content!8120 (t!357385 (toList!4075 lm!1477)))))))

(assert (= (and d!1364937 c!761577) b!4472510))

(assert (= (and d!1364937 (not c!761577)) b!4472511))

(declare-fun m!5181351 () Bool)

(assert (=> b!4472511 m!5181351))

(assert (=> b!4472511 m!5181063))

(assert (=> d!1364449 d!1364937))

(declare-fun d!1364939 () Bool)

(assert (=> d!1364939 (= (tail!7520 (toList!4075 lm!1477)) (t!357385 (toList!4075 lm!1477)))))

(assert (=> d!1364519 d!1364939))

(assert (=> b!4471696 d!1364923))

(assert (=> b!4471696 d!1364895))

(declare-fun b!4472512 () Bool)

(declare-fun e!2785094 () Bool)

(declare-fun tp!1336374 () Bool)

(assert (=> b!4472512 (= e!2785094 (and tp_is_empty!27413 tp_is_empty!27415 tp!1336374))))

(assert (=> b!4471745 (= tp!1336373 e!2785094)))

(assert (= (and b!4471745 ((_ is Cons!50310) (t!357384 (t!357384 newBucket!178)))) b!4472512))

(declare-fun tp!1336375 () Bool)

(declare-fun e!2785095 () Bool)

(declare-fun b!4472513 () Bool)

(assert (=> b!4472513 (= e!2785095 (and tp_is_empty!27413 tp_is_empty!27415 tp!1336375))))

(assert (=> b!4471740 (= tp!1336369 e!2785095)))

(assert (= (and b!4471740 ((_ is Cons!50310) (_2!28580 (h!56080 (toList!4075 lm!1477))))) b!4472513))

(declare-fun b!4472514 () Bool)

(declare-fun e!2785096 () Bool)

(declare-fun tp!1336376 () Bool)

(declare-fun tp!1336377 () Bool)

(assert (=> b!4472514 (= e!2785096 (and tp!1336376 tp!1336377))))

(assert (=> b!4471740 (= tp!1336370 e!2785096)))

(assert (= (and b!4471740 ((_ is Cons!50311) (t!357385 (toList!4075 lm!1477)))) b!4472514))

(declare-fun b_lambda!148621 () Bool)

(assert (= b_lambda!148611 (or d!1364421 b_lambda!148621)))

(declare-fun bs!797113 () Bool)

(declare-fun d!1364941 () Bool)

(assert (= bs!797113 (and d!1364941 d!1364421)))

(assert (=> bs!797113 (= (dynLambda!21022 lambda!163664 (h!56080 (toList!4075 lt!1659812))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lt!1659812)))))))

(assert (=> bs!797113 m!5181053))

(assert (=> b!4472118 d!1364941))

(declare-fun b_lambda!148623 () Bool)

(assert (= b_lambda!148593 (or start!439496 b_lambda!148623)))

(declare-fun bs!797114 () Bool)

(declare-fun d!1364943 () Bool)

(assert (= bs!797114 (and d!1364943 start!439496)))

(assert (=> bs!797114 (= (dynLambda!21022 lambda!163641 (h!56080 (t!357385 (toList!4075 lm!1477)))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))))))

(assert (=> bs!797114 m!5181167))

(assert (=> b!4471966 d!1364943))

(declare-fun b_lambda!148625 () Bool)

(assert (= b_lambda!148591 (or d!1364393 b_lambda!148625)))

(declare-fun bs!797115 () Bool)

(declare-fun d!1364945 () Bool)

(assert (= bs!797115 (and d!1364945 d!1364393)))

(assert (=> bs!797115 (= (dynLambda!21022 lambda!163647 (h!56080 (toList!4075 lm!1477))) (allKeysSameHash!888 (_2!28580 (h!56080 (toList!4075 lm!1477))) (_1!28580 (h!56080 (toList!4075 lm!1477))) hashF!1107))))

(declare-fun m!5181353 () Bool)

(assert (=> bs!797115 m!5181353))

(assert (=> b!4471956 d!1364945))

(declare-fun b_lambda!148627 () Bool)

(assert (= b_lambda!148581 (or d!1364423 b_lambda!148627)))

(declare-fun bs!797116 () Bool)

(declare-fun d!1364947 () Bool)

(assert (= bs!797116 (and d!1364947 d!1364423)))

(assert (=> bs!797116 (= (dynLambda!21022 lambda!163668 (h!56080 (toList!4075 lm!1477))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(assert (=> bs!797116 m!5179843))

(assert (=> b!4471755 d!1364947))

(declare-fun b_lambda!148629 () Bool)

(assert (= b_lambda!148619 (or d!1364527 b_lambda!148629)))

(declare-fun bs!797117 () Bool)

(declare-fun d!1364949 () Bool)

(assert (= bs!797117 (and d!1364949 d!1364527)))

(assert (=> bs!797117 (= (dynLambda!21022 lambda!163689 (h!56080 (toList!4075 lm!1477))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(assert (=> bs!797117 m!5179843))

(assert (=> b!4472431 d!1364949))

(declare-fun b_lambda!148631 () Bool)

(assert (= b_lambda!148587 (or d!1364521 b_lambda!148631)))

(declare-fun bs!797118 () Bool)

(declare-fun d!1364951 () Bool)

(assert (= bs!797118 (and d!1364951 d!1364521)))

(assert (=> bs!797118 (= (dynLambda!21022 lambda!163688 (h!56080 (toList!4075 lt!1659812))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lt!1659812)))))))

(assert (=> bs!797118 m!5181053))

(assert (=> b!4471936 d!1364951))

(declare-fun b_lambda!148633 () Bool)

(assert (= b_lambda!148585 (or d!1364511 b_lambda!148633)))

(declare-fun bs!797119 () Bool)

(declare-fun d!1364953 () Bool)

(assert (= bs!797119 (and d!1364953 d!1364511)))

(assert (=> bs!797119 (= (dynLambda!21022 lambda!163687 (h!56080 (toList!4075 (ListLongMap!2708 lt!1659816)))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 (ListLongMap!2708 lt!1659816))))))))

(declare-fun m!5181355 () Bool)

(assert (=> bs!797119 m!5181355))

(assert (=> b!4471860 d!1364953))

(declare-fun b_lambda!148635 () Bool)

(assert (= b_lambda!148617 (or d!1364409 b_lambda!148635)))

(declare-fun bs!797120 () Bool)

(declare-fun d!1364955 () Bool)

(assert (= bs!797120 (and d!1364955 d!1364409)))

(assert (=> bs!797120 (= (dynLambda!21022 lambda!163663 (h!56080 (t!357385 (toList!4075 lm!1477)))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (t!357385 (toList!4075 lm!1477))))))))

(assert (=> bs!797120 m!5181167))

(assert (=> b!4472424 d!1364955))

(declare-fun b_lambda!148637 () Bool)

(assert (= b_lambda!148613 (or d!1364389 b_lambda!148637)))

(declare-fun bs!797121 () Bool)

(declare-fun d!1364957 () Bool)

(assert (= bs!797121 (and d!1364957 d!1364389)))

(assert (=> bs!797121 (= (dynLambda!21023 lambda!163644 (h!56079 newBucket!178)) (= (hash!2471 hashF!1107 (_1!28579 (h!56079 newBucket!178))) hash!344))))

(declare-fun m!5181357 () Bool)

(assert (=> bs!797121 m!5181357))

(assert (=> b!4472354 d!1364957))

(declare-fun b_lambda!148639 () Bool)

(assert (= b_lambda!148589 (or d!1364467 b_lambda!148639)))

(declare-fun bs!797122 () Bool)

(declare-fun d!1364959 () Bool)

(assert (= bs!797122 (and d!1364959 d!1364467)))

(assert (=> bs!797122 (= (dynLambda!21022 lambda!163674 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (Cons!50311 (tuple2!50573 hash!344 (_2!28580 (h!56080 (toList!4075 lm!1477)))) Nil!50311)))))))

(assert (=> bs!797122 m!5180477))

(assert (=> b!4471951 d!1364959))

(declare-fun b_lambda!148641 () Bool)

(assert (= b_lambda!148609 (or start!439496 b_lambda!148641)))

(assert (=> d!1364751 d!1364535))

(declare-fun b_lambda!148643 () Bool)

(assert (= b_lambda!148615 (or d!1364395 b_lambda!148643)))

(declare-fun bs!797123 () Bool)

(declare-fun d!1364961 () Bool)

(assert (= bs!797123 (and d!1364961 d!1364395)))

(assert (=> bs!797123 (= (dynLambda!21022 lambda!163653 (h!56080 (toList!4075 lm!1477))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (toList!4075 lm!1477)))))))

(assert (=> bs!797123 m!5179843))

(assert (=> b!4472408 d!1364961))

(declare-fun b_lambda!148645 () Bool)

(assert (= b_lambda!148607 (or d!1364503 b_lambda!148645)))

(declare-fun bs!797124 () Bool)

(declare-fun d!1364963 () Bool)

(assert (= bs!797124 (and d!1364963 d!1364503)))

(assert (=> bs!797124 (= (dynLambda!21022 lambda!163683 (h!56080 (Cons!50311 lt!1659810 Nil!50311))) (noDuplicateKeys!1034 (_2!28580 (h!56080 (Cons!50311 lt!1659810 Nil!50311)))))))

(assert (=> bs!797124 m!5180605))

(assert (=> b!4472103 d!1364963))

(declare-fun b_lambda!148647 () Bool)

(assert (= b_lambda!148605 (or d!1364505 b_lambda!148647)))

(declare-fun bs!797125 () Bool)

(declare-fun d!1364965 () Bool)

(assert (= bs!797125 (and d!1364965 d!1364505)))

(assert (=> bs!797125 (= (dynLambda!21022 lambda!163684 (h!56080 lt!1659816)) (noDuplicateKeys!1034 (_2!28580 (h!56080 lt!1659816))))))

(assert (=> bs!797125 m!5180969))

(assert (=> b!4472096 d!1364965))

(check-sat (not bs!797119) (not b!4472412) (not b!4471781) (not b!4472349) (not b!4472072) (not b!4471952) (not b!4472454) (not b!4472402) (not d!1364907) (not bm!311380) (not b!4472440) (not b!4471759) (not b!4472266) (not b!4471814) (not bs!797122) (not d!1364665) (not bm!311405) (not b!4472292) (not b!4471844) (not d!1364627) (not b!4472442) (not b!4471849) (not b!4471817) (not d!1364617) (not bm!311374) (not b!4472360) (not b!4472342) (not b!4471751) (not b!4472131) (not b!4472435) (not b!4472504) (not b!4472107) (not b!4472274) (not d!1364727) (not b!4472094) (not bm!311406) (not b!4472272) (not d!1364889) tp_is_empty!27413 (not b_lambda!148625) (not b!4472511) (not bm!311400) (not bs!797117) (not b!4471774) (not b!4472443) (not d!1364715) (not b!4471848) (not d!1364753) (not d!1364565) (not d!1364725) (not b!4472277) (not bm!311411) (not b!4472076) (not b_lambda!148621) (not b!4472498) (not d!1364729) (not b!4472291) (not d!1364863) (not b_lambda!148631) (not b!4472347) (not bs!797115) (not d!1364761) (not bm!311410) (not d!1364759) (not b!4472104) (not b!4472359) (not d!1364837) (not b!4472358) (not bm!311426) (not b!4472513) (not b!4472432) (not d!1364647) (not b_lambda!148635) (not b!4472125) (not d!1364905) (not d!1364547) (not b!4472303) (not b!4472116) (not bm!311351) (not d!1364599) (not d!1364745) (not b!4472128) (not b!4471850) (not b!4471955) (not d!1364643) (not b!4472512) (not b!4471894) (not d!1364867) (not b!4471925) (not b!4472458) (not b!4472505) (not b!4472126) (not bm!311382) (not b!4471943) (not b!4472105) (not d!1364717) (not bm!311402) (not d!1364933) (not d!1364659) (not b!4471897) (not b!4471953) (not b!4472089) (not b!4471808) (not b!4472280) (not b!4472340) (not bm!311427) (not b!4472409) (not b!4471993) (not d!1364655) (not bm!311401) (not b!4472456) (not bm!311423) (not b!4471929) (not d!1364841) (not d!1364543) (not d!1364885) (not b!4472331) (not d!1364749) (not b!4472434) (not d!1364895) (not b!4471842) (not b!4472407) (not b!4471994) (not d!1364925) (not b!4472420) (not d!1364903) (not b!4472348) (not b!4471957) (not b!4471935) (not b!4472426) (not bm!311412) (not b!4471892) (not b!4471811) (not bm!311407) (not bm!311399) (not b!4471851) (not d!1364733) (not bm!311404) (not d!1364843) (not b!4471874) (not b_lambda!148623) (not bm!311428) (not b!4472455) (not b!4472315) (not b!4472294) (not d!1364661) (not d!1364923) (not b!4472411) (not b!4471839) (not b!4472413) (not b_lambda!148639) (not b!4472503) (not b!4471945) (not bs!797125) (not bs!797124) (not b!4472265) (not b!4472290) (not b!4472081) (not bs!797123) (not b!4472091) (not b!4471954) (not bm!311398) (not b_lambda!148637) (not d!1364931) (not b!4471937) (not d!1364833) (not b!4471947) (not b!4472088) (not d!1364607) (not d!1364897) (not b_lambda!148641) (not b!4471948) (not b!4471924) (not d!1364935) (not b!4472306) (not b!4471930) (not b!4471986) (not b!4471846) (not b_lambda!148645) (not d!1364887) (not b!4472437) (not b_lambda!148647) (not b_lambda!148643) (not b!4472112) (not b!4471843) (not b!4471987) (not b!4472271) (not b!4472316) (not b!4472101) (not bm!311375) (not d!1364831) (not b!4471964) (not b!4471959) (not d!1364667) (not bm!311409) (not b_lambda!148633) (not d!1364651) (not b!4472356) (not b!4472405) (not d!1364629) (not b!4472450) (not bm!311403) (not d!1364859) (not b!4472311) (not d!1364741) (not b!4472308) (not b!4471932) (not bm!311379) (not b!4472446) (not b!4472414) (not b!4471861) (not b!4472074) (not b!4472097) (not bm!311408) (not bs!797116) (not d!1364899) (not d!1364917) (not d!1364541) (not d!1364557) (not b!4471752) (not b_lambda!148629) (not d!1364731) (not b!4472362) (not b!4472425) (not b!4472317) tp_is_empty!27415 (not d!1364913) (not b!4472119) (not d!1364721) (not b!4472410) (not b!4472421) (not bs!797120) (not b!4472423) (not d!1364911) (not b!4471961) (not d!1364625) (not d!1364891) (not b!4472429) (not b!4472345) (not d!1364763) (not b!4472109) (not d!1364577) (not b!4471829) (not d!1364737) (not b!4472262) (not b!4472106) (not b!4472453) (not b!4472343) (not b!4471815) (not b!4471780) (not d!1364583) (not d!1364901) (not b!4472341) (not b!4471931) (not b!4472514) (not b!4472073) (not d!1364707) (not b!4471967) (not b!4471923) (not bm!311373) (not b!4472132) (not d!1364861) (not b!4471754) (not bs!797113) (not bs!797114) (not b!4472355) (not b!4472269) (not b!4472122) (not bm!311381) (not b!4472419) (not b!4471933) (not b_lambda!148579) (not b!4471950) (not b!4472319) (not b!4471878) (not b!4471904) (not b!4472270) (not d!1364581) (not d!1364819) (not bm!311348) (not b!4471992) (not b!4472314) (not b!4472130) (not bs!797118) (not b!4471757) (not d!1364929) (not d!1364593) (not b!4471756) (not b_lambda!148627) (not b!4472124) (not b!4472100) (not b!4472497) (not d!1364739) (not d!1364879) (not b_lambda!148577) (not d!1364559) (not bs!797121) (not b!4472357) (not b!4471804))
(check-sat)
