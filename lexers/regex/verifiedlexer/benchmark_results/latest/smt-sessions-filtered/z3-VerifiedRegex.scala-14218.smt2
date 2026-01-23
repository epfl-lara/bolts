; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744458 () Bool)

(assert start!744458)

(declare-datatypes ((C!42744 0))(
  ( (C!42745 (val!31834 Int)) )
))
(declare-datatypes ((List!74066 0))(
  ( (Nil!73942) (Cons!73942 (h!80390 C!42744) (t!388801 List!74066)) )
))
(declare-fun s!9586 () List!74066)

(declare-datatypes ((Regex!21209 0))(
  ( (ElementMatch!21209 (c!1447959 C!42744)) (Concat!30054 (regOne!42930 Regex!21209) (regTwo!42930 Regex!21209)) (EmptyExpr!21209) (Star!21209 (reg!21538 Regex!21209)) (EmptyLang!21209) (Union!21209 (regOne!42931 Regex!21209) (regTwo!42931 Regex!21209)) )
))
(declare-fun r!14100 () Regex!21209)

(declare-fun b!7887503 () Bool)

(declare-datatypes ((tuple2!70056 0))(
  ( (tuple2!70057 (_1!38331 List!74066) (_2!38331 List!74066)) )
))
(declare-fun cut!2 () tuple2!70056)

(declare-fun e!4656826 () Bool)

(declare-fun size!42850 (List!74066) Int)

(declare-fun regexDepth!513 (Regex!21209) Int)

(assert (=> b!7887503 (= e!4656826 (>= (+ (size!42850 (_1!38331 cut!2)) (regexDepth!513 (reg!21538 r!14100))) (+ (size!42850 s!9586) (regexDepth!513 r!14100))))))

(declare-fun b!7887504 () Bool)

(declare-fun e!4656823 () Bool)

(declare-fun tp!2346478 () Bool)

(declare-fun tp!2346479 () Bool)

(assert (=> b!7887504 (= e!4656823 (and tp!2346478 tp!2346479))))

(declare-fun b!7887505 () Bool)

(declare-fun res!3131112 () Bool)

(assert (=> b!7887505 (=> (not res!3131112) (not e!4656826))))

(get-info :version)

(assert (=> b!7887505 (= res!3131112 (and (not ((_ is EmptyExpr!21209) r!14100)) (not ((_ is EmptyLang!21209) r!14100)) (not ((_ is ElementMatch!21209) r!14100)) (not ((_ is Union!21209) r!14100)) ((_ is Star!21209) r!14100)))))

(declare-fun b!7887506 () Bool)

(declare-fun e!4656824 () Bool)

(declare-fun tp_is_empty!52817 () Bool)

(declare-fun tp!2346477 () Bool)

(assert (=> b!7887506 (= e!4656824 (and tp_is_empty!52817 tp!2346477))))

(declare-fun b!7887508 () Bool)

(declare-fun tp!2346482 () Bool)

(declare-fun tp!2346480 () Bool)

(assert (=> b!7887508 (= e!4656823 (and tp!2346482 tp!2346480))))

(declare-fun b!7887509 () Bool)

(declare-fun e!4656825 () Bool)

(declare-fun tp!2346475 () Bool)

(assert (=> b!7887509 (= e!4656825 (and tp_is_empty!52817 tp!2346475))))

(declare-fun b!7887510 () Bool)

(declare-fun res!3131115 () Bool)

(assert (=> b!7887510 (=> (not res!3131115) (not e!4656826))))

(declare-fun ++!18113 (List!74066 List!74066) List!74066)

(assert (=> b!7887510 (= res!3131115 (= (++!18113 (_1!38331 cut!2) (_2!38331 cut!2)) s!9586))))

(declare-fun b!7887511 () Bool)

(declare-fun tp!2346481 () Bool)

(assert (=> b!7887511 (= e!4656823 tp!2346481)))

(declare-fun b!7887512 () Bool)

(declare-fun res!3131113 () Bool)

(assert (=> b!7887512 (=> (not res!3131113) (not e!4656826))))

(declare-fun isEmpty!42427 (List!74066) Bool)

(assert (=> b!7887512 (= res!3131113 (not (isEmpty!42427 s!9586)))))

(declare-fun b!7887513 () Bool)

(declare-fun e!4656827 () Bool)

(declare-fun tp!2346476 () Bool)

(assert (=> b!7887513 (= e!4656827 (and tp_is_empty!52817 tp!2346476))))

(declare-fun b!7887514 () Bool)

(assert (=> b!7887514 (= e!4656823 tp_is_empty!52817)))

(declare-fun b!7887507 () Bool)

(declare-fun res!3131114 () Bool)

(assert (=> b!7887507 (=> (not res!3131114) (not e!4656826))))

(assert (=> b!7887507 (= res!3131114 (not (isEmpty!42427 (_1!38331 cut!2))))))

(declare-fun res!3131116 () Bool)

(assert (=> start!744458 (=> (not res!3131116) (not e!4656826))))

(declare-fun validRegex!11619 (Regex!21209) Bool)

(assert (=> start!744458 (= res!3131116 (validRegex!11619 r!14100))))

(assert (=> start!744458 e!4656826))

(assert (=> start!744458 e!4656823))

(assert (=> start!744458 e!4656825))

(assert (=> start!744458 (and e!4656824 e!4656827)))

(assert (= (and start!744458 res!3131116) b!7887505))

(assert (= (and b!7887505 res!3131112) b!7887512))

(assert (= (and b!7887512 res!3131113) b!7887510))

(assert (= (and b!7887510 res!3131115) b!7887507))

(assert (= (and b!7887507 res!3131114) b!7887503))

(assert (= (and start!744458 ((_ is ElementMatch!21209) r!14100)) b!7887514))

(assert (= (and start!744458 ((_ is Concat!30054) r!14100)) b!7887508))

(assert (= (and start!744458 ((_ is Star!21209) r!14100)) b!7887511))

(assert (= (and start!744458 ((_ is Union!21209) r!14100)) b!7887504))

(assert (= (and start!744458 ((_ is Cons!73942) s!9586)) b!7887509))

(assert (= (and start!744458 ((_ is Cons!73942) (_1!38331 cut!2))) b!7887506))

(assert (= (and start!744458 ((_ is Cons!73942) (_2!38331 cut!2))) b!7887513))

(declare-fun m!8269540 () Bool)

(assert (=> b!7887507 m!8269540))

(declare-fun m!8269542 () Bool)

(assert (=> b!7887510 m!8269542))

(declare-fun m!8269544 () Bool)

(assert (=> b!7887503 m!8269544))

(declare-fun m!8269546 () Bool)

(assert (=> b!7887503 m!8269546))

(declare-fun m!8269548 () Bool)

(assert (=> b!7887503 m!8269548))

(declare-fun m!8269550 () Bool)

(assert (=> b!7887503 m!8269550))

(declare-fun m!8269552 () Bool)

(assert (=> start!744458 m!8269552))

(declare-fun m!8269554 () Bool)

(assert (=> b!7887512 m!8269554))

(check-sat (not start!744458) (not b!7887508) (not b!7887507) (not b!7887511) (not b!7887503) (not b!7887506) (not b!7887510) (not b!7887512) (not b!7887504) tp_is_empty!52817 (not b!7887509) (not b!7887513))
(check-sat)
(get-model)

(declare-fun b!7887539 () Bool)

(declare-fun e!4656851 () Bool)

(declare-fun call!731740 () Bool)

(assert (=> b!7887539 (= e!4656851 call!731740)))

(declare-fun b!7887540 () Bool)

(declare-fun e!4656849 () Bool)

(declare-fun e!4656846 () Bool)

(assert (=> b!7887540 (= e!4656849 e!4656846)))

(declare-fun c!1447968 () Bool)

(assert (=> b!7887540 (= c!1447968 ((_ is Union!21209) r!14100))))

(declare-fun b!7887541 () Bool)

(declare-fun e!4656847 () Bool)

(assert (=> b!7887541 (= e!4656847 e!4656849)))

(declare-fun c!1447967 () Bool)

(assert (=> b!7887541 (= c!1447967 ((_ is Star!21209) r!14100))))

(declare-fun b!7887542 () Bool)

(declare-fun e!4656850 () Bool)

(declare-fun call!731741 () Bool)

(assert (=> b!7887542 (= e!4656850 call!731741)))

(declare-fun b!7887543 () Bool)

(declare-fun e!4656845 () Bool)

(assert (=> b!7887543 (= e!4656845 e!4656850)))

(declare-fun res!3131130 () Bool)

(assert (=> b!7887543 (=> (not res!3131130) (not e!4656850))))

(assert (=> b!7887543 (= res!3131130 call!731740)))

(declare-fun bm!731734 () Bool)

(assert (=> bm!731734 (= call!731740 (validRegex!11619 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun bm!731735 () Bool)

(declare-fun call!731739 () Bool)

(assert (=> bm!731735 (= call!731741 call!731739)))

(declare-fun b!7887545 () Bool)

(declare-fun res!3131129 () Bool)

(assert (=> b!7887545 (=> (not res!3131129) (not e!4656851))))

(assert (=> b!7887545 (= res!3131129 call!731741)))

(assert (=> b!7887545 (= e!4656846 e!4656851)))

(declare-fun b!7887546 () Bool)

(declare-fun e!4656848 () Bool)

(assert (=> b!7887546 (= e!4656849 e!4656848)))

(declare-fun res!3131127 () Bool)

(declare-fun nullable!9463 (Regex!21209) Bool)

(assert (=> b!7887546 (= res!3131127 (not (nullable!9463 (reg!21538 r!14100))))))

(assert (=> b!7887546 (=> (not res!3131127) (not e!4656848))))

(declare-fun b!7887547 () Bool)

(declare-fun res!3131128 () Bool)

(assert (=> b!7887547 (=> res!3131128 e!4656845)))

(assert (=> b!7887547 (= res!3131128 (not ((_ is Concat!30054) r!14100)))))

(assert (=> b!7887547 (= e!4656846 e!4656845)))

(declare-fun bm!731736 () Bool)

(assert (=> bm!731736 (= call!731739 (validRegex!11619 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))

(declare-fun d!2356559 () Bool)

(declare-fun res!3131131 () Bool)

(assert (=> d!2356559 (=> res!3131131 e!4656847)))

(assert (=> d!2356559 (= res!3131131 ((_ is ElementMatch!21209) r!14100))))

(assert (=> d!2356559 (= (validRegex!11619 r!14100) e!4656847)))

(declare-fun b!7887544 () Bool)

(assert (=> b!7887544 (= e!4656848 call!731739)))

(assert (= (and d!2356559 (not res!3131131)) b!7887541))

(assert (= (and b!7887541 c!1447967) b!7887546))

(assert (= (and b!7887541 (not c!1447967)) b!7887540))

(assert (= (and b!7887546 res!3131127) b!7887544))

(assert (= (and b!7887540 c!1447968) b!7887545))

(assert (= (and b!7887540 (not c!1447968)) b!7887547))

(assert (= (and b!7887545 res!3131129) b!7887539))

(assert (= (and b!7887547 (not res!3131128)) b!7887543))

(assert (= (and b!7887543 res!3131130) b!7887542))

(assert (= (or b!7887539 b!7887543) bm!731734))

(assert (= (or b!7887545 b!7887542) bm!731735))

(assert (= (or b!7887544 bm!731735) bm!731736))

(declare-fun m!8269558 () Bool)

(assert (=> bm!731734 m!8269558))

(declare-fun m!8269560 () Bool)

(assert (=> b!7887546 m!8269560))

(declare-fun m!8269562 () Bool)

(assert (=> bm!731736 m!8269562))

(assert (=> start!744458 d!2356559))

(declare-fun d!2356565 () Bool)

(assert (=> d!2356565 (= (isEmpty!42427 s!9586) ((_ is Nil!73942) s!9586))))

(assert (=> b!7887512 d!2356565))

(declare-fun d!2356567 () Bool)

(assert (=> d!2356567 (= (isEmpty!42427 (_1!38331 cut!2)) ((_ is Nil!73942) (_1!38331 cut!2)))))

(assert (=> b!7887507 d!2356567))

(declare-fun d!2356569 () Bool)

(declare-fun lt!2681429 () Int)

(assert (=> d!2356569 (>= lt!2681429 0)))

(declare-fun e!4656874 () Int)

(assert (=> d!2356569 (= lt!2681429 e!4656874)))

(declare-fun c!1447985 () Bool)

(assert (=> d!2356569 (= c!1447985 ((_ is Nil!73942) (_1!38331 cut!2)))))

(assert (=> d!2356569 (= (size!42850 (_1!38331 cut!2)) lt!2681429)))

(declare-fun b!7887586 () Bool)

(assert (=> b!7887586 (= e!4656874 0)))

(declare-fun b!7887587 () Bool)

(assert (=> b!7887587 (= e!4656874 (+ 1 (size!42850 (t!388801 (_1!38331 cut!2)))))))

(assert (= (and d!2356569 c!1447985) b!7887586))

(assert (= (and d!2356569 (not c!1447985)) b!7887587))

(declare-fun m!8269564 () Bool)

(assert (=> b!7887587 m!8269564))

(assert (=> b!7887503 d!2356569))

(declare-fun b!7887666 () Bool)

(declare-fun e!4656923 () Bool)

(declare-fun lt!2681437 () Int)

(declare-fun call!731789 () Int)

(assert (=> b!7887666 (= e!4656923 (> lt!2681437 call!731789))))

(declare-fun bm!731779 () Bool)

(declare-fun c!1448019 () Bool)

(declare-fun call!731790 () Int)

(declare-fun call!731784 () Int)

(declare-fun call!731785 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!731779 (= call!731790 (maxBigInt!0 (ite c!1448019 call!731785 call!731784) (ite c!1448019 call!731784 call!731785)))))

(declare-fun c!1448017 () Bool)

(declare-fun bm!731780 () Bool)

(declare-fun call!731788 () Int)

(assert (=> bm!731780 (= call!731788 (regexDepth!513 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(declare-fun b!7887667 () Bool)

(assert (=> b!7887667 (= c!1448019 ((_ is Union!21209) (reg!21538 r!14100)))))

(declare-fun e!4656924 () Int)

(declare-fun e!4656926 () Int)

(assert (=> b!7887667 (= e!4656924 e!4656926)))

(declare-fun b!7887668 () Bool)

(declare-fun res!3131156 () Bool)

(assert (=> b!7887668 (=> (not res!3131156) (not e!4656923))))

(declare-fun call!731786 () Int)

(assert (=> b!7887668 (= res!3131156 (> lt!2681437 call!731786))))

(declare-fun e!4656920 () Bool)

(assert (=> b!7887668 (= e!4656920 e!4656923)))

(declare-fun b!7887669 () Bool)

(assert (=> b!7887669 (= e!4656926 (+ 1 call!731790))))

(declare-fun b!7887670 () Bool)

(declare-fun e!4656927 () Int)

(assert (=> b!7887670 (= e!4656927 (+ 1 call!731790))))

(declare-fun b!7887671 () Bool)

(assert (=> b!7887671 (= e!4656927 1)))

(declare-fun b!7887672 () Bool)

(declare-fun e!4656925 () Bool)

(assert (=> b!7887672 (= e!4656925 (= lt!2681437 1))))

(declare-fun b!7887673 () Bool)

(assert (=> b!7887673 (= e!4656926 e!4656927)))

(declare-fun c!1448020 () Bool)

(assert (=> b!7887673 (= c!1448020 ((_ is Concat!30054) (reg!21538 r!14100)))))

(declare-fun b!7887674 () Bool)

(declare-fun e!4656929 () Bool)

(declare-fun e!4656921 () Bool)

(assert (=> b!7887674 (= e!4656929 e!4656921)))

(declare-fun c!1448023 () Bool)

(assert (=> b!7887674 (= c!1448023 ((_ is Union!21209) (reg!21538 r!14100)))))

(declare-fun b!7887675 () Bool)

(assert (=> b!7887675 (= e!4656924 (+ 1 call!731788))))

(declare-fun call!731787 () Int)

(declare-fun c!1448022 () Bool)

(declare-fun bm!731782 () Bool)

(assert (=> bm!731782 (= call!731787 (regexDepth!513 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(declare-fun b!7887676 () Bool)

(declare-fun e!4656922 () Int)

(assert (=> b!7887676 (= e!4656922 e!4656924)))

(assert (=> b!7887676 (= c!1448017 ((_ is Star!21209) (reg!21538 r!14100)))))

(declare-fun b!7887677 () Bool)

(declare-fun e!4656928 () Bool)

(assert (=> b!7887677 (= e!4656921 e!4656928)))

(declare-fun res!3131154 () Bool)

(assert (=> b!7887677 (= res!3131154 (> lt!2681437 call!731787))))

(assert (=> b!7887677 (=> (not res!3131154) (not e!4656928))))

(declare-fun b!7887678 () Bool)

(assert (=> b!7887678 (= e!4656921 e!4656920)))

(assert (=> b!7887678 (= c!1448022 ((_ is Concat!30054) (reg!21538 r!14100)))))

(declare-fun b!7887679 () Bool)

(assert (=> b!7887679 (= e!4656922 1)))

(declare-fun bm!731781 () Bool)

(assert (=> bm!731781 (= call!731786 (regexDepth!513 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(declare-fun d!2356571 () Bool)

(assert (=> d!2356571 e!4656929))

(declare-fun res!3131155 () Bool)

(assert (=> d!2356571 (=> (not res!3131155) (not e!4656929))))

(assert (=> d!2356571 (= res!3131155 (> lt!2681437 0))))

(assert (=> d!2356571 (= lt!2681437 e!4656922)))

(declare-fun c!1448021 () Bool)

(assert (=> d!2356571 (= c!1448021 ((_ is ElementMatch!21209) (reg!21538 r!14100)))))

(assert (=> d!2356571 (= (regexDepth!513 (reg!21538 r!14100)) lt!2681437)))

(declare-fun bm!731783 () Bool)

(assert (=> bm!731783 (= call!731789 call!731787)))

(declare-fun b!7887680 () Bool)

(assert (=> b!7887680 (= e!4656925 (> lt!2681437 call!731789))))

(declare-fun bm!731784 () Bool)

(assert (=> bm!731784 (= call!731785 (regexDepth!513 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887681 () Bool)

(assert (=> b!7887681 (= e!4656928 (> lt!2681437 call!731786))))

(declare-fun b!7887682 () Bool)

(declare-fun c!1448018 () Bool)

(assert (=> b!7887682 (= c!1448018 ((_ is Star!21209) (reg!21538 r!14100)))))

(assert (=> b!7887682 (= e!4656920 e!4656925)))

(declare-fun bm!731785 () Bool)

(assert (=> bm!731785 (= call!731784 call!731788)))

(assert (= (and d!2356571 c!1448021) b!7887679))

(assert (= (and d!2356571 (not c!1448021)) b!7887676))

(assert (= (and b!7887676 c!1448017) b!7887675))

(assert (= (and b!7887676 (not c!1448017)) b!7887667))

(assert (= (and b!7887667 c!1448019) b!7887669))

(assert (= (and b!7887667 (not c!1448019)) b!7887673))

(assert (= (and b!7887673 c!1448020) b!7887670))

(assert (= (and b!7887673 (not c!1448020)) b!7887671))

(assert (= (or b!7887669 b!7887670) bm!731784))

(assert (= (or b!7887669 b!7887670) bm!731785))

(assert (= (or b!7887669 b!7887670) bm!731779))

(assert (= (or b!7887675 bm!731785) bm!731780))

(assert (= (and d!2356571 res!3131155) b!7887674))

(assert (= (and b!7887674 c!1448023) b!7887677))

(assert (= (and b!7887674 (not c!1448023)) b!7887678))

(assert (= (and b!7887677 res!3131154) b!7887681))

(assert (= (and b!7887678 c!1448022) b!7887668))

(assert (= (and b!7887678 (not c!1448022)) b!7887682))

(assert (= (and b!7887668 res!3131156) b!7887666))

(assert (= (and b!7887682 c!1448018) b!7887680))

(assert (= (and b!7887682 (not c!1448018)) b!7887672))

(assert (= (or b!7887666 b!7887680) bm!731783))

(assert (= (or b!7887677 bm!731783) bm!731782))

(assert (= (or b!7887681 b!7887668) bm!731781))

(declare-fun m!8269588 () Bool)

(assert (=> bm!731780 m!8269588))

(declare-fun m!8269590 () Bool)

(assert (=> bm!731782 m!8269590))

(declare-fun m!8269592 () Bool)

(assert (=> bm!731779 m!8269592))

(declare-fun m!8269594 () Bool)

(assert (=> bm!731781 m!8269594))

(declare-fun m!8269596 () Bool)

(assert (=> bm!731784 m!8269596))

(assert (=> b!7887503 d!2356571))

(declare-fun d!2356581 () Bool)

(declare-fun lt!2681438 () Int)

(assert (=> d!2356581 (>= lt!2681438 0)))

(declare-fun e!4656930 () Int)

(assert (=> d!2356581 (= lt!2681438 e!4656930)))

(declare-fun c!1448024 () Bool)

(assert (=> d!2356581 (= c!1448024 ((_ is Nil!73942) s!9586))))

(assert (=> d!2356581 (= (size!42850 s!9586) lt!2681438)))

(declare-fun b!7887683 () Bool)

(assert (=> b!7887683 (= e!4656930 0)))

(declare-fun b!7887684 () Bool)

(assert (=> b!7887684 (= e!4656930 (+ 1 (size!42850 (t!388801 s!9586))))))

(assert (= (and d!2356581 c!1448024) b!7887683))

(assert (= (and d!2356581 (not c!1448024)) b!7887684))

(declare-fun m!8269598 () Bool)

(assert (=> b!7887684 m!8269598))

(assert (=> b!7887503 d!2356581))

(declare-fun b!7887685 () Bool)

(declare-fun e!4656934 () Bool)

(declare-fun lt!2681439 () Int)

(declare-fun call!731796 () Int)

(assert (=> b!7887685 (= e!4656934 (> lt!2681439 call!731796))))

(declare-fun call!731797 () Int)

(declare-fun call!731792 () Int)

(declare-fun call!731791 () Int)

(declare-fun c!1448027 () Bool)

(declare-fun bm!731786 () Bool)

(assert (=> bm!731786 (= call!731797 (maxBigInt!0 (ite c!1448027 call!731792 call!731791) (ite c!1448027 call!731791 call!731792)))))

(declare-fun bm!731787 () Bool)

(declare-fun c!1448025 () Bool)

(declare-fun call!731795 () Int)

(assert (=> bm!731787 (= call!731795 (regexDepth!513 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(declare-fun b!7887686 () Bool)

(assert (=> b!7887686 (= c!1448027 ((_ is Union!21209) r!14100))))

(declare-fun e!4656935 () Int)

(declare-fun e!4656937 () Int)

(assert (=> b!7887686 (= e!4656935 e!4656937)))

(declare-fun b!7887687 () Bool)

(declare-fun res!3131159 () Bool)

(assert (=> b!7887687 (=> (not res!3131159) (not e!4656934))))

(declare-fun call!731793 () Int)

(assert (=> b!7887687 (= res!3131159 (> lt!2681439 call!731793))))

(declare-fun e!4656931 () Bool)

(assert (=> b!7887687 (= e!4656931 e!4656934)))

(declare-fun b!7887688 () Bool)

(assert (=> b!7887688 (= e!4656937 (+ 1 call!731797))))

(declare-fun b!7887689 () Bool)

(declare-fun e!4656938 () Int)

(assert (=> b!7887689 (= e!4656938 (+ 1 call!731797))))

(declare-fun b!7887690 () Bool)

(assert (=> b!7887690 (= e!4656938 1)))

(declare-fun b!7887691 () Bool)

(declare-fun e!4656936 () Bool)

(assert (=> b!7887691 (= e!4656936 (= lt!2681439 1))))

(declare-fun b!7887692 () Bool)

(assert (=> b!7887692 (= e!4656937 e!4656938)))

(declare-fun c!1448028 () Bool)

(assert (=> b!7887692 (= c!1448028 ((_ is Concat!30054) r!14100))))

(declare-fun b!7887693 () Bool)

(declare-fun e!4656940 () Bool)

(declare-fun e!4656932 () Bool)

(assert (=> b!7887693 (= e!4656940 e!4656932)))

(declare-fun c!1448031 () Bool)

(assert (=> b!7887693 (= c!1448031 ((_ is Union!21209) r!14100))))

(declare-fun b!7887694 () Bool)

(assert (=> b!7887694 (= e!4656935 (+ 1 call!731795))))

(declare-fun bm!731789 () Bool)

(declare-fun c!1448030 () Bool)

(declare-fun call!731794 () Int)

(assert (=> bm!731789 (= call!731794 (regexDepth!513 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(declare-fun b!7887695 () Bool)

(declare-fun e!4656933 () Int)

(assert (=> b!7887695 (= e!4656933 e!4656935)))

(assert (=> b!7887695 (= c!1448025 ((_ is Star!21209) r!14100))))

(declare-fun b!7887696 () Bool)

(declare-fun e!4656939 () Bool)

(assert (=> b!7887696 (= e!4656932 e!4656939)))

(declare-fun res!3131157 () Bool)

(assert (=> b!7887696 (= res!3131157 (> lt!2681439 call!731794))))

(assert (=> b!7887696 (=> (not res!3131157) (not e!4656939))))

(declare-fun b!7887697 () Bool)

(assert (=> b!7887697 (= e!4656932 e!4656931)))

(assert (=> b!7887697 (= c!1448030 ((_ is Concat!30054) r!14100))))

(declare-fun b!7887698 () Bool)

(assert (=> b!7887698 (= e!4656933 1)))

(declare-fun bm!731788 () Bool)

(assert (=> bm!731788 (= call!731793 (regexDepth!513 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun d!2356583 () Bool)

(assert (=> d!2356583 e!4656940))

(declare-fun res!3131158 () Bool)

(assert (=> d!2356583 (=> (not res!3131158) (not e!4656940))))

(assert (=> d!2356583 (= res!3131158 (> lt!2681439 0))))

(assert (=> d!2356583 (= lt!2681439 e!4656933)))

(declare-fun c!1448029 () Bool)

(assert (=> d!2356583 (= c!1448029 ((_ is ElementMatch!21209) r!14100))))

(assert (=> d!2356583 (= (regexDepth!513 r!14100) lt!2681439)))

(declare-fun bm!731790 () Bool)

(assert (=> bm!731790 (= call!731796 call!731794)))

(declare-fun b!7887699 () Bool)

(assert (=> b!7887699 (= e!4656936 (> lt!2681439 call!731796))))

(declare-fun bm!731791 () Bool)

(assert (=> bm!731791 (= call!731792 (regexDepth!513 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(declare-fun b!7887700 () Bool)

(assert (=> b!7887700 (= e!4656939 (> lt!2681439 call!731793))))

(declare-fun b!7887701 () Bool)

(declare-fun c!1448026 () Bool)

(assert (=> b!7887701 (= c!1448026 ((_ is Star!21209) r!14100))))

(assert (=> b!7887701 (= e!4656931 e!4656936)))

(declare-fun bm!731792 () Bool)

(assert (=> bm!731792 (= call!731791 call!731795)))

(assert (= (and d!2356583 c!1448029) b!7887698))

(assert (= (and d!2356583 (not c!1448029)) b!7887695))

(assert (= (and b!7887695 c!1448025) b!7887694))

(assert (= (and b!7887695 (not c!1448025)) b!7887686))

(assert (= (and b!7887686 c!1448027) b!7887688))

(assert (= (and b!7887686 (not c!1448027)) b!7887692))

(assert (= (and b!7887692 c!1448028) b!7887689))

(assert (= (and b!7887692 (not c!1448028)) b!7887690))

(assert (= (or b!7887688 b!7887689) bm!731791))

(assert (= (or b!7887688 b!7887689) bm!731792))

(assert (= (or b!7887688 b!7887689) bm!731786))

(assert (= (or b!7887694 bm!731792) bm!731787))

(assert (= (and d!2356583 res!3131158) b!7887693))

(assert (= (and b!7887693 c!1448031) b!7887696))

(assert (= (and b!7887693 (not c!1448031)) b!7887697))

(assert (= (and b!7887696 res!3131157) b!7887700))

(assert (= (and b!7887697 c!1448030) b!7887687))

(assert (= (and b!7887697 (not c!1448030)) b!7887701))

(assert (= (and b!7887687 res!3131159) b!7887685))

(assert (= (and b!7887701 c!1448026) b!7887699))

(assert (= (and b!7887701 (not c!1448026)) b!7887691))

(assert (= (or b!7887685 b!7887699) bm!731790))

(assert (= (or b!7887696 bm!731790) bm!731789))

(assert (= (or b!7887700 b!7887687) bm!731788))

(declare-fun m!8269612 () Bool)

(assert (=> bm!731787 m!8269612))

(declare-fun m!8269614 () Bool)

(assert (=> bm!731789 m!8269614))

(declare-fun m!8269616 () Bool)

(assert (=> bm!731786 m!8269616))

(declare-fun m!8269618 () Bool)

(assert (=> bm!731788 m!8269618))

(declare-fun m!8269620 () Bool)

(assert (=> bm!731791 m!8269620))

(assert (=> b!7887503 d!2356583))

(declare-fun b!7887732 () Bool)

(declare-fun e!4656962 () List!74066)

(assert (=> b!7887732 (= e!4656962 (_2!38331 cut!2))))

(declare-fun b!7887733 () Bool)

(assert (=> b!7887733 (= e!4656962 (Cons!73942 (h!80390 (_1!38331 cut!2)) (++!18113 (t!388801 (_1!38331 cut!2)) (_2!38331 cut!2))))))

(declare-fun b!7887734 () Bool)

(declare-fun res!3131177 () Bool)

(declare-fun e!4656961 () Bool)

(assert (=> b!7887734 (=> (not res!3131177) (not e!4656961))))

(declare-fun lt!2681443 () List!74066)

(assert (=> b!7887734 (= res!3131177 (= (size!42850 lt!2681443) (+ (size!42850 (_1!38331 cut!2)) (size!42850 (_2!38331 cut!2)))))))

(declare-fun b!7887735 () Bool)

(assert (=> b!7887735 (= e!4656961 (or (not (= (_2!38331 cut!2) Nil!73942)) (= lt!2681443 (_1!38331 cut!2))))))

(declare-fun d!2356589 () Bool)

(assert (=> d!2356589 e!4656961))

(declare-fun res!3131176 () Bool)

(assert (=> d!2356589 (=> (not res!3131176) (not e!4656961))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15692 (List!74066) (InoxSet C!42744))

(assert (=> d!2356589 (= res!3131176 (= (content!15692 lt!2681443) ((_ map or) (content!15692 (_1!38331 cut!2)) (content!15692 (_2!38331 cut!2)))))))

(assert (=> d!2356589 (= lt!2681443 e!4656962)))

(declare-fun c!1448039 () Bool)

(assert (=> d!2356589 (= c!1448039 ((_ is Nil!73942) (_1!38331 cut!2)))))

(assert (=> d!2356589 (= (++!18113 (_1!38331 cut!2) (_2!38331 cut!2)) lt!2681443)))

(assert (= (and d!2356589 c!1448039) b!7887732))

(assert (= (and d!2356589 (not c!1448039)) b!7887733))

(assert (= (and d!2356589 res!3131176) b!7887734))

(assert (= (and b!7887734 res!3131177) b!7887735))

(declare-fun m!8269622 () Bool)

(assert (=> b!7887733 m!8269622))

(declare-fun m!8269624 () Bool)

(assert (=> b!7887734 m!8269624))

(assert (=> b!7887734 m!8269544))

(declare-fun m!8269626 () Bool)

(assert (=> b!7887734 m!8269626))

(declare-fun m!8269628 () Bool)

(assert (=> d!2356589 m!8269628))

(declare-fun m!8269630 () Bool)

(assert (=> d!2356589 m!8269630))

(declare-fun m!8269632 () Bool)

(assert (=> d!2356589 m!8269632))

(assert (=> b!7887510 d!2356589))

(declare-fun b!7887740 () Bool)

(declare-fun e!4656965 () Bool)

(declare-fun tp!2346485 () Bool)

(assert (=> b!7887740 (= e!4656965 (and tp_is_empty!52817 tp!2346485))))

(assert (=> b!7887513 (= tp!2346476 e!4656965)))

(assert (= (and b!7887513 ((_ is Cons!73942) (t!388801 (_2!38331 cut!2)))) b!7887740))

(declare-fun b!7887741 () Bool)

(declare-fun e!4656966 () Bool)

(declare-fun tp!2346486 () Bool)

(assert (=> b!7887741 (= e!4656966 (and tp_is_empty!52817 tp!2346486))))

(assert (=> b!7887509 (= tp!2346475 e!4656966)))

(assert (= (and b!7887509 ((_ is Cons!73942) (t!388801 s!9586))) b!7887741))

(declare-fun e!4656976 () Bool)

(assert (=> b!7887508 (= tp!2346482 e!4656976)))

(declare-fun b!7887764 () Bool)

(declare-fun tp!2346498 () Bool)

(declare-fun tp!2346499 () Bool)

(assert (=> b!7887764 (= e!4656976 (and tp!2346498 tp!2346499))))

(declare-fun b!7887763 () Bool)

(declare-fun tp!2346500 () Bool)

(assert (=> b!7887763 (= e!4656976 tp!2346500)))

(declare-fun b!7887762 () Bool)

(declare-fun tp!2346501 () Bool)

(declare-fun tp!2346497 () Bool)

(assert (=> b!7887762 (= e!4656976 (and tp!2346501 tp!2346497))))

(declare-fun b!7887761 () Bool)

(assert (=> b!7887761 (= e!4656976 tp_is_empty!52817)))

(assert (= (and b!7887508 ((_ is ElementMatch!21209) (regOne!42930 r!14100))) b!7887761))

(assert (= (and b!7887508 ((_ is Concat!30054) (regOne!42930 r!14100))) b!7887762))

(assert (= (and b!7887508 ((_ is Star!21209) (regOne!42930 r!14100))) b!7887763))

(assert (= (and b!7887508 ((_ is Union!21209) (regOne!42930 r!14100))) b!7887764))

(declare-fun e!4656977 () Bool)

(assert (=> b!7887508 (= tp!2346480 e!4656977)))

(declare-fun b!7887768 () Bool)

(declare-fun tp!2346503 () Bool)

(declare-fun tp!2346504 () Bool)

(assert (=> b!7887768 (= e!4656977 (and tp!2346503 tp!2346504))))

(declare-fun b!7887767 () Bool)

(declare-fun tp!2346505 () Bool)

(assert (=> b!7887767 (= e!4656977 tp!2346505)))

(declare-fun b!7887766 () Bool)

(declare-fun tp!2346506 () Bool)

(declare-fun tp!2346502 () Bool)

(assert (=> b!7887766 (= e!4656977 (and tp!2346506 tp!2346502))))

(declare-fun b!7887765 () Bool)

(assert (=> b!7887765 (= e!4656977 tp_is_empty!52817)))

(assert (= (and b!7887508 ((_ is ElementMatch!21209) (regTwo!42930 r!14100))) b!7887765))

(assert (= (and b!7887508 ((_ is Concat!30054) (regTwo!42930 r!14100))) b!7887766))

(assert (= (and b!7887508 ((_ is Star!21209) (regTwo!42930 r!14100))) b!7887767))

(assert (= (and b!7887508 ((_ is Union!21209) (regTwo!42930 r!14100))) b!7887768))

(declare-fun e!4656978 () Bool)

(assert (=> b!7887504 (= tp!2346478 e!4656978)))

(declare-fun b!7887772 () Bool)

(declare-fun tp!2346508 () Bool)

(declare-fun tp!2346509 () Bool)

(assert (=> b!7887772 (= e!4656978 (and tp!2346508 tp!2346509))))

(declare-fun b!7887771 () Bool)

(declare-fun tp!2346510 () Bool)

(assert (=> b!7887771 (= e!4656978 tp!2346510)))

(declare-fun b!7887770 () Bool)

(declare-fun tp!2346511 () Bool)

(declare-fun tp!2346507 () Bool)

(assert (=> b!7887770 (= e!4656978 (and tp!2346511 tp!2346507))))

(declare-fun b!7887769 () Bool)

(assert (=> b!7887769 (= e!4656978 tp_is_empty!52817)))

(assert (= (and b!7887504 ((_ is ElementMatch!21209) (regOne!42931 r!14100))) b!7887769))

(assert (= (and b!7887504 ((_ is Concat!30054) (regOne!42931 r!14100))) b!7887770))

(assert (= (and b!7887504 ((_ is Star!21209) (regOne!42931 r!14100))) b!7887771))

(assert (= (and b!7887504 ((_ is Union!21209) (regOne!42931 r!14100))) b!7887772))

(declare-fun e!4656979 () Bool)

(assert (=> b!7887504 (= tp!2346479 e!4656979)))

(declare-fun b!7887776 () Bool)

(declare-fun tp!2346513 () Bool)

(declare-fun tp!2346514 () Bool)

(assert (=> b!7887776 (= e!4656979 (and tp!2346513 tp!2346514))))

(declare-fun b!7887775 () Bool)

(declare-fun tp!2346515 () Bool)

(assert (=> b!7887775 (= e!4656979 tp!2346515)))

(declare-fun b!7887774 () Bool)

(declare-fun tp!2346516 () Bool)

(declare-fun tp!2346512 () Bool)

(assert (=> b!7887774 (= e!4656979 (and tp!2346516 tp!2346512))))

(declare-fun b!7887773 () Bool)

(assert (=> b!7887773 (= e!4656979 tp_is_empty!52817)))

(assert (= (and b!7887504 ((_ is ElementMatch!21209) (regTwo!42931 r!14100))) b!7887773))

(assert (= (and b!7887504 ((_ is Concat!30054) (regTwo!42931 r!14100))) b!7887774))

(assert (= (and b!7887504 ((_ is Star!21209) (regTwo!42931 r!14100))) b!7887775))

(assert (= (and b!7887504 ((_ is Union!21209) (regTwo!42931 r!14100))) b!7887776))

(declare-fun b!7887781 () Bool)

(declare-fun e!4656982 () Bool)

(declare-fun tp!2346519 () Bool)

(assert (=> b!7887781 (= e!4656982 (and tp_is_empty!52817 tp!2346519))))

(assert (=> b!7887506 (= tp!2346477 e!4656982)))

(assert (= (and b!7887506 ((_ is Cons!73942) (t!388801 (_1!38331 cut!2)))) b!7887781))

(declare-fun e!4656983 () Bool)

(assert (=> b!7887511 (= tp!2346481 e!4656983)))

(declare-fun b!7887785 () Bool)

(declare-fun tp!2346521 () Bool)

(declare-fun tp!2346522 () Bool)

(assert (=> b!7887785 (= e!4656983 (and tp!2346521 tp!2346522))))

(declare-fun b!7887784 () Bool)

(declare-fun tp!2346523 () Bool)

(assert (=> b!7887784 (= e!4656983 tp!2346523)))

(declare-fun b!7887783 () Bool)

(declare-fun tp!2346524 () Bool)

(declare-fun tp!2346520 () Bool)

(assert (=> b!7887783 (= e!4656983 (and tp!2346524 tp!2346520))))

(declare-fun b!7887782 () Bool)

(assert (=> b!7887782 (= e!4656983 tp_is_empty!52817)))

(assert (= (and b!7887511 ((_ is ElementMatch!21209) (reg!21538 r!14100))) b!7887782))

(assert (= (and b!7887511 ((_ is Concat!30054) (reg!21538 r!14100))) b!7887783))

(assert (= (and b!7887511 ((_ is Star!21209) (reg!21538 r!14100))) b!7887784))

(assert (= (and b!7887511 ((_ is Union!21209) (reg!21538 r!14100))) b!7887785))

(check-sat (not b!7887785) (not b!7887783) (not b!7887684) (not bm!731788) (not d!2356589) (not b!7887772) (not bm!731787) (not b!7887775) (not b!7887774) (not b!7887734) (not b!7887767) (not b!7887770) (not b!7887740) (not bm!731784) tp_is_empty!52817 (not b!7887764) (not b!7887766) (not bm!731789) (not b!7887763) (not bm!731781) (not bm!731782) (not b!7887546) (not b!7887587) (not b!7887771) (not bm!731780) (not bm!731791) (not bm!731734) (not b!7887741) (not bm!731786) (not b!7887781) (not bm!731779) (not b!7887762) (not b!7887733) (not bm!731736) (not b!7887776) (not b!7887768) (not b!7887784))
(check-sat)
(get-model)

(declare-fun d!2356591 () Bool)

(declare-fun lt!2681444 () Int)

(assert (=> d!2356591 (>= lt!2681444 0)))

(declare-fun e!4656994 () Int)

(assert (=> d!2356591 (= lt!2681444 e!4656994)))

(declare-fun c!1448042 () Bool)

(assert (=> d!2356591 (= c!1448042 ((_ is Nil!73942) lt!2681443))))

(assert (=> d!2356591 (= (size!42850 lt!2681443) lt!2681444)))

(declare-fun b!7887819 () Bool)

(assert (=> b!7887819 (= e!4656994 0)))

(declare-fun b!7887820 () Bool)

(assert (=> b!7887820 (= e!4656994 (+ 1 (size!42850 (t!388801 lt!2681443))))))

(assert (= (and d!2356591 c!1448042) b!7887819))

(assert (= (and d!2356591 (not c!1448042)) b!7887820))

(declare-fun m!8269640 () Bool)

(assert (=> b!7887820 m!8269640))

(assert (=> b!7887734 d!2356591))

(assert (=> b!7887734 d!2356569))

(declare-fun d!2356593 () Bool)

(declare-fun lt!2681445 () Int)

(assert (=> d!2356593 (>= lt!2681445 0)))

(declare-fun e!4656995 () Int)

(assert (=> d!2356593 (= lt!2681445 e!4656995)))

(declare-fun c!1448043 () Bool)

(assert (=> d!2356593 (= c!1448043 ((_ is Nil!73942) (_2!38331 cut!2)))))

(assert (=> d!2356593 (= (size!42850 (_2!38331 cut!2)) lt!2681445)))

(declare-fun b!7887821 () Bool)

(assert (=> b!7887821 (= e!4656995 0)))

(declare-fun b!7887822 () Bool)

(assert (=> b!7887822 (= e!4656995 (+ 1 (size!42850 (t!388801 (_2!38331 cut!2)))))))

(assert (= (and d!2356593 c!1448043) b!7887821))

(assert (= (and d!2356593 (not c!1448043)) b!7887822))

(declare-fun m!8269642 () Bool)

(assert (=> b!7887822 m!8269642))

(assert (=> b!7887734 d!2356593))

(declare-fun b!7887823 () Bool)

(declare-fun e!4657002 () Bool)

(declare-fun call!731808 () Bool)

(assert (=> b!7887823 (= e!4657002 call!731808)))

(declare-fun b!7887824 () Bool)

(declare-fun e!4657000 () Bool)

(declare-fun e!4656997 () Bool)

(assert (=> b!7887824 (= e!4657000 e!4656997)))

(declare-fun c!1448045 () Bool)

(assert (=> b!7887824 (= c!1448045 ((_ is Union!21209) (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun b!7887825 () Bool)

(declare-fun e!4656998 () Bool)

(assert (=> b!7887825 (= e!4656998 e!4657000)))

(declare-fun c!1448044 () Bool)

(assert (=> b!7887825 (= c!1448044 ((_ is Star!21209) (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun b!7887826 () Bool)

(declare-fun e!4657001 () Bool)

(declare-fun call!731809 () Bool)

(assert (=> b!7887826 (= e!4657001 call!731809)))

(declare-fun b!7887827 () Bool)

(declare-fun e!4656996 () Bool)

(assert (=> b!7887827 (= e!4656996 e!4657001)))

(declare-fun res!3131186 () Bool)

(assert (=> b!7887827 (=> (not res!3131186) (not e!4657001))))

(assert (=> b!7887827 (= res!3131186 call!731808)))

(declare-fun bm!731802 () Bool)

(assert (=> bm!731802 (= call!731808 (validRegex!11619 (ite c!1448045 (regTwo!42931 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (regOne!42930 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))))

(declare-fun bm!731803 () Bool)

(declare-fun call!731807 () Bool)

(assert (=> bm!731803 (= call!731809 call!731807)))

(declare-fun b!7887829 () Bool)

(declare-fun res!3131185 () Bool)

(assert (=> b!7887829 (=> (not res!3131185) (not e!4657002))))

(assert (=> b!7887829 (= res!3131185 call!731809)))

(assert (=> b!7887829 (= e!4656997 e!4657002)))

(declare-fun b!7887830 () Bool)

(declare-fun e!4656999 () Bool)

(assert (=> b!7887830 (= e!4657000 e!4656999)))

(declare-fun res!3131183 () Bool)

(assert (=> b!7887830 (= res!3131183 (not (nullable!9463 (reg!21538 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))))

(assert (=> b!7887830 (=> (not res!3131183) (not e!4656999))))

(declare-fun b!7887831 () Bool)

(declare-fun res!3131184 () Bool)

(assert (=> b!7887831 (=> res!3131184 e!4656996)))

(assert (=> b!7887831 (= res!3131184 (not ((_ is Concat!30054) (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(assert (=> b!7887831 (= e!4656997 e!4656996)))

(declare-fun bm!731804 () Bool)

(assert (=> bm!731804 (= call!731807 (validRegex!11619 (ite c!1448044 (reg!21538 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (ite c!1448045 (regOne!42931 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (regTwo!42930 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))))

(declare-fun d!2356595 () Bool)

(declare-fun res!3131187 () Bool)

(assert (=> d!2356595 (=> res!3131187 e!4656998)))

(assert (=> d!2356595 (= res!3131187 ((_ is ElementMatch!21209) (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(assert (=> d!2356595 (= (validRegex!11619 (ite c!1447968 (regTwo!42931 r!14100) (regOne!42930 r!14100))) e!4656998)))

(declare-fun b!7887828 () Bool)

(assert (=> b!7887828 (= e!4656999 call!731807)))

(assert (= (and d!2356595 (not res!3131187)) b!7887825))

(assert (= (and b!7887825 c!1448044) b!7887830))

(assert (= (and b!7887825 (not c!1448044)) b!7887824))

(assert (= (and b!7887830 res!3131183) b!7887828))

(assert (= (and b!7887824 c!1448045) b!7887829))

(assert (= (and b!7887824 (not c!1448045)) b!7887831))

(assert (= (and b!7887829 res!3131185) b!7887823))

(assert (= (and b!7887831 (not res!3131184)) b!7887827))

(assert (= (and b!7887827 res!3131186) b!7887826))

(assert (= (or b!7887823 b!7887827) bm!731802))

(assert (= (or b!7887829 b!7887826) bm!731803))

(assert (= (or b!7887828 bm!731803) bm!731804))

(declare-fun m!8269644 () Bool)

(assert (=> bm!731802 m!8269644))

(declare-fun m!8269646 () Bool)

(assert (=> b!7887830 m!8269646))

(declare-fun m!8269648 () Bool)

(assert (=> bm!731804 m!8269648))

(assert (=> bm!731734 d!2356595))

(declare-fun d!2356597 () Bool)

(declare-fun c!1448048 () Bool)

(assert (=> d!2356597 (= c!1448048 ((_ is Nil!73942) lt!2681443))))

(declare-fun e!4657005 () (InoxSet C!42744))

(assert (=> d!2356597 (= (content!15692 lt!2681443) e!4657005)))

(declare-fun b!7887836 () Bool)

(assert (=> b!7887836 (= e!4657005 ((as const (Array C!42744 Bool)) false))))

(declare-fun b!7887837 () Bool)

(assert (=> b!7887837 (= e!4657005 ((_ map or) (store ((as const (Array C!42744 Bool)) false) (h!80390 lt!2681443) true) (content!15692 (t!388801 lt!2681443))))))

(assert (= (and d!2356597 c!1448048) b!7887836))

(assert (= (and d!2356597 (not c!1448048)) b!7887837))

(declare-fun m!8269650 () Bool)

(assert (=> b!7887837 m!8269650))

(declare-fun m!8269652 () Bool)

(assert (=> b!7887837 m!8269652))

(assert (=> d!2356589 d!2356597))

(declare-fun d!2356599 () Bool)

(declare-fun c!1448049 () Bool)

(assert (=> d!2356599 (= c!1448049 ((_ is Nil!73942) (_1!38331 cut!2)))))

(declare-fun e!4657006 () (InoxSet C!42744))

(assert (=> d!2356599 (= (content!15692 (_1!38331 cut!2)) e!4657006)))

(declare-fun b!7887838 () Bool)

(assert (=> b!7887838 (= e!4657006 ((as const (Array C!42744 Bool)) false))))

(declare-fun b!7887839 () Bool)

(assert (=> b!7887839 (= e!4657006 ((_ map or) (store ((as const (Array C!42744 Bool)) false) (h!80390 (_1!38331 cut!2)) true) (content!15692 (t!388801 (_1!38331 cut!2)))))))

(assert (= (and d!2356599 c!1448049) b!7887838))

(assert (= (and d!2356599 (not c!1448049)) b!7887839))

(declare-fun m!8269654 () Bool)

(assert (=> b!7887839 m!8269654))

(declare-fun m!8269656 () Bool)

(assert (=> b!7887839 m!8269656))

(assert (=> d!2356589 d!2356599))

(declare-fun d!2356601 () Bool)

(declare-fun c!1448050 () Bool)

(assert (=> d!2356601 (= c!1448050 ((_ is Nil!73942) (_2!38331 cut!2)))))

(declare-fun e!4657007 () (InoxSet C!42744))

(assert (=> d!2356601 (= (content!15692 (_2!38331 cut!2)) e!4657007)))

(declare-fun b!7887840 () Bool)

(assert (=> b!7887840 (= e!4657007 ((as const (Array C!42744 Bool)) false))))

(declare-fun b!7887841 () Bool)

(assert (=> b!7887841 (= e!4657007 ((_ map or) (store ((as const (Array C!42744 Bool)) false) (h!80390 (_2!38331 cut!2)) true) (content!15692 (t!388801 (_2!38331 cut!2)))))))

(assert (= (and d!2356601 c!1448050) b!7887840))

(assert (= (and d!2356601 (not c!1448050)) b!7887841))

(declare-fun m!8269658 () Bool)

(assert (=> b!7887841 m!8269658))

(declare-fun m!8269660 () Bool)

(assert (=> b!7887841 m!8269660))

(assert (=> d!2356589 d!2356601))

(declare-fun d!2356603 () Bool)

(declare-fun lt!2681446 () Int)

(assert (=> d!2356603 (>= lt!2681446 0)))

(declare-fun e!4657008 () Int)

(assert (=> d!2356603 (= lt!2681446 e!4657008)))

(declare-fun c!1448051 () Bool)

(assert (=> d!2356603 (= c!1448051 ((_ is Nil!73942) (t!388801 (_1!38331 cut!2))))))

(assert (=> d!2356603 (= (size!42850 (t!388801 (_1!38331 cut!2))) lt!2681446)))

(declare-fun b!7887842 () Bool)

(assert (=> b!7887842 (= e!4657008 0)))

(declare-fun b!7887843 () Bool)

(assert (=> b!7887843 (= e!4657008 (+ 1 (size!42850 (t!388801 (t!388801 (_1!38331 cut!2))))))))

(assert (= (and d!2356603 c!1448051) b!7887842))

(assert (= (and d!2356603 (not c!1448051)) b!7887843))

(declare-fun m!8269662 () Bool)

(assert (=> b!7887843 m!8269662))

(assert (=> b!7887587 d!2356603))

(declare-fun d!2356605 () Bool)

(declare-fun lt!2681447 () Int)

(assert (=> d!2356605 (>= lt!2681447 0)))

(declare-fun e!4657009 () Int)

(assert (=> d!2356605 (= lt!2681447 e!4657009)))

(declare-fun c!1448052 () Bool)

(assert (=> d!2356605 (= c!1448052 ((_ is Nil!73942) (t!388801 s!9586)))))

(assert (=> d!2356605 (= (size!42850 (t!388801 s!9586)) lt!2681447)))

(declare-fun b!7887844 () Bool)

(assert (=> b!7887844 (= e!4657009 0)))

(declare-fun b!7887845 () Bool)

(assert (=> b!7887845 (= e!4657009 (+ 1 (size!42850 (t!388801 (t!388801 s!9586)))))))

(assert (= (and d!2356605 c!1448052) b!7887844))

(assert (= (and d!2356605 (not c!1448052)) b!7887845))

(declare-fun m!8269664 () Bool)

(assert (=> b!7887845 m!8269664))

(assert (=> b!7887684 d!2356605))

(declare-fun b!7887846 () Bool)

(declare-fun e!4657013 () Bool)

(declare-fun lt!2681448 () Int)

(declare-fun call!731815 () Int)

(assert (=> b!7887846 (= e!4657013 (> lt!2681448 call!731815))))

(declare-fun call!731811 () Int)

(declare-fun c!1448055 () Bool)

(declare-fun call!731816 () Int)

(declare-fun call!731810 () Int)

(declare-fun bm!731805 () Bool)

(assert (=> bm!731805 (= call!731816 (maxBigInt!0 (ite c!1448055 call!731811 call!731810) (ite c!1448055 call!731810 call!731811)))))

(declare-fun call!731814 () Int)

(declare-fun bm!731806 () Bool)

(declare-fun c!1448053 () Bool)

(assert (=> bm!731806 (= call!731814 (regexDepth!513 (ite c!1448053 (reg!21538 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) (ite c!1448055 (regTwo!42931 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) (regOne!42930 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))))

(declare-fun b!7887847 () Bool)

(assert (=> b!7887847 (= c!1448055 ((_ is Union!21209) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(declare-fun e!4657014 () Int)

(declare-fun e!4657016 () Int)

(assert (=> b!7887847 (= e!4657014 e!4657016)))

(declare-fun b!7887848 () Bool)

(declare-fun res!3131190 () Bool)

(assert (=> b!7887848 (=> (not res!3131190) (not e!4657013))))

(declare-fun call!731812 () Int)

(assert (=> b!7887848 (= res!3131190 (> lt!2681448 call!731812))))

(declare-fun e!4657010 () Bool)

(assert (=> b!7887848 (= e!4657010 e!4657013)))

(declare-fun b!7887849 () Bool)

(assert (=> b!7887849 (= e!4657016 (+ 1 call!731816))))

(declare-fun b!7887850 () Bool)

(declare-fun e!4657017 () Int)

(assert (=> b!7887850 (= e!4657017 (+ 1 call!731816))))

(declare-fun b!7887851 () Bool)

(assert (=> b!7887851 (= e!4657017 1)))

(declare-fun b!7887852 () Bool)

(declare-fun e!4657015 () Bool)

(assert (=> b!7887852 (= e!4657015 (= lt!2681448 1))))

(declare-fun b!7887853 () Bool)

(assert (=> b!7887853 (= e!4657016 e!4657017)))

(declare-fun c!1448056 () Bool)

(assert (=> b!7887853 (= c!1448056 ((_ is Concat!30054) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(declare-fun b!7887854 () Bool)

(declare-fun e!4657019 () Bool)

(declare-fun e!4657011 () Bool)

(assert (=> b!7887854 (= e!4657019 e!4657011)))

(declare-fun c!1448059 () Bool)

(assert (=> b!7887854 (= c!1448059 ((_ is Union!21209) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(declare-fun b!7887855 () Bool)

(assert (=> b!7887855 (= e!4657014 (+ 1 call!731814))))

(declare-fun call!731813 () Int)

(declare-fun bm!731808 () Bool)

(declare-fun c!1448058 () Bool)

(assert (=> bm!731808 (= call!731813 (regexDepth!513 (ite c!1448059 (regOne!42931 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) (ite c!1448058 (regTwo!42930 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) (reg!21538 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))))

(declare-fun b!7887856 () Bool)

(declare-fun e!4657012 () Int)

(assert (=> b!7887856 (= e!4657012 e!4657014)))

(assert (=> b!7887856 (= c!1448053 ((_ is Star!21209) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(declare-fun b!7887857 () Bool)

(declare-fun e!4657018 () Bool)

(assert (=> b!7887857 (= e!4657011 e!4657018)))

(declare-fun res!3131188 () Bool)

(assert (=> b!7887857 (= res!3131188 (> lt!2681448 call!731813))))

(assert (=> b!7887857 (=> (not res!3131188) (not e!4657018))))

(declare-fun b!7887858 () Bool)

(assert (=> b!7887858 (= e!4657011 e!4657010)))

(assert (=> b!7887858 (= c!1448058 ((_ is Concat!30054) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(declare-fun b!7887859 () Bool)

(assert (=> b!7887859 (= e!4657012 1)))

(declare-fun bm!731807 () Bool)

(assert (=> bm!731807 (= call!731812 (regexDepth!513 (ite c!1448059 (regTwo!42931 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) (regOne!42930 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))))

(declare-fun d!2356607 () Bool)

(assert (=> d!2356607 e!4657019))

(declare-fun res!3131189 () Bool)

(assert (=> d!2356607 (=> (not res!3131189) (not e!4657019))))

(assert (=> d!2356607 (= res!3131189 (> lt!2681448 0))))

(assert (=> d!2356607 (= lt!2681448 e!4657012)))

(declare-fun c!1448057 () Bool)

(assert (=> d!2356607 (= c!1448057 ((_ is ElementMatch!21209) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(assert (=> d!2356607 (= (regexDepth!513 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) lt!2681448)))

(declare-fun bm!731809 () Bool)

(assert (=> bm!731809 (= call!731815 call!731813)))

(declare-fun b!7887860 () Bool)

(assert (=> b!7887860 (= e!4657015 (> lt!2681448 call!731815))))

(declare-fun bm!731810 () Bool)

(assert (=> bm!731810 (= call!731811 (regexDepth!513 (ite c!1448055 (regOne!42931 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))) (regTwo!42930 (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))))

(declare-fun b!7887861 () Bool)

(assert (=> b!7887861 (= e!4657018 (> lt!2681448 call!731812))))

(declare-fun b!7887862 () Bool)

(declare-fun c!1448054 () Bool)

(assert (=> b!7887862 (= c!1448054 ((_ is Star!21209) (ite c!1448027 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))

(assert (=> b!7887862 (= e!4657010 e!4657015)))

(declare-fun bm!731811 () Bool)

(assert (=> bm!731811 (= call!731810 call!731814)))

(assert (= (and d!2356607 c!1448057) b!7887859))

(assert (= (and d!2356607 (not c!1448057)) b!7887856))

(assert (= (and b!7887856 c!1448053) b!7887855))

(assert (= (and b!7887856 (not c!1448053)) b!7887847))

(assert (= (and b!7887847 c!1448055) b!7887849))

(assert (= (and b!7887847 (not c!1448055)) b!7887853))

(assert (= (and b!7887853 c!1448056) b!7887850))

(assert (= (and b!7887853 (not c!1448056)) b!7887851))

(assert (= (or b!7887849 b!7887850) bm!731810))

(assert (= (or b!7887849 b!7887850) bm!731811))

(assert (= (or b!7887849 b!7887850) bm!731805))

(assert (= (or b!7887855 bm!731811) bm!731806))

(assert (= (and d!2356607 res!3131189) b!7887854))

(assert (= (and b!7887854 c!1448059) b!7887857))

(assert (= (and b!7887854 (not c!1448059)) b!7887858))

(assert (= (and b!7887857 res!3131188) b!7887861))

(assert (= (and b!7887858 c!1448058) b!7887848))

(assert (= (and b!7887858 (not c!1448058)) b!7887862))

(assert (= (and b!7887848 res!3131190) b!7887846))

(assert (= (and b!7887862 c!1448054) b!7887860))

(assert (= (and b!7887862 (not c!1448054)) b!7887852))

(assert (= (or b!7887846 b!7887860) bm!731809))

(assert (= (or b!7887857 bm!731809) bm!731808))

(assert (= (or b!7887861 b!7887848) bm!731807))

(declare-fun m!8269666 () Bool)

(assert (=> bm!731806 m!8269666))

(declare-fun m!8269668 () Bool)

(assert (=> bm!731808 m!8269668))

(declare-fun m!8269670 () Bool)

(assert (=> bm!731805 m!8269670))

(declare-fun m!8269672 () Bool)

(assert (=> bm!731807 m!8269672))

(declare-fun m!8269674 () Bool)

(assert (=> bm!731810 m!8269674))

(assert (=> bm!731791 d!2356607))

(declare-fun b!7887863 () Bool)

(declare-fun e!4657023 () Bool)

(declare-fun lt!2681449 () Int)

(declare-fun call!731822 () Int)

(assert (=> b!7887863 (= e!4657023 (> lt!2681449 call!731822))))

(declare-fun call!731823 () Int)

(declare-fun call!731818 () Int)

(declare-fun c!1448062 () Bool)

(declare-fun bm!731812 () Bool)

(declare-fun call!731817 () Int)

(assert (=> bm!731812 (= call!731823 (maxBigInt!0 (ite c!1448062 call!731818 call!731817) (ite c!1448062 call!731817 call!731818)))))

(declare-fun call!731821 () Int)

(declare-fun bm!731813 () Bool)

(declare-fun c!1448060 () Bool)

(assert (=> bm!731813 (= call!731821 (regexDepth!513 (ite c!1448060 (reg!21538 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) (ite c!1448062 (regTwo!42931 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) (regOne!42930 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100))))))))))

(declare-fun b!7887864 () Bool)

(assert (=> b!7887864 (= c!1448062 ((_ is Union!21209) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(declare-fun e!4657024 () Int)

(declare-fun e!4657026 () Int)

(assert (=> b!7887864 (= e!4657024 e!4657026)))

(declare-fun b!7887865 () Bool)

(declare-fun res!3131193 () Bool)

(assert (=> b!7887865 (=> (not res!3131193) (not e!4657023))))

(declare-fun call!731819 () Int)

(assert (=> b!7887865 (= res!3131193 (> lt!2681449 call!731819))))

(declare-fun e!4657020 () Bool)

(assert (=> b!7887865 (= e!4657020 e!4657023)))

(declare-fun b!7887866 () Bool)

(assert (=> b!7887866 (= e!4657026 (+ 1 call!731823))))

(declare-fun b!7887867 () Bool)

(declare-fun e!4657027 () Int)

(assert (=> b!7887867 (= e!4657027 (+ 1 call!731823))))

(declare-fun b!7887868 () Bool)

(assert (=> b!7887868 (= e!4657027 1)))

(declare-fun b!7887869 () Bool)

(declare-fun e!4657025 () Bool)

(assert (=> b!7887869 (= e!4657025 (= lt!2681449 1))))

(declare-fun b!7887870 () Bool)

(assert (=> b!7887870 (= e!4657026 e!4657027)))

(declare-fun c!1448063 () Bool)

(assert (=> b!7887870 (= c!1448063 ((_ is Concat!30054) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887871 () Bool)

(declare-fun e!4657029 () Bool)

(declare-fun e!4657021 () Bool)

(assert (=> b!7887871 (= e!4657029 e!4657021)))

(declare-fun c!1448066 () Bool)

(assert (=> b!7887871 (= c!1448066 ((_ is Union!21209) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887872 () Bool)

(assert (=> b!7887872 (= e!4657024 (+ 1 call!731821))))

(declare-fun bm!731815 () Bool)

(declare-fun c!1448065 () Bool)

(declare-fun call!731820 () Int)

(assert (=> bm!731815 (= call!731820 (regexDepth!513 (ite c!1448066 (regOne!42931 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) (ite c!1448065 (regTwo!42930 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) (reg!21538 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100))))))))))

(declare-fun b!7887873 () Bool)

(declare-fun e!4657022 () Int)

(assert (=> b!7887873 (= e!4657022 e!4657024)))

(assert (=> b!7887873 (= c!1448060 ((_ is Star!21209) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887874 () Bool)

(declare-fun e!4657028 () Bool)

(assert (=> b!7887874 (= e!4657021 e!4657028)))

(declare-fun res!3131191 () Bool)

(assert (=> b!7887874 (= res!3131191 (> lt!2681449 call!731820))))

(assert (=> b!7887874 (=> (not res!3131191) (not e!4657028))))

(declare-fun b!7887875 () Bool)

(assert (=> b!7887875 (= e!4657021 e!4657020)))

(assert (=> b!7887875 (= c!1448065 ((_ is Concat!30054) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887876 () Bool)

(assert (=> b!7887876 (= e!4657022 1)))

(declare-fun bm!731814 () Bool)

(assert (=> bm!731814 (= call!731819 (regexDepth!513 (ite c!1448066 (regTwo!42931 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) (regOne!42930 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))))

(declare-fun d!2356609 () Bool)

(assert (=> d!2356609 e!4657029))

(declare-fun res!3131192 () Bool)

(assert (=> d!2356609 (=> (not res!3131192) (not e!4657029))))

(assert (=> d!2356609 (= res!3131192 (> lt!2681449 0))))

(assert (=> d!2356609 (= lt!2681449 e!4657022)))

(declare-fun c!1448064 () Bool)

(assert (=> d!2356609 (= c!1448064 ((_ is ElementMatch!21209) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(assert (=> d!2356609 (= (regexDepth!513 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) lt!2681449)))

(declare-fun bm!731816 () Bool)

(assert (=> bm!731816 (= call!731822 call!731820)))

(declare-fun b!7887877 () Bool)

(assert (=> b!7887877 (= e!4657025 (> lt!2681449 call!731822))))

(declare-fun bm!731817 () Bool)

(assert (=> bm!731817 (= call!731818 (regexDepth!513 (ite c!1448062 (regOne!42931 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))) (regTwo!42930 (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))))

(declare-fun b!7887878 () Bool)

(assert (=> b!7887878 (= e!4657028 (> lt!2681449 call!731819))))

(declare-fun b!7887879 () Bool)

(declare-fun c!1448061 () Bool)

(assert (=> b!7887879 (= c!1448061 ((_ is Star!21209) (ite c!1448019 (regOne!42931 (reg!21538 r!14100)) (regTwo!42930 (reg!21538 r!14100)))))))

(assert (=> b!7887879 (= e!4657020 e!4657025)))

(declare-fun bm!731818 () Bool)

(assert (=> bm!731818 (= call!731817 call!731821)))

(assert (= (and d!2356609 c!1448064) b!7887876))

(assert (= (and d!2356609 (not c!1448064)) b!7887873))

(assert (= (and b!7887873 c!1448060) b!7887872))

(assert (= (and b!7887873 (not c!1448060)) b!7887864))

(assert (= (and b!7887864 c!1448062) b!7887866))

(assert (= (and b!7887864 (not c!1448062)) b!7887870))

(assert (= (and b!7887870 c!1448063) b!7887867))

(assert (= (and b!7887870 (not c!1448063)) b!7887868))

(assert (= (or b!7887866 b!7887867) bm!731817))

(assert (= (or b!7887866 b!7887867) bm!731818))

(assert (= (or b!7887866 b!7887867) bm!731812))

(assert (= (or b!7887872 bm!731818) bm!731813))

(assert (= (and d!2356609 res!3131192) b!7887871))

(assert (= (and b!7887871 c!1448066) b!7887874))

(assert (= (and b!7887871 (not c!1448066)) b!7887875))

(assert (= (and b!7887874 res!3131191) b!7887878))

(assert (= (and b!7887875 c!1448065) b!7887865))

(assert (= (and b!7887875 (not c!1448065)) b!7887879))

(assert (= (and b!7887865 res!3131193) b!7887863))

(assert (= (and b!7887879 c!1448061) b!7887877))

(assert (= (and b!7887879 (not c!1448061)) b!7887869))

(assert (= (or b!7887863 b!7887877) bm!731816))

(assert (= (or b!7887874 bm!731816) bm!731815))

(assert (= (or b!7887878 b!7887865) bm!731814))

(declare-fun m!8269676 () Bool)

(assert (=> bm!731813 m!8269676))

(declare-fun m!8269678 () Bool)

(assert (=> bm!731815 m!8269678))

(declare-fun m!8269680 () Bool)

(assert (=> bm!731812 m!8269680))

(declare-fun m!8269682 () Bool)

(assert (=> bm!731814 m!8269682))

(declare-fun m!8269684 () Bool)

(assert (=> bm!731817 m!8269684))

(assert (=> bm!731784 d!2356609))

(declare-fun d!2356611 () Bool)

(declare-fun nullableFct!3734 (Regex!21209) Bool)

(assert (=> d!2356611 (= (nullable!9463 (reg!21538 r!14100)) (nullableFct!3734 (reg!21538 r!14100)))))

(declare-fun bs!1967445 () Bool)

(assert (= bs!1967445 d!2356611))

(declare-fun m!8269686 () Bool)

(assert (=> bs!1967445 m!8269686))

(assert (=> b!7887546 d!2356611))

(declare-fun b!7887880 () Bool)

(declare-fun e!4657033 () Bool)

(declare-fun lt!2681450 () Int)

(declare-fun call!731829 () Int)

(assert (=> b!7887880 (= e!4657033 (> lt!2681450 call!731829))))

(declare-fun bm!731819 () Bool)

(declare-fun c!1448069 () Bool)

(declare-fun call!731824 () Int)

(declare-fun call!731830 () Int)

(declare-fun call!731825 () Int)

(assert (=> bm!731819 (= call!731830 (maxBigInt!0 (ite c!1448069 call!731825 call!731824) (ite c!1448069 call!731824 call!731825)))))

(declare-fun bm!731820 () Bool)

(declare-fun call!731828 () Int)

(declare-fun c!1448067 () Bool)

(assert (=> bm!731820 (= call!731828 (regexDepth!513 (ite c!1448067 (reg!21538 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) (ite c!1448069 (regTwo!42931 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) (regOne!42930 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))))))

(declare-fun b!7887881 () Bool)

(assert (=> b!7887881 (= c!1448069 ((_ is Union!21209) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(declare-fun e!4657034 () Int)

(declare-fun e!4657036 () Int)

(assert (=> b!7887881 (= e!4657034 e!4657036)))

(declare-fun b!7887882 () Bool)

(declare-fun res!3131196 () Bool)

(assert (=> b!7887882 (=> (not res!3131196) (not e!4657033))))

(declare-fun call!731826 () Int)

(assert (=> b!7887882 (= res!3131196 (> lt!2681450 call!731826))))

(declare-fun e!4657030 () Bool)

(assert (=> b!7887882 (= e!4657030 e!4657033)))

(declare-fun b!7887883 () Bool)

(assert (=> b!7887883 (= e!4657036 (+ 1 call!731830))))

(declare-fun b!7887884 () Bool)

(declare-fun e!4657037 () Int)

(assert (=> b!7887884 (= e!4657037 (+ 1 call!731830))))

(declare-fun b!7887885 () Bool)

(assert (=> b!7887885 (= e!4657037 1)))

(declare-fun b!7887886 () Bool)

(declare-fun e!4657035 () Bool)

(assert (=> b!7887886 (= e!4657035 (= lt!2681450 1))))

(declare-fun b!7887887 () Bool)

(assert (=> b!7887887 (= e!4657036 e!4657037)))

(declare-fun c!1448070 () Bool)

(assert (=> b!7887887 (= c!1448070 ((_ is Concat!30054) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(declare-fun b!7887888 () Bool)

(declare-fun e!4657039 () Bool)

(declare-fun e!4657031 () Bool)

(assert (=> b!7887888 (= e!4657039 e!4657031)))

(declare-fun c!1448073 () Bool)

(assert (=> b!7887888 (= c!1448073 ((_ is Union!21209) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(declare-fun b!7887889 () Bool)

(assert (=> b!7887889 (= e!4657034 (+ 1 call!731828))))

(declare-fun bm!731822 () Bool)

(declare-fun c!1448072 () Bool)

(declare-fun call!731827 () Int)

(assert (=> bm!731822 (= call!731827 (regexDepth!513 (ite c!1448073 (regOne!42931 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) (ite c!1448072 (regTwo!42930 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) (reg!21538 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))))))

(declare-fun b!7887890 () Bool)

(declare-fun e!4657032 () Int)

(assert (=> b!7887890 (= e!4657032 e!4657034)))

(assert (=> b!7887890 (= c!1448067 ((_ is Star!21209) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(declare-fun b!7887891 () Bool)

(declare-fun e!4657038 () Bool)

(assert (=> b!7887891 (= e!4657031 e!4657038)))

(declare-fun res!3131194 () Bool)

(assert (=> b!7887891 (= res!3131194 (> lt!2681450 call!731827))))

(assert (=> b!7887891 (=> (not res!3131194) (not e!4657038))))

(declare-fun b!7887892 () Bool)

(assert (=> b!7887892 (= e!4657031 e!4657030)))

(assert (=> b!7887892 (= c!1448072 ((_ is Concat!30054) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(declare-fun b!7887893 () Bool)

(assert (=> b!7887893 (= e!4657032 1)))

(declare-fun bm!731821 () Bool)

(assert (=> bm!731821 (= call!731826 (regexDepth!513 (ite c!1448073 (regTwo!42931 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) (regOne!42930 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))))

(declare-fun d!2356613 () Bool)

(assert (=> d!2356613 e!4657039))

(declare-fun res!3131195 () Bool)

(assert (=> d!2356613 (=> (not res!3131195) (not e!4657039))))

(assert (=> d!2356613 (= res!3131195 (> lt!2681450 0))))

(assert (=> d!2356613 (= lt!2681450 e!4657032)))

(declare-fun c!1448071 () Bool)

(assert (=> d!2356613 (= c!1448071 ((_ is ElementMatch!21209) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(assert (=> d!2356613 (= (regexDepth!513 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) lt!2681450)))

(declare-fun bm!731823 () Bool)

(assert (=> bm!731823 (= call!731829 call!731827)))

(declare-fun b!7887894 () Bool)

(assert (=> b!7887894 (= e!4657035 (> lt!2681450 call!731829))))

(declare-fun bm!731824 () Bool)

(assert (=> bm!731824 (= call!731825 (regexDepth!513 (ite c!1448069 (regOne!42931 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))) (regTwo!42930 (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))))

(declare-fun b!7887895 () Bool)

(assert (=> b!7887895 (= e!4657038 (> lt!2681450 call!731826))))

(declare-fun b!7887896 () Bool)

(declare-fun c!1448068 () Bool)

(assert (=> b!7887896 (= c!1448068 ((_ is Star!21209) (ite c!1448025 (reg!21538 r!14100) (ite c!1448027 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))

(assert (=> b!7887896 (= e!4657030 e!4657035)))

(declare-fun bm!731825 () Bool)

(assert (=> bm!731825 (= call!731824 call!731828)))

(assert (= (and d!2356613 c!1448071) b!7887893))

(assert (= (and d!2356613 (not c!1448071)) b!7887890))

(assert (= (and b!7887890 c!1448067) b!7887889))

(assert (= (and b!7887890 (not c!1448067)) b!7887881))

(assert (= (and b!7887881 c!1448069) b!7887883))

(assert (= (and b!7887881 (not c!1448069)) b!7887887))

(assert (= (and b!7887887 c!1448070) b!7887884))

(assert (= (and b!7887887 (not c!1448070)) b!7887885))

(assert (= (or b!7887883 b!7887884) bm!731824))

(assert (= (or b!7887883 b!7887884) bm!731825))

(assert (= (or b!7887883 b!7887884) bm!731819))

(assert (= (or b!7887889 bm!731825) bm!731820))

(assert (= (and d!2356613 res!3131195) b!7887888))

(assert (= (and b!7887888 c!1448073) b!7887891))

(assert (= (and b!7887888 (not c!1448073)) b!7887892))

(assert (= (and b!7887891 res!3131194) b!7887895))

(assert (= (and b!7887892 c!1448072) b!7887882))

(assert (= (and b!7887892 (not c!1448072)) b!7887896))

(assert (= (and b!7887882 res!3131196) b!7887880))

(assert (= (and b!7887896 c!1448068) b!7887894))

(assert (= (and b!7887896 (not c!1448068)) b!7887886))

(assert (= (or b!7887880 b!7887894) bm!731823))

(assert (= (or b!7887891 bm!731823) bm!731822))

(assert (= (or b!7887895 b!7887882) bm!731821))

(declare-fun m!8269688 () Bool)

(assert (=> bm!731820 m!8269688))

(declare-fun m!8269690 () Bool)

(assert (=> bm!731822 m!8269690))

(declare-fun m!8269692 () Bool)

(assert (=> bm!731819 m!8269692))

(declare-fun m!8269694 () Bool)

(assert (=> bm!731821 m!8269694))

(declare-fun m!8269696 () Bool)

(assert (=> bm!731824 m!8269696))

(assert (=> bm!731787 d!2356613))

(declare-fun d!2356615 () Bool)

(assert (=> d!2356615 (= (maxBigInt!0 (ite c!1448027 call!731792 call!731791) (ite c!1448027 call!731791 call!731792)) (ite (>= (ite c!1448027 call!731792 call!731791) (ite c!1448027 call!731791 call!731792)) (ite c!1448027 call!731792 call!731791) (ite c!1448027 call!731791 call!731792)))))

(assert (=> bm!731786 d!2356615))

(declare-fun b!7887898 () Bool)

(declare-fun e!4657043 () Bool)

(declare-fun lt!2681451 () Int)

(declare-fun call!731836 () Int)

(assert (=> b!7887898 (= e!4657043 (> lt!2681451 call!731836))))

(declare-fun c!1448076 () Bool)

(declare-fun call!731832 () Int)

(declare-fun bm!731826 () Bool)

(declare-fun call!731831 () Int)

(declare-fun call!731837 () Int)

(assert (=> bm!731826 (= call!731837 (maxBigInt!0 (ite c!1448076 call!731832 call!731831) (ite c!1448076 call!731831 call!731832)))))

(declare-fun bm!731827 () Bool)

(declare-fun call!731835 () Int)

(declare-fun c!1448074 () Bool)

(assert (=> bm!731827 (= call!731835 (regexDepth!513 (ite c!1448074 (reg!21538 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (ite c!1448076 (regTwo!42931 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (regOne!42930 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))))

(declare-fun b!7887899 () Bool)

(assert (=> b!7887899 (= c!1448076 ((_ is Union!21209) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun e!4657044 () Int)

(declare-fun e!4657046 () Int)

(assert (=> b!7887899 (= e!4657044 e!4657046)))

(declare-fun b!7887900 () Bool)

(declare-fun res!3131199 () Bool)

(assert (=> b!7887900 (=> (not res!3131199) (not e!4657043))))

(declare-fun call!731833 () Int)

(assert (=> b!7887900 (= res!3131199 (> lt!2681451 call!731833))))

(declare-fun e!4657040 () Bool)

(assert (=> b!7887900 (= e!4657040 e!4657043)))

(declare-fun b!7887901 () Bool)

(assert (=> b!7887901 (= e!4657046 (+ 1 call!731837))))

(declare-fun b!7887902 () Bool)

(declare-fun e!4657047 () Int)

(assert (=> b!7887902 (= e!4657047 (+ 1 call!731837))))

(declare-fun b!7887903 () Bool)

(assert (=> b!7887903 (= e!4657047 1)))

(declare-fun b!7887904 () Bool)

(declare-fun e!4657045 () Bool)

(assert (=> b!7887904 (= e!4657045 (= lt!2681451 1))))

(declare-fun b!7887905 () Bool)

(assert (=> b!7887905 (= e!4657046 e!4657047)))

(declare-fun c!1448077 () Bool)

(assert (=> b!7887905 (= c!1448077 ((_ is Concat!30054) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun b!7887906 () Bool)

(declare-fun e!4657049 () Bool)

(declare-fun e!4657041 () Bool)

(assert (=> b!7887906 (= e!4657049 e!4657041)))

(declare-fun c!1448080 () Bool)

(assert (=> b!7887906 (= c!1448080 ((_ is Union!21209) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun b!7887907 () Bool)

(assert (=> b!7887907 (= e!4657044 (+ 1 call!731835))))

(declare-fun call!731834 () Int)

(declare-fun bm!731829 () Bool)

(declare-fun c!1448079 () Bool)

(assert (=> bm!731829 (= call!731834 (regexDepth!513 (ite c!1448080 (regOne!42931 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (ite c!1448079 (regTwo!42930 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (reg!21538 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100)))))))))

(declare-fun b!7887908 () Bool)

(declare-fun e!4657042 () Int)

(assert (=> b!7887908 (= e!4657042 e!4657044)))

(assert (=> b!7887908 (= c!1448074 ((_ is Star!21209) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun b!7887909 () Bool)

(declare-fun e!4657048 () Bool)

(assert (=> b!7887909 (= e!4657041 e!4657048)))

(declare-fun res!3131197 () Bool)

(assert (=> b!7887909 (= res!3131197 (> lt!2681451 call!731834))))

(assert (=> b!7887909 (=> (not res!3131197) (not e!4657048))))

(declare-fun b!7887910 () Bool)

(assert (=> b!7887910 (= e!4657041 e!4657040)))

(assert (=> b!7887910 (= c!1448079 ((_ is Concat!30054) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(declare-fun b!7887911 () Bool)

(assert (=> b!7887911 (= e!4657042 1)))

(declare-fun bm!731828 () Bool)

(assert (=> bm!731828 (= call!731833 (regexDepth!513 (ite c!1448080 (regTwo!42931 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (regOne!42930 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))))

(declare-fun d!2356617 () Bool)

(assert (=> d!2356617 e!4657049))

(declare-fun res!3131198 () Bool)

(assert (=> d!2356617 (=> (not res!3131198) (not e!4657049))))

(assert (=> d!2356617 (= res!3131198 (> lt!2681451 0))))

(assert (=> d!2356617 (= lt!2681451 e!4657042)))

(declare-fun c!1448078 () Bool)

(assert (=> d!2356617 (= c!1448078 ((_ is ElementMatch!21209) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(assert (=> d!2356617 (= (regexDepth!513 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) lt!2681451)))

(declare-fun bm!731830 () Bool)

(assert (=> bm!731830 (= call!731836 call!731834)))

(declare-fun b!7887912 () Bool)

(assert (=> b!7887912 (= e!4657045 (> lt!2681451 call!731836))))

(declare-fun bm!731831 () Bool)

(assert (=> bm!731831 (= call!731832 (regexDepth!513 (ite c!1448076 (regOne!42931 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))) (regTwo!42930 (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))))

(declare-fun b!7887913 () Bool)

(assert (=> b!7887913 (= e!4657048 (> lt!2681451 call!731833))))

(declare-fun b!7887914 () Bool)

(declare-fun c!1448075 () Bool)

(assert (=> b!7887914 (= c!1448075 ((_ is Star!21209) (ite c!1448031 (regTwo!42931 r!14100) (regOne!42930 r!14100))))))

(assert (=> b!7887914 (= e!4657040 e!4657045)))

(declare-fun bm!731832 () Bool)

(assert (=> bm!731832 (= call!731831 call!731835)))

(assert (= (and d!2356617 c!1448078) b!7887911))

(assert (= (and d!2356617 (not c!1448078)) b!7887908))

(assert (= (and b!7887908 c!1448074) b!7887907))

(assert (= (and b!7887908 (not c!1448074)) b!7887899))

(assert (= (and b!7887899 c!1448076) b!7887901))

(assert (= (and b!7887899 (not c!1448076)) b!7887905))

(assert (= (and b!7887905 c!1448077) b!7887902))

(assert (= (and b!7887905 (not c!1448077)) b!7887903))

(assert (= (or b!7887901 b!7887902) bm!731831))

(assert (= (or b!7887901 b!7887902) bm!731832))

(assert (= (or b!7887901 b!7887902) bm!731826))

(assert (= (or b!7887907 bm!731832) bm!731827))

(assert (= (and d!2356617 res!3131198) b!7887906))

(assert (= (and b!7887906 c!1448080) b!7887909))

(assert (= (and b!7887906 (not c!1448080)) b!7887910))

(assert (= (and b!7887909 res!3131197) b!7887913))

(assert (= (and b!7887910 c!1448079) b!7887900))

(assert (= (and b!7887910 (not c!1448079)) b!7887914))

(assert (= (and b!7887900 res!3131199) b!7887898))

(assert (= (and b!7887914 c!1448075) b!7887912))

(assert (= (and b!7887914 (not c!1448075)) b!7887904))

(assert (= (or b!7887898 b!7887912) bm!731830))

(assert (= (or b!7887909 bm!731830) bm!731829))

(assert (= (or b!7887913 b!7887900) bm!731828))

(declare-fun m!8269698 () Bool)

(assert (=> bm!731827 m!8269698))

(declare-fun m!8269700 () Bool)

(assert (=> bm!731829 m!8269700))

(declare-fun m!8269702 () Bool)

(assert (=> bm!731826 m!8269702))

(declare-fun m!8269704 () Bool)

(assert (=> bm!731828 m!8269704))

(declare-fun m!8269706 () Bool)

(assert (=> bm!731831 m!8269706))

(assert (=> bm!731788 d!2356617))

(declare-fun b!7887915 () Bool)

(declare-fun e!4657053 () Bool)

(declare-fun lt!2681452 () Int)

(declare-fun call!731843 () Int)

(assert (=> b!7887915 (= e!4657053 (> lt!2681452 call!731843))))

(declare-fun bm!731833 () Bool)

(declare-fun call!731838 () Int)

(declare-fun call!731839 () Int)

(declare-fun c!1448083 () Bool)

(declare-fun call!731844 () Int)

(assert (=> bm!731833 (= call!731844 (maxBigInt!0 (ite c!1448083 call!731839 call!731838) (ite c!1448083 call!731838 call!731839)))))

(declare-fun c!1448081 () Bool)

(declare-fun call!731842 () Int)

(declare-fun bm!731834 () Bool)

(assert (=> bm!731834 (= call!731842 (regexDepth!513 (ite c!1448081 (reg!21538 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) (ite c!1448083 (regTwo!42931 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) (regOne!42930 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100))))))))))

(declare-fun b!7887916 () Bool)

(assert (=> b!7887916 (= c!1448083 ((_ is Union!21209) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(declare-fun e!4657054 () Int)

(declare-fun e!4657056 () Int)

(assert (=> b!7887916 (= e!4657054 e!4657056)))

(declare-fun b!7887917 () Bool)

(declare-fun res!3131202 () Bool)

(assert (=> b!7887917 (=> (not res!3131202) (not e!4657053))))

(declare-fun call!731840 () Int)

(assert (=> b!7887917 (= res!3131202 (> lt!2681452 call!731840))))

(declare-fun e!4657050 () Bool)

(assert (=> b!7887917 (= e!4657050 e!4657053)))

(declare-fun b!7887918 () Bool)

(assert (=> b!7887918 (= e!4657056 (+ 1 call!731844))))

(declare-fun b!7887919 () Bool)

(declare-fun e!4657057 () Int)

(assert (=> b!7887919 (= e!4657057 (+ 1 call!731844))))

(declare-fun b!7887920 () Bool)

(assert (=> b!7887920 (= e!4657057 1)))

(declare-fun b!7887921 () Bool)

(declare-fun e!4657055 () Bool)

(assert (=> b!7887921 (= e!4657055 (= lt!2681452 1))))

(declare-fun b!7887922 () Bool)

(assert (=> b!7887922 (= e!4657056 e!4657057)))

(declare-fun c!1448084 () Bool)

(assert (=> b!7887922 (= c!1448084 ((_ is Concat!30054) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(declare-fun b!7887923 () Bool)

(declare-fun e!4657059 () Bool)

(declare-fun e!4657051 () Bool)

(assert (=> b!7887923 (= e!4657059 e!4657051)))

(declare-fun c!1448087 () Bool)

(assert (=> b!7887923 (= c!1448087 ((_ is Union!21209) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(declare-fun b!7887924 () Bool)

(assert (=> b!7887924 (= e!4657054 (+ 1 call!731842))))

(declare-fun c!1448086 () Bool)

(declare-fun bm!731836 () Bool)

(declare-fun call!731841 () Int)

(assert (=> bm!731836 (= call!731841 (regexDepth!513 (ite c!1448087 (regOne!42931 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) (ite c!1448086 (regTwo!42930 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) (reg!21538 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100))))))))))

(declare-fun b!7887925 () Bool)

(declare-fun e!4657052 () Int)

(assert (=> b!7887925 (= e!4657052 e!4657054)))

(assert (=> b!7887925 (= c!1448081 ((_ is Star!21209) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(declare-fun b!7887926 () Bool)

(declare-fun e!4657058 () Bool)

(assert (=> b!7887926 (= e!4657051 e!4657058)))

(declare-fun res!3131200 () Bool)

(assert (=> b!7887926 (= res!3131200 (> lt!2681452 call!731841))))

(assert (=> b!7887926 (=> (not res!3131200) (not e!4657058))))

(declare-fun b!7887927 () Bool)

(assert (=> b!7887927 (= e!4657051 e!4657050)))

(assert (=> b!7887927 (= c!1448086 ((_ is Concat!30054) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(declare-fun b!7887928 () Bool)

(assert (=> b!7887928 (= e!4657052 1)))

(declare-fun bm!731835 () Bool)

(assert (=> bm!731835 (= call!731840 (regexDepth!513 (ite c!1448087 (regTwo!42931 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) (regOne!42930 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))))

(declare-fun d!2356619 () Bool)

(assert (=> d!2356619 e!4657059))

(declare-fun res!3131201 () Bool)

(assert (=> d!2356619 (=> (not res!3131201) (not e!4657059))))

(assert (=> d!2356619 (= res!3131201 (> lt!2681452 0))))

(assert (=> d!2356619 (= lt!2681452 e!4657052)))

(declare-fun c!1448085 () Bool)

(assert (=> d!2356619 (= c!1448085 ((_ is ElementMatch!21209) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(assert (=> d!2356619 (= (regexDepth!513 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) lt!2681452)))

(declare-fun bm!731837 () Bool)

(assert (=> bm!731837 (= call!731843 call!731841)))

(declare-fun b!7887929 () Bool)

(assert (=> b!7887929 (= e!4657055 (> lt!2681452 call!731843))))

(declare-fun bm!731838 () Bool)

(assert (=> bm!731838 (= call!731839 (regexDepth!513 (ite c!1448083 (regOne!42931 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))) (regTwo!42930 (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))))

(declare-fun b!7887930 () Bool)

(assert (=> b!7887930 (= e!4657058 (> lt!2681452 call!731840))))

(declare-fun c!1448082 () Bool)

(declare-fun b!7887931 () Bool)

(assert (=> b!7887931 (= c!1448082 ((_ is Star!21209) (ite c!1448031 (regOne!42931 r!14100) (ite c!1448030 (regTwo!42930 r!14100) (reg!21538 r!14100)))))))

(assert (=> b!7887931 (= e!4657050 e!4657055)))

(declare-fun bm!731839 () Bool)

(assert (=> bm!731839 (= call!731838 call!731842)))

(assert (= (and d!2356619 c!1448085) b!7887928))

(assert (= (and d!2356619 (not c!1448085)) b!7887925))

(assert (= (and b!7887925 c!1448081) b!7887924))

(assert (= (and b!7887925 (not c!1448081)) b!7887916))

(assert (= (and b!7887916 c!1448083) b!7887918))

(assert (= (and b!7887916 (not c!1448083)) b!7887922))

(assert (= (and b!7887922 c!1448084) b!7887919))

(assert (= (and b!7887922 (not c!1448084)) b!7887920))

(assert (= (or b!7887918 b!7887919) bm!731838))

(assert (= (or b!7887918 b!7887919) bm!731839))

(assert (= (or b!7887918 b!7887919) bm!731833))

(assert (= (or b!7887924 bm!731839) bm!731834))

(assert (= (and d!2356619 res!3131201) b!7887923))

(assert (= (and b!7887923 c!1448087) b!7887926))

(assert (= (and b!7887923 (not c!1448087)) b!7887927))

(assert (= (and b!7887926 res!3131200) b!7887930))

(assert (= (and b!7887927 c!1448086) b!7887917))

(assert (= (and b!7887927 (not c!1448086)) b!7887931))

(assert (= (and b!7887917 res!3131202) b!7887915))

(assert (= (and b!7887931 c!1448082) b!7887929))

(assert (= (and b!7887931 (not c!1448082)) b!7887921))

(assert (= (or b!7887915 b!7887929) bm!731837))

(assert (= (or b!7887926 bm!731837) bm!731836))

(assert (= (or b!7887930 b!7887917) bm!731835))

(declare-fun m!8269708 () Bool)

(assert (=> bm!731834 m!8269708))

(declare-fun m!8269710 () Bool)

(assert (=> bm!731836 m!8269710))

(declare-fun m!8269712 () Bool)

(assert (=> bm!731833 m!8269712))

(declare-fun m!8269714 () Bool)

(assert (=> bm!731835 m!8269714))

(declare-fun m!8269716 () Bool)

(assert (=> bm!731838 m!8269716))

(assert (=> bm!731789 d!2356619))

(declare-fun d!2356621 () Bool)

(assert (=> d!2356621 (= (maxBigInt!0 (ite c!1448019 call!731785 call!731784) (ite c!1448019 call!731784 call!731785)) (ite (>= (ite c!1448019 call!731785 call!731784) (ite c!1448019 call!731784 call!731785)) (ite c!1448019 call!731785 call!731784) (ite c!1448019 call!731784 call!731785)))))

(assert (=> bm!731779 d!2356621))

(declare-fun b!7887932 () Bool)

(declare-fun e!4657063 () Bool)

(declare-fun lt!2681453 () Int)

(declare-fun call!731850 () Int)

(assert (=> b!7887932 (= e!4657063 (> lt!2681453 call!731850))))

(declare-fun call!731845 () Int)

(declare-fun call!731851 () Int)

(declare-fun bm!731840 () Bool)

(declare-fun call!731846 () Int)

(declare-fun c!1448090 () Bool)

(assert (=> bm!731840 (= call!731851 (maxBigInt!0 (ite c!1448090 call!731846 call!731845) (ite c!1448090 call!731845 call!731846)))))

(declare-fun call!731849 () Int)

(declare-fun bm!731841 () Bool)

(declare-fun c!1448088 () Bool)

(assert (=> bm!731841 (= call!731849 (regexDepth!513 (ite c!1448088 (reg!21538 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) (ite c!1448090 (regTwo!42931 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) (regOne!42930 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))))

(declare-fun b!7887933 () Bool)

(assert (=> b!7887933 (= c!1448090 ((_ is Union!21209) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(declare-fun e!4657064 () Int)

(declare-fun e!4657066 () Int)

(assert (=> b!7887933 (= e!4657064 e!4657066)))

(declare-fun b!7887934 () Bool)

(declare-fun res!3131205 () Bool)

(assert (=> b!7887934 (=> (not res!3131205) (not e!4657063))))

(declare-fun call!731847 () Int)

(assert (=> b!7887934 (= res!3131205 (> lt!2681453 call!731847))))

(declare-fun e!4657060 () Bool)

(assert (=> b!7887934 (= e!4657060 e!4657063)))

(declare-fun b!7887935 () Bool)

(assert (=> b!7887935 (= e!4657066 (+ 1 call!731851))))

(declare-fun b!7887936 () Bool)

(declare-fun e!4657067 () Int)

(assert (=> b!7887936 (= e!4657067 (+ 1 call!731851))))

(declare-fun b!7887937 () Bool)

(assert (=> b!7887937 (= e!4657067 1)))

(declare-fun b!7887938 () Bool)

(declare-fun e!4657065 () Bool)

(assert (=> b!7887938 (= e!4657065 (= lt!2681453 1))))

(declare-fun b!7887939 () Bool)

(assert (=> b!7887939 (= e!4657066 e!4657067)))

(declare-fun c!1448091 () Bool)

(assert (=> b!7887939 (= c!1448091 ((_ is Concat!30054) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887940 () Bool)

(declare-fun e!4657069 () Bool)

(declare-fun e!4657061 () Bool)

(assert (=> b!7887940 (= e!4657069 e!4657061)))

(declare-fun c!1448094 () Bool)

(assert (=> b!7887940 (= c!1448094 ((_ is Union!21209) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887941 () Bool)

(assert (=> b!7887941 (= e!4657064 (+ 1 call!731849))))

(declare-fun c!1448093 () Bool)

(declare-fun bm!731843 () Bool)

(declare-fun call!731848 () Int)

(assert (=> bm!731843 (= call!731848 (regexDepth!513 (ite c!1448094 (regOne!42931 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) (ite c!1448093 (regTwo!42930 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) (reg!21538 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))))

(declare-fun b!7887942 () Bool)

(declare-fun e!4657062 () Int)

(assert (=> b!7887942 (= e!4657062 e!4657064)))

(assert (=> b!7887942 (= c!1448088 ((_ is Star!21209) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887943 () Bool)

(declare-fun e!4657068 () Bool)

(assert (=> b!7887943 (= e!4657061 e!4657068)))

(declare-fun res!3131203 () Bool)

(assert (=> b!7887943 (= res!3131203 (> lt!2681453 call!731848))))

(assert (=> b!7887943 (=> (not res!3131203) (not e!4657068))))

(declare-fun b!7887944 () Bool)

(assert (=> b!7887944 (= e!4657061 e!4657060)))

(assert (=> b!7887944 (= c!1448093 ((_ is Concat!30054) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(declare-fun b!7887945 () Bool)

(assert (=> b!7887945 (= e!4657062 1)))

(declare-fun bm!731842 () Bool)

(assert (=> bm!731842 (= call!731847 (regexDepth!513 (ite c!1448094 (regTwo!42931 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) (regOne!42930 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))))

(declare-fun d!2356623 () Bool)

(assert (=> d!2356623 e!4657069))

(declare-fun res!3131204 () Bool)

(assert (=> d!2356623 (=> (not res!3131204) (not e!4657069))))

(assert (=> d!2356623 (= res!3131204 (> lt!2681453 0))))

(assert (=> d!2356623 (= lt!2681453 e!4657062)))

(declare-fun c!1448092 () Bool)

(assert (=> d!2356623 (= c!1448092 ((_ is ElementMatch!21209) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(assert (=> d!2356623 (= (regexDepth!513 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) lt!2681453)))

(declare-fun bm!731844 () Bool)

(assert (=> bm!731844 (= call!731850 call!731848)))

(declare-fun b!7887946 () Bool)

(assert (=> b!7887946 (= e!4657065 (> lt!2681453 call!731850))))

(declare-fun bm!731845 () Bool)

(assert (=> bm!731845 (= call!731846 (regexDepth!513 (ite c!1448090 (regOne!42931 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))) (regTwo!42930 (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))))

(declare-fun b!7887947 () Bool)

(assert (=> b!7887947 (= e!4657068 (> lt!2681453 call!731847))))

(declare-fun b!7887948 () Bool)

(declare-fun c!1448089 () Bool)

(assert (=> b!7887948 (= c!1448089 ((_ is Star!21209) (ite c!1448023 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))

(assert (=> b!7887948 (= e!4657060 e!4657065)))

(declare-fun bm!731846 () Bool)

(assert (=> bm!731846 (= call!731845 call!731849)))

(assert (= (and d!2356623 c!1448092) b!7887945))

(assert (= (and d!2356623 (not c!1448092)) b!7887942))

(assert (= (and b!7887942 c!1448088) b!7887941))

(assert (= (and b!7887942 (not c!1448088)) b!7887933))

(assert (= (and b!7887933 c!1448090) b!7887935))

(assert (= (and b!7887933 (not c!1448090)) b!7887939))

(assert (= (and b!7887939 c!1448091) b!7887936))

(assert (= (and b!7887939 (not c!1448091)) b!7887937))

(assert (= (or b!7887935 b!7887936) bm!731845))

(assert (= (or b!7887935 b!7887936) bm!731846))

(assert (= (or b!7887935 b!7887936) bm!731840))

(assert (= (or b!7887941 bm!731846) bm!731841))

(assert (= (and d!2356623 res!3131204) b!7887940))

(assert (= (and b!7887940 c!1448094) b!7887943))

(assert (= (and b!7887940 (not c!1448094)) b!7887944))

(assert (= (and b!7887943 res!3131203) b!7887947))

(assert (= (and b!7887944 c!1448093) b!7887934))

(assert (= (and b!7887944 (not c!1448093)) b!7887948))

(assert (= (and b!7887934 res!3131205) b!7887932))

(assert (= (and b!7887948 c!1448089) b!7887946))

(assert (= (and b!7887948 (not c!1448089)) b!7887938))

(assert (= (or b!7887932 b!7887946) bm!731844))

(assert (= (or b!7887943 bm!731844) bm!731843))

(assert (= (or b!7887947 b!7887934) bm!731842))

(declare-fun m!8269718 () Bool)

(assert (=> bm!731841 m!8269718))

(declare-fun m!8269720 () Bool)

(assert (=> bm!731843 m!8269720))

(declare-fun m!8269722 () Bool)

(assert (=> bm!731840 m!8269722))

(declare-fun m!8269724 () Bool)

(assert (=> bm!731842 m!8269724))

(declare-fun m!8269726 () Bool)

(assert (=> bm!731845 m!8269726))

(assert (=> bm!731781 d!2356623))

(declare-fun b!7887949 () Bool)

(declare-fun e!4657071 () List!74066)

(assert (=> b!7887949 (= e!4657071 (_2!38331 cut!2))))

(declare-fun b!7887950 () Bool)

(assert (=> b!7887950 (= e!4657071 (Cons!73942 (h!80390 (t!388801 (_1!38331 cut!2))) (++!18113 (t!388801 (t!388801 (_1!38331 cut!2))) (_2!38331 cut!2))))))

(declare-fun b!7887951 () Bool)

(declare-fun res!3131207 () Bool)

(declare-fun e!4657070 () Bool)

(assert (=> b!7887951 (=> (not res!3131207) (not e!4657070))))

(declare-fun lt!2681454 () List!74066)

(assert (=> b!7887951 (= res!3131207 (= (size!42850 lt!2681454) (+ (size!42850 (t!388801 (_1!38331 cut!2))) (size!42850 (_2!38331 cut!2)))))))

(declare-fun b!7887952 () Bool)

(assert (=> b!7887952 (= e!4657070 (or (not (= (_2!38331 cut!2) Nil!73942)) (= lt!2681454 (t!388801 (_1!38331 cut!2)))))))

(declare-fun d!2356625 () Bool)

(assert (=> d!2356625 e!4657070))

(declare-fun res!3131206 () Bool)

(assert (=> d!2356625 (=> (not res!3131206) (not e!4657070))))

(assert (=> d!2356625 (= res!3131206 (= (content!15692 lt!2681454) ((_ map or) (content!15692 (t!388801 (_1!38331 cut!2))) (content!15692 (_2!38331 cut!2)))))))

(assert (=> d!2356625 (= lt!2681454 e!4657071)))

(declare-fun c!1448095 () Bool)

(assert (=> d!2356625 (= c!1448095 ((_ is Nil!73942) (t!388801 (_1!38331 cut!2))))))

(assert (=> d!2356625 (= (++!18113 (t!388801 (_1!38331 cut!2)) (_2!38331 cut!2)) lt!2681454)))

(assert (= (and d!2356625 c!1448095) b!7887949))

(assert (= (and d!2356625 (not c!1448095)) b!7887950))

(assert (= (and d!2356625 res!3131206) b!7887951))

(assert (= (and b!7887951 res!3131207) b!7887952))

(declare-fun m!8269728 () Bool)

(assert (=> b!7887950 m!8269728))

(declare-fun m!8269730 () Bool)

(assert (=> b!7887951 m!8269730))

(assert (=> b!7887951 m!8269564))

(assert (=> b!7887951 m!8269626))

(declare-fun m!8269732 () Bool)

(assert (=> d!2356625 m!8269732))

(assert (=> d!2356625 m!8269656))

(assert (=> d!2356625 m!8269632))

(assert (=> b!7887733 d!2356625))

(declare-fun b!7887953 () Bool)

(declare-fun e!4657075 () Bool)

(declare-fun lt!2681455 () Int)

(declare-fun call!731857 () Int)

(assert (=> b!7887953 (= e!4657075 (> lt!2681455 call!731857))))

(declare-fun bm!731847 () Bool)

(declare-fun call!731858 () Int)

(declare-fun call!731853 () Int)

(declare-fun call!731852 () Int)

(declare-fun c!1448098 () Bool)

(assert (=> bm!731847 (= call!731858 (maxBigInt!0 (ite c!1448098 call!731853 call!731852) (ite c!1448098 call!731852 call!731853)))))

(declare-fun call!731856 () Int)

(declare-fun c!1448096 () Bool)

(declare-fun bm!731848 () Bool)

(assert (=> bm!731848 (= call!731856 (regexDepth!513 (ite c!1448096 (reg!21538 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) (ite c!1448098 (regTwo!42931 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) (regOne!42930 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))))))

(declare-fun b!7887954 () Bool)

(assert (=> b!7887954 (= c!1448098 ((_ is Union!21209) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(declare-fun e!4657076 () Int)

(declare-fun e!4657078 () Int)

(assert (=> b!7887954 (= e!4657076 e!4657078)))

(declare-fun b!7887955 () Bool)

(declare-fun res!3131210 () Bool)

(assert (=> b!7887955 (=> (not res!3131210) (not e!4657075))))

(declare-fun call!731854 () Int)

(assert (=> b!7887955 (= res!3131210 (> lt!2681455 call!731854))))

(declare-fun e!4657072 () Bool)

(assert (=> b!7887955 (= e!4657072 e!4657075)))

(declare-fun b!7887956 () Bool)

(assert (=> b!7887956 (= e!4657078 (+ 1 call!731858))))

(declare-fun b!7887957 () Bool)

(declare-fun e!4657079 () Int)

(assert (=> b!7887957 (= e!4657079 (+ 1 call!731858))))

(declare-fun b!7887958 () Bool)

(assert (=> b!7887958 (= e!4657079 1)))

(declare-fun b!7887959 () Bool)

(declare-fun e!4657077 () Bool)

(assert (=> b!7887959 (= e!4657077 (= lt!2681455 1))))

(declare-fun b!7887960 () Bool)

(assert (=> b!7887960 (= e!4657078 e!4657079)))

(declare-fun c!1448099 () Bool)

(assert (=> b!7887960 (= c!1448099 ((_ is Concat!30054) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(declare-fun b!7887961 () Bool)

(declare-fun e!4657081 () Bool)

(declare-fun e!4657073 () Bool)

(assert (=> b!7887961 (= e!4657081 e!4657073)))

(declare-fun c!1448102 () Bool)

(assert (=> b!7887961 (= c!1448102 ((_ is Union!21209) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(declare-fun b!7887962 () Bool)

(assert (=> b!7887962 (= e!4657076 (+ 1 call!731856))))

(declare-fun call!731855 () Int)

(declare-fun c!1448101 () Bool)

(declare-fun bm!731850 () Bool)

(assert (=> bm!731850 (= call!731855 (regexDepth!513 (ite c!1448102 (regOne!42931 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) (ite c!1448101 (regTwo!42930 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) (reg!21538 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100)))))))))))

(declare-fun b!7887963 () Bool)

(declare-fun e!4657074 () Int)

(assert (=> b!7887963 (= e!4657074 e!4657076)))

(assert (=> b!7887963 (= c!1448096 ((_ is Star!21209) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(declare-fun b!7887964 () Bool)

(declare-fun e!4657080 () Bool)

(assert (=> b!7887964 (= e!4657073 e!4657080)))

(declare-fun res!3131208 () Bool)

(assert (=> b!7887964 (= res!3131208 (> lt!2681455 call!731855))))

(assert (=> b!7887964 (=> (not res!3131208) (not e!4657080))))

(declare-fun b!7887965 () Bool)

(assert (=> b!7887965 (= e!4657073 e!4657072)))

(assert (=> b!7887965 (= c!1448101 ((_ is Concat!30054) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(declare-fun b!7887966 () Bool)

(assert (=> b!7887966 (= e!4657074 1)))

(declare-fun bm!731849 () Bool)

(assert (=> bm!731849 (= call!731854 (regexDepth!513 (ite c!1448102 (regTwo!42931 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) (regOne!42930 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))))

(declare-fun d!2356627 () Bool)

(assert (=> d!2356627 e!4657081))

(declare-fun res!3131209 () Bool)

(assert (=> d!2356627 (=> (not res!3131209) (not e!4657081))))

(assert (=> d!2356627 (= res!3131209 (> lt!2681455 0))))

(assert (=> d!2356627 (= lt!2681455 e!4657074)))

(declare-fun c!1448100 () Bool)

(assert (=> d!2356627 (= c!1448100 ((_ is ElementMatch!21209) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(assert (=> d!2356627 (= (regexDepth!513 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) lt!2681455)))

(declare-fun bm!731851 () Bool)

(assert (=> bm!731851 (= call!731857 call!731855)))

(declare-fun b!7887967 () Bool)

(assert (=> b!7887967 (= e!4657077 (> lt!2681455 call!731857))))

(declare-fun bm!731852 () Bool)

(assert (=> bm!731852 (= call!731853 (regexDepth!513 (ite c!1448098 (regOne!42931 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))) (regTwo!42930 (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))))

(declare-fun b!7887968 () Bool)

(assert (=> b!7887968 (= e!4657080 (> lt!2681455 call!731854))))

(declare-fun c!1448097 () Bool)

(declare-fun b!7887969 () Bool)

(assert (=> b!7887969 (= c!1448097 ((_ is Star!21209) (ite c!1448017 (reg!21538 (reg!21538 r!14100)) (ite c!1448019 (regTwo!42931 (reg!21538 r!14100)) (regOne!42930 (reg!21538 r!14100))))))))

(assert (=> b!7887969 (= e!4657072 e!4657077)))

(declare-fun bm!731853 () Bool)

(assert (=> bm!731853 (= call!731852 call!731856)))

(assert (= (and d!2356627 c!1448100) b!7887966))

(assert (= (and d!2356627 (not c!1448100)) b!7887963))

(assert (= (and b!7887963 c!1448096) b!7887962))

(assert (= (and b!7887963 (not c!1448096)) b!7887954))

(assert (= (and b!7887954 c!1448098) b!7887956))

(assert (= (and b!7887954 (not c!1448098)) b!7887960))

(assert (= (and b!7887960 c!1448099) b!7887957))

(assert (= (and b!7887960 (not c!1448099)) b!7887958))

(assert (= (or b!7887956 b!7887957) bm!731852))

(assert (= (or b!7887956 b!7887957) bm!731853))

(assert (= (or b!7887956 b!7887957) bm!731847))

(assert (= (or b!7887962 bm!731853) bm!731848))

(assert (= (and d!2356627 res!3131209) b!7887961))

(assert (= (and b!7887961 c!1448102) b!7887964))

(assert (= (and b!7887961 (not c!1448102)) b!7887965))

(assert (= (and b!7887964 res!3131208) b!7887968))

(assert (= (and b!7887965 c!1448101) b!7887955))

(assert (= (and b!7887965 (not c!1448101)) b!7887969))

(assert (= (and b!7887955 res!3131210) b!7887953))

(assert (= (and b!7887969 c!1448097) b!7887967))

(assert (= (and b!7887969 (not c!1448097)) b!7887959))

(assert (= (or b!7887953 b!7887967) bm!731851))

(assert (= (or b!7887964 bm!731851) bm!731850))

(assert (= (or b!7887968 b!7887955) bm!731849))

(declare-fun m!8269734 () Bool)

(assert (=> bm!731848 m!8269734))

(declare-fun m!8269736 () Bool)

(assert (=> bm!731850 m!8269736))

(declare-fun m!8269738 () Bool)

(assert (=> bm!731847 m!8269738))

(declare-fun m!8269740 () Bool)

(assert (=> bm!731849 m!8269740))

(declare-fun m!8269742 () Bool)

(assert (=> bm!731852 m!8269742))

(assert (=> bm!731780 d!2356627))

(declare-fun b!7887970 () Bool)

(declare-fun e!4657088 () Bool)

(declare-fun call!731860 () Bool)

(assert (=> b!7887970 (= e!4657088 call!731860)))

(declare-fun b!7887971 () Bool)

(declare-fun e!4657086 () Bool)

(declare-fun e!4657083 () Bool)

(assert (=> b!7887971 (= e!4657086 e!4657083)))

(declare-fun c!1448104 () Bool)

(assert (=> b!7887971 (= c!1448104 ((_ is Union!21209) (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))

(declare-fun b!7887972 () Bool)

(declare-fun e!4657084 () Bool)

(assert (=> b!7887972 (= e!4657084 e!4657086)))

(declare-fun c!1448103 () Bool)

(assert (=> b!7887972 (= c!1448103 ((_ is Star!21209) (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))

(declare-fun b!7887973 () Bool)

(declare-fun e!4657087 () Bool)

(declare-fun call!731861 () Bool)

(assert (=> b!7887973 (= e!4657087 call!731861)))

(declare-fun b!7887974 () Bool)

(declare-fun e!4657082 () Bool)

(assert (=> b!7887974 (= e!4657082 e!4657087)))

(declare-fun res!3131214 () Bool)

(assert (=> b!7887974 (=> (not res!3131214) (not e!4657087))))

(assert (=> b!7887974 (= res!3131214 call!731860)))

(declare-fun bm!731854 () Bool)

(assert (=> bm!731854 (= call!731860 (validRegex!11619 (ite c!1448104 (regTwo!42931 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))) (regOne!42930 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))))

(declare-fun bm!731855 () Bool)

(declare-fun call!731859 () Bool)

(assert (=> bm!731855 (= call!731861 call!731859)))

(declare-fun b!7887976 () Bool)

(declare-fun res!3131213 () Bool)

(assert (=> b!7887976 (=> (not res!3131213) (not e!4657088))))

(assert (=> b!7887976 (= res!3131213 call!731861)))

(assert (=> b!7887976 (= e!4657083 e!4657088)))

(declare-fun b!7887977 () Bool)

(declare-fun e!4657085 () Bool)

(assert (=> b!7887977 (= e!4657086 e!4657085)))

(declare-fun res!3131211 () Bool)

(assert (=> b!7887977 (= res!3131211 (not (nullable!9463 (reg!21538 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))))

(assert (=> b!7887977 (=> (not res!3131211) (not e!4657085))))

(declare-fun b!7887978 () Bool)

(declare-fun res!3131212 () Bool)

(assert (=> b!7887978 (=> res!3131212 e!4657082)))

(assert (=> b!7887978 (= res!3131212 (not ((_ is Concat!30054) (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))))

(assert (=> b!7887978 (= e!4657083 e!4657082)))

(declare-fun bm!731856 () Bool)

(assert (=> bm!731856 (= call!731859 (validRegex!11619 (ite c!1448103 (reg!21538 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))) (ite c!1448104 (regOne!42931 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))) (regTwo!42930 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100))))))))))

(declare-fun d!2356629 () Bool)

(declare-fun res!3131215 () Bool)

(assert (=> d!2356629 (=> res!3131215 e!4657084)))

(assert (=> d!2356629 (= res!3131215 ((_ is ElementMatch!21209) (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))))))

(assert (=> d!2356629 (= (validRegex!11619 (ite c!1447967 (reg!21538 r!14100) (ite c!1447968 (regOne!42931 r!14100) (regTwo!42930 r!14100)))) e!4657084)))

(declare-fun b!7887975 () Bool)

(assert (=> b!7887975 (= e!4657085 call!731859)))

(assert (= (and d!2356629 (not res!3131215)) b!7887972))

(assert (= (and b!7887972 c!1448103) b!7887977))

(assert (= (and b!7887972 (not c!1448103)) b!7887971))

(assert (= (and b!7887977 res!3131211) b!7887975))

(assert (= (and b!7887971 c!1448104) b!7887976))

(assert (= (and b!7887971 (not c!1448104)) b!7887978))

(assert (= (and b!7887976 res!3131213) b!7887970))

(assert (= (and b!7887978 (not res!3131212)) b!7887974))

(assert (= (and b!7887974 res!3131214) b!7887973))

(assert (= (or b!7887970 b!7887974) bm!731854))

(assert (= (or b!7887976 b!7887973) bm!731855))

(assert (= (or b!7887975 bm!731855) bm!731856))

(declare-fun m!8269744 () Bool)

(assert (=> bm!731854 m!8269744))

(declare-fun m!8269746 () Bool)

(assert (=> b!7887977 m!8269746))

(declare-fun m!8269748 () Bool)

(assert (=> bm!731856 m!8269748))

(assert (=> bm!731736 d!2356629))

(declare-fun b!7887979 () Bool)

(declare-fun e!4657092 () Bool)

(declare-fun lt!2681456 () Int)

(declare-fun call!731867 () Int)

(assert (=> b!7887979 (= e!4657092 (> lt!2681456 call!731867))))

(declare-fun call!731868 () Int)

(declare-fun c!1448107 () Bool)

(declare-fun call!731862 () Int)

(declare-fun bm!731857 () Bool)

(declare-fun call!731863 () Int)

(assert (=> bm!731857 (= call!731868 (maxBigInt!0 (ite c!1448107 call!731863 call!731862) (ite c!1448107 call!731862 call!731863)))))

(declare-fun bm!731858 () Bool)

(declare-fun c!1448105 () Bool)

(declare-fun call!731866 () Int)

(assert (=> bm!731858 (= call!731866 (regexDepth!513 (ite c!1448105 (reg!21538 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) (ite c!1448107 (regTwo!42931 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) (regOne!42930 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100)))))))))))

(declare-fun b!7887980 () Bool)

(assert (=> b!7887980 (= c!1448107 ((_ is Union!21209) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(declare-fun e!4657093 () Int)

(declare-fun e!4657095 () Int)

(assert (=> b!7887980 (= e!4657093 e!4657095)))

(declare-fun b!7887981 () Bool)

(declare-fun res!3131218 () Bool)

(assert (=> b!7887981 (=> (not res!3131218) (not e!4657092))))

(declare-fun call!731864 () Int)

(assert (=> b!7887981 (= res!3131218 (> lt!2681456 call!731864))))

(declare-fun e!4657089 () Bool)

(assert (=> b!7887981 (= e!4657089 e!4657092)))

(declare-fun b!7887982 () Bool)

(assert (=> b!7887982 (= e!4657095 (+ 1 call!731868))))

(declare-fun b!7887983 () Bool)

(declare-fun e!4657096 () Int)

(assert (=> b!7887983 (= e!4657096 (+ 1 call!731868))))

(declare-fun b!7887984 () Bool)

(assert (=> b!7887984 (= e!4657096 1)))

(declare-fun b!7887985 () Bool)

(declare-fun e!4657094 () Bool)

(assert (=> b!7887985 (= e!4657094 (= lt!2681456 1))))

(declare-fun b!7887986 () Bool)

(assert (=> b!7887986 (= e!4657095 e!4657096)))

(declare-fun c!1448108 () Bool)

(assert (=> b!7887986 (= c!1448108 ((_ is Concat!30054) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(declare-fun b!7887987 () Bool)

(declare-fun e!4657098 () Bool)

(declare-fun e!4657090 () Bool)

(assert (=> b!7887987 (= e!4657098 e!4657090)))

(declare-fun c!1448111 () Bool)

(assert (=> b!7887987 (= c!1448111 ((_ is Union!21209) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(declare-fun b!7887988 () Bool)

(assert (=> b!7887988 (= e!4657093 (+ 1 call!731866))))

(declare-fun bm!731860 () Bool)

(declare-fun c!1448110 () Bool)

(declare-fun call!731865 () Int)

(assert (=> bm!731860 (= call!731865 (regexDepth!513 (ite c!1448111 (regOne!42931 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) (ite c!1448110 (regTwo!42930 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) (reg!21538 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100)))))))))))

(declare-fun b!7887989 () Bool)

(declare-fun e!4657091 () Int)

(assert (=> b!7887989 (= e!4657091 e!4657093)))

(assert (=> b!7887989 (= c!1448105 ((_ is Star!21209) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(declare-fun b!7887990 () Bool)

(declare-fun e!4657097 () Bool)

(assert (=> b!7887990 (= e!4657090 e!4657097)))

(declare-fun res!3131216 () Bool)

(assert (=> b!7887990 (= res!3131216 (> lt!2681456 call!731865))))

(assert (=> b!7887990 (=> (not res!3131216) (not e!4657097))))

(declare-fun b!7887991 () Bool)

(assert (=> b!7887991 (= e!4657090 e!4657089)))

(assert (=> b!7887991 (= c!1448110 ((_ is Concat!30054) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(declare-fun b!7887992 () Bool)

(assert (=> b!7887992 (= e!4657091 1)))

(declare-fun bm!731859 () Bool)

(assert (=> bm!731859 (= call!731864 (regexDepth!513 (ite c!1448111 (regTwo!42931 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) (regOne!42930 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))))

(declare-fun d!2356631 () Bool)

(assert (=> d!2356631 e!4657098))

(declare-fun res!3131217 () Bool)

(assert (=> d!2356631 (=> (not res!3131217) (not e!4657098))))

(assert (=> d!2356631 (= res!3131217 (> lt!2681456 0))))

(assert (=> d!2356631 (= lt!2681456 e!4657091)))

(declare-fun c!1448109 () Bool)

(assert (=> d!2356631 (= c!1448109 ((_ is ElementMatch!21209) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(assert (=> d!2356631 (= (regexDepth!513 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) lt!2681456)))

(declare-fun bm!731861 () Bool)

(assert (=> bm!731861 (= call!731867 call!731865)))

(declare-fun b!7887993 () Bool)

(assert (=> b!7887993 (= e!4657094 (> lt!2681456 call!731867))))

(declare-fun bm!731862 () Bool)

(assert (=> bm!731862 (= call!731863 (regexDepth!513 (ite c!1448107 (regOne!42931 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))) (regTwo!42930 (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))))

(declare-fun b!7887994 () Bool)

(assert (=> b!7887994 (= e!4657097 (> lt!2681456 call!731864))))

(declare-fun b!7887995 () Bool)

(declare-fun c!1448106 () Bool)

(assert (=> b!7887995 (= c!1448106 ((_ is Star!21209) (ite c!1448023 (regOne!42931 (reg!21538 r!14100)) (ite c!1448022 (regTwo!42930 (reg!21538 r!14100)) (reg!21538 (reg!21538 r!14100))))))))

(assert (=> b!7887995 (= e!4657089 e!4657094)))

(declare-fun bm!731863 () Bool)

(assert (=> bm!731863 (= call!731862 call!731866)))

(assert (= (and d!2356631 c!1448109) b!7887992))

(assert (= (and d!2356631 (not c!1448109)) b!7887989))

(assert (= (and b!7887989 c!1448105) b!7887988))

(assert (= (and b!7887989 (not c!1448105)) b!7887980))

(assert (= (and b!7887980 c!1448107) b!7887982))

(assert (= (and b!7887980 (not c!1448107)) b!7887986))

(assert (= (and b!7887986 c!1448108) b!7887983))

(assert (= (and b!7887986 (not c!1448108)) b!7887984))

(assert (= (or b!7887982 b!7887983) bm!731862))

(assert (= (or b!7887982 b!7887983) bm!731863))

(assert (= (or b!7887982 b!7887983) bm!731857))

(assert (= (or b!7887988 bm!731863) bm!731858))

(assert (= (and d!2356631 res!3131217) b!7887987))

(assert (= (and b!7887987 c!1448111) b!7887990))

(assert (= (and b!7887987 (not c!1448111)) b!7887991))

(assert (= (and b!7887990 res!3131216) b!7887994))

(assert (= (and b!7887991 c!1448110) b!7887981))

(assert (= (and b!7887991 (not c!1448110)) b!7887995))

(assert (= (and b!7887981 res!3131218) b!7887979))

(assert (= (and b!7887995 c!1448106) b!7887993))

(assert (= (and b!7887995 (not c!1448106)) b!7887985))

(assert (= (or b!7887979 b!7887993) bm!731861))

(assert (= (or b!7887990 bm!731861) bm!731860))

(assert (= (or b!7887994 b!7887981) bm!731859))

(declare-fun m!8269750 () Bool)

(assert (=> bm!731858 m!8269750))

(declare-fun m!8269752 () Bool)

(assert (=> bm!731860 m!8269752))

(declare-fun m!8269754 () Bool)

(assert (=> bm!731857 m!8269754))

(declare-fun m!8269756 () Bool)

(assert (=> bm!731859 m!8269756))

(declare-fun m!8269758 () Bool)

(assert (=> bm!731862 m!8269758))

(assert (=> bm!731782 d!2356631))

(declare-fun e!4657099 () Bool)

(assert (=> b!7887764 (= tp!2346498 e!4657099)))

(declare-fun b!7887999 () Bool)

(declare-fun tp!2346564 () Bool)

(declare-fun tp!2346565 () Bool)

(assert (=> b!7887999 (= e!4657099 (and tp!2346564 tp!2346565))))

(declare-fun b!7887998 () Bool)

(declare-fun tp!2346566 () Bool)

(assert (=> b!7887998 (= e!4657099 tp!2346566)))

(declare-fun b!7887997 () Bool)

(declare-fun tp!2346567 () Bool)

(declare-fun tp!2346563 () Bool)

(assert (=> b!7887997 (= e!4657099 (and tp!2346567 tp!2346563))))

(declare-fun b!7887996 () Bool)

(assert (=> b!7887996 (= e!4657099 tp_is_empty!52817)))

(assert (= (and b!7887764 ((_ is ElementMatch!21209) (regOne!42931 (regOne!42930 r!14100)))) b!7887996))

(assert (= (and b!7887764 ((_ is Concat!30054) (regOne!42931 (regOne!42930 r!14100)))) b!7887997))

(assert (= (and b!7887764 ((_ is Star!21209) (regOne!42931 (regOne!42930 r!14100)))) b!7887998))

(assert (= (and b!7887764 ((_ is Union!21209) (regOne!42931 (regOne!42930 r!14100)))) b!7887999))

(declare-fun e!4657100 () Bool)

(assert (=> b!7887764 (= tp!2346499 e!4657100)))

(declare-fun b!7888003 () Bool)

(declare-fun tp!2346569 () Bool)

(declare-fun tp!2346570 () Bool)

(assert (=> b!7888003 (= e!4657100 (and tp!2346569 tp!2346570))))

(declare-fun b!7888002 () Bool)

(declare-fun tp!2346571 () Bool)

(assert (=> b!7888002 (= e!4657100 tp!2346571)))

(declare-fun b!7888001 () Bool)

(declare-fun tp!2346572 () Bool)

(declare-fun tp!2346568 () Bool)

(assert (=> b!7888001 (= e!4657100 (and tp!2346572 tp!2346568))))

(declare-fun b!7888000 () Bool)

(assert (=> b!7888000 (= e!4657100 tp_is_empty!52817)))

(assert (= (and b!7887764 ((_ is ElementMatch!21209) (regTwo!42931 (regOne!42930 r!14100)))) b!7888000))

(assert (= (and b!7887764 ((_ is Concat!30054) (regTwo!42931 (regOne!42930 r!14100)))) b!7888001))

(assert (= (and b!7887764 ((_ is Star!21209) (regTwo!42931 (regOne!42930 r!14100)))) b!7888002))

(assert (= (and b!7887764 ((_ is Union!21209) (regTwo!42931 (regOne!42930 r!14100)))) b!7888003))

(declare-fun e!4657101 () Bool)

(assert (=> b!7887768 (= tp!2346503 e!4657101)))

(declare-fun b!7888007 () Bool)

(declare-fun tp!2346574 () Bool)

(declare-fun tp!2346575 () Bool)

(assert (=> b!7888007 (= e!4657101 (and tp!2346574 tp!2346575))))

(declare-fun b!7888006 () Bool)

(declare-fun tp!2346576 () Bool)

(assert (=> b!7888006 (= e!4657101 tp!2346576)))

(declare-fun b!7888005 () Bool)

(declare-fun tp!2346577 () Bool)

(declare-fun tp!2346573 () Bool)

(assert (=> b!7888005 (= e!4657101 (and tp!2346577 tp!2346573))))

(declare-fun b!7888004 () Bool)

(assert (=> b!7888004 (= e!4657101 tp_is_empty!52817)))

(assert (= (and b!7887768 ((_ is ElementMatch!21209) (regOne!42931 (regTwo!42930 r!14100)))) b!7888004))

(assert (= (and b!7887768 ((_ is Concat!30054) (regOne!42931 (regTwo!42930 r!14100)))) b!7888005))

(assert (= (and b!7887768 ((_ is Star!21209) (regOne!42931 (regTwo!42930 r!14100)))) b!7888006))

(assert (= (and b!7887768 ((_ is Union!21209) (regOne!42931 (regTwo!42930 r!14100)))) b!7888007))

(declare-fun e!4657102 () Bool)

(assert (=> b!7887768 (= tp!2346504 e!4657102)))

(declare-fun b!7888011 () Bool)

(declare-fun tp!2346579 () Bool)

(declare-fun tp!2346580 () Bool)

(assert (=> b!7888011 (= e!4657102 (and tp!2346579 tp!2346580))))

(declare-fun b!7888010 () Bool)

(declare-fun tp!2346581 () Bool)

(assert (=> b!7888010 (= e!4657102 tp!2346581)))

(declare-fun b!7888009 () Bool)

(declare-fun tp!2346582 () Bool)

(declare-fun tp!2346578 () Bool)

(assert (=> b!7888009 (= e!4657102 (and tp!2346582 tp!2346578))))

(declare-fun b!7888008 () Bool)

(assert (=> b!7888008 (= e!4657102 tp_is_empty!52817)))

(assert (= (and b!7887768 ((_ is ElementMatch!21209) (regTwo!42931 (regTwo!42930 r!14100)))) b!7888008))

(assert (= (and b!7887768 ((_ is Concat!30054) (regTwo!42931 (regTwo!42930 r!14100)))) b!7888009))

(assert (= (and b!7887768 ((_ is Star!21209) (regTwo!42931 (regTwo!42930 r!14100)))) b!7888010))

(assert (= (and b!7887768 ((_ is Union!21209) (regTwo!42931 (regTwo!42930 r!14100)))) b!7888011))

(declare-fun e!4657103 () Bool)

(assert (=> b!7887775 (= tp!2346515 e!4657103)))

(declare-fun b!7888015 () Bool)

(declare-fun tp!2346584 () Bool)

(declare-fun tp!2346585 () Bool)

(assert (=> b!7888015 (= e!4657103 (and tp!2346584 tp!2346585))))

(declare-fun b!7888014 () Bool)

(declare-fun tp!2346586 () Bool)

(assert (=> b!7888014 (= e!4657103 tp!2346586)))

(declare-fun b!7888013 () Bool)

(declare-fun tp!2346587 () Bool)

(declare-fun tp!2346583 () Bool)

(assert (=> b!7888013 (= e!4657103 (and tp!2346587 tp!2346583))))

(declare-fun b!7888012 () Bool)

(assert (=> b!7888012 (= e!4657103 tp_is_empty!52817)))

(assert (= (and b!7887775 ((_ is ElementMatch!21209) (reg!21538 (regTwo!42931 r!14100)))) b!7888012))

(assert (= (and b!7887775 ((_ is Concat!30054) (reg!21538 (regTwo!42931 r!14100)))) b!7888013))

(assert (= (and b!7887775 ((_ is Star!21209) (reg!21538 (regTwo!42931 r!14100)))) b!7888014))

(assert (= (and b!7887775 ((_ is Union!21209) (reg!21538 (regTwo!42931 r!14100)))) b!7888015))

(declare-fun e!4657104 () Bool)

(assert (=> b!7887774 (= tp!2346516 e!4657104)))

(declare-fun b!7888019 () Bool)

(declare-fun tp!2346589 () Bool)

(declare-fun tp!2346590 () Bool)

(assert (=> b!7888019 (= e!4657104 (and tp!2346589 tp!2346590))))

(declare-fun b!7888018 () Bool)

(declare-fun tp!2346591 () Bool)

(assert (=> b!7888018 (= e!4657104 tp!2346591)))

(declare-fun b!7888017 () Bool)

(declare-fun tp!2346592 () Bool)

(declare-fun tp!2346588 () Bool)

(assert (=> b!7888017 (= e!4657104 (and tp!2346592 tp!2346588))))

(declare-fun b!7888016 () Bool)

(assert (=> b!7888016 (= e!4657104 tp_is_empty!52817)))

(assert (= (and b!7887774 ((_ is ElementMatch!21209) (regOne!42930 (regTwo!42931 r!14100)))) b!7888016))

(assert (= (and b!7887774 ((_ is Concat!30054) (regOne!42930 (regTwo!42931 r!14100)))) b!7888017))

(assert (= (and b!7887774 ((_ is Star!21209) (regOne!42930 (regTwo!42931 r!14100)))) b!7888018))

(assert (= (and b!7887774 ((_ is Union!21209) (regOne!42930 (regTwo!42931 r!14100)))) b!7888019))

(declare-fun e!4657105 () Bool)

(assert (=> b!7887774 (= tp!2346512 e!4657105)))

(declare-fun b!7888023 () Bool)

(declare-fun tp!2346594 () Bool)

(declare-fun tp!2346595 () Bool)

(assert (=> b!7888023 (= e!4657105 (and tp!2346594 tp!2346595))))

(declare-fun b!7888022 () Bool)

(declare-fun tp!2346596 () Bool)

(assert (=> b!7888022 (= e!4657105 tp!2346596)))

(declare-fun b!7888021 () Bool)

(declare-fun tp!2346597 () Bool)

(declare-fun tp!2346593 () Bool)

(assert (=> b!7888021 (= e!4657105 (and tp!2346597 tp!2346593))))

(declare-fun b!7888020 () Bool)

(assert (=> b!7888020 (= e!4657105 tp_is_empty!52817)))

(assert (= (and b!7887774 ((_ is ElementMatch!21209) (regTwo!42930 (regTwo!42931 r!14100)))) b!7888020))

(assert (= (and b!7887774 ((_ is Concat!30054) (regTwo!42930 (regTwo!42931 r!14100)))) b!7888021))

(assert (= (and b!7887774 ((_ is Star!21209) (regTwo!42930 (regTwo!42931 r!14100)))) b!7888022))

(assert (= (and b!7887774 ((_ is Union!21209) (regTwo!42930 (regTwo!42931 r!14100)))) b!7888023))

(declare-fun e!4657106 () Bool)

(assert (=> b!7887776 (= tp!2346513 e!4657106)))

(declare-fun b!7888027 () Bool)

(declare-fun tp!2346599 () Bool)

(declare-fun tp!2346600 () Bool)

(assert (=> b!7888027 (= e!4657106 (and tp!2346599 tp!2346600))))

(declare-fun b!7888026 () Bool)

(declare-fun tp!2346601 () Bool)

(assert (=> b!7888026 (= e!4657106 tp!2346601)))

(declare-fun b!7888025 () Bool)

(declare-fun tp!2346602 () Bool)

(declare-fun tp!2346598 () Bool)

(assert (=> b!7888025 (= e!4657106 (and tp!2346602 tp!2346598))))

(declare-fun b!7888024 () Bool)

(assert (=> b!7888024 (= e!4657106 tp_is_empty!52817)))

(assert (= (and b!7887776 ((_ is ElementMatch!21209) (regOne!42931 (regTwo!42931 r!14100)))) b!7888024))

(assert (= (and b!7887776 ((_ is Concat!30054) (regOne!42931 (regTwo!42931 r!14100)))) b!7888025))

(assert (= (and b!7887776 ((_ is Star!21209) (regOne!42931 (regTwo!42931 r!14100)))) b!7888026))

(assert (= (and b!7887776 ((_ is Union!21209) (regOne!42931 (regTwo!42931 r!14100)))) b!7888027))

(declare-fun e!4657107 () Bool)

(assert (=> b!7887776 (= tp!2346514 e!4657107)))

(declare-fun b!7888031 () Bool)

(declare-fun tp!2346604 () Bool)

(declare-fun tp!2346605 () Bool)

(assert (=> b!7888031 (= e!4657107 (and tp!2346604 tp!2346605))))

(declare-fun b!7888030 () Bool)

(declare-fun tp!2346606 () Bool)

(assert (=> b!7888030 (= e!4657107 tp!2346606)))

(declare-fun b!7888029 () Bool)

(declare-fun tp!2346607 () Bool)

(declare-fun tp!2346603 () Bool)

(assert (=> b!7888029 (= e!4657107 (and tp!2346607 tp!2346603))))

(declare-fun b!7888028 () Bool)

(assert (=> b!7888028 (= e!4657107 tp_is_empty!52817)))

(assert (= (and b!7887776 ((_ is ElementMatch!21209) (regTwo!42931 (regTwo!42931 r!14100)))) b!7888028))

(assert (= (and b!7887776 ((_ is Concat!30054) (regTwo!42931 (regTwo!42931 r!14100)))) b!7888029))

(assert (= (and b!7887776 ((_ is Star!21209) (regTwo!42931 (regTwo!42931 r!14100)))) b!7888030))

(assert (= (and b!7887776 ((_ is Union!21209) (regTwo!42931 (regTwo!42931 r!14100)))) b!7888031))

(declare-fun e!4657108 () Bool)

(assert (=> b!7887783 (= tp!2346524 e!4657108)))

(declare-fun b!7888035 () Bool)

(declare-fun tp!2346609 () Bool)

(declare-fun tp!2346610 () Bool)

(assert (=> b!7888035 (= e!4657108 (and tp!2346609 tp!2346610))))

(declare-fun b!7888034 () Bool)

(declare-fun tp!2346611 () Bool)

(assert (=> b!7888034 (= e!4657108 tp!2346611)))

(declare-fun b!7888033 () Bool)

(declare-fun tp!2346612 () Bool)

(declare-fun tp!2346608 () Bool)

(assert (=> b!7888033 (= e!4657108 (and tp!2346612 tp!2346608))))

(declare-fun b!7888032 () Bool)

(assert (=> b!7888032 (= e!4657108 tp_is_empty!52817)))

(assert (= (and b!7887783 ((_ is ElementMatch!21209) (regOne!42930 (reg!21538 r!14100)))) b!7888032))

(assert (= (and b!7887783 ((_ is Concat!30054) (regOne!42930 (reg!21538 r!14100)))) b!7888033))

(assert (= (and b!7887783 ((_ is Star!21209) (regOne!42930 (reg!21538 r!14100)))) b!7888034))

(assert (= (and b!7887783 ((_ is Union!21209) (regOne!42930 (reg!21538 r!14100)))) b!7888035))

(declare-fun e!4657109 () Bool)

(assert (=> b!7887783 (= tp!2346520 e!4657109)))

(declare-fun b!7888039 () Bool)

(declare-fun tp!2346614 () Bool)

(declare-fun tp!2346615 () Bool)

(assert (=> b!7888039 (= e!4657109 (and tp!2346614 tp!2346615))))

(declare-fun b!7888038 () Bool)

(declare-fun tp!2346616 () Bool)

(assert (=> b!7888038 (= e!4657109 tp!2346616)))

(declare-fun b!7888037 () Bool)

(declare-fun tp!2346617 () Bool)

(declare-fun tp!2346613 () Bool)

(assert (=> b!7888037 (= e!4657109 (and tp!2346617 tp!2346613))))

(declare-fun b!7888036 () Bool)

(assert (=> b!7888036 (= e!4657109 tp_is_empty!52817)))

(assert (= (and b!7887783 ((_ is ElementMatch!21209) (regTwo!42930 (reg!21538 r!14100)))) b!7888036))

(assert (= (and b!7887783 ((_ is Concat!30054) (regTwo!42930 (reg!21538 r!14100)))) b!7888037))

(assert (= (and b!7887783 ((_ is Star!21209) (regTwo!42930 (reg!21538 r!14100)))) b!7888038))

(assert (= (and b!7887783 ((_ is Union!21209) (regTwo!42930 (reg!21538 r!14100)))) b!7888039))

(declare-fun b!7888040 () Bool)

(declare-fun e!4657110 () Bool)

(declare-fun tp!2346618 () Bool)

(assert (=> b!7888040 (= e!4657110 (and tp_is_empty!52817 tp!2346618))))

(assert (=> b!7887740 (= tp!2346485 e!4657110)))

(assert (= (and b!7887740 ((_ is Cons!73942) (t!388801 (t!388801 (_2!38331 cut!2))))) b!7888040))

(declare-fun e!4657111 () Bool)

(assert (=> b!7887784 (= tp!2346523 e!4657111)))

(declare-fun b!7888044 () Bool)

(declare-fun tp!2346620 () Bool)

(declare-fun tp!2346621 () Bool)

(assert (=> b!7888044 (= e!4657111 (and tp!2346620 tp!2346621))))

(declare-fun b!7888043 () Bool)

(declare-fun tp!2346622 () Bool)

(assert (=> b!7888043 (= e!4657111 tp!2346622)))

(declare-fun b!7888042 () Bool)

(declare-fun tp!2346623 () Bool)

(declare-fun tp!2346619 () Bool)

(assert (=> b!7888042 (= e!4657111 (and tp!2346623 tp!2346619))))

(declare-fun b!7888041 () Bool)

(assert (=> b!7888041 (= e!4657111 tp_is_empty!52817)))

(assert (= (and b!7887784 ((_ is ElementMatch!21209) (reg!21538 (reg!21538 r!14100)))) b!7888041))

(assert (= (and b!7887784 ((_ is Concat!30054) (reg!21538 (reg!21538 r!14100)))) b!7888042))

(assert (= (and b!7887784 ((_ is Star!21209) (reg!21538 (reg!21538 r!14100)))) b!7888043))

(assert (= (and b!7887784 ((_ is Union!21209) (reg!21538 (reg!21538 r!14100)))) b!7888044))

(declare-fun e!4657112 () Bool)

(assert (=> b!7887766 (= tp!2346506 e!4657112)))

(declare-fun b!7888048 () Bool)

(declare-fun tp!2346625 () Bool)

(declare-fun tp!2346626 () Bool)

(assert (=> b!7888048 (= e!4657112 (and tp!2346625 tp!2346626))))

(declare-fun b!7888047 () Bool)

(declare-fun tp!2346627 () Bool)

(assert (=> b!7888047 (= e!4657112 tp!2346627)))

(declare-fun b!7888046 () Bool)

(declare-fun tp!2346628 () Bool)

(declare-fun tp!2346624 () Bool)

(assert (=> b!7888046 (= e!4657112 (and tp!2346628 tp!2346624))))

(declare-fun b!7888045 () Bool)

(assert (=> b!7888045 (= e!4657112 tp_is_empty!52817)))

(assert (= (and b!7887766 ((_ is ElementMatch!21209) (regOne!42930 (regTwo!42930 r!14100)))) b!7888045))

(assert (= (and b!7887766 ((_ is Concat!30054) (regOne!42930 (regTwo!42930 r!14100)))) b!7888046))

(assert (= (and b!7887766 ((_ is Star!21209) (regOne!42930 (regTwo!42930 r!14100)))) b!7888047))

(assert (= (and b!7887766 ((_ is Union!21209) (regOne!42930 (regTwo!42930 r!14100)))) b!7888048))

(declare-fun e!4657113 () Bool)

(assert (=> b!7887766 (= tp!2346502 e!4657113)))

(declare-fun b!7888052 () Bool)

(declare-fun tp!2346630 () Bool)

(declare-fun tp!2346631 () Bool)

(assert (=> b!7888052 (= e!4657113 (and tp!2346630 tp!2346631))))

(declare-fun b!7888051 () Bool)

(declare-fun tp!2346632 () Bool)

(assert (=> b!7888051 (= e!4657113 tp!2346632)))

(declare-fun b!7888050 () Bool)

(declare-fun tp!2346633 () Bool)

(declare-fun tp!2346629 () Bool)

(assert (=> b!7888050 (= e!4657113 (and tp!2346633 tp!2346629))))

(declare-fun b!7888049 () Bool)

(assert (=> b!7888049 (= e!4657113 tp_is_empty!52817)))

(assert (= (and b!7887766 ((_ is ElementMatch!21209) (regTwo!42930 (regTwo!42930 r!14100)))) b!7888049))

(assert (= (and b!7887766 ((_ is Concat!30054) (regTwo!42930 (regTwo!42930 r!14100)))) b!7888050))

(assert (= (and b!7887766 ((_ is Star!21209) (regTwo!42930 (regTwo!42930 r!14100)))) b!7888051))

(assert (= (and b!7887766 ((_ is Union!21209) (regTwo!42930 (regTwo!42930 r!14100)))) b!7888052))

(declare-fun e!4657114 () Bool)

(assert (=> b!7887771 (= tp!2346510 e!4657114)))

(declare-fun b!7888056 () Bool)

(declare-fun tp!2346635 () Bool)

(declare-fun tp!2346636 () Bool)

(assert (=> b!7888056 (= e!4657114 (and tp!2346635 tp!2346636))))

(declare-fun b!7888055 () Bool)

(declare-fun tp!2346637 () Bool)

(assert (=> b!7888055 (= e!4657114 tp!2346637)))

(declare-fun b!7888054 () Bool)

(declare-fun tp!2346638 () Bool)

(declare-fun tp!2346634 () Bool)

(assert (=> b!7888054 (= e!4657114 (and tp!2346638 tp!2346634))))

(declare-fun b!7888053 () Bool)

(assert (=> b!7888053 (= e!4657114 tp_is_empty!52817)))

(assert (= (and b!7887771 ((_ is ElementMatch!21209) (reg!21538 (regOne!42931 r!14100)))) b!7888053))

(assert (= (and b!7887771 ((_ is Concat!30054) (reg!21538 (regOne!42931 r!14100)))) b!7888054))

(assert (= (and b!7887771 ((_ is Star!21209) (reg!21538 (regOne!42931 r!14100)))) b!7888055))

(assert (= (and b!7887771 ((_ is Union!21209) (reg!21538 (regOne!42931 r!14100)))) b!7888056))

(declare-fun b!7888057 () Bool)

(declare-fun e!4657115 () Bool)

(declare-fun tp!2346639 () Bool)

(assert (=> b!7888057 (= e!4657115 (and tp_is_empty!52817 tp!2346639))))

(assert (=> b!7887781 (= tp!2346519 e!4657115)))

(assert (= (and b!7887781 ((_ is Cons!73942) (t!388801 (t!388801 (_1!38331 cut!2))))) b!7888057))

(declare-fun e!4657116 () Bool)

(assert (=> b!7887770 (= tp!2346511 e!4657116)))

(declare-fun b!7888061 () Bool)

(declare-fun tp!2346641 () Bool)

(declare-fun tp!2346642 () Bool)

(assert (=> b!7888061 (= e!4657116 (and tp!2346641 tp!2346642))))

(declare-fun b!7888060 () Bool)

(declare-fun tp!2346643 () Bool)

(assert (=> b!7888060 (= e!4657116 tp!2346643)))

(declare-fun b!7888059 () Bool)

(declare-fun tp!2346644 () Bool)

(declare-fun tp!2346640 () Bool)

(assert (=> b!7888059 (= e!4657116 (and tp!2346644 tp!2346640))))

(declare-fun b!7888058 () Bool)

(assert (=> b!7888058 (= e!4657116 tp_is_empty!52817)))

(assert (= (and b!7887770 ((_ is ElementMatch!21209) (regOne!42930 (regOne!42931 r!14100)))) b!7888058))

(assert (= (and b!7887770 ((_ is Concat!30054) (regOne!42930 (regOne!42931 r!14100)))) b!7888059))

(assert (= (and b!7887770 ((_ is Star!21209) (regOne!42930 (regOne!42931 r!14100)))) b!7888060))

(assert (= (and b!7887770 ((_ is Union!21209) (regOne!42930 (regOne!42931 r!14100)))) b!7888061))

(declare-fun e!4657117 () Bool)

(assert (=> b!7887770 (= tp!2346507 e!4657117)))

(declare-fun b!7888065 () Bool)

(declare-fun tp!2346646 () Bool)

(declare-fun tp!2346647 () Bool)

(assert (=> b!7888065 (= e!4657117 (and tp!2346646 tp!2346647))))

(declare-fun b!7888064 () Bool)

(declare-fun tp!2346648 () Bool)

(assert (=> b!7888064 (= e!4657117 tp!2346648)))

(declare-fun b!7888063 () Bool)

(declare-fun tp!2346649 () Bool)

(declare-fun tp!2346645 () Bool)

(assert (=> b!7888063 (= e!4657117 (and tp!2346649 tp!2346645))))

(declare-fun b!7888062 () Bool)

(assert (=> b!7888062 (= e!4657117 tp_is_empty!52817)))

(assert (= (and b!7887770 ((_ is ElementMatch!21209) (regTwo!42930 (regOne!42931 r!14100)))) b!7888062))

(assert (= (and b!7887770 ((_ is Concat!30054) (regTwo!42930 (regOne!42931 r!14100)))) b!7888063))

(assert (= (and b!7887770 ((_ is Star!21209) (regTwo!42930 (regOne!42931 r!14100)))) b!7888064))

(assert (= (and b!7887770 ((_ is Union!21209) (regTwo!42930 (regOne!42931 r!14100)))) b!7888065))

(declare-fun e!4657118 () Bool)

(assert (=> b!7887785 (= tp!2346521 e!4657118)))

(declare-fun b!7888069 () Bool)

(declare-fun tp!2346651 () Bool)

(declare-fun tp!2346652 () Bool)

(assert (=> b!7888069 (= e!4657118 (and tp!2346651 tp!2346652))))

(declare-fun b!7888068 () Bool)

(declare-fun tp!2346653 () Bool)

(assert (=> b!7888068 (= e!4657118 tp!2346653)))

(declare-fun b!7888067 () Bool)

(declare-fun tp!2346654 () Bool)

(declare-fun tp!2346650 () Bool)

(assert (=> b!7888067 (= e!4657118 (and tp!2346654 tp!2346650))))

(declare-fun b!7888066 () Bool)

(assert (=> b!7888066 (= e!4657118 tp_is_empty!52817)))

(assert (= (and b!7887785 ((_ is ElementMatch!21209) (regOne!42931 (reg!21538 r!14100)))) b!7888066))

(assert (= (and b!7887785 ((_ is Concat!30054) (regOne!42931 (reg!21538 r!14100)))) b!7888067))

(assert (= (and b!7887785 ((_ is Star!21209) (regOne!42931 (reg!21538 r!14100)))) b!7888068))

(assert (= (and b!7887785 ((_ is Union!21209) (regOne!42931 (reg!21538 r!14100)))) b!7888069))

(declare-fun e!4657119 () Bool)

(assert (=> b!7887785 (= tp!2346522 e!4657119)))

(declare-fun b!7888073 () Bool)

(declare-fun tp!2346656 () Bool)

(declare-fun tp!2346657 () Bool)

(assert (=> b!7888073 (= e!4657119 (and tp!2346656 tp!2346657))))

(declare-fun b!7888072 () Bool)

(declare-fun tp!2346658 () Bool)

(assert (=> b!7888072 (= e!4657119 tp!2346658)))

(declare-fun b!7888071 () Bool)

(declare-fun tp!2346659 () Bool)

(declare-fun tp!2346655 () Bool)

(assert (=> b!7888071 (= e!4657119 (and tp!2346659 tp!2346655))))

(declare-fun b!7888070 () Bool)

(assert (=> b!7888070 (= e!4657119 tp_is_empty!52817)))

(assert (= (and b!7887785 ((_ is ElementMatch!21209) (regTwo!42931 (reg!21538 r!14100)))) b!7888070))

(assert (= (and b!7887785 ((_ is Concat!30054) (regTwo!42931 (reg!21538 r!14100)))) b!7888071))

(assert (= (and b!7887785 ((_ is Star!21209) (regTwo!42931 (reg!21538 r!14100)))) b!7888072))

(assert (= (and b!7887785 ((_ is Union!21209) (regTwo!42931 (reg!21538 r!14100)))) b!7888073))

(declare-fun e!4657120 () Bool)

(assert (=> b!7887772 (= tp!2346508 e!4657120)))

(declare-fun b!7888077 () Bool)

(declare-fun tp!2346661 () Bool)

(declare-fun tp!2346662 () Bool)

(assert (=> b!7888077 (= e!4657120 (and tp!2346661 tp!2346662))))

(declare-fun b!7888076 () Bool)

(declare-fun tp!2346663 () Bool)

(assert (=> b!7888076 (= e!4657120 tp!2346663)))

(declare-fun b!7888075 () Bool)

(declare-fun tp!2346664 () Bool)

(declare-fun tp!2346660 () Bool)

(assert (=> b!7888075 (= e!4657120 (and tp!2346664 tp!2346660))))

(declare-fun b!7888074 () Bool)

(assert (=> b!7888074 (= e!4657120 tp_is_empty!52817)))

(assert (= (and b!7887772 ((_ is ElementMatch!21209) (regOne!42931 (regOne!42931 r!14100)))) b!7888074))

(assert (= (and b!7887772 ((_ is Concat!30054) (regOne!42931 (regOne!42931 r!14100)))) b!7888075))

(assert (= (and b!7887772 ((_ is Star!21209) (regOne!42931 (regOne!42931 r!14100)))) b!7888076))

(assert (= (and b!7887772 ((_ is Union!21209) (regOne!42931 (regOne!42931 r!14100)))) b!7888077))

(declare-fun e!4657121 () Bool)

(assert (=> b!7887772 (= tp!2346509 e!4657121)))

(declare-fun b!7888081 () Bool)

(declare-fun tp!2346666 () Bool)

(declare-fun tp!2346667 () Bool)

(assert (=> b!7888081 (= e!4657121 (and tp!2346666 tp!2346667))))

(declare-fun b!7888080 () Bool)

(declare-fun tp!2346668 () Bool)

(assert (=> b!7888080 (= e!4657121 tp!2346668)))

(declare-fun b!7888079 () Bool)

(declare-fun tp!2346669 () Bool)

(declare-fun tp!2346665 () Bool)

(assert (=> b!7888079 (= e!4657121 (and tp!2346669 tp!2346665))))

(declare-fun b!7888078 () Bool)

(assert (=> b!7888078 (= e!4657121 tp_is_empty!52817)))

(assert (= (and b!7887772 ((_ is ElementMatch!21209) (regTwo!42931 (regOne!42931 r!14100)))) b!7888078))

(assert (= (and b!7887772 ((_ is Concat!30054) (regTwo!42931 (regOne!42931 r!14100)))) b!7888079))

(assert (= (and b!7887772 ((_ is Star!21209) (regTwo!42931 (regOne!42931 r!14100)))) b!7888080))

(assert (= (and b!7887772 ((_ is Union!21209) (regTwo!42931 (regOne!42931 r!14100)))) b!7888081))

(declare-fun b!7888082 () Bool)

(declare-fun e!4657122 () Bool)

(declare-fun tp!2346670 () Bool)

(assert (=> b!7888082 (= e!4657122 (and tp_is_empty!52817 tp!2346670))))

(assert (=> b!7887741 (= tp!2346486 e!4657122)))

(assert (= (and b!7887741 ((_ is Cons!73942) (t!388801 (t!388801 s!9586)))) b!7888082))

(declare-fun e!4657123 () Bool)

(assert (=> b!7887763 (= tp!2346500 e!4657123)))

(declare-fun b!7888086 () Bool)

(declare-fun tp!2346672 () Bool)

(declare-fun tp!2346673 () Bool)

(assert (=> b!7888086 (= e!4657123 (and tp!2346672 tp!2346673))))

(declare-fun b!7888085 () Bool)

(declare-fun tp!2346674 () Bool)

(assert (=> b!7888085 (= e!4657123 tp!2346674)))

(declare-fun b!7888084 () Bool)

(declare-fun tp!2346675 () Bool)

(declare-fun tp!2346671 () Bool)

(assert (=> b!7888084 (= e!4657123 (and tp!2346675 tp!2346671))))

(declare-fun b!7888083 () Bool)

(assert (=> b!7888083 (= e!4657123 tp_is_empty!52817)))

(assert (= (and b!7887763 ((_ is ElementMatch!21209) (reg!21538 (regOne!42930 r!14100)))) b!7888083))

(assert (= (and b!7887763 ((_ is Concat!30054) (reg!21538 (regOne!42930 r!14100)))) b!7888084))

(assert (= (and b!7887763 ((_ is Star!21209) (reg!21538 (regOne!42930 r!14100)))) b!7888085))

(assert (= (and b!7887763 ((_ is Union!21209) (reg!21538 (regOne!42930 r!14100)))) b!7888086))

(declare-fun e!4657124 () Bool)

(assert (=> b!7887762 (= tp!2346501 e!4657124)))

(declare-fun b!7888090 () Bool)

(declare-fun tp!2346677 () Bool)

(declare-fun tp!2346678 () Bool)

(assert (=> b!7888090 (= e!4657124 (and tp!2346677 tp!2346678))))

(declare-fun b!7888089 () Bool)

(declare-fun tp!2346679 () Bool)

(assert (=> b!7888089 (= e!4657124 tp!2346679)))

(declare-fun b!7888088 () Bool)

(declare-fun tp!2346680 () Bool)

(declare-fun tp!2346676 () Bool)

(assert (=> b!7888088 (= e!4657124 (and tp!2346680 tp!2346676))))

(declare-fun b!7888087 () Bool)

(assert (=> b!7888087 (= e!4657124 tp_is_empty!52817)))

(assert (= (and b!7887762 ((_ is ElementMatch!21209) (regOne!42930 (regOne!42930 r!14100)))) b!7888087))

(assert (= (and b!7887762 ((_ is Concat!30054) (regOne!42930 (regOne!42930 r!14100)))) b!7888088))

(assert (= (and b!7887762 ((_ is Star!21209) (regOne!42930 (regOne!42930 r!14100)))) b!7888089))

(assert (= (and b!7887762 ((_ is Union!21209) (regOne!42930 (regOne!42930 r!14100)))) b!7888090))

(declare-fun e!4657125 () Bool)

(assert (=> b!7887762 (= tp!2346497 e!4657125)))

(declare-fun b!7888094 () Bool)

(declare-fun tp!2346682 () Bool)

(declare-fun tp!2346683 () Bool)

(assert (=> b!7888094 (= e!4657125 (and tp!2346682 tp!2346683))))

(declare-fun b!7888093 () Bool)

(declare-fun tp!2346684 () Bool)

(assert (=> b!7888093 (= e!4657125 tp!2346684)))

(declare-fun b!7888092 () Bool)

(declare-fun tp!2346685 () Bool)

(declare-fun tp!2346681 () Bool)

(assert (=> b!7888092 (= e!4657125 (and tp!2346685 tp!2346681))))

(declare-fun b!7888091 () Bool)

(assert (=> b!7888091 (= e!4657125 tp_is_empty!52817)))

(assert (= (and b!7887762 ((_ is ElementMatch!21209) (regTwo!42930 (regOne!42930 r!14100)))) b!7888091))

(assert (= (and b!7887762 ((_ is Concat!30054) (regTwo!42930 (regOne!42930 r!14100)))) b!7888092))

(assert (= (and b!7887762 ((_ is Star!21209) (regTwo!42930 (regOne!42930 r!14100)))) b!7888093))

(assert (= (and b!7887762 ((_ is Union!21209) (regTwo!42930 (regOne!42930 r!14100)))) b!7888094))

(declare-fun e!4657126 () Bool)

(assert (=> b!7887767 (= tp!2346505 e!4657126)))

(declare-fun b!7888098 () Bool)

(declare-fun tp!2346687 () Bool)

(declare-fun tp!2346688 () Bool)

(assert (=> b!7888098 (= e!4657126 (and tp!2346687 tp!2346688))))

(declare-fun b!7888097 () Bool)

(declare-fun tp!2346689 () Bool)

(assert (=> b!7888097 (= e!4657126 tp!2346689)))

(declare-fun b!7888096 () Bool)

(declare-fun tp!2346690 () Bool)

(declare-fun tp!2346686 () Bool)

(assert (=> b!7888096 (= e!4657126 (and tp!2346690 tp!2346686))))

(declare-fun b!7888095 () Bool)

(assert (=> b!7888095 (= e!4657126 tp_is_empty!52817)))

(assert (= (and b!7887767 ((_ is ElementMatch!21209) (reg!21538 (regTwo!42930 r!14100)))) b!7888095))

(assert (= (and b!7887767 ((_ is Concat!30054) (reg!21538 (regTwo!42930 r!14100)))) b!7888096))

(assert (= (and b!7887767 ((_ is Star!21209) (reg!21538 (regTwo!42930 r!14100)))) b!7888097))

(assert (= (and b!7887767 ((_ is Union!21209) (reg!21538 (regTwo!42930 r!14100)))) b!7888098))

(check-sat (not b!7888079) (not b!7888007) (not b!7888089) (not bm!731843) (not b!7888069) (not b!7888006) (not b!7888039) (not bm!731859) (not b!7888077) (not b!7888029) (not b!7888034) (not bm!731807) (not b!7888011) (not b!7888013) (not bm!731840) (not bm!731820) (not b!7888059) (not b!7888063) (not b!7888001) (not b!7888055) (not bm!731806) (not b!7888054) (not b!7887837) (not bm!731838) (not d!2356611) (not bm!731802) (not b!7888085) (not b!7888051) (not b!7887839) (not b!7887841) (not b!7887999) (not b!7888097) (not bm!731812) (not bm!731856) (not b!7888092) (not bm!731828) (not bm!731841) (not bm!731821) (not b!7888019) (not bm!731857) (not b!7887951) (not b!7888067) (not b!7888056) (not bm!731817) (not b!7888090) (not b!7888047) (not b!7887998) (not b!7888046) (not b!7888014) (not b!7888068) (not b!7888018) (not b!7887820) (not b!7888088) (not d!2356625) (not bm!731845) (not b!7888022) (not b!7888052) (not b!7888005) (not bm!731815) (not b!7888023) (not bm!731833) (not bm!731827) (not b!7888080) (not bm!731831) (not b!7888010) (not b!7888082) (not b!7888002) (not b!7888061) (not b!7888076) (not b!7888075) (not b!7887977) (not b!7888043) (not b!7888060) (not bm!731813) (not b!7888064) (not b!7888072) (not b!7888071) (not b!7888025) (not bm!731850) (not bm!731829) (not bm!731804) (not b!7888031) (not b!7888065) (not b!7888048) (not b!7887843) (not b!7888027) (not bm!731808) (not b!7887950) (not b!7888084) (not b!7888042) (not b!7887997) (not bm!731835) (not bm!731824) (not b!7888030) (not b!7888094) (not bm!731854) (not bm!731847) (not bm!731836) (not b!7888073) (not bm!731858) (not bm!731805) (not b!7888057) (not b!7888017) (not bm!731842) (not b!7888035) (not bm!731814) (not b!7888015) (not b!7888038) (not b!7887830) (not bm!731848) (not bm!731810) (not b!7888009) (not b!7888044) (not b!7887822) (not bm!731822) (not b!7888050) (not b!7888096) (not bm!731862) (not bm!731819) (not b!7888040) (not b!7888093) (not b!7888021) (not b!7888037) (not b!7888026) (not b!7888086) tp_is_empty!52817 (not bm!731849) (not bm!731826) (not bm!731834) (not b!7888003) (not bm!731852) (not b!7887845) (not b!7888098) (not b!7888033) (not b!7888081) (not bm!731860))
(check-sat)
