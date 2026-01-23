; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436394 () Bool)

(assert start!436394)

(declare-fun b!4454444 () Bool)

(declare-fun e!2773806 () Bool)

(declare-datatypes ((V!11564 0))(
  ( (V!11565 (val!17325 Int)) )
))
(declare-datatypes ((K!11318 0))(
  ( (K!11319 (val!17326 Int)) )
))
(declare-datatypes ((tuple2!49970 0))(
  ( (tuple2!49971 (_1!28279 K!11318) (_2!28279 V!11564)) )
))
(declare-datatypes ((List!50066 0))(
  ( (Nil!49942) (Cons!49942 (h!55687 tuple2!49970) (t!357016 List!50066)) )
))
(declare-datatypes ((tuple2!49972 0))(
  ( (tuple2!49973 (_1!28280 (_ BitVec 64)) (_2!28280 List!50066)) )
))
(declare-datatypes ((List!50067 0))(
  ( (Nil!49943) (Cons!49943 (h!55688 tuple2!49972) (t!357017 List!50067)) )
))
(declare-datatypes ((ListLongMap!2433 0))(
  ( (ListLongMap!2434 (toList!3779 List!50067)) )
))
(declare-fun lt!1646033 () ListLongMap!2433)

(declare-fun lambda!159748 () Int)

(declare-fun forall!9798 (List!50067 Int) Bool)

(assert (=> b!4454444 (= e!2773806 (not (forall!9798 (toList!3779 lt!1646033) lambda!159748)))))

(declare-fun lm!1837 () ListLongMap!2433)

(declare-datatypes ((ListMap!3019 0))(
  ( (ListMap!3020 (toList!3780 List!50066)) )
))
(declare-fun lt!1646034 () ListMap!3019)

(declare-fun extractMap!955 (List!50067) ListMap!3019)

(declare-fun addToMapMapFromBucket!486 (List!50066 ListMap!3019) ListMap!3019)

(assert (=> b!4454444 (= (extractMap!955 (toList!3779 lm!1837)) (addToMapMapFromBucket!486 (_2!28280 (h!55688 (toList!3779 lm!1837))) lt!1646034))))

(declare-fun b!4454446 () Bool)

(declare-fun e!2773807 () Bool)

(declare-fun tp!1334796 () Bool)

(assert (=> b!4454446 (= e!2773807 tp!1334796)))

(declare-fun b!4454447 () Bool)

(declare-fun res!1846292 () Bool)

(declare-fun e!2773808 () Bool)

(assert (=> b!4454447 (=> (not res!1846292) (not e!2773808))))

(declare-datatypes ((Hashable!5292 0))(
  ( (HashableExt!5291 (__x!30995 Int)) )
))
(declare-fun hashF!1304 () Hashable!5292)

(declare-fun allKeysSameHashInMap!1004 (ListLongMap!2433 Hashable!5292) Bool)

(assert (=> b!4454447 (= res!1846292 (allKeysSameHashInMap!1004 lm!1837 hashF!1304))))

(declare-fun res!1846291 () Bool)

(assert (=> start!436394 (=> (not res!1846291) (not e!2773808))))

(assert (=> start!436394 (= res!1846291 (forall!9798 (toList!3779 lm!1837) lambda!159748))))

(assert (=> start!436394 e!2773808))

(declare-fun inv!65505 (ListLongMap!2433) Bool)

(assert (=> start!436394 (and (inv!65505 lm!1837) e!2773807)))

(assert (=> start!436394 true))

(declare-fun tp_is_empty!26781 () Bool)

(assert (=> start!436394 tp_is_empty!26781))

(declare-fun b!4454445 () Bool)

(assert (=> b!4454445 (= e!2773808 e!2773806)))

(declare-fun res!1846290 () Bool)

(assert (=> b!4454445 (=> (not res!1846290) (not e!2773806))))

(declare-fun key!4369 () K!11318)

(declare-fun contains!12510 (ListMap!3019 K!11318) Bool)

(assert (=> b!4454445 (= res!1846290 (contains!12510 lt!1646034 key!4369))))

(assert (=> b!4454445 (= lt!1646034 (extractMap!955 (toList!3779 lt!1646033)))))

(declare-fun tail!7463 (ListLongMap!2433) ListLongMap!2433)

(assert (=> b!4454445 (= lt!1646033 (tail!7463 lm!1837))))

(declare-fun b!4454448 () Bool)

(declare-fun res!1846293 () Bool)

(assert (=> b!4454448 (=> (not res!1846293) (not e!2773808))))

(declare-fun isEmpty!28444 (List!50067) Bool)

(assert (=> b!4454448 (= res!1846293 (not (isEmpty!28444 (toList!3779 lm!1837))))))

(declare-fun b!4454449 () Bool)

(declare-fun res!1846294 () Bool)

(assert (=> b!4454449 (=> (not res!1846294) (not e!2773806))))

(assert (=> b!4454449 (= res!1846294 (is-Cons!49943 (toList!3779 lm!1837)))))

(assert (= (and start!436394 res!1846291) b!4454447))

(assert (= (and b!4454447 res!1846292) b!4454448))

(assert (= (and b!4454448 res!1846293) b!4454445))

(assert (= (and b!4454445 res!1846290) b!4454449))

(assert (= (and b!4454449 res!1846294) b!4454444))

(assert (= start!436394 b!4454446))

(declare-fun m!5155537 () Bool)

(assert (=> start!436394 m!5155537))

(declare-fun m!5155539 () Bool)

(assert (=> start!436394 m!5155539))

(declare-fun m!5155541 () Bool)

(assert (=> b!4454444 m!5155541))

(declare-fun m!5155543 () Bool)

(assert (=> b!4454444 m!5155543))

(declare-fun m!5155545 () Bool)

(assert (=> b!4454444 m!5155545))

(declare-fun m!5155547 () Bool)

(assert (=> b!4454448 m!5155547))

(declare-fun m!5155549 () Bool)

(assert (=> b!4454447 m!5155549))

(declare-fun m!5155551 () Bool)

(assert (=> b!4454445 m!5155551))

(declare-fun m!5155553 () Bool)

(assert (=> b!4454445 m!5155553))

(declare-fun m!5155555 () Bool)

(assert (=> b!4454445 m!5155555))

(push 1)

(assert (not b!4454447))

(assert (not b!4454448))

(assert (not b!4454445))

(assert tp_is_empty!26781)

(assert (not start!436394))

(assert (not b!4454444))

(assert (not b!4454446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!790393 () Bool)

(declare-fun d!1358824 () Bool)

(assert (= bs!790393 (and d!1358824 start!436394)))

(declare-fun lambda!159756 () Int)

(assert (=> bs!790393 (not (= lambda!159756 lambda!159748))))

(assert (=> d!1358824 true))

(assert (=> d!1358824 (= (allKeysSameHashInMap!1004 lm!1837 hashF!1304) (forall!9798 (toList!3779 lm!1837) lambda!159756))))

(declare-fun bs!790394 () Bool)

(assert (= bs!790394 d!1358824))

(declare-fun m!5155577 () Bool)

(assert (=> bs!790394 m!5155577))

(assert (=> b!4454447 d!1358824))

(declare-fun b!4454488 () Bool)

(declare-datatypes ((Unit!85830 0))(
  ( (Unit!85831) )
))
(declare-fun e!2773831 () Unit!85830)

(declare-fun lt!1646058 () Unit!85830)

(assert (=> b!4454488 (= e!2773831 lt!1646058)))

(declare-fun lt!1646060 () Unit!85830)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!737 (List!50066 K!11318) Unit!85830)

(assert (=> b!4454488 (= lt!1646060 (lemmaContainsKeyImpliesGetValueByKeyDefined!737 (toList!3780 lt!1646034) key!4369))))

(declare-datatypes ((Option!10846 0))(
  ( (None!10845) (Some!10845 (v!44101 V!11564)) )
))
(declare-fun isDefined!8134 (Option!10846) Bool)

(declare-fun getValueByKey!832 (List!50066 K!11318) Option!10846)

(assert (=> b!4454488 (isDefined!8134 (getValueByKey!832 (toList!3780 lt!1646034) key!4369))))

(declare-fun lt!1646063 () Unit!85830)

(assert (=> b!4454488 (= lt!1646063 lt!1646060)))

(declare-fun lemmaInListThenGetKeysListContains!311 (List!50066 K!11318) Unit!85830)

(assert (=> b!4454488 (= lt!1646058 (lemmaInListThenGetKeysListContains!311 (toList!3780 lt!1646034) key!4369))))

(declare-fun call!309979 () Bool)

(assert (=> b!4454488 call!309979))

(declare-fun b!4454489 () Bool)

(declare-fun e!2773830 () Unit!85830)

(assert (=> b!4454489 (= e!2773831 e!2773830)))

(declare-fun c!758331 () Bool)

(assert (=> b!4454489 (= c!758331 call!309979)))

(declare-fun b!4454490 () Bool)

(declare-datatypes ((List!50070 0))(
  ( (Nil!49946) (Cons!49946 (h!55691 K!11318) (t!357020 List!50070)) )
))
(declare-fun e!2773834 () List!50070)

(declare-fun getKeysList!314 (List!50066) List!50070)

(assert (=> b!4454490 (= e!2773834 (getKeysList!314 (toList!3780 lt!1646034)))))

(declare-fun b!4454491 () Bool)

(assert (=> b!4454491 false))

(declare-fun lt!1646061 () Unit!85830)

(declare-fun lt!1646057 () Unit!85830)

(assert (=> b!4454491 (= lt!1646061 lt!1646057)))

(declare-fun containsKey!1308 (List!50066 K!11318) Bool)

(assert (=> b!4454491 (containsKey!1308 (toList!3780 lt!1646034) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!312 (List!50066 K!11318) Unit!85830)

(assert (=> b!4454491 (= lt!1646057 (lemmaInGetKeysListThenContainsKey!312 (toList!3780 lt!1646034) key!4369))))

(declare-fun Unit!85832 () Unit!85830)

(assert (=> b!4454491 (= e!2773830 Unit!85832)))

(declare-fun d!1358826 () Bool)

(declare-fun e!2773833 () Bool)

(assert (=> d!1358826 e!2773833))

(declare-fun res!1846318 () Bool)

(assert (=> d!1358826 (=> res!1846318 e!2773833)))

(declare-fun e!2773832 () Bool)

(assert (=> d!1358826 (= res!1846318 e!2773832)))

(declare-fun res!1846317 () Bool)

(assert (=> d!1358826 (=> (not res!1846317) (not e!2773832))))

(declare-fun lt!1646064 () Bool)

(assert (=> d!1358826 (= res!1846317 (not lt!1646064))))

(declare-fun lt!1646059 () Bool)

(assert (=> d!1358826 (= lt!1646064 lt!1646059)))

(declare-fun lt!1646062 () Unit!85830)

(assert (=> d!1358826 (= lt!1646062 e!2773831)))

(declare-fun c!758329 () Bool)

(assert (=> d!1358826 (= c!758329 lt!1646059)))

(assert (=> d!1358826 (= lt!1646059 (containsKey!1308 (toList!3780 lt!1646034) key!4369))))

(assert (=> d!1358826 (= (contains!12510 lt!1646034 key!4369) lt!1646064)))

(declare-fun b!4454492 () Bool)

(declare-fun Unit!85833 () Unit!85830)

(assert (=> b!4454492 (= e!2773830 Unit!85833)))

(declare-fun b!4454493 () Bool)

(declare-fun keys!17148 (ListMap!3019) List!50070)

(assert (=> b!4454493 (= e!2773834 (keys!17148 lt!1646034))))

(declare-fun b!4454494 () Bool)

(declare-fun contains!12512 (List!50070 K!11318) Bool)

(assert (=> b!4454494 (= e!2773832 (not (contains!12512 (keys!17148 lt!1646034) key!4369)))))

(declare-fun b!4454495 () Bool)

(declare-fun e!2773835 () Bool)

(assert (=> b!4454495 (= e!2773833 e!2773835)))

(declare-fun res!1846316 () Bool)

(assert (=> b!4454495 (=> (not res!1846316) (not e!2773835))))

(assert (=> b!4454495 (= res!1846316 (isDefined!8134 (getValueByKey!832 (toList!3780 lt!1646034) key!4369)))))

(declare-fun b!4454496 () Bool)

(assert (=> b!4454496 (= e!2773835 (contains!12512 (keys!17148 lt!1646034) key!4369))))

(declare-fun bm!309974 () Bool)

(assert (=> bm!309974 (= call!309979 (contains!12512 e!2773834 key!4369))))

(declare-fun c!758330 () Bool)

(assert (=> bm!309974 (= c!758330 c!758329)))

(assert (= (and d!1358826 c!758329) b!4454488))

(assert (= (and d!1358826 (not c!758329)) b!4454489))

(assert (= (and b!4454489 c!758331) b!4454491))

(assert (= (and b!4454489 (not c!758331)) b!4454492))

(assert (= (or b!4454488 b!4454489) bm!309974))

(assert (= (and bm!309974 c!758330) b!4454490))

(assert (= (and bm!309974 (not c!758330)) b!4454493))

(assert (= (and d!1358826 res!1846317) b!4454494))

(assert (= (and d!1358826 (not res!1846318)) b!4454495))

(assert (= (and b!4454495 res!1846316) b!4454496))

(declare-fun m!5155579 () Bool)

(assert (=> b!4454488 m!5155579))

(declare-fun m!5155581 () Bool)

(assert (=> b!4454488 m!5155581))

(assert (=> b!4454488 m!5155581))

(declare-fun m!5155583 () Bool)

(assert (=> b!4454488 m!5155583))

(declare-fun m!5155585 () Bool)

(assert (=> b!4454488 m!5155585))

(declare-fun m!5155587 () Bool)

(assert (=> b!4454494 m!5155587))

(assert (=> b!4454494 m!5155587))

(declare-fun m!5155589 () Bool)

(assert (=> b!4454494 m!5155589))

(declare-fun m!5155591 () Bool)

(assert (=> bm!309974 m!5155591))

(assert (=> b!4454495 m!5155581))

(assert (=> b!4454495 m!5155581))

(assert (=> b!4454495 m!5155583))

(declare-fun m!5155593 () Bool)

(assert (=> d!1358826 m!5155593))

(declare-fun m!5155595 () Bool)

(assert (=> b!4454490 m!5155595))

(assert (=> b!4454496 m!5155587))

(assert (=> b!4454496 m!5155587))

(assert (=> b!4454496 m!5155589))

(assert (=> b!4454491 m!5155593))

(declare-fun m!5155597 () Bool)

(assert (=> b!4454491 m!5155597))

(assert (=> b!4454493 m!5155587))

(assert (=> b!4454445 d!1358826))

(declare-fun bs!790395 () Bool)

(declare-fun d!1358830 () Bool)

(assert (= bs!790395 (and d!1358830 start!436394)))

(declare-fun lambda!159759 () Int)

(assert (=> bs!790395 (= lambda!159759 lambda!159748)))

(declare-fun bs!790396 () Bool)

(assert (= bs!790396 (and d!1358830 d!1358824)))

(assert (=> bs!790396 (not (= lambda!159759 lambda!159756))))

(declare-fun lt!1646067 () ListMap!3019)

(declare-fun invariantList!868 (List!50066) Bool)

(assert (=> d!1358830 (invariantList!868 (toList!3780 lt!1646067))))

(declare-fun e!2773838 () ListMap!3019)

(assert (=> d!1358830 (= lt!1646067 e!2773838)))

(declare-fun c!758334 () Bool)

(assert (=> d!1358830 (= c!758334 (is-Cons!49943 (toList!3779 lt!1646033)))))

(assert (=> d!1358830 (forall!9798 (toList!3779 lt!1646033) lambda!159759)))

(assert (=> d!1358830 (= (extractMap!955 (toList!3779 lt!1646033)) lt!1646067)))

(declare-fun b!4454501 () Bool)

(assert (=> b!4454501 (= e!2773838 (addToMapMapFromBucket!486 (_2!28280 (h!55688 (toList!3779 lt!1646033))) (extractMap!955 (t!357017 (toList!3779 lt!1646033)))))))

(declare-fun b!4454502 () Bool)

(assert (=> b!4454502 (= e!2773838 (ListMap!3020 Nil!49942))))

(assert (= (and d!1358830 c!758334) b!4454501))

(assert (= (and d!1358830 (not c!758334)) b!4454502))

(declare-fun m!5155599 () Bool)

(assert (=> d!1358830 m!5155599))

(declare-fun m!5155601 () Bool)

(assert (=> d!1358830 m!5155601))

(declare-fun m!5155603 () Bool)

(assert (=> b!4454501 m!5155603))

(assert (=> b!4454501 m!5155603))

(declare-fun m!5155605 () Bool)

(assert (=> b!4454501 m!5155605))

(assert (=> b!4454445 d!1358830))

(declare-fun d!1358832 () Bool)

(declare-fun tail!7465 (List!50067) List!50067)

(assert (=> d!1358832 (= (tail!7463 lm!1837) (ListLongMap!2434 (tail!7465 (toList!3779 lm!1837))))))

(declare-fun bs!790397 () Bool)

(assert (= bs!790397 d!1358832))

(declare-fun m!5155607 () Bool)

(assert (=> bs!790397 m!5155607))

(assert (=> b!4454445 d!1358832))

(declare-fun d!1358834 () Bool)

(declare-fun res!1846323 () Bool)

(declare-fun e!2773843 () Bool)

(assert (=> d!1358834 (=> res!1846323 e!2773843)))

(assert (=> d!1358834 (= res!1846323 (is-Nil!49943 (toList!3779 lt!1646033)))))

(assert (=> d!1358834 (= (forall!9798 (toList!3779 lt!1646033) lambda!159748) e!2773843)))

(declare-fun b!4454507 () Bool)

(declare-fun e!2773844 () Bool)

(assert (=> b!4454507 (= e!2773843 e!2773844)))

(declare-fun res!1846324 () Bool)

(assert (=> b!4454507 (=> (not res!1846324) (not e!2773844))))

(declare-fun dynLambda!20957 (Int tuple2!49972) Bool)

(assert (=> b!4454507 (= res!1846324 (dynLambda!20957 lambda!159748 (h!55688 (toList!3779 lt!1646033))))))

(declare-fun b!4454508 () Bool)

(assert (=> b!4454508 (= e!2773844 (forall!9798 (t!357017 (toList!3779 lt!1646033)) lambda!159748))))

(assert (= (and d!1358834 (not res!1846323)) b!4454507))

(assert (= (and b!4454507 res!1846324) b!4454508))

(declare-fun b_lambda!147485 () Bool)

(assert (=> (not b_lambda!147485) (not b!4454507)))

(declare-fun m!5155609 () Bool)

(assert (=> b!4454507 m!5155609))

(declare-fun m!5155611 () Bool)

(assert (=> b!4454508 m!5155611))

(assert (=> b!4454444 d!1358834))

(declare-fun bs!790398 () Bool)

(declare-fun d!1358836 () Bool)

(assert (= bs!790398 (and d!1358836 start!436394)))

(declare-fun lambda!159760 () Int)

(assert (=> bs!790398 (= lambda!159760 lambda!159748)))

(declare-fun bs!790399 () Bool)

(assert (= bs!790399 (and d!1358836 d!1358824)))

(assert (=> bs!790399 (not (= lambda!159760 lambda!159756))))

(declare-fun bs!790400 () Bool)

(assert (= bs!790400 (and d!1358836 d!1358830)))

(assert (=> bs!790400 (= lambda!159760 lambda!159759)))

(declare-fun lt!1646068 () ListMap!3019)

(assert (=> d!1358836 (invariantList!868 (toList!3780 lt!1646068))))

(declare-fun e!2773845 () ListMap!3019)

(assert (=> d!1358836 (= lt!1646068 e!2773845)))

(declare-fun c!758335 () Bool)

(assert (=> d!1358836 (= c!758335 (is-Cons!49943 (toList!3779 lm!1837)))))

(assert (=> d!1358836 (forall!9798 (toList!3779 lm!1837) lambda!159760)))

(assert (=> d!1358836 (= (extractMap!955 (toList!3779 lm!1837)) lt!1646068)))

(declare-fun b!4454509 () Bool)

(assert (=> b!4454509 (= e!2773845 (addToMapMapFromBucket!486 (_2!28280 (h!55688 (toList!3779 lm!1837))) (extractMap!955 (t!357017 (toList!3779 lm!1837)))))))

(declare-fun b!4454510 () Bool)

(assert (=> b!4454510 (= e!2773845 (ListMap!3020 Nil!49942))))

(assert (= (and d!1358836 c!758335) b!4454509))

(assert (= (and d!1358836 (not c!758335)) b!4454510))

(declare-fun m!5155613 () Bool)

(assert (=> d!1358836 m!5155613))

(declare-fun m!5155615 () Bool)

(assert (=> d!1358836 m!5155615))

(declare-fun m!5155617 () Bool)

(assert (=> b!4454509 m!5155617))

(assert (=> b!4454509 m!5155617))

(declare-fun m!5155619 () Bool)

(assert (=> b!4454509 m!5155619))

(assert (=> b!4454444 d!1358836))

(declare-fun b!4454568 () Bool)

(assert (=> b!4454568 true))

(declare-fun bs!790410 () Bool)

(declare-fun b!4454569 () Bool)

(assert (= bs!790410 (and b!4454569 b!4454568)))

(declare-fun lambda!159797 () Int)

(declare-fun lambda!159796 () Int)

(assert (=> bs!790410 (= lambda!159797 lambda!159796)))

(assert (=> b!4454569 true))

(declare-fun lt!1646150 () ListMap!3019)

(declare-fun lambda!159798 () Int)

(assert (=> bs!790410 (= (= lt!1646150 lt!1646034) (= lambda!159798 lambda!159796))))

(assert (=> b!4454569 (= (= lt!1646150 lt!1646034) (= lambda!159798 lambda!159797))))

(assert (=> b!4454569 true))

(declare-fun bs!790411 () Bool)

(declare-fun d!1358838 () Bool)

(assert (= bs!790411 (and d!1358838 b!4454568)))

(declare-fun lt!1646157 () ListMap!3019)

(declare-fun lambda!159799 () Int)

(assert (=> bs!790411 (= (= lt!1646157 lt!1646034) (= lambda!159799 lambda!159796))))

(declare-fun bs!790412 () Bool)

(assert (= bs!790412 (and d!1358838 b!4454569)))

(assert (=> bs!790412 (= (= lt!1646157 lt!1646034) (= lambda!159799 lambda!159797))))

(assert (=> bs!790412 (= (= lt!1646157 lt!1646150) (= lambda!159799 lambda!159798))))

(assert (=> d!1358838 true))

(declare-fun e!2773884 () Bool)

(assert (=> d!1358838 e!2773884))

(declare-fun res!1846348 () Bool)

(assert (=> d!1358838 (=> (not res!1846348) (not e!2773884))))

(declare-fun forall!9800 (List!50066 Int) Bool)

(assert (=> d!1358838 (= res!1846348 (forall!9800 (_2!28280 (h!55688 (toList!3779 lm!1837))) lambda!159799))))

(declare-fun e!2773882 () ListMap!3019)

(assert (=> d!1358838 (= lt!1646157 e!2773882)))

(declare-fun c!758351 () Bool)

(assert (=> d!1358838 (= c!758351 (is-Nil!49942 (_2!28280 (h!55688 (toList!3779 lm!1837)))))))

(declare-fun noDuplicateKeys!887 (List!50066) Bool)

(assert (=> d!1358838 (noDuplicateKeys!887 (_2!28280 (h!55688 (toList!3779 lm!1837))))))

(assert (=> d!1358838 (= (addToMapMapFromBucket!486 (_2!28280 (h!55688 (toList!3779 lm!1837))) lt!1646034) lt!1646157)))

(declare-fun bm!309984 () Bool)

(declare-fun call!309991 () Unit!85830)

(declare-fun lemmaContainsAllItsOwnKeys!221 (ListMap!3019) Unit!85830)

(assert (=> bm!309984 (= call!309991 (lemmaContainsAllItsOwnKeys!221 lt!1646034))))

(declare-fun bm!309985 () Bool)

(declare-fun call!309989 () Bool)

(assert (=> bm!309985 (= call!309989 (forall!9800 (ite c!758351 (toList!3780 lt!1646034) (_2!28280 (h!55688 (toList!3779 lm!1837)))) (ite c!758351 lambda!159796 lambda!159798)))))

(declare-fun b!4454566 () Bool)

(assert (=> b!4454566 (= e!2773884 (invariantList!868 (toList!3780 lt!1646157)))))

(declare-fun b!4454567 () Bool)

(declare-fun e!2773883 () Bool)

(assert (=> b!4454567 (= e!2773883 (forall!9800 (toList!3780 lt!1646034) lambda!159798))))

(assert (=> b!4454568 (= e!2773882 lt!1646034)))

(declare-fun lt!1646155 () Unit!85830)

(assert (=> b!4454568 (= lt!1646155 call!309991)))

(declare-fun call!309990 () Bool)

(assert (=> b!4454568 call!309990))

(declare-fun lt!1646149 () Unit!85830)

(assert (=> b!4454568 (= lt!1646149 lt!1646155)))

(assert (=> b!4454568 call!309989))

(declare-fun lt!1646152 () Unit!85830)

(declare-fun Unit!85834 () Unit!85830)

(assert (=> b!4454568 (= lt!1646152 Unit!85834)))

(assert (=> b!4454569 (= e!2773882 lt!1646150)))

(declare-fun lt!1646141 () ListMap!3019)

(declare-fun +!1278 (ListMap!3019 tuple2!49970) ListMap!3019)

(assert (=> b!4454569 (= lt!1646141 (+!1278 lt!1646034 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837))))))))

(assert (=> b!4454569 (= lt!1646150 (addToMapMapFromBucket!486 (t!357016 (_2!28280 (h!55688 (toList!3779 lm!1837)))) (+!1278 lt!1646034 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837)))))))))

(declare-fun lt!1646146 () Unit!85830)

(assert (=> b!4454569 (= lt!1646146 call!309991)))

(assert (=> b!4454569 (forall!9800 (toList!3780 lt!1646034) lambda!159797)))

(declare-fun lt!1646145 () Unit!85830)

(assert (=> b!4454569 (= lt!1646145 lt!1646146)))

(assert (=> b!4454569 (forall!9800 (toList!3780 lt!1646141) lambda!159798)))

(declare-fun lt!1646143 () Unit!85830)

(declare-fun Unit!85835 () Unit!85830)

(assert (=> b!4454569 (= lt!1646143 Unit!85835)))

(assert (=> b!4454569 (forall!9800 (t!357016 (_2!28280 (h!55688 (toList!3779 lm!1837)))) lambda!159798)))

(declare-fun lt!1646154 () Unit!85830)

(declare-fun Unit!85836 () Unit!85830)

(assert (=> b!4454569 (= lt!1646154 Unit!85836)))

(declare-fun lt!1646148 () Unit!85830)

(declare-fun Unit!85837 () Unit!85830)

(assert (=> b!4454569 (= lt!1646148 Unit!85837)))

(declare-fun lt!1646144 () Unit!85830)

(declare-fun forallContained!2169 (List!50066 Int tuple2!49970) Unit!85830)

(assert (=> b!4454569 (= lt!1646144 (forallContained!2169 (toList!3780 lt!1646141) lambda!159798 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837))))))))

(assert (=> b!4454569 (contains!12510 lt!1646141 (_1!28279 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837))))))))

(declare-fun lt!1646139 () Unit!85830)

(declare-fun Unit!85838 () Unit!85830)

(assert (=> b!4454569 (= lt!1646139 Unit!85838)))

(assert (=> b!4454569 (contains!12510 lt!1646150 (_1!28279 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837))))))))

(declare-fun lt!1646158 () Unit!85830)

(declare-fun Unit!85839 () Unit!85830)

(assert (=> b!4454569 (= lt!1646158 Unit!85839)))

(assert (=> b!4454569 (forall!9800 (_2!28280 (h!55688 (toList!3779 lm!1837))) lambda!159798)))

(declare-fun lt!1646153 () Unit!85830)

(declare-fun Unit!85840 () Unit!85830)

(assert (=> b!4454569 (= lt!1646153 Unit!85840)))

(assert (=> b!4454569 (forall!9800 (toList!3780 lt!1646141) lambda!159798)))

(declare-fun lt!1646151 () Unit!85830)

(declare-fun Unit!85841 () Unit!85830)

(assert (=> b!4454569 (= lt!1646151 Unit!85841)))

(declare-fun lt!1646156 () Unit!85830)

(declare-fun Unit!85842 () Unit!85830)

(assert (=> b!4454569 (= lt!1646156 Unit!85842)))

(declare-fun lt!1646142 () Unit!85830)

(declare-fun addForallContainsKeyThenBeforeAdding!221 (ListMap!3019 ListMap!3019 K!11318 V!11564) Unit!85830)

(assert (=> b!4454569 (= lt!1646142 (addForallContainsKeyThenBeforeAdding!221 lt!1646034 lt!1646150 (_1!28279 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837))))) (_2!28279 (h!55687 (_2!28280 (h!55688 (toList!3779 lm!1837)))))))))

(assert (=> b!4454569 (forall!9800 (toList!3780 lt!1646034) lambda!159798)))

(declare-fun lt!1646159 () Unit!85830)

(assert (=> b!4454569 (= lt!1646159 lt!1646142)))

(assert (=> b!4454569 call!309990))

(declare-fun lt!1646147 () Unit!85830)

(declare-fun Unit!85843 () Unit!85830)

(assert (=> b!4454569 (= lt!1646147 Unit!85843)))

(declare-fun res!1846350 () Bool)

(assert (=> b!4454569 (= res!1846350 call!309989)))

(assert (=> b!4454569 (=> (not res!1846350) (not e!2773883))))

(assert (=> b!4454569 e!2773883))

(declare-fun lt!1646140 () Unit!85830)

(declare-fun Unit!85844 () Unit!85830)

(assert (=> b!4454569 (= lt!1646140 Unit!85844)))

(declare-fun bm!309986 () Bool)

(assert (=> bm!309986 (= call!309990 (forall!9800 (toList!3780 lt!1646034) (ite c!758351 lambda!159796 lambda!159798)))))

(declare-fun b!4454570 () Bool)

(declare-fun res!1846349 () Bool)

(assert (=> b!4454570 (=> (not res!1846349) (not e!2773884))))

(assert (=> b!4454570 (= res!1846349 (forall!9800 (toList!3780 lt!1646034) lambda!159799))))

(assert (= (and d!1358838 c!758351) b!4454568))

(assert (= (and d!1358838 (not c!758351)) b!4454569))

(assert (= (and b!4454569 res!1846350) b!4454567))

(assert (= (or b!4454568 b!4454569) bm!309986))

(assert (= (or b!4454568 b!4454569) bm!309985))

(assert (= (or b!4454568 b!4454569) bm!309984))

(assert (= (and d!1358838 res!1846348) b!4454570))

(assert (= (and b!4454570 res!1846349) b!4454566))

(declare-fun m!5155671 () Bool)

(assert (=> bm!309984 m!5155671))

(declare-fun m!5155673 () Bool)

(assert (=> b!4454566 m!5155673))

(declare-fun m!5155675 () Bool)

(assert (=> d!1358838 m!5155675))

(declare-fun m!5155677 () Bool)

(assert (=> d!1358838 m!5155677))

(declare-fun m!5155679 () Bool)

(assert (=> bm!309986 m!5155679))

(declare-fun m!5155681 () Bool)

(assert (=> bm!309985 m!5155681))

(declare-fun m!5155683 () Bool)

(assert (=> b!4454570 m!5155683))

(declare-fun m!5155685 () Bool)

(assert (=> b!4454567 m!5155685))

(declare-fun m!5155687 () Bool)

(assert (=> b!4454569 m!5155687))

(declare-fun m!5155689 () Bool)

(assert (=> b!4454569 m!5155689))

(declare-fun m!5155691 () Bool)

(assert (=> b!4454569 m!5155691))

(assert (=> b!4454569 m!5155685))

(declare-fun m!5155693 () Bool)

(assert (=> b!4454569 m!5155693))

(assert (=> b!4454569 m!5155689))

(declare-fun m!5155695 () Bool)

(assert (=> b!4454569 m!5155695))

(declare-fun m!5155697 () Bool)

(assert (=> b!4454569 m!5155697))

(declare-fun m!5155699 () Bool)

(assert (=> b!4454569 m!5155699))

(declare-fun m!5155701 () Bool)

(assert (=> b!4454569 m!5155701))

(declare-fun m!5155703 () Bool)

(assert (=> b!4454569 m!5155703))

(declare-fun m!5155705 () Bool)

(assert (=> b!4454569 m!5155705))

(assert (=> b!4454569 m!5155703))

(assert (=> b!4454444 d!1358838))

(declare-fun d!1358858 () Bool)

(declare-fun res!1846351 () Bool)

(declare-fun e!2773885 () Bool)

(assert (=> d!1358858 (=> res!1846351 e!2773885)))

(assert (=> d!1358858 (= res!1846351 (is-Nil!49943 (toList!3779 lm!1837)))))

(assert (=> d!1358858 (= (forall!9798 (toList!3779 lm!1837) lambda!159748) e!2773885)))

(declare-fun b!4454573 () Bool)

(declare-fun e!2773886 () Bool)

(assert (=> b!4454573 (= e!2773885 e!2773886)))

(declare-fun res!1846352 () Bool)

(assert (=> b!4454573 (=> (not res!1846352) (not e!2773886))))

(assert (=> b!4454573 (= res!1846352 (dynLambda!20957 lambda!159748 (h!55688 (toList!3779 lm!1837))))))

(declare-fun b!4454574 () Bool)

(assert (=> b!4454574 (= e!2773886 (forall!9798 (t!357017 (toList!3779 lm!1837)) lambda!159748))))

(assert (= (and d!1358858 (not res!1846351)) b!4454573))

(assert (= (and b!4454573 res!1846352) b!4454574))

(declare-fun b_lambda!147491 () Bool)

(assert (=> (not b_lambda!147491) (not b!4454573)))

(declare-fun m!5155707 () Bool)

(assert (=> b!4454573 m!5155707))

(declare-fun m!5155709 () Bool)

(assert (=> b!4454574 m!5155709))

(assert (=> start!436394 d!1358858))

(declare-fun d!1358860 () Bool)

(declare-fun isStrictlySorted!296 (List!50067) Bool)

(assert (=> d!1358860 (= (inv!65505 lm!1837) (isStrictlySorted!296 (toList!3779 lm!1837)))))

(declare-fun bs!790413 () Bool)

(assert (= bs!790413 d!1358860))

(declare-fun m!5155711 () Bool)

(assert (=> bs!790413 m!5155711))

(assert (=> start!436394 d!1358860))

(declare-fun d!1358862 () Bool)

(assert (=> d!1358862 (= (isEmpty!28444 (toList!3779 lm!1837)) (is-Nil!49943 (toList!3779 lm!1837)))))

(assert (=> b!4454448 d!1358862))

(declare-fun b!4454579 () Bool)

(declare-fun e!2773889 () Bool)

(declare-fun tp!1334804 () Bool)

(declare-fun tp!1334805 () Bool)

(assert (=> b!4454579 (= e!2773889 (and tp!1334804 tp!1334805))))

(assert (=> b!4454446 (= tp!1334796 e!2773889)))

(assert (= (and b!4454446 (is-Cons!49943 (toList!3779 lm!1837))) b!4454579))

(declare-fun b_lambda!147493 () Bool)

(assert (= b_lambda!147485 (or start!436394 b_lambda!147493)))

(declare-fun bs!790414 () Bool)

(declare-fun d!1358864 () Bool)

(assert (= bs!790414 (and d!1358864 start!436394)))

(assert (=> bs!790414 (= (dynLambda!20957 lambda!159748 (h!55688 (toList!3779 lt!1646033))) (noDuplicateKeys!887 (_2!28280 (h!55688 (toList!3779 lt!1646033)))))))

(declare-fun m!5155713 () Bool)

(assert (=> bs!790414 m!5155713))

(assert (=> b!4454507 d!1358864))

(declare-fun b_lambda!147495 () Bool)

(assert (= b_lambda!147491 (or start!436394 b_lambda!147495)))

(declare-fun bs!790415 () Bool)

(declare-fun d!1358866 () Bool)

(assert (= bs!790415 (and d!1358866 start!436394)))

(assert (=> bs!790415 (= (dynLambda!20957 lambda!159748 (h!55688 (toList!3779 lm!1837))) (noDuplicateKeys!887 (_2!28280 (h!55688 (toList!3779 lm!1837)))))))

(assert (=> bs!790415 m!5155677))

(assert (=> b!4454573 d!1358866))

(push 1)

(assert (not b!4454569))

(assert (not b!4454495))

(assert (not b!4454566))

(assert (not d!1358836))

(assert (not bs!790415))

(assert (not b!4454574))

(assert (not b_lambda!147495))

(assert (not d!1358824))

(assert (not b!4454493))

(assert (not bm!309984))

(assert tp_is_empty!26781)

(assert (not bm!309985))

(assert (not d!1358830))

(assert (not b_lambda!147493))

(assert (not bs!790414))

(assert (not d!1358860))

(assert (not d!1358838))

(assert (not b!4454509))

(assert (not b!4454508))

(assert (not d!1358826))

(assert (not b!4454570))

(assert (not b!4454488))

(assert (not b!4454494))

(assert (not b!4454491))

(assert (not d!1358832))

(assert (not b!4454490))

(assert (not b!4454579))

(assert (not b!4454501))

(assert (not bm!309986))

(assert (not bm!309974))

(assert (not b!4454567))

(assert (not b!4454496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

