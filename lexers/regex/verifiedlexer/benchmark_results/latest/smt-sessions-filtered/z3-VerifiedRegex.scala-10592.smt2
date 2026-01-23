; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544564 () Bool)

(assert start!544564)

(declare-fun b!5144431 () Bool)

(declare-fun res!2190161 () Bool)

(declare-fun e!3207901 () Bool)

(assert (=> b!5144431 (=> (not res!2190161) (not e!3207901))))

(declare-fun e!3207898 () Bool)

(assert (=> b!5144431 (= res!2190161 e!3207898)))

(declare-fun res!2190163 () Bool)

(assert (=> b!5144431 (=> res!2190163 e!3207898)))

(declare-datatypes ((C!29216 0))(
  ( (C!29217 (val!24260 Int)) )
))
(declare-datatypes ((Regex!14475 0))(
  ( (ElementMatch!14475 (c!885640 C!29216)) (Concat!23320 (regOne!29462 Regex!14475) (regTwo!29462 Regex!14475)) (EmptyExpr!14475) (Star!14475 (reg!14804 Regex!14475)) (EmptyLang!14475) (Union!14475 (regOne!29463 Regex!14475) (regTwo!29463 Regex!14475)) )
))
(declare-fun expr!117 () Regex!14475)

(declare-fun lostCause!1502 (Regex!14475) Bool)

(assert (=> b!5144431 (= res!2190163 (lostCause!1502 expr!117))))

(declare-fun b!5144432 () Bool)

(declare-fun e!3207903 () Bool)

(declare-datatypes ((List!59863 0))(
  ( (Nil!59739) (Cons!59739 (h!66187 Regex!14475) (t!372900 List!59863)) )
))
(declare-datatypes ((Context!7718 0))(
  ( (Context!7719 (exprs!4359 List!59863)) )
))
(declare-fun ctx!100 () Context!7718)

(declare-fun lostCause!1503 (Context!7718) Bool)

(assert (=> b!5144432 (= e!3207903 (not (lostCause!1503 ctx!100)))))

(declare-fun b!5144433 () Bool)

(declare-fun e!3207902 () Bool)

(declare-fun tp!1436737 () Bool)

(declare-fun tp!1436733 () Bool)

(assert (=> b!5144433 (= e!3207902 (and tp!1436737 tp!1436733))))

(declare-fun b!5144434 () Bool)

(assert (=> b!5144434 (= e!3207898 (lostCause!1503 ctx!100))))

(declare-fun b!5144435 () Bool)

(declare-fun tp!1436736 () Bool)

(assert (=> b!5144435 (= e!3207902 tp!1436736)))

(declare-fun b!5144436 () Bool)

(declare-fun res!2190164 () Bool)

(assert (=> b!5144436 (=> (not res!2190164) (not e!3207901))))

(declare-fun a!1296 () C!29216)

(get-info :version)

(assert (=> b!5144436 (= res!2190164 (and (or (not ((_ is ElementMatch!14475) expr!117)) (not (= (c!885640 expr!117) a!1296))) ((_ is Union!14475) expr!117)))))

(declare-fun b!5144437 () Bool)

(declare-fun tp!1436734 () Bool)

(declare-fun tp!1436732 () Bool)

(assert (=> b!5144437 (= e!3207902 (and tp!1436734 tp!1436732))))

(declare-fun b!5144438 () Bool)

(declare-fun res!2190165 () Bool)

(declare-fun e!3207900 () Bool)

(assert (=> b!5144438 (=> res!2190165 e!3207900)))

(assert (=> b!5144438 (= res!2190165 e!3207903)))

(declare-fun res!2190162 () Bool)

(assert (=> b!5144438 (=> (not res!2190162) (not e!3207903))))

(assert (=> b!5144438 (= res!2190162 (not (lostCause!1502 (regTwo!29463 expr!117))))))

(declare-fun b!5144439 () Bool)

(declare-fun e!3207899 () Bool)

(declare-fun tp!1436735 () Bool)

(assert (=> b!5144439 (= e!3207899 tp!1436735)))

(declare-fun b!5144440 () Bool)

(declare-fun regexDepth!137 (Regex!14475) Int)

(assert (=> b!5144440 (= e!3207900 (< (regexDepth!137 (regTwo!29463 expr!117)) (regexDepth!137 expr!117)))))

(declare-fun b!5144441 () Bool)

(assert (=> b!5144441 (= e!3207901 (not e!3207900))))

(declare-fun res!2190167 () Bool)

(assert (=> b!5144441 (=> res!2190167 e!3207900)))

(declare-fun validRegex!6330 (Regex!14475) Bool)

(assert (=> b!5144441 (= res!2190167 (not (validRegex!6330 (regTwo!29463 expr!117))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1273 ((InoxSet Context!7718)) Bool)

(declare-fun derivationStepZipperDown!154 (Regex!14475 Context!7718 C!29216) (InoxSet Context!7718))

(assert (=> b!5144441 (lostCauseZipper!1273 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151125 0))(
  ( (Unit!151126) )
))
(declare-fun lt!2120673 () Unit!151125)

(declare-fun lemmaLostCauseFixPointDerivDown!44 (Regex!14475 Context!7718 C!29216) Unit!151125)

(assert (=> b!5144441 (= lt!2120673 (lemmaLostCauseFixPointDerivDown!44 (regOne!29463 expr!117) ctx!100 a!1296))))

(declare-fun res!2190166 () Bool)

(assert (=> start!544564 (=> (not res!2190166) (not e!3207901))))

(assert (=> start!544564 (= res!2190166 (validRegex!6330 expr!117))))

(assert (=> start!544564 e!3207901))

(assert (=> start!544564 e!3207902))

(declare-fun inv!79368 (Context!7718) Bool)

(assert (=> start!544564 (and (inv!79368 ctx!100) e!3207899)))

(declare-fun tp_is_empty!38099 () Bool)

(assert (=> start!544564 tp_is_empty!38099))

(declare-fun b!5144442 () Bool)

(assert (=> b!5144442 (= e!3207902 tp_is_empty!38099)))

(assert (= (and start!544564 res!2190166) b!5144431))

(assert (= (and b!5144431 (not res!2190163)) b!5144434))

(assert (= (and b!5144431 res!2190161) b!5144436))

(assert (= (and b!5144436 res!2190164) b!5144441))

(assert (= (and b!5144441 (not res!2190167)) b!5144438))

(assert (= (and b!5144438 res!2190162) b!5144432))

(assert (= (and b!5144438 (not res!2190165)) b!5144440))

(assert (= (and start!544564 ((_ is ElementMatch!14475) expr!117)) b!5144442))

(assert (= (and start!544564 ((_ is Concat!23320) expr!117)) b!5144433))

(assert (= (and start!544564 ((_ is Star!14475) expr!117)) b!5144435))

(assert (= (and start!544564 ((_ is Union!14475) expr!117)) b!5144437))

(assert (= start!544564 b!5144439))

(declare-fun m!6205736 () Bool)

(assert (=> b!5144440 m!6205736))

(declare-fun m!6205738 () Bool)

(assert (=> b!5144440 m!6205738))

(declare-fun m!6205740 () Bool)

(assert (=> b!5144434 m!6205740))

(declare-fun m!6205742 () Bool)

(assert (=> b!5144438 m!6205742))

(declare-fun m!6205744 () Bool)

(assert (=> b!5144441 m!6205744))

(declare-fun m!6205746 () Bool)

(assert (=> b!5144441 m!6205746))

(assert (=> b!5144441 m!6205746))

(declare-fun m!6205748 () Bool)

(assert (=> b!5144441 m!6205748))

(declare-fun m!6205750 () Bool)

(assert (=> b!5144441 m!6205750))

(assert (=> b!5144432 m!6205740))

(declare-fun m!6205752 () Bool)

(assert (=> b!5144431 m!6205752))

(declare-fun m!6205754 () Bool)

(assert (=> start!544564 m!6205754))

(declare-fun m!6205756 () Bool)

(assert (=> start!544564 m!6205756))

(check-sat (not b!5144432) (not b!5144439) (not b!5144434) (not b!5144433) (not b!5144438) (not start!544564) (not b!5144441) (not b!5144437) (not b!5144435) (not b!5144431) tp_is_empty!38099 (not b!5144440))
(check-sat)
(get-model)

(declare-fun d!1663209 () Bool)

(declare-fun lambda!256653 () Int)

(declare-fun exists!1798 (List!59863 Int) Bool)

(assert (=> d!1663209 (= (lostCause!1503 ctx!100) (exists!1798 (exprs!4359 ctx!100) lambda!256653))))

(declare-fun bs!1200999 () Bool)

(assert (= bs!1200999 d!1663209))

(declare-fun m!6205782 () Bool)

(assert (=> bs!1200999 m!6205782))

(assert (=> b!5144434 d!1663209))

(declare-fun b!5144529 () Bool)

(declare-fun res!2190191 () Bool)

(declare-fun e!3207964 () Bool)

(assert (=> b!5144529 (=> (not res!2190191) (not e!3207964))))

(declare-fun call!359347 () Bool)

(assert (=> b!5144529 (= res!2190191 call!359347)))

(declare-fun e!3207960 () Bool)

(assert (=> b!5144529 (= e!3207960 e!3207964)))

(declare-fun d!1663219 () Bool)

(declare-fun res!2190190 () Bool)

(declare-fun e!3207959 () Bool)

(assert (=> d!1663219 (=> res!2190190 e!3207959)))

(assert (=> d!1663219 (= res!2190190 ((_ is ElementMatch!14475) expr!117))))

(assert (=> d!1663219 (= (validRegex!6330 expr!117) e!3207959)))

(declare-fun b!5144530 () Bool)

(declare-fun call!359346 () Bool)

(assert (=> b!5144530 (= e!3207964 call!359346)))

(declare-fun b!5144531 () Bool)

(declare-fun e!3207958 () Bool)

(assert (=> b!5144531 (= e!3207959 e!3207958)))

(declare-fun c!885674 () Bool)

(assert (=> b!5144531 (= c!885674 ((_ is Star!14475) expr!117))))

(declare-fun b!5144532 () Bool)

(declare-fun e!3207963 () Bool)

(assert (=> b!5144532 (= e!3207958 e!3207963)))

(declare-fun res!2190193 () Bool)

(declare-fun nullable!4830 (Regex!14475) Bool)

(assert (=> b!5144532 (= res!2190193 (not (nullable!4830 (reg!14804 expr!117))))))

(assert (=> b!5144532 (=> (not res!2190193) (not e!3207963))))

(declare-fun b!5144533 () Bool)

(declare-fun e!3207962 () Bool)

(assert (=> b!5144533 (= e!3207962 call!359346)))

(declare-fun b!5144534 () Bool)

(declare-fun res!2190192 () Bool)

(declare-fun e!3207961 () Bool)

(assert (=> b!5144534 (=> res!2190192 e!3207961)))

(assert (=> b!5144534 (= res!2190192 (not ((_ is Concat!23320) expr!117)))))

(assert (=> b!5144534 (= e!3207960 e!3207961)))

(declare-fun b!5144535 () Bool)

(assert (=> b!5144535 (= e!3207958 e!3207960)))

(declare-fun c!885673 () Bool)

(assert (=> b!5144535 (= c!885673 ((_ is Union!14475) expr!117))))

(declare-fun bm!359340 () Bool)

(assert (=> bm!359340 (= call!359347 (validRegex!6330 (ite c!885673 (regOne!29463 expr!117) (regOne!29462 expr!117))))))

(declare-fun bm!359341 () Bool)

(declare-fun call!359345 () Bool)

(assert (=> bm!359341 (= call!359346 call!359345)))

(declare-fun bm!359342 () Bool)

(assert (=> bm!359342 (= call!359345 (validRegex!6330 (ite c!885674 (reg!14804 expr!117) (ite c!885673 (regTwo!29463 expr!117) (regTwo!29462 expr!117)))))))

(declare-fun b!5144536 () Bool)

(assert (=> b!5144536 (= e!3207961 e!3207962)))

(declare-fun res!2190194 () Bool)

(assert (=> b!5144536 (=> (not res!2190194) (not e!3207962))))

(assert (=> b!5144536 (= res!2190194 call!359347)))

(declare-fun b!5144537 () Bool)

(assert (=> b!5144537 (= e!3207963 call!359345)))

(assert (= (and d!1663219 (not res!2190190)) b!5144531))

(assert (= (and b!5144531 c!885674) b!5144532))

(assert (= (and b!5144531 (not c!885674)) b!5144535))

(assert (= (and b!5144532 res!2190193) b!5144537))

(assert (= (and b!5144535 c!885673) b!5144529))

(assert (= (and b!5144535 (not c!885673)) b!5144534))

(assert (= (and b!5144529 res!2190191) b!5144530))

(assert (= (and b!5144534 (not res!2190192)) b!5144536))

(assert (= (and b!5144536 res!2190194) b!5144533))

(assert (= (or b!5144530 b!5144533) bm!359341))

(assert (= (or b!5144529 b!5144536) bm!359340))

(assert (= (or b!5144537 bm!359341) bm!359342))

(declare-fun m!6205784 () Bool)

(assert (=> b!5144532 m!6205784))

(declare-fun m!6205786 () Bool)

(assert (=> bm!359340 m!6205786))

(declare-fun m!6205788 () Bool)

(assert (=> bm!359342 m!6205788))

(assert (=> start!544564 d!1663219))

(declare-fun bs!1201000 () Bool)

(declare-fun d!1663221 () Bool)

(assert (= bs!1201000 (and d!1663221 d!1663209)))

(declare-fun lambda!256656 () Int)

(assert (=> bs!1201000 (not (= lambda!256656 lambda!256653))))

(declare-fun forall!13937 (List!59863 Int) Bool)

(assert (=> d!1663221 (= (inv!79368 ctx!100) (forall!13937 (exprs!4359 ctx!100) lambda!256656))))

(declare-fun bs!1201001 () Bool)

(assert (= bs!1201001 d!1663221))

(declare-fun m!6205790 () Bool)

(assert (=> bs!1201001 m!6205790))

(assert (=> start!544564 d!1663221))

(declare-fun b!5144572 () Bool)

(declare-fun e!3207985 () Int)

(declare-fun call!359364 () Int)

(assert (=> b!5144572 (= e!3207985 (+ 1 call!359364))))

(declare-fun bm!359357 () Bool)

(declare-fun c!885694 () Bool)

(declare-fun c!885690 () Bool)

(declare-fun call!359363 () Int)

(assert (=> bm!359357 (= call!359363 (regexDepth!137 (ite c!885694 (reg!14804 (regTwo!29463 expr!117)) (ite c!885690 (regOne!29463 (regTwo!29463 expr!117)) (regTwo!29462 (regTwo!29463 expr!117))))))))

(declare-fun b!5144573 () Bool)

(declare-fun e!3207994 () Int)

(assert (=> b!5144573 (= e!3207994 (+ 1 call!359364))))

(declare-fun b!5144574 () Bool)

(declare-fun e!3207989 () Bool)

(declare-fun lt!2120680 () Int)

(assert (=> b!5144574 (= e!3207989 (= lt!2120680 1))))

(declare-fun bm!359358 () Bool)

(declare-fun call!359362 () Int)

(declare-fun call!359365 () Int)

(assert (=> bm!359358 (= call!359362 call!359365)))

(declare-fun b!5144575 () Bool)

(declare-fun e!3207987 () Bool)

(assert (=> b!5144575 (= e!3207987 (> lt!2120680 call!359365))))

(declare-fun b!5144576 () Bool)

(declare-fun c!885691 () Bool)

(assert (=> b!5144576 (= c!885691 ((_ is Star!14475) (regTwo!29463 expr!117)))))

(declare-fun e!3207988 () Bool)

(assert (=> b!5144576 (= e!3207988 e!3207989)))

(declare-fun b!5144578 () Bool)

(declare-fun e!3207993 () Int)

(assert (=> b!5144578 (= e!3207993 1)))

(declare-fun b!5144579 () Bool)

(declare-fun e!3207990 () Bool)

(declare-fun e!3207991 () Bool)

(assert (=> b!5144579 (= e!3207990 e!3207991)))

(declare-fun c!885693 () Bool)

(assert (=> b!5144579 (= c!885693 ((_ is Union!14475) (regTwo!29463 expr!117)))))

(declare-fun b!5144580 () Bool)

(declare-fun e!3207986 () Int)

(assert (=> b!5144580 (= e!3207986 (+ 1 call!359363))))

(declare-fun bm!359359 () Bool)

(declare-fun call!359367 () Int)

(assert (=> bm!359359 (= call!359367 call!359363)))

(declare-fun b!5144581 () Bool)

(assert (=> b!5144581 (= e!3207994 1)))

(declare-fun bm!359360 () Bool)

(declare-fun call!359368 () Int)

(assert (=> bm!359360 (= call!359368 (regexDepth!137 (ite c!885693 (regOne!29463 (regTwo!29463 expr!117)) (regTwo!29462 (regTwo!29463 expr!117)))))))

(declare-fun b!5144582 () Bool)

(assert (=> b!5144582 (= e!3207985 e!3207994)))

(declare-fun c!885695 () Bool)

(assert (=> b!5144582 (= c!885695 ((_ is Concat!23320) (regTwo!29463 expr!117)))))

(declare-fun call!359366 () Int)

(declare-fun bm!359361 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!359361 (= call!359364 (maxBigInt!0 (ite c!885690 call!359367 call!359366) (ite c!885690 call!359366 call!359367)))))

(declare-fun b!5144583 () Bool)

(declare-fun e!3207992 () Bool)

(assert (=> b!5144583 (= e!3207992 (> lt!2120680 call!359368))))

(declare-fun b!5144584 () Bool)

(assert (=> b!5144584 (= e!3207991 e!3207987)))

(declare-fun res!2190203 () Bool)

(assert (=> b!5144584 (= res!2190203 (> lt!2120680 call!359368))))

(assert (=> b!5144584 (=> (not res!2190203) (not e!3207987))))

(declare-fun bm!359362 () Bool)

(assert (=> bm!359362 (= call!359366 (regexDepth!137 (ite c!885690 (regTwo!29463 (regTwo!29463 expr!117)) (regOne!29462 (regTwo!29463 expr!117)))))))

(declare-fun b!5144585 () Bool)

(assert (=> b!5144585 (= e!3207993 e!3207986)))

(assert (=> b!5144585 (= c!885694 ((_ is Star!14475) (regTwo!29463 expr!117)))))

(declare-fun b!5144577 () Bool)

(declare-fun res!2190202 () Bool)

(assert (=> b!5144577 (=> (not res!2190202) (not e!3207992))))

(assert (=> b!5144577 (= res!2190202 (> lt!2120680 call!359362))))

(assert (=> b!5144577 (= e!3207988 e!3207992)))

(declare-fun d!1663223 () Bool)

(assert (=> d!1663223 e!3207990))

(declare-fun res!2190201 () Bool)

(assert (=> d!1663223 (=> (not res!2190201) (not e!3207990))))

(assert (=> d!1663223 (= res!2190201 (> lt!2120680 0))))

(assert (=> d!1663223 (= lt!2120680 e!3207993)))

(declare-fun c!885692 () Bool)

(assert (=> d!1663223 (= c!885692 ((_ is ElementMatch!14475) (regTwo!29463 expr!117)))))

(assert (=> d!1663223 (= (regexDepth!137 (regTwo!29463 expr!117)) lt!2120680)))

(declare-fun b!5144586 () Bool)

(assert (=> b!5144586 (= e!3207989 (> lt!2120680 call!359362))))

(declare-fun b!5144587 () Bool)

(assert (=> b!5144587 (= e!3207991 e!3207988)))

(declare-fun c!885689 () Bool)

(assert (=> b!5144587 (= c!885689 ((_ is Concat!23320) (regTwo!29463 expr!117)))))

(declare-fun bm!359363 () Bool)

(assert (=> bm!359363 (= call!359365 (regexDepth!137 (ite c!885693 (regTwo!29463 (regTwo!29463 expr!117)) (ite c!885689 (regOne!29462 (regTwo!29463 expr!117)) (reg!14804 (regTwo!29463 expr!117))))))))

(declare-fun b!5144588 () Bool)

(assert (=> b!5144588 (= c!885690 ((_ is Union!14475) (regTwo!29463 expr!117)))))

(assert (=> b!5144588 (= e!3207986 e!3207985)))

(assert (= (and d!1663223 c!885692) b!5144578))

(assert (= (and d!1663223 (not c!885692)) b!5144585))

(assert (= (and b!5144585 c!885694) b!5144580))

(assert (= (and b!5144585 (not c!885694)) b!5144588))

(assert (= (and b!5144588 c!885690) b!5144572))

(assert (= (and b!5144588 (not c!885690)) b!5144582))

(assert (= (and b!5144582 c!885695) b!5144573))

(assert (= (and b!5144582 (not c!885695)) b!5144581))

(assert (= (or b!5144572 b!5144573) bm!359362))

(assert (= (or b!5144572 b!5144573) bm!359359))

(assert (= (or b!5144572 b!5144573) bm!359361))

(assert (= (or b!5144580 bm!359359) bm!359357))

(assert (= (and d!1663223 res!2190201) b!5144579))

(assert (= (and b!5144579 c!885693) b!5144584))

(assert (= (and b!5144579 (not c!885693)) b!5144587))

(assert (= (and b!5144584 res!2190203) b!5144575))

(assert (= (and b!5144587 c!885689) b!5144577))

(assert (= (and b!5144587 (not c!885689)) b!5144576))

(assert (= (and b!5144577 res!2190202) b!5144583))

(assert (= (and b!5144576 c!885691) b!5144586))

(assert (= (and b!5144576 (not c!885691)) b!5144574))

(assert (= (or b!5144577 b!5144586) bm!359358))

(assert (= (or b!5144575 bm!359358) bm!359363))

(assert (= (or b!5144584 b!5144583) bm!359360))

(declare-fun m!6205792 () Bool)

(assert (=> bm!359363 m!6205792))

(declare-fun m!6205794 () Bool)

(assert (=> bm!359361 m!6205794))

(declare-fun m!6205796 () Bool)

(assert (=> bm!359362 m!6205796))

(declare-fun m!6205798 () Bool)

(assert (=> bm!359357 m!6205798))

(declare-fun m!6205800 () Bool)

(assert (=> bm!359360 m!6205800))

(assert (=> b!5144440 d!1663223))

(declare-fun b!5144589 () Bool)

(declare-fun e!3207995 () Int)

(declare-fun call!359371 () Int)

(assert (=> b!5144589 (= e!3207995 (+ 1 call!359371))))

(declare-fun c!885697 () Bool)

(declare-fun bm!359364 () Bool)

(declare-fun call!359370 () Int)

(declare-fun c!885701 () Bool)

(assert (=> bm!359364 (= call!359370 (regexDepth!137 (ite c!885701 (reg!14804 expr!117) (ite c!885697 (regOne!29463 expr!117) (regTwo!29462 expr!117)))))))

(declare-fun b!5144590 () Bool)

(declare-fun e!3208004 () Int)

(assert (=> b!5144590 (= e!3208004 (+ 1 call!359371))))

(declare-fun b!5144591 () Bool)

(declare-fun e!3207999 () Bool)

(declare-fun lt!2120681 () Int)

(assert (=> b!5144591 (= e!3207999 (= lt!2120681 1))))

(declare-fun bm!359365 () Bool)

(declare-fun call!359369 () Int)

(declare-fun call!359372 () Int)

(assert (=> bm!359365 (= call!359369 call!359372)))

(declare-fun b!5144592 () Bool)

(declare-fun e!3207997 () Bool)

(assert (=> b!5144592 (= e!3207997 (> lt!2120681 call!359372))))

(declare-fun b!5144593 () Bool)

(declare-fun c!885698 () Bool)

(assert (=> b!5144593 (= c!885698 ((_ is Star!14475) expr!117))))

(declare-fun e!3207998 () Bool)

(assert (=> b!5144593 (= e!3207998 e!3207999)))

(declare-fun b!5144595 () Bool)

(declare-fun e!3208003 () Int)

(assert (=> b!5144595 (= e!3208003 1)))

(declare-fun b!5144596 () Bool)

(declare-fun e!3208000 () Bool)

(declare-fun e!3208001 () Bool)

(assert (=> b!5144596 (= e!3208000 e!3208001)))

(declare-fun c!885700 () Bool)

(assert (=> b!5144596 (= c!885700 ((_ is Union!14475) expr!117))))

(declare-fun b!5144597 () Bool)

(declare-fun e!3207996 () Int)

(assert (=> b!5144597 (= e!3207996 (+ 1 call!359370))))

(declare-fun bm!359366 () Bool)

(declare-fun call!359374 () Int)

(assert (=> bm!359366 (= call!359374 call!359370)))

(declare-fun b!5144598 () Bool)

(assert (=> b!5144598 (= e!3208004 1)))

(declare-fun bm!359367 () Bool)

(declare-fun call!359375 () Int)

(assert (=> bm!359367 (= call!359375 (regexDepth!137 (ite c!885700 (regOne!29463 expr!117) (regTwo!29462 expr!117))))))

(declare-fun b!5144599 () Bool)

(assert (=> b!5144599 (= e!3207995 e!3208004)))

(declare-fun c!885702 () Bool)

(assert (=> b!5144599 (= c!885702 ((_ is Concat!23320) expr!117))))

(declare-fun call!359373 () Int)

(declare-fun bm!359368 () Bool)

(assert (=> bm!359368 (= call!359371 (maxBigInt!0 (ite c!885697 call!359374 call!359373) (ite c!885697 call!359373 call!359374)))))

(declare-fun b!5144600 () Bool)

(declare-fun e!3208002 () Bool)

(assert (=> b!5144600 (= e!3208002 (> lt!2120681 call!359375))))

(declare-fun b!5144601 () Bool)

(assert (=> b!5144601 (= e!3208001 e!3207997)))

(declare-fun res!2190206 () Bool)

(assert (=> b!5144601 (= res!2190206 (> lt!2120681 call!359375))))

(assert (=> b!5144601 (=> (not res!2190206) (not e!3207997))))

(declare-fun bm!359369 () Bool)

(assert (=> bm!359369 (= call!359373 (regexDepth!137 (ite c!885697 (regTwo!29463 expr!117) (regOne!29462 expr!117))))))

(declare-fun b!5144602 () Bool)

(assert (=> b!5144602 (= e!3208003 e!3207996)))

(assert (=> b!5144602 (= c!885701 ((_ is Star!14475) expr!117))))

(declare-fun b!5144594 () Bool)

(declare-fun res!2190205 () Bool)

(assert (=> b!5144594 (=> (not res!2190205) (not e!3208002))))

(assert (=> b!5144594 (= res!2190205 (> lt!2120681 call!359369))))

(assert (=> b!5144594 (= e!3207998 e!3208002)))

(declare-fun d!1663225 () Bool)

(assert (=> d!1663225 e!3208000))

(declare-fun res!2190204 () Bool)

(assert (=> d!1663225 (=> (not res!2190204) (not e!3208000))))

(assert (=> d!1663225 (= res!2190204 (> lt!2120681 0))))

(assert (=> d!1663225 (= lt!2120681 e!3208003)))

(declare-fun c!885699 () Bool)

(assert (=> d!1663225 (= c!885699 ((_ is ElementMatch!14475) expr!117))))

(assert (=> d!1663225 (= (regexDepth!137 expr!117) lt!2120681)))

(declare-fun b!5144603 () Bool)

(assert (=> b!5144603 (= e!3207999 (> lt!2120681 call!359369))))

(declare-fun b!5144604 () Bool)

(assert (=> b!5144604 (= e!3208001 e!3207998)))

(declare-fun c!885696 () Bool)

(assert (=> b!5144604 (= c!885696 ((_ is Concat!23320) expr!117))))

(declare-fun bm!359370 () Bool)

(assert (=> bm!359370 (= call!359372 (regexDepth!137 (ite c!885700 (regTwo!29463 expr!117) (ite c!885696 (regOne!29462 expr!117) (reg!14804 expr!117)))))))

(declare-fun b!5144605 () Bool)

(assert (=> b!5144605 (= c!885697 ((_ is Union!14475) expr!117))))

(assert (=> b!5144605 (= e!3207996 e!3207995)))

(assert (= (and d!1663225 c!885699) b!5144595))

(assert (= (and d!1663225 (not c!885699)) b!5144602))

(assert (= (and b!5144602 c!885701) b!5144597))

(assert (= (and b!5144602 (not c!885701)) b!5144605))

(assert (= (and b!5144605 c!885697) b!5144589))

(assert (= (and b!5144605 (not c!885697)) b!5144599))

(assert (= (and b!5144599 c!885702) b!5144590))

(assert (= (and b!5144599 (not c!885702)) b!5144598))

(assert (= (or b!5144589 b!5144590) bm!359369))

(assert (= (or b!5144589 b!5144590) bm!359366))

(assert (= (or b!5144589 b!5144590) bm!359368))

(assert (= (or b!5144597 bm!359366) bm!359364))

(assert (= (and d!1663225 res!2190204) b!5144596))

(assert (= (and b!5144596 c!885700) b!5144601))

(assert (= (and b!5144596 (not c!885700)) b!5144604))

(assert (= (and b!5144601 res!2190206) b!5144592))

(assert (= (and b!5144604 c!885696) b!5144594))

(assert (= (and b!5144604 (not c!885696)) b!5144593))

(assert (= (and b!5144594 res!2190205) b!5144600))

(assert (= (and b!5144593 c!885698) b!5144603))

(assert (= (and b!5144593 (not c!885698)) b!5144591))

(assert (= (or b!5144594 b!5144603) bm!359365))

(assert (= (or b!5144592 bm!359365) bm!359370))

(assert (= (or b!5144601 b!5144600) bm!359367))

(declare-fun m!6205802 () Bool)

(assert (=> bm!359370 m!6205802))

(declare-fun m!6205804 () Bool)

(assert (=> bm!359368 m!6205804))

(declare-fun m!6205806 () Bool)

(assert (=> bm!359369 m!6205806))

(declare-fun m!6205808 () Bool)

(assert (=> bm!359364 m!6205808))

(declare-fun m!6205810 () Bool)

(assert (=> bm!359367 m!6205810))

(assert (=> b!5144440 d!1663225))

(declare-fun b!5144606 () Bool)

(declare-fun res!2190208 () Bool)

(declare-fun e!3208011 () Bool)

(assert (=> b!5144606 (=> (not res!2190208) (not e!3208011))))

(declare-fun call!359378 () Bool)

(assert (=> b!5144606 (= res!2190208 call!359378)))

(declare-fun e!3208007 () Bool)

(assert (=> b!5144606 (= e!3208007 e!3208011)))

(declare-fun d!1663227 () Bool)

(declare-fun res!2190207 () Bool)

(declare-fun e!3208006 () Bool)

(assert (=> d!1663227 (=> res!2190207 e!3208006)))

(assert (=> d!1663227 (= res!2190207 ((_ is ElementMatch!14475) (regTwo!29463 expr!117)))))

(assert (=> d!1663227 (= (validRegex!6330 (regTwo!29463 expr!117)) e!3208006)))

(declare-fun b!5144607 () Bool)

(declare-fun call!359377 () Bool)

(assert (=> b!5144607 (= e!3208011 call!359377)))

(declare-fun b!5144608 () Bool)

(declare-fun e!3208005 () Bool)

(assert (=> b!5144608 (= e!3208006 e!3208005)))

(declare-fun c!885704 () Bool)

(assert (=> b!5144608 (= c!885704 ((_ is Star!14475) (regTwo!29463 expr!117)))))

(declare-fun b!5144609 () Bool)

(declare-fun e!3208010 () Bool)

(assert (=> b!5144609 (= e!3208005 e!3208010)))

(declare-fun res!2190210 () Bool)

(assert (=> b!5144609 (= res!2190210 (not (nullable!4830 (reg!14804 (regTwo!29463 expr!117)))))))

(assert (=> b!5144609 (=> (not res!2190210) (not e!3208010))))

(declare-fun b!5144610 () Bool)

(declare-fun e!3208009 () Bool)

(assert (=> b!5144610 (= e!3208009 call!359377)))

(declare-fun b!5144611 () Bool)

(declare-fun res!2190209 () Bool)

(declare-fun e!3208008 () Bool)

(assert (=> b!5144611 (=> res!2190209 e!3208008)))

(assert (=> b!5144611 (= res!2190209 (not ((_ is Concat!23320) (regTwo!29463 expr!117))))))

(assert (=> b!5144611 (= e!3208007 e!3208008)))

(declare-fun b!5144612 () Bool)

(assert (=> b!5144612 (= e!3208005 e!3208007)))

(declare-fun c!885703 () Bool)

(assert (=> b!5144612 (= c!885703 ((_ is Union!14475) (regTwo!29463 expr!117)))))

(declare-fun bm!359371 () Bool)

(assert (=> bm!359371 (= call!359378 (validRegex!6330 (ite c!885703 (regOne!29463 (regTwo!29463 expr!117)) (regOne!29462 (regTwo!29463 expr!117)))))))

(declare-fun bm!359372 () Bool)

(declare-fun call!359376 () Bool)

(assert (=> bm!359372 (= call!359377 call!359376)))

(declare-fun bm!359373 () Bool)

(assert (=> bm!359373 (= call!359376 (validRegex!6330 (ite c!885704 (reg!14804 (regTwo!29463 expr!117)) (ite c!885703 (regTwo!29463 (regTwo!29463 expr!117)) (regTwo!29462 (regTwo!29463 expr!117))))))))

(declare-fun b!5144613 () Bool)

(assert (=> b!5144613 (= e!3208008 e!3208009)))

(declare-fun res!2190211 () Bool)

(assert (=> b!5144613 (=> (not res!2190211) (not e!3208009))))

(assert (=> b!5144613 (= res!2190211 call!359378)))

(declare-fun b!5144614 () Bool)

(assert (=> b!5144614 (= e!3208010 call!359376)))

(assert (= (and d!1663227 (not res!2190207)) b!5144608))

(assert (= (and b!5144608 c!885704) b!5144609))

(assert (= (and b!5144608 (not c!885704)) b!5144612))

(assert (= (and b!5144609 res!2190210) b!5144614))

(assert (= (and b!5144612 c!885703) b!5144606))

(assert (= (and b!5144612 (not c!885703)) b!5144611))

(assert (= (and b!5144606 res!2190208) b!5144607))

(assert (= (and b!5144611 (not res!2190209)) b!5144613))

(assert (= (and b!5144613 res!2190211) b!5144610))

(assert (= (or b!5144607 b!5144610) bm!359372))

(assert (= (or b!5144606 b!5144613) bm!359371))

(assert (= (or b!5144614 bm!359372) bm!359373))

(declare-fun m!6205812 () Bool)

(assert (=> b!5144609 m!6205812))

(declare-fun m!6205814 () Bool)

(assert (=> bm!359371 m!6205814))

(declare-fun m!6205816 () Bool)

(assert (=> bm!359373 m!6205816))

(assert (=> b!5144441 d!1663227))

(declare-fun bs!1201002 () Bool)

(declare-fun b!5144619 () Bool)

(declare-fun d!1663229 () Bool)

(assert (= bs!1201002 (and b!5144619 d!1663229)))

(declare-fun lambda!256670 () Int)

(declare-fun lambda!256669 () Int)

(assert (=> bs!1201002 (not (= lambda!256670 lambda!256669))))

(declare-fun bs!1201003 () Bool)

(declare-fun b!5144620 () Bool)

(assert (= bs!1201003 (and b!5144620 d!1663229)))

(declare-fun lambda!256671 () Int)

(assert (=> bs!1201003 (not (= lambda!256671 lambda!256669))))

(declare-fun bs!1201004 () Bool)

(assert (= bs!1201004 (and b!5144620 b!5144619)))

(assert (=> bs!1201004 (= lambda!256671 lambda!256670)))

(declare-fun bm!359379 () Bool)

(declare-datatypes ((List!59864 0))(
  ( (Nil!59740) (Cons!59740 (h!66188 Context!7718) (t!372901 List!59864)) )
))
(declare-fun call!359384 () List!59864)

(declare-fun toList!8388 ((InoxSet Context!7718)) List!59864)

(assert (=> bm!359379 (= call!359384 (toList!8388 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296)))))

(declare-fun e!3208018 () Unit!151125)

(declare-fun Unit!151127 () Unit!151125)

(assert (=> b!5144619 (= e!3208018 Unit!151127)))

(declare-fun lt!2120699 () List!59864)

(assert (=> b!5144619 (= lt!2120699 call!359384)))

(declare-fun lt!2120700 () Unit!151125)

(declare-fun lemmaNotForallThenExists!435 (List!59864 Int) Unit!151125)

(assert (=> b!5144619 (= lt!2120700 (lemmaNotForallThenExists!435 lt!2120699 lambda!256669))))

(declare-fun call!359383 () Bool)

(assert (=> b!5144619 call!359383))

(declare-fun lt!2120698 () Unit!151125)

(assert (=> b!5144619 (= lt!2120698 lt!2120700)))

(declare-fun c!885715 () Bool)

(declare-fun bm!359378 () Bool)

(declare-fun lt!2120701 () List!59864)

(declare-fun exists!1799 (List!59864 Int) Bool)

(assert (=> bm!359378 (= call!359383 (exists!1799 (ite c!885715 lt!2120699 lt!2120701) (ite c!885715 lambda!256670 lambda!256671)))))

(declare-fun lt!2120703 () Bool)

(declare-datatypes ((List!59865 0))(
  ( (Nil!59741) (Cons!59741 (h!66189 C!29216) (t!372902 List!59865)) )
))
(declare-datatypes ((Option!14788 0))(
  ( (None!14787) (Some!14787 (v!50816 List!59865)) )
))
(declare-fun isEmpty!32049 (Option!14788) Bool)

(declare-fun getLanguageWitness!945 ((InoxSet Context!7718)) Option!14788)

(assert (=> d!1663229 (= lt!2120703 (isEmpty!32049 (getLanguageWitness!945 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13938 ((InoxSet Context!7718) Int) Bool)

(assert (=> d!1663229 (= lt!2120703 (forall!13938 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296) lambda!256669))))

(declare-fun lt!2120704 () Unit!151125)

(assert (=> d!1663229 (= lt!2120704 e!3208018)))

(assert (=> d!1663229 (= c!885715 (not (forall!13938 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296) lambda!256669)))))

(assert (=> d!1663229 (= (lostCauseZipper!1273 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296)) lt!2120703)))

(declare-fun Unit!151128 () Unit!151125)

(assert (=> b!5144620 (= e!3208018 Unit!151128)))

(assert (=> b!5144620 (= lt!2120701 call!359384)))

(declare-fun lt!2120705 () Unit!151125)

(declare-fun lemmaForallThenNotExists!402 (List!59864 Int) Unit!151125)

(assert (=> b!5144620 (= lt!2120705 (lemmaForallThenNotExists!402 lt!2120701 lambda!256669))))

(assert (=> b!5144620 (not call!359383)))

(declare-fun lt!2120702 () Unit!151125)

(assert (=> b!5144620 (= lt!2120702 lt!2120705)))

(assert (= (and d!1663229 c!885715) b!5144619))

(assert (= (and d!1663229 (not c!885715)) b!5144620))

(assert (= (or b!5144619 b!5144620) bm!359378))

(assert (= (or b!5144619 b!5144620) bm!359379))

(declare-fun m!6205818 () Bool)

(assert (=> bm!359378 m!6205818))

(declare-fun m!6205820 () Bool)

(assert (=> b!5144620 m!6205820))

(assert (=> bm!359379 m!6205746))

(declare-fun m!6205822 () Bool)

(assert (=> bm!359379 m!6205822))

(assert (=> d!1663229 m!6205746))

(declare-fun m!6205824 () Bool)

(assert (=> d!1663229 m!6205824))

(assert (=> d!1663229 m!6205824))

(declare-fun m!6205826 () Bool)

(assert (=> d!1663229 m!6205826))

(assert (=> d!1663229 m!6205746))

(declare-fun m!6205828 () Bool)

(assert (=> d!1663229 m!6205828))

(assert (=> d!1663229 m!6205746))

(assert (=> d!1663229 m!6205828))

(declare-fun m!6205830 () Bool)

(assert (=> b!5144619 m!6205830))

(assert (=> b!5144441 d!1663229))

(declare-fun b!5144643 () Bool)

(declare-fun e!3208031 () (InoxSet Context!7718))

(declare-fun e!3208032 () (InoxSet Context!7718))

(assert (=> b!5144643 (= e!3208031 e!3208032)))

(declare-fun c!885730 () Bool)

(assert (=> b!5144643 (= c!885730 ((_ is Concat!23320) (regOne!29463 expr!117)))))

(declare-fun b!5144644 () Bool)

(declare-fun call!359399 () (InoxSet Context!7718))

(assert (=> b!5144644 (= e!3208032 call!359399)))

(declare-fun bm!359392 () Bool)

(declare-fun call!359401 () (InoxSet Context!7718))

(assert (=> bm!359392 (= call!359399 call!359401)))

(declare-fun b!5144645 () Bool)

(declare-fun c!885729 () Bool)

(assert (=> b!5144645 (= c!885729 ((_ is Star!14475) (regOne!29463 expr!117)))))

(declare-fun e!3208035 () (InoxSet Context!7718))

(assert (=> b!5144645 (= e!3208032 e!3208035)))

(declare-fun call!359397 () List!59863)

(declare-fun c!885727 () Bool)

(declare-fun c!885728 () Bool)

(declare-fun bm!359393 () Bool)

(declare-fun call!359402 () (InoxSet Context!7718))

(assert (=> bm!359393 (= call!359402 (derivationStepZipperDown!154 (ite c!885728 (regOne!29463 (regOne!29463 expr!117)) (ite c!885727 (regTwo!29462 (regOne!29463 expr!117)) (ite c!885730 (regOne!29462 (regOne!29463 expr!117)) (reg!14804 (regOne!29463 expr!117))))) (ite (or c!885728 c!885727) ctx!100 (Context!7719 call!359397)) a!1296))))

(declare-fun bm!359394 () Bool)

(declare-fun call!359400 () List!59863)

(assert (=> bm!359394 (= call!359397 call!359400)))

(declare-fun bm!359395 () Bool)

(declare-fun $colon$colon!1202 (List!59863 Regex!14475) List!59863)

(assert (=> bm!359395 (= call!359400 ($colon$colon!1202 (exprs!4359 ctx!100) (ite (or c!885727 c!885730) (regTwo!29462 (regOne!29463 expr!117)) (regOne!29463 expr!117))))))

(declare-fun b!5144646 () Bool)

(declare-fun e!3208033 () (InoxSet Context!7718))

(assert (=> b!5144646 (= e!3208033 (store ((as const (Array Context!7718 Bool)) false) ctx!100 true))))

(declare-fun b!5144647 () Bool)

(declare-fun e!3208036 () (InoxSet Context!7718))

(assert (=> b!5144647 (= e!3208033 e!3208036)))

(assert (=> b!5144647 (= c!885728 ((_ is Union!14475) (regOne!29463 expr!117)))))

(declare-fun b!5144648 () Bool)

(declare-fun call!359398 () (InoxSet Context!7718))

(assert (=> b!5144648 (= e!3208031 ((_ map or) call!359398 call!359401))))

(declare-fun bm!359396 () Bool)

(assert (=> bm!359396 (= call!359401 call!359402)))

(declare-fun b!5144649 () Bool)

(declare-fun e!3208034 () Bool)

(assert (=> b!5144649 (= c!885727 e!3208034)))

(declare-fun res!2190214 () Bool)

(assert (=> b!5144649 (=> (not res!2190214) (not e!3208034))))

(assert (=> b!5144649 (= res!2190214 ((_ is Concat!23320) (regOne!29463 expr!117)))))

(assert (=> b!5144649 (= e!3208036 e!3208031)))

(declare-fun b!5144650 () Bool)

(assert (=> b!5144650 (= e!3208036 ((_ map or) call!359402 call!359398))))

(declare-fun d!1663231 () Bool)

(declare-fun c!885726 () Bool)

(assert (=> d!1663231 (= c!885726 (and ((_ is ElementMatch!14475) (regOne!29463 expr!117)) (= (c!885640 (regOne!29463 expr!117)) a!1296)))))

(assert (=> d!1663231 (= (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296) e!3208033)))

(declare-fun b!5144651 () Bool)

(assert (=> b!5144651 (= e!3208035 ((as const (Array Context!7718 Bool)) false))))

(declare-fun b!5144652 () Bool)

(assert (=> b!5144652 (= e!3208034 (nullable!4830 (regOne!29462 (regOne!29463 expr!117))))))

(declare-fun bm!359397 () Bool)

(assert (=> bm!359397 (= call!359398 (derivationStepZipperDown!154 (ite c!885728 (regTwo!29463 (regOne!29463 expr!117)) (regOne!29462 (regOne!29463 expr!117))) (ite c!885728 ctx!100 (Context!7719 call!359400)) a!1296))))

(declare-fun b!5144653 () Bool)

(assert (=> b!5144653 (= e!3208035 call!359399)))

(assert (= (and d!1663231 c!885726) b!5144646))

(assert (= (and d!1663231 (not c!885726)) b!5144647))

(assert (= (and b!5144647 c!885728) b!5144650))

(assert (= (and b!5144647 (not c!885728)) b!5144649))

(assert (= (and b!5144649 res!2190214) b!5144652))

(assert (= (and b!5144649 c!885727) b!5144648))

(assert (= (and b!5144649 (not c!885727)) b!5144643))

(assert (= (and b!5144643 c!885730) b!5144644))

(assert (= (and b!5144643 (not c!885730)) b!5144645))

(assert (= (and b!5144645 c!885729) b!5144653))

(assert (= (and b!5144645 (not c!885729)) b!5144651))

(assert (= (or b!5144644 b!5144653) bm!359394))

(assert (= (or b!5144644 b!5144653) bm!359392))

(assert (= (or b!5144648 bm!359394) bm!359395))

(assert (= (or b!5144648 bm!359392) bm!359396))

(assert (= (or b!5144650 b!5144648) bm!359397))

(assert (= (or b!5144650 bm!359396) bm!359393))

(declare-fun m!6205832 () Bool)

(assert (=> b!5144646 m!6205832))

(declare-fun m!6205834 () Bool)

(assert (=> bm!359393 m!6205834))

(declare-fun m!6205836 () Bool)

(assert (=> bm!359397 m!6205836))

(declare-fun m!6205838 () Bool)

(assert (=> bm!359395 m!6205838))

(declare-fun m!6205840 () Bool)

(assert (=> b!5144652 m!6205840))

(assert (=> b!5144441 d!1663231))

(declare-fun d!1663233 () Bool)

(assert (=> d!1663233 (lostCauseZipper!1273 (derivationStepZipperDown!154 (regOne!29463 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120708 () Unit!151125)

(declare-fun choose!38061 (Regex!14475 Context!7718 C!29216) Unit!151125)

(assert (=> d!1663233 (= lt!2120708 (choose!38061 (regOne!29463 expr!117) ctx!100 a!1296))))

(assert (=> d!1663233 (validRegex!6330 (regOne!29463 expr!117))))

(assert (=> d!1663233 (= (lemmaLostCauseFixPointDerivDown!44 (regOne!29463 expr!117) ctx!100 a!1296) lt!2120708)))

(declare-fun bs!1201006 () Bool)

(assert (= bs!1201006 d!1663233))

(assert (=> bs!1201006 m!6205746))

(assert (=> bs!1201006 m!6205746))

(assert (=> bs!1201006 m!6205748))

(declare-fun m!6205844 () Bool)

(assert (=> bs!1201006 m!6205844))

(declare-fun m!6205846 () Bool)

(assert (=> bs!1201006 m!6205846))

(assert (=> b!5144441 d!1663233))

(declare-fun d!1663237 () Bool)

(declare-fun lostCauseFct!357 (Regex!14475) Bool)

(assert (=> d!1663237 (= (lostCause!1502 expr!117) (lostCauseFct!357 expr!117))))

(declare-fun bs!1201007 () Bool)

(assert (= bs!1201007 d!1663237))

(declare-fun m!6205848 () Bool)

(assert (=> bs!1201007 m!6205848))

(assert (=> b!5144431 d!1663237))

(assert (=> b!5144432 d!1663209))

(declare-fun d!1663239 () Bool)

(assert (=> d!1663239 (= (lostCause!1502 (regTwo!29463 expr!117)) (lostCauseFct!357 (regTwo!29463 expr!117)))))

(declare-fun bs!1201008 () Bool)

(assert (= bs!1201008 d!1663239))

(declare-fun m!6205850 () Bool)

(assert (=> bs!1201008 m!6205850))

(assert (=> b!5144438 d!1663239))

(declare-fun b!5144691 () Bool)

(declare-fun e!3208060 () Bool)

(assert (=> b!5144691 (= e!3208060 tp_is_empty!38099)))

(assert (=> b!5144435 (= tp!1436736 e!3208060)))

(declare-fun b!5144693 () Bool)

(declare-fun tp!1436749 () Bool)

(assert (=> b!5144693 (= e!3208060 tp!1436749)))

(declare-fun b!5144692 () Bool)

(declare-fun tp!1436748 () Bool)

(declare-fun tp!1436750 () Bool)

(assert (=> b!5144692 (= e!3208060 (and tp!1436748 tp!1436750))))

(declare-fun b!5144694 () Bool)

(declare-fun tp!1436751 () Bool)

(declare-fun tp!1436752 () Bool)

(assert (=> b!5144694 (= e!3208060 (and tp!1436751 tp!1436752))))

(assert (= (and b!5144435 ((_ is ElementMatch!14475) (reg!14804 expr!117))) b!5144691))

(assert (= (and b!5144435 ((_ is Concat!23320) (reg!14804 expr!117))) b!5144692))

(assert (= (and b!5144435 ((_ is Star!14475) (reg!14804 expr!117))) b!5144693))

(assert (= (and b!5144435 ((_ is Union!14475) (reg!14804 expr!117))) b!5144694))

(declare-fun b!5144695 () Bool)

(declare-fun e!3208061 () Bool)

(assert (=> b!5144695 (= e!3208061 tp_is_empty!38099)))

(assert (=> b!5144437 (= tp!1436734 e!3208061)))

(declare-fun b!5144697 () Bool)

(declare-fun tp!1436754 () Bool)

(assert (=> b!5144697 (= e!3208061 tp!1436754)))

(declare-fun b!5144696 () Bool)

(declare-fun tp!1436753 () Bool)

(declare-fun tp!1436755 () Bool)

(assert (=> b!5144696 (= e!3208061 (and tp!1436753 tp!1436755))))

(declare-fun b!5144698 () Bool)

(declare-fun tp!1436756 () Bool)

(declare-fun tp!1436757 () Bool)

(assert (=> b!5144698 (= e!3208061 (and tp!1436756 tp!1436757))))

(assert (= (and b!5144437 ((_ is ElementMatch!14475) (regOne!29463 expr!117))) b!5144695))

(assert (= (and b!5144437 ((_ is Concat!23320) (regOne!29463 expr!117))) b!5144696))

(assert (= (and b!5144437 ((_ is Star!14475) (regOne!29463 expr!117))) b!5144697))

(assert (= (and b!5144437 ((_ is Union!14475) (regOne!29463 expr!117))) b!5144698))

(declare-fun b!5144699 () Bool)

(declare-fun e!3208062 () Bool)

(assert (=> b!5144699 (= e!3208062 tp_is_empty!38099)))

(assert (=> b!5144437 (= tp!1436732 e!3208062)))

(declare-fun b!5144701 () Bool)

(declare-fun tp!1436759 () Bool)

(assert (=> b!5144701 (= e!3208062 tp!1436759)))

(declare-fun b!5144700 () Bool)

(declare-fun tp!1436758 () Bool)

(declare-fun tp!1436760 () Bool)

(assert (=> b!5144700 (= e!3208062 (and tp!1436758 tp!1436760))))

(declare-fun b!5144702 () Bool)

(declare-fun tp!1436761 () Bool)

(declare-fun tp!1436762 () Bool)

(assert (=> b!5144702 (= e!3208062 (and tp!1436761 tp!1436762))))

(assert (= (and b!5144437 ((_ is ElementMatch!14475) (regTwo!29463 expr!117))) b!5144699))

(assert (= (and b!5144437 ((_ is Concat!23320) (regTwo!29463 expr!117))) b!5144700))

(assert (= (and b!5144437 ((_ is Star!14475) (regTwo!29463 expr!117))) b!5144701))

(assert (= (and b!5144437 ((_ is Union!14475) (regTwo!29463 expr!117))) b!5144702))

(declare-fun b!5144703 () Bool)

(declare-fun e!3208063 () Bool)

(assert (=> b!5144703 (= e!3208063 tp_is_empty!38099)))

(assert (=> b!5144433 (= tp!1436737 e!3208063)))

(declare-fun b!5144705 () Bool)

(declare-fun tp!1436764 () Bool)

(assert (=> b!5144705 (= e!3208063 tp!1436764)))

(declare-fun b!5144704 () Bool)

(declare-fun tp!1436763 () Bool)

(declare-fun tp!1436765 () Bool)

(assert (=> b!5144704 (= e!3208063 (and tp!1436763 tp!1436765))))

(declare-fun b!5144706 () Bool)

(declare-fun tp!1436766 () Bool)

(declare-fun tp!1436767 () Bool)

(assert (=> b!5144706 (= e!3208063 (and tp!1436766 tp!1436767))))

(assert (= (and b!5144433 ((_ is ElementMatch!14475) (regOne!29462 expr!117))) b!5144703))

(assert (= (and b!5144433 ((_ is Concat!23320) (regOne!29462 expr!117))) b!5144704))

(assert (= (and b!5144433 ((_ is Star!14475) (regOne!29462 expr!117))) b!5144705))

(assert (= (and b!5144433 ((_ is Union!14475) (regOne!29462 expr!117))) b!5144706))

(declare-fun b!5144707 () Bool)

(declare-fun e!3208064 () Bool)

(assert (=> b!5144707 (= e!3208064 tp_is_empty!38099)))

(assert (=> b!5144433 (= tp!1436733 e!3208064)))

(declare-fun b!5144709 () Bool)

(declare-fun tp!1436769 () Bool)

(assert (=> b!5144709 (= e!3208064 tp!1436769)))

(declare-fun b!5144708 () Bool)

(declare-fun tp!1436768 () Bool)

(declare-fun tp!1436770 () Bool)

(assert (=> b!5144708 (= e!3208064 (and tp!1436768 tp!1436770))))

(declare-fun b!5144710 () Bool)

(declare-fun tp!1436771 () Bool)

(declare-fun tp!1436772 () Bool)

(assert (=> b!5144710 (= e!3208064 (and tp!1436771 tp!1436772))))

(assert (= (and b!5144433 ((_ is ElementMatch!14475) (regTwo!29462 expr!117))) b!5144707))

(assert (= (and b!5144433 ((_ is Concat!23320) (regTwo!29462 expr!117))) b!5144708))

(assert (= (and b!5144433 ((_ is Star!14475) (regTwo!29462 expr!117))) b!5144709))

(assert (= (and b!5144433 ((_ is Union!14475) (regTwo!29462 expr!117))) b!5144710))

(declare-fun b!5144715 () Bool)

(declare-fun e!3208067 () Bool)

(declare-fun tp!1436777 () Bool)

(declare-fun tp!1436778 () Bool)

(assert (=> b!5144715 (= e!3208067 (and tp!1436777 tp!1436778))))

(assert (=> b!5144439 (= tp!1436735 e!3208067)))

(assert (= (and b!5144439 ((_ is Cons!59739) (exprs!4359 ctx!100))) b!5144715))

(check-sat (not d!1663209) (not bm!359362) (not b!5144694) (not b!5144708) (not b!5144692) (not bm!359395) (not bm!359371) (not b!5144698) (not bm!359340) (not b!5144706) (not d!1663237) (not b!5144609) (not bm!359342) (not b!5144715) (not b!5144697) tp_is_empty!38099 (not b!5144532) (not d!1663221) (not bm!359369) (not b!5144652) (not b!5144619) (not d!1663229) (not b!5144710) (not bm!359368) (not bm!359373) (not b!5144705) (not bm!359357) (not b!5144709) (not b!5144702) (not bm!359370) (not b!5144696) (not bm!359378) (not b!5144704) (not bm!359364) (not bm!359397) (not d!1663233) (not bm!359367) (not b!5144693) (not bm!359379) (not d!1663239) (not b!5144700) (not bm!359360) (not b!5144701) (not bm!359361) (not bm!359363) (not b!5144620) (not bm!359393))
(check-sat)
