; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106436 () Bool)

(assert start!106436)

(declare-fun b!1265262 () Bool)

(declare-fun res!842550 () Bool)

(declare-fun e!720570 () Bool)

(assert (=> b!1265262 (=> (not res!842550) (not e!720570))))

(declare-datatypes ((B!1968 0))(
  ( (B!1969 (val!16319 Int)) )
))
(declare-datatypes ((tuple2!21306 0))(
  ( (tuple2!21307 (_1!10663 (_ BitVec 64)) (_2!10663 B!1968)) )
))
(declare-datatypes ((List!28486 0))(
  ( (Nil!28483) (Cons!28482 (h!29691 tuple2!21306) (t!42014 List!28486)) )
))
(declare-fun l!706 () List!28486)

(assert (=> b!1265262 (= res!842550 (not (is-Cons!28482 l!706)))))

(declare-fun b!1265264 () Bool)

(declare-fun e!720571 () Bool)

(declare-fun tp_is_empty!32501 () Bool)

(declare-fun tp!96327 () Bool)

(assert (=> b!1265264 (= e!720571 (and tp_is_empty!32501 tp!96327))))

(declare-fun b!1265261 () Bool)

(declare-fun res!842549 () Bool)

(assert (=> b!1265261 (=> (not res!842549) (not e!720570))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!643 (List!28486 (_ BitVec 64)) Bool)

(assert (=> b!1265261 (= res!842549 (not (containsKey!643 l!706 key1!31)))))

(declare-fun res!842551 () Bool)

(assert (=> start!106436 (=> (not res!842551) (not e!720570))))

(declare-fun isStrictlySorted!782 (List!28486) Bool)

(assert (=> start!106436 (= res!842551 (isStrictlySorted!782 l!706))))

(assert (=> start!106436 e!720570))

(assert (=> start!106436 e!720571))

(assert (=> start!106436 true))

(assert (=> start!106436 tp_is_empty!32501))

(declare-fun v1!26 () B!1968)

(declare-fun b!1265263 () Bool)

(declare-fun insertStrictlySorted!464 (List!28486 (_ BitVec 64) B!1968) List!28486)

(assert (=> b!1265263 (= e!720570 (not (isStrictlySorted!782 (insertStrictlySorted!464 l!706 key1!31 v1!26))))))

(assert (= (and start!106436 res!842551) b!1265261))

(assert (= (and b!1265261 res!842549) b!1265262))

(assert (= (and b!1265262 res!842550) b!1265263))

(assert (= (and start!106436 (is-Cons!28482 l!706)) b!1265264))

(declare-fun m!1165537 () Bool)

(assert (=> b!1265261 m!1165537))

(declare-fun m!1165539 () Bool)

(assert (=> start!106436 m!1165539))

(declare-fun m!1165541 () Bool)

(assert (=> b!1265263 m!1165541))

(assert (=> b!1265263 m!1165541))

(declare-fun m!1165543 () Bool)

(assert (=> b!1265263 m!1165543))

(push 1)

(assert (not start!106436))

(assert (not b!1265263))

(assert (not b!1265264))

(assert tp_is_empty!32501)

(assert (not b!1265261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138819 () Bool)

(declare-fun res!842564 () Bool)

(declare-fun e!720584 () Bool)

(assert (=> d!138819 (=> res!842564 e!720584)))

(assert (=> d!138819 (= res!842564 (and (is-Cons!28482 l!706) (= (_1!10663 (h!29691 l!706)) key1!31)))))

(assert (=> d!138819 (= (containsKey!643 l!706 key1!31) e!720584)))

(declare-fun b!1265277 () Bool)

(declare-fun e!720585 () Bool)

(assert (=> b!1265277 (= e!720584 e!720585)))

(declare-fun res!842565 () Bool)

(assert (=> b!1265277 (=> (not res!842565) (not e!720585))))

(assert (=> b!1265277 (= res!842565 (and (or (not (is-Cons!28482 l!706)) (bvsle (_1!10663 (h!29691 l!706)) key1!31)) (is-Cons!28482 l!706) (bvslt (_1!10663 (h!29691 l!706)) key1!31)))))

(declare-fun b!1265278 () Bool)

(assert (=> b!1265278 (= e!720585 (containsKey!643 (t!42014 l!706) key1!31))))

(assert (= (and d!138819 (not res!842564)) b!1265277))

(assert (= (and b!1265277 res!842565) b!1265278))

(declare-fun m!1165545 () Bool)

(assert (=> b!1265278 m!1165545))

(assert (=> b!1265261 d!138819))

(declare-fun d!138825 () Bool)

(declare-fun res!842578 () Bool)

(declare-fun e!720598 () Bool)

(assert (=> d!138825 (=> res!842578 e!720598)))

(assert (=> d!138825 (= res!842578 (or (is-Nil!28483 l!706) (is-Nil!28483 (t!42014 l!706))))))

(assert (=> d!138825 (= (isStrictlySorted!782 l!706) e!720598)))

(declare-fun b!1265291 () Bool)

(declare-fun e!720599 () Bool)

(assert (=> b!1265291 (= e!720598 e!720599)))

(declare-fun res!842579 () Bool)

(assert (=> b!1265291 (=> (not res!842579) (not e!720599))))

(assert (=> b!1265291 (= res!842579 (bvslt (_1!10663 (h!29691 l!706)) (_1!10663 (h!29691 (t!42014 l!706)))))))

(declare-fun b!1265292 () Bool)

(assert (=> b!1265292 (= e!720599 (isStrictlySorted!782 (t!42014 l!706)))))

(assert (= (and d!138825 (not res!842578)) b!1265291))

(assert (= (and b!1265291 res!842579) b!1265292))

(declare-fun m!1165551 () Bool)

(assert (=> b!1265292 m!1165551))

(assert (=> start!106436 d!138825))

(declare-fun d!138831 () Bool)

(declare-fun res!842580 () Bool)

(declare-fun e!720600 () Bool)

(assert (=> d!138831 (=> res!842580 e!720600)))

(assert (=> d!138831 (= res!842580 (or (is-Nil!28483 (insertStrictlySorted!464 l!706 key1!31 v1!26)) (is-Nil!28483 (t!42014 (insertStrictlySorted!464 l!706 key1!31 v1!26)))))))

(assert (=> d!138831 (= (isStrictlySorted!782 (insertStrictlySorted!464 l!706 key1!31 v1!26)) e!720600)))

(declare-fun b!1265293 () Bool)

(declare-fun e!720601 () Bool)

(assert (=> b!1265293 (= e!720600 e!720601)))

(declare-fun res!842581 () Bool)

(assert (=> b!1265293 (=> (not res!842581) (not e!720601))))

(assert (=> b!1265293 (= res!842581 (bvslt (_1!10663 (h!29691 (insertStrictlySorted!464 l!706 key1!31 v1!26))) (_1!10663 (h!29691 (t!42014 (insertStrictlySorted!464 l!706 key1!31 v1!26))))))))

(declare-fun b!1265294 () Bool)

(assert (=> b!1265294 (= e!720601 (isStrictlySorted!782 (t!42014 (insertStrictlySorted!464 l!706 key1!31 v1!26))))))

(assert (= (and d!138831 (not res!842580)) b!1265293))

(assert (= (and b!1265293 res!842581) b!1265294))

(declare-fun m!1165553 () Bool)

(assert (=> b!1265294 m!1165553))

(assert (=> b!1265263 d!138831))

(declare-fun bm!62410 () Bool)

(declare-fun call!62413 () List!28486)

(declare-fun call!62415 () List!28486)

(assert (=> bm!62410 (= call!62413 call!62415)))

(declare-fun b!1265369 () Bool)

(declare-fun e!720641 () List!28486)

(declare-fun call!62414 () List!28486)

(assert (=> b!1265369 (= e!720641 call!62414)))

(declare-fun d!138833 () Bool)

(declare-fun e!720644 () Bool)

(assert (=> d!138833 e!720644))

(declare-fun res!842601 () Bool)

(assert (=> d!138833 (=> (not res!842601) (not e!720644))))

(declare-fun lt!573985 () List!28486)

(assert (=> d!138833 (= res!842601 (isStrictlySorted!782 lt!573985))))

(declare-fun e!720645 () List!28486)

(assert (=> d!138833 (= lt!573985 e!720645)))

(declare-fun c!123256 () Bool)

(assert (=> d!138833 (= c!123256 (and (is-Cons!28482 l!706) (bvslt (_1!10663 (h!29691 l!706)) key1!31)))))

(assert (=> d!138833 (isStrictlySorted!782 l!706)))

(assert (=> d!138833 (= (insertStrictlySorted!464 l!706 key1!31 v1!26) lt!573985)))

(declare-fun b!1265370 () Bool)

(assert (=> b!1265370 (= e!720645 call!62415)))

(declare-fun b!1265371 () Bool)

(declare-fun e!720642 () List!28486)

(assert (=> b!1265371 (= e!720645 e!720642)))

(declare-fun c!123255 () Bool)

(assert (=> b!1265371 (= c!123255 (and (is-Cons!28482 l!706) (= (_1!10663 (h!29691 l!706)) key1!31)))))

(declare-fun b!1265372 () Bool)

(declare-fun contains!7656 (List!28486 tuple2!21306) Bool)

(assert (=> b!1265372 (= e!720644 (contains!7656 lt!573985 (tuple2!21307 key1!31 v1!26)))))

(declare-fun b!1265373 () Bool)

(assert (=> b!1265373 (= e!720642 call!62413)))

(declare-fun b!1265374 () Bool)

(declare-fun res!842600 () Bool)

(assert (=> b!1265374 (=> (not res!842600) (not e!720644))))

(assert (=> b!1265374 (= res!842600 (containsKey!643 lt!573985 key1!31))))

(declare-fun bm!62411 () Bool)

(assert (=> bm!62411 (= call!62414 call!62413)))

(declare-fun e!720643 () List!28486)

(declare-fun bm!62412 () Bool)

(declare-fun $colon$colon!641 (List!28486 tuple2!21306) List!28486)

(assert (=> bm!62412 (= call!62415 ($colon$colon!641 e!720643 (ite c!123256 (h!29691 l!706) (tuple2!21307 key1!31 v1!26))))))

(declare-fun c!123258 () Bool)

(assert (=> bm!62412 (= c!123258 c!123256)))

(declare-fun b!1265375 () Bool)

(assert (=> b!1265375 (= e!720643 (insertStrictlySorted!464 (t!42014 l!706) key1!31 v1!26))))

(declare-fun b!1265376 () Bool)

(assert (=> b!1265376 (= e!720641 call!62414)))

(declare-fun b!1265377 () Bool)

(declare-fun c!123257 () Bool)

(assert (=> b!1265377 (= e!720643 (ite c!123255 (t!42014 l!706) (ite c!123257 (Cons!28482 (h!29691 l!706) (t!42014 l!706)) Nil!28483)))))

(declare-fun b!1265378 () Bool)

(assert (=> b!1265378 (= c!123257 (and (is-Cons!28482 l!706) (bvsgt (_1!10663 (h!29691 l!706)) key1!31)))))

(assert (=> b!1265378 (= e!720642 e!720641)))

(assert (= (and d!138833 c!123256) b!1265370))

(assert (= (and d!138833 (not c!123256)) b!1265371))

(assert (= (and b!1265371 c!123255) b!1265373))

(assert (= (and b!1265371 (not c!123255)) b!1265378))

(assert (= (and b!1265378 c!123257) b!1265376))

(assert (= (and b!1265378 (not c!123257)) b!1265369))

(assert (= (or b!1265376 b!1265369) bm!62411))

(assert (= (or b!1265373 bm!62411) bm!62410))

(assert (= (or b!1265370 bm!62410) bm!62412))

(assert (= (and bm!62412 c!123258) b!1265375))

(assert (= (and bm!62412 (not c!123258)) b!1265377))

(assert (= (and d!138833 res!842601) b!1265374))

(assert (= (and b!1265374 res!842600) b!1265372))

(declare-fun m!1165569 () Bool)

(assert (=> b!1265374 m!1165569))

(declare-fun m!1165571 () Bool)

(assert (=> d!138833 m!1165571))

(assert (=> d!138833 m!1165539))

(declare-fun m!1165573 () Bool)

(assert (=> b!1265372 m!1165573))

(declare-fun m!1165575 () Bool)

(assert (=> b!1265375 m!1165575))

(declare-fun m!1165577 () Bool)

(assert (=> bm!62412 m!1165577))

(assert (=> b!1265263 d!138833))

(declare-fun b!1265401 () Bool)

(declare-fun e!720661 () Bool)

(declare-fun tp!96330 () Bool)

(assert (=> b!1265401 (= e!720661 (and tp_is_empty!32501 tp!96330))))

(assert (=> b!1265264 (= tp!96327 e!720661)))

(assert (= (and b!1265264 (is-Cons!28482 (t!42014 l!706))) b!1265401))

(push 1)

