; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743714 () Bool)

(assert start!743714)

(declare-fun b!7862636 () Bool)

(declare-fun e!4646242 () Bool)

(declare-fun tp!2330454 () Bool)

(declare-fun tp!2330451 () Bool)

(assert (=> b!7862636 (= e!4646242 (and tp!2330454 tp!2330451))))

(declare-fun b!7862638 () Bool)

(declare-fun e!4646241 () Bool)

(declare-fun tp!2330458 () Bool)

(declare-fun tp!2330455 () Bool)

(assert (=> b!7862638 (= e!4646241 (and tp!2330458 tp!2330455))))

(declare-fun b!7862639 () Bool)

(declare-fun res!3125542 () Bool)

(declare-fun e!4646244 () Bool)

(assert (=> b!7862639 (=> res!3125542 e!4646244)))

(declare-datatypes ((C!42592 0))(
  ( (C!42593 (val!31758 Int)) )
))
(declare-datatypes ((Regex!21133 0))(
  ( (ElementMatch!21133 (c!1444829 C!42592)) (Concat!29978 (regOne!42778 Regex!21133) (regTwo!42778 Regex!21133)) (EmptyExpr!21133) (Star!21133 (reg!21462 Regex!21133)) (EmptyLang!21133) (Union!21133 (regOne!42779 Regex!21133) (regTwo!42779 Regex!21133)) )
))
(declare-fun lt!2680492 () Regex!21133)

(declare-fun validRegex!11543 (Regex!21133) Bool)

(assert (=> b!7862639 (= res!3125542 (not (validRegex!11543 lt!2680492)))))

(declare-fun b!7862640 () Bool)

(declare-fun tp_is_empty!52665 () Bool)

(assert (=> b!7862640 (= e!4646242 tp_is_empty!52665)))

(declare-fun b!7862641 () Bool)

(declare-fun e!4646243 () Bool)

(declare-fun tp!2330450 () Bool)

(assert (=> b!7862641 (= e!4646243 (and tp_is_empty!52665 tp!2330450))))

(declare-fun b!7862642 () Bool)

(declare-fun res!3125544 () Bool)

(declare-fun e!4646239 () Bool)

(assert (=> b!7862642 (=> (not res!3125544) (not e!4646239))))

(declare-fun r2!6156 () Regex!21133)

(declare-fun nullable!9403 (Regex!21133) Bool)

(assert (=> b!7862642 (= res!3125544 (nullable!9403 r2!6156))))

(declare-fun b!7862643 () Bool)

(declare-fun e!4646240 () Bool)

(declare-fun r1!6218 () Regex!21133)

(declare-datatypes ((List!73992 0))(
  ( (Nil!73868) (Cons!73868 (h!80316 C!42592) (t!388727 List!73992)) )
))
(declare-fun s!14237 () List!73992)

(declare-fun matchR!10569 (Regex!21133 List!73992) Bool)

(declare-fun derivativeStep!6366 (Regex!21133 C!42592) Regex!21133)

(declare-fun head!16081 (List!73992) C!42592)

(declare-fun tail!15624 (List!73992) List!73992)

(assert (=> b!7862643 (= e!4646240 (matchR!10569 (derivativeStep!6366 r1!6218 (head!16081 s!14237)) (tail!15624 s!14237)))))

(declare-fun b!7862644 () Bool)

(declare-fun tp!2330456 () Bool)

(assert (=> b!7862644 (= e!4646242 tp!2330456)))

(declare-fun b!7862645 () Bool)

(declare-fun e!4646245 () Bool)

(assert (=> b!7862645 (= e!4646239 e!4646245)))

(declare-fun res!3125541 () Bool)

(assert (=> b!7862645 (=> (not res!3125541) (not e!4646245))))

(declare-fun lt!2680491 () Regex!21133)

(assert (=> b!7862645 (= res!3125541 (= (derivativeStep!6366 (Concat!29978 r2!6156 r1!6218) (h!80316 s!14237)) (Union!21133 lt!2680492 lt!2680491)))))

(assert (=> b!7862645 (= lt!2680491 (derivativeStep!6366 r1!6218 (h!80316 s!14237)))))

(assert (=> b!7862645 (= lt!2680492 (Concat!29978 (derivativeStep!6366 r2!6156 (h!80316 s!14237)) r1!6218))))

(declare-fun b!7862646 () Bool)

(declare-fun res!3125547 () Bool)

(assert (=> b!7862646 (=> (not res!3125547) (not e!4646239))))

(assert (=> b!7862646 (= res!3125547 (matchR!10569 r1!6218 s!14237))))

(declare-fun b!7862647 () Bool)

(declare-fun tp!2330460 () Bool)

(declare-fun tp!2330453 () Bool)

(assert (=> b!7862647 (= e!4646242 (and tp!2330460 tp!2330453))))

(declare-fun b!7862648 () Bool)

(assert (=> b!7862648 (= e!4646241 tp_is_empty!52665)))

(declare-fun b!7862649 () Bool)

(declare-fun res!3125546 () Bool)

(assert (=> b!7862649 (=> (not res!3125546) (not e!4646239))))

(assert (=> b!7862649 (= res!3125546 (validRegex!11543 r2!6156))))

(declare-fun b!7862650 () Bool)

(assert (=> b!7862650 (= e!4646240 (nullable!9403 r1!6218))))

(declare-fun res!3125543 () Bool)

(assert (=> start!743714 (=> (not res!3125543) (not e!4646239))))

(assert (=> start!743714 (= res!3125543 (validRegex!11543 r1!6218))))

(assert (=> start!743714 e!4646239))

(assert (=> start!743714 e!4646242))

(assert (=> start!743714 e!4646241))

(assert (=> start!743714 e!4646243))

(declare-fun b!7862637 () Bool)

(assert (=> b!7862637 (= e!4646245 (not e!4646244))))

(declare-fun res!3125548 () Bool)

(assert (=> b!7862637 (=> res!3125548 e!4646244)))

(assert (=> b!7862637 (= res!3125548 (not (validRegex!11543 lt!2680491)))))

(assert (=> b!7862637 e!4646240))

(declare-fun c!1444828 () Bool)

(declare-fun isEmpty!42370 (List!73992) Bool)

(assert (=> b!7862637 (= c!1444828 (isEmpty!42370 s!14237))))

(declare-datatypes ((Unit!168960 0))(
  ( (Unit!168961) )
))
(declare-fun lt!2680493 () Unit!168960)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!14 (Regex!21133 List!73992) Unit!168960)

(assert (=> b!7862637 (= lt!2680493 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!14 r1!6218 s!14237))))

(declare-fun b!7862651 () Bool)

(declare-fun tp!2330457 () Bool)

(declare-fun tp!2330452 () Bool)

(assert (=> b!7862651 (= e!4646241 (and tp!2330457 tp!2330452))))

(declare-fun b!7862652 () Bool)

(assert (=> b!7862652 (= e!4646244 (matchR!10569 lt!2680491 (t!388727 s!14237)))))

(declare-fun b!7862653 () Bool)

(declare-fun res!3125545 () Bool)

(assert (=> b!7862653 (=> (not res!3125545) (not e!4646239))))

(get-info :version)

(assert (=> b!7862653 (= res!3125545 ((_ is Cons!73868) s!14237))))

(declare-fun b!7862654 () Bool)

(declare-fun tp!2330459 () Bool)

(assert (=> b!7862654 (= e!4646241 tp!2330459)))

(assert (= (and start!743714 res!3125543) b!7862649))

(assert (= (and b!7862649 res!3125546) b!7862646))

(assert (= (and b!7862646 res!3125547) b!7862642))

(assert (= (and b!7862642 res!3125544) b!7862653))

(assert (= (and b!7862653 res!3125545) b!7862645))

(assert (= (and b!7862645 res!3125541) b!7862637))

(assert (= (and b!7862637 c!1444828) b!7862650))

(assert (= (and b!7862637 (not c!1444828)) b!7862643))

(assert (= (and b!7862637 (not res!3125548)) b!7862639))

(assert (= (and b!7862639 (not res!3125542)) b!7862652))

(assert (= (and start!743714 ((_ is ElementMatch!21133) r1!6218)) b!7862640))

(assert (= (and start!743714 ((_ is Concat!29978) r1!6218)) b!7862636))

(assert (= (and start!743714 ((_ is Star!21133) r1!6218)) b!7862644))

(assert (= (and start!743714 ((_ is Union!21133) r1!6218)) b!7862647))

(assert (= (and start!743714 ((_ is ElementMatch!21133) r2!6156)) b!7862648))

(assert (= (and start!743714 ((_ is Concat!29978) r2!6156)) b!7862638))

(assert (= (and start!743714 ((_ is Star!21133) r2!6156)) b!7862654))

(assert (= (and start!743714 ((_ is Union!21133) r2!6156)) b!7862651))

(assert (= (and start!743714 ((_ is Cons!73868) s!14237)) b!7862641))

(declare-fun m!8262874 () Bool)

(assert (=> b!7862642 m!8262874))

(declare-fun m!8262876 () Bool)

(assert (=> b!7862637 m!8262876))

(declare-fun m!8262878 () Bool)

(assert (=> b!7862637 m!8262878))

(declare-fun m!8262880 () Bool)

(assert (=> b!7862637 m!8262880))

(declare-fun m!8262882 () Bool)

(assert (=> b!7862652 m!8262882))

(declare-fun m!8262884 () Bool)

(assert (=> b!7862639 m!8262884))

(declare-fun m!8262886 () Bool)

(assert (=> b!7862649 m!8262886))

(declare-fun m!8262888 () Bool)

(assert (=> b!7862645 m!8262888))

(declare-fun m!8262890 () Bool)

(assert (=> b!7862645 m!8262890))

(declare-fun m!8262892 () Bool)

(assert (=> b!7862645 m!8262892))

(declare-fun m!8262894 () Bool)

(assert (=> b!7862643 m!8262894))

(assert (=> b!7862643 m!8262894))

(declare-fun m!8262896 () Bool)

(assert (=> b!7862643 m!8262896))

(declare-fun m!8262898 () Bool)

(assert (=> b!7862643 m!8262898))

(assert (=> b!7862643 m!8262896))

(assert (=> b!7862643 m!8262898))

(declare-fun m!8262900 () Bool)

(assert (=> b!7862643 m!8262900))

(declare-fun m!8262902 () Bool)

(assert (=> b!7862650 m!8262902))

(declare-fun m!8262904 () Bool)

(assert (=> b!7862646 m!8262904))

(declare-fun m!8262906 () Bool)

(assert (=> start!743714 m!8262906))

(check-sat (not b!7862639) (not b!7862647) (not b!7862644) (not b!7862651) (not b!7862650) (not b!7862638) (not start!743714) (not b!7862641) (not b!7862645) (not b!7862646) (not b!7862652) (not b!7862642) (not b!7862643) (not b!7862654) (not b!7862636) (not b!7862637) (not b!7862649) tp_is_empty!52665)
(check-sat)
(get-model)

(declare-fun b!7862725 () Bool)

(declare-fun res!3125590 () Bool)

(declare-fun e!4646287 () Bool)

(assert (=> b!7862725 (=> res!3125590 e!4646287)))

(assert (=> b!7862725 (= res!3125590 (not (isEmpty!42370 (tail!15624 (t!388727 s!14237)))))))

(declare-fun b!7862726 () Bool)

(declare-fun e!4646283 () Bool)

(assert (=> b!7862726 (= e!4646283 e!4646287)))

(declare-fun res!3125593 () Bool)

(assert (=> b!7862726 (=> res!3125593 e!4646287)))

(declare-fun call!728996 () Bool)

(assert (=> b!7862726 (= res!3125593 call!728996)))

(declare-fun b!7862727 () Bool)

(declare-fun e!4646284 () Bool)

(assert (=> b!7862727 (= e!4646284 (nullable!9403 lt!2680491))))

(declare-fun b!7862729 () Bool)

(declare-fun e!4646285 () Bool)

(declare-fun e!4646281 () Bool)

(assert (=> b!7862729 (= e!4646285 e!4646281)))

(declare-fun c!1444845 () Bool)

(assert (=> b!7862729 (= c!1444845 ((_ is EmptyLang!21133) lt!2680491))))

(declare-fun b!7862730 () Bool)

(declare-fun res!3125592 () Bool)

(declare-fun e!4646282 () Bool)

(assert (=> b!7862730 (=> (not res!3125592) (not e!4646282))))

(assert (=> b!7862730 (= res!3125592 (not call!728996))))

(declare-fun b!7862731 () Bool)

(declare-fun res!3125591 () Bool)

(declare-fun e!4646286 () Bool)

(assert (=> b!7862731 (=> res!3125591 e!4646286)))

(assert (=> b!7862731 (= res!3125591 (not ((_ is ElementMatch!21133) lt!2680491)))))

(assert (=> b!7862731 (= e!4646281 e!4646286)))

(declare-fun b!7862732 () Bool)

(declare-fun res!3125595 () Bool)

(assert (=> b!7862732 (=> res!3125595 e!4646286)))

(assert (=> b!7862732 (= res!3125595 e!4646282)))

(declare-fun res!3125589 () Bool)

(assert (=> b!7862732 (=> (not res!3125589) (not e!4646282))))

(declare-fun lt!2680499 () Bool)

(assert (=> b!7862732 (= res!3125589 lt!2680499)))

(declare-fun b!7862733 () Bool)

(assert (=> b!7862733 (= e!4646281 (not lt!2680499))))

(declare-fun b!7862734 () Bool)

(assert (=> b!7862734 (= e!4646284 (matchR!10569 (derivativeStep!6366 lt!2680491 (head!16081 (t!388727 s!14237))) (tail!15624 (t!388727 s!14237))))))

(declare-fun b!7862735 () Bool)

(assert (=> b!7862735 (= e!4646287 (not (= (head!16081 (t!388727 s!14237)) (c!1444829 lt!2680491))))))

(declare-fun b!7862736 () Bool)

(assert (=> b!7862736 (= e!4646282 (= (head!16081 (t!388727 s!14237)) (c!1444829 lt!2680491)))))

(declare-fun b!7862737 () Bool)

(assert (=> b!7862737 (= e!4646285 (= lt!2680499 call!728996))))

(declare-fun bm!728991 () Bool)

(assert (=> bm!728991 (= call!728996 (isEmpty!42370 (t!388727 s!14237)))))

(declare-fun b!7862738 () Bool)

(assert (=> b!7862738 (= e!4646286 e!4646283)))

(declare-fun res!3125594 () Bool)

(assert (=> b!7862738 (=> (not res!3125594) (not e!4646283))))

(assert (=> b!7862738 (= res!3125594 (not lt!2680499))))

(declare-fun b!7862728 () Bool)

(declare-fun res!3125596 () Bool)

(assert (=> b!7862728 (=> (not res!3125596) (not e!4646282))))

(assert (=> b!7862728 (= res!3125596 (isEmpty!42370 (tail!15624 (t!388727 s!14237))))))

(declare-fun d!2354555 () Bool)

(assert (=> d!2354555 e!4646285))

(declare-fun c!1444847 () Bool)

(assert (=> d!2354555 (= c!1444847 ((_ is EmptyExpr!21133) lt!2680491))))

(assert (=> d!2354555 (= lt!2680499 e!4646284)))

(declare-fun c!1444846 () Bool)

(assert (=> d!2354555 (= c!1444846 (isEmpty!42370 (t!388727 s!14237)))))

(assert (=> d!2354555 (validRegex!11543 lt!2680491)))

(assert (=> d!2354555 (= (matchR!10569 lt!2680491 (t!388727 s!14237)) lt!2680499)))

(assert (= (and d!2354555 c!1444846) b!7862727))

(assert (= (and d!2354555 (not c!1444846)) b!7862734))

(assert (= (and d!2354555 c!1444847) b!7862737))

(assert (= (and d!2354555 (not c!1444847)) b!7862729))

(assert (= (and b!7862729 c!1444845) b!7862733))

(assert (= (and b!7862729 (not c!1444845)) b!7862731))

(assert (= (and b!7862731 (not res!3125591)) b!7862732))

(assert (= (and b!7862732 res!3125589) b!7862730))

(assert (= (and b!7862730 res!3125592) b!7862728))

(assert (= (and b!7862728 res!3125596) b!7862736))

(assert (= (and b!7862732 (not res!3125595)) b!7862738))

(assert (= (and b!7862738 res!3125594) b!7862726))

(assert (= (and b!7862726 (not res!3125593)) b!7862725))

(assert (= (and b!7862725 (not res!3125590)) b!7862735))

(assert (= (or b!7862737 b!7862726 b!7862730) bm!728991))

(declare-fun m!8262918 () Bool)

(assert (=> d!2354555 m!8262918))

(assert (=> d!2354555 m!8262876))

(declare-fun m!8262920 () Bool)

(assert (=> b!7862734 m!8262920))

(assert (=> b!7862734 m!8262920))

(declare-fun m!8262924 () Bool)

(assert (=> b!7862734 m!8262924))

(declare-fun m!8262926 () Bool)

(assert (=> b!7862734 m!8262926))

(assert (=> b!7862734 m!8262924))

(assert (=> b!7862734 m!8262926))

(declare-fun m!8262928 () Bool)

(assert (=> b!7862734 m!8262928))

(declare-fun m!8262932 () Bool)

(assert (=> b!7862727 m!8262932))

(assert (=> b!7862736 m!8262920))

(assert (=> b!7862728 m!8262926))

(assert (=> b!7862728 m!8262926))

(declare-fun m!8262934 () Bool)

(assert (=> b!7862728 m!8262934))

(assert (=> b!7862735 m!8262920))

(assert (=> bm!728991 m!8262918))

(assert (=> b!7862725 m!8262926))

(assert (=> b!7862725 m!8262926))

(assert (=> b!7862725 m!8262934))

(assert (=> b!7862652 d!2354555))

(declare-fun b!7862739 () Bool)

(declare-fun res!3125598 () Bool)

(declare-fun e!4646294 () Bool)

(assert (=> b!7862739 (=> res!3125598 e!4646294)))

(assert (=> b!7862739 (= res!3125598 (not (isEmpty!42370 (tail!15624 s!14237))))))

(declare-fun b!7862740 () Bool)

(declare-fun e!4646290 () Bool)

(assert (=> b!7862740 (= e!4646290 e!4646294)))

(declare-fun res!3125601 () Bool)

(assert (=> b!7862740 (=> res!3125601 e!4646294)))

(declare-fun call!728997 () Bool)

(assert (=> b!7862740 (= res!3125601 call!728997)))

(declare-fun b!7862741 () Bool)

(declare-fun e!4646291 () Bool)

(assert (=> b!7862741 (= e!4646291 (nullable!9403 r1!6218))))

(declare-fun b!7862743 () Bool)

(declare-fun e!4646292 () Bool)

(declare-fun e!4646288 () Bool)

(assert (=> b!7862743 (= e!4646292 e!4646288)))

(declare-fun c!1444848 () Bool)

(assert (=> b!7862743 (= c!1444848 ((_ is EmptyLang!21133) r1!6218))))

(declare-fun b!7862744 () Bool)

(declare-fun res!3125600 () Bool)

(declare-fun e!4646289 () Bool)

(assert (=> b!7862744 (=> (not res!3125600) (not e!4646289))))

(assert (=> b!7862744 (= res!3125600 (not call!728997))))

(declare-fun b!7862745 () Bool)

(declare-fun res!3125599 () Bool)

(declare-fun e!4646293 () Bool)

(assert (=> b!7862745 (=> res!3125599 e!4646293)))

(assert (=> b!7862745 (= res!3125599 (not ((_ is ElementMatch!21133) r1!6218)))))

(assert (=> b!7862745 (= e!4646288 e!4646293)))

(declare-fun b!7862746 () Bool)

(declare-fun res!3125603 () Bool)

(assert (=> b!7862746 (=> res!3125603 e!4646293)))

(assert (=> b!7862746 (= res!3125603 e!4646289)))

(declare-fun res!3125597 () Bool)

(assert (=> b!7862746 (=> (not res!3125597) (not e!4646289))))

(declare-fun lt!2680500 () Bool)

(assert (=> b!7862746 (= res!3125597 lt!2680500)))

(declare-fun b!7862747 () Bool)

(assert (=> b!7862747 (= e!4646288 (not lt!2680500))))

(declare-fun b!7862748 () Bool)

(assert (=> b!7862748 (= e!4646291 (matchR!10569 (derivativeStep!6366 r1!6218 (head!16081 s!14237)) (tail!15624 s!14237)))))

(declare-fun b!7862749 () Bool)

(assert (=> b!7862749 (= e!4646294 (not (= (head!16081 s!14237) (c!1444829 r1!6218))))))

(declare-fun b!7862750 () Bool)

(assert (=> b!7862750 (= e!4646289 (= (head!16081 s!14237) (c!1444829 r1!6218)))))

(declare-fun b!7862751 () Bool)

(assert (=> b!7862751 (= e!4646292 (= lt!2680500 call!728997))))

(declare-fun bm!728992 () Bool)

(assert (=> bm!728992 (= call!728997 (isEmpty!42370 s!14237))))

(declare-fun b!7862752 () Bool)

(assert (=> b!7862752 (= e!4646293 e!4646290)))

(declare-fun res!3125602 () Bool)

(assert (=> b!7862752 (=> (not res!3125602) (not e!4646290))))

(assert (=> b!7862752 (= res!3125602 (not lt!2680500))))

(declare-fun b!7862742 () Bool)

(declare-fun res!3125604 () Bool)

(assert (=> b!7862742 (=> (not res!3125604) (not e!4646289))))

(assert (=> b!7862742 (= res!3125604 (isEmpty!42370 (tail!15624 s!14237)))))

(declare-fun d!2354559 () Bool)

(assert (=> d!2354559 e!4646292))

(declare-fun c!1444850 () Bool)

(assert (=> d!2354559 (= c!1444850 ((_ is EmptyExpr!21133) r1!6218))))

(assert (=> d!2354559 (= lt!2680500 e!4646291)))

(declare-fun c!1444849 () Bool)

(assert (=> d!2354559 (= c!1444849 (isEmpty!42370 s!14237))))

(assert (=> d!2354559 (validRegex!11543 r1!6218)))

(assert (=> d!2354559 (= (matchR!10569 r1!6218 s!14237) lt!2680500)))

(assert (= (and d!2354559 c!1444849) b!7862741))

(assert (= (and d!2354559 (not c!1444849)) b!7862748))

(assert (= (and d!2354559 c!1444850) b!7862751))

(assert (= (and d!2354559 (not c!1444850)) b!7862743))

(assert (= (and b!7862743 c!1444848) b!7862747))

(assert (= (and b!7862743 (not c!1444848)) b!7862745))

(assert (= (and b!7862745 (not res!3125599)) b!7862746))

(assert (= (and b!7862746 res!3125597) b!7862744))

(assert (= (and b!7862744 res!3125600) b!7862742))

(assert (= (and b!7862742 res!3125604) b!7862750))

(assert (= (and b!7862746 (not res!3125603)) b!7862752))

(assert (= (and b!7862752 res!3125602) b!7862740))

(assert (= (and b!7862740 (not res!3125601)) b!7862739))

(assert (= (and b!7862739 (not res!3125598)) b!7862749))

(assert (= (or b!7862751 b!7862740 b!7862744) bm!728992))

(assert (=> d!2354559 m!8262878))

(assert (=> d!2354559 m!8262906))

(assert (=> b!7862748 m!8262894))

(assert (=> b!7862748 m!8262894))

(assert (=> b!7862748 m!8262896))

(assert (=> b!7862748 m!8262898))

(assert (=> b!7862748 m!8262896))

(assert (=> b!7862748 m!8262898))

(assert (=> b!7862748 m!8262900))

(assert (=> b!7862741 m!8262902))

(assert (=> b!7862750 m!8262894))

(assert (=> b!7862742 m!8262898))

(assert (=> b!7862742 m!8262898))

(declare-fun m!8262938 () Bool)

(assert (=> b!7862742 m!8262938))

(assert (=> b!7862749 m!8262894))

(assert (=> bm!728992 m!8262878))

(assert (=> b!7862739 m!8262898))

(assert (=> b!7862739 m!8262898))

(assert (=> b!7862739 m!8262938))

(assert (=> b!7862646 d!2354559))

(declare-fun b!7862803 () Bool)

(declare-fun call!729020 () Regex!21133)

(declare-fun e!4646322 () Regex!21133)

(assert (=> b!7862803 (= e!4646322 (Union!21133 (Concat!29978 call!729020 (regTwo!42778 (Concat!29978 r2!6156 r1!6218))) EmptyLang!21133))))

(declare-fun b!7862804 () Bool)

(declare-fun e!4646324 () Regex!21133)

(assert (=> b!7862804 (= e!4646324 EmptyLang!21133)))

(declare-fun e!4646321 () Regex!21133)

(declare-fun b!7862805 () Bool)

(declare-fun call!729019 () Regex!21133)

(assert (=> b!7862805 (= e!4646321 (Concat!29978 call!729019 (Concat!29978 r2!6156 r1!6218)))))

(declare-fun bm!729013 () Bool)

(assert (=> bm!729013 (= call!729020 call!729019)))

(declare-fun bm!729014 () Bool)

(declare-fun call!729021 () Regex!21133)

(assert (=> bm!729014 (= call!729019 call!729021)))

(declare-fun b!7862807 () Bool)

(declare-fun e!4646320 () Regex!21133)

(assert (=> b!7862807 (= e!4646320 (ite (= (h!80316 s!14237) (c!1444829 (Concat!29978 r2!6156 r1!6218))) EmptyExpr!21133 EmptyLang!21133))))

(declare-fun c!1444877 () Bool)

(declare-fun c!1444876 () Bool)

(declare-fun c!1444879 () Bool)

(declare-fun bm!729015 () Bool)

(assert (=> bm!729015 (= call!729021 (derivativeStep!6366 (ite c!1444879 (regTwo!42779 (Concat!29978 r2!6156 r1!6218)) (ite c!1444876 (reg!21462 (Concat!29978 r2!6156 r1!6218)) (ite c!1444877 (regTwo!42778 (Concat!29978 r2!6156 r1!6218)) (regOne!42778 (Concat!29978 r2!6156 r1!6218))))) (h!80316 s!14237)))))

(declare-fun b!7862808 () Bool)

(assert (=> b!7862808 (= e!4646324 e!4646320)))

(declare-fun c!1444880 () Bool)

(assert (=> b!7862808 (= c!1444880 ((_ is ElementMatch!21133) (Concat!29978 r2!6156 r1!6218)))))

(declare-fun call!729018 () Regex!21133)

(declare-fun bm!729016 () Bool)

(assert (=> bm!729016 (= call!729018 (derivativeStep!6366 (ite c!1444879 (regOne!42779 (Concat!29978 r2!6156 r1!6218)) (regOne!42778 (Concat!29978 r2!6156 r1!6218))) (h!80316 s!14237)))))

(declare-fun d!2354561 () Bool)

(declare-fun lt!2680506 () Regex!21133)

(assert (=> d!2354561 (validRegex!11543 lt!2680506)))

(assert (=> d!2354561 (= lt!2680506 e!4646324)))

(declare-fun c!1444878 () Bool)

(assert (=> d!2354561 (= c!1444878 (or ((_ is EmptyExpr!21133) (Concat!29978 r2!6156 r1!6218)) ((_ is EmptyLang!21133) (Concat!29978 r2!6156 r1!6218))))))

(assert (=> d!2354561 (validRegex!11543 (Concat!29978 r2!6156 r1!6218))))

(assert (=> d!2354561 (= (derivativeStep!6366 (Concat!29978 r2!6156 r1!6218) (h!80316 s!14237)) lt!2680506)))

(declare-fun b!7862806 () Bool)

(assert (=> b!7862806 (= c!1444877 (nullable!9403 (regOne!42778 (Concat!29978 r2!6156 r1!6218))))))

(assert (=> b!7862806 (= e!4646321 e!4646322)))

(declare-fun b!7862809 () Bool)

(assert (=> b!7862809 (= c!1444879 ((_ is Union!21133) (Concat!29978 r2!6156 r1!6218)))))

(declare-fun e!4646323 () Regex!21133)

(assert (=> b!7862809 (= e!4646320 e!4646323)))

(declare-fun b!7862810 () Bool)

(assert (=> b!7862810 (= e!4646323 (Union!21133 call!729018 call!729021))))

(declare-fun b!7862811 () Bool)

(assert (=> b!7862811 (= e!4646323 e!4646321)))

(assert (=> b!7862811 (= c!1444876 ((_ is Star!21133) (Concat!29978 r2!6156 r1!6218)))))

(declare-fun b!7862812 () Bool)

(assert (=> b!7862812 (= e!4646322 (Union!21133 (Concat!29978 call!729018 (regTwo!42778 (Concat!29978 r2!6156 r1!6218))) call!729020))))

(assert (= (and d!2354561 c!1444878) b!7862804))

(assert (= (and d!2354561 (not c!1444878)) b!7862808))

(assert (= (and b!7862808 c!1444880) b!7862807))

(assert (= (and b!7862808 (not c!1444880)) b!7862809))

(assert (= (and b!7862809 c!1444879) b!7862810))

(assert (= (and b!7862809 (not c!1444879)) b!7862811))

(assert (= (and b!7862811 c!1444876) b!7862805))

(assert (= (and b!7862811 (not c!1444876)) b!7862806))

(assert (= (and b!7862806 c!1444877) b!7862812))

(assert (= (and b!7862806 (not c!1444877)) b!7862803))

(assert (= (or b!7862812 b!7862803) bm!729013))

(assert (= (or b!7862805 bm!729013) bm!729014))

(assert (= (or b!7862810 bm!729014) bm!729015))

(assert (= (or b!7862810 b!7862812) bm!729016))

(declare-fun m!8262948 () Bool)

(assert (=> bm!729015 m!8262948))

(declare-fun m!8262950 () Bool)

(assert (=> bm!729016 m!8262950))

(declare-fun m!8262952 () Bool)

(assert (=> d!2354561 m!8262952))

(declare-fun m!8262954 () Bool)

(assert (=> d!2354561 m!8262954))

(declare-fun m!8262956 () Bool)

(assert (=> b!7862806 m!8262956))

(assert (=> b!7862645 d!2354561))

(declare-fun b!7862827 () Bool)

(declare-fun e!4646334 () Regex!21133)

(declare-fun call!729025 () Regex!21133)

(assert (=> b!7862827 (= e!4646334 (Union!21133 (Concat!29978 call!729025 (regTwo!42778 r1!6218)) EmptyLang!21133))))

(declare-fun b!7862828 () Bool)

(declare-fun e!4646336 () Regex!21133)

(assert (=> b!7862828 (= e!4646336 EmptyLang!21133)))

(declare-fun b!7862829 () Bool)

(declare-fun e!4646333 () Regex!21133)

(declare-fun call!729024 () Regex!21133)

(assert (=> b!7862829 (= e!4646333 (Concat!29978 call!729024 r1!6218))))

(declare-fun bm!729018 () Bool)

(assert (=> bm!729018 (= call!729025 call!729024)))

(declare-fun bm!729019 () Bool)

(declare-fun call!729026 () Regex!21133)

(assert (=> bm!729019 (= call!729024 call!729026)))

(declare-fun b!7862831 () Bool)

(declare-fun e!4646332 () Regex!21133)

(assert (=> b!7862831 (= e!4646332 (ite (= (h!80316 s!14237) (c!1444829 r1!6218)) EmptyExpr!21133 EmptyLang!21133))))

(declare-fun bm!729020 () Bool)

(declare-fun c!1444885 () Bool)

(declare-fun c!1444887 () Bool)

(declare-fun c!1444884 () Bool)

(assert (=> bm!729020 (= call!729026 (derivativeStep!6366 (ite c!1444887 (regTwo!42779 r1!6218) (ite c!1444884 (reg!21462 r1!6218) (ite c!1444885 (regTwo!42778 r1!6218) (regOne!42778 r1!6218)))) (h!80316 s!14237)))))

(declare-fun b!7862832 () Bool)

(assert (=> b!7862832 (= e!4646336 e!4646332)))

(declare-fun c!1444888 () Bool)

(assert (=> b!7862832 (= c!1444888 ((_ is ElementMatch!21133) r1!6218))))

(declare-fun bm!729021 () Bool)

(declare-fun call!729023 () Regex!21133)

(assert (=> bm!729021 (= call!729023 (derivativeStep!6366 (ite c!1444887 (regOne!42779 r1!6218) (regOne!42778 r1!6218)) (h!80316 s!14237)))))

(declare-fun d!2354569 () Bool)

(declare-fun lt!2680508 () Regex!21133)

(assert (=> d!2354569 (validRegex!11543 lt!2680508)))

(assert (=> d!2354569 (= lt!2680508 e!4646336)))

(declare-fun c!1444886 () Bool)

(assert (=> d!2354569 (= c!1444886 (or ((_ is EmptyExpr!21133) r1!6218) ((_ is EmptyLang!21133) r1!6218)))))

(assert (=> d!2354569 (validRegex!11543 r1!6218)))

(assert (=> d!2354569 (= (derivativeStep!6366 r1!6218 (h!80316 s!14237)) lt!2680508)))

(declare-fun b!7862830 () Bool)

(assert (=> b!7862830 (= c!1444885 (nullable!9403 (regOne!42778 r1!6218)))))

(assert (=> b!7862830 (= e!4646333 e!4646334)))

(declare-fun b!7862833 () Bool)

(assert (=> b!7862833 (= c!1444887 ((_ is Union!21133) r1!6218))))

(declare-fun e!4646335 () Regex!21133)

(assert (=> b!7862833 (= e!4646332 e!4646335)))

(declare-fun b!7862834 () Bool)

(assert (=> b!7862834 (= e!4646335 (Union!21133 call!729023 call!729026))))

(declare-fun b!7862835 () Bool)

(assert (=> b!7862835 (= e!4646335 e!4646333)))

(assert (=> b!7862835 (= c!1444884 ((_ is Star!21133) r1!6218))))

(declare-fun b!7862836 () Bool)

(assert (=> b!7862836 (= e!4646334 (Union!21133 (Concat!29978 call!729023 (regTwo!42778 r1!6218)) call!729025))))

(assert (= (and d!2354569 c!1444886) b!7862828))

(assert (= (and d!2354569 (not c!1444886)) b!7862832))

(assert (= (and b!7862832 c!1444888) b!7862831))

(assert (= (and b!7862832 (not c!1444888)) b!7862833))

(assert (= (and b!7862833 c!1444887) b!7862834))

(assert (= (and b!7862833 (not c!1444887)) b!7862835))

(assert (= (and b!7862835 c!1444884) b!7862829))

(assert (= (and b!7862835 (not c!1444884)) b!7862830))

(assert (= (and b!7862830 c!1444885) b!7862836))

(assert (= (and b!7862830 (not c!1444885)) b!7862827))

(assert (= (or b!7862836 b!7862827) bm!729018))

(assert (= (or b!7862829 bm!729018) bm!729019))

(assert (= (or b!7862834 bm!729019) bm!729020))

(assert (= (or b!7862834 b!7862836) bm!729021))

(declare-fun m!8262958 () Bool)

(assert (=> bm!729020 m!8262958))

(declare-fun m!8262960 () Bool)

(assert (=> bm!729021 m!8262960))

(declare-fun m!8262962 () Bool)

(assert (=> d!2354569 m!8262962))

(assert (=> d!2354569 m!8262906))

(declare-fun m!8262964 () Bool)

(assert (=> b!7862830 m!8262964))

(assert (=> b!7862645 d!2354569))

(declare-fun b!7862837 () Bool)

(declare-fun e!4646339 () Regex!21133)

(declare-fun call!729029 () Regex!21133)

(assert (=> b!7862837 (= e!4646339 (Union!21133 (Concat!29978 call!729029 (regTwo!42778 r2!6156)) EmptyLang!21133))))

(declare-fun b!7862838 () Bool)

(declare-fun e!4646341 () Regex!21133)

(assert (=> b!7862838 (= e!4646341 EmptyLang!21133)))

(declare-fun b!7862839 () Bool)

(declare-fun e!4646338 () Regex!21133)

(declare-fun call!729028 () Regex!21133)

(assert (=> b!7862839 (= e!4646338 (Concat!29978 call!729028 r2!6156))))

(declare-fun bm!729022 () Bool)

(assert (=> bm!729022 (= call!729029 call!729028)))

(declare-fun bm!729023 () Bool)

(declare-fun call!729030 () Regex!21133)

(assert (=> bm!729023 (= call!729028 call!729030)))

(declare-fun b!7862841 () Bool)

(declare-fun e!4646337 () Regex!21133)

(assert (=> b!7862841 (= e!4646337 (ite (= (h!80316 s!14237) (c!1444829 r2!6156)) EmptyExpr!21133 EmptyLang!21133))))

(declare-fun bm!729024 () Bool)

(declare-fun c!1444892 () Bool)

(declare-fun c!1444890 () Bool)

(declare-fun c!1444889 () Bool)

(assert (=> bm!729024 (= call!729030 (derivativeStep!6366 (ite c!1444892 (regTwo!42779 r2!6156) (ite c!1444889 (reg!21462 r2!6156) (ite c!1444890 (regTwo!42778 r2!6156) (regOne!42778 r2!6156)))) (h!80316 s!14237)))))

(declare-fun b!7862842 () Bool)

(assert (=> b!7862842 (= e!4646341 e!4646337)))

(declare-fun c!1444893 () Bool)

(assert (=> b!7862842 (= c!1444893 ((_ is ElementMatch!21133) r2!6156))))

(declare-fun bm!729025 () Bool)

(declare-fun call!729027 () Regex!21133)

(assert (=> bm!729025 (= call!729027 (derivativeStep!6366 (ite c!1444892 (regOne!42779 r2!6156) (regOne!42778 r2!6156)) (h!80316 s!14237)))))

(declare-fun d!2354573 () Bool)

(declare-fun lt!2680509 () Regex!21133)

(assert (=> d!2354573 (validRegex!11543 lt!2680509)))

(assert (=> d!2354573 (= lt!2680509 e!4646341)))

(declare-fun c!1444891 () Bool)

(assert (=> d!2354573 (= c!1444891 (or ((_ is EmptyExpr!21133) r2!6156) ((_ is EmptyLang!21133) r2!6156)))))

(assert (=> d!2354573 (validRegex!11543 r2!6156)))

(assert (=> d!2354573 (= (derivativeStep!6366 r2!6156 (h!80316 s!14237)) lt!2680509)))

(declare-fun b!7862840 () Bool)

(assert (=> b!7862840 (= c!1444890 (nullable!9403 (regOne!42778 r2!6156)))))

(assert (=> b!7862840 (= e!4646338 e!4646339)))

(declare-fun b!7862843 () Bool)

(assert (=> b!7862843 (= c!1444892 ((_ is Union!21133) r2!6156))))

(declare-fun e!4646340 () Regex!21133)

(assert (=> b!7862843 (= e!4646337 e!4646340)))

(declare-fun b!7862844 () Bool)

(assert (=> b!7862844 (= e!4646340 (Union!21133 call!729027 call!729030))))

(declare-fun b!7862845 () Bool)

(assert (=> b!7862845 (= e!4646340 e!4646338)))

(assert (=> b!7862845 (= c!1444889 ((_ is Star!21133) r2!6156))))

(declare-fun b!7862846 () Bool)

(assert (=> b!7862846 (= e!4646339 (Union!21133 (Concat!29978 call!729027 (regTwo!42778 r2!6156)) call!729029))))

(assert (= (and d!2354573 c!1444891) b!7862838))

(assert (= (and d!2354573 (not c!1444891)) b!7862842))

(assert (= (and b!7862842 c!1444893) b!7862841))

(assert (= (and b!7862842 (not c!1444893)) b!7862843))

(assert (= (and b!7862843 c!1444892) b!7862844))

(assert (= (and b!7862843 (not c!1444892)) b!7862845))

(assert (= (and b!7862845 c!1444889) b!7862839))

(assert (= (and b!7862845 (not c!1444889)) b!7862840))

(assert (= (and b!7862840 c!1444890) b!7862846))

(assert (= (and b!7862840 (not c!1444890)) b!7862837))

(assert (= (or b!7862846 b!7862837) bm!729022))

(assert (= (or b!7862839 bm!729022) bm!729023))

(assert (= (or b!7862844 bm!729023) bm!729024))

(assert (= (or b!7862844 b!7862846) bm!729025))

(declare-fun m!8262966 () Bool)

(assert (=> bm!729024 m!8262966))

(declare-fun m!8262968 () Bool)

(assert (=> bm!729025 m!8262968))

(declare-fun m!8262970 () Bool)

(assert (=> d!2354573 m!8262970))

(assert (=> d!2354573 m!8262886))

(declare-fun m!8262972 () Bool)

(assert (=> b!7862840 m!8262972))

(assert (=> b!7862645 d!2354573))

(declare-fun d!2354575 () Bool)

(declare-fun nullableFct!3715 (Regex!21133) Bool)

(assert (=> d!2354575 (= (nullable!9403 r1!6218) (nullableFct!3715 r1!6218))))

(declare-fun bs!1967215 () Bool)

(assert (= bs!1967215 d!2354575))

(declare-fun m!8262974 () Bool)

(assert (=> bs!1967215 m!8262974))

(assert (=> b!7862650 d!2354575))

(declare-fun b!7862922 () Bool)

(declare-fun e!4646393 () Bool)

(declare-fun e!4646395 () Bool)

(assert (=> b!7862922 (= e!4646393 e!4646395)))

(declare-fun c!1444920 () Bool)

(assert (=> b!7862922 (= c!1444920 ((_ is Union!21133) lt!2680492))))

(declare-fun b!7862923 () Bool)

(declare-fun e!4646398 () Bool)

(assert (=> b!7862923 (= e!4646393 e!4646398)))

(declare-fun res!3125638 () Bool)

(assert (=> b!7862923 (= res!3125638 (not (nullable!9403 (reg!21462 lt!2680492))))))

(assert (=> b!7862923 (=> (not res!3125638) (not e!4646398))))

(declare-fun b!7862924 () Bool)

(declare-fun call!729058 () Bool)

(assert (=> b!7862924 (= e!4646398 call!729058)))

(declare-fun b!7862925 () Bool)

(declare-fun res!3125642 () Bool)

(declare-fun e!4646396 () Bool)

(assert (=> b!7862925 (=> (not res!3125642) (not e!4646396))))

(declare-fun call!729060 () Bool)

(assert (=> b!7862925 (= res!3125642 call!729060)))

(assert (=> b!7862925 (= e!4646395 e!4646396)))

(declare-fun bm!729053 () Bool)

(declare-fun call!729059 () Bool)

(assert (=> bm!729053 (= call!729059 (validRegex!11543 (ite c!1444920 (regTwo!42779 lt!2680492) (regTwo!42778 lt!2680492))))))

(declare-fun b!7862926 () Bool)

(declare-fun e!4646394 () Bool)

(assert (=> b!7862926 (= e!4646394 call!729059)))

(declare-fun b!7862927 () Bool)

(declare-fun e!4646392 () Bool)

(assert (=> b!7862927 (= e!4646392 e!4646393)))

(declare-fun c!1444919 () Bool)

(assert (=> b!7862927 (= c!1444919 ((_ is Star!21133) lt!2680492))))

(declare-fun bm!729054 () Bool)

(assert (=> bm!729054 (= call!729058 (validRegex!11543 (ite c!1444919 (reg!21462 lt!2680492) (ite c!1444920 (regOne!42779 lt!2680492) (regOne!42778 lt!2680492)))))))

(declare-fun b!7862928 () Bool)

(assert (=> b!7862928 (= e!4646396 call!729059)))

(declare-fun b!7862929 () Bool)

(declare-fun res!3125641 () Bool)

(declare-fun e!4646397 () Bool)

(assert (=> b!7862929 (=> res!3125641 e!4646397)))

(assert (=> b!7862929 (= res!3125641 (not ((_ is Concat!29978) lt!2680492)))))

(assert (=> b!7862929 (= e!4646395 e!4646397)))

(declare-fun bm!729055 () Bool)

(assert (=> bm!729055 (= call!729060 call!729058)))

(declare-fun d!2354577 () Bool)

(declare-fun res!3125639 () Bool)

(assert (=> d!2354577 (=> res!3125639 e!4646392)))

(assert (=> d!2354577 (= res!3125639 ((_ is ElementMatch!21133) lt!2680492))))

(assert (=> d!2354577 (= (validRegex!11543 lt!2680492) e!4646392)))

(declare-fun b!7862930 () Bool)

(assert (=> b!7862930 (= e!4646397 e!4646394)))

(declare-fun res!3125640 () Bool)

(assert (=> b!7862930 (=> (not res!3125640) (not e!4646394))))

(assert (=> b!7862930 (= res!3125640 call!729060)))

(assert (= (and d!2354577 (not res!3125639)) b!7862927))

(assert (= (and b!7862927 c!1444919) b!7862923))

(assert (= (and b!7862927 (not c!1444919)) b!7862922))

(assert (= (and b!7862923 res!3125638) b!7862924))

(assert (= (and b!7862922 c!1444920) b!7862925))

(assert (= (and b!7862922 (not c!1444920)) b!7862929))

(assert (= (and b!7862925 res!3125642) b!7862928))

(assert (= (and b!7862929 (not res!3125641)) b!7862930))

(assert (= (and b!7862930 res!3125640) b!7862926))

(assert (= (or b!7862928 b!7862926) bm!729053))

(assert (= (or b!7862925 b!7862930) bm!729055))

(assert (= (or b!7862924 bm!729055) bm!729054))

(declare-fun m!8263008 () Bool)

(assert (=> b!7862923 m!8263008))

(declare-fun m!8263010 () Bool)

(assert (=> bm!729053 m!8263010))

(declare-fun m!8263012 () Bool)

(assert (=> bm!729054 m!8263012))

(assert (=> b!7862639 d!2354577))

(declare-fun b!7862940 () Bool)

(declare-fun e!4646407 () Bool)

(declare-fun e!4646409 () Bool)

(assert (=> b!7862940 (= e!4646407 e!4646409)))

(declare-fun c!1444924 () Bool)

(assert (=> b!7862940 (= c!1444924 ((_ is Union!21133) r1!6218))))

(declare-fun b!7862941 () Bool)

(declare-fun e!4646412 () Bool)

(assert (=> b!7862941 (= e!4646407 e!4646412)))

(declare-fun res!3125648 () Bool)

(assert (=> b!7862941 (= res!3125648 (not (nullable!9403 (reg!21462 r1!6218))))))

(assert (=> b!7862941 (=> (not res!3125648) (not e!4646412))))

(declare-fun b!7862942 () Bool)

(declare-fun call!729064 () Bool)

(assert (=> b!7862942 (= e!4646412 call!729064)))

(declare-fun b!7862943 () Bool)

(declare-fun res!3125652 () Bool)

(declare-fun e!4646410 () Bool)

(assert (=> b!7862943 (=> (not res!3125652) (not e!4646410))))

(declare-fun call!729066 () Bool)

(assert (=> b!7862943 (= res!3125652 call!729066)))

(assert (=> b!7862943 (= e!4646409 e!4646410)))

(declare-fun bm!729059 () Bool)

(declare-fun call!729065 () Bool)

(assert (=> bm!729059 (= call!729065 (validRegex!11543 (ite c!1444924 (regTwo!42779 r1!6218) (regTwo!42778 r1!6218))))))

(declare-fun b!7862944 () Bool)

(declare-fun e!4646408 () Bool)

(assert (=> b!7862944 (= e!4646408 call!729065)))

(declare-fun b!7862945 () Bool)

(declare-fun e!4646406 () Bool)

(assert (=> b!7862945 (= e!4646406 e!4646407)))

(declare-fun c!1444923 () Bool)

(assert (=> b!7862945 (= c!1444923 ((_ is Star!21133) r1!6218))))

(declare-fun bm!729060 () Bool)

(assert (=> bm!729060 (= call!729064 (validRegex!11543 (ite c!1444923 (reg!21462 r1!6218) (ite c!1444924 (regOne!42779 r1!6218) (regOne!42778 r1!6218)))))))

(declare-fun b!7862946 () Bool)

(assert (=> b!7862946 (= e!4646410 call!729065)))

(declare-fun b!7862947 () Bool)

(declare-fun res!3125651 () Bool)

(declare-fun e!4646411 () Bool)

(assert (=> b!7862947 (=> res!3125651 e!4646411)))

(assert (=> b!7862947 (= res!3125651 (not ((_ is Concat!29978) r1!6218)))))

(assert (=> b!7862947 (= e!4646409 e!4646411)))

(declare-fun bm!729061 () Bool)

(assert (=> bm!729061 (= call!729066 call!729064)))

(declare-fun d!2354589 () Bool)

(declare-fun res!3125649 () Bool)

(assert (=> d!2354589 (=> res!3125649 e!4646406)))

(assert (=> d!2354589 (= res!3125649 ((_ is ElementMatch!21133) r1!6218))))

(assert (=> d!2354589 (= (validRegex!11543 r1!6218) e!4646406)))

(declare-fun b!7862948 () Bool)

(assert (=> b!7862948 (= e!4646411 e!4646408)))

(declare-fun res!3125650 () Bool)

(assert (=> b!7862948 (=> (not res!3125650) (not e!4646408))))

(assert (=> b!7862948 (= res!3125650 call!729066)))

(assert (= (and d!2354589 (not res!3125649)) b!7862945))

(assert (= (and b!7862945 c!1444923) b!7862941))

(assert (= (and b!7862945 (not c!1444923)) b!7862940))

(assert (= (and b!7862941 res!3125648) b!7862942))

(assert (= (and b!7862940 c!1444924) b!7862943))

(assert (= (and b!7862940 (not c!1444924)) b!7862947))

(assert (= (and b!7862943 res!3125652) b!7862946))

(assert (= (and b!7862947 (not res!3125651)) b!7862948))

(assert (= (and b!7862948 res!3125650) b!7862944))

(assert (= (or b!7862946 b!7862944) bm!729059))

(assert (= (or b!7862943 b!7862948) bm!729061))

(assert (= (or b!7862942 bm!729061) bm!729060))

(declare-fun m!8263020 () Bool)

(assert (=> b!7862941 m!8263020))

(declare-fun m!8263022 () Bool)

(assert (=> bm!729059 m!8263022))

(declare-fun m!8263024 () Bool)

(assert (=> bm!729060 m!8263024))

(assert (=> start!743714 d!2354589))

(declare-fun b!7862949 () Bool)

(declare-fun e!4646414 () Bool)

(declare-fun e!4646416 () Bool)

(assert (=> b!7862949 (= e!4646414 e!4646416)))

(declare-fun c!1444926 () Bool)

(assert (=> b!7862949 (= c!1444926 ((_ is Union!21133) r2!6156))))

(declare-fun b!7862950 () Bool)

(declare-fun e!4646419 () Bool)

(assert (=> b!7862950 (= e!4646414 e!4646419)))

(declare-fun res!3125653 () Bool)

(assert (=> b!7862950 (= res!3125653 (not (nullable!9403 (reg!21462 r2!6156))))))

(assert (=> b!7862950 (=> (not res!3125653) (not e!4646419))))

(declare-fun b!7862951 () Bool)

(declare-fun call!729067 () Bool)

(assert (=> b!7862951 (= e!4646419 call!729067)))

(declare-fun b!7862952 () Bool)

(declare-fun res!3125657 () Bool)

(declare-fun e!4646417 () Bool)

(assert (=> b!7862952 (=> (not res!3125657) (not e!4646417))))

(declare-fun call!729069 () Bool)

(assert (=> b!7862952 (= res!3125657 call!729069)))

(assert (=> b!7862952 (= e!4646416 e!4646417)))

(declare-fun bm!729062 () Bool)

(declare-fun call!729068 () Bool)

(assert (=> bm!729062 (= call!729068 (validRegex!11543 (ite c!1444926 (regTwo!42779 r2!6156) (regTwo!42778 r2!6156))))))

(declare-fun b!7862953 () Bool)

(declare-fun e!4646415 () Bool)

(assert (=> b!7862953 (= e!4646415 call!729068)))

(declare-fun b!7862954 () Bool)

(declare-fun e!4646413 () Bool)

(assert (=> b!7862954 (= e!4646413 e!4646414)))

(declare-fun c!1444925 () Bool)

(assert (=> b!7862954 (= c!1444925 ((_ is Star!21133) r2!6156))))

(declare-fun bm!729063 () Bool)

(assert (=> bm!729063 (= call!729067 (validRegex!11543 (ite c!1444925 (reg!21462 r2!6156) (ite c!1444926 (regOne!42779 r2!6156) (regOne!42778 r2!6156)))))))

(declare-fun b!7862955 () Bool)

(assert (=> b!7862955 (= e!4646417 call!729068)))

(declare-fun b!7862956 () Bool)

(declare-fun res!3125656 () Bool)

(declare-fun e!4646418 () Bool)

(assert (=> b!7862956 (=> res!3125656 e!4646418)))

(assert (=> b!7862956 (= res!3125656 (not ((_ is Concat!29978) r2!6156)))))

(assert (=> b!7862956 (= e!4646416 e!4646418)))

(declare-fun bm!729064 () Bool)

(assert (=> bm!729064 (= call!729069 call!729067)))

(declare-fun d!2354593 () Bool)

(declare-fun res!3125654 () Bool)

(assert (=> d!2354593 (=> res!3125654 e!4646413)))

(assert (=> d!2354593 (= res!3125654 ((_ is ElementMatch!21133) r2!6156))))

(assert (=> d!2354593 (= (validRegex!11543 r2!6156) e!4646413)))

(declare-fun b!7862957 () Bool)

(assert (=> b!7862957 (= e!4646418 e!4646415)))

(declare-fun res!3125655 () Bool)

(assert (=> b!7862957 (=> (not res!3125655) (not e!4646415))))

(assert (=> b!7862957 (= res!3125655 call!729069)))

(assert (= (and d!2354593 (not res!3125654)) b!7862954))

(assert (= (and b!7862954 c!1444925) b!7862950))

(assert (= (and b!7862954 (not c!1444925)) b!7862949))

(assert (= (and b!7862950 res!3125653) b!7862951))

(assert (= (and b!7862949 c!1444926) b!7862952))

(assert (= (and b!7862949 (not c!1444926)) b!7862956))

(assert (= (and b!7862952 res!3125657) b!7862955))

(assert (= (and b!7862956 (not res!3125656)) b!7862957))

(assert (= (and b!7862957 res!3125655) b!7862953))

(assert (= (or b!7862955 b!7862953) bm!729062))

(assert (= (or b!7862952 b!7862957) bm!729064))

(assert (= (or b!7862951 bm!729064) bm!729063))

(declare-fun m!8263026 () Bool)

(assert (=> b!7862950 m!8263026))

(declare-fun m!8263028 () Bool)

(assert (=> bm!729062 m!8263028))

(declare-fun m!8263030 () Bool)

(assert (=> bm!729063 m!8263030))

(assert (=> b!7862649 d!2354593))

(declare-fun b!7862958 () Bool)

(declare-fun res!3125659 () Bool)

(declare-fun e!4646426 () Bool)

(assert (=> b!7862958 (=> res!3125659 e!4646426)))

(assert (=> b!7862958 (= res!3125659 (not (isEmpty!42370 (tail!15624 (tail!15624 s!14237)))))))

(declare-fun b!7862959 () Bool)

(declare-fun e!4646422 () Bool)

(assert (=> b!7862959 (= e!4646422 e!4646426)))

(declare-fun res!3125662 () Bool)

(assert (=> b!7862959 (=> res!3125662 e!4646426)))

(declare-fun call!729070 () Bool)

(assert (=> b!7862959 (= res!3125662 call!729070)))

(declare-fun b!7862960 () Bool)

(declare-fun e!4646423 () Bool)

(assert (=> b!7862960 (= e!4646423 (nullable!9403 (derivativeStep!6366 r1!6218 (head!16081 s!14237))))))

(declare-fun b!7862962 () Bool)

(declare-fun e!4646424 () Bool)

(declare-fun e!4646420 () Bool)

(assert (=> b!7862962 (= e!4646424 e!4646420)))

(declare-fun c!1444927 () Bool)

(assert (=> b!7862962 (= c!1444927 ((_ is EmptyLang!21133) (derivativeStep!6366 r1!6218 (head!16081 s!14237))))))

(declare-fun b!7862963 () Bool)

(declare-fun res!3125661 () Bool)

(declare-fun e!4646421 () Bool)

(assert (=> b!7862963 (=> (not res!3125661) (not e!4646421))))

(assert (=> b!7862963 (= res!3125661 (not call!729070))))

(declare-fun b!7862964 () Bool)

(declare-fun res!3125660 () Bool)

(declare-fun e!4646425 () Bool)

(assert (=> b!7862964 (=> res!3125660 e!4646425)))

(assert (=> b!7862964 (= res!3125660 (not ((_ is ElementMatch!21133) (derivativeStep!6366 r1!6218 (head!16081 s!14237)))))))

(assert (=> b!7862964 (= e!4646420 e!4646425)))

(declare-fun b!7862965 () Bool)

(declare-fun res!3125664 () Bool)

(assert (=> b!7862965 (=> res!3125664 e!4646425)))

(assert (=> b!7862965 (= res!3125664 e!4646421)))

(declare-fun res!3125658 () Bool)

(assert (=> b!7862965 (=> (not res!3125658) (not e!4646421))))

(declare-fun lt!2680513 () Bool)

(assert (=> b!7862965 (= res!3125658 lt!2680513)))

(declare-fun b!7862966 () Bool)

(assert (=> b!7862966 (= e!4646420 (not lt!2680513))))

(declare-fun b!7862967 () Bool)

(assert (=> b!7862967 (= e!4646423 (matchR!10569 (derivativeStep!6366 (derivativeStep!6366 r1!6218 (head!16081 s!14237)) (head!16081 (tail!15624 s!14237))) (tail!15624 (tail!15624 s!14237))))))

(declare-fun b!7862968 () Bool)

(assert (=> b!7862968 (= e!4646426 (not (= (head!16081 (tail!15624 s!14237)) (c!1444829 (derivativeStep!6366 r1!6218 (head!16081 s!14237))))))))

(declare-fun b!7862969 () Bool)

(assert (=> b!7862969 (= e!4646421 (= (head!16081 (tail!15624 s!14237)) (c!1444829 (derivativeStep!6366 r1!6218 (head!16081 s!14237)))))))

(declare-fun b!7862970 () Bool)

(assert (=> b!7862970 (= e!4646424 (= lt!2680513 call!729070))))

(declare-fun bm!729065 () Bool)

(assert (=> bm!729065 (= call!729070 (isEmpty!42370 (tail!15624 s!14237)))))

(declare-fun b!7862971 () Bool)

(assert (=> b!7862971 (= e!4646425 e!4646422)))

(declare-fun res!3125663 () Bool)

(assert (=> b!7862971 (=> (not res!3125663) (not e!4646422))))

(assert (=> b!7862971 (= res!3125663 (not lt!2680513))))

(declare-fun b!7862961 () Bool)

(declare-fun res!3125665 () Bool)

(assert (=> b!7862961 (=> (not res!3125665) (not e!4646421))))

(assert (=> b!7862961 (= res!3125665 (isEmpty!42370 (tail!15624 (tail!15624 s!14237))))))

(declare-fun d!2354597 () Bool)

(assert (=> d!2354597 e!4646424))

(declare-fun c!1444929 () Bool)

(assert (=> d!2354597 (= c!1444929 ((_ is EmptyExpr!21133) (derivativeStep!6366 r1!6218 (head!16081 s!14237))))))

(assert (=> d!2354597 (= lt!2680513 e!4646423)))

(declare-fun c!1444928 () Bool)

(assert (=> d!2354597 (= c!1444928 (isEmpty!42370 (tail!15624 s!14237)))))

(assert (=> d!2354597 (validRegex!11543 (derivativeStep!6366 r1!6218 (head!16081 s!14237)))))

(assert (=> d!2354597 (= (matchR!10569 (derivativeStep!6366 r1!6218 (head!16081 s!14237)) (tail!15624 s!14237)) lt!2680513)))

(assert (= (and d!2354597 c!1444928) b!7862960))

(assert (= (and d!2354597 (not c!1444928)) b!7862967))

(assert (= (and d!2354597 c!1444929) b!7862970))

(assert (= (and d!2354597 (not c!1444929)) b!7862962))

(assert (= (and b!7862962 c!1444927) b!7862966))

(assert (= (and b!7862962 (not c!1444927)) b!7862964))

(assert (= (and b!7862964 (not res!3125660)) b!7862965))

(assert (= (and b!7862965 res!3125658) b!7862963))

(assert (= (and b!7862963 res!3125661) b!7862961))

(assert (= (and b!7862961 res!3125665) b!7862969))

(assert (= (and b!7862965 (not res!3125664)) b!7862971))

(assert (= (and b!7862971 res!3125663) b!7862959))

(assert (= (and b!7862959 (not res!3125662)) b!7862958))

(assert (= (and b!7862958 (not res!3125659)) b!7862968))

(assert (= (or b!7862970 b!7862959 b!7862963) bm!729065))

(assert (=> d!2354597 m!8262898))

(assert (=> d!2354597 m!8262938))

(assert (=> d!2354597 m!8262896))

(declare-fun m!8263032 () Bool)

(assert (=> d!2354597 m!8263032))

(assert (=> b!7862967 m!8262898))

(declare-fun m!8263034 () Bool)

(assert (=> b!7862967 m!8263034))

(assert (=> b!7862967 m!8262896))

(assert (=> b!7862967 m!8263034))

(declare-fun m!8263036 () Bool)

(assert (=> b!7862967 m!8263036))

(assert (=> b!7862967 m!8262898))

(declare-fun m!8263038 () Bool)

(assert (=> b!7862967 m!8263038))

(assert (=> b!7862967 m!8263036))

(assert (=> b!7862967 m!8263038))

(declare-fun m!8263040 () Bool)

(assert (=> b!7862967 m!8263040))

(assert (=> b!7862960 m!8262896))

(declare-fun m!8263042 () Bool)

(assert (=> b!7862960 m!8263042))

(assert (=> b!7862969 m!8262898))

(assert (=> b!7862969 m!8263034))

(assert (=> b!7862961 m!8262898))

(assert (=> b!7862961 m!8263038))

(assert (=> b!7862961 m!8263038))

(declare-fun m!8263044 () Bool)

(assert (=> b!7862961 m!8263044))

(assert (=> b!7862968 m!8262898))

(assert (=> b!7862968 m!8263034))

(assert (=> bm!729065 m!8262898))

(assert (=> bm!729065 m!8262938))

(assert (=> b!7862958 m!8262898))

(assert (=> b!7862958 m!8263038))

(assert (=> b!7862958 m!8263038))

(assert (=> b!7862958 m!8263044))

(assert (=> b!7862643 d!2354597))

(declare-fun b!7862976 () Bool)

(declare-fun e!4646431 () Regex!21133)

(declare-fun call!729073 () Regex!21133)

(assert (=> b!7862976 (= e!4646431 (Union!21133 (Concat!29978 call!729073 (regTwo!42778 r1!6218)) EmptyLang!21133))))

(declare-fun b!7862977 () Bool)

(declare-fun e!4646433 () Regex!21133)

(assert (=> b!7862977 (= e!4646433 EmptyLang!21133)))

(declare-fun b!7862978 () Bool)

(declare-fun e!4646430 () Regex!21133)

(declare-fun call!729072 () Regex!21133)

(assert (=> b!7862978 (= e!4646430 (Concat!29978 call!729072 r1!6218))))

(declare-fun bm!729066 () Bool)

(assert (=> bm!729066 (= call!729073 call!729072)))

(declare-fun bm!729067 () Bool)

(declare-fun call!729074 () Regex!21133)

(assert (=> bm!729067 (= call!729072 call!729074)))

(declare-fun b!7862980 () Bool)

(declare-fun e!4646429 () Regex!21133)

(assert (=> b!7862980 (= e!4646429 (ite (= (head!16081 s!14237) (c!1444829 r1!6218)) EmptyExpr!21133 EmptyLang!21133))))

(declare-fun c!1444931 () Bool)

(declare-fun c!1444935 () Bool)

(declare-fun bm!729068 () Bool)

(declare-fun c!1444933 () Bool)

(assert (=> bm!729068 (= call!729074 (derivativeStep!6366 (ite c!1444935 (regTwo!42779 r1!6218) (ite c!1444931 (reg!21462 r1!6218) (ite c!1444933 (regTwo!42778 r1!6218) (regOne!42778 r1!6218)))) (head!16081 s!14237)))))

(declare-fun b!7862981 () Bool)

(assert (=> b!7862981 (= e!4646433 e!4646429)))

(declare-fun c!1444936 () Bool)

(assert (=> b!7862981 (= c!1444936 ((_ is ElementMatch!21133) r1!6218))))

(declare-fun bm!729069 () Bool)

(declare-fun call!729071 () Regex!21133)

(assert (=> bm!729069 (= call!729071 (derivativeStep!6366 (ite c!1444935 (regOne!42779 r1!6218) (regOne!42778 r1!6218)) (head!16081 s!14237)))))

(declare-fun d!2354599 () Bool)

(declare-fun lt!2680516 () Regex!21133)

(assert (=> d!2354599 (validRegex!11543 lt!2680516)))

(assert (=> d!2354599 (= lt!2680516 e!4646433)))

(declare-fun c!1444934 () Bool)

(assert (=> d!2354599 (= c!1444934 (or ((_ is EmptyExpr!21133) r1!6218) ((_ is EmptyLang!21133) r1!6218)))))

(assert (=> d!2354599 (validRegex!11543 r1!6218)))

(assert (=> d!2354599 (= (derivativeStep!6366 r1!6218 (head!16081 s!14237)) lt!2680516)))

(declare-fun b!7862979 () Bool)

(assert (=> b!7862979 (= c!1444933 (nullable!9403 (regOne!42778 r1!6218)))))

(assert (=> b!7862979 (= e!4646430 e!4646431)))

(declare-fun b!7862982 () Bool)

(assert (=> b!7862982 (= c!1444935 ((_ is Union!21133) r1!6218))))

(declare-fun e!4646432 () Regex!21133)

(assert (=> b!7862982 (= e!4646429 e!4646432)))

(declare-fun b!7862983 () Bool)

(assert (=> b!7862983 (= e!4646432 (Union!21133 call!729071 call!729074))))

(declare-fun b!7862984 () Bool)

(assert (=> b!7862984 (= e!4646432 e!4646430)))

(assert (=> b!7862984 (= c!1444931 ((_ is Star!21133) r1!6218))))

(declare-fun b!7862985 () Bool)

(assert (=> b!7862985 (= e!4646431 (Union!21133 (Concat!29978 call!729071 (regTwo!42778 r1!6218)) call!729073))))

(assert (= (and d!2354599 c!1444934) b!7862977))

(assert (= (and d!2354599 (not c!1444934)) b!7862981))

(assert (= (and b!7862981 c!1444936) b!7862980))

(assert (= (and b!7862981 (not c!1444936)) b!7862982))

(assert (= (and b!7862982 c!1444935) b!7862983))

(assert (= (and b!7862982 (not c!1444935)) b!7862984))

(assert (= (and b!7862984 c!1444931) b!7862978))

(assert (= (and b!7862984 (not c!1444931)) b!7862979))

(assert (= (and b!7862979 c!1444933) b!7862985))

(assert (= (and b!7862979 (not c!1444933)) b!7862976))

(assert (= (or b!7862985 b!7862976) bm!729066))

(assert (= (or b!7862978 bm!729066) bm!729067))

(assert (= (or b!7862983 bm!729067) bm!729068))

(assert (= (or b!7862983 b!7862985) bm!729069))

(assert (=> bm!729068 m!8262894))

(declare-fun m!8263046 () Bool)

(assert (=> bm!729068 m!8263046))

(assert (=> bm!729069 m!8262894))

(declare-fun m!8263048 () Bool)

(assert (=> bm!729069 m!8263048))

(declare-fun m!8263050 () Bool)

(assert (=> d!2354599 m!8263050))

(assert (=> d!2354599 m!8262906))

(assert (=> b!7862979 m!8262964))

(assert (=> b!7862643 d!2354599))

(declare-fun d!2354601 () Bool)

(assert (=> d!2354601 (= (head!16081 s!14237) (h!80316 s!14237))))

(assert (=> b!7862643 d!2354601))

(declare-fun d!2354603 () Bool)

(assert (=> d!2354603 (= (tail!15624 s!14237) (t!388727 s!14237))))

(assert (=> b!7862643 d!2354603))

(declare-fun b!7862997 () Bool)

(declare-fun e!4646443 () Bool)

(declare-fun e!4646445 () Bool)

(assert (=> b!7862997 (= e!4646443 e!4646445)))

(declare-fun c!1444941 () Bool)

(assert (=> b!7862997 (= c!1444941 ((_ is Union!21133) lt!2680491))))

(declare-fun b!7862998 () Bool)

(declare-fun e!4646448 () Bool)

(assert (=> b!7862998 (= e!4646443 e!4646448)))

(declare-fun res!3125671 () Bool)

(assert (=> b!7862998 (= res!3125671 (not (nullable!9403 (reg!21462 lt!2680491))))))

(assert (=> b!7862998 (=> (not res!3125671) (not e!4646448))))

(declare-fun b!7862999 () Bool)

(declare-fun call!729078 () Bool)

(assert (=> b!7862999 (= e!4646448 call!729078)))

(declare-fun b!7863000 () Bool)

(declare-fun res!3125675 () Bool)

(declare-fun e!4646446 () Bool)

(assert (=> b!7863000 (=> (not res!3125675) (not e!4646446))))

(declare-fun call!729080 () Bool)

(assert (=> b!7863000 (= res!3125675 call!729080)))

(assert (=> b!7863000 (= e!4646445 e!4646446)))

(declare-fun bm!729073 () Bool)

(declare-fun call!729079 () Bool)

(assert (=> bm!729073 (= call!729079 (validRegex!11543 (ite c!1444941 (regTwo!42779 lt!2680491) (regTwo!42778 lt!2680491))))))

(declare-fun b!7863001 () Bool)

(declare-fun e!4646444 () Bool)

(assert (=> b!7863001 (= e!4646444 call!729079)))

(declare-fun b!7863002 () Bool)

(declare-fun e!4646442 () Bool)

(assert (=> b!7863002 (= e!4646442 e!4646443)))

(declare-fun c!1444940 () Bool)

(assert (=> b!7863002 (= c!1444940 ((_ is Star!21133) lt!2680491))))

(declare-fun bm!729074 () Bool)

(assert (=> bm!729074 (= call!729078 (validRegex!11543 (ite c!1444940 (reg!21462 lt!2680491) (ite c!1444941 (regOne!42779 lt!2680491) (regOne!42778 lt!2680491)))))))

(declare-fun b!7863003 () Bool)

(assert (=> b!7863003 (= e!4646446 call!729079)))

(declare-fun b!7863004 () Bool)

(declare-fun res!3125674 () Bool)

(declare-fun e!4646447 () Bool)

(assert (=> b!7863004 (=> res!3125674 e!4646447)))

(assert (=> b!7863004 (= res!3125674 (not ((_ is Concat!29978) lt!2680491)))))

(assert (=> b!7863004 (= e!4646445 e!4646447)))

(declare-fun bm!729075 () Bool)

(assert (=> bm!729075 (= call!729080 call!729078)))

(declare-fun d!2354607 () Bool)

(declare-fun res!3125672 () Bool)

(assert (=> d!2354607 (=> res!3125672 e!4646442)))

(assert (=> d!2354607 (= res!3125672 ((_ is ElementMatch!21133) lt!2680491))))

(assert (=> d!2354607 (= (validRegex!11543 lt!2680491) e!4646442)))

(declare-fun b!7863005 () Bool)

(assert (=> b!7863005 (= e!4646447 e!4646444)))

(declare-fun res!3125673 () Bool)

(assert (=> b!7863005 (=> (not res!3125673) (not e!4646444))))

(assert (=> b!7863005 (= res!3125673 call!729080)))

(assert (= (and d!2354607 (not res!3125672)) b!7863002))

(assert (= (and b!7863002 c!1444940) b!7862998))

(assert (= (and b!7863002 (not c!1444940)) b!7862997))

(assert (= (and b!7862998 res!3125671) b!7862999))

(assert (= (and b!7862997 c!1444941) b!7863000))

(assert (= (and b!7862997 (not c!1444941)) b!7863004))

(assert (= (and b!7863000 res!3125675) b!7863003))

(assert (= (and b!7863004 (not res!3125674)) b!7863005))

(assert (= (and b!7863005 res!3125673) b!7863001))

(assert (= (or b!7863003 b!7863001) bm!729073))

(assert (= (or b!7863000 b!7863005) bm!729075))

(assert (= (or b!7862999 bm!729075) bm!729074))

(declare-fun m!8263060 () Bool)

(assert (=> b!7862998 m!8263060))

(declare-fun m!8263062 () Bool)

(assert (=> bm!729073 m!8263062))

(declare-fun m!8263064 () Bool)

(assert (=> bm!729074 m!8263064))

(assert (=> b!7862637 d!2354607))

(declare-fun d!2354611 () Bool)

(assert (=> d!2354611 (= (isEmpty!42370 s!14237) ((_ is Nil!73868) s!14237))))

(assert (=> b!7862637 d!2354611))

(declare-fun d!2354615 () Bool)

(declare-fun e!4646480 () Bool)

(assert (=> d!2354615 e!4646480))

(declare-fun c!1444949 () Bool)

(assert (=> d!2354615 (= c!1444949 (isEmpty!42370 s!14237))))

(declare-fun lt!2680521 () Unit!168960)

(declare-fun choose!59674 (Regex!21133 List!73992) Unit!168960)

(assert (=> d!2354615 (= lt!2680521 (choose!59674 r1!6218 s!14237))))

(assert (=> d!2354615 (validRegex!11543 r1!6218)))

(assert (=> d!2354615 (= (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!14 r1!6218 s!14237) lt!2680521)))

(declare-fun b!7863088 () Bool)

(assert (=> b!7863088 (= e!4646480 (nullable!9403 r1!6218))))

(declare-fun b!7863089 () Bool)

(assert (=> b!7863089 (= e!4646480 (matchR!10569 (derivativeStep!6366 r1!6218 (head!16081 s!14237)) (tail!15624 s!14237)))))

(assert (= (and d!2354615 c!1444949) b!7863088))

(assert (= (and d!2354615 (not c!1444949)) b!7863089))

(assert (=> d!2354615 m!8262878))

(declare-fun m!8263088 () Bool)

(assert (=> d!2354615 m!8263088))

(assert (=> d!2354615 m!8262906))

(assert (=> b!7863088 m!8262902))

(assert (=> b!7863089 m!8262894))

(assert (=> b!7863089 m!8262894))

(assert (=> b!7863089 m!8262896))

(assert (=> b!7863089 m!8262898))

(assert (=> b!7863089 m!8262896))

(assert (=> b!7863089 m!8262898))

(assert (=> b!7863089 m!8262900))

(assert (=> b!7862637 d!2354615))

(declare-fun d!2354619 () Bool)

(assert (=> d!2354619 (= (nullable!9403 r2!6156) (nullableFct!3715 r2!6156))))

(declare-fun bs!1967218 () Bool)

(assert (= bs!1967218 d!2354619))

(declare-fun m!8263090 () Bool)

(assert (=> bs!1967218 m!8263090))

(assert (=> b!7862642 d!2354619))

(declare-fun e!4646483 () Bool)

(assert (=> b!7862647 (= tp!2330460 e!4646483)))

(declare-fun b!7863101 () Bool)

(declare-fun tp!2330537 () Bool)

(declare-fun tp!2330535 () Bool)

(assert (=> b!7863101 (= e!4646483 (and tp!2330537 tp!2330535))))

(declare-fun b!7863103 () Bool)

(declare-fun tp!2330534 () Bool)

(declare-fun tp!2330538 () Bool)

(assert (=> b!7863103 (= e!4646483 (and tp!2330534 tp!2330538))))

(declare-fun b!7863100 () Bool)

(assert (=> b!7863100 (= e!4646483 tp_is_empty!52665)))

(declare-fun b!7863102 () Bool)

(declare-fun tp!2330536 () Bool)

(assert (=> b!7863102 (= e!4646483 tp!2330536)))

(assert (= (and b!7862647 ((_ is ElementMatch!21133) (regOne!42779 r1!6218))) b!7863100))

(assert (= (and b!7862647 ((_ is Concat!29978) (regOne!42779 r1!6218))) b!7863101))

(assert (= (and b!7862647 ((_ is Star!21133) (regOne!42779 r1!6218))) b!7863102))

(assert (= (and b!7862647 ((_ is Union!21133) (regOne!42779 r1!6218))) b!7863103))

(declare-fun e!4646484 () Bool)

(assert (=> b!7862647 (= tp!2330453 e!4646484)))

(declare-fun b!7863105 () Bool)

(declare-fun tp!2330542 () Bool)

(declare-fun tp!2330540 () Bool)

(assert (=> b!7863105 (= e!4646484 (and tp!2330542 tp!2330540))))

(declare-fun b!7863107 () Bool)

(declare-fun tp!2330539 () Bool)

(declare-fun tp!2330543 () Bool)

(assert (=> b!7863107 (= e!4646484 (and tp!2330539 tp!2330543))))

(declare-fun b!7863104 () Bool)

(assert (=> b!7863104 (= e!4646484 tp_is_empty!52665)))

(declare-fun b!7863106 () Bool)

(declare-fun tp!2330541 () Bool)

(assert (=> b!7863106 (= e!4646484 tp!2330541)))

(assert (= (and b!7862647 ((_ is ElementMatch!21133) (regTwo!42779 r1!6218))) b!7863104))

(assert (= (and b!7862647 ((_ is Concat!29978) (regTwo!42779 r1!6218))) b!7863105))

(assert (= (and b!7862647 ((_ is Star!21133) (regTwo!42779 r1!6218))) b!7863106))

(assert (= (and b!7862647 ((_ is Union!21133) (regTwo!42779 r1!6218))) b!7863107))

(declare-fun e!4646485 () Bool)

(assert (=> b!7862636 (= tp!2330454 e!4646485)))

(declare-fun b!7863109 () Bool)

(declare-fun tp!2330547 () Bool)

(declare-fun tp!2330545 () Bool)

(assert (=> b!7863109 (= e!4646485 (and tp!2330547 tp!2330545))))

(declare-fun b!7863111 () Bool)

(declare-fun tp!2330544 () Bool)

(declare-fun tp!2330548 () Bool)

(assert (=> b!7863111 (= e!4646485 (and tp!2330544 tp!2330548))))

(declare-fun b!7863108 () Bool)

(assert (=> b!7863108 (= e!4646485 tp_is_empty!52665)))

(declare-fun b!7863110 () Bool)

(declare-fun tp!2330546 () Bool)

(assert (=> b!7863110 (= e!4646485 tp!2330546)))

(assert (= (and b!7862636 ((_ is ElementMatch!21133) (regOne!42778 r1!6218))) b!7863108))

(assert (= (and b!7862636 ((_ is Concat!29978) (regOne!42778 r1!6218))) b!7863109))

(assert (= (and b!7862636 ((_ is Star!21133) (regOne!42778 r1!6218))) b!7863110))

(assert (= (and b!7862636 ((_ is Union!21133) (regOne!42778 r1!6218))) b!7863111))

(declare-fun e!4646486 () Bool)

(assert (=> b!7862636 (= tp!2330451 e!4646486)))

(declare-fun b!7863113 () Bool)

(declare-fun tp!2330552 () Bool)

(declare-fun tp!2330550 () Bool)

(assert (=> b!7863113 (= e!4646486 (and tp!2330552 tp!2330550))))

(declare-fun b!7863115 () Bool)

(declare-fun tp!2330549 () Bool)

(declare-fun tp!2330553 () Bool)

(assert (=> b!7863115 (= e!4646486 (and tp!2330549 tp!2330553))))

(declare-fun b!7863112 () Bool)

(assert (=> b!7863112 (= e!4646486 tp_is_empty!52665)))

(declare-fun b!7863114 () Bool)

(declare-fun tp!2330551 () Bool)

(assert (=> b!7863114 (= e!4646486 tp!2330551)))

(assert (= (and b!7862636 ((_ is ElementMatch!21133) (regTwo!42778 r1!6218))) b!7863112))

(assert (= (and b!7862636 ((_ is Concat!29978) (regTwo!42778 r1!6218))) b!7863113))

(assert (= (and b!7862636 ((_ is Star!21133) (regTwo!42778 r1!6218))) b!7863114))

(assert (= (and b!7862636 ((_ is Union!21133) (regTwo!42778 r1!6218))) b!7863115))

(declare-fun b!7863120 () Bool)

(declare-fun e!4646489 () Bool)

(declare-fun tp!2330556 () Bool)

(assert (=> b!7863120 (= e!4646489 (and tp_is_empty!52665 tp!2330556))))

(assert (=> b!7862641 (= tp!2330450 e!4646489)))

(assert (= (and b!7862641 ((_ is Cons!73868) (t!388727 s!14237))) b!7863120))

(declare-fun e!4646490 () Bool)

(assert (=> b!7862651 (= tp!2330457 e!4646490)))

(declare-fun b!7863122 () Bool)

(declare-fun tp!2330560 () Bool)

(declare-fun tp!2330558 () Bool)

(assert (=> b!7863122 (= e!4646490 (and tp!2330560 tp!2330558))))

(declare-fun b!7863124 () Bool)

(declare-fun tp!2330557 () Bool)

(declare-fun tp!2330561 () Bool)

(assert (=> b!7863124 (= e!4646490 (and tp!2330557 tp!2330561))))

(declare-fun b!7863121 () Bool)

(assert (=> b!7863121 (= e!4646490 tp_is_empty!52665)))

(declare-fun b!7863123 () Bool)

(declare-fun tp!2330559 () Bool)

(assert (=> b!7863123 (= e!4646490 tp!2330559)))

(assert (= (and b!7862651 ((_ is ElementMatch!21133) (regOne!42779 r2!6156))) b!7863121))

(assert (= (and b!7862651 ((_ is Concat!29978) (regOne!42779 r2!6156))) b!7863122))

(assert (= (and b!7862651 ((_ is Star!21133) (regOne!42779 r2!6156))) b!7863123))

(assert (= (and b!7862651 ((_ is Union!21133) (regOne!42779 r2!6156))) b!7863124))

(declare-fun e!4646491 () Bool)

(assert (=> b!7862651 (= tp!2330452 e!4646491)))

(declare-fun b!7863126 () Bool)

(declare-fun tp!2330565 () Bool)

(declare-fun tp!2330563 () Bool)

(assert (=> b!7863126 (= e!4646491 (and tp!2330565 tp!2330563))))

(declare-fun b!7863128 () Bool)

(declare-fun tp!2330562 () Bool)

(declare-fun tp!2330566 () Bool)

(assert (=> b!7863128 (= e!4646491 (and tp!2330562 tp!2330566))))

(declare-fun b!7863125 () Bool)

(assert (=> b!7863125 (= e!4646491 tp_is_empty!52665)))

(declare-fun b!7863127 () Bool)

(declare-fun tp!2330564 () Bool)

(assert (=> b!7863127 (= e!4646491 tp!2330564)))

(assert (= (and b!7862651 ((_ is ElementMatch!21133) (regTwo!42779 r2!6156))) b!7863125))

(assert (= (and b!7862651 ((_ is Concat!29978) (regTwo!42779 r2!6156))) b!7863126))

(assert (= (and b!7862651 ((_ is Star!21133) (regTwo!42779 r2!6156))) b!7863127))

(assert (= (and b!7862651 ((_ is Union!21133) (regTwo!42779 r2!6156))) b!7863128))

(declare-fun e!4646492 () Bool)

(assert (=> b!7862644 (= tp!2330456 e!4646492)))

(declare-fun b!7863130 () Bool)

(declare-fun tp!2330570 () Bool)

(declare-fun tp!2330568 () Bool)

(assert (=> b!7863130 (= e!4646492 (and tp!2330570 tp!2330568))))

(declare-fun b!7863132 () Bool)

(declare-fun tp!2330567 () Bool)

(declare-fun tp!2330571 () Bool)

(assert (=> b!7863132 (= e!4646492 (and tp!2330567 tp!2330571))))

(declare-fun b!7863129 () Bool)

(assert (=> b!7863129 (= e!4646492 tp_is_empty!52665)))

(declare-fun b!7863131 () Bool)

(declare-fun tp!2330569 () Bool)

(assert (=> b!7863131 (= e!4646492 tp!2330569)))

(assert (= (and b!7862644 ((_ is ElementMatch!21133) (reg!21462 r1!6218))) b!7863129))

(assert (= (and b!7862644 ((_ is Concat!29978) (reg!21462 r1!6218))) b!7863130))

(assert (= (and b!7862644 ((_ is Star!21133) (reg!21462 r1!6218))) b!7863131))

(assert (= (and b!7862644 ((_ is Union!21133) (reg!21462 r1!6218))) b!7863132))

(declare-fun e!4646493 () Bool)

(assert (=> b!7862654 (= tp!2330459 e!4646493)))

(declare-fun b!7863134 () Bool)

(declare-fun tp!2330575 () Bool)

(declare-fun tp!2330573 () Bool)

(assert (=> b!7863134 (= e!4646493 (and tp!2330575 tp!2330573))))

(declare-fun b!7863136 () Bool)

(declare-fun tp!2330572 () Bool)

(declare-fun tp!2330576 () Bool)

(assert (=> b!7863136 (= e!4646493 (and tp!2330572 tp!2330576))))

(declare-fun b!7863133 () Bool)

(assert (=> b!7863133 (= e!4646493 tp_is_empty!52665)))

(declare-fun b!7863135 () Bool)

(declare-fun tp!2330574 () Bool)

(assert (=> b!7863135 (= e!4646493 tp!2330574)))

(assert (= (and b!7862654 ((_ is ElementMatch!21133) (reg!21462 r2!6156))) b!7863133))

(assert (= (and b!7862654 ((_ is Concat!29978) (reg!21462 r2!6156))) b!7863134))

(assert (= (and b!7862654 ((_ is Star!21133) (reg!21462 r2!6156))) b!7863135))

(assert (= (and b!7862654 ((_ is Union!21133) (reg!21462 r2!6156))) b!7863136))

(declare-fun e!4646494 () Bool)

(assert (=> b!7862638 (= tp!2330458 e!4646494)))

(declare-fun b!7863138 () Bool)

(declare-fun tp!2330580 () Bool)

(declare-fun tp!2330578 () Bool)

(assert (=> b!7863138 (= e!4646494 (and tp!2330580 tp!2330578))))

(declare-fun b!7863140 () Bool)

(declare-fun tp!2330577 () Bool)

(declare-fun tp!2330581 () Bool)

(assert (=> b!7863140 (= e!4646494 (and tp!2330577 tp!2330581))))

(declare-fun b!7863137 () Bool)

(assert (=> b!7863137 (= e!4646494 tp_is_empty!52665)))

(declare-fun b!7863139 () Bool)

(declare-fun tp!2330579 () Bool)

(assert (=> b!7863139 (= e!4646494 tp!2330579)))

(assert (= (and b!7862638 ((_ is ElementMatch!21133) (regOne!42778 r2!6156))) b!7863137))

(assert (= (and b!7862638 ((_ is Concat!29978) (regOne!42778 r2!6156))) b!7863138))

(assert (= (and b!7862638 ((_ is Star!21133) (regOne!42778 r2!6156))) b!7863139))

(assert (= (and b!7862638 ((_ is Union!21133) (regOne!42778 r2!6156))) b!7863140))

(declare-fun e!4646495 () Bool)

(assert (=> b!7862638 (= tp!2330455 e!4646495)))

(declare-fun b!7863142 () Bool)

(declare-fun tp!2330585 () Bool)

(declare-fun tp!2330583 () Bool)

(assert (=> b!7863142 (= e!4646495 (and tp!2330585 tp!2330583))))

(declare-fun b!7863144 () Bool)

(declare-fun tp!2330582 () Bool)

(declare-fun tp!2330586 () Bool)

(assert (=> b!7863144 (= e!4646495 (and tp!2330582 tp!2330586))))

(declare-fun b!7863141 () Bool)

(assert (=> b!7863141 (= e!4646495 tp_is_empty!52665)))

(declare-fun b!7863143 () Bool)

(declare-fun tp!2330584 () Bool)

(assert (=> b!7863143 (= e!4646495 tp!2330584)))

(assert (= (and b!7862638 ((_ is ElementMatch!21133) (regTwo!42778 r2!6156))) b!7863141))

(assert (= (and b!7862638 ((_ is Concat!29978) (regTwo!42778 r2!6156))) b!7863142))

(assert (= (and b!7862638 ((_ is Star!21133) (regTwo!42778 r2!6156))) b!7863143))

(assert (= (and b!7862638 ((_ is Union!21133) (regTwo!42778 r2!6156))) b!7863144))

(check-sat (not bm!729021) (not b!7862748) (not d!2354559) (not b!7863107) (not b!7862727) (not b!7862806) (not b!7863106) (not bm!729060) (not b!7863128) (not b!7863110) (not bm!729069) (not b!7862950) (not bm!729065) (not b!7862998) (not bm!729062) (not b!7862741) (not bm!729025) (not bm!729074) (not b!7863101) (not b!7863088) (not b!7862960) (not b!7863103) (not bm!729024) (not b!7862968) (not bm!729053) (not b!7863127) (not b!7863109) (not d!2354561) (not b!7863102) (not b!7863111) (not d!2354573) (not bm!729073) (not b!7863131) (not b!7863105) (not b!7862736) (not b!7862969) (not b!7862728) (not b!7863139) (not b!7862830) (not b!7863135) (not bm!729059) (not b!7862840) (not b!7863114) (not b!7862979) (not d!2354597) (not b!7863144) (not d!2354575) (not bm!729020) (not bm!729015) (not b!7862749) (not b!7863130) (not b!7862967) (not b!7863138) (not b!7863134) (not b!7863132) (not b!7863143) (not b!7863124) (not bm!729016) (not b!7862941) (not b!7862725) (not bm!729063) (not b!7863136) (not b!7863120) (not b!7863126) (not b!7863123) (not bm!728992) (not b!7862961) (not b!7862923) (not d!2354599) (not d!2354615) tp_is_empty!52665 (not bm!729054) (not bm!728991) (not b!7862958) (not b!7863140) (not bm!729068) (not b!7862742) (not d!2354619) (not b!7863122) (not d!2354555) (not b!7862739) (not b!7862734) (not b!7863113) (not b!7863089) (not b!7863115) (not d!2354569) (not b!7862750) (not b!7863142) (not b!7862735))
(check-sat)
