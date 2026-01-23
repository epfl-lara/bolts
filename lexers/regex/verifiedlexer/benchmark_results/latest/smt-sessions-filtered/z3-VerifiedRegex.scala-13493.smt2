; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728088 () Bool)

(assert start!728088)

(declare-fun b!7521532 () Bool)

(declare-fun e!4483739 () Bool)

(declare-datatypes ((C!39888 0))(
  ( (C!39889 (val!30384 Int)) )
))
(declare-datatypes ((Regex!19781 0))(
  ( (ElementMatch!19781 (c!1389626 C!39888)) (Concat!28626 (regOne!40074 Regex!19781) (regTwo!40074 Regex!19781)) (EmptyExpr!19781) (Star!19781 (reg!20110 Regex!19781)) (EmptyLang!19781) (Union!19781 (regOne!40075 Regex!19781) (regTwo!40075 Regex!19781)) )
))
(declare-fun expr!41 () Regex!19781)

(declare-fun validRegex!10209 (Regex!19781) Bool)

(assert (=> b!7521532 (= e!4483739 (not (validRegex!10209 (regTwo!40074 expr!41))))))

(declare-fun b!7521533 () Bool)

(declare-fun e!4483738 () Bool)

(declare-fun tp_is_empty!49917 () Bool)

(assert (=> b!7521533 (= e!4483738 tp_is_empty!49917)))

(declare-fun b!7521534 () Bool)

(declare-fun res!3014978 () Bool)

(assert (=> b!7521534 (=> (not res!3014978) (not e!4483739))))

(declare-fun nullable!8615 (Regex!19781) Bool)

(assert (=> b!7521534 (= res!3014978 (nullable!8615 (regOne!40074 expr!41)))))

(declare-fun b!7521535 () Bool)

(declare-fun tp!2184836 () Bool)

(assert (=> b!7521535 (= e!4483738 tp!2184836)))

(declare-fun res!3014977 () Bool)

(assert (=> start!728088 (=> (not res!3014977) (not e!4483739))))

(assert (=> start!728088 (= res!3014977 (validRegex!10209 expr!41))))

(assert (=> start!728088 e!4483739))

(assert (=> start!728088 e!4483738))

(assert (=> start!728088 tp_is_empty!49917))

(declare-fun b!7521531 () Bool)

(declare-fun tp!2184835 () Bool)

(declare-fun tp!2184839 () Bool)

(assert (=> b!7521531 (= e!4483738 (and tp!2184835 tp!2184839))))

(declare-fun b!7521536 () Bool)

(declare-fun tp!2184837 () Bool)

(declare-fun tp!2184838 () Bool)

(assert (=> b!7521536 (= e!4483738 (and tp!2184837 tp!2184838))))

(declare-fun b!7521537 () Bool)

(declare-fun res!3014976 () Bool)

(assert (=> b!7521537 (=> (not res!3014976) (not e!4483739))))

(declare-fun a!1106 () C!39888)

(get-info :version)

(assert (=> b!7521537 (= res!3014976 (and (or (not ((_ is ElementMatch!19781) expr!41)) (not (= (c!1389626 expr!41) a!1106))) (not ((_ is Union!19781) expr!41)) ((_ is Concat!28626) expr!41)))))

(assert (= (and start!728088 res!3014977) b!7521537))

(assert (= (and b!7521537 res!3014976) b!7521534))

(assert (= (and b!7521534 res!3014978) b!7521532))

(assert (= (and start!728088 ((_ is ElementMatch!19781) expr!41)) b!7521533))

(assert (= (and start!728088 ((_ is Concat!28626) expr!41)) b!7521536))

(assert (= (and start!728088 ((_ is Star!19781) expr!41)) b!7521535))

(assert (= (and start!728088 ((_ is Union!19781) expr!41)) b!7521531))

(declare-fun m!8100388 () Bool)

(assert (=> b!7521532 m!8100388))

(declare-fun m!8100390 () Bool)

(assert (=> b!7521534 m!8100390))

(declare-fun m!8100392 () Bool)

(assert (=> start!728088 m!8100392))

(check-sat tp_is_empty!49917 (not b!7521531) (not start!728088) (not b!7521532) (not b!7521536) (not b!7521534) (not b!7521535))
(check-sat)
(get-model)

(declare-fun b!7521622 () Bool)

(declare-fun e!4483795 () Bool)

(declare-fun call!689739 () Bool)

(assert (=> b!7521622 (= e!4483795 call!689739)))

(declare-fun bm!689734 () Bool)

(declare-fun call!689741 () Bool)

(declare-fun c!1389640 () Bool)

(assert (=> bm!689734 (= call!689741 (validRegex!10209 (ite c!1389640 (regOne!40075 expr!41) (regTwo!40074 expr!41))))))

(declare-fun b!7521623 () Bool)

(declare-fun e!4483792 () Bool)

(declare-fun e!4483791 () Bool)

(assert (=> b!7521623 (= e!4483792 e!4483791)))

(declare-fun res!3015010 () Bool)

(assert (=> b!7521623 (= res!3015010 (not (nullable!8615 (reg!20110 expr!41))))))

(assert (=> b!7521623 (=> (not res!3015010) (not e!4483791))))

(declare-fun b!7521624 () Bool)

(declare-fun res!3015013 () Bool)

(assert (=> b!7521624 (=> (not res!3015013) (not e!4483795))))

(assert (=> b!7521624 (= res!3015013 call!689741)))

(declare-fun e!4483789 () Bool)

(assert (=> b!7521624 (= e!4483789 e!4483795)))

(declare-fun b!7521625 () Bool)

(declare-fun res!3015012 () Bool)

(declare-fun e!4483790 () Bool)

(assert (=> b!7521625 (=> res!3015012 e!4483790)))

(assert (=> b!7521625 (= res!3015012 (not ((_ is Concat!28626) expr!41)))))

(assert (=> b!7521625 (= e!4483789 e!4483790)))

(declare-fun bm!689735 () Bool)

(declare-fun call!689740 () Bool)

(assert (=> bm!689735 (= call!689739 call!689740)))

(declare-fun b!7521626 () Bool)

(declare-fun e!4483794 () Bool)

(assert (=> b!7521626 (= e!4483794 e!4483792)))

(declare-fun c!1389639 () Bool)

(assert (=> b!7521626 (= c!1389639 ((_ is Star!19781) expr!41))))

(declare-fun d!2309052 () Bool)

(declare-fun res!3015009 () Bool)

(assert (=> d!2309052 (=> res!3015009 e!4483794)))

(assert (=> d!2309052 (= res!3015009 ((_ is ElementMatch!19781) expr!41))))

(assert (=> d!2309052 (= (validRegex!10209 expr!41) e!4483794)))

(declare-fun b!7521627 () Bool)

(declare-fun e!4483793 () Bool)

(assert (=> b!7521627 (= e!4483790 e!4483793)))

(declare-fun res!3015011 () Bool)

(assert (=> b!7521627 (=> (not res!3015011) (not e!4483793))))

(assert (=> b!7521627 (= res!3015011 call!689739)))

(declare-fun b!7521628 () Bool)

(assert (=> b!7521628 (= e!4483792 e!4483789)))

(assert (=> b!7521628 (= c!1389640 ((_ is Union!19781) expr!41))))

(declare-fun b!7521629 () Bool)

(assert (=> b!7521629 (= e!4483791 call!689740)))

(declare-fun b!7521630 () Bool)

(assert (=> b!7521630 (= e!4483793 call!689741)))

(declare-fun bm!689736 () Bool)

(assert (=> bm!689736 (= call!689740 (validRegex!10209 (ite c!1389639 (reg!20110 expr!41) (ite c!1389640 (regTwo!40075 expr!41) (regOne!40074 expr!41)))))))

(assert (= (and d!2309052 (not res!3015009)) b!7521626))

(assert (= (and b!7521626 c!1389639) b!7521623))

(assert (= (and b!7521626 (not c!1389639)) b!7521628))

(assert (= (and b!7521623 res!3015010) b!7521629))

(assert (= (and b!7521628 c!1389640) b!7521624))

(assert (= (and b!7521628 (not c!1389640)) b!7521625))

(assert (= (and b!7521624 res!3015013) b!7521622))

(assert (= (and b!7521625 (not res!3015012)) b!7521627))

(assert (= (and b!7521627 res!3015011) b!7521630))

(assert (= (or b!7521622 b!7521627) bm!689735))

(assert (= (or b!7521624 b!7521630) bm!689734))

(assert (= (or b!7521629 bm!689735) bm!689736))

(declare-fun m!8100408 () Bool)

(assert (=> bm!689734 m!8100408))

(declare-fun m!8100410 () Bool)

(assert (=> b!7521623 m!8100410))

(declare-fun m!8100412 () Bool)

(assert (=> bm!689736 m!8100412))

(assert (=> start!728088 d!2309052))

(declare-fun b!7521631 () Bool)

(declare-fun e!4483802 () Bool)

(declare-fun call!689742 () Bool)

(assert (=> b!7521631 (= e!4483802 call!689742)))

(declare-fun bm!689737 () Bool)

(declare-fun call!689744 () Bool)

(declare-fun c!1389642 () Bool)

(assert (=> bm!689737 (= call!689744 (validRegex!10209 (ite c!1389642 (regOne!40075 (regTwo!40074 expr!41)) (regTwo!40074 (regTwo!40074 expr!41)))))))

(declare-fun b!7521632 () Bool)

(declare-fun e!4483799 () Bool)

(declare-fun e!4483798 () Bool)

(assert (=> b!7521632 (= e!4483799 e!4483798)))

(declare-fun res!3015015 () Bool)

(assert (=> b!7521632 (= res!3015015 (not (nullable!8615 (reg!20110 (regTwo!40074 expr!41)))))))

(assert (=> b!7521632 (=> (not res!3015015) (not e!4483798))))

(declare-fun b!7521633 () Bool)

(declare-fun res!3015018 () Bool)

(assert (=> b!7521633 (=> (not res!3015018) (not e!4483802))))

(assert (=> b!7521633 (= res!3015018 call!689744)))

(declare-fun e!4483796 () Bool)

(assert (=> b!7521633 (= e!4483796 e!4483802)))

(declare-fun b!7521634 () Bool)

(declare-fun res!3015017 () Bool)

(declare-fun e!4483797 () Bool)

(assert (=> b!7521634 (=> res!3015017 e!4483797)))

(assert (=> b!7521634 (= res!3015017 (not ((_ is Concat!28626) (regTwo!40074 expr!41))))))

(assert (=> b!7521634 (= e!4483796 e!4483797)))

(declare-fun bm!689738 () Bool)

(declare-fun call!689743 () Bool)

(assert (=> bm!689738 (= call!689742 call!689743)))

(declare-fun b!7521635 () Bool)

(declare-fun e!4483801 () Bool)

(assert (=> b!7521635 (= e!4483801 e!4483799)))

(declare-fun c!1389641 () Bool)

(assert (=> b!7521635 (= c!1389641 ((_ is Star!19781) (regTwo!40074 expr!41)))))

(declare-fun d!2309058 () Bool)

(declare-fun res!3015014 () Bool)

(assert (=> d!2309058 (=> res!3015014 e!4483801)))

(assert (=> d!2309058 (= res!3015014 ((_ is ElementMatch!19781) (regTwo!40074 expr!41)))))

(assert (=> d!2309058 (= (validRegex!10209 (regTwo!40074 expr!41)) e!4483801)))

(declare-fun b!7521636 () Bool)

(declare-fun e!4483800 () Bool)

(assert (=> b!7521636 (= e!4483797 e!4483800)))

(declare-fun res!3015016 () Bool)

(assert (=> b!7521636 (=> (not res!3015016) (not e!4483800))))

(assert (=> b!7521636 (= res!3015016 call!689742)))

(declare-fun b!7521637 () Bool)

(assert (=> b!7521637 (= e!4483799 e!4483796)))

(assert (=> b!7521637 (= c!1389642 ((_ is Union!19781) (regTwo!40074 expr!41)))))

(declare-fun b!7521638 () Bool)

(assert (=> b!7521638 (= e!4483798 call!689743)))

(declare-fun b!7521639 () Bool)

(assert (=> b!7521639 (= e!4483800 call!689744)))

(declare-fun bm!689739 () Bool)

(assert (=> bm!689739 (= call!689743 (validRegex!10209 (ite c!1389641 (reg!20110 (regTwo!40074 expr!41)) (ite c!1389642 (regTwo!40075 (regTwo!40074 expr!41)) (regOne!40074 (regTwo!40074 expr!41))))))))

(assert (= (and d!2309058 (not res!3015014)) b!7521635))

(assert (= (and b!7521635 c!1389641) b!7521632))

(assert (= (and b!7521635 (not c!1389641)) b!7521637))

(assert (= (and b!7521632 res!3015015) b!7521638))

(assert (= (and b!7521637 c!1389642) b!7521633))

(assert (= (and b!7521637 (not c!1389642)) b!7521634))

(assert (= (and b!7521633 res!3015018) b!7521631))

(assert (= (and b!7521634 (not res!3015017)) b!7521636))

(assert (= (and b!7521636 res!3015016) b!7521639))

(assert (= (or b!7521631 b!7521636) bm!689738))

(assert (= (or b!7521633 b!7521639) bm!689737))

(assert (= (or b!7521638 bm!689738) bm!689739))

(declare-fun m!8100414 () Bool)

(assert (=> bm!689737 m!8100414))

(declare-fun m!8100416 () Bool)

(assert (=> b!7521632 m!8100416))

(declare-fun m!8100418 () Bool)

(assert (=> bm!689739 m!8100418))

(assert (=> b!7521532 d!2309058))

(declare-fun d!2309060 () Bool)

(declare-fun nullableFct!3447 (Regex!19781) Bool)

(assert (=> d!2309060 (= (nullable!8615 (regOne!40074 expr!41)) (nullableFct!3447 (regOne!40074 expr!41)))))

(declare-fun bs!1939670 () Bool)

(assert (= bs!1939670 d!2309060))

(declare-fun m!8100420 () Bool)

(assert (=> bs!1939670 m!8100420))

(assert (=> b!7521534 d!2309060))

(declare-fun b!7521652 () Bool)

(declare-fun e!4483805 () Bool)

(declare-fun tp!2184885 () Bool)

(assert (=> b!7521652 (= e!4483805 tp!2184885)))

(declare-fun b!7521651 () Bool)

(declare-fun tp!2184889 () Bool)

(declare-fun tp!2184886 () Bool)

(assert (=> b!7521651 (= e!4483805 (and tp!2184889 tp!2184886))))

(declare-fun b!7521650 () Bool)

(assert (=> b!7521650 (= e!4483805 tp_is_empty!49917)))

(assert (=> b!7521536 (= tp!2184837 e!4483805)))

(declare-fun b!7521653 () Bool)

(declare-fun tp!2184887 () Bool)

(declare-fun tp!2184888 () Bool)

(assert (=> b!7521653 (= e!4483805 (and tp!2184887 tp!2184888))))

(assert (= (and b!7521536 ((_ is ElementMatch!19781) (regOne!40074 expr!41))) b!7521650))

(assert (= (and b!7521536 ((_ is Concat!28626) (regOne!40074 expr!41))) b!7521651))

(assert (= (and b!7521536 ((_ is Star!19781) (regOne!40074 expr!41))) b!7521652))

(assert (= (and b!7521536 ((_ is Union!19781) (regOne!40074 expr!41))) b!7521653))

(declare-fun b!7521656 () Bool)

(declare-fun e!4483806 () Bool)

(declare-fun tp!2184890 () Bool)

(assert (=> b!7521656 (= e!4483806 tp!2184890)))

(declare-fun b!7521655 () Bool)

(declare-fun tp!2184894 () Bool)

(declare-fun tp!2184891 () Bool)

(assert (=> b!7521655 (= e!4483806 (and tp!2184894 tp!2184891))))

(declare-fun b!7521654 () Bool)

(assert (=> b!7521654 (= e!4483806 tp_is_empty!49917)))

(assert (=> b!7521536 (= tp!2184838 e!4483806)))

(declare-fun b!7521657 () Bool)

(declare-fun tp!2184892 () Bool)

(declare-fun tp!2184893 () Bool)

(assert (=> b!7521657 (= e!4483806 (and tp!2184892 tp!2184893))))

(assert (= (and b!7521536 ((_ is ElementMatch!19781) (regTwo!40074 expr!41))) b!7521654))

(assert (= (and b!7521536 ((_ is Concat!28626) (regTwo!40074 expr!41))) b!7521655))

(assert (= (and b!7521536 ((_ is Star!19781) (regTwo!40074 expr!41))) b!7521656))

(assert (= (and b!7521536 ((_ is Union!19781) (regTwo!40074 expr!41))) b!7521657))

(declare-fun b!7521660 () Bool)

(declare-fun e!4483807 () Bool)

(declare-fun tp!2184895 () Bool)

(assert (=> b!7521660 (= e!4483807 tp!2184895)))

(declare-fun b!7521659 () Bool)

(declare-fun tp!2184899 () Bool)

(declare-fun tp!2184896 () Bool)

(assert (=> b!7521659 (= e!4483807 (and tp!2184899 tp!2184896))))

(declare-fun b!7521658 () Bool)

(assert (=> b!7521658 (= e!4483807 tp_is_empty!49917)))

(assert (=> b!7521531 (= tp!2184835 e!4483807)))

(declare-fun b!7521661 () Bool)

(declare-fun tp!2184897 () Bool)

(declare-fun tp!2184898 () Bool)

(assert (=> b!7521661 (= e!4483807 (and tp!2184897 tp!2184898))))

(assert (= (and b!7521531 ((_ is ElementMatch!19781) (regOne!40075 expr!41))) b!7521658))

(assert (= (and b!7521531 ((_ is Concat!28626) (regOne!40075 expr!41))) b!7521659))

(assert (= (and b!7521531 ((_ is Star!19781) (regOne!40075 expr!41))) b!7521660))

(assert (= (and b!7521531 ((_ is Union!19781) (regOne!40075 expr!41))) b!7521661))

(declare-fun b!7521664 () Bool)

(declare-fun e!4483808 () Bool)

(declare-fun tp!2184900 () Bool)

(assert (=> b!7521664 (= e!4483808 tp!2184900)))

(declare-fun b!7521663 () Bool)

(declare-fun tp!2184904 () Bool)

(declare-fun tp!2184901 () Bool)

(assert (=> b!7521663 (= e!4483808 (and tp!2184904 tp!2184901))))

(declare-fun b!7521662 () Bool)

(assert (=> b!7521662 (= e!4483808 tp_is_empty!49917)))

(assert (=> b!7521531 (= tp!2184839 e!4483808)))

(declare-fun b!7521665 () Bool)

(declare-fun tp!2184902 () Bool)

(declare-fun tp!2184903 () Bool)

(assert (=> b!7521665 (= e!4483808 (and tp!2184902 tp!2184903))))

(assert (= (and b!7521531 ((_ is ElementMatch!19781) (regTwo!40075 expr!41))) b!7521662))

(assert (= (and b!7521531 ((_ is Concat!28626) (regTwo!40075 expr!41))) b!7521663))

(assert (= (and b!7521531 ((_ is Star!19781) (regTwo!40075 expr!41))) b!7521664))

(assert (= (and b!7521531 ((_ is Union!19781) (regTwo!40075 expr!41))) b!7521665))

(declare-fun b!7521668 () Bool)

(declare-fun e!4483809 () Bool)

(declare-fun tp!2184905 () Bool)

(assert (=> b!7521668 (= e!4483809 tp!2184905)))

(declare-fun b!7521667 () Bool)

(declare-fun tp!2184909 () Bool)

(declare-fun tp!2184906 () Bool)

(assert (=> b!7521667 (= e!4483809 (and tp!2184909 tp!2184906))))

(declare-fun b!7521666 () Bool)

(assert (=> b!7521666 (= e!4483809 tp_is_empty!49917)))

(assert (=> b!7521535 (= tp!2184836 e!4483809)))

(declare-fun b!7521669 () Bool)

(declare-fun tp!2184907 () Bool)

(declare-fun tp!2184908 () Bool)

(assert (=> b!7521669 (= e!4483809 (and tp!2184907 tp!2184908))))

(assert (= (and b!7521535 ((_ is ElementMatch!19781) (reg!20110 expr!41))) b!7521666))

(assert (= (and b!7521535 ((_ is Concat!28626) (reg!20110 expr!41))) b!7521667))

(assert (= (and b!7521535 ((_ is Star!19781) (reg!20110 expr!41))) b!7521668))

(assert (= (and b!7521535 ((_ is Union!19781) (reg!20110 expr!41))) b!7521669))

(check-sat (not b!7521665) (not b!7521623) tp_is_empty!49917 (not bm!689734) (not b!7521653) (not bm!689736) (not b!7521664) (not b!7521660) (not b!7521657) (not b!7521668) (not bm!689737) (not b!7521656) (not b!7521652) (not b!7521651) (not d!2309060) (not b!7521661) (not b!7521659) (not bm!689739) (not b!7521632) (not b!7521655) (not b!7521669) (not b!7521667) (not b!7521663))
(check-sat)
