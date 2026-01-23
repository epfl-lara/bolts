; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436258 () Bool)

(assert start!436258)

(declare-fun b!4453834 () Bool)

(declare-fun e!2773420 () Bool)

(declare-fun tp!1334750 () Bool)

(assert (=> b!4453834 (= e!2773420 tp!1334750)))

(declare-fun b!4453835 () Bool)

(declare-fun res!1845969 () Bool)

(declare-fun e!2773419 () Bool)

(assert (=> b!4453835 (=> (not res!1845969) (not e!2773419))))

(declare-datatypes ((V!11554 0))(
  ( (V!11555 (val!17317 Int)) )
))
(declare-datatypes ((K!11308 0))(
  ( (K!11309 (val!17318 Int)) )
))
(declare-datatypes ((tuple2!49954 0))(
  ( (tuple2!49955 (_1!28271 K!11308) (_2!28271 V!11554)) )
))
(declare-datatypes ((List!50055 0))(
  ( (Nil!49931) (Cons!49931 (h!55676 tuple2!49954) (t!357005 List!50055)) )
))
(declare-datatypes ((tuple2!49956 0))(
  ( (tuple2!49957 (_1!28272 (_ BitVec 64)) (_2!28272 List!50055)) )
))
(declare-datatypes ((List!50056 0))(
  ( (Nil!49932) (Cons!49932 (h!55677 tuple2!49956) (t!357006 List!50056)) )
))
(declare-datatypes ((ListLongMap!2425 0))(
  ( (ListLongMap!2426 (toList!3771 List!50056)) )
))
(declare-fun lm!1837 () ListLongMap!2425)

(declare-fun isEmpty!28438 (List!50056) Bool)

(assert (=> b!4453835 (= res!1845969 (not (isEmpty!28438 (toList!3771 lm!1837))))))

(declare-fun b!4453836 () Bool)

(declare-fun res!1845970 () Bool)

(assert (=> b!4453836 (=> (not res!1845970) (not e!2773419))))

(declare-datatypes ((Hashable!5288 0))(
  ( (HashableExt!5287 (__x!30991 Int)) )
))
(declare-fun hashF!1304 () Hashable!5288)

(declare-fun allKeysSameHashInMap!1000 (ListLongMap!2425 Hashable!5288) Bool)

(assert (=> b!4453836 (= res!1845970 (allKeysSameHashInMap!1000 lm!1837 hashF!1304))))

(declare-fun b!4453837 () Bool)

(declare-fun res!1845968 () Bool)

(assert (=> b!4453837 (=> (not res!1845968) (not e!2773419))))

(declare-fun key!4369 () K!11308)

(declare-datatypes ((ListMap!3011 0))(
  ( (ListMap!3012 (toList!3772 List!50055)) )
))
(declare-fun contains!12501 (ListMap!3011 K!11308) Bool)

(declare-fun extractMap!951 (List!50056) ListMap!3011)

(declare-fun tail!7456 (ListLongMap!2425) ListLongMap!2425)

(assert (=> b!4453837 (= res!1845968 (contains!12501 (extractMap!951 (toList!3771 (tail!7456 lm!1837))) key!4369))))

(declare-fun b!4453838 () Bool)

(declare-fun size!35897 (List!50056) Int)

(assert (=> b!4453838 (= e!2773419 (< (size!35897 (toList!3771 lm!1837)) 0))))

(declare-fun res!1845971 () Bool)

(assert (=> start!436258 (=> (not res!1845971) (not e!2773419))))

(declare-fun lambda!159564 () Int)

(declare-fun forall!9790 (List!50056 Int) Bool)

(assert (=> start!436258 (= res!1845971 (forall!9790 (toList!3771 lm!1837) lambda!159564))))

(assert (=> start!436258 e!2773419))

(declare-fun inv!65495 (ListLongMap!2425) Bool)

(assert (=> start!436258 (and (inv!65495 lm!1837) e!2773420)))

(assert (=> start!436258 true))

(declare-fun tp_is_empty!26769 () Bool)

(assert (=> start!436258 tp_is_empty!26769))

(assert (= (and start!436258 res!1845971) b!4453836))

(assert (= (and b!4453836 res!1845970) b!4453835))

(assert (= (and b!4453835 res!1845969) b!4453837))

(assert (= (and b!4453837 res!1845968) b!4453838))

(assert (= start!436258 b!4453834))

(declare-fun m!5154583 () Bool)

(assert (=> start!436258 m!5154583))

(declare-fun m!5154585 () Bool)

(assert (=> start!436258 m!5154585))

(declare-fun m!5154587 () Bool)

(assert (=> b!4453838 m!5154587))

(declare-fun m!5154589 () Bool)

(assert (=> b!4453837 m!5154589))

(declare-fun m!5154591 () Bool)

(assert (=> b!4453837 m!5154591))

(assert (=> b!4453837 m!5154591))

(declare-fun m!5154593 () Bool)

(assert (=> b!4453837 m!5154593))

(declare-fun m!5154595 () Bool)

(assert (=> b!4453835 m!5154595))

(declare-fun m!5154597 () Bool)

(assert (=> b!4453836 m!5154597))

(push 1)

(assert (not b!4453834))

(assert (not b!4453836))

(assert (not b!4453838))

(assert tp_is_empty!26769)

(assert (not b!4453837))

(assert (not start!436258))

(assert (not b!4453835))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!790105 () Bool)

(declare-fun d!1358556 () Bool)

(assert (= bs!790105 (and d!1358556 start!436258)))

(declare-fun lambda!159570 () Int)

(assert (=> bs!790105 (not (= lambda!159570 lambda!159564))))

(assert (=> d!1358556 true))

(assert (=> d!1358556 (= (allKeysSameHashInMap!1000 lm!1837 hashF!1304) (forall!9790 (toList!3771 lm!1837) lambda!159570))))

(declare-fun bs!790106 () Bool)

(assert (= bs!790106 d!1358556))

(declare-fun m!5154615 () Bool)

(assert (=> bs!790106 m!5154615))

(assert (=> b!4453836 d!1358556))

(declare-fun b!4453874 () Bool)

(declare-datatypes ((List!50059 0))(
  ( (Nil!49935) (Cons!49935 (h!55680 K!11308) (t!357009 List!50059)) )
))
(declare-fun e!2773444 () List!50059)

(declare-fun keys!17141 (ListMap!3011) List!50059)

(assert (=> b!4453874 (= e!2773444 (keys!17141 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))))))

(declare-fun b!4453875 () Bool)

(declare-datatypes ((Unit!85714 0))(
  ( (Unit!85715) )
))
(declare-fun e!2773440 () Unit!85714)

(declare-fun e!2773442 () Unit!85714)

(assert (=> b!4453875 (= e!2773440 e!2773442)))

(declare-fun c!758219 () Bool)

(declare-fun call!309927 () Bool)

(assert (=> b!4453875 (= c!758219 call!309927)))

(declare-fun b!4453876 () Bool)

(assert (=> b!4453876 false))

(declare-fun lt!1645526 () Unit!85714)

(declare-fun lt!1645525 () Unit!85714)

(assert (=> b!4453876 (= lt!1645526 lt!1645525)))

(declare-fun containsKey!1303 (List!50055 K!11308) Bool)

(assert (=> b!4453876 (containsKey!1303 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!309 (List!50055 K!11308) Unit!85714)

(assert (=> b!4453876 (= lt!1645525 (lemmaInGetKeysListThenContainsKey!309 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369))))

(declare-fun Unit!85716 () Unit!85714)

(assert (=> b!4453876 (= e!2773442 Unit!85716)))

(declare-fun b!4453877 () Bool)

(declare-fun getKeysList!311 (List!50055) List!50059)

(assert (=> b!4453877 (= e!2773444 (getKeysList!311 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837))))))))

(declare-fun b!4453878 () Bool)

(declare-fun e!2773441 () Bool)

(declare-fun contains!12503 (List!50059 K!11308) Bool)

(assert (=> b!4453878 (= e!2773441 (not (contains!12503 (keys!17141 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369)))))

(declare-fun b!4453879 () Bool)

(declare-fun e!2773439 () Bool)

(assert (=> b!4453879 (= e!2773439 (contains!12503 (keys!17141 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369))))

(declare-fun b!4453880 () Bool)

(declare-fun Unit!85717 () Unit!85714)

(assert (=> b!4453880 (= e!2773442 Unit!85717)))

(declare-fun b!4453881 () Bool)

(declare-fun lt!1645524 () Unit!85714)

(assert (=> b!4453881 (= e!2773440 lt!1645524)))

(declare-fun lt!1645527 () Unit!85714)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!734 (List!50055 K!11308) Unit!85714)

(assert (=> b!4453881 (= lt!1645527 (lemmaContainsKeyImpliesGetValueByKeyDefined!734 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369))))

(declare-datatypes ((Option!10843 0))(
  ( (None!10842) (Some!10842 (v!44096 V!11554)) )
))
(declare-fun isDefined!8131 (Option!10843) Bool)

(declare-fun getValueByKey!829 (List!50055 K!11308) Option!10843)

(assert (=> b!4453881 (isDefined!8131 (getValueByKey!829 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369))))

(declare-fun lt!1645522 () Unit!85714)

(assert (=> b!4453881 (= lt!1645522 lt!1645527)))

(declare-fun lemmaInListThenGetKeysListContains!308 (List!50055 K!11308) Unit!85714)

(assert (=> b!4453881 (= lt!1645524 (lemmaInListThenGetKeysListContains!308 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369))))

(assert (=> b!4453881 call!309927))

(declare-fun d!1358558 () Bool)

(declare-fun e!2773443 () Bool)

(assert (=> d!1358558 e!2773443))

(declare-fun res!1845991 () Bool)

(assert (=> d!1358558 (=> res!1845991 e!2773443)))

(assert (=> d!1358558 (= res!1845991 e!2773441)))

(declare-fun res!1845990 () Bool)

(assert (=> d!1358558 (=> (not res!1845990) (not e!2773441))))

(declare-fun lt!1645528 () Bool)

(assert (=> d!1358558 (= res!1845990 (not lt!1645528))))

(declare-fun lt!1645529 () Bool)

(assert (=> d!1358558 (= lt!1645528 lt!1645529)))

(declare-fun lt!1645523 () Unit!85714)

(assert (=> d!1358558 (= lt!1645523 e!2773440)))

(declare-fun c!758220 () Bool)

(assert (=> d!1358558 (= c!758220 lt!1645529)))

(assert (=> d!1358558 (= lt!1645529 (containsKey!1303 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369))))

(assert (=> d!1358558 (= (contains!12501 (extractMap!951 (toList!3771 (tail!7456 lm!1837))) key!4369) lt!1645528)))

(declare-fun b!4453882 () Bool)

(assert (=> b!4453882 (= e!2773443 e!2773439)))

(declare-fun res!1845992 () Bool)

(assert (=> b!4453882 (=> (not res!1845992) (not e!2773439))))

(assert (=> b!4453882 (= res!1845992 (isDefined!8131 (getValueByKey!829 (toList!3772 (extractMap!951 (toList!3771 (tail!7456 lm!1837)))) key!4369)))))

(declare-fun bm!309922 () Bool)

(assert (=> bm!309922 (= call!309927 (contains!12503 e!2773444 key!4369))))

(declare-fun c!758218 () Bool)

(assert (=> bm!309922 (= c!758218 c!758220)))

(assert (= (and d!1358558 c!758220) b!4453881))

(assert (= (and d!1358558 (not c!758220)) b!4453875))

(assert (= (and b!4453875 c!758219) b!4453876))

(assert (= (and b!4453875 (not c!758219)) b!4453880))

(assert (= (or b!4453881 b!4453875) bm!309922))

(assert (= (and bm!309922 c!758218) b!4453877))

(assert (= (and bm!309922 (not c!758218)) b!4453874))

(assert (= (and d!1358558 res!1845990) b!4453878))

(assert (= (and d!1358558 (not res!1845991)) b!4453882))

(assert (= (and b!4453882 res!1845992) b!4453879))

(declare-fun m!5154617 () Bool)

(assert (=> b!4453882 m!5154617))

(assert (=> b!4453882 m!5154617))

(declare-fun m!5154619 () Bool)

(assert (=> b!4453882 m!5154619))

(declare-fun m!5154621 () Bool)

(assert (=> b!4453876 m!5154621))

(declare-fun m!5154623 () Bool)

(assert (=> b!4453876 m!5154623))

(declare-fun m!5154625 () Bool)

(assert (=> bm!309922 m!5154625))

(assert (=> b!4453878 m!5154591))

(declare-fun m!5154627 () Bool)

(assert (=> b!4453878 m!5154627))

(assert (=> b!4453878 m!5154627))

(declare-fun m!5154629 () Bool)

(assert (=> b!4453878 m!5154629))

(declare-fun m!5154631 () Bool)

(assert (=> b!4453881 m!5154631))

(assert (=> b!4453881 m!5154617))

(assert (=> b!4453881 m!5154617))

(assert (=> b!4453881 m!5154619))

(declare-fun m!5154633 () Bool)

(assert (=> b!4453881 m!5154633))

(declare-fun m!5154635 () Bool)

(assert (=> b!4453877 m!5154635))

(assert (=> b!4453879 m!5154591))

(assert (=> b!4453879 m!5154627))

(assert (=> b!4453879 m!5154627))

(assert (=> b!4453879 m!5154629))

(assert (=> d!1358558 m!5154621))

(assert (=> b!4453874 m!5154591))

(assert (=> b!4453874 m!5154627))

(assert (=> b!4453837 d!1358558))

(declare-fun bs!790107 () Bool)

(declare-fun d!1358562 () Bool)

(assert (= bs!790107 (and d!1358562 start!436258)))

(declare-fun lambda!159573 () Int)

(assert (=> bs!790107 (= lambda!159573 lambda!159564)))

(declare-fun bs!790108 () Bool)

(assert (= bs!790108 (and d!1358562 d!1358556)))

(assert (=> bs!790108 (not (= lambda!159573 lambda!159570))))

(declare-fun lt!1645532 () ListMap!3011)

(declare-fun invariantList!865 (List!50055) Bool)

(assert (=> d!1358562 (invariantList!865 (toList!3772 lt!1645532))))

(declare-fun e!2773447 () ListMap!3011)

(assert (=> d!1358562 (= lt!1645532 e!2773447)))

(declare-fun c!758223 () Bool)

(assert (=> d!1358562 (= c!758223 (is-Cons!49932 (toList!3771 (tail!7456 lm!1837))))))

(assert (=> d!1358562 (forall!9790 (toList!3771 (tail!7456 lm!1837)) lambda!159573)))

(assert (=> d!1358562 (= (extractMap!951 (toList!3771 (tail!7456 lm!1837))) lt!1645532)))

(declare-fun b!4453887 () Bool)

(declare-fun addToMapMapFromBucket!483 (List!50055 ListMap!3011) ListMap!3011)

(assert (=> b!4453887 (= e!2773447 (addToMapMapFromBucket!483 (_2!28272 (h!55677 (toList!3771 (tail!7456 lm!1837)))) (extractMap!951 (t!357006 (toList!3771 (tail!7456 lm!1837))))))))

(declare-fun b!4453888 () Bool)

(assert (=> b!4453888 (= e!2773447 (ListMap!3012 Nil!49931))))

(assert (= (and d!1358562 c!758223) b!4453887))

(assert (= (and d!1358562 (not c!758223)) b!4453888))

(declare-fun m!5154637 () Bool)

(assert (=> d!1358562 m!5154637))

(declare-fun m!5154639 () Bool)

(assert (=> d!1358562 m!5154639))

(declare-fun m!5154641 () Bool)

(assert (=> b!4453887 m!5154641))

(assert (=> b!4453887 m!5154641))

(declare-fun m!5154643 () Bool)

(assert (=> b!4453887 m!5154643))

(assert (=> b!4453837 d!1358562))

(declare-fun d!1358564 () Bool)

(declare-fun tail!7458 (List!50056) List!50056)

(assert (=> d!1358564 (= (tail!7456 lm!1837) (ListLongMap!2426 (tail!7458 (toList!3771 lm!1837))))))

(declare-fun bs!790109 () Bool)

(assert (= bs!790109 d!1358564))

(declare-fun m!5154645 () Bool)

(assert (=> bs!790109 m!5154645))

(assert (=> b!4453837 d!1358564))

(declare-fun d!1358566 () Bool)

(declare-fun lt!1645535 () Int)

(assert (=> d!1358566 (>= lt!1645535 0)))

(declare-fun e!2773450 () Int)

(assert (=> d!1358566 (= lt!1645535 e!2773450)))

(declare-fun c!758226 () Bool)

(assert (=> d!1358566 (= c!758226 (is-Nil!49932 (toList!3771 lm!1837)))))

(assert (=> d!1358566 (= (size!35897 (toList!3771 lm!1837)) lt!1645535)))

(declare-fun b!4453893 () Bool)

(assert (=> b!4453893 (= e!2773450 0)))

(declare-fun b!4453894 () Bool)

(assert (=> b!4453894 (= e!2773450 (+ 1 (size!35897 (t!357006 (toList!3771 lm!1837)))))))

(assert (= (and d!1358566 c!758226) b!4453893))

(assert (= (and d!1358566 (not c!758226)) b!4453894))

(declare-fun m!5154647 () Bool)

(assert (=> b!4453894 m!5154647))

(assert (=> b!4453838 d!1358566))

(declare-fun d!1358568 () Bool)

(assert (=> d!1358568 (= (isEmpty!28438 (toList!3771 lm!1837)) (is-Nil!49932 (toList!3771 lm!1837)))))

(assert (=> b!4453835 d!1358568))

(declare-fun d!1358570 () Bool)

(declare-fun res!1845997 () Bool)

(declare-fun e!2773455 () Bool)

(assert (=> d!1358570 (=> res!1845997 e!2773455)))

(assert (=> d!1358570 (= res!1845997 (is-Nil!49932 (toList!3771 lm!1837)))))

(assert (=> d!1358570 (= (forall!9790 (toList!3771 lm!1837) lambda!159564) e!2773455)))

(declare-fun b!4453899 () Bool)

(declare-fun e!2773456 () Bool)

(assert (=> b!4453899 (= e!2773455 e!2773456)))

(declare-fun res!1845998 () Bool)

(assert (=> b!4453899 (=> (not res!1845998) (not e!2773456))))

(declare-fun dynLambda!20952 (Int tuple2!49956) Bool)

(assert (=> b!4453899 (= res!1845998 (dynLambda!20952 lambda!159564 (h!55677 (toList!3771 lm!1837))))))

(declare-fun b!4453900 () Bool)

(assert (=> b!4453900 (= e!2773456 (forall!9790 (t!357006 (toList!3771 lm!1837)) lambda!159564))))

(assert (= (and d!1358570 (not res!1845997)) b!4453899))

(assert (= (and b!4453899 res!1845998) b!4453900))

(declare-fun b_lambda!147373 () Bool)

(assert (=> (not b_lambda!147373) (not b!4453899)))

(declare-fun m!5154649 () Bool)

(assert (=> b!4453899 m!5154649))

(declare-fun m!5154651 () Bool)

(assert (=> b!4453900 m!5154651))

(assert (=> start!436258 d!1358570))

(declare-fun d!1358572 () Bool)

(declare-fun isStrictlySorted!293 (List!50056) Bool)

(assert (=> d!1358572 (= (inv!65495 lm!1837) (isStrictlySorted!293 (toList!3771 lm!1837)))))

(declare-fun bs!790110 () Bool)

(assert (= bs!790110 d!1358572))

(declare-fun m!5154653 () Bool)

(assert (=> bs!790110 m!5154653))

(assert (=> start!436258 d!1358572))

(declare-fun b!4453905 () Bool)

(declare-fun e!2773459 () Bool)

(declare-fun tp!1334758 () Bool)

(declare-fun tp!1334759 () Bool)

(assert (=> b!4453905 (= e!2773459 (and tp!1334758 tp!1334759))))

(assert (=> b!4453834 (= tp!1334750 e!2773459)))

(assert (= (and b!4453834 (is-Cons!49932 (toList!3771 lm!1837))) b!4453905))

(declare-fun b_lambda!147375 () Bool)

(assert (= b_lambda!147373 (or start!436258 b_lambda!147375)))

(declare-fun bs!790111 () Bool)

(declare-fun d!1358574 () Bool)

(assert (= bs!790111 (and d!1358574 start!436258)))

(declare-fun noDuplicateKeys!884 (List!50055) Bool)

(assert (=> bs!790111 (= (dynLambda!20952 lambda!159564 (h!55677 (toList!3771 lm!1837))) (noDuplicateKeys!884 (_2!28272 (h!55677 (toList!3771 lm!1837)))))))

(declare-fun m!5154655 () Bool)

(assert (=> bs!790111 m!5154655))

(assert (=> b!4453899 d!1358574))

(push 1)

(assert (not bs!790111))

(assert (not b!4453879))

(assert (not d!1358562))

(assert (not b!4453882))

(assert (not b!4453881))

(assert tp_is_empty!26769)

(assert (not b!4453894))

(assert (not b!4453876))

(assert (not b!4453900))

(assert (not bm!309922))

(assert (not b!4453877))

(assert (not d!1358564))

(assert (not d!1358558))

(assert (not b_lambda!147375))

(assert (not b!4453878))

(assert (not d!1358556))

(assert (not b!4453874))

(assert (not d!1358572))

(assert (not b!4453905))

(assert (not b!4453887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

