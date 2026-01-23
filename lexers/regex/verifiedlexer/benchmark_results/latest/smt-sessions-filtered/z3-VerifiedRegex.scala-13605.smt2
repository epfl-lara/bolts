; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731060 () Bool)

(assert start!731060)

(declare-fun b!7569686 () Bool)

(declare-datatypes ((C!40336 0))(
  ( (C!40337 (val!30608 Int)) )
))
(declare-datatypes ((List!72888 0))(
  ( (Nil!72764) (Cons!72764 (h!79212 C!40336) (t!387623 List!72888)) )
))
(declare-fun lt!2651055 () List!72888)

(declare-fun e!4506670 () Bool)

(declare-fun testedP!418 () List!72888)

(declare-fun input!7855 () List!72888)

(declare-fun ++!17491 (List!72888 List!72888) List!72888)

(assert (=> b!7569686 (= e!4506670 (= (++!17491 testedP!418 lt!2651055) input!7855))))

(declare-fun lt!2651054 () Int)

(declare-fun size!42489 (List!72888) Int)

(assert (=> b!7569686 (= lt!2651054 (size!42489 input!7855))))

(declare-fun getSuffix!3673 (List!72888 List!72888) List!72888)

(assert (=> b!7569686 (= lt!2651055 (getSuffix!3673 input!7855 testedP!418))))

(declare-fun lt!2651057 () Int)

(assert (=> b!7569686 (= lt!2651057 (size!42489 testedP!418))))

(declare-fun b!7569687 () Bool)

(declare-fun e!4506665 () Bool)

(declare-fun e!4506669 () Bool)

(assert (=> b!7569687 (= e!4506665 e!4506669)))

(declare-fun res!3032490 () Bool)

(assert (=> b!7569687 (=> (not res!3032490) (not e!4506669))))

(declare-datatypes ((Regex!20005 0))(
  ( (ElementMatch!20005 (c!1396700 C!40336)) (Concat!28850 (regOne!40522 Regex!20005) (regTwo!40522 Regex!20005)) (EmptyExpr!20005) (Star!20005 (reg!20334 Regex!20005)) (EmptyLang!20005) (Union!20005 (regOne!40523 Regex!20005) (regTwo!40523 Regex!20005)) )
))
(declare-fun lt!2651058 () Regex!20005)

(declare-fun r!24129 () Regex!20005)

(assert (=> b!7569687 (= res!3032490 (= lt!2651058 r!24129))))

(declare-fun baseR!100 () Regex!20005)

(declare-fun derivative!531 (Regex!20005 List!72888) Regex!20005)

(assert (=> b!7569687 (= lt!2651058 (derivative!531 baseR!100 testedP!418))))

(declare-fun b!7569688 () Bool)

(declare-fun e!4506671 () Bool)

(declare-fun tp!2205163 () Bool)

(declare-fun tp!2205170 () Bool)

(assert (=> b!7569688 (= e!4506671 (and tp!2205163 tp!2205170))))

(declare-fun b!7569689 () Bool)

(assert (=> b!7569689 (= e!4506669 (not e!4506670))))

(declare-fun res!3032483 () Bool)

(assert (=> b!7569689 (=> res!3032483 e!4506670)))

(declare-fun matchR!9605 (Regex!20005 List!72888) Bool)

(assert (=> b!7569689 (= res!3032483 (not (matchR!9605 r!24129 Nil!72764)))))

(assert (=> b!7569689 (matchR!9605 lt!2651058 Nil!72764)))

(declare-datatypes ((Unit!166962 0))(
  ( (Unit!166963) )
))
(declare-fun lt!2651056 () Unit!166962)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!274 (Regex!20005 List!72888) Unit!166962)

(assert (=> b!7569689 (= lt!2651056 (lemmaMatchRIsSameAsWholeDerivativeAndNil!274 baseR!100 testedP!418))))

(declare-fun b!7569690 () Bool)

(declare-fun res!3032488 () Bool)

(assert (=> b!7569690 (=> (not res!3032488) (not e!4506665))))

(declare-fun validRegex!10433 (Regex!20005) Bool)

(assert (=> b!7569690 (= res!3032488 (validRegex!10433 r!24129))))

(declare-fun b!7569691 () Bool)

(declare-fun e!4506667 () Bool)

(declare-fun tp_is_empty!50365 () Bool)

(declare-fun tp!2205173 () Bool)

(assert (=> b!7569691 (= e!4506667 (and tp_is_empty!50365 tp!2205173))))

(declare-fun b!7569693 () Bool)

(declare-fun e!4506668 () Bool)

(assert (=> b!7569693 (= e!4506668 tp_is_empty!50365)))

(declare-fun b!7569694 () Bool)

(declare-fun tp!2205168 () Bool)

(declare-fun tp!2205162 () Bool)

(assert (=> b!7569694 (= e!4506671 (and tp!2205168 tp!2205162))))

(declare-fun b!7569695 () Bool)

(declare-fun tp!2205172 () Bool)

(assert (=> b!7569695 (= e!4506671 tp!2205172)))

(declare-fun b!7569696 () Bool)

(declare-fun res!3032485 () Bool)

(assert (=> b!7569696 (=> (not res!3032485) (not e!4506665))))

(assert (=> b!7569696 (= res!3032485 (matchR!9605 baseR!100 testedP!418))))

(declare-fun b!7569697 () Bool)

(declare-fun tp!2205169 () Bool)

(assert (=> b!7569697 (= e!4506668 tp!2205169)))

(declare-fun b!7569698 () Bool)

(declare-fun res!3032489 () Bool)

(assert (=> b!7569698 (=> res!3032489 e!4506670)))

(declare-fun nullable!8731 (Regex!20005) Bool)

(assert (=> b!7569698 (= res!3032489 (not (nullable!8731 r!24129)))))

(declare-fun res!3032484 () Bool)

(assert (=> start!731060 (=> (not res!3032484) (not e!4506665))))

(assert (=> start!731060 (= res!3032484 (validRegex!10433 baseR!100))))

(assert (=> start!731060 e!4506665))

(assert (=> start!731060 e!4506671))

(assert (=> start!731060 e!4506668))

(assert (=> start!731060 e!4506667))

(declare-fun e!4506666 () Bool)

(assert (=> start!731060 e!4506666))

(declare-fun b!7569692 () Bool)

(declare-fun res!3032487 () Bool)

(assert (=> b!7569692 (=> res!3032487 e!4506670)))

(declare-fun lostCause!1785 (Regex!20005) Bool)

(assert (=> b!7569692 (= res!3032487 (lostCause!1785 r!24129))))

(declare-fun b!7569699 () Bool)

(assert (=> b!7569699 (= e!4506671 tp_is_empty!50365)))

(declare-fun b!7569700 () Bool)

(declare-fun tp!2205166 () Bool)

(declare-fun tp!2205165 () Bool)

(assert (=> b!7569700 (= e!4506668 (and tp!2205166 tp!2205165))))

(declare-fun b!7569701 () Bool)

(declare-fun tp!2205171 () Bool)

(declare-fun tp!2205164 () Bool)

(assert (=> b!7569701 (= e!4506668 (and tp!2205171 tp!2205164))))

(declare-fun b!7569702 () Bool)

(declare-fun res!3032486 () Bool)

(assert (=> b!7569702 (=> (not res!3032486) (not e!4506665))))

(declare-fun isPrefix!6211 (List!72888 List!72888) Bool)

(assert (=> b!7569702 (= res!3032486 (isPrefix!6211 testedP!418 input!7855))))

(declare-fun b!7569703 () Bool)

(declare-fun tp!2205167 () Bool)

(assert (=> b!7569703 (= e!4506666 (and tp_is_empty!50365 tp!2205167))))

(assert (= (and start!731060 res!3032484) b!7569690))

(assert (= (and b!7569690 res!3032488) b!7569702))

(assert (= (and b!7569702 res!3032486) b!7569696))

(assert (= (and b!7569696 res!3032485) b!7569687))

(assert (= (and b!7569687 res!3032490) b!7569689))

(assert (= (and b!7569689 (not res!3032483)) b!7569698))

(assert (= (and b!7569698 (not res!3032489)) b!7569692))

(assert (= (and b!7569692 (not res!3032487)) b!7569686))

(get-info :version)

(assert (= (and start!731060 ((_ is ElementMatch!20005) baseR!100)) b!7569699))

(assert (= (and start!731060 ((_ is Concat!28850) baseR!100)) b!7569694))

(assert (= (and start!731060 ((_ is Star!20005) baseR!100)) b!7569695))

(assert (= (and start!731060 ((_ is Union!20005) baseR!100)) b!7569688))

(assert (= (and start!731060 ((_ is ElementMatch!20005) r!24129)) b!7569693))

(assert (= (and start!731060 ((_ is Concat!28850) r!24129)) b!7569701))

(assert (= (and start!731060 ((_ is Star!20005) r!24129)) b!7569697))

(assert (= (and start!731060 ((_ is Union!20005) r!24129)) b!7569700))

(assert (= (and start!731060 ((_ is Cons!72764) testedP!418)) b!7569691))

(assert (= (and start!731060 ((_ is Cons!72764) input!7855)) b!7569703))

(declare-fun m!8131370 () Bool)

(assert (=> b!7569692 m!8131370))

(declare-fun m!8131372 () Bool)

(assert (=> start!731060 m!8131372))

(declare-fun m!8131374 () Bool)

(assert (=> b!7569698 m!8131374))

(declare-fun m!8131376 () Bool)

(assert (=> b!7569690 m!8131376))

(declare-fun m!8131378 () Bool)

(assert (=> b!7569687 m!8131378))

(declare-fun m!8131380 () Bool)

(assert (=> b!7569696 m!8131380))

(declare-fun m!8131382 () Bool)

(assert (=> b!7569686 m!8131382))

(declare-fun m!8131384 () Bool)

(assert (=> b!7569686 m!8131384))

(declare-fun m!8131386 () Bool)

(assert (=> b!7569686 m!8131386))

(declare-fun m!8131388 () Bool)

(assert (=> b!7569686 m!8131388))

(declare-fun m!8131390 () Bool)

(assert (=> b!7569702 m!8131390))

(declare-fun m!8131392 () Bool)

(assert (=> b!7569689 m!8131392))

(declare-fun m!8131394 () Bool)

(assert (=> b!7569689 m!8131394))

(declare-fun m!8131396 () Bool)

(assert (=> b!7569689 m!8131396))

(check-sat (not b!7569688) (not b!7569692) (not b!7569687) (not b!7569691) (not start!731060) (not b!7569696) (not b!7569697) tp_is_empty!50365 (not b!7569690) (not b!7569695) (not b!7569689) (not b!7569694) (not b!7569702) (not b!7569701) (not b!7569700) (not b!7569703) (not b!7569698) (not b!7569686))
(check-sat)
(get-model)

(declare-fun b!7569772 () Bool)

(declare-fun res!3032537 () Bool)

(declare-fun e!4506715 () Bool)

(assert (=> b!7569772 (=> (not res!3032537) (not e!4506715))))

(declare-fun call!693973 () Bool)

(assert (=> b!7569772 (= res!3032537 (not call!693973))))

(declare-fun b!7569773 () Bool)

(declare-fun e!4506709 () Bool)

(declare-fun e!4506711 () Bool)

(assert (=> b!7569773 (= e!4506709 e!4506711)))

(declare-fun res!3032536 () Bool)

(assert (=> b!7569773 (=> (not res!3032536) (not e!4506711))))

(declare-fun lt!2651066 () Bool)

(assert (=> b!7569773 (= res!3032536 (not lt!2651066))))

(declare-fun b!7569774 () Bool)

(declare-fun res!3032539 () Bool)

(declare-fun e!4506710 () Bool)

(assert (=> b!7569774 (=> res!3032539 e!4506710)))

(declare-fun isEmpty!41428 (List!72888) Bool)

(declare-fun tail!15107 (List!72888) List!72888)

(assert (=> b!7569774 (= res!3032539 (not (isEmpty!41428 (tail!15107 Nil!72764))))))

(declare-fun b!7569775 () Bool)

(declare-fun res!3032542 () Bool)

(assert (=> b!7569775 (=> (not res!3032542) (not e!4506715))))

(assert (=> b!7569775 (= res!3032542 (isEmpty!41428 (tail!15107 Nil!72764)))))

(declare-fun d!2317316 () Bool)

(declare-fun e!4506712 () Bool)

(assert (=> d!2317316 e!4506712))

(declare-fun c!1396713 () Bool)

(assert (=> d!2317316 (= c!1396713 ((_ is EmptyExpr!20005) r!24129))))

(declare-fun e!4506714 () Bool)

(assert (=> d!2317316 (= lt!2651066 e!4506714)))

(declare-fun c!1396714 () Bool)

(assert (=> d!2317316 (= c!1396714 (isEmpty!41428 Nil!72764))))

(assert (=> d!2317316 (validRegex!10433 r!24129)))

(assert (=> d!2317316 (= (matchR!9605 r!24129 Nil!72764) lt!2651066)))

(declare-fun b!7569776 () Bool)

(declare-fun e!4506713 () Bool)

(assert (=> b!7569776 (= e!4506712 e!4506713)))

(declare-fun c!1396715 () Bool)

(assert (=> b!7569776 (= c!1396715 ((_ is EmptyLang!20005) r!24129))))

(declare-fun b!7569777 () Bool)

(declare-fun res!3032535 () Bool)

(assert (=> b!7569777 (=> res!3032535 e!4506709)))

(assert (=> b!7569777 (= res!3032535 (not ((_ is ElementMatch!20005) r!24129)))))

(assert (=> b!7569777 (= e!4506713 e!4506709)))

(declare-fun b!7569778 () Bool)

(declare-fun head!15567 (List!72888) C!40336)

(assert (=> b!7569778 (= e!4506715 (= (head!15567 Nil!72764) (c!1396700 r!24129)))))

(declare-fun b!7569779 () Bool)

(assert (=> b!7569779 (= e!4506712 (= lt!2651066 call!693973))))

(declare-fun b!7569780 () Bool)

(assert (=> b!7569780 (= e!4506711 e!4506710)))

(declare-fun res!3032541 () Bool)

(assert (=> b!7569780 (=> res!3032541 e!4506710)))

(assert (=> b!7569780 (= res!3032541 call!693973)))

(declare-fun b!7569781 () Bool)

(declare-fun derivativeStep!5766 (Regex!20005 C!40336) Regex!20005)

(assert (=> b!7569781 (= e!4506714 (matchR!9605 (derivativeStep!5766 r!24129 (head!15567 Nil!72764)) (tail!15107 Nil!72764)))))

(declare-fun b!7569782 () Bool)

(assert (=> b!7569782 (= e!4506710 (not (= (head!15567 Nil!72764) (c!1396700 r!24129))))))

(declare-fun bm!693968 () Bool)

(assert (=> bm!693968 (= call!693973 (isEmpty!41428 Nil!72764))))

(declare-fun b!7569783 () Bool)

(declare-fun res!3032540 () Bool)

(assert (=> b!7569783 (=> res!3032540 e!4506709)))

(assert (=> b!7569783 (= res!3032540 e!4506715)))

(declare-fun res!3032538 () Bool)

(assert (=> b!7569783 (=> (not res!3032538) (not e!4506715))))

(assert (=> b!7569783 (= res!3032538 lt!2651066)))

(declare-fun b!7569784 () Bool)

(assert (=> b!7569784 (= e!4506714 (nullable!8731 r!24129))))

(declare-fun b!7569785 () Bool)

(assert (=> b!7569785 (= e!4506713 (not lt!2651066))))

(assert (= (and d!2317316 c!1396714) b!7569784))

(assert (= (and d!2317316 (not c!1396714)) b!7569781))

(assert (= (and d!2317316 c!1396713) b!7569779))

(assert (= (and d!2317316 (not c!1396713)) b!7569776))

(assert (= (and b!7569776 c!1396715) b!7569785))

(assert (= (and b!7569776 (not c!1396715)) b!7569777))

(assert (= (and b!7569777 (not res!3032535)) b!7569783))

(assert (= (and b!7569783 res!3032538) b!7569772))

(assert (= (and b!7569772 res!3032537) b!7569775))

(assert (= (and b!7569775 res!3032542) b!7569778))

(assert (= (and b!7569783 (not res!3032540)) b!7569773))

(assert (= (and b!7569773 res!3032536) b!7569780))

(assert (= (and b!7569780 (not res!3032541)) b!7569774))

(assert (= (and b!7569774 (not res!3032539)) b!7569782))

(assert (= (or b!7569779 b!7569772 b!7569780) bm!693968))

(declare-fun m!8131408 () Bool)

(assert (=> b!7569775 m!8131408))

(assert (=> b!7569775 m!8131408))

(declare-fun m!8131410 () Bool)

(assert (=> b!7569775 m!8131410))

(assert (=> b!7569784 m!8131374))

(declare-fun m!8131412 () Bool)

(assert (=> bm!693968 m!8131412))

(declare-fun m!8131414 () Bool)

(assert (=> b!7569782 m!8131414))

(assert (=> d!2317316 m!8131412))

(assert (=> d!2317316 m!8131376))

(assert (=> b!7569781 m!8131414))

(assert (=> b!7569781 m!8131414))

(declare-fun m!8131416 () Bool)

(assert (=> b!7569781 m!8131416))

(assert (=> b!7569781 m!8131408))

(assert (=> b!7569781 m!8131416))

(assert (=> b!7569781 m!8131408))

(declare-fun m!8131418 () Bool)

(assert (=> b!7569781 m!8131418))

(assert (=> b!7569774 m!8131408))

(assert (=> b!7569774 m!8131408))

(assert (=> b!7569774 m!8131410))

(assert (=> b!7569778 m!8131414))

(assert (=> b!7569689 d!2317316))

(declare-fun b!7569786 () Bool)

(declare-fun res!3032545 () Bool)

(declare-fun e!4506722 () Bool)

(assert (=> b!7569786 (=> (not res!3032545) (not e!4506722))))

(declare-fun call!693974 () Bool)

(assert (=> b!7569786 (= res!3032545 (not call!693974))))

(declare-fun b!7569787 () Bool)

(declare-fun e!4506716 () Bool)

(declare-fun e!4506718 () Bool)

(assert (=> b!7569787 (= e!4506716 e!4506718)))

(declare-fun res!3032544 () Bool)

(assert (=> b!7569787 (=> (not res!3032544) (not e!4506718))))

(declare-fun lt!2651067 () Bool)

(assert (=> b!7569787 (= res!3032544 (not lt!2651067))))

(declare-fun b!7569788 () Bool)

(declare-fun res!3032547 () Bool)

(declare-fun e!4506717 () Bool)

(assert (=> b!7569788 (=> res!3032547 e!4506717)))

(assert (=> b!7569788 (= res!3032547 (not (isEmpty!41428 (tail!15107 Nil!72764))))))

(declare-fun b!7569789 () Bool)

(declare-fun res!3032550 () Bool)

(assert (=> b!7569789 (=> (not res!3032550) (not e!4506722))))

(assert (=> b!7569789 (= res!3032550 (isEmpty!41428 (tail!15107 Nil!72764)))))

(declare-fun d!2317320 () Bool)

(declare-fun e!4506719 () Bool)

(assert (=> d!2317320 e!4506719))

(declare-fun c!1396716 () Bool)

(assert (=> d!2317320 (= c!1396716 ((_ is EmptyExpr!20005) lt!2651058))))

(declare-fun e!4506721 () Bool)

(assert (=> d!2317320 (= lt!2651067 e!4506721)))

(declare-fun c!1396717 () Bool)

(assert (=> d!2317320 (= c!1396717 (isEmpty!41428 Nil!72764))))

(assert (=> d!2317320 (validRegex!10433 lt!2651058)))

(assert (=> d!2317320 (= (matchR!9605 lt!2651058 Nil!72764) lt!2651067)))

(declare-fun b!7569790 () Bool)

(declare-fun e!4506720 () Bool)

(assert (=> b!7569790 (= e!4506719 e!4506720)))

(declare-fun c!1396718 () Bool)

(assert (=> b!7569790 (= c!1396718 ((_ is EmptyLang!20005) lt!2651058))))

(declare-fun b!7569791 () Bool)

(declare-fun res!3032543 () Bool)

(assert (=> b!7569791 (=> res!3032543 e!4506716)))

(assert (=> b!7569791 (= res!3032543 (not ((_ is ElementMatch!20005) lt!2651058)))))

(assert (=> b!7569791 (= e!4506720 e!4506716)))

(declare-fun b!7569792 () Bool)

(assert (=> b!7569792 (= e!4506722 (= (head!15567 Nil!72764) (c!1396700 lt!2651058)))))

(declare-fun b!7569793 () Bool)

(assert (=> b!7569793 (= e!4506719 (= lt!2651067 call!693974))))

(declare-fun b!7569794 () Bool)

(assert (=> b!7569794 (= e!4506718 e!4506717)))

(declare-fun res!3032549 () Bool)

(assert (=> b!7569794 (=> res!3032549 e!4506717)))

(assert (=> b!7569794 (= res!3032549 call!693974)))

(declare-fun b!7569795 () Bool)

(assert (=> b!7569795 (= e!4506721 (matchR!9605 (derivativeStep!5766 lt!2651058 (head!15567 Nil!72764)) (tail!15107 Nil!72764)))))

(declare-fun b!7569796 () Bool)

(assert (=> b!7569796 (= e!4506717 (not (= (head!15567 Nil!72764) (c!1396700 lt!2651058))))))

(declare-fun bm!693969 () Bool)

(assert (=> bm!693969 (= call!693974 (isEmpty!41428 Nil!72764))))

(declare-fun b!7569797 () Bool)

(declare-fun res!3032548 () Bool)

(assert (=> b!7569797 (=> res!3032548 e!4506716)))

(assert (=> b!7569797 (= res!3032548 e!4506722)))

(declare-fun res!3032546 () Bool)

(assert (=> b!7569797 (=> (not res!3032546) (not e!4506722))))

(assert (=> b!7569797 (= res!3032546 lt!2651067)))

(declare-fun b!7569798 () Bool)

(assert (=> b!7569798 (= e!4506721 (nullable!8731 lt!2651058))))

(declare-fun b!7569799 () Bool)

(assert (=> b!7569799 (= e!4506720 (not lt!2651067))))

(assert (= (and d!2317320 c!1396717) b!7569798))

(assert (= (and d!2317320 (not c!1396717)) b!7569795))

(assert (= (and d!2317320 c!1396716) b!7569793))

(assert (= (and d!2317320 (not c!1396716)) b!7569790))

(assert (= (and b!7569790 c!1396718) b!7569799))

(assert (= (and b!7569790 (not c!1396718)) b!7569791))

(assert (= (and b!7569791 (not res!3032543)) b!7569797))

(assert (= (and b!7569797 res!3032546) b!7569786))

(assert (= (and b!7569786 res!3032545) b!7569789))

(assert (= (and b!7569789 res!3032550) b!7569792))

(assert (= (and b!7569797 (not res!3032548)) b!7569787))

(assert (= (and b!7569787 res!3032544) b!7569794))

(assert (= (and b!7569794 (not res!3032549)) b!7569788))

(assert (= (and b!7569788 (not res!3032547)) b!7569796))

(assert (= (or b!7569793 b!7569786 b!7569794) bm!693969))

(assert (=> b!7569789 m!8131408))

(assert (=> b!7569789 m!8131408))

(assert (=> b!7569789 m!8131410))

(declare-fun m!8131420 () Bool)

(assert (=> b!7569798 m!8131420))

(assert (=> bm!693969 m!8131412))

(assert (=> b!7569796 m!8131414))

(assert (=> d!2317320 m!8131412))

(declare-fun m!8131422 () Bool)

(assert (=> d!2317320 m!8131422))

(assert (=> b!7569795 m!8131414))

(assert (=> b!7569795 m!8131414))

(declare-fun m!8131424 () Bool)

(assert (=> b!7569795 m!8131424))

(assert (=> b!7569795 m!8131408))

(assert (=> b!7569795 m!8131424))

(assert (=> b!7569795 m!8131408))

(declare-fun m!8131426 () Bool)

(assert (=> b!7569795 m!8131426))

(assert (=> b!7569788 m!8131408))

(assert (=> b!7569788 m!8131408))

(assert (=> b!7569788 m!8131410))

(assert (=> b!7569792 m!8131414))

(assert (=> b!7569689 d!2317320))

(declare-fun d!2317322 () Bool)

(assert (=> d!2317322 (= (matchR!9605 baseR!100 testedP!418) (matchR!9605 (derivative!531 baseR!100 testedP!418) Nil!72764))))

(declare-fun lt!2651071 () Unit!166962)

(declare-fun choose!58536 (Regex!20005 List!72888) Unit!166962)

(assert (=> d!2317322 (= lt!2651071 (choose!58536 baseR!100 testedP!418))))

(assert (=> d!2317322 (validRegex!10433 baseR!100)))

(assert (=> d!2317322 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!274 baseR!100 testedP!418) lt!2651071)))

(declare-fun bs!1940571 () Bool)

(assert (= bs!1940571 d!2317322))

(assert (=> bs!1940571 m!8131378))

(declare-fun m!8131438 () Bool)

(assert (=> bs!1940571 m!8131438))

(assert (=> bs!1940571 m!8131378))

(assert (=> bs!1940571 m!8131380))

(assert (=> bs!1940571 m!8131372))

(declare-fun m!8131440 () Bool)

(assert (=> bs!1940571 m!8131440))

(assert (=> b!7569689 d!2317322))

(declare-fun b!7569850 () Bool)

(declare-fun e!4506757 () Bool)

(declare-fun e!4506753 () Bool)

(assert (=> b!7569850 (= e!4506757 e!4506753)))

(declare-fun res!3032576 () Bool)

(assert (=> b!7569850 (=> (not res!3032576) (not e!4506753))))

(declare-fun call!693984 () Bool)

(assert (=> b!7569850 (= res!3032576 call!693984)))

(declare-fun b!7569851 () Bool)

(declare-fun e!4506758 () Bool)

(declare-fun e!4506755 () Bool)

(assert (=> b!7569851 (= e!4506758 e!4506755)))

(declare-fun c!1396732 () Bool)

(assert (=> b!7569851 (= c!1396732 ((_ is Star!20005) baseR!100))))

(declare-fun b!7569852 () Bool)

(declare-fun res!3032579 () Bool)

(assert (=> b!7569852 (=> res!3032579 e!4506757)))

(assert (=> b!7569852 (= res!3032579 (not ((_ is Concat!28850) baseR!100)))))

(declare-fun e!4506759 () Bool)

(assert (=> b!7569852 (= e!4506759 e!4506757)))

(declare-fun b!7569853 () Bool)

(declare-fun res!3032578 () Bool)

(declare-fun e!4506754 () Bool)

(assert (=> b!7569853 (=> (not res!3032578) (not e!4506754))))

(declare-fun call!693983 () Bool)

(assert (=> b!7569853 (= res!3032578 call!693983)))

(assert (=> b!7569853 (= e!4506759 e!4506754)))

(declare-fun call!693982 () Bool)

(declare-fun c!1396733 () Bool)

(declare-fun bm!693977 () Bool)

(assert (=> bm!693977 (= call!693982 (validRegex!10433 (ite c!1396732 (reg!20334 baseR!100) (ite c!1396733 (regOne!40523 baseR!100) (regTwo!40522 baseR!100)))))))

(declare-fun bm!693978 () Bool)

(assert (=> bm!693978 (= call!693983 call!693982)))

(declare-fun bm!693979 () Bool)

(assert (=> bm!693979 (= call!693984 (validRegex!10433 (ite c!1396733 (regTwo!40523 baseR!100) (regOne!40522 baseR!100))))))

(declare-fun b!7569854 () Bool)

(assert (=> b!7569854 (= e!4506754 call!693984)))

(declare-fun b!7569855 () Bool)

(assert (=> b!7569855 (= e!4506753 call!693983)))

(declare-fun b!7569857 () Bool)

(assert (=> b!7569857 (= e!4506755 e!4506759)))

(assert (=> b!7569857 (= c!1396733 ((_ is Union!20005) baseR!100))))

(declare-fun b!7569858 () Bool)

(declare-fun e!4506756 () Bool)

(assert (=> b!7569858 (= e!4506756 call!693982)))

(declare-fun d!2317326 () Bool)

(declare-fun res!3032575 () Bool)

(assert (=> d!2317326 (=> res!3032575 e!4506758)))

(assert (=> d!2317326 (= res!3032575 ((_ is ElementMatch!20005) baseR!100))))

(assert (=> d!2317326 (= (validRegex!10433 baseR!100) e!4506758)))

(declare-fun b!7569856 () Bool)

(assert (=> b!7569856 (= e!4506755 e!4506756)))

(declare-fun res!3032577 () Bool)

(assert (=> b!7569856 (= res!3032577 (not (nullable!8731 (reg!20334 baseR!100))))))

(assert (=> b!7569856 (=> (not res!3032577) (not e!4506756))))

(assert (= (and d!2317326 (not res!3032575)) b!7569851))

(assert (= (and b!7569851 c!1396732) b!7569856))

(assert (= (and b!7569851 (not c!1396732)) b!7569857))

(assert (= (and b!7569856 res!3032577) b!7569858))

(assert (= (and b!7569857 c!1396733) b!7569853))

(assert (= (and b!7569857 (not c!1396733)) b!7569852))

(assert (= (and b!7569853 res!3032578) b!7569854))

(assert (= (and b!7569852 (not res!3032579)) b!7569850))

(assert (= (and b!7569850 res!3032576) b!7569855))

(assert (= (or b!7569854 b!7569850) bm!693979))

(assert (= (or b!7569853 b!7569855) bm!693978))

(assert (= (or b!7569858 bm!693978) bm!693977))

(declare-fun m!8131456 () Bool)

(assert (=> bm!693977 m!8131456))

(declare-fun m!8131458 () Bool)

(assert (=> bm!693979 m!8131458))

(declare-fun m!8131460 () Bool)

(assert (=> b!7569856 m!8131460))

(assert (=> start!731060 d!2317326))

(declare-fun b!7569859 () Bool)

(declare-fun e!4506764 () Bool)

(declare-fun e!4506760 () Bool)

(assert (=> b!7569859 (= e!4506764 e!4506760)))

(declare-fun res!3032581 () Bool)

(assert (=> b!7569859 (=> (not res!3032581) (not e!4506760))))

(declare-fun call!693987 () Bool)

(assert (=> b!7569859 (= res!3032581 call!693987)))

(declare-fun b!7569860 () Bool)

(declare-fun e!4506765 () Bool)

(declare-fun e!4506762 () Bool)

(assert (=> b!7569860 (= e!4506765 e!4506762)))

(declare-fun c!1396734 () Bool)

(assert (=> b!7569860 (= c!1396734 ((_ is Star!20005) r!24129))))

(declare-fun b!7569861 () Bool)

(declare-fun res!3032584 () Bool)

(assert (=> b!7569861 (=> res!3032584 e!4506764)))

(assert (=> b!7569861 (= res!3032584 (not ((_ is Concat!28850) r!24129)))))

(declare-fun e!4506766 () Bool)

(assert (=> b!7569861 (= e!4506766 e!4506764)))

(declare-fun b!7569862 () Bool)

(declare-fun res!3032583 () Bool)

(declare-fun e!4506761 () Bool)

(assert (=> b!7569862 (=> (not res!3032583) (not e!4506761))))

(declare-fun call!693986 () Bool)

(assert (=> b!7569862 (= res!3032583 call!693986)))

(assert (=> b!7569862 (= e!4506766 e!4506761)))

(declare-fun bm!693980 () Bool)

(declare-fun c!1396735 () Bool)

(declare-fun call!693985 () Bool)

(assert (=> bm!693980 (= call!693985 (validRegex!10433 (ite c!1396734 (reg!20334 r!24129) (ite c!1396735 (regOne!40523 r!24129) (regTwo!40522 r!24129)))))))

(declare-fun bm!693981 () Bool)

(assert (=> bm!693981 (= call!693986 call!693985)))

(declare-fun bm!693982 () Bool)

(assert (=> bm!693982 (= call!693987 (validRegex!10433 (ite c!1396735 (regTwo!40523 r!24129) (regOne!40522 r!24129))))))

(declare-fun b!7569863 () Bool)

(assert (=> b!7569863 (= e!4506761 call!693987)))

(declare-fun b!7569864 () Bool)

(assert (=> b!7569864 (= e!4506760 call!693986)))

(declare-fun b!7569866 () Bool)

(assert (=> b!7569866 (= e!4506762 e!4506766)))

(assert (=> b!7569866 (= c!1396735 ((_ is Union!20005) r!24129))))

(declare-fun b!7569867 () Bool)

(declare-fun e!4506763 () Bool)

(assert (=> b!7569867 (= e!4506763 call!693985)))

(declare-fun d!2317332 () Bool)

(declare-fun res!3032580 () Bool)

(assert (=> d!2317332 (=> res!3032580 e!4506765)))

(assert (=> d!2317332 (= res!3032580 ((_ is ElementMatch!20005) r!24129))))

(assert (=> d!2317332 (= (validRegex!10433 r!24129) e!4506765)))

(declare-fun b!7569865 () Bool)

(assert (=> b!7569865 (= e!4506762 e!4506763)))

(declare-fun res!3032582 () Bool)

(assert (=> b!7569865 (= res!3032582 (not (nullable!8731 (reg!20334 r!24129))))))

(assert (=> b!7569865 (=> (not res!3032582) (not e!4506763))))

(assert (= (and d!2317332 (not res!3032580)) b!7569860))

(assert (= (and b!7569860 c!1396734) b!7569865))

(assert (= (and b!7569860 (not c!1396734)) b!7569866))

(assert (= (and b!7569865 res!3032582) b!7569867))

(assert (= (and b!7569866 c!1396735) b!7569862))

(assert (= (and b!7569866 (not c!1396735)) b!7569861))

(assert (= (and b!7569862 res!3032583) b!7569863))

(assert (= (and b!7569861 (not res!3032584)) b!7569859))

(assert (= (and b!7569859 res!3032581) b!7569864))

(assert (= (or b!7569863 b!7569859) bm!693982))

(assert (= (or b!7569862 b!7569864) bm!693981))

(assert (= (or b!7569867 bm!693981) bm!693980))

(declare-fun m!8131462 () Bool)

(assert (=> bm!693980 m!8131462))

(declare-fun m!8131464 () Bool)

(assert (=> bm!693982 m!8131464))

(declare-fun m!8131466 () Bool)

(assert (=> b!7569865 m!8131466))

(assert (=> b!7569690 d!2317332))

(declare-fun b!7569868 () Bool)

(declare-fun res!3032587 () Bool)

(declare-fun e!4506773 () Bool)

(assert (=> b!7569868 (=> (not res!3032587) (not e!4506773))))

(declare-fun call!693988 () Bool)

(assert (=> b!7569868 (= res!3032587 (not call!693988))))

(declare-fun b!7569869 () Bool)

(declare-fun e!4506767 () Bool)

(declare-fun e!4506769 () Bool)

(assert (=> b!7569869 (= e!4506767 e!4506769)))

(declare-fun res!3032586 () Bool)

(assert (=> b!7569869 (=> (not res!3032586) (not e!4506769))))

(declare-fun lt!2651078 () Bool)

(assert (=> b!7569869 (= res!3032586 (not lt!2651078))))

(declare-fun b!7569870 () Bool)

(declare-fun res!3032589 () Bool)

(declare-fun e!4506768 () Bool)

(assert (=> b!7569870 (=> res!3032589 e!4506768)))

(assert (=> b!7569870 (= res!3032589 (not (isEmpty!41428 (tail!15107 testedP!418))))))

(declare-fun b!7569871 () Bool)

(declare-fun res!3032592 () Bool)

(assert (=> b!7569871 (=> (not res!3032592) (not e!4506773))))

(assert (=> b!7569871 (= res!3032592 (isEmpty!41428 (tail!15107 testedP!418)))))

(declare-fun d!2317334 () Bool)

(declare-fun e!4506770 () Bool)

(assert (=> d!2317334 e!4506770))

(declare-fun c!1396736 () Bool)

(assert (=> d!2317334 (= c!1396736 ((_ is EmptyExpr!20005) baseR!100))))

(declare-fun e!4506772 () Bool)

(assert (=> d!2317334 (= lt!2651078 e!4506772)))

(declare-fun c!1396737 () Bool)

(assert (=> d!2317334 (= c!1396737 (isEmpty!41428 testedP!418))))

(assert (=> d!2317334 (validRegex!10433 baseR!100)))

(assert (=> d!2317334 (= (matchR!9605 baseR!100 testedP!418) lt!2651078)))

(declare-fun b!7569872 () Bool)

(declare-fun e!4506771 () Bool)

(assert (=> b!7569872 (= e!4506770 e!4506771)))

(declare-fun c!1396738 () Bool)

(assert (=> b!7569872 (= c!1396738 ((_ is EmptyLang!20005) baseR!100))))

(declare-fun b!7569873 () Bool)

(declare-fun res!3032585 () Bool)

(assert (=> b!7569873 (=> res!3032585 e!4506767)))

(assert (=> b!7569873 (= res!3032585 (not ((_ is ElementMatch!20005) baseR!100)))))

(assert (=> b!7569873 (= e!4506771 e!4506767)))

(declare-fun b!7569874 () Bool)

(assert (=> b!7569874 (= e!4506773 (= (head!15567 testedP!418) (c!1396700 baseR!100)))))

(declare-fun b!7569875 () Bool)

(assert (=> b!7569875 (= e!4506770 (= lt!2651078 call!693988))))

(declare-fun b!7569876 () Bool)

(assert (=> b!7569876 (= e!4506769 e!4506768)))

(declare-fun res!3032591 () Bool)

(assert (=> b!7569876 (=> res!3032591 e!4506768)))

(assert (=> b!7569876 (= res!3032591 call!693988)))

(declare-fun b!7569877 () Bool)

(assert (=> b!7569877 (= e!4506772 (matchR!9605 (derivativeStep!5766 baseR!100 (head!15567 testedP!418)) (tail!15107 testedP!418)))))

(declare-fun b!7569878 () Bool)

(assert (=> b!7569878 (= e!4506768 (not (= (head!15567 testedP!418) (c!1396700 baseR!100))))))

(declare-fun bm!693983 () Bool)

(assert (=> bm!693983 (= call!693988 (isEmpty!41428 testedP!418))))

(declare-fun b!7569879 () Bool)

(declare-fun res!3032590 () Bool)

(assert (=> b!7569879 (=> res!3032590 e!4506767)))

(assert (=> b!7569879 (= res!3032590 e!4506773)))

(declare-fun res!3032588 () Bool)

(assert (=> b!7569879 (=> (not res!3032588) (not e!4506773))))

(assert (=> b!7569879 (= res!3032588 lt!2651078)))

(declare-fun b!7569880 () Bool)

(assert (=> b!7569880 (= e!4506772 (nullable!8731 baseR!100))))

(declare-fun b!7569881 () Bool)

(assert (=> b!7569881 (= e!4506771 (not lt!2651078))))

(assert (= (and d!2317334 c!1396737) b!7569880))

(assert (= (and d!2317334 (not c!1396737)) b!7569877))

(assert (= (and d!2317334 c!1396736) b!7569875))

(assert (= (and d!2317334 (not c!1396736)) b!7569872))

(assert (= (and b!7569872 c!1396738) b!7569881))

(assert (= (and b!7569872 (not c!1396738)) b!7569873))

(assert (= (and b!7569873 (not res!3032585)) b!7569879))

(assert (= (and b!7569879 res!3032588) b!7569868))

(assert (= (and b!7569868 res!3032587) b!7569871))

(assert (= (and b!7569871 res!3032592) b!7569874))

(assert (= (and b!7569879 (not res!3032590)) b!7569869))

(assert (= (and b!7569869 res!3032586) b!7569876))

(assert (= (and b!7569876 (not res!3032591)) b!7569870))

(assert (= (and b!7569870 (not res!3032589)) b!7569878))

(assert (= (or b!7569875 b!7569868 b!7569876) bm!693983))

(declare-fun m!8131468 () Bool)

(assert (=> b!7569871 m!8131468))

(assert (=> b!7569871 m!8131468))

(declare-fun m!8131470 () Bool)

(assert (=> b!7569871 m!8131470))

(declare-fun m!8131472 () Bool)

(assert (=> b!7569880 m!8131472))

(declare-fun m!8131474 () Bool)

(assert (=> bm!693983 m!8131474))

(declare-fun m!8131476 () Bool)

(assert (=> b!7569878 m!8131476))

(assert (=> d!2317334 m!8131474))

(assert (=> d!2317334 m!8131372))

(assert (=> b!7569877 m!8131476))

(assert (=> b!7569877 m!8131476))

(declare-fun m!8131478 () Bool)

(assert (=> b!7569877 m!8131478))

(assert (=> b!7569877 m!8131468))

(assert (=> b!7569877 m!8131478))

(assert (=> b!7569877 m!8131468))

(declare-fun m!8131480 () Bool)

(assert (=> b!7569877 m!8131480))

(assert (=> b!7569870 m!8131468))

(assert (=> b!7569870 m!8131468))

(assert (=> b!7569870 m!8131470))

(assert (=> b!7569874 m!8131476))

(assert (=> b!7569696 d!2317334))

(declare-fun b!7569903 () Bool)

(declare-fun e!4506784 () List!72888)

(assert (=> b!7569903 (= e!4506784 (Cons!72764 (h!79212 testedP!418) (++!17491 (t!387623 testedP!418) lt!2651055)))))

(declare-fun d!2317336 () Bool)

(declare-fun e!4506785 () Bool)

(assert (=> d!2317336 e!4506785))

(declare-fun res!3032597 () Bool)

(assert (=> d!2317336 (=> (not res!3032597) (not e!4506785))))

(declare-fun lt!2651087 () List!72888)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15408 (List!72888) (InoxSet C!40336))

(assert (=> d!2317336 (= res!3032597 (= (content!15408 lt!2651087) ((_ map or) (content!15408 testedP!418) (content!15408 lt!2651055))))))

(assert (=> d!2317336 (= lt!2651087 e!4506784)))

(declare-fun c!1396747 () Bool)

(assert (=> d!2317336 (= c!1396747 ((_ is Nil!72764) testedP!418))))

(assert (=> d!2317336 (= (++!17491 testedP!418 lt!2651055) lt!2651087)))

(declare-fun b!7569905 () Bool)

(assert (=> b!7569905 (= e!4506785 (or (not (= lt!2651055 Nil!72764)) (= lt!2651087 testedP!418)))))

(declare-fun b!7569902 () Bool)

(assert (=> b!7569902 (= e!4506784 lt!2651055)))

(declare-fun b!7569904 () Bool)

(declare-fun res!3032598 () Bool)

(assert (=> b!7569904 (=> (not res!3032598) (not e!4506785))))

(assert (=> b!7569904 (= res!3032598 (= (size!42489 lt!2651087) (+ (size!42489 testedP!418) (size!42489 lt!2651055))))))

(assert (= (and d!2317336 c!1396747) b!7569902))

(assert (= (and d!2317336 (not c!1396747)) b!7569903))

(assert (= (and d!2317336 res!3032597) b!7569904))

(assert (= (and b!7569904 res!3032598) b!7569905))

(declare-fun m!8131494 () Bool)

(assert (=> b!7569903 m!8131494))

(declare-fun m!8131498 () Bool)

(assert (=> d!2317336 m!8131498))

(declare-fun m!8131500 () Bool)

(assert (=> d!2317336 m!8131500))

(declare-fun m!8131502 () Bool)

(assert (=> d!2317336 m!8131502))

(declare-fun m!8131504 () Bool)

(assert (=> b!7569904 m!8131504))

(assert (=> b!7569904 m!8131388))

(declare-fun m!8131506 () Bool)

(assert (=> b!7569904 m!8131506))

(assert (=> b!7569686 d!2317336))

(declare-fun d!2317346 () Bool)

(declare-fun lt!2651091 () Int)

(assert (=> d!2317346 (>= lt!2651091 0)))

(declare-fun e!4506791 () Int)

(assert (=> d!2317346 (= lt!2651091 e!4506791)))

(declare-fun c!1396751 () Bool)

(assert (=> d!2317346 (= c!1396751 ((_ is Nil!72764) input!7855))))

(assert (=> d!2317346 (= (size!42489 input!7855) lt!2651091)))

(declare-fun b!7569916 () Bool)

(assert (=> b!7569916 (= e!4506791 0)))

(declare-fun b!7569917 () Bool)

(assert (=> b!7569917 (= e!4506791 (+ 1 (size!42489 (t!387623 input!7855))))))

(assert (= (and d!2317346 c!1396751) b!7569916))

(assert (= (and d!2317346 (not c!1396751)) b!7569917))

(declare-fun m!8131508 () Bool)

(assert (=> b!7569917 m!8131508))

(assert (=> b!7569686 d!2317346))

(declare-fun d!2317348 () Bool)

(declare-fun lt!2651094 () List!72888)

(assert (=> d!2317348 (= (++!17491 testedP!418 lt!2651094) input!7855)))

(declare-fun e!4506806 () List!72888)

(assert (=> d!2317348 (= lt!2651094 e!4506806)))

(declare-fun c!1396758 () Bool)

(assert (=> d!2317348 (= c!1396758 ((_ is Cons!72764) testedP!418))))

(assert (=> d!2317348 (>= (size!42489 input!7855) (size!42489 testedP!418))))

(assert (=> d!2317348 (= (getSuffix!3673 input!7855 testedP!418) lt!2651094)))

(declare-fun b!7569936 () Bool)

(assert (=> b!7569936 (= e!4506806 (getSuffix!3673 (tail!15107 input!7855) (t!387623 testedP!418)))))

(declare-fun b!7569937 () Bool)

(assert (=> b!7569937 (= e!4506806 input!7855)))

(assert (= (and d!2317348 c!1396758) b!7569936))

(assert (= (and d!2317348 (not c!1396758)) b!7569937))

(declare-fun m!8131510 () Bool)

(assert (=> d!2317348 m!8131510))

(assert (=> d!2317348 m!8131384))

(assert (=> d!2317348 m!8131388))

(declare-fun m!8131512 () Bool)

(assert (=> b!7569936 m!8131512))

(assert (=> b!7569936 m!8131512))

(declare-fun m!8131514 () Bool)

(assert (=> b!7569936 m!8131514))

(assert (=> b!7569686 d!2317348))

(declare-fun d!2317350 () Bool)

(declare-fun lt!2651095 () Int)

(assert (=> d!2317350 (>= lt!2651095 0)))

(declare-fun e!4506807 () Int)

(assert (=> d!2317350 (= lt!2651095 e!4506807)))

(declare-fun c!1396759 () Bool)

(assert (=> d!2317350 (= c!1396759 ((_ is Nil!72764) testedP!418))))

(assert (=> d!2317350 (= (size!42489 testedP!418) lt!2651095)))

(declare-fun b!7569938 () Bool)

(assert (=> b!7569938 (= e!4506807 0)))

(declare-fun b!7569939 () Bool)

(assert (=> b!7569939 (= e!4506807 (+ 1 (size!42489 (t!387623 testedP!418))))))

(assert (= (and d!2317350 c!1396759) b!7569938))

(assert (= (and d!2317350 (not c!1396759)) b!7569939))

(declare-fun m!8131516 () Bool)

(assert (=> b!7569939 m!8131516))

(assert (=> b!7569686 d!2317350))

(declare-fun b!7569985 () Bool)

(declare-fun e!4506836 () Bool)

(declare-fun e!4506835 () Bool)

(assert (=> b!7569985 (= e!4506836 e!4506835)))

(declare-fun res!3032639 () Bool)

(assert (=> b!7569985 (=> (not res!3032639) (not e!4506835))))

(assert (=> b!7569985 (= res!3032639 (not ((_ is Nil!72764) input!7855)))))

(declare-fun b!7569986 () Bool)

(declare-fun res!3032641 () Bool)

(assert (=> b!7569986 (=> (not res!3032641) (not e!4506835))))

(assert (=> b!7569986 (= res!3032641 (= (head!15567 testedP!418) (head!15567 input!7855)))))

(declare-fun d!2317352 () Bool)

(declare-fun e!4506837 () Bool)

(assert (=> d!2317352 e!4506837))

(declare-fun res!3032640 () Bool)

(assert (=> d!2317352 (=> res!3032640 e!4506837)))

(declare-fun lt!2651100 () Bool)

(assert (=> d!2317352 (= res!3032640 (not lt!2651100))))

(assert (=> d!2317352 (= lt!2651100 e!4506836)))

(declare-fun res!3032638 () Bool)

(assert (=> d!2317352 (=> res!3032638 e!4506836)))

(assert (=> d!2317352 (= res!3032638 ((_ is Nil!72764) testedP!418))))

(assert (=> d!2317352 (= (isPrefix!6211 testedP!418 input!7855) lt!2651100)))

(declare-fun b!7569988 () Bool)

(assert (=> b!7569988 (= e!4506837 (>= (size!42489 input!7855) (size!42489 testedP!418)))))

(declare-fun b!7569987 () Bool)

(assert (=> b!7569987 (= e!4506835 (isPrefix!6211 (tail!15107 testedP!418) (tail!15107 input!7855)))))

(assert (= (and d!2317352 (not res!3032638)) b!7569985))

(assert (= (and b!7569985 res!3032639) b!7569986))

(assert (= (and b!7569986 res!3032641) b!7569987))

(assert (= (and d!2317352 (not res!3032640)) b!7569988))

(assert (=> b!7569986 m!8131476))

(declare-fun m!8131544 () Bool)

(assert (=> b!7569986 m!8131544))

(assert (=> b!7569988 m!8131384))

(assert (=> b!7569988 m!8131388))

(assert (=> b!7569987 m!8131468))

(assert (=> b!7569987 m!8131512))

(assert (=> b!7569987 m!8131468))

(assert (=> b!7569987 m!8131512))

(declare-fun m!8131546 () Bool)

(assert (=> b!7569987 m!8131546))

(assert (=> b!7569702 d!2317352))

(declare-fun d!2317360 () Bool)

(declare-fun lostCauseFct!475 (Regex!20005) Bool)

(assert (=> d!2317360 (= (lostCause!1785 r!24129) (lostCauseFct!475 r!24129))))

(declare-fun bs!1940573 () Bool)

(assert (= bs!1940573 d!2317360))

(declare-fun m!8131548 () Bool)

(assert (=> bs!1940573 m!8131548))

(assert (=> b!7569692 d!2317360))

(declare-fun d!2317362 () Bool)

(declare-fun lt!2651106 () Regex!20005)

(assert (=> d!2317362 (validRegex!10433 lt!2651106)))

(declare-fun e!4506847 () Regex!20005)

(assert (=> d!2317362 (= lt!2651106 e!4506847)))

(declare-fun c!1396772 () Bool)

(assert (=> d!2317362 (= c!1396772 ((_ is Cons!72764) testedP!418))))

(assert (=> d!2317362 (validRegex!10433 baseR!100)))

(assert (=> d!2317362 (= (derivative!531 baseR!100 testedP!418) lt!2651106)))

(declare-fun b!7570002 () Bool)

(assert (=> b!7570002 (= e!4506847 (derivative!531 (derivativeStep!5766 baseR!100 (h!79212 testedP!418)) (t!387623 testedP!418)))))

(declare-fun b!7570003 () Bool)

(assert (=> b!7570003 (= e!4506847 baseR!100)))

(assert (= (and d!2317362 c!1396772) b!7570002))

(assert (= (and d!2317362 (not c!1396772)) b!7570003))

(declare-fun m!8131562 () Bool)

(assert (=> d!2317362 m!8131562))

(assert (=> d!2317362 m!8131372))

(declare-fun m!8131564 () Bool)

(assert (=> b!7570002 m!8131564))

(assert (=> b!7570002 m!8131564))

(declare-fun m!8131566 () Bool)

(assert (=> b!7570002 m!8131566))

(assert (=> b!7569687 d!2317362))

(declare-fun d!2317368 () Bool)

(declare-fun nullableFct!3484 (Regex!20005) Bool)

(assert (=> d!2317368 (= (nullable!8731 r!24129) (nullableFct!3484 r!24129))))

(declare-fun bs!1940576 () Bool)

(assert (= bs!1940576 d!2317368))

(declare-fun m!8131568 () Bool)

(assert (=> bs!1940576 m!8131568))

(assert (=> b!7569698 d!2317368))

(declare-fun b!7570040 () Bool)

(declare-fun e!4506856 () Bool)

(assert (=> b!7570040 (= e!4506856 tp_is_empty!50365)))

(assert (=> b!7569700 (= tp!2205166 e!4506856)))

(declare-fun b!7570043 () Bool)

(declare-fun tp!2205217 () Bool)

(declare-fun tp!2205218 () Bool)

(assert (=> b!7570043 (= e!4506856 (and tp!2205217 tp!2205218))))

(declare-fun b!7570041 () Bool)

(declare-fun tp!2205216 () Bool)

(declare-fun tp!2205215 () Bool)

(assert (=> b!7570041 (= e!4506856 (and tp!2205216 tp!2205215))))

(declare-fun b!7570042 () Bool)

(declare-fun tp!2205214 () Bool)

(assert (=> b!7570042 (= e!4506856 tp!2205214)))

(assert (= (and b!7569700 ((_ is ElementMatch!20005) (regOne!40523 r!24129))) b!7570040))

(assert (= (and b!7569700 ((_ is Concat!28850) (regOne!40523 r!24129))) b!7570041))

(assert (= (and b!7569700 ((_ is Star!20005) (regOne!40523 r!24129))) b!7570042))

(assert (= (and b!7569700 ((_ is Union!20005) (regOne!40523 r!24129))) b!7570043))

(declare-fun b!7570050 () Bool)

(declare-fun e!4506858 () Bool)

(assert (=> b!7570050 (= e!4506858 tp_is_empty!50365)))

(assert (=> b!7569700 (= tp!2205165 e!4506858)))

(declare-fun b!7570053 () Bool)

(declare-fun tp!2205227 () Bool)

(declare-fun tp!2205228 () Bool)

(assert (=> b!7570053 (= e!4506858 (and tp!2205227 tp!2205228))))

(declare-fun b!7570051 () Bool)

(declare-fun tp!2205226 () Bool)

(declare-fun tp!2205225 () Bool)

(assert (=> b!7570051 (= e!4506858 (and tp!2205226 tp!2205225))))

(declare-fun b!7570052 () Bool)

(declare-fun tp!2205224 () Bool)

(assert (=> b!7570052 (= e!4506858 tp!2205224)))

(assert (= (and b!7569700 ((_ is ElementMatch!20005) (regTwo!40523 r!24129))) b!7570050))

(assert (= (and b!7569700 ((_ is Concat!28850) (regTwo!40523 r!24129))) b!7570051))

(assert (= (and b!7569700 ((_ is Star!20005) (regTwo!40523 r!24129))) b!7570052))

(assert (= (and b!7569700 ((_ is Union!20005) (regTwo!40523 r!24129))) b!7570053))

(declare-fun b!7570056 () Bool)

(declare-fun e!4506861 () Bool)

(assert (=> b!7570056 (= e!4506861 tp_is_empty!50365)))

(assert (=> b!7569695 (= tp!2205172 e!4506861)))

(declare-fun b!7570059 () Bool)

(declare-fun tp!2205234 () Bool)

(declare-fun tp!2205235 () Bool)

(assert (=> b!7570059 (= e!4506861 (and tp!2205234 tp!2205235))))

(declare-fun b!7570057 () Bool)

(declare-fun tp!2205233 () Bool)

(declare-fun tp!2205232 () Bool)

(assert (=> b!7570057 (= e!4506861 (and tp!2205233 tp!2205232))))

(declare-fun b!7570058 () Bool)

(declare-fun tp!2205231 () Bool)

(assert (=> b!7570058 (= e!4506861 tp!2205231)))

(assert (= (and b!7569695 ((_ is ElementMatch!20005) (reg!20334 baseR!100))) b!7570056))

(assert (= (and b!7569695 ((_ is Concat!28850) (reg!20334 baseR!100))) b!7570057))

(assert (= (and b!7569695 ((_ is Star!20005) (reg!20334 baseR!100))) b!7570058))

(assert (= (and b!7569695 ((_ is Union!20005) (reg!20334 baseR!100))) b!7570059))

(declare-fun b!7570061 () Bool)

(declare-fun e!4506863 () Bool)

(assert (=> b!7570061 (= e!4506863 tp_is_empty!50365)))

(assert (=> b!7569701 (= tp!2205171 e!4506863)))

(declare-fun b!7570064 () Bool)

(declare-fun tp!2205240 () Bool)

(declare-fun tp!2205241 () Bool)

(assert (=> b!7570064 (= e!4506863 (and tp!2205240 tp!2205241))))

(declare-fun b!7570062 () Bool)

(declare-fun tp!2205239 () Bool)

(declare-fun tp!2205238 () Bool)

(assert (=> b!7570062 (= e!4506863 (and tp!2205239 tp!2205238))))

(declare-fun b!7570063 () Bool)

(declare-fun tp!2205237 () Bool)

(assert (=> b!7570063 (= e!4506863 tp!2205237)))

(assert (= (and b!7569701 ((_ is ElementMatch!20005) (regOne!40522 r!24129))) b!7570061))

(assert (= (and b!7569701 ((_ is Concat!28850) (regOne!40522 r!24129))) b!7570062))

(assert (= (and b!7569701 ((_ is Star!20005) (regOne!40522 r!24129))) b!7570063))

(assert (= (and b!7569701 ((_ is Union!20005) (regOne!40522 r!24129))) b!7570064))

(declare-fun b!7570069 () Bool)

(declare-fun e!4506865 () Bool)

(assert (=> b!7570069 (= e!4506865 tp_is_empty!50365)))

(assert (=> b!7569701 (= tp!2205164 e!4506865)))

(declare-fun b!7570072 () Bool)

(declare-fun tp!2205250 () Bool)

(declare-fun tp!2205251 () Bool)

(assert (=> b!7570072 (= e!4506865 (and tp!2205250 tp!2205251))))

(declare-fun b!7570070 () Bool)

(declare-fun tp!2205249 () Bool)

(declare-fun tp!2205248 () Bool)

(assert (=> b!7570070 (= e!4506865 (and tp!2205249 tp!2205248))))

(declare-fun b!7570071 () Bool)

(declare-fun tp!2205247 () Bool)

(assert (=> b!7570071 (= e!4506865 tp!2205247)))

(assert (= (and b!7569701 ((_ is ElementMatch!20005) (regTwo!40522 r!24129))) b!7570069))

(assert (= (and b!7569701 ((_ is Concat!28850) (regTwo!40522 r!24129))) b!7570070))

(assert (= (and b!7569701 ((_ is Star!20005) (regTwo!40522 r!24129))) b!7570071))

(assert (= (and b!7569701 ((_ is Union!20005) (regTwo!40522 r!24129))) b!7570072))

(declare-fun b!7570089 () Bool)

(declare-fun e!4506871 () Bool)

(declare-fun tp!2205269 () Bool)

(assert (=> b!7570089 (= e!4506871 (and tp_is_empty!50365 tp!2205269))))

(assert (=> b!7569691 (= tp!2205173 e!4506871)))

(assert (= (and b!7569691 ((_ is Cons!72764) (t!387623 testedP!418))) b!7570089))

(declare-fun b!7570091 () Bool)

(declare-fun e!4506872 () Bool)

(assert (=> b!7570091 (= e!4506872 tp_is_empty!50365)))

(assert (=> b!7569697 (= tp!2205169 e!4506872)))

(declare-fun b!7570094 () Bool)

(declare-fun tp!2205274 () Bool)

(declare-fun tp!2205275 () Bool)

(assert (=> b!7570094 (= e!4506872 (and tp!2205274 tp!2205275))))

(declare-fun b!7570092 () Bool)

(declare-fun tp!2205273 () Bool)

(declare-fun tp!2205271 () Bool)

(assert (=> b!7570092 (= e!4506872 (and tp!2205273 tp!2205271))))

(declare-fun b!7570093 () Bool)

(declare-fun tp!2205270 () Bool)

(assert (=> b!7570093 (= e!4506872 tp!2205270)))

(assert (= (and b!7569697 ((_ is ElementMatch!20005) (reg!20334 r!24129))) b!7570091))

(assert (= (and b!7569697 ((_ is Concat!28850) (reg!20334 r!24129))) b!7570092))

(assert (= (and b!7569697 ((_ is Star!20005) (reg!20334 r!24129))) b!7570093))

(assert (= (and b!7569697 ((_ is Union!20005) (reg!20334 r!24129))) b!7570094))

(declare-fun b!7570099 () Bool)

(declare-fun e!4506875 () Bool)

(declare-fun tp!2205281 () Bool)

(assert (=> b!7570099 (= e!4506875 (and tp_is_empty!50365 tp!2205281))))

(assert (=> b!7569703 (= tp!2205167 e!4506875)))

(assert (= (and b!7569703 ((_ is Cons!72764) (t!387623 input!7855))) b!7570099))

(declare-fun b!7570100 () Bool)

(declare-fun e!4506876 () Bool)

(assert (=> b!7570100 (= e!4506876 tp_is_empty!50365)))

(assert (=> b!7569688 (= tp!2205163 e!4506876)))

(declare-fun b!7570103 () Bool)

(declare-fun tp!2205285 () Bool)

(declare-fun tp!2205286 () Bool)

(assert (=> b!7570103 (= e!4506876 (and tp!2205285 tp!2205286))))

(declare-fun b!7570101 () Bool)

(declare-fun tp!2205284 () Bool)

(declare-fun tp!2205283 () Bool)

(assert (=> b!7570101 (= e!4506876 (and tp!2205284 tp!2205283))))

(declare-fun b!7570102 () Bool)

(declare-fun tp!2205282 () Bool)

(assert (=> b!7570102 (= e!4506876 tp!2205282)))

(assert (= (and b!7569688 ((_ is ElementMatch!20005) (regOne!40523 baseR!100))) b!7570100))

(assert (= (and b!7569688 ((_ is Concat!28850) (regOne!40523 baseR!100))) b!7570101))

(assert (= (and b!7569688 ((_ is Star!20005) (regOne!40523 baseR!100))) b!7570102))

(assert (= (and b!7569688 ((_ is Union!20005) (regOne!40523 baseR!100))) b!7570103))

(declare-fun b!7570104 () Bool)

(declare-fun e!4506877 () Bool)

(assert (=> b!7570104 (= e!4506877 tp_is_empty!50365)))

(assert (=> b!7569688 (= tp!2205170 e!4506877)))

(declare-fun b!7570107 () Bool)

(declare-fun tp!2205290 () Bool)

(declare-fun tp!2205291 () Bool)

(assert (=> b!7570107 (= e!4506877 (and tp!2205290 tp!2205291))))

(declare-fun b!7570105 () Bool)

(declare-fun tp!2205289 () Bool)

(declare-fun tp!2205288 () Bool)

(assert (=> b!7570105 (= e!4506877 (and tp!2205289 tp!2205288))))

(declare-fun b!7570106 () Bool)

(declare-fun tp!2205287 () Bool)

(assert (=> b!7570106 (= e!4506877 tp!2205287)))

(assert (= (and b!7569688 ((_ is ElementMatch!20005) (regTwo!40523 baseR!100))) b!7570104))

(assert (= (and b!7569688 ((_ is Concat!28850) (regTwo!40523 baseR!100))) b!7570105))

(assert (= (and b!7569688 ((_ is Star!20005) (regTwo!40523 baseR!100))) b!7570106))

(assert (= (and b!7569688 ((_ is Union!20005) (regTwo!40523 baseR!100))) b!7570107))

(declare-fun b!7570108 () Bool)

(declare-fun e!4506878 () Bool)

(assert (=> b!7570108 (= e!4506878 tp_is_empty!50365)))

(assert (=> b!7569694 (= tp!2205168 e!4506878)))

(declare-fun b!7570111 () Bool)

(declare-fun tp!2205295 () Bool)

(declare-fun tp!2205296 () Bool)

(assert (=> b!7570111 (= e!4506878 (and tp!2205295 tp!2205296))))

(declare-fun b!7570109 () Bool)

(declare-fun tp!2205294 () Bool)

(declare-fun tp!2205293 () Bool)

(assert (=> b!7570109 (= e!4506878 (and tp!2205294 tp!2205293))))

(declare-fun b!7570110 () Bool)

(declare-fun tp!2205292 () Bool)

(assert (=> b!7570110 (= e!4506878 tp!2205292)))

(assert (= (and b!7569694 ((_ is ElementMatch!20005) (regOne!40522 baseR!100))) b!7570108))

(assert (= (and b!7569694 ((_ is Concat!28850) (regOne!40522 baseR!100))) b!7570109))

(assert (= (and b!7569694 ((_ is Star!20005) (regOne!40522 baseR!100))) b!7570110))

(assert (= (and b!7569694 ((_ is Union!20005) (regOne!40522 baseR!100))) b!7570111))

(declare-fun b!7570112 () Bool)

(declare-fun e!4506879 () Bool)

(assert (=> b!7570112 (= e!4506879 tp_is_empty!50365)))

(assert (=> b!7569694 (= tp!2205162 e!4506879)))

(declare-fun b!7570115 () Bool)

(declare-fun tp!2205300 () Bool)

(declare-fun tp!2205301 () Bool)

(assert (=> b!7570115 (= e!4506879 (and tp!2205300 tp!2205301))))

(declare-fun b!7570113 () Bool)

(declare-fun tp!2205299 () Bool)

(declare-fun tp!2205298 () Bool)

(assert (=> b!7570113 (= e!4506879 (and tp!2205299 tp!2205298))))

(declare-fun b!7570114 () Bool)

(declare-fun tp!2205297 () Bool)

(assert (=> b!7570114 (= e!4506879 tp!2205297)))

(assert (= (and b!7569694 ((_ is ElementMatch!20005) (regTwo!40522 baseR!100))) b!7570112))

(assert (= (and b!7569694 ((_ is Concat!28850) (regTwo!40522 baseR!100))) b!7570113))

(assert (= (and b!7569694 ((_ is Star!20005) (regTwo!40522 baseR!100))) b!7570114))

(assert (= (and b!7569694 ((_ is Union!20005) (regTwo!40522 baseR!100))) b!7570115))

(check-sat (not b!7569904) (not b!7570041) (not d!2317362) (not b!7569877) (not bm!693983) (not b!7569795) (not b!7569874) (not b!7570106) (not bm!693969) (not d!2317320) (not b!7569792) (not b!7569987) (not b!7570102) (not b!7570115) (not b!7570059) (not b!7569856) (not b!7570058) (not b!7569939) (not b!7570051) (not b!7570099) (not d!2317348) (not b!7569903) (not b!7569784) (not b!7569878) (not b!7569788) (not b!7570111) (not b!7570113) (not b!7569870) (not b!7570072) (not b!7570070) (not d!2317336) (not b!7569796) (not b!7570110) (not b!7570064) (not b!7570094) (not b!7569880) (not b!7570089) (not b!7570071) (not b!7570107) (not b!7569782) (not d!2317368) (not b!7570105) (not b!7570053) (not b!7569798) (not d!2317334) (not b!7570103) (not b!7569789) (not b!7570063) (not b!7570002) (not b!7570057) (not b!7570042) (not b!7570109) (not b!7569775) (not d!2317322) (not bm!693979) (not d!2317360) (not bm!693982) tp_is_empty!50365 (not bm!693980) (not b!7569871) (not b!7569778) (not b!7570093) (not b!7569988) (not bm!693977) (not b!7569986) (not b!7569781) (not b!7569774) (not b!7569917) (not b!7570114) (not bm!693968) (not b!7570101) (not b!7570092) (not b!7570052) (not b!7569865) (not b!7569936) (not b!7570043) (not b!7570062) (not d!2317316))
(check-sat)
