; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!420734 () Bool)

(assert start!420734)

(declare-fun b!4352305 () Bool)

(declare-fun res!1788240 () Bool)

(declare-fun e!2708423 () Bool)

(assert (=> b!4352305 (=> (not res!1788240) (not e!2708423))))

(declare-datatypes ((K!10253 0))(
  ( (K!10254 (val!16473 Int)) )
))
(declare-datatypes ((V!10499 0))(
  ( (V!10500 (val!16474 Int)) )
))
(declare-datatypes ((tuple2!48266 0))(
  ( (tuple2!48267 (_1!27427 K!10253) (_2!27427 V!10499)) )
))
(declare-datatypes ((List!49013 0))(
  ( (Nil!48889) (Cons!48889 (h!54428 tuple2!48266) (t!355933 List!49013)) )
))
(declare-fun newBucket!200 () List!49013)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4866 0))(
  ( (HashableExt!4865 (__x!30569 Int)) )
))
(declare-fun hashF!1247 () Hashable!4866)

(declare-fun allKeysSameHash!432 (List!49013 (_ BitVec 64) Hashable!4866) Bool)

(assert (=> b!4352305 (= res!1788240 (allKeysSameHash!432 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4352306 () Bool)

(declare-fun e!2708424 () Bool)

(declare-fun tp!1329917 () Bool)

(assert (=> b!4352306 (= e!2708424 tp!1329917)))

(declare-fun b!4352307 () Bool)

(declare-fun res!1788245 () Bool)

(declare-fun e!2708426 () Bool)

(assert (=> b!4352307 (=> res!1788245 e!2708426)))

(declare-fun noDuplicateKeys!474 (List!49013) Bool)

(assert (=> b!4352307 (= res!1788245 (not (noDuplicateKeys!474 newBucket!200)))))

(declare-fun b!4352308 () Bool)

(declare-fun res!1788241 () Bool)

(assert (=> b!4352308 (=> (not res!1788241) (not e!2708423))))

(declare-datatypes ((tuple2!48268 0))(
  ( (tuple2!48269 (_1!27428 (_ BitVec 64)) (_2!27428 List!49013)) )
))
(declare-datatypes ((List!49014 0))(
  ( (Nil!48890) (Cons!48890 (h!54429 tuple2!48268) (t!355934 List!49014)) )
))
(declare-datatypes ((ListLongMap!1581 0))(
  ( (ListLongMap!1582 (toList!2931 List!49014)) )
))
(declare-fun lm!1707 () ListLongMap!1581)

(declare-fun allKeysSameHashInMap!578 (ListLongMap!1581 Hashable!4866) Bool)

(assert (=> b!4352308 (= res!1788241 (allKeysSameHashInMap!578 lm!1707 hashF!1247))))

(declare-fun b!4352309 () Bool)

(declare-fun e!2708425 () Bool)

(declare-fun lt!1565645 () ListLongMap!1581)

(declare-fun lambda!139654 () Int)

(declare-fun forall!9090 (List!49014 Int) Bool)

(assert (=> b!4352309 (= e!2708425 (forall!9090 (toList!2931 lt!1565645) lambda!139654))))

(declare-fun lt!1565652 () tuple2!48266)

(declare-fun lt!1565654 () tuple2!48268)

(declare-datatypes ((ListMap!2175 0))(
  ( (ListMap!2176 (toList!2932 List!49013)) )
))
(declare-fun lt!1565646 () ListMap!2175)

(declare-fun eq!244 (ListMap!2175 ListMap!2175) Bool)

(declare-fun extractMap!533 (List!49014) ListMap!2175)

(declare-fun +!605 (ListLongMap!1581 tuple2!48268) ListLongMap!1581)

(declare-fun +!606 (ListMap!2175 tuple2!48266) ListMap!2175)

(assert (=> b!4352309 (eq!244 (extractMap!533 (toList!2931 (+!605 lt!1565645 lt!1565654))) (+!606 lt!1565646 lt!1565652))))

(declare-fun key!3918 () K!10253)

(declare-fun newValue!99 () V!10499)

(declare-datatypes ((Unit!71203 0))(
  ( (Unit!71204) )
))
(declare-fun lt!1565647 () Unit!71203)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!78 (ListLongMap!1581 (_ BitVec 64) List!49013 K!10253 V!10499 Hashable!4866) Unit!71203)

(assert (=> b!4352309 (= lt!1565647 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!78 lt!1565645 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11067 (ListMap!2175 K!10253) Bool)

(assert (=> b!4352309 (contains!11067 lt!1565646 key!3918)))

(assert (=> b!4352309 (= lt!1565646 (extractMap!533 (toList!2931 lt!1565645)))))

(declare-fun tail!6970 (ListLongMap!1581) ListLongMap!1581)

(assert (=> b!4352309 (= lt!1565645 (tail!6970 lm!1707))))

(declare-fun lt!1565643 () ListMap!2175)

(assert (=> b!4352309 (contains!11067 lt!1565643 key!3918)))

(declare-fun lt!1565651 () Unit!71203)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!17 (List!49013 K!10253 V!10499 ListMap!2175) Unit!71203)

(assert (=> b!4352309 (= lt!1565651 (lemmaAddToMapContainsAndNotInListThenInAcc!17 (_2!27428 (h!54429 (toList!2931 lm!1707))) key!3918 newValue!99 lt!1565643))))

(assert (=> b!4352309 (= lt!1565643 (extractMap!533 (t!355934 (toList!2931 lm!1707))))))

(declare-fun e!2708422 () Bool)

(assert (=> b!4352309 e!2708422))

(declare-fun res!1788243 () Bool)

(assert (=> b!4352309 (=> (not res!1788243) (not e!2708422))))

(declare-fun containsKey!653 (List!49013 K!10253) Bool)

(declare-fun apply!11326 (ListLongMap!1581 (_ BitVec 64)) List!49013)

(assert (=> b!4352309 (= res!1788243 (not (containsKey!653 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707)))) key!3918)))))

(declare-fun lt!1565648 () Unit!71203)

(declare-fun lemmaNotSameHashThenCannotContainKey!21 (ListLongMap!1581 K!10253 (_ BitVec 64) Hashable!4866) Unit!71203)

(assert (=> b!4352309 (= lt!1565648 (lemmaNotSameHashThenCannotContainKey!21 lm!1707 key!3918 (_1!27428 (h!54429 (toList!2931 lm!1707))) hashF!1247))))

(declare-fun b!4352310 () Bool)

(declare-fun e!2708427 () Bool)

(declare-fun lt!1565653 () ListLongMap!1581)

(assert (=> b!4352310 (= e!2708427 (forall!9090 (toList!2931 lt!1565653) lambda!139654))))

(declare-fun b!4352311 () Bool)

(assert (=> b!4352311 (= e!2708423 (not e!2708426))))

(declare-fun res!1788242 () Bool)

(assert (=> b!4352311 (=> res!1788242 e!2708426)))

(declare-fun lt!1565642 () List!49013)

(declare-fun removePairForKey!444 (List!49013 K!10253) List!49013)

(assert (=> b!4352311 (= res!1788242 (not (= newBucket!200 (Cons!48889 lt!1565652 (removePairForKey!444 lt!1565642 key!3918)))))))

(assert (=> b!4352311 (= lt!1565652 (tuple2!48267 key!3918 newValue!99))))

(declare-fun lt!1565641 () Unit!71203)

(declare-fun lt!1565650 () tuple2!48268)

(declare-fun forallContained!1736 (List!49014 Int tuple2!48268) Unit!71203)

(assert (=> b!4352311 (= lt!1565641 (forallContained!1736 (toList!2931 lm!1707) lambda!139654 lt!1565650))))

(declare-fun contains!11068 (List!49014 tuple2!48268) Bool)

(assert (=> b!4352311 (contains!11068 (toList!2931 lm!1707) lt!1565650)))

(assert (=> b!4352311 (= lt!1565650 (tuple2!48269 hash!377 lt!1565642))))

(declare-fun lt!1565644 () Unit!71203)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!321 (List!49014 (_ BitVec 64) List!49013) Unit!71203)

(assert (=> b!4352311 (= lt!1565644 (lemmaGetValueByKeyImpliesContainsTuple!321 (toList!2931 lm!1707) hash!377 lt!1565642))))

(assert (=> b!4352311 (= lt!1565642 (apply!11326 lm!1707 hash!377))))

(declare-fun b!4352312 () Bool)

(declare-fun res!1788249 () Bool)

(assert (=> b!4352312 (=> (not res!1788249) (not e!2708423))))

(declare-fun hash!1499 (Hashable!4866 K!10253) (_ BitVec 64))

(assert (=> b!4352312 (= res!1788249 (= (hash!1499 hashF!1247 key!3918) hash!377))))

(declare-fun b!4352313 () Bool)

(declare-fun res!1788247 () Bool)

(assert (=> b!4352313 (=> (not res!1788247) (not e!2708423))))

(declare-fun contains!11069 (ListLongMap!1581 (_ BitVec 64)) Bool)

(assert (=> b!4352313 (= res!1788247 (contains!11069 lm!1707 hash!377))))

(declare-fun tp_is_empty!25135 () Bool)

(declare-fun b!4352314 () Bool)

(declare-fun tp_is_empty!25133 () Bool)

(declare-fun e!2708421 () Bool)

(declare-fun tp!1329918 () Bool)

(assert (=> b!4352314 (= e!2708421 (and tp_is_empty!25133 tp_is_empty!25135 tp!1329918))))

(declare-fun b!4352315 () Bool)

(declare-fun res!1788248 () Bool)

(assert (=> b!4352315 (=> (not res!1788248) (not e!2708423))))

(assert (=> b!4352315 (= res!1788248 (contains!11067 (extractMap!533 (toList!2931 lm!1707)) key!3918))))

(declare-fun res!1788246 () Bool)

(assert (=> start!420734 (=> (not res!1788246) (not e!2708423))))

(assert (=> start!420734 (= res!1788246 (forall!9090 (toList!2931 lm!1707) lambda!139654))))

(assert (=> start!420734 e!2708423))

(assert (=> start!420734 e!2708421))

(assert (=> start!420734 true))

(declare-fun inv!64440 (ListLongMap!1581) Bool)

(assert (=> start!420734 (and (inv!64440 lm!1707) e!2708424)))

(assert (=> start!420734 tp_is_empty!25133))

(assert (=> start!420734 tp_is_empty!25135))

(declare-fun b!4352316 () Bool)

(assert (=> b!4352316 (= e!2708422 (not (containsKey!653 (_2!27428 (h!54429 (toList!2931 lm!1707))) key!3918)))))

(declare-fun b!4352317 () Bool)

(assert (=> b!4352317 (= e!2708426 e!2708425)))

(declare-fun res!1788244 () Bool)

(assert (=> b!4352317 (=> res!1788244 e!2708425)))

(assert (=> b!4352317 (= res!1788244 (or (and (is-Cons!48890 (toList!2931 lm!1707)) (= (_1!27428 (h!54429 (toList!2931 lm!1707))) hash!377)) (not (is-Cons!48890 (toList!2931 lm!1707))) (= (_1!27428 (h!54429 (toList!2931 lm!1707))) hash!377)))))

(assert (=> b!4352317 e!2708427))

(declare-fun res!1788250 () Bool)

(assert (=> b!4352317 (=> (not res!1788250) (not e!2708427))))

(assert (=> b!4352317 (= res!1788250 (forall!9090 (toList!2931 lt!1565653) lambda!139654))))

(assert (=> b!4352317 (= lt!1565653 (+!605 lm!1707 lt!1565654))))

(assert (=> b!4352317 (= lt!1565654 (tuple2!48269 hash!377 newBucket!200))))

(declare-fun lt!1565649 () Unit!71203)

(declare-fun addValidProp!128 (ListLongMap!1581 Int (_ BitVec 64) List!49013) Unit!71203)

(assert (=> b!4352317 (= lt!1565649 (addValidProp!128 lm!1707 lambda!139654 hash!377 newBucket!200))))

(assert (=> b!4352317 (forall!9090 (toList!2931 lm!1707) lambda!139654)))

(assert (= (and start!420734 res!1788246) b!4352308))

(assert (= (and b!4352308 res!1788241) b!4352312))

(assert (= (and b!4352312 res!1788249) b!4352305))

(assert (= (and b!4352305 res!1788240) b!4352315))

(assert (= (and b!4352315 res!1788248) b!4352313))

(assert (= (and b!4352313 res!1788247) b!4352311))

(assert (= (and b!4352311 (not res!1788242)) b!4352307))

(assert (= (and b!4352307 (not res!1788245)) b!4352317))

(assert (= (and b!4352317 res!1788250) b!4352310))

(assert (= (and b!4352317 (not res!1788244)) b!4352309))

(assert (= (and b!4352309 res!1788243) b!4352316))

(assert (= (and start!420734 (is-Cons!48889 newBucket!200)) b!4352314))

(assert (= start!420734 b!4352306))

(declare-fun m!4963485 () Bool)

(assert (=> b!4352311 m!4963485))

(declare-fun m!4963487 () Bool)

(assert (=> b!4352311 m!4963487))

(declare-fun m!4963489 () Bool)

(assert (=> b!4352311 m!4963489))

(declare-fun m!4963491 () Bool)

(assert (=> b!4352311 m!4963491))

(declare-fun m!4963493 () Bool)

(assert (=> b!4352311 m!4963493))

(declare-fun m!4963495 () Bool)

(assert (=> b!4352309 m!4963495))

(declare-fun m!4963497 () Bool)

(assert (=> b!4352309 m!4963497))

(declare-fun m!4963499 () Bool)

(assert (=> b!4352309 m!4963499))

(declare-fun m!4963501 () Bool)

(assert (=> b!4352309 m!4963501))

(declare-fun m!4963503 () Bool)

(assert (=> b!4352309 m!4963503))

(declare-fun m!4963505 () Bool)

(assert (=> b!4352309 m!4963505))

(declare-fun m!4963507 () Bool)

(assert (=> b!4352309 m!4963507))

(declare-fun m!4963509 () Bool)

(assert (=> b!4352309 m!4963509))

(declare-fun m!4963511 () Bool)

(assert (=> b!4352309 m!4963511))

(declare-fun m!4963513 () Bool)

(assert (=> b!4352309 m!4963513))

(declare-fun m!4963515 () Bool)

(assert (=> b!4352309 m!4963515))

(assert (=> b!4352309 m!4963497))

(assert (=> b!4352309 m!4963509))

(declare-fun m!4963517 () Bool)

(assert (=> b!4352309 m!4963517))

(declare-fun m!4963519 () Bool)

(assert (=> b!4352309 m!4963519))

(declare-fun m!4963521 () Bool)

(assert (=> b!4352309 m!4963521))

(assert (=> b!4352309 m!4963521))

(declare-fun m!4963523 () Bool)

(assert (=> b!4352309 m!4963523))

(declare-fun m!4963525 () Bool)

(assert (=> b!4352305 m!4963525))

(declare-fun m!4963527 () Bool)

(assert (=> b!4352312 m!4963527))

(declare-fun m!4963529 () Bool)

(assert (=> start!420734 m!4963529))

(declare-fun m!4963531 () Bool)

(assert (=> start!420734 m!4963531))

(declare-fun m!4963533 () Bool)

(assert (=> b!4352313 m!4963533))

(declare-fun m!4963535 () Bool)

(assert (=> b!4352317 m!4963535))

(declare-fun m!4963537 () Bool)

(assert (=> b!4352317 m!4963537))

(declare-fun m!4963539 () Bool)

(assert (=> b!4352317 m!4963539))

(assert (=> b!4352317 m!4963529))

(declare-fun m!4963541 () Bool)

(assert (=> b!4352307 m!4963541))

(declare-fun m!4963543 () Bool)

(assert (=> b!4352308 m!4963543))

(declare-fun m!4963545 () Bool)

(assert (=> b!4352315 m!4963545))

(assert (=> b!4352315 m!4963545))

(declare-fun m!4963547 () Bool)

(assert (=> b!4352315 m!4963547))

(declare-fun m!4963549 () Bool)

(assert (=> b!4352316 m!4963549))

(assert (=> b!4352310 m!4963535))

(push 1)

(assert (not b!4352315))

(assert tp_is_empty!25135)

(assert (not b!4352305))

(assert (not b!4352309))

(assert (not start!420734))

(assert (not b!4352317))

(assert (not b!4352316))

(assert (not b!4352308))

(assert (not b!4352307))

(assert (not b!4352306))

(assert tp_is_empty!25133)

(assert (not b!4352311))

(assert (not b!4352312))

(assert (not b!4352313))

(assert (not b!4352310))

(assert (not b!4352314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1285839 () Bool)

(declare-fun res!1788288 () Bool)

(declare-fun e!2708453 () Bool)

(assert (=> d!1285839 (=> res!1788288 e!2708453)))

(assert (=> d!1285839 (= res!1788288 (is-Nil!48890 (toList!2931 lt!1565653)))))

(assert (=> d!1285839 (= (forall!9090 (toList!2931 lt!1565653) lambda!139654) e!2708453)))

(declare-fun b!4352361 () Bool)

(declare-fun e!2708454 () Bool)

(assert (=> b!4352361 (= e!2708453 e!2708454)))

(declare-fun res!1788289 () Bool)

(assert (=> b!4352361 (=> (not res!1788289) (not e!2708454))))

(declare-fun dynLambda!20618 (Int tuple2!48268) Bool)

(assert (=> b!4352361 (= res!1788289 (dynLambda!20618 lambda!139654 (h!54429 (toList!2931 lt!1565653))))))

(declare-fun b!4352362 () Bool)

(assert (=> b!4352362 (= e!2708454 (forall!9090 (t!355934 (toList!2931 lt!1565653)) lambda!139654))))

(assert (= (and d!1285839 (not res!1788288)) b!4352361))

(assert (= (and b!4352361 res!1788289) b!4352362))

(declare-fun b_lambda!130707 () Bool)

(assert (=> (not b_lambda!130707) (not b!4352361)))

(declare-fun m!4963617 () Bool)

(assert (=> b!4352361 m!4963617))

(declare-fun m!4963619 () Bool)

(assert (=> b!4352362 m!4963619))

(assert (=> b!4352317 d!1285839))

(declare-fun d!1285841 () Bool)

(declare-fun e!2708457 () Bool)

(assert (=> d!1285841 e!2708457))

(declare-fun res!1788295 () Bool)

(assert (=> d!1285841 (=> (not res!1788295) (not e!2708457))))

(declare-fun lt!1565705 () ListLongMap!1581)

(assert (=> d!1285841 (= res!1788295 (contains!11069 lt!1565705 (_1!27428 lt!1565654)))))

(declare-fun lt!1565707 () List!49014)

(assert (=> d!1285841 (= lt!1565705 (ListLongMap!1582 lt!1565707))))

(declare-fun lt!1565706 () Unit!71203)

(declare-fun lt!1565708 () Unit!71203)

(assert (=> d!1285841 (= lt!1565706 lt!1565708)))

(declare-datatypes ((Option!10442 0))(
  ( (None!10441) (Some!10441 (v!43279 List!49013)) )
))
(declare-fun getValueByKey!428 (List!49014 (_ BitVec 64)) Option!10442)

(assert (=> d!1285841 (= (getValueByKey!428 lt!1565707 (_1!27428 lt!1565654)) (Some!10441 (_2!27428 lt!1565654)))))

(declare-fun lemmaContainsTupThenGetReturnValue!203 (List!49014 (_ BitVec 64) List!49013) Unit!71203)

(assert (=> d!1285841 (= lt!1565708 (lemmaContainsTupThenGetReturnValue!203 lt!1565707 (_1!27428 lt!1565654) (_2!27428 lt!1565654)))))

(declare-fun insertStrictlySorted!122 (List!49014 (_ BitVec 64) List!49013) List!49014)

(assert (=> d!1285841 (= lt!1565707 (insertStrictlySorted!122 (toList!2931 lm!1707) (_1!27428 lt!1565654) (_2!27428 lt!1565654)))))

(assert (=> d!1285841 (= (+!605 lm!1707 lt!1565654) lt!1565705)))

(declare-fun b!4352367 () Bool)

(declare-fun res!1788294 () Bool)

(assert (=> b!4352367 (=> (not res!1788294) (not e!2708457))))

(assert (=> b!4352367 (= res!1788294 (= (getValueByKey!428 (toList!2931 lt!1565705) (_1!27428 lt!1565654)) (Some!10441 (_2!27428 lt!1565654))))))

(declare-fun b!4352368 () Bool)

(assert (=> b!4352368 (= e!2708457 (contains!11068 (toList!2931 lt!1565705) lt!1565654))))

(assert (= (and d!1285841 res!1788295) b!4352367))

(assert (= (and b!4352367 res!1788294) b!4352368))

(declare-fun m!4963621 () Bool)

(assert (=> d!1285841 m!4963621))

(declare-fun m!4963623 () Bool)

(assert (=> d!1285841 m!4963623))

(declare-fun m!4963625 () Bool)

(assert (=> d!1285841 m!4963625))

(declare-fun m!4963627 () Bool)

(assert (=> d!1285841 m!4963627))

(declare-fun m!4963629 () Bool)

(assert (=> b!4352367 m!4963629))

(declare-fun m!4963631 () Bool)

(assert (=> b!4352368 m!4963631))

(assert (=> b!4352317 d!1285841))

(declare-fun d!1285843 () Bool)

(assert (=> d!1285843 (forall!9090 (toList!2931 (+!605 lm!1707 (tuple2!48269 hash!377 newBucket!200))) lambda!139654)))

(declare-fun lt!1565711 () Unit!71203)

(declare-fun choose!26799 (ListLongMap!1581 Int (_ BitVec 64) List!49013) Unit!71203)

(assert (=> d!1285843 (= lt!1565711 (choose!26799 lm!1707 lambda!139654 hash!377 newBucket!200))))

(declare-fun e!2708460 () Bool)

(assert (=> d!1285843 e!2708460))

(declare-fun res!1788298 () Bool)

(assert (=> d!1285843 (=> (not res!1788298) (not e!2708460))))

(assert (=> d!1285843 (= res!1788298 (forall!9090 (toList!2931 lm!1707) lambda!139654))))

(assert (=> d!1285843 (= (addValidProp!128 lm!1707 lambda!139654 hash!377 newBucket!200) lt!1565711)))

(declare-fun b!4352372 () Bool)

(assert (=> b!4352372 (= e!2708460 (dynLambda!20618 lambda!139654 (tuple2!48269 hash!377 newBucket!200)))))

(assert (= (and d!1285843 res!1788298) b!4352372))

(declare-fun b_lambda!130709 () Bool)

(assert (=> (not b_lambda!130709) (not b!4352372)))

(declare-fun m!4963633 () Bool)

(assert (=> d!1285843 m!4963633))

(declare-fun m!4963635 () Bool)

(assert (=> d!1285843 m!4963635))

(declare-fun m!4963637 () Bool)

(assert (=> d!1285843 m!4963637))

(assert (=> d!1285843 m!4963529))

(declare-fun m!4963639 () Bool)

(assert (=> b!4352372 m!4963639))

(assert (=> b!4352317 d!1285843))

(declare-fun d!1285845 () Bool)

(declare-fun res!1788299 () Bool)

(declare-fun e!2708461 () Bool)

(assert (=> d!1285845 (=> res!1788299 e!2708461)))

(assert (=> d!1285845 (= res!1788299 (is-Nil!48890 (toList!2931 lm!1707)))))

(assert (=> d!1285845 (= (forall!9090 (toList!2931 lm!1707) lambda!139654) e!2708461)))

(declare-fun b!4352373 () Bool)

(declare-fun e!2708462 () Bool)

(assert (=> b!4352373 (= e!2708461 e!2708462)))

(declare-fun res!1788300 () Bool)

(assert (=> b!4352373 (=> (not res!1788300) (not e!2708462))))

(assert (=> b!4352373 (= res!1788300 (dynLambda!20618 lambda!139654 (h!54429 (toList!2931 lm!1707))))))

(declare-fun b!4352374 () Bool)

(assert (=> b!4352374 (= e!2708462 (forall!9090 (t!355934 (toList!2931 lm!1707)) lambda!139654))))

(assert (= (and d!1285845 (not res!1788299)) b!4352373))

(assert (= (and b!4352373 res!1788300) b!4352374))

(declare-fun b_lambda!130711 () Bool)

(assert (=> (not b_lambda!130711) (not b!4352373)))

(declare-fun m!4963641 () Bool)

(assert (=> b!4352373 m!4963641))

(declare-fun m!4963643 () Bool)

(assert (=> b!4352374 m!4963643))

(assert (=> b!4352317 d!1285845))

(declare-fun d!1285847 () Bool)

(declare-fun res!1788305 () Bool)

(declare-fun e!2708467 () Bool)

(assert (=> d!1285847 (=> res!1788305 e!2708467)))

(assert (=> d!1285847 (= res!1788305 (and (is-Cons!48889 (_2!27428 (h!54429 (toList!2931 lm!1707)))) (= (_1!27427 (h!54428 (_2!27428 (h!54429 (toList!2931 lm!1707))))) key!3918)))))

(assert (=> d!1285847 (= (containsKey!653 (_2!27428 (h!54429 (toList!2931 lm!1707))) key!3918) e!2708467)))

(declare-fun b!4352379 () Bool)

(declare-fun e!2708468 () Bool)

(assert (=> b!4352379 (= e!2708467 e!2708468)))

(declare-fun res!1788306 () Bool)

(assert (=> b!4352379 (=> (not res!1788306) (not e!2708468))))

(assert (=> b!4352379 (= res!1788306 (is-Cons!48889 (_2!27428 (h!54429 (toList!2931 lm!1707)))))))

(declare-fun b!4352380 () Bool)

(assert (=> b!4352380 (= e!2708468 (containsKey!653 (t!355933 (_2!27428 (h!54429 (toList!2931 lm!1707)))) key!3918))))

(assert (= (and d!1285847 (not res!1788305)) b!4352379))

(assert (= (and b!4352379 res!1788306) b!4352380))

(declare-fun m!4963645 () Bool)

(assert (=> b!4352380 m!4963645))

(assert (=> b!4352316 d!1285847))

(declare-fun d!1285849 () Bool)

(declare-fun res!1788311 () Bool)

(declare-fun e!2708473 () Bool)

(assert (=> d!1285849 (=> res!1788311 e!2708473)))

(assert (=> d!1285849 (= res!1788311 (not (is-Cons!48889 newBucket!200)))))

(assert (=> d!1285849 (= (noDuplicateKeys!474 newBucket!200) e!2708473)))

(declare-fun b!4352385 () Bool)

(declare-fun e!2708474 () Bool)

(assert (=> b!4352385 (= e!2708473 e!2708474)))

(declare-fun res!1788312 () Bool)

(assert (=> b!4352385 (=> (not res!1788312) (not e!2708474))))

(assert (=> b!4352385 (= res!1788312 (not (containsKey!653 (t!355933 newBucket!200) (_1!27427 (h!54428 newBucket!200)))))))

(declare-fun b!4352386 () Bool)

(assert (=> b!4352386 (= e!2708474 (noDuplicateKeys!474 (t!355933 newBucket!200)))))

(assert (= (and d!1285849 (not res!1788311)) b!4352385))

(assert (= (and b!4352385 res!1788312) b!4352386))

(declare-fun m!4963647 () Bool)

(assert (=> b!4352385 m!4963647))

(declare-fun m!4963649 () Bool)

(assert (=> b!4352386 m!4963649))

(assert (=> b!4352307 d!1285849))

(assert (=> start!420734 d!1285845))

(declare-fun d!1285853 () Bool)

(declare-fun isStrictlySorted!91 (List!49014) Bool)

(assert (=> d!1285853 (= (inv!64440 lm!1707) (isStrictlySorted!91 (toList!2931 lm!1707)))))

(declare-fun bs!629622 () Bool)

(assert (= bs!629622 d!1285853))

(declare-fun m!4963651 () Bool)

(assert (=> bs!629622 m!4963651))

(assert (=> start!420734 d!1285853))

(declare-fun d!1285855 () Bool)

(assert (=> d!1285855 true))

(assert (=> d!1285855 true))

(declare-fun lambda!139670 () Int)

(declare-fun forall!9092 (List!49013 Int) Bool)

(assert (=> d!1285855 (= (allKeysSameHash!432 newBucket!200 hash!377 hashF!1247) (forall!9092 newBucket!200 lambda!139670))))

(declare-fun bs!629623 () Bool)

(assert (= bs!629623 d!1285855))

(declare-fun m!4963653 () Bool)

(assert (=> bs!629623 m!4963653))

(assert (=> b!4352305 d!1285855))

(declare-fun b!4352417 () Bool)

(declare-datatypes ((List!49017 0))(
  ( (Nil!48893) (Cons!48893 (h!54433 K!10253) (t!355937 List!49017)) )
))
(declare-fun e!2708498 () List!49017)

(declare-fun getKeysList!113 (List!49013) List!49017)

(assert (=> b!4352417 (= e!2708498 (getKeysList!113 (toList!2932 (extractMap!533 (toList!2931 lm!1707)))))))

(declare-fun b!4352418 () Bool)

(declare-fun e!2708495 () Unit!71203)

(declare-fun Unit!71207 () Unit!71203)

(assert (=> b!4352418 (= e!2708495 Unit!71207)))

(declare-fun b!4352419 () Bool)

(declare-fun e!2708496 () Bool)

(declare-fun e!2708497 () Bool)

(assert (=> b!4352419 (= e!2708496 e!2708497)))

(declare-fun res!1788328 () Bool)

(assert (=> b!4352419 (=> (not res!1788328) (not e!2708497))))

(declare-datatypes ((Option!10443 0))(
  ( (None!10442) (Some!10442 (v!43280 V!10499)) )
))
(declare-fun isDefined!7738 (Option!10443) Bool)

(declare-fun getValueByKey!429 (List!49013 K!10253) Option!10443)

(assert (=> b!4352419 (= res!1788328 (isDefined!7738 (getValueByKey!429 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918)))))

(declare-fun b!4352420 () Bool)

(declare-fun contains!11073 (List!49017 K!10253) Bool)

(declare-fun keys!16501 (ListMap!2175) List!49017)

(assert (=> b!4352420 (= e!2708497 (contains!11073 (keys!16501 (extractMap!533 (toList!2931 lm!1707))) key!3918))))

(declare-fun b!4352421 () Bool)

(declare-fun e!2708500 () Unit!71203)

(assert (=> b!4352421 (= e!2708500 e!2708495)))

(declare-fun c!739907 () Bool)

(declare-fun call!302488 () Bool)

(assert (=> b!4352421 (= c!739907 call!302488)))

(declare-fun b!4352422 () Bool)

(declare-fun e!2708499 () Bool)

(assert (=> b!4352422 (= e!2708499 (not (contains!11073 (keys!16501 (extractMap!533 (toList!2931 lm!1707))) key!3918)))))

(declare-fun b!4352424 () Bool)

(assert (=> b!4352424 (= e!2708498 (keys!16501 (extractMap!533 (toList!2931 lm!1707))))))

(declare-fun b!4352425 () Bool)

(assert (=> b!4352425 false))

(declare-fun lt!1565734 () Unit!71203)

(declare-fun lt!1565731 () Unit!71203)

(assert (=> b!4352425 (= lt!1565734 lt!1565731)))

(declare-fun containsKey!655 (List!49013 K!10253) Bool)

(assert (=> b!4352425 (containsKey!655 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!111 (List!49013 K!10253) Unit!71203)

(assert (=> b!4352425 (= lt!1565731 (lemmaInGetKeysListThenContainsKey!111 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918))))

(declare-fun Unit!71208 () Unit!71203)

(assert (=> b!4352425 (= e!2708495 Unit!71208)))

(declare-fun bm!302483 () Bool)

(assert (=> bm!302483 (= call!302488 (contains!11073 e!2708498 key!3918))))

(declare-fun c!739908 () Bool)

(declare-fun c!739909 () Bool)

(assert (=> bm!302483 (= c!739908 c!739909)))

(declare-fun d!1285857 () Bool)

(assert (=> d!1285857 e!2708496))

(declare-fun res!1788327 () Bool)

(assert (=> d!1285857 (=> res!1788327 e!2708496)))

(assert (=> d!1285857 (= res!1788327 e!2708499)))

(declare-fun res!1788329 () Bool)

(assert (=> d!1285857 (=> (not res!1788329) (not e!2708499))))

(declare-fun lt!1565733 () Bool)

(assert (=> d!1285857 (= res!1788329 (not lt!1565733))))

(declare-fun lt!1565728 () Bool)

(assert (=> d!1285857 (= lt!1565733 lt!1565728)))

(declare-fun lt!1565735 () Unit!71203)

(assert (=> d!1285857 (= lt!1565735 e!2708500)))

(assert (=> d!1285857 (= c!739909 lt!1565728)))

(assert (=> d!1285857 (= lt!1565728 (containsKey!655 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918))))

(assert (=> d!1285857 (= (contains!11067 (extractMap!533 (toList!2931 lm!1707)) key!3918) lt!1565733)))

(declare-fun b!4352423 () Bool)

(declare-fun lt!1565730 () Unit!71203)

(assert (=> b!4352423 (= e!2708500 lt!1565730)))

(declare-fun lt!1565732 () Unit!71203)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!341 (List!49013 K!10253) Unit!71203)

(assert (=> b!4352423 (= lt!1565732 (lemmaContainsKeyImpliesGetValueByKeyDefined!341 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918))))

(assert (=> b!4352423 (isDefined!7738 (getValueByKey!429 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918))))

(declare-fun lt!1565729 () Unit!71203)

(assert (=> b!4352423 (= lt!1565729 lt!1565732)))

(declare-fun lemmaInListThenGetKeysListContains!110 (List!49013 K!10253) Unit!71203)

(assert (=> b!4352423 (= lt!1565730 (lemmaInListThenGetKeysListContains!110 (toList!2932 (extractMap!533 (toList!2931 lm!1707))) key!3918))))

(assert (=> b!4352423 call!302488))

(assert (= (and d!1285857 c!739909) b!4352423))

(assert (= (and d!1285857 (not c!739909)) b!4352421))

(assert (= (and b!4352421 c!739907) b!4352425))

(assert (= (and b!4352421 (not c!739907)) b!4352418))

(assert (= (or b!4352423 b!4352421) bm!302483))

(assert (= (and bm!302483 c!739908) b!4352417))

(assert (= (and bm!302483 (not c!739908)) b!4352424))

(assert (= (and d!1285857 res!1788329) b!4352422))

(assert (= (and d!1285857 (not res!1788327)) b!4352419))

(assert (= (and b!4352419 res!1788328) b!4352420))

(assert (=> b!4352420 m!4963545))

(declare-fun m!4963665 () Bool)

(assert (=> b!4352420 m!4963665))

(assert (=> b!4352420 m!4963665))

(declare-fun m!4963667 () Bool)

(assert (=> b!4352420 m!4963667))

(declare-fun m!4963669 () Bool)

(assert (=> bm!302483 m!4963669))

(assert (=> b!4352422 m!4963545))

(assert (=> b!4352422 m!4963665))

(assert (=> b!4352422 m!4963665))

(assert (=> b!4352422 m!4963667))

(declare-fun m!4963671 () Bool)

(assert (=> b!4352423 m!4963671))

(declare-fun m!4963673 () Bool)

(assert (=> b!4352423 m!4963673))

(assert (=> b!4352423 m!4963673))

(declare-fun m!4963675 () Bool)

(assert (=> b!4352423 m!4963675))

(declare-fun m!4963677 () Bool)

(assert (=> b!4352423 m!4963677))

(declare-fun m!4963679 () Bool)

(assert (=> b!4352425 m!4963679))

(declare-fun m!4963681 () Bool)

(assert (=> b!4352425 m!4963681))

(assert (=> b!4352419 m!4963673))

(assert (=> b!4352419 m!4963673))

(assert (=> b!4352419 m!4963675))

(declare-fun m!4963683 () Bool)

(assert (=> b!4352417 m!4963683))

(assert (=> d!1285857 m!4963679))

(assert (=> b!4352424 m!4963545))

(assert (=> b!4352424 m!4963665))

(assert (=> b!4352315 d!1285857))

(declare-fun bs!629625 () Bool)

(declare-fun d!1285865 () Bool)

(assert (= bs!629625 (and d!1285865 start!420734)))

(declare-fun lambda!139673 () Int)

(assert (=> bs!629625 (= lambda!139673 lambda!139654)))

(declare-fun lt!1565750 () ListMap!2175)

(declare-fun invariantList!665 (List!49013) Bool)

(assert (=> d!1285865 (invariantList!665 (toList!2932 lt!1565750))))

(declare-fun e!2708506 () ListMap!2175)

(assert (=> d!1285865 (= lt!1565750 e!2708506)))

(declare-fun c!739912 () Bool)

(assert (=> d!1285865 (= c!739912 (is-Cons!48890 (toList!2931 lm!1707)))))

(assert (=> d!1285865 (forall!9090 (toList!2931 lm!1707) lambda!139673)))

(assert (=> d!1285865 (= (extractMap!533 (toList!2931 lm!1707)) lt!1565750)))

(declare-fun b!4352436 () Bool)

(declare-fun addToMapMapFromBucket!172 (List!49013 ListMap!2175) ListMap!2175)

(assert (=> b!4352436 (= e!2708506 (addToMapMapFromBucket!172 (_2!27428 (h!54429 (toList!2931 lm!1707))) (extractMap!533 (t!355934 (toList!2931 lm!1707)))))))

(declare-fun b!4352437 () Bool)

(assert (=> b!4352437 (= e!2708506 (ListMap!2176 Nil!48889))))

(assert (= (and d!1285865 c!739912) b!4352436))

(assert (= (and d!1285865 (not c!739912)) b!4352437))

(declare-fun m!4963697 () Bool)

(assert (=> d!1285865 m!4963697))

(declare-fun m!4963699 () Bool)

(assert (=> d!1285865 m!4963699))

(assert (=> b!4352436 m!4963513))

(assert (=> b!4352436 m!4963513))

(declare-fun m!4963701 () Bool)

(assert (=> b!4352436 m!4963701))

(assert (=> b!4352315 d!1285865))

(declare-fun d!1285869 () Bool)

(declare-fun get!15875 (Option!10442) List!49013)

(assert (=> d!1285869 (= (apply!11326 lm!1707 hash!377) (get!15875 (getValueByKey!428 (toList!2931 lm!1707) hash!377)))))

(declare-fun bs!629626 () Bool)

(assert (= bs!629626 d!1285869))

(declare-fun m!4963703 () Bool)

(assert (=> bs!629626 m!4963703))

(assert (=> bs!629626 m!4963703))

(declare-fun m!4963705 () Bool)

(assert (=> bs!629626 m!4963705))

(assert (=> b!4352311 d!1285869))

(declare-fun d!1285871 () Bool)

(assert (=> d!1285871 (dynLambda!20618 lambda!139654 lt!1565650)))

(declare-fun lt!1565753 () Unit!71203)

(declare-fun choose!26800 (List!49014 Int tuple2!48268) Unit!71203)

(assert (=> d!1285871 (= lt!1565753 (choose!26800 (toList!2931 lm!1707) lambda!139654 lt!1565650))))

(declare-fun e!2708509 () Bool)

(assert (=> d!1285871 e!2708509))

(declare-fun res!1788338 () Bool)

(assert (=> d!1285871 (=> (not res!1788338) (not e!2708509))))

(assert (=> d!1285871 (= res!1788338 (forall!9090 (toList!2931 lm!1707) lambda!139654))))

(assert (=> d!1285871 (= (forallContained!1736 (toList!2931 lm!1707) lambda!139654 lt!1565650) lt!1565753)))

(declare-fun b!4352440 () Bool)

(assert (=> b!4352440 (= e!2708509 (contains!11068 (toList!2931 lm!1707) lt!1565650))))

(assert (= (and d!1285871 res!1788338) b!4352440))

(declare-fun b_lambda!130717 () Bool)

(assert (=> (not b_lambda!130717) (not d!1285871)))

(declare-fun m!4963707 () Bool)

(assert (=> d!1285871 m!4963707))

(declare-fun m!4963709 () Bool)

(assert (=> d!1285871 m!4963709))

(assert (=> d!1285871 m!4963529))

(assert (=> b!4352440 m!4963485))

(assert (=> b!4352311 d!1285871))

(declare-fun b!4352449 () Bool)

(declare-fun e!2708514 () List!49013)

(assert (=> b!4352449 (= e!2708514 (t!355933 lt!1565642))))

(declare-fun b!4352452 () Bool)

(declare-fun e!2708515 () List!49013)

(assert (=> b!4352452 (= e!2708515 Nil!48889)))

(declare-fun b!4352450 () Bool)

(assert (=> b!4352450 (= e!2708514 e!2708515)))

(declare-fun c!739918 () Bool)

(assert (=> b!4352450 (= c!739918 (is-Cons!48889 lt!1565642))))

(declare-fun d!1285873 () Bool)

(declare-fun lt!1565756 () List!49013)

(assert (=> d!1285873 (not (containsKey!653 lt!1565756 key!3918))))

(assert (=> d!1285873 (= lt!1565756 e!2708514)))

(declare-fun c!739917 () Bool)

(assert (=> d!1285873 (= c!739917 (and (is-Cons!48889 lt!1565642) (= (_1!27427 (h!54428 lt!1565642)) key!3918)))))

(assert (=> d!1285873 (noDuplicateKeys!474 lt!1565642)))

(assert (=> d!1285873 (= (removePairForKey!444 lt!1565642 key!3918) lt!1565756)))

(declare-fun b!4352451 () Bool)

(assert (=> b!4352451 (= e!2708515 (Cons!48889 (h!54428 lt!1565642) (removePairForKey!444 (t!355933 lt!1565642) key!3918)))))

(assert (= (and d!1285873 c!739917) b!4352449))

(assert (= (and d!1285873 (not c!739917)) b!4352450))

(assert (= (and b!4352450 c!739918) b!4352451))

(assert (= (and b!4352450 (not c!739918)) b!4352452))

(declare-fun m!4963711 () Bool)

(assert (=> d!1285873 m!4963711))

(declare-fun m!4963713 () Bool)

(assert (=> d!1285873 m!4963713))

(declare-fun m!4963715 () Bool)

(assert (=> b!4352451 m!4963715))

(assert (=> b!4352311 d!1285873))

(declare-fun d!1285875 () Bool)

(assert (=> d!1285875 (contains!11068 (toList!2931 lm!1707) (tuple2!48269 hash!377 lt!1565642))))

(declare-fun lt!1565761 () Unit!71203)

(declare-fun choose!26801 (List!49014 (_ BitVec 64) List!49013) Unit!71203)

(assert (=> d!1285875 (= lt!1565761 (choose!26801 (toList!2931 lm!1707) hash!377 lt!1565642))))

(declare-fun e!2708520 () Bool)

(assert (=> d!1285875 e!2708520))

(declare-fun res!1788343 () Bool)

(assert (=> d!1285875 (=> (not res!1788343) (not e!2708520))))

(assert (=> d!1285875 (= res!1788343 (isStrictlySorted!91 (toList!2931 lm!1707)))))

(assert (=> d!1285875 (= (lemmaGetValueByKeyImpliesContainsTuple!321 (toList!2931 lm!1707) hash!377 lt!1565642) lt!1565761)))

(declare-fun b!4352458 () Bool)

(assert (=> b!4352458 (= e!2708520 (= (getValueByKey!428 (toList!2931 lm!1707) hash!377) (Some!10441 lt!1565642)))))

(assert (= (and d!1285875 res!1788343) b!4352458))

(declare-fun m!4963717 () Bool)

(assert (=> d!1285875 m!4963717))

(declare-fun m!4963719 () Bool)

(assert (=> d!1285875 m!4963719))

(assert (=> d!1285875 m!4963651))

(assert (=> b!4352458 m!4963703))

(assert (=> b!4352311 d!1285875))

(declare-fun d!1285877 () Bool)

(declare-fun lt!1565765 () Bool)

(declare-fun content!7691 (List!49014) (Set tuple2!48268))

(assert (=> d!1285877 (= lt!1565765 (set.member lt!1565650 (content!7691 (toList!2931 lm!1707))))))

(declare-fun e!2708527 () Bool)

(assert (=> d!1285877 (= lt!1565765 e!2708527)))

(declare-fun res!1788350 () Bool)

(assert (=> d!1285877 (=> (not res!1788350) (not e!2708527))))

(assert (=> d!1285877 (= res!1788350 (is-Cons!48890 (toList!2931 lm!1707)))))

(assert (=> d!1285877 (= (contains!11068 (toList!2931 lm!1707) lt!1565650) lt!1565765)))

(declare-fun b!4352464 () Bool)

(declare-fun e!2708526 () Bool)

(assert (=> b!4352464 (= e!2708527 e!2708526)))

(declare-fun res!1788349 () Bool)

(assert (=> b!4352464 (=> res!1788349 e!2708526)))

(assert (=> b!4352464 (= res!1788349 (= (h!54429 (toList!2931 lm!1707)) lt!1565650))))

(declare-fun b!4352465 () Bool)

(assert (=> b!4352465 (= e!2708526 (contains!11068 (t!355934 (toList!2931 lm!1707)) lt!1565650))))

(assert (= (and d!1285877 res!1788350) b!4352464))

(assert (= (and b!4352464 (not res!1788349)) b!4352465))

(declare-fun m!4963729 () Bool)

(assert (=> d!1285877 m!4963729))

(declare-fun m!4963731 () Bool)

(assert (=> d!1285877 m!4963731))

(declare-fun m!4963733 () Bool)

(assert (=> b!4352465 m!4963733))

(assert (=> b!4352311 d!1285877))

(declare-fun d!1285881 () Bool)

(declare-fun e!2708537 () Bool)

(assert (=> d!1285881 e!2708537))

(declare-fun res!1788357 () Bool)

(assert (=> d!1285881 (=> res!1788357 e!2708537)))

(declare-fun lt!1565774 () Bool)

(assert (=> d!1285881 (= res!1788357 (not lt!1565774))))

(declare-fun lt!1565777 () Bool)

(assert (=> d!1285881 (= lt!1565774 lt!1565777)))

(declare-fun lt!1565775 () Unit!71203)

(declare-fun e!2708536 () Unit!71203)

(assert (=> d!1285881 (= lt!1565775 e!2708536)))

(declare-fun c!739921 () Bool)

(assert (=> d!1285881 (= c!739921 lt!1565777)))

(declare-fun containsKey!656 (List!49014 (_ BitVec 64)) Bool)

(assert (=> d!1285881 (= lt!1565777 (containsKey!656 (toList!2931 lm!1707) hash!377))))

(assert (=> d!1285881 (= (contains!11069 lm!1707 hash!377) lt!1565774)))

(declare-fun b!4352476 () Bool)

(declare-fun lt!1565776 () Unit!71203)

(assert (=> b!4352476 (= e!2708536 lt!1565776)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!342 (List!49014 (_ BitVec 64)) Unit!71203)

(assert (=> b!4352476 (= lt!1565776 (lemmaContainsKeyImpliesGetValueByKeyDefined!342 (toList!2931 lm!1707) hash!377))))

(declare-fun isDefined!7739 (Option!10442) Bool)

(assert (=> b!4352476 (isDefined!7739 (getValueByKey!428 (toList!2931 lm!1707) hash!377))))

(declare-fun b!4352477 () Bool)

(declare-fun Unit!71209 () Unit!71203)

(assert (=> b!4352477 (= e!2708536 Unit!71209)))

(declare-fun b!4352478 () Bool)

(assert (=> b!4352478 (= e!2708537 (isDefined!7739 (getValueByKey!428 (toList!2931 lm!1707) hash!377)))))

(assert (= (and d!1285881 c!739921) b!4352476))

(assert (= (and d!1285881 (not c!739921)) b!4352477))

(assert (= (and d!1285881 (not res!1788357)) b!4352478))

(declare-fun m!4963739 () Bool)

(assert (=> d!1285881 m!4963739))

(declare-fun m!4963741 () Bool)

(assert (=> b!4352476 m!4963741))

(assert (=> b!4352476 m!4963703))

(assert (=> b!4352476 m!4963703))

(declare-fun m!4963743 () Bool)

(assert (=> b!4352476 m!4963743))

(assert (=> b!4352478 m!4963703))

(assert (=> b!4352478 m!4963703))

(assert (=> b!4352478 m!4963743))

(assert (=> b!4352313 d!1285881))

(declare-fun d!1285885 () Bool)

(declare-fun hash!1504 (Hashable!4866 K!10253) (_ BitVec 64))

(assert (=> d!1285885 (= (hash!1499 hashF!1247 key!3918) (hash!1504 hashF!1247 key!3918))))

(declare-fun bs!629628 () Bool)

(assert (= bs!629628 d!1285885))

(declare-fun m!4963745 () Bool)

(assert (=> bs!629628 m!4963745))

(assert (=> b!4352312 d!1285885))

(declare-fun b!4352479 () Bool)

(declare-fun e!2708541 () List!49017)

(assert (=> b!4352479 (= e!2708541 (getKeysList!113 (toList!2932 lt!1565646)))))

(declare-fun b!4352480 () Bool)

(declare-fun e!2708538 () Unit!71203)

(declare-fun Unit!71210 () Unit!71203)

(assert (=> b!4352480 (= e!2708538 Unit!71210)))

(declare-fun b!4352481 () Bool)

(declare-fun e!2708539 () Bool)

(declare-fun e!2708540 () Bool)

(assert (=> b!4352481 (= e!2708539 e!2708540)))

(declare-fun res!1788359 () Bool)

(assert (=> b!4352481 (=> (not res!1788359) (not e!2708540))))

(assert (=> b!4352481 (= res!1788359 (isDefined!7738 (getValueByKey!429 (toList!2932 lt!1565646) key!3918)))))

(declare-fun b!4352482 () Bool)

(assert (=> b!4352482 (= e!2708540 (contains!11073 (keys!16501 lt!1565646) key!3918))))

(declare-fun b!4352483 () Bool)

(declare-fun e!2708543 () Unit!71203)

(assert (=> b!4352483 (= e!2708543 e!2708538)))

(declare-fun c!739922 () Bool)

(declare-fun call!302489 () Bool)

(assert (=> b!4352483 (= c!739922 call!302489)))

(declare-fun b!4352484 () Bool)

(declare-fun e!2708542 () Bool)

(assert (=> b!4352484 (= e!2708542 (not (contains!11073 (keys!16501 lt!1565646) key!3918)))))

(declare-fun b!4352486 () Bool)

(assert (=> b!4352486 (= e!2708541 (keys!16501 lt!1565646))))

(declare-fun b!4352487 () Bool)

(assert (=> b!4352487 false))

(declare-fun lt!1565784 () Unit!71203)

(declare-fun lt!1565781 () Unit!71203)

(assert (=> b!4352487 (= lt!1565784 lt!1565781)))

(assert (=> b!4352487 (containsKey!655 (toList!2932 lt!1565646) key!3918)))

(assert (=> b!4352487 (= lt!1565781 (lemmaInGetKeysListThenContainsKey!111 (toList!2932 lt!1565646) key!3918))))

(declare-fun Unit!71211 () Unit!71203)

(assert (=> b!4352487 (= e!2708538 Unit!71211)))

(declare-fun bm!302484 () Bool)

(assert (=> bm!302484 (= call!302489 (contains!11073 e!2708541 key!3918))))

(declare-fun c!739923 () Bool)

(declare-fun c!739924 () Bool)

(assert (=> bm!302484 (= c!739923 c!739924)))

(declare-fun d!1285887 () Bool)

(assert (=> d!1285887 e!2708539))

(declare-fun res!1788358 () Bool)

(assert (=> d!1285887 (=> res!1788358 e!2708539)))

(assert (=> d!1285887 (= res!1788358 e!2708542)))

(declare-fun res!1788360 () Bool)

(assert (=> d!1285887 (=> (not res!1788360) (not e!2708542))))

(declare-fun lt!1565783 () Bool)

(assert (=> d!1285887 (= res!1788360 (not lt!1565783))))

(declare-fun lt!1565778 () Bool)

(assert (=> d!1285887 (= lt!1565783 lt!1565778)))

(declare-fun lt!1565785 () Unit!71203)

(assert (=> d!1285887 (= lt!1565785 e!2708543)))

(assert (=> d!1285887 (= c!739924 lt!1565778)))

(assert (=> d!1285887 (= lt!1565778 (containsKey!655 (toList!2932 lt!1565646) key!3918))))

(assert (=> d!1285887 (= (contains!11067 lt!1565646 key!3918) lt!1565783)))

(declare-fun b!4352485 () Bool)

(declare-fun lt!1565780 () Unit!71203)

(assert (=> b!4352485 (= e!2708543 lt!1565780)))

(declare-fun lt!1565782 () Unit!71203)

(assert (=> b!4352485 (= lt!1565782 (lemmaContainsKeyImpliesGetValueByKeyDefined!341 (toList!2932 lt!1565646) key!3918))))

(assert (=> b!4352485 (isDefined!7738 (getValueByKey!429 (toList!2932 lt!1565646) key!3918))))

(declare-fun lt!1565779 () Unit!71203)

(assert (=> b!4352485 (= lt!1565779 lt!1565782)))

(assert (=> b!4352485 (= lt!1565780 (lemmaInListThenGetKeysListContains!110 (toList!2932 lt!1565646) key!3918))))

(assert (=> b!4352485 call!302489))

(assert (= (and d!1285887 c!739924) b!4352485))

(assert (= (and d!1285887 (not c!739924)) b!4352483))

(assert (= (and b!4352483 c!739922) b!4352487))

(assert (= (and b!4352483 (not c!739922)) b!4352480))

(assert (= (or b!4352485 b!4352483) bm!302484))

(assert (= (and bm!302484 c!739923) b!4352479))

(assert (= (and bm!302484 (not c!739923)) b!4352486))

(assert (= (and d!1285887 res!1788360) b!4352484))

(assert (= (and d!1285887 (not res!1788358)) b!4352481))

(assert (= (and b!4352481 res!1788359) b!4352482))

(declare-fun m!4963749 () Bool)

(assert (=> b!4352482 m!4963749))

(assert (=> b!4352482 m!4963749))

(declare-fun m!4963751 () Bool)

(assert (=> b!4352482 m!4963751))

(declare-fun m!4963753 () Bool)

(assert (=> bm!302484 m!4963753))

(assert (=> b!4352484 m!4963749))

(assert (=> b!4352484 m!4963749))

(assert (=> b!4352484 m!4963751))

(declare-fun m!4963755 () Bool)

(assert (=> b!4352485 m!4963755))

(declare-fun m!4963757 () Bool)

(assert (=> b!4352485 m!4963757))

(assert (=> b!4352485 m!4963757))

(declare-fun m!4963759 () Bool)

(assert (=> b!4352485 m!4963759))

(declare-fun m!4963761 () Bool)

(assert (=> b!4352485 m!4963761))

(declare-fun m!4963763 () Bool)

(assert (=> b!4352487 m!4963763))

(declare-fun m!4963765 () Bool)

(assert (=> b!4352487 m!4963765))

(assert (=> b!4352481 m!4963757))

(assert (=> b!4352481 m!4963757))

(assert (=> b!4352481 m!4963759))

(declare-fun m!4963767 () Bool)

(assert (=> b!4352479 m!4963767))

(assert (=> d!1285887 m!4963763))

(assert (=> b!4352486 m!4963749))

(assert (=> b!4352309 d!1285887))

(declare-fun d!1285891 () Bool)

(declare-fun res!1788363 () Bool)

(declare-fun e!2708546 () Bool)

(assert (=> d!1285891 (=> res!1788363 e!2708546)))

(assert (=> d!1285891 (= res!1788363 (and (is-Cons!48889 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707))))) (= (_1!27427 (h!54428 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707)))))) key!3918)))))

(assert (=> d!1285891 (= (containsKey!653 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707)))) key!3918) e!2708546)))

(declare-fun b!4352490 () Bool)

(declare-fun e!2708547 () Bool)

(assert (=> b!4352490 (= e!2708546 e!2708547)))

(declare-fun res!1788364 () Bool)

(assert (=> b!4352490 (=> (not res!1788364) (not e!2708547))))

(assert (=> b!4352490 (= res!1788364 (is-Cons!48889 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707))))))))

(declare-fun b!4352491 () Bool)

(assert (=> b!4352491 (= e!2708547 (containsKey!653 (t!355933 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707))))) key!3918))))

(assert (= (and d!1285891 (not res!1788363)) b!4352490))

(assert (= (and b!4352490 res!1788364) b!4352491))

(declare-fun m!4963769 () Bool)

(assert (=> b!4352491 m!4963769))

(assert (=> b!4352309 d!1285891))

(declare-fun bs!629629 () Bool)

(declare-fun d!1285893 () Bool)

(assert (= bs!629629 (and d!1285893 start!420734)))

(declare-fun lambda!139674 () Int)

(assert (=> bs!629629 (= lambda!139674 lambda!139654)))

(declare-fun bs!629630 () Bool)

(assert (= bs!629630 (and d!1285893 d!1285865)))

(assert (=> bs!629630 (= lambda!139674 lambda!139673)))

(declare-fun lt!1565786 () ListMap!2175)

(assert (=> d!1285893 (invariantList!665 (toList!2932 lt!1565786))))

(declare-fun e!2708548 () ListMap!2175)

(assert (=> d!1285893 (= lt!1565786 e!2708548)))

(declare-fun c!739925 () Bool)

(assert (=> d!1285893 (= c!739925 (is-Cons!48890 (toList!2931 (+!605 lt!1565645 lt!1565654))))))

(assert (=> d!1285893 (forall!9090 (toList!2931 (+!605 lt!1565645 lt!1565654)) lambda!139674)))

(assert (=> d!1285893 (= (extractMap!533 (toList!2931 (+!605 lt!1565645 lt!1565654))) lt!1565786)))

(declare-fun b!4352492 () Bool)

(assert (=> b!4352492 (= e!2708548 (addToMapMapFromBucket!172 (_2!27428 (h!54429 (toList!2931 (+!605 lt!1565645 lt!1565654)))) (extractMap!533 (t!355934 (toList!2931 (+!605 lt!1565645 lt!1565654))))))))

(declare-fun b!4352493 () Bool)

(assert (=> b!4352493 (= e!2708548 (ListMap!2176 Nil!48889))))

(assert (= (and d!1285893 c!739925) b!4352492))

(assert (= (and d!1285893 (not c!739925)) b!4352493))

(declare-fun m!4963771 () Bool)

(assert (=> d!1285893 m!4963771))

(declare-fun m!4963773 () Bool)

(assert (=> d!1285893 m!4963773))

(declare-fun m!4963775 () Bool)

(assert (=> b!4352492 m!4963775))

(assert (=> b!4352492 m!4963775))

(declare-fun m!4963777 () Bool)

(assert (=> b!4352492 m!4963777))

(assert (=> b!4352309 d!1285893))

(declare-fun bs!629631 () Bool)

(declare-fun d!1285895 () Bool)

(assert (= bs!629631 (and d!1285895 start!420734)))

(declare-fun lambda!139675 () Int)

(assert (=> bs!629631 (= lambda!139675 lambda!139654)))

(declare-fun bs!629632 () Bool)

(assert (= bs!629632 (and d!1285895 d!1285865)))

(assert (=> bs!629632 (= lambda!139675 lambda!139673)))

(declare-fun bs!629633 () Bool)

(assert (= bs!629633 (and d!1285895 d!1285893)))

(assert (=> bs!629633 (= lambda!139675 lambda!139674)))

(declare-fun lt!1565787 () ListMap!2175)

(assert (=> d!1285895 (invariantList!665 (toList!2932 lt!1565787))))

(declare-fun e!2708549 () ListMap!2175)

(assert (=> d!1285895 (= lt!1565787 e!2708549)))

(declare-fun c!739926 () Bool)

(assert (=> d!1285895 (= c!739926 (is-Cons!48890 (toList!2931 lt!1565645)))))

(assert (=> d!1285895 (forall!9090 (toList!2931 lt!1565645) lambda!139675)))

(assert (=> d!1285895 (= (extractMap!533 (toList!2931 lt!1565645)) lt!1565787)))

(declare-fun b!4352494 () Bool)

(assert (=> b!4352494 (= e!2708549 (addToMapMapFromBucket!172 (_2!27428 (h!54429 (toList!2931 lt!1565645))) (extractMap!533 (t!355934 (toList!2931 lt!1565645)))))))

(declare-fun b!4352495 () Bool)

(assert (=> b!4352495 (= e!2708549 (ListMap!2176 Nil!48889))))

(assert (= (and d!1285895 c!739926) b!4352494))

(assert (= (and d!1285895 (not c!739926)) b!4352495))

(declare-fun m!4963779 () Bool)

(assert (=> d!1285895 m!4963779))

(declare-fun m!4963781 () Bool)

(assert (=> d!1285895 m!4963781))

(declare-fun m!4963783 () Bool)

(assert (=> b!4352494 m!4963783))

(assert (=> b!4352494 m!4963783))

(declare-fun m!4963785 () Bool)

(assert (=> b!4352494 m!4963785))

(assert (=> b!4352309 d!1285895))

(declare-fun b!4352496 () Bool)

(declare-fun e!2708553 () List!49017)

(assert (=> b!4352496 (= e!2708553 (getKeysList!113 (toList!2932 lt!1565643)))))

(declare-fun b!4352497 () Bool)

(declare-fun e!2708550 () Unit!71203)

(declare-fun Unit!71212 () Unit!71203)

(assert (=> b!4352497 (= e!2708550 Unit!71212)))

(declare-fun b!4352498 () Bool)

(declare-fun e!2708551 () Bool)

(declare-fun e!2708552 () Bool)

(assert (=> b!4352498 (= e!2708551 e!2708552)))

(declare-fun res!1788366 () Bool)

(assert (=> b!4352498 (=> (not res!1788366) (not e!2708552))))

(assert (=> b!4352498 (= res!1788366 (isDefined!7738 (getValueByKey!429 (toList!2932 lt!1565643) key!3918)))))

(declare-fun b!4352499 () Bool)

(assert (=> b!4352499 (= e!2708552 (contains!11073 (keys!16501 lt!1565643) key!3918))))

(declare-fun b!4352500 () Bool)

(declare-fun e!2708555 () Unit!71203)

(assert (=> b!4352500 (= e!2708555 e!2708550)))

(declare-fun c!739927 () Bool)

(declare-fun call!302490 () Bool)

(assert (=> b!4352500 (= c!739927 call!302490)))

(declare-fun b!4352501 () Bool)

(declare-fun e!2708554 () Bool)

(assert (=> b!4352501 (= e!2708554 (not (contains!11073 (keys!16501 lt!1565643) key!3918)))))

(declare-fun b!4352503 () Bool)

(assert (=> b!4352503 (= e!2708553 (keys!16501 lt!1565643))))

(declare-fun b!4352504 () Bool)

(assert (=> b!4352504 false))

(declare-fun lt!1565794 () Unit!71203)

(declare-fun lt!1565791 () Unit!71203)

(assert (=> b!4352504 (= lt!1565794 lt!1565791)))

(assert (=> b!4352504 (containsKey!655 (toList!2932 lt!1565643) key!3918)))

(assert (=> b!4352504 (= lt!1565791 (lemmaInGetKeysListThenContainsKey!111 (toList!2932 lt!1565643) key!3918))))

(declare-fun Unit!71213 () Unit!71203)

(assert (=> b!4352504 (= e!2708550 Unit!71213)))

(declare-fun bm!302485 () Bool)

(assert (=> bm!302485 (= call!302490 (contains!11073 e!2708553 key!3918))))

(declare-fun c!739928 () Bool)

(declare-fun c!739929 () Bool)

(assert (=> bm!302485 (= c!739928 c!739929)))

(declare-fun d!1285897 () Bool)

(assert (=> d!1285897 e!2708551))

(declare-fun res!1788365 () Bool)

(assert (=> d!1285897 (=> res!1788365 e!2708551)))

(assert (=> d!1285897 (= res!1788365 e!2708554)))

(declare-fun res!1788367 () Bool)

(assert (=> d!1285897 (=> (not res!1788367) (not e!2708554))))

(declare-fun lt!1565793 () Bool)

(assert (=> d!1285897 (= res!1788367 (not lt!1565793))))

(declare-fun lt!1565788 () Bool)

(assert (=> d!1285897 (= lt!1565793 lt!1565788)))

(declare-fun lt!1565795 () Unit!71203)

(assert (=> d!1285897 (= lt!1565795 e!2708555)))

(assert (=> d!1285897 (= c!739929 lt!1565788)))

(assert (=> d!1285897 (= lt!1565788 (containsKey!655 (toList!2932 lt!1565643) key!3918))))

(assert (=> d!1285897 (= (contains!11067 lt!1565643 key!3918) lt!1565793)))

(declare-fun b!4352502 () Bool)

(declare-fun lt!1565790 () Unit!71203)

(assert (=> b!4352502 (= e!2708555 lt!1565790)))

(declare-fun lt!1565792 () Unit!71203)

(assert (=> b!4352502 (= lt!1565792 (lemmaContainsKeyImpliesGetValueByKeyDefined!341 (toList!2932 lt!1565643) key!3918))))

(assert (=> b!4352502 (isDefined!7738 (getValueByKey!429 (toList!2932 lt!1565643) key!3918))))

(declare-fun lt!1565789 () Unit!71203)

(assert (=> b!4352502 (= lt!1565789 lt!1565792)))

(assert (=> b!4352502 (= lt!1565790 (lemmaInListThenGetKeysListContains!110 (toList!2932 lt!1565643) key!3918))))

(assert (=> b!4352502 call!302490))

(assert (= (and d!1285897 c!739929) b!4352502))

(assert (= (and d!1285897 (not c!739929)) b!4352500))

(assert (= (and b!4352500 c!739927) b!4352504))

(assert (= (and b!4352500 (not c!739927)) b!4352497))

(assert (= (or b!4352502 b!4352500) bm!302485))

(assert (= (and bm!302485 c!739928) b!4352496))

(assert (= (and bm!302485 (not c!739928)) b!4352503))

(assert (= (and d!1285897 res!1788367) b!4352501))

(assert (= (and d!1285897 (not res!1788365)) b!4352498))

(assert (= (and b!4352498 res!1788366) b!4352499))

(declare-fun m!4963787 () Bool)

(assert (=> b!4352499 m!4963787))

(assert (=> b!4352499 m!4963787))

(declare-fun m!4963789 () Bool)

(assert (=> b!4352499 m!4963789))

(declare-fun m!4963791 () Bool)

(assert (=> bm!302485 m!4963791))

(assert (=> b!4352501 m!4963787))

(assert (=> b!4352501 m!4963787))

(assert (=> b!4352501 m!4963789))

(declare-fun m!4963793 () Bool)

(assert (=> b!4352502 m!4963793))

(declare-fun m!4963795 () Bool)

(assert (=> b!4352502 m!4963795))

(assert (=> b!4352502 m!4963795))

(declare-fun m!4963797 () Bool)

(assert (=> b!4352502 m!4963797))

(declare-fun m!4963799 () Bool)

(assert (=> b!4352502 m!4963799))

(declare-fun m!4963801 () Bool)

(assert (=> b!4352504 m!4963801))

(declare-fun m!4963803 () Bool)

(assert (=> b!4352504 m!4963803))

(assert (=> b!4352498 m!4963795))

(assert (=> b!4352498 m!4963795))

(assert (=> b!4352498 m!4963797))

(declare-fun m!4963805 () Bool)

(assert (=> b!4352496 m!4963805))

(assert (=> d!1285897 m!4963801))

(assert (=> b!4352503 m!4963787))

(assert (=> b!4352309 d!1285897))

(declare-fun d!1285899 () Bool)

(assert (=> d!1285899 (contains!11067 lt!1565643 key!3918)))

(declare-fun lt!1565798 () Unit!71203)

(declare-fun choose!26802 (List!49013 K!10253 V!10499 ListMap!2175) Unit!71203)

(assert (=> d!1285899 (= lt!1565798 (choose!26802 (_2!27428 (h!54429 (toList!2931 lm!1707))) key!3918 newValue!99 lt!1565643))))

(assert (=> d!1285899 (noDuplicateKeys!474 (_2!27428 (h!54429 (toList!2931 lm!1707))))))

(assert (=> d!1285899 (= (lemmaAddToMapContainsAndNotInListThenInAcc!17 (_2!27428 (h!54429 (toList!2931 lm!1707))) key!3918 newValue!99 lt!1565643) lt!1565798)))

(declare-fun bs!629634 () Bool)

(assert (= bs!629634 d!1285899))

(assert (=> bs!629634 m!4963499))

(declare-fun m!4963807 () Bool)

(assert (=> bs!629634 m!4963807))

(declare-fun m!4963809 () Bool)

(assert (=> bs!629634 m!4963809))

(assert (=> b!4352309 d!1285899))

(declare-fun d!1285901 () Bool)

(declare-fun tail!6972 (List!49014) List!49014)

(assert (=> d!1285901 (= (tail!6970 lm!1707) (ListLongMap!1582 (tail!6972 (toList!2931 lm!1707))))))

(declare-fun bs!629635 () Bool)

(assert (= bs!629635 d!1285901))

(declare-fun m!4963811 () Bool)

(assert (=> bs!629635 m!4963811))

(assert (=> b!4352309 d!1285901))

(declare-fun d!1285903 () Bool)

(declare-fun res!1788368 () Bool)

(declare-fun e!2708556 () Bool)

(assert (=> d!1285903 (=> res!1788368 e!2708556)))

(assert (=> d!1285903 (= res!1788368 (is-Nil!48890 (toList!2931 lt!1565645)))))

(assert (=> d!1285903 (= (forall!9090 (toList!2931 lt!1565645) lambda!139654) e!2708556)))

(declare-fun b!4352505 () Bool)

(declare-fun e!2708557 () Bool)

(assert (=> b!4352505 (= e!2708556 e!2708557)))

(declare-fun res!1788369 () Bool)

(assert (=> b!4352505 (=> (not res!1788369) (not e!2708557))))

(assert (=> b!4352505 (= res!1788369 (dynLambda!20618 lambda!139654 (h!54429 (toList!2931 lt!1565645))))))

(declare-fun b!4352506 () Bool)

(assert (=> b!4352506 (= e!2708557 (forall!9090 (t!355934 (toList!2931 lt!1565645)) lambda!139654))))

(assert (= (and d!1285903 (not res!1788368)) b!4352505))

(assert (= (and b!4352505 res!1788369) b!4352506))

(declare-fun b_lambda!130721 () Bool)

(assert (=> (not b_lambda!130721) (not b!4352505)))

(declare-fun m!4963813 () Bool)

(assert (=> b!4352505 m!4963813))

(declare-fun m!4963815 () Bool)

(assert (=> b!4352506 m!4963815))

(assert (=> b!4352309 d!1285903))

(declare-fun bs!629636 () Bool)

(declare-fun d!1285905 () Bool)

(assert (= bs!629636 (and d!1285905 start!420734)))

(declare-fun lambda!139676 () Int)

(assert (=> bs!629636 (= lambda!139676 lambda!139654)))

(declare-fun bs!629637 () Bool)

(assert (= bs!629637 (and d!1285905 d!1285865)))

(assert (=> bs!629637 (= lambda!139676 lambda!139673)))

(declare-fun bs!629638 () Bool)

(assert (= bs!629638 (and d!1285905 d!1285893)))

(assert (=> bs!629638 (= lambda!139676 lambda!139674)))

(declare-fun bs!629639 () Bool)

(assert (= bs!629639 (and d!1285905 d!1285895)))

(assert (=> bs!629639 (= lambda!139676 lambda!139675)))

(declare-fun lt!1565799 () ListMap!2175)

(assert (=> d!1285905 (invariantList!665 (toList!2932 lt!1565799))))

(declare-fun e!2708558 () ListMap!2175)

(assert (=> d!1285905 (= lt!1565799 e!2708558)))

(declare-fun c!739930 () Bool)

(assert (=> d!1285905 (= c!739930 (is-Cons!48890 (t!355934 (toList!2931 lm!1707))))))

(assert (=> d!1285905 (forall!9090 (t!355934 (toList!2931 lm!1707)) lambda!139676)))

(assert (=> d!1285905 (= (extractMap!533 (t!355934 (toList!2931 lm!1707))) lt!1565799)))

(declare-fun b!4352507 () Bool)

(assert (=> b!4352507 (= e!2708558 (addToMapMapFromBucket!172 (_2!27428 (h!54429 (t!355934 (toList!2931 lm!1707)))) (extractMap!533 (t!355934 (t!355934 (toList!2931 lm!1707))))))))

(declare-fun b!4352508 () Bool)

(assert (=> b!4352508 (= e!2708558 (ListMap!2176 Nil!48889))))

(assert (= (and d!1285905 c!739930) b!4352507))

(assert (= (and d!1285905 (not c!739930)) b!4352508))

(declare-fun m!4963817 () Bool)

(assert (=> d!1285905 m!4963817))

(declare-fun m!4963819 () Bool)

(assert (=> d!1285905 m!4963819))

(declare-fun m!4963821 () Bool)

(assert (=> b!4352507 m!4963821))

(assert (=> b!4352507 m!4963821))

(declare-fun m!4963823 () Bool)

(assert (=> b!4352507 m!4963823))

(assert (=> b!4352309 d!1285905))

(declare-fun bs!629641 () Bool)

(declare-fun d!1285907 () Bool)

(assert (= bs!629641 (and d!1285907 d!1285893)))

(declare-fun lambda!139679 () Int)

(assert (=> bs!629641 (= lambda!139679 lambda!139674)))

(declare-fun bs!629642 () Bool)

(assert (= bs!629642 (and d!1285907 d!1285895)))

(assert (=> bs!629642 (= lambda!139679 lambda!139675)))

(declare-fun bs!629643 () Bool)

(assert (= bs!629643 (and d!1285907 start!420734)))

(assert (=> bs!629643 (= lambda!139679 lambda!139654)))

(declare-fun bs!629644 () Bool)

(assert (= bs!629644 (and d!1285907 d!1285865)))

(assert (=> bs!629644 (= lambda!139679 lambda!139673)))

(declare-fun bs!629645 () Bool)

(assert (= bs!629645 (and d!1285907 d!1285905)))

(assert (=> bs!629645 (= lambda!139679 lambda!139676)))

(assert (=> d!1285907 (not (containsKey!653 (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707)))) key!3918))))

(declare-fun lt!1565809 () Unit!71203)

(declare-fun choose!26803 (ListLongMap!1581 K!10253 (_ BitVec 64) Hashable!4866) Unit!71203)

(assert (=> d!1285907 (= lt!1565809 (choose!26803 lm!1707 key!3918 (_1!27428 (h!54429 (toList!2931 lm!1707))) hashF!1247))))

(assert (=> d!1285907 (forall!9090 (toList!2931 lm!1707) lambda!139679)))

(assert (=> d!1285907 (= (lemmaNotSameHashThenCannotContainKey!21 lm!1707 key!3918 (_1!27428 (h!54429 (toList!2931 lm!1707))) hashF!1247) lt!1565809)))

(declare-fun bs!629646 () Bool)

(assert (= bs!629646 d!1285907))

(assert (=> bs!629646 m!4963521))

(assert (=> bs!629646 m!4963521))

(assert (=> bs!629646 m!4963523))

(declare-fun m!4963841 () Bool)

(assert (=> bs!629646 m!4963841))

(declare-fun m!4963843 () Bool)

(assert (=> bs!629646 m!4963843))

(assert (=> b!4352309 d!1285907))

(declare-fun bs!629648 () Bool)

(declare-fun d!1285913 () Bool)

(assert (= bs!629648 (and d!1285913 d!1285893)))

(declare-fun lambda!139682 () Int)

(assert (=> bs!629648 (= lambda!139682 lambda!139674)))

(declare-fun bs!629649 () Bool)

(assert (= bs!629649 (and d!1285913 d!1285895)))

(assert (=> bs!629649 (= lambda!139682 lambda!139675)))

(declare-fun bs!629650 () Bool)

(assert (= bs!629650 (and d!1285913 d!1285907)))

(assert (=> bs!629650 (= lambda!139682 lambda!139679)))

(declare-fun bs!629651 () Bool)

(assert (= bs!629651 (and d!1285913 start!420734)))

(assert (=> bs!629651 (= lambda!139682 lambda!139654)))

(declare-fun bs!629652 () Bool)

(assert (= bs!629652 (and d!1285913 d!1285865)))

(assert (=> bs!629652 (= lambda!139682 lambda!139673)))

(declare-fun bs!629653 () Bool)

(assert (= bs!629653 (and d!1285913 d!1285905)))

(assert (=> bs!629653 (= lambda!139682 lambda!139676)))

(assert (=> d!1285913 (eq!244 (extractMap!533 (toList!2931 (+!605 lt!1565645 (tuple2!48269 hash!377 newBucket!200)))) (+!606 (extractMap!533 (toList!2931 lt!1565645)) (tuple2!48267 key!3918 newValue!99)))))

(declare-fun lt!1565812 () Unit!71203)

(declare-fun choose!26804 (ListLongMap!1581 (_ BitVec 64) List!49013 K!10253 V!10499 Hashable!4866) Unit!71203)

(assert (=> d!1285913 (= lt!1565812 (choose!26804 lt!1565645 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1285913 (forall!9090 (toList!2931 lt!1565645) lambda!139682)))

(assert (=> d!1285913 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!78 lt!1565645 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1565812)))

(declare-fun bs!629654 () Bool)

(assert (= bs!629654 d!1285913))

(declare-fun m!4963853 () Bool)

(assert (=> bs!629654 m!4963853))

(assert (=> bs!629654 m!4963501))

(declare-fun m!4963855 () Bool)

(assert (=> bs!629654 m!4963855))

(assert (=> bs!629654 m!4963853))

(declare-fun m!4963857 () Bool)

(assert (=> bs!629654 m!4963857))

(declare-fun m!4963859 () Bool)

(assert (=> bs!629654 m!4963859))

(declare-fun m!4963861 () Bool)

(assert (=> bs!629654 m!4963861))

(assert (=> bs!629654 m!4963501))

(assert (=> bs!629654 m!4963857))

(declare-fun m!4963863 () Bool)

(assert (=> bs!629654 m!4963863))

(assert (=> b!4352309 d!1285913))

(declare-fun d!1285919 () Bool)

(declare-fun e!2708562 () Bool)

(assert (=> d!1285919 e!2708562))

(declare-fun res!1788375 () Bool)

(assert (=> d!1285919 (=> (not res!1788375) (not e!2708562))))

(declare-fun lt!1565813 () ListLongMap!1581)

(assert (=> d!1285919 (= res!1788375 (contains!11069 lt!1565813 (_1!27428 lt!1565654)))))

(declare-fun lt!1565815 () List!49014)

(assert (=> d!1285919 (= lt!1565813 (ListLongMap!1582 lt!1565815))))

(declare-fun lt!1565814 () Unit!71203)

(declare-fun lt!1565816 () Unit!71203)

(assert (=> d!1285919 (= lt!1565814 lt!1565816)))

(assert (=> d!1285919 (= (getValueByKey!428 lt!1565815 (_1!27428 lt!1565654)) (Some!10441 (_2!27428 lt!1565654)))))

(assert (=> d!1285919 (= lt!1565816 (lemmaContainsTupThenGetReturnValue!203 lt!1565815 (_1!27428 lt!1565654) (_2!27428 lt!1565654)))))

(assert (=> d!1285919 (= lt!1565815 (insertStrictlySorted!122 (toList!2931 lt!1565645) (_1!27428 lt!1565654) (_2!27428 lt!1565654)))))

(assert (=> d!1285919 (= (+!605 lt!1565645 lt!1565654) lt!1565813)))

(declare-fun b!4352513 () Bool)

(declare-fun res!1788374 () Bool)

(assert (=> b!4352513 (=> (not res!1788374) (not e!2708562))))

(assert (=> b!4352513 (= res!1788374 (= (getValueByKey!428 (toList!2931 lt!1565813) (_1!27428 lt!1565654)) (Some!10441 (_2!27428 lt!1565654))))))

(declare-fun b!4352514 () Bool)

(assert (=> b!4352514 (= e!2708562 (contains!11068 (toList!2931 lt!1565813) lt!1565654))))

(assert (= (and d!1285919 res!1788375) b!4352513))

(assert (= (and b!4352513 res!1788374) b!4352514))

(declare-fun m!4963865 () Bool)

(assert (=> d!1285919 m!4963865))

(declare-fun m!4963867 () Bool)

(assert (=> d!1285919 m!4963867))

(declare-fun m!4963869 () Bool)

(assert (=> d!1285919 m!4963869))

(declare-fun m!4963871 () Bool)

(assert (=> d!1285919 m!4963871))

(declare-fun m!4963873 () Bool)

(assert (=> b!4352513 m!4963873))

(declare-fun m!4963875 () Bool)

(assert (=> b!4352514 m!4963875))

(assert (=> b!4352309 d!1285919))

(declare-fun d!1285921 () Bool)

(assert (=> d!1285921 (= (apply!11326 lm!1707 (_1!27428 (h!54429 (toList!2931 lm!1707)))) (get!15875 (getValueByKey!428 (toList!2931 lm!1707) (_1!27428 (h!54429 (toList!2931 lm!1707))))))))

(declare-fun bs!629655 () Bool)

(assert (= bs!629655 d!1285921))

(declare-fun m!4963877 () Bool)

(assert (=> bs!629655 m!4963877))

(assert (=> bs!629655 m!4963877))

(declare-fun m!4963879 () Bool)

(assert (=> bs!629655 m!4963879))

(assert (=> b!4352309 d!1285921))

(declare-fun d!1285923 () Bool)

(declare-fun e!2708565 () Bool)

(assert (=> d!1285923 e!2708565))

(declare-fun res!1788380 () Bool)

(assert (=> d!1285923 (=> (not res!1788380) (not e!2708565))))

(declare-fun lt!1565826 () ListMap!2175)

(assert (=> d!1285923 (= res!1788380 (contains!11067 lt!1565826 (_1!27427 lt!1565652)))))

(declare-fun lt!1565827 () List!49013)

(assert (=> d!1285923 (= lt!1565826 (ListMap!2176 lt!1565827))))

(declare-fun lt!1565828 () Unit!71203)

(declare-fun lt!1565825 () Unit!71203)

(assert (=> d!1285923 (= lt!1565828 lt!1565825)))

(assert (=> d!1285923 (= (getValueByKey!429 lt!1565827 (_1!27427 lt!1565652)) (Some!10442 (_2!27427 lt!1565652)))))

(declare-fun lemmaContainsTupThenGetReturnValue!204 (List!49013 K!10253 V!10499) Unit!71203)

(assert (=> d!1285923 (= lt!1565825 (lemmaContainsTupThenGetReturnValue!204 lt!1565827 (_1!27427 lt!1565652) (_2!27427 lt!1565652)))))

(declare-fun insertNoDuplicatedKeys!90 (List!49013 K!10253 V!10499) List!49013)

(assert (=> d!1285923 (= lt!1565827 (insertNoDuplicatedKeys!90 (toList!2932 lt!1565646) (_1!27427 lt!1565652) (_2!27427 lt!1565652)))))

(assert (=> d!1285923 (= (+!606 lt!1565646 lt!1565652) lt!1565826)))

(declare-fun b!4352519 () Bool)

(declare-fun res!1788381 () Bool)

(assert (=> b!4352519 (=> (not res!1788381) (not e!2708565))))

(assert (=> b!4352519 (= res!1788381 (= (getValueByKey!429 (toList!2932 lt!1565826) (_1!27427 lt!1565652)) (Some!10442 (_2!27427 lt!1565652))))))

(declare-fun b!4352520 () Bool)

(declare-fun contains!11074 (List!49013 tuple2!48266) Bool)

(assert (=> b!4352520 (= e!2708565 (contains!11074 (toList!2932 lt!1565826) lt!1565652))))

(assert (= (and d!1285923 res!1788380) b!4352519))

(assert (= (and b!4352519 res!1788381) b!4352520))

(declare-fun m!4963881 () Bool)

(assert (=> d!1285923 m!4963881))

(declare-fun m!4963883 () Bool)

(assert (=> d!1285923 m!4963883))

(declare-fun m!4963885 () Bool)

(assert (=> d!1285923 m!4963885))

(declare-fun m!4963887 () Bool)

(assert (=> d!1285923 m!4963887))

(declare-fun m!4963889 () Bool)

(assert (=> b!4352519 m!4963889))

(declare-fun m!4963891 () Bool)

(assert (=> b!4352520 m!4963891))

(assert (=> b!4352309 d!1285923))

(declare-fun d!1285925 () Bool)

(declare-fun content!7692 (List!49013) (Set tuple2!48266))

(assert (=> d!1285925 (= (eq!244 (extractMap!533 (toList!2931 (+!605 lt!1565645 lt!1565654))) (+!606 lt!1565646 lt!1565652)) (= (content!7692 (toList!2932 (extractMap!533 (toList!2931 (+!605 lt!1565645 lt!1565654))))) (content!7692 (toList!2932 (+!606 lt!1565646 lt!1565652)))))))

(declare-fun bs!629656 () Bool)

(assert (= bs!629656 d!1285925))

(declare-fun m!4963893 () Bool)

(assert (=> bs!629656 m!4963893))

(declare-fun m!4963895 () Bool)

(assert (=> bs!629656 m!4963895))

(assert (=> b!4352309 d!1285925))

(declare-fun bs!629657 () Bool)

(declare-fun d!1285927 () Bool)

(assert (= bs!629657 (and d!1285927 d!1285893)))

(declare-fun lambda!139685 () Int)

(assert (=> bs!629657 (not (= lambda!139685 lambda!139674))))

(declare-fun bs!629658 () Bool)

(assert (= bs!629658 (and d!1285927 d!1285895)))

(assert (=> bs!629658 (not (= lambda!139685 lambda!139675))))

(declare-fun bs!629659 () Bool)

(assert (= bs!629659 (and d!1285927 d!1285907)))

(assert (=> bs!629659 (not (= lambda!139685 lambda!139679))))

(declare-fun bs!629660 () Bool)

(assert (= bs!629660 (and d!1285927 start!420734)))

(assert (=> bs!629660 (not (= lambda!139685 lambda!139654))))

(declare-fun bs!629661 () Bool)

(assert (= bs!629661 (and d!1285927 d!1285913)))

(assert (=> bs!629661 (not (= lambda!139685 lambda!139682))))

(declare-fun bs!629662 () Bool)

(assert (= bs!629662 (and d!1285927 d!1285865)))

(assert (=> bs!629662 (not (= lambda!139685 lambda!139673))))

(declare-fun bs!629663 () Bool)

(assert (= bs!629663 (and d!1285927 d!1285905)))

(assert (=> bs!629663 (not (= lambda!139685 lambda!139676))))

(assert (=> d!1285927 true))

(assert (=> d!1285927 (= (allKeysSameHashInMap!578 lm!1707 hashF!1247) (forall!9090 (toList!2931 lm!1707) lambda!139685))))

(declare-fun bs!629664 () Bool)

(assert (= bs!629664 d!1285927))

(declare-fun m!4963897 () Bool)

(assert (=> bs!629664 m!4963897))

(assert (=> b!4352308 d!1285927))

(assert (=> b!4352310 d!1285839))

(declare-fun b!4352527 () Bool)

(declare-fun e!2708568 () Bool)

(declare-fun tp!1329929 () Bool)

(declare-fun tp!1329930 () Bool)

(assert (=> b!4352527 (= e!2708568 (and tp!1329929 tp!1329930))))

(assert (=> b!4352306 (= tp!1329917 e!2708568)))

(assert (= (and b!4352306 (is-Cons!48890 (toList!2931 lm!1707))) b!4352527))

(declare-fun b!4352532 () Bool)

(declare-fun e!2708571 () Bool)

(declare-fun tp!1329933 () Bool)

(assert (=> b!4352532 (= e!2708571 (and tp_is_empty!25133 tp_is_empty!25135 tp!1329933))))

(assert (=> b!4352314 (= tp!1329918 e!2708571)))

(assert (= (and b!4352314 (is-Cons!48889 (t!355933 newBucket!200))) b!4352532))

(declare-fun b_lambda!130725 () Bool)

(assert (= b_lambda!130709 (or start!420734 b_lambda!130725)))

(declare-fun bs!629665 () Bool)

(declare-fun d!1285929 () Bool)

(assert (= bs!629665 (and d!1285929 start!420734)))

(assert (=> bs!629665 (= (dynLambda!20618 lambda!139654 (tuple2!48269 hash!377 newBucket!200)) (noDuplicateKeys!474 (_2!27428 (tuple2!48269 hash!377 newBucket!200))))))

(declare-fun m!4963899 () Bool)

(assert (=> bs!629665 m!4963899))

(assert (=> b!4352372 d!1285929))

(declare-fun b_lambda!130727 () Bool)

(assert (= b_lambda!130707 (or start!420734 b_lambda!130727)))

(declare-fun bs!629666 () Bool)

(declare-fun d!1285931 () Bool)

(assert (= bs!629666 (and d!1285931 start!420734)))

(assert (=> bs!629666 (= (dynLambda!20618 lambda!139654 (h!54429 (toList!2931 lt!1565653))) (noDuplicateKeys!474 (_2!27428 (h!54429 (toList!2931 lt!1565653)))))))

(declare-fun m!4963901 () Bool)

(assert (=> bs!629666 m!4963901))

(assert (=> b!4352361 d!1285931))

(declare-fun b_lambda!130729 () Bool)

(assert (= b_lambda!130717 (or start!420734 b_lambda!130729)))

(declare-fun bs!629667 () Bool)

(declare-fun d!1285933 () Bool)

(assert (= bs!629667 (and d!1285933 start!420734)))

(assert (=> bs!629667 (= (dynLambda!20618 lambda!139654 lt!1565650) (noDuplicateKeys!474 (_2!27428 lt!1565650)))))

(declare-fun m!4963903 () Bool)

(assert (=> bs!629667 m!4963903))

(assert (=> d!1285871 d!1285933))

(declare-fun b_lambda!130731 () Bool)

(assert (= b_lambda!130721 (or start!420734 b_lambda!130731)))

(declare-fun bs!629668 () Bool)

(declare-fun d!1285935 () Bool)

(assert (= bs!629668 (and d!1285935 start!420734)))

(assert (=> bs!629668 (= (dynLambda!20618 lambda!139654 (h!54429 (toList!2931 lt!1565645))) (noDuplicateKeys!474 (_2!27428 (h!54429 (toList!2931 lt!1565645)))))))

(declare-fun m!4963905 () Bool)

(assert (=> bs!629668 m!4963905))

(assert (=> b!4352505 d!1285935))

(declare-fun b_lambda!130733 () Bool)

(assert (= b_lambda!130711 (or start!420734 b_lambda!130733)))

(declare-fun bs!629669 () Bool)

(declare-fun d!1285937 () Bool)

(assert (= bs!629669 (and d!1285937 start!420734)))

(assert (=> bs!629669 (= (dynLambda!20618 lambda!139654 (h!54429 (toList!2931 lm!1707))) (noDuplicateKeys!474 (_2!27428 (h!54429 (toList!2931 lm!1707)))))))

(assert (=> bs!629669 m!4963809))

(assert (=> b!4352373 d!1285937))

(push 1)

(assert (not bs!629667))

(assert (not d!1285907))

(assert (not d!1285865))

(assert (not d!1285881))

(assert (not b!4352496))

(assert (not b!4352386))

(assert (not b!4352487))

(assert (not d!1285913))

(assert (not d!1285857))

(assert (not b!4352374))

(assert (not d!1285893))

(assert (not b!4352527))

(assert (not b!4352481))

(assert (not b!4352482))

(assert (not b!4352417))

(assert (not d!1285899))

(assert (not b!4352420))

(assert (not d!1285855))

(assert (not b!4352513))

(assert (not b_lambda!130731))

(assert tp_is_empty!25135)

(assert (not b!4352504))

(assert (not b!4352425))

(assert (not b!4352424))

(assert (not b!4352519))

(assert (not b!4352422))

(assert (not b!4352367))

(assert (not b!4352484))

(assert (not d!1285921))

(assert (not b!4352368))

(assert (not d!1285895))

(assert (not d!1285905))

(assert (not b!4352514))

(assert (not b!4352440))

(assert (not b!4352380))

(assert (not b!4352532))

(assert (not b!4352486))

(assert (not d!1285875))

(assert (not d!1285923))

(assert (not b!4352478))

(assert (not bs!629668))

(assert (not d!1285877))

(assert (not d!1285925))

(assert (not d!1285927))

(assert (not b!4352506))

(assert (not bm!302484))

(assert (not b!4352501))

(assert (not b!4352520))

(assert (not b_lambda!130729))

(assert (not b!4352485))

(assert (not d!1285887))

(assert (not b!4352492))

(assert (not d!1285841))

(assert tp_is_empty!25133)

(assert (not bm!302485))

(assert (not d!1285871))

(assert (not b!4352423))

(assert (not b!4352479))

(assert (not b!4352436))

(assert (not d!1285853))

(assert (not bs!629665))

(assert (not d!1285897))

(assert (not b_lambda!130727))

(assert (not b_lambda!130733))

(assert (not d!1285869))

(assert (not b!4352502))

(assert (not b!4352498))

(assert (not b!4352465))

(assert (not b!4352476))

(assert (not d!1285843))

(assert (not bm!302483))

(assert (not b!4352494))

(assert (not b_lambda!130725))

(assert (not bs!629669))

(assert (not bs!629666))

(assert (not d!1285901))

(assert (not b!4352458))

(assert (not b!4352362))

(assert (not b!4352419))

(assert (not b!4352385))

(assert (not b!4352451))

(assert (not b!4352499))

(assert (not d!1285873))

(assert (not d!1285885))

(assert (not b!4352507))

(assert (not d!1285919))

(assert (not b!4352503))

(assert (not b!4352491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

