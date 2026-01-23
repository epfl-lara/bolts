; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759152 () Bool)

(assert start!759152)

(declare-fun b!8057485 () Bool)

(assert (=> b!8057485 true))

(declare-datatypes ((V!23190 0))(
  ( (V!23191 (val!33021 Int)) )
))
(declare-datatypes ((K!22936 0))(
  ( (K!22937 (val!33022 Int)) )
))
(declare-datatypes ((tuple2!70986 0))(
  ( (tuple2!70987 (_1!38796 K!22936) (_2!38796 V!23190)) )
))
(declare-datatypes ((List!75741 0))(
  ( (Nil!75615) (Cons!75615 (h!82063 tuple2!70986) (t!391513 List!75741)) )
))
(declare-datatypes ((ListMap!7357 0))(
  ( (ListMap!7358 (toList!11953 List!75741)) )
))
(declare-fun lt!2731028 () ListMap!7357)

(declare-fun lambda!474582 () Int)

(declare-fun acc!836 () ListMap!7357)

(declare-fun lambda!474581 () Int)

(assert (=> b!8057485 (= (= lt!2731028 acc!836) (= lambda!474582 lambda!474581))))

(assert (=> b!8057485 true))

(declare-fun e!4748333 () Bool)

(declare-fun lt!2731026 () ListMap!7357)

(declare-fun forall!18533 (List!75741 Int) Bool)

(assert (=> b!8057485 (= e!4748333 (not (forall!18533 (toList!11953 lt!2731026) lambda!474582)))))

(assert (=> b!8057485 (forall!18533 (toList!11953 acc!836) lambda!474581)))

(declare-datatypes ((Unit!172587 0))(
  ( (Unit!172588) )
))
(declare-fun lt!2731027 () Unit!172587)

(declare-fun lemmaContainsAllItsOwnKeys!1114 (ListMap!7357) Unit!172587)

(assert (=> b!8057485 (= lt!2731027 (lemmaContainsAllItsOwnKeys!1114 acc!836))))

(declare-fun l!10976 () List!75741)

(declare-fun addToMapMapFromBucket!2014 (List!75741 ListMap!7357) ListMap!7357)

(assert (=> b!8057485 (= lt!2731028 (addToMapMapFromBucket!2014 (t!391513 l!10976) lt!2731026))))

(declare-fun +!2700 (ListMap!7357 tuple2!70986) ListMap!7357)

(assert (=> b!8057485 (= lt!2731026 (+!2700 acc!836 (h!82063 l!10976)))))

(declare-fun b!8057484 () Bool)

(declare-fun res!3187351 () Bool)

(assert (=> b!8057484 (=> (not res!3187351) (not e!4748333))))

(assert (=> b!8057484 (= res!3187351 (not (is-Nil!75615 l!10976)))))

(declare-fun res!3187350 () Bool)

(assert (=> start!759152 (=> (not res!3187350) (not e!4748333))))

(declare-fun noDuplicateKeys!2739 (List!75741) Bool)

(assert (=> start!759152 (= res!3187350 (noDuplicateKeys!2739 l!10976))))

(assert (=> start!759152 e!4748333))

(declare-fun e!4748332 () Bool)

(assert (=> start!759152 e!4748332))

(declare-fun e!4748331 () Bool)

(declare-fun inv!97410 (ListMap!7357) Bool)

(assert (=> start!759152 (and (inv!97410 acc!836) e!4748331)))

(declare-fun b!8057487 () Bool)

(declare-fun tp!2414130 () Bool)

(assert (=> b!8057487 (= e!4748331 tp!2414130)))

(declare-fun tp!2414131 () Bool)

(declare-fun tp_is_empty!55095 () Bool)

(declare-fun b!8057486 () Bool)

(declare-fun tp_is_empty!55097 () Bool)

(assert (=> b!8057486 (= e!4748332 (and tp_is_empty!55095 tp_is_empty!55097 tp!2414131))))

(assert (= (and start!759152 res!3187350) b!8057484))

(assert (= (and b!8057484 res!3187351) b!8057485))

(assert (= (and start!759152 (is-Cons!75615 l!10976)) b!8057486))

(assert (= start!759152 b!8057487))

(declare-fun m!8410564 () Bool)

(assert (=> b!8057485 m!8410564))

(declare-fun m!8410566 () Bool)

(assert (=> b!8057485 m!8410566))

(declare-fun m!8410568 () Bool)

(assert (=> b!8057485 m!8410568))

(declare-fun m!8410570 () Bool)

(assert (=> b!8057485 m!8410570))

(declare-fun m!8410572 () Bool)

(assert (=> b!8057485 m!8410572))

(declare-fun m!8410574 () Bool)

(assert (=> start!759152 m!8410574))

(declare-fun m!8410576 () Bool)

(assert (=> start!759152 m!8410576))

(push 1)

(assert (not b!8057485))

(assert tp_is_empty!55095)

(assert (not b!8057487))

(assert (not start!759152))

(assert (not b!8057486))

(assert tp_is_empty!55097)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398892 () Bool)

(declare-fun res!3187362 () Bool)

(declare-fun e!4748347 () Bool)

(assert (=> d!2398892 (=> res!3187362 e!4748347)))

(assert (=> d!2398892 (= res!3187362 (is-Nil!75615 (toList!11953 acc!836)))))

(assert (=> d!2398892 (= (forall!18533 (toList!11953 acc!836) lambda!474581) e!4748347)))

(declare-fun b!8057508 () Bool)

(declare-fun e!4748348 () Bool)

(assert (=> b!8057508 (= e!4748347 e!4748348)))

(declare-fun res!3187363 () Bool)

(assert (=> b!8057508 (=> (not res!3187363) (not e!4748348))))

(declare-fun dynLambda!30274 (Int tuple2!70986) Bool)

(assert (=> b!8057508 (= res!3187363 (dynLambda!30274 lambda!474581 (h!82063 (toList!11953 acc!836))))))

(declare-fun b!8057509 () Bool)

(assert (=> b!8057509 (= e!4748348 (forall!18533 (t!391513 (toList!11953 acc!836)) lambda!474581))))

(assert (= (and d!2398892 (not res!3187362)) b!8057508))

(assert (= (and b!8057508 res!3187363) b!8057509))

(declare-fun b_lambda!290543 () Bool)

(assert (=> (not b_lambda!290543) (not b!8057508)))

(declare-fun m!8410592 () Bool)

(assert (=> b!8057508 m!8410592))

(declare-fun m!8410594 () Bool)

(assert (=> b!8057509 m!8410594))

(assert (=> b!8057485 d!2398892))

(declare-fun d!2398894 () Bool)

(declare-fun res!3187364 () Bool)

(declare-fun e!4748349 () Bool)

(assert (=> d!2398894 (=> res!3187364 e!4748349)))

(assert (=> d!2398894 (= res!3187364 (is-Nil!75615 (toList!11953 lt!2731026)))))

(assert (=> d!2398894 (= (forall!18533 (toList!11953 lt!2731026) lambda!474582) e!4748349)))

(declare-fun b!8057510 () Bool)

(declare-fun e!4748350 () Bool)

(assert (=> b!8057510 (= e!4748349 e!4748350)))

(declare-fun res!3187365 () Bool)

(assert (=> b!8057510 (=> (not res!3187365) (not e!4748350))))

(assert (=> b!8057510 (= res!3187365 (dynLambda!30274 lambda!474582 (h!82063 (toList!11953 lt!2731026))))))

(declare-fun b!8057511 () Bool)

(assert (=> b!8057511 (= e!4748350 (forall!18533 (t!391513 (toList!11953 lt!2731026)) lambda!474582))))

(assert (= (and d!2398894 (not res!3187364)) b!8057510))

(assert (= (and b!8057510 res!3187365) b!8057511))

(declare-fun b_lambda!290545 () Bool)

(assert (=> (not b_lambda!290545) (not b!8057510)))

(declare-fun m!8410596 () Bool)

(assert (=> b!8057510 m!8410596))

(declare-fun m!8410598 () Bool)

(assert (=> b!8057511 m!8410598))

(assert (=> b!8057485 d!2398894))

(declare-fun bs!1973257 () Bool)

(declare-fun b!8057540 () Bool)

(assert (= bs!1973257 (and b!8057540 b!8057485)))

(declare-fun lambda!474617 () Int)

(assert (=> bs!1973257 (= (= lt!2731026 acc!836) (= lambda!474617 lambda!474581))))

(assert (=> bs!1973257 (= (= lt!2731026 lt!2731028) (= lambda!474617 lambda!474582))))

(assert (=> b!8057540 true))

(declare-fun bs!1973258 () Bool)

(declare-fun b!8057542 () Bool)

(assert (= bs!1973258 (and b!8057542 b!8057485)))

(declare-fun lambda!474618 () Int)

(assert (=> bs!1973258 (= (= lt!2731026 acc!836) (= lambda!474618 lambda!474581))))

(assert (=> bs!1973258 (= (= lt!2731026 lt!2731028) (= lambda!474618 lambda!474582))))

(declare-fun bs!1973259 () Bool)

(assert (= bs!1973259 (and b!8057542 b!8057540)))

(assert (=> bs!1973259 (= lambda!474618 lambda!474617)))

(assert (=> b!8057542 true))

(declare-fun lt!2731101 () ListMap!7357)

(declare-fun lambda!474619 () Int)

(assert (=> bs!1973258 (= (= lt!2731101 acc!836) (= lambda!474619 lambda!474581))))

(assert (=> bs!1973258 (= (= lt!2731101 lt!2731028) (= lambda!474619 lambda!474582))))

(assert (=> bs!1973259 (= (= lt!2731101 lt!2731026) (= lambda!474619 lambda!474617))))

(assert (=> b!8057542 (= (= lt!2731101 lt!2731026) (= lambda!474619 lambda!474618))))

(assert (=> b!8057542 true))

(declare-fun bs!1973260 () Bool)

(declare-fun d!2398896 () Bool)

(assert (= bs!1973260 (and d!2398896 b!8057542)))

(declare-fun lt!2731094 () ListMap!7357)

(declare-fun lambda!474620 () Int)

(assert (=> bs!1973260 (= (= lt!2731094 lt!2731026) (= lambda!474620 lambda!474618))))

(assert (=> bs!1973260 (= (= lt!2731094 lt!2731101) (= lambda!474620 lambda!474619))))

(declare-fun bs!1973261 () Bool)

(assert (= bs!1973261 (and d!2398896 b!8057485)))

(assert (=> bs!1973261 (= (= lt!2731094 acc!836) (= lambda!474620 lambda!474581))))

(declare-fun bs!1973262 () Bool)

(assert (= bs!1973262 (and d!2398896 b!8057540)))

(assert (=> bs!1973262 (= (= lt!2731094 lt!2731026) (= lambda!474620 lambda!474617))))

(assert (=> bs!1973261 (= (= lt!2731094 lt!2731028) (= lambda!474620 lambda!474582))))

(assert (=> d!2398896 true))

(declare-fun bm!747555 () Bool)

(declare-fun c!1476686 () Bool)

(declare-fun call!747562 () Bool)

(assert (=> bm!747555 (= call!747562 (forall!18533 (toList!11953 lt!2731026) (ite c!1476686 lambda!474617 lambda!474619)))))

(declare-fun e!4748374 () ListMap!7357)

(assert (=> b!8057540 (= e!4748374 lt!2731026)))

(declare-fun lt!2731096 () Unit!172587)

(declare-fun call!747560 () Unit!172587)

(assert (=> b!8057540 (= lt!2731096 call!747560)))

(declare-fun call!747561 () Bool)

(assert (=> b!8057540 call!747561))

(declare-fun lt!2731099 () Unit!172587)

(assert (=> b!8057540 (= lt!2731099 lt!2731096)))

(assert (=> b!8057540 call!747562))

(declare-fun lt!2731106 () Unit!172587)

(declare-fun Unit!172591 () Unit!172587)

(assert (=> b!8057540 (= lt!2731106 Unit!172591)))

(declare-fun b!8057541 () Bool)

(declare-fun e!4748373 () Bool)

(declare-fun invariantList!1958 (List!75741) Bool)

(assert (=> b!8057541 (= e!4748373 (invariantList!1958 (toList!11953 lt!2731094)))))

(assert (=> b!8057542 (= e!4748374 lt!2731101)))

(declare-fun lt!2731108 () ListMap!7357)

(assert (=> b!8057542 (= lt!2731108 (+!2700 lt!2731026 (h!82063 (t!391513 l!10976))))))

(assert (=> b!8057542 (= lt!2731101 (addToMapMapFromBucket!2014 (t!391513 (t!391513 l!10976)) (+!2700 lt!2731026 (h!82063 (t!391513 l!10976)))))))

(declare-fun lt!2731098 () Unit!172587)

(assert (=> b!8057542 (= lt!2731098 call!747560)))

(assert (=> b!8057542 call!747561))

(declare-fun lt!2731112 () Unit!172587)

(assert (=> b!8057542 (= lt!2731112 lt!2731098)))

(assert (=> b!8057542 (forall!18533 (toList!11953 lt!2731108) lambda!474619)))

(declare-fun lt!2731103 () Unit!172587)

(declare-fun Unit!172592 () Unit!172587)

(assert (=> b!8057542 (= lt!2731103 Unit!172592)))

(assert (=> b!8057542 (forall!18533 (t!391513 (t!391513 l!10976)) lambda!474619)))

(declare-fun lt!2731097 () Unit!172587)

(declare-fun Unit!172593 () Unit!172587)

(assert (=> b!8057542 (= lt!2731097 Unit!172593)))

(declare-fun lt!2731107 () Unit!172587)

(declare-fun Unit!172594 () Unit!172587)

(assert (=> b!8057542 (= lt!2731107 Unit!172594)))

(declare-fun lt!2731102 () Unit!172587)

(declare-fun forallContained!4682 (List!75741 Int tuple2!70986) Unit!172587)

(assert (=> b!8057542 (= lt!2731102 (forallContained!4682 (toList!11953 lt!2731108) lambda!474619 (h!82063 (t!391513 l!10976))))))

(declare-fun contains!21287 (ListMap!7357 K!22936) Bool)

(assert (=> b!8057542 (contains!21287 lt!2731108 (_1!38796 (h!82063 (t!391513 l!10976))))))

(declare-fun lt!2731109 () Unit!172587)

(declare-fun Unit!172595 () Unit!172587)

(assert (=> b!8057542 (= lt!2731109 Unit!172595)))

(assert (=> b!8057542 (contains!21287 lt!2731101 (_1!38796 (h!82063 (t!391513 l!10976))))))

(declare-fun lt!2731095 () Unit!172587)

(declare-fun Unit!172596 () Unit!172587)

(assert (=> b!8057542 (= lt!2731095 Unit!172596)))

(assert (=> b!8057542 (forall!18533 (t!391513 l!10976) lambda!474619)))

(declare-fun lt!2731100 () Unit!172587)

(declare-fun Unit!172597 () Unit!172587)

(assert (=> b!8057542 (= lt!2731100 Unit!172597)))

(assert (=> b!8057542 (forall!18533 (toList!11953 lt!2731108) lambda!474619)))

(declare-fun lt!2731105 () Unit!172587)

(declare-fun Unit!172598 () Unit!172587)

(assert (=> b!8057542 (= lt!2731105 Unit!172598)))

(declare-fun lt!2731093 () Unit!172587)

(declare-fun Unit!172599 () Unit!172587)

(assert (=> b!8057542 (= lt!2731093 Unit!172599)))

(declare-fun lt!2731104 () Unit!172587)

(declare-fun addForallContainsKeyThenBeforeAdding!1105 (ListMap!7357 ListMap!7357 K!22936 V!23190) Unit!172587)

(assert (=> b!8057542 (= lt!2731104 (addForallContainsKeyThenBeforeAdding!1105 lt!2731026 lt!2731101 (_1!38796 (h!82063 (t!391513 l!10976))) (_2!38796 (h!82063 (t!391513 l!10976)))))))

(assert (=> b!8057542 (forall!18533 (toList!11953 lt!2731026) lambda!474619)))

(declare-fun lt!2731092 () Unit!172587)

(assert (=> b!8057542 (= lt!2731092 lt!2731104)))

(assert (=> b!8057542 (forall!18533 (toList!11953 lt!2731026) lambda!474619)))

(declare-fun lt!2731110 () Unit!172587)

(declare-fun Unit!172600 () Unit!172587)

(assert (=> b!8057542 (= lt!2731110 Unit!172600)))

(declare-fun res!3187390 () Bool)

(assert (=> b!8057542 (= res!3187390 (forall!18533 (t!391513 l!10976) lambda!474619))))

(declare-fun e!4748372 () Bool)

(assert (=> b!8057542 (=> (not res!3187390) (not e!4748372))))

(assert (=> b!8057542 e!4748372))

(declare-fun lt!2731111 () Unit!172587)

(declare-fun Unit!172601 () Unit!172587)

(assert (=> b!8057542 (= lt!2731111 Unit!172601)))

(declare-fun b!8057543 () Bool)

(declare-fun res!3187392 () Bool)

(assert (=> b!8057543 (=> (not res!3187392) (not e!4748373))))

(assert (=> b!8057543 (= res!3187392 (forall!18533 (toList!11953 lt!2731026) lambda!474620))))

(assert (=> d!2398896 e!4748373))

(declare-fun res!3187391 () Bool)

(assert (=> d!2398896 (=> (not res!3187391) (not e!4748373))))

(assert (=> d!2398896 (= res!3187391 (forall!18533 (t!391513 l!10976) lambda!474620))))

(assert (=> d!2398896 (= lt!2731094 e!4748374)))

(assert (=> d!2398896 (= c!1476686 (is-Nil!75615 (t!391513 l!10976)))))

(assert (=> d!2398896 (noDuplicateKeys!2739 (t!391513 l!10976))))

(assert (=> d!2398896 (= (addToMapMapFromBucket!2014 (t!391513 l!10976) lt!2731026) lt!2731094)))

(declare-fun bm!747556 () Bool)

(assert (=> bm!747556 (= call!747560 (lemmaContainsAllItsOwnKeys!1114 lt!2731026))))

(declare-fun bm!747557 () Bool)

(assert (=> bm!747557 (= call!747561 (forall!18533 (toList!11953 lt!2731026) (ite c!1476686 lambda!474617 lambda!474618)))))

(declare-fun b!8057544 () Bool)

(assert (=> b!8057544 (= e!4748372 call!747562)))

(assert (= (and d!2398896 c!1476686) b!8057540))

(assert (= (and d!2398896 (not c!1476686)) b!8057542))

(assert (= (and b!8057542 res!3187390) b!8057544))

(assert (= (or b!8057540 b!8057544) bm!747555))

(assert (= (or b!8057540 b!8057542) bm!747557))

(assert (= (or b!8057540 b!8057542) bm!747556))

(assert (= (and d!2398896 res!3187391) b!8057543))

(assert (= (and b!8057543 res!3187392) b!8057541))

(declare-fun m!8410622 () Bool)

(assert (=> bm!747556 m!8410622))

(declare-fun m!8410624 () Bool)

(assert (=> d!2398896 m!8410624))

(declare-fun m!8410626 () Bool)

(assert (=> d!2398896 m!8410626))

(declare-fun m!8410628 () Bool)

(assert (=> b!8057542 m!8410628))

(declare-fun m!8410630 () Bool)

(assert (=> b!8057542 m!8410630))

(declare-fun m!8410632 () Bool)

(assert (=> b!8057542 m!8410632))

(assert (=> b!8057542 m!8410632))

(declare-fun m!8410634 () Bool)

(assert (=> b!8057542 m!8410634))

(assert (=> b!8057542 m!8410628))

(declare-fun m!8410636 () Bool)

(assert (=> b!8057542 m!8410636))

(declare-fun m!8410638 () Bool)

(assert (=> b!8057542 m!8410638))

(declare-fun m!8410640 () Bool)

(assert (=> b!8057542 m!8410640))

(declare-fun m!8410642 () Bool)

(assert (=> b!8057542 m!8410642))

(assert (=> b!8057542 m!8410642))

(declare-fun m!8410644 () Bool)

(assert (=> b!8057542 m!8410644))

(assert (=> b!8057542 m!8410644))

(declare-fun m!8410646 () Bool)

(assert (=> b!8057542 m!8410646))

(declare-fun m!8410648 () Bool)

(assert (=> b!8057543 m!8410648))

(declare-fun m!8410650 () Bool)

(assert (=> bm!747555 m!8410650))

(declare-fun m!8410652 () Bool)

(assert (=> bm!747557 m!8410652))

(declare-fun m!8410654 () Bool)

(assert (=> b!8057541 m!8410654))

(assert (=> b!8057485 d!2398896))

(declare-fun d!2398908 () Bool)

(declare-fun e!4748377 () Bool)

(assert (=> d!2398908 e!4748377))

(declare-fun res!3187397 () Bool)

(assert (=> d!2398908 (=> (not res!3187397) (not e!4748377))))

(declare-fun lt!2731123 () ListMap!7357)

(assert (=> d!2398908 (= res!3187397 (contains!21287 lt!2731123 (_1!38796 (h!82063 l!10976))))))

(declare-fun lt!2731121 () List!75741)

(assert (=> d!2398908 (= lt!2731123 (ListMap!7358 lt!2731121))))

(declare-fun lt!2731124 () Unit!172587)

(declare-fun lt!2731122 () Unit!172587)

(assert (=> d!2398908 (= lt!2731124 lt!2731122)))

(declare-datatypes ((Option!18021 0))(
  ( (None!18020) (Some!18020 (v!55377 V!23190)) )
))
(declare-fun getValueByKey!2805 (List!75741 K!22936) Option!18021)

(assert (=> d!2398908 (= (getValueByKey!2805 lt!2731121 (_1!38796 (h!82063 l!10976))) (Some!18020 (_2!38796 (h!82063 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1298 (List!75741 K!22936 V!23190) Unit!172587)

(assert (=> d!2398908 (= lt!2731122 (lemmaContainsTupThenGetReturnValue!1298 lt!2731121 (_1!38796 (h!82063 l!10976)) (_2!38796 (h!82063 l!10976))))))

(declare-fun insertNoDuplicatedKeys!806 (List!75741 K!22936 V!23190) List!75741)

(assert (=> d!2398908 (= lt!2731121 (insertNoDuplicatedKeys!806 (toList!11953 acc!836) (_1!38796 (h!82063 l!10976)) (_2!38796 (h!82063 l!10976))))))

(assert (=> d!2398908 (= (+!2700 acc!836 (h!82063 l!10976)) lt!2731123)))

(declare-fun b!8057549 () Bool)

(declare-fun res!3187398 () Bool)

(assert (=> b!8057549 (=> (not res!3187398) (not e!4748377))))

(assert (=> b!8057549 (= res!3187398 (= (getValueByKey!2805 (toList!11953 lt!2731123) (_1!38796 (h!82063 l!10976))) (Some!18020 (_2!38796 (h!82063 l!10976)))))))

(declare-fun b!8057550 () Bool)

(declare-fun contains!21288 (List!75741 tuple2!70986) Bool)

(assert (=> b!8057550 (= e!4748377 (contains!21288 (toList!11953 lt!2731123) (h!82063 l!10976)))))

(assert (= (and d!2398908 res!3187397) b!8057549))

(assert (= (and b!8057549 res!3187398) b!8057550))

(declare-fun m!8410656 () Bool)

(assert (=> d!2398908 m!8410656))

(declare-fun m!8410658 () Bool)

(assert (=> d!2398908 m!8410658))

(declare-fun m!8410660 () Bool)

(assert (=> d!2398908 m!8410660))

(declare-fun m!8410662 () Bool)

(assert (=> d!2398908 m!8410662))

(declare-fun m!8410664 () Bool)

(assert (=> b!8057549 m!8410664))

(declare-fun m!8410666 () Bool)

(assert (=> b!8057550 m!8410666))

(assert (=> b!8057485 d!2398908))

(declare-fun bs!1973263 () Bool)

(declare-fun d!2398910 () Bool)

(assert (= bs!1973263 (and d!2398910 d!2398896)))

(declare-fun lambda!474623 () Int)

(assert (=> bs!1973263 (= (= acc!836 lt!2731094) (= lambda!474623 lambda!474620))))

(declare-fun bs!1973264 () Bool)

(assert (= bs!1973264 (and d!2398910 b!8057542)))

(assert (=> bs!1973264 (= (= acc!836 lt!2731026) (= lambda!474623 lambda!474618))))

(assert (=> bs!1973264 (= (= acc!836 lt!2731101) (= lambda!474623 lambda!474619))))

(declare-fun bs!1973265 () Bool)

(assert (= bs!1973265 (and d!2398910 b!8057485)))

(assert (=> bs!1973265 (= lambda!474623 lambda!474581)))

(declare-fun bs!1973266 () Bool)

(assert (= bs!1973266 (and d!2398910 b!8057540)))

(assert (=> bs!1973266 (= (= acc!836 lt!2731026) (= lambda!474623 lambda!474617))))

(assert (=> bs!1973265 (= (= acc!836 lt!2731028) (= lambda!474623 lambda!474582))))

(assert (=> d!2398910 true))

(assert (=> d!2398910 (forall!18533 (toList!11953 acc!836) lambda!474623)))

(declare-fun lt!2731127 () Unit!172587)

(declare-fun choose!60567 (ListMap!7357) Unit!172587)

(assert (=> d!2398910 (= lt!2731127 (choose!60567 acc!836))))

(assert (=> d!2398910 (= (lemmaContainsAllItsOwnKeys!1114 acc!836) lt!2731127)))

(declare-fun bs!1973267 () Bool)

(assert (= bs!1973267 d!2398910))

(declare-fun m!8410668 () Bool)

(assert (=> bs!1973267 m!8410668))

(declare-fun m!8410670 () Bool)

(assert (=> bs!1973267 m!8410670))

(assert (=> b!8057485 d!2398910))

(declare-fun d!2398912 () Bool)

(declare-fun res!3187403 () Bool)

(declare-fun e!4748382 () Bool)

(assert (=> d!2398912 (=> res!3187403 e!4748382)))

(assert (=> d!2398912 (= res!3187403 (not (is-Cons!75615 l!10976)))))

(assert (=> d!2398912 (= (noDuplicateKeys!2739 l!10976) e!4748382)))

(declare-fun b!8057555 () Bool)

(declare-fun e!4748383 () Bool)

(assert (=> b!8057555 (= e!4748382 e!4748383)))

(declare-fun res!3187404 () Bool)

(assert (=> b!8057555 (=> (not res!3187404) (not e!4748383))))

(declare-fun containsKey!4916 (List!75741 K!22936) Bool)

(assert (=> b!8057555 (= res!3187404 (not (containsKey!4916 (t!391513 l!10976) (_1!38796 (h!82063 l!10976)))))))

(declare-fun b!8057556 () Bool)

(assert (=> b!8057556 (= e!4748383 (noDuplicateKeys!2739 (t!391513 l!10976)))))

(assert (= (and d!2398912 (not res!3187403)) b!8057555))

(assert (= (and b!8057555 res!3187404) b!8057556))

(declare-fun m!8410672 () Bool)

(assert (=> b!8057555 m!8410672))

(assert (=> b!8057556 m!8410626))

(assert (=> start!759152 d!2398912))

(declare-fun d!2398914 () Bool)

(assert (=> d!2398914 (= (inv!97410 acc!836) (invariantList!1958 (toList!11953 acc!836)))))

(declare-fun bs!1973268 () Bool)

(assert (= bs!1973268 d!2398914))

(declare-fun m!8410674 () Bool)

(assert (=> bs!1973268 m!8410674))

(assert (=> start!759152 d!2398914))

(declare-fun e!4748386 () Bool)

(declare-fun tp!2414140 () Bool)

(declare-fun b!8057561 () Bool)

(assert (=> b!8057561 (= e!4748386 (and tp_is_empty!55095 tp_is_empty!55097 tp!2414140))))

(assert (=> b!8057487 (= tp!2414130 e!4748386)))

(assert (= (and b!8057487 (is-Cons!75615 (toList!11953 acc!836))) b!8057561))

(declare-fun b!8057562 () Bool)

(declare-fun e!4748387 () Bool)

(declare-fun tp!2414141 () Bool)

(assert (=> b!8057562 (= e!4748387 (and tp_is_empty!55095 tp_is_empty!55097 tp!2414141))))

(assert (=> b!8057486 (= tp!2414131 e!4748387)))

(assert (= (and b!8057486 (is-Cons!75615 (t!391513 l!10976))) b!8057562))

(declare-fun b_lambda!290549 () Bool)

(assert (= b_lambda!290543 (or b!8057485 b_lambda!290549)))

(declare-fun bs!1973269 () Bool)

(declare-fun d!2398916 () Bool)

(assert (= bs!1973269 (and d!2398916 b!8057485)))

(assert (=> bs!1973269 (= (dynLambda!30274 lambda!474581 (h!82063 (toList!11953 acc!836))) (contains!21287 acc!836 (_1!38796 (h!82063 (toList!11953 acc!836)))))))

(declare-fun m!8410676 () Bool)

(assert (=> bs!1973269 m!8410676))

(assert (=> b!8057508 d!2398916))

(declare-fun b_lambda!290551 () Bool)

(assert (= b_lambda!290545 (or b!8057485 b_lambda!290551)))

(declare-fun bs!1973270 () Bool)

(declare-fun d!2398918 () Bool)

(assert (= bs!1973270 (and d!2398918 b!8057485)))

(assert (=> bs!1973270 (= (dynLambda!30274 lambda!474582 (h!82063 (toList!11953 lt!2731026))) (contains!21287 lt!2731028 (_1!38796 (h!82063 (toList!11953 lt!2731026)))))))

(declare-fun m!8410678 () Bool)

(assert (=> bs!1973270 m!8410678))

(assert (=> b!8057510 d!2398918))

(push 1)

(assert (not b!8057550))

(assert (not bm!747556))

(assert (not d!2398910))

(assert (not bs!1973269))

(assert (not d!2398914))

(assert (not bm!747557))

(assert (not b_lambda!290551))

(assert (not b!8057542))

(assert (not b!8057541))

(assert (not d!2398908))

(assert (not bs!1973270))

(assert (not b_lambda!290549))

(assert tp_is_empty!55095)

(assert (not b!8057555))

(assert (not d!2398896))

(assert (not b!8057549))

(assert (not b!8057556))

(assert (not b!8057543))

(assert (not b!8057509))

(assert (not b!8057561))

(assert (not b!8057562))

(assert (not bm!747555))

(assert (not b!8057511))

(assert tp_is_empty!55097)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

