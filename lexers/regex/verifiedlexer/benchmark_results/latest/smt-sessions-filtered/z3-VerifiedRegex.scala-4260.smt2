; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229642 () Bool)

(assert start!229642)

(declare-fun res!993587 () Bool)

(declare-fun e!1490587 () Bool)

(assert (=> start!229642 (=> (not res!993587) (not e!1490587))))

(declare-fun i!741 () Int)

(assert (=> start!229642 (= res!993587 (<= 0 i!741))))

(assert (=> start!229642 e!1490587))

(assert (=> start!229642 true))

(declare-fun e!1490589 () Bool)

(assert (=> start!229642 e!1490589))

(declare-fun b!2326443 () Bool)

(declare-fun e!1490588 () Bool)

(assert (=> b!2326443 (= e!1490587 e!1490588)))

(declare-fun res!993588 () Bool)

(assert (=> b!2326443 (=> (not res!993588) (not e!1490588))))

(declare-datatypes ((T!44118 0))(
  ( (T!44119 (val!8010 Int)) )
))
(declare-datatypes ((List!27796 0))(
  ( (Nil!27698) (Cons!27698 (h!33099 T!44118) (t!207498 List!27796)) )
))
(declare-fun l!2797 () List!27796)

(declare-fun lt!861675 () Int)

(get-info :version)

(assert (=> b!2326443 (= res!993588 (and (<= i!741 lt!861675) ((_ is Nil!27698) l!2797)))))

(declare-fun size!21974 (List!27796) Int)

(assert (=> b!2326443 (= lt!861675 (size!21974 l!2797))))

(declare-fun b!2326444 () Bool)

(declare-fun ++!6846 (List!27796 List!27796) List!27796)

(declare-fun slice!731 (List!27796 Int Int) List!27796)

(assert (=> b!2326444 (= e!1490588 (not (= (++!6846 (slice!731 l!2797 0 i!741) (slice!731 l!2797 i!741 lt!861675)) l!2797)))))

(declare-fun b!2326445 () Bool)

(declare-fun tp_is_empty!10885 () Bool)

(declare-fun tp!737187 () Bool)

(assert (=> b!2326445 (= e!1490589 (and tp_is_empty!10885 tp!737187))))

(assert (= (and start!229642 res!993587) b!2326443))

(assert (= (and b!2326443 res!993588) b!2326444))

(assert (= (and start!229642 ((_ is Cons!27698) l!2797)) b!2326445))

(declare-fun m!2757543 () Bool)

(assert (=> b!2326443 m!2757543))

(declare-fun m!2757545 () Bool)

(assert (=> b!2326444 m!2757545))

(declare-fun m!2757547 () Bool)

(assert (=> b!2326444 m!2757547))

(assert (=> b!2326444 m!2757545))

(assert (=> b!2326444 m!2757547))

(declare-fun m!2757549 () Bool)

(assert (=> b!2326444 m!2757549))

(check-sat (not b!2326444) (not b!2326443) (not b!2326445) tp_is_empty!10885)
(check-sat)
(get-model)

(declare-fun b!2326456 () Bool)

(declare-fun res!993593 () Bool)

(declare-fun e!1490595 () Bool)

(assert (=> b!2326456 (=> (not res!993593) (not e!1490595))))

(declare-fun lt!861678 () List!27796)

(assert (=> b!2326456 (= res!993593 (= (size!21974 lt!861678) (+ (size!21974 (slice!731 l!2797 0 i!741)) (size!21974 (slice!731 l!2797 i!741 lt!861675)))))))

(declare-fun d!688893 () Bool)

(assert (=> d!688893 e!1490595))

(declare-fun res!993594 () Bool)

(assert (=> d!688893 (=> (not res!993594) (not e!1490595))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3755 (List!27796) (InoxSet T!44118))

(assert (=> d!688893 (= res!993594 (= (content!3755 lt!861678) ((_ map or) (content!3755 (slice!731 l!2797 0 i!741)) (content!3755 (slice!731 l!2797 i!741 lt!861675)))))))

(declare-fun e!1490594 () List!27796)

(assert (=> d!688893 (= lt!861678 e!1490594)))

(declare-fun c!369450 () Bool)

(assert (=> d!688893 (= c!369450 ((_ is Nil!27698) (slice!731 l!2797 0 i!741)))))

(assert (=> d!688893 (= (++!6846 (slice!731 l!2797 0 i!741) (slice!731 l!2797 i!741 lt!861675)) lt!861678)))

(declare-fun b!2326457 () Bool)

(assert (=> b!2326457 (= e!1490595 (or (not (= (slice!731 l!2797 i!741 lt!861675) Nil!27698)) (= lt!861678 (slice!731 l!2797 0 i!741))))))

(declare-fun b!2326454 () Bool)

(assert (=> b!2326454 (= e!1490594 (slice!731 l!2797 i!741 lt!861675))))

(declare-fun b!2326455 () Bool)

(assert (=> b!2326455 (= e!1490594 (Cons!27698 (h!33099 (slice!731 l!2797 0 i!741)) (++!6846 (t!207498 (slice!731 l!2797 0 i!741)) (slice!731 l!2797 i!741 lt!861675))))))

(assert (= (and d!688893 c!369450) b!2326454))

(assert (= (and d!688893 (not c!369450)) b!2326455))

(assert (= (and d!688893 res!993594) b!2326456))

(assert (= (and b!2326456 res!993593) b!2326457))

(declare-fun m!2757551 () Bool)

(assert (=> b!2326456 m!2757551))

(assert (=> b!2326456 m!2757545))

(declare-fun m!2757553 () Bool)

(assert (=> b!2326456 m!2757553))

(assert (=> b!2326456 m!2757547))

(declare-fun m!2757555 () Bool)

(assert (=> b!2326456 m!2757555))

(declare-fun m!2757557 () Bool)

(assert (=> d!688893 m!2757557))

(assert (=> d!688893 m!2757545))

(declare-fun m!2757559 () Bool)

(assert (=> d!688893 m!2757559))

(assert (=> d!688893 m!2757547))

(declare-fun m!2757561 () Bool)

(assert (=> d!688893 m!2757561))

(assert (=> b!2326455 m!2757547))

(declare-fun m!2757563 () Bool)

(assert (=> b!2326455 m!2757563))

(assert (=> b!2326444 d!688893))

(declare-fun d!688897 () Bool)

(declare-fun take!496 (List!27796 Int) List!27796)

(declare-fun drop!1517 (List!27796 Int) List!27796)

(assert (=> d!688897 (= (slice!731 l!2797 0 i!741) (take!496 (drop!1517 l!2797 0) (- i!741 0)))))

(declare-fun bs!459288 () Bool)

(assert (= bs!459288 d!688897))

(declare-fun m!2757565 () Bool)

(assert (=> bs!459288 m!2757565))

(assert (=> bs!459288 m!2757565))

(declare-fun m!2757567 () Bool)

(assert (=> bs!459288 m!2757567))

(assert (=> b!2326444 d!688897))

(declare-fun d!688899 () Bool)

(assert (=> d!688899 (= (slice!731 l!2797 i!741 lt!861675) (take!496 (drop!1517 l!2797 i!741) (- lt!861675 i!741)))))

(declare-fun bs!459289 () Bool)

(assert (= bs!459289 d!688899))

(declare-fun m!2757569 () Bool)

(assert (=> bs!459289 m!2757569))

(assert (=> bs!459289 m!2757569))

(declare-fun m!2757571 () Bool)

(assert (=> bs!459289 m!2757571))

(assert (=> b!2326444 d!688899))

(declare-fun d!688901 () Bool)

(declare-fun lt!861684 () Int)

(assert (=> d!688901 (>= lt!861684 0)))

(declare-fun e!1490604 () Int)

(assert (=> d!688901 (= lt!861684 e!1490604)))

(declare-fun c!369456 () Bool)

(assert (=> d!688901 (= c!369456 ((_ is Nil!27698) l!2797))))

(assert (=> d!688901 (= (size!21974 l!2797) lt!861684)))

(declare-fun b!2326474 () Bool)

(assert (=> b!2326474 (= e!1490604 0)))

(declare-fun b!2326475 () Bool)

(assert (=> b!2326475 (= e!1490604 (+ 1 (size!21974 (t!207498 l!2797))))))

(assert (= (and d!688901 c!369456) b!2326474))

(assert (= (and d!688901 (not c!369456)) b!2326475))

(declare-fun m!2757587 () Bool)

(assert (=> b!2326475 m!2757587))

(assert (=> b!2326443 d!688901))

(declare-fun b!2326480 () Bool)

(declare-fun e!1490607 () Bool)

(declare-fun tp!737190 () Bool)

(assert (=> b!2326480 (= e!1490607 (and tp_is_empty!10885 tp!737190))))

(assert (=> b!2326445 (= tp!737187 e!1490607)))

(assert (= (and b!2326445 ((_ is Cons!27698) (t!207498 l!2797))) b!2326480))

(check-sat (not d!688897) (not b!2326480) (not b!2326456) (not b!2326455) tp_is_empty!10885 (not d!688893) (not d!688899) (not b!2326475))
(check-sat)
(get-model)

(declare-fun b!2326506 () Bool)

(declare-fun e!1490623 () Int)

(assert (=> b!2326506 (= e!1490623 (- i!741 0))))

(declare-fun b!2326507 () Bool)

(declare-fun e!1490622 () Int)

(assert (=> b!2326507 (= e!1490622 0)))

(declare-fun b!2326508 () Bool)

(assert (=> b!2326508 (= e!1490623 (size!21974 (drop!1517 l!2797 0)))))

(declare-fun b!2326509 () Bool)

(assert (=> b!2326509 (= e!1490622 e!1490623)))

(declare-fun c!369468 () Bool)

(assert (=> b!2326509 (= c!369468 (>= (- i!741 0) (size!21974 (drop!1517 l!2797 0))))))

(declare-fun b!2326511 () Bool)

(declare-fun e!1490625 () List!27796)

(assert (=> b!2326511 (= e!1490625 (Cons!27698 (h!33099 (drop!1517 l!2797 0)) (take!496 (t!207498 (drop!1517 l!2797 0)) (- (- i!741 0) 1))))))

(declare-fun b!2326512 () Bool)

(assert (=> b!2326512 (= e!1490625 Nil!27698)))

(declare-fun b!2326510 () Bool)

(declare-fun e!1490624 () Bool)

(declare-fun lt!861690 () List!27796)

(assert (=> b!2326510 (= e!1490624 (= (size!21974 lt!861690) e!1490622))))

(declare-fun c!369466 () Bool)

(assert (=> b!2326510 (= c!369466 (<= (- i!741 0) 0))))

(declare-fun d!688909 () Bool)

(assert (=> d!688909 e!1490624))

(declare-fun res!993603 () Bool)

(assert (=> d!688909 (=> (not res!993603) (not e!1490624))))

(assert (=> d!688909 (= res!993603 (= ((_ map implies) (content!3755 lt!861690) (content!3755 (drop!1517 l!2797 0))) ((as const (InoxSet T!44118)) true)))))

(assert (=> d!688909 (= lt!861690 e!1490625)))

(declare-fun c!369467 () Bool)

(assert (=> d!688909 (= c!369467 (or ((_ is Nil!27698) (drop!1517 l!2797 0)) (<= (- i!741 0) 0)))))

(assert (=> d!688909 (= (take!496 (drop!1517 l!2797 0) (- i!741 0)) lt!861690)))

(assert (= (and d!688909 c!369467) b!2326512))

(assert (= (and d!688909 (not c!369467)) b!2326511))

(assert (= (and d!688909 res!993603) b!2326510))

(assert (= (and b!2326510 c!369466) b!2326507))

(assert (= (and b!2326510 (not c!369466)) b!2326509))

(assert (= (and b!2326509 c!369468) b!2326508))

(assert (= (and b!2326509 (not c!369468)) b!2326506))

(declare-fun m!2757599 () Bool)

(assert (=> b!2326510 m!2757599))

(assert (=> b!2326508 m!2757565))

(declare-fun m!2757601 () Bool)

(assert (=> b!2326508 m!2757601))

(assert (=> b!2326509 m!2757565))

(assert (=> b!2326509 m!2757601))

(declare-fun m!2757603 () Bool)

(assert (=> b!2326511 m!2757603))

(declare-fun m!2757605 () Bool)

(assert (=> d!688909 m!2757605))

(assert (=> d!688909 m!2757565))

(declare-fun m!2757607 () Bool)

(assert (=> d!688909 m!2757607))

(assert (=> d!688897 d!688909))

(declare-fun b!2326531 () Bool)

(declare-fun e!1490637 () Bool)

(declare-fun lt!861693 () List!27796)

(declare-fun e!1490639 () Int)

(assert (=> b!2326531 (= e!1490637 (= (size!21974 lt!861693) e!1490639))))

(declare-fun c!369479 () Bool)

(assert (=> b!2326531 (= c!369479 (<= 0 0))))

(declare-fun b!2326532 () Bool)

(declare-fun e!1490638 () List!27796)

(assert (=> b!2326532 (= e!1490638 Nil!27698)))

(declare-fun b!2326533 () Bool)

(declare-fun e!1490636 () Int)

(assert (=> b!2326533 (= e!1490636 0)))

(declare-fun b!2326534 () Bool)

(declare-fun e!1490640 () List!27796)

(assert (=> b!2326534 (= e!1490640 (drop!1517 (t!207498 l!2797) (- 0 1)))))

(declare-fun b!2326535 () Bool)

(assert (=> b!2326535 (= e!1490638 e!1490640)))

(declare-fun c!369480 () Bool)

(assert (=> b!2326535 (= c!369480 (<= 0 0))))

(declare-fun b!2326536 () Bool)

(declare-fun call!138949 () Int)

(assert (=> b!2326536 (= e!1490639 call!138949)))

(declare-fun b!2326537 () Bool)

(assert (=> b!2326537 (= e!1490639 e!1490636)))

(declare-fun c!369478 () Bool)

(assert (=> b!2326537 (= c!369478 (>= 0 call!138949))))

(declare-fun b!2326538 () Bool)

(assert (=> b!2326538 (= e!1490640 l!2797)))

(declare-fun d!688911 () Bool)

(assert (=> d!688911 e!1490637))

(declare-fun res!993606 () Bool)

(assert (=> d!688911 (=> (not res!993606) (not e!1490637))))

(assert (=> d!688911 (= res!993606 (= ((_ map implies) (content!3755 lt!861693) (content!3755 l!2797)) ((as const (InoxSet T!44118)) true)))))

(assert (=> d!688911 (= lt!861693 e!1490638)))

(declare-fun c!369477 () Bool)

(assert (=> d!688911 (= c!369477 ((_ is Nil!27698) l!2797))))

(assert (=> d!688911 (= (drop!1517 l!2797 0) lt!861693)))

(declare-fun b!2326539 () Bool)

(assert (=> b!2326539 (= e!1490636 (- call!138949 0))))

(declare-fun bm!138944 () Bool)

(assert (=> bm!138944 (= call!138949 (size!21974 l!2797))))

(assert (= (and d!688911 c!369477) b!2326532))

(assert (= (and d!688911 (not c!369477)) b!2326535))

(assert (= (and b!2326535 c!369480) b!2326538))

(assert (= (and b!2326535 (not c!369480)) b!2326534))

(assert (= (and d!688911 res!993606) b!2326531))

(assert (= (and b!2326531 c!369479) b!2326536))

(assert (= (and b!2326531 (not c!369479)) b!2326537))

(assert (= (and b!2326537 c!369478) b!2326533))

(assert (= (and b!2326537 (not c!369478)) b!2326539))

(assert (= (or b!2326536 b!2326537 b!2326539) bm!138944))

(declare-fun m!2757609 () Bool)

(assert (=> b!2326531 m!2757609))

(declare-fun m!2757611 () Bool)

(assert (=> b!2326534 m!2757611))

(declare-fun m!2757613 () Bool)

(assert (=> d!688911 m!2757613))

(declare-fun m!2757615 () Bool)

(assert (=> d!688911 m!2757615))

(assert (=> bm!138944 m!2757543))

(assert (=> d!688897 d!688911))

(declare-fun d!688913 () Bool)

(declare-fun lt!861694 () Int)

(assert (=> d!688913 (>= lt!861694 0)))

(declare-fun e!1490641 () Int)

(assert (=> d!688913 (= lt!861694 e!1490641)))

(declare-fun c!369481 () Bool)

(assert (=> d!688913 (= c!369481 ((_ is Nil!27698) (t!207498 l!2797)))))

(assert (=> d!688913 (= (size!21974 (t!207498 l!2797)) lt!861694)))

(declare-fun b!2326540 () Bool)

(assert (=> b!2326540 (= e!1490641 0)))

(declare-fun b!2326541 () Bool)

(assert (=> b!2326541 (= e!1490641 (+ 1 (size!21974 (t!207498 (t!207498 l!2797)))))))

(assert (= (and d!688913 c!369481) b!2326540))

(assert (= (and d!688913 (not c!369481)) b!2326541))

(declare-fun m!2757617 () Bool)

(assert (=> b!2326541 m!2757617))

(assert (=> b!2326475 d!688913))

(declare-fun d!688915 () Bool)

(declare-fun c!369484 () Bool)

(assert (=> d!688915 (= c!369484 ((_ is Nil!27698) lt!861678))))

(declare-fun e!1490644 () (InoxSet T!44118))

(assert (=> d!688915 (= (content!3755 lt!861678) e!1490644)))

(declare-fun b!2326546 () Bool)

(assert (=> b!2326546 (= e!1490644 ((as const (Array T!44118 Bool)) false))))

(declare-fun b!2326547 () Bool)

(assert (=> b!2326547 (= e!1490644 ((_ map or) (store ((as const (Array T!44118 Bool)) false) (h!33099 lt!861678) true) (content!3755 (t!207498 lt!861678))))))

(assert (= (and d!688915 c!369484) b!2326546))

(assert (= (and d!688915 (not c!369484)) b!2326547))

(declare-fun m!2757619 () Bool)

(assert (=> b!2326547 m!2757619))

(declare-fun m!2757621 () Bool)

(assert (=> b!2326547 m!2757621))

(assert (=> d!688893 d!688915))

(declare-fun d!688917 () Bool)

(declare-fun c!369485 () Bool)

(assert (=> d!688917 (= c!369485 ((_ is Nil!27698) (slice!731 l!2797 0 i!741)))))

(declare-fun e!1490645 () (InoxSet T!44118))

(assert (=> d!688917 (= (content!3755 (slice!731 l!2797 0 i!741)) e!1490645)))

(declare-fun b!2326548 () Bool)

(assert (=> b!2326548 (= e!1490645 ((as const (Array T!44118 Bool)) false))))

(declare-fun b!2326549 () Bool)

(assert (=> b!2326549 (= e!1490645 ((_ map or) (store ((as const (Array T!44118 Bool)) false) (h!33099 (slice!731 l!2797 0 i!741)) true) (content!3755 (t!207498 (slice!731 l!2797 0 i!741)))))))

(assert (= (and d!688917 c!369485) b!2326548))

(assert (= (and d!688917 (not c!369485)) b!2326549))

(declare-fun m!2757623 () Bool)

(assert (=> b!2326549 m!2757623))

(declare-fun m!2757625 () Bool)

(assert (=> b!2326549 m!2757625))

(assert (=> d!688893 d!688917))

(declare-fun c!369486 () Bool)

(declare-fun d!688919 () Bool)

(assert (=> d!688919 (= c!369486 ((_ is Nil!27698) (slice!731 l!2797 i!741 lt!861675)))))

(declare-fun e!1490646 () (InoxSet T!44118))

(assert (=> d!688919 (= (content!3755 (slice!731 l!2797 i!741 lt!861675)) e!1490646)))

(declare-fun b!2326550 () Bool)

(assert (=> b!2326550 (= e!1490646 ((as const (Array T!44118 Bool)) false))))

(declare-fun b!2326551 () Bool)

(assert (=> b!2326551 (= e!1490646 ((_ map or) (store ((as const (Array T!44118 Bool)) false) (h!33099 (slice!731 l!2797 i!741 lt!861675)) true) (content!3755 (t!207498 (slice!731 l!2797 i!741 lt!861675)))))))

(assert (= (and d!688919 c!369486) b!2326550))

(assert (= (and d!688919 (not c!369486)) b!2326551))

(declare-fun m!2757627 () Bool)

(assert (=> b!2326551 m!2757627))

(declare-fun m!2757629 () Bool)

(assert (=> b!2326551 m!2757629))

(assert (=> d!688893 d!688919))

(declare-fun b!2326554 () Bool)

(declare-fun res!993607 () Bool)

(declare-fun e!1490648 () Bool)

(assert (=> b!2326554 (=> (not res!993607) (not e!1490648))))

(declare-fun lt!861695 () List!27796)

(assert (=> b!2326554 (= res!993607 (= (size!21974 lt!861695) (+ (size!21974 (t!207498 (slice!731 l!2797 0 i!741))) (size!21974 (slice!731 l!2797 i!741 lt!861675)))))))

(declare-fun d!688921 () Bool)

(assert (=> d!688921 e!1490648))

(declare-fun res!993608 () Bool)

(assert (=> d!688921 (=> (not res!993608) (not e!1490648))))

(assert (=> d!688921 (= res!993608 (= (content!3755 lt!861695) ((_ map or) (content!3755 (t!207498 (slice!731 l!2797 0 i!741))) (content!3755 (slice!731 l!2797 i!741 lt!861675)))))))

(declare-fun e!1490647 () List!27796)

(assert (=> d!688921 (= lt!861695 e!1490647)))

(declare-fun c!369487 () Bool)

(assert (=> d!688921 (= c!369487 ((_ is Nil!27698) (t!207498 (slice!731 l!2797 0 i!741))))))

(assert (=> d!688921 (= (++!6846 (t!207498 (slice!731 l!2797 0 i!741)) (slice!731 l!2797 i!741 lt!861675)) lt!861695)))

(declare-fun b!2326555 () Bool)

(assert (=> b!2326555 (= e!1490648 (or (not (= (slice!731 l!2797 i!741 lt!861675) Nil!27698)) (= lt!861695 (t!207498 (slice!731 l!2797 0 i!741)))))))

(declare-fun b!2326552 () Bool)

(assert (=> b!2326552 (= e!1490647 (slice!731 l!2797 i!741 lt!861675))))

(declare-fun b!2326553 () Bool)

(assert (=> b!2326553 (= e!1490647 (Cons!27698 (h!33099 (t!207498 (slice!731 l!2797 0 i!741))) (++!6846 (t!207498 (t!207498 (slice!731 l!2797 0 i!741))) (slice!731 l!2797 i!741 lt!861675))))))

(assert (= (and d!688921 c!369487) b!2326552))

(assert (= (and d!688921 (not c!369487)) b!2326553))

(assert (= (and d!688921 res!993608) b!2326554))

(assert (= (and b!2326554 res!993607) b!2326555))

(declare-fun m!2757631 () Bool)

(assert (=> b!2326554 m!2757631))

(declare-fun m!2757633 () Bool)

(assert (=> b!2326554 m!2757633))

(assert (=> b!2326554 m!2757547))

(assert (=> b!2326554 m!2757555))

(declare-fun m!2757635 () Bool)

(assert (=> d!688921 m!2757635))

(assert (=> d!688921 m!2757625))

(assert (=> d!688921 m!2757547))

(assert (=> d!688921 m!2757561))

(assert (=> b!2326553 m!2757547))

(declare-fun m!2757637 () Bool)

(assert (=> b!2326553 m!2757637))

(assert (=> b!2326455 d!688921))

(declare-fun d!688923 () Bool)

(declare-fun lt!861696 () Int)

(assert (=> d!688923 (>= lt!861696 0)))

(declare-fun e!1490649 () Int)

(assert (=> d!688923 (= lt!861696 e!1490649)))

(declare-fun c!369488 () Bool)

(assert (=> d!688923 (= c!369488 ((_ is Nil!27698) lt!861678))))

(assert (=> d!688923 (= (size!21974 lt!861678) lt!861696)))

(declare-fun b!2326556 () Bool)

(assert (=> b!2326556 (= e!1490649 0)))

(declare-fun b!2326557 () Bool)

(assert (=> b!2326557 (= e!1490649 (+ 1 (size!21974 (t!207498 lt!861678))))))

(assert (= (and d!688923 c!369488) b!2326556))

(assert (= (and d!688923 (not c!369488)) b!2326557))

(declare-fun m!2757639 () Bool)

(assert (=> b!2326557 m!2757639))

(assert (=> b!2326456 d!688923))

(declare-fun d!688925 () Bool)

(declare-fun lt!861697 () Int)

(assert (=> d!688925 (>= lt!861697 0)))

(declare-fun e!1490650 () Int)

(assert (=> d!688925 (= lt!861697 e!1490650)))

(declare-fun c!369489 () Bool)

(assert (=> d!688925 (= c!369489 ((_ is Nil!27698) (slice!731 l!2797 0 i!741)))))

(assert (=> d!688925 (= (size!21974 (slice!731 l!2797 0 i!741)) lt!861697)))

(declare-fun b!2326558 () Bool)

(assert (=> b!2326558 (= e!1490650 0)))

(declare-fun b!2326559 () Bool)

(assert (=> b!2326559 (= e!1490650 (+ 1 (size!21974 (t!207498 (slice!731 l!2797 0 i!741)))))))

(assert (= (and d!688925 c!369489) b!2326558))

(assert (= (and d!688925 (not c!369489)) b!2326559))

(assert (=> b!2326559 m!2757633))

(assert (=> b!2326456 d!688925))

(declare-fun d!688927 () Bool)

(declare-fun lt!861698 () Int)

(assert (=> d!688927 (>= lt!861698 0)))

(declare-fun e!1490651 () Int)

(assert (=> d!688927 (= lt!861698 e!1490651)))

(declare-fun c!369490 () Bool)

(assert (=> d!688927 (= c!369490 ((_ is Nil!27698) (slice!731 l!2797 i!741 lt!861675)))))

(assert (=> d!688927 (= (size!21974 (slice!731 l!2797 i!741 lt!861675)) lt!861698)))

(declare-fun b!2326560 () Bool)

(assert (=> b!2326560 (= e!1490651 0)))

(declare-fun b!2326561 () Bool)

(assert (=> b!2326561 (= e!1490651 (+ 1 (size!21974 (t!207498 (slice!731 l!2797 i!741 lt!861675)))))))

(assert (= (and d!688927 c!369490) b!2326560))

(assert (= (and d!688927 (not c!369490)) b!2326561))

(declare-fun m!2757641 () Bool)

(assert (=> b!2326561 m!2757641))

(assert (=> b!2326456 d!688927))

(declare-fun b!2326562 () Bool)

(declare-fun e!1490653 () Int)

(assert (=> b!2326562 (= e!1490653 (- lt!861675 i!741))))

(declare-fun b!2326563 () Bool)

(declare-fun e!1490652 () Int)

(assert (=> b!2326563 (= e!1490652 0)))

(declare-fun b!2326564 () Bool)

(assert (=> b!2326564 (= e!1490653 (size!21974 (drop!1517 l!2797 i!741)))))

(declare-fun b!2326565 () Bool)

(assert (=> b!2326565 (= e!1490652 e!1490653)))

(declare-fun c!369493 () Bool)

(assert (=> b!2326565 (= c!369493 (>= (- lt!861675 i!741) (size!21974 (drop!1517 l!2797 i!741))))))

(declare-fun b!2326567 () Bool)

(declare-fun e!1490655 () List!27796)

(assert (=> b!2326567 (= e!1490655 (Cons!27698 (h!33099 (drop!1517 l!2797 i!741)) (take!496 (t!207498 (drop!1517 l!2797 i!741)) (- (- lt!861675 i!741) 1))))))

(declare-fun b!2326568 () Bool)

(assert (=> b!2326568 (= e!1490655 Nil!27698)))

(declare-fun b!2326566 () Bool)

(declare-fun e!1490654 () Bool)

(declare-fun lt!861699 () List!27796)

(assert (=> b!2326566 (= e!1490654 (= (size!21974 lt!861699) e!1490652))))

(declare-fun c!369491 () Bool)

(assert (=> b!2326566 (= c!369491 (<= (- lt!861675 i!741) 0))))

(declare-fun d!688929 () Bool)

(assert (=> d!688929 e!1490654))

(declare-fun res!993609 () Bool)

(assert (=> d!688929 (=> (not res!993609) (not e!1490654))))

(assert (=> d!688929 (= res!993609 (= ((_ map implies) (content!3755 lt!861699) (content!3755 (drop!1517 l!2797 i!741))) ((as const (InoxSet T!44118)) true)))))

(assert (=> d!688929 (= lt!861699 e!1490655)))

(declare-fun c!369492 () Bool)

(assert (=> d!688929 (= c!369492 (or ((_ is Nil!27698) (drop!1517 l!2797 i!741)) (<= (- lt!861675 i!741) 0)))))

(assert (=> d!688929 (= (take!496 (drop!1517 l!2797 i!741) (- lt!861675 i!741)) lt!861699)))

(assert (= (and d!688929 c!369492) b!2326568))

(assert (= (and d!688929 (not c!369492)) b!2326567))

(assert (= (and d!688929 res!993609) b!2326566))

(assert (= (and b!2326566 c!369491) b!2326563))

(assert (= (and b!2326566 (not c!369491)) b!2326565))

(assert (= (and b!2326565 c!369493) b!2326564))

(assert (= (and b!2326565 (not c!369493)) b!2326562))

(declare-fun m!2757643 () Bool)

(assert (=> b!2326566 m!2757643))

(assert (=> b!2326564 m!2757569))

(declare-fun m!2757645 () Bool)

(assert (=> b!2326564 m!2757645))

(assert (=> b!2326565 m!2757569))

(assert (=> b!2326565 m!2757645))

(declare-fun m!2757647 () Bool)

(assert (=> b!2326567 m!2757647))

(declare-fun m!2757649 () Bool)

(assert (=> d!688929 m!2757649))

(assert (=> d!688929 m!2757569))

(declare-fun m!2757651 () Bool)

(assert (=> d!688929 m!2757651))

(assert (=> d!688899 d!688929))

(declare-fun b!2326569 () Bool)

(declare-fun e!1490657 () Bool)

(declare-fun lt!861700 () List!27796)

(declare-fun e!1490659 () Int)

(assert (=> b!2326569 (= e!1490657 (= (size!21974 lt!861700) e!1490659))))

(declare-fun c!369496 () Bool)

(assert (=> b!2326569 (= c!369496 (<= i!741 0))))

(declare-fun b!2326570 () Bool)

(declare-fun e!1490658 () List!27796)

(assert (=> b!2326570 (= e!1490658 Nil!27698)))

(declare-fun b!2326571 () Bool)

(declare-fun e!1490656 () Int)

(assert (=> b!2326571 (= e!1490656 0)))

(declare-fun b!2326572 () Bool)

(declare-fun e!1490660 () List!27796)

(assert (=> b!2326572 (= e!1490660 (drop!1517 (t!207498 l!2797) (- i!741 1)))))

(declare-fun b!2326573 () Bool)

(assert (=> b!2326573 (= e!1490658 e!1490660)))

(declare-fun c!369497 () Bool)

(assert (=> b!2326573 (= c!369497 (<= i!741 0))))

(declare-fun b!2326574 () Bool)

(declare-fun call!138950 () Int)

(assert (=> b!2326574 (= e!1490659 call!138950)))

(declare-fun b!2326575 () Bool)

(assert (=> b!2326575 (= e!1490659 e!1490656)))

(declare-fun c!369495 () Bool)

(assert (=> b!2326575 (= c!369495 (>= i!741 call!138950))))

(declare-fun b!2326576 () Bool)

(assert (=> b!2326576 (= e!1490660 l!2797)))

(declare-fun d!688931 () Bool)

(assert (=> d!688931 e!1490657))

(declare-fun res!993610 () Bool)

(assert (=> d!688931 (=> (not res!993610) (not e!1490657))))

(assert (=> d!688931 (= res!993610 (= ((_ map implies) (content!3755 lt!861700) (content!3755 l!2797)) ((as const (InoxSet T!44118)) true)))))

(assert (=> d!688931 (= lt!861700 e!1490658)))

(declare-fun c!369494 () Bool)

(assert (=> d!688931 (= c!369494 ((_ is Nil!27698) l!2797))))

(assert (=> d!688931 (= (drop!1517 l!2797 i!741) lt!861700)))

(declare-fun b!2326577 () Bool)

(assert (=> b!2326577 (= e!1490656 (- call!138950 i!741))))

(declare-fun bm!138945 () Bool)

(assert (=> bm!138945 (= call!138950 (size!21974 l!2797))))

(assert (= (and d!688931 c!369494) b!2326570))

(assert (= (and d!688931 (not c!369494)) b!2326573))

(assert (= (and b!2326573 c!369497) b!2326576))

(assert (= (and b!2326573 (not c!369497)) b!2326572))

(assert (= (and d!688931 res!993610) b!2326569))

(assert (= (and b!2326569 c!369496) b!2326574))

(assert (= (and b!2326569 (not c!369496)) b!2326575))

(assert (= (and b!2326575 c!369495) b!2326571))

(assert (= (and b!2326575 (not c!369495)) b!2326577))

(assert (= (or b!2326574 b!2326575 b!2326577) bm!138945))

(declare-fun m!2757653 () Bool)

(assert (=> b!2326569 m!2757653))

(declare-fun m!2757655 () Bool)

(assert (=> b!2326572 m!2757655))

(declare-fun m!2757657 () Bool)

(assert (=> d!688931 m!2757657))

(assert (=> d!688931 m!2757615))

(assert (=> bm!138945 m!2757543))

(assert (=> d!688899 d!688931))

(declare-fun b!2326578 () Bool)

(declare-fun e!1490661 () Bool)

(declare-fun tp!737194 () Bool)

(assert (=> b!2326578 (= e!1490661 (and tp_is_empty!10885 tp!737194))))

(assert (=> b!2326480 (= tp!737190 e!1490661)))

(assert (= (and b!2326480 ((_ is Cons!27698) (t!207498 (t!207498 l!2797)))) b!2326578))

(check-sat (not b!2326531) (not b!2326557) (not bm!138944) (not b!2326510) (not b!2326566) (not b!2326569) (not b!2326509) (not b!2326554) (not bm!138945) (not b!2326551) (not b!2326553) (not b!2326565) tp_is_empty!10885 (not b!2326508) (not b!2326511) (not b!2326564) (not b!2326578) (not d!688911) (not b!2326561) (not b!2326541) (not d!688929) (not d!688921) (not d!688909) (not b!2326567) (not b!2326559) (not b!2326547) (not b!2326549) (not b!2326534) (not d!688931) (not b!2326572))
(check-sat)
