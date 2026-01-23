; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439840 () Bool)

(assert start!439840)

(declare-fun b!4473342 () Bool)

(declare-fun e!2785626 () Bool)

(declare-fun e!2785634 () Bool)

(assert (=> b!4473342 (= e!2785626 e!2785634)))

(declare-fun res!1856289 () Bool)

(assert (=> b!4473342 (=> res!1856289 e!2785634)))

(declare-fun lt!1661272 () Bool)

(assert (=> b!4473342 (= res!1856289 lt!1661272)))

(declare-datatypes ((Unit!88281 0))(
  ( (Unit!88282) )
))
(declare-fun lt!1661264 () Unit!88281)

(declare-fun e!2785630 () Unit!88281)

(assert (=> b!4473342 (= lt!1661264 e!2785630)))

(declare-fun c!761712 () Bool)

(assert (=> b!4473342 (= c!761712 lt!1661272)))

(declare-datatypes ((K!11740 0))(
  ( (K!11741 (val!17663 Int)) )
))
(declare-datatypes ((V!11986 0))(
  ( (V!11987 (val!17664 Int)) )
))
(declare-datatypes ((tuple2!50594 0))(
  ( (tuple2!50595 (_1!28591 K!11740) (_2!28591 V!11986)) )
))
(declare-datatypes ((List!50450 0))(
  ( (Nil!50326) (Cons!50326 (h!56099 tuple2!50594) (t!357400 List!50450)) )
))
(declare-datatypes ((tuple2!50596 0))(
  ( (tuple2!50597 (_1!28592 (_ BitVec 64)) (_2!28592 List!50450)) )
))
(declare-datatypes ((List!50451 0))(
  ( (Nil!50327) (Cons!50327 (h!56100 tuple2!50596) (t!357401 List!50451)) )
))
(declare-datatypes ((ListLongMap!2719 0))(
  ( (ListLongMap!2720 (toList!4087 List!50451)) )
))
(declare-fun lm!1477 () ListLongMap!2719)

(declare-fun key!3287 () K!11740)

(declare-fun containsKey!1504 (List!50450 K!11740) Bool)

(assert (=> b!4473342 (= lt!1661272 (not (containsKey!1504 (_2!28592 (h!56100 (toList!4087 lm!1477))) key!3287)))))

(declare-fun tp_is_empty!27439 () Bool)

(declare-fun b!4473343 () Bool)

(declare-fun tp_is_empty!27437 () Bool)

(declare-fun tp!1336434 () Bool)

(declare-fun e!2785631 () Bool)

(assert (=> b!4473343 (= e!2785631 (and tp_is_empty!27437 tp_is_empty!27439 tp!1336434))))

(declare-fun b!4473344 () Bool)

(declare-fun res!1856300 () Bool)

(declare-fun e!2785636 () Bool)

(assert (=> b!4473344 (=> (not res!1856300) (not e!2785636))))

(declare-datatypes ((ListMap!3349 0))(
  ( (ListMap!3350 (toList!4088 List!50450)) )
))
(declare-fun contains!12897 (ListMap!3349 K!11740) Bool)

(declare-fun extractMap!1096 (List!50451) ListMap!3349)

(assert (=> b!4473344 (= res!1856300 (contains!12897 (extractMap!1096 (toList!4087 lm!1477)) key!3287))))

(declare-fun b!4473345 () Bool)

(declare-fun res!1856299 () Bool)

(declare-fun e!2785639 () Bool)

(assert (=> b!4473345 (=> res!1856299 e!2785639)))

(declare-fun noDuplicateKeys!1040 (List!50450) Bool)

(assert (=> b!4473345 (= res!1856299 (not (noDuplicateKeys!1040 (_2!28592 (h!56100 (toList!4087 lm!1477))))))))

(declare-fun b!4473346 () Bool)

(declare-fun e!2785633 () Unit!88281)

(declare-fun Unit!88283 () Unit!88281)

(assert (=> b!4473346 (= e!2785633 Unit!88283)))

(declare-fun b!4473347 () Bool)

(declare-fun e!2785637 () Bool)

(declare-fun e!2785635 () Bool)

(assert (=> b!4473347 (= e!2785637 e!2785635)))

(declare-fun res!1856298 () Bool)

(assert (=> b!4473347 (=> res!1856298 e!2785635)))

(declare-fun lt!1661267 () ListMap!3349)

(assert (=> b!4473347 (= res!1856298 (not (= lt!1661267 (extractMap!1096 (t!357401 (toList!4087 lm!1477))))))))

(declare-fun lt!1661258 () ListLongMap!2719)

(assert (=> b!4473347 (= lt!1661267 (extractMap!1096 (toList!4087 lt!1661258)))))

(declare-fun b!4473348 () Bool)

(declare-fun res!1856297 () Bool)

(assert (=> b!4473348 (=> res!1856297 e!2785626)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4473348 (= res!1856297 (or ((_ is Nil!50327) (toList!4087 lm!1477)) (not (= (_1!28592 (h!56100 (toList!4087 lm!1477))) hash!344))))))

(declare-fun b!4473349 () Bool)

(declare-fun res!1856293 () Bool)

(assert (=> b!4473349 (=> res!1856293 e!2785626)))

(declare-fun newBucket!178 () List!50450)

(assert (=> b!4473349 (= res!1856293 (not (noDuplicateKeys!1040 newBucket!178)))))

(declare-fun b!4473350 () Bool)

(declare-fun res!1856290 () Bool)

(assert (=> b!4473350 (=> res!1856290 e!2785639)))

(declare-fun removePairForKey!667 (List!50450 K!11740) List!50450)

(assert (=> b!4473350 (= res!1856290 (not (= (removePairForKey!667 (_2!28592 (h!56100 (toList!4087 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4473352 () Bool)

(assert (=> b!4473352 (= e!2785639 true)))

(declare-fun b!4473353 () Bool)

(declare-fun e!2785627 () Bool)

(assert (=> b!4473353 (= e!2785627 false)))

(declare-fun b!4473354 () Bool)

(declare-fun e!2785628 () Bool)

(assert (=> b!4473354 (= e!2785636 e!2785628)))

(declare-fun res!1856295 () Bool)

(assert (=> b!4473354 (=> (not res!1856295) (not e!2785628))))

(declare-fun lt!1661274 () (_ BitVec 64))

(assert (=> b!4473354 (= res!1856295 (= lt!1661274 hash!344))))

(declare-datatypes ((Hashable!5435 0))(
  ( (HashableExt!5434 (__x!31138 Int)) )
))
(declare-fun hashF!1107 () Hashable!5435)

(declare-fun hash!2487 (Hashable!5435 K!11740) (_ BitVec 64))

(assert (=> b!4473354 (= lt!1661274 (hash!2487 hashF!1107 key!3287))))

(declare-fun b!4473355 () Bool)

(declare-fun Unit!88284 () Unit!88281)

(assert (=> b!4473355 (= e!2785630 Unit!88284)))

(declare-fun b!4473356 () Bool)

(assert (=> b!4473356 (= e!2785628 (not e!2785626))))

(declare-fun res!1856302 () Bool)

(assert (=> b!4473356 (=> res!1856302 e!2785626)))

(declare-fun lt!1661270 () List!50450)

(assert (=> b!4473356 (= res!1856302 (not (= newBucket!178 (removePairForKey!667 lt!1661270 key!3287))))))

(declare-fun lt!1661263 () Unit!88281)

(declare-fun lambda!163969 () Int)

(declare-fun lt!1661269 () tuple2!50596)

(declare-fun forallContained!2285 (List!50451 Int tuple2!50596) Unit!88281)

(assert (=> b!4473356 (= lt!1661263 (forallContained!2285 (toList!4087 lm!1477) lambda!163969 lt!1661269))))

(declare-fun contains!12898 (List!50451 tuple2!50596) Bool)

(assert (=> b!4473356 (contains!12898 (toList!4087 lm!1477) lt!1661269)))

(assert (=> b!4473356 (= lt!1661269 (tuple2!50597 hash!344 lt!1661270))))

(declare-fun lt!1661276 () Unit!88281)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!552 (List!50451 (_ BitVec 64) List!50450) Unit!88281)

(assert (=> b!4473356 (= lt!1661276 (lemmaGetValueByKeyImpliesContainsTuple!552 (toList!4087 lm!1477) hash!344 lt!1661270))))

(declare-fun apply!11777 (ListLongMap!2719 (_ BitVec 64)) List!50450)

(assert (=> b!4473356 (= lt!1661270 (apply!11777 lm!1477 hash!344))))

(declare-fun contains!12899 (ListLongMap!2719 (_ BitVec 64)) Bool)

(assert (=> b!4473356 (contains!12899 lm!1477 lt!1661274)))

(declare-fun lt!1661260 () Unit!88281)

(declare-fun lemmaInGenMapThenLongMapContainsHash!114 (ListLongMap!2719 K!11740 Hashable!5435) Unit!88281)

(assert (=> b!4473356 (= lt!1661260 (lemmaInGenMapThenLongMapContainsHash!114 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4473357 () Bool)

(declare-fun e!2785629 () Bool)

(assert (=> b!4473357 (= e!2785629 e!2785637)))

(declare-fun res!1856291 () Bool)

(assert (=> b!4473357 (=> res!1856291 e!2785637)))

(declare-fun lt!1661261 () ListLongMap!2719)

(declare-fun lt!1661259 () tuple2!50596)

(declare-fun +!1388 (ListLongMap!2719 tuple2!50596) ListLongMap!2719)

(assert (=> b!4473357 (= res!1856291 (not (= lt!1661261 (+!1388 lt!1661258 lt!1661259))))))

(declare-fun tail!7532 (ListLongMap!2719) ListLongMap!2719)

(assert (=> b!4473357 (= lt!1661258 (tail!7532 lm!1477))))

(declare-fun b!4473358 () Bool)

(declare-fun res!1856305 () Bool)

(assert (=> b!4473358 (=> (not res!1856305) (not e!2785628))))

(declare-fun allKeysSameHash!894 (List!50450 (_ BitVec 64) Hashable!5435) Bool)

(assert (=> b!4473358 (= res!1856305 (allKeysSameHash!894 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4473359 () Bool)

(assert (=> b!4473359 (= e!2785635 e!2785639)))

(declare-fun res!1856288 () Bool)

(assert (=> b!4473359 (=> res!1856288 e!2785639)))

(declare-fun lt!1661265 () Bool)

(assert (=> b!4473359 (= res!1856288 lt!1661265)))

(declare-fun lt!1661268 () Unit!88281)

(assert (=> b!4473359 (= lt!1661268 e!2785633)))

(declare-fun c!761711 () Bool)

(assert (=> b!4473359 (= c!761711 lt!1661265)))

(assert (=> b!4473359 (= lt!1661265 (contains!12897 lt!1661267 key!3287))))

(declare-fun b!4473360 () Bool)

(declare-fun res!1856301 () Bool)

(assert (=> b!4473360 (=> (not res!1856301) (not e!2785636))))

(declare-fun allKeysSameHashInMap!1147 (ListLongMap!2719 Hashable!5435) Bool)

(assert (=> b!4473360 (= res!1856301 (allKeysSameHashInMap!1147 lm!1477 hashF!1107))))

(declare-fun b!4473361 () Bool)

(declare-fun res!1856294 () Bool)

(assert (=> b!4473361 (=> res!1856294 e!2785639)))

(declare-fun forall!10020 (List!50451 Int) Bool)

(assert (=> b!4473361 (= res!1856294 (not (forall!10020 (toList!4087 lm!1477) lambda!163969)))))

(declare-fun b!4473351 () Bool)

(declare-fun e!2785638 () Bool)

(assert (=> b!4473351 (= e!2785638 e!2785629)))

(declare-fun res!1856292 () Bool)

(assert (=> b!4473351 (=> res!1856292 e!2785629)))

(declare-fun tail!7533 (List!50451) List!50451)

(assert (=> b!4473351 (= res!1856292 (not (= (t!357401 (toList!4087 lm!1477)) (tail!7533 (toList!4087 lt!1661261)))))))

(assert (=> b!4473351 (= lt!1661261 (+!1388 lm!1477 lt!1661259))))

(declare-fun eq!533 (ListMap!3349 ListMap!3349) Bool)

(declare-fun -!302 (ListMap!3349 K!11740) ListMap!3349)

(assert (=> b!4473351 (eq!533 (extractMap!1096 (Cons!50327 lt!1661259 Nil!50327)) (-!302 (extractMap!1096 (Cons!50327 (tuple2!50597 hash!344 (_2!28592 (h!56100 (toList!4087 lm!1477)))) Nil!50327)) key!3287))))

(assert (=> b!4473351 (= lt!1661259 (tuple2!50597 hash!344 newBucket!178))))

(declare-fun lt!1661271 () Unit!88281)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!32 ((_ BitVec 64) List!50450 List!50450 K!11740 Hashable!5435) Unit!88281)

(assert (=> b!4473351 (= lt!1661271 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!32 hash!344 (_2!28592 (h!56100 (toList!4087 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1661275 () List!50451)

(assert (=> b!4473351 (contains!12897 (extractMap!1096 lt!1661275) key!3287)))

(declare-fun lt!1661266 () Unit!88281)

(declare-fun lemmaListContainsThenExtractedMapContains!36 (ListLongMap!2719 K!11740 Hashable!5435) Unit!88281)

(assert (=> b!4473351 (= lt!1661266 (lemmaListContainsThenExtractedMapContains!36 (ListLongMap!2720 lt!1661275) key!3287 hashF!1107))))

(declare-fun res!1856304 () Bool)

(assert (=> start!439840 (=> (not res!1856304) (not e!2785636))))

(assert (=> start!439840 (= res!1856304 (forall!10020 (toList!4087 lm!1477) lambda!163969))))

(assert (=> start!439840 e!2785636))

(assert (=> start!439840 true))

(declare-fun e!2785632 () Bool)

(declare-fun inv!65924 (ListLongMap!2719) Bool)

(assert (=> start!439840 (and (inv!65924 lm!1477) e!2785632)))

(assert (=> start!439840 tp_is_empty!27437))

(assert (=> start!439840 e!2785631))

(declare-fun b!4473362 () Bool)

(declare-fun Unit!88285 () Unit!88281)

(assert (=> b!4473362 (= e!2785630 Unit!88285)))

(declare-fun lt!1661262 () Unit!88281)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!40 (ListLongMap!2719 K!11740 Hashable!5435) Unit!88281)

(assert (=> b!4473362 (= lt!1661262 (lemmaNotInItsHashBucketThenNotInMap!40 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4473362 false))

(declare-fun b!4473363 () Bool)

(declare-fun Unit!88286 () Unit!88281)

(assert (=> b!4473363 (= e!2785633 Unit!88286)))

(declare-fun lt!1661273 () Unit!88281)

(assert (=> b!4473363 (= lt!1661273 (lemmaInGenMapThenLongMapContainsHash!114 lt!1661258 key!3287 hashF!1107))))

(declare-fun res!1856296 () Bool)

(assert (=> b!4473363 (= res!1856296 (contains!12899 lt!1661258 lt!1661274))))

(assert (=> b!4473363 (=> (not res!1856296) (not e!2785627))))

(assert (=> b!4473363 e!2785627))

(declare-fun b!4473364 () Bool)

(declare-fun tp!1336435 () Bool)

(assert (=> b!4473364 (= e!2785632 tp!1336435)))

(declare-fun b!4473365 () Bool)

(assert (=> b!4473365 (= e!2785634 e!2785638)))

(declare-fun res!1856303 () Bool)

(assert (=> b!4473365 (=> res!1856303 e!2785638)))

(declare-fun containsKeyBiggerList!40 (List!50451 K!11740) Bool)

(assert (=> b!4473365 (= res!1856303 (not (containsKeyBiggerList!40 lt!1661275 key!3287)))))

(assert (=> b!4473365 (= lt!1661275 (Cons!50327 (h!56100 (toList!4087 lm!1477)) Nil!50327))))

(assert (= (and start!439840 res!1856304) b!4473360))

(assert (= (and b!4473360 res!1856301) b!4473344))

(assert (= (and b!4473344 res!1856300) b!4473354))

(assert (= (and b!4473354 res!1856295) b!4473358))

(assert (= (and b!4473358 res!1856305) b!4473356))

(assert (= (and b!4473356 (not res!1856302)) b!4473349))

(assert (= (and b!4473349 (not res!1856293)) b!4473348))

(assert (= (and b!4473348 (not res!1856297)) b!4473342))

(assert (= (and b!4473342 c!761712) b!4473362))

(assert (= (and b!4473342 (not c!761712)) b!4473355))

(assert (= (and b!4473342 (not res!1856289)) b!4473365))

(assert (= (and b!4473365 (not res!1856303)) b!4473351))

(assert (= (and b!4473351 (not res!1856292)) b!4473357))

(assert (= (and b!4473357 (not res!1856291)) b!4473347))

(assert (= (and b!4473347 (not res!1856298)) b!4473359))

(assert (= (and b!4473359 c!761711) b!4473363))

(assert (= (and b!4473359 (not c!761711)) b!4473346))

(assert (= (and b!4473363 res!1856296) b!4473353))

(assert (= (and b!4473359 (not res!1856288)) b!4473361))

(assert (= (and b!4473361 (not res!1856294)) b!4473345))

(assert (= (and b!4473345 (not res!1856299)) b!4473350))

(assert (= (and b!4473350 (not res!1856290)) b!4473352))

(assert (= start!439840 b!4473364))

(assert (= (and start!439840 ((_ is Cons!50326) newBucket!178)) b!4473343))

(declare-fun m!5182507 () Bool)

(assert (=> b!4473360 m!5182507))

(declare-fun m!5182509 () Bool)

(assert (=> b!4473362 m!5182509))

(declare-fun m!5182511 () Bool)

(assert (=> b!4473359 m!5182511))

(declare-fun m!5182513 () Bool)

(assert (=> b!4473344 m!5182513))

(assert (=> b!4473344 m!5182513))

(declare-fun m!5182515 () Bool)

(assert (=> b!4473344 m!5182515))

(declare-fun m!5182517 () Bool)

(assert (=> b!4473365 m!5182517))

(declare-fun m!5182519 () Bool)

(assert (=> b!4473354 m!5182519))

(declare-fun m!5182521 () Bool)

(assert (=> b!4473361 m!5182521))

(declare-fun m!5182523 () Bool)

(assert (=> b!4473347 m!5182523))

(declare-fun m!5182525 () Bool)

(assert (=> b!4473347 m!5182525))

(declare-fun m!5182527 () Bool)

(assert (=> b!4473357 m!5182527))

(declare-fun m!5182529 () Bool)

(assert (=> b!4473357 m!5182529))

(declare-fun m!5182531 () Bool)

(assert (=> b!4473350 m!5182531))

(declare-fun m!5182533 () Bool)

(assert (=> b!4473342 m!5182533))

(declare-fun m!5182535 () Bool)

(assert (=> b!4473363 m!5182535))

(declare-fun m!5182537 () Bool)

(assert (=> b!4473363 m!5182537))

(declare-fun m!5182539 () Bool)

(assert (=> b!4473349 m!5182539))

(declare-fun m!5182541 () Bool)

(assert (=> b!4473351 m!5182541))

(declare-fun m!5182543 () Bool)

(assert (=> b!4473351 m!5182543))

(declare-fun m!5182545 () Bool)

(assert (=> b!4473351 m!5182545))

(declare-fun m!5182547 () Bool)

(assert (=> b!4473351 m!5182547))

(declare-fun m!5182549 () Bool)

(assert (=> b!4473351 m!5182549))

(assert (=> b!4473351 m!5182547))

(declare-fun m!5182551 () Bool)

(assert (=> b!4473351 m!5182551))

(declare-fun m!5182553 () Bool)

(assert (=> b!4473351 m!5182553))

(declare-fun m!5182555 () Bool)

(assert (=> b!4473351 m!5182555))

(assert (=> b!4473351 m!5182543))

(declare-fun m!5182557 () Bool)

(assert (=> b!4473351 m!5182557))

(declare-fun m!5182559 () Bool)

(assert (=> b!4473351 m!5182559))

(assert (=> b!4473351 m!5182555))

(assert (=> b!4473351 m!5182541))

(declare-fun m!5182561 () Bool)

(assert (=> b!4473358 m!5182561))

(declare-fun m!5182563 () Bool)

(assert (=> b!4473356 m!5182563))

(declare-fun m!5182565 () Bool)

(assert (=> b!4473356 m!5182565))

(declare-fun m!5182567 () Bool)

(assert (=> b!4473356 m!5182567))

(declare-fun m!5182569 () Bool)

(assert (=> b!4473356 m!5182569))

(declare-fun m!5182571 () Bool)

(assert (=> b!4473356 m!5182571))

(declare-fun m!5182573 () Bool)

(assert (=> b!4473356 m!5182573))

(declare-fun m!5182575 () Bool)

(assert (=> b!4473356 m!5182575))

(declare-fun m!5182577 () Bool)

(assert (=> b!4473345 m!5182577))

(assert (=> start!439840 m!5182521))

(declare-fun m!5182579 () Bool)

(assert (=> start!439840 m!5182579))

(check-sat (not b!4473364) (not b!4473361) (not b!4473350) (not b!4473343) (not b!4473363) (not b!4473360) (not b!4473357) (not b!4473351) (not b!4473347) (not b!4473362) (not b!4473349) tp_is_empty!27439 (not b!4473344) (not b!4473356) (not b!4473354) (not b!4473342) (not b!4473358) (not b!4473359) tp_is_empty!27437 (not b!4473345) (not start!439840) (not b!4473365))
(check-sat)
