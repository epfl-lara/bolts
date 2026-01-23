; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244156 () Bool)

(assert start!244156)

(declare-fun b!2501344 () Bool)

(declare-fun res!1057661 () Bool)

(declare-fun e!1586454 () Bool)

(assert (=> b!2501344 (=> (not res!1057661) (not e!1586454))))

(declare-datatypes ((C!14980 0))(
  ( (C!14981 (val!9142 Int)) )
))
(declare-datatypes ((Regex!7411 0))(
  ( (ElementMatch!7411 (c!398011 C!14980)) (Concat!12107 (regOne!15334 Regex!7411) (regTwo!15334 Regex!7411)) (EmptyExpr!7411) (Star!7411 (reg!7740 Regex!7411)) (EmptyLang!7411) (Union!7411 (regOne!15335 Regex!7411) (regTwo!15335 Regex!7411)) )
))
(declare-fun r!27340 () Regex!7411)

(declare-fun nullable!2328 (Regex!7411) Bool)

(assert (=> b!2501344 (= res!1057661 (nullable!2328 (regOne!15334 r!27340)))))

(declare-fun b!2501345 () Bool)

(declare-fun e!1586458 () Bool)

(declare-fun tp!800836 () Bool)

(assert (=> b!2501345 (= e!1586458 tp!800836)))

(declare-fun b!2501346 () Bool)

(declare-fun e!1586457 () Bool)

(declare-fun lt!895697 () Regex!7411)

(declare-datatypes ((List!29476 0))(
  ( (Nil!29376) (Cons!29376 (h!34796 C!14980) (t!211175 List!29476)) )
))
(declare-fun tl!4068 () List!29476)

(declare-fun matchR!3414 (Regex!7411 List!29476) Bool)

(assert (=> b!2501346 (= e!1586457 (matchR!3414 lt!895697 tl!4068))))

(declare-fun res!1057665 () Bool)

(assert (=> start!244156 (=> (not res!1057665) (not e!1586454))))

(declare-fun validRegex!3037 (Regex!7411) Bool)

(assert (=> start!244156 (= res!1057665 (validRegex!3037 r!27340))))

(assert (=> start!244156 e!1586454))

(assert (=> start!244156 e!1586458))

(declare-fun tp_is_empty!12677 () Bool)

(assert (=> start!244156 tp_is_empty!12677))

(declare-fun e!1586456 () Bool)

(assert (=> start!244156 e!1586456))

(declare-fun b!2501347 () Bool)

(declare-fun tp!800834 () Bool)

(assert (=> b!2501347 (= e!1586456 (and tp_is_empty!12677 tp!800834))))

(declare-fun b!2501348 () Bool)

(declare-fun res!1057666 () Bool)

(assert (=> b!2501348 (=> (not res!1057666) (not e!1586454))))

(get-info :version)

(assert (=> b!2501348 (= res!1057666 (and (not ((_ is EmptyExpr!7411) r!27340)) (not ((_ is EmptyLang!7411) r!27340)) (not ((_ is ElementMatch!7411) r!27340)) (not ((_ is Union!7411) r!27340)) (not ((_ is Star!7411) r!27340))))))

(declare-fun b!2501349 () Bool)

(declare-fun e!1586455 () Bool)

(assert (=> b!2501349 (= e!1586455 (validRegex!3037 (regOne!15334 r!27340)))))

(declare-fun b!2501350 () Bool)

(declare-fun tp!800833 () Bool)

(declare-fun tp!800835 () Bool)

(assert (=> b!2501350 (= e!1586458 (and tp!800833 tp!800835))))

(declare-fun b!2501351 () Bool)

(declare-fun res!1057662 () Bool)

(assert (=> b!2501351 (=> (not res!1057662) (not e!1586454))))

(declare-fun c!14016 () C!14980)

(declare-fun derivative!106 (Regex!7411 List!29476) Regex!7411)

(declare-fun derivativeStep!1980 (Regex!7411 C!14980) Regex!7411)

(assert (=> b!2501351 (= res!1057662 (nullable!2328 (derivative!106 (derivativeStep!1980 r!27340 c!14016) tl!4068)))))

(declare-fun b!2501352 () Bool)

(declare-fun tp!800837 () Bool)

(declare-fun tp!800838 () Bool)

(assert (=> b!2501352 (= e!1586458 (and tp!800837 tp!800838))))

(declare-fun b!2501353 () Bool)

(assert (=> b!2501353 (= e!1586454 (not e!1586455))))

(declare-fun res!1057664 () Bool)

(assert (=> b!2501353 (=> res!1057664 e!1586455)))

(declare-fun lt!895699 () Bool)

(assert (=> b!2501353 (= res!1057664 (not lt!895699))))

(assert (=> b!2501353 e!1586457))

(declare-fun res!1057663 () Bool)

(assert (=> b!2501353 (=> res!1057663 e!1586457)))

(assert (=> b!2501353 (= res!1057663 lt!895699)))

(declare-fun lt!895698 () Regex!7411)

(assert (=> b!2501353 (= lt!895699 (matchR!3414 lt!895698 tl!4068))))

(declare-datatypes ((Unit!43079 0))(
  ( (Unit!43080) )
))
(declare-fun lt!895701 () Unit!43079)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!106 (Regex!7411 Regex!7411 List!29476) Unit!43079)

(assert (=> b!2501353 (= lt!895701 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!106 lt!895698 lt!895697 tl!4068))))

(declare-fun lt!895702 () Regex!7411)

(assert (=> b!2501353 (= (matchR!3414 lt!895702 tl!4068) (matchR!3414 (derivative!106 lt!895702 tl!4068) Nil!29376))))

(declare-fun lt!895700 () Unit!43079)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!60 (Regex!7411 List!29476) Unit!43079)

(assert (=> b!2501353 (= lt!895700 (lemmaMatchRIsSameAsWholeDerivativeAndNil!60 lt!895702 tl!4068))))

(assert (=> b!2501353 (= lt!895702 (Union!7411 lt!895698 lt!895697))))

(assert (=> b!2501353 (= lt!895697 (derivativeStep!1980 (regTwo!15334 r!27340) c!14016))))

(assert (=> b!2501353 (= lt!895698 (Concat!12107 (derivativeStep!1980 (regOne!15334 r!27340) c!14016) (regTwo!15334 r!27340)))))

(declare-fun b!2501354 () Bool)

(assert (=> b!2501354 (= e!1586458 tp_is_empty!12677)))

(assert (= (and start!244156 res!1057665) b!2501351))

(assert (= (and b!2501351 res!1057662) b!2501348))

(assert (= (and b!2501348 res!1057666) b!2501344))

(assert (= (and b!2501344 res!1057661) b!2501353))

(assert (= (and b!2501353 (not res!1057663)) b!2501346))

(assert (= (and b!2501353 (not res!1057664)) b!2501349))

(assert (= (and start!244156 ((_ is ElementMatch!7411) r!27340)) b!2501354))

(assert (= (and start!244156 ((_ is Concat!12107) r!27340)) b!2501350))

(assert (= (and start!244156 ((_ is Star!7411) r!27340)) b!2501345))

(assert (= (and start!244156 ((_ is Union!7411) r!27340)) b!2501352))

(assert (= (and start!244156 ((_ is Cons!29376) tl!4068)) b!2501347))

(declare-fun m!2863675 () Bool)

(assert (=> b!2501349 m!2863675))

(declare-fun m!2863677 () Bool)

(assert (=> b!2501351 m!2863677))

(assert (=> b!2501351 m!2863677))

(declare-fun m!2863679 () Bool)

(assert (=> b!2501351 m!2863679))

(assert (=> b!2501351 m!2863679))

(declare-fun m!2863681 () Bool)

(assert (=> b!2501351 m!2863681))

(declare-fun m!2863683 () Bool)

(assert (=> start!244156 m!2863683))

(declare-fun m!2863685 () Bool)

(assert (=> b!2501346 m!2863685))

(declare-fun m!2863687 () Bool)

(assert (=> b!2501344 m!2863687))

(declare-fun m!2863689 () Bool)

(assert (=> b!2501353 m!2863689))

(declare-fun m!2863691 () Bool)

(assert (=> b!2501353 m!2863691))

(declare-fun m!2863693 () Bool)

(assert (=> b!2501353 m!2863693))

(declare-fun m!2863695 () Bool)

(assert (=> b!2501353 m!2863695))

(declare-fun m!2863697 () Bool)

(assert (=> b!2501353 m!2863697))

(declare-fun m!2863699 () Bool)

(assert (=> b!2501353 m!2863699))

(declare-fun m!2863701 () Bool)

(assert (=> b!2501353 m!2863701))

(assert (=> b!2501353 m!2863701))

(declare-fun m!2863703 () Bool)

(assert (=> b!2501353 m!2863703))

(check-sat (not b!2501350) (not b!2501346) (not b!2501345) (not b!2501351) (not b!2501349) (not b!2501352) tp_is_empty!12677 (not b!2501344) (not b!2501347) (not b!2501353) (not start!244156))
(check-sat)
(get-model)

(declare-fun b!2501401 () Bool)

(declare-fun e!1586489 () Bool)

(declare-fun call!154536 () Bool)

(assert (=> b!2501401 (= e!1586489 call!154536)))

(declare-fun bm!154531 () Bool)

(declare-fun c!398022 () Bool)

(assert (=> bm!154531 (= call!154536 (validRegex!3037 (ite c!398022 (regOne!15335 r!27340) (regTwo!15334 r!27340))))))

(declare-fun b!2501402 () Bool)

(declare-fun res!1057693 () Bool)

(declare-fun e!1586491 () Bool)

(assert (=> b!2501402 (=> res!1057693 e!1586491)))

(assert (=> b!2501402 (= res!1057693 (not ((_ is Concat!12107) r!27340)))))

(declare-fun e!1586490 () Bool)

(assert (=> b!2501402 (= e!1586490 e!1586491)))

(declare-fun b!2501403 () Bool)

(declare-fun e!1586492 () Bool)

(assert (=> b!2501403 (= e!1586492 e!1586490)))

(assert (=> b!2501403 (= c!398022 ((_ is Union!7411) r!27340))))

(declare-fun b!2501404 () Bool)

(declare-fun e!1586487 () Bool)

(assert (=> b!2501404 (= e!1586487 e!1586492)))

(declare-fun c!398023 () Bool)

(assert (=> b!2501404 (= c!398023 ((_ is Star!7411) r!27340))))

(declare-fun b!2501405 () Bool)

(declare-fun e!1586488 () Bool)

(declare-fun call!154537 () Bool)

(assert (=> b!2501405 (= e!1586488 call!154537)))

(declare-fun bm!154533 () Bool)

(assert (=> bm!154533 (= call!154537 (validRegex!3037 (ite c!398023 (reg!7740 r!27340) (ite c!398022 (regTwo!15335 r!27340) (regOne!15334 r!27340)))))))

(declare-fun b!2501406 () Bool)

(assert (=> b!2501406 (= e!1586491 e!1586489)))

(declare-fun res!1057696 () Bool)

(assert (=> b!2501406 (=> (not res!1057696) (not e!1586489))))

(declare-fun call!154538 () Bool)

(assert (=> b!2501406 (= res!1057696 call!154538)))

(declare-fun b!2501407 () Bool)

(declare-fun e!1586493 () Bool)

(assert (=> b!2501407 (= e!1586493 call!154538)))

(declare-fun b!2501408 () Bool)

(assert (=> b!2501408 (= e!1586492 e!1586488)))

(declare-fun res!1057694 () Bool)

(assert (=> b!2501408 (= res!1057694 (not (nullable!2328 (reg!7740 r!27340))))))

(assert (=> b!2501408 (=> (not res!1057694) (not e!1586488))))

(declare-fun b!2501409 () Bool)

(declare-fun res!1057695 () Bool)

(assert (=> b!2501409 (=> (not res!1057695) (not e!1586493))))

(assert (=> b!2501409 (= res!1057695 call!154536)))

(assert (=> b!2501409 (= e!1586490 e!1586493)))

(declare-fun d!715473 () Bool)

(declare-fun res!1057697 () Bool)

(assert (=> d!715473 (=> res!1057697 e!1586487)))

(assert (=> d!715473 (= res!1057697 ((_ is ElementMatch!7411) r!27340))))

(assert (=> d!715473 (= (validRegex!3037 r!27340) e!1586487)))

(declare-fun bm!154532 () Bool)

(assert (=> bm!154532 (= call!154538 call!154537)))

(assert (= (and d!715473 (not res!1057697)) b!2501404))

(assert (= (and b!2501404 c!398023) b!2501408))

(assert (= (and b!2501404 (not c!398023)) b!2501403))

(assert (= (and b!2501408 res!1057694) b!2501405))

(assert (= (and b!2501403 c!398022) b!2501409))

(assert (= (and b!2501403 (not c!398022)) b!2501402))

(assert (= (and b!2501409 res!1057695) b!2501407))

(assert (= (and b!2501402 (not res!1057693)) b!2501406))

(assert (= (and b!2501406 res!1057696) b!2501401))

(assert (= (or b!2501409 b!2501401) bm!154531))

(assert (= (or b!2501407 b!2501406) bm!154532))

(assert (= (or b!2501405 bm!154532) bm!154533))

(declare-fun m!2863705 () Bool)

(assert (=> bm!154531 m!2863705))

(declare-fun m!2863707 () Bool)

(assert (=> bm!154533 m!2863707))

(declare-fun m!2863709 () Bool)

(assert (=> b!2501408 m!2863709))

(assert (=> start!244156 d!715473))

(declare-fun b!2501472 () Bool)

(declare-fun e!1586533 () Bool)

(declare-fun e!1586531 () Bool)

(assert (=> b!2501472 (= e!1586533 e!1586531)))

(declare-fun res!1057736 () Bool)

(assert (=> b!2501472 (=> res!1057736 e!1586531)))

(declare-fun call!154543 () Bool)

(assert (=> b!2501472 (= res!1057736 call!154543)))

(declare-fun b!2501473 () Bool)

(declare-fun res!1057742 () Bool)

(assert (=> b!2501473 (=> res!1057742 e!1586531)))

(declare-fun isEmpty!16836 (List!29476) Bool)

(declare-fun tail!3977 (List!29476) List!29476)

(assert (=> b!2501473 (= res!1057742 (not (isEmpty!16836 (tail!3977 tl!4068))))))

(declare-fun b!2501474 () Bool)

(declare-fun e!1586532 () Bool)

(declare-fun head!5700 (List!29476) C!14980)

(assert (=> b!2501474 (= e!1586532 (= (head!5700 tl!4068) (c!398011 lt!895697)))))

(declare-fun b!2501475 () Bool)

(declare-fun res!1057740 () Bool)

(declare-fun e!1586530 () Bool)

(assert (=> b!2501475 (=> res!1057740 e!1586530)))

(assert (=> b!2501475 (= res!1057740 (not ((_ is ElementMatch!7411) lt!895697)))))

(declare-fun e!1586534 () Bool)

(assert (=> b!2501475 (= e!1586534 e!1586530)))

(declare-fun b!2501476 () Bool)

(declare-fun lt!895715 () Bool)

(assert (=> b!2501476 (= e!1586534 (not lt!895715))))

(declare-fun b!2501477 () Bool)

(declare-fun res!1057738 () Bool)

(assert (=> b!2501477 (=> (not res!1057738) (not e!1586532))))

(assert (=> b!2501477 (= res!1057738 (not call!154543))))

(declare-fun b!2501478 () Bool)

(declare-fun e!1586529 () Bool)

(assert (=> b!2501478 (= e!1586529 (= lt!895715 call!154543))))

(declare-fun b!2501479 () Bool)

(declare-fun e!1586528 () Bool)

(assert (=> b!2501479 (= e!1586528 (nullable!2328 lt!895697))))

(declare-fun b!2501480 () Bool)

(assert (=> b!2501480 (= e!1586530 e!1586533)))

(declare-fun res!1057741 () Bool)

(assert (=> b!2501480 (=> (not res!1057741) (not e!1586533))))

(assert (=> b!2501480 (= res!1057741 (not lt!895715))))

(declare-fun b!2501481 () Bool)

(assert (=> b!2501481 (= e!1586529 e!1586534)))

(declare-fun c!398036 () Bool)

(assert (=> b!2501481 (= c!398036 ((_ is EmptyLang!7411) lt!895697))))

(declare-fun bm!154538 () Bool)

(assert (=> bm!154538 (= call!154543 (isEmpty!16836 tl!4068))))

(declare-fun d!715475 () Bool)

(assert (=> d!715475 e!1586529))

(declare-fun c!398037 () Bool)

(assert (=> d!715475 (= c!398037 ((_ is EmptyExpr!7411) lt!895697))))

(assert (=> d!715475 (= lt!895715 e!1586528)))

(declare-fun c!398038 () Bool)

(assert (=> d!715475 (= c!398038 (isEmpty!16836 tl!4068))))

(assert (=> d!715475 (validRegex!3037 lt!895697)))

(assert (=> d!715475 (= (matchR!3414 lt!895697 tl!4068) lt!895715)))

(declare-fun b!2501482 () Bool)

(declare-fun res!1057743 () Bool)

(assert (=> b!2501482 (=> res!1057743 e!1586530)))

(assert (=> b!2501482 (= res!1057743 e!1586532)))

(declare-fun res!1057739 () Bool)

(assert (=> b!2501482 (=> (not res!1057739) (not e!1586532))))

(assert (=> b!2501482 (= res!1057739 lt!895715)))

(declare-fun b!2501483 () Bool)

(assert (=> b!2501483 (= e!1586528 (matchR!3414 (derivativeStep!1980 lt!895697 (head!5700 tl!4068)) (tail!3977 tl!4068)))))

(declare-fun b!2501484 () Bool)

(assert (=> b!2501484 (= e!1586531 (not (= (head!5700 tl!4068) (c!398011 lt!895697))))))

(declare-fun b!2501485 () Bool)

(declare-fun res!1057737 () Bool)

(assert (=> b!2501485 (=> (not res!1057737) (not e!1586532))))

(assert (=> b!2501485 (= res!1057737 (isEmpty!16836 (tail!3977 tl!4068)))))

(assert (= (and d!715475 c!398038) b!2501479))

(assert (= (and d!715475 (not c!398038)) b!2501483))

(assert (= (and d!715475 c!398037) b!2501478))

(assert (= (and d!715475 (not c!398037)) b!2501481))

(assert (= (and b!2501481 c!398036) b!2501476))

(assert (= (and b!2501481 (not c!398036)) b!2501475))

(assert (= (and b!2501475 (not res!1057740)) b!2501482))

(assert (= (and b!2501482 res!1057739) b!2501477))

(assert (= (and b!2501477 res!1057738) b!2501485))

(assert (= (and b!2501485 res!1057737) b!2501474))

(assert (= (and b!2501482 (not res!1057743)) b!2501480))

(assert (= (and b!2501480 res!1057741) b!2501472))

(assert (= (and b!2501472 (not res!1057736)) b!2501473))

(assert (= (and b!2501473 (not res!1057742)) b!2501484))

(assert (= (or b!2501478 b!2501472 b!2501477) bm!154538))

(declare-fun m!2863751 () Bool)

(assert (=> b!2501484 m!2863751))

(declare-fun m!2863753 () Bool)

(assert (=> b!2501479 m!2863753))

(declare-fun m!2863755 () Bool)

(assert (=> b!2501485 m!2863755))

(assert (=> b!2501485 m!2863755))

(declare-fun m!2863757 () Bool)

(assert (=> b!2501485 m!2863757))

(declare-fun m!2863759 () Bool)

(assert (=> bm!154538 m!2863759))

(assert (=> b!2501473 m!2863755))

(assert (=> b!2501473 m!2863755))

(assert (=> b!2501473 m!2863757))

(assert (=> b!2501474 m!2863751))

(assert (=> d!715475 m!2863759))

(declare-fun m!2863761 () Bool)

(assert (=> d!715475 m!2863761))

(assert (=> b!2501483 m!2863751))

(assert (=> b!2501483 m!2863751))

(declare-fun m!2863763 () Bool)

(assert (=> b!2501483 m!2863763))

(assert (=> b!2501483 m!2863755))

(assert (=> b!2501483 m!2863763))

(assert (=> b!2501483 m!2863755))

(declare-fun m!2863765 () Bool)

(assert (=> b!2501483 m!2863765))

(assert (=> b!2501346 d!715475))

(declare-fun b!2501486 () Bool)

(declare-fun e!1586540 () Bool)

(declare-fun e!1586538 () Bool)

(assert (=> b!2501486 (= e!1586540 e!1586538)))

(declare-fun res!1057744 () Bool)

(assert (=> b!2501486 (=> res!1057744 e!1586538)))

(declare-fun call!154544 () Bool)

(assert (=> b!2501486 (= res!1057744 call!154544)))

(declare-fun b!2501487 () Bool)

(declare-fun res!1057750 () Bool)

(assert (=> b!2501487 (=> res!1057750 e!1586538)))

(assert (=> b!2501487 (= res!1057750 (not (isEmpty!16836 (tail!3977 tl!4068))))))

(declare-fun b!2501488 () Bool)

(declare-fun e!1586539 () Bool)

(assert (=> b!2501488 (= e!1586539 (= (head!5700 tl!4068) (c!398011 lt!895698)))))

(declare-fun b!2501489 () Bool)

(declare-fun res!1057748 () Bool)

(declare-fun e!1586537 () Bool)

(assert (=> b!2501489 (=> res!1057748 e!1586537)))

(assert (=> b!2501489 (= res!1057748 (not ((_ is ElementMatch!7411) lt!895698)))))

(declare-fun e!1586541 () Bool)

(assert (=> b!2501489 (= e!1586541 e!1586537)))

(declare-fun b!2501490 () Bool)

(declare-fun lt!895716 () Bool)

(assert (=> b!2501490 (= e!1586541 (not lt!895716))))

(declare-fun b!2501491 () Bool)

(declare-fun res!1057746 () Bool)

(assert (=> b!2501491 (=> (not res!1057746) (not e!1586539))))

(assert (=> b!2501491 (= res!1057746 (not call!154544))))

(declare-fun b!2501492 () Bool)

(declare-fun e!1586536 () Bool)

(assert (=> b!2501492 (= e!1586536 (= lt!895716 call!154544))))

(declare-fun b!2501493 () Bool)

(declare-fun e!1586535 () Bool)

(assert (=> b!2501493 (= e!1586535 (nullable!2328 lt!895698))))

(declare-fun b!2501494 () Bool)

(assert (=> b!2501494 (= e!1586537 e!1586540)))

(declare-fun res!1057749 () Bool)

(assert (=> b!2501494 (=> (not res!1057749) (not e!1586540))))

(assert (=> b!2501494 (= res!1057749 (not lt!895716))))

(declare-fun b!2501495 () Bool)

(assert (=> b!2501495 (= e!1586536 e!1586541)))

(declare-fun c!398039 () Bool)

(assert (=> b!2501495 (= c!398039 ((_ is EmptyLang!7411) lt!895698))))

(declare-fun bm!154539 () Bool)

(assert (=> bm!154539 (= call!154544 (isEmpty!16836 tl!4068))))

(declare-fun d!715485 () Bool)

(assert (=> d!715485 e!1586536))

(declare-fun c!398040 () Bool)

(assert (=> d!715485 (= c!398040 ((_ is EmptyExpr!7411) lt!895698))))

(assert (=> d!715485 (= lt!895716 e!1586535)))

(declare-fun c!398041 () Bool)

(assert (=> d!715485 (= c!398041 (isEmpty!16836 tl!4068))))

(assert (=> d!715485 (validRegex!3037 lt!895698)))

(assert (=> d!715485 (= (matchR!3414 lt!895698 tl!4068) lt!895716)))

(declare-fun b!2501496 () Bool)

(declare-fun res!1057751 () Bool)

(assert (=> b!2501496 (=> res!1057751 e!1586537)))

(assert (=> b!2501496 (= res!1057751 e!1586539)))

(declare-fun res!1057747 () Bool)

(assert (=> b!2501496 (=> (not res!1057747) (not e!1586539))))

(assert (=> b!2501496 (= res!1057747 lt!895716)))

(declare-fun b!2501497 () Bool)

(assert (=> b!2501497 (= e!1586535 (matchR!3414 (derivativeStep!1980 lt!895698 (head!5700 tl!4068)) (tail!3977 tl!4068)))))

(declare-fun b!2501498 () Bool)

(assert (=> b!2501498 (= e!1586538 (not (= (head!5700 tl!4068) (c!398011 lt!895698))))))

(declare-fun b!2501499 () Bool)

(declare-fun res!1057745 () Bool)

(assert (=> b!2501499 (=> (not res!1057745) (not e!1586539))))

(assert (=> b!2501499 (= res!1057745 (isEmpty!16836 (tail!3977 tl!4068)))))

(assert (= (and d!715485 c!398041) b!2501493))

(assert (= (and d!715485 (not c!398041)) b!2501497))

(assert (= (and d!715485 c!398040) b!2501492))

(assert (= (and d!715485 (not c!398040)) b!2501495))

(assert (= (and b!2501495 c!398039) b!2501490))

(assert (= (and b!2501495 (not c!398039)) b!2501489))

(assert (= (and b!2501489 (not res!1057748)) b!2501496))

(assert (= (and b!2501496 res!1057747) b!2501491))

(assert (= (and b!2501491 res!1057746) b!2501499))

(assert (= (and b!2501499 res!1057745) b!2501488))

(assert (= (and b!2501496 (not res!1057751)) b!2501494))

(assert (= (and b!2501494 res!1057749) b!2501486))

(assert (= (and b!2501486 (not res!1057744)) b!2501487))

(assert (= (and b!2501487 (not res!1057750)) b!2501498))

(assert (= (or b!2501492 b!2501486 b!2501491) bm!154539))

(assert (=> b!2501498 m!2863751))

(declare-fun m!2863767 () Bool)

(assert (=> b!2501493 m!2863767))

(assert (=> b!2501499 m!2863755))

(assert (=> b!2501499 m!2863755))

(assert (=> b!2501499 m!2863757))

(assert (=> bm!154539 m!2863759))

(assert (=> b!2501487 m!2863755))

(assert (=> b!2501487 m!2863755))

(assert (=> b!2501487 m!2863757))

(assert (=> b!2501488 m!2863751))

(assert (=> d!715485 m!2863759))

(declare-fun m!2863769 () Bool)

(assert (=> d!715485 m!2863769))

(assert (=> b!2501497 m!2863751))

(assert (=> b!2501497 m!2863751))

(declare-fun m!2863771 () Bool)

(assert (=> b!2501497 m!2863771))

(assert (=> b!2501497 m!2863755))

(assert (=> b!2501497 m!2863771))

(assert (=> b!2501497 m!2863755))

(declare-fun m!2863773 () Bool)

(assert (=> b!2501497 m!2863773))

(assert (=> b!2501353 d!715485))

(declare-fun d!715487 () Bool)

(declare-fun lt!895723 () Regex!7411)

(assert (=> d!715487 (validRegex!3037 lt!895723)))

(declare-fun e!1586554 () Regex!7411)

(assert (=> d!715487 (= lt!895723 e!1586554)))

(declare-fun c!398050 () Bool)

(assert (=> d!715487 (= c!398050 ((_ is Cons!29376) tl!4068))))

(assert (=> d!715487 (validRegex!3037 lt!895702)))

(assert (=> d!715487 (= (derivative!106 lt!895702 tl!4068) lt!895723)))

(declare-fun b!2501524 () Bool)

(assert (=> b!2501524 (= e!1586554 (derivative!106 (derivativeStep!1980 lt!895702 (h!34796 tl!4068)) (t!211175 tl!4068)))))

(declare-fun b!2501525 () Bool)

(assert (=> b!2501525 (= e!1586554 lt!895702)))

(assert (= (and d!715487 c!398050) b!2501524))

(assert (= (and d!715487 (not c!398050)) b!2501525))

(declare-fun m!2863787 () Bool)

(assert (=> d!715487 m!2863787))

(declare-fun m!2863789 () Bool)

(assert (=> d!715487 m!2863789))

(declare-fun m!2863791 () Bool)

(assert (=> b!2501524 m!2863791))

(assert (=> b!2501524 m!2863791))

(declare-fun m!2863793 () Bool)

(assert (=> b!2501524 m!2863793))

(assert (=> b!2501353 d!715487))

(declare-fun d!715493 () Bool)

(assert (=> d!715493 (= (matchR!3414 lt!895702 tl!4068) (matchR!3414 (derivative!106 lt!895702 tl!4068) Nil!29376))))

(declare-fun lt!895728 () Unit!43079)

(declare-fun choose!14771 (Regex!7411 List!29476) Unit!43079)

(assert (=> d!715493 (= lt!895728 (choose!14771 lt!895702 tl!4068))))

(assert (=> d!715493 (validRegex!3037 lt!895702)))

(assert (=> d!715493 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!60 lt!895702 tl!4068) lt!895728)))

(declare-fun bs!468577 () Bool)

(assert (= bs!468577 d!715493))

(assert (=> bs!468577 m!2863701))

(assert (=> bs!468577 m!2863703))

(declare-fun m!2863795 () Bool)

(assert (=> bs!468577 m!2863795))

(assert (=> bs!468577 m!2863789))

(assert (=> bs!468577 m!2863701))

(assert (=> bs!468577 m!2863691))

(assert (=> b!2501353 d!715493))

(declare-fun b!2501546 () Bool)

(declare-fun e!1586570 () Bool)

(declare-fun e!1586568 () Bool)

(assert (=> b!2501546 (= e!1586570 e!1586568)))

(declare-fun res!1057760 () Bool)

(assert (=> b!2501546 (=> res!1057760 e!1586568)))

(declare-fun call!154546 () Bool)

(assert (=> b!2501546 (= res!1057760 call!154546)))

(declare-fun b!2501547 () Bool)

(declare-fun res!1057766 () Bool)

(assert (=> b!2501547 (=> res!1057766 e!1586568)))

(assert (=> b!2501547 (= res!1057766 (not (isEmpty!16836 (tail!3977 Nil!29376))))))

(declare-fun b!2501548 () Bool)

(declare-fun e!1586569 () Bool)

(assert (=> b!2501548 (= e!1586569 (= (head!5700 Nil!29376) (c!398011 (derivative!106 lt!895702 tl!4068))))))

(declare-fun b!2501549 () Bool)

(declare-fun res!1057764 () Bool)

(declare-fun e!1586567 () Bool)

(assert (=> b!2501549 (=> res!1057764 e!1586567)))

(assert (=> b!2501549 (= res!1057764 (not ((_ is ElementMatch!7411) (derivative!106 lt!895702 tl!4068))))))

(declare-fun e!1586571 () Bool)

(assert (=> b!2501549 (= e!1586571 e!1586567)))

(declare-fun b!2501550 () Bool)

(declare-fun lt!895729 () Bool)

(assert (=> b!2501550 (= e!1586571 (not lt!895729))))

(declare-fun b!2501551 () Bool)

(declare-fun res!1057762 () Bool)

(assert (=> b!2501551 (=> (not res!1057762) (not e!1586569))))

(assert (=> b!2501551 (= res!1057762 (not call!154546))))

(declare-fun b!2501552 () Bool)

(declare-fun e!1586566 () Bool)

(assert (=> b!2501552 (= e!1586566 (= lt!895729 call!154546))))

(declare-fun b!2501553 () Bool)

(declare-fun e!1586565 () Bool)

(assert (=> b!2501553 (= e!1586565 (nullable!2328 (derivative!106 lt!895702 tl!4068)))))

(declare-fun b!2501554 () Bool)

(assert (=> b!2501554 (= e!1586567 e!1586570)))

(declare-fun res!1057765 () Bool)

(assert (=> b!2501554 (=> (not res!1057765) (not e!1586570))))

(assert (=> b!2501554 (= res!1057765 (not lt!895729))))

(declare-fun b!2501555 () Bool)

(assert (=> b!2501555 (= e!1586566 e!1586571)))

(declare-fun c!398061 () Bool)

(assert (=> b!2501555 (= c!398061 ((_ is EmptyLang!7411) (derivative!106 lt!895702 tl!4068)))))

(declare-fun bm!154541 () Bool)

(assert (=> bm!154541 (= call!154546 (isEmpty!16836 Nil!29376))))

(declare-fun d!715495 () Bool)

(assert (=> d!715495 e!1586566))

(declare-fun c!398062 () Bool)

(assert (=> d!715495 (= c!398062 ((_ is EmptyExpr!7411) (derivative!106 lt!895702 tl!4068)))))

(assert (=> d!715495 (= lt!895729 e!1586565)))

(declare-fun c!398063 () Bool)

(assert (=> d!715495 (= c!398063 (isEmpty!16836 Nil!29376))))

(assert (=> d!715495 (validRegex!3037 (derivative!106 lt!895702 tl!4068))))

(assert (=> d!715495 (= (matchR!3414 (derivative!106 lt!895702 tl!4068) Nil!29376) lt!895729)))

(declare-fun b!2501556 () Bool)

(declare-fun res!1057767 () Bool)

(assert (=> b!2501556 (=> res!1057767 e!1586567)))

(assert (=> b!2501556 (= res!1057767 e!1586569)))

(declare-fun res!1057763 () Bool)

(assert (=> b!2501556 (=> (not res!1057763) (not e!1586569))))

(assert (=> b!2501556 (= res!1057763 lt!895729)))

(declare-fun b!2501557 () Bool)

(assert (=> b!2501557 (= e!1586565 (matchR!3414 (derivativeStep!1980 (derivative!106 lt!895702 tl!4068) (head!5700 Nil!29376)) (tail!3977 Nil!29376)))))

(declare-fun b!2501558 () Bool)

(assert (=> b!2501558 (= e!1586568 (not (= (head!5700 Nil!29376) (c!398011 (derivative!106 lt!895702 tl!4068)))))))

(declare-fun b!2501559 () Bool)

(declare-fun res!1057761 () Bool)

(assert (=> b!2501559 (=> (not res!1057761) (not e!1586569))))

(assert (=> b!2501559 (= res!1057761 (isEmpty!16836 (tail!3977 Nil!29376)))))

(assert (= (and d!715495 c!398063) b!2501553))

(assert (= (and d!715495 (not c!398063)) b!2501557))

(assert (= (and d!715495 c!398062) b!2501552))

(assert (= (and d!715495 (not c!398062)) b!2501555))

(assert (= (and b!2501555 c!398061) b!2501550))

(assert (= (and b!2501555 (not c!398061)) b!2501549))

(assert (= (and b!2501549 (not res!1057764)) b!2501556))

(assert (= (and b!2501556 res!1057763) b!2501551))

(assert (= (and b!2501551 res!1057762) b!2501559))

(assert (= (and b!2501559 res!1057761) b!2501548))

(assert (= (and b!2501556 (not res!1057767)) b!2501554))

(assert (= (and b!2501554 res!1057765) b!2501546))

(assert (= (and b!2501546 (not res!1057760)) b!2501547))

(assert (= (and b!2501547 (not res!1057766)) b!2501558))

(assert (= (or b!2501552 b!2501546 b!2501551) bm!154541))

(declare-fun m!2863797 () Bool)

(assert (=> b!2501558 m!2863797))

(assert (=> b!2501553 m!2863701))

(declare-fun m!2863799 () Bool)

(assert (=> b!2501553 m!2863799))

(declare-fun m!2863801 () Bool)

(assert (=> b!2501559 m!2863801))

(assert (=> b!2501559 m!2863801))

(declare-fun m!2863803 () Bool)

(assert (=> b!2501559 m!2863803))

(declare-fun m!2863805 () Bool)

(assert (=> bm!154541 m!2863805))

(assert (=> b!2501547 m!2863801))

(assert (=> b!2501547 m!2863801))

(assert (=> b!2501547 m!2863803))

(assert (=> b!2501548 m!2863797))

(assert (=> d!715495 m!2863805))

(assert (=> d!715495 m!2863701))

(declare-fun m!2863807 () Bool)

(assert (=> d!715495 m!2863807))

(assert (=> b!2501557 m!2863797))

(assert (=> b!2501557 m!2863701))

(assert (=> b!2501557 m!2863797))

(declare-fun m!2863809 () Bool)

(assert (=> b!2501557 m!2863809))

(assert (=> b!2501557 m!2863801))

(assert (=> b!2501557 m!2863809))

(assert (=> b!2501557 m!2863801))

(declare-fun m!2863811 () Bool)

(assert (=> b!2501557 m!2863811))

(assert (=> b!2501353 d!715495))

(declare-fun b!2501641 () Bool)

(declare-fun e!1586621 () Regex!7411)

(declare-fun call!154584 () Regex!7411)

(declare-fun call!154583 () Regex!7411)

(assert (=> b!2501641 (= e!1586621 (Union!7411 call!154584 call!154583))))

(declare-fun b!2501642 () Bool)

(declare-fun e!1586624 () Regex!7411)

(declare-fun e!1586623 () Regex!7411)

(assert (=> b!2501642 (= e!1586624 e!1586623)))

(declare-fun c!398094 () Bool)

(assert (=> b!2501642 (= c!398094 ((_ is ElementMatch!7411) (regTwo!15334 r!27340)))))

(declare-fun bm!154576 () Bool)

(declare-fun c!398096 () Bool)

(declare-fun c!398095 () Bool)

(assert (=> bm!154576 (= call!154584 (derivativeStep!1980 (ite c!398096 (regOne!15335 (regTwo!15334 r!27340)) (ite c!398095 (reg!7740 (regTwo!15334 r!27340)) (regOne!15334 (regTwo!15334 r!27340)))) c!14016))))

(declare-fun b!2501643 () Bool)

(assert (=> b!2501643 (= c!398096 ((_ is Union!7411) (regTwo!15334 r!27340)))))

(assert (=> b!2501643 (= e!1586623 e!1586621)))

(declare-fun bm!154577 () Bool)

(declare-fun call!154582 () Regex!7411)

(declare-fun call!154581 () Regex!7411)

(assert (=> bm!154577 (= call!154582 call!154581)))

(declare-fun b!2501644 () Bool)

(declare-fun e!1586620 () Regex!7411)

(assert (=> b!2501644 (= e!1586621 e!1586620)))

(assert (=> b!2501644 (= c!398095 ((_ is Star!7411) (regTwo!15334 r!27340)))))

(declare-fun b!2501645 () Bool)

(declare-fun c!398093 () Bool)

(assert (=> b!2501645 (= c!398093 (nullable!2328 (regOne!15334 (regTwo!15334 r!27340))))))

(declare-fun e!1586622 () Regex!7411)

(assert (=> b!2501645 (= e!1586620 e!1586622)))

(declare-fun b!2501646 () Bool)

(assert (=> b!2501646 (= e!1586622 (Union!7411 (Concat!12107 call!154582 (regTwo!15334 (regTwo!15334 r!27340))) call!154583))))

(declare-fun b!2501647 () Bool)

(assert (=> b!2501647 (= e!1586620 (Concat!12107 call!154581 (regTwo!15334 r!27340)))))

(declare-fun b!2501648 () Bool)

(assert (=> b!2501648 (= e!1586624 EmptyLang!7411)))

(declare-fun bm!154578 () Bool)

(assert (=> bm!154578 (= call!154581 call!154584)))

(declare-fun d!715497 () Bool)

(declare-fun lt!895735 () Regex!7411)

(assert (=> d!715497 (validRegex!3037 lt!895735)))

(assert (=> d!715497 (= lt!895735 e!1586624)))

(declare-fun c!398097 () Bool)

(assert (=> d!715497 (= c!398097 (or ((_ is EmptyExpr!7411) (regTwo!15334 r!27340)) ((_ is EmptyLang!7411) (regTwo!15334 r!27340))))))

(assert (=> d!715497 (validRegex!3037 (regTwo!15334 r!27340))))

(assert (=> d!715497 (= (derivativeStep!1980 (regTwo!15334 r!27340) c!14016) lt!895735)))

(declare-fun b!2501649 () Bool)

(assert (=> b!2501649 (= e!1586622 (Union!7411 (Concat!12107 call!154582 (regTwo!15334 (regTwo!15334 r!27340))) EmptyLang!7411))))

(declare-fun b!2501650 () Bool)

(assert (=> b!2501650 (= e!1586623 (ite (= c!14016 (c!398011 (regTwo!15334 r!27340))) EmptyExpr!7411 EmptyLang!7411))))

(declare-fun bm!154579 () Bool)

(assert (=> bm!154579 (= call!154583 (derivativeStep!1980 (ite c!398096 (regTwo!15335 (regTwo!15334 r!27340)) (regTwo!15334 (regTwo!15334 r!27340))) c!14016))))

(assert (= (and d!715497 c!398097) b!2501648))

(assert (= (and d!715497 (not c!398097)) b!2501642))

(assert (= (and b!2501642 c!398094) b!2501650))

(assert (= (and b!2501642 (not c!398094)) b!2501643))

(assert (= (and b!2501643 c!398096) b!2501641))

(assert (= (and b!2501643 (not c!398096)) b!2501644))

(assert (= (and b!2501644 c!398095) b!2501647))

(assert (= (and b!2501644 (not c!398095)) b!2501645))

(assert (= (and b!2501645 c!398093) b!2501646))

(assert (= (and b!2501645 (not c!398093)) b!2501649))

(assert (= (or b!2501646 b!2501649) bm!154577))

(assert (= (or b!2501647 bm!154577) bm!154578))

(assert (= (or b!2501641 b!2501646) bm!154579))

(assert (= (or b!2501641 bm!154578) bm!154576))

(declare-fun m!2863845 () Bool)

(assert (=> bm!154576 m!2863845))

(declare-fun m!2863847 () Bool)

(assert (=> b!2501645 m!2863847))

(declare-fun m!2863849 () Bool)

(assert (=> d!715497 m!2863849))

(declare-fun m!2863851 () Bool)

(assert (=> d!715497 m!2863851))

(declare-fun m!2863853 () Bool)

(assert (=> bm!154579 m!2863853))

(assert (=> b!2501353 d!715497))

(declare-fun b!2501660 () Bool)

(declare-fun e!1586633 () Regex!7411)

(declare-fun call!154591 () Regex!7411)

(declare-fun call!154590 () Regex!7411)

(assert (=> b!2501660 (= e!1586633 (Union!7411 call!154591 call!154590))))

(declare-fun b!2501661 () Bool)

(declare-fun e!1586636 () Regex!7411)

(declare-fun e!1586635 () Regex!7411)

(assert (=> b!2501661 (= e!1586636 e!1586635)))

(declare-fun c!398101 () Bool)

(assert (=> b!2501661 (= c!398101 ((_ is ElementMatch!7411) (regOne!15334 r!27340)))))

(declare-fun c!398102 () Bool)

(declare-fun c!398103 () Bool)

(declare-fun bm!154583 () Bool)

(assert (=> bm!154583 (= call!154591 (derivativeStep!1980 (ite c!398103 (regOne!15335 (regOne!15334 r!27340)) (ite c!398102 (reg!7740 (regOne!15334 r!27340)) (regOne!15334 (regOne!15334 r!27340)))) c!14016))))

(declare-fun b!2501662 () Bool)

(assert (=> b!2501662 (= c!398103 ((_ is Union!7411) (regOne!15334 r!27340)))))

(assert (=> b!2501662 (= e!1586635 e!1586633)))

(declare-fun bm!154584 () Bool)

(declare-fun call!154589 () Regex!7411)

(declare-fun call!154588 () Regex!7411)

(assert (=> bm!154584 (= call!154589 call!154588)))

(declare-fun b!2501663 () Bool)

(declare-fun e!1586632 () Regex!7411)

(assert (=> b!2501663 (= e!1586633 e!1586632)))

(assert (=> b!2501663 (= c!398102 ((_ is Star!7411) (regOne!15334 r!27340)))))

(declare-fun b!2501664 () Bool)

(declare-fun c!398100 () Bool)

(assert (=> b!2501664 (= c!398100 (nullable!2328 (regOne!15334 (regOne!15334 r!27340))))))

(declare-fun e!1586634 () Regex!7411)

(assert (=> b!2501664 (= e!1586632 e!1586634)))

(declare-fun b!2501665 () Bool)

(assert (=> b!2501665 (= e!1586634 (Union!7411 (Concat!12107 call!154589 (regTwo!15334 (regOne!15334 r!27340))) call!154590))))

(declare-fun b!2501666 () Bool)

(assert (=> b!2501666 (= e!1586632 (Concat!12107 call!154588 (regOne!15334 r!27340)))))

(declare-fun b!2501667 () Bool)

(assert (=> b!2501667 (= e!1586636 EmptyLang!7411)))

(declare-fun bm!154585 () Bool)

(assert (=> bm!154585 (= call!154588 call!154591)))

(declare-fun d!715509 () Bool)

(declare-fun lt!895736 () Regex!7411)

(assert (=> d!715509 (validRegex!3037 lt!895736)))

(assert (=> d!715509 (= lt!895736 e!1586636)))

(declare-fun c!398104 () Bool)

(assert (=> d!715509 (= c!398104 (or ((_ is EmptyExpr!7411) (regOne!15334 r!27340)) ((_ is EmptyLang!7411) (regOne!15334 r!27340))))))

(assert (=> d!715509 (validRegex!3037 (regOne!15334 r!27340))))

(assert (=> d!715509 (= (derivativeStep!1980 (regOne!15334 r!27340) c!14016) lt!895736)))

(declare-fun b!2501668 () Bool)

(assert (=> b!2501668 (= e!1586634 (Union!7411 (Concat!12107 call!154589 (regTwo!15334 (regOne!15334 r!27340))) EmptyLang!7411))))

(declare-fun b!2501669 () Bool)

(assert (=> b!2501669 (= e!1586635 (ite (= c!14016 (c!398011 (regOne!15334 r!27340))) EmptyExpr!7411 EmptyLang!7411))))

(declare-fun bm!154586 () Bool)

(assert (=> bm!154586 (= call!154590 (derivativeStep!1980 (ite c!398103 (regTwo!15335 (regOne!15334 r!27340)) (regTwo!15334 (regOne!15334 r!27340))) c!14016))))

(assert (= (and d!715509 c!398104) b!2501667))

(assert (= (and d!715509 (not c!398104)) b!2501661))

(assert (= (and b!2501661 c!398101) b!2501669))

(assert (= (and b!2501661 (not c!398101)) b!2501662))

(assert (= (and b!2501662 c!398103) b!2501660))

(assert (= (and b!2501662 (not c!398103)) b!2501663))

(assert (= (and b!2501663 c!398102) b!2501666))

(assert (= (and b!2501663 (not c!398102)) b!2501664))

(assert (= (and b!2501664 c!398100) b!2501665))

(assert (= (and b!2501664 (not c!398100)) b!2501668))

(assert (= (or b!2501665 b!2501668) bm!154584))

(assert (= (or b!2501666 bm!154584) bm!154585))

(assert (= (or b!2501660 b!2501665) bm!154586))

(assert (= (or b!2501660 bm!154585) bm!154583))

(declare-fun m!2863863 () Bool)

(assert (=> bm!154583 m!2863863))

(declare-fun m!2863865 () Bool)

(assert (=> b!2501664 m!2863865))

(declare-fun m!2863867 () Bool)

(assert (=> d!715509 m!2863867))

(assert (=> d!715509 m!2863675))

(declare-fun m!2863873 () Bool)

(assert (=> bm!154586 m!2863873))

(assert (=> b!2501353 d!715509))

(declare-fun d!715515 () Bool)

(declare-fun e!1586657 () Bool)

(assert (=> d!715515 e!1586657))

(declare-fun res!1057801 () Bool)

(assert (=> d!715515 (=> res!1057801 e!1586657)))

(assert (=> d!715515 (= res!1057801 (matchR!3414 lt!895698 tl!4068))))

(declare-fun lt!895741 () Unit!43079)

(declare-fun choose!14772 (Regex!7411 Regex!7411 List!29476) Unit!43079)

(assert (=> d!715515 (= lt!895741 (choose!14772 lt!895698 lt!895697 tl!4068))))

(declare-fun e!1586658 () Bool)

(assert (=> d!715515 e!1586658))

(declare-fun res!1057800 () Bool)

(assert (=> d!715515 (=> (not res!1057800) (not e!1586658))))

(assert (=> d!715515 (= res!1057800 (validRegex!3037 lt!895698))))

(assert (=> d!715515 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!106 lt!895698 lt!895697 tl!4068) lt!895741)))

(declare-fun b!2501721 () Bool)

(assert (=> b!2501721 (= e!1586658 (validRegex!3037 lt!895697))))

(declare-fun b!2501722 () Bool)

(assert (=> b!2501722 (= e!1586657 (matchR!3414 lt!895697 tl!4068))))

(assert (= (and d!715515 res!1057800) b!2501721))

(assert (= (and d!715515 (not res!1057801)) b!2501722))

(assert (=> d!715515 m!2863689))

(declare-fun m!2863885 () Bool)

(assert (=> d!715515 m!2863885))

(assert (=> d!715515 m!2863769))

(assert (=> b!2501721 m!2863761))

(assert (=> b!2501722 m!2863685))

(assert (=> b!2501353 d!715515))

(declare-fun b!2501723 () Bool)

(declare-fun e!1586664 () Bool)

(declare-fun e!1586662 () Bool)

(assert (=> b!2501723 (= e!1586664 e!1586662)))

(declare-fun res!1057802 () Bool)

(assert (=> b!2501723 (=> res!1057802 e!1586662)))

(declare-fun call!154596 () Bool)

(assert (=> b!2501723 (= res!1057802 call!154596)))

(declare-fun b!2501724 () Bool)

(declare-fun res!1057808 () Bool)

(assert (=> b!2501724 (=> res!1057808 e!1586662)))

(assert (=> b!2501724 (= res!1057808 (not (isEmpty!16836 (tail!3977 tl!4068))))))

(declare-fun b!2501725 () Bool)

(declare-fun e!1586663 () Bool)

(assert (=> b!2501725 (= e!1586663 (= (head!5700 tl!4068) (c!398011 lt!895702)))))

(declare-fun b!2501726 () Bool)

(declare-fun res!1057806 () Bool)

(declare-fun e!1586661 () Bool)

(assert (=> b!2501726 (=> res!1057806 e!1586661)))

(assert (=> b!2501726 (= res!1057806 (not ((_ is ElementMatch!7411) lt!895702)))))

(declare-fun e!1586665 () Bool)

(assert (=> b!2501726 (= e!1586665 e!1586661)))

(declare-fun b!2501727 () Bool)

(declare-fun lt!895742 () Bool)

(assert (=> b!2501727 (= e!1586665 (not lt!895742))))

(declare-fun b!2501728 () Bool)

(declare-fun res!1057804 () Bool)

(assert (=> b!2501728 (=> (not res!1057804) (not e!1586663))))

(assert (=> b!2501728 (= res!1057804 (not call!154596))))

(declare-fun b!2501729 () Bool)

(declare-fun e!1586660 () Bool)

(assert (=> b!2501729 (= e!1586660 (= lt!895742 call!154596))))

(declare-fun b!2501730 () Bool)

(declare-fun e!1586659 () Bool)

(assert (=> b!2501730 (= e!1586659 (nullable!2328 lt!895702))))

(declare-fun b!2501731 () Bool)

(assert (=> b!2501731 (= e!1586661 e!1586664)))

(declare-fun res!1057807 () Bool)

(assert (=> b!2501731 (=> (not res!1057807) (not e!1586664))))

(assert (=> b!2501731 (= res!1057807 (not lt!895742))))

(declare-fun b!2501732 () Bool)

(assert (=> b!2501732 (= e!1586660 e!1586665)))

(declare-fun c!398111 () Bool)

(assert (=> b!2501732 (= c!398111 ((_ is EmptyLang!7411) lt!895702))))

(declare-fun bm!154591 () Bool)

(assert (=> bm!154591 (= call!154596 (isEmpty!16836 tl!4068))))

(declare-fun d!715519 () Bool)

(assert (=> d!715519 e!1586660))

(declare-fun c!398112 () Bool)

(assert (=> d!715519 (= c!398112 ((_ is EmptyExpr!7411) lt!895702))))

(assert (=> d!715519 (= lt!895742 e!1586659)))

(declare-fun c!398113 () Bool)

(assert (=> d!715519 (= c!398113 (isEmpty!16836 tl!4068))))

(assert (=> d!715519 (validRegex!3037 lt!895702)))

(assert (=> d!715519 (= (matchR!3414 lt!895702 tl!4068) lt!895742)))

(declare-fun b!2501733 () Bool)

(declare-fun res!1057809 () Bool)

(assert (=> b!2501733 (=> res!1057809 e!1586661)))

(assert (=> b!2501733 (= res!1057809 e!1586663)))

(declare-fun res!1057805 () Bool)

(assert (=> b!2501733 (=> (not res!1057805) (not e!1586663))))

(assert (=> b!2501733 (= res!1057805 lt!895742)))

(declare-fun b!2501734 () Bool)

(assert (=> b!2501734 (= e!1586659 (matchR!3414 (derivativeStep!1980 lt!895702 (head!5700 tl!4068)) (tail!3977 tl!4068)))))

(declare-fun b!2501735 () Bool)

(assert (=> b!2501735 (= e!1586662 (not (= (head!5700 tl!4068) (c!398011 lt!895702))))))

(declare-fun b!2501736 () Bool)

(declare-fun res!1057803 () Bool)

(assert (=> b!2501736 (=> (not res!1057803) (not e!1586663))))

(assert (=> b!2501736 (= res!1057803 (isEmpty!16836 (tail!3977 tl!4068)))))

(assert (= (and d!715519 c!398113) b!2501730))

(assert (= (and d!715519 (not c!398113)) b!2501734))

(assert (= (and d!715519 c!398112) b!2501729))

(assert (= (and d!715519 (not c!398112)) b!2501732))

(assert (= (and b!2501732 c!398111) b!2501727))

(assert (= (and b!2501732 (not c!398111)) b!2501726))

(assert (= (and b!2501726 (not res!1057806)) b!2501733))

(assert (= (and b!2501733 res!1057805) b!2501728))

(assert (= (and b!2501728 res!1057804) b!2501736))

(assert (= (and b!2501736 res!1057803) b!2501725))

(assert (= (and b!2501733 (not res!1057809)) b!2501731))

(assert (= (and b!2501731 res!1057807) b!2501723))

(assert (= (and b!2501723 (not res!1057802)) b!2501724))

(assert (= (and b!2501724 (not res!1057808)) b!2501735))

(assert (= (or b!2501729 b!2501723 b!2501728) bm!154591))

(assert (=> b!2501735 m!2863751))

(declare-fun m!2863887 () Bool)

(assert (=> b!2501730 m!2863887))

(assert (=> b!2501736 m!2863755))

(assert (=> b!2501736 m!2863755))

(assert (=> b!2501736 m!2863757))

(assert (=> bm!154591 m!2863759))

(assert (=> b!2501724 m!2863755))

(assert (=> b!2501724 m!2863755))

(assert (=> b!2501724 m!2863757))

(assert (=> b!2501725 m!2863751))

(assert (=> d!715519 m!2863759))

(assert (=> d!715519 m!2863789))

(assert (=> b!2501734 m!2863751))

(assert (=> b!2501734 m!2863751))

(declare-fun m!2863889 () Bool)

(assert (=> b!2501734 m!2863889))

(assert (=> b!2501734 m!2863755))

(assert (=> b!2501734 m!2863889))

(assert (=> b!2501734 m!2863755))

(declare-fun m!2863891 () Bool)

(assert (=> b!2501734 m!2863891))

(assert (=> b!2501353 d!715519))

(declare-fun d!715521 () Bool)

(declare-fun nullableFct!596 (Regex!7411) Bool)

(assert (=> d!715521 (= (nullable!2328 (regOne!15334 r!27340)) (nullableFct!596 (regOne!15334 r!27340)))))

(declare-fun bs!468580 () Bool)

(assert (= bs!468580 d!715521))

(declare-fun m!2863893 () Bool)

(assert (=> bs!468580 m!2863893))

(assert (=> b!2501344 d!715521))

(declare-fun b!2501737 () Bool)

(declare-fun e!1586668 () Bool)

(declare-fun call!154597 () Bool)

(assert (=> b!2501737 (= e!1586668 call!154597)))

(declare-fun bm!154592 () Bool)

(declare-fun c!398114 () Bool)

(assert (=> bm!154592 (= call!154597 (validRegex!3037 (ite c!398114 (regOne!15335 (regOne!15334 r!27340)) (regTwo!15334 (regOne!15334 r!27340)))))))

(declare-fun b!2501738 () Bool)

(declare-fun res!1057810 () Bool)

(declare-fun e!1586670 () Bool)

(assert (=> b!2501738 (=> res!1057810 e!1586670)))

(assert (=> b!2501738 (= res!1057810 (not ((_ is Concat!12107) (regOne!15334 r!27340))))))

(declare-fun e!1586669 () Bool)

(assert (=> b!2501738 (= e!1586669 e!1586670)))

(declare-fun b!2501739 () Bool)

(declare-fun e!1586671 () Bool)

(assert (=> b!2501739 (= e!1586671 e!1586669)))

(assert (=> b!2501739 (= c!398114 ((_ is Union!7411) (regOne!15334 r!27340)))))

(declare-fun b!2501740 () Bool)

(declare-fun e!1586666 () Bool)

(assert (=> b!2501740 (= e!1586666 e!1586671)))

(declare-fun c!398115 () Bool)

(assert (=> b!2501740 (= c!398115 ((_ is Star!7411) (regOne!15334 r!27340)))))

(declare-fun b!2501741 () Bool)

(declare-fun e!1586667 () Bool)

(declare-fun call!154598 () Bool)

(assert (=> b!2501741 (= e!1586667 call!154598)))

(declare-fun bm!154594 () Bool)

(assert (=> bm!154594 (= call!154598 (validRegex!3037 (ite c!398115 (reg!7740 (regOne!15334 r!27340)) (ite c!398114 (regTwo!15335 (regOne!15334 r!27340)) (regOne!15334 (regOne!15334 r!27340))))))))

(declare-fun b!2501742 () Bool)

(assert (=> b!2501742 (= e!1586670 e!1586668)))

(declare-fun res!1057813 () Bool)

(assert (=> b!2501742 (=> (not res!1057813) (not e!1586668))))

(declare-fun call!154599 () Bool)

(assert (=> b!2501742 (= res!1057813 call!154599)))

(declare-fun b!2501743 () Bool)

(declare-fun e!1586672 () Bool)

(assert (=> b!2501743 (= e!1586672 call!154599)))

(declare-fun b!2501744 () Bool)

(assert (=> b!2501744 (= e!1586671 e!1586667)))

(declare-fun res!1057811 () Bool)

(assert (=> b!2501744 (= res!1057811 (not (nullable!2328 (reg!7740 (regOne!15334 r!27340)))))))

(assert (=> b!2501744 (=> (not res!1057811) (not e!1586667))))

(declare-fun b!2501745 () Bool)

(declare-fun res!1057812 () Bool)

(assert (=> b!2501745 (=> (not res!1057812) (not e!1586672))))

(assert (=> b!2501745 (= res!1057812 call!154597)))

(assert (=> b!2501745 (= e!1586669 e!1586672)))

(declare-fun d!715523 () Bool)

(declare-fun res!1057814 () Bool)

(assert (=> d!715523 (=> res!1057814 e!1586666)))

(assert (=> d!715523 (= res!1057814 ((_ is ElementMatch!7411) (regOne!15334 r!27340)))))

(assert (=> d!715523 (= (validRegex!3037 (regOne!15334 r!27340)) e!1586666)))

(declare-fun bm!154593 () Bool)

(assert (=> bm!154593 (= call!154599 call!154598)))

(assert (= (and d!715523 (not res!1057814)) b!2501740))

(assert (= (and b!2501740 c!398115) b!2501744))

(assert (= (and b!2501740 (not c!398115)) b!2501739))

(assert (= (and b!2501744 res!1057811) b!2501741))

(assert (= (and b!2501739 c!398114) b!2501745))

(assert (= (and b!2501739 (not c!398114)) b!2501738))

(assert (= (and b!2501745 res!1057812) b!2501743))

(assert (= (and b!2501738 (not res!1057810)) b!2501742))

(assert (= (and b!2501742 res!1057813) b!2501737))

(assert (= (or b!2501745 b!2501737) bm!154592))

(assert (= (or b!2501743 b!2501742) bm!154593))

(assert (= (or b!2501741 bm!154593) bm!154594))

(declare-fun m!2863895 () Bool)

(assert (=> bm!154592 m!2863895))

(declare-fun m!2863897 () Bool)

(assert (=> bm!154594 m!2863897))

(declare-fun m!2863899 () Bool)

(assert (=> b!2501744 m!2863899))

(assert (=> b!2501349 d!715523))

(declare-fun d!715525 () Bool)

(assert (=> d!715525 (= (nullable!2328 (derivative!106 (derivativeStep!1980 r!27340 c!14016) tl!4068)) (nullableFct!596 (derivative!106 (derivativeStep!1980 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468581 () Bool)

(assert (= bs!468581 d!715525))

(assert (=> bs!468581 m!2863679))

(declare-fun m!2863901 () Bool)

(assert (=> bs!468581 m!2863901))

(assert (=> b!2501351 d!715525))

(declare-fun d!715527 () Bool)

(declare-fun lt!895743 () Regex!7411)

(assert (=> d!715527 (validRegex!3037 lt!895743)))

(declare-fun e!1586673 () Regex!7411)

(assert (=> d!715527 (= lt!895743 e!1586673)))

(declare-fun c!398116 () Bool)

(assert (=> d!715527 (= c!398116 ((_ is Cons!29376) tl!4068))))

(assert (=> d!715527 (validRegex!3037 (derivativeStep!1980 r!27340 c!14016))))

(assert (=> d!715527 (= (derivative!106 (derivativeStep!1980 r!27340 c!14016) tl!4068) lt!895743)))

(declare-fun b!2501746 () Bool)

(assert (=> b!2501746 (= e!1586673 (derivative!106 (derivativeStep!1980 (derivativeStep!1980 r!27340 c!14016) (h!34796 tl!4068)) (t!211175 tl!4068)))))

(declare-fun b!2501747 () Bool)

(assert (=> b!2501747 (= e!1586673 (derivativeStep!1980 r!27340 c!14016))))

(assert (= (and d!715527 c!398116) b!2501746))

(assert (= (and d!715527 (not c!398116)) b!2501747))

(declare-fun m!2863903 () Bool)

(assert (=> d!715527 m!2863903))

(assert (=> d!715527 m!2863677))

(declare-fun m!2863905 () Bool)

(assert (=> d!715527 m!2863905))

(assert (=> b!2501746 m!2863677))

(declare-fun m!2863907 () Bool)

(assert (=> b!2501746 m!2863907))

(assert (=> b!2501746 m!2863907))

(declare-fun m!2863909 () Bool)

(assert (=> b!2501746 m!2863909))

(assert (=> b!2501351 d!715527))

(declare-fun b!2501748 () Bool)

(declare-fun e!1586675 () Regex!7411)

(declare-fun call!154603 () Regex!7411)

(declare-fun call!154602 () Regex!7411)

(assert (=> b!2501748 (= e!1586675 (Union!7411 call!154603 call!154602))))

(declare-fun b!2501749 () Bool)

(declare-fun e!1586678 () Regex!7411)

(declare-fun e!1586677 () Regex!7411)

(assert (=> b!2501749 (= e!1586678 e!1586677)))

(declare-fun c!398118 () Bool)

(assert (=> b!2501749 (= c!398118 ((_ is ElementMatch!7411) r!27340))))

(declare-fun c!398120 () Bool)

(declare-fun bm!154595 () Bool)

(declare-fun c!398119 () Bool)

(assert (=> bm!154595 (= call!154603 (derivativeStep!1980 (ite c!398120 (regOne!15335 r!27340) (ite c!398119 (reg!7740 r!27340) (regOne!15334 r!27340))) c!14016))))

(declare-fun b!2501750 () Bool)

(assert (=> b!2501750 (= c!398120 ((_ is Union!7411) r!27340))))

(assert (=> b!2501750 (= e!1586677 e!1586675)))

(declare-fun bm!154596 () Bool)

(declare-fun call!154601 () Regex!7411)

(declare-fun call!154600 () Regex!7411)

(assert (=> bm!154596 (= call!154601 call!154600)))

(declare-fun b!2501751 () Bool)

(declare-fun e!1586674 () Regex!7411)

(assert (=> b!2501751 (= e!1586675 e!1586674)))

(assert (=> b!2501751 (= c!398119 ((_ is Star!7411) r!27340))))

(declare-fun b!2501752 () Bool)

(declare-fun c!398117 () Bool)

(assert (=> b!2501752 (= c!398117 (nullable!2328 (regOne!15334 r!27340)))))

(declare-fun e!1586676 () Regex!7411)

(assert (=> b!2501752 (= e!1586674 e!1586676)))

(declare-fun b!2501753 () Bool)

(assert (=> b!2501753 (= e!1586676 (Union!7411 (Concat!12107 call!154601 (regTwo!15334 r!27340)) call!154602))))

(declare-fun b!2501754 () Bool)

(assert (=> b!2501754 (= e!1586674 (Concat!12107 call!154600 r!27340))))

(declare-fun b!2501755 () Bool)

(assert (=> b!2501755 (= e!1586678 EmptyLang!7411)))

(declare-fun bm!154597 () Bool)

(assert (=> bm!154597 (= call!154600 call!154603)))

(declare-fun d!715529 () Bool)

(declare-fun lt!895744 () Regex!7411)

(assert (=> d!715529 (validRegex!3037 lt!895744)))

(assert (=> d!715529 (= lt!895744 e!1586678)))

(declare-fun c!398121 () Bool)

(assert (=> d!715529 (= c!398121 (or ((_ is EmptyExpr!7411) r!27340) ((_ is EmptyLang!7411) r!27340)))))

(assert (=> d!715529 (validRegex!3037 r!27340)))

(assert (=> d!715529 (= (derivativeStep!1980 r!27340 c!14016) lt!895744)))

(declare-fun b!2501756 () Bool)

(assert (=> b!2501756 (= e!1586676 (Union!7411 (Concat!12107 call!154601 (regTwo!15334 r!27340)) EmptyLang!7411))))

(declare-fun b!2501757 () Bool)

(assert (=> b!2501757 (= e!1586677 (ite (= c!14016 (c!398011 r!27340)) EmptyExpr!7411 EmptyLang!7411))))

(declare-fun bm!154598 () Bool)

(assert (=> bm!154598 (= call!154602 (derivativeStep!1980 (ite c!398120 (regTwo!15335 r!27340) (regTwo!15334 r!27340)) c!14016))))

(assert (= (and d!715529 c!398121) b!2501755))

(assert (= (and d!715529 (not c!398121)) b!2501749))

(assert (= (and b!2501749 c!398118) b!2501757))

(assert (= (and b!2501749 (not c!398118)) b!2501750))

(assert (= (and b!2501750 c!398120) b!2501748))

(assert (= (and b!2501750 (not c!398120)) b!2501751))

(assert (= (and b!2501751 c!398119) b!2501754))

(assert (= (and b!2501751 (not c!398119)) b!2501752))

(assert (= (and b!2501752 c!398117) b!2501753))

(assert (= (and b!2501752 (not c!398117)) b!2501756))

(assert (= (or b!2501753 b!2501756) bm!154596))

(assert (= (or b!2501754 bm!154596) bm!154597))

(assert (= (or b!2501748 b!2501753) bm!154598))

(assert (= (or b!2501748 bm!154597) bm!154595))

(declare-fun m!2863911 () Bool)

(assert (=> bm!154595 m!2863911))

(assert (=> b!2501752 m!2863687))

(declare-fun m!2863913 () Bool)

(assert (=> d!715529 m!2863913))

(assert (=> d!715529 m!2863683))

(declare-fun m!2863915 () Bool)

(assert (=> bm!154598 m!2863915))

(assert (=> b!2501351 d!715529))

(declare-fun b!2501762 () Bool)

(declare-fun e!1586681 () Bool)

(declare-fun tp!800879 () Bool)

(assert (=> b!2501762 (= e!1586681 (and tp_is_empty!12677 tp!800879))))

(assert (=> b!2501347 (= tp!800834 e!1586681)))

(assert (= (and b!2501347 ((_ is Cons!29376) (t!211175 tl!4068))) b!2501762))

(declare-fun b!2501776 () Bool)

(declare-fun e!1586684 () Bool)

(declare-fun tp!800892 () Bool)

(declare-fun tp!800890 () Bool)

(assert (=> b!2501776 (= e!1586684 (and tp!800892 tp!800890))))

(declare-fun b!2501775 () Bool)

(declare-fun tp!800891 () Bool)

(assert (=> b!2501775 (= e!1586684 tp!800891)))

(declare-fun b!2501773 () Bool)

(assert (=> b!2501773 (= e!1586684 tp_is_empty!12677)))

(declare-fun b!2501774 () Bool)

(declare-fun tp!800894 () Bool)

(declare-fun tp!800893 () Bool)

(assert (=> b!2501774 (= e!1586684 (and tp!800894 tp!800893))))

(assert (=> b!2501352 (= tp!800837 e!1586684)))

(assert (= (and b!2501352 ((_ is ElementMatch!7411) (regOne!15335 r!27340))) b!2501773))

(assert (= (and b!2501352 ((_ is Concat!12107) (regOne!15335 r!27340))) b!2501774))

(assert (= (and b!2501352 ((_ is Star!7411) (regOne!15335 r!27340))) b!2501775))

(assert (= (and b!2501352 ((_ is Union!7411) (regOne!15335 r!27340))) b!2501776))

(declare-fun b!2501780 () Bool)

(declare-fun e!1586685 () Bool)

(declare-fun tp!800897 () Bool)

(declare-fun tp!800895 () Bool)

(assert (=> b!2501780 (= e!1586685 (and tp!800897 tp!800895))))

(declare-fun b!2501779 () Bool)

(declare-fun tp!800896 () Bool)

(assert (=> b!2501779 (= e!1586685 tp!800896)))

(declare-fun b!2501777 () Bool)

(assert (=> b!2501777 (= e!1586685 tp_is_empty!12677)))

(declare-fun b!2501778 () Bool)

(declare-fun tp!800899 () Bool)

(declare-fun tp!800898 () Bool)

(assert (=> b!2501778 (= e!1586685 (and tp!800899 tp!800898))))

(assert (=> b!2501352 (= tp!800838 e!1586685)))

(assert (= (and b!2501352 ((_ is ElementMatch!7411) (regTwo!15335 r!27340))) b!2501777))

(assert (= (and b!2501352 ((_ is Concat!12107) (regTwo!15335 r!27340))) b!2501778))

(assert (= (and b!2501352 ((_ is Star!7411) (regTwo!15335 r!27340))) b!2501779))

(assert (= (and b!2501352 ((_ is Union!7411) (regTwo!15335 r!27340))) b!2501780))

(declare-fun b!2501784 () Bool)

(declare-fun e!1586686 () Bool)

(declare-fun tp!800902 () Bool)

(declare-fun tp!800900 () Bool)

(assert (=> b!2501784 (= e!1586686 (and tp!800902 tp!800900))))

(declare-fun b!2501783 () Bool)

(declare-fun tp!800901 () Bool)

(assert (=> b!2501783 (= e!1586686 tp!800901)))

(declare-fun b!2501781 () Bool)

(assert (=> b!2501781 (= e!1586686 tp_is_empty!12677)))

(declare-fun b!2501782 () Bool)

(declare-fun tp!800904 () Bool)

(declare-fun tp!800903 () Bool)

(assert (=> b!2501782 (= e!1586686 (and tp!800904 tp!800903))))

(assert (=> b!2501345 (= tp!800836 e!1586686)))

(assert (= (and b!2501345 ((_ is ElementMatch!7411) (reg!7740 r!27340))) b!2501781))

(assert (= (and b!2501345 ((_ is Concat!12107) (reg!7740 r!27340))) b!2501782))

(assert (= (and b!2501345 ((_ is Star!7411) (reg!7740 r!27340))) b!2501783))

(assert (= (and b!2501345 ((_ is Union!7411) (reg!7740 r!27340))) b!2501784))

(declare-fun b!2501788 () Bool)

(declare-fun e!1586687 () Bool)

(declare-fun tp!800907 () Bool)

(declare-fun tp!800905 () Bool)

(assert (=> b!2501788 (= e!1586687 (and tp!800907 tp!800905))))

(declare-fun b!2501787 () Bool)

(declare-fun tp!800906 () Bool)

(assert (=> b!2501787 (= e!1586687 tp!800906)))

(declare-fun b!2501785 () Bool)

(assert (=> b!2501785 (= e!1586687 tp_is_empty!12677)))

(declare-fun b!2501786 () Bool)

(declare-fun tp!800909 () Bool)

(declare-fun tp!800908 () Bool)

(assert (=> b!2501786 (= e!1586687 (and tp!800909 tp!800908))))

(assert (=> b!2501350 (= tp!800833 e!1586687)))

(assert (= (and b!2501350 ((_ is ElementMatch!7411) (regOne!15334 r!27340))) b!2501785))

(assert (= (and b!2501350 ((_ is Concat!12107) (regOne!15334 r!27340))) b!2501786))

(assert (= (and b!2501350 ((_ is Star!7411) (regOne!15334 r!27340))) b!2501787))

(assert (= (and b!2501350 ((_ is Union!7411) (regOne!15334 r!27340))) b!2501788))

(declare-fun b!2501792 () Bool)

(declare-fun e!1586688 () Bool)

(declare-fun tp!800912 () Bool)

(declare-fun tp!800910 () Bool)

(assert (=> b!2501792 (= e!1586688 (and tp!800912 tp!800910))))

(declare-fun b!2501791 () Bool)

(declare-fun tp!800911 () Bool)

(assert (=> b!2501791 (= e!1586688 tp!800911)))

(declare-fun b!2501789 () Bool)

(assert (=> b!2501789 (= e!1586688 tp_is_empty!12677)))

(declare-fun b!2501790 () Bool)

(declare-fun tp!800914 () Bool)

(declare-fun tp!800913 () Bool)

(assert (=> b!2501790 (= e!1586688 (and tp!800914 tp!800913))))

(assert (=> b!2501350 (= tp!800835 e!1586688)))

(assert (= (and b!2501350 ((_ is ElementMatch!7411) (regTwo!15334 r!27340))) b!2501789))

(assert (= (and b!2501350 ((_ is Concat!12107) (regTwo!15334 r!27340))) b!2501790))

(assert (= (and b!2501350 ((_ is Star!7411) (regTwo!15334 r!27340))) b!2501791))

(assert (= (and b!2501350 ((_ is Union!7411) (regTwo!15334 r!27340))) b!2501792))

(check-sat (not b!2501557) (not bm!154531) (not b!2501736) (not b!2501724) (not b!2501744) (not bm!154541) (not b!2501485) (not b!2501488) (not b!2501784) (not b!2501497) (not b!2501730) (not d!715497) (not d!715521) (not b!2501474) (not bm!154533) (not b!2501782) (not b!2501473) (not bm!154538) (not d!715487) (not bm!154583) (not bm!154591) (not bm!154592) (not b!2501735) (not bm!154576) (not b!2501786) (not d!715485) (not b!2501774) (not b!2501553) (not b!2501725) (not d!715527) (not d!715493) (not b!2501547) (not d!715475) (not b!2501780) (not b!2501752) (not bm!154579) (not b!2501484) (not b!2501499) (not b!2501792) (not b!2501722) (not d!715495) (not b!2501479) tp_is_empty!12677 (not b!2501776) (not b!2501664) (not d!715525) (not b!2501734) (not d!715529) (not b!2501788) (not b!2501558) (not bm!154586) (not bm!154598) (not b!2501559) (not b!2501791) (not b!2501548) (not b!2501762) (not b!2501487) (not b!2501778) (not b!2501483) (not bm!154539) (not d!715519) (not d!715509) (not b!2501721) (not b!2501498) (not b!2501645) (not bm!154594) (not bm!154595) (not b!2501775) (not b!2501790) (not b!2501524) (not b!2501787) (not b!2501408) (not b!2501783) (not b!2501493) (not d!715515) (not b!2501746) (not b!2501779))
(check-sat)
