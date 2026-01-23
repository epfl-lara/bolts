; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246340 () Bool)

(assert start!246340)

(declare-fun b!2529737 () Bool)

(declare-fun e!1601040 () Bool)

(declare-fun tp!807465 () Bool)

(assert (=> b!2529737 (= e!1601040 tp!807465)))

(declare-fun res!1068317 () Bool)

(declare-fun e!1601037 () Bool)

(assert (=> start!246340 (=> (not res!1068317) (not e!1601037))))

(declare-datatypes ((C!15216 0))(
  ( (C!15217 (val!9260 Int)) )
))
(declare-datatypes ((Regex!7529 0))(
  ( (ElementMatch!7529 (c!404099 C!15216)) (Concat!12225 (regOne!15570 Regex!7529) (regTwo!15570 Regex!7529)) (EmptyExpr!7529) (Star!7529 (reg!7858 Regex!7529)) (EmptyLang!7529) (Union!7529 (regOne!15571 Regex!7529) (regTwo!15571 Regex!7529)) )
))
(declare-fun r!27340 () Regex!7529)

(declare-fun validRegex!3155 (Regex!7529) Bool)

(assert (=> start!246340 (= res!1068317 (validRegex!3155 r!27340))))

(assert (=> start!246340 e!1601037))

(assert (=> start!246340 e!1601040))

(declare-fun tp_is_empty!12913 () Bool)

(assert (=> start!246340 tp_is_empty!12913))

(declare-fun e!1601038 () Bool)

(assert (=> start!246340 e!1601038))

(declare-fun b!2529738 () Bool)

(declare-fun e!1601039 () Bool)

(assert (=> b!2529738 (= e!1601039 (not false))))

(declare-fun lt!901081 () Regex!7529)

(declare-fun lt!901080 () Regex!7529)

(assert (=> b!2529738 (= lt!901081 lt!901080)))

(declare-datatypes ((Unit!43279 0))(
  ( (Unit!43280) )
))
(declare-fun lt!901082 () Unit!43279)

(declare-datatypes ((List!29594 0))(
  ( (Nil!29494) (Cons!29494 (h!34914 C!15216) (t!211293 List!29594)) )
))
(declare-fun tl!4068 () List!29594)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!44 (Regex!7529 List!29594) Unit!43279)

(assert (=> b!2529738 (= lt!901082 (lemmaEmptyLangDerivativeIsAFixPoint!44 lt!901080 tl!4068))))

(declare-fun b!2529739 () Bool)

(declare-fun res!1068318 () Bool)

(assert (=> b!2529739 (=> (not res!1068318) (not e!1601039))))

(get-info :version)

(assert (=> b!2529739 (= res!1068318 (and ((_ is EmptyExpr!7529) r!27340) (= lt!901080 EmptyLang!7529)))))

(declare-fun b!2529740 () Bool)

(declare-fun tp!807466 () Bool)

(assert (=> b!2529740 (= e!1601038 (and tp_is_empty!12913 tp!807466))))

(declare-fun b!2529741 () Bool)

(declare-fun tp!807461 () Bool)

(declare-fun tp!807462 () Bool)

(assert (=> b!2529741 (= e!1601040 (and tp!807461 tp!807462))))

(declare-fun b!2529742 () Bool)

(assert (=> b!2529742 (= e!1601040 tp_is_empty!12913)))

(declare-fun b!2529743 () Bool)

(declare-fun tp!807464 () Bool)

(declare-fun tp!807463 () Bool)

(assert (=> b!2529743 (= e!1601040 (and tp!807464 tp!807463))))

(declare-fun b!2529744 () Bool)

(assert (=> b!2529744 (= e!1601037 e!1601039)))

(declare-fun res!1068316 () Bool)

(assert (=> b!2529744 (=> (not res!1068316) (not e!1601039))))

(declare-fun nullable!2446 (Regex!7529) Bool)

(assert (=> b!2529744 (= res!1068316 (nullable!2446 lt!901081))))

(declare-fun derivative!224 (Regex!7529 List!29594) Regex!7529)

(assert (=> b!2529744 (= lt!901081 (derivative!224 lt!901080 tl!4068))))

(declare-fun c!14016 () C!15216)

(declare-fun derivativeStep!2098 (Regex!7529 C!15216) Regex!7529)

(assert (=> b!2529744 (= lt!901080 (derivativeStep!2098 r!27340 c!14016))))

(assert (= (and start!246340 res!1068317) b!2529744))

(assert (= (and b!2529744 res!1068316) b!2529739))

(assert (= (and b!2529739 res!1068318) b!2529738))

(assert (= (and start!246340 ((_ is ElementMatch!7529) r!27340)) b!2529742))

(assert (= (and start!246340 ((_ is Concat!12225) r!27340)) b!2529743))

(assert (= (and start!246340 ((_ is Star!7529) r!27340)) b!2529737))

(assert (= (and start!246340 ((_ is Union!7529) r!27340)) b!2529741))

(assert (= (and start!246340 ((_ is Cons!29494) tl!4068)) b!2529740))

(declare-fun m!2881727 () Bool)

(assert (=> start!246340 m!2881727))

(declare-fun m!2881729 () Bool)

(assert (=> b!2529738 m!2881729))

(declare-fun m!2881731 () Bool)

(assert (=> b!2529744 m!2881731))

(declare-fun m!2881733 () Bool)

(assert (=> b!2529744 m!2881733))

(declare-fun m!2881735 () Bool)

(assert (=> b!2529744 m!2881735))

(check-sat tp_is_empty!12913 (not b!2529738) (not b!2529737) (not b!2529744) (not b!2529740) (not start!246340) (not b!2529743) (not b!2529741))
(check-sat)
(get-model)

(declare-fun b!2529763 () Bool)

(declare-fun e!1601057 () Bool)

(declare-fun call!158380 () Bool)

(assert (=> b!2529763 (= e!1601057 call!158380)))

(declare-fun b!2529764 () Bool)

(declare-fun res!1068331 () Bool)

(declare-fun e!1601060 () Bool)

(assert (=> b!2529764 (=> (not res!1068331) (not e!1601060))))

(declare-fun call!158382 () Bool)

(assert (=> b!2529764 (= res!1068331 call!158382)))

(declare-fun e!1601058 () Bool)

(assert (=> b!2529764 (= e!1601058 e!1601060)))

(declare-fun b!2529765 () Bool)

(declare-fun e!1601061 () Bool)

(assert (=> b!2529765 (= e!1601061 call!158382)))

(declare-fun bm!158375 () Bool)

(assert (=> bm!158375 (= call!158382 call!158380)))

(declare-fun bm!158376 () Bool)

(declare-fun call!158381 () Bool)

(declare-fun c!404104 () Bool)

(assert (=> bm!158376 (= call!158381 (validRegex!3155 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))))))

(declare-fun b!2529766 () Bool)

(declare-fun e!1601055 () Bool)

(assert (=> b!2529766 (= e!1601055 e!1601061)))

(declare-fun res!1068330 () Bool)

(assert (=> b!2529766 (=> (not res!1068330) (not e!1601061))))

(assert (=> b!2529766 (= res!1068330 call!158381)))

(declare-fun d!719750 () Bool)

(declare-fun res!1068333 () Bool)

(declare-fun e!1601056 () Bool)

(assert (=> d!719750 (=> res!1068333 e!1601056)))

(assert (=> d!719750 (= res!1068333 ((_ is ElementMatch!7529) r!27340))))

(assert (=> d!719750 (= (validRegex!3155 r!27340) e!1601056)))

(declare-fun c!404105 () Bool)

(declare-fun bm!158377 () Bool)

(assert (=> bm!158377 (= call!158380 (validRegex!3155 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))))))

(declare-fun b!2529767 () Bool)

(declare-fun e!1601059 () Bool)

(assert (=> b!2529767 (= e!1601059 e!1601057)))

(declare-fun res!1068329 () Bool)

(assert (=> b!2529767 (= res!1068329 (not (nullable!2446 (reg!7858 r!27340))))))

(assert (=> b!2529767 (=> (not res!1068329) (not e!1601057))))

(declare-fun b!2529768 () Bool)

(assert (=> b!2529768 (= e!1601056 e!1601059)))

(assert (=> b!2529768 (= c!404105 ((_ is Star!7529) r!27340))))

(declare-fun b!2529769 () Bool)

(declare-fun res!1068332 () Bool)

(assert (=> b!2529769 (=> res!1068332 e!1601055)))

(assert (=> b!2529769 (= res!1068332 (not ((_ is Concat!12225) r!27340)))))

(assert (=> b!2529769 (= e!1601058 e!1601055)))

(declare-fun b!2529770 () Bool)

(assert (=> b!2529770 (= e!1601060 call!158381)))

(declare-fun b!2529771 () Bool)

(assert (=> b!2529771 (= e!1601059 e!1601058)))

(assert (=> b!2529771 (= c!404104 ((_ is Union!7529) r!27340))))

(assert (= (and d!719750 (not res!1068333)) b!2529768))

(assert (= (and b!2529768 c!404105) b!2529767))

(assert (= (and b!2529768 (not c!404105)) b!2529771))

(assert (= (and b!2529767 res!1068329) b!2529763))

(assert (= (and b!2529771 c!404104) b!2529764))

(assert (= (and b!2529771 (not c!404104)) b!2529769))

(assert (= (and b!2529764 res!1068331) b!2529770))

(assert (= (and b!2529769 (not res!1068332)) b!2529766))

(assert (= (and b!2529766 res!1068330) b!2529765))

(assert (= (or b!2529764 b!2529765) bm!158375))

(assert (= (or b!2529770 b!2529766) bm!158376))

(assert (= (or b!2529763 bm!158375) bm!158377))

(declare-fun m!2881741 () Bool)

(assert (=> bm!158376 m!2881741))

(declare-fun m!2881743 () Bool)

(assert (=> bm!158377 m!2881743))

(declare-fun m!2881745 () Bool)

(assert (=> b!2529767 m!2881745))

(assert (=> start!246340 d!719750))

(declare-fun d!719758 () Bool)

(declare-fun nullableFct!686 (Regex!7529) Bool)

(assert (=> d!719758 (= (nullable!2446 lt!901081) (nullableFct!686 lt!901081))))

(declare-fun bs!469180 () Bool)

(assert (= bs!469180 d!719758))

(declare-fun m!2881747 () Bool)

(assert (=> bs!469180 m!2881747))

(assert (=> b!2529744 d!719758))

(declare-fun d!719760 () Bool)

(declare-fun lt!901091 () Regex!7529)

(assert (=> d!719760 (validRegex!3155 lt!901091)))

(declare-fun e!1601067 () Regex!7529)

(assert (=> d!719760 (= lt!901091 e!1601067)))

(declare-fun c!404111 () Bool)

(assert (=> d!719760 (= c!404111 ((_ is Cons!29494) tl!4068))))

(assert (=> d!719760 (validRegex!3155 lt!901080)))

(assert (=> d!719760 (= (derivative!224 lt!901080 tl!4068) lt!901091)))

(declare-fun b!2529782 () Bool)

(assert (=> b!2529782 (= e!1601067 (derivative!224 (derivativeStep!2098 lt!901080 (h!34914 tl!4068)) (t!211293 tl!4068)))))

(declare-fun b!2529783 () Bool)

(assert (=> b!2529783 (= e!1601067 lt!901080)))

(assert (= (and d!719760 c!404111) b!2529782))

(assert (= (and d!719760 (not c!404111)) b!2529783))

(declare-fun m!2881757 () Bool)

(assert (=> d!719760 m!2881757))

(declare-fun m!2881759 () Bool)

(assert (=> d!719760 m!2881759))

(declare-fun m!2881761 () Bool)

(assert (=> b!2529782 m!2881761))

(assert (=> b!2529782 m!2881761))

(declare-fun m!2881763 () Bool)

(assert (=> b!2529782 m!2881763))

(assert (=> b!2529744 d!719760))

(declare-fun call!158403 () Regex!7529)

(declare-fun c!404144 () Bool)

(declare-fun bm!158398 () Bool)

(assert (=> bm!158398 (= call!158403 (derivativeStep!2098 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)) c!14016))))

(declare-fun b!2529852 () Bool)

(declare-fun e!1601110 () Regex!7529)

(declare-fun call!158405 () Regex!7529)

(assert (=> b!2529852 (= e!1601110 (Union!7529 (Concat!12225 call!158405 (regTwo!15570 r!27340)) EmptyLang!7529))))

(declare-fun b!2529853 () Bool)

(declare-fun e!1601108 () Regex!7529)

(assert (=> b!2529853 (= e!1601108 (ite (= c!14016 (c!404099 r!27340)) EmptyExpr!7529 EmptyLang!7529))))

(declare-fun b!2529854 () Bool)

(assert (=> b!2529854 (= e!1601110 (Union!7529 (Concat!12225 call!158405 (regTwo!15570 r!27340)) call!158403))))

(declare-fun bm!158399 () Bool)

(declare-fun call!158406 () Regex!7529)

(assert (=> bm!158399 (= call!158405 call!158406)))

(declare-fun bm!158400 () Bool)

(declare-fun c!404141 () Bool)

(declare-fun call!158404 () Regex!7529)

(assert (=> bm!158400 (= call!158404 (derivativeStep!2098 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))) c!14016))))

(declare-fun b!2529855 () Bool)

(declare-fun e!1601109 () Regex!7529)

(assert (=> b!2529855 (= e!1601109 e!1601108)))

(declare-fun c!404145 () Bool)

(assert (=> b!2529855 (= c!404145 ((_ is ElementMatch!7529) r!27340))))

(declare-fun b!2529856 () Bool)

(declare-fun e!1601111 () Regex!7529)

(declare-fun e!1601107 () Regex!7529)

(assert (=> b!2529856 (= e!1601111 e!1601107)))

(assert (=> b!2529856 (= c!404141 ((_ is Star!7529) r!27340))))

(declare-fun d!719764 () Bool)

(declare-fun lt!901097 () Regex!7529)

(assert (=> d!719764 (validRegex!3155 lt!901097)))

(assert (=> d!719764 (= lt!901097 e!1601109)))

(declare-fun c!404143 () Bool)

(assert (=> d!719764 (= c!404143 (or ((_ is EmptyExpr!7529) r!27340) ((_ is EmptyLang!7529) r!27340)))))

(assert (=> d!719764 (validRegex!3155 r!27340)))

(assert (=> d!719764 (= (derivativeStep!2098 r!27340 c!14016) lt!901097)))

(declare-fun b!2529857 () Bool)

(assert (=> b!2529857 (= c!404144 ((_ is Union!7529) r!27340))))

(assert (=> b!2529857 (= e!1601108 e!1601111)))

(declare-fun b!2529858 () Bool)

(assert (=> b!2529858 (= e!1601111 (Union!7529 call!158404 call!158403))))

(declare-fun bm!158401 () Bool)

(assert (=> bm!158401 (= call!158406 call!158404)))

(declare-fun b!2529859 () Bool)

(declare-fun c!404142 () Bool)

(assert (=> b!2529859 (= c!404142 (nullable!2446 (regOne!15570 r!27340)))))

(assert (=> b!2529859 (= e!1601107 e!1601110)))

(declare-fun b!2529860 () Bool)

(assert (=> b!2529860 (= e!1601109 EmptyLang!7529)))

(declare-fun b!2529861 () Bool)

(assert (=> b!2529861 (= e!1601107 (Concat!12225 call!158406 r!27340))))

(assert (= (and d!719764 c!404143) b!2529860))

(assert (= (and d!719764 (not c!404143)) b!2529855))

(assert (= (and b!2529855 c!404145) b!2529853))

(assert (= (and b!2529855 (not c!404145)) b!2529857))

(assert (= (and b!2529857 c!404144) b!2529858))

(assert (= (and b!2529857 (not c!404144)) b!2529856))

(assert (= (and b!2529856 c!404141) b!2529861))

(assert (= (and b!2529856 (not c!404141)) b!2529859))

(assert (= (and b!2529859 c!404142) b!2529854))

(assert (= (and b!2529859 (not c!404142)) b!2529852))

(assert (= (or b!2529854 b!2529852) bm!158399))

(assert (= (or b!2529861 bm!158399) bm!158401))

(assert (= (or b!2529858 b!2529854) bm!158398))

(assert (= (or b!2529858 bm!158401) bm!158400))

(declare-fun m!2881773 () Bool)

(assert (=> bm!158398 m!2881773))

(declare-fun m!2881775 () Bool)

(assert (=> bm!158400 m!2881775))

(declare-fun m!2881777 () Bool)

(assert (=> d!719764 m!2881777))

(assert (=> d!719764 m!2881727))

(declare-fun m!2881779 () Bool)

(assert (=> b!2529859 m!2881779))

(assert (=> b!2529744 d!719764))

(declare-fun d!719768 () Bool)

(assert (=> d!719768 (= (derivative!224 lt!901080 tl!4068) lt!901080)))

(declare-fun lt!901100 () Unit!43279)

(declare-fun choose!15005 (Regex!7529 List!29594) Unit!43279)

(assert (=> d!719768 (= lt!901100 (choose!15005 lt!901080 tl!4068))))

(assert (=> d!719768 (= lt!901080 EmptyLang!7529)))

(assert (=> d!719768 (= (lemmaEmptyLangDerivativeIsAFixPoint!44 lt!901080 tl!4068) lt!901100)))

(declare-fun bs!469181 () Bool)

(assert (= bs!469181 d!719768))

(assert (=> bs!469181 m!2881733))

(declare-fun m!2881781 () Bool)

(assert (=> bs!469181 m!2881781))

(assert (=> b!2529738 d!719768))

(declare-fun b!2529888 () Bool)

(declare-fun e!1601123 () Bool)

(declare-fun tp!807481 () Bool)

(declare-fun tp!807483 () Bool)

(assert (=> b!2529888 (= e!1601123 (and tp!807481 tp!807483))))

(assert (=> b!2529743 (= tp!807464 e!1601123)))

(declare-fun b!2529887 () Bool)

(declare-fun tp!807480 () Bool)

(assert (=> b!2529887 (= e!1601123 tp!807480)))

(declare-fun b!2529885 () Bool)

(assert (=> b!2529885 (= e!1601123 tp_is_empty!12913)))

(declare-fun b!2529886 () Bool)

(declare-fun tp!807479 () Bool)

(declare-fun tp!807482 () Bool)

(assert (=> b!2529886 (= e!1601123 (and tp!807479 tp!807482))))

(assert (= (and b!2529743 ((_ is ElementMatch!7529) (regOne!15570 r!27340))) b!2529885))

(assert (= (and b!2529743 ((_ is Concat!12225) (regOne!15570 r!27340))) b!2529886))

(assert (= (and b!2529743 ((_ is Star!7529) (regOne!15570 r!27340))) b!2529887))

(assert (= (and b!2529743 ((_ is Union!7529) (regOne!15570 r!27340))) b!2529888))

(declare-fun b!2529892 () Bool)

(declare-fun e!1601124 () Bool)

(declare-fun tp!807486 () Bool)

(declare-fun tp!807488 () Bool)

(assert (=> b!2529892 (= e!1601124 (and tp!807486 tp!807488))))

(assert (=> b!2529743 (= tp!807463 e!1601124)))

(declare-fun b!2529891 () Bool)

(declare-fun tp!807485 () Bool)

(assert (=> b!2529891 (= e!1601124 tp!807485)))

(declare-fun b!2529889 () Bool)

(assert (=> b!2529889 (= e!1601124 tp_is_empty!12913)))

(declare-fun b!2529890 () Bool)

(declare-fun tp!807484 () Bool)

(declare-fun tp!807487 () Bool)

(assert (=> b!2529890 (= e!1601124 (and tp!807484 tp!807487))))

(assert (= (and b!2529743 ((_ is ElementMatch!7529) (regTwo!15570 r!27340))) b!2529889))

(assert (= (and b!2529743 ((_ is Concat!12225) (regTwo!15570 r!27340))) b!2529890))

(assert (= (and b!2529743 ((_ is Star!7529) (regTwo!15570 r!27340))) b!2529891))

(assert (= (and b!2529743 ((_ is Union!7529) (regTwo!15570 r!27340))) b!2529892))

(declare-fun b!2529903 () Bool)

(declare-fun e!1601128 () Bool)

(declare-fun tp!807492 () Bool)

(declare-fun tp!807494 () Bool)

(assert (=> b!2529903 (= e!1601128 (and tp!807492 tp!807494))))

(assert (=> b!2529737 (= tp!807465 e!1601128)))

(declare-fun b!2529902 () Bool)

(declare-fun tp!807491 () Bool)

(assert (=> b!2529902 (= e!1601128 tp!807491)))

(declare-fun b!2529900 () Bool)

(assert (=> b!2529900 (= e!1601128 tp_is_empty!12913)))

(declare-fun b!2529901 () Bool)

(declare-fun tp!807490 () Bool)

(declare-fun tp!807493 () Bool)

(assert (=> b!2529901 (= e!1601128 (and tp!807490 tp!807493))))

(assert (= (and b!2529737 ((_ is ElementMatch!7529) (reg!7858 r!27340))) b!2529900))

(assert (= (and b!2529737 ((_ is Concat!12225) (reg!7858 r!27340))) b!2529901))

(assert (= (and b!2529737 ((_ is Star!7529) (reg!7858 r!27340))) b!2529902))

(assert (= (and b!2529737 ((_ is Union!7529) (reg!7858 r!27340))) b!2529903))

(declare-fun b!2529911 () Bool)

(declare-fun e!1601129 () Bool)

(declare-fun tp!807503 () Bool)

(declare-fun tp!807505 () Bool)

(assert (=> b!2529911 (= e!1601129 (and tp!807503 tp!807505))))

(assert (=> b!2529741 (= tp!807461 e!1601129)))

(declare-fun b!2529910 () Bool)

(declare-fun tp!807502 () Bool)

(assert (=> b!2529910 (= e!1601129 tp!807502)))

(declare-fun b!2529908 () Bool)

(assert (=> b!2529908 (= e!1601129 tp_is_empty!12913)))

(declare-fun b!2529909 () Bool)

(declare-fun tp!807501 () Bool)

(declare-fun tp!807504 () Bool)

(assert (=> b!2529909 (= e!1601129 (and tp!807501 tp!807504))))

(assert (= (and b!2529741 ((_ is ElementMatch!7529) (regOne!15571 r!27340))) b!2529908))

(assert (= (and b!2529741 ((_ is Concat!12225) (regOne!15571 r!27340))) b!2529909))

(assert (= (and b!2529741 ((_ is Star!7529) (regOne!15571 r!27340))) b!2529910))

(assert (= (and b!2529741 ((_ is Union!7529) (regOne!15571 r!27340))) b!2529911))

(declare-fun b!2529915 () Bool)

(declare-fun e!1601130 () Bool)

(declare-fun tp!807512 () Bool)

(declare-fun tp!807514 () Bool)

(assert (=> b!2529915 (= e!1601130 (and tp!807512 tp!807514))))

(assert (=> b!2529741 (= tp!807462 e!1601130)))

(declare-fun b!2529914 () Bool)

(declare-fun tp!807511 () Bool)

(assert (=> b!2529914 (= e!1601130 tp!807511)))

(declare-fun b!2529912 () Bool)

(assert (=> b!2529912 (= e!1601130 tp_is_empty!12913)))

(declare-fun b!2529913 () Bool)

(declare-fun tp!807510 () Bool)

(declare-fun tp!807513 () Bool)

(assert (=> b!2529913 (= e!1601130 (and tp!807510 tp!807513))))

(assert (= (and b!2529741 ((_ is ElementMatch!7529) (regTwo!15571 r!27340))) b!2529912))

(assert (= (and b!2529741 ((_ is Concat!12225) (regTwo!15571 r!27340))) b!2529913))

(assert (= (and b!2529741 ((_ is Star!7529) (regTwo!15571 r!27340))) b!2529914))

(assert (= (and b!2529741 ((_ is Union!7529) (regTwo!15571 r!27340))) b!2529915))

(declare-fun b!2529924 () Bool)

(declare-fun e!1601134 () Bool)

(declare-fun tp!807522 () Bool)

(assert (=> b!2529924 (= e!1601134 (and tp_is_empty!12913 tp!807522))))

(assert (=> b!2529740 (= tp!807466 e!1601134)))

(assert (= (and b!2529740 ((_ is Cons!29494) (t!211293 tl!4068))) b!2529924))

(check-sat (not b!2529915) (not b!2529910) (not b!2529782) (not b!2529892) (not b!2529859) (not b!2529887) (not b!2529890) (not d!719768) (not d!719764) (not b!2529903) tp_is_empty!12913 (not b!2529886) (not b!2529911) (not bm!158376) (not d!719760) (not b!2529891) (not b!2529909) (not bm!158377) (not b!2529888) (not b!2529901) (not b!2529767) (not bm!158400) (not b!2529913) (not b!2529914) (not bm!158398) (not b!2529924) (not b!2529902) (not d!719758))
(check-sat)
(get-model)

(declare-fun call!158416 () Regex!7529)

(declare-fun bm!158411 () Bool)

(declare-fun c!404151 () Bool)

(assert (=> bm!158411 (= call!158416 (derivativeStep!2098 (ite c!404151 (regTwo!15571 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))) (regTwo!15570 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))) c!14016))))

(declare-fun call!158418 () Regex!7529)

(declare-fun b!2529941 () Bool)

(declare-fun e!1601142 () Regex!7529)

(assert (=> b!2529941 (= e!1601142 (Union!7529 (Concat!12225 call!158418 (regTwo!15570 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))) EmptyLang!7529))))

(declare-fun e!1601140 () Regex!7529)

(declare-fun b!2529942 () Bool)

(assert (=> b!2529942 (= e!1601140 (ite (= c!14016 (c!404099 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))) EmptyExpr!7529 EmptyLang!7529))))

(declare-fun b!2529943 () Bool)

(assert (=> b!2529943 (= e!1601142 (Union!7529 (Concat!12225 call!158418 (regTwo!15570 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))) call!158416))))

(declare-fun bm!158412 () Bool)

(declare-fun call!158419 () Regex!7529)

(assert (=> bm!158412 (= call!158418 call!158419)))

(declare-fun c!404148 () Bool)

(declare-fun bm!158413 () Bool)

(declare-fun call!158417 () Regex!7529)

(assert (=> bm!158413 (= call!158417 (derivativeStep!2098 (ite c!404151 (regOne!15571 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))) (ite c!404148 (reg!7858 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))) (regOne!15570 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))))) c!14016))))

(declare-fun b!2529944 () Bool)

(declare-fun e!1601141 () Regex!7529)

(assert (=> b!2529944 (= e!1601141 e!1601140)))

(declare-fun c!404152 () Bool)

(assert (=> b!2529944 (= c!404152 ((_ is ElementMatch!7529) (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))))))

(declare-fun b!2529945 () Bool)

(declare-fun e!1601143 () Regex!7529)

(declare-fun e!1601139 () Regex!7529)

(assert (=> b!2529945 (= e!1601143 e!1601139)))

(assert (=> b!2529945 (= c!404148 ((_ is Star!7529) (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))))))

(declare-fun d!719770 () Bool)

(declare-fun lt!901101 () Regex!7529)

(assert (=> d!719770 (validRegex!3155 lt!901101)))

(assert (=> d!719770 (= lt!901101 e!1601141)))

(declare-fun c!404150 () Bool)

(assert (=> d!719770 (= c!404150 (or ((_ is EmptyExpr!7529) (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))) ((_ is EmptyLang!7529) (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))))))

(assert (=> d!719770 (validRegex!3155 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))))

(assert (=> d!719770 (= (derivativeStep!2098 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))) c!14016) lt!901101)))

(declare-fun b!2529946 () Bool)

(assert (=> b!2529946 (= c!404151 ((_ is Union!7529) (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))))))

(assert (=> b!2529946 (= e!1601140 e!1601143)))

(declare-fun b!2529947 () Bool)

(assert (=> b!2529947 (= e!1601143 (Union!7529 call!158417 call!158416))))

(declare-fun bm!158414 () Bool)

(assert (=> bm!158414 (= call!158419 call!158417)))

(declare-fun b!2529948 () Bool)

(declare-fun c!404149 () Bool)

(assert (=> b!2529948 (= c!404149 (nullable!2446 (regOne!15570 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340))))))))

(assert (=> b!2529948 (= e!1601139 e!1601142)))

(declare-fun b!2529949 () Bool)

(assert (=> b!2529949 (= e!1601141 EmptyLang!7529)))

(declare-fun b!2529950 () Bool)

(assert (=> b!2529950 (= e!1601139 (Concat!12225 call!158419 (ite c!404144 (regOne!15571 r!27340) (ite c!404141 (reg!7858 r!27340) (regOne!15570 r!27340)))))))

(assert (= (and d!719770 c!404150) b!2529949))

(assert (= (and d!719770 (not c!404150)) b!2529944))

(assert (= (and b!2529944 c!404152) b!2529942))

(assert (= (and b!2529944 (not c!404152)) b!2529946))

(assert (= (and b!2529946 c!404151) b!2529947))

(assert (= (and b!2529946 (not c!404151)) b!2529945))

(assert (= (and b!2529945 c!404148) b!2529950))

(assert (= (and b!2529945 (not c!404148)) b!2529948))

(assert (= (and b!2529948 c!404149) b!2529943))

(assert (= (and b!2529948 (not c!404149)) b!2529941))

(assert (= (or b!2529943 b!2529941) bm!158412))

(assert (= (or b!2529950 bm!158412) bm!158414))

(assert (= (or b!2529947 b!2529943) bm!158411))

(assert (= (or b!2529947 bm!158414) bm!158413))

(declare-fun m!2881789 () Bool)

(assert (=> bm!158411 m!2881789))

(declare-fun m!2881791 () Bool)

(assert (=> bm!158413 m!2881791))

(declare-fun m!2881793 () Bool)

(assert (=> d!719770 m!2881793))

(declare-fun m!2881795 () Bool)

(assert (=> d!719770 m!2881795))

(declare-fun m!2881797 () Bool)

(assert (=> b!2529948 m!2881797))

(assert (=> bm!158400 d!719770))

(declare-fun d!719772 () Bool)

(assert (=> d!719772 (= (nullable!2446 (reg!7858 r!27340)) (nullableFct!686 (reg!7858 r!27340)))))

(declare-fun bs!469182 () Bool)

(assert (= bs!469182 d!719772))

(declare-fun m!2881799 () Bool)

(assert (=> bs!469182 m!2881799))

(assert (=> b!2529767 d!719772))

(declare-fun b!2529951 () Bool)

(declare-fun e!1601146 () Bool)

(declare-fun call!158420 () Bool)

(assert (=> b!2529951 (= e!1601146 call!158420)))

(declare-fun b!2529952 () Bool)

(declare-fun res!1068351 () Bool)

(declare-fun e!1601149 () Bool)

(assert (=> b!2529952 (=> (not res!1068351) (not e!1601149))))

(declare-fun call!158422 () Bool)

(assert (=> b!2529952 (= res!1068351 call!158422)))

(declare-fun e!1601147 () Bool)

(assert (=> b!2529952 (= e!1601147 e!1601149)))

(declare-fun b!2529953 () Bool)

(declare-fun e!1601150 () Bool)

(assert (=> b!2529953 (= e!1601150 call!158422)))

(declare-fun bm!158415 () Bool)

(assert (=> bm!158415 (= call!158422 call!158420)))

(declare-fun call!158421 () Bool)

(declare-fun bm!158416 () Bool)

(declare-fun c!404153 () Bool)

(assert (=> bm!158416 (= call!158421 (validRegex!3155 (ite c!404153 (regTwo!15571 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))) (regOne!15570 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))))))))

(declare-fun b!2529954 () Bool)

(declare-fun e!1601144 () Bool)

(assert (=> b!2529954 (= e!1601144 e!1601150)))

(declare-fun res!1068350 () Bool)

(assert (=> b!2529954 (=> (not res!1068350) (not e!1601150))))

(assert (=> b!2529954 (= res!1068350 call!158421)))

(declare-fun d!719774 () Bool)

(declare-fun res!1068353 () Bool)

(declare-fun e!1601145 () Bool)

(assert (=> d!719774 (=> res!1068353 e!1601145)))

(assert (=> d!719774 (= res!1068353 ((_ is ElementMatch!7529) (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))))))

(assert (=> d!719774 (= (validRegex!3155 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))) e!1601145)))

(declare-fun bm!158417 () Bool)

(declare-fun c!404154 () Bool)

(assert (=> bm!158417 (= call!158420 (validRegex!3155 (ite c!404154 (reg!7858 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))) (ite c!404153 (regOne!15571 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))) (regTwo!15570 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340))))))))))

(declare-fun b!2529955 () Bool)

(declare-fun e!1601148 () Bool)

(assert (=> b!2529955 (= e!1601148 e!1601146)))

(declare-fun res!1068349 () Bool)

(assert (=> b!2529955 (= res!1068349 (not (nullable!2446 (reg!7858 (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))))))))

(assert (=> b!2529955 (=> (not res!1068349) (not e!1601146))))

(declare-fun b!2529956 () Bool)

(assert (=> b!2529956 (= e!1601145 e!1601148)))

(assert (=> b!2529956 (= c!404154 ((_ is Star!7529) (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))))))

(declare-fun b!2529957 () Bool)

(declare-fun res!1068352 () Bool)

(assert (=> b!2529957 (=> res!1068352 e!1601144)))

(assert (=> b!2529957 (= res!1068352 (not ((_ is Concat!12225) (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340))))))))

(assert (=> b!2529957 (= e!1601147 e!1601144)))

(declare-fun b!2529958 () Bool)

(assert (=> b!2529958 (= e!1601149 call!158421)))

(declare-fun b!2529959 () Bool)

(assert (=> b!2529959 (= e!1601148 e!1601147)))

(assert (=> b!2529959 (= c!404153 ((_ is Union!7529) (ite c!404105 (reg!7858 r!27340) (ite c!404104 (regOne!15571 r!27340) (regTwo!15570 r!27340)))))))

(assert (= (and d!719774 (not res!1068353)) b!2529956))

(assert (= (and b!2529956 c!404154) b!2529955))

(assert (= (and b!2529956 (not c!404154)) b!2529959))

(assert (= (and b!2529955 res!1068349) b!2529951))

(assert (= (and b!2529959 c!404153) b!2529952))

(assert (= (and b!2529959 (not c!404153)) b!2529957))

(assert (= (and b!2529952 res!1068351) b!2529958))

(assert (= (and b!2529957 (not res!1068352)) b!2529954))

(assert (= (and b!2529954 res!1068350) b!2529953))

(assert (= (or b!2529952 b!2529953) bm!158415))

(assert (= (or b!2529958 b!2529954) bm!158416))

(assert (= (or b!2529951 bm!158415) bm!158417))

(declare-fun m!2881801 () Bool)

(assert (=> bm!158416 m!2881801))

(declare-fun m!2881803 () Bool)

(assert (=> bm!158417 m!2881803))

(declare-fun m!2881805 () Bool)

(assert (=> b!2529955 m!2881805))

(assert (=> bm!158377 d!719774))

(declare-fun d!719776 () Bool)

(assert (=> d!719776 (= (nullable!2446 (regOne!15570 r!27340)) (nullableFct!686 (regOne!15570 r!27340)))))

(declare-fun bs!469183 () Bool)

(assert (= bs!469183 d!719776))

(declare-fun m!2881807 () Bool)

(assert (=> bs!469183 m!2881807))

(assert (=> b!2529859 d!719776))

(declare-fun b!2529960 () Bool)

(declare-fun e!1601153 () Bool)

(declare-fun call!158423 () Bool)

(assert (=> b!2529960 (= e!1601153 call!158423)))

(declare-fun b!2529961 () Bool)

(declare-fun res!1068356 () Bool)

(declare-fun e!1601156 () Bool)

(assert (=> b!2529961 (=> (not res!1068356) (not e!1601156))))

(declare-fun call!158425 () Bool)

(assert (=> b!2529961 (= res!1068356 call!158425)))

(declare-fun e!1601154 () Bool)

(assert (=> b!2529961 (= e!1601154 e!1601156)))

(declare-fun b!2529962 () Bool)

(declare-fun e!1601157 () Bool)

(assert (=> b!2529962 (= e!1601157 call!158425)))

(declare-fun bm!158418 () Bool)

(assert (=> bm!158418 (= call!158425 call!158423)))

(declare-fun call!158424 () Bool)

(declare-fun bm!158419 () Bool)

(declare-fun c!404155 () Bool)

(assert (=> bm!158419 (= call!158424 (validRegex!3155 (ite c!404155 (regTwo!15571 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))) (regOne!15570 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))))))))

(declare-fun b!2529963 () Bool)

(declare-fun e!1601151 () Bool)

(assert (=> b!2529963 (= e!1601151 e!1601157)))

(declare-fun res!1068355 () Bool)

(assert (=> b!2529963 (=> (not res!1068355) (not e!1601157))))

(assert (=> b!2529963 (= res!1068355 call!158424)))

(declare-fun d!719778 () Bool)

(declare-fun res!1068358 () Bool)

(declare-fun e!1601152 () Bool)

(assert (=> d!719778 (=> res!1068358 e!1601152)))

(assert (=> d!719778 (= res!1068358 ((_ is ElementMatch!7529) (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))))))

(assert (=> d!719778 (= (validRegex!3155 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))) e!1601152)))

(declare-fun c!404156 () Bool)

(declare-fun bm!158420 () Bool)

(assert (=> bm!158420 (= call!158423 (validRegex!3155 (ite c!404156 (reg!7858 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))) (ite c!404155 (regOne!15571 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))) (regTwo!15570 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340)))))))))

(declare-fun b!2529964 () Bool)

(declare-fun e!1601155 () Bool)

(assert (=> b!2529964 (= e!1601155 e!1601153)))

(declare-fun res!1068354 () Bool)

(assert (=> b!2529964 (= res!1068354 (not (nullable!2446 (reg!7858 (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))))))))

(assert (=> b!2529964 (=> (not res!1068354) (not e!1601153))))

(declare-fun b!2529965 () Bool)

(assert (=> b!2529965 (= e!1601152 e!1601155)))

(assert (=> b!2529965 (= c!404156 ((_ is Star!7529) (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))))))

(declare-fun b!2529966 () Bool)

(declare-fun res!1068357 () Bool)

(assert (=> b!2529966 (=> res!1068357 e!1601151)))

(assert (=> b!2529966 (= res!1068357 (not ((_ is Concat!12225) (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340)))))))

(assert (=> b!2529966 (= e!1601154 e!1601151)))

(declare-fun b!2529967 () Bool)

(assert (=> b!2529967 (= e!1601156 call!158424)))

(declare-fun b!2529968 () Bool)

(assert (=> b!2529968 (= e!1601155 e!1601154)))

(assert (=> b!2529968 (= c!404155 ((_ is Union!7529) (ite c!404104 (regTwo!15571 r!27340) (regOne!15570 r!27340))))))

(assert (= (and d!719778 (not res!1068358)) b!2529965))

(assert (= (and b!2529965 c!404156) b!2529964))

(assert (= (and b!2529965 (not c!404156)) b!2529968))

(assert (= (and b!2529964 res!1068354) b!2529960))

(assert (= (and b!2529968 c!404155) b!2529961))

(assert (= (and b!2529968 (not c!404155)) b!2529966))

(assert (= (and b!2529961 res!1068356) b!2529967))

(assert (= (and b!2529966 (not res!1068357)) b!2529963))

(assert (= (and b!2529963 res!1068355) b!2529962))

(assert (= (or b!2529961 b!2529962) bm!158418))

(assert (= (or b!2529967 b!2529963) bm!158419))

(assert (= (or b!2529960 bm!158418) bm!158420))

(declare-fun m!2881809 () Bool)

(assert (=> bm!158419 m!2881809))

(declare-fun m!2881811 () Bool)

(assert (=> bm!158420 m!2881811))

(declare-fun m!2881813 () Bool)

(assert (=> b!2529964 m!2881813))

(assert (=> bm!158376 d!719778))

(assert (=> d!719768 d!719760))

(declare-fun d!719780 () Bool)

(assert (=> d!719780 (= (derivative!224 lt!901080 tl!4068) lt!901080)))

(assert (=> d!719780 true))

(declare-fun _$134!153 () Unit!43279)

(assert (=> d!719780 (= (choose!15005 lt!901080 tl!4068) _$134!153)))

(declare-fun bs!469184 () Bool)

(assert (= bs!469184 d!719780))

(assert (=> bs!469184 m!2881733))

(assert (=> d!719768 d!719780))

(declare-fun b!2529969 () Bool)

(declare-fun e!1601160 () Bool)

(declare-fun call!158426 () Bool)

(assert (=> b!2529969 (= e!1601160 call!158426)))

(declare-fun b!2529970 () Bool)

(declare-fun res!1068361 () Bool)

(declare-fun e!1601163 () Bool)

(assert (=> b!2529970 (=> (not res!1068361) (not e!1601163))))

(declare-fun call!158428 () Bool)

(assert (=> b!2529970 (= res!1068361 call!158428)))

(declare-fun e!1601161 () Bool)

(assert (=> b!2529970 (= e!1601161 e!1601163)))

(declare-fun b!2529971 () Bool)

(declare-fun e!1601164 () Bool)

(assert (=> b!2529971 (= e!1601164 call!158428)))

(declare-fun bm!158421 () Bool)

(assert (=> bm!158421 (= call!158428 call!158426)))

(declare-fun bm!158422 () Bool)

(declare-fun call!158427 () Bool)

(declare-fun c!404157 () Bool)

(assert (=> bm!158422 (= call!158427 (validRegex!3155 (ite c!404157 (regTwo!15571 lt!901091) (regOne!15570 lt!901091))))))

(declare-fun b!2529972 () Bool)

(declare-fun e!1601158 () Bool)

(assert (=> b!2529972 (= e!1601158 e!1601164)))

(declare-fun res!1068360 () Bool)

(assert (=> b!2529972 (=> (not res!1068360) (not e!1601164))))

(assert (=> b!2529972 (= res!1068360 call!158427)))

(declare-fun d!719782 () Bool)

(declare-fun res!1068363 () Bool)

(declare-fun e!1601159 () Bool)

(assert (=> d!719782 (=> res!1068363 e!1601159)))

(assert (=> d!719782 (= res!1068363 ((_ is ElementMatch!7529) lt!901091))))

(assert (=> d!719782 (= (validRegex!3155 lt!901091) e!1601159)))

(declare-fun c!404158 () Bool)

(declare-fun bm!158423 () Bool)

(assert (=> bm!158423 (= call!158426 (validRegex!3155 (ite c!404158 (reg!7858 lt!901091) (ite c!404157 (regOne!15571 lt!901091) (regTwo!15570 lt!901091)))))))

(declare-fun b!2529973 () Bool)

(declare-fun e!1601162 () Bool)

(assert (=> b!2529973 (= e!1601162 e!1601160)))

(declare-fun res!1068359 () Bool)

(assert (=> b!2529973 (= res!1068359 (not (nullable!2446 (reg!7858 lt!901091))))))

(assert (=> b!2529973 (=> (not res!1068359) (not e!1601160))))

(declare-fun b!2529974 () Bool)

(assert (=> b!2529974 (= e!1601159 e!1601162)))

(assert (=> b!2529974 (= c!404158 ((_ is Star!7529) lt!901091))))

(declare-fun b!2529975 () Bool)

(declare-fun res!1068362 () Bool)

(assert (=> b!2529975 (=> res!1068362 e!1601158)))

(assert (=> b!2529975 (= res!1068362 (not ((_ is Concat!12225) lt!901091)))))

(assert (=> b!2529975 (= e!1601161 e!1601158)))

(declare-fun b!2529976 () Bool)

(assert (=> b!2529976 (= e!1601163 call!158427)))

(declare-fun b!2529977 () Bool)

(assert (=> b!2529977 (= e!1601162 e!1601161)))

(assert (=> b!2529977 (= c!404157 ((_ is Union!7529) lt!901091))))

(assert (= (and d!719782 (not res!1068363)) b!2529974))

(assert (= (and b!2529974 c!404158) b!2529973))

(assert (= (and b!2529974 (not c!404158)) b!2529977))

(assert (= (and b!2529973 res!1068359) b!2529969))

(assert (= (and b!2529977 c!404157) b!2529970))

(assert (= (and b!2529977 (not c!404157)) b!2529975))

(assert (= (and b!2529970 res!1068361) b!2529976))

(assert (= (and b!2529975 (not res!1068362)) b!2529972))

(assert (= (and b!2529972 res!1068360) b!2529971))

(assert (= (or b!2529970 b!2529971) bm!158421))

(assert (= (or b!2529976 b!2529972) bm!158422))

(assert (= (or b!2529969 bm!158421) bm!158423))

(declare-fun m!2881815 () Bool)

(assert (=> bm!158422 m!2881815))

(declare-fun m!2881817 () Bool)

(assert (=> bm!158423 m!2881817))

(declare-fun m!2881819 () Bool)

(assert (=> b!2529973 m!2881819))

(assert (=> d!719760 d!719782))

(declare-fun b!2529978 () Bool)

(declare-fun e!1601167 () Bool)

(declare-fun call!158429 () Bool)

(assert (=> b!2529978 (= e!1601167 call!158429)))

(declare-fun b!2529979 () Bool)

(declare-fun res!1068366 () Bool)

(declare-fun e!1601170 () Bool)

(assert (=> b!2529979 (=> (not res!1068366) (not e!1601170))))

(declare-fun call!158431 () Bool)

(assert (=> b!2529979 (= res!1068366 call!158431)))

(declare-fun e!1601168 () Bool)

(assert (=> b!2529979 (= e!1601168 e!1601170)))

(declare-fun b!2529980 () Bool)

(declare-fun e!1601171 () Bool)

(assert (=> b!2529980 (= e!1601171 call!158431)))

(declare-fun bm!158424 () Bool)

(assert (=> bm!158424 (= call!158431 call!158429)))

(declare-fun bm!158425 () Bool)

(declare-fun call!158430 () Bool)

(declare-fun c!404159 () Bool)

(assert (=> bm!158425 (= call!158430 (validRegex!3155 (ite c!404159 (regTwo!15571 lt!901080) (regOne!15570 lt!901080))))))

(declare-fun b!2529981 () Bool)

(declare-fun e!1601165 () Bool)

(assert (=> b!2529981 (= e!1601165 e!1601171)))

(declare-fun res!1068365 () Bool)

(assert (=> b!2529981 (=> (not res!1068365) (not e!1601171))))

(assert (=> b!2529981 (= res!1068365 call!158430)))

(declare-fun d!719784 () Bool)

(declare-fun res!1068368 () Bool)

(declare-fun e!1601166 () Bool)

(assert (=> d!719784 (=> res!1068368 e!1601166)))

(assert (=> d!719784 (= res!1068368 ((_ is ElementMatch!7529) lt!901080))))

(assert (=> d!719784 (= (validRegex!3155 lt!901080) e!1601166)))

(declare-fun bm!158426 () Bool)

(declare-fun c!404160 () Bool)

(assert (=> bm!158426 (= call!158429 (validRegex!3155 (ite c!404160 (reg!7858 lt!901080) (ite c!404159 (regOne!15571 lt!901080) (regTwo!15570 lt!901080)))))))

(declare-fun b!2529982 () Bool)

(declare-fun e!1601169 () Bool)

(assert (=> b!2529982 (= e!1601169 e!1601167)))

(declare-fun res!1068364 () Bool)

(assert (=> b!2529982 (= res!1068364 (not (nullable!2446 (reg!7858 lt!901080))))))

(assert (=> b!2529982 (=> (not res!1068364) (not e!1601167))))

(declare-fun b!2529983 () Bool)

(assert (=> b!2529983 (= e!1601166 e!1601169)))

(assert (=> b!2529983 (= c!404160 ((_ is Star!7529) lt!901080))))

(declare-fun b!2529984 () Bool)

(declare-fun res!1068367 () Bool)

(assert (=> b!2529984 (=> res!1068367 e!1601165)))

(assert (=> b!2529984 (= res!1068367 (not ((_ is Concat!12225) lt!901080)))))

(assert (=> b!2529984 (= e!1601168 e!1601165)))

(declare-fun b!2529985 () Bool)

(assert (=> b!2529985 (= e!1601170 call!158430)))

(declare-fun b!2529986 () Bool)

(assert (=> b!2529986 (= e!1601169 e!1601168)))

(assert (=> b!2529986 (= c!404159 ((_ is Union!7529) lt!901080))))

(assert (= (and d!719784 (not res!1068368)) b!2529983))

(assert (= (and b!2529983 c!404160) b!2529982))

(assert (= (and b!2529983 (not c!404160)) b!2529986))

(assert (= (and b!2529982 res!1068364) b!2529978))

(assert (= (and b!2529986 c!404159) b!2529979))

(assert (= (and b!2529986 (not c!404159)) b!2529984))

(assert (= (and b!2529979 res!1068366) b!2529985))

(assert (= (and b!2529984 (not res!1068367)) b!2529981))

(assert (= (and b!2529981 res!1068365) b!2529980))

(assert (= (or b!2529979 b!2529980) bm!158424))

(assert (= (or b!2529985 b!2529981) bm!158425))

(assert (= (or b!2529978 bm!158424) bm!158426))

(declare-fun m!2881821 () Bool)

(assert (=> bm!158425 m!2881821))

(declare-fun m!2881823 () Bool)

(assert (=> bm!158426 m!2881823))

(declare-fun m!2881825 () Bool)

(assert (=> b!2529982 m!2881825))

(assert (=> d!719760 d!719784))

(declare-fun bm!158427 () Bool)

(declare-fun c!404164 () Bool)

(declare-fun call!158432 () Regex!7529)

(assert (=> bm!158427 (= call!158432 (derivativeStep!2098 (ite c!404164 (regTwo!15571 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))) (regTwo!15570 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))) c!14016))))

(declare-fun b!2529987 () Bool)

(declare-fun call!158434 () Regex!7529)

(declare-fun e!1601175 () Regex!7529)

(assert (=> b!2529987 (= e!1601175 (Union!7529 (Concat!12225 call!158434 (regTwo!15570 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))) EmptyLang!7529))))

(declare-fun e!1601173 () Regex!7529)

(declare-fun b!2529988 () Bool)

(assert (=> b!2529988 (= e!1601173 (ite (= c!14016 (c!404099 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))) EmptyExpr!7529 EmptyLang!7529))))

(declare-fun b!2529989 () Bool)

(assert (=> b!2529989 (= e!1601175 (Union!7529 (Concat!12225 call!158434 (regTwo!15570 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))) call!158432))))

(declare-fun bm!158428 () Bool)

(declare-fun call!158435 () Regex!7529)

(assert (=> bm!158428 (= call!158434 call!158435)))

(declare-fun bm!158429 () Bool)

(declare-fun c!404161 () Bool)

(declare-fun call!158433 () Regex!7529)

(assert (=> bm!158429 (= call!158433 (derivativeStep!2098 (ite c!404164 (regOne!15571 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))) (ite c!404161 (reg!7858 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))) (regOne!15570 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))))) c!14016))))

(declare-fun b!2529990 () Bool)

(declare-fun e!1601174 () Regex!7529)

(assert (=> b!2529990 (= e!1601174 e!1601173)))

(declare-fun c!404165 () Bool)

(assert (=> b!2529990 (= c!404165 ((_ is ElementMatch!7529) (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))))))

(declare-fun b!2529991 () Bool)

(declare-fun e!1601176 () Regex!7529)

(declare-fun e!1601172 () Regex!7529)

(assert (=> b!2529991 (= e!1601176 e!1601172)))

(assert (=> b!2529991 (= c!404161 ((_ is Star!7529) (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))))))

(declare-fun d!719786 () Bool)

(declare-fun lt!901102 () Regex!7529)

(assert (=> d!719786 (validRegex!3155 lt!901102)))

(assert (=> d!719786 (= lt!901102 e!1601174)))

(declare-fun c!404163 () Bool)

(assert (=> d!719786 (= c!404163 (or ((_ is EmptyExpr!7529) (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))) ((_ is EmptyLang!7529) (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))))))

(assert (=> d!719786 (validRegex!3155 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))))

(assert (=> d!719786 (= (derivativeStep!2098 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)) c!14016) lt!901102)))

(declare-fun b!2529992 () Bool)

(assert (=> b!2529992 (= c!404164 ((_ is Union!7529) (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))))))

(assert (=> b!2529992 (= e!1601173 e!1601176)))

(declare-fun b!2529993 () Bool)

(assert (=> b!2529993 (= e!1601176 (Union!7529 call!158433 call!158432))))

(declare-fun bm!158430 () Bool)

(assert (=> bm!158430 (= call!158435 call!158433)))

(declare-fun b!2529994 () Bool)

(declare-fun c!404162 () Bool)

(assert (=> b!2529994 (= c!404162 (nullable!2446 (regOne!15570 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340)))))))

(assert (=> b!2529994 (= e!1601172 e!1601175)))

(declare-fun b!2529995 () Bool)

(assert (=> b!2529995 (= e!1601174 EmptyLang!7529)))

(declare-fun b!2529996 () Bool)

(assert (=> b!2529996 (= e!1601172 (Concat!12225 call!158435 (ite c!404144 (regTwo!15571 r!27340) (regTwo!15570 r!27340))))))

(assert (= (and d!719786 c!404163) b!2529995))

(assert (= (and d!719786 (not c!404163)) b!2529990))

(assert (= (and b!2529990 c!404165) b!2529988))

(assert (= (and b!2529990 (not c!404165)) b!2529992))

(assert (= (and b!2529992 c!404164) b!2529993))

(assert (= (and b!2529992 (not c!404164)) b!2529991))

(assert (= (and b!2529991 c!404161) b!2529996))

(assert (= (and b!2529991 (not c!404161)) b!2529994))

(assert (= (and b!2529994 c!404162) b!2529989))

(assert (= (and b!2529994 (not c!404162)) b!2529987))

(assert (= (or b!2529989 b!2529987) bm!158428))

(assert (= (or b!2529996 bm!158428) bm!158430))

(assert (= (or b!2529993 b!2529989) bm!158427))

(assert (= (or b!2529993 bm!158430) bm!158429))

(declare-fun m!2881827 () Bool)

(assert (=> bm!158427 m!2881827))

(declare-fun m!2881829 () Bool)

(assert (=> bm!158429 m!2881829))

(declare-fun m!2881831 () Bool)

(assert (=> d!719786 m!2881831))

(declare-fun m!2881833 () Bool)

(assert (=> d!719786 m!2881833))

(declare-fun m!2881835 () Bool)

(assert (=> b!2529994 m!2881835))

(assert (=> bm!158398 d!719786))

(declare-fun b!2530011 () Bool)

(declare-fun e!1601193 () Bool)

(declare-fun call!158440 () Bool)

(assert (=> b!2530011 (= e!1601193 call!158440)))

(declare-fun bm!158435 () Bool)

(declare-fun c!404168 () Bool)

(assert (=> bm!158435 (= call!158440 (nullable!2446 (ite c!404168 (regOne!15571 lt!901081) (regTwo!15570 lt!901081))))))

(declare-fun d!719788 () Bool)

(declare-fun res!1068380 () Bool)

(declare-fun e!1601191 () Bool)

(assert (=> d!719788 (=> res!1068380 e!1601191)))

(assert (=> d!719788 (= res!1068380 ((_ is EmptyExpr!7529) lt!901081))))

(assert (=> d!719788 (= (nullableFct!686 lt!901081) e!1601191)))

(declare-fun b!2530012 () Bool)

(declare-fun e!1601189 () Bool)

(assert (=> b!2530012 (= e!1601191 e!1601189)))

(declare-fun res!1068379 () Bool)

(assert (=> b!2530012 (=> (not res!1068379) (not e!1601189))))

(assert (=> b!2530012 (= res!1068379 (and (not ((_ is EmptyLang!7529) lt!901081)) (not ((_ is ElementMatch!7529) lt!901081))))))

(declare-fun b!2530013 () Bool)

(declare-fun e!1601194 () Bool)

(declare-fun e!1601190 () Bool)

(assert (=> b!2530013 (= e!1601194 e!1601190)))

(declare-fun res!1068382 () Bool)

(assert (=> b!2530013 (= res!1068382 call!158440)))

(assert (=> b!2530013 (=> res!1068382 e!1601190)))

(declare-fun b!2530014 () Bool)

(assert (=> b!2530014 (= e!1601194 e!1601193)))

(declare-fun res!1068383 () Bool)

(declare-fun call!158441 () Bool)

(assert (=> b!2530014 (= res!1068383 call!158441)))

(assert (=> b!2530014 (=> (not res!1068383) (not e!1601193))))

(declare-fun b!2530015 () Bool)

(declare-fun e!1601192 () Bool)

(assert (=> b!2530015 (= e!1601192 e!1601194)))

(assert (=> b!2530015 (= c!404168 ((_ is Union!7529) lt!901081))))

(declare-fun bm!158436 () Bool)

(assert (=> bm!158436 (= call!158441 (nullable!2446 (ite c!404168 (regTwo!15571 lt!901081) (regOne!15570 lt!901081))))))

(declare-fun b!2530016 () Bool)

(assert (=> b!2530016 (= e!1601190 call!158441)))

(declare-fun b!2530017 () Bool)

(assert (=> b!2530017 (= e!1601189 e!1601192)))

(declare-fun res!1068381 () Bool)

(assert (=> b!2530017 (=> res!1068381 e!1601192)))

(assert (=> b!2530017 (= res!1068381 ((_ is Star!7529) lt!901081))))

(assert (= (and d!719788 (not res!1068380)) b!2530012))

(assert (= (and b!2530012 res!1068379) b!2530017))

(assert (= (and b!2530017 (not res!1068381)) b!2530015))

(assert (= (and b!2530015 c!404168) b!2530013))

(assert (= (and b!2530015 (not c!404168)) b!2530014))

(assert (= (and b!2530013 (not res!1068382)) b!2530016))

(assert (= (and b!2530014 res!1068383) b!2530011))

(assert (= (or b!2530016 b!2530014) bm!158436))

(assert (= (or b!2530013 b!2530011) bm!158435))

(declare-fun m!2881837 () Bool)

(assert (=> bm!158435 m!2881837))

(declare-fun m!2881839 () Bool)

(assert (=> bm!158436 m!2881839))

(assert (=> d!719758 d!719788))

(declare-fun d!719790 () Bool)

(declare-fun lt!901103 () Regex!7529)

(assert (=> d!719790 (validRegex!3155 lt!901103)))

(declare-fun e!1601195 () Regex!7529)

(assert (=> d!719790 (= lt!901103 e!1601195)))

(declare-fun c!404169 () Bool)

(assert (=> d!719790 (= c!404169 ((_ is Cons!29494) (t!211293 tl!4068)))))

(assert (=> d!719790 (validRegex!3155 (derivativeStep!2098 lt!901080 (h!34914 tl!4068)))))

(assert (=> d!719790 (= (derivative!224 (derivativeStep!2098 lt!901080 (h!34914 tl!4068)) (t!211293 tl!4068)) lt!901103)))

(declare-fun b!2530018 () Bool)

(assert (=> b!2530018 (= e!1601195 (derivative!224 (derivativeStep!2098 (derivativeStep!2098 lt!901080 (h!34914 tl!4068)) (h!34914 (t!211293 tl!4068))) (t!211293 (t!211293 tl!4068))))))

(declare-fun b!2530019 () Bool)

(assert (=> b!2530019 (= e!1601195 (derivativeStep!2098 lt!901080 (h!34914 tl!4068)))))

(assert (= (and d!719790 c!404169) b!2530018))

(assert (= (and d!719790 (not c!404169)) b!2530019))

(declare-fun m!2881841 () Bool)

(assert (=> d!719790 m!2881841))

(assert (=> d!719790 m!2881761))

(declare-fun m!2881843 () Bool)

(assert (=> d!719790 m!2881843))

(assert (=> b!2530018 m!2881761))

(declare-fun m!2881845 () Bool)

(assert (=> b!2530018 m!2881845))

(assert (=> b!2530018 m!2881845))

(declare-fun m!2881847 () Bool)

(assert (=> b!2530018 m!2881847))

(assert (=> b!2529782 d!719790))

(declare-fun c!404173 () Bool)

(declare-fun bm!158437 () Bool)

(declare-fun call!158442 () Regex!7529)

(assert (=> bm!158437 (= call!158442 (derivativeStep!2098 (ite c!404173 (regTwo!15571 lt!901080) (regTwo!15570 lt!901080)) (h!34914 tl!4068)))))

(declare-fun b!2530020 () Bool)

(declare-fun e!1601199 () Regex!7529)

(declare-fun call!158444 () Regex!7529)

(assert (=> b!2530020 (= e!1601199 (Union!7529 (Concat!12225 call!158444 (regTwo!15570 lt!901080)) EmptyLang!7529))))

(declare-fun b!2530021 () Bool)

(declare-fun e!1601197 () Regex!7529)

(assert (=> b!2530021 (= e!1601197 (ite (= (h!34914 tl!4068) (c!404099 lt!901080)) EmptyExpr!7529 EmptyLang!7529))))

(declare-fun b!2530022 () Bool)

(assert (=> b!2530022 (= e!1601199 (Union!7529 (Concat!12225 call!158444 (regTwo!15570 lt!901080)) call!158442))))

(declare-fun bm!158438 () Bool)

(declare-fun call!158445 () Regex!7529)

(assert (=> bm!158438 (= call!158444 call!158445)))

(declare-fun call!158443 () Regex!7529)

(declare-fun c!404170 () Bool)

(declare-fun bm!158439 () Bool)

(assert (=> bm!158439 (= call!158443 (derivativeStep!2098 (ite c!404173 (regOne!15571 lt!901080) (ite c!404170 (reg!7858 lt!901080) (regOne!15570 lt!901080))) (h!34914 tl!4068)))))

(declare-fun b!2530023 () Bool)

(declare-fun e!1601198 () Regex!7529)

(assert (=> b!2530023 (= e!1601198 e!1601197)))

(declare-fun c!404174 () Bool)

(assert (=> b!2530023 (= c!404174 ((_ is ElementMatch!7529) lt!901080))))

(declare-fun b!2530024 () Bool)

(declare-fun e!1601200 () Regex!7529)

(declare-fun e!1601196 () Regex!7529)

(assert (=> b!2530024 (= e!1601200 e!1601196)))

(assert (=> b!2530024 (= c!404170 ((_ is Star!7529) lt!901080))))

(declare-fun d!719792 () Bool)

(declare-fun lt!901104 () Regex!7529)

(assert (=> d!719792 (validRegex!3155 lt!901104)))

(assert (=> d!719792 (= lt!901104 e!1601198)))

(declare-fun c!404172 () Bool)

(assert (=> d!719792 (= c!404172 (or ((_ is EmptyExpr!7529) lt!901080) ((_ is EmptyLang!7529) lt!901080)))))

(assert (=> d!719792 (validRegex!3155 lt!901080)))

(assert (=> d!719792 (= (derivativeStep!2098 lt!901080 (h!34914 tl!4068)) lt!901104)))

(declare-fun b!2530025 () Bool)

(assert (=> b!2530025 (= c!404173 ((_ is Union!7529) lt!901080))))

(assert (=> b!2530025 (= e!1601197 e!1601200)))

(declare-fun b!2530026 () Bool)

(assert (=> b!2530026 (= e!1601200 (Union!7529 call!158443 call!158442))))

(declare-fun bm!158440 () Bool)

(assert (=> bm!158440 (= call!158445 call!158443)))

(declare-fun b!2530027 () Bool)

(declare-fun c!404171 () Bool)

(assert (=> b!2530027 (= c!404171 (nullable!2446 (regOne!15570 lt!901080)))))

(assert (=> b!2530027 (= e!1601196 e!1601199)))

(declare-fun b!2530028 () Bool)

(assert (=> b!2530028 (= e!1601198 EmptyLang!7529)))

(declare-fun b!2530029 () Bool)

(assert (=> b!2530029 (= e!1601196 (Concat!12225 call!158445 lt!901080))))

(assert (= (and d!719792 c!404172) b!2530028))

(assert (= (and d!719792 (not c!404172)) b!2530023))

(assert (= (and b!2530023 c!404174) b!2530021))

(assert (= (and b!2530023 (not c!404174)) b!2530025))

(assert (= (and b!2530025 c!404173) b!2530026))

(assert (= (and b!2530025 (not c!404173)) b!2530024))

(assert (= (and b!2530024 c!404170) b!2530029))

(assert (= (and b!2530024 (not c!404170)) b!2530027))

(assert (= (and b!2530027 c!404171) b!2530022))

(assert (= (and b!2530027 (not c!404171)) b!2530020))

(assert (= (or b!2530022 b!2530020) bm!158438))

(assert (= (or b!2530029 bm!158438) bm!158440))

(assert (= (or b!2530026 b!2530022) bm!158437))

(assert (= (or b!2530026 bm!158440) bm!158439))

(declare-fun m!2881849 () Bool)

(assert (=> bm!158437 m!2881849))

(declare-fun m!2881851 () Bool)

(assert (=> bm!158439 m!2881851))

(declare-fun m!2881853 () Bool)

(assert (=> d!719792 m!2881853))

(assert (=> d!719792 m!2881759))

(declare-fun m!2881855 () Bool)

(assert (=> b!2530027 m!2881855))

(assert (=> b!2529782 d!719792))

(declare-fun b!2530030 () Bool)

(declare-fun e!1601203 () Bool)

(declare-fun call!158446 () Bool)

(assert (=> b!2530030 (= e!1601203 call!158446)))

(declare-fun b!2530031 () Bool)

(declare-fun res!1068386 () Bool)

(declare-fun e!1601206 () Bool)

(assert (=> b!2530031 (=> (not res!1068386) (not e!1601206))))

(declare-fun call!158448 () Bool)

(assert (=> b!2530031 (= res!1068386 call!158448)))

(declare-fun e!1601204 () Bool)

(assert (=> b!2530031 (= e!1601204 e!1601206)))

(declare-fun b!2530032 () Bool)

(declare-fun e!1601207 () Bool)

(assert (=> b!2530032 (= e!1601207 call!158448)))

(declare-fun bm!158441 () Bool)

(assert (=> bm!158441 (= call!158448 call!158446)))

(declare-fun bm!158442 () Bool)

(declare-fun call!158447 () Bool)

(declare-fun c!404175 () Bool)

(assert (=> bm!158442 (= call!158447 (validRegex!3155 (ite c!404175 (regTwo!15571 lt!901097) (regOne!15570 lt!901097))))))

(declare-fun b!2530033 () Bool)

(declare-fun e!1601201 () Bool)

(assert (=> b!2530033 (= e!1601201 e!1601207)))

(declare-fun res!1068385 () Bool)

(assert (=> b!2530033 (=> (not res!1068385) (not e!1601207))))

(assert (=> b!2530033 (= res!1068385 call!158447)))

(declare-fun d!719794 () Bool)

(declare-fun res!1068388 () Bool)

(declare-fun e!1601202 () Bool)

(assert (=> d!719794 (=> res!1068388 e!1601202)))

(assert (=> d!719794 (= res!1068388 ((_ is ElementMatch!7529) lt!901097))))

(assert (=> d!719794 (= (validRegex!3155 lt!901097) e!1601202)))

(declare-fun c!404176 () Bool)

(declare-fun bm!158443 () Bool)

(assert (=> bm!158443 (= call!158446 (validRegex!3155 (ite c!404176 (reg!7858 lt!901097) (ite c!404175 (regOne!15571 lt!901097) (regTwo!15570 lt!901097)))))))

(declare-fun b!2530034 () Bool)

(declare-fun e!1601205 () Bool)

(assert (=> b!2530034 (= e!1601205 e!1601203)))

(declare-fun res!1068384 () Bool)

(assert (=> b!2530034 (= res!1068384 (not (nullable!2446 (reg!7858 lt!901097))))))

(assert (=> b!2530034 (=> (not res!1068384) (not e!1601203))))

(declare-fun b!2530035 () Bool)

(assert (=> b!2530035 (= e!1601202 e!1601205)))

(assert (=> b!2530035 (= c!404176 ((_ is Star!7529) lt!901097))))

(declare-fun b!2530036 () Bool)

(declare-fun res!1068387 () Bool)

(assert (=> b!2530036 (=> res!1068387 e!1601201)))

(assert (=> b!2530036 (= res!1068387 (not ((_ is Concat!12225) lt!901097)))))

(assert (=> b!2530036 (= e!1601204 e!1601201)))

(declare-fun b!2530037 () Bool)

(assert (=> b!2530037 (= e!1601206 call!158447)))

(declare-fun b!2530038 () Bool)

(assert (=> b!2530038 (= e!1601205 e!1601204)))

(assert (=> b!2530038 (= c!404175 ((_ is Union!7529) lt!901097))))

(assert (= (and d!719794 (not res!1068388)) b!2530035))

(assert (= (and b!2530035 c!404176) b!2530034))

(assert (= (and b!2530035 (not c!404176)) b!2530038))

(assert (= (and b!2530034 res!1068384) b!2530030))

(assert (= (and b!2530038 c!404175) b!2530031))

(assert (= (and b!2530038 (not c!404175)) b!2530036))

(assert (= (and b!2530031 res!1068386) b!2530037))

(assert (= (and b!2530036 (not res!1068387)) b!2530033))

(assert (= (and b!2530033 res!1068385) b!2530032))

(assert (= (or b!2530031 b!2530032) bm!158441))

(assert (= (or b!2530037 b!2530033) bm!158442))

(assert (= (or b!2530030 bm!158441) bm!158443))

(declare-fun m!2881857 () Bool)

(assert (=> bm!158442 m!2881857))

(declare-fun m!2881859 () Bool)

(assert (=> bm!158443 m!2881859))

(declare-fun m!2881861 () Bool)

(assert (=> b!2530034 m!2881861))

(assert (=> d!719764 d!719794))

(assert (=> d!719764 d!719750))

(declare-fun b!2530042 () Bool)

(declare-fun e!1601208 () Bool)

(declare-fun tp!807545 () Bool)

(declare-fun tp!807547 () Bool)

(assert (=> b!2530042 (= e!1601208 (and tp!807545 tp!807547))))

(assert (=> b!2529903 (= tp!807492 e!1601208)))

(declare-fun b!2530041 () Bool)

(declare-fun tp!807544 () Bool)

(assert (=> b!2530041 (= e!1601208 tp!807544)))

(declare-fun b!2530039 () Bool)

(assert (=> b!2530039 (= e!1601208 tp_is_empty!12913)))

(declare-fun b!2530040 () Bool)

(declare-fun tp!807543 () Bool)

(declare-fun tp!807546 () Bool)

(assert (=> b!2530040 (= e!1601208 (and tp!807543 tp!807546))))

(assert (= (and b!2529903 ((_ is ElementMatch!7529) (regOne!15571 (reg!7858 r!27340)))) b!2530039))

(assert (= (and b!2529903 ((_ is Concat!12225) (regOne!15571 (reg!7858 r!27340)))) b!2530040))

(assert (= (and b!2529903 ((_ is Star!7529) (regOne!15571 (reg!7858 r!27340)))) b!2530041))

(assert (= (and b!2529903 ((_ is Union!7529) (regOne!15571 (reg!7858 r!27340)))) b!2530042))

(declare-fun b!2530046 () Bool)

(declare-fun e!1601209 () Bool)

(declare-fun tp!807550 () Bool)

(declare-fun tp!807552 () Bool)

(assert (=> b!2530046 (= e!1601209 (and tp!807550 tp!807552))))

(assert (=> b!2529903 (= tp!807494 e!1601209)))

(declare-fun b!2530045 () Bool)

(declare-fun tp!807549 () Bool)

(assert (=> b!2530045 (= e!1601209 tp!807549)))

(declare-fun b!2530043 () Bool)

(assert (=> b!2530043 (= e!1601209 tp_is_empty!12913)))

(declare-fun b!2530044 () Bool)

(declare-fun tp!807548 () Bool)

(declare-fun tp!807551 () Bool)

(assert (=> b!2530044 (= e!1601209 (and tp!807548 tp!807551))))

(assert (= (and b!2529903 ((_ is ElementMatch!7529) (regTwo!15571 (reg!7858 r!27340)))) b!2530043))

(assert (= (and b!2529903 ((_ is Concat!12225) (regTwo!15571 (reg!7858 r!27340)))) b!2530044))

(assert (= (and b!2529903 ((_ is Star!7529) (regTwo!15571 (reg!7858 r!27340)))) b!2530045))

(assert (= (and b!2529903 ((_ is Union!7529) (regTwo!15571 (reg!7858 r!27340)))) b!2530046))

(declare-fun b!2530050 () Bool)

(declare-fun e!1601210 () Bool)

(declare-fun tp!807555 () Bool)

(declare-fun tp!807557 () Bool)

(assert (=> b!2530050 (= e!1601210 (and tp!807555 tp!807557))))

(assert (=> b!2529915 (= tp!807512 e!1601210)))

(declare-fun b!2530049 () Bool)

(declare-fun tp!807554 () Bool)

(assert (=> b!2530049 (= e!1601210 tp!807554)))

(declare-fun b!2530047 () Bool)

(assert (=> b!2530047 (= e!1601210 tp_is_empty!12913)))

(declare-fun b!2530048 () Bool)

(declare-fun tp!807553 () Bool)

(declare-fun tp!807556 () Bool)

(assert (=> b!2530048 (= e!1601210 (and tp!807553 tp!807556))))

(assert (= (and b!2529915 ((_ is ElementMatch!7529) (regOne!15571 (regTwo!15571 r!27340)))) b!2530047))

(assert (= (and b!2529915 ((_ is Concat!12225) (regOne!15571 (regTwo!15571 r!27340)))) b!2530048))

(assert (= (and b!2529915 ((_ is Star!7529) (regOne!15571 (regTwo!15571 r!27340)))) b!2530049))

(assert (= (and b!2529915 ((_ is Union!7529) (regOne!15571 (regTwo!15571 r!27340)))) b!2530050))

(declare-fun b!2530054 () Bool)

(declare-fun e!1601211 () Bool)

(declare-fun tp!807560 () Bool)

(declare-fun tp!807562 () Bool)

(assert (=> b!2530054 (= e!1601211 (and tp!807560 tp!807562))))

(assert (=> b!2529915 (= tp!807514 e!1601211)))

(declare-fun b!2530053 () Bool)

(declare-fun tp!807559 () Bool)

(assert (=> b!2530053 (= e!1601211 tp!807559)))

(declare-fun b!2530051 () Bool)

(assert (=> b!2530051 (= e!1601211 tp_is_empty!12913)))

(declare-fun b!2530052 () Bool)

(declare-fun tp!807558 () Bool)

(declare-fun tp!807561 () Bool)

(assert (=> b!2530052 (= e!1601211 (and tp!807558 tp!807561))))

(assert (= (and b!2529915 ((_ is ElementMatch!7529) (regTwo!15571 (regTwo!15571 r!27340)))) b!2530051))

(assert (= (and b!2529915 ((_ is Concat!12225) (regTwo!15571 (regTwo!15571 r!27340)))) b!2530052))

(assert (= (and b!2529915 ((_ is Star!7529) (regTwo!15571 (regTwo!15571 r!27340)))) b!2530053))

(assert (= (and b!2529915 ((_ is Union!7529) (regTwo!15571 (regTwo!15571 r!27340)))) b!2530054))

(declare-fun b!2530058 () Bool)

(declare-fun e!1601212 () Bool)

(declare-fun tp!807565 () Bool)

(declare-fun tp!807567 () Bool)

(assert (=> b!2530058 (= e!1601212 (and tp!807565 tp!807567))))

(assert (=> b!2529901 (= tp!807490 e!1601212)))

(declare-fun b!2530057 () Bool)

(declare-fun tp!807564 () Bool)

(assert (=> b!2530057 (= e!1601212 tp!807564)))

(declare-fun b!2530055 () Bool)

(assert (=> b!2530055 (= e!1601212 tp_is_empty!12913)))

(declare-fun b!2530056 () Bool)

(declare-fun tp!807563 () Bool)

(declare-fun tp!807566 () Bool)

(assert (=> b!2530056 (= e!1601212 (and tp!807563 tp!807566))))

(assert (= (and b!2529901 ((_ is ElementMatch!7529) (regOne!15570 (reg!7858 r!27340)))) b!2530055))

(assert (= (and b!2529901 ((_ is Concat!12225) (regOne!15570 (reg!7858 r!27340)))) b!2530056))

(assert (= (and b!2529901 ((_ is Star!7529) (regOne!15570 (reg!7858 r!27340)))) b!2530057))

(assert (= (and b!2529901 ((_ is Union!7529) (regOne!15570 (reg!7858 r!27340)))) b!2530058))

(declare-fun b!2530062 () Bool)

(declare-fun e!1601213 () Bool)

(declare-fun tp!807570 () Bool)

(declare-fun tp!807572 () Bool)

(assert (=> b!2530062 (= e!1601213 (and tp!807570 tp!807572))))

(assert (=> b!2529901 (= tp!807493 e!1601213)))

(declare-fun b!2530061 () Bool)

(declare-fun tp!807569 () Bool)

(assert (=> b!2530061 (= e!1601213 tp!807569)))

(declare-fun b!2530059 () Bool)

(assert (=> b!2530059 (= e!1601213 tp_is_empty!12913)))

(declare-fun b!2530060 () Bool)

(declare-fun tp!807568 () Bool)

(declare-fun tp!807571 () Bool)

(assert (=> b!2530060 (= e!1601213 (and tp!807568 tp!807571))))

(assert (= (and b!2529901 ((_ is ElementMatch!7529) (regTwo!15570 (reg!7858 r!27340)))) b!2530059))

(assert (= (and b!2529901 ((_ is Concat!12225) (regTwo!15570 (reg!7858 r!27340)))) b!2530060))

(assert (= (and b!2529901 ((_ is Star!7529) (regTwo!15570 (reg!7858 r!27340)))) b!2530061))

(assert (= (and b!2529901 ((_ is Union!7529) (regTwo!15570 (reg!7858 r!27340)))) b!2530062))

(declare-fun b!2530066 () Bool)

(declare-fun e!1601214 () Bool)

(declare-fun tp!807575 () Bool)

(declare-fun tp!807577 () Bool)

(assert (=> b!2530066 (= e!1601214 (and tp!807575 tp!807577))))

(assert (=> b!2529913 (= tp!807510 e!1601214)))

(declare-fun b!2530065 () Bool)

(declare-fun tp!807574 () Bool)

(assert (=> b!2530065 (= e!1601214 tp!807574)))

(declare-fun b!2530063 () Bool)

(assert (=> b!2530063 (= e!1601214 tp_is_empty!12913)))

(declare-fun b!2530064 () Bool)

(declare-fun tp!807573 () Bool)

(declare-fun tp!807576 () Bool)

(assert (=> b!2530064 (= e!1601214 (and tp!807573 tp!807576))))

(assert (= (and b!2529913 ((_ is ElementMatch!7529) (regOne!15570 (regTwo!15571 r!27340)))) b!2530063))

(assert (= (and b!2529913 ((_ is Concat!12225) (regOne!15570 (regTwo!15571 r!27340)))) b!2530064))

(assert (= (and b!2529913 ((_ is Star!7529) (regOne!15570 (regTwo!15571 r!27340)))) b!2530065))

(assert (= (and b!2529913 ((_ is Union!7529) (regOne!15570 (regTwo!15571 r!27340)))) b!2530066))

(declare-fun b!2530070 () Bool)

(declare-fun e!1601215 () Bool)

(declare-fun tp!807580 () Bool)

(declare-fun tp!807582 () Bool)

(assert (=> b!2530070 (= e!1601215 (and tp!807580 tp!807582))))

(assert (=> b!2529913 (= tp!807513 e!1601215)))

(declare-fun b!2530069 () Bool)

(declare-fun tp!807579 () Bool)

(assert (=> b!2530069 (= e!1601215 tp!807579)))

(declare-fun b!2530067 () Bool)

(assert (=> b!2530067 (= e!1601215 tp_is_empty!12913)))

(declare-fun b!2530068 () Bool)

(declare-fun tp!807578 () Bool)

(declare-fun tp!807581 () Bool)

(assert (=> b!2530068 (= e!1601215 (and tp!807578 tp!807581))))

(assert (= (and b!2529913 ((_ is ElementMatch!7529) (regTwo!15570 (regTwo!15571 r!27340)))) b!2530067))

(assert (= (and b!2529913 ((_ is Concat!12225) (regTwo!15570 (regTwo!15571 r!27340)))) b!2530068))

(assert (= (and b!2529913 ((_ is Star!7529) (regTwo!15570 (regTwo!15571 r!27340)))) b!2530069))

(assert (= (and b!2529913 ((_ is Union!7529) (regTwo!15570 (regTwo!15571 r!27340)))) b!2530070))

(declare-fun b!2530074 () Bool)

(declare-fun e!1601216 () Bool)

(declare-fun tp!807585 () Bool)

(declare-fun tp!807587 () Bool)

(assert (=> b!2530074 (= e!1601216 (and tp!807585 tp!807587))))

(assert (=> b!2529902 (= tp!807491 e!1601216)))

(declare-fun b!2530073 () Bool)

(declare-fun tp!807584 () Bool)

(assert (=> b!2530073 (= e!1601216 tp!807584)))

(declare-fun b!2530071 () Bool)

(assert (=> b!2530071 (= e!1601216 tp_is_empty!12913)))

(declare-fun b!2530072 () Bool)

(declare-fun tp!807583 () Bool)

(declare-fun tp!807586 () Bool)

(assert (=> b!2530072 (= e!1601216 (and tp!807583 tp!807586))))

(assert (= (and b!2529902 ((_ is ElementMatch!7529) (reg!7858 (reg!7858 r!27340)))) b!2530071))

(assert (= (and b!2529902 ((_ is Concat!12225) (reg!7858 (reg!7858 r!27340)))) b!2530072))

(assert (= (and b!2529902 ((_ is Star!7529) (reg!7858 (reg!7858 r!27340)))) b!2530073))

(assert (= (and b!2529902 ((_ is Union!7529) (reg!7858 (reg!7858 r!27340)))) b!2530074))

(declare-fun b!2530078 () Bool)

(declare-fun e!1601217 () Bool)

(declare-fun tp!807590 () Bool)

(declare-fun tp!807592 () Bool)

(assert (=> b!2530078 (= e!1601217 (and tp!807590 tp!807592))))

(assert (=> b!2529914 (= tp!807511 e!1601217)))

(declare-fun b!2530077 () Bool)

(declare-fun tp!807589 () Bool)

(assert (=> b!2530077 (= e!1601217 tp!807589)))

(declare-fun b!2530075 () Bool)

(assert (=> b!2530075 (= e!1601217 tp_is_empty!12913)))

(declare-fun b!2530076 () Bool)

(declare-fun tp!807588 () Bool)

(declare-fun tp!807591 () Bool)

(assert (=> b!2530076 (= e!1601217 (and tp!807588 tp!807591))))

(assert (= (and b!2529914 ((_ is ElementMatch!7529) (reg!7858 (regTwo!15571 r!27340)))) b!2530075))

(assert (= (and b!2529914 ((_ is Concat!12225) (reg!7858 (regTwo!15571 r!27340)))) b!2530076))

(assert (= (and b!2529914 ((_ is Star!7529) (reg!7858 (regTwo!15571 r!27340)))) b!2530077))

(assert (= (and b!2529914 ((_ is Union!7529) (reg!7858 (regTwo!15571 r!27340)))) b!2530078))

(declare-fun b!2530082 () Bool)

(declare-fun e!1601218 () Bool)

(declare-fun tp!807595 () Bool)

(declare-fun tp!807597 () Bool)

(assert (=> b!2530082 (= e!1601218 (and tp!807595 tp!807597))))

(assert (=> b!2529911 (= tp!807503 e!1601218)))

(declare-fun b!2530081 () Bool)

(declare-fun tp!807594 () Bool)

(assert (=> b!2530081 (= e!1601218 tp!807594)))

(declare-fun b!2530079 () Bool)

(assert (=> b!2530079 (= e!1601218 tp_is_empty!12913)))

(declare-fun b!2530080 () Bool)

(declare-fun tp!807593 () Bool)

(declare-fun tp!807596 () Bool)

(assert (=> b!2530080 (= e!1601218 (and tp!807593 tp!807596))))

(assert (= (and b!2529911 ((_ is ElementMatch!7529) (regOne!15571 (regOne!15571 r!27340)))) b!2530079))

(assert (= (and b!2529911 ((_ is Concat!12225) (regOne!15571 (regOne!15571 r!27340)))) b!2530080))

(assert (= (and b!2529911 ((_ is Star!7529) (regOne!15571 (regOne!15571 r!27340)))) b!2530081))

(assert (= (and b!2529911 ((_ is Union!7529) (regOne!15571 (regOne!15571 r!27340)))) b!2530082))

(declare-fun b!2530086 () Bool)

(declare-fun e!1601219 () Bool)

(declare-fun tp!807600 () Bool)

(declare-fun tp!807602 () Bool)

(assert (=> b!2530086 (= e!1601219 (and tp!807600 tp!807602))))

(assert (=> b!2529911 (= tp!807505 e!1601219)))

(declare-fun b!2530085 () Bool)

(declare-fun tp!807599 () Bool)

(assert (=> b!2530085 (= e!1601219 tp!807599)))

(declare-fun b!2530083 () Bool)

(assert (=> b!2530083 (= e!1601219 tp_is_empty!12913)))

(declare-fun b!2530084 () Bool)

(declare-fun tp!807598 () Bool)

(declare-fun tp!807601 () Bool)

(assert (=> b!2530084 (= e!1601219 (and tp!807598 tp!807601))))

(assert (= (and b!2529911 ((_ is ElementMatch!7529) (regTwo!15571 (regOne!15571 r!27340)))) b!2530083))

(assert (= (and b!2529911 ((_ is Concat!12225) (regTwo!15571 (regOne!15571 r!27340)))) b!2530084))

(assert (= (and b!2529911 ((_ is Star!7529) (regTwo!15571 (regOne!15571 r!27340)))) b!2530085))

(assert (= (and b!2529911 ((_ is Union!7529) (regTwo!15571 (regOne!15571 r!27340)))) b!2530086))

(declare-fun b!2530090 () Bool)

(declare-fun e!1601220 () Bool)

(declare-fun tp!807605 () Bool)

(declare-fun tp!807607 () Bool)

(assert (=> b!2530090 (= e!1601220 (and tp!807605 tp!807607))))

(assert (=> b!2529909 (= tp!807501 e!1601220)))

(declare-fun b!2530089 () Bool)

(declare-fun tp!807604 () Bool)

(assert (=> b!2530089 (= e!1601220 tp!807604)))

(declare-fun b!2530087 () Bool)

(assert (=> b!2530087 (= e!1601220 tp_is_empty!12913)))

(declare-fun b!2530088 () Bool)

(declare-fun tp!807603 () Bool)

(declare-fun tp!807606 () Bool)

(assert (=> b!2530088 (= e!1601220 (and tp!807603 tp!807606))))

(assert (= (and b!2529909 ((_ is ElementMatch!7529) (regOne!15570 (regOne!15571 r!27340)))) b!2530087))

(assert (= (and b!2529909 ((_ is Concat!12225) (regOne!15570 (regOne!15571 r!27340)))) b!2530088))

(assert (= (and b!2529909 ((_ is Star!7529) (regOne!15570 (regOne!15571 r!27340)))) b!2530089))

(assert (= (and b!2529909 ((_ is Union!7529) (regOne!15570 (regOne!15571 r!27340)))) b!2530090))

(declare-fun b!2530094 () Bool)

(declare-fun e!1601221 () Bool)

(declare-fun tp!807610 () Bool)

(declare-fun tp!807612 () Bool)

(assert (=> b!2530094 (= e!1601221 (and tp!807610 tp!807612))))

(assert (=> b!2529909 (= tp!807504 e!1601221)))

(declare-fun b!2530093 () Bool)

(declare-fun tp!807609 () Bool)

(assert (=> b!2530093 (= e!1601221 tp!807609)))

(declare-fun b!2530091 () Bool)

(assert (=> b!2530091 (= e!1601221 tp_is_empty!12913)))

(declare-fun b!2530092 () Bool)

(declare-fun tp!807608 () Bool)

(declare-fun tp!807611 () Bool)

(assert (=> b!2530092 (= e!1601221 (and tp!807608 tp!807611))))

(assert (= (and b!2529909 ((_ is ElementMatch!7529) (regTwo!15570 (regOne!15571 r!27340)))) b!2530091))

(assert (= (and b!2529909 ((_ is Concat!12225) (regTwo!15570 (regOne!15571 r!27340)))) b!2530092))

(assert (= (and b!2529909 ((_ is Star!7529) (regTwo!15570 (regOne!15571 r!27340)))) b!2530093))

(assert (= (and b!2529909 ((_ is Union!7529) (regTwo!15570 (regOne!15571 r!27340)))) b!2530094))

(declare-fun b!2530098 () Bool)

(declare-fun e!1601222 () Bool)

(declare-fun tp!807615 () Bool)

(declare-fun tp!807617 () Bool)

(assert (=> b!2530098 (= e!1601222 (and tp!807615 tp!807617))))

(assert (=> b!2529910 (= tp!807502 e!1601222)))

(declare-fun b!2530097 () Bool)

(declare-fun tp!807614 () Bool)

(assert (=> b!2530097 (= e!1601222 tp!807614)))

(declare-fun b!2530095 () Bool)

(assert (=> b!2530095 (= e!1601222 tp_is_empty!12913)))

(declare-fun b!2530096 () Bool)

(declare-fun tp!807613 () Bool)

(declare-fun tp!807616 () Bool)

(assert (=> b!2530096 (= e!1601222 (and tp!807613 tp!807616))))

(assert (= (and b!2529910 ((_ is ElementMatch!7529) (reg!7858 (regOne!15571 r!27340)))) b!2530095))

(assert (= (and b!2529910 ((_ is Concat!12225) (reg!7858 (regOne!15571 r!27340)))) b!2530096))

(assert (= (and b!2529910 ((_ is Star!7529) (reg!7858 (regOne!15571 r!27340)))) b!2530097))

(assert (= (and b!2529910 ((_ is Union!7529) (reg!7858 (regOne!15571 r!27340)))) b!2530098))

(declare-fun b!2530102 () Bool)

(declare-fun e!1601223 () Bool)

(declare-fun tp!807620 () Bool)

(declare-fun tp!807622 () Bool)

(assert (=> b!2530102 (= e!1601223 (and tp!807620 tp!807622))))

(assert (=> b!2529892 (= tp!807486 e!1601223)))

(declare-fun b!2530101 () Bool)

(declare-fun tp!807619 () Bool)

(assert (=> b!2530101 (= e!1601223 tp!807619)))

(declare-fun b!2530099 () Bool)

(assert (=> b!2530099 (= e!1601223 tp_is_empty!12913)))

(declare-fun b!2530100 () Bool)

(declare-fun tp!807618 () Bool)

(declare-fun tp!807621 () Bool)

(assert (=> b!2530100 (= e!1601223 (and tp!807618 tp!807621))))

(assert (= (and b!2529892 ((_ is ElementMatch!7529) (regOne!15571 (regTwo!15570 r!27340)))) b!2530099))

(assert (= (and b!2529892 ((_ is Concat!12225) (regOne!15571 (regTwo!15570 r!27340)))) b!2530100))

(assert (= (and b!2529892 ((_ is Star!7529) (regOne!15571 (regTwo!15570 r!27340)))) b!2530101))

(assert (= (and b!2529892 ((_ is Union!7529) (regOne!15571 (regTwo!15570 r!27340)))) b!2530102))

(declare-fun b!2530106 () Bool)

(declare-fun e!1601224 () Bool)

(declare-fun tp!807625 () Bool)

(declare-fun tp!807627 () Bool)

(assert (=> b!2530106 (= e!1601224 (and tp!807625 tp!807627))))

(assert (=> b!2529892 (= tp!807488 e!1601224)))

(declare-fun b!2530105 () Bool)

(declare-fun tp!807624 () Bool)

(assert (=> b!2530105 (= e!1601224 tp!807624)))

(declare-fun b!2530103 () Bool)

(assert (=> b!2530103 (= e!1601224 tp_is_empty!12913)))

(declare-fun b!2530104 () Bool)

(declare-fun tp!807623 () Bool)

(declare-fun tp!807626 () Bool)

(assert (=> b!2530104 (= e!1601224 (and tp!807623 tp!807626))))

(assert (= (and b!2529892 ((_ is ElementMatch!7529) (regTwo!15571 (regTwo!15570 r!27340)))) b!2530103))

(assert (= (and b!2529892 ((_ is Concat!12225) (regTwo!15571 (regTwo!15570 r!27340)))) b!2530104))

(assert (= (and b!2529892 ((_ is Star!7529) (regTwo!15571 (regTwo!15570 r!27340)))) b!2530105))

(assert (= (and b!2529892 ((_ is Union!7529) (regTwo!15571 (regTwo!15570 r!27340)))) b!2530106))

(declare-fun b!2530110 () Bool)

(declare-fun e!1601225 () Bool)

(declare-fun tp!807630 () Bool)

(declare-fun tp!807632 () Bool)

(assert (=> b!2530110 (= e!1601225 (and tp!807630 tp!807632))))

(assert (=> b!2529887 (= tp!807480 e!1601225)))

(declare-fun b!2530109 () Bool)

(declare-fun tp!807629 () Bool)

(assert (=> b!2530109 (= e!1601225 tp!807629)))

(declare-fun b!2530107 () Bool)

(assert (=> b!2530107 (= e!1601225 tp_is_empty!12913)))

(declare-fun b!2530108 () Bool)

(declare-fun tp!807628 () Bool)

(declare-fun tp!807631 () Bool)

(assert (=> b!2530108 (= e!1601225 (and tp!807628 tp!807631))))

(assert (= (and b!2529887 ((_ is ElementMatch!7529) (reg!7858 (regOne!15570 r!27340)))) b!2530107))

(assert (= (and b!2529887 ((_ is Concat!12225) (reg!7858 (regOne!15570 r!27340)))) b!2530108))

(assert (= (and b!2529887 ((_ is Star!7529) (reg!7858 (regOne!15570 r!27340)))) b!2530109))

(assert (= (and b!2529887 ((_ is Union!7529) (reg!7858 (regOne!15570 r!27340)))) b!2530110))

(declare-fun b!2530114 () Bool)

(declare-fun e!1601226 () Bool)

(declare-fun tp!807635 () Bool)

(declare-fun tp!807637 () Bool)

(assert (=> b!2530114 (= e!1601226 (and tp!807635 tp!807637))))

(assert (=> b!2529888 (= tp!807481 e!1601226)))

(declare-fun b!2530113 () Bool)

(declare-fun tp!807634 () Bool)

(assert (=> b!2530113 (= e!1601226 tp!807634)))

(declare-fun b!2530111 () Bool)

(assert (=> b!2530111 (= e!1601226 tp_is_empty!12913)))

(declare-fun b!2530112 () Bool)

(declare-fun tp!807633 () Bool)

(declare-fun tp!807636 () Bool)

(assert (=> b!2530112 (= e!1601226 (and tp!807633 tp!807636))))

(assert (= (and b!2529888 ((_ is ElementMatch!7529) (regOne!15571 (regOne!15570 r!27340)))) b!2530111))

(assert (= (and b!2529888 ((_ is Concat!12225) (regOne!15571 (regOne!15570 r!27340)))) b!2530112))

(assert (= (and b!2529888 ((_ is Star!7529) (regOne!15571 (regOne!15570 r!27340)))) b!2530113))

(assert (= (and b!2529888 ((_ is Union!7529) (regOne!15571 (regOne!15570 r!27340)))) b!2530114))

(declare-fun b!2530118 () Bool)

(declare-fun e!1601227 () Bool)

(declare-fun tp!807640 () Bool)

(declare-fun tp!807642 () Bool)

(assert (=> b!2530118 (= e!1601227 (and tp!807640 tp!807642))))

(assert (=> b!2529888 (= tp!807483 e!1601227)))

(declare-fun b!2530117 () Bool)

(declare-fun tp!807639 () Bool)

(assert (=> b!2530117 (= e!1601227 tp!807639)))

(declare-fun b!2530115 () Bool)

(assert (=> b!2530115 (= e!1601227 tp_is_empty!12913)))

(declare-fun b!2530116 () Bool)

(declare-fun tp!807638 () Bool)

(declare-fun tp!807641 () Bool)

(assert (=> b!2530116 (= e!1601227 (and tp!807638 tp!807641))))

(assert (= (and b!2529888 ((_ is ElementMatch!7529) (regTwo!15571 (regOne!15570 r!27340)))) b!2530115))

(assert (= (and b!2529888 ((_ is Concat!12225) (regTwo!15571 (regOne!15570 r!27340)))) b!2530116))

(assert (= (and b!2529888 ((_ is Star!7529) (regTwo!15571 (regOne!15570 r!27340)))) b!2530117))

(assert (= (and b!2529888 ((_ is Union!7529) (regTwo!15571 (regOne!15570 r!27340)))) b!2530118))

(declare-fun b!2530122 () Bool)

(declare-fun e!1601228 () Bool)

(declare-fun tp!807645 () Bool)

(declare-fun tp!807647 () Bool)

(assert (=> b!2530122 (= e!1601228 (and tp!807645 tp!807647))))

(assert (=> b!2529886 (= tp!807479 e!1601228)))

(declare-fun b!2530121 () Bool)

(declare-fun tp!807644 () Bool)

(assert (=> b!2530121 (= e!1601228 tp!807644)))

(declare-fun b!2530119 () Bool)

(assert (=> b!2530119 (= e!1601228 tp_is_empty!12913)))

(declare-fun b!2530120 () Bool)

(declare-fun tp!807643 () Bool)

(declare-fun tp!807646 () Bool)

(assert (=> b!2530120 (= e!1601228 (and tp!807643 tp!807646))))

(assert (= (and b!2529886 ((_ is ElementMatch!7529) (regOne!15570 (regOne!15570 r!27340)))) b!2530119))

(assert (= (and b!2529886 ((_ is Concat!12225) (regOne!15570 (regOne!15570 r!27340)))) b!2530120))

(assert (= (and b!2529886 ((_ is Star!7529) (regOne!15570 (regOne!15570 r!27340)))) b!2530121))

(assert (= (and b!2529886 ((_ is Union!7529) (regOne!15570 (regOne!15570 r!27340)))) b!2530122))

(declare-fun b!2530126 () Bool)

(declare-fun e!1601229 () Bool)

(declare-fun tp!807650 () Bool)

(declare-fun tp!807652 () Bool)

(assert (=> b!2530126 (= e!1601229 (and tp!807650 tp!807652))))

(assert (=> b!2529886 (= tp!807482 e!1601229)))

(declare-fun b!2530125 () Bool)

(declare-fun tp!807649 () Bool)

(assert (=> b!2530125 (= e!1601229 tp!807649)))

(declare-fun b!2530123 () Bool)

(assert (=> b!2530123 (= e!1601229 tp_is_empty!12913)))

(declare-fun b!2530124 () Bool)

(declare-fun tp!807648 () Bool)

(declare-fun tp!807651 () Bool)

(assert (=> b!2530124 (= e!1601229 (and tp!807648 tp!807651))))

(assert (= (and b!2529886 ((_ is ElementMatch!7529) (regTwo!15570 (regOne!15570 r!27340)))) b!2530123))

(assert (= (and b!2529886 ((_ is Concat!12225) (regTwo!15570 (regOne!15570 r!27340)))) b!2530124))

(assert (= (and b!2529886 ((_ is Star!7529) (regTwo!15570 (regOne!15570 r!27340)))) b!2530125))

(assert (= (and b!2529886 ((_ is Union!7529) (regTwo!15570 (regOne!15570 r!27340)))) b!2530126))

(declare-fun b!2530127 () Bool)

(declare-fun e!1601230 () Bool)

(declare-fun tp!807653 () Bool)

(assert (=> b!2530127 (= e!1601230 (and tp_is_empty!12913 tp!807653))))

(assert (=> b!2529924 (= tp!807522 e!1601230)))

(assert (= (and b!2529924 ((_ is Cons!29494) (t!211293 (t!211293 tl!4068)))) b!2530127))

(declare-fun b!2530131 () Bool)

(declare-fun e!1601231 () Bool)

(declare-fun tp!807656 () Bool)

(declare-fun tp!807658 () Bool)

(assert (=> b!2530131 (= e!1601231 (and tp!807656 tp!807658))))

(assert (=> b!2529891 (= tp!807485 e!1601231)))

(declare-fun b!2530130 () Bool)

(declare-fun tp!807655 () Bool)

(assert (=> b!2530130 (= e!1601231 tp!807655)))

(declare-fun b!2530128 () Bool)

(assert (=> b!2530128 (= e!1601231 tp_is_empty!12913)))

(declare-fun b!2530129 () Bool)

(declare-fun tp!807654 () Bool)

(declare-fun tp!807657 () Bool)

(assert (=> b!2530129 (= e!1601231 (and tp!807654 tp!807657))))

(assert (= (and b!2529891 ((_ is ElementMatch!7529) (reg!7858 (regTwo!15570 r!27340)))) b!2530128))

(assert (= (and b!2529891 ((_ is Concat!12225) (reg!7858 (regTwo!15570 r!27340)))) b!2530129))

(assert (= (and b!2529891 ((_ is Star!7529) (reg!7858 (regTwo!15570 r!27340)))) b!2530130))

(assert (= (and b!2529891 ((_ is Union!7529) (reg!7858 (regTwo!15570 r!27340)))) b!2530131))

(declare-fun b!2530135 () Bool)

(declare-fun e!1601232 () Bool)

(declare-fun tp!807661 () Bool)

(declare-fun tp!807663 () Bool)

(assert (=> b!2530135 (= e!1601232 (and tp!807661 tp!807663))))

(assert (=> b!2529890 (= tp!807484 e!1601232)))

(declare-fun b!2530134 () Bool)

(declare-fun tp!807660 () Bool)

(assert (=> b!2530134 (= e!1601232 tp!807660)))

(declare-fun b!2530132 () Bool)

(assert (=> b!2530132 (= e!1601232 tp_is_empty!12913)))

(declare-fun b!2530133 () Bool)

(declare-fun tp!807659 () Bool)

(declare-fun tp!807662 () Bool)

(assert (=> b!2530133 (= e!1601232 (and tp!807659 tp!807662))))

(assert (= (and b!2529890 ((_ is ElementMatch!7529) (regOne!15570 (regTwo!15570 r!27340)))) b!2530132))

(assert (= (and b!2529890 ((_ is Concat!12225) (regOne!15570 (regTwo!15570 r!27340)))) b!2530133))

(assert (= (and b!2529890 ((_ is Star!7529) (regOne!15570 (regTwo!15570 r!27340)))) b!2530134))

(assert (= (and b!2529890 ((_ is Union!7529) (regOne!15570 (regTwo!15570 r!27340)))) b!2530135))

(declare-fun b!2530139 () Bool)

(declare-fun e!1601233 () Bool)

(declare-fun tp!807666 () Bool)

(declare-fun tp!807668 () Bool)

(assert (=> b!2530139 (= e!1601233 (and tp!807666 tp!807668))))

(assert (=> b!2529890 (= tp!807487 e!1601233)))

(declare-fun b!2530138 () Bool)

(declare-fun tp!807665 () Bool)

(assert (=> b!2530138 (= e!1601233 tp!807665)))

(declare-fun b!2530136 () Bool)

(assert (=> b!2530136 (= e!1601233 tp_is_empty!12913)))

(declare-fun b!2530137 () Bool)

(declare-fun tp!807664 () Bool)

(declare-fun tp!807667 () Bool)

(assert (=> b!2530137 (= e!1601233 (and tp!807664 tp!807667))))

(assert (= (and b!2529890 ((_ is ElementMatch!7529) (regTwo!15570 (regTwo!15570 r!27340)))) b!2530136))

(assert (= (and b!2529890 ((_ is Concat!12225) (regTwo!15570 (regTwo!15570 r!27340)))) b!2530137))

(assert (= (and b!2529890 ((_ is Star!7529) (regTwo!15570 (regTwo!15570 r!27340)))) b!2530138))

(assert (= (and b!2529890 ((_ is Union!7529) (regTwo!15570 (regTwo!15570 r!27340)))) b!2530139))

(check-sat tp_is_empty!12913 (not b!2530074) (not b!2530073) (not b!2530093) (not b!2530056) (not b!2530086) (not bm!158425) (not b!2530064) (not b!2530042) (not b!2530040) (not d!719780) (not b!2530127) (not b!2530089) (not bm!158427) (not bm!158436) (not b!2530053) (not bm!158439) (not b!2530126) (not b!2530124) (not bm!158413) (not b!2530018) (not b!2530078) (not b!2530104) (not bm!158443) (not bm!158417) (not d!719770) (not bm!158422) (not b!2530108) (not b!2530109) (not d!719772) (not b!2530118) (not b!2530110) (not b!2530129) (not bm!158419) (not b!2530100) (not b!2530090) (not b!2530116) (not b!2529982) (not bm!158423) (not b!2530122) (not bm!158437) (not d!719786) (not b!2530098) (not b!2530102) (not b!2530077) (not b!2530057) (not b!2530061) (not b!2530068) (not b!2530105) (not b!2530076) (not b!2530097) (not b!2530130) (not b!2530113) (not b!2530052) (not b!2530131) (not b!2530121) (not bm!158442) (not b!2530088) (not bm!158411) (not b!2530133) (not b!2530094) (not b!2530044) (not b!2530065) (not b!2530048) (not bm!158426) (not b!2530106) (not b!2530135) (not b!2529955) (not b!2530049) (not b!2529994) (not b!2530060) (not b!2530041) (not b!2530112) (not d!719776) (not b!2530092) (not b!2530054) (not b!2530120) (not b!2530084) (not b!2530066) (not b!2530125) (not b!2530101) (not b!2530080) (not bm!158429) (not b!2529964) (not b!2530045) (not b!2530096) (not b!2530062) (not b!2530046) (not b!2530072) (not b!2530114) (not b!2530027) (not bm!158435) (not b!2530081) (not b!2529948) (not b!2530138) (not b!2530082) (not bm!158420) (not b!2530050) (not b!2530034) (not d!719792) (not b!2530058) (not b!2529973) (not b!2530139) (not b!2530117) (not b!2530134) (not b!2530070) (not d!719790) (not b!2530069) (not b!2530085) (not b!2530137) (not bm!158416))
(check-sat)
