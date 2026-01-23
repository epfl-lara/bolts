; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286976 () Bool)

(assert start!286976)

(declare-fun b!2962633 () Bool)

(declare-fun e!1864769 () Bool)

(declare-datatypes ((C!18604 0))(
  ( (C!18605 (val!11338 Int)) )
))
(declare-datatypes ((Regex!9209 0))(
  ( (ElementMatch!9209 (c!485619 C!18604)) (Concat!14530 (regOne!18930 Regex!9209) (regTwo!18930 Regex!9209)) (EmptyExpr!9209) (Star!9209 (reg!9538 Regex!9209)) (EmptyLang!9209) (Union!9209 (regOne!18931 Regex!9209) (regTwo!18931 Regex!9209)) )
))
(declare-fun r!17423 () Regex!9209)

(declare-fun validRegex!3942 (Regex!9209) Bool)

(assert (=> b!2962633 (= e!1864769 (validRegex!3942 (regOne!18931 r!17423)))))

(declare-datatypes ((List!35074 0))(
  ( (Nil!34950) (Cons!34950 (h!40370 C!18604) (t!234139 List!35074)) )
))
(declare-fun s!11993 () List!35074)

(declare-fun lt!1034523 () Regex!9209)

(declare-fun matchR!4091 (Regex!9209 List!35074) Bool)

(assert (=> b!2962633 (= (matchR!4091 (regOne!18931 r!17423) s!11993) (matchR!4091 lt!1034523 s!11993))))

(declare-datatypes ((Unit!48797 0))(
  ( (Unit!48798) )
))
(declare-fun lt!1034522 () Unit!48797)

(declare-fun lemmaSimplifySound!136 (Regex!9209 List!35074) Unit!48797)

(assert (=> b!2962633 (= lt!1034522 (lemmaSimplifySound!136 (regOne!18931 r!17423) s!11993))))

(declare-fun b!2962634 () Bool)

(declare-fun e!1864767 () Bool)

(declare-fun tp!945414 () Bool)

(assert (=> b!2962634 (= e!1864767 tp!945414)))

(declare-fun b!2962635 () Bool)

(declare-fun e!1864768 () Bool)

(assert (=> b!2962635 (= e!1864768 e!1864769)))

(declare-fun res!1222212 () Bool)

(assert (=> b!2962635 (=> res!1222212 e!1864769)))

(declare-fun isEmptyLang!325 (Regex!9209) Bool)

(assert (=> b!2962635 (= res!1222212 (isEmptyLang!325 lt!1034523))))

(declare-fun lt!1034526 () Regex!9209)

(declare-fun simplify!212 (Regex!9209) Regex!9209)

(assert (=> b!2962635 (= lt!1034526 (simplify!212 (regTwo!18931 r!17423)))))

(assert (=> b!2962635 (= lt!1034523 (simplify!212 (regOne!18931 r!17423)))))

(declare-fun b!2962636 () Bool)

(declare-fun tp_is_empty!15981 () Bool)

(assert (=> b!2962636 (= e!1864767 tp_is_empty!15981)))

(declare-fun b!2962637 () Bool)

(declare-fun res!1222214 () Bool)

(assert (=> b!2962637 (=> res!1222214 e!1864769)))

(assert (=> b!2962637 (= res!1222214 (not (isEmptyLang!325 lt!1034526)))))

(declare-fun b!2962638 () Bool)

(declare-fun e!1864765 () Bool)

(declare-fun tp!945417 () Bool)

(assert (=> b!2962638 (= e!1864765 (and tp_is_empty!15981 tp!945417))))

(declare-fun res!1222213 () Bool)

(declare-fun e!1864766 () Bool)

(assert (=> start!286976 (=> (not res!1222213) (not e!1864766))))

(assert (=> start!286976 (= res!1222213 (validRegex!3942 r!17423))))

(assert (=> start!286976 e!1864766))

(assert (=> start!286976 e!1864767))

(assert (=> start!286976 e!1864765))

(declare-fun b!2962639 () Bool)

(assert (=> b!2962639 (= e!1864766 (not e!1864768))))

(declare-fun res!1222211 () Bool)

(assert (=> b!2962639 (=> res!1222211 e!1864768)))

(declare-fun lt!1034524 () Bool)

(get-info :version)

(assert (=> b!2962639 (= res!1222211 (or lt!1034524 ((_ is Concat!14530) r!17423) (not ((_ is Union!9209) r!17423))))))

(declare-fun matchRSpec!1346 (Regex!9209 List!35074) Bool)

(assert (=> b!2962639 (= lt!1034524 (matchRSpec!1346 r!17423 s!11993))))

(assert (=> b!2962639 (= lt!1034524 (matchR!4091 r!17423 s!11993))))

(declare-fun lt!1034525 () Unit!48797)

(declare-fun mainMatchTheorem!1346 (Regex!9209 List!35074) Unit!48797)

(assert (=> b!2962639 (= lt!1034525 (mainMatchTheorem!1346 r!17423 s!11993))))

(declare-fun b!2962640 () Bool)

(declare-fun tp!945416 () Bool)

(declare-fun tp!945412 () Bool)

(assert (=> b!2962640 (= e!1864767 (and tp!945416 tp!945412))))

(declare-fun b!2962641 () Bool)

(declare-fun tp!945413 () Bool)

(declare-fun tp!945415 () Bool)

(assert (=> b!2962641 (= e!1864767 (and tp!945413 tp!945415))))

(assert (= (and start!286976 res!1222213) b!2962639))

(assert (= (and b!2962639 (not res!1222211)) b!2962635))

(assert (= (and b!2962635 (not res!1222212)) b!2962637))

(assert (= (and b!2962637 (not res!1222214)) b!2962633))

(assert (= (and start!286976 ((_ is ElementMatch!9209) r!17423)) b!2962636))

(assert (= (and start!286976 ((_ is Concat!14530) r!17423)) b!2962640))

(assert (= (and start!286976 ((_ is Star!9209) r!17423)) b!2962634))

(assert (= (and start!286976 ((_ is Union!9209) r!17423)) b!2962641))

(assert (= (and start!286976 ((_ is Cons!34950) s!11993)) b!2962638))

(declare-fun m!3334995 () Bool)

(assert (=> start!286976 m!3334995))

(declare-fun m!3334997 () Bool)

(assert (=> b!2962637 m!3334997))

(declare-fun m!3334999 () Bool)

(assert (=> b!2962635 m!3334999))

(declare-fun m!3335001 () Bool)

(assert (=> b!2962635 m!3335001))

(declare-fun m!3335003 () Bool)

(assert (=> b!2962635 m!3335003))

(declare-fun m!3335005 () Bool)

(assert (=> b!2962639 m!3335005))

(declare-fun m!3335007 () Bool)

(assert (=> b!2962639 m!3335007))

(declare-fun m!3335009 () Bool)

(assert (=> b!2962639 m!3335009))

(declare-fun m!3335011 () Bool)

(assert (=> b!2962633 m!3335011))

(declare-fun m!3335013 () Bool)

(assert (=> b!2962633 m!3335013))

(declare-fun m!3335015 () Bool)

(assert (=> b!2962633 m!3335015))

(declare-fun m!3335017 () Bool)

(assert (=> b!2962633 m!3335017))

(check-sat (not start!286976) (not b!2962641) (not b!2962635) (not b!2962638) (not b!2962640) (not b!2962633) tp_is_empty!15981 (not b!2962639) (not b!2962637) (not b!2962634))
(check-sat)
(get-model)

(declare-fun d!842118 () Bool)

(assert (=> d!842118 (= (isEmptyLang!325 lt!1034523) ((_ is EmptyLang!9209) lt!1034523))))

(assert (=> b!2962635 d!842118))

(declare-fun b!2962714 () Bool)

(declare-fun e!1864816 () Bool)

(declare-fun call!196612 () Bool)

(assert (=> b!2962714 (= e!1864816 call!196612)))

(declare-fun bm!196604 () Bool)

(declare-fun call!196615 () Regex!9209)

(declare-fun call!196613 () Regex!9209)

(assert (=> bm!196604 (= call!196615 call!196613)))

(declare-fun b!2962715 () Bool)

(declare-fun c!485651 () Bool)

(assert (=> b!2962715 (= c!485651 ((_ is Union!9209) (regTwo!18931 r!17423)))))

(declare-fun e!1864821 () Regex!9209)

(declare-fun e!1864812 () Regex!9209)

(assert (=> b!2962715 (= e!1864821 e!1864812)))

(declare-fun b!2962716 () Bool)

(declare-fun e!1864815 () Regex!9209)

(assert (=> b!2962716 (= e!1864815 EmptyExpr!9209)))

(declare-fun b!2962717 () Bool)

(declare-fun e!1864823 () Regex!9209)

(declare-fun lt!1034542 () Regex!9209)

(declare-fun lt!1034539 () Regex!9209)

(assert (=> b!2962717 (= e!1864823 (Union!9209 lt!1034542 lt!1034539))))

(declare-fun bm!196605 () Bool)

(declare-fun call!196614 () Bool)

(declare-fun lt!1034544 () Regex!9209)

(assert (=> bm!196605 (= call!196614 (isEmptyLang!325 (ite c!485651 lt!1034542 lt!1034544)))))

(declare-fun b!2962718 () Bool)

(declare-fun e!1864822 () Regex!9209)

(assert (=> b!2962718 (= e!1864822 (regTwo!18931 r!17423))))

(declare-fun bm!196606 () Bool)

(declare-fun c!485656 () Bool)

(declare-fun lt!1034540 () Regex!9209)

(declare-fun lt!1034543 () Regex!9209)

(declare-fun call!196611 () Bool)

(assert (=> bm!196606 (= call!196611 (isEmptyLang!325 (ite c!485656 lt!1034543 (ite c!485651 lt!1034539 lt!1034540))))))

(declare-fun b!2962720 () Bool)

(declare-fun e!1864813 () Bool)

(declare-fun lt!1034541 () Regex!9209)

(declare-fun nullable!2940 (Regex!9209) Bool)

(assert (=> b!2962720 (= e!1864813 (= (nullable!2940 lt!1034541) (nullable!2940 (regTwo!18931 r!17423))))))

(declare-fun b!2962721 () Bool)

(declare-fun c!485660 () Bool)

(assert (=> b!2962721 (= c!485660 call!196612)))

(declare-fun e!1864825 () Regex!9209)

(assert (=> b!2962721 (= e!1864825 e!1864823)))

(declare-fun b!2962722 () Bool)

(declare-fun e!1864824 () Regex!9209)

(assert (=> b!2962722 (= e!1864824 EmptyLang!9209)))

(declare-fun b!2962723 () Bool)

(assert (=> b!2962723 (= e!1864815 (Star!9209 lt!1034543))))

(declare-fun b!2962724 () Bool)

(declare-fun e!1864817 () Regex!9209)

(assert (=> b!2962724 (= e!1864817 (Concat!14530 lt!1034544 lt!1034540))))

(declare-fun b!2962725 () Bool)

(declare-fun e!1864818 () Regex!9209)

(assert (=> b!2962725 (= e!1864818 e!1864821)))

(assert (=> b!2962725 (= c!485656 ((_ is Star!9209) (regTwo!18931 r!17423)))))

(declare-fun b!2962726 () Bool)

(assert (=> b!2962726 (= e!1864812 e!1864824)))

(declare-fun call!196609 () Regex!9209)

(assert (=> b!2962726 (= lt!1034544 call!196609)))

(assert (=> b!2962726 (= lt!1034540 call!196615)))

(declare-fun res!1222228 () Bool)

(assert (=> b!2962726 (= res!1222228 call!196614)))

(assert (=> b!2962726 (=> res!1222228 e!1864816)))

(declare-fun c!485655 () Bool)

(assert (=> b!2962726 (= c!485655 e!1864816)))

(declare-fun bm!196607 () Bool)

(assert (=> bm!196607 (= call!196612 call!196611)))

(declare-fun bm!196608 () Bool)

(assert (=> bm!196608 (= call!196609 (simplify!212 (ite c!485651 (regTwo!18931 (regTwo!18931 r!17423)) (regOne!18930 (regTwo!18931 r!17423)))))))

(declare-fun b!2962727 () Bool)

(declare-fun c!485654 () Bool)

(assert (=> b!2962727 (= c!485654 ((_ is EmptyExpr!9209) (regTwo!18931 r!17423)))))

(assert (=> b!2962727 (= e!1864822 e!1864818)))

(declare-fun b!2962728 () Bool)

(assert (=> b!2962728 (= e!1864817 lt!1034544)))

(declare-fun b!2962729 () Bool)

(assert (=> b!2962729 (= e!1864825 lt!1034539)))

(declare-fun b!2962730 () Bool)

(declare-fun e!1864819 () Regex!9209)

(assert (=> b!2962730 (= e!1864819 e!1864817)))

(declare-fun c!485650 () Bool)

(declare-fun call!196610 () Bool)

(assert (=> b!2962730 (= c!485650 call!196610)))

(declare-fun d!842120 () Bool)

(assert (=> d!842120 e!1864813))

(declare-fun res!1222229 () Bool)

(assert (=> d!842120 (=> (not res!1222229) (not e!1864813))))

(assert (=> d!842120 (= res!1222229 (validRegex!3942 lt!1034541))))

(declare-fun e!1864814 () Regex!9209)

(assert (=> d!842120 (= lt!1034541 e!1864814)))

(declare-fun c!485659 () Bool)

(assert (=> d!842120 (= c!485659 ((_ is EmptyLang!9209) (regTwo!18931 r!17423)))))

(assert (=> d!842120 (validRegex!3942 (regTwo!18931 r!17423))))

(assert (=> d!842120 (= (simplify!212 (regTwo!18931 r!17423)) lt!1034541)))

(declare-fun b!2962719 () Bool)

(assert (=> b!2962719 (= e!1864812 e!1864825)))

(assert (=> b!2962719 (= lt!1034542 call!196615)))

(assert (=> b!2962719 (= lt!1034539 call!196609)))

(declare-fun c!485652 () Bool)

(assert (=> b!2962719 (= c!485652 call!196614)))

(declare-fun bm!196609 () Bool)

(assert (=> bm!196609 (= call!196613 (simplify!212 (ite c!485656 (reg!9538 (regTwo!18931 r!17423)) (ite c!485651 (regOne!18931 (regTwo!18931 r!17423)) (regTwo!18930 (regTwo!18931 r!17423))))))))

(declare-fun b!2962731 () Bool)

(assert (=> b!2962731 (= e!1864818 EmptyExpr!9209)))

(declare-fun b!2962732 () Bool)

(assert (=> b!2962732 (= e!1864814 EmptyLang!9209)))

(declare-fun b!2962733 () Bool)

(declare-fun c!485657 () Bool)

(declare-fun isEmptyExpr!398 (Regex!9209) Bool)

(assert (=> b!2962733 (= c!485657 (isEmptyExpr!398 lt!1034544))))

(assert (=> b!2962733 (= e!1864824 e!1864819)))

(declare-fun b!2962734 () Bool)

(assert (=> b!2962734 (= e!1864814 e!1864822)))

(declare-fun c!485653 () Bool)

(assert (=> b!2962734 (= c!485653 ((_ is ElementMatch!9209) (regTwo!18931 r!17423)))))

(declare-fun b!2962735 () Bool)

(assert (=> b!2962735 (= e!1864823 lt!1034542)))

(declare-fun b!2962736 () Bool)

(assert (=> b!2962736 (= e!1864819 lt!1034540)))

(declare-fun b!2962737 () Bool)

(declare-fun e!1864820 () Bool)

(assert (=> b!2962737 (= e!1864820 call!196610)))

(declare-fun bm!196610 () Bool)

(assert (=> bm!196610 (= call!196610 (isEmptyExpr!398 (ite c!485656 lt!1034543 lt!1034540)))))

(declare-fun b!2962738 () Bool)

(declare-fun c!485658 () Bool)

(assert (=> b!2962738 (= c!485658 e!1864820)))

(declare-fun res!1222227 () Bool)

(assert (=> b!2962738 (=> res!1222227 e!1864820)))

(assert (=> b!2962738 (= res!1222227 call!196611)))

(assert (=> b!2962738 (= lt!1034543 call!196613)))

(assert (=> b!2962738 (= e!1864821 e!1864815)))

(assert (= (and d!842120 c!485659) b!2962732))

(assert (= (and d!842120 (not c!485659)) b!2962734))

(assert (= (and b!2962734 c!485653) b!2962718))

(assert (= (and b!2962734 (not c!485653)) b!2962727))

(assert (= (and b!2962727 c!485654) b!2962731))

(assert (= (and b!2962727 (not c!485654)) b!2962725))

(assert (= (and b!2962725 c!485656) b!2962738))

(assert (= (and b!2962725 (not c!485656)) b!2962715))

(assert (= (and b!2962738 (not res!1222227)) b!2962737))

(assert (= (and b!2962738 c!485658) b!2962716))

(assert (= (and b!2962738 (not c!485658)) b!2962723))

(assert (= (and b!2962715 c!485651) b!2962719))

(assert (= (and b!2962715 (not c!485651)) b!2962726))

(assert (= (and b!2962719 c!485652) b!2962729))

(assert (= (and b!2962719 (not c!485652)) b!2962721))

(assert (= (and b!2962721 c!485660) b!2962735))

(assert (= (and b!2962721 (not c!485660)) b!2962717))

(assert (= (and b!2962726 (not res!1222228)) b!2962714))

(assert (= (and b!2962726 c!485655) b!2962722))

(assert (= (and b!2962726 (not c!485655)) b!2962733))

(assert (= (and b!2962733 c!485657) b!2962736))

(assert (= (and b!2962733 (not c!485657)) b!2962730))

(assert (= (and b!2962730 c!485650) b!2962728))

(assert (= (and b!2962730 (not c!485650)) b!2962724))

(assert (= (or b!2962719 b!2962726) bm!196604))

(assert (= (or b!2962719 b!2962726) bm!196608))

(assert (= (or b!2962719 b!2962726) bm!196605))

(assert (= (or b!2962721 b!2962714) bm!196607))

(assert (= (or b!2962737 b!2962730) bm!196610))

(assert (= (or b!2962738 bm!196604) bm!196609))

(assert (= (or b!2962738 bm!196607) bm!196606))

(assert (= (and d!842120 res!1222229) b!2962720))

(declare-fun m!3335019 () Bool)

(assert (=> b!2962720 m!3335019))

(declare-fun m!3335021 () Bool)

(assert (=> b!2962720 m!3335021))

(declare-fun m!3335023 () Bool)

(assert (=> bm!196609 m!3335023))

(declare-fun m!3335025 () Bool)

(assert (=> bm!196605 m!3335025))

(declare-fun m!3335027 () Bool)

(assert (=> bm!196606 m!3335027))

(declare-fun m!3335029 () Bool)

(assert (=> b!2962733 m!3335029))

(declare-fun m!3335031 () Bool)

(assert (=> d!842120 m!3335031))

(declare-fun m!3335033 () Bool)

(assert (=> d!842120 m!3335033))

(declare-fun m!3335035 () Bool)

(assert (=> bm!196610 m!3335035))

(declare-fun m!3335037 () Bool)

(assert (=> bm!196608 m!3335037))

(assert (=> b!2962635 d!842120))

(declare-fun b!2962739 () Bool)

(declare-fun e!1864830 () Bool)

(declare-fun call!196619 () Bool)

(assert (=> b!2962739 (= e!1864830 call!196619)))

(declare-fun bm!196611 () Bool)

(declare-fun call!196622 () Regex!9209)

(declare-fun call!196620 () Regex!9209)

(assert (=> bm!196611 (= call!196622 call!196620)))

(declare-fun b!2962740 () Bool)

(declare-fun c!485662 () Bool)

(assert (=> b!2962740 (= c!485662 ((_ is Union!9209) (regOne!18931 r!17423)))))

(declare-fun e!1864835 () Regex!9209)

(declare-fun e!1864826 () Regex!9209)

(assert (=> b!2962740 (= e!1864835 e!1864826)))

(declare-fun b!2962741 () Bool)

(declare-fun e!1864829 () Regex!9209)

(assert (=> b!2962741 (= e!1864829 EmptyExpr!9209)))

(declare-fun b!2962742 () Bool)

(declare-fun e!1864837 () Regex!9209)

(declare-fun lt!1034548 () Regex!9209)

(declare-fun lt!1034545 () Regex!9209)

(assert (=> b!2962742 (= e!1864837 (Union!9209 lt!1034548 lt!1034545))))

(declare-fun bm!196612 () Bool)

(declare-fun lt!1034550 () Regex!9209)

(declare-fun call!196621 () Bool)

(assert (=> bm!196612 (= call!196621 (isEmptyLang!325 (ite c!485662 lt!1034548 lt!1034550)))))

(declare-fun b!2962743 () Bool)

(declare-fun e!1864836 () Regex!9209)

(assert (=> b!2962743 (= e!1864836 (regOne!18931 r!17423))))

(declare-fun call!196618 () Bool)

(declare-fun lt!1034549 () Regex!9209)

(declare-fun c!485667 () Bool)

(declare-fun bm!196613 () Bool)

(declare-fun lt!1034546 () Regex!9209)

(assert (=> bm!196613 (= call!196618 (isEmptyLang!325 (ite c!485667 lt!1034549 (ite c!485662 lt!1034545 lt!1034546))))))

(declare-fun b!2962745 () Bool)

(declare-fun e!1864827 () Bool)

(declare-fun lt!1034547 () Regex!9209)

(assert (=> b!2962745 (= e!1864827 (= (nullable!2940 lt!1034547) (nullable!2940 (regOne!18931 r!17423))))))

(declare-fun b!2962746 () Bool)

(declare-fun c!485671 () Bool)

(assert (=> b!2962746 (= c!485671 call!196619)))

(declare-fun e!1864839 () Regex!9209)

(assert (=> b!2962746 (= e!1864839 e!1864837)))

(declare-fun b!2962747 () Bool)

(declare-fun e!1864838 () Regex!9209)

(assert (=> b!2962747 (= e!1864838 EmptyLang!9209)))

(declare-fun b!2962748 () Bool)

(assert (=> b!2962748 (= e!1864829 (Star!9209 lt!1034549))))

(declare-fun b!2962749 () Bool)

(declare-fun e!1864831 () Regex!9209)

(assert (=> b!2962749 (= e!1864831 (Concat!14530 lt!1034550 lt!1034546))))

(declare-fun b!2962750 () Bool)

(declare-fun e!1864832 () Regex!9209)

(assert (=> b!2962750 (= e!1864832 e!1864835)))

(assert (=> b!2962750 (= c!485667 ((_ is Star!9209) (regOne!18931 r!17423)))))

(declare-fun b!2962751 () Bool)

(assert (=> b!2962751 (= e!1864826 e!1864838)))

(declare-fun call!196616 () Regex!9209)

(assert (=> b!2962751 (= lt!1034550 call!196616)))

(assert (=> b!2962751 (= lt!1034546 call!196622)))

(declare-fun res!1222231 () Bool)

(assert (=> b!2962751 (= res!1222231 call!196621)))

(assert (=> b!2962751 (=> res!1222231 e!1864830)))

(declare-fun c!485666 () Bool)

(assert (=> b!2962751 (= c!485666 e!1864830)))

(declare-fun bm!196614 () Bool)

(assert (=> bm!196614 (= call!196619 call!196618)))

(declare-fun bm!196615 () Bool)

(assert (=> bm!196615 (= call!196616 (simplify!212 (ite c!485662 (regTwo!18931 (regOne!18931 r!17423)) (regOne!18930 (regOne!18931 r!17423)))))))

(declare-fun b!2962752 () Bool)

(declare-fun c!485665 () Bool)

(assert (=> b!2962752 (= c!485665 ((_ is EmptyExpr!9209) (regOne!18931 r!17423)))))

(assert (=> b!2962752 (= e!1864836 e!1864832)))

(declare-fun b!2962753 () Bool)

(assert (=> b!2962753 (= e!1864831 lt!1034550)))

(declare-fun b!2962754 () Bool)

(assert (=> b!2962754 (= e!1864839 lt!1034545)))

(declare-fun b!2962755 () Bool)

(declare-fun e!1864833 () Regex!9209)

(assert (=> b!2962755 (= e!1864833 e!1864831)))

(declare-fun c!485661 () Bool)

(declare-fun call!196617 () Bool)

(assert (=> b!2962755 (= c!485661 call!196617)))

(declare-fun d!842122 () Bool)

(assert (=> d!842122 e!1864827))

(declare-fun res!1222232 () Bool)

(assert (=> d!842122 (=> (not res!1222232) (not e!1864827))))

(assert (=> d!842122 (= res!1222232 (validRegex!3942 lt!1034547))))

(declare-fun e!1864828 () Regex!9209)

(assert (=> d!842122 (= lt!1034547 e!1864828)))

(declare-fun c!485670 () Bool)

(assert (=> d!842122 (= c!485670 ((_ is EmptyLang!9209) (regOne!18931 r!17423)))))

(assert (=> d!842122 (validRegex!3942 (regOne!18931 r!17423))))

(assert (=> d!842122 (= (simplify!212 (regOne!18931 r!17423)) lt!1034547)))

(declare-fun b!2962744 () Bool)

(assert (=> b!2962744 (= e!1864826 e!1864839)))

(assert (=> b!2962744 (= lt!1034548 call!196622)))

(assert (=> b!2962744 (= lt!1034545 call!196616)))

(declare-fun c!485663 () Bool)

(assert (=> b!2962744 (= c!485663 call!196621)))

(declare-fun bm!196616 () Bool)

(assert (=> bm!196616 (= call!196620 (simplify!212 (ite c!485667 (reg!9538 (regOne!18931 r!17423)) (ite c!485662 (regOne!18931 (regOne!18931 r!17423)) (regTwo!18930 (regOne!18931 r!17423))))))))

(declare-fun b!2962756 () Bool)

(assert (=> b!2962756 (= e!1864832 EmptyExpr!9209)))

(declare-fun b!2962757 () Bool)

(assert (=> b!2962757 (= e!1864828 EmptyLang!9209)))

(declare-fun b!2962758 () Bool)

(declare-fun c!485668 () Bool)

(assert (=> b!2962758 (= c!485668 (isEmptyExpr!398 lt!1034550))))

(assert (=> b!2962758 (= e!1864838 e!1864833)))

(declare-fun b!2962759 () Bool)

(assert (=> b!2962759 (= e!1864828 e!1864836)))

(declare-fun c!485664 () Bool)

(assert (=> b!2962759 (= c!485664 ((_ is ElementMatch!9209) (regOne!18931 r!17423)))))

(declare-fun b!2962760 () Bool)

(assert (=> b!2962760 (= e!1864837 lt!1034548)))

(declare-fun b!2962761 () Bool)

(assert (=> b!2962761 (= e!1864833 lt!1034546)))

(declare-fun b!2962762 () Bool)

(declare-fun e!1864834 () Bool)

(assert (=> b!2962762 (= e!1864834 call!196617)))

(declare-fun bm!196617 () Bool)

(assert (=> bm!196617 (= call!196617 (isEmptyExpr!398 (ite c!485667 lt!1034549 lt!1034546)))))

(declare-fun b!2962763 () Bool)

(declare-fun c!485669 () Bool)

(assert (=> b!2962763 (= c!485669 e!1864834)))

(declare-fun res!1222230 () Bool)

(assert (=> b!2962763 (=> res!1222230 e!1864834)))

(assert (=> b!2962763 (= res!1222230 call!196618)))

(assert (=> b!2962763 (= lt!1034549 call!196620)))

(assert (=> b!2962763 (= e!1864835 e!1864829)))

(assert (= (and d!842122 c!485670) b!2962757))

(assert (= (and d!842122 (not c!485670)) b!2962759))

(assert (= (and b!2962759 c!485664) b!2962743))

(assert (= (and b!2962759 (not c!485664)) b!2962752))

(assert (= (and b!2962752 c!485665) b!2962756))

(assert (= (and b!2962752 (not c!485665)) b!2962750))

(assert (= (and b!2962750 c!485667) b!2962763))

(assert (= (and b!2962750 (not c!485667)) b!2962740))

(assert (= (and b!2962763 (not res!1222230)) b!2962762))

(assert (= (and b!2962763 c!485669) b!2962741))

(assert (= (and b!2962763 (not c!485669)) b!2962748))

(assert (= (and b!2962740 c!485662) b!2962744))

(assert (= (and b!2962740 (not c!485662)) b!2962751))

(assert (= (and b!2962744 c!485663) b!2962754))

(assert (= (and b!2962744 (not c!485663)) b!2962746))

(assert (= (and b!2962746 c!485671) b!2962760))

(assert (= (and b!2962746 (not c!485671)) b!2962742))

(assert (= (and b!2962751 (not res!1222231)) b!2962739))

(assert (= (and b!2962751 c!485666) b!2962747))

(assert (= (and b!2962751 (not c!485666)) b!2962758))

(assert (= (and b!2962758 c!485668) b!2962761))

(assert (= (and b!2962758 (not c!485668)) b!2962755))

(assert (= (and b!2962755 c!485661) b!2962753))

(assert (= (and b!2962755 (not c!485661)) b!2962749))

(assert (= (or b!2962744 b!2962751) bm!196611))

(assert (= (or b!2962744 b!2962751) bm!196615))

(assert (= (or b!2962744 b!2962751) bm!196612))

(assert (= (or b!2962746 b!2962739) bm!196614))

(assert (= (or b!2962762 b!2962755) bm!196617))

(assert (= (or b!2962763 bm!196611) bm!196616))

(assert (= (or b!2962763 bm!196614) bm!196613))

(assert (= (and d!842122 res!1222232) b!2962745))

(declare-fun m!3335039 () Bool)

(assert (=> b!2962745 m!3335039))

(declare-fun m!3335041 () Bool)

(assert (=> b!2962745 m!3335041))

(declare-fun m!3335043 () Bool)

(assert (=> bm!196616 m!3335043))

(declare-fun m!3335045 () Bool)

(assert (=> bm!196612 m!3335045))

(declare-fun m!3335047 () Bool)

(assert (=> bm!196613 m!3335047))

(declare-fun m!3335049 () Bool)

(assert (=> b!2962758 m!3335049))

(declare-fun m!3335051 () Bool)

(assert (=> d!842122 m!3335051))

(assert (=> d!842122 m!3335011))

(declare-fun m!3335053 () Bool)

(assert (=> bm!196617 m!3335053))

(declare-fun m!3335055 () Bool)

(assert (=> bm!196615 m!3335055))

(assert (=> b!2962635 d!842122))

(declare-fun d!842124 () Bool)

(assert (=> d!842124 (= (isEmptyLang!325 lt!1034526) ((_ is EmptyLang!9209) lt!1034526))))

(assert (=> b!2962637 d!842124))

(declare-fun bm!196624 () Bool)

(declare-fun call!196629 () Bool)

(declare-fun call!196631 () Bool)

(assert (=> bm!196624 (= call!196629 call!196631)))

(declare-fun d!842126 () Bool)

(declare-fun res!1222247 () Bool)

(declare-fun e!1864860 () Bool)

(assert (=> d!842126 (=> res!1222247 e!1864860)))

(assert (=> d!842126 (= res!1222247 ((_ is ElementMatch!9209) r!17423))))

(assert (=> d!842126 (= (validRegex!3942 r!17423) e!1864860)))

(declare-fun b!2962782 () Bool)

(declare-fun e!1864859 () Bool)

(declare-fun e!1864856 () Bool)

(assert (=> b!2962782 (= e!1864859 e!1864856)))

(declare-fun res!1222246 () Bool)

(assert (=> b!2962782 (=> (not res!1222246) (not e!1864856))))

(assert (=> b!2962782 (= res!1222246 call!196629)))

(declare-fun b!2962783 () Bool)

(declare-fun e!1864857 () Bool)

(declare-fun e!1864858 () Bool)

(assert (=> b!2962783 (= e!1864857 e!1864858)))

(declare-fun res!1222243 () Bool)

(assert (=> b!2962783 (= res!1222243 (not (nullable!2940 (reg!9538 r!17423))))))

(assert (=> b!2962783 (=> (not res!1222243) (not e!1864858))))

(declare-fun b!2962784 () Bool)

(declare-fun res!1222245 () Bool)

(assert (=> b!2962784 (=> res!1222245 e!1864859)))

(assert (=> b!2962784 (= res!1222245 (not ((_ is Concat!14530) r!17423)))))

(declare-fun e!1864855 () Bool)

(assert (=> b!2962784 (= e!1864855 e!1864859)))

(declare-fun b!2962785 () Bool)

(assert (=> b!2962785 (= e!1864860 e!1864857)))

(declare-fun c!485677 () Bool)

(assert (=> b!2962785 (= c!485677 ((_ is Star!9209) r!17423))))

(declare-fun b!2962786 () Bool)

(declare-fun e!1864854 () Bool)

(assert (=> b!2962786 (= e!1864854 call!196629)))

(declare-fun bm!196625 () Bool)

(declare-fun call!196630 () Bool)

(declare-fun c!485676 () Bool)

(assert (=> bm!196625 (= call!196630 (validRegex!3942 (ite c!485676 (regOne!18931 r!17423) (regTwo!18930 r!17423))))))

(declare-fun b!2962787 () Bool)

(assert (=> b!2962787 (= e!1864857 e!1864855)))

(assert (=> b!2962787 (= c!485676 ((_ is Union!9209) r!17423))))

(declare-fun b!2962788 () Bool)

(assert (=> b!2962788 (= e!1864858 call!196631)))

(declare-fun b!2962789 () Bool)

(declare-fun res!1222244 () Bool)

(assert (=> b!2962789 (=> (not res!1222244) (not e!1864854))))

(assert (=> b!2962789 (= res!1222244 call!196630)))

(assert (=> b!2962789 (= e!1864855 e!1864854)))

(declare-fun bm!196626 () Bool)

(assert (=> bm!196626 (= call!196631 (validRegex!3942 (ite c!485677 (reg!9538 r!17423) (ite c!485676 (regTwo!18931 r!17423) (regOne!18930 r!17423)))))))

(declare-fun b!2962790 () Bool)

(assert (=> b!2962790 (= e!1864856 call!196630)))

(assert (= (and d!842126 (not res!1222247)) b!2962785))

(assert (= (and b!2962785 c!485677) b!2962783))

(assert (= (and b!2962785 (not c!485677)) b!2962787))

(assert (= (and b!2962783 res!1222243) b!2962788))

(assert (= (and b!2962787 c!485676) b!2962789))

(assert (= (and b!2962787 (not c!485676)) b!2962784))

(assert (= (and b!2962789 res!1222244) b!2962786))

(assert (= (and b!2962784 (not res!1222245)) b!2962782))

(assert (= (and b!2962782 res!1222246) b!2962790))

(assert (= (or b!2962789 b!2962790) bm!196625))

(assert (= (or b!2962786 b!2962782) bm!196624))

(assert (= (or b!2962788 bm!196624) bm!196626))

(declare-fun m!3335057 () Bool)

(assert (=> b!2962783 m!3335057))

(declare-fun m!3335059 () Bool)

(assert (=> bm!196625 m!3335059))

(declare-fun m!3335061 () Bool)

(assert (=> bm!196626 m!3335061))

(assert (=> start!286976 d!842126))

(declare-fun bm!196627 () Bool)

(declare-fun call!196632 () Bool)

(declare-fun call!196634 () Bool)

(assert (=> bm!196627 (= call!196632 call!196634)))

(declare-fun d!842128 () Bool)

(declare-fun res!1222252 () Bool)

(declare-fun e!1864867 () Bool)

(assert (=> d!842128 (=> res!1222252 e!1864867)))

(assert (=> d!842128 (= res!1222252 ((_ is ElementMatch!9209) (regOne!18931 r!17423)))))

(assert (=> d!842128 (= (validRegex!3942 (regOne!18931 r!17423)) e!1864867)))

(declare-fun b!2962791 () Bool)

(declare-fun e!1864866 () Bool)

(declare-fun e!1864863 () Bool)

(assert (=> b!2962791 (= e!1864866 e!1864863)))

(declare-fun res!1222251 () Bool)

(assert (=> b!2962791 (=> (not res!1222251) (not e!1864863))))

(assert (=> b!2962791 (= res!1222251 call!196632)))

(declare-fun b!2962792 () Bool)

(declare-fun e!1864864 () Bool)

(declare-fun e!1864865 () Bool)

(assert (=> b!2962792 (= e!1864864 e!1864865)))

(declare-fun res!1222248 () Bool)

(assert (=> b!2962792 (= res!1222248 (not (nullable!2940 (reg!9538 (regOne!18931 r!17423)))))))

(assert (=> b!2962792 (=> (not res!1222248) (not e!1864865))))

(declare-fun b!2962793 () Bool)

(declare-fun res!1222250 () Bool)

(assert (=> b!2962793 (=> res!1222250 e!1864866)))

(assert (=> b!2962793 (= res!1222250 (not ((_ is Concat!14530) (regOne!18931 r!17423))))))

(declare-fun e!1864862 () Bool)

(assert (=> b!2962793 (= e!1864862 e!1864866)))

(declare-fun b!2962794 () Bool)

(assert (=> b!2962794 (= e!1864867 e!1864864)))

(declare-fun c!485679 () Bool)

(assert (=> b!2962794 (= c!485679 ((_ is Star!9209) (regOne!18931 r!17423)))))

(declare-fun b!2962795 () Bool)

(declare-fun e!1864861 () Bool)

(assert (=> b!2962795 (= e!1864861 call!196632)))

(declare-fun bm!196628 () Bool)

(declare-fun call!196633 () Bool)

(declare-fun c!485678 () Bool)

(assert (=> bm!196628 (= call!196633 (validRegex!3942 (ite c!485678 (regOne!18931 (regOne!18931 r!17423)) (regTwo!18930 (regOne!18931 r!17423)))))))

(declare-fun b!2962796 () Bool)

(assert (=> b!2962796 (= e!1864864 e!1864862)))

(assert (=> b!2962796 (= c!485678 ((_ is Union!9209) (regOne!18931 r!17423)))))

(declare-fun b!2962797 () Bool)

(assert (=> b!2962797 (= e!1864865 call!196634)))

(declare-fun b!2962798 () Bool)

(declare-fun res!1222249 () Bool)

(assert (=> b!2962798 (=> (not res!1222249) (not e!1864861))))

(assert (=> b!2962798 (= res!1222249 call!196633)))

(assert (=> b!2962798 (= e!1864862 e!1864861)))

(declare-fun bm!196629 () Bool)

(assert (=> bm!196629 (= call!196634 (validRegex!3942 (ite c!485679 (reg!9538 (regOne!18931 r!17423)) (ite c!485678 (regTwo!18931 (regOne!18931 r!17423)) (regOne!18930 (regOne!18931 r!17423))))))))

(declare-fun b!2962799 () Bool)

(assert (=> b!2962799 (= e!1864863 call!196633)))

(assert (= (and d!842128 (not res!1222252)) b!2962794))

(assert (= (and b!2962794 c!485679) b!2962792))

(assert (= (and b!2962794 (not c!485679)) b!2962796))

(assert (= (and b!2962792 res!1222248) b!2962797))

(assert (= (and b!2962796 c!485678) b!2962798))

(assert (= (and b!2962796 (not c!485678)) b!2962793))

(assert (= (and b!2962798 res!1222249) b!2962795))

(assert (= (and b!2962793 (not res!1222250)) b!2962791))

(assert (= (and b!2962791 res!1222251) b!2962799))

(assert (= (or b!2962798 b!2962799) bm!196628))

(assert (= (or b!2962795 b!2962791) bm!196627))

(assert (= (or b!2962797 bm!196627) bm!196629))

(declare-fun m!3335063 () Bool)

(assert (=> b!2962792 m!3335063))

(declare-fun m!3335065 () Bool)

(assert (=> bm!196628 m!3335065))

(declare-fun m!3335067 () Bool)

(assert (=> bm!196629 m!3335067))

(assert (=> b!2962633 d!842128))

(declare-fun b!2962828 () Bool)

(declare-fun e!1864883 () Bool)

(declare-fun e!1864882 () Bool)

(assert (=> b!2962828 (= e!1864883 e!1864882)))

(declare-fun c!485688 () Bool)

(assert (=> b!2962828 (= c!485688 ((_ is EmptyLang!9209) (regOne!18931 r!17423)))))

(declare-fun b!2962829 () Bool)

(declare-fun res!1222276 () Bool)

(declare-fun e!1864886 () Bool)

(assert (=> b!2962829 (=> (not res!1222276) (not e!1864886))))

(declare-fun isEmpty!19221 (List!35074) Bool)

(declare-fun tail!4827 (List!35074) List!35074)

(assert (=> b!2962829 (= res!1222276 (isEmpty!19221 (tail!4827 s!11993)))))

(declare-fun bm!196632 () Bool)

(declare-fun call!196637 () Bool)

(assert (=> bm!196632 (= call!196637 (isEmpty!19221 s!11993))))

(declare-fun b!2962830 () Bool)

(declare-fun head!6601 (List!35074) C!18604)

(assert (=> b!2962830 (= e!1864886 (= (head!6601 s!11993) (c!485619 (regOne!18931 r!17423))))))

(declare-fun b!2962831 () Bool)

(declare-fun res!1222272 () Bool)

(declare-fun e!1864884 () Bool)

(assert (=> b!2962831 (=> res!1222272 e!1864884)))

(assert (=> b!2962831 (= res!1222272 e!1864886)))

(declare-fun res!1222274 () Bool)

(assert (=> b!2962831 (=> (not res!1222274) (not e!1864886))))

(declare-fun lt!1034553 () Bool)

(assert (=> b!2962831 (= res!1222274 lt!1034553)))

(declare-fun b!2962832 () Bool)

(declare-fun e!1864885 () Bool)

(assert (=> b!2962832 (= e!1864885 (not (= (head!6601 s!11993) (c!485619 (regOne!18931 r!17423)))))))

(declare-fun b!2962834 () Bool)

(declare-fun res!1222275 () Bool)

(assert (=> b!2962834 (=> res!1222275 e!1864884)))

(assert (=> b!2962834 (= res!1222275 (not ((_ is ElementMatch!9209) (regOne!18931 r!17423))))))

(assert (=> b!2962834 (= e!1864882 e!1864884)))

(declare-fun b!2962835 () Bool)

(declare-fun res!1222269 () Bool)

(assert (=> b!2962835 (=> res!1222269 e!1864885)))

(assert (=> b!2962835 (= res!1222269 (not (isEmpty!19221 (tail!4827 s!11993))))))

(declare-fun b!2962836 () Bool)

(declare-fun e!1864888 () Bool)

(assert (=> b!2962836 (= e!1864884 e!1864888)))

(declare-fun res!1222270 () Bool)

(assert (=> b!2962836 (=> (not res!1222270) (not e!1864888))))

(assert (=> b!2962836 (= res!1222270 (not lt!1034553))))

(declare-fun b!2962837 () Bool)

(declare-fun res!1222273 () Bool)

(assert (=> b!2962837 (=> (not res!1222273) (not e!1864886))))

(assert (=> b!2962837 (= res!1222273 (not call!196637))))

(declare-fun b!2962838 () Bool)

(declare-fun e!1864887 () Bool)

(assert (=> b!2962838 (= e!1864887 (nullable!2940 (regOne!18931 r!17423)))))

(declare-fun b!2962839 () Bool)

(assert (=> b!2962839 (= e!1864883 (= lt!1034553 call!196637))))

(declare-fun b!2962840 () Bool)

(assert (=> b!2962840 (= e!1864882 (not lt!1034553))))

(declare-fun b!2962841 () Bool)

(declare-fun derivativeStep!2542 (Regex!9209 C!18604) Regex!9209)

(assert (=> b!2962841 (= e!1864887 (matchR!4091 (derivativeStep!2542 (regOne!18931 r!17423) (head!6601 s!11993)) (tail!4827 s!11993)))))

(declare-fun d!842130 () Bool)

(assert (=> d!842130 e!1864883))

(declare-fun c!485687 () Bool)

(assert (=> d!842130 (= c!485687 ((_ is EmptyExpr!9209) (regOne!18931 r!17423)))))

(assert (=> d!842130 (= lt!1034553 e!1864887)))

(declare-fun c!485686 () Bool)

(assert (=> d!842130 (= c!485686 (isEmpty!19221 s!11993))))

(assert (=> d!842130 (validRegex!3942 (regOne!18931 r!17423))))

(assert (=> d!842130 (= (matchR!4091 (regOne!18931 r!17423) s!11993) lt!1034553)))

(declare-fun b!2962833 () Bool)

(assert (=> b!2962833 (= e!1864888 e!1864885)))

(declare-fun res!1222271 () Bool)

(assert (=> b!2962833 (=> res!1222271 e!1864885)))

(assert (=> b!2962833 (= res!1222271 call!196637)))

(assert (= (and d!842130 c!485686) b!2962838))

(assert (= (and d!842130 (not c!485686)) b!2962841))

(assert (= (and d!842130 c!485687) b!2962839))

(assert (= (and d!842130 (not c!485687)) b!2962828))

(assert (= (and b!2962828 c!485688) b!2962840))

(assert (= (and b!2962828 (not c!485688)) b!2962834))

(assert (= (and b!2962834 (not res!1222275)) b!2962831))

(assert (= (and b!2962831 res!1222274) b!2962837))

(assert (= (and b!2962837 res!1222273) b!2962829))

(assert (= (and b!2962829 res!1222276) b!2962830))

(assert (= (and b!2962831 (not res!1222272)) b!2962836))

(assert (= (and b!2962836 res!1222270) b!2962833))

(assert (= (and b!2962833 (not res!1222271)) b!2962835))

(assert (= (and b!2962835 (not res!1222269)) b!2962832))

(assert (= (or b!2962839 b!2962833 b!2962837) bm!196632))

(declare-fun m!3335069 () Bool)

(assert (=> b!2962835 m!3335069))

(assert (=> b!2962835 m!3335069))

(declare-fun m!3335071 () Bool)

(assert (=> b!2962835 m!3335071))

(assert (=> b!2962829 m!3335069))

(assert (=> b!2962829 m!3335069))

(assert (=> b!2962829 m!3335071))

(declare-fun m!3335073 () Bool)

(assert (=> d!842130 m!3335073))

(assert (=> d!842130 m!3335011))

(declare-fun m!3335075 () Bool)

(assert (=> b!2962841 m!3335075))

(assert (=> b!2962841 m!3335075))

(declare-fun m!3335077 () Bool)

(assert (=> b!2962841 m!3335077))

(assert (=> b!2962841 m!3335069))

(assert (=> b!2962841 m!3335077))

(assert (=> b!2962841 m!3335069))

(declare-fun m!3335079 () Bool)

(assert (=> b!2962841 m!3335079))

(assert (=> b!2962830 m!3335075))

(assert (=> b!2962832 m!3335075))

(assert (=> b!2962838 m!3335041))

(assert (=> bm!196632 m!3335073))

(assert (=> b!2962633 d!842130))

(declare-fun b!2962842 () Bool)

(declare-fun e!1864890 () Bool)

(declare-fun e!1864889 () Bool)

(assert (=> b!2962842 (= e!1864890 e!1864889)))

(declare-fun c!485691 () Bool)

(assert (=> b!2962842 (= c!485691 ((_ is EmptyLang!9209) lt!1034523))))

(declare-fun b!2962843 () Bool)

(declare-fun res!1222284 () Bool)

(declare-fun e!1864893 () Bool)

(assert (=> b!2962843 (=> (not res!1222284) (not e!1864893))))

(assert (=> b!2962843 (= res!1222284 (isEmpty!19221 (tail!4827 s!11993)))))

(declare-fun bm!196633 () Bool)

(declare-fun call!196638 () Bool)

(assert (=> bm!196633 (= call!196638 (isEmpty!19221 s!11993))))

(declare-fun b!2962844 () Bool)

(assert (=> b!2962844 (= e!1864893 (= (head!6601 s!11993) (c!485619 lt!1034523)))))

(declare-fun b!2962845 () Bool)

(declare-fun res!1222280 () Bool)

(declare-fun e!1864891 () Bool)

(assert (=> b!2962845 (=> res!1222280 e!1864891)))

(assert (=> b!2962845 (= res!1222280 e!1864893)))

(declare-fun res!1222282 () Bool)

(assert (=> b!2962845 (=> (not res!1222282) (not e!1864893))))

(declare-fun lt!1034554 () Bool)

(assert (=> b!2962845 (= res!1222282 lt!1034554)))

(declare-fun b!2962846 () Bool)

(declare-fun e!1864892 () Bool)

(assert (=> b!2962846 (= e!1864892 (not (= (head!6601 s!11993) (c!485619 lt!1034523))))))

(declare-fun b!2962848 () Bool)

(declare-fun res!1222283 () Bool)

(assert (=> b!2962848 (=> res!1222283 e!1864891)))

(assert (=> b!2962848 (= res!1222283 (not ((_ is ElementMatch!9209) lt!1034523)))))

(assert (=> b!2962848 (= e!1864889 e!1864891)))

(declare-fun b!2962849 () Bool)

(declare-fun res!1222277 () Bool)

(assert (=> b!2962849 (=> res!1222277 e!1864892)))

(assert (=> b!2962849 (= res!1222277 (not (isEmpty!19221 (tail!4827 s!11993))))))

(declare-fun b!2962850 () Bool)

(declare-fun e!1864895 () Bool)

(assert (=> b!2962850 (= e!1864891 e!1864895)))

(declare-fun res!1222278 () Bool)

(assert (=> b!2962850 (=> (not res!1222278) (not e!1864895))))

(assert (=> b!2962850 (= res!1222278 (not lt!1034554))))

(declare-fun b!2962851 () Bool)

(declare-fun res!1222281 () Bool)

(assert (=> b!2962851 (=> (not res!1222281) (not e!1864893))))

(assert (=> b!2962851 (= res!1222281 (not call!196638))))

(declare-fun b!2962852 () Bool)

(declare-fun e!1864894 () Bool)

(assert (=> b!2962852 (= e!1864894 (nullable!2940 lt!1034523))))

(declare-fun b!2962853 () Bool)

(assert (=> b!2962853 (= e!1864890 (= lt!1034554 call!196638))))

(declare-fun b!2962854 () Bool)

(assert (=> b!2962854 (= e!1864889 (not lt!1034554))))

(declare-fun b!2962855 () Bool)

(assert (=> b!2962855 (= e!1864894 (matchR!4091 (derivativeStep!2542 lt!1034523 (head!6601 s!11993)) (tail!4827 s!11993)))))

(declare-fun d!842132 () Bool)

(assert (=> d!842132 e!1864890))

(declare-fun c!485690 () Bool)

(assert (=> d!842132 (= c!485690 ((_ is EmptyExpr!9209) lt!1034523))))

(assert (=> d!842132 (= lt!1034554 e!1864894)))

(declare-fun c!485689 () Bool)

(assert (=> d!842132 (= c!485689 (isEmpty!19221 s!11993))))

(assert (=> d!842132 (validRegex!3942 lt!1034523)))

(assert (=> d!842132 (= (matchR!4091 lt!1034523 s!11993) lt!1034554)))

(declare-fun b!2962847 () Bool)

(assert (=> b!2962847 (= e!1864895 e!1864892)))

(declare-fun res!1222279 () Bool)

(assert (=> b!2962847 (=> res!1222279 e!1864892)))

(assert (=> b!2962847 (= res!1222279 call!196638)))

(assert (= (and d!842132 c!485689) b!2962852))

(assert (= (and d!842132 (not c!485689)) b!2962855))

(assert (= (and d!842132 c!485690) b!2962853))

(assert (= (and d!842132 (not c!485690)) b!2962842))

(assert (= (and b!2962842 c!485691) b!2962854))

(assert (= (and b!2962842 (not c!485691)) b!2962848))

(assert (= (and b!2962848 (not res!1222283)) b!2962845))

(assert (= (and b!2962845 res!1222282) b!2962851))

(assert (= (and b!2962851 res!1222281) b!2962843))

(assert (= (and b!2962843 res!1222284) b!2962844))

(assert (= (and b!2962845 (not res!1222280)) b!2962850))

(assert (= (and b!2962850 res!1222278) b!2962847))

(assert (= (and b!2962847 (not res!1222279)) b!2962849))

(assert (= (and b!2962849 (not res!1222277)) b!2962846))

(assert (= (or b!2962853 b!2962847 b!2962851) bm!196633))

(assert (=> b!2962849 m!3335069))

(assert (=> b!2962849 m!3335069))

(assert (=> b!2962849 m!3335071))

(assert (=> b!2962843 m!3335069))

(assert (=> b!2962843 m!3335069))

(assert (=> b!2962843 m!3335071))

(assert (=> d!842132 m!3335073))

(declare-fun m!3335081 () Bool)

(assert (=> d!842132 m!3335081))

(assert (=> b!2962855 m!3335075))

(assert (=> b!2962855 m!3335075))

(declare-fun m!3335083 () Bool)

(assert (=> b!2962855 m!3335083))

(assert (=> b!2962855 m!3335069))

(assert (=> b!2962855 m!3335083))

(assert (=> b!2962855 m!3335069))

(declare-fun m!3335085 () Bool)

(assert (=> b!2962855 m!3335085))

(assert (=> b!2962844 m!3335075))

(assert (=> b!2962846 m!3335075))

(declare-fun m!3335087 () Bool)

(assert (=> b!2962852 m!3335087))

(assert (=> bm!196633 m!3335073))

(assert (=> b!2962633 d!842132))

(declare-fun d!842134 () Bool)

(assert (=> d!842134 (= (matchR!4091 (regOne!18931 r!17423) s!11993) (matchR!4091 (simplify!212 (regOne!18931 r!17423)) s!11993))))

(declare-fun lt!1034557 () Unit!48797)

(declare-fun choose!17528 (Regex!9209 List!35074) Unit!48797)

(assert (=> d!842134 (= lt!1034557 (choose!17528 (regOne!18931 r!17423) s!11993))))

(assert (=> d!842134 (validRegex!3942 (regOne!18931 r!17423))))

(assert (=> d!842134 (= (lemmaSimplifySound!136 (regOne!18931 r!17423) s!11993) lt!1034557)))

(declare-fun bs!526366 () Bool)

(assert (= bs!526366 d!842134))

(assert (=> bs!526366 m!3335003))

(declare-fun m!3335089 () Bool)

(assert (=> bs!526366 m!3335089))

(assert (=> bs!526366 m!3335003))

(declare-fun m!3335091 () Bool)

(assert (=> bs!526366 m!3335091))

(assert (=> bs!526366 m!3335011))

(assert (=> bs!526366 m!3335013))

(assert (=> b!2962633 d!842134))

(declare-fun b!2963156 () Bool)

(assert (=> b!2963156 true))

(assert (=> b!2963156 true))

(declare-fun bs!526370 () Bool)

(declare-fun b!2963157 () Bool)

(assert (= bs!526370 (and b!2963157 b!2963156)))

(declare-fun lambda!110410 () Int)

(declare-fun lambda!110409 () Int)

(assert (=> bs!526370 (not (= lambda!110410 lambda!110409))))

(assert (=> b!2963157 true))

(assert (=> b!2963157 true))

(declare-fun b!2963154 () Bool)

(declare-fun c!485772 () Bool)

(assert (=> b!2963154 (= c!485772 ((_ is ElementMatch!9209) r!17423))))

(declare-fun e!1865056 () Bool)

(declare-fun e!1865057 () Bool)

(assert (=> b!2963154 (= e!1865056 e!1865057)))

(declare-fun b!2963155 () Bool)

(declare-fun e!1865059 () Bool)

(assert (=> b!2963155 (= e!1865059 e!1865056)))

(declare-fun res!1222388 () Bool)

(assert (=> b!2963155 (= res!1222388 (not ((_ is EmptyLang!9209) r!17423)))))

(assert (=> b!2963155 (=> (not res!1222388) (not e!1865056))))

(declare-fun e!1865054 () Bool)

(declare-fun call!196694 () Bool)

(assert (=> b!2963156 (= e!1865054 call!196694)))

(declare-fun d!842136 () Bool)

(declare-fun c!485774 () Bool)

(assert (=> d!842136 (= c!485774 ((_ is EmptyExpr!9209) r!17423))))

(assert (=> d!842136 (= (matchRSpec!1346 r!17423 s!11993) e!1865059)))

(declare-fun e!1865060 () Bool)

(assert (=> b!2963157 (= e!1865060 call!196694)))

(declare-fun b!2963158 () Bool)

(declare-fun c!485773 () Bool)

(assert (=> b!2963158 (= c!485773 ((_ is Union!9209) r!17423))))

(declare-fun e!1865058 () Bool)

(assert (=> b!2963158 (= e!1865057 e!1865058)))

(declare-fun bm!196689 () Bool)

(declare-fun call!196695 () Bool)

(assert (=> bm!196689 (= call!196695 (isEmpty!19221 s!11993))))

(declare-fun c!485771 () Bool)

(declare-fun bm!196690 () Bool)

(declare-fun Exists!1526 (Int) Bool)

(assert (=> bm!196690 (= call!196694 (Exists!1526 (ite c!485771 lambda!110409 lambda!110410)))))

(declare-fun b!2963159 () Bool)

(declare-fun e!1865055 () Bool)

(assert (=> b!2963159 (= e!1865055 (matchRSpec!1346 (regTwo!18931 r!17423) s!11993))))

(declare-fun b!2963160 () Bool)

(assert (=> b!2963160 (= e!1865058 e!1865060)))

(assert (=> b!2963160 (= c!485771 ((_ is Star!9209) r!17423))))

(declare-fun b!2963161 () Bool)

(declare-fun res!1222387 () Bool)

(assert (=> b!2963161 (=> res!1222387 e!1865054)))

(assert (=> b!2963161 (= res!1222387 call!196695)))

(assert (=> b!2963161 (= e!1865060 e!1865054)))

(declare-fun b!2963162 () Bool)

(assert (=> b!2963162 (= e!1865058 e!1865055)))

(declare-fun res!1222386 () Bool)

(assert (=> b!2963162 (= res!1222386 (matchRSpec!1346 (regOne!18931 r!17423) s!11993))))

(assert (=> b!2963162 (=> res!1222386 e!1865055)))

(declare-fun b!2963163 () Bool)

(assert (=> b!2963163 (= e!1865059 call!196695)))

(declare-fun b!2963164 () Bool)

(assert (=> b!2963164 (= e!1865057 (= s!11993 (Cons!34950 (c!485619 r!17423) Nil!34950)))))

(assert (= (and d!842136 c!485774) b!2963163))

(assert (= (and d!842136 (not c!485774)) b!2963155))

(assert (= (and b!2963155 res!1222388) b!2963154))

(assert (= (and b!2963154 c!485772) b!2963164))

(assert (= (and b!2963154 (not c!485772)) b!2963158))

(assert (= (and b!2963158 c!485773) b!2963162))

(assert (= (and b!2963158 (not c!485773)) b!2963160))

(assert (= (and b!2963162 (not res!1222386)) b!2963159))

(assert (= (and b!2963160 c!485771) b!2963161))

(assert (= (and b!2963160 (not c!485771)) b!2963157))

(assert (= (and b!2963161 (not res!1222387)) b!2963156))

(assert (= (or b!2963156 b!2963157) bm!196690))

(assert (= (or b!2963163 b!2963161) bm!196689))

(assert (=> bm!196689 m!3335073))

(declare-fun m!3335181 () Bool)

(assert (=> bm!196690 m!3335181))

(declare-fun m!3335183 () Bool)

(assert (=> b!2963159 m!3335183))

(declare-fun m!3335185 () Bool)

(assert (=> b!2963162 m!3335185))

(assert (=> b!2962639 d!842136))

(declare-fun b!2963169 () Bool)

(declare-fun e!1865062 () Bool)

(declare-fun e!1865061 () Bool)

(assert (=> b!2963169 (= e!1865062 e!1865061)))

(declare-fun c!485777 () Bool)

(assert (=> b!2963169 (= c!485777 ((_ is EmptyLang!9209) r!17423))))

(declare-fun b!2963170 () Bool)

(declare-fun res!1222396 () Bool)

(declare-fun e!1865065 () Bool)

(assert (=> b!2963170 (=> (not res!1222396) (not e!1865065))))

(assert (=> b!2963170 (= res!1222396 (isEmpty!19221 (tail!4827 s!11993)))))

(declare-fun bm!196691 () Bool)

(declare-fun call!196696 () Bool)

(assert (=> bm!196691 (= call!196696 (isEmpty!19221 s!11993))))

(declare-fun b!2963171 () Bool)

(assert (=> b!2963171 (= e!1865065 (= (head!6601 s!11993) (c!485619 r!17423)))))

(declare-fun b!2963172 () Bool)

(declare-fun res!1222392 () Bool)

(declare-fun e!1865063 () Bool)

(assert (=> b!2963172 (=> res!1222392 e!1865063)))

(assert (=> b!2963172 (= res!1222392 e!1865065)))

(declare-fun res!1222394 () Bool)

(assert (=> b!2963172 (=> (not res!1222394) (not e!1865065))))

(declare-fun lt!1034593 () Bool)

(assert (=> b!2963172 (= res!1222394 lt!1034593)))

(declare-fun b!2963173 () Bool)

(declare-fun e!1865064 () Bool)

(assert (=> b!2963173 (= e!1865064 (not (= (head!6601 s!11993) (c!485619 r!17423))))))

(declare-fun b!2963175 () Bool)

(declare-fun res!1222395 () Bool)

(assert (=> b!2963175 (=> res!1222395 e!1865063)))

(assert (=> b!2963175 (= res!1222395 (not ((_ is ElementMatch!9209) r!17423)))))

(assert (=> b!2963175 (= e!1865061 e!1865063)))

(declare-fun b!2963176 () Bool)

(declare-fun res!1222389 () Bool)

(assert (=> b!2963176 (=> res!1222389 e!1865064)))

(assert (=> b!2963176 (= res!1222389 (not (isEmpty!19221 (tail!4827 s!11993))))))

(declare-fun b!2963177 () Bool)

(declare-fun e!1865067 () Bool)

(assert (=> b!2963177 (= e!1865063 e!1865067)))

(declare-fun res!1222390 () Bool)

(assert (=> b!2963177 (=> (not res!1222390) (not e!1865067))))

(assert (=> b!2963177 (= res!1222390 (not lt!1034593))))

(declare-fun b!2963178 () Bool)

(declare-fun res!1222393 () Bool)

(assert (=> b!2963178 (=> (not res!1222393) (not e!1865065))))

(assert (=> b!2963178 (= res!1222393 (not call!196696))))

(declare-fun b!2963179 () Bool)

(declare-fun e!1865066 () Bool)

(assert (=> b!2963179 (= e!1865066 (nullable!2940 r!17423))))

(declare-fun b!2963180 () Bool)

(assert (=> b!2963180 (= e!1865062 (= lt!1034593 call!196696))))

(declare-fun b!2963181 () Bool)

(assert (=> b!2963181 (= e!1865061 (not lt!1034593))))

(declare-fun b!2963182 () Bool)

(assert (=> b!2963182 (= e!1865066 (matchR!4091 (derivativeStep!2542 r!17423 (head!6601 s!11993)) (tail!4827 s!11993)))))

(declare-fun d!842160 () Bool)

(assert (=> d!842160 e!1865062))

(declare-fun c!485776 () Bool)

(assert (=> d!842160 (= c!485776 ((_ is EmptyExpr!9209) r!17423))))

(assert (=> d!842160 (= lt!1034593 e!1865066)))

(declare-fun c!485775 () Bool)

(assert (=> d!842160 (= c!485775 (isEmpty!19221 s!11993))))

(assert (=> d!842160 (validRegex!3942 r!17423)))

(assert (=> d!842160 (= (matchR!4091 r!17423 s!11993) lt!1034593)))

(declare-fun b!2963174 () Bool)

(assert (=> b!2963174 (= e!1865067 e!1865064)))

(declare-fun res!1222391 () Bool)

(assert (=> b!2963174 (=> res!1222391 e!1865064)))

(assert (=> b!2963174 (= res!1222391 call!196696)))

(assert (= (and d!842160 c!485775) b!2963179))

(assert (= (and d!842160 (not c!485775)) b!2963182))

(assert (= (and d!842160 c!485776) b!2963180))

(assert (= (and d!842160 (not c!485776)) b!2963169))

(assert (= (and b!2963169 c!485777) b!2963181))

(assert (= (and b!2963169 (not c!485777)) b!2963175))

(assert (= (and b!2963175 (not res!1222395)) b!2963172))

(assert (= (and b!2963172 res!1222394) b!2963178))

(assert (= (and b!2963178 res!1222393) b!2963170))

(assert (= (and b!2963170 res!1222396) b!2963171))

(assert (= (and b!2963172 (not res!1222392)) b!2963177))

(assert (= (and b!2963177 res!1222390) b!2963174))

(assert (= (and b!2963174 (not res!1222391)) b!2963176))

(assert (= (and b!2963176 (not res!1222389)) b!2963173))

(assert (= (or b!2963180 b!2963174 b!2963178) bm!196691))

(assert (=> b!2963176 m!3335069))

(assert (=> b!2963176 m!3335069))

(assert (=> b!2963176 m!3335071))

(assert (=> b!2963170 m!3335069))

(assert (=> b!2963170 m!3335069))

(assert (=> b!2963170 m!3335071))

(assert (=> d!842160 m!3335073))

(assert (=> d!842160 m!3334995))

(assert (=> b!2963182 m!3335075))

(assert (=> b!2963182 m!3335075))

(declare-fun m!3335187 () Bool)

(assert (=> b!2963182 m!3335187))

(assert (=> b!2963182 m!3335069))

(assert (=> b!2963182 m!3335187))

(assert (=> b!2963182 m!3335069))

(declare-fun m!3335189 () Bool)

(assert (=> b!2963182 m!3335189))

(assert (=> b!2963171 m!3335075))

(assert (=> b!2963173 m!3335075))

(declare-fun m!3335191 () Bool)

(assert (=> b!2963179 m!3335191))

(assert (=> bm!196691 m!3335073))

(assert (=> b!2962639 d!842160))

(declare-fun d!842162 () Bool)

(assert (=> d!842162 (= (matchR!4091 r!17423 s!11993) (matchRSpec!1346 r!17423 s!11993))))

(declare-fun lt!1034596 () Unit!48797)

(declare-fun choose!17529 (Regex!9209 List!35074) Unit!48797)

(assert (=> d!842162 (= lt!1034596 (choose!17529 r!17423 s!11993))))

(assert (=> d!842162 (validRegex!3942 r!17423)))

(assert (=> d!842162 (= (mainMatchTheorem!1346 r!17423 s!11993) lt!1034596)))

(declare-fun bs!526371 () Bool)

(assert (= bs!526371 d!842162))

(assert (=> bs!526371 m!3335007))

(assert (=> bs!526371 m!3335005))

(declare-fun m!3335193 () Bool)

(assert (=> bs!526371 m!3335193))

(assert (=> bs!526371 m!3334995))

(assert (=> b!2962639 d!842162))

(declare-fun b!2963194 () Bool)

(declare-fun e!1865070 () Bool)

(declare-fun tp!945468 () Bool)

(declare-fun tp!945466 () Bool)

(assert (=> b!2963194 (= e!1865070 (and tp!945468 tp!945466))))

(declare-fun b!2963193 () Bool)

(assert (=> b!2963193 (= e!1865070 tp_is_empty!15981)))

(declare-fun b!2963195 () Bool)

(declare-fun tp!945470 () Bool)

(assert (=> b!2963195 (= e!1865070 tp!945470)))

(assert (=> b!2962641 (= tp!945413 e!1865070)))

(declare-fun b!2963196 () Bool)

(declare-fun tp!945467 () Bool)

(declare-fun tp!945469 () Bool)

(assert (=> b!2963196 (= e!1865070 (and tp!945467 tp!945469))))

(assert (= (and b!2962641 ((_ is ElementMatch!9209) (regOne!18931 r!17423))) b!2963193))

(assert (= (and b!2962641 ((_ is Concat!14530) (regOne!18931 r!17423))) b!2963194))

(assert (= (and b!2962641 ((_ is Star!9209) (regOne!18931 r!17423))) b!2963195))

(assert (= (and b!2962641 ((_ is Union!9209) (regOne!18931 r!17423))) b!2963196))

(declare-fun b!2963198 () Bool)

(declare-fun e!1865071 () Bool)

(declare-fun tp!945473 () Bool)

(declare-fun tp!945471 () Bool)

(assert (=> b!2963198 (= e!1865071 (and tp!945473 tp!945471))))

(declare-fun b!2963197 () Bool)

(assert (=> b!2963197 (= e!1865071 tp_is_empty!15981)))

(declare-fun b!2963199 () Bool)

(declare-fun tp!945475 () Bool)

(assert (=> b!2963199 (= e!1865071 tp!945475)))

(assert (=> b!2962641 (= tp!945415 e!1865071)))

(declare-fun b!2963200 () Bool)

(declare-fun tp!945472 () Bool)

(declare-fun tp!945474 () Bool)

(assert (=> b!2963200 (= e!1865071 (and tp!945472 tp!945474))))

(assert (= (and b!2962641 ((_ is ElementMatch!9209) (regTwo!18931 r!17423))) b!2963197))

(assert (= (and b!2962641 ((_ is Concat!14530) (regTwo!18931 r!17423))) b!2963198))

(assert (= (and b!2962641 ((_ is Star!9209) (regTwo!18931 r!17423))) b!2963199))

(assert (= (and b!2962641 ((_ is Union!9209) (regTwo!18931 r!17423))) b!2963200))

(declare-fun b!2963205 () Bool)

(declare-fun e!1865074 () Bool)

(declare-fun tp!945478 () Bool)

(assert (=> b!2963205 (= e!1865074 (and tp_is_empty!15981 tp!945478))))

(assert (=> b!2962638 (= tp!945417 e!1865074)))

(assert (= (and b!2962638 ((_ is Cons!34950) (t!234139 s!11993))) b!2963205))

(declare-fun b!2963207 () Bool)

(declare-fun e!1865075 () Bool)

(declare-fun tp!945481 () Bool)

(declare-fun tp!945479 () Bool)

(assert (=> b!2963207 (= e!1865075 (and tp!945481 tp!945479))))

(declare-fun b!2963206 () Bool)

(assert (=> b!2963206 (= e!1865075 tp_is_empty!15981)))

(declare-fun b!2963208 () Bool)

(declare-fun tp!945483 () Bool)

(assert (=> b!2963208 (= e!1865075 tp!945483)))

(assert (=> b!2962634 (= tp!945414 e!1865075)))

(declare-fun b!2963209 () Bool)

(declare-fun tp!945480 () Bool)

(declare-fun tp!945482 () Bool)

(assert (=> b!2963209 (= e!1865075 (and tp!945480 tp!945482))))

(assert (= (and b!2962634 ((_ is ElementMatch!9209) (reg!9538 r!17423))) b!2963206))

(assert (= (and b!2962634 ((_ is Concat!14530) (reg!9538 r!17423))) b!2963207))

(assert (= (and b!2962634 ((_ is Star!9209) (reg!9538 r!17423))) b!2963208))

(assert (= (and b!2962634 ((_ is Union!9209) (reg!9538 r!17423))) b!2963209))

(declare-fun b!2963211 () Bool)

(declare-fun e!1865076 () Bool)

(declare-fun tp!945486 () Bool)

(declare-fun tp!945484 () Bool)

(assert (=> b!2963211 (= e!1865076 (and tp!945486 tp!945484))))

(declare-fun b!2963210 () Bool)

(assert (=> b!2963210 (= e!1865076 tp_is_empty!15981)))

(declare-fun b!2963212 () Bool)

(declare-fun tp!945488 () Bool)

(assert (=> b!2963212 (= e!1865076 tp!945488)))

(assert (=> b!2962640 (= tp!945416 e!1865076)))

(declare-fun b!2963213 () Bool)

(declare-fun tp!945485 () Bool)

(declare-fun tp!945487 () Bool)

(assert (=> b!2963213 (= e!1865076 (and tp!945485 tp!945487))))

(assert (= (and b!2962640 ((_ is ElementMatch!9209) (regOne!18930 r!17423))) b!2963210))

(assert (= (and b!2962640 ((_ is Concat!14530) (regOne!18930 r!17423))) b!2963211))

(assert (= (and b!2962640 ((_ is Star!9209) (regOne!18930 r!17423))) b!2963212))

(assert (= (and b!2962640 ((_ is Union!9209) (regOne!18930 r!17423))) b!2963213))

(declare-fun b!2963215 () Bool)

(declare-fun e!1865077 () Bool)

(declare-fun tp!945491 () Bool)

(declare-fun tp!945489 () Bool)

(assert (=> b!2963215 (= e!1865077 (and tp!945491 tp!945489))))

(declare-fun b!2963214 () Bool)

(assert (=> b!2963214 (= e!1865077 tp_is_empty!15981)))

(declare-fun b!2963216 () Bool)

(declare-fun tp!945493 () Bool)

(assert (=> b!2963216 (= e!1865077 tp!945493)))

(assert (=> b!2962640 (= tp!945412 e!1865077)))

(declare-fun b!2963217 () Bool)

(declare-fun tp!945490 () Bool)

(declare-fun tp!945492 () Bool)

(assert (=> b!2963217 (= e!1865077 (and tp!945490 tp!945492))))

(assert (= (and b!2962640 ((_ is ElementMatch!9209) (regTwo!18930 r!17423))) b!2963214))

(assert (= (and b!2962640 ((_ is Concat!14530) (regTwo!18930 r!17423))) b!2963215))

(assert (= (and b!2962640 ((_ is Star!9209) (regTwo!18930 r!17423))) b!2963216))

(assert (= (and b!2962640 ((_ is Union!9209) (regTwo!18930 r!17423))) b!2963217))

(check-sat (not bm!196612) (not bm!196689) (not b!2962720) (not b!2962855) (not b!2963198) (not b!2962783) (not d!842132) (not b!2962733) (not b!2963170) (not bm!196617) (not b!2963196) (not bm!196625) (not b!2963182) (not b!2963205) (not bm!196690) (not b!2963213) (not d!842122) tp_is_empty!15981 (not b!2963171) (not b!2963215) (not bm!196610) (not b!2963209) (not b!2962846) (not bm!196633) (not b!2962835) (not bm!196609) (not bm!196629) (not b!2963217) (not b!2963195) (not b!2962844) (not b!2963176) (not d!842120) (not bm!196605) (not d!842134) (not b!2963208) (not bm!196608) (not b!2962838) (not b!2962758) (not b!2963194) (not b!2963207) (not bm!196632) (not b!2962745) (not d!842162) (not b!2963159) (not d!842130) (not b!2962852) (not b!2963212) (not b!2963200) (not bm!196616) (not bm!196615) (not b!2962832) (not b!2962829) (not bm!196691) (not b!2963162) (not bm!196606) (not b!2963173) (not b!2962841) (not b!2962849) (not b!2963211) (not b!2963199) (not b!2962843) (not d!842160) (not b!2962830) (not bm!196613) (not bm!196626) (not bm!196628) (not b!2963179) (not b!2962792) (not b!2963216))
(check-sat)
