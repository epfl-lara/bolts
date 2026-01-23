; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422016 () Bool)

(assert start!422016)

(declare-fun b!4358463 () Bool)

(declare-fun e!2712388 () Bool)

(declare-fun e!2712382 () Bool)

(assert (=> b!4358463 (= e!2712388 (not e!2712382))))

(declare-fun res!1791592 () Bool)

(assert (=> b!4358463 (=> res!1791592 e!2712382)))

(declare-datatypes ((K!10305 0))(
  ( (K!10306 (val!16515 Int)) )
))
(declare-datatypes ((V!10551 0))(
  ( (V!10552 (val!16516 Int)) )
))
(declare-datatypes ((tuple2!48350 0))(
  ( (tuple2!48351 (_1!27469 K!10305) (_2!27469 V!10551)) )
))
(declare-fun lt!1570891 () tuple2!48350)

(declare-datatypes ((List!49071 0))(
  ( (Nil!48947) (Cons!48947 (h!54502 tuple2!48350) (t!355991 List!49071)) )
))
(declare-fun newBucket!200 () List!49071)

(declare-fun lt!1570897 () List!49071)

(declare-fun key!3918 () K!10305)

(declare-fun removePairForKey!465 (List!49071 K!10305) List!49071)

(assert (=> b!4358463 (= res!1791592 (not (= newBucket!200 (Cons!48947 lt!1570891 (removePairForKey!465 lt!1570897 key!3918)))))))

(declare-fun newValue!99 () V!10551)

(assert (=> b!4358463 (= lt!1570891 (tuple2!48351 key!3918 newValue!99))))

(declare-datatypes ((tuple2!48352 0))(
  ( (tuple2!48353 (_1!27470 (_ BitVec 64)) (_2!27470 List!49071)) )
))
(declare-datatypes ((List!49072 0))(
  ( (Nil!48948) (Cons!48948 (h!54503 tuple2!48352) (t!355992 List!49072)) )
))
(declare-datatypes ((ListLongMap!1623 0))(
  ( (ListLongMap!1624 (toList!2973 List!49072)) )
))
(declare-fun lm!1707 () ListLongMap!1623)

(declare-fun lt!1570885 () tuple2!48352)

(declare-fun lambda!140887 () Int)

(declare-datatypes ((Unit!71975 0))(
  ( (Unit!71976) )
))
(declare-fun lt!1570890 () Unit!71975)

(declare-fun forallContained!1773 (List!49072 Int tuple2!48352) Unit!71975)

(assert (=> b!4358463 (= lt!1570890 (forallContained!1773 (toList!2973 lm!1707) lambda!140887 lt!1570885))))

(declare-fun contains!11161 (List!49072 tuple2!48352) Bool)

(assert (=> b!4358463 (contains!11161 (toList!2973 lm!1707) lt!1570885)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4358463 (= lt!1570885 (tuple2!48353 hash!377 lt!1570897))))

(declare-fun lt!1570887 () Unit!71975)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!342 (List!49072 (_ BitVec 64) List!49071) Unit!71975)

(assert (=> b!4358463 (= lt!1570887 (lemmaGetValueByKeyImpliesContainsTuple!342 (toList!2973 lm!1707) hash!377 lt!1570897))))

(declare-fun apply!11347 (ListLongMap!1623 (_ BitVec 64)) List!49071)

(assert (=> b!4358463 (= lt!1570897 (apply!11347 lm!1707 hash!377))))

(declare-fun b!4358464 () Bool)

(declare-fun res!1791587 () Bool)

(declare-fun e!2712386 () Bool)

(assert (=> b!4358464 (=> (not res!1791587) (not e!2712386))))

(declare-datatypes ((Hashable!4887 0))(
  ( (HashableExt!4886 (__x!30590 Int)) )
))
(declare-fun hashF!1247 () Hashable!4887)

(declare-fun allKeysSameHash!453 (List!49071 (_ BitVec 64) Hashable!4887) Bool)

(assert (=> b!4358464 (= res!1791587 (allKeysSameHash!453 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4358465 () Bool)

(declare-fun res!1791590 () Bool)

(assert (=> b!4358465 (=> (not res!1791590) (not e!2712386))))

(declare-fun hash!1579 (Hashable!4887 K!10305) (_ BitVec 64))

(assert (=> b!4358465 (= res!1791590 (= (hash!1579 hashF!1247 key!3918) hash!377))))

(declare-fun b!4358466 () Bool)

(declare-fun res!1791585 () Bool)

(assert (=> b!4358466 (=> (not res!1791585) (not e!2712388))))

(declare-fun contains!11162 (ListLongMap!1623 (_ BitVec 64)) Bool)

(assert (=> b!4358466 (= res!1791585 (contains!11162 lm!1707 hash!377))))

(declare-fun b!4358467 () Bool)

(declare-fun e!2712387 () Bool)

(declare-fun containsKey!704 (List!49071 K!10305) Bool)

(assert (=> b!4358467 (= e!2712387 (not (containsKey!704 (_2!27470 (h!54503 (toList!2973 lm!1707))) key!3918)))))

(declare-fun b!4358468 () Bool)

(declare-fun e!2712385 () Bool)

(assert (=> b!4358468 (= e!2712382 e!2712385)))

(declare-fun res!1791584 () Bool)

(assert (=> b!4358468 (=> res!1791584 e!2712385)))

(get-info :version)

(assert (=> b!4358468 (= res!1791584 (or (and ((_ is Cons!48948) (toList!2973 lm!1707)) (= (_1!27470 (h!54503 (toList!2973 lm!1707))) hash!377)) (not ((_ is Cons!48948) (toList!2973 lm!1707))) (= (_1!27470 (h!54503 (toList!2973 lm!1707))) hash!377)))))

(declare-fun e!2712384 () Bool)

(assert (=> b!4358468 e!2712384))

(declare-fun res!1791588 () Bool)

(assert (=> b!4358468 (=> (not res!1791588) (not e!2712384))))

(declare-fun lt!1570901 () ListLongMap!1623)

(declare-fun forall!9132 (List!49072 Int) Bool)

(assert (=> b!4358468 (= res!1791588 (forall!9132 (toList!2973 lt!1570901) lambda!140887))))

(declare-fun lt!1570902 () tuple2!48352)

(declare-fun +!647 (ListLongMap!1623 tuple2!48352) ListLongMap!1623)

(assert (=> b!4358468 (= lt!1570901 (+!647 lm!1707 lt!1570902))))

(assert (=> b!4358468 (= lt!1570902 (tuple2!48353 hash!377 newBucket!200))))

(declare-fun lt!1570893 () Unit!71975)

(declare-fun addValidProp!149 (ListLongMap!1623 Int (_ BitVec 64) List!49071) Unit!71975)

(assert (=> b!4358468 (= lt!1570893 (addValidProp!149 lm!1707 lambda!140887 hash!377 newBucket!200))))

(assert (=> b!4358468 (forall!9132 (toList!2973 lm!1707) lambda!140887)))

(declare-fun b!4358469 () Bool)

(declare-fun e!2712381 () Bool)

(declare-fun head!9058 (ListLongMap!1623) tuple2!48352)

(assert (=> b!4358469 (= e!2712381 (not (= (head!9058 lm!1707) lt!1570902)))))

(declare-fun b!4358470 () Bool)

(assert (=> b!4358470 (= e!2712386 e!2712388)))

(declare-fun res!1791586 () Bool)

(assert (=> b!4358470 (=> (not res!1791586) (not e!2712388))))

(declare-datatypes ((ListMap!2217 0))(
  ( (ListMap!2218 (toList!2974 List!49071)) )
))
(declare-fun lt!1570896 () ListMap!2217)

(declare-fun contains!11163 (ListMap!2217 K!10305) Bool)

(assert (=> b!4358470 (= res!1791586 (contains!11163 lt!1570896 key!3918))))

(declare-fun extractMap!554 (List!49072) ListMap!2217)

(assert (=> b!4358470 (= lt!1570896 (extractMap!554 (toList!2973 lm!1707)))))

(declare-fun b!4358471 () Bool)

(declare-fun res!1791594 () Bool)

(assert (=> b!4358471 (=> res!1791594 e!2712382)))

(declare-fun noDuplicateKeys!495 (List!49071) Bool)

(assert (=> b!4358471 (= res!1791594 (not (noDuplicateKeys!495 newBucket!200)))))

(declare-fun b!4358472 () Bool)

(declare-fun e!2712380 () Bool)

(declare-fun tp!1330212 () Bool)

(assert (=> b!4358472 (= e!2712380 tp!1330212)))

(declare-fun b!4358473 () Bool)

(assert (=> b!4358473 (= e!2712385 (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(declare-fun lt!1570899 () ListMap!2217)

(declare-fun lt!1570889 () ListMap!2217)

(declare-fun eq!265 (ListMap!2217 ListMap!2217) Bool)

(declare-fun addToMapMapFromBucket!191 (List!49071 ListMap!2217) ListMap!2217)

(declare-fun +!648 (ListMap!2217 tuple2!48350) ListMap!2217)

(assert (=> b!4358473 (eq!265 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570889) (+!648 lt!1570899 lt!1570891))))

(declare-fun lt!1570894 () ListMap!2217)

(declare-fun lt!1570898 () Unit!71975)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!74 (ListMap!2217 K!10305 V!10551 List!49071) Unit!71975)

(assert (=> b!4358473 (= lt!1570898 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!74 lt!1570894 key!3918 newValue!99 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(assert (=> b!4358473 (= lt!1570896 lt!1570899)))

(assert (=> b!4358473 (= lt!1570899 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570894))))

(assert (=> b!4358473 e!2712381))

(declare-fun res!1791593 () Bool)

(assert (=> b!4358473 (=> (not res!1791593) (not e!2712381))))

(declare-fun lt!1570884 () ListMap!2217)

(assert (=> b!4358473 (= res!1791593 (eq!265 lt!1570884 lt!1570889))))

(assert (=> b!4358473 (= lt!1570889 (+!648 lt!1570894 lt!1570891))))

(declare-fun lt!1570900 () ListLongMap!1623)

(assert (=> b!4358473 (= lt!1570884 (extractMap!554 (toList!2973 (+!647 lt!1570900 lt!1570902))))))

(declare-fun lt!1570892 () Unit!71975)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!99 (ListLongMap!1623 (_ BitVec 64) List!49071 K!10305 V!10551 Hashable!4887) Unit!71975)

(assert (=> b!4358473 (= lt!1570892 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!99 lt!1570900 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4358473 (contains!11163 lt!1570894 key!3918)))

(assert (=> b!4358473 (= lt!1570894 (extractMap!554 (toList!2973 lt!1570900)))))

(declare-fun tail!7006 (ListLongMap!1623) ListLongMap!1623)

(assert (=> b!4358473 (= lt!1570900 (tail!7006 lm!1707))))

(declare-fun lt!1570888 () ListMap!2217)

(assert (=> b!4358473 (contains!11163 lt!1570888 key!3918)))

(declare-fun lt!1570886 () Unit!71975)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!38 (List!49071 K!10305 V!10551 ListMap!2217) Unit!71975)

(assert (=> b!4358473 (= lt!1570886 (lemmaAddToMapContainsAndNotInListThenInAcc!38 (_2!27470 (h!54503 (toList!2973 lm!1707))) key!3918 newValue!99 lt!1570888))))

(assert (=> b!4358473 (= lt!1570888 (extractMap!554 (t!355992 (toList!2973 lm!1707))))))

(assert (=> b!4358473 e!2712387))

(declare-fun res!1791589 () Bool)

(assert (=> b!4358473 (=> (not res!1791589) (not e!2712387))))

(assert (=> b!4358473 (= res!1791589 (not (containsKey!704 (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707)))) key!3918)))))

(declare-fun lt!1570895 () Unit!71975)

(declare-fun lemmaNotSameHashThenCannotContainKey!42 (ListLongMap!1623 K!10305 (_ BitVec 64) Hashable!4887) Unit!71975)

(assert (=> b!4358473 (= lt!1570895 (lemmaNotSameHashThenCannotContainKey!42 lm!1707 key!3918 (_1!27470 (h!54503 (toList!2973 lm!1707))) hashF!1247))))

(declare-fun b!4358474 () Bool)

(declare-fun res!1791595 () Bool)

(assert (=> b!4358474 (=> (not res!1791595) (not e!2712386))))

(declare-fun allKeysSameHashInMap!599 (ListLongMap!1623 Hashable!4887) Bool)

(assert (=> b!4358474 (= res!1791595 (allKeysSameHashInMap!599 lm!1707 hashF!1247))))

(declare-fun b!4358475 () Bool)

(assert (=> b!4358475 (= e!2712384 (forall!9132 (toList!2973 lt!1570901) lambda!140887))))

(declare-fun res!1791591 () Bool)

(assert (=> start!422016 (=> (not res!1791591) (not e!2712386))))

(assert (=> start!422016 (= res!1791591 (forall!9132 (toList!2973 lm!1707) lambda!140887))))

(assert (=> start!422016 e!2712386))

(declare-fun e!2712383 () Bool)

(assert (=> start!422016 e!2712383))

(assert (=> start!422016 true))

(declare-fun inv!64491 (ListLongMap!1623) Bool)

(assert (=> start!422016 (and (inv!64491 lm!1707) e!2712380)))

(declare-fun tp_is_empty!25217 () Bool)

(assert (=> start!422016 tp_is_empty!25217))

(declare-fun tp_is_empty!25219 () Bool)

(assert (=> start!422016 tp_is_empty!25219))

(declare-fun b!4358476 () Bool)

(declare-fun tp!1330211 () Bool)

(assert (=> b!4358476 (= e!2712383 (and tp_is_empty!25217 tp_is_empty!25219 tp!1330211))))

(assert (= (and start!422016 res!1791591) b!4358474))

(assert (= (and b!4358474 res!1791595) b!4358465))

(assert (= (and b!4358465 res!1791590) b!4358464))

(assert (= (and b!4358464 res!1791587) b!4358470))

(assert (= (and b!4358470 res!1791586) b!4358466))

(assert (= (and b!4358466 res!1791585) b!4358463))

(assert (= (and b!4358463 (not res!1791592)) b!4358471))

(assert (= (and b!4358471 (not res!1791594)) b!4358468))

(assert (= (and b!4358468 res!1791588) b!4358475))

(assert (= (and b!4358468 (not res!1791584)) b!4358473))

(assert (= (and b!4358473 res!1791589) b!4358467))

(assert (= (and b!4358473 res!1791593) b!4358469))

(assert (= (and start!422016 ((_ is Cons!48947) newBucket!200)) b!4358476))

(assert (= start!422016 b!4358472))

(declare-fun m!4974357 () Bool)

(assert (=> b!4358468 m!4974357))

(declare-fun m!4974359 () Bool)

(assert (=> b!4358468 m!4974359))

(declare-fun m!4974361 () Bool)

(assert (=> b!4358468 m!4974361))

(declare-fun m!4974363 () Bool)

(assert (=> b!4358468 m!4974363))

(declare-fun m!4974365 () Bool)

(assert (=> b!4358469 m!4974365))

(declare-fun m!4974367 () Bool)

(assert (=> b!4358474 m!4974367))

(declare-fun m!4974369 () Bool)

(assert (=> b!4358463 m!4974369))

(declare-fun m!4974371 () Bool)

(assert (=> b!4358463 m!4974371))

(declare-fun m!4974373 () Bool)

(assert (=> b!4358463 m!4974373))

(declare-fun m!4974375 () Bool)

(assert (=> b!4358463 m!4974375))

(declare-fun m!4974377 () Bool)

(assert (=> b!4358463 m!4974377))

(declare-fun m!4974379 () Bool)

(assert (=> b!4358471 m!4974379))

(declare-fun m!4974381 () Bool)

(assert (=> b!4358464 m!4974381))

(declare-fun m!4974383 () Bool)

(assert (=> b!4358467 m!4974383))

(declare-fun m!4974385 () Bool)

(assert (=> b!4358473 m!4974385))

(declare-fun m!4974387 () Bool)

(assert (=> b!4358473 m!4974387))

(declare-fun m!4974389 () Bool)

(assert (=> b!4358473 m!4974389))

(declare-fun m!4974391 () Bool)

(assert (=> b!4358473 m!4974391))

(declare-fun m!4974393 () Bool)

(assert (=> b!4358473 m!4974393))

(declare-fun m!4974395 () Bool)

(assert (=> b!4358473 m!4974395))

(declare-fun m!4974397 () Bool)

(assert (=> b!4358473 m!4974397))

(declare-fun m!4974399 () Bool)

(assert (=> b!4358473 m!4974399))

(declare-fun m!4974401 () Bool)

(assert (=> b!4358473 m!4974401))

(declare-fun m!4974403 () Bool)

(assert (=> b!4358473 m!4974403))

(declare-fun m!4974405 () Bool)

(assert (=> b!4358473 m!4974405))

(declare-fun m!4974407 () Bool)

(assert (=> b!4358473 m!4974407))

(declare-fun m!4974409 () Bool)

(assert (=> b!4358473 m!4974409))

(declare-fun m!4974411 () Bool)

(assert (=> b!4358473 m!4974411))

(declare-fun m!4974413 () Bool)

(assert (=> b!4358473 m!4974413))

(declare-fun m!4974415 () Bool)

(assert (=> b!4358473 m!4974415))

(declare-fun m!4974417 () Bool)

(assert (=> b!4358473 m!4974417))

(assert (=> b!4358473 m!4974415))

(declare-fun m!4974419 () Bool)

(assert (=> b!4358473 m!4974419))

(assert (=> b!4358473 m!4974411))

(declare-fun m!4974421 () Bool)

(assert (=> b!4358473 m!4974421))

(assert (=> b!4358473 m!4974409))

(declare-fun m!4974423 () Bool)

(assert (=> b!4358473 m!4974423))

(declare-fun m!4974425 () Bool)

(assert (=> b!4358465 m!4974425))

(assert (=> start!422016 m!4974363))

(declare-fun m!4974427 () Bool)

(assert (=> start!422016 m!4974427))

(declare-fun m!4974429 () Bool)

(assert (=> b!4358470 m!4974429))

(declare-fun m!4974431 () Bool)

(assert (=> b!4358470 m!4974431))

(declare-fun m!4974433 () Bool)

(assert (=> b!4358466 m!4974433))

(assert (=> b!4358475 m!4974357))

(check-sat (not start!422016) (not b!4358464) (not b!4358465) tp_is_empty!25219 (not b!4358470) (not b!4358476) (not b!4358468) (not b!4358463) (not b!4358475) (not b!4358466) (not b!4358471) tp_is_empty!25217 (not b!4358469) (not b!4358474) (not b!4358472) (not b!4358467) (not b!4358473))
(check-sat)
(get-model)

(declare-fun b!4358568 () Bool)

(declare-fun e!2712454 () Unit!71975)

(declare-fun lt!1570970 () Unit!71975)

(assert (=> b!4358568 (= e!2712454 lt!1570970)))

(declare-fun lt!1570972 () Unit!71975)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!373 (List!49071 K!10305) Unit!71975)

(assert (=> b!4358568 (= lt!1570972 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!2974 lt!1570896) key!3918))))

(declare-datatypes ((Option!10476 0))(
  ( (None!10475) (Some!10475 (v!43365 V!10551)) )
))
(declare-fun isDefined!7770 (Option!10476) Bool)

(declare-fun getValueByKey!462 (List!49071 K!10305) Option!10476)

(assert (=> b!4358568 (isDefined!7770 (getValueByKey!462 (toList!2974 lt!1570896) key!3918))))

(declare-fun lt!1570976 () Unit!71975)

(assert (=> b!4358568 (= lt!1570976 lt!1570972)))

(declare-fun lemmaInListThenGetKeysListContains!127 (List!49071 K!10305) Unit!71975)

(assert (=> b!4358568 (= lt!1570970 (lemmaInListThenGetKeysListContains!127 (toList!2974 lt!1570896) key!3918))))

(declare-fun call!302932 () Bool)

(assert (=> b!4358568 call!302932))

(declare-fun b!4358569 () Bool)

(declare-fun e!2712459 () Bool)

(declare-datatypes ((List!49074 0))(
  ( (Nil!48950) (Cons!48950 (h!54507 K!10305) (t!355994 List!49074)) )
))
(declare-fun contains!11166 (List!49074 K!10305) Bool)

(declare-fun keys!16538 (ListMap!2217) List!49074)

(assert (=> b!4358569 (= e!2712459 (not (contains!11166 (keys!16538 lt!1570896) key!3918)))))

(declare-fun b!4358570 () Bool)

(declare-fun e!2712456 () Unit!71975)

(assert (=> b!4358570 (= e!2712454 e!2712456)))

(declare-fun c!741088 () Bool)

(assert (=> b!4358570 (= c!741088 call!302932)))

(declare-fun b!4358572 () Bool)

(declare-fun e!2712457 () List!49074)

(declare-fun getKeysList!130 (List!49071) List!49074)

(assert (=> b!4358572 (= e!2712457 (getKeysList!130 (toList!2974 lt!1570896)))))

(declare-fun b!4358573 () Bool)

(declare-fun Unit!71980 () Unit!71975)

(assert (=> b!4358573 (= e!2712456 Unit!71980)))

(declare-fun b!4358574 () Bool)

(assert (=> b!4358574 false))

(declare-fun lt!1570974 () Unit!71975)

(declare-fun lt!1570975 () Unit!71975)

(assert (=> b!4358574 (= lt!1570974 lt!1570975)))

(declare-fun containsKey!707 (List!49071 K!10305) Bool)

(assert (=> b!4358574 (containsKey!707 (toList!2974 lt!1570896) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!128 (List!49071 K!10305) Unit!71975)

(assert (=> b!4358574 (= lt!1570975 (lemmaInGetKeysListThenContainsKey!128 (toList!2974 lt!1570896) key!3918))))

(declare-fun Unit!71982 () Unit!71975)

(assert (=> b!4358574 (= e!2712456 Unit!71982)))

(declare-fun bm!302927 () Bool)

(assert (=> bm!302927 (= call!302932 (contains!11166 e!2712457 key!3918))))

(declare-fun c!741089 () Bool)

(declare-fun c!741090 () Bool)

(assert (=> bm!302927 (= c!741089 c!741090)))

(declare-fun d!1288921 () Bool)

(declare-fun e!2712455 () Bool)

(assert (=> d!1288921 e!2712455))

(declare-fun res!1791652 () Bool)

(assert (=> d!1288921 (=> res!1791652 e!2712455)))

(assert (=> d!1288921 (= res!1791652 e!2712459)))

(declare-fun res!1791654 () Bool)

(assert (=> d!1288921 (=> (not res!1791654) (not e!2712459))))

(declare-fun lt!1570977 () Bool)

(assert (=> d!1288921 (= res!1791654 (not lt!1570977))))

(declare-fun lt!1570971 () Bool)

(assert (=> d!1288921 (= lt!1570977 lt!1570971)))

(declare-fun lt!1570973 () Unit!71975)

(assert (=> d!1288921 (= lt!1570973 e!2712454)))

(assert (=> d!1288921 (= c!741090 lt!1570971)))

(assert (=> d!1288921 (= lt!1570971 (containsKey!707 (toList!2974 lt!1570896) key!3918))))

(assert (=> d!1288921 (= (contains!11163 lt!1570896 key!3918) lt!1570977)))

(declare-fun b!4358571 () Bool)

(declare-fun e!2712458 () Bool)

(assert (=> b!4358571 (= e!2712458 (contains!11166 (keys!16538 lt!1570896) key!3918))))

(declare-fun b!4358575 () Bool)

(assert (=> b!4358575 (= e!2712455 e!2712458)))

(declare-fun res!1791653 () Bool)

(assert (=> b!4358575 (=> (not res!1791653) (not e!2712458))))

(assert (=> b!4358575 (= res!1791653 (isDefined!7770 (getValueByKey!462 (toList!2974 lt!1570896) key!3918)))))

(declare-fun b!4358576 () Bool)

(assert (=> b!4358576 (= e!2712457 (keys!16538 lt!1570896))))

(assert (= (and d!1288921 c!741090) b!4358568))

(assert (= (and d!1288921 (not c!741090)) b!4358570))

(assert (= (and b!4358570 c!741088) b!4358574))

(assert (= (and b!4358570 (not c!741088)) b!4358573))

(assert (= (or b!4358568 b!4358570) bm!302927))

(assert (= (and bm!302927 c!741089) b!4358572))

(assert (= (and bm!302927 (not c!741089)) b!4358576))

(assert (= (and d!1288921 res!1791654) b!4358569))

(assert (= (and d!1288921 (not res!1791652)) b!4358575))

(assert (= (and b!4358575 res!1791653) b!4358571))

(declare-fun m!4974519 () Bool)

(assert (=> b!4358571 m!4974519))

(assert (=> b!4358571 m!4974519))

(declare-fun m!4974521 () Bool)

(assert (=> b!4358571 m!4974521))

(declare-fun m!4974523 () Bool)

(assert (=> bm!302927 m!4974523))

(declare-fun m!4974525 () Bool)

(assert (=> b!4358574 m!4974525))

(declare-fun m!4974527 () Bool)

(assert (=> b!4358574 m!4974527))

(declare-fun m!4974529 () Bool)

(assert (=> b!4358568 m!4974529))

(declare-fun m!4974531 () Bool)

(assert (=> b!4358568 m!4974531))

(assert (=> b!4358568 m!4974531))

(declare-fun m!4974533 () Bool)

(assert (=> b!4358568 m!4974533))

(declare-fun m!4974535 () Bool)

(assert (=> b!4358568 m!4974535))

(declare-fun m!4974537 () Bool)

(assert (=> b!4358572 m!4974537))

(assert (=> b!4358569 m!4974519))

(assert (=> b!4358569 m!4974519))

(assert (=> b!4358569 m!4974521))

(assert (=> d!1288921 m!4974525))

(assert (=> b!4358575 m!4974531))

(assert (=> b!4358575 m!4974531))

(assert (=> b!4358575 m!4974533))

(assert (=> b!4358576 m!4974519))

(assert (=> b!4358470 d!1288921))

(declare-fun bs!632992 () Bool)

(declare-fun d!1288933 () Bool)

(assert (= bs!632992 (and d!1288933 start!422016)))

(declare-fun lambda!140899 () Int)

(assert (=> bs!632992 (= lambda!140899 lambda!140887)))

(declare-fun lt!1570993 () ListMap!2217)

(declare-fun invariantList!682 (List!49071) Bool)

(assert (=> d!1288933 (invariantList!682 (toList!2974 lt!1570993))))

(declare-fun e!2712468 () ListMap!2217)

(assert (=> d!1288933 (= lt!1570993 e!2712468)))

(declare-fun c!741096 () Bool)

(assert (=> d!1288933 (= c!741096 ((_ is Cons!48948) (toList!2973 lm!1707)))))

(assert (=> d!1288933 (forall!9132 (toList!2973 lm!1707) lambda!140899)))

(assert (=> d!1288933 (= (extractMap!554 (toList!2973 lm!1707)) lt!1570993)))

(declare-fun b!4358591 () Bool)

(assert (=> b!4358591 (= e!2712468 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) (extractMap!554 (t!355992 (toList!2973 lm!1707)))))))

(declare-fun b!4358592 () Bool)

(assert (=> b!4358592 (= e!2712468 (ListMap!2218 Nil!48947))))

(assert (= (and d!1288933 c!741096) b!4358591))

(assert (= (and d!1288933 (not c!741096)) b!4358592))

(declare-fun m!4974595 () Bool)

(assert (=> d!1288933 m!4974595))

(declare-fun m!4974597 () Bool)

(assert (=> d!1288933 m!4974597))

(assert (=> b!4358591 m!4974393))

(assert (=> b!4358591 m!4974393))

(declare-fun m!4974599 () Bool)

(assert (=> b!4358591 m!4974599))

(assert (=> b!4358470 d!1288933))

(declare-fun d!1288951 () Bool)

(declare-fun res!1791665 () Bool)

(declare-fun e!2712474 () Bool)

(assert (=> d!1288951 (=> res!1791665 e!2712474)))

(assert (=> d!1288951 (= res!1791665 ((_ is Nil!48948) (toList!2973 lm!1707)))))

(assert (=> d!1288951 (= (forall!9132 (toList!2973 lm!1707) lambda!140887) e!2712474)))

(declare-fun b!4358599 () Bool)

(declare-fun e!2712475 () Bool)

(assert (=> b!4358599 (= e!2712474 e!2712475)))

(declare-fun res!1791666 () Bool)

(assert (=> b!4358599 (=> (not res!1791666) (not e!2712475))))

(declare-fun dynLambda!20641 (Int tuple2!48352) Bool)

(assert (=> b!4358599 (= res!1791666 (dynLambda!20641 lambda!140887 (h!54503 (toList!2973 lm!1707))))))

(declare-fun b!4358600 () Bool)

(assert (=> b!4358600 (= e!2712475 (forall!9132 (t!355992 (toList!2973 lm!1707)) lambda!140887))))

(assert (= (and d!1288951 (not res!1791665)) b!4358599))

(assert (= (and b!4358599 res!1791666) b!4358600))

(declare-fun b_lambda!131499 () Bool)

(assert (=> (not b_lambda!131499) (not b!4358599)))

(declare-fun m!4974601 () Bool)

(assert (=> b!4358599 m!4974601))

(declare-fun m!4974603 () Bool)

(assert (=> b!4358600 m!4974603))

(assert (=> start!422016 d!1288951))

(declare-fun d!1288953 () Bool)

(declare-fun isStrictlySorted!108 (List!49072) Bool)

(assert (=> d!1288953 (= (inv!64491 lm!1707) (isStrictlySorted!108 (toList!2973 lm!1707)))))

(declare-fun bs!632993 () Bool)

(assert (= bs!632993 d!1288953))

(declare-fun m!4974605 () Bool)

(assert (=> bs!632993 m!4974605))

(assert (=> start!422016 d!1288953))

(declare-fun d!1288955 () Bool)

(declare-fun res!1791671 () Bool)

(declare-fun e!2712480 () Bool)

(assert (=> d!1288955 (=> res!1791671 e!2712480)))

(assert (=> d!1288955 (= res!1791671 (not ((_ is Cons!48947) newBucket!200)))))

(assert (=> d!1288955 (= (noDuplicateKeys!495 newBucket!200) e!2712480)))

(declare-fun b!4358605 () Bool)

(declare-fun e!2712481 () Bool)

(assert (=> b!4358605 (= e!2712480 e!2712481)))

(declare-fun res!1791672 () Bool)

(assert (=> b!4358605 (=> (not res!1791672) (not e!2712481))))

(assert (=> b!4358605 (= res!1791672 (not (containsKey!704 (t!355991 newBucket!200) (_1!27469 (h!54502 newBucket!200)))))))

(declare-fun b!4358606 () Bool)

(assert (=> b!4358606 (= e!2712481 (noDuplicateKeys!495 (t!355991 newBucket!200)))))

(assert (= (and d!1288955 (not res!1791671)) b!4358605))

(assert (= (and b!4358605 res!1791672) b!4358606))

(declare-fun m!4974607 () Bool)

(assert (=> b!4358605 m!4974607))

(declare-fun m!4974609 () Bool)

(assert (=> b!4358606 m!4974609))

(assert (=> b!4358471 d!1288955))

(declare-fun d!1288957 () Bool)

(declare-fun head!9060 (List!49072) tuple2!48352)

(assert (=> d!1288957 (= (head!9058 lm!1707) (head!9060 (toList!2973 lm!1707)))))

(declare-fun bs!632994 () Bool)

(assert (= bs!632994 d!1288957))

(declare-fun m!4974611 () Bool)

(assert (=> bs!632994 m!4974611))

(assert (=> b!4358469 d!1288957))

(declare-fun d!1288959 () Bool)

(declare-fun res!1791673 () Bool)

(declare-fun e!2712486 () Bool)

(assert (=> d!1288959 (=> res!1791673 e!2712486)))

(assert (=> d!1288959 (= res!1791673 ((_ is Nil!48948) (toList!2973 lt!1570901)))))

(assert (=> d!1288959 (= (forall!9132 (toList!2973 lt!1570901) lambda!140887) e!2712486)))

(declare-fun b!4358615 () Bool)

(declare-fun e!2712487 () Bool)

(assert (=> b!4358615 (= e!2712486 e!2712487)))

(declare-fun res!1791674 () Bool)

(assert (=> b!4358615 (=> (not res!1791674) (not e!2712487))))

(assert (=> b!4358615 (= res!1791674 (dynLambda!20641 lambda!140887 (h!54503 (toList!2973 lt!1570901))))))

(declare-fun b!4358616 () Bool)

(assert (=> b!4358616 (= e!2712487 (forall!9132 (t!355992 (toList!2973 lt!1570901)) lambda!140887))))

(assert (= (and d!1288959 (not res!1791673)) b!4358615))

(assert (= (and b!4358615 res!1791674) b!4358616))

(declare-fun b_lambda!131501 () Bool)

(assert (=> (not b_lambda!131501) (not b!4358615)))

(declare-fun m!4974613 () Bool)

(assert (=> b!4358615 m!4974613))

(declare-fun m!4974615 () Bool)

(assert (=> b!4358616 m!4974615))

(assert (=> b!4358468 d!1288959))

(declare-fun d!1288961 () Bool)

(declare-fun e!2712504 () Bool)

(assert (=> d!1288961 e!2712504))

(declare-fun res!1791688 () Bool)

(assert (=> d!1288961 (=> (not res!1791688) (not e!2712504))))

(declare-fun lt!1571031 () ListLongMap!1623)

(assert (=> d!1288961 (= res!1791688 (contains!11162 lt!1571031 (_1!27470 lt!1570902)))))

(declare-fun lt!1571033 () List!49072)

(assert (=> d!1288961 (= lt!1571031 (ListLongMap!1624 lt!1571033))))

(declare-fun lt!1571032 () Unit!71975)

(declare-fun lt!1571030 () Unit!71975)

(assert (=> d!1288961 (= lt!1571032 lt!1571030)))

(declare-datatypes ((Option!10477 0))(
  ( (None!10476) (Some!10476 (v!43366 List!49071)) )
))
(declare-fun getValueByKey!463 (List!49072 (_ BitVec 64)) Option!10477)

(assert (=> d!1288961 (= (getValueByKey!463 lt!1571033 (_1!27470 lt!1570902)) (Some!10476 (_2!27470 lt!1570902)))))

(declare-fun lemmaContainsTupThenGetReturnValue!236 (List!49072 (_ BitVec 64) List!49071) Unit!71975)

(assert (=> d!1288961 (= lt!1571030 (lemmaContainsTupThenGetReturnValue!236 lt!1571033 (_1!27470 lt!1570902) (_2!27470 lt!1570902)))))

(declare-fun insertStrictlySorted!139 (List!49072 (_ BitVec 64) List!49071) List!49072)

(assert (=> d!1288961 (= lt!1571033 (insertStrictlySorted!139 (toList!2973 lm!1707) (_1!27470 lt!1570902) (_2!27470 lt!1570902)))))

(assert (=> d!1288961 (= (+!647 lm!1707 lt!1570902) lt!1571031)))

(declare-fun b!4358640 () Bool)

(declare-fun res!1791689 () Bool)

(assert (=> b!4358640 (=> (not res!1791689) (not e!2712504))))

(assert (=> b!4358640 (= res!1791689 (= (getValueByKey!463 (toList!2973 lt!1571031) (_1!27470 lt!1570902)) (Some!10476 (_2!27470 lt!1570902))))))

(declare-fun b!4358641 () Bool)

(assert (=> b!4358641 (= e!2712504 (contains!11161 (toList!2973 lt!1571031) lt!1570902))))

(assert (= (and d!1288961 res!1791688) b!4358640))

(assert (= (and b!4358640 res!1791689) b!4358641))

(declare-fun m!4974637 () Bool)

(assert (=> d!1288961 m!4974637))

(declare-fun m!4974639 () Bool)

(assert (=> d!1288961 m!4974639))

(declare-fun m!4974641 () Bool)

(assert (=> d!1288961 m!4974641))

(declare-fun m!4974643 () Bool)

(assert (=> d!1288961 m!4974643))

(declare-fun m!4974645 () Bool)

(assert (=> b!4358640 m!4974645))

(declare-fun m!4974647 () Bool)

(assert (=> b!4358641 m!4974647))

(assert (=> b!4358468 d!1288961))

(declare-fun d!1288965 () Bool)

(assert (=> d!1288965 (forall!9132 (toList!2973 (+!647 lm!1707 (tuple2!48353 hash!377 newBucket!200))) lambda!140887)))

(declare-fun lt!1571036 () Unit!71975)

(declare-fun choose!26957 (ListLongMap!1623 Int (_ BitVec 64) List!49071) Unit!71975)

(assert (=> d!1288965 (= lt!1571036 (choose!26957 lm!1707 lambda!140887 hash!377 newBucket!200))))

(declare-fun e!2712507 () Bool)

(assert (=> d!1288965 e!2712507))

(declare-fun res!1791692 () Bool)

(assert (=> d!1288965 (=> (not res!1791692) (not e!2712507))))

(assert (=> d!1288965 (= res!1791692 (forall!9132 (toList!2973 lm!1707) lambda!140887))))

(assert (=> d!1288965 (= (addValidProp!149 lm!1707 lambda!140887 hash!377 newBucket!200) lt!1571036)))

(declare-fun b!4358645 () Bool)

(assert (=> b!4358645 (= e!2712507 (dynLambda!20641 lambda!140887 (tuple2!48353 hash!377 newBucket!200)))))

(assert (= (and d!1288965 res!1791692) b!4358645))

(declare-fun b_lambda!131503 () Bool)

(assert (=> (not b_lambda!131503) (not b!4358645)))

(declare-fun m!4974649 () Bool)

(assert (=> d!1288965 m!4974649))

(declare-fun m!4974651 () Bool)

(assert (=> d!1288965 m!4974651))

(declare-fun m!4974653 () Bool)

(assert (=> d!1288965 m!4974653))

(assert (=> d!1288965 m!4974363))

(declare-fun m!4974655 () Bool)

(assert (=> b!4358645 m!4974655))

(assert (=> b!4358468 d!1288965))

(assert (=> b!4358468 d!1288951))

(declare-fun d!1288967 () Bool)

(declare-fun e!2712513 () Bool)

(assert (=> d!1288967 e!2712513))

(declare-fun res!1791695 () Bool)

(assert (=> d!1288967 (=> res!1791695 e!2712513)))

(declare-fun lt!1571045 () Bool)

(assert (=> d!1288967 (= res!1791695 (not lt!1571045))))

(declare-fun lt!1571046 () Bool)

(assert (=> d!1288967 (= lt!1571045 lt!1571046)))

(declare-fun lt!1571048 () Unit!71975)

(declare-fun e!2712512 () Unit!71975)

(assert (=> d!1288967 (= lt!1571048 e!2712512)))

(declare-fun c!741108 () Bool)

(assert (=> d!1288967 (= c!741108 lt!1571046)))

(declare-fun containsKey!708 (List!49072 (_ BitVec 64)) Bool)

(assert (=> d!1288967 (= lt!1571046 (containsKey!708 (toList!2973 lm!1707) hash!377))))

(assert (=> d!1288967 (= (contains!11162 lm!1707 hash!377) lt!1571045)))

(declare-fun b!4358652 () Bool)

(declare-fun lt!1571047 () Unit!71975)

(assert (=> b!4358652 (= e!2712512 lt!1571047)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!374 (List!49072 (_ BitVec 64)) Unit!71975)

(assert (=> b!4358652 (= lt!1571047 (lemmaContainsKeyImpliesGetValueByKeyDefined!374 (toList!2973 lm!1707) hash!377))))

(declare-fun isDefined!7771 (Option!10477) Bool)

(assert (=> b!4358652 (isDefined!7771 (getValueByKey!463 (toList!2973 lm!1707) hash!377))))

(declare-fun b!4358653 () Bool)

(declare-fun Unit!71995 () Unit!71975)

(assert (=> b!4358653 (= e!2712512 Unit!71995)))

(declare-fun b!4358654 () Bool)

(assert (=> b!4358654 (= e!2712513 (isDefined!7771 (getValueByKey!463 (toList!2973 lm!1707) hash!377)))))

(assert (= (and d!1288967 c!741108) b!4358652))

(assert (= (and d!1288967 (not c!741108)) b!4358653))

(assert (= (and d!1288967 (not res!1791695)) b!4358654))

(declare-fun m!4974657 () Bool)

(assert (=> d!1288967 m!4974657))

(declare-fun m!4974659 () Bool)

(assert (=> b!4358652 m!4974659))

(declare-fun m!4974661 () Bool)

(assert (=> b!4358652 m!4974661))

(assert (=> b!4358652 m!4974661))

(declare-fun m!4974663 () Bool)

(assert (=> b!4358652 m!4974663))

(assert (=> b!4358654 m!4974661))

(assert (=> b!4358654 m!4974661))

(assert (=> b!4358654 m!4974663))

(assert (=> b!4358466 d!1288967))

(declare-fun d!1288969 () Bool)

(declare-fun res!1791700 () Bool)

(declare-fun e!2712518 () Bool)

(assert (=> d!1288969 (=> res!1791700 e!2712518)))

(assert (=> d!1288969 (= res!1791700 (and ((_ is Cons!48947) (_2!27470 (h!54503 (toList!2973 lm!1707)))) (= (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))) key!3918)))))

(assert (=> d!1288969 (= (containsKey!704 (_2!27470 (h!54503 (toList!2973 lm!1707))) key!3918) e!2712518)))

(declare-fun b!4358659 () Bool)

(declare-fun e!2712519 () Bool)

(assert (=> b!4358659 (= e!2712518 e!2712519)))

(declare-fun res!1791701 () Bool)

(assert (=> b!4358659 (=> (not res!1791701) (not e!2712519))))

(assert (=> b!4358659 (= res!1791701 ((_ is Cons!48947) (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(declare-fun b!4358660 () Bool)

(assert (=> b!4358660 (= e!2712519 (containsKey!704 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707)))) key!3918))))

(assert (= (and d!1288969 (not res!1791700)) b!4358659))

(assert (= (and b!4358659 res!1791701) b!4358660))

(declare-fun m!4974665 () Bool)

(assert (=> b!4358660 m!4974665))

(assert (=> b!4358467 d!1288969))

(declare-fun d!1288971 () Bool)

(declare-fun hash!1585 (Hashable!4887 K!10305) (_ BitVec 64))

(assert (=> d!1288971 (= (hash!1579 hashF!1247 key!3918) (hash!1585 hashF!1247 key!3918))))

(declare-fun bs!632995 () Bool)

(assert (= bs!632995 d!1288971))

(declare-fun m!4974667 () Bool)

(assert (=> bs!632995 m!4974667))

(assert (=> b!4358465 d!1288971))

(declare-fun bs!632996 () Bool)

(declare-fun d!1288973 () Bool)

(assert (= bs!632996 (and d!1288973 start!422016)))

(declare-fun lambda!140902 () Int)

(assert (=> bs!632996 (not (= lambda!140902 lambda!140887))))

(declare-fun bs!632997 () Bool)

(assert (= bs!632997 (and d!1288973 d!1288933)))

(assert (=> bs!632997 (not (= lambda!140902 lambda!140899))))

(assert (=> d!1288973 true))

(assert (=> d!1288973 (= (allKeysSameHashInMap!599 lm!1707 hashF!1247) (forall!9132 (toList!2973 lm!1707) lambda!140902))))

(declare-fun bs!632998 () Bool)

(assert (= bs!632998 d!1288973))

(declare-fun m!4974669 () Bool)

(assert (=> bs!632998 m!4974669))

(assert (=> b!4358474 d!1288973))

(assert (=> b!4358475 d!1288959))

(declare-fun d!1288975 () Bool)

(assert (=> d!1288975 true))

(assert (=> d!1288975 true))

(declare-fun lambda!140905 () Int)

(declare-fun forall!9134 (List!49071 Int) Bool)

(assert (=> d!1288975 (= (allKeysSameHash!453 newBucket!200 hash!377 hashF!1247) (forall!9134 newBucket!200 lambda!140905))))

(declare-fun bs!632999 () Bool)

(assert (= bs!632999 d!1288975))

(declare-fun m!4974671 () Bool)

(assert (=> bs!632999 m!4974671))

(assert (=> b!4358464 d!1288975))

(declare-fun bs!633056 () Bool)

(declare-fun b!4358741 () Bool)

(assert (= bs!633056 (and b!4358741 d!1288975)))

(declare-fun lambda!140979 () Int)

(assert (=> bs!633056 (not (= lambda!140979 lambda!140905))))

(assert (=> b!4358741 true))

(declare-fun bs!633057 () Bool)

(declare-fun b!4358740 () Bool)

(assert (= bs!633057 (and b!4358740 d!1288975)))

(declare-fun lambda!140980 () Int)

(assert (=> bs!633057 (not (= lambda!140980 lambda!140905))))

(declare-fun bs!633058 () Bool)

(assert (= bs!633058 (and b!4358740 b!4358741)))

(assert (=> bs!633058 (= lambda!140980 lambda!140979)))

(assert (=> b!4358740 true))

(declare-fun lambda!140981 () Int)

(assert (=> bs!633057 (not (= lambda!140981 lambda!140905))))

(declare-fun lt!1571214 () ListMap!2217)

(assert (=> bs!633058 (= (= lt!1571214 lt!1570894) (= lambda!140981 lambda!140979))))

(assert (=> b!4358740 (= (= lt!1571214 lt!1570894) (= lambda!140981 lambda!140980))))

(assert (=> b!4358740 true))

(declare-fun bs!633059 () Bool)

(declare-fun d!1288977 () Bool)

(assert (= bs!633059 (and d!1288977 d!1288975)))

(declare-fun lambda!140982 () Int)

(assert (=> bs!633059 (not (= lambda!140982 lambda!140905))))

(declare-fun bs!633060 () Bool)

(assert (= bs!633060 (and d!1288977 b!4358741)))

(declare-fun lt!1571204 () ListMap!2217)

(assert (=> bs!633060 (= (= lt!1571204 lt!1570894) (= lambda!140982 lambda!140979))))

(declare-fun bs!633061 () Bool)

(assert (= bs!633061 (and d!1288977 b!4358740)))

(assert (=> bs!633061 (= (= lt!1571204 lt!1570894) (= lambda!140982 lambda!140980))))

(assert (=> bs!633061 (= (= lt!1571204 lt!1571214) (= lambda!140982 lambda!140981))))

(assert (=> d!1288977 true))

(declare-fun call!302957 () Bool)

(declare-fun c!741124 () Bool)

(declare-fun bm!302951 () Bool)

(assert (=> bm!302951 (= call!302957 (forall!9134 (toList!2974 lt!1570894) (ite c!741124 lambda!140979 lambda!140981)))))

(declare-fun bm!302952 () Bool)

(declare-fun call!302956 () Bool)

(assert (=> bm!302952 (= call!302956 (forall!9134 (toList!2974 lt!1570894) (ite c!741124 lambda!140979 lambda!140981)))))

(declare-fun b!4358737 () Bool)

(declare-fun e!2712563 () Bool)

(assert (=> b!4358737 (= e!2712563 call!302956)))

(declare-fun e!2712562 () Bool)

(assert (=> d!1288977 e!2712562))

(declare-fun res!1791729 () Bool)

(assert (=> d!1288977 (=> (not res!1791729) (not e!2712562))))

(assert (=> d!1288977 (= res!1791729 (forall!9134 (_2!27470 (h!54503 (toList!2973 lm!1707))) lambda!140982))))

(declare-fun e!2712561 () ListMap!2217)

(assert (=> d!1288977 (= lt!1571204 e!2712561)))

(assert (=> d!1288977 (= c!741124 ((_ is Nil!48947) (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(assert (=> d!1288977 (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lm!1707))))))

(assert (=> d!1288977 (= (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570894) lt!1571204)))

(declare-fun b!4358738 () Bool)

(assert (=> b!4358738 (= e!2712562 (invariantList!682 (toList!2974 lt!1571204)))))

(declare-fun b!4358739 () Bool)

(declare-fun res!1791728 () Bool)

(assert (=> b!4358739 (=> (not res!1791728) (not e!2712562))))

(assert (=> b!4358739 (= res!1791728 (forall!9134 (toList!2974 lt!1570894) lambda!140982))))

(assert (=> b!4358740 (= e!2712561 lt!1571214)))

(declare-fun lt!1571200 () ListMap!2217)

(assert (=> b!4358740 (= lt!1571200 (+!648 lt!1570894 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(assert (=> b!4358740 (= lt!1571214 (addToMapMapFromBucket!191 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707)))) (+!648 lt!1570894 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))))

(declare-fun lt!1571203 () Unit!71975)

(declare-fun call!302958 () Unit!71975)

(assert (=> b!4358740 (= lt!1571203 call!302958)))

(assert (=> b!4358740 (forall!9134 (toList!2974 lt!1570894) lambda!140980)))

(declare-fun lt!1571206 () Unit!71975)

(assert (=> b!4358740 (= lt!1571206 lt!1571203)))

(assert (=> b!4358740 (forall!9134 (toList!2974 lt!1571200) lambda!140981)))

(declare-fun lt!1571209 () Unit!71975)

(declare-fun Unit!71996 () Unit!71975)

(assert (=> b!4358740 (= lt!1571209 Unit!71996)))

(assert (=> b!4358740 (forall!9134 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707)))) lambda!140981)))

(declare-fun lt!1571208 () Unit!71975)

(declare-fun Unit!71997 () Unit!71975)

(assert (=> b!4358740 (= lt!1571208 Unit!71997)))

(declare-fun lt!1571212 () Unit!71975)

(declare-fun Unit!71998 () Unit!71975)

(assert (=> b!4358740 (= lt!1571212 Unit!71998)))

(declare-fun lt!1571205 () Unit!71975)

(declare-fun forallContained!1775 (List!49071 Int tuple2!48350) Unit!71975)

(assert (=> b!4358740 (= lt!1571205 (forallContained!1775 (toList!2974 lt!1571200) lambda!140981 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(assert (=> b!4358740 (contains!11163 lt!1571200 (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(declare-fun lt!1571216 () Unit!71975)

(declare-fun Unit!71999 () Unit!71975)

(assert (=> b!4358740 (= lt!1571216 Unit!71999)))

(assert (=> b!4358740 (contains!11163 lt!1571214 (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(declare-fun lt!1571210 () Unit!71975)

(declare-fun Unit!72000 () Unit!71975)

(assert (=> b!4358740 (= lt!1571210 Unit!72000)))

(assert (=> b!4358740 (forall!9134 (_2!27470 (h!54503 (toList!2973 lm!1707))) lambda!140981)))

(declare-fun lt!1571218 () Unit!71975)

(declare-fun Unit!72001 () Unit!71975)

(assert (=> b!4358740 (= lt!1571218 Unit!72001)))

(assert (=> b!4358740 (forall!9134 (toList!2974 lt!1571200) lambda!140981)))

(declare-fun lt!1571213 () Unit!71975)

(declare-fun Unit!72002 () Unit!71975)

(assert (=> b!4358740 (= lt!1571213 Unit!72002)))

(declare-fun lt!1571217 () Unit!71975)

(declare-fun Unit!72003 () Unit!71975)

(assert (=> b!4358740 (= lt!1571217 Unit!72003)))

(declare-fun lt!1571201 () Unit!71975)

(declare-fun addForallContainsKeyThenBeforeAdding!65 (ListMap!2217 ListMap!2217 K!10305 V!10551) Unit!71975)

(assert (=> b!4358740 (= lt!1571201 (addForallContainsKeyThenBeforeAdding!65 lt!1570894 lt!1571214 (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))) (_2!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))))

(assert (=> b!4358740 (forall!9134 (toList!2974 lt!1570894) lambda!140981)))

(declare-fun lt!1571202 () Unit!71975)

(assert (=> b!4358740 (= lt!1571202 lt!1571201)))

(assert (=> b!4358740 call!302957))

(declare-fun lt!1571219 () Unit!71975)

(declare-fun Unit!72004 () Unit!71975)

(assert (=> b!4358740 (= lt!1571219 Unit!72004)))

(declare-fun res!1791730 () Bool)

(assert (=> b!4358740 (= res!1791730 (forall!9134 (_2!27470 (h!54503 (toList!2973 lm!1707))) lambda!140981))))

(assert (=> b!4358740 (=> (not res!1791730) (not e!2712563))))

(assert (=> b!4358740 e!2712563))

(declare-fun lt!1571211 () Unit!71975)

(declare-fun Unit!72005 () Unit!71975)

(assert (=> b!4358740 (= lt!1571211 Unit!72005)))

(declare-fun bm!302953 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!65 (ListMap!2217) Unit!71975)

(assert (=> bm!302953 (= call!302958 (lemmaContainsAllItsOwnKeys!65 lt!1570894))))

(assert (=> b!4358741 (= e!2712561 lt!1570894)))

(declare-fun lt!1571220 () Unit!71975)

(assert (=> b!4358741 (= lt!1571220 call!302958)))

(assert (=> b!4358741 call!302956))

(declare-fun lt!1571207 () Unit!71975)

(assert (=> b!4358741 (= lt!1571207 lt!1571220)))

(assert (=> b!4358741 call!302957))

(declare-fun lt!1571215 () Unit!71975)

(declare-fun Unit!72006 () Unit!71975)

(assert (=> b!4358741 (= lt!1571215 Unit!72006)))

(assert (= (and d!1288977 c!741124) b!4358741))

(assert (= (and d!1288977 (not c!741124)) b!4358740))

(assert (= (and b!4358740 res!1791730) b!4358737))

(assert (= (or b!4358741 b!4358740) bm!302953))

(assert (= (or b!4358741 b!4358740) bm!302951))

(assert (= (or b!4358741 b!4358737) bm!302952))

(assert (= (and d!1288977 res!1791729) b!4358739))

(assert (= (and b!4358739 res!1791728) b!4358738))

(declare-fun m!4974831 () Bool)

(assert (=> b!4358738 m!4974831))

(declare-fun m!4974833 () Bool)

(assert (=> bm!302952 m!4974833))

(declare-fun m!4974835 () Bool)

(assert (=> b!4358739 m!4974835))

(declare-fun m!4974837 () Bool)

(assert (=> bm!302953 m!4974837))

(assert (=> bm!302951 m!4974833))

(declare-fun m!4974839 () Bool)

(assert (=> b!4358740 m!4974839))

(declare-fun m!4974841 () Bool)

(assert (=> b!4358740 m!4974841))

(declare-fun m!4974843 () Bool)

(assert (=> b!4358740 m!4974843))

(declare-fun m!4974845 () Bool)

(assert (=> b!4358740 m!4974845))

(declare-fun m!4974847 () Bool)

(assert (=> b!4358740 m!4974847))

(declare-fun m!4974849 () Bool)

(assert (=> b!4358740 m!4974849))

(declare-fun m!4974851 () Bool)

(assert (=> b!4358740 m!4974851))

(assert (=> b!4358740 m!4974841))

(declare-fun m!4974853 () Bool)

(assert (=> b!4358740 m!4974853))

(declare-fun m!4974855 () Bool)

(assert (=> b!4358740 m!4974855))

(declare-fun m!4974857 () Bool)

(assert (=> b!4358740 m!4974857))

(assert (=> b!4358740 m!4974851))

(declare-fun m!4974859 () Bool)

(assert (=> b!4358740 m!4974859))

(assert (=> b!4358740 m!4974857))

(declare-fun m!4974861 () Bool)

(assert (=> d!1288977 m!4974861))

(assert (=> d!1288977 m!4974403))

(assert (=> b!4358473 d!1288977))

(declare-fun d!1289013 () Bool)

(declare-fun get!15902 (Option!10477) List!49071)

(assert (=> d!1289013 (= (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707)))) (get!15902 (getValueByKey!463 (toList!2973 lm!1707) (_1!27470 (h!54503 (toList!2973 lm!1707))))))))

(declare-fun bs!633062 () Bool)

(assert (= bs!633062 d!1289013))

(declare-fun m!4974863 () Bool)

(assert (=> bs!633062 m!4974863))

(assert (=> bs!633062 m!4974863))

(declare-fun m!4974865 () Bool)

(assert (=> bs!633062 m!4974865))

(assert (=> b!4358473 d!1289013))

(declare-fun d!1289015 () Bool)

(declare-fun res!1791731 () Bool)

(declare-fun e!2712564 () Bool)

(assert (=> d!1289015 (=> res!1791731 e!2712564)))

(assert (=> d!1289015 (= res!1791731 (and ((_ is Cons!48947) (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707))))) (= (_1!27469 (h!54502 (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707)))))) key!3918)))))

(assert (=> d!1289015 (= (containsKey!704 (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707)))) key!3918) e!2712564)))

(declare-fun b!4358744 () Bool)

(declare-fun e!2712565 () Bool)

(assert (=> b!4358744 (= e!2712564 e!2712565)))

(declare-fun res!1791732 () Bool)

(assert (=> b!4358744 (=> (not res!1791732) (not e!2712565))))

(assert (=> b!4358744 (= res!1791732 ((_ is Cons!48947) (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707))))))))

(declare-fun b!4358745 () Bool)

(assert (=> b!4358745 (= e!2712565 (containsKey!704 (t!355991 (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707))))) key!3918))))

(assert (= (and d!1289015 (not res!1791731)) b!4358744))

(assert (= (and b!4358744 res!1791732) b!4358745))

(declare-fun m!4974867 () Bool)

(assert (=> b!4358745 m!4974867))

(assert (=> b!4358473 d!1289015))

(declare-fun d!1289017 () Bool)

(assert (=> d!1289017 (contains!11163 lt!1570888 key!3918)))

(declare-fun lt!1571223 () Unit!71975)

(declare-fun choose!26960 (List!49071 K!10305 V!10551 ListMap!2217) Unit!71975)

(assert (=> d!1289017 (= lt!1571223 (choose!26960 (_2!27470 (h!54503 (toList!2973 lm!1707))) key!3918 newValue!99 lt!1570888))))

(assert (=> d!1289017 (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lm!1707))))))

(assert (=> d!1289017 (= (lemmaAddToMapContainsAndNotInListThenInAcc!38 (_2!27470 (h!54503 (toList!2973 lm!1707))) key!3918 newValue!99 lt!1570888) lt!1571223)))

(declare-fun bs!633063 () Bool)

(assert (= bs!633063 d!1289017))

(assert (=> bs!633063 m!4974395))

(declare-fun m!4974869 () Bool)

(assert (=> bs!633063 m!4974869))

(assert (=> bs!633063 m!4974403))

(assert (=> b!4358473 d!1289017))

(declare-fun b!4358746 () Bool)

(declare-fun e!2712566 () Unit!71975)

(declare-fun lt!1571224 () Unit!71975)

(assert (=> b!4358746 (= e!2712566 lt!1571224)))

(declare-fun lt!1571226 () Unit!71975)

(assert (=> b!4358746 (= lt!1571226 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!2974 lt!1570894) key!3918))))

(assert (=> b!4358746 (isDefined!7770 (getValueByKey!462 (toList!2974 lt!1570894) key!3918))))

(declare-fun lt!1571230 () Unit!71975)

(assert (=> b!4358746 (= lt!1571230 lt!1571226)))

(assert (=> b!4358746 (= lt!1571224 (lemmaInListThenGetKeysListContains!127 (toList!2974 lt!1570894) key!3918))))

(declare-fun call!302959 () Bool)

(assert (=> b!4358746 call!302959))

(declare-fun b!4358747 () Bool)

(declare-fun e!2712571 () Bool)

(assert (=> b!4358747 (= e!2712571 (not (contains!11166 (keys!16538 lt!1570894) key!3918)))))

(declare-fun b!4358748 () Bool)

(declare-fun e!2712568 () Unit!71975)

(assert (=> b!4358748 (= e!2712566 e!2712568)))

(declare-fun c!741125 () Bool)

(assert (=> b!4358748 (= c!741125 call!302959)))

(declare-fun b!4358750 () Bool)

(declare-fun e!2712569 () List!49074)

(assert (=> b!4358750 (= e!2712569 (getKeysList!130 (toList!2974 lt!1570894)))))

(declare-fun b!4358751 () Bool)

(declare-fun Unit!72018 () Unit!71975)

(assert (=> b!4358751 (= e!2712568 Unit!72018)))

(declare-fun b!4358752 () Bool)

(assert (=> b!4358752 false))

(declare-fun lt!1571228 () Unit!71975)

(declare-fun lt!1571229 () Unit!71975)

(assert (=> b!4358752 (= lt!1571228 lt!1571229)))

(assert (=> b!4358752 (containsKey!707 (toList!2974 lt!1570894) key!3918)))

(assert (=> b!4358752 (= lt!1571229 (lemmaInGetKeysListThenContainsKey!128 (toList!2974 lt!1570894) key!3918))))

(declare-fun Unit!72019 () Unit!71975)

(assert (=> b!4358752 (= e!2712568 Unit!72019)))

(declare-fun bm!302954 () Bool)

(assert (=> bm!302954 (= call!302959 (contains!11166 e!2712569 key!3918))))

(declare-fun c!741126 () Bool)

(declare-fun c!741127 () Bool)

(assert (=> bm!302954 (= c!741126 c!741127)))

(declare-fun d!1289019 () Bool)

(declare-fun e!2712567 () Bool)

(assert (=> d!1289019 e!2712567))

(declare-fun res!1791733 () Bool)

(assert (=> d!1289019 (=> res!1791733 e!2712567)))

(assert (=> d!1289019 (= res!1791733 e!2712571)))

(declare-fun res!1791735 () Bool)

(assert (=> d!1289019 (=> (not res!1791735) (not e!2712571))))

(declare-fun lt!1571231 () Bool)

(assert (=> d!1289019 (= res!1791735 (not lt!1571231))))

(declare-fun lt!1571225 () Bool)

(assert (=> d!1289019 (= lt!1571231 lt!1571225)))

(declare-fun lt!1571227 () Unit!71975)

(assert (=> d!1289019 (= lt!1571227 e!2712566)))

(assert (=> d!1289019 (= c!741127 lt!1571225)))

(assert (=> d!1289019 (= lt!1571225 (containsKey!707 (toList!2974 lt!1570894) key!3918))))

(assert (=> d!1289019 (= (contains!11163 lt!1570894 key!3918) lt!1571231)))

(declare-fun b!4358749 () Bool)

(declare-fun e!2712570 () Bool)

(assert (=> b!4358749 (= e!2712570 (contains!11166 (keys!16538 lt!1570894) key!3918))))

(declare-fun b!4358753 () Bool)

(assert (=> b!4358753 (= e!2712567 e!2712570)))

(declare-fun res!1791734 () Bool)

(assert (=> b!4358753 (=> (not res!1791734) (not e!2712570))))

(assert (=> b!4358753 (= res!1791734 (isDefined!7770 (getValueByKey!462 (toList!2974 lt!1570894) key!3918)))))

(declare-fun b!4358754 () Bool)

(assert (=> b!4358754 (= e!2712569 (keys!16538 lt!1570894))))

(assert (= (and d!1289019 c!741127) b!4358746))

(assert (= (and d!1289019 (not c!741127)) b!4358748))

(assert (= (and b!4358748 c!741125) b!4358752))

(assert (= (and b!4358748 (not c!741125)) b!4358751))

(assert (= (or b!4358746 b!4358748) bm!302954))

(assert (= (and bm!302954 c!741126) b!4358750))

(assert (= (and bm!302954 (not c!741126)) b!4358754))

(assert (= (and d!1289019 res!1791735) b!4358747))

(assert (= (and d!1289019 (not res!1791733)) b!4358753))

(assert (= (and b!4358753 res!1791734) b!4358749))

(declare-fun m!4974871 () Bool)

(assert (=> b!4358749 m!4974871))

(assert (=> b!4358749 m!4974871))

(declare-fun m!4974873 () Bool)

(assert (=> b!4358749 m!4974873))

(declare-fun m!4974875 () Bool)

(assert (=> bm!302954 m!4974875))

(declare-fun m!4974877 () Bool)

(assert (=> b!4358752 m!4974877))

(declare-fun m!4974879 () Bool)

(assert (=> b!4358752 m!4974879))

(declare-fun m!4974881 () Bool)

(assert (=> b!4358746 m!4974881))

(declare-fun m!4974883 () Bool)

(assert (=> b!4358746 m!4974883))

(assert (=> b!4358746 m!4974883))

(declare-fun m!4974885 () Bool)

(assert (=> b!4358746 m!4974885))

(declare-fun m!4974887 () Bool)

(assert (=> b!4358746 m!4974887))

(declare-fun m!4974889 () Bool)

(assert (=> b!4358750 m!4974889))

(assert (=> b!4358747 m!4974871))

(assert (=> b!4358747 m!4974871))

(assert (=> b!4358747 m!4974873))

(assert (=> d!1289019 m!4974877))

(assert (=> b!4358753 m!4974883))

(assert (=> b!4358753 m!4974883))

(assert (=> b!4358753 m!4974885))

(assert (=> b!4358754 m!4974871))

(assert (=> b!4358473 d!1289019))

(declare-fun bs!633064 () Bool)

(declare-fun d!1289021 () Bool)

(assert (= bs!633064 (and d!1289021 start!422016)))

(declare-fun lambda!140985 () Int)

(assert (=> bs!633064 (= lambda!140985 lambda!140887)))

(declare-fun bs!633065 () Bool)

(assert (= bs!633065 (and d!1289021 d!1288933)))

(assert (=> bs!633065 (= lambda!140985 lambda!140899)))

(declare-fun bs!633066 () Bool)

(assert (= bs!633066 (and d!1289021 d!1288973)))

(assert (=> bs!633066 (not (= lambda!140985 lambda!140902))))

(assert (=> d!1289021 (eq!265 (extractMap!554 (toList!2973 (+!647 lt!1570900 (tuple2!48353 hash!377 newBucket!200)))) (+!648 (extractMap!554 (toList!2973 lt!1570900)) (tuple2!48351 key!3918 newValue!99)))))

(declare-fun lt!1571234 () Unit!71975)

(declare-fun choose!26961 (ListLongMap!1623 (_ BitVec 64) List!49071 K!10305 V!10551 Hashable!4887) Unit!71975)

(assert (=> d!1289021 (= lt!1571234 (choose!26961 lt!1570900 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1289021 (forall!9132 (toList!2973 lt!1570900) lambda!140985)))

(assert (=> d!1289021 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!99 lt!1570900 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1571234)))

(declare-fun bs!633067 () Bool)

(assert (= bs!633067 d!1289021))

(declare-fun m!4974891 () Bool)

(assert (=> bs!633067 m!4974891))

(declare-fun m!4974893 () Bool)

(assert (=> bs!633067 m!4974893))

(assert (=> bs!633067 m!4974893))

(declare-fun m!4974895 () Bool)

(assert (=> bs!633067 m!4974895))

(declare-fun m!4974897 () Bool)

(assert (=> bs!633067 m!4974897))

(declare-fun m!4974899 () Bool)

(assert (=> bs!633067 m!4974899))

(assert (=> bs!633067 m!4974391))

(assert (=> bs!633067 m!4974895))

(declare-fun m!4974901 () Bool)

(assert (=> bs!633067 m!4974901))

(assert (=> bs!633067 m!4974391))

(assert (=> b!4358473 d!1289021))

(declare-fun bs!633068 () Bool)

(declare-fun b!4358759 () Bool)

(assert (= bs!633068 (and b!4358759 b!4358740)))

(declare-fun lambda!140986 () Int)

(assert (=> bs!633068 (= (= lt!1570889 lt!1570894) (= lambda!140986 lambda!140980))))

(declare-fun bs!633069 () Bool)

(assert (= bs!633069 (and b!4358759 b!4358741)))

(assert (=> bs!633069 (= (= lt!1570889 lt!1570894) (= lambda!140986 lambda!140979))))

(assert (=> bs!633068 (= (= lt!1570889 lt!1571214) (= lambda!140986 lambda!140981))))

(declare-fun bs!633070 () Bool)

(assert (= bs!633070 (and b!4358759 d!1288977)))

(assert (=> bs!633070 (= (= lt!1570889 lt!1571204) (= lambda!140986 lambda!140982))))

(declare-fun bs!633071 () Bool)

(assert (= bs!633071 (and b!4358759 d!1288975)))

(assert (=> bs!633071 (not (= lambda!140986 lambda!140905))))

(assert (=> b!4358759 true))

(declare-fun bs!633072 () Bool)

(declare-fun b!4358758 () Bool)

(assert (= bs!633072 (and b!4358758 b!4358740)))

(declare-fun lambda!140987 () Int)

(assert (=> bs!633072 (= (= lt!1570889 lt!1570894) (= lambda!140987 lambda!140980))))

(declare-fun bs!633073 () Bool)

(assert (= bs!633073 (and b!4358758 b!4358741)))

(assert (=> bs!633073 (= (= lt!1570889 lt!1570894) (= lambda!140987 lambda!140979))))

(assert (=> bs!633072 (= (= lt!1570889 lt!1571214) (= lambda!140987 lambda!140981))))

(declare-fun bs!633074 () Bool)

(assert (= bs!633074 (and b!4358758 d!1288977)))

(assert (=> bs!633074 (= (= lt!1570889 lt!1571204) (= lambda!140987 lambda!140982))))

(declare-fun bs!633075 () Bool)

(assert (= bs!633075 (and b!4358758 d!1288975)))

(assert (=> bs!633075 (not (= lambda!140987 lambda!140905))))

(declare-fun bs!633076 () Bool)

(assert (= bs!633076 (and b!4358758 b!4358759)))

(assert (=> bs!633076 (= lambda!140987 lambda!140986)))

(assert (=> b!4358758 true))

(declare-fun lt!1571249 () ListMap!2217)

(declare-fun lambda!140988 () Int)

(assert (=> bs!633072 (= (= lt!1571249 lt!1570894) (= lambda!140988 lambda!140980))))

(assert (=> bs!633073 (= (= lt!1571249 lt!1570894) (= lambda!140988 lambda!140979))))

(assert (=> bs!633072 (= (= lt!1571249 lt!1571214) (= lambda!140988 lambda!140981))))

(assert (=> b!4358758 (= (= lt!1571249 lt!1570889) (= lambda!140988 lambda!140987))))

(assert (=> bs!633074 (= (= lt!1571249 lt!1571204) (= lambda!140988 lambda!140982))))

(assert (=> bs!633075 (not (= lambda!140988 lambda!140905))))

(assert (=> bs!633076 (= (= lt!1571249 lt!1570889) (= lambda!140988 lambda!140986))))

(assert (=> b!4358758 true))

(declare-fun bs!633077 () Bool)

(declare-fun d!1289023 () Bool)

(assert (= bs!633077 (and d!1289023 b!4358740)))

(declare-fun lambda!140989 () Int)

(declare-fun lt!1571239 () ListMap!2217)

(assert (=> bs!633077 (= (= lt!1571239 lt!1570894) (= lambda!140989 lambda!140980))))

(declare-fun bs!633078 () Bool)

(assert (= bs!633078 (and d!1289023 b!4358741)))

(assert (=> bs!633078 (= (= lt!1571239 lt!1570894) (= lambda!140989 lambda!140979))))

(assert (=> bs!633077 (= (= lt!1571239 lt!1571214) (= lambda!140989 lambda!140981))))

(declare-fun bs!633079 () Bool)

(assert (= bs!633079 (and d!1289023 b!4358758)))

(assert (=> bs!633079 (= (= lt!1571239 lt!1570889) (= lambda!140989 lambda!140987))))

(declare-fun bs!633080 () Bool)

(assert (= bs!633080 (and d!1289023 d!1288977)))

(assert (=> bs!633080 (= (= lt!1571239 lt!1571204) (= lambda!140989 lambda!140982))))

(declare-fun bs!633081 () Bool)

(assert (= bs!633081 (and d!1289023 d!1288975)))

(assert (=> bs!633081 (not (= lambda!140989 lambda!140905))))

(assert (=> bs!633079 (= (= lt!1571239 lt!1571249) (= lambda!140989 lambda!140988))))

(declare-fun bs!633082 () Bool)

(assert (= bs!633082 (and d!1289023 b!4358759)))

(assert (=> bs!633082 (= (= lt!1571239 lt!1570889) (= lambda!140989 lambda!140986))))

(assert (=> d!1289023 true))

(declare-fun c!741128 () Bool)

(declare-fun call!302961 () Bool)

(declare-fun bm!302955 () Bool)

(assert (=> bm!302955 (= call!302961 (forall!9134 (toList!2974 lt!1570889) (ite c!741128 lambda!140986 lambda!140988)))))

(declare-fun call!302960 () Bool)

(declare-fun bm!302956 () Bool)

(assert (=> bm!302956 (= call!302960 (forall!9134 (toList!2974 lt!1570889) (ite c!741128 lambda!140986 lambda!140988)))))

(declare-fun b!4358755 () Bool)

(declare-fun e!2712574 () Bool)

(assert (=> b!4358755 (= e!2712574 call!302960)))

(declare-fun e!2712573 () Bool)

(assert (=> d!1289023 e!2712573))

(declare-fun res!1791737 () Bool)

(assert (=> d!1289023 (=> (not res!1791737) (not e!2712573))))

(assert (=> d!1289023 (= res!1791737 (forall!9134 (_2!27470 (h!54503 (toList!2973 lm!1707))) lambda!140989))))

(declare-fun e!2712572 () ListMap!2217)

(assert (=> d!1289023 (= lt!1571239 e!2712572)))

(assert (=> d!1289023 (= c!741128 ((_ is Nil!48947) (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(assert (=> d!1289023 (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lm!1707))))))

(assert (=> d!1289023 (= (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570889) lt!1571239)))

(declare-fun b!4358756 () Bool)

(assert (=> b!4358756 (= e!2712573 (invariantList!682 (toList!2974 lt!1571239)))))

(declare-fun b!4358757 () Bool)

(declare-fun res!1791736 () Bool)

(assert (=> b!4358757 (=> (not res!1791736) (not e!2712573))))

(assert (=> b!4358757 (= res!1791736 (forall!9134 (toList!2974 lt!1570889) lambda!140989))))

(assert (=> b!4358758 (= e!2712572 lt!1571249)))

(declare-fun lt!1571235 () ListMap!2217)

(assert (=> b!4358758 (= lt!1571235 (+!648 lt!1570889 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(assert (=> b!4358758 (= lt!1571249 (addToMapMapFromBucket!191 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707)))) (+!648 lt!1570889 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))))

(declare-fun lt!1571238 () Unit!71975)

(declare-fun call!302962 () Unit!71975)

(assert (=> b!4358758 (= lt!1571238 call!302962)))

(assert (=> b!4358758 (forall!9134 (toList!2974 lt!1570889) lambda!140987)))

(declare-fun lt!1571241 () Unit!71975)

(assert (=> b!4358758 (= lt!1571241 lt!1571238)))

(assert (=> b!4358758 (forall!9134 (toList!2974 lt!1571235) lambda!140988)))

(declare-fun lt!1571244 () Unit!71975)

(declare-fun Unit!72022 () Unit!71975)

(assert (=> b!4358758 (= lt!1571244 Unit!72022)))

(assert (=> b!4358758 (forall!9134 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707)))) lambda!140988)))

(declare-fun lt!1571243 () Unit!71975)

(declare-fun Unit!72023 () Unit!71975)

(assert (=> b!4358758 (= lt!1571243 Unit!72023)))

(declare-fun lt!1571247 () Unit!71975)

(declare-fun Unit!72024 () Unit!71975)

(assert (=> b!4358758 (= lt!1571247 Unit!72024)))

(declare-fun lt!1571240 () Unit!71975)

(assert (=> b!4358758 (= lt!1571240 (forallContained!1775 (toList!2974 lt!1571235) lambda!140988 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(assert (=> b!4358758 (contains!11163 lt!1571235 (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(declare-fun lt!1571251 () Unit!71975)

(declare-fun Unit!72025 () Unit!71975)

(assert (=> b!4358758 (= lt!1571251 Unit!72025)))

(assert (=> b!4358758 (contains!11163 lt!1571249 (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(declare-fun lt!1571245 () Unit!71975)

(declare-fun Unit!72026 () Unit!71975)

(assert (=> b!4358758 (= lt!1571245 Unit!72026)))

(assert (=> b!4358758 (forall!9134 (_2!27470 (h!54503 (toList!2973 lm!1707))) lambda!140988)))

(declare-fun lt!1571253 () Unit!71975)

(declare-fun Unit!72027 () Unit!71975)

(assert (=> b!4358758 (= lt!1571253 Unit!72027)))

(assert (=> b!4358758 (forall!9134 (toList!2974 lt!1571235) lambda!140988)))

(declare-fun lt!1571248 () Unit!71975)

(declare-fun Unit!72028 () Unit!71975)

(assert (=> b!4358758 (= lt!1571248 Unit!72028)))

(declare-fun lt!1571252 () Unit!71975)

(declare-fun Unit!72029 () Unit!71975)

(assert (=> b!4358758 (= lt!1571252 Unit!72029)))

(declare-fun lt!1571236 () Unit!71975)

(assert (=> b!4358758 (= lt!1571236 (addForallContainsKeyThenBeforeAdding!65 lt!1570889 lt!1571249 (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))) (_2!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))))

(assert (=> b!4358758 (forall!9134 (toList!2974 lt!1570889) lambda!140988)))

(declare-fun lt!1571237 () Unit!71975)

(assert (=> b!4358758 (= lt!1571237 lt!1571236)))

(assert (=> b!4358758 call!302961))

(declare-fun lt!1571254 () Unit!71975)

(declare-fun Unit!72030 () Unit!71975)

(assert (=> b!4358758 (= lt!1571254 Unit!72030)))

(declare-fun res!1791738 () Bool)

(assert (=> b!4358758 (= res!1791738 (forall!9134 (_2!27470 (h!54503 (toList!2973 lm!1707))) lambda!140988))))

(assert (=> b!4358758 (=> (not res!1791738) (not e!2712574))))

(assert (=> b!4358758 e!2712574))

(declare-fun lt!1571246 () Unit!71975)

(declare-fun Unit!72031 () Unit!71975)

(assert (=> b!4358758 (= lt!1571246 Unit!72031)))

(declare-fun bm!302957 () Bool)

(assert (=> bm!302957 (= call!302962 (lemmaContainsAllItsOwnKeys!65 lt!1570889))))

(assert (=> b!4358759 (= e!2712572 lt!1570889)))

(declare-fun lt!1571255 () Unit!71975)

(assert (=> b!4358759 (= lt!1571255 call!302962)))

(assert (=> b!4358759 call!302960))

(declare-fun lt!1571242 () Unit!71975)

(assert (=> b!4358759 (= lt!1571242 lt!1571255)))

(assert (=> b!4358759 call!302961))

(declare-fun lt!1571250 () Unit!71975)

(declare-fun Unit!72032 () Unit!71975)

(assert (=> b!4358759 (= lt!1571250 Unit!72032)))

(assert (= (and d!1289023 c!741128) b!4358759))

(assert (= (and d!1289023 (not c!741128)) b!4358758))

(assert (= (and b!4358758 res!1791738) b!4358755))

(assert (= (or b!4358759 b!4358758) bm!302957))

(assert (= (or b!4358759 b!4358758) bm!302955))

(assert (= (or b!4358759 b!4358755) bm!302956))

(assert (= (and d!1289023 res!1791737) b!4358757))

(assert (= (and b!4358757 res!1791736) b!4358756))

(declare-fun m!4974903 () Bool)

(assert (=> b!4358756 m!4974903))

(declare-fun m!4974905 () Bool)

(assert (=> bm!302956 m!4974905))

(declare-fun m!4974907 () Bool)

(assert (=> b!4358757 m!4974907))

(declare-fun m!4974909 () Bool)

(assert (=> bm!302957 m!4974909))

(assert (=> bm!302955 m!4974905))

(declare-fun m!4974911 () Bool)

(assert (=> b!4358758 m!4974911))

(declare-fun m!4974913 () Bool)

(assert (=> b!4358758 m!4974913))

(declare-fun m!4974915 () Bool)

(assert (=> b!4358758 m!4974915))

(declare-fun m!4974917 () Bool)

(assert (=> b!4358758 m!4974917))

(declare-fun m!4974919 () Bool)

(assert (=> b!4358758 m!4974919))

(declare-fun m!4974921 () Bool)

(assert (=> b!4358758 m!4974921))

(declare-fun m!4974923 () Bool)

(assert (=> b!4358758 m!4974923))

(assert (=> b!4358758 m!4974913))

(declare-fun m!4974925 () Bool)

(assert (=> b!4358758 m!4974925))

(declare-fun m!4974927 () Bool)

(assert (=> b!4358758 m!4974927))

(declare-fun m!4974929 () Bool)

(assert (=> b!4358758 m!4974929))

(assert (=> b!4358758 m!4974923))

(declare-fun m!4974931 () Bool)

(assert (=> b!4358758 m!4974931))

(assert (=> b!4358758 m!4974929))

(declare-fun m!4974933 () Bool)

(assert (=> d!1289023 m!4974933))

(assert (=> d!1289023 m!4974403))

(assert (=> b!4358473 d!1289023))

(declare-fun d!1289025 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7730 (List!49071) (InoxSet tuple2!48350))

(assert (=> d!1289025 (= (eq!265 lt!1570884 lt!1570889) (= (content!7730 (toList!2974 lt!1570884)) (content!7730 (toList!2974 lt!1570889))))))

(declare-fun bs!633083 () Bool)

(assert (= bs!633083 d!1289025))

(declare-fun m!4974935 () Bool)

(assert (=> bs!633083 m!4974935))

(declare-fun m!4974937 () Bool)

(assert (=> bs!633083 m!4974937))

(assert (=> b!4358473 d!1289025))

(declare-fun d!1289027 () Bool)

(declare-fun e!2712575 () Bool)

(assert (=> d!1289027 e!2712575))

(declare-fun res!1791739 () Bool)

(assert (=> d!1289027 (=> (not res!1791739) (not e!2712575))))

(declare-fun lt!1571257 () ListLongMap!1623)

(assert (=> d!1289027 (= res!1791739 (contains!11162 lt!1571257 (_1!27470 lt!1570902)))))

(declare-fun lt!1571259 () List!49072)

(assert (=> d!1289027 (= lt!1571257 (ListLongMap!1624 lt!1571259))))

(declare-fun lt!1571258 () Unit!71975)

(declare-fun lt!1571256 () Unit!71975)

(assert (=> d!1289027 (= lt!1571258 lt!1571256)))

(assert (=> d!1289027 (= (getValueByKey!463 lt!1571259 (_1!27470 lt!1570902)) (Some!10476 (_2!27470 lt!1570902)))))

(assert (=> d!1289027 (= lt!1571256 (lemmaContainsTupThenGetReturnValue!236 lt!1571259 (_1!27470 lt!1570902) (_2!27470 lt!1570902)))))

(assert (=> d!1289027 (= lt!1571259 (insertStrictlySorted!139 (toList!2973 lt!1570900) (_1!27470 lt!1570902) (_2!27470 lt!1570902)))))

(assert (=> d!1289027 (= (+!647 lt!1570900 lt!1570902) lt!1571257)))

(declare-fun b!4358760 () Bool)

(declare-fun res!1791740 () Bool)

(assert (=> b!4358760 (=> (not res!1791740) (not e!2712575))))

(assert (=> b!4358760 (= res!1791740 (= (getValueByKey!463 (toList!2973 lt!1571257) (_1!27470 lt!1570902)) (Some!10476 (_2!27470 lt!1570902))))))

(declare-fun b!4358761 () Bool)

(assert (=> b!4358761 (= e!2712575 (contains!11161 (toList!2973 lt!1571257) lt!1570902))))

(assert (= (and d!1289027 res!1791739) b!4358760))

(assert (= (and b!4358760 res!1791740) b!4358761))

(declare-fun m!4974939 () Bool)

(assert (=> d!1289027 m!4974939))

(declare-fun m!4974941 () Bool)

(assert (=> d!1289027 m!4974941))

(declare-fun m!4974943 () Bool)

(assert (=> d!1289027 m!4974943))

(declare-fun m!4974945 () Bool)

(assert (=> d!1289027 m!4974945))

(declare-fun m!4974947 () Bool)

(assert (=> b!4358760 m!4974947))

(declare-fun m!4974949 () Bool)

(assert (=> b!4358761 m!4974949))

(assert (=> b!4358473 d!1289027))

(declare-fun d!1289029 () Bool)

(declare-fun tail!7008 (List!49072) List!49072)

(assert (=> d!1289029 (= (tail!7006 lm!1707) (ListLongMap!1624 (tail!7008 (toList!2973 lm!1707))))))

(declare-fun bs!633084 () Bool)

(assert (= bs!633084 d!1289029))

(declare-fun m!4974951 () Bool)

(assert (=> bs!633084 m!4974951))

(assert (=> b!4358473 d!1289029))

(declare-fun bs!633085 () Bool)

(declare-fun d!1289031 () Bool)

(assert (= bs!633085 (and d!1289031 start!422016)))

(declare-fun lambda!140990 () Int)

(assert (=> bs!633085 (= lambda!140990 lambda!140887)))

(declare-fun bs!633086 () Bool)

(assert (= bs!633086 (and d!1289031 d!1288933)))

(assert (=> bs!633086 (= lambda!140990 lambda!140899)))

(declare-fun bs!633087 () Bool)

(assert (= bs!633087 (and d!1289031 d!1288973)))

(assert (=> bs!633087 (not (= lambda!140990 lambda!140902))))

(declare-fun bs!633088 () Bool)

(assert (= bs!633088 (and d!1289031 d!1289021)))

(assert (=> bs!633088 (= lambda!140990 lambda!140985)))

(declare-fun lt!1571260 () ListMap!2217)

(assert (=> d!1289031 (invariantList!682 (toList!2974 lt!1571260))))

(declare-fun e!2712576 () ListMap!2217)

(assert (=> d!1289031 (= lt!1571260 e!2712576)))

(declare-fun c!741129 () Bool)

(assert (=> d!1289031 (= c!741129 ((_ is Cons!48948) (t!355992 (toList!2973 lm!1707))))))

(assert (=> d!1289031 (forall!9132 (t!355992 (toList!2973 lm!1707)) lambda!140990)))

(assert (=> d!1289031 (= (extractMap!554 (t!355992 (toList!2973 lm!1707))) lt!1571260)))

(declare-fun b!4358762 () Bool)

(assert (=> b!4358762 (= e!2712576 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (t!355992 (toList!2973 lm!1707)))) (extractMap!554 (t!355992 (t!355992 (toList!2973 lm!1707))))))))

(declare-fun b!4358763 () Bool)

(assert (=> b!4358763 (= e!2712576 (ListMap!2218 Nil!48947))))

(assert (= (and d!1289031 c!741129) b!4358762))

(assert (= (and d!1289031 (not c!741129)) b!4358763))

(declare-fun m!4974953 () Bool)

(assert (=> d!1289031 m!4974953))

(declare-fun m!4974955 () Bool)

(assert (=> d!1289031 m!4974955))

(declare-fun m!4974957 () Bool)

(assert (=> b!4358762 m!4974957))

(assert (=> b!4358762 m!4974957))

(declare-fun m!4974959 () Bool)

(assert (=> b!4358762 m!4974959))

(assert (=> b!4358473 d!1289031))

(declare-fun bs!633089 () Bool)

(declare-fun d!1289033 () Bool)

(assert (= bs!633089 (and d!1289033 d!1288933)))

(declare-fun lambda!140991 () Int)

(assert (=> bs!633089 (= lambda!140991 lambda!140899)))

(declare-fun bs!633090 () Bool)

(assert (= bs!633090 (and d!1289033 d!1288973)))

(assert (=> bs!633090 (not (= lambda!140991 lambda!140902))))

(declare-fun bs!633091 () Bool)

(assert (= bs!633091 (and d!1289033 start!422016)))

(assert (=> bs!633091 (= lambda!140991 lambda!140887)))

(declare-fun bs!633092 () Bool)

(assert (= bs!633092 (and d!1289033 d!1289021)))

(assert (=> bs!633092 (= lambda!140991 lambda!140985)))

(declare-fun bs!633093 () Bool)

(assert (= bs!633093 (and d!1289033 d!1289031)))

(assert (=> bs!633093 (= lambda!140991 lambda!140990)))

(declare-fun lt!1571261 () ListMap!2217)

(assert (=> d!1289033 (invariantList!682 (toList!2974 lt!1571261))))

(declare-fun e!2712577 () ListMap!2217)

(assert (=> d!1289033 (= lt!1571261 e!2712577)))

(declare-fun c!741130 () Bool)

(assert (=> d!1289033 (= c!741130 ((_ is Cons!48948) (toList!2973 lt!1570900)))))

(assert (=> d!1289033 (forall!9132 (toList!2973 lt!1570900) lambda!140991)))

(assert (=> d!1289033 (= (extractMap!554 (toList!2973 lt!1570900)) lt!1571261)))

(declare-fun b!4358764 () Bool)

(assert (=> b!4358764 (= e!2712577 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lt!1570900))) (extractMap!554 (t!355992 (toList!2973 lt!1570900)))))))

(declare-fun b!4358765 () Bool)

(assert (=> b!4358765 (= e!2712577 (ListMap!2218 Nil!48947))))

(assert (= (and d!1289033 c!741130) b!4358764))

(assert (= (and d!1289033 (not c!741130)) b!4358765))

(declare-fun m!4974961 () Bool)

(assert (=> d!1289033 m!4974961))

(declare-fun m!4974963 () Bool)

(assert (=> d!1289033 m!4974963))

(declare-fun m!4974965 () Bool)

(assert (=> b!4358764 m!4974965))

(assert (=> b!4358764 m!4974965))

(declare-fun m!4974967 () Bool)

(assert (=> b!4358764 m!4974967))

(assert (=> b!4358473 d!1289033))

(declare-fun d!1289035 () Bool)

(declare-fun e!2712580 () Bool)

(assert (=> d!1289035 e!2712580))

(declare-fun res!1791746 () Bool)

(assert (=> d!1289035 (=> (not res!1791746) (not e!2712580))))

(declare-fun lt!1571270 () ListMap!2217)

(assert (=> d!1289035 (= res!1791746 (contains!11163 lt!1571270 (_1!27469 lt!1570891)))))

(declare-fun lt!1571272 () List!49071)

(assert (=> d!1289035 (= lt!1571270 (ListMap!2218 lt!1571272))))

(declare-fun lt!1571273 () Unit!71975)

(declare-fun lt!1571271 () Unit!71975)

(assert (=> d!1289035 (= lt!1571273 lt!1571271)))

(assert (=> d!1289035 (= (getValueByKey!462 lt!1571272 (_1!27469 lt!1570891)) (Some!10475 (_2!27469 lt!1570891)))))

(declare-fun lemmaContainsTupThenGetReturnValue!237 (List!49071 K!10305 V!10551) Unit!71975)

(assert (=> d!1289035 (= lt!1571271 (lemmaContainsTupThenGetReturnValue!237 lt!1571272 (_1!27469 lt!1570891) (_2!27469 lt!1570891)))))

(declare-fun insertNoDuplicatedKeys!106 (List!49071 K!10305 V!10551) List!49071)

(assert (=> d!1289035 (= lt!1571272 (insertNoDuplicatedKeys!106 (toList!2974 lt!1570899) (_1!27469 lt!1570891) (_2!27469 lt!1570891)))))

(assert (=> d!1289035 (= (+!648 lt!1570899 lt!1570891) lt!1571270)))

(declare-fun b!4358770 () Bool)

(declare-fun res!1791745 () Bool)

(assert (=> b!4358770 (=> (not res!1791745) (not e!2712580))))

(assert (=> b!4358770 (= res!1791745 (= (getValueByKey!462 (toList!2974 lt!1571270) (_1!27469 lt!1570891)) (Some!10475 (_2!27469 lt!1570891))))))

(declare-fun b!4358771 () Bool)

(declare-fun contains!11167 (List!49071 tuple2!48350) Bool)

(assert (=> b!4358771 (= e!2712580 (contains!11167 (toList!2974 lt!1571270) lt!1570891))))

(assert (= (and d!1289035 res!1791746) b!4358770))

(assert (= (and b!4358770 res!1791745) b!4358771))

(declare-fun m!4974969 () Bool)

(assert (=> d!1289035 m!4974969))

(declare-fun m!4974971 () Bool)

(assert (=> d!1289035 m!4974971))

(declare-fun m!4974973 () Bool)

(assert (=> d!1289035 m!4974973))

(declare-fun m!4974975 () Bool)

(assert (=> d!1289035 m!4974975))

(declare-fun m!4974977 () Bool)

(assert (=> b!4358770 m!4974977))

(declare-fun m!4974979 () Bool)

(assert (=> b!4358771 m!4974979))

(assert (=> b!4358473 d!1289035))

(declare-fun bs!633094 () Bool)

(declare-fun d!1289037 () Bool)

(assert (= bs!633094 (and d!1289037 d!1288933)))

(declare-fun lambda!140992 () Int)

(assert (=> bs!633094 (= lambda!140992 lambda!140899)))

(declare-fun bs!633095 () Bool)

(assert (= bs!633095 (and d!1289037 d!1288973)))

(assert (=> bs!633095 (not (= lambda!140992 lambda!140902))))

(declare-fun bs!633096 () Bool)

(assert (= bs!633096 (and d!1289037 d!1289021)))

(assert (=> bs!633096 (= lambda!140992 lambda!140985)))

(declare-fun bs!633097 () Bool)

(assert (= bs!633097 (and d!1289037 d!1289031)))

(assert (=> bs!633097 (= lambda!140992 lambda!140990)))

(declare-fun bs!633098 () Bool)

(assert (= bs!633098 (and d!1289037 start!422016)))

(assert (=> bs!633098 (= lambda!140992 lambda!140887)))

(declare-fun bs!633099 () Bool)

(assert (= bs!633099 (and d!1289037 d!1289033)))

(assert (=> bs!633099 (= lambda!140992 lambda!140991)))

(declare-fun lt!1571274 () ListMap!2217)

(assert (=> d!1289037 (invariantList!682 (toList!2974 lt!1571274))))

(declare-fun e!2712581 () ListMap!2217)

(assert (=> d!1289037 (= lt!1571274 e!2712581)))

(declare-fun c!741131 () Bool)

(assert (=> d!1289037 (= c!741131 ((_ is Cons!48948) (toList!2973 (+!647 lt!1570900 lt!1570902))))))

(assert (=> d!1289037 (forall!9132 (toList!2973 (+!647 lt!1570900 lt!1570902)) lambda!140992)))

(assert (=> d!1289037 (= (extractMap!554 (toList!2973 (+!647 lt!1570900 lt!1570902))) lt!1571274)))

(declare-fun b!4358772 () Bool)

(assert (=> b!4358772 (= e!2712581 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 (+!647 lt!1570900 lt!1570902)))) (extractMap!554 (t!355992 (toList!2973 (+!647 lt!1570900 lt!1570902))))))))

(declare-fun b!4358773 () Bool)

(assert (=> b!4358773 (= e!2712581 (ListMap!2218 Nil!48947))))

(assert (= (and d!1289037 c!741131) b!4358772))

(assert (= (and d!1289037 (not c!741131)) b!4358773))

(declare-fun m!4974981 () Bool)

(assert (=> d!1289037 m!4974981))

(declare-fun m!4974983 () Bool)

(assert (=> d!1289037 m!4974983))

(declare-fun m!4974985 () Bool)

(assert (=> b!4358772 m!4974985))

(assert (=> b!4358772 m!4974985))

(declare-fun m!4974987 () Bool)

(assert (=> b!4358772 m!4974987))

(assert (=> b!4358473 d!1289037))

(declare-fun d!1289039 () Bool)

(assert (=> d!1289039 (eq!265 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) (+!648 lt!1570894 (tuple2!48351 key!3918 newValue!99))) (+!648 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570894) (tuple2!48351 key!3918 newValue!99)))))

(declare-fun lt!1571277 () Unit!71975)

(declare-fun choose!26962 (ListMap!2217 K!10305 V!10551 List!49071) Unit!71975)

(assert (=> d!1289039 (= lt!1571277 (choose!26962 lt!1570894 key!3918 newValue!99 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(assert (=> d!1289039 (not (containsKey!704 (_2!27470 (h!54503 (toList!2973 lm!1707))) key!3918))))

(assert (=> d!1289039 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!74 lt!1570894 key!3918 newValue!99 (_2!27470 (h!54503 (toList!2973 lm!1707)))) lt!1571277)))

(declare-fun bs!633100 () Bool)

(assert (= bs!633100 d!1289039))

(assert (=> bs!633100 m!4974385))

(declare-fun m!4974989 () Bool)

(assert (=> bs!633100 m!4974989))

(assert (=> bs!633100 m!4974989))

(declare-fun m!4974991 () Bool)

(assert (=> bs!633100 m!4974991))

(declare-fun m!4974993 () Bool)

(assert (=> bs!633100 m!4974993))

(assert (=> bs!633100 m!4974383))

(assert (=> bs!633100 m!4974385))

(declare-fun m!4974995 () Bool)

(assert (=> bs!633100 m!4974995))

(assert (=> bs!633100 m!4974991))

(assert (=> bs!633100 m!4974995))

(declare-fun m!4974997 () Bool)

(assert (=> bs!633100 m!4974997))

(assert (=> b!4358473 d!1289039))

(declare-fun d!1289041 () Bool)

(assert (=> d!1289041 (= (eq!265 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570889) (+!648 lt!1570899 lt!1570891)) (= (content!7730 (toList!2974 (addToMapMapFromBucket!191 (_2!27470 (h!54503 (toList!2973 lm!1707))) lt!1570889))) (content!7730 (toList!2974 (+!648 lt!1570899 lt!1570891)))))))

(declare-fun bs!633101 () Bool)

(assert (= bs!633101 d!1289041))

(declare-fun m!4974999 () Bool)

(assert (=> bs!633101 m!4974999))

(declare-fun m!4975001 () Bool)

(assert (=> bs!633101 m!4975001))

(assert (=> b!4358473 d!1289041))

(declare-fun bs!633102 () Bool)

(declare-fun d!1289043 () Bool)

(assert (= bs!633102 (and d!1289043 d!1288933)))

(declare-fun lambda!140995 () Int)

(assert (=> bs!633102 (= lambda!140995 lambda!140899)))

(declare-fun bs!633103 () Bool)

(assert (= bs!633103 (and d!1289043 d!1289037)))

(assert (=> bs!633103 (= lambda!140995 lambda!140992)))

(declare-fun bs!633104 () Bool)

(assert (= bs!633104 (and d!1289043 d!1288973)))

(assert (=> bs!633104 (not (= lambda!140995 lambda!140902))))

(declare-fun bs!633105 () Bool)

(assert (= bs!633105 (and d!1289043 d!1289021)))

(assert (=> bs!633105 (= lambda!140995 lambda!140985)))

(declare-fun bs!633106 () Bool)

(assert (= bs!633106 (and d!1289043 d!1289031)))

(assert (=> bs!633106 (= lambda!140995 lambda!140990)))

(declare-fun bs!633107 () Bool)

(assert (= bs!633107 (and d!1289043 start!422016)))

(assert (=> bs!633107 (= lambda!140995 lambda!140887)))

(declare-fun bs!633108 () Bool)

(assert (= bs!633108 (and d!1289043 d!1289033)))

(assert (=> bs!633108 (= lambda!140995 lambda!140991)))

(assert (=> d!1289043 (not (containsKey!704 (apply!11347 lm!1707 (_1!27470 (h!54503 (toList!2973 lm!1707)))) key!3918))))

(declare-fun lt!1571280 () Unit!71975)

(declare-fun choose!26963 (ListLongMap!1623 K!10305 (_ BitVec 64) Hashable!4887) Unit!71975)

(assert (=> d!1289043 (= lt!1571280 (choose!26963 lm!1707 key!3918 (_1!27470 (h!54503 (toList!2973 lm!1707))) hashF!1247))))

(assert (=> d!1289043 (forall!9132 (toList!2973 lm!1707) lambda!140995)))

(assert (=> d!1289043 (= (lemmaNotSameHashThenCannotContainKey!42 lm!1707 key!3918 (_1!27470 (h!54503 (toList!2973 lm!1707))) hashF!1247) lt!1571280)))

(declare-fun bs!633109 () Bool)

(assert (= bs!633109 d!1289043))

(assert (=> bs!633109 m!4974415))

(assert (=> bs!633109 m!4974415))

(assert (=> bs!633109 m!4974419))

(declare-fun m!4975003 () Bool)

(assert (=> bs!633109 m!4975003))

(declare-fun m!4975005 () Bool)

(assert (=> bs!633109 m!4975005))

(assert (=> b!4358473 d!1289043))

(declare-fun d!1289045 () Bool)

(declare-fun res!1791747 () Bool)

(declare-fun e!2712582 () Bool)

(assert (=> d!1289045 (=> res!1791747 e!2712582)))

(assert (=> d!1289045 (= res!1791747 (not ((_ is Cons!48947) (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(assert (=> d!1289045 (= (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lm!1707)))) e!2712582)))

(declare-fun b!4358774 () Bool)

(declare-fun e!2712583 () Bool)

(assert (=> b!4358774 (= e!2712582 e!2712583)))

(declare-fun res!1791748 () Bool)

(assert (=> b!4358774 (=> (not res!1791748) (not e!2712583))))

(assert (=> b!4358774 (= res!1791748 (not (containsKey!704 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707)))) (_1!27469 (h!54502 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))))

(declare-fun b!4358775 () Bool)

(assert (=> b!4358775 (= e!2712583 (noDuplicateKeys!495 (t!355991 (_2!27470 (h!54503 (toList!2973 lm!1707))))))))

(assert (= (and d!1289045 (not res!1791747)) b!4358774))

(assert (= (and b!4358774 res!1791748) b!4358775))

(declare-fun m!4975007 () Bool)

(assert (=> b!4358774 m!4975007))

(declare-fun m!4975009 () Bool)

(assert (=> b!4358775 m!4975009))

(assert (=> b!4358473 d!1289045))

(declare-fun d!1289047 () Bool)

(declare-fun e!2712584 () Bool)

(assert (=> d!1289047 e!2712584))

(declare-fun res!1791750 () Bool)

(assert (=> d!1289047 (=> (not res!1791750) (not e!2712584))))

(declare-fun lt!1571281 () ListMap!2217)

(assert (=> d!1289047 (= res!1791750 (contains!11163 lt!1571281 (_1!27469 lt!1570891)))))

(declare-fun lt!1571283 () List!49071)

(assert (=> d!1289047 (= lt!1571281 (ListMap!2218 lt!1571283))))

(declare-fun lt!1571284 () Unit!71975)

(declare-fun lt!1571282 () Unit!71975)

(assert (=> d!1289047 (= lt!1571284 lt!1571282)))

(assert (=> d!1289047 (= (getValueByKey!462 lt!1571283 (_1!27469 lt!1570891)) (Some!10475 (_2!27469 lt!1570891)))))

(assert (=> d!1289047 (= lt!1571282 (lemmaContainsTupThenGetReturnValue!237 lt!1571283 (_1!27469 lt!1570891) (_2!27469 lt!1570891)))))

(assert (=> d!1289047 (= lt!1571283 (insertNoDuplicatedKeys!106 (toList!2974 lt!1570894) (_1!27469 lt!1570891) (_2!27469 lt!1570891)))))

(assert (=> d!1289047 (= (+!648 lt!1570894 lt!1570891) lt!1571281)))

(declare-fun b!4358776 () Bool)

(declare-fun res!1791749 () Bool)

(assert (=> b!4358776 (=> (not res!1791749) (not e!2712584))))

(assert (=> b!4358776 (= res!1791749 (= (getValueByKey!462 (toList!2974 lt!1571281) (_1!27469 lt!1570891)) (Some!10475 (_2!27469 lt!1570891))))))

(declare-fun b!4358777 () Bool)

(assert (=> b!4358777 (= e!2712584 (contains!11167 (toList!2974 lt!1571281) lt!1570891))))

(assert (= (and d!1289047 res!1791750) b!4358776))

(assert (= (and b!4358776 res!1791749) b!4358777))

(declare-fun m!4975011 () Bool)

(assert (=> d!1289047 m!4975011))

(declare-fun m!4975013 () Bool)

(assert (=> d!1289047 m!4975013))

(declare-fun m!4975015 () Bool)

(assert (=> d!1289047 m!4975015))

(declare-fun m!4975017 () Bool)

(assert (=> d!1289047 m!4975017))

(declare-fun m!4975019 () Bool)

(assert (=> b!4358776 m!4975019))

(declare-fun m!4975021 () Bool)

(assert (=> b!4358777 m!4975021))

(assert (=> b!4358473 d!1289047))

(declare-fun b!4358778 () Bool)

(declare-fun e!2712585 () Unit!71975)

(declare-fun lt!1571285 () Unit!71975)

(assert (=> b!4358778 (= e!2712585 lt!1571285)))

(declare-fun lt!1571287 () Unit!71975)

(assert (=> b!4358778 (= lt!1571287 (lemmaContainsKeyImpliesGetValueByKeyDefined!373 (toList!2974 lt!1570888) key!3918))))

(assert (=> b!4358778 (isDefined!7770 (getValueByKey!462 (toList!2974 lt!1570888) key!3918))))

(declare-fun lt!1571291 () Unit!71975)

(assert (=> b!4358778 (= lt!1571291 lt!1571287)))

(assert (=> b!4358778 (= lt!1571285 (lemmaInListThenGetKeysListContains!127 (toList!2974 lt!1570888) key!3918))))

(declare-fun call!302963 () Bool)

(assert (=> b!4358778 call!302963))

(declare-fun b!4358779 () Bool)

(declare-fun e!2712590 () Bool)

(assert (=> b!4358779 (= e!2712590 (not (contains!11166 (keys!16538 lt!1570888) key!3918)))))

(declare-fun b!4358780 () Bool)

(declare-fun e!2712587 () Unit!71975)

(assert (=> b!4358780 (= e!2712585 e!2712587)))

(declare-fun c!741132 () Bool)

(assert (=> b!4358780 (= c!741132 call!302963)))

(declare-fun b!4358782 () Bool)

(declare-fun e!2712588 () List!49074)

(assert (=> b!4358782 (= e!2712588 (getKeysList!130 (toList!2974 lt!1570888)))))

(declare-fun b!4358783 () Bool)

(declare-fun Unit!72033 () Unit!71975)

(assert (=> b!4358783 (= e!2712587 Unit!72033)))

(declare-fun b!4358784 () Bool)

(assert (=> b!4358784 false))

(declare-fun lt!1571289 () Unit!71975)

(declare-fun lt!1571290 () Unit!71975)

(assert (=> b!4358784 (= lt!1571289 lt!1571290)))

(assert (=> b!4358784 (containsKey!707 (toList!2974 lt!1570888) key!3918)))

(assert (=> b!4358784 (= lt!1571290 (lemmaInGetKeysListThenContainsKey!128 (toList!2974 lt!1570888) key!3918))))

(declare-fun Unit!72034 () Unit!71975)

(assert (=> b!4358784 (= e!2712587 Unit!72034)))

(declare-fun bm!302958 () Bool)

(assert (=> bm!302958 (= call!302963 (contains!11166 e!2712588 key!3918))))

(declare-fun c!741133 () Bool)

(declare-fun c!741134 () Bool)

(assert (=> bm!302958 (= c!741133 c!741134)))

(declare-fun d!1289049 () Bool)

(declare-fun e!2712586 () Bool)

(assert (=> d!1289049 e!2712586))

(declare-fun res!1791751 () Bool)

(assert (=> d!1289049 (=> res!1791751 e!2712586)))

(assert (=> d!1289049 (= res!1791751 e!2712590)))

(declare-fun res!1791753 () Bool)

(assert (=> d!1289049 (=> (not res!1791753) (not e!2712590))))

(declare-fun lt!1571292 () Bool)

(assert (=> d!1289049 (= res!1791753 (not lt!1571292))))

(declare-fun lt!1571286 () Bool)

(assert (=> d!1289049 (= lt!1571292 lt!1571286)))

(declare-fun lt!1571288 () Unit!71975)

(assert (=> d!1289049 (= lt!1571288 e!2712585)))

(assert (=> d!1289049 (= c!741134 lt!1571286)))

(assert (=> d!1289049 (= lt!1571286 (containsKey!707 (toList!2974 lt!1570888) key!3918))))

(assert (=> d!1289049 (= (contains!11163 lt!1570888 key!3918) lt!1571292)))

(declare-fun b!4358781 () Bool)

(declare-fun e!2712589 () Bool)

(assert (=> b!4358781 (= e!2712589 (contains!11166 (keys!16538 lt!1570888) key!3918))))

(declare-fun b!4358785 () Bool)

(assert (=> b!4358785 (= e!2712586 e!2712589)))

(declare-fun res!1791752 () Bool)

(assert (=> b!4358785 (=> (not res!1791752) (not e!2712589))))

(assert (=> b!4358785 (= res!1791752 (isDefined!7770 (getValueByKey!462 (toList!2974 lt!1570888) key!3918)))))

(declare-fun b!4358786 () Bool)

(assert (=> b!4358786 (= e!2712588 (keys!16538 lt!1570888))))

(assert (= (and d!1289049 c!741134) b!4358778))

(assert (= (and d!1289049 (not c!741134)) b!4358780))

(assert (= (and b!4358780 c!741132) b!4358784))

(assert (= (and b!4358780 (not c!741132)) b!4358783))

(assert (= (or b!4358778 b!4358780) bm!302958))

(assert (= (and bm!302958 c!741133) b!4358782))

(assert (= (and bm!302958 (not c!741133)) b!4358786))

(assert (= (and d!1289049 res!1791753) b!4358779))

(assert (= (and d!1289049 (not res!1791751)) b!4358785))

(assert (= (and b!4358785 res!1791752) b!4358781))

(declare-fun m!4975023 () Bool)

(assert (=> b!4358781 m!4975023))

(assert (=> b!4358781 m!4975023))

(declare-fun m!4975025 () Bool)

(assert (=> b!4358781 m!4975025))

(declare-fun m!4975027 () Bool)

(assert (=> bm!302958 m!4975027))

(declare-fun m!4975029 () Bool)

(assert (=> b!4358784 m!4975029))

(declare-fun m!4975031 () Bool)

(assert (=> b!4358784 m!4975031))

(declare-fun m!4975033 () Bool)

(assert (=> b!4358778 m!4975033))

(declare-fun m!4975035 () Bool)

(assert (=> b!4358778 m!4975035))

(assert (=> b!4358778 m!4975035))

(declare-fun m!4975037 () Bool)

(assert (=> b!4358778 m!4975037))

(declare-fun m!4975039 () Bool)

(assert (=> b!4358778 m!4975039))

(declare-fun m!4975041 () Bool)

(assert (=> b!4358782 m!4975041))

(assert (=> b!4358779 m!4975023))

(assert (=> b!4358779 m!4975023))

(assert (=> b!4358779 m!4975025))

(assert (=> d!1289049 m!4975029))

(assert (=> b!4358785 m!4975035))

(assert (=> b!4358785 m!4975035))

(assert (=> b!4358785 m!4975037))

(assert (=> b!4358786 m!4975023))

(assert (=> b!4358473 d!1289049))

(declare-fun d!1289051 () Bool)

(assert (=> d!1289051 (= (apply!11347 lm!1707 hash!377) (get!15902 (getValueByKey!463 (toList!2973 lm!1707) hash!377)))))

(declare-fun bs!633110 () Bool)

(assert (= bs!633110 d!1289051))

(assert (=> bs!633110 m!4974661))

(assert (=> bs!633110 m!4974661))

(declare-fun m!4975043 () Bool)

(assert (=> bs!633110 m!4975043))

(assert (=> b!4358463 d!1289051))

(declare-fun d!1289053 () Bool)

(declare-fun lt!1571295 () Bool)

(declare-fun content!7731 (List!49072) (InoxSet tuple2!48352))

(assert (=> d!1289053 (= lt!1571295 (select (content!7731 (toList!2973 lm!1707)) lt!1570885))))

(declare-fun e!2712596 () Bool)

(assert (=> d!1289053 (= lt!1571295 e!2712596)))

(declare-fun res!1791758 () Bool)

(assert (=> d!1289053 (=> (not res!1791758) (not e!2712596))))

(assert (=> d!1289053 (= res!1791758 ((_ is Cons!48948) (toList!2973 lm!1707)))))

(assert (=> d!1289053 (= (contains!11161 (toList!2973 lm!1707) lt!1570885) lt!1571295)))

(declare-fun b!4358791 () Bool)

(declare-fun e!2712595 () Bool)

(assert (=> b!4358791 (= e!2712596 e!2712595)))

(declare-fun res!1791759 () Bool)

(assert (=> b!4358791 (=> res!1791759 e!2712595)))

(assert (=> b!4358791 (= res!1791759 (= (h!54503 (toList!2973 lm!1707)) lt!1570885))))

(declare-fun b!4358792 () Bool)

(assert (=> b!4358792 (= e!2712595 (contains!11161 (t!355992 (toList!2973 lm!1707)) lt!1570885))))

(assert (= (and d!1289053 res!1791758) b!4358791))

(assert (= (and b!4358791 (not res!1791759)) b!4358792))

(declare-fun m!4975045 () Bool)

(assert (=> d!1289053 m!4975045))

(declare-fun m!4975047 () Bool)

(assert (=> d!1289053 m!4975047))

(declare-fun m!4975049 () Bool)

(assert (=> b!4358792 m!4975049))

(assert (=> b!4358463 d!1289053))

(declare-fun d!1289055 () Bool)

(assert (=> d!1289055 (contains!11161 (toList!2973 lm!1707) (tuple2!48353 hash!377 lt!1570897))))

(declare-fun lt!1571298 () Unit!71975)

(declare-fun choose!26964 (List!49072 (_ BitVec 64) List!49071) Unit!71975)

(assert (=> d!1289055 (= lt!1571298 (choose!26964 (toList!2973 lm!1707) hash!377 lt!1570897))))

(declare-fun e!2712599 () Bool)

(assert (=> d!1289055 e!2712599))

(declare-fun res!1791762 () Bool)

(assert (=> d!1289055 (=> (not res!1791762) (not e!2712599))))

(assert (=> d!1289055 (= res!1791762 (isStrictlySorted!108 (toList!2973 lm!1707)))))

(assert (=> d!1289055 (= (lemmaGetValueByKeyImpliesContainsTuple!342 (toList!2973 lm!1707) hash!377 lt!1570897) lt!1571298)))

(declare-fun b!4358795 () Bool)

(assert (=> b!4358795 (= e!2712599 (= (getValueByKey!463 (toList!2973 lm!1707) hash!377) (Some!10476 lt!1570897)))))

(assert (= (and d!1289055 res!1791762) b!4358795))

(declare-fun m!4975051 () Bool)

(assert (=> d!1289055 m!4975051))

(declare-fun m!4975053 () Bool)

(assert (=> d!1289055 m!4975053))

(assert (=> d!1289055 m!4974605))

(assert (=> b!4358795 m!4974661))

(assert (=> b!4358463 d!1289055))

(declare-fun d!1289057 () Bool)

(assert (=> d!1289057 (dynLambda!20641 lambda!140887 lt!1570885)))

(declare-fun lt!1571301 () Unit!71975)

(declare-fun choose!26965 (List!49072 Int tuple2!48352) Unit!71975)

(assert (=> d!1289057 (= lt!1571301 (choose!26965 (toList!2973 lm!1707) lambda!140887 lt!1570885))))

(declare-fun e!2712602 () Bool)

(assert (=> d!1289057 e!2712602))

(declare-fun res!1791765 () Bool)

(assert (=> d!1289057 (=> (not res!1791765) (not e!2712602))))

(assert (=> d!1289057 (= res!1791765 (forall!9132 (toList!2973 lm!1707) lambda!140887))))

(assert (=> d!1289057 (= (forallContained!1773 (toList!2973 lm!1707) lambda!140887 lt!1570885) lt!1571301)))

(declare-fun b!4358798 () Bool)

(assert (=> b!4358798 (= e!2712602 (contains!11161 (toList!2973 lm!1707) lt!1570885))))

(assert (= (and d!1289057 res!1791765) b!4358798))

(declare-fun b_lambda!131513 () Bool)

(assert (=> (not b_lambda!131513) (not d!1289057)))

(declare-fun m!4975055 () Bool)

(assert (=> d!1289057 m!4975055))

(declare-fun m!4975057 () Bool)

(assert (=> d!1289057 m!4975057))

(assert (=> d!1289057 m!4974363))

(assert (=> b!4358798 m!4974373))

(assert (=> b!4358463 d!1289057))

(declare-fun b!4358808 () Bool)

(declare-fun e!2712607 () List!49071)

(declare-fun e!2712608 () List!49071)

(assert (=> b!4358808 (= e!2712607 e!2712608)))

(declare-fun c!741140 () Bool)

(assert (=> b!4358808 (= c!741140 ((_ is Cons!48947) lt!1570897))))

(declare-fun b!4358807 () Bool)

(assert (=> b!4358807 (= e!2712607 (t!355991 lt!1570897))))

(declare-fun d!1289059 () Bool)

(declare-fun lt!1571304 () List!49071)

(assert (=> d!1289059 (not (containsKey!704 lt!1571304 key!3918))))

(assert (=> d!1289059 (= lt!1571304 e!2712607)))

(declare-fun c!741139 () Bool)

(assert (=> d!1289059 (= c!741139 (and ((_ is Cons!48947) lt!1570897) (= (_1!27469 (h!54502 lt!1570897)) key!3918)))))

(assert (=> d!1289059 (noDuplicateKeys!495 lt!1570897)))

(assert (=> d!1289059 (= (removePairForKey!465 lt!1570897 key!3918) lt!1571304)))

(declare-fun b!4358810 () Bool)

(assert (=> b!4358810 (= e!2712608 Nil!48947)))

(declare-fun b!4358809 () Bool)

(assert (=> b!4358809 (= e!2712608 (Cons!48947 (h!54502 lt!1570897) (removePairForKey!465 (t!355991 lt!1570897) key!3918)))))

(assert (= (and d!1289059 c!741139) b!4358807))

(assert (= (and d!1289059 (not c!741139)) b!4358808))

(assert (= (and b!4358808 c!741140) b!4358809))

(assert (= (and b!4358808 (not c!741140)) b!4358810))

(declare-fun m!4975059 () Bool)

(assert (=> d!1289059 m!4975059))

(declare-fun m!4975061 () Bool)

(assert (=> d!1289059 m!4975061))

(declare-fun m!4975063 () Bool)

(assert (=> b!4358809 m!4975063))

(assert (=> b!4358463 d!1289059))

(declare-fun e!2712611 () Bool)

(declare-fun b!4358815 () Bool)

(declare-fun tp!1330224 () Bool)

(assert (=> b!4358815 (= e!2712611 (and tp_is_empty!25217 tp_is_empty!25219 tp!1330224))))

(assert (=> b!4358476 (= tp!1330211 e!2712611)))

(assert (= (and b!4358476 ((_ is Cons!48947) (t!355991 newBucket!200))) b!4358815))

(declare-fun b!4358820 () Bool)

(declare-fun e!2712614 () Bool)

(declare-fun tp!1330229 () Bool)

(declare-fun tp!1330230 () Bool)

(assert (=> b!4358820 (= e!2712614 (and tp!1330229 tp!1330230))))

(assert (=> b!4358472 (= tp!1330212 e!2712614)))

(assert (= (and b!4358472 ((_ is Cons!48948) (toList!2973 lm!1707))) b!4358820))

(declare-fun b_lambda!131515 () Bool)

(assert (= b_lambda!131501 (or start!422016 b_lambda!131515)))

(declare-fun bs!633111 () Bool)

(declare-fun d!1289061 () Bool)

(assert (= bs!633111 (and d!1289061 start!422016)))

(assert (=> bs!633111 (= (dynLambda!20641 lambda!140887 (h!54503 (toList!2973 lt!1570901))) (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lt!1570901)))))))

(declare-fun m!4975065 () Bool)

(assert (=> bs!633111 m!4975065))

(assert (=> b!4358615 d!1289061))

(declare-fun b_lambda!131517 () Bool)

(assert (= b_lambda!131513 (or start!422016 b_lambda!131517)))

(declare-fun bs!633112 () Bool)

(declare-fun d!1289063 () Bool)

(assert (= bs!633112 (and d!1289063 start!422016)))

(assert (=> bs!633112 (= (dynLambda!20641 lambda!140887 lt!1570885) (noDuplicateKeys!495 (_2!27470 lt!1570885)))))

(declare-fun m!4975067 () Bool)

(assert (=> bs!633112 m!4975067))

(assert (=> d!1289057 d!1289063))

(declare-fun b_lambda!131519 () Bool)

(assert (= b_lambda!131499 (or start!422016 b_lambda!131519)))

(declare-fun bs!633113 () Bool)

(declare-fun d!1289065 () Bool)

(assert (= bs!633113 (and d!1289065 start!422016)))

(assert (=> bs!633113 (= (dynLambda!20641 lambda!140887 (h!54503 (toList!2973 lm!1707))) (noDuplicateKeys!495 (_2!27470 (h!54503 (toList!2973 lm!1707)))))))

(assert (=> bs!633113 m!4974403))

(assert (=> b!4358599 d!1289065))

(declare-fun b_lambda!131521 () Bool)

(assert (= b_lambda!131503 (or start!422016 b_lambda!131521)))

(declare-fun bs!633114 () Bool)

(declare-fun d!1289067 () Bool)

(assert (= bs!633114 (and d!1289067 start!422016)))

(assert (=> bs!633114 (= (dynLambda!20641 lambda!140887 (tuple2!48353 hash!377 newBucket!200)) (noDuplicateKeys!495 (_2!27470 (tuple2!48353 hash!377 newBucket!200))))))

(declare-fun m!4975069 () Bool)

(assert (=> bs!633114 m!4975069))

(assert (=> b!4358645 d!1289067))

(check-sat (not bm!302952) (not b!4358749) (not d!1289039) (not b!4358758) (not d!1289037) (not b!4358764) (not d!1289031) (not d!1288971) (not b!4358798) (not b!4358809) (not b!4358754) (not b!4358654) (not bs!633113) (not bm!302951) (not d!1289051) (not b!4358774) (not b!4358641) (not b!4358782) (not b!4358760) (not b!4358747) (not b!4358757) (not b!4358571) (not d!1288965) tp_is_empty!25217 (not bs!633112) (not b_lambda!131517) (not b!4358772) (not b!4358568) (not b!4358640) (not b!4358815) (not d!1289049) (not b!4358739) (not bs!633114) (not b!4358576) (not b!4358574) (not b!4358652) (not bm!302955) (not b!4358785) (not b!4358753) (not b!4358616) (not b!4358776) (not b!4358792) (not d!1288953) (not bm!302927) (not b!4358575) (not d!1289019) (not b!4358591) (not b!4358605) (not b!4358784) (not bm!302953) (not b!4358795) (not b_lambda!131521) (not b!4358779) (not b!4358820) (not d!1289035) tp_is_empty!25219 (not b!4358738) (not d!1289053) (not d!1289021) (not d!1289029) (not b!4358771) (not d!1289041) (not b!4358756) (not bs!633111) (not b_lambda!131515) (not b!4358762) (not b!4358775) (not b!4358746) (not b!4358750) (not bm!302957) (not d!1289027) (not d!1289057) (not b!4358770) (not b!4358606) (not b!4358745) (not d!1288973) (not d!1288967) (not b_lambda!131519) (not d!1289025) (not d!1288961) (not bm!302956) (not d!1289055) (not b!4358752) (not b!4358569) (not bm!302958) (not b!4358781) (not d!1288921) (not d!1289023) (not d!1289059) (not d!1289013) (not d!1288933) (not b!4358777) (not d!1289047) (not bm!302954) (not b!4358572) (not d!1288977) (not b!4358740) (not b!4358778) (not d!1289017) (not b!4358786) (not b!4358660) (not d!1288975) (not d!1289043) (not b!4358761) (not d!1289033) (not b!4358600) (not d!1288957))
(check-sat)
