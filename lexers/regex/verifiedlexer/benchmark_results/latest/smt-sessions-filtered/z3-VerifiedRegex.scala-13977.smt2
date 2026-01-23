; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739912 () Bool)

(assert start!739912)

(declare-fun b!7768483 () Bool)

(declare-fun e!4603133 () Bool)

(declare-datatypes ((C!41824 0))(
  ( (C!41825 (val!31352 Int)) )
))
(declare-datatypes ((Regex!20749 0))(
  ( (ElementMatch!20749 (c!1431768 C!41824)) (Concat!29594 (regOne!42010 Regex!20749) (regTwo!42010 Regex!20749)) (EmptyExpr!20749) (Star!20749 (reg!21078 Regex!20749)) (EmptyLang!20749) (Union!20749 (regOne!42011 Regex!20749) (regTwo!42011 Regex!20749)) )
))
(declare-fun lt!2671225 () Regex!20749)

(declare-fun validRegex!11163 (Regex!20749) Bool)

(assert (=> b!7768483 (= e!4603133 (not (validRegex!11163 lt!2671225)))))

(declare-fun b!7768484 () Bool)

(declare-fun e!4603132 () Bool)

(declare-fun tp!2282132 () Bool)

(assert (=> b!7768484 (= e!4603132 tp!2282132)))

(declare-fun b!7768485 () Bool)

(declare-fun res!3096931 () Bool)

(declare-fun e!4603130 () Bool)

(assert (=> b!7768485 (=> (not res!3096931) (not e!4603130))))

(declare-datatypes ((List!73590 0))(
  ( (Nil!73466) (Cons!73466 (h!79914 C!41824) (t!388325 List!73590)) )
))
(declare-fun s!14904 () List!73590)

(get-info :version)

(assert (=> b!7768485 (= res!3096931 ((_ is Cons!73466) s!14904))))

(declare-fun b!7768486 () Bool)

(declare-fun tp!2282134 () Bool)

(declare-fun tp!2282135 () Bool)

(assert (=> b!7768486 (= e!4603132 (and tp!2282134 tp!2282135))))

(declare-fun b!7768487 () Bool)

(declare-fun res!3096930 () Bool)

(assert (=> b!7768487 (=> (not res!3096930) (not e!4603130))))

(declare-fun lt!2671226 () Regex!20749)

(declare-fun matchR!10211 (Regex!20749 List!73590) Bool)

(assert (=> b!7768487 (= res!3096930 (matchR!10211 lt!2671226 s!14904))))

(declare-fun b!7768488 () Bool)

(declare-fun tp_is_empty!51853 () Bool)

(assert (=> b!7768488 (= e!4603132 tp_is_empty!51853)))

(declare-fun res!3096932 () Bool)

(assert (=> start!739912 (=> (not res!3096932) (not e!4603130))))

(assert (=> start!739912 (= res!3096932 (validRegex!11163 lt!2671226))))

(declare-fun r!25924 () Regex!20749)

(assert (=> start!739912 (= lt!2671226 (Star!20749 r!25924))))

(assert (=> start!739912 e!4603130))

(assert (=> start!739912 e!4603132))

(declare-fun e!4603131 () Bool)

(assert (=> start!739912 e!4603131))

(declare-fun b!7768489 () Bool)

(declare-fun tp!2282137 () Bool)

(assert (=> b!7768489 (= e!4603131 (and tp_is_empty!51853 tp!2282137))))

(declare-fun b!7768490 () Bool)

(declare-fun tp!2282136 () Bool)

(declare-fun tp!2282133 () Bool)

(assert (=> b!7768490 (= e!4603132 (and tp!2282136 tp!2282133))))

(declare-fun b!7768491 () Bool)

(assert (=> b!7768491 (= e!4603130 e!4603133)))

(declare-fun res!3096929 () Bool)

(assert (=> b!7768491 (=> (not res!3096929) (not e!4603133))))

(declare-fun derivativeStep!6094 (Regex!20749 C!41824) Regex!20749)

(assert (=> b!7768491 (= res!3096929 (= (derivativeStep!6094 lt!2671226 (h!79914 s!14904)) (Concat!29594 lt!2671225 lt!2671226)))))

(assert (=> b!7768491 (= lt!2671225 (derivativeStep!6094 r!25924 (h!79914 s!14904)))))

(assert (= (and start!739912 res!3096932) b!7768487))

(assert (= (and b!7768487 res!3096930) b!7768485))

(assert (= (and b!7768485 res!3096931) b!7768491))

(assert (= (and b!7768491 res!3096929) b!7768483))

(assert (= (and start!739912 ((_ is ElementMatch!20749) r!25924)) b!7768488))

(assert (= (and start!739912 ((_ is Concat!29594) r!25924)) b!7768490))

(assert (= (and start!739912 ((_ is Star!20749) r!25924)) b!7768484))

(assert (= (and start!739912 ((_ is Union!20749) r!25924)) b!7768486))

(assert (= (and start!739912 ((_ is Cons!73466) s!14904)) b!7768489))

(declare-fun m!8223704 () Bool)

(assert (=> b!7768483 m!8223704))

(declare-fun m!8223706 () Bool)

(assert (=> b!7768487 m!8223706))

(declare-fun m!8223708 () Bool)

(assert (=> start!739912 m!8223708))

(declare-fun m!8223710 () Bool)

(assert (=> b!7768491 m!8223710))

(declare-fun m!8223712 () Bool)

(assert (=> b!7768491 m!8223712))

(check-sat (not b!7768491) (not b!7768490) (not start!739912) (not b!7768483) (not b!7768486) (not b!7768489) (not b!7768484) tp_is_empty!51853 (not b!7768487))
(check-sat)
(get-model)

(declare-fun b!7768562 () Bool)

(declare-fun e!4603169 () Bool)

(declare-fun head!15879 (List!73590) C!41824)

(assert (=> b!7768562 (= e!4603169 (not (= (head!15879 s!14904) (c!1431768 lt!2671226))))))

(declare-fun b!7768563 () Bool)

(declare-fun res!3096980 () Bool)

(declare-fun e!4603171 () Bool)

(assert (=> b!7768563 (=> res!3096980 e!4603171)))

(assert (=> b!7768563 (= res!3096980 (not ((_ is ElementMatch!20749) lt!2671226)))))

(declare-fun e!4603170 () Bool)

(assert (=> b!7768563 (= e!4603170 e!4603171)))

(declare-fun b!7768565 () Bool)

(declare-fun res!3096978 () Bool)

(declare-fun e!4603172 () Bool)

(assert (=> b!7768565 (=> (not res!3096978) (not e!4603172))))

(declare-fun call!719802 () Bool)

(assert (=> b!7768565 (= res!3096978 (not call!719802))))

(declare-fun b!7768566 () Bool)

(declare-fun e!4603173 () Bool)

(declare-fun tail!15419 (List!73590) List!73590)

(assert (=> b!7768566 (= e!4603173 (matchR!10211 (derivativeStep!6094 lt!2671226 (head!15879 s!14904)) (tail!15419 s!14904)))))

(declare-fun b!7768567 () Bool)

(declare-fun e!4603175 () Bool)

(assert (=> b!7768567 (= e!4603171 e!4603175)))

(declare-fun res!3096973 () Bool)

(assert (=> b!7768567 (=> (not res!3096973) (not e!4603175))))

(declare-fun lt!2671232 () Bool)

(assert (=> b!7768567 (= res!3096973 (not lt!2671232))))

(declare-fun b!7768568 () Bool)

(assert (=> b!7768568 (= e!4603172 (= (head!15879 s!14904) (c!1431768 lt!2671226)))))

(declare-fun b!7768569 () Bool)

(declare-fun e!4603174 () Bool)

(assert (=> b!7768569 (= e!4603174 (= lt!2671232 call!719802))))

(declare-fun bm!719797 () Bool)

(declare-fun isEmpty!42136 (List!73590) Bool)

(assert (=> bm!719797 (= call!719802 (isEmpty!42136 s!14904))))

(declare-fun b!7768570 () Bool)

(assert (=> b!7768570 (= e!4603170 (not lt!2671232))))

(declare-fun b!7768571 () Bool)

(assert (=> b!7768571 (= e!4603175 e!4603169)))

(declare-fun res!3096977 () Bool)

(assert (=> b!7768571 (=> res!3096977 e!4603169)))

(assert (=> b!7768571 (= res!3096977 call!719802)))

(declare-fun b!7768564 () Bool)

(assert (=> b!7768564 (= e!4603174 e!4603170)))

(declare-fun c!1431784 () Bool)

(assert (=> b!7768564 (= c!1431784 ((_ is EmptyLang!20749) lt!2671226))))

(declare-fun d!2344128 () Bool)

(assert (=> d!2344128 e!4603174))

(declare-fun c!1431785 () Bool)

(assert (=> d!2344128 (= c!1431785 ((_ is EmptyExpr!20749) lt!2671226))))

(assert (=> d!2344128 (= lt!2671232 e!4603173)))

(declare-fun c!1431786 () Bool)

(assert (=> d!2344128 (= c!1431786 (isEmpty!42136 s!14904))))

(assert (=> d!2344128 (validRegex!11163 lt!2671226)))

(assert (=> d!2344128 (= (matchR!10211 lt!2671226 s!14904) lt!2671232)))

(declare-fun b!7768572 () Bool)

(declare-fun res!3096976 () Bool)

(assert (=> b!7768572 (=> (not res!3096976) (not e!4603172))))

(assert (=> b!7768572 (= res!3096976 (isEmpty!42136 (tail!15419 s!14904)))))

(declare-fun b!7768573 () Bool)

(declare-fun res!3096974 () Bool)

(assert (=> b!7768573 (=> res!3096974 e!4603169)))

(assert (=> b!7768573 (= res!3096974 (not (isEmpty!42136 (tail!15419 s!14904))))))

(declare-fun b!7768574 () Bool)

(declare-fun nullable!9141 (Regex!20749) Bool)

(assert (=> b!7768574 (= e!4603173 (nullable!9141 lt!2671226))))

(declare-fun b!7768575 () Bool)

(declare-fun res!3096979 () Bool)

(assert (=> b!7768575 (=> res!3096979 e!4603171)))

(assert (=> b!7768575 (= res!3096979 e!4603172)))

(declare-fun res!3096975 () Bool)

(assert (=> b!7768575 (=> (not res!3096975) (not e!4603172))))

(assert (=> b!7768575 (= res!3096975 lt!2671232)))

(assert (= (and d!2344128 c!1431786) b!7768574))

(assert (= (and d!2344128 (not c!1431786)) b!7768566))

(assert (= (and d!2344128 c!1431785) b!7768569))

(assert (= (and d!2344128 (not c!1431785)) b!7768564))

(assert (= (and b!7768564 c!1431784) b!7768570))

(assert (= (and b!7768564 (not c!1431784)) b!7768563))

(assert (= (and b!7768563 (not res!3096980)) b!7768575))

(assert (= (and b!7768575 res!3096975) b!7768565))

(assert (= (and b!7768565 res!3096978) b!7768572))

(assert (= (and b!7768572 res!3096976) b!7768568))

(assert (= (and b!7768575 (not res!3096979)) b!7768567))

(assert (= (and b!7768567 res!3096973) b!7768571))

(assert (= (and b!7768571 (not res!3096977)) b!7768573))

(assert (= (and b!7768573 (not res!3096974)) b!7768562))

(assert (= (or b!7768569 b!7768565 b!7768571) bm!719797))

(declare-fun m!8223728 () Bool)

(assert (=> d!2344128 m!8223728))

(assert (=> d!2344128 m!8223708))

(declare-fun m!8223730 () Bool)

(assert (=> b!7768574 m!8223730))

(declare-fun m!8223732 () Bool)

(assert (=> b!7768566 m!8223732))

(assert (=> b!7768566 m!8223732))

(declare-fun m!8223734 () Bool)

(assert (=> b!7768566 m!8223734))

(declare-fun m!8223736 () Bool)

(assert (=> b!7768566 m!8223736))

(assert (=> b!7768566 m!8223734))

(assert (=> b!7768566 m!8223736))

(declare-fun m!8223738 () Bool)

(assert (=> b!7768566 m!8223738))

(assert (=> b!7768572 m!8223736))

(assert (=> b!7768572 m!8223736))

(declare-fun m!8223740 () Bool)

(assert (=> b!7768572 m!8223740))

(assert (=> b!7768562 m!8223732))

(assert (=> b!7768568 m!8223732))

(assert (=> bm!719797 m!8223728))

(assert (=> b!7768573 m!8223736))

(assert (=> b!7768573 m!8223736))

(assert (=> b!7768573 m!8223740))

(assert (=> b!7768487 d!2344128))

(declare-fun d!2344132 () Bool)

(declare-fun lt!2671239 () Regex!20749)

(assert (=> d!2344132 (validRegex!11163 lt!2671239)))

(declare-fun e!4603208 () Regex!20749)

(assert (=> d!2344132 (= lt!2671239 e!4603208)))

(declare-fun c!1431820 () Bool)

(assert (=> d!2344132 (= c!1431820 (or ((_ is EmptyExpr!20749) lt!2671226) ((_ is EmptyLang!20749) lt!2671226)))))

(assert (=> d!2344132 (validRegex!11163 lt!2671226)))

(assert (=> d!2344132 (= (derivativeStep!6094 lt!2671226 (h!79914 s!14904)) lt!2671239)))

(declare-fun b!7768636 () Bool)

(assert (=> b!7768636 (= e!4603208 EmptyLang!20749)))

(declare-fun b!7768637 () Bool)

(declare-fun c!1431821 () Bool)

(assert (=> b!7768637 (= c!1431821 (nullable!9141 (regOne!42010 lt!2671226)))))

(declare-fun e!4603207 () Regex!20749)

(declare-fun e!4603209 () Regex!20749)

(assert (=> b!7768637 (= e!4603207 e!4603209)))

(declare-fun bm!719822 () Bool)

(declare-fun call!719830 () Regex!20749)

(declare-fun call!719829 () Regex!20749)

(assert (=> bm!719822 (= call!719830 call!719829)))

(declare-fun b!7768638 () Bool)

(declare-fun e!4603206 () Regex!20749)

(assert (=> b!7768638 (= e!4603206 (ite (= (h!79914 s!14904) (c!1431768 lt!2671226)) EmptyExpr!20749 EmptyLang!20749))))

(declare-fun b!7768639 () Bool)

(declare-fun e!4603210 () Regex!20749)

(assert (=> b!7768639 (= e!4603210 e!4603207)))

(declare-fun c!1431819 () Bool)

(assert (=> b!7768639 (= c!1431819 ((_ is Star!20749) lt!2671226))))

(declare-fun b!7768640 () Bool)

(assert (=> b!7768640 (= e!4603208 e!4603206)))

(declare-fun c!1431818 () Bool)

(assert (=> b!7768640 (= c!1431818 ((_ is ElementMatch!20749) lt!2671226))))

(declare-fun b!7768641 () Bool)

(declare-fun c!1431817 () Bool)

(assert (=> b!7768641 (= c!1431817 ((_ is Union!20749) lt!2671226))))

(assert (=> b!7768641 (= e!4603206 e!4603210)))

(declare-fun b!7768642 () Bool)

(declare-fun call!719828 () Regex!20749)

(assert (=> b!7768642 (= e!4603209 (Union!20749 (Concat!29594 call!719828 (regTwo!42010 lt!2671226)) EmptyLang!20749))))

(declare-fun bm!719823 () Bool)

(assert (=> bm!719823 (= call!719829 (derivativeStep!6094 (ite c!1431817 (regOne!42011 lt!2671226) (ite c!1431819 (reg!21078 lt!2671226) (regOne!42010 lt!2671226))) (h!79914 s!14904)))))

(declare-fun b!7768643 () Bool)

(declare-fun call!719827 () Regex!20749)

(assert (=> b!7768643 (= e!4603209 (Union!20749 (Concat!29594 call!719828 (regTwo!42010 lt!2671226)) call!719827))))

(declare-fun bm!719824 () Bool)

(assert (=> bm!719824 (= call!719827 (derivativeStep!6094 (ite c!1431817 (regTwo!42011 lt!2671226) (regTwo!42010 lt!2671226)) (h!79914 s!14904)))))

(declare-fun bm!719825 () Bool)

(assert (=> bm!719825 (= call!719828 call!719830)))

(declare-fun b!7768644 () Bool)

(assert (=> b!7768644 (= e!4603207 (Concat!29594 call!719830 lt!2671226))))

(declare-fun b!7768645 () Bool)

(assert (=> b!7768645 (= e!4603210 (Union!20749 call!719829 call!719827))))

(assert (= (and d!2344132 c!1431820) b!7768636))

(assert (= (and d!2344132 (not c!1431820)) b!7768640))

(assert (= (and b!7768640 c!1431818) b!7768638))

(assert (= (and b!7768640 (not c!1431818)) b!7768641))

(assert (= (and b!7768641 c!1431817) b!7768645))

(assert (= (and b!7768641 (not c!1431817)) b!7768639))

(assert (= (and b!7768639 c!1431819) b!7768644))

(assert (= (and b!7768639 (not c!1431819)) b!7768637))

(assert (= (and b!7768637 c!1431821) b!7768643))

(assert (= (and b!7768637 (not c!1431821)) b!7768642))

(assert (= (or b!7768643 b!7768642) bm!719825))

(assert (= (or b!7768644 bm!719825) bm!719822))

(assert (= (or b!7768645 b!7768643) bm!719824))

(assert (= (or b!7768645 bm!719822) bm!719823))

(declare-fun m!8223760 () Bool)

(assert (=> d!2344132 m!8223760))

(assert (=> d!2344132 m!8223708))

(declare-fun m!8223762 () Bool)

(assert (=> b!7768637 m!8223762))

(declare-fun m!8223764 () Bool)

(assert (=> bm!719823 m!8223764))

(declare-fun m!8223766 () Bool)

(assert (=> bm!719824 m!8223766))

(assert (=> b!7768491 d!2344132))

(declare-fun d!2344138 () Bool)

(declare-fun lt!2671240 () Regex!20749)

(assert (=> d!2344138 (validRegex!11163 lt!2671240)))

(declare-fun e!4603227 () Regex!20749)

(assert (=> d!2344138 (= lt!2671240 e!4603227)))

(declare-fun c!1431829 () Bool)

(assert (=> d!2344138 (= c!1431829 (or ((_ is EmptyExpr!20749) r!25924) ((_ is EmptyLang!20749) r!25924)))))

(assert (=> d!2344138 (validRegex!11163 r!25924)))

(assert (=> d!2344138 (= (derivativeStep!6094 r!25924 (h!79914 s!14904)) lt!2671240)))

(declare-fun b!7768664 () Bool)

(assert (=> b!7768664 (= e!4603227 EmptyLang!20749)))

(declare-fun b!7768665 () Bool)

(declare-fun c!1431830 () Bool)

(assert (=> b!7768665 (= c!1431830 (nullable!9141 (regOne!42010 r!25924)))))

(declare-fun e!4603226 () Regex!20749)

(declare-fun e!4603228 () Regex!20749)

(assert (=> b!7768665 (= e!4603226 e!4603228)))

(declare-fun bm!719828 () Bool)

(declare-fun call!719838 () Regex!20749)

(declare-fun call!719837 () Regex!20749)

(assert (=> bm!719828 (= call!719838 call!719837)))

(declare-fun b!7768666 () Bool)

(declare-fun e!4603225 () Regex!20749)

(assert (=> b!7768666 (= e!4603225 (ite (= (h!79914 s!14904) (c!1431768 r!25924)) EmptyExpr!20749 EmptyLang!20749))))

(declare-fun b!7768667 () Bool)

(declare-fun e!4603229 () Regex!20749)

(assert (=> b!7768667 (= e!4603229 e!4603226)))

(declare-fun c!1431828 () Bool)

(assert (=> b!7768667 (= c!1431828 ((_ is Star!20749) r!25924))))

(declare-fun b!7768668 () Bool)

(assert (=> b!7768668 (= e!4603227 e!4603225)))

(declare-fun c!1431827 () Bool)

(assert (=> b!7768668 (= c!1431827 ((_ is ElementMatch!20749) r!25924))))

(declare-fun b!7768669 () Bool)

(declare-fun c!1431826 () Bool)

(assert (=> b!7768669 (= c!1431826 ((_ is Union!20749) r!25924))))

(assert (=> b!7768669 (= e!4603225 e!4603229)))

(declare-fun b!7768670 () Bool)

(declare-fun call!719836 () Regex!20749)

(assert (=> b!7768670 (= e!4603228 (Union!20749 (Concat!29594 call!719836 (regTwo!42010 r!25924)) EmptyLang!20749))))

(declare-fun bm!719829 () Bool)

(assert (=> bm!719829 (= call!719837 (derivativeStep!6094 (ite c!1431826 (regOne!42011 r!25924) (ite c!1431828 (reg!21078 r!25924) (regOne!42010 r!25924))) (h!79914 s!14904)))))

(declare-fun call!719833 () Regex!20749)

(declare-fun b!7768671 () Bool)

(assert (=> b!7768671 (= e!4603228 (Union!20749 (Concat!29594 call!719836 (regTwo!42010 r!25924)) call!719833))))

(declare-fun bm!719830 () Bool)

(assert (=> bm!719830 (= call!719833 (derivativeStep!6094 (ite c!1431826 (regTwo!42011 r!25924) (regTwo!42010 r!25924)) (h!79914 s!14904)))))

(declare-fun bm!719831 () Bool)

(assert (=> bm!719831 (= call!719836 call!719838)))

(declare-fun b!7768672 () Bool)

(assert (=> b!7768672 (= e!4603226 (Concat!29594 call!719838 r!25924))))

(declare-fun b!7768673 () Bool)

(assert (=> b!7768673 (= e!4603229 (Union!20749 call!719837 call!719833))))

(assert (= (and d!2344138 c!1431829) b!7768664))

(assert (= (and d!2344138 (not c!1431829)) b!7768668))

(assert (= (and b!7768668 c!1431827) b!7768666))

(assert (= (and b!7768668 (not c!1431827)) b!7768669))

(assert (= (and b!7768669 c!1431826) b!7768673))

(assert (= (and b!7768669 (not c!1431826)) b!7768667))

(assert (= (and b!7768667 c!1431828) b!7768672))

(assert (= (and b!7768667 (not c!1431828)) b!7768665))

(assert (= (and b!7768665 c!1431830) b!7768671))

(assert (= (and b!7768665 (not c!1431830)) b!7768670))

(assert (= (or b!7768671 b!7768670) bm!719831))

(assert (= (or b!7768672 bm!719831) bm!719828))

(assert (= (or b!7768673 b!7768671) bm!719830))

(assert (= (or b!7768673 bm!719828) bm!719829))

(declare-fun m!8223768 () Bool)

(assert (=> d!2344138 m!8223768))

(declare-fun m!8223770 () Bool)

(assert (=> d!2344138 m!8223770))

(declare-fun m!8223772 () Bool)

(assert (=> b!7768665 m!8223772))

(declare-fun m!8223774 () Bool)

(assert (=> bm!719829 m!8223774))

(declare-fun m!8223776 () Bool)

(assert (=> bm!719830 m!8223776))

(assert (=> b!7768491 d!2344138))

(declare-fun b!7768737 () Bool)

(declare-fun e!4603270 () Bool)

(declare-fun call!719853 () Bool)

(assert (=> b!7768737 (= e!4603270 call!719853)))

(declare-fun b!7768738 () Bool)

(declare-fun e!4603267 () Bool)

(declare-fun e!4603269 () Bool)

(assert (=> b!7768738 (= e!4603267 e!4603269)))

(declare-fun res!3097014 () Bool)

(assert (=> b!7768738 (=> (not res!3097014) (not e!4603269))))

(declare-fun call!719855 () Bool)

(assert (=> b!7768738 (= res!3097014 call!719855)))

(declare-fun d!2344140 () Bool)

(declare-fun res!3097015 () Bool)

(declare-fun e!4603272 () Bool)

(assert (=> d!2344140 (=> res!3097015 e!4603272)))

(assert (=> d!2344140 (= res!3097015 ((_ is ElementMatch!20749) lt!2671226))))

(assert (=> d!2344140 (= (validRegex!11163 lt!2671226) e!4603272)))

(declare-fun b!7768739 () Bool)

(declare-fun e!4603265 () Bool)

(assert (=> b!7768739 (= e!4603265 e!4603270)))

(declare-fun res!3097013 () Bool)

(assert (=> b!7768739 (= res!3097013 (not (nullable!9141 (reg!21078 lt!2671226))))))

(assert (=> b!7768739 (=> (not res!3097013) (not e!4603270))))

(declare-fun b!7768740 () Bool)

(declare-fun call!719854 () Bool)

(assert (=> b!7768740 (= e!4603269 call!719854)))

(declare-fun b!7768741 () Bool)

(declare-fun res!3097011 () Bool)

(assert (=> b!7768741 (=> res!3097011 e!4603267)))

(assert (=> b!7768741 (= res!3097011 (not ((_ is Concat!29594) lt!2671226)))))

(declare-fun e!4603266 () Bool)

(assert (=> b!7768741 (= e!4603266 e!4603267)))

(declare-fun bm!719848 () Bool)

(declare-fun c!1431839 () Bool)

(declare-fun c!1431840 () Bool)

(assert (=> bm!719848 (= call!719853 (validRegex!11163 (ite c!1431839 (reg!21078 lt!2671226) (ite c!1431840 (regTwo!42011 lt!2671226) (regOne!42010 lt!2671226)))))))

(declare-fun b!7768742 () Bool)

(assert (=> b!7768742 (= e!4603272 e!4603265)))

(assert (=> b!7768742 (= c!1431839 ((_ is Star!20749) lt!2671226))))

(declare-fun bm!719849 () Bool)

(assert (=> bm!719849 (= call!719855 call!719853)))

(declare-fun b!7768743 () Bool)

(assert (=> b!7768743 (= e!4603265 e!4603266)))

(assert (=> b!7768743 (= c!1431840 ((_ is Union!20749) lt!2671226))))

(declare-fun b!7768744 () Bool)

(declare-fun res!3097012 () Bool)

(declare-fun e!4603268 () Bool)

(assert (=> b!7768744 (=> (not res!3097012) (not e!4603268))))

(assert (=> b!7768744 (= res!3097012 call!719854)))

(assert (=> b!7768744 (= e!4603266 e!4603268)))

(declare-fun bm!719850 () Bool)

(assert (=> bm!719850 (= call!719854 (validRegex!11163 (ite c!1431840 (regOne!42011 lt!2671226) (regTwo!42010 lt!2671226))))))

(declare-fun b!7768745 () Bool)

(assert (=> b!7768745 (= e!4603268 call!719855)))

(assert (= (and d!2344140 (not res!3097015)) b!7768742))

(assert (= (and b!7768742 c!1431839) b!7768739))

(assert (= (and b!7768742 (not c!1431839)) b!7768743))

(assert (= (and b!7768739 res!3097013) b!7768737))

(assert (= (and b!7768743 c!1431840) b!7768744))

(assert (= (and b!7768743 (not c!1431840)) b!7768741))

(assert (= (and b!7768744 res!3097012) b!7768745))

(assert (= (and b!7768741 (not res!3097011)) b!7768738))

(assert (= (and b!7768738 res!3097014) b!7768740))

(assert (= (or b!7768745 b!7768738) bm!719849))

(assert (= (or b!7768744 b!7768740) bm!719850))

(assert (= (or b!7768737 bm!719849) bm!719848))

(declare-fun m!8223790 () Bool)

(assert (=> b!7768739 m!8223790))

(declare-fun m!8223792 () Bool)

(assert (=> bm!719848 m!8223792))

(declare-fun m!8223794 () Bool)

(assert (=> bm!719850 m!8223794))

(assert (=> start!739912 d!2344140))

(declare-fun b!7768754 () Bool)

(declare-fun e!4603280 () Bool)

(declare-fun call!719856 () Bool)

(assert (=> b!7768754 (= e!4603280 call!719856)))

(declare-fun b!7768755 () Bool)

(declare-fun e!4603277 () Bool)

(declare-fun e!4603279 () Bool)

(assert (=> b!7768755 (= e!4603277 e!4603279)))

(declare-fun res!3097019 () Bool)

(assert (=> b!7768755 (=> (not res!3097019) (not e!4603279))))

(declare-fun call!719858 () Bool)

(assert (=> b!7768755 (= res!3097019 call!719858)))

(declare-fun d!2344144 () Bool)

(declare-fun res!3097020 () Bool)

(declare-fun e!4603281 () Bool)

(assert (=> d!2344144 (=> res!3097020 e!4603281)))

(assert (=> d!2344144 (= res!3097020 ((_ is ElementMatch!20749) lt!2671225))))

(assert (=> d!2344144 (= (validRegex!11163 lt!2671225) e!4603281)))

(declare-fun b!7768756 () Bool)

(declare-fun e!4603275 () Bool)

(assert (=> b!7768756 (= e!4603275 e!4603280)))

(declare-fun res!3097018 () Bool)

(assert (=> b!7768756 (= res!3097018 (not (nullable!9141 (reg!21078 lt!2671225))))))

(assert (=> b!7768756 (=> (not res!3097018) (not e!4603280))))

(declare-fun b!7768757 () Bool)

(declare-fun call!719857 () Bool)

(assert (=> b!7768757 (= e!4603279 call!719857)))

(declare-fun b!7768758 () Bool)

(declare-fun res!3097016 () Bool)

(assert (=> b!7768758 (=> res!3097016 e!4603277)))

(assert (=> b!7768758 (= res!3097016 (not ((_ is Concat!29594) lt!2671225)))))

(declare-fun e!4603276 () Bool)

(assert (=> b!7768758 (= e!4603276 e!4603277)))

(declare-fun c!1431842 () Bool)

(declare-fun c!1431841 () Bool)

(declare-fun bm!719851 () Bool)

(assert (=> bm!719851 (= call!719856 (validRegex!11163 (ite c!1431841 (reg!21078 lt!2671225) (ite c!1431842 (regTwo!42011 lt!2671225) (regOne!42010 lt!2671225)))))))

(declare-fun b!7768759 () Bool)

(assert (=> b!7768759 (= e!4603281 e!4603275)))

(assert (=> b!7768759 (= c!1431841 ((_ is Star!20749) lt!2671225))))

(declare-fun bm!719852 () Bool)

(assert (=> bm!719852 (= call!719858 call!719856)))

(declare-fun b!7768760 () Bool)

(assert (=> b!7768760 (= e!4603275 e!4603276)))

(assert (=> b!7768760 (= c!1431842 ((_ is Union!20749) lt!2671225))))

(declare-fun b!7768761 () Bool)

(declare-fun res!3097017 () Bool)

(declare-fun e!4603278 () Bool)

(assert (=> b!7768761 (=> (not res!3097017) (not e!4603278))))

(assert (=> b!7768761 (= res!3097017 call!719857)))

(assert (=> b!7768761 (= e!4603276 e!4603278)))

(declare-fun bm!719853 () Bool)

(assert (=> bm!719853 (= call!719857 (validRegex!11163 (ite c!1431842 (regOne!42011 lt!2671225) (regTwo!42010 lt!2671225))))))

(declare-fun b!7768762 () Bool)

(assert (=> b!7768762 (= e!4603278 call!719858)))

(assert (= (and d!2344144 (not res!3097020)) b!7768759))

(assert (= (and b!7768759 c!1431841) b!7768756))

(assert (= (and b!7768759 (not c!1431841)) b!7768760))

(assert (= (and b!7768756 res!3097018) b!7768754))

(assert (= (and b!7768760 c!1431842) b!7768761))

(assert (= (and b!7768760 (not c!1431842)) b!7768758))

(assert (= (and b!7768761 res!3097017) b!7768762))

(assert (= (and b!7768758 (not res!3097016)) b!7768755))

(assert (= (and b!7768755 res!3097019) b!7768757))

(assert (= (or b!7768762 b!7768755) bm!719852))

(assert (= (or b!7768761 b!7768757) bm!719853))

(assert (= (or b!7768754 bm!719852) bm!719851))

(declare-fun m!8223796 () Bool)

(assert (=> b!7768756 m!8223796))

(declare-fun m!8223798 () Bool)

(assert (=> bm!719851 m!8223798))

(declare-fun m!8223800 () Bool)

(assert (=> bm!719853 m!8223800))

(assert (=> b!7768483 d!2344144))

(declare-fun b!7768773 () Bool)

(declare-fun e!4603284 () Bool)

(assert (=> b!7768773 (= e!4603284 tp_is_empty!51853)))

(declare-fun b!7768776 () Bool)

(declare-fun tp!2282189 () Bool)

(declare-fun tp!2282188 () Bool)

(assert (=> b!7768776 (= e!4603284 (and tp!2282189 tp!2282188))))

(assert (=> b!7768486 (= tp!2282134 e!4603284)))

(declare-fun b!7768775 () Bool)

(declare-fun tp!2282190 () Bool)

(assert (=> b!7768775 (= e!4603284 tp!2282190)))

(declare-fun b!7768774 () Bool)

(declare-fun tp!2282187 () Bool)

(declare-fun tp!2282186 () Bool)

(assert (=> b!7768774 (= e!4603284 (and tp!2282187 tp!2282186))))

(assert (= (and b!7768486 ((_ is ElementMatch!20749) (regOne!42011 r!25924))) b!7768773))

(assert (= (and b!7768486 ((_ is Concat!29594) (regOne!42011 r!25924))) b!7768774))

(assert (= (and b!7768486 ((_ is Star!20749) (regOne!42011 r!25924))) b!7768775))

(assert (= (and b!7768486 ((_ is Union!20749) (regOne!42011 r!25924))) b!7768776))

(declare-fun b!7768777 () Bool)

(declare-fun e!4603285 () Bool)

(assert (=> b!7768777 (= e!4603285 tp_is_empty!51853)))

(declare-fun b!7768780 () Bool)

(declare-fun tp!2282194 () Bool)

(declare-fun tp!2282193 () Bool)

(assert (=> b!7768780 (= e!4603285 (and tp!2282194 tp!2282193))))

(assert (=> b!7768486 (= tp!2282135 e!4603285)))

(declare-fun b!7768779 () Bool)

(declare-fun tp!2282195 () Bool)

(assert (=> b!7768779 (= e!4603285 tp!2282195)))

(declare-fun b!7768778 () Bool)

(declare-fun tp!2282192 () Bool)

(declare-fun tp!2282191 () Bool)

(assert (=> b!7768778 (= e!4603285 (and tp!2282192 tp!2282191))))

(assert (= (and b!7768486 ((_ is ElementMatch!20749) (regTwo!42011 r!25924))) b!7768777))

(assert (= (and b!7768486 ((_ is Concat!29594) (regTwo!42011 r!25924))) b!7768778))

(assert (= (and b!7768486 ((_ is Star!20749) (regTwo!42011 r!25924))) b!7768779))

(assert (= (and b!7768486 ((_ is Union!20749) (regTwo!42011 r!25924))) b!7768780))

(declare-fun b!7768781 () Bool)

(declare-fun e!4603286 () Bool)

(assert (=> b!7768781 (= e!4603286 tp_is_empty!51853)))

(declare-fun b!7768784 () Bool)

(declare-fun tp!2282199 () Bool)

(declare-fun tp!2282198 () Bool)

(assert (=> b!7768784 (= e!4603286 (and tp!2282199 tp!2282198))))

(assert (=> b!7768490 (= tp!2282136 e!4603286)))

(declare-fun b!7768783 () Bool)

(declare-fun tp!2282200 () Bool)

(assert (=> b!7768783 (= e!4603286 tp!2282200)))

(declare-fun b!7768782 () Bool)

(declare-fun tp!2282197 () Bool)

(declare-fun tp!2282196 () Bool)

(assert (=> b!7768782 (= e!4603286 (and tp!2282197 tp!2282196))))

(assert (= (and b!7768490 ((_ is ElementMatch!20749) (regOne!42010 r!25924))) b!7768781))

(assert (= (and b!7768490 ((_ is Concat!29594) (regOne!42010 r!25924))) b!7768782))

(assert (= (and b!7768490 ((_ is Star!20749) (regOne!42010 r!25924))) b!7768783))

(assert (= (and b!7768490 ((_ is Union!20749) (regOne!42010 r!25924))) b!7768784))

(declare-fun b!7768785 () Bool)

(declare-fun e!4603287 () Bool)

(assert (=> b!7768785 (= e!4603287 tp_is_empty!51853)))

(declare-fun b!7768788 () Bool)

(declare-fun tp!2282204 () Bool)

(declare-fun tp!2282203 () Bool)

(assert (=> b!7768788 (= e!4603287 (and tp!2282204 tp!2282203))))

(assert (=> b!7768490 (= tp!2282133 e!4603287)))

(declare-fun b!7768787 () Bool)

(declare-fun tp!2282205 () Bool)

(assert (=> b!7768787 (= e!4603287 tp!2282205)))

(declare-fun b!7768786 () Bool)

(declare-fun tp!2282202 () Bool)

(declare-fun tp!2282201 () Bool)

(assert (=> b!7768786 (= e!4603287 (and tp!2282202 tp!2282201))))

(assert (= (and b!7768490 ((_ is ElementMatch!20749) (regTwo!42010 r!25924))) b!7768785))

(assert (= (and b!7768490 ((_ is Concat!29594) (regTwo!42010 r!25924))) b!7768786))

(assert (= (and b!7768490 ((_ is Star!20749) (regTwo!42010 r!25924))) b!7768787))

(assert (= (and b!7768490 ((_ is Union!20749) (regTwo!42010 r!25924))) b!7768788))

(declare-fun b!7768789 () Bool)

(declare-fun e!4603288 () Bool)

(assert (=> b!7768789 (= e!4603288 tp_is_empty!51853)))

(declare-fun b!7768792 () Bool)

(declare-fun tp!2282209 () Bool)

(declare-fun tp!2282208 () Bool)

(assert (=> b!7768792 (= e!4603288 (and tp!2282209 tp!2282208))))

(assert (=> b!7768484 (= tp!2282132 e!4603288)))

(declare-fun b!7768791 () Bool)

(declare-fun tp!2282210 () Bool)

(assert (=> b!7768791 (= e!4603288 tp!2282210)))

(declare-fun b!7768790 () Bool)

(declare-fun tp!2282207 () Bool)

(declare-fun tp!2282206 () Bool)

(assert (=> b!7768790 (= e!4603288 (and tp!2282207 tp!2282206))))

(assert (= (and b!7768484 ((_ is ElementMatch!20749) (reg!21078 r!25924))) b!7768789))

(assert (= (and b!7768484 ((_ is Concat!29594) (reg!21078 r!25924))) b!7768790))

(assert (= (and b!7768484 ((_ is Star!20749) (reg!21078 r!25924))) b!7768791))

(assert (= (and b!7768484 ((_ is Union!20749) (reg!21078 r!25924))) b!7768792))

(declare-fun b!7768797 () Bool)

(declare-fun e!4603291 () Bool)

(declare-fun tp!2282213 () Bool)

(assert (=> b!7768797 (= e!4603291 (and tp_is_empty!51853 tp!2282213))))

(assert (=> b!7768489 (= tp!2282137 e!4603291)))

(assert (= (and b!7768489 ((_ is Cons!73466) (t!388325 s!14904))) b!7768797))

(check-sat (not b!7768574) (not b!7768573) (not bm!719848) (not b!7768782) (not b!7768779) (not bm!719850) (not b!7768787) (not b!7768562) (not bm!719851) (not bm!719829) (not bm!719797) (not b!7768566) (not d!2344132) (not b!7768665) (not bm!719853) (not b!7768783) (not b!7768774) (not b!7768788) (not bm!719824) (not b!7768756) (not b!7768780) (not b!7768797) (not b!7768784) (not b!7768572) tp_is_empty!51853 (not bm!719823) (not d!2344138) (not b!7768778) (not b!7768786) (not b!7768775) (not b!7768568) (not b!7768776) (not b!7768637) (not b!7768792) (not b!7768791) (not d!2344128) (not b!7768739) (not bm!719830) (not b!7768790))
(check-sat)
