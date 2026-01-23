; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739064 () Bool)

(assert start!739064)

(declare-fun b!7754514 () Bool)

(declare-fun e!4596657 () Bool)

(declare-fun tp_is_empty!51613 () Bool)

(declare-fun tp!2275355 () Bool)

(assert (=> b!7754514 (= e!4596657 (and tp_is_empty!51613 tp!2275355))))

(declare-fun b!7754515 () Bool)

(declare-fun res!3091762 () Bool)

(declare-fun e!4596659 () Bool)

(assert (=> b!7754515 (=> (not res!3091762) (not e!4596659))))

(declare-datatypes ((C!41584 0))(
  ( (C!41585 (val!31232 Int)) )
))
(declare-datatypes ((List!73474 0))(
  ( (Nil!73350) (Cons!73350 (h!79798 C!41584) (t!388209 List!73474)) )
))
(declare-fun s2!3712 () List!73474)

(declare-fun s1!4090 () List!73474)

(declare-fun s!14266 () List!73474)

(declare-fun ++!17810 (List!73474 List!73474) List!73474)

(assert (=> b!7754515 (= res!3091762 (= s!14266 (++!17810 s1!4090 s2!3712)))))

(declare-fun b!7754516 () Bool)

(declare-fun e!4596658 () Bool)

(assert (=> b!7754516 (= e!4596658 tp_is_empty!51613)))

(declare-fun b!7754517 () Bool)

(declare-fun e!4596660 () Bool)

(declare-fun tp!2275362 () Bool)

(assert (=> b!7754517 (= e!4596660 (and tp_is_empty!51613 tp!2275362))))

(declare-fun b!7754518 () Bool)

(declare-fun e!4596656 () Bool)

(declare-fun tp!2275354 () Bool)

(assert (=> b!7754518 (= e!4596656 tp!2275354)))

(declare-fun b!7754519 () Bool)

(declare-fun tp!2275351 () Bool)

(declare-fun tp!2275363 () Bool)

(assert (=> b!7754519 (= e!4596656 (and tp!2275351 tp!2275363))))

(declare-fun b!7754520 () Bool)

(assert (=> b!7754520 (= e!4596659 (not (= (++!17810 Nil!73350 s!14266) s!14266)))))

(declare-fun b!7754521 () Bool)

(assert (=> b!7754521 (= e!4596656 tp_is_empty!51613)))

(declare-fun b!7754522 () Bool)

(declare-fun res!3091760 () Bool)

(assert (=> b!7754522 (=> (not res!3091760) (not e!4596659))))

(declare-datatypes ((Regex!20629 0))(
  ( (ElementMatch!20629 (c!1430230 C!41584)) (Concat!29474 (regOne!41770 Regex!20629) (regTwo!41770 Regex!20629)) (EmptyExpr!20629) (Star!20629 (reg!20958 Regex!20629)) (EmptyLang!20629) (Union!20629 (regOne!41771 Regex!20629) (regTwo!41771 Regex!20629)) )
))
(declare-fun r2!6187 () Regex!20629)

(declare-fun validRegex!11047 (Regex!20629) Bool)

(assert (=> b!7754522 (= res!3091760 (validRegex!11047 r2!6187))))

(declare-fun res!3091761 () Bool)

(assert (=> start!739064 (=> (not res!3091761) (not e!4596659))))

(declare-fun r1!6249 () Regex!20629)

(assert (=> start!739064 (= res!3091761 (validRegex!11047 r1!6249))))

(assert (=> start!739064 e!4596659))

(declare-fun e!4596661 () Bool)

(assert (=> start!739064 e!4596661))

(assert (=> start!739064 e!4596657))

(assert (=> start!739064 e!4596660))

(assert (=> start!739064 e!4596656))

(assert (=> start!739064 e!4596658))

(declare-fun b!7754523 () Bool)

(declare-fun tp!2275360 () Bool)

(declare-fun tp!2275356 () Bool)

(assert (=> b!7754523 (= e!4596658 (and tp!2275360 tp!2275356))))

(declare-fun b!7754524 () Bool)

(declare-fun tp!2275359 () Bool)

(assert (=> b!7754524 (= e!4596658 tp!2275359)))

(declare-fun b!7754525 () Bool)

(declare-fun tp!2275352 () Bool)

(declare-fun tp!2275361 () Bool)

(assert (=> b!7754525 (= e!4596658 (and tp!2275352 tp!2275361))))

(declare-fun b!7754526 () Bool)

(declare-fun tp!2275358 () Bool)

(assert (=> b!7754526 (= e!4596661 (and tp_is_empty!51613 tp!2275358))))

(declare-fun b!7754527 () Bool)

(declare-fun tp!2275353 () Bool)

(declare-fun tp!2275357 () Bool)

(assert (=> b!7754527 (= e!4596656 (and tp!2275353 tp!2275357))))

(assert (= (and start!739064 res!3091761) b!7754522))

(assert (= (and b!7754522 res!3091760) b!7754515))

(assert (= (and b!7754515 res!3091762) b!7754520))

(get-info :version)

(assert (= (and start!739064 ((_ is Cons!73350) s!14266)) b!7754526))

(assert (= (and start!739064 ((_ is Cons!73350) s2!3712)) b!7754514))

(assert (= (and start!739064 ((_ is Cons!73350) s1!4090)) b!7754517))

(assert (= (and start!739064 ((_ is ElementMatch!20629) r1!6249)) b!7754521))

(assert (= (and start!739064 ((_ is Concat!29474) r1!6249)) b!7754527))

(assert (= (and start!739064 ((_ is Star!20629) r1!6249)) b!7754518))

(assert (= (and start!739064 ((_ is Union!20629) r1!6249)) b!7754519))

(assert (= (and start!739064 ((_ is ElementMatch!20629) r2!6187)) b!7754516))

(assert (= (and start!739064 ((_ is Concat!29474) r2!6187)) b!7754525))

(assert (= (and start!739064 ((_ is Star!20629) r2!6187)) b!7754524))

(assert (= (and start!739064 ((_ is Union!20629) r2!6187)) b!7754523))

(declare-fun m!8218374 () Bool)

(assert (=> b!7754515 m!8218374))

(declare-fun m!8218376 () Bool)

(assert (=> b!7754520 m!8218376))

(declare-fun m!8218378 () Bool)

(assert (=> b!7754522 m!8218378))

(declare-fun m!8218380 () Bool)

(assert (=> start!739064 m!8218380))

(check-sat tp_is_empty!51613 (not b!7754517) (not start!739064) (not b!7754519) (not b!7754525) (not b!7754523) (not b!7754524) (not b!7754526) (not b!7754522) (not b!7754518) (not b!7754515) (not b!7754520) (not b!7754527) (not b!7754514))
(check-sat)
(get-model)

(declare-fun b!7754551 () Bool)

(declare-fun e!4596673 () Bool)

(declare-fun lt!2669666 () List!73474)

(assert (=> b!7754551 (= e!4596673 (or (not (= s2!3712 Nil!73350)) (= lt!2669666 s1!4090)))))

(declare-fun b!7754549 () Bool)

(declare-fun e!4596672 () List!73474)

(assert (=> b!7754549 (= e!4596672 (Cons!73350 (h!79798 s1!4090) (++!17810 (t!388209 s1!4090) s2!3712)))))

(declare-fun d!2343234 () Bool)

(assert (=> d!2343234 e!4596673))

(declare-fun res!3091773 () Bool)

(assert (=> d!2343234 (=> (not res!3091773) (not e!4596673))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15557 (List!73474) (InoxSet C!41584))

(assert (=> d!2343234 (= res!3091773 (= (content!15557 lt!2669666) ((_ map or) (content!15557 s1!4090) (content!15557 s2!3712))))))

(assert (=> d!2343234 (= lt!2669666 e!4596672)))

(declare-fun c!1430236 () Bool)

(assert (=> d!2343234 (= c!1430236 ((_ is Nil!73350) s1!4090))))

(assert (=> d!2343234 (= (++!17810 s1!4090 s2!3712) lt!2669666)))

(declare-fun b!7754550 () Bool)

(declare-fun res!3091774 () Bool)

(assert (=> b!7754550 (=> (not res!3091774) (not e!4596673))))

(declare-fun size!42660 (List!73474) Int)

(assert (=> b!7754550 (= res!3091774 (= (size!42660 lt!2669666) (+ (size!42660 s1!4090) (size!42660 s2!3712))))))

(declare-fun b!7754548 () Bool)

(assert (=> b!7754548 (= e!4596672 s2!3712)))

(assert (= (and d!2343234 c!1430236) b!7754548))

(assert (= (and d!2343234 (not c!1430236)) b!7754549))

(assert (= (and d!2343234 res!3091773) b!7754550))

(assert (= (and b!7754550 res!3091774) b!7754551))

(declare-fun m!8218396 () Bool)

(assert (=> b!7754549 m!8218396))

(declare-fun m!8218398 () Bool)

(assert (=> d!2343234 m!8218398))

(declare-fun m!8218400 () Bool)

(assert (=> d!2343234 m!8218400))

(declare-fun m!8218402 () Bool)

(assert (=> d!2343234 m!8218402))

(declare-fun m!8218404 () Bool)

(assert (=> b!7754550 m!8218404))

(declare-fun m!8218406 () Bool)

(assert (=> b!7754550 m!8218406))

(declare-fun m!8218408 () Bool)

(assert (=> b!7754550 m!8218408))

(assert (=> b!7754515 d!2343234))

(declare-fun b!7754555 () Bool)

(declare-fun e!4596675 () Bool)

(declare-fun lt!2669667 () List!73474)

(assert (=> b!7754555 (= e!4596675 (or (not (= s!14266 Nil!73350)) (= lt!2669667 Nil!73350)))))

(declare-fun b!7754553 () Bool)

(declare-fun e!4596674 () List!73474)

(assert (=> b!7754553 (= e!4596674 (Cons!73350 (h!79798 Nil!73350) (++!17810 (t!388209 Nil!73350) s!14266)))))

(declare-fun d!2343240 () Bool)

(assert (=> d!2343240 e!4596675))

(declare-fun res!3091775 () Bool)

(assert (=> d!2343240 (=> (not res!3091775) (not e!4596675))))

(assert (=> d!2343240 (= res!3091775 (= (content!15557 lt!2669667) ((_ map or) (content!15557 Nil!73350) (content!15557 s!14266))))))

(assert (=> d!2343240 (= lt!2669667 e!4596674)))

(declare-fun c!1430237 () Bool)

(assert (=> d!2343240 (= c!1430237 ((_ is Nil!73350) Nil!73350))))

(assert (=> d!2343240 (= (++!17810 Nil!73350 s!14266) lt!2669667)))

(declare-fun b!7754554 () Bool)

(declare-fun res!3091776 () Bool)

(assert (=> b!7754554 (=> (not res!3091776) (not e!4596675))))

(assert (=> b!7754554 (= res!3091776 (= (size!42660 lt!2669667) (+ (size!42660 Nil!73350) (size!42660 s!14266))))))

(declare-fun b!7754552 () Bool)

(assert (=> b!7754552 (= e!4596674 s!14266)))

(assert (= (and d!2343240 c!1430237) b!7754552))

(assert (= (and d!2343240 (not c!1430237)) b!7754553))

(assert (= (and d!2343240 res!3091775) b!7754554))

(assert (= (and b!7754554 res!3091776) b!7754555))

(declare-fun m!8218410 () Bool)

(assert (=> b!7754553 m!8218410))

(declare-fun m!8218412 () Bool)

(assert (=> d!2343240 m!8218412))

(declare-fun m!8218414 () Bool)

(assert (=> d!2343240 m!8218414))

(declare-fun m!8218416 () Bool)

(assert (=> d!2343240 m!8218416))

(declare-fun m!8218418 () Bool)

(assert (=> b!7754554 m!8218418))

(declare-fun m!8218420 () Bool)

(assert (=> b!7754554 m!8218420))

(declare-fun m!8218422 () Bool)

(assert (=> b!7754554 m!8218422))

(assert (=> b!7754520 d!2343240))

(declare-fun b!7754605 () Bool)

(declare-fun e!4596713 () Bool)

(declare-fun e!4596719 () Bool)

(assert (=> b!7754605 (= e!4596713 e!4596719)))

(declare-fun c!1430249 () Bool)

(assert (=> b!7754605 (= c!1430249 ((_ is Union!20629) r2!6187))))

(declare-fun b!7754606 () Bool)

(declare-fun e!4596715 () Bool)

(declare-fun call!718867 () Bool)

(assert (=> b!7754606 (= e!4596715 call!718867)))

(declare-fun b!7754607 () Bool)

(declare-fun e!4596717 () Bool)

(declare-fun call!718868 () Bool)

(assert (=> b!7754607 (= e!4596717 call!718868)))

(declare-fun bm!718861 () Bool)

(assert (=> bm!718861 (= call!718868 (validRegex!11047 (ite c!1430249 (regTwo!41771 r2!6187) (regOne!41770 r2!6187))))))

(declare-fun b!7754608 () Bool)

(declare-fun e!4596714 () Bool)

(declare-fun call!718866 () Bool)

(assert (=> b!7754608 (= e!4596714 call!718866)))

(declare-fun d!2343242 () Bool)

(declare-fun res!3091804 () Bool)

(declare-fun e!4596716 () Bool)

(assert (=> d!2343242 (=> res!3091804 e!4596716)))

(assert (=> d!2343242 (= res!3091804 ((_ is ElementMatch!20629) r2!6187))))

(assert (=> d!2343242 (= (validRegex!11047 r2!6187) e!4596716)))

(declare-fun b!7754609 () Bool)

(assert (=> b!7754609 (= e!4596716 e!4596713)))

(declare-fun c!1430250 () Bool)

(assert (=> b!7754609 (= c!1430250 ((_ is Star!20629) r2!6187))))

(declare-fun bm!718862 () Bool)

(assert (=> bm!718862 (= call!718866 (validRegex!11047 (ite c!1430250 (reg!20958 r2!6187) (ite c!1430249 (regOne!41771 r2!6187) (regTwo!41770 r2!6187)))))))

(declare-fun b!7754610 () Bool)

(declare-fun e!4596718 () Bool)

(assert (=> b!7754610 (= e!4596718 e!4596715)))

(declare-fun res!3091807 () Bool)

(assert (=> b!7754610 (=> (not res!3091807) (not e!4596715))))

(assert (=> b!7754610 (= res!3091807 call!718868)))

(declare-fun b!7754611 () Bool)

(declare-fun res!3091805 () Bool)

(assert (=> b!7754611 (=> res!3091805 e!4596718)))

(assert (=> b!7754611 (= res!3091805 (not ((_ is Concat!29474) r2!6187)))))

(assert (=> b!7754611 (= e!4596719 e!4596718)))

(declare-fun b!7754612 () Bool)

(assert (=> b!7754612 (= e!4596713 e!4596714)))

(declare-fun res!3091808 () Bool)

(declare-fun nullable!9088 (Regex!20629) Bool)

(assert (=> b!7754612 (= res!3091808 (not (nullable!9088 (reg!20958 r2!6187))))))

(assert (=> b!7754612 (=> (not res!3091808) (not e!4596714))))

(declare-fun bm!718863 () Bool)

(assert (=> bm!718863 (= call!718867 call!718866)))

(declare-fun b!7754613 () Bool)

(declare-fun res!3091806 () Bool)

(assert (=> b!7754613 (=> (not res!3091806) (not e!4596717))))

(assert (=> b!7754613 (= res!3091806 call!718867)))

(assert (=> b!7754613 (= e!4596719 e!4596717)))

(assert (= (and d!2343242 (not res!3091804)) b!7754609))

(assert (= (and b!7754609 c!1430250) b!7754612))

(assert (= (and b!7754609 (not c!1430250)) b!7754605))

(assert (= (and b!7754612 res!3091808) b!7754608))

(assert (= (and b!7754605 c!1430249) b!7754613))

(assert (= (and b!7754605 (not c!1430249)) b!7754611))

(assert (= (and b!7754613 res!3091806) b!7754607))

(assert (= (and b!7754611 (not res!3091805)) b!7754610))

(assert (= (and b!7754610 res!3091807) b!7754606))

(assert (= (or b!7754613 b!7754606) bm!718863))

(assert (= (or b!7754607 b!7754610) bm!718861))

(assert (= (or b!7754608 bm!718863) bm!718862))

(declare-fun m!8218444 () Bool)

(assert (=> bm!718861 m!8218444))

(declare-fun m!8218446 () Bool)

(assert (=> bm!718862 m!8218446))

(declare-fun m!8218448 () Bool)

(assert (=> b!7754612 m!8218448))

(assert (=> b!7754522 d!2343242))

(declare-fun b!7754623 () Bool)

(declare-fun e!4596727 () Bool)

(declare-fun e!4596733 () Bool)

(assert (=> b!7754623 (= e!4596727 e!4596733)))

(declare-fun c!1430253 () Bool)

(assert (=> b!7754623 (= c!1430253 ((_ is Union!20629) r1!6249))))

(declare-fun b!7754624 () Bool)

(declare-fun e!4596729 () Bool)

(declare-fun call!718873 () Bool)

(assert (=> b!7754624 (= e!4596729 call!718873)))

(declare-fun b!7754625 () Bool)

(declare-fun e!4596731 () Bool)

(declare-fun call!718874 () Bool)

(assert (=> b!7754625 (= e!4596731 call!718874)))

(declare-fun bm!718867 () Bool)

(assert (=> bm!718867 (= call!718874 (validRegex!11047 (ite c!1430253 (regTwo!41771 r1!6249) (regOne!41770 r1!6249))))))

(declare-fun b!7754626 () Bool)

(declare-fun e!4596728 () Bool)

(declare-fun call!718872 () Bool)

(assert (=> b!7754626 (= e!4596728 call!718872)))

(declare-fun d!2343248 () Bool)

(declare-fun res!3091814 () Bool)

(declare-fun e!4596730 () Bool)

(assert (=> d!2343248 (=> res!3091814 e!4596730)))

(assert (=> d!2343248 (= res!3091814 ((_ is ElementMatch!20629) r1!6249))))

(assert (=> d!2343248 (= (validRegex!11047 r1!6249) e!4596730)))

(declare-fun b!7754627 () Bool)

(assert (=> b!7754627 (= e!4596730 e!4596727)))

(declare-fun c!1430254 () Bool)

(assert (=> b!7754627 (= c!1430254 ((_ is Star!20629) r1!6249))))

(declare-fun bm!718868 () Bool)

(assert (=> bm!718868 (= call!718872 (validRegex!11047 (ite c!1430254 (reg!20958 r1!6249) (ite c!1430253 (regOne!41771 r1!6249) (regTwo!41770 r1!6249)))))))

(declare-fun b!7754628 () Bool)

(declare-fun e!4596732 () Bool)

(assert (=> b!7754628 (= e!4596732 e!4596729)))

(declare-fun res!3091817 () Bool)

(assert (=> b!7754628 (=> (not res!3091817) (not e!4596729))))

(assert (=> b!7754628 (= res!3091817 call!718874)))

(declare-fun b!7754629 () Bool)

(declare-fun res!3091815 () Bool)

(assert (=> b!7754629 (=> res!3091815 e!4596732)))

(assert (=> b!7754629 (= res!3091815 (not ((_ is Concat!29474) r1!6249)))))

(assert (=> b!7754629 (= e!4596733 e!4596732)))

(declare-fun b!7754630 () Bool)

(assert (=> b!7754630 (= e!4596727 e!4596728)))

(declare-fun res!3091818 () Bool)

(assert (=> b!7754630 (= res!3091818 (not (nullable!9088 (reg!20958 r1!6249))))))

(assert (=> b!7754630 (=> (not res!3091818) (not e!4596728))))

(declare-fun bm!718869 () Bool)

(assert (=> bm!718869 (= call!718873 call!718872)))

(declare-fun b!7754631 () Bool)

(declare-fun res!3091816 () Bool)

(assert (=> b!7754631 (=> (not res!3091816) (not e!4596731))))

(assert (=> b!7754631 (= res!3091816 call!718873)))

(assert (=> b!7754631 (= e!4596733 e!4596731)))

(assert (= (and d!2343248 (not res!3091814)) b!7754627))

(assert (= (and b!7754627 c!1430254) b!7754630))

(assert (= (and b!7754627 (not c!1430254)) b!7754623))

(assert (= (and b!7754630 res!3091818) b!7754626))

(assert (= (and b!7754623 c!1430253) b!7754631))

(assert (= (and b!7754623 (not c!1430253)) b!7754629))

(assert (= (and b!7754631 res!3091816) b!7754625))

(assert (= (and b!7754629 (not res!3091815)) b!7754628))

(assert (= (and b!7754628 res!3091817) b!7754624))

(assert (= (or b!7754631 b!7754624) bm!718869))

(assert (= (or b!7754625 b!7754628) bm!718867))

(assert (= (or b!7754626 bm!718869) bm!718868))

(declare-fun m!8218456 () Bool)

(assert (=> bm!718867 m!8218456))

(declare-fun m!8218458 () Bool)

(assert (=> bm!718868 m!8218458))

(declare-fun m!8218460 () Bool)

(assert (=> b!7754630 m!8218460))

(assert (=> start!739064 d!2343248))

(declare-fun b!7754651 () Bool)

(declare-fun e!4596743 () Bool)

(declare-fun tp!2275377 () Bool)

(assert (=> b!7754651 (= e!4596743 (and tp_is_empty!51613 tp!2275377))))

(assert (=> b!7754526 (= tp!2275358 e!4596743)))

(assert (= (and b!7754526 ((_ is Cons!73350) (t!388209 s!14266))) b!7754651))

(declare-fun b!7754654 () Bool)

(declare-fun e!4596744 () Bool)

(declare-fun tp!2275382 () Bool)

(assert (=> b!7754654 (= e!4596744 (and tp_is_empty!51613 tp!2275382))))

(assert (=> b!7754517 (= tp!2275362 e!4596744)))

(assert (= (and b!7754517 ((_ is Cons!73350) (t!388209 s1!4090))) b!7754654))

(declare-fun b!7754677 () Bool)

(declare-fun e!4596749 () Bool)

(declare-fun tp!2275403 () Bool)

(declare-fun tp!2275405 () Bool)

(assert (=> b!7754677 (= e!4596749 (and tp!2275403 tp!2275405))))

(declare-fun b!7754674 () Bool)

(declare-fun tp!2275404 () Bool)

(declare-fun tp!2275406 () Bool)

(assert (=> b!7754674 (= e!4596749 (and tp!2275404 tp!2275406))))

(assert (=> b!7754527 (= tp!2275353 e!4596749)))

(declare-fun b!7754675 () Bool)

(declare-fun tp!2275409 () Bool)

(assert (=> b!7754675 (= e!4596749 tp!2275409)))

(declare-fun b!7754673 () Bool)

(assert (=> b!7754673 (= e!4596749 tp_is_empty!51613)))

(assert (= (and b!7754527 ((_ is ElementMatch!20629) (regOne!41770 r1!6249))) b!7754673))

(assert (= (and b!7754527 ((_ is Concat!29474) (regOne!41770 r1!6249))) b!7754674))

(assert (= (and b!7754527 ((_ is Star!20629) (regOne!41770 r1!6249))) b!7754675))

(assert (= (and b!7754527 ((_ is Union!20629) (regOne!41770 r1!6249))) b!7754677))

(declare-fun b!7754688 () Bool)

(declare-fun e!4596752 () Bool)

(declare-fun tp!2275418 () Bool)

(declare-fun tp!2275420 () Bool)

(assert (=> b!7754688 (= e!4596752 (and tp!2275418 tp!2275420))))

(declare-fun b!7754686 () Bool)

(declare-fun tp!2275419 () Bool)

(declare-fun tp!2275421 () Bool)

(assert (=> b!7754686 (= e!4596752 (and tp!2275419 tp!2275421))))

(assert (=> b!7754527 (= tp!2275357 e!4596752)))

(declare-fun b!7754687 () Bool)

(declare-fun tp!2275422 () Bool)

(assert (=> b!7754687 (= e!4596752 tp!2275422)))

(declare-fun b!7754685 () Bool)

(assert (=> b!7754685 (= e!4596752 tp_is_empty!51613)))

(assert (= (and b!7754527 ((_ is ElementMatch!20629) (regTwo!41770 r1!6249))) b!7754685))

(assert (= (and b!7754527 ((_ is Concat!29474) (regTwo!41770 r1!6249))) b!7754686))

(assert (= (and b!7754527 ((_ is Star!20629) (regTwo!41770 r1!6249))) b!7754687))

(assert (= (and b!7754527 ((_ is Union!20629) (regTwo!41770 r1!6249))) b!7754688))

(declare-fun b!7754696 () Bool)

(declare-fun e!4596754 () Bool)

(declare-fun tp!2275428 () Bool)

(declare-fun tp!2275430 () Bool)

(assert (=> b!7754696 (= e!4596754 (and tp!2275428 tp!2275430))))

(declare-fun b!7754694 () Bool)

(declare-fun tp!2275429 () Bool)

(declare-fun tp!2275431 () Bool)

(assert (=> b!7754694 (= e!4596754 (and tp!2275429 tp!2275431))))

(assert (=> b!7754518 (= tp!2275354 e!4596754)))

(declare-fun b!7754695 () Bool)

(declare-fun tp!2275432 () Bool)

(assert (=> b!7754695 (= e!4596754 tp!2275432)))

(declare-fun b!7754693 () Bool)

(assert (=> b!7754693 (= e!4596754 tp_is_empty!51613)))

(assert (= (and b!7754518 ((_ is ElementMatch!20629) (reg!20958 r1!6249))) b!7754693))

(assert (= (and b!7754518 ((_ is Concat!29474) (reg!20958 r1!6249))) b!7754694))

(assert (= (and b!7754518 ((_ is Star!20629) (reg!20958 r1!6249))) b!7754695))

(assert (= (and b!7754518 ((_ is Union!20629) (reg!20958 r1!6249))) b!7754696))

(declare-fun b!7754704 () Bool)

(declare-fun e!4596756 () Bool)

(declare-fun tp!2275438 () Bool)

(declare-fun tp!2275440 () Bool)

(assert (=> b!7754704 (= e!4596756 (and tp!2275438 tp!2275440))))

(declare-fun b!7754702 () Bool)

(declare-fun tp!2275439 () Bool)

(declare-fun tp!2275441 () Bool)

(assert (=> b!7754702 (= e!4596756 (and tp!2275439 tp!2275441))))

(assert (=> b!7754523 (= tp!2275360 e!4596756)))

(declare-fun b!7754703 () Bool)

(declare-fun tp!2275442 () Bool)

(assert (=> b!7754703 (= e!4596756 tp!2275442)))

(declare-fun b!7754701 () Bool)

(assert (=> b!7754701 (= e!4596756 tp_is_empty!51613)))

(assert (= (and b!7754523 ((_ is ElementMatch!20629) (regOne!41771 r2!6187))) b!7754701))

(assert (= (and b!7754523 ((_ is Concat!29474) (regOne!41771 r2!6187))) b!7754702))

(assert (= (and b!7754523 ((_ is Star!20629) (regOne!41771 r2!6187))) b!7754703))

(assert (= (and b!7754523 ((_ is Union!20629) (regOne!41771 r2!6187))) b!7754704))

(declare-fun b!7754712 () Bool)

(declare-fun e!4596758 () Bool)

(declare-fun tp!2275448 () Bool)

(declare-fun tp!2275450 () Bool)

(assert (=> b!7754712 (= e!4596758 (and tp!2275448 tp!2275450))))

(declare-fun b!7754710 () Bool)

(declare-fun tp!2275449 () Bool)

(declare-fun tp!2275451 () Bool)

(assert (=> b!7754710 (= e!4596758 (and tp!2275449 tp!2275451))))

(assert (=> b!7754523 (= tp!2275356 e!4596758)))

(declare-fun b!7754711 () Bool)

(declare-fun tp!2275452 () Bool)

(assert (=> b!7754711 (= e!4596758 tp!2275452)))

(declare-fun b!7754709 () Bool)

(assert (=> b!7754709 (= e!4596758 tp_is_empty!51613)))

(assert (= (and b!7754523 ((_ is ElementMatch!20629) (regTwo!41771 r2!6187))) b!7754709))

(assert (= (and b!7754523 ((_ is Concat!29474) (regTwo!41771 r2!6187))) b!7754710))

(assert (= (and b!7754523 ((_ is Star!20629) (regTwo!41771 r2!6187))) b!7754711))

(assert (= (and b!7754523 ((_ is Union!20629) (regTwo!41771 r2!6187))) b!7754712))

(declare-fun b!7754720 () Bool)

(declare-fun e!4596760 () Bool)

(declare-fun tp!2275458 () Bool)

(declare-fun tp!2275460 () Bool)

(assert (=> b!7754720 (= e!4596760 (and tp!2275458 tp!2275460))))

(declare-fun b!7754718 () Bool)

(declare-fun tp!2275459 () Bool)

(declare-fun tp!2275461 () Bool)

(assert (=> b!7754718 (= e!4596760 (and tp!2275459 tp!2275461))))

(assert (=> b!7754525 (= tp!2275352 e!4596760)))

(declare-fun b!7754719 () Bool)

(declare-fun tp!2275462 () Bool)

(assert (=> b!7754719 (= e!4596760 tp!2275462)))

(declare-fun b!7754717 () Bool)

(assert (=> b!7754717 (= e!4596760 tp_is_empty!51613)))

(assert (= (and b!7754525 ((_ is ElementMatch!20629) (regOne!41770 r2!6187))) b!7754717))

(assert (= (and b!7754525 ((_ is Concat!29474) (regOne!41770 r2!6187))) b!7754718))

(assert (= (and b!7754525 ((_ is Star!20629) (regOne!41770 r2!6187))) b!7754719))

(assert (= (and b!7754525 ((_ is Union!20629) (regOne!41770 r2!6187))) b!7754720))

(declare-fun b!7754728 () Bool)

(declare-fun e!4596762 () Bool)

(declare-fun tp!2275468 () Bool)

(declare-fun tp!2275470 () Bool)

(assert (=> b!7754728 (= e!4596762 (and tp!2275468 tp!2275470))))

(declare-fun b!7754726 () Bool)

(declare-fun tp!2275469 () Bool)

(declare-fun tp!2275471 () Bool)

(assert (=> b!7754726 (= e!4596762 (and tp!2275469 tp!2275471))))

(assert (=> b!7754525 (= tp!2275361 e!4596762)))

(declare-fun b!7754727 () Bool)

(declare-fun tp!2275472 () Bool)

(assert (=> b!7754727 (= e!4596762 tp!2275472)))

(declare-fun b!7754725 () Bool)

(assert (=> b!7754725 (= e!4596762 tp_is_empty!51613)))

(assert (= (and b!7754525 ((_ is ElementMatch!20629) (regTwo!41770 r2!6187))) b!7754725))

(assert (= (and b!7754525 ((_ is Concat!29474) (regTwo!41770 r2!6187))) b!7754726))

(assert (= (and b!7754525 ((_ is Star!20629) (regTwo!41770 r2!6187))) b!7754727))

(assert (= (and b!7754525 ((_ is Union!20629) (regTwo!41770 r2!6187))) b!7754728))

(declare-fun b!7754733 () Bool)

(declare-fun e!4596764 () Bool)

(declare-fun tp!2275478 () Bool)

(assert (=> b!7754733 (= e!4596764 (and tp_is_empty!51613 tp!2275478))))

(assert (=> b!7754514 (= tp!2275355 e!4596764)))

(assert (= (and b!7754514 ((_ is Cons!73350) (t!388209 s2!3712))) b!7754733))

(declare-fun b!7754737 () Bool)

(declare-fun e!4596765 () Bool)

(declare-fun tp!2275479 () Bool)

(declare-fun tp!2275481 () Bool)

(assert (=> b!7754737 (= e!4596765 (and tp!2275479 tp!2275481))))

(declare-fun b!7754735 () Bool)

(declare-fun tp!2275480 () Bool)

(declare-fun tp!2275482 () Bool)

(assert (=> b!7754735 (= e!4596765 (and tp!2275480 tp!2275482))))

(assert (=> b!7754519 (= tp!2275351 e!4596765)))

(declare-fun b!7754736 () Bool)

(declare-fun tp!2275483 () Bool)

(assert (=> b!7754736 (= e!4596765 tp!2275483)))

(declare-fun b!7754734 () Bool)

(assert (=> b!7754734 (= e!4596765 tp_is_empty!51613)))

(assert (= (and b!7754519 ((_ is ElementMatch!20629) (regOne!41771 r1!6249))) b!7754734))

(assert (= (and b!7754519 ((_ is Concat!29474) (regOne!41771 r1!6249))) b!7754735))

(assert (= (and b!7754519 ((_ is Star!20629) (regOne!41771 r1!6249))) b!7754736))

(assert (= (and b!7754519 ((_ is Union!20629) (regOne!41771 r1!6249))) b!7754737))

(declare-fun b!7754741 () Bool)

(declare-fun e!4596766 () Bool)

(declare-fun tp!2275484 () Bool)

(declare-fun tp!2275486 () Bool)

(assert (=> b!7754741 (= e!4596766 (and tp!2275484 tp!2275486))))

(declare-fun b!7754739 () Bool)

(declare-fun tp!2275485 () Bool)

(declare-fun tp!2275487 () Bool)

(assert (=> b!7754739 (= e!4596766 (and tp!2275485 tp!2275487))))

(assert (=> b!7754519 (= tp!2275363 e!4596766)))

(declare-fun b!7754740 () Bool)

(declare-fun tp!2275488 () Bool)

(assert (=> b!7754740 (= e!4596766 tp!2275488)))

(declare-fun b!7754738 () Bool)

(assert (=> b!7754738 (= e!4596766 tp_is_empty!51613)))

(assert (= (and b!7754519 ((_ is ElementMatch!20629) (regTwo!41771 r1!6249))) b!7754738))

(assert (= (and b!7754519 ((_ is Concat!29474) (regTwo!41771 r1!6249))) b!7754739))

(assert (= (and b!7754519 ((_ is Star!20629) (regTwo!41771 r1!6249))) b!7754740))

(assert (= (and b!7754519 ((_ is Union!20629) (regTwo!41771 r1!6249))) b!7754741))

(declare-fun b!7754745 () Bool)

(declare-fun e!4596767 () Bool)

(declare-fun tp!2275489 () Bool)

(declare-fun tp!2275491 () Bool)

(assert (=> b!7754745 (= e!4596767 (and tp!2275489 tp!2275491))))

(declare-fun b!7754743 () Bool)

(declare-fun tp!2275490 () Bool)

(declare-fun tp!2275492 () Bool)

(assert (=> b!7754743 (= e!4596767 (and tp!2275490 tp!2275492))))

(assert (=> b!7754524 (= tp!2275359 e!4596767)))

(declare-fun b!7754744 () Bool)

(declare-fun tp!2275493 () Bool)

(assert (=> b!7754744 (= e!4596767 tp!2275493)))

(declare-fun b!7754742 () Bool)

(assert (=> b!7754742 (= e!4596767 tp_is_empty!51613)))

(assert (= (and b!7754524 ((_ is ElementMatch!20629) (reg!20958 r2!6187))) b!7754742))

(assert (= (and b!7754524 ((_ is Concat!29474) (reg!20958 r2!6187))) b!7754743))

(assert (= (and b!7754524 ((_ is Star!20629) (reg!20958 r2!6187))) b!7754744))

(assert (= (and b!7754524 ((_ is Union!20629) (reg!20958 r2!6187))) b!7754745))

(check-sat (not b!7754727) (not b!7754745) (not b!7754728) (not b!7754688) (not b!7754695) (not b!7754710) (not b!7754739) (not b!7754553) (not b!7754550) (not b!7754702) (not b!7754735) (not b!7754741) (not b!7754704) (not bm!718868) (not b!7754651) (not b!7754743) (not b!7754675) tp_is_empty!51613 (not b!7754733) (not b!7754737) (not b!7754696) (not d!2343240) (not b!7754712) (not b!7754711) (not d!2343234) (not b!7754630) (not b!7754718) (not b!7754612) (not bm!718867) (not b!7754744) (not b!7754694) (not b!7754554) (not b!7754687) (not b!7754740) (not b!7754719) (not b!7754674) (not b!7754720) (not b!7754703) (not b!7754549) (not bm!718861) (not b!7754726) (not b!7754677) (not bm!718862) (not b!7754686) (not b!7754736) (not b!7754654))
(check-sat)
