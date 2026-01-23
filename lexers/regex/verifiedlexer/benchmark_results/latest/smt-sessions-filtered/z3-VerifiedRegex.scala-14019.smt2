; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740582 () Bool)

(assert start!740582)

(declare-fun b!7781773 () Bool)

(declare-fun e!4609592 () Bool)

(declare-fun tp_is_empty!52021 () Bool)

(assert (=> b!7781773 (= e!4609592 tp_is_empty!52021)))

(declare-fun b!7781774 () Bool)

(declare-fun e!4609593 () Bool)

(declare-fun tp!2287357 () Bool)

(declare-fun tp!2287360 () Bool)

(assert (=> b!7781774 (= e!4609593 (and tp!2287357 tp!2287360))))

(declare-fun b!7781775 () Bool)

(declare-fun e!4609591 () Bool)

(declare-datatypes ((C!41992 0))(
  ( (C!41993 (val!31436 Int)) )
))
(declare-datatypes ((List!73672 0))(
  ( (Nil!73548) (Cons!73548 (h!79996 C!41992) (t!388407 List!73672)) )
))
(declare-fun ++!17925 (List!73672 List!73672) List!73672)

(assert (=> b!7781775 (= e!4609591 (not (= (++!17925 Nil!73548 Nil!73548) Nil!73548)))))

(declare-fun b!7781776 () Bool)

(declare-fun tp!2287358 () Bool)

(declare-fun tp!2287354 () Bool)

(assert (=> b!7781776 (= e!4609592 (and tp!2287358 tp!2287354))))

(declare-fun b!7781777 () Bool)

(declare-fun tp!2287356 () Bool)

(declare-fun tp!2287359 () Bool)

(assert (=> b!7781777 (= e!4609593 (and tp!2287356 tp!2287359))))

(declare-fun b!7781778 () Bool)

(declare-fun res!3101891 () Bool)

(assert (=> b!7781778 (=> (not res!3101891) (not e!4609591))))

(declare-datatypes ((Regex!20833 0))(
  ( (ElementMatch!20833 (c!1433814 C!41992)) (Concat!29678 (regOne!42178 Regex!20833) (regTwo!42178 Regex!20833)) (EmptyExpr!20833) (Star!20833 (reg!21162 Regex!20833)) (EmptyLang!20833) (Union!20833 (regOne!42179 Regex!20833) (regTwo!42179 Regex!20833)) )
))
(declare-fun r2!6217 () Regex!20833)

(declare-fun nullable!9219 (Regex!20833) Bool)

(assert (=> b!7781778 (= res!3101891 (nullable!9219 r2!6217))))

(declare-fun b!7781779 () Bool)

(declare-fun res!3101894 () Bool)

(assert (=> b!7781779 (=> (not res!3101894) (not e!4609591))))

(declare-fun s!14292 () List!73672)

(get-info :version)

(assert (=> b!7781779 (= res!3101894 (not ((_ is Cons!73548) s!14292)))))

(declare-fun b!7781780 () Bool)

(declare-fun res!3101892 () Bool)

(assert (=> b!7781780 (=> (not res!3101892) (not e!4609591))))

(declare-fun r1!6279 () Regex!20833)

(assert (=> b!7781780 (= res!3101892 (nullable!9219 r1!6279))))

(declare-fun b!7781781 () Bool)

(declare-fun tp!2287352 () Bool)

(assert (=> b!7781781 (= e!4609593 tp!2287352)))

(declare-fun b!7781782 () Bool)

(declare-fun tp!2287355 () Bool)

(assert (=> b!7781782 (= e!4609592 tp!2287355)))

(declare-fun b!7781783 () Bool)

(declare-fun e!4609590 () Bool)

(declare-fun tp!2287353 () Bool)

(assert (=> b!7781783 (= e!4609590 (and tp_is_empty!52021 tp!2287353))))

(declare-fun b!7781784 () Bool)

(declare-fun tp!2287361 () Bool)

(declare-fun tp!2287351 () Bool)

(assert (=> b!7781784 (= e!4609592 (and tp!2287361 tp!2287351))))

(declare-fun b!7781785 () Bool)

(declare-fun res!3101895 () Bool)

(assert (=> b!7781785 (=> (not res!3101895) (not e!4609591))))

(declare-fun validRegex!11247 (Regex!20833) Bool)

(assert (=> b!7781785 (= res!3101895 (validRegex!11247 r2!6217))))

(declare-fun res!3101893 () Bool)

(assert (=> start!740582 (=> (not res!3101893) (not e!4609591))))

(assert (=> start!740582 (= res!3101893 (validRegex!11247 r1!6279))))

(assert (=> start!740582 e!4609591))

(assert (=> start!740582 e!4609593))

(assert (=> start!740582 e!4609592))

(assert (=> start!740582 e!4609590))

(declare-fun b!7781786 () Bool)

(declare-fun res!3101896 () Bool)

(assert (=> b!7781786 (=> (not res!3101896) (not e!4609591))))

(declare-fun matchR!10293 (Regex!20833 List!73672) Bool)

(assert (=> b!7781786 (= res!3101896 (matchR!10293 (Concat!29678 r1!6279 r2!6217) s!14292))))

(declare-fun b!7781787 () Bool)

(assert (=> b!7781787 (= e!4609593 tp_is_empty!52021)))

(assert (= (and start!740582 res!3101893) b!7781785))

(assert (= (and b!7781785 res!3101895) b!7781786))

(assert (= (and b!7781786 res!3101896) b!7781779))

(assert (= (and b!7781779 res!3101894) b!7781780))

(assert (= (and b!7781780 res!3101892) b!7781778))

(assert (= (and b!7781778 res!3101891) b!7781775))

(assert (= (and start!740582 ((_ is ElementMatch!20833) r1!6279)) b!7781787))

(assert (= (and start!740582 ((_ is Concat!29678) r1!6279)) b!7781774))

(assert (= (and start!740582 ((_ is Star!20833) r1!6279)) b!7781781))

(assert (= (and start!740582 ((_ is Union!20833) r1!6279)) b!7781777))

(assert (= (and start!740582 ((_ is ElementMatch!20833) r2!6217)) b!7781773))

(assert (= (and start!740582 ((_ is Concat!29678) r2!6217)) b!7781776))

(assert (= (and start!740582 ((_ is Star!20833) r2!6217)) b!7781782))

(assert (= (and start!740582 ((_ is Union!20833) r2!6217)) b!7781784))

(assert (= (and start!740582 ((_ is Cons!73548) s!14292)) b!7781783))

(declare-fun m!8229494 () Bool)

(assert (=> b!7781778 m!8229494))

(declare-fun m!8229496 () Bool)

(assert (=> b!7781775 m!8229496))

(declare-fun m!8229498 () Bool)

(assert (=> b!7781785 m!8229498))

(declare-fun m!8229500 () Bool)

(assert (=> b!7781786 m!8229500))

(declare-fun m!8229502 () Bool)

(assert (=> start!740582 m!8229502))

(declare-fun m!8229504 () Bool)

(assert (=> b!7781780 m!8229504))

(check-sat (not b!7781783) (not b!7781777) (not b!7781782) tp_is_empty!52021 (not b!7781781) (not b!7781780) (not b!7781784) (not b!7781775) (not start!740582) (not b!7781774) (not b!7781786) (not b!7781785) (not b!7781778) (not b!7781776))
(check-sat)
(get-model)

(declare-fun d!2345220 () Bool)

(declare-fun nullableFct!3605 (Regex!20833) Bool)

(assert (=> d!2345220 (= (nullable!9219 r2!6217) (nullableFct!3605 r2!6217))))

(declare-fun bs!1966242 () Bool)

(assert (= bs!1966242 d!2345220))

(declare-fun m!8229506 () Bool)

(assert (=> bs!1966242 m!8229506))

(assert (=> b!7781778 d!2345220))

(declare-fun b!7781806 () Bool)

(declare-fun e!4609614 () Bool)

(declare-fun e!4609609 () Bool)

(assert (=> b!7781806 (= e!4609614 e!4609609)))

(declare-fun c!1433820 () Bool)

(assert (=> b!7781806 (= c!1433820 ((_ is Star!20833) r1!6279))))

(declare-fun b!7781807 () Bool)

(declare-fun e!4609613 () Bool)

(assert (=> b!7781807 (= e!4609609 e!4609613)))

(declare-fun c!1433819 () Bool)

(assert (=> b!7781807 (= c!1433819 ((_ is Union!20833) r1!6279))))

(declare-fun call!721265 () Bool)

(declare-fun bm!721260 () Bool)

(assert (=> bm!721260 (= call!721265 (validRegex!11247 (ite c!1433820 (reg!21162 r1!6279) (ite c!1433819 (regTwo!42179 r1!6279) (regTwo!42178 r1!6279)))))))

(declare-fun bm!721261 () Bool)

(declare-fun call!721267 () Bool)

(assert (=> bm!721261 (= call!721267 (validRegex!11247 (ite c!1433819 (regOne!42179 r1!6279) (regOne!42178 r1!6279))))))

(declare-fun bm!721262 () Bool)

(declare-fun call!721266 () Bool)

(assert (=> bm!721262 (= call!721266 call!721265)))

(declare-fun b!7781809 () Bool)

(declare-fun res!3101909 () Bool)

(declare-fun e!4609612 () Bool)

(assert (=> b!7781809 (=> (not res!3101909) (not e!4609612))))

(assert (=> b!7781809 (= res!3101909 call!721267)))

(assert (=> b!7781809 (= e!4609613 e!4609612)))

(declare-fun b!7781810 () Bool)

(declare-fun res!3101908 () Bool)

(declare-fun e!4609608 () Bool)

(assert (=> b!7781810 (=> res!3101908 e!4609608)))

(assert (=> b!7781810 (= res!3101908 (not ((_ is Concat!29678) r1!6279)))))

(assert (=> b!7781810 (= e!4609613 e!4609608)))

(declare-fun b!7781811 () Bool)

(declare-fun e!4609611 () Bool)

(assert (=> b!7781811 (= e!4609608 e!4609611)))

(declare-fun res!3101907 () Bool)

(assert (=> b!7781811 (=> (not res!3101907) (not e!4609611))))

(assert (=> b!7781811 (= res!3101907 call!721267)))

(declare-fun b!7781812 () Bool)

(assert (=> b!7781812 (= e!4609611 call!721266)))

(declare-fun b!7781808 () Bool)

(declare-fun e!4609610 () Bool)

(assert (=> b!7781808 (= e!4609610 call!721265)))

(declare-fun d!2345222 () Bool)

(declare-fun res!3101911 () Bool)

(assert (=> d!2345222 (=> res!3101911 e!4609614)))

(assert (=> d!2345222 (= res!3101911 ((_ is ElementMatch!20833) r1!6279))))

(assert (=> d!2345222 (= (validRegex!11247 r1!6279) e!4609614)))

(declare-fun b!7781813 () Bool)

(assert (=> b!7781813 (= e!4609612 call!721266)))

(declare-fun b!7781814 () Bool)

(assert (=> b!7781814 (= e!4609609 e!4609610)))

(declare-fun res!3101910 () Bool)

(assert (=> b!7781814 (= res!3101910 (not (nullable!9219 (reg!21162 r1!6279))))))

(assert (=> b!7781814 (=> (not res!3101910) (not e!4609610))))

(assert (= (and d!2345222 (not res!3101911)) b!7781806))

(assert (= (and b!7781806 c!1433820) b!7781814))

(assert (= (and b!7781806 (not c!1433820)) b!7781807))

(assert (= (and b!7781814 res!3101910) b!7781808))

(assert (= (and b!7781807 c!1433819) b!7781809))

(assert (= (and b!7781807 (not c!1433819)) b!7781810))

(assert (= (and b!7781809 res!3101909) b!7781813))

(assert (= (and b!7781810 (not res!3101908)) b!7781811))

(assert (= (and b!7781811 res!3101907) b!7781812))

(assert (= (or b!7781809 b!7781811) bm!721261))

(assert (= (or b!7781813 b!7781812) bm!721262))

(assert (= (or b!7781808 bm!721262) bm!721260))

(declare-fun m!8229508 () Bool)

(assert (=> bm!721260 m!8229508))

(declare-fun m!8229510 () Bool)

(assert (=> bm!721261 m!8229510))

(declare-fun m!8229512 () Bool)

(assert (=> b!7781814 m!8229512))

(assert (=> start!740582 d!2345222))

(declare-fun b!7781885 () Bool)

(declare-fun e!4609654 () Bool)

(declare-fun lt!2673196 () Bool)

(assert (=> b!7781885 (= e!4609654 (not lt!2673196))))

(declare-fun e!4609653 () Bool)

(declare-fun b!7781886 () Bool)

(declare-fun derivativeStep!6173 (Regex!20833 C!41992) Regex!20833)

(declare-fun head!15915 (List!73672) C!41992)

(declare-fun tail!15456 (List!73672) List!73672)

(assert (=> b!7781886 (= e!4609653 (matchR!10293 (derivativeStep!6173 (Concat!29678 r1!6279 r2!6217) (head!15915 s!14292)) (tail!15456 s!14292)))))

(declare-fun b!7781887 () Bool)

(declare-fun res!3101952 () Bool)

(declare-fun e!4609652 () Bool)

(assert (=> b!7781887 (=> (not res!3101952) (not e!4609652))))

(declare-fun call!721273 () Bool)

(assert (=> b!7781887 (= res!3101952 (not call!721273))))

(declare-fun b!7781888 () Bool)

(declare-fun e!4609656 () Bool)

(declare-fun e!4609655 () Bool)

(assert (=> b!7781888 (= e!4609656 e!4609655)))

(declare-fun res!3101954 () Bool)

(assert (=> b!7781888 (=> (not res!3101954) (not e!4609655))))

(assert (=> b!7781888 (= res!3101954 (not lt!2673196))))

(declare-fun b!7781890 () Bool)

(assert (=> b!7781890 (= e!4609653 (nullable!9219 (Concat!29678 r1!6279 r2!6217)))))

(declare-fun b!7781891 () Bool)

(assert (=> b!7781891 (= e!4609652 (= (head!15915 s!14292) (c!1433814 (Concat!29678 r1!6279 r2!6217))))))

(declare-fun b!7781892 () Bool)

(declare-fun e!4609650 () Bool)

(assert (=> b!7781892 (= e!4609650 (= lt!2673196 call!721273))))

(declare-fun bm!721268 () Bool)

(declare-fun isEmpty!42189 (List!73672) Bool)

(assert (=> bm!721268 (= call!721273 (isEmpty!42189 s!14292))))

(declare-fun b!7781893 () Bool)

(declare-fun res!3101959 () Bool)

(declare-fun e!4609651 () Bool)

(assert (=> b!7781893 (=> res!3101959 e!4609651)))

(assert (=> b!7781893 (= res!3101959 (not (isEmpty!42189 (tail!15456 s!14292))))))

(declare-fun b!7781894 () Bool)

(assert (=> b!7781894 (= e!4609655 e!4609651)))

(declare-fun res!3101956 () Bool)

(assert (=> b!7781894 (=> res!3101956 e!4609651)))

(assert (=> b!7781894 (= res!3101956 call!721273)))

(declare-fun d!2345226 () Bool)

(assert (=> d!2345226 e!4609650))

(declare-fun c!1433837 () Bool)

(assert (=> d!2345226 (= c!1433837 ((_ is EmptyExpr!20833) (Concat!29678 r1!6279 r2!6217)))))

(assert (=> d!2345226 (= lt!2673196 e!4609653)))

(declare-fun c!1433836 () Bool)

(assert (=> d!2345226 (= c!1433836 (isEmpty!42189 s!14292))))

(assert (=> d!2345226 (validRegex!11247 (Concat!29678 r1!6279 r2!6217))))

(assert (=> d!2345226 (= (matchR!10293 (Concat!29678 r1!6279 r2!6217) s!14292) lt!2673196)))

(declare-fun b!7781889 () Bool)

(assert (=> b!7781889 (= e!4609650 e!4609654)))

(declare-fun c!1433838 () Bool)

(assert (=> b!7781889 (= c!1433838 ((_ is EmptyLang!20833) (Concat!29678 r1!6279 r2!6217)))))

(declare-fun b!7781895 () Bool)

(declare-fun res!3101957 () Bool)

(assert (=> b!7781895 (=> res!3101957 e!4609656)))

(assert (=> b!7781895 (= res!3101957 (not ((_ is ElementMatch!20833) (Concat!29678 r1!6279 r2!6217))))))

(assert (=> b!7781895 (= e!4609654 e!4609656)))

(declare-fun b!7781896 () Bool)

(declare-fun res!3101955 () Bool)

(assert (=> b!7781896 (=> res!3101955 e!4609656)))

(assert (=> b!7781896 (= res!3101955 e!4609652)))

(declare-fun res!3101958 () Bool)

(assert (=> b!7781896 (=> (not res!3101958) (not e!4609652))))

(assert (=> b!7781896 (= res!3101958 lt!2673196)))

(declare-fun b!7781897 () Bool)

(declare-fun res!3101953 () Bool)

(assert (=> b!7781897 (=> (not res!3101953) (not e!4609652))))

(assert (=> b!7781897 (= res!3101953 (isEmpty!42189 (tail!15456 s!14292)))))

(declare-fun b!7781898 () Bool)

(assert (=> b!7781898 (= e!4609651 (not (= (head!15915 s!14292) (c!1433814 (Concat!29678 r1!6279 r2!6217)))))))

(assert (= (and d!2345226 c!1433836) b!7781890))

(assert (= (and d!2345226 (not c!1433836)) b!7781886))

(assert (= (and d!2345226 c!1433837) b!7781892))

(assert (= (and d!2345226 (not c!1433837)) b!7781889))

(assert (= (and b!7781889 c!1433838) b!7781885))

(assert (= (and b!7781889 (not c!1433838)) b!7781895))

(assert (= (and b!7781895 (not res!3101957)) b!7781896))

(assert (= (and b!7781896 res!3101958) b!7781887))

(assert (= (and b!7781887 res!3101952) b!7781897))

(assert (= (and b!7781897 res!3101953) b!7781891))

(assert (= (and b!7781896 (not res!3101955)) b!7781888))

(assert (= (and b!7781888 res!3101954) b!7781894))

(assert (= (and b!7781894 (not res!3101956)) b!7781893))

(assert (= (and b!7781893 (not res!3101959)) b!7781898))

(assert (= (or b!7781892 b!7781887 b!7781894) bm!721268))

(declare-fun m!8229530 () Bool)

(assert (=> d!2345226 m!8229530))

(declare-fun m!8229532 () Bool)

(assert (=> d!2345226 m!8229532))

(declare-fun m!8229534 () Bool)

(assert (=> b!7781891 m!8229534))

(assert (=> b!7781898 m!8229534))

(declare-fun m!8229536 () Bool)

(assert (=> b!7781893 m!8229536))

(assert (=> b!7781893 m!8229536))

(declare-fun m!8229538 () Bool)

(assert (=> b!7781893 m!8229538))

(assert (=> bm!721268 m!8229530))

(assert (=> b!7781897 m!8229536))

(assert (=> b!7781897 m!8229536))

(assert (=> b!7781897 m!8229538))

(assert (=> b!7781886 m!8229534))

(assert (=> b!7781886 m!8229534))

(declare-fun m!8229540 () Bool)

(assert (=> b!7781886 m!8229540))

(assert (=> b!7781886 m!8229536))

(assert (=> b!7781886 m!8229540))

(assert (=> b!7781886 m!8229536))

(declare-fun m!8229542 () Bool)

(assert (=> b!7781886 m!8229542))

(declare-fun m!8229544 () Bool)

(assert (=> b!7781890 m!8229544))

(assert (=> b!7781786 d!2345226))

(declare-fun d!2345230 () Bool)

(assert (=> d!2345230 (= (nullable!9219 r1!6279) (nullableFct!3605 r1!6279))))

(declare-fun bs!1966243 () Bool)

(assert (= bs!1966243 d!2345230))

(declare-fun m!8229546 () Bool)

(assert (=> bs!1966243 m!8229546))

(assert (=> b!7781780 d!2345230))

(declare-fun b!7781935 () Bool)

(declare-fun e!4609683 () List!73672)

(assert (=> b!7781935 (= e!4609683 (Cons!73548 (h!79996 Nil!73548) (++!17925 (t!388407 Nil!73548) Nil!73548)))))

(declare-fun b!7781934 () Bool)

(assert (=> b!7781934 (= e!4609683 Nil!73548)))

(declare-fun b!7781936 () Bool)

(declare-fun res!3101979 () Bool)

(declare-fun e!4609682 () Bool)

(assert (=> b!7781936 (=> (not res!3101979) (not e!4609682))))

(declare-fun lt!2673199 () List!73672)

(declare-fun size!42706 (List!73672) Int)

(assert (=> b!7781936 (= res!3101979 (= (size!42706 lt!2673199) (+ (size!42706 Nil!73548) (size!42706 Nil!73548))))))

(declare-fun d!2345232 () Bool)

(assert (=> d!2345232 e!4609682))

(declare-fun res!3101980 () Bool)

(assert (=> d!2345232 (=> (not res!3101980) (not e!4609682))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15603 (List!73672) (InoxSet C!41992))

(assert (=> d!2345232 (= res!3101980 (= (content!15603 lt!2673199) ((_ map or) (content!15603 Nil!73548) (content!15603 Nil!73548))))))

(assert (=> d!2345232 (= lt!2673199 e!4609683)))

(declare-fun c!1433847 () Bool)

(assert (=> d!2345232 (= c!1433847 ((_ is Nil!73548) Nil!73548))))

(assert (=> d!2345232 (= (++!17925 Nil!73548 Nil!73548) lt!2673199)))

(declare-fun b!7781937 () Bool)

(assert (=> b!7781937 (= e!4609682 (or (not (= Nil!73548 Nil!73548)) (= lt!2673199 Nil!73548)))))

(assert (= (and d!2345232 c!1433847) b!7781934))

(assert (= (and d!2345232 (not c!1433847)) b!7781935))

(assert (= (and d!2345232 res!3101980) b!7781936))

(assert (= (and b!7781936 res!3101979) b!7781937))

(declare-fun m!8229554 () Bool)

(assert (=> b!7781935 m!8229554))

(declare-fun m!8229556 () Bool)

(assert (=> b!7781936 m!8229556))

(declare-fun m!8229558 () Bool)

(assert (=> b!7781936 m!8229558))

(assert (=> b!7781936 m!8229558))

(declare-fun m!8229560 () Bool)

(assert (=> d!2345232 m!8229560))

(declare-fun m!8229562 () Bool)

(assert (=> d!2345232 m!8229562))

(assert (=> d!2345232 m!8229562))

(assert (=> b!7781775 d!2345232))

(declare-fun b!7781938 () Bool)

(declare-fun e!4609690 () Bool)

(declare-fun e!4609685 () Bool)

(assert (=> b!7781938 (= e!4609690 e!4609685)))

(declare-fun c!1433849 () Bool)

(assert (=> b!7781938 (= c!1433849 ((_ is Star!20833) r2!6217))))

(declare-fun b!7781939 () Bool)

(declare-fun e!4609689 () Bool)

(assert (=> b!7781939 (= e!4609685 e!4609689)))

(declare-fun c!1433848 () Bool)

(assert (=> b!7781939 (= c!1433848 ((_ is Union!20833) r2!6217))))

(declare-fun bm!721278 () Bool)

(declare-fun call!721283 () Bool)

(assert (=> bm!721278 (= call!721283 (validRegex!11247 (ite c!1433849 (reg!21162 r2!6217) (ite c!1433848 (regTwo!42179 r2!6217) (regTwo!42178 r2!6217)))))))

(declare-fun bm!721279 () Bool)

(declare-fun call!721285 () Bool)

(assert (=> bm!721279 (= call!721285 (validRegex!11247 (ite c!1433848 (regOne!42179 r2!6217) (regOne!42178 r2!6217))))))

(declare-fun bm!721280 () Bool)

(declare-fun call!721284 () Bool)

(assert (=> bm!721280 (= call!721284 call!721283)))

(declare-fun b!7781941 () Bool)

(declare-fun res!3101983 () Bool)

(declare-fun e!4609688 () Bool)

(assert (=> b!7781941 (=> (not res!3101983) (not e!4609688))))

(assert (=> b!7781941 (= res!3101983 call!721285)))

(assert (=> b!7781941 (= e!4609689 e!4609688)))

(declare-fun b!7781942 () Bool)

(declare-fun res!3101982 () Bool)

(declare-fun e!4609684 () Bool)

(assert (=> b!7781942 (=> res!3101982 e!4609684)))

(assert (=> b!7781942 (= res!3101982 (not ((_ is Concat!29678) r2!6217)))))

(assert (=> b!7781942 (= e!4609689 e!4609684)))

(declare-fun b!7781943 () Bool)

(declare-fun e!4609687 () Bool)

(assert (=> b!7781943 (= e!4609684 e!4609687)))

(declare-fun res!3101981 () Bool)

(assert (=> b!7781943 (=> (not res!3101981) (not e!4609687))))

(assert (=> b!7781943 (= res!3101981 call!721285)))

(declare-fun b!7781944 () Bool)

(assert (=> b!7781944 (= e!4609687 call!721284)))

(declare-fun b!7781940 () Bool)

(declare-fun e!4609686 () Bool)

(assert (=> b!7781940 (= e!4609686 call!721283)))

(declare-fun d!2345236 () Bool)

(declare-fun res!3101985 () Bool)

(assert (=> d!2345236 (=> res!3101985 e!4609690)))

(assert (=> d!2345236 (= res!3101985 ((_ is ElementMatch!20833) r2!6217))))

(assert (=> d!2345236 (= (validRegex!11247 r2!6217) e!4609690)))

(declare-fun b!7781945 () Bool)

(assert (=> b!7781945 (= e!4609688 call!721284)))

(declare-fun b!7781946 () Bool)

(assert (=> b!7781946 (= e!4609685 e!4609686)))

(declare-fun res!3101984 () Bool)

(assert (=> b!7781946 (= res!3101984 (not (nullable!9219 (reg!21162 r2!6217))))))

(assert (=> b!7781946 (=> (not res!3101984) (not e!4609686))))

(assert (= (and d!2345236 (not res!3101985)) b!7781938))

(assert (= (and b!7781938 c!1433849) b!7781946))

(assert (= (and b!7781938 (not c!1433849)) b!7781939))

(assert (= (and b!7781946 res!3101984) b!7781940))

(assert (= (and b!7781939 c!1433848) b!7781941))

(assert (= (and b!7781939 (not c!1433848)) b!7781942))

(assert (= (and b!7781941 res!3101983) b!7781945))

(assert (= (and b!7781942 (not res!3101982)) b!7781943))

(assert (= (and b!7781943 res!3101981) b!7781944))

(assert (= (or b!7781941 b!7781943) bm!721279))

(assert (= (or b!7781945 b!7781944) bm!721280))

(assert (= (or b!7781940 bm!721280) bm!721278))

(declare-fun m!8229566 () Bool)

(assert (=> bm!721278 m!8229566))

(declare-fun m!8229568 () Bool)

(assert (=> bm!721279 m!8229568))

(declare-fun m!8229570 () Bool)

(assert (=> b!7781946 m!8229570))

(assert (=> b!7781785 d!2345236))

(declare-fun b!7781951 () Bool)

(declare-fun e!4609693 () Bool)

(declare-fun tp!2287364 () Bool)

(assert (=> b!7781951 (= e!4609693 (and tp_is_empty!52021 tp!2287364))))

(assert (=> b!7781783 (= tp!2287353 e!4609693)))

(assert (= (and b!7781783 ((_ is Cons!73548) (t!388407 s!14292))) b!7781951))

(declare-fun b!7781963 () Bool)

(declare-fun e!4609696 () Bool)

(declare-fun tp!2287378 () Bool)

(declare-fun tp!2287375 () Bool)

(assert (=> b!7781963 (= e!4609696 (and tp!2287378 tp!2287375))))

(declare-fun b!7781965 () Bool)

(declare-fun tp!2287379 () Bool)

(declare-fun tp!2287376 () Bool)

(assert (=> b!7781965 (= e!4609696 (and tp!2287379 tp!2287376))))

(assert (=> b!7781782 (= tp!2287355 e!4609696)))

(declare-fun b!7781964 () Bool)

(declare-fun tp!2287377 () Bool)

(assert (=> b!7781964 (= e!4609696 tp!2287377)))

(declare-fun b!7781962 () Bool)

(assert (=> b!7781962 (= e!4609696 tp_is_empty!52021)))

(assert (= (and b!7781782 ((_ is ElementMatch!20833) (reg!21162 r2!6217))) b!7781962))

(assert (= (and b!7781782 ((_ is Concat!29678) (reg!21162 r2!6217))) b!7781963))

(assert (= (and b!7781782 ((_ is Star!20833) (reg!21162 r2!6217))) b!7781964))

(assert (= (and b!7781782 ((_ is Union!20833) (reg!21162 r2!6217))) b!7781965))

(declare-fun b!7781967 () Bool)

(declare-fun e!4609697 () Bool)

(declare-fun tp!2287383 () Bool)

(declare-fun tp!2287380 () Bool)

(assert (=> b!7781967 (= e!4609697 (and tp!2287383 tp!2287380))))

(declare-fun b!7781969 () Bool)

(declare-fun tp!2287384 () Bool)

(declare-fun tp!2287381 () Bool)

(assert (=> b!7781969 (= e!4609697 (and tp!2287384 tp!2287381))))

(assert (=> b!7781777 (= tp!2287356 e!4609697)))

(declare-fun b!7781968 () Bool)

(declare-fun tp!2287382 () Bool)

(assert (=> b!7781968 (= e!4609697 tp!2287382)))

(declare-fun b!7781966 () Bool)

(assert (=> b!7781966 (= e!4609697 tp_is_empty!52021)))

(assert (= (and b!7781777 ((_ is ElementMatch!20833) (regOne!42179 r1!6279))) b!7781966))

(assert (= (and b!7781777 ((_ is Concat!29678) (regOne!42179 r1!6279))) b!7781967))

(assert (= (and b!7781777 ((_ is Star!20833) (regOne!42179 r1!6279))) b!7781968))

(assert (= (and b!7781777 ((_ is Union!20833) (regOne!42179 r1!6279))) b!7781969))

(declare-fun b!7781971 () Bool)

(declare-fun e!4609698 () Bool)

(declare-fun tp!2287388 () Bool)

(declare-fun tp!2287385 () Bool)

(assert (=> b!7781971 (= e!4609698 (and tp!2287388 tp!2287385))))

(declare-fun b!7781973 () Bool)

(declare-fun tp!2287389 () Bool)

(declare-fun tp!2287386 () Bool)

(assert (=> b!7781973 (= e!4609698 (and tp!2287389 tp!2287386))))

(assert (=> b!7781777 (= tp!2287359 e!4609698)))

(declare-fun b!7781972 () Bool)

(declare-fun tp!2287387 () Bool)

(assert (=> b!7781972 (= e!4609698 tp!2287387)))

(declare-fun b!7781970 () Bool)

(assert (=> b!7781970 (= e!4609698 tp_is_empty!52021)))

(assert (= (and b!7781777 ((_ is ElementMatch!20833) (regTwo!42179 r1!6279))) b!7781970))

(assert (= (and b!7781777 ((_ is Concat!29678) (regTwo!42179 r1!6279))) b!7781971))

(assert (= (and b!7781777 ((_ is Star!20833) (regTwo!42179 r1!6279))) b!7781972))

(assert (= (and b!7781777 ((_ is Union!20833) (regTwo!42179 r1!6279))) b!7781973))

(declare-fun b!7781975 () Bool)

(declare-fun e!4609699 () Bool)

(declare-fun tp!2287393 () Bool)

(declare-fun tp!2287390 () Bool)

(assert (=> b!7781975 (= e!4609699 (and tp!2287393 tp!2287390))))

(declare-fun b!7781977 () Bool)

(declare-fun tp!2287394 () Bool)

(declare-fun tp!2287391 () Bool)

(assert (=> b!7781977 (= e!4609699 (and tp!2287394 tp!2287391))))

(assert (=> b!7781776 (= tp!2287358 e!4609699)))

(declare-fun b!7781976 () Bool)

(declare-fun tp!2287392 () Bool)

(assert (=> b!7781976 (= e!4609699 tp!2287392)))

(declare-fun b!7781974 () Bool)

(assert (=> b!7781974 (= e!4609699 tp_is_empty!52021)))

(assert (= (and b!7781776 ((_ is ElementMatch!20833) (regOne!42178 r2!6217))) b!7781974))

(assert (= (and b!7781776 ((_ is Concat!29678) (regOne!42178 r2!6217))) b!7781975))

(assert (= (and b!7781776 ((_ is Star!20833) (regOne!42178 r2!6217))) b!7781976))

(assert (= (and b!7781776 ((_ is Union!20833) (regOne!42178 r2!6217))) b!7781977))

(declare-fun b!7781979 () Bool)

(declare-fun e!4609700 () Bool)

(declare-fun tp!2287398 () Bool)

(declare-fun tp!2287395 () Bool)

(assert (=> b!7781979 (= e!4609700 (and tp!2287398 tp!2287395))))

(declare-fun b!7781981 () Bool)

(declare-fun tp!2287399 () Bool)

(declare-fun tp!2287396 () Bool)

(assert (=> b!7781981 (= e!4609700 (and tp!2287399 tp!2287396))))

(assert (=> b!7781776 (= tp!2287354 e!4609700)))

(declare-fun b!7781980 () Bool)

(declare-fun tp!2287397 () Bool)

(assert (=> b!7781980 (= e!4609700 tp!2287397)))

(declare-fun b!7781978 () Bool)

(assert (=> b!7781978 (= e!4609700 tp_is_empty!52021)))

(assert (= (and b!7781776 ((_ is ElementMatch!20833) (regTwo!42178 r2!6217))) b!7781978))

(assert (= (and b!7781776 ((_ is Concat!29678) (regTwo!42178 r2!6217))) b!7781979))

(assert (= (and b!7781776 ((_ is Star!20833) (regTwo!42178 r2!6217))) b!7781980))

(assert (= (and b!7781776 ((_ is Union!20833) (regTwo!42178 r2!6217))) b!7781981))

(declare-fun b!7781983 () Bool)

(declare-fun e!4609701 () Bool)

(declare-fun tp!2287403 () Bool)

(declare-fun tp!2287400 () Bool)

(assert (=> b!7781983 (= e!4609701 (and tp!2287403 tp!2287400))))

(declare-fun b!7781985 () Bool)

(declare-fun tp!2287404 () Bool)

(declare-fun tp!2287401 () Bool)

(assert (=> b!7781985 (= e!4609701 (and tp!2287404 tp!2287401))))

(assert (=> b!7781781 (= tp!2287352 e!4609701)))

(declare-fun b!7781984 () Bool)

(declare-fun tp!2287402 () Bool)

(assert (=> b!7781984 (= e!4609701 tp!2287402)))

(declare-fun b!7781982 () Bool)

(assert (=> b!7781982 (= e!4609701 tp_is_empty!52021)))

(assert (= (and b!7781781 ((_ is ElementMatch!20833) (reg!21162 r1!6279))) b!7781982))

(assert (= (and b!7781781 ((_ is Concat!29678) (reg!21162 r1!6279))) b!7781983))

(assert (= (and b!7781781 ((_ is Star!20833) (reg!21162 r1!6279))) b!7781984))

(assert (= (and b!7781781 ((_ is Union!20833) (reg!21162 r1!6279))) b!7781985))

(declare-fun b!7781987 () Bool)

(declare-fun e!4609702 () Bool)

(declare-fun tp!2287408 () Bool)

(declare-fun tp!2287405 () Bool)

(assert (=> b!7781987 (= e!4609702 (and tp!2287408 tp!2287405))))

(declare-fun b!7781989 () Bool)

(declare-fun tp!2287409 () Bool)

(declare-fun tp!2287406 () Bool)

(assert (=> b!7781989 (= e!4609702 (and tp!2287409 tp!2287406))))

(assert (=> b!7781774 (= tp!2287357 e!4609702)))

(declare-fun b!7781988 () Bool)

(declare-fun tp!2287407 () Bool)

(assert (=> b!7781988 (= e!4609702 tp!2287407)))

(declare-fun b!7781986 () Bool)

(assert (=> b!7781986 (= e!4609702 tp_is_empty!52021)))

(assert (= (and b!7781774 ((_ is ElementMatch!20833) (regOne!42178 r1!6279))) b!7781986))

(assert (= (and b!7781774 ((_ is Concat!29678) (regOne!42178 r1!6279))) b!7781987))

(assert (= (and b!7781774 ((_ is Star!20833) (regOne!42178 r1!6279))) b!7781988))

(assert (= (and b!7781774 ((_ is Union!20833) (regOne!42178 r1!6279))) b!7781989))

(declare-fun b!7781991 () Bool)

(declare-fun e!4609703 () Bool)

(declare-fun tp!2287413 () Bool)

(declare-fun tp!2287410 () Bool)

(assert (=> b!7781991 (= e!4609703 (and tp!2287413 tp!2287410))))

(declare-fun b!7781993 () Bool)

(declare-fun tp!2287414 () Bool)

(declare-fun tp!2287411 () Bool)

(assert (=> b!7781993 (= e!4609703 (and tp!2287414 tp!2287411))))

(assert (=> b!7781774 (= tp!2287360 e!4609703)))

(declare-fun b!7781992 () Bool)

(declare-fun tp!2287412 () Bool)

(assert (=> b!7781992 (= e!4609703 tp!2287412)))

(declare-fun b!7781990 () Bool)

(assert (=> b!7781990 (= e!4609703 tp_is_empty!52021)))

(assert (= (and b!7781774 ((_ is ElementMatch!20833) (regTwo!42178 r1!6279))) b!7781990))

(assert (= (and b!7781774 ((_ is Concat!29678) (regTwo!42178 r1!6279))) b!7781991))

(assert (= (and b!7781774 ((_ is Star!20833) (regTwo!42178 r1!6279))) b!7781992))

(assert (= (and b!7781774 ((_ is Union!20833) (regTwo!42178 r1!6279))) b!7781993))

(declare-fun b!7781995 () Bool)

(declare-fun e!4609704 () Bool)

(declare-fun tp!2287418 () Bool)

(declare-fun tp!2287415 () Bool)

(assert (=> b!7781995 (= e!4609704 (and tp!2287418 tp!2287415))))

(declare-fun b!7781997 () Bool)

(declare-fun tp!2287419 () Bool)

(declare-fun tp!2287416 () Bool)

(assert (=> b!7781997 (= e!4609704 (and tp!2287419 tp!2287416))))

(assert (=> b!7781784 (= tp!2287361 e!4609704)))

(declare-fun b!7781996 () Bool)

(declare-fun tp!2287417 () Bool)

(assert (=> b!7781996 (= e!4609704 tp!2287417)))

(declare-fun b!7781994 () Bool)

(assert (=> b!7781994 (= e!4609704 tp_is_empty!52021)))

(assert (= (and b!7781784 ((_ is ElementMatch!20833) (regOne!42179 r2!6217))) b!7781994))

(assert (= (and b!7781784 ((_ is Concat!29678) (regOne!42179 r2!6217))) b!7781995))

(assert (= (and b!7781784 ((_ is Star!20833) (regOne!42179 r2!6217))) b!7781996))

(assert (= (and b!7781784 ((_ is Union!20833) (regOne!42179 r2!6217))) b!7781997))

(declare-fun b!7782003 () Bool)

(declare-fun e!4609707 () Bool)

(declare-fun tp!2287423 () Bool)

(declare-fun tp!2287420 () Bool)

(assert (=> b!7782003 (= e!4609707 (and tp!2287423 tp!2287420))))

(declare-fun b!7782005 () Bool)

(declare-fun tp!2287424 () Bool)

(declare-fun tp!2287421 () Bool)

(assert (=> b!7782005 (= e!4609707 (and tp!2287424 tp!2287421))))

(assert (=> b!7781784 (= tp!2287351 e!4609707)))

(declare-fun b!7782004 () Bool)

(declare-fun tp!2287422 () Bool)

(assert (=> b!7782004 (= e!4609707 tp!2287422)))

(declare-fun b!7782002 () Bool)

(assert (=> b!7782002 (= e!4609707 tp_is_empty!52021)))

(assert (= (and b!7781784 ((_ is ElementMatch!20833) (regTwo!42179 r2!6217))) b!7782002))

(assert (= (and b!7781784 ((_ is Concat!29678) (regTwo!42179 r2!6217))) b!7782003))

(assert (= (and b!7781784 ((_ is Star!20833) (regTwo!42179 r2!6217))) b!7782004))

(assert (= (and b!7781784 ((_ is Union!20833) (regTwo!42179 r2!6217))) b!7782005))

(check-sat (not b!7781976) (not d!2345232) (not b!7781968) (not d!2345230) (not b!7781890) (not b!7781972) (not b!7781969) (not b!7781989) (not b!7781971) (not b!7782004) (not bm!721268) (not b!7781980) (not b!7781814) (not b!7781963) (not b!7781991) (not b!7781983) (not b!7781935) (not b!7781897) (not d!2345220) (not b!7781985) (not bm!721278) (not b!7782005) (not b!7781992) (not b!7781964) (not b!7782003) (not b!7781886) (not d!2345226) tp_is_empty!52021 (not b!7781996) (not bm!721260) (not b!7781965) (not b!7781997) (not b!7781988) (not b!7781951) (not b!7781967) (not bm!721261) (not b!7781936) (not b!7781981) (not b!7781898) (not b!7781987) (not b!7781977) (not b!7781984) (not bm!721279) (not b!7781946) (not b!7781975) (not b!7781979) (not b!7781973) (not b!7781893) (not b!7781995) (not b!7781993) (not b!7781891))
(check-sat)
