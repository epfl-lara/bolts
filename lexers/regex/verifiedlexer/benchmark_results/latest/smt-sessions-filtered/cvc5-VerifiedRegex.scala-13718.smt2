; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733506 () Bool)

(assert start!733506)

(declare-fun b!7612708 () Bool)

(declare-fun e!4527501 () Bool)

(declare-fun tp!2222004 () Bool)

(assert (=> b!7612708 (= e!4527501 tp!2222004)))

(declare-fun b!7612709 () Bool)

(declare-fun e!4527500 () Bool)

(declare-fun e!4527502 () Bool)

(assert (=> b!7612709 (= e!4527500 (not e!4527502))))

(declare-fun res!3047700 () Bool)

(assert (=> b!7612709 (=> res!3047700 e!4527502)))

(declare-datatypes ((C!40786 0))(
  ( (C!40787 (val!30833 Int)) )
))
(declare-datatypes ((Regex!20230 0))(
  ( (ElementMatch!20230 (c!1403515 C!40786)) (Concat!29075 (regOne!40972 Regex!20230) (regTwo!40972 Regex!20230)) (EmptyExpr!20230) (Star!20230 (reg!20559 Regex!20230)) (EmptyLang!20230) (Union!20230 (regOne!40973 Regex!20230) (regTwo!40973 Regex!20230)) )
))
(declare-fun r!19218 () Regex!20230)

(declare-fun validRegex!10652 (Regex!20230) Bool)

(assert (=> b!7612709 (= res!3047700 (not (validRegex!10652 (regTwo!40972 r!19218))))))

(declare-fun lostCause!1902 (Regex!20230) Bool)

(assert (=> b!7612709 (not (lostCause!1902 (regOne!40972 r!19218)))))

(declare-datatypes ((Unit!167280 0))(
  ( (Unit!167281) )
))
(declare-fun lt!2655043 () Unit!167280)

(declare-fun lemmaNullableThenNotLostCause!113 (Regex!20230) Unit!167280)

(assert (=> b!7612709 (= lt!2655043 (lemmaNullableThenNotLostCause!113 (regOne!40972 r!19218)))))

(declare-fun b!7612710 () Bool)

(declare-fun res!3047701 () Bool)

(assert (=> b!7612710 (=> (not res!3047701) (not e!4527500))))

(declare-fun nullable!8851 (Regex!20230) Bool)

(assert (=> b!7612710 (= res!3047701 (nullable!8851 r!19218))))

(declare-fun b!7612711 () Bool)

(declare-fun tp_is_empty!50815 () Bool)

(assert (=> b!7612711 (= e!4527501 tp_is_empty!50815)))

(declare-fun b!7612712 () Bool)

(declare-fun res!3047703 () Bool)

(assert (=> b!7612712 (=> (not res!3047703) (not e!4527500))))

(assert (=> b!7612712 (= res!3047703 (and (not (is-ElementMatch!20230 r!19218)) (not (is-Star!20230 r!19218)) (not (is-Union!20230 r!19218)) (is-Concat!29075 r!19218)))))

(declare-fun b!7612713 () Bool)

(declare-fun regexDepth!476 (Regex!20230) Int)

(assert (=> b!7612713 (= e!4527502 (< (regexDepth!476 (regTwo!40972 r!19218)) (regexDepth!476 r!19218)))))

(declare-fun b!7612714 () Bool)

(declare-fun tp!2222002 () Bool)

(declare-fun tp!2222000 () Bool)

(assert (=> b!7612714 (= e!4527501 (and tp!2222002 tp!2222000))))

(declare-fun b!7612715 () Bool)

(declare-fun res!3047702 () Bool)

(assert (=> b!7612715 (=> res!3047702 e!4527502)))

(assert (=> b!7612715 (= res!3047702 (not (nullable!8851 (regTwo!40972 r!19218))))))

(declare-fun b!7612716 () Bool)

(declare-fun tp!2222003 () Bool)

(declare-fun tp!2222001 () Bool)

(assert (=> b!7612716 (= e!4527501 (and tp!2222003 tp!2222001))))

(declare-fun res!3047699 () Bool)

(assert (=> start!733506 (=> (not res!3047699) (not e!4527500))))

(assert (=> start!733506 (= res!3047699 (validRegex!10652 r!19218))))

(assert (=> start!733506 e!4527500))

(assert (=> start!733506 e!4527501))

(assert (= (and start!733506 res!3047699) b!7612710))

(assert (= (and b!7612710 res!3047701) b!7612712))

(assert (= (and b!7612712 res!3047703) b!7612709))

(assert (= (and b!7612709 (not res!3047700)) b!7612715))

(assert (= (and b!7612715 (not res!3047702)) b!7612713))

(assert (= (and start!733506 (is-ElementMatch!20230 r!19218)) b!7612711))

(assert (= (and start!733506 (is-Concat!29075 r!19218)) b!7612716))

(assert (= (and start!733506 (is-Star!20230 r!19218)) b!7612708))

(assert (= (and start!733506 (is-Union!20230 r!19218)) b!7612714))

(declare-fun m!8148626 () Bool)

(assert (=> start!733506 m!8148626))

(declare-fun m!8148628 () Bool)

(assert (=> b!7612713 m!8148628))

(declare-fun m!8148630 () Bool)

(assert (=> b!7612713 m!8148630))

(declare-fun m!8148632 () Bool)

(assert (=> b!7612715 m!8148632))

(declare-fun m!8148634 () Bool)

(assert (=> b!7612709 m!8148634))

(declare-fun m!8148636 () Bool)

(assert (=> b!7612709 m!8148636))

(declare-fun m!8148638 () Bool)

(assert (=> b!7612709 m!8148638))

(declare-fun m!8148640 () Bool)

(assert (=> b!7612710 m!8148640))

(push 1)

(assert (not b!7612708))

(assert (not b!7612709))

(assert (not b!7612715))

(assert tp_is_empty!50815)

(assert (not b!7612716))

(assert (not b!7612713))

(assert (not b!7612714))

(assert (not start!733506))

(assert (not b!7612710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7612762 () Bool)

(declare-fun e!4527531 () Bool)

(declare-fun call!699293 () Bool)

(assert (=> b!7612762 (= e!4527531 call!699293)))

(declare-fun b!7612763 () Bool)

(declare-fun e!4527532 () Bool)

(declare-fun e!4527526 () Bool)

(assert (=> b!7612763 (= e!4527532 e!4527526)))

(declare-fun res!3047729 () Bool)

(assert (=> b!7612763 (= res!3047729 (not (nullable!8851 (reg!20559 (regTwo!40972 r!19218)))))))

(assert (=> b!7612763 (=> (not res!3047729) (not e!4527526))))

(declare-fun b!7612764 () Bool)

(declare-fun e!4527530 () Bool)

(assert (=> b!7612764 (= e!4527532 e!4527530)))

(declare-fun c!1403521 () Bool)

(assert (=> b!7612764 (= c!1403521 (is-Union!20230 (regTwo!40972 r!19218)))))

(declare-fun bm!699288 () Bool)

(declare-fun call!699294 () Bool)

(assert (=> bm!699288 (= call!699294 (validRegex!10652 (ite c!1403521 (regOne!40973 (regTwo!40972 r!19218)) (regOne!40972 (regTwo!40972 r!19218)))))))

(declare-fun b!7612766 () Bool)

(declare-fun e!4527527 () Bool)

(assert (=> b!7612766 (= e!4527527 call!699293)))

(declare-fun c!1403522 () Bool)

(declare-fun call!699295 () Bool)

(declare-fun bm!699289 () Bool)

(assert (=> bm!699289 (= call!699295 (validRegex!10652 (ite c!1403522 (reg!20559 (regTwo!40972 r!19218)) (ite c!1403521 (regTwo!40973 (regTwo!40972 r!19218)) (regTwo!40972 (regTwo!40972 r!19218))))))))

(declare-fun b!7612767 () Bool)

(declare-fun res!3047730 () Bool)

(assert (=> b!7612767 (=> (not res!3047730) (not e!4527531))))

(assert (=> b!7612767 (= res!3047730 call!699294)))

(assert (=> b!7612767 (= e!4527530 e!4527531)))

(declare-fun b!7612768 () Bool)

(declare-fun e!4527528 () Bool)

(assert (=> b!7612768 (= e!4527528 e!4527532)))

(assert (=> b!7612768 (= c!1403522 (is-Star!20230 (regTwo!40972 r!19218)))))

(declare-fun bm!699290 () Bool)

(assert (=> bm!699290 (= call!699293 call!699295)))

(declare-fun b!7612765 () Bool)

(assert (=> b!7612765 (= e!4527526 call!699295)))

(declare-fun d!2322475 () Bool)

(declare-fun res!3047733 () Bool)

(assert (=> d!2322475 (=> res!3047733 e!4527528)))

(assert (=> d!2322475 (= res!3047733 (is-ElementMatch!20230 (regTwo!40972 r!19218)))))

(assert (=> d!2322475 (= (validRegex!10652 (regTwo!40972 r!19218)) e!4527528)))

(declare-fun b!7612769 () Bool)

(declare-fun e!4527529 () Bool)

(assert (=> b!7612769 (= e!4527529 e!4527527)))

(declare-fun res!3047731 () Bool)

(assert (=> b!7612769 (=> (not res!3047731) (not e!4527527))))

(assert (=> b!7612769 (= res!3047731 call!699294)))

(declare-fun b!7612770 () Bool)

(declare-fun res!3047732 () Bool)

(assert (=> b!7612770 (=> res!3047732 e!4527529)))

(assert (=> b!7612770 (= res!3047732 (not (is-Concat!29075 (regTwo!40972 r!19218))))))

(assert (=> b!7612770 (= e!4527530 e!4527529)))

(assert (= (and d!2322475 (not res!3047733)) b!7612768))

(assert (= (and b!7612768 c!1403522) b!7612763))

(assert (= (and b!7612768 (not c!1403522)) b!7612764))

(assert (= (and b!7612763 res!3047729) b!7612765))

(assert (= (and b!7612764 c!1403521) b!7612767))

(assert (= (and b!7612764 (not c!1403521)) b!7612770))

(assert (= (and b!7612767 res!3047730) b!7612762))

(assert (= (and b!7612770 (not res!3047732)) b!7612769))

(assert (= (and b!7612769 res!3047731) b!7612766))

(assert (= (or b!7612767 b!7612769) bm!699288))

(assert (= (or b!7612762 b!7612766) bm!699290))

(assert (= (or b!7612765 bm!699290) bm!699289))

(declare-fun m!8148660 () Bool)

(assert (=> b!7612763 m!8148660))

(declare-fun m!8148662 () Bool)

(assert (=> bm!699288 m!8148662))

(declare-fun m!8148664 () Bool)

(assert (=> bm!699289 m!8148664))

(assert (=> b!7612709 d!2322475))

(declare-fun d!2322481 () Bool)

(declare-fun lostCauseFct!549 (Regex!20230) Bool)

(assert (=> d!2322481 (= (lostCause!1902 (regOne!40972 r!19218)) (lostCauseFct!549 (regOne!40972 r!19218)))))

(declare-fun bs!1942908 () Bool)

(assert (= bs!1942908 d!2322481))

(declare-fun m!8148666 () Bool)

(assert (=> bs!1942908 m!8148666))

(assert (=> b!7612709 d!2322481))

(declare-fun d!2322483 () Bool)

(assert (=> d!2322483 (not (lostCause!1902 (regOne!40972 r!19218)))))

(declare-fun lt!2655049 () Unit!167280)

(declare-fun choose!58746 (Regex!20230) Unit!167280)

(assert (=> d!2322483 (= lt!2655049 (choose!58746 (regOne!40972 r!19218)))))

(assert (=> d!2322483 (validRegex!10652 (regOne!40972 r!19218))))

(assert (=> d!2322483 (= (lemmaNullableThenNotLostCause!113 (regOne!40972 r!19218)) lt!2655049)))

(declare-fun bs!1942909 () Bool)

(assert (= bs!1942909 d!2322483))

(assert (=> bs!1942909 m!8148636))

(declare-fun m!8148668 () Bool)

(assert (=> bs!1942909 m!8148668))

(declare-fun m!8148670 () Bool)

(assert (=> bs!1942909 m!8148670))

(assert (=> b!7612709 d!2322483))

(declare-fun b!7612775 () Bool)

(declare-fun e!4527540 () Bool)

(declare-fun call!699296 () Bool)

(assert (=> b!7612775 (= e!4527540 call!699296)))

(declare-fun b!7612776 () Bool)

(declare-fun e!4527541 () Bool)

(declare-fun e!4527535 () Bool)

(assert (=> b!7612776 (= e!4527541 e!4527535)))

(declare-fun res!3047736 () Bool)

(assert (=> b!7612776 (= res!3047736 (not (nullable!8851 (reg!20559 r!19218))))))

(assert (=> b!7612776 (=> (not res!3047736) (not e!4527535))))

(declare-fun b!7612777 () Bool)

(declare-fun e!4527539 () Bool)

(assert (=> b!7612777 (= e!4527541 e!4527539)))

(declare-fun c!1403523 () Bool)

(assert (=> b!7612777 (= c!1403523 (is-Union!20230 r!19218))))

(declare-fun bm!699291 () Bool)

(declare-fun call!699297 () Bool)

(assert (=> bm!699291 (= call!699297 (validRegex!10652 (ite c!1403523 (regOne!40973 r!19218) (regOne!40972 r!19218))))))

(declare-fun b!7612779 () Bool)

(declare-fun e!4527536 () Bool)

(assert (=> b!7612779 (= e!4527536 call!699296)))

(declare-fun call!699298 () Bool)

(declare-fun c!1403524 () Bool)

(declare-fun bm!699292 () Bool)

(assert (=> bm!699292 (= call!699298 (validRegex!10652 (ite c!1403524 (reg!20559 r!19218) (ite c!1403523 (regTwo!40973 r!19218) (regTwo!40972 r!19218)))))))

(declare-fun b!7612780 () Bool)

(declare-fun res!3047737 () Bool)

(assert (=> b!7612780 (=> (not res!3047737) (not e!4527540))))

(assert (=> b!7612780 (= res!3047737 call!699297)))

(assert (=> b!7612780 (= e!4527539 e!4527540)))

(declare-fun b!7612781 () Bool)

(declare-fun e!4527537 () Bool)

(assert (=> b!7612781 (= e!4527537 e!4527541)))

(assert (=> b!7612781 (= c!1403524 (is-Star!20230 r!19218))))

(declare-fun bm!699293 () Bool)

(assert (=> bm!699293 (= call!699296 call!699298)))

(declare-fun b!7612778 () Bool)

(assert (=> b!7612778 (= e!4527535 call!699298)))

(declare-fun d!2322485 () Bool)

(declare-fun res!3047740 () Bool)

(assert (=> d!2322485 (=> res!3047740 e!4527537)))

(assert (=> d!2322485 (= res!3047740 (is-ElementMatch!20230 r!19218))))

(assert (=> d!2322485 (= (validRegex!10652 r!19218) e!4527537)))

(declare-fun b!7612782 () Bool)

(declare-fun e!4527538 () Bool)

(assert (=> b!7612782 (= e!4527538 e!4527536)))

(declare-fun res!3047738 () Bool)

(assert (=> b!7612782 (=> (not res!3047738) (not e!4527536))))

(assert (=> b!7612782 (= res!3047738 call!699297)))

(declare-fun b!7612783 () Bool)

(declare-fun res!3047739 () Bool)

(assert (=> b!7612783 (=> res!3047739 e!4527538)))

(assert (=> b!7612783 (= res!3047739 (not (is-Concat!29075 r!19218)))))

(assert (=> b!7612783 (= e!4527539 e!4527538)))

(assert (= (and d!2322485 (not res!3047740)) b!7612781))

(assert (= (and b!7612781 c!1403524) b!7612776))

(assert (= (and b!7612781 (not c!1403524)) b!7612777))

(assert (= (and b!7612776 res!3047736) b!7612778))

(assert (= (and b!7612777 c!1403523) b!7612780))

(assert (= (and b!7612777 (not c!1403523)) b!7612783))

(assert (= (and b!7612780 res!3047737) b!7612775))

(assert (= (and b!7612783 (not res!3047739)) b!7612782))

(assert (= (and b!7612782 res!3047738) b!7612779))

(assert (= (or b!7612780 b!7612782) bm!699291))

(assert (= (or b!7612775 b!7612779) bm!699293))

(assert (= (or b!7612778 bm!699293) bm!699292))

(declare-fun m!8148672 () Bool)

(assert (=> b!7612776 m!8148672))

(declare-fun m!8148674 () Bool)

(assert (=> bm!699291 m!8148674))

(declare-fun m!8148676 () Bool)

(assert (=> bm!699292 m!8148676))

(assert (=> start!733506 d!2322485))

(declare-fun d!2322487 () Bool)

(declare-fun nullableFct!3534 (Regex!20230) Bool)

(assert (=> d!2322487 (= (nullable!8851 (regTwo!40972 r!19218)) (nullableFct!3534 (regTwo!40972 r!19218)))))

(declare-fun bs!1942910 () Bool)

(assert (= bs!1942910 d!2322487))

(declare-fun m!8148678 () Bool)

(assert (=> bs!1942910 m!8148678))

(assert (=> b!7612715 d!2322487))

(declare-fun d!2322489 () Bool)

(assert (=> d!2322489 (= (nullable!8851 r!19218) (nullableFct!3534 r!19218))))

(declare-fun bs!1942911 () Bool)

(assert (= bs!1942911 d!2322489))

(declare-fun m!8148680 () Bool)

(assert (=> bs!1942911 m!8148680))

(assert (=> b!7612710 d!2322489))

(declare-fun b!7612850 () Bool)

(declare-fun e!4527597 () Int)

(assert (=> b!7612850 (= e!4527597 1)))

(declare-fun b!7612851 () Bool)

(declare-fun e!4527591 () Int)

(assert (=> b!7612851 (= e!4527591 1)))

(declare-fun c!1403547 () Bool)

(declare-fun bm!699320 () Bool)

(declare-fun call!699331 () Int)

(declare-fun c!1403548 () Bool)

(assert (=> bm!699320 (= call!699331 (regexDepth!476 (ite c!1403547 (reg!20559 (regTwo!40972 r!19218)) (ite c!1403548 (regOne!40973 (regTwo!40972 r!19218)) (regOne!40972 (regTwo!40972 r!19218))))))))

(declare-fun b!7612853 () Bool)

(declare-fun e!4527589 () Int)

(assert (=> b!7612853 (= e!4527589 e!4527591)))

(declare-fun c!1403552 () Bool)

(assert (=> b!7612853 (= c!1403552 (is-Concat!29075 (regTwo!40972 r!19218)))))

(declare-fun bm!699321 () Bool)

(declare-fun call!699327 () Int)

(declare-fun call!699325 () Int)

(assert (=> bm!699321 (= call!699327 call!699325)))

(declare-fun b!7612854 () Bool)

(declare-fun e!4527588 () Int)

(assert (=> b!7612854 (= e!4527588 (+ 1 call!699331))))

(declare-fun b!7612855 () Bool)

(declare-fun res!3047766 () Bool)

(declare-fun e!4527590 () Bool)

(assert (=> b!7612855 (=> (not res!3047766) (not e!4527590))))

(declare-fun lt!2655052 () Int)

(assert (=> b!7612855 (= res!3047766 (> lt!2655052 call!699327))))

(declare-fun e!4527594 () Bool)

(assert (=> b!7612855 (= e!4527594 e!4527590)))

(declare-fun bm!699322 () Bool)

(declare-fun call!699328 () Int)

(assert (=> bm!699322 (= call!699328 (regexDepth!476 (ite c!1403548 (regTwo!40973 (regTwo!40972 r!19218)) (regTwo!40972 (regTwo!40972 r!19218)))))))

(declare-fun bm!699323 () Bool)

(declare-fun c!1403550 () Bool)

(declare-fun c!1403549 () Bool)

(assert (=> bm!699323 (= call!699325 (regexDepth!476 (ite c!1403549 (regTwo!40973 (regTwo!40972 r!19218)) (ite c!1403550 (regOne!40972 (regTwo!40972 r!19218)) (reg!20559 (regTwo!40972 r!19218))))))))

(declare-fun bm!699324 () Bool)

(declare-fun call!699326 () Int)

(assert (=> bm!699324 (= call!699326 call!699331)))

(declare-fun bm!699325 () Bool)

(declare-fun call!699329 () Int)

(assert (=> bm!699325 (= call!699329 (regexDepth!476 (ite c!1403549 (regOne!40973 (regTwo!40972 r!19218)) (regTwo!40972 (regTwo!40972 r!19218)))))))

(declare-fun b!7612856 () Bool)

(declare-fun e!4527595 () Bool)

(assert (=> b!7612856 (= e!4527595 e!4527594)))

(assert (=> b!7612856 (= c!1403550 (is-Concat!29075 (regTwo!40972 r!19218)))))

(declare-fun b!7612857 () Bool)

(declare-fun e!4527593 () Bool)

(assert (=> b!7612857 (= e!4527593 (> lt!2655052 call!699325))))

(declare-fun b!7612858 () Bool)

(assert (=> b!7612858 (= c!1403548 (is-Union!20230 (regTwo!40972 r!19218)))))

(assert (=> b!7612858 (= e!4527588 e!4527589)))

(declare-fun b!7612852 () Bool)

(declare-fun e!4527592 () Bool)

(assert (=> b!7612852 (= e!4527592 (= lt!2655052 1))))

(declare-fun d!2322491 () Bool)

(declare-fun e!4527596 () Bool)

(assert (=> d!2322491 e!4527596))

(declare-fun res!3047767 () Bool)

(assert (=> d!2322491 (=> (not res!3047767) (not e!4527596))))

(assert (=> d!2322491 (= res!3047767 (> lt!2655052 0))))

(assert (=> d!2322491 (= lt!2655052 e!4527597)))

(declare-fun c!1403553 () Bool)

(assert (=> d!2322491 (= c!1403553 (is-ElementMatch!20230 (regTwo!40972 r!19218)))))

(assert (=> d!2322491 (= (regexDepth!476 (regTwo!40972 r!19218)) lt!2655052)))

(declare-fun b!7612859 () Bool)

(assert (=> b!7612859 (= e!4527596 e!4527595)))

(assert (=> b!7612859 (= c!1403549 (is-Union!20230 (regTwo!40972 r!19218)))))

(declare-fun bm!699326 () Bool)

(declare-fun call!699330 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!699326 (= call!699330 (maxBigInt!0 call!699326 call!699328))))

(declare-fun b!7612860 () Bool)

(assert (=> b!7612860 (= e!4527597 e!4527588)))

(assert (=> b!7612860 (= c!1403547 (is-Star!20230 (regTwo!40972 r!19218)))))

(declare-fun b!7612861 () Bool)

(assert (=> b!7612861 (= e!4527589 (+ 1 call!699330))))

(declare-fun b!7612862 () Bool)

(assert (=> b!7612862 (= e!4527591 (+ 1 call!699330))))

(declare-fun b!7612863 () Bool)

(declare-fun c!1403551 () Bool)

(assert (=> b!7612863 (= c!1403551 (is-Star!20230 (regTwo!40972 r!19218)))))

(assert (=> b!7612863 (= e!4527594 e!4527592)))

(declare-fun b!7612864 () Bool)

(assert (=> b!7612864 (= e!4527590 (> lt!2655052 call!699329))))

(declare-fun b!7612865 () Bool)

(assert (=> b!7612865 (= e!4527595 e!4527593)))

(declare-fun res!3047765 () Bool)

(assert (=> b!7612865 (= res!3047765 (> lt!2655052 call!699329))))

(assert (=> b!7612865 (=> (not res!3047765) (not e!4527593))))

(declare-fun b!7612866 () Bool)

(assert (=> b!7612866 (= e!4527592 (> lt!2655052 call!699327))))

(assert (= (and d!2322491 c!1403553) b!7612850))

(assert (= (and d!2322491 (not c!1403553)) b!7612860))

(assert (= (and b!7612860 c!1403547) b!7612854))

(assert (= (and b!7612860 (not c!1403547)) b!7612858))

(assert (= (and b!7612858 c!1403548) b!7612861))

(assert (= (and b!7612858 (not c!1403548)) b!7612853))

(assert (= (and b!7612853 c!1403552) b!7612862))

(assert (= (and b!7612853 (not c!1403552)) b!7612851))

(assert (= (or b!7612861 b!7612862) bm!699322))

(assert (= (or b!7612861 b!7612862) bm!699324))

(assert (= (or b!7612861 b!7612862) bm!699326))

(assert (= (or b!7612854 bm!699324) bm!699320))

(assert (= (and d!2322491 res!3047767) b!7612859))

(assert (= (and b!7612859 c!1403549) b!7612865))

(assert (= (and b!7612859 (not c!1403549)) b!7612856))

(assert (= (and b!7612865 res!3047765) b!7612857))

(assert (= (and b!7612856 c!1403550) b!7612855))

(assert (= (and b!7612856 (not c!1403550)) b!7612863))

(assert (= (and b!7612855 res!3047766) b!7612864))

(assert (= (and b!7612863 c!1403551) b!7612866))

(assert (= (and b!7612863 (not c!1403551)) b!7612852))

(assert (= (or b!7612855 b!7612866) bm!699321))

(assert (= (or b!7612857 bm!699321) bm!699323))

(assert (= (or b!7612865 b!7612864) bm!699325))

(declare-fun m!8148696 () Bool)

(assert (=> bm!699323 m!8148696))

(declare-fun m!8148698 () Bool)

(assert (=> bm!699322 m!8148698))

(declare-fun m!8148700 () Bool)

(assert (=> bm!699326 m!8148700))

(declare-fun m!8148702 () Bool)

(assert (=> bm!699325 m!8148702))

(declare-fun m!8148704 () Bool)

(assert (=> bm!699320 m!8148704))

(assert (=> b!7612713 d!2322491))

(declare-fun b!7612867 () Bool)

(declare-fun e!4527607 () Int)

(assert (=> b!7612867 (= e!4527607 1)))

(declare-fun b!7612868 () Bool)

(declare-fun e!4527601 () Int)

(assert (=> b!7612868 (= e!4527601 1)))

(declare-fun bm!699327 () Bool)

(declare-fun c!1403555 () Bool)

(declare-fun c!1403554 () Bool)

(declare-fun call!699338 () Int)

(assert (=> bm!699327 (= call!699338 (regexDepth!476 (ite c!1403554 (reg!20559 r!19218) (ite c!1403555 (regOne!40973 r!19218) (regOne!40972 r!19218)))))))

(declare-fun b!7612870 () Bool)

(declare-fun e!4527599 () Int)

(assert (=> b!7612870 (= e!4527599 e!4527601)))

(declare-fun c!1403559 () Bool)

(assert (=> b!7612870 (= c!1403559 (is-Concat!29075 r!19218))))

(declare-fun bm!699328 () Bool)

(declare-fun call!699334 () Int)

(declare-fun call!699332 () Int)

(assert (=> bm!699328 (= call!699334 call!699332)))

(declare-fun b!7612871 () Bool)

(declare-fun e!4527598 () Int)

(assert (=> b!7612871 (= e!4527598 (+ 1 call!699338))))

(declare-fun b!7612872 () Bool)

(declare-fun res!3047769 () Bool)

(declare-fun e!4527600 () Bool)

(assert (=> b!7612872 (=> (not res!3047769) (not e!4527600))))

(declare-fun lt!2655053 () Int)

(assert (=> b!7612872 (= res!3047769 (> lt!2655053 call!699334))))

(declare-fun e!4527604 () Bool)

(assert (=> b!7612872 (= e!4527604 e!4527600)))

(declare-fun bm!699329 () Bool)

(declare-fun call!699335 () Int)

(assert (=> bm!699329 (= call!699335 (regexDepth!476 (ite c!1403555 (regTwo!40973 r!19218) (regTwo!40972 r!19218))))))

(declare-fun bm!699330 () Bool)

(declare-fun c!1403557 () Bool)

(declare-fun c!1403556 () Bool)

(assert (=> bm!699330 (= call!699332 (regexDepth!476 (ite c!1403556 (regTwo!40973 r!19218) (ite c!1403557 (regOne!40972 r!19218) (reg!20559 r!19218)))))))

(declare-fun bm!699331 () Bool)

(declare-fun call!699333 () Int)

(assert (=> bm!699331 (= call!699333 call!699338)))

(declare-fun bm!699332 () Bool)

(declare-fun call!699336 () Int)

(assert (=> bm!699332 (= call!699336 (regexDepth!476 (ite c!1403556 (regOne!40973 r!19218) (regTwo!40972 r!19218))))))

(declare-fun b!7612873 () Bool)

(declare-fun e!4527605 () Bool)

(assert (=> b!7612873 (= e!4527605 e!4527604)))

(assert (=> b!7612873 (= c!1403557 (is-Concat!29075 r!19218))))

(declare-fun b!7612874 () Bool)

(declare-fun e!4527603 () Bool)

(assert (=> b!7612874 (= e!4527603 (> lt!2655053 call!699332))))

(declare-fun b!7612875 () Bool)

(assert (=> b!7612875 (= c!1403555 (is-Union!20230 r!19218))))

(assert (=> b!7612875 (= e!4527598 e!4527599)))

(declare-fun b!7612869 () Bool)

(declare-fun e!4527602 () Bool)

(assert (=> b!7612869 (= e!4527602 (= lt!2655053 1))))

(declare-fun d!2322499 () Bool)

(declare-fun e!4527606 () Bool)

(assert (=> d!2322499 e!4527606))

(declare-fun res!3047770 () Bool)

(assert (=> d!2322499 (=> (not res!3047770) (not e!4527606))))

(assert (=> d!2322499 (= res!3047770 (> lt!2655053 0))))

(assert (=> d!2322499 (= lt!2655053 e!4527607)))

(declare-fun c!1403560 () Bool)

(assert (=> d!2322499 (= c!1403560 (is-ElementMatch!20230 r!19218))))

(assert (=> d!2322499 (= (regexDepth!476 r!19218) lt!2655053)))

(declare-fun b!7612876 () Bool)

(assert (=> b!7612876 (= e!4527606 e!4527605)))

(assert (=> b!7612876 (= c!1403556 (is-Union!20230 r!19218))))

(declare-fun bm!699333 () Bool)

(declare-fun call!699337 () Int)

(assert (=> bm!699333 (= call!699337 (maxBigInt!0 call!699333 call!699335))))

(declare-fun b!7612877 () Bool)

(assert (=> b!7612877 (= e!4527607 e!4527598)))

(assert (=> b!7612877 (= c!1403554 (is-Star!20230 r!19218))))

(declare-fun b!7612878 () Bool)

(assert (=> b!7612878 (= e!4527599 (+ 1 call!699337))))

(declare-fun b!7612879 () Bool)

(assert (=> b!7612879 (= e!4527601 (+ 1 call!699337))))

(declare-fun b!7612880 () Bool)

(declare-fun c!1403558 () Bool)

(assert (=> b!7612880 (= c!1403558 (is-Star!20230 r!19218))))

(assert (=> b!7612880 (= e!4527604 e!4527602)))

(declare-fun b!7612881 () Bool)

(assert (=> b!7612881 (= e!4527600 (> lt!2655053 call!699336))))

(declare-fun b!7612882 () Bool)

(assert (=> b!7612882 (= e!4527605 e!4527603)))

(declare-fun res!3047768 () Bool)

(assert (=> b!7612882 (= res!3047768 (> lt!2655053 call!699336))))

(assert (=> b!7612882 (=> (not res!3047768) (not e!4527603))))

(declare-fun b!7612883 () Bool)

(assert (=> b!7612883 (= e!4527602 (> lt!2655053 call!699334))))

(assert (= (and d!2322499 c!1403560) b!7612867))

(assert (= (and d!2322499 (not c!1403560)) b!7612877))

(assert (= (and b!7612877 c!1403554) b!7612871))

(assert (= (and b!7612877 (not c!1403554)) b!7612875))

(assert (= (and b!7612875 c!1403555) b!7612878))

(assert (= (and b!7612875 (not c!1403555)) b!7612870))

(assert (= (and b!7612870 c!1403559) b!7612879))

(assert (= (and b!7612870 (not c!1403559)) b!7612868))

(assert (= (or b!7612878 b!7612879) bm!699329))

(assert (= (or b!7612878 b!7612879) bm!699331))

(assert (= (or b!7612878 b!7612879) bm!699333))

(assert (= (or b!7612871 bm!699331) bm!699327))

(assert (= (and d!2322499 res!3047770) b!7612876))

(assert (= (and b!7612876 c!1403556) b!7612882))

(assert (= (and b!7612876 (not c!1403556)) b!7612873))

(assert (= (and b!7612882 res!3047768) b!7612874))

(assert (= (and b!7612873 c!1403557) b!7612872))

(assert (= (and b!7612873 (not c!1403557)) b!7612880))

(assert (= (and b!7612872 res!3047769) b!7612881))

(assert (= (and b!7612880 c!1403558) b!7612883))

(assert (= (and b!7612880 (not c!1403558)) b!7612869))

(assert (= (or b!7612872 b!7612883) bm!699328))

(assert (= (or b!7612874 bm!699328) bm!699330))

(assert (= (or b!7612882 b!7612881) bm!699332))

(declare-fun m!8148708 () Bool)

(assert (=> bm!699330 m!8148708))

(declare-fun m!8148710 () Bool)

(assert (=> bm!699329 m!8148710))

(declare-fun m!8148712 () Bool)

(assert (=> bm!699333 m!8148712))

(declare-fun m!8148714 () Bool)

(assert (=> bm!699332 m!8148714))

(declare-fun m!8148716 () Bool)

(assert (=> bm!699327 m!8148716))

(assert (=> b!7612713 d!2322499))

(declare-fun b!7612897 () Bool)

(declare-fun e!4527610 () Bool)

(declare-fun tp!2222032 () Bool)

(declare-fun tp!2222034 () Bool)

(assert (=> b!7612897 (= e!4527610 (and tp!2222032 tp!2222034))))

(declare-fun b!7612895 () Bool)

(declare-fun tp!2222030 () Bool)

(declare-fun tp!2222031 () Bool)

(assert (=> b!7612895 (= e!4527610 (and tp!2222030 tp!2222031))))

(assert (=> b!7612708 (= tp!2222004 e!4527610)))

(declare-fun b!7612896 () Bool)

(declare-fun tp!2222033 () Bool)

(assert (=> b!7612896 (= e!4527610 tp!2222033)))

(declare-fun b!7612894 () Bool)

(assert (=> b!7612894 (= e!4527610 tp_is_empty!50815)))

(assert (= (and b!7612708 (is-ElementMatch!20230 (reg!20559 r!19218))) b!7612894))

(assert (= (and b!7612708 (is-Concat!29075 (reg!20559 r!19218))) b!7612895))

(assert (= (and b!7612708 (is-Star!20230 (reg!20559 r!19218))) b!7612896))

(assert (= (and b!7612708 (is-Union!20230 (reg!20559 r!19218))) b!7612897))

(declare-fun b!7612901 () Bool)

(declare-fun e!4527611 () Bool)

(declare-fun tp!2222037 () Bool)

(declare-fun tp!2222039 () Bool)

(assert (=> b!7612901 (= e!4527611 (and tp!2222037 tp!2222039))))

(declare-fun b!7612899 () Bool)

(declare-fun tp!2222035 () Bool)

(declare-fun tp!2222036 () Bool)

(assert (=> b!7612899 (= e!4527611 (and tp!2222035 tp!2222036))))

(assert (=> b!7612714 (= tp!2222002 e!4527611)))

(declare-fun b!7612900 () Bool)

(declare-fun tp!2222038 () Bool)

(assert (=> b!7612900 (= e!4527611 tp!2222038)))

(declare-fun b!7612898 () Bool)

(assert (=> b!7612898 (= e!4527611 tp_is_empty!50815)))

(assert (= (and b!7612714 (is-ElementMatch!20230 (regOne!40973 r!19218))) b!7612898))

(assert (= (and b!7612714 (is-Concat!29075 (regOne!40973 r!19218))) b!7612899))

(assert (= (and b!7612714 (is-Star!20230 (regOne!40973 r!19218))) b!7612900))

(assert (= (and b!7612714 (is-Union!20230 (regOne!40973 r!19218))) b!7612901))

(declare-fun b!7612905 () Bool)

(declare-fun e!4527612 () Bool)

(declare-fun tp!2222042 () Bool)

(declare-fun tp!2222044 () Bool)

(assert (=> b!7612905 (= e!4527612 (and tp!2222042 tp!2222044))))

(declare-fun b!7612903 () Bool)

(declare-fun tp!2222040 () Bool)

(declare-fun tp!2222041 () Bool)

(assert (=> b!7612903 (= e!4527612 (and tp!2222040 tp!2222041))))

(assert (=> b!7612714 (= tp!2222000 e!4527612)))

(declare-fun b!7612904 () Bool)

(declare-fun tp!2222043 () Bool)

(assert (=> b!7612904 (= e!4527612 tp!2222043)))

(declare-fun b!7612902 () Bool)

(assert (=> b!7612902 (= e!4527612 tp_is_empty!50815)))

(assert (= (and b!7612714 (is-ElementMatch!20230 (regTwo!40973 r!19218))) b!7612902))

(assert (= (and b!7612714 (is-Concat!29075 (regTwo!40973 r!19218))) b!7612903))

(assert (= (and b!7612714 (is-Star!20230 (regTwo!40973 r!19218))) b!7612904))

(assert (= (and b!7612714 (is-Union!20230 (regTwo!40973 r!19218))) b!7612905))

(declare-fun b!7612909 () Bool)

(declare-fun e!4527613 () Bool)

(declare-fun tp!2222047 () Bool)

(declare-fun tp!2222049 () Bool)

(assert (=> b!7612909 (= e!4527613 (and tp!2222047 tp!2222049))))

(declare-fun b!7612907 () Bool)

(declare-fun tp!2222045 () Bool)

(declare-fun tp!2222046 () Bool)

(assert (=> b!7612907 (= e!4527613 (and tp!2222045 tp!2222046))))

(assert (=> b!7612716 (= tp!2222003 e!4527613)))

(declare-fun b!7612908 () Bool)

(declare-fun tp!2222048 () Bool)

(assert (=> b!7612908 (= e!4527613 tp!2222048)))

(declare-fun b!7612906 () Bool)

(assert (=> b!7612906 (= e!4527613 tp_is_empty!50815)))

(assert (= (and b!7612716 (is-ElementMatch!20230 (regOne!40972 r!19218))) b!7612906))

(assert (= (and b!7612716 (is-Concat!29075 (regOne!40972 r!19218))) b!7612907))

(assert (= (and b!7612716 (is-Star!20230 (regOne!40972 r!19218))) b!7612908))

(assert (= (and b!7612716 (is-Union!20230 (regOne!40972 r!19218))) b!7612909))

(declare-fun b!7612913 () Bool)

(declare-fun e!4527614 () Bool)

(declare-fun tp!2222052 () Bool)

(declare-fun tp!2222054 () Bool)

(assert (=> b!7612913 (= e!4527614 (and tp!2222052 tp!2222054))))

(declare-fun b!7612911 () Bool)

(declare-fun tp!2222050 () Bool)

(declare-fun tp!2222051 () Bool)

(assert (=> b!7612911 (= e!4527614 (and tp!2222050 tp!2222051))))

(assert (=> b!7612716 (= tp!2222001 e!4527614)))

(declare-fun b!7612912 () Bool)

(declare-fun tp!2222053 () Bool)

(assert (=> b!7612912 (= e!4527614 tp!2222053)))

(declare-fun b!7612910 () Bool)

(assert (=> b!7612910 (= e!4527614 tp_is_empty!50815)))

(assert (= (and b!7612716 (is-ElementMatch!20230 (regTwo!40972 r!19218))) b!7612910))

(assert (= (and b!7612716 (is-Concat!29075 (regTwo!40972 r!19218))) b!7612911))

(assert (= (and b!7612716 (is-Star!20230 (regTwo!40972 r!19218))) b!7612912))

(assert (= (and b!7612716 (is-Union!20230 (regTwo!40972 r!19218))) b!7612913))

(push 1)

(assert (not b!7612913))

(assert (not b!7612899))

(assert (not b!7612895))

(assert (not bm!699323))

(assert (not bm!699330))

(assert tp_is_empty!50815)

(assert (not b!7612912))

(assert (not d!2322483))

(assert (not b!7612905))

(assert (not bm!699327))

(assert (not bm!699325))

(assert (not bm!699289))

(assert (not b!7612908))

(assert (not b!7612903))

(assert (not bm!699292))

(assert (not bm!699329))

(assert (not b!7612911))

(assert (not bm!699326))

(assert (not d!2322489))

(assert (not b!7612909))

(assert (not bm!699291))

(assert (not b!7612897))

(assert (not bm!699332))

(assert (not b!7612904))

(assert (not b!7612776))

(assert (not b!7612763))

(assert (not b!7612901))

(assert (not d!2322481))

(assert (not bm!699322))

(assert (not bm!699288))

(assert (not bm!699320))

(assert (not d!2322487))

(assert (not bm!699333))

(assert (not b!7612896))

(assert (not b!7612900))

(assert (not b!7612907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

