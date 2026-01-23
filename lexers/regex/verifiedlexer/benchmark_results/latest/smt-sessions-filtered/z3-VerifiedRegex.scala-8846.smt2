; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472636 () Bool)

(assert start!472636)

(declare-fun b!4680537 () Bool)

(declare-fun e!2920262 () Bool)

(declare-fun e!2920256 () Bool)

(assert (=> b!4680537 (= e!2920262 (not e!2920256))))

(declare-fun res!1972396 () Bool)

(assert (=> b!4680537 (=> res!1972396 e!2920256)))

(declare-datatypes ((K!13635 0))(
  ( (K!13636 (val!19179 Int)) )
))
(declare-datatypes ((V!13881 0))(
  ( (V!13882 (val!19180 Int)) )
))
(declare-datatypes ((tuple2!53570 0))(
  ( (tuple2!53571 (_1!30079 K!13635) (_2!30079 V!13881)) )
))
(declare-datatypes ((List!52381 0))(
  ( (Nil!52257) (Cons!52257 (h!58470 tuple2!53570) (t!359537 List!52381)) )
))
(declare-fun oldBucket!34 () List!52381)

(declare-fun key!4653 () K!13635)

(get-info :version)

(assert (=> b!4680537 (= res!1972396 (or (not ((_ is Cons!52257) oldBucket!34)) (not (= (_1!30079 (h!58470 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!4841 0))(
  ( (ListMap!4842 (toList!5477 List!52381)) )
))
(declare-fun lt!1840348 () ListMap!4841)

(declare-datatypes ((tuple2!53572 0))(
  ( (tuple2!53573 (_1!30080 (_ BitVec 64)) (_2!30080 List!52381)) )
))
(declare-datatypes ((List!52382 0))(
  ( (Nil!52258) (Cons!52258 (h!58471 tuple2!53572) (t!359538 List!52382)) )
))
(declare-datatypes ((ListLongMap!4007 0))(
  ( (ListLongMap!4008 (toList!5478 List!52382)) )
))
(declare-fun lm!2023 () ListLongMap!4007)

(declare-fun lt!1840360 () ListMap!4841)

(declare-fun addToMapMapFromBucket!1226 (List!52381 ListMap!4841) ListMap!4841)

(assert (=> b!4680537 (= lt!1840348 (addToMapMapFromBucket!1226 (_2!30080 (h!58471 (toList!5478 lm!2023))) lt!1840360))))

(declare-fun extractMap!1820 (List!52382) ListMap!4841)

(assert (=> b!4680537 (= lt!1840360 (extractMap!1820 (t!359538 (toList!5478 lm!2023))))))

(declare-fun tail!8448 (ListLongMap!4007) ListLongMap!4007)

(assert (=> b!4680537 (= (t!359538 (toList!5478 lm!2023)) (toList!5478 (tail!8448 lm!2023)))))

(declare-fun b!4680538 () Bool)

(declare-fun e!2920250 () Bool)

(declare-fun e!2920249 () Bool)

(assert (=> b!4680538 (= e!2920250 e!2920249)))

(declare-fun res!1972399 () Bool)

(assert (=> b!4680538 (=> res!1972399 e!2920249)))

(declare-fun lt!1840345 () ListMap!4841)

(declare-fun contains!15390 (ListMap!4841 K!13635) Bool)

(assert (=> b!4680538 (= res!1972399 (contains!15390 lt!1840345 key!4653))))

(declare-fun lt!1840358 () ListMap!4841)

(assert (=> b!4680538 (not (contains!15390 lt!1840358 key!4653))))

(declare-datatypes ((Hashable!6163 0))(
  ( (HashableExt!6162 (__x!31866 Int)) )
))
(declare-fun hashF!1323 () Hashable!6163)

(declare-datatypes ((Unit!122619 0))(
  ( (Unit!122620) )
))
(declare-fun lt!1840356 () Unit!122619)

(declare-fun lt!1840353 () List!52382)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!394 (ListLongMap!4007 K!13635 Hashable!6163) Unit!122619)

(assert (=> b!4680538 (= lt!1840356 (lemmaNotInItsHashBucketThenNotInMap!394 (ListLongMap!4008 lt!1840353) key!4653 hashF!1323))))

(declare-fun b!4680539 () Bool)

(declare-fun res!1972401 () Bool)

(assert (=> b!4680539 (=> (not res!1972401) (not e!2920262))))

(assert (=> b!4680539 (= res!1972401 ((_ is Cons!52258) (toList!5478 lm!2023)))))

(declare-fun b!4680540 () Bool)

(declare-fun res!1972392 () Bool)

(declare-fun e!2920252 () Bool)

(assert (=> b!4680540 (=> (not res!1972392) (not e!2920252))))

(declare-fun noDuplicateKeys!1794 (List!52381) Bool)

(assert (=> b!4680540 (= res!1972392 (noDuplicateKeys!1794 oldBucket!34))))

(declare-fun b!4680541 () Bool)

(declare-fun res!1972405 () Bool)

(assert (=> b!4680541 (=> res!1972405 e!2920250)))

(assert (=> b!4680541 (= res!1972405 (not (= lt!1840345 lt!1840358)))))

(declare-fun b!4680542 () Bool)

(declare-fun res!1972407 () Bool)

(declare-fun e!2920257 () Bool)

(assert (=> b!4680542 (=> (not res!1972407) (not e!2920257))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun newBucket!218 () List!52381)

(declare-fun allKeysSameHash!1620 (List!52381 (_ BitVec 64) Hashable!6163) Bool)

(assert (=> b!4680542 (= res!1972407 (allKeysSameHash!1620 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4680543 () Bool)

(declare-fun res!1972395 () Bool)

(assert (=> b!4680543 (=> (not res!1972395) (not e!2920257))))

(declare-fun allKeysSameHashInMap!1708 (ListLongMap!4007 Hashable!6163) Bool)

(assert (=> b!4680543 (= res!1972395 (allKeysSameHashInMap!1708 lm!2023 hashF!1323))))

(declare-fun b!4680544 () Bool)

(declare-fun res!1972403 () Bool)

(assert (=> b!4680544 (=> res!1972403 e!2920250)))

(declare-fun lt!1840351 () List!52381)

(declare-fun containsKey!2941 (List!52381 K!13635) Bool)

(assert (=> b!4680544 (= res!1972403 (containsKey!2941 lt!1840351 key!4653))))

(declare-fun b!4680545 () Bool)

(declare-fun e!2920259 () Bool)

(declare-fun e!2920248 () Bool)

(assert (=> b!4680545 (= e!2920259 e!2920248)))

(declare-fun res!1972400 () Bool)

(assert (=> b!4680545 (=> res!1972400 e!2920248)))

(assert (=> b!4680545 (= res!1972400 (not (= lt!1840345 (addToMapMapFromBucket!1226 newBucket!218 lt!1840360))))))

(assert (=> b!4680545 (= lt!1840345 (addToMapMapFromBucket!1226 lt!1840351 lt!1840360))))

(declare-fun b!4680546 () Bool)

(declare-fun e!2920255 () Bool)

(assert (=> b!4680546 (= e!2920255 e!2920259)))

(declare-fun res!1972406 () Bool)

(assert (=> b!4680546 (=> res!1972406 e!2920259)))

(assert (=> b!4680546 (= res!1972406 (not (= lt!1840358 (extractMap!1820 (Cons!52258 (tuple2!53573 hash!405 newBucket!218) (t!359538 (toList!5478 lm!2023)))))))))

(assert (=> b!4680546 (= lt!1840358 (extractMap!1820 lt!1840353))))

(assert (=> b!4680546 (= lt!1840353 (Cons!52258 (tuple2!53573 hash!405 lt!1840351) (t!359538 (toList!5478 lm!2023))))))

(declare-fun b!4680547 () Bool)

(declare-fun res!1972410 () Bool)

(assert (=> b!4680547 (=> (not res!1972410) (not e!2920257))))

(declare-fun hash!3974 (Hashable!6163 K!13635) (_ BitVec 64))

(assert (=> b!4680547 (= res!1972410 (= (hash!3974 hashF!1323 key!4653) hash!405))))

(declare-fun b!4680548 () Bool)

(declare-fun e!2920261 () Bool)

(declare-fun e!2920253 () Bool)

(assert (=> b!4680548 (= e!2920261 e!2920253)))

(declare-fun res!1972411 () Bool)

(assert (=> b!4680548 (=> res!1972411 e!2920253)))

(declare-fun lt!1840344 () ListMap!4841)

(declare-fun eq!983 (ListMap!4841 ListMap!4841) Bool)

(assert (=> b!4680548 (= res!1972411 (not (eq!983 lt!1840344 lt!1840358)))))

(declare-fun lt!1840357 () ListMap!4841)

(assert (=> b!4680548 (eq!983 lt!1840357 lt!1840344)))

(declare-fun lt!1840359 () ListMap!4841)

(declare-fun -!658 (ListMap!4841 K!13635) ListMap!4841)

(assert (=> b!4680548 (= lt!1840344 (-!658 lt!1840359 key!4653))))

(declare-fun lt!1840347 () Unit!122619)

(declare-fun lt!1840355 () ListMap!4841)

(declare-fun lemmaRemovePreservesEq!78 (ListMap!4841 ListMap!4841 K!13635) Unit!122619)

(assert (=> b!4680548 (= lt!1840347 (lemmaRemovePreservesEq!78 lt!1840355 lt!1840359 key!4653))))

(declare-fun b!4680549 () Bool)

(declare-fun e!2920251 () Bool)

(declare-fun tp!1345055 () Bool)

(assert (=> b!4680549 (= e!2920251 tp!1345055)))

(declare-fun tp_is_empty!30471 () Bool)

(declare-fun e!2920258 () Bool)

(declare-fun b!4680550 () Bool)

(declare-fun tp_is_empty!30469 () Bool)

(declare-fun tp!1345057 () Bool)

(assert (=> b!4680550 (= e!2920258 (and tp_is_empty!30469 tp_is_empty!30471 tp!1345057))))

(declare-fun res!1972394 () Bool)

(assert (=> start!472636 (=> (not res!1972394) (not e!2920252))))

(declare-fun lambda!204723 () Int)

(declare-fun forall!11229 (List!52382 Int) Bool)

(assert (=> start!472636 (= res!1972394 (forall!11229 (toList!5478 lm!2023) lambda!204723))))

(assert (=> start!472636 e!2920252))

(declare-fun inv!67509 (ListLongMap!4007) Bool)

(assert (=> start!472636 (and (inv!67509 lm!2023) e!2920251)))

(assert (=> start!472636 tp_is_empty!30469))

(assert (=> start!472636 e!2920258))

(assert (=> start!472636 true))

(declare-fun e!2920260 () Bool)

(assert (=> start!472636 e!2920260))

(declare-fun b!4680551 () Bool)

(declare-fun res!1972404 () Bool)

(assert (=> b!4680551 (=> (not res!1972404) (not e!2920252))))

(assert (=> b!4680551 (= res!1972404 (noDuplicateKeys!1794 newBucket!218))))

(declare-fun b!4680552 () Bool)

(assert (=> b!4680552 (= e!2920256 e!2920255)))

(declare-fun res!1972402 () Bool)

(assert (=> b!4680552 (=> res!1972402 e!2920255)))

(assert (=> b!4680552 (= res!1972402 (not (= lt!1840351 newBucket!218)))))

(declare-fun tail!8449 (List!52381) List!52381)

(assert (=> b!4680552 (= lt!1840351 (tail!8449 oldBucket!34))))

(declare-fun b!4680553 () Bool)

(declare-fun res!1972397 () Bool)

(assert (=> b!4680553 (=> (not res!1972397) (not e!2920252))))

(assert (=> b!4680553 (= res!1972397 (allKeysSameHash!1620 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4680554 () Bool)

(declare-fun e!2920254 () Bool)

(assert (=> b!4680554 (= e!2920254 e!2920261)))

(declare-fun res!1972408 () Bool)

(assert (=> b!4680554 (=> res!1972408 e!2920261)))

(assert (=> b!4680554 (= res!1972408 (not (eq!983 lt!1840355 lt!1840359)))))

(declare-fun lt!1840349 () List!52382)

(assert (=> b!4680554 (= lt!1840359 (extractMap!1820 lt!1840349))))

(declare-fun lt!1840354 () tuple2!53572)

(assert (=> b!4680554 (= lt!1840349 (Cons!52258 lt!1840354 (t!359538 (toList!5478 lm!2023))))))

(declare-fun b!4680555 () Bool)

(assert (=> b!4680555 (= e!2920249 e!2920254)))

(declare-fun res!1972393 () Bool)

(assert (=> b!4680555 (=> res!1972393 e!2920254)))

(assert (=> b!4680555 (= res!1972393 (not (= lt!1840357 lt!1840345)))))

(assert (=> b!4680555 (= lt!1840357 (-!658 lt!1840355 key!4653))))

(declare-fun +!2096 (ListMap!4841 tuple2!53570) ListMap!4841)

(assert (=> b!4680555 (= (-!658 (+!2096 lt!1840345 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))) key!4653) lt!1840345)))

(declare-fun lt!1840346 () Unit!122619)

(declare-fun addThenRemoveForNewKeyIsSame!49 (ListMap!4841 K!13635 V!13881) Unit!122619)

(assert (=> b!4680555 (= lt!1840346 (addThenRemoveForNewKeyIsSame!49 lt!1840345 key!4653 (_2!30079 (h!58470 oldBucket!34))))))

(declare-fun b!4680556 () Bool)

(assert (=> b!4680556 (= e!2920257 e!2920262)))

(declare-fun res!1972412 () Bool)

(assert (=> b!4680556 (=> (not res!1972412) (not e!2920262))))

(declare-fun head!9879 (List!52382) tuple2!53572)

(assert (=> b!4680556 (= res!1972412 (= (head!9879 (toList!5478 lm!2023)) lt!1840354))))

(assert (=> b!4680556 (= lt!1840354 (tuple2!53573 hash!405 oldBucket!34))))

(declare-fun b!4680557 () Bool)

(declare-fun tp!1345056 () Bool)

(assert (=> b!4680557 (= e!2920260 (and tp_is_empty!30469 tp_is_empty!30471 tp!1345056))))

(declare-fun b!4680558 () Bool)

(assert (=> b!4680558 (= e!2920252 e!2920257)))

(declare-fun res!1972413 () Bool)

(assert (=> b!4680558 (=> (not res!1972413) (not e!2920257))))

(assert (=> b!4680558 (= res!1972413 (contains!15390 lt!1840348 key!4653))))

(assert (=> b!4680558 (= lt!1840348 (extractMap!1820 (toList!5478 lm!2023)))))

(declare-fun b!4680559 () Bool)

(assert (=> b!4680559 (= e!2920253 (forall!11229 lt!1840349 lambda!204723))))

(declare-fun b!4680560 () Bool)

(declare-fun res!1972409 () Bool)

(assert (=> b!4680560 (=> (not res!1972409) (not e!2920252))))

(declare-fun removePairForKey!1389 (List!52381 K!13635) List!52381)

(assert (=> b!4680560 (= res!1972409 (= (removePairForKey!1389 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4680561 () Bool)

(assert (=> b!4680561 (= e!2920248 e!2920250)))

(declare-fun res!1972398 () Bool)

(assert (=> b!4680561 (=> res!1972398 e!2920250)))

(assert (=> b!4680561 (= res!1972398 (not (eq!983 lt!1840355 (addToMapMapFromBucket!1226 oldBucket!34 lt!1840360))))))

(assert (=> b!4680561 (= lt!1840355 (+!2096 lt!1840345 (h!58470 oldBucket!34)))))

(declare-fun lt!1840350 () tuple2!53570)

(assert (=> b!4680561 (eq!983 (addToMapMapFromBucket!1226 (Cons!52257 lt!1840350 lt!1840351) lt!1840360) (+!2096 lt!1840345 lt!1840350))))

(declare-fun lt!1840352 () Unit!122619)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!232 (tuple2!53570 List!52381 ListMap!4841) Unit!122619)

(assert (=> b!4680561 (= lt!1840352 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!232 lt!1840350 lt!1840351 lt!1840360))))

(declare-fun head!9880 (List!52381) tuple2!53570)

(assert (=> b!4680561 (= lt!1840350 (head!9880 oldBucket!34))))

(assert (= (and start!472636 res!1972394) b!4680540))

(assert (= (and b!4680540 res!1972392) b!4680551))

(assert (= (and b!4680551 res!1972404) b!4680560))

(assert (= (and b!4680560 res!1972409) b!4680553))

(assert (= (and b!4680553 res!1972397) b!4680558))

(assert (= (and b!4680558 res!1972413) b!4680547))

(assert (= (and b!4680547 res!1972410) b!4680542))

(assert (= (and b!4680542 res!1972407) b!4680543))

(assert (= (and b!4680543 res!1972395) b!4680556))

(assert (= (and b!4680556 res!1972412) b!4680539))

(assert (= (and b!4680539 res!1972401) b!4680537))

(assert (= (and b!4680537 (not res!1972396)) b!4680552))

(assert (= (and b!4680552 (not res!1972402)) b!4680546))

(assert (= (and b!4680546 (not res!1972406)) b!4680545))

(assert (= (and b!4680545 (not res!1972400)) b!4680561))

(assert (= (and b!4680561 (not res!1972398)) b!4680544))

(assert (= (and b!4680544 (not res!1972403)) b!4680541))

(assert (= (and b!4680541 (not res!1972405)) b!4680538))

(assert (= (and b!4680538 (not res!1972399)) b!4680555))

(assert (= (and b!4680555 (not res!1972393)) b!4680554))

(assert (= (and b!4680554 (not res!1972408)) b!4680548))

(assert (= (and b!4680548 (not res!1972411)) b!4680559))

(assert (= start!472636 b!4680549))

(assert (= (and start!472636 ((_ is Cons!52257) oldBucket!34)) b!4680550))

(assert (= (and start!472636 ((_ is Cons!52257) newBucket!218)) b!4680557))

(declare-fun m!5577435 () Bool)

(assert (=> b!4680538 m!5577435))

(declare-fun m!5577437 () Bool)

(assert (=> b!4680538 m!5577437))

(declare-fun m!5577439 () Bool)

(assert (=> b!4680538 m!5577439))

(declare-fun m!5577441 () Bool)

(assert (=> b!4680545 m!5577441))

(declare-fun m!5577443 () Bool)

(assert (=> b!4680545 m!5577443))

(declare-fun m!5577445 () Bool)

(assert (=> b!4680554 m!5577445))

(declare-fun m!5577447 () Bool)

(assert (=> b!4680554 m!5577447))

(declare-fun m!5577449 () Bool)

(assert (=> b!4680561 m!5577449))

(declare-fun m!5577451 () Bool)

(assert (=> b!4680561 m!5577451))

(declare-fun m!5577453 () Bool)

(assert (=> b!4680561 m!5577453))

(assert (=> b!4680561 m!5577451))

(declare-fun m!5577455 () Bool)

(assert (=> b!4680561 m!5577455))

(declare-fun m!5577457 () Bool)

(assert (=> b!4680561 m!5577457))

(declare-fun m!5577459 () Bool)

(assert (=> b!4680561 m!5577459))

(declare-fun m!5577461 () Bool)

(assert (=> b!4680561 m!5577461))

(assert (=> b!4680561 m!5577459))

(declare-fun m!5577463 () Bool)

(assert (=> b!4680561 m!5577463))

(assert (=> b!4680561 m!5577453))

(declare-fun m!5577465 () Bool)

(assert (=> b!4680553 m!5577465))

(declare-fun m!5577467 () Bool)

(assert (=> b!4680537 m!5577467))

(declare-fun m!5577469 () Bool)

(assert (=> b!4680537 m!5577469))

(declare-fun m!5577471 () Bool)

(assert (=> b!4680537 m!5577471))

(declare-fun m!5577473 () Bool)

(assert (=> b!4680544 m!5577473))

(declare-fun m!5577475 () Bool)

(assert (=> b!4680547 m!5577475))

(declare-fun m!5577477 () Bool)

(assert (=> b!4680558 m!5577477))

(declare-fun m!5577479 () Bool)

(assert (=> b!4680558 m!5577479))

(declare-fun m!5577481 () Bool)

(assert (=> b!4680552 m!5577481))

(declare-fun m!5577483 () Bool)

(assert (=> b!4680560 m!5577483))

(declare-fun m!5577485 () Bool)

(assert (=> b!4680555 m!5577485))

(declare-fun m!5577487 () Bool)

(assert (=> b!4680555 m!5577487))

(assert (=> b!4680555 m!5577487))

(declare-fun m!5577489 () Bool)

(assert (=> b!4680555 m!5577489))

(declare-fun m!5577491 () Bool)

(assert (=> b!4680555 m!5577491))

(declare-fun m!5577493 () Bool)

(assert (=> start!472636 m!5577493))

(declare-fun m!5577495 () Bool)

(assert (=> start!472636 m!5577495))

(declare-fun m!5577497 () Bool)

(assert (=> b!4680543 m!5577497))

(declare-fun m!5577499 () Bool)

(assert (=> b!4680540 m!5577499))

(declare-fun m!5577501 () Bool)

(assert (=> b!4680551 m!5577501))

(declare-fun m!5577503 () Bool)

(assert (=> b!4680559 m!5577503))

(declare-fun m!5577505 () Bool)

(assert (=> b!4680542 m!5577505))

(declare-fun m!5577507 () Bool)

(assert (=> b!4680556 m!5577507))

(declare-fun m!5577509 () Bool)

(assert (=> b!4680548 m!5577509))

(declare-fun m!5577511 () Bool)

(assert (=> b!4680548 m!5577511))

(declare-fun m!5577513 () Bool)

(assert (=> b!4680548 m!5577513))

(declare-fun m!5577515 () Bool)

(assert (=> b!4680548 m!5577515))

(declare-fun m!5577517 () Bool)

(assert (=> b!4680546 m!5577517))

(declare-fun m!5577519 () Bool)

(assert (=> b!4680546 m!5577519))

(check-sat (not b!4680559) (not b!4680537) (not b!4680553) (not b!4680546) (not b!4680555) (not b!4680551) (not start!472636) (not b!4680545) (not b!4680548) (not b!4680549) tp_is_empty!30469 (not b!4680542) (not b!4680558) (not b!4680556) (not b!4680540) (not b!4680561) tp_is_empty!30471 (not b!4680560) (not b!4680552) (not b!4680554) (not b!4680557) (not b!4680550) (not b!4680538) (not b!4680544) (not b!4680543) (not b!4680547))
(check-sat)
(get-model)

(declare-fun d!1487681 () Bool)

(declare-fun res!1972418 () Bool)

(declare-fun e!2920270 () Bool)

(assert (=> d!1487681 (=> res!1972418 e!2920270)))

(assert (=> d!1487681 (= res!1972418 (not ((_ is Cons!52257) oldBucket!34)))))

(assert (=> d!1487681 (= (noDuplicateKeys!1794 oldBucket!34) e!2920270)))

(declare-fun b!4680576 () Bool)

(declare-fun e!2920271 () Bool)

(assert (=> b!4680576 (= e!2920270 e!2920271)))

(declare-fun res!1972419 () Bool)

(assert (=> b!4680576 (=> (not res!1972419) (not e!2920271))))

(assert (=> b!4680576 (= res!1972419 (not (containsKey!2941 (t!359537 oldBucket!34) (_1!30079 (h!58470 oldBucket!34)))))))

(declare-fun b!4680577 () Bool)

(assert (=> b!4680577 (= e!2920271 (noDuplicateKeys!1794 (t!359537 oldBucket!34)))))

(assert (= (and d!1487681 (not res!1972418)) b!4680576))

(assert (= (and b!4680576 res!1972419) b!4680577))

(declare-fun m!5577535 () Bool)

(assert (=> b!4680576 m!5577535))

(declare-fun m!5577537 () Bool)

(assert (=> b!4680577 m!5577537))

(assert (=> b!4680540 d!1487681))

(declare-fun d!1487685 () Bool)

(assert (=> d!1487685 (= (head!9880 oldBucket!34) (h!58470 oldBucket!34))))

(assert (=> b!4680561 d!1487685))

(declare-fun b!4680655 () Bool)

(assert (=> b!4680655 true))

(declare-fun bs!1082563 () Bool)

(declare-fun b!4680654 () Bool)

(assert (= bs!1082563 (and b!4680654 b!4680655)))

(declare-fun lambda!204804 () Int)

(declare-fun lambda!204803 () Int)

(assert (=> bs!1082563 (= lambda!204804 lambda!204803)))

(assert (=> b!4680654 true))

(declare-fun lambda!204805 () Int)

(declare-fun lt!1840528 () ListMap!4841)

(assert (=> bs!1082563 (= (= lt!1840528 lt!1840360) (= lambda!204805 lambda!204803))))

(assert (=> b!4680654 (= (= lt!1840528 lt!1840360) (= lambda!204805 lambda!204804))))

(assert (=> b!4680654 true))

(declare-fun bs!1082564 () Bool)

(declare-fun d!1487687 () Bool)

(assert (= bs!1082564 (and d!1487687 b!4680655)))

(declare-fun lambda!204806 () Int)

(declare-fun lt!1840521 () ListMap!4841)

(assert (=> bs!1082564 (= (= lt!1840521 lt!1840360) (= lambda!204806 lambda!204803))))

(declare-fun bs!1082565 () Bool)

(assert (= bs!1082565 (and d!1487687 b!4680654)))

(assert (=> bs!1082565 (= (= lt!1840521 lt!1840360) (= lambda!204806 lambda!204804))))

(assert (=> bs!1082565 (= (= lt!1840521 lt!1840528) (= lambda!204806 lambda!204805))))

(assert (=> d!1487687 true))

(declare-fun b!4680651 () Bool)

(declare-fun e!2920320 () Bool)

(declare-fun invariantList!1378 (List!52381) Bool)

(assert (=> b!4680651 (= e!2920320 (invariantList!1378 (toList!5477 lt!1840521)))))

(declare-fun c!800657 () Bool)

(declare-fun call!327149 () Bool)

(declare-fun bm!327144 () Bool)

(declare-fun forall!11231 (List!52381 Int) Bool)

(assert (=> bm!327144 (= call!327149 (forall!11231 (ite c!800657 (toList!5477 lt!1840360) (Cons!52257 lt!1840350 lt!1840351)) (ite c!800657 lambda!204803 lambda!204805)))))

(declare-fun bm!327145 () Bool)

(declare-fun call!327150 () Bool)

(assert (=> bm!327145 (= call!327150 (forall!11231 (toList!5477 lt!1840360) (ite c!800657 lambda!204803 lambda!204805)))))

(declare-fun b!4680652 () Bool)

(declare-fun e!2920322 () Bool)

(assert (=> b!4680652 (= e!2920322 (forall!11231 (toList!5477 lt!1840360) lambda!204805))))

(declare-fun b!4680653 () Bool)

(declare-fun res!1972462 () Bool)

(assert (=> b!4680653 (=> (not res!1972462) (not e!2920320))))

(assert (=> b!4680653 (= res!1972462 (forall!11231 (toList!5477 lt!1840360) lambda!204806))))

(assert (=> d!1487687 e!2920320))

(declare-fun res!1972461 () Bool)

(assert (=> d!1487687 (=> (not res!1972461) (not e!2920320))))

(assert (=> d!1487687 (= res!1972461 (forall!11231 (Cons!52257 lt!1840350 lt!1840351) lambda!204806))))

(declare-fun e!2920321 () ListMap!4841)

(assert (=> d!1487687 (= lt!1840521 e!2920321)))

(assert (=> d!1487687 (= c!800657 ((_ is Nil!52257) (Cons!52257 lt!1840350 lt!1840351)))))

(assert (=> d!1487687 (noDuplicateKeys!1794 (Cons!52257 lt!1840350 lt!1840351))))

(assert (=> d!1487687 (= (addToMapMapFromBucket!1226 (Cons!52257 lt!1840350 lt!1840351) lt!1840360) lt!1840521)))

(assert (=> b!4680654 (= e!2920321 lt!1840528)))

(declare-fun lt!1840532 () ListMap!4841)

(assert (=> b!4680654 (= lt!1840532 (+!2096 lt!1840360 (h!58470 (Cons!52257 lt!1840350 lt!1840351))))))

(assert (=> b!4680654 (= lt!1840528 (addToMapMapFromBucket!1226 (t!359537 (Cons!52257 lt!1840350 lt!1840351)) (+!2096 lt!1840360 (h!58470 (Cons!52257 lt!1840350 lt!1840351)))))))

(declare-fun lt!1840534 () Unit!122619)

(declare-fun call!327151 () Unit!122619)

(assert (=> b!4680654 (= lt!1840534 call!327151)))

(assert (=> b!4680654 (forall!11231 (toList!5477 lt!1840360) lambda!204804)))

(declare-fun lt!1840524 () Unit!122619)

(assert (=> b!4680654 (= lt!1840524 lt!1840534)))

(assert (=> b!4680654 (forall!11231 (toList!5477 lt!1840532) lambda!204805)))

(declare-fun lt!1840515 () Unit!122619)

(declare-fun Unit!122643 () Unit!122619)

(assert (=> b!4680654 (= lt!1840515 Unit!122643)))

(assert (=> b!4680654 (forall!11231 (t!359537 (Cons!52257 lt!1840350 lt!1840351)) lambda!204805)))

(declare-fun lt!1840531 () Unit!122619)

(declare-fun Unit!122644 () Unit!122619)

(assert (=> b!4680654 (= lt!1840531 Unit!122644)))

(declare-fun lt!1840530 () Unit!122619)

(declare-fun Unit!122645 () Unit!122619)

(assert (=> b!4680654 (= lt!1840530 Unit!122645)))

(declare-fun lt!1840525 () Unit!122619)

(declare-fun forallContained!3350 (List!52381 Int tuple2!53570) Unit!122619)

(assert (=> b!4680654 (= lt!1840525 (forallContained!3350 (toList!5477 lt!1840532) lambda!204805 (h!58470 (Cons!52257 lt!1840350 lt!1840351))))))

(assert (=> b!4680654 (contains!15390 lt!1840532 (_1!30079 (h!58470 (Cons!52257 lt!1840350 lt!1840351))))))

(declare-fun lt!1840533 () Unit!122619)

(declare-fun Unit!122646 () Unit!122619)

(assert (=> b!4680654 (= lt!1840533 Unit!122646)))

(assert (=> b!4680654 (contains!15390 lt!1840528 (_1!30079 (h!58470 (Cons!52257 lt!1840350 lt!1840351))))))

(declare-fun lt!1840519 () Unit!122619)

(declare-fun Unit!122647 () Unit!122619)

(assert (=> b!4680654 (= lt!1840519 Unit!122647)))

(assert (=> b!4680654 (forall!11231 (Cons!52257 lt!1840350 lt!1840351) lambda!204805)))

(declare-fun lt!1840527 () Unit!122619)

(declare-fun Unit!122648 () Unit!122619)

(assert (=> b!4680654 (= lt!1840527 Unit!122648)))

(assert (=> b!4680654 (forall!11231 (toList!5477 lt!1840532) lambda!204805)))

(declare-fun lt!1840523 () Unit!122619)

(declare-fun Unit!122649 () Unit!122619)

(assert (=> b!4680654 (= lt!1840523 Unit!122649)))

(declare-fun lt!1840518 () Unit!122619)

(declare-fun Unit!122650 () Unit!122619)

(assert (=> b!4680654 (= lt!1840518 Unit!122650)))

(declare-fun lt!1840535 () Unit!122619)

(declare-fun addForallContainsKeyThenBeforeAdding!665 (ListMap!4841 ListMap!4841 K!13635 V!13881) Unit!122619)

(assert (=> b!4680654 (= lt!1840535 (addForallContainsKeyThenBeforeAdding!665 lt!1840360 lt!1840528 (_1!30079 (h!58470 (Cons!52257 lt!1840350 lt!1840351))) (_2!30079 (h!58470 (Cons!52257 lt!1840350 lt!1840351)))))))

(assert (=> b!4680654 call!327150))

(declare-fun lt!1840529 () Unit!122619)

(assert (=> b!4680654 (= lt!1840529 lt!1840535)))

(assert (=> b!4680654 (forall!11231 (toList!5477 lt!1840360) lambda!204805)))

(declare-fun lt!1840516 () Unit!122619)

(declare-fun Unit!122651 () Unit!122619)

(assert (=> b!4680654 (= lt!1840516 Unit!122651)))

(declare-fun res!1972463 () Bool)

(assert (=> b!4680654 (= res!1972463 call!327149)))

(assert (=> b!4680654 (=> (not res!1972463) (not e!2920322))))

(assert (=> b!4680654 e!2920322))

(declare-fun lt!1840522 () Unit!122619)

(declare-fun Unit!122652 () Unit!122619)

(assert (=> b!4680654 (= lt!1840522 Unit!122652)))

(declare-fun bm!327146 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!666 (ListMap!4841) Unit!122619)

(assert (=> bm!327146 (= call!327151 (lemmaContainsAllItsOwnKeys!666 lt!1840360))))

(assert (=> b!4680655 (= e!2920321 lt!1840360)))

(declare-fun lt!1840526 () Unit!122619)

(assert (=> b!4680655 (= lt!1840526 call!327151)))

(assert (=> b!4680655 call!327150))

(declare-fun lt!1840517 () Unit!122619)

(assert (=> b!4680655 (= lt!1840517 lt!1840526)))

(assert (=> b!4680655 call!327149))

(declare-fun lt!1840520 () Unit!122619)

(declare-fun Unit!122653 () Unit!122619)

(assert (=> b!4680655 (= lt!1840520 Unit!122653)))

(assert (= (and d!1487687 c!800657) b!4680655))

(assert (= (and d!1487687 (not c!800657)) b!4680654))

(assert (= (and b!4680654 res!1972463) b!4680652))

(assert (= (or b!4680655 b!4680654) bm!327146))

(assert (= (or b!4680655 b!4680654) bm!327145))

(assert (= (or b!4680655 b!4680654) bm!327144))

(assert (= (and d!1487687 res!1972461) b!4680653))

(assert (= (and b!4680653 res!1972462) b!4680651))

(declare-fun m!5577695 () Bool)

(assert (=> bm!327146 m!5577695))

(declare-fun m!5577699 () Bool)

(assert (=> d!1487687 m!5577699))

(declare-fun m!5577703 () Bool)

(assert (=> d!1487687 m!5577703))

(declare-fun m!5577707 () Bool)

(assert (=> bm!327144 m!5577707))

(declare-fun m!5577709 () Bool)

(assert (=> b!4680651 m!5577709))

(declare-fun m!5577711 () Bool)

(assert (=> b!4680654 m!5577711))

(declare-fun m!5577713 () Bool)

(assert (=> b!4680654 m!5577713))

(declare-fun m!5577715 () Bool)

(assert (=> b!4680654 m!5577715))

(declare-fun m!5577717 () Bool)

(assert (=> b!4680654 m!5577717))

(declare-fun m!5577719 () Bool)

(assert (=> b!4680654 m!5577719))

(declare-fun m!5577721 () Bool)

(assert (=> b!4680654 m!5577721))

(declare-fun m!5577723 () Bool)

(assert (=> b!4680654 m!5577723))

(assert (=> b!4680654 m!5577711))

(declare-fun m!5577725 () Bool)

(assert (=> b!4680654 m!5577725))

(assert (=> b!4680654 m!5577723))

(declare-fun m!5577727 () Bool)

(assert (=> b!4680654 m!5577727))

(declare-fun m!5577729 () Bool)

(assert (=> b!4680654 m!5577729))

(declare-fun m!5577731 () Bool)

(assert (=> b!4680654 m!5577731))

(declare-fun m!5577733 () Bool)

(assert (=> bm!327145 m!5577733))

(declare-fun m!5577735 () Bool)

(assert (=> b!4680653 m!5577735))

(assert (=> b!4680652 m!5577719))

(assert (=> b!4680561 d!1487687))

(declare-fun bs!1082566 () Bool)

(declare-fun b!4680666 () Bool)

(assert (= bs!1082566 (and b!4680666 b!4680655)))

(declare-fun lambda!204807 () Int)

(assert (=> bs!1082566 (= lambda!204807 lambda!204803)))

(declare-fun bs!1082567 () Bool)

(assert (= bs!1082567 (and b!4680666 b!4680654)))

(assert (=> bs!1082567 (= lambda!204807 lambda!204804)))

(assert (=> bs!1082567 (= (= lt!1840360 lt!1840528) (= lambda!204807 lambda!204805))))

(declare-fun bs!1082568 () Bool)

(assert (= bs!1082568 (and b!4680666 d!1487687)))

(assert (=> bs!1082568 (= (= lt!1840360 lt!1840521) (= lambda!204807 lambda!204806))))

(assert (=> b!4680666 true))

(declare-fun bs!1082569 () Bool)

(declare-fun b!4680665 () Bool)

(assert (= bs!1082569 (and b!4680665 b!4680654)))

(declare-fun lambda!204808 () Int)

(assert (=> bs!1082569 (= lambda!204808 lambda!204804)))

(assert (=> bs!1082569 (= (= lt!1840360 lt!1840528) (= lambda!204808 lambda!204805))))

(declare-fun bs!1082570 () Bool)

(assert (= bs!1082570 (and b!4680665 d!1487687)))

(assert (=> bs!1082570 (= (= lt!1840360 lt!1840521) (= lambda!204808 lambda!204806))))

(declare-fun bs!1082571 () Bool)

(assert (= bs!1082571 (and b!4680665 b!4680666)))

(assert (=> bs!1082571 (= lambda!204808 lambda!204807)))

(declare-fun bs!1082572 () Bool)

(assert (= bs!1082572 (and b!4680665 b!4680655)))

(assert (=> bs!1082572 (= lambda!204808 lambda!204803)))

(assert (=> b!4680665 true))

(declare-fun lt!1840553 () ListMap!4841)

(declare-fun lambda!204809 () Int)

(assert (=> bs!1082569 (= (= lt!1840553 lt!1840360) (= lambda!204809 lambda!204804))))

(assert (=> bs!1082569 (= (= lt!1840553 lt!1840528) (= lambda!204809 lambda!204805))))

(assert (=> bs!1082570 (= (= lt!1840553 lt!1840521) (= lambda!204809 lambda!204806))))

(assert (=> bs!1082571 (= (= lt!1840553 lt!1840360) (= lambda!204809 lambda!204807))))

(assert (=> b!4680665 (= (= lt!1840553 lt!1840360) (= lambda!204809 lambda!204808))))

(assert (=> bs!1082572 (= (= lt!1840553 lt!1840360) (= lambda!204809 lambda!204803))))

(assert (=> b!4680665 true))

(declare-fun bs!1082573 () Bool)

(declare-fun d!1487721 () Bool)

(assert (= bs!1082573 (and d!1487721 b!4680654)))

(declare-fun lambda!204810 () Int)

(declare-fun lt!1840546 () ListMap!4841)

(assert (=> bs!1082573 (= (= lt!1840546 lt!1840360) (= lambda!204810 lambda!204804))))

(assert (=> bs!1082573 (= (= lt!1840546 lt!1840528) (= lambda!204810 lambda!204805))))

(declare-fun bs!1082574 () Bool)

(assert (= bs!1082574 (and d!1487721 d!1487687)))

(assert (=> bs!1082574 (= (= lt!1840546 lt!1840521) (= lambda!204810 lambda!204806))))

(declare-fun bs!1082575 () Bool)

(assert (= bs!1082575 (and d!1487721 b!4680666)))

(assert (=> bs!1082575 (= (= lt!1840546 lt!1840360) (= lambda!204810 lambda!204807))))

(declare-fun bs!1082576 () Bool)

(assert (= bs!1082576 (and d!1487721 b!4680665)))

(assert (=> bs!1082576 (= (= lt!1840546 lt!1840360) (= lambda!204810 lambda!204808))))

(declare-fun bs!1082577 () Bool)

(assert (= bs!1082577 (and d!1487721 b!4680655)))

(assert (=> bs!1082577 (= (= lt!1840546 lt!1840360) (= lambda!204810 lambda!204803))))

(assert (=> bs!1082576 (= (= lt!1840546 lt!1840553) (= lambda!204810 lambda!204809))))

(assert (=> d!1487721 true))

(declare-fun b!4680662 () Bool)

(declare-fun e!2920327 () Bool)

(assert (=> b!4680662 (= e!2920327 (invariantList!1378 (toList!5477 lt!1840546)))))

(declare-fun bm!327147 () Bool)

(declare-fun c!800658 () Bool)

(declare-fun call!327152 () Bool)

(assert (=> bm!327147 (= call!327152 (forall!11231 (ite c!800658 (toList!5477 lt!1840360) oldBucket!34) (ite c!800658 lambda!204807 lambda!204809)))))

(declare-fun bm!327148 () Bool)

(declare-fun call!327153 () Bool)

(assert (=> bm!327148 (= call!327153 (forall!11231 (toList!5477 lt!1840360) (ite c!800658 lambda!204807 lambda!204809)))))

(declare-fun b!4680663 () Bool)

(declare-fun e!2920329 () Bool)

(assert (=> b!4680663 (= e!2920329 (forall!11231 (toList!5477 lt!1840360) lambda!204809))))

(declare-fun b!4680664 () Bool)

(declare-fun res!1972469 () Bool)

(assert (=> b!4680664 (=> (not res!1972469) (not e!2920327))))

(assert (=> b!4680664 (= res!1972469 (forall!11231 (toList!5477 lt!1840360) lambda!204810))))

(assert (=> d!1487721 e!2920327))

(declare-fun res!1972468 () Bool)

(assert (=> d!1487721 (=> (not res!1972468) (not e!2920327))))

(assert (=> d!1487721 (= res!1972468 (forall!11231 oldBucket!34 lambda!204810))))

(declare-fun e!2920328 () ListMap!4841)

(assert (=> d!1487721 (= lt!1840546 e!2920328)))

(assert (=> d!1487721 (= c!800658 ((_ is Nil!52257) oldBucket!34))))

(assert (=> d!1487721 (noDuplicateKeys!1794 oldBucket!34)))

(assert (=> d!1487721 (= (addToMapMapFromBucket!1226 oldBucket!34 lt!1840360) lt!1840546)))

(assert (=> b!4680665 (= e!2920328 lt!1840553)))

(declare-fun lt!1840557 () ListMap!4841)

(assert (=> b!4680665 (= lt!1840557 (+!2096 lt!1840360 (h!58470 oldBucket!34)))))

(assert (=> b!4680665 (= lt!1840553 (addToMapMapFromBucket!1226 (t!359537 oldBucket!34) (+!2096 lt!1840360 (h!58470 oldBucket!34))))))

(declare-fun lt!1840559 () Unit!122619)

(declare-fun call!327154 () Unit!122619)

(assert (=> b!4680665 (= lt!1840559 call!327154)))

(assert (=> b!4680665 (forall!11231 (toList!5477 lt!1840360) lambda!204808)))

(declare-fun lt!1840549 () Unit!122619)

(assert (=> b!4680665 (= lt!1840549 lt!1840559)))

(assert (=> b!4680665 (forall!11231 (toList!5477 lt!1840557) lambda!204809)))

(declare-fun lt!1840540 () Unit!122619)

(declare-fun Unit!122665 () Unit!122619)

(assert (=> b!4680665 (= lt!1840540 Unit!122665)))

(assert (=> b!4680665 (forall!11231 (t!359537 oldBucket!34) lambda!204809)))

(declare-fun lt!1840556 () Unit!122619)

(declare-fun Unit!122666 () Unit!122619)

(assert (=> b!4680665 (= lt!1840556 Unit!122666)))

(declare-fun lt!1840555 () Unit!122619)

(declare-fun Unit!122667 () Unit!122619)

(assert (=> b!4680665 (= lt!1840555 Unit!122667)))

(declare-fun lt!1840550 () Unit!122619)

(assert (=> b!4680665 (= lt!1840550 (forallContained!3350 (toList!5477 lt!1840557) lambda!204809 (h!58470 oldBucket!34)))))

(assert (=> b!4680665 (contains!15390 lt!1840557 (_1!30079 (h!58470 oldBucket!34)))))

(declare-fun lt!1840558 () Unit!122619)

(declare-fun Unit!122668 () Unit!122619)

(assert (=> b!4680665 (= lt!1840558 Unit!122668)))

(assert (=> b!4680665 (contains!15390 lt!1840553 (_1!30079 (h!58470 oldBucket!34)))))

(declare-fun lt!1840544 () Unit!122619)

(declare-fun Unit!122669 () Unit!122619)

(assert (=> b!4680665 (= lt!1840544 Unit!122669)))

(assert (=> b!4680665 (forall!11231 oldBucket!34 lambda!204809)))

(declare-fun lt!1840552 () Unit!122619)

(declare-fun Unit!122670 () Unit!122619)

(assert (=> b!4680665 (= lt!1840552 Unit!122670)))

(assert (=> b!4680665 (forall!11231 (toList!5477 lt!1840557) lambda!204809)))

(declare-fun lt!1840548 () Unit!122619)

(declare-fun Unit!122671 () Unit!122619)

(assert (=> b!4680665 (= lt!1840548 Unit!122671)))

(declare-fun lt!1840543 () Unit!122619)

(declare-fun Unit!122672 () Unit!122619)

(assert (=> b!4680665 (= lt!1840543 Unit!122672)))

(declare-fun lt!1840560 () Unit!122619)

(assert (=> b!4680665 (= lt!1840560 (addForallContainsKeyThenBeforeAdding!665 lt!1840360 lt!1840553 (_1!30079 (h!58470 oldBucket!34)) (_2!30079 (h!58470 oldBucket!34))))))

(assert (=> b!4680665 call!327153))

(declare-fun lt!1840554 () Unit!122619)

(assert (=> b!4680665 (= lt!1840554 lt!1840560)))

(assert (=> b!4680665 (forall!11231 (toList!5477 lt!1840360) lambda!204809)))

(declare-fun lt!1840541 () Unit!122619)

(declare-fun Unit!122673 () Unit!122619)

(assert (=> b!4680665 (= lt!1840541 Unit!122673)))

(declare-fun res!1972470 () Bool)

(assert (=> b!4680665 (= res!1972470 call!327152)))

(assert (=> b!4680665 (=> (not res!1972470) (not e!2920329))))

(assert (=> b!4680665 e!2920329))

(declare-fun lt!1840547 () Unit!122619)

(declare-fun Unit!122674 () Unit!122619)

(assert (=> b!4680665 (= lt!1840547 Unit!122674)))

(declare-fun bm!327149 () Bool)

(assert (=> bm!327149 (= call!327154 (lemmaContainsAllItsOwnKeys!666 lt!1840360))))

(assert (=> b!4680666 (= e!2920328 lt!1840360)))

(declare-fun lt!1840551 () Unit!122619)

(assert (=> b!4680666 (= lt!1840551 call!327154)))

(assert (=> b!4680666 call!327153))

(declare-fun lt!1840542 () Unit!122619)

(assert (=> b!4680666 (= lt!1840542 lt!1840551)))

(assert (=> b!4680666 call!327152))

(declare-fun lt!1840545 () Unit!122619)

(declare-fun Unit!122675 () Unit!122619)

(assert (=> b!4680666 (= lt!1840545 Unit!122675)))

(assert (= (and d!1487721 c!800658) b!4680666))

(assert (= (and d!1487721 (not c!800658)) b!4680665))

(assert (= (and b!4680665 res!1972470) b!4680663))

(assert (= (or b!4680666 b!4680665) bm!327149))

(assert (= (or b!4680666 b!4680665) bm!327148))

(assert (= (or b!4680666 b!4680665) bm!327147))

(assert (= (and d!1487721 res!1972468) b!4680664))

(assert (= (and b!4680664 res!1972469) b!4680662))

(assert (=> bm!327149 m!5577695))

(declare-fun m!5577737 () Bool)

(assert (=> d!1487721 m!5577737))

(assert (=> d!1487721 m!5577499))

(declare-fun m!5577739 () Bool)

(assert (=> bm!327147 m!5577739))

(declare-fun m!5577741 () Bool)

(assert (=> b!4680662 m!5577741))

(declare-fun m!5577743 () Bool)

(assert (=> b!4680665 m!5577743))

(declare-fun m!5577745 () Bool)

(assert (=> b!4680665 m!5577745))

(declare-fun m!5577747 () Bool)

(assert (=> b!4680665 m!5577747))

(declare-fun m!5577749 () Bool)

(assert (=> b!4680665 m!5577749))

(declare-fun m!5577751 () Bool)

(assert (=> b!4680665 m!5577751))

(declare-fun m!5577753 () Bool)

(assert (=> b!4680665 m!5577753))

(declare-fun m!5577755 () Bool)

(assert (=> b!4680665 m!5577755))

(assert (=> b!4680665 m!5577743))

(declare-fun m!5577757 () Bool)

(assert (=> b!4680665 m!5577757))

(assert (=> b!4680665 m!5577755))

(declare-fun m!5577759 () Bool)

(assert (=> b!4680665 m!5577759))

(declare-fun m!5577761 () Bool)

(assert (=> b!4680665 m!5577761))

(declare-fun m!5577763 () Bool)

(assert (=> b!4680665 m!5577763))

(declare-fun m!5577765 () Bool)

(assert (=> bm!327148 m!5577765))

(declare-fun m!5577767 () Bool)

(assert (=> b!4680664 m!5577767))

(assert (=> b!4680663 m!5577751))

(assert (=> b!4680561 d!1487721))

(declare-fun d!1487723 () Bool)

(declare-fun e!2920335 () Bool)

(assert (=> d!1487723 e!2920335))

(declare-fun res!1972482 () Bool)

(assert (=> d!1487723 (=> (not res!1972482) (not e!2920335))))

(declare-fun lt!1840583 () ListMap!4841)

(assert (=> d!1487723 (= res!1972482 (contains!15390 lt!1840583 (_1!30079 (h!58470 oldBucket!34))))))

(declare-fun lt!1840584 () List!52381)

(assert (=> d!1487723 (= lt!1840583 (ListMap!4842 lt!1840584))))

(declare-fun lt!1840582 () Unit!122619)

(declare-fun lt!1840581 () Unit!122619)

(assert (=> d!1487723 (= lt!1840582 lt!1840581)))

(declare-datatypes ((Option!11972 0))(
  ( (None!11971) (Some!11971 (v!46334 V!13881)) )
))
(declare-fun getValueByKey!1720 (List!52381 K!13635) Option!11972)

(assert (=> d!1487723 (= (getValueByKey!1720 lt!1840584 (_1!30079 (h!58470 oldBucket!34))) (Some!11971 (_2!30079 (h!58470 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!979 (List!52381 K!13635 V!13881) Unit!122619)

(assert (=> d!1487723 (= lt!1840581 (lemmaContainsTupThenGetReturnValue!979 lt!1840584 (_1!30079 (h!58470 oldBucket!34)) (_2!30079 (h!58470 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!487 (List!52381 K!13635 V!13881) List!52381)

(assert (=> d!1487723 (= lt!1840584 (insertNoDuplicatedKeys!487 (toList!5477 lt!1840345) (_1!30079 (h!58470 oldBucket!34)) (_2!30079 (h!58470 oldBucket!34))))))

(assert (=> d!1487723 (= (+!2096 lt!1840345 (h!58470 oldBucket!34)) lt!1840583)))

(declare-fun b!4680677 () Bool)

(declare-fun res!1972481 () Bool)

(assert (=> b!4680677 (=> (not res!1972481) (not e!2920335))))

(assert (=> b!4680677 (= res!1972481 (= (getValueByKey!1720 (toList!5477 lt!1840583) (_1!30079 (h!58470 oldBucket!34))) (Some!11971 (_2!30079 (h!58470 oldBucket!34)))))))

(declare-fun b!4680678 () Bool)

(declare-fun contains!15391 (List!52381 tuple2!53570) Bool)

(assert (=> b!4680678 (= e!2920335 (contains!15391 (toList!5477 lt!1840583) (h!58470 oldBucket!34)))))

(assert (= (and d!1487723 res!1972482) b!4680677))

(assert (= (and b!4680677 res!1972481) b!4680678))

(declare-fun m!5577781 () Bool)

(assert (=> d!1487723 m!5577781))

(declare-fun m!5577783 () Bool)

(assert (=> d!1487723 m!5577783))

(declare-fun m!5577785 () Bool)

(assert (=> d!1487723 m!5577785))

(declare-fun m!5577787 () Bool)

(assert (=> d!1487723 m!5577787))

(declare-fun m!5577789 () Bool)

(assert (=> b!4680677 m!5577789))

(declare-fun m!5577791 () Bool)

(assert (=> b!4680678 m!5577791))

(assert (=> b!4680561 d!1487723))

(declare-fun d!1487727 () Bool)

(declare-fun e!2920336 () Bool)

(assert (=> d!1487727 e!2920336))

(declare-fun res!1972484 () Bool)

(assert (=> d!1487727 (=> (not res!1972484) (not e!2920336))))

(declare-fun lt!1840589 () ListMap!4841)

(assert (=> d!1487727 (= res!1972484 (contains!15390 lt!1840589 (_1!30079 lt!1840350)))))

(declare-fun lt!1840590 () List!52381)

(assert (=> d!1487727 (= lt!1840589 (ListMap!4842 lt!1840590))))

(declare-fun lt!1840588 () Unit!122619)

(declare-fun lt!1840587 () Unit!122619)

(assert (=> d!1487727 (= lt!1840588 lt!1840587)))

(assert (=> d!1487727 (= (getValueByKey!1720 lt!1840590 (_1!30079 lt!1840350)) (Some!11971 (_2!30079 lt!1840350)))))

(assert (=> d!1487727 (= lt!1840587 (lemmaContainsTupThenGetReturnValue!979 lt!1840590 (_1!30079 lt!1840350) (_2!30079 lt!1840350)))))

(assert (=> d!1487727 (= lt!1840590 (insertNoDuplicatedKeys!487 (toList!5477 lt!1840345) (_1!30079 lt!1840350) (_2!30079 lt!1840350)))))

(assert (=> d!1487727 (= (+!2096 lt!1840345 lt!1840350) lt!1840589)))

(declare-fun b!4680679 () Bool)

(declare-fun res!1972483 () Bool)

(assert (=> b!4680679 (=> (not res!1972483) (not e!2920336))))

(assert (=> b!4680679 (= res!1972483 (= (getValueByKey!1720 (toList!5477 lt!1840589) (_1!30079 lt!1840350)) (Some!11971 (_2!30079 lt!1840350))))))

(declare-fun b!4680680 () Bool)

(assert (=> b!4680680 (= e!2920336 (contains!15391 (toList!5477 lt!1840589) lt!1840350))))

(assert (= (and d!1487727 res!1972484) b!4680679))

(assert (= (and b!4680679 res!1972483) b!4680680))

(declare-fun m!5577793 () Bool)

(assert (=> d!1487727 m!5577793))

(declare-fun m!5577795 () Bool)

(assert (=> d!1487727 m!5577795))

(declare-fun m!5577797 () Bool)

(assert (=> d!1487727 m!5577797))

(declare-fun m!5577799 () Bool)

(assert (=> d!1487727 m!5577799))

(declare-fun m!5577801 () Bool)

(assert (=> b!4680679 m!5577801))

(declare-fun m!5577803 () Bool)

(assert (=> b!4680680 m!5577803))

(assert (=> b!4680561 d!1487727))

(declare-fun d!1487729 () Bool)

(assert (=> d!1487729 (eq!983 (addToMapMapFromBucket!1226 (Cons!52257 lt!1840350 lt!1840351) lt!1840360) (+!2096 (addToMapMapFromBucket!1226 lt!1840351 lt!1840360) lt!1840350))))

(declare-fun lt!1840594 () Unit!122619)

(declare-fun choose!32393 (tuple2!53570 List!52381 ListMap!4841) Unit!122619)

(assert (=> d!1487729 (= lt!1840594 (choose!32393 lt!1840350 lt!1840351 lt!1840360))))

(assert (=> d!1487729 (noDuplicateKeys!1794 lt!1840351)))

(assert (=> d!1487729 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!232 lt!1840350 lt!1840351 lt!1840360) lt!1840594)))

(declare-fun bs!1082579 () Bool)

(assert (= bs!1082579 d!1487729))

(declare-fun m!5577807 () Bool)

(assert (=> bs!1082579 m!5577807))

(assert (=> bs!1082579 m!5577453))

(declare-fun m!5577809 () Bool)

(assert (=> bs!1082579 m!5577809))

(declare-fun m!5577811 () Bool)

(assert (=> bs!1082579 m!5577811))

(assert (=> bs!1082579 m!5577443))

(assert (=> bs!1082579 m!5577809))

(assert (=> bs!1082579 m!5577453))

(declare-fun m!5577813 () Bool)

(assert (=> bs!1082579 m!5577813))

(assert (=> bs!1082579 m!5577443))

(assert (=> b!4680561 d!1487729))

(declare-fun d!1487733 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9113 (List!52381) (InoxSet tuple2!53570))

(assert (=> d!1487733 (= (eq!983 lt!1840355 (addToMapMapFromBucket!1226 oldBucket!34 lt!1840360)) (= (content!9113 (toList!5477 lt!1840355)) (content!9113 (toList!5477 (addToMapMapFromBucket!1226 oldBucket!34 lt!1840360)))))))

(declare-fun bs!1082580 () Bool)

(assert (= bs!1082580 d!1487733))

(declare-fun m!5577815 () Bool)

(assert (=> bs!1082580 m!5577815))

(declare-fun m!5577817 () Bool)

(assert (=> bs!1082580 m!5577817))

(assert (=> b!4680561 d!1487733))

(declare-fun d!1487735 () Bool)

(assert (=> d!1487735 (= (eq!983 (addToMapMapFromBucket!1226 (Cons!52257 lt!1840350 lt!1840351) lt!1840360) (+!2096 lt!1840345 lt!1840350)) (= (content!9113 (toList!5477 (addToMapMapFromBucket!1226 (Cons!52257 lt!1840350 lt!1840351) lt!1840360))) (content!9113 (toList!5477 (+!2096 lt!1840345 lt!1840350)))))))

(declare-fun bs!1082581 () Bool)

(assert (= bs!1082581 d!1487735))

(declare-fun m!5577819 () Bool)

(assert (=> bs!1082581 m!5577819))

(declare-fun m!5577821 () Bool)

(assert (=> bs!1082581 m!5577821))

(assert (=> b!4680561 d!1487735))

(declare-fun d!1487737 () Bool)

(declare-fun res!1972485 () Bool)

(declare-fun e!2920337 () Bool)

(assert (=> d!1487737 (=> res!1972485 e!2920337)))

(assert (=> d!1487737 (= res!1972485 (not ((_ is Cons!52257) newBucket!218)))))

(assert (=> d!1487737 (= (noDuplicateKeys!1794 newBucket!218) e!2920337)))

(declare-fun b!4680681 () Bool)

(declare-fun e!2920338 () Bool)

(assert (=> b!4680681 (= e!2920337 e!2920338)))

(declare-fun res!1972486 () Bool)

(assert (=> b!4680681 (=> (not res!1972486) (not e!2920338))))

(assert (=> b!4680681 (= res!1972486 (not (containsKey!2941 (t!359537 newBucket!218) (_1!30079 (h!58470 newBucket!218)))))))

(declare-fun b!4680682 () Bool)

(assert (=> b!4680682 (= e!2920338 (noDuplicateKeys!1794 (t!359537 newBucket!218)))))

(assert (= (and d!1487737 (not res!1972485)) b!4680681))

(assert (= (and b!4680681 res!1972486) b!4680682))

(declare-fun m!5577823 () Bool)

(assert (=> b!4680681 m!5577823))

(declare-fun m!5577825 () Bool)

(assert (=> b!4680682 m!5577825))

(assert (=> b!4680551 d!1487737))

(declare-fun b!4680709 () Bool)

(declare-fun e!2920356 () List!52381)

(assert (=> b!4680709 (= e!2920356 (t!359537 oldBucket!34))))

(declare-fun b!4680711 () Bool)

(declare-fun e!2920355 () List!52381)

(assert (=> b!4680711 (= e!2920355 (Cons!52257 (h!58470 oldBucket!34) (removePairForKey!1389 (t!359537 oldBucket!34) key!4653)))))

(declare-fun b!4680712 () Bool)

(assert (=> b!4680712 (= e!2920355 Nil!52257)))

(declare-fun b!4680710 () Bool)

(assert (=> b!4680710 (= e!2920356 e!2920355)))

(declare-fun c!800669 () Bool)

(assert (=> b!4680710 (= c!800669 ((_ is Cons!52257) oldBucket!34))))

(declare-fun d!1487739 () Bool)

(declare-fun lt!1840613 () List!52381)

(assert (=> d!1487739 (not (containsKey!2941 lt!1840613 key!4653))))

(assert (=> d!1487739 (= lt!1840613 e!2920356)))

(declare-fun c!800670 () Bool)

(assert (=> d!1487739 (= c!800670 (and ((_ is Cons!52257) oldBucket!34) (= (_1!30079 (h!58470 oldBucket!34)) key!4653)))))

(assert (=> d!1487739 (noDuplicateKeys!1794 oldBucket!34)))

(assert (=> d!1487739 (= (removePairForKey!1389 oldBucket!34 key!4653) lt!1840613)))

(assert (= (and d!1487739 c!800670) b!4680709))

(assert (= (and d!1487739 (not c!800670)) b!4680710))

(assert (= (and b!4680710 c!800669) b!4680711))

(assert (= (and b!4680710 (not c!800669)) b!4680712))

(declare-fun m!5577827 () Bool)

(assert (=> b!4680711 m!5577827))

(declare-fun m!5577829 () Bool)

(assert (=> d!1487739 m!5577829))

(assert (=> d!1487739 m!5577499))

(assert (=> b!4680560 d!1487739))

(declare-fun bs!1082582 () Bool)

(declare-fun d!1487741 () Bool)

(assert (= bs!1082582 (and d!1487741 b!4680654)))

(declare-fun lambda!204813 () Int)

(assert (=> bs!1082582 (not (= lambda!204813 lambda!204804))))

(assert (=> bs!1082582 (not (= lambda!204813 lambda!204805))))

(declare-fun bs!1082583 () Bool)

(assert (= bs!1082583 (and d!1487741 d!1487687)))

(assert (=> bs!1082583 (not (= lambda!204813 lambda!204806))))

(declare-fun bs!1082584 () Bool)

(assert (= bs!1082584 (and d!1487741 b!4680666)))

(assert (=> bs!1082584 (not (= lambda!204813 lambda!204807))))

(declare-fun bs!1082585 () Bool)

(assert (= bs!1082585 (and d!1487741 b!4680655)))

(assert (=> bs!1082585 (not (= lambda!204813 lambda!204803))))

(declare-fun bs!1082586 () Bool)

(assert (= bs!1082586 (and d!1487741 b!4680665)))

(assert (=> bs!1082586 (not (= lambda!204813 lambda!204809))))

(declare-fun bs!1082587 () Bool)

(assert (= bs!1082587 (and d!1487741 d!1487721)))

(assert (=> bs!1082587 (not (= lambda!204813 lambda!204810))))

(assert (=> bs!1082586 (not (= lambda!204813 lambda!204808))))

(assert (=> d!1487741 true))

(assert (=> d!1487741 true))

(assert (=> d!1487741 (= (allKeysSameHash!1620 oldBucket!34 hash!405 hashF!1323) (forall!11231 oldBucket!34 lambda!204813))))

(declare-fun bs!1082588 () Bool)

(assert (= bs!1082588 d!1487741))

(declare-fun m!5577851 () Bool)

(assert (=> bs!1082588 m!5577851))

(assert (=> b!4680553 d!1487741))

(declare-fun d!1487745 () Bool)

(assert (=> d!1487745 (= (eq!983 lt!1840355 lt!1840359) (= (content!9113 (toList!5477 lt!1840355)) (content!9113 (toList!5477 lt!1840359))))))

(declare-fun bs!1082589 () Bool)

(assert (= bs!1082589 d!1487745))

(assert (=> bs!1082589 m!5577815))

(declare-fun m!5577853 () Bool)

(assert (=> bs!1082589 m!5577853))

(assert (=> b!4680554 d!1487745))

(declare-fun bs!1082590 () Bool)

(declare-fun d!1487747 () Bool)

(assert (= bs!1082590 (and d!1487747 start!472636)))

(declare-fun lambda!204818 () Int)

(assert (=> bs!1082590 (= lambda!204818 lambda!204723)))

(declare-fun lt!1840634 () ListMap!4841)

(assert (=> d!1487747 (invariantList!1378 (toList!5477 lt!1840634))))

(declare-fun e!2920371 () ListMap!4841)

(assert (=> d!1487747 (= lt!1840634 e!2920371)))

(declare-fun c!800679 () Bool)

(assert (=> d!1487747 (= c!800679 ((_ is Cons!52258) lt!1840349))))

(assert (=> d!1487747 (forall!11229 lt!1840349 lambda!204818)))

(assert (=> d!1487747 (= (extractMap!1820 lt!1840349) lt!1840634)))

(declare-fun b!4680739 () Bool)

(assert (=> b!4680739 (= e!2920371 (addToMapMapFromBucket!1226 (_2!30080 (h!58471 lt!1840349)) (extractMap!1820 (t!359538 lt!1840349))))))

(declare-fun b!4680740 () Bool)

(assert (=> b!4680740 (= e!2920371 (ListMap!4842 Nil!52257))))

(assert (= (and d!1487747 c!800679) b!4680739))

(assert (= (and d!1487747 (not c!800679)) b!4680740))

(declare-fun m!5577875 () Bool)

(assert (=> d!1487747 m!5577875))

(declare-fun m!5577877 () Bool)

(assert (=> d!1487747 m!5577877))

(declare-fun m!5577879 () Bool)

(assert (=> b!4680739 m!5577879))

(assert (=> b!4680739 m!5577879))

(declare-fun m!5577881 () Bool)

(assert (=> b!4680739 m!5577881))

(assert (=> b!4680554 d!1487747))

(declare-fun bs!1082601 () Bool)

(declare-fun d!1487751 () Bool)

(assert (= bs!1082601 (and d!1487751 start!472636)))

(declare-fun lambda!204823 () Int)

(assert (=> bs!1082601 (not (= lambda!204823 lambda!204723))))

(declare-fun bs!1082602 () Bool)

(assert (= bs!1082602 (and d!1487751 d!1487747)))

(assert (=> bs!1082602 (not (= lambda!204823 lambda!204818))))

(assert (=> d!1487751 true))

(assert (=> d!1487751 (= (allKeysSameHashInMap!1708 lm!2023 hashF!1323) (forall!11229 (toList!5478 lm!2023) lambda!204823))))

(declare-fun bs!1082603 () Bool)

(assert (= bs!1082603 d!1487751))

(declare-fun m!5577913 () Bool)

(assert (=> bs!1082603 m!5577913))

(assert (=> b!4680543 d!1487751))

(declare-fun d!1487757 () Bool)

(assert (=> d!1487757 (= (tail!8449 oldBucket!34) (t!359537 oldBucket!34))))

(assert (=> b!4680552 d!1487757))

(declare-fun bs!1082604 () Bool)

(declare-fun d!1487761 () Bool)

(assert (= bs!1082604 (and d!1487761 b!4680654)))

(declare-fun lambda!204824 () Int)

(assert (=> bs!1082604 (not (= lambda!204824 lambda!204804))))

(assert (=> bs!1082604 (not (= lambda!204824 lambda!204805))))

(declare-fun bs!1082605 () Bool)

(assert (= bs!1082605 (and d!1487761 d!1487687)))

(assert (=> bs!1082605 (not (= lambda!204824 lambda!204806))))

(declare-fun bs!1082606 () Bool)

(assert (= bs!1082606 (and d!1487761 d!1487741)))

(assert (=> bs!1082606 (= lambda!204824 lambda!204813)))

(declare-fun bs!1082607 () Bool)

(assert (= bs!1082607 (and d!1487761 b!4680666)))

(assert (=> bs!1082607 (not (= lambda!204824 lambda!204807))))

(declare-fun bs!1082608 () Bool)

(assert (= bs!1082608 (and d!1487761 b!4680655)))

(assert (=> bs!1082608 (not (= lambda!204824 lambda!204803))))

(declare-fun bs!1082609 () Bool)

(assert (= bs!1082609 (and d!1487761 b!4680665)))

(assert (=> bs!1082609 (not (= lambda!204824 lambda!204809))))

(declare-fun bs!1082611 () Bool)

(assert (= bs!1082611 (and d!1487761 d!1487721)))

(assert (=> bs!1082611 (not (= lambda!204824 lambda!204810))))

(assert (=> bs!1082609 (not (= lambda!204824 lambda!204808))))

(assert (=> d!1487761 true))

(assert (=> d!1487761 true))

(assert (=> d!1487761 (= (allKeysSameHash!1620 newBucket!218 hash!405 hashF!1323) (forall!11231 newBucket!218 lambda!204824))))

(declare-fun bs!1082616 () Bool)

(assert (= bs!1082616 d!1487761))

(declare-fun m!5577923 () Bool)

(assert (=> bs!1082616 m!5577923))

(assert (=> b!4680542 d!1487761))

(declare-fun d!1487767 () Bool)

(assert (=> d!1487767 (= (head!9879 (toList!5478 lm!2023)) (h!58471 (toList!5478 lm!2023)))))

(assert (=> b!4680556 d!1487767))

(declare-fun bs!1082620 () Bool)

(declare-fun b!4680762 () Bool)

(assert (= bs!1082620 (and b!4680762 b!4680654)))

(declare-fun lambda!204827 () Int)

(assert (=> bs!1082620 (= lambda!204827 lambda!204804)))

(assert (=> bs!1082620 (= (= lt!1840360 lt!1840528) (= lambda!204827 lambda!204805))))

(declare-fun bs!1082623 () Bool)

(assert (= bs!1082623 (and b!4680762 d!1487687)))

(assert (=> bs!1082623 (= (= lt!1840360 lt!1840521) (= lambda!204827 lambda!204806))))

(declare-fun bs!1082625 () Bool)

(assert (= bs!1082625 (and b!4680762 d!1487741)))

(assert (=> bs!1082625 (not (= lambda!204827 lambda!204813))))

(declare-fun bs!1082627 () Bool)

(assert (= bs!1082627 (and b!4680762 b!4680666)))

(assert (=> bs!1082627 (= lambda!204827 lambda!204807)))

(declare-fun bs!1082629 () Bool)

(assert (= bs!1082629 (and b!4680762 d!1487761)))

(assert (=> bs!1082629 (not (= lambda!204827 lambda!204824))))

(declare-fun bs!1082630 () Bool)

(assert (= bs!1082630 (and b!4680762 b!4680655)))

(assert (=> bs!1082630 (= lambda!204827 lambda!204803)))

(declare-fun bs!1082631 () Bool)

(assert (= bs!1082631 (and b!4680762 b!4680665)))

(assert (=> bs!1082631 (= (= lt!1840360 lt!1840553) (= lambda!204827 lambda!204809))))

(declare-fun bs!1082632 () Bool)

(assert (= bs!1082632 (and b!4680762 d!1487721)))

(assert (=> bs!1082632 (= (= lt!1840360 lt!1840546) (= lambda!204827 lambda!204810))))

(assert (=> bs!1082631 (= lambda!204827 lambda!204808)))

(assert (=> b!4680762 true))

(declare-fun bs!1082633 () Bool)

(declare-fun b!4680761 () Bool)

(assert (= bs!1082633 (and b!4680761 b!4680654)))

(declare-fun lambda!204828 () Int)

(assert (=> bs!1082633 (= lambda!204828 lambda!204804)))

(assert (=> bs!1082633 (= (= lt!1840360 lt!1840528) (= lambda!204828 lambda!204805))))

(declare-fun bs!1082634 () Bool)

(assert (= bs!1082634 (and b!4680761 d!1487687)))

(assert (=> bs!1082634 (= (= lt!1840360 lt!1840521) (= lambda!204828 lambda!204806))))

(declare-fun bs!1082635 () Bool)

(assert (= bs!1082635 (and b!4680761 d!1487741)))

(assert (=> bs!1082635 (not (= lambda!204828 lambda!204813))))

(declare-fun bs!1082636 () Bool)

(assert (= bs!1082636 (and b!4680761 b!4680762)))

(assert (=> bs!1082636 (= lambda!204828 lambda!204827)))

(declare-fun bs!1082638 () Bool)

(assert (= bs!1082638 (and b!4680761 b!4680666)))

(assert (=> bs!1082638 (= lambda!204828 lambda!204807)))

(declare-fun bs!1082639 () Bool)

(assert (= bs!1082639 (and b!4680761 d!1487761)))

(assert (=> bs!1082639 (not (= lambda!204828 lambda!204824))))

(declare-fun bs!1082641 () Bool)

(assert (= bs!1082641 (and b!4680761 b!4680655)))

(assert (=> bs!1082641 (= lambda!204828 lambda!204803)))

(declare-fun bs!1082642 () Bool)

(assert (= bs!1082642 (and b!4680761 b!4680665)))

(assert (=> bs!1082642 (= (= lt!1840360 lt!1840553) (= lambda!204828 lambda!204809))))

(declare-fun bs!1082644 () Bool)

(assert (= bs!1082644 (and b!4680761 d!1487721)))

(assert (=> bs!1082644 (= (= lt!1840360 lt!1840546) (= lambda!204828 lambda!204810))))

(assert (=> bs!1082642 (= lambda!204828 lambda!204808)))

(assert (=> b!4680761 true))

(declare-fun lambda!204829 () Int)

(declare-fun lt!1840659 () ListMap!4841)

(assert (=> bs!1082633 (= (= lt!1840659 lt!1840360) (= lambda!204829 lambda!204804))))

(assert (=> bs!1082633 (= (= lt!1840659 lt!1840528) (= lambda!204829 lambda!204805))))

(assert (=> bs!1082634 (= (= lt!1840659 lt!1840521) (= lambda!204829 lambda!204806))))

(assert (=> bs!1082635 (not (= lambda!204829 lambda!204813))))

(assert (=> bs!1082636 (= (= lt!1840659 lt!1840360) (= lambda!204829 lambda!204827))))

(assert (=> bs!1082638 (= (= lt!1840659 lt!1840360) (= lambda!204829 lambda!204807))))

(assert (=> bs!1082639 (not (= lambda!204829 lambda!204824))))

(assert (=> bs!1082641 (= (= lt!1840659 lt!1840360) (= lambda!204829 lambda!204803))))

(assert (=> b!4680761 (= (= lt!1840659 lt!1840360) (= lambda!204829 lambda!204828))))

(assert (=> bs!1082642 (= (= lt!1840659 lt!1840553) (= lambda!204829 lambda!204809))))

(assert (=> bs!1082644 (= (= lt!1840659 lt!1840546) (= lambda!204829 lambda!204810))))

(assert (=> bs!1082642 (= (= lt!1840659 lt!1840360) (= lambda!204829 lambda!204808))))

(assert (=> b!4680761 true))

(declare-fun bs!1082645 () Bool)

(declare-fun d!1487769 () Bool)

(assert (= bs!1082645 (and d!1487769 b!4680654)))

(declare-fun lambda!204830 () Int)

(declare-fun lt!1840652 () ListMap!4841)

(assert (=> bs!1082645 (= (= lt!1840652 lt!1840360) (= lambda!204830 lambda!204804))))

(declare-fun bs!1082646 () Bool)

(assert (= bs!1082646 (and d!1487769 b!4680761)))

(assert (=> bs!1082646 (= (= lt!1840652 lt!1840659) (= lambda!204830 lambda!204829))))

(assert (=> bs!1082645 (= (= lt!1840652 lt!1840528) (= lambda!204830 lambda!204805))))

(declare-fun bs!1082647 () Bool)

(assert (= bs!1082647 (and d!1487769 d!1487687)))

(assert (=> bs!1082647 (= (= lt!1840652 lt!1840521) (= lambda!204830 lambda!204806))))

(declare-fun bs!1082648 () Bool)

(assert (= bs!1082648 (and d!1487769 d!1487741)))

(assert (=> bs!1082648 (not (= lambda!204830 lambda!204813))))

(declare-fun bs!1082649 () Bool)

(assert (= bs!1082649 (and d!1487769 b!4680762)))

(assert (=> bs!1082649 (= (= lt!1840652 lt!1840360) (= lambda!204830 lambda!204827))))

(declare-fun bs!1082650 () Bool)

(assert (= bs!1082650 (and d!1487769 b!4680666)))

(assert (=> bs!1082650 (= (= lt!1840652 lt!1840360) (= lambda!204830 lambda!204807))))

(declare-fun bs!1082651 () Bool)

(assert (= bs!1082651 (and d!1487769 d!1487761)))

(assert (=> bs!1082651 (not (= lambda!204830 lambda!204824))))

(declare-fun bs!1082652 () Bool)

(assert (= bs!1082652 (and d!1487769 b!4680655)))

(assert (=> bs!1082652 (= (= lt!1840652 lt!1840360) (= lambda!204830 lambda!204803))))

(assert (=> bs!1082646 (= (= lt!1840652 lt!1840360) (= lambda!204830 lambda!204828))))

(declare-fun bs!1082653 () Bool)

(assert (= bs!1082653 (and d!1487769 b!4680665)))

(assert (=> bs!1082653 (= (= lt!1840652 lt!1840553) (= lambda!204830 lambda!204809))))

(declare-fun bs!1082654 () Bool)

(assert (= bs!1082654 (and d!1487769 d!1487721)))

(assert (=> bs!1082654 (= (= lt!1840652 lt!1840546) (= lambda!204830 lambda!204810))))

(assert (=> bs!1082653 (= (= lt!1840652 lt!1840360) (= lambda!204830 lambda!204808))))

(assert (=> d!1487769 true))

(declare-fun b!4680758 () Bool)

(declare-fun e!2920382 () Bool)

(assert (=> b!4680758 (= e!2920382 (invariantList!1378 (toList!5477 lt!1840652)))))

(declare-fun call!327160 () Bool)

(declare-fun c!800685 () Bool)

(declare-fun bm!327155 () Bool)

(assert (=> bm!327155 (= call!327160 (forall!11231 (ite c!800685 (toList!5477 lt!1840360) newBucket!218) (ite c!800685 lambda!204827 lambda!204829)))))

(declare-fun call!327161 () Bool)

(declare-fun bm!327156 () Bool)

(assert (=> bm!327156 (= call!327161 (forall!11231 (toList!5477 lt!1840360) (ite c!800685 lambda!204827 lambda!204829)))))

(declare-fun b!4680759 () Bool)

(declare-fun e!2920384 () Bool)

(assert (=> b!4680759 (= e!2920384 (forall!11231 (toList!5477 lt!1840360) lambda!204829))))

(declare-fun b!4680760 () Bool)

(declare-fun res!1972505 () Bool)

(assert (=> b!4680760 (=> (not res!1972505) (not e!2920382))))

(assert (=> b!4680760 (= res!1972505 (forall!11231 (toList!5477 lt!1840360) lambda!204830))))

(assert (=> d!1487769 e!2920382))

(declare-fun res!1972504 () Bool)

(assert (=> d!1487769 (=> (not res!1972504) (not e!2920382))))

(assert (=> d!1487769 (= res!1972504 (forall!11231 newBucket!218 lambda!204830))))

(declare-fun e!2920383 () ListMap!4841)

(assert (=> d!1487769 (= lt!1840652 e!2920383)))

(assert (=> d!1487769 (= c!800685 ((_ is Nil!52257) newBucket!218))))

(assert (=> d!1487769 (noDuplicateKeys!1794 newBucket!218)))

(assert (=> d!1487769 (= (addToMapMapFromBucket!1226 newBucket!218 lt!1840360) lt!1840652)))

(assert (=> b!4680761 (= e!2920383 lt!1840659)))

(declare-fun lt!1840663 () ListMap!4841)

(assert (=> b!4680761 (= lt!1840663 (+!2096 lt!1840360 (h!58470 newBucket!218)))))

(assert (=> b!4680761 (= lt!1840659 (addToMapMapFromBucket!1226 (t!359537 newBucket!218) (+!2096 lt!1840360 (h!58470 newBucket!218))))))

(declare-fun lt!1840665 () Unit!122619)

(declare-fun call!327162 () Unit!122619)

(assert (=> b!4680761 (= lt!1840665 call!327162)))

(assert (=> b!4680761 (forall!11231 (toList!5477 lt!1840360) lambda!204828)))

(declare-fun lt!1840655 () Unit!122619)

(assert (=> b!4680761 (= lt!1840655 lt!1840665)))

(assert (=> b!4680761 (forall!11231 (toList!5477 lt!1840663) lambda!204829)))

(declare-fun lt!1840646 () Unit!122619)

(declare-fun Unit!122682 () Unit!122619)

(assert (=> b!4680761 (= lt!1840646 Unit!122682)))

(assert (=> b!4680761 (forall!11231 (t!359537 newBucket!218) lambda!204829)))

(declare-fun lt!1840662 () Unit!122619)

(declare-fun Unit!122683 () Unit!122619)

(assert (=> b!4680761 (= lt!1840662 Unit!122683)))

(declare-fun lt!1840661 () Unit!122619)

(declare-fun Unit!122684 () Unit!122619)

(assert (=> b!4680761 (= lt!1840661 Unit!122684)))

(declare-fun lt!1840656 () Unit!122619)

(assert (=> b!4680761 (= lt!1840656 (forallContained!3350 (toList!5477 lt!1840663) lambda!204829 (h!58470 newBucket!218)))))

(assert (=> b!4680761 (contains!15390 lt!1840663 (_1!30079 (h!58470 newBucket!218)))))

(declare-fun lt!1840664 () Unit!122619)

(declare-fun Unit!122685 () Unit!122619)

(assert (=> b!4680761 (= lt!1840664 Unit!122685)))

(assert (=> b!4680761 (contains!15390 lt!1840659 (_1!30079 (h!58470 newBucket!218)))))

(declare-fun lt!1840650 () Unit!122619)

(declare-fun Unit!122686 () Unit!122619)

(assert (=> b!4680761 (= lt!1840650 Unit!122686)))

(assert (=> b!4680761 (forall!11231 newBucket!218 lambda!204829)))

(declare-fun lt!1840658 () Unit!122619)

(declare-fun Unit!122687 () Unit!122619)

(assert (=> b!4680761 (= lt!1840658 Unit!122687)))

(assert (=> b!4680761 (forall!11231 (toList!5477 lt!1840663) lambda!204829)))

(declare-fun lt!1840654 () Unit!122619)

(declare-fun Unit!122688 () Unit!122619)

(assert (=> b!4680761 (= lt!1840654 Unit!122688)))

(declare-fun lt!1840649 () Unit!122619)

(declare-fun Unit!122689 () Unit!122619)

(assert (=> b!4680761 (= lt!1840649 Unit!122689)))

(declare-fun lt!1840666 () Unit!122619)

(assert (=> b!4680761 (= lt!1840666 (addForallContainsKeyThenBeforeAdding!665 lt!1840360 lt!1840659 (_1!30079 (h!58470 newBucket!218)) (_2!30079 (h!58470 newBucket!218))))))

(assert (=> b!4680761 call!327161))

(declare-fun lt!1840660 () Unit!122619)

(assert (=> b!4680761 (= lt!1840660 lt!1840666)))

(assert (=> b!4680761 (forall!11231 (toList!5477 lt!1840360) lambda!204829)))

(declare-fun lt!1840647 () Unit!122619)

(declare-fun Unit!122690 () Unit!122619)

(assert (=> b!4680761 (= lt!1840647 Unit!122690)))

(declare-fun res!1972506 () Bool)

(assert (=> b!4680761 (= res!1972506 call!327160)))

(assert (=> b!4680761 (=> (not res!1972506) (not e!2920384))))

(assert (=> b!4680761 e!2920384))

(declare-fun lt!1840653 () Unit!122619)

(declare-fun Unit!122691 () Unit!122619)

(assert (=> b!4680761 (= lt!1840653 Unit!122691)))

(declare-fun bm!327157 () Bool)

(assert (=> bm!327157 (= call!327162 (lemmaContainsAllItsOwnKeys!666 lt!1840360))))

(assert (=> b!4680762 (= e!2920383 lt!1840360)))

(declare-fun lt!1840657 () Unit!122619)

(assert (=> b!4680762 (= lt!1840657 call!327162)))

(assert (=> b!4680762 call!327161))

(declare-fun lt!1840648 () Unit!122619)

(assert (=> b!4680762 (= lt!1840648 lt!1840657)))

(assert (=> b!4680762 call!327160))

(declare-fun lt!1840651 () Unit!122619)

(declare-fun Unit!122692 () Unit!122619)

(assert (=> b!4680762 (= lt!1840651 Unit!122692)))

(assert (= (and d!1487769 c!800685) b!4680762))

(assert (= (and d!1487769 (not c!800685)) b!4680761))

(assert (= (and b!4680761 res!1972506) b!4680759))

(assert (= (or b!4680762 b!4680761) bm!327157))

(assert (= (or b!4680762 b!4680761) bm!327156))

(assert (= (or b!4680762 b!4680761) bm!327155))

(assert (= (and d!1487769 res!1972504) b!4680760))

(assert (= (and b!4680760 res!1972505) b!4680758))

(assert (=> bm!327157 m!5577695))

(declare-fun m!5577961 () Bool)

(assert (=> d!1487769 m!5577961))

(assert (=> d!1487769 m!5577501))

(declare-fun m!5577963 () Bool)

(assert (=> bm!327155 m!5577963))

(declare-fun m!5577965 () Bool)

(assert (=> b!4680758 m!5577965))

(declare-fun m!5577967 () Bool)

(assert (=> b!4680761 m!5577967))

(declare-fun m!5577969 () Bool)

(assert (=> b!4680761 m!5577969))

(declare-fun m!5577971 () Bool)

(assert (=> b!4680761 m!5577971))

(declare-fun m!5577973 () Bool)

(assert (=> b!4680761 m!5577973))

(declare-fun m!5577975 () Bool)

(assert (=> b!4680761 m!5577975))

(declare-fun m!5577977 () Bool)

(assert (=> b!4680761 m!5577977))

(declare-fun m!5577979 () Bool)

(assert (=> b!4680761 m!5577979))

(assert (=> b!4680761 m!5577967))

(declare-fun m!5577981 () Bool)

(assert (=> b!4680761 m!5577981))

(assert (=> b!4680761 m!5577979))

(declare-fun m!5577983 () Bool)

(assert (=> b!4680761 m!5577983))

(declare-fun m!5577985 () Bool)

(assert (=> b!4680761 m!5577985))

(declare-fun m!5577987 () Bool)

(assert (=> b!4680761 m!5577987))

(declare-fun m!5577989 () Bool)

(assert (=> bm!327156 m!5577989))

(declare-fun m!5577991 () Bool)

(assert (=> b!4680760 m!5577991))

(assert (=> b!4680759 m!5577975))

(assert (=> b!4680545 d!1487769))

(declare-fun bs!1082655 () Bool)

(declare-fun b!4680770 () Bool)

(assert (= bs!1082655 (and b!4680770 b!4680654)))

(declare-fun lambda!204831 () Int)

(assert (=> bs!1082655 (= lambda!204831 lambda!204804)))

(declare-fun bs!1082656 () Bool)

(assert (= bs!1082656 (and b!4680770 b!4680761)))

(assert (=> bs!1082656 (= (= lt!1840360 lt!1840659) (= lambda!204831 lambda!204829))))

(assert (=> bs!1082655 (= (= lt!1840360 lt!1840528) (= lambda!204831 lambda!204805))))

(declare-fun bs!1082657 () Bool)

(assert (= bs!1082657 (and b!4680770 d!1487687)))

(assert (=> bs!1082657 (= (= lt!1840360 lt!1840521) (= lambda!204831 lambda!204806))))

(declare-fun bs!1082658 () Bool)

(assert (= bs!1082658 (and b!4680770 b!4680762)))

(assert (=> bs!1082658 (= lambda!204831 lambda!204827)))

(declare-fun bs!1082659 () Bool)

(assert (= bs!1082659 (and b!4680770 b!4680666)))

(assert (=> bs!1082659 (= lambda!204831 lambda!204807)))

(declare-fun bs!1082660 () Bool)

(assert (= bs!1082660 (and b!4680770 d!1487761)))

(assert (=> bs!1082660 (not (= lambda!204831 lambda!204824))))

(declare-fun bs!1082661 () Bool)

(assert (= bs!1082661 (and b!4680770 b!4680655)))

(assert (=> bs!1082661 (= lambda!204831 lambda!204803)))

(assert (=> bs!1082656 (= lambda!204831 lambda!204828)))

(declare-fun bs!1082662 () Bool)

(assert (= bs!1082662 (and b!4680770 b!4680665)))

(assert (=> bs!1082662 (= (= lt!1840360 lt!1840553) (= lambda!204831 lambda!204809))))

(declare-fun bs!1082663 () Bool)

(assert (= bs!1082663 (and b!4680770 d!1487769)))

(assert (=> bs!1082663 (= (= lt!1840360 lt!1840652) (= lambda!204831 lambda!204830))))

(declare-fun bs!1082664 () Bool)

(assert (= bs!1082664 (and b!4680770 d!1487741)))

(assert (=> bs!1082664 (not (= lambda!204831 lambda!204813))))

(declare-fun bs!1082665 () Bool)

(assert (= bs!1082665 (and b!4680770 d!1487721)))

(assert (=> bs!1082665 (= (= lt!1840360 lt!1840546) (= lambda!204831 lambda!204810))))

(assert (=> bs!1082662 (= lambda!204831 lambda!204808)))

(assert (=> b!4680770 true))

(declare-fun bs!1082667 () Bool)

(declare-fun b!4680769 () Bool)

(assert (= bs!1082667 (and b!4680769 b!4680654)))

(declare-fun lambda!204832 () Int)

(assert (=> bs!1082667 (= lambda!204832 lambda!204804)))

(declare-fun bs!1082668 () Bool)

(assert (= bs!1082668 (and b!4680769 b!4680761)))

(assert (=> bs!1082668 (= (= lt!1840360 lt!1840659) (= lambda!204832 lambda!204829))))

(assert (=> bs!1082667 (= (= lt!1840360 lt!1840528) (= lambda!204832 lambda!204805))))

(declare-fun bs!1082669 () Bool)

(assert (= bs!1082669 (and b!4680769 d!1487687)))

(assert (=> bs!1082669 (= (= lt!1840360 lt!1840521) (= lambda!204832 lambda!204806))))

(declare-fun bs!1082671 () Bool)

(assert (= bs!1082671 (and b!4680769 b!4680762)))

(assert (=> bs!1082671 (= lambda!204832 lambda!204827)))

(declare-fun bs!1082672 () Bool)

(assert (= bs!1082672 (and b!4680769 b!4680770)))

(assert (=> bs!1082672 (= lambda!204832 lambda!204831)))

(declare-fun bs!1082673 () Bool)

(assert (= bs!1082673 (and b!4680769 b!4680666)))

(assert (=> bs!1082673 (= lambda!204832 lambda!204807)))

(declare-fun bs!1082674 () Bool)

(assert (= bs!1082674 (and b!4680769 d!1487761)))

(assert (=> bs!1082674 (not (= lambda!204832 lambda!204824))))

(declare-fun bs!1082675 () Bool)

(assert (= bs!1082675 (and b!4680769 b!4680655)))

(assert (=> bs!1082675 (= lambda!204832 lambda!204803)))

(assert (=> bs!1082668 (= lambda!204832 lambda!204828)))

(declare-fun bs!1082676 () Bool)

(assert (= bs!1082676 (and b!4680769 b!4680665)))

(assert (=> bs!1082676 (= (= lt!1840360 lt!1840553) (= lambda!204832 lambda!204809))))

(declare-fun bs!1082677 () Bool)

(assert (= bs!1082677 (and b!4680769 d!1487769)))

(assert (=> bs!1082677 (= (= lt!1840360 lt!1840652) (= lambda!204832 lambda!204830))))

(declare-fun bs!1082678 () Bool)

(assert (= bs!1082678 (and b!4680769 d!1487741)))

(assert (=> bs!1082678 (not (= lambda!204832 lambda!204813))))

(declare-fun bs!1082679 () Bool)

(assert (= bs!1082679 (and b!4680769 d!1487721)))

(assert (=> bs!1082679 (= (= lt!1840360 lt!1840546) (= lambda!204832 lambda!204810))))

(assert (=> bs!1082676 (= lambda!204832 lambda!204808)))

(assert (=> b!4680769 true))

(declare-fun lt!1840682 () ListMap!4841)

(declare-fun lambda!204833 () Int)

(assert (=> bs!1082668 (= (= lt!1840682 lt!1840659) (= lambda!204833 lambda!204829))))

(assert (=> bs!1082667 (= (= lt!1840682 lt!1840528) (= lambda!204833 lambda!204805))))

(assert (=> bs!1082669 (= (= lt!1840682 lt!1840521) (= lambda!204833 lambda!204806))))

(assert (=> bs!1082671 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204827))))

(assert (=> bs!1082672 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204831))))

(assert (=> bs!1082673 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204807))))

(assert (=> bs!1082674 (not (= lambda!204833 lambda!204824))))

(assert (=> bs!1082675 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204803))))

(assert (=> bs!1082668 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204828))))

(assert (=> bs!1082676 (= (= lt!1840682 lt!1840553) (= lambda!204833 lambda!204809))))

(assert (=> bs!1082667 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204804))))

(assert (=> b!4680769 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204832))))

(assert (=> bs!1082677 (= (= lt!1840682 lt!1840652) (= lambda!204833 lambda!204830))))

(assert (=> bs!1082678 (not (= lambda!204833 lambda!204813))))

(assert (=> bs!1082679 (= (= lt!1840682 lt!1840546) (= lambda!204833 lambda!204810))))

(assert (=> bs!1082676 (= (= lt!1840682 lt!1840360) (= lambda!204833 lambda!204808))))

(assert (=> b!4680769 true))

(declare-fun bs!1082681 () Bool)

(declare-fun d!1487783 () Bool)

(assert (= bs!1082681 (and d!1487783 b!4680761)))

(declare-fun lambda!204834 () Int)

(declare-fun lt!1840675 () ListMap!4841)

(assert (=> bs!1082681 (= (= lt!1840675 lt!1840659) (= lambda!204834 lambda!204829))))

(declare-fun bs!1082682 () Bool)

(assert (= bs!1082682 (and d!1487783 b!4680654)))

(assert (=> bs!1082682 (= (= lt!1840675 lt!1840528) (= lambda!204834 lambda!204805))))

(declare-fun bs!1082683 () Bool)

(assert (= bs!1082683 (and d!1487783 b!4680769)))

(assert (=> bs!1082683 (= (= lt!1840675 lt!1840682) (= lambda!204834 lambda!204833))))

(declare-fun bs!1082684 () Bool)

(assert (= bs!1082684 (and d!1487783 d!1487687)))

(assert (=> bs!1082684 (= (= lt!1840675 lt!1840521) (= lambda!204834 lambda!204806))))

(declare-fun bs!1082685 () Bool)

(assert (= bs!1082685 (and d!1487783 b!4680762)))

(assert (=> bs!1082685 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204827))))

(declare-fun bs!1082686 () Bool)

(assert (= bs!1082686 (and d!1487783 b!4680770)))

(assert (=> bs!1082686 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204831))))

(declare-fun bs!1082687 () Bool)

(assert (= bs!1082687 (and d!1487783 b!4680666)))

(assert (=> bs!1082687 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204807))))

(declare-fun bs!1082688 () Bool)

(assert (= bs!1082688 (and d!1487783 d!1487761)))

(assert (=> bs!1082688 (not (= lambda!204834 lambda!204824))))

(declare-fun bs!1082689 () Bool)

(assert (= bs!1082689 (and d!1487783 b!4680655)))

(assert (=> bs!1082689 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204803))))

(assert (=> bs!1082681 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204828))))

(declare-fun bs!1082690 () Bool)

(assert (= bs!1082690 (and d!1487783 b!4680665)))

(assert (=> bs!1082690 (= (= lt!1840675 lt!1840553) (= lambda!204834 lambda!204809))))

(assert (=> bs!1082682 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204804))))

(assert (=> bs!1082683 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204832))))

(declare-fun bs!1082691 () Bool)

(assert (= bs!1082691 (and d!1487783 d!1487769)))

(assert (=> bs!1082691 (= (= lt!1840675 lt!1840652) (= lambda!204834 lambda!204830))))

(declare-fun bs!1082692 () Bool)

(assert (= bs!1082692 (and d!1487783 d!1487741)))

(assert (=> bs!1082692 (not (= lambda!204834 lambda!204813))))

(declare-fun bs!1082693 () Bool)

(assert (= bs!1082693 (and d!1487783 d!1487721)))

(assert (=> bs!1082693 (= (= lt!1840675 lt!1840546) (= lambda!204834 lambda!204810))))

(assert (=> bs!1082690 (= (= lt!1840675 lt!1840360) (= lambda!204834 lambda!204808))))

(assert (=> d!1487783 true))

(declare-fun b!4680766 () Bool)

(declare-fun e!2920387 () Bool)

(assert (=> b!4680766 (= e!2920387 (invariantList!1378 (toList!5477 lt!1840675)))))

(declare-fun bm!327158 () Bool)

(declare-fun c!800687 () Bool)

(declare-fun call!327163 () Bool)

(assert (=> bm!327158 (= call!327163 (forall!11231 (ite c!800687 (toList!5477 lt!1840360) lt!1840351) (ite c!800687 lambda!204831 lambda!204833)))))

(declare-fun call!327164 () Bool)

(declare-fun bm!327159 () Bool)

(assert (=> bm!327159 (= call!327164 (forall!11231 (toList!5477 lt!1840360) (ite c!800687 lambda!204831 lambda!204833)))))

(declare-fun b!4680767 () Bool)

(declare-fun e!2920389 () Bool)

(assert (=> b!4680767 (= e!2920389 (forall!11231 (toList!5477 lt!1840360) lambda!204833))))

(declare-fun b!4680768 () Bool)

(declare-fun res!1972509 () Bool)

(assert (=> b!4680768 (=> (not res!1972509) (not e!2920387))))

(assert (=> b!4680768 (= res!1972509 (forall!11231 (toList!5477 lt!1840360) lambda!204834))))

(assert (=> d!1487783 e!2920387))

(declare-fun res!1972508 () Bool)

(assert (=> d!1487783 (=> (not res!1972508) (not e!2920387))))

(assert (=> d!1487783 (= res!1972508 (forall!11231 lt!1840351 lambda!204834))))

(declare-fun e!2920388 () ListMap!4841)

(assert (=> d!1487783 (= lt!1840675 e!2920388)))

(assert (=> d!1487783 (= c!800687 ((_ is Nil!52257) lt!1840351))))

(assert (=> d!1487783 (noDuplicateKeys!1794 lt!1840351)))

(assert (=> d!1487783 (= (addToMapMapFromBucket!1226 lt!1840351 lt!1840360) lt!1840675)))

(assert (=> b!4680769 (= e!2920388 lt!1840682)))

(declare-fun lt!1840686 () ListMap!4841)

(assert (=> b!4680769 (= lt!1840686 (+!2096 lt!1840360 (h!58470 lt!1840351)))))

(assert (=> b!4680769 (= lt!1840682 (addToMapMapFromBucket!1226 (t!359537 lt!1840351) (+!2096 lt!1840360 (h!58470 lt!1840351))))))

(declare-fun lt!1840688 () Unit!122619)

(declare-fun call!327165 () Unit!122619)

(assert (=> b!4680769 (= lt!1840688 call!327165)))

(assert (=> b!4680769 (forall!11231 (toList!5477 lt!1840360) lambda!204832)))

(declare-fun lt!1840678 () Unit!122619)

(assert (=> b!4680769 (= lt!1840678 lt!1840688)))

(assert (=> b!4680769 (forall!11231 (toList!5477 lt!1840686) lambda!204833)))

(declare-fun lt!1840669 () Unit!122619)

(declare-fun Unit!122693 () Unit!122619)

(assert (=> b!4680769 (= lt!1840669 Unit!122693)))

(assert (=> b!4680769 (forall!11231 (t!359537 lt!1840351) lambda!204833)))

(declare-fun lt!1840685 () Unit!122619)

(declare-fun Unit!122694 () Unit!122619)

(assert (=> b!4680769 (= lt!1840685 Unit!122694)))

(declare-fun lt!1840684 () Unit!122619)

(declare-fun Unit!122695 () Unit!122619)

(assert (=> b!4680769 (= lt!1840684 Unit!122695)))

(declare-fun lt!1840679 () Unit!122619)

(assert (=> b!4680769 (= lt!1840679 (forallContained!3350 (toList!5477 lt!1840686) lambda!204833 (h!58470 lt!1840351)))))

(assert (=> b!4680769 (contains!15390 lt!1840686 (_1!30079 (h!58470 lt!1840351)))))

(declare-fun lt!1840687 () Unit!122619)

(declare-fun Unit!122696 () Unit!122619)

(assert (=> b!4680769 (= lt!1840687 Unit!122696)))

(assert (=> b!4680769 (contains!15390 lt!1840682 (_1!30079 (h!58470 lt!1840351)))))

(declare-fun lt!1840673 () Unit!122619)

(declare-fun Unit!122697 () Unit!122619)

(assert (=> b!4680769 (= lt!1840673 Unit!122697)))

(assert (=> b!4680769 (forall!11231 lt!1840351 lambda!204833)))

(declare-fun lt!1840681 () Unit!122619)

(declare-fun Unit!122698 () Unit!122619)

(assert (=> b!4680769 (= lt!1840681 Unit!122698)))

(assert (=> b!4680769 (forall!11231 (toList!5477 lt!1840686) lambda!204833)))

(declare-fun lt!1840677 () Unit!122619)

(declare-fun Unit!122699 () Unit!122619)

(assert (=> b!4680769 (= lt!1840677 Unit!122699)))

(declare-fun lt!1840672 () Unit!122619)

(declare-fun Unit!122700 () Unit!122619)

(assert (=> b!4680769 (= lt!1840672 Unit!122700)))

(declare-fun lt!1840689 () Unit!122619)

(assert (=> b!4680769 (= lt!1840689 (addForallContainsKeyThenBeforeAdding!665 lt!1840360 lt!1840682 (_1!30079 (h!58470 lt!1840351)) (_2!30079 (h!58470 lt!1840351))))))

(assert (=> b!4680769 call!327164))

(declare-fun lt!1840683 () Unit!122619)

(assert (=> b!4680769 (= lt!1840683 lt!1840689)))

(assert (=> b!4680769 (forall!11231 (toList!5477 lt!1840360) lambda!204833)))

(declare-fun lt!1840670 () Unit!122619)

(declare-fun Unit!122701 () Unit!122619)

(assert (=> b!4680769 (= lt!1840670 Unit!122701)))

(declare-fun res!1972510 () Bool)

(assert (=> b!4680769 (= res!1972510 call!327163)))

(assert (=> b!4680769 (=> (not res!1972510) (not e!2920389))))

(assert (=> b!4680769 e!2920389))

(declare-fun lt!1840676 () Unit!122619)

(declare-fun Unit!122702 () Unit!122619)

(assert (=> b!4680769 (= lt!1840676 Unit!122702)))

(declare-fun bm!327160 () Bool)

(assert (=> bm!327160 (= call!327165 (lemmaContainsAllItsOwnKeys!666 lt!1840360))))

(assert (=> b!4680770 (= e!2920388 lt!1840360)))

(declare-fun lt!1840680 () Unit!122619)

(assert (=> b!4680770 (= lt!1840680 call!327165)))

(assert (=> b!4680770 call!327164))

(declare-fun lt!1840671 () Unit!122619)

(assert (=> b!4680770 (= lt!1840671 lt!1840680)))

(assert (=> b!4680770 call!327163))

(declare-fun lt!1840674 () Unit!122619)

(declare-fun Unit!122703 () Unit!122619)

(assert (=> b!4680770 (= lt!1840674 Unit!122703)))

(assert (= (and d!1487783 c!800687) b!4680770))

(assert (= (and d!1487783 (not c!800687)) b!4680769))

(assert (= (and b!4680769 res!1972510) b!4680767))

(assert (= (or b!4680770 b!4680769) bm!327160))

(assert (= (or b!4680770 b!4680769) bm!327159))

(assert (= (or b!4680770 b!4680769) bm!327158))

(assert (= (and d!1487783 res!1972508) b!4680768))

(assert (= (and b!4680768 res!1972509) b!4680766))

(assert (=> bm!327160 m!5577695))

(declare-fun m!5578027 () Bool)

(assert (=> d!1487783 m!5578027))

(assert (=> d!1487783 m!5577807))

(declare-fun m!5578029 () Bool)

(assert (=> bm!327158 m!5578029))

(declare-fun m!5578031 () Bool)

(assert (=> b!4680766 m!5578031))

(declare-fun m!5578033 () Bool)

(assert (=> b!4680769 m!5578033))

(declare-fun m!5578035 () Bool)

(assert (=> b!4680769 m!5578035))

(declare-fun m!5578037 () Bool)

(assert (=> b!4680769 m!5578037))

(declare-fun m!5578039 () Bool)

(assert (=> b!4680769 m!5578039))

(declare-fun m!5578041 () Bool)

(assert (=> b!4680769 m!5578041))

(declare-fun m!5578043 () Bool)

(assert (=> b!4680769 m!5578043))

(declare-fun m!5578045 () Bool)

(assert (=> b!4680769 m!5578045))

(assert (=> b!4680769 m!5578033))

(declare-fun m!5578047 () Bool)

(assert (=> b!4680769 m!5578047))

(assert (=> b!4680769 m!5578045))

(declare-fun m!5578049 () Bool)

(assert (=> b!4680769 m!5578049))

(declare-fun m!5578051 () Bool)

(assert (=> b!4680769 m!5578051))

(declare-fun m!5578053 () Bool)

(assert (=> b!4680769 m!5578053))

(declare-fun m!5578055 () Bool)

(assert (=> bm!327159 m!5578055))

(declare-fun m!5578057 () Bool)

(assert (=> b!4680768 m!5578057))

(assert (=> b!4680767 m!5578041))

(assert (=> b!4680545 d!1487783))

(declare-fun bs!1082694 () Bool)

(declare-fun d!1487797 () Bool)

(assert (= bs!1082694 (and d!1487797 start!472636)))

(declare-fun lambda!204835 () Int)

(assert (=> bs!1082694 (= lambda!204835 lambda!204723)))

(declare-fun bs!1082695 () Bool)

(assert (= bs!1082695 (and d!1487797 d!1487747)))

(assert (=> bs!1082695 (= lambda!204835 lambda!204818)))

(declare-fun bs!1082696 () Bool)

(assert (= bs!1082696 (and d!1487797 d!1487751)))

(assert (=> bs!1082696 (not (= lambda!204835 lambda!204823))))

(declare-fun lt!1840701 () ListMap!4841)

(assert (=> d!1487797 (invariantList!1378 (toList!5477 lt!1840701))))

(declare-fun e!2920392 () ListMap!4841)

(assert (=> d!1487797 (= lt!1840701 e!2920392)))

(declare-fun c!800688 () Bool)

(assert (=> d!1487797 (= c!800688 ((_ is Cons!52258) (Cons!52258 (tuple2!53573 hash!405 newBucket!218) (t!359538 (toList!5478 lm!2023)))))))

(assert (=> d!1487797 (forall!11229 (Cons!52258 (tuple2!53573 hash!405 newBucket!218) (t!359538 (toList!5478 lm!2023))) lambda!204835)))

(assert (=> d!1487797 (= (extractMap!1820 (Cons!52258 (tuple2!53573 hash!405 newBucket!218) (t!359538 (toList!5478 lm!2023)))) lt!1840701)))

(declare-fun b!4680775 () Bool)

(assert (=> b!4680775 (= e!2920392 (addToMapMapFromBucket!1226 (_2!30080 (h!58471 (Cons!52258 (tuple2!53573 hash!405 newBucket!218) (t!359538 (toList!5478 lm!2023))))) (extractMap!1820 (t!359538 (Cons!52258 (tuple2!53573 hash!405 newBucket!218) (t!359538 (toList!5478 lm!2023)))))))))

(declare-fun b!4680776 () Bool)

(assert (=> b!4680776 (= e!2920392 (ListMap!4842 Nil!52257))))

(assert (= (and d!1487797 c!800688) b!4680775))

(assert (= (and d!1487797 (not c!800688)) b!4680776))

(declare-fun m!5578059 () Bool)

(assert (=> d!1487797 m!5578059))

(declare-fun m!5578061 () Bool)

(assert (=> d!1487797 m!5578061))

(declare-fun m!5578063 () Bool)

(assert (=> b!4680775 m!5578063))

(assert (=> b!4680775 m!5578063))

(declare-fun m!5578065 () Bool)

(assert (=> b!4680775 m!5578065))

(assert (=> b!4680546 d!1487797))

(declare-fun bs!1082697 () Bool)

(declare-fun d!1487799 () Bool)

(assert (= bs!1082697 (and d!1487799 start!472636)))

(declare-fun lambda!204836 () Int)

(assert (=> bs!1082697 (= lambda!204836 lambda!204723)))

(declare-fun bs!1082698 () Bool)

(assert (= bs!1082698 (and d!1487799 d!1487747)))

(assert (=> bs!1082698 (= lambda!204836 lambda!204818)))

(declare-fun bs!1082699 () Bool)

(assert (= bs!1082699 (and d!1487799 d!1487751)))

(assert (=> bs!1082699 (not (= lambda!204836 lambda!204823))))

(declare-fun bs!1082700 () Bool)

(assert (= bs!1082700 (and d!1487799 d!1487797)))

(assert (=> bs!1082700 (= lambda!204836 lambda!204835)))

(declare-fun lt!1840702 () ListMap!4841)

(assert (=> d!1487799 (invariantList!1378 (toList!5477 lt!1840702))))

(declare-fun e!2920393 () ListMap!4841)

(assert (=> d!1487799 (= lt!1840702 e!2920393)))

(declare-fun c!800689 () Bool)

(assert (=> d!1487799 (= c!800689 ((_ is Cons!52258) lt!1840353))))

(assert (=> d!1487799 (forall!11229 lt!1840353 lambda!204836)))

(assert (=> d!1487799 (= (extractMap!1820 lt!1840353) lt!1840702)))

(declare-fun b!4680777 () Bool)

(assert (=> b!4680777 (= e!2920393 (addToMapMapFromBucket!1226 (_2!30080 (h!58471 lt!1840353)) (extractMap!1820 (t!359538 lt!1840353))))))

(declare-fun b!4680778 () Bool)

(assert (=> b!4680778 (= e!2920393 (ListMap!4842 Nil!52257))))

(assert (= (and d!1487799 c!800689) b!4680777))

(assert (= (and d!1487799 (not c!800689)) b!4680778))

(declare-fun m!5578067 () Bool)

(assert (=> d!1487799 m!5578067))

(declare-fun m!5578069 () Bool)

(assert (=> d!1487799 m!5578069))

(declare-fun m!5578071 () Bool)

(assert (=> b!4680777 m!5578071))

(assert (=> b!4680777 m!5578071))

(declare-fun m!5578073 () Bool)

(assert (=> b!4680777 m!5578073))

(assert (=> b!4680546 d!1487799))

(declare-fun d!1487801 () Bool)

(declare-fun res!1972519 () Bool)

(declare-fun e!2920398 () Bool)

(assert (=> d!1487801 (=> res!1972519 e!2920398)))

(assert (=> d!1487801 (= res!1972519 (and ((_ is Cons!52257) lt!1840351) (= (_1!30079 (h!58470 lt!1840351)) key!4653)))))

(assert (=> d!1487801 (= (containsKey!2941 lt!1840351 key!4653) e!2920398)))

(declare-fun b!4680783 () Bool)

(declare-fun e!2920399 () Bool)

(assert (=> b!4680783 (= e!2920398 e!2920399)))

(declare-fun res!1972520 () Bool)

(assert (=> b!4680783 (=> (not res!1972520) (not e!2920399))))

(assert (=> b!4680783 (= res!1972520 ((_ is Cons!52257) lt!1840351))))

(declare-fun b!4680784 () Bool)

(assert (=> b!4680784 (= e!2920399 (containsKey!2941 (t!359537 lt!1840351) key!4653))))

(assert (= (and d!1487801 (not res!1972519)) b!4680783))

(assert (= (and b!4680783 res!1972520) b!4680784))

(declare-fun m!5578075 () Bool)

(assert (=> b!4680784 m!5578075))

(assert (=> b!4680544 d!1487801))

(declare-fun d!1487803 () Bool)

(declare-fun e!2920405 () Bool)

(assert (=> d!1487803 e!2920405))

(declare-fun res!1972526 () Bool)

(assert (=> d!1487803 (=> (not res!1972526) (not e!2920405))))

(declare-fun lt!1840729 () ListMap!4841)

(assert (=> d!1487803 (= res!1972526 (not (contains!15390 lt!1840729 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!331 (List!52381 K!13635) List!52381)

(assert (=> d!1487803 (= lt!1840729 (ListMap!4842 (removePresrvNoDuplicatedKeys!331 (toList!5477 lt!1840355) key!4653)))))

(assert (=> d!1487803 (= (-!658 lt!1840355 key!4653) lt!1840729)))

(declare-fun b!4680792 () Bool)

(declare-datatypes ((List!52384 0))(
  ( (Nil!52260) (Cons!52260 (h!58475 K!13635) (t!359542 List!52384)) )
))
(declare-fun content!9114 (List!52384) (InoxSet K!13635))

(declare-fun keys!18621 (ListMap!4841) List!52384)

(assert (=> b!4680792 (= e!2920405 (= ((_ map and) (content!9114 (keys!18621 lt!1840355)) ((_ map not) (store ((as const (Array K!13635 Bool)) false) key!4653 true))) (content!9114 (keys!18621 lt!1840729))))))

(assert (= (and d!1487803 res!1972526) b!4680792))

(declare-fun m!5578083 () Bool)

(assert (=> d!1487803 m!5578083))

(declare-fun m!5578085 () Bool)

(assert (=> d!1487803 m!5578085))

(declare-fun m!5578087 () Bool)

(assert (=> b!4680792 m!5578087))

(assert (=> b!4680792 m!5578087))

(declare-fun m!5578089 () Bool)

(assert (=> b!4680792 m!5578089))

(declare-fun m!5578091 () Bool)

(assert (=> b!4680792 m!5578091))

(assert (=> b!4680792 m!5578091))

(declare-fun m!5578093 () Bool)

(assert (=> b!4680792 m!5578093))

(declare-fun m!5578095 () Bool)

(assert (=> b!4680792 m!5578095))

(assert (=> b!4680555 d!1487803))

(declare-fun d!1487807 () Bool)

(declare-fun e!2920406 () Bool)

(assert (=> d!1487807 e!2920406))

(declare-fun res!1972527 () Bool)

(assert (=> d!1487807 (=> (not res!1972527) (not e!2920406))))

(declare-fun lt!1840730 () ListMap!4841)

(assert (=> d!1487807 (= res!1972527 (not (contains!15390 lt!1840730 key!4653)))))

(assert (=> d!1487807 (= lt!1840730 (ListMap!4842 (removePresrvNoDuplicatedKeys!331 (toList!5477 (+!2096 lt!1840345 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))) key!4653)))))

(assert (=> d!1487807 (= (-!658 (+!2096 lt!1840345 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))) key!4653) lt!1840730)))

(declare-fun b!4680793 () Bool)

(assert (=> b!4680793 (= e!2920406 (= ((_ map and) (content!9114 (keys!18621 (+!2096 lt!1840345 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13635 Bool)) false) key!4653 true))) (content!9114 (keys!18621 lt!1840730))))))

(assert (= (and d!1487807 res!1972527) b!4680793))

(declare-fun m!5578097 () Bool)

(assert (=> d!1487807 m!5578097))

(declare-fun m!5578099 () Bool)

(assert (=> d!1487807 m!5578099))

(declare-fun m!5578101 () Bool)

(assert (=> b!4680793 m!5578101))

(assert (=> b!4680793 m!5578101))

(declare-fun m!5578103 () Bool)

(assert (=> b!4680793 m!5578103))

(assert (=> b!4680793 m!5577487))

(declare-fun m!5578105 () Bool)

(assert (=> b!4680793 m!5578105))

(assert (=> b!4680793 m!5578105))

(declare-fun m!5578107 () Bool)

(assert (=> b!4680793 m!5578107))

(assert (=> b!4680793 m!5578095))

(assert (=> b!4680555 d!1487807))

(declare-fun d!1487809 () Bool)

(declare-fun e!2920407 () Bool)

(assert (=> d!1487809 e!2920407))

(declare-fun res!1972529 () Bool)

(assert (=> d!1487809 (=> (not res!1972529) (not e!2920407))))

(declare-fun lt!1840733 () ListMap!4841)

(assert (=> d!1487809 (= res!1972529 (contains!15390 lt!1840733 (_1!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))))))

(declare-fun lt!1840734 () List!52381)

(assert (=> d!1487809 (= lt!1840733 (ListMap!4842 lt!1840734))))

(declare-fun lt!1840732 () Unit!122619)

(declare-fun lt!1840731 () Unit!122619)

(assert (=> d!1487809 (= lt!1840732 lt!1840731)))

(assert (=> d!1487809 (= (getValueByKey!1720 lt!1840734 (_1!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))) (Some!11971 (_2!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))))))

(assert (=> d!1487809 (= lt!1840731 (lemmaContainsTupThenGetReturnValue!979 lt!1840734 (_1!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))) (_2!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))))))

(assert (=> d!1487809 (= lt!1840734 (insertNoDuplicatedKeys!487 (toList!5477 lt!1840345) (_1!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))) (_2!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))))))

(assert (=> d!1487809 (= (+!2096 lt!1840345 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))) lt!1840733)))

(declare-fun b!4680794 () Bool)

(declare-fun res!1972528 () Bool)

(assert (=> b!4680794 (=> (not res!1972528) (not e!2920407))))

(assert (=> b!4680794 (= res!1972528 (= (getValueByKey!1720 (toList!5477 lt!1840733) (_1!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34))))) (Some!11971 (_2!30079 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))))))))

(declare-fun b!4680795 () Bool)

(assert (=> b!4680795 (= e!2920407 (contains!15391 (toList!5477 lt!1840733) (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))))))

(assert (= (and d!1487809 res!1972529) b!4680794))

(assert (= (and b!4680794 res!1972528) b!4680795))

(declare-fun m!5578109 () Bool)

(assert (=> d!1487809 m!5578109))

(declare-fun m!5578111 () Bool)

(assert (=> d!1487809 m!5578111))

(declare-fun m!5578113 () Bool)

(assert (=> d!1487809 m!5578113))

(declare-fun m!5578115 () Bool)

(assert (=> d!1487809 m!5578115))

(declare-fun m!5578117 () Bool)

(assert (=> b!4680794 m!5578117))

(declare-fun m!5578119 () Bool)

(assert (=> b!4680795 m!5578119))

(assert (=> b!4680555 d!1487809))

(declare-fun d!1487811 () Bool)

(assert (=> d!1487811 (= (-!658 (+!2096 lt!1840345 (tuple2!53571 key!4653 (_2!30079 (h!58470 oldBucket!34)))) key!4653) lt!1840345)))

(declare-fun lt!1840758 () Unit!122619)

(declare-fun choose!32397 (ListMap!4841 K!13635 V!13881) Unit!122619)

(assert (=> d!1487811 (= lt!1840758 (choose!32397 lt!1840345 key!4653 (_2!30079 (h!58470 oldBucket!34))))))

(assert (=> d!1487811 (not (contains!15390 lt!1840345 key!4653))))

(assert (=> d!1487811 (= (addThenRemoveForNewKeyIsSame!49 lt!1840345 key!4653 (_2!30079 (h!58470 oldBucket!34))) lt!1840758)))

(declare-fun bs!1082773 () Bool)

(assert (= bs!1082773 d!1487811))

(assert (=> bs!1082773 m!5577487))

(assert (=> bs!1082773 m!5577487))

(assert (=> bs!1082773 m!5577489))

(declare-fun m!5578153 () Bool)

(assert (=> bs!1082773 m!5578153))

(assert (=> bs!1082773 m!5577435))

(assert (=> b!4680555 d!1487811))

(declare-fun d!1487815 () Bool)

(declare-fun res!1972537 () Bool)

(declare-fun e!2920415 () Bool)

(assert (=> d!1487815 (=> res!1972537 e!2920415)))

(assert (=> d!1487815 (= res!1972537 ((_ is Nil!52258) (toList!5478 lm!2023)))))

(assert (=> d!1487815 (= (forall!11229 (toList!5478 lm!2023) lambda!204723) e!2920415)))

(declare-fun b!4680805 () Bool)

(declare-fun e!2920416 () Bool)

(assert (=> b!4680805 (= e!2920415 e!2920416)))

(declare-fun res!1972538 () Bool)

(assert (=> b!4680805 (=> (not res!1972538) (not e!2920416))))

(declare-fun dynLambda!21681 (Int tuple2!53572) Bool)

(assert (=> b!4680805 (= res!1972538 (dynLambda!21681 lambda!204723 (h!58471 (toList!5478 lm!2023))))))

(declare-fun b!4680806 () Bool)

(assert (=> b!4680806 (= e!2920416 (forall!11229 (t!359538 (toList!5478 lm!2023)) lambda!204723))))

(assert (= (and d!1487815 (not res!1972537)) b!4680805))

(assert (= (and b!4680805 res!1972538) b!4680806))

(declare-fun b_lambda!176681 () Bool)

(assert (=> (not b_lambda!176681) (not b!4680805)))

(declare-fun m!5578157 () Bool)

(assert (=> b!4680805 m!5578157))

(declare-fun m!5578163 () Bool)

(assert (=> b!4680806 m!5578163))

(assert (=> start!472636 d!1487815))

(declare-fun d!1487817 () Bool)

(declare-fun isStrictlySorted!618 (List!52382) Bool)

(assert (=> d!1487817 (= (inv!67509 lm!2023) (isStrictlySorted!618 (toList!5478 lm!2023)))))

(declare-fun bs!1082784 () Bool)

(assert (= bs!1082784 d!1487817))

(declare-fun m!5578193 () Bool)

(assert (=> bs!1082784 m!5578193))

(assert (=> start!472636 d!1487817))

(declare-fun d!1487819 () Bool)

(assert (=> d!1487819 (= (eq!983 lt!1840344 lt!1840358) (= (content!9113 (toList!5477 lt!1840344)) (content!9113 (toList!5477 lt!1840358))))))

(declare-fun bs!1082785 () Bool)

(assert (= bs!1082785 d!1487819))

(declare-fun m!5578195 () Bool)

(assert (=> bs!1082785 m!5578195))

(declare-fun m!5578197 () Bool)

(assert (=> bs!1082785 m!5578197))

(assert (=> b!4680548 d!1487819))

(declare-fun d!1487821 () Bool)

(assert (=> d!1487821 (= (eq!983 lt!1840357 lt!1840344) (= (content!9113 (toList!5477 lt!1840357)) (content!9113 (toList!5477 lt!1840344))))))

(declare-fun bs!1082786 () Bool)

(assert (= bs!1082786 d!1487821))

(declare-fun m!5578199 () Bool)

(assert (=> bs!1082786 m!5578199))

(assert (=> bs!1082786 m!5578195))

(assert (=> b!4680548 d!1487821))

(declare-fun d!1487823 () Bool)

(declare-fun e!2920423 () Bool)

(assert (=> d!1487823 e!2920423))

(declare-fun res!1972539 () Bool)

(assert (=> d!1487823 (=> (not res!1972539) (not e!2920423))))

(declare-fun lt!1840759 () ListMap!4841)

(assert (=> d!1487823 (= res!1972539 (not (contains!15390 lt!1840759 key!4653)))))

(assert (=> d!1487823 (= lt!1840759 (ListMap!4842 (removePresrvNoDuplicatedKeys!331 (toList!5477 lt!1840359) key!4653)))))

(assert (=> d!1487823 (= (-!658 lt!1840359 key!4653) lt!1840759)))

(declare-fun b!4680817 () Bool)

(assert (=> b!4680817 (= e!2920423 (= ((_ map and) (content!9114 (keys!18621 lt!1840359)) ((_ map not) (store ((as const (Array K!13635 Bool)) false) key!4653 true))) (content!9114 (keys!18621 lt!1840759))))))

(assert (= (and d!1487823 res!1972539) b!4680817))

(declare-fun m!5578201 () Bool)

(assert (=> d!1487823 m!5578201))

(declare-fun m!5578203 () Bool)

(assert (=> d!1487823 m!5578203))

(declare-fun m!5578205 () Bool)

(assert (=> b!4680817 m!5578205))

(assert (=> b!4680817 m!5578205))

(declare-fun m!5578207 () Bool)

(assert (=> b!4680817 m!5578207))

(declare-fun m!5578209 () Bool)

(assert (=> b!4680817 m!5578209))

(assert (=> b!4680817 m!5578209))

(declare-fun m!5578211 () Bool)

(assert (=> b!4680817 m!5578211))

(assert (=> b!4680817 m!5578095))

(assert (=> b!4680548 d!1487823))

(declare-fun d!1487827 () Bool)

(assert (=> d!1487827 (eq!983 (-!658 lt!1840355 key!4653) (-!658 lt!1840359 key!4653))))

(declare-fun lt!1840762 () Unit!122619)

(declare-fun choose!32398 (ListMap!4841 ListMap!4841 K!13635) Unit!122619)

(assert (=> d!1487827 (= lt!1840762 (choose!32398 lt!1840355 lt!1840359 key!4653))))

(assert (=> d!1487827 (eq!983 lt!1840355 lt!1840359)))

(assert (=> d!1487827 (= (lemmaRemovePreservesEq!78 lt!1840355 lt!1840359 key!4653) lt!1840762)))

(declare-fun bs!1082789 () Bool)

(assert (= bs!1082789 d!1487827))

(assert (=> bs!1082789 m!5577485))

(assert (=> bs!1082789 m!5577485))

(assert (=> bs!1082789 m!5577513))

(declare-fun m!5578215 () Bool)

(assert (=> bs!1082789 m!5578215))

(assert (=> bs!1082789 m!5577445))

(declare-fun m!5578217 () Bool)

(assert (=> bs!1082789 m!5578217))

(assert (=> bs!1082789 m!5577513))

(assert (=> b!4680548 d!1487827))

(declare-fun bs!1082790 () Bool)

(declare-fun b!4680823 () Bool)

(assert (= bs!1082790 (and b!4680823 b!4680761)))

(declare-fun lambda!204845 () Int)

(assert (=> bs!1082790 (= (= lt!1840360 lt!1840659) (= lambda!204845 lambda!204829))))

(declare-fun bs!1082791 () Bool)

(assert (= bs!1082791 (and b!4680823 b!4680654)))

(assert (=> bs!1082791 (= (= lt!1840360 lt!1840528) (= lambda!204845 lambda!204805))))

(declare-fun bs!1082792 () Bool)

(assert (= bs!1082792 (and b!4680823 b!4680769)))

(assert (=> bs!1082792 (= (= lt!1840360 lt!1840682) (= lambda!204845 lambda!204833))))

(declare-fun bs!1082793 () Bool)

(assert (= bs!1082793 (and b!4680823 d!1487687)))

(assert (=> bs!1082793 (= (= lt!1840360 lt!1840521) (= lambda!204845 lambda!204806))))

(declare-fun bs!1082794 () Bool)

(assert (= bs!1082794 (and b!4680823 b!4680762)))

(assert (=> bs!1082794 (= lambda!204845 lambda!204827)))

(declare-fun bs!1082795 () Bool)

(assert (= bs!1082795 (and b!4680823 b!4680770)))

(assert (=> bs!1082795 (= lambda!204845 lambda!204831)))

(declare-fun bs!1082796 () Bool)

(assert (= bs!1082796 (and b!4680823 d!1487783)))

(assert (=> bs!1082796 (= (= lt!1840360 lt!1840675) (= lambda!204845 lambda!204834))))

(declare-fun bs!1082797 () Bool)

(assert (= bs!1082797 (and b!4680823 b!4680666)))

(assert (=> bs!1082797 (= lambda!204845 lambda!204807)))

(declare-fun bs!1082798 () Bool)

(assert (= bs!1082798 (and b!4680823 d!1487761)))

(assert (=> bs!1082798 (not (= lambda!204845 lambda!204824))))

(declare-fun bs!1082799 () Bool)

(assert (= bs!1082799 (and b!4680823 b!4680655)))

(assert (=> bs!1082799 (= lambda!204845 lambda!204803)))

(assert (=> bs!1082790 (= lambda!204845 lambda!204828)))

(declare-fun bs!1082800 () Bool)

(assert (= bs!1082800 (and b!4680823 b!4680665)))

(assert (=> bs!1082800 (= (= lt!1840360 lt!1840553) (= lambda!204845 lambda!204809))))

(assert (=> bs!1082791 (= lambda!204845 lambda!204804)))

(assert (=> bs!1082792 (= lambda!204845 lambda!204832)))

(declare-fun bs!1082801 () Bool)

(assert (= bs!1082801 (and b!4680823 d!1487769)))

(assert (=> bs!1082801 (= (= lt!1840360 lt!1840652) (= lambda!204845 lambda!204830))))

(declare-fun bs!1082802 () Bool)

(assert (= bs!1082802 (and b!4680823 d!1487741)))

(assert (=> bs!1082802 (not (= lambda!204845 lambda!204813))))

(declare-fun bs!1082803 () Bool)

(assert (= bs!1082803 (and b!4680823 d!1487721)))

(assert (=> bs!1082803 (= (= lt!1840360 lt!1840546) (= lambda!204845 lambda!204810))))

(assert (=> bs!1082800 (= lambda!204845 lambda!204808)))

(assert (=> b!4680823 true))

(declare-fun bs!1082804 () Bool)

(declare-fun b!4680822 () Bool)

(assert (= bs!1082804 (and b!4680822 b!4680761)))

(declare-fun lambda!204846 () Int)

(assert (=> bs!1082804 (= (= lt!1840360 lt!1840659) (= lambda!204846 lambda!204829))))

(declare-fun bs!1082805 () Bool)

(assert (= bs!1082805 (and b!4680822 b!4680654)))

(assert (=> bs!1082805 (= (= lt!1840360 lt!1840528) (= lambda!204846 lambda!204805))))

(declare-fun bs!1082806 () Bool)

(assert (= bs!1082806 (and b!4680822 b!4680769)))

(assert (=> bs!1082806 (= (= lt!1840360 lt!1840682) (= lambda!204846 lambda!204833))))

(declare-fun bs!1082807 () Bool)

(assert (= bs!1082807 (and b!4680822 d!1487687)))

(assert (=> bs!1082807 (= (= lt!1840360 lt!1840521) (= lambda!204846 lambda!204806))))

(declare-fun bs!1082808 () Bool)

(assert (= bs!1082808 (and b!4680822 b!4680762)))

(assert (=> bs!1082808 (= lambda!204846 lambda!204827)))

(declare-fun bs!1082809 () Bool)

(assert (= bs!1082809 (and b!4680822 b!4680770)))

(assert (=> bs!1082809 (= lambda!204846 lambda!204831)))

(declare-fun bs!1082810 () Bool)

(assert (= bs!1082810 (and b!4680822 d!1487783)))

(assert (=> bs!1082810 (= (= lt!1840360 lt!1840675) (= lambda!204846 lambda!204834))))

(declare-fun bs!1082811 () Bool)

(assert (= bs!1082811 (and b!4680822 b!4680666)))

(assert (=> bs!1082811 (= lambda!204846 lambda!204807)))

(declare-fun bs!1082812 () Bool)

(assert (= bs!1082812 (and b!4680822 d!1487761)))

(assert (=> bs!1082812 (not (= lambda!204846 lambda!204824))))

(declare-fun bs!1082813 () Bool)

(assert (= bs!1082813 (and b!4680822 b!4680655)))

(assert (=> bs!1082813 (= lambda!204846 lambda!204803)))

(declare-fun bs!1082814 () Bool)

(assert (= bs!1082814 (and b!4680822 b!4680823)))

(assert (=> bs!1082814 (= lambda!204846 lambda!204845)))

(assert (=> bs!1082804 (= lambda!204846 lambda!204828)))

(declare-fun bs!1082815 () Bool)

(assert (= bs!1082815 (and b!4680822 b!4680665)))

(assert (=> bs!1082815 (= (= lt!1840360 lt!1840553) (= lambda!204846 lambda!204809))))

(assert (=> bs!1082805 (= lambda!204846 lambda!204804)))

(assert (=> bs!1082806 (= lambda!204846 lambda!204832)))

(declare-fun bs!1082816 () Bool)

(assert (= bs!1082816 (and b!4680822 d!1487769)))

(assert (=> bs!1082816 (= (= lt!1840360 lt!1840652) (= lambda!204846 lambda!204830))))

(declare-fun bs!1082817 () Bool)

(assert (= bs!1082817 (and b!4680822 d!1487741)))

(assert (=> bs!1082817 (not (= lambda!204846 lambda!204813))))

(declare-fun bs!1082818 () Bool)

(assert (= bs!1082818 (and b!4680822 d!1487721)))

(assert (=> bs!1082818 (= (= lt!1840360 lt!1840546) (= lambda!204846 lambda!204810))))

(assert (=> bs!1082815 (= lambda!204846 lambda!204808)))

(assert (=> b!4680822 true))

(declare-fun lambda!204847 () Int)

(declare-fun lt!1840776 () ListMap!4841)

(assert (=> bs!1082804 (= (= lt!1840776 lt!1840659) (= lambda!204847 lambda!204829))))

(assert (=> bs!1082805 (= (= lt!1840776 lt!1840528) (= lambda!204847 lambda!204805))))

(assert (=> bs!1082806 (= (= lt!1840776 lt!1840682) (= lambda!204847 lambda!204833))))

(assert (=> bs!1082808 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204827))))

(assert (=> bs!1082809 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204831))))

(assert (=> bs!1082810 (= (= lt!1840776 lt!1840675) (= lambda!204847 lambda!204834))))

(assert (=> bs!1082811 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204807))))

(assert (=> bs!1082812 (not (= lambda!204847 lambda!204824))))

(assert (=> bs!1082813 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204803))))

(assert (=> bs!1082814 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204845))))

(assert (=> bs!1082804 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204828))))

(assert (=> bs!1082815 (= (= lt!1840776 lt!1840553) (= lambda!204847 lambda!204809))))

(assert (=> bs!1082805 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204804))))

(assert (=> bs!1082806 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204832))))

(assert (=> bs!1082807 (= (= lt!1840776 lt!1840521) (= lambda!204847 lambda!204806))))

(assert (=> b!4680822 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204846))))

(assert (=> bs!1082816 (= (= lt!1840776 lt!1840652) (= lambda!204847 lambda!204830))))

(assert (=> bs!1082817 (not (= lambda!204847 lambda!204813))))

(assert (=> bs!1082818 (= (= lt!1840776 lt!1840546) (= lambda!204847 lambda!204810))))

(assert (=> bs!1082815 (= (= lt!1840776 lt!1840360) (= lambda!204847 lambda!204808))))

(assert (=> b!4680822 true))

(declare-fun bs!1082819 () Bool)

(declare-fun d!1487831 () Bool)

(assert (= bs!1082819 (and d!1487831 b!4680761)))

(declare-fun lt!1840769 () ListMap!4841)

(declare-fun lambda!204848 () Int)

(assert (=> bs!1082819 (= (= lt!1840769 lt!1840659) (= lambda!204848 lambda!204829))))

(declare-fun bs!1082820 () Bool)

(assert (= bs!1082820 (and d!1487831 b!4680654)))

(assert (=> bs!1082820 (= (= lt!1840769 lt!1840528) (= lambda!204848 lambda!204805))))

(declare-fun bs!1082821 () Bool)

(assert (= bs!1082821 (and d!1487831 b!4680769)))

(assert (=> bs!1082821 (= (= lt!1840769 lt!1840682) (= lambda!204848 lambda!204833))))

(declare-fun bs!1082822 () Bool)

(assert (= bs!1082822 (and d!1487831 b!4680762)))

(assert (=> bs!1082822 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204827))))

(declare-fun bs!1082823 () Bool)

(assert (= bs!1082823 (and d!1487831 b!4680770)))

(assert (=> bs!1082823 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204831))))

(declare-fun bs!1082824 () Bool)

(assert (= bs!1082824 (and d!1487831 d!1487783)))

(assert (=> bs!1082824 (= (= lt!1840769 lt!1840675) (= lambda!204848 lambda!204834))))

(declare-fun bs!1082825 () Bool)

(assert (= bs!1082825 (and d!1487831 b!4680666)))

(assert (=> bs!1082825 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204807))))

(declare-fun bs!1082826 () Bool)

(assert (= bs!1082826 (and d!1487831 d!1487761)))

(assert (=> bs!1082826 (not (= lambda!204848 lambda!204824))))

(declare-fun bs!1082827 () Bool)

(assert (= bs!1082827 (and d!1487831 b!4680655)))

(assert (=> bs!1082827 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204803))))

(declare-fun bs!1082828 () Bool)

(assert (= bs!1082828 (and d!1487831 b!4680823)))

(assert (=> bs!1082828 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204845))))

(declare-fun bs!1082829 () Bool)

(assert (= bs!1082829 (and d!1487831 b!4680822)))

(assert (=> bs!1082829 (= (= lt!1840769 lt!1840776) (= lambda!204848 lambda!204847))))

(assert (=> bs!1082819 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204828))))

(declare-fun bs!1082830 () Bool)

(assert (= bs!1082830 (and d!1487831 b!4680665)))

(assert (=> bs!1082830 (= (= lt!1840769 lt!1840553) (= lambda!204848 lambda!204809))))

(assert (=> bs!1082820 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204804))))

(assert (=> bs!1082821 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204832))))

(declare-fun bs!1082831 () Bool)

(assert (= bs!1082831 (and d!1487831 d!1487687)))

(assert (=> bs!1082831 (= (= lt!1840769 lt!1840521) (= lambda!204848 lambda!204806))))

(assert (=> bs!1082829 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204846))))

(declare-fun bs!1082832 () Bool)

(assert (= bs!1082832 (and d!1487831 d!1487769)))

(assert (=> bs!1082832 (= (= lt!1840769 lt!1840652) (= lambda!204848 lambda!204830))))

(declare-fun bs!1082833 () Bool)

(assert (= bs!1082833 (and d!1487831 d!1487741)))

(assert (=> bs!1082833 (not (= lambda!204848 lambda!204813))))

(declare-fun bs!1082834 () Bool)

(assert (= bs!1082834 (and d!1487831 d!1487721)))

(assert (=> bs!1082834 (= (= lt!1840769 lt!1840546) (= lambda!204848 lambda!204810))))

(assert (=> bs!1082830 (= (= lt!1840769 lt!1840360) (= lambda!204848 lambda!204808))))

(assert (=> d!1487831 true))

(declare-fun b!4680819 () Bool)

(declare-fun e!2920425 () Bool)

(assert (=> b!4680819 (= e!2920425 (invariantList!1378 (toList!5477 lt!1840769)))))

(declare-fun c!800692 () Bool)

(declare-fun bm!327167 () Bool)

(declare-fun call!327172 () Bool)

(assert (=> bm!327167 (= call!327172 (forall!11231 (ite c!800692 (toList!5477 lt!1840360) (_2!30080 (h!58471 (toList!5478 lm!2023)))) (ite c!800692 lambda!204845 lambda!204847)))))

(declare-fun bm!327168 () Bool)

(declare-fun call!327173 () Bool)

(assert (=> bm!327168 (= call!327173 (forall!11231 (toList!5477 lt!1840360) (ite c!800692 lambda!204845 lambda!204847)))))

(declare-fun b!4680820 () Bool)

(declare-fun e!2920427 () Bool)

(assert (=> b!4680820 (= e!2920427 (forall!11231 (toList!5477 lt!1840360) lambda!204847))))

(declare-fun b!4680821 () Bool)

(declare-fun res!1972541 () Bool)

(assert (=> b!4680821 (=> (not res!1972541) (not e!2920425))))

(assert (=> b!4680821 (= res!1972541 (forall!11231 (toList!5477 lt!1840360) lambda!204848))))

(assert (=> d!1487831 e!2920425))

(declare-fun res!1972540 () Bool)

(assert (=> d!1487831 (=> (not res!1972540) (not e!2920425))))

(assert (=> d!1487831 (= res!1972540 (forall!11231 (_2!30080 (h!58471 (toList!5478 lm!2023))) lambda!204848))))

(declare-fun e!2920426 () ListMap!4841)

(assert (=> d!1487831 (= lt!1840769 e!2920426)))

(assert (=> d!1487831 (= c!800692 ((_ is Nil!52257) (_2!30080 (h!58471 (toList!5478 lm!2023)))))))

(assert (=> d!1487831 (noDuplicateKeys!1794 (_2!30080 (h!58471 (toList!5478 lm!2023))))))

(assert (=> d!1487831 (= (addToMapMapFromBucket!1226 (_2!30080 (h!58471 (toList!5478 lm!2023))) lt!1840360) lt!1840769)))

(assert (=> b!4680822 (= e!2920426 lt!1840776)))

(declare-fun lt!1840780 () ListMap!4841)

(assert (=> b!4680822 (= lt!1840780 (+!2096 lt!1840360 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023))))))))

(assert (=> b!4680822 (= lt!1840776 (addToMapMapFromBucket!1226 (t!359537 (_2!30080 (h!58471 (toList!5478 lm!2023)))) (+!2096 lt!1840360 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023)))))))))

(declare-fun lt!1840782 () Unit!122619)

(declare-fun call!327174 () Unit!122619)

(assert (=> b!4680822 (= lt!1840782 call!327174)))

(assert (=> b!4680822 (forall!11231 (toList!5477 lt!1840360) lambda!204846)))

(declare-fun lt!1840772 () Unit!122619)

(assert (=> b!4680822 (= lt!1840772 lt!1840782)))

(assert (=> b!4680822 (forall!11231 (toList!5477 lt!1840780) lambda!204847)))

(declare-fun lt!1840763 () Unit!122619)

(declare-fun Unit!122726 () Unit!122619)

(assert (=> b!4680822 (= lt!1840763 Unit!122726)))

(assert (=> b!4680822 (forall!11231 (t!359537 (_2!30080 (h!58471 (toList!5478 lm!2023)))) lambda!204847)))

(declare-fun lt!1840779 () Unit!122619)

(declare-fun Unit!122727 () Unit!122619)

(assert (=> b!4680822 (= lt!1840779 Unit!122727)))

(declare-fun lt!1840778 () Unit!122619)

(declare-fun Unit!122728 () Unit!122619)

(assert (=> b!4680822 (= lt!1840778 Unit!122728)))

(declare-fun lt!1840773 () Unit!122619)

(assert (=> b!4680822 (= lt!1840773 (forallContained!3350 (toList!5477 lt!1840780) lambda!204847 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023))))))))

(assert (=> b!4680822 (contains!15390 lt!1840780 (_1!30079 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023))))))))

(declare-fun lt!1840781 () Unit!122619)

(declare-fun Unit!122729 () Unit!122619)

(assert (=> b!4680822 (= lt!1840781 Unit!122729)))

(assert (=> b!4680822 (contains!15390 lt!1840776 (_1!30079 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023))))))))

(declare-fun lt!1840767 () Unit!122619)

(declare-fun Unit!122730 () Unit!122619)

(assert (=> b!4680822 (= lt!1840767 Unit!122730)))

(assert (=> b!4680822 (forall!11231 (_2!30080 (h!58471 (toList!5478 lm!2023))) lambda!204847)))

(declare-fun lt!1840775 () Unit!122619)

(declare-fun Unit!122731 () Unit!122619)

(assert (=> b!4680822 (= lt!1840775 Unit!122731)))

(assert (=> b!4680822 (forall!11231 (toList!5477 lt!1840780) lambda!204847)))

(declare-fun lt!1840771 () Unit!122619)

(declare-fun Unit!122732 () Unit!122619)

(assert (=> b!4680822 (= lt!1840771 Unit!122732)))

(declare-fun lt!1840766 () Unit!122619)

(declare-fun Unit!122733 () Unit!122619)

(assert (=> b!4680822 (= lt!1840766 Unit!122733)))

(declare-fun lt!1840783 () Unit!122619)

(assert (=> b!4680822 (= lt!1840783 (addForallContainsKeyThenBeforeAdding!665 lt!1840360 lt!1840776 (_1!30079 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023))))) (_2!30079 (h!58470 (_2!30080 (h!58471 (toList!5478 lm!2023)))))))))

(assert (=> b!4680822 call!327173))

(declare-fun lt!1840777 () Unit!122619)

(assert (=> b!4680822 (= lt!1840777 lt!1840783)))

(assert (=> b!4680822 (forall!11231 (toList!5477 lt!1840360) lambda!204847)))

(declare-fun lt!1840764 () Unit!122619)

(declare-fun Unit!122734 () Unit!122619)

(assert (=> b!4680822 (= lt!1840764 Unit!122734)))

(declare-fun res!1972542 () Bool)

(assert (=> b!4680822 (= res!1972542 call!327172)))

(assert (=> b!4680822 (=> (not res!1972542) (not e!2920427))))

(assert (=> b!4680822 e!2920427))

(declare-fun lt!1840770 () Unit!122619)

(declare-fun Unit!122735 () Unit!122619)

(assert (=> b!4680822 (= lt!1840770 Unit!122735)))

(declare-fun bm!327169 () Bool)

(assert (=> bm!327169 (= call!327174 (lemmaContainsAllItsOwnKeys!666 lt!1840360))))

(assert (=> b!4680823 (= e!2920426 lt!1840360)))

(declare-fun lt!1840774 () Unit!122619)

(assert (=> b!4680823 (= lt!1840774 call!327174)))

(assert (=> b!4680823 call!327173))

(declare-fun lt!1840765 () Unit!122619)

(assert (=> b!4680823 (= lt!1840765 lt!1840774)))

(assert (=> b!4680823 call!327172))

(declare-fun lt!1840768 () Unit!122619)

(declare-fun Unit!122736 () Unit!122619)

(assert (=> b!4680823 (= lt!1840768 Unit!122736)))

(assert (= (and d!1487831 c!800692) b!4680823))

(assert (= (and d!1487831 (not c!800692)) b!4680822))

(assert (= (and b!4680822 res!1972542) b!4680820))

(assert (= (or b!4680823 b!4680822) bm!327169))

(assert (= (or b!4680823 b!4680822) bm!327168))

(assert (= (or b!4680823 b!4680822) bm!327167))

(assert (= (and d!1487831 res!1972540) b!4680821))

(assert (= (and b!4680821 res!1972541) b!4680819))

(assert (=> bm!327169 m!5577695))

(declare-fun m!5578219 () Bool)

(assert (=> d!1487831 m!5578219))

(declare-fun m!5578221 () Bool)

(assert (=> d!1487831 m!5578221))

(declare-fun m!5578223 () Bool)

(assert (=> bm!327167 m!5578223))

(declare-fun m!5578225 () Bool)

(assert (=> b!4680819 m!5578225))

(declare-fun m!5578227 () Bool)

(assert (=> b!4680822 m!5578227))

(declare-fun m!5578229 () Bool)

(assert (=> b!4680822 m!5578229))

(declare-fun m!5578231 () Bool)

(assert (=> b!4680822 m!5578231))

(declare-fun m!5578233 () Bool)

(assert (=> b!4680822 m!5578233))

(declare-fun m!5578235 () Bool)

(assert (=> b!4680822 m!5578235))

(declare-fun m!5578237 () Bool)

(assert (=> b!4680822 m!5578237))

(declare-fun m!5578239 () Bool)

(assert (=> b!4680822 m!5578239))

(assert (=> b!4680822 m!5578227))

(declare-fun m!5578241 () Bool)

(assert (=> b!4680822 m!5578241))

(assert (=> b!4680822 m!5578239))

(declare-fun m!5578243 () Bool)

(assert (=> b!4680822 m!5578243))

(declare-fun m!5578245 () Bool)

(assert (=> b!4680822 m!5578245))

(declare-fun m!5578247 () Bool)

(assert (=> b!4680822 m!5578247))

(declare-fun m!5578249 () Bool)

(assert (=> bm!327168 m!5578249))

(declare-fun m!5578251 () Bool)

(assert (=> b!4680821 m!5578251))

(assert (=> b!4680820 m!5578235))

(assert (=> b!4680537 d!1487831))

(declare-fun bs!1082835 () Bool)

(declare-fun d!1487833 () Bool)

(assert (= bs!1082835 (and d!1487833 d!1487799)))

(declare-fun lambda!204849 () Int)

(assert (=> bs!1082835 (= lambda!204849 lambda!204836)))

(declare-fun bs!1082836 () Bool)

(assert (= bs!1082836 (and d!1487833 d!1487797)))

(assert (=> bs!1082836 (= lambda!204849 lambda!204835)))

(declare-fun bs!1082837 () Bool)

(assert (= bs!1082837 (and d!1487833 start!472636)))

(assert (=> bs!1082837 (= lambda!204849 lambda!204723)))

(declare-fun bs!1082838 () Bool)

(assert (= bs!1082838 (and d!1487833 d!1487747)))

(assert (=> bs!1082838 (= lambda!204849 lambda!204818)))

(declare-fun bs!1082839 () Bool)

(assert (= bs!1082839 (and d!1487833 d!1487751)))

(assert (=> bs!1082839 (not (= lambda!204849 lambda!204823))))

(declare-fun lt!1840784 () ListMap!4841)

(assert (=> d!1487833 (invariantList!1378 (toList!5477 lt!1840784))))

(declare-fun e!2920428 () ListMap!4841)

(assert (=> d!1487833 (= lt!1840784 e!2920428)))

(declare-fun c!800693 () Bool)

(assert (=> d!1487833 (= c!800693 ((_ is Cons!52258) (t!359538 (toList!5478 lm!2023))))))

(assert (=> d!1487833 (forall!11229 (t!359538 (toList!5478 lm!2023)) lambda!204849)))

(assert (=> d!1487833 (= (extractMap!1820 (t!359538 (toList!5478 lm!2023))) lt!1840784)))

(declare-fun b!4680824 () Bool)

(assert (=> b!4680824 (= e!2920428 (addToMapMapFromBucket!1226 (_2!30080 (h!58471 (t!359538 (toList!5478 lm!2023)))) (extractMap!1820 (t!359538 (t!359538 (toList!5478 lm!2023))))))))

(declare-fun b!4680825 () Bool)

(assert (=> b!4680825 (= e!2920428 (ListMap!4842 Nil!52257))))

(assert (= (and d!1487833 c!800693) b!4680824))

(assert (= (and d!1487833 (not c!800693)) b!4680825))

(declare-fun m!5578253 () Bool)

(assert (=> d!1487833 m!5578253))

(declare-fun m!5578255 () Bool)

(assert (=> d!1487833 m!5578255))

(declare-fun m!5578257 () Bool)

(assert (=> b!4680824 m!5578257))

(assert (=> b!4680824 m!5578257))

(declare-fun m!5578259 () Bool)

(assert (=> b!4680824 m!5578259))

(assert (=> b!4680537 d!1487833))

(declare-fun d!1487835 () Bool)

(declare-fun tail!8451 (List!52382) List!52382)

(assert (=> d!1487835 (= (tail!8448 lm!2023) (ListLongMap!4008 (tail!8451 (toList!5478 lm!2023))))))

(declare-fun bs!1082840 () Bool)

(assert (= bs!1082840 d!1487835))

(declare-fun m!5578261 () Bool)

(assert (=> bs!1082840 m!5578261))

(assert (=> b!4680537 d!1487835))

(declare-fun d!1487837 () Bool)

(declare-fun e!2920445 () Bool)

(assert (=> d!1487837 e!2920445))

(declare-fun res!1972551 () Bool)

(assert (=> d!1487837 (=> res!1972551 e!2920445)))

(declare-fun e!2920442 () Bool)

(assert (=> d!1487837 (= res!1972551 e!2920442)))

(declare-fun res!1972549 () Bool)

(assert (=> d!1487837 (=> (not res!1972549) (not e!2920442))))

(declare-fun lt!1840806 () Bool)

(assert (=> d!1487837 (= res!1972549 (not lt!1840806))))

(declare-fun lt!1840804 () Bool)

(assert (=> d!1487837 (= lt!1840806 lt!1840804)))

(declare-fun lt!1840801 () Unit!122619)

(declare-fun e!2920446 () Unit!122619)

(assert (=> d!1487837 (= lt!1840801 e!2920446)))

(declare-fun c!800701 () Bool)

(assert (=> d!1487837 (= c!800701 lt!1840804)))

(declare-fun containsKey!2943 (List!52381 K!13635) Bool)

(assert (=> d!1487837 (= lt!1840804 (containsKey!2943 (toList!5477 lt!1840345) key!4653))))

(assert (=> d!1487837 (= (contains!15390 lt!1840345 key!4653) lt!1840806)))

(declare-fun b!4680844 () Bool)

(declare-fun e!2920443 () Bool)

(assert (=> b!4680844 (= e!2920445 e!2920443)))

(declare-fun res!1972550 () Bool)

(assert (=> b!4680844 (=> (not res!1972550) (not e!2920443))))

(declare-fun isDefined!9228 (Option!11972) Bool)

(assert (=> b!4680844 (= res!1972550 (isDefined!9228 (getValueByKey!1720 (toList!5477 lt!1840345) key!4653)))))

(declare-fun b!4680845 () Bool)

(declare-fun e!2920444 () List!52384)

(declare-fun getKeysList!818 (List!52381) List!52384)

(assert (=> b!4680845 (= e!2920444 (getKeysList!818 (toList!5477 lt!1840345)))))

(declare-fun b!4680846 () Bool)

(declare-fun lt!1840802 () Unit!122619)

(assert (=> b!4680846 (= e!2920446 lt!1840802)))

(declare-fun lt!1840808 () Unit!122619)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1613 (List!52381 K!13635) Unit!122619)

(assert (=> b!4680846 (= lt!1840808 (lemmaContainsKeyImpliesGetValueByKeyDefined!1613 (toList!5477 lt!1840345) key!4653))))

(assert (=> b!4680846 (isDefined!9228 (getValueByKey!1720 (toList!5477 lt!1840345) key!4653))))

(declare-fun lt!1840803 () Unit!122619)

(assert (=> b!4680846 (= lt!1840803 lt!1840808)))

(declare-fun lemmaInListThenGetKeysListContains!813 (List!52381 K!13635) Unit!122619)

(assert (=> b!4680846 (= lt!1840802 (lemmaInListThenGetKeysListContains!813 (toList!5477 lt!1840345) key!4653))))

(declare-fun call!327177 () Bool)

(assert (=> b!4680846 call!327177))

(declare-fun b!4680847 () Bool)

(declare-fun contains!15394 (List!52384 K!13635) Bool)

(assert (=> b!4680847 (= e!2920442 (not (contains!15394 (keys!18621 lt!1840345) key!4653)))))

(declare-fun b!4680848 () Bool)

(declare-fun e!2920441 () Unit!122619)

(declare-fun Unit!122737 () Unit!122619)

(assert (=> b!4680848 (= e!2920441 Unit!122737)))

(declare-fun b!4680849 () Bool)

(assert (=> b!4680849 (= e!2920446 e!2920441)))

(declare-fun c!800700 () Bool)

(assert (=> b!4680849 (= c!800700 call!327177)))

(declare-fun bm!327172 () Bool)

(assert (=> bm!327172 (= call!327177 (contains!15394 e!2920444 key!4653))))

(declare-fun c!800702 () Bool)

(assert (=> bm!327172 (= c!800702 c!800701)))

(declare-fun b!4680850 () Bool)

(assert (=> b!4680850 (= e!2920444 (keys!18621 lt!1840345))))

(declare-fun b!4680851 () Bool)

(assert (=> b!4680851 (= e!2920443 (contains!15394 (keys!18621 lt!1840345) key!4653))))

(declare-fun b!4680852 () Bool)

(assert (=> b!4680852 false))

(declare-fun lt!1840807 () Unit!122619)

(declare-fun lt!1840805 () Unit!122619)

(assert (=> b!4680852 (= lt!1840807 lt!1840805)))

(assert (=> b!4680852 (containsKey!2943 (toList!5477 lt!1840345) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!817 (List!52381 K!13635) Unit!122619)

(assert (=> b!4680852 (= lt!1840805 (lemmaInGetKeysListThenContainsKey!817 (toList!5477 lt!1840345) key!4653))))

(declare-fun Unit!122738 () Unit!122619)

(assert (=> b!4680852 (= e!2920441 Unit!122738)))

(assert (= (and d!1487837 c!800701) b!4680846))

(assert (= (and d!1487837 (not c!800701)) b!4680849))

(assert (= (and b!4680849 c!800700) b!4680852))

(assert (= (and b!4680849 (not c!800700)) b!4680848))

(assert (= (or b!4680846 b!4680849) bm!327172))

(assert (= (and bm!327172 c!800702) b!4680845))

(assert (= (and bm!327172 (not c!800702)) b!4680850))

(assert (= (and d!1487837 res!1972549) b!4680847))

(assert (= (and d!1487837 (not res!1972551)) b!4680844))

(assert (= (and b!4680844 res!1972550) b!4680851))

(declare-fun m!5578263 () Bool)

(assert (=> b!4680851 m!5578263))

(assert (=> b!4680851 m!5578263))

(declare-fun m!5578265 () Bool)

(assert (=> b!4680851 m!5578265))

(assert (=> b!4680847 m!5578263))

(assert (=> b!4680847 m!5578263))

(assert (=> b!4680847 m!5578265))

(declare-fun m!5578267 () Bool)

(assert (=> b!4680852 m!5578267))

(declare-fun m!5578269 () Bool)

(assert (=> b!4680852 m!5578269))

(declare-fun m!5578271 () Bool)

(assert (=> b!4680846 m!5578271))

(declare-fun m!5578273 () Bool)

(assert (=> b!4680846 m!5578273))

(assert (=> b!4680846 m!5578273))

(declare-fun m!5578275 () Bool)

(assert (=> b!4680846 m!5578275))

(declare-fun m!5578277 () Bool)

(assert (=> b!4680846 m!5578277))

(declare-fun m!5578279 () Bool)

(assert (=> bm!327172 m!5578279))

(declare-fun m!5578281 () Bool)

(assert (=> b!4680845 m!5578281))

(assert (=> d!1487837 m!5578267))

(assert (=> b!4680850 m!5578263))

(assert (=> b!4680844 m!5578273))

(assert (=> b!4680844 m!5578273))

(assert (=> b!4680844 m!5578275))

(assert (=> b!4680538 d!1487837))

(declare-fun d!1487839 () Bool)

(declare-fun e!2920451 () Bool)

(assert (=> d!1487839 e!2920451))

(declare-fun res!1972554 () Bool)

(assert (=> d!1487839 (=> res!1972554 e!2920451)))

(declare-fun e!2920448 () Bool)

(assert (=> d!1487839 (= res!1972554 e!2920448)))

(declare-fun res!1972552 () Bool)

(assert (=> d!1487839 (=> (not res!1972552) (not e!2920448))))

(declare-fun lt!1840814 () Bool)

(assert (=> d!1487839 (= res!1972552 (not lt!1840814))))

(declare-fun lt!1840812 () Bool)

(assert (=> d!1487839 (= lt!1840814 lt!1840812)))

(declare-fun lt!1840809 () Unit!122619)

(declare-fun e!2920452 () Unit!122619)

(assert (=> d!1487839 (= lt!1840809 e!2920452)))

(declare-fun c!800704 () Bool)

(assert (=> d!1487839 (= c!800704 lt!1840812)))

(assert (=> d!1487839 (= lt!1840812 (containsKey!2943 (toList!5477 lt!1840358) key!4653))))

(assert (=> d!1487839 (= (contains!15390 lt!1840358 key!4653) lt!1840814)))

(declare-fun b!4680853 () Bool)

(declare-fun e!2920449 () Bool)

(assert (=> b!4680853 (= e!2920451 e!2920449)))

(declare-fun res!1972553 () Bool)

(assert (=> b!4680853 (=> (not res!1972553) (not e!2920449))))

(assert (=> b!4680853 (= res!1972553 (isDefined!9228 (getValueByKey!1720 (toList!5477 lt!1840358) key!4653)))))

(declare-fun b!4680854 () Bool)

(declare-fun e!2920450 () List!52384)

(assert (=> b!4680854 (= e!2920450 (getKeysList!818 (toList!5477 lt!1840358)))))

(declare-fun b!4680855 () Bool)

(declare-fun lt!1840810 () Unit!122619)

(assert (=> b!4680855 (= e!2920452 lt!1840810)))

(declare-fun lt!1840816 () Unit!122619)

(assert (=> b!4680855 (= lt!1840816 (lemmaContainsKeyImpliesGetValueByKeyDefined!1613 (toList!5477 lt!1840358) key!4653))))

(assert (=> b!4680855 (isDefined!9228 (getValueByKey!1720 (toList!5477 lt!1840358) key!4653))))

(declare-fun lt!1840811 () Unit!122619)

(assert (=> b!4680855 (= lt!1840811 lt!1840816)))

(assert (=> b!4680855 (= lt!1840810 (lemmaInListThenGetKeysListContains!813 (toList!5477 lt!1840358) key!4653))))

(declare-fun call!327178 () Bool)

(assert (=> b!4680855 call!327178))

(declare-fun b!4680856 () Bool)

(assert (=> b!4680856 (= e!2920448 (not (contains!15394 (keys!18621 lt!1840358) key!4653)))))

(declare-fun b!4680857 () Bool)

(declare-fun e!2920447 () Unit!122619)

(declare-fun Unit!122739 () Unit!122619)

(assert (=> b!4680857 (= e!2920447 Unit!122739)))

(declare-fun b!4680858 () Bool)

(assert (=> b!4680858 (= e!2920452 e!2920447)))

(declare-fun c!800703 () Bool)

(assert (=> b!4680858 (= c!800703 call!327178)))

(declare-fun bm!327173 () Bool)

(assert (=> bm!327173 (= call!327178 (contains!15394 e!2920450 key!4653))))

(declare-fun c!800705 () Bool)

(assert (=> bm!327173 (= c!800705 c!800704)))

(declare-fun b!4680859 () Bool)

(assert (=> b!4680859 (= e!2920450 (keys!18621 lt!1840358))))

(declare-fun b!4680860 () Bool)

(assert (=> b!4680860 (= e!2920449 (contains!15394 (keys!18621 lt!1840358) key!4653))))

(declare-fun b!4680861 () Bool)

(assert (=> b!4680861 false))

(declare-fun lt!1840815 () Unit!122619)

(declare-fun lt!1840813 () Unit!122619)

(assert (=> b!4680861 (= lt!1840815 lt!1840813)))

(assert (=> b!4680861 (containsKey!2943 (toList!5477 lt!1840358) key!4653)))

(assert (=> b!4680861 (= lt!1840813 (lemmaInGetKeysListThenContainsKey!817 (toList!5477 lt!1840358) key!4653))))

(declare-fun Unit!122740 () Unit!122619)

(assert (=> b!4680861 (= e!2920447 Unit!122740)))

(assert (= (and d!1487839 c!800704) b!4680855))

(assert (= (and d!1487839 (not c!800704)) b!4680858))

(assert (= (and b!4680858 c!800703) b!4680861))

(assert (= (and b!4680858 (not c!800703)) b!4680857))

(assert (= (or b!4680855 b!4680858) bm!327173))

(assert (= (and bm!327173 c!800705) b!4680854))

(assert (= (and bm!327173 (not c!800705)) b!4680859))

(assert (= (and d!1487839 res!1972552) b!4680856))

(assert (= (and d!1487839 (not res!1972554)) b!4680853))

(assert (= (and b!4680853 res!1972553) b!4680860))

(declare-fun m!5578283 () Bool)

(assert (=> b!4680860 m!5578283))

(assert (=> b!4680860 m!5578283))

(declare-fun m!5578285 () Bool)

(assert (=> b!4680860 m!5578285))

(assert (=> b!4680856 m!5578283))

(assert (=> b!4680856 m!5578283))

(assert (=> b!4680856 m!5578285))

(declare-fun m!5578287 () Bool)

(assert (=> b!4680861 m!5578287))

(declare-fun m!5578289 () Bool)

(assert (=> b!4680861 m!5578289))

(declare-fun m!5578291 () Bool)

(assert (=> b!4680855 m!5578291))

(declare-fun m!5578293 () Bool)

(assert (=> b!4680855 m!5578293))

(assert (=> b!4680855 m!5578293))

(declare-fun m!5578295 () Bool)

(assert (=> b!4680855 m!5578295))

(declare-fun m!5578297 () Bool)

(assert (=> b!4680855 m!5578297))

(declare-fun m!5578299 () Bool)

(assert (=> bm!327173 m!5578299))

(declare-fun m!5578301 () Bool)

(assert (=> b!4680854 m!5578301))

(assert (=> d!1487839 m!5578287))

(assert (=> b!4680859 m!5578283))

(assert (=> b!4680853 m!5578293))

(assert (=> b!4680853 m!5578293))

(assert (=> b!4680853 m!5578295))

(assert (=> b!4680538 d!1487839))

(declare-fun bs!1082841 () Bool)

(declare-fun d!1487841 () Bool)

(assert (= bs!1082841 (and d!1487841 d!1487799)))

(declare-fun lambda!204852 () Int)

(assert (=> bs!1082841 (= lambda!204852 lambda!204836)))

(declare-fun bs!1082842 () Bool)

(assert (= bs!1082842 (and d!1487841 d!1487797)))

(assert (=> bs!1082842 (= lambda!204852 lambda!204835)))

(declare-fun bs!1082843 () Bool)

(assert (= bs!1082843 (and d!1487841 d!1487833)))

(assert (=> bs!1082843 (= lambda!204852 lambda!204849)))

(declare-fun bs!1082844 () Bool)

(assert (= bs!1082844 (and d!1487841 start!472636)))

(assert (=> bs!1082844 (= lambda!204852 lambda!204723)))

(declare-fun bs!1082845 () Bool)

(assert (= bs!1082845 (and d!1487841 d!1487747)))

(assert (=> bs!1082845 (= lambda!204852 lambda!204818)))

(declare-fun bs!1082846 () Bool)

(assert (= bs!1082846 (and d!1487841 d!1487751)))

(assert (=> bs!1082846 (not (= lambda!204852 lambda!204823))))

(assert (=> d!1487841 (not (contains!15390 (extractMap!1820 (toList!5478 (ListLongMap!4008 lt!1840353))) key!4653))))

(declare-fun lt!1840819 () Unit!122619)

(declare-fun choose!32399 (ListLongMap!4007 K!13635 Hashable!6163) Unit!122619)

(assert (=> d!1487841 (= lt!1840819 (choose!32399 (ListLongMap!4008 lt!1840353) key!4653 hashF!1323))))

(assert (=> d!1487841 (forall!11229 (toList!5478 (ListLongMap!4008 lt!1840353)) lambda!204852)))

(assert (=> d!1487841 (= (lemmaNotInItsHashBucketThenNotInMap!394 (ListLongMap!4008 lt!1840353) key!4653 hashF!1323) lt!1840819)))

(declare-fun bs!1082847 () Bool)

(assert (= bs!1082847 d!1487841))

(declare-fun m!5578303 () Bool)

(assert (=> bs!1082847 m!5578303))

(assert (=> bs!1082847 m!5578303))

(declare-fun m!5578305 () Bool)

(assert (=> bs!1082847 m!5578305))

(declare-fun m!5578307 () Bool)

(assert (=> bs!1082847 m!5578307))

(declare-fun m!5578309 () Bool)

(assert (=> bs!1082847 m!5578309))

(assert (=> b!4680538 d!1487841))

(declare-fun d!1487843 () Bool)

(declare-fun res!1972555 () Bool)

(declare-fun e!2920453 () Bool)

(assert (=> d!1487843 (=> res!1972555 e!2920453)))

(assert (=> d!1487843 (= res!1972555 ((_ is Nil!52258) lt!1840349))))

(assert (=> d!1487843 (= (forall!11229 lt!1840349 lambda!204723) e!2920453)))

(declare-fun b!4680862 () Bool)

(declare-fun e!2920454 () Bool)

(assert (=> b!4680862 (= e!2920453 e!2920454)))

(declare-fun res!1972556 () Bool)

(assert (=> b!4680862 (=> (not res!1972556) (not e!2920454))))

(assert (=> b!4680862 (= res!1972556 (dynLambda!21681 lambda!204723 (h!58471 lt!1840349)))))

(declare-fun b!4680863 () Bool)

(assert (=> b!4680863 (= e!2920454 (forall!11229 (t!359538 lt!1840349) lambda!204723))))

(assert (= (and d!1487843 (not res!1972555)) b!4680862))

(assert (= (and b!4680862 res!1972556) b!4680863))

(declare-fun b_lambda!176687 () Bool)

(assert (=> (not b_lambda!176687) (not b!4680862)))

(declare-fun m!5578311 () Bool)

(assert (=> b!4680862 m!5578311))

(declare-fun m!5578313 () Bool)

(assert (=> b!4680863 m!5578313))

(assert (=> b!4680559 d!1487843))

(declare-fun d!1487845 () Bool)

(declare-fun e!2920459 () Bool)

(assert (=> d!1487845 e!2920459))

(declare-fun res!1972559 () Bool)

(assert (=> d!1487845 (=> res!1972559 e!2920459)))

(declare-fun e!2920456 () Bool)

(assert (=> d!1487845 (= res!1972559 e!2920456)))

(declare-fun res!1972557 () Bool)

(assert (=> d!1487845 (=> (not res!1972557) (not e!2920456))))

(declare-fun lt!1840825 () Bool)

(assert (=> d!1487845 (= res!1972557 (not lt!1840825))))

(declare-fun lt!1840823 () Bool)

(assert (=> d!1487845 (= lt!1840825 lt!1840823)))

(declare-fun lt!1840820 () Unit!122619)

(declare-fun e!2920460 () Unit!122619)

(assert (=> d!1487845 (= lt!1840820 e!2920460)))

(declare-fun c!800707 () Bool)

(assert (=> d!1487845 (= c!800707 lt!1840823)))

(assert (=> d!1487845 (= lt!1840823 (containsKey!2943 (toList!5477 lt!1840348) key!4653))))

(assert (=> d!1487845 (= (contains!15390 lt!1840348 key!4653) lt!1840825)))

(declare-fun b!4680864 () Bool)

(declare-fun e!2920457 () Bool)

(assert (=> b!4680864 (= e!2920459 e!2920457)))

(declare-fun res!1972558 () Bool)

(assert (=> b!4680864 (=> (not res!1972558) (not e!2920457))))

(assert (=> b!4680864 (= res!1972558 (isDefined!9228 (getValueByKey!1720 (toList!5477 lt!1840348) key!4653)))))

(declare-fun b!4680865 () Bool)

(declare-fun e!2920458 () List!52384)

(assert (=> b!4680865 (= e!2920458 (getKeysList!818 (toList!5477 lt!1840348)))))

(declare-fun b!4680866 () Bool)

(declare-fun lt!1840821 () Unit!122619)

(assert (=> b!4680866 (= e!2920460 lt!1840821)))

(declare-fun lt!1840827 () Unit!122619)

(assert (=> b!4680866 (= lt!1840827 (lemmaContainsKeyImpliesGetValueByKeyDefined!1613 (toList!5477 lt!1840348) key!4653))))

(assert (=> b!4680866 (isDefined!9228 (getValueByKey!1720 (toList!5477 lt!1840348) key!4653))))

(declare-fun lt!1840822 () Unit!122619)

(assert (=> b!4680866 (= lt!1840822 lt!1840827)))

(assert (=> b!4680866 (= lt!1840821 (lemmaInListThenGetKeysListContains!813 (toList!5477 lt!1840348) key!4653))))

(declare-fun call!327179 () Bool)

(assert (=> b!4680866 call!327179))

(declare-fun b!4680867 () Bool)

(assert (=> b!4680867 (= e!2920456 (not (contains!15394 (keys!18621 lt!1840348) key!4653)))))

(declare-fun b!4680868 () Bool)

(declare-fun e!2920455 () Unit!122619)

(declare-fun Unit!122741 () Unit!122619)

(assert (=> b!4680868 (= e!2920455 Unit!122741)))

(declare-fun b!4680869 () Bool)

(assert (=> b!4680869 (= e!2920460 e!2920455)))

(declare-fun c!800706 () Bool)

(assert (=> b!4680869 (= c!800706 call!327179)))

(declare-fun bm!327174 () Bool)

(assert (=> bm!327174 (= call!327179 (contains!15394 e!2920458 key!4653))))

(declare-fun c!800708 () Bool)

(assert (=> bm!327174 (= c!800708 c!800707)))

(declare-fun b!4680870 () Bool)

(assert (=> b!4680870 (= e!2920458 (keys!18621 lt!1840348))))

(declare-fun b!4680871 () Bool)

(assert (=> b!4680871 (= e!2920457 (contains!15394 (keys!18621 lt!1840348) key!4653))))

(declare-fun b!4680872 () Bool)

(assert (=> b!4680872 false))

(declare-fun lt!1840826 () Unit!122619)

(declare-fun lt!1840824 () Unit!122619)

(assert (=> b!4680872 (= lt!1840826 lt!1840824)))

(assert (=> b!4680872 (containsKey!2943 (toList!5477 lt!1840348) key!4653)))

(assert (=> b!4680872 (= lt!1840824 (lemmaInGetKeysListThenContainsKey!817 (toList!5477 lt!1840348) key!4653))))

(declare-fun Unit!122742 () Unit!122619)

(assert (=> b!4680872 (= e!2920455 Unit!122742)))

(assert (= (and d!1487845 c!800707) b!4680866))

(assert (= (and d!1487845 (not c!800707)) b!4680869))

(assert (= (and b!4680869 c!800706) b!4680872))

(assert (= (and b!4680869 (not c!800706)) b!4680868))

(assert (= (or b!4680866 b!4680869) bm!327174))

(assert (= (and bm!327174 c!800708) b!4680865))

(assert (= (and bm!327174 (not c!800708)) b!4680870))

(assert (= (and d!1487845 res!1972557) b!4680867))

(assert (= (and d!1487845 (not res!1972559)) b!4680864))

(assert (= (and b!4680864 res!1972558) b!4680871))

(declare-fun m!5578315 () Bool)

(assert (=> b!4680871 m!5578315))

(assert (=> b!4680871 m!5578315))

(declare-fun m!5578317 () Bool)

(assert (=> b!4680871 m!5578317))

(assert (=> b!4680867 m!5578315))

(assert (=> b!4680867 m!5578315))

(assert (=> b!4680867 m!5578317))

(declare-fun m!5578319 () Bool)

(assert (=> b!4680872 m!5578319))

(declare-fun m!5578321 () Bool)

(assert (=> b!4680872 m!5578321))

(declare-fun m!5578323 () Bool)

(assert (=> b!4680866 m!5578323))

(declare-fun m!5578325 () Bool)

(assert (=> b!4680866 m!5578325))

(assert (=> b!4680866 m!5578325))

(declare-fun m!5578327 () Bool)

(assert (=> b!4680866 m!5578327))

(declare-fun m!5578329 () Bool)

(assert (=> b!4680866 m!5578329))

(declare-fun m!5578331 () Bool)

(assert (=> bm!327174 m!5578331))

(declare-fun m!5578333 () Bool)

(assert (=> b!4680865 m!5578333))

(assert (=> d!1487845 m!5578319))

(assert (=> b!4680870 m!5578315))

(assert (=> b!4680864 m!5578325))

(assert (=> b!4680864 m!5578325))

(assert (=> b!4680864 m!5578327))

(assert (=> b!4680558 d!1487845))

(declare-fun bs!1082848 () Bool)

(declare-fun d!1487847 () Bool)

(assert (= bs!1082848 (and d!1487847 d!1487799)))

(declare-fun lambda!204853 () Int)

(assert (=> bs!1082848 (= lambda!204853 lambda!204836)))

(declare-fun bs!1082849 () Bool)

(assert (= bs!1082849 (and d!1487847 d!1487797)))

(assert (=> bs!1082849 (= lambda!204853 lambda!204835)))

(declare-fun bs!1082850 () Bool)

(assert (= bs!1082850 (and d!1487847 d!1487833)))

(assert (=> bs!1082850 (= lambda!204853 lambda!204849)))

(declare-fun bs!1082851 () Bool)

(assert (= bs!1082851 (and d!1487847 start!472636)))

(assert (=> bs!1082851 (= lambda!204853 lambda!204723)))

(declare-fun bs!1082852 () Bool)

(assert (= bs!1082852 (and d!1487847 d!1487747)))

(assert (=> bs!1082852 (= lambda!204853 lambda!204818)))

(declare-fun bs!1082853 () Bool)

(assert (= bs!1082853 (and d!1487847 d!1487841)))

(assert (=> bs!1082853 (= lambda!204853 lambda!204852)))

(declare-fun bs!1082854 () Bool)

(assert (= bs!1082854 (and d!1487847 d!1487751)))

(assert (=> bs!1082854 (not (= lambda!204853 lambda!204823))))

(declare-fun lt!1840828 () ListMap!4841)

(assert (=> d!1487847 (invariantList!1378 (toList!5477 lt!1840828))))

(declare-fun e!2920461 () ListMap!4841)

(assert (=> d!1487847 (= lt!1840828 e!2920461)))

(declare-fun c!800709 () Bool)

(assert (=> d!1487847 (= c!800709 ((_ is Cons!52258) (toList!5478 lm!2023)))))

(assert (=> d!1487847 (forall!11229 (toList!5478 lm!2023) lambda!204853)))

(assert (=> d!1487847 (= (extractMap!1820 (toList!5478 lm!2023)) lt!1840828)))

(declare-fun b!4680873 () Bool)

(assert (=> b!4680873 (= e!2920461 (addToMapMapFromBucket!1226 (_2!30080 (h!58471 (toList!5478 lm!2023))) (extractMap!1820 (t!359538 (toList!5478 lm!2023)))))))

(declare-fun b!4680874 () Bool)

(assert (=> b!4680874 (= e!2920461 (ListMap!4842 Nil!52257))))

(assert (= (and d!1487847 c!800709) b!4680873))

(assert (= (and d!1487847 (not c!800709)) b!4680874))

(declare-fun m!5578335 () Bool)

(assert (=> d!1487847 m!5578335))

(declare-fun m!5578337 () Bool)

(assert (=> d!1487847 m!5578337))

(assert (=> b!4680873 m!5577469))

(assert (=> b!4680873 m!5577469))

(declare-fun m!5578339 () Bool)

(assert (=> b!4680873 m!5578339))

(assert (=> b!4680558 d!1487847))

(declare-fun d!1487849 () Bool)

(declare-fun hash!3976 (Hashable!6163 K!13635) (_ BitVec 64))

(assert (=> d!1487849 (= (hash!3974 hashF!1323 key!4653) (hash!3976 hashF!1323 key!4653))))

(declare-fun bs!1082855 () Bool)

(assert (= bs!1082855 d!1487849))

(declare-fun m!5578341 () Bool)

(assert (=> bs!1082855 m!5578341))

(assert (=> b!4680547 d!1487849))

(declare-fun b!4680879 () Bool)

(declare-fun e!2920464 () Bool)

(declare-fun tp!1345072 () Bool)

(declare-fun tp!1345073 () Bool)

(assert (=> b!4680879 (= e!2920464 (and tp!1345072 tp!1345073))))

(assert (=> b!4680549 (= tp!1345055 e!2920464)))

(assert (= (and b!4680549 ((_ is Cons!52258) (toList!5478 lm!2023))) b!4680879))

(declare-fun e!2920467 () Bool)

(declare-fun tp!1345076 () Bool)

(declare-fun b!4680884 () Bool)

(assert (=> b!4680884 (= e!2920467 (and tp_is_empty!30469 tp_is_empty!30471 tp!1345076))))

(assert (=> b!4680550 (= tp!1345057 e!2920467)))

(assert (= (and b!4680550 ((_ is Cons!52257) (t!359537 oldBucket!34))) b!4680884))

(declare-fun tp!1345077 () Bool)

(declare-fun b!4680885 () Bool)

(declare-fun e!2920468 () Bool)

(assert (=> b!4680885 (= e!2920468 (and tp_is_empty!30469 tp_is_empty!30471 tp!1345077))))

(assert (=> b!4680557 (= tp!1345056 e!2920468)))

(assert (= (and b!4680557 ((_ is Cons!52257) (t!359537 newBucket!218))) b!4680885))

(declare-fun b_lambda!176689 () Bool)

(assert (= b_lambda!176687 (or start!472636 b_lambda!176689)))

(declare-fun bs!1082856 () Bool)

(declare-fun d!1487851 () Bool)

(assert (= bs!1082856 (and d!1487851 start!472636)))

(assert (=> bs!1082856 (= (dynLambda!21681 lambda!204723 (h!58471 lt!1840349)) (noDuplicateKeys!1794 (_2!30080 (h!58471 lt!1840349))))))

(declare-fun m!5578343 () Bool)

(assert (=> bs!1082856 m!5578343))

(assert (=> b!4680862 d!1487851))

(declare-fun b_lambda!176691 () Bool)

(assert (= b_lambda!176681 (or start!472636 b_lambda!176691)))

(declare-fun bs!1082857 () Bool)

(declare-fun d!1487853 () Bool)

(assert (= bs!1082857 (and d!1487853 start!472636)))

(assert (=> bs!1082857 (= (dynLambda!21681 lambda!204723 (h!58471 (toList!5478 lm!2023))) (noDuplicateKeys!1794 (_2!30080 (h!58471 (toList!5478 lm!2023)))))))

(assert (=> bs!1082857 m!5578221))

(assert (=> b!4680805 d!1487853))

(check-sat (not bm!327172) (not b!4680681) (not d!1487687) (not b!4680682) (not b!4680822) (not d!1487745) (not d!1487835) (not b!4680795) (not bm!327156) (not b!4680845) (not d!1487845) (not d!1487727) (not bm!327149) (not d!1487721) (not d!1487769) (not d!1487841) (not d!1487723) (not d!1487733) (not b!4680680) (not b!4680855) (not d!1487809) (not bm!327157) (not b!4680679) (not bm!327158) (not b!4680873) (not d!1487827) (not d!1487839) (not d!1487823) (not bm!327168) (not b!4680867) (not b_lambda!176689) (not d!1487831) (not b!4680847) (not b!4680870) (not b!4680662) (not b!4680577) (not b!4680853) (not d!1487849) tp_is_empty!30471 (not d!1487739) (not d!1487783) (not d!1487747) (not b!4680711) (not b!4680852) (not b!4680758) (not bs!1082857) (not b!4680651) (not d!1487729) (not d!1487833) (not b!4680872) (not d!1487847) (not b!4680677) (not d!1487741) (not b!4680678) (not bm!327159) (not b!4680851) (not d!1487817) (not d!1487803) (not b!4680863) (not b!4680856) (not b!4680865) (not b!4680759) (not bm!327169) (not bm!327160) (not d!1487797) (not d!1487807) (not bs!1082856) (not b!4680784) (not bm!327145) (not bm!327146) (not b!4680663) (not bm!327167) (not d!1487837) (not b!4680871) (not b!4680846) (not bm!327148) (not d!1487761) (not b!4680860) (not b!4680859) (not b!4680824) (not b!4680654) (not b!4680854) (not b!4680821) (not bm!327174) (not b!4680665) (not b!4680653) (not b!4680739) (not b!4680820) (not bm!327147) (not b_lambda!176691) (not b!4680793) (not b!4680861) (not bm!327173) (not b!4680775) (not b!4680794) (not d!1487751) (not b!4680777) (not b!4680866) (not d!1487811) (not b!4680576) (not b!4680760) (not d!1487799) (not b!4680806) (not bm!327155) (not b!4680884) (not d!1487819) (not b!4680792) (not b!4680652) (not b!4680766) (not b!4680844) tp_is_empty!30469 (not b!4680664) (not b!4680768) (not d!1487821) (not b!4680879) (not b!4680761) (not b!4680817) (not b!4680864) (not b!4680850) (not b!4680819) (not bm!327144) (not b!4680885) (not d!1487735) (not b!4680767) (not b!4680769))
(check-sat)
