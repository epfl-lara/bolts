; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75280 () Bool)

(assert start!75280)

(declare-fun res!601885 () Bool)

(declare-fun e!493492 () Bool)

(assert (=> start!75280 (=> (not res!601885) (not e!493492))))

(declare-datatypes ((B!1306 0))(
  ( (B!1307 (val!8959 Int)) )
))
(declare-datatypes ((tuple2!11938 0))(
  ( (tuple2!11939 (_1!5979 (_ BitVec 64)) (_2!5979 B!1306)) )
))
(declare-datatypes ((List!17759 0))(
  ( (Nil!17756) (Cons!17755 (h!18886 tuple2!11938) (t!25047 List!17759)) )
))
(declare-fun l!906 () List!17759)

(declare-fun isStrictlySorted!489 (List!17759) Bool)

(assert (=> start!75280 (= res!601885 (isStrictlySorted!489 l!906))))

(assert (=> start!75280 e!493492))

(declare-fun e!493493 () Bool)

(assert (=> start!75280 e!493493))

(assert (=> start!75280 true))

(declare-fun tp_is_empty!17817 () Bool)

(assert (=> start!75280 tp_is_empty!17817))

(declare-fun b!886451 () Bool)

(declare-fun res!601886 () Bool)

(assert (=> b!886451 (=> (not res!601886) (not e!493492))))

(declare-fun key1!49 () (_ BitVec 64))

(get-info :version)

(assert (=> b!886451 (= res!601886 (or (not ((_ is Cons!17755) l!906)) (bvsge (_1!5979 (h!18886 l!906)) key1!49)))))

(declare-fun v2!16 () B!1306)

(declare-fun b!886452 () Bool)

(declare-fun v1!38 () B!1306)

(declare-fun insertStrictlySorted!301 (List!17759 (_ BitVec 64) B!1306) List!17759)

(assert (=> b!886452 (= e!493492 (not (= (insertStrictlySorted!301 (insertStrictlySorted!301 l!906 key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!301 l!906 key1!49 v2!16))))))

(declare-fun b!886453 () Bool)

(declare-fun tp!54390 () Bool)

(assert (=> b!886453 (= e!493493 (and tp_is_empty!17817 tp!54390))))

(assert (= (and start!75280 res!601885) b!886451))

(assert (= (and b!886451 res!601886) b!886452))

(assert (= (and start!75280 ((_ is Cons!17755) l!906)) b!886453))

(declare-fun m!826447 () Bool)

(assert (=> start!75280 m!826447))

(declare-fun m!826449 () Bool)

(assert (=> b!886452 m!826449))

(assert (=> b!886452 m!826449))

(declare-fun m!826451 () Bool)

(assert (=> b!886452 m!826451))

(declare-fun m!826453 () Bool)

(assert (=> b!886452 m!826453))

(check-sat (not b!886452) (not start!75280) (not b!886453) tp_is_empty!17817)
(check-sat)
(get-model)

(declare-fun bm!39268 () Bool)

(declare-fun call!39272 () List!17759)

(declare-fun call!39273 () List!17759)

(assert (=> bm!39268 (= call!39272 call!39273)))

(declare-fun b!886519 () Bool)

(declare-fun e!493538 () List!17759)

(assert (=> b!886519 (= e!493538 call!39272)))

(declare-fun b!886520 () Bool)

(declare-fun e!493537 () List!17759)

(assert (=> b!886520 (= e!493537 (insertStrictlySorted!301 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)) key1!49 v2!16))))

(declare-fun c!93459 () Bool)

(declare-fun b!886521 () Bool)

(declare-fun c!93460 () Bool)

(assert (=> b!886521 (= e!493537 (ite c!93459 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)) (ite c!93460 (Cons!17755 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38)) (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) Nil!17756)))))

(declare-fun b!886522 () Bool)

(declare-fun e!493536 () List!17759)

(declare-fun call!39271 () List!17759)

(assert (=> b!886522 (= e!493536 call!39271)))

(declare-fun d!109667 () Bool)

(declare-fun e!493535 () Bool)

(assert (=> d!109667 e!493535))

(declare-fun res!601909 () Bool)

(assert (=> d!109667 (=> (not res!601909) (not e!493535))))

(declare-fun lt!401095 () List!17759)

(assert (=> d!109667 (= res!601909 (isStrictlySorted!489 lt!401095))))

(declare-fun e!493534 () List!17759)

(assert (=> d!109667 (= lt!401095 e!493534)))

(declare-fun c!93457 () Bool)

(assert (=> d!109667 (= c!93457 (and ((_ is Cons!17755) (insertStrictlySorted!301 l!906 key1!49 v1!38)) (bvslt (_1!5979 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> d!109667 (isStrictlySorted!489 (insertStrictlySorted!301 l!906 key1!49 v1!38))))

(assert (=> d!109667 (= (insertStrictlySorted!301 (insertStrictlySorted!301 l!906 key1!49 v1!38) key1!49 v2!16) lt!401095)))

(declare-fun b!886523 () Bool)

(assert (=> b!886523 (= e!493534 call!39273)))

(declare-fun bm!39269 () Bool)

(declare-fun $colon$colon!550 (List!17759 tuple2!11938) List!17759)

(assert (=> bm!39269 (= call!39273 ($colon$colon!550 e!493537 (ite c!93457 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38)) (tuple2!11939 key1!49 v2!16))))))

(declare-fun c!93458 () Bool)

(assert (=> bm!39269 (= c!93458 c!93457)))

(declare-fun b!886524 () Bool)

(assert (=> b!886524 (= e!493536 call!39271)))

(declare-fun b!886525 () Bool)

(assert (=> b!886525 (= c!93460 (and ((_ is Cons!17755) (insertStrictlySorted!301 l!906 key1!49 v1!38)) (bvsgt (_1!5979 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> b!886525 (= e!493538 e!493536)))

(declare-fun b!886526 () Bool)

(declare-fun res!601910 () Bool)

(assert (=> b!886526 (=> (not res!601910) (not e!493535))))

(declare-fun containsKey!415 (List!17759 (_ BitVec 64)) Bool)

(assert (=> b!886526 (= res!601910 (containsKey!415 lt!401095 key1!49))))

(declare-fun b!886527 () Bool)

(declare-fun contains!4294 (List!17759 tuple2!11938) Bool)

(assert (=> b!886527 (= e!493535 (contains!4294 lt!401095 (tuple2!11939 key1!49 v2!16)))))

(declare-fun b!886528 () Bool)

(assert (=> b!886528 (= e!493534 e!493538)))

(assert (=> b!886528 (= c!93459 (and ((_ is Cons!17755) (insertStrictlySorted!301 l!906 key1!49 v1!38)) (= (_1!5979 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun bm!39270 () Bool)

(assert (=> bm!39270 (= call!39271 call!39272)))

(assert (= (and d!109667 c!93457) b!886523))

(assert (= (and d!109667 (not c!93457)) b!886528))

(assert (= (and b!886528 c!93459) b!886519))

(assert (= (and b!886528 (not c!93459)) b!886525))

(assert (= (and b!886525 c!93460) b!886524))

(assert (= (and b!886525 (not c!93460)) b!886522))

(assert (= (or b!886524 b!886522) bm!39270))

(assert (= (or b!886519 bm!39270) bm!39268))

(assert (= (or b!886523 bm!39268) bm!39269))

(assert (= (and bm!39269 c!93458) b!886520))

(assert (= (and bm!39269 (not c!93458)) b!886521))

(assert (= (and d!109667 res!601909) b!886526))

(assert (= (and b!886526 res!601910) b!886527))

(declare-fun m!826467 () Bool)

(assert (=> b!886526 m!826467))

(declare-fun m!826469 () Bool)

(assert (=> b!886527 m!826469))

(declare-fun m!826471 () Bool)

(assert (=> b!886520 m!826471))

(declare-fun m!826473 () Bool)

(assert (=> d!109667 m!826473))

(assert (=> d!109667 m!826449))

(declare-fun m!826475 () Bool)

(assert (=> d!109667 m!826475))

(declare-fun m!826477 () Bool)

(assert (=> bm!39269 m!826477))

(assert (=> b!886452 d!109667))

(declare-fun bm!39275 () Bool)

(declare-fun call!39279 () List!17759)

(declare-fun call!39280 () List!17759)

(assert (=> bm!39275 (= call!39279 call!39280)))

(declare-fun b!886537 () Bool)

(declare-fun e!493547 () List!17759)

(assert (=> b!886537 (= e!493547 call!39279)))

(declare-fun e!493546 () List!17759)

(declare-fun b!886538 () Bool)

(assert (=> b!886538 (= e!493546 (insertStrictlySorted!301 (t!25047 l!906) key1!49 v1!38))))

(declare-fun c!93468 () Bool)

(declare-fun c!93467 () Bool)

(declare-fun b!886539 () Bool)

(assert (=> b!886539 (= e!493546 (ite c!93467 (t!25047 l!906) (ite c!93468 (Cons!17755 (h!18886 l!906) (t!25047 l!906)) Nil!17756)))))

(declare-fun b!886540 () Bool)

(declare-fun e!493545 () List!17759)

(declare-fun call!39278 () List!17759)

(assert (=> b!886540 (= e!493545 call!39278)))

(declare-fun d!109677 () Bool)

(declare-fun e!493544 () Bool)

(assert (=> d!109677 e!493544))

(declare-fun res!601911 () Bool)

(assert (=> d!109677 (=> (not res!601911) (not e!493544))))

(declare-fun lt!401096 () List!17759)

(assert (=> d!109677 (= res!601911 (isStrictlySorted!489 lt!401096))))

(declare-fun e!493543 () List!17759)

(assert (=> d!109677 (= lt!401096 e!493543)))

(declare-fun c!93465 () Bool)

(assert (=> d!109677 (= c!93465 (and ((_ is Cons!17755) l!906) (bvslt (_1!5979 (h!18886 l!906)) key1!49)))))

(assert (=> d!109677 (isStrictlySorted!489 l!906)))

(assert (=> d!109677 (= (insertStrictlySorted!301 l!906 key1!49 v1!38) lt!401096)))

(declare-fun b!886541 () Bool)

(assert (=> b!886541 (= e!493543 call!39280)))

(declare-fun bm!39276 () Bool)

(assert (=> bm!39276 (= call!39280 ($colon$colon!550 e!493546 (ite c!93465 (h!18886 l!906) (tuple2!11939 key1!49 v1!38))))))

(declare-fun c!93466 () Bool)

(assert (=> bm!39276 (= c!93466 c!93465)))

(declare-fun b!886542 () Bool)

(assert (=> b!886542 (= e!493545 call!39278)))

(declare-fun b!886543 () Bool)

(assert (=> b!886543 (= c!93468 (and ((_ is Cons!17755) l!906) (bvsgt (_1!5979 (h!18886 l!906)) key1!49)))))

(assert (=> b!886543 (= e!493547 e!493545)))

(declare-fun b!886544 () Bool)

(declare-fun res!601912 () Bool)

(assert (=> b!886544 (=> (not res!601912) (not e!493544))))

(assert (=> b!886544 (= res!601912 (containsKey!415 lt!401096 key1!49))))

(declare-fun b!886545 () Bool)

(assert (=> b!886545 (= e!493544 (contains!4294 lt!401096 (tuple2!11939 key1!49 v1!38)))))

(declare-fun b!886546 () Bool)

(assert (=> b!886546 (= e!493543 e!493547)))

(assert (=> b!886546 (= c!93467 (and ((_ is Cons!17755) l!906) (= (_1!5979 (h!18886 l!906)) key1!49)))))

(declare-fun bm!39277 () Bool)

(assert (=> bm!39277 (= call!39278 call!39279)))

(assert (= (and d!109677 c!93465) b!886541))

(assert (= (and d!109677 (not c!93465)) b!886546))

(assert (= (and b!886546 c!93467) b!886537))

(assert (= (and b!886546 (not c!93467)) b!886543))

(assert (= (and b!886543 c!93468) b!886542))

(assert (= (and b!886543 (not c!93468)) b!886540))

(assert (= (or b!886542 b!886540) bm!39277))

(assert (= (or b!886537 bm!39277) bm!39275))

(assert (= (or b!886541 bm!39275) bm!39276))

(assert (= (and bm!39276 c!93466) b!886538))

(assert (= (and bm!39276 (not c!93466)) b!886539))

(assert (= (and d!109677 res!601911) b!886544))

(assert (= (and b!886544 res!601912) b!886545))

(declare-fun m!826479 () Bool)

(assert (=> b!886544 m!826479))

(declare-fun m!826481 () Bool)

(assert (=> b!886545 m!826481))

(declare-fun m!826483 () Bool)

(assert (=> b!886538 m!826483))

(declare-fun m!826485 () Bool)

(assert (=> d!109677 m!826485))

(assert (=> d!109677 m!826447))

(declare-fun m!826487 () Bool)

(assert (=> bm!39276 m!826487))

(assert (=> b!886452 d!109677))

(declare-fun bm!39278 () Bool)

(declare-fun call!39282 () List!17759)

(declare-fun call!39283 () List!17759)

(assert (=> bm!39278 (= call!39282 call!39283)))

(declare-fun b!886555 () Bool)

(declare-fun e!493556 () List!17759)

(assert (=> b!886555 (= e!493556 call!39282)))

(declare-fun b!886556 () Bool)

(declare-fun e!493555 () List!17759)

(assert (=> b!886556 (= e!493555 (insertStrictlySorted!301 (t!25047 l!906) key1!49 v2!16))))

(declare-fun b!886557 () Bool)

(declare-fun c!93471 () Bool)

(declare-fun c!93472 () Bool)

(assert (=> b!886557 (= e!493555 (ite c!93471 (t!25047 l!906) (ite c!93472 (Cons!17755 (h!18886 l!906) (t!25047 l!906)) Nil!17756)))))

(declare-fun b!886558 () Bool)

(declare-fun e!493554 () List!17759)

(declare-fun call!39281 () List!17759)

(assert (=> b!886558 (= e!493554 call!39281)))

(declare-fun d!109679 () Bool)

(declare-fun e!493553 () Bool)

(assert (=> d!109679 e!493553))

(declare-fun res!601921 () Bool)

(assert (=> d!109679 (=> (not res!601921) (not e!493553))))

(declare-fun lt!401097 () List!17759)

(assert (=> d!109679 (= res!601921 (isStrictlySorted!489 lt!401097))))

(declare-fun e!493552 () List!17759)

(assert (=> d!109679 (= lt!401097 e!493552)))

(declare-fun c!93469 () Bool)

(assert (=> d!109679 (= c!93469 (and ((_ is Cons!17755) l!906) (bvslt (_1!5979 (h!18886 l!906)) key1!49)))))

(assert (=> d!109679 (isStrictlySorted!489 l!906)))

(assert (=> d!109679 (= (insertStrictlySorted!301 l!906 key1!49 v2!16) lt!401097)))

(declare-fun b!886559 () Bool)

(assert (=> b!886559 (= e!493552 call!39283)))

(declare-fun bm!39279 () Bool)

(assert (=> bm!39279 (= call!39283 ($colon$colon!550 e!493555 (ite c!93469 (h!18886 l!906) (tuple2!11939 key1!49 v2!16))))))

(declare-fun c!93470 () Bool)

(assert (=> bm!39279 (= c!93470 c!93469)))

(declare-fun b!886560 () Bool)

(assert (=> b!886560 (= e!493554 call!39281)))

(declare-fun b!886561 () Bool)

(assert (=> b!886561 (= c!93472 (and ((_ is Cons!17755) l!906) (bvsgt (_1!5979 (h!18886 l!906)) key1!49)))))

(assert (=> b!886561 (= e!493556 e!493554)))

(declare-fun b!886562 () Bool)

(declare-fun res!601922 () Bool)

(assert (=> b!886562 (=> (not res!601922) (not e!493553))))

(assert (=> b!886562 (= res!601922 (containsKey!415 lt!401097 key1!49))))

(declare-fun b!886563 () Bool)

(assert (=> b!886563 (= e!493553 (contains!4294 lt!401097 (tuple2!11939 key1!49 v2!16)))))

(declare-fun b!886564 () Bool)

(assert (=> b!886564 (= e!493552 e!493556)))

(assert (=> b!886564 (= c!93471 (and ((_ is Cons!17755) l!906) (= (_1!5979 (h!18886 l!906)) key1!49)))))

(declare-fun bm!39280 () Bool)

(assert (=> bm!39280 (= call!39281 call!39282)))

(assert (= (and d!109679 c!93469) b!886559))

(assert (= (and d!109679 (not c!93469)) b!886564))

(assert (= (and b!886564 c!93471) b!886555))

(assert (= (and b!886564 (not c!93471)) b!886561))

(assert (= (and b!886561 c!93472) b!886560))

(assert (= (and b!886561 (not c!93472)) b!886558))

(assert (= (or b!886560 b!886558) bm!39280))

(assert (= (or b!886555 bm!39280) bm!39278))

(assert (= (or b!886559 bm!39278) bm!39279))

(assert (= (and bm!39279 c!93470) b!886556))

(assert (= (and bm!39279 (not c!93470)) b!886557))

(assert (= (and d!109679 res!601921) b!886562))

(assert (= (and b!886562 res!601922) b!886563))

(declare-fun m!826489 () Bool)

(assert (=> b!886562 m!826489))

(declare-fun m!826491 () Bool)

(assert (=> b!886563 m!826491))

(declare-fun m!826493 () Bool)

(assert (=> b!886556 m!826493))

(declare-fun m!826495 () Bool)

(assert (=> d!109679 m!826495))

(assert (=> d!109679 m!826447))

(declare-fun m!826497 () Bool)

(assert (=> bm!39279 m!826497))

(assert (=> b!886452 d!109679))

(declare-fun d!109681 () Bool)

(declare-fun res!601933 () Bool)

(declare-fun e!493576 () Bool)

(assert (=> d!109681 (=> res!601933 e!493576)))

(assert (=> d!109681 (= res!601933 (or ((_ is Nil!17756) l!906) ((_ is Nil!17756) (t!25047 l!906))))))

(assert (=> d!109681 (= (isStrictlySorted!489 l!906) e!493576)))

(declare-fun b!886599 () Bool)

(declare-fun e!493577 () Bool)

(assert (=> b!886599 (= e!493576 e!493577)))

(declare-fun res!601934 () Bool)

(assert (=> b!886599 (=> (not res!601934) (not e!493577))))

(assert (=> b!886599 (= res!601934 (bvslt (_1!5979 (h!18886 l!906)) (_1!5979 (h!18886 (t!25047 l!906)))))))

(declare-fun b!886600 () Bool)

(assert (=> b!886600 (= e!493577 (isStrictlySorted!489 (t!25047 l!906)))))

(assert (= (and d!109681 (not res!601933)) b!886599))

(assert (= (and b!886599 res!601934) b!886600))

(declare-fun m!826523 () Bool)

(assert (=> b!886600 m!826523))

(assert (=> start!75280 d!109681))

(declare-fun b!886615 () Bool)

(declare-fun e!493585 () Bool)

(declare-fun tp!54396 () Bool)

(assert (=> b!886615 (= e!493585 (and tp_is_empty!17817 tp!54396))))

(assert (=> b!886453 (= tp!54390 e!493585)))

(assert (= (and b!886453 ((_ is Cons!17755) (t!25047 l!906))) b!886615))

(check-sat (not b!886527) (not b!886545) (not b!886556) (not b!886562) (not b!886600) (not b!886520) (not bm!39269) (not bm!39279) tp_is_empty!17817 (not d!109667) (not b!886526) (not b!886563) (not b!886615) (not d!109679) (not b!886544) (not bm!39276) (not b!886538) (not d!109677))
(check-sat)
(get-model)

(declare-fun d!109691 () Bool)

(declare-fun res!601945 () Bool)

(declare-fun e!493606 () Bool)

(assert (=> d!109691 (=> res!601945 e!493606)))

(assert (=> d!109691 (= res!601945 (and ((_ is Cons!17755) lt!401095) (= (_1!5979 (h!18886 lt!401095)) key1!49)))))

(assert (=> d!109691 (= (containsKey!415 lt!401095 key1!49) e!493606)))

(declare-fun b!886650 () Bool)

(declare-fun e!493607 () Bool)

(assert (=> b!886650 (= e!493606 e!493607)))

(declare-fun res!601946 () Bool)

(assert (=> b!886650 (=> (not res!601946) (not e!493607))))

(assert (=> b!886650 (= res!601946 (and (or (not ((_ is Cons!17755) lt!401095)) (bvsle (_1!5979 (h!18886 lt!401095)) key1!49)) ((_ is Cons!17755) lt!401095) (bvslt (_1!5979 (h!18886 lt!401095)) key1!49)))))

(declare-fun b!886651 () Bool)

(assert (=> b!886651 (= e!493607 (containsKey!415 (t!25047 lt!401095) key1!49))))

(assert (= (and d!109691 (not res!601945)) b!886650))

(assert (= (and b!886650 res!601946) b!886651))

(declare-fun m!826565 () Bool)

(assert (=> b!886651 m!826565))

(assert (=> b!886526 d!109691))

(declare-fun lt!401106 () Bool)

(declare-fun d!109693 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!399 (List!17759) (InoxSet tuple2!11938))

(assert (=> d!109693 (= lt!401106 (select (content!399 lt!401097) (tuple2!11939 key1!49 v2!16)))))

(declare-fun e!493612 () Bool)

(assert (=> d!109693 (= lt!401106 e!493612)))

(declare-fun res!601952 () Bool)

(assert (=> d!109693 (=> (not res!601952) (not e!493612))))

(assert (=> d!109693 (= res!601952 ((_ is Cons!17755) lt!401097))))

(assert (=> d!109693 (= (contains!4294 lt!401097 (tuple2!11939 key1!49 v2!16)) lt!401106)))

(declare-fun b!886656 () Bool)

(declare-fun e!493613 () Bool)

(assert (=> b!886656 (= e!493612 e!493613)))

(declare-fun res!601951 () Bool)

(assert (=> b!886656 (=> res!601951 e!493613)))

(assert (=> b!886656 (= res!601951 (= (h!18886 lt!401097) (tuple2!11939 key1!49 v2!16)))))

(declare-fun b!886657 () Bool)

(assert (=> b!886657 (= e!493613 (contains!4294 (t!25047 lt!401097) (tuple2!11939 key1!49 v2!16)))))

(assert (= (and d!109693 res!601952) b!886656))

(assert (= (and b!886656 (not res!601951)) b!886657))

(declare-fun m!826567 () Bool)

(assert (=> d!109693 m!826567))

(declare-fun m!826569 () Bool)

(assert (=> d!109693 m!826569))

(declare-fun m!826571 () Bool)

(assert (=> b!886657 m!826571))

(assert (=> b!886563 d!109693))

(declare-fun d!109695 () Bool)

(assert (=> d!109695 (= ($colon$colon!550 e!493546 (ite c!93465 (h!18886 l!906) (tuple2!11939 key1!49 v1!38))) (Cons!17755 (ite c!93465 (h!18886 l!906) (tuple2!11939 key1!49 v1!38)) e!493546))))

(assert (=> bm!39276 d!109695))

(declare-fun d!109697 () Bool)

(declare-fun res!601953 () Bool)

(declare-fun e!493614 () Bool)

(assert (=> d!109697 (=> res!601953 e!493614)))

(assert (=> d!109697 (= res!601953 (or ((_ is Nil!17756) lt!401096) ((_ is Nil!17756) (t!25047 lt!401096))))))

(assert (=> d!109697 (= (isStrictlySorted!489 lt!401096) e!493614)))

(declare-fun b!886658 () Bool)

(declare-fun e!493615 () Bool)

(assert (=> b!886658 (= e!493614 e!493615)))

(declare-fun res!601954 () Bool)

(assert (=> b!886658 (=> (not res!601954) (not e!493615))))

(assert (=> b!886658 (= res!601954 (bvslt (_1!5979 (h!18886 lt!401096)) (_1!5979 (h!18886 (t!25047 lt!401096)))))))

(declare-fun b!886659 () Bool)

(assert (=> b!886659 (= e!493615 (isStrictlySorted!489 (t!25047 lt!401096)))))

(assert (= (and d!109697 (not res!601953)) b!886658))

(assert (= (and b!886658 res!601954) b!886659))

(declare-fun m!826573 () Bool)

(assert (=> b!886659 m!826573))

(assert (=> d!109677 d!109697))

(assert (=> d!109677 d!109681))

(declare-fun d!109699 () Bool)

(declare-fun res!601955 () Bool)

(declare-fun e!493616 () Bool)

(assert (=> d!109699 (=> res!601955 e!493616)))

(assert (=> d!109699 (= res!601955 (and ((_ is Cons!17755) lt!401097) (= (_1!5979 (h!18886 lt!401097)) key1!49)))))

(assert (=> d!109699 (= (containsKey!415 lt!401097 key1!49) e!493616)))

(declare-fun b!886660 () Bool)

(declare-fun e!493617 () Bool)

(assert (=> b!886660 (= e!493616 e!493617)))

(declare-fun res!601956 () Bool)

(assert (=> b!886660 (=> (not res!601956) (not e!493617))))

(assert (=> b!886660 (= res!601956 (and (or (not ((_ is Cons!17755) lt!401097)) (bvsle (_1!5979 (h!18886 lt!401097)) key1!49)) ((_ is Cons!17755) lt!401097) (bvslt (_1!5979 (h!18886 lt!401097)) key1!49)))))

(declare-fun b!886661 () Bool)

(assert (=> b!886661 (= e!493617 (containsKey!415 (t!25047 lt!401097) key1!49))))

(assert (= (and d!109699 (not res!601955)) b!886660))

(assert (= (and b!886660 res!601956) b!886661))

(declare-fun m!826575 () Bool)

(assert (=> b!886661 m!826575))

(assert (=> b!886562 d!109699))

(declare-fun d!109701 () Bool)

(declare-fun res!601957 () Bool)

(declare-fun e!493618 () Bool)

(assert (=> d!109701 (=> res!601957 e!493618)))

(assert (=> d!109701 (= res!601957 (or ((_ is Nil!17756) (t!25047 l!906)) ((_ is Nil!17756) (t!25047 (t!25047 l!906)))))))

(assert (=> d!109701 (= (isStrictlySorted!489 (t!25047 l!906)) e!493618)))

(declare-fun b!886662 () Bool)

(declare-fun e!493619 () Bool)

(assert (=> b!886662 (= e!493618 e!493619)))

(declare-fun res!601958 () Bool)

(assert (=> b!886662 (=> (not res!601958) (not e!493619))))

(assert (=> b!886662 (= res!601958 (bvslt (_1!5979 (h!18886 (t!25047 l!906))) (_1!5979 (h!18886 (t!25047 (t!25047 l!906))))))))

(declare-fun b!886663 () Bool)

(assert (=> b!886663 (= e!493619 (isStrictlySorted!489 (t!25047 (t!25047 l!906))))))

(assert (= (and d!109701 (not res!601957)) b!886662))

(assert (= (and b!886662 res!601958) b!886663))

(declare-fun m!826577 () Bool)

(assert (=> b!886663 m!826577))

(assert (=> b!886600 d!109701))

(declare-fun d!109703 () Bool)

(assert (=> d!109703 (= ($colon$colon!550 e!493537 (ite c!93457 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38)) (tuple2!11939 key1!49 v2!16))) (Cons!17755 (ite c!93457 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38)) (tuple2!11939 key1!49 v2!16)) e!493537))))

(assert (=> bm!39269 d!109703))

(declare-fun d!109705 () Bool)

(declare-fun res!601959 () Bool)

(declare-fun e!493620 () Bool)

(assert (=> d!109705 (=> res!601959 e!493620)))

(assert (=> d!109705 (= res!601959 (or ((_ is Nil!17756) lt!401095) ((_ is Nil!17756) (t!25047 lt!401095))))))

(assert (=> d!109705 (= (isStrictlySorted!489 lt!401095) e!493620)))

(declare-fun b!886664 () Bool)

(declare-fun e!493621 () Bool)

(assert (=> b!886664 (= e!493620 e!493621)))

(declare-fun res!601960 () Bool)

(assert (=> b!886664 (=> (not res!601960) (not e!493621))))

(assert (=> b!886664 (= res!601960 (bvslt (_1!5979 (h!18886 lt!401095)) (_1!5979 (h!18886 (t!25047 lt!401095)))))))

(declare-fun b!886665 () Bool)

(assert (=> b!886665 (= e!493621 (isStrictlySorted!489 (t!25047 lt!401095)))))

(assert (= (and d!109705 (not res!601959)) b!886664))

(assert (= (and b!886664 res!601960) b!886665))

(declare-fun m!826579 () Bool)

(assert (=> b!886665 m!826579))

(assert (=> d!109667 d!109705))

(declare-fun d!109707 () Bool)

(declare-fun res!601961 () Bool)

(declare-fun e!493622 () Bool)

(assert (=> d!109707 (=> res!601961 e!493622)))

(assert (=> d!109707 (= res!601961 (or ((_ is Nil!17756) (insertStrictlySorted!301 l!906 key1!49 v1!38)) ((_ is Nil!17756) (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)))))))

(assert (=> d!109707 (= (isStrictlySorted!489 (insertStrictlySorted!301 l!906 key1!49 v1!38)) e!493622)))

(declare-fun b!886666 () Bool)

(declare-fun e!493623 () Bool)

(assert (=> b!886666 (= e!493622 e!493623)))

(declare-fun res!601962 () Bool)

(assert (=> b!886666 (=> (not res!601962) (not e!493623))))

(assert (=> b!886666 (= res!601962 (bvslt (_1!5979 (h!18886 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (_1!5979 (h!18886 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))))))))

(declare-fun b!886667 () Bool)

(assert (=> b!886667 (= e!493623 (isStrictlySorted!489 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))))))

(assert (= (and d!109707 (not res!601961)) b!886666))

(assert (= (and b!886666 res!601962) b!886667))

(declare-fun m!826581 () Bool)

(assert (=> b!886667 m!826581))

(assert (=> d!109667 d!109707))

(declare-fun d!109709 () Bool)

(assert (=> d!109709 (= ($colon$colon!550 e!493555 (ite c!93469 (h!18886 l!906) (tuple2!11939 key1!49 v2!16))) (Cons!17755 (ite c!93469 (h!18886 l!906) (tuple2!11939 key1!49 v2!16)) e!493555))))

(assert (=> bm!39279 d!109709))

(declare-fun bm!39299 () Bool)

(declare-fun call!39303 () List!17759)

(declare-fun call!39304 () List!17759)

(assert (=> bm!39299 (= call!39303 call!39304)))

(declare-fun b!886668 () Bool)

(declare-fun e!493628 () List!17759)

(assert (=> b!886668 (= e!493628 call!39303)))

(declare-fun b!886669 () Bool)

(declare-fun e!493627 () List!17759)

(assert (=> b!886669 (= e!493627 (insertStrictlySorted!301 (t!25047 (t!25047 l!906)) key1!49 v1!38))))

(declare-fun b!886670 () Bool)

(declare-fun c!93499 () Bool)

(declare-fun c!93500 () Bool)

(assert (=> b!886670 (= e!493627 (ite c!93499 (t!25047 (t!25047 l!906)) (ite c!93500 (Cons!17755 (h!18886 (t!25047 l!906)) (t!25047 (t!25047 l!906))) Nil!17756)))))

(declare-fun b!886671 () Bool)

(declare-fun e!493626 () List!17759)

(declare-fun call!39302 () List!17759)

(assert (=> b!886671 (= e!493626 call!39302)))

(declare-fun d!109711 () Bool)

(declare-fun e!493625 () Bool)

(assert (=> d!109711 e!493625))

(declare-fun res!601963 () Bool)

(assert (=> d!109711 (=> (not res!601963) (not e!493625))))

(declare-fun lt!401107 () List!17759)

(assert (=> d!109711 (= res!601963 (isStrictlySorted!489 lt!401107))))

(declare-fun e!493624 () List!17759)

(assert (=> d!109711 (= lt!401107 e!493624)))

(declare-fun c!93497 () Bool)

(assert (=> d!109711 (= c!93497 (and ((_ is Cons!17755) (t!25047 l!906)) (bvslt (_1!5979 (h!18886 (t!25047 l!906))) key1!49)))))

(assert (=> d!109711 (isStrictlySorted!489 (t!25047 l!906))))

(assert (=> d!109711 (= (insertStrictlySorted!301 (t!25047 l!906) key1!49 v1!38) lt!401107)))

(declare-fun b!886672 () Bool)

(assert (=> b!886672 (= e!493624 call!39304)))

(declare-fun bm!39300 () Bool)

(assert (=> bm!39300 (= call!39304 ($colon$colon!550 e!493627 (ite c!93497 (h!18886 (t!25047 l!906)) (tuple2!11939 key1!49 v1!38))))))

(declare-fun c!93498 () Bool)

(assert (=> bm!39300 (= c!93498 c!93497)))

(declare-fun b!886673 () Bool)

(assert (=> b!886673 (= e!493626 call!39302)))

(declare-fun b!886674 () Bool)

(assert (=> b!886674 (= c!93500 (and ((_ is Cons!17755) (t!25047 l!906)) (bvsgt (_1!5979 (h!18886 (t!25047 l!906))) key1!49)))))

(assert (=> b!886674 (= e!493628 e!493626)))

(declare-fun b!886675 () Bool)

(declare-fun res!601964 () Bool)

(assert (=> b!886675 (=> (not res!601964) (not e!493625))))

(assert (=> b!886675 (= res!601964 (containsKey!415 lt!401107 key1!49))))

(declare-fun b!886676 () Bool)

(assert (=> b!886676 (= e!493625 (contains!4294 lt!401107 (tuple2!11939 key1!49 v1!38)))))

(declare-fun b!886677 () Bool)

(assert (=> b!886677 (= e!493624 e!493628)))

(assert (=> b!886677 (= c!93499 (and ((_ is Cons!17755) (t!25047 l!906)) (= (_1!5979 (h!18886 (t!25047 l!906))) key1!49)))))

(declare-fun bm!39301 () Bool)

(assert (=> bm!39301 (= call!39302 call!39303)))

(assert (= (and d!109711 c!93497) b!886672))

(assert (= (and d!109711 (not c!93497)) b!886677))

(assert (= (and b!886677 c!93499) b!886668))

(assert (= (and b!886677 (not c!93499)) b!886674))

(assert (= (and b!886674 c!93500) b!886673))

(assert (= (and b!886674 (not c!93500)) b!886671))

(assert (= (or b!886673 b!886671) bm!39301))

(assert (= (or b!886668 bm!39301) bm!39299))

(assert (= (or b!886672 bm!39299) bm!39300))

(assert (= (and bm!39300 c!93498) b!886669))

(assert (= (and bm!39300 (not c!93498)) b!886670))

(assert (= (and d!109711 res!601963) b!886675))

(assert (= (and b!886675 res!601964) b!886676))

(declare-fun m!826583 () Bool)

(assert (=> b!886675 m!826583))

(declare-fun m!826585 () Bool)

(assert (=> b!886676 m!826585))

(declare-fun m!826587 () Bool)

(assert (=> b!886669 m!826587))

(declare-fun m!826589 () Bool)

(assert (=> d!109711 m!826589))

(assert (=> d!109711 m!826523))

(declare-fun m!826591 () Bool)

(assert (=> bm!39300 m!826591))

(assert (=> b!886538 d!109711))

(declare-fun d!109713 () Bool)

(declare-fun res!601965 () Bool)

(declare-fun e!493629 () Bool)

(assert (=> d!109713 (=> res!601965 e!493629)))

(assert (=> d!109713 (= res!601965 (or ((_ is Nil!17756) lt!401097) ((_ is Nil!17756) (t!25047 lt!401097))))))

(assert (=> d!109713 (= (isStrictlySorted!489 lt!401097) e!493629)))

(declare-fun b!886678 () Bool)

(declare-fun e!493630 () Bool)

(assert (=> b!886678 (= e!493629 e!493630)))

(declare-fun res!601966 () Bool)

(assert (=> b!886678 (=> (not res!601966) (not e!493630))))

(assert (=> b!886678 (= res!601966 (bvslt (_1!5979 (h!18886 lt!401097)) (_1!5979 (h!18886 (t!25047 lt!401097)))))))

(declare-fun b!886679 () Bool)

(assert (=> b!886679 (= e!493630 (isStrictlySorted!489 (t!25047 lt!401097)))))

(assert (= (and d!109713 (not res!601965)) b!886678))

(assert (= (and b!886678 res!601966) b!886679))

(declare-fun m!826593 () Bool)

(assert (=> b!886679 m!826593))

(assert (=> d!109679 d!109713))

(assert (=> d!109679 d!109681))

(declare-fun bm!39302 () Bool)

(declare-fun call!39306 () List!17759)

(declare-fun call!39307 () List!17759)

(assert (=> bm!39302 (= call!39306 call!39307)))

(declare-fun b!886680 () Bool)

(declare-fun e!493635 () List!17759)

(assert (=> b!886680 (= e!493635 call!39306)))

(declare-fun e!493634 () List!17759)

(declare-fun b!886681 () Bool)

(assert (=> b!886681 (= e!493634 (insertStrictlySorted!301 (t!25047 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) key1!49 v2!16))))

(declare-fun c!93504 () Bool)

(declare-fun c!93503 () Bool)

(declare-fun b!886682 () Bool)

(assert (=> b!886682 (= e!493634 (ite c!93503 (t!25047 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (ite c!93504 (Cons!17755 (h!18886 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (t!25047 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)))) Nil!17756)))))

(declare-fun b!886683 () Bool)

(declare-fun e!493633 () List!17759)

(declare-fun call!39305 () List!17759)

(assert (=> b!886683 (= e!493633 call!39305)))

(declare-fun d!109715 () Bool)

(declare-fun e!493632 () Bool)

(assert (=> d!109715 e!493632))

(declare-fun res!601967 () Bool)

(assert (=> d!109715 (=> (not res!601967) (not e!493632))))

(declare-fun lt!401108 () List!17759)

(assert (=> d!109715 (= res!601967 (isStrictlySorted!489 lt!401108))))

(declare-fun e!493631 () List!17759)

(assert (=> d!109715 (= lt!401108 e!493631)))

(declare-fun c!93501 () Bool)

(assert (=> d!109715 (= c!93501 (and ((_ is Cons!17755) (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (bvslt (_1!5979 (h!18886 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> d!109715 (isStrictlySorted!489 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)))))

(assert (=> d!109715 (= (insertStrictlySorted!301 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)) key1!49 v2!16) lt!401108)))

(declare-fun b!886684 () Bool)

(assert (=> b!886684 (= e!493631 call!39307)))

(declare-fun bm!39303 () Bool)

(assert (=> bm!39303 (= call!39307 ($colon$colon!550 e!493634 (ite c!93501 (h!18886 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (tuple2!11939 key1!49 v2!16))))))

(declare-fun c!93502 () Bool)

(assert (=> bm!39303 (= c!93502 c!93501)))

(declare-fun b!886685 () Bool)

(assert (=> b!886685 (= e!493633 call!39305)))

(declare-fun b!886686 () Bool)

(assert (=> b!886686 (= c!93504 (and ((_ is Cons!17755) (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (bvsgt (_1!5979 (h!18886 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> b!886686 (= e!493635 e!493633)))

(declare-fun b!886687 () Bool)

(declare-fun res!601968 () Bool)

(assert (=> b!886687 (=> (not res!601968) (not e!493632))))

(assert (=> b!886687 (= res!601968 (containsKey!415 lt!401108 key1!49))))

(declare-fun b!886688 () Bool)

(assert (=> b!886688 (= e!493632 (contains!4294 lt!401108 (tuple2!11939 key1!49 v2!16)))))

(declare-fun b!886689 () Bool)

(assert (=> b!886689 (= e!493631 e!493635)))

(assert (=> b!886689 (= c!93503 (and ((_ is Cons!17755) (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38))) (= (_1!5979 (h!18886 (t!25047 (insertStrictlySorted!301 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun bm!39304 () Bool)

(assert (=> bm!39304 (= call!39305 call!39306)))

(assert (= (and d!109715 c!93501) b!886684))

(assert (= (and d!109715 (not c!93501)) b!886689))

(assert (= (and b!886689 c!93503) b!886680))

(assert (= (and b!886689 (not c!93503)) b!886686))

(assert (= (and b!886686 c!93504) b!886685))

(assert (= (and b!886686 (not c!93504)) b!886683))

(assert (= (or b!886685 b!886683) bm!39304))

(assert (= (or b!886680 bm!39304) bm!39302))

(assert (= (or b!886684 bm!39302) bm!39303))

(assert (= (and bm!39303 c!93502) b!886681))

(assert (= (and bm!39303 (not c!93502)) b!886682))

(assert (= (and d!109715 res!601967) b!886687))

(assert (= (and b!886687 res!601968) b!886688))

(declare-fun m!826595 () Bool)

(assert (=> b!886687 m!826595))

(declare-fun m!826597 () Bool)

(assert (=> b!886688 m!826597))

(declare-fun m!826599 () Bool)

(assert (=> b!886681 m!826599))

(declare-fun m!826601 () Bool)

(assert (=> d!109715 m!826601))

(assert (=> d!109715 m!826581))

(declare-fun m!826603 () Bool)

(assert (=> bm!39303 m!826603))

(assert (=> b!886520 d!109715))

(declare-fun d!109717 () Bool)

(declare-fun lt!401109 () Bool)

(assert (=> d!109717 (= lt!401109 (select (content!399 lt!401096) (tuple2!11939 key1!49 v1!38)))))

(declare-fun e!493636 () Bool)

(assert (=> d!109717 (= lt!401109 e!493636)))

(declare-fun res!601970 () Bool)

(assert (=> d!109717 (=> (not res!601970) (not e!493636))))

(assert (=> d!109717 (= res!601970 ((_ is Cons!17755) lt!401096))))

(assert (=> d!109717 (= (contains!4294 lt!401096 (tuple2!11939 key1!49 v1!38)) lt!401109)))

(declare-fun b!886690 () Bool)

(declare-fun e!493637 () Bool)

(assert (=> b!886690 (= e!493636 e!493637)))

(declare-fun res!601969 () Bool)

(assert (=> b!886690 (=> res!601969 e!493637)))

(assert (=> b!886690 (= res!601969 (= (h!18886 lt!401096) (tuple2!11939 key1!49 v1!38)))))

(declare-fun b!886691 () Bool)

(assert (=> b!886691 (= e!493637 (contains!4294 (t!25047 lt!401096) (tuple2!11939 key1!49 v1!38)))))

(assert (= (and d!109717 res!601970) b!886690))

(assert (= (and b!886690 (not res!601969)) b!886691))

(declare-fun m!826605 () Bool)

(assert (=> d!109717 m!826605))

(declare-fun m!826607 () Bool)

(assert (=> d!109717 m!826607))

(declare-fun m!826609 () Bool)

(assert (=> b!886691 m!826609))

(assert (=> b!886545 d!109717))

(declare-fun d!109719 () Bool)

(declare-fun res!601971 () Bool)

(declare-fun e!493638 () Bool)

(assert (=> d!109719 (=> res!601971 e!493638)))

(assert (=> d!109719 (= res!601971 (and ((_ is Cons!17755) lt!401096) (= (_1!5979 (h!18886 lt!401096)) key1!49)))))

(assert (=> d!109719 (= (containsKey!415 lt!401096 key1!49) e!493638)))

(declare-fun b!886692 () Bool)

(declare-fun e!493639 () Bool)

(assert (=> b!886692 (= e!493638 e!493639)))

(declare-fun res!601972 () Bool)

(assert (=> b!886692 (=> (not res!601972) (not e!493639))))

(assert (=> b!886692 (= res!601972 (and (or (not ((_ is Cons!17755) lt!401096)) (bvsle (_1!5979 (h!18886 lt!401096)) key1!49)) ((_ is Cons!17755) lt!401096) (bvslt (_1!5979 (h!18886 lt!401096)) key1!49)))))

(declare-fun b!886693 () Bool)

(assert (=> b!886693 (= e!493639 (containsKey!415 (t!25047 lt!401096) key1!49))))

(assert (= (and d!109719 (not res!601971)) b!886692))

(assert (= (and b!886692 res!601972) b!886693))

(declare-fun m!826611 () Bool)

(assert (=> b!886693 m!826611))

(assert (=> b!886544 d!109719))

(declare-fun bm!39305 () Bool)

(declare-fun call!39309 () List!17759)

(declare-fun call!39310 () List!17759)

(assert (=> bm!39305 (= call!39309 call!39310)))

(declare-fun b!886694 () Bool)

(declare-fun e!493644 () List!17759)

(assert (=> b!886694 (= e!493644 call!39309)))

(declare-fun e!493643 () List!17759)

(declare-fun b!886695 () Bool)

(assert (=> b!886695 (= e!493643 (insertStrictlySorted!301 (t!25047 (t!25047 l!906)) key1!49 v2!16))))

(declare-fun c!93508 () Bool)

(declare-fun c!93507 () Bool)

(declare-fun b!886696 () Bool)

(assert (=> b!886696 (= e!493643 (ite c!93507 (t!25047 (t!25047 l!906)) (ite c!93508 (Cons!17755 (h!18886 (t!25047 l!906)) (t!25047 (t!25047 l!906))) Nil!17756)))))

(declare-fun b!886697 () Bool)

(declare-fun e!493642 () List!17759)

(declare-fun call!39308 () List!17759)

(assert (=> b!886697 (= e!493642 call!39308)))

(declare-fun d!109721 () Bool)

(declare-fun e!493641 () Bool)

(assert (=> d!109721 e!493641))

(declare-fun res!601973 () Bool)

(assert (=> d!109721 (=> (not res!601973) (not e!493641))))

(declare-fun lt!401110 () List!17759)

(assert (=> d!109721 (= res!601973 (isStrictlySorted!489 lt!401110))))

(declare-fun e!493640 () List!17759)

(assert (=> d!109721 (= lt!401110 e!493640)))

(declare-fun c!93505 () Bool)

(assert (=> d!109721 (= c!93505 (and ((_ is Cons!17755) (t!25047 l!906)) (bvslt (_1!5979 (h!18886 (t!25047 l!906))) key1!49)))))

(assert (=> d!109721 (isStrictlySorted!489 (t!25047 l!906))))

(assert (=> d!109721 (= (insertStrictlySorted!301 (t!25047 l!906) key1!49 v2!16) lt!401110)))

(declare-fun b!886698 () Bool)

(assert (=> b!886698 (= e!493640 call!39310)))

(declare-fun bm!39306 () Bool)

(assert (=> bm!39306 (= call!39310 ($colon$colon!550 e!493643 (ite c!93505 (h!18886 (t!25047 l!906)) (tuple2!11939 key1!49 v2!16))))))

(declare-fun c!93506 () Bool)

(assert (=> bm!39306 (= c!93506 c!93505)))

(declare-fun b!886699 () Bool)

(assert (=> b!886699 (= e!493642 call!39308)))

(declare-fun b!886700 () Bool)

(assert (=> b!886700 (= c!93508 (and ((_ is Cons!17755) (t!25047 l!906)) (bvsgt (_1!5979 (h!18886 (t!25047 l!906))) key1!49)))))

(assert (=> b!886700 (= e!493644 e!493642)))

(declare-fun b!886701 () Bool)

(declare-fun res!601974 () Bool)

(assert (=> b!886701 (=> (not res!601974) (not e!493641))))

(assert (=> b!886701 (= res!601974 (containsKey!415 lt!401110 key1!49))))

(declare-fun b!886702 () Bool)

(assert (=> b!886702 (= e!493641 (contains!4294 lt!401110 (tuple2!11939 key1!49 v2!16)))))

(declare-fun b!886703 () Bool)

(assert (=> b!886703 (= e!493640 e!493644)))

(assert (=> b!886703 (= c!93507 (and ((_ is Cons!17755) (t!25047 l!906)) (= (_1!5979 (h!18886 (t!25047 l!906))) key1!49)))))

(declare-fun bm!39307 () Bool)

(assert (=> bm!39307 (= call!39308 call!39309)))

(assert (= (and d!109721 c!93505) b!886698))

(assert (= (and d!109721 (not c!93505)) b!886703))

(assert (= (and b!886703 c!93507) b!886694))

(assert (= (and b!886703 (not c!93507)) b!886700))

(assert (= (and b!886700 c!93508) b!886699))

(assert (= (and b!886700 (not c!93508)) b!886697))

(assert (= (or b!886699 b!886697) bm!39307))

(assert (= (or b!886694 bm!39307) bm!39305))

(assert (= (or b!886698 bm!39305) bm!39306))

(assert (= (and bm!39306 c!93506) b!886695))

(assert (= (and bm!39306 (not c!93506)) b!886696))

(assert (= (and d!109721 res!601973) b!886701))

(assert (= (and b!886701 res!601974) b!886702))

(declare-fun m!826613 () Bool)

(assert (=> b!886701 m!826613))

(declare-fun m!826615 () Bool)

(assert (=> b!886702 m!826615))

(declare-fun m!826617 () Bool)

(assert (=> b!886695 m!826617))

(declare-fun m!826619 () Bool)

(assert (=> d!109721 m!826619))

(assert (=> d!109721 m!826523))

(declare-fun m!826621 () Bool)

(assert (=> bm!39306 m!826621))

(assert (=> b!886556 d!109721))

(declare-fun lt!401111 () Bool)

(declare-fun d!109723 () Bool)

(assert (=> d!109723 (= lt!401111 (select (content!399 lt!401095) (tuple2!11939 key1!49 v2!16)))))

(declare-fun e!493645 () Bool)

(assert (=> d!109723 (= lt!401111 e!493645)))

(declare-fun res!601976 () Bool)

(assert (=> d!109723 (=> (not res!601976) (not e!493645))))

(assert (=> d!109723 (= res!601976 ((_ is Cons!17755) lt!401095))))

(assert (=> d!109723 (= (contains!4294 lt!401095 (tuple2!11939 key1!49 v2!16)) lt!401111)))

(declare-fun b!886704 () Bool)

(declare-fun e!493646 () Bool)

(assert (=> b!886704 (= e!493645 e!493646)))

(declare-fun res!601975 () Bool)

(assert (=> b!886704 (=> res!601975 e!493646)))

(assert (=> b!886704 (= res!601975 (= (h!18886 lt!401095) (tuple2!11939 key1!49 v2!16)))))

(declare-fun b!886705 () Bool)

(assert (=> b!886705 (= e!493646 (contains!4294 (t!25047 lt!401095) (tuple2!11939 key1!49 v2!16)))))

(assert (= (and d!109723 res!601976) b!886704))

(assert (= (and b!886704 (not res!601975)) b!886705))

(declare-fun m!826623 () Bool)

(assert (=> d!109723 m!826623))

(declare-fun m!826625 () Bool)

(assert (=> d!109723 m!826625))

(declare-fun m!826627 () Bool)

(assert (=> b!886705 m!826627))

(assert (=> b!886527 d!109723))

(declare-fun b!886706 () Bool)

(declare-fun e!493647 () Bool)

(declare-fun tp!54403 () Bool)

(assert (=> b!886706 (= e!493647 (and tp_is_empty!17817 tp!54403))))

(assert (=> b!886615 (= tp!54396 e!493647)))

(assert (= (and b!886615 ((_ is Cons!17755) (t!25047 (t!25047 l!906)))) b!886706))

(check-sat (not b!886706) (not b!886687) (not bm!39306) (not b!886676) (not b!886693) (not b!886675) (not b!886663) (not b!886679) (not b!886661) (not b!886665) (not b!886669) (not b!886667) (not b!886651) (not b!886659) (not b!886702) (not b!886695) (not d!109711) (not d!109693) (not b!886688) (not b!886705) (not d!109723) (not bm!39303) (not b!886681) (not b!886701) (not d!109717) (not b!886691) (not b!886657) tp_is_empty!17817 (not d!109721) (not d!109715) (not bm!39300))
(check-sat)
