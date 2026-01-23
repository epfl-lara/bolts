; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250764 () Bool)

(assert start!250764)

(declare-fun res!1088615 () Bool)

(declare-fun e!1633489 () Bool)

(assert (=> start!250764 (=> (not res!1088615) (not e!1633489))))

(declare-datatypes ((B!1957 0))(
  ( (B!1958 (val!9446 Int)) )
))
(declare-datatypes ((List!29879 0))(
  ( (Nil!29779) (Cons!29779 (h!35199 B!1957) (t!212892 List!29879)) )
))
(declare-fun l!3230 () List!29879)

(declare-fun noDuplicate!327 (List!29879) Bool)

(assert (=> start!250764 (= res!1088615 (noDuplicate!327 l!3230))))

(assert (=> start!250764 e!1633489))

(declare-fun e!1633491 () Bool)

(assert (=> start!250764 e!1633491))

(declare-fun b!2589608 () Bool)

(declare-fun res!1088610 () Bool)

(assert (=> b!2589608 (=> (not res!1088610) (not e!1633489))))

(get-info :version)

(assert (=> b!2589608 (= res!1088610 ((_ is Cons!29779) l!3230))))

(declare-fun b!2589609 () Bool)

(declare-fun e!1633488 () Bool)

(declare-fun e!1633490 () Bool)

(assert (=> b!2589609 (= e!1633488 e!1633490)))

(declare-fun res!1088609 () Bool)

(assert (=> b!2589609 (=> res!1088609 e!1633490)))

(declare-fun lt!910304 () Int)

(declare-fun size!23092 (List!29879) Int)

(assert (=> b!2589609 (= res!1088609 (not (= (size!23092 l!3230) lt!910304)))))

(declare-fun lt!910305 () Int)

(assert (=> b!2589609 (= lt!910304 (+ 1 lt!910305))))

(declare-fun b!2589610 () Bool)

(declare-fun e!1633493 () Bool)

(declare-fun lt!910301 () List!29879)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910300 () (InoxSet B!1957))

(declare-fun content!4120 (List!29879) (InoxSet B!1957))

(assert (=> b!2589610 (= e!1633493 (= ((_ map implies) (content!4120 lt!910301) lt!910300) ((as const (InoxSet B!1957)) true)))))

(declare-fun b!2589611 () Bool)

(declare-fun e!1633487 () Bool)

(assert (=> b!2589611 (= e!1633487 e!1633493)))

(declare-fun res!1088616 () Bool)

(assert (=> b!2589611 (=> res!1088616 e!1633493)))

(declare-fun lt!910306 () (InoxSet B!1957))

(assert (=> b!2589611 (= res!1088616 (not (= lt!910306 lt!910300)))))

(assert (=> b!2589611 (= lt!910300 (content!4120 l!3230))))

(declare-fun b!2589612 () Bool)

(declare-fun tp_is_empty!13237 () Bool)

(declare-fun tp!822534 () Bool)

(assert (=> b!2589612 (= e!1633491 (and tp_is_empty!13237 tp!822534))))

(declare-fun b!2589613 () Bool)

(declare-fun e!1633492 () Bool)

(assert (=> b!2589613 (= e!1633490 e!1633492)))

(declare-fun res!1088614 () Bool)

(assert (=> b!2589613 (=> res!1088614 e!1633492)))

(assert (=> b!2589613 (= res!1088614 (not (= (content!4120 l!3230) lt!910306)))))

(declare-fun lt!910307 () (InoxSet B!1957))

(assert (=> b!2589613 (= lt!910306 ((_ map or) lt!910307 (store ((as const (Array B!1957 Bool)) false) (h!35199 l!3230) true)))))

(declare-fun b!2589614 () Bool)

(declare-fun res!1088613 () Bool)

(assert (=> b!2589614 (=> res!1088613 e!1633488)))

(assert (=> b!2589614 (= res!1088613 (select lt!910307 (h!35199 l!3230)))))

(declare-fun b!2589615 () Bool)

(assert (=> b!2589615 (= e!1633489 (not e!1633488))))

(declare-fun res!1088611 () Bool)

(assert (=> b!2589615 (=> res!1088611 e!1633488)))

(declare-fun lt!910303 () Int)

(assert (=> b!2589615 (= res!1088611 (>= lt!910303 (size!23092 l!3230)))))

(assert (=> b!2589615 (= lt!910303 lt!910305)))

(assert (=> b!2589615 (= lt!910305 (size!23092 (t!212892 l!3230)))))

(declare-fun toList!1730 ((InoxSet B!1957)) List!29879)

(assert (=> b!2589615 (= lt!910303 (size!23092 (toList!1730 lt!910307)))))

(assert (=> b!2589615 (= lt!910307 (content!4120 (t!212892 l!3230)))))

(declare-datatypes ((Unit!43646 0))(
  ( (Unit!43647) )
))
(declare-fun lt!910302 () Unit!43646)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!20 (List!29879) Unit!43646)

(assert (=> b!2589615 (= lt!910302 (lemmaNoDuplicateThenContentToListSameSize!20 (t!212892 l!3230)))))

(declare-fun b!2589616 () Bool)

(assert (=> b!2589616 (= e!1633492 e!1633487)))

(declare-fun res!1088612 () Bool)

(assert (=> b!2589616 (=> res!1088612 e!1633487)))

(assert (=> b!2589616 (= res!1088612 (>= (size!23092 lt!910301) lt!910304))))

(assert (=> b!2589616 (= lt!910301 (toList!1730 lt!910306))))

(declare-fun b!2589617 () Bool)

(declare-fun res!1088617 () Bool)

(assert (=> b!2589617 (=> res!1088617 e!1633488)))

(declare-fun contains!5331 (List!29879 B!1957) Bool)

(assert (=> b!2589617 (= res!1088617 (contains!5331 (t!212892 l!3230) (h!35199 l!3230)))))

(assert (= (and start!250764 res!1088615) b!2589608))

(assert (= (and b!2589608 res!1088610) b!2589615))

(assert (= (and b!2589615 (not res!1088611)) b!2589614))

(assert (= (and b!2589614 (not res!1088613)) b!2589617))

(assert (= (and b!2589617 (not res!1088617)) b!2589609))

(assert (= (and b!2589609 (not res!1088609)) b!2589613))

(assert (= (and b!2589613 (not res!1088614)) b!2589616))

(assert (= (and b!2589616 (not res!1088612)) b!2589611))

(assert (= (and b!2589611 (not res!1088616)) b!2589610))

(assert (= (and start!250764 ((_ is Cons!29779) l!3230)) b!2589612))

(declare-fun m!2925737 () Bool)

(assert (=> b!2589614 m!2925737))

(declare-fun m!2925739 () Bool)

(assert (=> b!2589615 m!2925739))

(declare-fun m!2925741 () Bool)

(assert (=> b!2589615 m!2925741))

(declare-fun m!2925743 () Bool)

(assert (=> b!2589615 m!2925743))

(assert (=> b!2589615 m!2925741))

(declare-fun m!2925745 () Bool)

(assert (=> b!2589615 m!2925745))

(declare-fun m!2925747 () Bool)

(assert (=> b!2589615 m!2925747))

(declare-fun m!2925749 () Bool)

(assert (=> b!2589615 m!2925749))

(declare-fun m!2925751 () Bool)

(assert (=> b!2589610 m!2925751))

(assert (=> b!2589609 m!2925739))

(declare-fun m!2925753 () Bool)

(assert (=> b!2589613 m!2925753))

(declare-fun m!2925755 () Bool)

(assert (=> b!2589613 m!2925755))

(declare-fun m!2925757 () Bool)

(assert (=> b!2589616 m!2925757))

(declare-fun m!2925759 () Bool)

(assert (=> b!2589616 m!2925759))

(declare-fun m!2925761 () Bool)

(assert (=> b!2589617 m!2925761))

(assert (=> b!2589611 m!2925753))

(declare-fun m!2925763 () Bool)

(assert (=> start!250764 m!2925763))

(check-sat (not b!2589616) (not b!2589609) (not b!2589610) (not b!2589617) (not b!2589615) (not b!2589613) tp_is_empty!13237 (not b!2589612) (not start!250764) (not b!2589611))
(check-sat)
(get-model)

(declare-fun d!733657 () Bool)

(declare-fun lt!910313 () Bool)

(assert (=> d!733657 (= lt!910313 (select (content!4120 (t!212892 l!3230)) (h!35199 l!3230)))))

(declare-fun e!1633501 () Bool)

(assert (=> d!733657 (= lt!910313 e!1633501)))

(declare-fun res!1088622 () Bool)

(assert (=> d!733657 (=> (not res!1088622) (not e!1633501))))

(assert (=> d!733657 (= res!1088622 ((_ is Cons!29779) (t!212892 l!3230)))))

(assert (=> d!733657 (= (contains!5331 (t!212892 l!3230) (h!35199 l!3230)) lt!910313)))

(declare-fun b!2589628 () Bool)

(declare-fun e!1633502 () Bool)

(assert (=> b!2589628 (= e!1633501 e!1633502)))

(declare-fun res!1088623 () Bool)

(assert (=> b!2589628 (=> res!1088623 e!1633502)))

(assert (=> b!2589628 (= res!1088623 (= (h!35199 (t!212892 l!3230)) (h!35199 l!3230)))))

(declare-fun b!2589629 () Bool)

(assert (=> b!2589629 (= e!1633502 (contains!5331 (t!212892 (t!212892 l!3230)) (h!35199 l!3230)))))

(assert (= (and d!733657 res!1088622) b!2589628))

(assert (= (and b!2589628 (not res!1088623)) b!2589629))

(assert (=> d!733657 m!2925747))

(declare-fun m!2925767 () Bool)

(assert (=> d!733657 m!2925767))

(declare-fun m!2925769 () Bool)

(assert (=> b!2589629 m!2925769))

(assert (=> b!2589617 d!733657))

(declare-fun d!733663 () Bool)

(declare-fun lt!910319 () Int)

(assert (=> d!733663 (>= lt!910319 0)))

(declare-fun e!1633508 () Int)

(assert (=> d!733663 (= lt!910319 e!1633508)))

(declare-fun c!417536 () Bool)

(assert (=> d!733663 (= c!417536 ((_ is Nil!29779) lt!910301))))

(assert (=> d!733663 (= (size!23092 lt!910301) lt!910319)))

(declare-fun b!2589637 () Bool)

(assert (=> b!2589637 (= e!1633508 0)))

(declare-fun b!2589638 () Bool)

(assert (=> b!2589638 (= e!1633508 (+ 1 (size!23092 (t!212892 lt!910301))))))

(assert (= (and d!733663 c!417536) b!2589637))

(assert (= (and d!733663 (not c!417536)) b!2589638))

(declare-fun m!2925777 () Bool)

(assert (=> b!2589638 m!2925777))

(assert (=> b!2589616 d!733663))

(declare-fun d!733667 () Bool)

(declare-fun e!1633514 () Bool)

(assert (=> d!733667 e!1633514))

(declare-fun res!1088629 () Bool)

(assert (=> d!733667 (=> (not res!1088629) (not e!1633514))))

(declare-fun lt!910322 () List!29879)

(assert (=> d!733667 (= res!1088629 (noDuplicate!327 lt!910322))))

(declare-fun choose!15269 ((InoxSet B!1957)) List!29879)

(assert (=> d!733667 (= lt!910322 (choose!15269 lt!910306))))

(assert (=> d!733667 (= (toList!1730 lt!910306) lt!910322)))

(declare-fun b!2589647 () Bool)

(assert (=> b!2589647 (= e!1633514 (= (content!4120 lt!910322) lt!910306))))

(assert (= (and d!733667 res!1088629) b!2589647))

(declare-fun m!2925779 () Bool)

(assert (=> d!733667 m!2925779))

(declare-fun m!2925781 () Bool)

(assert (=> d!733667 m!2925781))

(declare-fun m!2925783 () Bool)

(assert (=> b!2589647 m!2925783))

(assert (=> b!2589616 d!733667))

(declare-fun d!733671 () Bool)

(declare-fun res!1088640 () Bool)

(declare-fun e!1633525 () Bool)

(assert (=> d!733671 (=> res!1088640 e!1633525)))

(assert (=> d!733671 (= res!1088640 ((_ is Nil!29779) l!3230))))

(assert (=> d!733671 (= (noDuplicate!327 l!3230) e!1633525)))

(declare-fun b!2589659 () Bool)

(declare-fun e!1633527 () Bool)

(assert (=> b!2589659 (= e!1633525 e!1633527)))

(declare-fun res!1088641 () Bool)

(assert (=> b!2589659 (=> (not res!1088641) (not e!1633527))))

(assert (=> b!2589659 (= res!1088641 (not (contains!5331 (t!212892 l!3230) (h!35199 l!3230))))))

(declare-fun b!2589661 () Bool)

(assert (=> b!2589661 (= e!1633527 (noDuplicate!327 (t!212892 l!3230)))))

(assert (= (and d!733671 (not res!1088640)) b!2589659))

(assert (= (and b!2589659 res!1088641) b!2589661))

(assert (=> b!2589659 m!2925761))

(declare-fun m!2925793 () Bool)

(assert (=> b!2589661 m!2925793))

(assert (=> start!250764 d!733671))

(declare-fun d!733677 () Bool)

(declare-fun c!417546 () Bool)

(assert (=> d!733677 (= c!417546 ((_ is Nil!29779) l!3230))))

(declare-fun e!1633533 () (InoxSet B!1957))

(assert (=> d!733677 (= (content!4120 l!3230) e!1633533)))

(declare-fun b!2589672 () Bool)

(assert (=> b!2589672 (= e!1633533 ((as const (Array B!1957 Bool)) false))))

(declare-fun b!2589673 () Bool)

(assert (=> b!2589673 (= e!1633533 ((_ map or) (store ((as const (Array B!1957 Bool)) false) (h!35199 l!3230) true) (content!4120 (t!212892 l!3230))))))

(assert (= (and d!733677 c!417546) b!2589672))

(assert (= (and d!733677 (not c!417546)) b!2589673))

(assert (=> b!2589673 m!2925755))

(assert (=> b!2589673 m!2925747))

(assert (=> b!2589611 d!733677))

(declare-fun d!733685 () Bool)

(declare-fun lt!910328 () Int)

(assert (=> d!733685 (>= lt!910328 0)))

(declare-fun e!1633534 () Int)

(assert (=> d!733685 (= lt!910328 e!1633534)))

(declare-fun c!417547 () Bool)

(assert (=> d!733685 (= c!417547 ((_ is Nil!29779) l!3230))))

(assert (=> d!733685 (= (size!23092 l!3230) lt!910328)))

(declare-fun b!2589674 () Bool)

(assert (=> b!2589674 (= e!1633534 0)))

(declare-fun b!2589675 () Bool)

(assert (=> b!2589675 (= e!1633534 (+ 1 (size!23092 (t!212892 l!3230))))))

(assert (= (and d!733685 c!417547) b!2589674))

(assert (= (and d!733685 (not c!417547)) b!2589675))

(assert (=> b!2589675 m!2925745))

(assert (=> b!2589609 d!733685))

(declare-fun d!733687 () Bool)

(declare-fun c!417548 () Bool)

(assert (=> d!733687 (= c!417548 ((_ is Nil!29779) lt!910301))))

(declare-fun e!1633535 () (InoxSet B!1957))

(assert (=> d!733687 (= (content!4120 lt!910301) e!1633535)))

(declare-fun b!2589676 () Bool)

(assert (=> b!2589676 (= e!1633535 ((as const (Array B!1957 Bool)) false))))

(declare-fun b!2589677 () Bool)

(assert (=> b!2589677 (= e!1633535 ((_ map or) (store ((as const (Array B!1957 Bool)) false) (h!35199 lt!910301) true) (content!4120 (t!212892 lt!910301))))))

(assert (= (and d!733687 c!417548) b!2589676))

(assert (= (and d!733687 (not c!417548)) b!2589677))

(declare-fun m!2925801 () Bool)

(assert (=> b!2589677 m!2925801))

(declare-fun m!2925803 () Bool)

(assert (=> b!2589677 m!2925803))

(assert (=> b!2589610 d!733687))

(declare-fun d!733689 () Bool)

(declare-fun e!1633536 () Bool)

(assert (=> d!733689 e!1633536))

(declare-fun res!1088642 () Bool)

(assert (=> d!733689 (=> (not res!1088642) (not e!1633536))))

(declare-fun lt!910329 () List!29879)

(assert (=> d!733689 (= res!1088642 (noDuplicate!327 lt!910329))))

(assert (=> d!733689 (= lt!910329 (choose!15269 lt!910307))))

(assert (=> d!733689 (= (toList!1730 lt!910307) lt!910329)))

(declare-fun b!2589678 () Bool)

(assert (=> b!2589678 (= e!1633536 (= (content!4120 lt!910329) lt!910307))))

(assert (= (and d!733689 res!1088642) b!2589678))

(declare-fun m!2925805 () Bool)

(assert (=> d!733689 m!2925805))

(declare-fun m!2925807 () Bool)

(assert (=> d!733689 m!2925807))

(declare-fun m!2925809 () Bool)

(assert (=> b!2589678 m!2925809))

(assert (=> b!2589615 d!733689))

(assert (=> b!2589615 d!733685))

(declare-fun d!733691 () Bool)

(declare-fun lt!910332 () Int)

(assert (=> d!733691 (>= lt!910332 0)))

(declare-fun e!1633537 () Int)

(assert (=> d!733691 (= lt!910332 e!1633537)))

(declare-fun c!417549 () Bool)

(assert (=> d!733691 (= c!417549 ((_ is Nil!29779) (toList!1730 lt!910307)))))

(assert (=> d!733691 (= (size!23092 (toList!1730 lt!910307)) lt!910332)))

(declare-fun b!2589679 () Bool)

(assert (=> b!2589679 (= e!1633537 0)))

(declare-fun b!2589680 () Bool)

(assert (=> b!2589680 (= e!1633537 (+ 1 (size!23092 (t!212892 (toList!1730 lt!910307)))))))

(assert (= (and d!733691 c!417549) b!2589679))

(assert (= (and d!733691 (not c!417549)) b!2589680))

(declare-fun m!2925811 () Bool)

(assert (=> b!2589680 m!2925811))

(assert (=> b!2589615 d!733691))

(declare-fun d!733693 () Bool)

(declare-fun lt!910333 () Int)

(assert (=> d!733693 (>= lt!910333 0)))

(declare-fun e!1633538 () Int)

(assert (=> d!733693 (= lt!910333 e!1633538)))

(declare-fun c!417550 () Bool)

(assert (=> d!733693 (= c!417550 ((_ is Nil!29779) (t!212892 l!3230)))))

(assert (=> d!733693 (= (size!23092 (t!212892 l!3230)) lt!910333)))

(declare-fun b!2589681 () Bool)

(assert (=> b!2589681 (= e!1633538 0)))

(declare-fun b!2589682 () Bool)

(assert (=> b!2589682 (= e!1633538 (+ 1 (size!23092 (t!212892 (t!212892 l!3230)))))))

(assert (= (and d!733693 c!417550) b!2589681))

(assert (= (and d!733693 (not c!417550)) b!2589682))

(declare-fun m!2925813 () Bool)

(assert (=> b!2589682 m!2925813))

(assert (=> b!2589615 d!733693))

(declare-fun d!733695 () Bool)

(declare-fun c!417551 () Bool)

(assert (=> d!733695 (= c!417551 ((_ is Nil!29779) (t!212892 l!3230)))))

(declare-fun e!1633539 () (InoxSet B!1957))

(assert (=> d!733695 (= (content!4120 (t!212892 l!3230)) e!1633539)))

(declare-fun b!2589683 () Bool)

(assert (=> b!2589683 (= e!1633539 ((as const (Array B!1957 Bool)) false))))

(declare-fun b!2589684 () Bool)

(assert (=> b!2589684 (= e!1633539 ((_ map or) (store ((as const (Array B!1957 Bool)) false) (h!35199 (t!212892 l!3230)) true) (content!4120 (t!212892 (t!212892 l!3230)))))))

(assert (= (and d!733695 c!417551) b!2589683))

(assert (= (and d!733695 (not c!417551)) b!2589684))

(declare-fun m!2925815 () Bool)

(assert (=> b!2589684 m!2925815))

(declare-fun m!2925817 () Bool)

(assert (=> b!2589684 m!2925817))

(assert (=> b!2589615 d!733695))

(declare-fun d!733697 () Bool)

(assert (=> d!733697 (= (size!23092 (toList!1730 (content!4120 (t!212892 l!3230)))) (size!23092 (t!212892 l!3230)))))

(declare-fun lt!910339 () Unit!43646)

(declare-fun choose!15271 (List!29879) Unit!43646)

(assert (=> d!733697 (= lt!910339 (choose!15271 (t!212892 l!3230)))))

(assert (=> d!733697 (noDuplicate!327 (t!212892 l!3230))))

(assert (=> d!733697 (= (lemmaNoDuplicateThenContentToListSameSize!20 (t!212892 l!3230)) lt!910339)))

(declare-fun bs!472070 () Bool)

(assert (= bs!472070 d!733697))

(declare-fun m!2925835 () Bool)

(assert (=> bs!472070 m!2925835))

(declare-fun m!2925837 () Bool)

(assert (=> bs!472070 m!2925837))

(assert (=> bs!472070 m!2925747))

(assert (=> bs!472070 m!2925793))

(assert (=> bs!472070 m!2925747))

(assert (=> bs!472070 m!2925835))

(declare-fun m!2925839 () Bool)

(assert (=> bs!472070 m!2925839))

(assert (=> bs!472070 m!2925745))

(assert (=> b!2589615 d!733697))

(assert (=> b!2589613 d!733677))

(declare-fun b!2589702 () Bool)

(declare-fun e!1633552 () Bool)

(declare-fun tp!822539 () Bool)

(assert (=> b!2589702 (= e!1633552 (and tp_is_empty!13237 tp!822539))))

(assert (=> b!2589612 (= tp!822534 e!1633552)))

(assert (= (and b!2589612 ((_ is Cons!29779) (t!212892 l!3230))) b!2589702))

(check-sat (not b!2589678) (not d!733689) (not b!2589684) (not b!2589675) (not b!2589647) (not b!2589702) (not d!733657) (not d!733667) (not b!2589677) (not b!2589682) (not b!2589629) (not b!2589638) (not d!733697) (not b!2589680) (not b!2589673) (not b!2589661) tp_is_empty!13237 (not b!2589659))
(check-sat)
