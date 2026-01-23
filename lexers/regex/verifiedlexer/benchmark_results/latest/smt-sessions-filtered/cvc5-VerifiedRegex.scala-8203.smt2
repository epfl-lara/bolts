; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!423562 () Bool)

(assert start!423562)

(declare-fun res!1796247 () Bool)

(declare-fun e!2717547 () Bool)

(assert (=> start!423562 (=> (not res!1796247) (not e!2717547))))

(declare-datatypes ((V!10664 0))(
  ( (V!10665 (val!16605 Int)) )
))
(declare-datatypes ((K!10418 0))(
  ( (K!10419 (val!16606 Int)) )
))
(declare-datatypes ((tuple2!48530 0))(
  ( (tuple2!48531 (_1!27559 K!10418) (_2!27559 V!10664)) )
))
(declare-datatypes ((List!49181 0))(
  ( (Nil!49057) (Cons!49057 (h!54632 tuple2!48530) (t!356101 List!49181)) )
))
(declare-datatypes ((tuple2!48532 0))(
  ( (tuple2!48533 (_1!27560 (_ BitVec 64)) (_2!27560 List!49181)) )
))
(declare-datatypes ((List!49182 0))(
  ( (Nil!49058) (Cons!49058 (h!54633 tuple2!48532) (t!356102 List!49182)) )
))
(declare-datatypes ((ListLongMap!1713 0))(
  ( (ListLongMap!1714 (toList!3063 List!49182)) )
))
(declare-fun lm!1707 () ListLongMap!1713)

(declare-fun lambda!142852 () Int)

(declare-fun forall!9203 (List!49182 Int) Bool)

(assert (=> start!423562 (= res!1796247 (forall!9203 (toList!3063 lm!1707) lambda!142852))))

(assert (=> start!423562 e!2717547))

(declare-fun e!2717549 () Bool)

(assert (=> start!423562 e!2717549))

(assert (=> start!423562 true))

(declare-fun e!2717548 () Bool)

(declare-fun inv!64605 (ListLongMap!1713) Bool)

(assert (=> start!423562 (and (inv!64605 lm!1707) e!2717548)))

(declare-fun tp_is_empty!25397 () Bool)

(assert (=> start!423562 tp_is_empty!25397))

(declare-fun tp_is_empty!25399 () Bool)

(assert (=> start!423562 tp_is_empty!25399))

(declare-fun b!4366427 () Bool)

(declare-fun res!1796252 () Bool)

(assert (=> b!4366427 (=> (not res!1796252) (not e!2717547))))

(declare-datatypes ((Hashable!4932 0))(
  ( (HashableExt!4931 (__x!30635 Int)) )
))
(declare-fun hashF!1247 () Hashable!4932)

(declare-fun allKeysSameHashInMap!644 (ListLongMap!1713 Hashable!4932) Bool)

(assert (=> b!4366427 (= res!1796252 (allKeysSameHashInMap!644 lm!1707 hashF!1247))))

(declare-fun b!4366428 () Bool)

(declare-fun res!1796249 () Bool)

(assert (=> b!4366428 (=> (not res!1796249) (not e!2717547))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11333 (ListLongMap!1713 (_ BitVec 64)) Bool)

(assert (=> b!4366428 (= res!1796249 (contains!11333 lm!1707 hash!377))))

(declare-fun b!4366429 () Bool)

(declare-fun res!1796248 () Bool)

(assert (=> b!4366429 (=> (not res!1796248) (not e!2717547))))

(declare-fun newBucket!200 () List!49181)

(declare-fun allKeysSameHash!498 (List!49181 (_ BitVec 64) Hashable!4932) Bool)

(assert (=> b!4366429 (= res!1796248 (allKeysSameHash!498 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4366430 () Bool)

(declare-fun e!2717550 () Bool)

(assert (=> b!4366430 (= e!2717547 (not e!2717550))))

(declare-fun res!1796253 () Bool)

(assert (=> b!4366430 (=> res!1796253 e!2717550)))

(declare-fun lt!1579053 () List!49181)

(declare-fun key!3918 () K!10418)

(declare-fun newValue!99 () V!10664)

(declare-fun removePairForKey!508 (List!49181 K!10418) List!49181)

(assert (=> b!4366430 (= res!1796253 (not (= newBucket!200 (Cons!49057 (tuple2!48531 key!3918 newValue!99) (removePairForKey!508 lt!1579053 key!3918)))))))

(declare-datatypes ((Unit!73148 0))(
  ( (Unit!73149) )
))
(declare-fun lt!1579056 () Unit!73148)

(declare-fun lt!1579054 () tuple2!48532)

(declare-fun forallContained!1842 (List!49182 Int tuple2!48532) Unit!73148)

(assert (=> b!4366430 (= lt!1579056 (forallContained!1842 (toList!3063 lm!1707) lambda!142852 lt!1579054))))

(declare-fun contains!11334 (List!49182 tuple2!48532) Bool)

(assert (=> b!4366430 (contains!11334 (toList!3063 lm!1707) lt!1579054)))

(assert (=> b!4366430 (= lt!1579054 (tuple2!48533 hash!377 lt!1579053))))

(declare-fun lt!1579055 () Unit!73148)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!385 (List!49182 (_ BitVec 64) List!49181) Unit!73148)

(assert (=> b!4366430 (= lt!1579055 (lemmaGetValueByKeyImpliesContainsTuple!385 (toList!3063 lm!1707) hash!377 lt!1579053))))

(declare-fun apply!11392 (ListLongMap!1713 (_ BitVec 64)) List!49181)

(assert (=> b!4366430 (= lt!1579053 (apply!11392 lm!1707 hash!377))))

(declare-fun tp!1330696 () Bool)

(declare-fun b!4366431 () Bool)

(assert (=> b!4366431 (= e!2717549 (and tp_is_empty!25397 tp_is_empty!25399 tp!1330696))))

(declare-fun b!4366432 () Bool)

(declare-fun res!1796250 () Bool)

(assert (=> b!4366432 (=> (not res!1796250) (not e!2717547))))

(declare-fun hash!1686 (Hashable!4932 K!10418) (_ BitVec 64))

(assert (=> b!4366432 (= res!1796250 (= (hash!1686 hashF!1247 key!3918) hash!377))))

(declare-fun b!4366433 () Bool)

(declare-fun tp!1330695 () Bool)

(assert (=> b!4366433 (= e!2717548 tp!1330695)))

(declare-fun b!4366434 () Bool)

(declare-fun res!1796246 () Bool)

(assert (=> b!4366434 (=> (not res!1796246) (not e!2717547))))

(declare-datatypes ((ListMap!2307 0))(
  ( (ListMap!2308 (toList!3064 List!49181)) )
))
(declare-fun contains!11335 (ListMap!2307 K!10418) Bool)

(declare-fun extractMap!599 (List!49182) ListMap!2307)

(assert (=> b!4366434 (= res!1796246 (contains!11335 (extractMap!599 (toList!3063 lm!1707)) key!3918))))

(declare-fun b!4366435 () Bool)

(declare-fun size!35853 (List!49182) Int)

(assert (=> b!4366435 (= e!2717550 (>= (size!35853 (toList!3063 lm!1707)) 0))))

(declare-fun b!4366436 () Bool)

(declare-fun res!1796251 () Bool)

(assert (=> b!4366436 (=> res!1796251 e!2717550)))

(declare-fun noDuplicateKeys!540 (List!49181) Bool)

(assert (=> b!4366436 (= res!1796251 (not (noDuplicateKeys!540 newBucket!200)))))

(assert (= (and start!423562 res!1796247) b!4366427))

(assert (= (and b!4366427 res!1796252) b!4366432))

(assert (= (and b!4366432 res!1796250) b!4366429))

(assert (= (and b!4366429 res!1796248) b!4366434))

(assert (= (and b!4366434 res!1796246) b!4366428))

(assert (= (and b!4366428 res!1796249) b!4366430))

(assert (= (and b!4366430 (not res!1796253)) b!4366436))

(assert (= (and b!4366436 (not res!1796251)) b!4366435))

(assert (= (and start!423562 (is-Cons!49057 newBucket!200)) b!4366431))

(assert (= start!423562 b!4366433))

(declare-fun m!4989543 () Bool)

(assert (=> b!4366429 m!4989543))

(declare-fun m!4989545 () Bool)

(assert (=> b!4366430 m!4989545))

(declare-fun m!4989547 () Bool)

(assert (=> b!4366430 m!4989547))

(declare-fun m!4989549 () Bool)

(assert (=> b!4366430 m!4989549))

(declare-fun m!4989551 () Bool)

(assert (=> b!4366430 m!4989551))

(declare-fun m!4989553 () Bool)

(assert (=> b!4366430 m!4989553))

(declare-fun m!4989555 () Bool)

(assert (=> start!423562 m!4989555))

(declare-fun m!4989557 () Bool)

(assert (=> start!423562 m!4989557))

(declare-fun m!4989559 () Bool)

(assert (=> b!4366428 m!4989559))

(declare-fun m!4989561 () Bool)

(assert (=> b!4366434 m!4989561))

(assert (=> b!4366434 m!4989561))

(declare-fun m!4989563 () Bool)

(assert (=> b!4366434 m!4989563))

(declare-fun m!4989565 () Bool)

(assert (=> b!4366427 m!4989565))

(declare-fun m!4989567 () Bool)

(assert (=> b!4366435 m!4989567))

(declare-fun m!4989569 () Bool)

(assert (=> b!4366436 m!4989569))

(declare-fun m!4989571 () Bool)

(assert (=> b!4366432 m!4989571))

(push 1)

(assert (not b!4366434))

(assert (not b!4366430))

(assert (not b!4366435))

(assert (not b!4366432))

(assert tp_is_empty!25399)

(assert (not b!4366431))

(assert (not b!4366429))

(assert tp_is_empty!25397)

(assert (not b!4366436))

(assert (not b!4366433))

(assert (not start!423562))

(assert (not b!4366428))

(assert (not b!4366427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1292540 () Bool)

(assert (=> d!1292540 true))

(assert (=> d!1292540 true))

(declare-fun lambda!142860 () Int)

(declare-fun forall!9205 (List!49181 Int) Bool)

(assert (=> d!1292540 (= (allKeysSameHash!498 newBucket!200 hash!377 hashF!1247) (forall!9205 newBucket!200 lambda!142860))))

(declare-fun bs!637313 () Bool)

(assert (= bs!637313 d!1292540))

(declare-fun m!4989603 () Bool)

(assert (=> bs!637313 m!4989603))

(assert (=> b!4366429 d!1292540))

(declare-fun b!4366501 () Bool)

(declare-datatypes ((List!49185 0))(
  ( (Nil!49061) (Cons!49061 (h!54637 K!10418) (t!356105 List!49185)) )
))
(declare-fun e!2717586 () List!49185)

(declare-fun keys!16605 (ListMap!2307) List!49185)

(assert (=> b!4366501 (= e!2717586 (keys!16605 (extractMap!599 (toList!3063 lm!1707))))))

(declare-fun b!4366502 () Bool)

(declare-fun e!2717588 () Bool)

(declare-fun e!2717584 () Bool)

(assert (=> b!4366502 (= e!2717588 e!2717584)))

(declare-fun res!1796291 () Bool)

(assert (=> b!4366502 (=> (not res!1796291) (not e!2717584))))

(declare-datatypes ((Option!10514 0))(
  ( (None!10513) (Some!10513 (v!43453 V!10664)) )
))
(declare-fun isDefined!7808 (Option!10514) Bool)

(declare-fun getValueByKey!500 (List!49181 K!10418) Option!10514)

(assert (=> b!4366502 (= res!1796291 (isDefined!7808 (getValueByKey!500 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918)))))

(declare-fun b!4366503 () Bool)

(declare-fun contains!11339 (List!49185 K!10418) Bool)

(assert (=> b!4366503 (= e!2717584 (contains!11339 (keys!16605 (extractMap!599 (toList!3063 lm!1707))) key!3918))))

(declare-fun bm!303515 () Bool)

(declare-fun call!303520 () Bool)

(assert (=> bm!303515 (= call!303520 (contains!11339 e!2717586 key!3918))))

(declare-fun c!742382 () Bool)

(declare-fun c!742381 () Bool)

(assert (=> bm!303515 (= c!742382 c!742381)))

(declare-fun b!4366504 () Bool)

(declare-fun e!2717587 () Unit!73148)

(declare-fun e!2717585 () Unit!73148)

(assert (=> b!4366504 (= e!2717587 e!2717585)))

(declare-fun c!742380 () Bool)

(assert (=> b!4366504 (= c!742380 call!303520)))

(declare-fun d!1292542 () Bool)

(assert (=> d!1292542 e!2717588))

(declare-fun res!1796292 () Bool)

(assert (=> d!1292542 (=> res!1796292 e!2717588)))

(declare-fun e!2717589 () Bool)

(assert (=> d!1292542 (= res!1796292 e!2717589)))

(declare-fun res!1796290 () Bool)

(assert (=> d!1292542 (=> (not res!1796290) (not e!2717589))))

(declare-fun lt!1579095 () Bool)

(assert (=> d!1292542 (= res!1796290 (not lt!1579095))))

(declare-fun lt!1579093 () Bool)

(assert (=> d!1292542 (= lt!1579095 lt!1579093)))

(declare-fun lt!1579092 () Unit!73148)

(assert (=> d!1292542 (= lt!1579092 e!2717587)))

(assert (=> d!1292542 (= c!742381 lt!1579093)))

(declare-fun containsKey!781 (List!49181 K!10418) Bool)

(assert (=> d!1292542 (= lt!1579093 (containsKey!781 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918))))

(assert (=> d!1292542 (= (contains!11335 (extractMap!599 (toList!3063 lm!1707)) key!3918) lt!1579095)))

(declare-fun b!4366505 () Bool)

(declare-fun Unit!73152 () Unit!73148)

(assert (=> b!4366505 (= e!2717585 Unit!73152)))

(declare-fun b!4366506 () Bool)

(assert (=> b!4366506 (= e!2717589 (not (contains!11339 (keys!16605 (extractMap!599 (toList!3063 lm!1707))) key!3918)))))

(declare-fun b!4366507 () Bool)

(assert (=> b!4366507 false))

(declare-fun lt!1579091 () Unit!73148)

(declare-fun lt!1579088 () Unit!73148)

(assert (=> b!4366507 (= lt!1579091 lt!1579088)))

(assert (=> b!4366507 (containsKey!781 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!147 (List!49181 K!10418) Unit!73148)

(assert (=> b!4366507 (= lt!1579088 (lemmaInGetKeysListThenContainsKey!147 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918))))

(declare-fun Unit!73153 () Unit!73148)

(assert (=> b!4366507 (= e!2717585 Unit!73153)))

(declare-fun b!4366508 () Bool)

(declare-fun lt!1579090 () Unit!73148)

(assert (=> b!4366508 (= e!2717587 lt!1579090)))

(declare-fun lt!1579089 () Unit!73148)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!411 (List!49181 K!10418) Unit!73148)

(assert (=> b!4366508 (= lt!1579089 (lemmaContainsKeyImpliesGetValueByKeyDefined!411 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918))))

(assert (=> b!4366508 (isDefined!7808 (getValueByKey!500 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918))))

(declare-fun lt!1579094 () Unit!73148)

(assert (=> b!4366508 (= lt!1579094 lt!1579089)))

(declare-fun lemmaInListThenGetKeysListContains!146 (List!49181 K!10418) Unit!73148)

(assert (=> b!4366508 (= lt!1579090 (lemmaInListThenGetKeysListContains!146 (toList!3064 (extractMap!599 (toList!3063 lm!1707))) key!3918))))

(assert (=> b!4366508 call!303520))

(declare-fun b!4366509 () Bool)

(declare-fun getKeysList!149 (List!49181) List!49185)

(assert (=> b!4366509 (= e!2717586 (getKeysList!149 (toList!3064 (extractMap!599 (toList!3063 lm!1707)))))))

(assert (= (and d!1292542 c!742381) b!4366508))

(assert (= (and d!1292542 (not c!742381)) b!4366504))

(assert (= (and b!4366504 c!742380) b!4366507))

(assert (= (and b!4366504 (not c!742380)) b!4366505))

(assert (= (or b!4366508 b!4366504) bm!303515))

(assert (= (and bm!303515 c!742382) b!4366509))

(assert (= (and bm!303515 (not c!742382)) b!4366501))

(assert (= (and d!1292542 res!1796290) b!4366506))

(assert (= (and d!1292542 (not res!1796292)) b!4366502))

(assert (= (and b!4366502 res!1796291) b!4366503))

(declare-fun m!4989611 () Bool)

(assert (=> b!4366502 m!4989611))

(assert (=> b!4366502 m!4989611))

(declare-fun m!4989613 () Bool)

(assert (=> b!4366502 m!4989613))

(assert (=> b!4366501 m!4989561))

(declare-fun m!4989615 () Bool)

(assert (=> b!4366501 m!4989615))

(assert (=> b!4366506 m!4989561))

(assert (=> b!4366506 m!4989615))

(assert (=> b!4366506 m!4989615))

(declare-fun m!4989617 () Bool)

(assert (=> b!4366506 m!4989617))

(declare-fun m!4989619 () Bool)

(assert (=> b!4366507 m!4989619))

(declare-fun m!4989621 () Bool)

(assert (=> b!4366507 m!4989621))

(declare-fun m!4989623 () Bool)

(assert (=> b!4366509 m!4989623))

(assert (=> b!4366503 m!4989561))

(assert (=> b!4366503 m!4989615))

(assert (=> b!4366503 m!4989615))

(assert (=> b!4366503 m!4989617))

(declare-fun m!4989625 () Bool)

(assert (=> bm!303515 m!4989625))

(assert (=> d!1292542 m!4989619))

(declare-fun m!4989627 () Bool)

(assert (=> b!4366508 m!4989627))

(assert (=> b!4366508 m!4989611))

(assert (=> b!4366508 m!4989611))

(assert (=> b!4366508 m!4989613))

(declare-fun m!4989629 () Bool)

(assert (=> b!4366508 m!4989629))

(assert (=> b!4366434 d!1292542))

(declare-fun bs!637314 () Bool)

(declare-fun d!1292550 () Bool)

(assert (= bs!637314 (and d!1292550 start!423562)))

(declare-fun lambda!142863 () Int)

(assert (=> bs!637314 (= lambda!142863 lambda!142852)))

(declare-fun lt!1579110 () ListMap!2307)

(declare-fun invariantList!701 (List!49181) Bool)

(assert (=> d!1292550 (invariantList!701 (toList!3064 lt!1579110))))

(declare-fun e!2717598 () ListMap!2307)

(assert (=> d!1292550 (= lt!1579110 e!2717598)))

(declare-fun c!742388 () Bool)

(assert (=> d!1292550 (= c!742388 (is-Cons!49058 (toList!3063 lm!1707)))))

(assert (=> d!1292550 (forall!9203 (toList!3063 lm!1707) lambda!142863)))

(assert (=> d!1292550 (= (extractMap!599 (toList!3063 lm!1707)) lt!1579110)))

(declare-fun b!4366523 () Bool)

(declare-fun addToMapMapFromBucket!228 (List!49181 ListMap!2307) ListMap!2307)

(assert (=> b!4366523 (= e!2717598 (addToMapMapFromBucket!228 (_2!27560 (h!54633 (toList!3063 lm!1707))) (extractMap!599 (t!356102 (toList!3063 lm!1707)))))))

(declare-fun b!4366524 () Bool)

(assert (=> b!4366524 (= e!2717598 (ListMap!2308 Nil!49057))))

(assert (= (and d!1292550 c!742388) b!4366523))

(assert (= (and d!1292550 (not c!742388)) b!4366524))

(declare-fun m!4989639 () Bool)

(assert (=> d!1292550 m!4989639))

(declare-fun m!4989641 () Bool)

(assert (=> d!1292550 m!4989641))

(declare-fun m!4989643 () Bool)

(assert (=> b!4366523 m!4989643))

(assert (=> b!4366523 m!4989643))

(declare-fun m!4989645 () Bool)

(assert (=> b!4366523 m!4989645))

(assert (=> b!4366434 d!1292550))

(declare-fun d!1292554 () Bool)

(declare-fun lt!1579113 () Int)

(assert (=> d!1292554 (>= lt!1579113 0)))

(declare-fun e!2717601 () Int)

(assert (=> d!1292554 (= lt!1579113 e!2717601)))

(declare-fun c!742391 () Bool)

(assert (=> d!1292554 (= c!742391 (is-Nil!49058 (toList!3063 lm!1707)))))

(assert (=> d!1292554 (= (size!35853 (toList!3063 lm!1707)) lt!1579113)))

(declare-fun b!4366529 () Bool)

(assert (=> b!4366529 (= e!2717601 0)))

(declare-fun b!4366530 () Bool)

(assert (=> b!4366530 (= e!2717601 (+ 1 (size!35853 (t!356102 (toList!3063 lm!1707)))))))

(assert (= (and d!1292554 c!742391) b!4366529))

(assert (= (and d!1292554 (not c!742391)) b!4366530))

(declare-fun m!4989647 () Bool)

(assert (=> b!4366530 m!4989647))

(assert (=> b!4366435 d!1292554))

(declare-fun d!1292556 () Bool)

(declare-fun e!2717612 () Bool)

(assert (=> d!1292556 e!2717612))

(declare-fun res!1796304 () Bool)

(assert (=> d!1292556 (=> res!1796304 e!2717612)))

(declare-fun lt!1579122 () Bool)

(assert (=> d!1292556 (= res!1796304 (not lt!1579122))))

(declare-fun lt!1579125 () Bool)

(assert (=> d!1292556 (= lt!1579122 lt!1579125)))

(declare-fun lt!1579124 () Unit!73148)

(declare-fun e!2717613 () Unit!73148)

(assert (=> d!1292556 (= lt!1579124 e!2717613)))

(declare-fun c!742394 () Bool)

(assert (=> d!1292556 (= c!742394 lt!1579125)))

(declare-fun containsKey!782 (List!49182 (_ BitVec 64)) Bool)

(assert (=> d!1292556 (= lt!1579125 (containsKey!782 (toList!3063 lm!1707) hash!377))))

(assert (=> d!1292556 (= (contains!11333 lm!1707 hash!377) lt!1579122)))

(declare-fun b!4366543 () Bool)

(declare-fun lt!1579123 () Unit!73148)

(assert (=> b!4366543 (= e!2717613 lt!1579123)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!412 (List!49182 (_ BitVec 64)) Unit!73148)

(assert (=> b!4366543 (= lt!1579123 (lemmaContainsKeyImpliesGetValueByKeyDefined!412 (toList!3063 lm!1707) hash!377))))

(declare-datatypes ((Option!10515 0))(
  ( (None!10514) (Some!10514 (v!43454 List!49181)) )
))
(declare-fun isDefined!7809 (Option!10515) Bool)

(declare-fun getValueByKey!501 (List!49182 (_ BitVec 64)) Option!10515)

(assert (=> b!4366543 (isDefined!7809 (getValueByKey!501 (toList!3063 lm!1707) hash!377))))

(declare-fun b!4366544 () Bool)

(declare-fun Unit!73154 () Unit!73148)

(assert (=> b!4366544 (= e!2717613 Unit!73154)))

(declare-fun b!4366545 () Bool)

(assert (=> b!4366545 (= e!2717612 (isDefined!7809 (getValueByKey!501 (toList!3063 lm!1707) hash!377)))))

(assert (= (and d!1292556 c!742394) b!4366543))

(assert (= (and d!1292556 (not c!742394)) b!4366544))

(assert (= (and d!1292556 (not res!1796304)) b!4366545))

(declare-fun m!4989655 () Bool)

(assert (=> d!1292556 m!4989655))

(declare-fun m!4989657 () Bool)

(assert (=> b!4366543 m!4989657))

(declare-fun m!4989659 () Bool)

(assert (=> b!4366543 m!4989659))

(assert (=> b!4366543 m!4989659))

(declare-fun m!4989661 () Bool)

(assert (=> b!4366543 m!4989661))

(assert (=> b!4366545 m!4989659))

(assert (=> b!4366545 m!4989659))

(assert (=> b!4366545 m!4989661))

(assert (=> b!4366428 d!1292556))

(declare-fun bs!637317 () Bool)

(declare-fun d!1292562 () Bool)

(assert (= bs!637317 (and d!1292562 start!423562)))

(declare-fun lambda!142866 () Int)

(assert (=> bs!637317 (not (= lambda!142866 lambda!142852))))

(declare-fun bs!637318 () Bool)

(assert (= bs!637318 (and d!1292562 d!1292550)))

(assert (=> bs!637318 (not (= lambda!142866 lambda!142863))))

(assert (=> d!1292562 true))

(assert (=> d!1292562 (= (allKeysSameHashInMap!644 lm!1707 hashF!1247) (forall!9203 (toList!3063 lm!1707) lambda!142866))))

(declare-fun bs!637319 () Bool)

(assert (= bs!637319 d!1292562))

(declare-fun m!4989665 () Bool)

(assert (=> bs!637319 m!4989665))

(assert (=> b!4366427 d!1292562))

(declare-fun d!1292566 () Bool)

(declare-fun hash!1688 (Hashable!4932 K!10418) (_ BitVec 64))

(assert (=> d!1292566 (= (hash!1686 hashF!1247 key!3918) (hash!1688 hashF!1247 key!3918))))

(declare-fun bs!637320 () Bool)

(assert (= bs!637320 d!1292566))

(declare-fun m!4989667 () Bool)

(assert (=> bs!637320 m!4989667))

(assert (=> b!4366432 d!1292566))

(declare-fun d!1292568 () Bool)

(declare-fun res!1796309 () Bool)

(declare-fun e!2717618 () Bool)

(assert (=> d!1292568 (=> res!1796309 e!2717618)))

(assert (=> d!1292568 (= res!1796309 (is-Nil!49058 (toList!3063 lm!1707)))))

(assert (=> d!1292568 (= (forall!9203 (toList!3063 lm!1707) lambda!142852) e!2717618)))

(declare-fun b!4366552 () Bool)

(declare-fun e!2717619 () Bool)

(assert (=> b!4366552 (= e!2717618 e!2717619)))

(declare-fun res!1796310 () Bool)

(assert (=> b!4366552 (=> (not res!1796310) (not e!2717619))))

(declare-fun dynLambda!20670 (Int tuple2!48532) Bool)

(assert (=> b!4366552 (= res!1796310 (dynLambda!20670 lambda!142852 (h!54633 (toList!3063 lm!1707))))))

(declare-fun b!4366553 () Bool)

(assert (=> b!4366553 (= e!2717619 (forall!9203 (t!356102 (toList!3063 lm!1707)) lambda!142852))))

(assert (= (and d!1292568 (not res!1796309)) b!4366552))

(assert (= (and b!4366552 res!1796310) b!4366553))

(declare-fun b_lambda!132469 () Bool)

(assert (=> (not b_lambda!132469) (not b!4366552)))

(declare-fun m!4989669 () Bool)

(assert (=> b!4366552 m!4989669))

(declare-fun m!4989671 () Bool)

(assert (=> b!4366553 m!4989671))

(assert (=> start!423562 d!1292568))

(declare-fun d!1292570 () Bool)

(declare-fun isStrictlySorted!127 (List!49182) Bool)

(assert (=> d!1292570 (= (inv!64605 lm!1707) (isStrictlySorted!127 (toList!3063 lm!1707)))))

(declare-fun bs!637321 () Bool)

(assert (= bs!637321 d!1292570))

(declare-fun m!4989673 () Bool)

(assert (=> bs!637321 m!4989673))

(assert (=> start!423562 d!1292570))

(declare-fun d!1292572 () Bool)

(declare-fun get!15944 (Option!10515) List!49181)

(assert (=> d!1292572 (= (apply!11392 lm!1707 hash!377) (get!15944 (getValueByKey!501 (toList!3063 lm!1707) hash!377)))))

(declare-fun bs!637322 () Bool)

(assert (= bs!637322 d!1292572))

(assert (=> bs!637322 m!4989659))

(assert (=> bs!637322 m!4989659))

(declare-fun m!4989675 () Bool)

(assert (=> bs!637322 m!4989675))

(assert (=> b!4366430 d!1292572))

(declare-fun b!4366575 () Bool)

(declare-fun e!2717631 () List!49181)

(declare-fun e!2717630 () List!49181)

(assert (=> b!4366575 (= e!2717631 e!2717630)))

(declare-fun c!742405 () Bool)

(assert (=> b!4366575 (= c!742405 (is-Cons!49057 lt!1579053))))

(declare-fun b!4366576 () Bool)

(assert (=> b!4366576 (= e!2717630 (Cons!49057 (h!54632 lt!1579053) (removePairForKey!508 (t!356101 lt!1579053) key!3918)))))

(declare-fun b!4366577 () Bool)

(assert (=> b!4366577 (= e!2717630 Nil!49057)))

(declare-fun b!4366574 () Bool)

(assert (=> b!4366574 (= e!2717631 (t!356101 lt!1579053))))

(declare-fun d!1292574 () Bool)

(declare-fun lt!1579131 () List!49181)

(declare-fun containsKey!783 (List!49181 K!10418) Bool)

(assert (=> d!1292574 (not (containsKey!783 lt!1579131 key!3918))))

(assert (=> d!1292574 (= lt!1579131 e!2717631)))

(declare-fun c!742406 () Bool)

(assert (=> d!1292574 (= c!742406 (and (is-Cons!49057 lt!1579053) (= (_1!27559 (h!54632 lt!1579053)) key!3918)))))

(assert (=> d!1292574 (noDuplicateKeys!540 lt!1579053)))

(assert (=> d!1292574 (= (removePairForKey!508 lt!1579053 key!3918) lt!1579131)))

(assert (= (and d!1292574 c!742406) b!4366574))

(assert (= (and d!1292574 (not c!742406)) b!4366575))

(assert (= (and b!4366575 c!742405) b!4366576))

(assert (= (and b!4366575 (not c!742405)) b!4366577))

(declare-fun m!4989683 () Bool)

(assert (=> b!4366576 m!4989683))

(declare-fun m!4989685 () Bool)

(assert (=> d!1292574 m!4989685))

(declare-fun m!4989687 () Bool)

(assert (=> d!1292574 m!4989687))

(assert (=> b!4366430 d!1292574))

(declare-fun d!1292578 () Bool)

(assert (=> d!1292578 (contains!11334 (toList!3063 lm!1707) (tuple2!48533 hash!377 lt!1579053))))

(declare-fun lt!1579134 () Unit!73148)

(declare-fun choose!27139 (List!49182 (_ BitVec 64) List!49181) Unit!73148)

(assert (=> d!1292578 (= lt!1579134 (choose!27139 (toList!3063 lm!1707) hash!377 lt!1579053))))

(declare-fun e!2717636 () Bool)

(assert (=> d!1292578 e!2717636))

(declare-fun res!1796315 () Bool)

(assert (=> d!1292578 (=> (not res!1796315) (not e!2717636))))

(assert (=> d!1292578 (= res!1796315 (isStrictlySorted!127 (toList!3063 lm!1707)))))

(assert (=> d!1292578 (= (lemmaGetValueByKeyImpliesContainsTuple!385 (toList!3063 lm!1707) hash!377 lt!1579053) lt!1579134)))

(declare-fun b!4366580 () Bool)

(assert (=> b!4366580 (= e!2717636 (= (getValueByKey!501 (toList!3063 lm!1707) hash!377) (Some!10514 lt!1579053)))))

(assert (= (and d!1292578 res!1796315) b!4366580))

(declare-fun m!4989689 () Bool)

(assert (=> d!1292578 m!4989689))

(declare-fun m!4989691 () Bool)

(assert (=> d!1292578 m!4989691))

(assert (=> d!1292578 m!4989673))

(assert (=> b!4366580 m!4989659))

(assert (=> b!4366430 d!1292578))

(declare-fun d!1292580 () Bool)

(assert (=> d!1292580 (dynLambda!20670 lambda!142852 lt!1579054)))

(declare-fun lt!1579140 () Unit!73148)

(declare-fun choose!27140 (List!49182 Int tuple2!48532) Unit!73148)

(assert (=> d!1292580 (= lt!1579140 (choose!27140 (toList!3063 lm!1707) lambda!142852 lt!1579054))))

(declare-fun e!2717640 () Bool)

(assert (=> d!1292580 e!2717640))

(declare-fun res!1796319 () Bool)

(assert (=> d!1292580 (=> (not res!1796319) (not e!2717640))))

(assert (=> d!1292580 (= res!1796319 (forall!9203 (toList!3063 lm!1707) lambda!142852))))

(assert (=> d!1292580 (= (forallContained!1842 (toList!3063 lm!1707) lambda!142852 lt!1579054) lt!1579140)))

(declare-fun b!4366586 () Bool)

(assert (=> b!4366586 (= e!2717640 (contains!11334 (toList!3063 lm!1707) lt!1579054))))

(assert (= (and d!1292580 res!1796319) b!4366586))

(declare-fun b_lambda!132471 () Bool)

(assert (=> (not b_lambda!132471) (not d!1292580)))

(declare-fun m!4989697 () Bool)

(assert (=> d!1292580 m!4989697))

(declare-fun m!4989699 () Bool)

(assert (=> d!1292580 m!4989699))

(assert (=> d!1292580 m!4989555))

(assert (=> b!4366586 m!4989547))

(assert (=> b!4366430 d!1292580))

(declare-fun d!1292584 () Bool)

(declare-fun lt!1579143 () Bool)

(declare-fun content!7772 (List!49182) (Set tuple2!48532))

(assert (=> d!1292584 (= lt!1579143 (set.member lt!1579054 (content!7772 (toList!3063 lm!1707))))))

(declare-fun e!2717645 () Bool)

(assert (=> d!1292584 (= lt!1579143 e!2717645)))

(declare-fun res!1796325 () Bool)

(assert (=> d!1292584 (=> (not res!1796325) (not e!2717645))))

(assert (=> d!1292584 (= res!1796325 (is-Cons!49058 (toList!3063 lm!1707)))))

(assert (=> d!1292584 (= (contains!11334 (toList!3063 lm!1707) lt!1579054) lt!1579143)))

(declare-fun b!4366591 () Bool)

(declare-fun e!2717646 () Bool)

(assert (=> b!4366591 (= e!2717645 e!2717646)))

(declare-fun res!1796324 () Bool)

(assert (=> b!4366591 (=> res!1796324 e!2717646)))

(assert (=> b!4366591 (= res!1796324 (= (h!54633 (toList!3063 lm!1707)) lt!1579054))))

(declare-fun b!4366592 () Bool)

(assert (=> b!4366592 (= e!2717646 (contains!11334 (t!356102 (toList!3063 lm!1707)) lt!1579054))))

(assert (= (and d!1292584 res!1796325) b!4366591))

(assert (= (and b!4366591 (not res!1796324)) b!4366592))

(declare-fun m!4989701 () Bool)

(assert (=> d!1292584 m!4989701))

(declare-fun m!4989703 () Bool)

(assert (=> d!1292584 m!4989703))

(declare-fun m!4989705 () Bool)

(assert (=> b!4366592 m!4989705))

(assert (=> b!4366430 d!1292584))

(declare-fun d!1292586 () Bool)

(declare-fun res!1796334 () Bool)

(declare-fun e!2717655 () Bool)

(assert (=> d!1292586 (=> res!1796334 e!2717655)))

(assert (=> d!1292586 (= res!1796334 (not (is-Cons!49057 newBucket!200)))))

(assert (=> d!1292586 (= (noDuplicateKeys!540 newBucket!200) e!2717655)))

(declare-fun b!4366601 () Bool)

(declare-fun e!2717656 () Bool)

(assert (=> b!4366601 (= e!2717655 e!2717656)))

(declare-fun res!1796335 () Bool)

(assert (=> b!4366601 (=> (not res!1796335) (not e!2717656))))

(assert (=> b!4366601 (= res!1796335 (not (containsKey!783 (t!356101 newBucket!200) (_1!27559 (h!54632 newBucket!200)))))))

(declare-fun b!4366602 () Bool)

(assert (=> b!4366602 (= e!2717656 (noDuplicateKeys!540 (t!356101 newBucket!200)))))

(assert (= (and d!1292586 (not res!1796334)) b!4366601))

(assert (= (and b!4366601 res!1796335) b!4366602))

(declare-fun m!4989707 () Bool)

(assert (=> b!4366601 m!4989707))

(declare-fun m!4989709 () Bool)

(assert (=> b!4366602 m!4989709))

(assert (=> b!4366436 d!1292586))

(declare-fun b!4366607 () Bool)

(declare-fun e!2717659 () Bool)

(declare-fun tp!1330707 () Bool)

(declare-fun tp!1330708 () Bool)

(assert (=> b!4366607 (= e!2717659 (and tp!1330707 tp!1330708))))

(assert (=> b!4366433 (= tp!1330695 e!2717659)))

(assert (= (and b!4366433 (is-Cons!49058 (toList!3063 lm!1707))) b!4366607))

(declare-fun b!4366614 () Bool)

(declare-fun e!2717664 () Bool)

(declare-fun tp!1330711 () Bool)

(assert (=> b!4366614 (= e!2717664 (and tp_is_empty!25397 tp_is_empty!25399 tp!1330711))))

(assert (=> b!4366431 (= tp!1330696 e!2717664)))

(assert (= (and b!4366431 (is-Cons!49057 (t!356101 newBucket!200))) b!4366614))

(declare-fun b_lambda!132473 () Bool)

(assert (= b_lambda!132471 (or start!423562 b_lambda!132473)))

(declare-fun bs!637323 () Bool)

(declare-fun d!1292588 () Bool)

(assert (= bs!637323 (and d!1292588 start!423562)))

(assert (=> bs!637323 (= (dynLambda!20670 lambda!142852 lt!1579054) (noDuplicateKeys!540 (_2!27560 lt!1579054)))))

(declare-fun m!4989715 () Bool)

(assert (=> bs!637323 m!4989715))

(assert (=> d!1292580 d!1292588))

(declare-fun b_lambda!132475 () Bool)

(assert (= b_lambda!132469 (or start!423562 b_lambda!132475)))

(declare-fun bs!637324 () Bool)

(declare-fun d!1292590 () Bool)

(assert (= bs!637324 (and d!1292590 start!423562)))

(assert (=> bs!637324 (= (dynLambda!20670 lambda!142852 (h!54633 (toList!3063 lm!1707))) (noDuplicateKeys!540 (_2!27560 (h!54633 (toList!3063 lm!1707)))))))

(declare-fun m!4989719 () Bool)

(assert (=> bs!637324 m!4989719))

(assert (=> b!4366552 d!1292590))

(push 1)

(assert (not d!1292566))

(assert (not d!1292556))

(assert (not bs!637324))

(assert (not b!4366543))

(assert tp_is_empty!25399)

(assert (not b!4366580))

(assert (not b!4366523))

(assert (not b!4366614))

(assert (not b!4366502))

(assert (not bs!637323))

(assert (not d!1292562))

(assert (not d!1292574))

(assert (not b_lambda!132475))

(assert (not b!4366602))

(assert (not b!4366508))

(assert (not d!1292580))

(assert (not b_lambda!132473))

(assert (not b!4366509))

(assert (not b!4366576))

(assert (not d!1292542))

(assert (not b!4366553))

(assert (not d!1292584))

(assert (not b!4366592))

(assert (not d!1292578))

(assert (not bm!303515))

(assert tp_is_empty!25397)

(assert (not b!4366607))

(assert (not b!4366601))

(assert (not d!1292570))

(assert (not b!4366545))

(assert (not b!4366503))

(assert (not d!1292550))

(assert (not b!4366530))

(assert (not b!4366586))

(assert (not b!4366506))

(assert (not d!1292572))

(assert (not d!1292540))

(assert (not b!4366507))

(assert (not b!4366501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

