; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429102 () Bool)

(assert start!429102)

(declare-fun b!4410544 () Bool)

(declare-fun res!1820440 () Bool)

(declare-fun e!2746694 () Bool)

(assert (=> b!4410544 (=> (not res!1820440) (not e!2746694))))

(declare-datatypes ((V!10934 0))(
  ( (V!10935 (val!16821 Int)) )
))
(declare-datatypes ((K!10688 0))(
  ( (K!10689 (val!16822 Int)) )
))
(declare-datatypes ((tuple2!48962 0))(
  ( (tuple2!48963 (_1!27775 K!10688) (_2!27775 V!10934)) )
))
(declare-datatypes ((List!49458 0))(
  ( (Nil!49334) (Cons!49334 (h!54973 tuple2!48962) (t!356396 List!49458)) )
))
(declare-datatypes ((tuple2!48964 0))(
  ( (tuple2!48965 (_1!27776 (_ BitVec 64)) (_2!27776 List!49458)) )
))
(declare-datatypes ((List!49459 0))(
  ( (Nil!49335) (Cons!49335 (h!54974 tuple2!48964) (t!356397 List!49459)) )
))
(declare-datatypes ((ListLongMap!1929 0))(
  ( (ListLongMap!1930 (toList!3279 List!49459)) )
))
(declare-fun lm!1707 () ListLongMap!1929)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11756 (ListLongMap!1929 (_ BitVec 64)) Bool)

(assert (=> b!4410544 (= res!1820440 (contains!11756 lm!1707 hash!377))))

(declare-fun b!4410545 () Bool)

(declare-fun e!2746693 () Bool)

(assert (=> b!4410545 (= e!2746694 (not e!2746693))))

(declare-fun res!1820436 () Bool)

(assert (=> b!4410545 (=> res!1820436 e!2746693)))

(declare-fun newBucket!200 () List!49458)

(declare-fun lt!1613701 () List!49458)

(declare-fun lt!1613705 () tuple2!48962)

(declare-fun key!3918 () K!10688)

(declare-fun removePairForKey!616 (List!49458 K!10688) List!49458)

(assert (=> b!4410545 (= res!1820436 (not (= newBucket!200 (Cons!49334 lt!1613705 (removePairForKey!616 lt!1613701 key!3918)))))))

(declare-fun newValue!99 () V!10934)

(assert (=> b!4410545 (= lt!1613705 (tuple2!48963 key!3918 newValue!99))))

(declare-fun lt!1613703 () tuple2!48964)

(declare-datatypes ((Unit!80405 0))(
  ( (Unit!80406) )
))
(declare-fun lt!1613704 () Unit!80405)

(declare-fun lambda!150588 () Int)

(declare-fun forallContained!2042 (List!49459 Int tuple2!48964) Unit!80405)

(assert (=> b!4410545 (= lt!1613704 (forallContained!2042 (toList!3279 lm!1707) lambda!150588 lt!1613703))))

(declare-fun contains!11757 (List!49459 tuple2!48964) Bool)

(assert (=> b!4410545 (contains!11757 (toList!3279 lm!1707) lt!1613703)))

(assert (=> b!4410545 (= lt!1613703 (tuple2!48965 hash!377 lt!1613701))))

(declare-fun lt!1613707 () Unit!80405)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!493 (List!49459 (_ BitVec 64) List!49458) Unit!80405)

(assert (=> b!4410545 (= lt!1613707 (lemmaGetValueByKeyImpliesContainsTuple!493 (toList!3279 lm!1707) hash!377 lt!1613701))))

(declare-fun apply!11500 (ListLongMap!1929 (_ BitVec 64)) List!49458)

(assert (=> b!4410545 (= lt!1613701 (apply!11500 lm!1707 hash!377))))

(declare-fun b!4410546 () Bool)

(declare-fun res!1820437 () Bool)

(declare-fun e!2746691 () Bool)

(assert (=> b!4410546 (=> (not res!1820437) (not e!2746691))))

(declare-datatypes ((Hashable!5040 0))(
  ( (HashableExt!5039 (__x!30743 Int)) )
))
(declare-fun hashF!1247 () Hashable!5040)

(declare-fun hash!1942 (Hashable!5040 K!10688) (_ BitVec 64))

(assert (=> b!4410546 (= res!1820437 (= (hash!1942 hashF!1247 key!3918) hash!377))))

(declare-fun b!4410547 () Bool)

(declare-fun e!2746697 () Bool)

(declare-fun lt!1613702 () ListLongMap!1929)

(declare-fun forall!9407 (List!49459 Int) Bool)

(assert (=> b!4410547 (= e!2746697 (forall!9407 (toList!3279 lt!1613702) lambda!150588))))

(declare-fun b!4410548 () Bool)

(declare-fun e!2746696 () Bool)

(declare-fun tp!1332105 () Bool)

(assert (=> b!4410548 (= e!2746696 tp!1332105)))

(declare-fun b!4410550 () Bool)

(declare-fun res!1820434 () Bool)

(assert (=> b!4410550 (=> (not res!1820434) (not e!2746691))))

(declare-fun allKeysSameHashInMap!752 (ListLongMap!1929 Hashable!5040) Bool)

(assert (=> b!4410550 (= res!1820434 (allKeysSameHashInMap!752 lm!1707 hashF!1247))))

(declare-datatypes ((ListMap!2523 0))(
  ( (ListMap!2524 (toList!3280 List!49458)) )
))
(declare-fun lt!1613706 () ListMap!2523)

(declare-fun b!4410551 () Bool)

(declare-fun e!2746692 () Bool)

(declare-fun eq!354 (ListMap!2523 ListMap!2523) Bool)

(declare-fun extractMap!707 (List!49459) ListMap!2523)

(declare-fun +!911 (ListMap!2523 tuple2!48962) ListMap!2523)

(assert (=> b!4410551 (= e!2746692 (eq!354 (extractMap!707 (toList!3279 lt!1613702)) (+!911 lt!1613706 lt!1613705)))))

(declare-fun b!4410552 () Bool)

(declare-fun res!1820438 () Bool)

(assert (=> b!4410552 (=> res!1820438 e!2746693)))

(declare-fun noDuplicateKeys!648 (List!49458) Bool)

(assert (=> b!4410552 (= res!1820438 (not (noDuplicateKeys!648 newBucket!200)))))

(declare-fun b!4410553 () Bool)

(assert (=> b!4410553 (= e!2746691 e!2746694)))

(declare-fun res!1820442 () Bool)

(assert (=> b!4410553 (=> (not res!1820442) (not e!2746694))))

(declare-fun contains!11758 (ListMap!2523 K!10688) Bool)

(assert (=> b!4410553 (= res!1820442 (contains!11758 lt!1613706 key!3918))))

(assert (=> b!4410553 (= lt!1613706 (extractMap!707 (toList!3279 lm!1707)))))

(declare-fun b!4410554 () Bool)

(declare-fun res!1820433 () Bool)

(assert (=> b!4410554 (=> (not res!1820433) (not e!2746691))))

(declare-fun allKeysSameHash!606 (List!49458 (_ BitVec 64) Hashable!5040) Bool)

(assert (=> b!4410554 (= res!1820433 (allKeysSameHash!606 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp_is_empty!25831 () Bool)

(declare-fun e!2746695 () Bool)

(declare-fun b!4410555 () Bool)

(declare-fun tp!1332106 () Bool)

(declare-fun tp_is_empty!25829 () Bool)

(assert (=> b!4410555 (= e!2746695 (and tp_is_empty!25829 tp_is_empty!25831 tp!1332106))))

(declare-fun b!4410549 () Bool)

(assert (=> b!4410549 (= e!2746693 e!2746692)))

(declare-fun res!1820435 () Bool)

(assert (=> b!4410549 (=> res!1820435 e!2746692)))

(assert (=> b!4410549 (= res!1820435 (or (and (is-Cons!49335 (toList!3279 lm!1707)) (= (_1!27776 (h!54974 (toList!3279 lm!1707))) hash!377)) (and (is-Cons!49335 (toList!3279 lm!1707)) (not (= (_1!27776 (h!54974 (toList!3279 lm!1707))) hash!377))) (not (is-Nil!49335 (toList!3279 lm!1707)))))))

(assert (=> b!4410549 e!2746697))

(declare-fun res!1820441 () Bool)

(assert (=> b!4410549 (=> (not res!1820441) (not e!2746697))))

(assert (=> b!4410549 (= res!1820441 (forall!9407 (toList!3279 lt!1613702) lambda!150588))))

(declare-fun +!912 (ListLongMap!1929 tuple2!48964) ListLongMap!1929)

(assert (=> b!4410549 (= lt!1613702 (+!912 lm!1707 (tuple2!48965 hash!377 newBucket!200)))))

(declare-fun lt!1613708 () Unit!80405)

(declare-fun addValidProp!294 (ListLongMap!1929 Int (_ BitVec 64) List!49458) Unit!80405)

(assert (=> b!4410549 (= lt!1613708 (addValidProp!294 lm!1707 lambda!150588 hash!377 newBucket!200))))

(assert (=> b!4410549 (forall!9407 (toList!3279 lm!1707) lambda!150588)))

(declare-fun res!1820439 () Bool)

(assert (=> start!429102 (=> (not res!1820439) (not e!2746691))))

(assert (=> start!429102 (= res!1820439 (forall!9407 (toList!3279 lm!1707) lambda!150588))))

(assert (=> start!429102 e!2746691))

(assert (=> start!429102 e!2746695))

(assert (=> start!429102 true))

(declare-fun inv!64875 (ListLongMap!1929) Bool)

(assert (=> start!429102 (and (inv!64875 lm!1707) e!2746696)))

(assert (=> start!429102 tp_is_empty!25829))

(assert (=> start!429102 tp_is_empty!25831))

(assert (= (and start!429102 res!1820439) b!4410550))

(assert (= (and b!4410550 res!1820434) b!4410546))

(assert (= (and b!4410546 res!1820437) b!4410554))

(assert (= (and b!4410554 res!1820433) b!4410553))

(assert (= (and b!4410553 res!1820442) b!4410544))

(assert (= (and b!4410544 res!1820440) b!4410545))

(assert (= (and b!4410545 (not res!1820436)) b!4410552))

(assert (= (and b!4410552 (not res!1820438)) b!4410549))

(assert (= (and b!4410549 res!1820441) b!4410547))

(assert (= (and b!4410549 (not res!1820435)) b!4410551))

(assert (= (and start!429102 (is-Cons!49334 newBucket!200)) b!4410555))

(assert (= start!429102 b!4410548))

(declare-fun m!5086259 () Bool)

(assert (=> start!429102 m!5086259))

(declare-fun m!5086261 () Bool)

(assert (=> start!429102 m!5086261))

(declare-fun m!5086263 () Bool)

(assert (=> b!4410546 m!5086263))

(declare-fun m!5086265 () Bool)

(assert (=> b!4410544 m!5086265))

(declare-fun m!5086267 () Bool)

(assert (=> b!4410552 m!5086267))

(declare-fun m!5086269 () Bool)

(assert (=> b!4410550 m!5086269))

(declare-fun m!5086271 () Bool)

(assert (=> b!4410549 m!5086271))

(declare-fun m!5086273 () Bool)

(assert (=> b!4410549 m!5086273))

(declare-fun m!5086275 () Bool)

(assert (=> b!4410549 m!5086275))

(assert (=> b!4410549 m!5086259))

(declare-fun m!5086277 () Bool)

(assert (=> b!4410554 m!5086277))

(assert (=> b!4410547 m!5086271))

(declare-fun m!5086279 () Bool)

(assert (=> b!4410545 m!5086279))

(declare-fun m!5086281 () Bool)

(assert (=> b!4410545 m!5086281))

(declare-fun m!5086283 () Bool)

(assert (=> b!4410545 m!5086283))

(declare-fun m!5086285 () Bool)

(assert (=> b!4410545 m!5086285))

(declare-fun m!5086287 () Bool)

(assert (=> b!4410545 m!5086287))

(declare-fun m!5086289 () Bool)

(assert (=> b!4410553 m!5086289))

(declare-fun m!5086291 () Bool)

(assert (=> b!4410553 m!5086291))

(declare-fun m!5086293 () Bool)

(assert (=> b!4410551 m!5086293))

(declare-fun m!5086295 () Bool)

(assert (=> b!4410551 m!5086295))

(assert (=> b!4410551 m!5086293))

(assert (=> b!4410551 m!5086295))

(declare-fun m!5086297 () Bool)

(assert (=> b!4410551 m!5086297))

(push 1)

(assert (not b!4410549))

(assert (not b!4410547))

(assert (not b!4410554))

(assert (not b!4410555))

(assert (not b!4410544))

(assert (not b!4410552))

(assert (not b!4410548))

(assert (not b!4410545))

(assert (not b!4410551))

(assert (not b!4410550))

(assert tp_is_empty!25831)

(assert (not start!429102))

(assert (not b!4410546))

(assert tp_is_empty!25829)

(assert (not b!4410553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1336612 () Bool)

(assert (=> d!1336612 true))

(assert (=> d!1336612 true))

(declare-fun lambda!150602 () Int)

(declare-fun forall!9409 (List!49458 Int) Bool)

(assert (=> d!1336612 (= (allKeysSameHash!606 newBucket!200 hash!377 hashF!1247) (forall!9409 newBucket!200 lambda!150602))))

(declare-fun bs!752669 () Bool)

(assert (= bs!752669 d!1336612))

(declare-fun m!5086339 () Bool)

(assert (=> bs!752669 m!5086339))

(assert (=> b!4410554 d!1336612))

(declare-fun d!1336614 () Bool)

(declare-fun res!1820477 () Bool)

(declare-fun e!2746723 () Bool)

(assert (=> d!1336614 (=> res!1820477 e!2746723)))

(assert (=> d!1336614 (= res!1820477 (is-Nil!49335 (toList!3279 lt!1613702)))))

(assert (=> d!1336614 (= (forall!9407 (toList!3279 lt!1613702) lambda!150588) e!2746723)))

(declare-fun b!4410600 () Bool)

(declare-fun e!2746724 () Bool)

(assert (=> b!4410600 (= e!2746723 e!2746724)))

(declare-fun res!1820478 () Bool)

(assert (=> b!4410600 (=> (not res!1820478) (not e!2746724))))

(declare-fun dynLambda!20787 (Int tuple2!48964) Bool)

(assert (=> b!4410600 (= res!1820478 (dynLambda!20787 lambda!150588 (h!54974 (toList!3279 lt!1613702))))))

(declare-fun b!4410601 () Bool)

(assert (=> b!4410601 (= e!2746724 (forall!9407 (t!356397 (toList!3279 lt!1613702)) lambda!150588))))

(assert (= (and d!1336614 (not res!1820477)) b!4410600))

(assert (= (and b!4410600 res!1820478) b!4410601))

(declare-fun b_lambda!141799 () Bool)

(assert (=> (not b_lambda!141799) (not b!4410600)))

(declare-fun m!5086341 () Bool)

(assert (=> b!4410600 m!5086341))

(declare-fun m!5086343 () Bool)

(assert (=> b!4410601 m!5086343))

(assert (=> b!4410549 d!1336614))

(declare-fun d!1336616 () Bool)

(declare-fun e!2746727 () Bool)

(assert (=> d!1336616 e!2746727))

(declare-fun res!1820484 () Bool)

(assert (=> d!1336616 (=> (not res!1820484) (not e!2746727))))

(declare-fun lt!1613741 () ListLongMap!1929)

(assert (=> d!1336616 (= res!1820484 (contains!11756 lt!1613741 (_1!27776 (tuple2!48965 hash!377 newBucket!200))))))

(declare-fun lt!1613742 () List!49459)

(assert (=> d!1336616 (= lt!1613741 (ListLongMap!1930 lt!1613742))))

(declare-fun lt!1613743 () Unit!80405)

(declare-fun lt!1613744 () Unit!80405)

(assert (=> d!1336616 (= lt!1613743 lt!1613744)))

(declare-datatypes ((Option!10638 0))(
  ( (None!10637) (Some!10637 (v!43787 List!49458)) )
))
(declare-fun getValueByKey!624 (List!49459 (_ BitVec 64)) Option!10638)

(assert (=> d!1336616 (= (getValueByKey!624 lt!1613742 (_1!27776 (tuple2!48965 hash!377 newBucket!200))) (Some!10637 (_2!27776 (tuple2!48965 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!370 (List!49459 (_ BitVec 64) List!49458) Unit!80405)

(assert (=> d!1336616 (= lt!1613744 (lemmaContainsTupThenGetReturnValue!370 lt!1613742 (_1!27776 (tuple2!48965 hash!377 newBucket!200)) (_2!27776 (tuple2!48965 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!217 (List!49459 (_ BitVec 64) List!49458) List!49459)

(assert (=> d!1336616 (= lt!1613742 (insertStrictlySorted!217 (toList!3279 lm!1707) (_1!27776 (tuple2!48965 hash!377 newBucket!200)) (_2!27776 (tuple2!48965 hash!377 newBucket!200))))))

(assert (=> d!1336616 (= (+!912 lm!1707 (tuple2!48965 hash!377 newBucket!200)) lt!1613741)))

(declare-fun b!4410606 () Bool)

(declare-fun res!1820483 () Bool)

(assert (=> b!4410606 (=> (not res!1820483) (not e!2746727))))

(assert (=> b!4410606 (= res!1820483 (= (getValueByKey!624 (toList!3279 lt!1613741) (_1!27776 (tuple2!48965 hash!377 newBucket!200))) (Some!10637 (_2!27776 (tuple2!48965 hash!377 newBucket!200)))))))

(declare-fun b!4410607 () Bool)

(assert (=> b!4410607 (= e!2746727 (contains!11757 (toList!3279 lt!1613741) (tuple2!48965 hash!377 newBucket!200)))))

(assert (= (and d!1336616 res!1820484) b!4410606))

(assert (= (and b!4410606 res!1820483) b!4410607))

(declare-fun m!5086345 () Bool)

(assert (=> d!1336616 m!5086345))

(declare-fun m!5086347 () Bool)

(assert (=> d!1336616 m!5086347))

(declare-fun m!5086349 () Bool)

(assert (=> d!1336616 m!5086349))

(declare-fun m!5086351 () Bool)

(assert (=> d!1336616 m!5086351))

(declare-fun m!5086353 () Bool)

(assert (=> b!4410606 m!5086353))

(declare-fun m!5086355 () Bool)

(assert (=> b!4410607 m!5086355))

(assert (=> b!4410549 d!1336616))

(declare-fun d!1336618 () Bool)

(assert (=> d!1336618 (forall!9407 (toList!3279 (+!912 lm!1707 (tuple2!48965 hash!377 newBucket!200))) lambda!150588)))

(declare-fun lt!1613747 () Unit!80405)

(declare-fun choose!27744 (ListLongMap!1929 Int (_ BitVec 64) List!49458) Unit!80405)

(assert (=> d!1336618 (= lt!1613747 (choose!27744 lm!1707 lambda!150588 hash!377 newBucket!200))))

(declare-fun e!2746730 () Bool)

(assert (=> d!1336618 e!2746730))

(declare-fun res!1820487 () Bool)

(assert (=> d!1336618 (=> (not res!1820487) (not e!2746730))))

(assert (=> d!1336618 (= res!1820487 (forall!9407 (toList!3279 lm!1707) lambda!150588))))

(assert (=> d!1336618 (= (addValidProp!294 lm!1707 lambda!150588 hash!377 newBucket!200) lt!1613747)))

(declare-fun b!4410611 () Bool)

(assert (=> b!4410611 (= e!2746730 (dynLambda!20787 lambda!150588 (tuple2!48965 hash!377 newBucket!200)))))

(assert (= (and d!1336618 res!1820487) b!4410611))

(declare-fun b_lambda!141801 () Bool)

(assert (=> (not b_lambda!141801) (not b!4410611)))

(assert (=> d!1336618 m!5086273))

(declare-fun m!5086357 () Bool)

(assert (=> d!1336618 m!5086357))

(declare-fun m!5086359 () Bool)

(assert (=> d!1336618 m!5086359))

(assert (=> d!1336618 m!5086259))

(declare-fun m!5086361 () Bool)

(assert (=> b!4410611 m!5086361))

(assert (=> b!4410549 d!1336618))

(declare-fun d!1336622 () Bool)

(declare-fun res!1820488 () Bool)

(declare-fun e!2746731 () Bool)

(assert (=> d!1336622 (=> res!1820488 e!2746731)))

(assert (=> d!1336622 (= res!1820488 (is-Nil!49335 (toList!3279 lm!1707)))))

(assert (=> d!1336622 (= (forall!9407 (toList!3279 lm!1707) lambda!150588) e!2746731)))

(declare-fun b!4410612 () Bool)

(declare-fun e!2746732 () Bool)

(assert (=> b!4410612 (= e!2746731 e!2746732)))

(declare-fun res!1820489 () Bool)

(assert (=> b!4410612 (=> (not res!1820489) (not e!2746732))))

(assert (=> b!4410612 (= res!1820489 (dynLambda!20787 lambda!150588 (h!54974 (toList!3279 lm!1707))))))

(declare-fun b!4410613 () Bool)

(assert (=> b!4410613 (= e!2746732 (forall!9407 (t!356397 (toList!3279 lm!1707)) lambda!150588))))

(assert (= (and d!1336622 (not res!1820488)) b!4410612))

(assert (= (and b!4410612 res!1820489) b!4410613))

(declare-fun b_lambda!141803 () Bool)

(assert (=> (not b_lambda!141803) (not b!4410612)))

(declare-fun m!5086363 () Bool)

(assert (=> b!4410612 m!5086363))

(declare-fun m!5086365 () Bool)

(assert (=> b!4410613 m!5086365))

(assert (=> b!4410549 d!1336622))

(declare-fun d!1336624 () Bool)

(declare-fun e!2746737 () Bool)

(assert (=> d!1336624 e!2746737))

(declare-fun res!1820492 () Bool)

(assert (=> d!1336624 (=> res!1820492 e!2746737)))

(declare-fun lt!1613758 () Bool)

(assert (=> d!1336624 (= res!1820492 (not lt!1613758))))

(declare-fun lt!1613757 () Bool)

(assert (=> d!1336624 (= lt!1613758 lt!1613757)))

(declare-fun lt!1613759 () Unit!80405)

(declare-fun e!2746738 () Unit!80405)

(assert (=> d!1336624 (= lt!1613759 e!2746738)))

(declare-fun c!751250 () Bool)

(assert (=> d!1336624 (= c!751250 lt!1613757)))

(declare-fun containsKey!982 (List!49459 (_ BitVec 64)) Bool)

(assert (=> d!1336624 (= lt!1613757 (containsKey!982 (toList!3279 lm!1707) hash!377))))

(assert (=> d!1336624 (= (contains!11756 lm!1707 hash!377) lt!1613758)))

(declare-fun b!4410620 () Bool)

(declare-fun lt!1613756 () Unit!80405)

(assert (=> b!4410620 (= e!2746738 lt!1613756)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!534 (List!49459 (_ BitVec 64)) Unit!80405)

(assert (=> b!4410620 (= lt!1613756 (lemmaContainsKeyImpliesGetValueByKeyDefined!534 (toList!3279 lm!1707) hash!377))))

(declare-fun isDefined!7931 (Option!10638) Bool)

(assert (=> b!4410620 (isDefined!7931 (getValueByKey!624 (toList!3279 lm!1707) hash!377))))

(declare-fun b!4410621 () Bool)

(declare-fun Unit!80409 () Unit!80405)

(assert (=> b!4410621 (= e!2746738 Unit!80409)))

(declare-fun b!4410622 () Bool)

(assert (=> b!4410622 (= e!2746737 (isDefined!7931 (getValueByKey!624 (toList!3279 lm!1707) hash!377)))))

(assert (= (and d!1336624 c!751250) b!4410620))

(assert (= (and d!1336624 (not c!751250)) b!4410621))

(assert (= (and d!1336624 (not res!1820492)) b!4410622))

(declare-fun m!5086367 () Bool)

(assert (=> d!1336624 m!5086367))

(declare-fun m!5086369 () Bool)

(assert (=> b!4410620 m!5086369))

(declare-fun m!5086371 () Bool)

(assert (=> b!4410620 m!5086371))

(assert (=> b!4410620 m!5086371))

(declare-fun m!5086373 () Bool)

(assert (=> b!4410620 m!5086373))

(assert (=> b!4410622 m!5086371))

(assert (=> b!4410622 m!5086371))

(assert (=> b!4410622 m!5086373))

(assert (=> b!4410544 d!1336624))

(declare-fun bs!752670 () Bool)

(declare-fun d!1336626 () Bool)

(assert (= bs!752670 (and d!1336626 start!429102)))

(declare-fun lambda!150605 () Int)

(assert (=> bs!752670 (not (= lambda!150605 lambda!150588))))

(assert (=> d!1336626 true))

(assert (=> d!1336626 (= (allKeysSameHashInMap!752 lm!1707 hashF!1247) (forall!9407 (toList!3279 lm!1707) lambda!150605))))

(declare-fun bs!752671 () Bool)

(assert (= bs!752671 d!1336626))

(declare-fun m!5086375 () Bool)

(assert (=> bs!752671 m!5086375))

(assert (=> b!4410550 d!1336626))

(declare-fun d!1336628 () Bool)

(declare-fun get!16066 (Option!10638) List!49458)

(assert (=> d!1336628 (= (apply!11500 lm!1707 hash!377) (get!16066 (getValueByKey!624 (toList!3279 lm!1707) hash!377)))))

(declare-fun bs!752672 () Bool)

(assert (= bs!752672 d!1336628))

(assert (=> bs!752672 m!5086371))

(assert (=> bs!752672 m!5086371))

(declare-fun m!5086377 () Bool)

(assert (=> bs!752672 m!5086377))

(assert (=> b!4410545 d!1336628))

(declare-fun d!1336630 () Bool)

(declare-fun lt!1613770 () List!49458)

(declare-fun containsKey!983 (List!49458 K!10688) Bool)

(assert (=> d!1336630 (not (containsKey!983 lt!1613770 key!3918))))

(declare-fun e!2746748 () List!49458)

(assert (=> d!1336630 (= lt!1613770 e!2746748)))

(declare-fun c!751257 () Bool)

(assert (=> d!1336630 (= c!751257 (and (is-Cons!49334 lt!1613701) (= (_1!27775 (h!54973 lt!1613701)) key!3918)))))

(assert (=> d!1336630 (noDuplicateKeys!648 lt!1613701)))

(assert (=> d!1336630 (= (removePairForKey!616 lt!1613701 key!3918) lt!1613770)))

(declare-fun b!4410641 () Bool)

(declare-fun e!2746747 () List!49458)

(assert (=> b!4410641 (= e!2746747 (Cons!49334 (h!54973 lt!1613701) (removePairForKey!616 (t!356396 lt!1613701) key!3918)))))

(declare-fun b!4410639 () Bool)

(assert (=> b!4410639 (= e!2746748 (t!356396 lt!1613701))))

(declare-fun b!4410642 () Bool)

(assert (=> b!4410642 (= e!2746747 Nil!49334)))

(declare-fun b!4410640 () Bool)

(assert (=> b!4410640 (= e!2746748 e!2746747)))

(declare-fun c!751258 () Bool)

(assert (=> b!4410640 (= c!751258 (is-Cons!49334 lt!1613701))))

(assert (= (and d!1336630 c!751257) b!4410639))

(assert (= (and d!1336630 (not c!751257)) b!4410640))

(assert (= (and b!4410640 c!751258) b!4410641))

(assert (= (and b!4410640 (not c!751258)) b!4410642))

(declare-fun m!5086379 () Bool)

(assert (=> d!1336630 m!5086379))

(declare-fun m!5086381 () Bool)

(assert (=> d!1336630 m!5086381))

(declare-fun m!5086383 () Bool)

(assert (=> b!4410641 m!5086383))

(assert (=> b!4410545 d!1336630))

(declare-fun d!1336632 () Bool)

(declare-fun lt!1613777 () Bool)

(declare-fun content!7901 (List!49459) (Set tuple2!48964))

(assert (=> d!1336632 (= lt!1613777 (set.member lt!1613703 (content!7901 (toList!3279 lm!1707))))))

(declare-fun e!2746755 () Bool)

(assert (=> d!1336632 (= lt!1613777 e!2746755)))

(declare-fun res!1820501 () Bool)

(assert (=> d!1336632 (=> (not res!1820501) (not e!2746755))))

(assert (=> d!1336632 (= res!1820501 (is-Cons!49335 (toList!3279 lm!1707)))))

(assert (=> d!1336632 (= (contains!11757 (toList!3279 lm!1707) lt!1613703) lt!1613777)))

(declare-fun b!4410650 () Bool)

(declare-fun e!2746756 () Bool)

(assert (=> b!4410650 (= e!2746755 e!2746756)))

(declare-fun res!1820500 () Bool)

(assert (=> b!4410650 (=> res!1820500 e!2746756)))

(assert (=> b!4410650 (= res!1820500 (= (h!54974 (toList!3279 lm!1707)) lt!1613703))))

(declare-fun b!4410651 () Bool)

(assert (=> b!4410651 (= e!2746756 (contains!11757 (t!356397 (toList!3279 lm!1707)) lt!1613703))))

(assert (= (and d!1336632 res!1820501) b!4410650))

(assert (= (and b!4410650 (not res!1820500)) b!4410651))

(declare-fun m!5086393 () Bool)

(assert (=> d!1336632 m!5086393))

(declare-fun m!5086395 () Bool)

(assert (=> d!1336632 m!5086395))

(declare-fun m!5086397 () Bool)

(assert (=> b!4410651 m!5086397))

(assert (=> b!4410545 d!1336632))

(declare-fun d!1336636 () Bool)

(assert (=> d!1336636 (contains!11757 (toList!3279 lm!1707) (tuple2!48965 hash!377 lt!1613701))))

(declare-fun lt!1613780 () Unit!80405)

(declare-fun choose!27745 (List!49459 (_ BitVec 64) List!49458) Unit!80405)

(assert (=> d!1336636 (= lt!1613780 (choose!27745 (toList!3279 lm!1707) hash!377 lt!1613701))))

(declare-fun e!2746763 () Bool)

(assert (=> d!1336636 e!2746763))

(declare-fun res!1820508 () Bool)

(assert (=> d!1336636 (=> (not res!1820508) (not e!2746763))))

(declare-fun isStrictlySorted!189 (List!49459) Bool)

(assert (=> d!1336636 (= res!1820508 (isStrictlySorted!189 (toList!3279 lm!1707)))))

(assert (=> d!1336636 (= (lemmaGetValueByKeyImpliesContainsTuple!493 (toList!3279 lm!1707) hash!377 lt!1613701) lt!1613780)))

(declare-fun b!4410658 () Bool)

(assert (=> b!4410658 (= e!2746763 (= (getValueByKey!624 (toList!3279 lm!1707) hash!377) (Some!10637 lt!1613701)))))

(assert (= (and d!1336636 res!1820508) b!4410658))

(declare-fun m!5086399 () Bool)

(assert (=> d!1336636 m!5086399))

(declare-fun m!5086401 () Bool)

(assert (=> d!1336636 m!5086401))

(declare-fun m!5086403 () Bool)

(assert (=> d!1336636 m!5086403))

(assert (=> b!4410658 m!5086371))

(assert (=> b!4410545 d!1336636))

(declare-fun d!1336638 () Bool)

(assert (=> d!1336638 (dynLambda!20787 lambda!150588 lt!1613703)))

(declare-fun lt!1613783 () Unit!80405)

(declare-fun choose!27746 (List!49459 Int tuple2!48964) Unit!80405)

(assert (=> d!1336638 (= lt!1613783 (choose!27746 (toList!3279 lm!1707) lambda!150588 lt!1613703))))

(declare-fun e!2746768 () Bool)

(assert (=> d!1336638 e!2746768))

(declare-fun res!1820513 () Bool)

(assert (=> d!1336638 (=> (not res!1820513) (not e!2746768))))

(assert (=> d!1336638 (= res!1820513 (forall!9407 (toList!3279 lm!1707) lambda!150588))))

(assert (=> d!1336638 (= (forallContained!2042 (toList!3279 lm!1707) lambda!150588 lt!1613703) lt!1613783)))

(declare-fun b!4410663 () Bool)

(assert (=> b!4410663 (= e!2746768 (contains!11757 (toList!3279 lm!1707) lt!1613703))))

(assert (= (and d!1336638 res!1820513) b!4410663))

(declare-fun b_lambda!141807 () Bool)

(assert (=> (not b_lambda!141807) (not d!1336638)))

(declare-fun m!5086409 () Bool)

(assert (=> d!1336638 m!5086409))

(declare-fun m!5086411 () Bool)

(assert (=> d!1336638 m!5086411))

(assert (=> d!1336638 m!5086259))

(assert (=> b!4410663 m!5086281))

(assert (=> b!4410545 d!1336638))

(declare-fun d!1336642 () Bool)

(declare-fun content!7902 (List!49458) (Set tuple2!48962))

(assert (=> d!1336642 (= (eq!354 (extractMap!707 (toList!3279 lt!1613702)) (+!911 lt!1613706 lt!1613705)) (= (content!7902 (toList!3280 (extractMap!707 (toList!3279 lt!1613702)))) (content!7902 (toList!3280 (+!911 lt!1613706 lt!1613705)))))))

(declare-fun bs!752673 () Bool)

(assert (= bs!752673 d!1336642))

(declare-fun m!5086413 () Bool)

(assert (=> bs!752673 m!5086413))

(declare-fun m!5086415 () Bool)

(assert (=> bs!752673 m!5086415))

(assert (=> b!4410551 d!1336642))

(declare-fun bs!752677 () Bool)

(declare-fun d!1336644 () Bool)

(assert (= bs!752677 (and d!1336644 start!429102)))

(declare-fun lambda!150614 () Int)

(assert (=> bs!752677 (= lambda!150614 lambda!150588)))

(declare-fun bs!752678 () Bool)

(assert (= bs!752678 (and d!1336644 d!1336626)))

(assert (=> bs!752678 (not (= lambda!150614 lambda!150605))))

(declare-fun lt!1613786 () ListMap!2523)

(declare-fun invariantList!763 (List!49458) Bool)

(assert (=> d!1336644 (invariantList!763 (toList!3280 lt!1613786))))

(declare-fun e!2746771 () ListMap!2523)

(assert (=> d!1336644 (= lt!1613786 e!2746771)))

(declare-fun c!751262 () Bool)

(assert (=> d!1336644 (= c!751262 (is-Cons!49335 (toList!3279 lt!1613702)))))

(assert (=> d!1336644 (forall!9407 (toList!3279 lt!1613702) lambda!150614)))

(assert (=> d!1336644 (= (extractMap!707 (toList!3279 lt!1613702)) lt!1613786)))

(declare-fun b!4410674 () Bool)

(declare-fun addToMapMapFromBucket!314 (List!49458 ListMap!2523) ListMap!2523)

(assert (=> b!4410674 (= e!2746771 (addToMapMapFromBucket!314 (_2!27776 (h!54974 (toList!3279 lt!1613702))) (extractMap!707 (t!356397 (toList!3279 lt!1613702)))))))

(declare-fun b!4410675 () Bool)

(assert (=> b!4410675 (= e!2746771 (ListMap!2524 Nil!49334))))

(assert (= (and d!1336644 c!751262) b!4410674))

(assert (= (and d!1336644 (not c!751262)) b!4410675))

(declare-fun m!5086421 () Bool)

(assert (=> d!1336644 m!5086421))

(declare-fun m!5086423 () Bool)

(assert (=> d!1336644 m!5086423))

(declare-fun m!5086425 () Bool)

(assert (=> b!4410674 m!5086425))

(assert (=> b!4410674 m!5086425))

(declare-fun m!5086427 () Bool)

(assert (=> b!4410674 m!5086427))

(assert (=> b!4410551 d!1336644))

(declare-fun d!1336650 () Bool)

(declare-fun e!2746774 () Bool)

(assert (=> d!1336650 e!2746774))

(declare-fun res!1820519 () Bool)

(assert (=> d!1336650 (=> (not res!1820519) (not e!2746774))))

(declare-fun lt!1613797 () ListMap!2523)

(assert (=> d!1336650 (= res!1820519 (contains!11758 lt!1613797 (_1!27775 lt!1613705)))))

(declare-fun lt!1613796 () List!49458)

(assert (=> d!1336650 (= lt!1613797 (ListMap!2524 lt!1613796))))

(declare-fun lt!1613795 () Unit!80405)

(declare-fun lt!1613798 () Unit!80405)

(assert (=> d!1336650 (= lt!1613795 lt!1613798)))

(declare-datatypes ((Option!10639 0))(
  ( (None!10638) (Some!10638 (v!43788 V!10934)) )
))
(declare-fun getValueByKey!625 (List!49458 K!10688) Option!10639)

(assert (=> d!1336650 (= (getValueByKey!625 lt!1613796 (_1!27775 lt!1613705)) (Some!10638 (_2!27775 lt!1613705)))))

(declare-fun lemmaContainsTupThenGetReturnValue!371 (List!49458 K!10688 V!10934) Unit!80405)

(assert (=> d!1336650 (= lt!1613798 (lemmaContainsTupThenGetReturnValue!371 lt!1613796 (_1!27775 lt!1613705) (_2!27775 lt!1613705)))))

(declare-fun insertNoDuplicatedKeys!162 (List!49458 K!10688 V!10934) List!49458)

(assert (=> d!1336650 (= lt!1613796 (insertNoDuplicatedKeys!162 (toList!3280 lt!1613706) (_1!27775 lt!1613705) (_2!27775 lt!1613705)))))

(assert (=> d!1336650 (= (+!911 lt!1613706 lt!1613705) lt!1613797)))

(declare-fun b!4410680 () Bool)

(declare-fun res!1820518 () Bool)

(assert (=> b!4410680 (=> (not res!1820518) (not e!2746774))))

(assert (=> b!4410680 (= res!1820518 (= (getValueByKey!625 (toList!3280 lt!1613797) (_1!27775 lt!1613705)) (Some!10638 (_2!27775 lt!1613705))))))

(declare-fun b!4410681 () Bool)

(declare-fun contains!11762 (List!49458 tuple2!48962) Bool)

(assert (=> b!4410681 (= e!2746774 (contains!11762 (toList!3280 lt!1613797) lt!1613705))))

(assert (= (and d!1336650 res!1820519) b!4410680))

(assert (= (and b!4410680 res!1820518) b!4410681))

(declare-fun m!5086429 () Bool)

(assert (=> d!1336650 m!5086429))

(declare-fun m!5086431 () Bool)

(assert (=> d!1336650 m!5086431))

(declare-fun m!5086433 () Bool)

(assert (=> d!1336650 m!5086433))

(declare-fun m!5086435 () Bool)

(assert (=> d!1336650 m!5086435))

(declare-fun m!5086437 () Bool)

(assert (=> b!4410680 m!5086437))

(declare-fun m!5086439 () Bool)

(assert (=> b!4410681 m!5086439))

(assert (=> b!4410551 d!1336650))

(declare-fun d!1336652 () Bool)

(declare-fun hash!1944 (Hashable!5040 K!10688) (_ BitVec 64))

(assert (=> d!1336652 (= (hash!1942 hashF!1247 key!3918) (hash!1944 hashF!1247 key!3918))))

(declare-fun bs!752679 () Bool)

(assert (= bs!752679 d!1336652))

(declare-fun m!5086441 () Bool)

(assert (=> bs!752679 m!5086441))

(assert (=> b!4410546 d!1336652))

(declare-fun d!1336654 () Bool)

(declare-fun res!1820524 () Bool)

(declare-fun e!2746779 () Bool)

(assert (=> d!1336654 (=> res!1820524 e!2746779)))

(assert (=> d!1336654 (= res!1820524 (not (is-Cons!49334 newBucket!200)))))

(assert (=> d!1336654 (= (noDuplicateKeys!648 newBucket!200) e!2746779)))

(declare-fun b!4410686 () Bool)

(declare-fun e!2746780 () Bool)

(assert (=> b!4410686 (= e!2746779 e!2746780)))

(declare-fun res!1820525 () Bool)

(assert (=> b!4410686 (=> (not res!1820525) (not e!2746780))))

(assert (=> b!4410686 (= res!1820525 (not (containsKey!983 (t!356396 newBucket!200) (_1!27775 (h!54973 newBucket!200)))))))

(declare-fun b!4410687 () Bool)

(assert (=> b!4410687 (= e!2746780 (noDuplicateKeys!648 (t!356396 newBucket!200)))))

(assert (= (and d!1336654 (not res!1820524)) b!4410686))

(assert (= (and b!4410686 res!1820525) b!4410687))

(declare-fun m!5086443 () Bool)

(assert (=> b!4410686 m!5086443))

(declare-fun m!5086445 () Bool)

(assert (=> b!4410687 m!5086445))

(assert (=> b!4410552 d!1336654))

(assert (=> b!4410547 d!1336614))

(assert (=> start!429102 d!1336622))

(declare-fun d!1336656 () Bool)

(assert (=> d!1336656 (= (inv!64875 lm!1707) (isStrictlySorted!189 (toList!3279 lm!1707)))))

(declare-fun bs!752680 () Bool)

(assert (= bs!752680 d!1336656))

(assert (=> bs!752680 m!5086403))

(assert (=> start!429102 d!1336656))

(declare-fun b!4410714 () Bool)

(declare-fun e!2746797 () Bool)

(declare-datatypes ((List!49462 0))(
  ( (Nil!49338) (Cons!49338 (h!54979 K!10688) (t!356400 List!49462)) )
))
(declare-fun contains!11763 (List!49462 K!10688) Bool)

(declare-fun keys!16784 (ListMap!2523) List!49462)

(assert (=> b!4410714 (= e!2746797 (not (contains!11763 (keys!16784 lt!1613706) key!3918)))))

(declare-fun b!4410715 () Bool)

(declare-fun e!2746800 () Bool)

(assert (=> b!4410715 (= e!2746800 (contains!11763 (keys!16784 lt!1613706) key!3918))))

(declare-fun d!1336658 () Bool)

(declare-fun e!2746801 () Bool)

(assert (=> d!1336658 e!2746801))

(declare-fun res!1820532 () Bool)

(assert (=> d!1336658 (=> res!1820532 e!2746801)))

(assert (=> d!1336658 (= res!1820532 e!2746797)))

(declare-fun res!1820533 () Bool)

(assert (=> d!1336658 (=> (not res!1820533) (not e!2746797))))

(declare-fun lt!1613837 () Bool)

(assert (=> d!1336658 (= res!1820533 (not lt!1613837))))

(declare-fun lt!1613836 () Bool)

(assert (=> d!1336658 (= lt!1613837 lt!1613836)))

(declare-fun lt!1613831 () Unit!80405)

(declare-fun e!2746799 () Unit!80405)

(assert (=> d!1336658 (= lt!1613831 e!2746799)))

(declare-fun c!751274 () Bool)

(assert (=> d!1336658 (= c!751274 lt!1613836)))

(declare-fun containsKey!984 (List!49458 K!10688) Bool)

(assert (=> d!1336658 (= lt!1613836 (containsKey!984 (toList!3280 lt!1613706) key!3918))))

(assert (=> d!1336658 (= (contains!11758 lt!1613706 key!3918) lt!1613837)))

(declare-fun b!4410716 () Bool)

(declare-fun lt!1613835 () Unit!80405)

(assert (=> b!4410716 (= e!2746799 lt!1613835)))

(declare-fun lt!1613834 () Unit!80405)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!535 (List!49458 K!10688) Unit!80405)

(assert (=> b!4410716 (= lt!1613834 (lemmaContainsKeyImpliesGetValueByKeyDefined!535 (toList!3280 lt!1613706) key!3918))))

(declare-fun isDefined!7932 (Option!10639) Bool)

(assert (=> b!4410716 (isDefined!7932 (getValueByKey!625 (toList!3280 lt!1613706) key!3918))))

(declare-fun lt!1613833 () Unit!80405)

(assert (=> b!4410716 (= lt!1613833 lt!1613834)))

(declare-fun lemmaInListThenGetKeysListContains!207 (List!49458 K!10688) Unit!80405)

(assert (=> b!4410716 (= lt!1613835 (lemmaInListThenGetKeysListContains!207 (toList!3280 lt!1613706) key!3918))))

(declare-fun call!307033 () Bool)

(assert (=> b!4410716 call!307033))

(declare-fun b!4410717 () Bool)

(declare-fun e!2746798 () List!49462)

(declare-fun getKeysList!210 (List!49458) List!49462)

(assert (=> b!4410717 (= e!2746798 (getKeysList!210 (toList!3280 lt!1613706)))))

(declare-fun b!4410718 () Bool)

(declare-fun e!2746802 () Unit!80405)

(declare-fun Unit!80410 () Unit!80405)

(assert (=> b!4410718 (= e!2746802 Unit!80410)))

(declare-fun bm!307028 () Bool)

(assert (=> bm!307028 (= call!307033 (contains!11763 e!2746798 key!3918))))

(declare-fun c!751275 () Bool)

(assert (=> bm!307028 (= c!751275 c!751274)))

(declare-fun b!4410719 () Bool)

(assert (=> b!4410719 false))

(declare-fun lt!1613838 () Unit!80405)

(declare-fun lt!1613832 () Unit!80405)

(assert (=> b!4410719 (= lt!1613838 lt!1613832)))

(assert (=> b!4410719 (containsKey!984 (toList!3280 lt!1613706) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!208 (List!49458 K!10688) Unit!80405)

(assert (=> b!4410719 (= lt!1613832 (lemmaInGetKeysListThenContainsKey!208 (toList!3280 lt!1613706) key!3918))))

(declare-fun Unit!80411 () Unit!80405)

(assert (=> b!4410719 (= e!2746802 Unit!80411)))

(declare-fun b!4410720 () Bool)

(assert (=> b!4410720 (= e!2746799 e!2746802)))

(declare-fun c!751273 () Bool)

(assert (=> b!4410720 (= c!751273 call!307033)))

(declare-fun b!4410721 () Bool)

(assert (=> b!4410721 (= e!2746801 e!2746800)))

(declare-fun res!1820534 () Bool)

(assert (=> b!4410721 (=> (not res!1820534) (not e!2746800))))

(assert (=> b!4410721 (= res!1820534 (isDefined!7932 (getValueByKey!625 (toList!3280 lt!1613706) key!3918)))))

(declare-fun b!4410722 () Bool)

(assert (=> b!4410722 (= e!2746798 (keys!16784 lt!1613706))))

(assert (= (and d!1336658 c!751274) b!4410716))

(assert (= (and d!1336658 (not c!751274)) b!4410720))

(assert (= (and b!4410720 c!751273) b!4410719))

(assert (= (and b!4410720 (not c!751273)) b!4410718))

(assert (= (or b!4410716 b!4410720) bm!307028))

(assert (= (and bm!307028 c!751275) b!4410717))

(assert (= (and bm!307028 (not c!751275)) b!4410722))

(assert (= (and d!1336658 res!1820533) b!4410714))

(assert (= (and d!1336658 (not res!1820532)) b!4410721))

(assert (= (and b!4410721 res!1820534) b!4410715))

(declare-fun m!5086447 () Bool)

(assert (=> d!1336658 m!5086447))

(declare-fun m!5086449 () Bool)

(assert (=> b!4410716 m!5086449))

(declare-fun m!5086451 () Bool)

(assert (=> b!4410716 m!5086451))

(assert (=> b!4410716 m!5086451))

(declare-fun m!5086453 () Bool)

(assert (=> b!4410716 m!5086453))

(declare-fun m!5086455 () Bool)

(assert (=> b!4410716 m!5086455))

(declare-fun m!5086457 () Bool)

(assert (=> b!4410722 m!5086457))

(assert (=> b!4410715 m!5086457))

(assert (=> b!4410715 m!5086457))

(declare-fun m!5086459 () Bool)

(assert (=> b!4410715 m!5086459))

(assert (=> b!4410719 m!5086447))

(declare-fun m!5086461 () Bool)

(assert (=> b!4410719 m!5086461))

(declare-fun m!5086463 () Bool)

(assert (=> b!4410717 m!5086463))

(assert (=> b!4410714 m!5086457))

(assert (=> b!4410714 m!5086457))

(assert (=> b!4410714 m!5086459))

(declare-fun m!5086465 () Bool)

(assert (=> bm!307028 m!5086465))

(assert (=> b!4410721 m!5086451))

(assert (=> b!4410721 m!5086451))

(assert (=> b!4410721 m!5086453))

(assert (=> b!4410553 d!1336658))

(declare-fun bs!752681 () Bool)

(declare-fun d!1336660 () Bool)

(assert (= bs!752681 (and d!1336660 start!429102)))

(declare-fun lambda!150615 () Int)

(assert (=> bs!752681 (= lambda!150615 lambda!150588)))

(declare-fun bs!752682 () Bool)

(assert (= bs!752682 (and d!1336660 d!1336626)))

(assert (=> bs!752682 (not (= lambda!150615 lambda!150605))))

(declare-fun bs!752683 () Bool)

(assert (= bs!752683 (and d!1336660 d!1336644)))

(assert (=> bs!752683 (= lambda!150615 lambda!150614)))

(declare-fun lt!1613839 () ListMap!2523)

(assert (=> d!1336660 (invariantList!763 (toList!3280 lt!1613839))))

(declare-fun e!2746805 () ListMap!2523)

(assert (=> d!1336660 (= lt!1613839 e!2746805)))

(declare-fun c!751278 () Bool)

(assert (=> d!1336660 (= c!751278 (is-Cons!49335 (toList!3279 lm!1707)))))

(assert (=> d!1336660 (forall!9407 (toList!3279 lm!1707) lambda!150615)))

(assert (=> d!1336660 (= (extractMap!707 (toList!3279 lm!1707)) lt!1613839)))

(declare-fun b!4410727 () Bool)

(assert (=> b!4410727 (= e!2746805 (addToMapMapFromBucket!314 (_2!27776 (h!54974 (toList!3279 lm!1707))) (extractMap!707 (t!356397 (toList!3279 lm!1707)))))))

(declare-fun b!4410728 () Bool)

(assert (=> b!4410728 (= e!2746805 (ListMap!2524 Nil!49334))))

(assert (= (and d!1336660 c!751278) b!4410727))

(assert (= (and d!1336660 (not c!751278)) b!4410728))

(declare-fun m!5086467 () Bool)

(assert (=> d!1336660 m!5086467))

(declare-fun m!5086469 () Bool)

(assert (=> d!1336660 m!5086469))

(declare-fun m!5086471 () Bool)

(assert (=> b!4410727 m!5086471))

(assert (=> b!4410727 m!5086471))

(declare-fun m!5086473 () Bool)

(assert (=> b!4410727 m!5086473))

(assert (=> b!4410553 d!1336660))

(declare-fun e!2746814 () Bool)

(declare-fun b!4410739 () Bool)

(declare-fun tp!1332115 () Bool)

(assert (=> b!4410739 (= e!2746814 (and tp_is_empty!25829 tp_is_empty!25831 tp!1332115))))

(assert (=> b!4410555 (= tp!1332106 e!2746814)))

(assert (= (and b!4410555 (is-Cons!49334 (t!356396 newBucket!200))) b!4410739))

(declare-fun b!4410744 () Bool)

(declare-fun e!2746817 () Bool)

(declare-fun tp!1332120 () Bool)

(declare-fun tp!1332121 () Bool)

(assert (=> b!4410744 (= e!2746817 (and tp!1332120 tp!1332121))))

(assert (=> b!4410548 (= tp!1332105 e!2746817)))

(assert (= (and b!4410548 (is-Cons!49335 (toList!3279 lm!1707))) b!4410744))

(declare-fun b_lambda!141809 () Bool)

(assert (= b_lambda!141801 (or start!429102 b_lambda!141809)))

(declare-fun bs!752684 () Bool)

(declare-fun d!1336662 () Bool)

(assert (= bs!752684 (and d!1336662 start!429102)))

(assert (=> bs!752684 (= (dynLambda!20787 lambda!150588 (tuple2!48965 hash!377 newBucket!200)) (noDuplicateKeys!648 (_2!27776 (tuple2!48965 hash!377 newBucket!200))))))

(declare-fun m!5086475 () Bool)

(assert (=> bs!752684 m!5086475))

(assert (=> b!4410611 d!1336662))

(declare-fun b_lambda!141811 () Bool)

(assert (= b_lambda!141803 (or start!429102 b_lambda!141811)))

(declare-fun bs!752685 () Bool)

(declare-fun d!1336664 () Bool)

(assert (= bs!752685 (and d!1336664 start!429102)))

(assert (=> bs!752685 (= (dynLambda!20787 lambda!150588 (h!54974 (toList!3279 lm!1707))) (noDuplicateKeys!648 (_2!27776 (h!54974 (toList!3279 lm!1707)))))))

(declare-fun m!5086477 () Bool)

(assert (=> bs!752685 m!5086477))

(assert (=> b!4410612 d!1336664))

(declare-fun b_lambda!141813 () Bool)

(assert (= b_lambda!141807 (or start!429102 b_lambda!141813)))

(declare-fun bs!752686 () Bool)

(declare-fun d!1336666 () Bool)

(assert (= bs!752686 (and d!1336666 start!429102)))

(assert (=> bs!752686 (= (dynLambda!20787 lambda!150588 lt!1613703) (noDuplicateKeys!648 (_2!27776 lt!1613703)))))

(declare-fun m!5086479 () Bool)

(assert (=> bs!752686 m!5086479))

(assert (=> d!1336638 d!1336666))

(declare-fun b_lambda!141815 () Bool)

(assert (= b_lambda!141799 (or start!429102 b_lambda!141815)))

(declare-fun bs!752687 () Bool)

(declare-fun d!1336668 () Bool)

(assert (= bs!752687 (and d!1336668 start!429102)))

(assert (=> bs!752687 (= (dynLambda!20787 lambda!150588 (h!54974 (toList!3279 lt!1613702))) (noDuplicateKeys!648 (_2!27776 (h!54974 (toList!3279 lt!1613702)))))))

(declare-fun m!5086481 () Bool)

(assert (=> bs!752687 m!5086481))

(assert (=> b!4410600 d!1336668))

(push 1)

(assert (not b_lambda!141811))

(assert (not d!1336612))

(assert (not b!4410727))

(assert (not bs!752687))

(assert (not d!1336652))

(assert (not b!4410687))

(assert (not d!1336642))

(assert (not b!4410722))

(assert (not d!1336632))

(assert (not b!4410620))

(assert (not d!1336624))

(assert (not b_lambda!141815))

(assert (not d!1336626))

(assert (not d!1336660))

(assert (not b!4410716))

(assert (not b!4410658))

(assert (not d!1336628))

(assert (not d!1336630))

(assert (not b!4410601))

(assert (not b_lambda!141809))

(assert (not b!4410613))

(assert (not d!1336650))

(assert (not bs!752685))

(assert tp_is_empty!25831)

(assert (not b!4410744))

(assert (not b_lambda!141813))

(assert (not d!1336658))

(assert (not b!4410606))

(assert (not b!4410663))

(assert (not b!4410607))

(assert (not d!1336656))

(assert (not b!4410715))

(assert (not d!1336638))

(assert tp_is_empty!25829)

(assert (not d!1336644))

(assert (not b!4410680))

(assert (not bs!752686))

(assert (not bm!307028))

(assert (not d!1336616))

(assert (not b!4410674))

(assert (not b!4410651))

(assert (not b!4410641))

(assert (not b!4410717))

(assert (not bs!752684))

(assert (not d!1336636))

(assert (not b!4410714))

(assert (not b!4410686))

(assert (not b!4410681))

(assert (not b!4410622))

(assert (not b!4410739))

(assert (not b!4410721))

(assert (not b!4410719))

(assert (not d!1336618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

