; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245456 () Bool)

(assert start!245456)

(declare-fun e!1594662 () Bool)

(declare-datatypes ((C!15152 0))(
  ( (C!15153 (val!9228 Int)) )
))
(declare-datatypes ((Regex!7497 0))(
  ( (ElementMatch!7497 (c!401317 C!15152)) (Concat!12193 (regOne!15506 Regex!7497) (regTwo!15506 Regex!7497)) (EmptyExpr!7497) (Star!7497 (reg!7826 Regex!7497)) (EmptyLang!7497) (Union!7497 (regOne!15507 Regex!7497) (regTwo!15507 Regex!7497)) )
))
(declare-fun lt!899062 () Regex!7497)

(declare-fun c!14016 () C!15152)

(declare-fun r!27340 () Regex!7497)

(declare-fun b!2517405 () Bool)

(declare-fun derivativeStep!2066 (Regex!7497 C!15152) Regex!7497)

(assert (=> b!2517405 (= e!1594662 (not (= lt!899062 (Concat!12193 (derivativeStep!2066 (reg!7826 r!27340) c!14016) (Star!7497 (reg!7826 r!27340))))))))

(declare-fun b!2517406 () Bool)

(declare-fun res!1063892 () Bool)

(assert (=> b!2517406 (=> (not res!1063892) (not e!1594662))))

(get-info :version)

(assert (=> b!2517406 (= res!1063892 (and (not ((_ is EmptyExpr!7497) r!27340)) (not ((_ is EmptyLang!7497) r!27340)) (not ((_ is ElementMatch!7497) r!27340)) (not ((_ is Union!7497) r!27340)) ((_ is Star!7497) r!27340)))))

(declare-fun b!2517407 () Bool)

(declare-fun e!1594661 () Bool)

(declare-fun tp_is_empty!12849 () Bool)

(assert (=> b!2517407 (= e!1594661 tp_is_empty!12849)))

(declare-fun b!2517408 () Bool)

(declare-fun tp!804663 () Bool)

(assert (=> b!2517408 (= e!1594661 tp!804663)))

(declare-fun b!2517409 () Bool)

(declare-fun tp!804666 () Bool)

(declare-fun tp!804661 () Bool)

(assert (=> b!2517409 (= e!1594661 (and tp!804666 tp!804661))))

(declare-fun b!2517411 () Bool)

(declare-fun tp!804664 () Bool)

(declare-fun tp!804665 () Bool)

(assert (=> b!2517411 (= e!1594661 (and tp!804664 tp!804665))))

(declare-fun b!2517412 () Bool)

(declare-fun e!1594659 () Bool)

(assert (=> b!2517412 (= e!1594659 e!1594662)))

(declare-fun res!1063893 () Bool)

(assert (=> b!2517412 (=> (not res!1063893) (not e!1594662))))

(declare-datatypes ((List!29562 0))(
  ( (Nil!29462) (Cons!29462 (h!34882 C!15152) (t!211261 List!29562)) )
))
(declare-fun tl!4068 () List!29562)

(declare-fun nullable!2414 (Regex!7497) Bool)

(declare-fun derivative!192 (Regex!7497 List!29562) Regex!7497)

(assert (=> b!2517412 (= res!1063893 (nullable!2414 (derivative!192 lt!899062 tl!4068)))))

(assert (=> b!2517412 (= lt!899062 (derivativeStep!2066 r!27340 c!14016))))

(declare-fun res!1063894 () Bool)

(assert (=> start!245456 (=> (not res!1063894) (not e!1594659))))

(declare-fun validRegex!3123 (Regex!7497) Bool)

(assert (=> start!245456 (= res!1063894 (validRegex!3123 r!27340))))

(assert (=> start!245456 e!1594659))

(assert (=> start!245456 e!1594661))

(assert (=> start!245456 tp_is_empty!12849))

(declare-fun e!1594660 () Bool)

(assert (=> start!245456 e!1594660))

(declare-fun b!2517410 () Bool)

(declare-fun tp!804662 () Bool)

(assert (=> b!2517410 (= e!1594660 (and tp_is_empty!12849 tp!804662))))

(assert (= (and start!245456 res!1063894) b!2517412))

(assert (= (and b!2517412 res!1063893) b!2517406))

(assert (= (and b!2517406 res!1063892) b!2517405))

(assert (= (and start!245456 ((_ is ElementMatch!7497) r!27340)) b!2517407))

(assert (= (and start!245456 ((_ is Concat!12193) r!27340)) b!2517411))

(assert (= (and start!245456 ((_ is Star!7497) r!27340)) b!2517408))

(assert (= (and start!245456 ((_ is Union!7497) r!27340)) b!2517409))

(assert (= (and start!245456 ((_ is Cons!29462) tl!4068)) b!2517410))

(declare-fun m!2873567 () Bool)

(assert (=> b!2517405 m!2873567))

(declare-fun m!2873569 () Bool)

(assert (=> b!2517412 m!2873569))

(assert (=> b!2517412 m!2873569))

(declare-fun m!2873571 () Bool)

(assert (=> b!2517412 m!2873571))

(declare-fun m!2873573 () Bool)

(assert (=> b!2517412 m!2873573))

(declare-fun m!2873575 () Bool)

(assert (=> start!245456 m!2873575))

(check-sat (not b!2517408) (not start!245456) (not b!2517412) (not b!2517405) tp_is_empty!12849 (not b!2517409) (not b!2517410) (not b!2517411))
(check-sat)
(get-model)

(declare-fun d!717470 () Bool)

(declare-fun lt!899065 () Regex!7497)

(assert (=> d!717470 (validRegex!3123 lt!899065)))

(declare-fun e!1594697 () Regex!7497)

(assert (=> d!717470 (= lt!899065 e!1594697)))

(declare-fun c!401337 () Bool)

(assert (=> d!717470 (= c!401337 (or ((_ is EmptyExpr!7497) (reg!7826 r!27340)) ((_ is EmptyLang!7497) (reg!7826 r!27340))))))

(assert (=> d!717470 (validRegex!3123 (reg!7826 r!27340))))

(assert (=> d!717470 (= (derivativeStep!2066 (reg!7826 r!27340) c!14016) lt!899065)))

(declare-fun b!2517460 () Bool)

(declare-fun e!1594698 () Regex!7497)

(declare-fun call!156600 () Regex!7497)

(assert (=> b!2517460 (= e!1594698 (Union!7497 (Concat!12193 call!156600 (regTwo!15506 (reg!7826 r!27340))) EmptyLang!7497))))

(declare-fun bm!156592 () Bool)

(declare-fun call!156599 () Regex!7497)

(assert (=> bm!156592 (= call!156600 call!156599)))

(declare-fun b!2517461 () Bool)

(declare-fun e!1594694 () Regex!7497)

(assert (=> b!2517461 (= e!1594694 (Concat!12193 call!156599 (reg!7826 r!27340)))))

(declare-fun call!156597 () Regex!7497)

(declare-fun b!2517462 () Bool)

(assert (=> b!2517462 (= e!1594698 (Union!7497 (Concat!12193 call!156600 (regTwo!15506 (reg!7826 r!27340))) call!156597))))

(declare-fun bm!156593 () Bool)

(declare-fun call!156598 () Regex!7497)

(assert (=> bm!156593 (= call!156599 call!156598)))

(declare-fun b!2517463 () Bool)

(assert (=> b!2517463 (= e!1594697 EmptyLang!7497)))

(declare-fun b!2517464 () Bool)

(declare-fun e!1594695 () Regex!7497)

(assert (=> b!2517464 (= e!1594695 (ite (= c!14016 (c!401317 (reg!7826 r!27340))) EmptyExpr!7497 EmptyLang!7497))))

(declare-fun b!2517465 () Bool)

(declare-fun c!401335 () Bool)

(assert (=> b!2517465 (= c!401335 (nullable!2414 (regOne!15506 (reg!7826 r!27340))))))

(assert (=> b!2517465 (= e!1594694 e!1594698)))

(declare-fun b!2517466 () Bool)

(declare-fun c!401338 () Bool)

(assert (=> b!2517466 (= c!401338 ((_ is Union!7497) (reg!7826 r!27340)))))

(declare-fun e!1594696 () Regex!7497)

(assert (=> b!2517466 (= e!1594695 e!1594696)))

(declare-fun b!2517467 () Bool)

(assert (=> b!2517467 (= e!1594696 e!1594694)))

(declare-fun c!401336 () Bool)

(assert (=> b!2517467 (= c!401336 ((_ is Star!7497) (reg!7826 r!27340)))))

(declare-fun bm!156594 () Bool)

(assert (=> bm!156594 (= call!156598 (derivativeStep!2066 (ite c!401338 (regOne!15507 (reg!7826 r!27340)) (ite c!401336 (reg!7826 (reg!7826 r!27340)) (regOne!15506 (reg!7826 r!27340)))) c!14016))))

(declare-fun bm!156595 () Bool)

(assert (=> bm!156595 (= call!156597 (derivativeStep!2066 (ite c!401338 (regTwo!15507 (reg!7826 r!27340)) (regTwo!15506 (reg!7826 r!27340))) c!14016))))

(declare-fun b!2517468 () Bool)

(assert (=> b!2517468 (= e!1594697 e!1594695)))

(declare-fun c!401334 () Bool)

(assert (=> b!2517468 (= c!401334 ((_ is ElementMatch!7497) (reg!7826 r!27340)))))

(declare-fun b!2517469 () Bool)

(assert (=> b!2517469 (= e!1594696 (Union!7497 call!156598 call!156597))))

(assert (= (and d!717470 c!401337) b!2517463))

(assert (= (and d!717470 (not c!401337)) b!2517468))

(assert (= (and b!2517468 c!401334) b!2517464))

(assert (= (and b!2517468 (not c!401334)) b!2517466))

(assert (= (and b!2517466 c!401338) b!2517469))

(assert (= (and b!2517466 (not c!401338)) b!2517467))

(assert (= (and b!2517467 c!401336) b!2517461))

(assert (= (and b!2517467 (not c!401336)) b!2517465))

(assert (= (and b!2517465 c!401335) b!2517462))

(assert (= (and b!2517465 (not c!401335)) b!2517460))

(assert (= (or b!2517462 b!2517460) bm!156592))

(assert (= (or b!2517461 bm!156592) bm!156593))

(assert (= (or b!2517469 b!2517462) bm!156595))

(assert (= (or b!2517469 bm!156593) bm!156594))

(declare-fun m!2873583 () Bool)

(assert (=> d!717470 m!2873583))

(declare-fun m!2873585 () Bool)

(assert (=> d!717470 m!2873585))

(declare-fun m!2873587 () Bool)

(assert (=> b!2517465 m!2873587))

(declare-fun m!2873589 () Bool)

(assert (=> bm!156594 m!2873589))

(declare-fun m!2873591 () Bool)

(assert (=> bm!156595 m!2873591))

(assert (=> b!2517405 d!717470))

(declare-fun b!2517508 () Bool)

(declare-fun e!1594729 () Bool)

(declare-fun call!156616 () Bool)

(assert (=> b!2517508 (= e!1594729 call!156616)))

(declare-fun b!2517509 () Bool)

(declare-fun e!1594725 () Bool)

(declare-fun e!1594726 () Bool)

(assert (=> b!2517509 (= e!1594725 e!1594726)))

(declare-fun res!1063924 () Bool)

(assert (=> b!2517509 (= res!1063924 (not (nullable!2414 (reg!7826 r!27340))))))

(assert (=> b!2517509 (=> (not res!1063924) (not e!1594726))))

(declare-fun d!717476 () Bool)

(declare-fun res!1063920 () Bool)

(declare-fun e!1594728 () Bool)

(assert (=> d!717476 (=> res!1063920 e!1594728)))

(assert (=> d!717476 (= res!1063920 ((_ is ElementMatch!7497) r!27340))))

(assert (=> d!717476 (= (validRegex!3123 r!27340) e!1594728)))

(declare-fun b!2517510 () Bool)

(declare-fun call!156615 () Bool)

(assert (=> b!2517510 (= e!1594726 call!156615)))

(declare-fun b!2517511 () Bool)

(declare-fun e!1594727 () Bool)

(assert (=> b!2517511 (= e!1594725 e!1594727)))

(declare-fun c!401353 () Bool)

(assert (=> b!2517511 (= c!401353 ((_ is Union!7497) r!27340))))

(declare-fun bm!156610 () Bool)

(declare-fun call!156617 () Bool)

(assert (=> bm!156610 (= call!156617 (validRegex!3123 (ite c!401353 (regTwo!15507 r!27340) (regOne!15506 r!27340))))))

(declare-fun b!2517512 () Bool)

(declare-fun e!1594724 () Bool)

(assert (=> b!2517512 (= e!1594724 e!1594729)))

(declare-fun res!1063923 () Bool)

(assert (=> b!2517512 (=> (not res!1063923) (not e!1594729))))

(assert (=> b!2517512 (= res!1063923 call!156617)))

(declare-fun bm!156611 () Bool)

(assert (=> bm!156611 (= call!156616 call!156615)))

(declare-fun bm!156612 () Bool)

(declare-fun c!401354 () Bool)

(assert (=> bm!156612 (= call!156615 (validRegex!3123 (ite c!401354 (reg!7826 r!27340) (ite c!401353 (regOne!15507 r!27340) (regTwo!15506 r!27340)))))))

(declare-fun b!2517513 () Bool)

(assert (=> b!2517513 (= e!1594728 e!1594725)))

(assert (=> b!2517513 (= c!401354 ((_ is Star!7497) r!27340))))

(declare-fun b!2517514 () Bool)

(declare-fun e!1594723 () Bool)

(assert (=> b!2517514 (= e!1594723 call!156617)))

(declare-fun b!2517515 () Bool)

(declare-fun res!1063921 () Bool)

(assert (=> b!2517515 (=> (not res!1063921) (not e!1594723))))

(assert (=> b!2517515 (= res!1063921 call!156616)))

(assert (=> b!2517515 (= e!1594727 e!1594723)))

(declare-fun b!2517516 () Bool)

(declare-fun res!1063922 () Bool)

(assert (=> b!2517516 (=> res!1063922 e!1594724)))

(assert (=> b!2517516 (= res!1063922 (not ((_ is Concat!12193) r!27340)))))

(assert (=> b!2517516 (= e!1594727 e!1594724)))

(assert (= (and d!717476 (not res!1063920)) b!2517513))

(assert (= (and b!2517513 c!401354) b!2517509))

(assert (= (and b!2517513 (not c!401354)) b!2517511))

(assert (= (and b!2517509 res!1063924) b!2517510))

(assert (= (and b!2517511 c!401353) b!2517515))

(assert (= (and b!2517511 (not c!401353)) b!2517516))

(assert (= (and b!2517515 res!1063921) b!2517514))

(assert (= (and b!2517516 (not res!1063922)) b!2517512))

(assert (= (and b!2517512 res!1063923) b!2517508))

(assert (= (or b!2517515 b!2517508) bm!156611))

(assert (= (or b!2517514 b!2517512) bm!156610))

(assert (= (or b!2517510 bm!156611) bm!156612))

(declare-fun m!2873593 () Bool)

(assert (=> b!2517509 m!2873593))

(declare-fun m!2873595 () Bool)

(assert (=> bm!156610 m!2873595))

(declare-fun m!2873597 () Bool)

(assert (=> bm!156612 m!2873597))

(assert (=> start!245456 d!717476))

(declare-fun d!717478 () Bool)

(declare-fun nullableFct!655 (Regex!7497) Bool)

(assert (=> d!717478 (= (nullable!2414 (derivative!192 lt!899062 tl!4068)) (nullableFct!655 (derivative!192 lt!899062 tl!4068)))))

(declare-fun bs!468916 () Bool)

(assert (= bs!468916 d!717478))

(assert (=> bs!468916 m!2873569))

(declare-fun m!2873599 () Bool)

(assert (=> bs!468916 m!2873599))

(assert (=> b!2517412 d!717478))

(declare-fun d!717480 () Bool)

(declare-fun lt!899071 () Regex!7497)

(assert (=> d!717480 (validRegex!3123 lt!899071)))

(declare-fun e!1594737 () Regex!7497)

(assert (=> d!717480 (= lt!899071 e!1594737)))

(declare-fun c!401362 () Bool)

(assert (=> d!717480 (= c!401362 ((_ is Cons!29462) tl!4068))))

(assert (=> d!717480 (validRegex!3123 lt!899062)))

(assert (=> d!717480 (= (derivative!192 lt!899062 tl!4068) lt!899071)))

(declare-fun b!2517531 () Bool)

(assert (=> b!2517531 (= e!1594737 (derivative!192 (derivativeStep!2066 lt!899062 (h!34882 tl!4068)) (t!211261 tl!4068)))))

(declare-fun b!2517532 () Bool)

(assert (=> b!2517532 (= e!1594737 lt!899062)))

(assert (= (and d!717480 c!401362) b!2517531))

(assert (= (and d!717480 (not c!401362)) b!2517532))

(declare-fun m!2873611 () Bool)

(assert (=> d!717480 m!2873611))

(declare-fun m!2873613 () Bool)

(assert (=> d!717480 m!2873613))

(declare-fun m!2873615 () Bool)

(assert (=> b!2517531 m!2873615))

(assert (=> b!2517531 m!2873615))

(declare-fun m!2873617 () Bool)

(assert (=> b!2517531 m!2873617))

(assert (=> b!2517412 d!717480))

(declare-fun d!717484 () Bool)

(declare-fun lt!899072 () Regex!7497)

(assert (=> d!717484 (validRegex!3123 lt!899072)))

(declare-fun e!1594741 () Regex!7497)

(assert (=> d!717484 (= lt!899072 e!1594741)))

(declare-fun c!401366 () Bool)

(assert (=> d!717484 (= c!401366 (or ((_ is EmptyExpr!7497) r!27340) ((_ is EmptyLang!7497) r!27340)))))

(assert (=> d!717484 (validRegex!3123 r!27340)))

(assert (=> d!717484 (= (derivativeStep!2066 r!27340 c!14016) lt!899072)))

(declare-fun b!2517533 () Bool)

(declare-fun e!1594742 () Regex!7497)

(declare-fun call!156625 () Regex!7497)

(assert (=> b!2517533 (= e!1594742 (Union!7497 (Concat!12193 call!156625 (regTwo!15506 r!27340)) EmptyLang!7497))))

(declare-fun bm!156617 () Bool)

(declare-fun call!156624 () Regex!7497)

(assert (=> bm!156617 (= call!156625 call!156624)))

(declare-fun b!2517534 () Bool)

(declare-fun e!1594738 () Regex!7497)

(assert (=> b!2517534 (= e!1594738 (Concat!12193 call!156624 r!27340))))

(declare-fun call!156622 () Regex!7497)

(declare-fun b!2517535 () Bool)

(assert (=> b!2517535 (= e!1594742 (Union!7497 (Concat!12193 call!156625 (regTwo!15506 r!27340)) call!156622))))

(declare-fun bm!156618 () Bool)

(declare-fun call!156623 () Regex!7497)

(assert (=> bm!156618 (= call!156624 call!156623)))

(declare-fun b!2517536 () Bool)

(assert (=> b!2517536 (= e!1594741 EmptyLang!7497)))

(declare-fun b!2517537 () Bool)

(declare-fun e!1594739 () Regex!7497)

(assert (=> b!2517537 (= e!1594739 (ite (= c!14016 (c!401317 r!27340)) EmptyExpr!7497 EmptyLang!7497))))

(declare-fun b!2517538 () Bool)

(declare-fun c!401364 () Bool)

(assert (=> b!2517538 (= c!401364 (nullable!2414 (regOne!15506 r!27340)))))

(assert (=> b!2517538 (= e!1594738 e!1594742)))

(declare-fun b!2517539 () Bool)

(declare-fun c!401367 () Bool)

(assert (=> b!2517539 (= c!401367 ((_ is Union!7497) r!27340))))

(declare-fun e!1594740 () Regex!7497)

(assert (=> b!2517539 (= e!1594739 e!1594740)))

(declare-fun b!2517540 () Bool)

(assert (=> b!2517540 (= e!1594740 e!1594738)))

(declare-fun c!401365 () Bool)

(assert (=> b!2517540 (= c!401365 ((_ is Star!7497) r!27340))))

(declare-fun bm!156619 () Bool)

(assert (=> bm!156619 (= call!156623 (derivativeStep!2066 (ite c!401367 (regOne!15507 r!27340) (ite c!401365 (reg!7826 r!27340) (regOne!15506 r!27340))) c!14016))))

(declare-fun bm!156620 () Bool)

(assert (=> bm!156620 (= call!156622 (derivativeStep!2066 (ite c!401367 (regTwo!15507 r!27340) (regTwo!15506 r!27340)) c!14016))))

(declare-fun b!2517541 () Bool)

(assert (=> b!2517541 (= e!1594741 e!1594739)))

(declare-fun c!401363 () Bool)

(assert (=> b!2517541 (= c!401363 ((_ is ElementMatch!7497) r!27340))))

(declare-fun b!2517542 () Bool)

(assert (=> b!2517542 (= e!1594740 (Union!7497 call!156623 call!156622))))

(assert (= (and d!717484 c!401366) b!2517536))

(assert (= (and d!717484 (not c!401366)) b!2517541))

(assert (= (and b!2517541 c!401363) b!2517537))

(assert (= (and b!2517541 (not c!401363)) b!2517539))

(assert (= (and b!2517539 c!401367) b!2517542))

(assert (= (and b!2517539 (not c!401367)) b!2517540))

(assert (= (and b!2517540 c!401365) b!2517534))

(assert (= (and b!2517540 (not c!401365)) b!2517538))

(assert (= (and b!2517538 c!401364) b!2517535))

(assert (= (and b!2517538 (not c!401364)) b!2517533))

(assert (= (or b!2517535 b!2517533) bm!156617))

(assert (= (or b!2517534 bm!156617) bm!156618))

(assert (= (or b!2517542 b!2517535) bm!156620))

(assert (= (or b!2517542 bm!156618) bm!156619))

(declare-fun m!2873621 () Bool)

(assert (=> d!717484 m!2873621))

(assert (=> d!717484 m!2873575))

(declare-fun m!2873623 () Bool)

(assert (=> b!2517538 m!2873623))

(declare-fun m!2873625 () Bool)

(assert (=> bm!156619 m!2873625))

(declare-fun m!2873627 () Bool)

(assert (=> bm!156620 m!2873627))

(assert (=> b!2517412 d!717484))

(declare-fun b!2517547 () Bool)

(declare-fun e!1594745 () Bool)

(declare-fun tp!804669 () Bool)

(assert (=> b!2517547 (= e!1594745 (and tp_is_empty!12849 tp!804669))))

(assert (=> b!2517410 (= tp!804662 e!1594745)))

(assert (= (and b!2517410 ((_ is Cons!29462) (t!211261 tl!4068))) b!2517547))

(declare-fun b!2517560 () Bool)

(declare-fun e!1594748 () Bool)

(declare-fun tp!804684 () Bool)

(assert (=> b!2517560 (= e!1594748 tp!804684)))

(declare-fun b!2517561 () Bool)

(declare-fun tp!804683 () Bool)

(declare-fun tp!804682 () Bool)

(assert (=> b!2517561 (= e!1594748 (and tp!804683 tp!804682))))

(declare-fun b!2517558 () Bool)

(assert (=> b!2517558 (= e!1594748 tp_is_empty!12849)))

(declare-fun b!2517559 () Bool)

(declare-fun tp!804681 () Bool)

(declare-fun tp!804680 () Bool)

(assert (=> b!2517559 (= e!1594748 (and tp!804681 tp!804680))))

(assert (=> b!2517408 (= tp!804663 e!1594748)))

(assert (= (and b!2517408 ((_ is ElementMatch!7497) (reg!7826 r!27340))) b!2517558))

(assert (= (and b!2517408 ((_ is Concat!12193) (reg!7826 r!27340))) b!2517559))

(assert (= (and b!2517408 ((_ is Star!7497) (reg!7826 r!27340))) b!2517560))

(assert (= (and b!2517408 ((_ is Union!7497) (reg!7826 r!27340))) b!2517561))

(declare-fun b!2517564 () Bool)

(declare-fun e!1594749 () Bool)

(declare-fun tp!804689 () Bool)

(assert (=> b!2517564 (= e!1594749 tp!804689)))

(declare-fun b!2517565 () Bool)

(declare-fun tp!804688 () Bool)

(declare-fun tp!804687 () Bool)

(assert (=> b!2517565 (= e!1594749 (and tp!804688 tp!804687))))

(declare-fun b!2517562 () Bool)

(assert (=> b!2517562 (= e!1594749 tp_is_empty!12849)))

(declare-fun b!2517563 () Bool)

(declare-fun tp!804686 () Bool)

(declare-fun tp!804685 () Bool)

(assert (=> b!2517563 (= e!1594749 (and tp!804686 tp!804685))))

(assert (=> b!2517409 (= tp!804666 e!1594749)))

(assert (= (and b!2517409 ((_ is ElementMatch!7497) (regOne!15507 r!27340))) b!2517562))

(assert (= (and b!2517409 ((_ is Concat!12193) (regOne!15507 r!27340))) b!2517563))

(assert (= (and b!2517409 ((_ is Star!7497) (regOne!15507 r!27340))) b!2517564))

(assert (= (and b!2517409 ((_ is Union!7497) (regOne!15507 r!27340))) b!2517565))

(declare-fun b!2517568 () Bool)

(declare-fun e!1594750 () Bool)

(declare-fun tp!804694 () Bool)

(assert (=> b!2517568 (= e!1594750 tp!804694)))

(declare-fun b!2517569 () Bool)

(declare-fun tp!804693 () Bool)

(declare-fun tp!804692 () Bool)

(assert (=> b!2517569 (= e!1594750 (and tp!804693 tp!804692))))

(declare-fun b!2517566 () Bool)

(assert (=> b!2517566 (= e!1594750 tp_is_empty!12849)))

(declare-fun b!2517567 () Bool)

(declare-fun tp!804691 () Bool)

(declare-fun tp!804690 () Bool)

(assert (=> b!2517567 (= e!1594750 (and tp!804691 tp!804690))))

(assert (=> b!2517409 (= tp!804661 e!1594750)))

(assert (= (and b!2517409 ((_ is ElementMatch!7497) (regTwo!15507 r!27340))) b!2517566))

(assert (= (and b!2517409 ((_ is Concat!12193) (regTwo!15507 r!27340))) b!2517567))

(assert (= (and b!2517409 ((_ is Star!7497) (regTwo!15507 r!27340))) b!2517568))

(assert (= (and b!2517409 ((_ is Union!7497) (regTwo!15507 r!27340))) b!2517569))

(declare-fun b!2517576 () Bool)

(declare-fun e!1594753 () Bool)

(declare-fun tp!804699 () Bool)

(assert (=> b!2517576 (= e!1594753 tp!804699)))

(declare-fun b!2517577 () Bool)

(declare-fun tp!804698 () Bool)

(declare-fun tp!804697 () Bool)

(assert (=> b!2517577 (= e!1594753 (and tp!804698 tp!804697))))

(declare-fun b!2517574 () Bool)

(assert (=> b!2517574 (= e!1594753 tp_is_empty!12849)))

(declare-fun b!2517575 () Bool)

(declare-fun tp!804696 () Bool)

(declare-fun tp!804695 () Bool)

(assert (=> b!2517575 (= e!1594753 (and tp!804696 tp!804695))))

(assert (=> b!2517411 (= tp!804664 e!1594753)))

(assert (= (and b!2517411 ((_ is ElementMatch!7497) (regOne!15506 r!27340))) b!2517574))

(assert (= (and b!2517411 ((_ is Concat!12193) (regOne!15506 r!27340))) b!2517575))

(assert (= (and b!2517411 ((_ is Star!7497) (regOne!15506 r!27340))) b!2517576))

(assert (= (and b!2517411 ((_ is Union!7497) (regOne!15506 r!27340))) b!2517577))

(declare-fun b!2517580 () Bool)

(declare-fun e!1594754 () Bool)

(declare-fun tp!804704 () Bool)

(assert (=> b!2517580 (= e!1594754 tp!804704)))

(declare-fun b!2517581 () Bool)

(declare-fun tp!804703 () Bool)

(declare-fun tp!804702 () Bool)

(assert (=> b!2517581 (= e!1594754 (and tp!804703 tp!804702))))

(declare-fun b!2517578 () Bool)

(assert (=> b!2517578 (= e!1594754 tp_is_empty!12849)))

(declare-fun b!2517579 () Bool)

(declare-fun tp!804701 () Bool)

(declare-fun tp!804700 () Bool)

(assert (=> b!2517579 (= e!1594754 (and tp!804701 tp!804700))))

(assert (=> b!2517411 (= tp!804665 e!1594754)))

(assert (= (and b!2517411 ((_ is ElementMatch!7497) (regTwo!15506 r!27340))) b!2517578))

(assert (= (and b!2517411 ((_ is Concat!12193) (regTwo!15506 r!27340))) b!2517579))

(assert (= (and b!2517411 ((_ is Star!7497) (regTwo!15506 r!27340))) b!2517580))

(assert (= (and b!2517411 ((_ is Union!7497) (regTwo!15506 r!27340))) b!2517581))

(check-sat (not b!2517538) (not b!2517567) (not bm!156619) (not b!2517576) (not bm!156620) (not b!2517568) (not b!2517465) (not b!2517579) (not d!717480) (not b!2517580) (not b!2517569) (not b!2517561) (not b!2517547) (not bm!156595) (not b!2517564) (not b!2517581) (not d!717478) (not b!2517563) (not d!717470) (not b!2517575) (not bm!156594) (not d!717484) (not b!2517559) (not bm!156612) (not b!2517531) (not b!2517565) (not b!2517560) tp_is_empty!12849 (not bm!156610) (not b!2517509) (not b!2517577))
(check-sat)
