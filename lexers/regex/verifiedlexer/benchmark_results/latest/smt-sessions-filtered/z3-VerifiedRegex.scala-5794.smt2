; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285996 () Bool)

(assert start!285996)

(declare-fun b!2947613 () Bool)

(declare-fun e!1856812 () Bool)

(declare-fun tp!942632 () Bool)

(declare-fun tp!942637 () Bool)

(assert (=> b!2947613 (= e!1856812 (and tp!942632 tp!942637))))

(declare-fun b!2947615 () Bool)

(declare-fun res!1216352 () Bool)

(declare-fun e!1856814 () Bool)

(assert (=> b!2947615 (=> res!1216352 e!1856814)))

(declare-datatypes ((C!18464 0))(
  ( (C!18465 (val!11268 Int)) )
))
(declare-datatypes ((Regex!9139 0))(
  ( (ElementMatch!9139 (c!482299 C!18464)) (Concat!14460 (regOne!18790 Regex!9139) (regTwo!18790 Regex!9139)) (EmptyExpr!9139) (Star!9139 (reg!9468 Regex!9139)) (EmptyLang!9139) (Union!9139 (regOne!18791 Regex!9139) (regTwo!18791 Regex!9139)) )
))
(declare-fun lt!1031447 () Regex!9139)

(declare-fun lt!1031449 () Regex!9139)

(declare-datatypes ((List!35004 0))(
  ( (Nil!34880) (Cons!34880 (h!40300 C!18464) (t!234069 List!35004)) )
))
(declare-fun s!11993 () List!35004)

(declare-fun matchR!4021 (Regex!9139 List!35004) Bool)

(assert (=> b!2947615 (= res!1216352 (not (matchR!4021 (Concat!14460 lt!1031447 lt!1031449) s!11993)))))

(declare-fun b!2947616 () Bool)

(declare-fun res!1216355 () Bool)

(assert (=> b!2947616 (=> res!1216355 e!1856814)))

(declare-fun isEmptyLang!261 (Regex!9139) Bool)

(assert (=> b!2947616 (= res!1216355 (isEmptyLang!261 lt!1031449))))

(declare-fun b!2947617 () Bool)

(declare-fun res!1216354 () Bool)

(assert (=> b!2947617 (=> res!1216354 e!1856814)))

(declare-fun isEmptyExpr!342 (Regex!9139) Bool)

(assert (=> b!2947617 (= res!1216354 (isEmptyExpr!342 lt!1031447))))

(declare-fun b!2947618 () Bool)

(declare-fun e!1856811 () Bool)

(declare-fun e!1856813 () Bool)

(assert (=> b!2947618 (= e!1856811 (not e!1856813))))

(declare-fun res!1216351 () Bool)

(assert (=> b!2947618 (=> res!1216351 e!1856813)))

(declare-fun lt!1031446 () Bool)

(declare-fun r!17423 () Regex!9139)

(get-info :version)

(assert (=> b!2947618 (= res!1216351 (or lt!1031446 (not ((_ is Concat!14460) r!17423))))))

(declare-fun matchRSpec!1276 (Regex!9139 List!35004) Bool)

(assert (=> b!2947618 (= lt!1031446 (matchRSpec!1276 r!17423 s!11993))))

(assert (=> b!2947618 (= lt!1031446 (matchR!4021 r!17423 s!11993))))

(declare-datatypes ((Unit!48657 0))(
  ( (Unit!48658) )
))
(declare-fun lt!1031448 () Unit!48657)

(declare-fun mainMatchTheorem!1276 (Regex!9139 List!35004) Unit!48657)

(assert (=> b!2947618 (= lt!1031448 (mainMatchTheorem!1276 r!17423 s!11993))))

(declare-fun b!2947619 () Bool)

(declare-fun validRegex!3872 (Regex!9139) Bool)

(assert (=> b!2947619 (= e!1856814 (validRegex!3872 (regTwo!18790 r!17423)))))

(declare-fun b!2947620 () Bool)

(assert (=> b!2947620 (= e!1856813 e!1856814)))

(declare-fun res!1216350 () Bool)

(assert (=> b!2947620 (=> res!1216350 e!1856814)))

(assert (=> b!2947620 (= res!1216350 (isEmptyLang!261 lt!1031447))))

(declare-fun simplify!144 (Regex!9139) Regex!9139)

(assert (=> b!2947620 (= lt!1031449 (simplify!144 (regTwo!18790 r!17423)))))

(assert (=> b!2947620 (= lt!1031447 (simplify!144 (regOne!18790 r!17423)))))

(declare-fun b!2947614 () Bool)

(declare-fun tp!942636 () Bool)

(declare-fun tp!942635 () Bool)

(assert (=> b!2947614 (= e!1856812 (and tp!942636 tp!942635))))

(declare-fun res!1216356 () Bool)

(assert (=> start!285996 (=> (not res!1216356) (not e!1856811))))

(assert (=> start!285996 (= res!1216356 (validRegex!3872 r!17423))))

(assert (=> start!285996 e!1856811))

(assert (=> start!285996 e!1856812))

(declare-fun e!1856815 () Bool)

(assert (=> start!285996 e!1856815))

(declare-fun b!2947621 () Bool)

(declare-fun tp_is_empty!15841 () Bool)

(assert (=> b!2947621 (= e!1856812 tp_is_empty!15841)))

(declare-fun b!2947622 () Bool)

(declare-fun res!1216349 () Bool)

(assert (=> b!2947622 (=> res!1216349 e!1856814)))

(assert (=> b!2947622 (= res!1216349 (isEmptyExpr!342 lt!1031449))))

(declare-fun b!2947623 () Bool)

(declare-fun tp!942634 () Bool)

(assert (=> b!2947623 (= e!1856815 (and tp_is_empty!15841 tp!942634))))

(declare-fun b!2947624 () Bool)

(declare-fun tp!942633 () Bool)

(assert (=> b!2947624 (= e!1856812 tp!942633)))

(declare-fun b!2947625 () Bool)

(declare-fun res!1216353 () Bool)

(assert (=> b!2947625 (=> res!1216353 e!1856813)))

(declare-fun isEmpty!19141 (List!35004) Bool)

(assert (=> b!2947625 (= res!1216353 (isEmpty!19141 s!11993))))

(assert (= (and start!285996 res!1216356) b!2947618))

(assert (= (and b!2947618 (not res!1216351)) b!2947625))

(assert (= (and b!2947625 (not res!1216353)) b!2947620))

(assert (= (and b!2947620 (not res!1216350)) b!2947616))

(assert (= (and b!2947616 (not res!1216355)) b!2947617))

(assert (= (and b!2947617 (not res!1216354)) b!2947622))

(assert (= (and b!2947622 (not res!1216349)) b!2947615))

(assert (= (and b!2947615 (not res!1216352)) b!2947619))

(assert (= (and start!285996 ((_ is ElementMatch!9139) r!17423)) b!2947621))

(assert (= (and start!285996 ((_ is Concat!14460) r!17423)) b!2947613))

(assert (= (and start!285996 ((_ is Star!9139) r!17423)) b!2947624))

(assert (= (and start!285996 ((_ is Union!9139) r!17423)) b!2947614))

(assert (= (and start!285996 ((_ is Cons!34880) s!11993)) b!2947623))

(declare-fun m!3328339 () Bool)

(assert (=> b!2947616 m!3328339))

(declare-fun m!3328341 () Bool)

(assert (=> start!285996 m!3328341))

(declare-fun m!3328343 () Bool)

(assert (=> b!2947620 m!3328343))

(declare-fun m!3328345 () Bool)

(assert (=> b!2947620 m!3328345))

(declare-fun m!3328347 () Bool)

(assert (=> b!2947620 m!3328347))

(declare-fun m!3328349 () Bool)

(assert (=> b!2947622 m!3328349))

(declare-fun m!3328351 () Bool)

(assert (=> b!2947615 m!3328351))

(declare-fun m!3328353 () Bool)

(assert (=> b!2947619 m!3328353))

(declare-fun m!3328355 () Bool)

(assert (=> b!2947617 m!3328355))

(declare-fun m!3328357 () Bool)

(assert (=> b!2947625 m!3328357))

(declare-fun m!3328359 () Bool)

(assert (=> b!2947618 m!3328359))

(declare-fun m!3328361 () Bool)

(assert (=> b!2947618 m!3328361))

(declare-fun m!3328363 () Bool)

(assert (=> b!2947618 m!3328363))

(check-sat (not start!285996) (not b!2947615) (not b!2947622) (not b!2947623) (not b!2947618) (not b!2947624) (not b!2947619) (not b!2947617) tp_is_empty!15841 (not b!2947625) (not b!2947616) (not b!2947620) (not b!2947613) (not b!2947614))
(check-sat)
(get-model)

(declare-fun d!840707 () Bool)

(assert (=> d!840707 (= (isEmpty!19141 s!11993) ((_ is Nil!34880) s!11993))))

(assert (=> b!2947625 d!840707))

(declare-fun d!840711 () Bool)

(assert (=> d!840711 (= (isEmptyLang!261 lt!1031447) ((_ is EmptyLang!9139) lt!1031447))))

(assert (=> b!2947620 d!840711))

(declare-fun b!2947698 () Bool)

(declare-fun c!482334 () Bool)

(assert (=> b!2947698 (= c!482334 ((_ is EmptyExpr!9139) (regTwo!18790 r!17423)))))

(declare-fun e!1856863 () Regex!9139)

(declare-fun e!1856870 () Regex!9139)

(assert (=> b!2947698 (= e!1856863 e!1856870)))

(declare-fun b!2947699 () Bool)

(assert (=> b!2947699 (= e!1856863 (regTwo!18790 r!17423))))

(declare-fun bm!194578 () Bool)

(declare-fun c!482331 () Bool)

(declare-fun lt!1031465 () Regex!9139)

(declare-fun lt!1031466 () Regex!9139)

(declare-fun call!194583 () Bool)

(assert (=> bm!194578 (= call!194583 (isEmptyExpr!342 (ite c!482331 lt!1031466 lt!1031465)))))

(declare-fun b!2947700 () Bool)

(declare-fun e!1856871 () Regex!9139)

(declare-fun lt!1031463 () Regex!9139)

(assert (=> b!2947700 (= e!1856871 lt!1031463)))

(declare-fun b!2947701 () Bool)

(declare-fun e!1856867 () Regex!9139)

(assert (=> b!2947701 (= e!1856867 EmptyLang!9139)))

(declare-fun b!2947702 () Bool)

(declare-fun c!482340 () Bool)

(assert (=> b!2947702 (= c!482340 ((_ is Union!9139) (regTwo!18790 r!17423)))))

(declare-fun e!1856860 () Regex!9139)

(declare-fun e!1856866 () Regex!9139)

(assert (=> b!2947702 (= e!1856860 e!1856866)))

(declare-fun b!2947703 () Bool)

(assert (=> b!2947703 (= e!1856866 e!1856871)))

(declare-fun lt!1031464 () Regex!9139)

(declare-fun call!194588 () Regex!9139)

(assert (=> b!2947703 (= lt!1031464 call!194588)))

(declare-fun call!194589 () Regex!9139)

(assert (=> b!2947703 (= lt!1031463 call!194589)))

(declare-fun c!482337 () Bool)

(declare-fun call!194586 () Bool)

(assert (=> b!2947703 (= c!482337 call!194586)))

(declare-fun b!2947705 () Bool)

(declare-fun e!1856861 () Regex!9139)

(declare-fun lt!1031467 () Regex!9139)

(assert (=> b!2947705 (= e!1856861 (Concat!14460 lt!1031465 lt!1031467))))

(declare-fun b!2947706 () Bool)

(declare-fun e!1856868 () Regex!9139)

(assert (=> b!2947706 (= e!1856868 EmptyLang!9139)))

(declare-fun b!2947707 () Bool)

(declare-fun e!1856865 () Regex!9139)

(assert (=> b!2947707 (= e!1856865 EmptyExpr!9139)))

(declare-fun b!2947708 () Bool)

(assert (=> b!2947708 (= e!1856868 e!1856863)))

(declare-fun c!482332 () Bool)

(assert (=> b!2947708 (= c!482332 ((_ is ElementMatch!9139) (regTwo!18790 r!17423)))))

(declare-fun bm!194579 () Bool)

(declare-fun call!194587 () Bool)

(declare-fun call!194585 () Bool)

(assert (=> bm!194579 (= call!194587 call!194585)))

(declare-fun b!2947709 () Bool)

(declare-fun c!482333 () Bool)

(assert (=> b!2947709 (= c!482333 call!194583)))

(declare-fun e!1856862 () Regex!9139)

(assert (=> b!2947709 (= e!1856867 e!1856862)))

(declare-fun b!2947710 () Bool)

(assert (=> b!2947710 (= e!1856865 (Star!9139 lt!1031466))))

(declare-fun b!2947711 () Bool)

(declare-fun e!1856869 () Bool)

(assert (=> b!2947711 (= e!1856869 call!194587)))

(declare-fun b!2947712 () Bool)

(declare-fun e!1856864 () Regex!9139)

(assert (=> b!2947712 (= e!1856864 (Union!9139 lt!1031464 lt!1031463))))

(declare-fun b!2947713 () Bool)

(declare-fun e!1856858 () Bool)

(assert (=> b!2947713 (= e!1856858 call!194583)))

(declare-fun b!2947714 () Bool)

(assert (=> b!2947714 (= e!1856861 lt!1031465)))

(declare-fun b!2947715 () Bool)

(assert (=> b!2947715 (= e!1856870 EmptyExpr!9139)))

(declare-fun b!2947716 () Bool)

(assert (=> b!2947716 (= e!1856864 lt!1031464)))

(declare-fun bm!194580 () Bool)

(assert (=> bm!194580 (= call!194588 (simplify!144 (ite c!482340 (regOne!18791 (regTwo!18790 r!17423)) (regTwo!18790 (regTwo!18790 r!17423)))))))

(declare-fun bm!194581 () Bool)

(assert (=> bm!194581 (= call!194585 (isEmptyLang!261 (ite c!482331 lt!1031466 (ite c!482340 lt!1031463 lt!1031467))))))

(declare-fun d!840715 () Bool)

(declare-fun e!1856859 () Bool)

(assert (=> d!840715 e!1856859))

(declare-fun res!1216371 () Bool)

(assert (=> d!840715 (=> (not res!1216371) (not e!1856859))))

(declare-fun lt!1031462 () Regex!9139)

(assert (=> d!840715 (= res!1216371 (validRegex!3872 lt!1031462))))

(assert (=> d!840715 (= lt!1031462 e!1856868)))

(declare-fun c!482335 () Bool)

(assert (=> d!840715 (= c!482335 ((_ is EmptyLang!9139) (regTwo!18790 r!17423)))))

(assert (=> d!840715 (validRegex!3872 (regTwo!18790 r!17423))))

(assert (=> d!840715 (= (simplify!144 (regTwo!18790 r!17423)) lt!1031462)))

(declare-fun b!2947704 () Bool)

(assert (=> b!2947704 (= e!1856870 e!1856860)))

(assert (=> b!2947704 (= c!482331 ((_ is Star!9139) (regTwo!18790 r!17423)))))

(declare-fun b!2947717 () Bool)

(declare-fun c!482339 () Bool)

(assert (=> b!2947717 (= c!482339 e!1856858)))

(declare-fun res!1216369 () Bool)

(assert (=> b!2947717 (=> res!1216369 e!1856858)))

(assert (=> b!2947717 (= res!1216369 call!194585)))

(declare-fun call!194584 () Regex!9139)

(assert (=> b!2947717 (= lt!1031466 call!194584)))

(assert (=> b!2947717 (= e!1856860 e!1856865)))

(declare-fun b!2947718 () Bool)

(declare-fun nullable!2900 (Regex!9139) Bool)

(assert (=> b!2947718 (= e!1856859 (= (nullable!2900 lt!1031462) (nullable!2900 (regTwo!18790 r!17423))))))

(declare-fun b!2947719 () Bool)

(assert (=> b!2947719 (= e!1856862 lt!1031467)))

(declare-fun b!2947720 () Bool)

(assert (=> b!2947720 (= e!1856862 e!1856861)))

(declare-fun c!482338 () Bool)

(assert (=> b!2947720 (= c!482338 (isEmptyExpr!342 lt!1031467))))

(declare-fun bm!194582 () Bool)

(assert (=> bm!194582 (= call!194586 (isEmptyLang!261 (ite c!482340 lt!1031464 lt!1031465)))))

(declare-fun bm!194583 () Bool)

(assert (=> bm!194583 (= call!194589 call!194584)))

(declare-fun bm!194584 () Bool)

(assert (=> bm!194584 (= call!194584 (simplify!144 (ite c!482331 (reg!9468 (regTwo!18790 r!17423)) (ite c!482340 (regTwo!18791 (regTwo!18790 r!17423)) (regOne!18790 (regTwo!18790 r!17423))))))))

(declare-fun b!2947721 () Bool)

(declare-fun c!482336 () Bool)

(assert (=> b!2947721 (= c!482336 call!194587)))

(assert (=> b!2947721 (= e!1856871 e!1856864)))

(declare-fun b!2947722 () Bool)

(assert (=> b!2947722 (= e!1856866 e!1856867)))

(assert (=> b!2947722 (= lt!1031465 call!194589)))

(assert (=> b!2947722 (= lt!1031467 call!194588)))

(declare-fun res!1216370 () Bool)

(assert (=> b!2947722 (= res!1216370 call!194586)))

(assert (=> b!2947722 (=> res!1216370 e!1856869)))

(declare-fun c!482330 () Bool)

(assert (=> b!2947722 (= c!482330 e!1856869)))

(assert (= (and d!840715 c!482335) b!2947706))

(assert (= (and d!840715 (not c!482335)) b!2947708))

(assert (= (and b!2947708 c!482332) b!2947699))

(assert (= (and b!2947708 (not c!482332)) b!2947698))

(assert (= (and b!2947698 c!482334) b!2947715))

(assert (= (and b!2947698 (not c!482334)) b!2947704))

(assert (= (and b!2947704 c!482331) b!2947717))

(assert (= (and b!2947704 (not c!482331)) b!2947702))

(assert (= (and b!2947717 (not res!1216369)) b!2947713))

(assert (= (and b!2947717 c!482339) b!2947707))

(assert (= (and b!2947717 (not c!482339)) b!2947710))

(assert (= (and b!2947702 c!482340) b!2947703))

(assert (= (and b!2947702 (not c!482340)) b!2947722))

(assert (= (and b!2947703 c!482337) b!2947700))

(assert (= (and b!2947703 (not c!482337)) b!2947721))

(assert (= (and b!2947721 c!482336) b!2947716))

(assert (= (and b!2947721 (not c!482336)) b!2947712))

(assert (= (and b!2947722 (not res!1216370)) b!2947711))

(assert (= (and b!2947722 c!482330) b!2947701))

(assert (= (and b!2947722 (not c!482330)) b!2947709))

(assert (= (and b!2947709 c!482333) b!2947719))

(assert (= (and b!2947709 (not c!482333)) b!2947720))

(assert (= (and b!2947720 c!482338) b!2947714))

(assert (= (and b!2947720 (not c!482338)) b!2947705))

(assert (= (or b!2947703 b!2947722) bm!194580))

(assert (= (or b!2947703 b!2947722) bm!194583))

(assert (= (or b!2947703 b!2947722) bm!194582))

(assert (= (or b!2947721 b!2947711) bm!194579))

(assert (= (or b!2947713 b!2947709) bm!194578))

(assert (= (or b!2947717 bm!194583) bm!194584))

(assert (= (or b!2947717 bm!194579) bm!194581))

(assert (= (and d!840715 res!1216371) b!2947718))

(declare-fun m!3328365 () Bool)

(assert (=> bm!194578 m!3328365))

(declare-fun m!3328367 () Bool)

(assert (=> d!840715 m!3328367))

(assert (=> d!840715 m!3328353))

(declare-fun m!3328369 () Bool)

(assert (=> bm!194584 m!3328369))

(declare-fun m!3328371 () Bool)

(assert (=> bm!194580 m!3328371))

(declare-fun m!3328373 () Bool)

(assert (=> bm!194581 m!3328373))

(declare-fun m!3328375 () Bool)

(assert (=> b!2947720 m!3328375))

(declare-fun m!3328377 () Bool)

(assert (=> bm!194582 m!3328377))

(declare-fun m!3328379 () Bool)

(assert (=> b!2947718 m!3328379))

(declare-fun m!3328381 () Bool)

(assert (=> b!2947718 m!3328381))

(assert (=> b!2947620 d!840715))

(declare-fun b!2947723 () Bool)

(declare-fun c!482345 () Bool)

(assert (=> b!2947723 (= c!482345 ((_ is EmptyExpr!9139) (regOne!18790 r!17423)))))

(declare-fun e!1856877 () Regex!9139)

(declare-fun e!1856884 () Regex!9139)

(assert (=> b!2947723 (= e!1856877 e!1856884)))

(declare-fun b!2947724 () Bool)

(assert (=> b!2947724 (= e!1856877 (regOne!18790 r!17423))))

(declare-fun lt!1031472 () Regex!9139)

(declare-fun call!194590 () Bool)

(declare-fun bm!194585 () Bool)

(declare-fun c!482342 () Bool)

(declare-fun lt!1031471 () Regex!9139)

(assert (=> bm!194585 (= call!194590 (isEmptyExpr!342 (ite c!482342 lt!1031472 lt!1031471)))))

(declare-fun b!2947725 () Bool)

(declare-fun e!1856885 () Regex!9139)

(declare-fun lt!1031469 () Regex!9139)

(assert (=> b!2947725 (= e!1856885 lt!1031469)))

(declare-fun b!2947726 () Bool)

(declare-fun e!1856881 () Regex!9139)

(assert (=> b!2947726 (= e!1856881 EmptyLang!9139)))

(declare-fun b!2947727 () Bool)

(declare-fun c!482351 () Bool)

(assert (=> b!2947727 (= c!482351 ((_ is Union!9139) (regOne!18790 r!17423)))))

(declare-fun e!1856874 () Regex!9139)

(declare-fun e!1856880 () Regex!9139)

(assert (=> b!2947727 (= e!1856874 e!1856880)))

(declare-fun b!2947728 () Bool)

(assert (=> b!2947728 (= e!1856880 e!1856885)))

(declare-fun lt!1031470 () Regex!9139)

(declare-fun call!194595 () Regex!9139)

(assert (=> b!2947728 (= lt!1031470 call!194595)))

(declare-fun call!194596 () Regex!9139)

(assert (=> b!2947728 (= lt!1031469 call!194596)))

(declare-fun c!482348 () Bool)

(declare-fun call!194593 () Bool)

(assert (=> b!2947728 (= c!482348 call!194593)))

(declare-fun b!2947730 () Bool)

(declare-fun e!1856875 () Regex!9139)

(declare-fun lt!1031473 () Regex!9139)

(assert (=> b!2947730 (= e!1856875 (Concat!14460 lt!1031471 lt!1031473))))

(declare-fun b!2947731 () Bool)

(declare-fun e!1856882 () Regex!9139)

(assert (=> b!2947731 (= e!1856882 EmptyLang!9139)))

(declare-fun b!2947732 () Bool)

(declare-fun e!1856879 () Regex!9139)

(assert (=> b!2947732 (= e!1856879 EmptyExpr!9139)))

(declare-fun b!2947733 () Bool)

(assert (=> b!2947733 (= e!1856882 e!1856877)))

(declare-fun c!482343 () Bool)

(assert (=> b!2947733 (= c!482343 ((_ is ElementMatch!9139) (regOne!18790 r!17423)))))

(declare-fun bm!194586 () Bool)

(declare-fun call!194594 () Bool)

(declare-fun call!194592 () Bool)

(assert (=> bm!194586 (= call!194594 call!194592)))

(declare-fun b!2947734 () Bool)

(declare-fun c!482344 () Bool)

(assert (=> b!2947734 (= c!482344 call!194590)))

(declare-fun e!1856876 () Regex!9139)

(assert (=> b!2947734 (= e!1856881 e!1856876)))

(declare-fun b!2947735 () Bool)

(assert (=> b!2947735 (= e!1856879 (Star!9139 lt!1031472))))

(declare-fun b!2947736 () Bool)

(declare-fun e!1856883 () Bool)

(assert (=> b!2947736 (= e!1856883 call!194594)))

(declare-fun b!2947737 () Bool)

(declare-fun e!1856878 () Regex!9139)

(assert (=> b!2947737 (= e!1856878 (Union!9139 lt!1031470 lt!1031469))))

(declare-fun b!2947738 () Bool)

(declare-fun e!1856872 () Bool)

(assert (=> b!2947738 (= e!1856872 call!194590)))

(declare-fun b!2947739 () Bool)

(assert (=> b!2947739 (= e!1856875 lt!1031471)))

(declare-fun b!2947740 () Bool)

(assert (=> b!2947740 (= e!1856884 EmptyExpr!9139)))

(declare-fun b!2947741 () Bool)

(assert (=> b!2947741 (= e!1856878 lt!1031470)))

(declare-fun bm!194587 () Bool)

(assert (=> bm!194587 (= call!194595 (simplify!144 (ite c!482351 (regOne!18791 (regOne!18790 r!17423)) (regTwo!18790 (regOne!18790 r!17423)))))))

(declare-fun bm!194588 () Bool)

(assert (=> bm!194588 (= call!194592 (isEmptyLang!261 (ite c!482342 lt!1031472 (ite c!482351 lt!1031469 lt!1031473))))))

(declare-fun d!840717 () Bool)

(declare-fun e!1856873 () Bool)

(assert (=> d!840717 e!1856873))

(declare-fun res!1216374 () Bool)

(assert (=> d!840717 (=> (not res!1216374) (not e!1856873))))

(declare-fun lt!1031468 () Regex!9139)

(assert (=> d!840717 (= res!1216374 (validRegex!3872 lt!1031468))))

(assert (=> d!840717 (= lt!1031468 e!1856882)))

(declare-fun c!482346 () Bool)

(assert (=> d!840717 (= c!482346 ((_ is EmptyLang!9139) (regOne!18790 r!17423)))))

(assert (=> d!840717 (validRegex!3872 (regOne!18790 r!17423))))

(assert (=> d!840717 (= (simplify!144 (regOne!18790 r!17423)) lt!1031468)))

(declare-fun b!2947729 () Bool)

(assert (=> b!2947729 (= e!1856884 e!1856874)))

(assert (=> b!2947729 (= c!482342 ((_ is Star!9139) (regOne!18790 r!17423)))))

(declare-fun b!2947742 () Bool)

(declare-fun c!482350 () Bool)

(assert (=> b!2947742 (= c!482350 e!1856872)))

(declare-fun res!1216372 () Bool)

(assert (=> b!2947742 (=> res!1216372 e!1856872)))

(assert (=> b!2947742 (= res!1216372 call!194592)))

(declare-fun call!194591 () Regex!9139)

(assert (=> b!2947742 (= lt!1031472 call!194591)))

(assert (=> b!2947742 (= e!1856874 e!1856879)))

(declare-fun b!2947743 () Bool)

(assert (=> b!2947743 (= e!1856873 (= (nullable!2900 lt!1031468) (nullable!2900 (regOne!18790 r!17423))))))

(declare-fun b!2947744 () Bool)

(assert (=> b!2947744 (= e!1856876 lt!1031473)))

(declare-fun b!2947745 () Bool)

(assert (=> b!2947745 (= e!1856876 e!1856875)))

(declare-fun c!482349 () Bool)

(assert (=> b!2947745 (= c!482349 (isEmptyExpr!342 lt!1031473))))

(declare-fun bm!194589 () Bool)

(assert (=> bm!194589 (= call!194593 (isEmptyLang!261 (ite c!482351 lt!1031470 lt!1031471)))))

(declare-fun bm!194590 () Bool)

(assert (=> bm!194590 (= call!194596 call!194591)))

(declare-fun bm!194591 () Bool)

(assert (=> bm!194591 (= call!194591 (simplify!144 (ite c!482342 (reg!9468 (regOne!18790 r!17423)) (ite c!482351 (regTwo!18791 (regOne!18790 r!17423)) (regOne!18790 (regOne!18790 r!17423))))))))

(declare-fun b!2947746 () Bool)

(declare-fun c!482347 () Bool)

(assert (=> b!2947746 (= c!482347 call!194594)))

(assert (=> b!2947746 (= e!1856885 e!1856878)))

(declare-fun b!2947747 () Bool)

(assert (=> b!2947747 (= e!1856880 e!1856881)))

(assert (=> b!2947747 (= lt!1031471 call!194596)))

(assert (=> b!2947747 (= lt!1031473 call!194595)))

(declare-fun res!1216373 () Bool)

(assert (=> b!2947747 (= res!1216373 call!194593)))

(assert (=> b!2947747 (=> res!1216373 e!1856883)))

(declare-fun c!482341 () Bool)

(assert (=> b!2947747 (= c!482341 e!1856883)))

(assert (= (and d!840717 c!482346) b!2947731))

(assert (= (and d!840717 (not c!482346)) b!2947733))

(assert (= (and b!2947733 c!482343) b!2947724))

(assert (= (and b!2947733 (not c!482343)) b!2947723))

(assert (= (and b!2947723 c!482345) b!2947740))

(assert (= (and b!2947723 (not c!482345)) b!2947729))

(assert (= (and b!2947729 c!482342) b!2947742))

(assert (= (and b!2947729 (not c!482342)) b!2947727))

(assert (= (and b!2947742 (not res!1216372)) b!2947738))

(assert (= (and b!2947742 c!482350) b!2947732))

(assert (= (and b!2947742 (not c!482350)) b!2947735))

(assert (= (and b!2947727 c!482351) b!2947728))

(assert (= (and b!2947727 (not c!482351)) b!2947747))

(assert (= (and b!2947728 c!482348) b!2947725))

(assert (= (and b!2947728 (not c!482348)) b!2947746))

(assert (= (and b!2947746 c!482347) b!2947741))

(assert (= (and b!2947746 (not c!482347)) b!2947737))

(assert (= (and b!2947747 (not res!1216373)) b!2947736))

(assert (= (and b!2947747 c!482341) b!2947726))

(assert (= (and b!2947747 (not c!482341)) b!2947734))

(assert (= (and b!2947734 c!482344) b!2947744))

(assert (= (and b!2947734 (not c!482344)) b!2947745))

(assert (= (and b!2947745 c!482349) b!2947739))

(assert (= (and b!2947745 (not c!482349)) b!2947730))

(assert (= (or b!2947728 b!2947747) bm!194587))

(assert (= (or b!2947728 b!2947747) bm!194590))

(assert (= (or b!2947728 b!2947747) bm!194589))

(assert (= (or b!2947746 b!2947736) bm!194586))

(assert (= (or b!2947738 b!2947734) bm!194585))

(assert (= (or b!2947742 bm!194590) bm!194591))

(assert (= (or b!2947742 bm!194586) bm!194588))

(assert (= (and d!840717 res!1216374) b!2947743))

(declare-fun m!3328383 () Bool)

(assert (=> bm!194585 m!3328383))

(declare-fun m!3328385 () Bool)

(assert (=> d!840717 m!3328385))

(declare-fun m!3328387 () Bool)

(assert (=> d!840717 m!3328387))

(declare-fun m!3328389 () Bool)

(assert (=> bm!194591 m!3328389))

(declare-fun m!3328391 () Bool)

(assert (=> bm!194587 m!3328391))

(declare-fun m!3328393 () Bool)

(assert (=> bm!194588 m!3328393))

(declare-fun m!3328395 () Bool)

(assert (=> b!2947745 m!3328395))

(declare-fun m!3328397 () Bool)

(assert (=> bm!194589 m!3328397))

(declare-fun m!3328399 () Bool)

(assert (=> b!2947743 m!3328399))

(declare-fun m!3328401 () Bool)

(assert (=> b!2947743 m!3328401))

(assert (=> b!2947620 d!840717))

(declare-fun bm!194598 () Bool)

(declare-fun call!194605 () Bool)

(declare-fun c!482357 () Bool)

(assert (=> bm!194598 (= call!194605 (validRegex!3872 (ite c!482357 (regTwo!18791 (regTwo!18790 r!17423)) (regOne!18790 (regTwo!18790 r!17423)))))))

(declare-fun b!2947766 () Bool)

(declare-fun e!1856906 () Bool)

(declare-fun e!1856905 () Bool)

(assert (=> b!2947766 (= e!1856906 e!1856905)))

(assert (=> b!2947766 (= c!482357 ((_ is Union!9139) (regTwo!18790 r!17423)))))

(declare-fun b!2947767 () Bool)

(declare-fun res!1216385 () Bool)

(declare-fun e!1856902 () Bool)

(assert (=> b!2947767 (=> (not res!1216385) (not e!1856902))))

(declare-fun call!194603 () Bool)

(assert (=> b!2947767 (= res!1216385 call!194603)))

(assert (=> b!2947767 (= e!1856905 e!1856902)))

(declare-fun b!2947768 () Bool)

(declare-fun e!1856904 () Bool)

(declare-fun e!1856901 () Bool)

(assert (=> b!2947768 (= e!1856904 e!1856901)))

(declare-fun res!1216386 () Bool)

(assert (=> b!2947768 (=> (not res!1216386) (not e!1856901))))

(assert (=> b!2947768 (= res!1216386 call!194605)))

(declare-fun b!2947769 () Bool)

(declare-fun e!1856903 () Bool)

(assert (=> b!2947769 (= e!1856903 e!1856906)))

(declare-fun c!482356 () Bool)

(assert (=> b!2947769 (= c!482356 ((_ is Star!9139) (regTwo!18790 r!17423)))))

(declare-fun b!2947770 () Bool)

(declare-fun e!1856900 () Bool)

(declare-fun call!194604 () Bool)

(assert (=> b!2947770 (= e!1856900 call!194604)))

(declare-fun bm!194599 () Bool)

(assert (=> bm!194599 (= call!194604 (validRegex!3872 (ite c!482356 (reg!9468 (regTwo!18790 r!17423)) (ite c!482357 (regOne!18791 (regTwo!18790 r!17423)) (regTwo!18790 (regTwo!18790 r!17423))))))))

(declare-fun b!2947772 () Bool)

(assert (=> b!2947772 (= e!1856901 call!194603)))

(declare-fun b!2947773 () Bool)

(declare-fun res!1216388 () Bool)

(assert (=> b!2947773 (=> res!1216388 e!1856904)))

(assert (=> b!2947773 (= res!1216388 (not ((_ is Concat!14460) (regTwo!18790 r!17423))))))

(assert (=> b!2947773 (= e!1856905 e!1856904)))

(declare-fun d!840719 () Bool)

(declare-fun res!1216389 () Bool)

(assert (=> d!840719 (=> res!1216389 e!1856903)))

(assert (=> d!840719 (= res!1216389 ((_ is ElementMatch!9139) (regTwo!18790 r!17423)))))

(assert (=> d!840719 (= (validRegex!3872 (regTwo!18790 r!17423)) e!1856903)))

(declare-fun b!2947771 () Bool)

(assert (=> b!2947771 (= e!1856906 e!1856900)))

(declare-fun res!1216387 () Bool)

(assert (=> b!2947771 (= res!1216387 (not (nullable!2900 (reg!9468 (regTwo!18790 r!17423)))))))

(assert (=> b!2947771 (=> (not res!1216387) (not e!1856900))))

(declare-fun bm!194600 () Bool)

(assert (=> bm!194600 (= call!194603 call!194604)))

(declare-fun b!2947774 () Bool)

(assert (=> b!2947774 (= e!1856902 call!194605)))

(assert (= (and d!840719 (not res!1216389)) b!2947769))

(assert (= (and b!2947769 c!482356) b!2947771))

(assert (= (and b!2947769 (not c!482356)) b!2947766))

(assert (= (and b!2947771 res!1216387) b!2947770))

(assert (= (and b!2947766 c!482357) b!2947767))

(assert (= (and b!2947766 (not c!482357)) b!2947773))

(assert (= (and b!2947767 res!1216385) b!2947774))

(assert (= (and b!2947773 (not res!1216388)) b!2947768))

(assert (= (and b!2947768 res!1216386) b!2947772))

(assert (= (or b!2947767 b!2947772) bm!194600))

(assert (= (or b!2947774 b!2947768) bm!194598))

(assert (= (or b!2947770 bm!194600) bm!194599))

(declare-fun m!3328403 () Bool)

(assert (=> bm!194598 m!3328403))

(declare-fun m!3328405 () Bool)

(assert (=> bm!194599 m!3328405))

(declare-fun m!3328407 () Bool)

(assert (=> b!2947771 m!3328407))

(assert (=> b!2947619 d!840719))

(declare-fun d!840721 () Bool)

(assert (=> d!840721 (= (isEmptyLang!261 lt!1031449) ((_ is EmptyLang!9139) lt!1031449))))

(assert (=> b!2947616 d!840721))

(declare-fun e!1856923 () Bool)

(declare-fun b!2947803 () Bool)

(declare-fun derivativeStep!2503 (Regex!9139 C!18464) Regex!9139)

(declare-fun head!6562 (List!35004) C!18464)

(declare-fun tail!4788 (List!35004) List!35004)

(assert (=> b!2947803 (= e!1856923 (matchR!4021 (derivativeStep!2503 (Concat!14460 lt!1031447 lt!1031449) (head!6562 s!11993)) (tail!4788 s!11993)))))

(declare-fun b!2947804 () Bool)

(declare-fun e!1856921 () Bool)

(declare-fun lt!1031476 () Bool)

(declare-fun call!194608 () Bool)

(assert (=> b!2947804 (= e!1856921 (= lt!1031476 call!194608))))

(declare-fun b!2947805 () Bool)

(declare-fun res!1216406 () Bool)

(declare-fun e!1856924 () Bool)

(assert (=> b!2947805 (=> (not res!1216406) (not e!1856924))))

(assert (=> b!2947805 (= res!1216406 (not call!194608))))

(declare-fun b!2947806 () Bool)

(declare-fun res!1216413 () Bool)

(declare-fun e!1856926 () Bool)

(assert (=> b!2947806 (=> res!1216413 e!1856926)))

(assert (=> b!2947806 (= res!1216413 e!1856924)))

(declare-fun res!1216408 () Bool)

(assert (=> b!2947806 (=> (not res!1216408) (not e!1856924))))

(assert (=> b!2947806 (= res!1216408 lt!1031476)))

(declare-fun b!2947807 () Bool)

(declare-fun e!1856925 () Bool)

(assert (=> b!2947807 (= e!1856926 e!1856925)))

(declare-fun res!1216410 () Bool)

(assert (=> b!2947807 (=> (not res!1216410) (not e!1856925))))

(assert (=> b!2947807 (= res!1216410 (not lt!1031476))))

(declare-fun b!2947808 () Bool)

(assert (=> b!2947808 (= e!1856924 (= (head!6562 s!11993) (c!482299 (Concat!14460 lt!1031447 lt!1031449))))))

(declare-fun d!840723 () Bool)

(assert (=> d!840723 e!1856921))

(declare-fun c!482365 () Bool)

(assert (=> d!840723 (= c!482365 ((_ is EmptyExpr!9139) (Concat!14460 lt!1031447 lt!1031449)))))

(assert (=> d!840723 (= lt!1031476 e!1856923)))

(declare-fun c!482366 () Bool)

(assert (=> d!840723 (= c!482366 (isEmpty!19141 s!11993))))

(assert (=> d!840723 (validRegex!3872 (Concat!14460 lt!1031447 lt!1031449))))

(assert (=> d!840723 (= (matchR!4021 (Concat!14460 lt!1031447 lt!1031449) s!11993) lt!1031476)))

(declare-fun b!2947809 () Bool)

(declare-fun res!1216409 () Bool)

(declare-fun e!1856922 () Bool)

(assert (=> b!2947809 (=> res!1216409 e!1856922)))

(assert (=> b!2947809 (= res!1216409 (not (isEmpty!19141 (tail!4788 s!11993))))))

(declare-fun b!2947810 () Bool)

(declare-fun res!1216411 () Bool)

(assert (=> b!2947810 (=> (not res!1216411) (not e!1856924))))

(assert (=> b!2947810 (= res!1216411 (isEmpty!19141 (tail!4788 s!11993)))))

(declare-fun b!2947811 () Bool)

(assert (=> b!2947811 (= e!1856925 e!1856922)))

(declare-fun res!1216407 () Bool)

(assert (=> b!2947811 (=> res!1216407 e!1856922)))

(assert (=> b!2947811 (= res!1216407 call!194608)))

(declare-fun b!2947812 () Bool)

(declare-fun res!1216412 () Bool)

(assert (=> b!2947812 (=> res!1216412 e!1856926)))

(assert (=> b!2947812 (= res!1216412 (not ((_ is ElementMatch!9139) (Concat!14460 lt!1031447 lt!1031449))))))

(declare-fun e!1856927 () Bool)

(assert (=> b!2947812 (= e!1856927 e!1856926)))

(declare-fun bm!194603 () Bool)

(assert (=> bm!194603 (= call!194608 (isEmpty!19141 s!11993))))

(declare-fun b!2947813 () Bool)

(assert (=> b!2947813 (= e!1856922 (not (= (head!6562 s!11993) (c!482299 (Concat!14460 lt!1031447 lt!1031449)))))))

(declare-fun b!2947814 () Bool)

(assert (=> b!2947814 (= e!1856923 (nullable!2900 (Concat!14460 lt!1031447 lt!1031449)))))

(declare-fun b!2947815 () Bool)

(assert (=> b!2947815 (= e!1856921 e!1856927)))

(declare-fun c!482364 () Bool)

(assert (=> b!2947815 (= c!482364 ((_ is EmptyLang!9139) (Concat!14460 lt!1031447 lt!1031449)))))

(declare-fun b!2947816 () Bool)

(assert (=> b!2947816 (= e!1856927 (not lt!1031476))))

(assert (= (and d!840723 c!482366) b!2947814))

(assert (= (and d!840723 (not c!482366)) b!2947803))

(assert (= (and d!840723 c!482365) b!2947804))

(assert (= (and d!840723 (not c!482365)) b!2947815))

(assert (= (and b!2947815 c!482364) b!2947816))

(assert (= (and b!2947815 (not c!482364)) b!2947812))

(assert (= (and b!2947812 (not res!1216412)) b!2947806))

(assert (= (and b!2947806 res!1216408) b!2947805))

(assert (= (and b!2947805 res!1216406) b!2947810))

(assert (= (and b!2947810 res!1216411) b!2947808))

(assert (= (and b!2947806 (not res!1216413)) b!2947807))

(assert (= (and b!2947807 res!1216410) b!2947811))

(assert (= (and b!2947811 (not res!1216407)) b!2947809))

(assert (= (and b!2947809 (not res!1216409)) b!2947813))

(assert (= (or b!2947804 b!2947805 b!2947811) bm!194603))

(declare-fun m!3328409 () Bool)

(assert (=> b!2947813 m!3328409))

(assert (=> b!2947808 m!3328409))

(assert (=> b!2947803 m!3328409))

(assert (=> b!2947803 m!3328409))

(declare-fun m!3328411 () Bool)

(assert (=> b!2947803 m!3328411))

(declare-fun m!3328413 () Bool)

(assert (=> b!2947803 m!3328413))

(assert (=> b!2947803 m!3328411))

(assert (=> b!2947803 m!3328413))

(declare-fun m!3328415 () Bool)

(assert (=> b!2947803 m!3328415))

(assert (=> b!2947810 m!3328413))

(assert (=> b!2947810 m!3328413))

(declare-fun m!3328417 () Bool)

(assert (=> b!2947810 m!3328417))

(assert (=> b!2947809 m!3328413))

(assert (=> b!2947809 m!3328413))

(assert (=> b!2947809 m!3328417))

(declare-fun m!3328419 () Bool)

(assert (=> b!2947814 m!3328419))

(assert (=> bm!194603 m!3328357))

(assert (=> d!840723 m!3328357))

(declare-fun m!3328421 () Bool)

(assert (=> d!840723 m!3328421))

(assert (=> b!2947615 d!840723))

(declare-fun d!840725 () Bool)

(assert (=> d!840725 (= (isEmptyExpr!342 lt!1031447) ((_ is EmptyExpr!9139) lt!1031447))))

(assert (=> b!2947617 d!840725))

(declare-fun bm!194604 () Bool)

(declare-fun call!194611 () Bool)

(declare-fun c!482368 () Bool)

(assert (=> bm!194604 (= call!194611 (validRegex!3872 (ite c!482368 (regTwo!18791 r!17423) (regOne!18790 r!17423))))))

(declare-fun b!2947817 () Bool)

(declare-fun e!1856934 () Bool)

(declare-fun e!1856933 () Bool)

(assert (=> b!2947817 (= e!1856934 e!1856933)))

(assert (=> b!2947817 (= c!482368 ((_ is Union!9139) r!17423))))

(declare-fun b!2947818 () Bool)

(declare-fun res!1216414 () Bool)

(declare-fun e!1856930 () Bool)

(assert (=> b!2947818 (=> (not res!1216414) (not e!1856930))))

(declare-fun call!194609 () Bool)

(assert (=> b!2947818 (= res!1216414 call!194609)))

(assert (=> b!2947818 (= e!1856933 e!1856930)))

(declare-fun b!2947819 () Bool)

(declare-fun e!1856932 () Bool)

(declare-fun e!1856929 () Bool)

(assert (=> b!2947819 (= e!1856932 e!1856929)))

(declare-fun res!1216415 () Bool)

(assert (=> b!2947819 (=> (not res!1216415) (not e!1856929))))

(assert (=> b!2947819 (= res!1216415 call!194611)))

(declare-fun b!2947820 () Bool)

(declare-fun e!1856931 () Bool)

(assert (=> b!2947820 (= e!1856931 e!1856934)))

(declare-fun c!482367 () Bool)

(assert (=> b!2947820 (= c!482367 ((_ is Star!9139) r!17423))))

(declare-fun b!2947821 () Bool)

(declare-fun e!1856928 () Bool)

(declare-fun call!194610 () Bool)

(assert (=> b!2947821 (= e!1856928 call!194610)))

(declare-fun bm!194605 () Bool)

(assert (=> bm!194605 (= call!194610 (validRegex!3872 (ite c!482367 (reg!9468 r!17423) (ite c!482368 (regOne!18791 r!17423) (regTwo!18790 r!17423)))))))

(declare-fun b!2947823 () Bool)

(assert (=> b!2947823 (= e!1856929 call!194609)))

(declare-fun b!2947824 () Bool)

(declare-fun res!1216417 () Bool)

(assert (=> b!2947824 (=> res!1216417 e!1856932)))

(assert (=> b!2947824 (= res!1216417 (not ((_ is Concat!14460) r!17423)))))

(assert (=> b!2947824 (= e!1856933 e!1856932)))

(declare-fun d!840727 () Bool)

(declare-fun res!1216418 () Bool)

(assert (=> d!840727 (=> res!1216418 e!1856931)))

(assert (=> d!840727 (= res!1216418 ((_ is ElementMatch!9139) r!17423))))

(assert (=> d!840727 (= (validRegex!3872 r!17423) e!1856931)))

(declare-fun b!2947822 () Bool)

(assert (=> b!2947822 (= e!1856934 e!1856928)))

(declare-fun res!1216416 () Bool)

(assert (=> b!2947822 (= res!1216416 (not (nullable!2900 (reg!9468 r!17423))))))

(assert (=> b!2947822 (=> (not res!1216416) (not e!1856928))))

(declare-fun bm!194606 () Bool)

(assert (=> bm!194606 (= call!194609 call!194610)))

(declare-fun b!2947825 () Bool)

(assert (=> b!2947825 (= e!1856930 call!194611)))

(assert (= (and d!840727 (not res!1216418)) b!2947820))

(assert (= (and b!2947820 c!482367) b!2947822))

(assert (= (and b!2947820 (not c!482367)) b!2947817))

(assert (= (and b!2947822 res!1216416) b!2947821))

(assert (= (and b!2947817 c!482368) b!2947818))

(assert (= (and b!2947817 (not c!482368)) b!2947824))

(assert (= (and b!2947818 res!1216414) b!2947825))

(assert (= (and b!2947824 (not res!1216417)) b!2947819))

(assert (= (and b!2947819 res!1216415) b!2947823))

(assert (= (or b!2947818 b!2947823) bm!194606))

(assert (= (or b!2947825 b!2947819) bm!194604))

(assert (= (or b!2947821 bm!194606) bm!194605))

(declare-fun m!3328423 () Bool)

(assert (=> bm!194604 m!3328423))

(declare-fun m!3328425 () Bool)

(assert (=> bm!194605 m!3328425))

(declare-fun m!3328427 () Bool)

(assert (=> b!2947822 m!3328427))

(assert (=> start!285996 d!840727))

(declare-fun d!840729 () Bool)

(assert (=> d!840729 (= (isEmptyExpr!342 lt!1031449) ((_ is EmptyExpr!9139) lt!1031449))))

(assert (=> b!2947622 d!840729))

(declare-fun b!2947864 () Bool)

(assert (=> b!2947864 true))

(assert (=> b!2947864 true))

(declare-fun bs!525597 () Bool)

(declare-fun b!2947861 () Bool)

(assert (= bs!525597 (and b!2947861 b!2947864)))

(declare-fun lambda!109658 () Int)

(declare-fun lambda!109657 () Int)

(assert (=> bs!525597 (not (= lambda!109658 lambda!109657))))

(assert (=> b!2947861 true))

(assert (=> b!2947861 true))

(declare-fun b!2947858 () Bool)

(declare-fun c!482378 () Bool)

(assert (=> b!2947858 (= c!482378 ((_ is ElementMatch!9139) r!17423))))

(declare-fun e!1856956 () Bool)

(declare-fun e!1856957 () Bool)

(assert (=> b!2947858 (= e!1856956 e!1856957)))

(declare-fun b!2947859 () Bool)

(declare-fun res!1216437 () Bool)

(declare-fun e!1856954 () Bool)

(assert (=> b!2947859 (=> res!1216437 e!1856954)))

(declare-fun call!194617 () Bool)

(assert (=> b!2947859 (= res!1216437 call!194617)))

(declare-fun e!1856955 () Bool)

(assert (=> b!2947859 (= e!1856955 e!1856954)))

(declare-fun b!2947860 () Bool)

(declare-fun e!1856959 () Bool)

(assert (=> b!2947860 (= e!1856959 e!1856956)))

(declare-fun res!1216435 () Bool)

(assert (=> b!2947860 (= res!1216435 (not ((_ is EmptyLang!9139) r!17423)))))

(assert (=> b!2947860 (=> (not res!1216435) (not e!1856956))))

(declare-fun call!194616 () Bool)

(assert (=> b!2947861 (= e!1856955 call!194616)))

(declare-fun b!2947862 () Bool)

(declare-fun e!1856958 () Bool)

(assert (=> b!2947862 (= e!1856958 e!1856955)))

(declare-fun c!482377 () Bool)

(assert (=> b!2947862 (= c!482377 ((_ is Star!9139) r!17423))))

(declare-fun b!2947863 () Bool)

(assert (=> b!2947863 (= e!1856959 call!194617)))

(assert (=> b!2947864 (= e!1856954 call!194616)))

(declare-fun b!2947865 () Bool)

(declare-fun e!1856953 () Bool)

(assert (=> b!2947865 (= e!1856953 (matchRSpec!1276 (regTwo!18791 r!17423) s!11993))))

(declare-fun b!2947866 () Bool)

(assert (=> b!2947866 (= e!1856957 (= s!11993 (Cons!34880 (c!482299 r!17423) Nil!34880)))))

(declare-fun b!2947867 () Bool)

(declare-fun c!482380 () Bool)

(assert (=> b!2947867 (= c!482380 ((_ is Union!9139) r!17423))))

(assert (=> b!2947867 (= e!1856957 e!1856958)))

(declare-fun b!2947868 () Bool)

(assert (=> b!2947868 (= e!1856958 e!1856953)))

(declare-fun res!1216436 () Bool)

(assert (=> b!2947868 (= res!1216436 (matchRSpec!1276 (regOne!18791 r!17423) s!11993))))

(assert (=> b!2947868 (=> res!1216436 e!1856953)))

(declare-fun bm!194612 () Bool)

(assert (=> bm!194612 (= call!194617 (isEmpty!19141 s!11993))))

(declare-fun d!840731 () Bool)

(declare-fun c!482379 () Bool)

(assert (=> d!840731 (= c!482379 ((_ is EmptyExpr!9139) r!17423))))

(assert (=> d!840731 (= (matchRSpec!1276 r!17423 s!11993) e!1856959)))

(declare-fun bm!194611 () Bool)

(declare-fun Exists!1475 (Int) Bool)

(assert (=> bm!194611 (= call!194616 (Exists!1475 (ite c!482377 lambda!109657 lambda!109658)))))

(assert (= (and d!840731 c!482379) b!2947863))

(assert (= (and d!840731 (not c!482379)) b!2947860))

(assert (= (and b!2947860 res!1216435) b!2947858))

(assert (= (and b!2947858 c!482378) b!2947866))

(assert (= (and b!2947858 (not c!482378)) b!2947867))

(assert (= (and b!2947867 c!482380) b!2947868))

(assert (= (and b!2947867 (not c!482380)) b!2947862))

(assert (= (and b!2947868 (not res!1216436)) b!2947865))

(assert (= (and b!2947862 c!482377) b!2947859))

(assert (= (and b!2947862 (not c!482377)) b!2947861))

(assert (= (and b!2947859 (not res!1216437)) b!2947864))

(assert (= (or b!2947864 b!2947861) bm!194611))

(assert (= (or b!2947863 b!2947859) bm!194612))

(declare-fun m!3328429 () Bool)

(assert (=> b!2947865 m!3328429))

(declare-fun m!3328431 () Bool)

(assert (=> b!2947868 m!3328431))

(assert (=> bm!194612 m!3328357))

(declare-fun m!3328433 () Bool)

(assert (=> bm!194611 m!3328433))

(assert (=> b!2947618 d!840731))

(declare-fun b!2947873 () Bool)

(declare-fun e!1856962 () Bool)

(assert (=> b!2947873 (= e!1856962 (matchR!4021 (derivativeStep!2503 r!17423 (head!6562 s!11993)) (tail!4788 s!11993)))))

(declare-fun b!2947874 () Bool)

(declare-fun e!1856960 () Bool)

(declare-fun lt!1031477 () Bool)

(declare-fun call!194618 () Bool)

(assert (=> b!2947874 (= e!1856960 (= lt!1031477 call!194618))))

(declare-fun b!2947875 () Bool)

(declare-fun res!1216438 () Bool)

(declare-fun e!1856963 () Bool)

(assert (=> b!2947875 (=> (not res!1216438) (not e!1856963))))

(assert (=> b!2947875 (= res!1216438 (not call!194618))))

(declare-fun b!2947876 () Bool)

(declare-fun res!1216445 () Bool)

(declare-fun e!1856965 () Bool)

(assert (=> b!2947876 (=> res!1216445 e!1856965)))

(assert (=> b!2947876 (= res!1216445 e!1856963)))

(declare-fun res!1216440 () Bool)

(assert (=> b!2947876 (=> (not res!1216440) (not e!1856963))))

(assert (=> b!2947876 (= res!1216440 lt!1031477)))

(declare-fun b!2947877 () Bool)

(declare-fun e!1856964 () Bool)

(assert (=> b!2947877 (= e!1856965 e!1856964)))

(declare-fun res!1216442 () Bool)

(assert (=> b!2947877 (=> (not res!1216442) (not e!1856964))))

(assert (=> b!2947877 (= res!1216442 (not lt!1031477))))

(declare-fun b!2947878 () Bool)

(assert (=> b!2947878 (= e!1856963 (= (head!6562 s!11993) (c!482299 r!17423)))))

(declare-fun d!840733 () Bool)

(assert (=> d!840733 e!1856960))

(declare-fun c!482382 () Bool)

(assert (=> d!840733 (= c!482382 ((_ is EmptyExpr!9139) r!17423))))

(assert (=> d!840733 (= lt!1031477 e!1856962)))

(declare-fun c!482383 () Bool)

(assert (=> d!840733 (= c!482383 (isEmpty!19141 s!11993))))

(assert (=> d!840733 (validRegex!3872 r!17423)))

(assert (=> d!840733 (= (matchR!4021 r!17423 s!11993) lt!1031477)))

(declare-fun b!2947879 () Bool)

(declare-fun res!1216441 () Bool)

(declare-fun e!1856961 () Bool)

(assert (=> b!2947879 (=> res!1216441 e!1856961)))

(assert (=> b!2947879 (= res!1216441 (not (isEmpty!19141 (tail!4788 s!11993))))))

(declare-fun b!2947880 () Bool)

(declare-fun res!1216443 () Bool)

(assert (=> b!2947880 (=> (not res!1216443) (not e!1856963))))

(assert (=> b!2947880 (= res!1216443 (isEmpty!19141 (tail!4788 s!11993)))))

(declare-fun b!2947881 () Bool)

(assert (=> b!2947881 (= e!1856964 e!1856961)))

(declare-fun res!1216439 () Bool)

(assert (=> b!2947881 (=> res!1216439 e!1856961)))

(assert (=> b!2947881 (= res!1216439 call!194618)))

(declare-fun b!2947882 () Bool)

(declare-fun res!1216444 () Bool)

(assert (=> b!2947882 (=> res!1216444 e!1856965)))

(assert (=> b!2947882 (= res!1216444 (not ((_ is ElementMatch!9139) r!17423)))))

(declare-fun e!1856966 () Bool)

(assert (=> b!2947882 (= e!1856966 e!1856965)))

(declare-fun bm!194613 () Bool)

(assert (=> bm!194613 (= call!194618 (isEmpty!19141 s!11993))))

(declare-fun b!2947883 () Bool)

(assert (=> b!2947883 (= e!1856961 (not (= (head!6562 s!11993) (c!482299 r!17423))))))

(declare-fun b!2947884 () Bool)

(assert (=> b!2947884 (= e!1856962 (nullable!2900 r!17423))))

(declare-fun b!2947885 () Bool)

(assert (=> b!2947885 (= e!1856960 e!1856966)))

(declare-fun c!482381 () Bool)

(assert (=> b!2947885 (= c!482381 ((_ is EmptyLang!9139) r!17423))))

(declare-fun b!2947886 () Bool)

(assert (=> b!2947886 (= e!1856966 (not lt!1031477))))

(assert (= (and d!840733 c!482383) b!2947884))

(assert (= (and d!840733 (not c!482383)) b!2947873))

(assert (= (and d!840733 c!482382) b!2947874))

(assert (= (and d!840733 (not c!482382)) b!2947885))

(assert (= (and b!2947885 c!482381) b!2947886))

(assert (= (and b!2947885 (not c!482381)) b!2947882))

(assert (= (and b!2947882 (not res!1216444)) b!2947876))

(assert (= (and b!2947876 res!1216440) b!2947875))

(assert (= (and b!2947875 res!1216438) b!2947880))

(assert (= (and b!2947880 res!1216443) b!2947878))

(assert (= (and b!2947876 (not res!1216445)) b!2947877))

(assert (= (and b!2947877 res!1216442) b!2947881))

(assert (= (and b!2947881 (not res!1216439)) b!2947879))

(assert (= (and b!2947879 (not res!1216441)) b!2947883))

(assert (= (or b!2947874 b!2947875 b!2947881) bm!194613))

(assert (=> b!2947883 m!3328409))

(assert (=> b!2947878 m!3328409))

(assert (=> b!2947873 m!3328409))

(assert (=> b!2947873 m!3328409))

(declare-fun m!3328435 () Bool)

(assert (=> b!2947873 m!3328435))

(assert (=> b!2947873 m!3328413))

(assert (=> b!2947873 m!3328435))

(assert (=> b!2947873 m!3328413))

(declare-fun m!3328437 () Bool)

(assert (=> b!2947873 m!3328437))

(assert (=> b!2947880 m!3328413))

(assert (=> b!2947880 m!3328413))

(assert (=> b!2947880 m!3328417))

(assert (=> b!2947879 m!3328413))

(assert (=> b!2947879 m!3328413))

(assert (=> b!2947879 m!3328417))

(declare-fun m!3328439 () Bool)

(assert (=> b!2947884 m!3328439))

(assert (=> bm!194613 m!3328357))

(assert (=> d!840733 m!3328357))

(assert (=> d!840733 m!3328341))

(assert (=> b!2947618 d!840733))

(declare-fun d!840735 () Bool)

(assert (=> d!840735 (= (matchR!4021 r!17423 s!11993) (matchRSpec!1276 r!17423 s!11993))))

(declare-fun lt!1031480 () Unit!48657)

(declare-fun choose!17419 (Regex!9139 List!35004) Unit!48657)

(assert (=> d!840735 (= lt!1031480 (choose!17419 r!17423 s!11993))))

(assert (=> d!840735 (validRegex!3872 r!17423)))

(assert (=> d!840735 (= (mainMatchTheorem!1276 r!17423 s!11993) lt!1031480)))

(declare-fun bs!525598 () Bool)

(assert (= bs!525598 d!840735))

(assert (=> bs!525598 m!3328361))

(assert (=> bs!525598 m!3328359))

(declare-fun m!3328441 () Bool)

(assert (=> bs!525598 m!3328441))

(assert (=> bs!525598 m!3328341))

(assert (=> b!2947618 d!840735))

(declare-fun b!2947897 () Bool)

(declare-fun e!1856969 () Bool)

(assert (=> b!2947897 (= e!1856969 tp_is_empty!15841)))

(assert (=> b!2947614 (= tp!942636 e!1856969)))

(declare-fun b!2947898 () Bool)

(declare-fun tp!942650 () Bool)

(declare-fun tp!942649 () Bool)

(assert (=> b!2947898 (= e!1856969 (and tp!942650 tp!942649))))

(declare-fun b!2947899 () Bool)

(declare-fun tp!942651 () Bool)

(assert (=> b!2947899 (= e!1856969 tp!942651)))

(declare-fun b!2947900 () Bool)

(declare-fun tp!942648 () Bool)

(declare-fun tp!942652 () Bool)

(assert (=> b!2947900 (= e!1856969 (and tp!942648 tp!942652))))

(assert (= (and b!2947614 ((_ is ElementMatch!9139) (regOne!18791 r!17423))) b!2947897))

(assert (= (and b!2947614 ((_ is Concat!14460) (regOne!18791 r!17423))) b!2947898))

(assert (= (and b!2947614 ((_ is Star!9139) (regOne!18791 r!17423))) b!2947899))

(assert (= (and b!2947614 ((_ is Union!9139) (regOne!18791 r!17423))) b!2947900))

(declare-fun b!2947901 () Bool)

(declare-fun e!1856970 () Bool)

(assert (=> b!2947901 (= e!1856970 tp_is_empty!15841)))

(assert (=> b!2947614 (= tp!942635 e!1856970)))

(declare-fun b!2947902 () Bool)

(declare-fun tp!942655 () Bool)

(declare-fun tp!942654 () Bool)

(assert (=> b!2947902 (= e!1856970 (and tp!942655 tp!942654))))

(declare-fun b!2947903 () Bool)

(declare-fun tp!942656 () Bool)

(assert (=> b!2947903 (= e!1856970 tp!942656)))

(declare-fun b!2947904 () Bool)

(declare-fun tp!942653 () Bool)

(declare-fun tp!942657 () Bool)

(assert (=> b!2947904 (= e!1856970 (and tp!942653 tp!942657))))

(assert (= (and b!2947614 ((_ is ElementMatch!9139) (regTwo!18791 r!17423))) b!2947901))

(assert (= (and b!2947614 ((_ is Concat!14460) (regTwo!18791 r!17423))) b!2947902))

(assert (= (and b!2947614 ((_ is Star!9139) (regTwo!18791 r!17423))) b!2947903))

(assert (= (and b!2947614 ((_ is Union!9139) (regTwo!18791 r!17423))) b!2947904))

(declare-fun b!2947905 () Bool)

(declare-fun e!1856971 () Bool)

(assert (=> b!2947905 (= e!1856971 tp_is_empty!15841)))

(assert (=> b!2947613 (= tp!942632 e!1856971)))

(declare-fun b!2947906 () Bool)

(declare-fun tp!942660 () Bool)

(declare-fun tp!942659 () Bool)

(assert (=> b!2947906 (= e!1856971 (and tp!942660 tp!942659))))

(declare-fun b!2947907 () Bool)

(declare-fun tp!942661 () Bool)

(assert (=> b!2947907 (= e!1856971 tp!942661)))

(declare-fun b!2947908 () Bool)

(declare-fun tp!942658 () Bool)

(declare-fun tp!942662 () Bool)

(assert (=> b!2947908 (= e!1856971 (and tp!942658 tp!942662))))

(assert (= (and b!2947613 ((_ is ElementMatch!9139) (regOne!18790 r!17423))) b!2947905))

(assert (= (and b!2947613 ((_ is Concat!14460) (regOne!18790 r!17423))) b!2947906))

(assert (= (and b!2947613 ((_ is Star!9139) (regOne!18790 r!17423))) b!2947907))

(assert (= (and b!2947613 ((_ is Union!9139) (regOne!18790 r!17423))) b!2947908))

(declare-fun b!2947909 () Bool)

(declare-fun e!1856972 () Bool)

(assert (=> b!2947909 (= e!1856972 tp_is_empty!15841)))

(assert (=> b!2947613 (= tp!942637 e!1856972)))

(declare-fun b!2947910 () Bool)

(declare-fun tp!942665 () Bool)

(declare-fun tp!942664 () Bool)

(assert (=> b!2947910 (= e!1856972 (and tp!942665 tp!942664))))

(declare-fun b!2947911 () Bool)

(declare-fun tp!942666 () Bool)

(assert (=> b!2947911 (= e!1856972 tp!942666)))

(declare-fun b!2947912 () Bool)

(declare-fun tp!942663 () Bool)

(declare-fun tp!942667 () Bool)

(assert (=> b!2947912 (= e!1856972 (and tp!942663 tp!942667))))

(assert (= (and b!2947613 ((_ is ElementMatch!9139) (regTwo!18790 r!17423))) b!2947909))

(assert (= (and b!2947613 ((_ is Concat!14460) (regTwo!18790 r!17423))) b!2947910))

(assert (= (and b!2947613 ((_ is Star!9139) (regTwo!18790 r!17423))) b!2947911))

(assert (= (and b!2947613 ((_ is Union!9139) (regTwo!18790 r!17423))) b!2947912))

(declare-fun b!2947913 () Bool)

(declare-fun e!1856973 () Bool)

(assert (=> b!2947913 (= e!1856973 tp_is_empty!15841)))

(assert (=> b!2947624 (= tp!942633 e!1856973)))

(declare-fun b!2947914 () Bool)

(declare-fun tp!942670 () Bool)

(declare-fun tp!942669 () Bool)

(assert (=> b!2947914 (= e!1856973 (and tp!942670 tp!942669))))

(declare-fun b!2947915 () Bool)

(declare-fun tp!942671 () Bool)

(assert (=> b!2947915 (= e!1856973 tp!942671)))

(declare-fun b!2947916 () Bool)

(declare-fun tp!942668 () Bool)

(declare-fun tp!942672 () Bool)

(assert (=> b!2947916 (= e!1856973 (and tp!942668 tp!942672))))

(assert (= (and b!2947624 ((_ is ElementMatch!9139) (reg!9468 r!17423))) b!2947913))

(assert (= (and b!2947624 ((_ is Concat!14460) (reg!9468 r!17423))) b!2947914))

(assert (= (and b!2947624 ((_ is Star!9139) (reg!9468 r!17423))) b!2947915))

(assert (= (and b!2947624 ((_ is Union!9139) (reg!9468 r!17423))) b!2947916))

(declare-fun b!2947921 () Bool)

(declare-fun e!1856976 () Bool)

(declare-fun tp!942675 () Bool)

(assert (=> b!2947921 (= e!1856976 (and tp_is_empty!15841 tp!942675))))

(assert (=> b!2947623 (= tp!942634 e!1856976)))

(assert (= (and b!2947623 ((_ is Cons!34880) (t!234069 s!11993))) b!2947921))

(check-sat (not bm!194605) (not b!2947743) (not bm!194591) (not b!2947880) (not b!2947916) (not bm!194598) tp_is_empty!15841 (not b!2947883) (not b!2947803) (not b!2947915) (not b!2947813) (not b!2947906) (not b!2947911) (not b!2947865) (not bm!194581) (not d!840723) (not d!840735) (not b!2947908) (not bm!194580) (not b!2947814) (not b!2947900) (not bm!194589) (not b!2947878) (not b!2947907) (not bm!194588) (not bm!194613) (not b!2947902) (not b!2947718) (not b!2947899) (not b!2947809) (not bm!194585) (not d!840717) (not b!2947873) (not b!2947771) (not d!840733) (not bm!194584) (not b!2947884) (not bm!194604) (not b!2947910) (not b!2947745) (not b!2947808) (not bm!194611) (not b!2947879) (not bm!194599) (not b!2947868) (not b!2947810) (not d!840715) (not bm!194578) (not bm!194603) (not b!2947914) (not b!2947720) (not b!2947822) (not b!2947904) (not bm!194582) (not b!2947903) (not bm!194587) (not b!2947921) (not b!2947898) (not bm!194612) (not b!2947912))
(check-sat)
