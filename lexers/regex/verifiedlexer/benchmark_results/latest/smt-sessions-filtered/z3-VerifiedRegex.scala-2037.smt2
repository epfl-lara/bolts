; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104066 () Bool)

(assert start!104066)

(declare-fun e!755560 () Bool)

(declare-fun j!89 () Int)

(declare-datatypes ((B!1261 0))(
  ( (B!1262 (val!3740 Int)) )
))
(declare-datatypes ((List!11687 0))(
  ( (Nil!11663) (Cons!11663 (h!17064 B!1261) (t!111179 List!11687)) )
))
(declare-fun l!2952 () List!11687)

(declare-fun b!1177419 () Bool)

(declare-fun i!757 () Int)

(declare-fun subseq!289 (List!11687 List!11687) Bool)

(declare-fun slice!387 (List!11687 Int Int) List!11687)

(assert (=> b!1177419 (= e!755560 (not (subseq!289 (slice!387 l!2952 i!757 j!89) l!2952)))))

(assert (=> b!1177419 (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 l!2952))))

(declare-datatypes ((Unit!18002 0))(
  ( (Unit!18003) )
))
(declare-fun lt!406062 () Unit!18002)

(declare-fun lemmaSliceSubseq!126 (List!11687 Int Int) Unit!18002)

(assert (=> b!1177419 (= lt!406062 (lemmaSliceSubseq!126 (t!111179 l!2952) (- i!757 1) (- j!89 1)))))

(declare-fun b!1177420 () Bool)

(declare-fun res!532384 () Bool)

(assert (=> b!1177420 (=> (not res!532384) (not e!755560))))

(declare-fun size!9227 (List!11687) Int)

(assert (=> b!1177420 (= res!532384 (<= j!89 (size!9227 l!2952)))))

(declare-fun res!532387 () Bool)

(assert (=> start!104066 (=> (not res!532387) (not e!755560))))

(assert (=> start!104066 (= res!532387 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!104066 e!755560))

(assert (=> start!104066 true))

(declare-fun e!755561 () Bool)

(assert (=> start!104066 e!755561))

(declare-fun b!1177421 () Bool)

(declare-fun res!532386 () Bool)

(assert (=> b!1177421 (=> (not res!532386) (not e!755560))))

(get-info :version)

(assert (=> b!1177421 (= res!532386 (and (not ((_ is Nil!11663) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (> i!757 0) (>= (- i!757 1) 0) (>= (- j!89 1) (- i!757 1))))))

(declare-fun b!1177422 () Bool)

(declare-fun tp_is_empty!5783 () Bool)

(declare-fun tp!335196 () Bool)

(assert (=> b!1177422 (= e!755561 (and tp_is_empty!5783 tp!335196))))

(declare-fun b!1177423 () Bool)

(declare-fun res!532385 () Bool)

(assert (=> b!1177423 (=> (not res!532385) (not e!755560))))

(assert (=> b!1177423 (= res!532385 (<= (- j!89 1) (size!9227 (t!111179 l!2952))))))

(assert (= (and start!104066 res!532387) b!1177420))

(assert (= (and b!1177420 res!532384) b!1177421))

(assert (= (and b!1177421 res!532386) b!1177423))

(assert (= (and b!1177423 res!532385) b!1177419))

(assert (= (and start!104066 ((_ is Cons!11663) l!2952)) b!1177422))

(declare-fun m!1354511 () Bool)

(assert (=> b!1177419 m!1354511))

(assert (=> b!1177419 m!1354511))

(declare-fun m!1354513 () Bool)

(assert (=> b!1177419 m!1354513))

(declare-fun m!1354515 () Bool)

(assert (=> b!1177419 m!1354515))

(declare-fun m!1354517 () Bool)

(assert (=> b!1177419 m!1354517))

(assert (=> b!1177419 m!1354515))

(declare-fun m!1354519 () Bool)

(assert (=> b!1177419 m!1354519))

(declare-fun m!1354521 () Bool)

(assert (=> b!1177420 m!1354521))

(declare-fun m!1354523 () Bool)

(assert (=> b!1177423 m!1354523))

(check-sat tp_is_empty!5783 (not b!1177420) (not b!1177419) (not b!1177423) (not b!1177422))
(check-sat)
(get-model)

(declare-fun d!337280 () Bool)

(declare-fun lt!406065 () Int)

(assert (=> d!337280 (>= lt!406065 0)))

(declare-fun e!755564 () Int)

(assert (=> d!337280 (= lt!406065 e!755564)))

(declare-fun c!196244 () Bool)

(assert (=> d!337280 (= c!196244 ((_ is Nil!11663) l!2952))))

(assert (=> d!337280 (= (size!9227 l!2952) lt!406065)))

(declare-fun b!1177428 () Bool)

(assert (=> b!1177428 (= e!755564 0)))

(declare-fun b!1177429 () Bool)

(assert (=> b!1177429 (= e!755564 (+ 1 (size!9227 (t!111179 l!2952))))))

(assert (= (and d!337280 c!196244) b!1177428))

(assert (= (and d!337280 (not c!196244)) b!1177429))

(assert (=> b!1177429 m!1354523))

(assert (=> b!1177420 d!337280))

(declare-fun d!337282 () Bool)

(assert (=> d!337282 (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 l!2952))))

(declare-fun lt!406070 () Unit!18002)

(declare-fun choose!7632 (List!11687 Int Int) Unit!18002)

(assert (=> d!337282 (= lt!406070 (choose!7632 (t!111179 l!2952) (- i!757 1) (- j!89 1)))))

(declare-fun e!755569 () Bool)

(assert (=> d!337282 e!755569))

(declare-fun res!532392 () Bool)

(assert (=> d!337282 (=> (not res!532392) (not e!755569))))

(assert (=> d!337282 (= res!532392 (and (>= (- i!757 1) 0) (>= (- j!89 1) (- i!757 1))))))

(assert (=> d!337282 (= (lemmaSliceSubseq!126 (t!111179 l!2952) (- i!757 1) (- j!89 1)) lt!406070)))

(declare-fun b!1177434 () Bool)

(assert (=> b!1177434 (= e!755569 (<= (- j!89 1) (size!9227 (t!111179 l!2952))))))

(assert (= (and d!337282 res!532392) b!1177434))

(assert (=> d!337282 m!1354515))

(assert (=> d!337282 m!1354515))

(assert (=> d!337282 m!1354517))

(declare-fun m!1354525 () Bool)

(assert (=> d!337282 m!1354525))

(assert (=> b!1177434 m!1354523))

(assert (=> b!1177419 d!337282))

(declare-fun b!1177452 () Bool)

(declare-fun e!755590 () Bool)

(declare-fun e!755589 () Bool)

(assert (=> b!1177452 (= e!755590 e!755589)))

(declare-fun res!532411 () Bool)

(assert (=> b!1177452 (=> (not res!532411) (not e!755589))))

(assert (=> b!1177452 (= res!532411 ((_ is Cons!11663) (t!111179 l!2952)))))

(declare-fun b!1177453 () Bool)

(declare-fun e!755588 () Bool)

(assert (=> b!1177453 (= e!755589 e!755588)))

(declare-fun res!532413 () Bool)

(assert (=> b!1177453 (=> res!532413 e!755588)))

(declare-fun e!755587 () Bool)

(assert (=> b!1177453 (= res!532413 e!755587)))

(declare-fun res!532410 () Bool)

(assert (=> b!1177453 (=> (not res!532410) (not e!755587))))

(assert (=> b!1177453 (= res!532410 (= (h!17064 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))) (h!17064 (t!111179 l!2952))))))

(declare-fun d!337286 () Bool)

(declare-fun res!532412 () Bool)

(assert (=> d!337286 (=> res!532412 e!755590)))

(assert (=> d!337286 (= res!532412 ((_ is Nil!11663) (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))))))

(assert (=> d!337286 (= (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 l!2952)) e!755590)))

(declare-fun b!1177454 () Bool)

(assert (=> b!1177454 (= e!755587 (subseq!289 (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))) (t!111179 (t!111179 l!2952))))))

(declare-fun b!1177455 () Bool)

(assert (=> b!1177455 (= e!755588 (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 (t!111179 l!2952))))))

(assert (= (and d!337286 (not res!532412)) b!1177452))

(assert (= (and b!1177452 res!532411) b!1177453))

(assert (= (and b!1177453 res!532410) b!1177454))

(assert (= (and b!1177453 (not res!532413)) b!1177455))

(declare-fun m!1354529 () Bool)

(assert (=> b!1177454 m!1354529))

(assert (=> b!1177455 m!1354515))

(declare-fun m!1354531 () Bool)

(assert (=> b!1177455 m!1354531))

(assert (=> b!1177419 d!337286))

(declare-fun d!337290 () Bool)

(declare-fun take!94 (List!11687 Int) List!11687)

(declare-fun drop!506 (List!11687 Int) List!11687)

(assert (=> d!337290 (= (slice!387 l!2952 i!757 j!89) (take!94 (drop!506 l!2952 i!757) (- j!89 i!757)))))

(declare-fun bs!286734 () Bool)

(assert (= bs!286734 d!337290))

(declare-fun m!1354537 () Bool)

(assert (=> bs!286734 m!1354537))

(assert (=> bs!286734 m!1354537))

(declare-fun m!1354539 () Bool)

(assert (=> bs!286734 m!1354539))

(assert (=> b!1177419 d!337290))

(declare-fun b!1177460 () Bool)

(declare-fun e!755598 () Bool)

(declare-fun e!755597 () Bool)

(assert (=> b!1177460 (= e!755598 e!755597)))

(declare-fun res!532419 () Bool)

(assert (=> b!1177460 (=> (not res!532419) (not e!755597))))

(assert (=> b!1177460 (= res!532419 ((_ is Cons!11663) l!2952))))

(declare-fun b!1177461 () Bool)

(declare-fun e!755596 () Bool)

(assert (=> b!1177461 (= e!755597 e!755596)))

(declare-fun res!532421 () Bool)

(assert (=> b!1177461 (=> res!532421 e!755596)))

(declare-fun e!755595 () Bool)

(assert (=> b!1177461 (= res!532421 e!755595)))

(declare-fun res!532418 () Bool)

(assert (=> b!1177461 (=> (not res!532418) (not e!755595))))

(assert (=> b!1177461 (= res!532418 (= (h!17064 (slice!387 l!2952 i!757 j!89)) (h!17064 l!2952)))))

(declare-fun d!337294 () Bool)

(declare-fun res!532420 () Bool)

(assert (=> d!337294 (=> res!532420 e!755598)))

(assert (=> d!337294 (= res!532420 ((_ is Nil!11663) (slice!387 l!2952 i!757 j!89)))))

(assert (=> d!337294 (= (subseq!289 (slice!387 l!2952 i!757 j!89) l!2952) e!755598)))

(declare-fun b!1177462 () Bool)

(assert (=> b!1177462 (= e!755595 (subseq!289 (t!111179 (slice!387 l!2952 i!757 j!89)) (t!111179 l!2952)))))

(declare-fun b!1177463 () Bool)

(assert (=> b!1177463 (= e!755596 (subseq!289 (slice!387 l!2952 i!757 j!89) (t!111179 l!2952)))))

(assert (= (and d!337294 (not res!532420)) b!1177460))

(assert (= (and b!1177460 res!532419) b!1177461))

(assert (= (and b!1177461 res!532418) b!1177462))

(assert (= (and b!1177461 (not res!532421)) b!1177463))

(declare-fun m!1354541 () Bool)

(assert (=> b!1177462 m!1354541))

(assert (=> b!1177463 m!1354511))

(declare-fun m!1354543 () Bool)

(assert (=> b!1177463 m!1354543))

(assert (=> b!1177419 d!337294))

(declare-fun d!337296 () Bool)

(assert (=> d!337296 (= (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (take!94 (drop!506 (t!111179 l!2952) (- i!757 1)) (- (- j!89 1) (- i!757 1))))))

(declare-fun bs!286735 () Bool)

(assert (= bs!286735 d!337296))

(declare-fun m!1354545 () Bool)

(assert (=> bs!286735 m!1354545))

(assert (=> bs!286735 m!1354545))

(declare-fun m!1354547 () Bool)

(assert (=> bs!286735 m!1354547))

(assert (=> b!1177419 d!337296))

(declare-fun d!337298 () Bool)

(declare-fun lt!406072 () Int)

(assert (=> d!337298 (>= lt!406072 0)))

(declare-fun e!755599 () Int)

(assert (=> d!337298 (= lt!406072 e!755599)))

(declare-fun c!196245 () Bool)

(assert (=> d!337298 (= c!196245 ((_ is Nil!11663) (t!111179 l!2952)))))

(assert (=> d!337298 (= (size!9227 (t!111179 l!2952)) lt!406072)))

(declare-fun b!1177464 () Bool)

(assert (=> b!1177464 (= e!755599 0)))

(declare-fun b!1177465 () Bool)

(assert (=> b!1177465 (= e!755599 (+ 1 (size!9227 (t!111179 (t!111179 l!2952)))))))

(assert (= (and d!337298 c!196245) b!1177464))

(assert (= (and d!337298 (not c!196245)) b!1177465))

(declare-fun m!1354551 () Bool)

(assert (=> b!1177465 m!1354551))

(assert (=> b!1177423 d!337298))

(declare-fun b!1177474 () Bool)

(declare-fun e!755606 () Bool)

(declare-fun tp!335199 () Bool)

(assert (=> b!1177474 (= e!755606 (and tp_is_empty!5783 tp!335199))))

(assert (=> b!1177422 (= tp!335196 e!755606)))

(assert (= (and b!1177422 ((_ is Cons!11663) (t!111179 l!2952))) b!1177474))

(check-sat (not d!337290) tp_is_empty!5783 (not d!337296) (not d!337282) (not b!1177462) (not b!1177465) (not b!1177455) (not b!1177429) (not b!1177454) (not b!1177434) (not b!1177474) (not b!1177463))
(check-sat)
(get-model)

(declare-fun d!337308 () Bool)

(declare-fun lt!406077 () Int)

(assert (=> d!337308 (>= lt!406077 0)))

(declare-fun e!755614 () Int)

(assert (=> d!337308 (= lt!406077 e!755614)))

(declare-fun c!196250 () Bool)

(assert (=> d!337308 (= c!196250 ((_ is Nil!11663) (t!111179 (t!111179 l!2952))))))

(assert (=> d!337308 (= (size!9227 (t!111179 (t!111179 l!2952))) lt!406077)))

(declare-fun b!1177488 () Bool)

(assert (=> b!1177488 (= e!755614 0)))

(declare-fun b!1177489 () Bool)

(assert (=> b!1177489 (= e!755614 (+ 1 (size!9227 (t!111179 (t!111179 (t!111179 l!2952))))))))

(assert (= (and d!337308 c!196250) b!1177488))

(assert (= (and d!337308 (not c!196250)) b!1177489))

(declare-fun m!1354565 () Bool)

(assert (=> b!1177489 m!1354565))

(assert (=> b!1177465 d!337308))

(declare-fun e!755625 () List!11687)

(declare-fun b!1177504 () Bool)

(assert (=> b!1177504 (= e!755625 (Cons!11663 (h!17064 (drop!506 l!2952 i!757)) (take!94 (t!111179 (drop!506 l!2952 i!757)) (- (- j!89 i!757) 1))))))

(declare-fun b!1177505 () Bool)

(declare-fun e!755623 () Bool)

(declare-fun lt!406080 () List!11687)

(declare-fun e!755626 () Int)

(assert (=> b!1177505 (= e!755623 (= (size!9227 lt!406080) e!755626))))

(declare-fun c!196257 () Bool)

(assert (=> b!1177505 (= c!196257 (<= (- j!89 i!757) 0))))

(declare-fun d!337310 () Bool)

(assert (=> d!337310 e!755623))

(declare-fun res!532428 () Bool)

(assert (=> d!337310 (=> (not res!532428) (not e!755623))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1627 (List!11687) (InoxSet B!1261))

(assert (=> d!337310 (= res!532428 (= ((_ map implies) (content!1627 lt!406080) (content!1627 (drop!506 l!2952 i!757))) ((as const (InoxSet B!1261)) true)))))

(assert (=> d!337310 (= lt!406080 e!755625)))

(declare-fun c!196259 () Bool)

(assert (=> d!337310 (= c!196259 (or ((_ is Nil!11663) (drop!506 l!2952 i!757)) (<= (- j!89 i!757) 0)))))

(assert (=> d!337310 (= (take!94 (drop!506 l!2952 i!757) (- j!89 i!757)) lt!406080)))

(declare-fun b!1177506 () Bool)

(declare-fun e!755624 () Int)

(assert (=> b!1177506 (= e!755624 (size!9227 (drop!506 l!2952 i!757)))))

(declare-fun b!1177507 () Bool)

(assert (=> b!1177507 (= e!755625 Nil!11663)))

(declare-fun b!1177508 () Bool)

(assert (=> b!1177508 (= e!755626 0)))

(declare-fun b!1177509 () Bool)

(assert (=> b!1177509 (= e!755626 e!755624)))

(declare-fun c!196258 () Bool)

(assert (=> b!1177509 (= c!196258 (>= (- j!89 i!757) (size!9227 (drop!506 l!2952 i!757))))))

(declare-fun b!1177510 () Bool)

(assert (=> b!1177510 (= e!755624 (- j!89 i!757))))

(assert (= (and d!337310 c!196259) b!1177507))

(assert (= (and d!337310 (not c!196259)) b!1177504))

(assert (= (and d!337310 res!532428) b!1177505))

(assert (= (and b!1177505 c!196257) b!1177508))

(assert (= (and b!1177505 (not c!196257)) b!1177509))

(assert (= (and b!1177509 c!196258) b!1177506))

(assert (= (and b!1177509 (not c!196258)) b!1177510))

(assert (=> b!1177509 m!1354537))

(declare-fun m!1354567 () Bool)

(assert (=> b!1177509 m!1354567))

(declare-fun m!1354569 () Bool)

(assert (=> b!1177505 m!1354569))

(declare-fun m!1354571 () Bool)

(assert (=> b!1177504 m!1354571))

(declare-fun m!1354573 () Bool)

(assert (=> d!337310 m!1354573))

(assert (=> d!337310 m!1354537))

(declare-fun m!1354575 () Bool)

(assert (=> d!337310 m!1354575))

(assert (=> b!1177506 m!1354537))

(assert (=> b!1177506 m!1354567))

(assert (=> d!337290 d!337310))

(declare-fun b!1177529 () Bool)

(declare-fun e!755637 () Int)

(declare-fun call!82455 () Int)

(assert (=> b!1177529 (= e!755637 call!82455)))

(declare-fun bm!82450 () Bool)

(assert (=> bm!82450 (= call!82455 (size!9227 l!2952))))

(declare-fun b!1177531 () Bool)

(declare-fun e!755639 () Int)

(assert (=> b!1177531 (= e!755639 (- call!82455 i!757))))

(declare-fun b!1177530 () Bool)

(declare-fun e!755641 () List!11687)

(assert (=> b!1177530 (= e!755641 l!2952)))

(declare-fun d!337312 () Bool)

(declare-fun e!755638 () Bool)

(assert (=> d!337312 e!755638))

(declare-fun res!532431 () Bool)

(assert (=> d!337312 (=> (not res!532431) (not e!755638))))

(declare-fun lt!406083 () List!11687)

(assert (=> d!337312 (= res!532431 (= ((_ map implies) (content!1627 lt!406083) (content!1627 l!2952)) ((as const (InoxSet B!1261)) true)))))

(declare-fun e!755640 () List!11687)

(assert (=> d!337312 (= lt!406083 e!755640)))

(declare-fun c!196268 () Bool)

(assert (=> d!337312 (= c!196268 ((_ is Nil!11663) l!2952))))

(assert (=> d!337312 (= (drop!506 l!2952 i!757) lt!406083)))

(declare-fun b!1177532 () Bool)

(assert (=> b!1177532 (= e!755638 (= (size!9227 lt!406083) e!755637))))

(declare-fun c!196271 () Bool)

(assert (=> b!1177532 (= c!196271 (<= i!757 0))))

(declare-fun b!1177533 () Bool)

(assert (=> b!1177533 (= e!755641 (drop!506 (t!111179 l!2952) (- i!757 1)))))

(declare-fun b!1177534 () Bool)

(assert (=> b!1177534 (= e!755637 e!755639)))

(declare-fun c!196269 () Bool)

(assert (=> b!1177534 (= c!196269 (>= i!757 call!82455))))

(declare-fun b!1177535 () Bool)

(assert (=> b!1177535 (= e!755639 0)))

(declare-fun b!1177536 () Bool)

(assert (=> b!1177536 (= e!755640 e!755641)))

(declare-fun c!196270 () Bool)

(assert (=> b!1177536 (= c!196270 (<= i!757 0))))

(declare-fun b!1177537 () Bool)

(assert (=> b!1177537 (= e!755640 Nil!11663)))

(assert (= (and d!337312 c!196268) b!1177537))

(assert (= (and d!337312 (not c!196268)) b!1177536))

(assert (= (and b!1177536 c!196270) b!1177530))

(assert (= (and b!1177536 (not c!196270)) b!1177533))

(assert (= (and d!337312 res!532431) b!1177532))

(assert (= (and b!1177532 c!196271) b!1177529))

(assert (= (and b!1177532 (not c!196271)) b!1177534))

(assert (= (and b!1177534 c!196269) b!1177535))

(assert (= (and b!1177534 (not c!196269)) b!1177531))

(assert (= (or b!1177529 b!1177534 b!1177531) bm!82450))

(assert (=> bm!82450 m!1354521))

(declare-fun m!1354577 () Bool)

(assert (=> d!337312 m!1354577))

(declare-fun m!1354579 () Bool)

(assert (=> d!337312 m!1354579))

(declare-fun m!1354581 () Bool)

(assert (=> b!1177532 m!1354581))

(assert (=> b!1177533 m!1354545))

(assert (=> d!337290 d!337312))

(declare-fun b!1177538 () Bool)

(declare-fun e!755644 () List!11687)

(assert (=> b!1177538 (= e!755644 (Cons!11663 (h!17064 (drop!506 (t!111179 l!2952) (- i!757 1))) (take!94 (t!111179 (drop!506 (t!111179 l!2952) (- i!757 1))) (- (- (- j!89 1) (- i!757 1)) 1))))))

(declare-fun b!1177539 () Bool)

(declare-fun e!755642 () Bool)

(declare-fun lt!406084 () List!11687)

(declare-fun e!755645 () Int)

(assert (=> b!1177539 (= e!755642 (= (size!9227 lt!406084) e!755645))))

(declare-fun c!196272 () Bool)

(assert (=> b!1177539 (= c!196272 (<= (- (- j!89 1) (- i!757 1)) 0))))

(declare-fun d!337316 () Bool)

(assert (=> d!337316 e!755642))

(declare-fun res!532432 () Bool)

(assert (=> d!337316 (=> (not res!532432) (not e!755642))))

(assert (=> d!337316 (= res!532432 (= ((_ map implies) (content!1627 lt!406084) (content!1627 (drop!506 (t!111179 l!2952) (- i!757 1)))) ((as const (InoxSet B!1261)) true)))))

(assert (=> d!337316 (= lt!406084 e!755644)))

(declare-fun c!196274 () Bool)

(assert (=> d!337316 (= c!196274 (or ((_ is Nil!11663) (drop!506 (t!111179 l!2952) (- i!757 1))) (<= (- (- j!89 1) (- i!757 1)) 0)))))

(assert (=> d!337316 (= (take!94 (drop!506 (t!111179 l!2952) (- i!757 1)) (- (- j!89 1) (- i!757 1))) lt!406084)))

(declare-fun b!1177540 () Bool)

(declare-fun e!755643 () Int)

(assert (=> b!1177540 (= e!755643 (size!9227 (drop!506 (t!111179 l!2952) (- i!757 1))))))

(declare-fun b!1177541 () Bool)

(assert (=> b!1177541 (= e!755644 Nil!11663)))

(declare-fun b!1177542 () Bool)

(assert (=> b!1177542 (= e!755645 0)))

(declare-fun b!1177543 () Bool)

(assert (=> b!1177543 (= e!755645 e!755643)))

(declare-fun c!196273 () Bool)

(assert (=> b!1177543 (= c!196273 (>= (- (- j!89 1) (- i!757 1)) (size!9227 (drop!506 (t!111179 l!2952) (- i!757 1)))))))

(declare-fun b!1177544 () Bool)

(assert (=> b!1177544 (= e!755643 (- (- j!89 1) (- i!757 1)))))

(assert (= (and d!337316 c!196274) b!1177541))

(assert (= (and d!337316 (not c!196274)) b!1177538))

(assert (= (and d!337316 res!532432) b!1177539))

(assert (= (and b!1177539 c!196272) b!1177542))

(assert (= (and b!1177539 (not c!196272)) b!1177543))

(assert (= (and b!1177543 c!196273) b!1177540))

(assert (= (and b!1177543 (not c!196273)) b!1177544))

(assert (=> b!1177543 m!1354545))

(declare-fun m!1354583 () Bool)

(assert (=> b!1177543 m!1354583))

(declare-fun m!1354585 () Bool)

(assert (=> b!1177539 m!1354585))

(declare-fun m!1354587 () Bool)

(assert (=> b!1177538 m!1354587))

(declare-fun m!1354589 () Bool)

(assert (=> d!337316 m!1354589))

(assert (=> d!337316 m!1354545))

(declare-fun m!1354591 () Bool)

(assert (=> d!337316 m!1354591))

(assert (=> b!1177540 m!1354545))

(assert (=> b!1177540 m!1354583))

(assert (=> d!337296 d!337316))

(declare-fun b!1177545 () Bool)

(declare-fun e!755646 () Int)

(declare-fun call!82456 () Int)

(assert (=> b!1177545 (= e!755646 call!82456)))

(declare-fun bm!82451 () Bool)

(assert (=> bm!82451 (= call!82456 (size!9227 (t!111179 l!2952)))))

(declare-fun b!1177547 () Bool)

(declare-fun e!755648 () Int)

(assert (=> b!1177547 (= e!755648 (- call!82456 (- i!757 1)))))

(declare-fun b!1177546 () Bool)

(declare-fun e!755650 () List!11687)

(assert (=> b!1177546 (= e!755650 (t!111179 l!2952))))

(declare-fun d!337320 () Bool)

(declare-fun e!755647 () Bool)

(assert (=> d!337320 e!755647))

(declare-fun res!532433 () Bool)

(assert (=> d!337320 (=> (not res!532433) (not e!755647))))

(declare-fun lt!406085 () List!11687)

(assert (=> d!337320 (= res!532433 (= ((_ map implies) (content!1627 lt!406085) (content!1627 (t!111179 l!2952))) ((as const (InoxSet B!1261)) true)))))

(declare-fun e!755649 () List!11687)

(assert (=> d!337320 (= lt!406085 e!755649)))

(declare-fun c!196275 () Bool)

(assert (=> d!337320 (= c!196275 ((_ is Nil!11663) (t!111179 l!2952)))))

(assert (=> d!337320 (= (drop!506 (t!111179 l!2952) (- i!757 1)) lt!406085)))

(declare-fun b!1177548 () Bool)

(assert (=> b!1177548 (= e!755647 (= (size!9227 lt!406085) e!755646))))

(declare-fun c!196278 () Bool)

(assert (=> b!1177548 (= c!196278 (<= (- i!757 1) 0))))

(declare-fun b!1177549 () Bool)

(assert (=> b!1177549 (= e!755650 (drop!506 (t!111179 (t!111179 l!2952)) (- (- i!757 1) 1)))))

(declare-fun b!1177550 () Bool)

(assert (=> b!1177550 (= e!755646 e!755648)))

(declare-fun c!196276 () Bool)

(assert (=> b!1177550 (= c!196276 (>= (- i!757 1) call!82456))))

(declare-fun b!1177551 () Bool)

(assert (=> b!1177551 (= e!755648 0)))

(declare-fun b!1177552 () Bool)

(assert (=> b!1177552 (= e!755649 e!755650)))

(declare-fun c!196277 () Bool)

(assert (=> b!1177552 (= c!196277 (<= (- i!757 1) 0))))

(declare-fun b!1177553 () Bool)

(assert (=> b!1177553 (= e!755649 Nil!11663)))

(assert (= (and d!337320 c!196275) b!1177553))

(assert (= (and d!337320 (not c!196275)) b!1177552))

(assert (= (and b!1177552 c!196277) b!1177546))

(assert (= (and b!1177552 (not c!196277)) b!1177549))

(assert (= (and d!337320 res!532433) b!1177548))

(assert (= (and b!1177548 c!196278) b!1177545))

(assert (= (and b!1177548 (not c!196278)) b!1177550))

(assert (= (and b!1177550 c!196276) b!1177551))

(assert (= (and b!1177550 (not c!196276)) b!1177547))

(assert (= (or b!1177545 b!1177550 b!1177547) bm!82451))

(assert (=> bm!82451 m!1354523))

(declare-fun m!1354597 () Bool)

(assert (=> d!337320 m!1354597))

(declare-fun m!1354599 () Bool)

(assert (=> d!337320 m!1354599))

(declare-fun m!1354601 () Bool)

(assert (=> b!1177548 m!1354601))

(declare-fun m!1354603 () Bool)

(assert (=> b!1177549 m!1354603))

(assert (=> d!337296 d!337320))

(declare-fun b!1177558 () Bool)

(declare-fun e!755658 () Bool)

(declare-fun e!755657 () Bool)

(assert (=> b!1177558 (= e!755658 e!755657)))

(declare-fun res!532439 () Bool)

(assert (=> b!1177558 (=> (not res!532439) (not e!755657))))

(assert (=> b!1177558 (= res!532439 ((_ is Cons!11663) (t!111179 (t!111179 l!2952))))))

(declare-fun b!1177559 () Bool)

(declare-fun e!755656 () Bool)

(assert (=> b!1177559 (= e!755657 e!755656)))

(declare-fun res!532441 () Bool)

(assert (=> b!1177559 (=> res!532441 e!755656)))

(declare-fun e!755655 () Bool)

(assert (=> b!1177559 (= res!532441 e!755655)))

(declare-fun res!532438 () Bool)

(assert (=> b!1177559 (=> (not res!532438) (not e!755655))))

(assert (=> b!1177559 (= res!532438 (= (h!17064 (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)))) (h!17064 (t!111179 (t!111179 l!2952)))))))

(declare-fun d!337324 () Bool)

(declare-fun res!532440 () Bool)

(assert (=> d!337324 (=> res!532440 e!755658)))

(assert (=> d!337324 (= res!532440 ((_ is Nil!11663) (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)))))))

(assert (=> d!337324 (= (subseq!289 (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))) (t!111179 (t!111179 l!2952))) e!755658)))

(declare-fun b!1177560 () Bool)

(assert (=> b!1177560 (= e!755655 (subseq!289 (t!111179 (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)))) (t!111179 (t!111179 (t!111179 l!2952)))))))

(declare-fun b!1177561 () Bool)

(assert (=> b!1177561 (= e!755656 (subseq!289 (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))) (t!111179 (t!111179 (t!111179 l!2952)))))))

(assert (= (and d!337324 (not res!532440)) b!1177558))

(assert (= (and b!1177558 res!532439) b!1177559))

(assert (= (and b!1177559 res!532438) b!1177560))

(assert (= (and b!1177559 (not res!532441)) b!1177561))

(declare-fun m!1354605 () Bool)

(assert (=> b!1177560 m!1354605))

(declare-fun m!1354607 () Bool)

(assert (=> b!1177561 m!1354607))

(assert (=> b!1177454 d!337324))

(declare-fun b!1177562 () Bool)

(declare-fun e!755662 () Bool)

(declare-fun e!755661 () Bool)

(assert (=> b!1177562 (= e!755662 e!755661)))

(declare-fun res!532443 () Bool)

(assert (=> b!1177562 (=> (not res!532443) (not e!755661))))

(assert (=> b!1177562 (= res!532443 ((_ is Cons!11663) (t!111179 l!2952)))))

(declare-fun b!1177563 () Bool)

(declare-fun e!755660 () Bool)

(assert (=> b!1177563 (= e!755661 e!755660)))

(declare-fun res!532445 () Bool)

(assert (=> b!1177563 (=> res!532445 e!755660)))

(declare-fun e!755659 () Bool)

(assert (=> b!1177563 (= res!532445 e!755659)))

(declare-fun res!532442 () Bool)

(assert (=> b!1177563 (=> (not res!532442) (not e!755659))))

(assert (=> b!1177563 (= res!532442 (= (h!17064 (t!111179 (slice!387 l!2952 i!757 j!89))) (h!17064 (t!111179 l!2952))))))

(declare-fun d!337326 () Bool)

(declare-fun res!532444 () Bool)

(assert (=> d!337326 (=> res!532444 e!755662)))

(assert (=> d!337326 (= res!532444 ((_ is Nil!11663) (t!111179 (slice!387 l!2952 i!757 j!89))))))

(assert (=> d!337326 (= (subseq!289 (t!111179 (slice!387 l!2952 i!757 j!89)) (t!111179 l!2952)) e!755662)))

(declare-fun b!1177564 () Bool)

(assert (=> b!1177564 (= e!755659 (subseq!289 (t!111179 (t!111179 (slice!387 l!2952 i!757 j!89))) (t!111179 (t!111179 l!2952))))))

(declare-fun b!1177565 () Bool)

(assert (=> b!1177565 (= e!755660 (subseq!289 (t!111179 (slice!387 l!2952 i!757 j!89)) (t!111179 (t!111179 l!2952))))))

(assert (= (and d!337326 (not res!532444)) b!1177562))

(assert (= (and b!1177562 res!532443) b!1177563))

(assert (= (and b!1177563 res!532442) b!1177564))

(assert (= (and b!1177563 (not res!532445)) b!1177565))

(declare-fun m!1354609 () Bool)

(assert (=> b!1177564 m!1354609))

(declare-fun m!1354611 () Bool)

(assert (=> b!1177565 m!1354611))

(assert (=> b!1177462 d!337326))

(assert (=> d!337282 d!337286))

(assert (=> d!337282 d!337296))

(declare-fun d!337328 () Bool)

(assert (=> d!337328 (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 l!2952))))

(assert (=> d!337328 true))

(declare-fun _$25!179 () Unit!18002)

(assert (=> d!337328 (= (choose!7632 (t!111179 l!2952) (- i!757 1) (- j!89 1)) _$25!179)))

(declare-fun bs!286739 () Bool)

(assert (= bs!286739 d!337328))

(assert (=> bs!286739 m!1354515))

(assert (=> bs!286739 m!1354515))

(assert (=> bs!286739 m!1354517))

(assert (=> d!337282 d!337328))

(assert (=> b!1177434 d!337298))

(declare-fun b!1177566 () Bool)

(declare-fun e!755666 () Bool)

(declare-fun e!755665 () Bool)

(assert (=> b!1177566 (= e!755666 e!755665)))

(declare-fun res!532447 () Bool)

(assert (=> b!1177566 (=> (not res!532447) (not e!755665))))

(assert (=> b!1177566 (= res!532447 ((_ is Cons!11663) (t!111179 (t!111179 l!2952))))))

(declare-fun b!1177567 () Bool)

(declare-fun e!755664 () Bool)

(assert (=> b!1177567 (= e!755665 e!755664)))

(declare-fun res!532449 () Bool)

(assert (=> b!1177567 (=> res!532449 e!755664)))

(declare-fun e!755663 () Bool)

(assert (=> b!1177567 (= res!532449 e!755663)))

(declare-fun res!532446 () Bool)

(assert (=> b!1177567 (=> (not res!532446) (not e!755663))))

(assert (=> b!1177567 (= res!532446 (= (h!17064 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))) (h!17064 (t!111179 (t!111179 l!2952)))))))

(declare-fun d!337330 () Bool)

(declare-fun res!532448 () Bool)

(assert (=> d!337330 (=> res!532448 e!755666)))

(assert (=> d!337330 (= res!532448 ((_ is Nil!11663) (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))))))

(assert (=> d!337330 (= (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 (t!111179 l!2952))) e!755666)))

(declare-fun b!1177568 () Bool)

(assert (=> b!1177568 (= e!755663 (subseq!289 (t!111179 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1))) (t!111179 (t!111179 (t!111179 l!2952)))))))

(declare-fun b!1177569 () Bool)

(assert (=> b!1177569 (= e!755664 (subseq!289 (slice!387 (t!111179 l!2952) (- i!757 1) (- j!89 1)) (t!111179 (t!111179 (t!111179 l!2952)))))))

(assert (= (and d!337330 (not res!532448)) b!1177566))

(assert (= (and b!1177566 res!532447) b!1177567))

(assert (= (and b!1177567 res!532446) b!1177568))

(assert (= (and b!1177567 (not res!532449)) b!1177569))

(assert (=> b!1177568 m!1354607))

(assert (=> b!1177569 m!1354515))

(declare-fun m!1354613 () Bool)

(assert (=> b!1177569 m!1354613))

(assert (=> b!1177455 d!337330))

(declare-fun b!1177570 () Bool)

(declare-fun e!755670 () Bool)

(declare-fun e!755669 () Bool)

(assert (=> b!1177570 (= e!755670 e!755669)))

(declare-fun res!532451 () Bool)

(assert (=> b!1177570 (=> (not res!532451) (not e!755669))))

(assert (=> b!1177570 (= res!532451 ((_ is Cons!11663) (t!111179 l!2952)))))

(declare-fun b!1177571 () Bool)

(declare-fun e!755668 () Bool)

(assert (=> b!1177571 (= e!755669 e!755668)))

(declare-fun res!532453 () Bool)

(assert (=> b!1177571 (=> res!532453 e!755668)))

(declare-fun e!755667 () Bool)

(assert (=> b!1177571 (= res!532453 e!755667)))

(declare-fun res!532450 () Bool)

(assert (=> b!1177571 (=> (not res!532450) (not e!755667))))

(assert (=> b!1177571 (= res!532450 (= (h!17064 (slice!387 l!2952 i!757 j!89)) (h!17064 (t!111179 l!2952))))))

(declare-fun d!337332 () Bool)

(declare-fun res!532452 () Bool)

(assert (=> d!337332 (=> res!532452 e!755670)))

(assert (=> d!337332 (= res!532452 ((_ is Nil!11663) (slice!387 l!2952 i!757 j!89)))))

(assert (=> d!337332 (= (subseq!289 (slice!387 l!2952 i!757 j!89) (t!111179 l!2952)) e!755670)))

(declare-fun b!1177572 () Bool)

(assert (=> b!1177572 (= e!755667 (subseq!289 (t!111179 (slice!387 l!2952 i!757 j!89)) (t!111179 (t!111179 l!2952))))))

(declare-fun b!1177573 () Bool)

(assert (=> b!1177573 (= e!755668 (subseq!289 (slice!387 l!2952 i!757 j!89) (t!111179 (t!111179 l!2952))))))

(assert (= (and d!337332 (not res!532452)) b!1177570))

(assert (= (and b!1177570 res!532451) b!1177571))

(assert (= (and b!1177571 res!532450) b!1177572))

(assert (= (and b!1177571 (not res!532453)) b!1177573))

(assert (=> b!1177572 m!1354611))

(assert (=> b!1177573 m!1354511))

(declare-fun m!1354615 () Bool)

(assert (=> b!1177573 m!1354615))

(assert (=> b!1177463 d!337332))

(assert (=> b!1177429 d!337298))

(declare-fun b!1177578 () Bool)

(declare-fun e!755673 () Bool)

(declare-fun tp!335203 () Bool)

(assert (=> b!1177578 (= e!755673 (and tp_is_empty!5783 tp!335203))))

(assert (=> b!1177474 (= tp!335199 e!755673)))

(assert (= (and b!1177474 ((_ is Cons!11663) (t!111179 (t!111179 l!2952)))) b!1177578))

(check-sat (not d!337328) (not b!1177539) (not bm!82450) tp_is_empty!5783 (not b!1177489) (not b!1177569) (not b!1177549) (not b!1177548) (not b!1177572) (not d!337320) (not bm!82451) (not b!1177565) (not b!1177543) (not b!1177504) (not b!1177560) (not b!1177538) (not d!337316) (not b!1177540) (not b!1177505) (not b!1177509) (not d!337310) (not b!1177564) (not b!1177561) (not b!1177568) (not b!1177573) (not d!337312) (not b!1177533) (not b!1177532) (not b!1177506) (not b!1177578))
(check-sat)
