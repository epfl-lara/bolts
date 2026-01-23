; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439148 () Bool)

(assert start!439148)

(declare-fun b!4469511 () Bool)

(declare-fun res!1854309 () Bool)

(declare-fun e!2783204 () Bool)

(assert (=> b!4469511 (=> res!1854309 e!2783204)))

(declare-datatypes ((K!11705 0))(
  ( (K!11706 (val!17635 Int)) )
))
(declare-datatypes ((V!11951 0))(
  ( (V!11952 (val!17636 Int)) )
))
(declare-datatypes ((tuple2!50538 0))(
  ( (tuple2!50539 (_1!28563 K!11705) (_2!28563 V!11951)) )
))
(declare-datatypes ((List!50414 0))(
  ( (Nil!50290) (Cons!50290 (h!56055 tuple2!50538) (t!357364 List!50414)) )
))
(declare-datatypes ((tuple2!50540 0))(
  ( (tuple2!50541 (_1!28564 (_ BitVec 64)) (_2!28564 List!50414)) )
))
(declare-datatypes ((List!50415 0))(
  ( (Nil!50291) (Cons!50291 (h!56056 tuple2!50540) (t!357365 List!50415)) )
))
(declare-datatypes ((ListLongMap!2691 0))(
  ( (ListLongMap!2692 (toList!4059 List!50415)) )
))
(declare-fun lm!1477 () ListLongMap!2691)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4469511 (= res!1854309 (or ((_ is Nil!50291) (toList!4059 lm!1477)) (not (= (_1!28564 (h!56056 (toList!4059 lm!1477))) hash!344))))))

(declare-fun b!4469512 () Bool)

(declare-fun res!1854308 () Bool)

(declare-fun e!2783207 () Bool)

(assert (=> b!4469512 (=> res!1854308 e!2783207)))

(declare-fun lt!1658345 () ListLongMap!2691)

(declare-datatypes ((ListMap!3321 0))(
  ( (ListMap!3322 (toList!4060 List!50414)) )
))
(declare-fun extractMap!1082 (List!50415) ListMap!3321)

(assert (=> b!4469512 (= res!1854308 (not (= (extractMap!1082 (toList!4059 lt!1658345)) (extractMap!1082 (t!357365 (toList!4059 lm!1477))))))))

(declare-fun b!4469513 () Bool)

(declare-fun e!2783203 () Bool)

(assert (=> b!4469513 (= e!2783204 e!2783203)))

(declare-fun res!1854304 () Bool)

(assert (=> b!4469513 (=> res!1854304 e!2783203)))

(declare-fun lt!1658339 () Bool)

(assert (=> b!4469513 (= res!1854304 lt!1658339)))

(declare-datatypes ((Unit!87781 0))(
  ( (Unit!87782) )
))
(declare-fun lt!1658347 () Unit!87781)

(declare-fun e!2783208 () Unit!87781)

(assert (=> b!4469513 (= lt!1658347 e!2783208)))

(declare-fun c!760914 () Bool)

(assert (=> b!4469513 (= c!760914 lt!1658339)))

(declare-fun key!3287 () K!11705)

(declare-fun containsKey!1474 (List!50414 K!11705) Bool)

(assert (=> b!4469513 (= lt!1658339 (not (containsKey!1474 (_2!28564 (h!56056 (toList!4059 lm!1477))) key!3287)))))

(declare-fun b!4469514 () Bool)

(declare-fun e!2783202 () Bool)

(assert (=> b!4469514 (= e!2783202 e!2783207)))

(declare-fun res!1854311 () Bool)

(assert (=> b!4469514 (=> res!1854311 e!2783207)))

(declare-fun lt!1658342 () ListLongMap!2691)

(declare-fun lt!1658336 () tuple2!50540)

(declare-fun +!1370 (ListLongMap!2691 tuple2!50540) ListLongMap!2691)

(assert (=> b!4469514 (= res!1854311 (not (= lt!1658342 (+!1370 lt!1658345 lt!1658336))))))

(declare-fun tail!7504 (ListLongMap!2691) ListLongMap!2691)

(assert (=> b!4469514 (= lt!1658345 (tail!7504 lm!1477))))

(declare-fun b!4469515 () Bool)

(declare-fun e!2783209 () Bool)

(assert (=> b!4469515 (= e!2783209 (not e!2783204))))

(declare-fun res!1854310 () Bool)

(assert (=> b!4469515 (=> res!1854310 e!2783204)))

(declare-fun lt!1658346 () List!50414)

(declare-fun newBucket!178 () List!50414)

(declare-fun removePairForKey!653 (List!50414 K!11705) List!50414)

(assert (=> b!4469515 (= res!1854310 (not (= newBucket!178 (removePairForKey!653 lt!1658346 key!3287))))))

(declare-fun lt!1658344 () tuple2!50540)

(declare-fun lambda!163311 () Int)

(declare-fun lt!1658335 () Unit!87781)

(declare-fun forallContained!2263 (List!50415 Int tuple2!50540) Unit!87781)

(assert (=> b!4469515 (= lt!1658335 (forallContained!2263 (toList!4059 lm!1477) lambda!163311 lt!1658344))))

(declare-fun contains!12843 (List!50415 tuple2!50540) Bool)

(assert (=> b!4469515 (contains!12843 (toList!4059 lm!1477) lt!1658344)))

(assert (=> b!4469515 (= lt!1658344 (tuple2!50541 hash!344 lt!1658346))))

(declare-fun lt!1658341 () Unit!87781)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!538 (List!50415 (_ BitVec 64) List!50414) Unit!87781)

(assert (=> b!4469515 (= lt!1658341 (lemmaGetValueByKeyImpliesContainsTuple!538 (toList!4059 lm!1477) hash!344 lt!1658346))))

(declare-fun apply!11763 (ListLongMap!2691 (_ BitVec 64)) List!50414)

(assert (=> b!4469515 (= lt!1658346 (apply!11763 lm!1477 hash!344))))

(declare-fun lt!1658334 () (_ BitVec 64))

(declare-fun contains!12844 (ListLongMap!2691 (_ BitVec 64)) Bool)

(assert (=> b!4469515 (contains!12844 lm!1477 lt!1658334)))

(declare-datatypes ((Hashable!5421 0))(
  ( (HashableExt!5420 (__x!31124 Int)) )
))
(declare-fun hashF!1107 () Hashable!5421)

(declare-fun lt!1658338 () Unit!87781)

(declare-fun lemmaInGenMapThenLongMapContainsHash!100 (ListLongMap!2691 K!11705 Hashable!5421) Unit!87781)

(assert (=> b!4469515 (= lt!1658338 (lemmaInGenMapThenLongMapContainsHash!100 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4469516 () Bool)

(declare-fun res!1854300 () Bool)

(assert (=> b!4469516 (=> (not res!1854300) (not e!2783209))))

(declare-fun allKeysSameHash!880 (List!50414 (_ BitVec 64) Hashable!5421) Bool)

(assert (=> b!4469516 (= res!1854300 (allKeysSameHash!880 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4469517 () Bool)

(declare-fun res!1854299 () Bool)

(assert (=> b!4469517 (=> res!1854299 e!2783204)))

(declare-fun noDuplicateKeys!1026 (List!50414) Bool)

(assert (=> b!4469517 (= res!1854299 (not (noDuplicateKeys!1026 newBucket!178)))))

(declare-fun b!4469518 () Bool)

(declare-fun res!1854307 () Bool)

(declare-fun e!2783211 () Bool)

(assert (=> b!4469518 (=> (not res!1854307) (not e!2783211))))

(declare-fun contains!12845 (ListMap!3321 K!11705) Bool)

(assert (=> b!4469518 (= res!1854307 (contains!12845 (extractMap!1082 (toList!4059 lm!1477)) key!3287))))

(declare-fun e!2783210 () Bool)

(declare-fun tp_is_empty!27383 () Bool)

(declare-fun tp_is_empty!27381 () Bool)

(declare-fun tp!1336263 () Bool)

(declare-fun b!4469519 () Bool)

(assert (=> b!4469519 (= e!2783210 (and tp_is_empty!27381 tp_is_empty!27383 tp!1336263))))

(declare-fun b!4469521 () Bool)

(declare-fun e!2783206 () Bool)

(assert (=> b!4469521 (= e!2783203 e!2783206)))

(declare-fun res!1854303 () Bool)

(assert (=> b!4469521 (=> res!1854303 e!2783206)))

(declare-fun lt!1658340 () List!50415)

(declare-fun containsKeyBiggerList!26 (List!50415 K!11705) Bool)

(assert (=> b!4469521 (= res!1854303 (not (containsKeyBiggerList!26 lt!1658340 key!3287)))))

(assert (=> b!4469521 (= lt!1658340 (Cons!50291 (h!56056 (toList!4059 lm!1477)) Nil!50291))))

(declare-fun b!4469522 () Bool)

(declare-fun Unit!87783 () Unit!87781)

(assert (=> b!4469522 (= e!2783208 Unit!87783)))

(declare-fun b!4469523 () Bool)

(declare-fun Unit!87784 () Unit!87781)

(assert (=> b!4469523 (= e!2783208 Unit!87784)))

(declare-fun lt!1658343 () Unit!87781)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!26 (ListLongMap!2691 K!11705 Hashable!5421) Unit!87781)

(assert (=> b!4469523 (= lt!1658343 (lemmaNotInItsHashBucketThenNotInMap!26 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4469523 false))

(declare-fun b!4469524 () Bool)

(assert (=> b!4469524 (= e!2783206 e!2783202)))

(declare-fun res!1854301 () Bool)

(assert (=> b!4469524 (=> res!1854301 e!2783202)))

(declare-fun tail!7505 (List!50415) List!50415)

(assert (=> b!4469524 (= res!1854301 (not (= (t!357365 (toList!4059 lm!1477)) (tail!7505 (toList!4059 lt!1658342)))))))

(assert (=> b!4469524 (= lt!1658342 (+!1370 lm!1477 lt!1658336))))

(declare-fun eq!519 (ListMap!3321 ListMap!3321) Bool)

(declare-fun -!288 (ListMap!3321 K!11705) ListMap!3321)

(assert (=> b!4469524 (eq!519 (extractMap!1082 (Cons!50291 lt!1658336 Nil!50291)) (-!288 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)) key!3287))))

(assert (=> b!4469524 (= lt!1658336 (tuple2!50541 hash!344 newBucket!178))))

(declare-fun lt!1658337 () Unit!87781)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!18 ((_ BitVec 64) List!50414 List!50414 K!11705 Hashable!5421) Unit!87781)

(assert (=> b!4469524 (= lt!1658337 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!18 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4469524 (contains!12845 (extractMap!1082 lt!1658340) key!3287)))

(declare-fun lt!1658348 () Unit!87781)

(declare-fun lemmaListContainsThenExtractedMapContains!22 (ListLongMap!2691 K!11705 Hashable!5421) Unit!87781)

(assert (=> b!4469524 (= lt!1658348 (lemmaListContainsThenExtractedMapContains!22 (ListLongMap!2692 lt!1658340) key!3287 hashF!1107))))

(declare-fun b!4469525 () Bool)

(declare-fun forall!9994 (List!50415 Int) Bool)

(assert (=> b!4469525 (= e!2783207 (forall!9994 (toList!4059 lt!1658345) lambda!163311))))

(declare-fun b!4469526 () Bool)

(declare-fun e!2783205 () Bool)

(declare-fun tp!1336262 () Bool)

(assert (=> b!4469526 (= e!2783205 tp!1336262)))

(declare-fun b!4469527 () Bool)

(assert (=> b!4469527 (= e!2783211 e!2783209)))

(declare-fun res!1854305 () Bool)

(assert (=> b!4469527 (=> (not res!1854305) (not e!2783209))))

(assert (=> b!4469527 (= res!1854305 (= lt!1658334 hash!344))))

(declare-fun hash!2453 (Hashable!5421 K!11705) (_ BitVec 64))

(assert (=> b!4469527 (= lt!1658334 (hash!2453 hashF!1107 key!3287))))

(declare-fun b!4469520 () Bool)

(declare-fun res!1854306 () Bool)

(assert (=> b!4469520 (=> (not res!1854306) (not e!2783211))))

(declare-fun allKeysSameHashInMap!1133 (ListLongMap!2691 Hashable!5421) Bool)

(assert (=> b!4469520 (= res!1854306 (allKeysSameHashInMap!1133 lm!1477 hashF!1107))))

(declare-fun res!1854302 () Bool)

(assert (=> start!439148 (=> (not res!1854302) (not e!2783211))))

(assert (=> start!439148 (= res!1854302 (forall!9994 (toList!4059 lm!1477) lambda!163311))))

(assert (=> start!439148 e!2783211))

(assert (=> start!439148 true))

(declare-fun inv!65889 (ListLongMap!2691) Bool)

(assert (=> start!439148 (and (inv!65889 lm!1477) e!2783205)))

(assert (=> start!439148 tp_is_empty!27381))

(assert (=> start!439148 e!2783210))

(assert (= (and start!439148 res!1854302) b!4469520))

(assert (= (and b!4469520 res!1854306) b!4469518))

(assert (= (and b!4469518 res!1854307) b!4469527))

(assert (= (and b!4469527 res!1854305) b!4469516))

(assert (= (and b!4469516 res!1854300) b!4469515))

(assert (= (and b!4469515 (not res!1854310)) b!4469517))

(assert (= (and b!4469517 (not res!1854299)) b!4469511))

(assert (= (and b!4469511 (not res!1854309)) b!4469513))

(assert (= (and b!4469513 c!760914) b!4469523))

(assert (= (and b!4469513 (not c!760914)) b!4469522))

(assert (= (and b!4469513 (not res!1854304)) b!4469521))

(assert (= (and b!4469521 (not res!1854303)) b!4469524))

(assert (= (and b!4469524 (not res!1854301)) b!4469514))

(assert (= (and b!4469514 (not res!1854311)) b!4469512))

(assert (= (and b!4469512 (not res!1854308)) b!4469525))

(assert (= start!439148 b!4469526))

(assert (= (and start!439148 ((_ is Cons!50290) newBucket!178)) b!4469519))

(declare-fun m!5176345 () Bool)

(assert (=> b!4469517 m!5176345))

(declare-fun m!5176347 () Bool)

(assert (=> b!4469512 m!5176347))

(declare-fun m!5176349 () Bool)

(assert (=> b!4469512 m!5176349))

(declare-fun m!5176351 () Bool)

(assert (=> b!4469524 m!5176351))

(assert (=> b!4469524 m!5176351))

(declare-fun m!5176353 () Bool)

(assert (=> b!4469524 m!5176353))

(declare-fun m!5176355 () Bool)

(assert (=> b!4469524 m!5176355))

(declare-fun m!5176357 () Bool)

(assert (=> b!4469524 m!5176357))

(assert (=> b!4469524 m!5176353))

(declare-fun m!5176359 () Bool)

(assert (=> b!4469524 m!5176359))

(declare-fun m!5176361 () Bool)

(assert (=> b!4469524 m!5176361))

(declare-fun m!5176363 () Bool)

(assert (=> b!4469524 m!5176363))

(declare-fun m!5176365 () Bool)

(assert (=> b!4469524 m!5176365))

(declare-fun m!5176367 () Bool)

(assert (=> b!4469524 m!5176367))

(declare-fun m!5176369 () Bool)

(assert (=> b!4469524 m!5176369))

(assert (=> b!4469524 m!5176367))

(assert (=> b!4469524 m!5176357))

(declare-fun m!5176371 () Bool)

(assert (=> b!4469515 m!5176371))

(declare-fun m!5176373 () Bool)

(assert (=> b!4469515 m!5176373))

(declare-fun m!5176375 () Bool)

(assert (=> b!4469515 m!5176375))

(declare-fun m!5176377 () Bool)

(assert (=> b!4469515 m!5176377))

(declare-fun m!5176379 () Bool)

(assert (=> b!4469515 m!5176379))

(declare-fun m!5176381 () Bool)

(assert (=> b!4469515 m!5176381))

(declare-fun m!5176383 () Bool)

(assert (=> b!4469515 m!5176383))

(declare-fun m!5176385 () Bool)

(assert (=> b!4469518 m!5176385))

(assert (=> b!4469518 m!5176385))

(declare-fun m!5176387 () Bool)

(assert (=> b!4469518 m!5176387))

(declare-fun m!5176389 () Bool)

(assert (=> b!4469514 m!5176389))

(declare-fun m!5176391 () Bool)

(assert (=> b!4469514 m!5176391))

(declare-fun m!5176393 () Bool)

(assert (=> b!4469523 m!5176393))

(declare-fun m!5176395 () Bool)

(assert (=> b!4469516 m!5176395))

(declare-fun m!5176397 () Bool)

(assert (=> b!4469513 m!5176397))

(declare-fun m!5176399 () Bool)

(assert (=> b!4469520 m!5176399))

(declare-fun m!5176401 () Bool)

(assert (=> b!4469527 m!5176401))

(declare-fun m!5176403 () Bool)

(assert (=> b!4469525 m!5176403))

(declare-fun m!5176405 () Bool)

(assert (=> b!4469521 m!5176405))

(declare-fun m!5176407 () Bool)

(assert (=> start!439148 m!5176407))

(declare-fun m!5176409 () Bool)

(assert (=> start!439148 m!5176409))

(check-sat (not b!4469514) (not b!4469519) tp_is_empty!27383 (not b!4469523) (not b!4469512) (not b!4469526) (not b!4469516) (not b!4469513) (not b!4469515) (not start!439148) (not b!4469517) (not b!4469518) (not b!4469524) (not b!4469525) (not b!4469520) (not b!4469521) (not b!4469527) tp_is_empty!27381)
(check-sat)
(get-model)

(declare-fun d!1363595 () Bool)

(declare-fun res!1854320 () Bool)

(declare-fun e!2783218 () Bool)

(assert (=> d!1363595 (=> res!1854320 e!2783218)))

(declare-fun e!2783220 () Bool)

(assert (=> d!1363595 (= res!1854320 e!2783220)))

(declare-fun res!1854319 () Bool)

(assert (=> d!1363595 (=> (not res!1854319) (not e!2783220))))

(assert (=> d!1363595 (= res!1854319 ((_ is Cons!50291) lt!1658340))))

(assert (=> d!1363595 (= (containsKeyBiggerList!26 lt!1658340 key!3287) e!2783218)))

(declare-fun b!4469534 () Bool)

(assert (=> b!4469534 (= e!2783220 (containsKey!1474 (_2!28564 (h!56056 lt!1658340)) key!3287))))

(declare-fun b!4469535 () Bool)

(declare-fun e!2783219 () Bool)

(assert (=> b!4469535 (= e!2783218 e!2783219)))

(declare-fun res!1854318 () Bool)

(assert (=> b!4469535 (=> (not res!1854318) (not e!2783219))))

(assert (=> b!4469535 (= res!1854318 ((_ is Cons!50291) lt!1658340))))

(declare-fun b!4469536 () Bool)

(assert (=> b!4469536 (= e!2783219 (containsKeyBiggerList!26 (t!357365 lt!1658340) key!3287))))

(assert (= (and d!1363595 res!1854319) b!4469534))

(assert (= (and d!1363595 (not res!1854320)) b!4469535))

(assert (= (and b!4469535 res!1854318) b!4469536))

(declare-fun m!5176411 () Bool)

(assert (=> b!4469534 m!5176411))

(declare-fun m!5176413 () Bool)

(assert (=> b!4469536 m!5176413))

(assert (=> b!4469521 d!1363595))

(declare-fun bs!795106 () Bool)

(declare-fun d!1363597 () Bool)

(assert (= bs!795106 (and d!1363597 start!439148)))

(declare-fun lambda!163316 () Int)

(assert (=> bs!795106 (= lambda!163316 lambda!163311)))

(assert (=> d!1363597 (not (contains!12845 (extractMap!1082 (toList!4059 lm!1477)) key!3287))))

(declare-fun lt!1658363 () Unit!87781)

(declare-fun choose!28584 (ListLongMap!2691 K!11705 Hashable!5421) Unit!87781)

(assert (=> d!1363597 (= lt!1658363 (choose!28584 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1363597 (forall!9994 (toList!4059 lm!1477) lambda!163316)))

(assert (=> d!1363597 (= (lemmaNotInItsHashBucketThenNotInMap!26 lm!1477 key!3287 hashF!1107) lt!1658363)))

(declare-fun bs!795108 () Bool)

(assert (= bs!795108 d!1363597))

(assert (=> bs!795108 m!5176385))

(assert (=> bs!795108 m!5176385))

(assert (=> bs!795108 m!5176387))

(declare-fun m!5176443 () Bool)

(assert (=> bs!795108 m!5176443))

(declare-fun m!5176445 () Bool)

(assert (=> bs!795108 m!5176445))

(assert (=> b!4469523 d!1363597))

(declare-fun bs!795111 () Bool)

(declare-fun d!1363613 () Bool)

(assert (= bs!795111 (and d!1363613 start!439148)))

(declare-fun lambda!163320 () Int)

(assert (=> bs!795111 (= lambda!163320 lambda!163311)))

(declare-fun bs!795112 () Bool)

(assert (= bs!795112 (and d!1363613 d!1363597)))

(assert (=> bs!795112 (= lambda!163320 lambda!163316)))

(declare-fun lt!1658393 () ListMap!3321)

(declare-fun invariantList!929 (List!50414) Bool)

(assert (=> d!1363613 (invariantList!929 (toList!4060 lt!1658393))))

(declare-fun e!2783271 () ListMap!3321)

(assert (=> d!1363613 (= lt!1658393 e!2783271)))

(declare-fun c!760926 () Bool)

(assert (=> d!1363613 (= c!760926 ((_ is Cons!50291) (toList!4059 lt!1658345)))))

(assert (=> d!1363613 (forall!9994 (toList!4059 lt!1658345) lambda!163320)))

(assert (=> d!1363613 (= (extractMap!1082 (toList!4059 lt!1658345)) lt!1658393)))

(declare-fun b!4469601 () Bool)

(declare-fun addToMapMapFromBucket!591 (List!50414 ListMap!3321) ListMap!3321)

(assert (=> b!4469601 (= e!2783271 (addToMapMapFromBucket!591 (_2!28564 (h!56056 (toList!4059 lt!1658345))) (extractMap!1082 (t!357365 (toList!4059 lt!1658345)))))))

(declare-fun b!4469602 () Bool)

(assert (=> b!4469602 (= e!2783271 (ListMap!3322 Nil!50290))))

(assert (= (and d!1363613 c!760926) b!4469601))

(assert (= (and d!1363613 (not c!760926)) b!4469602))

(declare-fun m!5176485 () Bool)

(assert (=> d!1363613 m!5176485))

(declare-fun m!5176487 () Bool)

(assert (=> d!1363613 m!5176487))

(declare-fun m!5176489 () Bool)

(assert (=> b!4469601 m!5176489))

(assert (=> b!4469601 m!5176489))

(declare-fun m!5176491 () Bool)

(assert (=> b!4469601 m!5176491))

(assert (=> b!4469512 d!1363613))

(declare-fun bs!795113 () Bool)

(declare-fun d!1363629 () Bool)

(assert (= bs!795113 (and d!1363629 start!439148)))

(declare-fun lambda!163321 () Int)

(assert (=> bs!795113 (= lambda!163321 lambda!163311)))

(declare-fun bs!795114 () Bool)

(assert (= bs!795114 (and d!1363629 d!1363597)))

(assert (=> bs!795114 (= lambda!163321 lambda!163316)))

(declare-fun bs!795115 () Bool)

(assert (= bs!795115 (and d!1363629 d!1363613)))

(assert (=> bs!795115 (= lambda!163321 lambda!163320)))

(declare-fun lt!1658394 () ListMap!3321)

(assert (=> d!1363629 (invariantList!929 (toList!4060 lt!1658394))))

(declare-fun e!2783272 () ListMap!3321)

(assert (=> d!1363629 (= lt!1658394 e!2783272)))

(declare-fun c!760927 () Bool)

(assert (=> d!1363629 (= c!760927 ((_ is Cons!50291) (t!357365 (toList!4059 lm!1477))))))

(assert (=> d!1363629 (forall!9994 (t!357365 (toList!4059 lm!1477)) lambda!163321)))

(assert (=> d!1363629 (= (extractMap!1082 (t!357365 (toList!4059 lm!1477))) lt!1658394)))

(declare-fun b!4469603 () Bool)

(assert (=> b!4469603 (= e!2783272 (addToMapMapFromBucket!591 (_2!28564 (h!56056 (t!357365 (toList!4059 lm!1477)))) (extractMap!1082 (t!357365 (t!357365 (toList!4059 lm!1477))))))))

(declare-fun b!4469604 () Bool)

(assert (=> b!4469604 (= e!2783272 (ListMap!3322 Nil!50290))))

(assert (= (and d!1363629 c!760927) b!4469603))

(assert (= (and d!1363629 (not c!760927)) b!4469604))

(declare-fun m!5176493 () Bool)

(assert (=> d!1363629 m!5176493))

(declare-fun m!5176495 () Bool)

(assert (=> d!1363629 m!5176495))

(declare-fun m!5176497 () Bool)

(assert (=> b!4469603 m!5176497))

(assert (=> b!4469603 m!5176497))

(declare-fun m!5176499 () Bool)

(assert (=> b!4469603 m!5176499))

(assert (=> b!4469512 d!1363629))

(declare-fun d!1363631 () Bool)

(declare-fun e!2783279 () Bool)

(assert (=> d!1363631 e!2783279))

(declare-fun res!1854367 () Bool)

(assert (=> d!1363631 (=> (not res!1854367) (not e!2783279))))

(declare-fun lt!1658408 () ListLongMap!2691)

(assert (=> d!1363631 (= res!1854367 (contains!12844 lt!1658408 (_1!28564 lt!1658336)))))

(declare-fun lt!1658409 () List!50415)

(assert (=> d!1363631 (= lt!1658408 (ListLongMap!2692 lt!1658409))))

(declare-fun lt!1658407 () Unit!87781)

(declare-fun lt!1658410 () Unit!87781)

(assert (=> d!1363631 (= lt!1658407 lt!1658410)))

(declare-datatypes ((Option!10930 0))(
  ( (None!10929) (Some!10929 (v!44251 List!50414)) )
))
(declare-fun getValueByKey!916 (List!50415 (_ BitVec 64)) Option!10930)

(assert (=> d!1363631 (= (getValueByKey!916 lt!1658409 (_1!28564 lt!1658336)) (Some!10929 (_2!28564 lt!1658336)))))

(declare-fun lemmaContainsTupThenGetReturnValue!586 (List!50415 (_ BitVec 64) List!50414) Unit!87781)

(assert (=> d!1363631 (= lt!1658410 (lemmaContainsTupThenGetReturnValue!586 lt!1658409 (_1!28564 lt!1658336) (_2!28564 lt!1658336)))))

(declare-fun insertStrictlySorted!332 (List!50415 (_ BitVec 64) List!50414) List!50415)

(assert (=> d!1363631 (= lt!1658409 (insertStrictlySorted!332 (toList!4059 lt!1658345) (_1!28564 lt!1658336) (_2!28564 lt!1658336)))))

(assert (=> d!1363631 (= (+!1370 lt!1658345 lt!1658336) lt!1658408)))

(declare-fun b!4469617 () Bool)

(declare-fun res!1854368 () Bool)

(assert (=> b!4469617 (=> (not res!1854368) (not e!2783279))))

(assert (=> b!4469617 (= res!1854368 (= (getValueByKey!916 (toList!4059 lt!1658408) (_1!28564 lt!1658336)) (Some!10929 (_2!28564 lt!1658336))))))

(declare-fun b!4469618 () Bool)

(assert (=> b!4469618 (= e!2783279 (contains!12843 (toList!4059 lt!1658408) lt!1658336))))

(assert (= (and d!1363631 res!1854367) b!4469617))

(assert (= (and b!4469617 res!1854368) b!4469618))

(declare-fun m!5176517 () Bool)

(assert (=> d!1363631 m!5176517))

(declare-fun m!5176519 () Bool)

(assert (=> d!1363631 m!5176519))

(declare-fun m!5176521 () Bool)

(assert (=> d!1363631 m!5176521))

(declare-fun m!5176523 () Bool)

(assert (=> d!1363631 m!5176523))

(declare-fun m!5176525 () Bool)

(assert (=> b!4469617 m!5176525))

(declare-fun m!5176527 () Bool)

(assert (=> b!4469618 m!5176527))

(assert (=> b!4469514 d!1363631))

(declare-fun d!1363637 () Bool)

(assert (=> d!1363637 (= (tail!7504 lm!1477) (ListLongMap!2692 (tail!7505 (toList!4059 lm!1477))))))

(declare-fun bs!795126 () Bool)

(assert (= bs!795126 d!1363637))

(declare-fun m!5176533 () Bool)

(assert (=> bs!795126 m!5176533))

(assert (=> b!4469514 d!1363637))

(declare-fun bs!795127 () Bool)

(declare-fun d!1363641 () Bool)

(assert (= bs!795127 (and d!1363641 start!439148)))

(declare-fun lambda!163329 () Int)

(assert (=> bs!795127 (= lambda!163329 lambda!163311)))

(declare-fun bs!795128 () Bool)

(assert (= bs!795128 (and d!1363641 d!1363597)))

(assert (=> bs!795128 (= lambda!163329 lambda!163316)))

(declare-fun bs!795129 () Bool)

(assert (= bs!795129 (and d!1363641 d!1363613)))

(assert (=> bs!795129 (= lambda!163329 lambda!163320)))

(declare-fun bs!795130 () Bool)

(assert (= bs!795130 (and d!1363641 d!1363629)))

(assert (=> bs!795130 (= lambda!163329 lambda!163321)))

(declare-fun lt!1658414 () ListMap!3321)

(assert (=> d!1363641 (invariantList!929 (toList!4060 lt!1658414))))

(declare-fun e!2783284 () ListMap!3321)

(assert (=> d!1363641 (= lt!1658414 e!2783284)))

(declare-fun c!760932 () Bool)

(assert (=> d!1363641 (= c!760932 ((_ is Cons!50291) (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)))))

(assert (=> d!1363641 (forall!9994 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291) lambda!163329)))

(assert (=> d!1363641 (= (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)) lt!1658414)))

(declare-fun b!4469623 () Bool)

(assert (=> b!4469623 (= e!2783284 (addToMapMapFromBucket!591 (_2!28564 (h!56056 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291))) (extractMap!1082 (t!357365 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)))))))

(declare-fun b!4469624 () Bool)

(assert (=> b!4469624 (= e!2783284 (ListMap!3322 Nil!50290))))

(assert (= (and d!1363641 c!760932) b!4469623))

(assert (= (and d!1363641 (not c!760932)) b!4469624))

(declare-fun m!5176539 () Bool)

(assert (=> d!1363641 m!5176539))

(declare-fun m!5176541 () Bool)

(assert (=> d!1363641 m!5176541))

(declare-fun m!5176543 () Bool)

(assert (=> b!4469623 m!5176543))

(assert (=> b!4469623 m!5176543))

(declare-fun m!5176545 () Bool)

(assert (=> b!4469623 m!5176545))

(assert (=> b!4469524 d!1363641))

(declare-fun b!4469702 () Bool)

(declare-datatypes ((List!50417 0))(
  ( (Nil!50293) (Cons!50293 (h!56060 K!11705) (t!357367 List!50417)) )
))
(declare-fun e!2783334 () List!50417)

(declare-fun keys!17366 (ListMap!3321) List!50417)

(assert (=> b!4469702 (= e!2783334 (keys!17366 (extractMap!1082 lt!1658340)))))

(declare-fun b!4469703 () Bool)

(assert (=> b!4469703 false))

(declare-fun lt!1658480 () Unit!87781)

(declare-fun lt!1658475 () Unit!87781)

(assert (=> b!4469703 (= lt!1658480 lt!1658475)))

(declare-fun containsKey!1477 (List!50414 K!11705) Bool)

(assert (=> b!4469703 (containsKey!1477 (toList!4060 (extractMap!1082 lt!1658340)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!376 (List!50414 K!11705) Unit!87781)

(assert (=> b!4469703 (= lt!1658475 (lemmaInGetKeysListThenContainsKey!376 (toList!4060 (extractMap!1082 lt!1658340)) key!3287))))

(declare-fun e!2783335 () Unit!87781)

(declare-fun Unit!87790 () Unit!87781)

(assert (=> b!4469703 (= e!2783335 Unit!87790)))

(declare-fun b!4469704 () Bool)

(declare-fun e!2783336 () Bool)

(declare-fun contains!12847 (List!50417 K!11705) Bool)

(assert (=> b!4469704 (= e!2783336 (contains!12847 (keys!17366 (extractMap!1082 lt!1658340)) key!3287))))

(declare-fun b!4469705 () Bool)

(declare-fun getKeysList!377 (List!50414) List!50417)

(assert (=> b!4469705 (= e!2783334 (getKeysList!377 (toList!4060 (extractMap!1082 lt!1658340))))))

(declare-fun b!4469706 () Bool)

(declare-fun e!2783333 () Bool)

(assert (=> b!4469706 (= e!2783333 e!2783336)))

(declare-fun res!1854402 () Bool)

(assert (=> b!4469706 (=> (not res!1854402) (not e!2783336))))

(declare-datatypes ((Option!10931 0))(
  ( (None!10930) (Some!10930 (v!44252 V!11951)) )
))
(declare-fun isDefined!8217 (Option!10931) Bool)

(declare-fun getValueByKey!917 (List!50414 K!11705) Option!10931)

(assert (=> b!4469706 (= res!1854402 (isDefined!8217 (getValueByKey!917 (toList!4060 (extractMap!1082 lt!1658340)) key!3287)))))

(declare-fun b!4469707 () Bool)

(declare-fun e!2783337 () Unit!87781)

(assert (=> b!4469707 (= e!2783337 e!2783335)))

(declare-fun c!760957 () Bool)

(declare-fun call!311213 () Bool)

(assert (=> b!4469707 (= c!760957 call!311213)))

(declare-fun bm!311208 () Bool)

(assert (=> bm!311208 (= call!311213 (contains!12847 e!2783334 key!3287))))

(declare-fun c!760955 () Bool)

(declare-fun c!760956 () Bool)

(assert (=> bm!311208 (= c!760955 c!760956)))

(declare-fun b!4469708 () Bool)

(declare-fun Unit!87791 () Unit!87781)

(assert (=> b!4469708 (= e!2783335 Unit!87791)))

(declare-fun d!1363645 () Bool)

(assert (=> d!1363645 e!2783333))

(declare-fun res!1854401 () Bool)

(assert (=> d!1363645 (=> res!1854401 e!2783333)))

(declare-fun e!2783338 () Bool)

(assert (=> d!1363645 (= res!1854401 e!2783338)))

(declare-fun res!1854400 () Bool)

(assert (=> d!1363645 (=> (not res!1854400) (not e!2783338))))

(declare-fun lt!1658477 () Bool)

(assert (=> d!1363645 (= res!1854400 (not lt!1658477))))

(declare-fun lt!1658474 () Bool)

(assert (=> d!1363645 (= lt!1658477 lt!1658474)))

(declare-fun lt!1658481 () Unit!87781)

(assert (=> d!1363645 (= lt!1658481 e!2783337)))

(assert (=> d!1363645 (= c!760956 lt!1658474)))

(assert (=> d!1363645 (= lt!1658474 (containsKey!1477 (toList!4060 (extractMap!1082 lt!1658340)) key!3287))))

(assert (=> d!1363645 (= (contains!12845 (extractMap!1082 lt!1658340) key!3287) lt!1658477)))

(declare-fun b!4469709 () Bool)

(assert (=> b!4469709 (= e!2783338 (not (contains!12847 (keys!17366 (extractMap!1082 lt!1658340)) key!3287)))))

(declare-fun b!4469710 () Bool)

(declare-fun lt!1658476 () Unit!87781)

(assert (=> b!4469710 (= e!2783337 lt!1658476)))

(declare-fun lt!1658478 () Unit!87781)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!820 (List!50414 K!11705) Unit!87781)

(assert (=> b!4469710 (= lt!1658478 (lemmaContainsKeyImpliesGetValueByKeyDefined!820 (toList!4060 (extractMap!1082 lt!1658340)) key!3287))))

(assert (=> b!4469710 (isDefined!8217 (getValueByKey!917 (toList!4060 (extractMap!1082 lt!1658340)) key!3287))))

(declare-fun lt!1658479 () Unit!87781)

(assert (=> b!4469710 (= lt!1658479 lt!1658478)))

(declare-fun lemmaInListThenGetKeysListContains!373 (List!50414 K!11705) Unit!87781)

(assert (=> b!4469710 (= lt!1658476 (lemmaInListThenGetKeysListContains!373 (toList!4060 (extractMap!1082 lt!1658340)) key!3287))))

(assert (=> b!4469710 call!311213))

(assert (= (and d!1363645 c!760956) b!4469710))

(assert (= (and d!1363645 (not c!760956)) b!4469707))

(assert (= (and b!4469707 c!760957) b!4469703))

(assert (= (and b!4469707 (not c!760957)) b!4469708))

(assert (= (or b!4469710 b!4469707) bm!311208))

(assert (= (and bm!311208 c!760955) b!4469705))

(assert (= (and bm!311208 (not c!760955)) b!4469702))

(assert (= (and d!1363645 res!1854400) b!4469709))

(assert (= (and d!1363645 (not res!1854401)) b!4469706))

(assert (= (and b!4469706 res!1854402) b!4469704))

(declare-fun m!5176651 () Bool)

(assert (=> bm!311208 m!5176651))

(assert (=> b!4469709 m!5176367))

(declare-fun m!5176653 () Bool)

(assert (=> b!4469709 m!5176653))

(assert (=> b!4469709 m!5176653))

(declare-fun m!5176655 () Bool)

(assert (=> b!4469709 m!5176655))

(declare-fun m!5176657 () Bool)

(assert (=> b!4469705 m!5176657))

(declare-fun m!5176659 () Bool)

(assert (=> d!1363645 m!5176659))

(declare-fun m!5176661 () Bool)

(assert (=> b!4469706 m!5176661))

(assert (=> b!4469706 m!5176661))

(declare-fun m!5176663 () Bool)

(assert (=> b!4469706 m!5176663))

(assert (=> b!4469703 m!5176659))

(declare-fun m!5176665 () Bool)

(assert (=> b!4469703 m!5176665))

(declare-fun m!5176667 () Bool)

(assert (=> b!4469710 m!5176667))

(assert (=> b!4469710 m!5176661))

(assert (=> b!4469710 m!5176661))

(assert (=> b!4469710 m!5176663))

(declare-fun m!5176669 () Bool)

(assert (=> b!4469710 m!5176669))

(assert (=> b!4469704 m!5176367))

(assert (=> b!4469704 m!5176653))

(assert (=> b!4469704 m!5176653))

(assert (=> b!4469704 m!5176655))

(assert (=> b!4469702 m!5176367))

(assert (=> b!4469702 m!5176653))

(assert (=> b!4469524 d!1363645))

(declare-fun d!1363673 () Bool)

(declare-fun e!2783341 () Bool)

(assert (=> d!1363673 e!2783341))

(declare-fun res!1854405 () Bool)

(assert (=> d!1363673 (=> (not res!1854405) (not e!2783341))))

(declare-fun lt!1658487 () ListMap!3321)

(assert (=> d!1363673 (= res!1854405 (not (contains!12845 lt!1658487 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!65 (List!50414 K!11705) List!50414)

(assert (=> d!1363673 (= lt!1658487 (ListMap!3322 (removePresrvNoDuplicatedKeys!65 (toList!4060 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291))) key!3287)))))

(assert (=> d!1363673 (= (-!288 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)) key!3287) lt!1658487)))

(declare-fun b!4469713 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8107 (List!50417) (InoxSet K!11705))

(assert (=> b!4469713 (= e!2783341 (= ((_ map and) (content!8107 (keys!17366 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)))) ((_ map not) (store ((as const (Array K!11705 Bool)) false) key!3287 true))) (content!8107 (keys!17366 lt!1658487))))))

(assert (= (and d!1363673 res!1854405) b!4469713))

(declare-fun m!5176679 () Bool)

(assert (=> d!1363673 m!5176679))

(declare-fun m!5176681 () Bool)

(assert (=> d!1363673 m!5176681))

(declare-fun m!5176683 () Bool)

(assert (=> b!4469713 m!5176683))

(assert (=> b!4469713 m!5176683))

(declare-fun m!5176685 () Bool)

(assert (=> b!4469713 m!5176685))

(declare-fun m!5176687 () Bool)

(assert (=> b!4469713 m!5176687))

(declare-fun m!5176689 () Bool)

(assert (=> b!4469713 m!5176689))

(declare-fun m!5176691 () Bool)

(assert (=> b!4469713 m!5176691))

(assert (=> b!4469713 m!5176357))

(assert (=> b!4469713 m!5176689))

(assert (=> b!4469524 d!1363673))

(declare-fun d!1363677 () Bool)

(declare-fun e!2783342 () Bool)

(assert (=> d!1363677 e!2783342))

(declare-fun res!1854406 () Bool)

(assert (=> d!1363677 (=> (not res!1854406) (not e!2783342))))

(declare-fun lt!1658489 () ListLongMap!2691)

(assert (=> d!1363677 (= res!1854406 (contains!12844 lt!1658489 (_1!28564 lt!1658336)))))

(declare-fun lt!1658490 () List!50415)

(assert (=> d!1363677 (= lt!1658489 (ListLongMap!2692 lt!1658490))))

(declare-fun lt!1658488 () Unit!87781)

(declare-fun lt!1658491 () Unit!87781)

(assert (=> d!1363677 (= lt!1658488 lt!1658491)))

(assert (=> d!1363677 (= (getValueByKey!916 lt!1658490 (_1!28564 lt!1658336)) (Some!10929 (_2!28564 lt!1658336)))))

(assert (=> d!1363677 (= lt!1658491 (lemmaContainsTupThenGetReturnValue!586 lt!1658490 (_1!28564 lt!1658336) (_2!28564 lt!1658336)))))

(assert (=> d!1363677 (= lt!1658490 (insertStrictlySorted!332 (toList!4059 lm!1477) (_1!28564 lt!1658336) (_2!28564 lt!1658336)))))

(assert (=> d!1363677 (= (+!1370 lm!1477 lt!1658336) lt!1658489)))

(declare-fun b!4469714 () Bool)

(declare-fun res!1854407 () Bool)

(assert (=> b!4469714 (=> (not res!1854407) (not e!2783342))))

(assert (=> b!4469714 (= res!1854407 (= (getValueByKey!916 (toList!4059 lt!1658489) (_1!28564 lt!1658336)) (Some!10929 (_2!28564 lt!1658336))))))

(declare-fun b!4469715 () Bool)

(assert (=> b!4469715 (= e!2783342 (contains!12843 (toList!4059 lt!1658489) lt!1658336))))

(assert (= (and d!1363677 res!1854406) b!4469714))

(assert (= (and b!4469714 res!1854407) b!4469715))

(declare-fun m!5176693 () Bool)

(assert (=> d!1363677 m!5176693))

(declare-fun m!5176695 () Bool)

(assert (=> d!1363677 m!5176695))

(declare-fun m!5176697 () Bool)

(assert (=> d!1363677 m!5176697))

(declare-fun m!5176699 () Bool)

(assert (=> d!1363677 m!5176699))

(declare-fun m!5176701 () Bool)

(assert (=> b!4469714 m!5176701))

(declare-fun m!5176703 () Bool)

(assert (=> b!4469715 m!5176703))

(assert (=> b!4469524 d!1363677))

(declare-fun d!1363679 () Bool)

(assert (=> d!1363679 (eq!519 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 newBucket!178) Nil!50291)) (-!288 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)) key!3287))))

(declare-fun lt!1658497 () Unit!87781)

(declare-fun choose!28585 ((_ BitVec 64) List!50414 List!50414 K!11705 Hashable!5421) Unit!87781)

(assert (=> d!1363679 (= lt!1658497 (choose!28585 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1363679 (noDuplicateKeys!1026 (_2!28564 (h!56056 (toList!4059 lm!1477))))))

(assert (=> d!1363679 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!18 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1658497)))

(declare-fun bs!795185 () Bool)

(assert (= bs!795185 d!1363679))

(declare-fun m!5176721 () Bool)

(assert (=> bs!795185 m!5176721))

(declare-fun m!5176723 () Bool)

(assert (=> bs!795185 m!5176723))

(assert (=> bs!795185 m!5176353))

(declare-fun m!5176725 () Bool)

(assert (=> bs!795185 m!5176725))

(declare-fun m!5176727 () Bool)

(assert (=> bs!795185 m!5176727))

(assert (=> bs!795185 m!5176357))

(assert (=> bs!795185 m!5176353))

(assert (=> bs!795185 m!5176357))

(assert (=> bs!795185 m!5176723))

(assert (=> b!4469524 d!1363679))

(declare-fun bs!795186 () Bool)

(declare-fun d!1363689 () Bool)

(assert (= bs!795186 (and d!1363689 d!1363629)))

(declare-fun lambda!163345 () Int)

(assert (=> bs!795186 (= lambda!163345 lambda!163321)))

(declare-fun bs!795187 () Bool)

(assert (= bs!795187 (and d!1363689 d!1363613)))

(assert (=> bs!795187 (= lambda!163345 lambda!163320)))

(declare-fun bs!795188 () Bool)

(assert (= bs!795188 (and d!1363689 start!439148)))

(assert (=> bs!795188 (= lambda!163345 lambda!163311)))

(declare-fun bs!795189 () Bool)

(assert (= bs!795189 (and d!1363689 d!1363597)))

(assert (=> bs!795189 (= lambda!163345 lambda!163316)))

(declare-fun bs!795190 () Bool)

(assert (= bs!795190 (and d!1363689 d!1363641)))

(assert (=> bs!795190 (= lambda!163345 lambda!163329)))

(assert (=> d!1363689 (contains!12845 (extractMap!1082 (toList!4059 (ListLongMap!2692 lt!1658340))) key!3287)))

(declare-fun lt!1658500 () Unit!87781)

(declare-fun choose!28586 (ListLongMap!2691 K!11705 Hashable!5421) Unit!87781)

(assert (=> d!1363689 (= lt!1658500 (choose!28586 (ListLongMap!2692 lt!1658340) key!3287 hashF!1107))))

(assert (=> d!1363689 (forall!9994 (toList!4059 (ListLongMap!2692 lt!1658340)) lambda!163345)))

(assert (=> d!1363689 (= (lemmaListContainsThenExtractedMapContains!22 (ListLongMap!2692 lt!1658340) key!3287 hashF!1107) lt!1658500)))

(declare-fun bs!795191 () Bool)

(assert (= bs!795191 d!1363689))

(declare-fun m!5176729 () Bool)

(assert (=> bs!795191 m!5176729))

(assert (=> bs!795191 m!5176729))

(declare-fun m!5176731 () Bool)

(assert (=> bs!795191 m!5176731))

(declare-fun m!5176733 () Bool)

(assert (=> bs!795191 m!5176733))

(declare-fun m!5176735 () Bool)

(assert (=> bs!795191 m!5176735))

(assert (=> b!4469524 d!1363689))

(declare-fun d!1363691 () Bool)

(assert (=> d!1363691 (= (tail!7505 (toList!4059 lt!1658342)) (t!357365 (toList!4059 lt!1658342)))))

(assert (=> b!4469524 d!1363691))

(declare-fun bs!795192 () Bool)

(declare-fun d!1363693 () Bool)

(assert (= bs!795192 (and d!1363693 d!1363629)))

(declare-fun lambda!163346 () Int)

(assert (=> bs!795192 (= lambda!163346 lambda!163321)))

(declare-fun bs!795193 () Bool)

(assert (= bs!795193 (and d!1363693 d!1363689)))

(assert (=> bs!795193 (= lambda!163346 lambda!163345)))

(declare-fun bs!795194 () Bool)

(assert (= bs!795194 (and d!1363693 d!1363613)))

(assert (=> bs!795194 (= lambda!163346 lambda!163320)))

(declare-fun bs!795195 () Bool)

(assert (= bs!795195 (and d!1363693 start!439148)))

(assert (=> bs!795195 (= lambda!163346 lambda!163311)))

(declare-fun bs!795196 () Bool)

(assert (= bs!795196 (and d!1363693 d!1363597)))

(assert (=> bs!795196 (= lambda!163346 lambda!163316)))

(declare-fun bs!795197 () Bool)

(assert (= bs!795197 (and d!1363693 d!1363641)))

(assert (=> bs!795197 (= lambda!163346 lambda!163329)))

(declare-fun lt!1658501 () ListMap!3321)

(assert (=> d!1363693 (invariantList!929 (toList!4060 lt!1658501))))

(declare-fun e!2783349 () ListMap!3321)

(assert (=> d!1363693 (= lt!1658501 e!2783349)))

(declare-fun c!760958 () Bool)

(assert (=> d!1363693 (= c!760958 ((_ is Cons!50291) (Cons!50291 lt!1658336 Nil!50291)))))

(assert (=> d!1363693 (forall!9994 (Cons!50291 lt!1658336 Nil!50291) lambda!163346)))

(assert (=> d!1363693 (= (extractMap!1082 (Cons!50291 lt!1658336 Nil!50291)) lt!1658501)))

(declare-fun b!4469726 () Bool)

(assert (=> b!4469726 (= e!2783349 (addToMapMapFromBucket!591 (_2!28564 (h!56056 (Cons!50291 lt!1658336 Nil!50291))) (extractMap!1082 (t!357365 (Cons!50291 lt!1658336 Nil!50291)))))))

(declare-fun b!4469727 () Bool)

(assert (=> b!4469727 (= e!2783349 (ListMap!3322 Nil!50290))))

(assert (= (and d!1363693 c!760958) b!4469726))

(assert (= (and d!1363693 (not c!760958)) b!4469727))

(declare-fun m!5176737 () Bool)

(assert (=> d!1363693 m!5176737))

(declare-fun m!5176739 () Bool)

(assert (=> d!1363693 m!5176739))

(declare-fun m!5176741 () Bool)

(assert (=> b!4469726 m!5176741))

(assert (=> b!4469726 m!5176741))

(declare-fun m!5176743 () Bool)

(assert (=> b!4469726 m!5176743))

(assert (=> b!4469524 d!1363693))

(declare-fun d!1363695 () Bool)

(declare-fun content!8108 (List!50414) (InoxSet tuple2!50538))

(assert (=> d!1363695 (= (eq!519 (extractMap!1082 (Cons!50291 lt!1658336 Nil!50291)) (-!288 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)) key!3287)) (= (content!8108 (toList!4060 (extractMap!1082 (Cons!50291 lt!1658336 Nil!50291)))) (content!8108 (toList!4060 (-!288 (extractMap!1082 (Cons!50291 (tuple2!50541 hash!344 (_2!28564 (h!56056 (toList!4059 lm!1477)))) Nil!50291)) key!3287)))))))

(declare-fun bs!795198 () Bool)

(assert (= bs!795198 d!1363695))

(declare-fun m!5176745 () Bool)

(assert (=> bs!795198 m!5176745))

(declare-fun m!5176747 () Bool)

(assert (=> bs!795198 m!5176747))

(assert (=> b!4469524 d!1363695))

(declare-fun bs!795199 () Bool)

(declare-fun d!1363697 () Bool)

(assert (= bs!795199 (and d!1363697 d!1363629)))

(declare-fun lambda!163347 () Int)

(assert (=> bs!795199 (= lambda!163347 lambda!163321)))

(declare-fun bs!795200 () Bool)

(assert (= bs!795200 (and d!1363697 d!1363689)))

(assert (=> bs!795200 (= lambda!163347 lambda!163345)))

(declare-fun bs!795201 () Bool)

(assert (= bs!795201 (and d!1363697 d!1363613)))

(assert (=> bs!795201 (= lambda!163347 lambda!163320)))

(declare-fun bs!795202 () Bool)

(assert (= bs!795202 (and d!1363697 d!1363693)))

(assert (=> bs!795202 (= lambda!163347 lambda!163346)))

(declare-fun bs!795203 () Bool)

(assert (= bs!795203 (and d!1363697 start!439148)))

(assert (=> bs!795203 (= lambda!163347 lambda!163311)))

(declare-fun bs!795204 () Bool)

(assert (= bs!795204 (and d!1363697 d!1363597)))

(assert (=> bs!795204 (= lambda!163347 lambda!163316)))

(declare-fun bs!795205 () Bool)

(assert (= bs!795205 (and d!1363697 d!1363641)))

(assert (=> bs!795205 (= lambda!163347 lambda!163329)))

(declare-fun lt!1658502 () ListMap!3321)

(assert (=> d!1363697 (invariantList!929 (toList!4060 lt!1658502))))

(declare-fun e!2783350 () ListMap!3321)

(assert (=> d!1363697 (= lt!1658502 e!2783350)))

(declare-fun c!760959 () Bool)

(assert (=> d!1363697 (= c!760959 ((_ is Cons!50291) lt!1658340))))

(assert (=> d!1363697 (forall!9994 lt!1658340 lambda!163347)))

(assert (=> d!1363697 (= (extractMap!1082 lt!1658340) lt!1658502)))

(declare-fun b!4469728 () Bool)

(assert (=> b!4469728 (= e!2783350 (addToMapMapFromBucket!591 (_2!28564 (h!56056 lt!1658340)) (extractMap!1082 (t!357365 lt!1658340))))))

(declare-fun b!4469729 () Bool)

(assert (=> b!4469729 (= e!2783350 (ListMap!3322 Nil!50290))))

(assert (= (and d!1363697 c!760959) b!4469728))

(assert (= (and d!1363697 (not c!760959)) b!4469729))

(declare-fun m!5176749 () Bool)

(assert (=> d!1363697 m!5176749))

(declare-fun m!5176751 () Bool)

(assert (=> d!1363697 m!5176751))

(declare-fun m!5176753 () Bool)

(assert (=> b!4469728 m!5176753))

(assert (=> b!4469728 m!5176753))

(declare-fun m!5176755 () Bool)

(assert (=> b!4469728 m!5176755))

(assert (=> b!4469524 d!1363697))

(declare-fun d!1363699 () Bool)

(declare-fun res!1854412 () Bool)

(declare-fun e!2783355 () Bool)

(assert (=> d!1363699 (=> res!1854412 e!2783355)))

(assert (=> d!1363699 (= res!1854412 (and ((_ is Cons!50290) (_2!28564 (h!56056 (toList!4059 lm!1477)))) (= (_1!28563 (h!56055 (_2!28564 (h!56056 (toList!4059 lm!1477))))) key!3287)))))

(assert (=> d!1363699 (= (containsKey!1474 (_2!28564 (h!56056 (toList!4059 lm!1477))) key!3287) e!2783355)))

(declare-fun b!4469734 () Bool)

(declare-fun e!2783356 () Bool)

(assert (=> b!4469734 (= e!2783355 e!2783356)))

(declare-fun res!1854413 () Bool)

(assert (=> b!4469734 (=> (not res!1854413) (not e!2783356))))

(assert (=> b!4469734 (= res!1854413 ((_ is Cons!50290) (_2!28564 (h!56056 (toList!4059 lm!1477)))))))

(declare-fun b!4469735 () Bool)

(assert (=> b!4469735 (= e!2783356 (containsKey!1474 (t!357364 (_2!28564 (h!56056 (toList!4059 lm!1477)))) key!3287))))

(assert (= (and d!1363699 (not res!1854412)) b!4469734))

(assert (= (and b!4469734 res!1854413) b!4469735))

(declare-fun m!5176757 () Bool)

(assert (=> b!4469735 m!5176757))

(assert (=> b!4469513 d!1363699))

(declare-fun bs!795206 () Bool)

(declare-fun d!1363701 () Bool)

(assert (= bs!795206 (and d!1363701 d!1363629)))

(declare-fun lambda!163350 () Int)

(assert (=> bs!795206 (= lambda!163350 lambda!163321)))

(declare-fun bs!795207 () Bool)

(assert (= bs!795207 (and d!1363701 d!1363689)))

(assert (=> bs!795207 (= lambda!163350 lambda!163345)))

(declare-fun bs!795208 () Bool)

(assert (= bs!795208 (and d!1363701 d!1363613)))

(assert (=> bs!795208 (= lambda!163350 lambda!163320)))

(declare-fun bs!795209 () Bool)

(assert (= bs!795209 (and d!1363701 d!1363693)))

(assert (=> bs!795209 (= lambda!163350 lambda!163346)))

(declare-fun bs!795210 () Bool)

(assert (= bs!795210 (and d!1363701 d!1363697)))

(assert (=> bs!795210 (= lambda!163350 lambda!163347)))

(declare-fun bs!795211 () Bool)

(assert (= bs!795211 (and d!1363701 start!439148)))

(assert (=> bs!795211 (= lambda!163350 lambda!163311)))

(declare-fun bs!795212 () Bool)

(assert (= bs!795212 (and d!1363701 d!1363597)))

(assert (=> bs!795212 (= lambda!163350 lambda!163316)))

(declare-fun bs!795213 () Bool)

(assert (= bs!795213 (and d!1363701 d!1363641)))

(assert (=> bs!795213 (= lambda!163350 lambda!163329)))

(assert (=> d!1363701 (contains!12844 lm!1477 (hash!2453 hashF!1107 key!3287))))

(declare-fun lt!1658505 () Unit!87781)

(declare-fun choose!28589 (ListLongMap!2691 K!11705 Hashable!5421) Unit!87781)

(assert (=> d!1363701 (= lt!1658505 (choose!28589 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1363701 (forall!9994 (toList!4059 lm!1477) lambda!163350)))

(assert (=> d!1363701 (= (lemmaInGenMapThenLongMapContainsHash!100 lm!1477 key!3287 hashF!1107) lt!1658505)))

(declare-fun bs!795214 () Bool)

(assert (= bs!795214 d!1363701))

(assert (=> bs!795214 m!5176401))

(assert (=> bs!795214 m!5176401))

(declare-fun m!5176759 () Bool)

(assert (=> bs!795214 m!5176759))

(declare-fun m!5176761 () Bool)

(assert (=> bs!795214 m!5176761))

(declare-fun m!5176763 () Bool)

(assert (=> bs!795214 m!5176763))

(assert (=> b!4469515 d!1363701))

(declare-fun d!1363703 () Bool)

(declare-fun get!16396 (Option!10930) List!50414)

(assert (=> d!1363703 (= (apply!11763 lm!1477 hash!344) (get!16396 (getValueByKey!916 (toList!4059 lm!1477) hash!344)))))

(declare-fun bs!795215 () Bool)

(assert (= bs!795215 d!1363703))

(declare-fun m!5176765 () Bool)

(assert (=> bs!795215 m!5176765))

(assert (=> bs!795215 m!5176765))

(declare-fun m!5176767 () Bool)

(assert (=> bs!795215 m!5176767))

(assert (=> b!4469515 d!1363703))

(declare-fun b!4469744 () Bool)

(declare-fun e!2783362 () List!50414)

(assert (=> b!4469744 (= e!2783362 (t!357364 lt!1658346))))

(declare-fun b!4469745 () Bool)

(declare-fun e!2783361 () List!50414)

(assert (=> b!4469745 (= e!2783362 e!2783361)))

(declare-fun c!760964 () Bool)

(assert (=> b!4469745 (= c!760964 ((_ is Cons!50290) lt!1658346))))

(declare-fun b!4469747 () Bool)

(assert (=> b!4469747 (= e!2783361 Nil!50290)))

(declare-fun b!4469746 () Bool)

(assert (=> b!4469746 (= e!2783361 (Cons!50290 (h!56055 lt!1658346) (removePairForKey!653 (t!357364 lt!1658346) key!3287)))))

(declare-fun d!1363705 () Bool)

(declare-fun lt!1658508 () List!50414)

(assert (=> d!1363705 (not (containsKey!1474 lt!1658508 key!3287))))

(assert (=> d!1363705 (= lt!1658508 e!2783362)))

(declare-fun c!760965 () Bool)

(assert (=> d!1363705 (= c!760965 (and ((_ is Cons!50290) lt!1658346) (= (_1!28563 (h!56055 lt!1658346)) key!3287)))))

(assert (=> d!1363705 (noDuplicateKeys!1026 lt!1658346)))

(assert (=> d!1363705 (= (removePairForKey!653 lt!1658346 key!3287) lt!1658508)))

(assert (= (and d!1363705 c!760965) b!4469744))

(assert (= (and d!1363705 (not c!760965)) b!4469745))

(assert (= (and b!4469745 c!760964) b!4469746))

(assert (= (and b!4469745 (not c!760964)) b!4469747))

(declare-fun m!5176769 () Bool)

(assert (=> b!4469746 m!5176769))

(declare-fun m!5176771 () Bool)

(assert (=> d!1363705 m!5176771))

(declare-fun m!5176773 () Bool)

(assert (=> d!1363705 m!5176773))

(assert (=> b!4469515 d!1363705))

(declare-fun d!1363707 () Bool)

(declare-fun lt!1658511 () Bool)

(declare-fun content!8110 (List!50415) (InoxSet tuple2!50540))

(assert (=> d!1363707 (= lt!1658511 (select (content!8110 (toList!4059 lm!1477)) lt!1658344))))

(declare-fun e!2783367 () Bool)

(assert (=> d!1363707 (= lt!1658511 e!2783367)))

(declare-fun res!1854419 () Bool)

(assert (=> d!1363707 (=> (not res!1854419) (not e!2783367))))

(assert (=> d!1363707 (= res!1854419 ((_ is Cons!50291) (toList!4059 lm!1477)))))

(assert (=> d!1363707 (= (contains!12843 (toList!4059 lm!1477) lt!1658344) lt!1658511)))

(declare-fun b!4469752 () Bool)

(declare-fun e!2783368 () Bool)

(assert (=> b!4469752 (= e!2783367 e!2783368)))

(declare-fun res!1854418 () Bool)

(assert (=> b!4469752 (=> res!1854418 e!2783368)))

(assert (=> b!4469752 (= res!1854418 (= (h!56056 (toList!4059 lm!1477)) lt!1658344))))

(declare-fun b!4469753 () Bool)

(assert (=> b!4469753 (= e!2783368 (contains!12843 (t!357365 (toList!4059 lm!1477)) lt!1658344))))

(assert (= (and d!1363707 res!1854419) b!4469752))

(assert (= (and b!4469752 (not res!1854418)) b!4469753))

(declare-fun m!5176775 () Bool)

(assert (=> d!1363707 m!5176775))

(declare-fun m!5176777 () Bool)

(assert (=> d!1363707 m!5176777))

(declare-fun m!5176779 () Bool)

(assert (=> b!4469753 m!5176779))

(assert (=> b!4469515 d!1363707))

(declare-fun d!1363709 () Bool)

(declare-fun e!2783373 () Bool)

(assert (=> d!1363709 e!2783373))

(declare-fun res!1854422 () Bool)

(assert (=> d!1363709 (=> res!1854422 e!2783373)))

(declare-fun lt!1658523 () Bool)

(assert (=> d!1363709 (= res!1854422 (not lt!1658523))))

(declare-fun lt!1658521 () Bool)

(assert (=> d!1363709 (= lt!1658523 lt!1658521)))

(declare-fun lt!1658520 () Unit!87781)

(declare-fun e!2783374 () Unit!87781)

(assert (=> d!1363709 (= lt!1658520 e!2783374)))

(declare-fun c!760968 () Bool)

(assert (=> d!1363709 (= c!760968 lt!1658521)))

(declare-fun containsKey!1478 (List!50415 (_ BitVec 64)) Bool)

(assert (=> d!1363709 (= lt!1658521 (containsKey!1478 (toList!4059 lm!1477) lt!1658334))))

(assert (=> d!1363709 (= (contains!12844 lm!1477 lt!1658334) lt!1658523)))

(declare-fun b!4469760 () Bool)

(declare-fun lt!1658522 () Unit!87781)

(assert (=> b!4469760 (= e!2783374 lt!1658522)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!821 (List!50415 (_ BitVec 64)) Unit!87781)

(assert (=> b!4469760 (= lt!1658522 (lemmaContainsKeyImpliesGetValueByKeyDefined!821 (toList!4059 lm!1477) lt!1658334))))

(declare-fun isDefined!8218 (Option!10930) Bool)

(assert (=> b!4469760 (isDefined!8218 (getValueByKey!916 (toList!4059 lm!1477) lt!1658334))))

(declare-fun b!4469761 () Bool)

(declare-fun Unit!87792 () Unit!87781)

(assert (=> b!4469761 (= e!2783374 Unit!87792)))

(declare-fun b!4469762 () Bool)

(assert (=> b!4469762 (= e!2783373 (isDefined!8218 (getValueByKey!916 (toList!4059 lm!1477) lt!1658334)))))

(assert (= (and d!1363709 c!760968) b!4469760))

(assert (= (and d!1363709 (not c!760968)) b!4469761))

(assert (= (and d!1363709 (not res!1854422)) b!4469762))

(declare-fun m!5176781 () Bool)

(assert (=> d!1363709 m!5176781))

(declare-fun m!5176783 () Bool)

(assert (=> b!4469760 m!5176783))

(declare-fun m!5176785 () Bool)

(assert (=> b!4469760 m!5176785))

(assert (=> b!4469760 m!5176785))

(declare-fun m!5176787 () Bool)

(assert (=> b!4469760 m!5176787))

(assert (=> b!4469762 m!5176785))

(assert (=> b!4469762 m!5176785))

(assert (=> b!4469762 m!5176787))

(assert (=> b!4469515 d!1363709))

(declare-fun d!1363711 () Bool)

(assert (=> d!1363711 (contains!12843 (toList!4059 lm!1477) (tuple2!50541 hash!344 lt!1658346))))

(declare-fun lt!1658526 () Unit!87781)

(declare-fun choose!28590 (List!50415 (_ BitVec 64) List!50414) Unit!87781)

(assert (=> d!1363711 (= lt!1658526 (choose!28590 (toList!4059 lm!1477) hash!344 lt!1658346))))

(declare-fun e!2783377 () Bool)

(assert (=> d!1363711 e!2783377))

(declare-fun res!1854425 () Bool)

(assert (=> d!1363711 (=> (not res!1854425) (not e!2783377))))

(declare-fun isStrictlySorted!343 (List!50415) Bool)

(assert (=> d!1363711 (= res!1854425 (isStrictlySorted!343 (toList!4059 lm!1477)))))

(assert (=> d!1363711 (= (lemmaGetValueByKeyImpliesContainsTuple!538 (toList!4059 lm!1477) hash!344 lt!1658346) lt!1658526)))

(declare-fun b!4469765 () Bool)

(assert (=> b!4469765 (= e!2783377 (= (getValueByKey!916 (toList!4059 lm!1477) hash!344) (Some!10929 lt!1658346)))))

(assert (= (and d!1363711 res!1854425) b!4469765))

(declare-fun m!5176789 () Bool)

(assert (=> d!1363711 m!5176789))

(declare-fun m!5176791 () Bool)

(assert (=> d!1363711 m!5176791))

(declare-fun m!5176793 () Bool)

(assert (=> d!1363711 m!5176793))

(assert (=> b!4469765 m!5176765))

(assert (=> b!4469515 d!1363711))

(declare-fun d!1363713 () Bool)

(declare-fun dynLambda!21016 (Int tuple2!50540) Bool)

(assert (=> d!1363713 (dynLambda!21016 lambda!163311 lt!1658344)))

(declare-fun lt!1658529 () Unit!87781)

(declare-fun choose!28591 (List!50415 Int tuple2!50540) Unit!87781)

(assert (=> d!1363713 (= lt!1658529 (choose!28591 (toList!4059 lm!1477) lambda!163311 lt!1658344))))

(declare-fun e!2783380 () Bool)

(assert (=> d!1363713 e!2783380))

(declare-fun res!1854428 () Bool)

(assert (=> d!1363713 (=> (not res!1854428) (not e!2783380))))

(assert (=> d!1363713 (= res!1854428 (forall!9994 (toList!4059 lm!1477) lambda!163311))))

(assert (=> d!1363713 (= (forallContained!2263 (toList!4059 lm!1477) lambda!163311 lt!1658344) lt!1658529)))

(declare-fun b!4469768 () Bool)

(assert (=> b!4469768 (= e!2783380 (contains!12843 (toList!4059 lm!1477) lt!1658344))))

(assert (= (and d!1363713 res!1854428) b!4469768))

(declare-fun b_lambda!148433 () Bool)

(assert (=> (not b_lambda!148433) (not d!1363713)))

(declare-fun m!5176795 () Bool)

(assert (=> d!1363713 m!5176795))

(declare-fun m!5176797 () Bool)

(assert (=> d!1363713 m!5176797))

(assert (=> d!1363713 m!5176407))

(assert (=> b!4469768 m!5176373))

(assert (=> b!4469515 d!1363713))

(declare-fun d!1363715 () Bool)

(declare-fun res!1854433 () Bool)

(declare-fun e!2783385 () Bool)

(assert (=> d!1363715 (=> res!1854433 e!2783385)))

(assert (=> d!1363715 (= res!1854433 ((_ is Nil!50291) (toList!4059 lm!1477)))))

(assert (=> d!1363715 (= (forall!9994 (toList!4059 lm!1477) lambda!163311) e!2783385)))

(declare-fun b!4469773 () Bool)

(declare-fun e!2783386 () Bool)

(assert (=> b!4469773 (= e!2783385 e!2783386)))

(declare-fun res!1854434 () Bool)

(assert (=> b!4469773 (=> (not res!1854434) (not e!2783386))))

(assert (=> b!4469773 (= res!1854434 (dynLambda!21016 lambda!163311 (h!56056 (toList!4059 lm!1477))))))

(declare-fun b!4469774 () Bool)

(assert (=> b!4469774 (= e!2783386 (forall!9994 (t!357365 (toList!4059 lm!1477)) lambda!163311))))

(assert (= (and d!1363715 (not res!1854433)) b!4469773))

(assert (= (and b!4469773 res!1854434) b!4469774))

(declare-fun b_lambda!148435 () Bool)

(assert (=> (not b_lambda!148435) (not b!4469773)))

(declare-fun m!5176799 () Bool)

(assert (=> b!4469773 m!5176799))

(declare-fun m!5176801 () Bool)

(assert (=> b!4469774 m!5176801))

(assert (=> start!439148 d!1363715))

(declare-fun d!1363717 () Bool)

(assert (=> d!1363717 (= (inv!65889 lm!1477) (isStrictlySorted!343 (toList!4059 lm!1477)))))

(declare-fun bs!795216 () Bool)

(assert (= bs!795216 d!1363717))

(assert (=> bs!795216 m!5176793))

(assert (=> start!439148 d!1363717))

(declare-fun d!1363719 () Bool)

(declare-fun res!1854435 () Bool)

(declare-fun e!2783387 () Bool)

(assert (=> d!1363719 (=> res!1854435 e!2783387)))

(assert (=> d!1363719 (= res!1854435 ((_ is Nil!50291) (toList!4059 lt!1658345)))))

(assert (=> d!1363719 (= (forall!9994 (toList!4059 lt!1658345) lambda!163311) e!2783387)))

(declare-fun b!4469775 () Bool)

(declare-fun e!2783388 () Bool)

(assert (=> b!4469775 (= e!2783387 e!2783388)))

(declare-fun res!1854436 () Bool)

(assert (=> b!4469775 (=> (not res!1854436) (not e!2783388))))

(assert (=> b!4469775 (= res!1854436 (dynLambda!21016 lambda!163311 (h!56056 (toList!4059 lt!1658345))))))

(declare-fun b!4469776 () Bool)

(assert (=> b!4469776 (= e!2783388 (forall!9994 (t!357365 (toList!4059 lt!1658345)) lambda!163311))))

(assert (= (and d!1363719 (not res!1854435)) b!4469775))

(assert (= (and b!4469775 res!1854436) b!4469776))

(declare-fun b_lambda!148437 () Bool)

(assert (=> (not b_lambda!148437) (not b!4469775)))

(declare-fun m!5176803 () Bool)

(assert (=> b!4469775 m!5176803))

(declare-fun m!5176805 () Bool)

(assert (=> b!4469776 m!5176805))

(assert (=> b!4469525 d!1363719))

(declare-fun d!1363721 () Bool)

(declare-fun hash!2457 (Hashable!5421 K!11705) (_ BitVec 64))

(assert (=> d!1363721 (= (hash!2453 hashF!1107 key!3287) (hash!2457 hashF!1107 key!3287))))

(declare-fun bs!795217 () Bool)

(assert (= bs!795217 d!1363721))

(declare-fun m!5176807 () Bool)

(assert (=> bs!795217 m!5176807))

(assert (=> b!4469527 d!1363721))

(declare-fun d!1363723 () Bool)

(assert (=> d!1363723 true))

(assert (=> d!1363723 true))

(declare-fun lambda!163353 () Int)

(declare-fun forall!9996 (List!50414 Int) Bool)

(assert (=> d!1363723 (= (allKeysSameHash!880 newBucket!178 hash!344 hashF!1107) (forall!9996 newBucket!178 lambda!163353))))

(declare-fun bs!795218 () Bool)

(assert (= bs!795218 d!1363723))

(declare-fun m!5176809 () Bool)

(assert (=> bs!795218 m!5176809))

(assert (=> b!4469516 d!1363723))

(declare-fun b!4469781 () Bool)

(declare-fun e!2783390 () List!50417)

(assert (=> b!4469781 (= e!2783390 (keys!17366 (extractMap!1082 (toList!4059 lm!1477))))))

(declare-fun b!4469782 () Bool)

(assert (=> b!4469782 false))

(declare-fun lt!1658536 () Unit!87781)

(declare-fun lt!1658531 () Unit!87781)

(assert (=> b!4469782 (= lt!1658536 lt!1658531)))

(assert (=> b!4469782 (containsKey!1477 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287)))

(assert (=> b!4469782 (= lt!1658531 (lemmaInGetKeysListThenContainsKey!376 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287))))

(declare-fun e!2783391 () Unit!87781)

(declare-fun Unit!87793 () Unit!87781)

(assert (=> b!4469782 (= e!2783391 Unit!87793)))

(declare-fun b!4469783 () Bool)

(declare-fun e!2783392 () Bool)

(assert (=> b!4469783 (= e!2783392 (contains!12847 (keys!17366 (extractMap!1082 (toList!4059 lm!1477))) key!3287))))

(declare-fun b!4469784 () Bool)

(assert (=> b!4469784 (= e!2783390 (getKeysList!377 (toList!4060 (extractMap!1082 (toList!4059 lm!1477)))))))

(declare-fun b!4469785 () Bool)

(declare-fun e!2783389 () Bool)

(assert (=> b!4469785 (= e!2783389 e!2783392)))

(declare-fun res!1854439 () Bool)

(assert (=> b!4469785 (=> (not res!1854439) (not e!2783392))))

(assert (=> b!4469785 (= res!1854439 (isDefined!8217 (getValueByKey!917 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287)))))

(declare-fun b!4469786 () Bool)

(declare-fun e!2783393 () Unit!87781)

(assert (=> b!4469786 (= e!2783393 e!2783391)))

(declare-fun c!760971 () Bool)

(declare-fun call!311214 () Bool)

(assert (=> b!4469786 (= c!760971 call!311214)))

(declare-fun bm!311209 () Bool)

(assert (=> bm!311209 (= call!311214 (contains!12847 e!2783390 key!3287))))

(declare-fun c!760969 () Bool)

(declare-fun c!760970 () Bool)

(assert (=> bm!311209 (= c!760969 c!760970)))

(declare-fun b!4469787 () Bool)

(declare-fun Unit!87794 () Unit!87781)

(assert (=> b!4469787 (= e!2783391 Unit!87794)))

(declare-fun d!1363725 () Bool)

(assert (=> d!1363725 e!2783389))

(declare-fun res!1854438 () Bool)

(assert (=> d!1363725 (=> res!1854438 e!2783389)))

(declare-fun e!2783394 () Bool)

(assert (=> d!1363725 (= res!1854438 e!2783394)))

(declare-fun res!1854437 () Bool)

(assert (=> d!1363725 (=> (not res!1854437) (not e!2783394))))

(declare-fun lt!1658533 () Bool)

(assert (=> d!1363725 (= res!1854437 (not lt!1658533))))

(declare-fun lt!1658530 () Bool)

(assert (=> d!1363725 (= lt!1658533 lt!1658530)))

(declare-fun lt!1658537 () Unit!87781)

(assert (=> d!1363725 (= lt!1658537 e!2783393)))

(assert (=> d!1363725 (= c!760970 lt!1658530)))

(assert (=> d!1363725 (= lt!1658530 (containsKey!1477 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287))))

(assert (=> d!1363725 (= (contains!12845 (extractMap!1082 (toList!4059 lm!1477)) key!3287) lt!1658533)))

(declare-fun b!4469788 () Bool)

(assert (=> b!4469788 (= e!2783394 (not (contains!12847 (keys!17366 (extractMap!1082 (toList!4059 lm!1477))) key!3287)))))

(declare-fun b!4469789 () Bool)

(declare-fun lt!1658532 () Unit!87781)

(assert (=> b!4469789 (= e!2783393 lt!1658532)))

(declare-fun lt!1658534 () Unit!87781)

(assert (=> b!4469789 (= lt!1658534 (lemmaContainsKeyImpliesGetValueByKeyDefined!820 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287))))

(assert (=> b!4469789 (isDefined!8217 (getValueByKey!917 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287))))

(declare-fun lt!1658535 () Unit!87781)

(assert (=> b!4469789 (= lt!1658535 lt!1658534)))

(assert (=> b!4469789 (= lt!1658532 (lemmaInListThenGetKeysListContains!373 (toList!4060 (extractMap!1082 (toList!4059 lm!1477))) key!3287))))

(assert (=> b!4469789 call!311214))

(assert (= (and d!1363725 c!760970) b!4469789))

(assert (= (and d!1363725 (not c!760970)) b!4469786))

(assert (= (and b!4469786 c!760971) b!4469782))

(assert (= (and b!4469786 (not c!760971)) b!4469787))

(assert (= (or b!4469789 b!4469786) bm!311209))

(assert (= (and bm!311209 c!760969) b!4469784))

(assert (= (and bm!311209 (not c!760969)) b!4469781))

(assert (= (and d!1363725 res!1854437) b!4469788))

(assert (= (and d!1363725 (not res!1854438)) b!4469785))

(assert (= (and b!4469785 res!1854439) b!4469783))

(declare-fun m!5176811 () Bool)

(assert (=> bm!311209 m!5176811))

(assert (=> b!4469788 m!5176385))

(declare-fun m!5176813 () Bool)

(assert (=> b!4469788 m!5176813))

(assert (=> b!4469788 m!5176813))

(declare-fun m!5176815 () Bool)

(assert (=> b!4469788 m!5176815))

(declare-fun m!5176817 () Bool)

(assert (=> b!4469784 m!5176817))

(declare-fun m!5176819 () Bool)

(assert (=> d!1363725 m!5176819))

(declare-fun m!5176821 () Bool)

(assert (=> b!4469785 m!5176821))

(assert (=> b!4469785 m!5176821))

(declare-fun m!5176823 () Bool)

(assert (=> b!4469785 m!5176823))

(assert (=> b!4469782 m!5176819))

(declare-fun m!5176825 () Bool)

(assert (=> b!4469782 m!5176825))

(declare-fun m!5176827 () Bool)

(assert (=> b!4469789 m!5176827))

(assert (=> b!4469789 m!5176821))

(assert (=> b!4469789 m!5176821))

(assert (=> b!4469789 m!5176823))

(declare-fun m!5176829 () Bool)

(assert (=> b!4469789 m!5176829))

(assert (=> b!4469783 m!5176385))

(assert (=> b!4469783 m!5176813))

(assert (=> b!4469783 m!5176813))

(assert (=> b!4469783 m!5176815))

(assert (=> b!4469781 m!5176385))

(assert (=> b!4469781 m!5176813))

(assert (=> b!4469518 d!1363725))

(declare-fun bs!795219 () Bool)

(declare-fun d!1363727 () Bool)

(assert (= bs!795219 (and d!1363727 d!1363629)))

(declare-fun lambda!163354 () Int)

(assert (=> bs!795219 (= lambda!163354 lambda!163321)))

(declare-fun bs!795220 () Bool)

(assert (= bs!795220 (and d!1363727 d!1363689)))

(assert (=> bs!795220 (= lambda!163354 lambda!163345)))

(declare-fun bs!795221 () Bool)

(assert (= bs!795221 (and d!1363727 d!1363613)))

(assert (=> bs!795221 (= lambda!163354 lambda!163320)))

(declare-fun bs!795222 () Bool)

(assert (= bs!795222 (and d!1363727 d!1363693)))

(assert (=> bs!795222 (= lambda!163354 lambda!163346)))

(declare-fun bs!795223 () Bool)

(assert (= bs!795223 (and d!1363727 d!1363697)))

(assert (=> bs!795223 (= lambda!163354 lambda!163347)))

(declare-fun bs!795224 () Bool)

(assert (= bs!795224 (and d!1363727 start!439148)))

(assert (=> bs!795224 (= lambda!163354 lambda!163311)))

(declare-fun bs!795225 () Bool)

(assert (= bs!795225 (and d!1363727 d!1363597)))

(assert (=> bs!795225 (= lambda!163354 lambda!163316)))

(declare-fun bs!795226 () Bool)

(assert (= bs!795226 (and d!1363727 d!1363641)))

(assert (=> bs!795226 (= lambda!163354 lambda!163329)))

(declare-fun bs!795227 () Bool)

(assert (= bs!795227 (and d!1363727 d!1363701)))

(assert (=> bs!795227 (= lambda!163354 lambda!163350)))

(declare-fun lt!1658538 () ListMap!3321)

(assert (=> d!1363727 (invariantList!929 (toList!4060 lt!1658538))))

(declare-fun e!2783395 () ListMap!3321)

(assert (=> d!1363727 (= lt!1658538 e!2783395)))

(declare-fun c!760972 () Bool)

(assert (=> d!1363727 (= c!760972 ((_ is Cons!50291) (toList!4059 lm!1477)))))

(assert (=> d!1363727 (forall!9994 (toList!4059 lm!1477) lambda!163354)))

(assert (=> d!1363727 (= (extractMap!1082 (toList!4059 lm!1477)) lt!1658538)))

(declare-fun b!4469790 () Bool)

(assert (=> b!4469790 (= e!2783395 (addToMapMapFromBucket!591 (_2!28564 (h!56056 (toList!4059 lm!1477))) (extractMap!1082 (t!357365 (toList!4059 lm!1477)))))))

(declare-fun b!4469791 () Bool)

(assert (=> b!4469791 (= e!2783395 (ListMap!3322 Nil!50290))))

(assert (= (and d!1363727 c!760972) b!4469790))

(assert (= (and d!1363727 (not c!760972)) b!4469791))

(declare-fun m!5176831 () Bool)

(assert (=> d!1363727 m!5176831))

(declare-fun m!5176833 () Bool)

(assert (=> d!1363727 m!5176833))

(assert (=> b!4469790 m!5176349))

(assert (=> b!4469790 m!5176349))

(declare-fun m!5176835 () Bool)

(assert (=> b!4469790 m!5176835))

(assert (=> b!4469518 d!1363727))

(declare-fun d!1363729 () Bool)

(declare-fun res!1854444 () Bool)

(declare-fun e!2783400 () Bool)

(assert (=> d!1363729 (=> res!1854444 e!2783400)))

(assert (=> d!1363729 (= res!1854444 (not ((_ is Cons!50290) newBucket!178)))))

(assert (=> d!1363729 (= (noDuplicateKeys!1026 newBucket!178) e!2783400)))

(declare-fun b!4469796 () Bool)

(declare-fun e!2783401 () Bool)

(assert (=> b!4469796 (= e!2783400 e!2783401)))

(declare-fun res!1854445 () Bool)

(assert (=> b!4469796 (=> (not res!1854445) (not e!2783401))))

(assert (=> b!4469796 (= res!1854445 (not (containsKey!1474 (t!357364 newBucket!178) (_1!28563 (h!56055 newBucket!178)))))))

(declare-fun b!4469797 () Bool)

(assert (=> b!4469797 (= e!2783401 (noDuplicateKeys!1026 (t!357364 newBucket!178)))))

(assert (= (and d!1363729 (not res!1854444)) b!4469796))

(assert (= (and b!4469796 res!1854445) b!4469797))

(declare-fun m!5176837 () Bool)

(assert (=> b!4469796 m!5176837))

(declare-fun m!5176839 () Bool)

(assert (=> b!4469797 m!5176839))

(assert (=> b!4469517 d!1363729))

(declare-fun bs!795228 () Bool)

(declare-fun d!1363731 () Bool)

(assert (= bs!795228 (and d!1363731 d!1363629)))

(declare-fun lambda!163357 () Int)

(assert (=> bs!795228 (not (= lambda!163357 lambda!163321))))

(declare-fun bs!795229 () Bool)

(assert (= bs!795229 (and d!1363731 d!1363689)))

(assert (=> bs!795229 (not (= lambda!163357 lambda!163345))))

(declare-fun bs!795230 () Bool)

(assert (= bs!795230 (and d!1363731 d!1363613)))

(assert (=> bs!795230 (not (= lambda!163357 lambda!163320))))

(declare-fun bs!795231 () Bool)

(assert (= bs!795231 (and d!1363731 d!1363727)))

(assert (=> bs!795231 (not (= lambda!163357 lambda!163354))))

(declare-fun bs!795232 () Bool)

(assert (= bs!795232 (and d!1363731 d!1363693)))

(assert (=> bs!795232 (not (= lambda!163357 lambda!163346))))

(declare-fun bs!795233 () Bool)

(assert (= bs!795233 (and d!1363731 d!1363697)))

(assert (=> bs!795233 (not (= lambda!163357 lambda!163347))))

(declare-fun bs!795234 () Bool)

(assert (= bs!795234 (and d!1363731 start!439148)))

(assert (=> bs!795234 (not (= lambda!163357 lambda!163311))))

(declare-fun bs!795235 () Bool)

(assert (= bs!795235 (and d!1363731 d!1363597)))

(assert (=> bs!795235 (not (= lambda!163357 lambda!163316))))

(declare-fun bs!795236 () Bool)

(assert (= bs!795236 (and d!1363731 d!1363641)))

(assert (=> bs!795236 (not (= lambda!163357 lambda!163329))))

(declare-fun bs!795237 () Bool)

(assert (= bs!795237 (and d!1363731 d!1363701)))

(assert (=> bs!795237 (not (= lambda!163357 lambda!163350))))

(assert (=> d!1363731 true))

(assert (=> d!1363731 (= (allKeysSameHashInMap!1133 lm!1477 hashF!1107) (forall!9994 (toList!4059 lm!1477) lambda!163357))))

(declare-fun bs!795238 () Bool)

(assert (= bs!795238 d!1363731))

(declare-fun m!5176841 () Bool)

(assert (=> bs!795238 m!5176841))

(assert (=> b!4469520 d!1363731))

(declare-fun e!2783404 () Bool)

(declare-fun tp!1336275 () Bool)

(declare-fun b!4469804 () Bool)

(assert (=> b!4469804 (= e!2783404 (and tp_is_empty!27381 tp_is_empty!27383 tp!1336275))))

(assert (=> b!4469519 (= tp!1336263 e!2783404)))

(assert (= (and b!4469519 ((_ is Cons!50290) (t!357364 newBucket!178))) b!4469804))

(declare-fun b!4469809 () Bool)

(declare-fun e!2783407 () Bool)

(declare-fun tp!1336280 () Bool)

(declare-fun tp!1336281 () Bool)

(assert (=> b!4469809 (= e!2783407 (and tp!1336280 tp!1336281))))

(assert (=> b!4469526 (= tp!1336262 e!2783407)))

(assert (= (and b!4469526 ((_ is Cons!50291) (toList!4059 lm!1477))) b!4469809))

(declare-fun b_lambda!148439 () Bool)

(assert (= b_lambda!148435 (or start!439148 b_lambda!148439)))

(declare-fun bs!795239 () Bool)

(declare-fun d!1363733 () Bool)

(assert (= bs!795239 (and d!1363733 start!439148)))

(assert (=> bs!795239 (= (dynLambda!21016 lambda!163311 (h!56056 (toList!4059 lm!1477))) (noDuplicateKeys!1026 (_2!28564 (h!56056 (toList!4059 lm!1477)))))))

(assert (=> bs!795239 m!5176721))

(assert (=> b!4469773 d!1363733))

(declare-fun b_lambda!148441 () Bool)

(assert (= b_lambda!148437 (or start!439148 b_lambda!148441)))

(declare-fun bs!795240 () Bool)

(declare-fun d!1363735 () Bool)

(assert (= bs!795240 (and d!1363735 start!439148)))

(assert (=> bs!795240 (= (dynLambda!21016 lambda!163311 (h!56056 (toList!4059 lt!1658345))) (noDuplicateKeys!1026 (_2!28564 (h!56056 (toList!4059 lt!1658345)))))))

(declare-fun m!5176843 () Bool)

(assert (=> bs!795240 m!5176843))

(assert (=> b!4469775 d!1363735))

(declare-fun b_lambda!148443 () Bool)

(assert (= b_lambda!148433 (or start!439148 b_lambda!148443)))

(declare-fun bs!795241 () Bool)

(declare-fun d!1363737 () Bool)

(assert (= bs!795241 (and d!1363737 start!439148)))

(assert (=> bs!795241 (= (dynLambda!21016 lambda!163311 lt!1658344) (noDuplicateKeys!1026 (_2!28564 lt!1658344)))))

(declare-fun m!5176845 () Bool)

(assert (=> bs!795241 m!5176845))

(assert (=> d!1363713 d!1363737))

(check-sat (not d!1363707) (not d!1363629) (not b!4469797) (not b!4469534) (not b!4469713) (not d!1363701) (not b!4469618) (not b!4469726) (not b!4469782) (not b_lambda!148439) (not d!1363641) (not d!1363613) (not d!1363717) (not b!4469765) (not bm!311208) (not d!1363709) (not b!4469536) (not b!4469785) (not b!4469705) (not d!1363677) (not b!4469703) (not d!1363723) (not b!4469774) (not b!4469746) (not d!1363705) (not d!1363689) (not b!4469715) (not d!1363695) (not b!4469753) (not d!1363713) (not d!1363721) (not b!4469702) (not d!1363673) (not b!4469804) (not b!4469760) (not bm!311209) (not d!1363731) tp_is_empty!27383 (not d!1363693) (not b!4469784) (not d!1363679) (not b!4469796) (not b!4469783) (not d!1363697) (not b!4469710) tp_is_empty!27381 (not d!1363711) (not d!1363637) (not d!1363725) (not b!4469768) (not b!4469706) (not b!4469762) (not b!4469728) (not bs!795241) (not bs!795239) (not b_lambda!148443) (not d!1363703) (not b!4469709) (not b!4469714) (not b!4469603) (not b!4469601) (not b!4469788) (not d!1363597) (not b!4469776) (not b_lambda!148441) (not b!4469789) (not d!1363645) (not b!4469617) (not d!1363727) (not b!4469809) (not b!4469781) (not d!1363631) (not bs!795240) (not b!4469623) (not b!4469790) (not b!4469735) (not b!4469704))
(check-sat)
