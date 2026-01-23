; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284484 () Bool)

(assert start!284484)

(declare-fun b!2922665 () Bool)

(declare-fun e!1843719 () Bool)

(declare-fun tp_is_empty!15573 () Bool)

(assert (=> b!2922665 (= e!1843719 tp_is_empty!15573)))

(declare-fun b!2922666 () Bool)

(declare-fun tp!937638 () Bool)

(assert (=> b!2922666 (= e!1843719 tp!937638)))

(declare-fun b!2922667 () Bool)

(declare-fun e!1843721 () Bool)

(declare-fun tp!937637 () Bool)

(assert (=> b!2922667 (= e!1843721 (and tp_is_empty!15573 tp!937637))))

(declare-fun b!2922668 () Bool)

(declare-fun e!1843720 () Bool)

(declare-datatypes ((C!18196 0))(
  ( (C!18197 (val!11134 Int)) )
))
(declare-datatypes ((Regex!9005 0))(
  ( (ElementMatch!9005 (c!477029 C!18196)) (Concat!14326 (regOne!18522 Regex!9005) (regTwo!18522 Regex!9005)) (EmptyExpr!9005) (Star!9005 (reg!9334 Regex!9005)) (EmptyLang!9005) (Union!9005 (regOne!18523 Regex!9005) (regTwo!18523 Regex!9005)) )
))
(declare-fun lt!1026044 () Regex!9005)

(declare-fun validRegex!3738 (Regex!9005) Bool)

(assert (=> b!2922668 (= e!1843720 (validRegex!3738 lt!1026044))))

(declare-fun r!17423 () Regex!9005)

(declare-datatypes ((List!34870 0))(
  ( (Nil!34746) (Cons!34746 (h!40166 C!18196) (t!233935 List!34870)) )
))
(declare-fun s!11993 () List!34870)

(declare-fun matchR!3887 (Regex!9005 List!34870) Bool)

(assert (=> b!2922668 (= (matchR!3887 (regTwo!18523 r!17423) s!11993) (matchR!3887 lt!1026044 s!11993))))

(declare-fun simplify!34 (Regex!9005) Regex!9005)

(assert (=> b!2922668 (= lt!1026044 (simplify!34 (regTwo!18523 r!17423)))))

(declare-datatypes ((Unit!48349 0))(
  ( (Unit!48350) )
))
(declare-fun lt!1026045 () Unit!48349)

(declare-fun lemmaSimplifySound!32 (Regex!9005 List!34870) Unit!48349)

(assert (=> b!2922668 (= lt!1026045 (lemmaSimplifySound!32 (regTwo!18523 r!17423) s!11993))))

(declare-fun res!1206464 () Bool)

(declare-fun e!1843723 () Bool)

(assert (=> start!284484 (=> (not res!1206464) (not e!1843723))))

(assert (=> start!284484 (= res!1206464 (validRegex!3738 r!17423))))

(assert (=> start!284484 e!1843723))

(assert (=> start!284484 e!1843719))

(assert (=> start!284484 e!1843721))

(declare-fun b!2922669 () Bool)

(declare-fun tp!937636 () Bool)

(declare-fun tp!937639 () Bool)

(assert (=> b!2922669 (= e!1843719 (and tp!937636 tp!937639))))

(declare-fun b!2922670 () Bool)

(declare-fun e!1843718 () Bool)

(assert (=> b!2922670 (= e!1843718 (matchR!3887 (regTwo!18523 r!17423) s!11993))))

(declare-fun b!2922671 () Bool)

(declare-fun e!1843722 () Bool)

(assert (=> b!2922671 (= e!1843722 e!1843720)))

(declare-fun res!1206465 () Bool)

(assert (=> b!2922671 (=> res!1206465 e!1843720)))

(declare-fun lt!1026042 () Bool)

(assert (=> b!2922671 (= res!1206465 lt!1026042)))

(assert (=> b!2922671 e!1843718))

(declare-fun res!1206463 () Bool)

(assert (=> b!2922671 (=> res!1206463 e!1843718)))

(assert (=> b!2922671 (= res!1206463 lt!1026042)))

(assert (=> b!2922671 (= lt!1026042 (matchR!3887 (regOne!18523 r!17423) s!11993))))

(declare-fun lt!1026043 () Unit!48349)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!254 (Regex!9005 Regex!9005 List!34870) Unit!48349)

(assert (=> b!2922671 (= lt!1026043 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!254 (regOne!18523 r!17423) (regTwo!18523 r!17423) s!11993))))

(declare-fun b!2922672 () Bool)

(assert (=> b!2922672 (= e!1843723 (not e!1843722))))

(declare-fun res!1206466 () Bool)

(assert (=> b!2922672 (=> res!1206466 e!1843722)))

(declare-fun lt!1026047 () Bool)

(get-info :version)

(assert (=> b!2922672 (= res!1206466 (or (not lt!1026047) ((_ is Concat!14326) r!17423) (not ((_ is Union!9005) r!17423))))))

(declare-fun matchRSpec!1142 (Regex!9005 List!34870) Bool)

(assert (=> b!2922672 (= lt!1026047 (matchRSpec!1142 r!17423 s!11993))))

(assert (=> b!2922672 (= lt!1026047 (matchR!3887 r!17423 s!11993))))

(declare-fun lt!1026046 () Unit!48349)

(declare-fun mainMatchTheorem!1142 (Regex!9005 List!34870) Unit!48349)

(assert (=> b!2922672 (= lt!1026046 (mainMatchTheorem!1142 r!17423 s!11993))))

(declare-fun b!2922673 () Bool)

(declare-fun tp!937640 () Bool)

(declare-fun tp!937641 () Bool)

(assert (=> b!2922673 (= e!1843719 (and tp!937640 tp!937641))))

(assert (= (and start!284484 res!1206464) b!2922672))

(assert (= (and b!2922672 (not res!1206466)) b!2922671))

(assert (= (and b!2922671 (not res!1206463)) b!2922670))

(assert (= (and b!2922671 (not res!1206465)) b!2922668))

(assert (= (and start!284484 ((_ is ElementMatch!9005) r!17423)) b!2922665))

(assert (= (and start!284484 ((_ is Concat!14326) r!17423)) b!2922673))

(assert (= (and start!284484 ((_ is Star!9005) r!17423)) b!2922666))

(assert (= (and start!284484 ((_ is Union!9005) r!17423)) b!2922669))

(assert (= (and start!284484 ((_ is Cons!34746) s!11993)) b!2922667))

(declare-fun m!3317687 () Bool)

(assert (=> b!2922671 m!3317687))

(declare-fun m!3317689 () Bool)

(assert (=> b!2922671 m!3317689))

(declare-fun m!3317691 () Bool)

(assert (=> start!284484 m!3317691))

(declare-fun m!3317693 () Bool)

(assert (=> b!2922672 m!3317693))

(declare-fun m!3317695 () Bool)

(assert (=> b!2922672 m!3317695))

(declare-fun m!3317697 () Bool)

(assert (=> b!2922672 m!3317697))

(declare-fun m!3317699 () Bool)

(assert (=> b!2922668 m!3317699))

(declare-fun m!3317701 () Bool)

(assert (=> b!2922668 m!3317701))

(declare-fun m!3317703 () Bool)

(assert (=> b!2922668 m!3317703))

(declare-fun m!3317705 () Bool)

(assert (=> b!2922668 m!3317705))

(declare-fun m!3317707 () Bool)

(assert (=> b!2922668 m!3317707))

(assert (=> b!2922670 m!3317705))

(check-sat (not b!2922668) (not b!2922666) (not start!284484) (not b!2922667) (not b!2922673) (not b!2922670) (not b!2922671) (not b!2922669) tp_is_empty!15573 (not b!2922672))
(check-sat)
(get-model)

(declare-fun d!838676 () Bool)

(assert (=> d!838676 (= (matchR!3887 (regTwo!18523 r!17423) s!11993) (matchR!3887 (simplify!34 (regTwo!18523 r!17423)) s!11993))))

(declare-fun lt!1026050 () Unit!48349)

(declare-fun choose!17238 (Regex!9005 List!34870) Unit!48349)

(assert (=> d!838676 (= lt!1026050 (choose!17238 (regTwo!18523 r!17423) s!11993))))

(assert (=> d!838676 (validRegex!3738 (regTwo!18523 r!17423))))

(assert (=> d!838676 (= (lemmaSimplifySound!32 (regTwo!18523 r!17423) s!11993) lt!1026050)))

(declare-fun bs!524979 () Bool)

(assert (= bs!524979 d!838676))

(assert (=> bs!524979 m!3317699))

(declare-fun m!3317709 () Bool)

(assert (=> bs!524979 m!3317709))

(declare-fun m!3317711 () Bool)

(assert (=> bs!524979 m!3317711))

(assert (=> bs!524979 m!3317705))

(assert (=> bs!524979 m!3317699))

(declare-fun m!3317713 () Bool)

(assert (=> bs!524979 m!3317713))

(assert (=> b!2922668 d!838676))

(declare-fun d!838678 () Bool)

(declare-fun e!1843743 () Bool)

(assert (=> d!838678 e!1843743))

(declare-fun c!477037 () Bool)

(assert (=> d!838678 (= c!477037 ((_ is EmptyExpr!9005) (regTwo!18523 r!17423)))))

(declare-fun lt!1026056 () Bool)

(declare-fun e!1843739 () Bool)

(assert (=> d!838678 (= lt!1026056 e!1843739)))

(declare-fun c!477036 () Bool)

(declare-fun isEmpty!18995 (List!34870) Bool)

(assert (=> d!838678 (= c!477036 (isEmpty!18995 s!11993))))

(assert (=> d!838678 (validRegex!3738 (regTwo!18523 r!17423))))

(assert (=> d!838678 (= (matchR!3887 (regTwo!18523 r!17423) s!11993) lt!1026056)))

(declare-fun b!2922702 () Bool)

(declare-fun res!1206486 () Bool)

(declare-fun e!1843744 () Bool)

(assert (=> b!2922702 (=> res!1206486 e!1843744)))

(assert (=> b!2922702 (= res!1206486 (not ((_ is ElementMatch!9005) (regTwo!18523 r!17423))))))

(declare-fun e!1843742 () Bool)

(assert (=> b!2922702 (= e!1843742 e!1843744)))

(declare-fun b!2922703 () Bool)

(declare-fun res!1206484 () Bool)

(declare-fun e!1843740 () Bool)

(assert (=> b!2922703 (=> (not res!1206484) (not e!1843740))))

(declare-fun tail!4724 (List!34870) List!34870)

(assert (=> b!2922703 (= res!1206484 (isEmpty!18995 (tail!4724 s!11993)))))

(declare-fun b!2922704 () Bool)

(declare-fun e!1843741 () Bool)

(declare-fun head!6498 (List!34870) C!18196)

(assert (=> b!2922704 (= e!1843741 (not (= (head!6498 s!11993) (c!477029 (regTwo!18523 r!17423)))))))

(declare-fun b!2922705 () Bool)

(declare-fun nullable!2825 (Regex!9005) Bool)

(assert (=> b!2922705 (= e!1843739 (nullable!2825 (regTwo!18523 r!17423)))))

(declare-fun b!2922706 () Bool)

(declare-fun res!1206490 () Bool)

(assert (=> b!2922706 (=> res!1206490 e!1843741)))

(assert (=> b!2922706 (= res!1206490 (not (isEmpty!18995 (tail!4724 s!11993))))))

(declare-fun b!2922707 () Bool)

(declare-fun res!1206488 () Bool)

(assert (=> b!2922707 (=> res!1206488 e!1843744)))

(assert (=> b!2922707 (= res!1206488 e!1843740)))

(declare-fun res!1206483 () Bool)

(assert (=> b!2922707 (=> (not res!1206483) (not e!1843740))))

(assert (=> b!2922707 (= res!1206483 lt!1026056)))

(declare-fun b!2922708 () Bool)

(assert (=> b!2922708 (= e!1843742 (not lt!1026056))))

(declare-fun b!2922709 () Bool)

(declare-fun e!1843738 () Bool)

(assert (=> b!2922709 (= e!1843738 e!1843741)))

(declare-fun res!1206487 () Bool)

(assert (=> b!2922709 (=> res!1206487 e!1843741)))

(declare-fun call!191399 () Bool)

(assert (=> b!2922709 (= res!1206487 call!191399)))

(declare-fun b!2922710 () Bool)

(assert (=> b!2922710 (= e!1843740 (= (head!6498 s!11993) (c!477029 (regTwo!18523 r!17423))))))

(declare-fun b!2922711 () Bool)

(declare-fun res!1206485 () Bool)

(assert (=> b!2922711 (=> (not res!1206485) (not e!1843740))))

(assert (=> b!2922711 (= res!1206485 (not call!191399))))

(declare-fun b!2922712 () Bool)

(assert (=> b!2922712 (= e!1843743 (= lt!1026056 call!191399))))

(declare-fun b!2922713 () Bool)

(assert (=> b!2922713 (= e!1843743 e!1843742)))

(declare-fun c!477038 () Bool)

(assert (=> b!2922713 (= c!477038 ((_ is EmptyLang!9005) (regTwo!18523 r!17423)))))

(declare-fun b!2922714 () Bool)

(assert (=> b!2922714 (= e!1843744 e!1843738)))

(declare-fun res!1206489 () Bool)

(assert (=> b!2922714 (=> (not res!1206489) (not e!1843738))))

(assert (=> b!2922714 (= res!1206489 (not lt!1026056))))

(declare-fun b!2922715 () Bool)

(declare-fun derivativeStep!2439 (Regex!9005 C!18196) Regex!9005)

(assert (=> b!2922715 (= e!1843739 (matchR!3887 (derivativeStep!2439 (regTwo!18523 r!17423) (head!6498 s!11993)) (tail!4724 s!11993)))))

(declare-fun bm!191394 () Bool)

(assert (=> bm!191394 (= call!191399 (isEmpty!18995 s!11993))))

(assert (= (and d!838678 c!477036) b!2922705))

(assert (= (and d!838678 (not c!477036)) b!2922715))

(assert (= (and d!838678 c!477037) b!2922712))

(assert (= (and d!838678 (not c!477037)) b!2922713))

(assert (= (and b!2922713 c!477038) b!2922708))

(assert (= (and b!2922713 (not c!477038)) b!2922702))

(assert (= (and b!2922702 (not res!1206486)) b!2922707))

(assert (= (and b!2922707 res!1206483) b!2922711))

(assert (= (and b!2922711 res!1206485) b!2922703))

(assert (= (and b!2922703 res!1206484) b!2922710))

(assert (= (and b!2922707 (not res!1206488)) b!2922714))

(assert (= (and b!2922714 res!1206489) b!2922709))

(assert (= (and b!2922709 (not res!1206487)) b!2922706))

(assert (= (and b!2922706 (not res!1206490)) b!2922704))

(assert (= (or b!2922712 b!2922711 b!2922709) bm!191394))

(declare-fun m!3317721 () Bool)

(assert (=> b!2922705 m!3317721))

(declare-fun m!3317723 () Bool)

(assert (=> b!2922706 m!3317723))

(assert (=> b!2922706 m!3317723))

(declare-fun m!3317725 () Bool)

(assert (=> b!2922706 m!3317725))

(assert (=> b!2922703 m!3317723))

(assert (=> b!2922703 m!3317723))

(assert (=> b!2922703 m!3317725))

(declare-fun m!3317727 () Bool)

(assert (=> b!2922704 m!3317727))

(declare-fun m!3317729 () Bool)

(assert (=> d!838678 m!3317729))

(assert (=> d!838678 m!3317711))

(assert (=> bm!191394 m!3317729))

(assert (=> b!2922710 m!3317727))

(assert (=> b!2922715 m!3317727))

(assert (=> b!2922715 m!3317727))

(declare-fun m!3317731 () Bool)

(assert (=> b!2922715 m!3317731))

(assert (=> b!2922715 m!3317723))

(assert (=> b!2922715 m!3317731))

(assert (=> b!2922715 m!3317723))

(declare-fun m!3317733 () Bool)

(assert (=> b!2922715 m!3317733))

(assert (=> b!2922668 d!838678))

(declare-fun bm!191403 () Bool)

(declare-fun call!191410 () Bool)

(declare-fun c!477049 () Bool)

(assert (=> bm!191403 (= call!191410 (validRegex!3738 (ite c!477049 (regTwo!18523 lt!1026044) (regOne!18522 lt!1026044))))))

(declare-fun b!2922762 () Bool)

(declare-fun e!1843779 () Bool)

(assert (=> b!2922762 (= e!1843779 call!191410)))

(declare-fun b!2922763 () Bool)

(declare-fun e!1843776 () Bool)

(declare-fun e!1843778 () Bool)

(assert (=> b!2922763 (= e!1843776 e!1843778)))

(declare-fun c!477050 () Bool)

(assert (=> b!2922763 (= c!477050 ((_ is Star!9005) lt!1026044))))

(declare-fun b!2922764 () Bool)

(declare-fun e!1843777 () Bool)

(declare-fun call!191408 () Bool)

(assert (=> b!2922764 (= e!1843777 call!191408)))

(declare-fun b!2922765 () Bool)

(declare-fun e!1843775 () Bool)

(assert (=> b!2922765 (= e!1843775 e!1843777)))

(declare-fun res!1206519 () Bool)

(assert (=> b!2922765 (=> (not res!1206519) (not e!1843777))))

(assert (=> b!2922765 (= res!1206519 call!191410)))

(declare-fun bm!191404 () Bool)

(declare-fun call!191409 () Bool)

(assert (=> bm!191404 (= call!191408 call!191409)))

(declare-fun b!2922766 () Bool)

(declare-fun e!1843774 () Bool)

(assert (=> b!2922766 (= e!1843778 e!1843774)))

(declare-fun res!1206521 () Bool)

(assert (=> b!2922766 (= res!1206521 (not (nullable!2825 (reg!9334 lt!1026044))))))

(assert (=> b!2922766 (=> (not res!1206521) (not e!1843774))))

(declare-fun d!838684 () Bool)

(declare-fun res!1206518 () Bool)

(assert (=> d!838684 (=> res!1206518 e!1843776)))

(assert (=> d!838684 (= res!1206518 ((_ is ElementMatch!9005) lt!1026044))))

(assert (=> d!838684 (= (validRegex!3738 lt!1026044) e!1843776)))

(declare-fun b!2922767 () Bool)

(assert (=> b!2922767 (= e!1843774 call!191409)))

(declare-fun bm!191405 () Bool)

(assert (=> bm!191405 (= call!191409 (validRegex!3738 (ite c!477050 (reg!9334 lt!1026044) (ite c!477049 (regOne!18523 lt!1026044) (regTwo!18522 lt!1026044)))))))

(declare-fun b!2922768 () Bool)

(declare-fun res!1206517 () Bool)

(assert (=> b!2922768 (=> res!1206517 e!1843775)))

(assert (=> b!2922768 (= res!1206517 (not ((_ is Concat!14326) lt!1026044)))))

(declare-fun e!1843773 () Bool)

(assert (=> b!2922768 (= e!1843773 e!1843775)))

(declare-fun b!2922769 () Bool)

(declare-fun res!1206520 () Bool)

(assert (=> b!2922769 (=> (not res!1206520) (not e!1843779))))

(assert (=> b!2922769 (= res!1206520 call!191408)))

(assert (=> b!2922769 (= e!1843773 e!1843779)))

(declare-fun b!2922770 () Bool)

(assert (=> b!2922770 (= e!1843778 e!1843773)))

(assert (=> b!2922770 (= c!477049 ((_ is Union!9005) lt!1026044))))

(assert (= (and d!838684 (not res!1206518)) b!2922763))

(assert (= (and b!2922763 c!477050) b!2922766))

(assert (= (and b!2922763 (not c!477050)) b!2922770))

(assert (= (and b!2922766 res!1206521) b!2922767))

(assert (= (and b!2922770 c!477049) b!2922769))

(assert (= (and b!2922770 (not c!477049)) b!2922768))

(assert (= (and b!2922769 res!1206520) b!2922762))

(assert (= (and b!2922768 (not res!1206517)) b!2922765))

(assert (= (and b!2922765 res!1206519) b!2922764))

(assert (= (or b!2922769 b!2922764) bm!191404))

(assert (= (or b!2922762 b!2922765) bm!191403))

(assert (= (or b!2922767 bm!191404) bm!191405))

(declare-fun m!3317735 () Bool)

(assert (=> bm!191403 m!3317735))

(declare-fun m!3317737 () Bool)

(assert (=> b!2922766 m!3317737))

(declare-fun m!3317739 () Bool)

(assert (=> bm!191405 m!3317739))

(assert (=> b!2922668 d!838684))

(declare-fun b!2922924 () Bool)

(declare-fun e!1843871 () Regex!9005)

(declare-fun lt!1026085 () Regex!9005)

(assert (=> b!2922924 (= e!1843871 lt!1026085)))

(declare-fun b!2922925 () Bool)

(declare-fun e!1843873 () Regex!9005)

(declare-fun e!1843882 () Regex!9005)

(assert (=> b!2922925 (= e!1843873 e!1843882)))

(declare-fun lt!1026087 () Regex!9005)

(declare-fun call!191455 () Regex!9005)

(assert (=> b!2922925 (= lt!1026087 call!191455)))

(declare-fun lt!1026088 () Regex!9005)

(declare-fun call!191452 () Regex!9005)

(assert (=> b!2922925 (= lt!1026088 call!191452)))

(declare-fun c!477112 () Bool)

(declare-fun call!191454 () Bool)

(assert (=> b!2922925 (= c!477112 call!191454)))

(declare-fun c!477108 () Bool)

(declare-fun call!191450 () Regex!9005)

(declare-fun bm!191445 () Bool)

(declare-fun c!477110 () Bool)

(assert (=> bm!191445 (= call!191450 (simplify!34 (ite c!477108 (reg!9334 (regTwo!18523 r!17423)) (ite c!477110 (regOne!18523 (regTwo!18523 r!17423)) (regTwo!18522 (regTwo!18523 r!17423))))))))

(declare-fun b!2922926 () Bool)

(declare-fun e!1843878 () Regex!9005)

(declare-fun e!1843869 () Regex!9005)

(assert (=> b!2922926 (= e!1843878 e!1843869)))

(assert (=> b!2922926 (= c!477108 ((_ is Star!9005) (regTwo!18523 r!17423)))))

(declare-fun b!2922927 () Bool)

(declare-fun e!1843875 () Regex!9005)

(assert (=> b!2922927 (= e!1843875 EmptyLang!9005)))

(declare-fun b!2922928 () Bool)

(declare-fun e!1843870 () Regex!9005)

(assert (=> b!2922928 (= e!1843871 e!1843870)))

(declare-fun c!477115 () Bool)

(declare-fun call!191451 () Bool)

(assert (=> b!2922928 (= c!477115 call!191451)))

(declare-fun bm!191446 () Bool)

(declare-fun lt!1026089 () Regex!9005)

(declare-fun isEmptyLang!177 (Regex!9005) Bool)

(assert (=> bm!191446 (= call!191454 (isEmptyLang!177 (ite c!477110 lt!1026087 lt!1026089)))))

(declare-fun b!2922930 () Bool)

(declare-fun e!1843872 () Regex!9005)

(assert (=> b!2922930 (= e!1843872 (Union!9005 lt!1026087 lt!1026088))))

(declare-fun b!2922931 () Bool)

(declare-fun e!1843876 () Bool)

(assert (=> b!2922931 (= e!1843876 call!191451)))

(declare-fun b!2922932 () Bool)

(declare-fun e!1843879 () Regex!9005)

(declare-fun lt!1026090 () Regex!9005)

(assert (=> b!2922932 (= e!1843879 (Star!9005 lt!1026090))))

(declare-fun b!2922933 () Bool)

(declare-fun c!477117 () Bool)

(assert (=> b!2922933 (= c!477117 e!1843876)))

(declare-fun res!1206563 () Bool)

(assert (=> b!2922933 (=> res!1206563 e!1843876)))

(declare-fun call!191453 () Bool)

(assert (=> b!2922933 (= res!1206563 call!191453)))

(assert (=> b!2922933 (= lt!1026090 call!191450)))

(assert (=> b!2922933 (= e!1843869 e!1843879)))

(declare-fun bm!191447 () Bool)

(assert (=> bm!191447 (= call!191453 (isEmptyLang!177 (ite c!477108 lt!1026090 (ite c!477110 lt!1026088 lt!1026085))))))

(declare-fun b!2922934 () Bool)

(assert (=> b!2922934 (= e!1843870 lt!1026089)))

(declare-fun b!2922935 () Bool)

(assert (=> b!2922935 (= e!1843872 lt!1026087)))

(declare-fun b!2922936 () Bool)

(assert (=> b!2922936 (= e!1843878 EmptyExpr!9005)))

(declare-fun b!2922937 () Bool)

(declare-fun c!477113 () Bool)

(assert (=> b!2922937 (= c!477113 ((_ is EmptyExpr!9005) (regTwo!18523 r!17423)))))

(declare-fun e!1843880 () Regex!9005)

(assert (=> b!2922937 (= e!1843880 e!1843878)))

(declare-fun b!2922938 () Bool)

(declare-fun e!1843881 () Regex!9005)

(assert (=> b!2922938 (= e!1843881 EmptyLang!9005)))

(declare-fun bm!191448 () Bool)

(declare-fun call!191456 () Bool)

(assert (=> bm!191448 (= call!191456 call!191453)))

(declare-fun b!2922939 () Bool)

(assert (=> b!2922939 (= c!477110 ((_ is Union!9005) (regTwo!18523 r!17423)))))

(assert (=> b!2922939 (= e!1843869 e!1843873)))

(declare-fun bm!191449 () Bool)

(assert (=> bm!191449 (= call!191452 (simplify!34 (ite c!477110 (regTwo!18523 (regTwo!18523 r!17423)) (regOne!18522 (regTwo!18523 r!17423)))))))

(declare-fun bm!191450 () Bool)

(assert (=> bm!191450 (= call!191455 call!191450)))

(declare-fun b!2922940 () Bool)

(assert (=> b!2922940 (= e!1843875 e!1843880)))

(declare-fun c!477114 () Bool)

(assert (=> b!2922940 (= c!477114 ((_ is ElementMatch!9005) (regTwo!18523 r!17423)))))

(declare-fun bm!191451 () Bool)

(declare-fun isEmptyExpr!262 (Regex!9005) Bool)

(assert (=> bm!191451 (= call!191451 (isEmptyExpr!262 (ite c!477108 lt!1026090 lt!1026085)))))

(declare-fun b!2922941 () Bool)

(declare-fun c!477111 () Bool)

(assert (=> b!2922941 (= c!477111 (isEmptyExpr!262 lt!1026089))))

(assert (=> b!2922941 (= e!1843881 e!1843871)))

(declare-fun b!2922942 () Bool)

(assert (=> b!2922942 (= e!1843879 EmptyExpr!9005)))

(declare-fun b!2922943 () Bool)

(assert (=> b!2922943 (= e!1843873 e!1843881)))

(assert (=> b!2922943 (= lt!1026089 call!191452)))

(assert (=> b!2922943 (= lt!1026085 call!191455)))

(declare-fun res!1206564 () Bool)

(assert (=> b!2922943 (= res!1206564 call!191454)))

(declare-fun e!1843877 () Bool)

(assert (=> b!2922943 (=> res!1206564 e!1843877)))

(declare-fun c!477107 () Bool)

(assert (=> b!2922943 (= c!477107 e!1843877)))

(declare-fun b!2922944 () Bool)

(declare-fun e!1843874 () Bool)

(declare-fun lt!1026086 () Regex!9005)

(assert (=> b!2922944 (= e!1843874 (= (nullable!2825 lt!1026086) (nullable!2825 (regTwo!18523 r!17423))))))

(declare-fun d!838686 () Bool)

(assert (=> d!838686 e!1843874))

(declare-fun res!1206565 () Bool)

(assert (=> d!838686 (=> (not res!1206565) (not e!1843874))))

(assert (=> d!838686 (= res!1206565 (validRegex!3738 lt!1026086))))

(assert (=> d!838686 (= lt!1026086 e!1843875)))

(declare-fun c!477116 () Bool)

(assert (=> d!838686 (= c!477116 ((_ is EmptyLang!9005) (regTwo!18523 r!17423)))))

(assert (=> d!838686 (validRegex!3738 (regTwo!18523 r!17423))))

(assert (=> d!838686 (= (simplify!34 (regTwo!18523 r!17423)) lt!1026086)))

(declare-fun b!2922929 () Bool)

(assert (=> b!2922929 (= e!1843882 lt!1026088)))

(declare-fun b!2922945 () Bool)

(assert (=> b!2922945 (= e!1843877 call!191456)))

(declare-fun b!2922946 () Bool)

(assert (=> b!2922946 (= e!1843880 (regTwo!18523 r!17423))))

(declare-fun b!2922947 () Bool)

(assert (=> b!2922947 (= e!1843870 (Concat!14326 lt!1026089 lt!1026085))))

(declare-fun b!2922948 () Bool)

(declare-fun c!477109 () Bool)

(assert (=> b!2922948 (= c!477109 call!191456)))

(assert (=> b!2922948 (= e!1843882 e!1843872)))

(assert (= (and d!838686 c!477116) b!2922927))

(assert (= (and d!838686 (not c!477116)) b!2922940))

(assert (= (and b!2922940 c!477114) b!2922946))

(assert (= (and b!2922940 (not c!477114)) b!2922937))

(assert (= (and b!2922937 c!477113) b!2922936))

(assert (= (and b!2922937 (not c!477113)) b!2922926))

(assert (= (and b!2922926 c!477108) b!2922933))

(assert (= (and b!2922926 (not c!477108)) b!2922939))

(assert (= (and b!2922933 (not res!1206563)) b!2922931))

(assert (= (and b!2922933 c!477117) b!2922942))

(assert (= (and b!2922933 (not c!477117)) b!2922932))

(assert (= (and b!2922939 c!477110) b!2922925))

(assert (= (and b!2922939 (not c!477110)) b!2922943))

(assert (= (and b!2922925 c!477112) b!2922929))

(assert (= (and b!2922925 (not c!477112)) b!2922948))

(assert (= (and b!2922948 c!477109) b!2922935))

(assert (= (and b!2922948 (not c!477109)) b!2922930))

(assert (= (and b!2922943 (not res!1206564)) b!2922945))

(assert (= (and b!2922943 c!477107) b!2922938))

(assert (= (and b!2922943 (not c!477107)) b!2922941))

(assert (= (and b!2922941 c!477111) b!2922924))

(assert (= (and b!2922941 (not c!477111)) b!2922928))

(assert (= (and b!2922928 c!477115) b!2922934))

(assert (= (and b!2922928 (not c!477115)) b!2922947))

(assert (= (or b!2922925 b!2922943) bm!191450))

(assert (= (or b!2922925 b!2922943) bm!191449))

(assert (= (or b!2922925 b!2922943) bm!191446))

(assert (= (or b!2922948 b!2922945) bm!191448))

(assert (= (or b!2922931 b!2922928) bm!191451))

(assert (= (or b!2922933 bm!191450) bm!191445))

(assert (= (or b!2922933 bm!191448) bm!191447))

(assert (= (and d!838686 res!1206565) b!2922944))

(declare-fun m!3317767 () Bool)

(assert (=> b!2922941 m!3317767))

(declare-fun m!3317769 () Bool)

(assert (=> bm!191449 m!3317769))

(declare-fun m!3317771 () Bool)

(assert (=> b!2922944 m!3317771))

(assert (=> b!2922944 m!3317721))

(declare-fun m!3317773 () Bool)

(assert (=> d!838686 m!3317773))

(assert (=> d!838686 m!3317711))

(declare-fun m!3317775 () Bool)

(assert (=> bm!191447 m!3317775))

(declare-fun m!3317777 () Bool)

(assert (=> bm!191451 m!3317777))

(declare-fun m!3317779 () Bool)

(assert (=> bm!191446 m!3317779))

(declare-fun m!3317781 () Bool)

(assert (=> bm!191445 m!3317781))

(assert (=> b!2922668 d!838686))

(declare-fun d!838694 () Bool)

(declare-fun e!1843888 () Bool)

(assert (=> d!838694 e!1843888))

(declare-fun c!477119 () Bool)

(assert (=> d!838694 (= c!477119 ((_ is EmptyExpr!9005) lt!1026044))))

(declare-fun lt!1026091 () Bool)

(declare-fun e!1843884 () Bool)

(assert (=> d!838694 (= lt!1026091 e!1843884)))

(declare-fun c!477118 () Bool)

(assert (=> d!838694 (= c!477118 (isEmpty!18995 s!11993))))

(assert (=> d!838694 (validRegex!3738 lt!1026044)))

(assert (=> d!838694 (= (matchR!3887 lt!1026044 s!11993) lt!1026091)))

(declare-fun b!2922949 () Bool)

(declare-fun res!1206569 () Bool)

(declare-fun e!1843889 () Bool)

(assert (=> b!2922949 (=> res!1206569 e!1843889)))

(assert (=> b!2922949 (= res!1206569 (not ((_ is ElementMatch!9005) lt!1026044)))))

(declare-fun e!1843887 () Bool)

(assert (=> b!2922949 (= e!1843887 e!1843889)))

(declare-fun b!2922950 () Bool)

(declare-fun res!1206567 () Bool)

(declare-fun e!1843885 () Bool)

(assert (=> b!2922950 (=> (not res!1206567) (not e!1843885))))

(assert (=> b!2922950 (= res!1206567 (isEmpty!18995 (tail!4724 s!11993)))))

(declare-fun b!2922951 () Bool)

(declare-fun e!1843886 () Bool)

(assert (=> b!2922951 (= e!1843886 (not (= (head!6498 s!11993) (c!477029 lt!1026044))))))

(declare-fun b!2922952 () Bool)

(assert (=> b!2922952 (= e!1843884 (nullable!2825 lt!1026044))))

(declare-fun b!2922953 () Bool)

(declare-fun res!1206573 () Bool)

(assert (=> b!2922953 (=> res!1206573 e!1843886)))

(assert (=> b!2922953 (= res!1206573 (not (isEmpty!18995 (tail!4724 s!11993))))))

(declare-fun b!2922954 () Bool)

(declare-fun res!1206571 () Bool)

(assert (=> b!2922954 (=> res!1206571 e!1843889)))

(assert (=> b!2922954 (= res!1206571 e!1843885)))

(declare-fun res!1206566 () Bool)

(assert (=> b!2922954 (=> (not res!1206566) (not e!1843885))))

(assert (=> b!2922954 (= res!1206566 lt!1026091)))

(declare-fun b!2922955 () Bool)

(assert (=> b!2922955 (= e!1843887 (not lt!1026091))))

(declare-fun b!2922956 () Bool)

(declare-fun e!1843883 () Bool)

(assert (=> b!2922956 (= e!1843883 e!1843886)))

(declare-fun res!1206570 () Bool)

(assert (=> b!2922956 (=> res!1206570 e!1843886)))

(declare-fun call!191457 () Bool)

(assert (=> b!2922956 (= res!1206570 call!191457)))

(declare-fun b!2922957 () Bool)

(assert (=> b!2922957 (= e!1843885 (= (head!6498 s!11993) (c!477029 lt!1026044)))))

(declare-fun b!2922958 () Bool)

(declare-fun res!1206568 () Bool)

(assert (=> b!2922958 (=> (not res!1206568) (not e!1843885))))

(assert (=> b!2922958 (= res!1206568 (not call!191457))))

(declare-fun b!2922959 () Bool)

(assert (=> b!2922959 (= e!1843888 (= lt!1026091 call!191457))))

(declare-fun b!2922960 () Bool)

(assert (=> b!2922960 (= e!1843888 e!1843887)))

(declare-fun c!477120 () Bool)

(assert (=> b!2922960 (= c!477120 ((_ is EmptyLang!9005) lt!1026044))))

(declare-fun b!2922961 () Bool)

(assert (=> b!2922961 (= e!1843889 e!1843883)))

(declare-fun res!1206572 () Bool)

(assert (=> b!2922961 (=> (not res!1206572) (not e!1843883))))

(assert (=> b!2922961 (= res!1206572 (not lt!1026091))))

(declare-fun b!2922962 () Bool)

(assert (=> b!2922962 (= e!1843884 (matchR!3887 (derivativeStep!2439 lt!1026044 (head!6498 s!11993)) (tail!4724 s!11993)))))

(declare-fun bm!191452 () Bool)

(assert (=> bm!191452 (= call!191457 (isEmpty!18995 s!11993))))

(assert (= (and d!838694 c!477118) b!2922952))

(assert (= (and d!838694 (not c!477118)) b!2922962))

(assert (= (and d!838694 c!477119) b!2922959))

(assert (= (and d!838694 (not c!477119)) b!2922960))

(assert (= (and b!2922960 c!477120) b!2922955))

(assert (= (and b!2922960 (not c!477120)) b!2922949))

(assert (= (and b!2922949 (not res!1206569)) b!2922954))

(assert (= (and b!2922954 res!1206566) b!2922958))

(assert (= (and b!2922958 res!1206568) b!2922950))

(assert (= (and b!2922950 res!1206567) b!2922957))

(assert (= (and b!2922954 (not res!1206571)) b!2922961))

(assert (= (and b!2922961 res!1206572) b!2922956))

(assert (= (and b!2922956 (not res!1206570)) b!2922953))

(assert (= (and b!2922953 (not res!1206573)) b!2922951))

(assert (= (or b!2922959 b!2922958 b!2922956) bm!191452))

(declare-fun m!3317783 () Bool)

(assert (=> b!2922952 m!3317783))

(assert (=> b!2922953 m!3317723))

(assert (=> b!2922953 m!3317723))

(assert (=> b!2922953 m!3317725))

(assert (=> b!2922950 m!3317723))

(assert (=> b!2922950 m!3317723))

(assert (=> b!2922950 m!3317725))

(assert (=> b!2922951 m!3317727))

(assert (=> d!838694 m!3317729))

(assert (=> d!838694 m!3317703))

(assert (=> bm!191452 m!3317729))

(assert (=> b!2922957 m!3317727))

(assert (=> b!2922962 m!3317727))

(assert (=> b!2922962 m!3317727))

(declare-fun m!3317785 () Bool)

(assert (=> b!2922962 m!3317785))

(assert (=> b!2922962 m!3317723))

(assert (=> b!2922962 m!3317785))

(assert (=> b!2922962 m!3317723))

(declare-fun m!3317787 () Bool)

(assert (=> b!2922962 m!3317787))

(assert (=> b!2922668 d!838694))

(declare-fun bm!191453 () Bool)

(declare-fun call!191460 () Bool)

(declare-fun c!477121 () Bool)

(assert (=> bm!191453 (= call!191460 (validRegex!3738 (ite c!477121 (regTwo!18523 r!17423) (regOne!18522 r!17423))))))

(declare-fun b!2922965 () Bool)

(declare-fun e!1843898 () Bool)

(assert (=> b!2922965 (= e!1843898 call!191460)))

(declare-fun b!2922966 () Bool)

(declare-fun e!1843895 () Bool)

(declare-fun e!1843897 () Bool)

(assert (=> b!2922966 (= e!1843895 e!1843897)))

(declare-fun c!477122 () Bool)

(assert (=> b!2922966 (= c!477122 ((_ is Star!9005) r!17423))))

(declare-fun b!2922967 () Bool)

(declare-fun e!1843896 () Bool)

(declare-fun call!191458 () Bool)

(assert (=> b!2922967 (= e!1843896 call!191458)))

(declare-fun b!2922968 () Bool)

(declare-fun e!1843894 () Bool)

(assert (=> b!2922968 (= e!1843894 e!1843896)))

(declare-fun res!1206578 () Bool)

(assert (=> b!2922968 (=> (not res!1206578) (not e!1843896))))

(assert (=> b!2922968 (= res!1206578 call!191460)))

(declare-fun bm!191454 () Bool)

(declare-fun call!191459 () Bool)

(assert (=> bm!191454 (= call!191458 call!191459)))

(declare-fun b!2922969 () Bool)

(declare-fun e!1843893 () Bool)

(assert (=> b!2922969 (= e!1843897 e!1843893)))

(declare-fun res!1206580 () Bool)

(assert (=> b!2922969 (= res!1206580 (not (nullable!2825 (reg!9334 r!17423))))))

(assert (=> b!2922969 (=> (not res!1206580) (not e!1843893))))

(declare-fun d!838696 () Bool)

(declare-fun res!1206577 () Bool)

(assert (=> d!838696 (=> res!1206577 e!1843895)))

(assert (=> d!838696 (= res!1206577 ((_ is ElementMatch!9005) r!17423))))

(assert (=> d!838696 (= (validRegex!3738 r!17423) e!1843895)))

(declare-fun b!2922970 () Bool)

(assert (=> b!2922970 (= e!1843893 call!191459)))

(declare-fun bm!191455 () Bool)

(assert (=> bm!191455 (= call!191459 (validRegex!3738 (ite c!477122 (reg!9334 r!17423) (ite c!477121 (regOne!18523 r!17423) (regTwo!18522 r!17423)))))))

(declare-fun b!2922971 () Bool)

(declare-fun res!1206576 () Bool)

(assert (=> b!2922971 (=> res!1206576 e!1843894)))

(assert (=> b!2922971 (= res!1206576 (not ((_ is Concat!14326) r!17423)))))

(declare-fun e!1843892 () Bool)

(assert (=> b!2922971 (= e!1843892 e!1843894)))

(declare-fun b!2922972 () Bool)

(declare-fun res!1206579 () Bool)

(assert (=> b!2922972 (=> (not res!1206579) (not e!1843898))))

(assert (=> b!2922972 (= res!1206579 call!191458)))

(assert (=> b!2922972 (= e!1843892 e!1843898)))

(declare-fun b!2922973 () Bool)

(assert (=> b!2922973 (= e!1843897 e!1843892)))

(assert (=> b!2922973 (= c!477121 ((_ is Union!9005) r!17423))))

(assert (= (and d!838696 (not res!1206577)) b!2922966))

(assert (= (and b!2922966 c!477122) b!2922969))

(assert (= (and b!2922966 (not c!477122)) b!2922973))

(assert (= (and b!2922969 res!1206580) b!2922970))

(assert (= (and b!2922973 c!477121) b!2922972))

(assert (= (and b!2922973 (not c!477121)) b!2922971))

(assert (= (and b!2922972 res!1206579) b!2922965))

(assert (= (and b!2922971 (not res!1206576)) b!2922968))

(assert (= (and b!2922968 res!1206578) b!2922967))

(assert (= (or b!2922972 b!2922967) bm!191454))

(assert (= (or b!2922965 b!2922968) bm!191453))

(assert (= (or b!2922970 bm!191454) bm!191455))

(declare-fun m!3317789 () Bool)

(assert (=> bm!191453 m!3317789))

(declare-fun m!3317791 () Bool)

(assert (=> b!2922969 m!3317791))

(declare-fun m!3317793 () Bool)

(assert (=> bm!191455 m!3317793))

(assert (=> start!284484 d!838696))

(assert (=> b!2922670 d!838678))

(declare-fun d!838698 () Bool)

(declare-fun e!1843904 () Bool)

(assert (=> d!838698 e!1843904))

(declare-fun c!477124 () Bool)

(assert (=> d!838698 (= c!477124 ((_ is EmptyExpr!9005) (regOne!18523 r!17423)))))

(declare-fun lt!1026092 () Bool)

(declare-fun e!1843900 () Bool)

(assert (=> d!838698 (= lt!1026092 e!1843900)))

(declare-fun c!477123 () Bool)

(assert (=> d!838698 (= c!477123 (isEmpty!18995 s!11993))))

(assert (=> d!838698 (validRegex!3738 (regOne!18523 r!17423))))

(assert (=> d!838698 (= (matchR!3887 (regOne!18523 r!17423) s!11993) lt!1026092)))

(declare-fun b!2922974 () Bool)

(declare-fun res!1206584 () Bool)

(declare-fun e!1843905 () Bool)

(assert (=> b!2922974 (=> res!1206584 e!1843905)))

(assert (=> b!2922974 (= res!1206584 (not ((_ is ElementMatch!9005) (regOne!18523 r!17423))))))

(declare-fun e!1843903 () Bool)

(assert (=> b!2922974 (= e!1843903 e!1843905)))

(declare-fun b!2922975 () Bool)

(declare-fun res!1206582 () Bool)

(declare-fun e!1843901 () Bool)

(assert (=> b!2922975 (=> (not res!1206582) (not e!1843901))))

(assert (=> b!2922975 (= res!1206582 (isEmpty!18995 (tail!4724 s!11993)))))

(declare-fun b!2922976 () Bool)

(declare-fun e!1843902 () Bool)

(assert (=> b!2922976 (= e!1843902 (not (= (head!6498 s!11993) (c!477029 (regOne!18523 r!17423)))))))

(declare-fun b!2922977 () Bool)

(assert (=> b!2922977 (= e!1843900 (nullable!2825 (regOne!18523 r!17423)))))

(declare-fun b!2922978 () Bool)

(declare-fun res!1206588 () Bool)

(assert (=> b!2922978 (=> res!1206588 e!1843902)))

(assert (=> b!2922978 (= res!1206588 (not (isEmpty!18995 (tail!4724 s!11993))))))

(declare-fun b!2922979 () Bool)

(declare-fun res!1206586 () Bool)

(assert (=> b!2922979 (=> res!1206586 e!1843905)))

(assert (=> b!2922979 (= res!1206586 e!1843901)))

(declare-fun res!1206581 () Bool)

(assert (=> b!2922979 (=> (not res!1206581) (not e!1843901))))

(assert (=> b!2922979 (= res!1206581 lt!1026092)))

(declare-fun b!2922980 () Bool)

(assert (=> b!2922980 (= e!1843903 (not lt!1026092))))

(declare-fun b!2922981 () Bool)

(declare-fun e!1843899 () Bool)

(assert (=> b!2922981 (= e!1843899 e!1843902)))

(declare-fun res!1206585 () Bool)

(assert (=> b!2922981 (=> res!1206585 e!1843902)))

(declare-fun call!191461 () Bool)

(assert (=> b!2922981 (= res!1206585 call!191461)))

(declare-fun b!2922982 () Bool)

(assert (=> b!2922982 (= e!1843901 (= (head!6498 s!11993) (c!477029 (regOne!18523 r!17423))))))

(declare-fun b!2922983 () Bool)

(declare-fun res!1206583 () Bool)

(assert (=> b!2922983 (=> (not res!1206583) (not e!1843901))))

(assert (=> b!2922983 (= res!1206583 (not call!191461))))

(declare-fun b!2922984 () Bool)

(assert (=> b!2922984 (= e!1843904 (= lt!1026092 call!191461))))

(declare-fun b!2922985 () Bool)

(assert (=> b!2922985 (= e!1843904 e!1843903)))

(declare-fun c!477125 () Bool)

(assert (=> b!2922985 (= c!477125 ((_ is EmptyLang!9005) (regOne!18523 r!17423)))))

(declare-fun b!2922986 () Bool)

(assert (=> b!2922986 (= e!1843905 e!1843899)))

(declare-fun res!1206587 () Bool)

(assert (=> b!2922986 (=> (not res!1206587) (not e!1843899))))

(assert (=> b!2922986 (= res!1206587 (not lt!1026092))))

(declare-fun b!2922987 () Bool)

(assert (=> b!2922987 (= e!1843900 (matchR!3887 (derivativeStep!2439 (regOne!18523 r!17423) (head!6498 s!11993)) (tail!4724 s!11993)))))

(declare-fun bm!191456 () Bool)

(assert (=> bm!191456 (= call!191461 (isEmpty!18995 s!11993))))

(assert (= (and d!838698 c!477123) b!2922977))

(assert (= (and d!838698 (not c!477123)) b!2922987))

(assert (= (and d!838698 c!477124) b!2922984))

(assert (= (and d!838698 (not c!477124)) b!2922985))

(assert (= (and b!2922985 c!477125) b!2922980))

(assert (= (and b!2922985 (not c!477125)) b!2922974))

(assert (= (and b!2922974 (not res!1206584)) b!2922979))

(assert (= (and b!2922979 res!1206581) b!2922983))

(assert (= (and b!2922983 res!1206583) b!2922975))

(assert (= (and b!2922975 res!1206582) b!2922982))

(assert (= (and b!2922979 (not res!1206586)) b!2922986))

(assert (= (and b!2922986 res!1206587) b!2922981))

(assert (= (and b!2922981 (not res!1206585)) b!2922978))

(assert (= (and b!2922978 (not res!1206588)) b!2922976))

(assert (= (or b!2922984 b!2922983 b!2922981) bm!191456))

(declare-fun m!3317795 () Bool)

(assert (=> b!2922977 m!3317795))

(assert (=> b!2922978 m!3317723))

(assert (=> b!2922978 m!3317723))

(assert (=> b!2922978 m!3317725))

(assert (=> b!2922975 m!3317723))

(assert (=> b!2922975 m!3317723))

(assert (=> b!2922975 m!3317725))

(assert (=> b!2922976 m!3317727))

(assert (=> d!838698 m!3317729))

(declare-fun m!3317797 () Bool)

(assert (=> d!838698 m!3317797))

(assert (=> bm!191456 m!3317729))

(assert (=> b!2922982 m!3317727))

(assert (=> b!2922987 m!3317727))

(assert (=> b!2922987 m!3317727))

(declare-fun m!3317799 () Bool)

(assert (=> b!2922987 m!3317799))

(assert (=> b!2922987 m!3317723))

(assert (=> b!2922987 m!3317799))

(assert (=> b!2922987 m!3317723))

(declare-fun m!3317801 () Bool)

(assert (=> b!2922987 m!3317801))

(assert (=> b!2922671 d!838698))

(declare-fun d!838700 () Bool)

(declare-fun e!1843911 () Bool)

(assert (=> d!838700 e!1843911))

(declare-fun res!1206594 () Bool)

(assert (=> d!838700 (=> res!1206594 e!1843911)))

(assert (=> d!838700 (= res!1206594 (matchR!3887 (regOne!18523 r!17423) s!11993))))

(declare-fun lt!1026095 () Unit!48349)

(declare-fun choose!17239 (Regex!9005 Regex!9005 List!34870) Unit!48349)

(assert (=> d!838700 (= lt!1026095 (choose!17239 (regOne!18523 r!17423) (regTwo!18523 r!17423) s!11993))))

(declare-fun e!1843910 () Bool)

(assert (=> d!838700 e!1843910))

(declare-fun res!1206593 () Bool)

(assert (=> d!838700 (=> (not res!1206593) (not e!1843910))))

(assert (=> d!838700 (= res!1206593 (validRegex!3738 (regOne!18523 r!17423)))))

(assert (=> d!838700 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!254 (regOne!18523 r!17423) (regTwo!18523 r!17423) s!11993) lt!1026095)))

(declare-fun b!2922992 () Bool)

(assert (=> b!2922992 (= e!1843910 (validRegex!3738 (regTwo!18523 r!17423)))))

(declare-fun b!2922993 () Bool)

(assert (=> b!2922993 (= e!1843911 (matchR!3887 (regTwo!18523 r!17423) s!11993))))

(assert (= (and d!838700 res!1206593) b!2922992))

(assert (= (and d!838700 (not res!1206594)) b!2922993))

(assert (=> d!838700 m!3317687))

(declare-fun m!3317803 () Bool)

(assert (=> d!838700 m!3317803))

(assert (=> d!838700 m!3317797))

(assert (=> b!2922992 m!3317711))

(assert (=> b!2922993 m!3317705))

(assert (=> b!2922671 d!838700))

(declare-fun b!2923147 () Bool)

(assert (=> b!2923147 true))

(assert (=> b!2923147 true))

(declare-fun bs!524982 () Bool)

(declare-fun b!2923150 () Bool)

(assert (= bs!524982 (and b!2923150 b!2923147)))

(declare-fun lambda!108690 () Int)

(declare-fun lambda!108689 () Int)

(assert (=> bs!524982 (not (= lambda!108690 lambda!108689))))

(assert (=> b!2923150 true))

(assert (=> b!2923150 true))

(declare-fun bm!191479 () Bool)

(declare-fun call!191485 () Bool)

(assert (=> bm!191479 (= call!191485 (isEmpty!18995 s!11993))))

(declare-fun b!2923141 () Bool)

(declare-fun c!477165 () Bool)

(assert (=> b!2923141 (= c!477165 ((_ is ElementMatch!9005) r!17423))))

(declare-fun e!1843998 () Bool)

(declare-fun e!1844000 () Bool)

(assert (=> b!2923141 (= e!1843998 e!1844000)))

(declare-fun b!2923142 () Bool)

(declare-fun c!477168 () Bool)

(assert (=> b!2923142 (= c!477168 ((_ is Union!9005) r!17423))))

(declare-fun e!1843999 () Bool)

(assert (=> b!2923142 (= e!1844000 e!1843999)))

(declare-fun d!838702 () Bool)

(declare-fun c!477166 () Bool)

(assert (=> d!838702 (= c!477166 ((_ is EmptyExpr!9005) r!17423))))

(declare-fun e!1843996 () Bool)

(assert (=> d!838702 (= (matchRSpec!1142 r!17423 s!11993) e!1843996)))

(declare-fun b!2923143 () Bool)

(assert (=> b!2923143 (= e!1843996 e!1843998)))

(declare-fun res!1206660 () Bool)

(assert (=> b!2923143 (= res!1206660 (not ((_ is EmptyLang!9005) r!17423)))))

(assert (=> b!2923143 (=> (not res!1206660) (not e!1843998))))

(declare-fun b!2923144 () Bool)

(declare-fun e!1844001 () Bool)

(assert (=> b!2923144 (= e!1844001 (matchRSpec!1142 (regTwo!18523 r!17423) s!11993))))

(declare-fun b!2923145 () Bool)

(assert (=> b!2923145 (= e!1843996 call!191485)))

(declare-fun b!2923146 () Bool)

(assert (=> b!2923146 (= e!1844000 (= s!11993 (Cons!34746 (c!477029 r!17423) Nil!34746)))))

(declare-fun e!1843997 () Bool)

(declare-fun call!191484 () Bool)

(assert (=> b!2923147 (= e!1843997 call!191484)))

(declare-fun bm!191480 () Bool)

(declare-fun c!477167 () Bool)

(declare-fun Exists!1374 (Int) Bool)

(assert (=> bm!191480 (= call!191484 (Exists!1374 (ite c!477167 lambda!108689 lambda!108690)))))

(declare-fun b!2923148 () Bool)

(declare-fun e!1844002 () Bool)

(assert (=> b!2923148 (= e!1843999 e!1844002)))

(assert (=> b!2923148 (= c!477167 ((_ is Star!9005) r!17423))))

(declare-fun b!2923149 () Bool)

(assert (=> b!2923149 (= e!1843999 e!1844001)))

(declare-fun res!1206661 () Bool)

(assert (=> b!2923149 (= res!1206661 (matchRSpec!1142 (regOne!18523 r!17423) s!11993))))

(assert (=> b!2923149 (=> res!1206661 e!1844001)))

(assert (=> b!2923150 (= e!1844002 call!191484)))

(declare-fun b!2923151 () Bool)

(declare-fun res!1206662 () Bool)

(assert (=> b!2923151 (=> res!1206662 e!1843997)))

(assert (=> b!2923151 (= res!1206662 call!191485)))

(assert (=> b!2923151 (= e!1844002 e!1843997)))

(assert (= (and d!838702 c!477166) b!2923145))

(assert (= (and d!838702 (not c!477166)) b!2923143))

(assert (= (and b!2923143 res!1206660) b!2923141))

(assert (= (and b!2923141 c!477165) b!2923146))

(assert (= (and b!2923141 (not c!477165)) b!2923142))

(assert (= (and b!2923142 c!477168) b!2923149))

(assert (= (and b!2923142 (not c!477168)) b!2923148))

(assert (= (and b!2923149 (not res!1206661)) b!2923144))

(assert (= (and b!2923148 c!477167) b!2923151))

(assert (= (and b!2923148 (not c!477167)) b!2923150))

(assert (= (and b!2923151 (not res!1206662)) b!2923147))

(assert (= (or b!2923147 b!2923150) bm!191480))

(assert (= (or b!2923145 b!2923151) bm!191479))

(assert (=> bm!191479 m!3317729))

(declare-fun m!3317849 () Bool)

(assert (=> b!2923144 m!3317849))

(declare-fun m!3317851 () Bool)

(assert (=> bm!191480 m!3317851))

(declare-fun m!3317853 () Bool)

(assert (=> b!2923149 m!3317853))

(assert (=> b!2922672 d!838702))

(declare-fun d!838716 () Bool)

(declare-fun e!1844008 () Bool)

(assert (=> d!838716 e!1844008))

(declare-fun c!477170 () Bool)

(assert (=> d!838716 (= c!477170 ((_ is EmptyExpr!9005) r!17423))))

(declare-fun lt!1026110 () Bool)

(declare-fun e!1844004 () Bool)

(assert (=> d!838716 (= lt!1026110 e!1844004)))

(declare-fun c!477169 () Bool)

(assert (=> d!838716 (= c!477169 (isEmpty!18995 s!11993))))

(assert (=> d!838716 (validRegex!3738 r!17423)))

(assert (=> d!838716 (= (matchR!3887 r!17423 s!11993) lt!1026110)))

(declare-fun b!2923156 () Bool)

(declare-fun res!1206666 () Bool)

(declare-fun e!1844009 () Bool)

(assert (=> b!2923156 (=> res!1206666 e!1844009)))

(assert (=> b!2923156 (= res!1206666 (not ((_ is ElementMatch!9005) r!17423)))))

(declare-fun e!1844007 () Bool)

(assert (=> b!2923156 (= e!1844007 e!1844009)))

(declare-fun b!2923157 () Bool)

(declare-fun res!1206664 () Bool)

(declare-fun e!1844005 () Bool)

(assert (=> b!2923157 (=> (not res!1206664) (not e!1844005))))

(assert (=> b!2923157 (= res!1206664 (isEmpty!18995 (tail!4724 s!11993)))))

(declare-fun b!2923158 () Bool)

(declare-fun e!1844006 () Bool)

(assert (=> b!2923158 (= e!1844006 (not (= (head!6498 s!11993) (c!477029 r!17423))))))

(declare-fun b!2923159 () Bool)

(assert (=> b!2923159 (= e!1844004 (nullable!2825 r!17423))))

(declare-fun b!2923160 () Bool)

(declare-fun res!1206670 () Bool)

(assert (=> b!2923160 (=> res!1206670 e!1844006)))

(assert (=> b!2923160 (= res!1206670 (not (isEmpty!18995 (tail!4724 s!11993))))))

(declare-fun b!2923161 () Bool)

(declare-fun res!1206668 () Bool)

(assert (=> b!2923161 (=> res!1206668 e!1844009)))

(assert (=> b!2923161 (= res!1206668 e!1844005)))

(declare-fun res!1206663 () Bool)

(assert (=> b!2923161 (=> (not res!1206663) (not e!1844005))))

(assert (=> b!2923161 (= res!1206663 lt!1026110)))

(declare-fun b!2923162 () Bool)

(assert (=> b!2923162 (= e!1844007 (not lt!1026110))))

(declare-fun b!2923163 () Bool)

(declare-fun e!1844003 () Bool)

(assert (=> b!2923163 (= e!1844003 e!1844006)))

(declare-fun res!1206667 () Bool)

(assert (=> b!2923163 (=> res!1206667 e!1844006)))

(declare-fun call!191486 () Bool)

(assert (=> b!2923163 (= res!1206667 call!191486)))

(declare-fun b!2923164 () Bool)

(assert (=> b!2923164 (= e!1844005 (= (head!6498 s!11993) (c!477029 r!17423)))))

(declare-fun b!2923165 () Bool)

(declare-fun res!1206665 () Bool)

(assert (=> b!2923165 (=> (not res!1206665) (not e!1844005))))

(assert (=> b!2923165 (= res!1206665 (not call!191486))))

(declare-fun b!2923166 () Bool)

(assert (=> b!2923166 (= e!1844008 (= lt!1026110 call!191486))))

(declare-fun b!2923167 () Bool)

(assert (=> b!2923167 (= e!1844008 e!1844007)))

(declare-fun c!477171 () Bool)

(assert (=> b!2923167 (= c!477171 ((_ is EmptyLang!9005) r!17423))))

(declare-fun b!2923168 () Bool)

(assert (=> b!2923168 (= e!1844009 e!1844003)))

(declare-fun res!1206669 () Bool)

(assert (=> b!2923168 (=> (not res!1206669) (not e!1844003))))

(assert (=> b!2923168 (= res!1206669 (not lt!1026110))))

(declare-fun b!2923169 () Bool)

(assert (=> b!2923169 (= e!1844004 (matchR!3887 (derivativeStep!2439 r!17423 (head!6498 s!11993)) (tail!4724 s!11993)))))

(declare-fun bm!191481 () Bool)

(assert (=> bm!191481 (= call!191486 (isEmpty!18995 s!11993))))

(assert (= (and d!838716 c!477169) b!2923159))

(assert (= (and d!838716 (not c!477169)) b!2923169))

(assert (= (and d!838716 c!477170) b!2923166))

(assert (= (and d!838716 (not c!477170)) b!2923167))

(assert (= (and b!2923167 c!477171) b!2923162))

(assert (= (and b!2923167 (not c!477171)) b!2923156))

(assert (= (and b!2923156 (not res!1206666)) b!2923161))

(assert (= (and b!2923161 res!1206663) b!2923165))

(assert (= (and b!2923165 res!1206665) b!2923157))

(assert (= (and b!2923157 res!1206664) b!2923164))

(assert (= (and b!2923161 (not res!1206668)) b!2923168))

(assert (= (and b!2923168 res!1206669) b!2923163))

(assert (= (and b!2923163 (not res!1206667)) b!2923160))

(assert (= (and b!2923160 (not res!1206670)) b!2923158))

(assert (= (or b!2923166 b!2923165 b!2923163) bm!191481))

(declare-fun m!3317857 () Bool)

(assert (=> b!2923159 m!3317857))

(assert (=> b!2923160 m!3317723))

(assert (=> b!2923160 m!3317723))

(assert (=> b!2923160 m!3317725))

(assert (=> b!2923157 m!3317723))

(assert (=> b!2923157 m!3317723))

(assert (=> b!2923157 m!3317725))

(assert (=> b!2923158 m!3317727))

(assert (=> d!838716 m!3317729))

(assert (=> d!838716 m!3317691))

(assert (=> bm!191481 m!3317729))

(assert (=> b!2923164 m!3317727))

(assert (=> b!2923169 m!3317727))

(assert (=> b!2923169 m!3317727))

(declare-fun m!3317859 () Bool)

(assert (=> b!2923169 m!3317859))

(assert (=> b!2923169 m!3317723))

(assert (=> b!2923169 m!3317859))

(assert (=> b!2923169 m!3317723))

(declare-fun m!3317861 () Bool)

(assert (=> b!2923169 m!3317861))

(assert (=> b!2922672 d!838716))

(declare-fun d!838718 () Bool)

(assert (=> d!838718 (= (matchR!3887 r!17423 s!11993) (matchRSpec!1142 r!17423 s!11993))))

(declare-fun lt!1026113 () Unit!48349)

(declare-fun choose!17241 (Regex!9005 List!34870) Unit!48349)

(assert (=> d!838718 (= lt!1026113 (choose!17241 r!17423 s!11993))))

(assert (=> d!838718 (validRegex!3738 r!17423)))

(assert (=> d!838718 (= (mainMatchTheorem!1142 r!17423 s!11993) lt!1026113)))

(declare-fun bs!524984 () Bool)

(assert (= bs!524984 d!838718))

(assert (=> bs!524984 m!3317695))

(assert (=> bs!524984 m!3317693))

(declare-fun m!3317863 () Bool)

(assert (=> bs!524984 m!3317863))

(assert (=> bs!524984 m!3317691))

(assert (=> b!2922672 d!838718))

(declare-fun b!2923216 () Bool)

(declare-fun e!1844022 () Bool)

(declare-fun tp!937693 () Bool)

(declare-fun tp!937692 () Bool)

(assert (=> b!2923216 (= e!1844022 (and tp!937693 tp!937692))))

(assert (=> b!2922673 (= tp!937640 e!1844022)))

(declare-fun b!2923217 () Bool)

(declare-fun tp!937694 () Bool)

(assert (=> b!2923217 (= e!1844022 tp!937694)))

(declare-fun b!2923218 () Bool)

(declare-fun tp!937691 () Bool)

(declare-fun tp!937690 () Bool)

(assert (=> b!2923218 (= e!1844022 (and tp!937691 tp!937690))))

(declare-fun b!2923215 () Bool)

(assert (=> b!2923215 (= e!1844022 tp_is_empty!15573)))

(assert (= (and b!2922673 ((_ is ElementMatch!9005) (regOne!18522 r!17423))) b!2923215))

(assert (= (and b!2922673 ((_ is Concat!14326) (regOne!18522 r!17423))) b!2923216))

(assert (= (and b!2922673 ((_ is Star!9005) (regOne!18522 r!17423))) b!2923217))

(assert (= (and b!2922673 ((_ is Union!9005) (regOne!18522 r!17423))) b!2923218))

(declare-fun b!2923220 () Bool)

(declare-fun e!1844023 () Bool)

(declare-fun tp!937698 () Bool)

(declare-fun tp!937697 () Bool)

(assert (=> b!2923220 (= e!1844023 (and tp!937698 tp!937697))))

(assert (=> b!2922673 (= tp!937641 e!1844023)))

(declare-fun b!2923221 () Bool)

(declare-fun tp!937699 () Bool)

(assert (=> b!2923221 (= e!1844023 tp!937699)))

(declare-fun b!2923222 () Bool)

(declare-fun tp!937696 () Bool)

(declare-fun tp!937695 () Bool)

(assert (=> b!2923222 (= e!1844023 (and tp!937696 tp!937695))))

(declare-fun b!2923219 () Bool)

(assert (=> b!2923219 (= e!1844023 tp_is_empty!15573)))

(assert (= (and b!2922673 ((_ is ElementMatch!9005) (regTwo!18522 r!17423))) b!2923219))

(assert (= (and b!2922673 ((_ is Concat!14326) (regTwo!18522 r!17423))) b!2923220))

(assert (= (and b!2922673 ((_ is Star!9005) (regTwo!18522 r!17423))) b!2923221))

(assert (= (and b!2922673 ((_ is Union!9005) (regTwo!18522 r!17423))) b!2923222))

(declare-fun b!2923224 () Bool)

(declare-fun e!1844024 () Bool)

(declare-fun tp!937703 () Bool)

(declare-fun tp!937702 () Bool)

(assert (=> b!2923224 (= e!1844024 (and tp!937703 tp!937702))))

(assert (=> b!2922669 (= tp!937636 e!1844024)))

(declare-fun b!2923225 () Bool)

(declare-fun tp!937704 () Bool)

(assert (=> b!2923225 (= e!1844024 tp!937704)))

(declare-fun b!2923226 () Bool)

(declare-fun tp!937701 () Bool)

(declare-fun tp!937700 () Bool)

(assert (=> b!2923226 (= e!1844024 (and tp!937701 tp!937700))))

(declare-fun b!2923223 () Bool)

(assert (=> b!2923223 (= e!1844024 tp_is_empty!15573)))

(assert (= (and b!2922669 ((_ is ElementMatch!9005) (regOne!18523 r!17423))) b!2923223))

(assert (= (and b!2922669 ((_ is Concat!14326) (regOne!18523 r!17423))) b!2923224))

(assert (= (and b!2922669 ((_ is Star!9005) (regOne!18523 r!17423))) b!2923225))

(assert (= (and b!2922669 ((_ is Union!9005) (regOne!18523 r!17423))) b!2923226))

(declare-fun b!2923228 () Bool)

(declare-fun e!1844025 () Bool)

(declare-fun tp!937708 () Bool)

(declare-fun tp!937707 () Bool)

(assert (=> b!2923228 (= e!1844025 (and tp!937708 tp!937707))))

(assert (=> b!2922669 (= tp!937639 e!1844025)))

(declare-fun b!2923229 () Bool)

(declare-fun tp!937709 () Bool)

(assert (=> b!2923229 (= e!1844025 tp!937709)))

(declare-fun b!2923230 () Bool)

(declare-fun tp!937706 () Bool)

(declare-fun tp!937705 () Bool)

(assert (=> b!2923230 (= e!1844025 (and tp!937706 tp!937705))))

(declare-fun b!2923227 () Bool)

(assert (=> b!2923227 (= e!1844025 tp_is_empty!15573)))

(assert (= (and b!2922669 ((_ is ElementMatch!9005) (regTwo!18523 r!17423))) b!2923227))

(assert (= (and b!2922669 ((_ is Concat!14326) (regTwo!18523 r!17423))) b!2923228))

(assert (= (and b!2922669 ((_ is Star!9005) (regTwo!18523 r!17423))) b!2923229))

(assert (= (and b!2922669 ((_ is Union!9005) (regTwo!18523 r!17423))) b!2923230))

(declare-fun b!2923232 () Bool)

(declare-fun e!1844026 () Bool)

(declare-fun tp!937713 () Bool)

(declare-fun tp!937712 () Bool)

(assert (=> b!2923232 (= e!1844026 (and tp!937713 tp!937712))))

(assert (=> b!2922666 (= tp!937638 e!1844026)))

(declare-fun b!2923233 () Bool)

(declare-fun tp!937714 () Bool)

(assert (=> b!2923233 (= e!1844026 tp!937714)))

(declare-fun b!2923234 () Bool)

(declare-fun tp!937711 () Bool)

(declare-fun tp!937710 () Bool)

(assert (=> b!2923234 (= e!1844026 (and tp!937711 tp!937710))))

(declare-fun b!2923231 () Bool)

(assert (=> b!2923231 (= e!1844026 tp_is_empty!15573)))

(assert (= (and b!2922666 ((_ is ElementMatch!9005) (reg!9334 r!17423))) b!2923231))

(assert (= (and b!2922666 ((_ is Concat!14326) (reg!9334 r!17423))) b!2923232))

(assert (= (and b!2922666 ((_ is Star!9005) (reg!9334 r!17423))) b!2923233))

(assert (= (and b!2922666 ((_ is Union!9005) (reg!9334 r!17423))) b!2923234))

(declare-fun b!2923239 () Bool)

(declare-fun e!1844029 () Bool)

(declare-fun tp!937717 () Bool)

(assert (=> b!2923239 (= e!1844029 (and tp_is_empty!15573 tp!937717))))

(assert (=> b!2922667 (= tp!937637 e!1844029)))

(assert (= (and b!2922667 ((_ is Cons!34746) (t!233935 s!11993))) b!2923239))

(check-sat (not bm!191453) (not b!2922962) (not b!2923222) (not bm!191446) (not b!2922766) (not b!2923157) (not bm!191479) (not b!2922993) (not b!2923228) (not b!2922992) (not d!838698) (not d!838700) (not b!2923229) (not bm!191481) (not b!2922951) (not b!2922950) (not d!838694) (not b!2922704) (not d!838678) (not b!2923160) (not bm!191456) (not b!2923220) (not b!2922978) (not bm!191451) (not b!2923226) (not d!838718) (not bm!191445) (not b!2923234) (not b!2922975) (not b!2923149) (not b!2922987) (not b!2922944) (not bm!191449) (not b!2922982) (not b!2923217) (not bm!191480) (not b!2923164) (not b!2923233) (not b!2923158) tp_is_empty!15573 (not b!2922957) (not bm!191403) (not b!2923221) (not b!2923216) (not d!838686) (not bm!191455) (not b!2923218) (not bm!191447) (not b!2922710) (not bm!191405) (not b!2923169) (not d!838716) (not b!2922715) (not bm!191452) (not b!2922953) (not b!2922703) (not b!2923144) (not b!2923225) (not b!2922976) (not b!2922941) (not b!2922969) (not b!2922952) (not b!2923239) (not b!2923230) (not b!2923232) (not b!2923224) (not b!2922705) (not b!2922977) (not d!838676) (not b!2922706) (not bm!191394) (not b!2923159))
(check-sat)
