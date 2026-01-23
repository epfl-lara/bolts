; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466120 () Bool)

(assert start!466120)

(declare-fun res!1947045 () Bool)

(declare-fun e!2893020 () Bool)

(assert (=> start!466120 (=> (not res!1947045) (not e!2893020))))

(declare-datatypes ((K!13065 0))(
  ( (K!13066 (val!18723 Int)) )
))
(declare-datatypes ((V!13311 0))(
  ( (V!13312 (val!18724 Int)) )
))
(declare-datatypes ((tuple2!52710 0))(
  ( (tuple2!52711 (_1!29649 K!13065) (_2!29649 V!13311)) )
))
(declare-datatypes ((List!51822 0))(
  ( (Nil!51698) (Cons!51698 (h!57792 tuple2!52710) (t!358896 List!51822)) )
))
(declare-fun oldBucket!40 () List!51822)

(declare-fun noDuplicateKeys!1566 (List!51822) Bool)

(assert (=> start!466120 (= res!1947045 (noDuplicateKeys!1566 oldBucket!40))))

(assert (=> start!466120 e!2893020))

(assert (=> start!466120 true))

(declare-fun e!2893022 () Bool)

(assert (=> start!466120 e!2893022))

(declare-fun tp_is_empty!29557 () Bool)

(assert (=> start!466120 tp_is_empty!29557))

(declare-fun e!2893021 () Bool)

(assert (=> start!466120 e!2893021))

(declare-fun b!4637609 () Bool)

(declare-fun e!2893019 () Bool)

(declare-fun e!2893017 () Bool)

(assert (=> b!4637609 (= e!2893019 e!2893017)))

(declare-fun res!1947046 () Bool)

(assert (=> b!4637609 (=> res!1947046 e!2893017)))

(declare-datatypes ((ListMap!4401 0))(
  ( (ListMap!4402 (toList!5082 List!51822)) )
))
(declare-fun lt!1800096 () ListMap!4401)

(declare-fun newBucket!224 () List!51822)

(declare-fun addToMapMapFromBucket!1025 (List!51822 ListMap!4401) ListMap!4401)

(assert (=> b!4637609 (= res!1947046 (not (= lt!1800096 (addToMapMapFromBucket!1025 newBucket!224 (ListMap!4402 Nil!51698)))))))

(declare-fun lt!1800097 () List!51822)

(assert (=> b!4637609 (= lt!1800096 (addToMapMapFromBucket!1025 lt!1800097 (ListMap!4402 Nil!51698)))))

(declare-fun b!4637610 () Bool)

(declare-fun eq!867 (ListMap!4401 ListMap!4401) Bool)

(declare-fun +!1920 (ListMap!4401 tuple2!52710) ListMap!4401)

(assert (=> b!4637610 (= e!2893017 (eq!867 (+!1920 lt!1800096 (h!57792 oldBucket!40)) (addToMapMapFromBucket!1025 oldBucket!40 (ListMap!4402 Nil!51698))))))

(declare-fun lt!1800098 () tuple2!52710)

(assert (=> b!4637610 (eq!867 (addToMapMapFromBucket!1025 (Cons!51698 lt!1800098 lt!1800097) (ListMap!4402 Nil!51698)) (+!1920 lt!1800096 lt!1800098))))

(declare-datatypes ((Unit!114653 0))(
  ( (Unit!114654) )
))
(declare-fun lt!1800101 () Unit!114653)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!118 (tuple2!52710 List!51822 ListMap!4401) Unit!114653)

(assert (=> b!4637610 (= lt!1800101 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!118 lt!1800098 lt!1800097 (ListMap!4402 Nil!51698)))))

(declare-fun head!9686 (List!51822) tuple2!52710)

(assert (=> b!4637610 (= lt!1800098 (head!9686 oldBucket!40))))

(declare-fun b!4637611 () Bool)

(declare-fun res!1947047 () Bool)

(assert (=> b!4637611 (=> res!1947047 e!2893019)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((tuple2!52712 0))(
  ( (tuple2!52713 (_1!29650 (_ BitVec 64)) (_2!29650 List!51822)) )
))
(declare-datatypes ((List!51823 0))(
  ( (Nil!51699) (Cons!51699 (h!57793 tuple2!52712) (t!358897 List!51823)) )
))
(declare-fun extractMap!1622 (List!51823) ListMap!4401)

(assert (=> b!4637611 (= res!1947047 (not (= (extractMap!1622 (Cons!51699 (tuple2!52713 hash!414 lt!1800097) Nil!51699)) (extractMap!1622 (Cons!51699 (tuple2!52713 hash!414 newBucket!224) Nil!51699)))))))

(declare-fun b!4637612 () Bool)

(declare-fun e!2893024 () Bool)

(assert (=> b!4637612 (= e!2893024 e!2893019)))

(declare-fun res!1947051 () Bool)

(assert (=> b!4637612 (=> res!1947051 e!2893019)))

(assert (=> b!4637612 (= res!1947051 (not (= lt!1800097 newBucket!224)))))

(declare-fun tail!8193 (List!51822) List!51822)

(assert (=> b!4637612 (= lt!1800097 (tail!8193 oldBucket!40))))

(declare-fun b!4637613 () Bool)

(declare-fun e!2893018 () Bool)

(assert (=> b!4637613 (= e!2893018 (not e!2893024))))

(declare-fun res!1947048 () Bool)

(assert (=> b!4637613 (=> res!1947048 e!2893024)))

(declare-fun key!4968 () K!13065)

(get-info :version)

(assert (=> b!4637613 (= res!1947048 (or (not ((_ is Cons!51698) oldBucket!40)) (not (= (_1!29649 (h!57792 oldBucket!40)) key!4968))))))

(declare-fun e!2893023 () Bool)

(assert (=> b!4637613 e!2893023))

(declare-fun res!1947055 () Bool)

(assert (=> b!4637613 (=> (not res!1947055) (not e!2893023))))

(declare-fun lt!1800099 () ListMap!4401)

(declare-fun lt!1800100 () ListMap!4401)

(assert (=> b!4637613 (= res!1947055 (= lt!1800100 (addToMapMapFromBucket!1025 oldBucket!40 lt!1800099)))))

(assert (=> b!4637613 (= lt!1800099 (extractMap!1622 Nil!51699))))

(assert (=> b!4637613 true))

(declare-fun b!4637614 () Bool)

(declare-fun res!1947050 () Bool)

(assert (=> b!4637614 (=> (not res!1947050) (not e!2893018))))

(declare-datatypes ((Hashable!5963 0))(
  ( (HashableExt!5962 (__x!31666 Int)) )
))
(declare-fun hashF!1389 () Hashable!5963)

(declare-fun hash!3644 (Hashable!5963 K!13065) (_ BitVec 64))

(assert (=> b!4637614 (= res!1947050 (= (hash!3644 hashF!1389 key!4968) hash!414))))

(declare-fun b!4637615 () Bool)

(declare-fun res!1947052 () Bool)

(assert (=> b!4637615 (=> (not res!1947052) (not e!2893020))))

(declare-fun allKeysSameHash!1420 (List!51822 (_ BitVec 64) Hashable!5963) Bool)

(assert (=> b!4637615 (= res!1947052 (allKeysSameHash!1420 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637616 () Bool)

(assert (=> b!4637616 (= e!2893020 e!2893018)))

(declare-fun res!1947053 () Bool)

(assert (=> b!4637616 (=> (not res!1947053) (not e!2893018))))

(declare-fun contains!14813 (ListMap!4401 K!13065) Bool)

(assert (=> b!4637616 (= res!1947053 (contains!14813 lt!1800100 key!4968))))

(assert (=> b!4637616 (= lt!1800100 (extractMap!1622 (Cons!51699 (tuple2!52713 hash!414 oldBucket!40) Nil!51699)))))

(declare-fun b!4637617 () Bool)

(declare-fun res!1947056 () Bool)

(assert (=> b!4637617 (=> (not res!1947056) (not e!2893020))))

(assert (=> b!4637617 (= res!1947056 (noDuplicateKeys!1566 newBucket!224))))

(declare-fun tp_is_empty!29559 () Bool)

(declare-fun tp!1342643 () Bool)

(declare-fun b!4637618 () Bool)

(assert (=> b!4637618 (= e!2893021 (and tp_is_empty!29557 tp_is_empty!29559 tp!1342643))))

(declare-fun b!4637619 () Bool)

(declare-fun res!1947054 () Bool)

(assert (=> b!4637619 (=> (not res!1947054) (not e!2893020))))

(declare-fun removePairForKey!1189 (List!51822 K!13065) List!51822)

(assert (=> b!4637619 (= res!1947054 (= (removePairForKey!1189 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1342642 () Bool)

(declare-fun b!4637620 () Bool)

(assert (=> b!4637620 (= e!2893022 (and tp_is_empty!29557 tp_is_empty!29559 tp!1342642))))

(declare-fun b!4637621 () Bool)

(assert (=> b!4637621 (= e!2893023 (= lt!1800099 (ListMap!4402 Nil!51698)))))

(declare-fun b!4637622 () Bool)

(declare-fun res!1947049 () Bool)

(assert (=> b!4637622 (=> (not res!1947049) (not e!2893018))))

(assert (=> b!4637622 (= res!1947049 (allKeysSameHash!1420 newBucket!224 hash!414 hashF!1389))))

(assert (= (and start!466120 res!1947045) b!4637617))

(assert (= (and b!4637617 res!1947056) b!4637619))

(assert (= (and b!4637619 res!1947054) b!4637615))

(assert (= (and b!4637615 res!1947052) b!4637616))

(assert (= (and b!4637616 res!1947053) b!4637614))

(assert (= (and b!4637614 res!1947050) b!4637622))

(assert (= (and b!4637622 res!1947049) b!4637613))

(assert (= (and b!4637613 res!1947055) b!4637621))

(assert (= (and b!4637613 (not res!1947048)) b!4637612))

(assert (= (and b!4637612 (not res!1947051)) b!4637611))

(assert (= (and b!4637611 (not res!1947047)) b!4637609))

(assert (= (and b!4637609 (not res!1947046)) b!4637610))

(assert (= (and start!466120 ((_ is Cons!51698) oldBucket!40)) b!4637620))

(assert (= (and start!466120 ((_ is Cons!51698) newBucket!224)) b!4637618))

(declare-fun m!5495515 () Bool)

(assert (=> b!4637619 m!5495515))

(declare-fun m!5495517 () Bool)

(assert (=> b!4637610 m!5495517))

(declare-fun m!5495519 () Bool)

(assert (=> b!4637610 m!5495519))

(declare-fun m!5495521 () Bool)

(assert (=> b!4637610 m!5495521))

(declare-fun m!5495523 () Bool)

(assert (=> b!4637610 m!5495523))

(assert (=> b!4637610 m!5495517))

(assert (=> b!4637610 m!5495519))

(declare-fun m!5495525 () Bool)

(assert (=> b!4637610 m!5495525))

(declare-fun m!5495527 () Bool)

(assert (=> b!4637610 m!5495527))

(declare-fun m!5495529 () Bool)

(assert (=> b!4637610 m!5495529))

(assert (=> b!4637610 m!5495521))

(declare-fun m!5495531 () Bool)

(assert (=> b!4637610 m!5495531))

(assert (=> b!4637610 m!5495529))

(declare-fun m!5495533 () Bool)

(assert (=> b!4637609 m!5495533))

(declare-fun m!5495535 () Bool)

(assert (=> b!4637609 m!5495535))

(declare-fun m!5495537 () Bool)

(assert (=> start!466120 m!5495537))

(declare-fun m!5495539 () Bool)

(assert (=> b!4637612 m!5495539))

(declare-fun m!5495541 () Bool)

(assert (=> b!4637613 m!5495541))

(declare-fun m!5495543 () Bool)

(assert (=> b!4637613 m!5495543))

(declare-fun m!5495545 () Bool)

(assert (=> b!4637611 m!5495545))

(declare-fun m!5495547 () Bool)

(assert (=> b!4637611 m!5495547))

(declare-fun m!5495549 () Bool)

(assert (=> b!4637617 m!5495549))

(declare-fun m!5495551 () Bool)

(assert (=> b!4637616 m!5495551))

(declare-fun m!5495553 () Bool)

(assert (=> b!4637616 m!5495553))

(declare-fun m!5495555 () Bool)

(assert (=> b!4637622 m!5495555))

(declare-fun m!5495557 () Bool)

(assert (=> b!4637614 m!5495557))

(declare-fun m!5495559 () Bool)

(assert (=> b!4637615 m!5495559))

(check-sat (not b!4637613) (not b!4637620) tp_is_empty!29559 (not b!4637612) (not b!4637614) (not b!4637619) (not b!4637615) (not b!4637611) (not b!4637618) (not b!4637610) (not b!4637616) (not b!4637617) (not b!4637622) tp_is_empty!29557 (not start!466120) (not b!4637609))
(check-sat)
(get-model)

(declare-fun d!1462309 () Bool)

(assert (=> d!1462309 (= (tail!8193 oldBucket!40) (t!358896 oldBucket!40))))

(assert (=> b!4637612 d!1462309))

(declare-fun d!1462311 () Bool)

(assert (=> d!1462311 true))

(assert (=> d!1462311 true))

(declare-fun lambda!195347 () Int)

(declare-fun forall!10915 (List!51822 Int) Bool)

(assert (=> d!1462311 (= (allKeysSameHash!1420 newBucket!224 hash!414 hashF!1389) (forall!10915 newBucket!224 lambda!195347))))

(declare-fun bs!1031820 () Bool)

(assert (= bs!1031820 d!1462311))

(declare-fun m!5495583 () Bool)

(assert (=> bs!1031820 m!5495583))

(assert (=> b!4637622 d!1462311))

(declare-fun d!1462319 () Bool)

(declare-fun lt!1800108 () ListMap!4401)

(declare-fun invariantList!1248 (List!51822) Bool)

(assert (=> d!1462319 (invariantList!1248 (toList!5082 lt!1800108))))

(declare-fun e!2893037 () ListMap!4401)

(assert (=> d!1462319 (= lt!1800108 e!2893037)))

(declare-fun c!793685 () Bool)

(assert (=> d!1462319 (= c!793685 ((_ is Cons!51699) (Cons!51699 (tuple2!52713 hash!414 lt!1800097) Nil!51699)))))

(declare-fun lambda!195350 () Int)

(declare-fun forall!10916 (List!51823 Int) Bool)

(assert (=> d!1462319 (forall!10916 (Cons!51699 (tuple2!52713 hash!414 lt!1800097) Nil!51699) lambda!195350)))

(assert (=> d!1462319 (= (extractMap!1622 (Cons!51699 (tuple2!52713 hash!414 lt!1800097) Nil!51699)) lt!1800108)))

(declare-fun b!4637645 () Bool)

(assert (=> b!4637645 (= e!2893037 (addToMapMapFromBucket!1025 (_2!29650 (h!57793 (Cons!51699 (tuple2!52713 hash!414 lt!1800097) Nil!51699))) (extractMap!1622 (t!358897 (Cons!51699 (tuple2!52713 hash!414 lt!1800097) Nil!51699)))))))

(declare-fun b!4637646 () Bool)

(assert (=> b!4637646 (= e!2893037 (ListMap!4402 Nil!51698))))

(assert (= (and d!1462319 c!793685) b!4637645))

(assert (= (and d!1462319 (not c!793685)) b!4637646))

(declare-fun m!5495585 () Bool)

(assert (=> d!1462319 m!5495585))

(declare-fun m!5495587 () Bool)

(assert (=> d!1462319 m!5495587))

(declare-fun m!5495589 () Bool)

(assert (=> b!4637645 m!5495589))

(assert (=> b!4637645 m!5495589))

(declare-fun m!5495591 () Bool)

(assert (=> b!4637645 m!5495591))

(assert (=> b!4637611 d!1462319))

(declare-fun bs!1031821 () Bool)

(declare-fun d!1462321 () Bool)

(assert (= bs!1031821 (and d!1462321 d!1462319)))

(declare-fun lambda!195351 () Int)

(assert (=> bs!1031821 (= lambda!195351 lambda!195350)))

(declare-fun lt!1800109 () ListMap!4401)

(assert (=> d!1462321 (invariantList!1248 (toList!5082 lt!1800109))))

(declare-fun e!2893038 () ListMap!4401)

(assert (=> d!1462321 (= lt!1800109 e!2893038)))

(declare-fun c!793686 () Bool)

(assert (=> d!1462321 (= c!793686 ((_ is Cons!51699) (Cons!51699 (tuple2!52713 hash!414 newBucket!224) Nil!51699)))))

(assert (=> d!1462321 (forall!10916 (Cons!51699 (tuple2!52713 hash!414 newBucket!224) Nil!51699) lambda!195351)))

(assert (=> d!1462321 (= (extractMap!1622 (Cons!51699 (tuple2!52713 hash!414 newBucket!224) Nil!51699)) lt!1800109)))

(declare-fun b!4637647 () Bool)

(assert (=> b!4637647 (= e!2893038 (addToMapMapFromBucket!1025 (_2!29650 (h!57793 (Cons!51699 (tuple2!52713 hash!414 newBucket!224) Nil!51699))) (extractMap!1622 (t!358897 (Cons!51699 (tuple2!52713 hash!414 newBucket!224) Nil!51699)))))))

(declare-fun b!4637648 () Bool)

(assert (=> b!4637648 (= e!2893038 (ListMap!4402 Nil!51698))))

(assert (= (and d!1462321 c!793686) b!4637647))

(assert (= (and d!1462321 (not c!793686)) b!4637648))

(declare-fun m!5495593 () Bool)

(assert (=> d!1462321 m!5495593))

(declare-fun m!5495595 () Bool)

(assert (=> d!1462321 m!5495595))

(declare-fun m!5495597 () Bool)

(assert (=> b!4637647 m!5495597))

(assert (=> b!4637647 m!5495597))

(declare-fun m!5495599 () Bool)

(assert (=> b!4637647 m!5495599))

(assert (=> b!4637611 d!1462321))

(declare-fun d!1462323 () Bool)

(declare-fun e!2893043 () Bool)

(assert (=> d!1462323 e!2893043))

(declare-fun res!1947068 () Bool)

(assert (=> d!1462323 (=> (not res!1947068) (not e!2893043))))

(declare-fun lt!1800129 () ListMap!4401)

(assert (=> d!1462323 (= res!1947068 (contains!14813 lt!1800129 (_1!29649 (h!57792 oldBucket!40))))))

(declare-fun lt!1800131 () List!51822)

(assert (=> d!1462323 (= lt!1800129 (ListMap!4402 lt!1800131))))

(declare-fun lt!1800130 () Unit!114653)

(declare-fun lt!1800128 () Unit!114653)

(assert (=> d!1462323 (= lt!1800130 lt!1800128)))

(declare-datatypes ((Option!11720 0))(
  ( (None!11719) (Some!11719 (v!45929 V!13311)) )
))
(declare-fun getValueByKey!1536 (List!51822 K!13065) Option!11720)

(assert (=> d!1462323 (= (getValueByKey!1536 lt!1800131 (_1!29649 (h!57792 oldBucket!40))) (Some!11719 (_2!29649 (h!57792 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!890 (List!51822 K!13065 V!13311) Unit!114653)

(assert (=> d!1462323 (= lt!1800128 (lemmaContainsTupThenGetReturnValue!890 lt!1800131 (_1!29649 (h!57792 oldBucket!40)) (_2!29649 (h!57792 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!398 (List!51822 K!13065 V!13311) List!51822)

(assert (=> d!1462323 (= lt!1800131 (insertNoDuplicatedKeys!398 (toList!5082 lt!1800096) (_1!29649 (h!57792 oldBucket!40)) (_2!29649 (h!57792 oldBucket!40))))))

(assert (=> d!1462323 (= (+!1920 lt!1800096 (h!57792 oldBucket!40)) lt!1800129)))

(declare-fun b!4637657 () Bool)

(declare-fun res!1947067 () Bool)

(assert (=> b!4637657 (=> (not res!1947067) (not e!2893043))))

(assert (=> b!4637657 (= res!1947067 (= (getValueByKey!1536 (toList!5082 lt!1800129) (_1!29649 (h!57792 oldBucket!40))) (Some!11719 (_2!29649 (h!57792 oldBucket!40)))))))

(declare-fun b!4637658 () Bool)

(declare-fun contains!14816 (List!51822 tuple2!52710) Bool)

(assert (=> b!4637658 (= e!2893043 (contains!14816 (toList!5082 lt!1800129) (h!57792 oldBucket!40)))))

(assert (= (and d!1462323 res!1947068) b!4637657))

(assert (= (and b!4637657 res!1947067) b!4637658))

(declare-fun m!5495601 () Bool)

(assert (=> d!1462323 m!5495601))

(declare-fun m!5495603 () Bool)

(assert (=> d!1462323 m!5495603))

(declare-fun m!5495605 () Bool)

(assert (=> d!1462323 m!5495605))

(declare-fun m!5495607 () Bool)

(assert (=> d!1462323 m!5495607))

(declare-fun m!5495609 () Bool)

(assert (=> b!4637657 m!5495609))

(declare-fun m!5495611 () Bool)

(assert (=> b!4637658 m!5495611))

(assert (=> b!4637610 d!1462323))

(declare-fun d!1462325 () Bool)

(assert (=> d!1462325 (= (head!9686 oldBucket!40) (h!57792 oldBucket!40))))

(assert (=> b!4637610 d!1462325))

(declare-fun d!1462327 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8921 (List!51822) (InoxSet tuple2!52710))

(assert (=> d!1462327 (= (eq!867 (addToMapMapFromBucket!1025 (Cons!51698 lt!1800098 lt!1800097) (ListMap!4402 Nil!51698)) (+!1920 lt!1800096 lt!1800098)) (= (content!8921 (toList!5082 (addToMapMapFromBucket!1025 (Cons!51698 lt!1800098 lt!1800097) (ListMap!4402 Nil!51698)))) (content!8921 (toList!5082 (+!1920 lt!1800096 lt!1800098)))))))

(declare-fun bs!1031822 () Bool)

(assert (= bs!1031822 d!1462327))

(declare-fun m!5495613 () Bool)

(assert (=> bs!1031822 m!5495613))

(declare-fun m!5495615 () Bool)

(assert (=> bs!1031822 m!5495615))

(assert (=> b!4637610 d!1462327))

(declare-fun d!1462329 () Bool)

(assert (=> d!1462329 (eq!867 (addToMapMapFromBucket!1025 (Cons!51698 lt!1800098 lt!1800097) (ListMap!4402 Nil!51698)) (+!1920 (addToMapMapFromBucket!1025 lt!1800097 (ListMap!4402 Nil!51698)) lt!1800098))))

(declare-fun lt!1800166 () Unit!114653)

(declare-fun choose!31722 (tuple2!52710 List!51822 ListMap!4401) Unit!114653)

(assert (=> d!1462329 (= lt!1800166 (choose!31722 lt!1800098 lt!1800097 (ListMap!4402 Nil!51698)))))

(assert (=> d!1462329 (noDuplicateKeys!1566 lt!1800097)))

(assert (=> d!1462329 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!118 lt!1800098 lt!1800097 (ListMap!4402 Nil!51698)) lt!1800166)))

(declare-fun bs!1031823 () Bool)

(assert (= bs!1031823 d!1462329))

(assert (=> bs!1031823 m!5495535))

(declare-fun m!5495617 () Bool)

(assert (=> bs!1031823 m!5495617))

(assert (=> bs!1031823 m!5495517))

(declare-fun m!5495619 () Bool)

(assert (=> bs!1031823 m!5495619))

(assert (=> bs!1031823 m!5495517))

(assert (=> bs!1031823 m!5495617))

(declare-fun m!5495621 () Bool)

(assert (=> bs!1031823 m!5495621))

(declare-fun m!5495623 () Bool)

(assert (=> bs!1031823 m!5495623))

(assert (=> bs!1031823 m!5495535))

(assert (=> b!4637610 d!1462329))

(declare-fun d!1462331 () Bool)

(declare-fun e!2893048 () Bool)

(assert (=> d!1462331 e!2893048))

(declare-fun res!1947076 () Bool)

(assert (=> d!1462331 (=> (not res!1947076) (not e!2893048))))

(declare-fun lt!1800168 () ListMap!4401)

(assert (=> d!1462331 (= res!1947076 (contains!14813 lt!1800168 (_1!29649 lt!1800098)))))

(declare-fun lt!1800170 () List!51822)

(assert (=> d!1462331 (= lt!1800168 (ListMap!4402 lt!1800170))))

(declare-fun lt!1800169 () Unit!114653)

(declare-fun lt!1800167 () Unit!114653)

(assert (=> d!1462331 (= lt!1800169 lt!1800167)))

(assert (=> d!1462331 (= (getValueByKey!1536 lt!1800170 (_1!29649 lt!1800098)) (Some!11719 (_2!29649 lt!1800098)))))

(assert (=> d!1462331 (= lt!1800167 (lemmaContainsTupThenGetReturnValue!890 lt!1800170 (_1!29649 lt!1800098) (_2!29649 lt!1800098)))))

(assert (=> d!1462331 (= lt!1800170 (insertNoDuplicatedKeys!398 (toList!5082 lt!1800096) (_1!29649 lt!1800098) (_2!29649 lt!1800098)))))

(assert (=> d!1462331 (= (+!1920 lt!1800096 lt!1800098) lt!1800168)))

(declare-fun b!4637665 () Bool)

(declare-fun res!1947075 () Bool)

(assert (=> b!4637665 (=> (not res!1947075) (not e!2893048))))

(assert (=> b!4637665 (= res!1947075 (= (getValueByKey!1536 (toList!5082 lt!1800168) (_1!29649 lt!1800098)) (Some!11719 (_2!29649 lt!1800098))))))

(declare-fun b!4637666 () Bool)

(assert (=> b!4637666 (= e!2893048 (contains!14816 (toList!5082 lt!1800168) lt!1800098))))

(assert (= (and d!1462331 res!1947076) b!4637665))

(assert (= (and b!4637665 res!1947075) b!4637666))

(declare-fun m!5495625 () Bool)

(assert (=> d!1462331 m!5495625))

(declare-fun m!5495627 () Bool)

(assert (=> d!1462331 m!5495627))

(declare-fun m!5495629 () Bool)

(assert (=> d!1462331 m!5495629))

(declare-fun m!5495631 () Bool)

(assert (=> d!1462331 m!5495631))

(declare-fun m!5495633 () Bool)

(assert (=> b!4637665 m!5495633))

(declare-fun m!5495635 () Bool)

(assert (=> b!4637666 m!5495635))

(assert (=> b!4637610 d!1462331))

(declare-fun bs!1031970 () Bool)

(declare-fun b!4637769 () Bool)

(assert (= bs!1031970 (and b!4637769 d!1462311)))

(declare-fun lambda!195434 () Int)

(assert (=> bs!1031970 (not (= lambda!195434 lambda!195347))))

(assert (=> b!4637769 true))

(declare-fun bs!1031971 () Bool)

(declare-fun b!4637767 () Bool)

(assert (= bs!1031971 (and b!4637767 d!1462311)))

(declare-fun lambda!195435 () Int)

(assert (=> bs!1031971 (not (= lambda!195435 lambda!195347))))

(declare-fun bs!1031972 () Bool)

(assert (= bs!1031972 (and b!4637767 b!4637769)))

(assert (=> bs!1031972 (= lambda!195435 lambda!195434)))

(assert (=> b!4637767 true))

(declare-fun lambda!195436 () Int)

(assert (=> bs!1031971 (not (= lambda!195436 lambda!195347))))

(declare-fun lt!1800383 () ListMap!4401)

(assert (=> bs!1031972 (= (= lt!1800383 (ListMap!4402 Nil!51698)) (= lambda!195436 lambda!195434))))

(assert (=> b!4637767 (= (= lt!1800383 (ListMap!4402 Nil!51698)) (= lambda!195436 lambda!195435))))

(assert (=> b!4637767 true))

(declare-fun bs!1031973 () Bool)

(declare-fun d!1462333 () Bool)

(assert (= bs!1031973 (and d!1462333 d!1462311)))

(declare-fun lambda!195437 () Int)

(assert (=> bs!1031973 (not (= lambda!195437 lambda!195347))))

(declare-fun bs!1031974 () Bool)

(assert (= bs!1031974 (and d!1462333 b!4637769)))

(declare-fun lt!1800371 () ListMap!4401)

(assert (=> bs!1031974 (= (= lt!1800371 (ListMap!4402 Nil!51698)) (= lambda!195437 lambda!195434))))

(declare-fun bs!1031975 () Bool)

(assert (= bs!1031975 (and d!1462333 b!4637767)))

(assert (=> bs!1031975 (= (= lt!1800371 (ListMap!4402 Nil!51698)) (= lambda!195437 lambda!195435))))

(assert (=> bs!1031975 (= (= lt!1800371 lt!1800383) (= lambda!195437 lambda!195436))))

(assert (=> d!1462333 true))

(declare-fun bm!323701 () Bool)

(declare-fun c!793713 () Bool)

(declare-fun call!323706 () Bool)

(assert (=> bm!323701 (= call!323706 (forall!10915 (ite c!793713 (toList!5082 (ListMap!4402 Nil!51698)) (Cons!51698 lt!1800098 lt!1800097)) (ite c!793713 lambda!195434 lambda!195436)))))

(declare-fun bm!323702 () Bool)

(declare-fun call!323707 () Bool)

(assert (=> bm!323702 (= call!323707 (forall!10915 (ite c!793713 (toList!5082 (ListMap!4402 Nil!51698)) (t!358896 (Cons!51698 lt!1800098 lt!1800097))) (ite c!793713 lambda!195434 lambda!195436)))))

(declare-fun e!2893107 () ListMap!4401)

(assert (=> b!4637767 (= e!2893107 lt!1800383)))

(declare-fun lt!1800375 () ListMap!4401)

(assert (=> b!4637767 (= lt!1800375 (+!1920 (ListMap!4402 Nil!51698) (h!57792 (Cons!51698 lt!1800098 lt!1800097))))))

(assert (=> b!4637767 (= lt!1800383 (addToMapMapFromBucket!1025 (t!358896 (Cons!51698 lt!1800098 lt!1800097)) (+!1920 (ListMap!4402 Nil!51698) (h!57792 (Cons!51698 lt!1800098 lt!1800097)))))))

(declare-fun lt!1800384 () Unit!114653)

(declare-fun call!323708 () Unit!114653)

(assert (=> b!4637767 (= lt!1800384 call!323708)))

(assert (=> b!4637767 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195435)))

(declare-fun lt!1800366 () Unit!114653)

(assert (=> b!4637767 (= lt!1800366 lt!1800384)))

(assert (=> b!4637767 (forall!10915 (toList!5082 lt!1800375) lambda!195436)))

(declare-fun lt!1800370 () Unit!114653)

(declare-fun Unit!114672 () Unit!114653)

(assert (=> b!4637767 (= lt!1800370 Unit!114672)))

(assert (=> b!4637767 call!323707))

(declare-fun lt!1800373 () Unit!114653)

(declare-fun Unit!114673 () Unit!114653)

(assert (=> b!4637767 (= lt!1800373 Unit!114673)))

(declare-fun lt!1800386 () Unit!114653)

(declare-fun Unit!114675 () Unit!114653)

(assert (=> b!4637767 (= lt!1800386 Unit!114675)))

(declare-fun lt!1800381 () Unit!114653)

(declare-fun forallContained!3140 (List!51822 Int tuple2!52710) Unit!114653)

(assert (=> b!4637767 (= lt!1800381 (forallContained!3140 (toList!5082 lt!1800375) lambda!195436 (h!57792 (Cons!51698 lt!1800098 lt!1800097))))))

(assert (=> b!4637767 (contains!14813 lt!1800375 (_1!29649 (h!57792 (Cons!51698 lt!1800098 lt!1800097))))))

(declare-fun lt!1800378 () Unit!114653)

(declare-fun Unit!114677 () Unit!114653)

(assert (=> b!4637767 (= lt!1800378 Unit!114677)))

(assert (=> b!4637767 (contains!14813 lt!1800383 (_1!29649 (h!57792 (Cons!51698 lt!1800098 lt!1800097))))))

(declare-fun lt!1800374 () Unit!114653)

(declare-fun Unit!114680 () Unit!114653)

(assert (=> b!4637767 (= lt!1800374 Unit!114680)))

(assert (=> b!4637767 call!323706))

(declare-fun lt!1800367 () Unit!114653)

(declare-fun Unit!114682 () Unit!114653)

(assert (=> b!4637767 (= lt!1800367 Unit!114682)))

(assert (=> b!4637767 (forall!10915 (toList!5082 lt!1800375) lambda!195436)))

(declare-fun lt!1800385 () Unit!114653)

(declare-fun Unit!114683 () Unit!114653)

(assert (=> b!4637767 (= lt!1800385 Unit!114683)))

(declare-fun lt!1800376 () Unit!114653)

(declare-fun Unit!114684 () Unit!114653)

(assert (=> b!4637767 (= lt!1800376 Unit!114684)))

(declare-fun lt!1800380 () Unit!114653)

(declare-fun addForallContainsKeyThenBeforeAdding!549 (ListMap!4401 ListMap!4401 K!13065 V!13311) Unit!114653)

(assert (=> b!4637767 (= lt!1800380 (addForallContainsKeyThenBeforeAdding!549 (ListMap!4402 Nil!51698) lt!1800383 (_1!29649 (h!57792 (Cons!51698 lt!1800098 lt!1800097))) (_2!29649 (h!57792 (Cons!51698 lt!1800098 lt!1800097)))))))

(assert (=> b!4637767 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195436)))

(declare-fun lt!1800368 () Unit!114653)

(assert (=> b!4637767 (= lt!1800368 lt!1800380)))

(assert (=> b!4637767 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195436)))

(declare-fun lt!1800369 () Unit!114653)

(declare-fun Unit!114687 () Unit!114653)

(assert (=> b!4637767 (= lt!1800369 Unit!114687)))

(declare-fun res!1947119 () Bool)

(assert (=> b!4637767 (= res!1947119 (forall!10915 (Cons!51698 lt!1800098 lt!1800097) lambda!195436))))

(declare-fun e!2893106 () Bool)

(assert (=> b!4637767 (=> (not res!1947119) (not e!2893106))))

(assert (=> b!4637767 e!2893106))

(declare-fun lt!1800377 () Unit!114653)

(declare-fun Unit!114688 () Unit!114653)

(assert (=> b!4637767 (= lt!1800377 Unit!114688)))

(declare-fun b!4637768 () Bool)

(declare-fun e!2893108 () Bool)

(assert (=> b!4637768 (= e!2893108 (invariantList!1248 (toList!5082 lt!1800371)))))

(declare-fun bm!323703 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!550 (ListMap!4401) Unit!114653)

(assert (=> bm!323703 (= call!323708 (lemmaContainsAllItsOwnKeys!550 (ListMap!4402 Nil!51698)))))

(assert (=> d!1462333 e!2893108))

(declare-fun res!1947117 () Bool)

(assert (=> d!1462333 (=> (not res!1947117) (not e!2893108))))

(assert (=> d!1462333 (= res!1947117 (forall!10915 (Cons!51698 lt!1800098 lt!1800097) lambda!195437))))

(assert (=> d!1462333 (= lt!1800371 e!2893107)))

(assert (=> d!1462333 (= c!793713 ((_ is Nil!51698) (Cons!51698 lt!1800098 lt!1800097)))))

(assert (=> d!1462333 (noDuplicateKeys!1566 (Cons!51698 lt!1800098 lt!1800097))))

(assert (=> d!1462333 (= (addToMapMapFromBucket!1025 (Cons!51698 lt!1800098 lt!1800097) (ListMap!4402 Nil!51698)) lt!1800371)))

(assert (=> b!4637769 (= e!2893107 (ListMap!4402 Nil!51698))))

(declare-fun lt!1800372 () Unit!114653)

(assert (=> b!4637769 (= lt!1800372 call!323708)))

(assert (=> b!4637769 call!323706))

(declare-fun lt!1800382 () Unit!114653)

(assert (=> b!4637769 (= lt!1800382 lt!1800372)))

(assert (=> b!4637769 call!323707))

(declare-fun lt!1800379 () Unit!114653)

(declare-fun Unit!114689 () Unit!114653)

(assert (=> b!4637769 (= lt!1800379 Unit!114689)))

(declare-fun b!4637770 () Bool)

(assert (=> b!4637770 (= e!2893106 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195436))))

(declare-fun b!4637771 () Bool)

(declare-fun res!1947118 () Bool)

(assert (=> b!4637771 (=> (not res!1947118) (not e!2893108))))

(assert (=> b!4637771 (= res!1947118 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195437))))

(assert (= (and d!1462333 c!793713) b!4637769))

(assert (= (and d!1462333 (not c!793713)) b!4637767))

(assert (= (and b!4637767 res!1947119) b!4637770))

(assert (= (or b!4637769 b!4637767) bm!323703))

(assert (= (or b!4637769 b!4637767) bm!323701))

(assert (= (or b!4637769 b!4637767) bm!323702))

(assert (= (and d!1462333 res!1947117) b!4637771))

(assert (= (and b!4637771 res!1947118) b!4637768))

(declare-fun m!5495891 () Bool)

(assert (=> bm!323701 m!5495891))

(declare-fun m!5495893 () Bool)

(assert (=> d!1462333 m!5495893))

(declare-fun m!5495895 () Bool)

(assert (=> d!1462333 m!5495895))

(declare-fun m!5495897 () Bool)

(assert (=> b!4637771 m!5495897))

(declare-fun m!5495899 () Bool)

(assert (=> b!4637770 m!5495899))

(declare-fun m!5495901 () Bool)

(assert (=> bm!323702 m!5495901))

(declare-fun m!5495903 () Bool)

(assert (=> bm!323703 m!5495903))

(declare-fun m!5495905 () Bool)

(assert (=> b!4637768 m!5495905))

(declare-fun m!5495907 () Bool)

(assert (=> b!4637767 m!5495907))

(assert (=> b!4637767 m!5495899))

(declare-fun m!5495909 () Bool)

(assert (=> b!4637767 m!5495909))

(assert (=> b!4637767 m!5495909))

(declare-fun m!5495911 () Bool)

(assert (=> b!4637767 m!5495911))

(declare-fun m!5495913 () Bool)

(assert (=> b!4637767 m!5495913))

(declare-fun m!5495915 () Bool)

(assert (=> b!4637767 m!5495915))

(declare-fun m!5495917 () Bool)

(assert (=> b!4637767 m!5495917))

(declare-fun m!5495919 () Bool)

(assert (=> b!4637767 m!5495919))

(assert (=> b!4637767 m!5495899))

(declare-fun m!5495921 () Bool)

(assert (=> b!4637767 m!5495921))

(assert (=> b!4637767 m!5495915))

(declare-fun m!5495923 () Bool)

(assert (=> b!4637767 m!5495923))

(assert (=> b!4637610 d!1462333))

(declare-fun d!1462371 () Bool)

(assert (=> d!1462371 (= (eq!867 (+!1920 lt!1800096 (h!57792 oldBucket!40)) (addToMapMapFromBucket!1025 oldBucket!40 (ListMap!4402 Nil!51698))) (= (content!8921 (toList!5082 (+!1920 lt!1800096 (h!57792 oldBucket!40)))) (content!8921 (toList!5082 (addToMapMapFromBucket!1025 oldBucket!40 (ListMap!4402 Nil!51698))))))))

(declare-fun bs!1031976 () Bool)

(assert (= bs!1031976 d!1462371))

(declare-fun m!5495925 () Bool)

(assert (=> bs!1031976 m!5495925))

(declare-fun m!5495927 () Bool)

(assert (=> bs!1031976 m!5495927))

(assert (=> b!4637610 d!1462371))

(declare-fun bs!1031977 () Bool)

(declare-fun b!4637776 () Bool)

(assert (= bs!1031977 (and b!4637776 b!4637767)))

(declare-fun lambda!195438 () Int)

(assert (=> bs!1031977 (= (= (ListMap!4402 Nil!51698) lt!1800383) (= lambda!195438 lambda!195436))))

(assert (=> bs!1031977 (= lambda!195438 lambda!195435)))

(declare-fun bs!1031978 () Bool)

(assert (= bs!1031978 (and b!4637776 b!4637769)))

(assert (=> bs!1031978 (= lambda!195438 lambda!195434)))

(declare-fun bs!1031979 () Bool)

(assert (= bs!1031979 (and b!4637776 d!1462333)))

(assert (=> bs!1031979 (= (= (ListMap!4402 Nil!51698) lt!1800371) (= lambda!195438 lambda!195437))))

(declare-fun bs!1031980 () Bool)

(assert (= bs!1031980 (and b!4637776 d!1462311)))

(assert (=> bs!1031980 (not (= lambda!195438 lambda!195347))))

(assert (=> b!4637776 true))

(declare-fun bs!1031981 () Bool)

(declare-fun b!4637774 () Bool)

(assert (= bs!1031981 (and b!4637774 b!4637767)))

(declare-fun lambda!195439 () Int)

(assert (=> bs!1031981 (= (= (ListMap!4402 Nil!51698) lt!1800383) (= lambda!195439 lambda!195436))))

(declare-fun bs!1031982 () Bool)

(assert (= bs!1031982 (and b!4637774 b!4637776)))

(assert (=> bs!1031982 (= lambda!195439 lambda!195438)))

(assert (=> bs!1031981 (= lambda!195439 lambda!195435)))

(declare-fun bs!1031983 () Bool)

(assert (= bs!1031983 (and b!4637774 b!4637769)))

(assert (=> bs!1031983 (= lambda!195439 lambda!195434)))

(declare-fun bs!1031984 () Bool)

(assert (= bs!1031984 (and b!4637774 d!1462333)))

(assert (=> bs!1031984 (= (= (ListMap!4402 Nil!51698) lt!1800371) (= lambda!195439 lambda!195437))))

(declare-fun bs!1031985 () Bool)

(assert (= bs!1031985 (and b!4637774 d!1462311)))

(assert (=> bs!1031985 (not (= lambda!195439 lambda!195347))))

(assert (=> b!4637774 true))

(declare-fun lt!1800404 () ListMap!4401)

(declare-fun lambda!195440 () Int)

(assert (=> b!4637774 (= (= lt!1800404 (ListMap!4402 Nil!51698)) (= lambda!195440 lambda!195439))))

(assert (=> bs!1031981 (= (= lt!1800404 lt!1800383) (= lambda!195440 lambda!195436))))

(assert (=> bs!1031982 (= (= lt!1800404 (ListMap!4402 Nil!51698)) (= lambda!195440 lambda!195438))))

(assert (=> bs!1031981 (= (= lt!1800404 (ListMap!4402 Nil!51698)) (= lambda!195440 lambda!195435))))

(assert (=> bs!1031983 (= (= lt!1800404 (ListMap!4402 Nil!51698)) (= lambda!195440 lambda!195434))))

(assert (=> bs!1031984 (= (= lt!1800404 lt!1800371) (= lambda!195440 lambda!195437))))

(assert (=> bs!1031985 (not (= lambda!195440 lambda!195347))))

(assert (=> b!4637774 true))

(declare-fun bs!1031986 () Bool)

(declare-fun d!1462373 () Bool)

(assert (= bs!1031986 (and d!1462373 b!4637774)))

(declare-fun lt!1800392 () ListMap!4401)

(declare-fun lambda!195441 () Int)

(assert (=> bs!1031986 (= (= lt!1800392 (ListMap!4402 Nil!51698)) (= lambda!195441 lambda!195439))))

(declare-fun bs!1031987 () Bool)

(assert (= bs!1031987 (and d!1462373 b!4637767)))

(assert (=> bs!1031987 (= (= lt!1800392 lt!1800383) (= lambda!195441 lambda!195436))))

(declare-fun bs!1031988 () Bool)

(assert (= bs!1031988 (and d!1462373 b!4637776)))

(assert (=> bs!1031988 (= (= lt!1800392 (ListMap!4402 Nil!51698)) (= lambda!195441 lambda!195438))))

(assert (=> bs!1031987 (= (= lt!1800392 (ListMap!4402 Nil!51698)) (= lambda!195441 lambda!195435))))

(assert (=> bs!1031986 (= (= lt!1800392 lt!1800404) (= lambda!195441 lambda!195440))))

(declare-fun bs!1031989 () Bool)

(assert (= bs!1031989 (and d!1462373 b!4637769)))

(assert (=> bs!1031989 (= (= lt!1800392 (ListMap!4402 Nil!51698)) (= lambda!195441 lambda!195434))))

(declare-fun bs!1031990 () Bool)

(assert (= bs!1031990 (and d!1462373 d!1462333)))

(assert (=> bs!1031990 (= (= lt!1800392 lt!1800371) (= lambda!195441 lambda!195437))))

(declare-fun bs!1031991 () Bool)

(assert (= bs!1031991 (and d!1462373 d!1462311)))

(assert (=> bs!1031991 (not (= lambda!195441 lambda!195347))))

(assert (=> d!1462373 true))

(declare-fun call!323709 () Bool)

(declare-fun bm!323704 () Bool)

(declare-fun c!793714 () Bool)

(assert (=> bm!323704 (= call!323709 (forall!10915 (ite c!793714 (toList!5082 (ListMap!4402 Nil!51698)) oldBucket!40) (ite c!793714 lambda!195438 lambda!195440)))))

(declare-fun bm!323705 () Bool)

(declare-fun call!323710 () Bool)

(assert (=> bm!323705 (= call!323710 (forall!10915 (ite c!793714 (toList!5082 (ListMap!4402 Nil!51698)) (t!358896 oldBucket!40)) (ite c!793714 lambda!195438 lambda!195440)))))

(declare-fun e!2893110 () ListMap!4401)

(assert (=> b!4637774 (= e!2893110 lt!1800404)))

(declare-fun lt!1800396 () ListMap!4401)

(assert (=> b!4637774 (= lt!1800396 (+!1920 (ListMap!4402 Nil!51698) (h!57792 oldBucket!40)))))

(assert (=> b!4637774 (= lt!1800404 (addToMapMapFromBucket!1025 (t!358896 oldBucket!40) (+!1920 (ListMap!4402 Nil!51698) (h!57792 oldBucket!40))))))

(declare-fun lt!1800405 () Unit!114653)

(declare-fun call!323711 () Unit!114653)

(assert (=> b!4637774 (= lt!1800405 call!323711)))

(assert (=> b!4637774 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195439)))

(declare-fun lt!1800387 () Unit!114653)

(assert (=> b!4637774 (= lt!1800387 lt!1800405)))

(assert (=> b!4637774 (forall!10915 (toList!5082 lt!1800396) lambda!195440)))

(declare-fun lt!1800391 () Unit!114653)

(declare-fun Unit!114690 () Unit!114653)

(assert (=> b!4637774 (= lt!1800391 Unit!114690)))

(assert (=> b!4637774 call!323710))

(declare-fun lt!1800394 () Unit!114653)

(declare-fun Unit!114691 () Unit!114653)

(assert (=> b!4637774 (= lt!1800394 Unit!114691)))

(declare-fun lt!1800407 () Unit!114653)

(declare-fun Unit!114692 () Unit!114653)

(assert (=> b!4637774 (= lt!1800407 Unit!114692)))

(declare-fun lt!1800402 () Unit!114653)

(assert (=> b!4637774 (= lt!1800402 (forallContained!3140 (toList!5082 lt!1800396) lambda!195440 (h!57792 oldBucket!40)))))

(assert (=> b!4637774 (contains!14813 lt!1800396 (_1!29649 (h!57792 oldBucket!40)))))

(declare-fun lt!1800399 () Unit!114653)

(declare-fun Unit!114693 () Unit!114653)

(assert (=> b!4637774 (= lt!1800399 Unit!114693)))

(assert (=> b!4637774 (contains!14813 lt!1800404 (_1!29649 (h!57792 oldBucket!40)))))

(declare-fun lt!1800395 () Unit!114653)

(declare-fun Unit!114695 () Unit!114653)

(assert (=> b!4637774 (= lt!1800395 Unit!114695)))

(assert (=> b!4637774 call!323709))

(declare-fun lt!1800388 () Unit!114653)

(declare-fun Unit!114696 () Unit!114653)

(assert (=> b!4637774 (= lt!1800388 Unit!114696)))

(assert (=> b!4637774 (forall!10915 (toList!5082 lt!1800396) lambda!195440)))

(declare-fun lt!1800406 () Unit!114653)

(declare-fun Unit!114697 () Unit!114653)

(assert (=> b!4637774 (= lt!1800406 Unit!114697)))

(declare-fun lt!1800397 () Unit!114653)

(declare-fun Unit!114698 () Unit!114653)

(assert (=> b!4637774 (= lt!1800397 Unit!114698)))

(declare-fun lt!1800401 () Unit!114653)

(assert (=> b!4637774 (= lt!1800401 (addForallContainsKeyThenBeforeAdding!549 (ListMap!4402 Nil!51698) lt!1800404 (_1!29649 (h!57792 oldBucket!40)) (_2!29649 (h!57792 oldBucket!40))))))

(assert (=> b!4637774 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195440)))

(declare-fun lt!1800389 () Unit!114653)

(assert (=> b!4637774 (= lt!1800389 lt!1800401)))

(assert (=> b!4637774 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195440)))

(declare-fun lt!1800390 () Unit!114653)

(declare-fun Unit!114699 () Unit!114653)

(assert (=> b!4637774 (= lt!1800390 Unit!114699)))

(declare-fun res!1947122 () Bool)

(assert (=> b!4637774 (= res!1947122 (forall!10915 oldBucket!40 lambda!195440))))

(declare-fun e!2893109 () Bool)

(assert (=> b!4637774 (=> (not res!1947122) (not e!2893109))))

(assert (=> b!4637774 e!2893109))

(declare-fun lt!1800398 () Unit!114653)

(declare-fun Unit!114702 () Unit!114653)

(assert (=> b!4637774 (= lt!1800398 Unit!114702)))

(declare-fun b!4637775 () Bool)

(declare-fun e!2893111 () Bool)

(assert (=> b!4637775 (= e!2893111 (invariantList!1248 (toList!5082 lt!1800392)))))

(declare-fun bm!323706 () Bool)

(assert (=> bm!323706 (= call!323711 (lemmaContainsAllItsOwnKeys!550 (ListMap!4402 Nil!51698)))))

(assert (=> d!1462373 e!2893111))

(declare-fun res!1947120 () Bool)

(assert (=> d!1462373 (=> (not res!1947120) (not e!2893111))))

(assert (=> d!1462373 (= res!1947120 (forall!10915 oldBucket!40 lambda!195441))))

(assert (=> d!1462373 (= lt!1800392 e!2893110)))

(assert (=> d!1462373 (= c!793714 ((_ is Nil!51698) oldBucket!40))))

(assert (=> d!1462373 (noDuplicateKeys!1566 oldBucket!40)))

(assert (=> d!1462373 (= (addToMapMapFromBucket!1025 oldBucket!40 (ListMap!4402 Nil!51698)) lt!1800392)))

(assert (=> b!4637776 (= e!2893110 (ListMap!4402 Nil!51698))))

(declare-fun lt!1800393 () Unit!114653)

(assert (=> b!4637776 (= lt!1800393 call!323711)))

(assert (=> b!4637776 call!323709))

(declare-fun lt!1800403 () Unit!114653)

(assert (=> b!4637776 (= lt!1800403 lt!1800393)))

(assert (=> b!4637776 call!323710))

(declare-fun lt!1800400 () Unit!114653)

(declare-fun Unit!114708 () Unit!114653)

(assert (=> b!4637776 (= lt!1800400 Unit!114708)))

(declare-fun b!4637777 () Bool)

(assert (=> b!4637777 (= e!2893109 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195440))))

(declare-fun b!4637778 () Bool)

(declare-fun res!1947121 () Bool)

(assert (=> b!4637778 (=> (not res!1947121) (not e!2893111))))

(assert (=> b!4637778 (= res!1947121 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195441))))

(assert (= (and d!1462373 c!793714) b!4637776))

(assert (= (and d!1462373 (not c!793714)) b!4637774))

(assert (= (and b!4637774 res!1947122) b!4637777))

(assert (= (or b!4637776 b!4637774) bm!323706))

(assert (= (or b!4637776 b!4637774) bm!323704))

(assert (= (or b!4637776 b!4637774) bm!323705))

(assert (= (and d!1462373 res!1947120) b!4637778))

(assert (= (and b!4637778 res!1947121) b!4637775))

(declare-fun m!5495929 () Bool)

(assert (=> bm!323704 m!5495929))

(declare-fun m!5495931 () Bool)

(assert (=> d!1462373 m!5495931))

(assert (=> d!1462373 m!5495537))

(declare-fun m!5495933 () Bool)

(assert (=> b!4637778 m!5495933))

(declare-fun m!5495935 () Bool)

(assert (=> b!4637777 m!5495935))

(declare-fun m!5495937 () Bool)

(assert (=> bm!323705 m!5495937))

(assert (=> bm!323706 m!5495903))

(declare-fun m!5495939 () Bool)

(assert (=> b!4637775 m!5495939))

(declare-fun m!5495941 () Bool)

(assert (=> b!4637774 m!5495941))

(assert (=> b!4637774 m!5495935))

(declare-fun m!5495943 () Bool)

(assert (=> b!4637774 m!5495943))

(assert (=> b!4637774 m!5495943))

(declare-fun m!5495945 () Bool)

(assert (=> b!4637774 m!5495945))

(declare-fun m!5495947 () Bool)

(assert (=> b!4637774 m!5495947))

(declare-fun m!5495949 () Bool)

(assert (=> b!4637774 m!5495949))

(declare-fun m!5495951 () Bool)

(assert (=> b!4637774 m!5495951))

(declare-fun m!5495953 () Bool)

(assert (=> b!4637774 m!5495953))

(assert (=> b!4637774 m!5495935))

(declare-fun m!5495955 () Bool)

(assert (=> b!4637774 m!5495955))

(assert (=> b!4637774 m!5495949))

(declare-fun m!5495957 () Bool)

(assert (=> b!4637774 m!5495957))

(assert (=> b!4637610 d!1462373))

(declare-fun bs!1031992 () Bool)

(declare-fun b!4637781 () Bool)

(assert (= bs!1031992 (and b!4637781 b!4637774)))

(declare-fun lambda!195442 () Int)

(assert (=> bs!1031992 (= lambda!195442 lambda!195439)))

(declare-fun bs!1031993 () Bool)

(assert (= bs!1031993 (and b!4637781 b!4637767)))

(assert (=> bs!1031993 (= (= (ListMap!4402 Nil!51698) lt!1800383) (= lambda!195442 lambda!195436))))

(declare-fun bs!1031994 () Bool)

(assert (= bs!1031994 (and b!4637781 b!4637776)))

(assert (=> bs!1031994 (= lambda!195442 lambda!195438)))

(assert (=> bs!1031993 (= lambda!195442 lambda!195435)))

(assert (=> bs!1031992 (= (= (ListMap!4402 Nil!51698) lt!1800404) (= lambda!195442 lambda!195440))))

(declare-fun bs!1031995 () Bool)

(assert (= bs!1031995 (and b!4637781 d!1462373)))

(assert (=> bs!1031995 (= (= (ListMap!4402 Nil!51698) lt!1800392) (= lambda!195442 lambda!195441))))

(declare-fun bs!1031996 () Bool)

(assert (= bs!1031996 (and b!4637781 b!4637769)))

(assert (=> bs!1031996 (= lambda!195442 lambda!195434)))

(declare-fun bs!1031997 () Bool)

(assert (= bs!1031997 (and b!4637781 d!1462333)))

(assert (=> bs!1031997 (= (= (ListMap!4402 Nil!51698) lt!1800371) (= lambda!195442 lambda!195437))))

(declare-fun bs!1031998 () Bool)

(assert (= bs!1031998 (and b!4637781 d!1462311)))

(assert (=> bs!1031998 (not (= lambda!195442 lambda!195347))))

(assert (=> b!4637781 true))

(declare-fun bs!1031999 () Bool)

(declare-fun b!4637779 () Bool)

(assert (= bs!1031999 (and b!4637779 b!4637774)))

(declare-fun lambda!195443 () Int)

(assert (=> bs!1031999 (= lambda!195443 lambda!195439)))

(declare-fun bs!1032000 () Bool)

(assert (= bs!1032000 (and b!4637779 b!4637767)))

(assert (=> bs!1032000 (= (= (ListMap!4402 Nil!51698) lt!1800383) (= lambda!195443 lambda!195436))))

(declare-fun bs!1032001 () Bool)

(assert (= bs!1032001 (and b!4637779 b!4637776)))

(assert (=> bs!1032001 (= lambda!195443 lambda!195438)))

(assert (=> bs!1032000 (= lambda!195443 lambda!195435)))

(declare-fun bs!1032002 () Bool)

(assert (= bs!1032002 (and b!4637779 b!4637781)))

(assert (=> bs!1032002 (= lambda!195443 lambda!195442)))

(assert (=> bs!1031999 (= (= (ListMap!4402 Nil!51698) lt!1800404) (= lambda!195443 lambda!195440))))

(declare-fun bs!1032003 () Bool)

(assert (= bs!1032003 (and b!4637779 d!1462373)))

(assert (=> bs!1032003 (= (= (ListMap!4402 Nil!51698) lt!1800392) (= lambda!195443 lambda!195441))))

(declare-fun bs!1032004 () Bool)

(assert (= bs!1032004 (and b!4637779 b!4637769)))

(assert (=> bs!1032004 (= lambda!195443 lambda!195434)))

(declare-fun bs!1032005 () Bool)

(assert (= bs!1032005 (and b!4637779 d!1462333)))

(assert (=> bs!1032005 (= (= (ListMap!4402 Nil!51698) lt!1800371) (= lambda!195443 lambda!195437))))

(declare-fun bs!1032006 () Bool)

(assert (= bs!1032006 (and b!4637779 d!1462311)))

(assert (=> bs!1032006 (not (= lambda!195443 lambda!195347))))

(assert (=> b!4637779 true))

(declare-fun lt!1800425 () ListMap!4401)

(declare-fun lambda!195444 () Int)

(assert (=> bs!1031999 (= (= lt!1800425 (ListMap!4402 Nil!51698)) (= lambda!195444 lambda!195439))))

(assert (=> bs!1032000 (= (= lt!1800425 lt!1800383) (= lambda!195444 lambda!195436))))

(assert (=> bs!1032001 (= (= lt!1800425 (ListMap!4402 Nil!51698)) (= lambda!195444 lambda!195438))))

(assert (=> bs!1032000 (= (= lt!1800425 (ListMap!4402 Nil!51698)) (= lambda!195444 lambda!195435))))

(assert (=> b!4637779 (= (= lt!1800425 (ListMap!4402 Nil!51698)) (= lambda!195444 lambda!195443))))

(assert (=> bs!1032002 (= (= lt!1800425 (ListMap!4402 Nil!51698)) (= lambda!195444 lambda!195442))))

(assert (=> bs!1031999 (= (= lt!1800425 lt!1800404) (= lambda!195444 lambda!195440))))

(assert (=> bs!1032003 (= (= lt!1800425 lt!1800392) (= lambda!195444 lambda!195441))))

(assert (=> bs!1032004 (= (= lt!1800425 (ListMap!4402 Nil!51698)) (= lambda!195444 lambda!195434))))

(assert (=> bs!1032005 (= (= lt!1800425 lt!1800371) (= lambda!195444 lambda!195437))))

(assert (=> bs!1032006 (not (= lambda!195444 lambda!195347))))

(assert (=> b!4637779 true))

(declare-fun bs!1032007 () Bool)

(declare-fun d!1462375 () Bool)

(assert (= bs!1032007 (and d!1462375 b!4637767)))

(declare-fun lambda!195445 () Int)

(declare-fun lt!1800413 () ListMap!4401)

(assert (=> bs!1032007 (= (= lt!1800413 lt!1800383) (= lambda!195445 lambda!195436))))

(declare-fun bs!1032008 () Bool)

(assert (= bs!1032008 (and d!1462375 b!4637776)))

(assert (=> bs!1032008 (= (= lt!1800413 (ListMap!4402 Nil!51698)) (= lambda!195445 lambda!195438))))

(assert (=> bs!1032007 (= (= lt!1800413 (ListMap!4402 Nil!51698)) (= lambda!195445 lambda!195435))))

(declare-fun bs!1032009 () Bool)

(assert (= bs!1032009 (and d!1462375 b!4637779)))

(assert (=> bs!1032009 (= (= lt!1800413 (ListMap!4402 Nil!51698)) (= lambda!195445 lambda!195443))))

(declare-fun bs!1032010 () Bool)

(assert (= bs!1032010 (and d!1462375 b!4637781)))

(assert (=> bs!1032010 (= (= lt!1800413 (ListMap!4402 Nil!51698)) (= lambda!195445 lambda!195442))))

(declare-fun bs!1032011 () Bool)

(assert (= bs!1032011 (and d!1462375 b!4637774)))

(assert (=> bs!1032011 (= (= lt!1800413 lt!1800404) (= lambda!195445 lambda!195440))))

(declare-fun bs!1032012 () Bool)

(assert (= bs!1032012 (and d!1462375 d!1462373)))

(assert (=> bs!1032012 (= (= lt!1800413 lt!1800392) (= lambda!195445 lambda!195441))))

(assert (=> bs!1032009 (= (= lt!1800413 lt!1800425) (= lambda!195445 lambda!195444))))

(assert (=> bs!1032011 (= (= lt!1800413 (ListMap!4402 Nil!51698)) (= lambda!195445 lambda!195439))))

(declare-fun bs!1032013 () Bool)

(assert (= bs!1032013 (and d!1462375 b!4637769)))

(assert (=> bs!1032013 (= (= lt!1800413 (ListMap!4402 Nil!51698)) (= lambda!195445 lambda!195434))))

(declare-fun bs!1032014 () Bool)

(assert (= bs!1032014 (and d!1462375 d!1462333)))

(assert (=> bs!1032014 (= (= lt!1800413 lt!1800371) (= lambda!195445 lambda!195437))))

(declare-fun bs!1032015 () Bool)

(assert (= bs!1032015 (and d!1462375 d!1462311)))

(assert (=> bs!1032015 (not (= lambda!195445 lambda!195347))))

(assert (=> d!1462375 true))

(declare-fun call!323712 () Bool)

(declare-fun c!793715 () Bool)

(declare-fun bm!323707 () Bool)

(assert (=> bm!323707 (= call!323712 (forall!10915 (ite c!793715 (toList!5082 (ListMap!4402 Nil!51698)) newBucket!224) (ite c!793715 lambda!195442 lambda!195444)))))

(declare-fun bm!323708 () Bool)

(declare-fun call!323713 () Bool)

(assert (=> bm!323708 (= call!323713 (forall!10915 (ite c!793715 (toList!5082 (ListMap!4402 Nil!51698)) (t!358896 newBucket!224)) (ite c!793715 lambda!195442 lambda!195444)))))

(declare-fun e!2893113 () ListMap!4401)

(assert (=> b!4637779 (= e!2893113 lt!1800425)))

(declare-fun lt!1800417 () ListMap!4401)

(assert (=> b!4637779 (= lt!1800417 (+!1920 (ListMap!4402 Nil!51698) (h!57792 newBucket!224)))))

(assert (=> b!4637779 (= lt!1800425 (addToMapMapFromBucket!1025 (t!358896 newBucket!224) (+!1920 (ListMap!4402 Nil!51698) (h!57792 newBucket!224))))))

(declare-fun lt!1800426 () Unit!114653)

(declare-fun call!323714 () Unit!114653)

(assert (=> b!4637779 (= lt!1800426 call!323714)))

(assert (=> b!4637779 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195443)))

(declare-fun lt!1800408 () Unit!114653)

(assert (=> b!4637779 (= lt!1800408 lt!1800426)))

(assert (=> b!4637779 (forall!10915 (toList!5082 lt!1800417) lambda!195444)))

(declare-fun lt!1800412 () Unit!114653)

(declare-fun Unit!114712 () Unit!114653)

(assert (=> b!4637779 (= lt!1800412 Unit!114712)))

(assert (=> b!4637779 call!323713))

(declare-fun lt!1800415 () Unit!114653)

(declare-fun Unit!114713 () Unit!114653)

(assert (=> b!4637779 (= lt!1800415 Unit!114713)))

(declare-fun lt!1800428 () Unit!114653)

(declare-fun Unit!114714 () Unit!114653)

(assert (=> b!4637779 (= lt!1800428 Unit!114714)))

(declare-fun lt!1800423 () Unit!114653)

(assert (=> b!4637779 (= lt!1800423 (forallContained!3140 (toList!5082 lt!1800417) lambda!195444 (h!57792 newBucket!224)))))

(assert (=> b!4637779 (contains!14813 lt!1800417 (_1!29649 (h!57792 newBucket!224)))))

(declare-fun lt!1800420 () Unit!114653)

(declare-fun Unit!114715 () Unit!114653)

(assert (=> b!4637779 (= lt!1800420 Unit!114715)))

(assert (=> b!4637779 (contains!14813 lt!1800425 (_1!29649 (h!57792 newBucket!224)))))

(declare-fun lt!1800416 () Unit!114653)

(declare-fun Unit!114716 () Unit!114653)

(assert (=> b!4637779 (= lt!1800416 Unit!114716)))

(assert (=> b!4637779 call!323712))

(declare-fun lt!1800409 () Unit!114653)

(declare-fun Unit!114717 () Unit!114653)

(assert (=> b!4637779 (= lt!1800409 Unit!114717)))

(assert (=> b!4637779 (forall!10915 (toList!5082 lt!1800417) lambda!195444)))

(declare-fun lt!1800427 () Unit!114653)

(declare-fun Unit!114718 () Unit!114653)

(assert (=> b!4637779 (= lt!1800427 Unit!114718)))

(declare-fun lt!1800418 () Unit!114653)

(declare-fun Unit!114719 () Unit!114653)

(assert (=> b!4637779 (= lt!1800418 Unit!114719)))

(declare-fun lt!1800422 () Unit!114653)

(assert (=> b!4637779 (= lt!1800422 (addForallContainsKeyThenBeforeAdding!549 (ListMap!4402 Nil!51698) lt!1800425 (_1!29649 (h!57792 newBucket!224)) (_2!29649 (h!57792 newBucket!224))))))

(assert (=> b!4637779 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195444)))

(declare-fun lt!1800410 () Unit!114653)

(assert (=> b!4637779 (= lt!1800410 lt!1800422)))

(assert (=> b!4637779 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195444)))

(declare-fun lt!1800411 () Unit!114653)

(declare-fun Unit!114720 () Unit!114653)

(assert (=> b!4637779 (= lt!1800411 Unit!114720)))

(declare-fun res!1947125 () Bool)

(assert (=> b!4637779 (= res!1947125 (forall!10915 newBucket!224 lambda!195444))))

(declare-fun e!2893112 () Bool)

(assert (=> b!4637779 (=> (not res!1947125) (not e!2893112))))

(assert (=> b!4637779 e!2893112))

(declare-fun lt!1800419 () Unit!114653)

(declare-fun Unit!114721 () Unit!114653)

(assert (=> b!4637779 (= lt!1800419 Unit!114721)))

(declare-fun b!4637780 () Bool)

(declare-fun e!2893114 () Bool)

(assert (=> b!4637780 (= e!2893114 (invariantList!1248 (toList!5082 lt!1800413)))))

(declare-fun bm!323709 () Bool)

(assert (=> bm!323709 (= call!323714 (lemmaContainsAllItsOwnKeys!550 (ListMap!4402 Nil!51698)))))

(assert (=> d!1462375 e!2893114))

(declare-fun res!1947123 () Bool)

(assert (=> d!1462375 (=> (not res!1947123) (not e!2893114))))

(assert (=> d!1462375 (= res!1947123 (forall!10915 newBucket!224 lambda!195445))))

(assert (=> d!1462375 (= lt!1800413 e!2893113)))

(assert (=> d!1462375 (= c!793715 ((_ is Nil!51698) newBucket!224))))

(assert (=> d!1462375 (noDuplicateKeys!1566 newBucket!224)))

(assert (=> d!1462375 (= (addToMapMapFromBucket!1025 newBucket!224 (ListMap!4402 Nil!51698)) lt!1800413)))

(assert (=> b!4637781 (= e!2893113 (ListMap!4402 Nil!51698))))

(declare-fun lt!1800414 () Unit!114653)

(assert (=> b!4637781 (= lt!1800414 call!323714)))

(assert (=> b!4637781 call!323712))

(declare-fun lt!1800424 () Unit!114653)

(assert (=> b!4637781 (= lt!1800424 lt!1800414)))

(assert (=> b!4637781 call!323713))

(declare-fun lt!1800421 () Unit!114653)

(declare-fun Unit!114722 () Unit!114653)

(assert (=> b!4637781 (= lt!1800421 Unit!114722)))

(declare-fun b!4637782 () Bool)

(assert (=> b!4637782 (= e!2893112 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195444))))

(declare-fun b!4637783 () Bool)

(declare-fun res!1947124 () Bool)

(assert (=> b!4637783 (=> (not res!1947124) (not e!2893114))))

(assert (=> b!4637783 (= res!1947124 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195445))))

(assert (= (and d!1462375 c!793715) b!4637781))

(assert (= (and d!1462375 (not c!793715)) b!4637779))

(assert (= (and b!4637779 res!1947125) b!4637782))

(assert (= (or b!4637781 b!4637779) bm!323709))

(assert (= (or b!4637781 b!4637779) bm!323707))

(assert (= (or b!4637781 b!4637779) bm!323708))

(assert (= (and d!1462375 res!1947123) b!4637783))

(assert (= (and b!4637783 res!1947124) b!4637780))

(declare-fun m!5495959 () Bool)

(assert (=> bm!323707 m!5495959))

(declare-fun m!5495961 () Bool)

(assert (=> d!1462375 m!5495961))

(assert (=> d!1462375 m!5495549))

(declare-fun m!5495963 () Bool)

(assert (=> b!4637783 m!5495963))

(declare-fun m!5495965 () Bool)

(assert (=> b!4637782 m!5495965))

(declare-fun m!5495967 () Bool)

(assert (=> bm!323708 m!5495967))

(assert (=> bm!323709 m!5495903))

(declare-fun m!5495969 () Bool)

(assert (=> b!4637780 m!5495969))

(declare-fun m!5495971 () Bool)

(assert (=> b!4637779 m!5495971))

(assert (=> b!4637779 m!5495965))

(declare-fun m!5495973 () Bool)

(assert (=> b!4637779 m!5495973))

(assert (=> b!4637779 m!5495973))

(declare-fun m!5495975 () Bool)

(assert (=> b!4637779 m!5495975))

(declare-fun m!5495977 () Bool)

(assert (=> b!4637779 m!5495977))

(declare-fun m!5495979 () Bool)

(assert (=> b!4637779 m!5495979))

(declare-fun m!5495981 () Bool)

(assert (=> b!4637779 m!5495981))

(declare-fun m!5495983 () Bool)

(assert (=> b!4637779 m!5495983))

(assert (=> b!4637779 m!5495965))

(declare-fun m!5495985 () Bool)

(assert (=> b!4637779 m!5495985))

(assert (=> b!4637779 m!5495979))

(declare-fun m!5495987 () Bool)

(assert (=> b!4637779 m!5495987))

(assert (=> b!4637609 d!1462375))

(declare-fun bs!1032016 () Bool)

(declare-fun b!4637786 () Bool)

(assert (= bs!1032016 (and b!4637786 b!4637767)))

(declare-fun lambda!195446 () Int)

(assert (=> bs!1032016 (= (= (ListMap!4402 Nil!51698) lt!1800383) (= lambda!195446 lambda!195436))))

(declare-fun bs!1032017 () Bool)

(assert (= bs!1032017 (and b!4637786 b!4637776)))

(assert (=> bs!1032017 (= lambda!195446 lambda!195438)))

(assert (=> bs!1032016 (= lambda!195446 lambda!195435)))

(declare-fun bs!1032018 () Bool)

(assert (= bs!1032018 (and b!4637786 b!4637779)))

(assert (=> bs!1032018 (= lambda!195446 lambda!195443)))

(declare-fun bs!1032019 () Bool)

(assert (= bs!1032019 (and b!4637786 b!4637781)))

(assert (=> bs!1032019 (= lambda!195446 lambda!195442)))

(declare-fun bs!1032020 () Bool)

(assert (= bs!1032020 (and b!4637786 b!4637774)))

(assert (=> bs!1032020 (= (= (ListMap!4402 Nil!51698) lt!1800404) (= lambda!195446 lambda!195440))))

(declare-fun bs!1032021 () Bool)

(assert (= bs!1032021 (and b!4637786 d!1462375)))

(assert (=> bs!1032021 (= (= (ListMap!4402 Nil!51698) lt!1800413) (= lambda!195446 lambda!195445))))

(declare-fun bs!1032022 () Bool)

(assert (= bs!1032022 (and b!4637786 d!1462373)))

(assert (=> bs!1032022 (= (= (ListMap!4402 Nil!51698) lt!1800392) (= lambda!195446 lambda!195441))))

(assert (=> bs!1032018 (= (= (ListMap!4402 Nil!51698) lt!1800425) (= lambda!195446 lambda!195444))))

(assert (=> bs!1032020 (= lambda!195446 lambda!195439)))

(declare-fun bs!1032023 () Bool)

(assert (= bs!1032023 (and b!4637786 b!4637769)))

(assert (=> bs!1032023 (= lambda!195446 lambda!195434)))

(declare-fun bs!1032024 () Bool)

(assert (= bs!1032024 (and b!4637786 d!1462333)))

(assert (=> bs!1032024 (= (= (ListMap!4402 Nil!51698) lt!1800371) (= lambda!195446 lambda!195437))))

(declare-fun bs!1032025 () Bool)

(assert (= bs!1032025 (and b!4637786 d!1462311)))

(assert (=> bs!1032025 (not (= lambda!195446 lambda!195347))))

(assert (=> b!4637786 true))

(declare-fun bs!1032026 () Bool)

(declare-fun b!4637784 () Bool)

(assert (= bs!1032026 (and b!4637784 b!4637767)))

(declare-fun lambda!195447 () Int)

(assert (=> bs!1032026 (= (= (ListMap!4402 Nil!51698) lt!1800383) (= lambda!195447 lambda!195436))))

(declare-fun bs!1032027 () Bool)

(assert (= bs!1032027 (and b!4637784 b!4637776)))

(assert (=> bs!1032027 (= lambda!195447 lambda!195438)))

(assert (=> bs!1032026 (= lambda!195447 lambda!195435)))

(declare-fun bs!1032028 () Bool)

(assert (= bs!1032028 (and b!4637784 b!4637779)))

(assert (=> bs!1032028 (= lambda!195447 lambda!195443)))

(declare-fun bs!1032029 () Bool)

(assert (= bs!1032029 (and b!4637784 b!4637781)))

(assert (=> bs!1032029 (= lambda!195447 lambda!195442)))

(declare-fun bs!1032030 () Bool)

(assert (= bs!1032030 (and b!4637784 b!4637774)))

(assert (=> bs!1032030 (= (= (ListMap!4402 Nil!51698) lt!1800404) (= lambda!195447 lambda!195440))))

(declare-fun bs!1032031 () Bool)

(assert (= bs!1032031 (and b!4637784 d!1462375)))

(assert (=> bs!1032031 (= (= (ListMap!4402 Nil!51698) lt!1800413) (= lambda!195447 lambda!195445))))

(declare-fun bs!1032032 () Bool)

(assert (= bs!1032032 (and b!4637784 d!1462373)))

(assert (=> bs!1032032 (= (= (ListMap!4402 Nil!51698) lt!1800392) (= lambda!195447 lambda!195441))))

(declare-fun bs!1032033 () Bool)

(assert (= bs!1032033 (and b!4637784 b!4637786)))

(assert (=> bs!1032033 (= lambda!195447 lambda!195446)))

(assert (=> bs!1032028 (= (= (ListMap!4402 Nil!51698) lt!1800425) (= lambda!195447 lambda!195444))))

(assert (=> bs!1032030 (= lambda!195447 lambda!195439)))

(declare-fun bs!1032034 () Bool)

(assert (= bs!1032034 (and b!4637784 b!4637769)))

(assert (=> bs!1032034 (= lambda!195447 lambda!195434)))

(declare-fun bs!1032035 () Bool)

(assert (= bs!1032035 (and b!4637784 d!1462333)))

(assert (=> bs!1032035 (= (= (ListMap!4402 Nil!51698) lt!1800371) (= lambda!195447 lambda!195437))))

(declare-fun bs!1032036 () Bool)

(assert (= bs!1032036 (and b!4637784 d!1462311)))

(assert (=> bs!1032036 (not (= lambda!195447 lambda!195347))))

(assert (=> b!4637784 true))

(declare-fun lambda!195448 () Int)

(declare-fun lt!1800446 () ListMap!4401)

(assert (=> bs!1032026 (= (= lt!1800446 lt!1800383) (= lambda!195448 lambda!195436))))

(assert (=> bs!1032027 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195438))))

(assert (=> bs!1032026 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195435))))

(assert (=> bs!1032028 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195443))))

(assert (=> bs!1032029 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195442))))

(assert (=> bs!1032030 (= (= lt!1800446 lt!1800404) (= lambda!195448 lambda!195440))))

(assert (=> bs!1032031 (= (= lt!1800446 lt!1800413) (= lambda!195448 lambda!195445))))

(assert (=> bs!1032033 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195446))))

(assert (=> bs!1032028 (= (= lt!1800446 lt!1800425) (= lambda!195448 lambda!195444))))

(assert (=> bs!1032030 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195439))))

(assert (=> bs!1032034 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195434))))

(assert (=> bs!1032035 (= (= lt!1800446 lt!1800371) (= lambda!195448 lambda!195437))))

(assert (=> bs!1032036 (not (= lambda!195448 lambda!195347))))

(assert (=> bs!1032032 (= (= lt!1800446 lt!1800392) (= lambda!195448 lambda!195441))))

(assert (=> b!4637784 (= (= lt!1800446 (ListMap!4402 Nil!51698)) (= lambda!195448 lambda!195447))))

(assert (=> b!4637784 true))

(declare-fun bs!1032037 () Bool)

(declare-fun d!1462377 () Bool)

(assert (= bs!1032037 (and d!1462377 b!4637767)))

(declare-fun lt!1800434 () ListMap!4401)

(declare-fun lambda!195449 () Int)

(assert (=> bs!1032037 (= (= lt!1800434 lt!1800383) (= lambda!195449 lambda!195436))))

(declare-fun bs!1032038 () Bool)

(assert (= bs!1032038 (and d!1462377 b!4637776)))

(assert (=> bs!1032038 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195438))))

(assert (=> bs!1032037 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195435))))

(declare-fun bs!1032039 () Bool)

(assert (= bs!1032039 (and d!1462377 b!4637779)))

(assert (=> bs!1032039 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195443))))

(declare-fun bs!1032040 () Bool)

(assert (= bs!1032040 (and d!1462377 b!4637781)))

(assert (=> bs!1032040 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195442))))

(declare-fun bs!1032041 () Bool)

(assert (= bs!1032041 (and d!1462377 b!4637774)))

(assert (=> bs!1032041 (= (= lt!1800434 lt!1800404) (= lambda!195449 lambda!195440))))

(declare-fun bs!1032042 () Bool)

(assert (= bs!1032042 (and d!1462377 d!1462375)))

(assert (=> bs!1032042 (= (= lt!1800434 lt!1800413) (= lambda!195449 lambda!195445))))

(declare-fun bs!1032043 () Bool)

(assert (= bs!1032043 (and d!1462377 b!4637786)))

(assert (=> bs!1032043 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195446))))

(assert (=> bs!1032039 (= (= lt!1800434 lt!1800425) (= lambda!195449 lambda!195444))))

(assert (=> bs!1032041 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195439))))

(declare-fun bs!1032044 () Bool)

(assert (= bs!1032044 (and d!1462377 b!4637769)))

(assert (=> bs!1032044 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195434))))

(declare-fun bs!1032045 () Bool)

(assert (= bs!1032045 (and d!1462377 d!1462333)))

(assert (=> bs!1032045 (= (= lt!1800434 lt!1800371) (= lambda!195449 lambda!195437))))

(declare-fun bs!1032046 () Bool)

(assert (= bs!1032046 (and d!1462377 d!1462311)))

(assert (=> bs!1032046 (not (= lambda!195449 lambda!195347))))

(declare-fun bs!1032047 () Bool)

(assert (= bs!1032047 (and d!1462377 b!4637784)))

(assert (=> bs!1032047 (= (= lt!1800434 lt!1800446) (= lambda!195449 lambda!195448))))

(declare-fun bs!1032048 () Bool)

(assert (= bs!1032048 (and d!1462377 d!1462373)))

(assert (=> bs!1032048 (= (= lt!1800434 lt!1800392) (= lambda!195449 lambda!195441))))

(assert (=> bs!1032047 (= (= lt!1800434 (ListMap!4402 Nil!51698)) (= lambda!195449 lambda!195447))))

(assert (=> d!1462377 true))

(declare-fun call!323715 () Bool)

(declare-fun c!793716 () Bool)

(declare-fun bm!323710 () Bool)

(assert (=> bm!323710 (= call!323715 (forall!10915 (ite c!793716 (toList!5082 (ListMap!4402 Nil!51698)) lt!1800097) (ite c!793716 lambda!195446 lambda!195448)))))

(declare-fun call!323716 () Bool)

(declare-fun bm!323711 () Bool)

(assert (=> bm!323711 (= call!323716 (forall!10915 (ite c!793716 (toList!5082 (ListMap!4402 Nil!51698)) (t!358896 lt!1800097)) (ite c!793716 lambda!195446 lambda!195448)))))

(declare-fun e!2893116 () ListMap!4401)

(assert (=> b!4637784 (= e!2893116 lt!1800446)))

(declare-fun lt!1800438 () ListMap!4401)

(assert (=> b!4637784 (= lt!1800438 (+!1920 (ListMap!4402 Nil!51698) (h!57792 lt!1800097)))))

(assert (=> b!4637784 (= lt!1800446 (addToMapMapFromBucket!1025 (t!358896 lt!1800097) (+!1920 (ListMap!4402 Nil!51698) (h!57792 lt!1800097))))))

(declare-fun lt!1800447 () Unit!114653)

(declare-fun call!323717 () Unit!114653)

(assert (=> b!4637784 (= lt!1800447 call!323717)))

(assert (=> b!4637784 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195447)))

(declare-fun lt!1800429 () Unit!114653)

(assert (=> b!4637784 (= lt!1800429 lt!1800447)))

(assert (=> b!4637784 (forall!10915 (toList!5082 lt!1800438) lambda!195448)))

(declare-fun lt!1800433 () Unit!114653)

(declare-fun Unit!114734 () Unit!114653)

(assert (=> b!4637784 (= lt!1800433 Unit!114734)))

(assert (=> b!4637784 call!323716))

(declare-fun lt!1800436 () Unit!114653)

(declare-fun Unit!114735 () Unit!114653)

(assert (=> b!4637784 (= lt!1800436 Unit!114735)))

(declare-fun lt!1800449 () Unit!114653)

(declare-fun Unit!114736 () Unit!114653)

(assert (=> b!4637784 (= lt!1800449 Unit!114736)))

(declare-fun lt!1800444 () Unit!114653)

(assert (=> b!4637784 (= lt!1800444 (forallContained!3140 (toList!5082 lt!1800438) lambda!195448 (h!57792 lt!1800097)))))

(assert (=> b!4637784 (contains!14813 lt!1800438 (_1!29649 (h!57792 lt!1800097)))))

(declare-fun lt!1800441 () Unit!114653)

(declare-fun Unit!114737 () Unit!114653)

(assert (=> b!4637784 (= lt!1800441 Unit!114737)))

(assert (=> b!4637784 (contains!14813 lt!1800446 (_1!29649 (h!57792 lt!1800097)))))

(declare-fun lt!1800437 () Unit!114653)

(declare-fun Unit!114738 () Unit!114653)

(assert (=> b!4637784 (= lt!1800437 Unit!114738)))

(assert (=> b!4637784 call!323715))

(declare-fun lt!1800430 () Unit!114653)

(declare-fun Unit!114739 () Unit!114653)

(assert (=> b!4637784 (= lt!1800430 Unit!114739)))

(assert (=> b!4637784 (forall!10915 (toList!5082 lt!1800438) lambda!195448)))

(declare-fun lt!1800448 () Unit!114653)

(declare-fun Unit!114740 () Unit!114653)

(assert (=> b!4637784 (= lt!1800448 Unit!114740)))

(declare-fun lt!1800439 () Unit!114653)

(declare-fun Unit!114741 () Unit!114653)

(assert (=> b!4637784 (= lt!1800439 Unit!114741)))

(declare-fun lt!1800443 () Unit!114653)

(assert (=> b!4637784 (= lt!1800443 (addForallContainsKeyThenBeforeAdding!549 (ListMap!4402 Nil!51698) lt!1800446 (_1!29649 (h!57792 lt!1800097)) (_2!29649 (h!57792 lt!1800097))))))

(assert (=> b!4637784 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195448)))

(declare-fun lt!1800431 () Unit!114653)

(assert (=> b!4637784 (= lt!1800431 lt!1800443)))

(assert (=> b!4637784 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195448)))

(declare-fun lt!1800432 () Unit!114653)

(declare-fun Unit!114742 () Unit!114653)

(assert (=> b!4637784 (= lt!1800432 Unit!114742)))

(declare-fun res!1947128 () Bool)

(assert (=> b!4637784 (= res!1947128 (forall!10915 lt!1800097 lambda!195448))))

(declare-fun e!2893115 () Bool)

(assert (=> b!4637784 (=> (not res!1947128) (not e!2893115))))

(assert (=> b!4637784 e!2893115))

(declare-fun lt!1800440 () Unit!114653)

(declare-fun Unit!114743 () Unit!114653)

(assert (=> b!4637784 (= lt!1800440 Unit!114743)))

(declare-fun b!4637785 () Bool)

(declare-fun e!2893117 () Bool)

(assert (=> b!4637785 (= e!2893117 (invariantList!1248 (toList!5082 lt!1800434)))))

(declare-fun bm!323712 () Bool)

(assert (=> bm!323712 (= call!323717 (lemmaContainsAllItsOwnKeys!550 (ListMap!4402 Nil!51698)))))

(assert (=> d!1462377 e!2893117))

(declare-fun res!1947126 () Bool)

(assert (=> d!1462377 (=> (not res!1947126) (not e!2893117))))

(assert (=> d!1462377 (= res!1947126 (forall!10915 lt!1800097 lambda!195449))))

(assert (=> d!1462377 (= lt!1800434 e!2893116)))

(assert (=> d!1462377 (= c!793716 ((_ is Nil!51698) lt!1800097))))

(assert (=> d!1462377 (noDuplicateKeys!1566 lt!1800097)))

(assert (=> d!1462377 (= (addToMapMapFromBucket!1025 lt!1800097 (ListMap!4402 Nil!51698)) lt!1800434)))

(assert (=> b!4637786 (= e!2893116 (ListMap!4402 Nil!51698))))

(declare-fun lt!1800435 () Unit!114653)

(assert (=> b!4637786 (= lt!1800435 call!323717)))

(assert (=> b!4637786 call!323715))

(declare-fun lt!1800445 () Unit!114653)

(assert (=> b!4637786 (= lt!1800445 lt!1800435)))

(assert (=> b!4637786 call!323716))

(declare-fun lt!1800442 () Unit!114653)

(declare-fun Unit!114744 () Unit!114653)

(assert (=> b!4637786 (= lt!1800442 Unit!114744)))

(declare-fun b!4637787 () Bool)

(assert (=> b!4637787 (= e!2893115 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195448))))

(declare-fun b!4637788 () Bool)

(declare-fun res!1947127 () Bool)

(assert (=> b!4637788 (=> (not res!1947127) (not e!2893117))))

(assert (=> b!4637788 (= res!1947127 (forall!10915 (toList!5082 (ListMap!4402 Nil!51698)) lambda!195449))))

(assert (= (and d!1462377 c!793716) b!4637786))

(assert (= (and d!1462377 (not c!793716)) b!4637784))

(assert (= (and b!4637784 res!1947128) b!4637787))

(assert (= (or b!4637786 b!4637784) bm!323712))

(assert (= (or b!4637786 b!4637784) bm!323710))

(assert (= (or b!4637786 b!4637784) bm!323711))

(assert (= (and d!1462377 res!1947126) b!4637788))

(assert (= (and b!4637788 res!1947127) b!4637785))

(declare-fun m!5495989 () Bool)

(assert (=> bm!323710 m!5495989))

(declare-fun m!5495991 () Bool)

(assert (=> d!1462377 m!5495991))

(assert (=> d!1462377 m!5495623))

(declare-fun m!5495993 () Bool)

(assert (=> b!4637788 m!5495993))

(declare-fun m!5495995 () Bool)

(assert (=> b!4637787 m!5495995))

(declare-fun m!5495997 () Bool)

(assert (=> bm!323711 m!5495997))

(assert (=> bm!323712 m!5495903))

(declare-fun m!5495999 () Bool)

(assert (=> b!4637785 m!5495999))

(declare-fun m!5496001 () Bool)

(assert (=> b!4637784 m!5496001))

(assert (=> b!4637784 m!5495995))

(declare-fun m!5496003 () Bool)

(assert (=> b!4637784 m!5496003))

(assert (=> b!4637784 m!5496003))

(declare-fun m!5496005 () Bool)

(assert (=> b!4637784 m!5496005))

(declare-fun m!5496007 () Bool)

(assert (=> b!4637784 m!5496007))

(declare-fun m!5496009 () Bool)

(assert (=> b!4637784 m!5496009))

(declare-fun m!5496011 () Bool)

(assert (=> b!4637784 m!5496011))

(declare-fun m!5496013 () Bool)

(assert (=> b!4637784 m!5496013))

(assert (=> b!4637784 m!5495995))

(declare-fun m!5496015 () Bool)

(assert (=> b!4637784 m!5496015))

(assert (=> b!4637784 m!5496009))

(declare-fun m!5496017 () Bool)

(assert (=> b!4637784 m!5496017))

(assert (=> b!4637609 d!1462377))

(declare-fun b!4637799 () Bool)

(declare-fun e!2893122 () List!51822)

(assert (=> b!4637799 (= e!2893122 (Cons!51698 (h!57792 oldBucket!40) (removePairForKey!1189 (t!358896 oldBucket!40) key!4968)))))

(declare-fun b!4637798 () Bool)

(declare-fun e!2893123 () List!51822)

(assert (=> b!4637798 (= e!2893123 e!2893122)))

(declare-fun c!793721 () Bool)

(assert (=> b!4637798 (= c!793721 ((_ is Cons!51698) oldBucket!40))))

(declare-fun b!4637797 () Bool)

(assert (=> b!4637797 (= e!2893123 (t!358896 oldBucket!40))))

(declare-fun b!4637800 () Bool)

(assert (=> b!4637800 (= e!2893122 Nil!51698)))

(declare-fun d!1462379 () Bool)

(declare-fun lt!1800452 () List!51822)

(declare-fun containsKey!2581 (List!51822 K!13065) Bool)

(assert (=> d!1462379 (not (containsKey!2581 lt!1800452 key!4968))))

(assert (=> d!1462379 (= lt!1800452 e!2893123)))

(declare-fun c!793722 () Bool)

(assert (=> d!1462379 (= c!793722 (and ((_ is Cons!51698) oldBucket!40) (= (_1!29649 (h!57792 oldBucket!40)) key!4968)))))

(assert (=> d!1462379 (noDuplicateKeys!1566 oldBucket!40)))

(assert (=> d!1462379 (= (removePairForKey!1189 oldBucket!40 key!4968) lt!1800452)))

(assert (= (and d!1462379 c!793722) b!4637797))

(assert (= (and d!1462379 (not c!793722)) b!4637798))

(assert (= (and b!4637798 c!793721) b!4637799))

(assert (= (and b!4637798 (not c!793721)) b!4637800))

(declare-fun m!5496019 () Bool)

(assert (=> b!4637799 m!5496019))

(declare-fun m!5496021 () Bool)

(assert (=> d!1462379 m!5496021))

(assert (=> d!1462379 m!5495537))

(assert (=> b!4637619 d!1462379))

(declare-fun d!1462381 () Bool)

(declare-fun res!1947133 () Bool)

(declare-fun e!2893128 () Bool)

(assert (=> d!1462381 (=> res!1947133 e!2893128)))

(assert (=> d!1462381 (= res!1947133 (not ((_ is Cons!51698) newBucket!224)))))

(assert (=> d!1462381 (= (noDuplicateKeys!1566 newBucket!224) e!2893128)))

(declare-fun b!4637805 () Bool)

(declare-fun e!2893129 () Bool)

(assert (=> b!4637805 (= e!2893128 e!2893129)))

(declare-fun res!1947134 () Bool)

(assert (=> b!4637805 (=> (not res!1947134) (not e!2893129))))

(assert (=> b!4637805 (= res!1947134 (not (containsKey!2581 (t!358896 newBucket!224) (_1!29649 (h!57792 newBucket!224)))))))

(declare-fun b!4637806 () Bool)

(assert (=> b!4637806 (= e!2893129 (noDuplicateKeys!1566 (t!358896 newBucket!224)))))

(assert (= (and d!1462381 (not res!1947133)) b!4637805))

(assert (= (and b!4637805 res!1947134) b!4637806))

(declare-fun m!5496023 () Bool)

(assert (=> b!4637805 m!5496023))

(declare-fun m!5496025 () Bool)

(assert (=> b!4637806 m!5496025))

(assert (=> b!4637617 d!1462381))

(declare-fun b!4637825 () Bool)

(declare-fun e!2893142 () Unit!114653)

(declare-fun Unit!114745 () Unit!114653)

(assert (=> b!4637825 (= e!2893142 Unit!114745)))

(declare-fun bm!323715 () Bool)

(declare-fun call!323720 () Bool)

(declare-datatypes ((List!51825 0))(
  ( (Nil!51701) (Cons!51701 (h!57797 K!13065) (t!358901 List!51825)) )
))
(declare-fun e!2893146 () List!51825)

(declare-fun contains!14817 (List!51825 K!13065) Bool)

(assert (=> bm!323715 (= call!323720 (contains!14817 e!2893146 key!4968))))

(declare-fun c!793729 () Bool)

(declare-fun c!793730 () Bool)

(assert (=> bm!323715 (= c!793729 c!793730)))

(declare-fun b!4637826 () Bool)

(assert (=> b!4637826 false))

(declare-fun lt!1800469 () Unit!114653)

(declare-fun lt!1800473 () Unit!114653)

(assert (=> b!4637826 (= lt!1800469 lt!1800473)))

(declare-fun containsKey!2582 (List!51822 K!13065) Bool)

(assert (=> b!4637826 (containsKey!2582 (toList!5082 lt!1800100) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!698 (List!51822 K!13065) Unit!114653)

(assert (=> b!4637826 (= lt!1800473 (lemmaInGetKeysListThenContainsKey!698 (toList!5082 lt!1800100) key!4968))))

(declare-fun Unit!114746 () Unit!114653)

(assert (=> b!4637826 (= e!2893142 Unit!114746)))

(declare-fun b!4637827 () Bool)

(declare-fun e!2893147 () Bool)

(declare-fun keys!18258 (ListMap!4401) List!51825)

(assert (=> b!4637827 (= e!2893147 (contains!14817 (keys!18258 lt!1800100) key!4968))))

(declare-fun b!4637828 () Bool)

(assert (=> b!4637828 (= e!2893146 (keys!18258 lt!1800100))))

(declare-fun d!1462383 () Bool)

(declare-fun e!2893143 () Bool)

(assert (=> d!1462383 e!2893143))

(declare-fun res!1947143 () Bool)

(assert (=> d!1462383 (=> res!1947143 e!2893143)))

(declare-fun e!2893144 () Bool)

(assert (=> d!1462383 (= res!1947143 e!2893144)))

(declare-fun res!1947141 () Bool)

(assert (=> d!1462383 (=> (not res!1947141) (not e!2893144))))

(declare-fun lt!1800476 () Bool)

(assert (=> d!1462383 (= res!1947141 (not lt!1800476))))

(declare-fun lt!1800471 () Bool)

(assert (=> d!1462383 (= lt!1800476 lt!1800471)))

(declare-fun lt!1800475 () Unit!114653)

(declare-fun e!2893145 () Unit!114653)

(assert (=> d!1462383 (= lt!1800475 e!2893145)))

(assert (=> d!1462383 (= c!793730 lt!1800471)))

(assert (=> d!1462383 (= lt!1800471 (containsKey!2582 (toList!5082 lt!1800100) key!4968))))

(assert (=> d!1462383 (= (contains!14813 lt!1800100 key!4968) lt!1800476)))

(declare-fun b!4637829 () Bool)

(declare-fun lt!1800474 () Unit!114653)

(assert (=> b!4637829 (= e!2893145 lt!1800474)))

(declare-fun lt!1800472 () Unit!114653)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1438 (List!51822 K!13065) Unit!114653)

(assert (=> b!4637829 (= lt!1800472 (lemmaContainsKeyImpliesGetValueByKeyDefined!1438 (toList!5082 lt!1800100) key!4968))))

(declare-fun isDefined!8985 (Option!11720) Bool)

(assert (=> b!4637829 (isDefined!8985 (getValueByKey!1536 (toList!5082 lt!1800100) key!4968))))

(declare-fun lt!1800470 () Unit!114653)

(assert (=> b!4637829 (= lt!1800470 lt!1800472)))

(declare-fun lemmaInListThenGetKeysListContains!694 (List!51822 K!13065) Unit!114653)

(assert (=> b!4637829 (= lt!1800474 (lemmaInListThenGetKeysListContains!694 (toList!5082 lt!1800100) key!4968))))

(assert (=> b!4637829 call!323720))

(declare-fun b!4637830 () Bool)

(assert (=> b!4637830 (= e!2893143 e!2893147)))

(declare-fun res!1947142 () Bool)

(assert (=> b!4637830 (=> (not res!1947142) (not e!2893147))))

(assert (=> b!4637830 (= res!1947142 (isDefined!8985 (getValueByKey!1536 (toList!5082 lt!1800100) key!4968)))))

(declare-fun b!4637831 () Bool)

(declare-fun getKeysList!699 (List!51822) List!51825)

(assert (=> b!4637831 (= e!2893146 (getKeysList!699 (toList!5082 lt!1800100)))))

(declare-fun b!4637832 () Bool)

(assert (=> b!4637832 (= e!2893145 e!2893142)))

(declare-fun c!793731 () Bool)

(assert (=> b!4637832 (= c!793731 call!323720)))

(declare-fun b!4637833 () Bool)

(assert (=> b!4637833 (= e!2893144 (not (contains!14817 (keys!18258 lt!1800100) key!4968)))))

(assert (= (and d!1462383 c!793730) b!4637829))

(assert (= (and d!1462383 (not c!793730)) b!4637832))

(assert (= (and b!4637832 c!793731) b!4637826))

(assert (= (and b!4637832 (not c!793731)) b!4637825))

(assert (= (or b!4637829 b!4637832) bm!323715))

(assert (= (and bm!323715 c!793729) b!4637831))

(assert (= (and bm!323715 (not c!793729)) b!4637828))

(assert (= (and d!1462383 res!1947141) b!4637833))

(assert (= (and d!1462383 (not res!1947143)) b!4637830))

(assert (= (and b!4637830 res!1947142) b!4637827))

(declare-fun m!5496027 () Bool)

(assert (=> b!4637831 m!5496027))

(declare-fun m!5496029 () Bool)

(assert (=> b!4637830 m!5496029))

(assert (=> b!4637830 m!5496029))

(declare-fun m!5496031 () Bool)

(assert (=> b!4637830 m!5496031))

(declare-fun m!5496033 () Bool)

(assert (=> b!4637827 m!5496033))

(assert (=> b!4637827 m!5496033))

(declare-fun m!5496035 () Bool)

(assert (=> b!4637827 m!5496035))

(declare-fun m!5496037 () Bool)

(assert (=> bm!323715 m!5496037))

(declare-fun m!5496039 () Bool)

(assert (=> d!1462383 m!5496039))

(assert (=> b!4637826 m!5496039))

(declare-fun m!5496041 () Bool)

(assert (=> b!4637826 m!5496041))

(declare-fun m!5496043 () Bool)

(assert (=> b!4637829 m!5496043))

(assert (=> b!4637829 m!5496029))

(assert (=> b!4637829 m!5496029))

(assert (=> b!4637829 m!5496031))

(declare-fun m!5496045 () Bool)

(assert (=> b!4637829 m!5496045))

(assert (=> b!4637833 m!5496033))

(assert (=> b!4637833 m!5496033))

(assert (=> b!4637833 m!5496035))

(assert (=> b!4637828 m!5496033))

(assert (=> b!4637616 d!1462383))

(declare-fun bs!1032049 () Bool)

(declare-fun d!1462385 () Bool)

(assert (= bs!1032049 (and d!1462385 d!1462319)))

(declare-fun lambda!195450 () Int)

(assert (=> bs!1032049 (= lambda!195450 lambda!195350)))

(declare-fun bs!1032050 () Bool)

(assert (= bs!1032050 (and d!1462385 d!1462321)))

(assert (=> bs!1032050 (= lambda!195450 lambda!195351)))

(declare-fun lt!1800477 () ListMap!4401)

(assert (=> d!1462385 (invariantList!1248 (toList!5082 lt!1800477))))

(declare-fun e!2893148 () ListMap!4401)

(assert (=> d!1462385 (= lt!1800477 e!2893148)))

(declare-fun c!793732 () Bool)

(assert (=> d!1462385 (= c!793732 ((_ is Cons!51699) (Cons!51699 (tuple2!52713 hash!414 oldBucket!40) Nil!51699)))))

(assert (=> d!1462385 (forall!10916 (Cons!51699 (tuple2!52713 hash!414 oldBucket!40) Nil!51699) lambda!195450)))

(assert (=> d!1462385 (= (extractMap!1622 (Cons!51699 (tuple2!52713 hash!414 oldBucket!40) Nil!51699)) lt!1800477)))

(declare-fun b!4637834 () Bool)

(assert (=> b!4637834 (= e!2893148 (addToMapMapFromBucket!1025 (_2!29650 (h!57793 (Cons!51699 (tuple2!52713 hash!414 oldBucket!40) Nil!51699))) (extractMap!1622 (t!358897 (Cons!51699 (tuple2!52713 hash!414 oldBucket!40) Nil!51699)))))))

(declare-fun b!4637835 () Bool)

(assert (=> b!4637835 (= e!2893148 (ListMap!4402 Nil!51698))))

(assert (= (and d!1462385 c!793732) b!4637834))

(assert (= (and d!1462385 (not c!793732)) b!4637835))

(declare-fun m!5496047 () Bool)

(assert (=> d!1462385 m!5496047))

(declare-fun m!5496049 () Bool)

(assert (=> d!1462385 m!5496049))

(declare-fun m!5496051 () Bool)

(assert (=> b!4637834 m!5496051))

(assert (=> b!4637834 m!5496051))

(declare-fun m!5496053 () Bool)

(assert (=> b!4637834 m!5496053))

(assert (=> b!4637616 d!1462385))

(declare-fun bs!1032051 () Bool)

(declare-fun d!1462387 () Bool)

(assert (= bs!1032051 (and d!1462387 b!4637767)))

(declare-fun lambda!195451 () Int)

(assert (=> bs!1032051 (not (= lambda!195451 lambda!195436))))

(declare-fun bs!1032052 () Bool)

(assert (= bs!1032052 (and d!1462387 b!4637776)))

(assert (=> bs!1032052 (not (= lambda!195451 lambda!195438))))

(assert (=> bs!1032051 (not (= lambda!195451 lambda!195435))))

(declare-fun bs!1032053 () Bool)

(assert (= bs!1032053 (and d!1462387 b!4637781)))

(assert (=> bs!1032053 (not (= lambda!195451 lambda!195442))))

(declare-fun bs!1032054 () Bool)

(assert (= bs!1032054 (and d!1462387 b!4637774)))

(assert (=> bs!1032054 (not (= lambda!195451 lambda!195440))))

(declare-fun bs!1032055 () Bool)

(assert (= bs!1032055 (and d!1462387 d!1462375)))

(assert (=> bs!1032055 (not (= lambda!195451 lambda!195445))))

(declare-fun bs!1032056 () Bool)

(assert (= bs!1032056 (and d!1462387 b!4637786)))

(assert (=> bs!1032056 (not (= lambda!195451 lambda!195446))))

(declare-fun bs!1032057 () Bool)

(assert (= bs!1032057 (and d!1462387 b!4637779)))

(assert (=> bs!1032057 (not (= lambda!195451 lambda!195444))))

(assert (=> bs!1032054 (not (= lambda!195451 lambda!195439))))

(assert (=> bs!1032057 (not (= lambda!195451 lambda!195443))))

(declare-fun bs!1032058 () Bool)

(assert (= bs!1032058 (and d!1462387 d!1462377)))

(assert (=> bs!1032058 (not (= lambda!195451 lambda!195449))))

(declare-fun bs!1032059 () Bool)

(assert (= bs!1032059 (and d!1462387 b!4637769)))

(assert (=> bs!1032059 (not (= lambda!195451 lambda!195434))))

(declare-fun bs!1032060 () Bool)

(assert (= bs!1032060 (and d!1462387 d!1462333)))

(assert (=> bs!1032060 (not (= lambda!195451 lambda!195437))))

(declare-fun bs!1032061 () Bool)

(assert (= bs!1032061 (and d!1462387 d!1462311)))

(assert (=> bs!1032061 (= lambda!195451 lambda!195347)))

(declare-fun bs!1032062 () Bool)

(assert (= bs!1032062 (and d!1462387 b!4637784)))

(assert (=> bs!1032062 (not (= lambda!195451 lambda!195448))))

(declare-fun bs!1032063 () Bool)

(assert (= bs!1032063 (and d!1462387 d!1462373)))

(assert (=> bs!1032063 (not (= lambda!195451 lambda!195441))))

(assert (=> bs!1032062 (not (= lambda!195451 lambda!195447))))

(assert (=> d!1462387 true))

(assert (=> d!1462387 true))

(assert (=> d!1462387 (= (allKeysSameHash!1420 oldBucket!40 hash!414 hashF!1389) (forall!10915 oldBucket!40 lambda!195451))))

(declare-fun bs!1032064 () Bool)

(assert (= bs!1032064 d!1462387))

(declare-fun m!5496055 () Bool)

(assert (=> bs!1032064 m!5496055))

(assert (=> b!4637615 d!1462387))

(declare-fun d!1462389 () Bool)

(declare-fun hash!3646 (Hashable!5963 K!13065) (_ BitVec 64))

(assert (=> d!1462389 (= (hash!3644 hashF!1389 key!4968) (hash!3646 hashF!1389 key!4968))))

(declare-fun bs!1032065 () Bool)

(assert (= bs!1032065 d!1462389))

(declare-fun m!5496057 () Bool)

(assert (=> bs!1032065 m!5496057))

(assert (=> b!4637614 d!1462389))

(declare-fun d!1462391 () Bool)

(declare-fun res!1947144 () Bool)

(declare-fun e!2893149 () Bool)

(assert (=> d!1462391 (=> res!1947144 e!2893149)))

(assert (=> d!1462391 (= res!1947144 (not ((_ is Cons!51698) oldBucket!40)))))

(assert (=> d!1462391 (= (noDuplicateKeys!1566 oldBucket!40) e!2893149)))

(declare-fun b!4637836 () Bool)

(declare-fun e!2893150 () Bool)

(assert (=> b!4637836 (= e!2893149 e!2893150)))

(declare-fun res!1947145 () Bool)

(assert (=> b!4637836 (=> (not res!1947145) (not e!2893150))))

(assert (=> b!4637836 (= res!1947145 (not (containsKey!2581 (t!358896 oldBucket!40) (_1!29649 (h!57792 oldBucket!40)))))))

(declare-fun b!4637837 () Bool)

(assert (=> b!4637837 (= e!2893150 (noDuplicateKeys!1566 (t!358896 oldBucket!40)))))

(assert (= (and d!1462391 (not res!1947144)) b!4637836))

(assert (= (and b!4637836 res!1947145) b!4637837))

(declare-fun m!5496059 () Bool)

(assert (=> b!4637836 m!5496059))

(declare-fun m!5496061 () Bool)

(assert (=> b!4637837 m!5496061))

(assert (=> start!466120 d!1462391))

(declare-fun bs!1032066 () Bool)

(declare-fun b!4637840 () Bool)

(assert (= bs!1032066 (and b!4637840 b!4637767)))

(declare-fun lambda!195452 () Int)

(assert (=> bs!1032066 (= (= lt!1800099 lt!1800383) (= lambda!195452 lambda!195436))))

(declare-fun bs!1032067 () Bool)

(assert (= bs!1032067 (and b!4637840 b!4637776)))

(assert (=> bs!1032067 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195438))))

(assert (=> bs!1032066 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195435))))

(declare-fun bs!1032068 () Bool)

(assert (= bs!1032068 (and b!4637840 b!4637781)))

(assert (=> bs!1032068 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195442))))

(declare-fun bs!1032069 () Bool)

(assert (= bs!1032069 (and b!4637840 b!4637774)))

(assert (=> bs!1032069 (= (= lt!1800099 lt!1800404) (= lambda!195452 lambda!195440))))

(declare-fun bs!1032070 () Bool)

(assert (= bs!1032070 (and b!4637840 d!1462375)))

(assert (=> bs!1032070 (= (= lt!1800099 lt!1800413) (= lambda!195452 lambda!195445))))

(declare-fun bs!1032071 () Bool)

(assert (= bs!1032071 (and b!4637840 b!4637786)))

(assert (=> bs!1032071 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195446))))

(declare-fun bs!1032072 () Bool)

(assert (= bs!1032072 (and b!4637840 b!4637779)))

(assert (=> bs!1032072 (= (= lt!1800099 lt!1800425) (= lambda!195452 lambda!195444))))

(assert (=> bs!1032069 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195439))))

(assert (=> bs!1032072 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195443))))

(declare-fun bs!1032073 () Bool)

(assert (= bs!1032073 (and b!4637840 d!1462377)))

(assert (=> bs!1032073 (= (= lt!1800099 lt!1800434) (= lambda!195452 lambda!195449))))

(declare-fun bs!1032074 () Bool)

(assert (= bs!1032074 (and b!4637840 b!4637769)))

(assert (=> bs!1032074 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195434))))

(declare-fun bs!1032075 () Bool)

(assert (= bs!1032075 (and b!4637840 d!1462333)))

(assert (=> bs!1032075 (= (= lt!1800099 lt!1800371) (= lambda!195452 lambda!195437))))

(declare-fun bs!1032076 () Bool)

(assert (= bs!1032076 (and b!4637840 d!1462311)))

(assert (=> bs!1032076 (not (= lambda!195452 lambda!195347))))

(declare-fun bs!1032077 () Bool)

(assert (= bs!1032077 (and b!4637840 d!1462387)))

(assert (=> bs!1032077 (not (= lambda!195452 lambda!195451))))

(declare-fun bs!1032078 () Bool)

(assert (= bs!1032078 (and b!4637840 b!4637784)))

(assert (=> bs!1032078 (= (= lt!1800099 lt!1800446) (= lambda!195452 lambda!195448))))

(declare-fun bs!1032079 () Bool)

(assert (= bs!1032079 (and b!4637840 d!1462373)))

(assert (=> bs!1032079 (= (= lt!1800099 lt!1800392) (= lambda!195452 lambda!195441))))

(assert (=> bs!1032078 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195452 lambda!195447))))

(assert (=> b!4637840 true))

(declare-fun bs!1032080 () Bool)

(declare-fun b!4637838 () Bool)

(assert (= bs!1032080 (and b!4637838 b!4637767)))

(declare-fun lambda!195453 () Int)

(assert (=> bs!1032080 (= (= lt!1800099 lt!1800383) (= lambda!195453 lambda!195436))))

(declare-fun bs!1032081 () Bool)

(assert (= bs!1032081 (and b!4637838 b!4637776)))

(assert (=> bs!1032081 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195438))))

(declare-fun bs!1032082 () Bool)

(assert (= bs!1032082 (and b!4637838 b!4637840)))

(assert (=> bs!1032082 (= lambda!195453 lambda!195452)))

(assert (=> bs!1032080 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195435))))

(declare-fun bs!1032083 () Bool)

(assert (= bs!1032083 (and b!4637838 b!4637781)))

(assert (=> bs!1032083 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195442))))

(declare-fun bs!1032084 () Bool)

(assert (= bs!1032084 (and b!4637838 b!4637774)))

(assert (=> bs!1032084 (= (= lt!1800099 lt!1800404) (= lambda!195453 lambda!195440))))

(declare-fun bs!1032085 () Bool)

(assert (= bs!1032085 (and b!4637838 d!1462375)))

(assert (=> bs!1032085 (= (= lt!1800099 lt!1800413) (= lambda!195453 lambda!195445))))

(declare-fun bs!1032086 () Bool)

(assert (= bs!1032086 (and b!4637838 b!4637786)))

(assert (=> bs!1032086 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195446))))

(declare-fun bs!1032087 () Bool)

(assert (= bs!1032087 (and b!4637838 b!4637779)))

(assert (=> bs!1032087 (= (= lt!1800099 lt!1800425) (= lambda!195453 lambda!195444))))

(assert (=> bs!1032084 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195439))))

(assert (=> bs!1032087 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195443))))

(declare-fun bs!1032088 () Bool)

(assert (= bs!1032088 (and b!4637838 d!1462377)))

(assert (=> bs!1032088 (= (= lt!1800099 lt!1800434) (= lambda!195453 lambda!195449))))

(declare-fun bs!1032089 () Bool)

(assert (= bs!1032089 (and b!4637838 b!4637769)))

(assert (=> bs!1032089 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195434))))

(declare-fun bs!1032090 () Bool)

(assert (= bs!1032090 (and b!4637838 d!1462333)))

(assert (=> bs!1032090 (= (= lt!1800099 lt!1800371) (= lambda!195453 lambda!195437))))

(declare-fun bs!1032091 () Bool)

(assert (= bs!1032091 (and b!4637838 d!1462311)))

(assert (=> bs!1032091 (not (= lambda!195453 lambda!195347))))

(declare-fun bs!1032092 () Bool)

(assert (= bs!1032092 (and b!4637838 d!1462387)))

(assert (=> bs!1032092 (not (= lambda!195453 lambda!195451))))

(declare-fun bs!1032093 () Bool)

(assert (= bs!1032093 (and b!4637838 b!4637784)))

(assert (=> bs!1032093 (= (= lt!1800099 lt!1800446) (= lambda!195453 lambda!195448))))

(declare-fun bs!1032094 () Bool)

(assert (= bs!1032094 (and b!4637838 d!1462373)))

(assert (=> bs!1032094 (= (= lt!1800099 lt!1800392) (= lambda!195453 lambda!195441))))

(assert (=> bs!1032093 (= (= lt!1800099 (ListMap!4402 Nil!51698)) (= lambda!195453 lambda!195447))))

(assert (=> b!4637838 true))

(declare-fun lt!1800495 () ListMap!4401)

(declare-fun lambda!195454 () Int)

(assert (=> bs!1032080 (= (= lt!1800495 lt!1800383) (= lambda!195454 lambda!195436))))

(assert (=> bs!1032081 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195438))))

(assert (=> bs!1032082 (= (= lt!1800495 lt!1800099) (= lambda!195454 lambda!195452))))

(assert (=> bs!1032080 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195435))))

(assert (=> bs!1032084 (= (= lt!1800495 lt!1800404) (= lambda!195454 lambda!195440))))

(assert (=> bs!1032085 (= (= lt!1800495 lt!1800413) (= lambda!195454 lambda!195445))))

(assert (=> bs!1032086 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195446))))

(assert (=> bs!1032087 (= (= lt!1800495 lt!1800425) (= lambda!195454 lambda!195444))))

(assert (=> bs!1032084 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195439))))

(assert (=> bs!1032087 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195443))))

(assert (=> bs!1032088 (= (= lt!1800495 lt!1800434) (= lambda!195454 lambda!195449))))

(assert (=> bs!1032089 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195434))))

(assert (=> bs!1032090 (= (= lt!1800495 lt!1800371) (= lambda!195454 lambda!195437))))

(assert (=> bs!1032091 (not (= lambda!195454 lambda!195347))))

(assert (=> b!4637838 (= (= lt!1800495 lt!1800099) (= lambda!195454 lambda!195453))))

(assert (=> bs!1032083 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195442))))

(assert (=> bs!1032092 (not (= lambda!195454 lambda!195451))))

(assert (=> bs!1032093 (= (= lt!1800495 lt!1800446) (= lambda!195454 lambda!195448))))

(assert (=> bs!1032094 (= (= lt!1800495 lt!1800392) (= lambda!195454 lambda!195441))))

(assert (=> bs!1032093 (= (= lt!1800495 (ListMap!4402 Nil!51698)) (= lambda!195454 lambda!195447))))

(assert (=> b!4637838 true))

(declare-fun bs!1032095 () Bool)

(declare-fun d!1462393 () Bool)

(assert (= bs!1032095 (and d!1462393 b!4637838)))

(declare-fun lambda!195455 () Int)

(declare-fun lt!1800483 () ListMap!4401)

(assert (=> bs!1032095 (= (= lt!1800483 lt!1800495) (= lambda!195455 lambda!195454))))

(declare-fun bs!1032096 () Bool)

(assert (= bs!1032096 (and d!1462393 b!4637767)))

(assert (=> bs!1032096 (= (= lt!1800483 lt!1800383) (= lambda!195455 lambda!195436))))

(declare-fun bs!1032097 () Bool)

(assert (= bs!1032097 (and d!1462393 b!4637776)))

(assert (=> bs!1032097 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195438))))

(declare-fun bs!1032098 () Bool)

(assert (= bs!1032098 (and d!1462393 b!4637840)))

(assert (=> bs!1032098 (= (= lt!1800483 lt!1800099) (= lambda!195455 lambda!195452))))

(assert (=> bs!1032096 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195435))))

(declare-fun bs!1032099 () Bool)

(assert (= bs!1032099 (and d!1462393 b!4637774)))

(assert (=> bs!1032099 (= (= lt!1800483 lt!1800404) (= lambda!195455 lambda!195440))))

(declare-fun bs!1032100 () Bool)

(assert (= bs!1032100 (and d!1462393 d!1462375)))

(assert (=> bs!1032100 (= (= lt!1800483 lt!1800413) (= lambda!195455 lambda!195445))))

(declare-fun bs!1032101 () Bool)

(assert (= bs!1032101 (and d!1462393 b!4637786)))

(assert (=> bs!1032101 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195446))))

(declare-fun bs!1032102 () Bool)

(assert (= bs!1032102 (and d!1462393 b!4637779)))

(assert (=> bs!1032102 (= (= lt!1800483 lt!1800425) (= lambda!195455 lambda!195444))))

(assert (=> bs!1032099 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195439))))

(assert (=> bs!1032102 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195443))))

(declare-fun bs!1032103 () Bool)

(assert (= bs!1032103 (and d!1462393 d!1462377)))

(assert (=> bs!1032103 (= (= lt!1800483 lt!1800434) (= lambda!195455 lambda!195449))))

(declare-fun bs!1032104 () Bool)

(assert (= bs!1032104 (and d!1462393 b!4637769)))

(assert (=> bs!1032104 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195434))))

(declare-fun bs!1032105 () Bool)

(assert (= bs!1032105 (and d!1462393 d!1462333)))

(assert (=> bs!1032105 (= (= lt!1800483 lt!1800371) (= lambda!195455 lambda!195437))))

(declare-fun bs!1032106 () Bool)

(assert (= bs!1032106 (and d!1462393 d!1462311)))

(assert (=> bs!1032106 (not (= lambda!195455 lambda!195347))))

(assert (=> bs!1032095 (= (= lt!1800483 lt!1800099) (= lambda!195455 lambda!195453))))

(declare-fun bs!1032107 () Bool)

(assert (= bs!1032107 (and d!1462393 b!4637781)))

(assert (=> bs!1032107 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195442))))

(declare-fun bs!1032108 () Bool)

(assert (= bs!1032108 (and d!1462393 d!1462387)))

(assert (=> bs!1032108 (not (= lambda!195455 lambda!195451))))

(declare-fun bs!1032109 () Bool)

(assert (= bs!1032109 (and d!1462393 b!4637784)))

(assert (=> bs!1032109 (= (= lt!1800483 lt!1800446) (= lambda!195455 lambda!195448))))

(declare-fun bs!1032110 () Bool)

(assert (= bs!1032110 (and d!1462393 d!1462373)))

(assert (=> bs!1032110 (= (= lt!1800483 lt!1800392) (= lambda!195455 lambda!195441))))

(assert (=> bs!1032109 (= (= lt!1800483 (ListMap!4402 Nil!51698)) (= lambda!195455 lambda!195447))))

(assert (=> d!1462393 true))

(declare-fun bm!323716 () Bool)

(declare-fun c!793733 () Bool)

(declare-fun call!323721 () Bool)

(assert (=> bm!323716 (= call!323721 (forall!10915 (ite c!793733 (toList!5082 lt!1800099) oldBucket!40) (ite c!793733 lambda!195452 lambda!195454)))))

(declare-fun bm!323717 () Bool)

(declare-fun call!323722 () Bool)

(assert (=> bm!323717 (= call!323722 (forall!10915 (ite c!793733 (toList!5082 lt!1800099) (t!358896 oldBucket!40)) (ite c!793733 lambda!195452 lambda!195454)))))

(declare-fun e!2893152 () ListMap!4401)

(assert (=> b!4637838 (= e!2893152 lt!1800495)))

(declare-fun lt!1800487 () ListMap!4401)

(assert (=> b!4637838 (= lt!1800487 (+!1920 lt!1800099 (h!57792 oldBucket!40)))))

(assert (=> b!4637838 (= lt!1800495 (addToMapMapFromBucket!1025 (t!358896 oldBucket!40) (+!1920 lt!1800099 (h!57792 oldBucket!40))))))

(declare-fun lt!1800496 () Unit!114653)

(declare-fun call!323723 () Unit!114653)

(assert (=> b!4637838 (= lt!1800496 call!323723)))

(assert (=> b!4637838 (forall!10915 (toList!5082 lt!1800099) lambda!195453)))

(declare-fun lt!1800478 () Unit!114653)

(assert (=> b!4637838 (= lt!1800478 lt!1800496)))

(assert (=> b!4637838 (forall!10915 (toList!5082 lt!1800487) lambda!195454)))

(declare-fun lt!1800482 () Unit!114653)

(declare-fun Unit!114758 () Unit!114653)

(assert (=> b!4637838 (= lt!1800482 Unit!114758)))

(assert (=> b!4637838 call!323722))

(declare-fun lt!1800485 () Unit!114653)

(declare-fun Unit!114759 () Unit!114653)

(assert (=> b!4637838 (= lt!1800485 Unit!114759)))

(declare-fun lt!1800498 () Unit!114653)

(declare-fun Unit!114760 () Unit!114653)

(assert (=> b!4637838 (= lt!1800498 Unit!114760)))

(declare-fun lt!1800493 () Unit!114653)

(assert (=> b!4637838 (= lt!1800493 (forallContained!3140 (toList!5082 lt!1800487) lambda!195454 (h!57792 oldBucket!40)))))

(assert (=> b!4637838 (contains!14813 lt!1800487 (_1!29649 (h!57792 oldBucket!40)))))

(declare-fun lt!1800490 () Unit!114653)

(declare-fun Unit!114761 () Unit!114653)

(assert (=> b!4637838 (= lt!1800490 Unit!114761)))

(assert (=> b!4637838 (contains!14813 lt!1800495 (_1!29649 (h!57792 oldBucket!40)))))

(declare-fun lt!1800486 () Unit!114653)

(declare-fun Unit!114762 () Unit!114653)

(assert (=> b!4637838 (= lt!1800486 Unit!114762)))

(assert (=> b!4637838 call!323721))

(declare-fun lt!1800479 () Unit!114653)

(declare-fun Unit!114763 () Unit!114653)

(assert (=> b!4637838 (= lt!1800479 Unit!114763)))

(assert (=> b!4637838 (forall!10915 (toList!5082 lt!1800487) lambda!195454)))

(declare-fun lt!1800497 () Unit!114653)

(declare-fun Unit!114764 () Unit!114653)

(assert (=> b!4637838 (= lt!1800497 Unit!114764)))

(declare-fun lt!1800488 () Unit!114653)

(declare-fun Unit!114765 () Unit!114653)

(assert (=> b!4637838 (= lt!1800488 Unit!114765)))

(declare-fun lt!1800492 () Unit!114653)

(assert (=> b!4637838 (= lt!1800492 (addForallContainsKeyThenBeforeAdding!549 lt!1800099 lt!1800495 (_1!29649 (h!57792 oldBucket!40)) (_2!29649 (h!57792 oldBucket!40))))))

(assert (=> b!4637838 (forall!10915 (toList!5082 lt!1800099) lambda!195454)))

(declare-fun lt!1800480 () Unit!114653)

(assert (=> b!4637838 (= lt!1800480 lt!1800492)))

(assert (=> b!4637838 (forall!10915 (toList!5082 lt!1800099) lambda!195454)))

(declare-fun lt!1800481 () Unit!114653)

(declare-fun Unit!114766 () Unit!114653)

(assert (=> b!4637838 (= lt!1800481 Unit!114766)))

(declare-fun res!1947148 () Bool)

(assert (=> b!4637838 (= res!1947148 (forall!10915 oldBucket!40 lambda!195454))))

(declare-fun e!2893151 () Bool)

(assert (=> b!4637838 (=> (not res!1947148) (not e!2893151))))

(assert (=> b!4637838 e!2893151))

(declare-fun lt!1800489 () Unit!114653)

(declare-fun Unit!114767 () Unit!114653)

(assert (=> b!4637838 (= lt!1800489 Unit!114767)))

(declare-fun b!4637839 () Bool)

(declare-fun e!2893153 () Bool)

(assert (=> b!4637839 (= e!2893153 (invariantList!1248 (toList!5082 lt!1800483)))))

(declare-fun bm!323718 () Bool)

(assert (=> bm!323718 (= call!323723 (lemmaContainsAllItsOwnKeys!550 lt!1800099))))

(assert (=> d!1462393 e!2893153))

(declare-fun res!1947146 () Bool)

(assert (=> d!1462393 (=> (not res!1947146) (not e!2893153))))

(assert (=> d!1462393 (= res!1947146 (forall!10915 oldBucket!40 lambda!195455))))

(assert (=> d!1462393 (= lt!1800483 e!2893152)))

(assert (=> d!1462393 (= c!793733 ((_ is Nil!51698) oldBucket!40))))

(assert (=> d!1462393 (noDuplicateKeys!1566 oldBucket!40)))

(assert (=> d!1462393 (= (addToMapMapFromBucket!1025 oldBucket!40 lt!1800099) lt!1800483)))

(assert (=> b!4637840 (= e!2893152 lt!1800099)))

(declare-fun lt!1800484 () Unit!114653)

(assert (=> b!4637840 (= lt!1800484 call!323723)))

(assert (=> b!4637840 call!323721))

(declare-fun lt!1800494 () Unit!114653)

(assert (=> b!4637840 (= lt!1800494 lt!1800484)))

(assert (=> b!4637840 call!323722))

(declare-fun lt!1800491 () Unit!114653)

(declare-fun Unit!114768 () Unit!114653)

(assert (=> b!4637840 (= lt!1800491 Unit!114768)))

(declare-fun b!4637841 () Bool)

(assert (=> b!4637841 (= e!2893151 (forall!10915 (toList!5082 lt!1800099) lambda!195454))))

(declare-fun b!4637842 () Bool)

(declare-fun res!1947147 () Bool)

(assert (=> b!4637842 (=> (not res!1947147) (not e!2893153))))

(assert (=> b!4637842 (= res!1947147 (forall!10915 (toList!5082 lt!1800099) lambda!195455))))

(assert (= (and d!1462393 c!793733) b!4637840))

(assert (= (and d!1462393 (not c!793733)) b!4637838))

(assert (= (and b!4637838 res!1947148) b!4637841))

(assert (= (or b!4637840 b!4637838) bm!323718))

(assert (= (or b!4637840 b!4637838) bm!323716))

(assert (= (or b!4637840 b!4637838) bm!323717))

(assert (= (and d!1462393 res!1947146) b!4637842))

(assert (= (and b!4637842 res!1947147) b!4637839))

(declare-fun m!5496063 () Bool)

(assert (=> bm!323716 m!5496063))

(declare-fun m!5496065 () Bool)

(assert (=> d!1462393 m!5496065))

(assert (=> d!1462393 m!5495537))

(declare-fun m!5496067 () Bool)

(assert (=> b!4637842 m!5496067))

(declare-fun m!5496069 () Bool)

(assert (=> b!4637841 m!5496069))

(declare-fun m!5496071 () Bool)

(assert (=> bm!323717 m!5496071))

(declare-fun m!5496073 () Bool)

(assert (=> bm!323718 m!5496073))

(declare-fun m!5496075 () Bool)

(assert (=> b!4637839 m!5496075))

(declare-fun m!5496077 () Bool)

(assert (=> b!4637838 m!5496077))

(assert (=> b!4637838 m!5496069))

(declare-fun m!5496079 () Bool)

(assert (=> b!4637838 m!5496079))

(assert (=> b!4637838 m!5496079))

(declare-fun m!5496081 () Bool)

(assert (=> b!4637838 m!5496081))

(declare-fun m!5496083 () Bool)

(assert (=> b!4637838 m!5496083))

(declare-fun m!5496085 () Bool)

(assert (=> b!4637838 m!5496085))

(declare-fun m!5496087 () Bool)

(assert (=> b!4637838 m!5496087))

(declare-fun m!5496089 () Bool)

(assert (=> b!4637838 m!5496089))

(assert (=> b!4637838 m!5496069))

(declare-fun m!5496091 () Bool)

(assert (=> b!4637838 m!5496091))

(assert (=> b!4637838 m!5496085))

(declare-fun m!5496093 () Bool)

(assert (=> b!4637838 m!5496093))

(assert (=> b!4637613 d!1462393))

(declare-fun bs!1032111 () Bool)

(declare-fun d!1462395 () Bool)

(assert (= bs!1032111 (and d!1462395 d!1462319)))

(declare-fun lambda!195456 () Int)

(assert (=> bs!1032111 (= lambda!195456 lambda!195350)))

(declare-fun bs!1032112 () Bool)

(assert (= bs!1032112 (and d!1462395 d!1462321)))

(assert (=> bs!1032112 (= lambda!195456 lambda!195351)))

(declare-fun bs!1032113 () Bool)

(assert (= bs!1032113 (and d!1462395 d!1462385)))

(assert (=> bs!1032113 (= lambda!195456 lambda!195450)))

(declare-fun lt!1800499 () ListMap!4401)

(assert (=> d!1462395 (invariantList!1248 (toList!5082 lt!1800499))))

(declare-fun e!2893154 () ListMap!4401)

(assert (=> d!1462395 (= lt!1800499 e!2893154)))

(declare-fun c!793734 () Bool)

(assert (=> d!1462395 (= c!793734 ((_ is Cons!51699) Nil!51699))))

(assert (=> d!1462395 (forall!10916 Nil!51699 lambda!195456)))

(assert (=> d!1462395 (= (extractMap!1622 Nil!51699) lt!1800499)))

(declare-fun b!4637843 () Bool)

(assert (=> b!4637843 (= e!2893154 (addToMapMapFromBucket!1025 (_2!29650 (h!57793 Nil!51699)) (extractMap!1622 (t!358897 Nil!51699))))))

(declare-fun b!4637844 () Bool)

(assert (=> b!4637844 (= e!2893154 (ListMap!4402 Nil!51698))))

(assert (= (and d!1462395 c!793734) b!4637843))

(assert (= (and d!1462395 (not c!793734)) b!4637844))

(declare-fun m!5496095 () Bool)

(assert (=> d!1462395 m!5496095))

(declare-fun m!5496097 () Bool)

(assert (=> d!1462395 m!5496097))

(declare-fun m!5496099 () Bool)

(assert (=> b!4637843 m!5496099))

(assert (=> b!4637843 m!5496099))

(declare-fun m!5496101 () Bool)

(assert (=> b!4637843 m!5496101))

(assert (=> b!4637613 d!1462395))

(declare-fun b!4637849 () Bool)

(declare-fun tp!1342650 () Bool)

(declare-fun e!2893157 () Bool)

(assert (=> b!4637849 (= e!2893157 (and tp_is_empty!29557 tp_is_empty!29559 tp!1342650))))

(assert (=> b!4637618 (= tp!1342643 e!2893157)))

(assert (= (and b!4637618 ((_ is Cons!51698) (t!358896 newBucket!224))) b!4637849))

(declare-fun b!4637850 () Bool)

(declare-fun tp!1342651 () Bool)

(declare-fun e!2893158 () Bool)

(assert (=> b!4637850 (= e!2893158 (and tp_is_empty!29557 tp_is_empty!29559 tp!1342651))))

(assert (=> b!4637620 (= tp!1342642 e!2893158)))

(assert (= (and b!4637620 ((_ is Cons!51698) (t!358896 oldBucket!40))) b!4637850))

(check-sat (not bm!323716) (not b!4637645) (not d!1462331) (not d!1462389) (not bm!323705) (not b!4637836) (not b!4637839) (not b!4637782) (not d!1462327) (not bm!323704) (not b!4637785) (not b!4637778) (not d!1462311) (not b!4637788) (not b!4637829) (not d!1462329) tp_is_empty!29559 (not bm!323712) (not b!4637827) (not d!1462323) (not b!4637833) (not b!4637647) (not d!1462321) (not b!4637657) (not b!4637775) (not b!4637806) (not d!1462377) (not b!4637799) (not d!1462393) (not b!4637826) (not b!4637777) tp_is_empty!29557 (not b!4637767) (not d!1462387) (not b!4637774) (not b!4637838) (not b!4637658) (not d!1462383) (not bm!323710) (not d!1462379) (not b!4637768) (not bm!323709) (not d!1462385) (not b!4637834) (not b!4637841) (not d!1462319) (not b!4637780) (not bm!323703) (not d!1462373) (not b!4637784) (not b!4637849) (not d!1462375) (not b!4637850) (not d!1462395) (not bm!323701) (not d!1462333) (not b!4637787) (not b!4637665) (not bm!323711) (not b!4637828) (not b!4637831) (not b!4637805) (not b!4637771) (not bm!323718) (not b!4637842) (not bm!323708) (not b!4637830) (not b!4637779) (not b!4637770) (not bm!323715) (not b!4637783) (not bm!323702) (not bm!323706) (not b!4637843) (not bm!323717) (not d!1462371) (not b!4637837) (not bm!323707) (not b!4637666))
(check-sat)
