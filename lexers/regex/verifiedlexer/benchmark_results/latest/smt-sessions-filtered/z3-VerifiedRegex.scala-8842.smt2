; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472356 () Bool)

(assert start!472356)

(declare-fun b!4678978 () Bool)

(declare-fun res!1971442 () Bool)

(declare-fun e!2919287 () Bool)

(assert (=> b!4678978 (=> res!1971442 e!2919287)))

(declare-datatypes ((K!13615 0))(
  ( (K!13616 (val!19163 Int)) )
))
(declare-datatypes ((V!13861 0))(
  ( (V!13862 (val!19164 Int)) )
))
(declare-datatypes ((tuple2!53538 0))(
  ( (tuple2!53539 (_1!30063 K!13615) (_2!30063 V!13861)) )
))
(declare-datatypes ((List!52359 0))(
  ( (Nil!52235) (Cons!52235 (h!58442 tuple2!53538) (t!359509 List!52359)) )
))
(declare-datatypes ((ListMap!4825 0))(
  ( (ListMap!4826 (toList!5461 List!52359)) )
))
(declare-fun lt!1838564 () ListMap!4825)

(declare-fun lt!1838560 () ListMap!4825)

(assert (=> b!4678978 (= res!1971442 (not (= lt!1838564 lt!1838560)))))

(declare-fun b!4678979 () Bool)

(declare-fun e!2919285 () Bool)

(declare-datatypes ((tuple2!53540 0))(
  ( (tuple2!53541 (_1!30064 (_ BitVec 64)) (_2!30064 List!52359)) )
))
(declare-datatypes ((List!52360 0))(
  ( (Nil!52236) (Cons!52236 (h!58443 tuple2!53540) (t!359510 List!52360)) )
))
(declare-fun lt!1838570 () List!52360)

(declare-fun lambda!204297 () Int)

(declare-fun forall!11215 (List!52360 Int) Bool)

(assert (=> b!4678979 (= e!2919285 (forall!11215 lt!1838570 lambda!204297))))

(declare-fun lt!1838566 () ListMap!4825)

(declare-fun lt!1838568 () ListMap!4825)

(declare-fun key!4653 () K!13615)

(declare-fun eq!975 (ListMap!4825 ListMap!4825) Bool)

(declare-fun -!650 (ListMap!4825 K!13615) ListMap!4825)

(assert (=> b!4678979 (eq!975 lt!1838566 (-!650 lt!1838568 key!4653))))

(declare-datatypes ((Unit!122237 0))(
  ( (Unit!122238) )
))
(declare-fun lt!1838569 () Unit!122237)

(declare-fun lt!1838559 () ListMap!4825)

(declare-fun lemmaRemovePreservesEq!70 (ListMap!4825 ListMap!4825 K!13615) Unit!122237)

(assert (=> b!4678979 (= lt!1838569 (lemmaRemovePreservesEq!70 lt!1838559 lt!1838568 key!4653))))

(declare-fun tp_is_empty!30439 () Bool)

(declare-fun e!2919283 () Bool)

(declare-fun tp_is_empty!30437 () Bool)

(declare-fun b!4678980 () Bool)

(declare-fun tp!1344923 () Bool)

(assert (=> b!4678980 (= e!2919283 (and tp_is_empty!30437 tp_is_empty!30439 tp!1344923))))

(declare-fun b!4678981 () Bool)

(declare-fun e!2919293 () Bool)

(declare-fun e!2919294 () Bool)

(assert (=> b!4678981 (= e!2919293 e!2919294)))

(declare-fun res!1971450 () Bool)

(assert (=> b!4678981 (=> res!1971450 e!2919294)))

(assert (=> b!4678981 (= res!1971450 (not (= lt!1838566 lt!1838564)))))

(assert (=> b!4678981 (= lt!1838566 (-!650 lt!1838559 key!4653))))

(declare-fun oldBucket!34 () List!52359)

(declare-fun +!2088 (ListMap!4825 tuple2!53538) ListMap!4825)

(assert (=> b!4678981 (= (-!650 (+!2088 lt!1838564 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))) key!4653) lt!1838564)))

(declare-fun lt!1838571 () Unit!122237)

(declare-fun addThenRemoveForNewKeyIsSame!41 (ListMap!4825 K!13615 V!13861) Unit!122237)

(assert (=> b!4678981 (= lt!1838571 (addThenRemoveForNewKeyIsSame!41 lt!1838564 key!4653 (_2!30063 (h!58442 oldBucket!34))))))

(declare-fun b!4678982 () Bool)

(declare-fun res!1971444 () Bool)

(declare-fun e!2919292 () Bool)

(assert (=> b!4678982 (=> (not res!1971444) (not e!2919292))))

(declare-datatypes ((Hashable!6155 0))(
  ( (HashableExt!6154 (__x!31858 Int)) )
))
(declare-fun hashF!1323 () Hashable!6155)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1612 (List!52359 (_ BitVec 64) Hashable!6155) Bool)

(assert (=> b!4678982 (= res!1971444 (allKeysSameHash!1612 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1971455 () Bool)

(assert (=> start!472356 (=> (not res!1971455) (not e!2919292))))

(declare-datatypes ((ListLongMap!3991 0))(
  ( (ListLongMap!3992 (toList!5462 List!52360)) )
))
(declare-fun lm!2023 () ListLongMap!3991)

(assert (=> start!472356 (= res!1971455 (forall!11215 (toList!5462 lm!2023) lambda!204297))))

(assert (=> start!472356 e!2919292))

(declare-fun e!2919288 () Bool)

(declare-fun inv!67489 (ListLongMap!3991) Bool)

(assert (=> start!472356 (and (inv!67489 lm!2023) e!2919288)))

(assert (=> start!472356 tp_is_empty!30437))

(declare-fun e!2919286 () Bool)

(assert (=> start!472356 e!2919286))

(assert (=> start!472356 true))

(assert (=> start!472356 e!2919283))

(declare-fun b!4678983 () Bool)

(declare-fun res!1971459 () Bool)

(declare-fun e!2919296 () Bool)

(assert (=> b!4678983 (=> (not res!1971459) (not e!2919296))))

(declare-fun newBucket!218 () List!52359)

(assert (=> b!4678983 (= res!1971459 (allKeysSameHash!1612 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4678984 () Bool)

(declare-fun res!1971446 () Bool)

(assert (=> b!4678984 (=> (not res!1971446) (not e!2919292))))

(declare-fun removePairForKey!1381 (List!52359 K!13615) List!52359)

(assert (=> b!4678984 (= res!1971446 (= (removePairForKey!1381 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4678985 () Bool)

(declare-fun res!1971458 () Bool)

(assert (=> b!4678985 (=> (not res!1971458) (not e!2919292))))

(declare-fun noDuplicateKeys!1786 (List!52359) Bool)

(assert (=> b!4678985 (= res!1971458 (noDuplicateKeys!1786 oldBucket!34))))

(declare-fun b!4678986 () Bool)

(declare-fun res!1971445 () Bool)

(assert (=> b!4678986 (=> (not res!1971445) (not e!2919296))))

(declare-fun allKeysSameHashInMap!1700 (ListLongMap!3991 Hashable!6155) Bool)

(assert (=> b!4678986 (= res!1971445 (allKeysSameHashInMap!1700 lm!2023 hashF!1323))))

(declare-fun b!4678987 () Bool)

(declare-fun tp!1344924 () Bool)

(assert (=> b!4678987 (= e!2919288 tp!1344924)))

(declare-fun b!4678988 () Bool)

(declare-fun res!1971448 () Bool)

(assert (=> b!4678988 (=> (not res!1971448) (not e!2919292))))

(assert (=> b!4678988 (= res!1971448 (noDuplicateKeys!1786 newBucket!218))))

(declare-fun b!4678989 () Bool)

(declare-fun e!2919295 () Bool)

(declare-fun e!2919289 () Bool)

(assert (=> b!4678989 (= e!2919295 (not e!2919289))))

(declare-fun res!1971441 () Bool)

(assert (=> b!4678989 (=> res!1971441 e!2919289)))

(get-info :version)

(assert (=> b!4678989 (= res!1971441 (or (not ((_ is Cons!52235) oldBucket!34)) (not (= (_1!30063 (h!58442 oldBucket!34)) key!4653))))))

(declare-fun lt!1838567 () ListMap!4825)

(declare-fun lt!1838563 () ListMap!4825)

(declare-fun addToMapMapFromBucket!1218 (List!52359 ListMap!4825) ListMap!4825)

(assert (=> b!4678989 (= lt!1838567 (addToMapMapFromBucket!1218 (_2!30064 (h!58443 (toList!5462 lm!2023))) lt!1838563))))

(declare-fun extractMap!1812 (List!52360) ListMap!4825)

(assert (=> b!4678989 (= lt!1838563 (extractMap!1812 (t!359510 (toList!5462 lm!2023))))))

(declare-fun tail!8426 (ListLongMap!3991) ListLongMap!3991)

(assert (=> b!4678989 (= (t!359510 (toList!5462 lm!2023)) (toList!5462 (tail!8426 lm!2023)))))

(declare-fun b!4678990 () Bool)

(assert (=> b!4678990 (= e!2919287 e!2919293)))

(declare-fun res!1971456 () Bool)

(assert (=> b!4678990 (=> res!1971456 e!2919293)))

(declare-fun contains!15370 (ListMap!4825 K!13615) Bool)

(assert (=> b!4678990 (= res!1971456 (contains!15370 lt!1838564 key!4653))))

(assert (=> b!4678990 (not (contains!15370 lt!1838560 key!4653))))

(declare-fun lt!1838557 () Unit!122237)

(declare-fun lt!1838572 () List!52360)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!386 (ListLongMap!3991 K!13615 Hashable!6155) Unit!122237)

(assert (=> b!4678990 (= lt!1838557 (lemmaNotInItsHashBucketThenNotInMap!386 (ListLongMap!3992 lt!1838572) key!4653 hashF!1323))))

(declare-fun b!4678991 () Bool)

(declare-fun res!1971440 () Bool)

(assert (=> b!4678991 (=> (not res!1971440) (not e!2919296))))

(declare-fun hash!3960 (Hashable!6155 K!13615) (_ BitVec 64))

(assert (=> b!4678991 (= res!1971440 (= (hash!3960 hashF!1323 key!4653) hash!405))))

(declare-fun b!4678992 () Bool)

(declare-fun e!2919284 () Bool)

(declare-fun e!2919290 () Bool)

(assert (=> b!4678992 (= e!2919284 e!2919290)))

(declare-fun res!1971443 () Bool)

(assert (=> b!4678992 (=> res!1971443 e!2919290)))

(assert (=> b!4678992 (= res!1971443 (not (= lt!1838560 (extractMap!1812 (Cons!52236 (tuple2!53541 hash!405 newBucket!218) (t!359510 (toList!5462 lm!2023)))))))))

(assert (=> b!4678992 (= lt!1838560 (extractMap!1812 lt!1838572))))

(declare-fun lt!1838561 () List!52359)

(assert (=> b!4678992 (= lt!1838572 (Cons!52236 (tuple2!53541 hash!405 lt!1838561) (t!359510 (toList!5462 lm!2023))))))

(declare-fun b!4678993 () Bool)

(assert (=> b!4678993 (= e!2919296 e!2919295)))

(declare-fun res!1971447 () Bool)

(assert (=> b!4678993 (=> (not res!1971447) (not e!2919295))))

(declare-fun lt!1838565 () tuple2!53540)

(declare-fun head!9863 (List!52360) tuple2!53540)

(assert (=> b!4678993 (= res!1971447 (= (head!9863 (toList!5462 lm!2023)) lt!1838565))))

(assert (=> b!4678993 (= lt!1838565 (tuple2!53541 hash!405 oldBucket!34))))

(declare-fun b!4678994 () Bool)

(assert (=> b!4678994 (= e!2919294 e!2919285)))

(declare-fun res!1971453 () Bool)

(assert (=> b!4678994 (=> res!1971453 e!2919285)))

(assert (=> b!4678994 (= res!1971453 (not (eq!975 lt!1838559 lt!1838568)))))

(assert (=> b!4678994 (= lt!1838568 (extractMap!1812 lt!1838570))))

(assert (=> b!4678994 (= lt!1838570 (Cons!52236 lt!1838565 (t!359510 (toList!5462 lm!2023))))))

(declare-fun b!4678995 () Bool)

(declare-fun res!1971451 () Bool)

(assert (=> b!4678995 (=> res!1971451 e!2919287)))

(declare-fun containsKey!2927 (List!52359 K!13615) Bool)

(assert (=> b!4678995 (= res!1971451 (containsKey!2927 lt!1838561 key!4653))))

(declare-fun b!4678996 () Bool)

(assert (=> b!4678996 (= e!2919292 e!2919296)))

(declare-fun res!1971454 () Bool)

(assert (=> b!4678996 (=> (not res!1971454) (not e!2919296))))

(assert (=> b!4678996 (= res!1971454 (contains!15370 lt!1838567 key!4653))))

(assert (=> b!4678996 (= lt!1838567 (extractMap!1812 (toList!5462 lm!2023)))))

(declare-fun b!4678997 () Bool)

(declare-fun e!2919291 () Bool)

(assert (=> b!4678997 (= e!2919291 e!2919287)))

(declare-fun res!1971452 () Bool)

(assert (=> b!4678997 (=> res!1971452 e!2919287)))

(assert (=> b!4678997 (= res!1971452 (not (eq!975 lt!1838559 (addToMapMapFromBucket!1218 oldBucket!34 lt!1838563))))))

(assert (=> b!4678997 (= lt!1838559 (+!2088 lt!1838564 (h!58442 oldBucket!34)))))

(declare-fun lt!1838562 () tuple2!53538)

(assert (=> b!4678997 (eq!975 (addToMapMapFromBucket!1218 (Cons!52235 lt!1838562 lt!1838561) lt!1838563) (+!2088 lt!1838564 lt!1838562))))

(declare-fun lt!1838558 () Unit!122237)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!224 (tuple2!53538 List!52359 ListMap!4825) Unit!122237)

(assert (=> b!4678997 (= lt!1838558 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!224 lt!1838562 lt!1838561 lt!1838563))))

(declare-fun head!9864 (List!52359) tuple2!53538)

(assert (=> b!4678997 (= lt!1838562 (head!9864 oldBucket!34))))

(declare-fun b!4678998 () Bool)

(declare-fun res!1971457 () Bool)

(assert (=> b!4678998 (=> (not res!1971457) (not e!2919295))))

(assert (=> b!4678998 (= res!1971457 ((_ is Cons!52236) (toList!5462 lm!2023)))))

(declare-fun tp!1344925 () Bool)

(declare-fun b!4678999 () Bool)

(assert (=> b!4678999 (= e!2919286 (and tp_is_empty!30437 tp_is_empty!30439 tp!1344925))))

(declare-fun b!4679000 () Bool)

(assert (=> b!4679000 (= e!2919289 e!2919284)))

(declare-fun res!1971439 () Bool)

(assert (=> b!4679000 (=> res!1971439 e!2919284)))

(assert (=> b!4679000 (= res!1971439 (not (= lt!1838561 newBucket!218)))))

(declare-fun tail!8427 (List!52359) List!52359)

(assert (=> b!4679000 (= lt!1838561 (tail!8427 oldBucket!34))))

(declare-fun b!4679001 () Bool)

(assert (=> b!4679001 (= e!2919290 e!2919291)))

(declare-fun res!1971449 () Bool)

(assert (=> b!4679001 (=> res!1971449 e!2919291)))

(assert (=> b!4679001 (= res!1971449 (not (= lt!1838564 (addToMapMapFromBucket!1218 newBucket!218 lt!1838563))))))

(assert (=> b!4679001 (= lt!1838564 (addToMapMapFromBucket!1218 lt!1838561 lt!1838563))))

(assert (= (and start!472356 res!1971455) b!4678985))

(assert (= (and b!4678985 res!1971458) b!4678988))

(assert (= (and b!4678988 res!1971448) b!4678984))

(assert (= (and b!4678984 res!1971446) b!4678982))

(assert (= (and b!4678982 res!1971444) b!4678996))

(assert (= (and b!4678996 res!1971454) b!4678991))

(assert (= (and b!4678991 res!1971440) b!4678983))

(assert (= (and b!4678983 res!1971459) b!4678986))

(assert (= (and b!4678986 res!1971445) b!4678993))

(assert (= (and b!4678993 res!1971447) b!4678998))

(assert (= (and b!4678998 res!1971457) b!4678989))

(assert (= (and b!4678989 (not res!1971441)) b!4679000))

(assert (= (and b!4679000 (not res!1971439)) b!4678992))

(assert (= (and b!4678992 (not res!1971443)) b!4679001))

(assert (= (and b!4679001 (not res!1971449)) b!4678997))

(assert (= (and b!4678997 (not res!1971452)) b!4678995))

(assert (= (and b!4678995 (not res!1971451)) b!4678978))

(assert (= (and b!4678978 (not res!1971442)) b!4678990))

(assert (= (and b!4678990 (not res!1971456)) b!4678981))

(assert (= (and b!4678981 (not res!1971450)) b!4678994))

(assert (= (and b!4678994 (not res!1971453)) b!4678979))

(assert (= start!472356 b!4678987))

(assert (= (and start!472356 ((_ is Cons!52235) oldBucket!34)) b!4678999))

(assert (= (and start!472356 ((_ is Cons!52235) newBucket!218)) b!4678980))

(declare-fun m!5574337 () Bool)

(assert (=> b!4678979 m!5574337))

(declare-fun m!5574339 () Bool)

(assert (=> b!4678979 m!5574339))

(assert (=> b!4678979 m!5574339))

(declare-fun m!5574341 () Bool)

(assert (=> b!4678979 m!5574341))

(declare-fun m!5574343 () Bool)

(assert (=> b!4678979 m!5574343))

(declare-fun m!5574345 () Bool)

(assert (=> b!4678988 m!5574345))

(declare-fun m!5574347 () Bool)

(assert (=> b!4678985 m!5574347))

(declare-fun m!5574349 () Bool)

(assert (=> b!4678992 m!5574349))

(declare-fun m!5574351 () Bool)

(assert (=> b!4678992 m!5574351))

(declare-fun m!5574353 () Bool)

(assert (=> b!4678986 m!5574353))

(declare-fun m!5574355 () Bool)

(assert (=> b!4678993 m!5574355))

(declare-fun m!5574357 () Bool)

(assert (=> b!4678983 m!5574357))

(declare-fun m!5574359 () Bool)

(assert (=> b!4678990 m!5574359))

(declare-fun m!5574361 () Bool)

(assert (=> b!4678990 m!5574361))

(declare-fun m!5574363 () Bool)

(assert (=> b!4678990 m!5574363))

(declare-fun m!5574365 () Bool)

(assert (=> b!4678989 m!5574365))

(declare-fun m!5574367 () Bool)

(assert (=> b!4678989 m!5574367))

(declare-fun m!5574369 () Bool)

(assert (=> b!4678989 m!5574369))

(declare-fun m!5574371 () Bool)

(assert (=> b!4678984 m!5574371))

(declare-fun m!5574373 () Bool)

(assert (=> b!4678994 m!5574373))

(declare-fun m!5574375 () Bool)

(assert (=> b!4678994 m!5574375))

(declare-fun m!5574377 () Bool)

(assert (=> b!4678982 m!5574377))

(declare-fun m!5574379 () Bool)

(assert (=> b!4679001 m!5574379))

(declare-fun m!5574381 () Bool)

(assert (=> b!4679001 m!5574381))

(declare-fun m!5574383 () Bool)

(assert (=> b!4678995 m!5574383))

(declare-fun m!5574385 () Bool)

(assert (=> start!472356 m!5574385))

(declare-fun m!5574387 () Bool)

(assert (=> start!472356 m!5574387))

(declare-fun m!5574389 () Bool)

(assert (=> b!4678981 m!5574389))

(declare-fun m!5574391 () Bool)

(assert (=> b!4678981 m!5574391))

(assert (=> b!4678981 m!5574391))

(declare-fun m!5574393 () Bool)

(assert (=> b!4678981 m!5574393))

(declare-fun m!5574395 () Bool)

(assert (=> b!4678981 m!5574395))

(declare-fun m!5574397 () Bool)

(assert (=> b!4679000 m!5574397))

(declare-fun m!5574399 () Bool)

(assert (=> b!4678991 m!5574399))

(declare-fun m!5574401 () Bool)

(assert (=> b!4678996 m!5574401))

(declare-fun m!5574403 () Bool)

(assert (=> b!4678996 m!5574403))

(declare-fun m!5574405 () Bool)

(assert (=> b!4678997 m!5574405))

(declare-fun m!5574407 () Bool)

(assert (=> b!4678997 m!5574407))

(assert (=> b!4678997 m!5574407))

(declare-fun m!5574409 () Bool)

(assert (=> b!4678997 m!5574409))

(declare-fun m!5574411 () Bool)

(assert (=> b!4678997 m!5574411))

(declare-fun m!5574413 () Bool)

(assert (=> b!4678997 m!5574413))

(declare-fun m!5574415 () Bool)

(assert (=> b!4678997 m!5574415))

(declare-fun m!5574417 () Bool)

(assert (=> b!4678997 m!5574417))

(assert (=> b!4678997 m!5574411))

(assert (=> b!4678997 m!5574417))

(declare-fun m!5574419 () Bool)

(assert (=> b!4678997 m!5574419))

(check-sat (not b!4678999) (not b!4678980) (not b!4679001) tp_is_empty!30437 (not b!4678994) (not b!4678996) (not b!4678988) (not b!4678985) (not b!4678989) tp_is_empty!30439 (not b!4678981) (not b!4678992) (not b!4678987) (not b!4678991) (not b!4678997) (not b!4678995) (not b!4678986) (not start!472356) (not b!4678993) (not b!4678979) (not b!4678983) (not b!4679000) (not b!4678982) (not b!4678984) (not b!4678990))
(check-sat)
(get-model)

(declare-fun d!1487145 () Bool)

(declare-fun res!1971464 () Bool)

(declare-fun e!2919307 () Bool)

(assert (=> d!1487145 (=> res!1971464 e!2919307)))

(assert (=> d!1487145 (= res!1971464 ((_ is Nil!52236) lt!1838570))))

(assert (=> d!1487145 (= (forall!11215 lt!1838570 lambda!204297) e!2919307)))

(declare-fun b!4679018 () Bool)

(declare-fun e!2919308 () Bool)

(assert (=> b!4679018 (= e!2919307 e!2919308)))

(declare-fun res!1971465 () Bool)

(assert (=> b!4679018 (=> (not res!1971465) (not e!2919308))))

(declare-fun dynLambda!21675 (Int tuple2!53540) Bool)

(assert (=> b!4679018 (= res!1971465 (dynLambda!21675 lambda!204297 (h!58443 lt!1838570)))))

(declare-fun b!4679019 () Bool)

(assert (=> b!4679019 (= e!2919308 (forall!11215 (t!359510 lt!1838570) lambda!204297))))

(assert (= (and d!1487145 (not res!1971464)) b!4679018))

(assert (= (and b!4679018 res!1971465) b!4679019))

(declare-fun b_lambda!176629 () Bool)

(assert (=> (not b_lambda!176629) (not b!4679018)))

(declare-fun m!5574425 () Bool)

(assert (=> b!4679018 m!5574425))

(declare-fun m!5574427 () Bool)

(assert (=> b!4679019 m!5574427))

(assert (=> b!4678979 d!1487145))

(declare-fun d!1487147 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9101 (List!52359) (InoxSet tuple2!53538))

(assert (=> d!1487147 (= (eq!975 lt!1838566 (-!650 lt!1838568 key!4653)) (= (content!9101 (toList!5461 lt!1838566)) (content!9101 (toList!5461 (-!650 lt!1838568 key!4653)))))))

(declare-fun bs!1081406 () Bool)

(assert (= bs!1081406 d!1487147))

(declare-fun m!5574429 () Bool)

(assert (=> bs!1081406 m!5574429))

(declare-fun m!5574431 () Bool)

(assert (=> bs!1081406 m!5574431))

(assert (=> b!4678979 d!1487147))

(declare-fun d!1487149 () Bool)

(declare-fun e!2919311 () Bool)

(assert (=> d!1487149 e!2919311))

(declare-fun res!1971468 () Bool)

(assert (=> d!1487149 (=> (not res!1971468) (not e!2919311))))

(declare-fun lt!1838578 () ListMap!4825)

(assert (=> d!1487149 (= res!1971468 (not (contains!15370 lt!1838578 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!325 (List!52359 K!13615) List!52359)

(assert (=> d!1487149 (= lt!1838578 (ListMap!4826 (removePresrvNoDuplicatedKeys!325 (toList!5461 lt!1838568) key!4653)))))

(assert (=> d!1487149 (= (-!650 lt!1838568 key!4653) lt!1838578)))

(declare-fun b!4679022 () Bool)

(declare-datatypes ((List!52362 0))(
  ( (Nil!52238) (Cons!52238 (h!58447 K!13615) (t!359514 List!52362)) )
))
(declare-fun content!9102 (List!52362) (InoxSet K!13615))

(declare-fun keys!18607 (ListMap!4825) List!52362)

(assert (=> b!4679022 (= e!2919311 (= ((_ map and) (content!9102 (keys!18607 lt!1838568)) ((_ map not) (store ((as const (Array K!13615 Bool)) false) key!4653 true))) (content!9102 (keys!18607 lt!1838578))))))

(assert (= (and d!1487149 res!1971468) b!4679022))

(declare-fun m!5574433 () Bool)

(assert (=> d!1487149 m!5574433))

(declare-fun m!5574435 () Bool)

(assert (=> d!1487149 m!5574435))

(declare-fun m!5574437 () Bool)

(assert (=> b!4679022 m!5574437))

(declare-fun m!5574439 () Bool)

(assert (=> b!4679022 m!5574439))

(declare-fun m!5574441 () Bool)

(assert (=> b!4679022 m!5574441))

(declare-fun m!5574443 () Bool)

(assert (=> b!4679022 m!5574443))

(declare-fun m!5574445 () Bool)

(assert (=> b!4679022 m!5574445))

(assert (=> b!4679022 m!5574439))

(assert (=> b!4679022 m!5574443))

(assert (=> b!4678979 d!1487149))

(declare-fun d!1487151 () Bool)

(assert (=> d!1487151 (eq!975 (-!650 lt!1838559 key!4653) (-!650 lt!1838568 key!4653))))

(declare-fun lt!1838581 () Unit!122237)

(declare-fun choose!32370 (ListMap!4825 ListMap!4825 K!13615) Unit!122237)

(assert (=> d!1487151 (= lt!1838581 (choose!32370 lt!1838559 lt!1838568 key!4653))))

(assert (=> d!1487151 (eq!975 lt!1838559 lt!1838568)))

(assert (=> d!1487151 (= (lemmaRemovePreservesEq!70 lt!1838559 lt!1838568 key!4653) lt!1838581)))

(declare-fun bs!1081407 () Bool)

(assert (= bs!1081407 d!1487151))

(declare-fun m!5574447 () Bool)

(assert (=> bs!1081407 m!5574447))

(assert (=> bs!1081407 m!5574389))

(assert (=> bs!1081407 m!5574339))

(assert (=> bs!1081407 m!5574389))

(assert (=> bs!1081407 m!5574339))

(declare-fun m!5574449 () Bool)

(assert (=> bs!1081407 m!5574449))

(assert (=> bs!1081407 m!5574373))

(assert (=> b!4678979 d!1487151))

(declare-fun b!4679047 () Bool)

(declare-fun e!2919331 () List!52362)

(declare-fun getKeysList!811 (List!52359) List!52362)

(assert (=> b!4679047 (= e!2919331 (getKeysList!811 (toList!5461 lt!1838564)))))

(declare-fun b!4679048 () Bool)

(declare-fun e!2919332 () Bool)

(declare-fun contains!15372 (List!52362 K!13615) Bool)

(assert (=> b!4679048 (= e!2919332 (not (contains!15372 (keys!18607 lt!1838564) key!4653)))))

(declare-fun b!4679049 () Bool)

(declare-fun e!2919330 () Unit!122237)

(declare-fun lt!1838640 () Unit!122237)

(assert (=> b!4679049 (= e!2919330 lt!1838640)))

(declare-fun lt!1838646 () Unit!122237)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1606 (List!52359 K!13615) Unit!122237)

(assert (=> b!4679049 (= lt!1838646 (lemmaContainsKeyImpliesGetValueByKeyDefined!1606 (toList!5461 lt!1838564) key!4653))))

(declare-datatypes ((Option!11967 0))(
  ( (None!11966) (Some!11966 (v!46329 V!13861)) )
))
(declare-fun isDefined!9221 (Option!11967) Bool)

(declare-fun getValueByKey!1715 (List!52359 K!13615) Option!11967)

(assert (=> b!4679049 (isDefined!9221 (getValueByKey!1715 (toList!5461 lt!1838564) key!4653))))

(declare-fun lt!1838641 () Unit!122237)

(assert (=> b!4679049 (= lt!1838641 lt!1838646)))

(declare-fun lemmaInListThenGetKeysListContains!806 (List!52359 K!13615) Unit!122237)

(assert (=> b!4679049 (= lt!1838640 (lemmaInListThenGetKeysListContains!806 (toList!5461 lt!1838564) key!4653))))

(declare-fun call!326978 () Bool)

(assert (=> b!4679049 call!326978))

(declare-fun d!1487153 () Bool)

(declare-fun e!2919329 () Bool)

(assert (=> d!1487153 e!2919329))

(declare-fun res!1971478 () Bool)

(assert (=> d!1487153 (=> res!1971478 e!2919329)))

(assert (=> d!1487153 (= res!1971478 e!2919332)))

(declare-fun res!1971477 () Bool)

(assert (=> d!1487153 (=> (not res!1971477) (not e!2919332))))

(declare-fun lt!1838642 () Bool)

(assert (=> d!1487153 (= res!1971477 (not lt!1838642))))

(declare-fun lt!1838647 () Bool)

(assert (=> d!1487153 (= lt!1838642 lt!1838647)))

(declare-fun lt!1838644 () Unit!122237)

(assert (=> d!1487153 (= lt!1838644 e!2919330)))

(declare-fun c!800445 () Bool)

(assert (=> d!1487153 (= c!800445 lt!1838647)))

(declare-fun containsKey!2928 (List!52359 K!13615) Bool)

(assert (=> d!1487153 (= lt!1838647 (containsKey!2928 (toList!5461 lt!1838564) key!4653))))

(assert (=> d!1487153 (= (contains!15370 lt!1838564 key!4653) lt!1838642)))

(declare-fun b!4679050 () Bool)

(declare-fun e!2919333 () Bool)

(assert (=> b!4679050 (= e!2919329 e!2919333)))

(declare-fun res!1971479 () Bool)

(assert (=> b!4679050 (=> (not res!1971479) (not e!2919333))))

(assert (=> b!4679050 (= res!1971479 (isDefined!9221 (getValueByKey!1715 (toList!5461 lt!1838564) key!4653)))))

(declare-fun b!4679051 () Bool)

(assert (=> b!4679051 false))

(declare-fun lt!1838645 () Unit!122237)

(declare-fun lt!1838643 () Unit!122237)

(assert (=> b!4679051 (= lt!1838645 lt!1838643)))

(assert (=> b!4679051 (containsKey!2928 (toList!5461 lt!1838564) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!810 (List!52359 K!13615) Unit!122237)

(assert (=> b!4679051 (= lt!1838643 (lemmaInGetKeysListThenContainsKey!810 (toList!5461 lt!1838564) key!4653))))

(declare-fun e!2919328 () Unit!122237)

(declare-fun Unit!122269 () Unit!122237)

(assert (=> b!4679051 (= e!2919328 Unit!122269)))

(declare-fun b!4679052 () Bool)

(declare-fun Unit!122271 () Unit!122237)

(assert (=> b!4679052 (= e!2919328 Unit!122271)))

(declare-fun b!4679053 () Bool)

(assert (=> b!4679053 (= e!2919331 (keys!18607 lt!1838564))))

(declare-fun b!4679054 () Bool)

(assert (=> b!4679054 (= e!2919333 (contains!15372 (keys!18607 lt!1838564) key!4653))))

(declare-fun bm!326971 () Bool)

(assert (=> bm!326971 (= call!326978 (contains!15372 e!2919331 key!4653))))

(declare-fun c!800446 () Bool)

(assert (=> bm!326971 (= c!800446 c!800445)))

(declare-fun b!4679055 () Bool)

(assert (=> b!4679055 (= e!2919330 e!2919328)))

(declare-fun c!800444 () Bool)

(assert (=> b!4679055 (= c!800444 call!326978)))

(assert (= (and d!1487153 c!800445) b!4679049))

(assert (= (and d!1487153 (not c!800445)) b!4679055))

(assert (= (and b!4679055 c!800444) b!4679051))

(assert (= (and b!4679055 (not c!800444)) b!4679052))

(assert (= (or b!4679049 b!4679055) bm!326971))

(assert (= (and bm!326971 c!800446) b!4679047))

(assert (= (and bm!326971 (not c!800446)) b!4679053))

(assert (= (and d!1487153 res!1971477) b!4679048))

(assert (= (and d!1487153 (not res!1971478)) b!4679050))

(assert (= (and b!4679050 res!1971479) b!4679054))

(declare-fun m!5574451 () Bool)

(assert (=> b!4679050 m!5574451))

(assert (=> b!4679050 m!5574451))

(declare-fun m!5574453 () Bool)

(assert (=> b!4679050 m!5574453))

(declare-fun m!5574455 () Bool)

(assert (=> b!4679051 m!5574455))

(declare-fun m!5574457 () Bool)

(assert (=> b!4679051 m!5574457))

(declare-fun m!5574459 () Bool)

(assert (=> b!4679047 m!5574459))

(assert (=> d!1487153 m!5574455))

(declare-fun m!5574461 () Bool)

(assert (=> b!4679054 m!5574461))

(assert (=> b!4679054 m!5574461))

(declare-fun m!5574463 () Bool)

(assert (=> b!4679054 m!5574463))

(assert (=> b!4679053 m!5574461))

(declare-fun m!5574465 () Bool)

(assert (=> bm!326971 m!5574465))

(assert (=> b!4679048 m!5574461))

(assert (=> b!4679048 m!5574461))

(assert (=> b!4679048 m!5574463))

(declare-fun m!5574467 () Bool)

(assert (=> b!4679049 m!5574467))

(assert (=> b!4679049 m!5574451))

(assert (=> b!4679049 m!5574451))

(assert (=> b!4679049 m!5574453))

(declare-fun m!5574469 () Bool)

(assert (=> b!4679049 m!5574469))

(assert (=> b!4678990 d!1487153))

(declare-fun b!4679060 () Bool)

(declare-fun e!2919339 () List!52362)

(assert (=> b!4679060 (= e!2919339 (getKeysList!811 (toList!5461 lt!1838560)))))

(declare-fun b!4679061 () Bool)

(declare-fun e!2919340 () Bool)

(assert (=> b!4679061 (= e!2919340 (not (contains!15372 (keys!18607 lt!1838560) key!4653)))))

(declare-fun b!4679062 () Bool)

(declare-fun e!2919338 () Unit!122237)

(declare-fun lt!1838648 () Unit!122237)

(assert (=> b!4679062 (= e!2919338 lt!1838648)))

(declare-fun lt!1838654 () Unit!122237)

(assert (=> b!4679062 (= lt!1838654 (lemmaContainsKeyImpliesGetValueByKeyDefined!1606 (toList!5461 lt!1838560) key!4653))))

(assert (=> b!4679062 (isDefined!9221 (getValueByKey!1715 (toList!5461 lt!1838560) key!4653))))

(declare-fun lt!1838649 () Unit!122237)

(assert (=> b!4679062 (= lt!1838649 lt!1838654)))

(assert (=> b!4679062 (= lt!1838648 (lemmaInListThenGetKeysListContains!806 (toList!5461 lt!1838560) key!4653))))

(declare-fun call!326981 () Bool)

(assert (=> b!4679062 call!326981))

(declare-fun d!1487155 () Bool)

(declare-fun e!2919337 () Bool)

(assert (=> d!1487155 e!2919337))

(declare-fun res!1971485 () Bool)

(assert (=> d!1487155 (=> res!1971485 e!2919337)))

(assert (=> d!1487155 (= res!1971485 e!2919340)))

(declare-fun res!1971484 () Bool)

(assert (=> d!1487155 (=> (not res!1971484) (not e!2919340))))

(declare-fun lt!1838650 () Bool)

(assert (=> d!1487155 (= res!1971484 (not lt!1838650))))

(declare-fun lt!1838655 () Bool)

(assert (=> d!1487155 (= lt!1838650 lt!1838655)))

(declare-fun lt!1838652 () Unit!122237)

(assert (=> d!1487155 (= lt!1838652 e!2919338)))

(declare-fun c!800448 () Bool)

(assert (=> d!1487155 (= c!800448 lt!1838655)))

(assert (=> d!1487155 (= lt!1838655 (containsKey!2928 (toList!5461 lt!1838560) key!4653))))

(assert (=> d!1487155 (= (contains!15370 lt!1838560 key!4653) lt!1838650)))

(declare-fun b!4679063 () Bool)

(declare-fun e!2919341 () Bool)

(assert (=> b!4679063 (= e!2919337 e!2919341)))

(declare-fun res!1971486 () Bool)

(assert (=> b!4679063 (=> (not res!1971486) (not e!2919341))))

(assert (=> b!4679063 (= res!1971486 (isDefined!9221 (getValueByKey!1715 (toList!5461 lt!1838560) key!4653)))))

(declare-fun b!4679064 () Bool)

(assert (=> b!4679064 false))

(declare-fun lt!1838653 () Unit!122237)

(declare-fun lt!1838651 () Unit!122237)

(assert (=> b!4679064 (= lt!1838653 lt!1838651)))

(assert (=> b!4679064 (containsKey!2928 (toList!5461 lt!1838560) key!4653)))

(assert (=> b!4679064 (= lt!1838651 (lemmaInGetKeysListThenContainsKey!810 (toList!5461 lt!1838560) key!4653))))

(declare-fun e!2919336 () Unit!122237)

(declare-fun Unit!122274 () Unit!122237)

(assert (=> b!4679064 (= e!2919336 Unit!122274)))

(declare-fun b!4679065 () Bool)

(declare-fun Unit!122275 () Unit!122237)

(assert (=> b!4679065 (= e!2919336 Unit!122275)))

(declare-fun b!4679066 () Bool)

(assert (=> b!4679066 (= e!2919339 (keys!18607 lt!1838560))))

(declare-fun b!4679067 () Bool)

(assert (=> b!4679067 (= e!2919341 (contains!15372 (keys!18607 lt!1838560) key!4653))))

(declare-fun bm!326976 () Bool)

(assert (=> bm!326976 (= call!326981 (contains!15372 e!2919339 key!4653))))

(declare-fun c!800449 () Bool)

(assert (=> bm!326976 (= c!800449 c!800448)))

(declare-fun b!4679068 () Bool)

(assert (=> b!4679068 (= e!2919338 e!2919336)))

(declare-fun c!800447 () Bool)

(assert (=> b!4679068 (= c!800447 call!326981)))

(assert (= (and d!1487155 c!800448) b!4679062))

(assert (= (and d!1487155 (not c!800448)) b!4679068))

(assert (= (and b!4679068 c!800447) b!4679064))

(assert (= (and b!4679068 (not c!800447)) b!4679065))

(assert (= (or b!4679062 b!4679068) bm!326976))

(assert (= (and bm!326976 c!800449) b!4679060))

(assert (= (and bm!326976 (not c!800449)) b!4679066))

(assert (= (and d!1487155 res!1971484) b!4679061))

(assert (= (and d!1487155 (not res!1971485)) b!4679063))

(assert (= (and b!4679063 res!1971486) b!4679067))

(declare-fun m!5574471 () Bool)

(assert (=> b!4679063 m!5574471))

(assert (=> b!4679063 m!5574471))

(declare-fun m!5574473 () Bool)

(assert (=> b!4679063 m!5574473))

(declare-fun m!5574475 () Bool)

(assert (=> b!4679064 m!5574475))

(declare-fun m!5574477 () Bool)

(assert (=> b!4679064 m!5574477))

(declare-fun m!5574479 () Bool)

(assert (=> b!4679060 m!5574479))

(assert (=> d!1487155 m!5574475))

(declare-fun m!5574481 () Bool)

(assert (=> b!4679067 m!5574481))

(assert (=> b!4679067 m!5574481))

(declare-fun m!5574483 () Bool)

(assert (=> b!4679067 m!5574483))

(assert (=> b!4679066 m!5574481))

(declare-fun m!5574485 () Bool)

(assert (=> bm!326976 m!5574485))

(assert (=> b!4679061 m!5574481))

(assert (=> b!4679061 m!5574481))

(assert (=> b!4679061 m!5574483))

(declare-fun m!5574487 () Bool)

(assert (=> b!4679062 m!5574487))

(assert (=> b!4679062 m!5574471))

(assert (=> b!4679062 m!5574471))

(assert (=> b!4679062 m!5574473))

(declare-fun m!5574489 () Bool)

(assert (=> b!4679062 m!5574489))

(assert (=> b!4678990 d!1487155))

(declare-fun bs!1081425 () Bool)

(declare-fun d!1487157 () Bool)

(assert (= bs!1081425 (and d!1487157 start!472356)))

(declare-fun lambda!204336 () Int)

(assert (=> bs!1081425 (= lambda!204336 lambda!204297)))

(assert (=> d!1487157 (not (contains!15370 (extractMap!1812 (toList!5462 (ListLongMap!3992 lt!1838572))) key!4653))))

(declare-fun lt!1838702 () Unit!122237)

(declare-fun choose!32371 (ListLongMap!3991 K!13615 Hashable!6155) Unit!122237)

(assert (=> d!1487157 (= lt!1838702 (choose!32371 (ListLongMap!3992 lt!1838572) key!4653 hashF!1323))))

(assert (=> d!1487157 (forall!11215 (toList!5462 (ListLongMap!3992 lt!1838572)) lambda!204336)))

(assert (=> d!1487157 (= (lemmaNotInItsHashBucketThenNotInMap!386 (ListLongMap!3992 lt!1838572) key!4653 hashF!1323) lt!1838702)))

(declare-fun bs!1081426 () Bool)

(assert (= bs!1081426 d!1487157))

(declare-fun m!5574567 () Bool)

(assert (=> bs!1081426 m!5574567))

(assert (=> bs!1081426 m!5574567))

(declare-fun m!5574569 () Bool)

(assert (=> bs!1081426 m!5574569))

(declare-fun m!5574571 () Bool)

(assert (=> bs!1081426 m!5574571))

(declare-fun m!5574573 () Bool)

(assert (=> bs!1081426 m!5574573))

(assert (=> b!4678990 d!1487157))

(declare-fun b!4679210 () Bool)

(assert (=> b!4679210 true))

(declare-fun bs!1081563 () Bool)

(declare-fun b!4679209 () Bool)

(assert (= bs!1081563 (and b!4679209 b!4679210)))

(declare-fun lambda!204391 () Int)

(declare-fun lambda!204390 () Int)

(assert (=> bs!1081563 (= lambda!204391 lambda!204390)))

(assert (=> b!4679209 true))

(declare-fun lt!1838895 () ListMap!4825)

(declare-fun lambda!204392 () Int)

(assert (=> bs!1081563 (= (= lt!1838895 lt!1838563) (= lambda!204392 lambda!204390))))

(assert (=> b!4679209 (= (= lt!1838895 lt!1838563) (= lambda!204392 lambda!204391))))

(assert (=> b!4679209 true))

(declare-fun bs!1081564 () Bool)

(declare-fun d!1487169 () Bool)

(assert (= bs!1081564 (and d!1487169 b!4679210)))

(declare-fun lambda!204395 () Int)

(declare-fun lt!1838905 () ListMap!4825)

(assert (=> bs!1081564 (= (= lt!1838905 lt!1838563) (= lambda!204395 lambda!204390))))

(declare-fun bs!1081565 () Bool)

(assert (= bs!1081565 (and d!1487169 b!4679209)))

(assert (=> bs!1081565 (= (= lt!1838905 lt!1838563) (= lambda!204395 lambda!204391))))

(assert (=> bs!1081565 (= (= lt!1838905 lt!1838895) (= lambda!204395 lambda!204392))))

(assert (=> d!1487169 true))

(declare-fun b!4679208 () Bool)

(declare-fun e!2919434 () Bool)

(declare-fun invariantList!1372 (List!52359) Bool)

(assert (=> b!4679208 (= e!2919434 (invariantList!1372 (toList!5461 lt!1838905)))))

(assert (=> d!1487169 e!2919434))

(declare-fun res!1971560 () Bool)

(assert (=> d!1487169 (=> (not res!1971560) (not e!2919434))))

(declare-fun forall!11217 (List!52359 Int) Bool)

(assert (=> d!1487169 (= res!1971560 (forall!11217 (_2!30064 (h!58443 (toList!5462 lm!2023))) lambda!204395))))

(declare-fun e!2919433 () ListMap!4825)

(assert (=> d!1487169 (= lt!1838905 e!2919433)))

(declare-fun c!800479 () Bool)

(assert (=> d!1487169 (= c!800479 ((_ is Nil!52235) (_2!30064 (h!58443 (toList!5462 lm!2023)))))))

(assert (=> d!1487169 (noDuplicateKeys!1786 (_2!30064 (h!58443 (toList!5462 lm!2023))))))

(assert (=> d!1487169 (= (addToMapMapFromBucket!1218 (_2!30064 (h!58443 (toList!5462 lm!2023))) lt!1838563) lt!1838905)))

(declare-fun bm!327003 () Bool)

(declare-fun call!327010 () Bool)

(assert (=> bm!327003 (= call!327010 (forall!11217 (ite c!800479 (toList!5461 lt!1838563) (_2!30064 (h!58443 (toList!5462 lm!2023)))) (ite c!800479 lambda!204390 lambda!204392)))))

(assert (=> b!4679209 (= e!2919433 lt!1838895)))

(declare-fun lt!1838906 () ListMap!4825)

(assert (=> b!4679209 (= lt!1838906 (+!2088 lt!1838563 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023))))))))

(assert (=> b!4679209 (= lt!1838895 (addToMapMapFromBucket!1218 (t!359509 (_2!30064 (h!58443 (toList!5462 lm!2023)))) (+!2088 lt!1838563 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023)))))))))

(declare-fun lt!1838902 () Unit!122237)

(declare-fun call!327008 () Unit!122237)

(assert (=> b!4679209 (= lt!1838902 call!327008)))

(assert (=> b!4679209 (forall!11217 (toList!5461 lt!1838563) lambda!204391)))

(declare-fun lt!1838898 () Unit!122237)

(assert (=> b!4679209 (= lt!1838898 lt!1838902)))

(assert (=> b!4679209 (forall!11217 (toList!5461 lt!1838906) lambda!204392)))

(declare-fun lt!1838903 () Unit!122237)

(declare-fun Unit!122277 () Unit!122237)

(assert (=> b!4679209 (= lt!1838903 Unit!122277)))

(assert (=> b!4679209 (forall!11217 (t!359509 (_2!30064 (h!58443 (toList!5462 lm!2023)))) lambda!204392)))

(declare-fun lt!1838897 () Unit!122237)

(declare-fun Unit!122278 () Unit!122237)

(assert (=> b!4679209 (= lt!1838897 Unit!122278)))

(declare-fun lt!1838890 () Unit!122237)

(declare-fun Unit!122279 () Unit!122237)

(assert (=> b!4679209 (= lt!1838890 Unit!122279)))

(declare-fun lt!1838900 () Unit!122237)

(declare-fun forallContained!3344 (List!52359 Int tuple2!53538) Unit!122237)

(assert (=> b!4679209 (= lt!1838900 (forallContained!3344 (toList!5461 lt!1838906) lambda!204392 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023))))))))

(assert (=> b!4679209 (contains!15370 lt!1838906 (_1!30063 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023))))))))

(declare-fun lt!1838901 () Unit!122237)

(declare-fun Unit!122280 () Unit!122237)

(assert (=> b!4679209 (= lt!1838901 Unit!122280)))

(assert (=> b!4679209 (contains!15370 lt!1838895 (_1!30063 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023))))))))

(declare-fun lt!1838889 () Unit!122237)

(declare-fun Unit!122281 () Unit!122237)

(assert (=> b!4679209 (= lt!1838889 Unit!122281)))

(assert (=> b!4679209 (forall!11217 (_2!30064 (h!58443 (toList!5462 lm!2023))) lambda!204392)))

(declare-fun lt!1838907 () Unit!122237)

(declare-fun Unit!122283 () Unit!122237)

(assert (=> b!4679209 (= lt!1838907 Unit!122283)))

(assert (=> b!4679209 (forall!11217 (toList!5461 lt!1838906) lambda!204392)))

(declare-fun lt!1838896 () Unit!122237)

(declare-fun Unit!122286 () Unit!122237)

(assert (=> b!4679209 (= lt!1838896 Unit!122286)))

(declare-fun lt!1838899 () Unit!122237)

(declare-fun Unit!122287 () Unit!122237)

(assert (=> b!4679209 (= lt!1838899 Unit!122287)))

(declare-fun lt!1838888 () Unit!122237)

(declare-fun addForallContainsKeyThenBeforeAdding!659 (ListMap!4825 ListMap!4825 K!13615 V!13861) Unit!122237)

(assert (=> b!4679209 (= lt!1838888 (addForallContainsKeyThenBeforeAdding!659 lt!1838563 lt!1838895 (_1!30063 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023))))) (_2!30063 (h!58442 (_2!30064 (h!58443 (toList!5462 lm!2023)))))))))

(assert (=> b!4679209 (forall!11217 (toList!5461 lt!1838563) lambda!204392)))

(declare-fun lt!1838892 () Unit!122237)

(assert (=> b!4679209 (= lt!1838892 lt!1838888)))

(assert (=> b!4679209 (forall!11217 (toList!5461 lt!1838563) lambda!204392)))

(declare-fun lt!1838891 () Unit!122237)

(declare-fun Unit!122291 () Unit!122237)

(assert (=> b!4679209 (= lt!1838891 Unit!122291)))

(declare-fun res!1971561 () Bool)

(assert (=> b!4679209 (= res!1971561 call!327010)))

(declare-fun e!2919432 () Bool)

(assert (=> b!4679209 (=> (not res!1971561) (not e!2919432))))

(assert (=> b!4679209 e!2919432))

(declare-fun lt!1838887 () Unit!122237)

(declare-fun Unit!122294 () Unit!122237)

(assert (=> b!4679209 (= lt!1838887 Unit!122294)))

(assert (=> b!4679210 (= e!2919433 lt!1838563)))

(declare-fun lt!1838893 () Unit!122237)

(assert (=> b!4679210 (= lt!1838893 call!327008)))

(declare-fun call!327009 () Bool)

(assert (=> b!4679210 call!327009))

(declare-fun lt!1838904 () Unit!122237)

(assert (=> b!4679210 (= lt!1838904 lt!1838893)))

(assert (=> b!4679210 call!327010))

(declare-fun lt!1838894 () Unit!122237)

(declare-fun Unit!122296 () Unit!122237)

(assert (=> b!4679210 (= lt!1838894 Unit!122296)))

(declare-fun bm!327004 () Bool)

(assert (=> bm!327004 (= call!327009 (forall!11217 (toList!5461 lt!1838563) (ite c!800479 lambda!204390 lambda!204392)))))

(declare-fun b!4679211 () Bool)

(assert (=> b!4679211 (= e!2919432 call!327009)))

(declare-fun b!4679212 () Bool)

(declare-fun res!1971562 () Bool)

(assert (=> b!4679212 (=> (not res!1971562) (not e!2919434))))

(assert (=> b!4679212 (= res!1971562 (forall!11217 (toList!5461 lt!1838563) lambda!204395))))

(declare-fun bm!327005 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!660 (ListMap!4825) Unit!122237)

(assert (=> bm!327005 (= call!327008 (lemmaContainsAllItsOwnKeys!660 lt!1838563))))

(assert (= (and d!1487169 c!800479) b!4679210))

(assert (= (and d!1487169 (not c!800479)) b!4679209))

(assert (= (and b!4679209 res!1971561) b!4679211))

(assert (= (or b!4679210 b!4679209) bm!327005))

(assert (= (or b!4679210 b!4679209) bm!327003))

(assert (= (or b!4679210 b!4679211) bm!327004))

(assert (= (and d!1487169 res!1971560) b!4679212))

(assert (= (and b!4679212 res!1971562) b!4679208))

(declare-fun m!5574891 () Bool)

(assert (=> bm!327005 m!5574891))

(declare-fun m!5574893 () Bool)

(assert (=> bm!327003 m!5574893))

(declare-fun m!5574895 () Bool)

(assert (=> bm!327004 m!5574895))

(declare-fun m!5574897 () Bool)

(assert (=> b!4679209 m!5574897))

(declare-fun m!5574899 () Bool)

(assert (=> b!4679209 m!5574899))

(declare-fun m!5574901 () Bool)

(assert (=> b!4679209 m!5574901))

(declare-fun m!5574903 () Bool)

(assert (=> b!4679209 m!5574903))

(declare-fun m!5574905 () Bool)

(assert (=> b!4679209 m!5574905))

(declare-fun m!5574907 () Bool)

(assert (=> b!4679209 m!5574907))

(assert (=> b!4679209 m!5574903))

(declare-fun m!5574909 () Bool)

(assert (=> b!4679209 m!5574909))

(declare-fun m!5574911 () Bool)

(assert (=> b!4679209 m!5574911))

(declare-fun m!5574913 () Bool)

(assert (=> b!4679209 m!5574913))

(declare-fun m!5574915 () Bool)

(assert (=> b!4679209 m!5574915))

(declare-fun m!5574917 () Bool)

(assert (=> b!4679209 m!5574917))

(assert (=> b!4679209 m!5574909))

(assert (=> b!4679209 m!5574899))

(declare-fun m!5574919 () Bool)

(assert (=> b!4679208 m!5574919))

(declare-fun m!5574921 () Bool)

(assert (=> b!4679212 m!5574921))

(declare-fun m!5574923 () Bool)

(assert (=> d!1487169 m!5574923))

(declare-fun m!5574925 () Bool)

(assert (=> d!1487169 m!5574925))

(assert (=> b!4678989 d!1487169))

(declare-fun bs!1081593 () Bool)

(declare-fun d!1487239 () Bool)

(assert (= bs!1081593 (and d!1487239 start!472356)))

(declare-fun lambda!204400 () Int)

(assert (=> bs!1081593 (= lambda!204400 lambda!204297)))

(declare-fun bs!1081594 () Bool)

(assert (= bs!1081594 (and d!1487239 d!1487157)))

(assert (=> bs!1081594 (= lambda!204400 lambda!204336)))

(declare-fun lt!1838913 () ListMap!4825)

(assert (=> d!1487239 (invariantList!1372 (toList!5461 lt!1838913))))

(declare-fun e!2919444 () ListMap!4825)

(assert (=> d!1487239 (= lt!1838913 e!2919444)))

(declare-fun c!800482 () Bool)

(assert (=> d!1487239 (= c!800482 ((_ is Cons!52236) (t!359510 (toList!5462 lm!2023))))))

(assert (=> d!1487239 (forall!11215 (t!359510 (toList!5462 lm!2023)) lambda!204400)))

(assert (=> d!1487239 (= (extractMap!1812 (t!359510 (toList!5462 lm!2023))) lt!1838913)))

(declare-fun b!4679230 () Bool)

(assert (=> b!4679230 (= e!2919444 (addToMapMapFromBucket!1218 (_2!30064 (h!58443 (t!359510 (toList!5462 lm!2023)))) (extractMap!1812 (t!359510 (t!359510 (toList!5462 lm!2023))))))))

(declare-fun b!4679231 () Bool)

(assert (=> b!4679231 (= e!2919444 (ListMap!4826 Nil!52235))))

(assert (= (and d!1487239 c!800482) b!4679230))

(assert (= (and d!1487239 (not c!800482)) b!4679231))

(declare-fun m!5574931 () Bool)

(assert (=> d!1487239 m!5574931))

(declare-fun m!5574933 () Bool)

(assert (=> d!1487239 m!5574933))

(declare-fun m!5574935 () Bool)

(assert (=> b!4679230 m!5574935))

(assert (=> b!4679230 m!5574935))

(declare-fun m!5574937 () Bool)

(assert (=> b!4679230 m!5574937))

(assert (=> b!4678989 d!1487239))

(declare-fun d!1487245 () Bool)

(declare-fun tail!8428 (List!52360) List!52360)

(assert (=> d!1487245 (= (tail!8426 lm!2023) (ListLongMap!3992 (tail!8428 (toList!5462 lm!2023))))))

(declare-fun bs!1081595 () Bool)

(assert (= bs!1081595 d!1487245))

(declare-fun m!5574939 () Bool)

(assert (=> bs!1081595 m!5574939))

(assert (=> b!4678989 d!1487245))

(declare-fun d!1487247 () Bool)

(assert (=> d!1487247 (= (tail!8427 oldBucket!34) (t!359509 oldBucket!34))))

(assert (=> b!4679000 d!1487247))

(declare-fun d!1487249 () Bool)

(declare-fun hash!3961 (Hashable!6155 K!13615) (_ BitVec 64))

(assert (=> d!1487249 (= (hash!3960 hashF!1323 key!4653) (hash!3961 hashF!1323 key!4653))))

(declare-fun bs!1081596 () Bool)

(assert (= bs!1081596 d!1487249))

(declare-fun m!5574941 () Bool)

(assert (=> bs!1081596 m!5574941))

(assert (=> b!4678991 d!1487249))

(declare-fun bs!1081597 () Bool)

(declare-fun b!4679234 () Bool)

(assert (= bs!1081597 (and b!4679234 b!4679210)))

(declare-fun lambda!204401 () Int)

(assert (=> bs!1081597 (= lambda!204401 lambda!204390)))

(declare-fun bs!1081598 () Bool)

(assert (= bs!1081598 (and b!4679234 b!4679209)))

(assert (=> bs!1081598 (= lambda!204401 lambda!204391)))

(assert (=> bs!1081598 (= (= lt!1838563 lt!1838895) (= lambda!204401 lambda!204392))))

(declare-fun bs!1081599 () Bool)

(assert (= bs!1081599 (and b!4679234 d!1487169)))

(assert (=> bs!1081599 (= (= lt!1838563 lt!1838905) (= lambda!204401 lambda!204395))))

(assert (=> b!4679234 true))

(declare-fun bs!1081600 () Bool)

(declare-fun b!4679233 () Bool)

(assert (= bs!1081600 (and b!4679233 b!4679234)))

(declare-fun lambda!204402 () Int)

(assert (=> bs!1081600 (= lambda!204402 lambda!204401)))

(declare-fun bs!1081601 () Bool)

(assert (= bs!1081601 (and b!4679233 d!1487169)))

(assert (=> bs!1081601 (= (= lt!1838563 lt!1838905) (= lambda!204402 lambda!204395))))

(declare-fun bs!1081602 () Bool)

(assert (= bs!1081602 (and b!4679233 b!4679209)))

(assert (=> bs!1081602 (= (= lt!1838563 lt!1838895) (= lambda!204402 lambda!204392))))

(declare-fun bs!1081603 () Bool)

(assert (= bs!1081603 (and b!4679233 b!4679210)))

(assert (=> bs!1081603 (= lambda!204402 lambda!204390)))

(assert (=> bs!1081602 (= lambda!204402 lambda!204391)))

(assert (=> b!4679233 true))

(declare-fun lambda!204403 () Int)

(declare-fun lt!1838922 () ListMap!4825)

(assert (=> bs!1081600 (= (= lt!1838922 lt!1838563) (= lambda!204403 lambda!204401))))

(assert (=> bs!1081601 (= (= lt!1838922 lt!1838905) (= lambda!204403 lambda!204395))))

(assert (=> b!4679233 (= (= lt!1838922 lt!1838563) (= lambda!204403 lambda!204402))))

(assert (=> bs!1081602 (= (= lt!1838922 lt!1838895) (= lambda!204403 lambda!204392))))

(assert (=> bs!1081603 (= (= lt!1838922 lt!1838563) (= lambda!204403 lambda!204390))))

(assert (=> bs!1081602 (= (= lt!1838922 lt!1838563) (= lambda!204403 lambda!204391))))

(assert (=> b!4679233 true))

(declare-fun bs!1081604 () Bool)

(declare-fun d!1487251 () Bool)

(assert (= bs!1081604 (and d!1487251 b!4679234)))

(declare-fun lt!1838932 () ListMap!4825)

(declare-fun lambda!204404 () Int)

(assert (=> bs!1081604 (= (= lt!1838932 lt!1838563) (= lambda!204404 lambda!204401))))

(declare-fun bs!1081605 () Bool)

(assert (= bs!1081605 (and d!1487251 b!4679233)))

(assert (=> bs!1081605 (= (= lt!1838932 lt!1838563) (= lambda!204404 lambda!204402))))

(declare-fun bs!1081606 () Bool)

(assert (= bs!1081606 (and d!1487251 b!4679209)))

(assert (=> bs!1081606 (= (= lt!1838932 lt!1838895) (= lambda!204404 lambda!204392))))

(declare-fun bs!1081607 () Bool)

(assert (= bs!1081607 (and d!1487251 b!4679210)))

(assert (=> bs!1081607 (= (= lt!1838932 lt!1838563) (= lambda!204404 lambda!204390))))

(assert (=> bs!1081606 (= (= lt!1838932 lt!1838563) (= lambda!204404 lambda!204391))))

(assert (=> bs!1081605 (= (= lt!1838932 lt!1838922) (= lambda!204404 lambda!204403))))

(declare-fun bs!1081608 () Bool)

(assert (= bs!1081608 (and d!1487251 d!1487169)))

(assert (=> bs!1081608 (= (= lt!1838932 lt!1838905) (= lambda!204404 lambda!204395))))

(assert (=> d!1487251 true))

(declare-fun b!4679232 () Bool)

(declare-fun e!2919447 () Bool)

(assert (=> b!4679232 (= e!2919447 (invariantList!1372 (toList!5461 lt!1838932)))))

(assert (=> d!1487251 e!2919447))

(declare-fun res!1971563 () Bool)

(assert (=> d!1487251 (=> (not res!1971563) (not e!2919447))))

(assert (=> d!1487251 (= res!1971563 (forall!11217 newBucket!218 lambda!204404))))

(declare-fun e!2919446 () ListMap!4825)

(assert (=> d!1487251 (= lt!1838932 e!2919446)))

(declare-fun c!800483 () Bool)

(assert (=> d!1487251 (= c!800483 ((_ is Nil!52235) newBucket!218))))

(assert (=> d!1487251 (noDuplicateKeys!1786 newBucket!218)))

(assert (=> d!1487251 (= (addToMapMapFromBucket!1218 newBucket!218 lt!1838563) lt!1838932)))

(declare-fun bm!327006 () Bool)

(declare-fun call!327013 () Bool)

(assert (=> bm!327006 (= call!327013 (forall!11217 (ite c!800483 (toList!5461 lt!1838563) newBucket!218) (ite c!800483 lambda!204401 lambda!204403)))))

(assert (=> b!4679233 (= e!2919446 lt!1838922)))

(declare-fun lt!1838933 () ListMap!4825)

(assert (=> b!4679233 (= lt!1838933 (+!2088 lt!1838563 (h!58442 newBucket!218)))))

(assert (=> b!4679233 (= lt!1838922 (addToMapMapFromBucket!1218 (t!359509 newBucket!218) (+!2088 lt!1838563 (h!58442 newBucket!218))))))

(declare-fun lt!1838929 () Unit!122237)

(declare-fun call!327011 () Unit!122237)

(assert (=> b!4679233 (= lt!1838929 call!327011)))

(assert (=> b!4679233 (forall!11217 (toList!5461 lt!1838563) lambda!204402)))

(declare-fun lt!1838925 () Unit!122237)

(assert (=> b!4679233 (= lt!1838925 lt!1838929)))

(assert (=> b!4679233 (forall!11217 (toList!5461 lt!1838933) lambda!204403)))

(declare-fun lt!1838930 () Unit!122237)

(declare-fun Unit!122298 () Unit!122237)

(assert (=> b!4679233 (= lt!1838930 Unit!122298)))

(assert (=> b!4679233 (forall!11217 (t!359509 newBucket!218) lambda!204403)))

(declare-fun lt!1838924 () Unit!122237)

(declare-fun Unit!122299 () Unit!122237)

(assert (=> b!4679233 (= lt!1838924 Unit!122299)))

(declare-fun lt!1838917 () Unit!122237)

(declare-fun Unit!122300 () Unit!122237)

(assert (=> b!4679233 (= lt!1838917 Unit!122300)))

(declare-fun lt!1838927 () Unit!122237)

(assert (=> b!4679233 (= lt!1838927 (forallContained!3344 (toList!5461 lt!1838933) lambda!204403 (h!58442 newBucket!218)))))

(assert (=> b!4679233 (contains!15370 lt!1838933 (_1!30063 (h!58442 newBucket!218)))))

(declare-fun lt!1838928 () Unit!122237)

(declare-fun Unit!122302 () Unit!122237)

(assert (=> b!4679233 (= lt!1838928 Unit!122302)))

(assert (=> b!4679233 (contains!15370 lt!1838922 (_1!30063 (h!58442 newBucket!218)))))

(declare-fun lt!1838916 () Unit!122237)

(declare-fun Unit!122303 () Unit!122237)

(assert (=> b!4679233 (= lt!1838916 Unit!122303)))

(assert (=> b!4679233 (forall!11217 newBucket!218 lambda!204403)))

(declare-fun lt!1838934 () Unit!122237)

(declare-fun Unit!122304 () Unit!122237)

(assert (=> b!4679233 (= lt!1838934 Unit!122304)))

(assert (=> b!4679233 (forall!11217 (toList!5461 lt!1838933) lambda!204403)))

(declare-fun lt!1838923 () Unit!122237)

(declare-fun Unit!122305 () Unit!122237)

(assert (=> b!4679233 (= lt!1838923 Unit!122305)))

(declare-fun lt!1838926 () Unit!122237)

(declare-fun Unit!122306 () Unit!122237)

(assert (=> b!4679233 (= lt!1838926 Unit!122306)))

(declare-fun lt!1838915 () Unit!122237)

(assert (=> b!4679233 (= lt!1838915 (addForallContainsKeyThenBeforeAdding!659 lt!1838563 lt!1838922 (_1!30063 (h!58442 newBucket!218)) (_2!30063 (h!58442 newBucket!218))))))

(assert (=> b!4679233 (forall!11217 (toList!5461 lt!1838563) lambda!204403)))

(declare-fun lt!1838919 () Unit!122237)

(assert (=> b!4679233 (= lt!1838919 lt!1838915)))

(assert (=> b!4679233 (forall!11217 (toList!5461 lt!1838563) lambda!204403)))

(declare-fun lt!1838918 () Unit!122237)

(declare-fun Unit!122307 () Unit!122237)

(assert (=> b!4679233 (= lt!1838918 Unit!122307)))

(declare-fun res!1971564 () Bool)

(assert (=> b!4679233 (= res!1971564 call!327013)))

(declare-fun e!2919445 () Bool)

(assert (=> b!4679233 (=> (not res!1971564) (not e!2919445))))

(assert (=> b!4679233 e!2919445))

(declare-fun lt!1838914 () Unit!122237)

(declare-fun Unit!122309 () Unit!122237)

(assert (=> b!4679233 (= lt!1838914 Unit!122309)))

(assert (=> b!4679234 (= e!2919446 lt!1838563)))

(declare-fun lt!1838920 () Unit!122237)

(assert (=> b!4679234 (= lt!1838920 call!327011)))

(declare-fun call!327012 () Bool)

(assert (=> b!4679234 call!327012))

(declare-fun lt!1838931 () Unit!122237)

(assert (=> b!4679234 (= lt!1838931 lt!1838920)))

(assert (=> b!4679234 call!327013))

(declare-fun lt!1838921 () Unit!122237)

(declare-fun Unit!122310 () Unit!122237)

(assert (=> b!4679234 (= lt!1838921 Unit!122310)))

(declare-fun bm!327007 () Bool)

(assert (=> bm!327007 (= call!327012 (forall!11217 (toList!5461 lt!1838563) (ite c!800483 lambda!204401 lambda!204403)))))

(declare-fun b!4679235 () Bool)

(assert (=> b!4679235 (= e!2919445 call!327012)))

(declare-fun b!4679236 () Bool)

(declare-fun res!1971565 () Bool)

(assert (=> b!4679236 (=> (not res!1971565) (not e!2919447))))

(assert (=> b!4679236 (= res!1971565 (forall!11217 (toList!5461 lt!1838563) lambda!204404))))

(declare-fun bm!327008 () Bool)

(assert (=> bm!327008 (= call!327011 (lemmaContainsAllItsOwnKeys!660 lt!1838563))))

(assert (= (and d!1487251 c!800483) b!4679234))

(assert (= (and d!1487251 (not c!800483)) b!4679233))

(assert (= (and b!4679233 res!1971564) b!4679235))

(assert (= (or b!4679234 b!4679233) bm!327008))

(assert (= (or b!4679234 b!4679233) bm!327006))

(assert (= (or b!4679234 b!4679235) bm!327007))

(assert (= (and d!1487251 res!1971563) b!4679236))

(assert (= (and b!4679236 res!1971565) b!4679232))

(assert (=> bm!327008 m!5574891))

(declare-fun m!5574943 () Bool)

(assert (=> bm!327006 m!5574943))

(declare-fun m!5574945 () Bool)

(assert (=> bm!327007 m!5574945))

(declare-fun m!5574947 () Bool)

(assert (=> b!4679233 m!5574947))

(declare-fun m!5574949 () Bool)

(assert (=> b!4679233 m!5574949))

(declare-fun m!5574951 () Bool)

(assert (=> b!4679233 m!5574951))

(declare-fun m!5574953 () Bool)

(assert (=> b!4679233 m!5574953))

(declare-fun m!5574955 () Bool)

(assert (=> b!4679233 m!5574955))

(declare-fun m!5574957 () Bool)

(assert (=> b!4679233 m!5574957))

(assert (=> b!4679233 m!5574953))

(declare-fun m!5574959 () Bool)

(assert (=> b!4679233 m!5574959))

(declare-fun m!5574961 () Bool)

(assert (=> b!4679233 m!5574961))

(declare-fun m!5574963 () Bool)

(assert (=> b!4679233 m!5574963))

(declare-fun m!5574965 () Bool)

(assert (=> b!4679233 m!5574965))

(declare-fun m!5574967 () Bool)

(assert (=> b!4679233 m!5574967))

(assert (=> b!4679233 m!5574959))

(assert (=> b!4679233 m!5574949))

(declare-fun m!5574969 () Bool)

(assert (=> b!4679232 m!5574969))

(declare-fun m!5574971 () Bool)

(assert (=> b!4679236 m!5574971))

(declare-fun m!5574973 () Bool)

(assert (=> d!1487251 m!5574973))

(assert (=> d!1487251 m!5574345))

(assert (=> b!4679001 d!1487251))

(declare-fun bs!1081609 () Bool)

(declare-fun b!4679239 () Bool)

(assert (= bs!1081609 (and b!4679239 b!4679234)))

(declare-fun lambda!204405 () Int)

(assert (=> bs!1081609 (= lambda!204405 lambda!204401)))

(declare-fun bs!1081610 () Bool)

(assert (= bs!1081610 (and b!4679239 b!4679233)))

(assert (=> bs!1081610 (= lambda!204405 lambda!204402)))

(declare-fun bs!1081611 () Bool)

(assert (= bs!1081611 (and b!4679239 b!4679209)))

(assert (=> bs!1081611 (= (= lt!1838563 lt!1838895) (= lambda!204405 lambda!204392))))

(declare-fun bs!1081612 () Bool)

(assert (= bs!1081612 (and b!4679239 d!1487251)))

(assert (=> bs!1081612 (= (= lt!1838563 lt!1838932) (= lambda!204405 lambda!204404))))

(declare-fun bs!1081613 () Bool)

(assert (= bs!1081613 (and b!4679239 b!4679210)))

(assert (=> bs!1081613 (= lambda!204405 lambda!204390)))

(assert (=> bs!1081611 (= lambda!204405 lambda!204391)))

(assert (=> bs!1081610 (= (= lt!1838563 lt!1838922) (= lambda!204405 lambda!204403))))

(declare-fun bs!1081614 () Bool)

(assert (= bs!1081614 (and b!4679239 d!1487169)))

(assert (=> bs!1081614 (= (= lt!1838563 lt!1838905) (= lambda!204405 lambda!204395))))

(assert (=> b!4679239 true))

(declare-fun bs!1081615 () Bool)

(declare-fun b!4679238 () Bool)

(assert (= bs!1081615 (and b!4679238 b!4679234)))

(declare-fun lambda!204406 () Int)

(assert (=> bs!1081615 (= lambda!204406 lambda!204401)))

(declare-fun bs!1081616 () Bool)

(assert (= bs!1081616 (and b!4679238 b!4679233)))

(assert (=> bs!1081616 (= lambda!204406 lambda!204402)))

(declare-fun bs!1081617 () Bool)

(assert (= bs!1081617 (and b!4679238 b!4679209)))

(assert (=> bs!1081617 (= (= lt!1838563 lt!1838895) (= lambda!204406 lambda!204392))))

(declare-fun bs!1081618 () Bool)

(assert (= bs!1081618 (and b!4679238 b!4679210)))

(assert (=> bs!1081618 (= lambda!204406 lambda!204390)))

(assert (=> bs!1081617 (= lambda!204406 lambda!204391)))

(assert (=> bs!1081616 (= (= lt!1838563 lt!1838922) (= lambda!204406 lambda!204403))))

(declare-fun bs!1081619 () Bool)

(assert (= bs!1081619 (and b!4679238 d!1487169)))

(assert (=> bs!1081619 (= (= lt!1838563 lt!1838905) (= lambda!204406 lambda!204395))))

(declare-fun bs!1081620 () Bool)

(assert (= bs!1081620 (and b!4679238 b!4679239)))

(assert (=> bs!1081620 (= lambda!204406 lambda!204405)))

(declare-fun bs!1081621 () Bool)

(assert (= bs!1081621 (and b!4679238 d!1487251)))

(assert (=> bs!1081621 (= (= lt!1838563 lt!1838932) (= lambda!204406 lambda!204404))))

(assert (=> b!4679238 true))

(declare-fun lambda!204407 () Int)

(declare-fun lt!1838943 () ListMap!4825)

(assert (=> bs!1081615 (= (= lt!1838943 lt!1838563) (= lambda!204407 lambda!204401))))

(assert (=> bs!1081616 (= (= lt!1838943 lt!1838563) (= lambda!204407 lambda!204402))))

(assert (=> bs!1081617 (= (= lt!1838943 lt!1838895) (= lambda!204407 lambda!204392))))

(assert (=> bs!1081618 (= (= lt!1838943 lt!1838563) (= lambda!204407 lambda!204390))))

(assert (=> b!4679238 (= (= lt!1838943 lt!1838563) (= lambda!204407 lambda!204406))))

(assert (=> bs!1081617 (= (= lt!1838943 lt!1838563) (= lambda!204407 lambda!204391))))

(assert (=> bs!1081616 (= (= lt!1838943 lt!1838922) (= lambda!204407 lambda!204403))))

(assert (=> bs!1081619 (= (= lt!1838943 lt!1838905) (= lambda!204407 lambda!204395))))

(assert (=> bs!1081620 (= (= lt!1838943 lt!1838563) (= lambda!204407 lambda!204405))))

(assert (=> bs!1081621 (= (= lt!1838943 lt!1838932) (= lambda!204407 lambda!204404))))

(assert (=> b!4679238 true))

(declare-fun bs!1081622 () Bool)

(declare-fun d!1487253 () Bool)

(assert (= bs!1081622 (and d!1487253 b!4679234)))

(declare-fun lambda!204408 () Int)

(declare-fun lt!1838953 () ListMap!4825)

(assert (=> bs!1081622 (= (= lt!1838953 lt!1838563) (= lambda!204408 lambda!204401))))

(declare-fun bs!1081623 () Bool)

(assert (= bs!1081623 (and d!1487253 b!4679233)))

(assert (=> bs!1081623 (= (= lt!1838953 lt!1838563) (= lambda!204408 lambda!204402))))

(declare-fun bs!1081624 () Bool)

(assert (= bs!1081624 (and d!1487253 b!4679209)))

(assert (=> bs!1081624 (= (= lt!1838953 lt!1838895) (= lambda!204408 lambda!204392))))

(declare-fun bs!1081625 () Bool)

(assert (= bs!1081625 (and d!1487253 b!4679210)))

(assert (=> bs!1081625 (= (= lt!1838953 lt!1838563) (= lambda!204408 lambda!204390))))

(declare-fun bs!1081626 () Bool)

(assert (= bs!1081626 (and d!1487253 b!4679238)))

(assert (=> bs!1081626 (= (= lt!1838953 lt!1838563) (= lambda!204408 lambda!204406))))

(assert (=> bs!1081624 (= (= lt!1838953 lt!1838563) (= lambda!204408 lambda!204391))))

(assert (=> bs!1081626 (= (= lt!1838953 lt!1838943) (= lambda!204408 lambda!204407))))

(assert (=> bs!1081623 (= (= lt!1838953 lt!1838922) (= lambda!204408 lambda!204403))))

(declare-fun bs!1081627 () Bool)

(assert (= bs!1081627 (and d!1487253 d!1487169)))

(assert (=> bs!1081627 (= (= lt!1838953 lt!1838905) (= lambda!204408 lambda!204395))))

(declare-fun bs!1081628 () Bool)

(assert (= bs!1081628 (and d!1487253 b!4679239)))

(assert (=> bs!1081628 (= (= lt!1838953 lt!1838563) (= lambda!204408 lambda!204405))))

(declare-fun bs!1081629 () Bool)

(assert (= bs!1081629 (and d!1487253 d!1487251)))

(assert (=> bs!1081629 (= (= lt!1838953 lt!1838932) (= lambda!204408 lambda!204404))))

(assert (=> d!1487253 true))

(declare-fun b!4679237 () Bool)

(declare-fun e!2919450 () Bool)

(assert (=> b!4679237 (= e!2919450 (invariantList!1372 (toList!5461 lt!1838953)))))

(assert (=> d!1487253 e!2919450))

(declare-fun res!1971566 () Bool)

(assert (=> d!1487253 (=> (not res!1971566) (not e!2919450))))

(assert (=> d!1487253 (= res!1971566 (forall!11217 lt!1838561 lambda!204408))))

(declare-fun e!2919449 () ListMap!4825)

(assert (=> d!1487253 (= lt!1838953 e!2919449)))

(declare-fun c!800484 () Bool)

(assert (=> d!1487253 (= c!800484 ((_ is Nil!52235) lt!1838561))))

(assert (=> d!1487253 (noDuplicateKeys!1786 lt!1838561)))

(assert (=> d!1487253 (= (addToMapMapFromBucket!1218 lt!1838561 lt!1838563) lt!1838953)))

(declare-fun bm!327009 () Bool)

(declare-fun call!327016 () Bool)

(assert (=> bm!327009 (= call!327016 (forall!11217 (ite c!800484 (toList!5461 lt!1838563) lt!1838561) (ite c!800484 lambda!204405 lambda!204407)))))

(assert (=> b!4679238 (= e!2919449 lt!1838943)))

(declare-fun lt!1838954 () ListMap!4825)

(assert (=> b!4679238 (= lt!1838954 (+!2088 lt!1838563 (h!58442 lt!1838561)))))

(assert (=> b!4679238 (= lt!1838943 (addToMapMapFromBucket!1218 (t!359509 lt!1838561) (+!2088 lt!1838563 (h!58442 lt!1838561))))))

(declare-fun lt!1838950 () Unit!122237)

(declare-fun call!327014 () Unit!122237)

(assert (=> b!4679238 (= lt!1838950 call!327014)))

(assert (=> b!4679238 (forall!11217 (toList!5461 lt!1838563) lambda!204406)))

(declare-fun lt!1838946 () Unit!122237)

(assert (=> b!4679238 (= lt!1838946 lt!1838950)))

(assert (=> b!4679238 (forall!11217 (toList!5461 lt!1838954) lambda!204407)))

(declare-fun lt!1838951 () Unit!122237)

(declare-fun Unit!122311 () Unit!122237)

(assert (=> b!4679238 (= lt!1838951 Unit!122311)))

(assert (=> b!4679238 (forall!11217 (t!359509 lt!1838561) lambda!204407)))

(declare-fun lt!1838945 () Unit!122237)

(declare-fun Unit!122312 () Unit!122237)

(assert (=> b!4679238 (= lt!1838945 Unit!122312)))

(declare-fun lt!1838938 () Unit!122237)

(declare-fun Unit!122313 () Unit!122237)

(assert (=> b!4679238 (= lt!1838938 Unit!122313)))

(declare-fun lt!1838948 () Unit!122237)

(assert (=> b!4679238 (= lt!1838948 (forallContained!3344 (toList!5461 lt!1838954) lambda!204407 (h!58442 lt!1838561)))))

(assert (=> b!4679238 (contains!15370 lt!1838954 (_1!30063 (h!58442 lt!1838561)))))

(declare-fun lt!1838949 () Unit!122237)

(declare-fun Unit!122314 () Unit!122237)

(assert (=> b!4679238 (= lt!1838949 Unit!122314)))

(assert (=> b!4679238 (contains!15370 lt!1838943 (_1!30063 (h!58442 lt!1838561)))))

(declare-fun lt!1838937 () Unit!122237)

(declare-fun Unit!122315 () Unit!122237)

(assert (=> b!4679238 (= lt!1838937 Unit!122315)))

(assert (=> b!4679238 (forall!11217 lt!1838561 lambda!204407)))

(declare-fun lt!1838955 () Unit!122237)

(declare-fun Unit!122316 () Unit!122237)

(assert (=> b!4679238 (= lt!1838955 Unit!122316)))

(assert (=> b!4679238 (forall!11217 (toList!5461 lt!1838954) lambda!204407)))

(declare-fun lt!1838944 () Unit!122237)

(declare-fun Unit!122317 () Unit!122237)

(assert (=> b!4679238 (= lt!1838944 Unit!122317)))

(declare-fun lt!1838947 () Unit!122237)

(declare-fun Unit!122318 () Unit!122237)

(assert (=> b!4679238 (= lt!1838947 Unit!122318)))

(declare-fun lt!1838936 () Unit!122237)

(assert (=> b!4679238 (= lt!1838936 (addForallContainsKeyThenBeforeAdding!659 lt!1838563 lt!1838943 (_1!30063 (h!58442 lt!1838561)) (_2!30063 (h!58442 lt!1838561))))))

(assert (=> b!4679238 (forall!11217 (toList!5461 lt!1838563) lambda!204407)))

(declare-fun lt!1838940 () Unit!122237)

(assert (=> b!4679238 (= lt!1838940 lt!1838936)))

(assert (=> b!4679238 (forall!11217 (toList!5461 lt!1838563) lambda!204407)))

(declare-fun lt!1838939 () Unit!122237)

(declare-fun Unit!122319 () Unit!122237)

(assert (=> b!4679238 (= lt!1838939 Unit!122319)))

(declare-fun res!1971567 () Bool)

(assert (=> b!4679238 (= res!1971567 call!327016)))

(declare-fun e!2919448 () Bool)

(assert (=> b!4679238 (=> (not res!1971567) (not e!2919448))))

(assert (=> b!4679238 e!2919448))

(declare-fun lt!1838935 () Unit!122237)

(declare-fun Unit!122320 () Unit!122237)

(assert (=> b!4679238 (= lt!1838935 Unit!122320)))

(assert (=> b!4679239 (= e!2919449 lt!1838563)))

(declare-fun lt!1838941 () Unit!122237)

(assert (=> b!4679239 (= lt!1838941 call!327014)))

(declare-fun call!327015 () Bool)

(assert (=> b!4679239 call!327015))

(declare-fun lt!1838952 () Unit!122237)

(assert (=> b!4679239 (= lt!1838952 lt!1838941)))

(assert (=> b!4679239 call!327016))

(declare-fun lt!1838942 () Unit!122237)

(declare-fun Unit!122321 () Unit!122237)

(assert (=> b!4679239 (= lt!1838942 Unit!122321)))

(declare-fun bm!327010 () Bool)

(assert (=> bm!327010 (= call!327015 (forall!11217 (toList!5461 lt!1838563) (ite c!800484 lambda!204405 lambda!204407)))))

(declare-fun b!4679240 () Bool)

(assert (=> b!4679240 (= e!2919448 call!327015)))

(declare-fun b!4679241 () Bool)

(declare-fun res!1971568 () Bool)

(assert (=> b!4679241 (=> (not res!1971568) (not e!2919450))))

(assert (=> b!4679241 (= res!1971568 (forall!11217 (toList!5461 lt!1838563) lambda!204408))))

(declare-fun bm!327011 () Bool)

(assert (=> bm!327011 (= call!327014 (lemmaContainsAllItsOwnKeys!660 lt!1838563))))

(assert (= (and d!1487253 c!800484) b!4679239))

(assert (= (and d!1487253 (not c!800484)) b!4679238))

(assert (= (and b!4679238 res!1971567) b!4679240))

(assert (= (or b!4679239 b!4679238) bm!327011))

(assert (= (or b!4679239 b!4679238) bm!327009))

(assert (= (or b!4679239 b!4679240) bm!327010))

(assert (= (and d!1487253 res!1971566) b!4679241))

(assert (= (and b!4679241 res!1971568) b!4679237))

(assert (=> bm!327011 m!5574891))

(declare-fun m!5574975 () Bool)

(assert (=> bm!327009 m!5574975))

(declare-fun m!5574977 () Bool)

(assert (=> bm!327010 m!5574977))

(declare-fun m!5574979 () Bool)

(assert (=> b!4679238 m!5574979))

(declare-fun m!5574981 () Bool)

(assert (=> b!4679238 m!5574981))

(declare-fun m!5574983 () Bool)

(assert (=> b!4679238 m!5574983))

(declare-fun m!5574985 () Bool)

(assert (=> b!4679238 m!5574985))

(declare-fun m!5574987 () Bool)

(assert (=> b!4679238 m!5574987))

(declare-fun m!5574989 () Bool)

(assert (=> b!4679238 m!5574989))

(assert (=> b!4679238 m!5574985))

(declare-fun m!5574991 () Bool)

(assert (=> b!4679238 m!5574991))

(declare-fun m!5574993 () Bool)

(assert (=> b!4679238 m!5574993))

(declare-fun m!5574995 () Bool)

(assert (=> b!4679238 m!5574995))

(declare-fun m!5574997 () Bool)

(assert (=> b!4679238 m!5574997))

(declare-fun m!5574999 () Bool)

(assert (=> b!4679238 m!5574999))

(assert (=> b!4679238 m!5574991))

(assert (=> b!4679238 m!5574981))

(declare-fun m!5575001 () Bool)

(assert (=> b!4679237 m!5575001))

(declare-fun m!5575003 () Bool)

(assert (=> b!4679241 m!5575003))

(declare-fun m!5575005 () Bool)

(assert (=> d!1487253 m!5575005))

(declare-fun m!5575007 () Bool)

(assert (=> d!1487253 m!5575007))

(assert (=> b!4679001 d!1487253))

(declare-fun bs!1081630 () Bool)

(declare-fun d!1487255 () Bool)

(assert (= bs!1081630 (and d!1487255 d!1487253)))

(declare-fun lambda!204411 () Int)

(assert (=> bs!1081630 (not (= lambda!204411 lambda!204408))))

(declare-fun bs!1081631 () Bool)

(assert (= bs!1081631 (and d!1487255 b!4679234)))

(assert (=> bs!1081631 (not (= lambda!204411 lambda!204401))))

(declare-fun bs!1081632 () Bool)

(assert (= bs!1081632 (and d!1487255 b!4679233)))

(assert (=> bs!1081632 (not (= lambda!204411 lambda!204402))))

(declare-fun bs!1081633 () Bool)

(assert (= bs!1081633 (and d!1487255 b!4679209)))

(assert (=> bs!1081633 (not (= lambda!204411 lambda!204392))))

(declare-fun bs!1081634 () Bool)

(assert (= bs!1081634 (and d!1487255 b!4679210)))

(assert (=> bs!1081634 (not (= lambda!204411 lambda!204390))))

(declare-fun bs!1081635 () Bool)

(assert (= bs!1081635 (and d!1487255 b!4679238)))

(assert (=> bs!1081635 (not (= lambda!204411 lambda!204406))))

(assert (=> bs!1081633 (not (= lambda!204411 lambda!204391))))

(assert (=> bs!1081635 (not (= lambda!204411 lambda!204407))))

(assert (=> bs!1081632 (not (= lambda!204411 lambda!204403))))

(declare-fun bs!1081636 () Bool)

(assert (= bs!1081636 (and d!1487255 d!1487169)))

(assert (=> bs!1081636 (not (= lambda!204411 lambda!204395))))

(declare-fun bs!1081637 () Bool)

(assert (= bs!1081637 (and d!1487255 b!4679239)))

(assert (=> bs!1081637 (not (= lambda!204411 lambda!204405))))

(declare-fun bs!1081638 () Bool)

(assert (= bs!1081638 (and d!1487255 d!1487251)))

(assert (=> bs!1081638 (not (= lambda!204411 lambda!204404))))

(assert (=> d!1487255 true))

(assert (=> d!1487255 true))

(assert (=> d!1487255 (= (allKeysSameHash!1612 oldBucket!34 hash!405 hashF!1323) (forall!11217 oldBucket!34 lambda!204411))))

(declare-fun bs!1081639 () Bool)

(assert (= bs!1081639 d!1487255))

(declare-fun m!5575009 () Bool)

(assert (=> bs!1081639 m!5575009))

(assert (=> b!4678982 d!1487255))

(declare-fun d!1487257 () Bool)

(declare-fun e!2919451 () Bool)

(assert (=> d!1487257 e!2919451))

(declare-fun res!1971569 () Bool)

(assert (=> d!1487257 (=> (not res!1971569) (not e!2919451))))

(declare-fun lt!1838956 () ListMap!4825)

(assert (=> d!1487257 (= res!1971569 (not (contains!15370 lt!1838956 key!4653)))))

(assert (=> d!1487257 (= lt!1838956 (ListMap!4826 (removePresrvNoDuplicatedKeys!325 (toList!5461 lt!1838559) key!4653)))))

(assert (=> d!1487257 (= (-!650 lt!1838559 key!4653) lt!1838956)))

(declare-fun b!4679246 () Bool)

(assert (=> b!4679246 (= e!2919451 (= ((_ map and) (content!9102 (keys!18607 lt!1838559)) ((_ map not) (store ((as const (Array K!13615 Bool)) false) key!4653 true))) (content!9102 (keys!18607 lt!1838956))))))

(assert (= (and d!1487257 res!1971569) b!4679246))

(declare-fun m!5575011 () Bool)

(assert (=> d!1487257 m!5575011))

(declare-fun m!5575013 () Bool)

(assert (=> d!1487257 m!5575013))

(assert (=> b!4679246 m!5574437))

(declare-fun m!5575015 () Bool)

(assert (=> b!4679246 m!5575015))

(declare-fun m!5575017 () Bool)

(assert (=> b!4679246 m!5575017))

(declare-fun m!5575019 () Bool)

(assert (=> b!4679246 m!5575019))

(declare-fun m!5575021 () Bool)

(assert (=> b!4679246 m!5575021))

(assert (=> b!4679246 m!5575015))

(assert (=> b!4679246 m!5575019))

(assert (=> b!4678981 d!1487257))

(declare-fun d!1487259 () Bool)

(declare-fun e!2919452 () Bool)

(assert (=> d!1487259 e!2919452))

(declare-fun res!1971570 () Bool)

(assert (=> d!1487259 (=> (not res!1971570) (not e!2919452))))

(declare-fun lt!1838957 () ListMap!4825)

(assert (=> d!1487259 (= res!1971570 (not (contains!15370 lt!1838957 key!4653)))))

(assert (=> d!1487259 (= lt!1838957 (ListMap!4826 (removePresrvNoDuplicatedKeys!325 (toList!5461 (+!2088 lt!1838564 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))) key!4653)))))

(assert (=> d!1487259 (= (-!650 (+!2088 lt!1838564 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))) key!4653) lt!1838957)))

(declare-fun b!4679247 () Bool)

(assert (=> b!4679247 (= e!2919452 (= ((_ map and) (content!9102 (keys!18607 (+!2088 lt!1838564 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13615 Bool)) false) key!4653 true))) (content!9102 (keys!18607 lt!1838957))))))

(assert (= (and d!1487259 res!1971570) b!4679247))

(declare-fun m!5575023 () Bool)

(assert (=> d!1487259 m!5575023))

(declare-fun m!5575025 () Bool)

(assert (=> d!1487259 m!5575025))

(assert (=> b!4679247 m!5574437))

(declare-fun m!5575027 () Bool)

(assert (=> b!4679247 m!5575027))

(declare-fun m!5575029 () Bool)

(assert (=> b!4679247 m!5575029))

(declare-fun m!5575031 () Bool)

(assert (=> b!4679247 m!5575031))

(declare-fun m!5575033 () Bool)

(assert (=> b!4679247 m!5575033))

(assert (=> b!4679247 m!5575027))

(assert (=> b!4679247 m!5574391))

(assert (=> b!4679247 m!5575031))

(assert (=> b!4678981 d!1487259))

(declare-fun d!1487261 () Bool)

(declare-fun e!2919455 () Bool)

(assert (=> d!1487261 e!2919455))

(declare-fun res!1971576 () Bool)

(assert (=> d!1487261 (=> (not res!1971576) (not e!2919455))))

(declare-fun lt!1838966 () ListMap!4825)

(assert (=> d!1487261 (= res!1971576 (contains!15370 lt!1838966 (_1!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))))))

(declare-fun lt!1838968 () List!52359)

(assert (=> d!1487261 (= lt!1838966 (ListMap!4826 lt!1838968))))

(declare-fun lt!1838967 () Unit!122237)

(declare-fun lt!1838969 () Unit!122237)

(assert (=> d!1487261 (= lt!1838967 lt!1838969)))

(assert (=> d!1487261 (= (getValueByKey!1715 lt!1838968 (_1!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))) (Some!11966 (_2!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!974 (List!52359 K!13615 V!13861) Unit!122237)

(assert (=> d!1487261 (= lt!1838969 (lemmaContainsTupThenGetReturnValue!974 lt!1838968 (_1!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))) (_2!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!482 (List!52359 K!13615 V!13861) List!52359)

(assert (=> d!1487261 (= lt!1838968 (insertNoDuplicatedKeys!482 (toList!5461 lt!1838564) (_1!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))) (_2!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))))))

(assert (=> d!1487261 (= (+!2088 lt!1838564 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))) lt!1838966)))

(declare-fun b!4679252 () Bool)

(declare-fun res!1971575 () Bool)

(assert (=> b!4679252 (=> (not res!1971575) (not e!2919455))))

(assert (=> b!4679252 (= res!1971575 (= (getValueByKey!1715 (toList!5461 lt!1838966) (_1!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34))))) (Some!11966 (_2!30063 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))))))))

(declare-fun b!4679253 () Bool)

(declare-fun contains!15374 (List!52359 tuple2!53538) Bool)

(assert (=> b!4679253 (= e!2919455 (contains!15374 (toList!5461 lt!1838966) (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))))))

(assert (= (and d!1487261 res!1971576) b!4679252))

(assert (= (and b!4679252 res!1971575) b!4679253))

(declare-fun m!5575035 () Bool)

(assert (=> d!1487261 m!5575035))

(declare-fun m!5575037 () Bool)

(assert (=> d!1487261 m!5575037))

(declare-fun m!5575039 () Bool)

(assert (=> d!1487261 m!5575039))

(declare-fun m!5575041 () Bool)

(assert (=> d!1487261 m!5575041))

(declare-fun m!5575043 () Bool)

(assert (=> b!4679252 m!5575043))

(declare-fun m!5575045 () Bool)

(assert (=> b!4679253 m!5575045))

(assert (=> b!4678981 d!1487261))

(declare-fun d!1487263 () Bool)

(assert (=> d!1487263 (= (-!650 (+!2088 lt!1838564 (tuple2!53539 key!4653 (_2!30063 (h!58442 oldBucket!34)))) key!4653) lt!1838564)))

(declare-fun lt!1838972 () Unit!122237)

(declare-fun choose!32373 (ListMap!4825 K!13615 V!13861) Unit!122237)

(assert (=> d!1487263 (= lt!1838972 (choose!32373 lt!1838564 key!4653 (_2!30063 (h!58442 oldBucket!34))))))

(assert (=> d!1487263 (not (contains!15370 lt!1838564 key!4653))))

(assert (=> d!1487263 (= (addThenRemoveForNewKeyIsSame!41 lt!1838564 key!4653 (_2!30063 (h!58442 oldBucket!34))) lt!1838972)))

(declare-fun bs!1081640 () Bool)

(assert (= bs!1081640 d!1487263))

(assert (=> bs!1081640 m!5574391))

(assert (=> bs!1081640 m!5574391))

(assert (=> bs!1081640 m!5574393))

(declare-fun m!5575047 () Bool)

(assert (=> bs!1081640 m!5575047))

(assert (=> bs!1081640 m!5574359))

(assert (=> b!4678981 d!1487263))

(declare-fun bs!1081641 () Bool)

(declare-fun d!1487265 () Bool)

(assert (= bs!1081641 (and d!1487265 start!472356)))

(declare-fun lambda!204412 () Int)

(assert (=> bs!1081641 (= lambda!204412 lambda!204297)))

(declare-fun bs!1081642 () Bool)

(assert (= bs!1081642 (and d!1487265 d!1487157)))

(assert (=> bs!1081642 (= lambda!204412 lambda!204336)))

(declare-fun bs!1081643 () Bool)

(assert (= bs!1081643 (and d!1487265 d!1487239)))

(assert (=> bs!1081643 (= lambda!204412 lambda!204400)))

(declare-fun lt!1838973 () ListMap!4825)

(assert (=> d!1487265 (invariantList!1372 (toList!5461 lt!1838973))))

(declare-fun e!2919456 () ListMap!4825)

(assert (=> d!1487265 (= lt!1838973 e!2919456)))

(declare-fun c!800485 () Bool)

(assert (=> d!1487265 (= c!800485 ((_ is Cons!52236) (Cons!52236 (tuple2!53541 hash!405 newBucket!218) (t!359510 (toList!5462 lm!2023)))))))

(assert (=> d!1487265 (forall!11215 (Cons!52236 (tuple2!53541 hash!405 newBucket!218) (t!359510 (toList!5462 lm!2023))) lambda!204412)))

(assert (=> d!1487265 (= (extractMap!1812 (Cons!52236 (tuple2!53541 hash!405 newBucket!218) (t!359510 (toList!5462 lm!2023)))) lt!1838973)))

(declare-fun b!4679254 () Bool)

(assert (=> b!4679254 (= e!2919456 (addToMapMapFromBucket!1218 (_2!30064 (h!58443 (Cons!52236 (tuple2!53541 hash!405 newBucket!218) (t!359510 (toList!5462 lm!2023))))) (extractMap!1812 (t!359510 (Cons!52236 (tuple2!53541 hash!405 newBucket!218) (t!359510 (toList!5462 lm!2023)))))))))

(declare-fun b!4679255 () Bool)

(assert (=> b!4679255 (= e!2919456 (ListMap!4826 Nil!52235))))

(assert (= (and d!1487265 c!800485) b!4679254))

(assert (= (and d!1487265 (not c!800485)) b!4679255))

(declare-fun m!5575049 () Bool)

(assert (=> d!1487265 m!5575049))

(declare-fun m!5575051 () Bool)

(assert (=> d!1487265 m!5575051))

(declare-fun m!5575053 () Bool)

(assert (=> b!4679254 m!5575053))

(assert (=> b!4679254 m!5575053))

(declare-fun m!5575055 () Bool)

(assert (=> b!4679254 m!5575055))

(assert (=> b!4678992 d!1487265))

(declare-fun bs!1081644 () Bool)

(declare-fun d!1487267 () Bool)

(assert (= bs!1081644 (and d!1487267 start!472356)))

(declare-fun lambda!204413 () Int)

(assert (=> bs!1081644 (= lambda!204413 lambda!204297)))

(declare-fun bs!1081645 () Bool)

(assert (= bs!1081645 (and d!1487267 d!1487157)))

(assert (=> bs!1081645 (= lambda!204413 lambda!204336)))

(declare-fun bs!1081646 () Bool)

(assert (= bs!1081646 (and d!1487267 d!1487239)))

(assert (=> bs!1081646 (= lambda!204413 lambda!204400)))

(declare-fun bs!1081647 () Bool)

(assert (= bs!1081647 (and d!1487267 d!1487265)))

(assert (=> bs!1081647 (= lambda!204413 lambda!204412)))

(declare-fun lt!1838974 () ListMap!4825)

(assert (=> d!1487267 (invariantList!1372 (toList!5461 lt!1838974))))

(declare-fun e!2919457 () ListMap!4825)

(assert (=> d!1487267 (= lt!1838974 e!2919457)))

(declare-fun c!800486 () Bool)

(assert (=> d!1487267 (= c!800486 ((_ is Cons!52236) lt!1838572))))

(assert (=> d!1487267 (forall!11215 lt!1838572 lambda!204413)))

(assert (=> d!1487267 (= (extractMap!1812 lt!1838572) lt!1838974)))

(declare-fun b!4679256 () Bool)

(assert (=> b!4679256 (= e!2919457 (addToMapMapFromBucket!1218 (_2!30064 (h!58443 lt!1838572)) (extractMap!1812 (t!359510 lt!1838572))))))

(declare-fun b!4679257 () Bool)

(assert (=> b!4679257 (= e!2919457 (ListMap!4826 Nil!52235))))

(assert (= (and d!1487267 c!800486) b!4679256))

(assert (= (and d!1487267 (not c!800486)) b!4679257))

(declare-fun m!5575057 () Bool)

(assert (=> d!1487267 m!5575057))

(declare-fun m!5575059 () Bool)

(assert (=> d!1487267 m!5575059))

(declare-fun m!5575061 () Bool)

(assert (=> b!4679256 m!5575061))

(assert (=> b!4679256 m!5575061))

(declare-fun m!5575063 () Bool)

(assert (=> b!4679256 m!5575063))

(assert (=> b!4678992 d!1487267))

(declare-fun bs!1081648 () Bool)

(declare-fun d!1487269 () Bool)

(assert (= bs!1081648 (and d!1487269 d!1487253)))

(declare-fun lambda!204414 () Int)

(assert (=> bs!1081648 (not (= lambda!204414 lambda!204408))))

(declare-fun bs!1081649 () Bool)

(assert (= bs!1081649 (and d!1487269 b!4679234)))

(assert (=> bs!1081649 (not (= lambda!204414 lambda!204401))))

(declare-fun bs!1081650 () Bool)

(assert (= bs!1081650 (and d!1487269 b!4679233)))

(assert (=> bs!1081650 (not (= lambda!204414 lambda!204402))))

(declare-fun bs!1081651 () Bool)

(assert (= bs!1081651 (and d!1487269 b!4679209)))

(assert (=> bs!1081651 (not (= lambda!204414 lambda!204392))))

(declare-fun bs!1081652 () Bool)

(assert (= bs!1081652 (and d!1487269 b!4679210)))

(assert (=> bs!1081652 (not (= lambda!204414 lambda!204390))))

(declare-fun bs!1081653 () Bool)

(assert (= bs!1081653 (and d!1487269 b!4679238)))

(assert (=> bs!1081653 (not (= lambda!204414 lambda!204406))))

(declare-fun bs!1081654 () Bool)

(assert (= bs!1081654 (and d!1487269 d!1487255)))

(assert (=> bs!1081654 (= lambda!204414 lambda!204411)))

(assert (=> bs!1081651 (not (= lambda!204414 lambda!204391))))

(assert (=> bs!1081653 (not (= lambda!204414 lambda!204407))))

(assert (=> bs!1081650 (not (= lambda!204414 lambda!204403))))

(declare-fun bs!1081655 () Bool)

(assert (= bs!1081655 (and d!1487269 d!1487169)))

(assert (=> bs!1081655 (not (= lambda!204414 lambda!204395))))

(declare-fun bs!1081656 () Bool)

(assert (= bs!1081656 (and d!1487269 b!4679239)))

(assert (=> bs!1081656 (not (= lambda!204414 lambda!204405))))

(declare-fun bs!1081657 () Bool)

(assert (= bs!1081657 (and d!1487269 d!1487251)))

(assert (=> bs!1081657 (not (= lambda!204414 lambda!204404))))

(assert (=> d!1487269 true))

(assert (=> d!1487269 true))

(assert (=> d!1487269 (= (allKeysSameHash!1612 newBucket!218 hash!405 hashF!1323) (forall!11217 newBucket!218 lambda!204414))))

(declare-fun bs!1081658 () Bool)

(assert (= bs!1081658 d!1487269))

(declare-fun m!5575065 () Bool)

(assert (=> bs!1081658 m!5575065))

(assert (=> b!4678983 d!1487269))

(declare-fun d!1487271 () Bool)

(assert (=> d!1487271 (= (eq!975 lt!1838559 lt!1838568) (= (content!9101 (toList!5461 lt!1838559)) (content!9101 (toList!5461 lt!1838568))))))

(declare-fun bs!1081659 () Bool)

(assert (= bs!1081659 d!1487271))

(declare-fun m!5575067 () Bool)

(assert (=> bs!1081659 m!5575067))

(declare-fun m!5575069 () Bool)

(assert (=> bs!1081659 m!5575069))

(assert (=> b!4678994 d!1487271))

(declare-fun bs!1081660 () Bool)

(declare-fun d!1487273 () Bool)

(assert (= bs!1081660 (and d!1487273 d!1487267)))

(declare-fun lambda!204415 () Int)

(assert (=> bs!1081660 (= lambda!204415 lambda!204413)))

(declare-fun bs!1081661 () Bool)

(assert (= bs!1081661 (and d!1487273 d!1487157)))

(assert (=> bs!1081661 (= lambda!204415 lambda!204336)))

(declare-fun bs!1081662 () Bool)

(assert (= bs!1081662 (and d!1487273 d!1487265)))

(assert (=> bs!1081662 (= lambda!204415 lambda!204412)))

(declare-fun bs!1081663 () Bool)

(assert (= bs!1081663 (and d!1487273 d!1487239)))

(assert (=> bs!1081663 (= lambda!204415 lambda!204400)))

(declare-fun bs!1081664 () Bool)

(assert (= bs!1081664 (and d!1487273 start!472356)))

(assert (=> bs!1081664 (= lambda!204415 lambda!204297)))

(declare-fun lt!1838975 () ListMap!4825)

(assert (=> d!1487273 (invariantList!1372 (toList!5461 lt!1838975))))

(declare-fun e!2919458 () ListMap!4825)

(assert (=> d!1487273 (= lt!1838975 e!2919458)))

(declare-fun c!800487 () Bool)

(assert (=> d!1487273 (= c!800487 ((_ is Cons!52236) lt!1838570))))

(assert (=> d!1487273 (forall!11215 lt!1838570 lambda!204415)))

(assert (=> d!1487273 (= (extractMap!1812 lt!1838570) lt!1838975)))

(declare-fun b!4679258 () Bool)

(assert (=> b!4679258 (= e!2919458 (addToMapMapFromBucket!1218 (_2!30064 (h!58443 lt!1838570)) (extractMap!1812 (t!359510 lt!1838570))))))

(declare-fun b!4679259 () Bool)

(assert (=> b!4679259 (= e!2919458 (ListMap!4826 Nil!52235))))

(assert (= (and d!1487273 c!800487) b!4679258))

(assert (= (and d!1487273 (not c!800487)) b!4679259))

(declare-fun m!5575071 () Bool)

(assert (=> d!1487273 m!5575071))

(declare-fun m!5575073 () Bool)

(assert (=> d!1487273 m!5575073))

(declare-fun m!5575075 () Bool)

(assert (=> b!4679258 m!5575075))

(assert (=> b!4679258 m!5575075))

(declare-fun m!5575077 () Bool)

(assert (=> b!4679258 m!5575077))

(assert (=> b!4678994 d!1487273))

(declare-fun d!1487275 () Bool)

(assert (=> d!1487275 (= (head!9863 (toList!5462 lm!2023)) (h!58443 (toList!5462 lm!2023)))))

(assert (=> b!4678993 d!1487275))

(declare-fun d!1487277 () Bool)

(declare-fun res!1971581 () Bool)

(declare-fun e!2919463 () Bool)

(assert (=> d!1487277 (=> res!1971581 e!2919463)))

(assert (=> d!1487277 (= res!1971581 (and ((_ is Cons!52235) lt!1838561) (= (_1!30063 (h!58442 lt!1838561)) key!4653)))))

(assert (=> d!1487277 (= (containsKey!2927 lt!1838561 key!4653) e!2919463)))

(declare-fun b!4679264 () Bool)

(declare-fun e!2919464 () Bool)

(assert (=> b!4679264 (= e!2919463 e!2919464)))

(declare-fun res!1971582 () Bool)

(assert (=> b!4679264 (=> (not res!1971582) (not e!2919464))))

(assert (=> b!4679264 (= res!1971582 ((_ is Cons!52235) lt!1838561))))

(declare-fun b!4679265 () Bool)

(assert (=> b!4679265 (= e!2919464 (containsKey!2927 (t!359509 lt!1838561) key!4653))))

(assert (= (and d!1487277 (not res!1971581)) b!4679264))

(assert (= (and b!4679264 res!1971582) b!4679265))

(declare-fun m!5575079 () Bool)

(assert (=> b!4679265 m!5575079))

(assert (=> b!4678995 d!1487277))

(declare-fun d!1487279 () Bool)

(declare-fun lt!1838978 () List!52359)

(assert (=> d!1487279 (not (containsKey!2927 lt!1838978 key!4653))))

(declare-fun e!2919469 () List!52359)

(assert (=> d!1487279 (= lt!1838978 e!2919469)))

(declare-fun c!800493 () Bool)

(assert (=> d!1487279 (= c!800493 (and ((_ is Cons!52235) oldBucket!34) (= (_1!30063 (h!58442 oldBucket!34)) key!4653)))))

(assert (=> d!1487279 (noDuplicateKeys!1786 oldBucket!34)))

(assert (=> d!1487279 (= (removePairForKey!1381 oldBucket!34 key!4653) lt!1838978)))

(declare-fun b!4679275 () Bool)

(declare-fun e!2919470 () List!52359)

(assert (=> b!4679275 (= e!2919469 e!2919470)))

(declare-fun c!800492 () Bool)

(assert (=> b!4679275 (= c!800492 ((_ is Cons!52235) oldBucket!34))))

(declare-fun b!4679276 () Bool)

(assert (=> b!4679276 (= e!2919470 (Cons!52235 (h!58442 oldBucket!34) (removePairForKey!1381 (t!359509 oldBucket!34) key!4653)))))

(declare-fun b!4679274 () Bool)

(assert (=> b!4679274 (= e!2919469 (t!359509 oldBucket!34))))

(declare-fun b!4679277 () Bool)

(assert (=> b!4679277 (= e!2919470 Nil!52235)))

(assert (= (and d!1487279 c!800493) b!4679274))

(assert (= (and d!1487279 (not c!800493)) b!4679275))

(assert (= (and b!4679275 c!800492) b!4679276))

(assert (= (and b!4679275 (not c!800492)) b!4679277))

(declare-fun m!5575081 () Bool)

(assert (=> d!1487279 m!5575081))

(assert (=> d!1487279 m!5574347))

(declare-fun m!5575083 () Bool)

(assert (=> b!4679276 m!5575083))

(assert (=> b!4678984 d!1487279))

(declare-fun d!1487281 () Bool)

(declare-fun res!1971583 () Bool)

(declare-fun e!2919471 () Bool)

(assert (=> d!1487281 (=> res!1971583 e!2919471)))

(assert (=> d!1487281 (= res!1971583 ((_ is Nil!52236) (toList!5462 lm!2023)))))

(assert (=> d!1487281 (= (forall!11215 (toList!5462 lm!2023) lambda!204297) e!2919471)))

(declare-fun b!4679278 () Bool)

(declare-fun e!2919472 () Bool)

(assert (=> b!4679278 (= e!2919471 e!2919472)))

(declare-fun res!1971584 () Bool)

(assert (=> b!4679278 (=> (not res!1971584) (not e!2919472))))

(assert (=> b!4679278 (= res!1971584 (dynLambda!21675 lambda!204297 (h!58443 (toList!5462 lm!2023))))))

(declare-fun b!4679279 () Bool)

(assert (=> b!4679279 (= e!2919472 (forall!11215 (t!359510 (toList!5462 lm!2023)) lambda!204297))))

(assert (= (and d!1487281 (not res!1971583)) b!4679278))

(assert (= (and b!4679278 res!1971584) b!4679279))

(declare-fun b_lambda!176639 () Bool)

(assert (=> (not b_lambda!176639) (not b!4679278)))

(declare-fun m!5575085 () Bool)

(assert (=> b!4679278 m!5575085))

(declare-fun m!5575087 () Bool)

(assert (=> b!4679279 m!5575087))

(assert (=> start!472356 d!1487281))

(declare-fun d!1487283 () Bool)

(declare-fun isStrictlySorted!611 (List!52360) Bool)

(assert (=> d!1487283 (= (inv!67489 lm!2023) (isStrictlySorted!611 (toList!5462 lm!2023)))))

(declare-fun bs!1081665 () Bool)

(assert (= bs!1081665 d!1487283))

(declare-fun m!5575089 () Bool)

(assert (=> bs!1081665 m!5575089))

(assert (=> start!472356 d!1487283))

(declare-fun bs!1081666 () Bool)

(declare-fun d!1487285 () Bool)

(assert (= bs!1081666 (and d!1487285 d!1487267)))

(declare-fun lambda!204418 () Int)

(assert (=> bs!1081666 (not (= lambda!204418 lambda!204413))))

(declare-fun bs!1081667 () Bool)

(assert (= bs!1081667 (and d!1487285 d!1487157)))

(assert (=> bs!1081667 (not (= lambda!204418 lambda!204336))))

(declare-fun bs!1081668 () Bool)

(assert (= bs!1081668 (and d!1487285 d!1487265)))

(assert (=> bs!1081668 (not (= lambda!204418 lambda!204412))))

(declare-fun bs!1081669 () Bool)

(assert (= bs!1081669 (and d!1487285 d!1487239)))

(assert (=> bs!1081669 (not (= lambda!204418 lambda!204400))))

(declare-fun bs!1081670 () Bool)

(assert (= bs!1081670 (and d!1487285 start!472356)))

(assert (=> bs!1081670 (not (= lambda!204418 lambda!204297))))

(declare-fun bs!1081671 () Bool)

(assert (= bs!1081671 (and d!1487285 d!1487273)))

(assert (=> bs!1081671 (not (= lambda!204418 lambda!204415))))

(assert (=> d!1487285 true))

(assert (=> d!1487285 (= (allKeysSameHashInMap!1700 lm!2023 hashF!1323) (forall!11215 (toList!5462 lm!2023) lambda!204418))))

(declare-fun bs!1081672 () Bool)

(assert (= bs!1081672 d!1487285))

(declare-fun m!5575091 () Bool)

(assert (=> bs!1081672 m!5575091))

(assert (=> b!4678986 d!1487285))

(declare-fun d!1487287 () Bool)

(declare-fun res!1971589 () Bool)

(declare-fun e!2919477 () Bool)

(assert (=> d!1487287 (=> res!1971589 e!2919477)))

(assert (=> d!1487287 (= res!1971589 (not ((_ is Cons!52235) oldBucket!34)))))

(assert (=> d!1487287 (= (noDuplicateKeys!1786 oldBucket!34) e!2919477)))

(declare-fun b!4679286 () Bool)

(declare-fun e!2919478 () Bool)

(assert (=> b!4679286 (= e!2919477 e!2919478)))

(declare-fun res!1971590 () Bool)

(assert (=> b!4679286 (=> (not res!1971590) (not e!2919478))))

(assert (=> b!4679286 (= res!1971590 (not (containsKey!2927 (t!359509 oldBucket!34) (_1!30063 (h!58442 oldBucket!34)))))))

(declare-fun b!4679287 () Bool)

(assert (=> b!4679287 (= e!2919478 (noDuplicateKeys!1786 (t!359509 oldBucket!34)))))

(assert (= (and d!1487287 (not res!1971589)) b!4679286))

(assert (= (and b!4679286 res!1971590) b!4679287))

(declare-fun m!5575093 () Bool)

(assert (=> b!4679286 m!5575093))

(declare-fun m!5575095 () Bool)

(assert (=> b!4679287 m!5575095))

(assert (=> b!4678985 d!1487287))

(declare-fun b!4679288 () Bool)

(declare-fun e!2919482 () List!52362)

(assert (=> b!4679288 (= e!2919482 (getKeysList!811 (toList!5461 lt!1838567)))))

(declare-fun b!4679289 () Bool)

(declare-fun e!2919483 () Bool)

(assert (=> b!4679289 (= e!2919483 (not (contains!15372 (keys!18607 lt!1838567) key!4653)))))

(declare-fun b!4679290 () Bool)

(declare-fun e!2919481 () Unit!122237)

(declare-fun lt!1838979 () Unit!122237)

(assert (=> b!4679290 (= e!2919481 lt!1838979)))

(declare-fun lt!1838985 () Unit!122237)

(assert (=> b!4679290 (= lt!1838985 (lemmaContainsKeyImpliesGetValueByKeyDefined!1606 (toList!5461 lt!1838567) key!4653))))

(assert (=> b!4679290 (isDefined!9221 (getValueByKey!1715 (toList!5461 lt!1838567) key!4653))))

(declare-fun lt!1838980 () Unit!122237)

(assert (=> b!4679290 (= lt!1838980 lt!1838985)))

(assert (=> b!4679290 (= lt!1838979 (lemmaInListThenGetKeysListContains!806 (toList!5461 lt!1838567) key!4653))))

(declare-fun call!327017 () Bool)

(assert (=> b!4679290 call!327017))

(declare-fun d!1487289 () Bool)

(declare-fun e!2919480 () Bool)

(assert (=> d!1487289 e!2919480))

(declare-fun res!1971592 () Bool)

(assert (=> d!1487289 (=> res!1971592 e!2919480)))

(assert (=> d!1487289 (= res!1971592 e!2919483)))

(declare-fun res!1971591 () Bool)

(assert (=> d!1487289 (=> (not res!1971591) (not e!2919483))))

(declare-fun lt!1838981 () Bool)

(assert (=> d!1487289 (= res!1971591 (not lt!1838981))))

(declare-fun lt!1838986 () Bool)

(assert (=> d!1487289 (= lt!1838981 lt!1838986)))

(declare-fun lt!1838983 () Unit!122237)

(assert (=> d!1487289 (= lt!1838983 e!2919481)))

(declare-fun c!800495 () Bool)

(assert (=> d!1487289 (= c!800495 lt!1838986)))

(assert (=> d!1487289 (= lt!1838986 (containsKey!2928 (toList!5461 lt!1838567) key!4653))))

(assert (=> d!1487289 (= (contains!15370 lt!1838567 key!4653) lt!1838981)))

(declare-fun b!4679291 () Bool)

(declare-fun e!2919484 () Bool)

(assert (=> b!4679291 (= e!2919480 e!2919484)))

(declare-fun res!1971593 () Bool)

(assert (=> b!4679291 (=> (not res!1971593) (not e!2919484))))

(assert (=> b!4679291 (= res!1971593 (isDefined!9221 (getValueByKey!1715 (toList!5461 lt!1838567) key!4653)))))

(declare-fun b!4679292 () Bool)

(assert (=> b!4679292 false))

(declare-fun lt!1838984 () Unit!122237)

(declare-fun lt!1838982 () Unit!122237)

(assert (=> b!4679292 (= lt!1838984 lt!1838982)))

(assert (=> b!4679292 (containsKey!2928 (toList!5461 lt!1838567) key!4653)))

(assert (=> b!4679292 (= lt!1838982 (lemmaInGetKeysListThenContainsKey!810 (toList!5461 lt!1838567) key!4653))))

(declare-fun e!2919479 () Unit!122237)

(declare-fun Unit!122333 () Unit!122237)

(assert (=> b!4679292 (= e!2919479 Unit!122333)))

(declare-fun b!4679293 () Bool)

(declare-fun Unit!122334 () Unit!122237)

(assert (=> b!4679293 (= e!2919479 Unit!122334)))

(declare-fun b!4679294 () Bool)

(assert (=> b!4679294 (= e!2919482 (keys!18607 lt!1838567))))

(declare-fun b!4679295 () Bool)

(assert (=> b!4679295 (= e!2919484 (contains!15372 (keys!18607 lt!1838567) key!4653))))

(declare-fun bm!327012 () Bool)

(assert (=> bm!327012 (= call!327017 (contains!15372 e!2919482 key!4653))))

(declare-fun c!800496 () Bool)

(assert (=> bm!327012 (= c!800496 c!800495)))

(declare-fun b!4679296 () Bool)

(assert (=> b!4679296 (= e!2919481 e!2919479)))

(declare-fun c!800494 () Bool)

(assert (=> b!4679296 (= c!800494 call!327017)))

(assert (= (and d!1487289 c!800495) b!4679290))

(assert (= (and d!1487289 (not c!800495)) b!4679296))

(assert (= (and b!4679296 c!800494) b!4679292))

(assert (= (and b!4679296 (not c!800494)) b!4679293))

(assert (= (or b!4679290 b!4679296) bm!327012))

(assert (= (and bm!327012 c!800496) b!4679288))

(assert (= (and bm!327012 (not c!800496)) b!4679294))

(assert (= (and d!1487289 res!1971591) b!4679289))

(assert (= (and d!1487289 (not res!1971592)) b!4679291))

(assert (= (and b!4679291 res!1971593) b!4679295))

(declare-fun m!5575097 () Bool)

(assert (=> b!4679291 m!5575097))

(assert (=> b!4679291 m!5575097))

(declare-fun m!5575099 () Bool)

(assert (=> b!4679291 m!5575099))

(declare-fun m!5575101 () Bool)

(assert (=> b!4679292 m!5575101))

(declare-fun m!5575103 () Bool)

(assert (=> b!4679292 m!5575103))

(declare-fun m!5575105 () Bool)

(assert (=> b!4679288 m!5575105))

(assert (=> d!1487289 m!5575101))

(declare-fun m!5575107 () Bool)

(assert (=> b!4679295 m!5575107))

(assert (=> b!4679295 m!5575107))

(declare-fun m!5575109 () Bool)

(assert (=> b!4679295 m!5575109))

(assert (=> b!4679294 m!5575107))

(declare-fun m!5575111 () Bool)

(assert (=> bm!327012 m!5575111))

(assert (=> b!4679289 m!5575107))

(assert (=> b!4679289 m!5575107))

(assert (=> b!4679289 m!5575109))

(declare-fun m!5575113 () Bool)

(assert (=> b!4679290 m!5575113))

(assert (=> b!4679290 m!5575097))

(assert (=> b!4679290 m!5575097))

(assert (=> b!4679290 m!5575099))

(declare-fun m!5575115 () Bool)

(assert (=> b!4679290 m!5575115))

(assert (=> b!4678996 d!1487289))

(declare-fun bs!1081673 () Bool)

(declare-fun d!1487291 () Bool)

(assert (= bs!1081673 (and d!1487291 d!1487267)))

(declare-fun lambda!204419 () Int)

(assert (=> bs!1081673 (= lambda!204419 lambda!204413)))

(declare-fun bs!1081674 () Bool)

(assert (= bs!1081674 (and d!1487291 d!1487157)))

(assert (=> bs!1081674 (= lambda!204419 lambda!204336)))

(declare-fun bs!1081675 () Bool)

(assert (= bs!1081675 (and d!1487291 d!1487265)))

(assert (=> bs!1081675 (= lambda!204419 lambda!204412)))

(declare-fun bs!1081676 () Bool)

(assert (= bs!1081676 (and d!1487291 d!1487239)))

(assert (=> bs!1081676 (= lambda!204419 lambda!204400)))

(declare-fun bs!1081677 () Bool)

(assert (= bs!1081677 (and d!1487291 d!1487273)))

(assert (=> bs!1081677 (= lambda!204419 lambda!204415)))

(declare-fun bs!1081678 () Bool)

(assert (= bs!1081678 (and d!1487291 start!472356)))

(assert (=> bs!1081678 (= lambda!204419 lambda!204297)))

(declare-fun bs!1081679 () Bool)

(assert (= bs!1081679 (and d!1487291 d!1487285)))

(assert (=> bs!1081679 (not (= lambda!204419 lambda!204418))))

(declare-fun lt!1838987 () ListMap!4825)

(assert (=> d!1487291 (invariantList!1372 (toList!5461 lt!1838987))))

(declare-fun e!2919485 () ListMap!4825)

(assert (=> d!1487291 (= lt!1838987 e!2919485)))

(declare-fun c!800497 () Bool)

(assert (=> d!1487291 (= c!800497 ((_ is Cons!52236) (toList!5462 lm!2023)))))

(assert (=> d!1487291 (forall!11215 (toList!5462 lm!2023) lambda!204419)))

(assert (=> d!1487291 (= (extractMap!1812 (toList!5462 lm!2023)) lt!1838987)))

(declare-fun b!4679297 () Bool)

(assert (=> b!4679297 (= e!2919485 (addToMapMapFromBucket!1218 (_2!30064 (h!58443 (toList!5462 lm!2023))) (extractMap!1812 (t!359510 (toList!5462 lm!2023)))))))

(declare-fun b!4679298 () Bool)

(assert (=> b!4679298 (= e!2919485 (ListMap!4826 Nil!52235))))

(assert (= (and d!1487291 c!800497) b!4679297))

(assert (= (and d!1487291 (not c!800497)) b!4679298))

(declare-fun m!5575117 () Bool)

(assert (=> d!1487291 m!5575117))

(declare-fun m!5575119 () Bool)

(assert (=> d!1487291 m!5575119))

(assert (=> b!4679297 m!5574367))

(assert (=> b!4679297 m!5574367))

(declare-fun m!5575121 () Bool)

(assert (=> b!4679297 m!5575121))

(assert (=> b!4678996 d!1487291))

(declare-fun d!1487293 () Bool)

(assert (=> d!1487293 (eq!975 (addToMapMapFromBucket!1218 (Cons!52235 lt!1838562 lt!1838561) lt!1838563) (+!2088 (addToMapMapFromBucket!1218 lt!1838561 lt!1838563) lt!1838562))))

(declare-fun lt!1838990 () Unit!122237)

(declare-fun choose!32374 (tuple2!53538 List!52359 ListMap!4825) Unit!122237)

(assert (=> d!1487293 (= lt!1838990 (choose!32374 lt!1838562 lt!1838561 lt!1838563))))

(assert (=> d!1487293 (noDuplicateKeys!1786 lt!1838561)))

(assert (=> d!1487293 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!224 lt!1838562 lt!1838561 lt!1838563) lt!1838990)))

(declare-fun bs!1081680 () Bool)

(assert (= bs!1081680 d!1487293))

(assert (=> bs!1081680 m!5574381))

(assert (=> bs!1081680 m!5575007))

(assert (=> bs!1081680 m!5574381))

(declare-fun m!5575123 () Bool)

(assert (=> bs!1081680 m!5575123))

(declare-fun m!5575125 () Bool)

(assert (=> bs!1081680 m!5575125))

(assert (=> bs!1081680 m!5574411))

(assert (=> bs!1081680 m!5575123))

(declare-fun m!5575127 () Bool)

(assert (=> bs!1081680 m!5575127))

(assert (=> bs!1081680 m!5574411))

(assert (=> b!4678997 d!1487293))

(declare-fun d!1487295 () Bool)

(declare-fun e!2919486 () Bool)

(assert (=> d!1487295 e!2919486))

(declare-fun res!1971595 () Bool)

(assert (=> d!1487295 (=> (not res!1971595) (not e!2919486))))

(declare-fun lt!1838991 () ListMap!4825)

(assert (=> d!1487295 (= res!1971595 (contains!15370 lt!1838991 (_1!30063 (h!58442 oldBucket!34))))))

(declare-fun lt!1838993 () List!52359)

(assert (=> d!1487295 (= lt!1838991 (ListMap!4826 lt!1838993))))

(declare-fun lt!1838992 () Unit!122237)

(declare-fun lt!1838994 () Unit!122237)

(assert (=> d!1487295 (= lt!1838992 lt!1838994)))

(assert (=> d!1487295 (= (getValueByKey!1715 lt!1838993 (_1!30063 (h!58442 oldBucket!34))) (Some!11966 (_2!30063 (h!58442 oldBucket!34))))))

(assert (=> d!1487295 (= lt!1838994 (lemmaContainsTupThenGetReturnValue!974 lt!1838993 (_1!30063 (h!58442 oldBucket!34)) (_2!30063 (h!58442 oldBucket!34))))))

(assert (=> d!1487295 (= lt!1838993 (insertNoDuplicatedKeys!482 (toList!5461 lt!1838564) (_1!30063 (h!58442 oldBucket!34)) (_2!30063 (h!58442 oldBucket!34))))))

(assert (=> d!1487295 (= (+!2088 lt!1838564 (h!58442 oldBucket!34)) lt!1838991)))

(declare-fun b!4679299 () Bool)

(declare-fun res!1971594 () Bool)

(assert (=> b!4679299 (=> (not res!1971594) (not e!2919486))))

(assert (=> b!4679299 (= res!1971594 (= (getValueByKey!1715 (toList!5461 lt!1838991) (_1!30063 (h!58442 oldBucket!34))) (Some!11966 (_2!30063 (h!58442 oldBucket!34)))))))

(declare-fun b!4679300 () Bool)

(assert (=> b!4679300 (= e!2919486 (contains!15374 (toList!5461 lt!1838991) (h!58442 oldBucket!34)))))

(assert (= (and d!1487295 res!1971595) b!4679299))

(assert (= (and b!4679299 res!1971594) b!4679300))

(declare-fun m!5575129 () Bool)

(assert (=> d!1487295 m!5575129))

(declare-fun m!5575131 () Bool)

(assert (=> d!1487295 m!5575131))

(declare-fun m!5575133 () Bool)

(assert (=> d!1487295 m!5575133))

(declare-fun m!5575135 () Bool)

(assert (=> d!1487295 m!5575135))

(declare-fun m!5575137 () Bool)

(assert (=> b!4679299 m!5575137))

(declare-fun m!5575139 () Bool)

(assert (=> b!4679300 m!5575139))

(assert (=> b!4678997 d!1487295))

(declare-fun d!1487297 () Bool)

(assert (=> d!1487297 (= (head!9864 oldBucket!34) (h!58442 oldBucket!34))))

(assert (=> b!4678997 d!1487297))

(declare-fun d!1487299 () Bool)

(assert (=> d!1487299 (= (eq!975 lt!1838559 (addToMapMapFromBucket!1218 oldBucket!34 lt!1838563)) (= (content!9101 (toList!5461 lt!1838559)) (content!9101 (toList!5461 (addToMapMapFromBucket!1218 oldBucket!34 lt!1838563)))))))

(declare-fun bs!1081681 () Bool)

(assert (= bs!1081681 d!1487299))

(assert (=> bs!1081681 m!5575067))

(declare-fun m!5575141 () Bool)

(assert (=> bs!1081681 m!5575141))

(assert (=> b!4678997 d!1487299))

(declare-fun bs!1081682 () Bool)

(declare-fun b!4679303 () Bool)

(assert (= bs!1081682 (and b!4679303 d!1487253)))

(declare-fun lambda!204420 () Int)

(assert (=> bs!1081682 (= (= lt!1838563 lt!1838953) (= lambda!204420 lambda!204408))))

(declare-fun bs!1081683 () Bool)

(assert (= bs!1081683 (and b!4679303 b!4679234)))

(assert (=> bs!1081683 (= lambda!204420 lambda!204401)))

(declare-fun bs!1081684 () Bool)

(assert (= bs!1081684 (and b!4679303 d!1487269)))

(assert (=> bs!1081684 (not (= lambda!204420 lambda!204414))))

(declare-fun bs!1081685 () Bool)

(assert (= bs!1081685 (and b!4679303 b!4679233)))

(assert (=> bs!1081685 (= lambda!204420 lambda!204402)))

(declare-fun bs!1081686 () Bool)

(assert (= bs!1081686 (and b!4679303 b!4679209)))

(assert (=> bs!1081686 (= (= lt!1838563 lt!1838895) (= lambda!204420 lambda!204392))))

(declare-fun bs!1081687 () Bool)

(assert (= bs!1081687 (and b!4679303 b!4679210)))

(assert (=> bs!1081687 (= lambda!204420 lambda!204390)))

(declare-fun bs!1081688 () Bool)

(assert (= bs!1081688 (and b!4679303 b!4679238)))

(assert (=> bs!1081688 (= lambda!204420 lambda!204406)))

(declare-fun bs!1081689 () Bool)

(assert (= bs!1081689 (and b!4679303 d!1487255)))

(assert (=> bs!1081689 (not (= lambda!204420 lambda!204411))))

(assert (=> bs!1081686 (= lambda!204420 lambda!204391)))

(assert (=> bs!1081688 (= (= lt!1838563 lt!1838943) (= lambda!204420 lambda!204407))))

(assert (=> bs!1081685 (= (= lt!1838563 lt!1838922) (= lambda!204420 lambda!204403))))

(declare-fun bs!1081690 () Bool)

(assert (= bs!1081690 (and b!4679303 d!1487169)))

(assert (=> bs!1081690 (= (= lt!1838563 lt!1838905) (= lambda!204420 lambda!204395))))

(declare-fun bs!1081691 () Bool)

(assert (= bs!1081691 (and b!4679303 b!4679239)))

(assert (=> bs!1081691 (= lambda!204420 lambda!204405)))

(declare-fun bs!1081692 () Bool)

(assert (= bs!1081692 (and b!4679303 d!1487251)))

(assert (=> bs!1081692 (= (= lt!1838563 lt!1838932) (= lambda!204420 lambda!204404))))

(assert (=> b!4679303 true))

(declare-fun bs!1081693 () Bool)

(declare-fun b!4679302 () Bool)

(assert (= bs!1081693 (and b!4679302 d!1487253)))

(declare-fun lambda!204421 () Int)

(assert (=> bs!1081693 (= (= lt!1838563 lt!1838953) (= lambda!204421 lambda!204408))))

(declare-fun bs!1081694 () Bool)

(assert (= bs!1081694 (and b!4679302 b!4679234)))

(assert (=> bs!1081694 (= lambda!204421 lambda!204401)))

(declare-fun bs!1081695 () Bool)

(assert (= bs!1081695 (and b!4679302 d!1487269)))

(assert (=> bs!1081695 (not (= lambda!204421 lambda!204414))))

(declare-fun bs!1081696 () Bool)

(assert (= bs!1081696 (and b!4679302 b!4679233)))

(assert (=> bs!1081696 (= lambda!204421 lambda!204402)))

(declare-fun bs!1081697 () Bool)

(assert (= bs!1081697 (and b!4679302 b!4679209)))

(assert (=> bs!1081697 (= (= lt!1838563 lt!1838895) (= lambda!204421 lambda!204392))))

(declare-fun bs!1081698 () Bool)

(assert (= bs!1081698 (and b!4679302 b!4679210)))

(assert (=> bs!1081698 (= lambda!204421 lambda!204390)))

(declare-fun bs!1081699 () Bool)

(assert (= bs!1081699 (and b!4679302 d!1487255)))

(assert (=> bs!1081699 (not (= lambda!204421 lambda!204411))))

(assert (=> bs!1081697 (= lambda!204421 lambda!204391)))

(declare-fun bs!1081700 () Bool)

(assert (= bs!1081700 (and b!4679302 b!4679238)))

(assert (=> bs!1081700 (= (= lt!1838563 lt!1838943) (= lambda!204421 lambda!204407))))

(assert (=> bs!1081696 (= (= lt!1838563 lt!1838922) (= lambda!204421 lambda!204403))))

(declare-fun bs!1081701 () Bool)

(assert (= bs!1081701 (and b!4679302 d!1487169)))

(assert (=> bs!1081701 (= (= lt!1838563 lt!1838905) (= lambda!204421 lambda!204395))))

(declare-fun bs!1081702 () Bool)

(assert (= bs!1081702 (and b!4679302 b!4679239)))

(assert (=> bs!1081702 (= lambda!204421 lambda!204405)))

(declare-fun bs!1081703 () Bool)

(assert (= bs!1081703 (and b!4679302 d!1487251)))

(assert (=> bs!1081703 (= (= lt!1838563 lt!1838932) (= lambda!204421 lambda!204404))))

(assert (=> bs!1081700 (= lambda!204421 lambda!204406)))

(declare-fun bs!1081704 () Bool)

(assert (= bs!1081704 (and b!4679302 b!4679303)))

(assert (=> bs!1081704 (= lambda!204421 lambda!204420)))

(assert (=> b!4679302 true))

(declare-fun lt!1839003 () ListMap!4825)

(declare-fun lambda!204422 () Int)

(assert (=> bs!1081693 (= (= lt!1839003 lt!1838953) (= lambda!204422 lambda!204408))))

(assert (=> bs!1081694 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204401))))

(assert (=> bs!1081695 (not (= lambda!204422 lambda!204414))))

(assert (=> b!4679302 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204421))))

(assert (=> bs!1081696 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204402))))

(assert (=> bs!1081697 (= (= lt!1839003 lt!1838895) (= lambda!204422 lambda!204392))))

(assert (=> bs!1081698 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204390))))

(assert (=> bs!1081699 (not (= lambda!204422 lambda!204411))))

(assert (=> bs!1081697 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204391))))

(assert (=> bs!1081700 (= (= lt!1839003 lt!1838943) (= lambda!204422 lambda!204407))))

(assert (=> bs!1081696 (= (= lt!1839003 lt!1838922) (= lambda!204422 lambda!204403))))

(assert (=> bs!1081701 (= (= lt!1839003 lt!1838905) (= lambda!204422 lambda!204395))))

(assert (=> bs!1081702 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204405))))

(assert (=> bs!1081703 (= (= lt!1839003 lt!1838932) (= lambda!204422 lambda!204404))))

(assert (=> bs!1081700 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204406))))

(assert (=> bs!1081704 (= (= lt!1839003 lt!1838563) (= lambda!204422 lambda!204420))))

(assert (=> b!4679302 true))

(declare-fun bs!1081705 () Bool)

(declare-fun d!1487301 () Bool)

(assert (= bs!1081705 (and d!1487301 b!4679234)))

(declare-fun lambda!204423 () Int)

(declare-fun lt!1839013 () ListMap!4825)

(assert (=> bs!1081705 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204401))))

(declare-fun bs!1081706 () Bool)

(assert (= bs!1081706 (and d!1487301 d!1487269)))

(assert (=> bs!1081706 (not (= lambda!204423 lambda!204414))))

(declare-fun bs!1081707 () Bool)

(assert (= bs!1081707 (and d!1487301 b!4679302)))

(assert (=> bs!1081707 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204421))))

(declare-fun bs!1081708 () Bool)

(assert (= bs!1081708 (and d!1487301 b!4679233)))

(assert (=> bs!1081708 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204402))))

(declare-fun bs!1081709 () Bool)

(assert (= bs!1081709 (and d!1487301 b!4679209)))

(assert (=> bs!1081709 (= (= lt!1839013 lt!1838895) (= lambda!204423 lambda!204392))))

(declare-fun bs!1081710 () Bool)

(assert (= bs!1081710 (and d!1487301 b!4679210)))

(assert (=> bs!1081710 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204390))))

(declare-fun bs!1081711 () Bool)

(assert (= bs!1081711 (and d!1487301 d!1487255)))

(assert (=> bs!1081711 (not (= lambda!204423 lambda!204411))))

(assert (=> bs!1081709 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204391))))

(declare-fun bs!1081712 () Bool)

(assert (= bs!1081712 (and d!1487301 b!4679238)))

(assert (=> bs!1081712 (= (= lt!1839013 lt!1838943) (= lambda!204423 lambda!204407))))

(assert (=> bs!1081707 (= (= lt!1839013 lt!1839003) (= lambda!204423 lambda!204422))))

(declare-fun bs!1081713 () Bool)

(assert (= bs!1081713 (and d!1487301 d!1487253)))

(assert (=> bs!1081713 (= (= lt!1839013 lt!1838953) (= lambda!204423 lambda!204408))))

(assert (=> bs!1081708 (= (= lt!1839013 lt!1838922) (= lambda!204423 lambda!204403))))

(declare-fun bs!1081714 () Bool)

(assert (= bs!1081714 (and d!1487301 d!1487169)))

(assert (=> bs!1081714 (= (= lt!1839013 lt!1838905) (= lambda!204423 lambda!204395))))

(declare-fun bs!1081715 () Bool)

(assert (= bs!1081715 (and d!1487301 b!4679239)))

(assert (=> bs!1081715 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204405))))

(declare-fun bs!1081716 () Bool)

(assert (= bs!1081716 (and d!1487301 d!1487251)))

(assert (=> bs!1081716 (= (= lt!1839013 lt!1838932) (= lambda!204423 lambda!204404))))

(assert (=> bs!1081712 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204406))))

(declare-fun bs!1081717 () Bool)

(assert (= bs!1081717 (and d!1487301 b!4679303)))

(assert (=> bs!1081717 (= (= lt!1839013 lt!1838563) (= lambda!204423 lambda!204420))))

(assert (=> d!1487301 true))

(declare-fun b!4679301 () Bool)

(declare-fun e!2919489 () Bool)

(assert (=> b!4679301 (= e!2919489 (invariantList!1372 (toList!5461 lt!1839013)))))

(assert (=> d!1487301 e!2919489))

(declare-fun res!1971596 () Bool)

(assert (=> d!1487301 (=> (not res!1971596) (not e!2919489))))

(assert (=> d!1487301 (= res!1971596 (forall!11217 (Cons!52235 lt!1838562 lt!1838561) lambda!204423))))

(declare-fun e!2919488 () ListMap!4825)

(assert (=> d!1487301 (= lt!1839013 e!2919488)))

(declare-fun c!800498 () Bool)

(assert (=> d!1487301 (= c!800498 ((_ is Nil!52235) (Cons!52235 lt!1838562 lt!1838561)))))

(assert (=> d!1487301 (noDuplicateKeys!1786 (Cons!52235 lt!1838562 lt!1838561))))

(assert (=> d!1487301 (= (addToMapMapFromBucket!1218 (Cons!52235 lt!1838562 lt!1838561) lt!1838563) lt!1839013)))

(declare-fun bm!327013 () Bool)

(declare-fun call!327020 () Bool)

(assert (=> bm!327013 (= call!327020 (forall!11217 (ite c!800498 (toList!5461 lt!1838563) (Cons!52235 lt!1838562 lt!1838561)) (ite c!800498 lambda!204420 lambda!204422)))))

(assert (=> b!4679302 (= e!2919488 lt!1839003)))

(declare-fun lt!1839014 () ListMap!4825)

(assert (=> b!4679302 (= lt!1839014 (+!2088 lt!1838563 (h!58442 (Cons!52235 lt!1838562 lt!1838561))))))

(assert (=> b!4679302 (= lt!1839003 (addToMapMapFromBucket!1218 (t!359509 (Cons!52235 lt!1838562 lt!1838561)) (+!2088 lt!1838563 (h!58442 (Cons!52235 lt!1838562 lt!1838561)))))))

(declare-fun lt!1839010 () Unit!122237)

(declare-fun call!327018 () Unit!122237)

(assert (=> b!4679302 (= lt!1839010 call!327018)))

(assert (=> b!4679302 (forall!11217 (toList!5461 lt!1838563) lambda!204421)))

(declare-fun lt!1839006 () Unit!122237)

(assert (=> b!4679302 (= lt!1839006 lt!1839010)))

(assert (=> b!4679302 (forall!11217 (toList!5461 lt!1839014) lambda!204422)))

(declare-fun lt!1839011 () Unit!122237)

(declare-fun Unit!122339 () Unit!122237)

(assert (=> b!4679302 (= lt!1839011 Unit!122339)))

(assert (=> b!4679302 (forall!11217 (t!359509 (Cons!52235 lt!1838562 lt!1838561)) lambda!204422)))

(declare-fun lt!1839005 () Unit!122237)

(declare-fun Unit!122340 () Unit!122237)

(assert (=> b!4679302 (= lt!1839005 Unit!122340)))

(declare-fun lt!1838998 () Unit!122237)

(declare-fun Unit!122341 () Unit!122237)

(assert (=> b!4679302 (= lt!1838998 Unit!122341)))

(declare-fun lt!1839008 () Unit!122237)

(assert (=> b!4679302 (= lt!1839008 (forallContained!3344 (toList!5461 lt!1839014) lambda!204422 (h!58442 (Cons!52235 lt!1838562 lt!1838561))))))

(assert (=> b!4679302 (contains!15370 lt!1839014 (_1!30063 (h!58442 (Cons!52235 lt!1838562 lt!1838561))))))

(declare-fun lt!1839009 () Unit!122237)

(declare-fun Unit!122342 () Unit!122237)

(assert (=> b!4679302 (= lt!1839009 Unit!122342)))

(assert (=> b!4679302 (contains!15370 lt!1839003 (_1!30063 (h!58442 (Cons!52235 lt!1838562 lt!1838561))))))

(declare-fun lt!1838997 () Unit!122237)

(declare-fun Unit!122343 () Unit!122237)

(assert (=> b!4679302 (= lt!1838997 Unit!122343)))

(assert (=> b!4679302 (forall!11217 (Cons!52235 lt!1838562 lt!1838561) lambda!204422)))

(declare-fun lt!1839015 () Unit!122237)

(declare-fun Unit!122344 () Unit!122237)

(assert (=> b!4679302 (= lt!1839015 Unit!122344)))

(assert (=> b!4679302 (forall!11217 (toList!5461 lt!1839014) lambda!204422)))

(declare-fun lt!1839004 () Unit!122237)

(declare-fun Unit!122345 () Unit!122237)

(assert (=> b!4679302 (= lt!1839004 Unit!122345)))

(declare-fun lt!1839007 () Unit!122237)

(declare-fun Unit!122346 () Unit!122237)

(assert (=> b!4679302 (= lt!1839007 Unit!122346)))

(declare-fun lt!1838996 () Unit!122237)

(assert (=> b!4679302 (= lt!1838996 (addForallContainsKeyThenBeforeAdding!659 lt!1838563 lt!1839003 (_1!30063 (h!58442 (Cons!52235 lt!1838562 lt!1838561))) (_2!30063 (h!58442 (Cons!52235 lt!1838562 lt!1838561)))))))

(assert (=> b!4679302 (forall!11217 (toList!5461 lt!1838563) lambda!204422)))

(declare-fun lt!1839000 () Unit!122237)

(assert (=> b!4679302 (= lt!1839000 lt!1838996)))

(assert (=> b!4679302 (forall!11217 (toList!5461 lt!1838563) lambda!204422)))

(declare-fun lt!1838999 () Unit!122237)

(declare-fun Unit!122347 () Unit!122237)

(assert (=> b!4679302 (= lt!1838999 Unit!122347)))

(declare-fun res!1971597 () Bool)

(assert (=> b!4679302 (= res!1971597 call!327020)))

(declare-fun e!2919487 () Bool)

(assert (=> b!4679302 (=> (not res!1971597) (not e!2919487))))

(assert (=> b!4679302 e!2919487))

(declare-fun lt!1838995 () Unit!122237)

(declare-fun Unit!122348 () Unit!122237)

(assert (=> b!4679302 (= lt!1838995 Unit!122348)))

(assert (=> b!4679303 (= e!2919488 lt!1838563)))

(declare-fun lt!1839001 () Unit!122237)

(assert (=> b!4679303 (= lt!1839001 call!327018)))

(declare-fun call!327019 () Bool)

(assert (=> b!4679303 call!327019))

(declare-fun lt!1839012 () Unit!122237)

(assert (=> b!4679303 (= lt!1839012 lt!1839001)))

(assert (=> b!4679303 call!327020))

(declare-fun lt!1839002 () Unit!122237)

(declare-fun Unit!122349 () Unit!122237)

(assert (=> b!4679303 (= lt!1839002 Unit!122349)))

(declare-fun bm!327014 () Bool)

(assert (=> bm!327014 (= call!327019 (forall!11217 (toList!5461 lt!1838563) (ite c!800498 lambda!204420 lambda!204422)))))

(declare-fun b!4679304 () Bool)

(assert (=> b!4679304 (= e!2919487 call!327019)))

(declare-fun b!4679305 () Bool)

(declare-fun res!1971598 () Bool)

(assert (=> b!4679305 (=> (not res!1971598) (not e!2919489))))

(assert (=> b!4679305 (= res!1971598 (forall!11217 (toList!5461 lt!1838563) lambda!204423))))

(declare-fun bm!327015 () Bool)

(assert (=> bm!327015 (= call!327018 (lemmaContainsAllItsOwnKeys!660 lt!1838563))))

(assert (= (and d!1487301 c!800498) b!4679303))

(assert (= (and d!1487301 (not c!800498)) b!4679302))

(assert (= (and b!4679302 res!1971597) b!4679304))

(assert (= (or b!4679303 b!4679302) bm!327015))

(assert (= (or b!4679303 b!4679302) bm!327013))

(assert (= (or b!4679303 b!4679304) bm!327014))

(assert (= (and d!1487301 res!1971596) b!4679305))

(assert (= (and b!4679305 res!1971598) b!4679301))

(assert (=> bm!327015 m!5574891))

(declare-fun m!5575143 () Bool)

(assert (=> bm!327013 m!5575143))

(declare-fun m!5575145 () Bool)

(assert (=> bm!327014 m!5575145))

(declare-fun m!5575147 () Bool)

(assert (=> b!4679302 m!5575147))

(declare-fun m!5575149 () Bool)

(assert (=> b!4679302 m!5575149))

(declare-fun m!5575151 () Bool)

(assert (=> b!4679302 m!5575151))

(declare-fun m!5575153 () Bool)

(assert (=> b!4679302 m!5575153))

(declare-fun m!5575155 () Bool)

(assert (=> b!4679302 m!5575155))

(declare-fun m!5575157 () Bool)

(assert (=> b!4679302 m!5575157))

(assert (=> b!4679302 m!5575153))

(declare-fun m!5575159 () Bool)

(assert (=> b!4679302 m!5575159))

(declare-fun m!5575161 () Bool)

(assert (=> b!4679302 m!5575161))

(declare-fun m!5575163 () Bool)

(assert (=> b!4679302 m!5575163))

(declare-fun m!5575165 () Bool)

(assert (=> b!4679302 m!5575165))

(declare-fun m!5575167 () Bool)

(assert (=> b!4679302 m!5575167))

(assert (=> b!4679302 m!5575159))

(assert (=> b!4679302 m!5575149))

(declare-fun m!5575169 () Bool)

(assert (=> b!4679301 m!5575169))

(declare-fun m!5575171 () Bool)

(assert (=> b!4679305 m!5575171))

(declare-fun m!5575173 () Bool)

(assert (=> d!1487301 m!5575173))

(declare-fun m!5575175 () Bool)

(assert (=> d!1487301 m!5575175))

(assert (=> b!4678997 d!1487301))

(declare-fun bs!1081718 () Bool)

(declare-fun b!4679308 () Bool)

(assert (= bs!1081718 (and b!4679308 b!4679234)))

(declare-fun lambda!204424 () Int)

(assert (=> bs!1081718 (= lambda!204424 lambda!204401)))

(declare-fun bs!1081719 () Bool)

(assert (= bs!1081719 (and b!4679308 d!1487269)))

(assert (=> bs!1081719 (not (= lambda!204424 lambda!204414))))

(declare-fun bs!1081720 () Bool)

(assert (= bs!1081720 (and b!4679308 b!4679302)))

(assert (=> bs!1081720 (= lambda!204424 lambda!204421)))

(declare-fun bs!1081721 () Bool)

(assert (= bs!1081721 (and b!4679308 d!1487301)))

(assert (=> bs!1081721 (= (= lt!1838563 lt!1839013) (= lambda!204424 lambda!204423))))

(declare-fun bs!1081722 () Bool)

(assert (= bs!1081722 (and b!4679308 b!4679233)))

(assert (=> bs!1081722 (= lambda!204424 lambda!204402)))

(declare-fun bs!1081723 () Bool)

(assert (= bs!1081723 (and b!4679308 b!4679209)))

(assert (=> bs!1081723 (= (= lt!1838563 lt!1838895) (= lambda!204424 lambda!204392))))

(declare-fun bs!1081724 () Bool)

(assert (= bs!1081724 (and b!4679308 b!4679210)))

(assert (=> bs!1081724 (= lambda!204424 lambda!204390)))

(declare-fun bs!1081725 () Bool)

(assert (= bs!1081725 (and b!4679308 d!1487255)))

(assert (=> bs!1081725 (not (= lambda!204424 lambda!204411))))

(assert (=> bs!1081723 (= lambda!204424 lambda!204391)))

(declare-fun bs!1081726 () Bool)

(assert (= bs!1081726 (and b!4679308 b!4679238)))

(assert (=> bs!1081726 (= (= lt!1838563 lt!1838943) (= lambda!204424 lambda!204407))))

(assert (=> bs!1081720 (= (= lt!1838563 lt!1839003) (= lambda!204424 lambda!204422))))

(declare-fun bs!1081727 () Bool)

(assert (= bs!1081727 (and b!4679308 d!1487253)))

(assert (=> bs!1081727 (= (= lt!1838563 lt!1838953) (= lambda!204424 lambda!204408))))

(assert (=> bs!1081722 (= (= lt!1838563 lt!1838922) (= lambda!204424 lambda!204403))))

(declare-fun bs!1081728 () Bool)

(assert (= bs!1081728 (and b!4679308 d!1487169)))

(assert (=> bs!1081728 (= (= lt!1838563 lt!1838905) (= lambda!204424 lambda!204395))))

(declare-fun bs!1081729 () Bool)

(assert (= bs!1081729 (and b!4679308 b!4679239)))

(assert (=> bs!1081729 (= lambda!204424 lambda!204405)))

(declare-fun bs!1081730 () Bool)

(assert (= bs!1081730 (and b!4679308 d!1487251)))

(assert (=> bs!1081730 (= (= lt!1838563 lt!1838932) (= lambda!204424 lambda!204404))))

(assert (=> bs!1081726 (= lambda!204424 lambda!204406)))

(declare-fun bs!1081731 () Bool)

(assert (= bs!1081731 (and b!4679308 b!4679303)))

(assert (=> bs!1081731 (= lambda!204424 lambda!204420)))

(assert (=> b!4679308 true))

(declare-fun bs!1081732 () Bool)

(declare-fun b!4679307 () Bool)

(assert (= bs!1081732 (and b!4679307 b!4679234)))

(declare-fun lambda!204425 () Int)

(assert (=> bs!1081732 (= lambda!204425 lambda!204401)))

(declare-fun bs!1081733 () Bool)

(assert (= bs!1081733 (and b!4679307 d!1487269)))

(assert (=> bs!1081733 (not (= lambda!204425 lambda!204414))))

(declare-fun bs!1081734 () Bool)

(assert (= bs!1081734 (and b!4679307 b!4679302)))

(assert (=> bs!1081734 (= lambda!204425 lambda!204421)))

(declare-fun bs!1081735 () Bool)

(assert (= bs!1081735 (and b!4679307 d!1487301)))

(assert (=> bs!1081735 (= (= lt!1838563 lt!1839013) (= lambda!204425 lambda!204423))))

(declare-fun bs!1081736 () Bool)

(assert (= bs!1081736 (and b!4679307 b!4679233)))

(assert (=> bs!1081736 (= lambda!204425 lambda!204402)))

(declare-fun bs!1081737 () Bool)

(assert (= bs!1081737 (and b!4679307 b!4679209)))

(assert (=> bs!1081737 (= (= lt!1838563 lt!1838895) (= lambda!204425 lambda!204392))))

(declare-fun bs!1081738 () Bool)

(assert (= bs!1081738 (and b!4679307 b!4679210)))

(assert (=> bs!1081738 (= lambda!204425 lambda!204390)))

(declare-fun bs!1081739 () Bool)

(assert (= bs!1081739 (and b!4679307 d!1487255)))

(assert (=> bs!1081739 (not (= lambda!204425 lambda!204411))))

(assert (=> bs!1081737 (= lambda!204425 lambda!204391)))

(declare-fun bs!1081740 () Bool)

(assert (= bs!1081740 (and b!4679307 b!4679238)))

(assert (=> bs!1081740 (= (= lt!1838563 lt!1838943) (= lambda!204425 lambda!204407))))

(assert (=> bs!1081734 (= (= lt!1838563 lt!1839003) (= lambda!204425 lambda!204422))))

(declare-fun bs!1081741 () Bool)

(assert (= bs!1081741 (and b!4679307 d!1487253)))

(assert (=> bs!1081741 (= (= lt!1838563 lt!1838953) (= lambda!204425 lambda!204408))))

(declare-fun bs!1081742 () Bool)

(assert (= bs!1081742 (and b!4679307 b!4679308)))

(assert (=> bs!1081742 (= lambda!204425 lambda!204424)))

(assert (=> bs!1081736 (= (= lt!1838563 lt!1838922) (= lambda!204425 lambda!204403))))

(declare-fun bs!1081743 () Bool)

(assert (= bs!1081743 (and b!4679307 d!1487169)))

(assert (=> bs!1081743 (= (= lt!1838563 lt!1838905) (= lambda!204425 lambda!204395))))

(declare-fun bs!1081744 () Bool)

(assert (= bs!1081744 (and b!4679307 b!4679239)))

(assert (=> bs!1081744 (= lambda!204425 lambda!204405)))

(declare-fun bs!1081745 () Bool)

(assert (= bs!1081745 (and b!4679307 d!1487251)))

(assert (=> bs!1081745 (= (= lt!1838563 lt!1838932) (= lambda!204425 lambda!204404))))

(assert (=> bs!1081740 (= lambda!204425 lambda!204406)))

(declare-fun bs!1081746 () Bool)

(assert (= bs!1081746 (and b!4679307 b!4679303)))

(assert (=> bs!1081746 (= lambda!204425 lambda!204420)))

(assert (=> b!4679307 true))

(declare-fun lt!1839024 () ListMap!4825)

(declare-fun lambda!204426 () Int)

(assert (=> bs!1081732 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204401))))

(assert (=> bs!1081733 (not (= lambda!204426 lambda!204414))))

(assert (=> bs!1081734 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204421))))

(assert (=> bs!1081735 (= (= lt!1839024 lt!1839013) (= lambda!204426 lambda!204423))))

(assert (=> bs!1081736 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204402))))

(assert (=> bs!1081737 (= (= lt!1839024 lt!1838895) (= lambda!204426 lambda!204392))))

(assert (=> bs!1081738 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204390))))

(assert (=> bs!1081739 (not (= lambda!204426 lambda!204411))))

(assert (=> bs!1081740 (= (= lt!1839024 lt!1838943) (= lambda!204426 lambda!204407))))

(assert (=> bs!1081734 (= (= lt!1839024 lt!1839003) (= lambda!204426 lambda!204422))))

(assert (=> bs!1081741 (= (= lt!1839024 lt!1838953) (= lambda!204426 lambda!204408))))

(assert (=> bs!1081742 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204424))))

(assert (=> bs!1081736 (= (= lt!1839024 lt!1838922) (= lambda!204426 lambda!204403))))

(assert (=> bs!1081743 (= (= lt!1839024 lt!1838905) (= lambda!204426 lambda!204395))))

(assert (=> bs!1081744 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204405))))

(assert (=> bs!1081745 (= (= lt!1839024 lt!1838932) (= lambda!204426 lambda!204404))))

(assert (=> bs!1081740 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204406))))

(assert (=> bs!1081746 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204420))))

(assert (=> b!4679307 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204425))))

(assert (=> bs!1081737 (= (= lt!1839024 lt!1838563) (= lambda!204426 lambda!204391))))

(assert (=> b!4679307 true))

(declare-fun bs!1081747 () Bool)

(declare-fun d!1487303 () Bool)

(assert (= bs!1081747 (and d!1487303 b!4679234)))

(declare-fun lt!1839034 () ListMap!4825)

(declare-fun lambda!204427 () Int)

(assert (=> bs!1081747 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204401))))

(declare-fun bs!1081748 () Bool)

(assert (= bs!1081748 (and d!1487303 d!1487269)))

(assert (=> bs!1081748 (not (= lambda!204427 lambda!204414))))

(declare-fun bs!1081749 () Bool)

(assert (= bs!1081749 (and d!1487303 b!4679302)))

(assert (=> bs!1081749 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204421))))

(declare-fun bs!1081750 () Bool)

(assert (= bs!1081750 (and d!1487303 b!4679233)))

(assert (=> bs!1081750 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204402))))

(declare-fun bs!1081751 () Bool)

(assert (= bs!1081751 (and d!1487303 b!4679209)))

(assert (=> bs!1081751 (= (= lt!1839034 lt!1838895) (= lambda!204427 lambda!204392))))

(declare-fun bs!1081752 () Bool)

(assert (= bs!1081752 (and d!1487303 b!4679210)))

(assert (=> bs!1081752 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204390))))

(declare-fun bs!1081753 () Bool)

(assert (= bs!1081753 (and d!1487303 d!1487255)))

(assert (=> bs!1081753 (not (= lambda!204427 lambda!204411))))

(declare-fun bs!1081754 () Bool)

(assert (= bs!1081754 (and d!1487303 b!4679238)))

(assert (=> bs!1081754 (= (= lt!1839034 lt!1838943) (= lambda!204427 lambda!204407))))

(assert (=> bs!1081749 (= (= lt!1839034 lt!1839003) (= lambda!204427 lambda!204422))))

(declare-fun bs!1081755 () Bool)

(assert (= bs!1081755 (and d!1487303 d!1487253)))

(assert (=> bs!1081755 (= (= lt!1839034 lt!1838953) (= lambda!204427 lambda!204408))))

(declare-fun bs!1081756 () Bool)

(assert (= bs!1081756 (and d!1487303 b!4679308)))

(assert (=> bs!1081756 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204424))))

(assert (=> bs!1081750 (= (= lt!1839034 lt!1838922) (= lambda!204427 lambda!204403))))

(declare-fun bs!1081757 () Bool)

(assert (= bs!1081757 (and d!1487303 d!1487169)))

(assert (=> bs!1081757 (= (= lt!1839034 lt!1838905) (= lambda!204427 lambda!204395))))

(declare-fun bs!1081758 () Bool)

(assert (= bs!1081758 (and d!1487303 d!1487301)))

(assert (=> bs!1081758 (= (= lt!1839034 lt!1839013) (= lambda!204427 lambda!204423))))

(declare-fun bs!1081759 () Bool)

(assert (= bs!1081759 (and d!1487303 b!4679307)))

(assert (=> bs!1081759 (= (= lt!1839034 lt!1839024) (= lambda!204427 lambda!204426))))

(declare-fun bs!1081760 () Bool)

(assert (= bs!1081760 (and d!1487303 b!4679239)))

(assert (=> bs!1081760 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204405))))

(declare-fun bs!1081761 () Bool)

(assert (= bs!1081761 (and d!1487303 d!1487251)))

(assert (=> bs!1081761 (= (= lt!1839034 lt!1838932) (= lambda!204427 lambda!204404))))

(assert (=> bs!1081754 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204406))))

(declare-fun bs!1081762 () Bool)

(assert (= bs!1081762 (and d!1487303 b!4679303)))

(assert (=> bs!1081762 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204420))))

(assert (=> bs!1081759 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204425))))

(assert (=> bs!1081751 (= (= lt!1839034 lt!1838563) (= lambda!204427 lambda!204391))))

(assert (=> d!1487303 true))

(declare-fun b!4679306 () Bool)

(declare-fun e!2919492 () Bool)

(assert (=> b!4679306 (= e!2919492 (invariantList!1372 (toList!5461 lt!1839034)))))

(assert (=> d!1487303 e!2919492))

(declare-fun res!1971599 () Bool)

(assert (=> d!1487303 (=> (not res!1971599) (not e!2919492))))

(assert (=> d!1487303 (= res!1971599 (forall!11217 oldBucket!34 lambda!204427))))

(declare-fun e!2919491 () ListMap!4825)

(assert (=> d!1487303 (= lt!1839034 e!2919491)))

(declare-fun c!800499 () Bool)

(assert (=> d!1487303 (= c!800499 ((_ is Nil!52235) oldBucket!34))))

(assert (=> d!1487303 (noDuplicateKeys!1786 oldBucket!34)))

(assert (=> d!1487303 (= (addToMapMapFromBucket!1218 oldBucket!34 lt!1838563) lt!1839034)))

(declare-fun call!327023 () Bool)

(declare-fun bm!327016 () Bool)

(assert (=> bm!327016 (= call!327023 (forall!11217 (ite c!800499 (toList!5461 lt!1838563) oldBucket!34) (ite c!800499 lambda!204424 lambda!204426)))))

(assert (=> b!4679307 (= e!2919491 lt!1839024)))

(declare-fun lt!1839035 () ListMap!4825)

(assert (=> b!4679307 (= lt!1839035 (+!2088 lt!1838563 (h!58442 oldBucket!34)))))

(assert (=> b!4679307 (= lt!1839024 (addToMapMapFromBucket!1218 (t!359509 oldBucket!34) (+!2088 lt!1838563 (h!58442 oldBucket!34))))))

(declare-fun lt!1839031 () Unit!122237)

(declare-fun call!327021 () Unit!122237)

(assert (=> b!4679307 (= lt!1839031 call!327021)))

(assert (=> b!4679307 (forall!11217 (toList!5461 lt!1838563) lambda!204425)))

(declare-fun lt!1839027 () Unit!122237)

(assert (=> b!4679307 (= lt!1839027 lt!1839031)))

(assert (=> b!4679307 (forall!11217 (toList!5461 lt!1839035) lambda!204426)))

(declare-fun lt!1839032 () Unit!122237)

(declare-fun Unit!122350 () Unit!122237)

(assert (=> b!4679307 (= lt!1839032 Unit!122350)))

(assert (=> b!4679307 (forall!11217 (t!359509 oldBucket!34) lambda!204426)))

(declare-fun lt!1839026 () Unit!122237)

(declare-fun Unit!122351 () Unit!122237)

(assert (=> b!4679307 (= lt!1839026 Unit!122351)))

(declare-fun lt!1839019 () Unit!122237)

(declare-fun Unit!122352 () Unit!122237)

(assert (=> b!4679307 (= lt!1839019 Unit!122352)))

(declare-fun lt!1839029 () Unit!122237)

(assert (=> b!4679307 (= lt!1839029 (forallContained!3344 (toList!5461 lt!1839035) lambda!204426 (h!58442 oldBucket!34)))))

(assert (=> b!4679307 (contains!15370 lt!1839035 (_1!30063 (h!58442 oldBucket!34)))))

(declare-fun lt!1839030 () Unit!122237)

(declare-fun Unit!122353 () Unit!122237)

(assert (=> b!4679307 (= lt!1839030 Unit!122353)))

(assert (=> b!4679307 (contains!15370 lt!1839024 (_1!30063 (h!58442 oldBucket!34)))))

(declare-fun lt!1839018 () Unit!122237)

(declare-fun Unit!122354 () Unit!122237)

(assert (=> b!4679307 (= lt!1839018 Unit!122354)))

(assert (=> b!4679307 (forall!11217 oldBucket!34 lambda!204426)))

(declare-fun lt!1839036 () Unit!122237)

(declare-fun Unit!122355 () Unit!122237)

(assert (=> b!4679307 (= lt!1839036 Unit!122355)))

(assert (=> b!4679307 (forall!11217 (toList!5461 lt!1839035) lambda!204426)))

(declare-fun lt!1839025 () Unit!122237)

(declare-fun Unit!122356 () Unit!122237)

(assert (=> b!4679307 (= lt!1839025 Unit!122356)))

(declare-fun lt!1839028 () Unit!122237)

(declare-fun Unit!122357 () Unit!122237)

(assert (=> b!4679307 (= lt!1839028 Unit!122357)))

(declare-fun lt!1839017 () Unit!122237)

(assert (=> b!4679307 (= lt!1839017 (addForallContainsKeyThenBeforeAdding!659 lt!1838563 lt!1839024 (_1!30063 (h!58442 oldBucket!34)) (_2!30063 (h!58442 oldBucket!34))))))

(assert (=> b!4679307 (forall!11217 (toList!5461 lt!1838563) lambda!204426)))

(declare-fun lt!1839021 () Unit!122237)

(assert (=> b!4679307 (= lt!1839021 lt!1839017)))

(assert (=> b!4679307 (forall!11217 (toList!5461 lt!1838563) lambda!204426)))

(declare-fun lt!1839020 () Unit!122237)

(declare-fun Unit!122358 () Unit!122237)

(assert (=> b!4679307 (= lt!1839020 Unit!122358)))

(declare-fun res!1971600 () Bool)

(assert (=> b!4679307 (= res!1971600 call!327023)))

(declare-fun e!2919490 () Bool)

(assert (=> b!4679307 (=> (not res!1971600) (not e!2919490))))

(assert (=> b!4679307 e!2919490))

(declare-fun lt!1839016 () Unit!122237)

(declare-fun Unit!122359 () Unit!122237)

(assert (=> b!4679307 (= lt!1839016 Unit!122359)))

(assert (=> b!4679308 (= e!2919491 lt!1838563)))

(declare-fun lt!1839022 () Unit!122237)

(assert (=> b!4679308 (= lt!1839022 call!327021)))

(declare-fun call!327022 () Bool)

(assert (=> b!4679308 call!327022))

(declare-fun lt!1839033 () Unit!122237)

(assert (=> b!4679308 (= lt!1839033 lt!1839022)))

(assert (=> b!4679308 call!327023))

(declare-fun lt!1839023 () Unit!122237)

(declare-fun Unit!122360 () Unit!122237)

(assert (=> b!4679308 (= lt!1839023 Unit!122360)))

(declare-fun bm!327017 () Bool)

(assert (=> bm!327017 (= call!327022 (forall!11217 (toList!5461 lt!1838563) (ite c!800499 lambda!204424 lambda!204426)))))

(declare-fun b!4679309 () Bool)

(assert (=> b!4679309 (= e!2919490 call!327022)))

(declare-fun b!4679310 () Bool)

(declare-fun res!1971601 () Bool)

(assert (=> b!4679310 (=> (not res!1971601) (not e!2919492))))

(assert (=> b!4679310 (= res!1971601 (forall!11217 (toList!5461 lt!1838563) lambda!204427))))

(declare-fun bm!327018 () Bool)

(assert (=> bm!327018 (= call!327021 (lemmaContainsAllItsOwnKeys!660 lt!1838563))))

(assert (= (and d!1487303 c!800499) b!4679308))

(assert (= (and d!1487303 (not c!800499)) b!4679307))

(assert (= (and b!4679307 res!1971600) b!4679309))

(assert (= (or b!4679308 b!4679307) bm!327018))

(assert (= (or b!4679308 b!4679307) bm!327016))

(assert (= (or b!4679308 b!4679309) bm!327017))

(assert (= (and d!1487303 res!1971599) b!4679310))

(assert (= (and b!4679310 res!1971601) b!4679306))

(assert (=> bm!327018 m!5574891))

(declare-fun m!5575177 () Bool)

(assert (=> bm!327016 m!5575177))

(declare-fun m!5575179 () Bool)

(assert (=> bm!327017 m!5575179))

(declare-fun m!5575181 () Bool)

(assert (=> b!4679307 m!5575181))

(declare-fun m!5575183 () Bool)

(assert (=> b!4679307 m!5575183))

(declare-fun m!5575185 () Bool)

(assert (=> b!4679307 m!5575185))

(declare-fun m!5575187 () Bool)

(assert (=> b!4679307 m!5575187))

(declare-fun m!5575189 () Bool)

(assert (=> b!4679307 m!5575189))

(declare-fun m!5575191 () Bool)

(assert (=> b!4679307 m!5575191))

(assert (=> b!4679307 m!5575187))

(declare-fun m!5575193 () Bool)

(assert (=> b!4679307 m!5575193))

(declare-fun m!5575195 () Bool)

(assert (=> b!4679307 m!5575195))

(declare-fun m!5575197 () Bool)

(assert (=> b!4679307 m!5575197))

(declare-fun m!5575199 () Bool)

(assert (=> b!4679307 m!5575199))

(declare-fun m!5575201 () Bool)

(assert (=> b!4679307 m!5575201))

(assert (=> b!4679307 m!5575193))

(assert (=> b!4679307 m!5575183))

(declare-fun m!5575203 () Bool)

(assert (=> b!4679306 m!5575203))

(declare-fun m!5575205 () Bool)

(assert (=> b!4679310 m!5575205))

(declare-fun m!5575207 () Bool)

(assert (=> d!1487303 m!5575207))

(assert (=> d!1487303 m!5574347))

(assert (=> b!4678997 d!1487303))

(declare-fun d!1487305 () Bool)

(declare-fun e!2919493 () Bool)

(assert (=> d!1487305 e!2919493))

(declare-fun res!1971603 () Bool)

(assert (=> d!1487305 (=> (not res!1971603) (not e!2919493))))

(declare-fun lt!1839037 () ListMap!4825)

(assert (=> d!1487305 (= res!1971603 (contains!15370 lt!1839037 (_1!30063 lt!1838562)))))

(declare-fun lt!1839039 () List!52359)

(assert (=> d!1487305 (= lt!1839037 (ListMap!4826 lt!1839039))))

(declare-fun lt!1839038 () Unit!122237)

(declare-fun lt!1839040 () Unit!122237)

(assert (=> d!1487305 (= lt!1839038 lt!1839040)))

(assert (=> d!1487305 (= (getValueByKey!1715 lt!1839039 (_1!30063 lt!1838562)) (Some!11966 (_2!30063 lt!1838562)))))

(assert (=> d!1487305 (= lt!1839040 (lemmaContainsTupThenGetReturnValue!974 lt!1839039 (_1!30063 lt!1838562) (_2!30063 lt!1838562)))))

(assert (=> d!1487305 (= lt!1839039 (insertNoDuplicatedKeys!482 (toList!5461 lt!1838564) (_1!30063 lt!1838562) (_2!30063 lt!1838562)))))

(assert (=> d!1487305 (= (+!2088 lt!1838564 lt!1838562) lt!1839037)))

(declare-fun b!4679311 () Bool)

(declare-fun res!1971602 () Bool)

(assert (=> b!4679311 (=> (not res!1971602) (not e!2919493))))

(assert (=> b!4679311 (= res!1971602 (= (getValueByKey!1715 (toList!5461 lt!1839037) (_1!30063 lt!1838562)) (Some!11966 (_2!30063 lt!1838562))))))

(declare-fun b!4679312 () Bool)

(assert (=> b!4679312 (= e!2919493 (contains!15374 (toList!5461 lt!1839037) lt!1838562))))

(assert (= (and d!1487305 res!1971603) b!4679311))

(assert (= (and b!4679311 res!1971602) b!4679312))

(declare-fun m!5575209 () Bool)

(assert (=> d!1487305 m!5575209))

(declare-fun m!5575211 () Bool)

(assert (=> d!1487305 m!5575211))

(declare-fun m!5575213 () Bool)

(assert (=> d!1487305 m!5575213))

(declare-fun m!5575215 () Bool)

(assert (=> d!1487305 m!5575215))

(declare-fun m!5575217 () Bool)

(assert (=> b!4679311 m!5575217))

(declare-fun m!5575219 () Bool)

(assert (=> b!4679312 m!5575219))

(assert (=> b!4678997 d!1487305))

(declare-fun d!1487307 () Bool)

(assert (=> d!1487307 (= (eq!975 (addToMapMapFromBucket!1218 (Cons!52235 lt!1838562 lt!1838561) lt!1838563) (+!2088 lt!1838564 lt!1838562)) (= (content!9101 (toList!5461 (addToMapMapFromBucket!1218 (Cons!52235 lt!1838562 lt!1838561) lt!1838563))) (content!9101 (toList!5461 (+!2088 lt!1838564 lt!1838562)))))))

(declare-fun bs!1081763 () Bool)

(assert (= bs!1081763 d!1487307))

(declare-fun m!5575221 () Bool)

(assert (=> bs!1081763 m!5575221))

(declare-fun m!5575223 () Bool)

(assert (=> bs!1081763 m!5575223))

(assert (=> b!4678997 d!1487307))

(declare-fun d!1487309 () Bool)

(declare-fun res!1971604 () Bool)

(declare-fun e!2919494 () Bool)

(assert (=> d!1487309 (=> res!1971604 e!2919494)))

(assert (=> d!1487309 (= res!1971604 (not ((_ is Cons!52235) newBucket!218)))))

(assert (=> d!1487309 (= (noDuplicateKeys!1786 newBucket!218) e!2919494)))

(declare-fun b!4679313 () Bool)

(declare-fun e!2919495 () Bool)

(assert (=> b!4679313 (= e!2919494 e!2919495)))

(declare-fun res!1971605 () Bool)

(assert (=> b!4679313 (=> (not res!1971605) (not e!2919495))))

(assert (=> b!4679313 (= res!1971605 (not (containsKey!2927 (t!359509 newBucket!218) (_1!30063 (h!58442 newBucket!218)))))))

(declare-fun b!4679314 () Bool)

(assert (=> b!4679314 (= e!2919495 (noDuplicateKeys!1786 (t!359509 newBucket!218)))))

(assert (= (and d!1487309 (not res!1971604)) b!4679313))

(assert (= (and b!4679313 res!1971605) b!4679314))

(declare-fun m!5575225 () Bool)

(assert (=> b!4679313 m!5575225))

(declare-fun m!5575227 () Bool)

(assert (=> b!4679314 m!5575227))

(assert (=> b!4678988 d!1487309))

(declare-fun e!2919498 () Bool)

(declare-fun b!4679319 () Bool)

(declare-fun tp!1344938 () Bool)

(assert (=> b!4679319 (= e!2919498 (and tp_is_empty!30437 tp_is_empty!30439 tp!1344938))))

(assert (=> b!4678980 (= tp!1344923 e!2919498)))

(assert (= (and b!4678980 ((_ is Cons!52235) (t!359509 newBucket!218))) b!4679319))

(declare-fun b!4679324 () Bool)

(declare-fun e!2919501 () Bool)

(declare-fun tp!1344943 () Bool)

(declare-fun tp!1344944 () Bool)

(assert (=> b!4679324 (= e!2919501 (and tp!1344943 tp!1344944))))

(assert (=> b!4678987 (= tp!1344924 e!2919501)))

(assert (= (and b!4678987 ((_ is Cons!52236) (toList!5462 lm!2023))) b!4679324))

(declare-fun tp!1344945 () Bool)

(declare-fun e!2919502 () Bool)

(declare-fun b!4679325 () Bool)

(assert (=> b!4679325 (= e!2919502 (and tp_is_empty!30437 tp_is_empty!30439 tp!1344945))))

(assert (=> b!4678999 (= tp!1344925 e!2919502)))

(assert (= (and b!4678999 ((_ is Cons!52235) (t!359509 oldBucket!34))) b!4679325))

(declare-fun b_lambda!176641 () Bool)

(assert (= b_lambda!176639 (or start!472356 b_lambda!176641)))

(declare-fun bs!1081764 () Bool)

(declare-fun d!1487311 () Bool)

(assert (= bs!1081764 (and d!1487311 start!472356)))

(assert (=> bs!1081764 (= (dynLambda!21675 lambda!204297 (h!58443 (toList!5462 lm!2023))) (noDuplicateKeys!1786 (_2!30064 (h!58443 (toList!5462 lm!2023)))))))

(assert (=> bs!1081764 m!5574925))

(assert (=> b!4679278 d!1487311))

(declare-fun b_lambda!176643 () Bool)

(assert (= b_lambda!176629 (or start!472356 b_lambda!176643)))

(declare-fun bs!1081765 () Bool)

(declare-fun d!1487313 () Bool)

(assert (= bs!1081765 (and d!1487313 start!472356)))

(assert (=> bs!1081765 (= (dynLambda!21675 lambda!204297 (h!58443 lt!1838570)) (noDuplicateKeys!1786 (_2!30064 (h!58443 lt!1838570))))))

(declare-fun m!5575229 () Bool)

(assert (=> bs!1081765 m!5575229))

(assert (=> b!4679018 d!1487313))

(check-sat (not d!1487253) (not d!1487147) (not b!4679060) (not b!4679314) (not d!1487263) (not b!4679247) (not bm!327003) (not b!4679241) (not b_lambda!176643) (not b!4679061) (not b!4679279) (not bm!327018) (not d!1487291) (not d!1487255) (not b!4679047) (not bm!327010) (not bm!327012) (not d!1487157) (not b!4679305) (not bm!327016) (not b!4679066) tp_is_empty!30439 (not b!4679064) (not b!4679049) (not d!1487153) (not b!4679292) (not b!4679294) (not bm!327011) (not b!4679212) (not d!1487305) (not d!1487257) (not b!4679252) (not d!1487251) (not b!4679051) (not d!1487265) (not b!4679265) (not bm!326976) (not bm!327009) (not b!4679313) (not bm!326971) (not d!1487245) (not d!1487271) (not d!1487155) (not d!1487299) (not d!1487249) (not b!4679256) (not bm!327008) (not bm!327017) (not b!4679048) (not d!1487295) (not b!4679312) (not b!4679238) (not d!1487307) (not d!1487151) (not b!4679053) (not d!1487259) (not bm!327005) (not b!4679067) (not b!4679253) (not b!4679236) (not b!4679325) (not b!4679286) (not b!4679019) (not d!1487267) (not bm!327006) (not bm!327004) (not b!4679237) (not b!4679324) (not b!4679232) tp_is_empty!30437 (not b!4679319) (not b!4679054) (not d!1487239) (not b!4679299) (not d!1487279) (not b!4679302) (not b!4679291) (not b!4679310) (not b!4679289) (not b!4679297) (not b!4679208) (not b!4679258) (not d!1487169) (not d!1487303) (not d!1487283) (not b!4679290) (not bs!1081764) (not d!1487293) (not b!4679295) (not b!4679307) (not b!4679311) (not b!4679233) (not bm!327015) (not b!4679288) (not d!1487269) (not b!4679301) (not bm!327007) (not b!4679022) (not d!1487289) (not d!1487285) (not b!4679063) (not b!4679287) (not b!4679300) (not d!1487261) (not d!1487149) (not b!4679306) (not d!1487273) (not d!1487301) (not bs!1081765) (not b!4679254) (not bm!327013) (not b!4679276) (not b!4679246) (not b!4679209) (not b!4679050) (not b!4679062) (not b!4679230) (not bm!327014) (not b_lambda!176641))
(check-sat)
