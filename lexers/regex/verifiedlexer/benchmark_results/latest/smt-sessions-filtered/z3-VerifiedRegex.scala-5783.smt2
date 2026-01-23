; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285752 () Bool)

(assert start!285752)

(declare-fun b!2943286 () Bool)

(declare-fun res!1214745 () Bool)

(declare-fun e!1854601 () Bool)

(assert (=> b!2943286 (=> res!1214745 e!1854601)))

(declare-datatypes ((C!18420 0))(
  ( (C!18421 (val!11246 Int)) )
))
(declare-datatypes ((Regex!9117 0))(
  ( (ElementMatch!9117 (c!481325 C!18420)) (Concat!14438 (regOne!18746 Regex!9117) (regTwo!18746 Regex!9117)) (EmptyExpr!9117) (Star!9117 (reg!9446 Regex!9117)) (EmptyLang!9117) (Union!9117 (regOne!18747 Regex!9117) (regTwo!18747 Regex!9117)) )
))
(declare-fun lt!1030631 () Regex!9117)

(declare-fun isEmptyExpr!320 (Regex!9117) Bool)

(assert (=> b!2943286 (= res!1214745 (not (isEmptyExpr!320 lt!1030631)))))

(declare-fun b!2943287 () Bool)

(declare-fun e!1854603 () Bool)

(declare-fun tp_is_empty!15797 () Bool)

(assert (=> b!2943287 (= e!1854603 tp_is_empty!15797)))

(declare-fun res!1214743 () Bool)

(declare-fun e!1854604 () Bool)

(assert (=> start!285752 (=> (not res!1214743) (not e!1854604))))

(declare-fun r!17423 () Regex!9117)

(declare-fun validRegex!3850 (Regex!9117) Bool)

(assert (=> start!285752 (= res!1214743 (validRegex!3850 r!17423))))

(assert (=> start!285752 e!1854604))

(assert (=> start!285752 e!1854603))

(declare-fun e!1854605 () Bool)

(assert (=> start!285752 e!1854605))

(declare-fun b!2943288 () Bool)

(declare-fun res!1214741 () Bool)

(assert (=> b!2943288 (=> res!1214741 e!1854601)))

(declare-fun lt!1030630 () Regex!9117)

(assert (=> b!2943288 (= res!1214741 (isEmptyExpr!320 lt!1030630))))

(declare-fun b!2943289 () Bool)

(declare-fun e!1854602 () Bool)

(assert (=> b!2943289 (= e!1854602 e!1854601)))

(declare-fun res!1214744 () Bool)

(assert (=> b!2943289 (=> res!1214744 e!1854601)))

(declare-fun isEmptyLang!239 (Regex!9117) Bool)

(assert (=> b!2943289 (= res!1214744 (isEmptyLang!239 lt!1030630))))

(declare-fun simplify!122 (Regex!9117) Regex!9117)

(assert (=> b!2943289 (= lt!1030631 (simplify!122 (regTwo!18746 r!17423)))))

(assert (=> b!2943289 (= lt!1030630 (simplify!122 (regOne!18746 r!17423)))))

(declare-fun b!2943290 () Bool)

(declare-fun tp!941780 () Bool)

(declare-fun tp!941781 () Bool)

(assert (=> b!2943290 (= e!1854603 (and tp!941780 tp!941781))))

(declare-fun b!2943291 () Bool)

(declare-fun tp!941784 () Bool)

(declare-fun tp!941782 () Bool)

(assert (=> b!2943291 (= e!1854603 (and tp!941784 tp!941782))))

(declare-fun b!2943292 () Bool)

(declare-fun res!1214740 () Bool)

(assert (=> b!2943292 (=> res!1214740 e!1854602)))

(declare-datatypes ((List!34982 0))(
  ( (Nil!34858) (Cons!34858 (h!40278 C!18420) (t!234047 List!34982)) )
))
(declare-fun s!11993 () List!34982)

(declare-fun isEmpty!19119 (List!34982) Bool)

(assert (=> b!2943292 (= res!1214740 (isEmpty!19119 s!11993))))

(declare-fun b!2943293 () Bool)

(assert (=> b!2943293 (= e!1854604 (not e!1854602))))

(declare-fun res!1214742 () Bool)

(assert (=> b!2943293 (=> res!1214742 e!1854602)))

(declare-fun lt!1030633 () Bool)

(get-info :version)

(assert (=> b!2943293 (= res!1214742 (or lt!1030633 (not ((_ is Concat!14438) r!17423))))))

(declare-fun matchRSpec!1254 (Regex!9117 List!34982) Bool)

(assert (=> b!2943293 (= lt!1030633 (matchRSpec!1254 r!17423 s!11993))))

(declare-fun matchR!3999 (Regex!9117 List!34982) Bool)

(assert (=> b!2943293 (= lt!1030633 (matchR!3999 r!17423 s!11993))))

(declare-datatypes ((Unit!48613 0))(
  ( (Unit!48614) )
))
(declare-fun lt!1030635 () Unit!48613)

(declare-fun mainMatchTheorem!1254 (Regex!9117 List!34982) Unit!48613)

(assert (=> b!2943293 (= lt!1030635 (mainMatchTheorem!1254 r!17423 s!11993))))

(declare-fun b!2943294 () Bool)

(declare-fun tp!941785 () Bool)

(assert (=> b!2943294 (= e!1854603 tp!941785)))

(declare-fun b!2943295 () Bool)

(assert (=> b!2943295 (= e!1854601 (validRegex!3850 (regOne!18746 r!17423)))))

(assert (=> b!2943295 (= (matchR!3999 (regTwo!18746 r!17423) Nil!34858) (matchR!3999 lt!1030631 Nil!34858))))

(declare-fun lt!1030632 () Unit!48613)

(declare-fun lemmaSimplifySound!104 (Regex!9117 List!34982) Unit!48613)

(assert (=> b!2943295 (= lt!1030632 (lemmaSimplifySound!104 (regTwo!18746 r!17423) Nil!34858))))

(assert (=> b!2943295 (= (matchR!3999 (regOne!18746 r!17423) s!11993) (matchR!3999 lt!1030630 s!11993))))

(declare-fun lt!1030634 () Unit!48613)

(assert (=> b!2943295 (= lt!1030634 (lemmaSimplifySound!104 (regOne!18746 r!17423) s!11993))))

(declare-fun b!2943296 () Bool)

(declare-fun res!1214746 () Bool)

(assert (=> b!2943296 (=> res!1214746 e!1854601)))

(assert (=> b!2943296 (= res!1214746 (isEmptyLang!239 lt!1030631))))

(declare-fun b!2943297 () Bool)

(declare-fun tp!941783 () Bool)

(assert (=> b!2943297 (= e!1854605 (and tp_is_empty!15797 tp!941783))))

(assert (= (and start!285752 res!1214743) b!2943293))

(assert (= (and b!2943293 (not res!1214742)) b!2943292))

(assert (= (and b!2943292 (not res!1214740)) b!2943289))

(assert (= (and b!2943289 (not res!1214744)) b!2943296))

(assert (= (and b!2943296 (not res!1214746)) b!2943288))

(assert (= (and b!2943288 (not res!1214741)) b!2943286))

(assert (= (and b!2943286 (not res!1214745)) b!2943295))

(assert (= (and start!285752 ((_ is ElementMatch!9117) r!17423)) b!2943287))

(assert (= (and start!285752 ((_ is Concat!14438) r!17423)) b!2943290))

(assert (= (and start!285752 ((_ is Star!9117) r!17423)) b!2943294))

(assert (= (and start!285752 ((_ is Union!9117) r!17423)) b!2943291))

(assert (= (and start!285752 ((_ is Cons!34858) s!11993)) b!2943297))

(declare-fun m!3326529 () Bool)

(assert (=> b!2943296 m!3326529))

(declare-fun m!3326531 () Bool)

(assert (=> b!2943288 m!3326531))

(declare-fun m!3326533 () Bool)

(assert (=> b!2943289 m!3326533))

(declare-fun m!3326535 () Bool)

(assert (=> b!2943289 m!3326535))

(declare-fun m!3326537 () Bool)

(assert (=> b!2943289 m!3326537))

(declare-fun m!3326539 () Bool)

(assert (=> b!2943292 m!3326539))

(declare-fun m!3326541 () Bool)

(assert (=> b!2943293 m!3326541))

(declare-fun m!3326543 () Bool)

(assert (=> b!2943293 m!3326543))

(declare-fun m!3326545 () Bool)

(assert (=> b!2943293 m!3326545))

(declare-fun m!3326547 () Bool)

(assert (=> b!2943295 m!3326547))

(declare-fun m!3326549 () Bool)

(assert (=> b!2943295 m!3326549))

(declare-fun m!3326551 () Bool)

(assert (=> b!2943295 m!3326551))

(declare-fun m!3326553 () Bool)

(assert (=> b!2943295 m!3326553))

(declare-fun m!3326555 () Bool)

(assert (=> b!2943295 m!3326555))

(declare-fun m!3326557 () Bool)

(assert (=> b!2943295 m!3326557))

(declare-fun m!3326559 () Bool)

(assert (=> b!2943295 m!3326559))

(declare-fun m!3326561 () Bool)

(assert (=> b!2943286 m!3326561))

(declare-fun m!3326563 () Bool)

(assert (=> start!285752 m!3326563))

(check-sat (not b!2943290) (not b!2943286) (not b!2943289) (not b!2943294) (not b!2943295) (not start!285752) (not b!2943288) (not b!2943291) (not b!2943296) (not b!2943292) (not b!2943297) tp_is_empty!15797 (not b!2943293))
(check-sat)
(get-model)

(declare-fun d!840354 () Bool)

(assert (=> d!840354 (= (isEmptyLang!239 lt!1030630) ((_ is EmptyLang!9117) lt!1030630))))

(assert (=> b!2943289 d!840354))

(declare-fun b!2943425 () Bool)

(declare-fun e!1854694 () Regex!9117)

(assert (=> b!2943425 (= e!1854694 EmptyLang!9117)))

(declare-fun b!2943426 () Bool)

(declare-fun e!1854691 () Regex!9117)

(declare-fun lt!1030664 () Regex!9117)

(assert (=> b!2943426 (= e!1854691 lt!1030664)))

(declare-fun bm!193981 () Bool)

(declare-fun call!193989 () Regex!9117)

(declare-fun call!193988 () Regex!9117)

(assert (=> bm!193981 (= call!193989 call!193988)))

(declare-fun b!2943427 () Bool)

(declare-fun e!1854690 () Regex!9117)

(declare-fun lt!1030661 () Regex!9117)

(declare-fun lt!1030663 () Regex!9117)

(assert (=> b!2943427 (= e!1854690 (Union!9117 lt!1030661 lt!1030663))))

(declare-fun b!2943428 () Bool)

(declare-fun e!1854692 () Regex!9117)

(declare-fun e!1854689 () Regex!9117)

(assert (=> b!2943428 (= e!1854692 e!1854689)))

(declare-fun c!481378 () Bool)

(assert (=> b!2943428 (= c!481378 ((_ is Star!9117) (regTwo!18746 r!17423)))))

(declare-fun b!2943429 () Bool)

(assert (=> b!2943429 (= e!1854690 lt!1030661)))

(declare-fun d!840358 () Bool)

(declare-fun e!1854685 () Bool)

(assert (=> d!840358 e!1854685))

(declare-fun res!1214774 () Bool)

(assert (=> d!840358 (=> (not res!1214774) (not e!1854685))))

(declare-fun lt!1030660 () Regex!9117)

(assert (=> d!840358 (= res!1214774 (validRegex!3850 lt!1030660))))

(declare-fun e!1854683 () Regex!9117)

(assert (=> d!840358 (= lt!1030660 e!1854683)))

(declare-fun c!481385 () Bool)

(assert (=> d!840358 (= c!481385 ((_ is EmptyLang!9117) (regTwo!18746 r!17423)))))

(assert (=> d!840358 (validRegex!3850 (regTwo!18746 r!17423))))

(assert (=> d!840358 (= (simplify!122 (regTwo!18746 r!17423)) lt!1030660)))

(declare-fun b!2943430 () Bool)

(declare-fun c!481381 () Bool)

(declare-fun lt!1030662 () Regex!9117)

(assert (=> b!2943430 (= c!481381 (isEmptyExpr!320 lt!1030662))))

(assert (=> b!2943430 (= e!1854694 e!1854691)))

(declare-fun call!193991 () Bool)

(declare-fun c!481380 () Bool)

(declare-fun bm!193982 () Bool)

(declare-fun lt!1030665 () Regex!9117)

(assert (=> bm!193982 (= call!193991 (isEmptyLang!239 (ite c!481378 lt!1030665 (ite c!481380 lt!1030661 lt!1030664))))))

(declare-fun b!2943431 () Bool)

(declare-fun e!1854695 () Regex!9117)

(assert (=> b!2943431 (= e!1854695 (regTwo!18746 r!17423))))

(declare-fun bm!193983 () Bool)

(declare-fun call!193987 () Bool)

(assert (=> bm!193983 (= call!193987 (isEmptyLang!239 (ite c!481380 lt!1030663 lt!1030662)))))

(declare-fun bm!193984 () Bool)

(declare-fun call!193992 () Bool)

(assert (=> bm!193984 (= call!193992 call!193991)))

(declare-fun b!2943432 () Bool)

(declare-fun c!481379 () Bool)

(assert (=> b!2943432 (= c!481379 ((_ is EmptyExpr!9117) (regTwo!18746 r!17423)))))

(assert (=> b!2943432 (= e!1854695 e!1854692)))

(declare-fun b!2943433 () Bool)

(declare-fun e!1854696 () Regex!9117)

(assert (=> b!2943433 (= e!1854696 (Star!9117 lt!1030665))))

(declare-fun b!2943434 () Bool)

(declare-fun e!1854684 () Bool)

(assert (=> b!2943434 (= e!1854684 call!193992)))

(declare-fun bm!193985 () Bool)

(declare-fun call!193990 () Regex!9117)

(assert (=> bm!193985 (= call!193990 (simplify!122 (ite c!481380 (regTwo!18747 (regTwo!18746 r!17423)) (regOne!18746 (regTwo!18746 r!17423)))))))

(declare-fun b!2943435 () Bool)

(declare-fun e!1854693 () Regex!9117)

(declare-fun e!1854687 () Regex!9117)

(assert (=> b!2943435 (= e!1854693 e!1854687)))

(assert (=> b!2943435 (= lt!1030661 call!193989)))

(assert (=> b!2943435 (= lt!1030663 call!193990)))

(declare-fun c!481384 () Bool)

(assert (=> b!2943435 (= c!481384 call!193992)))

(declare-fun call!193986 () Bool)

(declare-fun bm!193986 () Bool)

(assert (=> bm!193986 (= call!193986 (isEmptyExpr!320 (ite c!481378 lt!1030665 lt!1030664)))))

(declare-fun b!2943436 () Bool)

(declare-fun e!1854688 () Regex!9117)

(assert (=> b!2943436 (= e!1854688 (Concat!14438 lt!1030662 lt!1030664))))

(declare-fun bm!193987 () Bool)

(assert (=> bm!193987 (= call!193988 (simplify!122 (ite c!481378 (reg!9446 (regTwo!18746 r!17423)) (ite c!481380 (regOne!18747 (regTwo!18746 r!17423)) (regTwo!18746 (regTwo!18746 r!17423))))))))

(declare-fun b!2943437 () Bool)

(declare-fun e!1854686 () Bool)

(assert (=> b!2943437 (= e!1854686 call!193986)))

(declare-fun b!2943438 () Bool)

(assert (=> b!2943438 (= e!1854691 e!1854688)))

(declare-fun c!481386 () Bool)

(assert (=> b!2943438 (= c!481386 call!193986)))

(declare-fun b!2943439 () Bool)

(assert (=> b!2943439 (= e!1854693 e!1854694)))

(assert (=> b!2943439 (= lt!1030662 call!193990)))

(assert (=> b!2943439 (= lt!1030664 call!193989)))

(declare-fun res!1214775 () Bool)

(assert (=> b!2943439 (= res!1214775 call!193987)))

(assert (=> b!2943439 (=> res!1214775 e!1854684)))

(declare-fun c!481376 () Bool)

(assert (=> b!2943439 (= c!481376 e!1854684)))

(declare-fun b!2943440 () Bool)

(assert (=> b!2943440 (= e!1854696 EmptyExpr!9117)))

(declare-fun b!2943441 () Bool)

(declare-fun nullable!2889 (Regex!9117) Bool)

(assert (=> b!2943441 (= e!1854685 (= (nullable!2889 lt!1030660) (nullable!2889 (regTwo!18746 r!17423))))))

(declare-fun b!2943442 () Bool)

(assert (=> b!2943442 (= e!1854688 lt!1030662)))

(declare-fun b!2943443 () Bool)

(assert (=> b!2943443 (= e!1854683 e!1854695)))

(declare-fun c!481382 () Bool)

(assert (=> b!2943443 (= c!481382 ((_ is ElementMatch!9117) (regTwo!18746 r!17423)))))

(declare-fun b!2943444 () Bool)

(assert (=> b!2943444 (= c!481380 ((_ is Union!9117) (regTwo!18746 r!17423)))))

(assert (=> b!2943444 (= e!1854689 e!1854693)))

(declare-fun b!2943445 () Bool)

(assert (=> b!2943445 (= e!1854683 EmptyLang!9117)))

(declare-fun b!2943446 () Bool)

(declare-fun c!481377 () Bool)

(assert (=> b!2943446 (= c!481377 call!193987)))

(assert (=> b!2943446 (= e!1854687 e!1854690)))

(declare-fun b!2943447 () Bool)

(assert (=> b!2943447 (= e!1854687 lt!1030663)))

(declare-fun b!2943448 () Bool)

(assert (=> b!2943448 (= e!1854692 EmptyExpr!9117)))

(declare-fun b!2943449 () Bool)

(declare-fun c!481383 () Bool)

(assert (=> b!2943449 (= c!481383 e!1854686)))

(declare-fun res!1214776 () Bool)

(assert (=> b!2943449 (=> res!1214776 e!1854686)))

(assert (=> b!2943449 (= res!1214776 call!193991)))

(assert (=> b!2943449 (= lt!1030665 call!193988)))

(assert (=> b!2943449 (= e!1854689 e!1854696)))

(assert (= (and d!840358 c!481385) b!2943445))

(assert (= (and d!840358 (not c!481385)) b!2943443))

(assert (= (and b!2943443 c!481382) b!2943431))

(assert (= (and b!2943443 (not c!481382)) b!2943432))

(assert (= (and b!2943432 c!481379) b!2943448))

(assert (= (and b!2943432 (not c!481379)) b!2943428))

(assert (= (and b!2943428 c!481378) b!2943449))

(assert (= (and b!2943428 (not c!481378)) b!2943444))

(assert (= (and b!2943449 (not res!1214776)) b!2943437))

(assert (= (and b!2943449 c!481383) b!2943440))

(assert (= (and b!2943449 (not c!481383)) b!2943433))

(assert (= (and b!2943444 c!481380) b!2943435))

(assert (= (and b!2943444 (not c!481380)) b!2943439))

(assert (= (and b!2943435 c!481384) b!2943447))

(assert (= (and b!2943435 (not c!481384)) b!2943446))

(assert (= (and b!2943446 c!481377) b!2943429))

(assert (= (and b!2943446 (not c!481377)) b!2943427))

(assert (= (and b!2943439 (not res!1214775)) b!2943434))

(assert (= (and b!2943439 c!481376) b!2943425))

(assert (= (and b!2943439 (not c!481376)) b!2943430))

(assert (= (and b!2943430 c!481381) b!2943426))

(assert (= (and b!2943430 (not c!481381)) b!2943438))

(assert (= (and b!2943438 c!481386) b!2943442))

(assert (= (and b!2943438 (not c!481386)) b!2943436))

(assert (= (or b!2943435 b!2943439) bm!193981))

(assert (= (or b!2943435 b!2943439) bm!193985))

(assert (= (or b!2943435 b!2943434) bm!193984))

(assert (= (or b!2943446 b!2943439) bm!193983))

(assert (= (or b!2943437 b!2943438) bm!193986))

(assert (= (or b!2943449 bm!193981) bm!193987))

(assert (= (or b!2943449 bm!193984) bm!193982))

(assert (= (and d!840358 res!1214774) b!2943441))

(declare-fun m!3326571 () Bool)

(assert (=> bm!193987 m!3326571))

(declare-fun m!3326573 () Bool)

(assert (=> d!840358 m!3326573))

(declare-fun m!3326575 () Bool)

(assert (=> d!840358 m!3326575))

(declare-fun m!3326577 () Bool)

(assert (=> bm!193983 m!3326577))

(declare-fun m!3326579 () Bool)

(assert (=> b!2943441 m!3326579))

(declare-fun m!3326581 () Bool)

(assert (=> b!2943441 m!3326581))

(declare-fun m!3326583 () Bool)

(assert (=> bm!193986 m!3326583))

(declare-fun m!3326585 () Bool)

(assert (=> b!2943430 m!3326585))

(declare-fun m!3326587 () Bool)

(assert (=> bm!193982 m!3326587))

(declare-fun m!3326589 () Bool)

(assert (=> bm!193985 m!3326589))

(assert (=> b!2943289 d!840358))

(declare-fun b!2943450 () Bool)

(declare-fun e!1854708 () Regex!9117)

(assert (=> b!2943450 (= e!1854708 EmptyLang!9117)))

(declare-fun b!2943451 () Bool)

(declare-fun e!1854705 () Regex!9117)

(declare-fun lt!1030670 () Regex!9117)

(assert (=> b!2943451 (= e!1854705 lt!1030670)))

(declare-fun bm!193988 () Bool)

(declare-fun call!193996 () Regex!9117)

(declare-fun call!193995 () Regex!9117)

(assert (=> bm!193988 (= call!193996 call!193995)))

(declare-fun b!2943452 () Bool)

(declare-fun e!1854704 () Regex!9117)

(declare-fun lt!1030667 () Regex!9117)

(declare-fun lt!1030669 () Regex!9117)

(assert (=> b!2943452 (= e!1854704 (Union!9117 lt!1030667 lt!1030669))))

(declare-fun b!2943453 () Bool)

(declare-fun e!1854706 () Regex!9117)

(declare-fun e!1854703 () Regex!9117)

(assert (=> b!2943453 (= e!1854706 e!1854703)))

(declare-fun c!481389 () Bool)

(assert (=> b!2943453 (= c!481389 ((_ is Star!9117) (regOne!18746 r!17423)))))

(declare-fun b!2943454 () Bool)

(assert (=> b!2943454 (= e!1854704 lt!1030667)))

(declare-fun d!840364 () Bool)

(declare-fun e!1854699 () Bool)

(assert (=> d!840364 e!1854699))

(declare-fun res!1214777 () Bool)

(assert (=> d!840364 (=> (not res!1214777) (not e!1854699))))

(declare-fun lt!1030666 () Regex!9117)

(assert (=> d!840364 (= res!1214777 (validRegex!3850 lt!1030666))))

(declare-fun e!1854697 () Regex!9117)

(assert (=> d!840364 (= lt!1030666 e!1854697)))

(declare-fun c!481396 () Bool)

(assert (=> d!840364 (= c!481396 ((_ is EmptyLang!9117) (regOne!18746 r!17423)))))

(assert (=> d!840364 (validRegex!3850 (regOne!18746 r!17423))))

(assert (=> d!840364 (= (simplify!122 (regOne!18746 r!17423)) lt!1030666)))

(declare-fun b!2943455 () Bool)

(declare-fun c!481392 () Bool)

(declare-fun lt!1030668 () Regex!9117)

(assert (=> b!2943455 (= c!481392 (isEmptyExpr!320 lt!1030668))))

(assert (=> b!2943455 (= e!1854708 e!1854705)))

(declare-fun c!481391 () Bool)

(declare-fun call!193998 () Bool)

(declare-fun lt!1030671 () Regex!9117)

(declare-fun bm!193989 () Bool)

(assert (=> bm!193989 (= call!193998 (isEmptyLang!239 (ite c!481389 lt!1030671 (ite c!481391 lt!1030667 lt!1030670))))))

(declare-fun b!2943456 () Bool)

(declare-fun e!1854713 () Regex!9117)

(assert (=> b!2943456 (= e!1854713 (regOne!18746 r!17423))))

(declare-fun bm!193990 () Bool)

(declare-fun call!193994 () Bool)

(assert (=> bm!193990 (= call!193994 (isEmptyLang!239 (ite c!481391 lt!1030669 lt!1030668)))))

(declare-fun bm!193991 () Bool)

(declare-fun call!194002 () Bool)

(assert (=> bm!193991 (= call!194002 call!193998)))

(declare-fun b!2943457 () Bool)

(declare-fun c!481390 () Bool)

(assert (=> b!2943457 (= c!481390 ((_ is EmptyExpr!9117) (regOne!18746 r!17423)))))

(assert (=> b!2943457 (= e!1854713 e!1854706)))

(declare-fun b!2943458 () Bool)

(declare-fun e!1854715 () Regex!9117)

(assert (=> b!2943458 (= e!1854715 (Star!9117 lt!1030671))))

(declare-fun b!2943459 () Bool)

(declare-fun e!1854698 () Bool)

(assert (=> b!2943459 (= e!1854698 call!194002)))

(declare-fun bm!193992 () Bool)

(declare-fun call!193997 () Regex!9117)

(assert (=> bm!193992 (= call!193997 (simplify!122 (ite c!481391 (regTwo!18747 (regOne!18746 r!17423)) (regOne!18746 (regOne!18746 r!17423)))))))

(declare-fun b!2943460 () Bool)

(declare-fun e!1854707 () Regex!9117)

(declare-fun e!1854701 () Regex!9117)

(assert (=> b!2943460 (= e!1854707 e!1854701)))

(assert (=> b!2943460 (= lt!1030667 call!193996)))

(assert (=> b!2943460 (= lt!1030669 call!193997)))

(declare-fun c!481395 () Bool)

(assert (=> b!2943460 (= c!481395 call!194002)))

(declare-fun bm!193993 () Bool)

(declare-fun call!193993 () Bool)

(assert (=> bm!193993 (= call!193993 (isEmptyExpr!320 (ite c!481389 lt!1030671 lt!1030670)))))

(declare-fun b!2943461 () Bool)

(declare-fun e!1854702 () Regex!9117)

(assert (=> b!2943461 (= e!1854702 (Concat!14438 lt!1030668 lt!1030670))))

(declare-fun bm!193994 () Bool)

(assert (=> bm!193994 (= call!193995 (simplify!122 (ite c!481389 (reg!9446 (regOne!18746 r!17423)) (ite c!481391 (regOne!18747 (regOne!18746 r!17423)) (regTwo!18746 (regOne!18746 r!17423))))))))

(declare-fun b!2943462 () Bool)

(declare-fun e!1854700 () Bool)

(assert (=> b!2943462 (= e!1854700 call!193993)))

(declare-fun b!2943463 () Bool)

(assert (=> b!2943463 (= e!1854705 e!1854702)))

(declare-fun c!481400 () Bool)

(assert (=> b!2943463 (= c!481400 call!193993)))

(declare-fun b!2943464 () Bool)

(assert (=> b!2943464 (= e!1854707 e!1854708)))

(assert (=> b!2943464 (= lt!1030668 call!193997)))

(assert (=> b!2943464 (= lt!1030670 call!193996)))

(declare-fun res!1214778 () Bool)

(assert (=> b!2943464 (= res!1214778 call!193994)))

(assert (=> b!2943464 (=> res!1214778 e!1854698)))

(declare-fun c!481387 () Bool)

(assert (=> b!2943464 (= c!481387 e!1854698)))

(declare-fun b!2943465 () Bool)

(assert (=> b!2943465 (= e!1854715 EmptyExpr!9117)))

(declare-fun b!2943466 () Bool)

(assert (=> b!2943466 (= e!1854699 (= (nullable!2889 lt!1030666) (nullable!2889 (regOne!18746 r!17423))))))

(declare-fun b!2943467 () Bool)

(assert (=> b!2943467 (= e!1854702 lt!1030668)))

(declare-fun b!2943468 () Bool)

(assert (=> b!2943468 (= e!1854697 e!1854713)))

(declare-fun c!481393 () Bool)

(assert (=> b!2943468 (= c!481393 ((_ is ElementMatch!9117) (regOne!18746 r!17423)))))

(declare-fun b!2943469 () Bool)

(assert (=> b!2943469 (= c!481391 ((_ is Union!9117) (regOne!18746 r!17423)))))

(assert (=> b!2943469 (= e!1854703 e!1854707)))

(declare-fun b!2943470 () Bool)

(assert (=> b!2943470 (= e!1854697 EmptyLang!9117)))

(declare-fun b!2943472 () Bool)

(declare-fun c!481388 () Bool)

(assert (=> b!2943472 (= c!481388 call!193994)))

(assert (=> b!2943472 (= e!1854701 e!1854704)))

(declare-fun b!2943473 () Bool)

(assert (=> b!2943473 (= e!1854701 lt!1030669)))

(declare-fun b!2943475 () Bool)

(assert (=> b!2943475 (= e!1854706 EmptyExpr!9117)))

(declare-fun b!2943477 () Bool)

(declare-fun c!481394 () Bool)

(assert (=> b!2943477 (= c!481394 e!1854700)))

(declare-fun res!1214779 () Bool)

(assert (=> b!2943477 (=> res!1214779 e!1854700)))

(assert (=> b!2943477 (= res!1214779 call!193998)))

(assert (=> b!2943477 (= lt!1030671 call!193995)))

(assert (=> b!2943477 (= e!1854703 e!1854715)))

(assert (= (and d!840364 c!481396) b!2943470))

(assert (= (and d!840364 (not c!481396)) b!2943468))

(assert (= (and b!2943468 c!481393) b!2943456))

(assert (= (and b!2943468 (not c!481393)) b!2943457))

(assert (= (and b!2943457 c!481390) b!2943475))

(assert (= (and b!2943457 (not c!481390)) b!2943453))

(assert (= (and b!2943453 c!481389) b!2943477))

(assert (= (and b!2943453 (not c!481389)) b!2943469))

(assert (= (and b!2943477 (not res!1214779)) b!2943462))

(assert (= (and b!2943477 c!481394) b!2943465))

(assert (= (and b!2943477 (not c!481394)) b!2943458))

(assert (= (and b!2943469 c!481391) b!2943460))

(assert (= (and b!2943469 (not c!481391)) b!2943464))

(assert (= (and b!2943460 c!481395) b!2943473))

(assert (= (and b!2943460 (not c!481395)) b!2943472))

(assert (= (and b!2943472 c!481388) b!2943454))

(assert (= (and b!2943472 (not c!481388)) b!2943452))

(assert (= (and b!2943464 (not res!1214778)) b!2943459))

(assert (= (and b!2943464 c!481387) b!2943450))

(assert (= (and b!2943464 (not c!481387)) b!2943455))

(assert (= (and b!2943455 c!481392) b!2943451))

(assert (= (and b!2943455 (not c!481392)) b!2943463))

(assert (= (and b!2943463 c!481400) b!2943467))

(assert (= (and b!2943463 (not c!481400)) b!2943461))

(assert (= (or b!2943460 b!2943464) bm!193988))

(assert (= (or b!2943460 b!2943464) bm!193992))

(assert (= (or b!2943460 b!2943459) bm!193991))

(assert (= (or b!2943472 b!2943464) bm!193990))

(assert (= (or b!2943462 b!2943463) bm!193993))

(assert (= (or b!2943477 bm!193988) bm!193994))

(assert (= (or b!2943477 bm!193991) bm!193989))

(assert (= (and d!840364 res!1214777) b!2943466))

(declare-fun m!3326611 () Bool)

(assert (=> bm!193994 m!3326611))

(declare-fun m!3326613 () Bool)

(assert (=> d!840364 m!3326613))

(assert (=> d!840364 m!3326551))

(declare-fun m!3326615 () Bool)

(assert (=> bm!193990 m!3326615))

(declare-fun m!3326617 () Bool)

(assert (=> b!2943466 m!3326617))

(declare-fun m!3326619 () Bool)

(assert (=> b!2943466 m!3326619))

(declare-fun m!3326621 () Bool)

(assert (=> bm!193993 m!3326621))

(declare-fun m!3326623 () Bool)

(assert (=> b!2943455 m!3326623))

(declare-fun m!3326625 () Bool)

(assert (=> bm!193989 m!3326625))

(declare-fun m!3326627 () Bool)

(assert (=> bm!193992 m!3326627))

(assert (=> b!2943289 d!840364))

(declare-fun b!2943565 () Bool)

(declare-fun e!1854768 () Bool)

(declare-fun e!1854771 () Bool)

(assert (=> b!2943565 (= e!1854768 e!1854771)))

(declare-fun res!1214803 () Bool)

(assert (=> b!2943565 (= res!1214803 (not (nullable!2889 (reg!9446 r!17423))))))

(assert (=> b!2943565 (=> (not res!1214803) (not e!1854771))))

(declare-fun b!2943566 () Bool)

(declare-fun res!1214806 () Bool)

(declare-fun e!1854772 () Bool)

(assert (=> b!2943566 (=> res!1214806 e!1854772)))

(assert (=> b!2943566 (= res!1214806 (not ((_ is Concat!14438) r!17423)))))

(declare-fun e!1854767 () Bool)

(assert (=> b!2943566 (= e!1854767 e!1854772)))

(declare-fun bm!194015 () Bool)

(declare-fun call!194022 () Bool)

(declare-fun call!194020 () Bool)

(assert (=> bm!194015 (= call!194022 call!194020)))

(declare-fun b!2943567 () Bool)

(declare-fun e!1854769 () Bool)

(assert (=> b!2943567 (= e!1854772 e!1854769)))

(declare-fun res!1214802 () Bool)

(assert (=> b!2943567 (=> (not res!1214802) (not e!1854769))))

(assert (=> b!2943567 (= res!1214802 call!194022)))

(declare-fun c!481433 () Bool)

(declare-fun bm!194016 () Bool)

(declare-fun c!481432 () Bool)

(assert (=> bm!194016 (= call!194020 (validRegex!3850 (ite c!481432 (reg!9446 r!17423) (ite c!481433 (regTwo!18747 r!17423) (regOne!18746 r!17423)))))))

(declare-fun bm!194017 () Bool)

(declare-fun call!194021 () Bool)

(assert (=> bm!194017 (= call!194021 (validRegex!3850 (ite c!481433 (regOne!18747 r!17423) (regTwo!18746 r!17423))))))

(declare-fun b!2943568 () Bool)

(assert (=> b!2943568 (= e!1854771 call!194020)))

(declare-fun d!840368 () Bool)

(declare-fun res!1214804 () Bool)

(declare-fun e!1854773 () Bool)

(assert (=> d!840368 (=> res!1214804 e!1854773)))

(assert (=> d!840368 (= res!1214804 ((_ is ElementMatch!9117) r!17423))))

(assert (=> d!840368 (= (validRegex!3850 r!17423) e!1854773)))

(declare-fun b!2943569 () Bool)

(declare-fun res!1214805 () Bool)

(declare-fun e!1854770 () Bool)

(assert (=> b!2943569 (=> (not res!1214805) (not e!1854770))))

(assert (=> b!2943569 (= res!1214805 call!194021)))

(assert (=> b!2943569 (= e!1854767 e!1854770)))

(declare-fun b!2943570 () Bool)

(assert (=> b!2943570 (= e!1854773 e!1854768)))

(assert (=> b!2943570 (= c!481432 ((_ is Star!9117) r!17423))))

(declare-fun b!2943571 () Bool)

(assert (=> b!2943571 (= e!1854769 call!194021)))

(declare-fun b!2943572 () Bool)

(assert (=> b!2943572 (= e!1854770 call!194022)))

(declare-fun b!2943573 () Bool)

(assert (=> b!2943573 (= e!1854768 e!1854767)))

(assert (=> b!2943573 (= c!481433 ((_ is Union!9117) r!17423))))

(assert (= (and d!840368 (not res!1214804)) b!2943570))

(assert (= (and b!2943570 c!481432) b!2943565))

(assert (= (and b!2943570 (not c!481432)) b!2943573))

(assert (= (and b!2943565 res!1214803) b!2943568))

(assert (= (and b!2943573 c!481433) b!2943569))

(assert (= (and b!2943573 (not c!481433)) b!2943566))

(assert (= (and b!2943569 res!1214805) b!2943572))

(assert (= (and b!2943566 (not res!1214806)) b!2943567))

(assert (= (and b!2943567 res!1214802) b!2943571))

(assert (= (or b!2943569 b!2943571) bm!194017))

(assert (= (or b!2943572 b!2943567) bm!194015))

(assert (= (or b!2943568 bm!194015) bm!194016))

(declare-fun m!3326647 () Bool)

(assert (=> b!2943565 m!3326647))

(declare-fun m!3326649 () Bool)

(assert (=> bm!194016 m!3326649))

(declare-fun m!3326651 () Bool)

(assert (=> bm!194017 m!3326651))

(assert (=> start!285752 d!840368))

(declare-fun d!840376 () Bool)

(assert (=> d!840376 (= (isEmptyLang!239 lt!1030631) ((_ is EmptyLang!9117) lt!1030631))))

(assert (=> b!2943296 d!840376))

(declare-fun b!2943602 () Bool)

(declare-fun res!1214830 () Bool)

(declare-fun e!1854793 () Bool)

(assert (=> b!2943602 (=> res!1214830 e!1854793)))

(declare-fun e!1854794 () Bool)

(assert (=> b!2943602 (= res!1214830 e!1854794)))

(declare-fun res!1214825 () Bool)

(assert (=> b!2943602 (=> (not res!1214825) (not e!1854794))))

(declare-fun lt!1030686 () Bool)

(assert (=> b!2943602 (= res!1214825 lt!1030686)))

(declare-fun b!2943603 () Bool)

(declare-fun res!1214828 () Bool)

(assert (=> b!2943603 (=> (not res!1214828) (not e!1854794))))

(declare-fun tail!4777 (List!34982) List!34982)

(assert (=> b!2943603 (= res!1214828 (isEmpty!19119 (tail!4777 s!11993)))))

(declare-fun b!2943604 () Bool)

(declare-fun res!1214826 () Bool)

(assert (=> b!2943604 (=> res!1214826 e!1854793)))

(assert (=> b!2943604 (= res!1214826 (not ((_ is ElementMatch!9117) lt!1030630)))))

(declare-fun e!1854791 () Bool)

(assert (=> b!2943604 (= e!1854791 e!1854793)))

(declare-fun b!2943605 () Bool)

(declare-fun res!1214824 () Bool)

(assert (=> b!2943605 (=> (not res!1214824) (not e!1854794))))

(declare-fun call!194025 () Bool)

(assert (=> b!2943605 (= res!1214824 (not call!194025))))

(declare-fun b!2943606 () Bool)

(declare-fun head!6551 (List!34982) C!18420)

(assert (=> b!2943606 (= e!1854794 (= (head!6551 s!11993) (c!481325 lt!1030630)))))

(declare-fun b!2943607 () Bool)

(declare-fun res!1214823 () Bool)

(declare-fun e!1854792 () Bool)

(assert (=> b!2943607 (=> res!1214823 e!1854792)))

(assert (=> b!2943607 (= res!1214823 (not (isEmpty!19119 (tail!4777 s!11993))))))

(declare-fun b!2943608 () Bool)

(assert (=> b!2943608 (= e!1854791 (not lt!1030686))))

(declare-fun b!2943609 () Bool)

(declare-fun e!1854788 () Bool)

(declare-fun derivativeStep!2492 (Regex!9117 C!18420) Regex!9117)

(assert (=> b!2943609 (= e!1854788 (matchR!3999 (derivativeStep!2492 lt!1030630 (head!6551 s!11993)) (tail!4777 s!11993)))))

(declare-fun b!2943610 () Bool)

(declare-fun e!1854789 () Bool)

(assert (=> b!2943610 (= e!1854789 (= lt!1030686 call!194025))))

(declare-fun d!840378 () Bool)

(assert (=> d!840378 e!1854789))

(declare-fun c!481442 () Bool)

(assert (=> d!840378 (= c!481442 ((_ is EmptyExpr!9117) lt!1030630))))

(assert (=> d!840378 (= lt!1030686 e!1854788)))

(declare-fun c!481441 () Bool)

(assert (=> d!840378 (= c!481441 (isEmpty!19119 s!11993))))

(assert (=> d!840378 (validRegex!3850 lt!1030630)))

(assert (=> d!840378 (= (matchR!3999 lt!1030630 s!11993) lt!1030686)))

(declare-fun b!2943611 () Bool)

(assert (=> b!2943611 (= e!1854788 (nullable!2889 lt!1030630))))

(declare-fun b!2943612 () Bool)

(assert (=> b!2943612 (= e!1854789 e!1854791)))

(declare-fun c!481440 () Bool)

(assert (=> b!2943612 (= c!481440 ((_ is EmptyLang!9117) lt!1030630))))

(declare-fun b!2943613 () Bool)

(declare-fun e!1854790 () Bool)

(assert (=> b!2943613 (= e!1854790 e!1854792)))

(declare-fun res!1214829 () Bool)

(assert (=> b!2943613 (=> res!1214829 e!1854792)))

(assert (=> b!2943613 (= res!1214829 call!194025)))

(declare-fun b!2943614 () Bool)

(assert (=> b!2943614 (= e!1854792 (not (= (head!6551 s!11993) (c!481325 lt!1030630))))))

(declare-fun b!2943615 () Bool)

(assert (=> b!2943615 (= e!1854793 e!1854790)))

(declare-fun res!1214827 () Bool)

(assert (=> b!2943615 (=> (not res!1214827) (not e!1854790))))

(assert (=> b!2943615 (= res!1214827 (not lt!1030686))))

(declare-fun bm!194020 () Bool)

(assert (=> bm!194020 (= call!194025 (isEmpty!19119 s!11993))))

(assert (= (and d!840378 c!481441) b!2943611))

(assert (= (and d!840378 (not c!481441)) b!2943609))

(assert (= (and d!840378 c!481442) b!2943610))

(assert (= (and d!840378 (not c!481442)) b!2943612))

(assert (= (and b!2943612 c!481440) b!2943608))

(assert (= (and b!2943612 (not c!481440)) b!2943604))

(assert (= (and b!2943604 (not res!1214826)) b!2943602))

(assert (= (and b!2943602 res!1214825) b!2943605))

(assert (= (and b!2943605 res!1214824) b!2943603))

(assert (= (and b!2943603 res!1214828) b!2943606))

(assert (= (and b!2943602 (not res!1214830)) b!2943615))

(assert (= (and b!2943615 res!1214827) b!2943613))

(assert (= (and b!2943613 (not res!1214829)) b!2943607))

(assert (= (and b!2943607 (not res!1214823)) b!2943614))

(assert (= (or b!2943610 b!2943605 b!2943613) bm!194020))

(declare-fun m!3326653 () Bool)

(assert (=> b!2943607 m!3326653))

(assert (=> b!2943607 m!3326653))

(declare-fun m!3326655 () Bool)

(assert (=> b!2943607 m!3326655))

(declare-fun m!3326657 () Bool)

(assert (=> b!2943614 m!3326657))

(assert (=> b!2943606 m!3326657))

(assert (=> b!2943603 m!3326653))

(assert (=> b!2943603 m!3326653))

(assert (=> b!2943603 m!3326655))

(assert (=> bm!194020 m!3326539))

(assert (=> d!840378 m!3326539))

(declare-fun m!3326659 () Bool)

(assert (=> d!840378 m!3326659))

(declare-fun m!3326661 () Bool)

(assert (=> b!2943611 m!3326661))

(assert (=> b!2943609 m!3326657))

(assert (=> b!2943609 m!3326657))

(declare-fun m!3326663 () Bool)

(assert (=> b!2943609 m!3326663))

(assert (=> b!2943609 m!3326653))

(assert (=> b!2943609 m!3326663))

(assert (=> b!2943609 m!3326653))

(declare-fun m!3326665 () Bool)

(assert (=> b!2943609 m!3326665))

(assert (=> b!2943295 d!840378))

(declare-fun b!2943616 () Bool)

(declare-fun e!1854796 () Bool)

(declare-fun e!1854799 () Bool)

(assert (=> b!2943616 (= e!1854796 e!1854799)))

(declare-fun res!1214832 () Bool)

(assert (=> b!2943616 (= res!1214832 (not (nullable!2889 (reg!9446 (regOne!18746 r!17423)))))))

(assert (=> b!2943616 (=> (not res!1214832) (not e!1854799))))

(declare-fun b!2943617 () Bool)

(declare-fun res!1214835 () Bool)

(declare-fun e!1854800 () Bool)

(assert (=> b!2943617 (=> res!1214835 e!1854800)))

(assert (=> b!2943617 (= res!1214835 (not ((_ is Concat!14438) (regOne!18746 r!17423))))))

(declare-fun e!1854795 () Bool)

(assert (=> b!2943617 (= e!1854795 e!1854800)))

(declare-fun bm!194021 () Bool)

(declare-fun call!194028 () Bool)

(declare-fun call!194026 () Bool)

(assert (=> bm!194021 (= call!194028 call!194026)))

(declare-fun b!2943618 () Bool)

(declare-fun e!1854797 () Bool)

(assert (=> b!2943618 (= e!1854800 e!1854797)))

(declare-fun res!1214831 () Bool)

(assert (=> b!2943618 (=> (not res!1214831) (not e!1854797))))

(assert (=> b!2943618 (= res!1214831 call!194028)))

(declare-fun c!481443 () Bool)

(declare-fun bm!194022 () Bool)

(declare-fun c!481444 () Bool)

(assert (=> bm!194022 (= call!194026 (validRegex!3850 (ite c!481443 (reg!9446 (regOne!18746 r!17423)) (ite c!481444 (regTwo!18747 (regOne!18746 r!17423)) (regOne!18746 (regOne!18746 r!17423))))))))

(declare-fun bm!194023 () Bool)

(declare-fun call!194027 () Bool)

(assert (=> bm!194023 (= call!194027 (validRegex!3850 (ite c!481444 (regOne!18747 (regOne!18746 r!17423)) (regTwo!18746 (regOne!18746 r!17423)))))))

(declare-fun b!2943619 () Bool)

(assert (=> b!2943619 (= e!1854799 call!194026)))

(declare-fun d!840380 () Bool)

(declare-fun res!1214833 () Bool)

(declare-fun e!1854801 () Bool)

(assert (=> d!840380 (=> res!1214833 e!1854801)))

(assert (=> d!840380 (= res!1214833 ((_ is ElementMatch!9117) (regOne!18746 r!17423)))))

(assert (=> d!840380 (= (validRegex!3850 (regOne!18746 r!17423)) e!1854801)))

(declare-fun b!2943620 () Bool)

(declare-fun res!1214834 () Bool)

(declare-fun e!1854798 () Bool)

(assert (=> b!2943620 (=> (not res!1214834) (not e!1854798))))

(assert (=> b!2943620 (= res!1214834 call!194027)))

(assert (=> b!2943620 (= e!1854795 e!1854798)))

(declare-fun b!2943621 () Bool)

(assert (=> b!2943621 (= e!1854801 e!1854796)))

(assert (=> b!2943621 (= c!481443 ((_ is Star!9117) (regOne!18746 r!17423)))))

(declare-fun b!2943622 () Bool)

(assert (=> b!2943622 (= e!1854797 call!194027)))

(declare-fun b!2943623 () Bool)

(assert (=> b!2943623 (= e!1854798 call!194028)))

(declare-fun b!2943624 () Bool)

(assert (=> b!2943624 (= e!1854796 e!1854795)))

(assert (=> b!2943624 (= c!481444 ((_ is Union!9117) (regOne!18746 r!17423)))))

(assert (= (and d!840380 (not res!1214833)) b!2943621))

(assert (= (and b!2943621 c!481443) b!2943616))

(assert (= (and b!2943621 (not c!481443)) b!2943624))

(assert (= (and b!2943616 res!1214832) b!2943619))

(assert (= (and b!2943624 c!481444) b!2943620))

(assert (= (and b!2943624 (not c!481444)) b!2943617))

(assert (= (and b!2943620 res!1214834) b!2943623))

(assert (= (and b!2943617 (not res!1214835)) b!2943618))

(assert (= (and b!2943618 res!1214831) b!2943622))

(assert (= (or b!2943620 b!2943622) bm!194023))

(assert (= (or b!2943623 b!2943618) bm!194021))

(assert (= (or b!2943619 bm!194021) bm!194022))

(declare-fun m!3326667 () Bool)

(assert (=> b!2943616 m!3326667))

(declare-fun m!3326669 () Bool)

(assert (=> bm!194022 m!3326669))

(declare-fun m!3326671 () Bool)

(assert (=> bm!194023 m!3326671))

(assert (=> b!2943295 d!840380))

(declare-fun d!840382 () Bool)

(assert (=> d!840382 (= (matchR!3999 (regOne!18746 r!17423) s!11993) (matchR!3999 (simplify!122 (regOne!18746 r!17423)) s!11993))))

(declare-fun lt!1030689 () Unit!48613)

(declare-fun choose!17404 (Regex!9117 List!34982) Unit!48613)

(assert (=> d!840382 (= lt!1030689 (choose!17404 (regOne!18746 r!17423) s!11993))))

(assert (=> d!840382 (validRegex!3850 (regOne!18746 r!17423))))

(assert (=> d!840382 (= (lemmaSimplifySound!104 (regOne!18746 r!17423) s!11993) lt!1030689)))

(declare-fun bs!525543 () Bool)

(assert (= bs!525543 d!840382))

(assert (=> bs!525543 m!3326537))

(declare-fun m!3326673 () Bool)

(assert (=> bs!525543 m!3326673))

(assert (=> bs!525543 m!3326553))

(assert (=> bs!525543 m!3326537))

(declare-fun m!3326675 () Bool)

(assert (=> bs!525543 m!3326675))

(assert (=> bs!525543 m!3326551))

(assert (=> b!2943295 d!840382))

(declare-fun b!2943625 () Bool)

(declare-fun res!1214843 () Bool)

(declare-fun e!1854807 () Bool)

(assert (=> b!2943625 (=> res!1214843 e!1854807)))

(declare-fun e!1854808 () Bool)

(assert (=> b!2943625 (= res!1214843 e!1854808)))

(declare-fun res!1214838 () Bool)

(assert (=> b!2943625 (=> (not res!1214838) (not e!1854808))))

(declare-fun lt!1030690 () Bool)

(assert (=> b!2943625 (= res!1214838 lt!1030690)))

(declare-fun b!2943626 () Bool)

(declare-fun res!1214841 () Bool)

(assert (=> b!2943626 (=> (not res!1214841) (not e!1854808))))

(assert (=> b!2943626 (= res!1214841 (isEmpty!19119 (tail!4777 s!11993)))))

(declare-fun b!2943627 () Bool)

(declare-fun res!1214839 () Bool)

(assert (=> b!2943627 (=> res!1214839 e!1854807)))

(assert (=> b!2943627 (= res!1214839 (not ((_ is ElementMatch!9117) (regOne!18746 r!17423))))))

(declare-fun e!1854805 () Bool)

(assert (=> b!2943627 (= e!1854805 e!1854807)))

(declare-fun b!2943628 () Bool)

(declare-fun res!1214837 () Bool)

(assert (=> b!2943628 (=> (not res!1214837) (not e!1854808))))

(declare-fun call!194029 () Bool)

(assert (=> b!2943628 (= res!1214837 (not call!194029))))

(declare-fun b!2943629 () Bool)

(assert (=> b!2943629 (= e!1854808 (= (head!6551 s!11993) (c!481325 (regOne!18746 r!17423))))))

(declare-fun b!2943630 () Bool)

(declare-fun res!1214836 () Bool)

(declare-fun e!1854806 () Bool)

(assert (=> b!2943630 (=> res!1214836 e!1854806)))

(assert (=> b!2943630 (= res!1214836 (not (isEmpty!19119 (tail!4777 s!11993))))))

(declare-fun b!2943631 () Bool)

(assert (=> b!2943631 (= e!1854805 (not lt!1030690))))

(declare-fun b!2943632 () Bool)

(declare-fun e!1854802 () Bool)

(assert (=> b!2943632 (= e!1854802 (matchR!3999 (derivativeStep!2492 (regOne!18746 r!17423) (head!6551 s!11993)) (tail!4777 s!11993)))))

(declare-fun b!2943633 () Bool)

(declare-fun e!1854803 () Bool)

(assert (=> b!2943633 (= e!1854803 (= lt!1030690 call!194029))))

(declare-fun d!840384 () Bool)

(assert (=> d!840384 e!1854803))

(declare-fun c!481447 () Bool)

(assert (=> d!840384 (= c!481447 ((_ is EmptyExpr!9117) (regOne!18746 r!17423)))))

(assert (=> d!840384 (= lt!1030690 e!1854802)))

(declare-fun c!481446 () Bool)

(assert (=> d!840384 (= c!481446 (isEmpty!19119 s!11993))))

(assert (=> d!840384 (validRegex!3850 (regOne!18746 r!17423))))

(assert (=> d!840384 (= (matchR!3999 (regOne!18746 r!17423) s!11993) lt!1030690)))

(declare-fun b!2943634 () Bool)

(assert (=> b!2943634 (= e!1854802 (nullable!2889 (regOne!18746 r!17423)))))

(declare-fun b!2943635 () Bool)

(assert (=> b!2943635 (= e!1854803 e!1854805)))

(declare-fun c!481445 () Bool)

(assert (=> b!2943635 (= c!481445 ((_ is EmptyLang!9117) (regOne!18746 r!17423)))))

(declare-fun b!2943636 () Bool)

(declare-fun e!1854804 () Bool)

(assert (=> b!2943636 (= e!1854804 e!1854806)))

(declare-fun res!1214842 () Bool)

(assert (=> b!2943636 (=> res!1214842 e!1854806)))

(assert (=> b!2943636 (= res!1214842 call!194029)))

(declare-fun b!2943637 () Bool)

(assert (=> b!2943637 (= e!1854806 (not (= (head!6551 s!11993) (c!481325 (regOne!18746 r!17423)))))))

(declare-fun b!2943638 () Bool)

(assert (=> b!2943638 (= e!1854807 e!1854804)))

(declare-fun res!1214840 () Bool)

(assert (=> b!2943638 (=> (not res!1214840) (not e!1854804))))

(assert (=> b!2943638 (= res!1214840 (not lt!1030690))))

(declare-fun bm!194024 () Bool)

(assert (=> bm!194024 (= call!194029 (isEmpty!19119 s!11993))))

(assert (= (and d!840384 c!481446) b!2943634))

(assert (= (and d!840384 (not c!481446)) b!2943632))

(assert (= (and d!840384 c!481447) b!2943633))

(assert (= (and d!840384 (not c!481447)) b!2943635))

(assert (= (and b!2943635 c!481445) b!2943631))

(assert (= (and b!2943635 (not c!481445)) b!2943627))

(assert (= (and b!2943627 (not res!1214839)) b!2943625))

(assert (= (and b!2943625 res!1214838) b!2943628))

(assert (= (and b!2943628 res!1214837) b!2943626))

(assert (= (and b!2943626 res!1214841) b!2943629))

(assert (= (and b!2943625 (not res!1214843)) b!2943638))

(assert (= (and b!2943638 res!1214840) b!2943636))

(assert (= (and b!2943636 (not res!1214842)) b!2943630))

(assert (= (and b!2943630 (not res!1214836)) b!2943637))

(assert (= (or b!2943633 b!2943628 b!2943636) bm!194024))

(assert (=> b!2943630 m!3326653))

(assert (=> b!2943630 m!3326653))

(assert (=> b!2943630 m!3326655))

(assert (=> b!2943637 m!3326657))

(assert (=> b!2943629 m!3326657))

(assert (=> b!2943626 m!3326653))

(assert (=> b!2943626 m!3326653))

(assert (=> b!2943626 m!3326655))

(assert (=> bm!194024 m!3326539))

(assert (=> d!840384 m!3326539))

(assert (=> d!840384 m!3326551))

(assert (=> b!2943634 m!3326619))

(assert (=> b!2943632 m!3326657))

(assert (=> b!2943632 m!3326657))

(declare-fun m!3326677 () Bool)

(assert (=> b!2943632 m!3326677))

(assert (=> b!2943632 m!3326653))

(assert (=> b!2943632 m!3326677))

(assert (=> b!2943632 m!3326653))

(declare-fun m!3326679 () Bool)

(assert (=> b!2943632 m!3326679))

(assert (=> b!2943295 d!840384))

(declare-fun b!2943639 () Bool)

(declare-fun res!1214851 () Bool)

(declare-fun e!1854814 () Bool)

(assert (=> b!2943639 (=> res!1214851 e!1854814)))

(declare-fun e!1854815 () Bool)

(assert (=> b!2943639 (= res!1214851 e!1854815)))

(declare-fun res!1214846 () Bool)

(assert (=> b!2943639 (=> (not res!1214846) (not e!1854815))))

(declare-fun lt!1030691 () Bool)

(assert (=> b!2943639 (= res!1214846 lt!1030691)))

(declare-fun b!2943640 () Bool)

(declare-fun res!1214849 () Bool)

(assert (=> b!2943640 (=> (not res!1214849) (not e!1854815))))

(assert (=> b!2943640 (= res!1214849 (isEmpty!19119 (tail!4777 Nil!34858)))))

(declare-fun b!2943641 () Bool)

(declare-fun res!1214847 () Bool)

(assert (=> b!2943641 (=> res!1214847 e!1854814)))

(assert (=> b!2943641 (= res!1214847 (not ((_ is ElementMatch!9117) (regTwo!18746 r!17423))))))

(declare-fun e!1854812 () Bool)

(assert (=> b!2943641 (= e!1854812 e!1854814)))

(declare-fun b!2943642 () Bool)

(declare-fun res!1214845 () Bool)

(assert (=> b!2943642 (=> (not res!1214845) (not e!1854815))))

(declare-fun call!194030 () Bool)

(assert (=> b!2943642 (= res!1214845 (not call!194030))))

(declare-fun b!2943643 () Bool)

(assert (=> b!2943643 (= e!1854815 (= (head!6551 Nil!34858) (c!481325 (regTwo!18746 r!17423))))))

(declare-fun b!2943644 () Bool)

(declare-fun res!1214844 () Bool)

(declare-fun e!1854813 () Bool)

(assert (=> b!2943644 (=> res!1214844 e!1854813)))

(assert (=> b!2943644 (= res!1214844 (not (isEmpty!19119 (tail!4777 Nil!34858))))))

(declare-fun b!2943645 () Bool)

(assert (=> b!2943645 (= e!1854812 (not lt!1030691))))

(declare-fun b!2943646 () Bool)

(declare-fun e!1854809 () Bool)

(assert (=> b!2943646 (= e!1854809 (matchR!3999 (derivativeStep!2492 (regTwo!18746 r!17423) (head!6551 Nil!34858)) (tail!4777 Nil!34858)))))

(declare-fun b!2943647 () Bool)

(declare-fun e!1854810 () Bool)

(assert (=> b!2943647 (= e!1854810 (= lt!1030691 call!194030))))

(declare-fun d!840386 () Bool)

(assert (=> d!840386 e!1854810))

(declare-fun c!481450 () Bool)

(assert (=> d!840386 (= c!481450 ((_ is EmptyExpr!9117) (regTwo!18746 r!17423)))))

(assert (=> d!840386 (= lt!1030691 e!1854809)))

(declare-fun c!481449 () Bool)

(assert (=> d!840386 (= c!481449 (isEmpty!19119 Nil!34858))))

(assert (=> d!840386 (validRegex!3850 (regTwo!18746 r!17423))))

(assert (=> d!840386 (= (matchR!3999 (regTwo!18746 r!17423) Nil!34858) lt!1030691)))

(declare-fun b!2943648 () Bool)

(assert (=> b!2943648 (= e!1854809 (nullable!2889 (regTwo!18746 r!17423)))))

(declare-fun b!2943649 () Bool)

(assert (=> b!2943649 (= e!1854810 e!1854812)))

(declare-fun c!481448 () Bool)

(assert (=> b!2943649 (= c!481448 ((_ is EmptyLang!9117) (regTwo!18746 r!17423)))))

(declare-fun b!2943650 () Bool)

(declare-fun e!1854811 () Bool)

(assert (=> b!2943650 (= e!1854811 e!1854813)))

(declare-fun res!1214850 () Bool)

(assert (=> b!2943650 (=> res!1214850 e!1854813)))

(assert (=> b!2943650 (= res!1214850 call!194030)))

(declare-fun b!2943651 () Bool)

(assert (=> b!2943651 (= e!1854813 (not (= (head!6551 Nil!34858) (c!481325 (regTwo!18746 r!17423)))))))

(declare-fun b!2943652 () Bool)

(assert (=> b!2943652 (= e!1854814 e!1854811)))

(declare-fun res!1214848 () Bool)

(assert (=> b!2943652 (=> (not res!1214848) (not e!1854811))))

(assert (=> b!2943652 (= res!1214848 (not lt!1030691))))

(declare-fun bm!194025 () Bool)

(assert (=> bm!194025 (= call!194030 (isEmpty!19119 Nil!34858))))

(assert (= (and d!840386 c!481449) b!2943648))

(assert (= (and d!840386 (not c!481449)) b!2943646))

(assert (= (and d!840386 c!481450) b!2943647))

(assert (= (and d!840386 (not c!481450)) b!2943649))

(assert (= (and b!2943649 c!481448) b!2943645))

(assert (= (and b!2943649 (not c!481448)) b!2943641))

(assert (= (and b!2943641 (not res!1214847)) b!2943639))

(assert (= (and b!2943639 res!1214846) b!2943642))

(assert (= (and b!2943642 res!1214845) b!2943640))

(assert (= (and b!2943640 res!1214849) b!2943643))

(assert (= (and b!2943639 (not res!1214851)) b!2943652))

(assert (= (and b!2943652 res!1214848) b!2943650))

(assert (= (and b!2943650 (not res!1214850)) b!2943644))

(assert (= (and b!2943644 (not res!1214844)) b!2943651))

(assert (= (or b!2943647 b!2943642 b!2943650) bm!194025))

(declare-fun m!3326681 () Bool)

(assert (=> b!2943644 m!3326681))

(assert (=> b!2943644 m!3326681))

(declare-fun m!3326683 () Bool)

(assert (=> b!2943644 m!3326683))

(declare-fun m!3326685 () Bool)

(assert (=> b!2943651 m!3326685))

(assert (=> b!2943643 m!3326685))

(assert (=> b!2943640 m!3326681))

(assert (=> b!2943640 m!3326681))

(assert (=> b!2943640 m!3326683))

(declare-fun m!3326687 () Bool)

(assert (=> bm!194025 m!3326687))

(assert (=> d!840386 m!3326687))

(assert (=> d!840386 m!3326575))

(assert (=> b!2943648 m!3326581))

(assert (=> b!2943646 m!3326685))

(assert (=> b!2943646 m!3326685))

(declare-fun m!3326689 () Bool)

(assert (=> b!2943646 m!3326689))

(assert (=> b!2943646 m!3326681))

(assert (=> b!2943646 m!3326689))

(assert (=> b!2943646 m!3326681))

(declare-fun m!3326691 () Bool)

(assert (=> b!2943646 m!3326691))

(assert (=> b!2943295 d!840386))

(declare-fun b!2943653 () Bool)

(declare-fun res!1214859 () Bool)

(declare-fun e!1854821 () Bool)

(assert (=> b!2943653 (=> res!1214859 e!1854821)))

(declare-fun e!1854822 () Bool)

(assert (=> b!2943653 (= res!1214859 e!1854822)))

(declare-fun res!1214854 () Bool)

(assert (=> b!2943653 (=> (not res!1214854) (not e!1854822))))

(declare-fun lt!1030692 () Bool)

(assert (=> b!2943653 (= res!1214854 lt!1030692)))

(declare-fun b!2943654 () Bool)

(declare-fun res!1214857 () Bool)

(assert (=> b!2943654 (=> (not res!1214857) (not e!1854822))))

(assert (=> b!2943654 (= res!1214857 (isEmpty!19119 (tail!4777 Nil!34858)))))

(declare-fun b!2943655 () Bool)

(declare-fun res!1214855 () Bool)

(assert (=> b!2943655 (=> res!1214855 e!1854821)))

(assert (=> b!2943655 (= res!1214855 (not ((_ is ElementMatch!9117) lt!1030631)))))

(declare-fun e!1854819 () Bool)

(assert (=> b!2943655 (= e!1854819 e!1854821)))

(declare-fun b!2943656 () Bool)

(declare-fun res!1214853 () Bool)

(assert (=> b!2943656 (=> (not res!1214853) (not e!1854822))))

(declare-fun call!194031 () Bool)

(assert (=> b!2943656 (= res!1214853 (not call!194031))))

(declare-fun b!2943657 () Bool)

(assert (=> b!2943657 (= e!1854822 (= (head!6551 Nil!34858) (c!481325 lt!1030631)))))

(declare-fun b!2943658 () Bool)

(declare-fun res!1214852 () Bool)

(declare-fun e!1854820 () Bool)

(assert (=> b!2943658 (=> res!1214852 e!1854820)))

(assert (=> b!2943658 (= res!1214852 (not (isEmpty!19119 (tail!4777 Nil!34858))))))

(declare-fun b!2943659 () Bool)

(assert (=> b!2943659 (= e!1854819 (not lt!1030692))))

(declare-fun b!2943660 () Bool)

(declare-fun e!1854816 () Bool)

(assert (=> b!2943660 (= e!1854816 (matchR!3999 (derivativeStep!2492 lt!1030631 (head!6551 Nil!34858)) (tail!4777 Nil!34858)))))

(declare-fun b!2943661 () Bool)

(declare-fun e!1854817 () Bool)

(assert (=> b!2943661 (= e!1854817 (= lt!1030692 call!194031))))

(declare-fun d!840388 () Bool)

(assert (=> d!840388 e!1854817))

(declare-fun c!481453 () Bool)

(assert (=> d!840388 (= c!481453 ((_ is EmptyExpr!9117) lt!1030631))))

(assert (=> d!840388 (= lt!1030692 e!1854816)))

(declare-fun c!481452 () Bool)

(assert (=> d!840388 (= c!481452 (isEmpty!19119 Nil!34858))))

(assert (=> d!840388 (validRegex!3850 lt!1030631)))

(assert (=> d!840388 (= (matchR!3999 lt!1030631 Nil!34858) lt!1030692)))

(declare-fun b!2943662 () Bool)

(assert (=> b!2943662 (= e!1854816 (nullable!2889 lt!1030631))))

(declare-fun b!2943663 () Bool)

(assert (=> b!2943663 (= e!1854817 e!1854819)))

(declare-fun c!481451 () Bool)

(assert (=> b!2943663 (= c!481451 ((_ is EmptyLang!9117) lt!1030631))))

(declare-fun b!2943664 () Bool)

(declare-fun e!1854818 () Bool)

(assert (=> b!2943664 (= e!1854818 e!1854820)))

(declare-fun res!1214858 () Bool)

(assert (=> b!2943664 (=> res!1214858 e!1854820)))

(assert (=> b!2943664 (= res!1214858 call!194031)))

(declare-fun b!2943665 () Bool)

(assert (=> b!2943665 (= e!1854820 (not (= (head!6551 Nil!34858) (c!481325 lt!1030631))))))

(declare-fun b!2943666 () Bool)

(assert (=> b!2943666 (= e!1854821 e!1854818)))

(declare-fun res!1214856 () Bool)

(assert (=> b!2943666 (=> (not res!1214856) (not e!1854818))))

(assert (=> b!2943666 (= res!1214856 (not lt!1030692))))

(declare-fun bm!194026 () Bool)

(assert (=> bm!194026 (= call!194031 (isEmpty!19119 Nil!34858))))

(assert (= (and d!840388 c!481452) b!2943662))

(assert (= (and d!840388 (not c!481452)) b!2943660))

(assert (= (and d!840388 c!481453) b!2943661))

(assert (= (and d!840388 (not c!481453)) b!2943663))

(assert (= (and b!2943663 c!481451) b!2943659))

(assert (= (and b!2943663 (not c!481451)) b!2943655))

(assert (= (and b!2943655 (not res!1214855)) b!2943653))

(assert (= (and b!2943653 res!1214854) b!2943656))

(assert (= (and b!2943656 res!1214853) b!2943654))

(assert (= (and b!2943654 res!1214857) b!2943657))

(assert (= (and b!2943653 (not res!1214859)) b!2943666))

(assert (= (and b!2943666 res!1214856) b!2943664))

(assert (= (and b!2943664 (not res!1214858)) b!2943658))

(assert (= (and b!2943658 (not res!1214852)) b!2943665))

(assert (= (or b!2943661 b!2943656 b!2943664) bm!194026))

(assert (=> b!2943658 m!3326681))

(assert (=> b!2943658 m!3326681))

(assert (=> b!2943658 m!3326683))

(assert (=> b!2943665 m!3326685))

(assert (=> b!2943657 m!3326685))

(assert (=> b!2943654 m!3326681))

(assert (=> b!2943654 m!3326681))

(assert (=> b!2943654 m!3326683))

(assert (=> bm!194026 m!3326687))

(assert (=> d!840388 m!3326687))

(declare-fun m!3326693 () Bool)

(assert (=> d!840388 m!3326693))

(declare-fun m!3326695 () Bool)

(assert (=> b!2943662 m!3326695))

(assert (=> b!2943660 m!3326685))

(assert (=> b!2943660 m!3326685))

(declare-fun m!3326697 () Bool)

(assert (=> b!2943660 m!3326697))

(assert (=> b!2943660 m!3326681))

(assert (=> b!2943660 m!3326697))

(assert (=> b!2943660 m!3326681))

(declare-fun m!3326699 () Bool)

(assert (=> b!2943660 m!3326699))

(assert (=> b!2943295 d!840388))

(declare-fun d!840390 () Bool)

(assert (=> d!840390 (= (matchR!3999 (regTwo!18746 r!17423) Nil!34858) (matchR!3999 (simplify!122 (regTwo!18746 r!17423)) Nil!34858))))

(declare-fun lt!1030693 () Unit!48613)

(assert (=> d!840390 (= lt!1030693 (choose!17404 (regTwo!18746 r!17423) Nil!34858))))

(assert (=> d!840390 (validRegex!3850 (regTwo!18746 r!17423))))

(assert (=> d!840390 (= (lemmaSimplifySound!104 (regTwo!18746 r!17423) Nil!34858) lt!1030693)))

(declare-fun bs!525544 () Bool)

(assert (= bs!525544 d!840390))

(assert (=> bs!525544 m!3326535))

(declare-fun m!3326701 () Bool)

(assert (=> bs!525544 m!3326701))

(assert (=> bs!525544 m!3326559))

(assert (=> bs!525544 m!3326535))

(declare-fun m!3326703 () Bool)

(assert (=> bs!525544 m!3326703))

(assert (=> bs!525544 m!3326575))

(assert (=> b!2943295 d!840390))

(declare-fun d!840392 () Bool)

(assert (=> d!840392 (= (isEmpty!19119 s!11993) ((_ is Nil!34858) s!11993))))

(assert (=> b!2943292 d!840392))

(declare-fun d!840394 () Bool)

(assert (=> d!840394 (= (isEmptyExpr!320 lt!1030631) ((_ is EmptyExpr!9117) lt!1030631))))

(assert (=> b!2943286 d!840394))

(declare-fun b!2943873 () Bool)

(assert (=> b!2943873 true))

(assert (=> b!2943873 true))

(declare-fun bs!525549 () Bool)

(declare-fun b!2943875 () Bool)

(assert (= bs!525549 (and b!2943875 b!2943873)))

(declare-fun lambda!109570 () Int)

(declare-fun lambda!109569 () Int)

(assert (=> bs!525549 (not (= lambda!109570 lambda!109569))))

(assert (=> b!2943875 true))

(assert (=> b!2943875 true))

(declare-fun b!2943866 () Bool)

(declare-fun e!1854922 () Bool)

(declare-fun e!1854919 () Bool)

(assert (=> b!2943866 (= e!1854922 e!1854919)))

(declare-fun c!481491 () Bool)

(assert (=> b!2943866 (= c!481491 ((_ is Star!9117) r!17423))))

(declare-fun b!2943867 () Bool)

(declare-fun e!1854923 () Bool)

(declare-fun e!1854920 () Bool)

(assert (=> b!2943867 (= e!1854923 e!1854920)))

(declare-fun res!1214950 () Bool)

(assert (=> b!2943867 (= res!1214950 (not ((_ is EmptyLang!9117) r!17423)))))

(assert (=> b!2943867 (=> (not res!1214950) (not e!1854920))))

(declare-fun d!840396 () Bool)

(declare-fun c!481489 () Bool)

(assert (=> d!840396 (= c!481489 ((_ is EmptyExpr!9117) r!17423))))

(assert (=> d!840396 (= (matchRSpec!1254 r!17423 s!11993) e!1854923)))

(declare-fun b!2943868 () Bool)

(declare-fun c!481490 () Bool)

(assert (=> b!2943868 (= c!481490 ((_ is Union!9117) r!17423))))

(declare-fun e!1854918 () Bool)

(assert (=> b!2943868 (= e!1854918 e!1854922)))

(declare-fun bm!194047 () Bool)

(declare-fun call!194052 () Bool)

(declare-fun Exists!1459 (Int) Bool)

(assert (=> bm!194047 (= call!194052 (Exists!1459 (ite c!481491 lambda!109569 lambda!109570)))))

(declare-fun b!2943869 () Bool)

(declare-fun c!481492 () Bool)

(assert (=> b!2943869 (= c!481492 ((_ is ElementMatch!9117) r!17423))))

(assert (=> b!2943869 (= e!1854920 e!1854918)))

(declare-fun b!2943870 () Bool)

(declare-fun e!1854921 () Bool)

(assert (=> b!2943870 (= e!1854921 (matchRSpec!1254 (regTwo!18747 r!17423) s!11993))))

(declare-fun b!2943871 () Bool)

(assert (=> b!2943871 (= e!1854918 (= s!11993 (Cons!34858 (c!481325 r!17423) Nil!34858)))))

(declare-fun b!2943872 () Bool)

(declare-fun res!1214952 () Bool)

(declare-fun e!1854924 () Bool)

(assert (=> b!2943872 (=> res!1214952 e!1854924)))

(declare-fun call!194053 () Bool)

(assert (=> b!2943872 (= res!1214952 call!194053)))

(assert (=> b!2943872 (= e!1854919 e!1854924)))

(assert (=> b!2943873 (= e!1854924 call!194052)))

(declare-fun b!2943874 () Bool)

(assert (=> b!2943874 (= e!1854923 call!194053)))

(declare-fun bm!194048 () Bool)

(assert (=> bm!194048 (= call!194053 (isEmpty!19119 s!11993))))

(assert (=> b!2943875 (= e!1854919 call!194052)))

(declare-fun b!2943876 () Bool)

(assert (=> b!2943876 (= e!1854922 e!1854921)))

(declare-fun res!1214951 () Bool)

(assert (=> b!2943876 (= res!1214951 (matchRSpec!1254 (regOne!18747 r!17423) s!11993))))

(assert (=> b!2943876 (=> res!1214951 e!1854921)))

(assert (= (and d!840396 c!481489) b!2943874))

(assert (= (and d!840396 (not c!481489)) b!2943867))

(assert (= (and b!2943867 res!1214950) b!2943869))

(assert (= (and b!2943869 c!481492) b!2943871))

(assert (= (and b!2943869 (not c!481492)) b!2943868))

(assert (= (and b!2943868 c!481490) b!2943876))

(assert (= (and b!2943868 (not c!481490)) b!2943866))

(assert (= (and b!2943876 (not res!1214951)) b!2943870))

(assert (= (and b!2943866 c!481491) b!2943872))

(assert (= (and b!2943866 (not c!481491)) b!2943875))

(assert (= (and b!2943872 (not res!1214952)) b!2943873))

(assert (= (or b!2943873 b!2943875) bm!194047))

(assert (= (or b!2943874 b!2943872) bm!194048))

(declare-fun m!3326771 () Bool)

(assert (=> bm!194047 m!3326771))

(declare-fun m!3326773 () Bool)

(assert (=> b!2943870 m!3326773))

(assert (=> bm!194048 m!3326539))

(declare-fun m!3326775 () Bool)

(assert (=> b!2943876 m!3326775))

(assert (=> b!2943293 d!840396))

(declare-fun b!2943881 () Bool)

(declare-fun res!1214960 () Bool)

(declare-fun e!1854930 () Bool)

(assert (=> b!2943881 (=> res!1214960 e!1854930)))

(declare-fun e!1854931 () Bool)

(assert (=> b!2943881 (= res!1214960 e!1854931)))

(declare-fun res!1214955 () Bool)

(assert (=> b!2943881 (=> (not res!1214955) (not e!1854931))))

(declare-fun lt!1030708 () Bool)

(assert (=> b!2943881 (= res!1214955 lt!1030708)))

(declare-fun b!2943882 () Bool)

(declare-fun res!1214958 () Bool)

(assert (=> b!2943882 (=> (not res!1214958) (not e!1854931))))

(assert (=> b!2943882 (= res!1214958 (isEmpty!19119 (tail!4777 s!11993)))))

(declare-fun b!2943883 () Bool)

(declare-fun res!1214956 () Bool)

(assert (=> b!2943883 (=> res!1214956 e!1854930)))

(assert (=> b!2943883 (= res!1214956 (not ((_ is ElementMatch!9117) r!17423)))))

(declare-fun e!1854928 () Bool)

(assert (=> b!2943883 (= e!1854928 e!1854930)))

(declare-fun b!2943884 () Bool)

(declare-fun res!1214954 () Bool)

(assert (=> b!2943884 (=> (not res!1214954) (not e!1854931))))

(declare-fun call!194054 () Bool)

(assert (=> b!2943884 (= res!1214954 (not call!194054))))

(declare-fun b!2943885 () Bool)

(assert (=> b!2943885 (= e!1854931 (= (head!6551 s!11993) (c!481325 r!17423)))))

(declare-fun b!2943886 () Bool)

(declare-fun res!1214953 () Bool)

(declare-fun e!1854929 () Bool)

(assert (=> b!2943886 (=> res!1214953 e!1854929)))

(assert (=> b!2943886 (= res!1214953 (not (isEmpty!19119 (tail!4777 s!11993))))))

(declare-fun b!2943887 () Bool)

(assert (=> b!2943887 (= e!1854928 (not lt!1030708))))

(declare-fun b!2943888 () Bool)

(declare-fun e!1854925 () Bool)

(assert (=> b!2943888 (= e!1854925 (matchR!3999 (derivativeStep!2492 r!17423 (head!6551 s!11993)) (tail!4777 s!11993)))))

(declare-fun b!2943889 () Bool)

(declare-fun e!1854926 () Bool)

(assert (=> b!2943889 (= e!1854926 (= lt!1030708 call!194054))))

(declare-fun d!840418 () Bool)

(assert (=> d!840418 e!1854926))

(declare-fun c!481495 () Bool)

(assert (=> d!840418 (= c!481495 ((_ is EmptyExpr!9117) r!17423))))

(assert (=> d!840418 (= lt!1030708 e!1854925)))

(declare-fun c!481494 () Bool)

(assert (=> d!840418 (= c!481494 (isEmpty!19119 s!11993))))

(assert (=> d!840418 (validRegex!3850 r!17423)))

(assert (=> d!840418 (= (matchR!3999 r!17423 s!11993) lt!1030708)))

(declare-fun b!2943890 () Bool)

(assert (=> b!2943890 (= e!1854925 (nullable!2889 r!17423))))

(declare-fun b!2943891 () Bool)

(assert (=> b!2943891 (= e!1854926 e!1854928)))

(declare-fun c!481493 () Bool)

(assert (=> b!2943891 (= c!481493 ((_ is EmptyLang!9117) r!17423))))

(declare-fun b!2943892 () Bool)

(declare-fun e!1854927 () Bool)

(assert (=> b!2943892 (= e!1854927 e!1854929)))

(declare-fun res!1214959 () Bool)

(assert (=> b!2943892 (=> res!1214959 e!1854929)))

(assert (=> b!2943892 (= res!1214959 call!194054)))

(declare-fun b!2943893 () Bool)

(assert (=> b!2943893 (= e!1854929 (not (= (head!6551 s!11993) (c!481325 r!17423))))))

(declare-fun b!2943894 () Bool)

(assert (=> b!2943894 (= e!1854930 e!1854927)))

(declare-fun res!1214957 () Bool)

(assert (=> b!2943894 (=> (not res!1214957) (not e!1854927))))

(assert (=> b!2943894 (= res!1214957 (not lt!1030708))))

(declare-fun bm!194049 () Bool)

(assert (=> bm!194049 (= call!194054 (isEmpty!19119 s!11993))))

(assert (= (and d!840418 c!481494) b!2943890))

(assert (= (and d!840418 (not c!481494)) b!2943888))

(assert (= (and d!840418 c!481495) b!2943889))

(assert (= (and d!840418 (not c!481495)) b!2943891))

(assert (= (and b!2943891 c!481493) b!2943887))

(assert (= (and b!2943891 (not c!481493)) b!2943883))

(assert (= (and b!2943883 (not res!1214956)) b!2943881))

(assert (= (and b!2943881 res!1214955) b!2943884))

(assert (= (and b!2943884 res!1214954) b!2943882))

(assert (= (and b!2943882 res!1214958) b!2943885))

(assert (= (and b!2943881 (not res!1214960)) b!2943894))

(assert (= (and b!2943894 res!1214957) b!2943892))

(assert (= (and b!2943892 (not res!1214959)) b!2943886))

(assert (= (and b!2943886 (not res!1214953)) b!2943893))

(assert (= (or b!2943889 b!2943884 b!2943892) bm!194049))

(assert (=> b!2943886 m!3326653))

(assert (=> b!2943886 m!3326653))

(assert (=> b!2943886 m!3326655))

(assert (=> b!2943893 m!3326657))

(assert (=> b!2943885 m!3326657))

(assert (=> b!2943882 m!3326653))

(assert (=> b!2943882 m!3326653))

(assert (=> b!2943882 m!3326655))

(assert (=> bm!194049 m!3326539))

(assert (=> d!840418 m!3326539))

(assert (=> d!840418 m!3326563))

(declare-fun m!3326777 () Bool)

(assert (=> b!2943890 m!3326777))

(assert (=> b!2943888 m!3326657))

(assert (=> b!2943888 m!3326657))

(declare-fun m!3326779 () Bool)

(assert (=> b!2943888 m!3326779))

(assert (=> b!2943888 m!3326653))

(assert (=> b!2943888 m!3326779))

(assert (=> b!2943888 m!3326653))

(declare-fun m!3326781 () Bool)

(assert (=> b!2943888 m!3326781))

(assert (=> b!2943293 d!840418))

(declare-fun d!840420 () Bool)

(assert (=> d!840420 (= (matchR!3999 r!17423 s!11993) (matchRSpec!1254 r!17423 s!11993))))

(declare-fun lt!1030711 () Unit!48613)

(declare-fun choose!17405 (Regex!9117 List!34982) Unit!48613)

(assert (=> d!840420 (= lt!1030711 (choose!17405 r!17423 s!11993))))

(assert (=> d!840420 (validRegex!3850 r!17423)))

(assert (=> d!840420 (= (mainMatchTheorem!1254 r!17423 s!11993) lt!1030711)))

(declare-fun bs!525550 () Bool)

(assert (= bs!525550 d!840420))

(assert (=> bs!525550 m!3326543))

(assert (=> bs!525550 m!3326541))

(declare-fun m!3326783 () Bool)

(assert (=> bs!525550 m!3326783))

(assert (=> bs!525550 m!3326563))

(assert (=> b!2943293 d!840420))

(declare-fun d!840422 () Bool)

(assert (=> d!840422 (= (isEmptyExpr!320 lt!1030630) ((_ is EmptyExpr!9117) lt!1030630))))

(assert (=> b!2943288 d!840422))

(declare-fun b!2943906 () Bool)

(declare-fun e!1854934 () Bool)

(declare-fun tp!941835 () Bool)

(declare-fun tp!941834 () Bool)

(assert (=> b!2943906 (= e!1854934 (and tp!941835 tp!941834))))

(declare-fun b!2943905 () Bool)

(assert (=> b!2943905 (= e!1854934 tp_is_empty!15797)))

(assert (=> b!2943294 (= tp!941785 e!1854934)))

(declare-fun b!2943907 () Bool)

(declare-fun tp!941836 () Bool)

(assert (=> b!2943907 (= e!1854934 tp!941836)))

(declare-fun b!2943908 () Bool)

(declare-fun tp!941838 () Bool)

(declare-fun tp!941837 () Bool)

(assert (=> b!2943908 (= e!1854934 (and tp!941838 tp!941837))))

(assert (= (and b!2943294 ((_ is ElementMatch!9117) (reg!9446 r!17423))) b!2943905))

(assert (= (and b!2943294 ((_ is Concat!14438) (reg!9446 r!17423))) b!2943906))

(assert (= (and b!2943294 ((_ is Star!9117) (reg!9446 r!17423))) b!2943907))

(assert (= (and b!2943294 ((_ is Union!9117) (reg!9446 r!17423))) b!2943908))

(declare-fun b!2943910 () Bool)

(declare-fun e!1854935 () Bool)

(declare-fun tp!941840 () Bool)

(declare-fun tp!941839 () Bool)

(assert (=> b!2943910 (= e!1854935 (and tp!941840 tp!941839))))

(declare-fun b!2943909 () Bool)

(assert (=> b!2943909 (= e!1854935 tp_is_empty!15797)))

(assert (=> b!2943290 (= tp!941780 e!1854935)))

(declare-fun b!2943911 () Bool)

(declare-fun tp!941841 () Bool)

(assert (=> b!2943911 (= e!1854935 tp!941841)))

(declare-fun b!2943912 () Bool)

(declare-fun tp!941843 () Bool)

(declare-fun tp!941842 () Bool)

(assert (=> b!2943912 (= e!1854935 (and tp!941843 tp!941842))))

(assert (= (and b!2943290 ((_ is ElementMatch!9117) (regOne!18746 r!17423))) b!2943909))

(assert (= (and b!2943290 ((_ is Concat!14438) (regOne!18746 r!17423))) b!2943910))

(assert (= (and b!2943290 ((_ is Star!9117) (regOne!18746 r!17423))) b!2943911))

(assert (= (and b!2943290 ((_ is Union!9117) (regOne!18746 r!17423))) b!2943912))

(declare-fun b!2943914 () Bool)

(declare-fun e!1854936 () Bool)

(declare-fun tp!941845 () Bool)

(declare-fun tp!941844 () Bool)

(assert (=> b!2943914 (= e!1854936 (and tp!941845 tp!941844))))

(declare-fun b!2943913 () Bool)

(assert (=> b!2943913 (= e!1854936 tp_is_empty!15797)))

(assert (=> b!2943290 (= tp!941781 e!1854936)))

(declare-fun b!2943915 () Bool)

(declare-fun tp!941846 () Bool)

(assert (=> b!2943915 (= e!1854936 tp!941846)))

(declare-fun b!2943916 () Bool)

(declare-fun tp!941848 () Bool)

(declare-fun tp!941847 () Bool)

(assert (=> b!2943916 (= e!1854936 (and tp!941848 tp!941847))))

(assert (= (and b!2943290 ((_ is ElementMatch!9117) (regTwo!18746 r!17423))) b!2943913))

(assert (= (and b!2943290 ((_ is Concat!14438) (regTwo!18746 r!17423))) b!2943914))

(assert (= (and b!2943290 ((_ is Star!9117) (regTwo!18746 r!17423))) b!2943915))

(assert (= (and b!2943290 ((_ is Union!9117) (regTwo!18746 r!17423))) b!2943916))

(declare-fun b!2943921 () Bool)

(declare-fun e!1854939 () Bool)

(declare-fun tp!941851 () Bool)

(assert (=> b!2943921 (= e!1854939 (and tp_is_empty!15797 tp!941851))))

(assert (=> b!2943297 (= tp!941783 e!1854939)))

(assert (= (and b!2943297 ((_ is Cons!34858) (t!234047 s!11993))) b!2943921))

(declare-fun b!2943923 () Bool)

(declare-fun e!1854940 () Bool)

(declare-fun tp!941853 () Bool)

(declare-fun tp!941852 () Bool)

(assert (=> b!2943923 (= e!1854940 (and tp!941853 tp!941852))))

(declare-fun b!2943922 () Bool)

(assert (=> b!2943922 (= e!1854940 tp_is_empty!15797)))

(assert (=> b!2943291 (= tp!941784 e!1854940)))

(declare-fun b!2943924 () Bool)

(declare-fun tp!941854 () Bool)

(assert (=> b!2943924 (= e!1854940 tp!941854)))

(declare-fun b!2943925 () Bool)

(declare-fun tp!941856 () Bool)

(declare-fun tp!941855 () Bool)

(assert (=> b!2943925 (= e!1854940 (and tp!941856 tp!941855))))

(assert (= (and b!2943291 ((_ is ElementMatch!9117) (regOne!18747 r!17423))) b!2943922))

(assert (= (and b!2943291 ((_ is Concat!14438) (regOne!18747 r!17423))) b!2943923))

(assert (= (and b!2943291 ((_ is Star!9117) (regOne!18747 r!17423))) b!2943924))

(assert (= (and b!2943291 ((_ is Union!9117) (regOne!18747 r!17423))) b!2943925))

(declare-fun b!2943927 () Bool)

(declare-fun e!1854941 () Bool)

(declare-fun tp!941858 () Bool)

(declare-fun tp!941857 () Bool)

(assert (=> b!2943927 (= e!1854941 (and tp!941858 tp!941857))))

(declare-fun b!2943926 () Bool)

(assert (=> b!2943926 (= e!1854941 tp_is_empty!15797)))

(assert (=> b!2943291 (= tp!941782 e!1854941)))

(declare-fun b!2943928 () Bool)

(declare-fun tp!941859 () Bool)

(assert (=> b!2943928 (= e!1854941 tp!941859)))

(declare-fun b!2943929 () Bool)

(declare-fun tp!941861 () Bool)

(declare-fun tp!941860 () Bool)

(assert (=> b!2943929 (= e!1854941 (and tp!941861 tp!941860))))

(assert (= (and b!2943291 ((_ is ElementMatch!9117) (regTwo!18747 r!17423))) b!2943926))

(assert (= (and b!2943291 ((_ is Concat!14438) (regTwo!18747 r!17423))) b!2943927))

(assert (= (and b!2943291 ((_ is Star!9117) (regTwo!18747 r!17423))) b!2943928))

(assert (= (and b!2943291 ((_ is Union!9117) (regTwo!18747 r!17423))) b!2943929))

(check-sat (not b!2943910) (not b!2943654) (not b!2943611) (not b!2943648) (not bm!194024) (not b!2943630) (not b!2943662) (not b!2943925) (not d!840382) (not bm!193987) (not bm!194016) (not b!2943921) (not b!2943657) (not b!2943466) (not b!2943886) (not bm!193982) (not b!2943907) (not d!840384) (not d!840420) (not b!2943924) (not b!2943634) (not b!2943893) (not b!2943888) (not b!2943626) (not d!840386) (not d!840358) (not bm!193986) (not bm!193994) (not d!840364) (not bm!193989) (not b!2943906) (not b!2943640) (not b!2943928) (not b!2943885) (not bm!194026) (not bm!194048) (not bm!193992) (not b!2943441) (not b!2943614) (not bm!194049) (not bm!194047) (not b!2943876) (not b!2943916) (not b!2943616) (not b!2943660) (not b!2943923) (not d!840390) (not b!2943911) (not b!2943609) (not b!2943651) (not b!2943565) (not d!840388) (not bm!194022) (not b!2943455) (not b!2943915) (not bm!193990) (not b!2943644) (not b!2943603) (not b!2943430) (not b!2943908) (not b!2943607) (not bm!194020) (not b!2943665) (not b!2943637) (not bm!193983) (not b!2943912) (not b!2943629) (not d!840378) (not b!2943643) (not bm!193985) (not b!2943658) (not b!2943882) (not b!2943890) (not b!2943632) (not b!2943927) (not bm!194017) (not b!2943914) (not bm!193993) (not b!2943606) (not bm!194025) tp_is_empty!15797 (not b!2943646) (not d!840418) (not b!2943929) (not bm!194023) (not b!2943870))
(check-sat)
