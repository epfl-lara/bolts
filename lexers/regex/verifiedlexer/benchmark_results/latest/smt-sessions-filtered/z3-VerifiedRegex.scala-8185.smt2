; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422504 () Bool)

(assert start!422504)

(declare-fun b!4361004 () Bool)

(declare-fun res!1793014 () Bool)

(declare-fun e!2714039 () Bool)

(assert (=> b!4361004 (=> (not res!1793014) (not e!2714039))))

(declare-datatypes ((V!10576 0))(
  ( (V!10577 (val!16535 Int)) )
))
(declare-datatypes ((K!10330 0))(
  ( (K!10331 (val!16536 Int)) )
))
(declare-datatypes ((tuple2!48390 0))(
  ( (tuple2!48391 (_1!27489 K!10330) (_2!27489 V!10576)) )
))
(declare-datatypes ((List!49097 0))(
  ( (Nil!48973) (Cons!48973 (h!54534 tuple2!48390) (t!356017 List!49097)) )
))
(declare-datatypes ((tuple2!48392 0))(
  ( (tuple2!48393 (_1!27490 (_ BitVec 64)) (_2!27490 List!49097)) )
))
(declare-datatypes ((List!49098 0))(
  ( (Nil!48974) (Cons!48974 (h!54535 tuple2!48392) (t!356018 List!49098)) )
))
(declare-datatypes ((ListLongMap!1643 0))(
  ( (ListLongMap!1644 (toList!2993 List!49098)) )
))
(declare-fun lm!1707 () ListLongMap!1643)

(declare-datatypes ((Hashable!4897 0))(
  ( (HashableExt!4896 (__x!30600 Int)) )
))
(declare-fun hashF!1247 () Hashable!4897)

(declare-fun allKeysSameHashInMap!609 (ListLongMap!1643 Hashable!4897) Bool)

(assert (=> b!4361004 (= res!1793014 (allKeysSameHashInMap!609 lm!1707 hashF!1247))))

(declare-fun b!4361005 () Bool)

(declare-fun e!2714048 () Bool)

(assert (=> b!4361005 (= e!2714039 e!2714048)))

(declare-fun res!1793015 () Bool)

(assert (=> b!4361005 (=> (not res!1793015) (not e!2714048))))

(declare-datatypes ((ListMap!2237 0))(
  ( (ListMap!2238 (toList!2994 List!49097)) )
))
(declare-fun lt!1573417 () ListMap!2237)

(declare-fun key!3918 () K!10330)

(declare-fun contains!11203 (ListMap!2237 K!10330) Bool)

(assert (=> b!4361005 (= res!1793015 (contains!11203 lt!1573417 key!3918))))

(declare-fun extractMap!564 (List!49098) ListMap!2237)

(assert (=> b!4361005 (= lt!1573417 (extractMap!564 (toList!2993 lm!1707)))))

(declare-fun b!4361006 () Bool)

(declare-fun e!2714046 () Bool)

(declare-fun containsKey!726 (List!49097 K!10330) Bool)

(assert (=> b!4361006 (= e!2714046 (not (containsKey!726 (_2!27490 (h!54535 (toList!2993 lm!1707))) key!3918)))))

(declare-fun b!4361007 () Bool)

(declare-fun res!1793020 () Bool)

(assert (=> b!4361007 (=> (not res!1793020) (not e!2714048))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11204 (ListLongMap!1643 (_ BitVec 64)) Bool)

(assert (=> b!4361007 (= res!1793020 (contains!11204 lm!1707 hash!377))))

(declare-fun b!4361008 () Bool)

(declare-fun res!1793009 () Bool)

(declare-fun e!2714047 () Bool)

(assert (=> b!4361008 (=> res!1793009 e!2714047)))

(declare-fun newBucket!200 () List!49097)

(declare-fun noDuplicateKeys!505 (List!49097) Bool)

(assert (=> b!4361008 (= res!1793009 (not (noDuplicateKeys!505 newBucket!200)))))

(declare-fun res!1793021 () Bool)

(assert (=> start!422504 (=> (not res!1793021) (not e!2714039))))

(declare-fun lambda!141477 () Int)

(declare-fun forall!9150 (List!49098 Int) Bool)

(assert (=> start!422504 (= res!1793021 (forall!9150 (toList!2993 lm!1707) lambda!141477))))

(assert (=> start!422504 e!2714039))

(declare-fun e!2714041 () Bool)

(assert (=> start!422504 e!2714041))

(assert (=> start!422504 true))

(declare-fun e!2714042 () Bool)

(declare-fun inv!64516 (ListLongMap!1643) Bool)

(assert (=> start!422504 (and (inv!64516 lm!1707) e!2714042)))

(declare-fun tp_is_empty!25257 () Bool)

(assert (=> start!422504 tp_is_empty!25257))

(declare-fun tp_is_empty!25259 () Bool)

(assert (=> start!422504 tp_is_empty!25259))

(declare-fun b!4361009 () Bool)

(declare-fun e!2714043 () Bool)

(declare-fun lt!1573431 () ListLongMap!1643)

(assert (=> b!4361009 (= e!2714043 (forall!9150 (toList!2993 lt!1573431) lambda!141477))))

(declare-fun b!4361010 () Bool)

(declare-fun e!2714044 () Bool)

(assert (=> b!4361010 (= e!2714047 e!2714044)))

(declare-fun res!1793011 () Bool)

(assert (=> b!4361010 (=> res!1793011 e!2714044)))

(get-info :version)

(assert (=> b!4361010 (= res!1793011 (or (and ((_ is Cons!48974) (toList!2993 lm!1707)) (= (_1!27490 (h!54535 (toList!2993 lm!1707))) hash!377)) (not ((_ is Cons!48974) (toList!2993 lm!1707))) (= (_1!27490 (h!54535 (toList!2993 lm!1707))) hash!377)))))

(assert (=> b!4361010 e!2714043))

(declare-fun res!1793012 () Bool)

(assert (=> b!4361010 (=> (not res!1793012) (not e!2714043))))

(assert (=> b!4361010 (= res!1793012 (forall!9150 (toList!2993 lt!1573431) lambda!141477))))

(declare-fun lt!1573430 () tuple2!48392)

(declare-fun +!667 (ListLongMap!1643 tuple2!48392) ListLongMap!1643)

(assert (=> b!4361010 (= lt!1573431 (+!667 lm!1707 lt!1573430))))

(assert (=> b!4361010 (= lt!1573430 (tuple2!48393 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72383 0))(
  ( (Unit!72384) )
))
(declare-fun lt!1573424 () Unit!72383)

(declare-fun addValidProp!159 (ListLongMap!1643 Int (_ BitVec 64) List!49097) Unit!72383)

(assert (=> b!4361010 (= lt!1573424 (addValidProp!159 lm!1707 lambda!141477 hash!377 newBucket!200))))

(assert (=> b!4361010 (forall!9150 (toList!2993 lm!1707) lambda!141477)))

(declare-fun b!4361011 () Bool)

(declare-fun e!2714045 () Bool)

(assert (=> b!4361011 (= e!2714044 e!2714045)))

(declare-fun res!1793017 () Bool)

(assert (=> b!4361011 (=> res!1793017 e!2714045)))

(declare-fun lt!1573422 () ListMap!2237)

(declare-fun eq!275 (ListMap!2237 ListMap!2237) Bool)

(assert (=> b!4361011 (= res!1793017 (not (eq!275 lt!1573422 lt!1573417)))))

(declare-fun lt!1573427 () ListMap!2237)

(declare-fun lt!1573432 () tuple2!48390)

(declare-fun addToMapMapFromBucket!201 (List!49097 ListMap!2237) ListMap!2237)

(declare-fun +!668 (ListMap!2237 tuple2!48390) ListMap!2237)

(assert (=> b!4361011 (eq!275 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573427) (+!668 lt!1573422 lt!1573432))))

(declare-fun newValue!99 () V!10576)

(declare-fun lt!1573428 () ListMap!2237)

(declare-fun lt!1573420 () Unit!72383)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!84 (ListMap!2237 K!10330 V!10576 List!49097) Unit!72383)

(assert (=> b!4361011 (= lt!1573420 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!84 lt!1573428 key!3918 newValue!99 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(assert (=> b!4361011 (= lt!1573417 lt!1573422)))

(assert (=> b!4361011 (= lt!1573422 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573428))))

(declare-fun e!2714040 () Bool)

(assert (=> b!4361011 e!2714040))

(declare-fun res!1793010 () Bool)

(assert (=> b!4361011 (=> (not res!1793010) (not e!2714040))))

(declare-fun lt!1573421 () ListMap!2237)

(assert (=> b!4361011 (= res!1793010 (eq!275 lt!1573421 lt!1573427))))

(assert (=> b!4361011 (= lt!1573427 (+!668 lt!1573428 lt!1573432))))

(declare-fun lt!1573418 () ListLongMap!1643)

(assert (=> b!4361011 (= lt!1573421 (extractMap!564 (toList!2993 (+!667 lt!1573418 lt!1573430))))))

(declare-fun lt!1573425 () Unit!72383)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!109 (ListLongMap!1643 (_ BitVec 64) List!49097 K!10330 V!10576 Hashable!4897) Unit!72383)

(assert (=> b!4361011 (= lt!1573425 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!109 lt!1573418 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4361011 (contains!11203 lt!1573428 key!3918)))

(assert (=> b!4361011 (= lt!1573428 (extractMap!564 (toList!2993 lt!1573418)))))

(declare-fun tail!7022 (ListLongMap!1643) ListLongMap!1643)

(assert (=> b!4361011 (= lt!1573418 (tail!7022 lm!1707))))

(declare-fun lt!1573419 () ListMap!2237)

(assert (=> b!4361011 (contains!11203 lt!1573419 key!3918)))

(declare-fun lt!1573426 () Unit!72383)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!48 (List!49097 K!10330 V!10576 ListMap!2237) Unit!72383)

(assert (=> b!4361011 (= lt!1573426 (lemmaAddToMapContainsAndNotInListThenInAcc!48 (_2!27490 (h!54535 (toList!2993 lm!1707))) key!3918 newValue!99 lt!1573419))))

(assert (=> b!4361011 (= lt!1573419 (extractMap!564 (t!356018 (toList!2993 lm!1707))))))

(assert (=> b!4361011 e!2714046))

(declare-fun res!1793016 () Bool)

(assert (=> b!4361011 (=> (not res!1793016) (not e!2714046))))

(declare-fun apply!11357 (ListLongMap!1643 (_ BitVec 64)) List!49097)

(assert (=> b!4361011 (= res!1793016 (not (containsKey!726 (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707)))) key!3918)))))

(declare-fun lt!1573429 () Unit!72383)

(declare-fun lemmaNotSameHashThenCannotContainKey!52 (ListLongMap!1643 K!10330 (_ BitVec 64) Hashable!4897) Unit!72383)

(assert (=> b!4361011 (= lt!1573429 (lemmaNotSameHashThenCannotContainKey!52 lm!1707 key!3918 (_1!27490 (h!54535 (toList!2993 lm!1707))) hashF!1247))))

(declare-fun b!4361012 () Bool)

(declare-fun head!9074 (ListLongMap!1643) tuple2!48392)

(assert (=> b!4361012 (= e!2714040 (not (= (head!9074 lm!1707) lt!1573430)))))

(declare-fun b!4361013 () Bool)

(declare-fun res!1793019 () Bool)

(assert (=> b!4361013 (=> (not res!1793019) (not e!2714039))))

(declare-fun hash!1611 (Hashable!4897 K!10330) (_ BitVec 64))

(assert (=> b!4361013 (= res!1793019 (= (hash!1611 hashF!1247 key!3918) hash!377))))

(declare-fun b!4361014 () Bool)

(declare-fun tp!1330334 () Bool)

(assert (=> b!4361014 (= e!2714042 tp!1330334)))

(declare-fun b!4361015 () Bool)

(assert (=> b!4361015 (= e!2714048 (not e!2714047))))

(declare-fun res!1793013 () Bool)

(assert (=> b!4361015 (=> res!1793013 e!2714047)))

(declare-fun lt!1573423 () List!49097)

(declare-fun removePairForKey!475 (List!49097 K!10330) List!49097)

(assert (=> b!4361015 (= res!1793013 (not (= newBucket!200 (Cons!48973 lt!1573432 (removePairForKey!475 lt!1573423 key!3918)))))))

(assert (=> b!4361015 (= lt!1573432 (tuple2!48391 key!3918 newValue!99))))

(declare-fun lt!1573433 () tuple2!48392)

(declare-fun lt!1573416 () Unit!72383)

(declare-fun forallContained!1791 (List!49098 Int tuple2!48392) Unit!72383)

(assert (=> b!4361015 (= lt!1573416 (forallContained!1791 (toList!2993 lm!1707) lambda!141477 lt!1573433))))

(declare-fun contains!11205 (List!49098 tuple2!48392) Bool)

(assert (=> b!4361015 (contains!11205 (toList!2993 lm!1707) lt!1573433)))

(assert (=> b!4361015 (= lt!1573433 (tuple2!48393 hash!377 lt!1573423))))

(declare-fun lt!1573434 () Unit!72383)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!352 (List!49098 (_ BitVec 64) List!49097) Unit!72383)

(assert (=> b!4361015 (= lt!1573434 (lemmaGetValueByKeyImpliesContainsTuple!352 (toList!2993 lm!1707) hash!377 lt!1573423))))

(assert (=> b!4361015 (= lt!1573423 (apply!11357 lm!1707 hash!377))))

(declare-fun b!4361016 () Bool)

(assert (=> b!4361016 (= e!2714045 (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(declare-fun b!4361017 () Bool)

(declare-fun res!1793018 () Bool)

(assert (=> b!4361017 (=> (not res!1793018) (not e!2714039))))

(declare-fun allKeysSameHash!463 (List!49097 (_ BitVec 64) Hashable!4897) Bool)

(assert (=> b!4361017 (= res!1793018 (allKeysSameHash!463 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4361018 () Bool)

(declare-fun tp!1330333 () Bool)

(assert (=> b!4361018 (= e!2714041 (and tp_is_empty!25257 tp_is_empty!25259 tp!1330333))))

(assert (= (and start!422504 res!1793021) b!4361004))

(assert (= (and b!4361004 res!1793014) b!4361013))

(assert (= (and b!4361013 res!1793019) b!4361017))

(assert (= (and b!4361017 res!1793018) b!4361005))

(assert (= (and b!4361005 res!1793015) b!4361007))

(assert (= (and b!4361007 res!1793020) b!4361015))

(assert (= (and b!4361015 (not res!1793013)) b!4361008))

(assert (= (and b!4361008 (not res!1793009)) b!4361010))

(assert (= (and b!4361010 res!1793012) b!4361009))

(assert (= (and b!4361010 (not res!1793011)) b!4361011))

(assert (= (and b!4361011 res!1793016) b!4361006))

(assert (= (and b!4361011 res!1793010) b!4361012))

(assert (= (and b!4361011 (not res!1793017)) b!4361016))

(assert (= (and start!422504 ((_ is Cons!48973) newBucket!200)) b!4361018))

(assert (= start!422504 b!4361014))

(declare-fun m!4979355 () Bool)

(assert (=> b!4361015 m!4979355))

(declare-fun m!4979357 () Bool)

(assert (=> b!4361015 m!4979357))

(declare-fun m!4979359 () Bool)

(assert (=> b!4361015 m!4979359))

(declare-fun m!4979361 () Bool)

(assert (=> b!4361015 m!4979361))

(declare-fun m!4979363 () Bool)

(assert (=> b!4361015 m!4979363))

(declare-fun m!4979365 () Bool)

(assert (=> b!4361016 m!4979365))

(declare-fun m!4979367 () Bool)

(assert (=> b!4361009 m!4979367))

(declare-fun m!4979369 () Bool)

(assert (=> b!4361017 m!4979369))

(declare-fun m!4979371 () Bool)

(assert (=> b!4361012 m!4979371))

(declare-fun m!4979373 () Bool)

(assert (=> b!4361008 m!4979373))

(declare-fun m!4979375 () Bool)

(assert (=> b!4361004 m!4979375))

(declare-fun m!4979377 () Bool)

(assert (=> b!4361006 m!4979377))

(declare-fun m!4979379 () Bool)

(assert (=> b!4361011 m!4979379))

(declare-fun m!4979381 () Bool)

(assert (=> b!4361011 m!4979381))

(declare-fun m!4979383 () Bool)

(assert (=> b!4361011 m!4979383))

(declare-fun m!4979385 () Bool)

(assert (=> b!4361011 m!4979385))

(declare-fun m!4979387 () Bool)

(assert (=> b!4361011 m!4979387))

(declare-fun m!4979389 () Bool)

(assert (=> b!4361011 m!4979389))

(declare-fun m!4979391 () Bool)

(assert (=> b!4361011 m!4979391))

(declare-fun m!4979393 () Bool)

(assert (=> b!4361011 m!4979393))

(declare-fun m!4979395 () Bool)

(assert (=> b!4361011 m!4979395))

(declare-fun m!4979397 () Bool)

(assert (=> b!4361011 m!4979397))

(declare-fun m!4979399 () Bool)

(assert (=> b!4361011 m!4979399))

(declare-fun m!4979401 () Bool)

(assert (=> b!4361011 m!4979401))

(declare-fun m!4979403 () Bool)

(assert (=> b!4361011 m!4979403))

(declare-fun m!4979405 () Bool)

(assert (=> b!4361011 m!4979405))

(declare-fun m!4979407 () Bool)

(assert (=> b!4361011 m!4979407))

(declare-fun m!4979409 () Bool)

(assert (=> b!4361011 m!4979409))

(declare-fun m!4979411 () Bool)

(assert (=> b!4361011 m!4979411))

(assert (=> b!4361011 m!4979411))

(declare-fun m!4979413 () Bool)

(assert (=> b!4361011 m!4979413))

(assert (=> b!4361011 m!4979379))

(assert (=> b!4361011 m!4979401))

(declare-fun m!4979415 () Bool)

(assert (=> b!4361011 m!4979415))

(declare-fun m!4979417 () Bool)

(assert (=> b!4361011 m!4979417))

(assert (=> b!4361010 m!4979367))

(declare-fun m!4979419 () Bool)

(assert (=> b!4361010 m!4979419))

(declare-fun m!4979421 () Bool)

(assert (=> b!4361010 m!4979421))

(declare-fun m!4979423 () Bool)

(assert (=> b!4361010 m!4979423))

(declare-fun m!4979425 () Bool)

(assert (=> b!4361013 m!4979425))

(declare-fun m!4979427 () Bool)

(assert (=> b!4361007 m!4979427))

(declare-fun m!4979429 () Bool)

(assert (=> b!4361005 m!4979429))

(declare-fun m!4979431 () Bool)

(assert (=> b!4361005 m!4979431))

(assert (=> start!422504 m!4979423))

(declare-fun m!4979433 () Bool)

(assert (=> start!422504 m!4979433))

(check-sat (not b!4361005) (not b!4361007) (not b!4361011) (not b!4361013) (not b!4361018) (not b!4361014) tp_is_empty!25259 (not b!4361012) (not b!4361017) (not b!4361016) tp_is_empty!25257 (not b!4361004) (not start!422504) (not b!4361015) (not b!4361006) (not b!4361009) (not b!4361010) (not b!4361008))
(check-sat)
(get-model)

(declare-fun d!1290174 () Bool)

(assert (=> d!1290174 true))

(assert (=> d!1290174 true))

(declare-fun lambda!141483 () Int)

(declare-fun forall!9152 (List!49097 Int) Bool)

(assert (=> d!1290174 (= (allKeysSameHash!463 newBucket!200 hash!377 hashF!1247) (forall!9152 newBucket!200 lambda!141483))))

(declare-fun bs!634707 () Bool)

(assert (= bs!634707 d!1290174))

(declare-fun m!4979483 () Bool)

(assert (=> bs!634707 m!4979483))

(assert (=> b!4361017 d!1290174))

(declare-fun d!1290180 () Bool)

(declare-fun e!2714109 () Bool)

(assert (=> d!1290180 e!2714109))

(declare-fun res!1793067 () Bool)

(assert (=> d!1290180 (=> res!1793067 e!2714109)))

(declare-fun lt!1573499 () Bool)

(assert (=> d!1290180 (= res!1793067 (not lt!1573499))))

(declare-fun lt!1573497 () Bool)

(assert (=> d!1290180 (= lt!1573499 lt!1573497)))

(declare-fun lt!1573500 () Unit!72383)

(declare-fun e!2714108 () Unit!72383)

(assert (=> d!1290180 (= lt!1573500 e!2714108)))

(declare-fun c!741552 () Bool)

(assert (=> d!1290180 (= c!741552 lt!1573497)))

(declare-fun containsKey!729 (List!49098 (_ BitVec 64)) Bool)

(assert (=> d!1290180 (= lt!1573497 (containsKey!729 (toList!2993 lm!1707) hash!377))))

(assert (=> d!1290180 (= (contains!11204 lm!1707 hash!377) lt!1573499)))

(declare-fun b!4361103 () Bool)

(declare-fun lt!1573498 () Unit!72383)

(assert (=> b!4361103 (= e!2714108 lt!1573498)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!385 (List!49098 (_ BitVec 64)) Unit!72383)

(assert (=> b!4361103 (= lt!1573498 (lemmaContainsKeyImpliesGetValueByKeyDefined!385 (toList!2993 lm!1707) hash!377))))

(declare-datatypes ((Option!10488 0))(
  ( (None!10487) (Some!10487 (v!43395 List!49097)) )
))
(declare-fun isDefined!7782 (Option!10488) Bool)

(declare-fun getValueByKey!474 (List!49098 (_ BitVec 64)) Option!10488)

(assert (=> b!4361103 (isDefined!7782 (getValueByKey!474 (toList!2993 lm!1707) hash!377))))

(declare-fun b!4361104 () Bool)

(declare-fun Unit!72399 () Unit!72383)

(assert (=> b!4361104 (= e!2714108 Unit!72399)))

(declare-fun b!4361105 () Bool)

(assert (=> b!4361105 (= e!2714109 (isDefined!7782 (getValueByKey!474 (toList!2993 lm!1707) hash!377)))))

(assert (= (and d!1290180 c!741552) b!4361103))

(assert (= (and d!1290180 (not c!741552)) b!4361104))

(assert (= (and d!1290180 (not res!1793067)) b!4361105))

(declare-fun m!4979515 () Bool)

(assert (=> d!1290180 m!4979515))

(declare-fun m!4979517 () Bool)

(assert (=> b!4361103 m!4979517))

(declare-fun m!4979519 () Bool)

(assert (=> b!4361103 m!4979519))

(assert (=> b!4361103 m!4979519))

(declare-fun m!4979521 () Bool)

(assert (=> b!4361103 m!4979521))

(assert (=> b!4361105 m!4979519))

(assert (=> b!4361105 m!4979519))

(assert (=> b!4361105 m!4979521))

(assert (=> b!4361007 d!1290180))

(declare-fun d!1290194 () Bool)

(declare-fun res!1793072 () Bool)

(declare-fun e!2714114 () Bool)

(assert (=> d!1290194 (=> res!1793072 e!2714114)))

(assert (=> d!1290194 (= res!1793072 (not ((_ is Cons!48973) newBucket!200)))))

(assert (=> d!1290194 (= (noDuplicateKeys!505 newBucket!200) e!2714114)))

(declare-fun b!4361116 () Bool)

(declare-fun e!2714115 () Bool)

(assert (=> b!4361116 (= e!2714114 e!2714115)))

(declare-fun res!1793073 () Bool)

(assert (=> b!4361116 (=> (not res!1793073) (not e!2714115))))

(assert (=> b!4361116 (= res!1793073 (not (containsKey!726 (t!356017 newBucket!200) (_1!27489 (h!54534 newBucket!200)))))))

(declare-fun b!4361117 () Bool)

(assert (=> b!4361117 (= e!2714115 (noDuplicateKeys!505 (t!356017 newBucket!200)))))

(assert (= (and d!1290194 (not res!1793072)) b!4361116))

(assert (= (and b!4361116 res!1793073) b!4361117))

(declare-fun m!4979529 () Bool)

(assert (=> b!4361116 m!4979529))

(declare-fun m!4979531 () Bool)

(assert (=> b!4361117 m!4979531))

(assert (=> b!4361008 d!1290194))

(declare-fun d!1290202 () Bool)

(declare-fun res!1793084 () Bool)

(declare-fun e!2714126 () Bool)

(assert (=> d!1290202 (=> res!1793084 e!2714126)))

(assert (=> d!1290202 (= res!1793084 ((_ is Nil!48974) (toList!2993 lm!1707)))))

(assert (=> d!1290202 (= (forall!9150 (toList!2993 lm!1707) lambda!141477) e!2714126)))

(declare-fun b!4361128 () Bool)

(declare-fun e!2714127 () Bool)

(assert (=> b!4361128 (= e!2714126 e!2714127)))

(declare-fun res!1793085 () Bool)

(assert (=> b!4361128 (=> (not res!1793085) (not e!2714127))))

(declare-fun dynLambda!20649 (Int tuple2!48392) Bool)

(assert (=> b!4361128 (= res!1793085 (dynLambda!20649 lambda!141477 (h!54535 (toList!2993 lm!1707))))))

(declare-fun b!4361129 () Bool)

(assert (=> b!4361129 (= e!2714127 (forall!9150 (t!356018 (toList!2993 lm!1707)) lambda!141477))))

(assert (= (and d!1290202 (not res!1793084)) b!4361128))

(assert (= (and b!4361128 res!1793085) b!4361129))

(declare-fun b_lambda!131843 () Bool)

(assert (=> (not b_lambda!131843) (not b!4361128)))

(declare-fun m!4979541 () Bool)

(assert (=> b!4361128 m!4979541))

(declare-fun m!4979543 () Bool)

(assert (=> b!4361129 m!4979543))

(assert (=> start!422504 d!1290202))

(declare-fun d!1290208 () Bool)

(declare-fun isStrictlySorted!114 (List!49098) Bool)

(assert (=> d!1290208 (= (inv!64516 lm!1707) (isStrictlySorted!114 (toList!2993 lm!1707)))))

(declare-fun bs!634715 () Bool)

(assert (= bs!634715 d!1290208))

(declare-fun m!4979551 () Bool)

(assert (=> bs!634715 m!4979551))

(assert (=> start!422504 d!1290208))

(declare-fun bs!634717 () Bool)

(declare-fun d!1290212 () Bool)

(assert (= bs!634717 (and d!1290212 start!422504)))

(declare-fun lambda!141492 () Int)

(assert (=> bs!634717 (not (= lambda!141492 lambda!141477))))

(assert (=> d!1290212 true))

(assert (=> d!1290212 (= (allKeysSameHashInMap!609 lm!1707 hashF!1247) (forall!9150 (toList!2993 lm!1707) lambda!141492))))

(declare-fun bs!634718 () Bool)

(assert (= bs!634718 d!1290212))

(declare-fun m!4979565 () Bool)

(assert (=> bs!634718 m!4979565))

(assert (=> b!4361004 d!1290212))

(declare-fun d!1290220 () Bool)

(declare-fun get!15913 (Option!10488) List!49097)

(assert (=> d!1290220 (= (apply!11357 lm!1707 hash!377) (get!15913 (getValueByKey!474 (toList!2993 lm!1707) hash!377)))))

(declare-fun bs!634719 () Bool)

(assert (= bs!634719 d!1290220))

(assert (=> bs!634719 m!4979519))

(assert (=> bs!634719 m!4979519))

(declare-fun m!4979567 () Bool)

(assert (=> bs!634719 m!4979567))

(assert (=> b!4361015 d!1290220))

(declare-fun b!4361161 () Bool)

(declare-fun e!2714146 () List!49097)

(declare-fun e!2714147 () List!49097)

(assert (=> b!4361161 (= e!2714146 e!2714147)))

(declare-fun c!741563 () Bool)

(assert (=> b!4361161 (= c!741563 ((_ is Cons!48973) lt!1573423))))

(declare-fun b!4361163 () Bool)

(assert (=> b!4361163 (= e!2714147 Nil!48973)))

(declare-fun b!4361162 () Bool)

(assert (=> b!4361162 (= e!2714147 (Cons!48973 (h!54534 lt!1573423) (removePairForKey!475 (t!356017 lt!1573423) key!3918)))))

(declare-fun d!1290222 () Bool)

(declare-fun lt!1573518 () List!49097)

(assert (=> d!1290222 (not (containsKey!726 lt!1573518 key!3918))))

(assert (=> d!1290222 (= lt!1573518 e!2714146)))

(declare-fun c!741564 () Bool)

(assert (=> d!1290222 (= c!741564 (and ((_ is Cons!48973) lt!1573423) (= (_1!27489 (h!54534 lt!1573423)) key!3918)))))

(assert (=> d!1290222 (noDuplicateKeys!505 lt!1573423)))

(assert (=> d!1290222 (= (removePairForKey!475 lt!1573423 key!3918) lt!1573518)))

(declare-fun b!4361160 () Bool)

(assert (=> b!4361160 (= e!2714146 (t!356017 lt!1573423))))

(assert (= (and d!1290222 c!741564) b!4361160))

(assert (= (and d!1290222 (not c!741564)) b!4361161))

(assert (= (and b!4361161 c!741563) b!4361162))

(assert (= (and b!4361161 (not c!741563)) b!4361163))

(declare-fun m!4979575 () Bool)

(assert (=> b!4361162 m!4979575))

(declare-fun m!4979577 () Bool)

(assert (=> d!1290222 m!4979577))

(declare-fun m!4979579 () Bool)

(assert (=> d!1290222 m!4979579))

(assert (=> b!4361015 d!1290222))

(declare-fun d!1290228 () Bool)

(assert (=> d!1290228 (contains!11205 (toList!2993 lm!1707) (tuple2!48393 hash!377 lt!1573423))))

(declare-fun lt!1573521 () Unit!72383)

(declare-fun choose!27021 (List!49098 (_ BitVec 64) List!49097) Unit!72383)

(assert (=> d!1290228 (= lt!1573521 (choose!27021 (toList!2993 lm!1707) hash!377 lt!1573423))))

(declare-fun e!2714150 () Bool)

(assert (=> d!1290228 e!2714150))

(declare-fun res!1793096 () Bool)

(assert (=> d!1290228 (=> (not res!1793096) (not e!2714150))))

(assert (=> d!1290228 (= res!1793096 (isStrictlySorted!114 (toList!2993 lm!1707)))))

(assert (=> d!1290228 (= (lemmaGetValueByKeyImpliesContainsTuple!352 (toList!2993 lm!1707) hash!377 lt!1573423) lt!1573521)))

(declare-fun b!4361166 () Bool)

(assert (=> b!4361166 (= e!2714150 (= (getValueByKey!474 (toList!2993 lm!1707) hash!377) (Some!10487 lt!1573423)))))

(assert (= (and d!1290228 res!1793096) b!4361166))

(declare-fun m!4979581 () Bool)

(assert (=> d!1290228 m!4979581))

(declare-fun m!4979583 () Bool)

(assert (=> d!1290228 m!4979583))

(assert (=> d!1290228 m!4979551))

(assert (=> b!4361166 m!4979519))

(assert (=> b!4361015 d!1290228))

(declare-fun d!1290230 () Bool)

(declare-fun lt!1573524 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7744 (List!49098) (InoxSet tuple2!48392))

(assert (=> d!1290230 (= lt!1573524 (select (content!7744 (toList!2993 lm!1707)) lt!1573433))))

(declare-fun e!2714156 () Bool)

(assert (=> d!1290230 (= lt!1573524 e!2714156)))

(declare-fun res!1793102 () Bool)

(assert (=> d!1290230 (=> (not res!1793102) (not e!2714156))))

(assert (=> d!1290230 (= res!1793102 ((_ is Cons!48974) (toList!2993 lm!1707)))))

(assert (=> d!1290230 (= (contains!11205 (toList!2993 lm!1707) lt!1573433) lt!1573524)))

(declare-fun b!4361171 () Bool)

(declare-fun e!2714155 () Bool)

(assert (=> b!4361171 (= e!2714156 e!2714155)))

(declare-fun res!1793101 () Bool)

(assert (=> b!4361171 (=> res!1793101 e!2714155)))

(assert (=> b!4361171 (= res!1793101 (= (h!54535 (toList!2993 lm!1707)) lt!1573433))))

(declare-fun b!4361172 () Bool)

(assert (=> b!4361172 (= e!2714155 (contains!11205 (t!356018 (toList!2993 lm!1707)) lt!1573433))))

(assert (= (and d!1290230 res!1793102) b!4361171))

(assert (= (and b!4361171 (not res!1793101)) b!4361172))

(declare-fun m!4979585 () Bool)

(assert (=> d!1290230 m!4979585))

(declare-fun m!4979587 () Bool)

(assert (=> d!1290230 m!4979587))

(declare-fun m!4979589 () Bool)

(assert (=> b!4361172 m!4979589))

(assert (=> b!4361015 d!1290230))

(declare-fun d!1290232 () Bool)

(assert (=> d!1290232 (dynLambda!20649 lambda!141477 lt!1573433)))

(declare-fun lt!1573527 () Unit!72383)

(declare-fun choose!27022 (List!49098 Int tuple2!48392) Unit!72383)

(assert (=> d!1290232 (= lt!1573527 (choose!27022 (toList!2993 lm!1707) lambda!141477 lt!1573433))))

(declare-fun e!2714159 () Bool)

(assert (=> d!1290232 e!2714159))

(declare-fun res!1793105 () Bool)

(assert (=> d!1290232 (=> (not res!1793105) (not e!2714159))))

(assert (=> d!1290232 (= res!1793105 (forall!9150 (toList!2993 lm!1707) lambda!141477))))

(assert (=> d!1290232 (= (forallContained!1791 (toList!2993 lm!1707) lambda!141477 lt!1573433) lt!1573527)))

(declare-fun b!4361175 () Bool)

(assert (=> b!4361175 (= e!2714159 (contains!11205 (toList!2993 lm!1707) lt!1573433))))

(assert (= (and d!1290232 res!1793105) b!4361175))

(declare-fun b_lambda!131845 () Bool)

(assert (=> (not b_lambda!131845) (not d!1290232)))

(declare-fun m!4979591 () Bool)

(assert (=> d!1290232 m!4979591))

(declare-fun m!4979593 () Bool)

(assert (=> d!1290232 m!4979593))

(assert (=> d!1290232 m!4979423))

(assert (=> b!4361175 m!4979357))

(assert (=> b!4361015 d!1290232))

(declare-fun b!4361194 () Bool)

(declare-fun e!2714177 () Bool)

(declare-datatypes ((List!49100 0))(
  ( (Nil!48976) (Cons!48976 (h!54539 K!10330) (t!356020 List!49100)) )
))
(declare-fun contains!11208 (List!49100 K!10330) Bool)

(declare-fun keys!16554 (ListMap!2237) List!49100)

(assert (=> b!4361194 (= e!2714177 (not (contains!11208 (keys!16554 lt!1573417) key!3918)))))

(declare-fun b!4361195 () Bool)

(declare-fun e!2714172 () List!49100)

(assert (=> b!4361195 (= e!2714172 (keys!16554 lt!1573417))))

(declare-fun b!4361197 () Bool)

(declare-fun e!2714176 () Bool)

(assert (=> b!4361197 (= e!2714176 (contains!11208 (keys!16554 lt!1573417) key!3918))))

(declare-fun b!4361198 () Bool)

(declare-fun e!2714173 () Bool)

(assert (=> b!4361198 (= e!2714173 e!2714176)))

(declare-fun res!1793114 () Bool)

(assert (=> b!4361198 (=> (not res!1793114) (not e!2714176))))

(declare-datatypes ((Option!10489 0))(
  ( (None!10488) (Some!10488 (v!43396 V!10576)) )
))
(declare-fun isDefined!7783 (Option!10489) Bool)

(declare-fun getValueByKey!475 (List!49097 K!10330) Option!10489)

(assert (=> b!4361198 (= res!1793114 (isDefined!7783 (getValueByKey!475 (toList!2994 lt!1573417) key!3918)))))

(declare-fun b!4361199 () Bool)

(declare-fun getKeysList!136 (List!49097) List!49100)

(assert (=> b!4361199 (= e!2714172 (getKeysList!136 (toList!2994 lt!1573417)))))

(declare-fun b!4361200 () Bool)

(declare-fun e!2714174 () Unit!72383)

(declare-fun e!2714175 () Unit!72383)

(assert (=> b!4361200 (= e!2714174 e!2714175)))

(declare-fun c!741572 () Bool)

(declare-fun call!303147 () Bool)

(assert (=> b!4361200 (= c!741572 call!303147)))

(declare-fun b!4361201 () Bool)

(declare-fun lt!1573544 () Unit!72383)

(assert (=> b!4361201 (= e!2714174 lt!1573544)))

(declare-fun lt!1573545 () Unit!72383)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!386 (List!49097 K!10330) Unit!72383)

(assert (=> b!4361201 (= lt!1573545 (lemmaContainsKeyImpliesGetValueByKeyDefined!386 (toList!2994 lt!1573417) key!3918))))

(assert (=> b!4361201 (isDefined!7783 (getValueByKey!475 (toList!2994 lt!1573417) key!3918))))

(declare-fun lt!1573550 () Unit!72383)

(assert (=> b!4361201 (= lt!1573550 lt!1573545)))

(declare-fun lemmaInListThenGetKeysListContains!133 (List!49097 K!10330) Unit!72383)

(assert (=> b!4361201 (= lt!1573544 (lemmaInListThenGetKeysListContains!133 (toList!2994 lt!1573417) key!3918))))

(assert (=> b!4361201 call!303147))

(declare-fun b!4361202 () Bool)

(declare-fun Unit!72400 () Unit!72383)

(assert (=> b!4361202 (= e!2714175 Unit!72400)))

(declare-fun bm!303142 () Bool)

(assert (=> bm!303142 (= call!303147 (contains!11208 e!2714172 key!3918))))

(declare-fun c!741571 () Bool)

(declare-fun c!741573 () Bool)

(assert (=> bm!303142 (= c!741571 c!741573)))

(declare-fun b!4361196 () Bool)

(assert (=> b!4361196 false))

(declare-fun lt!1573548 () Unit!72383)

(declare-fun lt!1573549 () Unit!72383)

(assert (=> b!4361196 (= lt!1573548 lt!1573549)))

(declare-fun containsKey!730 (List!49097 K!10330) Bool)

(assert (=> b!4361196 (containsKey!730 (toList!2994 lt!1573417) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!134 (List!49097 K!10330) Unit!72383)

(assert (=> b!4361196 (= lt!1573549 (lemmaInGetKeysListThenContainsKey!134 (toList!2994 lt!1573417) key!3918))))

(declare-fun Unit!72401 () Unit!72383)

(assert (=> b!4361196 (= e!2714175 Unit!72401)))

(declare-fun d!1290234 () Bool)

(assert (=> d!1290234 e!2714173))

(declare-fun res!1793112 () Bool)

(assert (=> d!1290234 (=> res!1793112 e!2714173)))

(assert (=> d!1290234 (= res!1793112 e!2714177)))

(declare-fun res!1793113 () Bool)

(assert (=> d!1290234 (=> (not res!1793113) (not e!2714177))))

(declare-fun lt!1573547 () Bool)

(assert (=> d!1290234 (= res!1793113 (not lt!1573547))))

(declare-fun lt!1573551 () Bool)

(assert (=> d!1290234 (= lt!1573547 lt!1573551)))

(declare-fun lt!1573546 () Unit!72383)

(assert (=> d!1290234 (= lt!1573546 e!2714174)))

(assert (=> d!1290234 (= c!741573 lt!1573551)))

(assert (=> d!1290234 (= lt!1573551 (containsKey!730 (toList!2994 lt!1573417) key!3918))))

(assert (=> d!1290234 (= (contains!11203 lt!1573417 key!3918) lt!1573547)))

(assert (= (and d!1290234 c!741573) b!4361201))

(assert (= (and d!1290234 (not c!741573)) b!4361200))

(assert (= (and b!4361200 c!741572) b!4361196))

(assert (= (and b!4361200 (not c!741572)) b!4361202))

(assert (= (or b!4361201 b!4361200) bm!303142))

(assert (= (and bm!303142 c!741571) b!4361199))

(assert (= (and bm!303142 (not c!741571)) b!4361195))

(assert (= (and d!1290234 res!1793113) b!4361194))

(assert (= (and d!1290234 (not res!1793112)) b!4361198))

(assert (= (and b!4361198 res!1793114) b!4361197))

(declare-fun m!4979595 () Bool)

(assert (=> b!4361196 m!4979595))

(declare-fun m!4979597 () Bool)

(assert (=> b!4361196 m!4979597))

(assert (=> d!1290234 m!4979595))

(declare-fun m!4979599 () Bool)

(assert (=> bm!303142 m!4979599))

(declare-fun m!4979601 () Bool)

(assert (=> b!4361201 m!4979601))

(declare-fun m!4979603 () Bool)

(assert (=> b!4361201 m!4979603))

(assert (=> b!4361201 m!4979603))

(declare-fun m!4979605 () Bool)

(assert (=> b!4361201 m!4979605))

(declare-fun m!4979607 () Bool)

(assert (=> b!4361201 m!4979607))

(declare-fun m!4979609 () Bool)

(assert (=> b!4361195 m!4979609))

(assert (=> b!4361197 m!4979609))

(assert (=> b!4361197 m!4979609))

(declare-fun m!4979611 () Bool)

(assert (=> b!4361197 m!4979611))

(declare-fun m!4979613 () Bool)

(assert (=> b!4361199 m!4979613))

(assert (=> b!4361194 m!4979609))

(assert (=> b!4361194 m!4979609))

(assert (=> b!4361194 m!4979611))

(assert (=> b!4361198 m!4979603))

(assert (=> b!4361198 m!4979603))

(assert (=> b!4361198 m!4979605))

(assert (=> b!4361005 d!1290234))

(declare-fun bs!634722 () Bool)

(declare-fun d!1290236 () Bool)

(assert (= bs!634722 (and d!1290236 start!422504)))

(declare-fun lambda!141523 () Int)

(assert (=> bs!634722 (= lambda!141523 lambda!141477)))

(declare-fun bs!634723 () Bool)

(assert (= bs!634723 (and d!1290236 d!1290212)))

(assert (=> bs!634723 (not (= lambda!141523 lambda!141492))))

(declare-fun lt!1573596 () ListMap!2237)

(declare-fun invariantList!688 (List!49097) Bool)

(assert (=> d!1290236 (invariantList!688 (toList!2994 lt!1573596))))

(declare-fun e!2714186 () ListMap!2237)

(assert (=> d!1290236 (= lt!1573596 e!2714186)))

(declare-fun c!741578 () Bool)

(assert (=> d!1290236 (= c!741578 ((_ is Cons!48974) (toList!2993 lm!1707)))))

(assert (=> d!1290236 (forall!9150 (toList!2993 lm!1707) lambda!141523)))

(assert (=> d!1290236 (= (extractMap!564 (toList!2993 lm!1707)) lt!1573596)))

(declare-fun b!4361215 () Bool)

(assert (=> b!4361215 (= e!2714186 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) (extractMap!564 (t!356018 (toList!2993 lm!1707)))))))

(declare-fun b!4361216 () Bool)

(assert (=> b!4361216 (= e!2714186 (ListMap!2238 Nil!48973))))

(assert (= (and d!1290236 c!741578) b!4361215))

(assert (= (and d!1290236 (not c!741578)) b!4361216))

(declare-fun m!4979615 () Bool)

(assert (=> d!1290236 m!4979615))

(declare-fun m!4979617 () Bool)

(assert (=> d!1290236 m!4979617))

(assert (=> b!4361215 m!4979403))

(assert (=> b!4361215 m!4979403))

(declare-fun m!4979619 () Bool)

(assert (=> b!4361215 m!4979619))

(assert (=> b!4361005 d!1290236))

(declare-fun d!1290238 () Bool)

(declare-fun res!1793121 () Bool)

(declare-fun e!2714187 () Bool)

(assert (=> d!1290238 (=> res!1793121 e!2714187)))

(assert (=> d!1290238 (= res!1793121 (not ((_ is Cons!48973) (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(assert (=> d!1290238 (= (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lm!1707)))) e!2714187)))

(declare-fun b!4361219 () Bool)

(declare-fun e!2714188 () Bool)

(assert (=> b!4361219 (= e!2714187 e!2714188)))

(declare-fun res!1793122 () Bool)

(assert (=> b!4361219 (=> (not res!1793122) (not e!2714188))))

(assert (=> b!4361219 (= res!1793122 (not (containsKey!726 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707)))) (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))))

(declare-fun b!4361220 () Bool)

(assert (=> b!4361220 (= e!2714188 (noDuplicateKeys!505 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(assert (= (and d!1290238 (not res!1793121)) b!4361219))

(assert (= (and b!4361219 res!1793122) b!4361220))

(declare-fun m!4979621 () Bool)

(assert (=> b!4361219 m!4979621))

(declare-fun m!4979623 () Bool)

(assert (=> b!4361220 m!4979623))

(assert (=> b!4361016 d!1290238))

(declare-fun d!1290240 () Bool)

(declare-fun res!1793127 () Bool)

(declare-fun e!2714193 () Bool)

(assert (=> d!1290240 (=> res!1793127 e!2714193)))

(assert (=> d!1290240 (= res!1793127 (and ((_ is Cons!48973) (_2!27490 (h!54535 (toList!2993 lm!1707)))) (= (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))) key!3918)))))

(assert (=> d!1290240 (= (containsKey!726 (_2!27490 (h!54535 (toList!2993 lm!1707))) key!3918) e!2714193)))

(declare-fun b!4361225 () Bool)

(declare-fun e!2714194 () Bool)

(assert (=> b!4361225 (= e!2714193 e!2714194)))

(declare-fun res!1793128 () Bool)

(assert (=> b!4361225 (=> (not res!1793128) (not e!2714194))))

(assert (=> b!4361225 (= res!1793128 ((_ is Cons!48973) (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(declare-fun b!4361226 () Bool)

(assert (=> b!4361226 (= e!2714194 (containsKey!726 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707)))) key!3918))))

(assert (= (and d!1290240 (not res!1793127)) b!4361225))

(assert (= (and b!4361225 res!1793128) b!4361226))

(declare-fun m!4979625 () Bool)

(assert (=> b!4361226 m!4979625))

(assert (=> b!4361006 d!1290240))

(declare-fun d!1290242 () Bool)

(declare-fun head!9076 (List!49098) tuple2!48392)

(assert (=> d!1290242 (= (head!9074 lm!1707) (head!9076 (toList!2993 lm!1707)))))

(declare-fun bs!634727 () Bool)

(assert (= bs!634727 d!1290242))

(declare-fun m!4979627 () Bool)

(assert (=> bs!634727 m!4979627))

(assert (=> b!4361012 d!1290242))

(declare-fun d!1290244 () Bool)

(declare-fun hash!1617 (Hashable!4897 K!10330) (_ BitVec 64))

(assert (=> d!1290244 (= (hash!1611 hashF!1247 key!3918) (hash!1617 hashF!1247 key!3918))))

(declare-fun bs!634728 () Bool)

(assert (= bs!634728 d!1290244))

(declare-fun m!4979629 () Bool)

(assert (=> bs!634728 m!4979629))

(assert (=> b!4361013 d!1290244))

(declare-fun d!1290246 () Bool)

(declare-fun res!1793132 () Bool)

(declare-fun e!2714198 () Bool)

(assert (=> d!1290246 (=> res!1793132 e!2714198)))

(assert (=> d!1290246 (= res!1793132 ((_ is Nil!48974) (toList!2993 lt!1573431)))))

(assert (=> d!1290246 (= (forall!9150 (toList!2993 lt!1573431) lambda!141477) e!2714198)))

(declare-fun b!4361234 () Bool)

(declare-fun e!2714199 () Bool)

(assert (=> b!4361234 (= e!2714198 e!2714199)))

(declare-fun res!1793133 () Bool)

(assert (=> b!4361234 (=> (not res!1793133) (not e!2714199))))

(assert (=> b!4361234 (= res!1793133 (dynLambda!20649 lambda!141477 (h!54535 (toList!2993 lt!1573431))))))

(declare-fun b!4361235 () Bool)

(assert (=> b!4361235 (= e!2714199 (forall!9150 (t!356018 (toList!2993 lt!1573431)) lambda!141477))))

(assert (= (and d!1290246 (not res!1793132)) b!4361234))

(assert (= (and b!4361234 res!1793133) b!4361235))

(declare-fun b_lambda!131847 () Bool)

(assert (=> (not b_lambda!131847) (not b!4361234)))

(declare-fun m!4979631 () Bool)

(assert (=> b!4361234 m!4979631))

(declare-fun m!4979633 () Bool)

(assert (=> b!4361235 m!4979633))

(assert (=> b!4361009 d!1290246))

(assert (=> b!4361010 d!1290246))

(declare-fun d!1290248 () Bool)

(declare-fun e!2714202 () Bool)

(assert (=> d!1290248 e!2714202))

(declare-fun res!1793138 () Bool)

(assert (=> d!1290248 (=> (not res!1793138) (not e!2714202))))

(declare-fun lt!1573628 () ListLongMap!1643)

(assert (=> d!1290248 (= res!1793138 (contains!11204 lt!1573628 (_1!27490 lt!1573430)))))

(declare-fun lt!1573629 () List!49098)

(assert (=> d!1290248 (= lt!1573628 (ListLongMap!1644 lt!1573629))))

(declare-fun lt!1573627 () Unit!72383)

(declare-fun lt!1573626 () Unit!72383)

(assert (=> d!1290248 (= lt!1573627 lt!1573626)))

(assert (=> d!1290248 (= (getValueByKey!474 lt!1573629 (_1!27490 lt!1573430)) (Some!10487 (_2!27490 lt!1573430)))))

(declare-fun lemmaContainsTupThenGetReturnValue!248 (List!49098 (_ BitVec 64) List!49097) Unit!72383)

(assert (=> d!1290248 (= lt!1573626 (lemmaContainsTupThenGetReturnValue!248 lt!1573629 (_1!27490 lt!1573430) (_2!27490 lt!1573430)))))

(declare-fun insertStrictlySorted!145 (List!49098 (_ BitVec 64) List!49097) List!49098)

(assert (=> d!1290248 (= lt!1573629 (insertStrictlySorted!145 (toList!2993 lm!1707) (_1!27490 lt!1573430) (_2!27490 lt!1573430)))))

(assert (=> d!1290248 (= (+!667 lm!1707 lt!1573430) lt!1573628)))

(declare-fun b!4361240 () Bool)

(declare-fun res!1793139 () Bool)

(assert (=> b!4361240 (=> (not res!1793139) (not e!2714202))))

(assert (=> b!4361240 (= res!1793139 (= (getValueByKey!474 (toList!2993 lt!1573628) (_1!27490 lt!1573430)) (Some!10487 (_2!27490 lt!1573430))))))

(declare-fun b!4361241 () Bool)

(assert (=> b!4361241 (= e!2714202 (contains!11205 (toList!2993 lt!1573628) lt!1573430))))

(assert (= (and d!1290248 res!1793138) b!4361240))

(assert (= (and b!4361240 res!1793139) b!4361241))

(declare-fun m!4979673 () Bool)

(assert (=> d!1290248 m!4979673))

(declare-fun m!4979675 () Bool)

(assert (=> d!1290248 m!4979675))

(declare-fun m!4979677 () Bool)

(assert (=> d!1290248 m!4979677))

(declare-fun m!4979679 () Bool)

(assert (=> d!1290248 m!4979679))

(declare-fun m!4979681 () Bool)

(assert (=> b!4361240 m!4979681))

(declare-fun m!4979683 () Bool)

(assert (=> b!4361241 m!4979683))

(assert (=> b!4361010 d!1290248))

(declare-fun d!1290254 () Bool)

(assert (=> d!1290254 (forall!9150 (toList!2993 (+!667 lm!1707 (tuple2!48393 hash!377 newBucket!200))) lambda!141477)))

(declare-fun lt!1573635 () Unit!72383)

(declare-fun choose!27023 (ListLongMap!1643 Int (_ BitVec 64) List!49097) Unit!72383)

(assert (=> d!1290254 (= lt!1573635 (choose!27023 lm!1707 lambda!141477 hash!377 newBucket!200))))

(declare-fun e!2714205 () Bool)

(assert (=> d!1290254 e!2714205))

(declare-fun res!1793142 () Bool)

(assert (=> d!1290254 (=> (not res!1793142) (not e!2714205))))

(assert (=> d!1290254 (= res!1793142 (forall!9150 (toList!2993 lm!1707) lambda!141477))))

(assert (=> d!1290254 (= (addValidProp!159 lm!1707 lambda!141477 hash!377 newBucket!200) lt!1573635)))

(declare-fun b!4361245 () Bool)

(assert (=> b!4361245 (= e!2714205 (dynLambda!20649 lambda!141477 (tuple2!48393 hash!377 newBucket!200)))))

(assert (= (and d!1290254 res!1793142) b!4361245))

(declare-fun b_lambda!131849 () Bool)

(assert (=> (not b_lambda!131849) (not b!4361245)))

(declare-fun m!4979697 () Bool)

(assert (=> d!1290254 m!4979697))

(declare-fun m!4979699 () Bool)

(assert (=> d!1290254 m!4979699))

(declare-fun m!4979701 () Bool)

(assert (=> d!1290254 m!4979701))

(assert (=> d!1290254 m!4979423))

(declare-fun m!4979703 () Bool)

(assert (=> b!4361245 m!4979703))

(assert (=> b!4361010 d!1290254))

(assert (=> b!4361010 d!1290202))

(declare-fun d!1290258 () Bool)

(declare-fun content!7745 (List!49097) (InoxSet tuple2!48390))

(assert (=> d!1290258 (= (eq!275 lt!1573422 lt!1573417) (= (content!7745 (toList!2994 lt!1573422)) (content!7745 (toList!2994 lt!1573417))))))

(declare-fun bs!634737 () Bool)

(assert (= bs!634737 d!1290258))

(declare-fun m!4979705 () Bool)

(assert (=> bs!634737 m!4979705))

(declare-fun m!4979707 () Bool)

(assert (=> bs!634737 m!4979707))

(assert (=> b!4361011 d!1290258))

(declare-fun d!1290260 () Bool)

(assert (=> d!1290260 (= (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707)))) (get!15913 (getValueByKey!474 (toList!2993 lm!1707) (_1!27490 (h!54535 (toList!2993 lm!1707))))))))

(declare-fun bs!634738 () Bool)

(assert (= bs!634738 d!1290260))

(declare-fun m!4979709 () Bool)

(assert (=> bs!634738 m!4979709))

(assert (=> bs!634738 m!4979709))

(declare-fun m!4979711 () Bool)

(assert (=> bs!634738 m!4979711))

(assert (=> b!4361011 d!1290260))

(declare-fun b!4361246 () Bool)

(declare-fun e!2714211 () Bool)

(assert (=> b!4361246 (= e!2714211 (not (contains!11208 (keys!16554 lt!1573428) key!3918)))))

(declare-fun b!4361247 () Bool)

(declare-fun e!2714206 () List!49100)

(assert (=> b!4361247 (= e!2714206 (keys!16554 lt!1573428))))

(declare-fun b!4361249 () Bool)

(declare-fun e!2714210 () Bool)

(assert (=> b!4361249 (= e!2714210 (contains!11208 (keys!16554 lt!1573428) key!3918))))

(declare-fun b!4361250 () Bool)

(declare-fun e!2714207 () Bool)

(assert (=> b!4361250 (= e!2714207 e!2714210)))

(declare-fun res!1793145 () Bool)

(assert (=> b!4361250 (=> (not res!1793145) (not e!2714210))))

(assert (=> b!4361250 (= res!1793145 (isDefined!7783 (getValueByKey!475 (toList!2994 lt!1573428) key!3918)))))

(declare-fun b!4361251 () Bool)

(assert (=> b!4361251 (= e!2714206 (getKeysList!136 (toList!2994 lt!1573428)))))

(declare-fun b!4361252 () Bool)

(declare-fun e!2714208 () Unit!72383)

(declare-fun e!2714209 () Unit!72383)

(assert (=> b!4361252 (= e!2714208 e!2714209)))

(declare-fun c!741581 () Bool)

(declare-fun call!303157 () Bool)

(assert (=> b!4361252 (= c!741581 call!303157)))

(declare-fun b!4361253 () Bool)

(declare-fun lt!1573636 () Unit!72383)

(assert (=> b!4361253 (= e!2714208 lt!1573636)))

(declare-fun lt!1573637 () Unit!72383)

(assert (=> b!4361253 (= lt!1573637 (lemmaContainsKeyImpliesGetValueByKeyDefined!386 (toList!2994 lt!1573428) key!3918))))

(assert (=> b!4361253 (isDefined!7783 (getValueByKey!475 (toList!2994 lt!1573428) key!3918))))

(declare-fun lt!1573642 () Unit!72383)

(assert (=> b!4361253 (= lt!1573642 lt!1573637)))

(assert (=> b!4361253 (= lt!1573636 (lemmaInListThenGetKeysListContains!133 (toList!2994 lt!1573428) key!3918))))

(assert (=> b!4361253 call!303157))

(declare-fun b!4361254 () Bool)

(declare-fun Unit!72415 () Unit!72383)

(assert (=> b!4361254 (= e!2714209 Unit!72415)))

(declare-fun bm!303152 () Bool)

(assert (=> bm!303152 (= call!303157 (contains!11208 e!2714206 key!3918))))

(declare-fun c!741580 () Bool)

(declare-fun c!741582 () Bool)

(assert (=> bm!303152 (= c!741580 c!741582)))

(declare-fun b!4361248 () Bool)

(assert (=> b!4361248 false))

(declare-fun lt!1573640 () Unit!72383)

(declare-fun lt!1573641 () Unit!72383)

(assert (=> b!4361248 (= lt!1573640 lt!1573641)))

(assert (=> b!4361248 (containsKey!730 (toList!2994 lt!1573428) key!3918)))

(assert (=> b!4361248 (= lt!1573641 (lemmaInGetKeysListThenContainsKey!134 (toList!2994 lt!1573428) key!3918))))

(declare-fun Unit!72416 () Unit!72383)

(assert (=> b!4361248 (= e!2714209 Unit!72416)))

(declare-fun d!1290262 () Bool)

(assert (=> d!1290262 e!2714207))

(declare-fun res!1793143 () Bool)

(assert (=> d!1290262 (=> res!1793143 e!2714207)))

(assert (=> d!1290262 (= res!1793143 e!2714211)))

(declare-fun res!1793144 () Bool)

(assert (=> d!1290262 (=> (not res!1793144) (not e!2714211))))

(declare-fun lt!1573639 () Bool)

(assert (=> d!1290262 (= res!1793144 (not lt!1573639))))

(declare-fun lt!1573643 () Bool)

(assert (=> d!1290262 (= lt!1573639 lt!1573643)))

(declare-fun lt!1573638 () Unit!72383)

(assert (=> d!1290262 (= lt!1573638 e!2714208)))

(assert (=> d!1290262 (= c!741582 lt!1573643)))

(assert (=> d!1290262 (= lt!1573643 (containsKey!730 (toList!2994 lt!1573428) key!3918))))

(assert (=> d!1290262 (= (contains!11203 lt!1573428 key!3918) lt!1573639)))

(assert (= (and d!1290262 c!741582) b!4361253))

(assert (= (and d!1290262 (not c!741582)) b!4361252))

(assert (= (and b!4361252 c!741581) b!4361248))

(assert (= (and b!4361252 (not c!741581)) b!4361254))

(assert (= (or b!4361253 b!4361252) bm!303152))

(assert (= (and bm!303152 c!741580) b!4361251))

(assert (= (and bm!303152 (not c!741580)) b!4361247))

(assert (= (and d!1290262 res!1793144) b!4361246))

(assert (= (and d!1290262 (not res!1793143)) b!4361250))

(assert (= (and b!4361250 res!1793145) b!4361249))

(declare-fun m!4979713 () Bool)

(assert (=> b!4361248 m!4979713))

(declare-fun m!4979715 () Bool)

(assert (=> b!4361248 m!4979715))

(assert (=> d!1290262 m!4979713))

(declare-fun m!4979717 () Bool)

(assert (=> bm!303152 m!4979717))

(declare-fun m!4979719 () Bool)

(assert (=> b!4361253 m!4979719))

(declare-fun m!4979721 () Bool)

(assert (=> b!4361253 m!4979721))

(assert (=> b!4361253 m!4979721))

(declare-fun m!4979723 () Bool)

(assert (=> b!4361253 m!4979723))

(declare-fun m!4979725 () Bool)

(assert (=> b!4361253 m!4979725))

(declare-fun m!4979727 () Bool)

(assert (=> b!4361247 m!4979727))

(assert (=> b!4361249 m!4979727))

(assert (=> b!4361249 m!4979727))

(declare-fun m!4979729 () Bool)

(assert (=> b!4361249 m!4979729))

(declare-fun m!4979731 () Bool)

(assert (=> b!4361251 m!4979731))

(assert (=> b!4361246 m!4979727))

(assert (=> b!4361246 m!4979727))

(assert (=> b!4361246 m!4979729))

(assert (=> b!4361250 m!4979721))

(assert (=> b!4361250 m!4979721))

(assert (=> b!4361250 m!4979723))

(assert (=> b!4361011 d!1290262))

(declare-fun bs!634755 () Bool)

(declare-fun d!1290264 () Bool)

(assert (= bs!634755 (and d!1290264 start!422504)))

(declare-fun lambda!141538 () Int)

(assert (=> bs!634755 (= lambda!141538 lambda!141477)))

(declare-fun bs!634756 () Bool)

(assert (= bs!634756 (and d!1290264 d!1290212)))

(assert (=> bs!634756 (not (= lambda!141538 lambda!141492))))

(declare-fun bs!634757 () Bool)

(assert (= bs!634757 (and d!1290264 d!1290236)))

(assert (=> bs!634757 (= lambda!141538 lambda!141523)))

(assert (=> d!1290264 (eq!275 (extractMap!564 (toList!2993 (+!667 lt!1573418 (tuple2!48393 hash!377 newBucket!200)))) (+!668 (extractMap!564 (toList!2993 lt!1573418)) (tuple2!48391 key!3918 newValue!99)))))

(declare-fun lt!1573663 () Unit!72383)

(declare-fun choose!27024 (ListLongMap!1643 (_ BitVec 64) List!49097 K!10330 V!10576 Hashable!4897) Unit!72383)

(assert (=> d!1290264 (= lt!1573663 (choose!27024 lt!1573418 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1290264 (forall!9150 (toList!2993 lt!1573418) lambda!141538)))

(assert (=> d!1290264 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!109 lt!1573418 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1573663)))

(declare-fun bs!634758 () Bool)

(assert (= bs!634758 d!1290264))

(assert (=> bs!634758 m!4979409))

(declare-fun m!4979765 () Bool)

(assert (=> bs!634758 m!4979765))

(declare-fun m!4979767 () Bool)

(assert (=> bs!634758 m!4979767))

(assert (=> bs!634758 m!4979409))

(declare-fun m!4979769 () Bool)

(assert (=> bs!634758 m!4979769))

(declare-fun m!4979771 () Bool)

(assert (=> bs!634758 m!4979771))

(assert (=> bs!634758 m!4979765))

(declare-fun m!4979773 () Bool)

(assert (=> bs!634758 m!4979773))

(assert (=> bs!634758 m!4979771))

(declare-fun m!4979775 () Bool)

(assert (=> bs!634758 m!4979775))

(assert (=> b!4361011 d!1290264))

(declare-fun d!1290274 () Bool)

(assert (=> d!1290274 (eq!275 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) (+!668 lt!1573428 (tuple2!48391 key!3918 newValue!99))) (+!668 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573428) (tuple2!48391 key!3918 newValue!99)))))

(declare-fun lt!1573673 () Unit!72383)

(declare-fun choose!27025 (ListMap!2237 K!10330 V!10576 List!49097) Unit!72383)

(assert (=> d!1290274 (= lt!1573673 (choose!27025 lt!1573428 key!3918 newValue!99 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(assert (=> d!1290274 (not (containsKey!726 (_2!27490 (h!54535 (toList!2993 lm!1707))) key!3918))))

(assert (=> d!1290274 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!84 lt!1573428 key!3918 newValue!99 (_2!27490 (h!54535 (toList!2993 lm!1707)))) lt!1573673)))

(declare-fun bs!634761 () Bool)

(assert (= bs!634761 d!1290274))

(declare-fun m!4979803 () Bool)

(assert (=> bs!634761 m!4979803))

(assert (=> bs!634761 m!4979399))

(assert (=> bs!634761 m!4979377))

(declare-fun m!4979809 () Bool)

(assert (=> bs!634761 m!4979809))

(assert (=> bs!634761 m!4979803))

(declare-fun m!4979815 () Bool)

(assert (=> bs!634761 m!4979815))

(assert (=> bs!634761 m!4979399))

(declare-fun m!4979821 () Bool)

(assert (=> bs!634761 m!4979821))

(assert (=> bs!634761 m!4979815))

(assert (=> bs!634761 m!4979821))

(declare-fun m!4979823 () Bool)

(assert (=> bs!634761 m!4979823))

(assert (=> b!4361011 d!1290274))

(declare-fun bs!634764 () Bool)

(declare-fun d!1290284 () Bool)

(assert (= bs!634764 (and d!1290284 start!422504)))

(declare-fun lambda!141540 () Int)

(assert (=> bs!634764 (= lambda!141540 lambda!141477)))

(declare-fun bs!634766 () Bool)

(assert (= bs!634766 (and d!1290284 d!1290212)))

(assert (=> bs!634766 (not (= lambda!141540 lambda!141492))))

(declare-fun bs!634768 () Bool)

(assert (= bs!634768 (and d!1290284 d!1290236)))

(assert (=> bs!634768 (= lambda!141540 lambda!141523)))

(declare-fun bs!634770 () Bool)

(assert (= bs!634770 (and d!1290284 d!1290264)))

(assert (=> bs!634770 (= lambda!141540 lambda!141538)))

(declare-fun lt!1573679 () ListMap!2237)

(assert (=> d!1290284 (invariantList!688 (toList!2994 lt!1573679))))

(declare-fun e!2714220 () ListMap!2237)

(assert (=> d!1290284 (= lt!1573679 e!2714220)))

(declare-fun c!741586 () Bool)

(assert (=> d!1290284 (= c!741586 ((_ is Cons!48974) (toList!2993 lt!1573418)))))

(assert (=> d!1290284 (forall!9150 (toList!2993 lt!1573418) lambda!141540)))

(assert (=> d!1290284 (= (extractMap!564 (toList!2993 lt!1573418)) lt!1573679)))

(declare-fun b!4361271 () Bool)

(assert (=> b!4361271 (= e!2714220 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lt!1573418))) (extractMap!564 (t!356018 (toList!2993 lt!1573418)))))))

(declare-fun b!4361272 () Bool)

(assert (=> b!4361272 (= e!2714220 (ListMap!2238 Nil!48973))))

(assert (= (and d!1290284 c!741586) b!4361271))

(assert (= (and d!1290284 (not c!741586)) b!4361272))

(declare-fun m!4979825 () Bool)

(assert (=> d!1290284 m!4979825))

(declare-fun m!4979827 () Bool)

(assert (=> d!1290284 m!4979827))

(declare-fun m!4979829 () Bool)

(assert (=> b!4361271 m!4979829))

(assert (=> b!4361271 m!4979829))

(declare-fun m!4979833 () Bool)

(assert (=> b!4361271 m!4979833))

(assert (=> b!4361011 d!1290284))

(declare-fun bs!634793 () Bool)

(declare-fun b!4361320 () Bool)

(assert (= bs!634793 (and b!4361320 d!1290174)))

(declare-fun lambda!141573 () Int)

(assert (=> bs!634793 (not (= lambda!141573 lambda!141483))))

(assert (=> b!4361320 true))

(declare-fun bs!634794 () Bool)

(declare-fun b!4361317 () Bool)

(assert (= bs!634794 (and b!4361317 d!1290174)))

(declare-fun lambda!141574 () Int)

(assert (=> bs!634794 (not (= lambda!141574 lambda!141483))))

(declare-fun bs!634795 () Bool)

(assert (= bs!634795 (and b!4361317 b!4361320)))

(assert (=> bs!634795 (= lambda!141574 lambda!141573)))

(assert (=> b!4361317 true))

(declare-fun lambda!141575 () Int)

(assert (=> bs!634794 (not (= lambda!141575 lambda!141483))))

(declare-fun lt!1573766 () ListMap!2237)

(assert (=> bs!634795 (= (= lt!1573766 lt!1573427) (= lambda!141575 lambda!141573))))

(assert (=> b!4361317 (= (= lt!1573766 lt!1573427) (= lambda!141575 lambda!141574))))

(assert (=> b!4361317 true))

(declare-fun bs!634796 () Bool)

(declare-fun d!1290286 () Bool)

(assert (= bs!634796 (and d!1290286 d!1290174)))

(declare-fun lambda!141576 () Int)

(assert (=> bs!634796 (not (= lambda!141576 lambda!141483))))

(declare-fun bs!634797 () Bool)

(assert (= bs!634797 (and d!1290286 b!4361320)))

(declare-fun lt!1573774 () ListMap!2237)

(assert (=> bs!634797 (= (= lt!1573774 lt!1573427) (= lambda!141576 lambda!141573))))

(declare-fun bs!634798 () Bool)

(assert (= bs!634798 (and d!1290286 b!4361317)))

(assert (=> bs!634798 (= (= lt!1573774 lt!1573427) (= lambda!141576 lambda!141574))))

(assert (=> bs!634798 (= (= lt!1573774 lt!1573766) (= lambda!141576 lambda!141575))))

(assert (=> d!1290286 true))

(declare-fun b!4361316 () Bool)

(declare-fun res!1793172 () Bool)

(declare-fun e!2714249 () Bool)

(assert (=> b!4361316 (=> (not res!1793172) (not e!2714249))))

(assert (=> b!4361316 (= res!1793172 (forall!9152 (toList!2994 lt!1573427) lambda!141576))))

(declare-fun e!2714250 () ListMap!2237)

(assert (=> b!4361317 (= e!2714250 lt!1573766)))

(declare-fun lt!1573772 () ListMap!2237)

(assert (=> b!4361317 (= lt!1573772 (+!668 lt!1573427 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(assert (=> b!4361317 (= lt!1573766 (addToMapMapFromBucket!201 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707)))) (+!668 lt!1573427 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))))

(declare-fun lt!1573770 () Unit!72383)

(declare-fun call!303169 () Unit!72383)

(assert (=> b!4361317 (= lt!1573770 call!303169)))

(assert (=> b!4361317 (forall!9152 (toList!2994 lt!1573427) lambda!141574)))

(declare-fun lt!1573761 () Unit!72383)

(assert (=> b!4361317 (= lt!1573761 lt!1573770)))

(declare-fun call!303170 () Bool)

(assert (=> b!4361317 call!303170))

(declare-fun lt!1573771 () Unit!72383)

(declare-fun Unit!72419 () Unit!72383)

(assert (=> b!4361317 (= lt!1573771 Unit!72419)))

(assert (=> b!4361317 (forall!9152 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707)))) lambda!141575)))

(declare-fun lt!1573763 () Unit!72383)

(declare-fun Unit!72420 () Unit!72383)

(assert (=> b!4361317 (= lt!1573763 Unit!72420)))

(declare-fun lt!1573779 () Unit!72383)

(declare-fun Unit!72421 () Unit!72383)

(assert (=> b!4361317 (= lt!1573779 Unit!72421)))

(declare-fun lt!1573777 () Unit!72383)

(declare-fun forallContained!1793 (List!49097 Int tuple2!48390) Unit!72383)

(assert (=> b!4361317 (= lt!1573777 (forallContained!1793 (toList!2994 lt!1573772) lambda!141575 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(assert (=> b!4361317 (contains!11203 lt!1573772 (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(declare-fun lt!1573762 () Unit!72383)

(declare-fun Unit!72422 () Unit!72383)

(assert (=> b!4361317 (= lt!1573762 Unit!72422)))

(assert (=> b!4361317 (contains!11203 lt!1573766 (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(declare-fun lt!1573768 () Unit!72383)

(declare-fun Unit!72423 () Unit!72383)

(assert (=> b!4361317 (= lt!1573768 Unit!72423)))

(assert (=> b!4361317 (forall!9152 (_2!27490 (h!54535 (toList!2993 lm!1707))) lambda!141575)))

(declare-fun lt!1573769 () Unit!72383)

(declare-fun Unit!72424 () Unit!72383)

(assert (=> b!4361317 (= lt!1573769 Unit!72424)))

(declare-fun call!303171 () Bool)

(assert (=> b!4361317 call!303171))

(declare-fun lt!1573759 () Unit!72383)

(declare-fun Unit!72425 () Unit!72383)

(assert (=> b!4361317 (= lt!1573759 Unit!72425)))

(declare-fun lt!1573776 () Unit!72383)

(declare-fun Unit!72426 () Unit!72383)

(assert (=> b!4361317 (= lt!1573776 Unit!72426)))

(declare-fun lt!1573778 () Unit!72383)

(declare-fun addForallContainsKeyThenBeforeAdding!71 (ListMap!2237 ListMap!2237 K!10330 V!10576) Unit!72383)

(assert (=> b!4361317 (= lt!1573778 (addForallContainsKeyThenBeforeAdding!71 lt!1573427 lt!1573766 (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))) (_2!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))))

(assert (=> b!4361317 (forall!9152 (toList!2994 lt!1573427) lambda!141575)))

(declare-fun lt!1573760 () Unit!72383)

(assert (=> b!4361317 (= lt!1573760 lt!1573778)))

(assert (=> b!4361317 (forall!9152 (toList!2994 lt!1573427) lambda!141575)))

(declare-fun lt!1573765 () Unit!72383)

(declare-fun Unit!72427 () Unit!72383)

(assert (=> b!4361317 (= lt!1573765 Unit!72427)))

(declare-fun res!1793173 () Bool)

(assert (=> b!4361317 (= res!1793173 (forall!9152 (_2!27490 (h!54535 (toList!2993 lm!1707))) lambda!141575))))

(declare-fun e!2714248 () Bool)

(assert (=> b!4361317 (=> (not res!1793173) (not e!2714248))))

(assert (=> b!4361317 e!2714248))

(declare-fun lt!1573773 () Unit!72383)

(declare-fun Unit!72428 () Unit!72383)

(assert (=> b!4361317 (= lt!1573773 Unit!72428)))

(declare-fun b!4361318 () Bool)

(assert (=> b!4361318 (= e!2714249 (invariantList!688 (toList!2994 lt!1573774)))))

(declare-fun bm!303164 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!71 (ListMap!2237) Unit!72383)

(assert (=> bm!303164 (= call!303169 (lemmaContainsAllItsOwnKeys!71 lt!1573427))))

(declare-fun b!4361319 () Bool)

(assert (=> b!4361319 (= e!2714248 (forall!9152 (toList!2994 lt!1573427) lambda!141575))))

(assert (=> b!4361320 (= e!2714250 lt!1573427)))

(declare-fun lt!1573775 () Unit!72383)

(assert (=> b!4361320 (= lt!1573775 call!303169)))

(assert (=> b!4361320 call!303171))

(declare-fun lt!1573767 () Unit!72383)

(assert (=> b!4361320 (= lt!1573767 lt!1573775)))

(assert (=> b!4361320 call!303170))

(declare-fun lt!1573764 () Unit!72383)

(declare-fun Unit!72429 () Unit!72383)

(assert (=> b!4361320 (= lt!1573764 Unit!72429)))

(declare-fun bm!303166 () Bool)

(declare-fun c!741596 () Bool)

(assert (=> bm!303166 (= call!303170 (forall!9152 (ite c!741596 (toList!2994 lt!1573427) (toList!2994 lt!1573772)) (ite c!741596 lambda!141573 lambda!141575)))))

(assert (=> d!1290286 e!2714249))

(declare-fun res!1793171 () Bool)

(assert (=> d!1290286 (=> (not res!1793171) (not e!2714249))))

(assert (=> d!1290286 (= res!1793171 (forall!9152 (_2!27490 (h!54535 (toList!2993 lm!1707))) lambda!141576))))

(assert (=> d!1290286 (= lt!1573774 e!2714250)))

(assert (=> d!1290286 (= c!741596 ((_ is Nil!48973) (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(assert (=> d!1290286 (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lm!1707))))))

(assert (=> d!1290286 (= (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573427) lt!1573774)))

(declare-fun bm!303165 () Bool)

(assert (=> bm!303165 (= call!303171 (forall!9152 (ite c!741596 (toList!2994 lt!1573427) (toList!2994 lt!1573772)) (ite c!741596 lambda!141573 lambda!141575)))))

(assert (= (and d!1290286 c!741596) b!4361320))

(assert (= (and d!1290286 (not c!741596)) b!4361317))

(assert (= (and b!4361317 res!1793173) b!4361319))

(assert (= (or b!4361320 b!4361317) bm!303164))

(assert (= (or b!4361320 b!4361317) bm!303166))

(assert (= (or b!4361320 b!4361317) bm!303165))

(assert (= (and d!1290286 res!1793171) b!4361316))

(assert (= (and b!4361316 res!1793172) b!4361318))

(declare-fun m!4979923 () Bool)

(assert (=> bm!303165 m!4979923))

(declare-fun m!4979925 () Bool)

(assert (=> d!1290286 m!4979925))

(assert (=> d!1290286 m!4979365))

(assert (=> bm!303166 m!4979923))

(declare-fun m!4979927 () Bool)

(assert (=> b!4361317 m!4979927))

(declare-fun m!4979929 () Bool)

(assert (=> b!4361317 m!4979929))

(declare-fun m!4979931 () Bool)

(assert (=> b!4361317 m!4979931))

(declare-fun m!4979933 () Bool)

(assert (=> b!4361317 m!4979933))

(assert (=> b!4361317 m!4979927))

(declare-fun m!4979935 () Bool)

(assert (=> b!4361317 m!4979935))

(declare-fun m!4979937 () Bool)

(assert (=> b!4361317 m!4979937))

(declare-fun m!4979939 () Bool)

(assert (=> b!4361317 m!4979939))

(declare-fun m!4979941 () Bool)

(assert (=> b!4361317 m!4979941))

(assert (=> b!4361317 m!4979931))

(declare-fun m!4979943 () Bool)

(assert (=> b!4361317 m!4979943))

(declare-fun m!4979945 () Bool)

(assert (=> b!4361317 m!4979945))

(assert (=> b!4361317 m!4979943))

(declare-fun m!4979947 () Bool)

(assert (=> b!4361316 m!4979947))

(declare-fun m!4979949 () Bool)

(assert (=> b!4361318 m!4979949))

(declare-fun m!4979951 () Bool)

(assert (=> bm!303164 m!4979951))

(assert (=> b!4361319 m!4979931))

(assert (=> b!4361011 d!1290286))

(declare-fun d!1290304 () Bool)

(assert (=> d!1290304 (contains!11203 lt!1573419 key!3918)))

(declare-fun lt!1573782 () Unit!72383)

(declare-fun choose!27026 (List!49097 K!10330 V!10576 ListMap!2237) Unit!72383)

(assert (=> d!1290304 (= lt!1573782 (choose!27026 (_2!27490 (h!54535 (toList!2993 lm!1707))) key!3918 newValue!99 lt!1573419))))

(assert (=> d!1290304 (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lm!1707))))))

(assert (=> d!1290304 (= (lemmaAddToMapContainsAndNotInListThenInAcc!48 (_2!27490 (h!54535 (toList!2993 lm!1707))) key!3918 newValue!99 lt!1573419) lt!1573782)))

(declare-fun bs!634799 () Bool)

(assert (= bs!634799 d!1290304))

(assert (=> bs!634799 m!4979387))

(declare-fun m!4979953 () Bool)

(assert (=> bs!634799 m!4979953))

(assert (=> bs!634799 m!4979365))

(assert (=> b!4361011 d!1290304))

(declare-fun b!4361323 () Bool)

(declare-fun e!2714256 () Bool)

(assert (=> b!4361323 (= e!2714256 (not (contains!11208 (keys!16554 lt!1573419) key!3918)))))

(declare-fun b!4361324 () Bool)

(declare-fun e!2714251 () List!49100)

(assert (=> b!4361324 (= e!2714251 (keys!16554 lt!1573419))))

(declare-fun b!4361326 () Bool)

(declare-fun e!2714255 () Bool)

(assert (=> b!4361326 (= e!2714255 (contains!11208 (keys!16554 lt!1573419) key!3918))))

(declare-fun b!4361327 () Bool)

(declare-fun e!2714252 () Bool)

(assert (=> b!4361327 (= e!2714252 e!2714255)))

(declare-fun res!1793176 () Bool)

(assert (=> b!4361327 (=> (not res!1793176) (not e!2714255))))

(assert (=> b!4361327 (= res!1793176 (isDefined!7783 (getValueByKey!475 (toList!2994 lt!1573419) key!3918)))))

(declare-fun b!4361328 () Bool)

(assert (=> b!4361328 (= e!2714251 (getKeysList!136 (toList!2994 lt!1573419)))))

(declare-fun b!4361329 () Bool)

(declare-fun e!2714253 () Unit!72383)

(declare-fun e!2714254 () Unit!72383)

(assert (=> b!4361329 (= e!2714253 e!2714254)))

(declare-fun c!741598 () Bool)

(declare-fun call!303172 () Bool)

(assert (=> b!4361329 (= c!741598 call!303172)))

(declare-fun b!4361330 () Bool)

(declare-fun lt!1573783 () Unit!72383)

(assert (=> b!4361330 (= e!2714253 lt!1573783)))

(declare-fun lt!1573784 () Unit!72383)

(assert (=> b!4361330 (= lt!1573784 (lemmaContainsKeyImpliesGetValueByKeyDefined!386 (toList!2994 lt!1573419) key!3918))))

(assert (=> b!4361330 (isDefined!7783 (getValueByKey!475 (toList!2994 lt!1573419) key!3918))))

(declare-fun lt!1573789 () Unit!72383)

(assert (=> b!4361330 (= lt!1573789 lt!1573784)))

(assert (=> b!4361330 (= lt!1573783 (lemmaInListThenGetKeysListContains!133 (toList!2994 lt!1573419) key!3918))))

(assert (=> b!4361330 call!303172))

(declare-fun b!4361331 () Bool)

(declare-fun Unit!72430 () Unit!72383)

(assert (=> b!4361331 (= e!2714254 Unit!72430)))

(declare-fun bm!303167 () Bool)

(assert (=> bm!303167 (= call!303172 (contains!11208 e!2714251 key!3918))))

(declare-fun c!741597 () Bool)

(declare-fun c!741599 () Bool)

(assert (=> bm!303167 (= c!741597 c!741599)))

(declare-fun b!4361325 () Bool)

(assert (=> b!4361325 false))

(declare-fun lt!1573787 () Unit!72383)

(declare-fun lt!1573788 () Unit!72383)

(assert (=> b!4361325 (= lt!1573787 lt!1573788)))

(assert (=> b!4361325 (containsKey!730 (toList!2994 lt!1573419) key!3918)))

(assert (=> b!4361325 (= lt!1573788 (lemmaInGetKeysListThenContainsKey!134 (toList!2994 lt!1573419) key!3918))))

(declare-fun Unit!72431 () Unit!72383)

(assert (=> b!4361325 (= e!2714254 Unit!72431)))

(declare-fun d!1290306 () Bool)

(assert (=> d!1290306 e!2714252))

(declare-fun res!1793174 () Bool)

(assert (=> d!1290306 (=> res!1793174 e!2714252)))

(assert (=> d!1290306 (= res!1793174 e!2714256)))

(declare-fun res!1793175 () Bool)

(assert (=> d!1290306 (=> (not res!1793175) (not e!2714256))))

(declare-fun lt!1573786 () Bool)

(assert (=> d!1290306 (= res!1793175 (not lt!1573786))))

(declare-fun lt!1573790 () Bool)

(assert (=> d!1290306 (= lt!1573786 lt!1573790)))

(declare-fun lt!1573785 () Unit!72383)

(assert (=> d!1290306 (= lt!1573785 e!2714253)))

(assert (=> d!1290306 (= c!741599 lt!1573790)))

(assert (=> d!1290306 (= lt!1573790 (containsKey!730 (toList!2994 lt!1573419) key!3918))))

(assert (=> d!1290306 (= (contains!11203 lt!1573419 key!3918) lt!1573786)))

(assert (= (and d!1290306 c!741599) b!4361330))

(assert (= (and d!1290306 (not c!741599)) b!4361329))

(assert (= (and b!4361329 c!741598) b!4361325))

(assert (= (and b!4361329 (not c!741598)) b!4361331))

(assert (= (or b!4361330 b!4361329) bm!303167))

(assert (= (and bm!303167 c!741597) b!4361328))

(assert (= (and bm!303167 (not c!741597)) b!4361324))

(assert (= (and d!1290306 res!1793175) b!4361323))

(assert (= (and d!1290306 (not res!1793174)) b!4361327))

(assert (= (and b!4361327 res!1793176) b!4361326))

(declare-fun m!4979955 () Bool)

(assert (=> b!4361325 m!4979955))

(declare-fun m!4979957 () Bool)

(assert (=> b!4361325 m!4979957))

(assert (=> d!1290306 m!4979955))

(declare-fun m!4979959 () Bool)

(assert (=> bm!303167 m!4979959))

(declare-fun m!4979961 () Bool)

(assert (=> b!4361330 m!4979961))

(declare-fun m!4979963 () Bool)

(assert (=> b!4361330 m!4979963))

(assert (=> b!4361330 m!4979963))

(declare-fun m!4979965 () Bool)

(assert (=> b!4361330 m!4979965))

(declare-fun m!4979967 () Bool)

(assert (=> b!4361330 m!4979967))

(declare-fun m!4979969 () Bool)

(assert (=> b!4361324 m!4979969))

(assert (=> b!4361326 m!4979969))

(assert (=> b!4361326 m!4979969))

(declare-fun m!4979971 () Bool)

(assert (=> b!4361326 m!4979971))

(declare-fun m!4979973 () Bool)

(assert (=> b!4361328 m!4979973))

(assert (=> b!4361323 m!4979969))

(assert (=> b!4361323 m!4979969))

(assert (=> b!4361323 m!4979971))

(assert (=> b!4361327 m!4979963))

(assert (=> b!4361327 m!4979963))

(assert (=> b!4361327 m!4979965))

(assert (=> b!4361011 d!1290306))

(declare-fun d!1290308 () Bool)

(declare-fun e!2714257 () Bool)

(assert (=> d!1290308 e!2714257))

(declare-fun res!1793177 () Bool)

(assert (=> d!1290308 (=> (not res!1793177) (not e!2714257))))

(declare-fun lt!1573793 () ListLongMap!1643)

(assert (=> d!1290308 (= res!1793177 (contains!11204 lt!1573793 (_1!27490 lt!1573430)))))

(declare-fun lt!1573794 () List!49098)

(assert (=> d!1290308 (= lt!1573793 (ListLongMap!1644 lt!1573794))))

(declare-fun lt!1573792 () Unit!72383)

(declare-fun lt!1573791 () Unit!72383)

(assert (=> d!1290308 (= lt!1573792 lt!1573791)))

(assert (=> d!1290308 (= (getValueByKey!474 lt!1573794 (_1!27490 lt!1573430)) (Some!10487 (_2!27490 lt!1573430)))))

(assert (=> d!1290308 (= lt!1573791 (lemmaContainsTupThenGetReturnValue!248 lt!1573794 (_1!27490 lt!1573430) (_2!27490 lt!1573430)))))

(assert (=> d!1290308 (= lt!1573794 (insertStrictlySorted!145 (toList!2993 lt!1573418) (_1!27490 lt!1573430) (_2!27490 lt!1573430)))))

(assert (=> d!1290308 (= (+!667 lt!1573418 lt!1573430) lt!1573793)))

(declare-fun b!4361332 () Bool)

(declare-fun res!1793178 () Bool)

(assert (=> b!4361332 (=> (not res!1793178) (not e!2714257))))

(assert (=> b!4361332 (= res!1793178 (= (getValueByKey!474 (toList!2993 lt!1573793) (_1!27490 lt!1573430)) (Some!10487 (_2!27490 lt!1573430))))))

(declare-fun b!4361333 () Bool)

(assert (=> b!4361333 (= e!2714257 (contains!11205 (toList!2993 lt!1573793) lt!1573430))))

(assert (= (and d!1290308 res!1793177) b!4361332))

(assert (= (and b!4361332 res!1793178) b!4361333))

(declare-fun m!4979975 () Bool)

(assert (=> d!1290308 m!4979975))

(declare-fun m!4979977 () Bool)

(assert (=> d!1290308 m!4979977))

(declare-fun m!4979979 () Bool)

(assert (=> d!1290308 m!4979979))

(declare-fun m!4979981 () Bool)

(assert (=> d!1290308 m!4979981))

(declare-fun m!4979983 () Bool)

(assert (=> b!4361332 m!4979983))

(declare-fun m!4979985 () Bool)

(assert (=> b!4361333 m!4979985))

(assert (=> b!4361011 d!1290308))

(declare-fun bs!634800 () Bool)

(declare-fun b!4361338 () Bool)

(assert (= bs!634800 (and b!4361338 b!4361320)))

(declare-fun lambda!141577 () Int)

(assert (=> bs!634800 (= (= lt!1573428 lt!1573427) (= lambda!141577 lambda!141573))))

(declare-fun bs!634801 () Bool)

(assert (= bs!634801 (and b!4361338 d!1290174)))

(assert (=> bs!634801 (not (= lambda!141577 lambda!141483))))

(declare-fun bs!634802 () Bool)

(assert (= bs!634802 (and b!4361338 b!4361317)))

(assert (=> bs!634802 (= (= lt!1573428 lt!1573766) (= lambda!141577 lambda!141575))))

(assert (=> bs!634802 (= (= lt!1573428 lt!1573427) (= lambda!141577 lambda!141574))))

(declare-fun bs!634803 () Bool)

(assert (= bs!634803 (and b!4361338 d!1290286)))

(assert (=> bs!634803 (= (= lt!1573428 lt!1573774) (= lambda!141577 lambda!141576))))

(assert (=> b!4361338 true))

(declare-fun bs!634804 () Bool)

(declare-fun b!4361335 () Bool)

(assert (= bs!634804 (and b!4361335 b!4361320)))

(declare-fun lambda!141578 () Int)

(assert (=> bs!634804 (= (= lt!1573428 lt!1573427) (= lambda!141578 lambda!141573))))

(declare-fun bs!634805 () Bool)

(assert (= bs!634805 (and b!4361335 b!4361338)))

(assert (=> bs!634805 (= lambda!141578 lambda!141577)))

(declare-fun bs!634806 () Bool)

(assert (= bs!634806 (and b!4361335 d!1290174)))

(assert (=> bs!634806 (not (= lambda!141578 lambda!141483))))

(declare-fun bs!634807 () Bool)

(assert (= bs!634807 (and b!4361335 b!4361317)))

(assert (=> bs!634807 (= (= lt!1573428 lt!1573766) (= lambda!141578 lambda!141575))))

(assert (=> bs!634807 (= (= lt!1573428 lt!1573427) (= lambda!141578 lambda!141574))))

(declare-fun bs!634808 () Bool)

(assert (= bs!634808 (and b!4361335 d!1290286)))

(assert (=> bs!634808 (= (= lt!1573428 lt!1573774) (= lambda!141578 lambda!141576))))

(assert (=> b!4361335 true))

(declare-fun lt!1573802 () ListMap!2237)

(declare-fun lambda!141579 () Int)

(assert (=> bs!634804 (= (= lt!1573802 lt!1573427) (= lambda!141579 lambda!141573))))

(assert (=> bs!634805 (= (= lt!1573802 lt!1573428) (= lambda!141579 lambda!141577))))

(assert (=> bs!634806 (not (= lambda!141579 lambda!141483))))

(assert (=> bs!634807 (= (= lt!1573802 lt!1573766) (= lambda!141579 lambda!141575))))

(assert (=> b!4361335 (= (= lt!1573802 lt!1573428) (= lambda!141579 lambda!141578))))

(assert (=> bs!634807 (= (= lt!1573802 lt!1573427) (= lambda!141579 lambda!141574))))

(assert (=> bs!634808 (= (= lt!1573802 lt!1573774) (= lambda!141579 lambda!141576))))

(assert (=> b!4361335 true))

(declare-fun bs!634809 () Bool)

(declare-fun d!1290310 () Bool)

(assert (= bs!634809 (and d!1290310 b!4361320)))

(declare-fun lambda!141580 () Int)

(declare-fun lt!1573810 () ListMap!2237)

(assert (=> bs!634809 (= (= lt!1573810 lt!1573427) (= lambda!141580 lambda!141573))))

(declare-fun bs!634810 () Bool)

(assert (= bs!634810 (and d!1290310 b!4361338)))

(assert (=> bs!634810 (= (= lt!1573810 lt!1573428) (= lambda!141580 lambda!141577))))

(declare-fun bs!634811 () Bool)

(assert (= bs!634811 (and d!1290310 d!1290174)))

(assert (=> bs!634811 (not (= lambda!141580 lambda!141483))))

(declare-fun bs!634812 () Bool)

(assert (= bs!634812 (and d!1290310 b!4361335)))

(assert (=> bs!634812 (= (= lt!1573810 lt!1573802) (= lambda!141580 lambda!141579))))

(declare-fun bs!634813 () Bool)

(assert (= bs!634813 (and d!1290310 b!4361317)))

(assert (=> bs!634813 (= (= lt!1573810 lt!1573766) (= lambda!141580 lambda!141575))))

(assert (=> bs!634812 (= (= lt!1573810 lt!1573428) (= lambda!141580 lambda!141578))))

(assert (=> bs!634813 (= (= lt!1573810 lt!1573427) (= lambda!141580 lambda!141574))))

(declare-fun bs!634814 () Bool)

(assert (= bs!634814 (and d!1290310 d!1290286)))

(assert (=> bs!634814 (= (= lt!1573810 lt!1573774) (= lambda!141580 lambda!141576))))

(assert (=> d!1290310 true))

(declare-fun b!4361334 () Bool)

(declare-fun res!1793180 () Bool)

(declare-fun e!2714259 () Bool)

(assert (=> b!4361334 (=> (not res!1793180) (not e!2714259))))

(assert (=> b!4361334 (= res!1793180 (forall!9152 (toList!2994 lt!1573428) lambda!141580))))

(declare-fun e!2714260 () ListMap!2237)

(assert (=> b!4361335 (= e!2714260 lt!1573802)))

(declare-fun lt!1573808 () ListMap!2237)

(assert (=> b!4361335 (= lt!1573808 (+!668 lt!1573428 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(assert (=> b!4361335 (= lt!1573802 (addToMapMapFromBucket!201 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707)))) (+!668 lt!1573428 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))))

(declare-fun lt!1573806 () Unit!72383)

(declare-fun call!303173 () Unit!72383)

(assert (=> b!4361335 (= lt!1573806 call!303173)))

(assert (=> b!4361335 (forall!9152 (toList!2994 lt!1573428) lambda!141578)))

(declare-fun lt!1573797 () Unit!72383)

(assert (=> b!4361335 (= lt!1573797 lt!1573806)))

(declare-fun call!303174 () Bool)

(assert (=> b!4361335 call!303174))

(declare-fun lt!1573807 () Unit!72383)

(declare-fun Unit!72432 () Unit!72383)

(assert (=> b!4361335 (= lt!1573807 Unit!72432)))

(assert (=> b!4361335 (forall!9152 (t!356017 (_2!27490 (h!54535 (toList!2993 lm!1707)))) lambda!141579)))

(declare-fun lt!1573799 () Unit!72383)

(declare-fun Unit!72433 () Unit!72383)

(assert (=> b!4361335 (= lt!1573799 Unit!72433)))

(declare-fun lt!1573815 () Unit!72383)

(declare-fun Unit!72434 () Unit!72383)

(assert (=> b!4361335 (= lt!1573815 Unit!72434)))

(declare-fun lt!1573813 () Unit!72383)

(assert (=> b!4361335 (= lt!1573813 (forallContained!1793 (toList!2994 lt!1573808) lambda!141579 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(assert (=> b!4361335 (contains!11203 lt!1573808 (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(declare-fun lt!1573798 () Unit!72383)

(declare-fun Unit!72435 () Unit!72383)

(assert (=> b!4361335 (= lt!1573798 Unit!72435)))

(assert (=> b!4361335 (contains!11203 lt!1573802 (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))))))

(declare-fun lt!1573804 () Unit!72383)

(declare-fun Unit!72436 () Unit!72383)

(assert (=> b!4361335 (= lt!1573804 Unit!72436)))

(assert (=> b!4361335 (forall!9152 (_2!27490 (h!54535 (toList!2993 lm!1707))) lambda!141579)))

(declare-fun lt!1573805 () Unit!72383)

(declare-fun Unit!72437 () Unit!72383)

(assert (=> b!4361335 (= lt!1573805 Unit!72437)))

(declare-fun call!303175 () Bool)

(assert (=> b!4361335 call!303175))

(declare-fun lt!1573795 () Unit!72383)

(declare-fun Unit!72438 () Unit!72383)

(assert (=> b!4361335 (= lt!1573795 Unit!72438)))

(declare-fun lt!1573812 () Unit!72383)

(declare-fun Unit!72439 () Unit!72383)

(assert (=> b!4361335 (= lt!1573812 Unit!72439)))

(declare-fun lt!1573814 () Unit!72383)

(assert (=> b!4361335 (= lt!1573814 (addForallContainsKeyThenBeforeAdding!71 lt!1573428 lt!1573802 (_1!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707))))) (_2!27489 (h!54534 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))))

(assert (=> b!4361335 (forall!9152 (toList!2994 lt!1573428) lambda!141579)))

(declare-fun lt!1573796 () Unit!72383)

(assert (=> b!4361335 (= lt!1573796 lt!1573814)))

(assert (=> b!4361335 (forall!9152 (toList!2994 lt!1573428) lambda!141579)))

(declare-fun lt!1573801 () Unit!72383)

(declare-fun Unit!72440 () Unit!72383)

(assert (=> b!4361335 (= lt!1573801 Unit!72440)))

(declare-fun res!1793181 () Bool)

(assert (=> b!4361335 (= res!1793181 (forall!9152 (_2!27490 (h!54535 (toList!2993 lm!1707))) lambda!141579))))

(declare-fun e!2714258 () Bool)

(assert (=> b!4361335 (=> (not res!1793181) (not e!2714258))))

(assert (=> b!4361335 e!2714258))

(declare-fun lt!1573809 () Unit!72383)

(declare-fun Unit!72441 () Unit!72383)

(assert (=> b!4361335 (= lt!1573809 Unit!72441)))

(declare-fun b!4361336 () Bool)

(assert (=> b!4361336 (= e!2714259 (invariantList!688 (toList!2994 lt!1573810)))))

(declare-fun bm!303168 () Bool)

(assert (=> bm!303168 (= call!303173 (lemmaContainsAllItsOwnKeys!71 lt!1573428))))

(declare-fun b!4361337 () Bool)

(assert (=> b!4361337 (= e!2714258 (forall!9152 (toList!2994 lt!1573428) lambda!141579))))

(assert (=> b!4361338 (= e!2714260 lt!1573428)))

(declare-fun lt!1573811 () Unit!72383)

(assert (=> b!4361338 (= lt!1573811 call!303173)))

(assert (=> b!4361338 call!303175))

(declare-fun lt!1573803 () Unit!72383)

(assert (=> b!4361338 (= lt!1573803 lt!1573811)))

(assert (=> b!4361338 call!303174))

(declare-fun lt!1573800 () Unit!72383)

(declare-fun Unit!72442 () Unit!72383)

(assert (=> b!4361338 (= lt!1573800 Unit!72442)))

(declare-fun c!741600 () Bool)

(declare-fun bm!303170 () Bool)

(assert (=> bm!303170 (= call!303174 (forall!9152 (ite c!741600 (toList!2994 lt!1573428) (toList!2994 lt!1573808)) (ite c!741600 lambda!141577 lambda!141579)))))

(assert (=> d!1290310 e!2714259))

(declare-fun res!1793179 () Bool)

(assert (=> d!1290310 (=> (not res!1793179) (not e!2714259))))

(assert (=> d!1290310 (= res!1793179 (forall!9152 (_2!27490 (h!54535 (toList!2993 lm!1707))) lambda!141580))))

(assert (=> d!1290310 (= lt!1573810 e!2714260)))

(assert (=> d!1290310 (= c!741600 ((_ is Nil!48973) (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(assert (=> d!1290310 (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lm!1707))))))

(assert (=> d!1290310 (= (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573428) lt!1573810)))

(declare-fun bm!303169 () Bool)

(assert (=> bm!303169 (= call!303175 (forall!9152 (ite c!741600 (toList!2994 lt!1573428) (toList!2994 lt!1573808)) (ite c!741600 lambda!141577 lambda!141579)))))

(assert (= (and d!1290310 c!741600) b!4361338))

(assert (= (and d!1290310 (not c!741600)) b!4361335))

(assert (= (and b!4361335 res!1793181) b!4361337))

(assert (= (or b!4361338 b!4361335) bm!303168))

(assert (= (or b!4361338 b!4361335) bm!303170))

(assert (= (or b!4361338 b!4361335) bm!303169))

(assert (= (and d!1290310 res!1793179) b!4361334))

(assert (= (and b!4361334 res!1793180) b!4361336))

(declare-fun m!4979987 () Bool)

(assert (=> bm!303169 m!4979987))

(declare-fun m!4979989 () Bool)

(assert (=> d!1290310 m!4979989))

(assert (=> d!1290310 m!4979365))

(assert (=> bm!303170 m!4979987))

(declare-fun m!4979991 () Bool)

(assert (=> b!4361335 m!4979991))

(declare-fun m!4979993 () Bool)

(assert (=> b!4361335 m!4979993))

(declare-fun m!4979995 () Bool)

(assert (=> b!4361335 m!4979995))

(declare-fun m!4979997 () Bool)

(assert (=> b!4361335 m!4979997))

(assert (=> b!4361335 m!4979991))

(declare-fun m!4979999 () Bool)

(assert (=> b!4361335 m!4979999))

(declare-fun m!4980001 () Bool)

(assert (=> b!4361335 m!4980001))

(declare-fun m!4980003 () Bool)

(assert (=> b!4361335 m!4980003))

(declare-fun m!4980005 () Bool)

(assert (=> b!4361335 m!4980005))

(assert (=> b!4361335 m!4979995))

(declare-fun m!4980007 () Bool)

(assert (=> b!4361335 m!4980007))

(declare-fun m!4980009 () Bool)

(assert (=> b!4361335 m!4980009))

(assert (=> b!4361335 m!4980007))

(declare-fun m!4980011 () Bool)

(assert (=> b!4361334 m!4980011))

(declare-fun m!4980013 () Bool)

(assert (=> b!4361336 m!4980013))

(declare-fun m!4980015 () Bool)

(assert (=> bm!303168 m!4980015))

(assert (=> b!4361337 m!4979995))

(assert (=> b!4361011 d!1290310))

(declare-fun bs!634815 () Bool)

(declare-fun d!1290312 () Bool)

(assert (= bs!634815 (and d!1290312 d!1290212)))

(declare-fun lambda!141583 () Int)

(assert (=> bs!634815 (not (= lambda!141583 lambda!141492))))

(declare-fun bs!634816 () Bool)

(assert (= bs!634816 (and d!1290312 d!1290284)))

(assert (=> bs!634816 (= lambda!141583 lambda!141540)))

(declare-fun bs!634817 () Bool)

(assert (= bs!634817 (and d!1290312 d!1290236)))

(assert (=> bs!634817 (= lambda!141583 lambda!141523)))

(declare-fun bs!634818 () Bool)

(assert (= bs!634818 (and d!1290312 start!422504)))

(assert (=> bs!634818 (= lambda!141583 lambda!141477)))

(declare-fun bs!634819 () Bool)

(assert (= bs!634819 (and d!1290312 d!1290264)))

(assert (=> bs!634819 (= lambda!141583 lambda!141538)))

(assert (=> d!1290312 (not (containsKey!726 (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707)))) key!3918))))

(declare-fun lt!1573818 () Unit!72383)

(declare-fun choose!27027 (ListLongMap!1643 K!10330 (_ BitVec 64) Hashable!4897) Unit!72383)

(assert (=> d!1290312 (= lt!1573818 (choose!27027 lm!1707 key!3918 (_1!27490 (h!54535 (toList!2993 lm!1707))) hashF!1247))))

(assert (=> d!1290312 (forall!9150 (toList!2993 lm!1707) lambda!141583)))

(assert (=> d!1290312 (= (lemmaNotSameHashThenCannotContainKey!52 lm!1707 key!3918 (_1!27490 (h!54535 (toList!2993 lm!1707))) hashF!1247) lt!1573818)))

(declare-fun bs!634820 () Bool)

(assert (= bs!634820 d!1290312))

(assert (=> bs!634820 m!4979411))

(assert (=> bs!634820 m!4979411))

(assert (=> bs!634820 m!4979413))

(declare-fun m!4980017 () Bool)

(assert (=> bs!634820 m!4980017))

(declare-fun m!4980019 () Bool)

(assert (=> bs!634820 m!4980019))

(assert (=> b!4361011 d!1290312))

(declare-fun d!1290314 () Bool)

(declare-fun e!2714263 () Bool)

(assert (=> d!1290314 e!2714263))

(declare-fun res!1793186 () Bool)

(assert (=> d!1290314 (=> (not res!1793186) (not e!2714263))))

(declare-fun lt!1573829 () ListMap!2237)

(assert (=> d!1290314 (= res!1793186 (contains!11203 lt!1573829 (_1!27489 lt!1573432)))))

(declare-fun lt!1573830 () List!49097)

(assert (=> d!1290314 (= lt!1573829 (ListMap!2238 lt!1573830))))

(declare-fun lt!1573827 () Unit!72383)

(declare-fun lt!1573828 () Unit!72383)

(assert (=> d!1290314 (= lt!1573827 lt!1573828)))

(assert (=> d!1290314 (= (getValueByKey!475 lt!1573830 (_1!27489 lt!1573432)) (Some!10488 (_2!27489 lt!1573432)))))

(declare-fun lemmaContainsTupThenGetReturnValue!249 (List!49097 K!10330 V!10576) Unit!72383)

(assert (=> d!1290314 (= lt!1573828 (lemmaContainsTupThenGetReturnValue!249 lt!1573830 (_1!27489 lt!1573432) (_2!27489 lt!1573432)))))

(declare-fun insertNoDuplicatedKeys!112 (List!49097 K!10330 V!10576) List!49097)

(assert (=> d!1290314 (= lt!1573830 (insertNoDuplicatedKeys!112 (toList!2994 lt!1573422) (_1!27489 lt!1573432) (_2!27489 lt!1573432)))))

(assert (=> d!1290314 (= (+!668 lt!1573422 lt!1573432) lt!1573829)))

(declare-fun b!4361343 () Bool)

(declare-fun res!1793187 () Bool)

(assert (=> b!4361343 (=> (not res!1793187) (not e!2714263))))

(assert (=> b!4361343 (= res!1793187 (= (getValueByKey!475 (toList!2994 lt!1573829) (_1!27489 lt!1573432)) (Some!10488 (_2!27489 lt!1573432))))))

(declare-fun b!4361344 () Bool)

(declare-fun contains!11209 (List!49097 tuple2!48390) Bool)

(assert (=> b!4361344 (= e!2714263 (contains!11209 (toList!2994 lt!1573829) lt!1573432))))

(assert (= (and d!1290314 res!1793186) b!4361343))

(assert (= (and b!4361343 res!1793187) b!4361344))

(declare-fun m!4980021 () Bool)

(assert (=> d!1290314 m!4980021))

(declare-fun m!4980023 () Bool)

(assert (=> d!1290314 m!4980023))

(declare-fun m!4980025 () Bool)

(assert (=> d!1290314 m!4980025))

(declare-fun m!4980027 () Bool)

(assert (=> d!1290314 m!4980027))

(declare-fun m!4980029 () Bool)

(assert (=> b!4361343 m!4980029))

(declare-fun m!4980031 () Bool)

(assert (=> b!4361344 m!4980031))

(assert (=> b!4361011 d!1290314))

(declare-fun bs!634821 () Bool)

(declare-fun d!1290316 () Bool)

(assert (= bs!634821 (and d!1290316 d!1290212)))

(declare-fun lambda!141584 () Int)

(assert (=> bs!634821 (not (= lambda!141584 lambda!141492))))

(declare-fun bs!634822 () Bool)

(assert (= bs!634822 (and d!1290316 d!1290284)))

(assert (=> bs!634822 (= lambda!141584 lambda!141540)))

(declare-fun bs!634823 () Bool)

(assert (= bs!634823 (and d!1290316 d!1290236)))

(assert (=> bs!634823 (= lambda!141584 lambda!141523)))

(declare-fun bs!634824 () Bool)

(assert (= bs!634824 (and d!1290316 start!422504)))

(assert (=> bs!634824 (= lambda!141584 lambda!141477)))

(declare-fun bs!634825 () Bool)

(assert (= bs!634825 (and d!1290316 d!1290312)))

(assert (=> bs!634825 (= lambda!141584 lambda!141583)))

(declare-fun bs!634826 () Bool)

(assert (= bs!634826 (and d!1290316 d!1290264)))

(assert (=> bs!634826 (= lambda!141584 lambda!141538)))

(declare-fun lt!1573831 () ListMap!2237)

(assert (=> d!1290316 (invariantList!688 (toList!2994 lt!1573831))))

(declare-fun e!2714264 () ListMap!2237)

(assert (=> d!1290316 (= lt!1573831 e!2714264)))

(declare-fun c!741601 () Bool)

(assert (=> d!1290316 (= c!741601 ((_ is Cons!48974) (toList!2993 (+!667 lt!1573418 lt!1573430))))))

(assert (=> d!1290316 (forall!9150 (toList!2993 (+!667 lt!1573418 lt!1573430)) lambda!141584)))

(assert (=> d!1290316 (= (extractMap!564 (toList!2993 (+!667 lt!1573418 lt!1573430))) lt!1573831)))

(declare-fun b!4361345 () Bool)

(assert (=> b!4361345 (= e!2714264 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 (+!667 lt!1573418 lt!1573430)))) (extractMap!564 (t!356018 (toList!2993 (+!667 lt!1573418 lt!1573430))))))))

(declare-fun b!4361346 () Bool)

(assert (=> b!4361346 (= e!2714264 (ListMap!2238 Nil!48973))))

(assert (= (and d!1290316 c!741601) b!4361345))

(assert (= (and d!1290316 (not c!741601)) b!4361346))

(declare-fun m!4980033 () Bool)

(assert (=> d!1290316 m!4980033))

(declare-fun m!4980035 () Bool)

(assert (=> d!1290316 m!4980035))

(declare-fun m!4980037 () Bool)

(assert (=> b!4361345 m!4980037))

(assert (=> b!4361345 m!4980037))

(declare-fun m!4980039 () Bool)

(assert (=> b!4361345 m!4980039))

(assert (=> b!4361011 d!1290316))

(declare-fun d!1290318 () Bool)

(assert (=> d!1290318 (= (eq!275 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573427) (+!668 lt!1573422 lt!1573432)) (= (content!7745 (toList!2994 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (toList!2993 lm!1707))) lt!1573427))) (content!7745 (toList!2994 (+!668 lt!1573422 lt!1573432)))))))

(declare-fun bs!634827 () Bool)

(assert (= bs!634827 d!1290318))

(declare-fun m!4980041 () Bool)

(assert (=> bs!634827 m!4980041))

(declare-fun m!4980043 () Bool)

(assert (=> bs!634827 m!4980043))

(assert (=> b!4361011 d!1290318))

(declare-fun d!1290320 () Bool)

(declare-fun res!1793188 () Bool)

(declare-fun e!2714265 () Bool)

(assert (=> d!1290320 (=> res!1793188 e!2714265)))

(assert (=> d!1290320 (= res!1793188 (and ((_ is Cons!48973) (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707))))) (= (_1!27489 (h!54534 (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707)))))) key!3918)))))

(assert (=> d!1290320 (= (containsKey!726 (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707)))) key!3918) e!2714265)))

(declare-fun b!4361347 () Bool)

(declare-fun e!2714266 () Bool)

(assert (=> b!4361347 (= e!2714265 e!2714266)))

(declare-fun res!1793189 () Bool)

(assert (=> b!4361347 (=> (not res!1793189) (not e!2714266))))

(assert (=> b!4361347 (= res!1793189 ((_ is Cons!48973) (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707))))))))

(declare-fun b!4361348 () Bool)

(assert (=> b!4361348 (= e!2714266 (containsKey!726 (t!356017 (apply!11357 lm!1707 (_1!27490 (h!54535 (toList!2993 lm!1707))))) key!3918))))

(assert (= (and d!1290320 (not res!1793188)) b!4361347))

(assert (= (and b!4361347 res!1793189) b!4361348))

(declare-fun m!4980045 () Bool)

(assert (=> b!4361348 m!4980045))

(assert (=> b!4361011 d!1290320))

(declare-fun d!1290322 () Bool)

(declare-fun e!2714267 () Bool)

(assert (=> d!1290322 e!2714267))

(declare-fun res!1793190 () Bool)

(assert (=> d!1290322 (=> (not res!1793190) (not e!2714267))))

(declare-fun lt!1573834 () ListMap!2237)

(assert (=> d!1290322 (= res!1793190 (contains!11203 lt!1573834 (_1!27489 lt!1573432)))))

(declare-fun lt!1573835 () List!49097)

(assert (=> d!1290322 (= lt!1573834 (ListMap!2238 lt!1573835))))

(declare-fun lt!1573832 () Unit!72383)

(declare-fun lt!1573833 () Unit!72383)

(assert (=> d!1290322 (= lt!1573832 lt!1573833)))

(assert (=> d!1290322 (= (getValueByKey!475 lt!1573835 (_1!27489 lt!1573432)) (Some!10488 (_2!27489 lt!1573432)))))

(assert (=> d!1290322 (= lt!1573833 (lemmaContainsTupThenGetReturnValue!249 lt!1573835 (_1!27489 lt!1573432) (_2!27489 lt!1573432)))))

(assert (=> d!1290322 (= lt!1573835 (insertNoDuplicatedKeys!112 (toList!2994 lt!1573428) (_1!27489 lt!1573432) (_2!27489 lt!1573432)))))

(assert (=> d!1290322 (= (+!668 lt!1573428 lt!1573432) lt!1573834)))

(declare-fun b!4361349 () Bool)

(declare-fun res!1793191 () Bool)

(assert (=> b!4361349 (=> (not res!1793191) (not e!2714267))))

(assert (=> b!4361349 (= res!1793191 (= (getValueByKey!475 (toList!2994 lt!1573834) (_1!27489 lt!1573432)) (Some!10488 (_2!27489 lt!1573432))))))

(declare-fun b!4361350 () Bool)

(assert (=> b!4361350 (= e!2714267 (contains!11209 (toList!2994 lt!1573834) lt!1573432))))

(assert (= (and d!1290322 res!1793190) b!4361349))

(assert (= (and b!4361349 res!1793191) b!4361350))

(declare-fun m!4980047 () Bool)

(assert (=> d!1290322 m!4980047))

(declare-fun m!4980049 () Bool)

(assert (=> d!1290322 m!4980049))

(declare-fun m!4980051 () Bool)

(assert (=> d!1290322 m!4980051))

(declare-fun m!4980053 () Bool)

(assert (=> d!1290322 m!4980053))

(declare-fun m!4980055 () Bool)

(assert (=> b!4361349 m!4980055))

(declare-fun m!4980057 () Bool)

(assert (=> b!4361350 m!4980057))

(assert (=> b!4361011 d!1290322))

(declare-fun d!1290324 () Bool)

(declare-fun tail!7024 (List!49098) List!49098)

(assert (=> d!1290324 (= (tail!7022 lm!1707) (ListLongMap!1644 (tail!7024 (toList!2993 lm!1707))))))

(declare-fun bs!634828 () Bool)

(assert (= bs!634828 d!1290324))

(declare-fun m!4980059 () Bool)

(assert (=> bs!634828 m!4980059))

(assert (=> b!4361011 d!1290324))

(declare-fun bs!634829 () Bool)

(declare-fun d!1290326 () Bool)

(assert (= bs!634829 (and d!1290326 d!1290284)))

(declare-fun lambda!141585 () Int)

(assert (=> bs!634829 (= lambda!141585 lambda!141540)))

(declare-fun bs!634830 () Bool)

(assert (= bs!634830 (and d!1290326 d!1290236)))

(assert (=> bs!634830 (= lambda!141585 lambda!141523)))

(declare-fun bs!634831 () Bool)

(assert (= bs!634831 (and d!1290326 start!422504)))

(assert (=> bs!634831 (= lambda!141585 lambda!141477)))

(declare-fun bs!634832 () Bool)

(assert (= bs!634832 (and d!1290326 d!1290312)))

(assert (=> bs!634832 (= lambda!141585 lambda!141583)))

(declare-fun bs!634833 () Bool)

(assert (= bs!634833 (and d!1290326 d!1290264)))

(assert (=> bs!634833 (= lambda!141585 lambda!141538)))

(declare-fun bs!634834 () Bool)

(assert (= bs!634834 (and d!1290326 d!1290212)))

(assert (=> bs!634834 (not (= lambda!141585 lambda!141492))))

(declare-fun bs!634835 () Bool)

(assert (= bs!634835 (and d!1290326 d!1290316)))

(assert (=> bs!634835 (= lambda!141585 lambda!141584)))

(declare-fun lt!1573836 () ListMap!2237)

(assert (=> d!1290326 (invariantList!688 (toList!2994 lt!1573836))))

(declare-fun e!2714268 () ListMap!2237)

(assert (=> d!1290326 (= lt!1573836 e!2714268)))

(declare-fun c!741602 () Bool)

(assert (=> d!1290326 (= c!741602 ((_ is Cons!48974) (t!356018 (toList!2993 lm!1707))))))

(assert (=> d!1290326 (forall!9150 (t!356018 (toList!2993 lm!1707)) lambda!141585)))

(assert (=> d!1290326 (= (extractMap!564 (t!356018 (toList!2993 lm!1707))) lt!1573836)))

(declare-fun b!4361351 () Bool)

(assert (=> b!4361351 (= e!2714268 (addToMapMapFromBucket!201 (_2!27490 (h!54535 (t!356018 (toList!2993 lm!1707)))) (extractMap!564 (t!356018 (t!356018 (toList!2993 lm!1707))))))))

(declare-fun b!4361352 () Bool)

(assert (=> b!4361352 (= e!2714268 (ListMap!2238 Nil!48973))))

(assert (= (and d!1290326 c!741602) b!4361351))

(assert (= (and d!1290326 (not c!741602)) b!4361352))

(declare-fun m!4980061 () Bool)

(assert (=> d!1290326 m!4980061))

(declare-fun m!4980063 () Bool)

(assert (=> d!1290326 m!4980063))

(declare-fun m!4980065 () Bool)

(assert (=> b!4361351 m!4980065))

(assert (=> b!4361351 m!4980065))

(declare-fun m!4980067 () Bool)

(assert (=> b!4361351 m!4980067))

(assert (=> b!4361011 d!1290326))

(declare-fun d!1290328 () Bool)

(assert (=> d!1290328 (= (eq!275 lt!1573421 lt!1573427) (= (content!7745 (toList!2994 lt!1573421)) (content!7745 (toList!2994 lt!1573427))))))

(declare-fun bs!634836 () Bool)

(assert (= bs!634836 d!1290328))

(declare-fun m!4980069 () Bool)

(assert (=> bs!634836 m!4980069))

(declare-fun m!4980071 () Bool)

(assert (=> bs!634836 m!4980071))

(assert (=> b!4361011 d!1290328))

(declare-fun b!4361357 () Bool)

(declare-fun tp!1330346 () Bool)

(declare-fun e!2714271 () Bool)

(assert (=> b!4361357 (= e!2714271 (and tp_is_empty!25257 tp_is_empty!25259 tp!1330346))))

(assert (=> b!4361018 (= tp!1330333 e!2714271)))

(assert (= (and b!4361018 ((_ is Cons!48973) (t!356017 newBucket!200))) b!4361357))

(declare-fun b!4361362 () Bool)

(declare-fun e!2714274 () Bool)

(declare-fun tp!1330351 () Bool)

(declare-fun tp!1330352 () Bool)

(assert (=> b!4361362 (= e!2714274 (and tp!1330351 tp!1330352))))

(assert (=> b!4361014 (= tp!1330334 e!2714274)))

(assert (= (and b!4361014 ((_ is Cons!48974) (toList!2993 lm!1707))) b!4361362))

(declare-fun b_lambda!131859 () Bool)

(assert (= b_lambda!131843 (or start!422504 b_lambda!131859)))

(declare-fun bs!634837 () Bool)

(declare-fun d!1290330 () Bool)

(assert (= bs!634837 (and d!1290330 start!422504)))

(assert (=> bs!634837 (= (dynLambda!20649 lambda!141477 (h!54535 (toList!2993 lm!1707))) (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lm!1707)))))))

(assert (=> bs!634837 m!4979365))

(assert (=> b!4361128 d!1290330))

(declare-fun b_lambda!131861 () Bool)

(assert (= b_lambda!131847 (or start!422504 b_lambda!131861)))

(declare-fun bs!634838 () Bool)

(declare-fun d!1290332 () Bool)

(assert (= bs!634838 (and d!1290332 start!422504)))

(assert (=> bs!634838 (= (dynLambda!20649 lambda!141477 (h!54535 (toList!2993 lt!1573431))) (noDuplicateKeys!505 (_2!27490 (h!54535 (toList!2993 lt!1573431)))))))

(declare-fun m!4980073 () Bool)

(assert (=> bs!634838 m!4980073))

(assert (=> b!4361234 d!1290332))

(declare-fun b_lambda!131863 () Bool)

(assert (= b_lambda!131849 (or start!422504 b_lambda!131863)))

(declare-fun bs!634839 () Bool)

(declare-fun d!1290334 () Bool)

(assert (= bs!634839 (and d!1290334 start!422504)))

(assert (=> bs!634839 (= (dynLambda!20649 lambda!141477 (tuple2!48393 hash!377 newBucket!200)) (noDuplicateKeys!505 (_2!27490 (tuple2!48393 hash!377 newBucket!200))))))

(declare-fun m!4980075 () Bool)

(assert (=> bs!634839 m!4980075))

(assert (=> b!4361245 d!1290334))

(declare-fun b_lambda!131865 () Bool)

(assert (= b_lambda!131845 (or start!422504 b_lambda!131865)))

(declare-fun bs!634840 () Bool)

(declare-fun d!1290336 () Bool)

(assert (= bs!634840 (and d!1290336 start!422504)))

(assert (=> bs!634840 (= (dynLambda!20649 lambda!141477 lt!1573433) (noDuplicateKeys!505 (_2!27490 lt!1573433)))))

(declare-fun m!4980077 () Bool)

(assert (=> bs!634840 m!4980077))

(assert (=> d!1290232 d!1290336))

(check-sat (not d!1290318) (not d!1290308) (not b!4361226) (not d!1290324) (not b!4361251) (not b_lambda!131865) (not b!4361351) (not b!4361175) (not b!4361197) (not d!1290228) (not b_lambda!131859) (not b!4361333) (not b!4361194) (not b!4361116) (not d!1290314) (not d!1290306) (not b!4361253) (not d!1290258) (not d!1290242) tp_is_empty!25259 (not d!1290254) (not b!4361246) (not b!4361350) (not b!4361332) (not b!4361343) (not d!1290322) (not b!4361105) (not bm!303165) (not b!4361166) (not bm!303142) (not bs!634840) (not b!4361345) (not b!4361172) (not b!4361337) (not d!1290326) (not d!1290232) (not b!4361249) (not bs!634837) (not b!4361162) (not b!4361349) (not b!4361247) (not b!4361240) (not d!1290284) (not d!1290262) (not b!4361215) (not b!4361328) (not d!1290316) (not b!4361330) (not b!4361195) (not d!1290180) (not b!4361335) (not bm!303168) (not b!4361362) (not b!4361318) (not b!4361248) (not b!4361348) (not bs!634839) (not d!1290236) (not b!4361357) (not bm!303152) (not b!4361319) tp_is_empty!25257 (not d!1290264) (not b!4361327) (not bm!303164) (not d!1290208) (not b!4361235) (not bm!303167) (not d!1290174) (not b!4361326) (not d!1290274) (not b!4361198) (not d!1290244) (not bm!303166) (not b!4361117) (not b!4361325) (not b!4361241) (not d!1290222) (not d!1290328) (not bm!303169) (not b!4361316) (not d!1290212) (not b!4361324) (not b_lambda!131863) (not b!4361336) (not b!4361103) (not d!1290234) (not b_lambda!131861) (not b!4361129) (not d!1290220) (not b!4361196) (not bm!303170) (not b!4361201) (not b!4361334) (not bs!634838) (not d!1290286) (not b!4361317) (not d!1290310) (not d!1290260) (not b!4361199) (not b!4361271) (not d!1290312) (not d!1290230) (not b!4361250) (not d!1290304) (not d!1290248) (not b!4361323) (not b!4361219) (not b!4361220) (not b!4361344))
(check-sat)
