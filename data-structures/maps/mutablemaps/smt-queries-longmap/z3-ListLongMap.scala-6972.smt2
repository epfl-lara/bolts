; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88216 () Bool)

(assert start!88216)

(declare-fun b!1016607 () Bool)

(assert (=> b!1016607 true))

(assert (=> b!1016607 true))

(declare-fun b!1016604 () Bool)

(declare-fun res!681977 () Bool)

(declare-fun e!571948 () Bool)

(assert (=> b!1016604 (=> (not res!681977) (not e!571948))))

(declare-datatypes ((B!1540 0))(
  ( (B!1541 (val!11854 Int)) )
))
(declare-datatypes ((tuple2!15344 0))(
  ( (tuple2!15345 (_1!7682 (_ BitVec 64)) (_2!7682 B!1540)) )
))
(declare-fun newHead!31 () tuple2!15344)

(declare-datatypes ((List!21645 0))(
  ( (Nil!21642) (Cons!21641 (h!22839 tuple2!15344) (t!30654 List!21645)) )
))
(declare-fun l!1114 () List!21645)

(declare-fun head!969 (List!21645) tuple2!15344)

(assert (=> b!1016604 (= res!681977 (bvslt (_1!7682 newHead!31) (_1!7682 (head!969 l!1114))))))

(declare-fun b!1016605 () Bool)

(declare-fun e!571947 () Bool)

(declare-fun tp_is_empty!23607 () Bool)

(declare-fun tp!70796 () Bool)

(assert (=> b!1016605 (= e!571947 (and tp_is_empty!23607 tp!70796))))

(declare-fun b!1016606 () Bool)

(declare-fun res!681978 () Bool)

(assert (=> b!1016606 (=> (not res!681978) (not e!571948))))

(declare-datatypes ((List!21646 0))(
  ( (Nil!21643) (Cons!21642 (h!22840 (_ BitVec 64)) (t!30655 List!21646)) )
))
(declare-fun keys!40 () List!21646)

(get-info :version)

(assert (=> b!1016606 (= res!681978 ((_ is Cons!21642) keys!40))))

(declare-fun res!681975 () Bool)

(assert (=> b!1016607 (=> (not res!681975) (not e!571948))))

(declare-fun lambda!1035 () Int)

(declare-fun forall!287 (List!21646 Int) Bool)

(assert (=> b!1016607 (= res!681975 (forall!287 keys!40 lambda!1035))))

(declare-fun res!681976 () Bool)

(assert (=> start!88216 (=> (not res!681976) (not e!571948))))

(declare-fun isStrictlySorted!618 (List!21645) Bool)

(assert (=> start!88216 (= res!681976 (isStrictlySorted!618 l!1114))))

(assert (=> start!88216 e!571948))

(assert (=> start!88216 e!571947))

(assert (=> start!88216 true))

(assert (=> start!88216 tp_is_empty!23607))

(declare-fun b!1016608 () Bool)

(declare-fun res!681974 () Bool)

(assert (=> b!1016608 (=> (not res!681974) (not e!571948))))

(declare-fun isEmpty!891 (List!21645) Bool)

(assert (=> b!1016608 (= res!681974 (not (isEmpty!891 l!1114)))))

(declare-fun b!1016609 () Bool)

(assert (=> b!1016609 (= e!571948 (not (forall!287 (t!30655 keys!40) lambda!1035)))))

(declare-fun lt!449282 () List!21645)

(declare-datatypes ((Option!610 0))(
  ( (Some!609 (v!14458 B!1540)) (None!608) )
))
(declare-fun isDefined!406 (Option!610) Bool)

(declare-fun getValueByKey!559 (List!21645 (_ BitVec 64)) Option!610)

(assert (=> b!1016609 (isDefined!406 (getValueByKey!559 lt!449282 (h!22840 keys!40)))))

(declare-datatypes ((Unit!33218 0))(
  ( (Unit!33219) )
))
(declare-fun lt!449283 () Unit!33218)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!384 (List!21645 (_ BitVec 64)) Unit!33218)

(assert (=> b!1016609 (= lt!449283 (lemmaContainsKeyImpliesGetValueByKeyDefined!384 lt!449282 (h!22840 keys!40)))))

(assert (=> b!1016609 (= lt!449282 (Cons!21641 newHead!31 l!1114))))

(declare-fun containsKey!495 (List!21645 (_ BitVec 64)) Bool)

(assert (=> b!1016609 (containsKey!495 l!1114 (h!22840 keys!40))))

(declare-fun lt!449281 () Unit!33218)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!14 (List!21645 (_ BitVec 64)) Unit!33218)

(assert (=> b!1016609 (= lt!449281 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!14 l!1114 (h!22840 keys!40)))))

(assert (= (and start!88216 res!681976) b!1016608))

(assert (= (and b!1016608 res!681974) b!1016607))

(assert (= (and b!1016607 res!681975) b!1016604))

(assert (= (and b!1016604 res!681977) b!1016606))

(assert (= (and b!1016606 res!681978) b!1016609))

(assert (= (and start!88216 ((_ is Cons!21641) l!1114)) b!1016605))

(declare-fun m!938341 () Bool)

(assert (=> b!1016608 m!938341))

(declare-fun m!938343 () Bool)

(assert (=> start!88216 m!938343))

(declare-fun m!938345 () Bool)

(assert (=> b!1016609 m!938345))

(declare-fun m!938347 () Bool)

(assert (=> b!1016609 m!938347))

(declare-fun m!938349 () Bool)

(assert (=> b!1016609 m!938349))

(declare-fun m!938351 () Bool)

(assert (=> b!1016609 m!938351))

(assert (=> b!1016609 m!938347))

(declare-fun m!938353 () Bool)

(assert (=> b!1016609 m!938353))

(declare-fun m!938355 () Bool)

(assert (=> b!1016609 m!938355))

(declare-fun m!938357 () Bool)

(assert (=> b!1016604 m!938357))

(declare-fun m!938359 () Bool)

(assert (=> b!1016607 m!938359))

(check-sat (not b!1016609) (not b!1016607) tp_is_empty!23607 (not b!1016604) (not start!88216) (not b!1016608) (not b!1016605))
(check-sat)
(get-model)

(declare-fun d!121285 () Bool)

(declare-fun res!681998 () Bool)

(declare-fun e!571959 () Bool)

(assert (=> d!121285 (=> res!681998 e!571959)))

(assert (=> d!121285 (= res!681998 (and ((_ is Cons!21641) l!1114) (= (_1!7682 (h!22839 l!1114)) (h!22840 keys!40))))))

(assert (=> d!121285 (= (containsKey!495 l!1114 (h!22840 keys!40)) e!571959)))

(declare-fun b!1016640 () Bool)

(declare-fun e!571960 () Bool)

(assert (=> b!1016640 (= e!571959 e!571960)))

(declare-fun res!681999 () Bool)

(assert (=> b!1016640 (=> (not res!681999) (not e!571960))))

(assert (=> b!1016640 (= res!681999 (and (or (not ((_ is Cons!21641) l!1114)) (bvsle (_1!7682 (h!22839 l!1114)) (h!22840 keys!40))) ((_ is Cons!21641) l!1114) (bvslt (_1!7682 (h!22839 l!1114)) (h!22840 keys!40))))))

(declare-fun b!1016641 () Bool)

(assert (=> b!1016641 (= e!571960 (containsKey!495 (t!30654 l!1114) (h!22840 keys!40)))))

(assert (= (and d!121285 (not res!681998)) b!1016640))

(assert (= (and b!1016640 res!681999) b!1016641))

(declare-fun m!938381 () Bool)

(assert (=> b!1016641 m!938381))

(assert (=> b!1016609 d!121285))

(declare-fun d!121287 () Bool)

(declare-fun isEmpty!893 (Option!610) Bool)

(assert (=> d!121287 (= (isDefined!406 (getValueByKey!559 lt!449282 (h!22840 keys!40))) (not (isEmpty!893 (getValueByKey!559 lt!449282 (h!22840 keys!40)))))))

(declare-fun bs!29524 () Bool)

(assert (= bs!29524 d!121287))

(assert (=> bs!29524 m!938347))

(declare-fun m!938383 () Bool)

(assert (=> bs!29524 m!938383))

(assert (=> b!1016609 d!121287))

(declare-fun b!1016654 () Bool)

(declare-fun e!571969 () Option!610)

(assert (=> b!1016654 (= e!571969 (Some!609 (_2!7682 (h!22839 lt!449282))))))

(declare-fun b!1016655 () Bool)

(declare-fun e!571970 () Option!610)

(assert (=> b!1016655 (= e!571969 e!571970)))

(declare-fun c!102898 () Bool)

(assert (=> b!1016655 (= c!102898 (and ((_ is Cons!21641) lt!449282) (not (= (_1!7682 (h!22839 lt!449282)) (h!22840 keys!40)))))))

(declare-fun b!1016656 () Bool)

(assert (=> b!1016656 (= e!571970 (getValueByKey!559 (t!30654 lt!449282) (h!22840 keys!40)))))

(declare-fun b!1016657 () Bool)

(assert (=> b!1016657 (= e!571970 None!608)))

(declare-fun d!121289 () Bool)

(declare-fun c!102897 () Bool)

(assert (=> d!121289 (= c!102897 (and ((_ is Cons!21641) lt!449282) (= (_1!7682 (h!22839 lt!449282)) (h!22840 keys!40))))))

(assert (=> d!121289 (= (getValueByKey!559 lt!449282 (h!22840 keys!40)) e!571969)))

(assert (= (and d!121289 c!102897) b!1016654))

(assert (= (and d!121289 (not c!102897)) b!1016655))

(assert (= (and b!1016655 c!102898) b!1016656))

(assert (= (and b!1016655 (not c!102898)) b!1016657))

(declare-fun m!938385 () Bool)

(assert (=> b!1016656 m!938385))

(assert (=> b!1016609 d!121289))

(declare-fun d!121293 () Bool)

(assert (=> d!121293 (containsKey!495 l!1114 (h!22840 keys!40))))

(declare-fun lt!449295 () Unit!33218)

(declare-fun choose!1658 (List!21645 (_ BitVec 64)) Unit!33218)

(assert (=> d!121293 (= lt!449295 (choose!1658 l!1114 (h!22840 keys!40)))))

(declare-fun e!571979 () Bool)

(assert (=> d!121293 e!571979))

(declare-fun res!682008 () Bool)

(assert (=> d!121293 (=> (not res!682008) (not e!571979))))

(assert (=> d!121293 (= res!682008 (isStrictlySorted!618 l!1114))))

(assert (=> d!121293 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!14 l!1114 (h!22840 keys!40)) lt!449295)))

(declare-fun b!1016670 () Bool)

(assert (=> b!1016670 (= e!571979 (isDefined!406 (getValueByKey!559 l!1114 (h!22840 keys!40))))))

(assert (= (and d!121293 res!682008) b!1016670))

(assert (=> d!121293 m!938345))

(declare-fun m!938389 () Bool)

(assert (=> d!121293 m!938389))

(assert (=> d!121293 m!938343))

(declare-fun m!938391 () Bool)

(assert (=> b!1016670 m!938391))

(assert (=> b!1016670 m!938391))

(declare-fun m!938393 () Bool)

(assert (=> b!1016670 m!938393))

(assert (=> b!1016609 d!121293))

(declare-fun d!121297 () Bool)

(declare-fun res!682015 () Bool)

(declare-fun e!571988 () Bool)

(assert (=> d!121297 (=> res!682015 e!571988)))

(assert (=> d!121297 (= res!682015 ((_ is Nil!21643) (t!30655 keys!40)))))

(assert (=> d!121297 (= (forall!287 (t!30655 keys!40) lambda!1035) e!571988)))

(declare-fun b!1016681 () Bool)

(declare-fun e!571989 () Bool)

(assert (=> b!1016681 (= e!571988 e!571989)))

(declare-fun res!682016 () Bool)

(assert (=> b!1016681 (=> (not res!682016) (not e!571989))))

(declare-fun dynLambda!1924 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016681 (= res!682016 (dynLambda!1924 lambda!1035 (h!22840 (t!30655 keys!40))))))

(declare-fun b!1016682 () Bool)

(assert (=> b!1016682 (= e!571989 (forall!287 (t!30655 (t!30655 keys!40)) lambda!1035))))

(assert (= (and d!121297 (not res!682015)) b!1016681))

(assert (= (and b!1016681 res!682016) b!1016682))

(declare-fun b_lambda!15561 () Bool)

(assert (=> (not b_lambda!15561) (not b!1016681)))

(declare-fun m!938397 () Bool)

(assert (=> b!1016681 m!938397))

(declare-fun m!938399 () Bool)

(assert (=> b!1016682 m!938399))

(assert (=> b!1016609 d!121297))

(declare-fun d!121303 () Bool)

(assert (=> d!121303 (isDefined!406 (getValueByKey!559 lt!449282 (h!22840 keys!40)))))

(declare-fun lt!449298 () Unit!33218)

(declare-fun choose!1659 (List!21645 (_ BitVec 64)) Unit!33218)

(assert (=> d!121303 (= lt!449298 (choose!1659 lt!449282 (h!22840 keys!40)))))

(declare-fun e!572002 () Bool)

(assert (=> d!121303 e!572002))

(declare-fun res!682029 () Bool)

(assert (=> d!121303 (=> (not res!682029) (not e!572002))))

(assert (=> d!121303 (= res!682029 (isStrictlySorted!618 lt!449282))))

(assert (=> d!121303 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!384 lt!449282 (h!22840 keys!40)) lt!449298)))

(declare-fun b!1016695 () Bool)

(assert (=> b!1016695 (= e!572002 (containsKey!495 lt!449282 (h!22840 keys!40)))))

(assert (= (and d!121303 res!682029) b!1016695))

(assert (=> d!121303 m!938347))

(assert (=> d!121303 m!938347))

(assert (=> d!121303 m!938353))

(declare-fun m!938409 () Bool)

(assert (=> d!121303 m!938409))

(declare-fun m!938411 () Bool)

(assert (=> d!121303 m!938411))

(declare-fun m!938413 () Bool)

(assert (=> b!1016695 m!938413))

(assert (=> b!1016609 d!121303))

(declare-fun d!121313 () Bool)

(assert (=> d!121313 (= (head!969 l!1114) (h!22839 l!1114))))

(assert (=> b!1016604 d!121313))

(declare-fun d!121315 () Bool)

(declare-fun res!682043 () Bool)

(declare-fun e!572016 () Bool)

(assert (=> d!121315 (=> res!682043 e!572016)))

(assert (=> d!121315 (= res!682043 (or ((_ is Nil!21642) l!1114) ((_ is Nil!21642) (t!30654 l!1114))))))

(assert (=> d!121315 (= (isStrictlySorted!618 l!1114) e!572016)))

(declare-fun b!1016709 () Bool)

(declare-fun e!572017 () Bool)

(assert (=> b!1016709 (= e!572016 e!572017)))

(declare-fun res!682044 () Bool)

(assert (=> b!1016709 (=> (not res!682044) (not e!572017))))

(assert (=> b!1016709 (= res!682044 (bvslt (_1!7682 (h!22839 l!1114)) (_1!7682 (h!22839 (t!30654 l!1114)))))))

(declare-fun b!1016710 () Bool)

(assert (=> b!1016710 (= e!572017 (isStrictlySorted!618 (t!30654 l!1114)))))

(assert (= (and d!121315 (not res!682043)) b!1016709))

(assert (= (and b!1016709 res!682044) b!1016710))

(declare-fun m!938425 () Bool)

(assert (=> b!1016710 m!938425))

(assert (=> start!88216 d!121315))

(declare-fun d!121323 () Bool)

(declare-fun res!682045 () Bool)

(declare-fun e!572018 () Bool)

(assert (=> d!121323 (=> res!682045 e!572018)))

(assert (=> d!121323 (= res!682045 ((_ is Nil!21643) keys!40))))

(assert (=> d!121323 (= (forall!287 keys!40 lambda!1035) e!572018)))

(declare-fun b!1016711 () Bool)

(declare-fun e!572019 () Bool)

(assert (=> b!1016711 (= e!572018 e!572019)))

(declare-fun res!682046 () Bool)

(assert (=> b!1016711 (=> (not res!682046) (not e!572019))))

(assert (=> b!1016711 (= res!682046 (dynLambda!1924 lambda!1035 (h!22840 keys!40)))))

(declare-fun b!1016712 () Bool)

(assert (=> b!1016712 (= e!572019 (forall!287 (t!30655 keys!40) lambda!1035))))

(assert (= (and d!121323 (not res!682045)) b!1016711))

(assert (= (and b!1016711 res!682046) b!1016712))

(declare-fun b_lambda!15567 () Bool)

(assert (=> (not b_lambda!15567) (not b!1016711)))

(declare-fun m!938427 () Bool)

(assert (=> b!1016711 m!938427))

(assert (=> b!1016712 m!938349))

(assert (=> b!1016607 d!121323))

(declare-fun d!121325 () Bool)

(assert (=> d!121325 (= (isEmpty!891 l!1114) ((_ is Nil!21642) l!1114))))

(assert (=> b!1016608 d!121325))

(declare-fun b!1016724 () Bool)

(declare-fun e!572029 () Bool)

(declare-fun tp!70802 () Bool)

(assert (=> b!1016724 (= e!572029 (and tp_is_empty!23607 tp!70802))))

(assert (=> b!1016605 (= tp!70796 e!572029)))

(assert (= (and b!1016605 ((_ is Cons!21641) (t!30654 l!1114))) b!1016724))

(declare-fun b_lambda!15569 () Bool)

(assert (= b_lambda!15567 (or b!1016607 b_lambda!15569)))

(declare-fun bs!29527 () Bool)

(declare-fun d!121329 () Bool)

(assert (= bs!29527 (and d!121329 b!1016607)))

(declare-fun value!178 () B!1540)

(assert (=> bs!29527 (= (dynLambda!1924 lambda!1035 (h!22840 keys!40)) (= (getValueByKey!559 l!1114 (h!22840 keys!40)) (Some!609 value!178)))))

(assert (=> bs!29527 m!938391))

(assert (=> b!1016711 d!121329))

(declare-fun b_lambda!15571 () Bool)

(assert (= b_lambda!15561 (or b!1016607 b_lambda!15571)))

(declare-fun bs!29528 () Bool)

(declare-fun d!121333 () Bool)

(assert (= bs!29528 (and d!121333 b!1016607)))

(assert (=> bs!29528 (= (dynLambda!1924 lambda!1035 (h!22840 (t!30655 keys!40))) (= (getValueByKey!559 l!1114 (h!22840 (t!30655 keys!40))) (Some!609 value!178)))))

(declare-fun m!938437 () Bool)

(assert (=> bs!29528 m!938437))

(assert (=> b!1016681 d!121333))

(check-sat (not b_lambda!15569) (not d!121303) (not d!121293) (not b!1016712) (not b!1016695) (not b!1016724) tp_is_empty!23607 (not b!1016670) (not b_lambda!15571) (not d!121287) (not bs!29527) (not b!1016682) (not b!1016656) (not b!1016641) (not bs!29528) (not b!1016710))
(check-sat)
