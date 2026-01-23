; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417304 () Bool)

(assert start!417304)

(declare-fun b!4330419 () Bool)

(declare-fun e!2694620 () Bool)

(declare-datatypes ((K!9883 0))(
  ( (K!9884 (val!16177 Int)) )
))
(declare-datatypes ((V!10129 0))(
  ( (V!10130 (val!16178 Int)) )
))
(declare-datatypes ((tuple2!47674 0))(
  ( (tuple2!47675 (_1!27131 K!9883) (_2!27131 V!10129)) )
))
(declare-datatypes ((List!48665 0))(
  ( (Nil!48541) (Cons!48541 (h!54020 tuple2!47674) (t!355577 List!48665)) )
))
(declare-datatypes ((tuple2!47676 0))(
  ( (tuple2!47677 (_1!27132 (_ BitVec 64)) (_2!27132 List!48665)) )
))
(declare-datatypes ((List!48666 0))(
  ( (Nil!48542) (Cons!48542 (h!54021 tuple2!47676) (t!355578 List!48666)) )
))
(declare-datatypes ((ListLongMap!1285 0))(
  ( (ListLongMap!1286 (toList!2643 List!48666)) )
))
(declare-fun lt!1545446 () ListLongMap!1285)

(declare-datatypes ((Hashable!4718 0))(
  ( (HashableExt!4717 (__x!30421 Int)) )
))
(declare-fun hashF!1461 () Hashable!4718)

(declare-fun allKeysSameHashInMap!430 (ListLongMap!1285 Hashable!4718) Bool)

(assert (=> b!4330419 (= e!2694620 (allKeysSameHashInMap!430 lt!1545446 hashF!1461))))

(declare-fun b!4330421 () Bool)

(declare-fun res!1774948 () Bool)

(declare-fun e!2694619 () Bool)

(assert (=> b!4330421 (=> (not res!1774948) (not e!2694619))))

(declare-fun lt!1545449 () ListLongMap!1285)

(assert (=> b!4330421 (= res!1774948 (allKeysSameHashInMap!430 lt!1545449 hashF!1461))))

(declare-fun b!4330422 () Bool)

(declare-fun res!1774945 () Bool)

(declare-fun e!2694622 () Bool)

(assert (=> b!4330422 (=> (not res!1774945) (not e!2694622))))

(declare-fun newBucket!230 () List!48665)

(declare-fun noDuplicateKeys!338 (List!48665) Bool)

(assert (=> b!4330422 (= res!1774945 (noDuplicateKeys!338 newBucket!230))))

(declare-fun tp_is_empty!24541 () Bool)

(declare-fun tp!1328404 () Bool)

(declare-fun e!2694621 () Bool)

(declare-fun tp_is_empty!24543 () Bool)

(declare-fun b!4330423 () Bool)

(assert (=> b!4330423 (= e!2694621 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328404))))

(declare-fun b!4330424 () Bool)

(assert (=> b!4330424 (= e!2694619 (not e!2694620))))

(declare-fun res!1774950 () Bool)

(assert (=> b!4330424 (=> (not res!1774950) (not e!2694620))))

(declare-fun lambda!134553 () Int)

(declare-fun forall!8873 (List!48666 Int) Bool)

(assert (=> b!4330424 (= res!1774950 (forall!8873 (toList!2643 lt!1545446) lambda!134553))))

(declare-fun lm!2227 () ListLongMap!1285)

(declare-fun lt!1545447 () tuple2!47676)

(declare-fun +!380 (ListLongMap!1285 tuple2!47676) ListLongMap!1285)

(assert (=> b!4330424 (= lt!1545446 (+!380 lm!2227 lt!1545447))))

(declare-fun e!2694623 () Bool)

(assert (=> b!4330424 e!2694623))

(declare-fun res!1774952 () Bool)

(assert (=> b!4330424 (=> (not res!1774952) (not e!2694623))))

(declare-fun lt!1545448 () ListLongMap!1285)

(assert (=> b!4330424 (= res!1774952 (forall!8873 (toList!2643 lt!1545448) lambda!134553))))

(assert (=> b!4330424 (= lt!1545448 (+!380 lt!1545449 lt!1545447))))

(declare-fun hash!427 () (_ BitVec 64))

(assert (=> b!4330424 (= lt!1545447 (tuple2!47677 hash!427 newBucket!230))))

(declare-datatypes ((Unit!68141 0))(
  ( (Unit!68142) )
))
(declare-fun lt!1545450 () Unit!68141)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!204 (ListLongMap!1285 (_ BitVec 64) List!48665 Hashable!4718) Unit!68141)

(assert (=> b!4330424 (= lt!1545450 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!204 lt!1545449 hash!427 newBucket!230 hashF!1461))))

(declare-fun b!4330425 () Bool)

(assert (=> b!4330425 (= e!2694623 (allKeysSameHashInMap!430 lt!1545448 hashF!1461))))

(declare-fun b!4330426 () Bool)

(declare-fun res!1774944 () Bool)

(assert (=> b!4330426 (=> (not res!1774944) (not e!2694622))))

(declare-fun allKeysSameHash!286 (List!48665 (_ BitVec 64) Hashable!4718) Bool)

(assert (=> b!4330426 (= res!1774944 (allKeysSameHash!286 newBucket!230 hash!427 hashF!1461))))

(declare-fun b!4330427 () Bool)

(assert (=> b!4330427 (= e!2694622 e!2694619)))

(declare-fun res!1774946 () Bool)

(assert (=> b!4330427 (=> (not res!1774946) (not e!2694619))))

(assert (=> b!4330427 (= res!1774946 (forall!8873 (t!355578 (toList!2643 lm!2227)) lambda!134553))))

(assert (=> b!4330427 (= lt!1545449 (ListLongMap!1286 (t!355578 (toList!2643 lm!2227))))))

(declare-fun b!4330420 () Bool)

(declare-fun res!1774949 () Bool)

(assert (=> b!4330420 (=> (not res!1774949) (not e!2694622))))

(assert (=> b!4330420 (= res!1774949 (allKeysSameHashInMap!430 lm!2227 hashF!1461))))

(declare-fun res!1774947 () Bool)

(assert (=> start!417304 (=> (not res!1774947) (not e!2694622))))

(assert (=> start!417304 (= res!1774947 (forall!8873 (toList!2643 lm!2227) lambda!134553))))

(assert (=> start!417304 e!2694622))

(declare-fun e!2694618 () Bool)

(declare-fun inv!64070 (ListLongMap!1285) Bool)

(assert (=> start!417304 (and (inv!64070 lm!2227) e!2694618)))

(assert (=> start!417304 true))

(assert (=> start!417304 e!2694621))

(declare-fun b!4330428 () Bool)

(declare-fun res!1774951 () Bool)

(assert (=> b!4330428 (=> (not res!1774951) (not e!2694622))))

(assert (=> b!4330428 (= res!1774951 (is-Cons!48542 (toList!2643 lm!2227)))))

(declare-fun b!4330429 () Bool)

(declare-fun tp!1328403 () Bool)

(assert (=> b!4330429 (= e!2694618 tp!1328403)))

(assert (= (and start!417304 res!1774947) b!4330420))

(assert (= (and b!4330420 res!1774949) b!4330422))

(assert (= (and b!4330422 res!1774945) b!4330426))

(assert (= (and b!4330426 res!1774944) b!4330428))

(assert (= (and b!4330428 res!1774951) b!4330427))

(assert (= (and b!4330427 res!1774946) b!4330421))

(assert (= (and b!4330421 res!1774948) b!4330424))

(assert (= (and b!4330424 res!1774952) b!4330425))

(assert (= (and b!4330424 res!1774950) b!4330419))

(assert (= start!417304 b!4330429))

(assert (= (and start!417304 (is-Cons!48541 newBucket!230)) b!4330423))

(declare-fun m!4924467 () Bool)

(assert (=> b!4330427 m!4924467))

(declare-fun m!4924469 () Bool)

(assert (=> b!4330419 m!4924469))

(declare-fun m!4924471 () Bool)

(assert (=> b!4330425 m!4924471))

(declare-fun m!4924473 () Bool)

(assert (=> b!4330424 m!4924473))

(declare-fun m!4924475 () Bool)

(assert (=> b!4330424 m!4924475))

(declare-fun m!4924477 () Bool)

(assert (=> b!4330424 m!4924477))

(declare-fun m!4924479 () Bool)

(assert (=> b!4330424 m!4924479))

(declare-fun m!4924481 () Bool)

(assert (=> b!4330424 m!4924481))

(declare-fun m!4924483 () Bool)

(assert (=> b!4330426 m!4924483))

(declare-fun m!4924485 () Bool)

(assert (=> start!417304 m!4924485))

(declare-fun m!4924487 () Bool)

(assert (=> start!417304 m!4924487))

(declare-fun m!4924489 () Bool)

(assert (=> b!4330421 m!4924489))

(declare-fun m!4924491 () Bool)

(assert (=> b!4330422 m!4924491))

(declare-fun m!4924493 () Bool)

(assert (=> b!4330420 m!4924493))

(push 1)

(assert (not b!4330425))

(assert (not b!4330421))

(assert (not start!417304))

(assert tp_is_empty!24541)

(assert (not b!4330423))

(assert (not b!4330426))

(assert (not b!4330429))

(assert tp_is_empty!24543)

(assert (not b!4330424))

(assert (not b!4330420))

(assert (not b!4330419))

(assert (not b!4330422))

(assert (not b!4330427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272705 () Bool)

(declare-fun res!1774984 () Bool)

(declare-fun e!2694646 () Bool)

(assert (=> d!1272705 (=> res!1774984 e!2694646)))

(assert (=> d!1272705 (= res!1774984 (is-Nil!48542 (toList!2643 lm!2227)))))

(assert (=> d!1272705 (= (forall!8873 (toList!2643 lm!2227) lambda!134553) e!2694646)))

(declare-fun b!4330467 () Bool)

(declare-fun e!2694647 () Bool)

(assert (=> b!4330467 (= e!2694646 e!2694647)))

(declare-fun res!1774985 () Bool)

(assert (=> b!4330467 (=> (not res!1774985) (not e!2694647))))

(declare-fun dynLambda!20542 (Int tuple2!47676) Bool)

(assert (=> b!4330467 (= res!1774985 (dynLambda!20542 lambda!134553 (h!54021 (toList!2643 lm!2227))))))

(declare-fun b!4330468 () Bool)

(assert (=> b!4330468 (= e!2694647 (forall!8873 (t!355578 (toList!2643 lm!2227)) lambda!134553))))

(assert (= (and d!1272705 (not res!1774984)) b!4330467))

(assert (= (and b!4330467 res!1774985) b!4330468))

(declare-fun b_lambda!127683 () Bool)

(assert (=> (not b_lambda!127683) (not b!4330467)))

(declare-fun m!4924523 () Bool)

(assert (=> b!4330467 m!4924523))

(assert (=> b!4330468 m!4924467))

(assert (=> start!417304 d!1272705))

(declare-fun d!1272707 () Bool)

(declare-fun isStrictlySorted!34 (List!48666) Bool)

(assert (=> d!1272707 (= (inv!64070 lm!2227) (isStrictlySorted!34 (toList!2643 lm!2227)))))

(declare-fun bs!607729 () Bool)

(assert (= bs!607729 d!1272707))

(declare-fun m!4924525 () Bool)

(assert (=> bs!607729 m!4924525))

(assert (=> start!417304 d!1272707))

(declare-fun bs!607730 () Bool)

(declare-fun d!1272709 () Bool)

(assert (= bs!607730 (and d!1272709 start!417304)))

(declare-fun lambda!134567 () Int)

(assert (=> bs!607730 (= lambda!134567 lambda!134553)))

(declare-fun e!2694650 () Bool)

(assert (=> d!1272709 e!2694650))

(declare-fun res!1774988 () Bool)

(assert (=> d!1272709 (=> (not res!1774988) (not e!2694650))))

(declare-fun lt!1545471 () ListLongMap!1285)

(assert (=> d!1272709 (= res!1774988 (forall!8873 (toList!2643 lt!1545471) lambda!134567))))

(assert (=> d!1272709 (= lt!1545471 (+!380 lt!1545449 (tuple2!47677 hash!427 newBucket!230)))))

(declare-fun lt!1545470 () Unit!68141)

(declare-fun choose!26481 (ListLongMap!1285 (_ BitVec 64) List!48665 Hashable!4718) Unit!68141)

(assert (=> d!1272709 (= lt!1545470 (choose!26481 lt!1545449 hash!427 newBucket!230 hashF!1461))))

(assert (=> d!1272709 (forall!8873 (toList!2643 lt!1545449) lambda!134567)))

(assert (=> d!1272709 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!204 lt!1545449 hash!427 newBucket!230 hashF!1461) lt!1545470)))

(declare-fun b!4330471 () Bool)

(assert (=> b!4330471 (= e!2694650 (allKeysSameHashInMap!430 lt!1545471 hashF!1461))))

(assert (= (and d!1272709 res!1774988) b!4330471))

(declare-fun m!4924527 () Bool)

(assert (=> d!1272709 m!4924527))

(declare-fun m!4924529 () Bool)

(assert (=> d!1272709 m!4924529))

(declare-fun m!4924531 () Bool)

(assert (=> d!1272709 m!4924531))

(declare-fun m!4924533 () Bool)

(assert (=> d!1272709 m!4924533))

(declare-fun m!4924535 () Bool)

(assert (=> b!4330471 m!4924535))

(assert (=> b!4330424 d!1272709))

(declare-fun d!1272711 () Bool)

(declare-fun e!2694659 () Bool)

(assert (=> d!1272711 e!2694659))

(declare-fun res!1775000 () Bool)

(assert (=> d!1272711 (=> (not res!1775000) (not e!2694659))))

(declare-fun lt!1545483 () ListLongMap!1285)

(declare-fun contains!10555 (ListLongMap!1285 (_ BitVec 64)) Bool)

(assert (=> d!1272711 (= res!1775000 (contains!10555 lt!1545483 (_1!27132 lt!1545447)))))

(declare-fun lt!1545480 () List!48666)

(assert (=> d!1272711 (= lt!1545483 (ListLongMap!1286 lt!1545480))))

(declare-fun lt!1545481 () Unit!68141)

(declare-fun lt!1545482 () Unit!68141)

(assert (=> d!1272711 (= lt!1545481 lt!1545482)))

(declare-datatypes ((Option!10332 0))(
  ( (None!10331) (Some!10331 (v!43027 List!48665)) )
))
(declare-fun getValueByKey!318 (List!48666 (_ BitVec 64)) Option!10332)

(assert (=> d!1272711 (= (getValueByKey!318 lt!1545480 (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447)))))

(declare-fun lemmaContainsTupThenGetReturnValue!111 (List!48666 (_ BitVec 64) List!48665) Unit!68141)

(assert (=> d!1272711 (= lt!1545482 (lemmaContainsTupThenGetReturnValue!111 lt!1545480 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(declare-fun insertStrictlySorted!66 (List!48666 (_ BitVec 64) List!48665) List!48666)

(assert (=> d!1272711 (= lt!1545480 (insertStrictlySorted!66 (toList!2643 lt!1545449) (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (=> d!1272711 (= (+!380 lt!1545449 lt!1545447) lt!1545483)))

(declare-fun b!4330482 () Bool)

(declare-fun res!1774999 () Bool)

(assert (=> b!4330482 (=> (not res!1774999) (not e!2694659))))

(assert (=> b!4330482 (= res!1774999 (= (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447))))))

(declare-fun b!4330483 () Bool)

(declare-fun contains!10556 (List!48666 tuple2!47676) Bool)

(assert (=> b!4330483 (= e!2694659 (contains!10556 (toList!2643 lt!1545483) lt!1545447))))

(assert (= (and d!1272711 res!1775000) b!4330482))

(assert (= (and b!4330482 res!1774999) b!4330483))

(declare-fun m!4924541 () Bool)

(assert (=> d!1272711 m!4924541))

(declare-fun m!4924543 () Bool)

(assert (=> d!1272711 m!4924543))

(declare-fun m!4924545 () Bool)

(assert (=> d!1272711 m!4924545))

(declare-fun m!4924547 () Bool)

(assert (=> d!1272711 m!4924547))

(declare-fun m!4924549 () Bool)

(assert (=> b!4330482 m!4924549))

(declare-fun m!4924551 () Bool)

(assert (=> b!4330483 m!4924551))

(assert (=> b!4330424 d!1272711))

(declare-fun d!1272717 () Bool)

(declare-fun res!1775003 () Bool)

(declare-fun e!2694662 () Bool)

(assert (=> d!1272717 (=> res!1775003 e!2694662)))

(assert (=> d!1272717 (= res!1775003 (is-Nil!48542 (toList!2643 lt!1545448)))))

(assert (=> d!1272717 (= (forall!8873 (toList!2643 lt!1545448) lambda!134553) e!2694662)))

(declare-fun b!4330486 () Bool)

(declare-fun e!2694663 () Bool)

(assert (=> b!4330486 (= e!2694662 e!2694663)))

(declare-fun res!1775004 () Bool)

(assert (=> b!4330486 (=> (not res!1775004) (not e!2694663))))

(assert (=> b!4330486 (= res!1775004 (dynLambda!20542 lambda!134553 (h!54021 (toList!2643 lt!1545448))))))

(declare-fun b!4330487 () Bool)

(assert (=> b!4330487 (= e!2694663 (forall!8873 (t!355578 (toList!2643 lt!1545448)) lambda!134553))))

(assert (= (and d!1272717 (not res!1775003)) b!4330486))

(assert (= (and b!4330486 res!1775004) b!4330487))

(declare-fun b_lambda!127687 () Bool)

(assert (=> (not b_lambda!127687) (not b!4330486)))

(declare-fun m!4924553 () Bool)

(assert (=> b!4330486 m!4924553))

(declare-fun m!4924555 () Bool)

(assert (=> b!4330487 m!4924555))

(assert (=> b!4330424 d!1272717))

(declare-fun d!1272719 () Bool)

(declare-fun e!2694664 () Bool)

(assert (=> d!1272719 e!2694664))

(declare-fun res!1775006 () Bool)

(assert (=> d!1272719 (=> (not res!1775006) (not e!2694664))))

(declare-fun lt!1545487 () ListLongMap!1285)

(assert (=> d!1272719 (= res!1775006 (contains!10555 lt!1545487 (_1!27132 lt!1545447)))))

(declare-fun lt!1545484 () List!48666)

(assert (=> d!1272719 (= lt!1545487 (ListLongMap!1286 lt!1545484))))

(declare-fun lt!1545485 () Unit!68141)

(declare-fun lt!1545486 () Unit!68141)

(assert (=> d!1272719 (= lt!1545485 lt!1545486)))

(assert (=> d!1272719 (= (getValueByKey!318 lt!1545484 (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447)))))

(assert (=> d!1272719 (= lt!1545486 (lemmaContainsTupThenGetReturnValue!111 lt!1545484 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (=> d!1272719 (= lt!1545484 (insertStrictlySorted!66 (toList!2643 lm!2227) (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (=> d!1272719 (= (+!380 lm!2227 lt!1545447) lt!1545487)))

(declare-fun b!4330488 () Bool)

(declare-fun res!1775005 () Bool)

(assert (=> b!4330488 (=> (not res!1775005) (not e!2694664))))

(assert (=> b!4330488 (= res!1775005 (= (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447))))))

(declare-fun b!4330489 () Bool)

(assert (=> b!4330489 (= e!2694664 (contains!10556 (toList!2643 lt!1545487) lt!1545447))))

(assert (= (and d!1272719 res!1775006) b!4330488))

(assert (= (and b!4330488 res!1775005) b!4330489))

(declare-fun m!4924559 () Bool)

(assert (=> d!1272719 m!4924559))

(declare-fun m!4924561 () Bool)

(assert (=> d!1272719 m!4924561))

(declare-fun m!4924563 () Bool)

(assert (=> d!1272719 m!4924563))

(declare-fun m!4924565 () Bool)

(assert (=> d!1272719 m!4924565))

(declare-fun m!4924567 () Bool)

(assert (=> b!4330488 m!4924567))

(declare-fun m!4924569 () Bool)

(assert (=> b!4330489 m!4924569))

(assert (=> b!4330424 d!1272719))

(declare-fun d!1272723 () Bool)

(declare-fun res!1775007 () Bool)

(declare-fun e!2694665 () Bool)

(assert (=> d!1272723 (=> res!1775007 e!2694665)))

(assert (=> d!1272723 (= res!1775007 (is-Nil!48542 (toList!2643 lt!1545446)))))

(assert (=> d!1272723 (= (forall!8873 (toList!2643 lt!1545446) lambda!134553) e!2694665)))

(declare-fun b!4330490 () Bool)

(declare-fun e!2694666 () Bool)

(assert (=> b!4330490 (= e!2694665 e!2694666)))

(declare-fun res!1775008 () Bool)

(assert (=> b!4330490 (=> (not res!1775008) (not e!2694666))))

(assert (=> b!4330490 (= res!1775008 (dynLambda!20542 lambda!134553 (h!54021 (toList!2643 lt!1545446))))))

(declare-fun b!4330491 () Bool)

(assert (=> b!4330491 (= e!2694666 (forall!8873 (t!355578 (toList!2643 lt!1545446)) lambda!134553))))

(assert (= (and d!1272723 (not res!1775007)) b!4330490))

(assert (= (and b!4330490 res!1775008) b!4330491))

(declare-fun b_lambda!127691 () Bool)

(assert (=> (not b_lambda!127691) (not b!4330490)))

(declare-fun m!4924571 () Bool)

(assert (=> b!4330490 m!4924571))

(declare-fun m!4924573 () Bool)

(assert (=> b!4330491 m!4924573))

(assert (=> b!4330424 d!1272723))

(declare-fun bs!607731 () Bool)

(declare-fun d!1272725 () Bool)

(assert (= bs!607731 (and d!1272725 start!417304)))

(declare-fun lambda!134570 () Int)

(assert (=> bs!607731 (not (= lambda!134570 lambda!134553))))

(declare-fun bs!607732 () Bool)

(assert (= bs!607732 (and d!1272725 d!1272709)))

(assert (=> bs!607732 (not (= lambda!134570 lambda!134567))))

(assert (=> d!1272725 true))

(assert (=> d!1272725 (= (allKeysSameHashInMap!430 lt!1545446 hashF!1461) (forall!8873 (toList!2643 lt!1545446) lambda!134570))))

(declare-fun bs!607734 () Bool)

(assert (= bs!607734 d!1272725))

(declare-fun m!4924577 () Bool)

(assert (=> bs!607734 m!4924577))

(assert (=> b!4330419 d!1272725))

(declare-fun bs!607735 () Bool)

(declare-fun d!1272727 () Bool)

(assert (= bs!607735 (and d!1272727 start!417304)))

(declare-fun lambda!134571 () Int)

(assert (=> bs!607735 (not (= lambda!134571 lambda!134553))))

(declare-fun bs!607736 () Bool)

(assert (= bs!607736 (and d!1272727 d!1272709)))

(assert (=> bs!607736 (not (= lambda!134571 lambda!134567))))

(declare-fun bs!607737 () Bool)

(assert (= bs!607737 (and d!1272727 d!1272725)))

(assert (=> bs!607737 (= lambda!134571 lambda!134570)))

(assert (=> d!1272727 true))

(assert (=> d!1272727 (= (allKeysSameHashInMap!430 lt!1545448 hashF!1461) (forall!8873 (toList!2643 lt!1545448) lambda!134571))))

(declare-fun bs!607738 () Bool)

(assert (= bs!607738 d!1272727))

(declare-fun m!4924579 () Bool)

(assert (=> bs!607738 m!4924579))

(assert (=> b!4330425 d!1272727))

(declare-fun bs!607739 () Bool)

(declare-fun d!1272731 () Bool)

(assert (= bs!607739 (and d!1272731 start!417304)))

(declare-fun lambda!134572 () Int)

(assert (=> bs!607739 (not (= lambda!134572 lambda!134553))))

(declare-fun bs!607740 () Bool)

(assert (= bs!607740 (and d!1272731 d!1272709)))

(assert (=> bs!607740 (not (= lambda!134572 lambda!134567))))

(declare-fun bs!607741 () Bool)

(assert (= bs!607741 (and d!1272731 d!1272725)))

(assert (=> bs!607741 (= lambda!134572 lambda!134570)))

(declare-fun bs!607742 () Bool)

(assert (= bs!607742 (and d!1272731 d!1272727)))

(assert (=> bs!607742 (= lambda!134572 lambda!134571)))

(assert (=> d!1272731 true))

(assert (=> d!1272731 (= (allKeysSameHashInMap!430 lm!2227 hashF!1461) (forall!8873 (toList!2643 lm!2227) lambda!134572))))

(declare-fun bs!607743 () Bool)

(assert (= bs!607743 d!1272731))

(declare-fun m!4924581 () Bool)

(assert (=> bs!607743 m!4924581))

(assert (=> b!4330420 d!1272731))

(declare-fun d!1272733 () Bool)

(assert (=> d!1272733 true))

(assert (=> d!1272733 true))

(declare-fun lambda!134575 () Int)

(declare-fun forall!8875 (List!48665 Int) Bool)

(assert (=> d!1272733 (= (allKeysSameHash!286 newBucket!230 hash!427 hashF!1461) (forall!8875 newBucket!230 lambda!134575))))

(declare-fun bs!607744 () Bool)

(assert (= bs!607744 d!1272733))

(declare-fun m!4924583 () Bool)

(assert (=> bs!607744 m!4924583))

(assert (=> b!4330426 d!1272733))

(declare-fun bs!607745 () Bool)

(declare-fun d!1272735 () Bool)

(assert (= bs!607745 (and d!1272735 d!1272709)))

(declare-fun lambda!134578 () Int)

(assert (=> bs!607745 (not (= lambda!134578 lambda!134567))))

(declare-fun bs!607746 () Bool)

(assert (= bs!607746 (and d!1272735 d!1272731)))

(assert (=> bs!607746 (= lambda!134578 lambda!134572)))

(declare-fun bs!607747 () Bool)

(assert (= bs!607747 (and d!1272735 start!417304)))

(assert (=> bs!607747 (not (= lambda!134578 lambda!134553))))

(declare-fun bs!607748 () Bool)

(assert (= bs!607748 (and d!1272735 d!1272725)))

(assert (=> bs!607748 (= lambda!134578 lambda!134570)))

(declare-fun bs!607749 () Bool)

(assert (= bs!607749 (and d!1272735 d!1272727)))

(assert (=> bs!607749 (= lambda!134578 lambda!134571)))

(assert (=> d!1272735 true))

(assert (=> d!1272735 (= (allKeysSameHashInMap!430 lt!1545449 hashF!1461) (forall!8873 (toList!2643 lt!1545449) lambda!134578))))

(declare-fun bs!607750 () Bool)

(assert (= bs!607750 d!1272735))

(declare-fun m!4924585 () Bool)

(assert (=> bs!607750 m!4924585))

(assert (=> b!4330421 d!1272735))

(declare-fun d!1272737 () Bool)

(declare-fun res!1775009 () Bool)

(declare-fun e!2694667 () Bool)

(assert (=> d!1272737 (=> res!1775009 e!2694667)))

(assert (=> d!1272737 (= res!1775009 (is-Nil!48542 (t!355578 (toList!2643 lm!2227))))))

(assert (=> d!1272737 (= (forall!8873 (t!355578 (toList!2643 lm!2227)) lambda!134553) e!2694667)))

(declare-fun b!4330498 () Bool)

(declare-fun e!2694668 () Bool)

(assert (=> b!4330498 (= e!2694667 e!2694668)))

(declare-fun res!1775010 () Bool)

(assert (=> b!4330498 (=> (not res!1775010) (not e!2694668))))

(assert (=> b!4330498 (= res!1775010 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (toList!2643 lm!2227)))))))

(declare-fun b!4330499 () Bool)

(assert (=> b!4330499 (= e!2694668 (forall!8873 (t!355578 (t!355578 (toList!2643 lm!2227))) lambda!134553))))

(assert (= (and d!1272737 (not res!1775009)) b!4330498))

(assert (= (and b!4330498 res!1775010) b!4330499))

(declare-fun b_lambda!127693 () Bool)

(assert (=> (not b_lambda!127693) (not b!4330498)))

(declare-fun m!4924587 () Bool)

(assert (=> b!4330498 m!4924587))

(declare-fun m!4924589 () Bool)

(assert (=> b!4330499 m!4924589))

(assert (=> b!4330427 d!1272737))

(declare-fun d!1272739 () Bool)

(declare-fun res!1775015 () Bool)

(declare-fun e!2694673 () Bool)

(assert (=> d!1272739 (=> res!1775015 e!2694673)))

(assert (=> d!1272739 (= res!1775015 (not (is-Cons!48541 newBucket!230)))))

(assert (=> d!1272739 (= (noDuplicateKeys!338 newBucket!230) e!2694673)))

(declare-fun b!4330506 () Bool)

(declare-fun e!2694674 () Bool)

(assert (=> b!4330506 (= e!2694673 e!2694674)))

(declare-fun res!1775016 () Bool)

(assert (=> b!4330506 (=> (not res!1775016) (not e!2694674))))

(declare-fun containsKey!477 (List!48665 K!9883) Bool)

(assert (=> b!4330506 (= res!1775016 (not (containsKey!477 (t!355577 newBucket!230) (_1!27131 (h!54020 newBucket!230)))))))

(declare-fun b!4330507 () Bool)

(assert (=> b!4330507 (= e!2694674 (noDuplicateKeys!338 (t!355577 newBucket!230)))))

(assert (= (and d!1272739 (not res!1775015)) b!4330506))

(assert (= (and b!4330506 res!1775016) b!4330507))

(declare-fun m!4924593 () Bool)

(assert (=> b!4330506 m!4924593))

(declare-fun m!4924595 () Bool)

(assert (=> b!4330507 m!4924595))

(assert (=> b!4330422 d!1272739))

(declare-fun b!4330512 () Bool)

(declare-fun e!2694677 () Bool)

(declare-fun tp!1328415 () Bool)

(declare-fun tp!1328416 () Bool)

(assert (=> b!4330512 (= e!2694677 (and tp!1328415 tp!1328416))))

(assert (=> b!4330429 (= tp!1328403 e!2694677)))

(assert (= (and b!4330429 (is-Cons!48542 (toList!2643 lm!2227))) b!4330512))

(declare-fun b!4330517 () Bool)

(declare-fun e!2694680 () Bool)

(declare-fun tp!1328419 () Bool)

(assert (=> b!4330517 (= e!2694680 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328419))))

(assert (=> b!4330423 (= tp!1328404 e!2694680)))

(assert (= (and b!4330423 (is-Cons!48541 (t!355577 newBucket!230))) b!4330517))

(declare-fun b_lambda!127695 () Bool)

(assert (= b_lambda!127687 (or start!417304 b_lambda!127695)))

(declare-fun bs!607758 () Bool)

(declare-fun d!1272745 () Bool)

(assert (= bs!607758 (and d!1272745 start!417304)))

(assert (=> bs!607758 (= (dynLambda!20542 lambda!134553 (h!54021 (toList!2643 lt!1545448))) (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))))

(declare-fun m!4924599 () Bool)

(assert (=> bs!607758 m!4924599))

(assert (=> b!4330486 d!1272745))

(declare-fun b_lambda!127697 () Bool)

(assert (= b_lambda!127683 (or start!417304 b_lambda!127697)))

(declare-fun bs!607759 () Bool)

(declare-fun d!1272747 () Bool)

(assert (= bs!607759 (and d!1272747 start!417304)))

(assert (=> bs!607759 (= (dynLambda!20542 lambda!134553 (h!54021 (toList!2643 lm!2227))) (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lm!2227)))))))

(declare-fun m!4924601 () Bool)

(assert (=> bs!607759 m!4924601))

(assert (=> b!4330467 d!1272747))

(declare-fun b_lambda!127699 () Bool)

(assert (= b_lambda!127693 (or start!417304 b_lambda!127699)))

(declare-fun bs!607761 () Bool)

(declare-fun d!1272749 () Bool)

(assert (= bs!607761 (and d!1272749 start!417304)))

(assert (=> bs!607761 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (toList!2643 lm!2227)))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))))

(declare-fun m!4924603 () Bool)

(assert (=> bs!607761 m!4924603))

(assert (=> b!4330498 d!1272749))

(declare-fun b_lambda!127701 () Bool)

(assert (= b_lambda!127691 (or start!417304 b_lambda!127701)))

(declare-fun bs!607762 () Bool)

(declare-fun d!1272751 () Bool)

(assert (= bs!607762 (and d!1272751 start!417304)))

(assert (=> bs!607762 (= (dynLambda!20542 lambda!134553 (h!54021 (toList!2643 lt!1545446))) (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))))

(declare-fun m!4924605 () Bool)

(assert (=> bs!607762 m!4924605))

(assert (=> b!4330490 d!1272751))

(push 1)

(assert (not d!1272719))

(assert (not bs!607761))

(assert (not d!1272725))

(assert tp_is_empty!24541)

(assert (not b!4330489))

(assert (not d!1272731))

(assert (not b_lambda!127701))

(assert (not b!4330468))

(assert (not b!4330482))

(assert (not b!4330483))

(assert (not b!4330512))

(assert (not b!4330488))

(assert (not bs!607762))

(assert (not d!1272711))

(assert (not b_lambda!127699))

(assert (not bs!607758))

(assert (not b_lambda!127697))

(assert (not b!4330499))

(assert (not b!4330507))

(assert (not b_lambda!127695))

(assert (not d!1272727))

(assert (not b!4330471))

(assert (not b!4330487))

(assert (not b!4330491))

(assert (not b!4330506))

(assert (not d!1272707))

(assert (not d!1272735))

(assert (not d!1272709))

(assert (not bs!607759))

(assert tp_is_empty!24543)

(assert (not d!1272733))

(assert (not b!4330517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272777 () Bool)

(declare-fun c!736668 () Bool)

(assert (=> d!1272777 (= c!736668 (and (is-Cons!48542 (toList!2643 lt!1545483)) (= (_1!27132 (h!54021 (toList!2643 lt!1545483))) (_1!27132 lt!1545447))))))

(declare-fun e!2694708 () Option!10332)

(assert (=> d!1272777 (= (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447)) e!2694708)))

(declare-fun b!4330563 () Bool)

(declare-fun e!2694709 () Option!10332)

(assert (=> b!4330563 (= e!2694709 (getValueByKey!318 (t!355578 (toList!2643 lt!1545483)) (_1!27132 lt!1545447)))))

(declare-fun b!4330564 () Bool)

(assert (=> b!4330564 (= e!2694709 None!10331)))

(declare-fun b!4330562 () Bool)

(assert (=> b!4330562 (= e!2694708 e!2694709)))

(declare-fun c!736669 () Bool)

(assert (=> b!4330562 (= c!736669 (and (is-Cons!48542 (toList!2643 lt!1545483)) (not (= (_1!27132 (h!54021 (toList!2643 lt!1545483))) (_1!27132 lt!1545447)))))))

(declare-fun b!4330561 () Bool)

(assert (=> b!4330561 (= e!2694708 (Some!10331 (_2!27132 (h!54021 (toList!2643 lt!1545483)))))))

(assert (= (and d!1272777 c!736668) b!4330561))

(assert (= (and d!1272777 (not c!736668)) b!4330562))

(assert (= (and b!4330562 c!736669) b!4330563))

(assert (= (and b!4330562 (not c!736669)) b!4330564))

(declare-fun m!4924667 () Bool)

(assert (=> b!4330563 m!4924667))

(assert (=> b!4330482 d!1272777))

(declare-fun d!1272779 () Bool)

(declare-fun res!1775038 () Bool)

(declare-fun e!2694710 () Bool)

(assert (=> d!1272779 (=> res!1775038 e!2694710)))

(assert (=> d!1272779 (= res!1775038 (not (is-Cons!48541 (_2!27132 (h!54021 (toList!2643 lt!1545446))))))))

(assert (=> d!1272779 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545446)))) e!2694710)))

(declare-fun b!4330565 () Bool)

(declare-fun e!2694711 () Bool)

(assert (=> b!4330565 (= e!2694710 e!2694711)))

(declare-fun res!1775039 () Bool)

(assert (=> b!4330565 (=> (not res!1775039) (not e!2694711))))

(assert (=> b!4330565 (= res!1775039 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545446))))))))))

(declare-fun b!4330566 () Bool)

(assert (=> b!4330566 (= e!2694711 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446))))))))

(assert (= (and d!1272779 (not res!1775038)) b!4330565))

(assert (= (and b!4330565 res!1775039) b!4330566))

(declare-fun m!4924669 () Bool)

(assert (=> b!4330565 m!4924669))

(declare-fun m!4924671 () Bool)

(assert (=> b!4330566 m!4924671))

(assert (=> bs!607762 d!1272779))

(declare-fun d!1272781 () Bool)

(declare-fun e!2694717 () Bool)

(assert (=> d!1272781 e!2694717))

(declare-fun res!1775042 () Bool)

(assert (=> d!1272781 (=> res!1775042 e!2694717)))

(declare-fun lt!1545520 () Bool)

(assert (=> d!1272781 (= res!1775042 (not lt!1545520))))

(declare-fun lt!1545518 () Bool)

(assert (=> d!1272781 (= lt!1545520 lt!1545518)))

(declare-fun lt!1545521 () Unit!68141)

(declare-fun e!2694716 () Unit!68141)

(assert (=> d!1272781 (= lt!1545521 e!2694716)))

(declare-fun c!736672 () Bool)

(assert (=> d!1272781 (= c!736672 lt!1545518)))

(declare-fun containsKey!479 (List!48666 (_ BitVec 64)) Bool)

(assert (=> d!1272781 (= lt!1545518 (containsKey!479 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))

(assert (=> d!1272781 (= (contains!10555 lt!1545487 (_1!27132 lt!1545447)) lt!1545520)))

(declare-fun b!4330573 () Bool)

(declare-fun lt!1545519 () Unit!68141)

(assert (=> b!4330573 (= e!2694716 lt!1545519)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!234 (List!48666 (_ BitVec 64)) Unit!68141)

(assert (=> b!4330573 (= lt!1545519 (lemmaContainsKeyImpliesGetValueByKeyDefined!234 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))

(declare-fun isDefined!7630 (Option!10332) Bool)

(assert (=> b!4330573 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))

(declare-fun b!4330574 () Bool)

(declare-fun Unit!68145 () Unit!68141)

(assert (=> b!4330574 (= e!2694716 Unit!68145)))

(declare-fun b!4330575 () Bool)

(assert (=> b!4330575 (= e!2694717 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447))))))

(assert (= (and d!1272781 c!736672) b!4330573))

(assert (= (and d!1272781 (not c!736672)) b!4330574))

(assert (= (and d!1272781 (not res!1775042)) b!4330575))

(declare-fun m!4924673 () Bool)

(assert (=> d!1272781 m!4924673))

(declare-fun m!4924675 () Bool)

(assert (=> b!4330573 m!4924675))

(assert (=> b!4330573 m!4924567))

(assert (=> b!4330573 m!4924567))

(declare-fun m!4924677 () Bool)

(assert (=> b!4330573 m!4924677))

(assert (=> b!4330575 m!4924567))

(assert (=> b!4330575 m!4924567))

(assert (=> b!4330575 m!4924677))

(assert (=> d!1272719 d!1272781))

(declare-fun d!1272783 () Bool)

(declare-fun c!736673 () Bool)

(assert (=> d!1272783 (= c!736673 (and (is-Cons!48542 lt!1545484) (= (_1!27132 (h!54021 lt!1545484)) (_1!27132 lt!1545447))))))

(declare-fun e!2694718 () Option!10332)

(assert (=> d!1272783 (= (getValueByKey!318 lt!1545484 (_1!27132 lt!1545447)) e!2694718)))

(declare-fun b!4330578 () Bool)

(declare-fun e!2694719 () Option!10332)

(assert (=> b!4330578 (= e!2694719 (getValueByKey!318 (t!355578 lt!1545484) (_1!27132 lt!1545447)))))

(declare-fun b!4330579 () Bool)

(assert (=> b!4330579 (= e!2694719 None!10331)))

(declare-fun b!4330577 () Bool)

(assert (=> b!4330577 (= e!2694718 e!2694719)))

(declare-fun c!736674 () Bool)

(assert (=> b!4330577 (= c!736674 (and (is-Cons!48542 lt!1545484) (not (= (_1!27132 (h!54021 lt!1545484)) (_1!27132 lt!1545447)))))))

(declare-fun b!4330576 () Bool)

(assert (=> b!4330576 (= e!2694718 (Some!10331 (_2!27132 (h!54021 lt!1545484))))))

(assert (= (and d!1272783 c!736673) b!4330576))

(assert (= (and d!1272783 (not c!736673)) b!4330577))

(assert (= (and b!4330577 c!736674) b!4330578))

(assert (= (and b!4330577 (not c!736674)) b!4330579))

(declare-fun m!4924679 () Bool)

(assert (=> b!4330578 m!4924679))

(assert (=> d!1272719 d!1272783))

(declare-fun d!1272785 () Bool)

(assert (=> d!1272785 (= (getValueByKey!318 lt!1545484 (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447)))))

(declare-fun lt!1545524 () Unit!68141)

(declare-fun choose!26483 (List!48666 (_ BitVec 64) List!48665) Unit!68141)

(assert (=> d!1272785 (= lt!1545524 (choose!26483 lt!1545484 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(declare-fun e!2694722 () Bool)

(assert (=> d!1272785 e!2694722))

(declare-fun res!1775047 () Bool)

(assert (=> d!1272785 (=> (not res!1775047) (not e!2694722))))

(assert (=> d!1272785 (= res!1775047 (isStrictlySorted!34 lt!1545484))))

(assert (=> d!1272785 (= (lemmaContainsTupThenGetReturnValue!111 lt!1545484 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) lt!1545524)))

(declare-fun b!4330584 () Bool)

(declare-fun res!1775048 () Bool)

(assert (=> b!4330584 (=> (not res!1775048) (not e!2694722))))

(assert (=> b!4330584 (= res!1775048 (containsKey!479 lt!1545484 (_1!27132 lt!1545447)))))

(declare-fun b!4330585 () Bool)

(assert (=> b!4330585 (= e!2694722 (contains!10556 lt!1545484 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(assert (= (and d!1272785 res!1775047) b!4330584))

(assert (= (and b!4330584 res!1775048) b!4330585))

(assert (=> d!1272785 m!4924561))

(declare-fun m!4924681 () Bool)

(assert (=> d!1272785 m!4924681))

(declare-fun m!4924683 () Bool)

(assert (=> d!1272785 m!4924683))

(declare-fun m!4924685 () Bool)

(assert (=> b!4330584 m!4924685))

(declare-fun m!4924687 () Bool)

(assert (=> b!4330585 m!4924687))

(assert (=> d!1272719 d!1272785))

(declare-fun b!4330606 () Bool)

(declare-fun c!736683 () Bool)

(assert (=> b!4330606 (= c!736683 (and (is-Cons!48542 (toList!2643 lm!2227)) (bvsgt (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 lt!1545447))))))

(declare-fun e!2694733 () List!48666)

(declare-fun e!2694735 () List!48666)

(assert (=> b!4330606 (= e!2694733 e!2694735)))

(declare-fun b!4330607 () Bool)

(declare-fun res!1775054 () Bool)

(declare-fun e!2694734 () Bool)

(assert (=> b!4330607 (=> (not res!1775054) (not e!2694734))))

(declare-fun lt!1545527 () List!48666)

(assert (=> b!4330607 (= res!1775054 (containsKey!479 lt!1545527 (_1!27132 lt!1545447)))))

(declare-fun b!4330608 () Bool)

(declare-fun e!2694736 () List!48666)

(declare-fun call!301022 () List!48666)

(assert (=> b!4330608 (= e!2694736 call!301022)))

(declare-fun bm!301017 () Bool)

(declare-fun call!301023 () List!48666)

(declare-fun call!301024 () List!48666)

(assert (=> bm!301017 (= call!301023 call!301024)))

(declare-fun e!2694737 () List!48666)

(declare-fun c!736684 () Bool)

(declare-fun bm!301018 () Bool)

(declare-fun $colon$colon!664 (List!48666 tuple2!47676) List!48666)

(assert (=> bm!301018 (= call!301022 ($colon$colon!664 e!2694737 (ite c!736684 (h!54021 (toList!2643 lm!2227)) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))))

(declare-fun c!736686 () Bool)

(assert (=> bm!301018 (= c!736686 c!736684)))

(declare-fun b!4330609 () Bool)

(assert (=> b!4330609 (= e!2694736 e!2694733)))

(declare-fun c!736685 () Bool)

(assert (=> b!4330609 (= c!736685 (and (is-Cons!48542 (toList!2643 lm!2227)) (= (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 lt!1545447))))))

(declare-fun b!4330610 () Bool)

(assert (=> b!4330610 (= e!2694735 call!301023)))

(declare-fun b!4330611 () Bool)

(assert (=> b!4330611 (= e!2694734 (contains!10556 lt!1545527 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun d!1272787 () Bool)

(assert (=> d!1272787 e!2694734))

(declare-fun res!1775053 () Bool)

(assert (=> d!1272787 (=> (not res!1775053) (not e!2694734))))

(assert (=> d!1272787 (= res!1775053 (isStrictlySorted!34 lt!1545527))))

(assert (=> d!1272787 (= lt!1545527 e!2694736)))

(assert (=> d!1272787 (= c!736684 (and (is-Cons!48542 (toList!2643 lm!2227)) (bvslt (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 lt!1545447))))))

(assert (=> d!1272787 (isStrictlySorted!34 (toList!2643 lm!2227))))

(assert (=> d!1272787 (= (insertStrictlySorted!66 (toList!2643 lm!2227) (_1!27132 lt!1545447) (_2!27132 lt!1545447)) lt!1545527)))

(declare-fun b!4330612 () Bool)

(assert (=> b!4330612 (= e!2694735 call!301023)))

(declare-fun bm!301019 () Bool)

(assert (=> bm!301019 (= call!301024 call!301022)))

(declare-fun b!4330613 () Bool)

(assert (=> b!4330613 (= e!2694737 (ite c!736685 (t!355578 (toList!2643 lm!2227)) (ite c!736683 (Cons!48542 (h!54021 (toList!2643 lm!2227)) (t!355578 (toList!2643 lm!2227))) Nil!48542)))))

(declare-fun b!4330614 () Bool)

(assert (=> b!4330614 (= e!2694733 call!301024)))

(declare-fun b!4330615 () Bool)

(assert (=> b!4330615 (= e!2694737 (insertStrictlySorted!66 (t!355578 (toList!2643 lm!2227)) (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (= (and d!1272787 c!736684) b!4330608))

(assert (= (and d!1272787 (not c!736684)) b!4330609))

(assert (= (and b!4330609 c!736685) b!4330614))

(assert (= (and b!4330609 (not c!736685)) b!4330606))

(assert (= (and b!4330606 c!736683) b!4330612))

(assert (= (and b!4330606 (not c!736683)) b!4330610))

(assert (= (or b!4330612 b!4330610) bm!301017))

(assert (= (or b!4330614 bm!301017) bm!301019))

(assert (= (or b!4330608 bm!301019) bm!301018))

(assert (= (and bm!301018 c!736686) b!4330615))

(assert (= (and bm!301018 (not c!736686)) b!4330613))

(assert (= (and d!1272787 res!1775053) b!4330607))

(assert (= (and b!4330607 res!1775054) b!4330611))

(declare-fun m!4924689 () Bool)

(assert (=> b!4330607 m!4924689))

(declare-fun m!4924691 () Bool)

(assert (=> bm!301018 m!4924691))

(declare-fun m!4924693 () Bool)

(assert (=> b!4330611 m!4924693))

(declare-fun m!4924695 () Bool)

(assert (=> d!1272787 m!4924695))

(assert (=> d!1272787 m!4924525))

(declare-fun m!4924697 () Bool)

(assert (=> b!4330615 m!4924697))

(assert (=> d!1272719 d!1272787))

(declare-fun d!1272789 () Bool)

(declare-fun res!1775055 () Bool)

(declare-fun e!2694738 () Bool)

(assert (=> d!1272789 (=> res!1775055 e!2694738)))

(assert (=> d!1272789 (= res!1775055 (is-Nil!48542 (toList!2643 lt!1545446)))))

(assert (=> d!1272789 (= (forall!8873 (toList!2643 lt!1545446) lambda!134570) e!2694738)))

(declare-fun b!4330616 () Bool)

(declare-fun e!2694739 () Bool)

(assert (=> b!4330616 (= e!2694738 e!2694739)))

(declare-fun res!1775056 () Bool)

(assert (=> b!4330616 (=> (not res!1775056) (not e!2694739))))

(assert (=> b!4330616 (= res!1775056 (dynLambda!20542 lambda!134570 (h!54021 (toList!2643 lt!1545446))))))

(declare-fun b!4330617 () Bool)

(assert (=> b!4330617 (= e!2694739 (forall!8873 (t!355578 (toList!2643 lt!1545446)) lambda!134570))))

(assert (= (and d!1272789 (not res!1775055)) b!4330616))

(assert (= (and b!4330616 res!1775056) b!4330617))

(declare-fun b_lambda!127715 () Bool)

(assert (=> (not b_lambda!127715) (not b!4330616)))

(declare-fun m!4924699 () Bool)

(assert (=> b!4330616 m!4924699))

(declare-fun m!4924701 () Bool)

(assert (=> b!4330617 m!4924701))

(assert (=> d!1272725 d!1272789))

(declare-fun d!1272791 () Bool)

(declare-fun lt!1545530 () Bool)

(declare-fun content!7583 (List!48666) (Set tuple2!47676))

(assert (=> d!1272791 (= lt!1545530 (set.member lt!1545447 (content!7583 (toList!2643 lt!1545483))))))

(declare-fun e!2694745 () Bool)

(assert (=> d!1272791 (= lt!1545530 e!2694745)))

(declare-fun res!1775061 () Bool)

(assert (=> d!1272791 (=> (not res!1775061) (not e!2694745))))

(assert (=> d!1272791 (= res!1775061 (is-Cons!48542 (toList!2643 lt!1545483)))))

(assert (=> d!1272791 (= (contains!10556 (toList!2643 lt!1545483) lt!1545447) lt!1545530)))

(declare-fun b!4330622 () Bool)

(declare-fun e!2694744 () Bool)

(assert (=> b!4330622 (= e!2694745 e!2694744)))

(declare-fun res!1775062 () Bool)

(assert (=> b!4330622 (=> res!1775062 e!2694744)))

(assert (=> b!4330622 (= res!1775062 (= (h!54021 (toList!2643 lt!1545483)) lt!1545447))))

(declare-fun b!4330623 () Bool)

(assert (=> b!4330623 (= e!2694744 (contains!10556 (t!355578 (toList!2643 lt!1545483)) lt!1545447))))

(assert (= (and d!1272791 res!1775061) b!4330622))

(assert (= (and b!4330622 (not res!1775062)) b!4330623))

(declare-fun m!4924703 () Bool)

(assert (=> d!1272791 m!4924703))

(declare-fun m!4924705 () Bool)

(assert (=> d!1272791 m!4924705))

(declare-fun m!4924707 () Bool)

(assert (=> b!4330623 m!4924707))

(assert (=> b!4330483 d!1272791))

(declare-fun d!1272793 () Bool)

(declare-fun res!1775063 () Bool)

(declare-fun e!2694746 () Bool)

(assert (=> d!1272793 (=> res!1775063 e!2694746)))

(assert (=> d!1272793 (= res!1775063 (is-Nil!48542 (toList!2643 lt!1545471)))))

(assert (=> d!1272793 (= (forall!8873 (toList!2643 lt!1545471) lambda!134567) e!2694746)))

(declare-fun b!4330624 () Bool)

(declare-fun e!2694747 () Bool)

(assert (=> b!4330624 (= e!2694746 e!2694747)))

(declare-fun res!1775064 () Bool)

(assert (=> b!4330624 (=> (not res!1775064) (not e!2694747))))

(assert (=> b!4330624 (= res!1775064 (dynLambda!20542 lambda!134567 (h!54021 (toList!2643 lt!1545471))))))

(declare-fun b!4330625 () Bool)

(assert (=> b!4330625 (= e!2694747 (forall!8873 (t!355578 (toList!2643 lt!1545471)) lambda!134567))))

(assert (= (and d!1272793 (not res!1775063)) b!4330624))

(assert (= (and b!4330624 res!1775064) b!4330625))

(declare-fun b_lambda!127717 () Bool)

(assert (=> (not b_lambda!127717) (not b!4330624)))

(declare-fun m!4924709 () Bool)

(assert (=> b!4330624 m!4924709))

(declare-fun m!4924711 () Bool)

(assert (=> b!4330625 m!4924711))

(assert (=> d!1272709 d!1272793))

(declare-fun d!1272795 () Bool)

(declare-fun e!2694748 () Bool)

(assert (=> d!1272795 e!2694748))

(declare-fun res!1775066 () Bool)

(assert (=> d!1272795 (=> (not res!1775066) (not e!2694748))))

(declare-fun lt!1545534 () ListLongMap!1285)

(assert (=> d!1272795 (= res!1775066 (contains!10555 lt!1545534 (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun lt!1545531 () List!48666)

(assert (=> d!1272795 (= lt!1545534 (ListLongMap!1286 lt!1545531))))

(declare-fun lt!1545532 () Unit!68141)

(declare-fun lt!1545533 () Unit!68141)

(assert (=> d!1272795 (= lt!1545532 lt!1545533)))

(assert (=> d!1272795 (= (getValueByKey!318 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230))) (Some!10331 (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))

(assert (=> d!1272795 (= lt!1545533 (lemmaContainsTupThenGetReturnValue!111 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))

(assert (=> d!1272795 (= lt!1545531 (insertStrictlySorted!66 (toList!2643 lt!1545449) (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))

(assert (=> d!1272795 (= (+!380 lt!1545449 (tuple2!47677 hash!427 newBucket!230)) lt!1545534)))

(declare-fun b!4330626 () Bool)

(declare-fun res!1775065 () Bool)

(assert (=> b!4330626 (=> (not res!1775065) (not e!2694748))))

(assert (=> b!4330626 (= res!1775065 (= (getValueByKey!318 (toList!2643 lt!1545534) (_1!27132 (tuple2!47677 hash!427 newBucket!230))) (Some!10331 (_2!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(declare-fun b!4330627 () Bool)

(assert (=> b!4330627 (= e!2694748 (contains!10556 (toList!2643 lt!1545534) (tuple2!47677 hash!427 newBucket!230)))))

(assert (= (and d!1272795 res!1775066) b!4330626))

(assert (= (and b!4330626 res!1775065) b!4330627))

(declare-fun m!4924713 () Bool)

(assert (=> d!1272795 m!4924713))

(declare-fun m!4924715 () Bool)

(assert (=> d!1272795 m!4924715))

(declare-fun m!4924717 () Bool)

(assert (=> d!1272795 m!4924717))

(declare-fun m!4924719 () Bool)

(assert (=> d!1272795 m!4924719))

(declare-fun m!4924721 () Bool)

(assert (=> b!4330626 m!4924721))

(declare-fun m!4924723 () Bool)

(assert (=> b!4330627 m!4924723))

(assert (=> d!1272709 d!1272795))

(declare-fun bs!607779 () Bool)

(declare-fun d!1272797 () Bool)

(assert (= bs!607779 (and d!1272797 d!1272709)))

(declare-fun lambda!134593 () Int)

(assert (=> bs!607779 (= lambda!134593 lambda!134567)))

(declare-fun bs!607780 () Bool)

(assert (= bs!607780 (and d!1272797 d!1272735)))

(assert (=> bs!607780 (not (= lambda!134593 lambda!134578))))

(declare-fun bs!607781 () Bool)

(assert (= bs!607781 (and d!1272797 d!1272731)))

(assert (=> bs!607781 (not (= lambda!134593 lambda!134572))))

(declare-fun bs!607782 () Bool)

(assert (= bs!607782 (and d!1272797 start!417304)))

(assert (=> bs!607782 (= lambda!134593 lambda!134553)))

(declare-fun bs!607783 () Bool)

(assert (= bs!607783 (and d!1272797 d!1272725)))

(assert (=> bs!607783 (not (= lambda!134593 lambda!134570))))

(declare-fun bs!607784 () Bool)

(assert (= bs!607784 (and d!1272797 d!1272727)))

(assert (=> bs!607784 (not (= lambda!134593 lambda!134571))))

(declare-fun e!2694751 () Bool)

(assert (=> d!1272797 e!2694751))

(declare-fun res!1775069 () Bool)

(assert (=> d!1272797 (=> (not res!1775069) (not e!2694751))))

(declare-fun lt!1545537 () ListLongMap!1285)

(assert (=> d!1272797 (= res!1775069 (forall!8873 (toList!2643 lt!1545537) lambda!134593))))

(assert (=> d!1272797 (= lt!1545537 (+!380 lt!1545449 (tuple2!47677 hash!427 newBucket!230)))))

(assert (=> d!1272797 true))

(declare-fun _$21!145 () Unit!68141)

(assert (=> d!1272797 (= (choose!26481 lt!1545449 hash!427 newBucket!230 hashF!1461) _$21!145)))

(declare-fun b!4330630 () Bool)

(assert (=> b!4330630 (= e!2694751 (allKeysSameHashInMap!430 lt!1545537 hashF!1461))))

(assert (= (and d!1272797 res!1775069) b!4330630))

(declare-fun m!4924725 () Bool)

(assert (=> d!1272797 m!4924725))

(assert (=> d!1272797 m!4924529))

(declare-fun m!4924727 () Bool)

(assert (=> b!4330630 m!4924727))

(assert (=> d!1272709 d!1272797))

(declare-fun d!1272799 () Bool)

(declare-fun res!1775070 () Bool)

(declare-fun e!2694752 () Bool)

(assert (=> d!1272799 (=> res!1775070 e!2694752)))

(assert (=> d!1272799 (= res!1775070 (is-Nil!48542 (toList!2643 lt!1545449)))))

(assert (=> d!1272799 (= (forall!8873 (toList!2643 lt!1545449) lambda!134567) e!2694752)))

(declare-fun b!4330631 () Bool)

(declare-fun e!2694753 () Bool)

(assert (=> b!4330631 (= e!2694752 e!2694753)))

(declare-fun res!1775071 () Bool)

(assert (=> b!4330631 (=> (not res!1775071) (not e!2694753))))

(assert (=> b!4330631 (= res!1775071 (dynLambda!20542 lambda!134567 (h!54021 (toList!2643 lt!1545449))))))

(declare-fun b!4330632 () Bool)

(assert (=> b!4330632 (= e!2694753 (forall!8873 (t!355578 (toList!2643 lt!1545449)) lambda!134567))))

(assert (= (and d!1272799 (not res!1775070)) b!4330631))

(assert (= (and b!4330631 res!1775071) b!4330632))

(declare-fun b_lambda!127719 () Bool)

(assert (=> (not b_lambda!127719) (not b!4330631)))

(declare-fun m!4924729 () Bool)

(assert (=> b!4330631 m!4924729))

(declare-fun m!4924731 () Bool)

(assert (=> b!4330632 m!4924731))

(assert (=> d!1272709 d!1272799))

(declare-fun d!1272801 () Bool)

(declare-fun res!1775072 () Bool)

(declare-fun e!2694754 () Bool)

(assert (=> d!1272801 (=> res!1775072 e!2694754)))

(assert (=> d!1272801 (= res!1775072 (is-Nil!48542 (toList!2643 lm!2227)))))

(assert (=> d!1272801 (= (forall!8873 (toList!2643 lm!2227) lambda!134572) e!2694754)))

(declare-fun b!4330633 () Bool)

(declare-fun e!2694755 () Bool)

(assert (=> b!4330633 (= e!2694754 e!2694755)))

(declare-fun res!1775073 () Bool)

(assert (=> b!4330633 (=> (not res!1775073) (not e!2694755))))

(assert (=> b!4330633 (= res!1775073 (dynLambda!20542 lambda!134572 (h!54021 (toList!2643 lm!2227))))))

(declare-fun b!4330634 () Bool)

(assert (=> b!4330634 (= e!2694755 (forall!8873 (t!355578 (toList!2643 lm!2227)) lambda!134572))))

(assert (= (and d!1272801 (not res!1775072)) b!4330633))

(assert (= (and b!4330633 res!1775073) b!4330634))

(declare-fun b_lambda!127721 () Bool)

(assert (=> (not b_lambda!127721) (not b!4330633)))

(declare-fun m!4924733 () Bool)

(assert (=> b!4330633 m!4924733))

(declare-fun m!4924735 () Bool)

(assert (=> b!4330634 m!4924735))

(assert (=> d!1272731 d!1272801))

(declare-fun d!1272803 () Bool)

(declare-fun res!1775074 () Bool)

(declare-fun e!2694756 () Bool)

(assert (=> d!1272803 (=> res!1775074 e!2694756)))

(assert (=> d!1272803 (= res!1775074 (not (is-Cons!48541 (_2!27132 (h!54021 (toList!2643 lt!1545448))))))))

(assert (=> d!1272803 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545448)))) e!2694756)))

(declare-fun b!4330635 () Bool)

(declare-fun e!2694757 () Bool)

(assert (=> b!4330635 (= e!2694756 e!2694757)))

(declare-fun res!1775075 () Bool)

(assert (=> b!4330635 (=> (not res!1775075) (not e!2694757))))

(assert (=> b!4330635 (= res!1775075 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545448))))))))))

(declare-fun b!4330636 () Bool)

(assert (=> b!4330636 (= e!2694757 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448))))))))

(assert (= (and d!1272803 (not res!1775074)) b!4330635))

(assert (= (and b!4330635 res!1775075) b!4330636))

(declare-fun m!4924737 () Bool)

(assert (=> b!4330635 m!4924737))

(declare-fun m!4924739 () Bool)

(assert (=> b!4330636 m!4924739))

(assert (=> bs!607758 d!1272803))

(declare-fun d!1272805 () Bool)

(declare-fun res!1775076 () Bool)

(declare-fun e!2694758 () Bool)

(assert (=> d!1272805 (=> res!1775076 e!2694758)))

(assert (=> d!1272805 (= res!1775076 (is-Nil!48542 (t!355578 (t!355578 (toList!2643 lm!2227)))))))

(assert (=> d!1272805 (= (forall!8873 (t!355578 (t!355578 (toList!2643 lm!2227))) lambda!134553) e!2694758)))

(declare-fun b!4330637 () Bool)

(declare-fun e!2694759 () Bool)

(assert (=> b!4330637 (= e!2694758 e!2694759)))

(declare-fun res!1775077 () Bool)

(assert (=> b!4330637 (=> (not res!1775077) (not e!2694759))))

(assert (=> b!4330637 (= res!1775077 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227))))))))

(declare-fun b!4330638 () Bool)

(assert (=> b!4330638 (= e!2694759 (forall!8873 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227)))) lambda!134553))))

(assert (= (and d!1272805 (not res!1775076)) b!4330637))

(assert (= (and b!4330637 res!1775077) b!4330638))

(declare-fun b_lambda!127723 () Bool)

(assert (=> (not b_lambda!127723) (not b!4330637)))

(declare-fun m!4924741 () Bool)

(assert (=> b!4330637 m!4924741))

(declare-fun m!4924743 () Bool)

(assert (=> b!4330638 m!4924743))

(assert (=> b!4330499 d!1272805))

(declare-fun d!1272807 () Bool)

(declare-fun e!2694761 () Bool)

(assert (=> d!1272807 e!2694761))

(declare-fun res!1775078 () Bool)

(assert (=> d!1272807 (=> res!1775078 e!2694761)))

(declare-fun lt!1545540 () Bool)

(assert (=> d!1272807 (= res!1775078 (not lt!1545540))))

(declare-fun lt!1545538 () Bool)

(assert (=> d!1272807 (= lt!1545540 lt!1545538)))

(declare-fun lt!1545541 () Unit!68141)

(declare-fun e!2694760 () Unit!68141)

(assert (=> d!1272807 (= lt!1545541 e!2694760)))

(declare-fun c!736687 () Bool)

(assert (=> d!1272807 (= c!736687 lt!1545538)))

(assert (=> d!1272807 (= lt!1545538 (containsKey!479 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))

(assert (=> d!1272807 (= (contains!10555 lt!1545483 (_1!27132 lt!1545447)) lt!1545540)))

(declare-fun b!4330639 () Bool)

(declare-fun lt!1545539 () Unit!68141)

(assert (=> b!4330639 (= e!2694760 lt!1545539)))

(assert (=> b!4330639 (= lt!1545539 (lemmaContainsKeyImpliesGetValueByKeyDefined!234 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))

(assert (=> b!4330639 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))

(declare-fun b!4330640 () Bool)

(declare-fun Unit!68146 () Unit!68141)

(assert (=> b!4330640 (= e!2694760 Unit!68146)))

(declare-fun b!4330641 () Bool)

(assert (=> b!4330641 (= e!2694761 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447))))))

(assert (= (and d!1272807 c!736687) b!4330639))

(assert (= (and d!1272807 (not c!736687)) b!4330640))

(assert (= (and d!1272807 (not res!1775078)) b!4330641))

(declare-fun m!4924745 () Bool)

(assert (=> d!1272807 m!4924745))

(declare-fun m!4924747 () Bool)

(assert (=> b!4330639 m!4924747))

(assert (=> b!4330639 m!4924549))

(assert (=> b!4330639 m!4924549))

(declare-fun m!4924749 () Bool)

(assert (=> b!4330639 m!4924749))

(assert (=> b!4330641 m!4924549))

(assert (=> b!4330641 m!4924549))

(assert (=> b!4330641 m!4924749))

(assert (=> d!1272711 d!1272807))

(declare-fun d!1272809 () Bool)

(declare-fun c!736688 () Bool)

(assert (=> d!1272809 (= c!736688 (and (is-Cons!48542 lt!1545480) (= (_1!27132 (h!54021 lt!1545480)) (_1!27132 lt!1545447))))))

(declare-fun e!2694762 () Option!10332)

(assert (=> d!1272809 (= (getValueByKey!318 lt!1545480 (_1!27132 lt!1545447)) e!2694762)))

(declare-fun b!4330644 () Bool)

(declare-fun e!2694763 () Option!10332)

(assert (=> b!4330644 (= e!2694763 (getValueByKey!318 (t!355578 lt!1545480) (_1!27132 lt!1545447)))))

(declare-fun b!4330645 () Bool)

(assert (=> b!4330645 (= e!2694763 None!10331)))

(declare-fun b!4330643 () Bool)

(assert (=> b!4330643 (= e!2694762 e!2694763)))

(declare-fun c!736689 () Bool)

(assert (=> b!4330643 (= c!736689 (and (is-Cons!48542 lt!1545480) (not (= (_1!27132 (h!54021 lt!1545480)) (_1!27132 lt!1545447)))))))

(declare-fun b!4330642 () Bool)

(assert (=> b!4330642 (= e!2694762 (Some!10331 (_2!27132 (h!54021 lt!1545480))))))

(assert (= (and d!1272809 c!736688) b!4330642))

(assert (= (and d!1272809 (not c!736688)) b!4330643))

(assert (= (and b!4330643 c!736689) b!4330644))

(assert (= (and b!4330643 (not c!736689)) b!4330645))

(declare-fun m!4924751 () Bool)

(assert (=> b!4330644 m!4924751))

(assert (=> d!1272711 d!1272809))

(declare-fun d!1272811 () Bool)

(assert (=> d!1272811 (= (getValueByKey!318 lt!1545480 (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447)))))

(declare-fun lt!1545542 () Unit!68141)

(assert (=> d!1272811 (= lt!1545542 (choose!26483 lt!1545480 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(declare-fun e!2694764 () Bool)

(assert (=> d!1272811 e!2694764))

(declare-fun res!1775079 () Bool)

(assert (=> d!1272811 (=> (not res!1775079) (not e!2694764))))

(assert (=> d!1272811 (= res!1775079 (isStrictlySorted!34 lt!1545480))))

(assert (=> d!1272811 (= (lemmaContainsTupThenGetReturnValue!111 lt!1545480 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) lt!1545542)))

(declare-fun b!4330646 () Bool)

(declare-fun res!1775080 () Bool)

(assert (=> b!4330646 (=> (not res!1775080) (not e!2694764))))

(assert (=> b!4330646 (= res!1775080 (containsKey!479 lt!1545480 (_1!27132 lt!1545447)))))

(declare-fun b!4330647 () Bool)

(assert (=> b!4330647 (= e!2694764 (contains!10556 lt!1545480 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(assert (= (and d!1272811 res!1775079) b!4330646))

(assert (= (and b!4330646 res!1775080) b!4330647))

(assert (=> d!1272811 m!4924543))

(declare-fun m!4924753 () Bool)

(assert (=> d!1272811 m!4924753))

(declare-fun m!4924755 () Bool)

(assert (=> d!1272811 m!4924755))

(declare-fun m!4924757 () Bool)

(assert (=> b!4330646 m!4924757))

(declare-fun m!4924759 () Bool)

(assert (=> b!4330647 m!4924759))

(assert (=> d!1272711 d!1272811))

(declare-fun b!4330648 () Bool)

(declare-fun c!736690 () Bool)

(assert (=> b!4330648 (= c!736690 (and (is-Cons!48542 (toList!2643 lt!1545449)) (bvsgt (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 lt!1545447))))))

(declare-fun e!2694765 () List!48666)

(declare-fun e!2694767 () List!48666)

(assert (=> b!4330648 (= e!2694765 e!2694767)))

(declare-fun b!4330649 () Bool)

(declare-fun res!1775082 () Bool)

(declare-fun e!2694766 () Bool)

(assert (=> b!4330649 (=> (not res!1775082) (not e!2694766))))

(declare-fun lt!1545543 () List!48666)

(assert (=> b!4330649 (= res!1775082 (containsKey!479 lt!1545543 (_1!27132 lt!1545447)))))

(declare-fun b!4330650 () Bool)

(declare-fun e!2694768 () List!48666)

(declare-fun call!301025 () List!48666)

(assert (=> b!4330650 (= e!2694768 call!301025)))

(declare-fun bm!301020 () Bool)

(declare-fun call!301026 () List!48666)

(declare-fun call!301027 () List!48666)

(assert (=> bm!301020 (= call!301026 call!301027)))

(declare-fun c!736691 () Bool)

(declare-fun bm!301021 () Bool)

(declare-fun e!2694769 () List!48666)

(assert (=> bm!301021 (= call!301025 ($colon$colon!664 e!2694769 (ite c!736691 (h!54021 (toList!2643 lt!1545449)) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))))

(declare-fun c!736693 () Bool)

(assert (=> bm!301021 (= c!736693 c!736691)))

(declare-fun b!4330651 () Bool)

(assert (=> b!4330651 (= e!2694768 e!2694765)))

(declare-fun c!736692 () Bool)

(assert (=> b!4330651 (= c!736692 (and (is-Cons!48542 (toList!2643 lt!1545449)) (= (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 lt!1545447))))))

(declare-fun b!4330652 () Bool)

(assert (=> b!4330652 (= e!2694767 call!301026)))

(declare-fun b!4330653 () Bool)

(assert (=> b!4330653 (= e!2694766 (contains!10556 lt!1545543 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun d!1272813 () Bool)

(assert (=> d!1272813 e!2694766))

(declare-fun res!1775081 () Bool)

(assert (=> d!1272813 (=> (not res!1775081) (not e!2694766))))

(assert (=> d!1272813 (= res!1775081 (isStrictlySorted!34 lt!1545543))))

(assert (=> d!1272813 (= lt!1545543 e!2694768)))

(assert (=> d!1272813 (= c!736691 (and (is-Cons!48542 (toList!2643 lt!1545449)) (bvslt (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 lt!1545447))))))

(assert (=> d!1272813 (isStrictlySorted!34 (toList!2643 lt!1545449))))

(assert (=> d!1272813 (= (insertStrictlySorted!66 (toList!2643 lt!1545449) (_1!27132 lt!1545447) (_2!27132 lt!1545447)) lt!1545543)))

(declare-fun b!4330654 () Bool)

(assert (=> b!4330654 (= e!2694767 call!301026)))

(declare-fun bm!301022 () Bool)

(assert (=> bm!301022 (= call!301027 call!301025)))

(declare-fun b!4330655 () Bool)

(assert (=> b!4330655 (= e!2694769 (ite c!736692 (t!355578 (toList!2643 lt!1545449)) (ite c!736690 (Cons!48542 (h!54021 (toList!2643 lt!1545449)) (t!355578 (toList!2643 lt!1545449))) Nil!48542)))))

(declare-fun b!4330656 () Bool)

(assert (=> b!4330656 (= e!2694765 call!301027)))

(declare-fun b!4330657 () Bool)

(assert (=> b!4330657 (= e!2694769 (insertStrictlySorted!66 (t!355578 (toList!2643 lt!1545449)) (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (= (and d!1272813 c!736691) b!4330650))

(assert (= (and d!1272813 (not c!736691)) b!4330651))

(assert (= (and b!4330651 c!736692) b!4330656))

(assert (= (and b!4330651 (not c!736692)) b!4330648))

(assert (= (and b!4330648 c!736690) b!4330654))

(assert (= (and b!4330648 (not c!736690)) b!4330652))

(assert (= (or b!4330654 b!4330652) bm!301020))

(assert (= (or b!4330656 bm!301020) bm!301022))

(assert (= (or b!4330650 bm!301022) bm!301021))

(assert (= (and bm!301021 c!736693) b!4330657))

(assert (= (and bm!301021 (not c!736693)) b!4330655))

(assert (= (and d!1272813 res!1775081) b!4330649))

(assert (= (and b!4330649 res!1775082) b!4330653))

(declare-fun m!4924761 () Bool)

(assert (=> b!4330649 m!4924761))

(declare-fun m!4924763 () Bool)

(assert (=> bm!301021 m!4924763))

(declare-fun m!4924765 () Bool)

(assert (=> b!4330653 m!4924765))

(declare-fun m!4924767 () Bool)

(assert (=> d!1272813 m!4924767))

(declare-fun m!4924769 () Bool)

(assert (=> d!1272813 m!4924769))

(declare-fun m!4924771 () Bool)

(assert (=> b!4330657 m!4924771))

(assert (=> d!1272711 d!1272813))

(assert (=> b!4330468 d!1272737))

(declare-fun d!1272815 () Bool)

(declare-fun res!1775083 () Bool)

(declare-fun e!2694770 () Bool)

(assert (=> d!1272815 (=> res!1775083 e!2694770)))

(assert (=> d!1272815 (= res!1775083 (not (is-Cons!48541 (_2!27132 (h!54021 (toList!2643 lm!2227))))))))

(assert (=> d!1272815 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lm!2227)))) e!2694770)))

(declare-fun b!4330658 () Bool)

(declare-fun e!2694771 () Bool)

(assert (=> b!4330658 (= e!2694770 e!2694771)))

(declare-fun res!1775084 () Bool)

(assert (=> b!4330658 (=> (not res!1775084) (not e!2694771))))

(assert (=> b!4330658 (= res!1775084 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lm!2227))))))))))

(declare-fun b!4330659 () Bool)

(assert (=> b!4330659 (= e!2694771 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227))))))))

(assert (= (and d!1272815 (not res!1775083)) b!4330658))

(assert (= (and b!4330658 res!1775084) b!4330659))

(declare-fun m!4924773 () Bool)

(assert (=> b!4330658 m!4924773))

(declare-fun m!4924775 () Bool)

(assert (=> b!4330659 m!4924775))

(assert (=> bs!607759 d!1272815))

(declare-fun d!1272817 () Bool)

(declare-fun c!736694 () Bool)

(assert (=> d!1272817 (= c!736694 (and (is-Cons!48542 (toList!2643 lt!1545487)) (= (_1!27132 (h!54021 (toList!2643 lt!1545487))) (_1!27132 lt!1545447))))))

(declare-fun e!2694772 () Option!10332)

(assert (=> d!1272817 (= (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447)) e!2694772)))

(declare-fun b!4330662 () Bool)

(declare-fun e!2694773 () Option!10332)

(assert (=> b!4330662 (= e!2694773 (getValueByKey!318 (t!355578 (toList!2643 lt!1545487)) (_1!27132 lt!1545447)))))

(declare-fun b!4330663 () Bool)

(assert (=> b!4330663 (= e!2694773 None!10331)))

(declare-fun b!4330661 () Bool)

(assert (=> b!4330661 (= e!2694772 e!2694773)))

(declare-fun c!736695 () Bool)

(assert (=> b!4330661 (= c!736695 (and (is-Cons!48542 (toList!2643 lt!1545487)) (not (= (_1!27132 (h!54021 (toList!2643 lt!1545487))) (_1!27132 lt!1545447)))))))

(declare-fun b!4330660 () Bool)

(assert (=> b!4330660 (= e!2694772 (Some!10331 (_2!27132 (h!54021 (toList!2643 lt!1545487)))))))

(assert (= (and d!1272817 c!736694) b!4330660))

(assert (= (and d!1272817 (not c!736694)) b!4330661))

(assert (= (and b!4330661 c!736695) b!4330662))

(assert (= (and b!4330661 (not c!736695)) b!4330663))

(declare-fun m!4924777 () Bool)

(assert (=> b!4330662 m!4924777))

(assert (=> b!4330488 d!1272817))

(declare-fun d!1272819 () Bool)

(declare-fun res!1775089 () Bool)

(declare-fun e!2694778 () Bool)

(assert (=> d!1272819 (=> res!1775089 e!2694778)))

(assert (=> d!1272819 (= res!1775089 (and (is-Cons!48541 (t!355577 newBucket!230)) (= (_1!27131 (h!54020 (t!355577 newBucket!230))) (_1!27131 (h!54020 newBucket!230)))))))

(assert (=> d!1272819 (= (containsKey!477 (t!355577 newBucket!230) (_1!27131 (h!54020 newBucket!230))) e!2694778)))

(declare-fun b!4330668 () Bool)

(declare-fun e!2694779 () Bool)

(assert (=> b!4330668 (= e!2694778 e!2694779)))

(declare-fun res!1775090 () Bool)

(assert (=> b!4330668 (=> (not res!1775090) (not e!2694779))))

(assert (=> b!4330668 (= res!1775090 (is-Cons!48541 (t!355577 newBucket!230)))))

(declare-fun b!4330669 () Bool)

(assert (=> b!4330669 (= e!2694779 (containsKey!477 (t!355577 (t!355577 newBucket!230)) (_1!27131 (h!54020 newBucket!230))))))

(assert (= (and d!1272819 (not res!1775089)) b!4330668))

(assert (= (and b!4330668 res!1775090) b!4330669))

(declare-fun m!4924779 () Bool)

(assert (=> b!4330669 m!4924779))

(assert (=> b!4330506 d!1272819))

(declare-fun d!1272821 () Bool)

(declare-fun lt!1545544 () Bool)

(assert (=> d!1272821 (= lt!1545544 (set.member lt!1545447 (content!7583 (toList!2643 lt!1545487))))))

(declare-fun e!2694781 () Bool)

(assert (=> d!1272821 (= lt!1545544 e!2694781)))

(declare-fun res!1775091 () Bool)

(assert (=> d!1272821 (=> (not res!1775091) (not e!2694781))))

(assert (=> d!1272821 (= res!1775091 (is-Cons!48542 (toList!2643 lt!1545487)))))

(assert (=> d!1272821 (= (contains!10556 (toList!2643 lt!1545487) lt!1545447) lt!1545544)))

(declare-fun b!4330670 () Bool)

(declare-fun e!2694780 () Bool)

(assert (=> b!4330670 (= e!2694781 e!2694780)))

(declare-fun res!1775092 () Bool)

(assert (=> b!4330670 (=> res!1775092 e!2694780)))

(assert (=> b!4330670 (= res!1775092 (= (h!54021 (toList!2643 lt!1545487)) lt!1545447))))

(declare-fun b!4330671 () Bool)

(assert (=> b!4330671 (= e!2694780 (contains!10556 (t!355578 (toList!2643 lt!1545487)) lt!1545447))))

(assert (= (and d!1272821 res!1775091) b!4330670))

(assert (= (and b!4330670 (not res!1775092)) b!4330671))

(declare-fun m!4924781 () Bool)

(assert (=> d!1272821 m!4924781))

(declare-fun m!4924783 () Bool)

(assert (=> d!1272821 m!4924783))

(declare-fun m!4924785 () Bool)

(assert (=> b!4330671 m!4924785))

(assert (=> b!4330489 d!1272821))

(declare-fun d!1272823 () Bool)

(declare-fun res!1775093 () Bool)

(declare-fun e!2694782 () Bool)

(assert (=> d!1272823 (=> res!1775093 e!2694782)))

(assert (=> d!1272823 (= res!1775093 (is-Nil!48542 (toList!2643 lt!1545449)))))

(assert (=> d!1272823 (= (forall!8873 (toList!2643 lt!1545449) lambda!134578) e!2694782)))

(declare-fun b!4330672 () Bool)

(declare-fun e!2694783 () Bool)

(assert (=> b!4330672 (= e!2694782 e!2694783)))

(declare-fun res!1775094 () Bool)

(assert (=> b!4330672 (=> (not res!1775094) (not e!2694783))))

(assert (=> b!4330672 (= res!1775094 (dynLambda!20542 lambda!134578 (h!54021 (toList!2643 lt!1545449))))))

(declare-fun b!4330673 () Bool)

(assert (=> b!4330673 (= e!2694783 (forall!8873 (t!355578 (toList!2643 lt!1545449)) lambda!134578))))

(assert (= (and d!1272823 (not res!1775093)) b!4330672))

(assert (= (and b!4330672 res!1775094) b!4330673))

(declare-fun b_lambda!127725 () Bool)

(assert (=> (not b_lambda!127725) (not b!4330672)))

(declare-fun m!4924787 () Bool)

(assert (=> b!4330672 m!4924787))

(declare-fun m!4924789 () Bool)

(assert (=> b!4330673 m!4924789))

(assert (=> d!1272735 d!1272823))

(declare-fun d!1272825 () Bool)

(declare-fun res!1775095 () Bool)

(declare-fun e!2694784 () Bool)

(assert (=> d!1272825 (=> res!1775095 e!2694784)))

(assert (=> d!1272825 (= res!1775095 (not (is-Cons!48541 (t!355577 newBucket!230))))))

(assert (=> d!1272825 (= (noDuplicateKeys!338 (t!355577 newBucket!230)) e!2694784)))

(declare-fun b!4330674 () Bool)

(declare-fun e!2694785 () Bool)

(assert (=> b!4330674 (= e!2694784 e!2694785)))

(declare-fun res!1775096 () Bool)

(assert (=> b!4330674 (=> (not res!1775096) (not e!2694785))))

(assert (=> b!4330674 (= res!1775096 (not (containsKey!477 (t!355577 (t!355577 newBucket!230)) (_1!27131 (h!54020 (t!355577 newBucket!230))))))))

(declare-fun b!4330675 () Bool)

(assert (=> b!4330675 (= e!2694785 (noDuplicateKeys!338 (t!355577 (t!355577 newBucket!230))))))

(assert (= (and d!1272825 (not res!1775095)) b!4330674))

(assert (= (and b!4330674 res!1775096) b!4330675))

(declare-fun m!4924791 () Bool)

(assert (=> b!4330674 m!4924791))

(declare-fun m!4924793 () Bool)

(assert (=> b!4330675 m!4924793))

(assert (=> b!4330507 d!1272825))

(declare-fun d!1272827 () Bool)

(declare-fun res!1775101 () Bool)

(declare-fun e!2694790 () Bool)

(assert (=> d!1272827 (=> res!1775101 e!2694790)))

(assert (=> d!1272827 (= res!1775101 (is-Nil!48541 newBucket!230))))

(assert (=> d!1272827 (= (forall!8875 newBucket!230 lambda!134575) e!2694790)))

(declare-fun b!4330680 () Bool)

(declare-fun e!2694791 () Bool)

(assert (=> b!4330680 (= e!2694790 e!2694791)))

(declare-fun res!1775102 () Bool)

(assert (=> b!4330680 (=> (not res!1775102) (not e!2694791))))

(declare-fun dynLambda!20544 (Int tuple2!47674) Bool)

(assert (=> b!4330680 (= res!1775102 (dynLambda!20544 lambda!134575 (h!54020 newBucket!230)))))

(declare-fun b!4330681 () Bool)

(assert (=> b!4330681 (= e!2694791 (forall!8875 (t!355577 newBucket!230) lambda!134575))))

(assert (= (and d!1272827 (not res!1775101)) b!4330680))

(assert (= (and b!4330680 res!1775102) b!4330681))

(declare-fun b_lambda!127727 () Bool)

(assert (=> (not b_lambda!127727) (not b!4330680)))

(declare-fun m!4924795 () Bool)

(assert (=> b!4330680 m!4924795))

(declare-fun m!4924797 () Bool)

(assert (=> b!4330681 m!4924797))

(assert (=> d!1272733 d!1272827))

(declare-fun d!1272829 () Bool)

(declare-fun res!1775103 () Bool)

(declare-fun e!2694792 () Bool)

(assert (=> d!1272829 (=> res!1775103 e!2694792)))

(assert (=> d!1272829 (= res!1775103 (is-Nil!48542 (toList!2643 lt!1545448)))))

(assert (=> d!1272829 (= (forall!8873 (toList!2643 lt!1545448) lambda!134571) e!2694792)))

(declare-fun b!4330682 () Bool)

(declare-fun e!2694793 () Bool)

(assert (=> b!4330682 (= e!2694792 e!2694793)))

(declare-fun res!1775104 () Bool)

(assert (=> b!4330682 (=> (not res!1775104) (not e!2694793))))

(assert (=> b!4330682 (= res!1775104 (dynLambda!20542 lambda!134571 (h!54021 (toList!2643 lt!1545448))))))

(declare-fun b!4330683 () Bool)

(assert (=> b!4330683 (= e!2694793 (forall!8873 (t!355578 (toList!2643 lt!1545448)) lambda!134571))))

(assert (= (and d!1272829 (not res!1775103)) b!4330682))

(assert (= (and b!4330682 res!1775104) b!4330683))

(declare-fun b_lambda!127729 () Bool)

(assert (=> (not b_lambda!127729) (not b!4330682)))

(declare-fun m!4924799 () Bool)

(assert (=> b!4330682 m!4924799))

(declare-fun m!4924801 () Bool)

(assert (=> b!4330683 m!4924801))

(assert (=> d!1272727 d!1272829))

(declare-fun d!1272831 () Bool)

(declare-fun res!1775105 () Bool)

(declare-fun e!2694794 () Bool)

(assert (=> d!1272831 (=> res!1775105 e!2694794)))

(assert (=> d!1272831 (= res!1775105 (is-Nil!48542 (t!355578 (toList!2643 lt!1545448))))))

(assert (=> d!1272831 (= (forall!8873 (t!355578 (toList!2643 lt!1545448)) lambda!134553) e!2694794)))

(declare-fun b!4330684 () Bool)

(declare-fun e!2694795 () Bool)

(assert (=> b!4330684 (= e!2694794 e!2694795)))

(declare-fun res!1775106 () Bool)

(assert (=> b!4330684 (=> (not res!1775106) (not e!2694795))))

(assert (=> b!4330684 (= res!1775106 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (toList!2643 lt!1545448)))))))

(declare-fun b!4330685 () Bool)

(assert (=> b!4330685 (= e!2694795 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545448))) lambda!134553))))

(assert (= (and d!1272831 (not res!1775105)) b!4330684))

(assert (= (and b!4330684 res!1775106) b!4330685))

(declare-fun b_lambda!127731 () Bool)

(assert (=> (not b_lambda!127731) (not b!4330684)))

(declare-fun m!4924803 () Bool)

(assert (=> b!4330684 m!4924803))

(declare-fun m!4924805 () Bool)

(assert (=> b!4330685 m!4924805))

(assert (=> b!4330487 d!1272831))

(declare-fun d!1272833 () Bool)

(declare-fun res!1775107 () Bool)

(declare-fun e!2694796 () Bool)

(assert (=> d!1272833 (=> res!1775107 e!2694796)))

(assert (=> d!1272833 (= res!1775107 (is-Nil!48542 (t!355578 (toList!2643 lt!1545446))))))

(assert (=> d!1272833 (= (forall!8873 (t!355578 (toList!2643 lt!1545446)) lambda!134553) e!2694796)))

(declare-fun b!4330686 () Bool)

(declare-fun e!2694797 () Bool)

(assert (=> b!4330686 (= e!2694796 e!2694797)))

(declare-fun res!1775108 () Bool)

(assert (=> b!4330686 (=> (not res!1775108) (not e!2694797))))

(assert (=> b!4330686 (= res!1775108 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (toList!2643 lt!1545446)))))))

(declare-fun b!4330687 () Bool)

(assert (=> b!4330687 (= e!2694797 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545446))) lambda!134553))))

(assert (= (and d!1272833 (not res!1775107)) b!4330686))

(assert (= (and b!4330686 res!1775108) b!4330687))

(declare-fun b_lambda!127733 () Bool)

(assert (=> (not b_lambda!127733) (not b!4330686)))

(declare-fun m!4924807 () Bool)

(assert (=> b!4330686 m!4924807))

(declare-fun m!4924809 () Bool)

(assert (=> b!4330687 m!4924809))

(assert (=> b!4330491 d!1272833))

(declare-fun bs!607785 () Bool)

(declare-fun d!1272835 () Bool)

(assert (= bs!607785 (and d!1272835 d!1272709)))

(declare-fun lambda!134594 () Int)

(assert (=> bs!607785 (not (= lambda!134594 lambda!134567))))

(declare-fun bs!607786 () Bool)

(assert (= bs!607786 (and d!1272835 d!1272797)))

(assert (=> bs!607786 (not (= lambda!134594 lambda!134593))))

(declare-fun bs!607787 () Bool)

(assert (= bs!607787 (and d!1272835 d!1272735)))

(assert (=> bs!607787 (= lambda!134594 lambda!134578)))

(declare-fun bs!607788 () Bool)

(assert (= bs!607788 (and d!1272835 d!1272731)))

(assert (=> bs!607788 (= lambda!134594 lambda!134572)))

(declare-fun bs!607789 () Bool)

(assert (= bs!607789 (and d!1272835 start!417304)))

(assert (=> bs!607789 (not (= lambda!134594 lambda!134553))))

(declare-fun bs!607790 () Bool)

(assert (= bs!607790 (and d!1272835 d!1272725)))

(assert (=> bs!607790 (= lambda!134594 lambda!134570)))

(declare-fun bs!607791 () Bool)

(assert (= bs!607791 (and d!1272835 d!1272727)))

(assert (=> bs!607791 (= lambda!134594 lambda!134571)))

(assert (=> d!1272835 true))

(assert (=> d!1272835 (= (allKeysSameHashInMap!430 lt!1545471 hashF!1461) (forall!8873 (toList!2643 lt!1545471) lambda!134594))))

(declare-fun bs!607792 () Bool)

(assert (= bs!607792 d!1272835))

(declare-fun m!4924811 () Bool)

(assert (=> bs!607792 m!4924811))

(assert (=> b!4330471 d!1272835))

(declare-fun d!1272837 () Bool)

(declare-fun res!1775113 () Bool)

(declare-fun e!2694802 () Bool)

(assert (=> d!1272837 (=> res!1775113 e!2694802)))

(assert (=> d!1272837 (= res!1775113 (or (is-Nil!48542 (toList!2643 lm!2227)) (is-Nil!48542 (t!355578 (toList!2643 lm!2227)))))))

(assert (=> d!1272837 (= (isStrictlySorted!34 (toList!2643 lm!2227)) e!2694802)))

(declare-fun b!4330692 () Bool)

(declare-fun e!2694803 () Bool)

(assert (=> b!4330692 (= e!2694802 e!2694803)))

(declare-fun res!1775114 () Bool)

(assert (=> b!4330692 (=> (not res!1775114) (not e!2694803))))

(assert (=> b!4330692 (= res!1775114 (bvslt (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))))

(declare-fun b!4330693 () Bool)

(assert (=> b!4330693 (= e!2694803 (isStrictlySorted!34 (t!355578 (toList!2643 lm!2227))))))

(assert (= (and d!1272837 (not res!1775113)) b!4330692))

(assert (= (and b!4330692 res!1775114) b!4330693))

(declare-fun m!4924813 () Bool)

(assert (=> b!4330693 m!4924813))

(assert (=> d!1272707 d!1272837))

(declare-fun d!1272839 () Bool)

(declare-fun res!1775115 () Bool)

(declare-fun e!2694804 () Bool)

(assert (=> d!1272839 (=> res!1775115 e!2694804)))

(assert (=> d!1272839 (= res!1775115 (not (is-Cons!48541 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))))))

(assert (=> d!1272839 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))) e!2694804)))

(declare-fun b!4330694 () Bool)

(declare-fun e!2694805 () Bool)

(assert (=> b!4330694 (= e!2694804 e!2694805)))

(declare-fun res!1775116 () Bool)

(assert (=> b!4330694 (=> (not res!1775116) (not e!2694805))))

(assert (=> b!4330694 (= res!1775116 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))))))))

(declare-fun b!4330695 () Bool)

(assert (=> b!4330695 (= e!2694805 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))))))

(assert (= (and d!1272839 (not res!1775115)) b!4330694))

(assert (= (and b!4330694 res!1775116) b!4330695))

(declare-fun m!4924815 () Bool)

(assert (=> b!4330694 m!4924815))

(declare-fun m!4924817 () Bool)

(assert (=> b!4330695 m!4924817))

(assert (=> bs!607761 d!1272839))

(declare-fun b!4330696 () Bool)

(declare-fun tp!1328429 () Bool)

(declare-fun e!2694806 () Bool)

(assert (=> b!4330696 (= e!2694806 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328429))))

(assert (=> b!4330517 (= tp!1328419 e!2694806)))

(assert (= (and b!4330517 (is-Cons!48541 (t!355577 (t!355577 newBucket!230)))) b!4330696))

(declare-fun b!4330697 () Bool)

(declare-fun tp!1328430 () Bool)

(declare-fun e!2694807 () Bool)

(assert (=> b!4330697 (= e!2694807 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328430))))

(assert (=> b!4330512 (= tp!1328415 e!2694807)))

(assert (= (and b!4330512 (is-Cons!48541 (_2!27132 (h!54021 (toList!2643 lm!2227))))) b!4330697))

(declare-fun b!4330698 () Bool)

(declare-fun e!2694808 () Bool)

(declare-fun tp!1328431 () Bool)

(declare-fun tp!1328432 () Bool)

(assert (=> b!4330698 (= e!2694808 (and tp!1328431 tp!1328432))))

(assert (=> b!4330512 (= tp!1328416 e!2694808)))

(assert (= (and b!4330512 (is-Cons!48542 (t!355578 (toList!2643 lm!2227)))) b!4330698))

(declare-fun b_lambda!127735 () Bool)

(assert (= b_lambda!127725 (or d!1272735 b_lambda!127735)))

(declare-fun bs!607793 () Bool)

(declare-fun d!1272841 () Bool)

(assert (= bs!607793 (and d!1272841 d!1272735)))

(assert (=> bs!607793 (= (dynLambda!20542 lambda!134578 (h!54021 (toList!2643 lt!1545449))) (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (h!54021 (toList!2643 lt!1545449))) hashF!1461))))

(declare-fun m!4924819 () Bool)

(assert (=> bs!607793 m!4924819))

(assert (=> b!4330672 d!1272841))

(declare-fun b_lambda!127737 () Bool)

(assert (= b_lambda!127721 (or d!1272731 b_lambda!127737)))

(declare-fun bs!607794 () Bool)

(declare-fun d!1272843 () Bool)

(assert (= bs!607794 (and d!1272843 d!1272731)))

(assert (=> bs!607794 (= (dynLambda!20542 lambda!134572 (h!54021 (toList!2643 lm!2227))) (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 (h!54021 (toList!2643 lm!2227))) hashF!1461))))

(declare-fun m!4924821 () Bool)

(assert (=> bs!607794 m!4924821))

(assert (=> b!4330633 d!1272843))

(declare-fun b_lambda!127739 () Bool)

(assert (= b_lambda!127731 (or start!417304 b_lambda!127739)))

(declare-fun bs!607795 () Bool)

(declare-fun d!1272845 () Bool)

(assert (= bs!607795 (and d!1272845 start!417304)))

(assert (=> bs!607795 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (toList!2643 lt!1545448)))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448))))))))

(declare-fun m!4924823 () Bool)

(assert (=> bs!607795 m!4924823))

(assert (=> b!4330684 d!1272845))

(declare-fun b_lambda!127741 () Bool)

(assert (= b_lambda!127719 (or d!1272709 b_lambda!127741)))

(declare-fun bs!607796 () Bool)

(declare-fun d!1272847 () Bool)

(assert (= bs!607796 (and d!1272847 d!1272709)))

(assert (=> bs!607796 (= (dynLambda!20542 lambda!134567 (h!54021 (toList!2643 lt!1545449))) (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545449)))))))

(declare-fun m!4924825 () Bool)

(assert (=> bs!607796 m!4924825))

(assert (=> b!4330631 d!1272847))

(declare-fun b_lambda!127743 () Bool)

(assert (= b_lambda!127723 (or start!417304 b_lambda!127743)))

(declare-fun bs!607797 () Bool)

(declare-fun d!1272849 () Bool)

(assert (= bs!607797 (and d!1272849 start!417304)))

(assert (=> bs!607797 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227))))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227)))))))))

(declare-fun m!4924827 () Bool)

(assert (=> bs!607797 m!4924827))

(assert (=> b!4330637 d!1272849))

(declare-fun b_lambda!127745 () Bool)

(assert (= b_lambda!127729 (or d!1272727 b_lambda!127745)))

(declare-fun bs!607798 () Bool)

(declare-fun d!1272851 () Bool)

(assert (= bs!607798 (and d!1272851 d!1272727)))

(assert (=> bs!607798 (= (dynLambda!20542 lambda!134571 (h!54021 (toList!2643 lt!1545448))) (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545448))) (_1!27132 (h!54021 (toList!2643 lt!1545448))) hashF!1461))))

(declare-fun m!4924829 () Bool)

(assert (=> bs!607798 m!4924829))

(assert (=> b!4330682 d!1272851))

(declare-fun b_lambda!127747 () Bool)

(assert (= b_lambda!127717 (or d!1272709 b_lambda!127747)))

(declare-fun bs!607799 () Bool)

(declare-fun d!1272853 () Bool)

(assert (= bs!607799 (and d!1272853 d!1272709)))

(assert (=> bs!607799 (= (dynLambda!20542 lambda!134567 (h!54021 (toList!2643 lt!1545471))) (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545471)))))))

(declare-fun m!4924831 () Bool)

(assert (=> bs!607799 m!4924831))

(assert (=> b!4330624 d!1272853))

(declare-fun b_lambda!127749 () Bool)

(assert (= b_lambda!127727 (or d!1272733 b_lambda!127749)))

(declare-fun bs!607800 () Bool)

(declare-fun d!1272855 () Bool)

(assert (= bs!607800 (and d!1272855 d!1272733)))

(declare-fun hash!1258 (Hashable!4718 K!9883) (_ BitVec 64))

(assert (=> bs!607800 (= (dynLambda!20544 lambda!134575 (h!54020 newBucket!230)) (= (hash!1258 hashF!1461 (_1!27131 (h!54020 newBucket!230))) hash!427))))

(declare-fun m!4924833 () Bool)

(assert (=> bs!607800 m!4924833))

(assert (=> b!4330680 d!1272855))

(declare-fun b_lambda!127751 () Bool)

(assert (= b_lambda!127715 (or d!1272725 b_lambda!127751)))

(declare-fun bs!607801 () Bool)

(declare-fun d!1272857 () Bool)

(assert (= bs!607801 (and d!1272857 d!1272725)))

(assert (=> bs!607801 (= (dynLambda!20542 lambda!134570 (h!54021 (toList!2643 lt!1545446))) (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545446))) (_1!27132 (h!54021 (toList!2643 lt!1545446))) hashF!1461))))

(declare-fun m!4924835 () Bool)

(assert (=> bs!607801 m!4924835))

(assert (=> b!4330616 d!1272857))

(declare-fun b_lambda!127753 () Bool)

(assert (= b_lambda!127733 (or start!417304 b_lambda!127753)))

(declare-fun bs!607802 () Bool)

(declare-fun d!1272859 () Bool)

(assert (= bs!607802 (and d!1272859 start!417304)))

(assert (=> bs!607802 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (toList!2643 lt!1545446)))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446))))))))

(declare-fun m!4924837 () Bool)

(assert (=> bs!607802 m!4924837))

(assert (=> b!4330686 d!1272859))

(push 1)

(assert (not b_lambda!127753))

(assert (not b!4330627))

(assert (not b!4330575))

(assert (not b!4330693))

(assert (not b_lambda!127735))

(assert (not b!4330611))

(assert (not d!1272821))

(assert (not b!4330687))

(assert (not b_lambda!127745))

(assert (not bs!607801))

(assert (not b!4330685))

(assert (not b!4330607))

(assert (not b!4330634))

(assert (not b!4330683))

(assert (not bs!607802))

(assert (not b_lambda!127739))

(assert (not b!4330563))

(assert (not b!4330681))

(assert (not b!4330698))

(assert (not b_lambda!127699))

(assert (not b!4330662))

(assert (not bs!607800))

(assert (not b!4330565))

(assert (not d!1272835))

(assert tp_is_empty!24541)

(assert (not b_lambda!127747))

(assert (not bm!301018))

(assert (not b!4330695))

(assert (not b!4330639))

(assert (not bs!607796))

(assert (not d!1272785))

(assert (not b_lambda!127749))

(assert (not b_lambda!127697))

(assert (not b!4330696))

(assert (not b!4330646))

(assert (not b!4330671))

(assert (not b!4330638))

(assert (not b_lambda!127741))

(assert (not b!4330635))

(assert (not bs!607795))

(assert (not b!4330617))

(assert (not b_lambda!127701))

(assert (not b!4330657))

(assert (not b!4330626))

(assert (not b!4330659))

(assert (not b_lambda!127737))

(assert (not b_lambda!127751))

(assert (not d!1272787))

(assert (not b!4330566))

(assert (not b!4330623))

(assert (not b!4330669))

(assert (not b!4330649))

(assert (not d!1272811))

(assert (not b!4330653))

(assert (not bm!301021))

(assert (not b_lambda!127695))

(assert (not b!4330697))

(assert (not b!4330630))

(assert (not bs!607794))

(assert (not bs!607797))

(assert (not b!4330584))

(assert (not b!4330625))

(assert (not b!4330644))

(assert (not b!4330675))

(assert (not d!1272795))

(assert (not b!4330615))

(assert (not d!1272791))

(assert (not b!4330694))

(assert (not b!4330636))

(assert (not d!1272797))

(assert (not d!1272813))

(assert (not b!4330658))

(assert (not bs!607799))

(assert (not b!4330632))

(assert (not b!4330641))

(assert (not b!4330673))

(assert (not b!4330573))

(assert (not b!4330585))

(assert (not bs!607793))

(assert tp_is_empty!24543)

(assert (not b!4330674))

(assert (not b!4330647))

(assert (not b_lambda!127743))

(assert (not d!1272781))

(assert (not b!4330578))

(assert (not bs!607798))

(assert (not d!1272807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272945 () Bool)

(assert (=> d!1272945 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))

(declare-fun lt!1545582 () Unit!68141)

(declare-fun choose!26485 (List!48666 (_ BitVec 64)) Unit!68141)

(assert (=> d!1272945 (= lt!1545582 (choose!26485 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))

(declare-fun e!2694916 () Bool)

(assert (=> d!1272945 e!2694916))

(declare-fun res!1775198 () Bool)

(assert (=> d!1272945 (=> (not res!1775198) (not e!2694916))))

(assert (=> d!1272945 (= res!1775198 (isStrictlySorted!34 (toList!2643 lt!1545487)))))

(assert (=> d!1272945 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!234 (toList!2643 lt!1545487) (_1!27132 lt!1545447)) lt!1545582)))

(declare-fun b!4330847 () Bool)

(assert (=> b!4330847 (= e!2694916 (containsKey!479 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))

(assert (= (and d!1272945 res!1775198) b!4330847))

(assert (=> d!1272945 m!4924567))

(assert (=> d!1272945 m!4924567))

(assert (=> d!1272945 m!4924677))

(declare-fun m!4925011 () Bool)

(assert (=> d!1272945 m!4925011))

(declare-fun m!4925013 () Bool)

(assert (=> d!1272945 m!4925013))

(assert (=> b!4330847 m!4924673))

(assert (=> b!4330573 d!1272945))

(declare-fun d!1272947 () Bool)

(declare-fun isEmpty!28149 (Option!10332) Bool)

(assert (=> d!1272947 (= (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447))) (not (isEmpty!28149 (getValueByKey!318 (toList!2643 lt!1545487) (_1!27132 lt!1545447)))))))

(declare-fun bs!607827 () Bool)

(assert (= bs!607827 d!1272947))

(assert (=> bs!607827 m!4924567))

(declare-fun m!4925015 () Bool)

(assert (=> bs!607827 m!4925015))

(assert (=> b!4330573 d!1272947))

(assert (=> b!4330573 d!1272817))

(declare-fun d!1272949 () Bool)

(declare-fun c!736730 () Bool)

(assert (=> d!1272949 (= c!736730 (is-Nil!48542 (toList!2643 lt!1545483)))))

(declare-fun e!2694919 () (Set tuple2!47676))

(assert (=> d!1272949 (= (content!7583 (toList!2643 lt!1545483)) e!2694919)))

(declare-fun b!4330852 () Bool)

(assert (=> b!4330852 (= e!2694919 (as set.empty (Set tuple2!47676)))))

(declare-fun b!4330853 () Bool)

(assert (=> b!4330853 (= e!2694919 (set.union (set.insert (h!54021 (toList!2643 lt!1545483)) (as set.empty (Set tuple2!47676))) (content!7583 (t!355578 (toList!2643 lt!1545483)))))))

(assert (= (and d!1272949 c!736730) b!4330852))

(assert (= (and d!1272949 (not c!736730)) b!4330853))

(declare-fun m!4925017 () Bool)

(assert (=> b!4330853 m!4925017))

(declare-fun m!4925019 () Bool)

(assert (=> b!4330853 m!4925019))

(assert (=> d!1272791 d!1272949))

(declare-fun d!1272951 () Bool)

(declare-fun res!1775199 () Bool)

(declare-fun e!2694920 () Bool)

(assert (=> d!1272951 (=> res!1775199 e!2694920)))

(assert (=> d!1272951 (= res!1775199 (not (is-Cons!48541 (_2!27132 (h!54021 (toList!2643 lt!1545449))))))))

(assert (=> d!1272951 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545449)))) e!2694920)))

(declare-fun b!4330854 () Bool)

(declare-fun e!2694921 () Bool)

(assert (=> b!4330854 (= e!2694920 e!2694921)))

(declare-fun res!1775200 () Bool)

(assert (=> b!4330854 (=> (not res!1775200) (not e!2694921))))

(assert (=> b!4330854 (= res!1775200 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545449)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545449))))))))))

(declare-fun b!4330855 () Bool)

(assert (=> b!4330855 (= e!2694921 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545449))))))))

(assert (= (and d!1272951 (not res!1775199)) b!4330854))

(assert (= (and b!4330854 res!1775200) b!4330855))

(declare-fun m!4925021 () Bool)

(assert (=> b!4330854 m!4925021))

(declare-fun m!4925023 () Bool)

(assert (=> b!4330855 m!4925023))

(assert (=> bs!607796 d!1272951))

(declare-fun d!1272953 () Bool)

(declare-fun res!1775205 () Bool)

(declare-fun e!2694926 () Bool)

(assert (=> d!1272953 (=> res!1775205 e!2694926)))

(assert (=> d!1272953 (= res!1775205 (and (is-Cons!48542 lt!1545480) (= (_1!27132 (h!54021 lt!1545480)) (_1!27132 lt!1545447))))))

(assert (=> d!1272953 (= (containsKey!479 lt!1545480 (_1!27132 lt!1545447)) e!2694926)))

(declare-fun b!4330860 () Bool)

(declare-fun e!2694927 () Bool)

(assert (=> b!4330860 (= e!2694926 e!2694927)))

(declare-fun res!1775206 () Bool)

(assert (=> b!4330860 (=> (not res!1775206) (not e!2694927))))

(assert (=> b!4330860 (= res!1775206 (and (or (not (is-Cons!48542 lt!1545480)) (bvsle (_1!27132 (h!54021 lt!1545480)) (_1!27132 lt!1545447))) (is-Cons!48542 lt!1545480) (bvslt (_1!27132 (h!54021 lt!1545480)) (_1!27132 lt!1545447))))))

(declare-fun b!4330861 () Bool)

(assert (=> b!4330861 (= e!2694927 (containsKey!479 (t!355578 lt!1545480) (_1!27132 lt!1545447)))))

(assert (= (and d!1272953 (not res!1775205)) b!4330860))

(assert (= (and b!4330860 res!1775206) b!4330861))

(declare-fun m!4925025 () Bool)

(assert (=> b!4330861 m!4925025))

(assert (=> b!4330646 d!1272953))

(declare-fun d!1272955 () Bool)

(declare-fun c!736731 () Bool)

(assert (=> d!1272955 (= c!736731 (and (is-Cons!48542 (t!355578 lt!1545484)) (= (_1!27132 (h!54021 (t!355578 lt!1545484))) (_1!27132 lt!1545447))))))

(declare-fun e!2694928 () Option!10332)

(assert (=> d!1272955 (= (getValueByKey!318 (t!355578 lt!1545484) (_1!27132 lt!1545447)) e!2694928)))

(declare-fun b!4330864 () Bool)

(declare-fun e!2694929 () Option!10332)

(assert (=> b!4330864 (= e!2694929 (getValueByKey!318 (t!355578 (t!355578 lt!1545484)) (_1!27132 lt!1545447)))))

(declare-fun b!4330865 () Bool)

(assert (=> b!4330865 (= e!2694929 None!10331)))

(declare-fun b!4330863 () Bool)

(assert (=> b!4330863 (= e!2694928 e!2694929)))

(declare-fun c!736732 () Bool)

(assert (=> b!4330863 (= c!736732 (and (is-Cons!48542 (t!355578 lt!1545484)) (not (= (_1!27132 (h!54021 (t!355578 lt!1545484))) (_1!27132 lt!1545447)))))))

(declare-fun b!4330862 () Bool)

(assert (=> b!4330862 (= e!2694928 (Some!10331 (_2!27132 (h!54021 (t!355578 lt!1545484)))))))

(assert (= (and d!1272955 c!736731) b!4330862))

(assert (= (and d!1272955 (not c!736731)) b!4330863))

(assert (= (and b!4330863 c!736732) b!4330864))

(assert (= (and b!4330863 (not c!736732)) b!4330865))

(declare-fun m!4925027 () Bool)

(assert (=> b!4330864 m!4925027))

(assert (=> b!4330578 d!1272955))

(declare-fun d!1272957 () Bool)

(declare-fun res!1775207 () Bool)

(declare-fun e!2694930 () Bool)

(assert (=> d!1272957 (=> res!1775207 e!2694930)))

(assert (=> d!1272957 (= res!1775207 (is-Nil!48542 (t!355578 (toList!2643 lt!1545449))))))

(assert (=> d!1272957 (= (forall!8873 (t!355578 (toList!2643 lt!1545449)) lambda!134567) e!2694930)))

(declare-fun b!4330866 () Bool)

(declare-fun e!2694931 () Bool)

(assert (=> b!4330866 (= e!2694930 e!2694931)))

(declare-fun res!1775208 () Bool)

(assert (=> b!4330866 (=> (not res!1775208) (not e!2694931))))

(assert (=> b!4330866 (= res!1775208 (dynLambda!20542 lambda!134567 (h!54021 (t!355578 (toList!2643 lt!1545449)))))))

(declare-fun b!4330867 () Bool)

(assert (=> b!4330867 (= e!2694931 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545449))) lambda!134567))))

(assert (= (and d!1272957 (not res!1775207)) b!4330866))

(assert (= (and b!4330866 res!1775208) b!4330867))

(declare-fun b_lambda!127795 () Bool)

(assert (=> (not b_lambda!127795) (not b!4330866)))

(declare-fun m!4925029 () Bool)

(assert (=> b!4330866 m!4925029))

(declare-fun m!4925031 () Bool)

(assert (=> b!4330867 m!4925031))

(assert (=> b!4330632 d!1272957))

(declare-fun b!4330868 () Bool)

(declare-fun c!736733 () Bool)

(assert (=> b!4330868 (= c!736733 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545449))) (bvsgt (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545449)))) (_1!27132 lt!1545447))))))

(declare-fun e!2694932 () List!48666)

(declare-fun e!2694934 () List!48666)

(assert (=> b!4330868 (= e!2694932 e!2694934)))

(declare-fun b!4330869 () Bool)

(declare-fun res!1775210 () Bool)

(declare-fun e!2694933 () Bool)

(assert (=> b!4330869 (=> (not res!1775210) (not e!2694933))))

(declare-fun lt!1545583 () List!48666)

(assert (=> b!4330869 (= res!1775210 (containsKey!479 lt!1545583 (_1!27132 lt!1545447)))))

(declare-fun b!4330870 () Bool)

(declare-fun e!2694935 () List!48666)

(declare-fun call!301040 () List!48666)

(assert (=> b!4330870 (= e!2694935 call!301040)))

(declare-fun bm!301035 () Bool)

(declare-fun call!301041 () List!48666)

(declare-fun call!301042 () List!48666)

(assert (=> bm!301035 (= call!301041 call!301042)))

(declare-fun bm!301036 () Bool)

(declare-fun e!2694936 () List!48666)

(declare-fun c!736734 () Bool)

(assert (=> bm!301036 (= call!301040 ($colon$colon!664 e!2694936 (ite c!736734 (h!54021 (t!355578 (toList!2643 lt!1545449))) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))))

(declare-fun c!736736 () Bool)

(assert (=> bm!301036 (= c!736736 c!736734)))

(declare-fun b!4330871 () Bool)

(assert (=> b!4330871 (= e!2694935 e!2694932)))

(declare-fun c!736735 () Bool)

(assert (=> b!4330871 (= c!736735 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545449))) (= (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545449)))) (_1!27132 lt!1545447))))))

(declare-fun b!4330872 () Bool)

(assert (=> b!4330872 (= e!2694934 call!301041)))

(declare-fun b!4330873 () Bool)

(assert (=> b!4330873 (= e!2694933 (contains!10556 lt!1545583 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun d!1272959 () Bool)

(assert (=> d!1272959 e!2694933))

(declare-fun res!1775209 () Bool)

(assert (=> d!1272959 (=> (not res!1775209) (not e!2694933))))

(assert (=> d!1272959 (= res!1775209 (isStrictlySorted!34 lt!1545583))))

(assert (=> d!1272959 (= lt!1545583 e!2694935)))

(assert (=> d!1272959 (= c!736734 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545449))) (bvslt (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545449)))) (_1!27132 lt!1545447))))))

(assert (=> d!1272959 (isStrictlySorted!34 (t!355578 (toList!2643 lt!1545449)))))

(assert (=> d!1272959 (= (insertStrictlySorted!66 (t!355578 (toList!2643 lt!1545449)) (_1!27132 lt!1545447) (_2!27132 lt!1545447)) lt!1545583)))

(declare-fun b!4330874 () Bool)

(assert (=> b!4330874 (= e!2694934 call!301041)))

(declare-fun bm!301037 () Bool)

(assert (=> bm!301037 (= call!301042 call!301040)))

(declare-fun b!4330875 () Bool)

(assert (=> b!4330875 (= e!2694936 (ite c!736735 (t!355578 (t!355578 (toList!2643 lt!1545449))) (ite c!736733 (Cons!48542 (h!54021 (t!355578 (toList!2643 lt!1545449))) (t!355578 (t!355578 (toList!2643 lt!1545449)))) Nil!48542)))))

(declare-fun b!4330876 () Bool)

(assert (=> b!4330876 (= e!2694932 call!301042)))

(declare-fun b!4330877 () Bool)

(assert (=> b!4330877 (= e!2694936 (insertStrictlySorted!66 (t!355578 (t!355578 (toList!2643 lt!1545449))) (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (= (and d!1272959 c!736734) b!4330870))

(assert (= (and d!1272959 (not c!736734)) b!4330871))

(assert (= (and b!4330871 c!736735) b!4330876))

(assert (= (and b!4330871 (not c!736735)) b!4330868))

(assert (= (and b!4330868 c!736733) b!4330874))

(assert (= (and b!4330868 (not c!736733)) b!4330872))

(assert (= (or b!4330874 b!4330872) bm!301035))

(assert (= (or b!4330876 bm!301035) bm!301037))

(assert (= (or b!4330870 bm!301037) bm!301036))

(assert (= (and bm!301036 c!736736) b!4330877))

(assert (= (and bm!301036 (not c!736736)) b!4330875))

(assert (= (and d!1272959 res!1775209) b!4330869))

(assert (= (and b!4330869 res!1775210) b!4330873))

(declare-fun m!4925033 () Bool)

(assert (=> b!4330869 m!4925033))

(declare-fun m!4925035 () Bool)

(assert (=> bm!301036 m!4925035))

(declare-fun m!4925037 () Bool)

(assert (=> b!4330873 m!4925037))

(declare-fun m!4925039 () Bool)

(assert (=> d!1272959 m!4925039))

(declare-fun m!4925041 () Bool)

(assert (=> d!1272959 m!4925041))

(declare-fun m!4925043 () Bool)

(assert (=> b!4330877 m!4925043))

(assert (=> b!4330657 d!1272959))

(declare-fun d!1272961 () Bool)

(declare-fun res!1775211 () Bool)

(declare-fun e!2694937 () Bool)

(assert (=> d!1272961 (=> res!1775211 e!2694937)))

(assert (=> d!1272961 (= res!1775211 (and (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227))))) (= (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lm!2227))))))))))

(assert (=> d!1272961 (= (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lm!2227)))))) e!2694937)))

(declare-fun b!4330878 () Bool)

(declare-fun e!2694938 () Bool)

(assert (=> b!4330878 (= e!2694937 e!2694938)))

(declare-fun res!1775212 () Bool)

(assert (=> b!4330878 (=> (not res!1775212) (not e!2694938))))

(assert (=> b!4330878 (= res!1775212 (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227))))))))

(declare-fun b!4330879 () Bool)

(assert (=> b!4330879 (= e!2694938 (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lm!2227)))))))))

(assert (= (and d!1272961 (not res!1775211)) b!4330878))

(assert (= (and b!4330878 res!1775212) b!4330879))

(declare-fun m!4925045 () Bool)

(assert (=> b!4330879 m!4925045))

(assert (=> b!4330658 d!1272961))

(declare-fun d!1272963 () Bool)

(declare-fun res!1775213 () Bool)

(declare-fun e!2694939 () Bool)

(assert (=> d!1272963 (=> res!1775213 e!2694939)))

(assert (=> d!1272963 (= res!1775213 (is-Nil!48542 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227))))))))

(assert (=> d!1272963 (= (forall!8873 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227)))) lambda!134553) e!2694939)))

(declare-fun b!4330880 () Bool)

(declare-fun e!2694940 () Bool)

(assert (=> b!4330880 (= e!2694939 e!2694940)))

(declare-fun res!1775214 () Bool)

(assert (=> b!4330880 (=> (not res!1775214) (not e!2694940))))

(assert (=> b!4330880 (= res!1775214 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227)))))))))

(declare-fun b!4330881 () Bool)

(assert (=> b!4330881 (= e!2694940 (forall!8873 (t!355578 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227))))) lambda!134553))))

(assert (= (and d!1272963 (not res!1775213)) b!4330880))

(assert (= (and b!4330880 res!1775214) b!4330881))

(declare-fun b_lambda!127797 () Bool)

(assert (=> (not b_lambda!127797) (not b!4330880)))

(declare-fun m!4925047 () Bool)

(assert (=> b!4330880 m!4925047))

(declare-fun m!4925049 () Bool)

(assert (=> b!4330881 m!4925049))

(assert (=> b!4330638 d!1272963))

(declare-fun d!1272965 () Bool)

(declare-fun res!1775215 () Bool)

(declare-fun e!2694941 () Bool)

(assert (=> d!1272965 (=> res!1775215 e!2694941)))

(assert (=> d!1272965 (= res!1775215 (not (is-Cons!48541 (_2!27132 (h!54021 (toList!2643 lt!1545471))))))))

(assert (=> d!1272965 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545471)))) e!2694941)))

(declare-fun b!4330882 () Bool)

(declare-fun e!2694942 () Bool)

(assert (=> b!4330882 (= e!2694941 e!2694942)))

(declare-fun res!1775216 () Bool)

(assert (=> b!4330882 (=> (not res!1775216) (not e!2694942))))

(assert (=> b!4330882 (= res!1775216 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545471)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545471))))))))))

(declare-fun b!4330883 () Bool)

(assert (=> b!4330883 (= e!2694942 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545471))))))))

(assert (= (and d!1272965 (not res!1775215)) b!4330882))

(assert (= (and b!4330882 res!1775216) b!4330883))

(declare-fun m!4925051 () Bool)

(assert (=> b!4330882 m!4925051))

(declare-fun m!4925053 () Bool)

(assert (=> b!4330883 m!4925053))

(assert (=> bs!607799 d!1272965))

(declare-fun d!1272967 () Bool)

(declare-fun res!1775217 () Bool)

(declare-fun e!2694943 () Bool)

(assert (=> d!1272967 (=> res!1775217 e!2694943)))

(assert (=> d!1272967 (= res!1775217 (not (is-Cons!48541 (t!355577 (t!355577 newBucket!230)))))))

(assert (=> d!1272967 (= (noDuplicateKeys!338 (t!355577 (t!355577 newBucket!230))) e!2694943)))

(declare-fun b!4330884 () Bool)

(declare-fun e!2694944 () Bool)

(assert (=> b!4330884 (= e!2694943 e!2694944)))

(declare-fun res!1775218 () Bool)

(assert (=> b!4330884 (=> (not res!1775218) (not e!2694944))))

(assert (=> b!4330884 (= res!1775218 (not (containsKey!477 (t!355577 (t!355577 (t!355577 newBucket!230))) (_1!27131 (h!54020 (t!355577 (t!355577 newBucket!230)))))))))

(declare-fun b!4330885 () Bool)

(assert (=> b!4330885 (= e!2694944 (noDuplicateKeys!338 (t!355577 (t!355577 (t!355577 newBucket!230)))))))

(assert (= (and d!1272967 (not res!1775217)) b!4330884))

(assert (= (and b!4330884 res!1775218) b!4330885))

(declare-fun m!4925055 () Bool)

(assert (=> b!4330884 m!4925055))

(declare-fun m!4925057 () Bool)

(assert (=> b!4330885 m!4925057))

(assert (=> b!4330675 d!1272967))

(declare-fun d!1272969 () Bool)

(declare-fun res!1775219 () Bool)

(declare-fun e!2694945 () Bool)

(assert (=> d!1272969 (=> res!1775219 e!2694945)))

(assert (=> d!1272969 (= res!1775219 (is-Nil!48542 (t!355578 (toList!2643 lt!1545446))))))

(assert (=> d!1272969 (= (forall!8873 (t!355578 (toList!2643 lt!1545446)) lambda!134570) e!2694945)))

(declare-fun b!4330886 () Bool)

(declare-fun e!2694946 () Bool)

(assert (=> b!4330886 (= e!2694945 e!2694946)))

(declare-fun res!1775220 () Bool)

(assert (=> b!4330886 (=> (not res!1775220) (not e!2694946))))

(assert (=> b!4330886 (= res!1775220 (dynLambda!20542 lambda!134570 (h!54021 (t!355578 (toList!2643 lt!1545446)))))))

(declare-fun b!4330887 () Bool)

(assert (=> b!4330887 (= e!2694946 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545446))) lambda!134570))))

(assert (= (and d!1272969 (not res!1775219)) b!4330886))

(assert (= (and b!4330886 res!1775220) b!4330887))

(declare-fun b_lambda!127799 () Bool)

(assert (=> (not b_lambda!127799) (not b!4330886)))

(declare-fun m!4925059 () Bool)

(assert (=> b!4330886 m!4925059))

(declare-fun m!4925061 () Bool)

(assert (=> b!4330887 m!4925061))

(assert (=> b!4330617 d!1272969))

(declare-fun d!1272971 () Bool)

(declare-fun res!1775221 () Bool)

(declare-fun e!2694947 () Bool)

(assert (=> d!1272971 (=> res!1775221 e!2694947)))

(assert (=> d!1272971 (= res!1775221 (or (is-Nil!48542 lt!1545527) (is-Nil!48542 (t!355578 lt!1545527))))))

(assert (=> d!1272971 (= (isStrictlySorted!34 lt!1545527) e!2694947)))

(declare-fun b!4330888 () Bool)

(declare-fun e!2694948 () Bool)

(assert (=> b!4330888 (= e!2694947 e!2694948)))

(declare-fun res!1775222 () Bool)

(assert (=> b!4330888 (=> (not res!1775222) (not e!2694948))))

(assert (=> b!4330888 (= res!1775222 (bvslt (_1!27132 (h!54021 lt!1545527)) (_1!27132 (h!54021 (t!355578 lt!1545527)))))))

(declare-fun b!4330889 () Bool)

(assert (=> b!4330889 (= e!2694948 (isStrictlySorted!34 (t!355578 lt!1545527)))))

(assert (= (and d!1272971 (not res!1775221)) b!4330888))

(assert (= (and b!4330888 res!1775222) b!4330889))

(declare-fun m!4925063 () Bool)

(assert (=> b!4330889 m!4925063))

(assert (=> d!1272787 d!1272971))

(assert (=> d!1272787 d!1272837))

(declare-fun d!1272973 () Bool)

(declare-fun res!1775223 () Bool)

(declare-fun e!2694949 () Bool)

(assert (=> d!1272973 (=> res!1775223 e!2694949)))

(assert (=> d!1272973 (= res!1775223 (is-Nil!48542 (t!355578 (toList!2643 lt!1545448))))))

(assert (=> d!1272973 (= (forall!8873 (t!355578 (toList!2643 lt!1545448)) lambda!134571) e!2694949)))

(declare-fun b!4330890 () Bool)

(declare-fun e!2694950 () Bool)

(assert (=> b!4330890 (= e!2694949 e!2694950)))

(declare-fun res!1775224 () Bool)

(assert (=> b!4330890 (=> (not res!1775224) (not e!2694950))))

(assert (=> b!4330890 (= res!1775224 (dynLambda!20542 lambda!134571 (h!54021 (t!355578 (toList!2643 lt!1545448)))))))

(declare-fun b!4330891 () Bool)

(assert (=> b!4330891 (= e!2694950 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545448))) lambda!134571))))

(assert (= (and d!1272973 (not res!1775223)) b!4330890))

(assert (= (and b!4330890 res!1775224) b!4330891))

(declare-fun b_lambda!127801 () Bool)

(assert (=> (not b_lambda!127801) (not b!4330890)))

(declare-fun m!4925065 () Bool)

(assert (=> b!4330890 m!4925065))

(declare-fun m!4925067 () Bool)

(assert (=> b!4330891 m!4925067))

(assert (=> b!4330683 d!1272973))

(declare-fun d!1272975 () Bool)

(declare-fun c!736737 () Bool)

(assert (=> d!1272975 (= c!736737 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545483))) (= (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545483)))) (_1!27132 lt!1545447))))))

(declare-fun e!2694951 () Option!10332)

(assert (=> d!1272975 (= (getValueByKey!318 (t!355578 (toList!2643 lt!1545483)) (_1!27132 lt!1545447)) e!2694951)))

(declare-fun b!4330894 () Bool)

(declare-fun e!2694952 () Option!10332)

(assert (=> b!4330894 (= e!2694952 (getValueByKey!318 (t!355578 (t!355578 (toList!2643 lt!1545483))) (_1!27132 lt!1545447)))))

(declare-fun b!4330895 () Bool)

(assert (=> b!4330895 (= e!2694952 None!10331)))

(declare-fun b!4330893 () Bool)

(assert (=> b!4330893 (= e!2694951 e!2694952)))

(declare-fun c!736738 () Bool)

(assert (=> b!4330893 (= c!736738 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545483))) (not (= (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545483)))) (_1!27132 lt!1545447)))))))

(declare-fun b!4330892 () Bool)

(assert (=> b!4330892 (= e!2694951 (Some!10331 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545483))))))))

(assert (= (and d!1272975 c!736737) b!4330892))

(assert (= (and d!1272975 (not c!736737)) b!4330893))

(assert (= (and b!4330893 c!736738) b!4330894))

(assert (= (and b!4330893 (not c!736738)) b!4330895))

(declare-fun m!4925069 () Bool)

(assert (=> b!4330894 m!4925069))

(assert (=> b!4330563 d!1272975))

(declare-fun d!1272977 () Bool)

(declare-fun c!736739 () Bool)

(assert (=> d!1272977 (= c!736739 (and (is-Cons!48542 (toList!2643 lt!1545534)) (= (_1!27132 (h!54021 (toList!2643 lt!1545534))) (_1!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(declare-fun e!2694953 () Option!10332)

(assert (=> d!1272977 (= (getValueByKey!318 (toList!2643 lt!1545534) (_1!27132 (tuple2!47677 hash!427 newBucket!230))) e!2694953)))

(declare-fun e!2694954 () Option!10332)

(declare-fun b!4330898 () Bool)

(assert (=> b!4330898 (= e!2694954 (getValueByKey!318 (t!355578 (toList!2643 lt!1545534)) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun b!4330899 () Bool)

(assert (=> b!4330899 (= e!2694954 None!10331)))

(declare-fun b!4330897 () Bool)

(assert (=> b!4330897 (= e!2694953 e!2694954)))

(declare-fun c!736740 () Bool)

(assert (=> b!4330897 (= c!736740 (and (is-Cons!48542 (toList!2643 lt!1545534)) (not (= (_1!27132 (h!54021 (toList!2643 lt!1545534))) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))))

(declare-fun b!4330896 () Bool)

(assert (=> b!4330896 (= e!2694953 (Some!10331 (_2!27132 (h!54021 (toList!2643 lt!1545534)))))))

(assert (= (and d!1272977 c!736739) b!4330896))

(assert (= (and d!1272977 (not c!736739)) b!4330897))

(assert (= (and b!4330897 c!736740) b!4330898))

(assert (= (and b!4330897 (not c!736740)) b!4330899))

(declare-fun m!4925071 () Bool)

(assert (=> b!4330898 m!4925071))

(assert (=> b!4330626 d!1272977))

(declare-fun d!1272979 () Bool)

(assert (=> d!1272979 (= (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447))) (not (isEmpty!28149 (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))))

(declare-fun bs!607828 () Bool)

(assert (= bs!607828 d!1272979))

(assert (=> bs!607828 m!4924549))

(declare-fun m!4925073 () Bool)

(assert (=> bs!607828 m!4925073))

(assert (=> b!4330641 d!1272979))

(assert (=> b!4330641 d!1272777))

(declare-fun d!1272981 () Bool)

(declare-fun lt!1545584 () Bool)

(assert (=> d!1272981 (= lt!1545584 (set.member (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) (content!7583 lt!1545527)))))

(declare-fun e!2694956 () Bool)

(assert (=> d!1272981 (= lt!1545584 e!2694956)))

(declare-fun res!1775225 () Bool)

(assert (=> d!1272981 (=> (not res!1775225) (not e!2694956))))

(assert (=> d!1272981 (= res!1775225 (is-Cons!48542 lt!1545527))))

(assert (=> d!1272981 (= (contains!10556 lt!1545527 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))) lt!1545584)))

(declare-fun b!4330900 () Bool)

(declare-fun e!2694955 () Bool)

(assert (=> b!4330900 (= e!2694956 e!2694955)))

(declare-fun res!1775226 () Bool)

(assert (=> b!4330900 (=> res!1775226 e!2694955)))

(assert (=> b!4330900 (= res!1775226 (= (h!54021 lt!1545527) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun b!4330901 () Bool)

(assert (=> b!4330901 (= e!2694955 (contains!10556 (t!355578 lt!1545527) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(assert (= (and d!1272981 res!1775225) b!4330900))

(assert (= (and b!4330900 (not res!1775226)) b!4330901))

(declare-fun m!4925075 () Bool)

(assert (=> d!1272981 m!4925075))

(declare-fun m!4925077 () Bool)

(assert (=> d!1272981 m!4925077))

(declare-fun m!4925079 () Bool)

(assert (=> b!4330901 m!4925079))

(assert (=> b!4330611 d!1272981))

(declare-fun d!1272983 () Bool)

(declare-fun res!1775227 () Bool)

(declare-fun e!2694957 () Bool)

(assert (=> d!1272983 (=> res!1775227 e!2694957)))

(assert (=> d!1272983 (= res!1775227 (or (is-Nil!48542 lt!1545543) (is-Nil!48542 (t!355578 lt!1545543))))))

(assert (=> d!1272983 (= (isStrictlySorted!34 lt!1545543) e!2694957)))

(declare-fun b!4330902 () Bool)

(declare-fun e!2694958 () Bool)

(assert (=> b!4330902 (= e!2694957 e!2694958)))

(declare-fun res!1775228 () Bool)

(assert (=> b!4330902 (=> (not res!1775228) (not e!2694958))))

(assert (=> b!4330902 (= res!1775228 (bvslt (_1!27132 (h!54021 lt!1545543)) (_1!27132 (h!54021 (t!355578 lt!1545543)))))))

(declare-fun b!4330903 () Bool)

(assert (=> b!4330903 (= e!2694958 (isStrictlySorted!34 (t!355578 lt!1545543)))))

(assert (= (and d!1272983 (not res!1775227)) b!4330902))

(assert (= (and b!4330902 res!1775228) b!4330903))

(declare-fun m!4925081 () Bool)

(assert (=> b!4330903 m!4925081))

(assert (=> d!1272813 d!1272983))

(declare-fun d!1272985 () Bool)

(declare-fun res!1775229 () Bool)

(declare-fun e!2694959 () Bool)

(assert (=> d!1272985 (=> res!1775229 e!2694959)))

(assert (=> d!1272985 (= res!1775229 (or (is-Nil!48542 (toList!2643 lt!1545449)) (is-Nil!48542 (t!355578 (toList!2643 lt!1545449)))))))

(assert (=> d!1272985 (= (isStrictlySorted!34 (toList!2643 lt!1545449)) e!2694959)))

(declare-fun b!4330904 () Bool)

(declare-fun e!2694960 () Bool)

(assert (=> b!4330904 (= e!2694959 e!2694960)))

(declare-fun res!1775230 () Bool)

(assert (=> b!4330904 (=> (not res!1775230) (not e!2694960))))

(assert (=> b!4330904 (= res!1775230 (bvslt (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545449))))))))

(declare-fun b!4330905 () Bool)

(assert (=> b!4330905 (= e!2694960 (isStrictlySorted!34 (t!355578 (toList!2643 lt!1545449))))))

(assert (= (and d!1272985 (not res!1775229)) b!4330904))

(assert (= (and b!4330904 res!1775230) b!4330905))

(assert (=> b!4330905 m!4925041))

(assert (=> d!1272813 d!1272985))

(declare-fun d!1272987 () Bool)

(declare-fun res!1775231 () Bool)

(declare-fun e!2694961 () Bool)

(assert (=> d!1272987 (=> res!1775231 e!2694961)))

(assert (=> d!1272987 (= res!1775231 (is-Nil!48542 (t!355578 (toList!2643 lm!2227))))))

(assert (=> d!1272987 (= (forall!8873 (t!355578 (toList!2643 lm!2227)) lambda!134572) e!2694961)))

(declare-fun b!4330906 () Bool)

(declare-fun e!2694962 () Bool)

(assert (=> b!4330906 (= e!2694961 e!2694962)))

(declare-fun res!1775232 () Bool)

(assert (=> b!4330906 (=> (not res!1775232) (not e!2694962))))

(assert (=> b!4330906 (= res!1775232 (dynLambda!20542 lambda!134572 (h!54021 (t!355578 (toList!2643 lm!2227)))))))

(declare-fun b!4330907 () Bool)

(assert (=> b!4330907 (= e!2694962 (forall!8873 (t!355578 (t!355578 (toList!2643 lm!2227))) lambda!134572))))

(assert (= (and d!1272987 (not res!1775231)) b!4330906))

(assert (= (and b!4330906 res!1775232) b!4330907))

(declare-fun b_lambda!127803 () Bool)

(assert (=> (not b_lambda!127803) (not b!4330906)))

(declare-fun m!4925083 () Bool)

(assert (=> b!4330906 m!4925083))

(declare-fun m!4925085 () Bool)

(assert (=> b!4330907 m!4925085))

(assert (=> b!4330634 d!1272987))

(declare-fun bs!607829 () Bool)

(declare-fun d!1272989 () Bool)

(assert (= bs!607829 (and d!1272989 d!1272733)))

(declare-fun lambda!134599 () Int)

(assert (=> bs!607829 (= (= (_1!27132 (h!54021 (toList!2643 lt!1545448))) hash!427) (= lambda!134599 lambda!134575))))

(assert (=> d!1272989 true))

(assert (=> d!1272989 true))

(assert (=> d!1272989 (= (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545448))) (_1!27132 (h!54021 (toList!2643 lt!1545448))) hashF!1461) (forall!8875 (_2!27132 (h!54021 (toList!2643 lt!1545448))) lambda!134599))))

(declare-fun bs!607830 () Bool)

(assert (= bs!607830 d!1272989))

(declare-fun m!4925087 () Bool)

(assert (=> bs!607830 m!4925087))

(assert (=> bs!607798 d!1272989))

(declare-fun d!1272991 () Bool)

(assert (=> d!1272991 (= ($colon$colon!664 e!2694737 (ite c!736684 (h!54021 (toList!2643 lm!2227)) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))) (Cons!48542 (ite c!736684 (h!54021 (toList!2643 lm!2227)) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))) e!2694737))))

(assert (=> bm!301018 d!1272991))

(declare-fun d!1272993 () Bool)

(declare-fun res!1775233 () Bool)

(declare-fun e!2694963 () Bool)

(assert (=> d!1272993 (=> res!1775233 e!2694963)))

(assert (=> d!1272993 (= res!1775233 (and (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))) (= (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))))))))

(assert (=> d!1272993 (= (containsKey!477 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))) e!2694963)))

(declare-fun b!4330908 () Bool)

(declare-fun e!2694964 () Bool)

(assert (=> b!4330908 (= e!2694963 e!2694964)))

(declare-fun res!1775234 () Bool)

(assert (=> b!4330908 (=> (not res!1775234) (not e!2694964))))

(assert (=> b!4330908 (= res!1775234 (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))))))

(declare-fun b!4330909 () Bool)

(assert (=> b!4330909 (= e!2694964 (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))))))

(assert (= (and d!1272993 (not res!1775233)) b!4330908))

(assert (= (and b!4330908 res!1775234) b!4330909))

(declare-fun m!4925089 () Bool)

(assert (=> b!4330909 m!4925089))

(assert (=> b!4330694 d!1272993))

(declare-fun d!1272995 () Bool)

(declare-fun c!736741 () Bool)

(assert (=> d!1272995 (= c!736741 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545487))) (= (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545487)))) (_1!27132 lt!1545447))))))

(declare-fun e!2694965 () Option!10332)

(assert (=> d!1272995 (= (getValueByKey!318 (t!355578 (toList!2643 lt!1545487)) (_1!27132 lt!1545447)) e!2694965)))

(declare-fun b!4330912 () Bool)

(declare-fun e!2694966 () Option!10332)

(assert (=> b!4330912 (= e!2694966 (getValueByKey!318 (t!355578 (t!355578 (toList!2643 lt!1545487))) (_1!27132 lt!1545447)))))

(declare-fun b!4330913 () Bool)

(assert (=> b!4330913 (= e!2694966 None!10331)))

(declare-fun b!4330911 () Bool)

(assert (=> b!4330911 (= e!2694965 e!2694966)))

(declare-fun c!736742 () Bool)

(assert (=> b!4330911 (= c!736742 (and (is-Cons!48542 (t!355578 (toList!2643 lt!1545487))) (not (= (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545487)))) (_1!27132 lt!1545447)))))))

(declare-fun b!4330910 () Bool)

(assert (=> b!4330910 (= e!2694965 (Some!10331 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545487))))))))

(assert (= (and d!1272995 c!736741) b!4330910))

(assert (= (and d!1272995 (not c!736741)) b!4330911))

(assert (= (and b!4330911 c!736742) b!4330912))

(assert (= (and b!4330911 (not c!736742)) b!4330913))

(declare-fun m!4925091 () Bool)

(assert (=> b!4330912 m!4925091))

(assert (=> b!4330662 d!1272995))

(declare-fun d!1272997 () Bool)

(declare-fun lt!1545585 () Bool)

(assert (=> d!1272997 (= lt!1545585 (set.member lt!1545447 (content!7583 (t!355578 (toList!2643 lt!1545487)))))))

(declare-fun e!2694968 () Bool)

(assert (=> d!1272997 (= lt!1545585 e!2694968)))

(declare-fun res!1775235 () Bool)

(assert (=> d!1272997 (=> (not res!1775235) (not e!2694968))))

(assert (=> d!1272997 (= res!1775235 (is-Cons!48542 (t!355578 (toList!2643 lt!1545487))))))

(assert (=> d!1272997 (= (contains!10556 (t!355578 (toList!2643 lt!1545487)) lt!1545447) lt!1545585)))

(declare-fun b!4330914 () Bool)

(declare-fun e!2694967 () Bool)

(assert (=> b!4330914 (= e!2694968 e!2694967)))

(declare-fun res!1775236 () Bool)

(assert (=> b!4330914 (=> res!1775236 e!2694967)))

(assert (=> b!4330914 (= res!1775236 (= (h!54021 (t!355578 (toList!2643 lt!1545487))) lt!1545447))))

(declare-fun b!4330915 () Bool)

(assert (=> b!4330915 (= e!2694967 (contains!10556 (t!355578 (t!355578 (toList!2643 lt!1545487))) lt!1545447))))

(assert (= (and d!1272997 res!1775235) b!4330914))

(assert (= (and b!4330914 (not res!1775236)) b!4330915))

(declare-fun m!4925093 () Bool)

(assert (=> d!1272997 m!4925093))

(declare-fun m!4925095 () Bool)

(assert (=> d!1272997 m!4925095))

(declare-fun m!4925097 () Bool)

(assert (=> b!4330915 m!4925097))

(assert (=> b!4330671 d!1272997))

(declare-fun d!1272999 () Bool)

(declare-fun res!1775237 () Bool)

(declare-fun e!2694969 () Bool)

(assert (=> d!1272999 (=> res!1775237 e!2694969)))

(assert (=> d!1272999 (= res!1775237 (and (is-Cons!48542 lt!1545543) (= (_1!27132 (h!54021 lt!1545543)) (_1!27132 lt!1545447))))))

(assert (=> d!1272999 (= (containsKey!479 lt!1545543 (_1!27132 lt!1545447)) e!2694969)))

(declare-fun b!4330916 () Bool)

(declare-fun e!2694970 () Bool)

(assert (=> b!4330916 (= e!2694969 e!2694970)))

(declare-fun res!1775238 () Bool)

(assert (=> b!4330916 (=> (not res!1775238) (not e!2694970))))

(assert (=> b!4330916 (= res!1775238 (and (or (not (is-Cons!48542 lt!1545543)) (bvsle (_1!27132 (h!54021 lt!1545543)) (_1!27132 lt!1545447))) (is-Cons!48542 lt!1545543) (bvslt (_1!27132 (h!54021 lt!1545543)) (_1!27132 lt!1545447))))))

(declare-fun b!4330917 () Bool)

(assert (=> b!4330917 (= e!2694970 (containsKey!479 (t!355578 lt!1545543) (_1!27132 lt!1545447)))))

(assert (= (and d!1272999 (not res!1775237)) b!4330916))

(assert (= (and b!4330916 res!1775238) b!4330917))

(declare-fun m!4925099 () Bool)

(assert (=> b!4330917 m!4925099))

(assert (=> b!4330649 d!1272999))

(declare-fun bs!607831 () Bool)

(declare-fun d!1273001 () Bool)

(assert (= bs!607831 (and d!1273001 d!1272733)))

(declare-fun lambda!134600 () Int)

(assert (=> bs!607831 (= (= (_1!27132 (h!54021 (toList!2643 lt!1545449))) hash!427) (= lambda!134600 lambda!134575))))

(declare-fun bs!607832 () Bool)

(assert (= bs!607832 (and d!1273001 d!1272989)))

(assert (=> bs!607832 (= (= (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (h!54021 (toList!2643 lt!1545448)))) (= lambda!134600 lambda!134599))))

(assert (=> d!1273001 true))

(assert (=> d!1273001 true))

(assert (=> d!1273001 (= (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (h!54021 (toList!2643 lt!1545449))) hashF!1461) (forall!8875 (_2!27132 (h!54021 (toList!2643 lt!1545449))) lambda!134600))))

(declare-fun bs!607833 () Bool)

(assert (= bs!607833 d!1273001))

(declare-fun m!4925101 () Bool)

(assert (=> bs!607833 m!4925101))

(assert (=> bs!607793 d!1273001))

(declare-fun d!1273003 () Bool)

(declare-fun res!1775239 () Bool)

(declare-fun e!2694971 () Bool)

(assert (=> d!1273003 (=> res!1775239 e!2694971)))

(assert (=> d!1273003 (= res!1775239 (is-Nil!48542 (t!355578 (t!355578 (toList!2643 lt!1545448)))))))

(assert (=> d!1273003 (= (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545448))) lambda!134553) e!2694971)))

(declare-fun b!4330918 () Bool)

(declare-fun e!2694972 () Bool)

(assert (=> b!4330918 (= e!2694971 e!2694972)))

(declare-fun res!1775240 () Bool)

(assert (=> b!4330918 (=> (not res!1775240) (not e!2694972))))

(assert (=> b!4330918 (= res!1775240 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (toList!2643 lt!1545448))))))))

(declare-fun b!4330919 () Bool)

(assert (=> b!4330919 (= e!2694972 (forall!8873 (t!355578 (t!355578 (t!355578 (toList!2643 lt!1545448)))) lambda!134553))))

(assert (= (and d!1273003 (not res!1775239)) b!4330918))

(assert (= (and b!4330918 res!1775240) b!4330919))

(declare-fun b_lambda!127805 () Bool)

(assert (=> (not b_lambda!127805) (not b!4330918)))

(declare-fun m!4925103 () Bool)

(assert (=> b!4330918 m!4925103))

(declare-fun m!4925105 () Bool)

(assert (=> b!4330919 m!4925105))

(assert (=> b!4330685 d!1273003))

(declare-fun d!1273005 () Bool)

(declare-fun lt!1545586 () Bool)

(assert (=> d!1273005 (= lt!1545586 (set.member lt!1545447 (content!7583 (t!355578 (toList!2643 lt!1545483)))))))

(declare-fun e!2694974 () Bool)

(assert (=> d!1273005 (= lt!1545586 e!2694974)))

(declare-fun res!1775241 () Bool)

(assert (=> d!1273005 (=> (not res!1775241) (not e!2694974))))

(assert (=> d!1273005 (= res!1775241 (is-Cons!48542 (t!355578 (toList!2643 lt!1545483))))))

(assert (=> d!1273005 (= (contains!10556 (t!355578 (toList!2643 lt!1545483)) lt!1545447) lt!1545586)))

(declare-fun b!4330920 () Bool)

(declare-fun e!2694973 () Bool)

(assert (=> b!4330920 (= e!2694974 e!2694973)))

(declare-fun res!1775242 () Bool)

(assert (=> b!4330920 (=> res!1775242 e!2694973)))

(assert (=> b!4330920 (= res!1775242 (= (h!54021 (t!355578 (toList!2643 lt!1545483))) lt!1545447))))

(declare-fun b!4330921 () Bool)

(assert (=> b!4330921 (= e!2694973 (contains!10556 (t!355578 (t!355578 (toList!2643 lt!1545483))) lt!1545447))))

(assert (= (and d!1273005 res!1775241) b!4330920))

(assert (= (and b!4330920 (not res!1775242)) b!4330921))

(assert (=> d!1273005 m!4925019))

(declare-fun m!4925107 () Bool)

(assert (=> d!1273005 m!4925107))

(declare-fun m!4925109 () Bool)

(assert (=> b!4330921 m!4925109))

(assert (=> b!4330623 d!1273005))

(declare-fun bs!607834 () Bool)

(declare-fun d!1273007 () Bool)

(assert (= bs!607834 (and d!1273007 d!1272733)))

(declare-fun lambda!134601 () Int)

(assert (=> bs!607834 (= (= (_1!27132 (h!54021 (toList!2643 lt!1545446))) hash!427) (= lambda!134601 lambda!134575))))

(declare-fun bs!607835 () Bool)

(assert (= bs!607835 (and d!1273007 d!1272989)))

(assert (=> bs!607835 (= (= (_1!27132 (h!54021 (toList!2643 lt!1545446))) (_1!27132 (h!54021 (toList!2643 lt!1545448)))) (= lambda!134601 lambda!134599))))

(declare-fun bs!607836 () Bool)

(assert (= bs!607836 (and d!1273007 d!1273001)))

(assert (=> bs!607836 (= (= (_1!27132 (h!54021 (toList!2643 lt!1545446))) (_1!27132 (h!54021 (toList!2643 lt!1545449)))) (= lambda!134601 lambda!134600))))

(assert (=> d!1273007 true))

(assert (=> d!1273007 true))

(assert (=> d!1273007 (= (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545446))) (_1!27132 (h!54021 (toList!2643 lt!1545446))) hashF!1461) (forall!8875 (_2!27132 (h!54021 (toList!2643 lt!1545446))) lambda!134601))))

(declare-fun bs!607837 () Bool)

(assert (= bs!607837 d!1273007))

(declare-fun m!4925111 () Bool)

(assert (=> bs!607837 m!4925111))

(assert (=> bs!607801 d!1273007))

(assert (=> b!4330575 d!1272947))

(assert (=> b!4330575 d!1272817))

(declare-fun d!1273009 () Bool)

(declare-fun res!1775243 () Bool)

(declare-fun e!2694975 () Bool)

(assert (=> d!1273009 (=> res!1775243 e!2694975)))

(assert (=> d!1273009 (= res!1775243 (and (is-Cons!48542 lt!1545484) (= (_1!27132 (h!54021 lt!1545484)) (_1!27132 lt!1545447))))))

(assert (=> d!1273009 (= (containsKey!479 lt!1545484 (_1!27132 lt!1545447)) e!2694975)))

(declare-fun b!4330922 () Bool)

(declare-fun e!2694976 () Bool)

(assert (=> b!4330922 (= e!2694975 e!2694976)))

(declare-fun res!1775244 () Bool)

(assert (=> b!4330922 (=> (not res!1775244) (not e!2694976))))

(assert (=> b!4330922 (= res!1775244 (and (or (not (is-Cons!48542 lt!1545484)) (bvsle (_1!27132 (h!54021 lt!1545484)) (_1!27132 lt!1545447))) (is-Cons!48542 lt!1545484) (bvslt (_1!27132 (h!54021 lt!1545484)) (_1!27132 lt!1545447))))))

(declare-fun b!4330923 () Bool)

(assert (=> b!4330923 (= e!2694976 (containsKey!479 (t!355578 lt!1545484) (_1!27132 lt!1545447)))))

(assert (= (and d!1273009 (not res!1775243)) b!4330922))

(assert (= (and b!4330922 res!1775244) b!4330923))

(declare-fun m!4925113 () Bool)

(assert (=> b!4330923 m!4925113))

(assert (=> b!4330584 d!1273009))

(declare-fun d!1273011 () Bool)

(declare-fun res!1775245 () Bool)

(declare-fun e!2694977 () Bool)

(assert (=> d!1273011 (=> res!1775245 e!2694977)))

(assert (=> d!1273011 (= res!1775245 (and (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448))))) (= (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545448))))))))))

(assert (=> d!1273011 (= (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))) e!2694977)))

(declare-fun b!4330924 () Bool)

(declare-fun e!2694978 () Bool)

(assert (=> b!4330924 (= e!2694977 e!2694978)))

(declare-fun res!1775246 () Bool)

(assert (=> b!4330924 (=> (not res!1775246) (not e!2694978))))

(assert (=> b!4330924 (= res!1775246 (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448))))))))

(declare-fun b!4330925 () Bool)

(assert (=> b!4330925 (= e!2694978 (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))))))

(assert (= (and d!1273011 (not res!1775245)) b!4330924))

(assert (= (and b!4330924 res!1775246) b!4330925))

(declare-fun m!4925115 () Bool)

(assert (=> b!4330925 m!4925115))

(assert (=> b!4330635 d!1273011))

(declare-fun d!1273013 () Bool)

(declare-fun res!1775247 () Bool)

(declare-fun e!2694979 () Bool)

(assert (=> d!1273013 (=> res!1775247 e!2694979)))

(assert (=> d!1273013 (= res!1775247 (and (is-Cons!48542 (toList!2643 lt!1545483)) (= (_1!27132 (h!54021 (toList!2643 lt!1545483))) (_1!27132 lt!1545447))))))

(assert (=> d!1273013 (= (containsKey!479 (toList!2643 lt!1545483) (_1!27132 lt!1545447)) e!2694979)))

(declare-fun b!4330926 () Bool)

(declare-fun e!2694980 () Bool)

(assert (=> b!4330926 (= e!2694979 e!2694980)))

(declare-fun res!1775248 () Bool)

(assert (=> b!4330926 (=> (not res!1775248) (not e!2694980))))

(assert (=> b!4330926 (= res!1775248 (and (or (not (is-Cons!48542 (toList!2643 lt!1545483))) (bvsle (_1!27132 (h!54021 (toList!2643 lt!1545483))) (_1!27132 lt!1545447))) (is-Cons!48542 (toList!2643 lt!1545483)) (bvslt (_1!27132 (h!54021 (toList!2643 lt!1545483))) (_1!27132 lt!1545447))))))

(declare-fun b!4330927 () Bool)

(assert (=> b!4330927 (= e!2694980 (containsKey!479 (t!355578 (toList!2643 lt!1545483)) (_1!27132 lt!1545447)))))

(assert (= (and d!1273013 (not res!1775247)) b!4330926))

(assert (= (and b!4330926 res!1775248) b!4330927))

(declare-fun m!4925117 () Bool)

(assert (=> b!4330927 m!4925117))

(assert (=> d!1272807 d!1273013))

(declare-fun d!1273015 () Bool)

(declare-fun res!1775249 () Bool)

(declare-fun e!2694981 () Bool)

(assert (=> d!1273015 (=> res!1775249 e!2694981)))

(assert (=> d!1273015 (= res!1775249 (and (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446))))) (= (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545446))))))))))

(assert (=> d!1273015 (= (containsKey!477 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446)))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))) e!2694981)))

(declare-fun b!4330928 () Bool)

(declare-fun e!2694982 () Bool)

(assert (=> b!4330928 (= e!2694981 e!2694982)))

(declare-fun res!1775250 () Bool)

(assert (=> b!4330928 (=> (not res!1775250) (not e!2694982))))

(assert (=> b!4330928 (= res!1775250 (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446))))))))

(declare-fun b!4330929 () Bool)

(assert (=> b!4330929 (= e!2694982 (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))))))

(assert (= (and d!1273015 (not res!1775249)) b!4330928))

(assert (= (and b!4330928 res!1775250) b!4330929))

(declare-fun m!4925119 () Bool)

(assert (=> b!4330929 m!4925119))

(assert (=> b!4330565 d!1273015))

(declare-fun d!1273017 () Bool)

(declare-fun c!736743 () Bool)

(assert (=> d!1273017 (= c!736743 (is-Nil!48542 (toList!2643 lt!1545487)))))

(declare-fun e!2694983 () (Set tuple2!47676))

(assert (=> d!1273017 (= (content!7583 (toList!2643 lt!1545487)) e!2694983)))

(declare-fun b!4330930 () Bool)

(assert (=> b!4330930 (= e!2694983 (as set.empty (Set tuple2!47676)))))

(declare-fun b!4330931 () Bool)

(assert (=> b!4330931 (= e!2694983 (set.union (set.insert (h!54021 (toList!2643 lt!1545487)) (as set.empty (Set tuple2!47676))) (content!7583 (t!355578 (toList!2643 lt!1545487)))))))

(assert (= (and d!1273017 c!736743) b!4330930))

(assert (= (and d!1273017 (not c!736743)) b!4330931))

(declare-fun m!4925121 () Bool)

(assert (=> b!4330931 m!4925121))

(assert (=> b!4330931 m!4925093))

(assert (=> d!1272821 d!1273017))

(declare-fun d!1273019 () Bool)

(declare-fun res!1775251 () Bool)

(declare-fun e!2694984 () Bool)

(assert (=> d!1273019 (=> res!1775251 e!2694984)))

(assert (=> d!1273019 (= res!1775251 (or (is-Nil!48542 (t!355578 (toList!2643 lm!2227))) (is-Nil!48542 (t!355578 (t!355578 (toList!2643 lm!2227))))))))

(assert (=> d!1273019 (= (isStrictlySorted!34 (t!355578 (toList!2643 lm!2227))) e!2694984)))

(declare-fun b!4330932 () Bool)

(declare-fun e!2694985 () Bool)

(assert (=> b!4330932 (= e!2694984 e!2694985)))

(declare-fun res!1775252 () Bool)

(assert (=> b!4330932 (=> (not res!1775252) (not e!2694985))))

(assert (=> b!4330932 (= res!1775252 (bvslt (_1!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))) (_1!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227)))))))))

(declare-fun b!4330933 () Bool)

(assert (=> b!4330933 (= e!2694985 (isStrictlySorted!34 (t!355578 (t!355578 (toList!2643 lm!2227)))))))

(assert (= (and d!1273019 (not res!1775251)) b!4330932))

(assert (= (and b!4330932 res!1775252) b!4330933))

(declare-fun m!4925123 () Bool)

(assert (=> b!4330933 m!4925123))

(assert (=> b!4330693 d!1273019))

(declare-fun d!1273021 () Bool)

(declare-fun res!1775253 () Bool)

(declare-fun e!2694986 () Bool)

(assert (=> d!1273021 (=> res!1775253 e!2694986)))

(assert (=> d!1273021 (= res!1775253 (is-Nil!48542 (t!355578 (toList!2643 lt!1545449))))))

(assert (=> d!1273021 (= (forall!8873 (t!355578 (toList!2643 lt!1545449)) lambda!134578) e!2694986)))

(declare-fun b!4330934 () Bool)

(declare-fun e!2694987 () Bool)

(assert (=> b!4330934 (= e!2694986 e!2694987)))

(declare-fun res!1775254 () Bool)

(assert (=> b!4330934 (=> (not res!1775254) (not e!2694987))))

(assert (=> b!4330934 (= res!1775254 (dynLambda!20542 lambda!134578 (h!54021 (t!355578 (toList!2643 lt!1545449)))))))

(declare-fun b!4330935 () Bool)

(assert (=> b!4330935 (= e!2694987 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545449))) lambda!134578))))

(assert (= (and d!1273021 (not res!1775253)) b!4330934))

(assert (= (and b!4330934 res!1775254) b!4330935))

(declare-fun b_lambda!127807 () Bool)

(assert (=> (not b_lambda!127807) (not b!4330934)))

(declare-fun m!4925125 () Bool)

(assert (=> b!4330934 m!4925125))

(declare-fun m!4925127 () Bool)

(assert (=> b!4330935 m!4925127))

(assert (=> b!4330673 d!1273021))

(declare-fun d!1273023 () Bool)

(declare-fun res!1775255 () Bool)

(declare-fun e!2694988 () Bool)

(assert (=> d!1273023 (=> res!1775255 e!2694988)))

(assert (=> d!1273023 (= res!1775255 (is-Nil!48541 (t!355577 newBucket!230)))))

(assert (=> d!1273023 (= (forall!8875 (t!355577 newBucket!230) lambda!134575) e!2694988)))

(declare-fun b!4330936 () Bool)

(declare-fun e!2694989 () Bool)

(assert (=> b!4330936 (= e!2694988 e!2694989)))

(declare-fun res!1775256 () Bool)

(assert (=> b!4330936 (=> (not res!1775256) (not e!2694989))))

(assert (=> b!4330936 (= res!1775256 (dynLambda!20544 lambda!134575 (h!54020 (t!355577 newBucket!230))))))

(declare-fun b!4330937 () Bool)

(assert (=> b!4330937 (= e!2694989 (forall!8875 (t!355577 (t!355577 newBucket!230)) lambda!134575))))

(assert (= (and d!1273023 (not res!1775255)) b!4330936))

(assert (= (and b!4330936 res!1775256) b!4330937))

(declare-fun b_lambda!127809 () Bool)

(assert (=> (not b_lambda!127809) (not b!4330936)))

(declare-fun m!4925129 () Bool)

(assert (=> b!4330936 m!4925129))

(declare-fun m!4925131 () Bool)

(assert (=> b!4330937 m!4925131))

(assert (=> b!4330681 d!1273023))

(declare-fun d!1273025 () Bool)

(declare-fun hash!1260 (Hashable!4718 K!9883) (_ BitVec 64))

(assert (=> d!1273025 (= (hash!1258 hashF!1461 (_1!27131 (h!54020 newBucket!230))) (hash!1260 hashF!1461 (_1!27131 (h!54020 newBucket!230))))))

(declare-fun bs!607838 () Bool)

(assert (= bs!607838 d!1273025))

(declare-fun m!4925133 () Bool)

(assert (=> bs!607838 m!4925133))

(assert (=> bs!607800 d!1273025))

(declare-fun d!1273027 () Bool)

(declare-fun res!1775257 () Bool)

(declare-fun e!2694990 () Bool)

(assert (=> d!1273027 (=> res!1775257 e!2694990)))

(assert (=> d!1273027 (= res!1775257 (is-Nil!48542 (t!355578 (t!355578 (toList!2643 lt!1545446)))))))

(assert (=> d!1273027 (= (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545446))) lambda!134553) e!2694990)))

(declare-fun b!4330938 () Bool)

(declare-fun e!2694991 () Bool)

(assert (=> b!4330938 (= e!2694990 e!2694991)))

(declare-fun res!1775258 () Bool)

(assert (=> b!4330938 (=> (not res!1775258) (not e!2694991))))

(assert (=> b!4330938 (= res!1775258 (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (toList!2643 lt!1545446))))))))

(declare-fun b!4330939 () Bool)

(assert (=> b!4330939 (= e!2694991 (forall!8873 (t!355578 (t!355578 (t!355578 (toList!2643 lt!1545446)))) lambda!134553))))

(assert (= (and d!1273027 (not res!1775257)) b!4330938))

(assert (= (and b!4330938 res!1775258) b!4330939))

(declare-fun b_lambda!127811 () Bool)

(assert (=> (not b_lambda!127811) (not b!4330938)))

(declare-fun m!4925135 () Bool)

(assert (=> b!4330938 m!4925135))

(declare-fun m!4925137 () Bool)

(assert (=> b!4330939 m!4925137))

(assert (=> b!4330687 d!1273027))

(declare-fun d!1273029 () Bool)

(declare-fun lt!1545587 () Bool)

(assert (=> d!1273029 (= lt!1545587 (set.member (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) (content!7583 lt!1545480)))))

(declare-fun e!2694993 () Bool)

(assert (=> d!1273029 (= lt!1545587 e!2694993)))

(declare-fun res!1775259 () Bool)

(assert (=> d!1273029 (=> (not res!1775259) (not e!2694993))))

(assert (=> d!1273029 (= res!1775259 (is-Cons!48542 lt!1545480))))

(assert (=> d!1273029 (= (contains!10556 lt!1545480 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))) lt!1545587)))

(declare-fun b!4330940 () Bool)

(declare-fun e!2694992 () Bool)

(assert (=> b!4330940 (= e!2694993 e!2694992)))

(declare-fun res!1775260 () Bool)

(assert (=> b!4330940 (=> res!1775260 e!2694992)))

(assert (=> b!4330940 (= res!1775260 (= (h!54021 lt!1545480) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun b!4330941 () Bool)

(assert (=> b!4330941 (= e!2694992 (contains!10556 (t!355578 lt!1545480) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(assert (= (and d!1273029 res!1775259) b!4330940))

(assert (= (and b!4330940 (not res!1775260)) b!4330941))

(declare-fun m!4925139 () Bool)

(assert (=> d!1273029 m!4925139))

(declare-fun m!4925141 () Bool)

(assert (=> d!1273029 m!4925141))

(declare-fun m!4925143 () Bool)

(assert (=> b!4330941 m!4925143))

(assert (=> b!4330647 d!1273029))

(declare-fun d!1273031 () Bool)

(declare-fun res!1775261 () Bool)

(declare-fun e!2694994 () Bool)

(assert (=> d!1273031 (=> res!1775261 e!2694994)))

(assert (=> d!1273031 (= res!1775261 (is-Nil!48542 (t!355578 (toList!2643 lt!1545471))))))

(assert (=> d!1273031 (= (forall!8873 (t!355578 (toList!2643 lt!1545471)) lambda!134567) e!2694994)))

(declare-fun b!4330942 () Bool)

(declare-fun e!2694995 () Bool)

(assert (=> b!4330942 (= e!2694994 e!2694995)))

(declare-fun res!1775262 () Bool)

(assert (=> b!4330942 (=> (not res!1775262) (not e!2694995))))

(assert (=> b!4330942 (= res!1775262 (dynLambda!20542 lambda!134567 (h!54021 (t!355578 (toList!2643 lt!1545471)))))))

(declare-fun b!4330943 () Bool)

(assert (=> b!4330943 (= e!2694995 (forall!8873 (t!355578 (t!355578 (toList!2643 lt!1545471))) lambda!134567))))

(assert (= (and d!1273031 (not res!1775261)) b!4330942))

(assert (= (and b!4330942 res!1775262) b!4330943))

(declare-fun b_lambda!127813 () Bool)

(assert (=> (not b_lambda!127813) (not b!4330942)))

(declare-fun m!4925145 () Bool)

(assert (=> b!4330942 m!4925145))

(declare-fun m!4925147 () Bool)

(assert (=> b!4330943 m!4925147))

(assert (=> b!4330625 d!1273031))

(declare-fun d!1273033 () Bool)

(declare-fun res!1775263 () Bool)

(declare-fun e!2694996 () Bool)

(assert (=> d!1273033 (=> res!1775263 e!2694996)))

(assert (=> d!1273033 (= res!1775263 (and (is-Cons!48541 (t!355577 (t!355577 newBucket!230))) (= (_1!27131 (h!54020 (t!355577 (t!355577 newBucket!230)))) (_1!27131 (h!54020 newBucket!230)))))))

(assert (=> d!1273033 (= (containsKey!477 (t!355577 (t!355577 newBucket!230)) (_1!27131 (h!54020 newBucket!230))) e!2694996)))

(declare-fun b!4330944 () Bool)

(declare-fun e!2694997 () Bool)

(assert (=> b!4330944 (= e!2694996 e!2694997)))

(declare-fun res!1775264 () Bool)

(assert (=> b!4330944 (=> (not res!1775264) (not e!2694997))))

(assert (=> b!4330944 (= res!1775264 (is-Cons!48541 (t!355577 (t!355577 newBucket!230))))))

(declare-fun b!4330945 () Bool)

(assert (=> b!4330945 (= e!2694997 (containsKey!477 (t!355577 (t!355577 (t!355577 newBucket!230))) (_1!27131 (h!54020 newBucket!230))))))

(assert (= (and d!1273033 (not res!1775263)) b!4330944))

(assert (= (and b!4330944 res!1775264) b!4330945))

(declare-fun m!4925149 () Bool)

(assert (=> b!4330945 m!4925149))

(assert (=> b!4330669 d!1273033))

(declare-fun b!4330946 () Bool)

(declare-fun c!736744 () Bool)

(assert (=> b!4330946 (= c!736744 (and (is-Cons!48542 (t!355578 (toList!2643 lm!2227))) (bvsgt (_1!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))) (_1!27132 lt!1545447))))))

(declare-fun e!2694998 () List!48666)

(declare-fun e!2695000 () List!48666)

(assert (=> b!4330946 (= e!2694998 e!2695000)))

(declare-fun b!4330947 () Bool)

(declare-fun res!1775266 () Bool)

(declare-fun e!2694999 () Bool)

(assert (=> b!4330947 (=> (not res!1775266) (not e!2694999))))

(declare-fun lt!1545588 () List!48666)

(assert (=> b!4330947 (= res!1775266 (containsKey!479 lt!1545588 (_1!27132 lt!1545447)))))

(declare-fun b!4330948 () Bool)

(declare-fun e!2695001 () List!48666)

(declare-fun call!301043 () List!48666)

(assert (=> b!4330948 (= e!2695001 call!301043)))

(declare-fun bm!301038 () Bool)

(declare-fun call!301044 () List!48666)

(declare-fun call!301045 () List!48666)

(assert (=> bm!301038 (= call!301044 call!301045)))

(declare-fun bm!301039 () Bool)

(declare-fun e!2695002 () List!48666)

(declare-fun c!736745 () Bool)

(assert (=> bm!301039 (= call!301043 ($colon$colon!664 e!2695002 (ite c!736745 (h!54021 (t!355578 (toList!2643 lm!2227))) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))))

(declare-fun c!736747 () Bool)

(assert (=> bm!301039 (= c!736747 c!736745)))

(declare-fun b!4330949 () Bool)

(assert (=> b!4330949 (= e!2695001 e!2694998)))

(declare-fun c!736746 () Bool)

(assert (=> b!4330949 (= c!736746 (and (is-Cons!48542 (t!355578 (toList!2643 lm!2227))) (= (_1!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))) (_1!27132 lt!1545447))))))

(declare-fun b!4330950 () Bool)

(assert (=> b!4330950 (= e!2695000 call!301044)))

(declare-fun b!4330951 () Bool)

(assert (=> b!4330951 (= e!2694999 (contains!10556 lt!1545588 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun d!1273035 () Bool)

(assert (=> d!1273035 e!2694999))

(declare-fun res!1775265 () Bool)

(assert (=> d!1273035 (=> (not res!1775265) (not e!2694999))))

(assert (=> d!1273035 (= res!1775265 (isStrictlySorted!34 lt!1545588))))

(assert (=> d!1273035 (= lt!1545588 e!2695001)))

(assert (=> d!1273035 (= c!736745 (and (is-Cons!48542 (t!355578 (toList!2643 lm!2227))) (bvslt (_1!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))) (_1!27132 lt!1545447))))))

(assert (=> d!1273035 (isStrictlySorted!34 (t!355578 (toList!2643 lm!2227)))))

(assert (=> d!1273035 (= (insertStrictlySorted!66 (t!355578 (toList!2643 lm!2227)) (_1!27132 lt!1545447) (_2!27132 lt!1545447)) lt!1545588)))

(declare-fun b!4330952 () Bool)

(assert (=> b!4330952 (= e!2695000 call!301044)))

(declare-fun bm!301040 () Bool)

(assert (=> bm!301040 (= call!301045 call!301043)))

(declare-fun b!4330953 () Bool)

(assert (=> b!4330953 (= e!2695002 (ite c!736746 (t!355578 (t!355578 (toList!2643 lm!2227))) (ite c!736744 (Cons!48542 (h!54021 (t!355578 (toList!2643 lm!2227))) (t!355578 (t!355578 (toList!2643 lm!2227)))) Nil!48542)))))

(declare-fun b!4330954 () Bool)

(assert (=> b!4330954 (= e!2694998 call!301045)))

(declare-fun b!4330955 () Bool)

(assert (=> b!4330955 (= e!2695002 (insertStrictlySorted!66 (t!355578 (t!355578 (toList!2643 lm!2227))) (_1!27132 lt!1545447) (_2!27132 lt!1545447)))))

(assert (= (and d!1273035 c!736745) b!4330948))

(assert (= (and d!1273035 (not c!736745)) b!4330949))

(assert (= (and b!4330949 c!736746) b!4330954))

(assert (= (and b!4330949 (not c!736746)) b!4330946))

(assert (= (and b!4330946 c!736744) b!4330952))

(assert (= (and b!4330946 (not c!736744)) b!4330950))

(assert (= (or b!4330952 b!4330950) bm!301038))

(assert (= (or b!4330954 bm!301038) bm!301040))

(assert (= (or b!4330948 bm!301040) bm!301039))

(assert (= (and bm!301039 c!736747) b!4330955))

(assert (= (and bm!301039 (not c!736747)) b!4330953))

(assert (= (and d!1273035 res!1775265) b!4330947))

(assert (= (and b!4330947 res!1775266) b!4330951))

(declare-fun m!4925151 () Bool)

(assert (=> b!4330947 m!4925151))

(declare-fun m!4925153 () Bool)

(assert (=> bm!301039 m!4925153))

(declare-fun m!4925155 () Bool)

(assert (=> b!4330951 m!4925155))

(declare-fun m!4925157 () Bool)

(assert (=> d!1273035 m!4925157))

(assert (=> d!1273035 m!4924813))

(declare-fun m!4925159 () Bool)

(assert (=> b!4330955 m!4925159))

(assert (=> b!4330615 d!1273035))

(declare-fun bs!607839 () Bool)

(declare-fun d!1273037 () Bool)

(assert (= bs!607839 (and d!1273037 d!1272709)))

(declare-fun lambda!134602 () Int)

(assert (=> bs!607839 (not (= lambda!134602 lambda!134567))))

(declare-fun bs!607840 () Bool)

(assert (= bs!607840 (and d!1273037 d!1272797)))

(assert (=> bs!607840 (not (= lambda!134602 lambda!134593))))

(declare-fun bs!607841 () Bool)

(assert (= bs!607841 (and d!1273037 d!1272835)))

(assert (=> bs!607841 (= lambda!134602 lambda!134594)))

(declare-fun bs!607842 () Bool)

(assert (= bs!607842 (and d!1273037 d!1272735)))

(assert (=> bs!607842 (= lambda!134602 lambda!134578)))

(declare-fun bs!607843 () Bool)

(assert (= bs!607843 (and d!1273037 d!1272731)))

(assert (=> bs!607843 (= lambda!134602 lambda!134572)))

(declare-fun bs!607844 () Bool)

(assert (= bs!607844 (and d!1273037 start!417304)))

(assert (=> bs!607844 (not (= lambda!134602 lambda!134553))))

(declare-fun bs!607845 () Bool)

(assert (= bs!607845 (and d!1273037 d!1272725)))

(assert (=> bs!607845 (= lambda!134602 lambda!134570)))

(declare-fun bs!607846 () Bool)

(assert (= bs!607846 (and d!1273037 d!1272727)))

(assert (=> bs!607846 (= lambda!134602 lambda!134571)))

(assert (=> d!1273037 true))

(assert (=> d!1273037 (= (allKeysSameHashInMap!430 lt!1545537 hashF!1461) (forall!8873 (toList!2643 lt!1545537) lambda!134602))))

(declare-fun bs!607847 () Bool)

(assert (= bs!607847 d!1273037))

(declare-fun m!4925161 () Bool)

(assert (=> bs!607847 m!4925161))

(assert (=> b!4330630 d!1273037))

(declare-fun d!1273039 () Bool)

(declare-fun res!1775267 () Bool)

(declare-fun e!2695003 () Bool)

(assert (=> d!1273039 (=> res!1775267 e!2695003)))

(assert (=> d!1273039 (= res!1775267 (not (is-Cons!48541 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448)))))))))

(assert (=> d!1273039 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448))))) e!2695003)))

(declare-fun b!4330956 () Bool)

(declare-fun e!2695004 () Bool)

(assert (=> b!4330956 (= e!2695003 e!2695004)))

(declare-fun res!1775268 () Bool)

(assert (=> b!4330956 (=> (not res!1775268) (not e!2695004))))

(assert (=> b!4330956 (= res!1775268 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448)))))))))))

(declare-fun b!4330957 () Bool)

(assert (=> b!4330957 (= e!2695004 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448)))))))))

(assert (= (and d!1273039 (not res!1775267)) b!4330956))

(assert (= (and b!4330956 res!1775268) b!4330957))

(declare-fun m!4925163 () Bool)

(assert (=> b!4330956 m!4925163))

(declare-fun m!4925165 () Bool)

(assert (=> b!4330957 m!4925165))

(assert (=> bs!607795 d!1273039))

(declare-fun d!1273041 () Bool)

(declare-fun res!1775269 () Bool)

(declare-fun e!2695005 () Bool)

(assert (=> d!1273041 (=> res!1775269 e!2695005)))

(assert (=> d!1273041 (= res!1775269 (not (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))))))))

(assert (=> d!1273041 (= (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227))))) e!2695005)))

(declare-fun b!4330958 () Bool)

(declare-fun e!2695006 () Bool)

(assert (=> b!4330958 (= e!2695005 e!2695006)))

(declare-fun res!1775270 () Bool)

(assert (=> b!4330958 (=> (not res!1775270) (not e!2695006))))

(assert (=> b!4330958 (= res!1775270 (not (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227))))) (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))))))))))

(declare-fun b!4330959 () Bool)

(assert (=> b!4330959 (= e!2695006 (noDuplicateKeys!338 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))))))))

(assert (= (and d!1273041 (not res!1775269)) b!4330958))

(assert (= (and b!4330958 res!1775270) b!4330959))

(declare-fun m!4925167 () Bool)

(assert (=> b!4330958 m!4925167))

(declare-fun m!4925169 () Bool)

(assert (=> b!4330959 m!4925169))

(assert (=> b!4330659 d!1273041))

(declare-fun d!1273043 () Bool)

(declare-fun lt!1545589 () Bool)

(assert (=> d!1273043 (= lt!1545589 (set.member (tuple2!47677 hash!427 newBucket!230) (content!7583 (toList!2643 lt!1545534))))))

(declare-fun e!2695008 () Bool)

(assert (=> d!1273043 (= lt!1545589 e!2695008)))

(declare-fun res!1775271 () Bool)

(assert (=> d!1273043 (=> (not res!1775271) (not e!2695008))))

(assert (=> d!1273043 (= res!1775271 (is-Cons!48542 (toList!2643 lt!1545534)))))

(assert (=> d!1273043 (= (contains!10556 (toList!2643 lt!1545534) (tuple2!47677 hash!427 newBucket!230)) lt!1545589)))

(declare-fun b!4330960 () Bool)

(declare-fun e!2695007 () Bool)

(assert (=> b!4330960 (= e!2695008 e!2695007)))

(declare-fun res!1775272 () Bool)

(assert (=> b!4330960 (=> res!1775272 e!2695007)))

(assert (=> b!4330960 (= res!1775272 (= (h!54021 (toList!2643 lt!1545534)) (tuple2!47677 hash!427 newBucket!230)))))

(declare-fun b!4330961 () Bool)

(assert (=> b!4330961 (= e!2695007 (contains!10556 (t!355578 (toList!2643 lt!1545534)) (tuple2!47677 hash!427 newBucket!230)))))

(assert (= (and d!1273043 res!1775271) b!4330960))

(assert (= (and b!4330960 (not res!1775272)) b!4330961))

(declare-fun m!4925171 () Bool)

(assert (=> d!1273043 m!4925171))

(declare-fun m!4925173 () Bool)

(assert (=> d!1273043 m!4925173))

(declare-fun m!4925175 () Bool)

(assert (=> b!4330961 m!4925175))

(assert (=> b!4330627 d!1273043))

(assert (=> d!1272811 d!1272809))

(declare-fun d!1273045 () Bool)

(assert (=> d!1273045 (= (getValueByKey!318 lt!1545480 (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447)))))

(assert (=> d!1273045 true))

(declare-fun _$23!169 () Unit!68141)

(assert (=> d!1273045 (= (choose!26483 lt!1545480 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) _$23!169)))

(declare-fun bs!607848 () Bool)

(assert (= bs!607848 d!1273045))

(assert (=> bs!607848 m!4924543))

(assert (=> d!1272811 d!1273045))

(declare-fun d!1273047 () Bool)

(declare-fun res!1775273 () Bool)

(declare-fun e!2695009 () Bool)

(assert (=> d!1273047 (=> res!1775273 e!2695009)))

(assert (=> d!1273047 (= res!1775273 (or (is-Nil!48542 lt!1545480) (is-Nil!48542 (t!355578 lt!1545480))))))

(assert (=> d!1273047 (= (isStrictlySorted!34 lt!1545480) e!2695009)))

(declare-fun b!4330962 () Bool)

(declare-fun e!2695010 () Bool)

(assert (=> b!4330962 (= e!2695009 e!2695010)))

(declare-fun res!1775274 () Bool)

(assert (=> b!4330962 (=> (not res!1775274) (not e!2695010))))

(assert (=> b!4330962 (= res!1775274 (bvslt (_1!27132 (h!54021 lt!1545480)) (_1!27132 (h!54021 (t!355578 lt!1545480)))))))

(declare-fun b!4330963 () Bool)

(assert (=> b!4330963 (= e!2695010 (isStrictlySorted!34 (t!355578 lt!1545480)))))

(assert (= (and d!1273047 (not res!1775273)) b!4330962))

(assert (= (and b!4330962 res!1775274) b!4330963))

(declare-fun m!4925177 () Bool)

(assert (=> b!4330963 m!4925177))

(assert (=> d!1272811 d!1273047))

(declare-fun d!1273049 () Bool)

(declare-fun res!1775275 () Bool)

(declare-fun e!2695011 () Bool)

(assert (=> d!1273049 (=> res!1775275 e!2695011)))

(assert (=> d!1273049 (= res!1775275 (and (is-Cons!48541 (t!355577 (t!355577 newBucket!230))) (= (_1!27131 (h!54020 (t!355577 (t!355577 newBucket!230)))) (_1!27131 (h!54020 (t!355577 newBucket!230))))))))

(assert (=> d!1273049 (= (containsKey!477 (t!355577 (t!355577 newBucket!230)) (_1!27131 (h!54020 (t!355577 newBucket!230)))) e!2695011)))

(declare-fun b!4330964 () Bool)

(declare-fun e!2695012 () Bool)

(assert (=> b!4330964 (= e!2695011 e!2695012)))

(declare-fun res!1775276 () Bool)

(assert (=> b!4330964 (=> (not res!1775276) (not e!2695012))))

(assert (=> b!4330964 (= res!1775276 (is-Cons!48541 (t!355577 (t!355577 newBucket!230))))))

(declare-fun b!4330965 () Bool)

(assert (=> b!4330965 (= e!2695012 (containsKey!477 (t!355577 (t!355577 (t!355577 newBucket!230))) (_1!27131 (h!54020 (t!355577 newBucket!230)))))))

(assert (= (and d!1273049 (not res!1775275)) b!4330964))

(assert (= (and b!4330964 res!1775276) b!4330965))

(declare-fun m!4925179 () Bool)

(assert (=> b!4330965 m!4925179))

(assert (=> b!4330674 d!1273049))

(declare-fun d!1273051 () Bool)

(declare-fun lt!1545590 () Bool)

(assert (=> d!1273051 (= lt!1545590 (set.member (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) (content!7583 lt!1545543)))))

(declare-fun e!2695014 () Bool)

(assert (=> d!1273051 (= lt!1545590 e!2695014)))

(declare-fun res!1775277 () Bool)

(assert (=> d!1273051 (=> (not res!1775277) (not e!2695014))))

(assert (=> d!1273051 (= res!1775277 (is-Cons!48542 lt!1545543))))

(assert (=> d!1273051 (= (contains!10556 lt!1545543 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))) lt!1545590)))

(declare-fun b!4330966 () Bool)

(declare-fun e!2695013 () Bool)

(assert (=> b!4330966 (= e!2695014 e!2695013)))

(declare-fun res!1775278 () Bool)

(assert (=> b!4330966 (=> res!1775278 e!2695013)))

(assert (=> b!4330966 (= res!1775278 (= (h!54021 lt!1545543) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun b!4330967 () Bool)

(assert (=> b!4330967 (= e!2695013 (contains!10556 (t!355578 lt!1545543) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(assert (= (and d!1273051 res!1775277) b!4330966))

(assert (= (and b!4330966 (not res!1775278)) b!4330967))

(declare-fun m!4925181 () Bool)

(assert (=> d!1273051 m!4925181))

(declare-fun m!4925183 () Bool)

(assert (=> d!1273051 m!4925183))

(declare-fun m!4925185 () Bool)

(assert (=> b!4330967 m!4925185))

(assert (=> b!4330653 d!1273051))

(declare-fun bs!607849 () Bool)

(declare-fun d!1273053 () Bool)

(assert (= bs!607849 (and d!1273053 d!1272733)))

(declare-fun lambda!134603 () Int)

(assert (=> bs!607849 (= (= (_1!27132 (h!54021 (toList!2643 lm!2227))) hash!427) (= lambda!134603 lambda!134575))))

(declare-fun bs!607850 () Bool)

(assert (= bs!607850 (and d!1273053 d!1272989)))

(assert (=> bs!607850 (= (= (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 (h!54021 (toList!2643 lt!1545448)))) (= lambda!134603 lambda!134599))))

(declare-fun bs!607851 () Bool)

(assert (= bs!607851 (and d!1273053 d!1273001)))

(assert (=> bs!607851 (= (= (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 (h!54021 (toList!2643 lt!1545449)))) (= lambda!134603 lambda!134600))))

(declare-fun bs!607852 () Bool)

(assert (= bs!607852 (and d!1273053 d!1273007)))

(assert (=> bs!607852 (= (= (_1!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 (h!54021 (toList!2643 lt!1545446)))) (= lambda!134603 lambda!134601))))

(assert (=> d!1273053 true))

(assert (=> d!1273053 true))

(assert (=> d!1273053 (= (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lm!2227))) (_1!27132 (h!54021 (toList!2643 lm!2227))) hashF!1461) (forall!8875 (_2!27132 (h!54021 (toList!2643 lm!2227))) lambda!134603))))

(declare-fun bs!607853 () Bool)

(assert (= bs!607853 d!1273053))

(declare-fun m!4925187 () Bool)

(assert (=> bs!607853 m!4925187))

(assert (=> bs!607794 d!1273053))

(declare-fun d!1273055 () Bool)

(assert (=> d!1273055 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))

(declare-fun lt!1545591 () Unit!68141)

(assert (=> d!1273055 (= lt!1545591 (choose!26485 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))

(declare-fun e!2695015 () Bool)

(assert (=> d!1273055 e!2695015))

(declare-fun res!1775279 () Bool)

(assert (=> d!1273055 (=> (not res!1775279) (not e!2695015))))

(assert (=> d!1273055 (= res!1775279 (isStrictlySorted!34 (toList!2643 lt!1545483)))))

(assert (=> d!1273055 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!234 (toList!2643 lt!1545483) (_1!27132 lt!1545447)) lt!1545591)))

(declare-fun b!4330968 () Bool)

(assert (=> b!4330968 (= e!2695015 (containsKey!479 (toList!2643 lt!1545483) (_1!27132 lt!1545447)))))

(assert (= (and d!1273055 res!1775279) b!4330968))

(assert (=> d!1273055 m!4924549))

(assert (=> d!1273055 m!4924549))

(assert (=> d!1273055 m!4924749))

(declare-fun m!4925189 () Bool)

(assert (=> d!1273055 m!4925189))

(declare-fun m!4925191 () Bool)

(assert (=> d!1273055 m!4925191))

(assert (=> b!4330968 m!4924745))

(assert (=> b!4330639 d!1273055))

(assert (=> b!4330639 d!1272979))

(assert (=> b!4330639 d!1272777))

(declare-fun d!1273057 () Bool)

(declare-fun res!1775280 () Bool)

(declare-fun e!2695016 () Bool)

(assert (=> d!1273057 (=> res!1775280 e!2695016)))

(assert (=> d!1273057 (= res!1775280 (not (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))))))

(assert (=> d!1273057 (= (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))) e!2695016)))

(declare-fun b!4330969 () Bool)

(declare-fun e!2695017 () Bool)

(assert (=> b!4330969 (= e!2695016 e!2695017)))

(declare-fun res!1775281 () Bool)

(assert (=> b!4330969 (=> (not res!1775281) (not e!2695017))))

(assert (=> b!4330969 (= res!1775281 (not (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))) (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))))))))

(declare-fun b!4330970 () Bool)

(assert (=> b!4330970 (= e!2695017 (noDuplicateKeys!338 (t!355577 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227))))))))))

(assert (= (and d!1273057 (not res!1775280)) b!4330969))

(assert (= (and b!4330969 res!1775281) b!4330970))

(declare-fun m!4925193 () Bool)

(assert (=> b!4330969 m!4925193))

(declare-fun m!4925195 () Bool)

(assert (=> b!4330970 m!4925195))

(assert (=> b!4330695 d!1273057))

(declare-fun d!1273059 () Bool)

(assert (=> d!1273059 (= ($colon$colon!664 e!2694769 (ite c!736691 (h!54021 (toList!2643 lt!1545449)) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)))) (Cons!48542 (ite c!736691 (h!54021 (toList!2643 lt!1545449)) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))) e!2694769))))

(assert (=> bm!301021 d!1273059))

(declare-fun d!1273061 () Bool)

(declare-fun res!1775282 () Bool)

(declare-fun e!2695018 () Bool)

(assert (=> d!1273061 (=> res!1775282 e!2695018)))

(assert (=> d!1273061 (= res!1775282 (and (is-Cons!48542 (toList!2643 lt!1545487)) (= (_1!27132 (h!54021 (toList!2643 lt!1545487))) (_1!27132 lt!1545447))))))

(assert (=> d!1273061 (= (containsKey!479 (toList!2643 lt!1545487) (_1!27132 lt!1545447)) e!2695018)))

(declare-fun b!4330971 () Bool)

(declare-fun e!2695019 () Bool)

(assert (=> b!4330971 (= e!2695018 e!2695019)))

(declare-fun res!1775283 () Bool)

(assert (=> b!4330971 (=> (not res!1775283) (not e!2695019))))

(assert (=> b!4330971 (= res!1775283 (and (or (not (is-Cons!48542 (toList!2643 lt!1545487))) (bvsle (_1!27132 (h!54021 (toList!2643 lt!1545487))) (_1!27132 lt!1545447))) (is-Cons!48542 (toList!2643 lt!1545487)) (bvslt (_1!27132 (h!54021 (toList!2643 lt!1545487))) (_1!27132 lt!1545447))))))

(declare-fun b!4330972 () Bool)

(assert (=> b!4330972 (= e!2695019 (containsKey!479 (t!355578 (toList!2643 lt!1545487)) (_1!27132 lt!1545447)))))

(assert (= (and d!1273061 (not res!1775282)) b!4330971))

(assert (= (and b!4330971 res!1775283) b!4330972))

(declare-fun m!4925197 () Bool)

(assert (=> b!4330972 m!4925197))

(assert (=> d!1272781 d!1273061))

(declare-fun d!1273063 () Bool)

(declare-fun res!1775284 () Bool)

(declare-fun e!2695020 () Bool)

(assert (=> d!1273063 (=> res!1775284 e!2695020)))

(assert (=> d!1273063 (= res!1775284 (not (is-Cons!48541 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446)))))))))

(assert (=> d!1273063 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446))))) e!2695020)))

(declare-fun b!4330973 () Bool)

(declare-fun e!2695021 () Bool)

(assert (=> b!4330973 (= e!2695020 e!2695021)))

(declare-fun res!1775285 () Bool)

(assert (=> b!4330973 (=> (not res!1775285) (not e!2695021))))

(assert (=> b!4330973 (= res!1775285 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446)))))))))))

(declare-fun b!4330974 () Bool)

(assert (=> b!4330974 (= e!2695021 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446)))))))))

(assert (= (and d!1273063 (not res!1775284)) b!4330973))

(assert (= (and b!4330973 res!1775285) b!4330974))

(declare-fun m!4925199 () Bool)

(assert (=> b!4330973 m!4925199))

(declare-fun m!4925201 () Bool)

(assert (=> b!4330974 m!4925201))

(assert (=> bs!607802 d!1273063))

(declare-fun d!1273065 () Bool)

(declare-fun c!736748 () Bool)

(assert (=> d!1273065 (= c!736748 (and (is-Cons!48542 (t!355578 lt!1545480)) (= (_1!27132 (h!54021 (t!355578 lt!1545480))) (_1!27132 lt!1545447))))))

(declare-fun e!2695022 () Option!10332)

(assert (=> d!1273065 (= (getValueByKey!318 (t!355578 lt!1545480) (_1!27132 lt!1545447)) e!2695022)))

(declare-fun b!4330977 () Bool)

(declare-fun e!2695023 () Option!10332)

(assert (=> b!4330977 (= e!2695023 (getValueByKey!318 (t!355578 (t!355578 lt!1545480)) (_1!27132 lt!1545447)))))

(declare-fun b!4330978 () Bool)

(assert (=> b!4330978 (= e!2695023 None!10331)))

(declare-fun b!4330976 () Bool)

(assert (=> b!4330976 (= e!2695022 e!2695023)))

(declare-fun c!736749 () Bool)

(assert (=> b!4330976 (= c!736749 (and (is-Cons!48542 (t!355578 lt!1545480)) (not (= (_1!27132 (h!54021 (t!355578 lt!1545480))) (_1!27132 lt!1545447)))))))

(declare-fun b!4330975 () Bool)

(assert (=> b!4330975 (= e!2695022 (Some!10331 (_2!27132 (h!54021 (t!355578 lt!1545480)))))))

(assert (= (and d!1273065 c!736748) b!4330975))

(assert (= (and d!1273065 (not c!736748)) b!4330976))

(assert (= (and b!4330976 c!736749) b!4330977))

(assert (= (and b!4330976 (not c!736749)) b!4330978))

(declare-fun m!4925203 () Bool)

(assert (=> b!4330977 m!4925203))

(assert (=> b!4330644 d!1273065))

(declare-fun d!1273067 () Bool)

(declare-fun res!1775286 () Bool)

(declare-fun e!2695024 () Bool)

(assert (=> d!1273067 (=> res!1775286 e!2695024)))

(assert (=> d!1273067 (= res!1775286 (is-Nil!48542 (toList!2643 lt!1545471)))))

(assert (=> d!1273067 (= (forall!8873 (toList!2643 lt!1545471) lambda!134594) e!2695024)))

(declare-fun b!4330979 () Bool)

(declare-fun e!2695025 () Bool)

(assert (=> b!4330979 (= e!2695024 e!2695025)))

(declare-fun res!1775287 () Bool)

(assert (=> b!4330979 (=> (not res!1775287) (not e!2695025))))

(assert (=> b!4330979 (= res!1775287 (dynLambda!20542 lambda!134594 (h!54021 (toList!2643 lt!1545471))))))

(declare-fun b!4330980 () Bool)

(assert (=> b!4330980 (= e!2695025 (forall!8873 (t!355578 (toList!2643 lt!1545471)) lambda!134594))))

(assert (= (and d!1273067 (not res!1775286)) b!4330979))

(assert (= (and b!4330979 res!1775287) b!4330980))

(declare-fun b_lambda!127815 () Bool)

(assert (=> (not b_lambda!127815) (not b!4330979)))

(declare-fun m!4925205 () Bool)

(assert (=> b!4330979 m!4925205))

(declare-fun m!4925207 () Bool)

(assert (=> b!4330980 m!4925207))

(assert (=> d!1272835 d!1273067))

(declare-fun d!1273069 () Bool)

(declare-fun res!1775288 () Bool)

(declare-fun e!2695026 () Bool)

(assert (=> d!1273069 (=> res!1775288 e!2695026)))

(assert (=> d!1273069 (= res!1775288 (is-Nil!48542 (toList!2643 lt!1545537)))))

(assert (=> d!1273069 (= (forall!8873 (toList!2643 lt!1545537) lambda!134593) e!2695026)))

(declare-fun b!4330981 () Bool)

(declare-fun e!2695027 () Bool)

(assert (=> b!4330981 (= e!2695026 e!2695027)))

(declare-fun res!1775289 () Bool)

(assert (=> b!4330981 (=> (not res!1775289) (not e!2695027))))

(assert (=> b!4330981 (= res!1775289 (dynLambda!20542 lambda!134593 (h!54021 (toList!2643 lt!1545537))))))

(declare-fun b!4330982 () Bool)

(assert (=> b!4330982 (= e!2695027 (forall!8873 (t!355578 (toList!2643 lt!1545537)) lambda!134593))))

(assert (= (and d!1273069 (not res!1775288)) b!4330981))

(assert (= (and b!4330981 res!1775289) b!4330982))

(declare-fun b_lambda!127817 () Bool)

(assert (=> (not b_lambda!127817) (not b!4330981)))

(declare-fun m!4925209 () Bool)

(assert (=> b!4330981 m!4925209))

(declare-fun m!4925211 () Bool)

(assert (=> b!4330982 m!4925211))

(assert (=> d!1272797 d!1273069))

(assert (=> d!1272797 d!1272795))

(declare-fun d!1273071 () Bool)

(declare-fun res!1775290 () Bool)

(declare-fun e!2695028 () Bool)

(assert (=> d!1273071 (=> res!1775290 e!2695028)))

(assert (=> d!1273071 (= res!1775290 (and (is-Cons!48542 lt!1545527) (= (_1!27132 (h!54021 lt!1545527)) (_1!27132 lt!1545447))))))

(assert (=> d!1273071 (= (containsKey!479 lt!1545527 (_1!27132 lt!1545447)) e!2695028)))

(declare-fun b!4330983 () Bool)

(declare-fun e!2695029 () Bool)

(assert (=> b!4330983 (= e!2695028 e!2695029)))

(declare-fun res!1775291 () Bool)

(assert (=> b!4330983 (=> (not res!1775291) (not e!2695029))))

(assert (=> b!4330983 (= res!1775291 (and (or (not (is-Cons!48542 lt!1545527)) (bvsle (_1!27132 (h!54021 lt!1545527)) (_1!27132 lt!1545447))) (is-Cons!48542 lt!1545527) (bvslt (_1!27132 (h!54021 lt!1545527)) (_1!27132 lt!1545447))))))

(declare-fun b!4330984 () Bool)

(assert (=> b!4330984 (= e!2695029 (containsKey!479 (t!355578 lt!1545527) (_1!27132 lt!1545447)))))

(assert (= (and d!1273071 (not res!1775290)) b!4330983))

(assert (= (and b!4330983 res!1775291) b!4330984))

(declare-fun m!4925213 () Bool)

(assert (=> b!4330984 m!4925213))

(assert (=> b!4330607 d!1273071))

(declare-fun d!1273073 () Bool)

(declare-fun res!1775292 () Bool)

(declare-fun e!2695030 () Bool)

(assert (=> d!1273073 (=> res!1775292 e!2695030)))

(assert (=> d!1273073 (= res!1775292 (not (is-Cons!48541 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227))))))))))

(assert (=> d!1273073 (= (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227)))))) e!2695030)))

(declare-fun b!4330985 () Bool)

(declare-fun e!2695031 () Bool)

(assert (=> b!4330985 (= e!2695030 e!2695031)))

(declare-fun res!1775293 () Bool)

(assert (=> b!4330985 (=> (not res!1775293) (not e!2695031))))

(assert (=> b!4330985 (= res!1775293 (not (containsKey!477 (t!355577 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227)))))) (_1!27131 (h!54020 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227))))))))))))

(declare-fun b!4330986 () Bool)

(assert (=> b!4330986 (= e!2695031 (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lm!2227))))))))))

(assert (= (and d!1273073 (not res!1775292)) b!4330985))

(assert (= (and b!4330985 res!1775293) b!4330986))

(declare-fun m!4925215 () Bool)

(assert (=> b!4330985 m!4925215))

(declare-fun m!4925217 () Bool)

(assert (=> b!4330986 m!4925217))

(assert (=> bs!607797 d!1273073))

(declare-fun d!1273075 () Bool)

(declare-fun e!2695033 () Bool)

(assert (=> d!1273075 e!2695033))

(declare-fun res!1775294 () Bool)

(assert (=> d!1273075 (=> res!1775294 e!2695033)))

(declare-fun lt!1545594 () Bool)

(assert (=> d!1273075 (= res!1775294 (not lt!1545594))))

(declare-fun lt!1545592 () Bool)

(assert (=> d!1273075 (= lt!1545594 lt!1545592)))

(declare-fun lt!1545595 () Unit!68141)

(declare-fun e!2695032 () Unit!68141)

(assert (=> d!1273075 (= lt!1545595 e!2695032)))

(declare-fun c!736750 () Bool)

(assert (=> d!1273075 (= c!736750 lt!1545592)))

(assert (=> d!1273075 (= lt!1545592 (containsKey!479 (toList!2643 lt!1545534) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(assert (=> d!1273075 (= (contains!10555 lt!1545534 (_1!27132 (tuple2!47677 hash!427 newBucket!230))) lt!1545594)))

(declare-fun b!4330987 () Bool)

(declare-fun lt!1545593 () Unit!68141)

(assert (=> b!4330987 (= e!2695032 lt!1545593)))

(assert (=> b!4330987 (= lt!1545593 (lemmaContainsKeyImpliesGetValueByKeyDefined!234 (toList!2643 lt!1545534) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(assert (=> b!4330987 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545534) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun b!4330988 () Bool)

(declare-fun Unit!68149 () Unit!68141)

(assert (=> b!4330988 (= e!2695032 Unit!68149)))

(declare-fun b!4330989 () Bool)

(assert (=> b!4330989 (= e!2695033 (isDefined!7630 (getValueByKey!318 (toList!2643 lt!1545534) (_1!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(assert (= (and d!1273075 c!736750) b!4330987))

(assert (= (and d!1273075 (not c!736750)) b!4330988))

(assert (= (and d!1273075 (not res!1775294)) b!4330989))

(declare-fun m!4925219 () Bool)

(assert (=> d!1273075 m!4925219))

(declare-fun m!4925221 () Bool)

(assert (=> b!4330987 m!4925221))

(assert (=> b!4330987 m!4924721))

(assert (=> b!4330987 m!4924721))

(declare-fun m!4925223 () Bool)

(assert (=> b!4330987 m!4925223))

(assert (=> b!4330989 m!4924721))

(assert (=> b!4330989 m!4924721))

(assert (=> b!4330989 m!4925223))

(assert (=> d!1272795 d!1273075))

(declare-fun d!1273077 () Bool)

(declare-fun c!736751 () Bool)

(assert (=> d!1273077 (= c!736751 (and (is-Cons!48542 lt!1545531) (= (_1!27132 (h!54021 lt!1545531)) (_1!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(declare-fun e!2695034 () Option!10332)

(assert (=> d!1273077 (= (getValueByKey!318 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230))) e!2695034)))

(declare-fun e!2695035 () Option!10332)

(declare-fun b!4330992 () Bool)

(assert (=> b!4330992 (= e!2695035 (getValueByKey!318 (t!355578 lt!1545531) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun b!4330993 () Bool)

(assert (=> b!4330993 (= e!2695035 None!10331)))

(declare-fun b!4330991 () Bool)

(assert (=> b!4330991 (= e!2695034 e!2695035)))

(declare-fun c!736752 () Bool)

(assert (=> b!4330991 (= c!736752 (and (is-Cons!48542 lt!1545531) (not (= (_1!27132 (h!54021 lt!1545531)) (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))))

(declare-fun b!4330990 () Bool)

(assert (=> b!4330990 (= e!2695034 (Some!10331 (_2!27132 (h!54021 lt!1545531))))))

(assert (= (and d!1273077 c!736751) b!4330990))

(assert (= (and d!1273077 (not c!736751)) b!4330991))

(assert (= (and b!4330991 c!736752) b!4330992))

(assert (= (and b!4330991 (not c!736752)) b!4330993))

(declare-fun m!4925225 () Bool)

(assert (=> b!4330992 m!4925225))

(assert (=> d!1272795 d!1273077))

(declare-fun d!1273079 () Bool)

(assert (=> d!1273079 (= (getValueByKey!318 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230))) (Some!10331 (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun lt!1545596 () Unit!68141)

(assert (=> d!1273079 (= lt!1545596 (choose!26483 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun e!2695036 () Bool)

(assert (=> d!1273079 e!2695036))

(declare-fun res!1775295 () Bool)

(assert (=> d!1273079 (=> (not res!1775295) (not e!2695036))))

(assert (=> d!1273079 (= res!1775295 (isStrictlySorted!34 lt!1545531))))

(assert (=> d!1273079 (= (lemmaContainsTupThenGetReturnValue!111 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))) lt!1545596)))

(declare-fun b!4330994 () Bool)

(declare-fun res!1775296 () Bool)

(assert (=> b!4330994 (=> (not res!1775296) (not e!2695036))))

(assert (=> b!4330994 (= res!1775296 (containsKey!479 lt!1545531 (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun b!4330995 () Bool)

(assert (=> b!4330995 (= e!2695036 (contains!10556 lt!1545531 (tuple2!47677 (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(assert (= (and d!1273079 res!1775295) b!4330994))

(assert (= (and b!4330994 res!1775296) b!4330995))

(assert (=> d!1273079 m!4924715))

(declare-fun m!4925227 () Bool)

(assert (=> d!1273079 m!4925227))

(declare-fun m!4925229 () Bool)

(assert (=> d!1273079 m!4925229))

(declare-fun m!4925231 () Bool)

(assert (=> b!4330994 m!4925231))

(declare-fun m!4925233 () Bool)

(assert (=> b!4330995 m!4925233))

(assert (=> d!1272795 d!1273079))

(declare-fun c!736753 () Bool)

(declare-fun b!4330996 () Bool)

(assert (=> b!4330996 (= c!736753 (and (is-Cons!48542 (toList!2643 lt!1545449)) (bvsgt (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(declare-fun e!2695037 () List!48666)

(declare-fun e!2695039 () List!48666)

(assert (=> b!4330996 (= e!2695037 e!2695039)))

(declare-fun b!4330997 () Bool)

(declare-fun res!1775298 () Bool)

(declare-fun e!2695038 () Bool)

(assert (=> b!4330997 (=> (not res!1775298) (not e!2695038))))

(declare-fun lt!1545597 () List!48666)

(assert (=> b!4330997 (= res!1775298 (containsKey!479 lt!1545597 (_1!27132 (tuple2!47677 hash!427 newBucket!230))))))

(declare-fun b!4330998 () Bool)

(declare-fun e!2695040 () List!48666)

(declare-fun call!301046 () List!48666)

(assert (=> b!4330998 (= e!2695040 call!301046)))

(declare-fun bm!301041 () Bool)

(declare-fun call!301047 () List!48666)

(declare-fun call!301048 () List!48666)

(assert (=> bm!301041 (= call!301047 call!301048)))

(declare-fun e!2695041 () List!48666)

(declare-fun bm!301042 () Bool)

(declare-fun c!736754 () Bool)

(assert (=> bm!301042 (= call!301046 ($colon$colon!664 e!2695041 (ite c!736754 (h!54021 (toList!2643 lt!1545449)) (tuple2!47677 (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))))

(declare-fun c!736756 () Bool)

(assert (=> bm!301042 (= c!736756 c!736754)))

(declare-fun b!4330999 () Bool)

(assert (=> b!4330999 (= e!2695040 e!2695037)))

(declare-fun c!736755 () Bool)

(assert (=> b!4330999 (= c!736755 (and (is-Cons!48542 (toList!2643 lt!1545449)) (= (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(declare-fun b!4331000 () Bool)

(assert (=> b!4331000 (= e!2695039 call!301047)))

(declare-fun b!4331001 () Bool)

(assert (=> b!4331001 (= e!2695038 (contains!10556 lt!1545597 (tuple2!47677 (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(declare-fun d!1273081 () Bool)

(assert (=> d!1273081 e!2695038))

(declare-fun res!1775297 () Bool)

(assert (=> d!1273081 (=> (not res!1775297) (not e!2695038))))

(assert (=> d!1273081 (= res!1775297 (isStrictlySorted!34 lt!1545597))))

(assert (=> d!1273081 (= lt!1545597 e!2695040)))

(assert (=> d!1273081 (= c!736754 (and (is-Cons!48542 (toList!2643 lt!1545449)) (bvslt (_1!27132 (h!54021 (toList!2643 lt!1545449))) (_1!27132 (tuple2!47677 hash!427 newBucket!230)))))))

(assert (=> d!1273081 (isStrictlySorted!34 (toList!2643 lt!1545449))))

(assert (=> d!1273081 (= (insertStrictlySorted!66 (toList!2643 lt!1545449) (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))) lt!1545597)))

(declare-fun b!4331002 () Bool)

(assert (=> b!4331002 (= e!2695039 call!301047)))

(declare-fun bm!301043 () Bool)

(assert (=> bm!301043 (= call!301048 call!301046)))

(declare-fun b!4331003 () Bool)

(assert (=> b!4331003 (= e!2695041 (ite c!736755 (t!355578 (toList!2643 lt!1545449)) (ite c!736753 (Cons!48542 (h!54021 (toList!2643 lt!1545449)) (t!355578 (toList!2643 lt!1545449))) Nil!48542)))))

(declare-fun b!4331004 () Bool)

(assert (=> b!4331004 (= e!2695037 call!301048)))

(declare-fun b!4331005 () Bool)

(assert (=> b!4331005 (= e!2695041 (insertStrictlySorted!66 (t!355578 (toList!2643 lt!1545449)) (_1!27132 (tuple2!47677 hash!427 newBucket!230)) (_2!27132 (tuple2!47677 hash!427 newBucket!230))))))

(assert (= (and d!1273081 c!736754) b!4330998))

(assert (= (and d!1273081 (not c!736754)) b!4330999))

(assert (= (and b!4330999 c!736755) b!4331004))

(assert (= (and b!4330999 (not c!736755)) b!4330996))

(assert (= (and b!4330996 c!736753) b!4331002))

(assert (= (and b!4330996 (not c!736753)) b!4331000))

(assert (= (or b!4331002 b!4331000) bm!301041))

(assert (= (or b!4331004 bm!301041) bm!301043))

(assert (= (or b!4330998 bm!301043) bm!301042))

(assert (= (and bm!301042 c!736756) b!4331005))

(assert (= (and bm!301042 (not c!736756)) b!4331003))

(assert (= (and d!1273081 res!1775297) b!4330997))

(assert (= (and b!4330997 res!1775298) b!4331001))

(declare-fun m!4925235 () Bool)

(assert (=> b!4330997 m!4925235))

(declare-fun m!4925237 () Bool)

(assert (=> bm!301042 m!4925237))

(declare-fun m!4925239 () Bool)

(assert (=> b!4331001 m!4925239))

(declare-fun m!4925241 () Bool)

(assert (=> d!1273081 m!4925241))

(assert (=> d!1273081 m!4924769))

(declare-fun m!4925243 () Bool)

(assert (=> b!4331005 m!4925243))

(assert (=> d!1272795 d!1273081))

(declare-fun d!1273083 () Bool)

(declare-fun lt!1545598 () Bool)

(assert (=> d!1273083 (= lt!1545598 (set.member (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) (content!7583 lt!1545484)))))

(declare-fun e!2695043 () Bool)

(assert (=> d!1273083 (= lt!1545598 e!2695043)))

(declare-fun res!1775299 () Bool)

(assert (=> d!1273083 (=> (not res!1775299) (not e!2695043))))

(assert (=> d!1273083 (= res!1775299 (is-Cons!48542 lt!1545484))))

(assert (=> d!1273083 (= (contains!10556 lt!1545484 (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))) lt!1545598)))

(declare-fun b!4331006 () Bool)

(declare-fun e!2695042 () Bool)

(assert (=> b!4331006 (= e!2695043 e!2695042)))

(declare-fun res!1775300 () Bool)

(assert (=> b!4331006 (=> res!1775300 e!2695042)))

(assert (=> b!4331006 (= res!1775300 (= (h!54021 lt!1545484) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(declare-fun b!4331007 () Bool)

(assert (=> b!4331007 (= e!2695042 (contains!10556 (t!355578 lt!1545484) (tuple2!47677 (_1!27132 lt!1545447) (_2!27132 lt!1545447))))))

(assert (= (and d!1273083 res!1775299) b!4331006))

(assert (= (and b!4331006 (not res!1775300)) b!4331007))

(declare-fun m!4925245 () Bool)

(assert (=> d!1273083 m!4925245))

(declare-fun m!4925247 () Bool)

(assert (=> d!1273083 m!4925247))

(declare-fun m!4925249 () Bool)

(assert (=> b!4331007 m!4925249))

(assert (=> b!4330585 d!1273083))

(declare-fun d!1273085 () Bool)

(declare-fun res!1775301 () Bool)

(declare-fun e!2695044 () Bool)

(assert (=> d!1273085 (=> res!1775301 e!2695044)))

(assert (=> d!1273085 (= res!1775301 (not (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))))))

(assert (=> d!1273085 (= (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448))))) e!2695044)))

(declare-fun b!4331008 () Bool)

(declare-fun e!2695045 () Bool)

(assert (=> b!4331008 (= e!2695044 e!2695045)))

(declare-fun res!1775302 () Bool)

(assert (=> b!4331008 (=> (not res!1775302) (not e!2695045))))

(assert (=> b!4331008 (= res!1775302 (not (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448))))) (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))))))))

(declare-fun b!4331009 () Bool)

(assert (=> b!4331009 (= e!2695045 (noDuplicateKeys!338 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545448)))))))))

(assert (= (and d!1273085 (not res!1775301)) b!4331008))

(assert (= (and b!4331008 res!1775302) b!4331009))

(declare-fun m!4925251 () Bool)

(assert (=> b!4331008 m!4925251))

(declare-fun m!4925253 () Bool)

(assert (=> b!4331009 m!4925253))

(assert (=> b!4330636 d!1273085))

(declare-fun d!1273087 () Bool)

(declare-fun res!1775303 () Bool)

(declare-fun e!2695046 () Bool)

(assert (=> d!1273087 (=> res!1775303 e!2695046)))

(assert (=> d!1273087 (= res!1775303 (not (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))))))

(assert (=> d!1273087 (= (noDuplicateKeys!338 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446))))) e!2695046)))

(declare-fun b!4331010 () Bool)

(declare-fun e!2695047 () Bool)

(assert (=> b!4331010 (= e!2695046 e!2695047)))

(declare-fun res!1775304 () Bool)

(assert (=> b!4331010 (=> (not res!1775304) (not e!2695047))))

(assert (=> b!4331010 (= res!1775304 (not (containsKey!477 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446))))) (_1!27131 (h!54020 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))))))))

(declare-fun b!4331011 () Bool)

(assert (=> b!4331011 (= e!2695047 (noDuplicateKeys!338 (t!355577 (t!355577 (_2!27132 (h!54021 (toList!2643 lt!1545446)))))))))

(assert (= (and d!1273087 (not res!1775303)) b!4331010))

(assert (= (and b!4331010 res!1775304) b!4331011))

(declare-fun m!4925255 () Bool)

(assert (=> b!4331010 m!4925255))

(declare-fun m!4925257 () Bool)

(assert (=> b!4331011 m!4925257))

(assert (=> b!4330566 d!1273087))

(assert (=> d!1272785 d!1272783))

(declare-fun d!1273089 () Bool)

(assert (=> d!1273089 (= (getValueByKey!318 lt!1545484 (_1!27132 lt!1545447)) (Some!10331 (_2!27132 lt!1545447)))))

(assert (=> d!1273089 true))

(declare-fun _$23!170 () Unit!68141)

(assert (=> d!1273089 (= (choose!26483 lt!1545484 (_1!27132 lt!1545447) (_2!27132 lt!1545447)) _$23!170)))

(declare-fun bs!607854 () Bool)

(assert (= bs!607854 d!1273089))

(assert (=> bs!607854 m!4924561))

(assert (=> d!1272785 d!1273089))

(declare-fun d!1273091 () Bool)

(declare-fun res!1775305 () Bool)

(declare-fun e!2695048 () Bool)

(assert (=> d!1273091 (=> res!1775305 e!2695048)))

(assert (=> d!1273091 (= res!1775305 (or (is-Nil!48542 lt!1545484) (is-Nil!48542 (t!355578 lt!1545484))))))

(assert (=> d!1273091 (= (isStrictlySorted!34 lt!1545484) e!2695048)))

(declare-fun b!4331012 () Bool)

(declare-fun e!2695049 () Bool)

(assert (=> b!4331012 (= e!2695048 e!2695049)))

(declare-fun res!1775306 () Bool)

(assert (=> b!4331012 (=> (not res!1775306) (not e!2695049))))

(assert (=> b!4331012 (= res!1775306 (bvslt (_1!27132 (h!54021 lt!1545484)) (_1!27132 (h!54021 (t!355578 lt!1545484)))))))

(declare-fun b!4331013 () Bool)

(assert (=> b!4331013 (= e!2695049 (isStrictlySorted!34 (t!355578 lt!1545484)))))

(assert (= (and d!1273091 (not res!1775305)) b!4331012))

(assert (= (and b!4331012 res!1775306) b!4331013))

(declare-fun m!4925259 () Bool)

(assert (=> b!4331013 m!4925259))

(assert (=> d!1272785 d!1273091))

(declare-fun tp!1328437 () Bool)

(declare-fun e!2695050 () Bool)

(declare-fun b!4331014 () Bool)

(assert (=> b!4331014 (= e!2695050 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328437))))

(assert (=> b!4330696 (= tp!1328429 e!2695050)))

(assert (= (and b!4330696 (is-Cons!48541 (t!355577 (t!355577 (t!355577 newBucket!230))))) b!4331014))

(declare-fun tp!1328438 () Bool)

(declare-fun b!4331015 () Bool)

(declare-fun e!2695051 () Bool)

(assert (=> b!4331015 (= e!2695051 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328438))))

(assert (=> b!4330697 (= tp!1328430 e!2695051)))

(assert (= (and b!4330697 (is-Cons!48541 (t!355577 (_2!27132 (h!54021 (toList!2643 lm!2227)))))) b!4331015))

(declare-fun b!4331016 () Bool)

(declare-fun tp!1328439 () Bool)

(declare-fun e!2695052 () Bool)

(assert (=> b!4331016 (= e!2695052 (and tp_is_empty!24541 tp_is_empty!24543 tp!1328439))))

(assert (=> b!4330698 (= tp!1328431 e!2695052)))

(assert (= (and b!4330698 (is-Cons!48541 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))))) b!4331016))

(declare-fun b!4331017 () Bool)

(declare-fun e!2695053 () Bool)

(declare-fun tp!1328440 () Bool)

(declare-fun tp!1328441 () Bool)

(assert (=> b!4331017 (= e!2695053 (and tp!1328440 tp!1328441))))

(assert (=> b!4330698 (= tp!1328432 e!2695053)))

(assert (= (and b!4330698 (is-Cons!48542 (t!355578 (t!355578 (toList!2643 lm!2227))))) b!4331017))

(declare-fun b_lambda!127819 () Bool)

(assert (= b_lambda!127813 (or d!1272709 b_lambda!127819)))

(declare-fun bs!607855 () Bool)

(declare-fun d!1273093 () Bool)

(assert (= bs!607855 (and d!1273093 d!1272709)))

(assert (=> bs!607855 (= (dynLambda!20542 lambda!134567 (h!54021 (t!355578 (toList!2643 lt!1545471)))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545471))))))))

(declare-fun m!4925261 () Bool)

(assert (=> bs!607855 m!4925261))

(assert (=> b!4330942 d!1273093))

(declare-fun b_lambda!127821 () Bool)

(assert (= b_lambda!127809 (or d!1272733 b_lambda!127821)))

(declare-fun bs!607856 () Bool)

(declare-fun d!1273095 () Bool)

(assert (= bs!607856 (and d!1273095 d!1272733)))

(assert (=> bs!607856 (= (dynLambda!20544 lambda!134575 (h!54020 (t!355577 newBucket!230))) (= (hash!1258 hashF!1461 (_1!27131 (h!54020 (t!355577 newBucket!230)))) hash!427))))

(declare-fun m!4925263 () Bool)

(assert (=> bs!607856 m!4925263))

(assert (=> b!4330936 d!1273095))

(declare-fun b_lambda!127823 () Bool)

(assert (= b_lambda!127803 (or d!1272731 b_lambda!127823)))

(declare-fun bs!607857 () Bool)

(declare-fun d!1273097 () Bool)

(assert (= bs!607857 (and d!1273097 d!1272731)))

(assert (=> bs!607857 (= (dynLambda!20542 lambda!134572 (h!54021 (t!355578 (toList!2643 lm!2227)))) (allKeysSameHash!286 (_2!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))) (_1!27132 (h!54021 (t!355578 (toList!2643 lm!2227)))) hashF!1461))))

(declare-fun m!4925265 () Bool)

(assert (=> bs!607857 m!4925265))

(assert (=> b!4330906 d!1273097))

(declare-fun b_lambda!127825 () Bool)

(assert (= b_lambda!127795 (or d!1272709 b_lambda!127825)))

(declare-fun bs!607858 () Bool)

(declare-fun d!1273099 () Bool)

(assert (= bs!607858 (and d!1273099 d!1272709)))

(assert (=> bs!607858 (= (dynLambda!20542 lambda!134567 (h!54021 (t!355578 (toList!2643 lt!1545449)))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545449))))))))

(declare-fun m!4925267 () Bool)

(assert (=> bs!607858 m!4925267))

(assert (=> b!4330866 d!1273099))

(declare-fun b_lambda!127827 () Bool)

(assert (= b_lambda!127815 (or d!1272835 b_lambda!127827)))

(declare-fun bs!607859 () Bool)

(declare-fun d!1273101 () Bool)

(assert (= bs!607859 (and d!1273101 d!1272835)))

(assert (=> bs!607859 (= (dynLambda!20542 lambda!134594 (h!54021 (toList!2643 lt!1545471))) (allKeysSameHash!286 (_2!27132 (h!54021 (toList!2643 lt!1545471))) (_1!27132 (h!54021 (toList!2643 lt!1545471))) hashF!1461))))

(declare-fun m!4925269 () Bool)

(assert (=> bs!607859 m!4925269))

(assert (=> b!4330979 d!1273101))

(declare-fun b_lambda!127829 () Bool)

(assert (= b_lambda!127807 (or d!1272735 b_lambda!127829)))

(declare-fun bs!607860 () Bool)

(declare-fun d!1273103 () Bool)

(assert (= bs!607860 (and d!1273103 d!1272735)))

(assert (=> bs!607860 (= (dynLambda!20542 lambda!134578 (h!54021 (t!355578 (toList!2643 lt!1545449)))) (allKeysSameHash!286 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545449)))) (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545449)))) hashF!1461))))

(declare-fun m!4925271 () Bool)

(assert (=> bs!607860 m!4925271))

(assert (=> b!4330934 d!1273103))

(declare-fun b_lambda!127831 () Bool)

(assert (= b_lambda!127797 (or start!417304 b_lambda!127831)))

(declare-fun bs!607861 () Bool)

(declare-fun d!1273105 () Bool)

(assert (= bs!607861 (and d!1273105 start!417304)))

(assert (=> bs!607861 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227)))))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (t!355578 (t!355578 (toList!2643 lm!2227))))))))))

(declare-fun m!4925273 () Bool)

(assert (=> bs!607861 m!4925273))

(assert (=> b!4330880 d!1273105))

(declare-fun b_lambda!127833 () Bool)

(assert (= b_lambda!127799 (or d!1272725 b_lambda!127833)))

(declare-fun bs!607862 () Bool)

(declare-fun d!1273107 () Bool)

(assert (= bs!607862 (and d!1273107 d!1272725)))

(assert (=> bs!607862 (= (dynLambda!20542 lambda!134570 (h!54021 (t!355578 (toList!2643 lt!1545446)))) (allKeysSameHash!286 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545446)))) (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545446)))) hashF!1461))))

(declare-fun m!4925275 () Bool)

(assert (=> bs!607862 m!4925275))

(assert (=> b!4330886 d!1273107))

(declare-fun b_lambda!127835 () Bool)

(assert (= b_lambda!127805 (or start!417304 b_lambda!127835)))

(declare-fun bs!607863 () Bool)

(declare-fun d!1273109 () Bool)

(assert (= bs!607863 (and d!1273109 start!417304)))

(assert (=> bs!607863 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (toList!2643 lt!1545448))))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lt!1545448)))))))))

(declare-fun m!4925277 () Bool)

(assert (=> bs!607863 m!4925277))

(assert (=> b!4330918 d!1273109))

(declare-fun b_lambda!127837 () Bool)

(assert (= b_lambda!127801 (or d!1272727 b_lambda!127837)))

(declare-fun bs!607864 () Bool)

(declare-fun d!1273111 () Bool)

(assert (= bs!607864 (and d!1273111 d!1272727)))

(assert (=> bs!607864 (= (dynLambda!20542 lambda!134571 (h!54021 (t!355578 (toList!2643 lt!1545448)))) (allKeysSameHash!286 (_2!27132 (h!54021 (t!355578 (toList!2643 lt!1545448)))) (_1!27132 (h!54021 (t!355578 (toList!2643 lt!1545448)))) hashF!1461))))

(declare-fun m!4925279 () Bool)

(assert (=> bs!607864 m!4925279))

(assert (=> b!4330890 d!1273111))

(declare-fun b_lambda!127839 () Bool)

(assert (= b_lambda!127811 (or start!417304 b_lambda!127839)))

(declare-fun bs!607865 () Bool)

(declare-fun d!1273113 () Bool)

(assert (= bs!607865 (and d!1273113 start!417304)))

(assert (=> bs!607865 (= (dynLambda!20542 lambda!134553 (h!54021 (t!355578 (t!355578 (toList!2643 lt!1545446))))) (noDuplicateKeys!338 (_2!27132 (h!54021 (t!355578 (t!355578 (toList!2643 lt!1545446)))))))))

(declare-fun m!4925281 () Bool)

(assert (=> bs!607865 m!4925281))

(assert (=> b!4330938 d!1273113))

(declare-fun b_lambda!127841 () Bool)

(assert (= b_lambda!127817 (or d!1272797 b_lambda!127841)))

(declare-fun bs!607866 () Bool)

(declare-fun d!1273115 () Bool)

(assert (= bs!607866 (and d!1273115 d!1272797)))

(assert (=> bs!607866 (= (dynLambda!20542 lambda!134593 (h!54021 (toList!2643 lt!1545537))) (noDuplicateKeys!338 (_2!27132 (h!54021 (toList!2643 lt!1545537)))))))

(declare-fun m!4925283 () Bool)

(assert (=> bs!607866 m!4925283))

(assert (=> b!4330981 d!1273115))

(push 1)

(assert (not b_lambda!127827))

(assert (not b_lambda!127735))

(assert (not bm!301036))

(assert (not b!4331016))

(assert (not b!4330921))

(assert (not b!4330997))

(assert (not bs!607860))

(assert (not bs!607865))

(assert (not b!4330885))

(assert (not b_lambda!127745))

(assert (not d!1273081))

(assert (not b_lambda!127833))

(assert (not b!4330945))

(assert (not bs!607866))

(assert (not b!4331017))

(assert (not b!4330958))

(assert (not b!4330987))

(assert (not bs!607857))

(assert (not b_lambda!127753))

(assert (not b!4330974))

(assert (not bs!607861))

(assert (not d!1272979))

(assert (not d!1272981))

(assert (not b!4330965))

(assert (not b!4330867))

(assert (not b_lambda!127739))

(assert (not b!4331010))

(assert (not b!4330903))

(assert (not d!1273043))

(assert (not b!4330985))

(assert (not b!4330956))

(assert (not b!4330972))

(assert (not b!4330915))

(assert (not b_lambda!127699))

(assert (not b!4330984))

(assert (not b!4331014))

(assert (not d!1273005))

(assert (not b!4330847))

(assert (not bs!607855))

(assert (not b!4330927))

(assert (not b!4330967))

(assert (not b!4330989))

(assert (not b!4330883))

(assert tp_is_empty!24541)

(assert (not b_lambda!127747))

(assert (not bs!607858))

(assert (not d!1273053))

(assert (not b!4330881))

(assert (not b!4330986))

(assert (not d!1273025))

(assert (not b!4330947))

(assert (not b_lambda!127749))

(assert (not b!4330907))

(assert (not d!1273055))

(assert (not b_lambda!127697))

(assert (not bm!301039))

(assert (not bs!607863))

(assert (not b!4330963))

(assert (not b!4331015))

(assert (not b!4330955))

(assert (not b!4330887))

(assert (not d!1273051))

(assert (not bs!607864))

(assert (not b!4330905))

(assert (not bs!607862))

(assert (not b_lambda!127741))

(assert (not b!4331013))

(assert (not d!1273001))

(assert (not b!4330959))

(assert (not b!4330923))

(assert (not b!4330884))

(assert (not b!4330864))

(assert (not b_lambda!127839))

(assert (not b!4330977))

(assert (not d!1273045))

(assert (not bm!301042))

(assert (not d!1272959))

(assert (not b_lambda!127825))

(assert (not b_lambda!127701))

(assert (not b!4330869))

(assert (not b!4330937))

(assert (not b!4330994))

(assert (not d!1273037))

(assert (not b_lambda!127837))

(assert (not b!4331011))

(assert (not b!4330855))

(assert (not b!4330925))

(assert (not bs!607856))

(assert (not b!4331008))

(assert (not b_lambda!127829))

(assert (not b_lambda!127751))

(assert (not b_lambda!127737))

(assert (not b!4330861))

(assert (not b!4330933))

(assert (not b!4330980))

(assert (not b!4330995))

(assert (not b!4331005))

(assert (not b_lambda!127695))

(assert (not b!4330912))

(assert (not b_lambda!127823))

(assert (not b!4330961))

(assert (not b!4331007))

(assert (not b_lambda!127835))

(assert (not d!1273083))

(assert (not b!4330992))

(assert (not b!4330919))

(assert (not b!4330873))

(assert (not b!4330935))

(assert (not b!4330968))

(assert (not b!4330853))

(assert (not b!4330939))

(assert (not b_lambda!127841))

(assert (not d!1273035))

(assert (not b!4330943))

(assert (not b!4330889))

(assert (not b!4330898))

(assert (not b!4330891))

(assert (not b!4330969))

(assert (not b!4330982))

(assert (not b!4330894))

(assert (not d!1273079))

(assert (not d!1272997))

(assert (not b!4330882))

(assert (not bs!607859))

(assert (not b!4330854))

(assert (not b!4330941))

(assert (not b!4330973))

(assert (not b_lambda!127819))

(assert (not d!1272945))

(assert (not b!4330931))

(assert (not d!1273089))

(assert (not b!4330901))

(assert (not b!4330951))

(assert (not b_lambda!127821))

(assert (not b!4330909))

(assert (not d!1273029))

(assert (not b_lambda!127831))

(assert (not d!1273007))

(assert (not b!4331001))

(assert (not d!1272947))

(assert (not b!4330970))

(assert tp_is_empty!24543)

(assert (not b!4330957))

(assert (not b_lambda!127743))

(assert (not b!4330877))

(assert (not b!4330929))

(assert (not b!4330917))

(assert (not d!1272989))

(assert (not b!4331009))

(assert (not b!4330879))

(assert (not d!1273075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

